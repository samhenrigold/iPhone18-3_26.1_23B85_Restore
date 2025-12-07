BOOL sub_1B0971120(char a1, char a2)
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
      case 4:
        v4 = 4;
        break;
      case 5:
        v4 = 5;
        break;
      default:
        v4 = 6;
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
      case 4:
        v3 = 4;
        break;
      case 5:
        v3 = 5;
        break;
      default:
        v3 = 6;
        break;
    }
  }

  else
  {
    v3 = 0;
  }

  return v4 == v3;
}

uint64_t sub_1B0971514()
{
  v1 = DownloadRequest.ID.init()();
  sub_1B0E46A48();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0E46A48();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0E46A48();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0993AD8();
  return v1;
}

uint64_t sub_1B09715D8()
{
  v2 = *v0;
  sub_1B097161C(v0);
  return v2;
}

uint64_t sub_1B097161C(int *a1)
{
  result = DownloadRequest.ID.next.getter(*a1);
  *a1 = result;
  return result;
}

void *sub_1B09716D4(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v805 = v2;
  v808 = v3;
  v806 = v4;
  v814 = v5;
  v807 = v6;
  v756 = v1;
  v757 = "Fatal error";
  v758 = "Range requires lowerBound <= upperBound";
  v759 = "Swift/Range.swift";
  v760 = sub_1B074E050;
  v761 = sub_1B03F7AE0;
  v762 = sub_1B0394C30;
  v763 = sub_1B0394C24;
  v764 = sub_1B074DFFC;
  v765 = sub_1B039BA88;
  v766 = sub_1B039BB94;
  v767 = sub_1B0394C24;
  v768 = sub_1B039BBA0;
  v769 = sub_1B039BC08;
  v770 = sub_1B06BA324;
  v771 = sub_1B074E0E4;
  v772 = sub_1B039BCF8;
  v773 = sub_1B07AB020;
  v774 = sub_1B039BC08;
  v775 = sub_1B0398F5C;
  v776 = sub_1B0398F5C;
  v777 = sub_1B0399178;
  v778 = sub_1B0398F5C;
  v779 = sub_1B0398F5C;
  v780 = sub_1B039BA94;
  v781 = sub_1B0398F5C;
  v782 = sub_1B0398F5C;
  v783 = sub_1B0399178;
  v784 = sub_1B0398F5C;
  v785 = sub_1B0398F5C;
  v786 = sub_1B03991EC;
  v787 = sub_1B0398F5C;
  v788 = sub_1B0398F5C;
  v789 = sub_1B03993BC;
  v790 = sub_1B0398F5C;
  v791 = sub_1B0398F5C;
  v792 = sub_1B039BCEC;
  v793 = sub_1B0398F5C;
  v794 = sub_1B0398F5C;
  v795 = sub_1B03991EC;
  v842 = 0;
  v843 = 0;
  v841 = 0;
  v840 = 0;
  v839 = 0;
  v838 = 0;
  v834 = 0;
  v835 = 0;
  v836 = 0;
  v829 = 0;
  v796 = 0;
  v797 = 0;
  v798 = _s6LoggerVMa_1(0);
  v799 = (*(*(v798 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v800 = &v153 - v799;
  v801 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v802 = &v153 - v801;
  v803 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v804 = &v153 - v803;
  v809 = sub_1B0E439A8();
  v810 = *(v809 - 8);
  v811 = v809 - 8;
  v812 = (*(v810 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v814);
  v813 = &v153 - v812;
  v842 = v11;
  v843 = v12;
  v841 = v13;
  v840 = v14;
  v839 = v15;
  v838 = v1;
  sub_1B07AB440(v14, v837);
  v815 = v844;
  memcpy(v844, v814, 0xB1uLL);
  result = sub_1B07AB810(v844);
  if (result != 1)
  {
    v753 = v845;
    v754 = 177;
    memcpy(v845, v844, 0xB1uLL);
    v755 = v846;
    memcpy(v846, v845, 0xB1uLL);
    result = sub_1B075FACC(v846);
    if (result != 1)
    {
      v750 = v847;
      v751 = 177;
      memcpy(v847, v846, 0xB1uLL);
      v752 = v848;
      memcpy(v848, v847, 0xB1uLL);
      if (sub_1B0717014(v848) == 1)
      {
        __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
        v749 = __dst;
        memcpy(__dst, v17, sizeof(__dst));
        return sub_1B0717020(__dst);
      }

      else
      {
        __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
        v743 = v849;
        memcpy(v849, v18, sizeof(v849));
        sub_1B071728C(v849);
        v744 = *(v756 + 16);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v745 = &unk_1F26F1FA8;
        v747 = sub_1B0E451C8();

        v746 = *(v756 + 16);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v748 = sub_1B0E452A8();

        if (v748 < v747)
        {
          sub_1B0E465A8();
          __break(1u);
        }

        v832 = v747;
        v833 = v748;
        v741 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1850, &unk_1B0E9B040);
        sub_1B06D55D0();
        sub_1B0E45798();
        for (i = v796; ; i = v158)
        {
          v739 = i;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1858, &qword_1B0E99C00);
          result = sub_1B0E46518();
          v740 = v830[15];
          if (v831)
          {
            break;
          }

          v738 = v740;
          v732 = v740;
          v829 = v740;
          v733 = &v828;
          sub_1B0E453A8();
          v736 = v830;
          memcpy(v830, v733, 0x78uLL);
          v735 = v830[3];
          v734 = v830[4];
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v737 = static MailboxName.== infix(_:_:)(v735, v734, v805, v808);

          sub_1B0990D34(v736);
          if (v737 & 1) != 0 && (v727 = &v826, sub_1B0E453A8(), v730 = v827, memcpy(v827, v727, sizeof(v827)), v729 = &v825, v825 = v827[9], v728 = &v824, v824 = v806, sub_1B0714E4C(), v731 = sub_1B0E45ED8(), sub_1B0990D34(v730), (v731) && (v720 = &v822, sub_1B0E453A8(), v725 = v823, memcpy(v823, v720, sizeof(v823)), v724 = v823[5], _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0(), v721 = 1, v722 = MEMORY[0x1E69E6530], sub_1B0E46A48(), *v19 = v721, sub_1B0394964(), SectionSpecifier.Part.init(arrayLiteral:)(), v723 = v20, v726 = static SectionSpecifier.Part.__derived_struct_equals(_:_:)(v724, v20), , , sub_1B0990D34(v725), (v726))
          {
            (*(v810 + 16))(v813, v807, v809);
            sub_1B074B69C(v807, v804);
            sub_1B074B69C(v804, v802);
            sub_1B074E41C(v804, v800);
            v21 = (v802 + *(v798 + 20));
            v672 = *v21;
            v673 = *(v21 + 1);
            v674 = *(v21 + 1);
            v675 = *(v21 + 4);
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            sub_1B074B764(v802);
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            v671 = 36;
            v691 = 7;
            v22 = swift_allocObject();
            v23 = v673;
            v24 = v674;
            v25 = v675;
            v678 = v22;
            *(v22 + 16) = v672;
            *(v22 + 20) = v23;
            *(v22 + 24) = v24;
            *(v22 + 32) = v25;
            sub_1B0394868();
            sub_1B0394868();
            sub_1B0394868();
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            v26 = swift_allocObject();
            v27 = v673;
            v28 = v674;
            v29 = v675;
            v670 = v26;
            *(v26 + 16) = v672;
            *(v26 + 20) = v27;
            *(v26 + 24) = v28;
            *(v26 + 32) = v29;

            v690 = 32;
            v30 = swift_allocObject();
            v31 = v670;
            v682 = v30;
            *(v30 + 16) = v760;
            *(v30 + 24) = v31;
            sub_1B0394868();
            sub_1B0394868();

            v32 = swift_allocObject();
            v33 = v673;
            v34 = v674;
            v35 = v675;
            v36 = v32;
            v37 = v800;
            v686 = v36;
            *(v36 + 16) = v672;
            *(v36 + 20) = v33;
            *(v36 + 24) = v34;
            *(v36 + 32) = v35;
            sub_1B074B764(v37);
            v676 = swift_allocObject();
            *(v676 + 16) = v806;

            v38 = swift_allocObject();
            v39 = v676;
            v692 = v38;
            *(v38 + 16) = v761;
            *(v38 + 24) = v39;

            v718 = sub_1B0E43988();
            v719 = sub_1B0E45908();
            v688 = 17;
            v694 = swift_allocObject();
            v680 = 16;
            *(v694 + 16) = 16;
            v695 = swift_allocObject();
            v689 = 4;
            *(v695 + 16) = 4;
            v40 = swift_allocObject();
            v677 = v40;
            *(v40 + 16) = v762;
            *(v40 + 24) = 0;
            v41 = swift_allocObject();
            v42 = v677;
            v696 = v41;
            *(v41 + 16) = v763;
            *(v41 + 24) = v42;
            v697 = swift_allocObject();
            *(v697 + 16) = 0;
            v698 = swift_allocObject();
            *(v698 + 16) = 1;
            v43 = swift_allocObject();
            v44 = v678;
            v679 = v43;
            *(v43 + 16) = v764;
            *(v43 + 24) = v44;
            v45 = swift_allocObject();
            v46 = v679;
            v699 = v45;
            *(v45 + 16) = v765;
            *(v45 + 24) = v46;
            v700 = swift_allocObject();
            *(v700 + 16) = v680;
            v701 = swift_allocObject();
            *(v701 + 16) = v689;
            v47 = swift_allocObject();
            v681 = v47;
            *(v47 + 16) = v766;
            *(v47 + 24) = 0;
            v48 = swift_allocObject();
            v49 = v681;
            v702 = v48;
            *(v48 + 16) = v767;
            *(v48 + 24) = v49;
            v703 = swift_allocObject();
            *(v703 + 16) = 0;
            v704 = swift_allocObject();
            *(v704 + 16) = v689;
            v50 = swift_allocObject();
            v51 = v682;
            v683 = v50;
            *(v50 + 16) = v768;
            *(v50 + 24) = v51;
            v52 = swift_allocObject();
            v53 = v683;
            v705 = v52;
            *(v52 + 16) = v769;
            *(v52 + 24) = v53;
            v706 = swift_allocObject();
            *(v706 + 16) = 112;
            v707 = swift_allocObject();
            v685 = 8;
            *(v707 + 16) = 8;
            v684 = swift_allocObject();
            *(v684 + 16) = 0x786F626C69616DLL;
            v54 = swift_allocObject();
            v55 = v684;
            v708 = v54;
            *(v54 + 16) = v770;
            *(v54 + 24) = v55;
            v709 = swift_allocObject();
            *(v709 + 16) = 37;
            v710 = swift_allocObject();
            *(v710 + 16) = v685;
            v56 = swift_allocObject();
            v57 = v686;
            v687 = v56;
            *(v56 + 16) = v771;
            *(v56 + 24) = v57;
            v58 = swift_allocObject();
            v59 = v687;
            v711 = v58;
            *(v58 + 16) = v772;
            *(v58 + 24) = v59;
            v712 = swift_allocObject();
            *(v712 + 16) = 0;
            v713 = swift_allocObject();
            *(v713 + 16) = v689;
            v60 = swift_allocObject();
            v61 = v692;
            v693 = v60;
            *(v60 + 16) = v773;
            *(v60 + 24) = v61;
            v62 = swift_allocObject();
            v63 = v693;
            v715 = v62;
            *(v62 + 16) = v774;
            *(v62 + 24) = v63;
            v717 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
            v714 = sub_1B0E46A48();
            v716 = v64;

            v65 = v694;
            v66 = v716;
            *v716 = v775;
            v66[1] = v65;

            v67 = v695;
            v68 = v716;
            v716[2] = v776;
            v68[3] = v67;

            v69 = v696;
            v70 = v716;
            v716[4] = v777;
            v70[5] = v69;

            v71 = v697;
            v72 = v716;
            v716[6] = v778;
            v72[7] = v71;

            v73 = v698;
            v74 = v716;
            v716[8] = v779;
            v74[9] = v73;

            v75 = v699;
            v76 = v716;
            v716[10] = v780;
            v76[11] = v75;

            v77 = v700;
            v78 = v716;
            v716[12] = v781;
            v78[13] = v77;

            v79 = v701;
            v80 = v716;
            v716[14] = v782;
            v80[15] = v79;

            v81 = v702;
            v82 = v716;
            v716[16] = v783;
            v82[17] = v81;

            v83 = v703;
            v84 = v716;
            v716[18] = v784;
            v84[19] = v83;

            v85 = v704;
            v86 = v716;
            v716[20] = v785;
            v86[21] = v85;

            v87 = v705;
            v88 = v716;
            v716[22] = v786;
            v88[23] = v87;

            v89 = v706;
            v90 = v716;
            v716[24] = v787;
            v90[25] = v89;

            v91 = v707;
            v92 = v716;
            v716[26] = v788;
            v92[27] = v91;

            v93 = v708;
            v94 = v716;
            v716[28] = v789;
            v94[29] = v93;

            v95 = v709;
            v96 = v716;
            v716[30] = v790;
            v96[31] = v95;

            v97 = v710;
            v98 = v716;
            v716[32] = v791;
            v98[33] = v97;

            v99 = v711;
            v100 = v716;
            v716[34] = v792;
            v100[35] = v99;

            v101 = v712;
            v102 = v716;
            v716[36] = v793;
            v102[37] = v101;

            v103 = v713;
            v104 = v716;
            v716[38] = v794;
            v104[39] = v103;

            v105 = v715;
            v106 = v716;
            v716[40] = v795;
            v106[41] = v105;
            sub_1B0394964();

            if (os_log_type_enabled(v718, v719))
            {
              v107 = v695;
              v108 = v694;
              v109 = v739;
              v642 = sub_1B0E45D78();
              v641 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
              v643 = sub_1B03949A8(0, v641, v641);
              v644 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
              v645 = &v820;
              v820 = v642;
              v646 = &v819;
              v819 = v643;
              v647 = &v818;
              v818 = v644;
              sub_1B0394A48(3, &v820);
              sub_1B0394A48(7, v645);
              v816 = v775;
              v817 = v108;
              sub_1B03949FC(&v816, v645, v646, v647);
              v648 = v109;
              v649 = v108;
              v650 = v107;
              v651 = v696;
              v652 = v697;
              v653 = v698;
              v654 = v699;
              v655 = v700;
              v656 = v701;
              v657 = v702;
              v658 = v703;
              v659 = v704;
              v660 = v705;
              v661 = v706;
              v662 = v707;
              v663 = v708;
              v664 = v709;
              v665 = v710;
              v666 = v711;
              v667 = v712;
              v668 = v713;
              v669 = v715;
              if (v109)
              {
                v619 = v649;
                v620 = v650;
                v621 = v651;
                v622 = v652;
                v623 = v653;
                v624 = v654;
                v625 = v655;
                v626 = v656;
                v627 = v657;
                v628 = v658;
                v629 = v659;
                v630 = v660;
                v631 = v661;
                v632 = v662;
                v633 = v663;
                v634 = v664;
                v635 = v665;
                v636 = v666;
                v637 = v667;
                v638 = v668;
                v639 = v669;
                v178 = v669;
                v177 = v668;
                v176 = v667;
                v175 = v666;
                v174 = v665;
                v173 = v664;
                v172 = v663;
                v171 = v662;
                v170 = v661;
                v169 = v660;
                v168 = v659;
                v167 = v658;
                v166 = v657;
                v165 = v656;
                v164 = v655;
                v163 = v654;
                v162 = v653;
                v161 = v652;
                v160 = v651;
                v159 = v650;

                __break(1u);
              }

              else
              {
                v111 = v695;
                v112 = v694;
                v816 = v776;
                v817 = v695;
                sub_1B03949FC(&v816, &v820, &v819, &v818);
                v597 = 0;
                v598 = v112;
                v599 = v111;
                v600 = v696;
                v601 = v697;
                v602 = v698;
                v603 = v699;
                v604 = v700;
                v605 = v701;
                v606 = v702;
                v607 = v703;
                v608 = v704;
                v609 = v705;
                v610 = v706;
                v611 = v707;
                v612 = v708;
                v613 = v709;
                v614 = v710;
                v615 = v711;
                v616 = v712;
                v617 = v713;
                v618 = v715;
                v113 = v695;
                v114 = v694;
                v816 = v777;
                v817 = v696;
                sub_1B03949FC(&v816, &v820, &v819, &v818);
                v575 = 0;
                v576 = v114;
                v577 = v113;
                v578 = v696;
                v579 = v697;
                v580 = v698;
                v581 = v699;
                v582 = v700;
                v583 = v701;
                v584 = v702;
                v585 = v703;
                v586 = v704;
                v587 = v705;
                v588 = v706;
                v589 = v707;
                v590 = v708;
                v591 = v709;
                v592 = v710;
                v593 = v711;
                v594 = v712;
                v595 = v713;
                v596 = v715;
                v115 = v695;
                v116 = v694;
                v816 = v778;
                v817 = v697;
                sub_1B03949FC(&v816, &v820, &v819, &v818);
                v553 = 0;
                v554 = v116;
                v555 = v115;
                v556 = v696;
                v557 = v697;
                v558 = v698;
                v559 = v699;
                v560 = v700;
                v561 = v701;
                v562 = v702;
                v563 = v703;
                v564 = v704;
                v565 = v705;
                v566 = v706;
                v567 = v707;
                v568 = v708;
                v569 = v709;
                v570 = v710;
                v571 = v711;
                v572 = v712;
                v573 = v713;
                v574 = v715;
                v117 = v695;
                v118 = v694;
                v816 = v779;
                v817 = v698;
                sub_1B03949FC(&v816, &v820, &v819, &v818);
                v531 = 0;
                v532 = v118;
                v533 = v117;
                v534 = v696;
                v535 = v697;
                v536 = v698;
                v537 = v699;
                v538 = v700;
                v539 = v701;
                v540 = v702;
                v541 = v703;
                v542 = v704;
                v543 = v705;
                v544 = v706;
                v545 = v707;
                v546 = v708;
                v547 = v709;
                v548 = v710;
                v549 = v711;
                v550 = v712;
                v551 = v713;
                v552 = v715;
                v119 = v695;
                v120 = v694;
                v816 = v780;
                v817 = v699;
                sub_1B03949FC(&v816, &v820, &v819, &v818);
                v509 = 0;
                v510 = v120;
                v511 = v119;
                v512 = v696;
                v513 = v697;
                v514 = v698;
                v515 = v699;
                v516 = v700;
                v517 = v701;
                v518 = v702;
                v519 = v703;
                v520 = v704;
                v521 = v705;
                v522 = v706;
                v523 = v707;
                v524 = v708;
                v525 = v709;
                v526 = v710;
                v527 = v711;
                v528 = v712;
                v529 = v713;
                v530 = v715;
                v121 = v695;
                v122 = v694;
                v816 = v781;
                v817 = v700;
                sub_1B03949FC(&v816, &v820, &v819, &v818);
                v487 = 0;
                v488 = v122;
                v489 = v121;
                v490 = v696;
                v491 = v697;
                v492 = v698;
                v493 = v699;
                v494 = v700;
                v495 = v701;
                v496 = v702;
                v497 = v703;
                v498 = v704;
                v499 = v705;
                v500 = v706;
                v501 = v707;
                v502 = v708;
                v503 = v709;
                v504 = v710;
                v505 = v711;
                v506 = v712;
                v507 = v713;
                v508 = v715;
                v123 = v695;
                v124 = v694;
                v816 = v782;
                v817 = v701;
                sub_1B03949FC(&v816, &v820, &v819, &v818);
                v465 = 0;
                v466 = v124;
                v467 = v123;
                v468 = v696;
                v469 = v697;
                v470 = v698;
                v471 = v699;
                v472 = v700;
                v473 = v701;
                v474 = v702;
                v475 = v703;
                v476 = v704;
                v477 = v705;
                v478 = v706;
                v479 = v707;
                v480 = v708;
                v481 = v709;
                v482 = v710;
                v483 = v711;
                v484 = v712;
                v485 = v713;
                v486 = v715;
                v125 = v695;
                v126 = v694;
                v816 = v783;
                v817 = v702;
                sub_1B03949FC(&v816, &v820, &v819, &v818);
                v443 = 0;
                v444 = v126;
                v445 = v125;
                v446 = v696;
                v447 = v697;
                v448 = v698;
                v449 = v699;
                v450 = v700;
                v451 = v701;
                v452 = v702;
                v453 = v703;
                v454 = v704;
                v455 = v705;
                v456 = v706;
                v457 = v707;
                v458 = v708;
                v459 = v709;
                v460 = v710;
                v461 = v711;
                v462 = v712;
                v463 = v713;
                v464 = v715;
                v127 = v695;
                v128 = v694;
                v816 = v784;
                v817 = v703;
                sub_1B03949FC(&v816, &v820, &v819, &v818);
                v421 = 0;
                v422 = v128;
                v423 = v127;
                v424 = v696;
                v425 = v697;
                v426 = v698;
                v427 = v699;
                v428 = v700;
                v429 = v701;
                v430 = v702;
                v431 = v703;
                v432 = v704;
                v433 = v705;
                v434 = v706;
                v435 = v707;
                v436 = v708;
                v437 = v709;
                v438 = v710;
                v439 = v711;
                v440 = v712;
                v441 = v713;
                v442 = v715;
                v129 = v695;
                v130 = v694;
                v816 = v785;
                v817 = v704;
                sub_1B03949FC(&v816, &v820, &v819, &v818);
                v399 = 0;
                v400 = v130;
                v401 = v129;
                v402 = v696;
                v403 = v697;
                v404 = v698;
                v405 = v699;
                v406 = v700;
                v407 = v701;
                v408 = v702;
                v409 = v703;
                v410 = v704;
                v411 = v705;
                v412 = v706;
                v413 = v707;
                v414 = v708;
                v415 = v709;
                v416 = v710;
                v417 = v711;
                v418 = v712;
                v419 = v713;
                v420 = v715;
                v131 = v695;
                v132 = v694;
                v816 = v786;
                v817 = v705;
                sub_1B03949FC(&v816, &v820, &v819, &v818);
                v377 = 0;
                v378 = v132;
                v379 = v131;
                v380 = v696;
                v381 = v697;
                v382 = v698;
                v383 = v699;
                v384 = v700;
                v385 = v701;
                v386 = v702;
                v387 = v703;
                v388 = v704;
                v389 = v705;
                v390 = v706;
                v391 = v707;
                v392 = v708;
                v393 = v709;
                v394 = v710;
                v395 = v711;
                v396 = v712;
                v397 = v713;
                v398 = v715;
                v133 = v695;
                v134 = v694;
                v816 = v787;
                v817 = v706;
                sub_1B03949FC(&v816, &v820, &v819, &v818);
                v355 = 0;
                v356 = v134;
                v357 = v133;
                v358 = v696;
                v359 = v697;
                v360 = v698;
                v361 = v699;
                v362 = v700;
                v363 = v701;
                v364 = v702;
                v365 = v703;
                v366 = v704;
                v367 = v705;
                v368 = v706;
                v369 = v707;
                v370 = v708;
                v371 = v709;
                v372 = v710;
                v373 = v711;
                v374 = v712;
                v375 = v713;
                v376 = v715;
                v135 = v695;
                v136 = v694;
                v816 = v788;
                v817 = v707;
                sub_1B03949FC(&v816, &v820, &v819, &v818);
                v333 = 0;
                v334 = v136;
                v335 = v135;
                v336 = v696;
                v337 = v697;
                v338 = v698;
                v339 = v699;
                v340 = v700;
                v341 = v701;
                v342 = v702;
                v343 = v703;
                v344 = v704;
                v345 = v705;
                v346 = v706;
                v347 = v707;
                v348 = v708;
                v349 = v709;
                v350 = v710;
                v351 = v711;
                v352 = v712;
                v353 = v713;
                v354 = v715;
                v137 = v695;
                v138 = v694;
                v816 = v789;
                v817 = v708;
                sub_1B03949FC(&v816, &v820, &v819, &v818);
                v311 = 0;
                v312 = v138;
                v313 = v137;
                v314 = v696;
                v315 = v697;
                v316 = v698;
                v317 = v699;
                v318 = v700;
                v319 = v701;
                v320 = v702;
                v321 = v703;
                v322 = v704;
                v323 = v705;
                v324 = v706;
                v325 = v707;
                v326 = v708;
                v327 = v709;
                v328 = v710;
                v329 = v711;
                v330 = v712;
                v331 = v713;
                v332 = v715;
                v139 = v695;
                v140 = v694;
                v816 = v790;
                v817 = v709;
                sub_1B03949FC(&v816, &v820, &v819, &v818);
                v289 = 0;
                v290 = v140;
                v291 = v139;
                v292 = v696;
                v293 = v697;
                v294 = v698;
                v295 = v699;
                v296 = v700;
                v297 = v701;
                v298 = v702;
                v299 = v703;
                v300 = v704;
                v301 = v705;
                v302 = v706;
                v303 = v707;
                v304 = v708;
                v305 = v709;
                v306 = v710;
                v307 = v711;
                v308 = v712;
                v309 = v713;
                v310 = v715;
                v141 = v695;
                v142 = v694;
                v816 = v791;
                v817 = v710;
                sub_1B03949FC(&v816, &v820, &v819, &v818);
                v267 = 0;
                v268 = v142;
                v269 = v141;
                v270 = v696;
                v271 = v697;
                v272 = v698;
                v273 = v699;
                v274 = v700;
                v275 = v701;
                v276 = v702;
                v277 = v703;
                v278 = v704;
                v279 = v705;
                v280 = v706;
                v281 = v707;
                v282 = v708;
                v283 = v709;
                v284 = v710;
                v285 = v711;
                v286 = v712;
                v287 = v713;
                v288 = v715;
                v143 = v695;
                v144 = v694;
                v816 = v792;
                v817 = v711;
                sub_1B03949FC(&v816, &v820, &v819, &v818);
                v245 = 0;
                v246 = v144;
                v247 = v143;
                v248 = v696;
                v249 = v697;
                v250 = v698;
                v251 = v699;
                v252 = v700;
                v253 = v701;
                v254 = v702;
                v255 = v703;
                v256 = v704;
                v257 = v705;
                v258 = v706;
                v259 = v707;
                v260 = v708;
                v261 = v709;
                v262 = v710;
                v263 = v711;
                v264 = v712;
                v265 = v713;
                v266 = v715;
                v145 = v695;
                v146 = v694;
                v816 = v793;
                v817 = v712;
                sub_1B03949FC(&v816, &v820, &v819, &v818);
                v223 = 0;
                v224 = v146;
                v225 = v145;
                v226 = v696;
                v227 = v697;
                v228 = v698;
                v229 = v699;
                v230 = v700;
                v231 = v701;
                v232 = v702;
                v233 = v703;
                v234 = v704;
                v235 = v705;
                v236 = v706;
                v237 = v707;
                v238 = v708;
                v239 = v709;
                v240 = v710;
                v241 = v711;
                v242 = v712;
                v243 = v713;
                v244 = v715;
                v147 = v695;
                v148 = v694;
                v816 = v794;
                v817 = v713;
                sub_1B03949FC(&v816, &v820, &v819, &v818);
                v201 = 0;
                v202 = v148;
                v203 = v147;
                v204 = v696;
                v205 = v697;
                v206 = v698;
                v207 = v699;
                v208 = v700;
                v209 = v701;
                v210 = v702;
                v211 = v703;
                v212 = v704;
                v213 = v705;
                v214 = v706;
                v215 = v707;
                v216 = v708;
                v217 = v709;
                v218 = v710;
                v219 = v711;
                v220 = v712;
                v221 = v713;
                v222 = v715;
                v149 = v695;
                v150 = v694;
                v816 = v795;
                v817 = v715;
                sub_1B03949FC(&v816, &v820, &v819, &v818);
                v179 = 0;
                v180 = v150;
                v181 = v149;
                v182 = v696;
                v183 = v697;
                v184 = v698;
                v185 = v699;
                v186 = v700;
                v187 = v701;
                v188 = v702;
                v189 = v703;
                v190 = v704;
                v191 = v705;
                v192 = v706;
                v193 = v707;
                v194 = v708;
                v195 = v709;
                v196 = v710;
                v197 = v711;
                v198 = v712;
                v199 = v713;
                v200 = v715;
                _os_log_impl(&dword_1B0389000, v718, v719, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Changing part request for single-part message UID %u: “1” → “”.", v642, 0x31u);
                sub_1B03998A8(v643, 0, v641);
                sub_1B03998A8(v644, 1, MEMORY[0x1E69E7CA0] + 8);
                sub_1B0E45D58();

                v640 = v179;
              }
            }

            else
            {
              v110 = v739;

              v640 = v110;
            }

            v157 = v640;
            MEMORY[0x1E69E5920](v718);
            (*(v810 + 8))(v813, v809);
            sub_1B0E46A48();
            SectionSpecifier.Part.init(arrayLiteral:)();
            v154 = v151;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3308, &qword_1B0EA1100);
            v155 = &v821;
            v156 = sub_1B0E45398();
            *(v152 + 40) = v154;

            v156();
            v158 = v157;
          }

          else
          {
            v158 = v739;
          }
        }
      }
    }
  }

  return result;
}

uint64_t (*sub_1B097507C(uint64_t a1, int a2, int a3))()
{

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v4 = swift_allocObject();
  result = sub_1B0991434;
  *(v4 + 16) = v3;
  *(v4 + 24) = a1;
  *(v4 + 32) = a2;
  *(v4 + 36) = a3;
  return result;
}

uint64_t sub_1B09751DC(uint64_t a1, int a2, int a3, uint64_t a4, void *a5, uint64_t a6, char a7)
{
  v9 = v7 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_downloads;
  swift_beginAccess();
  v17 = *v9;
  v18 = *(v9 + 8);
  v19 = *(v9 + 16);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_endAccess();
  sub_1B0975324(a1, a2, a3, a4, a5, a6, a7 & 1, v17, v18, v19);
}

void sub_1B0975324(uint64_t a1, int a2, int a3, uint64_t a4, void *a5, uint64_t a6, char a7, unsigned int a8, uint64_t a9, __int128 a10)
{
  v26 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v38 = a1;
  v39 = a2;
  v37 = a3;
  v36 = a4;
  v33 = a5;
  v34 = a6;
  v35 = a7 & 1;
  v30 = a8;
  v31 = a9;
  v32 = a10;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v28[0] = a10;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3308, &qword_1B0EA1100);
  sub_1B0990A50();
  sub_1B0E456F8();

  sub_1B039E440(v28);
  if ((v29 & 1) == 0)
  {
    v26 = v28[1];
    v23 = sub_1B09757D4(a5, a6, a7 & 1);
    v24 = v10;
    v25 = v11;
    v12 = v23;
    v13 = v10;
    v14 = v11;
    v20 = v23;
    LOBYTE(v21) = v10 & 1;
    v22 = v11;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0E453A8();
    memcpy(__dst, v19, sizeof(__dst));

    v15 = __dst[12];

    sub_1B0990D34(__dst);
    v15(v12, v13 & 1, v14);
  }
}

uint64_t sub_1B09755EC(const void *a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  memcpy(__dst, a1, sizeof(__dst));
  v27 = a1;
  v26 = a2;
  v24 = a3;
  v25 = a4;
  v23 = a5;
  v22 = HIDWORD(__dst[4]);
  v21 = a2;
  sub_1B0714E4C();
  v18 = sub_1B0E45ED8();
  sub_1B0990C1C(__dst, v20);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (v18)
  {
    v10 = __dst[3];
    v9 = __dst[4];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v11 = static MailboxName.== infix(_:_:)(v10, v9, a3, a4);

    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  sub_1B0990D34(__dst);

  sub_1B0990C1C(__dst, v19);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (v12)
  {
    v6 = __dst[5];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v7 = static SectionSpecifier.Part.__derived_struct_equals(_:_:)(v6, a5);

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  sub_1B0990D34(__dst);

  return v8 & 1;
}

void *sub_1B09757D4(void *result, uint64_t a2, char a3)
{
  if (a3)
  {
    sub_1B0E46B68();
    sub_1B0A483BC();
    return v9;
  }

  v12 = a2 - 11801;
  if (__OFSUB__(a2, 11801))
  {
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v12 <= 0)
  {
    sub_1B0975AD4();
    return v8;
  }

  if (__OFSUB__(result, 11801))
  {
    goto LABEL_25;
  }

  result = sub_1B0E46B68();
  if (__OFADD__(v12, 11801))
  {
    goto LABEL_26;
  }

  if (!__OFADD__(v12, 11801))
  {
    sub_1B0E46B78();
    sub_1B0A483BC();
    return v7;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1B0975B38(uint64_t a1, int a2, int a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v24 = a7;
  v25 = a6;
  v26 = a5;
  v28 = a3;
  v29 = a2;
  v27 = a1;
  v39 = a1;
  v40 = a2;
  v38 = a3;
  v37[1] = a4;
  v37[2] = a5;
  v37[3] = a6;
  v37[4] = a7;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v37[0] = v26;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v33 = v28;
  v34 = v27;
  v35 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E32F0, &qword_1B0EA10E8);
  sub_1B0991014();
  v31 = 0;
  v32 = sub_1B0E45028();
  v23 = v32;

  sub_1B039E440(v37);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (v32)
  {
    v21 = 1;
    v22 = v31;
  }

  else
  {
    v7 = v31;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v36 = v25;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v16 = &v14;
    MEMORY[0x1EEE9AC00](&v14);
    v17 = v11;
    v11[4] = v28;
    v12 = v27;
    v13 = v8;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3308, &qword_1B0EA1100);
    sub_1B09914B4();
    v9 = sub_1B0E45028();
    v19 = v7;
    v20 = v9;
    v15 = v9;

    sub_1B039E440(&v36);
    v21 = v15;
    v22 = v19;
  }

  v14 = v21;

  return v14 & 1;
}

uint64_t sub_1B0975E08@<X0>(unsigned int a1@<W2>, uint64_t *a2@<X8>)
{
  result = sub_1B07E14B4(a1);
  *a2 = result;
  a2[1] = v3;
  a2[2] = v4;
  return result;
}

uint64_t sub_1B0975E70(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v1750 = v2;
  v1749 = v3;
  v1746 = v4;
  v1747 = v5;
  v1641 = v1;
  v1748 = 0;
  v1642 = sub_1B074E050;
  v1643 = sub_1B03F7AE0;
  v1644 = sub_1B0394C30;
  v1645 = sub_1B0394C24;
  v1646 = sub_1B074DFFC;
  v1647 = sub_1B039BA88;
  v1648 = sub_1B039BB94;
  v1649 = sub_1B0394C24;
  v1650 = sub_1B039BBA0;
  v1651 = sub_1B039BC08;
  v1652 = 0x786F626C69616DLL;
  v1653 = sub_1B06BA324;
  v1654 = sub_1B074E0E4;
  v1655 = sub_1B039BCF8;
  v1656 = sub_1B0991544;
  v1657 = sub_1B03B0DF8;
  v1658 = sub_1B07AB020;
  v1659 = sub_1B039BC08;
  v1660 = sub_1B0398F5C;
  v1661 = sub_1B0398F5C;
  v1662 = sub_1B0399178;
  v1663 = sub_1B0398F5C;
  v1664 = sub_1B0398F5C;
  v1665 = sub_1B039BA94;
  v1666 = sub_1B0398F5C;
  v1667 = sub_1B0398F5C;
  v1668 = sub_1B0399178;
  v1669 = sub_1B0398F5C;
  v1670 = sub_1B0398F5C;
  v1671 = sub_1B03991EC;
  v1672 = sub_1B0398F5C;
  v1673 = sub_1B0398F5C;
  v1674 = sub_1B03993BC;
  v1675 = sub_1B0398F5C;
  v1676 = sub_1B0398F5C;
  v1677 = sub_1B039BCEC;
  v1678 = sub_1B0398F5C;
  v1679 = sub_1B0398F5C;
  v1680 = sub_1B0399260;
  v1681 = sub_1B0398F5C;
  v1682 = sub_1B0398F5C;
  v1683 = sub_1B03991EC;
  v1684 = sub_1B074E050;
  v1685 = sub_1B09907C8;
  v1686 = sub_1B03F7AE0;
  v1687 = sub_1B099153C;
  v1688 = sub_1B0394C24;
  v1689 = sub_1B074DFFC;
  v1690 = sub_1B039BA88;
  v1691 = sub_1B0394C24;
  v1692 = sub_1B039BBA0;
  v1693 = sub_1B039BC08;
  v1694 = sub_1B06BA324;
  v1695 = sub_1B074E0E4;
  v1696 = sub_1B039BCF8;
  v1697 = sub_1B09907D0;
  v1698 = sub_1B039BC08;
  v1699 = sub_1B07AB020;
  v1700 = sub_1B039BC08;
  v1701 = sub_1B0990FCC;
  v1702 = sub_1B039BCF8;
  v1703 = sub_1B08A9978;
  v1704 = sub_1B03B0DF8;
  v1705 = sub_1B0398F5C;
  v1706 = sub_1B0398F5C;
  v1707 = sub_1B0399178;
  v1708 = sub_1B0398F5C;
  v1709 = sub_1B0398F5C;
  v1710 = sub_1B039BA94;
  v1711 = sub_1B0398F5C;
  v1712 = sub_1B0398F5C;
  v1713 = sub_1B0399178;
  v1714 = sub_1B0398F5C;
  v1715 = sub_1B0398F5C;
  v1716 = sub_1B03991EC;
  v1717 = sub_1B0398F5C;
  v1718 = sub_1B0398F5C;
  v1719 = sub_1B03993BC;
  v1720 = sub_1B0398F5C;
  v1721 = sub_1B0398F5C;
  v1722 = sub_1B039BCEC;
  v1723 = sub_1B0398F5C;
  v1724 = sub_1B0398F5C;
  v1725 = sub_1B03991EC;
  v1726 = sub_1B0398F5C;
  v1727 = sub_1B0398F5C;
  v1728 = sub_1B03991EC;
  v1729 = sub_1B0398F5C;
  v1730 = sub_1B0398F5C;
  v1731 = sub_1B039BCEC;
  v1732 = sub_1B0398F5C;
  v1733 = sub_1B0398F5C;
  v1734 = sub_1B0399260;
  v1794 = 0;
  v1792 = 0;
  v1793 = 0;
  v1791 = 0;
  v1790 = 0;
  v1789 = 0;
  v1786 = 0;
  v1784 = 0;
  v1785 = 0;
  v1783 = 0;
  v1781 = 0;
  v1780[0] = 0;
  v1780[1] = 0;
  v1735 = 0;
  v1743 = 0;
  v1736 = sub_1B0E439A8();
  v1737 = *(v1736 - 8);
  v1738 = v1736 - 8;
  v1739 = (*(v1737 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v1740 = &v452[-v1739];
  v1741 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v1742 = &v452[-v1741];
  v1744 = (*(*(_s6LoggerVMa(v8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1743);
  v1745 = &v452[-v1744];
  v1751 = _s6LoggerVMa_1(v9);
  v1757 = *(*(v1751 - 8) + 64);
  v1752 = (v1757 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1750);
  v1753 = &v452[-v1752];
  v1754 = (v1757 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v1755 = &v452[-v1754];
  v1756 = (v1757 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11);
  v1758 = &v452[-v1756];
  v1759 = (v1757 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v1760 = &v452[-v1759];
  v1794 = &v452[-v1759];
  v1792 = v13;
  v1793 = v14;
  v1791 = v15;
  v1790 = v16;
  v1789 = v1;
  v1761 = (v1 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_lastKnownEnvironment);
  v1762 = &v1788;
  swift_beginAccess();
  v1763 = *v1761;
  swift_endAccess();
  if ((v1763 & 0xFF00) == 0x200)
  {
    v1639 = 2;
  }

  else
  {
    v1640 = v1763 >> 16;
    v1639 = BYTE2(v1763) & 1;
  }

  v1787 = v1639;
  if (v1639 == 2)
  {
    v1638 = 0;
  }

  else
  {
    v1638 = v1787;
  }

  v1786 = v1638 & 1;
  if (v1638)
  {
    v1637 = &v1764;
    swift_beginAccess();
    sub_1B07143A4(v1750, v1749, v1746, 0);
    swift_endAccess();
  }

  sub_1B0394784(v1641 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_logger, v1745);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B07B91DC(v1745, v1750, v1749, v1760);
  v1634 = sub_1B0985520(v1750, v1749, v1746);
  v1635 = v17;
  v1636 = v18;
  if (v18 == 2)
  {
    sub_1B074B764(v1760);
    v453 = 0;
  }

  else
  {
    v1631 = v1634;
    v1632 = v1635;
    v1633 = v1636;
    v1626 = v1636;
    v1624 = v1635;
    v1625 = v1634;
    v1784 = v1634;
    v1785 = v1635;
    v1783 = v1636 & 1;
    v1627 = &v1782;
    swift_beginAccess();
    v1628 = sub_1B09460C0(v1750, v1749, v1626 & 1, v1746);
    swift_endAccess();
    v1781 = v1628;
    v1780[2] = v1628;
    v1629 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E32F0, &qword_1B0EA10E8);
    v1630 = sub_1B0990678();
    if (sub_1B0E45748())
    {

      sub_1B0391D50(v1625, v1624);
      sub_1B074B764(v1760);
      v453 = 0;
    }

    else
    {
      if (sub_1B0E452A8() == 1)
      {
        v1535 = v1735;
      }

      else
      {
        (*(v1737 + 16))(v1742, v1760, v1736);
        sub_1B074B69C(v1760, v1758);
        sub_1B074B69C(v1758, v1755);
        sub_1B074E41C(v1758, v1753);
        v19 = &v1755[*(v1751 + 20)];
        v1570 = *v19;
        v1571 = *(v19 + 1);
        v1572 = *(v19 + 1);
        v1573 = *(v19 + 4);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B074B764(v1755);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v1569 = 36;
        v1591 = 7;
        v20 = swift_allocObject();
        v21 = v1571;
        v22 = v1572;
        v23 = v1573;
        v1576 = v20;
        *(v20 + 16) = v1570;
        *(v20 + 20) = v21;
        *(v20 + 24) = v22;
        *(v20 + 32) = v23;
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v24 = swift_allocObject();
        v25 = v1571;
        v26 = v1572;
        v27 = v1573;
        v1568 = v24;
        *(v24 + 16) = v1570;
        *(v24 + 20) = v25;
        *(v24 + 24) = v26;
        *(v24 + 32) = v27;

        v1590 = 32;
        v28 = swift_allocObject();
        v29 = v1568;
        v1580 = v28;
        *(v28 + 16) = v1642;
        *(v28 + 24) = v29;
        sub_1B0394868();
        sub_1B0394868();

        v30 = swift_allocObject();
        v31 = v1571;
        v32 = v1572;
        v33 = v1573;
        v34 = v30;
        v35 = v1753;
        v1583 = v34;
        *(v34 + 16) = v1570;
        *(v34 + 20) = v31;
        *(v34 + 24) = v32;
        *(v34 + 32) = v33;
        sub_1B074B764(v35);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v1594 = 24;
        v1586 = swift_allocObject();
        *(v1586 + 16) = v1628;
        v1574 = swift_allocObject();
        *(v1574 + 16) = v1746;

        v36 = swift_allocObject();
        v37 = v1574;
        v1592 = v36;
        *(v36 + 16) = v1643;
        *(v36 + 24) = v37;

        v1622 = sub_1B0E43988();
        v1623 = sub_1B0E45908();
        v1588 = 17;
        v1595 = swift_allocObject();
        v1578 = 16;
        *(v1595 + 16) = 16;
        v1596 = swift_allocObject();
        v1589 = 4;
        *(v1596 + 16) = 4;
        v38 = swift_allocObject();
        v1575 = v38;
        *(v38 + 16) = v1644;
        *(v38 + 24) = 0;
        v39 = swift_allocObject();
        v40 = v1575;
        v1597 = v39;
        *(v39 + 16) = v1645;
        *(v39 + 24) = v40;
        v1598 = swift_allocObject();
        *(v1598 + 16) = 0;
        v1599 = swift_allocObject();
        *(v1599 + 16) = 1;
        v41 = swift_allocObject();
        v42 = v1576;
        v1577 = v41;
        *(v41 + 16) = v1646;
        *(v41 + 24) = v42;
        v43 = swift_allocObject();
        v44 = v1577;
        v1600 = v43;
        *(v43 + 16) = v1647;
        *(v43 + 24) = v44;
        v1601 = swift_allocObject();
        *(v1601 + 16) = v1578;
        v1602 = swift_allocObject();
        *(v1602 + 16) = v1589;
        v45 = swift_allocObject();
        v1579 = v45;
        *(v45 + 16) = v1648;
        *(v45 + 24) = 0;
        v46 = swift_allocObject();
        v47 = v1579;
        v1603 = v46;
        *(v46 + 16) = v1649;
        *(v46 + 24) = v47;
        v1604 = swift_allocObject();
        *(v1604 + 16) = 0;
        v1605 = swift_allocObject();
        *(v1605 + 16) = v1589;
        v48 = swift_allocObject();
        v49 = v1580;
        v1581 = v48;
        *(v48 + 16) = v1650;
        *(v48 + 24) = v49;
        v50 = swift_allocObject();
        v51 = v1581;
        v1606 = v50;
        *(v50 + 16) = v1651;
        *(v50 + 24) = v51;
        v1607 = swift_allocObject();
        *(v1607 + 16) = 112;
        v1608 = swift_allocObject();
        v1585 = 8;
        *(v1608 + 16) = 8;
        v1582 = swift_allocObject();
        *(v1582 + 16) = v1652;
        v52 = swift_allocObject();
        v53 = v1582;
        v1609 = v52;
        *(v52 + 16) = v1653;
        *(v52 + 24) = v53;
        v1610 = swift_allocObject();
        *(v1610 + 16) = 37;
        v1611 = swift_allocObject();
        *(v1611 + 16) = v1585;
        v54 = swift_allocObject();
        v55 = v1583;
        v1584 = v54;
        *(v54 + 16) = v1654;
        *(v54 + 24) = v55;
        v56 = swift_allocObject();
        v57 = v1584;
        v1612 = v56;
        *(v56 + 16) = v1655;
        *(v56 + 24) = v57;
        v1613 = swift_allocObject();
        *(v1613 + 16) = 0;
        v1614 = swift_allocObject();
        *(v1614 + 16) = v1585;
        v58 = swift_allocObject();
        v59 = v1586;
        v1587 = v58;
        *(v58 + 16) = v1656;
        *(v58 + 24) = v59;
        v60 = swift_allocObject();
        v61 = v1587;
        v1615 = v60;
        *(v60 + 16) = v1657;
        *(v60 + 24) = v61;
        v1616 = swift_allocObject();
        *(v1616 + 16) = 0;
        v1617 = swift_allocObject();
        *(v1617 + 16) = v1589;
        v62 = swift_allocObject();
        v63 = v1592;
        v1593 = v62;
        *(v62 + 16) = v1658;
        *(v62 + 24) = v63;
        v64 = swift_allocObject();
        v65 = v1593;
        v1619 = v64;
        *(v64 + 16) = v1659;
        *(v64 + 24) = v65;
        v1621 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
        v1618 = sub_1B0E46A48();
        v1620 = v66;

        v67 = v1595;
        v68 = v1620;
        *v1620 = v1660;
        v68[1] = v67;

        v69 = v1596;
        v70 = v1620;
        v1620[2] = v1661;
        v70[3] = v69;

        v71 = v1597;
        v72 = v1620;
        v1620[4] = v1662;
        v72[5] = v71;

        v73 = v1598;
        v74 = v1620;
        v1620[6] = v1663;
        v74[7] = v73;

        v75 = v1599;
        v76 = v1620;
        v1620[8] = v1664;
        v76[9] = v75;

        v77 = v1600;
        v78 = v1620;
        v1620[10] = v1665;
        v78[11] = v77;

        v79 = v1601;
        v80 = v1620;
        v1620[12] = v1666;
        v80[13] = v79;

        v81 = v1602;
        v82 = v1620;
        v1620[14] = v1667;
        v82[15] = v81;

        v83 = v1603;
        v84 = v1620;
        v1620[16] = v1668;
        v84[17] = v83;

        v85 = v1604;
        v86 = v1620;
        v1620[18] = v1669;
        v86[19] = v85;

        v87 = v1605;
        v88 = v1620;
        v1620[20] = v1670;
        v88[21] = v87;

        v89 = v1606;
        v90 = v1620;
        v1620[22] = v1671;
        v90[23] = v89;

        v91 = v1607;
        v92 = v1620;
        v1620[24] = v1672;
        v92[25] = v91;

        v93 = v1608;
        v94 = v1620;
        v1620[26] = v1673;
        v94[27] = v93;

        v95 = v1609;
        v96 = v1620;
        v1620[28] = v1674;
        v96[29] = v95;

        v97 = v1610;
        v98 = v1620;
        v1620[30] = v1675;
        v98[31] = v97;

        v99 = v1611;
        v100 = v1620;
        v1620[32] = v1676;
        v100[33] = v99;

        v101 = v1612;
        v102 = v1620;
        v1620[34] = v1677;
        v102[35] = v101;

        v103 = v1613;
        v104 = v1620;
        v1620[36] = v1678;
        v104[37] = v103;

        v105 = v1614;
        v106 = v1620;
        v1620[38] = v1679;
        v106[39] = v105;

        v107 = v1615;
        v108 = v1620;
        v1620[40] = v1680;
        v108[41] = v107;

        v109 = v1616;
        v110 = v1620;
        v1620[42] = v1681;
        v110[43] = v109;

        v111 = v1617;
        v112 = v1620;
        v1620[44] = v1682;
        v112[45] = v111;

        v113 = v1619;
        v114 = v1620;
        v1620[46] = v1683;
        v114[47] = v113;
        sub_1B0394964();

        if (os_log_type_enabled(v1622, v1623))
        {
          v115 = v1735;
          v1561 = sub_1B0E45D78();
          v1560 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
          v1562 = sub_1B03949A8(0, v1560, v1560);
          v1563 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
          v1564 = &v1769;
          v1769 = v1561;
          v1565 = &v1768;
          v1768 = v1562;
          v1566 = &v1767;
          v1767 = v1563;
          sub_1B0394A48(3, &v1769);
          sub_1B0394A48(8, v1564);
          v1765 = v1660;
          v1766 = v1595;
          sub_1B03949FC(&v1765, v1564, v1565, v1566);
          v1567 = v115;
          if (v115)
          {

            __break(1u);
          }

          else
          {
            v1765 = v1661;
            v1766 = v1596;
            sub_1B03949FC(&v1765, &v1769, &v1768, &v1767);
            v1558 = 0;
            v1765 = v1662;
            v1766 = v1597;
            sub_1B03949FC(&v1765, &v1769, &v1768, &v1767);
            v1557 = 0;
            v1765 = v1663;
            v1766 = v1598;
            sub_1B03949FC(&v1765, &v1769, &v1768, &v1767);
            v1556 = 0;
            v1765 = v1664;
            v1766 = v1599;
            sub_1B03949FC(&v1765, &v1769, &v1768, &v1767);
            v1555 = 0;
            v1765 = v1665;
            v1766 = v1600;
            sub_1B03949FC(&v1765, &v1769, &v1768, &v1767);
            v1554 = 0;
            v1765 = v1666;
            v1766 = v1601;
            sub_1B03949FC(&v1765, &v1769, &v1768, &v1767);
            v1553 = 0;
            v1765 = v1667;
            v1766 = v1602;
            sub_1B03949FC(&v1765, &v1769, &v1768, &v1767);
            v1552 = 0;
            v1765 = v1668;
            v1766 = v1603;
            sub_1B03949FC(&v1765, &v1769, &v1768, &v1767);
            v1551 = 0;
            v1765 = v1669;
            v1766 = v1604;
            sub_1B03949FC(&v1765, &v1769, &v1768, &v1767);
            v1550 = 0;
            v1765 = v1670;
            v1766 = v1605;
            sub_1B03949FC(&v1765, &v1769, &v1768, &v1767);
            v1549 = 0;
            v1765 = v1671;
            v1766 = v1606;
            sub_1B03949FC(&v1765, &v1769, &v1768, &v1767);
            v1548 = 0;
            v1765 = v1672;
            v1766 = v1607;
            sub_1B03949FC(&v1765, &v1769, &v1768, &v1767);
            v1547 = 0;
            v1765 = v1673;
            v1766 = v1608;
            sub_1B03949FC(&v1765, &v1769, &v1768, &v1767);
            v1546 = 0;
            v1765 = v1674;
            v1766 = v1609;
            sub_1B03949FC(&v1765, &v1769, &v1768, &v1767);
            v1545 = 0;
            v1765 = v1675;
            v1766 = v1610;
            sub_1B03949FC(&v1765, &v1769, &v1768, &v1767);
            v1544 = 0;
            v1765 = v1676;
            v1766 = v1611;
            sub_1B03949FC(&v1765, &v1769, &v1768, &v1767);
            v1543 = 0;
            v1765 = v1677;
            v1766 = v1612;
            sub_1B03949FC(&v1765, &v1769, &v1768, &v1767);
            v1542 = 0;
            v1765 = v1678;
            v1766 = v1613;
            sub_1B03949FC(&v1765, &v1769, &v1768, &v1767);
            v1541 = 0;
            v1765 = v1679;
            v1766 = v1614;
            sub_1B03949FC(&v1765, &v1769, &v1768, &v1767);
            v1540 = 0;
            v1765 = v1680;
            v1766 = v1615;
            sub_1B03949FC(&v1765, &v1769, &v1768, &v1767);
            v1539 = 0;
            v1765 = v1681;
            v1766 = v1616;
            sub_1B03949FC(&v1765, &v1769, &v1768, &v1767);
            v1538 = 0;
            v1765 = v1682;
            v1766 = v1617;
            sub_1B03949FC(&v1765, &v1769, &v1768, &v1767);
            v1537 = 0;
            v1765 = v1683;
            v1766 = v1619;
            sub_1B03949FC(&v1765, &v1769, &v1768, &v1767);
            v1536 = 0;
            _os_log_impl(&dword_1B0389000, v1622, v1623, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Download did complete. Found %ld user-initiated download request(s) for UID %u.", v1561, 0x3Bu);
            sub_1B03998A8(v1562, 0, v1560);
            sub_1B03998A8(v1563, 1, MEMORY[0x1E69E7CA0] + 8);
            sub_1B0E45D58();

            v1559 = v1536;
          }
        }

        else
        {
          v116 = v1735;

          v1559 = v116;
        }

        v1534 = v1559;
        MEMORY[0x1E69E5920](v1622);
        (*(v1737 + 8))(v1742, v1736);
        v1535 = v1534;
      }

      v1532 = v1535;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v1779[9] = v1628;
      sub_1B0E45798();
      for (i = v1532; ; i = v457)
      {
        v1528 = i;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E32F8, &qword_1B0EA10F0);
        v1529 = &v1777;
        sub_1B0E46518();
        v1530 = v1778;
        v1531 = 72;
        memcpy(v1778, v1529, sizeof(v1778));
        memcpy(v1779, v1778, 0x48uLL);
        if (!v1779[3])
        {
          break;
        }

        v1465 = v1779;
        v1467 = __dst;
        v1468 = 72;
        memcpy(__dst, v1779, 0x48uLL);
        (*(v1737 + 16))(v1740, v1760, v1736);
        sub_1B074B69C(v1760, v1758);
        sub_1B074B69C(v1758, v1755);
        sub_1B074E41C(v1758, v1753);
        v117 = &v1755[*(v1751 + 20)];
        v1459 = *v117;
        v1460 = *(v117 + 1);
        v1461 = *(v117 + 1);
        v1462 = *(v117 + 4);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B074B764(v1755);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v1458 = 36;
        v1490 = 7;
        v118 = swift_allocObject();
        v119 = v1460;
        v120 = v1461;
        v121 = v1462;
        v1471 = v118;
        *(v118 + 16) = v1459;
        *(v118 + 20) = v119;
        *(v118 + 24) = v120;
        *(v118 + 32) = v121;
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v122 = swift_allocObject();
        v123 = v1460;
        v124 = v1461;
        v125 = v1462;
        v1457 = v122;
        *(v122 + 16) = v1459;
        *(v122 + 20) = v123;
        *(v122 + 24) = v124;
        *(v122 + 32) = v125;

        v1489 = 32;
        v126 = swift_allocObject();
        v127 = v1457;
        v1475 = v126;
        *(v126 + 16) = v1684;
        *(v126 + 24) = v127;
        sub_1B0394868();
        sub_1B0394868();

        v128 = swift_allocObject();
        v129 = v1460;
        v130 = v1461;
        v131 = v1462;
        v132 = v128;
        v133 = v1753;
        v1478 = v132;
        *(v132 + 16) = v1459;
        *(v132 + 20) = v129;
        *(v132 + 24) = v130;
        *(v132 + 32) = v131;
        sub_1B074B764(v133);
        sub_1B0990700(v1465, &v1776);
        v1466 = 88;
        v1463 = swift_allocObject();
        memcpy((v1463 + 16), v1467, v1468);

        v134 = swift_allocObject();
        v135 = v1463;
        v1480 = v134;
        *(v134 + 16) = v1685;
        *(v134 + 24) = v135;

        v1464 = swift_allocObject();
        *(v1464 + 16) = v1746;

        v136 = swift_allocObject();
        v137 = v1464;
        v1483 = v136;
        *(v136 + 16) = v1686;
        *(v136 + 24) = v137;

        sub_1B0990700(v1465, &v1775);
        v1469 = swift_allocObject();
        memcpy((v1469 + 16), v1467, v1468);

        v138 = swift_allocObject();
        v139 = v1469;
        v1485 = v138;
        *(v138 + 16) = v1687;
        *(v138 + 24) = v139;

        sub_1B03B2000(v1625, v1624);
        v140 = swift_allocObject();
        v141 = v1624;
        v1491 = v140;
        *(v140 + 16) = v1625;
        *(v140 + 24) = v141;
        sub_1B07575C4();

        v1526 = sub_1B0E43988();
        v1527 = sub_1B0E45908();
        v1487 = 17;
        v1493 = swift_allocObject();
        v1473 = 16;
        *(v1493 + 16) = 16;
        v1494 = swift_allocObject();
        v1482 = 4;
        *(v1494 + 16) = 4;
        v142 = swift_allocObject();
        v1470 = v142;
        *(v142 + 16) = v1644;
        *(v142 + 24) = 0;
        v143 = swift_allocObject();
        v144 = v1470;
        v1495 = v143;
        *(v143 + 16) = v1688;
        *(v143 + 24) = v144;
        v1496 = swift_allocObject();
        *(v1496 + 16) = 0;
        v1497 = swift_allocObject();
        *(v1497 + 16) = 1;
        v145 = swift_allocObject();
        v146 = v1471;
        v1472 = v145;
        *(v145 + 16) = v1689;
        *(v145 + 24) = v146;
        v147 = swift_allocObject();
        v148 = v1472;
        v1498 = v147;
        *(v147 + 16) = v1690;
        *(v147 + 24) = v148;
        v1499 = swift_allocObject();
        *(v1499 + 16) = v1473;
        v1500 = swift_allocObject();
        *(v1500 + 16) = v1482;
        v149 = swift_allocObject();
        v1474 = v149;
        *(v149 + 16) = v1648;
        *(v149 + 24) = 0;
        v150 = swift_allocObject();
        v151 = v1474;
        v1501 = v150;
        *(v150 + 16) = v1691;
        *(v150 + 24) = v151;
        v1502 = swift_allocObject();
        *(v1502 + 16) = 0;
        v1503 = swift_allocObject();
        *(v1503 + 16) = v1482;
        v152 = swift_allocObject();
        v153 = v1475;
        v1476 = v152;
        *(v152 + 16) = v1692;
        *(v152 + 24) = v153;
        v154 = swift_allocObject();
        v155 = v1476;
        v1504 = v154;
        *(v154 + 16) = v1693;
        *(v154 + 24) = v155;
        v1505 = swift_allocObject();
        *(v1505 + 16) = 112;
        v1506 = swift_allocObject();
        v1488 = 8;
        *(v1506 + 16) = 8;
        v1477 = swift_allocObject();
        *(v1477 + 16) = v1652;
        v156 = swift_allocObject();
        v157 = v1477;
        v1507 = v156;
        *(v156 + 16) = v1694;
        *(v156 + 24) = v157;
        v1508 = swift_allocObject();
        *(v1508 + 16) = 37;
        v1509 = swift_allocObject();
        *(v1509 + 16) = v1488;
        v158 = swift_allocObject();
        v159 = v1478;
        v1479 = v158;
        *(v158 + 16) = v1695;
        *(v158 + 24) = v159;
        v160 = swift_allocObject();
        v161 = v1479;
        v1510 = v160;
        *(v160 + 16) = v1696;
        *(v160 + 24) = v161;
        v1511 = swift_allocObject();
        *(v1511 + 16) = 2;
        v1512 = swift_allocObject();
        *(v1512 + 16) = v1482;
        v162 = swift_allocObject();
        v163 = v1480;
        v1481 = v162;
        *(v162 + 16) = v1697;
        *(v162 + 24) = v163;
        v164 = swift_allocObject();
        v165 = v1481;
        v1513 = v164;
        *(v164 + 16) = v1698;
        *(v164 + 24) = v165;
        v1514 = swift_allocObject();
        *(v1514 + 16) = 0;
        v1515 = swift_allocObject();
        *(v1515 + 16) = v1482;
        v166 = swift_allocObject();
        v167 = v1483;
        v1484 = v166;
        *(v166 + 16) = v1699;
        *(v166 + 24) = v167;
        v168 = swift_allocObject();
        v169 = v1484;
        v1516 = v168;
        *(v168 + 16) = v1700;
        *(v168 + 24) = v169;
        v1517 = swift_allocObject();
        *(v1517 + 16) = 34;
        v1518 = swift_allocObject();
        *(v1518 + 16) = v1488;
        v170 = swift_allocObject();
        v171 = v1485;
        v1486 = v170;
        *(v170 + 16) = v1701;
        *(v170 + 24) = v171;
        v172 = swift_allocObject();
        v173 = v1486;
        v1519 = v172;
        *(v172 + 16) = v1702;
        *(v172 + 24) = v173;
        v1520 = swift_allocObject();
        *(v1520 + 16) = 0;
        v1521 = swift_allocObject();
        *(v1521 + 16) = v1488;
        v174 = swift_allocObject();
        v175 = v1491;
        v1492 = v174;
        *(v174 + 16) = v1703;
        *(v174 + 24) = v175;
        v176 = swift_allocObject();
        v177 = v1492;
        v1523 = v176;
        *(v176 + 16) = v1704;
        *(v176 + 24) = v177;
        v1525 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
        v1522 = sub_1B0E46A48();
        v1524 = v178;

        v179 = v1493;
        v180 = v1524;
        *v1524 = v1705;
        v180[1] = v179;

        v181 = v1494;
        v182 = v1524;
        v1524[2] = v1706;
        v182[3] = v181;

        v183 = v1495;
        v184 = v1524;
        v1524[4] = v1707;
        v184[5] = v183;

        v185 = v1496;
        v186 = v1524;
        v1524[6] = v1708;
        v186[7] = v185;

        v187 = v1497;
        v188 = v1524;
        v1524[8] = v1709;
        v188[9] = v187;

        v189 = v1498;
        v190 = v1524;
        v1524[10] = v1710;
        v190[11] = v189;

        v191 = v1499;
        v192 = v1524;
        v1524[12] = v1711;
        v192[13] = v191;

        v193 = v1500;
        v194 = v1524;
        v1524[14] = v1712;
        v194[15] = v193;

        v195 = v1501;
        v196 = v1524;
        v1524[16] = v1713;
        v196[17] = v195;

        v197 = v1502;
        v198 = v1524;
        v1524[18] = v1714;
        v198[19] = v197;

        v199 = v1503;
        v200 = v1524;
        v1524[20] = v1715;
        v200[21] = v199;

        v201 = v1504;
        v202 = v1524;
        v1524[22] = v1716;
        v202[23] = v201;

        v203 = v1505;
        v204 = v1524;
        v1524[24] = v1717;
        v204[25] = v203;

        v205 = v1506;
        v206 = v1524;
        v1524[26] = v1718;
        v206[27] = v205;

        v207 = v1507;
        v208 = v1524;
        v1524[28] = v1719;
        v208[29] = v207;

        v209 = v1508;
        v210 = v1524;
        v1524[30] = v1720;
        v210[31] = v209;

        v211 = v1509;
        v212 = v1524;
        v1524[32] = v1721;
        v212[33] = v211;

        v213 = v1510;
        v214 = v1524;
        v1524[34] = v1722;
        v214[35] = v213;

        v215 = v1511;
        v216 = v1524;
        v1524[36] = v1723;
        v216[37] = v215;

        v217 = v1512;
        v218 = v1524;
        v1524[38] = v1724;
        v218[39] = v217;

        v219 = v1513;
        v220 = v1524;
        v1524[40] = v1725;
        v220[41] = v219;

        v221 = v1514;
        v222 = v1524;
        v1524[42] = v1726;
        v222[43] = v221;

        v223 = v1515;
        v224 = v1524;
        v1524[44] = v1727;
        v224[45] = v223;

        v225 = v1516;
        v226 = v1524;
        v1524[46] = v1728;
        v226[47] = v225;

        v227 = v1517;
        v228 = v1524;
        v1524[48] = v1729;
        v228[49] = v227;

        v229 = v1518;
        v230 = v1524;
        v1524[50] = v1730;
        v230[51] = v229;

        v231 = v1519;
        v232 = v1524;
        v1524[52] = v1731;
        v232[53] = v231;

        v233 = v1520;
        v234 = v1524;
        v1524[54] = v1732;
        v234[55] = v233;

        v235 = v1521;
        v236 = v1524;
        v1524[56] = v1733;
        v236[57] = v235;

        v237 = v1523;
        v238 = v1524;
        v1524[58] = v1734;
        v238[59] = v237;
        sub_1B0394964();

        if (os_log_type_enabled(v1526, v1527))
        {
          v239 = v1503;
          v240 = v1502;
          v241 = v1501;
          v242 = v1500;
          v243 = v1499;
          v244 = v1498;
          v245 = v1497;
          v246 = v1528;
          v1420 = sub_1B0E45D78();
          v1419 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
          v1421 = sub_1B03949A8(0, v1419, v1419);
          v1422 = sub_1B03949A8(2, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
          v1423 = &v1774;
          v1774 = v1420;
          v1424 = &v1773;
          v1773 = v1421;
          v1425 = &v1772;
          v1772 = v1422;
          sub_1B0394A48(3, &v1774);
          sub_1B0394A48(10, v1423);
          v1770 = v1705;
          v1771 = v1493;
          sub_1B03949FC(&v1770, v1423, v1424, v1425);
          v1426 = v246;
          v1427 = v1493;
          v1428 = v1494;
          v1429 = v1495;
          v1430 = v1496;
          v1431 = v245;
          v1432 = v244;
          v1433 = v243;
          v1434 = v242;
          v1435 = v241;
          v1436 = v240;
          v1437 = v239;
          v1438 = v1504;
          v1439 = v1505;
          v1440 = v1506;
          v1441 = v1507;
          v1442 = v1508;
          v1443 = v1509;
          v1444 = v1510;
          v1445 = v1511;
          v1446 = v1512;
          v1447 = v1513;
          v1448 = v1514;
          v1449 = v1515;
          v1450 = v1516;
          v1451 = v1517;
          v1452 = v1518;
          v1453 = v1519;
          v1454 = v1520;
          v1455 = v1521;
          v1456 = v1523;
          if (v246)
          {
            v1389 = v1456;
            v1387 = v1428;
            v1386 = v1427;
            v1388 = v1428;
            v1390 = v1429;
            v1391 = v1430;
            v1392 = v1431;
            v1393 = v1432;
            v1394 = v1433;
            v1395 = v1434;
            v1396 = v1435;
            v1397 = v1436;
            v1398 = v1437;
            v1399 = v1438;
            v1400 = v1439;
            v1401 = v1440;
            v1402 = v1441;
            v1403 = v1442;
            v1404 = v1443;
            v1405 = v1444;
            v1406 = v1445;
            v1407 = v1446;
            v1408 = v1447;
            v1409 = v1448;
            v1410 = v1449;
            v1411 = v1450;
            v1412 = v1451;
            v1413 = v1452;
            v1414 = v1453;
            v1415 = v1454;
            v1416 = v1455;
            v1417 = v1456;
            v486 = v1456;
            v485 = v1455;
            v484 = v1454;
            v483 = v1453;
            v482 = v1452;
            v481 = v1451;
            v480 = v1450;
            v479 = v1449;
            v478 = v1448;
            v477 = v1447;
            v476 = v1446;
            v475 = v1445;
            v474 = v1444;
            v473 = v1443;
            v472 = v1442;
            v471 = v1441;
            v470 = v1440;
            v469 = v1439;
            v468 = v1438;
            v467 = v1437;
            v466 = v1436;
            v465 = v1435;
            v464 = v1434;
            v463 = v1433;
            v462 = v1432;
            v461 = v1431;
            v460 = v1430;
            v459 = v1429;
            v458 = v1428;

            __break(1u);
          }

          else
          {
            v248 = v1503;
            v249 = v1502;
            v250 = v1501;
            v251 = v1500;
            v252 = v1499;
            v253 = v1498;
            v254 = v1497;
            v1770 = v1706;
            v1771 = v1494;
            sub_1B03949FC(&v1770, &v1774, &v1773, &v1772);
            v1355 = 0;
            v1356 = v1493;
            v1357 = v1494;
            v1358 = v1495;
            v1359 = v1496;
            v1360 = v254;
            v1361 = v253;
            v1362 = v252;
            v1363 = v251;
            v1364 = v250;
            v1365 = v249;
            v1366 = v248;
            v1367 = v1504;
            v1368 = v1505;
            v1369 = v1506;
            v1370 = v1507;
            v1371 = v1508;
            v1372 = v1509;
            v1373 = v1510;
            v1374 = v1511;
            v1375 = v1512;
            v1376 = v1513;
            v1377 = v1514;
            v1378 = v1515;
            v1379 = v1516;
            v1380 = v1517;
            v1381 = v1518;
            v1382 = v1519;
            v1383 = v1520;
            v1384 = v1521;
            v1385 = v1523;
            v255 = v1503;
            v256 = v1502;
            v257 = v1501;
            v258 = v1500;
            v259 = v1499;
            v260 = v1498;
            v261 = v1497;
            v1770 = v1707;
            v1771 = v1495;
            sub_1B03949FC(&v1770, &v1774, &v1773, &v1772);
            v1324 = 0;
            v1325 = v1493;
            v1326 = v1494;
            v1327 = v1495;
            v1328 = v1496;
            v1329 = v261;
            v1330 = v260;
            v1331 = v259;
            v1332 = v258;
            v1333 = v257;
            v1334 = v256;
            v1335 = v255;
            v1336 = v1504;
            v1337 = v1505;
            v1338 = v1506;
            v1339 = v1507;
            v1340 = v1508;
            v1341 = v1509;
            v1342 = v1510;
            v1343 = v1511;
            v1344 = v1512;
            v1345 = v1513;
            v1346 = v1514;
            v1347 = v1515;
            v1348 = v1516;
            v1349 = v1517;
            v1350 = v1518;
            v1351 = v1519;
            v1352 = v1520;
            v1353 = v1521;
            v1354 = v1523;
            v262 = v1503;
            v263 = v1502;
            v264 = v1501;
            v265 = v1500;
            v266 = v1499;
            v267 = v1498;
            v268 = v1497;
            v1770 = v1708;
            v1771 = v1496;
            sub_1B03949FC(&v1770, &v1774, &v1773, &v1772);
            v1293 = 0;
            v1294 = v1493;
            v1295 = v1494;
            v1296 = v1495;
            v1297 = v1496;
            v1298 = v268;
            v1299 = v267;
            v1300 = v266;
            v1301 = v265;
            v1302 = v264;
            v1303 = v263;
            v1304 = v262;
            v1305 = v1504;
            v1306 = v1505;
            v1307 = v1506;
            v1308 = v1507;
            v1309 = v1508;
            v1310 = v1509;
            v1311 = v1510;
            v1312 = v1511;
            v1313 = v1512;
            v1314 = v1513;
            v1315 = v1514;
            v1316 = v1515;
            v1317 = v1516;
            v1318 = v1517;
            v1319 = v1518;
            v1320 = v1519;
            v1321 = v1520;
            v1322 = v1521;
            v1323 = v1523;
            v269 = v1503;
            v270 = v1502;
            v271 = v1501;
            v272 = v1500;
            v273 = v1499;
            v274 = v1498;
            v275 = v1497;
            v1770 = v1709;
            v1771 = v1497;
            sub_1B03949FC(&v1770, &v1774, &v1773, &v1772);
            v1262 = 0;
            v1263 = v1493;
            v1264 = v1494;
            v1265 = v1495;
            v1266 = v1496;
            v1267 = v275;
            v1268 = v274;
            v1269 = v273;
            v1270 = v272;
            v1271 = v271;
            v1272 = v270;
            v1273 = v269;
            v1274 = v1504;
            v1275 = v1505;
            v1276 = v1506;
            v1277 = v1507;
            v1278 = v1508;
            v1279 = v1509;
            v1280 = v1510;
            v1281 = v1511;
            v1282 = v1512;
            v1283 = v1513;
            v1284 = v1514;
            v1285 = v1515;
            v1286 = v1516;
            v1287 = v1517;
            v1288 = v1518;
            v1289 = v1519;
            v1290 = v1520;
            v1291 = v1521;
            v1292 = v1523;
            v276 = v1503;
            v277 = v1502;
            v278 = v1501;
            v279 = v1500;
            v280 = v1499;
            v281 = v1498;
            v282 = v1497;
            v1770 = v1710;
            v1771 = v1498;
            sub_1B03949FC(&v1770, &v1774, &v1773, &v1772);
            v1231 = 0;
            v1232 = v1493;
            v1233 = v1494;
            v1234 = v1495;
            v1235 = v1496;
            v1236 = v282;
            v1237 = v281;
            v1238 = v280;
            v1239 = v279;
            v1240 = v278;
            v1241 = v277;
            v1242 = v276;
            v1243 = v1504;
            v1244 = v1505;
            v1245 = v1506;
            v1246 = v1507;
            v1247 = v1508;
            v1248 = v1509;
            v1249 = v1510;
            v1250 = v1511;
            v1251 = v1512;
            v1252 = v1513;
            v1253 = v1514;
            v1254 = v1515;
            v1255 = v1516;
            v1256 = v1517;
            v1257 = v1518;
            v1258 = v1519;
            v1259 = v1520;
            v1260 = v1521;
            v1261 = v1523;
            v283 = v1503;
            v284 = v1502;
            v285 = v1501;
            v286 = v1500;
            v287 = v1499;
            v288 = v1498;
            v289 = v1497;
            v1770 = v1711;
            v1771 = v1499;
            sub_1B03949FC(&v1770, &v1774, &v1773, &v1772);
            v1200 = 0;
            v1201 = v1493;
            v1202 = v1494;
            v1203 = v1495;
            v1204 = v1496;
            v1205 = v289;
            v1206 = v288;
            v1207 = v287;
            v1208 = v286;
            v1209 = v285;
            v1210 = v284;
            v1211 = v283;
            v1212 = v1504;
            v1213 = v1505;
            v1214 = v1506;
            v1215 = v1507;
            v1216 = v1508;
            v1217 = v1509;
            v1218 = v1510;
            v1219 = v1511;
            v1220 = v1512;
            v1221 = v1513;
            v1222 = v1514;
            v1223 = v1515;
            v1224 = v1516;
            v1225 = v1517;
            v1226 = v1518;
            v1227 = v1519;
            v1228 = v1520;
            v1229 = v1521;
            v1230 = v1523;
            v290 = v1503;
            v291 = v1502;
            v292 = v1501;
            v293 = v1500;
            v294 = v1499;
            v295 = v1498;
            v296 = v1497;
            v1770 = v1712;
            v1771 = v1500;
            sub_1B03949FC(&v1770, &v1774, &v1773, &v1772);
            v1169 = 0;
            v1170 = v1493;
            v1171 = v1494;
            v1172 = v1495;
            v1173 = v1496;
            v1174 = v296;
            v1175 = v295;
            v1176 = v294;
            v1177 = v293;
            v1178 = v292;
            v1179 = v291;
            v1180 = v290;
            v1181 = v1504;
            v1182 = v1505;
            v1183 = v1506;
            v1184 = v1507;
            v1185 = v1508;
            v1186 = v1509;
            v1187 = v1510;
            v1188 = v1511;
            v1189 = v1512;
            v1190 = v1513;
            v1191 = v1514;
            v1192 = v1515;
            v1193 = v1516;
            v1194 = v1517;
            v1195 = v1518;
            v1196 = v1519;
            v1197 = v1520;
            v1198 = v1521;
            v1199 = v1523;
            v297 = v1503;
            v298 = v1502;
            v299 = v1501;
            v300 = v1500;
            v301 = v1499;
            v302 = v1498;
            v303 = v1497;
            v1770 = v1713;
            v1771 = v1501;
            sub_1B03949FC(&v1770, &v1774, &v1773, &v1772);
            v1138 = 0;
            v1139 = v1493;
            v1140 = v1494;
            v1141 = v1495;
            v1142 = v1496;
            v1143 = v303;
            v1144 = v302;
            v1145 = v301;
            v1146 = v300;
            v1147 = v299;
            v1148 = v298;
            v1149 = v297;
            v1150 = v1504;
            v1151 = v1505;
            v1152 = v1506;
            v1153 = v1507;
            v1154 = v1508;
            v1155 = v1509;
            v1156 = v1510;
            v1157 = v1511;
            v1158 = v1512;
            v1159 = v1513;
            v1160 = v1514;
            v1161 = v1515;
            v1162 = v1516;
            v1163 = v1517;
            v1164 = v1518;
            v1165 = v1519;
            v1166 = v1520;
            v1167 = v1521;
            v1168 = v1523;
            v304 = v1503;
            v305 = v1502;
            v306 = v1501;
            v307 = v1500;
            v308 = v1499;
            v309 = v1498;
            v310 = v1497;
            v1770 = v1714;
            v1771 = v1502;
            sub_1B03949FC(&v1770, &v1774, &v1773, &v1772);
            v1107 = 0;
            v1108 = v1493;
            v1109 = v1494;
            v1110 = v1495;
            v1111 = v1496;
            v1112 = v310;
            v1113 = v309;
            v1114 = v308;
            v1115 = v307;
            v1116 = v306;
            v1117 = v305;
            v1118 = v304;
            v1119 = v1504;
            v1120 = v1505;
            v1121 = v1506;
            v1122 = v1507;
            v1123 = v1508;
            v1124 = v1509;
            v1125 = v1510;
            v1126 = v1511;
            v1127 = v1512;
            v1128 = v1513;
            v1129 = v1514;
            v1130 = v1515;
            v1131 = v1516;
            v1132 = v1517;
            v1133 = v1518;
            v1134 = v1519;
            v1135 = v1520;
            v1136 = v1521;
            v1137 = v1523;
            v311 = v1503;
            v312 = v1502;
            v313 = v1501;
            v314 = v1500;
            v315 = v1499;
            v316 = v1498;
            v317 = v1497;
            v1770 = v1715;
            v1771 = v1503;
            sub_1B03949FC(&v1770, &v1774, &v1773, &v1772);
            v1076 = 0;
            v1077 = v1493;
            v1078 = v1494;
            v1079 = v1495;
            v1080 = v1496;
            v1081 = v317;
            v1082 = v316;
            v1083 = v315;
            v1084 = v314;
            v1085 = v313;
            v1086 = v312;
            v1087 = v311;
            v1088 = v1504;
            v1089 = v1505;
            v1090 = v1506;
            v1091 = v1507;
            v1092 = v1508;
            v1093 = v1509;
            v1094 = v1510;
            v1095 = v1511;
            v1096 = v1512;
            v1097 = v1513;
            v1098 = v1514;
            v1099 = v1515;
            v1100 = v1516;
            v1101 = v1517;
            v1102 = v1518;
            v1103 = v1519;
            v1104 = v1520;
            v1105 = v1521;
            v1106 = v1523;
            v318 = v1503;
            v319 = v1502;
            v320 = v1501;
            v321 = v1500;
            v322 = v1499;
            v323 = v1498;
            v324 = v1497;
            v1770 = v1716;
            v1771 = v1504;
            sub_1B03949FC(&v1770, &v1774, &v1773, &v1772);
            v1045 = 0;
            v1046 = v1493;
            v1047 = v1494;
            v1048 = v1495;
            v1049 = v1496;
            v1050 = v324;
            v1051 = v323;
            v1052 = v322;
            v1053 = v321;
            v1054 = v320;
            v1055 = v319;
            v1056 = v318;
            v1057 = v1504;
            v1058 = v1505;
            v1059 = v1506;
            v1060 = v1507;
            v1061 = v1508;
            v1062 = v1509;
            v1063 = v1510;
            v1064 = v1511;
            v1065 = v1512;
            v1066 = v1513;
            v1067 = v1514;
            v1068 = v1515;
            v1069 = v1516;
            v1070 = v1517;
            v1071 = v1518;
            v1072 = v1519;
            v1073 = v1520;
            v1074 = v1521;
            v1075 = v1523;
            v325 = v1503;
            v326 = v1502;
            v327 = v1501;
            v328 = v1500;
            v329 = v1499;
            v330 = v1498;
            v331 = v1497;
            v1770 = v1717;
            v1771 = v1505;
            sub_1B03949FC(&v1770, &v1774, &v1773, &v1772);
            v1014 = 0;
            v1015 = v1493;
            v1016 = v1494;
            v1017 = v1495;
            v1018 = v1496;
            v1019 = v331;
            v1020 = v330;
            v1021 = v329;
            v1022 = v328;
            v1023 = v327;
            v1024 = v326;
            v1025 = v325;
            v1026 = v1504;
            v1027 = v1505;
            v1028 = v1506;
            v1029 = v1507;
            v1030 = v1508;
            v1031 = v1509;
            v1032 = v1510;
            v1033 = v1511;
            v1034 = v1512;
            v1035 = v1513;
            v1036 = v1514;
            v1037 = v1515;
            v1038 = v1516;
            v1039 = v1517;
            v1040 = v1518;
            v1041 = v1519;
            v1042 = v1520;
            v1043 = v1521;
            v1044 = v1523;
            v332 = v1503;
            v333 = v1502;
            v334 = v1501;
            v335 = v1500;
            v336 = v1499;
            v337 = v1498;
            v338 = v1497;
            v1770 = v1718;
            v1771 = v1506;
            sub_1B03949FC(&v1770, &v1774, &v1773, &v1772);
            v983 = 0;
            v984 = v1493;
            v985 = v1494;
            v986 = v1495;
            v987 = v1496;
            v988 = v338;
            v989 = v337;
            v990 = v336;
            v991 = v335;
            v992 = v334;
            v993 = v333;
            v994 = v332;
            v995 = v1504;
            v996 = v1505;
            v997 = v1506;
            v998 = v1507;
            v999 = v1508;
            v1000 = v1509;
            v1001 = v1510;
            v1002 = v1511;
            v1003 = v1512;
            v1004 = v1513;
            v1005 = v1514;
            v1006 = v1515;
            v1007 = v1516;
            v1008 = v1517;
            v1009 = v1518;
            v1010 = v1519;
            v1011 = v1520;
            v1012 = v1521;
            v1013 = v1523;
            v339 = v1503;
            v340 = v1502;
            v341 = v1501;
            v342 = v1500;
            v343 = v1499;
            v344 = v1498;
            v345 = v1497;
            v1770 = v1719;
            v1771 = v1507;
            sub_1B03949FC(&v1770, &v1774, &v1773, &v1772);
            v952 = 0;
            v953 = v1493;
            v954 = v1494;
            v955 = v1495;
            v956 = v1496;
            v957 = v345;
            v958 = v344;
            v959 = v343;
            v960 = v342;
            v961 = v341;
            v962 = v340;
            v963 = v339;
            v964 = v1504;
            v965 = v1505;
            v966 = v1506;
            v967 = v1507;
            v968 = v1508;
            v969 = v1509;
            v970 = v1510;
            v971 = v1511;
            v972 = v1512;
            v973 = v1513;
            v974 = v1514;
            v975 = v1515;
            v976 = v1516;
            v977 = v1517;
            v978 = v1518;
            v979 = v1519;
            v980 = v1520;
            v981 = v1521;
            v982 = v1523;
            v346 = v1503;
            v347 = v1502;
            v348 = v1501;
            v349 = v1500;
            v350 = v1499;
            v351 = v1498;
            v352 = v1497;
            v1770 = v1720;
            v1771 = v1508;
            sub_1B03949FC(&v1770, &v1774, &v1773, &v1772);
            v921 = 0;
            v922 = v1493;
            v923 = v1494;
            v924 = v1495;
            v925 = v1496;
            v926 = v352;
            v927 = v351;
            v928 = v350;
            v929 = v349;
            v930 = v348;
            v931 = v347;
            v932 = v346;
            v933 = v1504;
            v934 = v1505;
            v935 = v1506;
            v936 = v1507;
            v937 = v1508;
            v938 = v1509;
            v939 = v1510;
            v940 = v1511;
            v941 = v1512;
            v942 = v1513;
            v943 = v1514;
            v944 = v1515;
            v945 = v1516;
            v946 = v1517;
            v947 = v1518;
            v948 = v1519;
            v949 = v1520;
            v950 = v1521;
            v951 = v1523;
            v353 = v1503;
            v354 = v1502;
            v355 = v1501;
            v356 = v1500;
            v357 = v1499;
            v358 = v1498;
            v359 = v1497;
            v1770 = v1721;
            v1771 = v1509;
            sub_1B03949FC(&v1770, &v1774, &v1773, &v1772);
            v890 = 0;
            v891 = v1493;
            v892 = v1494;
            v893 = v1495;
            v894 = v1496;
            v895 = v359;
            v896 = v358;
            v897 = v357;
            v898 = v356;
            v899 = v355;
            v900 = v354;
            v901 = v353;
            v902 = v1504;
            v903 = v1505;
            v904 = v1506;
            v905 = v1507;
            v906 = v1508;
            v907 = v1509;
            v908 = v1510;
            v909 = v1511;
            v910 = v1512;
            v911 = v1513;
            v912 = v1514;
            v913 = v1515;
            v914 = v1516;
            v915 = v1517;
            v916 = v1518;
            v917 = v1519;
            v918 = v1520;
            v919 = v1521;
            v920 = v1523;
            v360 = v1503;
            v361 = v1502;
            v362 = v1501;
            v363 = v1500;
            v364 = v1499;
            v365 = v1498;
            v366 = v1497;
            v1770 = v1722;
            v1771 = v1510;
            sub_1B03949FC(&v1770, &v1774, &v1773, &v1772);
            v859 = 0;
            v860 = v1493;
            v861 = v1494;
            v862 = v1495;
            v863 = v1496;
            v864 = v366;
            v865 = v365;
            v866 = v364;
            v867 = v363;
            v868 = v362;
            v869 = v361;
            v870 = v360;
            v871 = v1504;
            v872 = v1505;
            v873 = v1506;
            v874 = v1507;
            v875 = v1508;
            v876 = v1509;
            v877 = v1510;
            v878 = v1511;
            v879 = v1512;
            v880 = v1513;
            v881 = v1514;
            v882 = v1515;
            v883 = v1516;
            v884 = v1517;
            v885 = v1518;
            v886 = v1519;
            v887 = v1520;
            v888 = v1521;
            v889 = v1523;
            v367 = v1503;
            v368 = v1502;
            v369 = v1501;
            v370 = v1500;
            v371 = v1499;
            v372 = v1498;
            v373 = v1497;
            v1770 = v1723;
            v1771 = v1511;
            sub_1B03949FC(&v1770, &v1774, &v1773, &v1772);
            v828 = 0;
            v829 = v1493;
            v830 = v1494;
            v831 = v1495;
            v832 = v1496;
            v833 = v373;
            v834 = v372;
            v835 = v371;
            v836 = v370;
            v837 = v369;
            v838 = v368;
            v839 = v367;
            v840 = v1504;
            v841 = v1505;
            v842 = v1506;
            v843 = v1507;
            v844 = v1508;
            v845 = v1509;
            v846 = v1510;
            v847 = v1511;
            v848 = v1512;
            v849 = v1513;
            v850 = v1514;
            v851 = v1515;
            v852 = v1516;
            v853 = v1517;
            v854 = v1518;
            v855 = v1519;
            v856 = v1520;
            v857 = v1521;
            v858 = v1523;
            v374 = v1503;
            v375 = v1502;
            v376 = v1501;
            v377 = v1500;
            v378 = v1499;
            v379 = v1498;
            v380 = v1497;
            v1770 = v1724;
            v1771 = v1512;
            sub_1B03949FC(&v1770, &v1774, &v1773, &v1772);
            v797 = 0;
            v798 = v1493;
            v799 = v1494;
            v800 = v1495;
            v801 = v1496;
            v802 = v380;
            v803 = v379;
            v804 = v378;
            v805 = v377;
            v806 = v376;
            v807 = v375;
            v808 = v374;
            v809 = v1504;
            v810 = v1505;
            v811 = v1506;
            v812 = v1507;
            v813 = v1508;
            v814 = v1509;
            v815 = v1510;
            v816 = v1511;
            v817 = v1512;
            v818 = v1513;
            v819 = v1514;
            v820 = v1515;
            v821 = v1516;
            v822 = v1517;
            v823 = v1518;
            v824 = v1519;
            v825 = v1520;
            v826 = v1521;
            v827 = v1523;
            v381 = v1503;
            v382 = v1502;
            v383 = v1501;
            v384 = v1500;
            v385 = v1499;
            v386 = v1498;
            v387 = v1497;
            v1770 = v1725;
            v1771 = v1513;
            sub_1B03949FC(&v1770, &v1774, &v1773, &v1772);
            v766 = 0;
            v767 = v1493;
            v768 = v1494;
            v769 = v1495;
            v770 = v1496;
            v771 = v387;
            v772 = v386;
            v773 = v385;
            v774 = v384;
            v775 = v383;
            v776 = v382;
            v777 = v381;
            v778 = v1504;
            v779 = v1505;
            v780 = v1506;
            v781 = v1507;
            v782 = v1508;
            v783 = v1509;
            v784 = v1510;
            v785 = v1511;
            v786 = v1512;
            v787 = v1513;
            v788 = v1514;
            v789 = v1515;
            v790 = v1516;
            v791 = v1517;
            v792 = v1518;
            v793 = v1519;
            v794 = v1520;
            v795 = v1521;
            v796 = v1523;
            v388 = v1503;
            v389 = v1502;
            v390 = v1501;
            v391 = v1500;
            v392 = v1499;
            v393 = v1498;
            v394 = v1497;
            v1770 = v1726;
            v1771 = v1514;
            sub_1B03949FC(&v1770, &v1774, &v1773, &v1772);
            v735 = 0;
            v736 = v1493;
            v737 = v1494;
            v738 = v1495;
            v739 = v1496;
            v740 = v394;
            v741 = v393;
            v742 = v392;
            v743 = v391;
            v744 = v390;
            v745 = v389;
            v746 = v388;
            v747 = v1504;
            v748 = v1505;
            v749 = v1506;
            v750 = v1507;
            v751 = v1508;
            v752 = v1509;
            v753 = v1510;
            v754 = v1511;
            v755 = v1512;
            v756 = v1513;
            v757 = v1514;
            v758 = v1515;
            v759 = v1516;
            v760 = v1517;
            v761 = v1518;
            v762 = v1519;
            v763 = v1520;
            v764 = v1521;
            v765 = v1523;
            v395 = v1503;
            v396 = v1502;
            v397 = v1501;
            v398 = v1500;
            v399 = v1499;
            v400 = v1498;
            v401 = v1497;
            v1770 = v1727;
            v1771 = v1515;
            sub_1B03949FC(&v1770, &v1774, &v1773, &v1772);
            v704 = 0;
            v705 = v1493;
            v706 = v1494;
            v707 = v1495;
            v708 = v1496;
            v709 = v401;
            v710 = v400;
            v711 = v399;
            v712 = v398;
            v713 = v397;
            v714 = v396;
            v715 = v395;
            v716 = v1504;
            v717 = v1505;
            v718 = v1506;
            v719 = v1507;
            v720 = v1508;
            v721 = v1509;
            v722 = v1510;
            v723 = v1511;
            v724 = v1512;
            v725 = v1513;
            v726 = v1514;
            v727 = v1515;
            v728 = v1516;
            v729 = v1517;
            v730 = v1518;
            v731 = v1519;
            v732 = v1520;
            v733 = v1521;
            v734 = v1523;
            v402 = v1503;
            v403 = v1502;
            v404 = v1501;
            v405 = v1500;
            v406 = v1499;
            v407 = v1498;
            v408 = v1497;
            v1770 = v1728;
            v1771 = v1516;
            sub_1B03949FC(&v1770, &v1774, &v1773, &v1772);
            v673 = 0;
            v674 = v1493;
            v675 = v1494;
            v676 = v1495;
            v677 = v1496;
            v678 = v408;
            v679 = v407;
            v680 = v406;
            v681 = v405;
            v682 = v404;
            v683 = v403;
            v684 = v402;
            v685 = v1504;
            v686 = v1505;
            v687 = v1506;
            v688 = v1507;
            v689 = v1508;
            v690 = v1509;
            v691 = v1510;
            v692 = v1511;
            v693 = v1512;
            v694 = v1513;
            v695 = v1514;
            v696 = v1515;
            v697 = v1516;
            v698 = v1517;
            v699 = v1518;
            v700 = v1519;
            v701 = v1520;
            v702 = v1521;
            v703 = v1523;
            v409 = v1503;
            v410 = v1502;
            v411 = v1501;
            v412 = v1500;
            v413 = v1499;
            v414 = v1498;
            v415 = v1497;
            v1770 = v1729;
            v1771 = v1517;
            sub_1B03949FC(&v1770, &v1774, &v1773, &v1772);
            v642 = 0;
            v643 = v1493;
            v644 = v1494;
            v645 = v1495;
            v646 = v1496;
            v647 = v415;
            v648 = v414;
            v649 = v413;
            v650 = v412;
            v651 = v411;
            v652 = v410;
            v653 = v409;
            v654 = v1504;
            v655 = v1505;
            v656 = v1506;
            v657 = v1507;
            v658 = v1508;
            v659 = v1509;
            v660 = v1510;
            v661 = v1511;
            v662 = v1512;
            v663 = v1513;
            v664 = v1514;
            v665 = v1515;
            v666 = v1516;
            v667 = v1517;
            v668 = v1518;
            v669 = v1519;
            v670 = v1520;
            v671 = v1521;
            v672 = v1523;
            v416 = v1503;
            v417 = v1502;
            v418 = v1501;
            v419 = v1500;
            v420 = v1499;
            v421 = v1498;
            v422 = v1497;
            v1770 = v1730;
            v1771 = v1518;
            sub_1B03949FC(&v1770, &v1774, &v1773, &v1772);
            v611 = 0;
            v612 = v1493;
            v613 = v1494;
            v614 = v1495;
            v615 = v1496;
            v616 = v422;
            v617 = v421;
            v618 = v420;
            v619 = v419;
            v620 = v418;
            v621 = v417;
            v622 = v416;
            v623 = v1504;
            v624 = v1505;
            v625 = v1506;
            v626 = v1507;
            v627 = v1508;
            v628 = v1509;
            v629 = v1510;
            v630 = v1511;
            v631 = v1512;
            v632 = v1513;
            v633 = v1514;
            v634 = v1515;
            v635 = v1516;
            v636 = v1517;
            v637 = v1518;
            v638 = v1519;
            v639 = v1520;
            v640 = v1521;
            v641 = v1523;
            v423 = v1503;
            v424 = v1502;
            v425 = v1501;
            v426 = v1500;
            v427 = v1499;
            v428 = v1498;
            v429 = v1497;
            v1770 = v1731;
            v1771 = v1519;
            sub_1B03949FC(&v1770, &v1774, &v1773, &v1772);
            v580 = 0;
            v581 = v1493;
            v582 = v1494;
            v583 = v1495;
            v584 = v1496;
            v585 = v429;
            v586 = v428;
            v587 = v427;
            v588 = v426;
            v589 = v425;
            v590 = v424;
            v591 = v423;
            v592 = v1504;
            v593 = v1505;
            v594 = v1506;
            v595 = v1507;
            v596 = v1508;
            v597 = v1509;
            v598 = v1510;
            v599 = v1511;
            v600 = v1512;
            v601 = v1513;
            v602 = v1514;
            v603 = v1515;
            v604 = v1516;
            v605 = v1517;
            v606 = v1518;
            v607 = v1519;
            v608 = v1520;
            v609 = v1521;
            v610 = v1523;
            v430 = v1503;
            v431 = v1502;
            v432 = v1501;
            v433 = v1500;
            v434 = v1499;
            v435 = v1498;
            v436 = v1497;
            v1770 = v1732;
            v1771 = v1520;
            sub_1B03949FC(&v1770, &v1774, &v1773, &v1772);
            v549 = 0;
            v550 = v1493;
            v551 = v1494;
            v552 = v1495;
            v553 = v1496;
            v554 = v436;
            v555 = v435;
            v556 = v434;
            v557 = v433;
            v558 = v432;
            v559 = v431;
            v560 = v430;
            v561 = v1504;
            v562 = v1505;
            v563 = v1506;
            v564 = v1507;
            v565 = v1508;
            v566 = v1509;
            v567 = v1510;
            v568 = v1511;
            v569 = v1512;
            v570 = v1513;
            v571 = v1514;
            v572 = v1515;
            v573 = v1516;
            v574 = v1517;
            v575 = v1518;
            v576 = v1519;
            v577 = v1520;
            v578 = v1521;
            v579 = v1523;
            v437 = v1503;
            v438 = v1502;
            v439 = v1501;
            v440 = v1500;
            v441 = v1499;
            v442 = v1498;
            v443 = v1497;
            v1770 = v1733;
            v1771 = v1521;
            sub_1B03949FC(&v1770, &v1774, &v1773, &v1772);
            v518 = 0;
            v519 = v1493;
            v520 = v1494;
            v521 = v1495;
            v522 = v1496;
            v523 = v443;
            v524 = v442;
            v525 = v441;
            v526 = v440;
            v527 = v439;
            v528 = v438;
            v529 = v437;
            v530 = v1504;
            v531 = v1505;
            v532 = v1506;
            v533 = v1507;
            v534 = v1508;
            v535 = v1509;
            v536 = v1510;
            v537 = v1511;
            v538 = v1512;
            v539 = v1513;
            v540 = v1514;
            v541 = v1515;
            v542 = v1516;
            v543 = v1517;
            v544 = v1518;
            v545 = v1519;
            v546 = v1520;
            v547 = v1521;
            v548 = v1523;
            v444 = v1503;
            v445 = v1502;
            v446 = v1501;
            v447 = v1500;
            v448 = v1499;
            v449 = v1498;
            v450 = v1497;
            v1770 = v1734;
            v1771 = v1523;
            sub_1B03949FC(&v1770, &v1774, &v1773, &v1772);
            v487 = 0;
            v488 = v1493;
            v489 = v1494;
            v490 = v1495;
            v491 = v1496;
            v492 = v450;
            v493 = v449;
            v494 = v448;
            v495 = v447;
            v496 = v446;
            v497 = v445;
            v498 = v444;
            v499 = v1504;
            v500 = v1505;
            v501 = v1506;
            v502 = v1507;
            v503 = v1508;
            v504 = v1509;
            v505 = v1510;
            v506 = v1511;
            v507 = v1512;
            v508 = v1513;
            v509 = v1514;
            v510 = v1515;
            v511 = v1516;
            v512 = v1517;
            v513 = v1518;
            v514 = v1519;
            v515 = v1520;
            v516 = v1521;
            v517 = v1523;
            _os_log_impl(&dword_1B0389000, v1526, v1527, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Completing user-initiated download request %{public}u for UID %u, QoS '%{public}s' (%{iec-bytes}ld).", v1420, 0x4Bu);
            sub_1B03998A8(v1421, 0, v1419);
            sub_1B03998A8(v1422, 2, MEMORY[0x1E69E7CA0] + 8);
            sub_1B0E45D58();

            v1418 = v487;
          }
        }

        else
        {
          v247 = v1528;

          v1418 = v247;
        }

        v457 = v1418;
        MEMORY[0x1E69E5920](v1526);
        (*(v1737 + 8))(v1740, v1736);
        v456 = v1779;
        v455 = v1779[8];
        MEMORY[0x1E69E5928](v1779[8]);
        sub_1B03B2000(v1625, v1624);
        v454 = sub_1B0E42F18();
        [v455 finishWithResult_];
        MEMORY[0x1E69E5920](v454);
        sub_1B0391D50(v1625, v1624);
        MEMORY[0x1E69E5920](v455);
        sub_1B09907DC(v456);
      }

      sub_1B039E440(v1780);

      sub_1B0391D50(v1625, v1624);
      sub_1B074B764(v1760);
      v453 = 1;
    }
  }

  return v453 & 1;
}

uint64_t sub_1B097D874(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v1764 = v2;
  v1765 = v3;
  v1749 = v4;
  v1750 = v5;
  v1767 = v6;
  v1751 = v7;
  v1752 = v8;
  v1645 = v1;
  v1646 = sub_1B074E050;
  v1647 = sub_1B03F7AE0;
  v1648 = sub_1B0394C30;
  v1649 = sub_1B0394C24;
  v1650 = sub_1B074DFFC;
  v1651 = sub_1B039BA88;
  v1652 = sub_1B039BB94;
  v1653 = sub_1B0394C24;
  v1654 = sub_1B039BBA0;
  v1655 = sub_1B039BC08;
  v1656 = 0x786F626C69616DLL;
  v1657 = sub_1B06BA324;
  v1658 = sub_1B074E0E4;
  v1659 = sub_1B039BCF8;
  v1660 = sub_1B0991554;
  v1661 = sub_1B03B0DF8;
  v1662 = sub_1B07AB020;
  v1663 = sub_1B039BC08;
  v1664 = sub_1B0398F5C;
  v1665 = sub_1B0398F5C;
  v1666 = sub_1B0399178;
  v1667 = sub_1B0398F5C;
  v1668 = sub_1B0398F5C;
  v1669 = sub_1B039BA94;
  v1670 = sub_1B0398F5C;
  v1671 = sub_1B0398F5C;
  v1672 = sub_1B0399178;
  v1673 = sub_1B0398F5C;
  v1674 = sub_1B0398F5C;
  v1675 = sub_1B03991EC;
  v1676 = sub_1B0398F5C;
  v1677 = sub_1B0398F5C;
  v1678 = sub_1B03993BC;
  v1679 = sub_1B0398F5C;
  v1680 = sub_1B0398F5C;
  v1681 = sub_1B039BCEC;
  v1682 = sub_1B0398F5C;
  v1683 = sub_1B0398F5C;
  v1684 = sub_1B0399260;
  v1685 = sub_1B0398F5C;
  v1686 = sub_1B0398F5C;
  v1687 = sub_1B03991EC;
  v1688 = sub_1B074E050;
  v1689 = sub_1B09907C8;
  v1690 = sub_1B03F7AE0;
  v1691 = sub_1B0990E1C;
  v1692 = sub_1B099154C;
  v1693 = sub_1B0394C24;
  v1694 = sub_1B074DFFC;
  v1695 = sub_1B039BA88;
  v1696 = sub_1B0394C24;
  v1697 = sub_1B039BBA0;
  v1698 = sub_1B039BC08;
  v1699 = sub_1B06BA324;
  v1700 = sub_1B074E0E4;
  v1701 = sub_1B039BCF8;
  v1702 = sub_1B09907D0;
  v1703 = sub_1B039BC08;
  v1704 = sub_1B07AB020;
  v1705 = sub_1B039BC08;
  v1706 = sub_1B07AD0A4;
  v1707 = sub_1B039BCF8;
  v1708 = sub_1B0990FCC;
  v1709 = sub_1B039BCF8;
  v1710 = sub_1B0398F5C;
  v1711 = sub_1B0398F5C;
  v1712 = sub_1B0399178;
  v1713 = sub_1B0398F5C;
  v1714 = sub_1B0398F5C;
  v1715 = sub_1B039BA94;
  v1716 = sub_1B0398F5C;
  v1717 = sub_1B0398F5C;
  v1718 = sub_1B0399178;
  v1719 = sub_1B0398F5C;
  v1720 = sub_1B0398F5C;
  v1721 = sub_1B03991EC;
  v1722 = sub_1B0398F5C;
  v1723 = sub_1B0398F5C;
  v1724 = sub_1B03993BC;
  v1725 = sub_1B0398F5C;
  v1726 = sub_1B0398F5C;
  v1727 = sub_1B039BCEC;
  v1728 = sub_1B0398F5C;
  v1729 = sub_1B0398F5C;
  v1730 = sub_1B03991EC;
  v1731 = sub_1B0398F5C;
  v1732 = sub_1B0398F5C;
  v1733 = sub_1B03991EC;
  v1734 = sub_1B0398F5C;
  v1735 = sub_1B0398F5C;
  v1736 = sub_1B039BCEC;
  v1737 = sub_1B0398F5C;
  v1738 = sub_1B0398F5C;
  v1739 = sub_1B039BCEC;
  v1800 = 0;
  v1798 = 0;
  v1799 = 0;
  v1797 = 0;
  v1794 = 0;
  v1795 = 0;
  v1796 = 0;
  v1793 = 0;
  v1792 = 0;
  v1791 = 0;
  v1789 = 0;
  v1788[0] = 0;
  v1788[1] = 0;
  v1740 = 0;
  v1771 = 0;
  v1769 = 0;
  v1766 = 0;
  v1741 = sub_1B0E439A8();
  v1742 = *(v1741 - 8);
  v1743 = v1741 - 8;
  v1744 = (*(v1742 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v1745 = &v457[-v1744];
  v1746 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v1747 = &v457[-v1746];
  v1748 = (*(*(_s6LoggerVMa(v11) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1766);
  v1762 = &v457[-v1748];
  v1753 = _s6LoggerVMa_1(v12);
  v1759 = *(*(v1753 - 8) + 64);
  v1754 = (v1759 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1764);
  v1755 = &v457[-v1754];
  v1756 = (v1759 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v13);
  v1757 = &v457[-v1756];
  v1758 = (v1759 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v14);
  v1760 = &v457[-v1758];
  v1761 = (v1759 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v15);
  v1763 = &v457[-v1761];
  v1800 = &v457[-v1761];
  v1798 = v16;
  v1799 = v17;
  v1797 = v18;
  v1794 = v19;
  v1795 = v20;
  v1796 = v21;
  v1793 = v22;
  v1792 = v1;
  sub_1B0394784(v1 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_logger, v23);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B07B91DC(v1762, v1764, v1765, v1763);
  v1791 = sub_1B0E46A48();
  sub_1B07F200C(v1767);
  if (v1767 > 1)
  {
    v1644 = v1767;
    v1643 = v1767;
    v1769 = v1767;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v1642 = &v1768;
    v1768 = v1643;
    v1641 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26D0, &unk_1B0E9C690);
    sub_1B07AFA50();
    sub_1B0E452D8();
  }

  else
  {
    sub_1B07F2124(v1767);
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (v1751)
  {
    v1640 = v1751;
    v1639 = v1751;
    v1771 = v1751;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v1638 = &v1770;
    v1770 = v1639;
    v1637 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26D0, &unk_1B0E9C690);
    sub_1B07AFA50();
    sub_1B0E452D8();
  }

  v1633 = v1791;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v1632 = &v1790;
  swift_beginAccess();
  v1634 = sub_1B0985850(v1764, v1765, v1749, v1633);
  swift_endAccess();

  v1789 = v1634;
  v1788[2] = v1634;
  v1635 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3308, &qword_1B0EA1100);
  v1636 = sub_1B0990A50();
  if (sub_1B0E45748())
  {

    sub_1B039E440(&v1791);
    sub_1B074B764(v1763);
    v458 = 0;
  }

  else
  {
    if (sub_1B0E452A8() == 1)
    {
      v1543 = v1740;
    }

    else
    {
      (*(v1742 + 16))(v1747, v1763, v1741);
      sub_1B074B69C(v1763, v1760);
      sub_1B074B69C(v1760, v1757);
      sub_1B074E41C(v1760, v1755);
      v24 = &v1757[*(v1753 + 20)];
      v1578 = *v24;
      v1579 = *(v24 + 1);
      v1580 = *(v24 + 1);
      v1581 = *(v24 + 4);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B074B764(v1757);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v1577 = 36;
      v1599 = 7;
      v25 = swift_allocObject();
      v26 = v1579;
      v27 = v1580;
      v28 = v1581;
      v1584 = v25;
      *(v25 + 16) = v1578;
      *(v25 + 20) = v26;
      *(v25 + 24) = v27;
      *(v25 + 32) = v28;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v29 = swift_allocObject();
      v30 = v1579;
      v31 = v1580;
      v32 = v1581;
      v1576 = v29;
      *(v29 + 16) = v1578;
      *(v29 + 20) = v30;
      *(v29 + 24) = v31;
      *(v29 + 32) = v32;

      v1598 = 32;
      v33 = swift_allocObject();
      v34 = v1576;
      v1588 = v33;
      *(v33 + 16) = v1646;
      *(v33 + 24) = v34;
      sub_1B0394868();
      sub_1B0394868();

      v35 = swift_allocObject();
      v36 = v1579;
      v37 = v1580;
      v38 = v1581;
      v39 = v35;
      v40 = v1755;
      v1591 = v39;
      *(v39 + 16) = v1578;
      *(v39 + 20) = v36;
      *(v39 + 24) = v37;
      *(v39 + 32) = v38;
      sub_1B074B764(v40);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v1602 = 24;
      v1594 = swift_allocObject();
      *(v1594 + 16) = v1634;
      v1582 = swift_allocObject();
      *(v1582 + 16) = v1749;

      v41 = swift_allocObject();
      v42 = v1582;
      v1600 = v41;
      *(v41 + 16) = v1647;
      *(v41 + 24) = v42;

      v1630 = sub_1B0E43988();
      v1631 = sub_1B0E45908();
      v1596 = 17;
      v1603 = swift_allocObject();
      v1586 = 16;
      *(v1603 + 16) = 16;
      v1604 = swift_allocObject();
      v1597 = 4;
      *(v1604 + 16) = 4;
      v43 = swift_allocObject();
      v1583 = v43;
      *(v43 + 16) = v1648;
      *(v43 + 24) = 0;
      v44 = swift_allocObject();
      v45 = v1583;
      v1605 = v44;
      *(v44 + 16) = v1649;
      *(v44 + 24) = v45;
      v1606 = swift_allocObject();
      *(v1606 + 16) = 0;
      v1607 = swift_allocObject();
      *(v1607 + 16) = 1;
      v46 = swift_allocObject();
      v47 = v1584;
      v1585 = v46;
      *(v46 + 16) = v1650;
      *(v46 + 24) = v47;
      v48 = swift_allocObject();
      v49 = v1585;
      v1608 = v48;
      *(v48 + 16) = v1651;
      *(v48 + 24) = v49;
      v1609 = swift_allocObject();
      *(v1609 + 16) = v1586;
      v1610 = swift_allocObject();
      *(v1610 + 16) = v1597;
      v50 = swift_allocObject();
      v1587 = v50;
      *(v50 + 16) = v1652;
      *(v50 + 24) = 0;
      v51 = swift_allocObject();
      v52 = v1587;
      v1611 = v51;
      *(v51 + 16) = v1653;
      *(v51 + 24) = v52;
      v1612 = swift_allocObject();
      *(v1612 + 16) = 0;
      v1613 = swift_allocObject();
      *(v1613 + 16) = v1597;
      v53 = swift_allocObject();
      v54 = v1588;
      v1589 = v53;
      *(v53 + 16) = v1654;
      *(v53 + 24) = v54;
      v55 = swift_allocObject();
      v56 = v1589;
      v1614 = v55;
      *(v55 + 16) = v1655;
      *(v55 + 24) = v56;
      v1615 = swift_allocObject();
      *(v1615 + 16) = 112;
      v1616 = swift_allocObject();
      v1593 = 8;
      *(v1616 + 16) = 8;
      v1590 = swift_allocObject();
      *(v1590 + 16) = v1656;
      v57 = swift_allocObject();
      v58 = v1590;
      v1617 = v57;
      *(v57 + 16) = v1657;
      *(v57 + 24) = v58;
      v1618 = swift_allocObject();
      *(v1618 + 16) = 37;
      v1619 = swift_allocObject();
      *(v1619 + 16) = v1593;
      v59 = swift_allocObject();
      v60 = v1591;
      v1592 = v59;
      *(v59 + 16) = v1658;
      *(v59 + 24) = v60;
      v61 = swift_allocObject();
      v62 = v1592;
      v1620 = v61;
      *(v61 + 16) = v1659;
      *(v61 + 24) = v62;
      v1621 = swift_allocObject();
      *(v1621 + 16) = 0;
      v1622 = swift_allocObject();
      *(v1622 + 16) = v1593;
      v63 = swift_allocObject();
      v64 = v1594;
      v1595 = v63;
      *(v63 + 16) = v1660;
      *(v63 + 24) = v64;
      v65 = swift_allocObject();
      v66 = v1595;
      v1623 = v65;
      *(v65 + 16) = v1661;
      *(v65 + 24) = v66;
      v1624 = swift_allocObject();
      *(v1624 + 16) = 0;
      v1625 = swift_allocObject();
      *(v1625 + 16) = v1597;
      v67 = swift_allocObject();
      v68 = v1600;
      v1601 = v67;
      *(v67 + 16) = v1662;
      *(v67 + 24) = v68;
      v69 = swift_allocObject();
      v70 = v1601;
      v1627 = v69;
      *(v69 + 16) = v1663;
      *(v69 + 24) = v70;
      v1629 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v1626 = sub_1B0E46A48();
      v1628 = v71;

      v72 = v1603;
      v73 = v1628;
      *v1628 = v1664;
      v73[1] = v72;

      v74 = v1604;
      v75 = v1628;
      v1628[2] = v1665;
      v75[3] = v74;

      v76 = v1605;
      v77 = v1628;
      v1628[4] = v1666;
      v77[5] = v76;

      v78 = v1606;
      v79 = v1628;
      v1628[6] = v1667;
      v79[7] = v78;

      v80 = v1607;
      v81 = v1628;
      v1628[8] = v1668;
      v81[9] = v80;

      v82 = v1608;
      v83 = v1628;
      v1628[10] = v1669;
      v83[11] = v82;

      v84 = v1609;
      v85 = v1628;
      v1628[12] = v1670;
      v85[13] = v84;

      v86 = v1610;
      v87 = v1628;
      v1628[14] = v1671;
      v87[15] = v86;

      v88 = v1611;
      v89 = v1628;
      v1628[16] = v1672;
      v89[17] = v88;

      v90 = v1612;
      v91 = v1628;
      v1628[18] = v1673;
      v91[19] = v90;

      v92 = v1613;
      v93 = v1628;
      v1628[20] = v1674;
      v93[21] = v92;

      v94 = v1614;
      v95 = v1628;
      v1628[22] = v1675;
      v95[23] = v94;

      v96 = v1615;
      v97 = v1628;
      v1628[24] = v1676;
      v97[25] = v96;

      v98 = v1616;
      v99 = v1628;
      v1628[26] = v1677;
      v99[27] = v98;

      v100 = v1617;
      v101 = v1628;
      v1628[28] = v1678;
      v101[29] = v100;

      v102 = v1618;
      v103 = v1628;
      v1628[30] = v1679;
      v103[31] = v102;

      v104 = v1619;
      v105 = v1628;
      v1628[32] = v1680;
      v105[33] = v104;

      v106 = v1620;
      v107 = v1628;
      v1628[34] = v1681;
      v107[35] = v106;

      v108 = v1621;
      v109 = v1628;
      v1628[36] = v1682;
      v109[37] = v108;

      v110 = v1622;
      v111 = v1628;
      v1628[38] = v1683;
      v111[39] = v110;

      v112 = v1623;
      v113 = v1628;
      v1628[40] = v1684;
      v113[41] = v112;

      v114 = v1624;
      v115 = v1628;
      v1628[42] = v1685;
      v115[43] = v114;

      v116 = v1625;
      v117 = v1628;
      v1628[44] = v1686;
      v117[45] = v116;

      v118 = v1627;
      v119 = v1628;
      v1628[46] = v1687;
      v119[47] = v118;
      sub_1B0394964();

      if (os_log_type_enabled(v1630, v1631))
      {
        v120 = v1740;
        v1569 = sub_1B0E45D78();
        v1568 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v1570 = sub_1B03949A8(0, v1568, v1568);
        v1571 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v1572 = &v1776;
        v1776 = v1569;
        v1573 = &v1775;
        v1775 = v1570;
        v1574 = &v1774;
        v1774 = v1571;
        sub_1B0394A48(3, &v1776);
        sub_1B0394A48(8, v1572);
        v1772 = v1664;
        v1773 = v1603;
        sub_1B03949FC(&v1772, v1572, v1573, v1574);
        v1575 = v120;
        if (v120)
        {

          __break(1u);
        }

        else
        {
          v1772 = v1665;
          v1773 = v1604;
          sub_1B03949FC(&v1772, &v1776, &v1775, &v1774);
          v1566 = 0;
          v1772 = v1666;
          v1773 = v1605;
          sub_1B03949FC(&v1772, &v1776, &v1775, &v1774);
          v1565 = 0;
          v1772 = v1667;
          v1773 = v1606;
          sub_1B03949FC(&v1772, &v1776, &v1775, &v1774);
          v1564 = 0;
          v1772 = v1668;
          v1773 = v1607;
          sub_1B03949FC(&v1772, &v1776, &v1775, &v1774);
          v1563 = 0;
          v1772 = v1669;
          v1773 = v1608;
          sub_1B03949FC(&v1772, &v1776, &v1775, &v1774);
          v1562 = 0;
          v1772 = v1670;
          v1773 = v1609;
          sub_1B03949FC(&v1772, &v1776, &v1775, &v1774);
          v1561 = 0;
          v1772 = v1671;
          v1773 = v1610;
          sub_1B03949FC(&v1772, &v1776, &v1775, &v1774);
          v1560 = 0;
          v1772 = v1672;
          v1773 = v1611;
          sub_1B03949FC(&v1772, &v1776, &v1775, &v1774);
          v1559 = 0;
          v1772 = v1673;
          v1773 = v1612;
          sub_1B03949FC(&v1772, &v1776, &v1775, &v1774);
          v1558 = 0;
          v1772 = v1674;
          v1773 = v1613;
          sub_1B03949FC(&v1772, &v1776, &v1775, &v1774);
          v1557 = 0;
          v1772 = v1675;
          v1773 = v1614;
          sub_1B03949FC(&v1772, &v1776, &v1775, &v1774);
          v1556 = 0;
          v1772 = v1676;
          v1773 = v1615;
          sub_1B03949FC(&v1772, &v1776, &v1775, &v1774);
          v1555 = 0;
          v1772 = v1677;
          v1773 = v1616;
          sub_1B03949FC(&v1772, &v1776, &v1775, &v1774);
          v1554 = 0;
          v1772 = v1678;
          v1773 = v1617;
          sub_1B03949FC(&v1772, &v1776, &v1775, &v1774);
          v1553 = 0;
          v1772 = v1679;
          v1773 = v1618;
          sub_1B03949FC(&v1772, &v1776, &v1775, &v1774);
          v1552 = 0;
          v1772 = v1680;
          v1773 = v1619;
          sub_1B03949FC(&v1772, &v1776, &v1775, &v1774);
          v1551 = 0;
          v1772 = v1681;
          v1773 = v1620;
          sub_1B03949FC(&v1772, &v1776, &v1775, &v1774);
          v1550 = 0;
          v1772 = v1682;
          v1773 = v1621;
          sub_1B03949FC(&v1772, &v1776, &v1775, &v1774);
          v1549 = 0;
          v1772 = v1683;
          v1773 = v1622;
          sub_1B03949FC(&v1772, &v1776, &v1775, &v1774);
          v1548 = 0;
          v1772 = v1684;
          v1773 = v1623;
          sub_1B03949FC(&v1772, &v1776, &v1775, &v1774);
          v1547 = 0;
          v1772 = v1685;
          v1773 = v1624;
          sub_1B03949FC(&v1772, &v1776, &v1775, &v1774);
          v1546 = 0;
          v1772 = v1686;
          v1773 = v1625;
          sub_1B03949FC(&v1772, &v1776, &v1775, &v1774);
          v1545 = 0;
          v1772 = v1687;
          v1773 = v1627;
          sub_1B03949FC(&v1772, &v1776, &v1775, &v1774);
          v1544 = 0;
          _os_log_impl(&dword_1B0389000, v1630, v1631, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Download did complete. Found %ld user-initiated MIME part download request(s) for UID %u.", v1569, 0x3Bu);
          sub_1B03998A8(v1570, 0, v1568);
          sub_1B03998A8(v1571, 1, MEMORY[0x1E69E7CA0] + 8);
          sub_1B0E45D58();

          v1567 = v1544;
        }
      }

      else
      {
        v121 = v1740;

        v1567 = v121;
      }

      v1542 = v1567;
      MEMORY[0x1E69E5920](v1630);
      (*(v1742 + 8))(v1747, v1741);
      v1543 = v1542;
    }

    v1540 = v1543;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v1787[15] = v1634;
    sub_1B0E45798();
    for (i = v1540; ; i = v463)
    {
      v1536 = i;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3310, qword_1B0EA1108);
      v1537 = &v1785;
      sub_1B0E46518();
      v1538 = v1786;
      v1539 = 120;
      memcpy(v1786, v1537, sizeof(v1786));
      memcpy(v1787, v1786, 0x78uLL);
      if (!v1787[3])
      {
        break;
      }

      v1472 = v1787;
      v1474 = __dst;
      v1475 = 120;
      memcpy(__dst, v1787, 0x78uLL);
      (*(v1742 + 16))(v1745, v1763, v1741);
      sub_1B074B69C(v1763, v1760);
      sub_1B074B69C(v1760, v1757);
      sub_1B074E41C(v1760, v1755);
      v122 = &v1757[*(v1753 + 20)];
      v1465 = *v122;
      v1466 = *(v122 + 1);
      v1467 = *(v122 + 1);
      v1468 = *(v122 + 4);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B074B764(v1757);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v1464 = 36;
      v1498 = 7;
      v123 = swift_allocObject();
      v124 = v1466;
      v125 = v1467;
      v126 = v1468;
      v1478 = v123;
      *(v123 + 16) = v1465;
      *(v123 + 20) = v124;
      *(v123 + 24) = v125;
      *(v123 + 32) = v126;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v127 = swift_allocObject();
      v128 = v1466;
      v129 = v1467;
      v130 = v1468;
      v1463 = v127;
      *(v127 + 16) = v1465;
      *(v127 + 20) = v128;
      *(v127 + 24) = v129;
      *(v127 + 32) = v130;

      v1497 = 32;
      v131 = swift_allocObject();
      v132 = v1463;
      v1482 = v131;
      *(v131 + 16) = v1688;
      *(v131 + 24) = v132;
      sub_1B0394868();
      sub_1B0394868();

      v133 = swift_allocObject();
      v134 = v1466;
      v135 = v1467;
      v136 = v1468;
      v137 = v133;
      v138 = v1755;
      v1485 = v137;
      *(v137 + 16) = v1465;
      *(v137 + 20) = v134;
      *(v137 + 24) = v135;
      *(v137 + 32) = v136;
      sub_1B074B764(v138);
      sub_1B0990C1C(v1472, &v1784);
      v1473 = 136;
      v1469 = swift_allocObject();
      memcpy((v1469 + 16), v1474, v1475);

      v139 = swift_allocObject();
      v140 = v1469;
      v1487 = v139;
      *(v139 + 16) = v1689;
      *(v139 + 24) = v140;

      v1470 = swift_allocObject();
      *(v1470 + 16) = v1749;

      v141 = swift_allocObject();
      v142 = v1470;
      v1490 = v141;
      *(v141 + 16) = v1690;
      *(v141 + 24) = v142;

      sub_1B0990C1C(v1472, &v1783);
      v1471 = swift_allocObject();
      memcpy((v1471 + 16), v1474, v1475);

      v143 = swift_allocObject();
      v144 = v1471;
      v1492 = v143;
      *(v143 + 16) = v1691;
      *(v143 + 24) = v144;

      sub_1B0990C1C(v1472, &v1782);
      v1476 = swift_allocObject();
      memcpy((v1476 + 16), v1474, v1475);

      v145 = swift_allocObject();
      v146 = v1476;
      v1499 = v145;
      *(v145 + 16) = v1692;
      *(v145 + 24) = v146;

      v1534 = sub_1B0E43988();
      v1535 = sub_1B0E45908();
      v1495 = 17;
      v1501 = swift_allocObject();
      v1480 = 16;
      *(v1501 + 16) = 16;
      v1502 = swift_allocObject();
      v1489 = 4;
      *(v1502 + 16) = 4;
      v147 = swift_allocObject();
      v1477 = v147;
      *(v147 + 16) = v1648;
      *(v147 + 24) = 0;
      v148 = swift_allocObject();
      v149 = v1477;
      v1503 = v148;
      *(v148 + 16) = v1693;
      *(v148 + 24) = v149;
      v1504 = swift_allocObject();
      *(v1504 + 16) = 0;
      v1505 = swift_allocObject();
      *(v1505 + 16) = 1;
      v150 = swift_allocObject();
      v151 = v1478;
      v1479 = v150;
      *(v150 + 16) = v1694;
      *(v150 + 24) = v151;
      v152 = swift_allocObject();
      v153 = v1479;
      v1506 = v152;
      *(v152 + 16) = v1695;
      *(v152 + 24) = v153;
      v1507 = swift_allocObject();
      *(v1507 + 16) = v1480;
      v1508 = swift_allocObject();
      *(v1508 + 16) = v1489;
      v154 = swift_allocObject();
      v1481 = v154;
      *(v154 + 16) = v1652;
      *(v154 + 24) = 0;
      v155 = swift_allocObject();
      v156 = v1481;
      v1509 = v155;
      *(v155 + 16) = v1696;
      *(v155 + 24) = v156;
      v1510 = swift_allocObject();
      *(v1510 + 16) = 0;
      v1511 = swift_allocObject();
      *(v1511 + 16) = v1489;
      v157 = swift_allocObject();
      v158 = v1482;
      v1483 = v157;
      *(v157 + 16) = v1697;
      *(v157 + 24) = v158;
      v159 = swift_allocObject();
      v160 = v1483;
      v1512 = v159;
      *(v159 + 16) = v1698;
      *(v159 + 24) = v160;
      v1513 = swift_allocObject();
      *(v1513 + 16) = 112;
      v1514 = swift_allocObject();
      v1496 = 8;
      *(v1514 + 16) = 8;
      v1484 = swift_allocObject();
      *(v1484 + 16) = v1656;
      v161 = swift_allocObject();
      v162 = v1484;
      v1515 = v161;
      *(v161 + 16) = v1699;
      *(v161 + 24) = v162;
      v1516 = swift_allocObject();
      *(v1516 + 16) = 37;
      v1517 = swift_allocObject();
      *(v1517 + 16) = v1496;
      v163 = swift_allocObject();
      v164 = v1485;
      v1486 = v163;
      *(v163 + 16) = v1700;
      *(v163 + 24) = v164;
      v165 = swift_allocObject();
      v166 = v1486;
      v1518 = v165;
      *(v165 + 16) = v1701;
      *(v165 + 24) = v166;
      v1519 = swift_allocObject();
      *(v1519 + 16) = 2;
      v1520 = swift_allocObject();
      *(v1520 + 16) = v1489;
      v167 = swift_allocObject();
      v168 = v1487;
      v1488 = v167;
      *(v167 + 16) = v1702;
      *(v167 + 24) = v168;
      v169 = swift_allocObject();
      v170 = v1488;
      v1521 = v169;
      *(v169 + 16) = v1703;
      *(v169 + 24) = v170;
      v1522 = swift_allocObject();
      *(v1522 + 16) = 0;
      v1523 = swift_allocObject();
      *(v1523 + 16) = v1489;
      v171 = swift_allocObject();
      v172 = v1490;
      v1491 = v171;
      *(v171 + 16) = v1704;
      *(v171 + 24) = v172;
      v173 = swift_allocObject();
      v174 = v1491;
      v1524 = v173;
      *(v173 + 16) = v1705;
      *(v173 + 24) = v174;
      v1525 = swift_allocObject();
      v1494 = 34;
      *(v1525 + 16) = 34;
      v1526 = swift_allocObject();
      *(v1526 + 16) = v1496;
      v175 = swift_allocObject();
      v176 = v1492;
      v1493 = v175;
      *(v175 + 16) = v1706;
      *(v175 + 24) = v176;
      v177 = swift_allocObject();
      v178 = v1493;
      v1527 = v177;
      *(v177 + 16) = v1707;
      *(v177 + 24) = v178;
      v1528 = swift_allocObject();
      *(v1528 + 16) = v1494;
      v1529 = swift_allocObject();
      *(v1529 + 16) = v1496;
      v179 = swift_allocObject();
      v180 = v1499;
      v1500 = v179;
      *(v179 + 16) = v1708;
      *(v179 + 24) = v180;
      v181 = swift_allocObject();
      v182 = v1500;
      v1531 = v181;
      *(v181 + 16) = v1709;
      *(v181 + 24) = v182;
      v1533 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v1530 = sub_1B0E46A48();
      v1532 = v183;

      v184 = v1501;
      v185 = v1532;
      *v1532 = v1710;
      v185[1] = v184;

      v186 = v1502;
      v187 = v1532;
      v1532[2] = v1711;
      v187[3] = v186;

      v188 = v1503;
      v189 = v1532;
      v1532[4] = v1712;
      v189[5] = v188;

      v190 = v1504;
      v191 = v1532;
      v1532[6] = v1713;
      v191[7] = v190;

      v192 = v1505;
      v193 = v1532;
      v1532[8] = v1714;
      v193[9] = v192;

      v194 = v1506;
      v195 = v1532;
      v1532[10] = v1715;
      v195[11] = v194;

      v196 = v1507;
      v197 = v1532;
      v1532[12] = v1716;
      v197[13] = v196;

      v198 = v1508;
      v199 = v1532;
      v1532[14] = v1717;
      v199[15] = v198;

      v200 = v1509;
      v201 = v1532;
      v1532[16] = v1718;
      v201[17] = v200;

      v202 = v1510;
      v203 = v1532;
      v1532[18] = v1719;
      v203[19] = v202;

      v204 = v1511;
      v205 = v1532;
      v1532[20] = v1720;
      v205[21] = v204;

      v206 = v1512;
      v207 = v1532;
      v1532[22] = v1721;
      v207[23] = v206;

      v208 = v1513;
      v209 = v1532;
      v1532[24] = v1722;
      v209[25] = v208;

      v210 = v1514;
      v211 = v1532;
      v1532[26] = v1723;
      v211[27] = v210;

      v212 = v1515;
      v213 = v1532;
      v1532[28] = v1724;
      v213[29] = v212;

      v214 = v1516;
      v215 = v1532;
      v1532[30] = v1725;
      v215[31] = v214;

      v216 = v1517;
      v217 = v1532;
      v1532[32] = v1726;
      v217[33] = v216;

      v218 = v1518;
      v219 = v1532;
      v1532[34] = v1727;
      v219[35] = v218;

      v220 = v1519;
      v221 = v1532;
      v1532[36] = v1728;
      v221[37] = v220;

      v222 = v1520;
      v223 = v1532;
      v1532[38] = v1729;
      v223[39] = v222;

      v224 = v1521;
      v225 = v1532;
      v1532[40] = v1730;
      v225[41] = v224;

      v226 = v1522;
      v227 = v1532;
      v1532[42] = v1731;
      v227[43] = v226;

      v228 = v1523;
      v229 = v1532;
      v1532[44] = v1732;
      v229[45] = v228;

      v230 = v1524;
      v231 = v1532;
      v1532[46] = v1733;
      v231[47] = v230;

      v232 = v1525;
      v233 = v1532;
      v1532[48] = v1734;
      v233[49] = v232;

      v234 = v1526;
      v235 = v1532;
      v1532[50] = v1735;
      v235[51] = v234;

      v236 = v1527;
      v237 = v1532;
      v1532[52] = v1736;
      v237[53] = v236;

      v238 = v1528;
      v239 = v1532;
      v1532[54] = v1737;
      v239[55] = v238;

      v240 = v1529;
      v241 = v1532;
      v1532[56] = v1738;
      v241[57] = v240;

      v242 = v1531;
      v243 = v1532;
      v1532[58] = v1739;
      v243[59] = v242;
      sub_1B0394964();

      if (os_log_type_enabled(v1534, v1535))
      {
        v244 = v1511;
        v245 = v1510;
        v246 = v1509;
        v247 = v1508;
        v248 = v1507;
        v249 = v1506;
        v250 = v1505;
        v251 = v1536;
        v1426 = sub_1B0E45D78();
        v1425 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v1427 = sub_1B03949A8(0, v1425, v1425);
        v1428 = sub_1B03949A8(3, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v1429 = &v1781;
        v1781 = v1426;
        v1430 = &v1780;
        v1780 = v1427;
        v1431 = &v1779;
        v1779 = v1428;
        sub_1B0394A48(3, &v1781);
        sub_1B0394A48(10, v1429);
        v1777 = v1710;
        v1778 = v1501;
        sub_1B03949FC(&v1777, v1429, v1430, v1431);
        v1432 = v251;
        v1433 = v1501;
        v1434 = v1502;
        v1435 = v1503;
        v1436 = v1504;
        v1437 = v250;
        v1438 = v249;
        v1439 = v248;
        v1440 = v247;
        v1441 = v246;
        v1442 = v245;
        v1443 = v244;
        v1444 = v1512;
        v1445 = v1513;
        v1446 = v1514;
        v1447 = v1515;
        v1448 = v1516;
        v1449 = v1517;
        v1450 = v1518;
        v1451 = v1519;
        v1452 = v1520;
        v1453 = v1521;
        v1454 = v1522;
        v1455 = v1523;
        v1456 = v1524;
        v1457 = v1525;
        v1458 = v1526;
        v1459 = v1527;
        v1460 = v1528;
        v1461 = v1529;
        v1462 = v1531;
        if (v251)
        {
          v1395 = v1462;
          v1393 = v1434;
          v1392 = v1433;
          v1394 = v1434;
          v1396 = v1435;
          v1397 = v1436;
          v1398 = v1437;
          v1399 = v1438;
          v1400 = v1439;
          v1401 = v1440;
          v1402 = v1441;
          v1403 = v1442;
          v1404 = v1443;
          v1405 = v1444;
          v1406 = v1445;
          v1407 = v1446;
          v1408 = v1447;
          v1409 = v1448;
          v1410 = v1449;
          v1411 = v1450;
          v1412 = v1451;
          v1413 = v1452;
          v1414 = v1453;
          v1415 = v1454;
          v1416 = v1455;
          v1417 = v1456;
          v1418 = v1457;
          v1419 = v1458;
          v1420 = v1459;
          v1421 = v1460;
          v1422 = v1461;
          v1423 = v1462;
          v492 = v1462;
          v491 = v1461;
          v490 = v1460;
          v489 = v1459;
          v488 = v1458;
          v487 = v1457;
          v486 = v1456;
          v485 = v1455;
          v484 = v1454;
          v483 = v1453;
          v482 = v1452;
          v481 = v1451;
          v480 = v1450;
          v479 = v1449;
          v478 = v1448;
          v477 = v1447;
          v476 = v1446;
          v475 = v1445;
          v474 = v1444;
          v473 = v1443;
          v472 = v1442;
          v471 = v1441;
          v470 = v1440;
          v469 = v1439;
          v468 = v1438;
          v467 = v1437;
          v466 = v1436;
          v465 = v1435;
          v464 = v1434;

          __break(1u);
        }

        else
        {
          v253 = v1511;
          v254 = v1510;
          v255 = v1509;
          v256 = v1508;
          v257 = v1507;
          v258 = v1506;
          v259 = v1505;
          v1777 = v1711;
          v1778 = v1502;
          sub_1B03949FC(&v1777, &v1781, &v1780, &v1779);
          v1361 = 0;
          v1362 = v1501;
          v1363 = v1502;
          v1364 = v1503;
          v1365 = v1504;
          v1366 = v259;
          v1367 = v258;
          v1368 = v257;
          v1369 = v256;
          v1370 = v255;
          v1371 = v254;
          v1372 = v253;
          v1373 = v1512;
          v1374 = v1513;
          v1375 = v1514;
          v1376 = v1515;
          v1377 = v1516;
          v1378 = v1517;
          v1379 = v1518;
          v1380 = v1519;
          v1381 = v1520;
          v1382 = v1521;
          v1383 = v1522;
          v1384 = v1523;
          v1385 = v1524;
          v1386 = v1525;
          v1387 = v1526;
          v1388 = v1527;
          v1389 = v1528;
          v1390 = v1529;
          v1391 = v1531;
          v260 = v1511;
          v261 = v1510;
          v262 = v1509;
          v263 = v1508;
          v264 = v1507;
          v265 = v1506;
          v266 = v1505;
          v1777 = v1712;
          v1778 = v1503;
          sub_1B03949FC(&v1777, &v1781, &v1780, &v1779);
          v1330 = 0;
          v1331 = v1501;
          v1332 = v1502;
          v1333 = v1503;
          v1334 = v1504;
          v1335 = v266;
          v1336 = v265;
          v1337 = v264;
          v1338 = v263;
          v1339 = v262;
          v1340 = v261;
          v1341 = v260;
          v1342 = v1512;
          v1343 = v1513;
          v1344 = v1514;
          v1345 = v1515;
          v1346 = v1516;
          v1347 = v1517;
          v1348 = v1518;
          v1349 = v1519;
          v1350 = v1520;
          v1351 = v1521;
          v1352 = v1522;
          v1353 = v1523;
          v1354 = v1524;
          v1355 = v1525;
          v1356 = v1526;
          v1357 = v1527;
          v1358 = v1528;
          v1359 = v1529;
          v1360 = v1531;
          v267 = v1511;
          v268 = v1510;
          v269 = v1509;
          v270 = v1508;
          v271 = v1507;
          v272 = v1506;
          v273 = v1505;
          v1777 = v1713;
          v1778 = v1504;
          sub_1B03949FC(&v1777, &v1781, &v1780, &v1779);
          v1299 = 0;
          v1300 = v1501;
          v1301 = v1502;
          v1302 = v1503;
          v1303 = v1504;
          v1304 = v273;
          v1305 = v272;
          v1306 = v271;
          v1307 = v270;
          v1308 = v269;
          v1309 = v268;
          v1310 = v267;
          v1311 = v1512;
          v1312 = v1513;
          v1313 = v1514;
          v1314 = v1515;
          v1315 = v1516;
          v1316 = v1517;
          v1317 = v1518;
          v1318 = v1519;
          v1319 = v1520;
          v1320 = v1521;
          v1321 = v1522;
          v1322 = v1523;
          v1323 = v1524;
          v1324 = v1525;
          v1325 = v1526;
          v1326 = v1527;
          v1327 = v1528;
          v1328 = v1529;
          v1329 = v1531;
          v274 = v1511;
          v275 = v1510;
          v276 = v1509;
          v277 = v1508;
          v278 = v1507;
          v279 = v1506;
          v280 = v1505;
          v1777 = v1714;
          v1778 = v1505;
          sub_1B03949FC(&v1777, &v1781, &v1780, &v1779);
          v1268 = 0;
          v1269 = v1501;
          v1270 = v1502;
          v1271 = v1503;
          v1272 = v1504;
          v1273 = v280;
          v1274 = v279;
          v1275 = v278;
          v1276 = v277;
          v1277 = v276;
          v1278 = v275;
          v1279 = v274;
          v1280 = v1512;
          v1281 = v1513;
          v1282 = v1514;
          v1283 = v1515;
          v1284 = v1516;
          v1285 = v1517;
          v1286 = v1518;
          v1287 = v1519;
          v1288 = v1520;
          v1289 = v1521;
          v1290 = v1522;
          v1291 = v1523;
          v1292 = v1524;
          v1293 = v1525;
          v1294 = v1526;
          v1295 = v1527;
          v1296 = v1528;
          v1297 = v1529;
          v1298 = v1531;
          v281 = v1511;
          v282 = v1510;
          v283 = v1509;
          v284 = v1508;
          v285 = v1507;
          v286 = v1506;
          v287 = v1505;
          v1777 = v1715;
          v1778 = v1506;
          sub_1B03949FC(&v1777, &v1781, &v1780, &v1779);
          v1237 = 0;
          v1238 = v1501;
          v1239 = v1502;
          v1240 = v1503;
          v1241 = v1504;
          v1242 = v287;
          v1243 = v286;
          v1244 = v285;
          v1245 = v284;
          v1246 = v283;
          v1247 = v282;
          v1248 = v281;
          v1249 = v1512;
          v1250 = v1513;
          v1251 = v1514;
          v1252 = v1515;
          v1253 = v1516;
          v1254 = v1517;
          v1255 = v1518;
          v1256 = v1519;
          v1257 = v1520;
          v1258 = v1521;
          v1259 = v1522;
          v1260 = v1523;
          v1261 = v1524;
          v1262 = v1525;
          v1263 = v1526;
          v1264 = v1527;
          v1265 = v1528;
          v1266 = v1529;
          v1267 = v1531;
          v288 = v1511;
          v289 = v1510;
          v290 = v1509;
          v291 = v1508;
          v292 = v1507;
          v293 = v1506;
          v294 = v1505;
          v1777 = v1716;
          v1778 = v1507;
          sub_1B03949FC(&v1777, &v1781, &v1780, &v1779);
          v1206 = 0;
          v1207 = v1501;
          v1208 = v1502;
          v1209 = v1503;
          v1210 = v1504;
          v1211 = v294;
          v1212 = v293;
          v1213 = v292;
          v1214 = v291;
          v1215 = v290;
          v1216 = v289;
          v1217 = v288;
          v1218 = v1512;
          v1219 = v1513;
          v1220 = v1514;
          v1221 = v1515;
          v1222 = v1516;
          v1223 = v1517;
          v1224 = v1518;
          v1225 = v1519;
          v1226 = v1520;
          v1227 = v1521;
          v1228 = v1522;
          v1229 = v1523;
          v1230 = v1524;
          v1231 = v1525;
          v1232 = v1526;
          v1233 = v1527;
          v1234 = v1528;
          v1235 = v1529;
          v1236 = v1531;
          v295 = v1511;
          v296 = v1510;
          v297 = v1509;
          v298 = v1508;
          v299 = v1507;
          v300 = v1506;
          v301 = v1505;
          v1777 = v1717;
          v1778 = v1508;
          sub_1B03949FC(&v1777, &v1781, &v1780, &v1779);
          v1175 = 0;
          v1176 = v1501;
          v1177 = v1502;
          v1178 = v1503;
          v1179 = v1504;
          v1180 = v301;
          v1181 = v300;
          v1182 = v299;
          v1183 = v298;
          v1184 = v297;
          v1185 = v296;
          v1186 = v295;
          v1187 = v1512;
          v1188 = v1513;
          v1189 = v1514;
          v1190 = v1515;
          v1191 = v1516;
          v1192 = v1517;
          v1193 = v1518;
          v1194 = v1519;
          v1195 = v1520;
          v1196 = v1521;
          v1197 = v1522;
          v1198 = v1523;
          v1199 = v1524;
          v1200 = v1525;
          v1201 = v1526;
          v1202 = v1527;
          v1203 = v1528;
          v1204 = v1529;
          v1205 = v1531;
          v302 = v1511;
          v303 = v1510;
          v304 = v1509;
          v305 = v1508;
          v306 = v1507;
          v307 = v1506;
          v308 = v1505;
          v1777 = v1718;
          v1778 = v1509;
          sub_1B03949FC(&v1777, &v1781, &v1780, &v1779);
          v1144 = 0;
          v1145 = v1501;
          v1146 = v1502;
          v1147 = v1503;
          v1148 = v1504;
          v1149 = v308;
          v1150 = v307;
          v1151 = v306;
          v1152 = v305;
          v1153 = v304;
          v1154 = v303;
          v1155 = v302;
          v1156 = v1512;
          v1157 = v1513;
          v1158 = v1514;
          v1159 = v1515;
          v1160 = v1516;
          v1161 = v1517;
          v1162 = v1518;
          v1163 = v1519;
          v1164 = v1520;
          v1165 = v1521;
          v1166 = v1522;
          v1167 = v1523;
          v1168 = v1524;
          v1169 = v1525;
          v1170 = v1526;
          v1171 = v1527;
          v1172 = v1528;
          v1173 = v1529;
          v1174 = v1531;
          v309 = v1511;
          v310 = v1510;
          v311 = v1509;
          v312 = v1508;
          v313 = v1507;
          v314 = v1506;
          v315 = v1505;
          v1777 = v1719;
          v1778 = v1510;
          sub_1B03949FC(&v1777, &v1781, &v1780, &v1779);
          v1113 = 0;
          v1114 = v1501;
          v1115 = v1502;
          v1116 = v1503;
          v1117 = v1504;
          v1118 = v315;
          v1119 = v314;
          v1120 = v313;
          v1121 = v312;
          v1122 = v311;
          v1123 = v310;
          v1124 = v309;
          v1125 = v1512;
          v1126 = v1513;
          v1127 = v1514;
          v1128 = v1515;
          v1129 = v1516;
          v1130 = v1517;
          v1131 = v1518;
          v1132 = v1519;
          v1133 = v1520;
          v1134 = v1521;
          v1135 = v1522;
          v1136 = v1523;
          v1137 = v1524;
          v1138 = v1525;
          v1139 = v1526;
          v1140 = v1527;
          v1141 = v1528;
          v1142 = v1529;
          v1143 = v1531;
          v316 = v1511;
          v317 = v1510;
          v318 = v1509;
          v319 = v1508;
          v320 = v1507;
          v321 = v1506;
          v322 = v1505;
          v1777 = v1720;
          v1778 = v1511;
          sub_1B03949FC(&v1777, &v1781, &v1780, &v1779);
          v1082 = 0;
          v1083 = v1501;
          v1084 = v1502;
          v1085 = v1503;
          v1086 = v1504;
          v1087 = v322;
          v1088 = v321;
          v1089 = v320;
          v1090 = v319;
          v1091 = v318;
          v1092 = v317;
          v1093 = v316;
          v1094 = v1512;
          v1095 = v1513;
          v1096 = v1514;
          v1097 = v1515;
          v1098 = v1516;
          v1099 = v1517;
          v1100 = v1518;
          v1101 = v1519;
          v1102 = v1520;
          v1103 = v1521;
          v1104 = v1522;
          v1105 = v1523;
          v1106 = v1524;
          v1107 = v1525;
          v1108 = v1526;
          v1109 = v1527;
          v1110 = v1528;
          v1111 = v1529;
          v1112 = v1531;
          v323 = v1511;
          v324 = v1510;
          v325 = v1509;
          v326 = v1508;
          v327 = v1507;
          v328 = v1506;
          v329 = v1505;
          v1777 = v1721;
          v1778 = v1512;
          sub_1B03949FC(&v1777, &v1781, &v1780, &v1779);
          v1051 = 0;
          v1052 = v1501;
          v1053 = v1502;
          v1054 = v1503;
          v1055 = v1504;
          v1056 = v329;
          v1057 = v328;
          v1058 = v327;
          v1059 = v326;
          v1060 = v325;
          v1061 = v324;
          v1062 = v323;
          v1063 = v1512;
          v1064 = v1513;
          v1065 = v1514;
          v1066 = v1515;
          v1067 = v1516;
          v1068 = v1517;
          v1069 = v1518;
          v1070 = v1519;
          v1071 = v1520;
          v1072 = v1521;
          v1073 = v1522;
          v1074 = v1523;
          v1075 = v1524;
          v1076 = v1525;
          v1077 = v1526;
          v1078 = v1527;
          v1079 = v1528;
          v1080 = v1529;
          v1081 = v1531;
          v330 = v1511;
          v331 = v1510;
          v332 = v1509;
          v333 = v1508;
          v334 = v1507;
          v335 = v1506;
          v336 = v1505;
          v1777 = v1722;
          v1778 = v1513;
          sub_1B03949FC(&v1777, &v1781, &v1780, &v1779);
          v1020 = 0;
          v1021 = v1501;
          v1022 = v1502;
          v1023 = v1503;
          v1024 = v1504;
          v1025 = v336;
          v1026 = v335;
          v1027 = v334;
          v1028 = v333;
          v1029 = v332;
          v1030 = v331;
          v1031 = v330;
          v1032 = v1512;
          v1033 = v1513;
          v1034 = v1514;
          v1035 = v1515;
          v1036 = v1516;
          v1037 = v1517;
          v1038 = v1518;
          v1039 = v1519;
          v1040 = v1520;
          v1041 = v1521;
          v1042 = v1522;
          v1043 = v1523;
          v1044 = v1524;
          v1045 = v1525;
          v1046 = v1526;
          v1047 = v1527;
          v1048 = v1528;
          v1049 = v1529;
          v1050 = v1531;
          v337 = v1511;
          v338 = v1510;
          v339 = v1509;
          v340 = v1508;
          v341 = v1507;
          v342 = v1506;
          v343 = v1505;
          v1777 = v1723;
          v1778 = v1514;
          sub_1B03949FC(&v1777, &v1781, &v1780, &v1779);
          v989 = 0;
          v990 = v1501;
          v991 = v1502;
          v992 = v1503;
          v993 = v1504;
          v994 = v343;
          v995 = v342;
          v996 = v341;
          v997 = v340;
          v998 = v339;
          v999 = v338;
          v1000 = v337;
          v1001 = v1512;
          v1002 = v1513;
          v1003 = v1514;
          v1004 = v1515;
          v1005 = v1516;
          v1006 = v1517;
          v1007 = v1518;
          v1008 = v1519;
          v1009 = v1520;
          v1010 = v1521;
          v1011 = v1522;
          v1012 = v1523;
          v1013 = v1524;
          v1014 = v1525;
          v1015 = v1526;
          v1016 = v1527;
          v1017 = v1528;
          v1018 = v1529;
          v1019 = v1531;
          v344 = v1511;
          v345 = v1510;
          v346 = v1509;
          v347 = v1508;
          v348 = v1507;
          v349 = v1506;
          v350 = v1505;
          v1777 = v1724;
          v1778 = v1515;
          sub_1B03949FC(&v1777, &v1781, &v1780, &v1779);
          v958 = 0;
          v959 = v1501;
          v960 = v1502;
          v961 = v1503;
          v962 = v1504;
          v963 = v350;
          v964 = v349;
          v965 = v348;
          v966 = v347;
          v967 = v346;
          v968 = v345;
          v969 = v344;
          v970 = v1512;
          v971 = v1513;
          v972 = v1514;
          v973 = v1515;
          v974 = v1516;
          v975 = v1517;
          v976 = v1518;
          v977 = v1519;
          v978 = v1520;
          v979 = v1521;
          v980 = v1522;
          v981 = v1523;
          v982 = v1524;
          v983 = v1525;
          v984 = v1526;
          v985 = v1527;
          v986 = v1528;
          v987 = v1529;
          v988 = v1531;
          v351 = v1511;
          v352 = v1510;
          v353 = v1509;
          v354 = v1508;
          v355 = v1507;
          v356 = v1506;
          v357 = v1505;
          v1777 = v1725;
          v1778 = v1516;
          sub_1B03949FC(&v1777, &v1781, &v1780, &v1779);
          v927 = 0;
          v928 = v1501;
          v929 = v1502;
          v930 = v1503;
          v931 = v1504;
          v932 = v357;
          v933 = v356;
          v934 = v355;
          v935 = v354;
          v936 = v353;
          v937 = v352;
          v938 = v351;
          v939 = v1512;
          v940 = v1513;
          v941 = v1514;
          v942 = v1515;
          v943 = v1516;
          v944 = v1517;
          v945 = v1518;
          v946 = v1519;
          v947 = v1520;
          v948 = v1521;
          v949 = v1522;
          v950 = v1523;
          v951 = v1524;
          v952 = v1525;
          v953 = v1526;
          v954 = v1527;
          v955 = v1528;
          v956 = v1529;
          v957 = v1531;
          v358 = v1511;
          v359 = v1510;
          v360 = v1509;
          v361 = v1508;
          v362 = v1507;
          v363 = v1506;
          v364 = v1505;
          v1777 = v1726;
          v1778 = v1517;
          sub_1B03949FC(&v1777, &v1781, &v1780, &v1779);
          v896 = 0;
          v897 = v1501;
          v898 = v1502;
          v899 = v1503;
          v900 = v1504;
          v901 = v364;
          v902 = v363;
          v903 = v362;
          v904 = v361;
          v905 = v360;
          v906 = v359;
          v907 = v358;
          v908 = v1512;
          v909 = v1513;
          v910 = v1514;
          v911 = v1515;
          v912 = v1516;
          v913 = v1517;
          v914 = v1518;
          v915 = v1519;
          v916 = v1520;
          v917 = v1521;
          v918 = v1522;
          v919 = v1523;
          v920 = v1524;
          v921 = v1525;
          v922 = v1526;
          v923 = v1527;
          v924 = v1528;
          v925 = v1529;
          v926 = v1531;
          v365 = v1511;
          v366 = v1510;
          v367 = v1509;
          v368 = v1508;
          v369 = v1507;
          v370 = v1506;
          v371 = v1505;
          v1777 = v1727;
          v1778 = v1518;
          sub_1B03949FC(&v1777, &v1781, &v1780, &v1779);
          v865 = 0;
          v866 = v1501;
          v867 = v1502;
          v868 = v1503;
          v869 = v1504;
          v870 = v371;
          v871 = v370;
          v872 = v369;
          v873 = v368;
          v874 = v367;
          v875 = v366;
          v876 = v365;
          v877 = v1512;
          v878 = v1513;
          v879 = v1514;
          v880 = v1515;
          v881 = v1516;
          v882 = v1517;
          v883 = v1518;
          v884 = v1519;
          v885 = v1520;
          v886 = v1521;
          v887 = v1522;
          v888 = v1523;
          v889 = v1524;
          v890 = v1525;
          v891 = v1526;
          v892 = v1527;
          v893 = v1528;
          v894 = v1529;
          v895 = v1531;
          v372 = v1511;
          v373 = v1510;
          v374 = v1509;
          v375 = v1508;
          v376 = v1507;
          v377 = v1506;
          v378 = v1505;
          v1777 = v1728;
          v1778 = v1519;
          sub_1B03949FC(&v1777, &v1781, &v1780, &v1779);
          v834 = 0;
          v835 = v1501;
          v836 = v1502;
          v837 = v1503;
          v838 = v1504;
          v839 = v378;
          v840 = v377;
          v841 = v376;
          v842 = v375;
          v843 = v374;
          v844 = v373;
          v845 = v372;
          v846 = v1512;
          v847 = v1513;
          v848 = v1514;
          v849 = v1515;
          v850 = v1516;
          v851 = v1517;
          v852 = v1518;
          v853 = v1519;
          v854 = v1520;
          v855 = v1521;
          v856 = v1522;
          v857 = v1523;
          v858 = v1524;
          v859 = v1525;
          v860 = v1526;
          v861 = v1527;
          v862 = v1528;
          v863 = v1529;
          v864 = v1531;
          v379 = v1511;
          v380 = v1510;
          v381 = v1509;
          v382 = v1508;
          v383 = v1507;
          v384 = v1506;
          v385 = v1505;
          v1777 = v1729;
          v1778 = v1520;
          sub_1B03949FC(&v1777, &v1781, &v1780, &v1779);
          v803 = 0;
          v804 = v1501;
          v805 = v1502;
          v806 = v1503;
          v807 = v1504;
          v808 = v385;
          v809 = v384;
          v810 = v383;
          v811 = v382;
          v812 = v381;
          v813 = v380;
          v814 = v379;
          v815 = v1512;
          v816 = v1513;
          v817 = v1514;
          v818 = v1515;
          v819 = v1516;
          v820 = v1517;
          v821 = v1518;
          v822 = v1519;
          v823 = v1520;
          v824 = v1521;
          v825 = v1522;
          v826 = v1523;
          v827 = v1524;
          v828 = v1525;
          v829 = v1526;
          v830 = v1527;
          v831 = v1528;
          v832 = v1529;
          v833 = v1531;
          v386 = v1511;
          v387 = v1510;
          v388 = v1509;
          v389 = v1508;
          v390 = v1507;
          v391 = v1506;
          v392 = v1505;
          v1777 = v1730;
          v1778 = v1521;
          sub_1B03949FC(&v1777, &v1781, &v1780, &v1779);
          v772 = 0;
          v773 = v1501;
          v774 = v1502;
          v775 = v1503;
          v776 = v1504;
          v777 = v392;
          v778 = v391;
          v779 = v390;
          v780 = v389;
          v781 = v388;
          v782 = v387;
          v783 = v386;
          v784 = v1512;
          v785 = v1513;
          v786 = v1514;
          v787 = v1515;
          v788 = v1516;
          v789 = v1517;
          v790 = v1518;
          v791 = v1519;
          v792 = v1520;
          v793 = v1521;
          v794 = v1522;
          v795 = v1523;
          v796 = v1524;
          v797 = v1525;
          v798 = v1526;
          v799 = v1527;
          v800 = v1528;
          v801 = v1529;
          v802 = v1531;
          v393 = v1511;
          v394 = v1510;
          v395 = v1509;
          v396 = v1508;
          v397 = v1507;
          v398 = v1506;
          v399 = v1505;
          v1777 = v1731;
          v1778 = v1522;
          sub_1B03949FC(&v1777, &v1781, &v1780, &v1779);
          v741 = 0;
          v742 = v1501;
          v743 = v1502;
          v744 = v1503;
          v745 = v1504;
          v746 = v399;
          v747 = v398;
          v748 = v397;
          v749 = v396;
          v750 = v395;
          v751 = v394;
          v752 = v393;
          v753 = v1512;
          v754 = v1513;
          v755 = v1514;
          v756 = v1515;
          v757 = v1516;
          v758 = v1517;
          v759 = v1518;
          v760 = v1519;
          v761 = v1520;
          v762 = v1521;
          v763 = v1522;
          v764 = v1523;
          v765 = v1524;
          v766 = v1525;
          v767 = v1526;
          v768 = v1527;
          v769 = v1528;
          v770 = v1529;
          v771 = v1531;
          v400 = v1511;
          v401 = v1510;
          v402 = v1509;
          v403 = v1508;
          v404 = v1507;
          v405 = v1506;
          v406 = v1505;
          v1777 = v1732;
          v1778 = v1523;
          sub_1B03949FC(&v1777, &v1781, &v1780, &v1779);
          v710 = 0;
          v711 = v1501;
          v712 = v1502;
          v713 = v1503;
          v714 = v1504;
          v715 = v406;
          v716 = v405;
          v717 = v404;
          v718 = v403;
          v719 = v402;
          v720 = v401;
          v721 = v400;
          v722 = v1512;
          v723 = v1513;
          v724 = v1514;
          v725 = v1515;
          v726 = v1516;
          v727 = v1517;
          v728 = v1518;
          v729 = v1519;
          v730 = v1520;
          v731 = v1521;
          v732 = v1522;
          v733 = v1523;
          v734 = v1524;
          v735 = v1525;
          v736 = v1526;
          v737 = v1527;
          v738 = v1528;
          v739 = v1529;
          v740 = v1531;
          v407 = v1511;
          v408 = v1510;
          v409 = v1509;
          v410 = v1508;
          v411 = v1507;
          v412 = v1506;
          v413 = v1505;
          v1777 = v1733;
          v1778 = v1524;
          sub_1B03949FC(&v1777, &v1781, &v1780, &v1779);
          v679 = 0;
          v680 = v1501;
          v681 = v1502;
          v682 = v1503;
          v683 = v1504;
          v684 = v413;
          v685 = v412;
          v686 = v411;
          v687 = v410;
          v688 = v409;
          v689 = v408;
          v690 = v407;
          v691 = v1512;
          v692 = v1513;
          v693 = v1514;
          v694 = v1515;
          v695 = v1516;
          v696 = v1517;
          v697 = v1518;
          v698 = v1519;
          v699 = v1520;
          v700 = v1521;
          v701 = v1522;
          v702 = v1523;
          v703 = v1524;
          v704 = v1525;
          v705 = v1526;
          v706 = v1527;
          v707 = v1528;
          v708 = v1529;
          v709 = v1531;
          v414 = v1511;
          v415 = v1510;
          v416 = v1509;
          v417 = v1508;
          v418 = v1507;
          v419 = v1506;
          v420 = v1505;
          v1777 = v1734;
          v1778 = v1525;
          sub_1B03949FC(&v1777, &v1781, &v1780, &v1779);
          v648 = 0;
          v649 = v1501;
          v650 = v1502;
          v651 = v1503;
          v652 = v1504;
          v653 = v420;
          v654 = v419;
          v655 = v418;
          v656 = v417;
          v657 = v416;
          v658 = v415;
          v659 = v414;
          v660 = v1512;
          v661 = v1513;
          v662 = v1514;
          v663 = v1515;
          v664 = v1516;
          v665 = v1517;
          v666 = v1518;
          v667 = v1519;
          v668 = v1520;
          v669 = v1521;
          v670 = v1522;
          v671 = v1523;
          v672 = v1524;
          v673 = v1525;
          v674 = v1526;
          v675 = v1527;
          v676 = v1528;
          v677 = v1529;
          v678 = v1531;
          v421 = v1511;
          v422 = v1510;
          v423 = v1509;
          v424 = v1508;
          v425 = v1507;
          v426 = v1506;
          v427 = v1505;
          v1777 = v1735;
          v1778 = v1526;
          sub_1B03949FC(&v1777, &v1781, &v1780, &v1779);
          v617 = 0;
          v618 = v1501;
          v619 = v1502;
          v620 = v1503;
          v621 = v1504;
          v622 = v427;
          v623 = v426;
          v624 = v425;
          v625 = v424;
          v626 = v423;
          v627 = v422;
          v628 = v421;
          v629 = v1512;
          v630 = v1513;
          v631 = v1514;
          v632 = v1515;
          v633 = v1516;
          v634 = v1517;
          v635 = v1518;
          v636 = v1519;
          v637 = v1520;
          v638 = v1521;
          v639 = v1522;
          v640 = v1523;
          v641 = v1524;
          v642 = v1525;
          v643 = v1526;
          v644 = v1527;
          v645 = v1528;
          v646 = v1529;
          v647 = v1531;
          v428 = v1511;
          v429 = v1510;
          v430 = v1509;
          v431 = v1508;
          v432 = v1507;
          v433 = v1506;
          v434 = v1505;
          v1777 = v1736;
          v1778 = v1527;
          sub_1B03949FC(&v1777, &v1781, &v1780, &v1779);
          v586 = 0;
          v587 = v1501;
          v588 = v1502;
          v589 = v1503;
          v590 = v1504;
          v591 = v434;
          v592 = v433;
          v593 = v432;
          v594 = v431;
          v595 = v430;
          v596 = v429;
          v597 = v428;
          v598 = v1512;
          v599 = v1513;
          v600 = v1514;
          v601 = v1515;
          v602 = v1516;
          v603 = v1517;
          v604 = v1518;
          v605 = v1519;
          v606 = v1520;
          v607 = v1521;
          v608 = v1522;
          v609 = v1523;
          v610 = v1524;
          v611 = v1525;
          v612 = v1526;
          v613 = v1527;
          v614 = v1528;
          v615 = v1529;
          v616 = v1531;
          v435 = v1511;
          v436 = v1510;
          v437 = v1509;
          v438 = v1508;
          v439 = v1507;
          v440 = v1506;
          v441 = v1505;
          v1777 = v1737;
          v1778 = v1528;
          sub_1B03949FC(&v1777, &v1781, &v1780, &v1779);
          v555 = 0;
          v556 = v1501;
          v557 = v1502;
          v558 = v1503;
          v559 = v1504;
          v560 = v441;
          v561 = v440;
          v562 = v439;
          v563 = v438;
          v564 = v437;
          v565 = v436;
          v566 = v435;
          v567 = v1512;
          v568 = v1513;
          v569 = v1514;
          v570 = v1515;
          v571 = v1516;
          v572 = v1517;
          v573 = v1518;
          v574 = v1519;
          v575 = v1520;
          v576 = v1521;
          v577 = v1522;
          v578 = v1523;
          v579 = v1524;
          v580 = v1525;
          v581 = v1526;
          v582 = v1527;
          v583 = v1528;
          v584 = v1529;
          v585 = v1531;
          v442 = v1511;
          v443 = v1510;
          v444 = v1509;
          v445 = v1508;
          v446 = v1507;
          v447 = v1506;
          v448 = v1505;
          v1777 = v1738;
          v1778 = v1529;
          sub_1B03949FC(&v1777, &v1781, &v1780, &v1779);
          v524 = 0;
          v525 = v1501;
          v526 = v1502;
          v527 = v1503;
          v528 = v1504;
          v529 = v448;
          v530 = v447;
          v531 = v446;
          v532 = v445;
          v533 = v444;
          v534 = v443;
          v535 = v442;
          v536 = v1512;
          v537 = v1513;
          v538 = v1514;
          v539 = v1515;
          v540 = v1516;
          v541 = v1517;
          v542 = v1518;
          v543 = v1519;
          v544 = v1520;
          v545 = v1521;
          v546 = v1522;
          v547 = v1523;
          v548 = v1524;
          v549 = v1525;
          v550 = v1526;
          v551 = v1527;
          v552 = v1528;
          v553 = v1529;
          v554 = v1531;
          v449 = v1511;
          v450 = v1510;
          v451 = v1509;
          v452 = v1508;
          v453 = v1507;
          v454 = v1506;
          v455 = v1505;
          v1777 = v1739;
          v1778 = v1531;
          sub_1B03949FC(&v1777, &v1781, &v1780, &v1779);
          v493 = 0;
          v494 = v1501;
          v495 = v1502;
          v496 = v1503;
          v497 = v1504;
          v498 = v455;
          v499 = v454;
          v500 = v453;
          v501 = v452;
          v502 = v451;
          v503 = v450;
          v504 = v449;
          v505 = v1512;
          v506 = v1513;
          v507 = v1514;
          v508 = v1515;
          v509 = v1516;
          v510 = v1517;
          v511 = v1518;
          v512 = v1519;
          v513 = v1520;
          v514 = v1521;
          v515 = v1522;
          v516 = v1523;
          v517 = v1524;
          v518 = v1525;
          v519 = v1526;
          v520 = v1527;
          v521 = v1528;
          v522 = v1529;
          v523 = v1531;
          _os_log_impl(&dword_1B0389000, v1534, v1535, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Completing user-initiated MIME part download request %{public}u for UID %u, part '[%{public}s]', QoS '%{public}s'.", v1426, 0x4Bu);
          sub_1B03998A8(v1427, 0, v1425);
          sub_1B03998A8(v1428, 3, MEMORY[0x1E69E7CA0] + 8);
          sub_1B0E45D58();

          v1424 = v493;
        }
      }

      else
      {
        v252 = v1536;

        v1424 = v252;
      }

      v463 = v1424;
      MEMORY[0x1E69E5920](v1534);
      (*(v1742 + 8))(v1745, v1741);
      v462 = v1787;
      v461 = v1787[14];
      MEMORY[0x1E69E5928](v1787[14]);
      v459 = 0;
      sub_1B039A494();
      v460 = sub_1B0E45CC8();
      [v461 finishWithResult_];
      MEMORY[0x1E69E5920](v460);
      MEMORY[0x1E69E5920](v461);
      sub_1B0990D34(v462);
    }

    sub_1B039E440(v1788);

    sub_1B039E440(&v1791);
    sub_1B074B764(v1763);
    v458 = 1;
  }

  return v458 & 1;
}

uint64_t sub_1B098525C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  sub_1B0820818(a1, a2, a3);
  sub_1B0820818(a1, a2, a3);
  v13[0] = a1;
  v13[1] = a2;
  v13[2] = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3300, &qword_1B0EA10F8);
  sub_1B03F1A20(sub_1B09853D0, 0, v3, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6158], v10, &v14);
  sub_1B0990858(v13);
  v11 = v14;
  v12 = v15;
  if (v15)
  {
    v16 = v11;
    v17 = v12;
  }

  else
  {
    v16 = sub_1B0E44838();
    v17 = v4;
  }

  v6 = v16;
  sub_1B087510C(a1, a2, a3);
  return v6;
}

uint64_t sub_1B09853D0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v7 = a1[1];
  v8 = a1[2];
  v11 = *a1;
  v12 = v7;
  v13 = v8;
  v10[0] = sub_1B0E46A28();
  v10[1] = v2;
  v3 = sub_1B0E44838();
  MEMORY[0x1B2728B30](v3);

  sub_1B07F20AC();
  sub_1B0E469F8();
  v4 = sub_1B0E44838();
  MEMORY[0x1B2728B30](v4);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B03B1198(v10);
  result = sub_1B0E44C88();
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_1B0985520(uint64_t a1, unsigned int a2, int a3)
{
  v31 = a1;
  v28 = a2;
  v26 = a3;
  v29 = sub_1B099155C;
  v48 = 0;
  v46 = 0;
  v47 = 0;
  v45 = 0;
  v44 = 0;
  v38 = 0;
  v39 = 0;
  v22 = 0;
  v23 = (*(*(_s6LoggerVMa(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v25 = &v11[-v23];
  v24 = (*(*(_s6LoggerVMa_1(v4) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v31);
  v27 = &v11[-v24];
  v48 = &v11[-v24];
  v46 = v5;
  v47 = v6;
  v45 = v7;
  v44 = v3;
  sub_1B0394784(v3 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_logger, v8);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B07B91DC(v25, v31, v28, v27);
  v42 = 0;
  v43 = 0xF000000000000000;
  v41 = 1;
  v30 = &v33;
  v34 = v26;
  v35 = v27;
  v36 = &v42;
  v37 = &v41;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2B58, &qword_1B0EA1120);
  sub_1B09B21DC(v31, v28, v29, v30, v9, &v40);
  v32 = 0;
  v20 = v42;
  v21 = v43;
  sub_1B070E18C(v42, v43);
  if ((v21 & 0xF000000000000000) == 0xF000000000000000)
  {
    sub_1B043C03C(&v42);
    sub_1B074B764(v27);
    v15 = 0;
    v16 = 0;
    v17 = 2;
  }

  else
  {
    v18 = v20;
    v19 = v21;
    v14 = v21;
    v13 = v20;
    v38 = v20;
    v39 = v21;
    v12 = v41;
    sub_1B043C03C(&v42);
    sub_1B074B764(v27);
    v15 = v13;
    v16 = v14;
    v17 = v12 & 1;
  }

  return v15;
}

uint64_t sub_1B0985850(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v23 = a4;
  v24 = a3;
  v25 = a2;
  v26 = a1;
  v56[1] = 0;
  v27 = 0;
  v45 = 0;
  v58 = a1;
  v59 = a2;
  v57 = a3;
  v56[2] = a4;
  v56[0] = sub_1B0E46A48();
  for (i = 0; ; i = v12)
  {
    v4 = i;
    v15 = *(v22 + 16);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v54[0] = v15;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v19 = &v10;
    MEMORY[0x1EEE9AC00](&v10);
    v5 = v26;
    v6 = v25;
    v17 = &v10 - 6;
    *(&v10 - 8) = v7;
    *(&v10 - 3) = v5;
    *(&v10 - 4) = v6;
    *(&v10 - 1) = v8;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3308, &qword_1B0EA1100);
    v16 = v18;
    sub_1B0990A50();
    sub_1B0E456F8();
    v20 = v4;
    v21 = v19;
    if (v4)
    {
      break;
    }

    sub_1B039E440(v54);
    v14 = v54[1];
    if (v55)
    {
      v11 = v56[0];
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B039E440(v56);
      return v11;
    }

    v13 = v14;
    v12 = v20;
    v45 = v14;
    sub_1B0E45308();
    v49 = v40;
    v48 = v39;
    v47 = v38;
    v46 = v37;
    v53 = v44;
    v52 = v43;
    v51 = v42;
    v50 = v41;
    v32 = v40;
    v31 = v39;
    v30 = v38;
    v29 = v37;
    v36 = v44;
    v35 = v43;
    v34 = v42;
    v33 = v41;
    sub_1B0E452E8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0985B2C(uint64_t a1)
{
  v2 = *(a1 + 40);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v2;
}

uint64_t sub_1B0985B60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, BOOL *a6@<X5>, _BYTE *a7@<X8>)
{
  v213 = a7;
  v262 = a2;
  v263 = a3;
  v259 = a4;
  v260 = a5;
  v261 = a6;
  v215 = sub_1B074E050;
  v216 = sub_1B03F7AE0;
  v217 = sub_1B0394C30;
  v218 = sub_1B0394C24;
  v219 = sub_1B074DFFC;
  v220 = sub_1B039BA88;
  v221 = sub_1B039BB94;
  v222 = sub_1B0394C24;
  v223 = sub_1B039BBA0;
  v224 = sub_1B039BC08;
  v225 = sub_1B06BA324;
  v226 = sub_1B074E0E4;
  v227 = sub_1B039BCF8;
  v228 = sub_1B07AB020;
  v229 = sub_1B039BC08;
  v230 = sub_1B0398F5C;
  v231 = sub_1B0398F5C;
  v232 = sub_1B0399178;
  v233 = sub_1B0398F5C;
  v234 = sub_1B0398F5C;
  v235 = sub_1B039BA94;
  v236 = sub_1B0398F5C;
  v237 = sub_1B0398F5C;
  v238 = sub_1B0399178;
  v239 = sub_1B0398F5C;
  v240 = sub_1B0398F5C;
  v241 = sub_1B03991EC;
  v242 = sub_1B0398F5C;
  v243 = sub_1B0398F5C;
  v244 = sub_1B03993BC;
  v245 = sub_1B0398F5C;
  v246 = sub_1B0398F5C;
  v247 = sub_1B039BCEC;
  v248 = sub_1B0398F5C;
  v249 = sub_1B0398F5C;
  v250 = sub_1B03991EC;
  v284[1] = *MEMORY[0x1E69E9840];
  v280 = 0;
  v279 = 0;
  v278 = 0;
  v277 = 0;
  v276 = 0;
  v275 = 0;
  v271 = 0;
  v270 = 0;
  v281 = 0;
  v282 = 0;
  v251 = 0;
  v252 = _s6LoggerVMa_1(0);
  v253 = (*(*(v252 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v254 = &v115 - v253;
  v255 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v256 = &v115 - v255;
  v257 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11);
  v258 = &v115 - v257;
  v264 = sub_1B0E439A8();
  v265 = *(v264 - 8);
  v266 = v264 - 8;
  v267 = (*(v265 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v263);
  v268 = &v115 - v267;
  v280 = a1;
  v279 = v12;
  v278 = v13;
  v277 = v14;
  v276 = v15;
  v275 = v16;
  v269 = sub_1B082A818(v13);
  if (v269)
  {
    v212 = v269;
    v210 = v269;
    v271 = v269;
    v270 = 0;
    v211 = [v269 messageDataIsPartial_];
    if (v211)
    {
      v209 = v211;
      v204 = v211;
      v205 = sub_1B0E42F38();
      v206 = v17;
      MEMORY[0x1E69E5920](v204);
      v207 = v205;
      v208 = v206;
    }

    else
    {
      v207 = 0;
      v208 = 0xF000000000000000;
    }

    v202 = v208;
    v203 = v207;
    if ((v208 & 0xF000000000000000) == 0xF000000000000000)
    {
      v18 = v210;
      *v213 = 0;
      MEMORY[0x1E69E5920](v18);
    }

    else
    {
      v200 = v203;
      v201 = v202;
      v198 = v202;
      v197 = v203;
      v281 = v203;
      v282 = v202;
      sub_1B03B2000(v203, v202);
      v19 = v260;
      v20 = v198;
      v21 = *v260;
      v22 = v260[1];
      *v260 = v197;
      v19[1] = v20;
      sub_1B070E144(v21, v22);
      v196 = (v270 & 1) != 0;
      v23 = v198;
      v24 = v197;
      v25 = v213;
      *v261 = (v270 & 1) != 0;
      *v25 = 0;
      sub_1B0391D50(v24, v23);
      MEMORY[0x1E69E5920](v210);
    }

    return v214;
  }

  else
  {
    (*(v265 + 16))(v268, v259, v264);
    sub_1B074B69C(v259, v258);
    sub_1B074B69C(v258, v256);
    sub_1B074E41C(v258, v254);
    v26 = (v256 + *(v252 + 20));
    v148 = *v26;
    v149 = *(v26 + 1);
    v150 = *(v26 + 1);
    v151 = *(v26 + 4);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B074B764(v256);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v147 = 36;
    v167 = 7;
    v27 = swift_allocObject();
    v28 = v149;
    v29 = v150;
    v30 = v151;
    v154 = v27;
    *(v27 + 16) = v148;
    *(v27 + 20) = v28;
    *(v27 + 24) = v29;
    *(v27 + 32) = v30;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v31 = swift_allocObject();
    v32 = v149;
    v33 = v150;
    v34 = v151;
    v146 = v31;
    *(v31 + 16) = v148;
    *(v31 + 20) = v32;
    *(v31 + 24) = v33;
    *(v31 + 32) = v34;

    v166 = 32;
    v35 = swift_allocObject();
    v36 = v146;
    v158 = v35;
    *(v35 + 16) = v215;
    *(v35 + 24) = v36;
    sub_1B0394868();
    sub_1B0394868();

    v37 = swift_allocObject();
    v38 = v149;
    v39 = v150;
    v40 = v151;
    v41 = v37;
    v42 = v254;
    v162 = v41;
    *(v41 + 16) = v148;
    *(v41 + 20) = v38;
    *(v41 + 24) = v39;
    *(v41 + 32) = v40;
    sub_1B074B764(v42);
    v152 = swift_allocObject();
    *(v152 + 16) = v263;

    v43 = swift_allocObject();
    v44 = v152;
    v168 = v43;
    *(v43 + 16) = v216;
    *(v43 + 24) = v44;

    v194 = sub_1B0E43988();
    v195 = sub_1B0E458E8();
    v164 = 17;
    v170 = swift_allocObject();
    v156 = 16;
    *(v170 + 16) = 16;
    v171 = swift_allocObject();
    v165 = 4;
    *(v171 + 16) = 4;
    v45 = swift_allocObject();
    v153 = v45;
    *(v45 + 16) = v217;
    *(v45 + 24) = 0;
    v46 = swift_allocObject();
    v47 = v153;
    v172 = v46;
    *(v46 + 16) = v218;
    *(v46 + 24) = v47;
    v173 = swift_allocObject();
    *(v173 + 16) = 0;
    v174 = swift_allocObject();
    *(v174 + 16) = 1;
    v48 = swift_allocObject();
    v49 = v154;
    v155 = v48;
    *(v48 + 16) = v219;
    *(v48 + 24) = v49;
    v50 = swift_allocObject();
    v51 = v155;
    v175 = v50;
    *(v50 + 16) = v220;
    *(v50 + 24) = v51;
    v176 = swift_allocObject();
    *(v176 + 16) = v156;
    v177 = swift_allocObject();
    *(v177 + 16) = v165;
    v52 = swift_allocObject();
    v157 = v52;
    *(v52 + 16) = v221;
    *(v52 + 24) = 0;
    v53 = swift_allocObject();
    v54 = v157;
    v178 = v53;
    *(v53 + 16) = v222;
    *(v53 + 24) = v54;
    v179 = swift_allocObject();
    *(v179 + 16) = 0;
    v180 = swift_allocObject();
    *(v180 + 16) = v165;
    v55 = swift_allocObject();
    v56 = v158;
    v159 = v55;
    *(v55 + 16) = v223;
    *(v55 + 24) = v56;
    v57 = swift_allocObject();
    v58 = v159;
    v181 = v57;
    *(v57 + 16) = v224;
    *(v57 + 24) = v58;
    v182 = swift_allocObject();
    *(v182 + 16) = 112;
    v183 = swift_allocObject();
    v161 = 8;
    *(v183 + 16) = 8;
    v160 = swift_allocObject();
    *(v160 + 16) = 0x786F626C69616DLL;
    v59 = swift_allocObject();
    v60 = v160;
    v184 = v59;
    *(v59 + 16) = v225;
    *(v59 + 24) = v60;
    v185 = swift_allocObject();
    *(v185 + 16) = 37;
    v186 = swift_allocObject();
    *(v186 + 16) = v161;
    v61 = swift_allocObject();
    v62 = v162;
    v163 = v61;
    *(v61 + 16) = v226;
    *(v61 + 24) = v62;
    v63 = swift_allocObject();
    v64 = v163;
    v187 = v63;
    *(v63 + 16) = v227;
    *(v63 + 24) = v64;
    v188 = swift_allocObject();
    *(v188 + 16) = 0;
    v189 = swift_allocObject();
    *(v189 + 16) = v165;
    v65 = swift_allocObject();
    v66 = v168;
    v169 = v65;
    *(v65 + 16) = v228;
    *(v65 + 24) = v66;
    v67 = swift_allocObject();
    v68 = v169;
    v191 = v67;
    *(v67 + 16) = v229;
    *(v67 + 24) = v68;
    v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v190 = sub_1B0E46A48();
    v192 = v69;

    v70 = v170;
    v71 = v192;
    *v192 = v230;
    v71[1] = v70;

    v72 = v171;
    v73 = v192;
    v192[2] = v231;
    v73[3] = v72;

    v74 = v172;
    v75 = v192;
    v192[4] = v232;
    v75[5] = v74;

    v76 = v173;
    v77 = v192;
    v192[6] = v233;
    v77[7] = v76;

    v78 = v174;
    v79 = v192;
    v192[8] = v234;
    v79[9] = v78;

    v80 = v175;
    v81 = v192;
    v192[10] = v235;
    v81[11] = v80;

    v82 = v176;
    v83 = v192;
    v192[12] = v236;
    v83[13] = v82;

    v84 = v177;
    v85 = v192;
    v192[14] = v237;
    v85[15] = v84;

    v86 = v178;
    v87 = v192;
    v192[16] = v238;
    v87[17] = v86;

    v88 = v179;
    v89 = v192;
    v192[18] = v239;
    v89[19] = v88;

    v90 = v180;
    v91 = v192;
    v192[20] = v240;
    v91[21] = v90;

    v92 = v181;
    v93 = v192;
    v192[22] = v241;
    v93[23] = v92;

    v94 = v182;
    v95 = v192;
    v192[24] = v242;
    v95[25] = v94;

    v96 = v183;
    v97 = v192;
    v192[26] = v243;
    v97[27] = v96;

    v98 = v184;
    v99 = v192;
    v192[28] = v244;
    v99[29] = v98;

    v100 = v185;
    v101 = v192;
    v192[30] = v245;
    v101[31] = v100;

    v102 = v186;
    v103 = v192;
    v192[32] = v246;
    v103[33] = v102;

    v104 = v187;
    v105 = v192;
    v192[34] = v247;
    v105[35] = v104;

    v106 = v188;
    v107 = v192;
    v192[36] = v248;
    v107[37] = v106;

    v108 = v189;
    v109 = v192;
    v192[38] = v249;
    v109[39] = v108;

    v110 = v191;
    v111 = v192;
    v192[40] = v250;
    v111[41] = v110;
    sub_1B0394964();

    if (os_log_type_enabled(v194, v195))
    {
      v139 = sub_1B0E45D78();
      v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v140 = sub_1B03949A8(0, v138, v138);
      v141 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v142 = &v274;
      v274 = v139;
      v143 = v284;
      v284[0] = v140;
      v144 = &v283;
      v283 = v141;
      sub_1B0394A48(3, &v274);
      sub_1B0394A48(7, v142);
      v112 = v214;
      v272 = v230;
      v273 = v170;
      sub_1B03949FC(&v272, v142, v143, v144);
      v145 = v112;
      if (v112)
      {

        __break(1u);
      }

      else
      {
        v272 = v231;
        v273 = v171;
        sub_1B03949FC(&v272, &v274, v284, &v283);
        v136 = 0;
        v272 = v232;
        v273 = v172;
        sub_1B03949FC(&v272, &v274, v284, &v283);
        v135 = 0;
        v272 = v233;
        v273 = v173;
        sub_1B03949FC(&v272, &v274, v284, &v283);
        v134 = 0;
        v272 = v234;
        v273 = v174;
        sub_1B03949FC(&v272, &v274, v284, &v283);
        v133 = 0;
        v272 = v235;
        v273 = v175;
        sub_1B03949FC(&v272, &v274, v284, &v283);
        v132 = 0;
        v272 = v236;
        v273 = v176;
        sub_1B03949FC(&v272, &v274, v284, &v283);
        v131 = 0;
        v272 = v237;
        v273 = v177;
        sub_1B03949FC(&v272, &v274, v284, &v283);
        v130 = 0;
        v272 = v238;
        v273 = v178;
        sub_1B03949FC(&v272, &v274, v284, &v283);
        v129 = 0;
        v272 = v239;
        v273 = v179;
        sub_1B03949FC(&v272, &v274, v284, &v283);
        v128 = 0;
        v272 = v240;
        v273 = v180;
        sub_1B03949FC(&v272, &v274, v284, &v283);
        v127 = 0;
        v272 = v241;
        v273 = v181;
        sub_1B03949FC(&v272, &v274, v284, &v283);
        v126 = 0;
        v272 = v242;
        v273 = v182;
        sub_1B03949FC(&v272, &v274, v284, &v283);
        v125 = 0;
        v272 = v243;
        v273 = v183;
        sub_1B03949FC(&v272, &v274, v284, &v283);
        v124 = 0;
        v272 = v244;
        v273 = v184;
        sub_1B03949FC(&v272, &v274, v284, &v283);
        v123 = 0;
        v272 = v245;
        v273 = v185;
        sub_1B03949FC(&v272, &v274, v284, &v283);
        v122 = 0;
        v272 = v246;
        v273 = v186;
        sub_1B03949FC(&v272, &v274, v284, &v283);
        v121 = 0;
        v272 = v247;
        v273 = v187;
        sub_1B03949FC(&v272, &v274, v284, &v283);
        v120 = 0;
        v272 = v248;
        v273 = v188;
        sub_1B03949FC(&v272, &v274, v284, &v283);
        v119 = 0;
        v272 = v249;
        v273 = v189;
        sub_1B03949FC(&v272, &v274, v284, &v283);
        v118 = 0;
        v272 = v250;
        v273 = v191;
        sub_1B03949FC(&v272, &v274, v284, &v283);
        v117 = 0;
        _os_log_impl(&dword_1B0389000, v194, v195, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] No message for UID %u.", v139, 0x31u);
        sub_1B03998A8(v140, 0, v138);
        sub_1B03998A8(v141, 1, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();

        v137 = v117;
      }
    }

    else
    {

      v137 = v214;
    }

    v116 = v137;
    MEMORY[0x1E69E5920](v194);
    (*(v265 + 8))(v268, v264);
    v113 = v116;
    *v213 = 0;
    return v113;
  }
}

uint64_t sub_1B0987C60(uint64_t a1, int a2, uint64_t a3, int a4)
{
  memset(__b, 0, sizeof(__b));
  v16 = *(a1 + 8);
  v15 = *(a1 + 16);
  v17 = *(a1 + 24);
  v14 = *(a1 + 32);
  v4 = *(a1 + 36);
  v5 = *(a1 + 40);
  v6 = *(a1 + 41);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v18 = *(a1 + 64);
  LODWORD(__b[0]) = *a1;
  __b[1] = v16;
  __b[2] = v15;
  __b[3] = v17;
  __b[4] = __PAIR64__(v4, v14);
  LOBYTE(__b[5]) = v5;
  BYTE1(__b[5]) = v6;
  __b[6] = v7;
  LOBYTE(__b[7]) = v8 & 1;
  __b[8] = v18;
  sub_1B0714E4C();
  v20 = sub_1B0E45ED8();
  sub_1B03B2000(v16, v15);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  MEMORY[0x1E69E5928](v18);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (v20)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v10 = static MailboxName.== infix(_:_:)(v17, v14, a3, a4);

    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  sub_1B0391D50(v16, v15);

  MEMORY[0x1E69E5920](v18);

  return v11 & 1;
}

uint64_t sub_1B0987E44(const void *a1, int a2, uint64_t a3, int a4)
{
  memcpy(__dst, a1, sizeof(__dst));
  v20 = a1;
  v19 = a2;
  v17 = a3;
  v18 = a4;
  v16 = HIDWORD(__dst[4]);
  v15 = a2;
  sub_1B0714E4C();
  v13 = sub_1B0E45ED8();
  sub_1B0990C1C(__dst, v14);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (v13)
  {
    v6 = __dst[3];
    v5 = __dst[4];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v7 = static MailboxName.== infix(_:_:)(v6, v5, a3, a4);

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  sub_1B0990D34(__dst);

  return v8 & 1;
}

BOOL sub_1B0987FA0(uint64_t a1, int a2, uint64_t a3, int a4, char a5)
{
  v11 = *(a1 + 24);
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  sub_1B0714E4C();
  if (sub_1B0E45ED8() & 1) != 0 && (_s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0(), v7 = static MailboxName.== infix(_:_:)(v11, v12, a3, a4), , (v7))
  {
    return (a5 & 1) == 0 || (v13 & 1) != 0;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B09880F4(const void *a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  memcpy(__dst, a1, sizeof(__dst));
  v28 = a1;
  v27 = a2;
  v25 = a3;
  v26 = a4;
  v24 = a5;
  v23 = HIDWORD(__dst[4]);
  v22 = a2;
  sub_1B0714E4C();
  v18 = sub_1B0E45ED8();
  sub_1B0990C1C(__dst, v21);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (v18)
  {
    v10 = __dst[3];
    v9 = __dst[4];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v11 = static MailboxName.== infix(_:_:)(v10, v9, a3, a4);

    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  sub_1B0990D34(__dst);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0990C1C(__dst, v20);
  if (v12)
  {
    v19[1] = a5;
    v6 = __dst[5];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v19[0] = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26D0, &unk_1B0E9C690);
    sub_1B07AFA50();
    sub_1B07F3770();
    v7 = sub_1B0E450A8();
    sub_1B039E440(v19);
    v8 = v7 ^ 1;
  }

  else
  {
    v8 = 0;
  }

  sub_1B0990D34(__dst);
  return v8 & 1;
}

uint64_t sub_1B0988328(uint64_t a1, uint64_t a2, int a3, int a4)
{
  memset(__b, 0, sizeof(__b));
  v13 = *(a1 + 8);
  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  v10 = *(a1 + 32);
  v4 = *(a1 + 36);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v16 = *(a1 + 56);
  LODWORD(__b[0]) = *a1;
  __b[1] = v13;
  __b[2] = v14;
  __b[3] = v15;
  __b[4] = __PAIR64__(v4, v10);
  __b[5] = v5;
  LOBYTE(__b[6]) = v6 & 1;
  __b[7] = v16;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v17 = static MailboxName.== infix(_:_:)(v15, v10, a2, a3);

  sub_1B03B2000(v13, v14);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (v17)
  {
    sub_1B0714E4C();
    v8 = sub_1B0E45ED8();
  }

  else
  {
    v8 = 0;
  }

  sub_1B0391D50(v13, v14);

  return v8 & 1;
}

uint64_t sub_1B09884D8(uint64_t a1, int a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v32 = a7;
  v33 = a6;
  v34 = a5;
  v37 = a3;
  v36 = a2;
  v35 = a1;
  v49 = 0;
  v47 = 0;
  v51[7] = a1;
  v52 = a2;
  v51[6] = a3;
  v51[1] = a4;
  v51[2] = a5;
  v51[3] = a6;
  v51[4] = a7;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v51[0] = v34;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v43 = v35;
  v44 = v36;
  v45 = v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E32F0, &qword_1B0EA10E8);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3340, &qword_1B0EA1128);
  v38 = v40;
  sub_1B0991014();
  v41 = 0;
  v42 = sub_1B0E44F58();
  v26 = v42;

  sub_1B039E440(v51);
  v50[1] = v42;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v50[0] = v33;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v27 = &v15;
  MEMORY[0x1EEE9AC00](&v15);
  v28 = v12;
  v12[2] = v35;
  v13 = v36;
  v14 = v7;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3308, &qword_1B0EA1100);
  sub_1B09914B4();
  v8 = sub_1B0E44F58();
  v30 = 0;
  v31 = v8;
  v21 = v8;

  sub_1B039E440(v50);
  v49 = v21;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v48 = v32;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v22 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v9 = v36;
  v23 = &v12[-6];
  v12[-4] = v35;
  LODWORD(v12[-3]) = v9;
  v12[-2] = v10;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E32C0, &unk_1B0EA10C0);
  sub_1B0989D8C();
  v25 = sub_1B0E44F58();
  v19 = v25;

  sub_1B039E440(&v48);
  v47 = v19;
  v15 = sub_1B0E45238();
  v16 = sub_1B0E45238();

  v46 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3348, &qword_1B0EA1130);
  v18 = sub_1B03D00F4();
  sub_1B0991658();
  v20 = sub_1B0E445E8();

  return v20;
}

uint64_t sub_1B0988A28@<X0>(const void *a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X1>, int a4@<W2>, uint64_t a5@<X3>)
{
  memcpy(__dst, a1, sizeof(__dst));
  result = sub_1B0988B7C(a3, a4, a5);
  if (result)
  {
    v9 = __dst[1];
    v10 = __dst[2];
    sub_1B03B2000(__dst[1], __dst[2]);
    result = sub_1B0988CB8();
    v11 = v9;
    v12 = v10;
    v13 = result;
    v14 = v8;
    v15 = v7 & 1 | ((v6 & 1) << 8);
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 512;
  }

  *a2 = v11;
  *(a2 + 8) = v12;
  *(a2 + 16) = v13;
  *(a2 + 24) = v14;
  *(a2 + 32) = v15;
  return result;
}

uint64_t sub_1B0988B7C(uint64_t a1, int a2, uint64_t a3)
{
  v18 = a1;
  v19 = a2;
  v17 = a3;
  v16 = v3;
  v10 = *(v3 + 24);
  v7 = *(v3 + 32);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v12 = static MailboxName.== infix(_:_:)(v10, v7, a1, a2);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0990700(v11, v15);
  if (v12)
  {
    v20 = *(v11 + 8);
    sub_1B09916E0(&v20, v14);
    v13 = v20;
    sub_1B03D00F4();
    v5 = sub_1B0E45528();
    sub_1B075D3E8(&v13);
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  sub_1B09907DC(v11);
  return v6 & 1;
}

uint64_t sub_1B0988D38@<X0>(const void *a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X1>, int a4@<W2>, uint64_t a5@<X3>)
{
  memcpy(__dst, a1, sizeof(__dst));
  result = sub_1B0988E8C(a3, a4, a5);
  if (result)
  {
    v9 = __dst[1];
    v10 = __dst[2];
    sub_1B03B2000(__dst[1], __dst[2]);
    result = sub_1B0988FC8();
    v11 = v9;
    v12 = v10;
    v13 = result;
    v14 = v8;
    v15 = v7 & 1 | ((v6 & 1) << 8);
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 512;
  }

  *a2 = v11;
  *(a2 + 8) = v12;
  *(a2 + 16) = v13;
  *(a2 + 24) = v14;
  *(a2 + 32) = v15;
  return result;
}

uint64_t sub_1B0988E8C(uint64_t a1, int a2, uint64_t a3)
{
  v18 = a1;
  v19 = a2;
  v17 = a3;
  v16 = v3;
  v10 = *(v3 + 24);
  v7 = *(v3 + 32);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v12 = static MailboxName.== infix(_:_:)(v10, v7, a1, a2);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0990C1C(v11, v15);
  if (v12)
  {
    v20 = *(v11 + 8);
    sub_1B09916E0(&v20, v14);
    v13 = v20;
    sub_1B03D00F4();
    v5 = sub_1B0E45528();
    sub_1B075D3E8(&v13);
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  sub_1B0990D34(v11);
  return v6 & 1;
}

uint64_t sub_1B0989048@<X0>(const void *a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X1>, int a4@<W2>, uint64_t a5@<X3>)
{
  memcpy(__dst, a1, sizeof(__dst));
  result = sub_1B098919C(a3, a4, a5);
  if (result)
  {
    v9 = __dst[1];
    v10 = __dst[2];
    sub_1B03B2000(__dst[1], __dst[2]);
    result = sub_1B09892D0();
    v11 = v9;
    v12 = v10;
    v13 = result;
    v14 = v8;
    v15 = v7 & 1 | ((v6 & 1) << 8);
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 512;
  }

  *a2 = v11;
  *(a2 + 8) = v12;
  *(a2 + 16) = v13;
  *(a2 + 24) = v14;
  *(a2 + 32) = v15;
  return result;
}

uint64_t sub_1B098919C(uint64_t a1, int a2, uint64_t a3)
{
  v18 = a1;
  v19 = a2;
  v17 = a3;
  v16 = v3;
  v10 = *(v3 + 24);
  v7 = *(v3 + 32);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v12 = static MailboxName.== infix(_:_:)(v10, v7, a1, a2);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0991278(v11, v15);
  if (v12)
  {
    v20 = *(v11 + 8);
    sub_1B09916E0(&v20, v14);
    v13 = v20;
    sub_1B03D00F4();
    v5 = sub_1B0E45528();
    sub_1B075D3E8(&v13);
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  sub_1B098FDF4(v11);
  return v6 & 1;
}

uint64_t sub_1B0989350(uint64_t a1, int a2, int a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = a1;
  v13 = a2;
  v11 = a3;
  v10[1] = a4;
  v10[2] = a5;
  v10[3] = a6;
  v10[4] = a7;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v10[0] = a5;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E32F0, &qword_1B0EA10E8);
  sub_1B0991014();
  v8 = sub_1B0E45028();

  sub_1B039E440(v10);
  return v8 & 1;
}

uint64_t sub_1B0989484(uint64_t a1, int a2, uint64_t a3, int a4)
{
  memset(__b, 0, sizeof(__b));
  v18 = *(a1 + 8);
  v17 = *(a1 + 16);
  v19 = *(a1 + 24);
  v16 = *(a1 + 32);
  v4 = *(a1 + 36);
  v5 = *(a1 + 40);
  v6 = *(a1 + 41);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v20 = *(a1 + 64);
  LODWORD(__b[0]) = *a1;
  __b[1] = v18;
  __b[2] = v17;
  __b[3] = v19;
  __b[4] = __PAIR64__(v4, v16);
  LOBYTE(__b[5]) = v5;
  BYTE1(__b[5]) = v6;
  __b[6] = v7;
  LOBYTE(__b[7]) = v8 & 1;
  __b[8] = v20;
  v21 = sub_1B06E5FB4(v5 & 1, 0);
  sub_1B03B2000(v18, v17);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  MEMORY[0x1E69E5928](v20);
  if (v21)
  {
    sub_1B0714E4C();
    v12 = sub_1B0E45ED8();
  }

  else
  {
    v12 = 0;
  }

  sub_1B0391D50(v18, v17);

  MEMORY[0x1E69E5920](v20);
  sub_1B03B2000(v18, v17);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  MEMORY[0x1E69E5928](v20);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (v12)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v10 = static MailboxName.== infix(_:_:)(v19, v16, a3, a4);

    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  sub_1B0391D50(v18, v17);

  MEMORY[0x1E69E5920](v20);

  return v11 & 1;
}

uint64_t sub_1B09896FC(uint64_t a1, int a2, int a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *&v24 = a6;
  *(&v24 + 1) = a7;
  v31[0] = 0;
  v31[1] = 0;
  memset(__b, 0, sizeof(__b));
  v37 = a1;
  v38 = a2;
  v36 = a3;
  v33 = a4;
  v34 = a5;
  v35 = v24;
  v32 = 2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v30[9] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E32F0, &qword_1B0EA10E8);
  sub_1B0990678();
  sub_1B0E45798();
  v26 = 0x200000002;
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E32F8, &qword_1B0EA10F0);
    sub_1B0E46518();
    memcpy(__dst, v28, sizeof(__dst));
    memcpy(v30, __dst, 0x48uLL);
    if (!v30[3])
    {
      break;
    }

    v14 = v30[1];
    v15 = v30[2];
    v16 = v30[3];
    v17 = v30[4];
    v18 = v30[5];
    v19 = v30[8];
    LODWORD(__b[0]) = v30[0];
    __b[1] = v30[1];
    __b[2] = v30[2];
    __b[3] = v30[3];
    __b[4] = v30[4];
    LOWORD(__b[5]) = v30[5];
    __b[6] = v30[6];
    LOBYTE(__b[7]) = v30[7] & 1;
    __b[8] = v30[8];
    sub_1B0714E4C();
    if (sub_1B0E45ED8() & 1) != 0 && (_s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0(), v13 = static MailboxName.== infix(_:_:)(v16, v17, a1, a2), , (v13))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3350, &unk_1B0EA1138);
      if ((v18 & 1) == 0)
      {
        v10 = v14;
        v11 = v15;
        v12 = v19;
LABEL_10:
        sub_1B0391D50(v10, v11);

        MEMORY[0x1E69E5920](v12);
        sub_1B039E440(v31);
        return 0;
      }

      if (BYTE4(v26) != 2)
      {
        if ((v26 & 0x100000000) == 0)
        {
          v10 = v14;
          v11 = v15;
          v12 = v19;
          goto LABEL_10;
        }

        if (v18)
        {
          LODWORD(v8) = HIDWORD(v26);
          HIDWORD(v8) = HIDWORD(v26);
          goto LABEL_15;
        }

        sub_1B0E46A68();
        __break(1u);
      }

      v32 = v18 & 1;
      LODWORD(v8) = v18 & 1;
      HIDWORD(v8) = v8;
LABEL_15:
      sub_1B0391D50(v14, v15);

      MEMORY[0x1E69E5920](v19);
      v26 = v8;
    }

    else
    {
      sub_1B0391D50(v14, v15);

      MEMORY[0x1E69E5920](v19);
    }
  }

  sub_1B039E440(v31);
  return v26;
}

uint64_t sub_1B0989BEC(uint64_t a1, int a2, int a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = a1;
  v12 = a2;
  v10 = a3;
  v9[2] = a4;
  v9[3] = a5;
  v9[4] = a6;
  v9[5] = a7;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v9[0] = a6;
  sub_1B07167A8();
  sub_1B0E44588();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3308, &qword_1B0EA1100);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1A20, &unk_1B0E9B5B0);
  sub_1B09914B4();
  sub_1B0E44FD8();

  sub_1B039E440(v9);
  return v9[1];
}

unint64_t sub_1B0989D8C()
{
  v2 = qword_1EB6DB1C0;
  if (!qword_1EB6DB1C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E32C0, &unk_1B0EA10C0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB1C0);
    return WitnessTable;
  }

  return v2;
}

char *sub_1B0989E28(uint64_t *a1, char *a2)
{
  v89 = a1;
  v88 = a2;
  v90 = type metadata accessor for InProgressMessageDownload.Completed(0);
  v91 = *(v90 - 8);
  v92 = v90 - 8;
  if ((*(v91 + 48))(v89, 2))
  {
    v44 = type metadata accessor for MessagesBeingDownloaded.PopResult(0);
    memcpy(v88, v89, *(*(v44 - 8) + 64));
  }

  else
  {
    v2 = v89;
    v3 = v88;
    *v88 = *v89;
    v86 = v3 + 8;
    v87 = v2 + 1;
    if (*(v2 + 184) == 255)
    {
      memcpy(v86, v87, 0xB1uLL);
    }

    else
    {
      v4 = v89[1];
      v5 = v89[2];
      v6 = v89[3];
      v7 = v89[4];
      v8 = v89[5];
      v9 = v89[6];
      v69 = v89[7];
      v70 = v89[8];
      v71 = v89[9];
      v72 = v89[10];
      v73 = v89[11];
      v74 = v89[12];
      v75 = v89[13];
      v76 = v89[14];
      v77 = v89[15];
      v78 = v89[16];
      v79 = v89[17];
      v80 = v89[18];
      v81 = v89[19];
      v82 = v89[20];
      v83 = v89[21];
      v84 = v89[22];
      v85 = *(v89 + 184);
      v68 = &v46;
      sub_1B0716BB8(v4, v5, v6, v7, v8, v9, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85);
      v10 = v69;
      v11 = v70;
      v12 = v71;
      v13 = v72;
      v14 = v73;
      v15 = v74;
      v16 = v75;
      v17 = v76;
      v18 = v77;
      v19 = v78;
      v20 = v79;
      v21 = v80;
      v22 = v81;
      v23 = v82;
      v24 = v83;
      v25 = v84;
      v26 = v85;
      v27 = v88;
      *(v88 + 1) = v4;
      *(v27 + 2) = v5;
      *(v27 + 3) = v6;
      *(v27 + 4) = v7;
      *(v27 + 5) = v8;
      *(v27 + 6) = v9;
      *(v27 + 7) = v10;
      *(v27 + 8) = v11;
      *(v27 + 9) = v12;
      *(v27 + 10) = v13;
      *(v27 + 11) = v14;
      *(v27 + 12) = v15;
      *(v27 + 13) = v16;
      *(v27 + 14) = v17;
      *(v27 + 15) = v18;
      *(v27 + 16) = v19;
      *(v27 + 17) = v20;
      *(v27 + 18) = v21;
      *(v27 + 19) = v22;
      *(v27 + 20) = v23;
      *(v27 + 21) = v24;
      *(v27 + 22) = v25;
      v27[184] = v26 & 1;
    }

    __dst = &v88[*(v90 + 24)];
    __src = v89 + *(v90 + 24);
    v66 = _s31PreviouslyDownloadedMessageDataV4MIMEOMa(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload < 2)
    {
      v28 = sub_1B0E443C8();
      (*(*(v28 - 8) + 16))(__dst, __src);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(__dst, __src, *(*(v66 - 8) + 64));
    }

    v56 = 0;
    v29 = _s31PreviouslyDownloadedMessageDataVMa(0);
    v57 = *(v29 + 20);
    v58 = *(__src + *(v29 + 20));
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v30 = v56;
    v31 = v88;
    v32 = v90;
    v33 = v89;
    *(__dst + v57) = v58;
    v59 = &v31[*(v32 + 28)];
    v60 = v33 + *(v32 + 28);
    v61 = type metadata accessor for MessageHeader(v30);
    v62 = *(v61 - 8);
    v63 = v61 - 8;
    if ((*(v62 + 48))(v60, 1))
    {
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E26F0, &unk_1B0E9B4F0);
      memcpy(v59, v60, *(*(v35 - 8) + 64));
    }

    else
    {
      v34 = sub_1B0E443C8();
      (*(*(v34 - 8) + 16))(v59, v60);
      (*(v62 + 56))(v59, 0, 1, v61);
    }

    v36 = v89;
    v37 = v90;
    *&v88[*(v90 + 32)] = *(v89 + *(v90 + 32));
    v47 = *(v37 + 36);
    v48 = *(v36 + *(v37 + 36));
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v38 = v90;
    v39 = v89;
    *&v88[v47] = v48;
    v49 = *(v38 + 40);
    v50 = *(v39 + *(v38 + 40));
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v40 = v88;
    v41 = v90;
    v42 = v89;
    *&v88[v49] = v50;
    v51 = &v40[*(v41 + 44)];
    v52 = v42 + *(v41 + 44);
    v53 = sub_1B0E443C8();
    v54 = *(v53 - 8);
    v55 = v53 - 8;
    if ((*(v54 + 48))(v52, 1))
    {
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2070, &qword_1B0E9F040);
      memcpy(v51, v52, *(*(v43 - 8) + 64));
    }

    else
    {
      (*(v54 + 16))(v51, v52, v53);
      (*(v54 + 56))(v51, 0, 1, v53);
    }

    (*(v91 + 56))(v88, 0, 2, v90);
  }

  return v88;
}

uint64_t sub_1B098A548(uint64_t a1)
{
  v38 = a1;
  v39 = type metadata accessor for InProgressMessageDownload.Completed(0);
  if (!(*(*(v39 - 1) + 48))(v38, 2))
  {
    if (*(v38 + 184) != 255)
    {
      v1 = *(v38 + 8);
      v2 = *(v38 + 16);
      v3 = *(v38 + 24);
      v4 = *(v38 + 32);
      v5 = *(v38 + 40);
      v6 = *(v38 + 48);
      v7 = *(v38 + 56);
      v8 = *(v38 + 64);
      v9 = *(v38 + 72);
      v10 = *(v38 + 80);
      v11 = *(v38 + 88);
      v12 = *(v38 + 96);
      v13 = *(v38 + 104);
      v14 = *(v38 + 112);
      v15 = *(v38 + 120);
      v16 = *(v38 + 128);
      v17 = *(v38 + 136);
      v18 = *(v38 + 144);
      v19 = *(v38 + 152);
      v20 = *(v38 + 160);
      v21 = *(v38 + 168);
      v22 = *(v38 + 176);
      v23 = *(v38 + 184);
      v37 = &v28;
      sub_1B075E1EC(v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23);
    }

    v35 = v38 + v39[6];
    _s31PreviouslyDownloadedMessageDataV4MIMEOMa(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload < 2)
    {
      v24 = sub_1B0E443C8();
      (*(*(v24 - 8) + 8))(v35);
    }

    v33 = 0;
    _s31PreviouslyDownloadedMessageDataVMa(0);

    v34 = v38 + v39[7];
    v25 = type metadata accessor for MessageHeader(v33);
    if (!(*(*(v25 - 8) + 48))(v34, 1))
    {
      v26 = sub_1B0E443C8();
      (*(*(v26 - 8) + 8))(v34);
    }

    v29 = v38 + v39[11];
    v30 = sub_1B0E443C8();
    v31 = *(v30 - 8);
    v32 = v30 - 8;
    if (!(*(v31 + 48))(v29, 1))
    {
      (*(v31 + 8))(v29, v30);
    }
  }

  return v38;
}

uint64_t sub_1B098A8C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  sub_1B0714E4C();
  result = sub_1B0E45ED8();
  if (result)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v6 = static MailboxName.== infix(_:_:)(v9, v10, a4, a5);

    result = v6;
    if (v6)
    {
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1A20, &unk_1B0E9B5B0);
      sub_1B0E454D8();
    }
  }

  return result;
}

uint64_t sub_1B098AA10(uint64_t a1, uint64_t a2, int a3, int a4)
{
  memset(__b, 0, sizeof(__b));
  v15 = *(a1 + 8);
  v16 = *(a1 + 16);
  v17 = *(a1 + 24);
  v12 = *(a1 + 32);
  v4 = *(a1 + 36);
  v5 = *(a1 + 40);
  v6 = *(a1 + 41);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v18 = *(a1 + 64);
  LODWORD(__b[0]) = *a1;
  __b[1] = v15;
  __b[2] = v16;
  __b[3] = v17;
  __b[4] = __PAIR64__(v4, v12);
  LOBYTE(__b[5]) = v5;
  BYTE1(__b[5]) = v6;
  __b[6] = v7;
  LOBYTE(__b[7]) = v8 & 1;
  __b[8] = v18;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v19 = static MailboxName.== infix(_:_:)(v17, v12, a2, a3);

  sub_1B03B2000(v15, v16);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  MEMORY[0x1E69E5928](v18);
  if (v19)
  {
    sub_1B0714E4C();
    v10 = sub_1B0E45ED8();
  }

  else
  {
    v10 = 0;
  }

  sub_1B0391D50(v15, v16);

  MEMORY[0x1E69E5920](v18);
  return v10 & 1;
}

uint64_t sub_1B098ABE0(const void *a1, uint64_t a2, int a3, int a4)
{
  memcpy(__dst, a1, sizeof(__dst));
  v17 = a1;
  v15 = a2;
  v16 = a3;
  v14 = a4;
  v11 = __dst[3];
  v8 = __dst[4];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v12 = static MailboxName.== infix(_:_:)(v11, v8, a2, a3);

  sub_1B0990C1C(__dst, v13);
  if (v12)
  {
    sub_1B0714E4C();
    v5 = sub_1B0E45ED8();
  }

  else
  {
    v5 = 0;
  }

  sub_1B0990D34(__dst);
  return v5 & 1;
}

uint64_t sub_1B098AD24(uint64_t a1)
{
  v115 = &v144;
  v107 = v139;
  v108 = v133;
  v112 = a1;
  v110 = 0;
  memset(v149, 0, sizeof(v149));
  v119 = 0;
  v143[1] = 0;
  v143[0] = 0;
  v141[1] = 0;
  v141[0] = 0;
  v111 = 0u;
  v138 = 0u;
  v137 = 0u;
  v136 = 0u;
  v135 = 0u;
  v133[1] = 0;
  v133[0] = 0;
  v129 = 0;
  v128 = 0;
  v126 = 0;
  v125 = 0u;
  v124 = 0u;
  v123 = 0u;
  v122 = 0u;
  v113 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2E10, &qword_1B0E9B598) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v112);
  v114 = v53 - v113;
  *(v3 + 256) = v2;
  *(v3 + 248) = v1;
  v116 = *(v1 + 8);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v115[28] = v116;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E32F0, &qword_1B0EA10E8);
  v117 = v118;
  sub_1B0990678();
  sub_1B0E45798();
  for (i = v119; ; i = v100)
  {
    v106 = i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E32F8, &qword_1B0EA10F0);
    sub_1B0E46518();
    v4 = v115;
    *(v115 + 9) = *v115;
    v5 = *(v4 + 1);
    v6 = *(v4 + 2);
    v7 = *(v4 + 3);
    v4[17] = v4[8];
    *(v4 + 15) = v7;
    *(v4 + 13) = v6;
    *(v4 + 11) = v5;
    *(v4 + 19) = *(v4 + 9);
    v8 = *(v4 + 11);
    v9 = *(v4 + 13);
    v10 = *(v4 + 15);
    v4[27] = v4[17];
    *(v4 + 25) = v10;
    *(v4 + 23) = v9;
    *(v4 + 21) = v8;
    if (!v4[22])
    {
      break;
    }

    v103 = v115[20];
    v104 = *(v115 + 21);
    v11 = v115[25];
    v105 = v115[27];
    LODWORD(v122) = v145;
    *(&v122 + 1) = v103;
    v123 = v104;
    *&v124 = v146;
    WORD4(v124) = v147;
    *&v125 = v11;
    BYTE8(v125) = v148;
    v126 = v105;
    v121 = v145;
    sub_1B09918CC();
    if (sub_1B0E45528())
    {
      v12 = v105;
      sub_1B0990DA0();
      v101 = swift_allocError();
      *v13 = 2;
      v102 = sub_1B0E42CC8();

      [v105 finishWithError_];
    }

    v100 = v106;
    sub_1B0391D50(v103, v104);
  }

  v14 = v106;
  sub_1B039E440(v149);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v96 = v53;
  MEMORY[0x1EEE9AC00](v53);
  v97 = &v53[-4];
  v53[-2] = v112;
  v98 = sub_1B0990940();
  sub_1B09909C8();
  sub_1B0E45898();
  v99 = v14;
  if (v14)
  {

    __break(1u);
LABEL_28:

    __break(1u);
    goto LABEL_29;
  }

  v92 = *(v109 + 16);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(v107 + 57) = v92;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3308, &qword_1B0EA1100);
  v93 = v94;
  sub_1B0990A50();
  sub_1B0E45798();
  for (j = v99; ; j = v87)
  {
    v91 = j;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3310, qword_1B0EA1108);
    sub_1B0E46518();
    v15 = v107;
    v16 = *(v107 + 22);
    v17 = *(v107 + 26);
    v18 = *(v107 + 30);
    *(v107 + 16) = *(v107 + 34);
    *(v15 + 15) = v18;
    *(v15 + 14) = v17;
    *(v15 + 13) = v16;
    v19 = *(v15 + 38);
    v20 = *(v15 + 42);
    v21 = *(v15 + 46);
    *(v15 + 40) = *(v15 + 25);
    *(v15 + 19) = v21;
    *(v15 + 18) = v20;
    *(v15 + 17) = v19;
    v22 = *(v15 + 13);
    v23 = *(v15 + 14);
    v24 = *(v15 + 15);
    *(v15 + 24) = *(v15 + 16);
    *(v15 + 23) = v24;
    *(v15 + 22) = v23;
    *(v15 + 21) = v22;
    v25 = *(v15 + 17);
    v26 = *(v15 + 18);
    v27 = *(v15 + 19);
    *(v15 + 56) = *(v15 + 40);
    *(v15 + 27) = v27;
    *(v15 + 26) = v26;
    *(v15 + 25) = v25;
    if (!*(v15 + 45))
    {
      break;
    }

    v127 = v142[0];
    sub_1B09918CC();
    if (sub_1B0E45528())
    {
      v90 = *(v107 + 56);
      v28 = v90;
      sub_1B0990DA0();
      v88 = swift_allocError();
      *v29 = 2;
      v89 = sub_1B0E42CC8();

      [v90 finishWithError_];
    }

    v87 = v91;
    sub_1B0990D34(v142);
  }

  v30 = v91;
  sub_1B039E440(v143);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v83 = v53;
  MEMORY[0x1EEE9AC00](v53);
  v84 = &v53[-4];
  v53[-2] = v112;
  v85 = sub_1B0990B0C();
  sub_1B0990B94();
  sub_1B0E45898();
  v86 = v30;
  if (v30)
  {
    goto LABEL_28;
  }

  v79 = *(v109 + 24);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(v107 + 8) = v79;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E32C0, &unk_1B0EA10C0);
  v80 = v81;
  sub_1B0990574();
  sub_1B0E45798();
  for (k = v86; ; k = v54)
  {
    v78 = k;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3358, &qword_1B0EA1148);
    sub_1B0E46518();
    v31 = v108;
    v32 = v107;
    v33 = *(v108 + 11);
    v34 = *(v108 + 13);
    v35 = *(v108 + 15);
    *(v108 + 25) = *(v108 + 17);
    *(v31 + 23) = v35;
    *(v31 + 21) = v34;
    *(v31 + 19) = v33;
    v36 = *(v31 + 19);
    v37 = *(v31 + 21);
    v38 = *(v31 + 23);
    *(v32 + 3) = *(v31 + 25);
    *(v32 + 2) = v38;
    *(v32 + 1) = v37;
    *v32 = v36;
    if (!*(v32 + 3))
    {
      break;
    }

    v39 = v108;
    v40 = v139[0];
    v74 = *(v107 + 1);
    v75 = *(v107 + 2);
    v41 = v75;
    v76 = *(v107 + 3);
    v42 = v76;
    v43 = v139[8];
    v44 = v139[9];
    v45 = *(v107 + 5);
    v46 = v140;
    v77 = *(v107 + 7);
    v47 = v77;
    LODWORD(v135) = v139[0];
    v108[4] = v74;
    v39[5] = v41;
    v39[6] = v42;
    *&v137 = __PAIR64__(v44, v43);
    v39[8] = v45;
    LOBYTE(v138) = v46;
    v39[10] = v47;
    v134 = v40;
    sub_1B09918CC();
    if (sub_1B0E45528())
    {
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v132 = v77;
      v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E32C8, &qword_1B0EA10D0);
      sub_1B098FD6C();
      sub_1B0E45798();
      for (m = v78; ; m = v58)
      {
        v69 = m;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E32D8, &qword_1B0EA10D8);
        sub_1B0E46518();
        v70 = v130;
        v71 = v131;
        if (v130)
        {
          v67 = v70;
          v68 = v71;
          v64 = v71;
          v63 = v70;
          v48 = swift_allocObject();
          v49 = v64;
          *(v48 + 16) = v63;
          *(v48 + 24) = v49;
          v65 = sub_1B098FE40;
          v66 = v48;
        }

        else
        {
          v65 = 0;
          v66 = 0;
        }

        v61 = v66;
        v62 = v65;
        if (!v65)
        {
          break;
        }

        v59 = v62;
        v60 = v61;
        v57 = v61;
        v56 = v62;
        v58 = v69;
        v128 = v62;
        v129 = v61;

        v50 = type metadata accessor for Message(0);
        (*(*(v50 - 8) + 56))(v114, 1);
        v56(v114);
        sub_1B07AF920(v114);
      }

      sub_1B039E440(v133);
      v55 = v69;
    }

    else
    {
      v55 = v78;
    }

    v54 = v55;
    sub_1B0391D50(v74, v75);
  }

  v51 = v78;
  sub_1B039E440(v141);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v53[1] = v53;
  MEMORY[0x1EEE9AC00](v53);
  v53[2] = &v53[-4];
  v53[-2] = v112;
  v53[3] = sub_1B09917BC();
  sub_1B0991844();
  sub_1B0E45898();
  if (!v51)
  {
  }

