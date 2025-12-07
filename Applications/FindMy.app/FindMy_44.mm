unint64_t FMSoundPlatterViewLayout.description.getter(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v4 = 0x79616C50746F6E2ELL;
    v5 = 0x536465756575712ELL;
    v6 = 0x676E6979616C702ELL;
    if (a1 != 3)
    {
      v6 = 0xD000000000000018;
    }

    if (a1 != 2)
    {
      v5 = v6;
    }

    if (a1)
    {
      v4 = 0x676E69646E65702ELL;
    }

    if (a1 <= 1u)
    {
      return v4;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0xD000000000000017;
    if (a1 == 6)
    {
      v1 = 0xD000000000000018;
    }

    if (a1 == 5)
    {
      v2 = 0xD000000000000018;
    }

    else
    {
      v2 = v1;
    }

    if (a1 <= 7u)
    {
      return v2;
    }

    else
    {
      return 0xD000000000000017;
    }
  }
}

unint64_t sub_1004997D8()
{
  result = qword_1006C1B30;
  if (!qword_1006C1B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C1B30);
  }

  return result;
}

unint64_t sub_100499830()
{
  result = qword_1006C1B38;
  if (!qword_1006C1B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C1B38);
  }

  return result;
}

unint64_t sub_100499884()
{
  result = qword_1006C1B40;
  if (!qword_1006C1B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C1B40);
  }

  return result;
}

unint64_t sub_1004998DC()
{
  result = qword_1006C1B48;
  if (!qword_1006C1B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C1B48);
  }

  return result;
}

unint64_t sub_100499934()
{
  result = qword_1006C1B50;
  if (!qword_1006C1B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C1B50);
  }

  return result;
}

unint64_t sub_10049998C()
{
  result = qword_1006C1B58;
  if (!qword_1006C1B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C1B58);
  }

  return result;
}

unint64_t sub_1004999E4()
{
  result = qword_1006C1B60;
  if (!qword_1006C1B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C1B60);
  }

  return result;
}

unint64_t sub_100499A38()
{
  result = qword_1006C1B68;
  if (!qword_1006C1B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C1B68);
  }

  return result;
}

unint64_t sub_100499A90()
{
  result = qword_1006C1B70;
  if (!qword_1006C1B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C1B70);
  }

  return result;
}

