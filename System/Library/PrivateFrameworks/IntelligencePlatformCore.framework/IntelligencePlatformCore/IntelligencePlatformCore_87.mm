void sub_1C4C2146C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = objc_autoreleasePoolPush();
  sub_1C4403A1C();
  sub_1C4C21860(v4, v8, v9, a4, a2, &v10, &v11);
  objc_autoreleasePoolPop(v7);
}

uint64_t sub_1C4C21504@<X0>(uint64_t a1@<X0>, void *a2@<X3>, uint64_t *a3@<X8>)
{
  sub_1C465C2C4();
  if (*(&v32 + 1) == 1)
  {
    v7 = &qword_1EC0BA6E0;
    v8 = &unk_1C4F5E2C0;
    v9 = &v31;
LABEL_7:
    sub_1C4420C3C(v9, v7, v8);
    goto LABEL_8;
  }

  v28 = v31;
  v29 = v32;
  if (!*(&v32 + 1))
  {
    v7 = &qword_1EC0BCD10;
    v8 = &qword_1C4F0C8C0;
    v9 = &v28;
    goto LABEL_7;
  }

  sub_1C4EFF638();
  if (swift_dynamicCast())
  {
    *&v28 = v26;
    v10 = &unk_1EC0C4DA8;
    v11 = MEMORY[0x1E69A9950];
    v12 = MEMORY[0x1E69A9958];
    goto LABEL_13;
  }

LABEL_8:
  sub_1C465C2C4();
  if (*(&v32 + 1) == 1)
  {
    v13 = &qword_1EC0BA6E0;
    v14 = &unk_1C4F5E2C0;
    v15 = &v31;
LABEL_16:
    sub_1C4420C3C(v15, v13, v14);
LABEL_17:
    sub_1C465C2C4();
    if (*(&v27 + 1) == 1)
    {
      v19 = &qword_1EC0BA6E0;
      v20 = &unk_1C4F5E2C0;
      v21 = &v26;
    }

    else
    {
      v31 = v26;
      v32 = v27;
      if (*(&v27 + 1))
      {
        sub_1C456902C(&qword_1EC0BC780, &unk_1C4F29270);
        if (swift_dynamicCast())
        {
          if (*(&v29 + 1))
          {
            return sub_1C441D670(&v28, a3);
          }
        }

        else
        {
          v30 = 0;
          v28 = 0u;
          v29 = 0u;
        }

        goto LABEL_25;
      }

      v19 = &qword_1EC0BCD10;
      v20 = &qword_1C4F0C8C0;
      v21 = &v31;
    }

    sub_1C4420C3C(v21, v19, v20);
    v28 = 0u;
    v29 = 0u;
    v30 = 0;
LABEL_25:
    v22 = type metadata accessor for ViewDatabaseArtifact.Property(0);
    result = static DatabaseValue.emptyValue(forType:)(a1 + *(v22 + 20), a3);
    if (*(&v29 + 1))
    {
      return sub_1C4420C3C(&v28, &qword_1EC0B9038, &unk_1C4F231C0);
    }

    return result;
  }

  v28 = v31;
  v29 = v32;
  if (!*(&v32 + 1))
  {
    v13 = &qword_1EC0BCD10;
    v14 = &qword_1C4F0C8C0;
    v15 = &v28;
    goto LABEL_16;
  }

  sub_1C4EFFA48();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_17;
  }

  *&v28 = v26;
  v10 = &unk_1EC0C4DA0;
  v11 = MEMORY[0x1E69A9AB8];
  v12 = MEMORY[0x1E69A9AC0];
LABEL_13:
  sub_1C4C2F284(v10, v11, v12);
  v16 = sub_1C4EF93B8();
  if (v3)
  {

    *a2 = v3;
  }

  else
  {
    v23 = v16;
    v24 = v17;
    v25 = MEMORY[0x1E699FD70];
    a3[3] = MEMORY[0x1E6969080];
    a3[4] = v25;

    *a3 = v23;
    a3[1] = v24;
  }

  return result;
}