LABEL_29:

  __break(1u);
  return result;
}

BOOL sub_1B098B868(uint64_t a1, int a2, uint64_t a3, int a4, char a5)
{
  memset(__b, 0, sizeof(__b));
  v19 = *(a1 + 8);
  v18 = *(a1 + 16);
  v20 = *(a1 + 24);
  v16 = *(a1 + 32);
  v5 = *(a1 + 36);
  v17 = *(a1 + 40);
  v6 = *(a1 + 41);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v21 = *(a1 + 64);
  LODWORD(__b[0]) = *a1;
  __b[1] = v19;
  __b[2] = v18;
  __b[3] = v20;
  __b[4] = __PAIR64__(v5, v16);
  LOBYTE(__b[5]) = v17;
  BYTE1(__b[5]) = v6;
  __b[6] = v7;
  LOBYTE(__b[7]) = v8 & 1;
  __b[8] = v21;
  sub_1B0714E4C();
  v23 = sub_1B0E45ED8();
  sub_1B03B2000(v19, v18);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  MEMORY[0x1E69E5928](v21);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (v23)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v11 = static MailboxName.== infix(_:_:)(v20, v16, a3, a4);

    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  sub_1B0391D50(v19, v18);

  MEMORY[0x1E69E5920](v21);

  sub_1B03B2000(v19, v18);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  MEMORY[0x1E69E5928](v21);
  v10 = (v12 & 1) != 0 && sub_1B06E5FB4(v17 & 1, a5 & 1);
  sub_1B0391D50(v19, v18);

  MEMORY[0x1E69E5920](v21);
  return v10;
}