uint64_t type metadata accessor for FMDeviceDetailViewModel(uint64_t a1)
{
  result = qword_1006C1BD0;
  if (!qword_1006C1BD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100499B88(uint64_t a1)
{
  sub_10047C2A0(319, &qword_1006C1BE0, &type metadata for String);
  if (v1 <= 0x3F)
  {
    sub_1003A614C(319, &qword_1006B7DD0, &qword_1006C0C10, &qword_100556FC0);
    if (v2 <= 0x3F)
    {
      sub_1003A614C(319, &qword_1006BB6C8, &qword_1006B41A0, &qword_100555E40);
      if (v3 <= 0x3F)
      {
        sub_100499E9C(319, &qword_1006BA400, &type metadata accessor for FMIPItem, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          sub_10047C2A0(319, &qword_1006C1BF0, &type metadata for FMItemViewModelCapabilities);
          if (v5 <= 0x3F)
          {
            sub_10047C2A0(319, &qword_1006C1BF8, &type metadata for FMItemState);
            if (v6 <= 0x3F)
            {
              sub_1003A614C(319, &qword_1006C1C00, &qword_1006C1C08, &qword_100563E38);
              if (v7 <= 0x3F)
              {
                type metadata accessor for Date();
                if (v8 <= 0x3F)
                {
                  type metadata accessor for FMIPBatteryStatus();
                  if (v9 <= 0x3F)
                  {
                    sub_10000905C(319, &qword_1006C0000, UIColor_ptr);
                    if (v10 <= 0x3F)
                    {
                      sub_100499E9C(319, &qword_1006B3F80, &type metadata accessor for Date, &type metadata accessor for Optional);
                      if (v11 <= 0x3F)
                      {
                        sub_100499E9C(319, &unk_1006C1C10, &type metadata accessor for FMIPSafeLocation, &type metadata accessor for Array);
                        if (v12 <= 0x3F)
                        {
                          swift_cvw_initStructMetadataWithLayoutString();
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_100499E9C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_100499F00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void (**a4)(char *, uint64_t, __n128)@<X4>, double a5@<X5>, double a6@<X6>, void *a7@<X8>)
{
  v657 = a6;
  v667 = a5;
  v725 = a4;
  v761 = a3;
  v762 = a1;
  v775 = a7;
  v757 = type metadata accessor for FMIPDevice();
  v751 = *(v757 - 8);
  __chkstk_darwin(v757);
  v708 = &v648 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v677 = &v648 - v10;
  v690 = type metadata accessor for FMIPFeatures();
  v689 = *(v690 - 8);
  __chkstk_darwin(v690);
  v688 = &v648 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v687 = &v648 - v13;
  v707 = type metadata accessor for FMIPConfigValue();
  v706 = *(v707 - 8);
  __chkstk_darwin(v707);
  v705 = &v648 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10007EBC0(&unk_1006C1D10, &qword_1005534B8);
  __chkstk_darwin(v15 - 8);
  v661 = &v648 - v16;
  v17 = sub_10007EBC0(&qword_1006B8B78, &unk_10055AC70);
  __chkstk_darwin(v17 - 8);
  v680 = &v648 - v18;
  v19 = sub_10007EBC0(&unk_1006C1D20, &qword_10055D7A0);
  __chkstk_darwin(v19 - 8);
  v713 = &v648 - v20;
  v760 = type metadata accessor for Date();
  v740 = *(v760 - 8);
  __chkstk_darwin(v760);
  v712 = &v648 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v656 = &v648 - v23;
  __chkstk_darwin(v24);
  v664 = &v648 - v25;
  v26 = sub_10007EBC0(&qword_1006BB1E0, &unk_100558B50);
  __chkstk_darwin(v26 - 8);
  v747 = &v648 - v27;
  v739 = type metadata accessor for FMIPDeviceStatus();
  v738 = *(v739 - 8);
  __chkstk_darwin(v739);
  v737 = &v648 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v736 = &v648 - v30;
  v767 = type metadata accessor for FMIPItemGroup();
  v748 = *(v767 - 8);
  __chkstk_darwin(v767);
  v726 = &v648 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_10007EBC0(&unk_1006B0000, &unk_100552AA0);
  __chkstk_darwin(v32 - 8);
  v686 = &v648 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v731 = &v648 - v35;
  __chkstk_darwin(v36);
  v715 = &v648 - v37;
  __chkstk_darwin(v38);
  v711 = &v648 - v39;
  __chkstk_darwin(v40);
  v655 = &v648 - v41;
  __chkstk_darwin(v42);
  v663 = &v648 - v43;
  __chkstk_darwin(v44);
  v691 = &v648 - v45;
  __chkstk_darwin(v46);
  v672 = &v648 - v47;
  __chkstk_darwin(v48);
  v752 = &v648 - v49;
  v728 = type metadata accessor for FMIPBatteryStatus();
  v727 = *(v728 - 1);
  __chkstk_darwin(v728);
  v723 = &v648 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v51);
  v722 = &v648 - v52;
  v734 = type metadata accessor for FMIPDeviceConnectedStateType();
  v756 = *(v734 - 8);
  __chkstk_darwin(v734);
  v745 = &v648 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v54);
  v733 = &v648 - v55;
  v56 = sub_10007EBC0(&unk_1006BBCE0, &unk_1005534C0);
  __chkstk_darwin(v56 - 8);
  v701 = &v648 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v58);
  v720 = &v648 - v59;
  __chkstk_darwin(v60);
  v718 = &v648 - v61;
  __chkstk_darwin(v62);
  v755 = &v648 - v63;
  __chkstk_darwin(v64);
  v746 = &v648 - v65;
  v66 = sub_10007EBC0(&unk_1006C0220, qword_100553770);
  __chkstk_darwin(v66 - 8);
  v714 = &v648 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v68);
  v653 = &v648 - v69;
  __chkstk_darwin(v70);
  v652 = &v648 - v71;
  __chkstk_darwin(v72);
  v654 = &v648 - v73;
  __chkstk_darwin(v74);
  v659 = &v648 - v75;
  __chkstk_darwin(v76);
  v729 = (&v648 - v77);
  __chkstk_darwin(v78);
  v769 = &v648 - v79;
  __chkstk_darwin(v80);
  v683 = &v648 - v81;
  __chkstk_darwin(v82);
  v671 = &v648 - v83;
  __chkstk_darwin(v84);
  v702 = &v648 - v85;
  __chkstk_darwin(v86);
  v703 = &v648 - v87;
  v743 = type metadata accessor for FMIPDeviceState();
  v759 = *(v743 - 8);
  __chkstk_darwin(v743);
  v742 = &v648 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v89);
  v741 = &v648 - v90;
  v700 = type metadata accessor for FMIPItemState();
  v699 = *(v700 - 8);
  __chkstk_darwin(v700);
  v698 = &v648 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v92);
  v697 = &v648 - v93;
  v778 = type metadata accessor for FMIPPlaySoundChannels();
  v772 = *(v778 - 8);
  __chkstk_darwin(v778);
  v773 = &v648 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v95);
  v732 = &v648 - v96;
  __chkstk_darwin(v97);
  v758 = &v648 - v98;
  v784 = type metadata accessor for FMIPPartType();
  v676 = *(v784 - 8);
  __chkstk_darwin(v784);
  v694 = &v648 - ((v99 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v100);
  v693 = &v648 - v101;
  __chkstk_darwin(v102);
  v674 = &v648 - v103;
  __chkstk_darwin(v104);
  v696 = &v648 - v105;
  __chkstk_darwin(v106);
  v783 = &v648 - v107;
  v780 = type metadata accessor for FMIPProductType();
  v776 = *(v780 - 1);
  __chkstk_darwin(v780);
  v771 = &v648 - ((v108 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_10007EBC0(&unk_1006BB1C0, &unk_1005534F0);
  __chkstk_darwin(v109 - 8);
  v704 = &v648 - ((v110 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v111);
  v669 = &v648 - v112;
  __chkstk_darwin(v113);
  v660 = &v648 - v114;
  __chkstk_darwin(v115);
  v662 = &v648 - v116;
  __chkstk_darwin(v117);
  v724 = &v648 - v118;
  __chkstk_darwin(v119);
  v721 = &v648 - v120;
  __chkstk_darwin(v121);
  *&v781 = &v648 - v122;
  v785 = type metadata accessor for FMIPItem();
  v768 = *(v785 - 8);
  __chkstk_darwin(v785);
  v678 = &v648 - ((v123 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v124);
  v692 = &v648 - v125;
  __chkstk_darwin(v126);
  v695 = &v648 - v127;
  __chkstk_darwin(v128);
  v777 = &v648 - v129;
  __chkstk_darwin(v130);
  v132 = &v648 - v131;
  __chkstk_darwin(v133);
  v766 = &v648 - v134;
  v135 = sub_10007EBC0(&qword_1006C39A0, &unk_100558B20);
  __chkstk_darwin(v135 - 8);
  v782 = (&v648 - ((v136 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v137);
  v735 = &v648 - v138;
  v139 = sub_10007EBC0(&qword_1006B07D0, qword_100552820);
  __chkstk_darwin(v139 - 8);
  v668 = &v648 - ((v140 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v141);
  v685 = &v648 - v142;
  __chkstk_darwin(v143);
  v679 = &v648 - v144;
  __chkstk_darwin(v145);
  v710 = &v648 - v146;
  __chkstk_darwin(v147);
  v651 = &v648 - v148;
  __chkstk_darwin(v149);
  v650 = &v648 - v150;
  __chkstk_darwin(v151);
  v658 = &v648 - v152;
  __chkstk_darwin(v153);
  v730 = &v648 - v154;
  __chkstk_darwin(v155);
  v673 = &v648 - v156;
  __chkstk_darwin(v157);
  v675 = &v648 - v158;
  __chkstk_darwin(v159);
  v684 = &v648 - v160;
  __chkstk_darwin(v161);
  v682 = &v648 - v162;
  __chkstk_darwin(v163);
  v681 = &v648 - v164;
  __chkstk_darwin(v165);
  v670 = &v648 - v166;
  __chkstk_darwin(v167);
  v716 = &v648 - v168;
  __chkstk_darwin(v169);
  v171 = &v648 - v170;
  v172 = sub_10007EBC0(&qword_1006C1D30, &qword_100563ED8);
  v173 = v172 - 8;
  __chkstk_darwin(v172);
  v175 = &v648 - ((v174 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v176);
  v178 = &v648 - v177;
  v179 = *(v173 + 56);
  *&v178[v179] = sub_1004A024C(&v648 - v177, a2, v762);
  sub_100007204(v178, v175, &qword_1006C1D30, &qword_100563ED8);

  sub_100035318(v175, v171, &qword_1006B07D0, qword_100552820);
  v709 = v178;
  v180 = v785;
  sub_100007204(v178, v175, &qword_1006C1D30, &qword_100563ED8);
  v744 = *&v175[*(v173 + 56)];
  sub_100012DF0(v175, &qword_1006B07D0, qword_100552820);
  v181 = *(v768 + 48);
  v774 = v171;
  v764 = v768 + 48;
  v763 = v181;
  if (v181(v171, 1, v180) == 1)
  {
    v770 = 0;
  }

  else
  {
    v770 = FMIPDevice.pairingIncomplete.getter() ^ 1;
  }

  v182 = a2;
  v183 = v781;
  FMIPDevice.itemGroup.getter();
  v184 = v748;
  v185 = *(v748 + 48);
  v186 = v767;
  v754 = v748 + 48;
  v753 = v185;
  if (v185(v183, 1, v767) == 1)
  {
    sub_100012DF0(v183, &unk_1006BB1C0, &unk_1005534F0);
LABEL_10:
    v191 = v757;
    v192 = v774;
    v790 = 0;
    v788 = 0u;
    v789 = 0u;
    v193 = v735;
    v194 = v782;
    goto LABEL_11;
  }

  v187 = FMIPItemGroup.items.getter();
  (*(v184 + 8))(v183, v186);
  if (!*(v187 + 16))
  {

    goto LABEL_10;
  }

  v188 = v768;
  v189 = v766;
  (*(v768 + 16))(v766, v187 + ((*(v188 + 80) + 32) & ~*(v188 + 80)), v180);

  v190 = v771;
  FMIPItem.productType.getter();
  (*(v188 + 8))(v189, v180);
  FMIPProductType.productInformation.getter();
  (*(v776 + 8))(v190, v780);
  v191 = v757;
  v192 = v774;
  v193 = v735;
  v194 = v782;
  if (*(&v789 + 1))
  {
    sub_10007EBC0(&unk_1006C1D60, &qword_100557F38);
    v195 = type metadata accessor for FMIPHawkeyeProductInformation();
    v194 = v782;
    v196 = swift_dynamicCast();
    (*(*(v195 - 8) + 56))(v193, v196 ^ 1u, 1, v195);
    goto LABEL_12;
  }

LABEL_11:
  sub_100012DF0(&v788, &qword_1006B1328, &qword_100557F30);
  v195 = type metadata accessor for FMIPHawkeyeProductInformation();
  (*(*(v195 - 8) + 56))(v193, 1, 1, v195);
LABEL_12:
  sub_100007204(v193, v194, &qword_1006C39A0, &unk_100558B20);
  type metadata accessor for FMIPHawkeyeProductInformation();
  v197 = *(v195 - 8);
  if ((*(v197 + 48))(v194, 1, v195) == 1)
  {
    sub_100012DF0(v194, &qword_1006C39A0, &unk_100558B20);
    v198 = 0;
  }

  else
  {
    v198 = FMIPHawkeyeProductInformation.requiresAdditionalConnectionTime.getter();
    (*(v197 + 8))(v194, v195);
  }

  v199 = v785;
  v776 = type metadata accessor for FMDeviceDetailViewModel(0);
  *(v775 + *(v776 + 52)) = v198 & 1;
  v779 = v182;
  if (v744)
  {
    v200 = v191;
    v201 = *(v744 + 16);
    if (v201)
    {
      v782 = *(v768 + 16);
      v202 = v744 + ((*(v768 + 80) + 32) & ~*(v768 + 80));
      *&v781 = *(v768 + 72);
      v203 = (v768 + 8);
      v204 = (v676 + 88);
      LODWORD(v780) = enum case for FMIPPartType.standalone(_:);
      LODWORD(v771) = enum case for FMIPPartType.case(_:);
      LODWORD(v750) = enum case for FMIPPartType.leftBud(_:);
      v719 = enum case for FMIPPartType.rightBud(_:);
      v666 = enum case for FMIPPartType.generic(_:);
      v649 = (v676 + 8);
      v665 = enum case for FMIPPlaySoundChannels.right(_:);
      v766 = v772 + 104;
      v765 = (v772 + 32);
      v717 = enum case for FMIPPlaySoundChannels.left(_:);
      LODWORD(v749) = enum case for FMIPPlaySoundChannels.case(_:);

      v205 = _swiftEmptyArrayStorage;
      while (1)
      {
        v782(v132, v202, v199);
        v206 = v783;
        FMIPItem.partType.getter();
        (*v203)(v132, v199);
        v207 = (*v204)(v206, v784);
        if (v207 != v780)
        {
          if (v207 == v771)
          {
            (*v766)(v773, v749, v778);
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v208 = v205;
            }

            else
            {
              v208 = sub_10008BB18(0, v205[2] + 1, 1, v205);
            }

            v210 = v208[2];
            v209 = v208[3];
            if (v210 >= v209 >> 1)
            {
              v208 = sub_10008BB18((v209 > 1), v210 + 1, 1, v208);
            }

            v208[2] = v210 + 1;
            v205 = v208;
            (*(v772 + 4))(v208 + ((v772[80] + 32) & ~v772[80]) + *(v772 + 9) * v210, v773, v778);
          }

          else
          {
            if (v207 != v750)
            {
              if (v207 == v719)
              {
                (*v766)(v732, v665, v778);
                if (swift_isUniquelyReferenced_nonNull_native())
                {
                  v214 = v205;
                }

                else
                {
                  v214 = sub_10008BB18(0, v205[2] + 1, 1, v205);
                }

                v216 = v214[2];
                v215 = v214[3];
                if (v216 >= v215 >> 1)
                {
                  v214 = sub_10008BB18((v215 > 1), v216 + 1, 1, v214);
                }

                v214[2] = v216 + 1;
                v205 = v214;
                (*(v772 + 4))(v214 + ((v772[80] + 32) & ~v772[80]) + *(v772 + 9) * v216, v732, v778);
              }

              else if (v207 != v666)
              {
                (*v649)(v783, v784);
              }

              goto LABEL_20;
            }

            (*v766)(v758, v717, v778);
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v211 = v205;
            }

            else
            {
              v211 = sub_10008BB18(0, v205[2] + 1, 1, v205);
            }

            v213 = v211[2];
            v212 = v211[3];
            if (v213 >= v212 >> 1)
            {
              v211 = sub_10008BB18((v212 > 1), v213 + 1, 1, v211);
            }

            v211[2] = v213 + 1;
            v205 = v211;
            (*(v772 + 4))(v211 + ((v772[80] + 32) & ~v772[80]) + *(v772 + 9) * v213, v758, v778);
          }

          v199 = v785;
        }

LABEL_20:
        v202 += v781;
        if (!--v201)
        {

          v191 = v757;
          v217 = v774;
          v218 = v767;
          v219 = v205;
          goto LABEL_48;
        }
      }
    }

    v217 = v192;
    v219 = _swiftEmptyArrayStorage;
    v191 = v200;
  }

  else
  {
    v219 = _swiftEmptyArrayStorage;
    v217 = v192;
  }

  v218 = v767;
LABEL_48:
  v220 = *(v219 + 2);
  v766 = v219;
  v221 = v721;
  if (v220)
  {

    v220 = v766;
  }

  v222 = v775;
  *(v775 + *(v776 + 48)) = v220;
  v223 = v770;
  *(v222 + 40) = v770 & 1;
  if (v223)
  {
    v224 = v716;
    sub_100007204(v217, v716, &qword_1006B07D0, qword_100552820);
    if (v763(v224, 1, v199) == 1)
    {
      v225 = &qword_1006B07D0;
      v226 = qword_100552820;
      v227 = v224;
LABEL_55:
      sub_100012DF0(v227, v225, v226);
      v719 = 0;
      goto LABEL_59;
    }

    v228 = v697;
    FMIPItem.state.getter();
    (*(v768 + 8))(v224, v199);
  }

  else
  {
    FMIPDevice.itemGroup.getter();
    if (v753(v221, 1, v218) == 1)
    {
      v225 = &unk_1006BB1C0;
      v226 = &unk_1005534F0;
      v227 = v221;
      goto LABEL_55;
    }

    v228 = v697;
    FMIPItemGroup.state.getter();
    (*(v748 + 8))(v221, v218);
  }

  v229 = v698;
  static FMIPItemState.isBTConnected.getter();
  sub_1004A7DD4(&qword_1006C0350, &type metadata accessor for FMIPItemState, &protocol conformance descriptor for FMIPItemState);
  v230 = v700;
  v719 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v231 = *(v699 + 8);
  v231(v229, v230);
  v231(v228, v230);
LABEL_59:
  v232 = v741;
  FMIPDevice.state.getter();
  v233 = v742;
  static FMIPDeviceState.isThisDevice.getter();
  v234 = sub_1004A7DD4(&qword_1006BBCF0, &type metadata accessor for FMIPDeviceState, &protocol conformance descriptor for FMIPDeviceState);
  v235 = v743;
  v717 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v236 = v759 + 8;
  v237 = *(v759 + 8);
  v237(v233, v235);
  v237(v232, v235);
  FMIPDevice.state.getter();
  static FMIPDeviceState.isDeviceWithYou.getter();
  v765 = v234;
  LODWORD(v716) = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v237(v233, v235);
  v759 = v236;
  v749 = v237;
  v237(v232, v235);
  if (FMIPDevice.pairingIncomplete.getter())
  {
    LODWORD(v721) = 0;
    v238 = v720;
    v239 = v751;
    goto LABEL_68;
  }

  if ((v770 & 1) == 0)
  {
    v242 = v702;
    FMIPDevice.bestLocation.getter();
LABEL_66:
    v243 = type metadata accessor for FMIPLocation();
    LODWORD(v721) = (*(*(v243 - 8) + 48))(v242, 1, v243) != 1;
    goto LABEL_67;
  }

  v240 = v670;
  sub_100007204(v217, v670, &qword_1006B07D0, qword_100552820);
  if (v763(v240, 1, v199) != 1)
  {
    v242 = v703;
    FMIPItem.location.getter();
    (*(v768 + 8))(v240, v199);
    goto LABEL_66;
  }

  sub_100012DF0(v240, &qword_1006B07D0, qword_100552820);
  v241 = type metadata accessor for FMIPLocation();
  v242 = v703;
  (*(*(v241 - 8) + 56))(v703, 1, 1, v241);
  LODWORD(v721) = 0;
LABEL_67:
  v238 = v720;
  v239 = v751;
  sub_100012DF0(v242, &unk_1006C0220, qword_100553770);
LABEL_68:
  v244 = FMIPDevice.deviceConnectedWithBeacon.getter();
  if (v245)
  {
    v246 = v245;
  }

  else
  {
    v244 = 0;
    v246 = 0xE000000000000000;
  }

  v247 = v746;
  sub_1000E5180(v244, v246, v746);

  sub_1000E5498(v755);

  v248 = v718;
  sub_100007204(v247, v718, &unk_1006BBCE0, &unk_1005534C0);
  v249 = *(v239 + 48);
  if (v249(v248, 1, v191) == 1)
  {
    sub_100012DF0(v248, &unk_1006BBCE0, &unk_1005534C0);
    v250 = 0;
    v251 = 0;
  }

  else
  {
    v250 = FMIPDevice.baIdentifier.getter();
    v251 = v252;
    (*(v239 + 8))(v248, v191);
  }

  sub_100007204(v755, v238, &unk_1006BBCE0, &unk_1005534C0);
  v782 = v249;
  if (v249(v238, 1, v191) == 1)
  {
    sub_100012DF0(v238, &unk_1006BBCE0, &unk_1005534C0);
    if (!v251)
    {
      v253 = v191;
      LODWORD(v783) = 1;
      v254 = v734;
      v255 = v733;
      goto LABEL_85;
    }

    goto LABEL_82;
  }

  v256 = FMIPDevice.baIdentifier.getter();
  v258 = v257;
  (*(v239 + 8))(v238, v191);
  if (v251)
  {
    if (v258)
    {
      if (v250 == v256 && v251 == v258)
      {

        LODWORD(v783) = 1;
      }

      else
      {
        LODWORD(v783) = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      goto LABEL_83;
    }

LABEL_82:
    LODWORD(v783) = 0;
LABEL_83:
    v254 = v734;
    v255 = v733;
LABEL_84:
    v253 = v191;

    goto LABEL_85;
  }

  v255 = v733;
  if (v258)
  {
    LODWORD(v783) = 0;
    v254 = v734;
    goto LABEL_84;
  }

  v253 = v191;
  LODWORD(v783) = 1;
  v254 = v734;
LABEL_85:
  FMIPDevice.deviceConnectedState.getter();
  v259 = v756;
  v260 = v756 + 104;
  v261 = *(v756 + 13);
  v262 = v745;
  (v261)(v745, enum case for FMIPDeviceConnectedStateType.connected(_:), v254);
  v263 = static FMIPDeviceConnectedStateType.== infix(_:_:)();
  v264 = *(v259 + 1);
  v750 = v264;
  v264(v262, v254);
  v264(v255, v254);
  v756 = v259 + 8;
  v703 = v260;
  v702 = v261;
  if (v263)
  {
    v265 = v761;
    if ((v783 & 1) == 0)
    {
      goto LABEL_87;
    }

LABEL_90:
    v271 = 0;
    v272 = 0;
    v268 = v779;
    v269 = v774;
    v270 = v729;
    goto LABEL_92;
  }

  FMIPDevice.deviceConnectedState.getter();
  v273 = v745;
  (v261)(v745, enum case for FMIPDeviceConnectedStateType.attached(_:), v254);
  v274 = static FMIPDeviceConnectedStateType.== infix(_:_:)();
  v275 = v273;
  v276 = v750;
  v750(v275, v254);
  v276(v255, v254);
  v277 = v783 | ~v274;
  v265 = v761;
  if (v277)
  {
    goto LABEL_90;
  }

LABEL_87:
  v266 = v701;
  sub_100007204(v746, v701, &unk_1006BBCE0, &unk_1005534C0);
  v267 = (v782)(v266, 1, v253);
  v268 = v779;
  v269 = v774;
  v270 = v729;
  if (v267 == 1)
  {
    sub_100012DF0(v266, &unk_1006BBCE0, &unk_1005534C0);
    v271 = 0;
    v272 = 0;
  }

  else
  {
    v278 = FMIPDevice.name.getter();
    v272 = v279;
    (*(v751 + 8))(v266, v253);
    v271 = v278;
  }

LABEL_92:
  sub_100260334(v268, v269, v265 != 0, 0, 0, 1, 0, v271, &v788, v272);
  v280 = v788;
  v281 = v789;
  v282 = v790;

  if (*(&v280 + 1))
  {
    v283 = [objc_opt_self() mainBundle];
    v791._object = 0x800000010057DBA0;
    v284._countAndFlagsBits = 0xD000000000000027;
    v284._object = 0x800000010057DB70;
    v791._countAndFlagsBits = 0xD000000000000039;
    v285._countAndFlagsBits = 0;
    v285._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v284, 0, v283, v285, v791);

    sub_10007EBC0(&unk_1006B20B0, &unk_1005523B0);
    v286 = swift_allocObject();
    *(v286 + 16) = xmmword_100552210;
    *(v286 + 56) = &type metadata for String;
    v287 = sub_10008EE84();
    *(v286 + 32) = v280;
    *(v286 + 96) = &type metadata for String;
    *(v286 + 104) = v287;
    *(v286 + 64) = v287;
    *(v286 + 72) = v281;
    v701 = String.init(format:_:)();
    v718 = v288;
  }

  else
  {
    v718 = *(&v281 + 1);
    v701 = v281;
  }

  v289 = v776;
  v780 = v740;
  v290 = v722;
  v291 = v779;
  FMIPDevice.batteryStatus.getter();
  v292 = v727;
  v293 = v723;
  v294 = v728;
  (v727[13])(v723, enum case for FMIPBatteryStatus.unknown(_:), v728);
  sub_1004A7DD4(&qword_1006C1D38, &type metadata accessor for FMIPBatteryStatus, &protocol conformance descriptor for FMIPBatteryStatus);
  LODWORD(v720) = dispatch thunk of static Equatable.== infix(_:_:)();
  v295 = v292[1];
  v295(v293, v294);
  v295(v290, v294);
  if (v770)
  {
    v296 = v681;
    sub_100007204(v774, v681, &qword_1006B07D0, qword_100552820);
    v297 = v785;
    if (v763(v296, 1, v785) == 1)
    {
      sub_100012DF0(v296, &qword_1006B07D0, qword_100552820);
      v298 = 1;
      v299 = v752;
      v300 = v682;
    }

    else
    {
      v306 = v671;
      FMIPItem.location.getter();
      (*(v768 + 8))(v296, v297);
      v307 = type metadata accessor for FMIPLocation();
      v308 = *(v307 - 8);
      v309 = (*(v308 + 48))(v306, 1, v307);
      v300 = v682;
      if (v309 == 1)
      {
        sub_100012DF0(v306, &unk_1006C0220, qword_100553770);
        v298 = 1;
        v299 = v752;
      }

      else
      {
        v312 = FMIPLocation.location.getter();
        (*(v308 + 8))(v306, v307);
        v313 = [v312 timestamp];

        v314 = v752;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v299 = v314;
        v297 = v785;
        v298 = 0;
      }
    }

    v758 = v780[7];
    (v758)(v299, v298, 1, v760);
    sub_100007204(v774, v300, &qword_1006B07D0, qword_100552820);
    if (v763(v300, 1, v297) == 1)
    {
      sub_100012DF0(v300, &qword_1006B07D0, qword_100552820);
      v315 = type metadata accessor for FMIPLocation();
      (*(*(v315 - 8) + 56))(v769, 1, 1, v315);
    }

    else
    {
      FMIPItem.location.getter();
      (*(v768 + 8))(v300, v297);
    }
  }

  else
  {
    v301 = v683;
    FMIPDevice.bestLocation.getter();
    v302 = type metadata accessor for FMIPLocation();
    v303 = *(v302 - 8);
    if ((*(v303 + 48))(v301, 1, v302) == 1)
    {
      sub_100012DF0(v301, &unk_1006C0220, qword_100553770);
      v304 = 1;
      v305 = v752;
    }

    else
    {
      v310 = FMIPLocation.location.getter();
      (*(v303 + 8))(v301, v302);
      v311 = [v310 timestamp];

      v305 = v752;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v304 = 0;
    }

    v758 = v780[7];
    (v758)(v305, v304, 1, v760);
    FMIPDevice.bestLocation.getter();
  }

  v316 = objc_opt_self();
  v727 = [v316 secondaryLabelColor];
  v723 = v316;
  if (v282)
  {
    v728 = v282;
  }

  else
  {
    v728 = [v316 secondaryLabelColor];
  }

  sub_100007204(v769, v270, &unk_1006C0220, qword_100553770);
  v317 = type metadata accessor for FMIPLocation();
  v318 = *(v317 - 8);
  v319 = *(v318 + 6);
  v773 = v318 + 48;
  v772 = v319;
  v320 = (v319)(v270, 1, v317);
  v732 = v282;
  v778 = v317;
  v729 = v318;
  if (v320 == 1)
  {
    v321 = v282;

    sub_100012DF0(v270, &unk_1006C0220, qword_100553770);
    countAndFlagsBits = 0;
    object = 0;
    v324 = v724;
    v325 = v761;
  }

  else
  {
    v326 = v282;
    v327 = FMIPLocation.location.getter();
    (*(v318 + 1))(v270, v317);
    v325 = v761;
    if (v761)
    {
      v328 = qword_1006AEC58;
      v329 = v761;
      v330 = v725;
      v331 = v767;
      if (v328 != -1)
      {
        goto LABEL_278;
      }

      goto LABEL_117;
    }

    countAndFlagsBits = 0;
    object = 0;
    v324 = v724;
  }

  v331 = v767;
  while (1)
  {
    sub_1004A43A0(v291, v325, v783 & 1);
    v771 = v354;
    v355 = FMIPDevice.safeLocations.getter();
    v787 = v355;
    FMIPDevice.itemGroup.getter();
    if (v753(v324, 1, v331) == 1)
    {
      sub_100012DF0(v324, &unk_1006BB1C0, &unk_1005534F0);
      v325 = 0;
      v356 = _swiftEmptyArrayStorage;
      v331 = v775;
    }

    else
    {
      v725 = countAndFlagsBits;
      (*(v748 + 32))(v726, v324, v331);
      v357 = FMIPItemGroup.items.getter();
      v358 = *(v357 + 16);
      if (v358)
      {
        v724 = object;
        v325 = 0;
        v782 = *(v768 + 16);
        v359 = (*(v768 + 80) + 32) & ~*(v768 + 80);
        v722 = v357;
        v360 = v357 + v359;
        *&v781 = *(v768 + 72);
        v783 = (v768 + 16);
        v361 = (v768 + 8);
        v356 = _swiftEmptyArrayStorage;
        v362 = v785;
        do
        {
          v363 = v356;
          v364 = v777;
          v782(v777, v360, v362);
          v365 = FMIPItem.safeLocations.getter();
          v366 = sub_1004A623C(v365, &v787);

          sub_100493EF4(v366, sub_10008BAF0, &type metadata accessor for FMIPSafeLocation);
          v367 = FMIPItem.identifier.getter();
          v369 = v368;
          v370 = v364;
          v356 = v363;
          (*v361)(v370, v362);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v356 = sub_10008B9E4(0, *(v363 + 2) + 1, 1, v363);
          }

          v372 = *(v356 + 2);
          v371 = *(v356 + 3);
          if (v372 >= v371 >> 1)
          {
            v356 = sub_10008B9E4((v371 > 1), v372 + 1, 1, v356);
          }

          *(v356 + 2) = v372 + 1;
          v373 = &v356[16 * v372];
          *(v373 + 4) = v367;
          *(v373 + 5) = v369;
          v360 += v781;
          --v358;
          v362 = v785;
        }

        while (v358);

        v289 = v776;
        object = v724;
      }

      else
      {

        v325 = 0;
        v356 = _swiftEmptyArrayStorage;
      }

      (*(v748 + 8))(v726, v767);
      v355 = v787;
      v331 = v775;
      countAndFlagsBits = v725;
    }

    v331[4] = v356;
    *(v331 + v289[38]) = v355;
    v782 = v355;
    v783 = v356;
    if ((v717 | v719 | v716))
    {

      v374 = [objc_opt_self() mainBundle];
      v793._object = 0x8000000100590BA0;
      v375._countAndFlagsBits = 0xD00000000000001DLL;
      v375._object = 0x8000000100590B80;
      v793._countAndFlagsBits = 0xD00000000000002FLL;
      v376._countAndFlagsBits = 0;
      v376._object = 0xE000000000000000;
      v377 = NSLocalizedString(_:tableName:bundle:value:comment:)(v375, 0, v374, v376, v793);
      countAndFlagsBits = v377._countAndFlagsBits;
      object = v377._object;
    }

    else
    {
    }

    v378 = (v331 + v289[14]);
    *v378 = countAndFlagsBits;
    v378[1] = object;
    *v331 = FMIPDevice.identifier.getter();
    v331[1] = v379;
    v331[2] = FMIPDevice.baIdentifier.getter();
    v331[3] = v380;
    FMIPDevice.status.getter();
    (*(v738 + 104))(v737, enum case for FMIPDeviceStatus.online(_:), v739);
    sub_1004A7DD4(&unk_1006C1D40, &type metadata accessor for FMIPDeviceStatus, &protocol conformance descriptor for FMIPDeviceStatus);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v381 = v774;
    if (v788 == v786)
    {
      v382 = 1;
    }

    else
    {
      v382 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v383 = *(v738 + 8);
    v384 = v739;
    v383(v737, v739);
    v383(v736, v384);

    *(v331 + v289[15]) = v382 & 1;
    if (v770)
    {
      v385 = v381;
      v386 = v684;
      sub_100007204(v381, v684, &qword_1006B07D0, qword_100552820);
      v387 = v785;
      v388 = v763(v386, 1, v785);
      v389 = v730;
      if (v388 == 1)
      {
        sub_100012DF0(v386, &qword_1006B07D0, qword_100552820);
        v390 = type metadata accessor for FMIPAddress();
        (*(*(v390 - 8) + 56))(v747, 1, 1, v390);
      }

      else
      {
        FMIPItem.address.getter();
        (*(v768 + 8))(v386, v387);
      }
    }

    else
    {
      FMIPDevice.address.getter();
      v387 = v785;
      v389 = v730;
      v385 = v381;
    }

    v391 = v721;
    My = type metadata accessor for Feature.FindMy();
    *(&v789 + 1) = My;
    v790 = sub_1004A7DD4(&qword_1006B4220, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
    v393 = sub_100008FC0(&v788);
    (*(*(My - 8) + 104))(v393, enum case for Feature.FindMy.baAirpodsMultipartUI(_:), My);
    v394 = isFeatureEnabled(_:)();
    sub_100006060(&v788);
    if (v391)
    {

      v395 = sub_10025F99C(v747, v769, 1, 0);
      v397 = v396;
      v398 = (v331 + v289[17]);
      *v398 = v399;
      v398[1] = v400;
      v401 = (v331 + v289[18]);
      *v401 = v701;
      v402 = v718;
LABEL_161:
      v401[1] = v402;
      goto LABEL_162;
    }

    if ((v394 & 1) == 0 || (FMIPDevice.shouldDisplaySeparatedLocation.getter() & 1) == 0)
    {

      v395 = 0;
      v397 = 0;
      v405 = (v331 + v289[17]);
      v406 = v718;
      *v405 = v701;
      v405[1] = v406;
      v401 = (v331 + v289[18]);
      v402 = 0xE000000000000000;
      *v401 = 0;
      goto LABEL_161;
    }

    v403 = v662;
    FMIPDevice.itemGroup.getter();
    v330 = v767;
    if (v753(v403, 1, v767) == 1)
    {
      sub_100012DF0(v403, &unk_1006BB1C0, &unk_1005534F0);
      v404 = 1;
    }

    else
    {
      v329 = v403;
      v327 = FMIPItemGroup.items.getter();
      (*(v748 + 8))(v329, v330);
      v469 = v327;
      v739 = v327[2];
      if (v739)
      {
        v470 = 0;
        *&v781 = v768 + 16;
        LODWORD(v777) = enum case for FMIPPartType.leftBud(_:);
        v471 = (v676 + 104);
        v331 = (v676 + 8);
        v738 = v768 + 8;
        while (v470 < v469[2])
        {
          v327 = v469;
          (*(v768 + 16))(v695, v469 + ((*(v768 + 80) + 32) & ~*(v768 + 80)) + *(v768 + 72) * v470, v785);
          FMIPItem.partType.getter();
          v472 = v674;
          (*v471)(v674, v777, v784);
          sub_1004A7DD4(&qword_1006BEF50, &type metadata accessor for FMIPPartType, &protocol conformance descriptor for FMIPPartType);
          dispatch thunk of RawRepresentable.rawValue.getter();
          dispatch thunk of RawRepresentable.rawValue.getter();
          v329 = *(&v786 + 1);
          if (v788 == v786)
          {
            v561 = *v331;
            v562 = v784;
            (*v331)(v472, v784);
            v561(v696, v562);

LABEL_231:

            v387 = v785;
            (*(v768 + 32))(v675, v695, v785);
            v404 = 0;
            v331 = v775;
            v289 = v776;
            goto LABEL_232;
          }

          v473 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v330 = *v331;
          v474 = v472;
          v475 = v784;
          (*v331)(v474, v784);
          (v330)(v696, v475);

          if (v473)
          {
            goto LABEL_231;
          }

          ++v470;
          (*v738)(v695, v785);
          v289 = v776;
          v469 = v327;
          if (v739 == v470)
          {
            goto LABEL_188;
          }
        }

        __break(1u);
        goto LABEL_277;
      }

LABEL_188:

      v404 = 1;
      v331 = v775;
      v387 = v785;
LABEL_232:
      v389 = v730;
    }

    v563 = v768 + 56;
    v564 = *(v768 + 56);
    v564(v675, v404, 1, v387);
    v565 = v660;
    FMIPDevice.itemGroup.getter();
    v566 = v767;
    if (v753(v565, 1, v767) == 1)
    {
      break;
    }

    v737 = v564;
    v738 = v563;
    v325 = FMIPItemGroup.items.getter();
    (*(v748 + 8))(v565, v566);
    v329 = v691;
    v739 = v325[2];
    if (!v739)
    {
LABEL_241:

      v387 = v785;
      (v737)(v673, 1, 1, v785);

      v567 = v760;
      goto LABEL_245;
    }

    v568 = 0;
    *&v781 = v768 + 16;
    LODWORD(v777) = enum case for FMIPPartType.rightBud(_:);
    v327 = (v676 + 104);
    v569 = (v676 + 8);
    v330 = (v768 + 8);
    while (v568 < v325[2])
    {
      (*(v768 + 16))(v692, v325 + ((*(v768 + 80) + 32) & ~*(v768 + 80)) + *(v768 + 72) * v568, v785);
      FMIPItem.partType.getter();
      (*v327)(v694, v777, v784);
      sub_1004A7DD4(&qword_1006BEF50, &type metadata accessor for FMIPPartType, &protocol conformance descriptor for FMIPPartType);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v788 == v786)
      {
        v573 = *v569;
        v574 = v784;
        (*v569)(v694, v784);
        v573(v693, v574);

        v389 = v730;
LABEL_243:

        v575 = v673;
        v387 = v785;
        (*(v768 + 32))(v673, v692, v785);
        (v737)(v575, 0, 1, v387);

        v331 = v775;
        v567 = v760;
        v289 = v776;
        goto LABEL_244;
      }

      v570 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v571 = *v569;
      v572 = v784;
      (*v569)(v694, v784);
      v571(v693, v572);

      v389 = v730;
      if (v570)
      {
        goto LABEL_243;
      }

      ++v568;
      (*v330)(v692, v785);
      v331 = v775;
      v289 = v776;
      v329 = v691;
      if (v739 == v568)
      {
        goto LABEL_241;
      }
    }

LABEL_277:
    __break(1u);
LABEL_278:
    swift_once();
LABEL_117:
    v332 = qword_1006D48A8;
    v333 = [qword_1006D48A8 localizedDistanceFromLocation:v327 toLocation:v329];
    v334 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    object = v335;

    if (!v330)
    {

      goto LABEL_130;
    }

    v336 = sub_1000FF754(v667);
    if (v337)
    {
      v338 = v337;
      v339 = v336;

      v340 = v657;
      v341 = [objc_allocWithZone(MKDistanceFormatter) init];
      v342 = [v332 measurementSystem];
      if (v342 != 1)
      {
        if (v342 == 2)
        {
          v343 = 1;
        }

        else
        {
          v343 = 2;
        }

        [v341 setUnits:v343];
      }

      v344 = [v341 stringFromDistance:v340];
      v345 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v782 = v346;

      v347 = [objc_opt_self() mainBundle];
      v792._object = 0x800000010057DF30;
      v348._countAndFlagsBits = 0x415045535F415445;
      v348._object = 0xED0000524F544152;
      v792._countAndFlagsBits = 0xD00000000000001FLL;
      v349._countAndFlagsBits = 0;
      v349._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v348, 0, v347, v349, v792);

      sub_10007EBC0(&unk_1006B20B0, &unk_1005523B0);
      v350 = swift_allocObject();
      *(v350 + 16) = xmmword_100552210;
      *(v350 + 56) = &type metadata for String;
      v351 = sub_10008EE84();
      v352 = v782;
      *(v350 + 32) = v345;
      *(v350 + 40) = v352;
      *(v350 + 96) = &type metadata for String;
      *(v350 + 104) = v351;
      *(v350 + 64) = v351;
      *(v350 + 72) = v339;
      *(v350 + 80) = v338;
      countAndFlagsBits = String.init(format:_:)();
      object = v353;

      v325 = v761;
      v331 = v767;
      v289 = v776;
      v324 = v724;
      v291 = v779;
    }

    else
    {

LABEL_130:
      v324 = v724;
      v291 = v779;
      countAndFlagsBits = v334;
    }
  }

  sub_100012DF0(v565, &unk_1006BB1C0, &unk_1005534F0);
  v564(v673, 1, 1, v387);
  v567 = v760;
LABEL_244:
  v329 = v691;
LABEL_245:
  v576 = v659;
  sub_100007204(v675, v389, &qword_1006B07D0, qword_100552820);
  v577 = v763(v389, 1, v387);
  v578 = v672;
  v579 = v663;
  if (v577 == 1)
  {
    sub_100012DF0(v389, &qword_1006B07D0, qword_100552820);
    v580 = 1;
  }

  else
  {
    FMIPItem.location.getter();
    (*(v768 + 8))(v389, v387);
    v581 = v778;
    if ((v772)(v576, 1, v778) == 1)
    {
      sub_100012DF0(v576, &unk_1006C0220, qword_100553770);
      v580 = 1;
    }

    else
    {
      v582 = FMIPLocation.location.getter();
      v729[1](v576, v581);
      v583 = [v582 timestamp];

      v567 = v760;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v580 = 0;
    }

    v329 = v691;
  }

  (v758)(v578, v580, 1, v567);
  v584 = v658;
  sub_100007204(v673, v658, &qword_1006B07D0, qword_100552820);
  if (v763(v584, 1, v387) == 1)
  {
    sub_100012DF0(v584, &qword_1006B07D0, qword_100552820);
    v585 = 1;
  }

  else
  {
    v586 = v654;
    FMIPItem.location.getter();
    (*(v768 + 8))(v584, v387);
    v587 = v778;
    if ((v772)(v586, 1, v778) == 1)
    {
      sub_100012DF0(v586, &unk_1006C0220, qword_100553770);
      v585 = 1;
      v329 = v691;
    }

    else
    {
      v588 = FMIPLocation.location.getter();
      v729[1](v586, v587);
      v589 = [v588 timestamp];

      v567 = v760;
      v590 = v691;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v329 = v590;
      v579 = v663;
      v585 = 0;
    }
  }

  v591 = v780;
  (v758)(v329, v585, 1, v567);
  sub_100007204(v672, v579, &unk_1006B0000, &unk_100552AA0);
  v592 = v579;
  v593 = v591[6];
  if (v593(v579, 1, v567) == 1)
  {
    v594 = v579;
    goto LABEL_260;
  }

  v595 = v591;
  v596 = v592;
  v597 = v591[4];
  v597(v664, v596, v567);
  v594 = v655;
  sub_100007204(v329, v655, &unk_1006B0000, &unk_100552AA0);
  if (v593(v594, 1, v567) == 1)
  {
    (v595[1])(v664, v567);
LABEL_260:
    sub_100012DF0(v594, &unk_1006B0000, &unk_100552AA0);
    v598 = (v331 + v289[17]);
    v599 = v718;
    *v598 = v701;
    v598[1] = v599;
    sub_100012DF0(v691, &unk_1006B0000, &unk_100552AA0);
    sub_100012DF0(v672, &unk_1006B0000, &unk_100552AA0);
    sub_100012DF0(v673, &qword_1006B07D0, qword_100552820);
    sub_100012DF0(v675, &qword_1006B07D0, qword_100552820);
    v395 = 0;
    v397 = 0;
    v600 = (v331 + v289[18]);
    *v600 = 0;
    v600[1] = 0xE000000000000000;
    v385 = v774;
  }

  else
  {

    v597(v656, v594, v567);
    v783 = objc_opt_self();
    v601 = [v783 mainBundle];
    v794._object = 0x800000010057D660;
    v602._countAndFlagsBits = 0xD000000000000024;
    v602._object = 0x800000010059B9D0;
    v784 = "AIRPODS_DIRECTIONS_TITLE";
    v603.value._object = 0x800000010057D640;
    v794._countAndFlagsBits = 0xD00000000000001BLL;
    v603.value._countAndFlagsBits = 0xD000000000000016;
    v604._countAndFlagsBits = 0;
    v604._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v602, v603, v601, v604, v794);

    sub_10007EBC0(&unk_1006B20B0, &unk_1005523B0);
    v605 = v387;
    v606 = swift_allocObject();
    v781 = xmmword_100552220;
    *(v606 + 16) = xmmword_100552220;
    v607 = sub_100455280();
    isa = Date._bridgeToObjectiveC()().super.isa;
    v609 = v331;
    v610 = [v607 stringFromDate:isa];

    v611 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v613 = v612;

    *(v606 + 56) = &type metadata for String;
    v614 = sub_10008EE84();
    *(v606 + 64) = v614;
    *(v606 + 32) = v611;
    *(v606 + 40) = v613;
    v615 = String.init(format:_:)();
    v617 = v616;

    v618 = (v609 + *(v776 + 68));
    *v618 = v615;
    v618[1] = v617;
    v619 = v650;
    sub_100007204(v675, v650, &qword_1006B07D0, qword_100552820);
    if (v763(v619, 1, v387) == 1)
    {
      sub_100012DF0(v619, &qword_1006B07D0, qword_100552820);
      v620 = v652;
      (v729[7])(v652, 1, 1, v778);
    }

    else
    {
      v620 = v652;
      FMIPItem.location.getter();
      (*(v768 + 8))(v619, v387);
    }

    v621 = v723;
    v622 = sub_1004A3F00(v620);
    sub_100012DF0(v620, &unk_1006C0220, qword_100553770);
    v623 = &selRef_systemRedColor;
    if ((v622 & 1) == 0)
    {
      v623 = &selRef_systemGreenColor;
    }

    v624 = [v621 *v623];

    v625 = [v783 mainBundle];
    v795._object = 0x800000010057D660;
    v626._countAndFlagsBits = 0xD000000000000025;
    v626._object = 0x800000010059BA00;
    v627.value._object = (v784 | 0x8000000000000000);
    v795._countAndFlagsBits = 0xD00000000000001BLL;
    v627.value._countAndFlagsBits = 0xD000000000000016;
    v628._countAndFlagsBits = 0;
    v628._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v626, v627, v625, v628, v795);

    v629 = swift_allocObject();
    *(v629 + 16) = v781;
    v630 = sub_100455280();
    v631 = Date._bridgeToObjectiveC()().super.isa;
    v632 = [v630 stringFromDate:v631];

    v633 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v635 = v634;

    *(v629 + 56) = &type metadata for String;
    *(v629 + 64) = v614;
    *(v629 + 32) = v633;
    *(v629 + 40) = v635;
    v636 = String.init(format:_:)();
    v638 = v637;

    v289 = v776;
    v331 = v775;
    v639 = (v775 + *(v776 + 72));
    *v639 = v636;
    v639[1] = v638;
    v640 = v651;
    sub_100007204(v673, v651, &qword_1006B07D0, qword_100552820);
    if (v763(v640, 1, v605) == 1)
    {
      sub_100012DF0(v640, &qword_1006B07D0, qword_100552820);
      v641 = v653;
      (v729[7])(v653, 1, 1, v778);
    }

    else
    {
      v641 = v653;
      FMIPItem.location.getter();
      (*(v768 + 8))(v640, v605);
    }

    v385 = v774;
    v642 = v664;
    v643 = sub_1004A3F00(v641);
    sub_100012DF0(v641, &unk_1006C0220, qword_100553770);
    v644 = &selRef_systemRedColor;
    if ((v643 & 1) == 0)
    {
      v644 = &selRef_systemGreenColor;
    }

    v645 = [v621 *v644];

    v646 = v780[1];
    v647 = v760;
    v646(v656, v760);
    v646(v642, v647);
    sub_100012DF0(v691, &unk_1006B0000, &unk_100552AA0);
    sub_100012DF0(v672, &unk_1006B0000, &unk_100552AA0);
    sub_100012DF0(v673, &qword_1006B07D0, qword_100552820);
    sub_100012DF0(v675, &qword_1006B07D0, qword_100552820);
    v395 = 0;
    v397 = 0;
    v728 = v645;
    v727 = v624;
  }

LABEL_162:
  sub_100007204(v385, v331 + v289[9], &qword_1006B07D0, qword_100552820);
  v407 = v744;
  v331[6] = v744;

  v408 = v779;
  v409 = FMIPDevice.shouldDisplaySeparatedLocation.getter();
  v410 = sub_1002642B0(v408, v385, v407, v409 & 1);
  v412 = v411;

  v413 = (v331 + v289[19]);
  *v413 = v410;
  v413[1] = v412;
  v414 = (v331 + v289[16]);
  *v414 = v395;
  v414[1] = v397;
  v415 = v711;
  sub_100007204(v752, v711, &unk_1006B0000, &unk_100552AA0);
  v416 = v780;
  v417 = v780[6];
  v418 = v760;
  if (v417(v415, 1, v760) == 1)
  {
    v419 = v712;
    static Date.distantFuture.getter();
    if (v417(v415, 1, v418) != 1)
    {
      sub_100012DF0(v415, &unk_1006B0000, &unk_100552AA0);
    }
  }

  else
  {
    v419 = v712;
    (v416[4])(v712, v415, v418);
  }

  v420 = v720 ^ 1;
  v421 = v775 + v289[20];
  v784 = v416[4];
  (v784)(v421, v419, v418);
  v422 = v710;
  sub_100007204(v385, v710, &qword_1006B07D0, qword_100552820);
  v423 = v785;
  v424 = v763(v422, 1, v785);
  v780 = v416 + 4;
  v783 = v417;
  if (v424 == 1)
  {
    sub_100012DF0(v422, &qword_1006B07D0, qword_100552820);
    v425 = 0;
    v426 = 0;
  }

  else
  {
    v427 = v768;
    v428 = v678;
    (*(v768 + 32))(v678, v422, v423);
    v426 = sub_1000F4104();
    v425 = sub_1000F39B8(v428, v761);
    (*(v427 + 8))(v428, v423);
  }

  v429 = v779;
  FMIPDevice.batteryLevel.getter();
  v430 = v775;
  *(v775 + v289[21]) = v431;
  v432 = v430 + v289[10];
  *v432 = v426;
  v432[8] = v424 == 1;
  v433 = v430 + v289[11];
  *v433 = v425;
  v433[8] = v424 == 1;
  FMIPDevice.batteryStatus.getter();
  *(v430 + v289[23]) = v771;
  *(v430 + v289[25]) = sub_100494A0C(v429, v762);
  *(v430 + v289[24]) = sub_1004A6880(v429);
  *(v430 + v289[26]) = v727;
  *(v430 + v289[27]) = v728;
  *(v430 + v289[29]) = v420 & 1;
  v434 = v741;
  FMIPDevice.state.getter();
  v435 = v742;
  static FMIPDeviceState.isLowPowerModeEnabled.getter();
  v436 = v743;
  LOBYTE(v429) = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v437 = v749;
  v749(v435, v436);
  v437(v434, v436);
  *(v430 + v289[31]) = v429 & 1;
  if (FMIPDevice.category.getter() == 0x6863746157 && v438 == 0xE500000000000000)
  {

    v439 = 1;
  }

  else
  {
    v439 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v440 = v715;
  v441 = v731;
  v442 = v713;
  v443 = v778;
  v444 = v758;
  v445 = v439 & 1;
  v446 = v775;
  *(v775 + v289[30]) = v445;
  *(v446 + v289[32]) = (v772)(v769, 1, v443) != 1;
  FMIPDevice.lockMetadata.getter();
  v447 = type metadata accessor for FMIPLockMetadata();
  v448 = *(v447 - 8);
  if ((*(v448 + 48))(v442, 1, v447) == 1)
  {
    sub_100012DF0(v442, &unk_1006C1D20, &qword_10055D7A0);
    v449 = v760;
    (v444)(v441, 1, 1, v760);
    v450 = v680;
    FMIPDevice.lostMetadata.getter();
    v451 = type metadata accessor for FMIPDeviceLostModeMetadata();
    v452 = *(v451 - 8);
    if ((*(v452 + 48))(v450, 1, v451) == 1)
    {
      sub_100012DF0(v450, &qword_1006B8B78, &unk_10055AC70);
      v453 = v686;
      (v444)(v686, 1, 1, v449);
      v454 = v669;
      FMIPDevice.itemGroup.getter();
      v455 = v767;
      if (v753(v454, 1, v767) == 1)
      {
        sub_100012DF0(v454, &unk_1006BB1C0, &unk_1005534F0);
        v456 = 1;
        v457 = v775;
        v458 = v783;
      }

      else
      {
        v465 = v661;
        FMIPItemGroup.lostMetadata.getter();
        (*(v748 + 8))(v454, v455);
        v466 = type metadata accessor for FMIPItemLostModeMetadata();
        v467 = *(v466 - 8);
        v468 = (*(v467 + 48))(v465, 1, v466);
        v457 = v775;
        v458 = v783;
        if (v468 == 1)
        {
          sub_100012DF0(v465, &unk_1006C1D10, &qword_1005534B8);
          v456 = 1;
        }

        else
        {
          FMIPItemLostModeMetadata.timestamp.getter();
          (*(v467 + 8))(v465, v466);
          v456 = 0;
        }

        v449 = v760;
        v453 = v686;
      }

      (v758)(v440, v456, 1, v449);
      v476 = (v458)(v453, 1, v449);
      v463 = v731;
      if (v476 != 1)
      {
        sub_100012DF0(v453, &unk_1006B0000, &unk_100552AA0);
      }

      v464 = (v458)(v463, 1, v449);
    }

    else
    {
      v461 = v686;
      FMIPDeviceLostModeMetadata.timestamp.getter();
      (*(v452 + 8))(v450, v451);
      (v444)(v461, 0, 1, v449);
      v462 = v461;
      v289 = v776;
      (v784)(v440, v462, v449);
      (v444)(v440, 0, 1, v449);
      v457 = v775;
      v463 = v731;
      v464 = (v783)(v731, 1, v449);
    }

    v460 = v778;
    if (v464 != 1)
    {
      sub_100012DF0(v463, &unk_1006B0000, &unk_100552AA0);
    }
  }

  else
  {
    FMIPLockMetadata.timestamp.getter();
    (*(v448 + 8))(v442, v447);
    v459 = v760;
    (v444)(v441, 0, 1, v760);
    (v784)(v440, v441, v459);
    (v444)(v440, 0, 1, v459);
    v457 = v775;
    v460 = v778;
  }

  sub_100035318(v440, v457 + v289[33], &unk_1006B0000, &unk_100552AA0);
  v477 = v779;
  *(v457 + v289[36]) = FMIPDevice.shouldDisplaySeparatedLocation.getter() & 1;
  v478 = v751;
  v479 = v756;
  v480 = v729;
  if (v770)
  {
    v481 = v679;
    sub_100007204(v774, v679, &qword_1006B07D0, qword_100552820);
    v482 = v785;
    if (v763(v481, 1, v785) == 1)
    {
      sub_100012DF0(v481, &qword_1006B07D0, qword_100552820);
      v483 = 0;
    }

    else
    {
      v484 = v697;
      FMIPItem.state.getter();
      (*(v768 + 8))(v481, v482);
      v440 = v698;
      static FMIPItemState.isLocating.getter();
      sub_1004A7DD4(&qword_1006C0350, &type metadata accessor for FMIPItemState, &protocol conformance descriptor for FMIPItemState);
      v485 = v480;
      v486 = v700;
      v487 = dispatch thunk of SetAlgebra.isSuperset(of:)();
      v488 = *(v699 + 8);
      v488(v440, v486);
      v489 = v486;
      v480 = v485;
      v477 = v779;
      v488(v484, v489);
      v460 = v778;
      v483 = v487;
    }
  }

  else
  {
    v483 = FMIPDevice.isLocating.getter();
  }

  v490 = v714;
  *(v457 + *(v776 + 112)) = v483 & 1;
  sub_100007204(v769, v490, &unk_1006C0220, qword_100553770);
  if ((v772)(v490, 1, v460) == 1)
  {
    sub_100012DF0(v490, &unk_1006C0220, qword_100553770);
    v491 = 0.0;
LABEL_206:
    v495 = v706;
    v496 = v705;
    v497 = v707;
    (*(v706 + 104))(v705, enum case for FMIPConfigValue.inaccuracyRadiusThreshold(_:), v707);
    *&v786 = 0x7FFFFFFFFFFFFFFFLL;
    FMIPGlobalConfig<A>(_:fallback:)();
    (*(v495 + 8))(v496, v497);
    *(v457 + *(v776 + 136)) = v788 < v491;
    v498 = FMIPDevice.ownerIdentifier.getter();
    v500 = v499;
    if (v498 == FMIPDefaultOwnerIdentifier.getter() && v500 == v501)
    {

      v502 = 0;
    }

    else
    {
      v503 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v502 = v503 ^ 1;
    }

    v504 = v776;
    *(v457 + *(v776 + 140)) = v502 & 1;
    v505 = v704;
    FMIPDevice.itemGroup.getter();
    v506 = v753(v505, 1, v767) != 1;
    sub_100012DF0(v505, &unk_1006BB1C0, &unk_1005534F0);
    *(v457 + *(v504 + 148)) = v506;
    if ((v771 & 0x2000) != 0 && (FMIPDevice.pairingIncomplete.getter() & 1) == 0)
    {
      v510 = 1;
    }

    else
    {
      v507 = v687;
      FMIPDevice.features.getter();
      v508 = v688;
      static FMIPFeatures.isBTFindingSupported.getter();
      sub_1004A7DD4(&qword_1006C1D50, &type metadata accessor for FMIPFeatures, &protocol conformance descriptor for FMIPFeatures);
      v509 = v690;
      v510 = dispatch thunk of SetAlgebra.isSuperset(of:)();
      v511 = *(v689 + 8);
      v511(v508, v509);
      v511(v507, v509);
    }

    v440 = v757;

    v512 = v776;
    *(v457 + *(v776 + 156)) = v510 & 1;
    v513 = v733;
    FMIPDevice.deviceConnectedState.getter();
    v514 = v745;
    v515 = v734;
    (v702)(v745, enum case for FMIPDeviceConnectedStateType.attached(_:), v734);
    v516 = static FMIPDeviceConnectedStateType.== infix(_:_:)();
    v517 = v514;
    v518 = v750;
    v750(v517, v515);
    v518(v513, v515);
    *(v457 + v512[40]) = v516 & 1;
    *(v457 + v512[41]) = FMIPDevice.removePairingLockLocally.getter() & 1;
    *(v457 + v512[42]) = FMIPDevice.skipPasswordOnRemove.getter() & 1;
    *(v457 + v512[43]) = FMIPDevice.warnLockOnUnattachedRemove.getter() & 1;
    if (v770)
    {
      v479 = v732;
      if (qword_1006AEBE0 == -1)
      {
        goto LABEL_216;
      }

      goto LABEL_275;
    }

    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v529 = type metadata accessor for Logger();
    sub_100005B14(v529, qword_1006D4630);
    v530 = *(v478 + 16);
    v531 = v677;
    v530(v677, v477, v440);
    v532 = v708;
    v530(v708, v477, v440);
    v533 = Logger.logObject.getter();
    v534 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v533, v534))
    {
      v535 = swift_slowAlloc();
      *v535 = 67109376;
      LODWORD(v784) = v534;
      v536 = v741;
      FMIPDevice.state.getter();
      v537 = v742;
      static FMIPDeviceState.isLocating.getter();
      v538 = v743;
      v539 = dispatch thunk of SetAlgebra.isSuperset(of:)();
      v785 = v533;
      v540 = v749;
      v749(v537, v538);
      v540(v536, v538);
      v541 = *(v478 + 8);
      v541(v531, v757);
      *(v535 + 4) = v539 & 1;
      *(v535 + 8) = 1024;
      FMIPDevice.state.getter();
      static FMIPDeviceState.isCrowdsourcedLocating.getter();
      v542 = dispatch thunk of SetAlgebra.isSuperset(of:)();
      v540(v537, v538);
      v543 = v538;
      v440 = v757;
      v540(v536, v543);
      v533 = v785;
      v541(v708, v440);
      *(v535 + 10) = v542 & 1;
      _os_log_impl(&_mh_execute_header, v533, v784, "FMDeviceDetailViewModel: Locating states - device: %{BOOL}d ba: %{BOOL}d", v535, 0xEu);
    }

    else
    {
      v541 = *(v478 + 8);
      v541(v532, v440);
      v541(v531, v440);
    }

    v544 = v752;
    v545 = v735;
    v546 = v709;
    v547 = v732;
    v548 = v761;

    v541(v779, v440);
    sub_100012DF0(v747, &qword_1006BB1E0, &unk_100558B50);
    sub_100012DF0(v544, &unk_1006B0000, &unk_100552AA0);
    sub_100012DF0(v755, &unk_1006BBCE0, &unk_1005534C0);
    sub_100012DF0(v746, &unk_1006BBCE0, &unk_1005534C0);
    sub_100012DF0(v546, &qword_1006C1D30, &qword_100563ED8);
  }

  else
  {
    v492 = FMIPLocation.location.getter();
    v480[1](v490, v460);
    [v492 horizontalAccuracy];
    v491 = v493;
    v494 = v493;

    if ((*&v494 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v491 <= -9.22337204e18)
      {
        __break(1u);
      }

      else if (v491 < 9.22337204e18)
      {
        goto LABEL_206;
      }

      __break(1u);
    }

    __break(1u);
LABEL_275:
    swift_once();
LABEL_216:
    v519 = type metadata accessor for Logger();
    sub_100005B14(v519, qword_1006D4630);
    v520 = v685;
    sub_100007204(v774, v685, &qword_1006B07D0, qword_100552820);
    v521 = Logger.logObject.getter();
    v522 = static os_log_type_t.default.getter();
    v523 = os_log_type_enabled(v521, v522);
    v524 = v785;
    if (v523)
    {
      v525 = swift_slowAlloc();
      v526 = swift_slowAlloc();
      *&v788 = v526;
      *v525 = 136315138;
      v527 = v668;
      sub_100007204(v520, v668, &qword_1006B07D0, qword_100552820);
      if (v763(v527, 1, v524) == 1)
      {
        sub_100012DF0(v527, &qword_1006B07D0, qword_100552820);
        v528 = 2;
      }

      else
      {
        v549 = v697;
        FMIPItem.state.getter();
        (*(v768 + 8))(v527, v524);
        v550 = v698;
        static FMIPItemState.isLocating.getter();
        sub_1004A7DD4(&qword_1006C0350, &type metadata accessor for FMIPItemState, &protocol conformance descriptor for FMIPItemState);
        v551 = v700;
        v552 = dispatch thunk of SetAlgebra.isSuperset(of:)();
        v553 = *(v699 + 8);
        v554 = v550;
        v440 = v757;
        v553(v554, v551);
        v555 = v549;
        v520 = v685;
        v553(v555, v551);
        v479 = v732;
        v528 = v552 & 1;
      }

      LOBYTE(v786) = v528;
      sub_10007EBC0(&qword_1006B14D8, &qword_100553900);
      v556 = String.init<A>(describing:)();
      v558 = v557;
      sub_100012DF0(v520, &qword_1006B07D0, qword_100552820);
      v559 = sub_100005B4C(v556, v558, &v788);

      *(v525 + 4) = v559;
      _os_log_impl(&_mh_execute_header, v521, v522, "FMDeviceDetailViewModel: Locating states - device: %s", v525, 0xCu);
      sub_100006060(v526);

      (*(v751 + 8))(v779, v440);
    }

    else
    {

      (*(v751 + 8))(v779, v440);
      sub_100012DF0(v520, &qword_1006B07D0, qword_100552820);
    }

    sub_100012DF0(v747, &qword_1006BB1E0, &unk_100558B50);
    sub_100012DF0(v752, &unk_1006B0000, &unk_100552AA0);
    sub_100012DF0(v755, &unk_1006BBCE0, &unk_1005534C0);
    sub_100012DF0(v746, &unk_1006BBCE0, &unk_1005534C0);
    sub_100012DF0(v709, &qword_1006C1D30, &qword_100563ED8);
    v545 = v735;
  }

  sub_100012DF0(v769, &unk_1006C0220, qword_100553770);

  sub_100012DF0(v545, &qword_1006C39A0, &unk_100558B20);
  return sub_100012DF0(v774, &qword_1006B07D0, qword_100552820);
}

char *sub_1004A024C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v229 = a3;
  v237 = type metadata accessor for FMIPPartType();
  v218 = *(v237 - 1);
  __chkstk_darwin(v237);
  v232 = (&v204 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v236 = &v204 - v7;
  __chkstk_darwin(v8);
  v219 = &v204 - v9;
  __chkstk_darwin(v10);
  v225 = &v204 - v11;
  __chkstk_darwin(v12);
  v221 = &v204 - v13;
  __chkstk_darwin(v14);
  v230 = &v204 - v15;
  v16 = sub_10007EBC0(&unk_1006BB1C0, &unk_1005534F0);
  __chkstk_darwin(v16 - 8);
  v214 = &v204 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v204 - v19;
  __chkstk_darwin(v21);
  v209 = &v204 - v22;
  __chkstk_darwin(v23);
  v223 = &v204 - v24;
  __chkstk_darwin(v25);
  v212 = &v204 - v26;
  __chkstk_darwin(v27);
  v205 = &v204 - v28;
  __chkstk_darwin(v29);
  v211 = (&v204 - v30);
  v31 = type metadata accessor for FMIPItem();
  v32 = *(v31 - 8);
  __chkstk_darwin(v31);
  v235 = &v204 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v220 = (&v204 - v35);
  __chkstk_darwin(v36);
  v38 = &v204 - v37;
  __chkstk_darwin(v39);
  v224 = &v204 - v40;
  __chkstk_darwin(v41);
  v231 = &v204 - v42;
  __chkstk_darwin(v43);
  v208 = (&v204 - v44);
  __chkstk_darwin(v45);
  v213 = &v204 - v46;
  __chkstk_darwin(v47);
  v217 = &v204 - v48;
  v49 = type metadata accessor for FMSelectedSection(0);
  __chkstk_darwin(v49);
  v51 = &v204 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_10007EBC0(&qword_1006B07D0, qword_100552820);
  __chkstk_darwin(v52 - 8);
  v226 = &v204 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v54);
  v210 = &v204 - v55;
  __chkstk_darwin(v56);
  v215 = &v204 - v57;
  __chkstk_darwin(v58);
  v216 = &v204 - v59;
  __chkstk_darwin(v60);
  v206 = &v204 - v61;
  __chkstk_darwin(v62);
  v207 = &v204 - v63;
  __chkstk_darwin(v64);
  v66 = &v204 - v65;
  v68 = __chkstk_darwin(v67);
  v70 = &v204 - v69;
  v71 = v32[7];
  v222 = a1;
  v227 = v32 + 7;
  v228 = v71;
  (v71)(a1, 1, 1, v31, v68);
  v72 = FMIPDevice.shouldDisplaySeparatedLocation.getter();
  v233 = v31;
  v234 = v32;
  if (v72)
  {
    v235 = v38;
    v236 = v70;
    v73 = *(v229 + 56);
    v74 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
    swift_beginAccess();
    sub_100062074(v73 + v74, v51);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_10005D4E4(v51);
      return 0;
    }

    v92 = sub_10007EBC0(&qword_1006BEEE0, qword_100552070);
    v93 = v236;
    sub_100035318(&v51[*(v92 + 48)], v236, &qword_1006B07D0, qword_100552820);
    v94 = type metadata accessor for FMIPDevice();
    (*(*(v94 - 8) + 8))(v51, v94);
    sub_100007204(v93, v66, &qword_1006B07D0, qword_100552820);
    v80 = (v32 + 6);
    v49 = v32[6];
    if ((v49)(v66, 1, v31) == 1)
    {
      sub_100012DF0(v66, &qword_1006B07D0, qword_100552820);
      v95 = v212;
      FMIPDevice.itemGroup.getter();
      v96 = type metadata accessor for FMIPItemGroup();
      v91 = *(v96 - 1);
      v97 = *(v91 + 48);
      v213 = (v91 + 48);
      v208 = v97;
      v98 = v97(v95, 1, v96);
      v217 = v96;
      v207 = v91;
      if (v98 == 1)
      {
        sub_100012DF0(v95, &unk_1006BB1C0, &unk_1005534F0);
        v99 = v215;
        (v228)(v215, 1, 1, v31);
        v100 = v236;
        v101 = v223;
LABEL_64:
        v167 = v100;
        FMIPDevice.itemGroup.getter();
        v168 = v101;
        v169 = v101;
        v170 = v217;
        if (v208(v168, 1, v217) == 1)
        {
          sub_100012DF0(v169, &unk_1006BB1C0, &unk_1005534F0);
          v171 = 1;
          v100 = v167;
          v165 = v228;
LABEL_78:
          v181 = v216;
          (v165)(v216, v171, 1, v31);
          if ((v49)(v99, 1, v31) != 1)
          {
            sub_100012DF0(v99, &qword_1006B07D0, qword_100552820);
          }

LABEL_80:
          v185 = v210;
          sub_100007204(v181, v210, &qword_1006B07D0, qword_100552820);
          if ((v49)(v185, 1, v31) == 1)
          {
            sub_100012DF0(v181, &qword_1006B07D0, qword_100552820);
            sub_100012DF0(v100, &qword_1006B07D0, qword_100552820);
            v112 = v185;
            goto LABEL_23;
          }

          v186 = v100;
          v187 = v222;
          sub_100012DF0(v222, &qword_1006B07D0, qword_100552820);
          v188 = v235;
          (v32[4])(v235, v185, v31);
          (v32[2])(v187, v188, v31);
          (v165)(v187, 0, 1, v31);
          v189 = v209;
          FMIPDevice.itemGroup.getter();
          v190 = v217;
          if (v208(v189, 1, v217) == 1)
          {
            sub_100012DF0(v216, &qword_1006B07D0, qword_100552820);
            sub_100012DF0(v186, &qword_1006B07D0, qword_100552820);
            sub_100012DF0(v189, &unk_1006BB1C0, &unk_1005534F0);
            v96 = 0;
LABEL_91:
            v32[1](v235, v31);
            return v96;
          }

          v191 = FMIPItemGroup.groupedItems.getter();
          v192 = (*(v207 + 8))(v189, v190);
          __chkstk_darwin(v192);
          *(&v204 - 2) = v188;
          v193 = sub_100110710(sub_1004A7D68, (&v204 - 4), v191);

          if (v193)
          {
            v194 = *(v193 + 16);
            v31 = v233;
            if (v194)
            {
              v96 = sub_10008C8B4(*(v193 + 16), 0);
              sub_1004A2EF0(&v242, &v96[(*(v32 + 80) + 32) & ~*(v32 + 80)], v194, v193, &type metadata accessor for FMIPItem);
              v196 = v195;
              sub_1002204D4(v242);
              if (v196 != v194)
              {
                __break(1u);
                goto LABEL_88;
              }
            }

            else
            {

              v96 = _swiftEmptyArrayStorage;
            }

            sub_100012DF0(v216, &qword_1006B07D0, qword_100552820);
            sub_100012DF0(v236, &qword_1006B07D0, qword_100552820);
            goto LABEL_91;
          }

LABEL_88:
          sub_100012DF0(v216, &qword_1006B07D0, qword_100552820);
          sub_100012DF0(v236, &qword_1006B07D0, qword_100552820);
          v96 = 0;
          v31 = v233;
          goto LABEL_91;
        }

        v211 = v49;
        v214 = v80;
        v204 = a2;
        v172 = FMIPItemGroup.items.getter();
        (*(v207 + 8))(v169, v170);
        v230 = *(v172 + 16);
        if (!v230)
        {
LABEL_73:

          v171 = 1;
LABEL_77:
          v100 = v236;
          v165 = v228;
          v49 = v211;
          v99 = v215;
          goto LABEL_78;
        }

        v173 = 0;
        v232 = (v32 + 2);
        LODWORD(v231) = enum case for FMIPPartType.leftBud(_:);
        v174 = (v218 + 104);
        v175 = (v218 + 8);
        v229 = (v32 + 1);
        while (v173 < *(v172 + 16))
        {
          (v32[2])(v224, v172 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + v32[9] * v173, v31);
          FMIPItem.partType.getter();
          v176 = v219;
          (*v174)(v219, v231, v237);
          sub_1004A7DD4(&qword_1006BEF50, &type metadata accessor for FMIPPartType, &protocol conformance descriptor for FMIPPartType);
          dispatch thunk of RawRepresentable.rawValue.getter();
          dispatch thunk of RawRepresentable.rawValue.getter();
          if (v242 == v238 && v243 == v239)
          {
            v182 = *v175;
            v183 = v176;
            v184 = v237;
            (*v175)(v183, v237);
            v182(v225, v184);

LABEL_76:

            v32 = v234;
            (*(v234 + 32))(v216, v224, v31);
            v171 = 0;
            goto LABEL_77;
          }

          v177 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v178 = *v175;
          v179 = v176;
          v180 = v237;
          (*v175)(v179, v237);
          v178(v225, v180);
          v31 = v233;

          if (v177)
          {
            goto LABEL_76;
          }

          ++v173;
          (*v229)(v224, v31);
          v32 = v234;
          if (v230 == v173)
          {
            goto LABEL_73;
          }
        }

        goto LABEL_103;
      }

      goto LABEL_30;
    }

    v102 = v217;
    v237 = v32[4];
    (v237)(v217, v66, v31);
    v103 = v211;
    FMIPDevice.itemGroup.getter();
    v104 = type metadata accessor for FMIPItemGroup();
    v105 = *(v104 - 8);
    v232 = *(v105 + 48);
    if (v232(v103, 1, v104) == 1)
    {
      sub_100012DF0(v103, &unk_1006BB1C0, &unk_1005534F0);
      goto LABEL_49;
    }

    v231 = (v105 + 48);
    v204 = a2;
    v129 = FMIPItemGroup.groupedItems.getter();
    v131 = *(v105 + 8);
    v130 = (v105 + 8);
    v230 = v131;
    v132 = (v131)(v103, v104);
    __chkstk_darwin(v132);
    *(&v204 - 2) = v102;
    v133 = sub_100110710(sub_1004A7D68, (&v204 - 4), v129);

    if (!v133)
    {
LABEL_49:
      if (qword_1006AEBE0 == -1)
      {
LABEL_50:
        v147 = type metadata accessor for Logger();
        sub_100005B14(v147, qword_1006D4630);
        v148 = Logger.logObject.getter();
        v149 = static os_log_type_t.error.getter();
        v150 = os_log_type_enabled(v148, v149);
        v144 = v233;
        v151 = v234;
        if (v150)
        {
          v152 = swift_slowAlloc();
          *v152 = 0;
          _os_log_impl(&_mh_execute_header, v148, v149, "FMDeviceDetailViewModel: We shouldn't be here. No group for this item", v152, 2u);
        }

        sub_100012DF0(v236, &qword_1006B07D0, qword_100552820);
        v96 = 0;
        goto LABEL_98;
      }

LABEL_104:
      swift_once();
      goto LABEL_50;
    }

    v225 = 0;
    v226 = v130;
    v229 = v104;
    v211 = v49;
    v214 = v80;
    v134 = v133 + 56;
    v135 = 1 << *(v133 + 32);
    v136 = -1;
    if (v135 < 64)
    {
      v136 = ~(-1 << v135);
    }

    v137 = v136 & *(v133 + 56);
    v138 = (v135 + 63) >> 6;
    v235 = (v234 + 16);
    v139 = (v234 + 8);

    v140 = 0;
    v141 = v208;
    if (v137)
    {
      while (1)
      {
        v142 = v140;
LABEL_46:
        v143 = v133;
        v144 = v233;
        v145 = *(v133 + 48) + *(v234 + 72) * (__clz(__rbit64(v137)) | (v142 << 6));
        v146 = v213;
        (*(v234 + 16))(v213, v145, v233);
        (v237)(v141, v146, v144);
        if (FMIPItem.primaryItemPart.getter())
        {
          break;
        }

        v137 &= v137 - 1;
        (*v139)(v141, v144);
        v140 = v142;
        v133 = v143;
        if (!v137)
        {
          goto LABEL_43;
        }
      }

      v197 = v206;
      v198 = v237;
      (v237)(v206, v141, v144);
      v199 = v228;
      (v228)(v197, 0, 1, v144);
      v158 = v222;
      sub_100012DF0(v222, &qword_1006B07D0, qword_100552820);
      v159 = v207;
      v200 = v197;
      v133 = v143;
      (v198)(v207, v200, v144);
      (v199)(v159, 0, 1, v144);
      v151 = v234;
LABEL_93:
      sub_100035318(v159, v158, &qword_1006B07D0, qword_100552820);
      v201 = *(v133 + 16);
      if (v201)
      {
        v96 = sub_10008C8B4(*(v133 + 16), 0);
        sub_1004A2EF0(&v242, &v96[(*(v151 + 80) + 32) & ~*(v151 + 80)], v201, v133, &type metadata accessor for FMIPItem);
        v203 = v202;
        sub_1002204D4(v242);
        if (v203 == v201)
        {
LABEL_97:
          sub_100012DF0(v236, &qword_1006B07D0, qword_100552820);
LABEL_98:
          (*(v151 + 8))(v217, v144);
          return v96;
        }

        __break(1u);
      }

      v96 = _swiftEmptyArrayStorage;
      goto LABEL_97;
    }

LABEL_43:
    while (1)
    {
      v142 = v140 + 1;
      if (__OFADD__(v140, 1))
      {
        break;
      }

      if (v142 >= v138)
      {

        v153 = v206;
        v154 = v233;
        v155 = v228;
        (v228)(v206, 1, 1, v233);
        v156 = v205;
        FMIPDevice.itemGroup.getter();
        v157 = v229;
        if (v232(v156, 1, v229) == 1)
        {
          v158 = v222;
          sub_100012DF0(v222, &qword_1006B07D0, qword_100552820);
          sub_100012DF0(v156, &unk_1006BB1C0, &unk_1005534F0);
          v159 = v207;
          (v155)(v207, 1, 1, v154);
        }

        else
        {
          v160 = FMIPItemGroup.items.getter();
          v161 = (v230)(v156, v157);
          __chkstk_darwin(v161);
          *(&v204 - 2) = v217;
          v159 = v207;
          sub_10011FB64(sub_1003E0788, v160, v207);

          v158 = v222;
          sub_100012DF0(v222, &qword_1006B07D0, qword_100552820);
        }

        v144 = v154;
        v151 = v234;
        if (v211(v153, 1, v144) != 1)
        {
          sub_100012DF0(v153, &qword_1006B07D0, qword_100552820);
        }

        goto LABEL_93;
      }

      v137 = *(v134 + 8 * v142);
      ++v140;
      if (v137)
      {
        goto LABEL_46;
      }
    }

LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  FMIPDevice.itemGroup.getter();
  v76 = type metadata accessor for FMIPItemGroup();
  v77 = *(v76 - 8);
  v78 = *(v77 + 48);
  if (v78(v20, 1, v76) == 1)
  {
    sub_100012DF0(v20, &unk_1006BB1C0, &unk_1005534F0);
    v79 = v226;
    (v228)(v226, 1, 1, v31);
    goto LABEL_22;
  }

  v223 = v78;
  v224 = (v77 + 48);
  v204 = a2;
  v80 = FMIPItemGroup.items.getter();
  v81 = *(v77 + 8);
  v225 = v76;
  v221 = (v77 + 8);
  v219 = v81;
  (v81)(v20, v76);
  v229 = *(v80 + 16);
  if (v229)
  {
    v82 = 0;
    v231 = (v234 + 16);
    LODWORD(v230) = enum case for FMIPPartType.case(_:);
    v83 = (v218 + 104);
    v84 = (v218 + 8);
    v85 = (v234 + 8);
    while (v82 < *(v80 + 16))
    {
      (*(v234 + 16))(v235, v80 + ((*(v234 + 80) + 32) & ~*(v234 + 80)) + *(v234 + 72) * v82, v31);
      FMIPItem.partType.getter();
      v86 = v232;
      v49 = v237;
      (*v83)(v232, v230, v237);
      sub_1004A7DD4(&qword_1006BEF50, &type metadata accessor for FMIPPartType, &protocol conformance descriptor for FMIPPartType);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v242 == v240 && v243 == v241)
      {
        v106 = *v84;
        v107 = v86;
        v108 = v237;
        (*v84)(v107, v237);
        v106(v236, v108);

        v31 = v233;
LABEL_20:

        v91 = v234;
        v79 = v226;
        (*(v234 + 32))(v226, v235, v31);
        v90 = 0;
        v32 = v220;
        goto LABEL_21;
      }

      v49 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v87 = *v84;
      v88 = v86;
      v89 = v237;
      (*v84)(v88, v237);
      v87(v236, v89);
      v31 = v233;

      if (v49)
      {
        goto LABEL_20;
      }

      ++v82;
      (*v85)(v235, v31);
      if (v229 == v82)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_101;
  }

LABEL_13:

  v90 = 1;
  v91 = v234;
  v32 = v220;
  v79 = v226;
LABEL_21:
  v109 = v228;
  (v228)(v79, v90, 1, v31);
  v110 = (*(v91 + 48))(v79, 1, v31);
  v111 = v222;
  if (v110 == 1)
  {
LABEL_22:
    v112 = v79;
LABEL_23:
    sub_100012DF0(v112, &qword_1006B07D0, qword_100552820);
    return 0;
  }

  sub_100012DF0(v222, &qword_1006B07D0, qword_100552820);
  (*(v91 + 32))(v32, v79, v31);
  (*(v91 + 16))(v111, v32, v31);
  (v109)(v111, 0, 1, v31);
  v113 = v214;
  FMIPDevice.itemGroup.getter();
  v114 = v225;
  if ((v223)(v113, 1, v225) == 1)
  {
    sub_100012DF0(v113, &unk_1006BB1C0, &unk_1005534F0);
    v96 = 0;
  }

  else
  {
    v115 = FMIPItemGroup.groupedItems.getter();
    v116 = (v219)(v113, v114);
    __chkstk_darwin(v116);
    *(&v204 - 2) = v32;
    v117 = sub_100110710(sub_1004A7D68, (&v204 - 4), v115);

    if (v117)
    {
      v95 = *(v117 + 16);
      v31 = v233;
      if (v95)
      {
        v96 = sub_10008C8B4(*(v117 + 16), 0);
        sub_1004A2EF0(&v242, &v96[(*(v91 + 80) + 32) & ~*(v91 + 80)], v95, v117, &type metadata accessor for FMIPItem);
        a2 = v118;
        sub_1002204D4(v242);
        if (a2 != v95)
        {
          __break(1u);
LABEL_30:
          v211 = v49;
          v214 = v80;
          v204 = a2;
          v119 = FMIPItemGroup.items.getter();
          (*(v91 + 8))(v95, v96);
          v101 = v223;
          v226 = *(v119 + 16);
          if (!v226)
          {
LABEL_37:

            v128 = 1;
            v99 = v215;
LABEL_63:
            v165 = v228;
            (v228)(v99, v128, 1, v31);
            v80 = v214;
            v49 = v211;
            v166 = v211(v99, 1, v31);
            a2 = v204;
            v100 = v236;
            if (v166 != 1)
            {
              v181 = v216;
              (v32[4])(v216, v99, v31);
              (v165)(v181, 0, 1, v31);
              goto LABEL_80;
            }

            goto LABEL_64;
          }

          v120 = 0;
          v232 = (v32 + 2);
          LODWORD(v229) = enum case for FMIPPartType.case(_:);
          v121 = (v218 + 104);
          v122 = (v218 + 8);
          v220 = v32 + 1;
          while (v120 < *(v119 + 16))
          {
            (v32[2])(v231, v119 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + v32[9] * v120, v31);
            FMIPItem.partType.getter();
            v123 = v221;
            (*v121)(v221, v229, v237);
            sub_1004A7DD4(&qword_1006BEF50, &type metadata accessor for FMIPPartType, &protocol conformance descriptor for FMIPPartType);
            dispatch thunk of RawRepresentable.rawValue.getter();
            dispatch thunk of RawRepresentable.rawValue.getter();
            if (v242 == v238 && v243 == v239)
            {
              v162 = *v122;
              v163 = v123;
              v164 = v237;
              (*v122)(v163, v237);
              v162(v230, v164);

LABEL_62:

              v32 = v234;
              v99 = v215;
              (*(v234 + 32))(v215, v231, v31);
              v128 = 0;
              v101 = v223;
              goto LABEL_63;
            }

            v124 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v125 = *v122;
            v126 = v123;
            v127 = v237;
            (*v122)(v126, v237);
            v125(v230, v127);
            v31 = v233;

            if (v124)
            {
              goto LABEL_62;
            }

            ++v120;
            (*v220)(v231, v31);
            v32 = v234;
            v101 = v223;
            if (v226 == v120)
            {
              goto LABEL_37;
            }
          }

LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
          goto LABEL_104;
        }
      }

      else
      {

        v96 = _swiftEmptyArrayStorage;
      }
    }

    else
    {
      v96 = 0;
      v31 = v233;
    }
  }

  (*(v91 + 8))(v32, v31);
  return v96;
}

uint64_t sub_1004A218C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 80);
  v5 = type metadata accessor for Date();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

Swift::Int sub_1004A2200()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1004A224C(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1004A22D8(uint64_t a1)
{
  result = sub_1004A7DD4(&qword_1006C1D08, type metadata accessor for FMDeviceDetailViewModel, &unk_100563E68);
  *(a1 + 8) = result;
  return result;
}

void sub_1004A2348(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v44 = sub_10007EBC0(&qword_1006AF940, &unk_100555E70);
  v41 = *(v44 - 8);
  __chkstk_darwin(v44);
  v43 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v42 = &v38 - v10;
  v11 = a4 + 64;
  v12 = -1 << *(a4 + 32);
  if (-v12 < 64)
  {
    v13 = ~(-1 << -v12);
  }

  else
  {
    v13 = -1;
  }

  v14 = v13 & *(a4 + 64);
  v45 = a2;
  if (!a2)
  {
LABEL_18:
    v21 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v11;
    a1[2] = ~v12;
    a1[3] = v21;
    a1[4] = v14;
    return;
  }

  if (!a3)
  {
    v21 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v38 = v12;
    v39 = a1;
    v15 = 0;
    v16 = (63 - v12) >> 6;
    v17 = 1;
    v40 = a3;
    while (v14)
    {
LABEL_14:
      v20 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v21 = v15;
      v22 = v20 | (v15 << 6);
      v23 = *(a4 + 56);
      v24 = a4;
      v25 = (*(a4 + 48) + 16 * v22);
      v26 = *v25;
      v27 = v25[1];
      v28 = type metadata accessor for FMIPItemPairingState();
      v29 = *(v28 - 8);
      v30 = v23 + *(v29 + 72) * v22;
      v31 = v43;
      (*(v29 + 16))(&v43[*(v44 + 48)], v30, v28);
      *v31 = v26;
      v31[1] = v27;
      v32 = v31;
      v33 = v42;
      sub_100035318(v32, v42, &qword_1006AF940, &unk_100555E70);
      v34 = v33;
      v35 = v45;
      sub_100035318(v34, v45, &qword_1006AF940, &unk_100555E70);
      if (v17 == v40)
      {

        a1 = v39;
        a4 = v24;
        goto LABEL_23;
      }

      a1 = (v35 + *(v41 + 72));
      v45 = a1;

      v36 = __OFADD__(v17++, 1);
      a4 = v24;
      v15 = v21;
      if (v36)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v18 = v15;
    while (1)
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v19 >= v16)
      {
        break;
      }

      v14 = *(v11 + 8 * v19);
      ++v18;
      if (v14)
      {
        v15 = v19;
        goto LABEL_14;
      }
    }

    v14 = 0;
    if (v16 <= v15 + 1)
    {
      v37 = v15 + 1;
    }

    else
    {
      v37 = v16;
    }

    v21 = v37 - 1;
    a1 = v39;
LABEL_23:
    v12 = v38;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

void *sub_1004A2634(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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
      v17 = __clz(__rbit64(v9)) | (v12 << 6);
      v18 = *(*(a4 + 56) + 8 * v17);
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 48) + v17);
      *(v11 + 8) = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 16;

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
        goto LABEL_27;
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
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_1004A278C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = type metadata accessor for UUID();
  v42 = *(v40 - 8);
  __chkstk_darwin(v40);
  v41 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v9);
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

void *sub_1004A2A30(void *result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1 << *(a4 + 32);
  if (-v5 < 64)
  {
    v6 = ~(-1 << -v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v9 = 0;
    a3 = 0;
LABEL_24:
    *result = a4;
    result[1] = v4;
    result[2] = ~v5;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = a2;
    v30 = result;
    v31 = a3;
    result = 0;
    v9 = 0;
    v29 = -1 << *(a4 + 32);
    v10 = (63 - v5) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_14:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v15 = v14 | (v9 << 6);
      v16 = a4;
      v17 = (*(a4 + 48) + 16 * v15);
      v19 = *v17;
      v18 = v17[1];
      v20 = *(a4 + 56) + 48 * v15;
      v21 = *v20;
      v22 = *(v20 + 8);
      v23 = *(v20 + 16);
      v24 = *(v20 + 24);
      v25 = *(v20 + 32);
      v26 = *(v20 + 40);
      *v8 = v19;
      *(v8 + 8) = v18;
      *(v8 + 16) = v21;
      *(v8 + 24) = v22;
      *(v8 + 32) = v23;
      *(v8 + 40) = v24;
      *(v8 + 48) = v25;
      *(v8 + 56) = v26;
      if (v11 == v31)
      {

        a4 = v16;
        v5 = v29;
        result = v30;
        a3 = v31;
        goto LABEL_24;
      }

      v8 += 64;

      result = v11;
      v27 = __OFADD__(v11++, 1);
      a4 = v16;
      if (v27)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_14;
      }
    }

    v7 = 0;
    if (v10 <= v9 + 1)
    {
      v28 = v9 + 1;
    }

    else
    {
      v28 = v10;
    }

    v9 = v28 - 1;
    a3 = result;
    v5 = v29;
    result = v30;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1004A2BFC(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
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
      *v11 = *(*(a4 + 48) + ((v12 << 9) | (8 * v17)));
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      ++v11;

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
        goto LABEL_27;
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

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1004A2D50(void *result, void *a2, uint64_t a3, uint64_t a4)
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
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

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
        goto LABEL_27;
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
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_1004A2EF0(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v41 = a5(0);
  v43 = *(v41 - 8);
  __chkstk_darwin(v41);
  v42 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v10);
  v40 = &v34 - v12;
  v13 = a4 + 56;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v32 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v13;
    *(a1 + 16) = ~v14;
    *(a1 + 24) = v32;
    *(a1 + 32) = v16;
    return;
  }

  if (!a3)
  {
    v32 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(a4 + 32);
    v35 = a1;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    a1 = 1;
    v38 = a4 + 56;
    v39 = a3;
    v19 = v40;
    while (v16)
    {
      v45 = a2;
LABEL_15:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v44 = v17;
      v23 = a4;
      v24 = *(a4 + 48);
      v25 = v42;
      v26 = v43;
      v27 = *(v43 + 72);
      v28 = v41;
      (*(v43 + 16))(v42, v24 + v27 * (v22 | (v17 << 6)), v41, v11);
      v29 = *(v26 + 32);
      v29(v19, v25, v28);
      v30 = v45;
      v29(v45, v19, v28);
      if (a1 == v39)
      {
        v14 = v34;
        a1 = v35;
        a4 = v23;
        v32 = v44;
        v13 = v38;
        goto LABEL_25;
      }

      a2 = &v30[v27];
      v31 = __OFADD__(a1++, 1);
      a4 = v23;
      v17 = v44;
      v13 = v38;
      if (v31)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v45 = a2;
        v17 = v21;
        goto LABEL_15;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v33 = v17 + 1;
    }

    else
    {
      v33 = v18;
    }

    v32 = v33 - 1;
    v14 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

void *sub_1004A3198(void *result, void *a2, uint64_t a3, uint64_t a4)
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
      v18 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
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
        goto LABEL_27;
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
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1004A32EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v93 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10007EBC0(&unk_1006B0000, &unk_100552AA0);
  __chkstk_darwin(v7 - 8);
  v91 = &v86 - v8;
  v90 = sub_10007EBC0(&unk_1006B00E0, &qword_100554190);
  __chkstk_darwin(v90);
  v92 = &v86 - v9;
  v10 = type metadata accessor for FMIPItem();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10007EBC0(&qword_1006B07D0, qword_100552820);
  __chkstk_darwin(v14 - 8);
  v16 = &v86 - v15;
  v17 = sub_10007EBC0(&qword_1006B7A90, &unk_100563F00);
  __chkstk_darwin(v17);
  v19 = &v86 - v18;
  if (*a1 != *a2 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_16;
  }

  v20 = *(a1 + 24);
  v21 = *(a2 + 24);
  if (v20)
  {
    if (!v21 || (*(a1 + 16) != *(a2 + 16) || v20 != v21) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (v21)
  {
    goto LABEL_16;
  }

  v22 = *(a1 + 32);
  v23 = *(a2 + 32);
  if (v22)
  {
    if (!v23 || (sub_100244968(v22, v23) & 1) == 0)
    {
      goto LABEL_16;
    }

LABEL_15:
    if (*(a1 + 40) != *(a2 + 40))
    {
      goto LABEL_16;
    }

    v88 = v5;
    v89 = v4;
    v26 = *(a1 + 48);
    v27 = *(a2 + 48);
    if (v26)
    {
      if (!v27)
      {
        goto LABEL_16;
      }

      v28 = sub_1002449F8(v26, v27);

      if ((v28 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    else if (v27)
    {
      goto LABEL_16;
    }

    v87 = type metadata accessor for FMDeviceDetailViewModel(0);
    v29 = v87[9];
    v30 = *(v17 + 48);
    sub_100007204(a1 + v29, v19, &qword_1006B07D0, qword_100552820);
    sub_100007204(a2 + v29, &v19[v30], &qword_1006B07D0, qword_100552820);
    v31 = *(v11 + 48);
    if (v31(v19, 1, v10) == 1)
    {
      if (v31(&v19[v30], 1, v10) == 1)
      {
        sub_100012DF0(v19, &qword_1006B07D0, qword_100552820);
LABEL_31:
        v37 = v87;
        v38 = v87[10];
        v39 = (a1 + v38);
        v40 = *(a1 + v38 + 8);
        v41 = (a2 + v38);
        v24 = *(a2 + v38 + 8);
        if (v40)
        {
          if (!v24)
          {
            return v24 & 1;
          }
        }

        else
        {
          if (*v39 != *v41)
          {
            LOBYTE(v24) = 1;
          }

          if (v24)
          {
            goto LABEL_16;
          }
        }

        v42 = v87[11];
        v43 = (a1 + v42);
        v44 = *(a1 + v42 + 8);
        v45 = (a2 + v42);
        v24 = *(a2 + v42 + 8);
        if (v44)
        {
          if (!v24)
          {
            return v24 & 1;
          }
        }

        else
        {
          if (*v43 != *v45)
          {
            LOBYTE(v24) = 1;
          }

          if (v24)
          {
            goto LABEL_16;
          }
        }

        v46 = v87[12];
        v47 = *(a1 + v46);
        v48 = *(a2 + v46);
        if (v47)
        {
          if (!v48)
          {
            goto LABEL_16;
          }

          v49 = sub_100244A40(v47, v48);

          if ((v49 & 1) == 0)
          {
            goto LABEL_16;
          }
        }

        else if (v48)
        {
          goto LABEL_16;
        }

        if (*(a1 + v37[13]) != *(a2 + v37[13]))
        {
          goto LABEL_16;
        }

        v50 = v37[14];
        v51 = (a1 + v50);
        v52 = *(a1 + v50 + 8);
        v53 = (a2 + v50);
        v54 = v53[1];
        if (v52)
        {
          if (!v54 || (*v51 != *v53 || v52 != v54) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            goto LABEL_16;
          }
        }

        else if (v54)
        {
          goto LABEL_16;
        }

        if (*(a1 + v37[15]) != *(a2 + v37[15]))
        {
          goto LABEL_16;
        }

        v55 = v37[16];
        v56 = (a1 + v55);
        v57 = *(a1 + v55 + 8);
        v58 = (a2 + v55);
        v59 = v58[1];
        if (v57)
        {
          if (!v59 || (*v56 != *v58 || v57 != v59) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            goto LABEL_16;
          }
        }

        else if (v59)
        {
          goto LABEL_16;
        }

        v60 = v87[17];
        v61 = *(a1 + v60);
        v62 = *(a1 + v60 + 8);
        v63 = (a2 + v60);
        if ((v61 != *v63 || v62 != v63[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_16;
        }

        v64 = v87[18];
        v65 = *(a1 + v64);
        v66 = *(a1 + v64 + 8);
        v67 = (a2 + v64);
        if ((v65 != *v67 || v66 != v67[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_16;
        }

        v68 = v87[19];
        v69 = *(a1 + v68);
        v70 = *(a1 + v68 + 8);
        v71 = (a2 + v68);
        if ((v69 != *v71 || v70 != v71[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_16;
        }

        if ((static Date.== infix(_:_:)() & 1) == 0 || *(a1 + v87[21]) != *(a2 + v87[21]))
        {
          goto LABEL_16;
        }

        type metadata accessor for FMIPBatteryStatus();
        sub_1004A7DD4(&unk_1006C1DB0, &type metadata accessor for FMIPBatteryStatus, &protocol conformance descriptor for FMIPBatteryStatus);
        dispatch thunk of RawRepresentable.rawValue.getter();
        dispatch thunk of RawRepresentable.rawValue.getter();
        if (v96 == v94 && v97 == v95)
        {
        }

        else
        {
          v72 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v72 & 1) == 0)
          {
            goto LABEL_16;
          }
        }

        if (*(a1 + v87[23]) != *(a2 + v87[23]))
        {
          goto LABEL_16;
        }

        if (*(a1 + v87[24]) != *(a2 + v87[24]))
        {
          goto LABEL_16;
        }

        if (*(a1 + v87[25]) != *(a2 + v87[25]))
        {
          goto LABEL_16;
        }

        sub_10000905C(0, &qword_1006B4980, NSObject_ptr);
        if ((static NSObject.== infix(_:_:)() & 1) == 0 || (static NSObject.== infix(_:_:)() & 1) == 0 || *(a1 + v87[28]) != *(a2 + v87[28]) || *(a1 + v87[29]) != *(a2 + v87[29]) || *(a1 + v87[30]) != *(a2 + v87[30]) || *(a1 + v87[31]) != *(a2 + v87[31]) || *(a1 + v87[32]) != *(a2 + v87[32]))
        {
          goto LABEL_16;
        }

        v73 = v87[33];
        v74 = *(v90 + 48);
        v75 = v92;
        sub_100007204(a1 + v73, v92, &unk_1006B0000, &unk_100552AA0);
        sub_100007204(a2 + v73, v75 + v74, &unk_1006B0000, &unk_100552AA0);
        v76 = *(v88 + 48);
        if (v76(v75, 1, v89) == 1)
        {
          if (v76(v92 + v74, 1, v89) == 1)
          {
            sub_100012DF0(v92, &unk_1006B0000, &unk_100552AA0);
            goto LABEL_96;
          }
        }

        else
        {
          v77 = v92;
          sub_100007204(v92, v91, &unk_1006B0000, &unk_100552AA0);
          if (v76(v77 + v74, 1, v89) != 1)
          {
            v78 = v88;
            v80 = v92;
            v79 = v93;
            v81 = v92 + v74;
            v82 = v89;
            (*(v88 + 32))(v93, v81, v89);
            sub_1004A7DD4(&qword_1006C1DC0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
            v83 = v91;
            v84 = dispatch thunk of static Equatable.== infix(_:_:)();
            v85 = *(v78 + 8);
            v85(v79, v82);
            v85(v83, v82);
            sub_100012DF0(v80, &unk_1006B0000, &unk_100552AA0);
            if ((v84 & 1) == 0)
            {
              goto LABEL_16;
            }

LABEL_96:
            if (*(a1 + v87[34]) == *(a2 + v87[34]) && *(a1 + v87[35]) == *(a2 + v87[35]) && *(a1 + v87[36]) == *(a2 + v87[36]) && *(a1 + v87[37]) == *(a2 + v87[37]) && (sub_100244C80(*(a1 + v87[38]), *(a2 + v87[38])) & 1) != 0 && *(a1 + v87[39]) == *(a2 + v87[39]) && *(a1 + v87[40]) == *(a2 + v87[40]) && *(a1 + v87[41]) == *(a2 + v87[41]) && *(a1 + v87[42]) == *(a2 + v87[42]))
            {
              LOBYTE(v24) = *(a1 + v87[43]) ^ *(a2 + v87[43]) ^ 1;
              return v24 & 1;
            }

            goto LABEL_16;
          }

          (*(v88 + 8))(v91, v89);
        }

        v32 = &unk_1006B00E0;
        v33 = &qword_100554190;
        v34 = v92;
LABEL_29:
        sub_100012DF0(v34, v32, v33);
        goto LABEL_16;
      }
    }

    else
    {
      sub_100007204(v19, v16, &qword_1006B07D0, qword_100552820);
      if (v31(&v19[v30], 1, v10) != 1)
      {
        (*(v11 + 32))(v13, &v19[v30], v10);
        sub_1004A7DD4(&qword_1006B7AA8, &type metadata accessor for FMIPItem, &protocol conformance descriptor for FMIPItem);
        v35 = dispatch thunk of static Equatable.== infix(_:_:)();
        v36 = *(v11 + 8);
        v36(v13, v10);
        v36(v16, v10);
        sub_100012DF0(v19, &qword_1006B07D0, qword_100552820);
        if ((v35 & 1) == 0)
        {
          goto LABEL_16;
        }

        goto LABEL_31;
      }

      (*(v11 + 8))(v16, v10);
    }

    v32 = &qword_1006B7A90;
    v33 = &unk_100563F00;
    v34 = v19;
    goto LABEL_29;
  }

  if (!v23)
  {
    goto LABEL_15;
  }

LABEL_16:
  LOBYTE(v24) = 0;
  return v24 & 1;
}

uint64_t sub_1004A3F00(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v35 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v36 = &v35 - v6;
  v7 = sub_10007EBC0(&unk_1006C0220, qword_100553770);
  __chkstk_darwin(v7 - 8);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v35 - v11;
  v13 = sub_10007EBC0(&unk_1006B0000, &unk_100552AA0);
  __chkstk_darwin(v13 - 8);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v35 - v17;
  v38 = a1;
  sub_100007204(a1, v12, &unk_1006C0220, qword_100553770);
  v19 = type metadata accessor for FMIPLocation();
  v20 = *(v19 - 8);
  v37 = *(v20 + 48);
  if (v37(v12, 1, v19) == 1)
  {
    sub_100012DF0(v12, &unk_1006C0220, qword_100553770);
    v21 = 1;
  }

  else
  {
    v22 = FMIPLocation.location.getter();
    (*(v20 + 8))(v12, v19);
    v23 = [v22 timestamp];

    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = 0;
  }

  (*(v3 + 56))(v18, v21, 1, v2);
  sub_100007204(v18, v15, &unk_1006B0000, &unk_100552AA0);
  if ((*(v3 + 48))(v15, 1, v2) == 1)
  {
    sub_100012DF0(v15, &unk_1006B0000, &unk_100552AA0);
  }

  else
  {
    v24 = v36;
    (*(v3 + 32))(v36, v15, v2);
    v25 = v35;
    Date.init()();
    Date.timeIntervalSince1970.getter();
    v27 = v26;
    v28 = *(v3 + 8);
    v28(v25, v2);
    Date.timeIntervalSince1970.getter();
    v30 = v27 - v29;
    FMIPOldLocationAgeThresholdInSeconds.getter();
    v32 = v31;
    v28(v24, v2);
    if (v32 < v30)
    {
      sub_100012DF0(v18, &unk_1006B0000, &unk_100552AA0);
      v33 = 1;
      return v33 & 1;
    }
  }

  sub_100007204(v38, v9, &unk_1006C0220, qword_100553770);
  if (v37(v9, 1, v19) == 1)
  {
    sub_100012DF0(v18, &unk_1006B0000, &unk_100552AA0);
    sub_100012DF0(v9, &unk_1006C0220, qword_100553770);
    v33 = 0;
  }

  else
  {
    v33 = FMIPLocation.isOld.getter();
    sub_100012DF0(v18, &unk_1006B0000, &unk_100552AA0);
    (*(v20 + 8))(v9, v19);
  }

  return v33 & 1;
}

void sub_1004A43A0(uint64_t a1, void *a2, int a3)
{
  v169 = a3;
  v201 = a2;
  v182 = type metadata accessor for FMIPDeviceStatus();
  v181 = *(v182 - 8);
  __chkstk_darwin(v182);
  v180 = &v168 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v179 = &v168 - v6;
  v170 = type metadata accessor for FMIPDeviceConnectedStateType();
  v193 = *(v170 - 8);
  __chkstk_darwin(v170);
  v210 = &v168 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v192 = &v168 - v9;
  v191 = type metadata accessor for FMIPItem();
  v209 = *(v191 - 8);
  __chkstk_darwin(v191);
  v205 = &v168 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v200 = &v168 - v12;
  __chkstk_darwin(v13);
  v203 = &v168 - v14;
  __chkstk_darwin(v15);
  v188 = &v168 - v16;
  v185 = type metadata accessor for FMIPFeatures();
  v183 = *(v185 - 8);
  __chkstk_darwin(v185);
  v189 = &v168 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v190 = &v168 - v19;
  v20 = sub_10007EBC0(&unk_1006B0000, &unk_100552AA0);
  __chkstk_darwin(v20 - 8);
  v208 = &v168 - v21;
  v175 = type metadata accessor for FMIPActionStatus();
  v174 = *(v175 - 1);
  __chkstk_darwin(v175);
  v173 = &v168 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v172 = &v168 - v24;
  v25 = sub_10007EBC0(&qword_1006B8678, &qword_100563EE0);
  __chkstk_darwin(v25 - 8);
  v198 = &v168 - v26;
  v207 = type metadata accessor for FMIPEraseMetadata();
  v199 = *(v207 - 8);
  __chkstk_darwin(v207);
  v171 = &v168 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_10007EBC0(&unk_1006C0220, qword_100553770);
  __chkstk_darwin(v28 - 8);
  v197 = &v168 - v29;
  v30 = type metadata accessor for FMIPDeviceState();
  v195 = *(v30 - 8);
  v196 = v30;
  __chkstk_darwin(v30);
  v32 = &v168 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v35 = &v168 - v34;
  v36 = sub_10007EBC0(&unk_1006BB1C0, &unk_1005534F0);
  __chkstk_darwin(v36 - 8);
  v184 = (&v168 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v38);
  v40 = &v168 - v39;
  v41 = sub_10007EBC0(&qword_1006C1D88, &qword_100563EF8);
  __chkstk_darwin(v41 - 8);
  v43 = &v168 - v42;
  v44 = type metadata accessor for FMItemCapabilities();
  v45 = *(v44 - 8);
  __chkstk_darwin(v44);
  v202 = &v168 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v206 = &v168 - v48;
  __chkstk_darwin(v49);
  v51 = &v168 - v50;
  v194 = a1;
  FMIPDevice.itemGroup.getter();
  v52 = type metadata accessor for FMIPItemGroup();
  v53 = *(v52 - 8);
  v54 = *(v53 + 48);
  v177 = v53 + 48;
  v176 = v54;
  v55 = v54(v40, 1, v52);
  v204 = v44;
  v187 = v45;
  v186 = v51;
  v178 = v52;
  v168 = v53;
  if (v55 == 1)
  {
    sub_100012DF0(v40, &unk_1006BB1C0, &unk_1005534F0);
    (*(v45 + 56))(v43, 1, 1, v44);
    v213._countAndFlagsBits = 0;
    sub_1004A7DD4(&qword_1006C1D90, &type metadata accessor for FMItemCapabilities, &protocol conformance descriptor for FMItemCapabilities);
    dispatch thunk of OptionSet.init(rawValue:)();
    if ((*(v45 + 48))(v43, 1, v44) != 1)
    {
      sub_100012DF0(v43, &qword_1006C1D88, &qword_100563EF8);
    }
  }

  else
  {
    FMIPItemGroup.capabilities.getter();
    (*(v53 + 8))(v40, v52);
    (*(v45 + 56))(v43, 0, 1, v44);
    (*(v45 + 32))(v51, v43, v44);
  }

  FMIPDevice.state.getter();
  static FMIPDeviceState.isThisDevice.getter();
  sub_1004A7DD4(&qword_1006BBCF0, &type metadata accessor for FMIPDeviceState, &protocol conformance descriptor for FMIPDeviceState);
  v56 = v196;
  v57 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v58 = *(v195 + 8);
  v58(v32, v56);
  v58(v35, v56);
  FMIPDevice.state.getter();
  static FMIPDeviceState.isDeviceWithYou.getter();
  v59 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v58(v32, v56);
  v58(v35, v56);
  v60 = v197;
  FMIPDevice.bestLocation.getter();
  v61 = type metadata accessor for FMIPLocation();
  v62 = *(v61 - 8);
  v63 = (*(v62 + 48))(v60, 1, v61);
  v64 = v199;
  if (v63 == 1)
  {
    sub_100012DF0(v60, &unk_1006C0220, qword_100553770);
    v65 = 1;
  }

  else
  {
    v66 = FMIPLocation.location.getter();
    (*(v62 + 8))(v60, v61);

    v65 = v57 | v59;
  }

  LODWORD(v197) = v65;
  v67 = v210;
  v68 = v207;
  v69 = v198;
  FMIPDevice.eraseMetadata.getter();
  if ((*(v64 + 48))(v69, 1, v68) == 1)
  {
    sub_100012DF0(v69, &qword_1006B8678, &qword_100563EE0);
    v70 = 1;
  }

  else
  {
    v71 = v171;
    (*(v64 + 32))(v171, v69, v68);
    v72 = v172;
    FMIPEraseMetadata.status.getter();
    v73 = v174;
    v74 = v173;
    v75 = v175;
    (*(v174 + 104))(v173, enum case for FMIPActionStatus.eraseCancelled(_:), v175);
    sub_1004A7DD4(&unk_1006C1DA0, &type metadata accessor for FMIPActionStatus, &protocol conformance descriptor for FMIPActionStatus);
    v70 = dispatch thunk of static Equatable.== infix(_:_:)();
    v76 = *(v73 + 8);
    v76(v74, v75);
    v76(v72, v75);
    (*(v64 + 8))(v71, v68);
  }

  v77 = v208;
  FMIPDevice.wipedTimestamp.getter();
  v78 = type metadata accessor for Date();
  v79 = (*(*(v78 - 8) + 48))(v77, 1, v78);
  sub_100012DF0(v77, &unk_1006B0000, &unk_100552AA0);
  if ((FMIPDevice.pairingIncomplete.getter() & 1) != 0 || v79 != 1)
  {
    v80 = v185;
  }

  else
  {
    v80 = v185;
    if (v70)
    {
      v81 = v190;
      FMIPDevice.features.getter();
      v82 = v189;
      static FMIPFeatures.isWipeEnabled.getter();
      v83 = sub_1004A7DD4(&qword_1006C1D50, &type metadata accessor for FMIPFeatures, &protocol conformance descriptor for FMIPFeatures);
      v84 = dispatch thunk of SetAlgebra.isSuperset(of:)();
      v85 = v183 + 8;
      v86 = *(v183 + 8);
      v86(v82, v80);
      v86(v81, v80);
      if (v84)
      {
        v87 = 3;
      }

      else
      {
        v87 = 1;
      }

      FMIPDevice.features.getter();
      static FMIPFeatures.isLockAndMessageEnabled.getter();
      v88 = dispatch thunk of SetAlgebra.isSuperset(of:)();
      v86(v82, v80);
      v86(v81, v80);
      if (v88)
      {
        v87 |= 4uLL;
      }

      FMIPDevice.features.getter();
      static FMIPFeatures.isLostModeEnabled.getter();
      v89 = dispatch thunk of SetAlgebra.isSuperset(of:)();
      v86(v82, v80);
      v86(v81, v80);
      if (v89)
      {
        v87 |= 8uLL;
      }

      FMIPDevice.features.getter();
      static FMIPFeatures.isPlaySoundEnabled.getter();
      v90 = dispatch thunk of SetAlgebra.isSuperset(of:)();
      v86(v82, v80);
      v86(v81, v80);
      if (v90)
      {
        v87 |= 0x20uLL;
      }

      FMIPDevice.features.getter();
      static FMIPFeatures.isMultiChannelSoundEnabled.getter();
      v91 = dispatch thunk of SetAlgebra.isSuperset(of:)();
      v86(v82, v80);
      v86(v81, v80);
      if (v91)
      {
        v87 |= 0x400uLL;
      }

      FMIPDevice.features.getter();
      static FMIPFeatures.isBluetoothRequired.getter();
      v92 = dispatch thunk of SetAlgebra.isSuperset(of:)();
      v86(v82, v80);
      v86(v81, v80);
      if (v92)
      {
        v87 |= 0x800uLL;
      }

      FMIPDevice.features.getter();
      static FMIPFeatures.isStopSoundSupported.getter();
      v173 = v83;
      v93 = dispatch thunk of SetAlgebra.isSuperset(of:)();
      v86(v82, v80);
      v175 = v86;
      v174 = v85;
      v86(v81, v80);
      v94 = v87 | 0x1000;
      if ((v93 & 1) == 0)
      {
        v94 = v87;
      }

      if (v197)
      {
        v95 = v94;
      }

      else
      {
        v95 = v94 | 0x80;
      }

      if (FMIPDevice.canEnableNotifyWhenFound()())
      {
        v96 = v95 | 0x40;
      }

      else
      {
        v96 = v95;
      }

      v97 = v184;
      FMIPDevice.itemGroup.getter();
      v98 = v178;
      if (v176(v97, 1, v178) == 1)
      {
        sub_100012DF0(v97, &unk_1006BB1C0, &unk_1005534F0);
        v99 = _swiftEmptyArrayStorage;
        v100 = v193;
        v101 = v192;
LABEL_64:
        v129 = *(v99 + 2);

        v130 = v96 | 0x82000;
        if (!v129)
        {
          v130 = v96;
        }

        v210 = v130;
        FMIPDevice.deviceConnectedState.getter();
        v131 = v170;
        v209 = *(v100 + 104);
        (v209)(v67, enum case for FMIPDeviceConnectedStateType.connected(_:), v170);
        v132 = static FMIPDeviceConnectedStateType.== infix(_:_:)();
        v133 = *(v100 + 8);
        v133(v67, v131);
        v133(v101, v131);
        if (v132 & 1) != 0 || (v134 = v101, v135 = v131, FMIPDevice.deviceConnectedState.getter(), (v209)(v67, enum case for FMIPDeviceConnectedStateType.detectedNearby(_:), v131), v136 = static FMIPDeviceConnectedStateType.== infix(_:_:)(), v133(v67, v135), v133(v134, v135), (v136))
        {
          v137 = v185;
          v138 = v190;
          if (v169)
          {
            v210 |= 0x80000uLL;
          }
        }

        else
        {
          v137 = v185;
          v138 = v190;
        }

        FMIPDevice.features.getter();
        static FMIPFeatures.isNotifyWhenFoundSupported.getter();
        v139 = dispatch thunk of SetAlgebra.isSuperset(of:)();
        v140 = v175;
        (v175)(v82, v137);
        v140(v138, v137);
        if (v139 & 1) == 0 || (FMIPDevice.features.getter(), static FMIPFeatures.isMultiChannelSoundEnabled.getter(), v141 = dispatch thunk of SetAlgebra.isSuperset(of:)(), v140(v82, v137), v140(v138, v137), (v141) || (FMIPDevice.features.getter(), static FMIPFeatures.isStopSoundSupported.getter(), v142 = dispatch thunk of SetAlgebra.isSuperset(of:)(), v140(v82, v137), v140(v138, v137), (v142))
        {
          v143 = v206;
          static FMItemCapabilities.canEnableNotifyWhenFound.getter();
          sub_1004A7DD4(&qword_1006B4180, &type metadata accessor for FMItemCapabilities, &protocol conformance descriptor for FMItemCapabilities);
          v144 = v204;
          dispatch thunk of SetAlgebra.isSuperset(of:)();
          (*(v187 + 8))(v143, v144);
        }

        FMIPDevice.features.getter();
        static FMIPFeatures.isNotifyWhenDetachedSupported.getter();
        dispatch thunk of SetAlgebra.isSuperset(of:)();
        v145 = v175;
        (v175)(v82, v137);
        v145(v138, v137);
        FMIPDevice.features.getter();
        static FMIPFeatures.isShowContactDetailsSupported.getter();
        dispatch thunk of SetAlgebra.isSuperset(of:)();
        v145(v82, v137);
        v145(v138, v137);
        FMIPDevice.features.getter();
        static FMIPFeatures.isRemoveUIv2Supported.getter();
        dispatch thunk of SetAlgebra.isSuperset(of:)();
        v145(v82, v137);
        v145(v138, v137);
        FMIPDevice.features.getter();
        static FMIPFeatures.isLeashingSupported.getter();
        dispatch thunk of SetAlgebra.isSuperset(of:)();
        v145(v82, v137);
        v145(v138, v137);
        v146 = v206;
        static FMItemCapabilities.canEnableLeashing.getter();
        sub_1004A7DD4(&qword_1006B4180, &type metadata accessor for FMItemCapabilities, &protocol conformance descriptor for FMItemCapabilities);
        v147 = v204;
        dispatch thunk of SetAlgebra.isSuperset(of:)();
        v148 = *(v187 + 8);
        v148(v146, v147);
        v80 = v185;
        static FMItemCapabilities.canEnableLostMode.getter();
        dispatch thunk of SetAlgebra.isSuperset(of:)();
        v148(v146, v147);
        goto LABEL_75;
      }

      v177 = v96;
      v102 = FMIPItemGroup.items.getter();
      (*(v168 + 8))(v97, v98);
      v103 = v102;
      v104 = v204;
      v199 = *(v102 + 16);
      if (v199)
      {
        v105 = 0;
        v197 = v209 + 16;
        v196 = v187 + 8;
        v184 = (v209 + 8);
        v195 = v209 + 32;
        countAndFlagsBits = _swiftEmptyArrayStorage;
        v107 = v191;
        v108 = v188;
        v198 = v103;
        v109 = (v187 + 8);
        while (v105 < *(v103 + 16))
        {
          v110 = countAndFlagsBits;
          v208 = ((*(v209 + 80) + 32) & ~*(v209 + 80));
          v207 = *(v209 + 72);
          (*(v209 + 16))(v108, &v208[v103 + v207 * v105], v107);
          v111 = v206;
          v112 = v107;
          FMIPItem.capabilities.getter();
          v113 = v202;
          static FMItemCapabilities.canBTFinding.getter();
          sub_1004A7DD4(&qword_1006B4180, &type metadata accessor for FMItemCapabilities, &protocol conformance descriptor for FMItemCapabilities);
          v114 = dispatch thunk of SetAlgebra.isSuperset(of:)();
          v115 = *v109;
          (*v109)(v113, v104);
          v115(v111, v104);
          if (v114)
          {
            v116 = *v195;
            (*v195)(v203, v108, v112);
            countAndFlagsBits = v110;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v213._countAndFlagsBits = v110;
            if (isUniquelyReferenced_nonNull_native)
            {
              v107 = v112;
            }

            else
            {
              sub_10016704C(0, *(v110 + 16) + 1, 1);
              v107 = v191;
              countAndFlagsBits = v213._countAndFlagsBits;
            }

            v119 = *(countAndFlagsBits + 16);
            v118 = *(countAndFlagsBits + 24);
            if (v119 >= v118 >> 1)
            {
              sub_10016704C((v118 > 1), v119 + 1, 1);
              v107 = v191;
              countAndFlagsBits = v213._countAndFlagsBits;
            }

            *(countAndFlagsBits + 16) = v119 + 1;
            v116(&v208[countAndFlagsBits + v119 * v207], v203, v107);
            v104 = v204;
            v108 = v188;
          }

          else
          {
            (*v184)(v108, v112);
            v107 = v112;
            countAndFlagsBits = v110;
          }

          ++v105;
          v103 = v198;
          v67 = v210;
          if (v199 == v105)
          {
            goto LABEL_51;
          }
        }

        __break(1u);
      }

      else
      {
        countAndFlagsBits = _swiftEmptyArrayStorage;
        v107 = v191;
LABEL_51:

        v100 = v193;
        v208 = *(countAndFlagsBits + 16);
        if (!v208)
        {
          v99 = _swiftEmptyArrayStorage;
          v101 = v192;
LABEL_63:

          v82 = v189;
          v96 = v177;
          goto LABEL_64;
        }

        v120 = 0;
        v207 = v209 + 16;
        v121 = (v209 + 32);
        v203 = (v209 + 8);
        v99 = _swiftEmptyArrayStorage;
        v101 = v192;
        while (v120 < *(countAndFlagsBits + 16))
        {
          v122 = (*(v209 + 80) + 32) & ~*(v209 + 80);
          v123 = *(v209 + 72);
          v124 = v200;
          (*(v209 + 16))(v200, countAndFlagsBits + v122 + v123 * v120, v107);
          if ((sub_1000F39B8(v124, v201) & 0x60) != 0)
          {
            v125 = *v121;
            (*v121)(v205, v124, v107);
            v126 = swift_isUniquelyReferenced_nonNull_native();
            v213._countAndFlagsBits = v99;
            if ((v126 & 1) == 0)
            {
              sub_10016704C(0, *(v99 + 2) + 1, 1);
              v107 = v191;
              v99 = v213._countAndFlagsBits;
            }

            v128 = *(v99 + 2);
            v127 = *(v99 + 3);
            if (v128 >= v127 >> 1)
            {
              sub_10016704C((v127 > 1), v128 + 1, 1);
              v107 = v191;
              v99 = v213._countAndFlagsBits;
            }

            *(v99 + 2) = v128 + 1;
            v125(&v99[v122 + v128 * v123], v205, v107);
            v100 = v193;
            v101 = v192;
          }

          else
          {
            (*v203)(v124, v107);
          }

          ++v120;
          v67 = v210;
          if (v208 == v120)
          {
            goto LABEL_63;
          }
        }
      }

      __break(1u);
      return;
    }
  }

LABEL_75:
  v149 = v179;
  FMIPDevice.status.getter();
  v150 = v181;
  v151 = v180;
  v152 = v182;
  (*(v181 + 104))(v180, enum case for FMIPDeviceStatus.online(_:), v182);
  sub_1004A7DD4(&qword_1006C1D98, &type metadata accessor for FMIPDeviceStatus, &protocol conformance descriptor for FMIPDeviceStatus);
  v153 = dispatch thunk of static Equatable.== infix(_:_:)();
  v154 = *(v150 + 8);
  v154(v151, v152);
  v154(v149, v152);
  if (v153)
  {
    v155 = v190;
    FMIPDevice.features.getter();
    v156 = v189;
    static FMIPFeatures.isRemoveUIv2Supported.getter();
    sub_1004A7DD4(&qword_1006C1D50, &type metadata accessor for FMIPFeatures, &protocol conformance descriptor for FMIPFeatures);
    v157 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v158 = v183;
    v159 = *(v183 + 8);
    v159(v156, v80);
    v159(v155, v80);
  }

  else
  {
    v157 = 1;
    v158 = v183;
    v156 = v189;
    v155 = v190;
  }

  FMIPDevice.features.getter();
  static FMIPFeatures.isRemoveEnabled.getter();
  sub_1004A7DD4(&qword_1006C1D50, &type metadata accessor for FMIPFeatures, &protocol conformance descriptor for FMIPFeatures);
  v160 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v161 = *(v158 + 8);
  v161(v156, v80);
  v161(v155, v80);
  if ((v160 & 1) == 0 || (v157 & 1) == 0)
  {
    v162 = v206;
    static FMItemCapabilities.canRemove.getter();
    sub_1004A7DD4(&qword_1006B4180, &type metadata accessor for FMItemCapabilities, &protocol conformance descriptor for FMItemCapabilities);
    v163 = v204;
    v164 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    (*(v187 + 8))(v162, v163);
    if ((v164 & 1) == 0)
    {
      FMIPDevice.rawModel.getter();
      v165 = String.uppercased()();

      v213 = v165;
      v211 = 0x53444F50524941;
      v212 = 0xE700000000000000;
      sub_100035F3C();
      StringProtocol.contains<A>(_:)();
      v80 = v185;
    }
  }

  v166 = v190;
  FMIPDevice.features.getter();
  v167 = v189;
  static FMIPFeatures.isRepairSupported.getter();
  dispatch thunk of SetAlgebra.isSuperset(of:)();
  v161(v167, v80);
  v161(v166, v80);
  (*(v187 + 8))(v186, v204);
}

void *sub_1004A623C(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v45 = a2;
  v55 = type metadata accessor for FMIPSafeLocation();
  v5 = *(v55 - 8);
  __chkstk_darwin(v55);
  v44 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v51 = &v40 - v8;
  v11 = __chkstk_darwin(v9);
  v12 = &v40 - v10;
  v13 = _swiftEmptyArrayStorage;
  v43 = *(a1 + 16);
  if (!v43)
  {
    return _swiftEmptyArrayStorage;
  }

  v14 = 0;
  v16 = *(v5 + 16);
  v15 = v5 + 16;
  v17 = *(v15 + 64);
  v46 = _swiftEmptyArrayStorage;
  v47 = (v17 + 32) & ~v17;
  v42 = a1 + v47;
  v18 = *(v15 + 56);
  v53 = v16;
  v54 = v18;
  v52 = (v15 - 8);
  v40 = &v40 - v10;
  v41 = (v15 + 16);
  do
  {
    v50 = v14;
    v53(v12, v42 + v54 * v14, v55, v11);
    v19 = *v45;
    v20 = *(*v45 + 16);
    if (v20)
    {
      v49 = v3;
      v56[0] = _swiftEmptyArrayStorage;

      sub_10016715C(0, v20, 0);
      v13 = v56[0];
      v48 = v19;
      v21 = v19 + v47;
      do
      {
        v22 = v51;
        v23 = v55;
        v24 = v15;
        (v53)(v51, v21, v55);
        v25 = FMIPSafeLocation.identifier.getter();
        v27 = v26;
        (*v52)(v22, v23);
        v56[0] = v13;
        v29 = v13[2];
        v28 = v13[3];
        if (v29 >= v28 >> 1)
        {
          sub_10016715C((v28 > 1), v29 + 1, 1);
          v13 = v56[0];
        }

        v13[2] = v29 + 1;
        v30 = &v13[2 * v29];
        v30[4] = v25;
        v30[5] = v27;
        v21 += v54;
        --v20;
        v15 = v24;
      }

      while (v20);

      v3 = v49;
      v12 = v40;
    }

    v56[0] = FMIPSafeLocation.identifier.getter();
    v56[1] = v31;
    __chkstk_darwin(v56[0]);
    *(&v40 - 2) = v56;
    v32 = sub_10008A40C(sub_10011F7D4, (&v40 - 4), v13);

    if (v32)
    {
      (*v52)(v12, v55);
      v13 = _swiftEmptyArrayStorage;
    }

    else
    {
      v33 = *v41;
      (*v41)(v44, v12, v55);
      v34 = v46;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v36 = v34;
      v57 = v34;
      v13 = _swiftEmptyArrayStorage;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1001670D4(0, v34[2] + 1, 1);
        v36 = v57;
      }

      v38 = v36[2];
      v37 = v36[3];
      if (v38 >= v37 >> 1)
      {
        sub_1001670D4((v37 > 1), v38 + 1, 1);
        v36 = v57;
      }

      v36[2] = v38 + 1;
      v46 = v36;
      v33(v36 + v47 + v38 * v54, v44, v55);
    }

    v14 = v50 + 1;
  }

  while (v50 + 1 != v43);
  return v46;
}

void *sub_1004A6638(uint64_t a1)
{
  v2 = type metadata accessor for FMIPAudioChannel();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v6);
  v9 = &v24 - v8;
  v10 = *(a1 + 16);
  if (!v10)
  {
    return _swiftEmptyArrayStorage;
  }

  v13 = *(v3 + 16);
  v11 = v3 + 16;
  v12 = v13;
  v14 = *(v11 + 56);
  v26 = (*(v11 + 64) + 32) & ~*(v11 + 64);
  v15 = a1 + v26;
  v25 = (v11 - 8);
  v30 = (v11 + 16);
  v31 = v14;
  v16 = _swiftEmptyArrayStorage;
  v27 = v13;
  v28 = v5;
  v29 = v11;
  v13(v9, a1 + v26, v2, v7);
  while (1)
  {
    if (FMIPAudioChannel.isPlaying.getter())
    {
      v19 = *v30;
      (*v30)(v5, v9, v2);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v32 = v16;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100167090(0, v16[2] + 1, 1);
        v16 = v32;
      }

      v18 = v31;
      v22 = v16[2];
      v21 = v16[3];
      if (v22 >= v21 >> 1)
      {
        sub_100167090((v21 > 1), v22 + 1, 1);
        v18 = v31;
        v16 = v32;
      }

      v16[2] = v22 + 1;
      v5 = v28;
      v19(v16 + v26 + v22 * v18, v28, v2);
      v12 = v27;
    }

    else
    {
      (*v25)(v9, v2);
      v18 = v31;
    }

    v15 += v18;
    if (!--v10)
    {
      break;
    }

    v12(v9, v15, v2, v17);
  }

  return v16;
}

uint64_t sub_1004A6880(uint64_t a1)
{
  v169 = type metadata accessor for FMIPItemState();
  v145 = *(v169 - 8);
  __chkstk_darwin(v169);
  v171 = &v138 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v170 = &v138 - v4;
  v5 = type metadata accessor for FMIPItem();
  v142 = *(v5 - 8);
  __chkstk_darwin(v5);
  v168 = &v138 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10007EBC0(&unk_1006BB1C0, &unk_1005534F0);
  __chkstk_darwin(v7 - 8);
  v153 = &v138 - v8;
  v9 = type metadata accessor for FMIPItemGroup();
  v157 = *(v9 - 8);
  v158 = v9;
  __chkstk_darwin(v9);
  v154 = &v138 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10007EBC0(&qword_1006B8678, &qword_100563EE0);
  __chkstk_darwin(v11 - 8);
  v150 = &v138 - v12;
  v152 = type metadata accessor for FMIPEraseMetadata();
  v165 = *(v152 - 8);
  __chkstk_darwin(v152);
  v151 = &v138 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FMIPDeviceState();
  v161 = *(v14 - 8);
  v162 = v14;
  __chkstk_darwin(v14);
  v160 = &v138 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v159 = &v138 - v17;
  v18 = sub_10007EBC0(&qword_1006B8B78, &unk_10055AC70);
  __chkstk_darwin(v18 - 8);
  v149 = &v138 - v19;
  v156 = type metadata accessor for FMIPDeviceLostModeMetadata();
  v164 = *(v156 - 1);
  __chkstk_darwin(v156);
  v144 = &v138 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = type metadata accessor for FMIPActionStatus();
  v167 = *(v172 - 8);
  __chkstk_darwin(v172);
  v143 = &v138 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v155 = &v138 - v23;
  __chkstk_darwin(v24);
  v166 = &v138 - v25;
  __chkstk_darwin(v26);
  v28 = &v138 - v27;
  v29 = sub_10007EBC0(&unk_1006C1D20, &qword_10055D7A0);
  __chkstk_darwin(v29 - 8);
  v31 = &v138 - v30;
  v32 = type metadata accessor for FMIPLockMetadata();
  v33 = *(v32 - 8);
  __chkstk_darwin(v32);
  v35 = &v138 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_10007EBC0(&unk_1006B0000, &unk_100552AA0);
  __chkstk_darwin(v36 - 8);
  v38 = &v138 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v41 = &v138 - v40;
  FMIPDevice.lockedTimestamp.getter();
  v42 = type metadata accessor for Date();
  v43 = *(v42 - 8);
  v44 = *(v43 + 48);
  v148 = v42;
  v147 = v44;
  v146 = (v43 + 48);
  v45 = v44(v41, 1);
  v46 = v41;
  v47 = v33;
  v48 = v172;
  sub_100012DF0(v46, &unk_1006B0000, &unk_100552AA0);
  v163 = a1;
  FMIPDevice.lockMetadata.getter();
  if ((*(v47 + 48))(v31, 1, v32) == 1)
  {
    sub_100012DF0(v31, &unk_1006C1D20, &qword_10055D7A0);
    if (v45 == 1)
    {
      v49 = 1;
    }

    else
    {
      v49 = 17;
    }
  }

  else
  {
    v141 = v45;
    (*(v47 + 32))(v35, v31, v32);
    FMIPLockMetadata.status.getter();
    v50 = FMIPActionStatus.isActionSuccessful.getter();
    v51 = *(v167 + 8);
    v51(v28, v48);
    v52 = v48;
    if ((v50 & 1) == 0 || v141 == 1)
    {
      v140 = v47;
      v53 = v166;
      FMIPLockMetadata.status.getter();
      v54 = *(v167 + 104);
      v139 = v35;
      v55 = v155;
      v54(v155, enum case for FMIPActionStatus.pending(_:), v52);
      sub_1004A7DD4(&qword_1006C1D70, &type metadata accessor for FMIPActionStatus, &protocol conformance descriptor for FMIPActionStatus);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v51(v55, v52);
      v51(v53, v52);
      v57 = v173;
      v56 = v174;
      (*(v140 + 8))(v139, v32);
      v58 = 17;
      if (v141 == 1)
      {
        v58 = 1;
      }

      if (v56 == v57)
      {
        v49 = 33;
      }

      else
      {
        v49 = v58;
      }
    }

    else
    {
      (*(v47 + 8))(v35, v32);
      v49 = 17;
    }
  }

  v59 = v159;
  FMIPDevice.lostTimestamp.getter();
  v60 = (v147)(v38, 1, v148);
  sub_100012DF0(v38, &unk_1006B0000, &unk_100552AA0);
  v61 = v149;
  FMIPDevice.lostMetadata.getter();
  v62 = v164;
  v63 = v156;
  if ((*(v164 + 48))(v61, 1, v156) != 1)
  {
    v147 = v49;
    v148 = v5;
    v66 = v144;
    (*(v62 + 32))(v144, v61, v63);
    v67 = v166;
    FMIPDeviceLostModeMetadata.status.getter();
    v68 = FMIPActionStatus.isActionSuccessful.getter();
    v69 = v167;
    v70 = *(v167 + 8);
    v70(v67, v172);
    if (v68 & 1) != 0 && (FMIPDevice.isLocalFindable.getter())
    {
      (*(v164 + 8))(v66, v63);
    }

    else
    {
      v71 = v143;
      FMIPDeviceLostModeMetadata.status.getter();
      v72 = FMIPActionStatus.isActionSuccessful.getter();
      v70(v71, v172);
      if ((v72 & 1) == 0 || (FMIPDevice.state.getter(), v73 = v160, static FMIPDeviceState.isLostModeEnabled.getter(), sub_1004A7DD4(&qword_1006BBCF0, &type metadata accessor for FMIPDeviceState, &protocol conformance descriptor for FMIPDeviceState), v74 = v162, v75 = dispatch thunk of SetAlgebra.isSuperset(of:)(), v76 = *(v161 + 8), v76(v73, v74), v66 = v144, v76(v59, v74), (v75 & 1) == 0))
      {
        v77 = v166;
        FMIPDeviceLostModeMetadata.status.getter();
        v78 = *(v69 + 104);
        v79 = v155;
        LODWORD(v149) = enum case for FMIPActionStatus.pending(_:);
        v80 = v172;
        v146 = v78;
        v78(v155);
        sub_1004A7DD4(&qword_1006C1D70, &type metadata accessor for FMIPActionStatus, &protocol conformance descriptor for FMIPActionStatus);
        dispatch thunk of RawRepresentable.rawValue.getter();
        dispatch thunk of RawRepresentable.rawValue.getter();
        v70(v79, v80);
        v70(v77, v80);
        if (v174 == v173 && (FMIPDeviceLostModeMetadata.canStopLostMode.getter() & 1) != 0)
        {
          (*(v164 + 8))(v66, v156);
          v64 = v147 | 0x200;
        }

        else
        {
          v81 = v166;
          FMIPDeviceLostModeMetadata.status.getter();
          v82 = v155;
          v83 = v172;
          v146(v155, v149, v172);
          dispatch thunk of RawRepresentable.rawValue.getter();
          dispatch thunk of RawRepresentable.rawValue.getter();
          v70(v82, v83);
          v70(v81, v83);
          v85 = v173;
          v84 = v174;
          (*(v164 + 8))(v66, v156);
          if (v84 == v85)
          {
            v64 = v147 | 0x80;
          }

          else
          {
            v64 = v147;
          }
        }

        goto LABEL_31;
      }

      (*(v164 + 8))(v66, v156);
    }

    v64 = v147 | 0x40;
LABEL_31:
    v65 = v161;
    v5 = v148;
    goto LABEL_32;
  }

  sub_100012DF0(v61, &qword_1006B8B78, &unk_10055AC70);
  if (v60 == 1)
  {
    v64 = v49;
  }

  else
  {
    v64 = v49 | 0x40;
  }

  v65 = v161;
LABEL_32:
  FMIPDevice.state.getter();
  v86 = v160;
  static FMIPDeviceState.isNotifyWhenFoundEnabled.getter();
  v87 = sub_1004A7DD4(&qword_1006BBCF0, &type metadata accessor for FMIPDeviceState, &protocol conformance descriptor for FMIPDeviceState);
  v88 = v162;
  v89 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v92 = *(v65 + 8);
  v91 = v65 + 8;
  v90 = v92;
  v92(v86, v88);
  v92(v59, v88);
  if (v89)
  {
    v64 |= 8uLL;
  }

  FMIPDevice.state.getter();
  static FMIPDeviceState.isNotifyWhenDetachedEnabled.getter();
  v93 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v90(v86, v88);
  v90(v59, v88);
  if (v93)
  {
    v64 |= 0x8000uLL;
  }

  FMIPDevice.state.getter();
  static FMIPDeviceState.isShowContactDetailsEnabled.getter();
  v94 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v90(v86, v88);
  v90(v59, v88);
  if (v94)
  {
    v64 |= 0x10000uLL;
  }

  FMIPDevice.state.getter();
  static FMIPDeviceState.isDeviceWithYou.getter();
  v149 = v87;
  v95 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v90(v86, v88);
  v156 = v90;
  v90(v59, v88);
  if (v95)
  {
    v96 = v64 | 0x20000;
  }

  else
  {
    v96 = v64;
  }

  v97 = v150;
  FMIPDevice.eraseMetadata.getter();
  v98 = v165;
  v99 = v152;
  if ((*(v165 + 48))(v97, 1, v152) == 1)
  {
    sub_100012DF0(v97, &qword_1006B8678, &qword_100563EE0);
  }

  else
  {
    (*(v98 + 32))(v151, v97, v99);
    v100 = v166;
    FMIPEraseMetadata.status.getter();
    v101 = v167;
    v102 = v96;
    v103 = v155;
    v104 = v172;
    (*(v167 + 104))(v155, enum case for FMIPActionStatus.pending(_:), v172);
    sub_1004A7DD4(&qword_1006C1D70, &type metadata accessor for FMIPActionStatus, &protocol conformance descriptor for FMIPActionStatus);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v105 = *(v101 + 8);
    v106 = v103;
    v96 = v102;
    v105(v106, v104);
    v105(v100, v104);
    v59 = v159;
    v108 = v173;
    v107 = v174;
    (*(v165 + 8))(v151, v99);
    if (v107 == v108)
    {
      v96 |= 0x100uLL;
    }
  }

  v109 = v157;
  v110 = v153;
  FMIPDevice.itemGroup.getter();
  v111 = v158;
  if ((*(v109 + 48))(v110, 1, v158) == 1)
  {
    sub_100012DF0(v110, &unk_1006BB1C0, &unk_1005534F0);
  }

  else
  {
    v161 = v91;
    (*(v109 + 32))(v154, v110, v111);
    v112 = FMIPItemGroup.items.getter();
    v113 = *(v112 + 16);
    if (v113)
    {
      v114 = *(v142 + 16);
      v115 = *(v142 + 80);
      v155 = v112;
      v116 = v96;
      v117 = v112 + ((v115 + 32) & ~v115);
      v166 = *(v142 + 72);
      v167 = v114;
      v165 = v142 + 8;
      v164 = v145 + 8;
      v118 = v170;
      do
      {
        v172 = v113;
        v119 = v168;
        (v167)(v168, v117, v5);
        FMIPItem.state.getter();
        (*v165)(v119, v5);
        v120 = v171;
        static FMIPItemState.separationWarningActive.getter();
        sub_1004A7DD4(&qword_1006C0350, &type metadata accessor for FMIPItemState, &protocol conformance descriptor for FMIPItemState);
        v121 = v169;
        LOBYTE(v119) = dispatch thunk of SetAlgebra.isSuperset(of:)();
        v122 = v5;
        v123 = *v164;
        (*v164)(v120, v121);
        v123(v118, v121);
        v5 = v122;
        if (v119)
        {
          v116 |= 0x1000uLL;
        }

        v117 += v166;
        v113 = v172 - 1;
      }

      while (v172 != 1);

      v124 = v169;
      v125 = v170;
      v126 = v171;
      v59 = v159;
      v96 = v116;
    }

    else
    {

      v124 = v169;
      v125 = v170;
      v126 = v171;
    }

    v127 = v154;
    FMIPItemGroup.state.getter();
    static FMIPItemState.pairingLocked.getter();
    sub_1004A7DD4(&qword_1006C0350, &type metadata accessor for FMIPItemState, &protocol conformance descriptor for FMIPItemState);
    v128 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v129 = *(v145 + 8);
    v129(v126, v124);
    v129(v125, v124);
    if (v128)
    {
      v96 |= 0x80000uLL;
    }

    FMIPItemGroup.state.getter();
    static FMIPItemState.pairingIncomplete.getter();
    v130 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v129(v126, v124);
    v129(v125, v124);
    (*(v157 + 8))(v127, v158);
    if (v130)
    {
      v96 |= 0x40000uLL;
    }
  }

  FMIPDevice.state.getter();
  v131 = v160;
  static FMIPDeviceState.separationWarningActive.getter();
  v132 = v162;
  v133 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v134 = v156;
  (v156)(v131, v132);
  v134(v59, v132);
  if (v133)
  {
    v135 = v96 | 0x1000;
  }

  else
  {
    v135 = v96;
  }

  FMIPDevice.state.getter();
  static FMIPDeviceState.isInRepairMode.getter();
  v136 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v134(v131, v132);
  v134(v59, v132);
  if (v136)
  {
    return v135 | 0x100000;
  }

  else
  {
    return v135;
  }
}

uint64_t sub_1004A7D98(uint64_t *a1, uint64_t (*a2)(char *))
{
  v3 = *a1;
  v5[2] = *(v2 + 16);
  return sub_10008A5B8(a2, v5, v3) & 1;
}

uint64_t sub_1004A7DD4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1004A7E1C(void x0_0, uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = a3 >> 1;
  v7 = (a3 >> 1) - a2;
  if (__OFSUB__(a3 >> 1, a2))
  {
    __break(1u);
  }

  else
  {
    v5 = a2;
    if (!(*v4 >> 62))
    {
      v8 = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = __OFADD__(v8, v7);
      result = v8 + v7;
      if (!v9)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  v14 = _CocoaArrayWrapper.endIndex.getter();
  v9 = __OFADD__(v14, v7);
  result = v14 + v7;
  if (v9)
  {
    goto LABEL_15;
  }

LABEL_4:
  result = sub_10001FF90();
  v11 = *v4;
  if (v6 == v5)
  {
    if (v7 <= 0)
    {
LABEL_11:
      *v4 = v11;
      return result;
    }

    __break(1u);
  }

  if ((*((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1) - *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) < v7)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_10007EBC0(&qword_1006C1DD0, &qword_100561C90);
  result = swift_arrayInitWithCopy();
  if (v7 <= 0)
  {
    goto LABEL_11;
  }

  v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v9 = __OFADD__(v12, v7);
  v13 = v12 + v7;
  if (!v9)
  {
    *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) = v13;
    goto LABEL_11;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1004A7F38()
{

  return swift_deallocClassInstance();
}

BOOL sub_1004A7F9C(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

BOOL sub_1004A8014(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v9 = 0;
  v10 = *(a2 + 16);
  do
  {
    v11 = v9;
    if (v10 == v9)
    {
      break;
    }

    a3(0);
    ++v9;
    sub_10000A6F0(a4, a5, a6);
  }

  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0);
  return v10 != v11;
}

char *sub_1004A811C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_scrollView;
  *&v4[v8] = [objc_allocWithZone(UIScrollView) init];
  v9 = OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_contentStackView;
  *&v4[v9] = [objc_allocWithZone(UIStackView) init];
  *&v4[OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v10 = OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_notifyWhenLeftBehindImageView;
  sub_10000905C(0, &qword_1006BC2B0, UIImage_ptr);
  v15 = sub_1003DE3DC(0xD00000000000001ALL, 0x8000000100586BE0, 6778480, 0xE300000000000000, v11, v12, v13, v14, v31.receiver);
  v16 = [objc_allocWithZone(UIImageView) initWithImage:v15];

  *&v4[v10] = v16;
  v17 = OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_notifyWhenLeftBehindDescription;
  *&v4[v17] = [objc_allocWithZone(UILabel) init];
  v18 = OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_trustedLocationsDescription;
  *&v4[v18] = [objc_allocWithZone(UILabel) init];
  v19 = OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_notifyWhenLeftBehindSwitchSection;
  *&v4[v19] = [objc_allocWithZone(type metadata accessor for FMSectionPlatterGroupView()) init];
  v20 = OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_notifyWhenLeftBehindSwitch;
  *&v4[v20] = [objc_allocWithZone(type metadata accessor for FMSettingSwitchView()) init];
  v21 = OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_nonMeDescriptionPadView;
  *&v4[v21] = [objc_allocWithZone(UIView) init];
  *&v4[OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_assignedSafeLocations] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_suggestedSafeLocations] = _swiftEmptyArrayStorage;
  v22 = &v4[OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_beaconUUID];
  v23 = type metadata accessor for FMTrustedLocationDetailView(0);
  *v22 = 0;
  *(v22 + 1) = 0;
  v24 = objc_allocWithZone(v23);

  v26 = sub_100337DAC(v25);

  *&v4[OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_trustedLocationsSection] = v26;
  v27 = objc_allocWithZone(type metadata accessor for FMSafeLocationSuggestionsView());

  *&v4[OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_suggestionsSection] = sub_1004E8FAC(v28);
  *v22 = a2;
  *(v22 + 1) = a3;

  *&v4[OBJC_IVAR____TtC6FindMy24FMMediatedViewController_mediator] = a1;
  v31.receiver = v4;
  v31.super_class = type metadata accessor for FMMediatedViewController();
  v29 = objc_msgSendSuper2(&v31, "initWithNibName:bundle:", 0, 0);
  *(*&v29[OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_suggestionsSection] + OBJC_IVAR____TtC6FindMy29FMSafeLocationSuggestionsView_delegate + 8) = &off_100641A18;
  swift_unknownObjectWeakAssign();
  *(*&v29[OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_trustedLocationsSection] + OBJC_IVAR____TtC6FindMy27FMTrustedLocationDetailView_delegate + 8) = &off_1006419F0;
  swift_unknownObjectWeakAssign();
  return v29;
}

void sub_1004A842C()
{
  v1 = v0;
  v2 = sub_10007EBC0(&unk_1006BBCE0, &unk_1005534C0);
  __chkstk_darwin(v2 - 8);
  v125 = &v123 - v3;
  v4 = type metadata accessor for FMFDevice();
  v5 = *(v4 - 8);
  v137 = v4;
  v138 = v5;
  __chkstk_darwin(v4);
  v142 = &v123 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10007EBC0(&qword_1006B68E8, &unk_100563FF0);
  __chkstk_darwin(v7 - 8);
  v126 = &v123 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v127 = &v123 - v10;
  v11 = sub_10007EBC0(&qword_1006AF748, &unk_100558AD0);
  __chkstk_darwin(v11 - 8);
  v136 = &v123 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v135 = &v123 - v14;
  __chkstk_darwin(v15);
  v17 = &v123 - v16;
  v18 = type metadata accessor for FMTrustedLocationDetailViewController();
  v143.receiver = v0;
  v143.super_class = v18;
  objc_msgSendSuper2(&v143, "viewDidLoad");
  v19 = [v0 view];
  if (!v19)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v20 = v19;
  v21 = objc_opt_self();
  v22 = [v21 secondarySystemBackgroundColor];
  [v20 setBackgroundColor:v22];

  v23 = OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_scrollView;
  v24 = *&v1[OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_scrollView];
  v25 = [v21 secondarySystemBackgroundColor];
  [v24 setBackgroundColor:v25];

  v26 = OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_contentStackView;
  v27 = *&v1[OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_contentStackView];
  v132 = v21;
  v28 = [v21 secondarySystemBackgroundColor];
  [v27 setBackgroundColor:v28];

  [*&v1[v23] setPreservesSuperviewLayoutMargins:1];
  [*&v1[v23] setContentInsetAdjustmentBehavior:3];
  [*&v1[v26] setPreservesSuperviewLayoutMargins:1];
  v29 = [*&v1[v26] setAxis:1];
  sub_1004A979C(v29, v30, v31);
  v32 = [objc_allocWithZone(UIView) init];
  [*&v1[v26] addArrangedSubview:v32];
  v33 = *&v1[OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_notifyWhenLeftBehindImageView];
  [*&v1[v26] addArrangedSubview:v33];
  v34 = *&v1[OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_notifyWhenLeftBehindSwitchSection];
  v35 = *(v34 + OBJC_IVAR____TtC6FindMy25FMSectionPlatterGroupView_contentStackView);
  v130 = *&v1[OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_notifyWhenLeftBehindSwitch];
  [v35 addArrangedSubview:?];
  [*&v1[v26] addArrangedSubview:v34];
  v36 = *&v1[OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_notifyWhenLeftBehindDescription];
  [*&v1[v26] addArrangedSubview:v36];
  v37 = *&v1[v26];
  v124 = *&v1[OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_trustedLocationsDescription];
  [v37 addArrangedSubview:?];
  v38 = *&v1[OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_nonMeDescriptionPadView];
  [*&v1[v26] addArrangedSubview:v38];
  v39 = *&v1[OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_trustedLocationsSection];
  [*&v1[v26] addArrangedSubview:v39];
  v40 = *&v1[v26];
  v128 = *&v1[OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_suggestionsSection];
  [v40 addArrangedSubview:?];
  [v33 setContentMode:1];
  v41 = *&v1[v26];
  v131 = v32;
  [v41 setCustomSpacing:v32 afterView:6.0];
  [*&v1[v26] setCustomSpacing:v33 afterView:6.0];
  v42 = *&v1[v26];
  v129 = v36;
  [v42 setCustomSpacing:v36 afterView:12.0];
  [*&v1[v26] setCustomSpacing:v38 afterView:24.0];
  [*&v1[v26] setCustomSpacing:v39 afterView:24.0];
  [*&v1[v23] addSubview:*&v1[v26]];
  v43 = [v1 view];
  if (!v43)
  {
LABEL_52:
    __break(1u);
    return;
  }

  v44 = v43;
  [v43 addSubview:*&v1[v23]];

  v141 = *&v1[OBJC_IVAR____TtC6FindMy24FMMediatedViewController_mediator];

  dispatch thunk of FMFManager.myInfo.getter();

  v45 = type metadata accessor for FMFMyInfo();
  v46 = *(v45 - 8);
  v139 = *(v46 + 48);
  v140 = v46 + 48;
  if (v139(v17, 1, v45) == 1)
  {
    sub_100012DF0(v17, &qword_1006AF748, &unk_100558AD0);
    v47 = 0;
    v48 = 0;
  }

  else
  {
    v47 = FMFMyInfo.meDeviceId.getter();
    v48 = v49;
    (*(v46 + 8))(v17, v45);
  }

  v50 = v135;

  dispatch thunk of FMFManager.myInfo.getter();

  if (v139(v50, 1, v45) == 1)
  {
    sub_100012DF0(v50, &qword_1006AF748, &unk_100558AD0);
    if (!v48)
    {
      goto LABEL_46;
    }

    goto LABEL_16;
  }

  v51 = FMFMyInfo.deviceId.getter();
  v53 = v52;
  (*(v46 + 8))(v50, v45);
  if (v48)
  {
    if (v53)
    {
      if (v47 == v51 && v48 == v53)
      {

        goto LABEL_45;
      }

      v69 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v69)
      {
        goto LABEL_46;
      }

LABEL_17:

      v54 = dispatch thunk of FMFManager.devices.getter();

      if (v54)
      {
        v123 = v1;
        v55 = v137;
        v135 = *(v54 + 16);
        if (v135)
        {
          v56 = 0;
          v134 = v54 + ((*(v138 + 80) + 32) & ~*(v138 + 80));
          v133 = v138 + 16;
          v57 = (v46 + 8);
          v58 = (v138 + 8);
          while (1)
          {
            if (v56 >= *(v54 + 16))
            {
              __break(1u);
              goto LABEL_51;
            }

            (*(v138 + 16))(v142, v134 + *(v138 + 72) * v56, v55);
            v59 = FMFDevice.identifier.getter();
            v61 = v60;

            v62 = v136;
            dispatch thunk of FMFManager.myInfo.getter();

            if (v139(v62, 1, v45) == 1)
            {
              break;
            }

            v63 = FMFMyInfo.meDeviceId.getter();
            v65 = v64;
            (*v57)(v62, v45);
            if (!v65)
            {
              goto LABEL_21;
            }

            if (v59 == v63 && v65 == v61)
            {

LABEL_35:

              v55 = v137;
              v67 = v138;
              v68 = v127;
              (*(v138 + 32))(v127, v142, v137);
              (*(v67 + 56))(v68, 0, 1, v55);
              goto LABEL_36;
            }

            v66 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v66)
            {
              goto LABEL_35;
            }

LABEL_22:
            ++v56;
            v55 = v137;
            (*v58)(v142, v137);
            if (v135 == v56)
            {
              goto LABEL_30;
            }
          }

          sub_100012DF0(v62, &qword_1006AF748, &unk_100558AD0);
LABEL_21:

          goto LABEL_22;
        }

LABEL_30:

        v67 = v138;
        v68 = v127;
        (*(v138 + 56))(v127, 1, 1, v55);
LABEL_36:
        v1 = v123;
      }

      else
      {
        v55 = v137;
        v67 = v138;
        v68 = v127;
        (*(v138 + 56))(v127, 1, 1, v137);
      }

      v70 = v126;
      sub_100007204(v68, v126, &qword_1006B68E8, &unk_100563FF0);
      if ((*(v67 + 48))(v70, 1, v55) == 1)
      {
        sub_100012DF0(v68, &qword_1006B68E8, &unk_100563FF0);
        sub_100012DF0(v70, &qword_1006B68E8, &unk_100563FF0);
        goto LABEL_46;
      }

      v71 = FMFDevice.name.getter();
      v73 = v72;
      (*(v67 + 8))(v70, v55);
      v74 = *&v1[OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_beaconUUID + 8];
      if (v74)
      {
        v75 = *&v1[OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_beaconUUID];

        v76 = v125;
        sub_1000E5180(v75, v74, v125);

        v77 = type metadata accessor for FMIPDevice();
        LODWORD(v75) = (*(*(v77 - 8) + 48))(v76, 1, v77);
        sub_100012DF0(v76, &unk_1006BBCE0, &unk_1005534C0);
        v78 = [objc_opt_self() mainBundle];
        v79 = "RUSTED_LOCATION_DESCRIPTION";
        if (v75 == 1)
        {
          v79 = "ONS_SUGGESTION_TITLE";
          v80 = 0xD00000000000003BLL;
        }

        else
        {
          v80 = 0xD00000000000003DLL;
        }

        v144._object = 0x800000010057D660;
        v81 = v79 | 0x8000000000000000;
        v82.value._object = 0x800000010057D640;
        v144._countAndFlagsBits = 0xD00000000000001BLL;
        v82.value._countAndFlagsBits = 0xD000000000000016;
        v83._countAndFlagsBits = 0;
        v83._object = 0xE000000000000000;
        NSLocalizedString(_:tableName:bundle:value:comment:)(*&v80, v82, v78, v83, v144);

        sub_10007EBC0(&unk_1006B20B0, &unk_1005523B0);
        v84 = swift_allocObject();
        *(v84 + 16) = xmmword_100552220;
        *(v84 + 56) = &type metadata for String;
        *(v84 + 64) = sub_10008EE84();
        *(v84 + 32) = v71;
        *(v84 + 40) = v73;
        String.init(format:_:)();

        v85 = String._bridgeToObjectiveC()();

        v86 = v124;
        [v124 setText:v85];

        [v86 setNumberOfLines:0];
        v87 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleFootnote];
        [v86 setFont:v87];

        v88 = [v132 secondaryLabelColor];
        [v86 setTextColor:v88];

        [v86 setLineBreakMode:0];
        [v86 sizeToFit];
        sub_100012DF0(v68, &qword_1006B68E8, &unk_100563FF0);
        goto LABEL_46;
      }

      sub_100012DF0(v68, &qword_1006B68E8, &unk_100563FF0);
LABEL_45:

      goto LABEL_46;
    }

LABEL_16:

    goto LABEL_17;
  }

  if (v53)
  {
    goto LABEL_16;
  }

LABEL_46:
  sub_1004A967C();
  sub_1004AFD20();
  v89 = *(v128 + OBJC_IVAR____TtC6FindMy25FMSectionPlatterGroupView_sectionLabel);
  v90 = OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_suggestedSafeLocations;
  swift_beginAccess();
  if (*(*&v1[v90] + 16))
  {
    v91 = objc_opt_self();
    v92 = v89;
    v93 = [v91 mainBundle];
    v141 = 0x800000010057D660;
    v145._object = 0x800000010057D660;
    v94._countAndFlagsBits = 0xD000000000000024;
    v94._object = 0x800000010059BC60;
    v145._countAndFlagsBits = 0xD00000000000001BLL;
    v95.value._countAndFlagsBits = 0xD000000000000016;
    v142 = 0x800000010057D640;
    v95.value._object = 0x800000010057D640;
    v96._countAndFlagsBits = 0;
    v96._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v94, v95, v93, v96, v145);

    v97 = String._bridgeToObjectiveC()();
  }

  else
  {
    v141 = 0x800000010057D660;
    v142 = 0x800000010057D640;
    v98 = v89;
    v97 = 0;
  }

  [v89 setText:{v97, v123}];

  sub_1004ABCE4();
  v99 = String._bridgeToObjectiveC()();

  v100 = v129;
  [v129 setText:v99];

  [v100 setNumberOfLines:0];
  v101 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleFootnote];
  [v100 setFont:v101];

  v102 = [v132 secondaryLabelColor];
  [v100 setTextColor:v102];

  [v100 setLineBreakMode:0];
  [v100 sizeToFit];
  v103 = v1;
  v140 = "DeviceNotificationsView";
  v104 = objc_opt_self();
  v105 = [v104 mainBundle];
  v106 = v141;
  v146._object = v141;
  v107._countAndFlagsBits = 0xD000000000000023;
  v107._object = 0x80000001005888C0;
  v146._countAndFlagsBits = 0xD00000000000001BLL;
  v108.value._countAndFlagsBits = 0xD000000000000016;
  v109 = v142;
  v108.value._object = v142;
  v110._countAndFlagsBits = 0;
  v110._object = 0xE000000000000000;
  v111 = NSLocalizedString(_:tableName:bundle:value:comment:)(v107, v108, v105, v110, v146);

  v112 = v130;
  *&v130[OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_title] = v111;

  v113 = *&v112[OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_titleLabel];

  v114 = v113;
  v115 = String._bridgeToObjectiveC()();

  [v114 setText:v115];

  *&v112[OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_delegate + 8] = &off_100641A38;
  swift_unknownObjectWeakAssign();
  v116 = String._bridgeToObjectiveC()();
  [v112 setAccessibilityIdentifier:v116];

  v112[OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_separated] = 0;
  [*&v112[OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_separator] setHidden:1];
  v117 = [v103 navigationItem];
  v118 = [v104 mainBundle];
  v147._object = v106;
  v119._countAndFlagsBits = 0xD000000000000023;
  v119._object = (v140 | 0x8000000000000000);
  v147._countAndFlagsBits = 0xD00000000000001BLL;
  v120.value._countAndFlagsBits = 0xD000000000000016;
  v120.value._object = v109;
  v121._countAndFlagsBits = 0;
  v121._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v119, v120, v118, v121, v147);

  v122 = String._bridgeToObjectiveC()();

  [v117 setTitle:v122];
}

void sub_1004A967C()
{
  v1 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:0 target:v0 action:"doneAction"];
  v2 = [v0 navigationItem];
  sub_10007EBC0(&qword_1006AFC30, &unk_1005523E0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1005528C0;
  *(v3 + 32) = v1;
  sub_10000905C(0, &qword_1006B0160, UIBarButtonItem_ptr);
  v4 = v1;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 setRightBarButtonItems:isa animated:0];
}

uint64_t sub_1004A979C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v8 = *(v20 - 8);
  __chkstk_darwin(v20);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1004A9B58();
  if (!v11)
  {
    v11 = [objc_allocWithZone(MKAnnotationView) init];
  }

  v12 = v11;
  sub_10000905C(0, &qword_1006AEDC0, OS_dispatch_queue_ptr);
  v13 = static OS_dispatch_queue.main.getter();
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v14 + 24) = v3;
  aBlock[4] = sub_1004B07A8;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_100641C80;
  v15 = _Block_copy(aBlock);
  v16 = v12;
  v17 = v3;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000A6F0(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640, &unk_100552B10);
  sub_100037970();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v5 + 8))(v7, v4);
  return (*(v8 + 8))(v10, v20);
}

id sub_1004A9A90(void *a1, uint64_t a2)
{
  [a1 frame];
  [a1 setFrame:?];
  v4 = *(a2 + OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_notifyWhenLeftBehindImageView);
  [v4 addSubview:a1];
  [v4 bounds];
  v6 = v5 * 0.5 + -14.0;
  [v4 bounds];

  return [a1 setCenter:{v6, v7 * 0.5}];
}

_BYTE *sub_1004A9B58()
{
  v1 = v0;
  v2 = type metadata accessor for FMIPItem();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v63 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FMIPDevice();
  v68 = *(v5 - 8);
  __chkstk_darwin(v5);
  v67 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10007EBC0(&qword_1006B07D0, qword_100552820);
  __chkstk_darwin(v7 - 8);
  v9 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v61 - v11;
  v13 = sub_10007EBC0(&unk_1006BBCE0, &unk_1005534C0);
  __chkstk_darwin(v13 - 8);
  v15 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v61 - v17;
  v19 = [objc_allocWithZone(CLLocation) init];
  v20 = v19;
  v21 = *(v1 + OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_beaconUUID + 8);
  if (v21)
  {
    v61 = v3;
    v62 = v2;
    v66 = v19;
    v22 = *(v1 + OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_beaconUUID);

    sub_1000E5180(v22, v21, v18);

    v65 = v12;
    sub_1000E5FF8(v22, v21, v12);

    v23 = v68;
    v24 = *(v68 + 48);
    v25 = v24(v18, 1, v5);
    v64 = v18;
    sub_100007204(v18, v15, &unk_1006BBCE0, &unk_1005534C0);
    if (v24(v15, 1, v5) == 1)
    {
      sub_100012DF0(v15, &unk_1006BBCE0, &unk_1005534C0);
    }

    else
    {
      v31 = v67;
      (*(v23 + 32))(v67, v15, v5);
      if (v25 != 1)
      {
        v32 = v66;
        v53 = sub_1004AA348(v31, v66);
        sub_10007EBC0(&qword_1006AFC30, &unk_1005523E0);
        v54 = swift_allocObject();
        *(v54 + 16) = xmmword_1005528C0;
        *(v54 + 32) = v53;
        v55 = objc_allocWithZone(type metadata accessor for FMClusterAnnotation());
        v56 = v53;
        sub_1003F4230(v54);
        v58 = v57;
        v59 = objc_allocWithZone(type metadata accessor for FMClusteredAnnotationView());
        v60 = String._bridgeToObjectiveC()();
        v30 = [v59 initWithAnnotation:v58 reuseIdentifier:v60];

        (*(v23 + 8))(v31, v5);
        v33 = v65;
        if (!v30)
        {
          goto LABEL_19;
        }

        goto LABEL_18;
      }

      (*(v23 + 8))(v31, v5);
    }

    v33 = v65;
    v32 = v66;
    sub_100007204(v65, v9, &qword_1006B07D0, qword_100552820);
    v34 = v61;
    v35 = v62;
    if ((*(v61 + 48))(v9, 1, v62) == 1)
    {
      sub_100012DF0(v9, &qword_1006B07D0, qword_100552820);
      if (qword_1006AEBE0 != -1)
      {
        swift_once();
      }

      v36 = type metadata accessor for Logger();
      sub_100005B14(v36, qword_1006D4630);
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&_mh_execute_header, v37, v38, "FMTrustedLocationDetailViewController: no item or device", v39, 2u);
      }

      v30 = 0;
      goto LABEL_20;
    }

    v40 = v63;
    (*(v34 + 32))(v63, v9, v35);
    sub_1004AB5C8(v40, v32);
    v42 = v41;
    sub_10007EBC0(&qword_1006AFC30, &unk_1005523E0);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_1005528C0;
    *(v43 + 32) = v42;
    v44 = objc_allocWithZone(type metadata accessor for FMClusterAnnotation());
    v45 = v34;
    v46 = v42;
    sub_1003F4230(v43);
    v48 = v47;
    v49 = objc_allocWithZone(type metadata accessor for FMClusteredAnnotationView());
    v50 = String._bridgeToObjectiveC()();
    v30 = [v49 initWithAnnotation:v48 reuseIdentifier:v50];

    (*(v45 + 8))(v40, v35);
    if (!v30)
    {
LABEL_19:
      v37 = v32;
LABEL_20:

      sub_100012DF0(v33, &qword_1006B07D0, qword_100552820);
      sub_100012DF0(v64, &unk_1006BBCE0, &unk_1005534C0);
      return v30;
    }

LABEL_18:
    v51 = OBJC_IVAR____TtC6FindMy25FMClusteredAnnotationView_puckHidden;
    v30[OBJC_IVAR____TtC6FindMy25FMClusteredAnnotationView_puckHidden] = 1;
    [*&v30[OBJC_IVAR____TtC6FindMy25FMClusteredAnnotationView_puckIcon] setHidden:1];
    [*&v30[OBJC_IVAR____TtC6FindMy25FMClusteredAnnotationView_puckBackgroundLayer] setHidden:v30[v51]];
    goto LABEL_19;
  }

  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  sub_100005B14(v26, qword_1006D4630);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&_mh_execute_header, v27, v28, "FMTrustedLocationDetailViewController: no beacon UUID", v29, 2u);
  }

  return 0;
}

char *sub_1004AA348(uint64_t a1, void *a2)
{
  v143 = a2;
  v3 = type metadata accessor for FMIPItem();
  v4 = *(v3 - 8);
  v152 = v3;
  v153 = v4;
  __chkstk_darwin(v3);
  v129 = &v118 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = type metadata accessor for FMIPConfigValue();
  v132 = *(v133 - 8);
  __chkstk_darwin(v133);
  v131 = &v118 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v142 = *(v144 - 8);
  __chkstk_darwin(v144);
  v141 = &v118 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v8 - 8);
  v140 = &v118 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v10 - 8);
  v139 = &v118 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10007EBC0(&qword_1006B07D0, qword_100552820);
  __chkstk_darwin(v12 - 8);
  v134 = &v118 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v154 = &v118 - v15;
  v16 = type metadata accessor for FMIPDevice();
  v148 = *(v16 - 8);
  __chkstk_darwin(v16);
  v151 = &v118 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v146 = &v118 - v19;
  v138 = type metadata accessor for FMIPDeviceImageCacheRequest();
  v137 = *(v138 - 8);
  __chkstk_darwin(v138);
  v21 = &v118 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v118 - v23;
  v147 = type metadata accessor for FMIPDeviceImageSize();
  v25 = *(v147 - 8);
  __chkstk_darwin(v147);
  v149 = &v118 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v145 = &v118 - v28;
  __chkstk_darwin(v29);
  v136 = &v118 - v30;
  v31 = sub_10007EBC0(&unk_1006BB1C0, &unk_1005534F0);
  __chkstk_darwin(v31 - 8);
  v128 = &v118 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v35 = &v118 - v34;
  v36 = type metadata accessor for FMIPItemGroup();
  v37 = *(v36 - 8);
  __chkstk_darwin(v36);
  v39 = &v118 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a1;
  FMIPDevice.itemGroup.getter();
  v41 = *(v37 + 48);
  v127 = v37 + 48;
  v126 = v41;
  v42 = v41(v35, 1, v36);
  v155 = v16;
  v135 = v36;
  v130 = v37;
  if (v42 == 1)
  {
    sub_100012DF0(v35, &unk_1006BB1C0, &unk_1005534F0);
    v43 = v145;
    v44 = v147;
    (*(v25 + 104))(v145, enum case for FMIPDeviceImageSize.list(_:), v147);
    v45 = v25;
    v46 = *(v148 + 16);
    v47 = (v148 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v122 = a1;
    v46(v146, a1, v155);
    (*(v45 + 16))(v149, v43, v44);
    v48 = objc_opt_self();

    v49 = [v48 mainScreen];
    [v49 scale];

    FMIPDeviceImageCacheRequest.init(device:size:scale:)();
    dispatch thunk of FMImageCache.cachedImage(for:completion:)();
    (*(v137 + 8))(v21, v138);

    v50 = v156;
    (*(v45 + 8))(v43, v44);
    v52 = v152;
    v51 = v153;
    v53 = v122;
  }

  else
  {
    v120 = v21;
    (*(v37 + 32))(v39, v35, v36);
    v123 = *(*(*(v150 + OBJC_IVAR____TtC6FindMy24FMMediatedViewController_mediator) + 24) + 24);

    v124 = v39;
    v54 = FMIPItemGroup.items.getter();
    v121 = sub_10053840C(v54);

    v55 = v136;
    v56 = v147;
    (*(v25 + 104))(v136, enum case for FMIPDeviceImageSize.list(_:), v147);
    v57 = *(v148 + 16);
    v149 = ((v148 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000);
    v53 = v40;
    v57(v146, v40, v155);
    v125 = v25;
    v119 = *(v25 + 16);
    v119(v145, v55, v56);
    v58 = objc_opt_self();
    v59 = [v58 mainScreen];
    [v59 scale];

    FMIPDeviceImageCacheRequest.init(itemParts:device:size:scale:)();
    v60 = v24;
    dispatch thunk of FMImageCache.cachedImage(for:completion:)();
    v50 = v156;
    v150 = v57;
    if (v156)
    {

      v61 = v147;
      v62 = v136;
      (*(v137 + 8))(v60, v138);
    }

    else
    {
      v57(v146, v53, v155);
      v62 = v136;
      v61 = v147;
      v119(v145, v136, v147);
      v63 = [v58 mainScreen];
      [v63 scale];

      v64 = v120;
      FMIPDeviceImageCacheRequest.init(device:size:scale:)();
      dispatch thunk of FMImageCache.cachedImage(for:completion:)();
      v65 = *(v137 + 8);
      v66 = v64;
      v67 = v138;
      v65(v66, v138);

      v50 = v158;
      v65(v60, v67);
    }

    (*(v125 + 8))(v62, v61);
    (*(v130 + 8))(v124, v135);
    v52 = v152;
    v51 = v153;
    v47 = v149;
    v46 = v150;
  }

  v147 = v50;
  v68 = v50;
  v69 = v143;
  [v143 coordinate];
  v71 = v70;
  v73 = v72;
  [v69 horizontalAccuracy];
  v75 = v74;
  v76 = v74;
  v149 = v47;
  v150 = v46;
  v46(v151, v53, v155);
  (*(v51 + 56))(v154, 1, 1, v52);
  v77 = objc_allocWithZone(type metadata accessor for FMDeviceAnnotation());
  v78 = OBJC_IVAR____TtC6FindMy18FMDeviceAnnotation_deviceImage;
  *&v77[OBJC_IVAR____TtC6FindMy18FMDeviceAnnotation_deviceImage] = 0;
  v79 = OBJC_IVAR____TtC6FindMy18FMDeviceAnnotation_updateQueue;
  sub_10000905C(0, &qword_1006AEDC0, OS_dispatch_queue_ptr);
  static DispatchQoS.userInteractive.getter();
  static OS_dispatch_queue.Attributes.concurrent.getter();
  (*(v142 + 104))(v141, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v144);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&v77[v79] = result;
  if ((*&v76 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (v75 <= -9.22337204e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v75 < 9.22337204e18)
  {
    v81 = v132;
    v82 = v131;
    v83 = v133;
    (*(v132 + 104))(v131, enum case for FMIPConfigValue.inaccuracyRadiusThreshold(_:), v133);
    v158 = 0x7FFFFFFFFFFFFFFFLL;
    FMIPGlobalConfig<A>(_:fallback:)();
    (*(v81 + 8))(v82, v83);
    v84 = v156 < v75;
    sub_10007EBC0(&unk_1006C2480, qword_10055D360);
    v85 = swift_allocObject();
    *(v85 + ((*(*v85 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
    v87 = v151;
    v86 = v152;
    v150((v85 + *(*v85 + class metadata base offset for ManagedBuffer + 16)), v151, v155);
    *&v77[OBJC_IVAR____TtC6FindMy18FMDeviceAnnotation_deviceLock] = v85;
    sub_10007EBC0(&unk_1006BB1D0, qword_100564000);
    v88 = swift_allocObject();
    *(v88 + ((*(*v88 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
    v89 = v68;
    v90 = v154;
    sub_100007204(v154, v88 + *(*v88 + class metadata base offset for ManagedBuffer + 16), &qword_1006B07D0, qword_100552820);
    *&v77[OBJC_IVAR____TtC6FindMy18FMDeviceAnnotation_partLock] = v88;
    v91 = *&v77[v78];
    *&v77[v78] = v147;
    v92 = v89;

    v93 = &v77[OBJC_IVAR____TtC6FindMy18FMDeviceAnnotation_tempCoordinate];
    *v93 = v71;
    v93[1] = v73;
    v94 = &v77[OBJC_IVAR____TtC6FindMy12FMAnnotation_title];
    *v94 = 0;
    v94[1] = 0;
    *&v77[OBJC_IVAR____TtC6FindMy12FMAnnotation_badgeImage] = 0;
    *&v77[OBJC_IVAR____TtC6FindMy12FMAnnotation_stewieBadgeImage] = 0;
    *&v77[OBJC_IVAR____TtC6FindMy12FMAnnotation_fmClusterIdentifier] = xmmword_100554BC0;
    v95 = &v77[OBJC_IVAR____TtC6FindMy12FMAnnotation_coordinate];
    *v95 = v71;
    v95[1] = v73;
    *&v77[OBJC_IVAR____TtC6FindMy12FMAnnotation_horizontalAccuracy] = v75;
    v77[OBJC_IVAR____TtC6FindMy12FMAnnotation_isWithYou] = 0;
    v77[OBJC_IVAR____TtC6FindMy12FMAnnotation_isInaccurate] = v84;
    v77[OBJC_IVAR____TtC6FindMy12FMAnnotation_isLive] = 0;
    v96 = type metadata accessor for FMAnnotation();
    v157.receiver = v77;
    v157.super_class = v96;
    v97 = objc_msgSendSuper2(&v157, "init");
    v98 = *&v97[OBJC_IVAR____TtC6FindMy12FMAnnotation_badgeImage];
    *&v97[OBJC_IVAR____TtC6FindMy12FMAnnotation_badgeImage] = 0;
    v99 = v97;

    v100 = v134;
    sub_100007204(v90, v134, &qword_1006B07D0, qword_100552820);
    v101 = v153;
    if ((*(v153 + 48))(v100, 1, v86) == 1)
    {
      sub_100012DF0(v100, &qword_1006B07D0, qword_100552820);
      v102 = v155;
LABEL_21:
      v114 = FMIPDevice.name.getter();
      v116 = v115;

      (*(v148 + 8))(v87, v102);
      v117 = &v99[OBJC_IVAR____TtC6FindMy12FMAnnotation_title];
      *v117 = v114;
      v117[1] = v116;

      sub_100012DF0(v154, &qword_1006B07D0, qword_100552820);
      return v99;
    }

    v103 = v129;
    v104 = v86;
    (*(v101 + 4))(v129, v100, v86);
    v105 = v128;
    FMIPDevice.itemGroup.getter();
    v106 = v135;
    if (v126(v105, 1, v135) == 1)
    {
      sub_100012DF0(v105, &unk_1006BB1C0, &unk_1005534F0);
      v102 = v155;
    }

    else
    {
      v107 = FMIPItemGroup.groupedItems.getter();
      v108 = (*(v130 + 8))(v105, v106);
      __chkstk_darwin(v108);
      *(&v118 - 2) = v103;
      v109 = sub_100110710(sub_1002F5958, (&v118 - 4), v107);
      v101 = v153;
      v110 = v109;

      v102 = v155;
      if (v110)
      {
        v111 = *(v110 + 16);
        if (v111)
        {
          v101 = sub_10008C8B4(*(v110 + 16), 0);
          sub_1004A2330(&v156, &v101[(*(v153 + 80) + 32) & ~*(v153 + 80)], v111, v110);
          v113 = v112;
          sub_1002204D4(v156);
          if (v113 != v111)
          {
            __break(1u);
            goto LABEL_18;
          }
        }

        else
        {
        }

        (*(v153 + 8))(v103, v104);
        goto LABEL_21;
      }
    }

LABEL_18:
    (*(v101 + 1))(v103, v104);
    goto LABEL_21;
  }

LABEL_24:
  __break(1u);
  return result;
}

void sub_1004AB5C8(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for FMIPConfigValue();
  v50 = *(v4 - 8);
  v51 = v4;
  __chkstk_darwin(v4);
  v48 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v57 = *(v59 - 8);
  __chkstk_darwin(v59);
  v58 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v7 - 8);
  v56 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v9 - 8);
  v10 = type metadata accessor for FMIPItem();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = v13;
  v14 = type metadata accessor for FMIPItemImageSize();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 104))(v18, enum case for FMIPItemImageSize.list(_:), v14, v16);

  v55 = sub_1001C8A1C(a1, v18, 0);

  (*(v15 + 8))(v18, v14);
  [a2 coordinate];
  v20 = v19;
  v22 = v21;
  [a2 horizontalAccuracy];
  v24 = v23;
  v54 = v23;
  v49 = v11;
  v53 = *(v11 + 16);
  v53(v13, a1, v10);
  v25 = objc_allocWithZone(type metadata accessor for FMItemAnnotation());
  v26 = OBJC_IVAR____TtC6FindMy16FMItemAnnotation_itemImage;
  *&v25[OBJC_IVAR____TtC6FindMy16FMItemAnnotation_itemImage] = 0;
  v27 = OBJC_IVAR____TtC6FindMy16FMItemAnnotation_updateQueue;
  sub_10000905C(0, &qword_1006AEDC0, OS_dispatch_queue_ptr);
  static DispatchQoS.userInteractive.getter();
  static OS_dispatch_queue.Attributes.concurrent.getter();
  (*(v57 + 104))(v58, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v59);
  *&v25[v27] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v28 = v10;
  v29 = v52;
  sub_10007EBC0(&unk_1006C2450, &qword_100554710);
  v30 = swift_allocObject();
  *(v30 + ((*(*v30 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  v53((v30 + *(*v30 + class metadata base offset for ManagedBuffer + 16)), v29, v28);
  *&v25[OBJC_IVAR____TtC6FindMy16FMItemAnnotation_itemLock] = v30;
  v31 = *&v25[v26];
  v32 = v55;
  *&v25[v26] = v55;
  v33 = v32;

  v34 = &v25[OBJC_IVAR____TtC6FindMy16FMItemAnnotation_tempCoordinate];
  *v34 = v20;
  v34[1] = v22;
  if ((*&v54 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v24 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v24 < 9.22337204e18)
  {
    v36 = v50;
    v35 = v51;
    v37 = v48;
    (*(v50 + 104))(v48, enum case for FMIPConfigValue.inaccuracyRadiusThreshold(_:), v51);
    v61 = 0x7FFFFFFFFFFFFFFFLL;
    FMIPGlobalConfig<A>(_:fallback:)();
    (*(v36 + 8))(v37, v35);
    v38 = v62;
    v39 = &v25[OBJC_IVAR____TtC6FindMy12FMAnnotation_title];
    *v39 = 0;
    v39[1] = 0;
    *&v25[OBJC_IVAR____TtC6FindMy12FMAnnotation_badgeImage] = 0;
    *&v25[OBJC_IVAR____TtC6FindMy12FMAnnotation_stewieBadgeImage] = 0;
    *&v25[OBJC_IVAR____TtC6FindMy12FMAnnotation_fmClusterIdentifier] = xmmword_100554BC0;
    v40 = &v25[OBJC_IVAR____TtC6FindMy12FMAnnotation_coordinate];
    *v40 = v20;
    v40[1] = v22;
    *&v25[OBJC_IVAR____TtC6FindMy12FMAnnotation_horizontalAccuracy] = v24;
    v25[OBJC_IVAR____TtC6FindMy12FMAnnotation_isWithYou] = 0;
    v25[OBJC_IVAR____TtC6FindMy12FMAnnotation_isInaccurate] = v38 < v24;
    v25[OBJC_IVAR____TtC6FindMy12FMAnnotation_isLive] = 0;
    v41 = type metadata accessor for FMAnnotation();
    v60.receiver = v25;
    v60.super_class = v41;
    v42 = objc_msgSendSuper2(&v60, "init");
    v43 = FMIPItem.name.getter();
    v45 = v44;

    (*(v49 + 8))(v29, v28);
    v46 = &v42[OBJC_IVAR____TtC6FindMy12FMAnnotation_title];
    *v46 = v43;
    v46[1] = v45;

    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_1004ABCE4()
{
  v1 = type metadata accessor for FMIPItem();
  v49 = *(v1 - 8);
  __chkstk_darwin(v1);
  v48 = &v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for FMIPDevice();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10007EBC0(&qword_1006B07D0, qword_100552820);
  __chkstk_darwin(v7 - 8);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v47 - v11;
  v13 = sub_10007EBC0(&unk_1006BBCE0, &unk_1005534C0);
  __chkstk_darwin(v13 - 8);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v47 - v17;
  v19 = *(v0 + OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_beaconUUID + 8);
  if (!v19)
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100005B14(v24, qword_1006D4630);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "FMTrustedLocationDetailViewController: no beacon UUID", v27, 2u);
    }

    return 0;
  }

  v47 = v1;
  v20 = *(v0 + OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_beaconUUID);
  v50 = v12;

  sub_1000E5180(v20, v19, v18);

  v21 = v50;

  sub_1000E5FF8(v20, v19, v21);

  sub_100007204(v18, v15, &unk_1006BBCE0, &unk_1005534C0);
  if ((*(v4 + 48))(v15, 1, v3) == 1)
  {
    sub_100012DF0(v15, &unk_1006BBCE0, &unk_1005534C0);
    sub_100007204(v21, v9, &qword_1006B07D0, qword_100552820);
    v22 = v49;
    v23 = v47;
    if ((*(v49 + 48))(v9, 1, v47) == 1)
    {
      sub_100012DF0(v9, &qword_1006B07D0, qword_100552820);
      sub_100012DF0(v50, &qword_1006B07D0, qword_100552820);
      sub_100012DF0(v18, &unk_1006BBCE0, &unk_1005534C0);
      return 0;
    }

    v38 = v48;
    (*(v22 + 32))(v48, v9, v23);
    v39 = [objc_opt_self() mainBundle];
    v52._object = 0x800000010057D660;
    v40._countAndFlagsBits = 0xD000000000000032;
    v40._object = 0x800000010059BBE0;
    v41.value._object = 0x800000010057D640;
    v52._countAndFlagsBits = 0xD00000000000001BLL;
    v41.value._countAndFlagsBits = 0xD000000000000016;
    v42._countAndFlagsBits = 0;
    v42._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v40, v41, v39, v42, v52);

    sub_10007EBC0(&unk_1006B20B0, &unk_1005523B0);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_100552220;
    v44 = FMIPItem.name.getter();
    v46 = v45;
    *(v43 + 56) = &type metadata for String;
    *(v43 + 64) = sub_10008EE84();
    *(v43 + 32) = v44;
    *(v43 + 40) = v46;
    v37 = String.init(format:_:)();

    (*(v22 + 8))(v38, v23);
    sub_100012DF0(v50, &qword_1006B07D0, qword_100552820);
    sub_100012DF0(v18, &unk_1006BBCE0, &unk_1005534C0);
  }

  else
  {
    (*(v4 + 32))(v6, v15, v3);
    v29 = [objc_opt_self() mainBundle];
    v51._object = 0x800000010057D660;
    v30._countAndFlagsBits = 0xD000000000000034;
    v30._object = 0x800000010059BC20;
    v31.value._object = 0x800000010057D640;
    v51._countAndFlagsBits = 0xD00000000000001BLL;
    v31.value._countAndFlagsBits = 0xD000000000000016;
    v32._countAndFlagsBits = 0;
    v32._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v30, v31, v29, v32, v51);

    sub_10007EBC0(&unk_1006B20B0, &unk_1005523B0);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_100552220;
    v34 = FMIPDevice.name.getter();
    v36 = v35;
    *(v33 + 56) = &type metadata for String;
    *(v33 + 64) = sub_10008EE84();
    *(v33 + 32) = v34;
    *(v33 + 40) = v36;
    v37 = String.init(format:_:)();

    (*(v4 + 8))(v6, v3);
    sub_100012DF0(v21, &qword_1006B07D0, qword_100552820);
    sub_100012DF0(v18, &unk_1006BBCE0, &unk_1005534C0);
  }

  return v37;
}

void sub_1004AC438(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v119 = a6;
  v118 = a5;
  v116 = a4;
  v114 = a3;
  v115 = a2;
  v139 = a1;
  v128 = type metadata accessor for FMFDevice();
  v123 = *(v128 - 8);
  __chkstk_darwin(v128);
  v127 = &v112 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10007EBC0(&qword_1006B68E8, &unk_100563FF0);
  __chkstk_darwin(v8 - 8);
  v113 = &v112 - v9;
  v10 = sub_10007EBC0(&qword_1006AF748, &unk_100558AD0);
  __chkstk_darwin(v10 - 8);
  v122 = &v112 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v120 = &v112 - v13;
  __chkstk_darwin(v14);
  v117 = &v112 - v15;
  v138 = type metadata accessor for FMIPSafeLocationApprovalState();
  v16 = *(v138 - 8);
  __chkstk_darwin(v138);
  v140 = &v112 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v137 = &v112 - v19;
  v144 = type metadata accessor for FMIPSafeLocation();
  v20 = *(v144 - 8);
  __chkstk_darwin(v144);
  v126 = &v112 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v112 - v23;
  __chkstk_darwin(v25);
  v146 = &v112 - v26;
  __chkstk_darwin(v27);
  v136 = &v112 - v28;
  __chkstk_darwin(v29);
  v31 = &v112 - v30;
  v121 = v6;
  v125 = *(v6 + OBJC_IVAR____TtC6FindMy24FMMediatedViewController_mediator);

  v32 = FMIPManager.safeLocations.getter();

  v33 = *(v32 + 16);
  v142 = v20;
  v135 = v33;
  if (v33)
  {
    v34 = 0;
    v133 = v20 + 16;
    v132 = enum case for FMIPSafeLocationApprovalState.accepted(_:);
    v131 = (v16 + 104);
    v130 = (v16 + 8);
    v124 = (v20 + 8);
    v129 = (v20 + 32);
    v35 = _swiftEmptyArrayStorage;
    v36 = v144;
    v134 = v32;
    v37 = v138;
    while (v34 < *(v32 + 16))
    {
      v143 = v35;
      v145 = ((*(v20 + 80) + 32) & ~*(v20 + 80));
      v141 = *(v20 + 72);
      (*(v20 + 16))(v31, v145 + v32 + v141 * v34, v36);
      v38 = v137;
      FMIPSafeLocation.approvalState.getter();
      v39 = v31;
      v40 = v140;
      (*v131)(v140, v132, v37);
      sub_10000A6F0(&qword_1006C1F20, &type metadata accessor for FMIPSafeLocationApprovalState, &protocol conformance descriptor for FMIPSafeLocationApprovalState);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v41 = *v130;
      (*v130)(v40, v37);
      v41(v38, v37);
      if (v147 == v149)
      {
        v42 = *v129;
        (*v129)(v136, v39, v36);
        v35 = v143;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v148 = v35;
        v31 = v39;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1001670D4(0, v35[2] + 1, 1);
          v35 = v148;
        }

        v32 = v134;
        v45 = v35[2];
        v44 = v35[3];
        if (v45 >= v44 >> 1)
        {
          sub_1001670D4((v44 > 1), v45 + 1, 1);
          v35 = v148;
        }

        v35[2] = v45 + 1;
        v36 = v144;
        v42(v145 + v35 + v45 * v141, v136, v144);
      }

      else
      {
        (*v124)(v39, v36);
        v35 = v143;
        v31 = v39;
        v32 = v134;
      }

      ++v34;
      v20 = v142;
      if (v135 == v34)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_68;
  }

  v35 = _swiftEmptyArrayStorage;
  v36 = v144;
LABEL_13:

  v138 = v35[2];
  if (!v138)
  {
    v137 = _swiftEmptyArrayStorage;
LABEL_30:

    v66 = OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_assignedSafeLocations;
    v67 = v121;
    swift_beginAccess();
    v68 = v139;
    *(v67 + v66) = v139;

    v69 = OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_suggestedSafeLocations;
    swift_beginAccess();
    v70 = v137;
    *(v67 + v69) = v137;

    v71 = *(v67 + OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_trustedLocationsSection);
    sub_10032FEF4(v68);
    v72 = *(v67 + OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_suggestionsSection);
    sub_1004E9200(v70);

    v73 = *(v67 + OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_notifyWhenLeftBehindSwitch);
    *(v73 + OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_isOn) = v114 & 1;
    [*(v73 + OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_settingSwitch) setOn:?];
    *(v73 + OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_isEnabled) = v115 & 1;
    sub_10014B454();
    v74 = (v67 + OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_beaconUUID);
    v75 = v116;
    v76 = v118;
    *v74 = v116;
    v74[1] = v76;

    v77 = (v72 + OBJC_IVAR____TtC6FindMy29FMSafeLocationSuggestionsView_beaconUUID);
    *v77 = v75;
    v77[1] = v76;

    v78 = v119;
    *(v72 + OBJC_IVAR____TtC6FindMy29FMSafeLocationSuggestionsView_groupBeaconUUIDs) = v119;

    v79 = (v71 + OBJC_IVAR____TtC6FindMy27FMTrustedLocationDetailView_beaconUUID);
    *v79 = v75;
    v79[1] = v76;

    *(v71 + OBJC_IVAR____TtC6FindMy27FMTrustedLocationDetailView_groupBeaconUUIDs) = v78;

    v80 = v117;
    dispatch thunk of FMFManager.myInfo.getter();

    v81 = type metadata accessor for FMFMyInfo();
    v82 = *(v81 - 8);
    v145 = *(v82 + 48);
    v146 = (v82 + 48);
    if (v145(v80, 1, v81) == 1)
    {
      sub_100012DF0(v80, &qword_1006AF748, &unk_100558AD0);
      v83 = 0;
      v84 = 0;
    }

    else
    {
      v83 = FMFMyInfo.meDeviceId.getter();
      v84 = v85;
      (*(v82 + 8))(v80, v81);
    }

    v86 = v120;

    dispatch thunk of FMFManager.myInfo.getter();

    if (v145(v86, 1, v81) == 1)
    {
      sub_100012DF0(v86, &qword_1006AF748, &unk_100558AD0);
      if (!v84)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v87 = FMFMyInfo.deviceId.getter();
      v89 = v88;
      (*(v82 + 8))(v86, v81);
      if (!v84)
      {
        if (!v89)
        {
LABEL_44:
          v90 = 1;
          goto LABEL_47;
        }

        v90 = 0;
LABEL_46:

LABEL_47:

        v91 = dispatch thunk of FMFManager.devices.getter();

        if (v91)
        {
          LODWORD(v139) = v90;
          v140 = v74;
          v143 = *(v91 + 16);
          v144 = v81;
          if (v143)
          {
            v92 = 0;
            v142 = v91 + ((*(v123 + 80) + 32) & ~*(v123 + 80));
            v141 = v123 + 16;
            v93 = (v82 + 8);
            v94 = (v123 + 8);
            while (1)
            {
              if (v92 >= *(v91 + 16))
              {
                goto LABEL_69;
              }

              (*(v123 + 16))(v127, v142 + *(v123 + 72) * v92, v128);
              v95 = FMFDevice.identifier.getter();
              v97 = v96;

              v98 = v122;
              dispatch thunk of FMFManager.myInfo.getter();

              v99 = v144;
              if (v145(v98, 1, v144) == 1)
              {
                break;
              }

              v100 = FMFMyInfo.meDeviceId.getter();
              v102 = v101;
              (*v93)(v98, v99);
              if (!v102)
              {
                goto LABEL_51;
              }

              if (v95 == v100 && v102 == v97)
              {

LABEL_64:

                v106 = v123;
                v107 = v113;
                v108 = v128;
                (*(v123 + 32))(v113, v127, v128);
                (*(v106 + 56))(v107, 0, 1, v108);
                sub_100012DF0(v107, &qword_1006B68E8, &unk_100563FF0);
                if ((v139 & 1) == 0 && *(v140 + 1))
                {
                  v109 = v121;
                  [*(v121 + OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_nonMeDescriptionPadView) setHidden:0];
                  v110 = OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_contentStackView;
                  v111 = *(v109 + OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_notifyWhenLeftBehindDescription);
                  [*(v109 + OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_contentStackView) setCustomSpacing:v111 afterView:6.0];
                  [*(v109 + v110) setCustomSpacing:v111 afterView:12.0];
                  return;
                }

                goto LABEL_62;
              }

              v103 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v103)
              {
                goto LABEL_64;
              }

LABEL_52:
              ++v92;
              (*v94)(v127, v128);
              if (v143 == v92)
              {
                goto LABEL_60;
              }
            }

            sub_100012DF0(v98, &qword_1006AF748, &unk_100558AD0);
LABEL_51:

            goto LABEL_52;
          }

LABEL_60:
        }

        v104 = v113;
        (*(v123 + 56))(v113, 1, 1, v128);
        sub_100012DF0(v104, &qword_1006B68E8, &unk_100563FF0);
LABEL_62:
        v105 = v121;
        [*(v121 + OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_nonMeDescriptionPadView) setHidden:1];
        [*(v105 + OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_contentStackView) setCustomSpacing:*(v105 + OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_notifyWhenLeftBehindDescription) afterView:24.0];
        return;
      }

      if (v89)
      {
        if (v83 == v87 && v84 == v89)
        {

          v90 = 1;
        }

        else
        {
          v90 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        goto LABEL_46;
      }
    }

    v90 = 0;
    goto LABEL_46;
  }

  v46 = 0;
  v145 = (v20 + 16);
  v47 = (v20 + 8);
  v136 = (v20 + 32);
  v137 = _swiftEmptyArrayStorage;
  v143 = v35;
  while (v46 < v35[2])
  {
    v48 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    v49 = *(v20 + 72);
    v141 = v46 + 1;
    v50 = *(v20 + 16);
    v50(v146, v35 + v48 + v49 * v46, v36);
    v51 = *(v139 + 16);
    v140 = v48;
    v52 = v139 + v48;
    v53 = v51 + 1;
    while (--v53)
    {
      v50(v24, v52, v36);
      v56 = FMIPSafeLocation.identifier.getter();
      v58 = v57;
      if (v56 == FMIPSafeLocation.identifier.getter() && v58 == v59)
      {

        v55 = *v47;
        v36 = v144;
        (*v47)(v24, v144);
LABEL_15:
        v55(v146, v36);
        v20 = v142;
        v35 = v143;
        goto LABEL_16;
      }

      v52 += v49;
      v54 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v55 = *v47;
      v36 = v144;
      (*v47)(v24, v144);
      if (v54)
      {
        goto LABEL_15;
      }
    }

    v60 = *v136;
    (*v136)(v126, v146, v36);
    v61 = v137;
    v62 = swift_isUniquelyReferenced_nonNull_native();
    v63 = v61;
    v148 = v61;
    if ((v62 & 1) == 0)
    {
      sub_1001670D4(0, *(v61 + 2) + 1, 1);
      v63 = v148;
    }

    v65 = *(v63 + 2);
    v64 = *(v63 + 3);
    v35 = v143;
    if (v65 >= v64 >> 1)
    {
      sub_1001670D4((v64 > 1), v65 + 1, 1);
      v35 = v143;
      v63 = v148;
    }

    *(v63 + 2) = v65 + 1;
    v137 = v63;
    v60(&v140[v63 + v65 * v49], v126, v36);
    v20 = v142;
LABEL_16:
    v46 = v141;
    if (v141 == v138)
    {
      goto LABEL_30;
    }
  }

LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
}

void sub_1004AD4AC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_10000905C(0, &qword_1006B4980, NSObject_ptr);
    v7 = *&v6[OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_notifyWhenLeftBehindSwitch];
    v8 = static NSObject.== infix(_:_:)();

    if (v8)
    {
      v9 = [objc_opt_self() standardUserDefaults];
      v10 = String._bridgeToObjectiveC()();
      v11 = [v9 BOOLForKey:v10];

      if (v11)
      {
        if (qword_1006AEBE0 != -1)
        {
          swift_once();
        }

        v12 = type metadata accessor for Logger();
        sub_100005B14(v12, qword_1006D4630);
        v13 = Logger.logObject.getter();
        v14 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v13, v14))
        {
          v15 = swift_slowAlloc();
          *v15 = 0;
          _os_log_impl(&_mh_execute_header, v13, v14, "FMItemNotificationsView:  User toggled notify when left behind switch", v15, 2u);
        }

        v16 = &v6[OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_delegate];
        if (swift_unknownObjectWeakLoadStrong())
        {
          v17 = *(v16 + 1);
          ObjectType = swift_getObjectType();
          (*(v17 + 8))(v6, a4 & 1, ObjectType, v17);

          swift_unknownObjectRelease();
          return;
        }
      }

      else
      {
        sub_1004AEF64();
      }
    }
  }
}

void sub_1004AD6DC(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_notifyWhenLeftBehindSwitch);
    *(v5 + OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_isOn) = (a3 & 1) == 0;
    v6 = Strong;
    [*(v5 + OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_settingSwitch) setOn:?];
  }
}

void sub_1004AD79C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMIPSeparationEvent();
  v37 = *(v4 - 8);
  __chkstk_darwin(v4);
  v36 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FMIPSafeLocationType();
  v40 = *(v6 - 8);
  __chkstk_darwin(v6);
  v39 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v38 = &v33 - v9;
  v10 = type metadata accessor for FMIPSafeLocation();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_assignedSafeLocations;
  swift_beginAccess();
  v15 = *(a1 + v14);

  v16 = sub_1004A8014(a2, v15, &type metadata accessor for FMIPSafeLocation, &qword_1006B7AB0, &type metadata accessor for FMIPSafeLocation, &protocol conformance descriptor for FMIPSafeLocation);

  if (v16)
  {
    v17 = *(v11 + 16);
    v35 = a2;
    v17(v13, a2, v10);
    v18 = OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_suggestedSafeLocations;
    swift_beginAccess();
    v19 = *(a1 + v18);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + v18) = v19;
    v34 = v4;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v19 = sub_10008BAF0(0, v19[2] + 1, 1, v19);
      *(a1 + v18) = v19;
    }

    v22 = v19[2];
    v21 = v19[3];
    if (v22 >= v21 >> 1)
    {
      v19 = sub_10008BAF0((v21 > 1), v22 + 1, 1, v19);
    }

    v19[2] = v22 + 1;
    (*(v11 + 32))(v19 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v22, v13, v10);
    *(a1 + v18) = v19;
    v23 = swift_endAccess();
    __chkstk_darwin(v23);
    *(&v33 - 2) = v35;
    swift_beginAccess();
    v24 = sub_1004AF610(sub_1004B07BC, (&v33 - 4));
    v25 = *(*(a1 + v14) + 16);
    if (v25 < v24)
    {
      __break(1u);
    }

    else
    {
      sub_1003D02F8(v24, v25);
      swift_endAccess();
      v26 = v38;
      FMIPSafeLocation.type.getter();
      v28 = v39;
      v27 = v40;
      (*(v40 + 104))(v39, enum case for FMIPSafeLocationType.home(_:), v6);
      sub_10000A6F0(&qword_1006B1320, &type metadata accessor for FMIPSafeLocationType, &protocol conformance descriptor for FMIPSafeLocationType);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v29 = *(v27 + 8);
      v29(v28, v6);
      v29(v26, v6);
      if (v42 == v41)
      {
        v30 = v36;
        FMIPSeparationEvent.init(itemOrDeviceCount:addSafeLocationTapped:addToAllTapped:homeRemoved:)();

        FMIPManager.enqueue(separationEvent:)();
        (*(v37 + 8))(v30, v34);
      }

      sub_10032FEF4(v31);

      sub_1004E9200(v32);
    }
  }
}

uint64_t sub_1004ADD04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v10 = *(v19 - 8);
  __chkstk_darwin(v19);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000905C(0, &qword_1006AEDC0, OS_dispatch_queue_ptr);
  v13 = static OS_dispatch_queue.main.getter();
  v14 = swift_allocObject();
  v14[2] = v3;
  v14[3] = a1;
  v14[4] = a2;
  aBlock[4] = sub_1004B0350;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_100641BE0;
  v15 = _Block_copy(aBlock);
  v16 = v3;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000A6F0(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640, &unk_100552B10);
  sub_100037970();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v7 + 8))(v9, v6);
  return (*(v10 + 8))(v12, v19);
}

double sub_1004ADFDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10007EBC0(&unk_1006BB1B0, qword_10055C5C0);
  __chkstk_darwin(v6 - 8);
  v8 = &v25 - v7;
  v9 = type metadata accessor for FMIPSafeLocation();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v26 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v25 - v13;
  v15 = OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_suggestedSafeLocations;
  swift_beginAccess();

  v16 = sub_1004B035C((a1 + v15), a2, a3);

  v17 = *(*(a1 + v15) + 16);
  if (v17 < v16)
  {
    __break(1u);
LABEL_10:
    v16 = sub_10008BAF0(0, *(v16 + 2) + 1, 1, v16);
    *&v8[a1] = v16;
    goto LABEL_5;
  }

  sub_1003D02F8(v16, v17);
  swift_endAccess();

  sub_1000E65EC(a2, a3, v8);

  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_100012DF0(v8, &unk_1006BB1B0, qword_10055C5C0);
    goto LABEL_8;
  }

  v18 = *(v10 + 32);
  v18(v14, v8, v9);
  (*(v10 + 16))(v26, v14, v9);
  v8 = OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_assignedSafeLocations;
  swift_beginAccess();
  v16 = *&v8[a1];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v8[a1] = v16;
  v25 = v18;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  v21 = *(v16 + 2);
  v20 = *(v16 + 3);
  if (v21 >= v20 >> 1)
  {
    v16 = sub_10008BAF0((v20 > 1), v21 + 1, 1, v16);
  }

  *(v16 + 2) = v21 + 1;
  v25(&v16[((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v21], v26, v9);
  *&v8[a1] = v16;
  swift_endAccess();
  (*(v10 + 8))(v14, v9);
LABEL_8:
  swift_beginAccess();

  sub_10032FEF4(v22);

  sub_1004E9200(v23);

  return result;
}

uint64_t sub_1004AE3A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a3;
  v25 = a4;
  v22[1] = a2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v26 = *(v8 - 8);
  v27 = v8;
  __chkstk_darwin(v8);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FMIPSafeLocation();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000905C(0, &qword_1006AEDC0, OS_dispatch_queue_ptr);
  v15 = static OS_dispatch_queue.main.getter();
  (*(v12 + 16))(v14, a1, v11);
  v16 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v17 = swift_allocObject();
  v18 = v23;
  *(v17 + 16) = v23;
  (*(v12 + 32))(v17 + v16, v14, v11);
  aBlock[4] = v24;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = v25;
  v19 = _Block_copy(aBlock);
  v20 = v18;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000A6F0(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640, &unk_100552B10);
  sub_100037970();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);

  (*(v28 + 8))(v7, v5);
  return (*(v26 + 8))(v10, v27);
}