uint64_t sub_1C4C21860@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X6>, uint64_t *a7@<X8>)
{
  v763 = a6;
  v718 = a5;
  v742 = a4;
  v765 = a3;
  v770 = a2;
  v771 = a7;
  v739 = sub_1C4F00258();
  v737 = *(v739 - 8);
  MEMORY[0x1EEE9AC00](v739);
  v733 = &v625 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v727 = sub_1C456902C(&qword_1EC0C4DB0, &qword_1C4F5E2D0);
  MEMORY[0x1EEE9AC00](v727);
  v738 = &v625 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v725 = &v625 - v11;
  v12 = sub_1C456902C(&qword_1EC0C4DB8, &qword_1C4F5E2D8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v726 = &v625 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v719 = (&v625 - v15);
  v16 = sub_1C456902C(&qword_1EC0C4D38, &qword_1C4F5E2E0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v730 = &v625 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v728 = &v625 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v729 = &v625 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v724 = &v625 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v721 = &v625 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v723 = &v625 - v27;
  v749 = sub_1C456902C(&qword_1EC0C4DC0, &qword_1C4F5E2E8);
  v748 = *(v749 - 8);
  MEMORY[0x1EEE9AC00](v749);
  v741 = &v625 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v740 = &v625 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v744 = &v625 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v745 = &v625 - v34;
  v747 = sub_1C456902C(&qword_1EC0C4DC8, &unk_1C4F5E2F0);
  v746 = *(v747 - 8);
  MEMORY[0x1EEE9AC00](v747);
  v736 = &v625 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v743 = &v625 - v37;
  v751 = sub_1C456902C(&qword_1EC0C27B0, &unk_1C4F5E170);
  v752 = *(v751 - 8);
  MEMORY[0x1EEE9AC00](v751);
  v735 = &v625 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v734 = &v625 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v750 = &v625 - v42;
  v722 = sub_1C456902C(&qword_1EC0C4D20, &qword_1C4F5E300);
  v720 = *(v722 - 8);
  MEMORY[0x1EEE9AC00](v722);
  v732 = &v625 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v731 = &v625 - v45;
  v715 = sub_1C456902C(&qword_1EC0C4DD0, &qword_1C4F5E308);
  isa = v715[-1].isa;
  MEMORY[0x1EEE9AC00](v715);
  v713 = (&v625 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v47);
  v711 = &v625 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v709 = &v625 - v50;
  v696 = sub_1C456902C(&qword_1EC0C4DD8, &qword_1C4F5E310);
  *&v695 = *(v696 - 8);
  MEMORY[0x1EEE9AC00](v696);
  v692 = &v625 - v51;
  v717 = sub_1C4EFF1F8();
  v716 = *(v717 - 8);
  MEMORY[0x1EEE9AC00](v717);
  v710 = &v625 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v53);
  v708 = &v625 - v54;
  MEMORY[0x1EEE9AC00](v55);
  v706 = &v625 - v56;
  MEMORY[0x1EEE9AC00](v57);
  v691 = &v625 - v58;
  MEMORY[0x1EEE9AC00](v59);
  v683 = &v625 - v60;
  v686 = sub_1C456902C(&qword_1EC0C4DE0, &qword_1C4F5E318);
  v685 = *(v686 - 8);
  MEMORY[0x1EEE9AC00](v686);
  v681 = &v625 - v61;
  v62 = sub_1C456902C(&qword_1EC0C4DE8, &unk_1C4F5E320);
  MEMORY[0x1EEE9AC00](v62 - 8);
  v757 = &v625 - v63;
  v64 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  MEMORY[0x1EEE9AC00](v64 - 8);
  v754 = &v625 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v66);
  v755 = &v625 - v67;
  MEMORY[0x1EEE9AC00](v68);
  v759 = &v625 - v69;
  v70 = sub_1C456902C(&qword_1EC0C0CC8, &unk_1C4F405F0);
  MEMORY[0x1EEE9AC00](v70 - 8);
  v705 = &v625 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v72);
  v698 = &v625 - v73;
  MEMORY[0x1EEE9AC00](v74);
  v690 = &v625 - v75;
  MEMORY[0x1EEE9AC00](v76);
  v680 = &v625 - v77;
  MEMORY[0x1EEE9AC00](v78);
  v675 = &v625 - v79;
  MEMORY[0x1EEE9AC00](v80);
  v669 = &v625 - v81;
  MEMORY[0x1EEE9AC00](v82);
  v663 = &v625 - v83;
  MEMORY[0x1EEE9AC00](v84);
  v660 = &v625 - v85;
  v86 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v86 - 8);
  v703 = &v625 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v88);
  v694 = &v625 - v89;
  MEMORY[0x1EEE9AC00](v90);
  *&v689 = &v625 - v91;
  MEMORY[0x1EEE9AC00](v92);
  v679 = &v625 - v93;
  MEMORY[0x1EEE9AC00](v94);
  v674 = &v625 - v95;
  MEMORY[0x1EEE9AC00](v96);
  v668 = &v625 - v97;
  MEMORY[0x1EEE9AC00](v98);
  v662 = &v625 - v99;
  MEMORY[0x1EEE9AC00](v100);
  v659 = &v625 - v101;
  v699 = sub_1C4EF9CD8();
  v697 = *(v699 - 8);
  MEMORY[0x1EEE9AC00](v699);
  v701 = &v625 - ((v102 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v103);
  v700 = (&v625 - v104);
  MEMORY[0x1EEE9AC00](v105);
  v684 = &v625 - v106;
  MEMORY[0x1EEE9AC00](v107);
  v682 = &v625 - v108;
  MEMORY[0x1EEE9AC00](v109);
  v671 = &v625 - v110;
  MEMORY[0x1EEE9AC00](v111);
  v666 = &v625 - v112;
  MEMORY[0x1EEE9AC00](v113);
  v664 = &v625 - v114;
  MEMORY[0x1EEE9AC00](v115);
  v658 = &v625 - v116;
  v117 = sub_1C456902C(&qword_1EC0C4DF0, &unk_1C4F5E330);
  MEMORY[0x1EEE9AC00](v117 - 8);
  v758 = &v625 - v118;
  v657 = sub_1C456902C(&qword_1EC0C4DF8, qword_1C4F5E5E0);
  v656 = *(v657 - 8);
  MEMORY[0x1EEE9AC00](v657);
  v655 = &v625 - v119;
  v120 = sub_1C456902C(&qword_1EC0C4E00, &unk_1C4F5E340);
  MEMORY[0x1EEE9AC00](v120 - 8);
  v677 = &v625 - ((v121 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v122);
  v672 = &v625 - v123;
  MEMORY[0x1EEE9AC00](v124);
  v126 = &v625 - v125;
  v761 = sub_1C4EFFA28();
  v762 = *(v761 - 8);
  MEMORY[0x1EEE9AC00](v761);
  v753 = &v625 - ((v127 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v128);
  v756 = &v625 - v129;
  MEMORY[0x1EEE9AC00](v130);
  v760 = &v625 - v131;
  v132 = sub_1C4EFF0C8();
  v766 = *(v132 - 8);
  v133 = *(v766 + 64);
  MEMORY[0x1EEE9AC00](v132);
  v712 = &v625 - ((v133 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v134);
  v704 = &v625 - v135;
  MEMORY[0x1EEE9AC00](v136);
  v707 = &v625 - v137;
  MEMORY[0x1EEE9AC00](v138);
  v702 = &v625 - v139;
  MEMORY[0x1EEE9AC00](v140);
  v693 = &v625 - v141;
  MEMORY[0x1EEE9AC00](v142);
  v676 = &v625 - v143;
  MEMORY[0x1EEE9AC00](v144);
  v688 = &v625 - v145;
  MEMORY[0x1EEE9AC00](v146);
  v673 = &v625 - v147;
  MEMORY[0x1EEE9AC00](v148);
  v687 = &v625 - v149;
  MEMORY[0x1EEE9AC00](v150);
  v670 = &v625 - v151;
  MEMORY[0x1EEE9AC00](v152);
  v678 = &v625 - v153;
  MEMORY[0x1EEE9AC00](v154);
  v667 = &v625 - v155;
  MEMORY[0x1EEE9AC00](v156);
  v665 = &v625 - v157;
  MEMORY[0x1EEE9AC00](v158);
  v160 = &v625 - v159;
  MEMORY[0x1EEE9AC00](v161);
  v661 = &v625 - v162;
  MEMORY[0x1EEE9AC00](v163);
  v165 = &v625 - v164;
  MEMORY[0x1EEE9AC00](v166);
  v168 = &v625 - v167;
  MEMORY[0x1EEE9AC00](v169);
  v764 = &v625 - v170;
  MEMORY[0x1EEE9AC00](v171);
  v769 = &v625 - v172;
  v173 = *(a1 + 104);
  v767 = *(a1 + 96);
  v768 = v173;
  sub_1C465C4B8();
  if (!v776)
  {
    sub_1C4420C3C(&v774, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    goto LABEL_50;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_50:
    if (qword_1EDDFECD0 != -1)
    {
      swift_once();
    }

    v187 = sub_1C4F00978();
    sub_1C442B738(v187, qword_1EDE2DF70);
    swift_retain_n();
    v188 = sub_1C4F00968();
    v189 = sub_1C4F01CE8();
    v190 = swift_allocObject();
    *(v190 + 16) = 32;
    v191 = swift_allocObject();
    *(v191 + 16) = 8;
    v192 = swift_allocObject();
    *(v192 + 16) = sub_1C4C2C7FC;
    *(v192 + 24) = a1;
    v193 = swift_allocObject();
    *(v193 + 16) = sub_1C4AD71F0;
    *(v193 + 24) = v192;
    sub_1C456902C(&qword_1EC0BBF38, &unk_1C4F4B420);
    v194 = swift_allocObject();
    *(v194 + 16) = xmmword_1C4F0C890;
    *(v194 + 32) = sub_1C44549EC;
    *(v194 + 40) = v190;
    *(v194 + 48) = sub_1C44549F4;
    *(v194 + 56) = v191;
    *(v194 + 64) = sub_1C4454B88;
    *(v194 + 72) = v193;
    swift_setDeallocating();

    sub_1C49E1614();
    if (os_log_type_enabled(v188, v189))
    {
      v195 = swift_slowAlloc();
      v196 = swift_slowAlloc();
      LODWORD(v770) = v189;
      v197 = v196;
      v774 = v196;
      *v195 = 258;
      *(v195 + 2) = 32;

      *(v195 + 3) = 8;

      v198 = v768;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v199 = sub_1C441D828(v767, v198, &v774);

      *(v195 + 4) = v199;

      _os_log_impl(&dword_1C43F8000, v188, v770, "Column[%s] not found in the row.", v195, 0xCu);
      sub_1C440962C(v197);
      MEMORY[0x1C6942830](v197, -1, -1);
      MEMORY[0x1C6942830](v195, -1, -1);
    }

    else
    {
    }

    sub_1C456902C(&qword_1EC0BCD10, &qword_1C4F0C8C0);
    result = sub_1C4F00F28();
    v200 = result;
    goto LABEL_63;
  }

  sub_1C4EFF0B8();
  v174 = v765;
  sub_1C465C4B8();
  if (!v776)
  {
    sub_1C4420C3C(&v774, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    goto LABEL_57;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_57:
    v654 = v132;
    if (qword_1EDDFECD0 != -1)
    {
      swift_once();
    }

    v201 = sub_1C4F00978();
    sub_1C442B738(v201, qword_1EDE2DF70);
    v202 = swift_allocObject();
    *(v202 + 16) = v770;
    *(v202 + 24) = v174;
    swift_bridgeObjectRetain_n();
    v203 = sub_1C4F00968();
    v204 = sub_1C4F01CE8();
    v205 = swift_allocObject();
    *(v205 + 16) = 32;
    v206 = swift_allocObject();
    *(v206 + 16) = 8;
    v207 = swift_allocObject();
    *(v207 + 16) = sub_1C4AD7104;
    *(v207 + 24) = v202;
    v208 = swift_allocObject();
    *(v208 + 16) = sub_1C4B0E9F8;
    *(v208 + 24) = v207;
    sub_1C456902C(&qword_1EC0BBF38, &unk_1C4F4B420);
    v209 = swift_allocObject();
    *(v209 + 16) = xmmword_1C4F0C890;
    *(v209 + 32) = sub_1C44549F4;
    *(v209 + 40) = v205;
    *(v209 + 48) = sub_1C44549F4;
    *(v209 + 56) = v206;
    *(v209 + 64) = sub_1C4454C38;
    *(v209 + 72) = v208;
    swift_setDeallocating();

    sub_1C49E1614();
    LODWORD(v768) = v204;
    if (os_log_type_enabled(v203, v204))
    {
      v210 = swift_slowAlloc();
      v211 = v203;
      v212 = swift_slowAlloc();
      v774 = v212;
      *v210 = 258;
      *(v210 + 2) = 32;

      *(v210 + 3) = 8;

      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v213 = sub_1C441D828(v770, v174, &v774);

      *(v210 + 4) = v213;

      _os_log_impl(&dword_1C43F8000, v211, v768, "Column[%s] not found in the row.", v210, 0xCu);
      sub_1C440962C(v212);
      MEMORY[0x1C6942830](v212, -1, -1);
      MEMORY[0x1C6942830](v210, -1, -1);
    }

    else
    {
    }

    sub_1C456902C(&qword_1EC0BCD10, &qword_1C4F0C8C0);
    v200 = sub_1C4F00F28();
    result = (*(v766 + 8))(v769, v654);
    goto LABEL_63;
  }

  sub_1C4EFF0B8();
  sub_1C465C4B8();
  if (!v776)
  {
    sub_1C4420C3C(&v774, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    goto LABEL_65;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_65:
    if (qword_1EDDFECD0 != -1)
    {
      swift_once();
    }

    v214 = sub_1C4F00978();
    sub_1C442B738(v214, qword_1EDE2DF70);
    v215 = sub_1C4F00968();
    v216 = sub_1C4F01CE8();
    if (os_log_type_enabled(v215, v216))
    {
      v217 = swift_slowAlloc();
      *v217 = 0;
      _os_log_impl(&dword_1C43F8000, v215, v216, "Column[tripId] not found in the row.", v217, 2u);
      MEMORY[0x1C6942830](v217, -1, -1);
    }

    sub_1C456902C(&qword_1EC0BCD10, &qword_1C4F0C8C0);
    v200 = sub_1C4F00F28();
    v218 = *(v766 + 8);
    v218(v764, v132);
    result = (v218)(v769, v132);
    goto LABEL_63;
  }

  v654 = v132;
  v175 = v773;
  v765 = v772;
  sub_1C465C4B8();
  if (!v776)
  {
    goto LABEL_80;
  }

  v770 = v175;
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_71:

LABEL_72:
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v219 = sub_1C4F00978();
    sub_1C442B738(v219, qword_1EDDFECB8);
    v220 = sub_1C4F00968();
    v221 = sub_1C4F01CD8();
    if (os_log_type_enabled(v220, v221))
    {
      v222 = swift_slowAlloc();
      *v222 = 0;
      _os_log_impl(&dword_1C43F8000, v220, v221, "Column[endTime] or [startTime] not found in the row.", v222, 2u);
      MEMORY[0x1C6942830](v222, -1, -1);
    }

    v223 = 0x80000001C4FBA400;
    sub_1C446D0DC();
    v186 = swift_allocError();
    v225 = 0xD000000000000034;
    goto LABEL_77;
  }

  v176 = *&v772;
  sub_1C465C4B8();
  if (!v776)
  {
LABEL_80:

    sub_1C4420C3C(&v774, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    goto LABEL_72;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_71;
  }

  v177 = *&v772;
  sub_1C465C4B8();
  if (!v776)
  {
    goto LABEL_82;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_83:

    goto LABEL_84;
  }

  v178 = v772;
  sub_1C465C4B8();
  if (!v776)
  {
LABEL_82:

    sub_1C4420C3C(&v774, &qword_1EC0BCD10, &qword_1C4F0C8C0);
LABEL_84:
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v228 = sub_1C4F00978();
    sub_1C442B738(v228, qword_1EDDFECB8);
    v229 = sub_1C4F00968();
    v230 = sub_1C4F01CD8();
    if (os_log_type_enabled(v229, v230))
    {
      v231 = swift_slowAlloc();
      *v231 = 0;
      _os_log_impl(&dword_1C43F8000, v229, v230, "Column[elevationGainInMeters] or [distanceInMeters] not found in the row.", v231, 2u);
      MEMORY[0x1C6942830](v231, -1, -1);
    }

    v223 = 0x80000001C4FBA460;
    sub_1C446D0DC();
    v186 = swift_allocError();
    v225 = 0xD000000000000049;
    goto LABEL_77;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_83;
  }

  v179 = v772;
  sub_1C465C4B8();
  if (!v776)
  {

    sub_1C4420C3C(&v774, &qword_1EC0BCD10, &qword_1C4F0C8C0);
LABEL_91:
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v232 = sub_1C4F00978();
    sub_1C442B738(v232, qword_1EDDFECB8);
    v233 = sub_1C4F00968();
    v234 = sub_1C4F01CD8();
    if (os_log_type_enabled(v233, v234))
    {
      v235 = swift_slowAlloc();
      *v235 = 0;
      _os_log_impl(&dword_1C43F8000, v233, v234, "Column[route] not found in the row.", v235, 2u);
      MEMORY[0x1C6942830](v235, -1, -1);
    }

    v223 = 0x80000001C4FBA4D0;
    sub_1C446D0DC();
    v186 = swift_allocError();
    v225 = 0xD000000000000023;
LABEL_77:
    *v224 = v225;
    *(v224 + 8) = v223;
    *(v224 + 16) = 3;
    swift_willThrow();
LABEL_78:
    v226 = *(v766 + 8);
    v227 = v654;
    v226(v764, v654);
    result = (v226)(v769, v227);
    goto LABEL_79;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_91;
  }

  v652 = v772;
  v653 = v773;
  sub_1C465C4B8();
  if (!v776)
  {

    sub_1C4420C3C(&v774, &qword_1EC0BCD10, &qword_1C4F0C8C0);
LABEL_98:
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v236 = sub_1C4F00978();
    sub_1C442B738(v236, qword_1EDDFECB8);
    v237 = sub_1C4F00968();
    v238 = sub_1C4F01CD8();
    if (os_log_type_enabled(v237, v238))
    {
      v239 = swift_slowAlloc();
      *v239 = 0;
      _os_log_impl(&dword_1C43F8000, v237, v238, "Column[speedBuckets_metricsPerDistance] not found in the row.", v239, 2u);
      MEMORY[0x1C6942830](v239, -1, -1);
    }

    sub_1C446D0DC();
    v186 = swift_allocError();
    *v240 = 0xD00000000000003DLL;
    *(v240 + 8) = 0x80000001C4FBA520;
    *(v240 + 16) = 3;
    swift_willThrow();
    goto LABEL_213;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_98;
  }

  v650 = v772;
  v651 = v773;
  sub_1C465C4B8();
  if (!v776)
  {

    sub_1C4420C3C(&v774, &qword_1EC0BCD10, &qword_1C4F0C8C0);
LABEL_105:
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v241 = sub_1C4F00978();
    sub_1C442B738(v241, qword_1EDDFECB8);
    v242 = sub_1C4F00968();
    v243 = sub_1C4F01CD8();
    if (os_log_type_enabled(v242, v243))
    {
      v244 = swift_slowAlloc();
      *v244 = 0;
      _os_log_impl(&dword_1C43F8000, v242, v243, "Column[relativeSpeeds_metricsPerDistance] not found in the row.", v244, 2u);
      MEMORY[0x1C6942830](v244, -1, -1);
    }

    sub_1C446D0DC();
    v186 = swift_allocError();
    *v245 = 0xD00000000000003FLL;
    *(v245 + 8) = 0x80000001C4FBA590;
    *(v245 + 16) = 3;
    swift_willThrow();
    goto LABEL_212;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_105;
  }

  v648 = v772;
  v649 = v773;
  sub_1C465C4B8();
  if (!v776)
  {

    sub_1C4420C3C(&v774, &qword_1EC0BCD10, &qword_1C4F0C8C0);
LABEL_112:
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v246 = sub_1C4F00978();
    sub_1C442B738(v246, qword_1EDDFECB8);
    v247 = sub_1C4F00968();
    v248 = sub_1C4F01CD8();
    if (os_log_type_enabled(v247, v248))
    {
      v249 = swift_slowAlloc();
      *v249 = 0;
      _os_log_impl(&dword_1C43F8000, v247, v248, "Column[trafficBuckets_metricsPerDistance] not found in the row.", v249, 2u);
      MEMORY[0x1C6942830](v249, -1, -1);
    }

    sub_1C446D0DC();
    v186 = swift_allocError();
    *v250 = 0xD00000000000003FLL;
    *(v250 + 8) = 0x80000001C4FBA600;
    *(v250 + 16) = 3;
    swift_willThrow();
    goto LABEL_211;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_112;
  }

  v646 = v772;
  v647 = v773;
  sub_1C465C4B8();
  if (!v776)
  {

    sub_1C4420C3C(&v774, &qword_1EC0BCD10, &qword_1C4F0C8C0);
LABEL_119:
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v251 = sub_1C4F00978();
    sub_1C442B738(v251, qword_1EDDFECB8);
    v252 = sub_1C4F00968();
    v253 = sub_1C4F01CD8();
    if (os_log_type_enabled(v252, v253))
    {
      v254 = swift_slowAlloc();
      *v254 = 0;
      _os_log_impl(&dword_1C43F8000, v252, v253, "Column[weatherTypes_metricsPerDistance] not found in the row.", v254, 2u);
      MEMORY[0x1C6942830](v254, -1, -1);
    }

    sub_1C446D0DC();
    v186 = swift_allocError();
    *v255 = 0xD00000000000003DLL;
    *(v255 + 8) = 0x80000001C4FBA660;
    *(v255 + 16) = 3;
    swift_willThrow();
    goto LABEL_210;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_119;
  }

  v644 = v772;
  v645 = v773;
  sub_1C465C4B8();
  if (!v776)
  {

    sub_1C4420C3C(&v774, &qword_1EC0BCD10, &qword_1C4F0C8C0);
LABEL_126:
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v256 = sub_1C4F00978();
    sub_1C442B738(v256, qword_1EDDFECB8);
    v257 = sub_1C4F00968();
    v258 = sub_1C4F01CD8();
    if (os_log_type_enabled(v257, v258))
    {
      v259 = swift_slowAlloc();
      *v259 = 0;
      _os_log_impl(&dword_1C43F8000, v257, v258, "Column[terrainTypes_metricsPerDistance] not found in the row.", v259, 2u);
      MEMORY[0x1C6942830](v259, -1, -1);
    }

    sub_1C446D0DC();
    v186 = swift_allocError();
    *v260 = 0xD00000000000003DLL;
    *(v260 + 8) = 0x80000001C4FBA6C0;
    *(v260 + 16) = 3;
    swift_willThrow();
    goto LABEL_209;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_126;
  }

  v642 = v772;
  v643 = v773;
  sub_1C465C4B8();
  if (!v776)
  {

    sub_1C4420C3C(&v774, &qword_1EC0BCD10, &qword_1C4F0C8C0);
LABEL_133:
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v261 = sub_1C4F00978();
    sub_1C442B738(v261, qword_1EDDFECB8);
    v262 = sub_1C4F00968();
    v263 = sub_1C4F01CD8();
    if (os_log_type_enabled(v262, v263))
    {
      v264 = swift_slowAlloc();
      *v264 = 0;
      _os_log_impl(&dword_1C43F8000, v262, v263, "Column[roadTypes_metricsPerDistance] not found in the row.", v264, 2u);
      MEMORY[0x1C6942830](v264, -1, -1);
    }

    sub_1C446D0DC();
    v186 = swift_allocError();
    *v265 = 0xD00000000000003ALL;
    *(v265 + 8) = 0x80000001C4FBA720;
    *(v265 + 16) = 3;
    swift_willThrow();
    goto LABEL_208;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_133;
  }

  v640 = v772;
  v641 = v773;
  sub_1C465C4B8();
  if (!v776)
  {

    sub_1C4420C3C(&v774, &qword_1EC0BCD10, &qword_1C4F0C8C0);
LABEL_140:
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v266 = sub_1C4F00978();
    sub_1C442B738(v266, qword_1EDDFECB8);
    v267 = sub_1C4F00968();
    v268 = sub_1C4F01CD8();
    if (os_log_type_enabled(v267, v268))
    {
      v269 = swift_slowAlloc();
      *v269 = 0;
      _os_log_impl(&dword_1C43F8000, v267, v268, "Column[speedBuckets_metricsPerTime] not found in the row.", v269, 2u);
      MEMORY[0x1C6942830](v269, -1, -1);
    }

    sub_1C446D0DC();
    v186 = swift_allocError();
    *v270 = 0xD000000000000039;
    *(v270 + 8) = 0x80000001C4FBA780;
    *(v270 + 16) = 3;
    swift_willThrow();
    goto LABEL_207;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_140;
  }

  v638 = v772;
  v639 = v773;
  sub_1C465C4B8();
  if (!v776)
  {

    sub_1C4420C3C(&v774, &qword_1EC0BCD10, &qword_1C4F0C8C0);
LABEL_147:
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v271 = sub_1C4F00978();
    sub_1C442B738(v271, qword_1EDDFECB8);
    v272 = sub_1C4F00968();
    v273 = sub_1C4F01CD8();
    if (os_log_type_enabled(v272, v273))
    {
      v274 = swift_slowAlloc();
      *v274 = 0;
      _os_log_impl(&dword_1C43F8000, v272, v273, "Column[relativeSpeeds_metricsPerTime] not found in the row.", v274, 2u);
      MEMORY[0x1C6942830](v274, -1, -1);
    }

    sub_1C446D0DC();
    v186 = swift_allocError();
    *v275 = 0xD00000000000003BLL;
    *(v275 + 8) = 0x80000001C4FBA7E0;
    *(v275 + 16) = 3;
    swift_willThrow();
    goto LABEL_206;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_147;
  }

  v636 = v772;
  v637 = v773;
  sub_1C465C4B8();
  if (!v776)
  {

    sub_1C4420C3C(&v774, &qword_1EC0BCD10, &qword_1C4F0C8C0);
LABEL_154:
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v276 = sub_1C4F00978();
    sub_1C442B738(v276, qword_1EDDFECB8);
    v277 = sub_1C4F00968();
    v278 = sub_1C4F01CD8();
    if (os_log_type_enabled(v277, v278))
    {
      v279 = swift_slowAlloc();
      *v279 = 0;
      _os_log_impl(&dword_1C43F8000, v277, v278, "Column[trafficBuckets_metricsPerTime] not found in the row.", v279, 2u);
      MEMORY[0x1C6942830](v279, -1, -1);
    }

    sub_1C446D0DC();
    v186 = swift_allocError();
    *v280 = 0xD00000000000003BLL;
    *(v280 + 8) = 0x80000001C4FBA840;
    *(v280 + 16) = 3;
    swift_willThrow();
    goto LABEL_205;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_154;
  }

  v634 = v772;
  v635 = v773;
  sub_1C465C4B8();
  if (!v776)
  {

    sub_1C4420C3C(&v774, &qword_1EC0BCD10, &qword_1C4F0C8C0);
LABEL_161:
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v281 = sub_1C4F00978();
    sub_1C442B738(v281, qword_1EDDFECB8);
    v282 = sub_1C4F00968();
    v283 = sub_1C4F01CD8();
    if (os_log_type_enabled(v282, v283))
    {
      v284 = swift_slowAlloc();
      *v284 = 0;
      _os_log_impl(&dword_1C43F8000, v282, v283, "Column[weatherTypes_metricsPerTime] not found in the row.", v284, 2u);
      MEMORY[0x1C6942830](v284, -1, -1);
    }

    sub_1C446D0DC();
    v186 = swift_allocError();
    *v285 = 0xD000000000000039;
    *(v285 + 8) = 0x80000001C4FBA8A0;
    *(v285 + 16) = 3;
    swift_willThrow();
    goto LABEL_204;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_161;
  }

  v632 = v772;
  v633 = v773;
  sub_1C465C4B8();
  if (!v776)
  {

    sub_1C4420C3C(&v774, &qword_1EC0BCD10, &qword_1C4F0C8C0);
LABEL_168:
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v286 = sub_1C4F00978();
    sub_1C442B738(v286, qword_1EDDFECB8);
    v287 = sub_1C4F00968();
    v288 = sub_1C4F01CD8();
    if (os_log_type_enabled(v287, v288))
    {
      v289 = swift_slowAlloc();
      *v289 = 0;
      _os_log_impl(&dword_1C43F8000, v287, v288, "Column[roadTypes_metricsPerTime] not found in the row.", v289, 2u);
      MEMORY[0x1C6942830](v289, -1, -1);
    }

    sub_1C446D0DC();
    v186 = swift_allocError();
    *v290 = 0xD000000000000036;
    *(v290 + 8) = 0x80000001C4FBA900;
    *(v290 + 16) = 3;
    swift_willThrow();
    goto LABEL_203;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_168;
  }

  v630 = v772;
  v631 = v773;
  sub_1C465C4B8();
  if (!v776)
  {

    sub_1C4420C3C(&v774, &qword_1EC0BCD10, &qword_1C4F0C8C0);
LABEL_175:
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v291 = sub_1C4F00978();
    sub_1C442B738(v291, qword_1EDDFECB8);
    v292 = sub_1C4F00968();
    v293 = sub_1C4F01CD8();
    if (os_log_type_enabled(v292, v293))
    {
      v294 = swift_slowAlloc();
      *v294 = 0;
      _os_log_impl(&dword_1C43F8000, v292, v293, "Column[terrainTypes_metricsPerTime] not found in the row.", v294, 2u);
      MEMORY[0x1C6942830](v294, -1, -1);
    }

    sub_1C446D0DC();
    v186 = swift_allocError();
    *v295 = 0xD000000000000039;
    *(v295 + 8) = 0x80000001C4FBA960;
    *(v295 + 16) = 3;
    swift_willThrow();
    goto LABEL_202;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_175;
  }

  v628 = v772;
  v629 = v773;
  sub_1C465C4B8();
  if (!v776)
  {

    sub_1C4420C3C(&v774, &qword_1EC0BCD10, &qword_1C4F0C8C0);
LABEL_182:
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v296 = sub_1C4F00978();
    sub_1C442B738(v296, qword_1EDDFECB8);
    v297 = sub_1C4F00968();
    v298 = sub_1C4F01CD8();
    if (os_log_type_enabled(v297, v298))
    {
      v299 = swift_slowAlloc();
      *v299 = 0;
      _os_log_impl(&dword_1C43F8000, v297, v298, "Column[score] not found in the row.", v299, 2u);
      MEMORY[0x1C6942830](v299, -1, -1);
    }

    v300 = 0x80000001C4FBA9A0;
    sub_1C446D0DC();
    v186 = swift_allocError();
    v302 = 0xD000000000000023;
    goto LABEL_201;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_182;
  }

  v180 = v772;
  sub_1C465C4B8();
  if (!v776)
  {

    sub_1C4420C3C(&v774, &qword_1EC0BCD10, &qword_1C4F0C8C0);
LABEL_189:
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v303 = sub_1C4F00978();
    sub_1C442B738(v303, qword_1EDDFECB8);
    v304 = sub_1C4F00968();
    v305 = sub_1C4F01CD8();
    if (os_log_type_enabled(v304, v305))
    {
      v306 = swift_slowAlloc();
      *v306 = 0;
      _os_log_impl(&dword_1C43F8000, v304, v305, "Column[usageKwh] not found in the row.", v306, 2u);
      MEMORY[0x1C6942830](v306, -1, -1);
    }

    v300 = 0x80000001C4FBA9D0;
    sub_1C446D0DC();
    v186 = swift_allocError();
    v302 = 0xD000000000000026;
    goto LABEL_201;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_189;
  }

  sub_1C465C4B8();
  if (!v776)
  {

    sub_1C4420C3C(&v774, &qword_1EC0BCD10, &qword_1C4F0C8C0);
LABEL_196:
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v307 = sub_1C4F00978();
    sub_1C442B738(v307, qword_1EDDFECB8);
    v308 = sub_1C4F00968();
    v309 = sub_1C4F01CD8();
    if (os_log_type_enabled(v308, v309))
    {
      v310 = swift_slowAlloc();
      *v310 = 0;
      _os_log_impl(&dword_1C43F8000, v308, v309, "Column[optimalUsageKwh] not found in the row.", v310, 2u);
      MEMORY[0x1C6942830](v310, -1, -1);
    }

    v300 = 0x80000001C4FBAA00;
    sub_1C446D0DC();
    v186 = swift_allocError();
    v302 = 0xD00000000000002DLL;
LABEL_201:
    *v301 = v302;
    *(v301 + 8) = v300;
    *(v301 + 16) = 3;
    swift_willThrow();
    sub_1C4434000(v628, v629);
LABEL_202:
    sub_1C4434000(v630, v631);
LABEL_203:
    sub_1C4434000(v632, v633);
LABEL_204:
    sub_1C4434000(v634, v635);
LABEL_205:
    sub_1C4434000(v636, v637);
LABEL_206:
    sub_1C4434000(v638, v639);
LABEL_207:
    sub_1C4434000(v640, v641);
LABEL_208:
    sub_1C4434000(v642, v643);
LABEL_209:
    sub_1C4434000(v644, v645);
LABEL_210:
    sub_1C4434000(v646, v647);
LABEL_211:
    sub_1C4434000(v648, v649);
LABEL_212:
    sub_1C4434000(v650, v651);
LABEL_213:
    sub_1C4434000(v652, v653);
    goto LABEL_78;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_196;
  }

  v181 = *(v766 + 16);
  v627 = v766 + 16;
  v626 = v181;
  v181(v168, v764, v654);
  sub_1C4C2F284(&qword_1EDDEFF50, MEMORY[0x1E69A9AB0], MEMORY[0x1E69A9AA8]);
  v182 = v777;
  sub_1C4EFF688();
  if (!v182)
  {
    v774 = v742;
    sub_1C456902C(&qword_1EC0BFC90, &qword_1C4F5E1A0);
    sub_1C4401CBC(&qword_1EC0C4E08, &qword_1EC0BFC90, &qword_1C4F5E1A0, MEMORY[0x1E69A99B8]);
    sub_1C4C2F284(&qword_1EC0C4E10, MEMORY[0x1E69A94F8], MEMORY[0x1E69A94F0]);
    sub_1C4EFF668();
    v777 = 0;
    (*(v656 + 8))(v655, v657);
    if (sub_1C44157D4(v126, 1, v761) == 1)
    {
      sub_1C4420C3C(v126, &qword_1EC0C4E00, &unk_1C4F5E340);
      if (qword_1EDDFECD0 != -1)
      {
        swift_once();
      }

      v313 = sub_1C4F00978();
      v767 = sub_1C442B738(v313, qword_1EDE2DF70);
      v314 = v654;
      v315 = v626;
      v626(v165, v769, v654);
      v315(v661, v165, v314);
      v316 = v766;
      v765 = ((*(v766 + 80) + 16) & ~*(v766 + 80));
      v317 = v765;
      v318 = swift_allocObject();
      v319 = *(v316 + 32);
      v320 = &v317[v318];
      v321 = v318;
      v319(v320, v165, v314);
      v322 = swift_allocObject();
      v768 = v322;
      *(v322 + 16) = sub_1C4C2F804;
      *(v322 + 24) = v321;
      v323 = v321;
      v315(v160, v764, v314);
      v315(v665, v160, v314);
      v324 = v765;
      v325 = swift_allocObject();
      v319(&v324[v325], v160, v314);
      v326 = swift_allocObject();
      *(v326 + 16) = sub_1C4C2F804;
      *(v326 + 24) = v325;
      v327 = v326;
      v765 = v326;
      v760 = v323;

      v761 = v325;

      v767 = sub_1C4F00968();
      LODWORD(v763) = sub_1C4F01CE8();
      v328 = swift_allocObject();
      *(v328 + 16) = 32;
      v329 = v328;
      v762 = swift_allocObject();
      *(v762 + 16) = 8;
      v330 = swift_allocObject();
      v331 = v768;
      *(v330 + 16) = sub_1C4C2C804;
      *(v330 + 24) = v331;
      v332 = swift_allocObject();
      *(v332 + 16) = sub_1C4B0E9F8;
      *(v332 + 24) = v330;
      v333 = swift_allocObject();
      *(v333 + 16) = 32;
      v334 = swift_allocObject();
      *(v334 + 16) = 8;
      v335 = swift_allocObject();
      *(v335 + 16) = sub_1C4C2F800;
      *(v335 + 24) = v327;
      v336 = swift_allocObject();
      *(v336 + 16) = sub_1C4B0E9F8;
      *(v336 + 24) = v335;
      sub_1C456902C(&qword_1EC0BBF38, &unk_1C4F4B420);
      v337 = swift_allocObject();
      *(v337 + 16) = xmmword_1C4F0F820;
      *(v337 + 32) = sub_1C44549F4;
      *(v337 + 40) = v329;
      v338 = v762;
      *(v337 + 48) = sub_1C44549F4;
      *(v337 + 56) = v338;
      *(v337 + 64) = sub_1C4454C38;
      *(v337 + 72) = v332;
      *(v337 + 80) = sub_1C44549F4;
      *(v337 + 88) = v333;
      *(v337 + 96) = sub_1C44549F4;
      *(v337 + 104) = v334;
      *(v337 + 112) = sub_1C4454C38;
      *(v337 + 120) = v336;
      swift_setDeallocating();

      v755 = v330;

      v759 = v335;

      v754 = v332;

      v758 = v333;

      v756 = v334;

      v757 = v336;

      sub_1C49E1614();
      if (os_log_type_enabled(v767, v763))
      {
        v339 = swift_slowAlloc();
        v340 = swift_slowAlloc();
        v774 = v340;
        *v339 = 514;
        *(v339 + 2) = 32;

        *(v339 + 3) = 8;

        sub_1C4C2F284(&qword_1EDDFE810, MEMORY[0x1E69A9810], MEMORY[0x1E69A9840]);
        v341 = v661;
        v342 = v654;
        v343 = sub_1C4F02858();
        v345 = sub_1C441D828(v343, v344, &v774);

        *(v339 + 4) = v345;

        v346 = *(v766 + 8);
        v346(v341, v342);
        *(v339 + 12) = 32;

        *(v339 + 13) = 8;

        v347 = v665;
        v348 = sub_1C4F02858();
        v350 = sub_1C441D828(v348, v349, &v774);

        *(v339 + 14) = v350;

        v346(v347, v342);
        v351 = v767;
        _os_log_impl(&dword_1C43F8000, v767, v763, "Couldn't find a life event that points to this trip, segmentId: %s, lifeEventId: %s.", v339, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1C6942830](v340, -1, -1);
        MEMORY[0x1C6942830](v339, -1, -1);
      }

      else
      {

        v346 = *(v766 + 8);
        v355 = v654;
        v346(v661, v654);

        v346(v665, v355);
      }

      sub_1C456902C(&qword_1EC0BCD10, &qword_1C4F0C8C0);
      v200 = sub_1C4F00F28();
      sub_1C4434000(v628, v629);
      sub_1C4434000(v630, v631);
      sub_1C4434000(v632, v633);
      sub_1C4434000(v634, v635);
      sub_1C4434000(v636, v637);
      sub_1C4434000(v638, v639);
      sub_1C4434000(v640, v641);
      sub_1C4434000(v642, v643);
      sub_1C4434000(v644, v645);
      sub_1C4434000(v646, v647);
      sub_1C4434000(v648, v649);
      sub_1C4434000(v650, v651);
      sub_1C4434000(v652, v653);
      v356 = v654;
      v346(v764, v654);
      result = (v346)(v769, v356);
      goto LABEL_63;
    }

    v352 = *(v762 + 32);
    v352(v760, v126, v761);
    v353 = v660;
    sub_1C4EFFA18();
    v354 = sub_1C4EFFC68();
    if (sub_1C44157D4(v353, 1, v354) == 1)
    {
      sub_1C4420C3C(v660, &qword_1EC0C0CC8, &unk_1C4F405F0);
      sub_1C440BAA8(v659, 1, 1, v699);
    }

    else
    {
      v357 = v659;
      v358 = v660;
      sub_1C4EFFC58();
      (*(*(v354 - 8) + 8))(v358, v354);
      if (sub_1C44157D4(v357, 1, v699) != 1)
      {
        (*(v697 + 32))(v658, v659, v699);
        goto LABEL_227;
      }
    }

    sub_1C4EF9AC8();
    if (sub_1C44157D4(v659, 1, v699) != 1)
    {
      sub_1C4420C3C(v659, &unk_1EC0B84E0, qword_1C4F0D2D0);
    }

LABEL_227:
    v359 = *(v697 + 32);
    v359(v758, v658, v699);
    v360 = v663;
    sub_1C4EFFA18();
    if (sub_1C44157D4(v360, 1, v354) == 1)
    {
      sub_1C4420C3C(v663, &qword_1EC0C0CC8, &unk_1C4F405F0);
      sub_1C440BAA8(v662, 1, 1, v699);
    }

    else
    {
      v361 = v662;
      v362 = v663;
      sub_1C4EFFC58();
      (*(*(v354 - 8) + 8))(v362, v354);
      if (sub_1C44157D4(v361, 1, v699) != 1)
      {
        v359(v664, v662, v699);
        goto LABEL_233;
      }
    }

    sub_1C4EF9AC8();
    if (sub_1C44157D4(v662, 1, v699) != 1)
    {
      sub_1C4420C3C(v662, &unk_1EC0B84E0, qword_1C4F0D2D0);
    }

LABEL_233:
    v363 = v669;
    sub_1C4EFFA18();
    if (sub_1C44157D4(v363, 1, v354) == 1)
    {
      sub_1C4420C3C(v669, &qword_1EC0C0CC8, &unk_1C4F405F0);
      sub_1C440BAA8(v668, 1, 1, v699);
    }

    else
    {
      v364 = v668;
      v365 = v669;
      sub_1C4EFFC48();
      (*(*(v354 - 8) + 8))(v365, v354);
      if (sub_1C44157D4(v364, 1, v699) != 1)
      {
        v359(v666, v668, v699);
        goto LABEL_239;
      }
    }

    sub_1C4EF9AC8();
    if (sub_1C44157D4(v668, 1, v699) != 1)
    {
      sub_1C4420C3C(v668, &unk_1EC0B84E0, qword_1C4F0D2D0);
    }

LABEL_239:
    sub_1C4C2BCB8(v664, v666, v759);
    v366 = v675;
    sub_1C4EFFA18();
    if (sub_1C44157D4(v366, 1, v354) == 1)
    {
      sub_1C4420C3C(v675, &qword_1EC0C0CC8, &unk_1C4F405F0);
      sub_1C440BAA8(v674, 1, 1, v699);
    }

    else
    {
      v367 = v674;
      v368 = v675;
      sub_1C4EFFC48();
      (*(*(v354 - 8) + 8))(v368, v354);
      if (sub_1C44157D4(v367, 1, v699) != 1)
      {
        v359(v671, v674, v699);
        goto LABEL_245;
      }
    }

    sub_1C4EF9AC8();
    if (sub_1C44157D4(v674, 1, v699) != 1)
    {
      sub_1C4420C3C(v674, &unk_1EC0B84E0, qword_1C4F0D2D0);
    }

LABEL_245:
    v359(v757, v671, v699);
    v369 = *MEMORY[0x1E69A9878];
    v697 = *(v716 + 104);
    (v697)(v683, v369, v717);
    v370 = v777;
    sub_1C4EFF778();
    v186 = v370;
    if (v370)
    {

      sub_1C4434000(v628, v629);
      sub_1C4434000(v630, v631);
      sub_1C4434000(v632, v633);
      sub_1C4434000(v634, v635);
      sub_1C4434000(v636, v637);
      sub_1C4434000(v638, v639);
      sub_1C4434000(v640, v641);
      sub_1C4434000(v642, v643);
      sub_1C4434000(v644, v645);
      sub_1C4434000(v646, v647);
      sub_1C4434000(v648, v649);
      sub_1C4434000(v650, v651);
      sub_1C4434000(v652, v653);
      (*(v716 + 8))(v683, v717);
      sub_1C4420C3C(v757, &qword_1EC0C4DE8, &unk_1C4F5E320);
      sub_1C4420C3C(v759, &qword_1EC0B84B8, &unk_1C4F0D4F0);
      sub_1C4420C3C(v758, &qword_1EC0C4DF0, &unk_1C4F5E330);
      (*(v762 + 8))(v760, v761);
      goto LABEL_78;
    }

    v371 = *(v716 + 8);
    v372 = v683;
    v716 += 8;
    v683 = v371;
    (v371)(v372, v717);
    v373 = sub_1C4C1F9D0(v681);
    v777 = 0;
    v374 = v373;
    (*(v685 + 8))(v681, v686);
    v375 = v672;
    sub_1C48687B8(v374, v672);

    if (sub_1C44157D4(v375, 1, v761) == 1)
    {
      sub_1C4420C3C(v672, &qword_1EC0C4E00, &unk_1C4F5E340);
      if (qword_1EDDFECD0 != -1)
      {
        swift_once();
      }

      v376 = sub_1C4F00978();
      v767 = sub_1C442B738(v376, qword_1EDE2DF70);
      v377 = v667;
      v378 = v654;
      v379 = v626;
      v626(v667, v769, v654);
      v379(v678, v377, v378);
      v380 = v766;
      v381 = (*(v766 + 80) + 16) & ~*(v766 + 80);
      v382 = swift_allocObject();
      v765 = *(v380 + 32);
      (v765)(&v382[v381], v377, v378);
      v383 = swift_allocObject();
      v768 = v383;
      *(v383 + 16) = sub_1C4C2F804;
      *(v383 + 24) = v382;
      v384 = v670;
      v379(v670, v764, v378);
      v379(v687, v384, v378);
      v385 = swift_allocObject();
      (v765)(v385 + v381, v384, v378);
      v386 = swift_allocObject();
      *(v386 + 16) = sub_1C4C2F804;
      *(v386 + 24) = v385;
      v387 = v386;
      v765 = v386;
      v755 = v382;

      v756 = v385;

      v767 = sub_1C4F00968();
      LODWORD(v763) = sub_1C4F01CB8();
      v388 = swift_allocObject();
      *(v388 + 16) = 32;
      v389 = v388;
      v749 = swift_allocObject();
      *(v749 + 16) = 8;
      v390 = swift_allocObject();
      v391 = v768;
      *(v390 + 16) = sub_1C4C2F800;
      *(v390 + 24) = v391;
      v392 = swift_allocObject();
      *(v392 + 16) = sub_1C4B0E9F8;
      *(v392 + 24) = v390;
      v393 = swift_allocObject();
      v393[16] = 32;
      v394 = swift_allocObject();
      *(v394 + 16) = 8;
      v395 = swift_allocObject();
      *(v395 + 16) = sub_1C4C2F800;
      *(v395 + 24) = v387;
      v396 = swift_allocObject();
      *(v396 + 16) = sub_1C4B0E9F8;
      *(v396 + 24) = v395;
      sub_1C456902C(&qword_1EC0BBF38, &unk_1C4F4B420);
      v397 = swift_allocObject();
      *(v397 + 16) = xmmword_1C4F0F820;
      *(v397 + 32) = sub_1C44549F4;
      *(v397 + 40) = v389;
      v398 = v749;
      *(v397 + 48) = sub_1C44549F4;
      *(v397 + 56) = v398;
      *(v397 + 64) = sub_1C4454C38;
      *(v397 + 72) = v392;
      *(v397 + 80) = sub_1C44549F4;
      *(v397 + 88) = v393;
      *(v397 + 96) = sub_1C44549F4;
      *(v397 + 104) = v394;
      *(v397 + 112) = sub_1C4454C38;
      *(v397 + 120) = v396;
      swift_setDeallocating();

      v750 = v390;

      v752 = v395;

      v754 = v393;

      v753 = v394;

      v751 = v396;

      sub_1C49E1614();
      if (os_log_type_enabled(v767, v763))
      {
        v399 = swift_slowAlloc();
        v748 = swift_slowAlloc();
        v774 = v748;
        *v399 = 514;
        *(v399 + 2) = 32;

        *(v399 + 3) = 8;

        sub_1C4C2F284(&qword_1EDDFE810, MEMORY[0x1E69A9810], MEMORY[0x1E69A9840]);
        v400 = v678;
        v401 = v654;
        v402 = sub_1C4F02858();
        v404 = sub_1C441D828(v402, v403, &v774);

        *(v399 + 4) = v404;

        v405 = *(v766 + 8);
        v768 = (v766 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v405(v400, v401);
        *(v399 + 12) = 32;

        *(v399 + 13) = 8;

        v406 = v687;
        v407 = sub_1C4F02858();
        v409 = sub_1C441D828(v407, v408, &v774);

        *(v399 + 14) = v409;

        v410 = v405;
        v405(v406, v401);
        v411 = v767;
        _os_log_impl(&dword_1C43F8000, v767, v763, "Couldn't find a life event before trip with segmentId: %s, lifeEventId: %s.", v399, 0x16u);
        v412 = v748;
        swift_arrayDestroy();
        MEMORY[0x1C6942830](v412, -1, -1);
        MEMORY[0x1C6942830](v399, -1, -1);
      }

      else
      {

        v414 = *(v766 + 8);
        v768 = (v766 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v415 = v654;
        v414(v678, v654);

        v410 = v414;
        v414(v687, v415);
      }

      sub_1C456902C(&qword_1EC0BCD10, &qword_1C4F0C8C0);
      v200 = sub_1C4F00F28();
      sub_1C4434000(v628, v629);
      sub_1C4434000(v630, v631);
      sub_1C4434000(v632, v633);
      sub_1C4434000(v634, v635);
      sub_1C4434000(v636, v637);
      sub_1C4434000(v638, v639);
      sub_1C4434000(v640, v641);
      sub_1C4434000(v642, v643);
      sub_1C4434000(v644, v645);
      sub_1C4434000(v646, v647);
      sub_1C4434000(v648, v649);
      sub_1C4434000(v650, v651);
      sub_1C4434000(v652, v653);
      sub_1C4420C3C(v757, &qword_1EC0C4DE8, &unk_1C4F5E320);
      sub_1C4420C3C(v759, &qword_1EC0B84B8, &unk_1C4F0D4F0);
      sub_1C4420C3C(v758, &qword_1EC0C4DF0, &unk_1C4F5E330);
      (*(v762 + 8))(v760, v761);
      v416 = v654;
      v410(v764, v654);
      result = (v410)(v769, v416);
      goto LABEL_63;
    }

    v352(v756, v672, v761);
    LODWORD(v687) = *MEMORY[0x1E69A9880];
    (v697)(v691);
    v413 = v777;
    sub_1C4EFF768();
    v777 = v413;
    if (v413)
    {

      sub_1C4434000(v628, v629);
      sub_1C4434000(v630, v631);
      sub_1C4434000(v632, v633);
      sub_1C4434000(v634, v635);
      sub_1C4434000(v636, v637);
      sub_1C4434000(v638, v639);
      sub_1C4434000(v640, v641);
      sub_1C4434000(v642, v643);
      sub_1C4434000(v644, v645);
      sub_1C4434000(v646, v647);
      sub_1C4434000(v648, v649);
      sub_1C4434000(v650, v651);
      sub_1C4434000(v652, v653);
      (v683)(v691, v717);
LABEL_258:
      v419 = *(v762 + 8);
      v420 = v761;
      v419(v756, v761);
      sub_1C4420C3C(v757, &qword_1EC0C4DE8, &unk_1C4F5E320);
      sub_1C4420C3C(v759, &qword_1EC0B84B8, &unk_1C4F0D4F0);
      sub_1C4420C3C(v758, &qword_1EC0C4DF0, &unk_1C4F5E330);
      v419(v760, v420);
      v311 = *(v766 + 8);
      v312 = v654;
      v311(v764, v654);
      result = (v311)(v769, v312);
      v186 = v777;
      goto LABEL_79;
    }

    (v683)(v691, v717);
    v417 = v777;
    v418 = sub_1C4C201BC(v692);
    v777 = v417;
    if (v417)
    {

      sub_1C4434000(v628, v629);
      sub_1C4434000(v630, v631);
      sub_1C4434000(v632, v633);
      sub_1C4434000(v634, v635);
      sub_1C4434000(v636, v637);
      sub_1C4434000(v638, v639);
      sub_1C4434000(v640, v641);
      sub_1C4434000(v642, v643);
      sub_1C4434000(v644, v645);
      sub_1C4434000(v646, v647);
      sub_1C4434000(v648, v649);
      sub_1C4434000(v650, v651);
      sub_1C4434000(v652, v653);
      (*(v695 + 8))(v692, v696);
      goto LABEL_258;
    }

    v421 = v418;
    (*(v695 + 8))(v692, v696);
    v422 = v677;
    sub_1C48687B8(v421, v677);

    if (sub_1C44157D4(v422, 1, v761) == 1)
    {
      sub_1C4420C3C(v677, &qword_1EC0C4E00, &unk_1C4F5E340);
      if (qword_1EDDFECD0 != -1)
      {
        swift_once();
      }

      v423 = sub_1C4F00978();
      v767 = sub_1C442B738(v423, qword_1EDE2DF70);
      v424 = v673;
      v425 = v654;
      v426 = v626;
      v626(v673, v769, v654);
      v426(v688, v424, v425);
      v427 = v766;
      v428 = (*(v766 + 80) + 16) & ~*(v766 + 80);
      v429 = swift_allocObject();
      v765 = *(v427 + 32);
      (v765)(v429 + v428, v424, v425);
      v430 = swift_allocObject();
      v768 = v430;
      *(v430 + 16) = sub_1C4C2F804;
      *(v430 + 24) = v429;
      v431 = v676;
      v426(v676, v764, v425);
      v426(v693, v431, v425);
      v432 = swift_allocObject();
      (v765)(&v432[v428], v431, v425);
      v433 = swift_allocObject();
      *(v433 + 16) = sub_1C4C2C870;
      *(v433 + 24) = v432;
      v434 = v433;
      v765 = v433;
      v753 = v429;

      v754 = v432;

      v767 = sub_1C4F00968();
      LODWORD(v763) = sub_1C4F01CB8();
      v435 = swift_allocObject();
      *(v435 + 16) = 32;
      v436 = v435;
      v755 = swift_allocObject();
      v755[16] = 8;
      v437 = swift_allocObject();
      v438 = v768;
      *(v437 + 16) = sub_1C4C2F800;
      *(v437 + 24) = v438;
      v439 = swift_allocObject();
      *(v439 + 16) = sub_1C4B0E9F8;
      *(v439 + 24) = v437;
      v440 = swift_allocObject();
      *(v440 + 16) = 32;
      v441 = swift_allocObject();
      *(v441 + 16) = 8;
      v442 = swift_allocObject();
      *(v442 + 16) = sub_1C4C2F800;
      *(v442 + 24) = v434;
      v443 = swift_allocObject();
      *(v443 + 16) = sub_1C4B0E9F8;
      *(v443 + 24) = v442;
      sub_1C456902C(&qword_1EC0BBF38, &unk_1C4F4B420);
      v444 = swift_allocObject();
      *(v444 + 16) = xmmword_1C4F0F820;
      *(v444 + 32) = sub_1C44549F4;
      *(v444 + 40) = v436;
      v445 = v755;
      *(v444 + 48) = sub_1C44549F4;
      *(v444 + 56) = v445;
      *(v444 + 64) = sub_1C4454C38;
      *(v444 + 72) = v439;
      *(v444 + 80) = sub_1C44549F4;
      *(v444 + 88) = v440;
      *(v444 + 96) = sub_1C44549F4;
      *(v444 + 104) = v441;
      *(v444 + 112) = sub_1C4454C38;
      *(v444 + 120) = v443;
      swift_setDeallocating();

      v748 = v437;

      v750 = v442;

      v752 = v440;

      v751 = v441;

      v749 = v443;

      sub_1C49E1614();
      if (os_log_type_enabled(v767, v763))
      {
        v446 = swift_slowAlloc();
        v747 = swift_slowAlloc();
        v774 = v747;
        *v446 = 514;
        *(v446 + 2) = 32;

        *(v446 + 3) = 8;

        sub_1C4C2F284(&qword_1EDDFE810, MEMORY[0x1E69A9810], MEMORY[0x1E69A9840]);
        v447 = v688;
        v448 = v654;
        v449 = sub_1C4F02858();
        v451 = sub_1C441D828(v449, v450, &v774);

        *(v446 + 4) = v451;

        v452 = *(v766 + 8);
        v452(v447, v448);
        *(v446 + 12) = 32;

        *(v446 + 13) = 8;

        v453 = v693;
        v454 = sub_1C4F02858();
        v456 = sub_1C441D828(v454, v455, &v774);

        *(v446 + 14) = v456;

        v452(v453, v448);
        v457 = v767;
        _os_log_impl(&dword_1C43F8000, v767, v763, "Couldn't find a life event after trip with segmentId: %s, lifeEventId: %s.", v446, 0x16u);
        v458 = v747;
        swift_arrayDestroy();
        MEMORY[0x1C6942830](v458, -1, -1);
        MEMORY[0x1C6942830](v446, -1, -1);
      }

      else
      {

        v452 = *(v766 + 8);
        v460 = v654;
        v452(v688, v654);

        v452(v693, v460);
      }

      sub_1C456902C(&qword_1EC0BCD10, &qword_1C4F0C8C0);
      v200 = sub_1C4F00F28();
      sub_1C4434000(v628, v629);
      sub_1C4434000(v630, v631);
      sub_1C4434000(v632, v633);
      sub_1C4434000(v634, v635);
      sub_1C4434000(v636, v637);
      sub_1C4434000(v638, v639);
      sub_1C4434000(v640, v641);
      sub_1C4434000(v642, v643);
      sub_1C4434000(v644, v645);
      sub_1C4434000(v646, v647);
      sub_1C4434000(v648, v649);
      sub_1C4434000(v650, v651);
      sub_1C4434000(v652, v653);
      v461 = *(v762 + 8);
      v462 = v761;
      v461(v756, v761);
      sub_1C4420C3C(v757, &qword_1EC0C4DE8, &unk_1C4F5E320);
      sub_1C4420C3C(v759, &qword_1EC0B84B8, &unk_1C4F0D4F0);
      sub_1C4420C3C(v758, &qword_1EC0C4DF0, &unk_1C4F5E330);
      v461(v760, v462);
      v463 = v654;
      v452(v764, v654);
      result = (v452)(v769, v463);
      goto LABEL_63;
    }

    v352(v753, v677, v761);
    v459 = v680;
    sub_1C4EFFA18();
    if (sub_1C44157D4(v459, 1, v354) == 1)
    {
      sub_1C4420C3C(v680, &qword_1EC0C0CC8, &unk_1C4F405F0);
      sub_1C440BAA8(v679, 1, 1, v699);
    }

    else
    {
      v464 = v679;
      v465 = v680;
      sub_1C4EFFC58();
      (*(*(v354 - 8) + 8))(v465, v354);
      if (sub_1C44157D4(v464, 1, v699) != 1)
      {
        v359(v682, v679, v699);
        goto LABEL_272;
      }
    }

    sub_1C4EF9AC8();
    if (sub_1C44157D4(v679, 1, v699) != 1)
    {
      sub_1C4420C3C(v679, &unk_1EC0B84E0, qword_1C4F0D2D0);
    }

LABEL_272:
    v466 = v690;
    sub_1C4EFFA18();
    if (sub_1C44157D4(v466, 1, v354) == 1)
    {
      sub_1C4420C3C(v690, &qword_1EC0C0CC8, &unk_1C4F405F0);
      sub_1C440BAA8(*&v689, 1, 1, v699);
    }

    else
    {
      v467 = *&v689;
      v468 = v690;
      sub_1C4EFFC48();
      (*(*(v354 - 8) + 8))(v468, v354);
      if (sub_1C44157D4(v467, 1, v699) != 1)
      {
        v359(v684, *&v689, v699);
        goto LABEL_278;
      }
    }

    sub_1C4EF9AC8();
    if (sub_1C44157D4(*&v689, 1, v699) != 1)
    {
      sub_1C4420C3C(*&v689, &unk_1EC0B84E0, qword_1C4F0D2D0);
    }

LABEL_278:
    sub_1C4C2BCB8(v682, v684, v755);
    v469 = v698;
    sub_1C4EFFA18();
    if (sub_1C44157D4(v469, 1, v354) == 1)
    {
      sub_1C4420C3C(v698, &qword_1EC0C0CC8, &unk_1C4F405F0);
      sub_1C440BAA8(v694, 1, 1, v699);
    }

    else
    {
      v470 = v694;
      v471 = v698;
      sub_1C4EFFC58();
      (*(*(v354 - 8) + 8))(v471, v354);
      if (sub_1C44157D4(v470, 1, v699) != 1)
      {
        v359(v700, v694, v699);
        goto LABEL_284;
      }
    }

    sub_1C4EF9AC8();
    if (sub_1C44157D4(v694, 1, v699) != 1)
    {
      sub_1C4420C3C(v694, &unk_1EC0B84E0, qword_1C4F0D2D0);
    }

LABEL_284:
    v472 = v705;
    sub_1C4EFFA18();
    if (sub_1C44157D4(v472, 1, v354) == 1)
    {
      sub_1C4420C3C(v705, &qword_1EC0C0CC8, &unk_1C4F405F0);
      sub_1C440BAA8(v703, 1, 1, v699);
    }

    else
    {
      v473 = v703;
      v474 = v705;
      sub_1C4EFFC48();
      (*(*(v354 - 8) + 8))(v474, v354);
      if (sub_1C44157D4(v473, 1, v699) != 1)
      {
        v359(v701, v703, v699);
        goto LABEL_290;
      }
    }

    sub_1C4EF9AC8();
    if (sub_1C44157D4(v703, 1, v699) != 1)
    {
      sub_1C4420C3C(v703, &unk_1EC0B84E0, qword_1C4F0D2D0);
    }

LABEL_290:
    sub_1C4C2BCB8(v700, v701, v754);
    (v697)(v706, v687, v717);
    v475 = v777;
    sub_1C4EFF758();
    v186 = v475;
    if (v475)
    {

      sub_1C4434000(v628, v629);
      sub_1C4434000(v630, v631);
      sub_1C4434000(v632, v633);
      sub_1C4434000(v634, v635);
      sub_1C4434000(v636, v637);
      sub_1C4434000(v638, v639);
      sub_1C4434000(v640, v641);
      sub_1C4434000(v642, v643);
      sub_1C4434000(v644, v645);
      sub_1C4434000(v646, v647);
      sub_1C4434000(v648, v649);
      sub_1C4434000(v650, v651);
      sub_1C4434000(v652, v653);
      (v683)(v706, v717);
LABEL_302:
      sub_1C4420C3C(v754, &qword_1EC0B84B8, &unk_1C4F0D4F0);
      sub_1C4420C3C(v755, &qword_1EC0B84B8, &unk_1C4F0D4F0);
      v550 = *(v762 + 8);
      v551 = v761;
      v550(v753, v761);
      v550(v756, v551);
      sub_1C4420C3C(v757, &qword_1EC0C4DE8, &unk_1C4F5E320);
      sub_1C4420C3C(v759, &qword_1EC0B84B8, &unk_1C4F0D4F0);
      sub_1C4420C3C(v758, &qword_1EC0C4DF0, &unk_1C4F5E330);
      v550(v760, v551);
      goto LABEL_78;
    }

    (v683)(v706, v717);
    sub_1C45438E8(v709, v476, v477, v478, v479, v480, v481, v482, v625, v626, v627, v628, v629, v630, v631, v632, v633, v634, v635, v636);
    v706 = v483;
    v484 = *(isa + 1);
    v484(v709, v715);
    (v697)(v708, v687, v717);
    sub_1C4EFF758();
    (v683)(v708, v717);
    sub_1C45438E8(v711, v485, v486, v487, v488, v489, v490, v491, v625, v626, v627, v628, v629, v630, v631, v632, v633, v634, v635, v636);
    isa = v492;
    v484(v711, v715);
    (v697)(v710, v687, v717);
    sub_1C4EFF758();
    (v683)(v710, v717);
    sub_1C45438E8(v713, v493, v494, v495, v496, v497, v498, v499, v625, v626, v627, v628, v629, v630, v631, v632, v633, v634, v635, v636);
    v717 = v500;
    v777 = 0;
    v484(v713, v715);
    if (!*(v706 + 2) || !*(v717 + 16))
    {
      if (qword_1EDDFECD0 != -1)
      {
        swift_once();
      }

      v501 = sub_1C4F00978();
      v715 = sub_1C442B738(v501, qword_1EDE2DF70);
      v502 = v702;
      v503 = v654;
      v504 = v626;
      v626(v702, v769, v654);
      v504(v707, v502, v503);
      v505 = v766;
      v506 = (*(v766 + 80) + 16) & ~*(v766 + 80);
      v507 = swift_allocObject();
      v713 = *(v505 + 32);
      v713(v507 + v506, v502, v503);
      v508 = swift_allocObject();
      v716 = v508;
      *(v508 + 16) = sub_1C4C2F804;
      *(v508 + 24) = v507;
      v509 = v704;
      v504(v704, v764, v503);
      v504(v712, v509, v503);
      v510 = swift_allocObject();
      v713(&v510[v506], v509, v503);
      v511 = swift_allocObject();
      *(v511 + 16) = sub_1C4C2F804;
      *(v511 + 24) = v510;
      v710 = v507;

      v713 = v510;

      v715 = sub_1C4F00968();
      LODWORD(v709) = sub_1C4F01CD8();
      v512 = swift_allocObject();
      v512[16] = 32;
      v513 = v512;
      v700 = v512;
      v701 = swift_allocObject();
      *(v701 + 16) = 8;
      v514 = swift_allocObject();
      v515 = v716;
      *(v514 + 16) = sub_1C4C2F800;
      *(v514 + 24) = v515;
      v516 = swift_allocObject();
      *(v516 + 16) = sub_1C4B0E9F8;
      *(v516 + 24) = v514;
      v517 = swift_allocObject();
      *(v517 + 16) = 32;
      v518 = swift_allocObject();
      *(v518 + 16) = 8;
      v519 = swift_allocObject();
      *(v519 + 16) = sub_1C4C2F800;
      *(v519 + 24) = v511;
      v520 = swift_allocObject();
      *(v520 + 16) = sub_1C4B0E9F8;
      *(v520 + 24) = v519;
      sub_1C456902C(&qword_1EC0BBF38, &unk_1C4F4B420);
      v521 = swift_allocObject();
      *(v521 + 16) = xmmword_1C4F0F820;
      *(v521 + 32) = sub_1C44549F4;
      *(v521 + 40) = v513;
      v522 = v701;
      *(v521 + 48) = sub_1C44549F4;
      *(v521 + 56) = v522;
      *(v521 + 64) = sub_1C4454C38;
      *(v521 + 72) = v516;
      *(v521 + 80) = sub_1C44549F4;
      *(v521 + 88) = v517;
      *(v521 + 96) = sub_1C44549F4;
      *(v521 + 104) = v518;
      *(v521 + 112) = sub_1C4454C38;
      *(v521 + 120) = v520;
      swift_setDeallocating();

      v702 = v514;

      v711 = v511;

      v708 = v519;

      v704 = v517;

      v703 = v518;

      v705 = v520;

      sub_1C49E1614();
      if (os_log_type_enabled(v715, v709))
      {
        v523 = swift_slowAlloc();
        v524 = swift_slowAlloc();
        v774 = v524;
        *v523 = 514;
        *(v523 + 2) = 32;

        *(v523 + 3) = 8;

        sub_1C4C2F284(&qword_1EDDFE810, MEMORY[0x1E69A9810], MEMORY[0x1E69A9840]);
        v525 = v707;
        v526 = v654;
        v527 = sub_1C4F02858();
        v529 = sub_1C441D828(v527, v528, &v774);

        *(v523 + 4) = v529;

        v530 = *(v766 + 8);
        v530(v525, v526);
        *(v523 + 12) = 32;

        *(v523 + 13) = 8;

        v531 = v712;
        v532 = sub_1C4F02858();
        v534 = sub_1C441D828(v532, v533, &v774);

        *(v523 + 14) = v534;

        v530(v531, v526);
        v535 = v715;
        _os_log_impl(&dword_1C43F8000, v715, v709, "Couldn't find a life event either before or after this trip, segmentId: %s, lifeEventId: %s.", v523, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1C6942830](v524, -1, -1);
        MEMORY[0x1C6942830](v523, -1, -1);
      }

      else
      {

        v536 = *(v766 + 8);
        v537 = v654;
        v536(v707, v654);

        v536(v712, v537);
      }
    }

    sub_1C456902C(&qword_1EC0C4E18, &qword_1C4F5E350);
    v538 = (sub_1C456902C(&qword_1EC0C4E20, &qword_1C4F5E358) - 8);
    v539 = (*(*v538 + 80) + 32) & ~*(*v538 + 80);
    v540 = swift_allocObject();
    v695 = xmmword_1C4F0D130;
    *(v540 + 16) = xmmword_1C4F0D130;
    v541 = v540 + v539;
    v542 = v538[14];
    v693 = objc_opt_self();
    v543 = [v693 miles];
    v544 = sub_1C4461BB8(0, &qword_1EC0C4E28, 0x1E696B058);
    v545 = v731;
    v692 = v544;
    sub_1C4EF93F8();
    sub_1C4EFE1D8();
    v546 = *(v720 + 8);
    v720 += 8;
    v700 = v546;
    (v546)(v545, v722);
    *(v541 + v542) = 1;
    sub_1C4EFE1E8();
    sub_1C4C2F284(&qword_1EC0C4E30, MEMORY[0x1E69A9630], MEMORY[0x1E69A9638]);
    v716 = sub_1C4F00F28();
    v691 = objc_opt_self();
    v547 = [v691 seconds];
    v690 = sub_1C4461BB8(0, &qword_1EC0C27A8, 0x1E696B008);
    sub_1C4EF93F8();
    sub_1C456902C(&qword_1EC0C4E38, &qword_1C4F5E360);
    sub_1C4C2C874();
    v548 = v777;
    sub_1C4EF9328();
    v186 = v548;
    if (v548)
    {

      sub_1C4434000(v628, v629);
      sub_1C4434000(v630, v631);
      sub_1C4434000(v632, v633);
      sub_1C4434000(v634, v635);
      sub_1C4434000(v636, v637);
      sub_1C4434000(v638, v639);
      sub_1C4434000(v640, v641);
      sub_1C4434000(v642, v643);
      sub_1C4434000(v644, v645);
      sub_1C4434000(v646, v647);
      sub_1C4434000(v648, v649);
      sub_1C4434000(v650, v651);
      sub_1C4434000(v652, v653);
      (*(v752 + 8))(v750, v751);
      goto LABEL_302;
    }

    v715 = sub_1C4C2EAC8(v774);

    sub_1C4EF9328();
    v713 = sub_1C4C2E76C(v774);

    sub_1C456902C(&qword_1EC0C4E50, &qword_1C4F5E368);
    v777 = sub_1C4C2EE24();
    sub_1C4EF9328();
    v712 = sub_1C4C2E410(v774);

    sub_1C456902C(&qword_1EC0C4E68, &qword_1C4F5E370);
    sub_1C4C2EEE0();
    sub_1C4EF9328();
    v711 = sub_1C4C2E0B4(v774);

    sub_1C4EF9328();
    v710 = sub_1C4C2DD58(v774);

    sub_1C456902C(&qword_1EC0C4E80, &qword_1C4F5E378);
    sub_1C4C2EF9C();
    sub_1C4EF9328();
    v709 = sub_1C4C2D9FC(v774);

    sub_1C456902C(&qword_1EC0C4E98, &qword_1C4F5E380);
    sub_1C4C2F058();
    sub_1C4EF9328();
    v708 = sub_1C4C2D6A0(v774);

    sub_1C456902C(&qword_1EC0C4EB0, &qword_1C4F5E388);
    sub_1C4C2F114();
    sub_1C4EF9328();
    sub_1C45440B0(v774);
    v707 = v549;

    sub_1C4EF9328();
    v705 = sub_1C4C2D344(v774);

    sub_1C4EF9328();
    v704 = sub_1C4C2CFE8(v774);

    sub_1C4EF9328();
    v703 = sub_1C4C2CC8C(v774);

    sub_1C4EF9328();
    v702 = sub_1C4C2C930(v774);

    sub_1C4EF9328();
    sub_1C45440B0(v774);
    v701 = v552;

    v689 = v177 - v176;
    v553 = [objc_opt_self() metersPerSecond];
    sub_1C4461BB8(0, &qword_1EC0C4EC8, 0x1E696B078);
    sub_1C4EF93F8();
    v554 = objc_opt_self();
    v555 = [v554 kilowattHours];
    sub_1C4461BB8(0, &qword_1EC0C4ED0, 0x1E696B030);
    sub_1C4EF93F8();
    v556 = [v554 kilowattHours];
    sub_1C4EF93F8();
    v699 = sub_1C4F00F28();
    sub_1C456902C(&qword_1EC0C4ED8, &qword_1C4F5E390);
    v698 = sub_1C4F00F28();
    sub_1C456902C(&qword_1EC0C4EE0, &unk_1C4F5E398);
    v697 = sub_1C4F00F28();
    v696 = sub_1C4F00F28();
    sub_1C456902C(&qword_1EC0B8EC8, &unk_1C4F0E950);
    v557 = (*(v766 + 80) + 32) & ~*(v766 + 80);
    v558 = swift_allocObject();
    *(v558 + 16) = v695;
    v694 = v558;
    v559 = v654;
    v560 = v626;
    v626((v558 + v557), v764, v654);
    v561 = swift_allocObject();
    *(v561 + 16) = v695;
    *&v695 = v561;
    v560(v561 + v557, v769, v559);
    v562 = objc_autoreleasePoolPush();
    sub_1C456902C(&qword_1EC0C4EE8, &qword_1C4F5E3A8);
    sub_1C4C2F1D0();
    sub_1C4EF9328();
    v718 = sub_1C4C1F45C(v774);

    objc_autoreleasePoolPop(v562);
    v563 = v719;
    sub_1C4C1F5EC();
    v777 = 0;
    v564 = sub_1C456902C(&qword_1EC0C4F00, &unk_1C4F5E3B0);
    if (sub_1C44157D4(v563, 1, v564) == 1)
    {
      sub_1C4420C3C(v719, &qword_1EC0C4DB8, &qword_1C4F5E2D8);
      sub_1C440BAA8(v723, 1, 1, v739);
    }

    else
    {
      v565 = *(v564 + 48);
      v566 = v723;
      v567 = v719;
      v568 = v739;
      (*(v737 + 32))(v723, v719, v739);
      sub_1C440BAA8(v566, 0, 1, v568);
      (v700)(&v567[v565], v722);
    }

    v569 = *MEMORY[0x1E69A9DC8];
    v570 = v721;
    v571 = v739;
    v719 = *(v737 + 104);
    (v719)(v721, v569, v739);
    sub_1C440BAA8(v570, 0, 1, v571);
    v572 = *(v727 + 48);
    v573 = v725;
    sub_1C4460050(v723, v725, &qword_1EC0C4D38, &qword_1C4F5E2E0);
    sub_1C4460050(v570, v573 + v572, &qword_1EC0C4D38, &qword_1C4F5E2E0);
    if (sub_1C44157D4(v573, 1, v571) == 1)
    {
      sub_1C4420C3C(v721, &qword_1EC0C4D38, &qword_1C4F5E2E0);
      sub_1C4420C3C(v723, &qword_1EC0C4D38, &qword_1C4F5E2E0);
      if (sub_1C44157D4(v725 + v572, 1, v739) == 1)
      {
        sub_1C4420C3C(v725, &qword_1EC0C4D38, &qword_1C4F5E2E0);
        LODWORD(v763) = 1;
        goto LABEL_313;
      }
    }

    else
    {
      v574 = v725;
      sub_1C4460050(v725, v724, &qword_1EC0C4D38, &qword_1C4F5E2E0);
      if (sub_1C44157D4(v574 + v572, 1, v739) != 1)
      {
        v575 = v737;
        v576 = v725;
        v577 = v733;
        v578 = v739;
        (*(v737 + 32))(v733, v725 + v572, v739);
        sub_1C4C2F284(&qword_1EC0C4F08, MEMORY[0x1E69A9DD0], MEMORY[0x1E69A9DD8]);
        v579 = v724;
        LODWORD(v763) = sub_1C4F010B8();
        v580 = *(v575 + 8);
        v580(v577, v578);
        sub_1C4420C3C(v721, &qword_1EC0C4D38, &qword_1C4F5E2E0);
        sub_1C4420C3C(v723, &qword_1EC0C4D38, &qword_1C4F5E2E0);
        v580(v579, v578);
        sub_1C4420C3C(v576, &qword_1EC0C4D38, &qword_1C4F5E2E0);
LABEL_313:
        v581 = v726;
        v582 = v777;
        sub_1C4C1F5EC();
        v777 = v582;

        if (sub_1C44157D4(v581, 1, v564) == 1)
        {
          sub_1C4420C3C(v726, &qword_1EC0C4DB8, &qword_1C4F5E2D8);
          sub_1C440BAA8(v729, 1, 1, v739);
        }

        else
        {
          v583 = *(v564 + 48);
          v584 = v729;
          v585 = v726;
          v586 = v739;
          (*(v737 + 32))(v729, v726, v739);
          sub_1C440BAA8(v584, 0, 1, v586);
          (v700)(v585 + v583, v722);
        }

        v587 = v728;
        v588 = v739;
        (v719)(v728, *MEMORY[0x1E69A9DC0], v739);
        sub_1C440BAA8(v587, 0, 1, v588);
        v589 = *(v727 + 48);
        v590 = v738;
        sub_1C4460050(v729, v738, &qword_1EC0C4D38, &qword_1C4F5E2E0);
        sub_1C4460050(v587, v590 + v589, &qword_1EC0C4D38, &qword_1C4F5E2E0);
        if (sub_1C44157D4(v590, 1, v588) == 1)
        {
          sub_1C4420C3C(v728, &qword_1EC0C4D38, &qword_1C4F5E2E0);
          sub_1C4420C3C(v729, &qword_1EC0C4D38, &qword_1C4F5E2E0);
          if (sub_1C44157D4(v738 + v589, 1, v739) == 1)
          {
            sub_1C4420C3C(v738, &qword_1EC0C4D38, &qword_1C4F5E2E0);
            LODWORD(v727) = 1;
LABEL_323:
            v599 = v693;
            v600 = [v693 meters];
            sub_1C4EF93F8();
            v601 = [v599 meters];
            sub_1C4EF93F8();
            v602 = [v691 seconds];
            v603 = v689;
            sub_1C4EF93F8();
            (*(v752 + 16))(v735, v750, v751);
            (*(v746 + 16))(v736, v743, v747);
            v604 = *(v748 + 16);
            v605 = v749;
            v604(v740, v745, v749);
            v604(v741, v744, v605);
            v606 = sub_1C4EFF638();
            swift_allocObject();
            v607 = sub_1C4EFF618();
            v608 = sub_1C4EFFA48();
            swift_allocObject();
            v609 = v742;

            v610 = MEMORY[0x1C693E720](v706, isa, v717, v609);
            sub_1C456902C(&qword_1EC0BA6C8, &qword_1C4F14640);
            v611 = swift_allocObject();
            *(v611 + 16) = xmmword_1C4F17CF0;
            v774 = sub_1C4F02908();
            v775 = v612;
            MEMORY[0x1C6940010](v767, v768);
            v613 = v775;
            *(v611 + 32) = v774;
            *(v611 + 40) = v613;
            v614 = v654;
            *(v611 + 72) = v654;
            v615 = sub_1C4422F90((v611 + 48));
            v616 = v769;
            v626(v615, v769, v614);
            *(v611 + 80) = 0x696669746E656469;
            *(v611 + 88) = 0xEA00000000007265;
            v617 = v770;
            *(v611 + 96) = v765;
            *(v611 + 104) = v617;
            *(v611 + 120) = MEMORY[0x1E69E6158];
            *(v611 + 128) = 0x6D69547472617473;
            *(v611 + 136) = 0xE900000000000065;
            *(v611 + 144) = v176;
            v618 = MEMORY[0x1E69E63B0];
            *(v611 + 168) = MEMORY[0x1E69E63B0];
            *(v611 + 176) = 0x656D6954646E65;
            *(v611 + 184) = 0xE700000000000000;
            *(v611 + 192) = v177;
            *(v611 + 216) = v618;
            *(v611 + 224) = 0x65726F6373;
            *(v611 + 232) = 0xE500000000000000;
            *(v611 + 240) = v180;
            *(v611 + 264) = v618;
            *(v611 + 272) = 0x65636E6174736964;
            *(v611 + 280) = 0xE800000000000000;
            *(v611 + 288) = v178;
            *(v611 + 312) = v618;
            strcpy((v611 + 320), "elevationGain");
            *(v611 + 334) = -4864;
            *(v611 + 336) = v179;
            *(v611 + 360) = v618;
            *(v611 + 368) = 0x6E6F697461727564;
            *(v611 + 376) = 0xE800000000000000;
            *(v611 + 384) = v603;
            *(v611 + 408) = v618;
            *(v611 + 416) = 0x6177686769487369;
            *(v611 + 424) = 0xE900000000000079;
            v619 = MEMORY[0x1E69E6370];
            *(v611 + 432) = v763 & 1;
            *(v611 + 456) = v619;
            *(v611 + 464) = 0x797469437369;
            *(v611 + 472) = 0xE600000000000000;
            *(v611 + 480) = v727 & 1;
            *(v611 + 504) = v619;
            *(v611 + 512) = 0x656D614E64616F72;
            *(v611 + 520) = 0xE900000000000073;
            *(v611 + 528) = 0u;
            *(v611 + 544) = 0u;
            *(v611 + 560) = 0x65746E6F4373746BLL;
            *(v611 + 568) = 0xEA00000000007478;
            *(v611 + 600) = v608;
            *(v611 + 576) = v610;
            *(v611 + 608) = 0x6174614473746BLL;
            *(v611 + 616) = 0xE700000000000000;
            *(v611 + 648) = v606;
            *(v611 + 624) = v607;

            sub_1C456902C(&qword_1EC0BCD10, &qword_1C4F0C8C0);
            v200 = sub_1C4F00F28();
            sub_1C4434000(v628, v629);
            sub_1C4434000(v630, v631);
            sub_1C4434000(v632, v633);
            sub_1C4434000(v634, v635);
            sub_1C4434000(v636, v637);
            sub_1C4434000(v638, v639);
            sub_1C4434000(v640, v641);
            sub_1C4434000(v642, v643);
            sub_1C4434000(v644, v645);
            sub_1C4434000(v646, v647);
            sub_1C4434000(v648, v649);
            sub_1C4434000(v650, v651);
            sub_1C4434000(v652, v653);

            v620 = *(v748 + 8);
            v621 = v749;
            v620(v744, v749);
            v620(v745, v621);
            (*(v746 + 8))(v743, v747);
            (*(v752 + 8))(v750, v751);
            sub_1C4420C3C(v754, &qword_1EC0B84B8, &unk_1C4F0D4F0);
            sub_1C4420C3C(v755, &qword_1EC0B84B8, &unk_1C4F0D4F0);
            v622 = *(v762 + 8);
            v623 = v761;
            v622(v753, v761);
            v622(v756, v623);
            sub_1C4420C3C(v757, &qword_1EC0C4DE8, &unk_1C4F5E320);
            sub_1C4420C3C(v759, &qword_1EC0B84B8, &unk_1C4F0D4F0);
            sub_1C4420C3C(v758, &qword_1EC0C4DF0, &unk_1C4F5E330);
            v622(v760, v623);
            v624 = *(v766 + 8);
            v624(v764, v614);
            result = (v624)(v616, v614);
LABEL_63:
            *v771 = v200;
            return result;
          }
        }

        else
        {
          v591 = v738;
          sub_1C4460050(v738, v730, &qword_1EC0C4D38, &qword_1C4F5E2E0);
          if (sub_1C44157D4(v591 + v589, 1, v739) != 1)
          {
            v592 = v737;
            v593 = v738;
            v594 = v738 + v589;
            v595 = v733;
            v596 = v739;
            (*(v737 + 32))(v733, v594, v739);
            sub_1C4C2F284(&qword_1EC0C4F08, MEMORY[0x1E69A9DD0], MEMORY[0x1E69A9DD8]);
            v597 = v730;
            LODWORD(v727) = sub_1C4F010B8();
            v598 = *(v592 + 8);
            v598(v595, v596);
            sub_1C4420C3C(v728, &qword_1EC0C4D38, &qword_1C4F5E2E0);
            sub_1C4420C3C(v729, &qword_1EC0C4D38, &qword_1C4F5E2E0);
            v598(v597, v596);
            sub_1C4420C3C(v593, &qword_1EC0C4D38, &qword_1C4F5E2E0);
            goto LABEL_323;
          }

          sub_1C4420C3C(v728, &qword_1EC0C4D38, &qword_1C4F5E2E0);
          sub_1C4420C3C(v729, &qword_1EC0C4D38, &qword_1C4F5E2E0);
          (*(v737 + 8))(v730, v739);
        }

        sub_1C4420C3C(v738, &qword_1EC0C4DB0, &qword_1C4F5E2D0);
        LODWORD(v727) = 0;
        goto LABEL_323;
      }

      sub_1C4420C3C(v721, &qword_1EC0C4D38, &qword_1C4F5E2E0);
      sub_1C4420C3C(v723, &qword_1EC0C4D38, &qword_1C4F5E2E0);
      (*(v737 + 8))(v724, v739);
    }

    sub_1C4420C3C(v725, &qword_1EC0C4DB0, &qword_1C4F5E2D0);
    LODWORD(v763) = 0;
    goto LABEL_313;
  }

  sub_1C4434000(v628, v629);
  sub_1C4434000(v630, v631);
  sub_1C4434000(v632, v633);
  sub_1C4434000(v634, v635);
  sub_1C4434000(v636, v637);
  sub_1C4434000(v638, v639);
  sub_1C4434000(v640, v641);
  sub_1C4434000(v642, v643);
  sub_1C4434000(v644, v645);
  sub_1C4434000(v646, v647);
  sub_1C4434000(v648, v649);
  sub_1C4434000(v650, v651);
  sub_1C4434000(v652, v653);
  v183 = *(v766 + 8);
  v184 = v654;
  v183(v764, v654);
  result = (v183)(v769, v184);
  v186 = v182;
LABEL_79:
  *v763 = v186;
  return result;
}

uint64_t sub_1C4C2BC88(uint64_t a1)
{
  v1 = *(a1 + 96);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v1;
}

uint64_t sub_1C4C2BCB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v32 = a1;
  v34 = a3;
  v4 = sub_1C456902C(&qword_1EC0B84B0, qword_1C4F0CDE0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v33 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v31 = &v29 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v29 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v29 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v29 - v16;
  v18 = sub_1C4EF9CD8();
  v19 = *(v18 - 8);
  v20 = *(v19 + 32);
  v20(v17, v32, v18);
  v20(&v17[*(v5 + 56)], a2, v18);
  v30 = v14;
  sub_1C4460050(v17, v14, &qword_1EC0B84B0, qword_1C4F0CDE0);
  v32 = *(v5 + 56);
  v29 = v11;
  sub_1C44CD9E0(v17, v11, &qword_1EC0B84B0, qword_1C4F0CDE0);
  v21 = *(v5 + 56);
  v22 = v31;
  v20(v31, v14, v18);
  v20((v22 + *(v5 + 56)), &v11[v21], v18);
  v23 = v33;
  sub_1C4460050(v22, v33, &qword_1EC0B84B0, qword_1C4F0CDE0);
  v24 = *(v5 + 56);
  v20(v34, v23, v18);
  v25 = *(v19 + 8);
  v25(v23 + v24, v18);
  sub_1C44CD9E0(v22, v23, &qword_1EC0B84B0, qword_1C4F0CDE0);
  v26 = *(v5 + 56);
  v27 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  v20(&v34[*(v27 + 36)], v23 + v26, v18);
  v25(v23, v18);
  v25(v29, v18);
  return (v25)(&v30[v32], v18);
}

uint64_t sub_1C4C2BFC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C4EFF0C8();
  sub_1C43FBCE0();
  v6 = *(v5 + 16);

  return v6(a2, a1, v4);
}

uint64_t sub_1C4C2C028()
{
  sub_1C440962C((v0 + 16));

  return v0;
}

uint64_t sub_1C4C2C0AC()
{
  sub_1C4C2C028();

  return swift_deallocClassInstance();
}

void sub_1C4C2C104()
{
  sub_1C43FE96C();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = _s10ViewConfigVMa(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  sub_1C43FBCC4();
  v13 = v12 - v11;
  if (qword_1EDDFECD0 != -1)
  {
    sub_1C4400FC0();
    swift_once();
  }

  v14 = sub_1C4F00978();
  sub_1C442B738(v14, qword_1EDE2DF70);
  v15 = sub_1C4F00968();
  v16 = sub_1C4F01CB8();
  if (sub_1C43FDD64(v16))
  {
    sub_1C43FD1A8();
    *swift_slowAlloc() = 0;
    sub_1C44179D4(&dword_1C43F8000, v17, v18, "KTSSegmentViewGenerationProvider: Giving the listener");
    v1 = v0;
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  sub_1C443A738(v9, v7, v19, v20, v21, v22, v23, v24);
  if (!v1)
  {
    ViewGeneration.ViewClients.storage(for:fullRebuild:)(v9, v7, v5 & 1);
    sub_1C456902C(&qword_1EC0C06F0, &unk_1C4F5BAD0);
    if (swift_dynamicCast())
    {
      memcpy(v53, v51, 0x48uLL);
      v25 = *(v13 + 144);
      if (v25)
      {
        *&v51[24] = sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
        *&v51[32] = sub_1C4401CBC(&qword_1EDDFCEC0, &unk_1EC0B9620, &unk_1C4F0E870, MEMORY[0x1E69E6328]);
        *v51 = v25;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v36 = sub_1C4C81ADC(v51);
        sub_1C440962C(v51);
        v37 = *(v3 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration11ViewClients_viewService);
        v38 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v39 = sub_1C4C2F3D4(v38);

        sub_1C4C687F0(v39, v51);

        v40 = sub_1C4F00968();
        v41 = sub_1C4F01CB8();
        if (sub_1C43FDD64(v41))
        {
          sub_1C43FD1A8();
          *swift_slowAlloc() = 0;
          sub_1C44179D4(&dword_1C43F8000, v42, v43, "KTSSegmentViewGenerationProvider: Got the loader");
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
        }

        v44 = sub_1C4C83D3C(v36);

        v45 = sub_1C4F00968();
        v46 = sub_1C4F01CB8();
        if (sub_1C43FDD64(v46))
        {
          sub_1C43FD1A8();
          *swift_slowAlloc() = 0;
          sub_1C44179D4(&dword_1C43F8000, v47, v48, "KTSSegmentViewGenerationProvider: Got the listener");
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
        }

        sub_1C442E860(v51, v52);
        _s23KTSSegmentViewGeneratorCMa();
        swift_allocObject();
        sub_1C4C209A8(v52, v53, v44, v37);
        sub_1C440962C(v51);
        sub_1C4407E24();
        sub_1C443CED4(v13, v49);
        goto LABEL_17;
      }

      sub_1C450B034();
      v1 = swift_allocError();
      *v27 = v9;
      *(v27 + 8) = v7;
      *(v27 + 16) = 0xD000000000000017;
      *(v27 + 24) = 0x80000001C4FBAA30;
      *(v27 + 32) = 0;
      *(v27 + 40) = 0xE000000000000000;
      *(v27 + 48) = *v51;
      *(v27 + 64) = 1;
      swift_willThrow();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4AF9888(v53);
    }

    else
    {
      sub_1C450B034();
      v1 = swift_allocError();
      *v26 = v9;
      *(v26 + 8) = v7;
      *(v26 + 16) = xmmword_1C4F5B670;
      *(v26 + 32) = 0xD000000000000025;
      *(v26 + 40) = 0x80000001C4FB83A0;
      *(v26 + 48) = v50;
      *(v26 + 64) = 0;
      swift_willThrow();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }

    sub_1C4407E24();
    sub_1C443CED4(v13, v28);
  }

  if (qword_1EDDFECB0 != -1)
  {
    swift_once();
  }

  sub_1C442B738(v14, qword_1EDDFECB8);
  v29 = v1;
  v30 = sub_1C4F00968();
  v31 = sub_1C4F01CD8();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = sub_1C43FD084();
    v33 = swift_slowAlloc();
    *v32 = 138412290;
    v34 = v1;
    v35 = _swift_stdlib_bridgeErrorToNSError();
    *(v32 + 4) = v35;
    *v33 = v35;
    _os_log_impl(&dword_1C43F8000, v30, v31, "KTSSegmentViewGenerationProvider error: %@", v32, 0xCu);
    sub_1C4420C3C(v33, &qword_1EC0BDA00, &qword_1C4F10D30);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  swift_willThrow();
LABEL_17:
  sub_1C43FBC80();
}

uint64_t sub_1C4C2C750()
{
  sub_1C4C2C104();
  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_1C4C2C874()
{
  result = qword_1EC0C4E40;
  if (!qword_1EC0C4E40)
  {
    sub_1C4572308(&qword_1EC0C4E38, &qword_1C4F5E360);
    sub_1C4C2F284(&qword_1EC0C4E48, MEMORY[0x1E69A9318], MEMORY[0x1E69A9320]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C4E40);
  }

  return result;
}

uint64_t sub_1C4C2C930(uint64_t a1)
{
  v38 = sub_1C456902C(&qword_1EC0C27B0, &unk_1C4F5E170);
  v2 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v36 = v29 - v3;
  v35 = sub_1C4EFF998();
  v4 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v33 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C456902C(&qword_1EC0C4F20, &qword_1C4F5E3C8);
  result = sub_1C4F02538();
  v7 = 0;
  v39 = a1;
  v10 = *(a1 + 64);
  v9 = a1 + 64;
  v8 = v10;
  v11 = 1 << *(v9 - 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v8;
  v14 = (v11 + 63) >> 6;
  v30 = result + 64;
  v31 = v4 + 16;
  v34 = v4;
  v37 = v2;
  v29[2] = v2 + 32;
  v29[3] = v4 + 32;
  v15 = result;
  v32 = result;
  if (v13)
  {
    while (1)
    {
      v16 = __clz(__rbit64(v13));
      v40 = (v13 - 1) & v13;
LABEL_10:
      v19 = v16 | (v7 << 6);
      v20 = *(v39 + 48);
      v21 = v33;
      v22 = v34;
      v41 = *(v34 + 72) * v19;
      v23 = v35;
      (*(v34 + 16))(v33, v20 + v41, v35);
      v24 = [objc_opt_self() seconds];
      sub_1C4461BB8(0, &qword_1EC0C27A8, 0x1E696B008);
      v25 = v36;
      sub_1C4EF93F8();
      *(v30 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v15 = v32;
      (*(v22 + 32))(*(v32 + 48) + v41, v21, v23);
      result = (*(v37 + 32))(*(v15 + 56) + *(v37 + 72) * v19, v25, v38);
      v26 = *(v15 + 16);
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        break;
      }

      *(v15 + 16) = v28;
      v13 = v40;
      if (!v40)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v7 >= v14)
      {
        return v15;
      }

      v18 = *(v9 + 8 * v7);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v40 = (v18 - 1) & v18;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C4C2CC8C(uint64_t a1)
{
  v38 = sub_1C456902C(&qword_1EC0C27B0, &unk_1C4F5E170);
  v2 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v36 = v29 - v3;
  v35 = sub_1C4EFD638();
  v4 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v33 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C456902C(&qword_1EC0C4F28, &qword_1C4F5E3D0);
  result = sub_1C4F02538();
  v7 = 0;
  v39 = a1;
  v10 = *(a1 + 64);
  v9 = a1 + 64;
  v8 = v10;
  v11 = 1 << *(v9 - 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v8;
  v14 = (v11 + 63) >> 6;
  v30 = result + 64;
  v31 = v4 + 16;
  v34 = v4;
  v37 = v2;
  v29[2] = v2 + 32;
  v29[3] = v4 + 32;
  v15 = result;
  v32 = result;
  if (v13)
  {
    while (1)
    {
      v16 = __clz(__rbit64(v13));
      v40 = (v13 - 1) & v13;
LABEL_10:
      v19 = v16 | (v7 << 6);
      v20 = *(v39 + 48);
      v21 = v33;
      v22 = v34;
      v41 = *(v34 + 72) * v19;
      v23 = v35;
      (*(v34 + 16))(v33, v20 + v41, v35);
      v24 = [objc_opt_self() seconds];
      sub_1C4461BB8(0, &qword_1EC0C27A8, 0x1E696B008);
      v25 = v36;
      sub_1C4EF93F8();
      *(v30 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v15 = v32;
      (*(v22 + 32))(*(v32 + 48) + v41, v21, v23);
      result = (*(v37 + 32))(*(v15 + 56) + *(v37 + 72) * v19, v25, v38);
      v26 = *(v15 + 16);
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        break;
      }

      *(v15 + 16) = v28;
      v13 = v40;
      if (!v40)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v7 >= v14)
      {
        return v15;
      }

      v18 = *(v9 + 8 * v7);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v40 = (v18 - 1) & v18;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C4C2CFE8(uint64_t a1)
{
  v38 = sub_1C456902C(&qword_1EC0C27B0, &unk_1C4F5E170);
  v2 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v36 = v29 - v3;
  v35 = sub_1C4EFDA38();
  v4 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v33 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C456902C(&qword_1EC0C4F30, &qword_1C4F5E3D8);
  result = sub_1C4F02538();
  v7 = 0;
  v39 = a1;
  v10 = *(a1 + 64);
  v9 = a1 + 64;
  v8 = v10;
  v11 = 1 << *(v9 - 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v8;
  v14 = (v11 + 63) >> 6;
  v30 = result + 64;
  v31 = v4 + 16;
  v34 = v4;
  v37 = v2;
  v29[2] = v2 + 32;
  v29[3] = v4 + 32;
  v15 = result;
  v32 = result;
  if (v13)
  {
    while (1)
    {
      v16 = __clz(__rbit64(v13));
      v40 = (v13 - 1) & v13;
LABEL_10:
      v19 = v16 | (v7 << 6);
      v20 = *(v39 + 48);
      v21 = v33;
      v22 = v34;
      v41 = *(v34 + 72) * v19;
      v23 = v35;
      (*(v34 + 16))(v33, v20 + v41, v35);
      v24 = [objc_opt_self() seconds];
      sub_1C4461BB8(0, &qword_1EC0C27A8, 0x1E696B008);
      v25 = v36;
      sub_1C4EF93F8();
      *(v30 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v15 = v32;
      (*(v22 + 32))(*(v32 + 48) + v41, v21, v23);
      result = (*(v37 + 32))(*(v15 + 56) + *(v37 + 72) * v19, v25, v38);
      v26 = *(v15 + 16);
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        break;
      }

      *(v15 + 16) = v28;
      v13 = v40;
      if (!v40)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v7 >= v14)
      {
        return v15;
      }

      v18 = *(v9 + 8 * v7);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v40 = (v18 - 1) & v18;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C4C2D344(uint64_t a1)
{
  v38 = sub_1C456902C(&qword_1EC0C27B0, &unk_1C4F5E170);
  v2 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v36 = v29 - v3;
  v35 = sub_1C4F00258();
  v4 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v33 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C456902C(&qword_1EC0C4F38, &qword_1C4F5E3E0);
  result = sub_1C4F02538();
  v7 = 0;
  v39 = a1;
  v10 = *(a1 + 64);
  v9 = a1 + 64;
  v8 = v10;
  v11 = 1 << *(v9 - 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v8;
  v14 = (v11 + 63) >> 6;
  v30 = result + 64;
  v31 = v4 + 16;
  v34 = v4;
  v37 = v2;
  v29[2] = v2 + 32;
  v29[3] = v4 + 32;
  v15 = result;
  v32 = result;
  if (v13)
  {
    while (1)
    {
      v16 = __clz(__rbit64(v13));
      v40 = (v13 - 1) & v13;
LABEL_10:
      v19 = v16 | (v7 << 6);
      v20 = *(v39 + 48);
      v21 = v33;
      v22 = v34;
      v41 = *(v34 + 72) * v19;
      v23 = v35;
      (*(v34 + 16))(v33, v20 + v41, v35);
      v24 = [objc_opt_self() seconds];
      sub_1C4461BB8(0, &qword_1EC0C27A8, 0x1E696B008);
      v25 = v36;
      sub_1C4EF93F8();
      *(v30 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v15 = v32;
      (*(v22 + 32))(*(v32 + 48) + v41, v21, v23);
      result = (*(v37 + 32))(*(v15 + 56) + *(v37 + 72) * v19, v25, v38);
      v26 = *(v15 + 16);
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        break;
      }

      *(v15 + 16) = v28;
      v13 = v40;
      if (!v40)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v7 >= v14)
      {
        return v15;
      }

      v18 = *(v9 + 8 * v7);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v40 = (v18 - 1) & v18;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C4C2D6A0(uint64_t a1)
{
  v38 = sub_1C456902C(&qword_1EC0C4D20, &qword_1C4F5E300);
  v2 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v36 = v29 - v3;
  v35 = sub_1C4EFD638();
  v4 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v33 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C456902C(&qword_1EC0C4F40, &qword_1C4F5E3E8);
  result = sub_1C4F02538();
  v7 = 0;
  v39 = a1;
  v10 = *(a1 + 64);
  v9 = a1 + 64;
  v8 = v10;
  v11 = 1 << *(v9 - 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v8;
  v14 = (v11 + 63) >> 6;
  v30 = result + 64;
  v31 = v4 + 16;
  v34 = v4;
  v37 = v2;
  v29[2] = v2 + 32;
  v29[3] = v4 + 32;
  v15 = result;
  v32 = result;
  if (v13)
  {
    while (1)
    {
      v16 = __clz(__rbit64(v13));
      v40 = (v13 - 1) & v13;
LABEL_10:
      v19 = v16 | (v7 << 6);
      v20 = *(v39 + 48);
      v21 = v33;
      v22 = v34;
      v41 = *(v34 + 72) * v19;
      v23 = v35;
      (*(v34 + 16))(v33, v20 + v41, v35);
      v24 = [objc_opt_self() meters];
      sub_1C4461BB8(0, &qword_1EC0C4E28, 0x1E696B058);
      v25 = v36;
      sub_1C4EF93F8();
      *(v30 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v15 = v32;
      (*(v22 + 32))(*(v32 + 48) + v41, v21, v23);
      result = (*(v37 + 32))(*(v15 + 56) + *(v37 + 72) * v19, v25, v38);
      v26 = *(v15 + 16);
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        break;
      }

      *(v15 + 16) = v28;
      v13 = v40;
      if (!v40)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v7 >= v14)
      {
        return v15;
      }

      v18 = *(v9 + 8 * v7);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v40 = (v18 - 1) & v18;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C4C2D9FC(uint64_t a1)
{
  v38 = sub_1C456902C(&qword_1EC0C4D20, &qword_1C4F5E300);
  v2 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v36 = v29 - v3;
  v35 = sub_1C4EFDA38();
  v4 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v33 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C456902C(&qword_1EC0C4F48, &qword_1C4F5E3F0);
  result = sub_1C4F02538();
  v7 = 0;
  v39 = a1;
  v10 = *(a1 + 64);
  v9 = a1 + 64;
  v8 = v10;
  v11 = 1 << *(v9 - 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v8;
  v14 = (v11 + 63) >> 6;
  v30 = result + 64;
  v31 = v4 + 16;
  v34 = v4;
  v37 = v2;
  v29[2] = v2 + 32;
  v29[3] = v4 + 32;
  v15 = result;
  v32 = result;
  if (v13)
  {
    while (1)
    {
      v16 = __clz(__rbit64(v13));
      v40 = (v13 - 1) & v13;
LABEL_10:
      v19 = v16 | (v7 << 6);
      v20 = *(v39 + 48);
      v21 = v33;
      v22 = v34;
      v41 = *(v34 + 72) * v19;
      v23 = v35;
      (*(v34 + 16))(v33, v20 + v41, v35);
      v24 = [objc_opt_self() meters];
      sub_1C4461BB8(0, &qword_1EC0C4E28, 0x1E696B058);
      v25 = v36;
      sub_1C4EF93F8();
      *(v30 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v15 = v32;
      (*(v22 + 32))(*(v32 + 48) + v41, v21, v23);
      result = (*(v37 + 32))(*(v15 + 56) + *(v37 + 72) * v19, v25, v38);
      v26 = *(v15 + 16);
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        break;
      }

      *(v15 + 16) = v28;
      v13 = v40;
      if (!v40)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v7 >= v14)
      {
        return v15;
      }

      v18 = *(v9 + 8 * v7);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v40 = (v18 - 1) & v18;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C4C2DD58(uint64_t a1)
{
  v38 = sub_1C456902C(&qword_1EC0C27B0, &unk_1C4F5E170);
  v2 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v36 = v29 - v3;
  v35 = sub_1C4EFE138();
  v4 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v33 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C456902C(&qword_1EC0C4F50, &qword_1C4F5E3F8);
  result = sub_1C4F02538();
  v7 = 0;
  v39 = a1;
  v10 = *(a1 + 64);
  v9 = a1 + 64;
  v8 = v10;
  v11 = 1 << *(v9 - 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v8;
  v14 = (v11 + 63) >> 6;
  v30 = result + 64;
  v31 = v4 + 16;
  v34 = v4;
  v37 = v2;
  v29[2] = v2 + 32;
  v29[3] = v4 + 32;
  v15 = result;
  v32 = result;
  if (v13)
  {
    while (1)
    {
      v16 = __clz(__rbit64(v13));
      v40 = (v13 - 1) & v13;
LABEL_10:
      v19 = v16 | (v7 << 6);
      v20 = *(v39 + 48);
      v21 = v33;
      v22 = v34;
      v41 = *(v34 + 72) * v19;
      v23 = v35;
      (*(v34 + 16))(v33, v20 + v41, v35);
      v24 = [objc_opt_self() seconds];
      sub_1C4461BB8(0, &qword_1EC0C27A8, 0x1E696B008);
      v25 = v36;
      sub_1C4EF93F8();
      *(v30 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v15 = v32;
      (*(v22 + 32))(*(v32 + 48) + v41, v21, v23);
      result = (*(v37 + 32))(*(v15 + 56) + *(v37 + 72) * v19, v25, v38);
      v26 = *(v15 + 16);
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        break;
      }

      *(v15 + 16) = v28;
      v13 = v40;
      if (!v40)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v7 >= v14)
      {
        return v15;
      }

      v18 = *(v9 + 8 * v7);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v40 = (v18 - 1) & v18;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C4C2E0B4(uint64_t a1)
{
  v38 = sub_1C456902C(&qword_1EC0C4D20, &qword_1C4F5E300);
  v2 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v36 = v29 - v3;
  v35 = sub_1C4EFE138();
  v4 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v33 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C456902C(&qword_1EC0C4F58, &qword_1C4F5E400);
  result = sub_1C4F02538();
  v7 = 0;
  v39 = a1;
  v10 = *(a1 + 64);
  v9 = a1 + 64;
  v8 = v10;
  v11 = 1 << *(v9 - 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v8;
  v14 = (v11 + 63) >> 6;
  v30 = result + 64;
  v31 = v4 + 16;
  v34 = v4;
  v37 = v2;
  v29[2] = v2 + 32;
  v29[3] = v4 + 32;
  v15 = result;
  v32 = result;
  if (v13)
  {
    while (1)
    {
      v16 = __clz(__rbit64(v13));
      v40 = (v13 - 1) & v13;
LABEL_10:
      v19 = v16 | (v7 << 6);
      v20 = *(v39 + 48);
      v21 = v33;
      v22 = v34;
      v41 = *(v34 + 72) * v19;
      v23 = v35;
      (*(v34 + 16))(v33, v20 + v41, v35);
      v24 = [objc_opt_self() meters];
      sub_1C4461BB8(0, &qword_1EC0C4E28, 0x1E696B058);
      v25 = v36;
      sub_1C4EF93F8();
      *(v30 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v15 = v32;
      (*(v22 + 32))(*(v32 + 48) + v41, v21, v23);
      result = (*(v37 + 32))(*(v15 + 56) + *(v37 + 72) * v19, v25, v38);
      v26 = *(v15 + 16);
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        break;
      }

      *(v15 + 16) = v28;
      v13 = v40;
      if (!v40)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v7 >= v14)
      {
        return v15;
      }

      v18 = *(v9 + 8 * v7);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v40 = (v18 - 1) & v18;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C4C2E410(uint64_t a1)
{
  v38 = sub_1C456902C(&qword_1EC0C4D20, &qword_1C4F5E300);
  v2 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v36 = v29 - v3;
  v35 = sub_1C4EFF998();
  v4 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v33 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C456902C(&qword_1EC0C4F60, &qword_1C4F5E408);
  result = sub_1C4F02538();
  v7 = 0;
  v39 = a1;
  v10 = *(a1 + 64);
  v9 = a1 + 64;
  v8 = v10;
  v11 = 1 << *(v9 - 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v8;
  v14 = (v11 + 63) >> 6;
  v30 = result + 64;
  v31 = v4 + 16;
  v34 = v4;
  v37 = v2;
  v29[2] = v2 + 32;
  v29[3] = v4 + 32;
  v15 = result;
  v32 = result;
  if (v13)
  {
    while (1)
    {
      v16 = __clz(__rbit64(v13));
      v40 = (v13 - 1) & v13;
LABEL_10:
      v19 = v16 | (v7 << 6);
      v20 = *(v39 + 48);
      v21 = v33;
      v22 = v34;
      v41 = *(v34 + 72) * v19;
      v23 = v35;
      (*(v34 + 16))(v33, v20 + v41, v35);
      v24 = [objc_opt_self() meters];
      sub_1C4461BB8(0, &qword_1EC0C4E28, 0x1E696B058);
      v25 = v36;
      sub_1C4EF93F8();
      *(v30 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v15 = v32;
      (*(v22 + 32))(*(v32 + 48) + v41, v21, v23);
      result = (*(v37 + 32))(*(v15 + 56) + *(v37 + 72) * v19, v25, v38);
      v26 = *(v15 + 16);
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        break;
      }

      *(v15 + 16) = v28;
      v13 = v40;
      if (!v40)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v7 >= v14)
      {
        return v15;
      }

      v18 = *(v9 + 8 * v7);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v40 = (v18 - 1) & v18;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C4C2E76C(uint64_t a1)
{
  v38 = sub_1C456902C(&qword_1EC0C27B0, &unk_1C4F5E170);
  v2 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v36 = v29 - v3;
  v35 = sub_1C4EFD628();
  v4 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v33 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C456902C(&qword_1EC0C4F68, &qword_1C4F5E410);
  result = sub_1C4F02538();
  v7 = 0;
  v39 = a1;
  v10 = *(a1 + 64);
  v9 = a1 + 64;
  v8 = v10;
  v11 = 1 << *(v9 - 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v8;
  v14 = (v11 + 63) >> 6;
  v30 = result + 64;
  v31 = v4 + 16;
  v34 = v4;
  v37 = v2;
  v29[2] = v2 + 32;
  v29[3] = v4 + 32;
  v15 = result;
  v32 = result;
  if (v13)
  {
    while (1)
    {
      v16 = __clz(__rbit64(v13));
      v40 = (v13 - 1) & v13;
LABEL_10:
      v19 = v16 | (v7 << 6);
      v20 = *(v39 + 48);
      v21 = v33;
      v22 = v34;
      v41 = *(v34 + 72) * v19;
      v23 = v35;
      (*(v34 + 16))(v33, v20 + v41, v35);
      v24 = [objc_opt_self() seconds];
      sub_1C4461BB8(0, &qword_1EC0C27A8, 0x1E696B008);
      v25 = v36;
      sub_1C4EF93F8();
      *(v30 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v15 = v32;
      (*(v22 + 32))(*(v32 + 48) + v41, v21, v23);
      result = (*(v37 + 32))(*(v15 + 56) + *(v37 + 72) * v19, v25, v38);
      v26 = *(v15 + 16);
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        break;
      }

      *(v15 + 16) = v28;
      v13 = v40;
      if (!v40)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v7 >= v14)
      {
        return v15;
      }

      v18 = *(v9 + 8 * v7);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v40 = (v18 - 1) & v18;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C4C2EAC8(uint64_t a1)
{
  v38 = sub_1C456902C(&qword_1EC0C4D20, &qword_1C4F5E300);
  v2 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v36 = v29 - v3;
  v35 = sub_1C4EFD628();
  v4 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v33 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C456902C(&qword_1EC0C4F70, &qword_1C4F5E418);
  result = sub_1C4F02538();
  v7 = 0;
  v39 = a1;
  v10 = *(a1 + 64);
  v9 = a1 + 64;
  v8 = v10;
  v11 = 1 << *(v9 - 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v8;
  v14 = (v11 + 63) >> 6;
  v30 = result + 64;
  v31 = v4 + 16;
  v34 = v4;
  v37 = v2;
  v29[2] = v2 + 32;
  v29[3] = v4 + 32;
  v15 = result;
  v32 = result;
  if (v13)
  {
    while (1)
    {
      v16 = __clz(__rbit64(v13));
      v40 = (v13 - 1) & v13;
LABEL_10:
      v19 = v16 | (v7 << 6);
      v20 = *(v39 + 48);
      v21 = v33;
      v22 = v34;
      v41 = *(v34 + 72) * v19;
      v23 = v35;
      (*(v34 + 16))(v33, v20 + v41, v35);
      v24 = [objc_opt_self() meters];
      sub_1C4461BB8(0, &qword_1EC0C4E28, 0x1E696B058);
      v25 = v36;
      sub_1C4EF93F8();
      *(v30 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v15 = v32;
      (*(v22 + 32))(*(v32 + 48) + v41, v21, v23);
      result = (*(v37 + 32))(*(v15 + 56) + *(v37 + 72) * v19, v25, v38);
      v26 = *(v15 + 16);
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        break;
      }

      *(v15 + 16) = v28;
      v13 = v40;
      if (!v40)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v7 >= v14)
      {
        return v15;
      }

      v18 = *(v9 + 8 * v7);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v40 = (v18 - 1) & v18;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1C4C2EE24()
{
  result = qword_1EC0C4E58;
  if (!qword_1EC0C4E58)
  {
    sub_1C4572308(&qword_1EC0C4E50, &qword_1C4F5E368);
    sub_1C4C2F284(&qword_1EC0C4E60, MEMORY[0x1E69A9A58], MEMORY[0x1E69A9A60]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C4E58);
  }

  return result;
}

unint64_t sub_1C4C2EEE0()
{
  result = qword_1EC0C4E70;
  if (!qword_1EC0C4E70)
  {
    sub_1C4572308(&qword_1EC0C4E68, &qword_1C4F5E370);
    sub_1C4C2F284(&qword_1EC0C4E78, MEMORY[0x1E69A9620], MEMORY[0x1E69A9628]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C4E70);
  }

  return result;
}

unint64_t sub_1C4C2EF9C()
{
  result = qword_1EC0C4E88;
  if (!qword_1EC0C4E88)
  {
    sub_1C4572308(&qword_1EC0C4E80, &qword_1C4F5E378);
    sub_1C4C2F284(&qword_1EC0C4E90, MEMORY[0x1E69A93B8], MEMORY[0x1E69A93C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C4E88);
  }

  return result;
}

unint64_t sub_1C4C2F058()
{
  result = qword_1EC0C4EA0;
  if (!qword_1EC0C4EA0)
  {
    sub_1C4572308(&qword_1EC0C4E98, &qword_1C4F5E380);
    sub_1C4C2F284(&qword_1EC0C4EA8, MEMORY[0x1E69A9328], MEMORY[0x1E69A9330]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C4EA0);
  }

  return result;
}

unint64_t sub_1C4C2F114()
{
  result = qword_1EC0C4EB8;
  if (!qword_1EC0C4EB8)
  {
    sub_1C4572308(&qword_1EC0C4EB0, &qword_1C4F5E388);
    sub_1C4C2F284(&qword_1EC0C4EC0, MEMORY[0x1E69A9DD0], MEMORY[0x1E69A9DE0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C4EB8);
  }

  return result;
}

unint64_t sub_1C4C2F1D0()
{
  result = qword_1EC0C4EF0;
  if (!qword_1EC0C4EF0)
  {
    sub_1C4572308(&qword_1EC0C4EE8, &qword_1C4F5E3A8);
    sub_1C4C2F284(&qword_1EC0C4EF8, MEMORY[0x1E69A9640], MEMORY[0x1E69A9648]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C4EF0);
  }

  return result;
}

uint64_t sub_1C4C2F284(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C4C2F2CC()
{
  sub_1C4EFF0C8();
  sub_1C43FBCE0();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

void *sub_1C4C2F35C(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1C4C2F538(v5, a2, a3);
    v7 = v6;

    return v7;
  }

  return result;
}

void *sub_1C4C2F3D4(_BYTE *a1)
{
  v2 = a1;
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = a1[32];
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v8 = swift_slowAlloc();
      v2 = sub_1C4C2F35C(v8, v4, v2);
      MEMORY[0x1C6942830](v8, -1, -1);
      return v2;
    }
  }

  MEMORY[0x1EEE9AC00](a1);
  v5 = v9 - ((8 * v4 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_1C4501018(0, v4, v5);
  sub_1C4C2F538(v5, v4, v2);
  if (!v1)
  {
    return v6;
  }

  swift_willThrow();
  return v2;
}

void sub_1C4C2F538(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = 0;
  v3 = 0;
  v4 = a3 + 64;
  v5 = 1 << *(a3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a3 + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_11:
    v12 = v9 | (v3 << 6);
    v13 = (*(a3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    sub_1C442E860(*(a3 + 56) + 40 * v12, v25);
    v23[0] = v14;
    v23[1] = v15;
    sub_1C442E860(v25, &v24);
    sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C4F0CE60;
    *(inited + 32) = 0xD000000000000010;
    *(inited + 40) = 0x80000001C4FBA3C0;
    *(inited + 48) = 0xD000000000000016;
    *(inited + 56) = 0x80000001C4FBA3E0;
    MEMORY[0x1EEE9AC00](inited);
    swift_bridgeObjectRetain_n();
    v17 = v26;
    LOBYTE(v14) = sub_1C44CE068();
    v26 = v17;
    swift_setDeallocating();
    sub_1C44DEE40();
    sub_1C4420C3C(v23, &qword_1EC0C4FA0, &qword_1C4F5E4B8);
    sub_1C440962C(v25);

    if (v14)
    {
      *(a1 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      if (__OFADD__(v21++, 1))
      {
        __break(1u);
LABEL_15:
        sub_1C45877FC(a1, a2, v21, a3);
        return;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      goto LABEL_15;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_1C4C2F808(uint64_t a1)
{
  v1 = sub_1C4F00DD8();
  sub_1C43FCDF8();
  v25 = v2;
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBCC4();
  v6 = v5 - v4;
  v7 = sub_1C4F01188();
  sub_1C43FCDF8();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBCC4();
  v13 = v12 - v11;
  v14 = sub_1C4F00DC8();
  MEMORY[0x1EEE9AC00](v14 - 8);
  sub_1C43FBCC4();
  v15 = sub_1C4EFD548();
  MEMORY[0x1EEE9AC00](v15 - 8);
  sub_1C43FBCC4();
  sub_1C4EFD518();
  sub_1C4F01138();
  sub_1C4F01178();
  sub_1C4F01148();

  (*(v9 + 8))(v13, v7);
  sub_1C4C32098(&qword_1EDDFEAD0, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
  sub_1C4F00DB8();
  v16 = sub_1C43FD258();
  sub_1C44344B8(v16, v17);
  v18 = sub_1C43FD258();
  sub_1C4498FD8(v18, v19, v6);
  v20 = sub_1C43FD258();
  sub_1C4434000(v20, v21);
  sub_1C4F00DA8();
  (*(v25 + 8))(v6, v1);
  v22 = sub_1C43FD258();
  sub_1C4434000(v22, v23);
  return sub_1C4EFF028();
}

uint64_t sub_1C4C2FABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ViewGeneration.ViewClients.storage(for:fullRebuild:)(a1, a2, a3);
  if (!v5)
  {
    sub_1C456902C(&qword_1EC0C06F0, &unk_1C4F5BAD0);
    if (swift_dynamicCast())
    {
      _s21LanguageViewGeneratorCMa();
      a4 = swift_allocObject();
      *(a4 + 16) = a5;
      memcpy((a4 + 24), __src, 0x48uLL);
    }

    else
    {
      a4 = 0x80000001C4FB83A0;
      sub_1C450B034();
      swift_allocError();
      *v10 = a1;
      *(v10 + 8) = a2;
      *(v10 + 16) = xmmword_1C4F5B670;
      *(v10 + 32) = 0xD000000000000025;
      *(v10 + 40) = 0x80000001C4FB83A0;
      *(v10 + 48) = v12;
      *(v10 + 64) = 0;
      swift_willThrow();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }
  }

  return a4;
}

uint64_t sub_1C4C2FBF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C4C2FABC(a1, a2, a3, *v3, v3[1]);
  v6 = *(v4 + 8);

  return v6(v5);
}

void sub_1C4C2FC9C()
{
  v2 = type metadata accessor for InferredTriple(0);
  sub_1C43FCDF8();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  v8 = v7 - v6;
  v9 = sub_1C49B19E8();
  if (!v1)
  {
    v10 = v9;
    v101 = inited;
    v103 = v4;
    v108 = v8;
    v11 = sub_1C49B7FA8(v9);
    v97 = sub_1C4C31CFC(v11, 0.5);
    v96 = v11;
    v12 = sub_1C4C31E74(v11);
    v13 = v12 + 64;
    v14 = 1 << v12[32];
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v12 + 8);
    v17 = (v14 + 63) >> 6;
    v105 = v12;

    v18 = 0;
    v19 = MEMORY[0x1E69E7CC0];
    v107 = v2;
    v98 = v10;
    while (1)
    {
      v99 = v19;
      if (!v16)
      {
        while (1)
        {
          v20 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            break;
          }

          if (v20 >= v17)
          {
            goto LABEL_24;
          }

          v16 = *&v13[8 * v20];
          ++v18;
          if (v16)
          {
            v18 = v20;
            goto LABEL_10;
          }
        }

        __break(1u);
        goto LABEL_74;
      }

LABEL_10:
      v21 = (v18 << 9) | (8 * __clz(__rbit64(v16)));
      v22 = *(*(v105 + 7) + v21);
      v23 = *(*(v105 + 6) + v21);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4C309E4(v23, v22, v10);
      sub_1C44036EC();

      v24 = *(v10 + 16);
      v25 = *(v99 + 16);
      v26 = v25 + v24;
      if (__OFADD__(v25, v24))
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v28 = v99;
      if (!isUniquelyReferenced_nonNull_native || v26 > *(v99 + 24) >> 1)
      {
        if (v25 <= v26)
        {
          v29 = v25 + v24;
        }

        else
        {
          v29 = v25;
        }

        sub_1C458BD10(isUniquelyReferenced_nonNull_native, v29, 1, v99);
        v28 = v30;
      }

      v2 = v107;
      v16 &= v16 - 1;
      if (*(v10 + 16))
      {
        if ((*(v28 + 24) >> 1) - *(v28 + 16) < v24)
        {
          goto LABEL_77;
        }

        inited = v28;
        swift_arrayInitWithCopy();

        v19 = inited;
        v10 = v98;
        if (v24)
        {
          v31 = *(inited + 16);
          v32 = __OFADD__(v31, v24);
          v33 = v31 + v24;
          if (v32)
          {
            goto LABEL_78;
          }

          *(inited + 16) = v33;
        }
      }

      else
      {
        inited = v28;

        v19 = inited;
        v10 = v98;
        if (v24)
        {
          __break(1u);
LABEL_24:

          memcpy(__dst, (v101 + 24), sizeof(__dst));
          sub_1C4CFDC10();
          memcpy(v111, (v101 + 24), sizeof(v111));
          v34 = *(v99 + 16);
          if (v34)
          {
            v110 = MEMORY[0x1E69E7CC0];
            sub_1C459DB58(0, v34, 0);
            v106 = v110;
            v35 = v99 + ((*(v103 + 80) + 32) & ~*(v103 + 80));
            v100 = *(v103 + 72);
            v36 = v108;
            do
            {
              v102 = v35;
              v104 = v34;
              sub_1C4C31FD8(v35, v36);
              sub_1C456902C(&qword_1EC0C51B0, &unk_1C4F0DC80);
              v37 = swift_allocObject();
              *(v37 + 16) = xmmword_1C4F3B920;
              v38 = sub_1C4EFB258();
              *(v37 + 56) = v38;
              v39 = MEMORY[0x1E699FE38];
              *(v37 + 64) = MEMORY[0x1E699FE38];
              v40 = v39;
              sub_1C4422F90((v37 + 32));
              sub_1C4EFF058();
              *(v37 + 96) = v38;
              *(v37 + 104) = v40;
              sub_1C4422F90((v37 + 72));
              sub_1C4EFEEF8();
              v41 = MEMORY[0x1E69A9748];
              sub_1C4C32098(&qword_1EC0BFA10, MEMORY[0x1E69A9748], MEMORY[0x1E69A9698]);
              sub_1C4C32098(&qword_1EDDFCCC0, v41, MEMORY[0x1E69A9750]);
              sub_1C4C32098(&off_1EDDFCCA8, v41, MEMORY[0x1E69A9770]);
              sub_1C4EFBA18();
              *(v37 + 136) = v38;
              v42 = MEMORY[0x1E699FE38];
              *(v37 + 144) = MEMORY[0x1E699FE38];
              sub_1C4422F90((v37 + 112));
              sub_1C4EFF858();
              *(v37 + 176) = v38;
              *(v37 + 184) = v42;
              v36 = v108;
              sub_1C4422F90((v37 + 152));
              v43 = MEMORY[0x1E69A0138];
              sub_1C4EFBA18();
              v44 = (v108 + v107[8]);
              v46 = *v44;
              v45 = v44[1];
              *(v37 + 216) = MEMORY[0x1E69E6158];
              *(v37 + 224) = v43;
              *(v37 + 192) = v46;
              *(v37 + 200) = v45;
              v47 = v108 + v107[9];
              v48 = *v47;
              v49 = *(v47 + 8);
              *(v37 + 256) = MEMORY[0x1E69E63B0];
              *(v37 + 264) = MEMORY[0x1E69A0168];
              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
              if (v49 == 1)
              {
                v48 = sub_1C4EF92F8();
              }

              *(v37 + 232) = v48;
              v50 = *(v108 + v107[10]);
              *(v37 + 296) = &type metadata for SourceSet;
              *(v37 + 304) = sub_1C493EB98();
              *(v37 + 272) = v50;
              v51 = *(v108 + v107[11]);
              *(v37 + 336) = MEMORY[0x1E69E63B0];
              *(v37 + 344) = MEMORY[0x1E69A0168];
              *(v37 + 312) = v51;
              sub_1C4C3203C(v108);
              v52 = v106;
              v54 = v106[2];
              v53 = v106[3];
              if (v54 >= v53 >> 1)
              {
                sub_1C459DB58(v53 > 1, v54 + 1, 1);
                v52 = v106;
              }

              v52[2] = v54 + 1;
              v106 = v52;
              v52[v54 + 4] = v37;
              v35 = v102 + v100;
              --v34;
            }

            while (v104 != 1);

            v55 = v106;
          }

          else
          {

            v55 = MEMORY[0x1E69E7CC0];
          }

          v17 = 0xEC0000006E6F6967;
          v2 = 0xD000000000000011;
          v16 = 0x6552656369766544;
          sub_1C4BC7458();

          v56 = *(v96 + 2);
          if (v56 == 1)
          {
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            sub_1C49BCCB8();
            sub_1C4868270(v57);
            v55 = v58;

            if (!v55)
            {
              v55 = sub_1C4F01108();
            }

            if (*(v96 + 2))
            {
              sub_1C457EB50();
              v60 = v59;

              if (v60)
              {

                sub_1C456902C(&qword_1EC0BA6C0, &unk_1C4F14600);
                inited = swift_initStackObject();
                *(inited + 16) = xmmword_1C4F0F830;
                strcpy((inited + 32), "DeviceLanguage");
                *(inited + 47) = -18;
                sub_1C49BCCB8();
                sub_1C4868270(v61);
                sub_1C44323EC();
                if (v55)
                {
                  sub_1C4F01138();
                  sub_1C4411974();
                }

                else
                {
                  sub_1C440B66C();
                }

                sub_1C4401174();
                v84 = sub_1C456902C(&qword_1EC0C2BD0, &qword_1C4F0FF50);
                sub_1C4413A54(v84);
                sub_1C4F01108();
                sub_1C44036EC();
                sub_1C442D708("deviceLanguageSamePredictedLanguagesBool");
                sub_1C4F017D8();
                sub_1C43FBDF0();
                *(inited + 72) = v85;
                *(inited + 80) = 0xD000000000000034;
                *(inited + 88) = v86;
                *(inited + 96) = sub_1C4F017D8();
                strcpy((inited + 104), "DeviceRegion");
                *(inited + 117) = 0;
                *(inited + 118) = -5120;
                sub_1C49BC878();
                sub_1C4868270(v87);
                v89 = v88;

                if (v89)
                {
                  sub_1C4F01138();
                  sub_1C4411974();
                }

                else
                {
                  sub_1C440B66C();
                }

                sub_1C4F00288();
                sub_1C4401174();
                sub_1C4F01198();
                v90 = sub_1C4F01108();

                sub_1C43FBDF0();
                *(inited + 120) = v90;
                *(inited + 128) = 0xD000000000000011;
                *(inited + 136) = v91;
                sub_1C49BBF58();
                v80 = v92;
                sub_1C456902C(&qword_1EC0C0BD8, &qword_1C4F40170);
                sub_1C49BC7C4();
                sub_1C4F00EE8();
LABEL_65:

                sub_1C4F01108();
                sub_1C44323EC();
                sub_1C43FBDF0();
                *(inited + 144) = v80;
                *(inited + 152) = v2 + 1;
                *(inited + 160) = v81;
                type metadata accessor for NLLanguage(0);
                sub_1C456902C(&qword_1EC0B84C0, &qword_1C4F0DD00);
                sub_1C4C32098(&qword_1EDDDBB40, type metadata accessor for NLLanguage, &unk_1C4F0C800);
                sub_1C4F00EE8();

                v82 = sub_1C4F01108();

                *(inited + 168) = v82;
                *(inited + 176) = 0x73656372756F53;
                *(inited + 184) = 0xE700000000000000;
                sub_1C456902C(&qword_1EC0C0B90, &qword_1C4F40130);
                v83 = sub_1C4F00EE8();

                sub_1C4F01108();
                sub_1C44323EC();
                *(inited + 192) = v83;
                sub_1C4468200();
                sub_1C4F00F28();
                sub_1C4F00268();

                return;
              }
            }

            else
            {
            }

            v56 = *(v96 + 2);
          }

          if (v56 >= 2)
          {
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            sub_1C49BCCB8();
            sub_1C4868270(v62);
            v55 = v63;

            if (!v55)
            {
              v55 = sub_1C4F01108();
            }

            if (!*(v96 + 2))
            {

              goto LABEL_56;
            }

            sub_1C457EB50();
            v65 = v64;

            if ((v65 & 1) != 0 && v97[2] == 1)
            {
              sub_1C49BCCB8();
              sub_1C4868270(v66);
              v55 = v67;

              if (!v55)
              {
                v55 = sub_1C4F01108();
              }

              if (v97[2])
              {
                sub_1C457EB50();
                v109 = v68;

                if (v109)
                {
                  sub_1C456902C(&qword_1EC0BA6C0, &unk_1C4F14600);
                  inited = swift_initStackObject();
                  *(inited + 16) = xmmword_1C4F0F830;
                  strcpy((inited + 32), "DeviceLanguage");
                  *(inited + 47) = -18;
                  sub_1C49BCCB8();
                  sub_1C4868270(v69);
                  sub_1C44323EC();
                  if (v55)
                  {
                    sub_1C4F01138();
                    sub_1C4411974();

                    goto LABEL_75;
                  }

LABEL_74:
                  sub_1C440B66C();
LABEL_75:
                  sub_1C4401174();
                  v93 = sub_1C456902C(&qword_1EC0C2BD0, &qword_1C4F0FF50);
                  sub_1C4413A54(v93);
                  sub_1C4F01108();
                  sub_1C44036EC();
                  sub_1C442D708("deviceLanguageSamePredictedLanguagesBool");
                  sub_1C4F017D8();
                  sub_1C43FBDF0();
                  *(inited + 72) = v94;
                  *(inited + 80) = v2 + 25;
                  *(inited + 88) = v95;
LABEL_61:
                  *(inited + 96) = sub_1C4F017D8();
                  *(inited + 104) = v16;
                  *(inited + 112) = v17;
                  sub_1C49BC878();
                  sub_1C4868270(v74);
                  v76 = v75;

                  if (v76)
                  {
                    sub_1C4F01138();
                    sub_1C4411974();
                  }

                  else
                  {
                    sub_1C440B66C();
                  }

                  sub_1C4F00288();
                  sub_1C4401174();
                  sub_1C4F01198();
                  v77 = sub_1C4F01108();

                  sub_1C43FBDF0();
                  *(inited + 120) = v77;
                  *(inited + 128) = v2;
                  *(inited + 136) = v78;
                  sub_1C49BBF58();
                  v80 = v79;
                  sub_1C456902C(&qword_1EC0C0BD8, &qword_1C4F40170);
                  sub_1C49BC7C4();
                  sub_1C4F00F48();
                  goto LABEL_65;
                }

LABEL_57:
                sub_1C456902C(&qword_1EC0BA6C0, &unk_1C4F14600);
                inited = swift_initStackObject();
                *(inited + 16) = xmmword_1C4F0F830;
                strcpy((inited + 32), "DeviceLanguage");
                *(inited + 47) = -18;
                sub_1C49BCCB8();
                sub_1C4868270(v70);
                sub_1C44323EC();
                if (v55)
                {
                  sub_1C4F01138();
                  sub_1C4411974();
                }

                else
                {
                  sub_1C440B66C();
                }

                sub_1C4401174();
                v71 = sub_1C456902C(&qword_1EC0C2BD0, &qword_1C4F0FF50);
                sub_1C4413A54(v71);
                sub_1C4F01108();
                sub_1C44036EC();
                sub_1C442D708("deviceLanguageSamePredictedLanguagesBool");
                sub_1C4F017D8();
                sub_1C43FBDF0();
                *(inited + 72) = v72;
                *(inited + 80) = 0xD00000000000002ALL;
                *(inited + 88) = v73;
                goto LABEL_61;
              }

LABEL_56:

              goto LABEL_57;
            }
          }

          goto LABEL_57;
        }
      }
    }

    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
  }
}

uint64_t sub_1C4C309E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v152 = a3;
  v162 = a2;
  v156 = a1;
  v3 = sub_1C4EFF8A8();
  v169 = *(v3 - 8);
  v170 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v145 = &v144 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = sub_1C4EFD548();
  v167 = *(v171 - 8);
  MEMORY[0x1EEE9AC00](v171);
  v6 = &v144 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = sub_1C4EFEEF8();
  v172 = *(v150 - 8);
  MEMORY[0x1EEE9AC00](v150);
  v154 = &v144 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v165 = &v144 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v163 = &v144 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v161 = &v144 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v159 = &v144 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v157 = &v144 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v149 = &v144 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v144 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v144 - v24;
  v168 = sub_1C4EFF0C8();
  v26 = *(v168 - 8);
  MEMORY[0x1EEE9AC00](v168);
  v166 = &v144 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v164 = &v144 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v151 = &v144 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v160 = &v144 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v158 = &v144 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v155 = &v144 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v147 = &v144 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v144 - v41;
  sub_1C456902C(&qword_1EC0C0280, &unk_1C4F3E5C0);
  v43 = type metadata accessor for InferredTriple(0);
  v44 = *(*(v43 - 1) + 72);
  v45 = (*(*(v43 - 1) + 80) + 32) & ~*(*(v43 - 1) + 80);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_1C4F140B0;
  v153 = v46;
  v47 = v46 + v45;
  sub_1C4C2F808(v156);
  v146 = v25;
  sub_1C4EFEBB8();
  sub_1C4EFD518();
  v48 = sub_1C4EFD2F8();
  v50 = v49;
  v167[1](v6, v171);
  v51 = v145;
  sub_1C4EFF888();
  v148 = v22;
  sub_1C4EFEC38();
  sub_1C4EF9AE8();
  v53 = v52;
  v54 = v43[10];
  if (qword_1EDDDBDD8 != -1)
  {
    swift_once();
  }

  *(v47 + v54) = qword_1EDE2C8F8;
  v55 = *(v26 + 32);
  v171 = v26 + 32;
  v167 = v55;
  (v55)(v47, v42, v168);
  v57 = v172 + 32;
  v56 = *(v172 + 32);
  v58 = v150;
  v56(v47 + v43[5], v146, v150);
  v59 = (v47 + v43[8]);
  *v59 = v48;
  v59[1] = v50;
  v60 = v47 + v43[9];
  *v60 = 0;
  *(v60 + 8) = 1;
  (*(v169 + 4))(v47 + v43[6], v51, v170);
  v61 = v47 + v43[7];
  v172 = v57;
  v169 = v56;
  v56(v61, v148, v58);
  *(v47 + v43[11]) = v53;
  v170 = v44;
  v62 = v47 + v44;
  v63 = v156;
  sub_1C4C2F808(v156);
  sub_1C4EFEBF8();
  v64 = sub_1C4F01138();
  v66 = v65;
  sub_1C4EFF888();
  sub_1C4EFEC38();
  sub_1C4EF9AE8();
  *(v62 + v43[10]) = qword_1EDE2C8F8;
  v67 = (v62 + v43[8]);
  *v67 = v64;
  v67[1] = v66;
  v68 = v62 + v43[9];
  *v68 = 0;
  *(v68 + 8) = 1;
  *(v62 + v43[11]) = v69;
  v70 = v147;
  sub_1C4C2F808(v63);
  v71 = v149;
  sub_1C4EFE7D8();
  sub_1C465C4B8();
  if (v174)
  {
    sub_1C44482AC(&v173, &v175);
  }

  else
  {
    v176 = MEMORY[0x1E69E6158];
    *&v175 = 0;
    *(&v175 + 1) = 0xE000000000000000;
  }

  v72 = v47 + 2 * v170;
  v73 = sub_1C4F01198();
  v75 = v74;
  sub_1C4EFF888();
  sub_1C4EFEC38();
  sub_1C4EF9AE8();
  v77 = v76;
  *(v72 + v43[10]) = qword_1EDE2C8F8;
  v78 = v70;
  v79 = v167;
  (v167)(v72, v78, v168);
  v169(v72 + v43[5], v71, v58);
  v80 = (v72 + v43[8]);
  *v80 = v73;
  v80[1] = v75;
  v81 = v72 + v43[9];
  *v81 = 0;
  *(v81 + 8) = 1;
  *(v72 + v43[11]) = v77;
  sub_1C4C2F808(v63);
  sub_1C4EFE4B8();
  sub_1C465C4B8();
  if (v174)
  {
    sub_1C44482AC(&v173, &v175);
  }

  else
  {
    v176 = MEMORY[0x1E69E6158];
    *&v175 = 0;
    *(&v175 + 1) = 0xE000000000000000;
  }

  v82 = v47 + 3 * v170;
  v83 = sub_1C4F01198();
  v85 = v84;
  sub_1C4EFF888();
  sub_1C4EFEC38();
  sub_1C4EF9AE8();
  v87 = v86;
  *(v82 + v43[10]) = qword_1EDE2C8F8;
  v88 = v168;
  (v79)(v82, v155, v168);
  v169(v82 + v43[5], v157, v58);
  v89 = (v82 + v43[8]);
  *v89 = v83;
  v89[1] = v85;
  v90 = v82 + v43[9];
  *v90 = 0;
  *(v90 + 8) = 1;
  *(v82 + v43[11]) = v87;
  sub_1C4C2F808(v63);
  sub_1C4EFE2A8();
  sub_1C465C4B8();
  if (v174)
  {
    sub_1C44482AC(&v173, &v175);
  }

  else
  {
    v176 = MEMORY[0x1E69E63B0];
    *&v175 = 0;
  }

  v91 = v47 + 4 * v170;
  v92 = sub_1C4F01198();
  v94 = v93;
  sub_1C4EFF888();
  sub_1C4EFEC38();
  sub_1C4EF9AE8();
  v96 = v95;
  *(v91 + v43[10]) = qword_1EDE2C8F8;
  (v79)(v91, v158, v88);
  v169(v91 + v43[5], v159, v58);
  v97 = (v91 + v43[8]);
  *v97 = v92;
  v97[1] = v94;
  v98 = v91 + v43[9];
  *v98 = 0;
  *(v98 + 8) = 1;
  *(v91 + v43[11]) = v96;
  sub_1C4C2F808(v63);
  sub_1C4EFE388();
  sub_1C465C4B8();
  if (v174)
  {
    sub_1C44482AC(&v173, &v175);
  }

  else
  {
    v176 = sub_1C456902C(&unk_1EC0C5D60, &unk_1C4F5BC70);
    *&v175 = MEMORY[0x1E69E7CC0];
  }

  v99 = v170;
  v100 = v47 + 5 * v170;
  v101 = sub_1C4F01198();
  v103 = v102;
  sub_1C4EFF888();
  sub_1C4EFEC38();
  sub_1C4EF9AE8();
  v105 = v104;
  *(v100 + v43[10]) = qword_1EDE2C8F8;
  (v167)(v47 + 5 * v99, v160, v88);
  v169(v100 + v43[5], v161, v58);
  v106 = (v100 + v43[8]);
  *v106 = v101;
  v106[1] = v103;
  v107 = v100 + v43[9];
  *v107 = 0;
  *(v107 + 8) = 1;
  *(v100 + v43[11]) = v105;
  v108 = v47 + 6 * v99;
  sub_1C4C2F808(v63);
  sub_1C4EFE3E8();
  type metadata accessor for NLLanguage(0);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C456902C(&qword_1EC0C0B90, &qword_1C4F40130);
  sub_1C4C32098(&qword_1EDDDBB40, type metadata accessor for NLLanguage, &unk_1C4F0C800);
  v109 = sub_1C4F00EE8();
  v111 = v110;

  sub_1C4EFF888();
  sub_1C4EFEC38();
  sub_1C4EF9AE8();
  *(v108 + v43[10]) = qword_1EDE2C8F8;
  v112 = (v108 + v43[8]);
  *v112 = v109;
  v112[1] = v111;
  v113 = v108 + v43[9];
  *v113 = 0;
  *(v113 + 8) = 1;
  *(v108 + v43[11]) = v114;
  v115 = v151;
  sub_1C4C2F808(v63);
  sub_1C4EFE868();
  sub_1C465C4B8();
  if (v174)
  {
    sub_1C44482AC(&v173, &v175);
  }

  else
  {
    v176 = MEMORY[0x1E69E63B0];
    *&v175 = 0;
  }

  v116 = v47 - v170 + 8 * v170;
  v117 = sub_1C4F01198();
  v119 = v118;
  sub_1C4EFF888();
  sub_1C4EFEC38();
  sub_1C4EF9AE8();
  v121 = v120;
  *(v116 + v43[10]) = qword_1EDE2C8F8;
  v122 = v115;
  v123 = v167;
  (v167)(v116, v122, v168);
  v169(v116 + v43[5], v163, v58);
  v124 = (v116 + v43[8]);
  *v124 = v117;
  v124[1] = v119;
  v125 = v116 + v43[9];
  *v125 = 0;
  *(v125 + 8) = 1;
  *(v116 + v43[11]) = v121;
  sub_1C4C2F808(v63);
  sub_1C4EFE8B8();
  sub_1C465C4B8();
  if (v174)
  {
    sub_1C44482AC(&v173, &v175);
  }

  else
  {
    v176 = MEMORY[0x1E69E63B0];
    *&v175 = 0;
  }

  v126 = v47 + 8 * v170;
  v127 = sub_1C4F01198();
  v129 = v128;
  sub_1C4EFF888();
  sub_1C4EFEC38();
  sub_1C4EF9AE8();
  v131 = v130;
  *(v126 + v43[10]) = qword_1EDE2C8F8;
  (v123)(v126, v164, v168);
  v169(v126 + v43[5], v165, v58);
  v132 = (v126 + v43[8]);
  *v132 = v127;
  v132[1] = v129;
  v133 = v126 + v43[9];
  *v133 = 0;
  *(v133 + 8) = 1;
  *(v126 + v43[11]) = v131;
  sub_1C4C2F808(v63);
  v134 = v154;
  sub_1C4EFE988();
  sub_1C465C4B8();
  if (v174)
  {
    sub_1C44482AC(&v173, &v175);
  }

  else
  {
    v176 = MEMORY[0x1E69E63B0];
    *&v175 = 0;
  }

  v135 = v47 + 9 * v170;
  v136 = sub_1C4F01198();
  v138 = v137;
  sub_1C4EFF888();
  sub_1C4EFEC38();
  sub_1C4EF9AE8();
  v140 = v139;
  *(v135 + v43[10]) = qword_1EDE2C8F8;
  (v123)(v135, v166, v168);
  v169(v135 + v43[5], v134, v58);
  v141 = (v135 + v43[8]);
  *v141 = v136;
  v141[1] = v138;
  v142 = v135 + v43[9];
  *v142 = 0;
  *(v142 + 8) = 1;
  *(v135 + v43[11]) = v140;
  return v153;
}

uint64_t sub_1C4C31A5C()
{
  v0 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v11 - v1;
  v3 = sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBCC4();
  v9 = v8 - v7;
  sub_1C486DFC0();
  sub_1C4868198();

  if (sub_1C44157D4(v2, 1, v3) == 1)
  {
    return sub_1C47781FC(v2);
  }

  (*(v5 + 32))(v9, v2, v3);
  sub_1C4C2FC9C();
  return (*(v5 + 8))(v9, v3);
}

void *sub_1C4C31BFC(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1C4C320E0(v5, a2, a3);
    v7 = v6;

    return v7;
  }

  return result;
}

void *sub_1C4C31C74(void *result, uint64_t a2, uint64_t a3, double a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1C4C322B8(v7, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void *sub_1C4C31CFC(_BYTE *a1, double a2)
{
  v4 = a1;
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = a1[32];
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v10 = swift_slowAlloc();
      v4 = sub_1C4C31C74(v10, v6, v4, a2);
      MEMORY[0x1C6942830](v10, -1, -1);
      return v4;
    }
  }

  MEMORY[0x1EEE9AC00](a1);
  v7 = v11 - ((8 * v6 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_1C4501018(0, v6, v7);
  sub_1C4C322B8(v7, v6, v4, a2);
  if (!v2)
  {
    return v8;
  }

  swift_willThrow();
  return v4;
}

void *sub_1C4C31E74(_BYTE *a1)
{
  v2 = a1;
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = a1[32];
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v8 = swift_slowAlloc();
      v2 = sub_1C4C31BFC(v8, v4, v2);
      MEMORY[0x1C6942830](v8, -1, -1);
      return v2;
    }
  }

  MEMORY[0x1EEE9AC00](a1);
  v5 = v9 - ((8 * v4 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_1C4501018(0, v4, v5);
  sub_1C4C320E0(v5, v4, v2);
  if (!v1)
  {
    return v6;
  }

  swift_willThrow();
  return v2;
}

uint64_t sub_1C4C31FD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InferredTriple(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4C3203C(uint64_t a1)
{
  v2 = type metadata accessor for InferredTriple(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C4C32098(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1C4C320E0(uint64_t result, uint64_t a2, uint64_t a3)
{
  v23 = 0;
  v3 = 0;
  v4 = a3 + 64;
  v5 = 1 << *(a3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a3 + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_11:
    v12 = v9 | (v3 << 6);
    v13 = *(*(a3 + 56) + 8 * v12);
    v14 = *(v13 + 16);
    v15 = *(*(a3 + 48) + 8 * v12);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if (v14 && (v16 = sub_1C445FAA8(0x73656372756F73, 0xE700000000000000), (v17 & 1) != 0) && (sub_1C442B870(*(v13 + 56) + 32 * v16, v25), sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870), swift_dynamicCast()))
    {
      v18 = v26;
    }

    else
    {
      v18 = MEMORY[0x1E69E7CC0];
    }

    v19 = *(v18 + 16);

    if (v19 >= 3)
    {
      *(result + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      if (__OFADD__(v23++, 1))
      {
        __break(1u);
LABEL_20:
        sub_1C4586FF8(result, a2, v23, a3);
        return;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      goto LABEL_20;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_1C4C322B8(uint64_t result, uint64_t a2, uint64_t a3, double a4)
{
  v6 = 0;
  v7 = 0;
  v8 = a3 + 64;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 64);
  v12 = (v9 + 63) >> 6;
  while (v11)
  {
    v13 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_11:
    v16 = v13 | (v7 << 6);
    v17 = *(*(a3 + 56) + 8 * v16);
    if (!*(v17 + 16))
    {
      goto LABEL_17;
    }

    v18 = *(*(a3 + 48) + 8 * v16);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v19 = sub_1C445FAA8(0x6E656469666E6F63, 0xEF65726F63536563);
    if (v20 & 1) != 0 && (sub_1C442B870(*(v17 + 56) + 32 * v19, v25), (swift_dynamicCast()))
    {
      v21 = v26;

      if (v21 >= a4)
      {
        goto LABEL_18;
      }
    }

    else
    {

LABEL_17:
      if (a4 <= 0.0)
      {
LABEL_18:
        *(result + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
        if (__OFADD__(v6++, 1))
        {
          __break(1u);
LABEL_21:
          sub_1C4586FF8(result, a2, v6, a3);
          return;
        }
      }
    }
  }

  v14 = v7;
  while (1)
  {
    v7 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v7 >= v12)
    {
      goto LABEL_21;
    }

    v15 = *(v8 + 8 * v7);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v11 = (v15 - 1) & v15;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_1C4C324A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_unownedRetainStrong();
  sub_1C4C81AA0(a1, a2, a3);

  if (!v5)
  {
    sub_1C456902C(&qword_1EC0C06A0, &unk_1C4F5B890);
    if (swift_dynamicCast())
    {
      _s22LifeEventViewGeneratorCMa();
      a4 = swift_allocObject();
      *(a4 + 16) = a5;
      memcpy((a4 + 24), __src, 0x80uLL);
    }

    else
    {
      a4 = 0x80000001C4FB83A0;
      sub_1C450B034();
      swift_allocError();
      *v11 = a1;
      *(v11 + 8) = a2;
      *(v11 + 16) = xmmword_1C4F5B670;
      *(v11 + 32) = 0xD000000000000025;
      *(v11 + 40) = 0x80000001C4FB83A0;
      *(v11 + 48) = v13;
      *(v11 + 64) = 0;
      swift_willThrow();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }
  }

  return a4;
}

uint64_t sub_1C4C325FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C4C324A8(a1, a2, a3, *v3, v3[1]);
  v6 = *(v4 + 8);

  return v6(v5);
}

uint64_t sub_1C4C326A8(uint64_t a1, void (*a2)(uint64_t, uint64_t, uint64_t), void (*a3)(uint64_t, uint64_t, uint64_t), int a4)
{
  v151 = a4;
  v149 = a2;
  v150 = a3;
  v6 = sub_1C456902C(&qword_1EC0C0CC8, &unk_1C4F405F0);
  v7 = sub_1C43FBD18(v6);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FD230();
  sub_1C43FCE30(v9);
  v10 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v11 = sub_1C43FBD18(v10);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FD230();
  sub_1C43FCE30(v13);
  v135 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v141 = v14;
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FD230();
  sub_1C43FCE30(v17);
  v152 = sub_1C4EFFA28();
  sub_1C43FCDF8();
  v140 = v18;
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FCE30(&v124 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = sub_1C456902C(&qword_1EC0C4F78, &unk_1C4F5E420);
  v22 = sub_1C43FBD18(v21);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v124 - v23;
  v143 = sub_1C456902C(&qword_1EC0C4F80, &qword_1C4F5E5B0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v25);
  sub_1C43FBFDC();
  v157 = v26;
  MEMORY[0x1EEE9AC00](v27);
  sub_1C43FD230();
  v158 = v28;
  v29 = sub_1C456902C(&qword_1EC0C4FA8, &qword_1C4F5E5B8);
  v30 = sub_1C43FBD18(v29);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v124 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v124 - v34;
  v161 = sub_1C456902C(&qword_1EC0C4FB0, &qword_1C4F5E5C0);
  sub_1C43FCDF8();
  v142 = v36;
  MEMORY[0x1EEE9AC00](v37);
  sub_1C43FCE30(&v124 - v38);
  v144 = sub_1C456902C(&qword_1EC0C4FB8, &qword_1C4F5E5C8);
  sub_1C43FCDF8();
  v159 = v39;
  MEMORY[0x1EEE9AC00](v40);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v41);
  sub_1C43FD230();
  v153 = v42;
  v148 = v4;
  sub_1C456902C(&unk_1EC0BE460, &qword_1C4F13B70);
  sub_1C4EFEEF8();
  v43 = swift_allocObject();
  v128 = xmmword_1C4F0C890;
  *(v43 + 16) = xmmword_1C4F0C890;
  sub_1C4EFEBB8();
  sub_1C4EFE308();
  sub_1C4EFECF8();
  v147 = a1;
  v44 = sub_1C486F58C(a1, v43, 0.0);

  v162[0] = v44;
  sub_1C456902C(&qword_1EC0BD3F8, &unk_1C4F5B800);
  sub_1C4401CBC(&qword_1EDDF06C8, &qword_1EC0BD3F8, &unk_1C4F5B800, MEMORY[0x1E69E6328]);
  sub_1C4C33D08(&qword_1EDDFE2F0, type metadata accessor for EventTriple, &protocol conformance descriptor for EventTriple);
  v45 = sub_1C4F01498();

  v164 = MEMORY[0x1E69E7CC0];
  v146 = v45;
  v162[0] = v45;
  v46 = sub_1C456902C(&qword_1EC0C4730, &qword_1C4F5E5D0);
  v47 = v152;
  v48 = sub_1C4401CBC(&qword_1EDDEFF78, &qword_1EC0C4730, &qword_1C4F5E5D0, MEMORY[0x1E69A99D8]);
  v49 = sub_1C4C33D08(&qword_1EDDEFF50, MEMORY[0x1E69A9AB0], MEMORY[0x1E69A9AA8]);
  v50 = sub_1C4C17CE0();
  v137 = v46;
  v51 = AssociatedConformanceWitness;
  sub_1C4EFFDC8();
  v145 = v51;
  if (!v51)
  {
    (*(v159 + 16))(v138, v153, v144);
    v162[0] = v137;
    v162[1] = v47;
    v162[2] = v48;
    v163[0] = v49;
    v126 = v49;
    v163[1] = v50;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v63 = v139;
    sub_1C4F01478();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v138 = v140 + 32;
    v137 = (v141 + 32);
    v127 = (v141 + 8);
    v141 = v140 + 8;
    v140 = MEMORY[0x1E69E7CC0];
    v64 = &qword_1EC0C4F80;
    sub_1C4432CFC();
    v65 = v63;
    v66 = v159;
    v155 = v24;
    v156 = v35;
    v154 = v32;
    while (1)
    {
      while (1)
      {
        v67 = v65;
        sub_1C4F01FA8();
        sub_1C49328EC(v32, v35, &qword_1EC0C4FA8, &qword_1C4F5E5B8);
        v68 = sub_1C456902C(&qword_1EC0C4FC0, &qword_1C4F5E5D8);
        if (sub_1C44157D4(v35, 1, v68) == 1)
        {
          (*(v142 + 8))(v67, v161);
          v61 = (*(v66 + 8))(v153, v144);
          goto LABEL_32;
        }

        v69 = v64;
        sub_1C49328EC(&v35[*(v68 + 48)], v24, &qword_1EC0C4F78, &unk_1C4F5E420);
        if (sub_1C44157D4(v24, 1, OpaqueTypeConformance2) == 1)
        {
          sub_1C4420C3C(v24, &qword_1EC0C4F78, &unk_1C4F5E420);
          v65 = v67;
          goto LABEL_12;
        }

        v70 = v158;
        sub_1C49328EC(v24, v158, v69, &qword_1C4F5E5B0);
        v71 = v157;
        sub_1C4C33C98(v70, v157);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          break;
        }

        v65 = v67;
        sub_1C4420C3C(v70, v69, &qword_1C4F5E5B0);
        sub_1C4420C3C(v71, v69, &qword_1C4F5E5B0);
        v66 = v159;
        v32 = v154;
        v24 = v155;
        v35 = v156;
LABEL_12:
        sub_1C456902C(&qword_1EC0C4DF8, qword_1C4F5E5E0);
        sub_1C43FBCE0();
        (*(v72 + 8))(v35);
        v64 = v69;
      }

      sub_1C4402C08();
      v73 = v136;
      OpaqueTypeConformance2 = v152;
      v74(v136, v71, v152);
      v75 = v134;
      sub_1C4EFFA18();
      v76 = sub_1C4EFFC68();
      if (sub_1C44157D4(v75, 1, v76) == 1)
      {
        break;
      }

      v82 = v133;
      sub_1C4EFFC58();
      v73 = v82;
      v83 = *(v76 - 8);
      OpaqueTypeConformance2 = *(v83 + 8);
      v139 = v83 + 8;
      OpaqueTypeConformance2(v75, v76);
      v84 = v135;
      v85 = v70;
      if (sub_1C44157D4(v73, 1, v135) == 1)
      {
        v86 = sub_1C4407F28();
        v87(v86);
        v88 = v70;
        v64 = v69;
        sub_1C4420C3C(v88, v69, &qword_1C4F5E5B0);
        goto LABEL_17;
      }

      v125 = OpaqueTypeConformance2;
      v124 = *v137;
      v124(v132, v73, v84);
      OpaqueTypeConformance2 = v131;
      v90 = v136;
      v91 = v136;
      sub_1C4EFFA18();
      v64 = v69;
      if (sub_1C44157D4(OpaqueTypeConformance2, 1, v76) == 1)
      {
        sub_1C4402C08();
        v92(v132, v84);
        sub_1C4402C08();
        v93(v91, v152);
        sub_1C4420C3C(v85, v69, &qword_1C4F5E5B0);
        sub_1C4420C3C(OpaqueTypeConformance2, &qword_1EC0C0CC8, &unk_1C4F405F0);
        v94 = sub_1C44039C0(v162);
        sub_1C440BAA8(v94, v95, v96, v84);
        v66 = v159;
        goto LABEL_24;
      }

      OpaqueTypeConformance2 = v130;
      sub_1C4EFFC48();
      v90 = OpaqueTypeConformance2;
      v125(v131, v76);
      v97 = sub_1C44157D4(OpaqueTypeConformance2, 1, v84);
      v98 = v84;
      v66 = v159;
      if (v97 == 1)
      {
        sub_1C4402C08();
        v100(v132, v99);
        v101 = sub_1C4407F28();
        v102(v101);
        sub_1C4420C3C(v85, v69, &qword_1C4F5E5B0);
LABEL_24:
        v32 = v154;
        sub_1C4420C3C(v90, &unk_1EC0B84E0, qword_1C4F0D2D0);
        sub_1C4432CFC();
LABEL_18:
        v24 = v155;
        v35 = v156;
        goto LABEL_19;
      }

      v124(v129, OpaqueTypeConformance2, v98);
      sub_1C456902C(&qword_1EC0C51B0, &unk_1C4F0DC80);
      v103 = swift_allocObject();
      *(v103 + 16) = v128;
      *(v103 + 56) = sub_1C4EFF0C8();
      *(v103 + 64) = sub_1C4C33D08(&qword_1EDDFA1C8, MEMORY[0x1E69A9810], MEMORY[0x1E69A9808]);
      sub_1C4422F90((v103 + 32));
      sub_1C4EFD5A8();
      sub_1C4EF9AD8();
      v104 = MEMORY[0x1E69E63B0];
      *(v103 + 96) = MEMORY[0x1E69E63B0];
      v105 = MEMORY[0x1E69A0168];
      *(v103 + 104) = MEMORY[0x1E69A0168];
      *(v103 + 72) = v106;
      sub_1C4EF9AD8();
      *(v103 + 136) = v104;
      *(v103 + 144) = v105;
      v124 = v103;
      *(v103 + 112) = v107;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v32 = v154;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C458B824();
        v140 = v116;
      }

      v24 = v155;
      v35 = v156;
      v109 = *(v140 + 16);
      v110 = v109 >= *(v140 + 24) >> 1;
      v139 = v109;
      v125 = (v109 + 1);
      if (v110)
      {
        sub_1C458B824();
        v140 = v117;
      }

      OpaqueTypeConformance2 = v127;
      v111 = *v127;
      v112 = v135;
      (*v127)(v129, v135);
      v111(v132, v112);
      v113 = sub_1C4407F28();
      v114(v113);
      sub_1C4420C3C(v158, v64, &qword_1C4F5E5B0);
      v115 = v140;
      *(v140 + 16) = v125;
      *(v115 + 8 * v139 + 32) = v124;
      v164 = v115;
      sub_1C4432CFC();
LABEL_19:
      sub_1C456902C(&qword_1EC0C4DF8, qword_1C4F5E5E0);
      sub_1C43FBCE0();
      (*(v89 + 8))(v35);
      v65 = v67;
    }

    sub_1C4402C08();
    v77(v73, OpaqueTypeConformance2);
    v78 = v70;
    v64 = v69;
    sub_1C4420C3C(v78, v69, &qword_1C4F5E5B0);
    sub_1C4420C3C(v75, &qword_1EC0C0CC8, &unk_1C4F405F0);
    v79 = sub_1C44039C0(v163);
    sub_1C440BAA8(v79, v80, v81, v135);
LABEL_17:
    sub_1C4420C3C(v73, &unk_1EC0B84E0, qword_1C4F0D2D0);
    sub_1C4432CFC();
    v66 = v159;
    v32 = v154;
    goto LABEL_18;
  }

  if (qword_1EDDFECD0 != -1)
  {
    swift_once();
  }

  v52 = sub_1C4F00978();
  sub_1C442B738(v52, qword_1EDE2DF70);
  v53 = v145;
  v54 = v145;
  v55 = sub_1C4F00968();
  v56 = sub_1C4F01CD8();

  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    *v57 = 138412290;
    v59 = v53;
    v60 = _swift_stdlib_bridgeErrorToNSError();
    *(v57 + 4) = v60;
    *v58 = v60;
    _os_log_impl(&dword_1C43F8000, v55, v56, "error with context.allGraphObjectsOfType: %@", v57, 0xCu);
    sub_1C4420C3C(v58, &qword_1EC0BDA00, &qword_1C4F10D30);
    MEMORY[0x1C6942830](v58, -1, -1);
    MEMORY[0x1C6942830](v57, -1, -1);
  }

  else
  {
  }

LABEL_32:
  MEMORY[0x1EEE9AC00](v61);
  *(&v124 - 6) = v118;
  *(&v124 - 5) = &v164;
  v120 = v149;
  v119 = v150;
  *(&v124 - 4) = v147;
  *(&v124 - 3) = v120;
  *(&v124 - 2) = v119;
  *(&v124 - 8) = v151 & 1;

  sub_1C49A56B8();
  v122 = v121;

  return v122;
}

void sub_1C4C337C4(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(char *, unint64_t, uint64_t)@<X5>, int a7@<W6>, void *a8@<X8>)
{
  LODWORD(v53) = a7;
  v55 = a6;
  v54 = a5;
  v52 = a8;
  v13 = sub_1C4EFF0C8();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(__dst, a2 + 3, sizeof(__dst));
  v17 = *a3;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4BCB52C(a1, v17, a4);

  if (!v8)
  {
    v50 = a4;
    v57 = v16;
    v18 = a2[13];
    if (v18)
    {
      v49 = v14;
      v56 = v13;
      v20 = a2[17];
      v19 = a2[18];
      v22 = a2[15];
      v21 = a2[16];
      v23 = a2[14];
      v24 = a2[12];
      v58[5] = v24;
      v58[6] = v18;
      v58[7] = v23;
      v58[8] = v22;
      v58[9] = v21;
      v58[10] = v20;
      v58[11] = v19;
      _s23UpdatedObjectDiffWriterCMa();
      v51 = swift_allocObject();
      sub_1C4BC3C1C(v24, v18);

      sub_1C4B8B458();
      v26 = v50;
      v27 = *(v50 + 16);
      if (v27)
      {
        v51 = 0;
        v60 = MEMORY[0x1E69E7CC0];
        v48 = v25;

        sub_1C44CD9C0(0, v27, 0);
        v28 = v60;
        v29 = v49 + 16;
        v55 = *(v49 + 16);
        v30 = v26 + ((*(v49 + 80) + 32) & ~*(v49 + 80));
        v54 = *(v49 + 72);
        v53 = (v49 + 8);
        v31 = v57;
        do
        {
          v32 = v56;
          v33 = v29;
          v55(v31, v30, v56);
          v34 = sub_1C4EFF048();
          v31 = v57;
          v35 = v34;
          v37 = v36;
          (*v53)(v57, v32);
          v60 = v28;
          v39 = *(v28 + 16);
          v38 = *(v28 + 24);
          if (v39 >= v38 >> 1)
          {
            sub_1C44CD9C0(v38 > 1, v39 + 1, 1);
            v31 = v57;
            v28 = v60;
          }

          *(v28 + 16) = v39 + 1;
          v40 = v28 + 16 * v39;
          *(v40 + 32) = v35;
          *(v40 + 40) = v37;
          v30 += v54;
          --v27;
          v29 = v33;
        }

        while (v27);
        v42 = v52;
        v43 = v51;
      }

      else
      {

        v43 = 0;
        v28 = MEMORY[0x1E69E7CC0];
        v42 = v52;
      }

      v58[3] = sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
      v58[4] = sub_1C4401CBC(&qword_1EDDFCEC0, &unk_1EC0B9620, &unk_1C4F0E870, MEMORY[0x1E69E6328]);
      v58[0] = v28;
      sub_1C4B8C0BC();

      if (v43)
      {

        sub_1C440962C(v58);
      }

      else
      {
        sub_1C440962C(v58);

        sub_1C4B8BB5C();
        v45 = v44;
        v47 = v46;

        *v42 = v45;
        v42[1] = v47;
        *(v42 + 16) = 0;
      }
    }

    else
    {
      v41 = v52;
      *v52 = 0;
      v41[1] = 0;
      *(v41 + 16) = 1;
    }
  }
}

uint64_t sub_1C4C33C98(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0C4F80, &qword_1C4F5E5B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4C33D08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1C4C33D60(uint64_t a1, uint64_t *a2)
{
  v4 = _s14ViewConfigInfoVMa(0);
  v29 = *(v4 - 8);
  v30 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v28 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v26 - v7;
  v9 = 0;
  v10 = *(a1 + 16);
  v11 = a1 + 40;
  v27 = MEMORY[0x1E69E7CC0];
  v26 = a1 + 40;
LABEL_2:
  for (i = (v11 + 16 * v9); ; i += 2)
  {
    if (v10 == v9)
    {

      return;
    }

    if (v9 >= *(a1 + 16))
    {
      break;
    }

    v13 = *a2;
    if (*(*a2 + 16))
    {
      v15 = *(i - 1);
      v14 = *i;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v16 = sub_1C445FAA8(v15, v14);
      if (v17)
      {
        v18 = *(v13 + 56);
        v19 = v28;
        sub_1C4509798(v18 + *(v29 + 72) * v16, v28);
        sub_1C4C41AB8(v19, v8);
        LOBYTE(v19) = v8[*(v30 + 28)];
        sub_1C4C41B10();
        if ((v19 & 1) == 0)
        {
          v20 = v27;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v31 = v20;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1C44CD9C0(0, *(v20 + 16) + 1, 1);
            v20 = v31;
          }

          v23 = *(v20 + 16);
          v22 = *(v20 + 24);
          v24 = v23 + 1;
          if (v23 >= v22 >> 1)
          {
            v27 = v23 + 1;
            sub_1C44CD9C0(v22 > 1, v23 + 1, 1);
            v24 = v27;
            v20 = v31;
          }

          ++v9;
          *(v20 + 16) = v24;
          v27 = v20;
          v25 = v20 + 16 * v23;
          *(v25 + 32) = v15;
          *(v25 + 40) = v14;
          v11 = v26;
          goto LABEL_2;
        }
      }
    }

    ++v9;
  }

  __break(1u);
}

BOOL sub_1C4C33FC4(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 16);
  swift_beginAccess();
  v4 = 0;
LABEL_2:
  if (v4 != v3)
  {
    v5 = *a2;
    if (*(*a2 + 16))
    {
      v6 = (a1 + 32 + 16 * v4);
      v8 = *v6;
      v7 = v6[1];
      sub_1C4F02AF8();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4F01298();
      v9 = sub_1C4F02B68();
      v10 = ~(-1 << *(v5 + 32));
      while (1)
      {
        v11 = v9 & v10;
        if (((*(v5 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v9 & v10)) & 1) == 0)
        {
          break;
        }

        v12 = (*(v5 + 48) + 16 * v11);
        if (*v12 != v8 || v12[1] != v7)
        {
          v14 = sub_1C4F02938();
          v9 = v11 + 1;
          if ((v14 & 1) == 0)
          {
            continue;
          }
        }

        ++v4;
        goto LABEL_2;
      }
    }
  }

  return v4 != v3;
}

uint64_t sub_1C4C3412C(uint64_t a1)
{
  v60 = sub_1C456902C(&qword_1EC0C4FF0, &qword_1C4F5E678);
  MEMORY[0x1EEE9AC00](v60);
  v3 = v53 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v56 = v53 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v55 = (v53 - v7);
  v8 = MEMORY[0x1E69E7CC8];
  v71 = MEMORY[0x1E69E7CC8];
  v9 = a1 + 64;
  v10 = 1 << *(a1 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(a1 + 64);
  v13 = (v10 + 63) >> 6;
  v58 = a1;
  result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v15 = 0;
  v54 = a1 + 64;
  v57 = v3;
  if (v12)
  {
    goto LABEL_9;
  }

  do
  {
LABEL_5:
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      goto LABEL_25;
    }

    if (v16 >= v13)
    {

      return v8;
    }

    v12 = *(v9 + 8 * v16);
    ++v15;
  }

  while (!v12);
  v15 = v16;
  while (1)
  {
LABEL_9:
    v17 = __clz(__rbit64(v12)) | (v15 << 6);
    v18 = *(v58 + 56);
    v19 = (*(v58 + 48) + 16 * v17);
    v21 = *v19;
    v20 = v19[1];
    v22 = (_s14ViewConfigInfoVMa(0) - 8);
    v23 = v18 + *(*v22 + 72) * v17;
    v24 = v60;
    v25 = v55;
    sub_1C4509798(v23, v55 + *(v60 + 48));
    *v25 = v21;
    v25[1] = v20;
    v26 = v56;
    sub_1C4C41CC8(v25, v56);
    v27 = (v26 + *(v24 + 48) + v22[10]);
    v28 = *v27;
    v29 = v27[1];
    v30 = v26;
    v31 = v57;
    sub_1C4C41CC8(v30, v57);
    v33 = *(v8 + 16);
    v32 = *(v8 + 24);
    v59 = v28;
    if (v32 <= v33)
    {
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C467AA84(v33 + 1, 1, v34, v35, v36, v37, v38, v39, v53[0], v53[1], v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77);
      v8 = v71;
    }

    else
    {
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }

    v40 = *v31;
    v41 = v31[1];
    sub_1C4F02AF8();
    sub_1C4F01298();
    result = sub_1C4F02B68();
    v42 = v8 + 64;
    v43 = -1 << *(v8 + 32);
    v44 = result & ~v43;
    v45 = v44 >> 6;
    if (((-1 << v44) & ~*(v8 + 64 + 8 * (v44 >> 6))) == 0)
    {
      break;
    }

    v46 = __clz(__rbit64((-1 << v44) & ~*(v8 + 64 + 8 * (v44 >> 6)))) | v44 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v42 + ((v46 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v46;
    v12 &= v12 - 1;
    v51 = (*(v8 + 48) + 16 * v46);
    *v51 = v40;
    v51[1] = v41;
    v52 = (*(v8 + 56) + 16 * v46);
    *v52 = v59;
    v52[1] = v29;
    ++*(v8 + 16);
    result = sub_1C4C41B10();
    v9 = v54;
    if (!v12)
    {
      goto LABEL_5;
    }
  }

  v47 = 0;
  v48 = (63 - v43) >> 6;
  while (++v45 != v48 || (v47 & 1) == 0)
  {
    v49 = v45 == v48;
    if (v45 == v48)
    {
      v45 = 0;
    }

    v47 |= v49;
    v50 = *(v42 + 8 * v45);
    if (v50 != -1)
    {
      v46 = __clz(__rbit64(~v50)) + (v45 << 6);
      goto LABEL_21;
    }
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1C4C344B8(uint64_t a1)
{
  v57 = sub_1C456902C(&qword_1EC0C4FF0, &qword_1C4F5E678);
  MEMORY[0x1EEE9AC00](v57);
  v53 = (&v52 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v52 - v4;
  MEMORY[0x1EEE9AC00](v6);
  v56 = (&v52 - v7);
  v55 = MEMORY[0x1E69E7CC8];
  v69 = MEMORY[0x1E69E7CC8];
  v8 = a1 + 64;
  v9 = 1 << *(a1 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(a1 + 64);
  v12 = (v9 + 63) >> 6;
  v58 = a1;
  result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v14 = 0;
  while (1)
  {
    v15 = v14;
    if (!v11)
    {
      break;
    }

    v16 = v5;
LABEL_11:
    v17 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v18 = v17 | (v14 << 6);
    v19 = *(v58 + 56);
    v20 = (*(v58 + 48) + 16 * v18);
    v22 = *v20;
    v21 = v20[1];
    v23 = v19 + *(*(_s14ViewConfigInfoVMa(0) - 8) + 72) * v18;
    v25 = v56;
    v24 = v57;
    sub_1C4509798(v23, v56 + *(v57 + 48));
    *v25 = v22;
    v25[1] = v21;
    v5 = v16;
    sub_1C4C41CC8(v25, v16);
    v26 = v16 + *(v24 + 48);
    v27 = *(v26 + 16);
    if (v27)
    {
      v28 = *(v26 + 8);
      sub_1C4C41CC8(v16, v53);
      v30 = *(v55 + 16);
      v29 = *(v55 + 24);
      v52 = v28;
      if (v29 <= v30)
      {
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C467AA84(v30 + 1, 1, v32, v33, v34, v35, v36, v37, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77);
        v31 = v69;
      }

      else
      {
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v31 = v55;
      }

      v55 = v31;
      v39 = *v53;
      v38 = v53[1];
      sub_1C4F02AF8();
      sub_1C4F01298();
      result = sub_1C4F02B68();
      v40 = v55;
      v41 = v55 + 64;
      v42 = -1 << *(v55 + 32);
      v43 = result & ~v42;
      v44 = v43 >> 6;
      if (((-1 << v43) & ~*(v55 + 64 + 8 * (v43 >> 6))) == 0)
      {
        v46 = 0;
        v47 = (63 - v42) >> 6;
        while (++v44 != v47 || (v46 & 1) == 0)
        {
          v48 = v44 == v47;
          if (v44 == v47)
          {
            v44 = 0;
          }

          v46 |= v48;
          v49 = *(v41 + 8 * v44);
          if (v49 != -1)
          {
            v45 = __clz(__rbit64(~v49)) + (v44 << 6);
            goto LABEL_25;
          }
        }

        goto LABEL_28;
      }

      v45 = __clz(__rbit64((-1 << v43) & ~*(v55 + 64 + 8 * (v43 >> 6)))) | v43 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
      *(v41 + ((v45 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v45;
      v50 = (v40[6] + 16 * v45);
      *v50 = v39;
      v50[1] = v38;
      v51 = (v40[7] + 16 * v45);
      *v51 = v52;
      v51[1] = v27;
      ++v40[2];
      result = sub_1C4C41B10();
    }

    else
    {
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      result = sub_1C4420C3C(v16, &qword_1EC0C4FF0, &qword_1C4F5E678);
    }
  }

  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v12)
    {

      return v55;
    }

    v11 = *(v8 + 8 * v14);
    ++v15;
    if (v11)
    {
      v16 = v5;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1C4C34878(uint64_t a1, uint64_t a2)
{
  sub_1C43FBE94();
  v6 = sub_1C4EFDAF8();
  sub_1C43FCDF8();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBD08();
  sub_1C44146B8();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBF38();
  v41 = v11;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C447F150();
  if (*(v2 + 16) < *(a2 + 16))
  {
    return 0;
  }

  v14 = a2 + 56;
  sub_1C44410A0();
  sub_1C440FDCC();
  v17 = v16 & v15;
  v37 = (v18 + 63) >> 6;
  v40 = v2 + 56;
  v19 = (v8 + 8);
  result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v21 = 0;
  v36 = a2;
  v34 = v4;
  v35 = v8;
  v33 = a2 + 56;
LABEL_4:
  if (v17)
  {
    v22 = v21;
LABEL_9:
    sub_1C44168C0();
    v38 = *(v8 + 16);
    v39 = *(v8 + 72);
    v38(v4, *(a2 + 48) + v39 * (v23 | (v22 << 6)), v6);
    (*(v8 + 32))(v41, v4, v6);
    if (*(v2 + 16))
    {
      v24 = v2;
      v17 &= v17 - 1;
      sub_1C4426F04();
      sub_1C44902AC(&qword_1EDDEFFA8, v25, MEMORY[0x1E69A94B8]);
      v26 = sub_1C4F00FD8();
      v27 = ~(-1 << *(v2 + 32));
      while (1)
      {
        v28 = v26 & v27;
        if (((*(v40 + (((v26 & v27) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v26 & v27)) & 1) == 0)
        {
          break;
        }

        v38(v3, *(v24 + 48) + v28 * v39, v6);
        sub_1C4426F04();
        sub_1C44902AC(&qword_1EC0B85A8, v29, MEMORY[0x1E69A94C0]);
        v30 = sub_1C4F010B8();
        v31 = *v19;
        v32 = sub_1C440BB4C();
        v31(v32);
        v26 = v28 + 1;
        if (v30)
        {
          result = (v31)(v41, v6);
          v21 = v22;
          a2 = v36;
          v2 = v24;
          v4 = v34;
          v8 = v35;
          v14 = v33;
          goto LABEL_4;
        }
      }
    }

    (*v19)(v41, v6);
    v13 = 0;
LABEL_16:

    return v13;
  }

  while (1)
  {
    v22 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v22 >= v37)
    {
      v13 = 1;
      goto LABEL_16;
    }

    v17 = *(v14 + 8 * v22);
    ++v21;
    if (v17)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C4C34B9C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) < *(a2 + 16))
  {
    return 0;
  }

  v2 = a2;
  v4 = a2 + 56;
  v5 = 1 << *(a2 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a2 + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a1 + 56;
  result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v11 = 0;
  v23 = v2;
  if (v7)
  {
    goto LABEL_10;
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v8)
    {

      return 1;
    }

    v7 = *(v4 + 8 * v12);
    ++v11;
    if (v7)
    {
      v11 = v12;
LABEL_10:
      while (2)
      {
        if (!*(a1 + 16))
        {

          return 0;
        }

        v13 = __clz(__rbit64(v7));
        v7 &= v7 - 1;
        v14 = (*(v2 + 48) + ((v11 << 10) | (16 * v13)));
        v16 = *v14;
        v15 = v14[1];
        sub_1C4F02AF8();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4F01298();
        v17 = sub_1C4F02B68();
        v18 = ~(-1 << *(a1 + 32));
        do
        {
          v19 = v17 & v18;
          if (((*(v9 + (((v17 & v18) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v17 & v18)) & 1) == 0)
          {

            return 0;
          }

          v20 = (*(a1 + 48) + 16 * v19);
          if (*v20 == v16 && v20[1] == v15)
          {
            break;
          }

          v22 = sub_1C4F02938();
          v17 = v19 + 1;
        }

        while ((v22 & 1) == 0);

        v2 = v23;
        if (v7)
        {
          continue;
        }

        break;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t Array<A>.jsonString()(unint64_t a1)
{
  v3 = sub_1C4F01188();
  v4 = sub_1C43FBD18(v3);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBCC4();
  v7 = v6 - v5;
  v8 = sub_1C4EF93D8();
  sub_1C44099C4(v8);
  sub_1C4EF93C8();
  v19.n128_u64[0] = a1;
  sub_1C456902C(&qword_1EC0B8EB8, &unk_1C4F0E920);
  sub_1C496CBBC();
  v9 = sub_1C4EF93B8();
  if (!v1)
  {
    v11 = v9;
    v12 = v10;
    sub_1C4F01178();
    v7 = sub_1C4F01158();
    v14 = v13;
    sub_1C4434000(v11, v12);
    if (!v14)
    {
      v7 = 0x80000001C4FBABD0;
      v16 = sub_1C450B034();
      v17 = sub_1C43FFB2C(&unk_1F44064D8, v16);
      v18->n128_u64[0] = 0;
      v18->n128_u64[1] = 0xE000000000000000;
      v18[1].n128_u64[0] = 0xD000000000000018;
      v18[1].n128_u64[1] = 0x80000001C4FBABD0;
      sub_1C4411340(v19, v20, v17, v18);
    }
  }

  return v7;
}

uint64_t sub_1C4C34EC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v159 = a5;
  v174 = a3;
  v175 = a4;
  sub_1C43FBE94();
  v158 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  *&v169 = v10;
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBCC4();
  v14 = sub_1C43FD2C8(v13 - v12);
  v161 = _s6ConfigVMa(v14);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FD230();
  v18 = sub_1C43FD2C8(v17);
  v19 = _s10ViewConfigVMa(v18);
  sub_1C44016B0(v19);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FBD08();
  sub_1C44146B8();
  MEMORY[0x1EEE9AC00](v21);
  sub_1C4422BE4();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v149 - v23;
  v25 = _s14ViewConfigInfoVMa(0);
  sub_1C43FCDF8();
  v177 = v26;
  MEMORY[0x1EEE9AC00](v27);
  sub_1C43FBD08();
  v30 = v28 - v29;
  MEMORY[0x1EEE9AC00](v31);
  sub_1C4402CA8();
  v32 = v180;
  result = sub_1C4BB49EC();
  if (!v32)
  {
    v170 = 0;
    v168 = v25;
    v151 = v7;
    v164 = v8;
    v171 = v6;
    v165 = v24;
    v162 = v5;
    v163 = a2;
    v34 = v175;
    v35 = sub_1C4428DA0(v175);
    v36 = 0;
    v179 = v34 & 0xC000000000000001;
    v180 = v35;
    v178 = v34 & 0xFFFFFFFFFFFFFF8;
    v37 = MEMORY[0x1E69E7CC8];
    v173 = v34 + 32;
    v38 = v177;
    v176 = v30;
    while (v180 != v36)
    {
      if (v179)
      {
        v56 = sub_1C43FBC98();
        v39 = MEMORY[0x1C6940F90](v56);
      }

      else
      {
        if (v36 >= *(v178 + 16))
        {
          goto LABEL_84;
        }

        v39 = *(v34 + 8 * v36 + 32);
      }

      if (__OFADD__(v36, 1))
      {
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
        goto LABEL_89;
      }

      v30 = *(v39 + 16);
      v40 = *(v39 + 24);
      swift_isUniquelyReferenced_nonNull_native();
      v182[0] = v37;
      v41 = sub_1C443DF7C();
      v34 = v37;
      v43 = sub_1C445FAA8(v41, v42);
      v45 = v37[2];
      v46 = (v44 & 1) == 0;
      v37 = (v45 + v46);
      if (__OFADD__(v45, v46))
      {
        goto LABEL_85;
      }

      v38 = v43;
      v47 = v44;
      sub_1C456902C(&qword_1EC0B9800, &qword_1C4F0FAE0);
      v34 = v182;
      if (sub_1C4F02458())
      {
        v34 = v182[0];
        v48 = sub_1C443DF7C();
        v50 = sub_1C445FAA8(v48, v49);
        if ((v47 & 1) != (v51 & 1))
        {
          result = sub_1C4F029F8();
          __break(1u);
          return result;
        }

        v38 = v50;
      }

      v37 = v182[0];
      if (v47)
      {
        *(*(v182[0] + 56) + 8 * v38) = v36;
      }

      else
      {
        sub_1C4401D38(v182[0] + 8 * (v38 >> 6));
        v52 = (v37[6] + 16 * v38);
        *v52 = v30;
        v52[1] = v40;
        *(v37[7] + 8 * v38) = v36;
        v53 = v37[2];
        v54 = __OFADD__(v53, 1);
        v55 = v53 + 1;
        if (v54)
        {
          goto LABEL_88;
        }

        v37[2] = v55;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      }

      ++v36;
      v34 = v175;
      v30 = v176;
      v38 = v177;
    }

    if (qword_1EDDFD018 == -1)
    {
      goto LABEL_19;
    }

LABEL_89:
    sub_1C441A86C();
    swift_once();
LABEL_19:
    v57 = sub_1C4F00978();
    sub_1C43FCEE8(v57, qword_1EDE2DDF8);
    v58 = v175;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v172 = v34;
    v59 = sub_1C4F00968();
    v60 = sub_1C4F01CF8();
    if (sub_1C43FCEA4(v60))
    {
      v61 = sub_1C43FD084();
      *v61 = 134217984;
      *(v61 + 4) = sub_1C4428DA0(v58);

      sub_1C441253C();
      _os_log_impl(v62, v63, v64, v65, v61, 0xCu);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    else
    {
    }

    v34 = v174;
    v67 = 0;
    v150 = v169 + 8;
    *&v66 = 136315138;
    v169 = v66;
LABEL_23:
    while (v67 != v180)
    {
      if (v179)
      {
        v68 = MEMORY[0x1C6940F90](v67, v175);
      }

      else
      {
        if (v67 >= *(v178 + 16))
        {
          goto LABEL_87;
        }

        v68 = *(v173 + 8 * v67);
      }

      v69 = v67 + 1;
      if (__OFADD__(v67, 1))
      {
        goto LABEL_86;
      }

      v70 = *(v34 + 16);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if (v70)
      {
        v71 = sub_1C43FE99C();
        v73 = sub_1C445FAA8(v71, v72);
        if (v74)
        {
          sub_1C4509798(*(v34 + 56) + *(v38 + 72) * v73, v30);
          sub_1C4425510();
          sub_1C4C41AB8(v30, v171);
          sub_1C4C907BC();
          if (v76 >> 60 != 15)
          {
            v77 = v76;
            v167 = v68;
            v78 = v75;
            sub_1C44344B8(v75, v76);
            sub_1C44BBEEC(objc_autoreleasePoolPush());
            v79 = sub_1C4EF9348();
            sub_1C44099C4(v79);
            sub_1C4EF9338();
            sub_1C441E7D4();
            sub_1C44902AC(&qword_1EDDFF5F0, v80, &unk_1C4F623C4);
            v81 = v164;
            v82 = v170;
            sub_1C4EF9328();
            if (!v82)
            {
              v155 = 0;
              v152 = v67 + 1;

              objc_autoreleasePoolPop(sub_1C4458588());
              v153 = v78;
              v154 = v77;
              sub_1C44415B4(v78, v77);
              v34 = v95;
              v96 = v151;
              sub_1C4C41AB8(v81, v151);
              sub_1C4C41AB8(v96, v165);
              v97 = v167;
              sub_1C440D164(v167 + 40, v182);
              v30 = *(v97 + 40) + 56;
              sub_1C44410A0();
              sub_1C440FDCC();
              v100 = v99 & v98;
              v38 = (v101 + 63) >> 6;
              v170 = v102;
              swift_bridgeObjectRetain_n();
              v103 = 0;
              v166 = MEMORY[0x1E69E7CC0];
              while (v100)
              {
                v104 = v100;
LABEL_45:
                v100 = (v104 - 1) & v104;
                if (v37[2])
                {
                  sub_1C442AB14();
                  sub_1C4416844();
                  v107 = *v106;
                  v108 = v106[1];
                  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                  v34 = v37;
                  v109 = sub_1C445FAA8(v107, v108);
                  if (v110)
                  {
                    v111 = *(v37[7] + 8 * v109);

                    sub_1C4458588();
                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    v156 = v111;
                    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                    {
                      sub_1C43FCEC0();
                      sub_1C445C3F8();
                      sub_1C44BBEEC(v116);
                    }

                    v114 = *(v166 + 16);
                    v113 = *(v166 + 24);
                    v34 = v114 + 1;
                    if (v114 >= v113 >> 1)
                    {
                      sub_1C43FFD98(v113);
                      sub_1C445C3F8();
                      sub_1C44BBEEC(v117);
                    }

                    v115 = v166;
                    *(v166 + 16) = v34;
                    *(v115 + 8 * v114 + 32) = v156;
                  }

                  else
                  {
                  }
                }
              }

              while (1)
              {
                v105 = v103 + 1;
                if (__OFADD__(v103, 1))
                {
                  break;
                }

                if (v105 >= v38)
                {
                  v34 = v170;

                  sub_1C440D164(v97 + 32, v181);
                  v118 = *(v97 + 32) + 56;
                  sub_1C44410A0();
                  sub_1C440FDCC();
                  v121 = v120 & v119;
                  v38 = (v122 + 63) >> 6;
                  swift_bridgeObjectRetain_n();
                  v123 = 0;
                  v156 = MEMORY[0x1E69E7CC0];
                  while (v121)
                  {
                    v124 = v121;
LABEL_60:
                    v121 = (v124 - 1) & v124;
                    if (v37[2])
                    {
                      sub_1C442AB14();
                      sub_1C4416844();
                      v127 = *v126;
                      v30 = v126[1];
                      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                      v34 = v37;
                      v128 = sub_1C445FAA8(v127, v30);
                      if (v129)
                      {
                        v170 = *(v37[7] + 8 * v128);

                        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                        {
                          sub_1C43FCEC0();
                          sub_1C445C3F8();
                          v156 = v132;
                        }

                        v30 = *(v156 + 16);
                        v130 = *(v156 + 24);
                        v34 = v30 + 1;
                        if (v30 >= v130 >> 1)
                        {
                          sub_1C43FFD98(v130);
                          sub_1C445C3F8();
                          v156 = v133;
                        }

                        v131 = v156;
                        *(v156 + 16) = v34;
                        *(v131 + 8 * v30 + 32) = v170;
                      }

                      else
                      {
                      }
                    }
                  }

                  while (1)
                  {
                    v125 = v123 + 1;
                    if (__OFADD__(v123, 1))
                    {
                      goto LABEL_82;
                    }

                    if (v125 >= v38)
                    {
                      break;
                    }

                    v124 = *(v118 + 8 * v125);
                    ++v123;
                    if (v124)
                    {
                      v123 = v125;
                      goto LABEL_60;
                    }
                  }

                  v134 = v162;
                  v135 = v155;
                  sub_1C4BAE7E8();
                  if (v135)
                  {
                    v170 = v135;

                    sub_1C4458588();
                  }

                  else
                  {

                    sub_1C441BB28();
                    sub_1C4438D00(v136);
                    sub_1C440B678();
                    sub_1C4C41B10();
                    sub_1C4BBA67C();
                    sub_1C441BB28();
                    sub_1C4438D00(v137);
                    sub_1C4C35C78(v134, v67, v123);
                    v170 = 0;
                    sub_1C440B678();
                    sub_1C4C41B10();
                    v138 = *(sub_1C4458588() + 16);

                    if (v138)
                    {
                      sub_1C445140C();
                      sub_1C4EF9C88();
                      sub_1C4EF9AD8();
                      sub_1C4402C08();
                      v139(v138, v158);
                      v138 = v163;
                      v140 = v170;
                      sub_1C4BB8B20();
                      v30 = v176;
                      v38 = v177;
                      v170 = v140;
                      v141 = v152;
                      if (v140)
                      {
                        goto LABEL_78;
                      }
                    }

                    else
                    {
                      v30 = v176;
                      v38 = v177;
                      v141 = v152;
                    }

                    sub_1C4422A7C(&v183);

                    v142 = v162;

                    v143 = v159;
                    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                    v144 = v143;
                    v145 = v170;
                    sub_1C4C90FD0(v165, v138, v142, v67, v144, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160);
                    v34 = v174;
                    v170 = v145;
                    if (!v145)
                    {

                      sub_1C441DFEC(v153, v154);
                      sub_1C4407F44();
                      sub_1C4C41B10();
                      sub_1C440E934();
                      sub_1C4C41B10();
                      v67 = v141;
                      goto LABEL_23;
                    }

LABEL_78:
                  }

                  sub_1C441DFEC(v153, v154);

                  sub_1C4407F44();
                  sub_1C4C41B10();
                  sub_1C440E934();
                  return sub_1C4C41B10();
                }

                v104 = *(v30 + 8 * v105);
                ++v103;
                if (v104)
                {
                  v103 = v105;
                  goto LABEL_45;
                }
              }

              __break(1u);
LABEL_82:
              __break(1u);
              goto LABEL_83;
            }

            v83 = sub_1C4409F48();
            sub_1C441DFEC(v83, v84);

            objc_autoreleasePoolPop(sub_1C4458588());
            v85 = sub_1C4409F48();
            sub_1C441DFEC(v85, v86);
            v170 = 0;
            v30 = v176;
            v38 = v177;
          }

          sub_1C440E934();
          sub_1C4C41B10();
        }
      }

      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v87 = sub_1C4F00968();
      v88 = sub_1C4F01CD8();

      if (os_log_type_enabled(v87, v88))
      {
        v89 = sub_1C43FD084();
        sub_1C43FEC60();
        v90 = swift_slowAlloc();
        v182[3] = v90;
        *v89 = v169;
        v91 = sub_1C43FE99C();
        v94 = sub_1C441D828(v91, v92, v93);

        *(v89 + 4) = v94;
        _os_log_impl(&dword_1C43F8000, v87, v88, "ViewMigration: Failed to retrieve contents of config for %s", v89, 0xCu);
        sub_1C440962C(v90);
        v30 = v176;
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
        v38 = v177;
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
      }

      else
      {
      }

      v67 = v69;
      v34 = v174;
    }
  }

  return result;
}

void sub_1C4C35FD8()
{
  v0 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBCC4();
  v6 = v5 - v4;
  sub_1C4EF9C88();
  sub_1C4EF9AD8();
  (*(v2 + 8))(v6, v0);
  sub_1C4BB8B20();
  if (!v7)
  {
    sub_1C4BB6B24();
    sub_1C43FD024();
    sub_1C4BB6B24();
  }
}

uint64_t sub_1C4C36128()
{
  v2 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  sub_1C43FBD18(v2);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C4402A68();
  sub_1C43FE984();
  result = sub_1C4EFBE98();
  if (!v0)
  {
    sub_1C43FBE94();
    sub_1C4EFB768();
    v5 = sub_1C44179F4();
    sub_1C440BAA8(v5, v6, v7, v8);
    sub_1C4EFC0A8();
    sub_1C4420C3C(v1, &unk_1EC0C06C0, &unk_1C4F10DB0);
  }

  return result;
}

uint64_t sub_1C4C36200()
{
  v2 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  sub_1C43FBD18(v2);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C4402A68();
  sub_1C43FE984();
  result = sub_1C4EFBE98();
  if (!v0)
  {
    sub_1C43FBE94();
    sub_1C4EFB768();
    v5 = sub_1C44179F4();
    sub_1C440BAA8(v5, v6, v7, v8);
    sub_1C4EFC0A8();
    sub_1C4420C3C(v1, &unk_1EC0C06C0, &unk_1C4F10DB0);
  }

  return result;
}

void sub_1C4C362D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  v22 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  v23 = sub_1C43FBD18(v22);
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FBD08();
  v26 = v24 - v25;
  MEMORY[0x1EEE9AC00](v27);
  sub_1C447F150();
  v28 = sub_1C4EFBC98();
  sub_1C43FCDF8();
  v30 = v29;
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FBD08();
  MEMORY[0x1EEE9AC00](v32);
  sub_1C43FE984();
  MEMORY[0x1C693A960](0xD00000000000054ALL);
  sub_1C4EFBEA8();
  if (v20)
  {
    v33 = sub_1C443DF7C();
    v34(v33);
  }

  else
  {
    v45 = v26;
    v35 = *(v30 + 8);
    v36 = sub_1C443DF7C();
    v35(v36);
    v37 = sub_1C4EFB768();
    sub_1C43FCF64();
    sub_1C440BAA8(v38, v39, v40, v37);
    sub_1C4EFC0A8();
    sub_1C4420C3C(v21, &unk_1EC0C06C0, &unk_1C4F10DB0);

    MEMORY[0x1C693A960](0xD000000000000576, 0x80000001C4FBB1B0);
    sub_1C4EFBEA8();
    v41 = sub_1C43FEF2C();
    (v35)(v41, v28);
    sub_1C43FCF64();
    sub_1C440BAA8(v42, v43, v44, v37);
    sub_1C4EFC0A8();
    sub_1C4420C3C(v45, &unk_1EC0C06C0, &unk_1C4F10DB0);
  }

  sub_1C43FBC80();
}

void sub_1C4C36558()
{
  sub_1C43FE96C();
  v18 = sub_1C4EFB768();
  sub_1C43FCDF8();
  v17 = v1;
  MEMORY[0x1EEE9AC00](v2);
  sub_1C43FBFDC();
  v14 = v3;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBF38();
  v15 = v5;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FD230();
  v16 = v7;
  v8 = off_1EC0C4FC8;
  v9 = *(off_1EC0C4FC8 + 2);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v10 = 0;
  for (i = v8 + 5; ; i += 2)
  {
    if (v9 == v10)
    {

      sub_1C4EFB758();
      sub_1C44178D8();
      sub_1C4EFBFF8();
      if (v0)
      {
        (*(v17 + 8))(v16, v18);
      }

      else
      {
        v13 = *(v17 + 8);
        v13(v16, v18);
        sub_1C4EFB758();
        sub_1C44178D8();
        sub_1C4EFBFF8();
        v13(v15, v18);
        sub_1C4EFB758();
        sub_1C44178D8();
        sub_1C4EFBFF8();
        v13(v14, v18);
      }

      goto LABEL_12;
    }

    if (v10 >= v8[2])
    {
      break;
    }

    v0 = *(i - 1);
    v12 = *i;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    MEMORY[0x1C6940010](v0, v12);

    sub_1C44178D8();
    sub_1C4EFBF68();

    if (v0)
    {

LABEL_12:
      sub_1C43FBC80();
      return;
    }

    ++v10;
  }

  __break(1u);
}

uint64_t sub_1C4C367F0(uint64_t a1, uint64_t a2)
{
  swift_unownedRetain();

  result = sub_1C4BABFC8(0, 0, a1, a2);
  if (v2)
  {

    return swift_unownedRelease();
  }

  else
  {
    v6 = result;
    v7 = 0;
    v13 = *(result + 16);
    for (i = result + 48; ; i += 24)
    {
      if (v13 == v7)
      {

        return swift_unownedRelease();
      }

      if (v7 >= *(v6 + 16))
      {
        break;
      }

      v9 = a1;
      v10 = a2;
      v11 = *(i - 16);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C456902C(&unk_1EC0C6380, &qword_1C4F37698);
      sub_1C4C41B64();
      sub_1C4F00F28();
      v12 = v11;
      a2 = v10;
      a1 = v9;
      sub_1C4CEC38C(v12);

      ++v7;
    }

    __break(1u);
  }

  return result;
}

void sub_1C4C369A0()
{
  sub_1C43FE96C();
  v1 = v0;
  v2 = sub_1C4EFB768();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v75 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v84 = &v75 - v10;
  v11 = *(off_1EC0C4FC8 + 2);
  v12 = off_1EC0C4FC8 + 32;
  v89 = v13 + 8;
  v14 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v15 = 0;
  v90 = v2;
  v88 = v1;
  v85 = v8;
  v79 = v14;
  v82 = v5;
  v77 = v11;
  v76 = v12;
LABEL_2:
  if (v15 == v11)
  {
    goto LABEL_51;
  }

  if (v15 < *(v14 + 16))
  {
    v16 = &v12[16 * v15];
    v18 = *v16;
    v17 = *(v16 + 1);
    v19 = aRebuilding[1];
    v96 = aRebuilding[0];
    v97 = aRebuilding[1];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v91 = v18;
    v83 = v17;
    MEMORY[0x1C6940010](v18, v17);
    v20 = v96;
    v81 = v97;
    sub_1C441D424();
    v21 = sub_1C4EFBE58();
    if (!v19)
    {
      v80 = v20;
      if (v21)
      {
        sub_1C441D424();
        sub_1C4EFBF68();
      }

      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C440BB4C();
      sub_1C441D424();
      v86 = sub_1C46A9F90(v22, v23, v24, v25);
      sub_1C440BB4C();
      sub_1C441D424();
      v30 = sub_1C46A9F90(v26, v27, v28, v29);
      v78 = v15 + 1;

      v31 = v30 + 64;
      sub_1C44410A0();
      sub_1C440FDCC();
      v34 = v33 & v32;
      v36 = (v35 + 63) >> 6;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v37 = 0;
      v38 = v30;
      while (v34)
      {
        v39 = v37;
LABEL_13:
        sub_1C4416844();
        v41 = *v40;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C441D424();
        sub_1C4EFBF58();
        if (v41)
        {
LABEL_49:

          goto LABEL_51;
        }

        v34 &= v34 - 1;

        v37 = v39;
        v38 = v30;
      }

      while (1)
      {
        v39 = v37 + 1;
        if (__OFADD__(v37, 1))
        {
          __break(1u);
          goto LABEL_53;
        }

        if (v39 >= v36)
        {
          break;
        }

        v34 = *(v31 + 8 * v39);
        ++v37;
        if (v34)
        {
          goto LABEL_13;
        }
      }

      v42 = 1 << *(v38 + 32);
      if (v42 < 64)
      {
        v43 = ~(-1 << v42);
      }

      else
      {
        v43 = -1;
      }

      v44 = v43 & *(v38 + 64);
      v45 = (v42 + 63) >> 6;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v46 = 0;
      if (v44)
      {
        while (1)
        {
          v87 = 0;
          v47 = v46;
LABEL_24:
          v48 = (*(v38 + 56) + ((v47 << 10) | (16 * __clz(__rbit64(v44)))));
          v49 = v48[1];
          v96 = *v48;
          v97 = v49;
          v94 = 25180;
          v95 = 0xE200000000000000;
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v50 = sub_1C445852C();
          MEMORY[0x1C6940010](v50);
          MEMORY[0x1C6940010](25180, 0xE200000000000000);
          v92 = 0x69646C6975626572;
          v93 = 0xEB000000005F676ELL;
          v51 = sub_1C445852C();
          MEMORY[0x1C6940010](v51);

          sub_1C4415EA8();
          sub_1C4F02008();

          sub_1C4EFB758();
          sub_1C4430758();
          v52 = v87;
          sub_1C4EFBFF8();
          if (v52)
          {
            break;
          }

          v44 &= v44 - 1;
          v53 = sub_1C43FCA84();
          v54(v53);

          v46 = v47;
          v38 = v30;
          if (!v44)
          {
            goto LABEL_20;
          }
        }

        v73 = sub_1C43FCA84();
        v74(v73);
        goto LABEL_49;
      }

LABEL_20:
      while (1)
      {
        v47 = v46 + 1;
        if (__OFADD__(v46, 1))
        {
          break;
        }

        if (v47 >= v45)
        {

          sub_1C441D424();
          sub_1C4EFBFE8();

          v55 = 0;
          v56 = v86 + 64;
          v57 = 1 << *(v86 + 32);
          if (v57 < 64)
          {
            v58 = ~(-1 << v57);
          }

          else
          {
            v58 = -1;
          }

          v59 = v58 & *(v86 + 64);
          for (i = (v57 + 63) >> 6; v59; v55 = v61)
          {
            v61 = v55;
LABEL_35:
            sub_1C4416844();
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            sub_1C4EFB758();
            sub_1C4430758();
            sub_1C4EFBFF8();
            v59 &= v59 - 1;
            v62 = sub_1C43FCA84();
            v63(v62);
          }

          while (1)
          {
            v61 = v55 + 1;
            if (__OFADD__(v55, 1))
            {
              goto LABEL_54;
            }

            if (v61 >= i)
            {

              sub_1C44410A0();
              v66 = *(v30 + 64);
              if (v65 < 64)
              {
                v67 = ~(-1 << v65);
              }

              else
              {
                v67 = -1;
              }

              v68 = v67 & v66;
              v69 = (v65 + 63) >> 6;
              if ((v67 & v66) != 0)
              {
                do
                {
                  v70 = v64;
LABEL_45:
                  sub_1C4416844();
                  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                  sub_1C4EFB758();
                  sub_1C4430758();
                  sub_1C441D424();
                  sub_1C4EFBFF8();
                  v68 &= v68 - 1;
                  v71 = sub_1C43FCA84();
                  v72(v71);

                  v64 = v70;
                }

                while (v68);
              }

              while (1)
              {
                v70 = v64 + 1;
                if (__OFADD__(v64, 1))
                {
                  goto LABEL_55;
                }

                if (v70 >= v69)
                {

                  v15 = v78;
                  v14 = v79;
                  v11 = v77;
                  v12 = v76;
                  goto LABEL_2;
                }

                v68 = *(v31 + 8 * v70);
                ++v64;
                if (v68)
                {
                  goto LABEL_45;
                }
              }
            }

            v59 = *(v56 + 8 * v61);
            ++v55;
            if (v59)
            {
              goto LABEL_35;
            }
          }
        }

        v44 = *(v31 + 8 * v47);
        ++v46;
        if (v44)
        {
          v87 = 0;
          goto LABEL_24;
        }
      }

LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

LABEL_51:

    sub_1C43FBC80();
    return;
  }

LABEL_56:
  __break(1u);
}

void sub_1C4C37198(uint64_t a1, uint64_t a2)
{
  v13 = MEMORY[0x1E69E7CD0];
  sub_1C4CCEF34(0, 1);
  if (!v2)
  {
    v5 = v4;
    v12[1] = MEMORY[0x1E69E7CC0];
    v6 = sub_1C4428DA0(v4);
    v7 = 0;
    v8 = v5 & 0xC000000000000001;
    v9 = v5 & 0xFFFFFFFFFFFFFF8;
    v11 = v5;
    while (1)
    {
      if (v6 == v7)
      {

        return;
      }

      if (v8)
      {
        v10 = MEMORY[0x1C6940F90](v7, v5);
      }

      else
      {
        if (v7 >= *(v9 + 16))
        {
          goto LABEL_16;
        }

        v10 = *(v5 + 8 * v7 + 32);
      }

      if (__OFADD__(v7, 1))
      {
        break;
      }

      v12[0] = v10;
      if (sub_1C4C37340(v12, a2, &v13))
      {
        sub_1C4F02318();
        sub_1C4F02358();
        sub_1C4F02368();
        sub_1C4F02328();
        v5 = v11;
      }

      else
      {
      }

      ++v7;
    }

    __break(1u);
LABEL_16:
    __break(1u);

    __break(1u);
  }
}

uint64_t sub_1C4C37340(uint64_t **a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a1;
  if (sub_1C4499AD0((*a1)[2], (*a1)[3], a2))
  {
    swift_beginAccess();
    v5 = *a3;
    swift_beginAccess();
    v6 = v4[4];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v7 = sub_1C4C34B9C(v5, v6);

    if (v7)
    {
      v8 = v4[2];
      v9 = v4[3];
      swift_beginAccess();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C44869B4(var98, v8, v9, v10, v11, v12, v13, v14, v27, var98[0], var98[1], var98[2], var98[3], var98[4], var98[5], var98[6], var98[7], var98[8], var98[9], var98[10], var98[11], var98[12], var98[13], var98[14], var98[15], var98[16], var98[17], var98[18], var98[19], var98[20]);
      swift_endAccess();

      return 1;
    }

    if (qword_1EDDFD018 != -1)
    {
      swift_once();
    }

    v16 = sub_1C4F00978();
    sub_1C442B738(v16, qword_1EDE2DDF8);

    v17 = sub_1C4F00968();
    v18 = sub_1C4F01CD8();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      var98[0] = v20;
      *v19 = 136315394;
      *(v19 + 4) = sub_1C441D828(v4[2], v4[3], var98);
      *(v19 + 12) = 2080;
      v21 = v4[4];
      swift_beginAccess();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v22 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4A7C858(v22, v21);

      v23 = sub_1C4F01AC8();
      v25 = v24;

      v26 = sub_1C441D828(v23, v25, var98);

      *(v19 + 14) = v26;
      _os_log_impl(&dword_1C43F8000, v17, v18, "ViewMigration: skipping %s due to missing dependency %s", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1C6942830](v20, -1, -1);
      MEMORY[0x1C6942830](v19, -1, -1);
    }
  }

  return 0;
}

uint64_t sub_1C4C375F8(unint64_t a1, uint64_t a2)
{
  v3 = a2;
  v4 = a1;
  result = sub_1C4C38504(a1, a2);
  if (v2)
  {
    return result;
  }

  v157 = v4;
  v166 = v3;
  v168 = sub_1C4428DA0(v4);
  if (v168)
  {
    v6 = 0;
    v7 = 0;
    v167 = v4 & 0xC000000000000001;
    v8 = MEMORY[0x1E69E7CC8];
    buf = (v4 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      if (v167)
      {
        v9 = sub_1C445852C();
        v10 = MEMORY[0x1C6940F90](v9);
      }

      else
      {
        if (v6 >= *(buf + 2))
        {
          goto LABEL_137;
        }

        v10 = *(v4 + 8 * v6 + 32);
      }

      v11 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_134:
        __break(1u);
LABEL_135:
        __break(1u);
LABEL_136:
        __break(1u);
LABEL_137:
        __break(1u);
LABEL_138:
        __break(1u);
LABEL_139:
        __break(1u);
LABEL_140:
        sub_1C441A86C();
        swift_once();
LABEL_101:
        v100 = sub_1C4F00978();
        sub_1C43FCEE8(v100, qword_1EDE2DDF8);
        swift_bridgeObjectRetain_n();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v101 = sub_1C4F00968();
        v102 = sub_1C4F01CE8();
        if (os_log_type_enabled(v101, v102))
        {
          sub_1C441024C();
          v103 = swift_slowAlloc();
          *v103 = 134218240;
          *(v103 + 4) = sub_1C4428DA0(v4);

          *(v103 + 12) = 2048;
          *(v103 + 14) = sub_1C4428DA0(v170);

          _os_log_impl(&dword_1C43F8000, v101, v102, "ViewMigration: Failed to sort nodes [before: %ld, after: %ld]", v103, 0x16u);
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
        }

        else
        {
        }

        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v110 = sub_1C4F00968();
        v111 = sub_1C4F01CE8();

        if (!os_log_type_enabled(v110, v111))
        {
          goto LABEL_118;
        }

        v160 = v111;
        logb = v110;
        v112 = sub_1C43FD084();
        sub_1C43FEC60();
        v153 = swift_slowAlloc();
        *&v172 = v153;
        bufa = v112;
        *v112 = 136315138;
        v113 = MEMORY[0x1E69E7CC0];
        if (!v166)
        {
          goto LABEL_117;
        }

        v175 = MEMORY[0x1E69E7CC0];
        sub_1C44CD9C0(0, v166 & ~(v166 >> 63), 0);
        v114 = v166;
        if (v166 < 0)
        {
          __break(1u);
        }

        else
        {
          v115 = 0;
          v113 = v175;
          v116 = v4 & 0xC000000000000001;
          do
          {
            if (v116)
            {
              v117 = sub_1C4409F48();
              v118 = MEMORY[0x1C6940F90](v117);
            }

            else
            {
              v118 = *(v4 + 8 * v115 + 32);
            }

            v119 = *(v118 + 16);
            v120 = *(v118 + 24);
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

            v175 = v113;
            v122 = *(v113 + 2);
            v121 = *(v113 + 3);
            if (v122 >= v121 >> 1)
            {
              v124 = sub_1C43FCFE8(v121);
              sub_1C44CD9C0(v124, v122 + 1, 1);
              v114 = v166;
              v113 = v175;
            }

            ++v115;
            *(v113 + 2) = v122 + 1;
            v123 = &v113[v122];
            *(v123 + 4) = v119;
            *(v123 + 5) = v120;
            v7 = v167;
            v4 = v157;
          }

          while (v114 != v115);
LABEL_117:
          v125 = MEMORY[0x1C6940380](v113, MEMORY[0x1E69E6158]);
          v127 = v126;

          v128 = sub_1C441D828(v125, v127, &v172);

          *(bufa + 4) = v128;
          v110 = logb;
          _os_log_impl(&dword_1C43F8000, logb, v160, "ViewMigration: Before: %s", bufa, 0xCu);
          sub_1C440962C(v153);
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
LABEL_118:

          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v129 = sub_1C4F00968();
          v130 = sub_1C4F01CE8();

          if (!os_log_type_enabled(v129, v130))
          {
            goto LABEL_130;
          }

          v131 = sub_1C43FD084();
          sub_1C43FEC60();
          logc = swift_slowAlloc();
          *&v172 = logc;
          *v131 = 136315138;
          v132 = sub_1C4428DA0(v170);
          v133 = MEMORY[0x1E69E7CC0];
          if (!v132)
          {
            goto LABEL_129;
          }

          v134 = v132;
          bufb = v131;
          v158 = v130;
          v161 = v129;
          v175 = MEMORY[0x1E69E7CC0];
          sub_1C44CD9C0(0, v132 & ~(v132 >> 63), 0);
          if ((v134 & 0x8000000000000000) == 0)
          {
            v135 = 0;
            v133 = v175;
            do
            {
              if ((v170 & 0xC000000000000001) != 0)
              {
                v136 = MEMORY[0x1C6940F90](v135, v170);
              }

              else
              {
                v136 = *(v170 + 8 * v135 + 32);
              }

              v137 = *(v136 + 16);
              v138 = *(v136 + 24);
              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

              v175 = v133;
              v140 = *(v133 + 2);
              v139 = *(v133 + 3);
              if (v140 >= v139 >> 1)
              {
                v142 = sub_1C43FCFE8(v139);
                sub_1C44CD9C0(v142, v140 + 1, 1);
                v133 = v175;
              }

              ++v135;
              *(v133 + 2) = v140 + 1;
              v141 = &v133[v140];
              *(v141 + 4) = v137;
              *(v141 + 5) = v138;
            }

            while (v134 != v135);
            v7 = v167;
            v129 = v161;
            v130 = v158;
            v131 = bufb;
LABEL_129:
            v143 = MEMORY[0x1C6940380](v133, MEMORY[0x1E69E6158]);
            v145 = v144;

            v146 = sub_1C441D828(v143, v145, &v172);

            *(v131 + 4) = v146;
            _os_log_impl(&dword_1C43F8000, v129, v130, "ViewMigration: After: %s", v131, 0xCu);
            sub_1C440962C(logc);
            sub_1C43FBCFC();
            MEMORY[0x1C6942830]();
            sub_1C43FBCFC();
            MEMORY[0x1C6942830]();
LABEL_130:

            *&v172 = 0;
            *(&v172 + 1) = 0xE000000000000000;
            sub_1C4F02248();
            MEMORY[0x1C6940010](0xD000000000000036, 0x80000001C4FBBEE0);
            v175 = v166;
            sub_1C4402CD0();
            v147 = sub_1C4F02858();
            MEMORY[0x1C6940010](v147);

            sub_1C43FE984();
            MEMORY[0x1C6940010](0xD000000000000013);

            sub_1C4428DA0(v170);
            sub_1C4404CE0();

            v175 = &v172;
            sub_1C4402CD0();
            v148 = sub_1C4F02858();
            MEMORY[0x1C6940010](v148);

            v149 = v172;
            v150 = sub_1C450B034();
            sub_1C43FFB2C(&unk_1F44064D8, v150);
            *v151 = 0;
            *(v151 + 8) = 0xE000000000000000;
            *(v151 + 16) = v149;
            v152 = v173;
            *(v151 + 32) = v172;
            *(v151 + 48) = v152;
            *(v151 + 64) = 9;
            swift_willThrow();

            v109 = v7;
            return sub_1C44239FC(v109, 0);
          }
        }

        __break(1u);
LABEL_143:
        result = sub_1C4F029F8();
        __break(1u);
        return result;
      }

      if (*(v3 + 16))
      {
        break;
      }

LABEL_28:
      ++v6;
      if (v11 == v168)
      {
        goto LABEL_31;
      }
    }

    v170 = v6 + 1;
    v12 = *(v10 + 16);
    v13 = *(v10 + 24);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v14 = sub_1C445FAA8(v12, v13);
    v16 = v15;

    if ((v16 & 1) == 0)
    {

LABEL_27:
      v11 = v6 + 1;
      goto LABEL_28;
    }

    v17 = (*(v3 + 56) + 16 * v14);
    v18 = *v17;
    v19 = v17[1];
    v20 = *(v10 + 24);
    log = *(v10 + 16);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44239FC(v7, 0);
    swift_isUniquelyReferenced_nonNull_native();
    *&v172 = v8;
    v21 = sub_1C445FAA8(v18, v19);
    v23 = v8[2];
    v24 = (v22 & 1) == 0;
    v7 = (v23 + v24);
    if (__OFADD__(v23, v24))
    {
      goto LABEL_138;
    }

    v4 = v21;
    v25 = v22;
    sub_1C456902C(&qword_1EC0BDDB8, &unk_1C4F32060);
    if (sub_1C4F02458())
    {
      v26 = v172;
      sub_1C445FAA8(v18, v19);
      sub_1C4404D54();
      if (!v53)
      {
        goto LABEL_143;
      }

      v4 = v27;
      if ((v25 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v26 = v172;
      if ((v25 & 1) == 0)
      {
LABEL_16:
        sub_1C4401D38(&v26[v4 >> 6]);
        v28 = (v26[6] + 16 * v4);
        *v28 = v18;
        v28[1] = v19;
        *(v26[7] + 8 * v4) = MEMORY[0x1E69E7CC0];
        v29 = v26[2];
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          goto LABEL_139;
        }

        v8 = v26;
        v26[2] = v31;
        goto LABEL_22;
      }
    }

    v8 = v26;
LABEL_22:
    v32 = v8[7];
    v33 = *(v32 + 8 * v4);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v32 + 8 * v4) = v33;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1C43FCEC0();
      sub_1C443D664();
      v33 = v39;
      *(v32 + 8 * v4) = v39;
    }

    v36 = *(v33 + 16);
    v35 = *(v33 + 24);
    if (v36 >= v35 >> 1)
    {
      sub_1C43FFD98(v35);
      sub_1C443D664();
      *(v32 + 8 * v4) = v40;
    }

    v37 = *(v32 + 8 * v4);
    *(v37 + 16) = v36 + 1;
    v38 = v37 + 16 * v36;
    *(v38 + 32) = log;
    *(v38 + 40) = v20;
    v7 = sub_1C48362FC;
    v4 = v157;
    v3 = v166;
    goto LABEL_27;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC8];
LABEL_31:
  v41 = MEMORY[0x1E69E7CC0];
  v179 = MEMORY[0x1E69E7CC0];
  v177 = MEMORY[0x1E69E7CC0];
  v178 = MEMORY[0x1E69E7CC0];
  v176 = MEMORY[0x1E69E7CC0];
  v167 = v7;
  if (!v168)
  {
LABEL_98:
    v99 = sub_1C4428DA0(v4);
    v170 = v41;
    if (v99 == sub_1C4428DA0(v41))
    {

      sub_1C44239FC(v7, 0);
      return v41;
    }

    v166 = v99;
    if (qword_1EDDFD018 != -1)
    {
      goto LABEL_140;
    }

    goto LABEL_101;
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v170 = 0;
  v7 = 0;
  v42 = 0;
  v159 = v41;
  loga = v41;
  while (1)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v93 = sub_1C43FD574();
      v43 = MEMORY[0x1C6940F90](v93);
    }

    else
    {
      if ((v42 & 0x8000000000000000) != 0)
      {
        goto LABEL_134;
      }

      if (v42 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_136;
      }

      v43 = *(v4 + 8 * v42 + 32);
    }

    v30 = __OFADD__(v42++, 1);
    if (v30)
    {
      goto LABEL_135;
    }

    if (!v7)
    {
      if (*(v3 + 16))
      {
        v55 = *(v43 + 16);
        v56 = *(v43 + 24);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v57 = sub_1C445FAA8(v55, v56);
        v59 = v58;

        if (v59)
        {
          v60 = (*(v3 + 56) + 16 * v57);
          v61 = *v60;
          v7 = v60[1];
          v62 = v8[2];
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          if (!v62 || (v63 = sub_1C445FAA8(v61, v7), (v64 & 1) == 0) || (v65 = *(v8[7] + 8 * v63), v68 = *(v65 + 16), v66 = v65 + 16, (v67 = v68) == 0) || ((v69 = (v66 + 16 * v67), *v69 == *(v43 + 16)) ? (v70 = v69[1] == *(v43 + 24)) : (v70 = 0), !v70 && (sub_1C4F02938() & 1) == 0))
          {

            MEMORY[0x1C6940330](v80);
            sub_1C4405468();
            if (v73)
            {
              v98 = sub_1C43FCFE8(v81);
              sub_1C444C3BC(v98);
            }

            sub_1C4451438();

            v170 = v61;
            goto LABEL_90;
          }
        }
      }

      MEMORY[0x1C6940330](v71);
      sub_1C4405468();
      if (v73)
      {
        v94 = sub_1C43FCFE8(v72);
        sub_1C444C3BC(v94);
      }

      sub_1C4451438();

      v7 = 0;
      goto LABEL_90;
    }

    if (!v8[2])
    {

      goto LABEL_105;
    }

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v44 = sub_1C445FAA8(v170, v7);
    if ((v45 & 1) == 0)
    {
      break;
    }

    v46 = *(v8[7] + 8 * v44);
    if (!*(v3 + 16))
    {
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
LABEL_64:

LABEL_65:
      sub_1C440D164(v43 + 40, v171);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v74 = sub_1C43FD024();
      v76 = sub_1C4C418FC(v74, v75);

      if (v76)
      {
        MEMORY[0x1C6940330](v77);
        sub_1C4405468();
        if (v73)
        {
          v95 = sub_1C43FCFE8(v78);
          sub_1C444C3BC(v95);
        }

        sub_1C4451438();

        v159 = v176;
      }

      else
      {
        MEMORY[0x1C6940330](v77);
        sub_1C4405468();
        if (v73)
        {
          v96 = sub_1C43FCFE8(v79);
          sub_1C444C3BC(v96);
        }

        sub_1C4451438();

        loga = v177;
      }

      goto LABEL_90;
    }

    v47 = *(v43 + 16);
    v48 = *(v43 + 24);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v49 = sub_1C445FAA8(v47, v48);
    v51 = v50;
    v3 = v166;

    if ((v51 & 1) == 0)
    {
      goto LABEL_64;
    }

    v52 = (*(v166 + 56) + 16 * v49);
    v53 = *v52 == v170 && v7 == v52[1];
    if (v53)
    {
    }

    else
    {
      v54 = sub_1C4F02938();

      if ((v54 & 1) == 0)
      {
        goto LABEL_65;
      }
    }

    MEMORY[0x1C6940330](v82);
    sub_1C4405468();
    if (v73)
    {
      v97 = sub_1C43FCFE8(v83);
      sub_1C444C3BC(v97);
    }

    sub_1C4451438();
    v169 = v178;
    v84 = *(v46 + 16);
    if (!v84)
    {

      goto LABEL_90;
    }

    v85 = (v46 + 16 + 16 * v84);
    v87 = *v85;
    v86 = v85[1];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    if (v87 != *(v43 + 16) || v86 != *(v43 + 24))
    {
      sub_1C4402120();
      v89 = sub_1C4F02938();

      if (v89)
      {
        goto LABEL_87;
      }

LABEL_90:
      if ((v4 & 0x8000000000000000) != 0)
      {
        goto LABEL_97;
      }

      goto LABEL_91;
    }

LABEL_87:

    sub_1C49D4C70(loga);
    sub_1C49D4C70(v169);
    sub_1C45FB124(v4, v42);
    v91 = v90;

    *&v172 = v159;
    sub_1C49D4C70(v91);

    v42 = 0;
    v4 = v172;
    v177 = MEMORY[0x1E69E7CC0];
    v178 = MEMORY[0x1E69E7CC0];
    v176 = MEMORY[0x1E69E7CC0];
    v170 = 0;
    v7 = 0;
    if ((v172 & 0x8000000000000000) != 0)
    {
      v159 = MEMORY[0x1E69E7CC0];
      loga = MEMORY[0x1E69E7CC0];
LABEL_97:
      v92 = sub_1C4F02128();
      goto LABEL_93;
    }

    v159 = MEMORY[0x1E69E7CC0];
    loga = MEMORY[0x1E69E7CC0];
LABEL_91:
    if ((v4 & 0x4000000000000000) != 0)
    {
      goto LABEL_97;
    }

    v92 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_93:
    if (v42 == v92)
    {

      v41 = v179;
      v7 = v167;
      v4 = v157;
      goto LABEL_98;
    }
  }

LABEL_105:

  *&v172 = 0;
  *(&v172 + 1) = 0xE000000000000000;
  sub_1C4F02248();

  strcpy(&v172, "Found group ");
  BYTE13(v172) = 0;
  HIWORD(v172) = -5120;
  MEMORY[0x1C6940010](v170, v7);

  MEMORY[0x1C6940010](0xD00000000000001ALL, 0x80000001C4FBBF40);
  v104 = v172;
  v105 = sub_1C450B034();
  sub_1C43FFB2C(&unk_1F44064D8, v105);
  *v106 = v104;
  v107 = v174;
  v108 = v173;
  *(v106 + 16) = v172;
  *(v106 + 32) = v108;
  *(v106 + 48) = v107;
  *(v106 + 64) = 12;
  swift_willThrow();

  v109 = v167;
  return sub_1C44239FC(v109, 0);
}

uint64_t sub_1C4C38504(uint64_t a1, uint64_t a2)
{
  sub_1C4403FC0();
  _s17ViewDependencyDAGCMa();
  inited = swift_initStackObject();
  _s7DAGNodeCMa();
  v166 = sub_1C4F00F28();
  *(inited + 16) = v166;
  v171 = inited;
  v167 = sub_1C4428DA0(v2);
  if (!v167)
  {
    v170 = 0;
    v8 = MEMORY[0x1E69E7CC8];
    goto LABEL_109;
  }

  v170 = 0;
  v6 = 0;
  v7 = v2 & 0xC000000000000001;
  v162 = v2 + 32;
  v8 = MEMORY[0x1E69E7CC8];
  v193 = a2;
  v163 = v2 & 0xC000000000000001;
  v164 = v2;
LABEL_3:
  v9 = v7;
  sub_1C4431590(v6, v7 == 0, v2);
  if (v9)
  {
    v10 = sub_1C4402120();
    v174 = MEMORY[0x1C6940F90](v10);
  }

  else
  {
    v174 = *(v162 + 8 * v6);
  }

  v11 = __OFADD__(v6, 1);
  v12 = v6 + 1;
  if (v11)
  {
    goto LABEL_142;
  }

  v168 = v12;
  v172 = v8;
  sub_1C440D164((v174 + 4), v197);
  v13 = v174[4];
  v14 = *(v13 + 16);
  if (v14)
  {
    v195[0].n128_u64[0] = MEMORY[0x1E69E7CC0];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44CD9C0(0, v14, 0);
    v15 = v195[0].n128_u64[0];
    v18 = sub_1C486C288();
    v19 = 0;
    v188 = v13 + 56;
    v176 = v13 + 64;
    v178 = v14;
    v180 = v13;
    if (v18 < 0)
    {
LABEL_127:
      __break(1u);
LABEL_128:
      __break(1u);
LABEL_129:
      __break(1u);
LABEL_130:
      __break(1u);
LABEL_131:
      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
LABEL_136:
      __break(1u);
LABEL_137:
      __break(1u);
LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
      goto LABEL_140;
    }

    while (1)
    {
      if (v18 >= 1 << *(v13 + 32))
      {
        goto LABEL_127;
      }

      v3 = v18 >> 6;
      if ((*(v188 + 8 * (v18 >> 6)) & (1 << v18)) == 0)
      {
        goto LABEL_128;
      }

      if (*(v13 + 36) != v16)
      {
        goto LABEL_129;
      }

      v182 = v17;
      v184 = v16;
      v20 = (*(v13 + 48) + 16 * v18);
      v21 = *v20;
      v22 = v20[1];
      v23 = *(a2 + 16);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if (v23)
      {
        v24 = v15;
        v25 = sub_1C445FAA8(v21, v22);
        if (v26)
        {
          v27 = (*(a2 + 56) + 16 * v25);
          v21 = *v27;
          v28 = v27[1];
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

          v22 = v28;
        }

        v15 = v24;
      }

      v29 = v184;
      v195[0].n128_u64[0] = v15;
      v31 = *(v15 + 16);
      v30 = *(v15 + 24);
      v32 = v182;
      if (v31 >= v30 >> 1)
      {
        v43 = sub_1C43FCFE8(v30);
        sub_1C44CD9C0(v43, v31 + 1, 1);
        v32 = v182;
        v29 = v184;
        v15 = v195[0].n128_u64[0];
      }

      *(v15 + 16) = v31 + 1;
      v33 = v15 + 16 * v31;
      *(v33 + 32) = v21;
      *(v33 + 40) = v22;
      if (v32)
      {
        goto LABEL_145;
      }

      v13 = v180;
      v34 = 1 << *(v180 + 32);
      a2 = v193;
      if (v18 >= v34)
      {
        goto LABEL_130;
      }

      v35 = *(v188 + 8 * v3);
      if ((v35 & (1 << v18)) == 0)
      {
        goto LABEL_131;
      }

      if (*(v180 + 36) != v29)
      {
        goto LABEL_132;
      }

      if ((v35 & (-2 << (v18 & 0x3F))) != 0)
      {
        sub_1C442AB14();
        v34 = v36 | v18 & 0x7FFFFFFFFFFFFFC0;
        v37 = v178;
      }

      else
      {
        v185 = v15;
        v38 = v3 << 6;
        v39 = v3 + 1;
        v37 = v178;
        v40 = (v176 + 8 * v3);
        while (v39 < (v34 + 63) >> 6)
        {
          v42 = *v40++;
          v41 = v42;
          v38 += 64;
          ++v39;
          if (v42)
          {
            sub_1C45E8E98(v18, v29, 0);
            v34 = __clz(__rbit64(v41)) + v38;
            goto LABEL_29;
          }
        }

        sub_1C45E8E98(v18, v29, 0);
LABEL_29:
        a2 = v193;
        v15 = v185;
      }

      if (++v19 == v37)
      {
        break;
      }

      v17 = 0;
      v16 = *(v180 + 36);
      v18 = v34;
      if (v34 < 0)
      {
        goto LABEL_127;
      }
    }
  }

  v44 = sub_1C4499940();
  v198 = v44;
  sub_1C440D164((v174 + 5), v196);
  v45 = v174[5];
  v46 = *(v45 + 16);
  v169 = v44;
  if (v46)
  {
    v195[0].n128_u64[0] = MEMORY[0x1E69E7CC0];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44CD9C0(0, v46, 0);
    v189 = v195[0].n128_u64[0];
    v49 = sub_1C486C288();
    v50 = 0;
    v186 = v45 + 56;
    v175 = v45 + 64;
    v177 = v46;
    v179 = v45;
    if (v49 < 0)
    {
      goto LABEL_133;
    }

    while (1)
    {
      if (v49 >= 1 << *(v45 + 32))
      {
        goto LABEL_133;
      }

      v51 = v49 >> 6;
      v3 = 1 << v49;
      if ((*(v186 + 8 * (v49 >> 6)) & (1 << v49)) == 0)
      {
        goto LABEL_134;
      }

      if (*(v45 + 36) != v47)
      {
        goto LABEL_135;
      }

      v181 = v48;
      v183 = v47;
      v52 = (*(v45 + 48) + 16 * v49);
      v53 = *v52;
      v54 = v52[1];
      v55 = *(a2 + 16);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if (v55)
      {
        v56 = sub_1C445852C();
        v58 = sub_1C445FAA8(v56, v57);
        if (v59)
        {
          v60 = (*(a2 + 56) + 16 * v58);
          v53 = *v60;
          v61 = v60[1];
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

          v54 = v61;
        }
      }

      v62 = v183;
      v63 = v189;
      v195[0].n128_u64[0] = v189;
      v65 = *(v189 + 16);
      v64 = *(v189 + 24);
      if (v65 >= v64 >> 1)
      {
        v76 = sub_1C43FCFE8(v64);
        sub_1C44CD9C0(v76, v65 + 1, 1);
        v62 = v183;
        v63 = v195[0].n128_u64[0];
      }

      *(v63 + 16) = v65 + 1;
      v66 = v63 + 16 * v65;
      *(v66 + 32) = v53;
      *(v66 + 40) = v54;
      if (v181)
      {
        goto LABEL_146;
      }

      v45 = v179;
      v67 = 1 << *(v179 + 32);
      a2 = v193;
      if (v49 >= v67)
      {
        goto LABEL_136;
      }

      v68 = *(v186 + 8 * v51);
      if ((v68 & v3) == 0)
      {
        goto LABEL_137;
      }

      if (*(v179 + 36) != v62)
      {
        goto LABEL_138;
      }

      v189 = v63;
      if ((v68 & (-2 << (v49 & 0x3F))) != 0)
      {
        sub_1C442AB14();
        v67 = v69 | v49 & 0x7FFFFFFFFFFFFFC0;
        v70 = v177;
      }

      else
      {
        v71 = v51 << 6;
        v72 = v51 + 1;
        v73 = (v175 + 8 * v51);
        v70 = v177;
        while (v72 < (v67 + 63) >> 6)
        {
          v75 = *v73++;
          v74 = v75;
          v71 += 64;
          ++v72;
          if (v75)
          {
            sub_1C45E8E98(v49, v62, 0);
            v67 = __clz(__rbit64(v74)) + v71;
            goto LABEL_55;
          }
        }

        sub_1C45E8E98(v49, v62, 0);
LABEL_55:
        a2 = v193;
      }

      if (++v50 == v70)
      {
        break;
      }

      v48 = 0;
      v47 = *(v179 + 36);
      v49 = v67;
      if (v67 < 0)
      {
        goto LABEL_133;
      }
    }

    v44 = v169;
  }

  v77 = sub_1C4499940();
  v79 = v174[2];
  v78 = v174[3];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v190 = sub_1C44735D4(v79, v78, a2);
  v81 = v80;

  v187 = v81;
  if (v81)
  {
    sub_1C440FDCC();
    v84 = v83 & v82;
    v86 = (v85 + 63) >> 6;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v3 = 0;
LABEL_62:
    while (v84)
    {
LABEL_67:
      v84 &= v84 - 1;
      sub_1C4416844();
      v90 = *v88;
      v89 = v88[1];
      if ((v190 != *v88 || v187 != v89) && (sub_1C4F02938() & 1) == 0 && *(v77 + 16))
      {
        sub_1C4F02AF8();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4F01298();
        sub_1C4F02B68();
        sub_1C44180D4();
        do
        {
          v92 = v91 & v195;
          if (((*(v77 + 56 + (((v91 & v195) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v91 & v195)) & 1) == 0)
          {

            goto LABEL_62;
          }

          v93 = (*(v77 + 48) + 16 * v92);
          if (*v93 == v90 && v93[1] == v89)
          {
            break;
          }

          v95 = sub_1C4F02938();
          v91 = v92 + 1;
        }

        while ((v95 & 1) == 0);

        v147 = v169;

        v148 = sub_1C44A1870();
        sub_1C4455478(v148, v149, v150, v151, v152, v153, v154, v155, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v174);
        MEMORY[0x1C6940010](v79, v147);

        MEMORY[0x1C6940010](0x67206E6920736920, 0xED00002070756F72);
        MEMORY[0x1C6940010](v190, v187);

        sub_1C43FE984();
        v145 = 0xD00000000000004ELL;
        goto LABEL_125;
      }
    }

    while (1)
    {
      v87 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_139;
      }

      if (v87 >= v86)
      {
        break;
      }

      v84 = *(v44 + 56 + 8 * v87);
      ++v3;
      if (v84)
      {
        v3 = v87;
        goto LABEL_67;
      }
    }

    v96 = sub_1C43FE99C();
    sub_1C4A7E078(v96, v97);

    v98 = v198;
    sub_1C44239FC(v170, 0);
    swift_isUniquelyReferenced_nonNull_native();
    v195[0].n128_u64[0] = v172;
    v99 = sub_1C43FE99C();
    sub_1C445FAA8(v99, v100);
    sub_1C43FC438();
    if (__OFADD__(v103, v104))
    {
      goto LABEL_144;
    }

    v105 = v101;
    v106 = v102;
    sub_1C456902C(&qword_1EC0BA748, &unk_1C4F231D0);
    v107 = sub_1C4F02458();
    v8 = v195[0].n128_u64[0];
    if (v107)
    {
      v108 = sub_1C445FAA8(v190, v187);
      a2 = v193;
      if ((v106 & 1) != (v109 & 1))
      {
        goto LABEL_147;
      }

      v105 = v108;
      if ((v106 & 1) == 0)
      {
        goto LABEL_84;
      }
    }

    else
    {
      a2 = v193;
      if ((v106 & 1) == 0)
      {
LABEL_84:
        sub_1C44686DC(v105, v190, v187, MEMORY[0x1E69E7CD0], v8);
LABEL_104:
        sub_1C4D400DC(v98);

        v170 = sub_1C455B6CC;
        goto LABEL_106;
      }
    }

    goto LABEL_104;
  }

  sub_1C440FDCC();
  v112 = v111 & v110;
  v114 = (v113 + 63) >> 6;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v115 = 0;
  do
  {
LABEL_86:
    if (v112)
    {
      v116 = v112;
      goto LABEL_92;
    }

    do
    {
      v117 = v115 + 1;
      if (__OFADD__(v115, 1))
      {
        goto LABEL_141;
      }

      if (v117 >= v114)
      {

        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        swift_isUniquelyReferenced_nonNull_native();
        v195[0].n128_u64[0] = v172;
        sub_1C4486BA8();

        a2 = v193;

        v8 = v195[0].n128_u64[0];
LABEL_106:
        v6 = v168;
        v7 = v163;
        v2 = v164;
        if (v168 == v167)
        {
LABEL_109:
          v124 = 0;
          v125 = v8 + 64;
          sub_1C43FF7C8();
          v173 = v8;
          if (v3)
          {
            goto LABEL_114;
          }

          while (1)
          {
            v126 = v124 + 1;
            if (__OFADD__(v124, 1))
            {
              break;
            }

            if (v126 >= a2)
            {

              sub_1C4CCEF34(0, 1);
              if (!v165)
              {
              }

              swift_setDeallocating();
              goto LABEL_126;
            }

            v3 = *(v125 + 8 * v126);
            ++v124;
            if (v3)
            {
              v124 = v126;
              do
              {
LABEL_114:
                sub_1C44168C0();
                v128 = v127 | (v124 << 6);
                v129 = (*(v8 + 48) + 16 * v128);
                v130 = v129[1];
                v194 = *v129;
                v131 = *(*(*(v8 + 56) + 8 * v128) + 16);
                if (v131)
                {
                  sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
                  v132 = swift_allocObject();
                  v133 = j__malloc_size(v132);
                  v132[2] = v131;
                  v132[3] = 2 * ((v133 - 32) / 16);
                  sub_1C44ECA38();
                  v135 = v195[0].n128_u64[0];
                  v192 = v134;
                  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                  sub_1C449BB08(v135);
                  if (v192 != v131)
                  {
                    goto LABEL_143;
                  }
                }

                else
                {
                  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                  v132 = MEMORY[0x1E69E7CC0];
                }

                v3 &= v3 - 1;
                sub_1C4CCF200(v194, v130, v132);

                v8 = v173;
              }

              while (v3);
            }
          }

LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          result = sub_1C4F029F8();
          __break(1u);
          return result;
        }

        goto LABEL_3;
      }

      v116 = *(v44 + 56 + 8 * v117);
      ++v115;
    }

    while (!v116);
    v115 = v117;
LABEL_92:
    v112 = (v116 - 1) & v116;
  }

  while (!*(v77 + 16));
  v191 = (v116 - 1) & v116;
  sub_1C442AB14();
  sub_1C4416844();
  v84 = *v118;
  v119 = v118[1];
  sub_1C4F02AF8();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4F01298();
  sub_1C4F02B68();
  sub_1C44180D4();
  do
  {
    v3 = v120 & v195;
    if (((*(v77 + 56 + (((v120 & v195) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v120 & v195)) & 1) == 0)
    {

      v112 = v191;
      goto LABEL_86;
    }

    v121 = (*(v77 + 48) + 16 * v3);
    if (*v121 == v84 && v121[1] == v119)
    {
      break;
    }

    v123 = sub_1C4F02938();
    v120 = v3 + 1;
  }

  while ((v123 & 1) == 0);

  v136 = v169;

  v137 = sub_1C44A1870();
  sub_1C4455478(v137, v138, v139, v140, v141, v142, v143, v144, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v174);
  MEMORY[0x1C6940010](v112, v136);

  v145 = 0xD00000000000005DLL;
  v146 = 0x80000001C4FBBF60;
LABEL_125:
  MEMORY[0x1C6940010](v145, v146);
  v156 = v195[0];
  v157 = sub_1C450B034();
  v158 = sub_1C43FFB2C(&unk_1F44064D8, v157);
  v159->n128_u64[0] = 0;
  v159->n128_u64[1] = v84;
  v159[1] = v156;
  sub_1C4411340(v195[0], v195[1], v158, v159);

LABEL_126:

  return sub_1C44239FC(v170, 0);
}

uint64_t sub_1C4C3925C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v107 = a4;
  v103 = sub_1C4F00DD8();
  sub_1C43FCDF8();
  v102 = v8;
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBCC4();
  sub_1C43FD2C8(v11 - v10);
  v105 = sub_1C4F00DC8();
  sub_1C43FCDF8();
  v104 = v12;
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FD230();
  v16 = sub_1C43FD2C8(v15);
  v17 = _s6ConfigVMa(v16);
  v18 = sub_1C43FBD18(v17);
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v19);
  sub_1C447F150();
  v20 = sub_1C456902C(&unk_1EC0BABB0, &qword_1C4F16ED0);
  v21 = sub_1C43FBD18(v20);
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v94 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v94 - v27;
  v110 = a1;
  v111 = a2;
  v106 = *(a3 + 32);
  sub_1C445EDE8(v106);
  if (v29 == 0x51536D6F74737563 && v30 == 0xE90000000000004CLL)
  {
    v39 = sub_1C43FD574();
    sub_1C44344B8(v39, v40);
LABEL_13:

    goto LABEL_14;
  }

  v32 = sub_1C44624A0(v29);
  v33 = sub_1C43FD574();
  sub_1C44344B8(v33, v34);

  if ((v32 & 1) == 0)
  {
    sub_1C445EDE8(v106);
    if (v35 != 0x51537463656A626FLL || v36 != 0xE90000000000004CLL)
    {
      v38 = sub_1C44624A0(v35);

      if ((v38 & 1) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_14:
  v41 = *(a3 + 208);
  v95 = v4;
  if (v41)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  _s10ViewConfigVMa(0);
  v96 = a3;
  v42 = sub_1C4EF98F8();
  sub_1C43FCF64();
  sub_1C440BAA8(v43, v44, v45, v42);
  sub_1C440DA7C();
  sub_1C4C67D64();
  v47 = v46;
  v49 = v48;
  sub_1C4420C3C(v28, &unk_1EC0BABB0, &qword_1C4F16ED0);

  if (v41)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  sub_1C43FCF64();
  sub_1C440BAA8(v50, v51, v52, v42);
  sub_1C4409F48();
  sub_1C440DA7C();
  sub_1C4C67D64();
  sub_1C4420C3C(v25, &unk_1EC0BABB0, &qword_1C4F16ED0);

  v4 = v95;
  __dst[0] = 538976288;
  __dst[1] = 0xE400000000000000;
  MEMORY[0x1C6940010](v47, v49);

  MEMORY[0x1C6940010](0x202020200ALL, 0xE500000000000000);
  v53 = sub_1C43FE5F8();
  MEMORY[0x1C6940010](v53);

  sub_1C4B3C50C();
  v55 = v54;
  v57 = v56;
  sub_1C44F9684(v54, v56);
  sub_1C4434000(v55, v57);
LABEL_19:
  v58 = 0x6F526D6F74737563;
  sub_1C4438D00(v4);
  v59 = *v4;
  sub_1C440B678();
  sub_1C4C41B10();
  sub_1C4C6EC08(v59);
  if (v61 == 0x6F526D6F74737563 && v60 == 0xE900000000000077)
  {
  }

  else
  {
    v58 = sub_1C4F02938();

    if ((v58 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  sub_1C441BB28();
  sub_1C4438D00(v63);
  memcpy(__dst, (v58 + 64), sizeof(__dst));
  sub_1C446C964(__dst, v108, &qword_1EC0C4680, &qword_1C4F5E660);
  sub_1C440B678();
  sub_1C4C41B10();
  if (__dst[1])
  {
    _s10ViewConfigVMa(0);
    v64 = sub_1C4EF98F8();
    sub_1C43FCF64();
    sub_1C440BAA8(v65, v66, v67, v64);
    sub_1C440DA7C();
    sub_1C4C67D64();
    sub_1C4420C3C(v97, &unk_1EC0BABB0, &qword_1C4F16ED0);
    sub_1C43FCF64();
    sub_1C440BAA8(v68, v69, v70, v64);
    sub_1C440DA7C();
    sub_1C4C67D64();
    sub_1C4420C3C(__dst, &qword_1EC0C4680, &qword_1C4F5E660);
    sub_1C4420C3C(v98, &unk_1EC0BABB0, &qword_1C4F16ED0);
    v108[0] = 538976288;
    v108[1] = 0xE400000000000000;
    v71 = sub_1C43FD024();
    MEMORY[0x1C6940010](v71);

    MEMORY[0x1C6940010](0x202020200ALL, 0xE500000000000000);
    v72 = sub_1C43FE5F8();
    MEMORY[0x1C6940010](v72);

    sub_1C4B3C50C();
    sub_1C44F9684(v73, v74);
    v75 = sub_1C4402CD0();
    sub_1C4434000(v75, v76);
  }

LABEL_28:
  sub_1C445EDE8(v106);

  sub_1C44902AC(&qword_1EDDFEAD0, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
  v77 = v100;
  v78 = v103;
  sub_1C43FE5F8();
  sub_1C4F00DB8();
  v79 = sub_1C4402CD0();
  sub_1C44344B8(v79, v80);
  v81 = sub_1C4402CD0();
  sub_1C4498FD8(v81, v82, v77);
  v83 = sub_1C4402CD0();
  sub_1C4434000(v83, v84);
  v85 = v101;
  sub_1C43FE5F8();
  sub_1C4F00DA8();
  (*(v102 + 8))(v77, v78);
  sub_1C4415B50();
  v87 = v99;
  (*(v86 + 16))(v99, v85, v105);
  sub_1C44D5F88(v87);
  v88 = sub_1C4EF9A48();
  v89 = sub_1C43FBC98();
  sub_1C4434000(v89, v90);
  v91 = sub_1C44089C8();
  v92(v91);
  sub_1C4434000(v110, v111);
  return v88;
}