void *sub_1B098BAF0@<X0>(int a1@<W0>, uint64_t a2@<X1>, unsigned int a3@<W2>, unsigned int a4@<W3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, void *a9@<X8>)
{
  v15 = __PAIR64__(a4, a3);
  memset(__b, 0, sizeof(__b));
  v29 = a1;
  v27 = a2;
  v26 = HIDWORD(v15);
  v28 = v15;
  v25 = a5 & 1;
  v24 = a6;
  v22 = a7;
  v23 = a8 & 1;
  LODWORD(__b[0]) = a1;
  __b[1] = sub_1B098C514(a1);
  __b[2] = v9;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  __b[3] = a2;
  __b[4] = v15;
  LOBYTE(__b[5]) = a5 & 1;
  __b[6] = MessageSize.init(rawValue:)(a7, a8 & 1);
  LOBYTE(__b[7]) = v10 & 1;
  BYTE1(__b[5]) = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3360, &qword_1B0EA1150);
  v11 = sub_1B071952C();
  __b[8] = sub_1B098C644(v11);
  memcpy(__dst, __b, sizeof(__dst));
  sub_1B0990700(__dst, v21);

  sub_1B09907DC(__b);
  return memcpy(a9, __dst, 0x48uLL);
}

uint64_t sub_1B098BCA4(void (*a1)(void, void, void), uint64_t a2)
{
  v3 = v2;
  v8 = v3;
  v7 = *(v3 + 96);
  v10 = *(v3 + 104);

  v5 = swift_allocObject();
  v5[2] = v7;
  v5[3] = v10;
  v5[4] = a1;
  v5[5] = a2;
  *(v8 + 96) = sub_1B0991944;
  *(v8 + 104) = v5;

  a1(*(v8 + 72), *(v8 + 80) & 1, *(v8 + 88));
}