double sub_1004AE720(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMIPSafeLocation();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_assignedSafeLocations;
  swift_beginAccess();
  v9 = *(a1 + v8);

  v10 = sub_1004A8014(a2, v9, &type metadata accessor for FMIPSafeLocation, &qword_1006B7AB0, &type metadata accessor for FMIPSafeLocation, &protocol conformance descriptor for FMIPSafeLocation);

  if (!v10)
  {
    (*(v5 + 16))(v7, a2, v4);
    swift_beginAccess();
    v12 = *(a1 + v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + v8) = v12;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = sub_10008BAF0(0, v12[2] + 1, 1, v12);
      *(a1 + v8) = v12;
    }

    v15 = v12[2];
    v14 = v12[3];
    if (v15 >= v14 >> 1)
    {
      v12 = sub_10008BAF0((v14 > 1), v15 + 1, 1, v12);
    }

    v12[2] = v15 + 1;
    (*(v5 + 32))(v12 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v15, v7, v4);
    *(a1 + v8) = v12;
    swift_endAccess();

    sub_10032FEF4(v16);
  }

  return result;
}

double sub_1004AE988(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMIPSafeLocation();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = a2;
  v8 = OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_assignedSafeLocations;
  swift_beginAccess();
  v9 = 0;
  v10 = sub_1004AF610(sub_1004B0318, v17);
  v11 = *(*(a1 + v8) + 16);
  if (v11 < v10)
  {
    __break(1u);
  }

  else
  {
    sub_1003D02F8(v10, v11);
    (*(v5 + 16))(v7, a2, v4);
    v9 = *(a1 + v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + v8) = v9;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_3;
    }
  }

  v9 = sub_10008BAF0(0, v9[2] + 1, 1, v9);
  *(a1 + v8) = v9;