void *sub_1B098BDF8@<X0>(int a1@<W0>, uint64_t a2@<X1>, unsigned int a3@<W2>, unsigned int a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v19 = __PAIR64__(a4, a3);
  memset(__b, 0, sizeof(__b));
  v39 = a1;
  v37 = a2;
  v36 = HIDWORD(v19);
  v38 = v19;
  v35 = a5;
  v34 = a6;
  v32 = a7;
  v33 = a8 & 1;
  v30 = a10;
  v31 = a11;
  LODWORD(__b[0]) = a1;
  __b[1] = sub_1B098C514(a1);
  __b[2] = v11;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  __b[3] = a2;
  __b[4] = v19;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  __b[5] = a5;
  LOBYTE(__b[6]) = a6;
  __b[7] = MessageSize.init(rawValue:)(a7, a8 & 1);
  LOBYTE(__b[8]) = v12 & 1;
  sub_1B0975AD4();
  v27 = v13;
  v28 = v14;
  v29 = v15;
  __b[9] = v13;
  LOBYTE(__b[10]) = v14 & 1;
  __b[11] = v15;

  __b[12] = a10;
  __b[13] = a11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3360, &qword_1B0EA1150);
  v16 = sub_1B039A494();
  __b[14] = sub_1B098C644(v16);
  memcpy(__dst, __b, sizeof(__dst));
  sub_1B0990C1C(__dst, v26);

  sub_1B0990D34(__b);
  return memcpy(a9, __dst, 0x78uLL);
}