LABEL_3:
  v14 = v9[2];
  v13 = v9[3];
  if (v14 >= v13 >> 1)
  {
    v9 = sub_10008BAF0((v13 > 1), v14 + 1, 1, v9);
  }

  v9[2] = v14 + 1;
  (*(v5 + 32))(v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v14, v7, v4);
  *(a1 + v8) = v9;
  swift_endAccess();

  sub_10032FEF4(v15);

  return result;
}

void sub_1004AEBB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMIPSafeLocation();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_assignedSafeLocations;
  swift_beginAccess();
  v9 = *(a1 + v8);

  v10 = sub_1004A8014(a2, v9, &type metadata accessor for FMIPSafeLocation, &qword_1006B7AB0, &type metadata accessor for FMIPSafeLocation, &protocol conformance descriptor for FMIPSafeLocation);

  if (!v10)
  {
    (*(v5 + 16))(v7, a2, v4);
    swift_beginAccess();
    v11 = *(a1 + v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + v8) = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = sub_10008BAF0(0, v11[2] + 1, 1, v11);
      *(a1 + v8) = v11;
    }

    v14 = v11[2];
    v13 = v11[3];
    if (v14 >= v13 >> 1)
    {
      v11 = sub_10008BAF0((v13 > 1), v14 + 1, 1, v11);
    }

    v11[2] = v14 + 1;
    (*(v5 + 32))(v11 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v14, v7, v4);
    *(a1 + v8) = v11;
    v15 = swift_endAccess();
    __chkstk_darwin(v15);
    *&v21[-16] = a2;
    v16 = OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_suggestedSafeLocations;
    swift_beginAccess();
    v17 = sub_1004AF610(sub_1004B07BC, &v21[-32]);
    v18 = *(*(a1 + v16) + 16);
    if (v18 < v17)
    {
      __break(1u);
    }

    else
    {
      sub_1003D02F8(v17, v18);
      swift_endAccess();

      sub_10032FEF4(v19);

      sub_1004E9200(v20);
    }
  }
}

uint64_t sub_1004AEEB4(uint64_t a1)
{
  v1 = FMIPSafeLocation.identifier.getter();
  v3 = v2;
  if (v1 == FMIPSafeLocation.identifier.getter() && v3 == v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

void sub_1004AEF64()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC6FindMy24FMMediatedViewController_mediator];
  v3 = type metadata accessor for FMSeparationWelcomeScreenViewController();
  v4 = objc_allocWithZone(v3);
  v5 = swift_retain_n();
  v6 = sub_1004DEC88(v5, 0);
  v7 = objc_allocWithZone(v3);
  v8 = sub_1004DEC88(v2, 1);
  *&v8[OBJC_IVAR____TtC6FindMy39FMSeparationWelcomeScreenViewController_delegate + 8] = &off_100641A28;
  swift_unknownObjectWeakAssign();
  sub_10007EBC0(&qword_1006AFC30, &unk_1005523E0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100552EE0;
  *(v9 + 32) = v6;
  *(v9 + 40) = v8;
  v10 = objc_allocWithZone(type metadata accessor for FMPageViewController());
  v11 = v6;
  v12 = v8;
  v13 = sub_100141E10(v2, v9);
  v14 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v13];
  [v1 presentViewController:v14 animated:1 completion:0];
  v15 = [objc_opt_self() standardUserDefaults];
  v16 = String._bridgeToObjectiveC()();
  [v15 setBool:1 forKey:v16];
}