void *sub_1B098C054@<X0>(int a1@<W0>, uint64_t a2@<X1>, unsigned int a3@<W2>, unsigned int a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v17 = __PAIR64__(a4, a3);
  memset(__b, 0, sizeof(__b));
  v32 = a1;
  v30 = a2;
  v29 = HIDWORD(v17);
  v31 = v17;
  v27 = a5;
  v28 = a6 & 1;
  v25 = a7;
  v26 = a8;
  LODWORD(__b[0]) = a1;
  __b[1] = sub_1B098C514(a1);
  __b[2] = v9;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  __b[3] = a2;
  __b[4] = v17;
  __b[5] = MessageSize.init(rawValue:)(a5, a6 & 1);
  LOBYTE(__b[6]) = v10 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3368, &qword_1B0EA1158);
  sub_1B0E46A48();
  v20 = v11;

  v12 = swift_allocObject();
  *(v12 + 16) = a7;
  *(v12 + 24) = a8;
  *v20 = sub_1B0991330;
  v20[1] = v12;
  sub_1B0394964();
  __b[7] = v13;
  memcpy(__dst, __b, sizeof(__dst));
  sub_1B0991278(__dst, v24);

  sub_1B098FDF4(__b);
  return memcpy(a9, __dst, 0x40uLL);
}

uint64_t sub_1B098C26C(uint64_t a1, char a2, uint64_t a3, void (*a4)(uint64_t, void, uint64_t), uint64_t a5, void (*a6)(uint64_t, void, uint64_t))
{

  a4(a1, a2 & 1, a3);

  a6(a1, a2 & 1, a3);
}

uint64_t sub_1B098C3B0()
{
  v2 = *(v0 + 8);
  sub_1B03B2000(v2, *(v0 + 16));
  return v2;
}

uint64_t sub_1B098C3E8(uint64_t a1, unint64_t a2)
{
  sub_1B03B2000(a1, a2);
  v3 = *(v2 + 8);
  v4 = *(v2 + 16);
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  sub_1B0391D50(v3, v4);
  return sub_1B0391D50(a1, a2);
}

uint64_t sub_1B098C438()
{
  v2 = *(v0 + 24);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v2;
}

uint64_t sub_1B098C470(uint64_t a1, int a2)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
}

uint64_t sub_1B098C500(uint64_t result, char a2)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2 & 1;
  return result;
}

uint64_t sub_1B098C514(int a1)
{
  v12 = 0;
  v13 = 0;
  v11[0] = 0;
  v11[1] = a1;
  UInt32.init(_:)();
  v11[0] = v1;
  sub_1B098F41C(v11, sub_1B03B1F98, 0, MEMORY[0x1E69E7668], MEMORY[0x1E69E73E0], MEMORY[0x1E6969080], v8, &v9);
  v5 = v9;
  v6 = v10;
  sub_1B03B2000(v9, v10);
  OpaquePersistedMessageIdentifier.init(rawValue:)();
  v12 = v2;
  v13 = v3;
  sub_1B0391D50(v5, v6);
  v7 = v12;
  sub_1B03B2000(v12, v13);
  sub_1B075D3E8(&v12);
  return v7;
}