double sub_1004AF148()
{
  v1 = v0;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100005B14(v2, qword_1006D4630);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "FMItemNotificationsView:  User toggled notify when left behind switch", v5, 2u);
  }

  v6 = v1 + OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = *(v6 + 8);
    ObjectType = swift_getObjectType();
    (*(v8 + 8))(v1, 1, ObjectType, v8);

    swift_unknownObjectRelease();
  }

  return result;
}

double sub_1004AF290()
{
  sub_10005CD20(v0 + OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_delegate);

  return result;
}

id sub_1004AF394(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for FMTrustedLocationDetailViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

double sub_1004AF4FC(void *a1, char a2)
{
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = a1;
  *(v5 + 32) = a2;
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = a2;
  v8 = a1;
  sub_1000C5474(sub_1004AF9B4, v5, sub_1004AF9C0, v7);

  return result;
}

uint64_t sub_1004AF610(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v5 = type metadata accessor for FMIPSafeLocation();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v39 - v10;
  __chkstk_darwin(v12);
  v14 = &v39 - v13;
  v15 = *v2;
  v16 = v53;
  result = sub_1004B2280(a1, a2, *v2);
  if (!v16)
  {
    v49 = v14;
    v53 = 0;
    if (v18)
    {
      return *(v15 + 16);
    }

    v19 = v5;
    v41 = v8;
    v42 = v11;
    v46 = a1;
    v40 = v2;
    v51 = result;
    v20 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v21 = v15;
      v23 = (v15 + 16);
      v22 = *(v15 + 16);
      v24 = v49;
      if (v20 == v22)
      {
        return v51;
      }

      v25 = v19;
      v48 = v6 + 16;
      v44 = v6;
      v45 = (v6 + 8);
      v39 = (v6 + 40);
      v43 = a2;
      while (v20 < v22)
      {
        v26 = *(v6 + 80);
        v52 = v21;
        v47 = (v26 + 32) & ~v26;
        v27 = v21 + v47;
        v28 = *(v6 + 72);
        v29 = *(v6 + 16);
        v50 = v28 * v20;
        v29(v24, &v27[v28 * v20], v25);
        v30 = v53;
        v31 = v46(v24);
        v53 = v30;
        if (v30)
        {
          return (*v45)(v24, v25);
        }

        v32 = v31;
        result = (*v45)(v24, v25);
        if (v32)
        {
          v6 = v44;
          v24 = v49;
          v21 = v52;
        }

        else
        {
          v33 = v51;
          if (v20 == v51)
          {
            v6 = v44;
            v24 = v49;
            v21 = v52;
          }

          else
          {
            if ((v51 & 0x8000000000000000) != 0)
            {
              goto LABEL_26;
            }

            v34 = *v23;
            if (v51 >= v34)
            {
              goto LABEL_27;
            }

            v35 = v28 * v51;
            result = (v29)(v42, &v27[v35], v25);
            if (v20 >= v34)
            {
              goto LABEL_28;
            }

            v36 = v41;
            v29(v41, &v27[v50], v25);
            v21 = v52;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v21 = sub_1000BF59C(v21);
            }

            v37 = v21 + v47;
            v38 = *v39;
            result = (*v39)(v21 + v47 + v35, v36, v25);
            v6 = v44;
            if (v20 >= v21[2])
            {
              goto LABEL_29;
            }

            result = v38(&v37[v50], v42, v25);
            *v40 = v21;
            v33 = v51;
            v24 = v49;
          }

          v51 = v33 + 1;
        }

        ++v20;
        v23 = v21 + 2;
        v22 = v21[2];
        if (v20 == v22)
        {
          return v51;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1004AF9E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(type metadata accessor for FMIPSafeLocation() - 8);
  v9 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (FMIPSafeLocation.identifier.getter() != a2 || v11 != a3)
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v12)
    {
      return v7;
    }

    ++v7;
    v9 += v10;
    if (v3 == v7)
    {
      return 0;
    }
  }

  return v7;
}

void sub_1004AFB10()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_scrollView;
  *(v1 + v2) = [objc_allocWithZone(UIScrollView) init];
  v3 = OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_contentStackView;
  *(v1 + v3) = [objc_allocWithZone(UIStackView) init];
  *(v1 + OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_notifyWhenLeftBehindImageView;
  sub_10000905C(0, &qword_1006BC2B0, UIImage_ptr);
  v9 = sub_1003DE3DC(0xD00000000000001ALL, 0x8000000100586BE0, 6778480, 0xE300000000000000, v5, v6, v7, v8, v17);
  v10 = [objc_allocWithZone(UIImageView) initWithImage:v9];

  *(v1 + v4) = v10;
  v11 = OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_notifyWhenLeftBehindDescription;
  *(v1 + v11) = [objc_allocWithZone(UILabel) init];
  v12 = OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_trustedLocationsDescription;
  *(v1 + v12) = [objc_allocWithZone(UILabel) init];
  v13 = OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_notifyWhenLeftBehindSwitchSection;
  *(v1 + v13) = [objc_allocWithZone(type metadata accessor for FMSectionPlatterGroupView()) init];
  v14 = OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_notifyWhenLeftBehindSwitch;
  *(v1 + v14) = [objc_allocWithZone(type metadata accessor for FMSettingSwitchView()) init];
  v15 = OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_nonMeDescriptionPadView;
  *(v1 + v15) = [objc_allocWithZone(UIView) init];
  *(v1 + OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_assignedSafeLocations) = _swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_suggestedSafeLocations) = _swiftEmptyArrayStorage;
  v16 = (v1 + OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_beaconUUID);
  *v16 = 0;
  v16[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1004AFD20()
{
  v1 = OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_scrollView;
  [*&v0[OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_scrollView] setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_contentStackView;
  [*&v0[OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_contentStackView] setTranslatesAutoresizingMaskIntoConstraints:0];
  [*&v0[OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_notifyWhenLeftBehindImageView] setTranslatesAutoresizingMaskIntoConstraints:0];
  [*&v0[OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_notifyWhenLeftBehindDescription] setTranslatesAutoresizingMaskIntoConstraints:0];
  [*&v0[OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_notifyWhenLeftBehindSwitchSection] setTranslatesAutoresizingMaskIntoConstraints:0];
  [*&v0[OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_trustedLocationsSection] setTranslatesAutoresizingMaskIntoConstraints:0];
  [*&v0[OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_suggestionsSection] setTranslatesAutoresizingMaskIntoConstraints:0];
  [*&v0[OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_trustedLocationsDescription] setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = [v0 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v3;
  v5 = [v3 bottomAnchor];

  sub_10007EBC0(&qword_1006AFC30, &unk_1005523E0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1005521F0;
  v7 = *&v0[v1];
  v44 = v5;
  v8 = [v7 leadingAnchor];
  v9 = [v0 view];
  if (!v9)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v10 = v9;
  v11 = [v9 leadingAnchor];

  v12 = [v8 constraintEqualToAnchor:v11];
  *(v6 + 32) = v12;
  v13 = [*&v0[v1] trailingAnchor];
  v14 = [v0 view];
  if (!v14)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v15 = v14;
  v16 = [v14 trailingAnchor];

  v17 = [v13 constraintEqualToAnchor:v16];
  *(v6 + 40) = v17;
  v18 = [*&v0[v1] topAnchor];
  v19 = [v0 view];
  if (!v19)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v20 = v19;
  v43 = objc_opt_self();
  v21 = [v20 safeAreaLayoutGuide];

  v22 = [v21 topAnchor];
  v23 = [v18 constraintEqualToAnchor:v22];

  *(v6 + 48) = v23;
  v24 = [*&v0[v1] bottomAnchor];
  v25 = [v24 constraintEqualToAnchor:v44 constant:0.0];

  *(v6 + 56) = v25;
  sub_10000905C(0, &qword_1006B3A70, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v43 activateConstraints:isa];

  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1005521F0;
  v28 = [*&v0[v2] topAnchor];
  v29 = [*&v0[v1] topAnchor];
  v30 = [v28 constraintEqualToAnchor:v29];

  *(v27 + 32) = v30;
  v31 = [*&v0[v2] bottomAnchor];
  v32 = [*&v0[v1] bottomAnchor];
  v33 = [v31 constraintEqualToAnchor:v32];

  *(v27 + 40) = v33;
  v34 = [*&v0[v2] leadingAnchor];
  v35 = [*&v0[v1] layoutMarginsGuide];
  v36 = [v35 leadingAnchor];

  v37 = [v34 constraintEqualToAnchor:v36];
  *(v27 + 48) = v37;
  v38 = [*&v0[v2] trailingAnchor];
  v39 = [*&v0[v1] layoutMarginsGuide];
  v40 = [v39 trailingAnchor];

  v41 = [v38 constraintEqualToAnchor:v40];
  *(v27 + 56) = v41;
  v42 = Array._bridgeToObjectiveC()().super.isa;

  [v43 activateConstraints:v42];
}

uint64_t sub_1004B035C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FMIPSafeLocation();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v40 - v11;
  __chkstk_darwin(v13);
  v15 = &v40 - v14;
  v16 = *a1;
  v17 = v54;
  result = sub_1004AF9E4(*a1, a2, a3);
  if (v17)
  {
    return result;
  }

  v53 = v15;
  v50 = a2;
  v44 = 0;
  if (v19)
  {
    return v16[2];
  }

  v45 = v12;
  v46 = result;
  v42 = a1;
  v43 = v9;
  v20 = result + 1;
  if (__OFADD__(result, 1))
  {
    goto LABEL_32;
  }

  v22 = v16 + 2;
  v21 = v16[2];
  v23 = v53;
  if (v20 == v21)
  {
    return v46;
  }

  v51 = v7 + 16;
  v47 = v7;
  v48 = (v7 + 8);
  v41 = (v7 + 40);
  while (v20 < v21)
  {
    v24 = *(v7 + 80);
    v54 = v16;
    v49 = (v24 + 32) & ~v24;
    v25 = v16 + v49;
    v26 = *(v7 + 72);
    v27 = *(v7 + 16);
    v52 = v26 * v20;
    v27(v23, &v25[v26 * v20], v6);
    if (FMIPSafeLocation.identifier.getter() == v50 && v28 == a3)
    {

      v23 = v53;
      result = (*v48)(v53, v6);
      v7 = v47;
LABEL_10:
      v16 = v54;
      goto LABEL_11;
    }

    v29 = a3;
    v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

    result = (*v48)(v53, v6);
    if (v30)
    {
      a3 = v29;
      v7 = v47;
      v23 = v53;
      goto LABEL_10;
    }

    v31 = v46;
    if (v20 == v46)
    {
      a3 = v29;
      v7 = v47;
      v16 = v54;
    }

    else
    {
      if ((v46 & 0x8000000000000000) != 0)
      {
        goto LABEL_28;
      }

      v32 = *v22;
      if (v46 >= v32)
      {
        goto LABEL_29;
      }

      a3 = v29;
      v33 = v26 * v46;
      result = (v27)(v45, &v25[v33], v6);
      if (v20 >= v32)
      {
        goto LABEL_30;
      }

      v34 = &v25[v52];
      v35 = v43;
      v27(v43, v34, v6);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v54 = sub_1000BF59C(v54);
      }

      v36 = v45;
      v37 = v54 + v49;
      v38 = *v41;
      v39 = v54 + v49 + v33;
      v16 = v54;
      result = (*v41)(v39, v35, v6);
      if (v20 >= v16[2])
      {
        goto LABEL_31;
      }

      result = v38(&v37[v52], v36, v6);
      *v42 = v16;
      v31 = v46;
      v7 = v47;
    }

    v46 = v31 + 1;
    v23 = v53;
LABEL_11:
    ++v20;
    v22 = v16 + 2;
    v21 = v16[2];
    if (v20 == v21)
    {
      return v46;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1004B0730(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for FMIPSafeLocation() - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

void sub_1004B08A8()
{
  [v0 setDismissalType:3];
  v1 = objc_opt_self();
  v2 = [v1 mainBundle];
  v28._object = 0x80000001005797A0;
  v3._countAndFlagsBits = 0xD00000000000001FLL;
  v3._object = 0x800000010059BD80;
  v4.value._object = 0x8000000100579780;
  v28._countAndFlagsBits = 0xD000000000000015;
  v4.value._countAndFlagsBits = 0xD000000000000010;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, v4, v2, v5, v28);

  v6 = String._bridgeToObjectiveC()();

  [v0 setTitle:v6];

  v7 = [v1 mainBundle];
  v29._object = 0x80000001005797A0;
  v8._countAndFlagsBits = 0xD000000000000022;
  v8._object = 0x800000010059BDA0;
  v9.value._object = 0x8000000100579780;
  v29._countAndFlagsBits = 0xD000000000000015;
  v9.value._countAndFlagsBits = 0xD000000000000010;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v8, v9, v7, v10, v29);

  v11 = String._bridgeToObjectiveC()();

  [v0 setSubtitle:v11];

  v12 = [objc_opt_self() configurationWithPointSize:80.0];
  v13 = *&v0[OBJC_IVAR____TtC6FindMy30FMAccessoryDiscoveryAttachCard_imageView];
  v14 = v12;
  v15 = String._bridgeToObjectiveC()();
  v16 = [objc_opt_self() systemImageNamed:v15 withConfiguration:v14];

  [v13 setImage:v16];
  [v13 setContentMode:4];
  v17 = [v1 mainBundle];
  v30._object = 0x80000001005797A0;
  v18._countAndFlagsBits = 0xD000000000000020;
  v18._object = 0x800000010059BDD0;
  v19.value._object = 0x8000000100579780;
  v30._countAndFlagsBits = 0xD000000000000015;
  v19.value._countAndFlagsBits = 0xD000000000000010;
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v18, v19, v17, v20, v30);

  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v22 = String._bridgeToObjectiveC()();

  aBlock[4] = sub_1004B11B0;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100017328;
  aBlock[3] = &unk_100641CD0;
  v23 = _Block_copy(aBlock);
  v24 = objc_opt_self();

  v25 = [v24 actionWithTitle:v22 style:0 handler:v23];

  _Block_release(v23);

  v26 = [v0 addAction:v25];
}

void sub_1004B0CAC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = swift_allocObject();
    *(v4 + 16) = 0;
    *(v4 + 24) = 0;
    aBlock[4] = sub_1000822F4;
    aBlock[5] = v4;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100004AE4;
    aBlock[3] = &unk_100641D20;
    v5 = _Block_copy(aBlock);

    [v3 dismissViewControllerAnimated:1 completion:v5];
    _Block_release(v5);
  }
}

void sub_1004B0DA0()
{
  v1 = v0;
  v24 = objc_opt_self();
  sub_10007EBC0(&qword_1006AFC30, &unk_1005523E0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1005521F0;
  v3 = *&v1[OBJC_IVAR____TtC6FindMy30FMAccessoryDiscoveryAttachCard_imageView];
  v4 = [v3 centerXAnchor];
  v5 = [v1 contentView];
  v6 = [v5 mainContentGuide];

  v7 = [v6 centerXAnchor];
  v8 = [v4 constraintEqualToAnchor:v7];

  *(v2 + 32) = v8;
  v9 = [v3 topAnchor];
  v10 = [v1 contentView];
  v11 = [v10 mainContentGuide];

  v12 = [v11 topAnchor];
  v13 = [v9 constraintGreaterThanOrEqualToAnchor:v12];

  *(v2 + 40) = v13;
  v14 = [v3 bottomAnchor];
  v15 = [v1 contentView];
  v16 = [v15 mainContentGuide];

  v17 = [v16 bottomAnchor];
  v18 = [v14 constraintLessThanOrEqualToAnchor:v17];

  *(v2 + 48) = v18;
  v19 = [v3 centerYAnchor];
  v20 = [v1 contentView];
  v21 = [v20 mainContentGuide];

  v22 = [v21 centerYAnchor];
  v23 = [v19 constraintEqualToAnchor:v22];

  *(v2 + 56) = v23;
  sub_10002B27C();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v24 activateConstraints:isa];
}

id sub_1004B10FC(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for FMAccessoryDiscoveryAttachCard();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_1004B11C0()
{
  if (!*(v0 + OBJC_IVAR____TtC6FindMy25FMLocationLabelHeaderView_displayAddress + 24))
  {
    v9 = *(v0 + OBJC_IVAR____TtC6FindMy25FMLocationLabelHeaderView_locationLabel);
    v10 = String._bridgeToObjectiveC()();
    [v9 setText:v10];

    v11 = [objc_opt_self() secondaryLabelColor];
    [v9 setTextColor:v11];

    *(v9 + OBJC_IVAR____TtC6FindMy15FMCopyableLabel_isCopyToPasteboardEnabled) = 0;
    result = *(v0 + OBJC_IVAR____TtC6FindMy25FMLocationLabelHeaderView_locationLabelBottomConstraint);
    if (!result)
    {
      return result;
    }

    v8 = 0.0;
    goto LABEL_8;
  }

  v1 = *(v0 + OBJC_IVAR____TtC6FindMy25FMLocationLabelHeaderView_displayAddress + 32);
  v2 = *(v0 + OBJC_IVAR____TtC6FindMy25FMLocationLabelHeaderView_locationLabel);

  v3 = String._bridgeToObjectiveC()();

  [v2 setText:v3];

  v4 = objc_opt_self();
  v5 = &selRef_secondaryLabelColor;
  if (((v1 | ((v1 & 0x100) >> 8)) & 1) == 0)
  {
    v5 = &selRef_redColor;
  }

  v6 = [v4 *v5];
  [v2 setTextColor:v6];

  *(v2 + OBJC_IVAR____TtC6FindMy15FMCopyableLabel_isCopyToPasteboardEnabled) = v1 & 1;
  result = *(v0 + OBJC_IVAR____TtC6FindMy25FMLocationLabelHeaderView_locationLabelBottomConstraint);
  if (result)
  {
    v8 = -26.0;
LABEL_8:

    return [result setConstant:v8];
  }

  return result;
}

id sub_1004B1390(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v6 = type metadata accessor for UIListContentConfiguration();
  __chkstk_darwin(v6 - 8);
  v7 = OBJC_IVAR____TtC6FindMy25FMLocationLabelHeaderView_locationLabel;
  type metadata accessor for FMCopyableLabel();
  *&v2[v7] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v2[OBJC_IVAR____TtC6FindMy25FMLocationLabelHeaderView_locationLabelBottomConstraint] = 0;
  v8 = OBJC_IVAR____TtC6FindMy25FMLocationLabelHeaderView_contentViewWrapper;
  sub_10000905C(0, &unk_1006C1FE0, UIListContentView_ptr);
  static UIListContentConfiguration.header()();
  *&v2[v8] = UIListContentView.init(configuration:)();
  v9 = &v2[OBJC_IVAR____TtC6FindMy25FMLocationLabelHeaderView_displayAddress];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 16) = 0;
  v10 = &v2[OBJC_IVAR____TtC6FindMy25FMLocationLabelHeaderView_headerTitle];
  *v10 = 0;
  *(v10 + 1) = 0;
  if (a2)
  {
    v11 = String._bridgeToObjectiveC()();
  }

  else
  {
    v11 = 0;
  }

  v15.receiver = v3;
  v15.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v15, "initWithReuseIdentifier:", v11);

  v13 = v12;
  sub_1004B151C();
  sub_1004B16BC();

  return v13;
}

void sub_1004B151C()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC6FindMy25FMLocationLabelHeaderView_locationLabel];
  [v2 setNumberOfLines:0];
  v3 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleHeadline];
  sub_10007EBC0(&qword_1006BA720, &unk_1005565C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100552220;
  *(inited + 32) = UIFontWeightTrait;
  *(inited + 40) = UIFontWeightRegular;
  v5 = UIFontWeightTrait;
  v6 = sub_10002AB84(inited);
  swift_setDeallocating();
  sub_10002AC74(inited + 32);
  v7 = sub_10002ACDC(v6);

  [v2 setFont:v7];

  v8 = [v1 contentView];
  [v8 addSubview:v2];

  v9 = *&v1[OBJC_IVAR____TtC6FindMy25FMLocationLabelHeaderView_contentViewWrapper];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  v10 = [v1 contentView];
  [v10 addSubview:v9];
}