uint64_t sub_1B098C68C()
{
  v2 = *(v0 + 40);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v2;
}

uint64_t sub_1B098C6B8(uint64_t a1)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(v1 + 40) = a1;
}

uint64_t sub_1B098C734(uint64_t result, char a2, uint64_t a3)
{
  *(v3 + 72) = result;
  *(v3 + 80) = a2 & 1;
  *(v3 + 88) = a3;
  return result;
}

uint64_t sub_1B098C76C()
{
  v2 = *(v0 + 96);

  return v2;
}

uint64_t sub_1B098C7A4(uint64_t a1, uint64_t a2)
{

  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
}

uint64_t sub_1B098C7F0()
{
  v2 = *(v0 + 112);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

uint64_t sub_1B098C824(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v2 = *(v1 + 112);
  *(v1 + 112) = a1;
  MEMORY[0x1E69E5920](v2);
  return MEMORY[0x1E69E5920](a1);
}

uint64_t sub_1B098C878()
{
  v2 = *(v0 + 56);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v2;
}

uint64_t sub_1B098C8A4(uint64_t a1)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(v1 + 56) = a1;
}

uint64_t sub_1B098C8E0(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[1] = a1;
  v18[2] = a2;
  v18[3] = a3;
  v18[4] = a4;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v18[0] = a2;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E32F0, &qword_1B0EA10E8);
  v4 = sub_1B0990678();
  sub_1B039CA88(sub_1B098CB6C, 0, v14, &type metadata for DownloadRequest, MEMORY[0x1E69E73E0], v4, MEMORY[0x1E69E7410], v15);
  sub_1B039E440(v18);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v17 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3308, &qword_1B0EA1100);
  v5 = sub_1B0990A50();
  sub_1B039CA88(sub_1B098CC6C, 0, v10, &type metadata for DownloadRequest, MEMORY[0x1E69E73E0], v5, MEMORY[0x1E69E7410], v15);
  sub_1B039E440(&v17);
  sub_1B0E45238();

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v16 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E32C0, &unk_1B0EA10C0);
  v6 = sub_1B0990574();
  sub_1B039CA88(sub_1B098CD6C, 0, v9, &type metadata for DownloadRequest, MEMORY[0x1E69E73E0], v6, MEMORY[0x1E69E7410], v15);
  sub_1B039E440(&v16);
  v8 = sub_1B0E45238();

  return v8;
}

void *sub_1B098CB6C@<X0>(void *__src@<X0>, void *a2@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_1B098CBD4(v4);
  return memcpy(a2, v4, 0x31uLL);
}

void *sub_1B098CBD4@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 3);
  v5 = v1[8];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v6 = *(v1 + 1);
  v7 = *(v1 + 2);
  sub_1B03B2000(v6, v7);
  DownloadRequest.init(id:mailbox:message:kind:qos:)(v3, v4, v5, v6, v7, 0, *(v1 + 41), v9);
  return memcpy(a1, v9, 0x31uLL);
}

void *sub_1B098CC6C@<X0>(void *__src@<X0>, void *a2@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_1B098CCD4(v4);
  return memcpy(a2, v4, 0x31uLL);
}

void *sub_1B098CCD4@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 3);
  v5 = v1[8];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v6 = *(v1 + 1);
  v7 = *(v1 + 2);
  sub_1B03B2000(v6, v7);
  DownloadRequest.init(id:mailbox:message:kind:qos:)(v3, v4, v5, v6, v7, 0, *(v1 + 48), v9);
  return memcpy(a1, v9, 0x31uLL);
}

void *sub_1B098CD6C@<X0>(void *__src@<X0>, void *a2@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_1B098CDD4(v4);
  return memcpy(a2, v4, 0x31uLL);
}

void *sub_1B098CDD4@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 3);
  v5 = v1[8];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v6 = *(v1 + 1);
  v7 = *(v1 + 2);
  sub_1B03B2000(v6, v7);
  DownloadRequest.init(id:mailbox:message:kind:qos:)(v3, v4, v5, v6, v7, 0, 1, v9);
  return memcpy(a1, v9, 0x31uLL);
}

void sub_1B098CE6C(unsigned int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v16[1] = a1;
  v16[2] = a2;
  v16[3] = a3;
  v16[4] = a4;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v16[0] = a2;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E32F0, &qword_1B0EA10E8);
  v5 = sub_1B0990678();
  sub_1B039CA88(sub_1B098D020, 0, v13, &unk_1F26F2158, MEMORY[0x1E69E73E0], v5, MEMORY[0x1E69E7410], v14);
  sub_1B039E440(v16);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v15 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3308, &qword_1B0EA1100);
  v6 = sub_1B0990A50();
  sub_1B039CA88(sub_1B098D300, 0, v9, &unk_1F26F2278, MEMORY[0x1E69E73E0], v6, MEMORY[0x1E69E7410], v14);
  sub_1B039E440(&v15);
  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
  *a5 = v7;
  a5[1] = v8;
}

void *sub_1B098D020@<X0>(void *__src@<X0>, void *a2@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_1B0990700(__dst, v4);
  sub_1B098D090(__dst, v5);
  return memcpy(a2, v5, 0x29uLL);
}

void *sub_1B098D090@<X0>(unsigned int *a1@<X0>, void *a2@<X8>)
{
  memset(__b, 0, 0x29uLL);
  v20 = a1;
  WORD2(__b[3]) = 514;
  __b[4] = 0;
  LOBYTE(__b[5]) = 1;
  UInt32.init(_:)();
  LODWORD(__b[0]) = v2;
  v8 = *(a1 + 3);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v9 = MailboxName.debugDescription.getter(v8);
  v10 = v3;

  v18 = v9;
  v19 = v10;
  sub_1B03F5BE0();
  sub_1B0E45738();
  v11 = sub_1B0E44EC8();
  v12 = v4;

  __b[1] = v11;
  __b[2] = v12;
  v25 = a1[9];
  v17[0] = v25;
  v13 = sub_1B07467B8();
  v5 = sub_1B041C1E8();
  BinaryInteger.init<A>(_:)(v17, MEMORY[0x1E69E7668], &type metadata for UID, v13, v5);
  LODWORD(__b[3]) = v17[1];
  v24 = a1[10] & 1;
  v26 = v24 & 1;
  if (v24)
  {
    BYTE4(__b[3]) = 1;
  }

  else
  {
    BYTE5(__b[3]) = 1;
  }

  v22 = *(a1 + 6);
  v23 = *(a1 + 56);
  v27 = v22;
  v28 = v23;
  if ((v23 & 1) == 0)
  {
    __b[4] = v27;
    LOBYTE(__b[5]) = 0;
  }

  memcpy(__dst, __b, 0x29uLL);
  sub_1B0991998(__dst, v15);
  sub_1B09907DC(a1);
  sub_1B043C118(__b);
  return memcpy(a2, __dst, 0x29uLL);
}

void *sub_1B098D300@<X0>(void *__src@<X0>, void *a2@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_1B0990C1C(__dst, v4);
  sub_1B098D378(__dst, v5);
  return memcpy(a2, v5, 0x30uLL);
}

uint64_t sub_1B098D378@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  memset(__b, 0, sizeof(__b));
  v30 = a1;
  UInt32.init(_:)();
  v16 = v2;
  LODWORD(__b[0]) = v2;
  v11 = *(a1 + 3);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v12 = MailboxName.debugDescription.getter(v11);
  v13 = v3;

  v28 = v12;
  v29 = v13;
  sub_1B03F5BE0();
  sub_1B0E45738();
  v17 = sub_1B0E44EC8();
  v18 = v4;

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  __b[1] = v17;
  __b[2] = v18;
  v33 = a1[9];
  v26 = v33;
  v14 = sub_1B07467B8();
  v5 = sub_1B041C1E8();
  BinaryInteger.init<A>(_:)(&v26, MEMORY[0x1E69E7668], &type metadata for UID, v14, v5);
  v19 = v27;
  LODWORD(__b[3]) = v27;
  v25[0] = sub_1B0E46A28();
  v25[1] = v6;
  v7 = sub_1B0E44838();
  MEMORY[0x1B2728B30](v7);

  v32 = *(a1 + 5);
  sub_1B074E7A8(&v32, &v24);
  v23 = v32;
  sub_1B0E469E8();
  sub_1B039E440(&v23);
  v8 = sub_1B0E44838();
  MEMORY[0x1B2728B30](v8);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B03B1198(v25);
  v22 = sub_1B0E44C88();
  v20 = v9;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  __b[4] = v22;
  __b[5] = v20;
  sub_1B0990D34(a1);
  sub_1B0991A10();
  result = v22;
  *a2 = v16;
  *(a2 + 8) = v17;
  *(a2 + 16) = v18;
  *(a2 + 24) = v19;
  *(a2 + 32) = v22;
  *(a2 + 40) = v20;
  return result;
}

uint64_t sub_1B098D66C(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  return result;
}

uint64_t sub_1B098D680(uint64_t a1, uint64_t a2)
{
  v24[2] = a1;
  v24[3] = a2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v24[0] = sub_1B0E44838();
  v24[1] = v2;
  v23[2] = a1;
  v23[3] = a2;
  v18 = MEMORY[0x1B2726DE0](v24[0], v2, a1, a2);
  sub_1B03B1198(v24);
  if (v18)
  {

    v25 = 0;
    v15 = 0;
LABEL_14:

    return v15;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v23[0] = sub_1B0E44838();
  v23[1] = v3;
  v22[2] = a1;
  v22[3] = a2;
  v14 = MEMORY[0x1B2726DE0](v23[0], v3, a1, a2);
  sub_1B03B1198(v23);
  if (v14)
  {

    v25 = 1;
    v15 = 1;
    goto LABEL_14;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v22[0] = sub_1B0E44838();
  v22[1] = v4;
  v21[2] = a1;
  v21[3] = a2;
  v13 = MEMORY[0x1B2726DE0](v22[0], v4, a1, a2);
  sub_1B03B1198(v22);
  if (v13)
  {

    v25 = 2;
    v15 = 2;
    goto LABEL_14;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v21[0] = sub_1B0E44838();
  v21[1] = v5;
  v20[2] = a1;
  v20[3] = a2;
  v12 = MEMORY[0x1B2726DE0](v21[0], v5, a1, a2);
  sub_1B03B1198(v21);
  if (v12)
  {

    v25 = 3;
    v15 = 3;
    goto LABEL_14;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v20[0] = sub_1B0E44838();
  v20[1] = v6;
  v19[2] = a1;
  v19[3] = a2;
  v11 = MEMORY[0x1B2726DE0](v20[0], v6, a1, a2);
  sub_1B03B1198(v20);
  if (v11)
  {

    v25 = 4;
    v15 = 4;
    goto LABEL_14;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v19[0] = sub_1B0E44838();
  v19[1] = v7;
  v10 = MEMORY[0x1B2726DE0](v19[0], v7, a1, a2);
  sub_1B03B1198(v19);
  if (v10)
  {

    v25 = 5;
    v15 = 5;
    goto LABEL_14;
  }

  return 6;
}

uint64_t sub_1B098DC58(uint64_t a1)
{
  v21 = a1;
  v40 = 0;
  v39 = 0;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E33D0, &qword_1B0EA1C98);
  v22 = *(v29 - 8);
  v23 = v29 - 8;
  v24 = (*(v22 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v21);
  v27 = v6 - v24;
  v40 = v2;
  v39 = v1;
  v25 = v2[3];
  v26 = v2[4];
  __swift_project_boxed_opaque_existential_0(v2, v25);
  sub_1B0991AC4();
  sub_1B0E46D48();
  v3 = v30;
  v38 = 0;
  sub_1B0E46988();
  v31 = v3;
  v32 = v3;
  if (v3)
  {
    v7 = v32;
    result = (*(v22 + 8))(v27, v29);
    v8 = v7;
  }

  else
  {
    v17 = *(v28 + 8);
    v18 = *(v28 + 16);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v37 = 1;
    sub_1B0E46928();
    v19 = 0;
    v20 = 0;

    v4 = v19;
    v36 = 2;
    sub_1B0E46988();
    v15 = v4;
    v16 = v4;
    if (v4)
    {
      v6[3] = v16;
    }

    else
    {
      v35 = 3;
      sub_1B0E468D8();
      v13 = 0;
      v14 = 0;
      v34 = 4;
      sub_1B0E468D8();
      v11 = 0;
      v12 = 0;
      v33 = 5;
      sub_1B0E468E8();
      v9 = 0;
      v10 = 0;
    }

    return (*(v22 + 8))(v27, v29);
  }

  return result;
}

uint64_t sub_1B098E104@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B098D680(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B098E204(uint64_t a1, uint64_t a2)
{
  v18[2] = a1;
  v18[3] = a2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v18[0] = sub_1B0E44838();
  v18[1] = v2;
  v17[2] = a1;
  v17[3] = a2;
  v14 = MEMORY[0x1B2726DE0](v18[0], v2, a1, a2);
  sub_1B03B1198(v18);
  if (v14)
  {

    v19 = 0;
    v11 = 0;
LABEL_10:

    return v11;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v17[0] = sub_1B0E44838();
  v17[1] = v3;
  v16[2] = a1;
  v16[3] = a2;
  v10 = MEMORY[0x1B2726DE0](v17[0], v3, a1, a2);
  sub_1B03B1198(v17);
  if (v10)
  {

    v19 = 1;
    v11 = 1;
    goto LABEL_10;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v16[0] = sub_1B0E44838();
  v16[1] = v4;
  v15[2] = a1;
  v15[3] = a2;
  v9 = MEMORY[0x1B2726DE0](v16[0], v4, a1, a2);
  sub_1B03B1198(v16);
  if (v9)
  {

    v19 = 2;
    v11 = 2;
    goto LABEL_10;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v15[0] = sub_1B0E44838();
  v15[1] = v5;
  v8 = MEMORY[0x1B2726DE0](v15[0], v5, a1, a2);
  sub_1B03B1198(v15);
  if (v8)
  {

    v19 = 3;
    v11 = 3;
    goto LABEL_10;
  }

  return 4;
}

BOOL sub_1B098E4F8(char a1, char a2)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 1;
    }

    else if (a1 == 2)
    {
      v4 = 2;
    }

    else
    {
      v4 = 3;
    }
  }

  else
  {
    v4 = 0;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 1;
    }

    else if (a2 == 2)
    {
      v3 = 2;
    }

    else
    {
      v3 = 3;
    }
  }

  else
  {
    v3 = 0;
  }

  return v4 == v3;
}

uint64_t sub_1B098E854(uint64_t a1)
{
  v19 = a1;
  v36 = 0;
  v35 = 0;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E33D8, &unk_1B0EA1CA0);
  v20 = *(v27 - 8);
  v21 = v27 - 8;
  v22 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v19);
  v25 = v6 - v22;
  v36 = v2;
  v35 = v1;
  v23 = v2[3];
  v24 = v2[4];
  __swift_project_boxed_opaque_existential_0(v2, v23);
  sub_1B0991BBC();
  sub_1B0E46D48();
  v3 = v28;
  v34 = 0;
  sub_1B0E46988();
  v29 = v3;
  v30 = v3;
  if (v3)
  {
    v7 = v30;
    result = (*(v20 + 8))(v25, v27);
    v8 = v7;
  }

  else
  {
    v15 = v26[1];
    v16 = v26[2];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v33 = 1;
    sub_1B0E46928();
    v17 = 0;
    v18 = 0;

    v4 = v17;
    v32 = 2;
    sub_1B0E46988();
    v13 = v4;
    v14 = v4;
    if (v4)
    {
      v6[1] = v14;
    }

    else
    {
      v9 = v26[4];
      v10 = v26[5];
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v31 = 3;
      sub_1B0E46928();
      v11 = 0;
      v12 = 0;
    }

    return (*(v20 + 8))(v25, v27);
  }

  return result;
}

uint64_t sub_1B098EBD0(uint64_t a1, uint64_t a2)
{
  v12[2] = a1;
  v12[3] = a2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v12[0] = sub_1B0E44838();
  v12[1] = v2;
  v11[2] = a1;
  v11[3] = a2;
  v10 = MEMORY[0x1B2726DE0](v12[0], v2, a1, a2);
  sub_1B03B1198(v12);
  if (v10)
  {

    v13 = 0;
    v7 = 0;
LABEL_6:

    return v7;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v11[0] = sub_1B0E44838();
  v11[1] = v3;
  v6 = MEMORY[0x1B2726DE0](v11[0], v3, a1, a2);
  sub_1B03B1198(v11);
  if (v6)
  {

    v13 = 1;
    v7 = 1;
    goto LABEL_6;
  }

  return 2;
}

uint64_t sub_1B098EDEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B098E204(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B098EE18@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B098E4E0();
  *a1 = result;
  return result;
}

uint64_t sub_1B098F000(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = a1;
  v19 = a2;
  v11 = a3;
  v33 = 0;
  v31 = 0;
  v32 = 0;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E33B8, &qword_1B0EA1C80);
  v13 = *(v21 - 8);
  v14 = v21 - 8;
  v15 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v18 = v9 - v15;
  v33 = v3;
  v31 = v4;
  v32 = v5;
  v16 = v3[3];
  v17 = v3[4];
  __swift_project_boxed_opaque_existential_0(v3, v16);
  sub_1B0991CB4();
  sub_1B0E46D48();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v24 = &v30;
  v30 = v19;
  v20 = &v29;
  v29 = 0;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E33C0, &qword_1B0EA1C88);
  sub_1B09938B0();
  v6 = v23;
  sub_1B0E46958();
  v25 = v6;
  v26 = v6;
  if (v6)
  {
    v9[2] = v26;
    sub_1B039E440(&v30);
    return (*(v13 + 8))(v18, v21);
  }

  else
  {
    sub_1B039E440(&v30);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v9[6] = &v28;
    v28 = v11;
    v9[4] = &v27;
    v27 = 1;
    v9[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E33C8, &qword_1B0EA1C90);
    sub_1B09939C4();
    v7 = v25;
    sub_1B0E46958();
    v9[7] = v7;
    v10 = v7;
    if (v7)
    {
      v9[1] = v10;
    }

    sub_1B039E440(&v28);
    return (*(v13 + 8))(v18, v21);
  }
}

uint64_t sub_1B098F330@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B098EBD0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B098F41C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v12[2] = a8;
  v13 = a1;
  v14 = a2;
  v15 = a3;
  v16 = a5;
  v18 = a7;
  v19 = "Fatal error";
  v20 = "UnsafeRawBufferPointer with negative count";
  v21 = "Swift/UnsafeRawBufferPointer.swift";
  v29 = a4;
  v28 = a5;
  v27 = a6;
  v22 = *(a5 - 8);
  v23 = a5 - 8;
  v24 = (*(v22 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](a1);
  v25 = v12 - v24;
  v26 = *(*(v9 - 8) + 64);
  if (v26 < 0)
  {
    result = sub_1B0E466C8();
    __break(1u);
  }

  else
  {
    v10 = v17;
    result = (v14)(v13, v13 + v26, v25, v8);
    v12[1] = v10;
    if (v10)
    {
      return (*(v22 + 32))(v18, v25, v16);
    }
  }

  return result;
}

uint64_t sub_1B098F5E4(unsigned __int8 a1, uint64_t a2, char a3)
{
  v25[2] = a1;
  v25[3] = a2;
  v26 = a3;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (a1 == 2)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B07167A8();
    v18 = sub_1B0E454F8();

    if (v18)
    {
      v17 = sub_1B0E44838();
    }

    else
    {
      v17 = sub_1B098FA50(a1, a2, a3 & 1);
    }

    return v17;
  }

  else if (a1)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B07167A8();
    v15 = sub_1B0E454F8();

    if (v15)
    {
      v14 = sub_1B0E44838();
    }

    else
    {
      v23[0] = sub_1B0E46A28();
      v23[1] = v3;
      v4 = sub_1B0E44838();
      MEMORY[0x1B2728B30](v4);

      v22[0] = sub_1B098FA50(a1, a2, a3 & 1);
      v22[1] = v5;
      sub_1B0E46A08();
      sub_1B03B1198(v22);
      v6 = sub_1B0E44838();
      MEMORY[0x1B2728B30](v6);

      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B03B1198(v23);
      v14 = sub_1B0E44C88();
    }

    return v14;
  }

  else
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B07167A8();
    v13 = sub_1B0E454F8();

    if (v13)
    {
      v12 = sub_1B0E44838();
    }

    else
    {
      v25[0] = sub_1B0E46A28();
      v25[1] = v7;
      v8 = sub_1B0E44838();
      MEMORY[0x1B2728B30](v8);

      v24[0] = sub_1B098FA50(a1, a2, a3 & 1);
      v24[1] = v9;
      sub_1B0E46A08();
      sub_1B03B1198(v24);
      v10 = sub_1B0E44838();
      MEMORY[0x1B2728B30](v10);

      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B03B1198(v25);
      v12 = sub_1B0E44C88();
    }

    return v12;
  }
}

uint64_t sub_1B098FA50(unsigned __int8 a1, uint64_t a2, char a3)
{
  v18[2] = a1;
  v18[3] = a2;
  v19 = a3;
  v18[0] = sub_1B0E46A28();
  v18[1] = v3;
  v4 = sub_1B0E44838();
  MEMORY[0x1B2728B30](v4);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v17 = a2;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1A20, &unk_1B0E9B5B0);
  v5 = sub_1B07F37E8();
  v9 = sub_1B039CA88(sub_1B07AA064, 0, v13, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], v5, MEMORY[0x1E69E7410], v14);
  sub_1B039E440(&v17);
  v16 = v9;
  sub_1B0E44838();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
  sub_1B03B11C4();
  v10 = sub_1B0E448E8();
  v11 = v6;

  sub_1B039E440(&v16);
  v15[0] = v10;
  v15[1] = v11;
  sub_1B0E46A08();
  sub_1B03B1198(v15);
  v7 = sub_1B0E44838();
  MEMORY[0x1B2728B30](v7);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B03B1198(v18);
  return sub_1B0E44C88();
}

unint64_t sub_1B098FD6C()
{
  v2 = qword_1EB6E32D0;
  if (!qword_1EB6E32D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E32C8, &qword_1B0EA10D0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E32D0);
    return WitnessTable;
  }

  return v2;
}

void sub_1B098FDF4(uint64_t a1)
{
  sub_1B0391D50(*(a1 + 8), *(a1 + 16));
}

char *sub_1B098FEB0(char *a1, char *a2)
{
  v8 = type metadata accessor for MailboxPersistenceHelper.DownloadResult(0);
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(a1, 1))
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E32E0, &qword_1B0EA10E0);
    memcpy(a2, a1, *(*(v4 - 8) + 64));
  }

  else
  {
    v2 = sub_1B0E443C8();
    (*(*(v2 - 8) + 32))(a2, a1);
    v3 = type metadata accessor for InProgressMessageDownload.EMLX(0);
    memcpy(&a2[*(v3 + 20)], &a1[*(v3 + 20)], 0x28uLL);
    *&a2[*(v8 + 20)] = *&a1[*(v8 + 20)];
    a2[*(v8 + 24)] = a1[*(v8 + 24)] & 1;
    (*(v9 + 56))();
  }

  return a2;
}

char *sub_1B0990044(char *a1, char *a2)
{
  v17 = type metadata accessor for MailboxPersistenceHelper.DownloadResult(0);
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(a1, 1))
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E32E0, &qword_1B0EA10E0);
    memcpy(a2, a1, *(*(v4 - 8) + 64));
  }

  else
  {
    v2 = sub_1B0E443C8();
    (*(*(v2 - 8) + 16))(a2, a1);
    v3 = type metadata accessor for InProgressMessageDownload.EMLX(0);
    v11 = &a2[*(v3 + 20)];
    v10 = &a1[*(v3 + 20)];
    v6 = *v10;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    *v11 = v6;
    v7 = *(v10 + 1);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    *(v11 + 1) = v7;
    v8 = *(v10 + 2);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    *(v11 + 2) = v8;
    v9 = *(v10 + 3);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    *(v11 + 3) = v9;
    v12 = *(v10 + 4);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    *(v11 + 4) = v12;
    v13 = *(v17 + 20);
    v14 = *&a1[v13];
    MEMORY[0x1E69E5928](v14);
    *&a2[v13] = v14;
    a2[*(v17 + 24)] = a1[*(v17 + 24)];
    (*(v18 + 56))();
  }

  return a2;
}

uint64_t sub_1B099027C()
{
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E32E0, &qword_1B0EA10E0) - 8);
  v15 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v14 = (v15 + *(v12 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v1 = type metadata accessor for InProgressMessageDownload.Completed(0);
  v16 = (((v14 + 15) & 0xFFFFFFFFFFFFFFF8) + 12 + *(*(v1 - 8) + 80)) & ~*(*(v1 - 8) + 80);
  v13 = v16 + *(*(v1 - 8) + 64);
  v2 = _s6LoggerVMa_1(0);
  v3 = (v14 + 15) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v13 + *(*(v2 - 8) + 80)) & ~*(*(v2 - 8) + 80);
  v5 = (v4 + *(*(v2 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + v14);
  v7 = *(v0 + v3);
  v8 = *(v0 + v3 + 8);
  v9 = *(v0 + v5);
  v10 = *(v0 + v5 + 8);

  return sub_1B093840C((v0 + v15), v6, v7, v8, v0 + v16, v0 + v4, v9, v10);
}

uint64_t sub_1B099045C(uint64_t a1)
{
  v4 = type metadata accessor for MailboxPersistenceHelper.DownloadResult(0);
  if (!(*(*(v4 - 8) + 48))(a1, 1))
  {
    v1 = sub_1B0E443C8();
    (*(*(v1 - 8) + 8))(a1);
    type metadata accessor for InProgressMessageDownload.EMLX(0);

    MEMORY[0x1E69E5920](*(a1 + *(v4 + 20)));
  }

  return a1;
}

unint64_t sub_1B0990574()
{
  v2 = qword_1EB6DB1B8;
  if (!qword_1EB6DB1B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E32C0, &unk_1B0EA10C0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB1B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B09905FC()
{
  v2 = qword_1EB6E32E8;
  if (!qword_1EB6E32E8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E32E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0990678()
{
  v2 = qword_1EB6DB208;
  if (!qword_1EB6DB208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E32F0, &qword_1B0EA10E8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB208);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B0990700(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  sub_1B03B2000(v3, v4);
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  v6 = *(a1 + 24);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(a2 + 24) = v6;
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 36) = *(a1 + 36);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 41) = *(a1 + 41);
  *(a2 + 48) = *(a1 + 48);
  *(a2 + 56) = *(a1 + 56);
  v7 = *(a1 + 64);
  MEMORY[0x1E69E5928](v7);
  result = a2;
  *(a2 + 64) = v7;
  return result;
}

void *sub_1B09907DC(void *a1)
{
  sub_1B0391D50(a1[1], a1[2]);

  MEMORY[0x1E69E5920](a1[8]);
  return a1;
}

uint64_t sub_1B0990858(uint64_t a1)
{
  if (*(a1 + 16) != 1)
  {
    if (*(a1 + 8) > 1uLL)
    {
    }
  }

  return a1;
}

unint64_t sub_1B0990940()
{
  v2 = qword_1EB6DB218;
  if (!qword_1EB6DB218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E32F0, &qword_1B0EA10E8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB218);
    return WitnessTable;
  }

  return v2;
}