void sub_1004B16BC()
{
  v1 = *&v0[OBJC_IVAR____TtC6FindMy25FMLocationLabelHeaderView_locationLabel];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = [v1 bottomAnchor];
  v3 = *&v0[OBJC_IVAR____TtC6FindMy25FMLocationLabelHeaderView_contentViewWrapper];
  v4 = [v3 layoutMarginsGuide];
  v5 = [v4 topAnchor];

  v6 = [v2 constraintEqualToAnchor:v5 constant:-26.0];
  v7 = *&v0[OBJC_IVAR____TtC6FindMy25FMLocationLabelHeaderView_locationLabelBottomConstraint];
  *&v0[OBJC_IVAR____TtC6FindMy25FMLocationLabelHeaderView_locationLabelBottomConstraint] = v6;
  v8 = v6;

  v35 = objc_opt_self();
  sub_10007EBC0(&qword_1006AFC30, &unk_1005523E0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100555120;
  v10 = [v1 topAnchor];
  v11 = [v0 contentView];
  v12 = [v11 topAnchor];

  v13 = [v10 constraintEqualToAnchor:v12 constant:19.0];
  *(v9 + 32) = v13;
  v14 = [v1 leadingAnchor];
  v15 = [v3 layoutMarginsGuide];
  v16 = [v15 leadingAnchor];

  v17 = [v14 constraintEqualToAnchor:v16];
  *(v9 + 40) = v17;
  v18 = [v1 trailingAnchor];
  v19 = [v3 layoutMarginsGuide];
  v20 = [v19 trailingAnchor];

  v21 = [v18 constraintEqualToAnchor:v20];
  *(v9 + 48) = v21;
  *(v9 + 56) = v8;
  v22 = v8;
  v23 = [v3 bottomAnchor];
  v24 = [v0 contentView];
  v25 = [v24 bottomAnchor];

  v26 = [v23 constraintEqualToAnchor:v25];
  *(v9 + 64) = v26;
  v27 = [v3 leadingAnchor];
  v28 = [v0 contentView];
  v29 = [v28 leadingAnchor];

  v30 = [v27 constraintEqualToAnchor:v29];
  *(v9 + 72) = v30;
  v31 = [v3 trailingAnchor];
  v32 = [v0 contentView];
  v33 = [v32 trailingAnchor];

  v34 = [v31 constraintEqualToAnchor:v33];
  *(v9 + 80) = v34;
  sub_10000905C(0, &qword_1006B3A70, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v35 activateConstraints:isa];
}

void sub_1004B1C4C()
{
  v1 = type metadata accessor for UIListContentConfiguration();
  __chkstk_darwin(v1 - 8);
  v2 = OBJC_IVAR____TtC6FindMy25FMLocationLabelHeaderView_locationLabel;
  type metadata accessor for FMCopyableLabel();
  *(v0 + v2) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR____TtC6FindMy25FMLocationLabelHeaderView_locationLabelBottomConstraint) = 0;
  v3 = OBJC_IVAR____TtC6FindMy25FMLocationLabelHeaderView_contentViewWrapper;
  sub_10000905C(0, &unk_1006C1FE0, UIListContentView_ptr);
  static UIListContentConfiguration.header()();
  *(v0 + v3) = UIListContentView.init(configuration:)();
  v4 = v0 + OBJC_IVAR____TtC6FindMy25FMLocationLabelHeaderView_displayAddress;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;
  v5 = (v0 + OBJC_IVAR____TtC6FindMy25FMLocationLabelHeaderView_headerTitle);
  *v5 = 0;
  v5[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t (*sub_1004B1D94(uint64_t **a1, uint64_t a2))()
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_1004CFD48(v4, a2);
  return sub_1004B1E0C;
}

uint64_t (*sub_1004B1E10(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_1004CFDF0(v6, a2, a3);
  return sub_1004D2048;
}

uint64_t (*sub_1004B1E98(uint64_t **a1, uint64_t a2))()
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_1004CFE9C(v4, a2);
  return sub_1004D2048;
}

uint64_t (*sub_1004B1F10(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_1004CFF40(v6, a2, a3);
  return sub_1004D2048;
}

void sub_1004B1F98(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_1004B1FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a3;
  v22 = a4;
  v20 = a2;
  v5 = sub_10007EBC0(&unk_1006C2430, &unk_1005642D0);
  v6 = v5 - 8;
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v19 - v10;
  v12 = type metadata accessor for Date();
  v13 = *(*(v12 - 8) + 16);
  v13(v11, a1, v12);
  v14 = *(v6 + 56);
  v15 = type metadata accessor for UUID();
  v16 = *(*(v15 - 8) + 16);
  v19 = v14;
  v16(&v11[v14], v20, v15);
  v13(v8, v21, v12);
  v16(&v8[*(v6 + 56)], v22, v15);
  sub_10000A738(&qword_1006C1DC0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    sub_10000A738(&qword_1006C3960, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  }

  else
  {
    sub_10000A738(&unk_1006C2440, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  }

  v17 = dispatch thunk of static Comparable.< infix(_:_:)();
  sub_100012DF0(v8, &unk_1006C2430, &unk_1005642D0);
  sub_100012DF0(v11, &unk_1006C2430, &unk_1005642D0);
  return v17 & 1;
}

uint64_t sub_1004B2280(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(type metadata accessor for FMIPSafeLocation() - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    v11 = a1(v9);
    if (v3 || (v11 & 1) != 0)
    {
      break;
    }

    ++v7;
    v9 += v10;
    if (v4 == v7)
    {
      return 0;
    }
  }

  return v7;
}

void sub_1004B236C(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v5 = a3 & 0xFFFFFFFFFFFFFF8;
  if (a3 >> 62)
  {
LABEL_19:
    v6 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (v6 != v7)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v8 = *(a3 + 8 * v7 + 32);
    }

    v9 = v8;
    v13 = v8;
    v10 = a1(&v13);

    if (v3 || (v10 & 1) != 0)
    {
      return;
    }

    if (__OFADD__(v7++, 1))
    {
      goto LABEL_18;
    }
  }
}

void sub_1004B2480(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v103 = a1;
  v5 = type metadata accessor for FMIPDevice();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FMSelectedSection(0);
  __chkstk_darwin(v9);
  v104 = &v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v100 - v12;
  __chkstk_darwin(v14);
  v16 = &v100 - v15;
  v107 = 0;
  v108 = 0xE000000000000000;
  v105 = v17;
  v106 = a2;
  _print_unlocked<A, B>(_:_:)();
  v19 = v107;
  v18 = v108;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_100005B14(v20, qword_1006D4630);

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v102 = v5;
    v24 = v23;
    v25 = swift_slowAlloc();
    v101 = v8;
    v26 = v6;
    v27 = v13;
    v28 = v3;
    v29 = v25;
    v107 = v25;
    *v24 = 136315138;
    v30 = sub_100005B4C(v19, v18, &v107);

    *(v24 + 4) = v30;
    _os_log_impl(&_mh_execute_header, v21, v22, "FMMapViewDataSource: didUpdate selectedSection %s", v24, 0xCu);
    sub_100006060(v29);
    v3 = v28;
    v13 = v27;
    v6 = v26;
    v8 = v101;

    v5 = v102;
  }

  else
  {
  }

  swift_storeEnumTagMultiPayload();
  v31 = v106;
  v32 = sub_10005F7D0(v106, v16);
  sub_10002A100(v16, type metadata accessor for FMSelectedSection);
  if ((v32 & 1) == 0)
  {
    sub_1004CB330();
    sub_100027BE0(v31, v13, type metadata accessor for FMSelectedSection);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        sub_10002A100(v13, type metadata accessor for FMSelectedSection);
        goto LABEL_21;
      case 2u:
        *(v3 + 56) = 1;
        v58 = *(*(v3 + 16) + 48);
        type metadata accessor for FMPeopleSubscription(0);
        v59 = swift_allocObject();
        *(v59 + OBJC_IVAR____TtC6FindMy20FMPeopleSubscription_subscriber + 8) = 0;
        swift_unknownObjectWeakInit();

        UUID.init()();
        *(v59 + OBJC_IVAR____TtC6FindMy20FMPeopleSubscription_subscriber + 8) = &off_100641E68;
        swift_unknownObjectWeakAssign();
        v60 = *(v58 + 32);

        os_unfair_lock_lock((v60 + 24));
        sub_10000E7C0((v60 + 16));
        os_unfair_lock_unlock((v60 + 24));

        *(v3 + 72) = v59;

        v61 = dispatch thunk of FMFManager.friends.getter();

        if (*(v3 + 56) - 1 >= 2)
        {
          *(v3 + 57) = 0;
          sub_100012488(v61, v62, v63);
        }

        else
        {
          sub_1004BD720(v61, v62, v63);
        }

        goto LABEL_53;
      case 3u:
      case 4u:
        sub_10002A100(v13, type metadata accessor for FMSelectedSection);
        *(v3 + 56) = 1;
        v33 = v3;
        v34 = *(*(v3 + 16) + 24);
        type metadata accessor for FMDevicesSubscription(0);
        v35 = swift_allocObject();
        *(v35 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber + 8) = 0;
        swift_unknownObjectWeakInit();

        UUID.init()();
        *(v35 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber + 8) = &off_100641ED0;
        swift_unknownObjectWeakAssign();
        v36 = *(v34 + 16);

        os_unfair_lock_lock((v36 + 24));
        sub_100012470((v36 + 16));
        goto LABEL_31;
      case 5u:
        sub_10002A100(v13, type metadata accessor for FMSelectedSection);
        *(v3 + 56) = 3;
        v33 = v3;
        v69 = *(*(v3 + 16) + 24);
        type metadata accessor for FMDevicesSubscription(0);
        v35 = swift_allocObject();
        *(v35 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber + 8) = 0;
        swift_unknownObjectWeakInit();

        UUID.init()();
        *(v35 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber + 8) = &off_100641ED0;
        swift_unknownObjectWeakAssign();
        v36 = *(v69 + 16);

        os_unfair_lock_lock((v36 + 24));
        sub_100012470((v36 + 16));
        goto LABEL_31;
      case 6u:
        sub_10002A100(v13, type metadata accessor for FMSelectedSection);
        *(v3 + 56) = 3;
        v45 = v3;
        v46 = *(*(v3 + 16) + 24);
        type metadata accessor for FMDevicesSubscription(0);
        v47 = swift_allocObject();
        *(v47 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber + 8) = 0;
        swift_unknownObjectWeakInit();

        UUID.init()();
        *(v47 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber + 8) = &off_100641ED0;
        swift_unknownObjectWeakAssign();
        v48 = *(v46 + 16);

        os_unfair_lock_lock((v48 + 24));
        sub_100012470((v48 + 16));
        goto LABEL_39;
      case 7u:
        *(v3 + 56) = 4;
        v70 = *(*(v3 + 16) + 24);
        type metadata accessor for FMDevicesSubscription(0);
        v71 = swift_allocObject();
        *(v71 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber + 8) = 0;
        swift_unknownObjectWeakInit();

        UUID.init()();
        *(v71 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber + 8) = &off_100641ED0;
        swift_unknownObjectWeakAssign();
        v72 = *(v70 + 16);

        os_unfair_lock_lock((v72 + 24));
        sub_10000E7C0((v72 + 16));
        os_unfair_lock_unlock((v72 + 24));

        *(v3 + 64) = v71;

        v73 = FMIPManager.devices.getter();

        v76 = *(v3 + 56);
        if (v76 <= 2)
        {
          if (v76 - 1 < 2)
          {
            sub_1004B8C00(v73, v74, v75);
            goto LABEL_53;
          }

          goto LABEL_51;
        }

        if (v76 == 3)
        {
LABEL_51:
          sub_1004B5834(v73, v74, v75);
          goto LABEL_53;
        }

        sub_1004B7458(v73, v74, v75);
LABEL_53:

        v57 = v13;
LABEL_54:
        sub_10002A100(v57, type metadata accessor for FMSelectedSection);
        return;
      case 8u:
        *(v3 + 56) = 2;
        v49 = *(*(v3 + 16) + 24);
        type metadata accessor for FMDevicesSubscription(0);
        v50 = swift_allocObject();
        *(v50 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber + 8) = 0;
        swift_unknownObjectWeakInit();

        UUID.init()();
        *(v50 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber + 8) = &off_100641ED0;
        swift_unknownObjectWeakAssign();
        v51 = *(v49 + 16);

        os_unfair_lock_lock((v51 + 24));
        sub_100012470((v51 + 16));
        os_unfair_lock_unlock((v51 + 24));

        *(v3 + 64) = v50;

        v52 = FMIPManager.unknownItems.getter();

        if (*(v3 + 56) - 1 >= 2)
        {
          sub_1004C5110(v52, v53, v54);
        }

        else
        {
          sub_1004C7204(v52, v53, v54);
        }

        goto LABEL_53;
      case 9u:
        *(v3 + 56) = 0;
        v77 = *(*(v3 + 16) + 24);
        type metadata accessor for FMDevicesSubscription(0);
        v78 = swift_allocObject();
        *(v78 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber + 8) = 0;
        swift_unknownObjectWeakInit();

        UUID.init()();
        *(v78 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber + 8) = &off_100641ED0;
        swift_unknownObjectWeakAssign();
        v79 = *(v77 + 16);

        os_unfair_lock_lock((v79 + 24));
        sub_100012470((v79 + 16));
        os_unfair_lock_unlock((v79 + 24));

        *(v3 + 64) = v78;

        v80 = FMIPManager.unknownItems.getter();

        if (*(v3 + 56) - 1 >= 2)
        {
          sub_1004C5110(v80, v81, v82);
        }

        else
        {
          sub_1004C7204(v80, v81, v82);
        }

        goto LABEL_49;
      case 0xAu:
        v42 = *(sub_10007EBC0(&qword_1006B6BD0, &qword_100558D50) + 48);
        v43 = type metadata accessor for UUID();
        (*(*(v43 - 8) + 8))(&v13[v42], v43);
        v44 = type metadata accessor for URL();
        (*(*(v44 - 8) + 8))(v13, v44);
        return;
      case 0xBu:
      case 0x12u:
        return;
      case 0xCu:
        *(v3 + 56) = 0;
        v45 = v3;
        v64 = *(*(v3 + 16) + 24);
        type metadata accessor for FMDevicesSubscription(0);
        v47 = swift_allocObject();
        *(v47 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber + 8) = 0;
        swift_unknownObjectWeakInit();

        UUID.init()();
        *(v47 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber + 8) = &off_100641ED0;
        swift_unknownObjectWeakAssign();
        v48 = *(v64 + 16);

        os_unfair_lock_lock((v48 + 24));
        sub_100012470((v48 + 16));
        goto LABEL_39;
      case 0xDu:
      case 0xEu:
        *(v3 + 56) = 1;
        v37 = *(*(v3 + 16) + 48);
        type metadata accessor for FMPeopleSubscription(0);
        v38 = swift_allocObject();
        *(v38 + OBJC_IVAR____TtC6FindMy20FMPeopleSubscription_subscriber + 8) = 0;
        swift_unknownObjectWeakInit();

        UUID.init()();
        *(v38 + OBJC_IVAR____TtC6FindMy20FMPeopleSubscription_subscriber + 8) = &off_100641E68;
        swift_unknownObjectWeakAssign();
        v39 = *(v37 + 32);

        os_unfair_lock_lock((v39 + 24));
        sub_100012470((v39 + 16));
        os_unfair_lock_unlock((v39 + 24));

        *(v3 + 72) = v38;

        v109 = sub_10007EBC0(&qword_1006C24D8, qword_100564340);
        v107 = _swiftEmptyArrayStorage;
        sub_1004CAF58(v109, v40, v41);
        sub_100012DF0(&v107, &unk_1006B8740, &unk_100552DA0);
        return;
      case 0xFu:
        *(v3 + 56) = 0;
        v87 = *(*(v3 + 16) + 48);
        type metadata accessor for FMPeopleSubscription(0);
        v88 = swift_allocObject();
        *(v88 + OBJC_IVAR____TtC6FindMy20FMPeopleSubscription_subscriber + 8) = 0;
        swift_unknownObjectWeakInit();

        UUID.init()();
        *(v88 + OBJC_IVAR____TtC6FindMy20FMPeopleSubscription_subscriber + 8) = &off_100641E68;
        swift_unknownObjectWeakAssign();
        v89 = *(v87 + 32);

        os_unfair_lock_lock((v89 + 24));
        sub_100012470((v89 + 16));
        os_unfair_lock_unlock((v89 + 24));

        *(v3 + 72) = v88;

        v90 = dispatch thunk of FMFManager.friends.getter();

        if (*(v3 + 56) - 1 >= 2)
        {
          *(v3 + 57) = 0;
          sub_100012488(v90, v91, v92);
        }

        else
        {
          sub_1004BD720(v90, v91, v92);
        }

        goto LABEL_49;
      case 0x10u:
        v55 = OBJC_IVAR____TtC6FindMy21FMSelectionController_previousSelectedSection;
        v56 = v103;
        swift_beginAccess();
        sub_100027BE0(v56 + v55, v16, type metadata accessor for FMSelectedSection);
        sub_1004B2480(v56, v16);
        v57 = v16;
        goto LABEL_54;
      case 0x11u:
        *(v3 + 56) = 0;
        v33 = v3;
        v65 = *(*(v3 + 16) + 24);
        type metadata accessor for FMDevicesSubscription(0);
        v35 = swift_allocObject();
        *(v35 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber + 8) = 0;
        swift_unknownObjectWeakInit();

        UUID.init()();
        *(v35 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber + 8) = &off_100641ED0;
        swift_unknownObjectWeakAssign();
        v36 = *(v65 + 16);

        os_unfair_lock_lock((v36 + 24));
        sub_100012470((v36 + 16));
        goto LABEL_31;
      case 0x13u:
        *(v3 + 56) = 1;
        v33 = v3;
        v83 = *(*(v3 + 16) + 24);
        type metadata accessor for FMDevicesSubscription(0);
        v35 = swift_allocObject();
        *(v35 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber + 8) = 0;
        swift_unknownObjectWeakInit();

        UUID.init()();
        *(v35 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber + 8) = &off_100641ED0;
        swift_unknownObjectWeakAssign();
        v36 = *(v83 + 16);

        os_unfair_lock_lock((v36 + 24));
        sub_100012470((v36 + 16));
LABEL_31:
        os_unfair_lock_unlock((v36 + 24));

        *(v33 + 64) = v35;

        v84 = FMIPManager.items.getter();

        if (*(v33 + 56) - 1 >= 2)
        {
          sub_1004BF4C8(v84, v85, v86);
        }

        else
        {
          sub_1004C138C(v84, v85, v86);
        }

        goto LABEL_49;
      default:
        v66 = sub_10007EBC0(&qword_1006BEEE0, qword_100552070);
        sub_100012DF0(&v13[*(v66 + 48)], &qword_1006B07D0, qword_100552820);
        (*(v6 + 8))(v13, v5);
LABEL_21:
        v67 = v104;
        sub_100027BE0(v31, v104, type metadata accessor for FMSelectedSection);
        if (swift_getEnumCaseMultiPayload())
        {
          sub_10002A100(v67, type metadata accessor for FMSelectedSection);
LABEL_23:
          v68 = 1;
          goto LABEL_38;
        }

        v93 = *(sub_10007EBC0(&qword_1006BEEE0, qword_100552070) + 48);
        (*(v6 + 32))(v8, v67, v5);
        sub_100012DF0(v67 + v93, &qword_1006B07D0, qword_100552820);
        v94 = FMIPDevice.historicalLocations.getter();
        (*(v6 + 8))(v8, v5);
        if (!v94)
        {
          goto LABEL_23;
        }

        v68 = 2;
LABEL_38:
        *(v3 + 56) = v68;
        *(v3 + 57) = 0;
        v45 = v3;
        v95 = *(*(v3 + 16) + 24);
        type metadata accessor for FMDevicesSubscription(0);
        v47 = swift_allocObject();
        *(v47 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber + 8) = 0;
        swift_unknownObjectWeakInit();

        UUID.init()();
        *(v47 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber + 8) = &off_100641ED0;
        swift_unknownObjectWeakAssign();
        v48 = *(v95 + 16);

        os_unfair_lock_lock((v48 + 24));
        sub_100012470((v48 + 16));
LABEL_39:
        os_unfair_lock_unlock((v48 + 24));

        *(v45 + 64) = v47;

        v96 = FMIPManager.devices.getter();

        v99 = *(v45 + 56);
        if (v99 <= 2)
        {
          if (v99 - 1 < 2)
          {
            sub_1004B8C00(v96, v97, v98);
            goto LABEL_49;
          }

          goto LABEL_43;
        }

        if (v99 == 3)
        {
LABEL_43:
          sub_1004B5834(v96, v97, v98);
          goto LABEL_49;
        }

        sub_1004B7458(v96, v97, v98);
LABEL_49:

        break;
    }
  }
}