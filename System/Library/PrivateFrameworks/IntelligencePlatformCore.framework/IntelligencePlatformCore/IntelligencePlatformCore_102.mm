uint64_t sub_1C4D6F26C(uint64_t a1)
{
  v4 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v4);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = v2 + *(type metadata accessor for CNContactStructs.EmploymentRelationshipType(v6) + 36);
  sub_1C44D7768(a1, v7, &qword_1EC0BAD40, &qword_1C4F175A0);
  v8 = type metadata accessor for CNContactStructs.Organization(0);
  sub_1C44101EC();
  if (sub_1C44157D4(v9, v10, v11))
  {
    return sub_1C4420C3C(a1, &qword_1EC0BAD40, &qword_1C4F175A0);
  }

  sub_1C4EFEDF8();
  sub_1C4420C3C(a1, &qword_1EC0BAD40, &qword_1C4F175A0);
  v13 = sub_1C4EFEEF8();
  sub_1C440CBF4(v13);
  return sub_1C444088C(v1, v7 + *(v8 + 20), &qword_1EC0B9A08, &unk_1C4F107B0);
}

uint64_t sub_1C4D6F388(uint64_t a1)
{
  v4 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v4);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = *(type metadata accessor for CNContactStructs.Person(v6) + 236);
  sub_1C44D7768(a1, v2 + v7, &qword_1EC0BAD38, &unk_1C4F70B40);
  v8 = type metadata accessor for CNContactStructs.EmploymentRelationshipType(0);
  if (sub_1C44157D4(v2 + v7, 1, v8))
  {
    return sub_1C4420C3C(a1, &qword_1EC0BAD38, &unk_1C4F70B40);
  }

  sub_1C4EFED68();
  sub_1C4420C3C(a1, &qword_1EC0BAD38, &unk_1C4F70B40);
  v10 = sub_1C4EFEEF8();
  sub_1C440CBF4(v10);
  return sub_1C444088C(v1, v2 + v7, &qword_1EC0B9A08, &unk_1C4F107B0);
}

void sub_1C4D6F494()
{
  sub_1C43FE628();
  v689 = v1;
  v5 = v4;
  v705 = v6;
  v8 = v7;
  v9 = type metadata accessor for CNContactStructs.AddressRelationshipType(0);
  v10 = sub_1C43FCF7C(v9);
  v690 = v11;
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FD2D8();
  v13 = sub_1C43FD2C8(v12);
  v14 = type metadata accessor for CNContactStructs.LocationRelationshipType(v13);
  v15 = sub_1C43FCF7C(v14);
  v693 = v16;
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FD2D8();
  v692 = v17;
  v18 = sub_1C43FBE44();
  v19 = type metadata accessor for CNContactStructs.AgentAffiliationRelationshipType(v18);
  v20 = sub_1C43FCF7C(v19);
  v695 = v21;
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FD2D8();
  v694 = v22;
  v23 = sub_1C43FBE44();
  v24 = type metadata accessor for CNContactStructs.EntityAliasRelationshipType(v23);
  v25 = sub_1C43FCF7C(v24);
  v696 = v26;
  MEMORY[0x1EEE9AC00](v25);
  sub_1C43FD2D8();
  v697 = v27;
  v28 = sub_1C456902C(&qword_1EC0C6C38, &qword_1C4F70B38);
  sub_1C43FBD18(v28);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FBC74();
  v698 = v30;
  v31 = sub_1C43FBE44();
  v668 = type metadata accessor for CNContactStructs.VisualIdentifierRelationshipType(v31);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v32);
  sub_1C43FD2D8();
  v667 = v33;
  v34 = sub_1C456902C(&qword_1EC0BAD38, &unk_1C4F70B40);
  sub_1C43FBD18(v34);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v35);
  sub_1C43FBC74();
  v702 = v36;
  v37 = sub_1C43FBE44();
  v670 = type metadata accessor for CNContactStructs.EmploymentRelationshipType(v37);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v38);
  sub_1C43FD2D8();
  v701 = v39;
  v40 = sub_1C43FBE44();
  v41 = type metadata accessor for CNContactStructs.IdentifierRelationshipType(v40);
  v42 = sub_1C43FCF7C(v41);
  v700 = v43;
  MEMORY[0x1EEE9AC00](v42);
  sub_1C43FD2D8();
  v699 = v44;
  v45 = sub_1C43FBE44();
  v46 = type metadata accessor for EntityTriple(v45);
  sub_1C43FCDF8();
  v703 = v47;
  MEMORY[0x1EEE9AC00](v48);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v49);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v50);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v51);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v52);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v53);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v54);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v55);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v56);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v57);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v58);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v59);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v60);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v61);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v62);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v63);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v64);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v65);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v66);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v67);
  v69 = &v664 - v68;
  MEMORY[0x1EEE9AC00](v70);
  sub_1C43FBF38();
  v691 = v71;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v72);
  v74 = &v664 - v73;
  MEMORY[0x1EEE9AC00](v75);
  sub_1C4402CA8();
  v76 = *v5;
  v77 = MEMORY[0x1E69E7CC0];
  v715[0] = MEMORY[0x1E69E7CC0];
  v707 = type metadata accessor for CNContactStructs.Person(0);
  v708 = v0;
  v78 = (v0 + v707[9]);
  v79 = v78[1];
  v704 = v8;
  v706 = v76;
  if (!v79)
  {
    goto LABEL_8;
  }

  v80 = *v78;
  v81 = HIBYTE(v79) & 0xF;
  if ((v79 & 0x2000000000000000) == 0)
  {
    v81 = v80 & 0xFFFFFFFFFFFFLL;
  }

  if (!v81)
  {
    v77 = MEMORY[0x1E69E7CC0];
    goto LABEL_8;
  }

  v669 = v69;
  sub_1C4EFF0C8();
  sub_1C43FCE50();
  v83 = v708;
  (*(v82 + 16))(v2, v708);
  v0 = v707;
  v84 = v707[8];
  sub_1C4428F48();
  sub_1C43FCE50();
  v86 = v83 + v84;
  v8 = v704;
  (*(v85 + 16))(v2 + v76, v86);
  sub_1C4408374();
  sub_1C44CC80C(v83 + v87, v2 + v88, v89);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EF9AE8();
  sub_1C440EEE0();
  sub_1C4EFF888();
  sub_1C4EFEC38();
  v90 = (v2 + v46[8]);
  *v90 = v80;
  v90[1] = v79;
  sub_1C4D86EE8((v2 + v46[10]));
  *(v2 + v91) = v3;
  *(v2 + v46[12]) = v706;
  v92 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4401EC4(v92, v93, v94, MEMORY[0x1E69E7CC0]);
  v77 = v95;
  v76 = *(v95 + 16);
  v79 = v76 + 1;
  if (v76 >= *(v95 + 24) >> 1)
  {
    goto LABEL_259;
  }

  while (1)
  {
    *(v77 + 16) = v79;
    sub_1C43FCC40();
    sub_1C4420AA0();
    sub_1C44D4624(v2, v96, v97);
    v715[0] = v77;
    v69 = v669;
LABEL_8:
    sub_1C4488B70();
    if (v2)
    {
      sub_1C4416C2C();
      if (v99)
      {
        v669 = v98;
        sub_1C4EFF0C8();
        sub_1C43FCE50();
        v0 = v708;
        (*(v100 + 16))(v74, v708);
        v79 = v707;
        v101 = v707[10];
        sub_1C4428F48();
        sub_1C43FCE50();
        v103 = &v74[v76];
        v76 = v706;
        v104 = v0 + v101;
        v8 = v704;
        (*(v102 + 16))(v103, v104);
        sub_1C4408374();
        sub_1C44CC80C(v0 + v105, &v74[v106], v107);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        sub_1C440EEE0();
        v108 = sub_1C4EFF888();
        sub_1C4D87234(v108);
        v109 = &v74[v46[8]];
        *v109 = v669;
        *(v109 + 1) = v2;
        sub_1C4D86EE8(&v74[v46[10]]);
        *&v74[v110] = v3;
        v74[v46[12]] = v76;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v484 = sub_1C43FCEC0();
          sub_1C44C9240(v484, v485, v486, v77);
          v77 = v487;
        }

        sub_1C44C1338();
        if (v112)
        {
          v488 = sub_1C4405AF4(v111);
          sub_1C44C9240(v488, v489, v490, v77);
          v77 = v491;
        }

        *(v77 + 16) = v2;
        sub_1C43FCC40();
        sub_1C4420AA0();
        sub_1C44D4624(v74, v113, v114);
        v715[0] = v77;
      }
    }

    sub_1C4488B70();
    if (v2)
    {
      sub_1C4434384();
      if (v115)
      {
        v669 = v69;
        sub_1C4EFF0C8();
        sub_1C43FCE50();
        v117 = v691;
        v74 = v708;
        (*(v116 + 16))(v691, v708);
        v0 = v707;
        v118 = v707[12];
        sub_1C4428F48();
        sub_1C43FCE50();
        v120 = v117 + v76;
        v76 = v706;
        v121 = &v74[v118];
        v8 = v704;
        (*(v119 + 16))(v120, v121);
        sub_1C4408374();
        sub_1C44CC80C(&v74[v122], v117 + v123, v124);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        sub_1C440EEE0();
        sub_1C4EFF888();
        sub_1C4EFEC38();
        v125 = (v117 + v46[8]);
        *v125 = v79;
        v125[1] = v2;
        sub_1C4D86EE8((v117 + v46[10]));
        *(v117 + v126) = v3;
        *(v117 + v46[12]) = v76;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v492 = sub_1C43FCEC0();
          sub_1C44C9240(v492, v493, v494, v77);
          v77 = v495;
        }

        sub_1C44C1338();
        v69 = v669;
        if (v112)
        {
          v496 = sub_1C4405AF4(v127);
          sub_1C44C9240(v496, v497, v498, v77);
          v77 = v499;
        }

        *(v77 + 16) = v2;
        sub_1C43FCC40();
        sub_1C4420AA0();
        sub_1C44D4624(v691, v128, v129);
        v715[0] = v77;
      }
    }

    sub_1C4488B70();
    if (v2)
    {
      sub_1C4434384();
      if (v130)
      {
        sub_1C4EFF0C8();
        sub_1C43FCE50();
        v132 = v708;
        (*(v131 + 16))(v69, v708);
        v0 = v707;
        v133 = v707[14];
        sub_1C4428F48();
        sub_1C43FCE50();
        v135 = *(v134 + 16);
        v136 = v69 + v76;
        v691 = v77;
        v137 = v69;
        v69 = v706;
        v138 = v132 + v133;
        v8 = v704;
        v76 = v705;
        v135(v136, v138);
        sub_1C4408374();
        sub_1C44CC80C(v132 + v139, &v137[v140], v141);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        sub_1C440EEE0();
        sub_1C4EFF888();
        sub_1C4EFEC38();
        v142 = &v137[v46[8]];
        *v142 = v79;
        v142[1] = v2;
        v143 = &v137[v46[10]];
        *v143 = v8;
        v143[1] = v76;
        *&v137[v46[11]] = v3;
        v137[v46[12]] = v69;
        v74 = v137;
        v77 = v691;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v500 = sub_1C43FCEC0();
          sub_1C44C9240(v500, v501, v502, v77);
          v77 = v503;
        }

        sub_1C44C1338();
        if (v112)
        {
          v504 = sub_1C4405AF4(v144);
          sub_1C44C9240(v504, v505, v506, v77);
          v77 = v507;
        }

        *(v77 + 16) = v2;
        sub_1C43FCC40();
        sub_1C4420AA0();
        sub_1C44D4624(v74, v145, v146);
        v715[0] = v77;
      }
    }

    sub_1C4488B70();
    if (v2)
    {
      sub_1C4416C2C();
      if (v147)
      {
        sub_1C44D71D4();
        sub_1C43FCE50();
        v148 = sub_1C445BB90();
        v69 = v708;
        v149(v148, v708);
        v0 = v707;
        v8 = v707[16];
        sub_1C4428F48();
        sub_1C43FCE50();
        v150 = sub_1C4D87008();
        v151(v150);
        sub_1C4408374();
        sub_1C44CC80C(v69 + v152, &v74[v153], v154);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        sub_1C440EEE0();
        v155 = sub_1C4EFF888();
        sub_1C4D87234(v155);
        sub_1C4460BC8();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v508 = sub_1C43FCEC0();
          sub_1C44C9240(v508, v509, v510, v77);
          v77 = v511;
        }

        sub_1C44C1338();
        if (v112)
        {
          v512 = sub_1C4405AF4(v156);
          sub_1C44C9240(v512, v513, v514, v77);
          v77 = v515;
        }

        *(v77 + 16) = v2;
        sub_1C43FCC40();
        sub_1C4420AA0();
        sub_1C44D4624(v671, v157, v158);
        v715[0] = v77;
      }
    }

    sub_1C4488B70();
    if (v2)
    {
      sub_1C4416C2C();
      if (v159)
      {
        sub_1C44D71D4();
        sub_1C43FCE50();
        v160 = sub_1C445BB90();
        v69 = v708;
        v161(v160, v708);
        v0 = v707;
        v8 = v707[18];
        sub_1C4428F48();
        sub_1C43FCE50();
        v162 = sub_1C4D87008();
        v163(v162);
        sub_1C4408374();
        sub_1C44CC80C(v69 + v164, &v74[v165], v166);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        sub_1C440EEE0();
        v167 = sub_1C4EFF888();
        sub_1C4D87234(v167);
        sub_1C4460BC8();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v516 = sub_1C43FCEC0();
          sub_1C44C9240(v516, v517, v518, v77);
          v77 = v519;
        }

        sub_1C44C1338();
        if (v112)
        {
          v520 = sub_1C4405AF4(v168);
          sub_1C44C9240(v520, v521, v522, v77);
          v77 = v523;
        }

        *(v77 + 16) = v2;
        sub_1C43FCC40();
        sub_1C4420AA0();
        sub_1C44D4624(v672, v169, v170);
        v715[0] = v77;
      }
    }

    sub_1C4488B70();
    if (v2)
    {
      sub_1C4416C2C();
      if (v171)
      {
        sub_1C44D71D4();
        sub_1C43FCE50();
        v69 = v708;
        v172 = sub_1C445BB90();
        v173(v172, v69);
        v0 = v707;
        v8 = v707[20];
        sub_1C4428F48();
        sub_1C43FCE50();
        v174 = sub_1C4D87008();
        v175(v174);
        sub_1C4408374();
        sub_1C44CC80C(v69 + v176, &v74[v177], v178);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        sub_1C440EEE0();
        v179 = sub_1C4EFF888();
        sub_1C4D87234(v179);
        sub_1C4460BC8();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v524 = sub_1C43FCEC0();
          sub_1C44C9240(v524, v525, v526, v77);
          v77 = v527;
        }

        sub_1C44C1338();
        if (v112)
        {
          v528 = sub_1C4405AF4(v180);
          sub_1C44C9240(v528, v529, v530, v77);
          v77 = v531;
        }

        *(v77 + 16) = v2;
        sub_1C43FCC40();
        sub_1C4420AA0();
        sub_1C44D4624(v673, v181, v182);
        v715[0] = v77;
      }
    }

    sub_1C4488B70();
    if (v2)
    {
      sub_1C4416C2C();
      if (v183)
      {
        sub_1C44D71D4();
        sub_1C43FCE50();
        v79 = v708;
        v184 = sub_1C445BB90();
        v185(v184, v79);
        v186 = v707[22];
        sub_1C4428F48();
        sub_1C43FCE50();
        v188 = &v74[v76];
        v189 = v46;
        v190 = v706;
        v191 = v79 + v186;
        v8 = v704;
        v192 = v705;
        (*(v187 + 16))(v188, v191);
        sub_1C4408374();
        sub_1C4D87070(v193, v194);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        v3 = v195;
        sub_1C4EFF888();
        sub_1C4EFEC38();
        v196 = &v74[v189[8]];
        *v196 = v691;
        *(v196 + 1) = v2;
        v197 = &v74[v189[10]];
        v69 = v8;
        *v197 = v8;
        v197[1] = v192;
        *&v74[v189[11]] = v3;
        v691 = v189;
        v74[v189[12]] = v190;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v0 = v77;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v532 = sub_1C43FCEC0();
          sub_1C44C9240(v532, v533, v534, v77);
          v0 = v535;
        }

        sub_1C440C4FC();
        v46 = v691;
        if (v112)
        {
          v536 = sub_1C4405AF4(v198);
          sub_1C44C9240(v536, v537, v538, v0);
          v0 = v539;
        }

        v0[2] = v2;
        sub_1C43FCC58();
        sub_1C4420AA0();
        sub_1C44D4624(v674, v199, v200);
        v715[0] = v0;
      }
    }

    sub_1C4488B70();
    if (v2)
    {
      sub_1C4416C2C();
      if (v202)
      {
        v674 = v201;
        sub_1C4EFF0C8();
        sub_1C43FCE50();
        v79 = v708;
        v203 = sub_1C445BB90();
        v204(v203, v79);
        v0 = v707;
        sub_1C4428F48();
        sub_1C43FCE50();
        v205 = sub_1C4D86FB4();
        v206(v205);
        sub_1C4408374();
        sub_1C4D87070(v207, v208);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        v3 = v209;
        sub_1C4EFF888();
        sub_1C4EFEC38();
        sub_1C44A152C(&v74[*(v69 + 32)]);
        v210 = v691;
        v74[v211] = v46;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v540 = sub_1C43FCEC0();
          sub_1C44C9240(v540, v541, v542, v210);
          v210 = v543;
        }

        sub_1C44C1338();
        v46 = v0;
        if (v112)
        {
          v544 = sub_1C4405AF4(v212);
          sub_1C44C9240(v544, v545, v546, v210);
          v210 = v547;
        }

        v8 = v704;
        *(v210 + 16) = v2;
        sub_1C43FCC40();
        sub_1C4420AA0();
        sub_1C44D4624(v675, v213, v214);
        v715[0] = v210;
      }
    }

    sub_1C4488B70();
    if (v2)
    {
      sub_1C4416C2C();
      if (v217)
      {
        v675 = v216;
        sub_1C4EFF0C8();
        sub_1C43FCE50();
        v218 = v708;
        v219 = sub_1C445BB90();
        v220(v219, v218);
        v0 = v707;
        sub_1C4428F48();
        sub_1C43FCE50();
        v221 = sub_1C4D86FB4();
        v222(v221);
        sub_1C4408374();
        sub_1C4D87070(v223, v224);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        v3 = v225;
        sub_1C4EFF888();
        sub_1C4EFEC38();
        sub_1C44A152C(&v74[*(v69 + 32)]);
        v226 = v691;
        v74[v227] = v46;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v548 = sub_1C43FCEC0();
          sub_1C44C9240(v548, v549, v550, v226);
          v226 = v551;
        }

        v79 = *(v226 + 16);
        v228 = *(v226 + 24);
        v2 = v79 + 1;
        v46 = v0;
        if (v79 >= v228 >> 1)
        {
          v552 = sub_1C4405AF4(v228);
          sub_1C44C9240(v552, v553, v554, v226);
          v226 = v555;
        }

        v8 = v704;
        *(v226 + 16) = v2;
        sub_1C445EB4C();
        sub_1C4420AA0();
        v215 = sub_1C44D4624(v676, v229, v230);
        v715[0] = v226;
      }
    }

    v231 = *(v708 + v707[29]);
    if (v231)
    {
      v232 = v698;
      v233 = v689;
      if (*(v231 + 16))
      {
        v0 = &v664;
        MEMORY[0x1EEE9AC00](v215);
        sub_1C4D86F18();
        *(v234 - 32) = v235;
        *(v234 - 24) = v8;
        sub_1C4D86E98(v234);
        sub_1C45DA100(sub_1C4D83D04, v236, v237, v238, v239, v240, v241, v242, v664, v665);
        v215 = sub_1C4D87100(v243);
      }
    }

    else
    {
      v232 = v698;
      v233 = v689;
    }

    v244 = *(v708 + v707[31]);
    if (v244 && *(v244 + 16))
    {
      v0 = &v664;
      MEMORY[0x1EEE9AC00](v215);
      sub_1C4D86F18();
      *(v245 - 32) = v246;
      *(v245 - 24) = v8;
      sub_1C4D86E98(v245);
      sub_1C45DA100(sub_1C4D83CE8, v247, v248, v249, v250, v251, v252, v253, v664, v665);
      sub_1C4D87100(v254);
    }

    sub_1C44AB2C8();
    if (v0)
    {
      sub_1C44026DC();
      if (v255)
      {
        sub_1C4EFF0C8();
        sub_1C43FCE50();
        v256 = sub_1C4418D90();
        v257(v256);
        v79 = v707[32];
        sub_1C4D86F84();
        sub_1C43FCE50();
        v258 = sub_1C44D0BB4();
        v259(v258);
        sub_1C4408374();
        sub_1C44F0D58(v260, v261);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        sub_1C440EEE0();
        v262 = sub_1C4EFF888();
        sub_1C4D86F6C(v262);
        sub_1C441157C();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v556 = sub_1C43FCEC0();
          sub_1C44C9240(v556, v557, v558, v0);
          v0 = v559;
        }

        sub_1C440C4FC();
        v232 = v698;
        if (v112)
        {
          v560 = sub_1C4405AF4(v263);
          sub_1C44C9240(v560, v561, v562, v0);
          v0 = v563;
        }

        v0[2] = v2;
        sub_1C43FCC58();
        sub_1C4420AA0();
        sub_1C44D4624(v677, v264, v265);
        v715[0] = v0;
      }
    }

    sub_1C44AB2C8();
    if (v0)
    {
      sub_1C44026DC();
      if (v267)
      {
        sub_1C4EFF0C8();
        sub_1C43FCE50();
        v268 = sub_1C4418D90();
        v269(v268);
        v79 = v707[34];
        sub_1C4D86F84();
        sub_1C43FCE50();
        v270 = sub_1C44D0BB4();
        v271(v270);
        sub_1C4408374();
        sub_1C44F0D58(v272, v273);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        sub_1C440EEE0();
        v274 = sub_1C4EFF888();
        sub_1C4D86F6C(v274);
        sub_1C441157C();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v564 = sub_1C43FCEC0();
          sub_1C44C9240(v564, v565, v566, v0);
          v0 = v567;
        }

        sub_1C440C4FC();
        v232 = v698;
        if (v112)
        {
          v568 = sub_1C4405AF4(v275);
          sub_1C44C9240(v568, v569, v570, v0);
          v0 = v571;
        }

        v0[2] = v2;
        sub_1C43FCC58();
        sub_1C4420AA0();
        v266 = sub_1C44D4624(v678, v276, v277);
        v715[0] = v0;
      }
    }

    v278 = *(v708 + v707[37]);
    if (v278 && *(v278 + 16))
    {
      v0 = &v664;
      MEMORY[0x1EEE9AC00](v266);
      sub_1C4D86F18();
      *(v279 - 32) = v280;
      *(v279 - 24) = v281;
      sub_1C4D86E98(v279);
      sub_1C45DA100(sub_1C4D83CCC, v282, v283, v284, v285, v286, v287, v288, v664, v665);
      sub_1C4D87100(v289);
    }

    sub_1C44AB2C8();
    if (v0)
    {
      sub_1C44026DC();
      if (v290)
      {
        sub_1C4EFF0C8();
        sub_1C43FCE50();
        v291 = sub_1C4418D90();
        v292(v291);
        v79 = v707[38];
        sub_1C4D86F84();
        sub_1C43FCE50();
        v293 = sub_1C44D0BB4();
        v294(v293);
        sub_1C4408374();
        sub_1C44F0D58(v295, v296);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        sub_1C440EEE0();
        v297 = sub_1C4EFF888();
        sub_1C4D86F6C(v297);
        sub_1C441157C();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v572 = sub_1C43FCEC0();
          sub_1C44C9240(v572, v573, v574, v0);
          v0 = v575;
        }

        sub_1C440C4FC();
        v232 = v698;
        if (v112)
        {
          v576 = sub_1C4405AF4(v298);
          sub_1C44C9240(v576, v577, v578, v0);
          v0 = v579;
        }

        v0[2] = v2;
        sub_1C43FCC58();
        sub_1C4420AA0();
        sub_1C44D4624(v679, v299, v300);
        v715[0] = v0;
      }
    }

    sub_1C44AB2C8();
    if (v0)
    {
      sub_1C44026DC();
      if (v301)
      {
        sub_1C4EFF0C8();
        sub_1C43FCE50();
        v302 = sub_1C4418D90();
        v303(v302);
        v79 = v707[40];
        sub_1C4D86F84();
        sub_1C43FCE50();
        v304 = sub_1C44D0BB4();
        v305(v304);
        sub_1C4408374();
        sub_1C44F0D58(v306, v307);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        sub_1C440EEE0();
        v308 = sub_1C4EFF888();
        sub_1C4D86F6C(v308);
        sub_1C441157C();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v580 = sub_1C43FCEC0();
          sub_1C44C9240(v580, v581, v582, v0);
          v0 = v583;
        }

        sub_1C440C4FC();
        v232 = v698;
        if (v112)
        {
          v584 = sub_1C4405AF4(v309);
          sub_1C44C9240(v584, v585, v586, v0);
          v0 = v587;
        }

        v0[2] = v2;
        sub_1C43FCC58();
        sub_1C4420AA0();
        sub_1C44D4624(v680, v310, v311);
        v715[0] = v0;
      }
    }

    sub_1C44AB2C8();
    if (v0)
    {
      sub_1C44026DC();
      if (v312)
      {
        sub_1C4EFF0C8();
        sub_1C43FCE50();
        v313 = sub_1C4418D90();
        v314(v313);
        v79 = v707[42];
        sub_1C4D86F84();
        sub_1C43FCE50();
        v315 = sub_1C44D0BB4();
        v316(v315);
        sub_1C4408374();
        sub_1C44F0D58(v317, v318);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        sub_1C440EEE0();
        v319 = sub_1C4EFF888();
        sub_1C4D86F6C(v319);
        sub_1C441157C();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v588 = sub_1C43FCEC0();
          sub_1C44C9240(v588, v589, v590, v0);
          v0 = v591;
        }

        sub_1C440C4FC();
        v232 = v698;
        if (v112)
        {
          v592 = sub_1C4405AF4(v320);
          sub_1C44C9240(v592, v593, v594, v0);
          v0 = v595;
        }

        v0[2] = v2;
        sub_1C43FCC58();
        sub_1C4420AA0();
        sub_1C44D4624(v681, v321, v322);
        v715[0] = v0;
      }
    }

    sub_1C44AB2C8();
    if (v0)
    {
      sub_1C44026DC();
      if (v323)
      {
        sub_1C4EFF0C8();
        sub_1C43FCE50();
        v324 = sub_1C4418D90();
        v325(v324);
        v79 = v707[44];
        sub_1C4D86F84();
        sub_1C43FCE50();
        v326 = sub_1C44D0BB4();
        v327(v326);
        sub_1C4408374();
        sub_1C44F0D58(v328, v329);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        sub_1C440EEE0();
        v330 = sub_1C4EFF888();
        sub_1C4D86F6C(v330);
        sub_1C441157C();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v596 = sub_1C43FCEC0();
          sub_1C44C9240(v596, v597, v598, v0);
          v0 = v599;
        }

        sub_1C440C4FC();
        v232 = v698;
        if (v112)
        {
          v600 = sub_1C4405AF4(v331);
          sub_1C44C9240(v600, v601, v602, v0);
          v0 = v603;
        }

        v0[2] = v2;
        sub_1C43FCC58();
        sub_1C4420AA0();
        sub_1C44D4624(v682, v332, v333);
        v715[0] = v0;
      }
    }

    sub_1C44AB2C8();
    if (v0)
    {
      sub_1C44026DC();
      if (v334)
      {
        sub_1C4EFF0C8();
        sub_1C43FCE50();
        v335 = sub_1C4418D90();
        v336(v335);
        v79 = v707[46];
        sub_1C4D86F84();
        sub_1C43FCE50();
        v337 = sub_1C44D0BB4();
        v338(v337);
        sub_1C4408374();
        sub_1C44F0D58(v339, v340);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        sub_1C440EEE0();
        v341 = sub_1C4EFF888();
        sub_1C4D86F6C(v341);
        sub_1C441157C();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v604 = sub_1C43FCEC0();
          sub_1C44C9240(v604, v605, v606, v0);
          v0 = v607;
        }

        sub_1C440C4FC();
        v232 = v698;
        if (v112)
        {
          v608 = sub_1C4405AF4(v342);
          sub_1C44C9240(v608, v609, v610, v0);
          v0 = v611;
        }

        v0[2] = v2;
        sub_1C43FCC58();
        sub_1C4420AA0();
        sub_1C44D4624(v683, v343, v344);
        v715[0] = v0;
      }
    }

    sub_1C44AB2C8();
    if (v0)
    {
      sub_1C44026DC();
      if (v345)
      {
        sub_1C4EFF0C8();
        sub_1C43FCE50();
        v346 = sub_1C4418D90();
        v347(v346);
        v79 = v707[48];
        sub_1C4D86F84();
        sub_1C43FCE50();
        v348 = sub_1C44D0BB4();
        v349(v348);
        sub_1C4408374();
        sub_1C44F0D58(v350, v351);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        sub_1C440EEE0();
        v352 = sub_1C4EFF888();
        sub_1C4D86F6C(v352);
        sub_1C441157C();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v612 = sub_1C43FCEC0();
          sub_1C44C9240(v612, v613, v614, v0);
          v0 = v615;
        }

        sub_1C440C4FC();
        v232 = v698;
        if (v112)
        {
          v616 = sub_1C4405AF4(v353);
          sub_1C44C9240(v616, v617, v618, v0);
          v0 = v619;
        }

        v0[2] = v2;
        sub_1C43FCC58();
        sub_1C4420AA0();
        sub_1C44D4624(v684, v354, v355);
        v715[0] = v0;
      }
    }

    sub_1C44AB2C8();
    if (v0)
    {
      sub_1C44026DC();
      if (v356)
      {
        sub_1C4EFF0C8();
        sub_1C43FCE50();
        v357 = sub_1C4418D90();
        v358(v357);
        v79 = v707[50];
        sub_1C4D86F84();
        sub_1C43FCE50();
        v359 = sub_1C44D0BB4();
        v360(v359);
        sub_1C4408374();
        sub_1C44F0D58(v361, v362);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        sub_1C440EEE0();
        v363 = sub_1C4EFF888();
        sub_1C4D86F6C(v363);
        sub_1C441157C();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v620 = sub_1C43FCEC0();
          sub_1C44C9240(v620, v621, v622, v0);
          v0 = v623;
        }

        sub_1C440C4FC();
        v232 = v698;
        if (v112)
        {
          v624 = sub_1C4405AF4(v364);
          sub_1C44C9240(v624, v625, v626, v0);
          v0 = v627;
        }

        v0[2] = v2;
        sub_1C43FCC58();
        sub_1C4420AA0();
        sub_1C44D4624(v685, v365, v366);
        v715[0] = v0;
      }
    }

    sub_1C44AB2C8();
    if (v0)
    {
      sub_1C44026DC();
      if (v367)
      {
        sub_1C4EFF0C8();
        sub_1C43FCE50();
        v368 = sub_1C4418D90();
        v369(v368);
        v79 = v707[52];
        sub_1C4D86F84();
        sub_1C43FCE50();
        v370 = sub_1C44D0BB4();
        v371(v370);
        sub_1C4408374();
        sub_1C44F0D58(v372, v373);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        sub_1C440EEE0();
        v374 = sub_1C4EFF888();
        sub_1C4D86F6C(v374);
        sub_1C441157C();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v628 = sub_1C43FCEC0();
          sub_1C44C9240(v628, v629, v630, v0);
          v0 = v631;
        }

        sub_1C440C4FC();
        v232 = v698;
        if (v112)
        {
          v632 = sub_1C4405AF4(v375);
          sub_1C44C9240(v632, v633, v634, v0);
          v0 = v635;
        }

        v0[2] = v2;
        sub_1C43FCC58();
        sub_1C4420AA0();
        sub_1C44D4624(v686, v376, v377);
        v715[0] = v0;
      }
    }

    sub_1C44AB2C8();
    if (v0)
    {
      sub_1C44026DC();
      if (v378)
      {
        sub_1C4EFF0C8();
        sub_1C43FCE50();
        v379 = sub_1C4418D90();
        v380(v379);
        v79 = v707[54];
        sub_1C4D86F84();
        sub_1C43FCE50();
        v381 = sub_1C44D0BB4();
        v382(v381);
        sub_1C4408374();
        sub_1C44F0D58(v383, v384);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        sub_1C440EEE0();
        v385 = sub_1C4EFF888();
        sub_1C4D86F6C(v385);
        sub_1C441157C();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v636 = sub_1C43FCEC0();
          sub_1C44C9240(v636, v637, v638, v0);
          v0 = v639;
        }

        sub_1C440C4FC();
        v232 = v698;
        if (v112)
        {
          v640 = sub_1C4405AF4(v386);
          sub_1C44C9240(v640, v641, v642, v0);
          v0 = v643;
        }

        v0[2] = v2;
        sub_1C43FCC58();
        sub_1C4420AA0();
        sub_1C44D4624(v687, v387, v388);
        v715[0] = v0;
      }
    }

    sub_1C44AB2C8();
    if (v0)
    {
      sub_1C44026DC();
      if (v389)
      {
        sub_1C4EFF0C8();
        sub_1C43FCE50();
        v390 = sub_1C4418D90();
        v391(v390);
        v79 = v707[56];
        sub_1C4D86F84();
        sub_1C43FCE50();
        v392 = sub_1C44D0BB4();
        v393(v392);
        sub_1C4408374();
        sub_1C44F0D58(v394, v395);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        sub_1C440EEE0();
        v396 = sub_1C4EFF888();
        sub_1C4D86F6C(v396);
        sub_1C441157C();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v644 = sub_1C43FCEC0();
          sub_1C44C9240(v644, v645, v646, v0);
          v0 = v647;
        }

        sub_1C440C4FC();
        v232 = v698;
        if (v112)
        {
          v648 = sub_1C4405AF4(v397);
          sub_1C44C9240(v648, v649, v650, v0);
          v0 = v651;
        }

        v0[2] = v2;
        sub_1C43FCC58();
        sub_1C4420AA0();
        sub_1C44D4624(v688, v398, v399);
        v715[0] = v0;
      }
    }

    v74 = *(v708 + v707[58]);
    v8 = v704;
    if (!v74)
    {
      break;
    }

    v400 = 0;
    v76 = *(v74 + 2);
    v2 = v701;
    v0 = v702;
    while (1)
    {
      if (v76 == v400)
      {
        v232 = v698;
        goto LABEL_186;
      }

      if (v400 >= *(v74 + 2))
      {
        break;
      }

      v2 = v699;
      sub_1C43FBF6C();
      sub_1C4D86E80();
      sub_1C44CC80C(v401, v2, v402);
      v709 = v706;
      sub_1C4D87018();
      sub_1C4D71E58();
      if (v233)
      {
        v422 = type metadata accessor for CNContactStructs.IdentifierRelationshipType;
        goto LABEL_198;
      }

      v0 = v403;
      sub_1C442EE4C();
      sub_1C44D474C(v2, v404);
      v79 = v0[2];
      v2 = v715[0];
      v405 = *(v715[0] + 16);
      v8 = v405 + v79;
      if (__OFADD__(v405, v79))
      {
        goto LABEL_247;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || (v407 = *(v2 + 24) >> 1, v407 < v8))
      {
        if (*(v2 + 16) <= v8)
        {
          v408 = v8;
        }

        else
        {
          v408 = *(v2 + 16);
        }

        sub_1C44C9240(isUniquelyReferenced_nonNull_native, v408, 1, v2);
        v2 = v409;
        v407 = *(v409 + 24) >> 1;
      }

      v8 = v704;
      if (v0[2])
      {
        if (v407 - *(v2 + 16) < v79)
        {
          goto LABEL_249;
        }

        swift_arrayInitWithCopy();

        v0 = v702;
        if (v79)
        {
          v410 = *(v2 + 16);
          v411 = __OFADD__(v410, v79);
          v412 = v410 + v79;
          if (v411)
          {
            goto LABEL_250;
          }

          *(v2 + 16) = v412;
        }
      }

      else
      {

        v0 = v702;
        if (v79)
        {
          goto LABEL_248;
        }
      }

      v715[0] = v2;
      ++v400;
      v2 = v701;
    }

    __break(1u);
LABEL_247:
    __break(1u);
LABEL_248:
    __break(1u);
LABEL_249:
    __break(1u);
LABEL_250:
    __break(1u);
LABEL_251:
    __break(1u);
LABEL_252:
    __break(1u);
LABEL_253:
    __break(1u);
LABEL_254:
    __break(1u);
LABEL_255:
    __break(1u);
LABEL_256:
    __break(1u);
LABEL_257:
    __break(1u);
LABEL_258:
    __break(1u);
LABEL_259:
    sub_1C4401E28();
    sub_1C44C9240(v479, v480, v481, v482);
    v77 = v483;
  }

  v2 = v701;
  v0 = v702;
LABEL_186:
  v74 = v708;
  sub_1C445FFA8(v708 + v707[59], v0, &qword_1EC0BAD38, &unk_1C4F70B40);
  sub_1C440175C(v0, 1, v670);
  if (v413)
  {
    sub_1C4420C3C(v0, &qword_1EC0BAD38, &unk_1C4F70B40);
  }

  else
  {
    sub_1C44D4624(v0, v2, type metadata accessor for CNContactStructs.EmploymentRelationshipType);
    v710 = v706;
    sub_1C4488870();
    v661 = sub_1C4D73960;
    v660 = type metadata accessor for CNContactStructs.Organization;
    sub_1C449F488();
    v414 = sub_1C4409F48();
    sub_1C4D7E0C4(v414, v415, v74, v416, v417, v418, v419, v420, v660, v661, v662, v663, v664, v665, v666, v667, v668, v669, v670, v671, v672, v673, v674);
    if (v233)
    {
      v422 = type metadata accessor for CNContactStructs.EmploymentRelationshipType;
LABEL_198:
      v427 = v422;
      v428 = v2;
LABEL_244:
      sub_1C44D474C(v428, v427);

      goto LABEL_245;
    }

    v0 = v715;
    sub_1C49D3614(v421);
    sub_1C4D86E68();
    sub_1C44D474C(v2, v423);
  }

  sub_1C445FFA8(&v74[v707[60]], v232, &qword_1EC0C6C38, &qword_1C4F70B38);
  v424 = sub_1C440180C();
  sub_1C440175C(v424, v425, v668);
  if (v413)
  {
    sub_1C4420C3C(v232, &qword_1EC0C6C38, &qword_1C4F70B38);
  }

  else
  {
    v2 = v667;
    sub_1C44D4624(v232, v667, type metadata accessor for CNContactStructs.VisualIdentifierRelationshipType);
    v711 = v706;
    sub_1C4409F48();
    sub_1C4D7562C();
    if (v233)
    {
      v422 = type metadata accessor for CNContactStructs.VisualIdentifierRelationshipType;
      goto LABEL_198;
    }

    v0 = v715;
    sub_1C49D3614(v426);
    sub_1C4462528();
    sub_1C44D474C(v2, v429);
  }

  v76 = *&v74[v707[61]];
  if (v76)
  {
    v74 = 0;
    v430 = *(v76 + 16);
    while (1)
    {
      if (v430 == v74)
      {
        v74 = v708;
        goto LABEL_214;
      }

      if (v74 >= *(v76 + 16))
      {
        goto LABEL_251;
      }

      sub_1C43FBF6C();
      sub_1C447E804();
      sub_1C4482D64();
      v0 = v431;
      sub_1C44CC80C(v432, v431, v433);
      v712 = v706;
      sub_1C4D87018();
      sub_1C4D76B7C();
      if (v233)
      {
        break;
      }

      v2 = v434;
      sub_1C440CE6C();
      sub_1C44D474C(v0, v435);
      v79 = *(v2 + 16);
      v436 = *(v715[0] + 16);
      if (__OFADD__(v436, v79))
      {
        goto LABEL_252;
      }

      sub_1C4B60840(v436 + v79, 1);
      v0 = v715[0];
      if (*(v2 + 16))
      {
        if ((*(v715[0] + 24) >> 1) - *(v715[0] + 16) < v79)
        {
          goto LABEL_255;
        }

        swift_arrayInitWithCopy();

        if (v79)
        {
          v437 = v0[2];
          v411 = __OFADD__(v437, v79);
          v438 = v437 + v79;
          if (v411)
          {
            goto LABEL_257;
          }

          v0[2] = v438;
        }
      }

      else
      {

        if (v79)
        {
          goto LABEL_253;
        }
      }

      v715[0] = v0;
      ++v74;
    }

    v443 = type metadata accessor for CNContactStructs.EntityAliasRelationshipType;
    goto LABEL_243;
  }

LABEL_214:
  v79 = *&v74[v707[62]];
  if (v79)
  {
    v76 = 0;
    v74 = *(v79 + 16);
    while (1)
    {
      if (v74 == v76)
      {
        v74 = v708;
        goto LABEL_222;
      }

      if (v76 >= *(v79 + 16))
      {
        goto LABEL_254;
      }

      v0 = v694;
      sub_1C43FBF6C();
      sub_1C44805A4();
      sub_1C44CC80C(v439, v0, v440);
      v713 = v706;
      sub_1C4409F48();
      sub_1C4D783F0();
      if (v233)
      {
        break;
      }

      v2 = v441;
      ++v76;
      sub_1C441D4E4();
      sub_1C44D474C(v0, v442);
      v0 = v715;
      sub_1C49D3614(v2);
    }

    v443 = type metadata accessor for CNContactStructs.AgentAffiliationRelationshipType;
LABEL_243:
    v427 = v443;
    v428 = v0;
    goto LABEL_244;
  }

LABEL_222:
  v76 = *&v74[v707[63]];
  if (v76)
  {
    v444 = 0;
    v2 = *(v76 + 16);
    v79 = &unk_1C4F175D0;
    while (v2 != v444)
    {
      if (v444 >= *(v76 + 16))
      {
        goto LABEL_256;
      }

      v0 = v692;
      sub_1C43FBF6C();
      sub_1C447E804();
      sub_1C44758A0();
      sub_1C44CC80C(v445, v0, v446);
      v714[0] = v706;
      sub_1C447F738();
      sub_1C4D7E0C4(v8, v705, v74, v714, &qword_1EC0BADB8, &unk_1C4F175D0, type metadata accessor for CNContactStructs.Place, type metadata accessor for CNContactStructs.LocationRelationshipType, type metadata accessor for CNContactStructs.Place, sub_1C4D7D290, v662, v663, v664, v665, v666, v667, v668, v669, v670, v671, v672, v673, v674);
      if (v233)
      {
        v443 = type metadata accessor for CNContactStructs.LocationRelationshipType;
        goto LABEL_243;
      }

      v448 = v447;
      ++v444;
      sub_1C444AE90();
      sub_1C44D474C(v0, v449);
      v0 = v715;
      sub_1C49D3614(v448);
      v74 = v708;
    }
  }

  v450 = v666;
  v79 = *&v74[v707[64]];
  if (v79)
  {
    v76 = 0;
    v74 = *(v79 + 16);
    while (v74 != v76)
    {
      if (v76 >= *(v79 + 16))
      {
        goto LABEL_258;
      }

      sub_1C43FBF6C();
      sub_1C44F1A00();
      v0 = v450;
      sub_1C44CC80C(v451, v450, v452);
      v714[1] = v706;
      v453 = sub_1C4D87018();
      sub_1C4D7A0FC(v453, v454, v455, v456, v457, v458, v459, v460, v664, v665, v666, v667, v668, v669, v670, v671, v672, v673, v674, v675);
      if (v233)
      {
        v443 = type metadata accessor for CNContactStructs.AddressRelationshipType;
        goto LABEL_243;
      }

      v2 = v461;
      ++v76;
      sub_1C44401A4();
      sub_1C44D474C(v450, v462);
      v0 = v715;
      sub_1C49D3614(v2);
    }
  }

  v463 = v715[0];
  v464 = v665;
  if (*(v715[0] + 16))
  {
    sub_1C4EFF0C8();
    sub_1C43FCE50();
    v465 = sub_1C4404044();
    v466(v465);
    sub_1C4EFEBB8();
    v467 = sub_1C4EFD2F8();
    v469 = v468;
    sub_1C4408374();
    sub_1C44F0D58(v470, v471);
    sub_1C4EF9AE8();
    sub_1C440EEE0();
    v472 = sub_1C4EFF888();
    sub_1C4D86F6C(v472);
    v473 = (v464 + v46[8]);
    *v473 = v467;
    v473[1] = v469;
    sub_1C4D86EE8((v464 + v46[10]));
    *(v464 + v474) = v3;
    *(v464 + v46[12]) = v706;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v652 = sub_1C43FCEC0();
      sub_1C44C9240(v652, v653, v654, v463);
      v463 = v655;
    }

    v476 = *(v463 + 16);
    v475 = *(v463 + 24);
    if (v476 >= v475 >> 1)
    {
      v656 = sub_1C43FFD98(v475);
      sub_1C44C9240(v656, v657, v658, v463);
      v463 = v659;
    }

    *(v463 + 16) = v476 + 1;
    sub_1C43FCC58();
    sub_1C4420AA0();
    sub_1C44D4624(v464, v477, v478);
  }

LABEL_245:
  sub_1C4402144();
  sub_1C44109F8();
}

void sub_1C4D71E58()
{
  sub_1C43FE96C();
  v5 = v4;
  v212 = v6;
  v213 = v7;
  v205 = type metadata accessor for EntityTriple(0);
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBFDC();
  v204 = v9;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C4461E00(v11, v12, v13, v14, v15, v16, v17, v18, v197);
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FBF38();
  v201 = v20;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v21);
  sub_1C44055D8();
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FBF38();
  v199 = v23;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v24);
  sub_1C43FD230();
  v198 = v25;
  sub_1C43FBE44();
  v216 = sub_1C4EFD548();
  sub_1C43FCDF8();
  v214 = v26;
  MEMORY[0x1EEE9AC00](v27);
  sub_1C43FD2D8();
  v203 = v28;
  sub_1C43FBE44();
  sub_1C4EFF8A8();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v29);
  sub_1C440F400();
  v30 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v30);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v31);
  sub_1C44042B0();
  v32 = sub_1C4EFEEF8();
  sub_1C43FCDF8();
  v34 = v33;
  MEMORY[0x1EEE9AC00](v35);
  sub_1C43FBCC4();
  sub_1C4422BD8();
  v210 = *v5;
  v36 = v1;
  sub_1C445FFA8(v1, v0, &qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C440175C(v0, 1, v32);
  if (v37)
  {
    sub_1C4420C3C(v0, &qword_1EC0B9A08, &unk_1C4F107B0);
    v38 = sub_1C45CF650();
    v39 = sub_1C43FFB2C(&type metadata for MappingError, v38);
    sub_1C44559D0(v39, v40);
  }

  else
  {
    v208 = v34;
    v211 = v3;
    v41 = v32;
    (*(v34 + 32))(v3, v0, v32);
    v42 = type metadata accessor for CNContactStructs.IdentifierRelationshipType(0);
    (*(v214 + 16))(v203, v1 + v42[5], v216);
    v209 = v2;
    sub_1C4EFF838();
    v215 = v1;
    v43 = *(v1 + v42[8] + 8);
    if (v43)
    {
      sub_1C4404978();
      v44 = v205;
      if (v45)
      {
        sub_1C4EFF0C8();
        sub_1C43FCE50();
        (*(v46 + 16))(v198, v212);
        sub_1C4D8717C();
        v47 = *(v36 + 16);
        v47(v198 + v48, v3, v32);
        sub_1C442A554();
        v50(v198 + v49, v2);
        v47(v198 + v205[7], v215 + v42[7], v32);
        sub_1C4408374();
        v44 = v205;
        sub_1C44CC80C(v215 + v51, v198 + v52, v53);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        v54 = (v198 + v205[8]);
        *v54 = v42;
        v54[1] = v43;
        sub_1C44367DC(v213, (v198 + v205[10]));
        *(v198 + v55) = v56;
        *(v198 + v205[12]) = v210;
        v57 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4401EC4(v57, v58, v59, MEMORY[0x1E69E7CC0]);
        v61 = v60;
        v43 = *(v60 + 16);
        sub_1C4424824();
        if (v63)
        {
          v161 = sub_1C43FF640(v62);
          sub_1C44C9240(v161, v162, v163, v61);
          v61 = v164;
        }

        *(v61 + 16) = v42;
        sub_1C43FF9D4();
        sub_1C4420AA0();
        sub_1C44D4624(v198, v64, v65);
      }

      else
      {
        v61 = MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      v61 = MEMORY[0x1E69E7CC0];
      v44 = v205;
    }

    v66 = v215;
    sub_1C441406C();
    v207 = v41;
    if (v43)
    {
      sub_1C43FF988();
      if (v68)
      {
        v206 = v67;
        sub_1C4EFF0C8();
        sub_1C43FCE50();
        v69 = sub_1C443F470();
        v70(v69);
        sub_1C4D8717C();
        v72 = sub_1C448F290(v71);
        v215(v72);
        sub_1C442A554();
        v74 = sub_1C449DBB0(v73);
        v75(v74);
        v76 = sub_1C441BF68();
        v215(v76);
        v66 = v215;
        sub_1C4408374();
        sub_1C4D86FD0(v77, v78);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        sub_1C4418DA4();
        *v79 = v206;
        v79[1] = v43;
        sub_1C43FCC6C(v80);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v165 = sub_1C43FCEC0();
          sub_1C44C9240(v165, v166, v167, v61);
          v61 = v168;
        }

        sub_1C441C66C();
        if (v63)
        {
          v169 = sub_1C43FF640(v81);
          sub_1C44C9240(v169, v170, v171, v61);
          v61 = v172;
        }

        *(v61 + 16) = v42;
        sub_1C43FF9D4();
        sub_1C4420AA0();
        sub_1C44D4624(v199, v82, v83);
      }
    }

    sub_1C441406C();
    if (v43)
    {
      sub_1C4404978();
      if (v84)
      {
        sub_1C4EFF0C8();
        sub_1C43FCE50();
        v85 = sub_1C443F470();
        v86(v85);
        sub_1C4D8717C();
        v88 = sub_1C448F290(v87);
        v66(v88);
        sub_1C442A554();
        v90 = sub_1C449DBB0(v89);
        v91(v90);
        v92 = sub_1C441BF68();
        v66(v92);
        v66 = v215;
        sub_1C4408374();
        sub_1C4D86FD0(v93, v94);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        sub_1C4418DA4();
        *v95 = v42;
        v95[1] = v43;
        sub_1C43FCC6C(v96);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v173 = sub_1C43FCEC0();
          sub_1C44C9240(v173, v174, v175, v61);
          v61 = v176;
        }

        sub_1C441C66C();
        if (v63)
        {
          v177 = sub_1C43FF640(v97);
          sub_1C44C9240(v177, v178, v179, v61);
          v61 = v180;
        }

        *(v61 + 16) = v42;
        sub_1C43FF9D4();
        sub_1C4420AA0();
        sub_1C44D4624(v200, v98, v99);
      }
    }

    sub_1C441406C();
    if (v43)
    {
      sub_1C4404978();
      if (v100)
      {
        sub_1C4EFF0C8();
        sub_1C43FCE50();
        v101 = sub_1C443F470();
        v102(v101);
        sub_1C4D8717C();
        v104 = sub_1C448F290(v103);
        v66(v104);
        sub_1C442A554();
        v106 = sub_1C449DBB0(v105);
        v107(v106);
        v108 = sub_1C441BF68();
        v66(v108);
        v66 = v215;
        sub_1C4408374();
        sub_1C4D86FD0(v109, v110);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        sub_1C4418DA4();
        *v111 = v42;
        v111[1] = v43;
        sub_1C43FCC6C(v112);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v181 = sub_1C43FCEC0();
          sub_1C44C9240(v181, v182, v183, v61);
          v61 = v184;
        }

        sub_1C441C66C();
        if (v63)
        {
          v185 = sub_1C43FF640(v113);
          sub_1C44C9240(v185, v186, v187, v61);
          v61 = v188;
        }

        *(v61 + 16) = v42;
        sub_1C43FF9D4();
        sub_1C4420AA0();
        sub_1C44D4624(v201, v114, v115);
      }
    }

    sub_1C441406C();
    if (v43 && (sub_1C4404978(), v116))
    {
      sub_1C4EFF0C8();
      sub_1C43FCE50();
      v117 = sub_1C443F470();
      v118(v117);
      v119 = sub_1C448F290(v44[5]);
      v66(v119);
      sub_1C442A554();
      v121 = sub_1C449DBB0(v120);
      v122(v121);
      v123 = sub_1C441BF68();
      v66(v123);
      v66 = v215;
      sub_1C4408374();
      sub_1C4D86FD0(v124, v125);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      sub_1C4418DA4();
      *v126 = v42;
      v126[1] = v43;
      sub_1C43FCC6C(v127);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v189 = sub_1C43FCEC0();
        sub_1C44C9240(v189, v190, v191, v61);
        v61 = v192;
      }

      sub_1C441C66C();
      v129 = v208;
      v130 = v209;
      if (v63)
      {
        v193 = sub_1C43FF640(v128);
        sub_1C44C9240(v193, v194, v195, v61);
        v61 = v196;
      }

      *(v61 + 16) = v42;
      sub_1C43FBF6C();
      sub_1C4420AA0();
      sub_1C44D4624(v202, v131, v132);
    }

    else
    {
      v129 = v208;
      v130 = v209;
    }

    if (*(v61 + 16))
    {
      sub_1C4EFF0C8();
      sub_1C43FCE50();
      (*(v133 + 16))(v204, v212);
      v134 = sub_1C4401940(v44[5]);
      v135(v134, v211, v207);
      sub_1C442A554();
      v137(v204 + v136, v130);
      sub_1C4EFEBB8();
      sub_1C440C668();
      v139 = (v66 + v138);
      sub_1C4EFD2F8();
      sub_1C440D158();
      sub_1C4408374();
      sub_1C44CC80C(v66 + v140, v204 + v141, v142);
      sub_1C4EF9AE8();
      sub_1C44D4800();
      *v143 = v42;
      v143[1] = v139;
      sub_1C44367DC(v213, (v204 + v44[10]));
      *(v204 + v144) = v145;
      *(v204 + v44[12]) = v210;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v153 = sub_1C43FCEC0();
        sub_1C44C9240(v153, v154, v155, v61);
        v61 = v156;
      }

      sub_1C441C66C();
      if (v63)
      {
        v157 = sub_1C43FF640(v146);
        sub_1C44C9240(v157, v158, v159, v61);
        v61 = v160;
      }

      v147 = sub_1C4485C30();
      v148(v147);
      (*(v129 + 8))(v211, v207);
      *(v61 + 16) = v42;
      sub_1C43FBF6C();
      sub_1C4420AA0();
      sub_1C44D4624(v204, v149, v150);
    }

    else
    {
      v151 = sub_1C4485C30();
      v152(v151);
      (*(v129 + 8))(v211, v207);
    }
  }

  sub_1C4402144();
  sub_1C43FBC80();
}

uint64_t sub_1C4D72990(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461636964657270 && a2 == 0xE900000000000065;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C43797469746E65 && a2 == 0xEB00000000737361;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000016 && 0x80000001C4FC7BA0 == a2;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x696669746E656469 && a2 == 0xEC00000064497265;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000018 && 0x80000001C4FC7BC0 == a2;
            if (v10 || (sub_1C4F02938() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x696669746E656469 && a2 == 0xEE00657079547265;
              if (v11 || (sub_1C4F02938() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000013 && 0x80000001C4FC8110 == a2;
                if (v12 || (sub_1C4F02938() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x5255656372756F73 && a2 == 0xE90000000000004CLL;
                  if (v13 || (sub_1C4F02938() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000012 && 0x80000001C4FC8130 == a2;
                    if (v14 || (sub_1C4F02938() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x656D616E72657375 && a2 == 0xE800000000000000;
                      if (v15 || (sub_1C4F02938() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD000000000000019 && 0x80000001C4FC8150 == a2;
                        if (v16 || (sub_1C4F02938() & 1) != 0)
                        {

                          return 11;
                        }

                        else if (a1 == 0x69666F7250736168 && a2 == 0xEF6567616D49656CLL)
                        {

                          return 12;
                        }

                        else
                        {
                          v18 = sub_1C4F02938();

                          if (v18)
                          {
                            return 12;
                          }

                          else
                          {
                            return 13;
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
}

unint64_t sub_1C4D72D8C(char a1)
{
  result = 0x7461636964657270;
  switch(a1)
  {
    case 1:
      result = 0x6C43797469746E65;
      break;
    case 2:
      result = 0x656372756F73;
      break;
    case 3:
      result = 0xD000000000000016;
      break;
    case 4:
    case 6:
      result = 0x696669746E656469;
      break;
    case 5:
      result = 0xD000000000000018;
      break;
    case 7:
      result = 0xD000000000000013;
      break;
    case 8:
      result = 0x5255656372756F73;
      break;
    case 9:
      result = 0xD000000000000012;
      break;
    case 10:
      result = 0x656D616E72657375;
      break;
    case 11:
      result = 0xD000000000000019;
      break;
    case 12:
      result = 0x69666F7250736168;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1C4D72F2C()
{
  sub_1C43FE96C();
  sub_1C44043C4();
  sub_1C456902C(&qword_1EC0C6DA8, &qword_1C4F71150);
  sub_1C4403200();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C43FE61C();
  sub_1C43FD870();
  v3 = sub_1C4D85354();
  sub_1C440F61C(&type metadata for CNContactStructs.IdentifierRelationshipType.CodingKeys, v4, v3);
  sub_1C441D6E4();
  sub_1C4EFEEF8();
  sub_1C4412A4C();
  sub_1C44CD358(v5, v6, MEMORY[0x1E69A9750]);
  sub_1C44D7E30();
  sub_1C43FF9BC();
  sub_1C4F02778();
  if (!v0)
  {
    v15 = type metadata accessor for CNContactStructs.IdentifierRelationshipType(0);
    sub_1C440CE38();
    sub_1C4EFD548();
    sub_1C4432F18();
    sub_1C44CD358(v7, v8, MEMORY[0x1E69A92D0]);
    sub_1C44554E4();
    sub_1C43FEF68();
    sub_1C4F027E8();
    v9 = sub_1C4401FFC();
    type metadata accessor for Source(v9);
    sub_1C440EB5C();
    sub_1C44CD358(v10, v11, &protocol conformance descriptor for Source);
    sub_1C44554E4();
    sub_1C43FEF68();
    sub_1C4F027E8();
    sub_1C4401958();
    sub_1C43FF9BC();
    sub_1C4F027E8();
    sub_1C440C15C((v1 + v15[8]));
    sub_1C4F02738();
    sub_1C4D86E40();
    sub_1C43FF9BC();
    sub_1C4F027E8();
    sub_1C4459C78();
    sub_1C43FBF44();
    sub_1C4F02738();
    sub_1C4409434(v15[11]);
    sub_1C43FBF44();
    sub_1C4F027E8();
    sub_1C4416974();
    sub_1C43FBF44();
    sub_1C4F02738();
    sub_1C4D86EF8();
    sub_1C43FF9BC();
    sub_1C4F027E8();
    sub_1C4D8719C();
    sub_1C4401774(v12);
    sub_1C43FBF44();
    sub_1C4F02738();
    sub_1C4D87028();
    sub_1C43FF9BC();
    sub_1C4F027E8();
    sub_1C4401774(v15[16]);
    sub_1C43FBF44();
    sub_1C4F02738();
  }

  v13 = sub_1C440231C();
  v14(v13);
  sub_1C44103B4();
  sub_1C43FBC80();
}

void sub_1C4D73234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1C43FE96C();
  a22 = v26;
  a23 = v27;
  v29 = v28;
  v95 = v30;
  sub_1C4EFEEF8();
  sub_1C4403200();
  v99 = v31;
  MEMORY[0x1EEE9AC00](v32);
  sub_1C43FBFDC();
  v96 = v33;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v34);
  sub_1C4461E00(v35, v36, v37, v38, v39, v40, v41, v42, v90);
  MEMORY[0x1EEE9AC00](v43);
  sub_1C441816C();
  MEMORY[0x1EEE9AC00](v44);
  sub_1C44143D0();
  MEMORY[0x1EEE9AC00](v45);
  sub_1C43FD230();
  sub_1C4D86F60(v46);
  v47 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v47);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v48);
  sub_1C4416C44(v49, v91);
  v102 = sub_1C456902C(&qword_1EC0C6D98, &qword_1C4F71148);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v50);
  v52 = sub_1C4425644(v51, v92);
  v53 = type metadata accessor for CNContactStructs.IdentifierRelationshipType(v52);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v54);
  v56 = sub_1C4410790(v55, v93);
  v101 = v23;
  sub_1C44A1CA0(v56, v57, v58);
  sub_1C4EFD258();
  v59 = v53[6];
  if (qword_1EDDFED28 != -1)
  {
    sub_1C44133AC();
    swift_once();
  }

  v60 = type metadata accessor for Source(0);
  sub_1C442B738(v60, &unk_1EDDFD088);
  sub_1C4408374();
  sub_1C44CC80C(v61, v25 + v59, v62);
  sub_1C4D87038();
  sub_1C4EFE558();
  v63 = (v25 + v53[8]);
  *v63 = 0;
  v63[1] = 0;
  sub_1C4EFE658();
  v64 = (v25 + v53[10]);
  *v64 = 0;
  v64[1] = 0;
  v98 = v53[11];
  sub_1C4EFEED8();
  v65 = (v25 + v53[12]);
  *v65 = 0;
  v65[1] = 0;
  v97 = v53[13];
  sub_1C4EFEE18();
  v66 = (v25 + v53[14]);
  *v66 = 0;
  v66[1] = 0;
  sub_1C4EFE738();
  v103 = v25;
  v67 = (v25 + v53[16]);
  *v67 = 0;
  v67[1] = 0;
  sub_1C4417F50(v29, v29[3]);
  sub_1C4D85354();
  sub_1C4D86FE8();
  sub_1C4F02BC8();
  if (v24)
  {
    sub_1C440962C(v29);
    sub_1C442EE4C();
  }

  else
  {
    v94 = v67;
    sub_1C4412A4C();
    sub_1C44CD358(v68, v69, MEMORY[0x1E69A9778]);
    sub_1C4F02658();
    sub_1C444088C(v100, v103, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C441405C();
    sub_1C44151E8();
    sub_1C4F026C8();
    v70 = *(v99 + 40);
    sub_1C4D87170();
    v70();
    v71 = sub_1C4428F20();
    v72 = sub_1C440CE84(v71);
    sub_1C44147E8(v72, v73, v63);
    sub_1C44151E8();
    sub_1C4F026C8();
    v74 = sub_1C4D8715C();
    (v70)(v74);
    v75 = sub_1C4402044();
    v76 = sub_1C440CE84(v75);
    sub_1C440EEEC(v76, v77, v64);
    sub_1C44151E8();
    sub_1C4F026C8();
    sub_1C447565C(v98);
    sub_1C4D87170();
    v70();
    v78 = sub_1C4414078();
    v79 = sub_1C440CE84(v78);
    sub_1C443E4B8(v79, v80, &a21);
    sub_1C43FE79C(9);
    sub_1C44151E8();
    sub_1C4F026C8();
    sub_1C447565C(v97);
    sub_1C4D87170();
    v70();
    v105 = 10;
    v81 = sub_1C440CE84(&v105);
    sub_1C443E4B8(v81, v82, &a20);
    sub_1C44151E8();
    sub_1C4F026C8();
    v83 = sub_1C4456A14(&a19);
    (v70)(v83, v96, v101);
    v84 = sub_1C4F02618();
    v86 = v85;
    sub_1C441BF7C();
    v87(v104, v102);
    *v94 = v84;
    v94[1] = v86;
    sub_1C4D86E80();
    sub_1C44CC80C(v103, v95, v88);
    sub_1C440962C(v29);
    sub_1C442EE4C();
  }

  sub_1C44D474C(v103, v89);
  sub_1C43FBC80();
}

uint64_t sub_1C4D73850@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4D72990(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4D73878@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C4616EB0();
  *a1 = result;
  return result;
}

uint64_t sub_1C4D738A0(uint64_t a1)
{
  v2 = sub_1C4D85354();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4D738DC(uint64_t a1)
{
  v2 = sub_1C4D85354();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C4D73960()
{
  sub_1C43FE628();
  v3 = v1;
  v4 = v0;
  v6 = v5;
  v98 = v7;
  v99 = v8;
  v9 = type metadata accessor for EntityTriple(0);
  sub_1C43FCDF8();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBD08();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v93 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v93 - v20;
  v97 = *v6;
  v100 = type metadata accessor for CNContactStructs.Organization(0);
  v22 = *(v4 + v100[9] + 8);
  if (v22 && (sub_1C442EE64(), v24))
  {
    v95 = v11;
    v96 = v1;
    v94 = v23;
    sub_1C4EFF0C8();
    sub_1C43FCE50();
    (*(v25 + 16))(v21, v4);
    v26 = v100[8];
    v27 = v9[5];
    sub_1C4EFEEF8();
    sub_1C43FCE50();
    (*(v28 + 16))(&v21[v27], v4 + v26);
    sub_1C4408374();
    sub_1C44CC80C(v4 + v29, &v21[v30], v31);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4EF9AE8();
    sub_1C4416C58();
    sub_1C4EFF888();
    sub_1C4EFEC38();
    sub_1C4418DA4();
    *v32 = v94;
    v32[1] = v22;
    sub_1C44367DC(v99, &v21[v9[10]]);
    *&v21[v33] = v2;
    v21[v9[12]] = v97;
    v34 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4401EC4(v34, v35, v36, MEMORY[0x1E69E7CC0]);
    v38 = v37;
    v40 = *(v37 + 16);
    v39 = *(v37 + 24);
    if (v40 >= v39 >> 1)
    {
      v81 = sub_1C4405AF4(v39);
      sub_1C44C9240(v81, v82, v83, v38);
      v38 = v84;
    }

    v11 = v95;
    *(v38 + 16) = v40 + 1;
    sub_1C441B18C();
    sub_1C4420AA0();
    sub_1C44D4624(v21, v41, v42);
    v3 = v96;
  }

  else
  {
    v38 = MEMORY[0x1E69E7CC0];
  }

  v43 = (v4 + v100[11]);
  v44 = v43[1];
  if (v44)
  {
    v45 = *v43;
    v46 = HIBYTE(v44) & 0xF;
    if ((v44 & 0x2000000000000000) == 0)
    {
      v46 = v45 & 0xFFFFFFFFFFFFLL;
    }

    if (v46)
    {
      v95 = v11;
      v96 = v3;
      v94 = v45;
      sub_1C4EFF0C8();
      sub_1C43FCE50();
      (*(v47 + 16))(v18, v4);
      v48 = v100[10];
      v49 = v9[5];
      sub_1C4EFEEF8();
      sub_1C43FCE50();
      (*(v50 + 16))(&v18[v49], v4 + v48);
      sub_1C4408374();
      sub_1C44CC80C(v4 + v51, &v18[v52], v53);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      sub_1C4416C58();
      sub_1C4EFF888();
      sub_1C4EFEC38();
      v54 = &v18[v9[8]];
      *v54 = v94;
      *(v54 + 1) = v44;
      sub_1C44367DC(v99, &v18[v9[10]]);
      *&v18[v55] = v2;
      v18[v9[12]] = v97;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v85 = sub_1C43FCEC0();
        sub_1C44C9240(v85, v86, v87, v38);
        v38 = v88;
      }

      v57 = *(v38 + 16);
      v56 = *(v38 + 24);
      if (v57 >= v56 >> 1)
      {
        v89 = sub_1C4405AF4(v56);
        sub_1C44C9240(v89, v90, v91, v38);
        v38 = v92;
      }

      *(v38 + 16) = v57 + 1;
      sub_1C441B18C();
      sub_1C4420AA0();
      sub_1C44D4624(v18, v58, v59);
    }
  }

  if (*(v38 + 16))
  {
    sub_1C4EFF0C8();
    sub_1C43FCE50();
    (*(v60 + 16))(v15, v4);
    sub_1C4EFEBB8();
    v61 = sub_1C4EFD2F8();
    v63 = v62;
    sub_1C4408374();
    sub_1C44CC80C(v4 + v64, v15 + v65, v66);
    sub_1C4EF9AE8();
    sub_1C4416C58();
    sub_1C4EFF888();
    sub_1C4EFEC38();
    v67 = (v15 + v9[8]);
    *v67 = v61;
    v67[1] = v63;
    sub_1C44367DC(v99, (v15 + v9[10]));
    *(v15 + v68) = v2;
    *(v15 + v9[12]) = v97;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v73 = sub_1C43FCEC0();
      sub_1C44C9240(v73, v74, v75, v38);
      v38 = v76;
    }

    sub_1C440F0B4();
    if (v70)
    {
      v77 = sub_1C43FFD98(v69);
      sub_1C44C9240(v77, v78, v79, v38);
      v38 = v80;
    }

    *(v38 + 16) = v61;
    sub_1C441B18C();
    sub_1C4420AA0();
    sub_1C44D4624(v15, v71, v72);
  }

  sub_1C440EE0C();
  sub_1C44109F8();
}

uint64_t sub_1C4D73E60(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000001C4F855E0 == a2;
  if (v3 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7461636964657270 && a2 == 0xE900000000000065;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C43797469746E65 && a2 == 0xEB00000000737361;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6572705F656D616ELL && a2 == 0xEE00657461636964;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 1701667182 && a2 == 0xE400000000000000;
            if (v10 || (sub_1C4F02938() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000016 && 0x80000001C4FC8170 == a2;
              if (v11 || (sub_1C4F02938() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0x636974656E6F6870 && a2 == 0xEC000000656D614ELL)
              {

                return 7;
              }

              else
              {
                v13 = sub_1C4F02938();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1C4D740F8(char a1)
{
  result = 0x7461636964657270;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x6C43797469746E65;
      break;
    case 3:
      result = 0x656372756F73;
      break;
    case 4:
      result = 0x6572705F656D616ELL;
      break;
    case 5:
      result = 1701667182;
      break;
    case 6:
      result = 0xD000000000000016;
      break;
    case 7:
      result = 0x636974656E6F6870;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

void sub_1C4D741FC()
{
  sub_1C43FE96C();
  sub_1C44043C4();
  sub_1C456902C(&qword_1EC0C6DC0, &qword_1C4F71160);
  sub_1C4403200();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C43FE61C();
  sub_1C43FD870();
  v2 = sub_1C4D853A8();
  sub_1C440F61C(&type metadata for CNContactStructs.Organization.CodingKeys, v3, v2);
  sub_1C441D6E4();
  sub_1C4EFF0C8();
  sub_1C442E784();
  sub_1C44CD358(v4, v5, MEMORY[0x1E69A9818]);
  sub_1C43FE6CC();
  sub_1C43FEF68();
  sub_1C4F027E8();
  if (!v0)
  {
    v6 = type metadata accessor for CNContactStructs.Organization(0);
    sub_1C440CE38();
    sub_1C4EFEEF8();
    sub_1C4412A4C();
    sub_1C44CD358(v7, v8, MEMORY[0x1E69A9750]);
    sub_1C43FBF44();
    sub_1C4F02778();
    sub_1C4401FFC();
    sub_1C4EFD548();
    sub_1C4432F18();
    sub_1C44CD358(v9, v10, MEMORY[0x1E69A92D0]);
    sub_1C4418670();
    sub_1C43FEF68();
    sub_1C4F027E8();
    sub_1C443439C();
    sub_1C440EB5C();
    sub_1C44CD358(v11, v12, &protocol conformance descriptor for Source);
    sub_1C4418670();
    sub_1C43FEF68();
    sub_1C4F027E8();
    sub_1C43FBF44();
    sub_1C4F027E8();
    sub_1C4401774(*(v6 + 36));
    sub_1C43FBF44();
    sub_1C4F02738();
    sub_1C43FBF44();
    sub_1C4F027E8();
    sub_1C4401774(*(v6 + 44));
    sub_1C44307E0(7);
    sub_1C43FBF44();
    sub_1C4F02738();
  }

  v13 = sub_1C440231C();
  v14(v13);
  sub_1C44103B4();
  sub_1C43FBC80();
}

void sub_1C4D744B0()
{
  sub_1C43FE96C();
  v4 = v3;
  v50 = v5;
  sub_1C4EFEEF8();
  sub_1C4403200();
  v60 = v6;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBFDC();
  v51 = v8;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FD230();
  v52 = v10;
  v11 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v11);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBC74();
  v53 = v13;
  sub_1C43FBE44();
  v56 = sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v54 = v14;
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBCC4();
  v18 = v17 - v16;
  sub_1C456902C(&qword_1EC0C6DB0, &qword_1C4F71158);
  sub_1C43FCDF8();
  v55 = v19;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v20);
  v21 = sub_1C4413644();
  v22 = type metadata accessor for CNContactStructs.Organization(v21);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FBCC4();
  sub_1C44058BC();
  v61 = *(v24 + 20);
  sub_1C4401E28();
  sub_1C440BAA8(v25, v26, v27, v28);
  v57 = v22[6];
  _s24IntelligencePlatformCore19OrganizationMatcherV11entityClass0aB006EntityG0Vvg_0();
  v29 = v22[7];
  if (qword_1EDDFED28 != -1)
  {
    sub_1C44133AC();
    swift_once();
  }

  v30 = type metadata accessor for Source(0);
  sub_1C442B738(v30, &unk_1EDDFD088);
  sub_1C4408374();
  sub_1C44CC80C(v31, v2 + v29, v32);
  v59 = v22[8];
  sub_1C4EFEBF8();
  v58 = v22[10];
  sub_1C4EFE578();
  sub_1C4417F50(v4, v4[3]);
  sub_1C4D853A8();
  sub_1C4F02BC8();
  if (v1)
  {
    sub_1C440962C(v4);
    sub_1C4420C3C(v2 + v61, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C4EFD548();
    sub_1C43FBCE0();
    (*(v35 + 8))(v2 + v57);
    sub_1C440636C();
    sub_1C44D474C(v2 + v29, v36);
    v37 = *(v60 + 8);
    v37(v2 + v59, v0);

    v37(v2 + v58, v0);
  }

  else
  {
    sub_1C442E784();
    sub_1C44CD358(v33, v34, MEMORY[0x1E69A9838]);
    sub_1C43FE6CC();
    sub_1C44107B4();
    sub_1C4F026C8();
    (*(v54 + 32))(v2, v18, v56);
    sub_1C4412A4C();
    sub_1C44CD358(v38, v39, MEMORY[0x1E69A9778]);
    sub_1C441E954();
    sub_1C44107B4();
    sub_1C4F02658();
    sub_1C444088C(v53, v2 + v61, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C441E954();
    sub_1C44107B4();
    sub_1C4F026C8();
    v40 = *(v60 + 40);
    v40(v2 + v59, v52, v0);
    sub_1C44107B4();
    v41 = sub_1C4F02618();
    v42 = (v2 + v22[9]);
    *v42 = v41;
    v42[1] = v43;
    sub_1C441E954();
    sub_1C44107B4();
    sub_1C4F026C8();
    v40(v2 + v58, v51, v0);
    sub_1C44107B4();
    v44 = sub_1C4F02618();
    v46 = v45;
    v47 = (v2 + v22[11]);
    v48 = sub_1C441D080();
    v49(v48, v55);
    *v47 = v44;
    v47[1] = v46;
    sub_1C44CC80C(v2, v50, type metadata accessor for CNContactStructs.Organization);
    sub_1C440962C(v4);
    sub_1C44D474C(v2, type metadata accessor for CNContactStructs.Organization);
  }

  sub_1C43FBC80();
}

uint64_t sub_1C4D74AF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4D73E60(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4D74B20(uint64_t a1)
{
  v2 = sub_1C4D853A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4D74B5C(uint64_t a1)
{
  v2 = sub_1C4D853A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4D74BE0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461636964657270 && a2 == 0xE900000000000065;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C43797469746E65 && a2 == 0xEB00000000737361;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000014 && 0x80000001C4FC8190 == a2;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x656D747261706564 && a2 == 0xEA0000000000746ELL;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x664F7265626D656DLL && a2 == 0xE800000000000000)
          {

            return 5;
          }

          else
          {
            v11 = sub_1C4F02938();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1C4D74DE0(char a1)
{
  result = 0x7461636964657270;
  switch(a1)
  {
    case 1:
      result = 0x6C43797469746E65;
      break;
    case 2:
      result = 0x656372756F73;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    case 4:
      result = 0x656D747261706564;
      break;
    case 5:
      result = 0x664F7265626D656DLL;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1C4D74EA4()
{
  sub_1C43FE96C();
  sub_1C440EDD4();
  sub_1C456902C(&qword_1EC0C6DD8, &qword_1C4F71170);
  sub_1C4403200();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C43FE61C();
  sub_1C43FD870();
  v3 = sub_1C4D853FC();
  sub_1C440F61C(&type metadata for CNContactStructs.EmploymentRelationshipType.CodingKeys, v4, v3);
  sub_1C441D6E4();
  sub_1C4EFEEF8();
  sub_1C4412A4C();
  sub_1C44CD358(v5, v6, MEMORY[0x1E69A9750]);
  sub_1C44055EC();
  sub_1C4F02778();
  if (!v0)
  {
    v17 = type metadata accessor for CNContactStructs.EmploymentRelationshipType(0);
    sub_1C440CE38();
    sub_1C4EFD548();
    sub_1C4432F18();
    sub_1C44CD358(v7, v8, MEMORY[0x1E69A92D0]);
    sub_1C444C0BC();
    sub_1C43FCB2C();
    sub_1C4F027E8();
    v9 = sub_1C4401FFC();
    type metadata accessor for Source(v9);
    sub_1C440EB5C();
    sub_1C44CD358(v10, v11, &protocol conformance descriptor for Source);
    sub_1C444C0BC();
    sub_1C43FCB2C();
    sub_1C4F027E8();
    sub_1C4401958();
    sub_1C44055EC();
    sub_1C4F027E8();
    sub_1C440C15C((v1 + *(v17 + 32)));
    sub_1C4F02738();
    v12 = sub_1C4D870E8();
    type metadata accessor for CNContactStructs.Organization(v12);
    sub_1C44995EC();
    sub_1C44CD358(v13, v14, &unk_1C4F70D88);
    sub_1C43FCB2C();
    sub_1C4F02778();
  }

  v15 = sub_1C440231C();
  v16(v15);
  sub_1C440EE0C();
  sub_1C43FBC80();
}

void sub_1C4D750E8()
{
  sub_1C43FE96C();
  v5 = v4;
  v46 = v6;
  v7 = sub_1C456902C(&qword_1EC0BAD40, &qword_1C4F175A0);
  sub_1C43FBD18(v7);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C4416C44(v9, v44);
  sub_1C4EFEEF8();
  sub_1C4403200();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FD2D8();
  v11 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v11);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBC74();
  sub_1C456902C(&qword_1EC0C6DC8, &qword_1C4F71168);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v13);
  v14 = sub_1C4D86F2C();
  v15 = type metadata accessor for CNContactStructs.EmploymentRelationshipType(v14);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v16);
  v18 = sub_1C4410790(v17, v45);
  sub_1C44A1CA0(v18, v19, v20);
  sub_1C4EFD248();
  v21 = *(v15 + 24);
  if (qword_1EDDFED28 != -1)
  {
    sub_1C44133AC();
    swift_once();
  }

  v22 = type metadata accessor for Source(0);
  sub_1C442B738(v22, &unk_1EDDFD088);
  sub_1C4408374();
  sub_1C44CC80C(v23, v1 + v21, v24);
  v25 = *(v15 + 28);
  sub_1C4EFE2B8();
  v26 = sub_1C4D870D0();
  v27 = type metadata accessor for CNContactStructs.Organization(v26);
  sub_1C43FCF64();
  sub_1C440BAA8(v28, v29, v30, v27);
  sub_1C4417F50(v5, v5[3]);
  v31 = sub_1C4D853FC();
  sub_1C44CD164(&type metadata for CNContactStructs.EmploymentRelationshipType.CodingKeys, v32, v31);
  if (!v0)
  {
    sub_1C4412A4C();
    v35 = sub_1C44CD358(v33, v34, MEMORY[0x1E69A9778]);
    sub_1C4D86EAC(v35);
    sub_1C444088C(v2, v1, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C441405C();
    sub_1C43FE664();
    sub_1C4F026C8();
    v36 = sub_1C4D870A0();
    v37(v36);
    sub_1C4428F20();
    sub_1C43FE664();
    *v3 = sub_1C4F02618();
    v3[1] = v39;
    sub_1C44995EC();
    sub_1C44CD358(v40, v41, &unk_1C4F70DB0);
    sub_1C450B3B4();
    sub_1C43FE664();
    sub_1C4F02658();
    v42 = sub_1C442A7B4();
    v43(v42);
    sub_1C444088C(v25, v1 + v2, &qword_1EC0BAD40, &qword_1C4F175A0);
    sub_1C44CC80C(v1, v46, type metadata accessor for CNContactStructs.EmploymentRelationshipType);
  }

  sub_1C440962C(v5);
  sub_1C4D86E68();
  sub_1C44D474C(v1, v38);
  sub_1C4403810();
  sub_1C43FBC80();
}

uint64_t sub_1C4D754C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4D74BE0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4D754F0(uint64_t a1)
{
  v2 = sub_1C4D853FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4D7552C(uint64_t a1)
{
  v2 = sub_1C4D853FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C4D7562C()
{
  sub_1C43FE96C();
  v3 = v0;
  v151 = v4;
  v149 = v5;
  v147 = type metadata accessor for EntityTriple(0);
  sub_1C43FCDF8();
  v150 = v6;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBFDC();
  v142 = v8;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C44143D0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBF38();
  v140 = v11;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FD230();
  v139 = v13;
  sub_1C43FBE44();
  v145 = sub_1C4EFD548();
  sub_1C43FCDF8();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBCC4();
  v19 = v18 - v17;
  v153 = sub_1C4EFF8A8();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FBCC4();
  v23 = (v22 - v21);
  v24 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v24);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v25);
  sub_1C44058BC();
  sub_1C4EFEEF8();
  sub_1C43FCDF8();
  v27 = v26;
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FBCC4();
  sub_1C43FE61C();
  v148 = *v151;
  v30 = v29;
  sub_1C445FFA8(v3, v2, &qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C440175C(v2, 1, v30);
  if (v31)
  {
    sub_1C4420C3C(v2, &qword_1EC0B9A08, &unk_1C4F107B0);
    v32 = sub_1C45CF650();
    v33 = sub_1C43FFB2C(&type metadata for MappingError, v32);
    sub_1C44559D0(v33, v34);
  }

  else
  {
    v143 = v27;
    (*(v27 + 32))(v1, v2, v30);
    v35 = type metadata accessor for CNContactStructs.VisualIdentifierRelationshipType(0);
    v138 = *(v35 + 20);
    (*(v15 + 16))(v19, v3 + v138, v145);
    sub_1C4EFF838();
    v152 = v35;
    v36 = *(v3 + *(v35 + 32) + 8);
    v144 = v1;
    v146 = v3;
    if (v36)
    {
      sub_1C43FF988();
      v35 = v150;
      v38 = v147;
      if (v39)
      {
        v40 = v1;
        v137 = v37;
        sub_1C4EFF0C8();
        sub_1C43FCE50();
        v1 = v139;
        (*(v41 + 16))(v139, v149);
        v42 = *(v27 + 16);
        (v42)(v139 + v147[5], v40, v30);
        v43 = sub_1C4401940(v147[6]);
        v44(v43, v23, v153);
        (v42)(v139 + v147[7], v146 + *(v152 + 28), v30);
        sub_1C4408374();
        v38 = v147;
        sub_1C44CC80C(v146 + v45, v139 + v46, v47);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        sub_1C44D4800();
        *v48 = v137;
        v48[1] = v36;
        sub_1C44147FC(v49);
        *(v139 + v50) = v148;
        v51 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4401EC4(v51, v52, v53, MEMORY[0x1E69E7CC0]);
        sub_1C4D87148();
        if (v55)
        {
          v117 = sub_1C43FFD98(v54);
          sub_1C44C9240(v117, v118, v119, v42);
          v42 = v120;
        }

        *(v42 + 16) = v36;
        sub_1C4425634();
        sub_1C4420AA0();
        sub_1C44D4624(v139, v56, v57);
        v58 = v146;
      }

      else
      {
        v42 = MEMORY[0x1E69E7CC0];
        v58 = v146;
      }
    }

    else
    {
      v58 = v3;
      v42 = MEMORY[0x1E69E7CC0];
      v38 = v147;
    }

    v59 = v143;
    sub_1C441406C();
    if (v36)
    {
      sub_1C44026DC();
      if (v60)
      {
        sub_1C4EFF0C8();
        sub_1C43FCE50();
        (*(v61 + 16))(v140, v149);
        v62 = sub_1C447F750();
        v23(v62);
        v63 = sub_1C4D86F40();
        v64(v63);
        v65 = sub_1C447CE9C();
        v23(v65);
        v58 = v146;
        sub_1C4408374();
        sub_1C44CC80C(v146 + v66, v140 + v67, v68);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        v69 = (v140 + v38[8]);
        *v69 = v1;
        v69[1] = v36;
        sub_1C441B1E0((v140 + v38[10]));
        sub_1C4D871BC(v70, v71);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v121 = sub_1C43FCEC0();
          sub_1C44C9240(v121, v122, v123, v42);
          v42 = v124;
        }

        v1 = *(v42 + 16);
        sub_1C44019A4();
        v59 = v143;
        v35 = v150;
        if (v55)
        {
          v125 = sub_1C43FFD98(v72);
          sub_1C44C9240(v125, v126, v127, v42);
          v42 = v128;
        }

        *(v42 + 16) = v36;
        sub_1C4425634();
        sub_1C4420AA0();
        sub_1C44D4624(v140, v73, v74);
      }
    }

    sub_1C441406C();
    if (v36)
    {
      sub_1C44026DC();
      if (v75)
      {
        sub_1C4EFF0C8();
        sub_1C43FCE50();
        (*(v76 + 16))(v141, v149);
        v77 = sub_1C447F750();
        v23(v77);
        v78 = sub_1C4D86F40();
        v79(v78);
        v80 = sub_1C447CE9C();
        v23(v80);
        v58 = v146;
        sub_1C4408374();
        sub_1C44CC80C(v146 + v81, v141 + v82, v83);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        v84 = (v141 + v38[8]);
        *v84 = v1;
        v84[1] = v36;
        sub_1C441B1E0((v141 + v38[10]));
        sub_1C4D871BC(v85, v86);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v129 = sub_1C43FCEC0();
          sub_1C44C9240(v129, v130, v131, v42);
          v42 = v132;
        }

        sub_1C44019A4();
        v59 = v143;
        v35 = v150;
        if (v55)
        {
          v133 = sub_1C43FFD98(v87);
          sub_1C44C9240(v133, v134, v135, v42);
          v42 = v136;
        }

        *(v42 + 16) = v36;
        sub_1C4425634();
        sub_1C4420AA0();
        sub_1C44D4624(v141, v88, v89);
      }
    }

    if (*(v42 + 16))
    {
      sub_1C4EFF0C8();
      sub_1C43FCE50();
      (*(v90 + 16))(v142, v149);
      v91 = sub_1C4401940(v38[5]);
      v92(v91, v144, v30);
      v93 = sub_1C4401940(v38[6]);
      v94(v93, v23, v153);
      sub_1C4EFEBB8();
      sub_1C4EFD2F8();
      sub_1C440D158();
      sub_1C4408374();
      sub_1C44CC80C(v58 + v95, v142 + v96, v97);
      sub_1C4EF9AE8();
      sub_1C44D4800();
      *v98 = v35;
      v98[1] = v58 + v138;
      sub_1C44147FC(v99);
      *(v142 + v100) = v148;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v109 = sub_1C43FCEC0();
        sub_1C44C9240(v109, v110, v111, v42);
        v42 = v112;
      }

      v102 = *(v42 + 16);
      v101 = *(v42 + 24);
      if (v102 >= v101 >> 1)
      {
        v113 = sub_1C43FFD98(v101);
        sub_1C44C9240(v113, v114, v115, v42);
        v42 = v116;
      }

      v103 = sub_1C4485C30();
      v104(v103, v153);
      (*(v59 + 8))(v144, v30);
      *(v42 + 16) = v102 + 1;
      sub_1C445EB4C();
      sub_1C4420AA0();
      sub_1C44D4624(v142, v105, v106);
    }

    else
    {
      v107 = sub_1C4485C30();
      v108(v107, v153);
      (*(v59 + 8))(v144, v30);
    }
  }

  sub_1C4402144();
  sub_1C43FBC80();
}

uint64_t sub_1C4D75F0C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461636964657270 && a2 == 0xE900000000000065;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C43797469746E65 && a2 == 0xEB00000000737361;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD00000000000001ALL && 0x80000001C4FC7D40 == a2;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000010 && 0x80000001C4FAED80 == a2;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD00000000000001BLL && 0x80000001C4FC7D60 == a2;
            if (v10 || (sub_1C4F02938() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000011 && 0x80000001C4FAEDA0 == a2;
              if (v11 || (sub_1C4F02938() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000017 && 0x80000001C4FC7D80 == a2;
                if (v12 || (sub_1C4F02938() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0x6574736567677573 && a2 == 0xED0000656D614E64)
                {

                  return 8;
                }

                else
                {
                  v14 = sub_1C4F02938();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
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

unint64_t sub_1C4D761E4(char a1)
{
  result = 0x7461636964657270;
  switch(a1)
  {
    case 1:
      result = 0x6C43797469746E65;
      break;
    case 2:
      result = 0x656372756F73;
      break;
    case 3:
      v3 = 10;
      goto LABEL_8;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      v3 = 11;
LABEL_8:
      result = v3 | 0xD000000000000010;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0xD000000000000017;
      break;
    case 8:
      result = 0x6574736567677573;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1C4D76314()
{
  sub_1C43FE96C();
  sub_1C44043C4();
  sub_1C456902C(&qword_1EC0C6D30, &qword_1C4F71100);
  sub_1C4403200();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C43FE61C();
  sub_1C43FD870();
  v3 = sub_1C4D851B0();
  sub_1C440F61C(&type metadata for CNContactStructs.VisualIdentifierRelationshipType.CodingKeys, v4, v3);
  sub_1C441D6E4();
  sub_1C4EFEEF8();
  sub_1C4412A4C();
  sub_1C44CD358(v5, v6, MEMORY[0x1E69A9750]);
  sub_1C44D7E30();
  sub_1C43FF9BC();
  sub_1C4F02778();
  if (!v0)
  {
    v14 = type metadata accessor for CNContactStructs.VisualIdentifierRelationshipType(0);
    sub_1C440CE38();
    sub_1C4EFD548();
    sub_1C4432F18();
    sub_1C44CD358(v7, v8, MEMORY[0x1E69A92D0]);
    sub_1C44554E4();
    sub_1C43FEF68();
    sub_1C4F027E8();
    v9 = sub_1C4401FFC();
    type metadata accessor for Source(v9);
    sub_1C440EB5C();
    sub_1C44CD358(v10, v11, &protocol conformance descriptor for Source);
    sub_1C44554E4();
    sub_1C43FEF68();
    sub_1C4F027E8();
    sub_1C4401958();
    sub_1C43FF9BC();
    sub_1C4F027E8();
    sub_1C440C15C((v1 + *(v14 + 32)));
    sub_1C4F02738();
    sub_1C4D86E40();
    sub_1C43FF9BC();
    sub_1C4F027E8();
    sub_1C4459C78();
    sub_1C43FBF44();
    sub_1C4F02738();
    sub_1C4409434(*(v14 + 44));
    sub_1C43FBF44();
    sub_1C4F027E8();
    sub_1C4416974();
    sub_1C43FBF44();
    sub_1C4F02738();
  }

  v12 = sub_1C440231C();
  v13(v12);
  sub_1C44103B4();
  sub_1C43FBC80();
}

void sub_1C4D76588()
{
  sub_1C43FE96C();
  v4 = v3;
  v53 = v5;
  sub_1C4EFEEF8();
  sub_1C4403200();
  v56 = v6;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBFDC();
  v54 = v8;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBF38();
  v55 = v10;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FD230();
  v12 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v12);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBC74();
  v57 = v14;
  sub_1C456902C(&qword_1EC0C6D20, &qword_1C4F710F8);
  sub_1C43FCDF8();
  v59 = v15;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBC74();
  v17 = sub_1C43FBE44();
  v18 = type metadata accessor for CNContactStructs.VisualIdentifierRelationshipType(v17);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v19);
  v21 = sub_1C4410790(v20, v52);
  v58 = v0;
  sub_1C44A1CA0(v21, v22, v23);
  sub_1C4EFD338();
  v24 = v18[6];
  if (qword_1EDDFED28 != -1)
  {
    sub_1C44133AC();
    swift_once();
  }

  v25 = type metadata accessor for Source(0);
  sub_1C442B738(v25, &unk_1EDDFD088);
  sub_1C4408374();
  sub_1C44CC80C(v26, v2 + v24, v27);
  v28 = v18[7];
  sub_1C4EFE828();
  v29 = (v2 + v18[8]);
  *v29 = 0;
  v29[1] = 0;
  v30 = v18[9];
  sub_1C4EFE838();
  v31 = (v2 + v18[10]);
  *v31 = 0;
  v31[1] = 0;
  v32 = v18[11];
  sub_1C4EFE5F8();
  v61 = v2;
  v33 = (v2 + v18[12]);
  *v33 = 0;
  v33[1] = 0;
  sub_1C4417F50(v4, v4[3]);
  sub_1C4D851B0();
  sub_1C4F02BC8();
  if (v1)
  {
    sub_1C440962C(v4);
    sub_1C4462528();
    v51 = v2;
  }

  else
  {
    v60 = v28;
    sub_1C4412A4C();
    sub_1C44CD358(v34, v35, MEMORY[0x1E69A9778]);
    sub_1C44D7E30();
    sub_1C4F02658();
    sub_1C444088C(v57, v2, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C441405C();
    sub_1C450B3B4();
    sub_1C4F026C8();
    v36 = *(v56 + 40);
    v36(v2 + v60, v4, v58);
    sub_1C4428F20();
    v37 = sub_1C4F02618();
    v39 = sub_1C44147E8(v37, v38, v29);
    sub_1C4D87048(v39, v40);
    v36(v2 + v30, v55, v58);
    sub_1C4402044();
    v41 = sub_1C4F02618();
    v43 = sub_1C440EEEC(v41, v42, v31);
    sub_1C4D87048(v43, v44);
    v36(v2 + v32, v54, v58);
    sub_1C4414078();
    v45 = sub_1C4F02618();
    v47 = v46;
    v48 = sub_1C44018C0();
    v49(v48, v59);
    *v33 = v45;
    v33[1] = v47;
    sub_1C44CC80C(v61, v53, type metadata accessor for CNContactStructs.VisualIdentifierRelationshipType);
    sub_1C440962C(v4);
    sub_1C4462528();
    v51 = v61;
  }

  sub_1C44D474C(v51, v50);
  sub_1C43FBC80();
}

uint64_t sub_1C4D76A94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4D75F0C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4D76ABC(uint64_t a1)
{
  v2 = sub_1C4D851B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4D76AF8(uint64_t a1)
{
  v2 = sub_1C4D851B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C4D76B7C()
{
  sub_1C43FE96C();
  v5 = v4;
  v184 = v6;
  v186 = v7;
  v187 = v8;
  v178 = type metadata accessor for EntityTriple(0);
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBFDC();
  v177 = v10;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C4461E00(v12, v13, v14, v15, v16, v17, v18, v19, v167);
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FBF38();
  v171 = v21;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v22);
  sub_1C44055D8();
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FD230();
  v169 = v24;
  sub_1C43FBE44();
  v183 = sub_1C4EFD548();
  sub_1C43FCDF8();
  v180 = v25;
  MEMORY[0x1EEE9AC00](v26);
  sub_1C43FD2D8();
  v173 = v27;
  sub_1C43FBE44();
  sub_1C4EFF8A8();
  sub_1C43FCDF8();
  v188 = v29;
  v189 = v28;
  MEMORY[0x1EEE9AC00](v28);
  sub_1C440F400();
  v30 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v30);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v31);
  sub_1C4413644();
  v32 = sub_1C4EFEEF8();
  sub_1C43FCDF8();
  v34 = v33;
  MEMORY[0x1EEE9AC00](v35);
  sub_1C43FBCC4();
  sub_1C4422BD8();
  v179 = *v5;
  v36 = v0;
  sub_1C445FFA8(v0, v2, &qword_1EC0B9A08, &unk_1C4F107B0);
  v37 = sub_1C440180C();
  sub_1C440175C(v37, v38, v32);
  if (v39)
  {
    sub_1C4420C3C(v2, &qword_1EC0B9A08, &unk_1C4F107B0);
    v40 = sub_1C45CF650();
    v41 = sub_1C43FFB2C(&type metadata for MappingError, v40);
    sub_1C44559D0(v41, v42);
  }

  else
  {
    v185 = v34;
    v43 = v32;
    (*(v34 + 32))(v3, v2, v32);
    v44 = type metadata accessor for CNContactStructs.EntityAliasRelationshipType(0);
    v168 = v44[5];
    v45 = v36;
    v46 = v36 + v168;
    v47 = v173;
    (*(v180 + 16))(v173, v46, v183);
    sub_1C4EFF838();
    v190 = v44;
    v48 = *(v45 + v44[8] + 8);
    v182 = v1;
    v181 = v3;
    if (v48 && (sub_1C44D4060(), v50))
    {
      v174 = v49;
      sub_1C4EFF0C8();
      sub_1C43FCE50();
      (*(v51 + 16))(v169, v184);
      v52 = *(v185 + 16);
      (v52)(v169 + v178[5], v3, v32);
      v53 = sub_1C4401940(v178[6]);
      v54(v53, v1);
      v43 = v44;
      sub_1C447CE84();
      v52();
      sub_1C4408374();
      sub_1C44CC80C(v45 + v55, v169 + v56, v57);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      v58 = (v169 + v178[8]);
      *v58 = v174;
      v58[1] = v48;
      v59 = (v169 + v178[10]);
      *v59 = v186;
      v59[1] = v187;
      *(v169 + v178[11]) = v60;
      v61 = v179;
      *(v169 + v178[12]) = v179;
      v62 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4401EC4(v62, v63, v64, MEMORY[0x1E69E7CC0]);
      v66 = v65;
      v47 = *(v65 + 16);
      v67 = *(v65 + 24);
      if (v47 >= v67 >> 1)
      {
        sub_1C44C9240(v67 > 1, v47 + 1, 1, v65);
        v66 = v142;
      }

      *(v66 + 16) = v47 + 1;
      sub_1C4426314();
      sub_1C4420AA0();
      sub_1C44D4624(v169, v68, v69);
      v70 = v185;
    }

    else
    {
      v66 = MEMORY[0x1E69E7CC0];
      v70 = v185;
      v61 = v179;
    }

    v71 = *(v45 + v44[10] + 8);
    if (v71)
    {
      sub_1C43FF988();
      if (v73)
      {
        v175 = v72;
        sub_1C4EFF0C8();
        sub_1C43FCE50();
        (*(v74 + 16))(v170, v184);
        v75 = *(v70 + 16);
        (v75)(v170 + v178[5], v181, v32);
        sub_1C442A554();
        v77(v170 + v76, v182);
        v43 = v190;
        sub_1C447CE84();
        v75();
        sub_1C4408374();
        sub_1C44CC80C(v45 + v78, v170 + v79, v80);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        sub_1C44D4800();
        *v81 = v175;
        v81[1] = v71;
        sub_1C44147FC(v82);
        *(v170 + v83) = v61;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v143 = sub_1C43FCEC0();
          sub_1C44C9240(v143, v144, v145, v66);
          v66 = v146;
        }

        v47 = *(v66 + 16);
        sub_1C44019A4();
        v70 = v185;
        if (v85)
        {
          v147 = sub_1C43FFD98(v84);
          sub_1C44C9240(v147, v148, v149, v66);
          v66 = v150;
        }

        *(v66 + 16) = v71;
        sub_1C4426314();
        sub_1C4420AA0();
        sub_1C44D4624(v170, v86, v87);
      }
    }

    v88 = *(v45 + v190[12] + 8);
    if (v88)
    {
      sub_1C43FF988();
      if (v90)
      {
        v176 = v89;
        sub_1C4EFF0C8();
        sub_1C43FCE50();
        (*(v91 + 16))(v171, v184);
        v92 = *(v70 + 16);
        v43 = v190;
        (v92)(v171 + v178[5], v181, v32);
        sub_1C442A554();
        v94(v171 + v93, v182);
        sub_1C447CE84();
        v92();
        sub_1C4408374();
        sub_1C44CC80C(v45 + v95, v171 + v96, v97);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        v98 = (v171 + v178[8]);
        *v98 = v176;
        v98[1] = v88;
        sub_1C441B1E0((v171 + v178[10]));
        *(v171 + v99) = v100;
        *(v171 + v178[12]) = v61;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v151 = sub_1C43FCEC0();
          sub_1C44C9240(v151, v152, v153, v66);
          v66 = v154;
        }

        v47 = *(v66 + 16);
        sub_1C44019A4();
        v70 = v185;
        if (v85)
        {
          v155 = sub_1C43FFD98(v101);
          sub_1C44C9240(v155, v156, v157, v66);
          v66 = v158;
        }

        *(v66 + 16) = v88;
        sub_1C4426314();
        sub_1C4420AA0();
        sub_1C44D4624(v171, v102, v103);
      }
    }

    v104 = *(v45 + v190[14] + 8);
    if (v104)
    {
      sub_1C44026DC();
      if (v105)
      {
        sub_1C4EFF0C8();
        sub_1C43FCE50();
        (*(v106 + 16))(v172, v184);
        v107 = *(v70 + 16);
        v43 = v32;
        (v107)(v172 + v178[5], v181, v32);
        sub_1C442A554();
        v109(v172 + v108, v182);
        sub_1C447CE84();
        v107();
        sub_1C4408374();
        sub_1C44CC80C(v45 + v110, v172 + v111, v112);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        v113 = (v172 + v178[8]);
        *v113 = v47;
        v113[1] = v104;
        sub_1C441B1E0((v172 + v178[10]));
        *(v172 + v114) = v115;
        *(v172 + v178[12]) = v179;
        v61 = v179;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v159 = sub_1C43FCEC0();
          sub_1C44C9240(v159, v160, v161, v66);
          v66 = v162;
        }

        sub_1C44019A4();
        v70 = v185;
        if (v85)
        {
          v163 = sub_1C43FFD98(v116);
          sub_1C44C9240(v163, v164, v165, v66);
          v66 = v166;
        }

        *(v66 + 16) = v104;
        sub_1C4426314();
        sub_1C4420AA0();
        sub_1C44D4624(v172, v117, v118);
      }
    }

    if (*(v66 + 16))
    {
      sub_1C4EFF0C8();
      sub_1C43FCE50();
      (*(v119 + 16))(v177, v184);
      v120 = sub_1C4401940(v178[5]);
      v121(v120, v181, v32);
      sub_1C442A554();
      v123(v177 + v122, v182);
      sub_1C4EFEBB8();
      sub_1C4EFD2F8();
      sub_1C440D158();
      sub_1C4408374();
      sub_1C44CC80C(v45 + v124, v177 + v125, v126);
      sub_1C4EF9AE8();
      sub_1C44D4800();
      *v127 = v43;
      v127[1] = v45 + v168;
      sub_1C44147FC(v128);
      *(v177 + v129) = v61;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v134 = sub_1C43FCEC0();
        sub_1C44C9240(v134, v135, v136, v66);
        v66 = v137;
      }

      v131 = *(v66 + 16);
      v130 = *(v66 + 24);
      if (v131 >= v130 >> 1)
      {
        v138 = sub_1C43FFD98(v130);
        sub_1C44C9240(v138, v139, v140, v66);
        v66 = v141;
      }

      (*(v188 + 8))(v182, v189);
      (*(v185 + 8))(v181, v32);
      *(v66 + 16) = v131 + 1;
      sub_1C4426314();
      sub_1C4420AA0();
      sub_1C44D4624(v177, v132, v133);
    }

    else
    {
      (*(v188 + 8))(v182, v189);
      (*(v70 + 8))(v181, v32);
    }
  }

  sub_1C4402144();
  sub_1C43FBC80();
}

uint64_t sub_1C4D77618(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461636964657270 && a2 == 0xE900000000000065;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C43797469746E65 && a2 == 0xEB00000000737361;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000015 && 0x80000001C4FC7DA0 == a2;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x776F6E4B6F736C61 && a2 == 0xEB0000000073416ELL;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000015 && 0x80000001C4FC7DC0 == a2;
            if (v10 || (sub_1C4F02938() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x614C6C616E676973 && a2 == 0xEB000000006C6562;
              if (v11 || (sub_1C4F02938() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000018 && 0x80000001C4FC7BC0 == a2;
                if (v12 || (sub_1C4F02938() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x696669746E656469 && a2 == 0xEE00657079547265;
                  if (v13 || (sub_1C4F02938() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000020 && 0x80000001C4FC7DE0 == a2;
                    if (v14 || (sub_1C4F02938() & 1) != 0)
                    {

                      return 9;
                    }

                    else if (a1 == 0xD000000000000016 && 0x80000001C4FC7E10 == a2)
                    {

                      return 10;
                    }

                    else
                    {
                      v16 = sub_1C4F02938();

                      if (v16)
                      {
                        return 10;
                      }

                      else
                      {
                        return 11;
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

unint64_t sub_1C4D77984(char a1)
{
  result = 0x7461636964657270;
  switch(a1)
  {
    case 1:
      result = 0x6C43797469746E65;
      break;
    case 2:
      result = 0x656372756F73;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0x776F6E4B6F736C61;
      break;
    case 5:
      result = 0xD000000000000015;
      break;
    case 6:
      result = 0x614C6C616E676973;
      break;
    case 7:
      result = 0xD000000000000018;
      break;
    case 8:
      result = 0x696669746E656469;
      break;
    case 9:
      result = 0xD000000000000020;
      break;
    case 10:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1C4D77AEC()
{
  sub_1C43FE96C();
  sub_1C44043C4();
  sub_1C456902C(&qword_1EC0C6D48, &qword_1C4F71110);
  sub_1C4403200();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C43FE61C();
  sub_1C43FD870();
  v3 = sub_1C4D85204();
  sub_1C440F61C(&type metadata for CNContactStructs.EntityAliasRelationshipType.CodingKeys, v4, v3);
  sub_1C441D6E4();
  sub_1C4EFEEF8();
  sub_1C4412A4C();
  sub_1C44CD358(v5, v6, MEMORY[0x1E69A9750]);
  sub_1C44D7E30();
  sub_1C43FF9BC();
  sub_1C4F02778();
  if (!v0)
  {
    v15 = type metadata accessor for CNContactStructs.EntityAliasRelationshipType(0);
    sub_1C440CE38();
    sub_1C4EFD548();
    sub_1C4432F18();
    sub_1C44CD358(v7, v8, MEMORY[0x1E69A92D0]);
    sub_1C44554E4();
    sub_1C43FEF68();
    sub_1C4F027E8();
    v9 = sub_1C4401FFC();
    type metadata accessor for Source(v9);
    sub_1C440EB5C();
    sub_1C44CD358(v10, v11, &protocol conformance descriptor for Source);
    sub_1C44554E4();
    sub_1C43FEF68();
    sub_1C4F027E8();
    sub_1C4401958();
    sub_1C43FF9BC();
    sub_1C4F027E8();
    sub_1C440C15C((v1 + *(v15 + 32)));
    sub_1C4F02738();
    sub_1C4D86E40();
    sub_1C43FF9BC();
    sub_1C4F027E8();
    sub_1C4459C78();
    sub_1C43FBF44();
    sub_1C4F02738();
    sub_1C4409434(*(v15 + 44));
    sub_1C43FBF44();
    sub_1C4F027E8();
    sub_1C4416974();
    sub_1C43FBF44();
    sub_1C4F02738();
    sub_1C4D86EF8();
    sub_1C43FF9BC();
    sub_1C4F027E8();
    sub_1C4D8719C();
    sub_1C4401774(v12);
    sub_1C43FBF44();
    sub_1C4F02738();
  }

  v13 = sub_1C440231C();
  v14(v13);
  sub_1C44103B4();
  sub_1C43FBC80();
}

void sub_1C4D77DA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1C43FE96C();
  v27 = v26;
  v78 = v28;
  sub_1C4EFEEF8();
  sub_1C4403200();
  v81 = v29;
  MEMORY[0x1EEE9AC00](v30);
  sub_1C43FBFDC();
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v31);
  sub_1C441816C();
  MEMORY[0x1EEE9AC00](v32);
  sub_1C44143D0();
  MEMORY[0x1EEE9AC00](v33);
  sub_1C43FD230();
  sub_1C4D86F60(v34);
  v35 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v35);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v36);
  sub_1C4416C44(v37, v75);
  v85 = sub_1C456902C(&qword_1EC0C6D38, &qword_1C4F71108);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v38);
  v40 = sub_1C4425644(v39, v76);
  v41 = type metadata accessor for CNContactStructs.EntityAliasRelationshipType(v40);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v42);
  v44 = sub_1C4410790(v43, v77);
  v84 = v23;
  sub_1C44A1CA0(v44, v45, v46);
  sub_1C4EFD278();
  v47 = v41[6];
  if (qword_1EDDFED28 != -1)
  {
    sub_1C44133AC();
    swift_once();
  }

  v48 = type metadata accessor for Source(0);
  sub_1C442B738(v48, &unk_1EDDFD088);
  sub_1C4408374();
  sub_1C44CC80C(v49, v25 + v47, v50);
  sub_1C4D87038();
  sub_1C4EFE3A8();
  v51 = (v25 + v41[8]);
  *v51 = 0;
  v51[1] = 0;
  v79 = v41[9];
  sub_1C4EFE4A8();
  v52 = (v25 + v41[10]);
  *v52 = 0;
  v52[1] = 0;
  v53 = v41[11];
  sub_1C4EFE658();
  v54 = (v25 + v41[12]);
  *v54 = 0;
  v54[1] = 0;
  v55 = v41[13];
  sub_1C4EFEA88();
  v56 = (v25 + v41[14]);
  *v56 = 0;
  v56[1] = 0;
  sub_1C4417F50(v27, v27[3]);
  sub_1C4D85204();
  sub_1C4F02BC8();
  if (!v24)
  {
    v86 = v51;
    sub_1C4412A4C();
    sub_1C44CD358(v57, v58, MEMORY[0x1E69A9778]);
    sub_1C4F02658();
    sub_1C444088C(v83, v25, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C441405C();
    sub_1C4423908();
    sub_1C4F026C8();
    v59 = *(v81 + 40);
    v59(v25 + v80, v82, v84);
    sub_1C4428F20();
    v60 = sub_1C4F02618();
    sub_1C44147E8(v60, v62, v86);
    sub_1C4423908();
    sub_1C4F026C8();
    v63 = sub_1C4401928(v79);
    (v59)(v63);
    sub_1C4402044();
    sub_1C4424818();
    v64 = sub_1C4F02618();
    sub_1C440EEEC(v64, v65, v52);
    sub_1C4423908();
    sub_1C4424818();
    sub_1C4F026C8();
    v66 = sub_1C4401928(v53);
    (v59)(v66);
    sub_1C4414078();
    sub_1C4424818();
    *v54 = sub_1C4F02618();
    v54[1] = v67;
    sub_1C43FE79C(9);
    sub_1C4423908();
    sub_1C4424818();
    sub_1C4F026C8();
    v68 = sub_1C4401928(v55);
    (v59)(v68);
    sub_1C4424818();
    v69 = sub_1C4F02618();
    v71 = v70;
    sub_1C441BF7C();
    v72(v87, v85);
    sub_1C440C668();
    *v73 = v69;
    v73[1] = v71;
    sub_1C4482D64();
    sub_1C44CC80C(v25, v78, v74);
  }

  sub_1C440962C(v27);
  sub_1C440CE6C();
  sub_1C44D474C(v25, v61);
  sub_1C43FBC80();
}

uint64_t sub_1C4D78308@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4D77618(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4D78330(uint64_t a1)
{
  v2 = sub_1C4D85204();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4D7836C(uint64_t a1)
{
  v2 = sub_1C4D85204();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C4D783F0()
{
  sub_1C43FE96C();
  v206 = v1;
  v4 = v0;
  v6 = v5;
  v212 = v8;
  v213 = v7;
  v214 = v9;
  type metadata accessor for EntityTriple(0);
  sub_1C43FCDF8();
  v209 = v10;
  v210 = v11;
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBFDC();
  v203 = v12;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBF38();
  v202 = v14;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C441816C();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C4402024();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FD230();
  v199 = v18;
  sub_1C43FBE44();
  v208 = sub_1C4EFD548();
  sub_1C43FCDF8();
  v205 = v19;
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FBCC4();
  v23 = v22 - v21;
  sub_1C4EFF8A8();
  sub_1C43FCDF8();
  v215 = v25;
  v216 = v24;
  MEMORY[0x1EEE9AC00](v24);
  sub_1C43FBCC4();
  sub_1C43FE61C();
  v26 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v26);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v27);
  sub_1C4413644();
  sub_1C4EFEEF8();
  sub_1C43FCDF8();
  v29 = v28;
  MEMORY[0x1EEE9AC00](v30);
  sub_1C43FBCC4();
  v33 = v32 - v31;
  v211 = *v6;
  v35 = v34;
  sub_1C445FFA8(v4, v3, &qword_1EC0B9A08, &unk_1C4F107B0);
  v36 = sub_1C440180C();
  sub_1C440175C(v36, v37, v35);
  if (v38)
  {
    sub_1C4420C3C(v3, &qword_1EC0B9A08, &unk_1C4F107B0);
    v39 = sub_1C45CF650();
    sub_1C43FFB2C(&type metadata for MappingError, v39);
    sub_1C43FE7A8(v40, 2);
  }

  else
  {
    v204 = v29;
    (*(v29 + 32))(v33, v3, v35);
    v41 = type metadata accessor for CNContactStructs.AgentAffiliationRelationshipType(0);
    v42 = *(v205 + 16);
    v198 = v41[5];
    v42(v23, v4 + v198, v208);
    v205 = v2;
    sub_1C4EFF838();
    v43 = MEMORY[0x1E69E7CC0];
    v217 = MEMORY[0x1E69E7CC0];
    sub_1C441406C();
    v207 = v33;
    v208 = v35;
    if (v23)
    {
      v46 = *v45;
      v47 = HIBYTE(v23) & 0xF;
      if ((v23 & 0x2000000000000000) == 0)
      {
        v47 = v46 & 0xFFFFFFFFFFFFLL;
      }

      if (v47)
      {
        v48 = v33;
        sub_1C4EFF0C8();
        sub_1C43FCE50();
        v50 = v199;
        (*(v49 + 16))(v199, v212);
        v51 = v209;
        v52 = *(v204 + 16);
        v53 = v48;
        v43 = v208;
        v52(v199 + v209[5], v53, v208);
        sub_1C4D86FF8();
        v55(v199 + v54, v205);
        v52(v199 + v209[7], v4 + v41[7], v208);
        sub_1C4408374();
        sub_1C44CC80C(v4 + v56, v199 + v57, v58);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        v59 = (v199 + v209[8]);
        *v59 = v46;
        v59[1] = v23;
        v60 = (v50 + v51[10]);
        v61 = v214;
        *v60 = v213;
        v60[1] = v61;
        *(v50 + v51[11]) = v62;
        *(v50 + v51[12]) = v211;
        v63 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4401EC4(v63, v64, v65, MEMORY[0x1E69E7CC0]);
        sub_1C4D87148();
        if (v67)
        {
          v169 = sub_1C43FFD98(v66);
          sub_1C44C9240(v169, v170, v171, v43);
          v43 = v172;
        }

        *(v43 + 16) = v23;
        sub_1C445EB4C();
        sub_1C4420AA0();
        v44 = sub_1C44D4624(v199, v68, v69);
        v217 = v43;
      }
    }

    v70 = v204;
    v71 = *(v4 + v41[10] + 8);
    if (v71)
    {
      sub_1C442EE64();
      if (v73)
      {
        v199 = v72;
        sub_1C4EFF0C8();
        sub_1C43FCE50();
        (*(v74 + 16))(v200, v212);
        v75 = sub_1C447CF74();
        (v204)(v75);
        sub_1C4D86FF8();
        v77(v200 + v76, v205);
        (v204)(v200 + v209[7], v4 + v41[9], v208);
        v78 = v214;
        sub_1C4408374();
        sub_1C44CC80C(v4 + v79, v200 + v80, v81);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        sub_1C44D3E4C();
        *v82 = v83;
        v82[1] = v78;
        sub_1C4D87088(v84);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v173 = sub_1C43FCEC0();
          sub_1C44C9240(v173, v174, v175, v43);
          v43 = v176;
        }

        sub_1C4424824();
        v70 = v204;
        if (v67)
        {
          v177 = sub_1C43FF640(v85);
          sub_1C44C9240(v177, v178, v179, v43);
          v43 = v180;
        }

        *(v43 + 16) = v71;
        sub_1C445EB4C();
        sub_1C4420AA0();
        v44 = sub_1C44D4624(v200, v86, v87);
        v217 = v43;
      }
    }

    v88 = *(v4 + v41[12] + 8);
    if (v88)
    {
      sub_1C442EE64();
      if (v90)
      {
        v199 = v89;
        sub_1C4EFF0C8();
        sub_1C43FCE50();
        (*(v91 + 16))(v201, v212);
        v92 = sub_1C447CF74();
        (v70)(v92);
        sub_1C4D86FF8();
        v94(v201 + v93, v205);
        (v70)(v201 + v209[7], v4 + v41[11], v208);
        v95 = v214;
        v200 = v41;
        sub_1C4408374();
        sub_1C44CC80C(v4 + v96, v201 + v97, v98);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        sub_1C44D3E4C();
        *v99 = v100;
        v99[1] = v95;
        sub_1C4D87088(v101);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v181 = sub_1C43FCEC0();
          sub_1C44C9240(v181, v182, v183, v43);
          v43 = v184;
        }

        sub_1C4424824();
        v70 = v204;
        v41 = v200;
        if (v67)
        {
          v185 = sub_1C43FF640(v102);
          sub_1C44C9240(v185, v186, v187, v43);
          v43 = v188;
        }

        *(v43 + 16) = v88;
        sub_1C445EB4C();
        sub_1C4420AA0();
        v44 = sub_1C44D4624(v201, v103, v104);
        v217 = v43;
      }
    }

    v105 = *(v4 + v41[14]);
    if (v105)
    {
      v106 = v205;
      if (*(v105 + 16))
      {
        MEMORY[0x1EEE9AC00](v44);
        v108 = v206;
        v107 = v207;
        *(&v197 - 8) = v212;
        *(&v197 - 7) = v107;
        *(&v197 - 6) = v106;
        *(&v197 - 5) = v4;
        v109 = v214;
        *(&v197 - 4) = v213;
        *(&v197 - 3) = v109;
        *(&v197 - 16) = v211;
        sub_1C45DA100(sub_1C4D83D20, (&v197 - 10), v110, v111, v112, v113, v114, v115, v197, v198);
        v206 = v108;
        sub_1C49D3614(v116);
      }
    }

    else
    {
      v106 = v205;
    }

    v117 = *(v4 + v41[16] + 8);
    if (v117)
    {
      sub_1C442EE64();
      if (v119)
      {
        v201 = v118;
        sub_1C4EFF0C8();
        sub_1C43FCE50();
        v121 = v41;
        v122 = v202;
        (*(v120 + 16))(v202, v212);
        v123 = v209;
        v124 = v106;
        v125 = *(v70 + 16);
        v126 = v208;
        v125(v122 + v209[5], v207, v208);
        (*(v215 + 16))(v122 + v123[6], v124, v216);
        v125(v122 + v123[7], v4 + *(v121 + 60), v126);
        v200 = v121;
        sub_1C4408374();
        sub_1C44CC80C(v4 + v127, v122 + v128, v129);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        v130 = (v122 + v123[8]);
        *v130 = v201;
        v130[1] = v117;
        v131 = (v122 + v123[10]);
        v132 = v214;
        *v131 = v213;
        v131[1] = v132;
        *(v122 + v123[11]) = v133;
        *(v122 + v123[12]) = v211;
        v134 = v217;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v189 = sub_1C43FCEC0();
          sub_1C44C9240(v189, v190, v191, v217);
          v134 = v192;
        }

        v136 = *(v134 + 16);
        v135 = *(v134 + 24);
        v70 = v204;
        v106 = v205;
        if (v136 >= v135 >> 1)
        {
          v193 = sub_1C43FFD98(v135);
          sub_1C44C9240(v193, v194, v195, v134);
          v134 = v196;
        }

        *(v134 + 16) = v136 + 1;
        sub_1C43FCC40();
        sub_1C4420AA0();
        sub_1C44D4624(v202, v137, v138);
        v217 = v134;
      }
    }

    v139 = v217;
    if (*(v217 + 16))
    {
      sub_1C4EFF0C8();
      sub_1C43FCE50();
      v141 = v203;
      (*(v140 + 16))(v203, v212);
      v142 = v209;
      v143 = sub_1C448879C(v209[5]);
      v144(v143, v207);
      v145 = sub_1C448879C(v142[6]);
      v146(v145, v106);
      sub_1C4EFEBB8();
      v147 = sub_1C4EFD2F8();
      v149 = v148;
      sub_1C4408374();
      sub_1C44CC80C(v4 + v150, v141 + v151, v152);
      sub_1C4EF9AE8();
      v153 = (v141 + v142[8]);
      *v153 = v147;
      v153[1] = v149;
      v154 = (v141 + v142[10]);
      v155 = v214;
      *v154 = v213;
      v154[1] = v155;
      *(v141 + v142[11]) = v156;
      *(v141 + v142[12]) = v211;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v161 = sub_1C43FCEC0();
        sub_1C44C9240(v161, v162, v163, v217);
        v139 = v164;
      }

      sub_1C440F0B4();
      v158 = v208;
      if (v67)
      {
        v165 = sub_1C43FFD98(v157);
        sub_1C44C9240(v165, v166, v167, v139);
        v139 = v168;
      }

      *(v139 + 16) = v147;
      sub_1C43FCC40();
      sub_1C4420AA0();
      sub_1C44D4624(v203, v159, v160);
    }

    else
    {
      v158 = v208;
    }

    (*(v215 + 8))(v106, v216);
    (*(v70 + 8))(v207, v158);
  }

  sub_1C43FBC80();
}

uint64_t sub_1C4D78F10@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>)
{
  v13 = a1[1];
  v27 = *a1;
  v14 = sub_1C4EFF0C8();
  (*(*(v14 - 8) + 16))(a9, a2, v14);
  v15 = type metadata accessor for EntityTriple(0);
  v16 = v15[5];
  v17 = sub_1C4EFEEF8();
  v18 = *(*(v17 - 8) + 16);
  v18(a9 + v16, a3, v17);
  v19 = v15[6];
  v20 = sub_1C4EFF8A8();
  (*(*(v20 - 8) + 16))(a9 + v19, a4, v20);
  v21 = type metadata accessor for CNContactStructs.AgentAffiliationRelationshipType(0);
  v18(a9 + v15[7], a5 + *(v21 + 52), v17);
  sub_1C44CC80C(a5 + *(v21 + 24), a9 + v15[9], type metadata accessor for Source);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EF9AE8();
  v22 = (a9 + v15[8]);
  *v22 = v27;
  v22[1] = v13;
  v23 = (a9 + v15[10]);
  *v23 = a6;
  v23[1] = a7;
  *(a9 + v15[11]) = v24;
  *(a9 + v15[12]) = a8;
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C4D790D8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461636964657270 && a2 == 0xE900000000000065;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C43797469746E65 && a2 == 0xEB00000000737361;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD00000000000001ALL && 0x80000001C4FC7E30 == a2;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000010 && 0x80000001C4FC7E50 == a2;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD00000000000001BLL && 0x80000001C4FC7E70 == a2;
            if (v10 || (sub_1C4F02938() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000011 && 0x80000001C4FC7E90 == a2;
              if (v11 || (sub_1C4F02938() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000026 && 0x80000001C4FC7EB0 == a2;
                if (v12 || (sub_1C4F02938() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD00000000000001CLL && 0x80000001C4FC7EE0 == a2;
                  if (v13 || (sub_1C4F02938() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000015 && 0x80000001C4FC7DA0 == a2;
                    if (v14 || (sub_1C4F02938() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x776F6E4B6F736C61 && a2 == 0xEB0000000073416ELL;
                      if (v15 || (sub_1C4F02938() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD000000000000014 && 0x80000001C4FC7F00 == a2;
                        if (v16 || (sub_1C4F02938() & 1) != 0)
                        {

                          return 11;
                        }

                        else if (a1 == 0x6E656469666E6F63 && a2 == 0xEA00000000006563)
                        {

                          return 12;
                        }

                        else
                        {
                          v18 = sub_1C4F02938();

                          if (v18)
                          {
                            return 12;
                          }

                          else
                          {
                            return 13;
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
}

unint64_t sub_1C4D794C8(char a1)
{
  result = 0x7461636964657270;
  switch(a1)
  {
    case 1:
      return 0x6C43797469746E65;
    case 2:
      return 0x656372756F73;
    case 3:
      v3 = 10;
      goto LABEL_11;
    case 4:
      return 0xD000000000000010;
    case 5:
      v3 = 11;
      goto LABEL_11;
    case 6:
      return 0xD000000000000011;
    case 7:
      return 0xD000000000000026;
    case 8:
      return 0xD00000000000001CLL;
    case 9:
      v3 = 5;
LABEL_11:
      result = v3 | 0xD000000000000010;
      break;
    case 10:
      result = 0x776F6E4B6F736C61;
      break;
    case 11:
      result = 0xD000000000000014;
      break;
    case 12:
      result = 0x6E656469666E6F63;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1C4D79668()
{
  sub_1C43FE96C();
  sub_1C44043C4();
  sub_1C456902C(&qword_1EC0C6D60, &qword_1C4F71120);
  sub_1C4403200();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C43FE61C();
  sub_1C43FD870();
  v2 = sub_1C4D85258();
  sub_1C440F61C(&type metadata for CNContactStructs.AgentAffiliationRelationshipType.CodingKeys, v3, v2);
  sub_1C4EFEEF8();
  sub_1C4412A4C();
  sub_1C44CD358(v4, v5, MEMORY[0x1E69A9750]);
  sub_1C43FF9BC();
  sub_1C4F02778();
  if (!v0)
  {
    v20 = type metadata accessor for CNContactStructs.AgentAffiliationRelationshipType(0);
    sub_1C443E4C4(1);
    sub_1C4EFD548();
    sub_1C4432F18();
    sub_1C44CD358(v6, v7, MEMORY[0x1E69A92D0]);
    sub_1C44554E4();
    sub_1C43FEF68();
    sub_1C4F027E8();
    v8 = sub_1C443E4C4(2);
    type metadata accessor for Source(v8);
    sub_1C440EB5C();
    sub_1C44CD358(v9, v10, &protocol conformance descriptor for Source);
    sub_1C44554E4();
    sub_1C43FEF68();
    sub_1C4F027E8();
    sub_1C4409434(v20[7]);
    sub_1C43FBF44();
    sub_1C4F027E8();
    sub_1C440200C();
    sub_1C44307E0(v11);
    sub_1C43FBF44();
    sub_1C4F02738();
    sub_1C4D86E40();
    sub_1C4409434(v12);
    sub_1C43FBF44();
    sub_1C4F027E8();
    sub_1C4459C78();
    sub_1C44307E0(v13);
    sub_1C43FBF44();
    sub_1C4F02738();
    sub_1C4409434(v20[11]);
    sub_1C43FBF44();
    sub_1C4F027E8();
    sub_1C4416974();
    sub_1C44307E0(v14);
    sub_1C43FBF44();
    sub_1C4F02738();
    sub_1C4D86EF8();
    sub_1C4409434(v15);
    sub_1C43FBF44();
    sub_1C4F027E8();
    sub_1C4D8719C();
    sub_1C442E728(v16);
    sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
    sub_1C43FC6D0(&qword_1EDDFA578, MEMORY[0x1E69E6160]);
    sub_1C440F0C4();
    sub_1C43FEF68();
    sub_1C4F02778();
    sub_1C4D87028();
    sub_1C4409434(v17);
    sub_1C43FBF44();
    sub_1C4F027E8();
    sub_1C4401774(v20[16]);
    sub_1C44307E0(12);
    sub_1C43FBF44();
    sub_1C4F02738();
  }

  v18 = sub_1C440231C();
  v19(v18);
  sub_1C44103B4();
  sub_1C43FBC80();
}

void sub_1C4D79970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v23;
  a20 = v24;
  v26 = v25;
  v84 = v27;
  sub_1C4EFEEF8();
  sub_1C4403200();
  v91 = v28;
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FBFDC();
  v85 = v30;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v31);
  sub_1C4461E00(v32, v33, v34, v35, v36, v37, v38, v39, v81);
  MEMORY[0x1EEE9AC00](v40);
  sub_1C441816C();
  MEMORY[0x1EEE9AC00](v41);
  sub_1C44143D0();
  MEMORY[0x1EEE9AC00](v42);
  sub_1C43FD230();
  sub_1C4D86F60(v43);
  v44 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v44);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v45);
  sub_1C4416C44(v46, v82);
  v94 = sub_1C456902C(&qword_1EC0C6D50, &qword_1C4F71118);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v47);
  v49 = sub_1C4425644(v48, v83);
  v50 = type metadata accessor for CNContactStructs.AgentAffiliationRelationshipType(v49);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v51);
  sub_1C43FBCC4();
  sub_1C4422BD8();
  sub_1C43FCF64();
  v95 = v20;
  sub_1C440BAA8(v52, v53, v54, v20);
  sub_1C4EFD318();
  v55 = v50[6];
  if (qword_1EDDFED28 != -1)
  {
    sub_1C44133AC();
    swift_once();
  }

  v56 = type metadata accessor for Source(0);
  sub_1C442B738(v56, &unk_1EDDFD088);
  sub_1C4408374();
  sub_1C44CC80C(v57, v22 + v55, v58);
  v90 = v50[7];
  sub_1C4EFE808();
  v59 = (v22 + v50[8]);
  *v59 = 0;
  v59[1] = 0;
  sub_1C4EFE878();
  v60 = (v22 + v50[10]);
  *v60 = 0;
  v60[1] = 0;
  v88 = v50[11];
  sub_1C4EFEB48();
  v61 = (v22 + v50[12]);
  *v61 = 0;
  v61[1] = 0;
  v86 = v50[13];
  sub_1C4EFE3A8();
  v62 = v50[14];
  *(v22 + v62) = 0;
  sub_1C4EFE2A8();
  v97 = v22;
  v63 = (v22 + v50[16]);
  *v63 = 0;
  v63[1] = 0;
  v96 = v26;
  sub_1C4417F50(v26, v26[3]);
  sub_1C4D85258();
  sub_1C4D86FE8();
  sub_1C4F02BC8();
  if (v21)
  {
    sub_1C440962C(v26);
  }

  else
  {
    LOBYTE(a10) = 0;
    sub_1C4412A4C();
    sub_1C44CD358(v64, v65, MEMORY[0x1E69A9778]);
    sub_1C4466E08();
    sub_1C4F02658();
    sub_1C444088C(v93, v97, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C43FE79C(3);
    sub_1C4466E08();
    sub_1C4F026C8();
    v67 = *(v91 + 40);
    v67(v97 + v90, v92, v95);
    sub_1C4402038(4);
    *v59 = sub_1C4F02618();
    v59[1] = v68;
    sub_1C43FE79C(5);
    sub_1C44579A8();
    sub_1C4F026C8();
    v69 = sub_1C4D8715C();
    (v67)(v69);
    sub_1C4402038(6);
    sub_1C4D86FA8();
    *v60 = sub_1C4F02618();
    v60[1] = v70;
    sub_1C43FE79C(7);
    sub_1C44579A8();
    sub_1C4D86FA8();
    sub_1C4F026C8();
    v71 = sub_1C447565C(v88);
    v67(v71, v89, v95);
    sub_1C4402038(8);
    sub_1C4D86FA8();
    v72 = sub_1C4F02618();
    sub_1C443E4B8(v72, v73, &a18);
    sub_1C43FE79C(9);
    sub_1C44579A8();
    sub_1C4D86FA8();
    sub_1C4F026C8();
    v74 = sub_1C447565C(v86);
    v67(v74, v87, v95);
    sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
    sub_1C440EE48(&qword_1EDDFEA58, MEMORY[0x1E69E6190]);
    sub_1C44A83E0();
    sub_1C4D86FA8();
    sub_1C4F02658();
    *(v97 + v62) = a10;
    sub_1C43FE79C(11);
    sub_1C4D86FA8();
    sub_1C4F026C8();
    v75 = sub_1C4456A14(&a16);
    v67(v75, v85, v95);
    sub_1C4402038(12);
    v76 = sub_1C4F02618();
    v78 = v77;
    sub_1C441BF7C();
    v79(v98, v94);
    *v63 = v76;
    v63[1] = v78;
    sub_1C44805A4();
    sub_1C44CC80C(v97, v84, v80);
    sub_1C440962C(v96);
  }

  sub_1C441D4E4();
  sub_1C44D474C(v97, v66);
  sub_1C4402144();
  sub_1C43FBC80();
}

uint64_t sub_1C4D7A014@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4D790D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4D7A03C(uint64_t a1)
{
  v2 = sub_1C4D85258();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4D7A078(uint64_t a1)
{
  v2 = sub_1C4D85258();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C4D7A0FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v25;
  a20 = v26;
  v417 = v20;
  v28 = v27;
  v412 = v30;
  v413 = v29;
  v414 = v31;
  type metadata accessor for EntityTriple(0);
  sub_1C43FCDF8();
  v408 = v32;
  v409 = v33;
  MEMORY[0x1EEE9AC00](v32);
  sub_1C43FBFDC();
  v403 = v34;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v35);
  sub_1C4402024();
  MEMORY[0x1EEE9AC00](v36);
  sub_1C4461E00(v37, v38, v39, v40, v41, v42, v43, v44, v390);
  MEMORY[0x1EEE9AC00](v45);
  sub_1C43FBF38();
  v400 = v46;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v47);
  sub_1C44055D8();
  MEMORY[0x1EEE9AC00](v48);
  sub_1C43FBF38();
  v398 = v49;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v50);
  sub_1C43FBF38();
  v397 = v51;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v52);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v53);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v54);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v55);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v56);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v57);
  sub_1C43FD230();
  sub_1C43FD2C8(v58);
  v411 = sub_1C4EFD548();
  sub_1C43FCDF8();
  v60 = v59;
  MEMORY[0x1EEE9AC00](v61);
  sub_1C43FBCC4();
  sub_1C44058BC();
  sub_1C4EFF8A8();
  sub_1C43FCDF8();
  v415 = v63;
  v416 = v62;
  MEMORY[0x1EEE9AC00](v62);
  sub_1C43FBCC4();
  v66 = v65 - v64;
  v67 = sub_1C4409F48();
  v69 = sub_1C456902C(v67, v68);
  sub_1C43FBD18(v69);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v70);
  sub_1C4422BD8();
  sub_1C4EFEEF8();
  sub_1C43FCDF8();
  v72 = v71;
  MEMORY[0x1EEE9AC00](v73);
  sub_1C43FBCC4();
  sub_1C43FE61C();
  v405 = *v28;
  v75 = v74;
  sub_1C445FFA8(v417, v24, &qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C440175C(v24, 1, v75);
  if (v76)
  {
    sub_1C4420C3C(v24, &qword_1EC0B9A08, &unk_1C4F107B0);
    v77 = sub_1C45CF650();
    v78 = sub_1C43FFB2C(&type metadata for MappingError, v77);
    sub_1C44559D0(v78, v79);
  }

  else
  {
    v80 = *(v72 + 32);
    v410 = v22;
    v407 = v75;
    v80(v22, v24, v75);
    v81 = type metadata accessor for CNContactStructs.AddressRelationshipType(0);
    v83 = *(v60 + 16);
    v82 = (v60 + 16);
    v391 = v81[5];
    v83(v23, v417 + v391, v411);
    v411 = v66;
    sub_1C4EFF838();
    v84 = MEMORY[0x1E69E7CC0];
    a10 = MEMORY[0x1E69E7CC0];
    v85 = *(v417 + v81[8] + 8);
    v86 = v417;
    v87 = v72;
    v406 = v72;
    if (v85)
    {
      sub_1C440C8B8();
      if (v88)
      {
        sub_1C4EFF0C8();
        sub_1C43FCE50();
        v89 = sub_1C445BB90();
        v90(v89, v412);
        v91 = *(v72 + 16);
        sub_1C4401988();
        v91();
        sub_1C448E15C();
        v93 = sub_1C4D870B8(v92);
        v94(v93);
        v95 = sub_1C442F81C();
        (v91)(v95);
        v86 = v417;
        sub_1C4408374();
        sub_1C4D87070(v96, v97);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        sub_1C44501E0(v98);
        *(v72 + v99) = v405;
        v100 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4401EC4(v100, v101, v102, MEMORY[0x1E69E7CC0]);
        v84 = v103;
        v82 = *(v103 + 16);
        sub_1C4424824();
        if (v105)
        {
          v298 = sub_1C43FF640(v104);
          sub_1C44C9240(v298, v299, v300, v84);
          v84 = v301;
        }

        v84[2] = v85;
        sub_1C4425620();
        sub_1C447E804();
        sub_1C4420AA0();
        sub_1C44D4624(v72, v106, v107);
        a10 = v84;
        v87 = v406;
      }
    }

    sub_1C44F0990();
    if (v85)
    {
      sub_1C440C8B8();
      if (v108)
      {
        sub_1C4EFF0C8();
        sub_1C43FCE50();
        v109 = sub_1C445BB90();
        v110(v109, v412);
        sub_1C442F510();
        sub_1C4401988();
        v86();
        sub_1C448E15C();
        v112 = sub_1C4D870B8(v111);
        v113(v112);
        v114 = sub_1C442F81C();
        (v86)(v114);
        v86 = v417;
        sub_1C4408374();
        sub_1C4D87070(v115, v116);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        sub_1C44501E0(v117);
        *(v72 + v118) = v405;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v302 = sub_1C43FCEC0();
          sub_1C44C9240(v302, v303, v304, v84);
          v84 = v305;
        }

        v82 = v84[2];
        sub_1C4424824();
        v87 = v406;
        if (v105)
        {
          v306 = sub_1C43FF640(v119);
          sub_1C44C9240(v306, v307, v308, v84);
          v84 = v309;
        }

        v84[2] = v85;
        sub_1C4425620();
        sub_1C447E804();
        sub_1C4420AA0();
        sub_1C44D4624(v392, v120, v121);
        a10 = v84;
      }
    }

    sub_1C44F0990();
    if (v85)
    {
      sub_1C440C8B8();
      if (v122)
      {
        sub_1C4EFF0C8();
        sub_1C43FCE50();
        v123 = sub_1C445BB90();
        v124(v123, v412);
        sub_1C442F510();
        sub_1C4401988();
        v86();
        sub_1C448E15C();
        v126 = sub_1C4D870B8(v125);
        v127(v126);
        v128 = sub_1C442F81C();
        (v86)(v128);
        v86 = v417;
        sub_1C4408374();
        sub_1C4D87070(v129, v130);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        sub_1C44501E0(v131);
        *(v72 + v132) = v405;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v310 = sub_1C43FCEC0();
          sub_1C44C9240(v310, v311, v312, v84);
          v84 = v313;
        }

        v82 = v84[2];
        sub_1C4424824();
        v87 = v406;
        if (v105)
        {
          v314 = sub_1C43FF640(v133);
          sub_1C44C9240(v314, v315, v316, v84);
          v84 = v317;
        }

        v84[2] = v85;
        sub_1C4425620();
        sub_1C447E804();
        sub_1C4420AA0();
        sub_1C44D4624(v393, v134, v135);
        a10 = v84;
      }
    }

    sub_1C44F0990();
    if (v85)
    {
      sub_1C440C8B8();
      if (v137)
      {
        sub_1C4EFF0C8();
        sub_1C43FCE50();
        v138 = sub_1C445BB90();
        v139(v138, v412);
        sub_1C442F510();
        sub_1C4401988();
        v86();
        sub_1C448E15C();
        v141 = sub_1C4D870B8(v140);
        v142(v141);
        v143 = sub_1C442F81C();
        (v86)(v143);
        v86 = v417;
        sub_1C4408374();
        sub_1C4D87070(v144, v145);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        sub_1C44501E0(v146);
        *(v72 + v147) = v405;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v318 = sub_1C43FCEC0();
          sub_1C44C9240(v318, v319, v320, v84);
          v84 = v321;
        }

        v82 = v84[2];
        sub_1C4424824();
        v87 = v406;
        if (v105)
        {
          v322 = sub_1C43FF640(v148);
          sub_1C44C9240(v322, v323, v324, v84);
          v84 = v325;
        }

        v84[2] = v85;
        sub_1C4425620();
        sub_1C447E804();
        sub_1C4420AA0();
        v136 = sub_1C44D4624(v394, v149, v150);
        a10 = v84;
      }
    }

    v151 = *(v86 + v81[16]);
    if (v151)
    {
      v152 = v405;
      if (*(v151 + 16))
      {
        v85 = &v390;
        MEMORY[0x1EEE9AC00](v136);
        v154 = v410;
        v153 = v411;
        *(&v390 - 8) = v412;
        *(&v390 - 7) = v154;
        *(&v390 - 6) = v153;
        *(&v390 - 5) = v86;
        v155 = v414;
        *(&v390 - 4) = v413;
        *(&v390 - 3) = v155;
        *(&v390 - 16) = v152;
        sub_1C45DA100(sub_1C4D83D4C, (&v390 - 10), v156, v157, v158, v159, v160, v161, v390, v391);
        v404 = v21;
        v82 = &a10;
        sub_1C49D3614(v162);
      }
    }

    else
    {
      v152 = v405;
    }

    sub_1C44F0990();
    if (v85)
    {
      sub_1C440C8B8();
      if (v163)
      {
        sub_1C4EFF0C8();
        sub_1C43FCE50();
        v164 = sub_1C447E284();
        v165(v164);
        v166 = sub_1C441F1B4();
        (v86)(v166);
        v167 = sub_1C446C1BC();
        v168(v167);
        v169 = sub_1C44348A0();
        (v86)(v169);
        v86 = v417;
        sub_1C4408374();
        sub_1C4D86FD0(v170, v171);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        sub_1C4405598(v172);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v326 = sub_1C43FCEC0();
          sub_1C44C9240(v326, v327, v328, v85);
          v85 = v329;
        }

        sub_1C440F0B4();
        v87 = v406;
        if (v105)
        {
          v330 = sub_1C43FFD98(v173);
          sub_1C44C9240(v330, v331, v332, v85);
          v85 = v333;
        }

        v85[2] = v82;
        sub_1C43FCC40();
        sub_1C4420AA0();
        sub_1C44D4624(v395, v174, v175);
        a10 = v85;
      }
    }

    sub_1C44F0990();
    if (v85)
    {
      sub_1C440C8B8();
      if (v176)
      {
        sub_1C4EFF0C8();
        sub_1C43FCE50();
        v177 = sub_1C447E284();
        v178(v177);
        v179 = sub_1C441F1B4();
        (v86)(v179);
        v180 = sub_1C446C1BC();
        v181(v180);
        v182 = sub_1C44348A0();
        (v86)(v182);
        v86 = v417;
        sub_1C4408374();
        sub_1C4D86FD0(v183, v184);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        sub_1C4405598(v185);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v334 = sub_1C43FCEC0();
          sub_1C44C9240(v334, v335, v336, v85);
          v85 = v337;
        }

        sub_1C440F0B4();
        v87 = v406;
        if (v105)
        {
          v338 = sub_1C43FFD98(v186);
          sub_1C44C9240(v338, v339, v340, v85);
          v85 = v341;
        }

        v85[2] = v82;
        sub_1C43FCC40();
        sub_1C4420AA0();
        sub_1C44D4624(v396, v187, v188);
        a10 = v85;
      }
    }

    sub_1C44F0990();
    if (v85)
    {
      sub_1C440C8B8();
      if (v189)
      {
        sub_1C4EFF0C8();
        sub_1C43FCE50();
        v190 = sub_1C447E284();
        v191(v190);
        v192 = sub_1C441F1B4();
        (v86)(v192);
        v193 = sub_1C446C1BC();
        v194(v193);
        v195 = sub_1C44348A0();
        (v86)(v195);
        v86 = v417;
        sub_1C4408374();
        sub_1C4D86FD0(v196, v197);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        sub_1C4405598(v198);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v342 = sub_1C43FCEC0();
          sub_1C44C9240(v342, v343, v344, v85);
          v85 = v345;
        }

        sub_1C440F0B4();
        v87 = v406;
        if (v105)
        {
          v346 = sub_1C43FFD98(v199);
          sub_1C44C9240(v346, v347, v348, v85);
          v85 = v349;
        }

        v85[2] = v82;
        sub_1C43FCC40();
        sub_1C4420AA0();
        sub_1C44D4624(v397, v200, v201);
        a10 = v85;
      }
    }

    sub_1C44F0990();
    if (v85)
    {
      sub_1C440C8B8();
      if (v202)
      {
        sub_1C4EFF0C8();
        sub_1C43FCE50();
        v203 = sub_1C447E284();
        v204(v203);
        v205 = sub_1C441F1B4();
        (v86)(v205);
        v206 = sub_1C446C1BC();
        v207(v206);
        v208 = sub_1C44348A0();
        (v86)(v208);
        v86 = v417;
        sub_1C4408374();
        sub_1C4D86FD0(v209, v210);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        sub_1C4405598(v211);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v350 = sub_1C43FCEC0();
          sub_1C44C9240(v350, v351, v352, v85);
          v85 = v353;
        }

        sub_1C440F0B4();
        v87 = v406;
        if (v105)
        {
          v354 = sub_1C43FFD98(v212);
          sub_1C44C9240(v354, v355, v356, v85);
          v85 = v357;
        }

        v85[2] = v82;
        sub_1C43FCC40();
        sub_1C4420AA0();
        sub_1C44D4624(v398, v213, v214);
        a10 = v85;
      }
    }

    sub_1C44F0990();
    if (v85)
    {
      sub_1C440C8B8();
      if (v215)
      {
        sub_1C4EFF0C8();
        sub_1C43FCE50();
        v216 = sub_1C447E284();
        v217(v216);
        v218 = sub_1C441F1B4();
        (v86)(v218);
        v219 = sub_1C446C1BC();
        v220(v219);
        v221 = sub_1C44348A0();
        (v86)(v221);
        v86 = v417;
        sub_1C4408374();
        sub_1C4D86FD0(v222, v223);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        sub_1C4405598(v224);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v358 = sub_1C43FCEC0();
          sub_1C44C9240(v358, v359, v360, v85);
          v85 = v361;
        }

        sub_1C440F0B4();
        v87 = v406;
        if (v105)
        {
          v362 = sub_1C43FFD98(v225);
          sub_1C44C9240(v362, v363, v364, v85);
          v85 = v365;
        }

        v85[2] = v82;
        sub_1C43FCC40();
        sub_1C4420AA0();
        sub_1C44D4624(v399, v226, v227);
        a10 = v85;
      }
    }

    sub_1C44F0990();
    if (v85)
    {
      sub_1C440C8B8();
      if (v228)
      {
        sub_1C4EFF0C8();
        sub_1C43FCE50();
        v229 = sub_1C447E284();
        v230(v229);
        v231 = sub_1C441F1B4();
        (v86)(v231);
        v232 = sub_1C446C1BC();
        v233(v232);
        v234 = sub_1C44348A0();
        (v86)(v234);
        v86 = v417;
        sub_1C4408374();
        sub_1C4D86FD0(v235, v236);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        sub_1C4405598(v237);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v366 = sub_1C43FCEC0();
          sub_1C44C9240(v366, v367, v368, v85);
          v85 = v369;
        }

        sub_1C440F0B4();
        v87 = v406;
        if (v105)
        {
          v370 = sub_1C43FFD98(v238);
          sub_1C44C9240(v370, v371, v372, v85);
          v85 = v373;
        }

        v85[2] = v82;
        sub_1C43FCC40();
        sub_1C4420AA0();
        sub_1C44D4624(v400, v239, v240);
        a10 = v85;
      }
    }

    sub_1C44F0990();
    if (v85)
    {
      sub_1C440C8B8();
      if (v241)
      {
        sub_1C4EFF0C8();
        sub_1C43FCE50();
        v242 = sub_1C447E284();
        v243(v242);
        v244 = sub_1C441F1B4();
        (v86)(v244);
        v245 = sub_1C446C1BC();
        v246(v245);
        v247 = sub_1C44348A0();
        (v86)(v247);
        v86 = v417;
        sub_1C4408374();
        sub_1C4D86FD0(v248, v249);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        sub_1C4405598(v250);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v374 = sub_1C43FCEC0();
          sub_1C44C9240(v374, v375, v376, v85);
          v85 = v377;
        }

        sub_1C440F0B4();
        v87 = v406;
        if (v105)
        {
          v378 = sub_1C43FFD98(v251);
          sub_1C44C9240(v378, v379, v380, v85);
          v85 = v381;
        }

        v85[2] = v82;
        sub_1C43FCC40();
        sub_1C4420AA0();
        sub_1C44D4624(v401, v252, v253);
        a10 = v85;
      }
    }

    sub_1C44F0990();
    if (v85)
    {
      sub_1C440C8B8();
      if (v254)
      {
        sub_1C4EFF0C8();
        sub_1C43FCE50();
        v256 = v402;
        (*(v255 + 16))(v402, v412);
        sub_1C442F510();
        sub_1C4401988();
        v86();
        sub_1C448E15C();
        v258 = sub_1C4D870B8(v257);
        v259(v258);
        v260 = sub_1C442F81C();
        (v86)(v260);
        v86 = v417;
        sub_1C4408374();
        sub_1C4D87070(v261, v262);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        sub_1C44501E0(v263);
        *(v256 + v264) = v405;
        v152 = v405;
        v85 = a10;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v382 = sub_1C43FCEC0();
          sub_1C44C9240(v382, v383, v384, v85);
          v85 = v385;
        }

        sub_1C440F0B4();
        v87 = v406;
        if (v105)
        {
          v386 = sub_1C43FFD98(v265);
          sub_1C44C9240(v386, v387, v388, v85);
          v85 = v389;
        }

        v85[2] = v82;
        sub_1C43FCC40();
        sub_1C4420AA0();
        sub_1C44D4624(v402, v266, v267);
        a10 = v85;
      }
    }

    v268 = a10;
    if (a10[2])
    {
      sub_1C4EFF0C8();
      sub_1C43FCE50();
      v270 = v152;
      v271 = v86;
      v272 = v403;
      (*(v269 + 16))(v403, v412);
      v273 = v408;
      v274 = sub_1C448879C(v408[5]);
      v275(v274, v410);
      sub_1C448E15C();
      v277(v272 + v276, v411);
      sub_1C4EFEBB8();
      v278 = (v271 + v391);
      sub_1C4EFD2F8();
      sub_1C440D158();
      sub_1C4408374();
      sub_1C44CC80C(v271 + v279, v272 + v280, v281);
      sub_1C4EF9AE8();
      v282 = (v272 + v273[8]);
      *v282 = v85;
      v282[1] = v278;
      v283 = (v272 + v273[10]);
      v284 = v414;
      *v283 = v413;
      v283[1] = v284;
      *(v272 + v273[11]) = v285;
      *(v272 + v273[12]) = v270;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v290 = sub_1C43FCEC0();
        sub_1C44C9240(v290, v291, v292, v268);
        v268 = v293;
      }

      sub_1C4424824();
      if (v105)
      {
        v294 = sub_1C43FF640(v286);
        sub_1C44C9240(v294, v295, v296, v268);
        v268 = v297;
      }

      v268[2] = v85;
      sub_1C4425620();
      sub_1C4420AA0();
      sub_1C44D4624(v403, v287, v288);
    }

    v289 = v410;
    (*(v415 + 8))(v411, v416);
    (*(v87 + 8))(v289, v407);
  }

  sub_1C4402144();
  sub_1C43FBC80();
}

uint64_t sub_1C4D7B410@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>)
{
  v13 = a1[1];
  v27 = *a1;
  v14 = sub_1C4EFF0C8();
  (*(*(v14 - 8) + 16))(a9, a2, v14);
  v15 = type metadata accessor for EntityTriple(0);
  v16 = v15[5];
  v17 = sub_1C4EFEEF8();
  v18 = *(*(v17 - 8) + 16);
  v18(a9 + v16, a3, v17);
  v19 = v15[6];
  v20 = sub_1C4EFF8A8();
  (*(*(v20 - 8) + 16))(a9 + v19, a4, v20);
  v21 = type metadata accessor for CNContactStructs.AddressRelationshipType(0);
  v18(a9 + v15[7], a5 + *(v21 + 60), v17);
  sub_1C44CC80C(a5 + *(v21 + 24), a9 + v15[9], type metadata accessor for Source);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EF9AE8();
  v22 = (a9 + v15[8]);
  *v22 = v27;
  v22[1] = v13;
  v23 = (a9 + v15[10]);
  *v23 = a6;
  v23[1] = a7;
  *(a9 + v15[11]) = v24;
  *(a9 + v15[12]) = a8;
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C4D7B5D8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461636964657270 && a2 == 0xE900000000000065;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C43797469746E65 && a2 == 0xEB00000000737361;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000016 && 0x80000001C4FC7F20 == a2;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6464416C69616D65 && a2 == 0xEC00000073736572;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000016 && 0x80000001C4FC7F40 == a2;
            if (v10 || (sub_1C4F02938() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x4C746361746E6F63 && a2 == 0xEC0000006C656261;
              if (v11 || (sub_1C4F02938() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000015 && 0x80000001C4FC7F60 == a2;
                if (v12 || (sub_1C4F02938() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6D754E656E6F6870 && a2 == 0xEB00000000726562;
                  if (v13 || (sub_1C4F02938() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000014 && 0x80000001C4FC7F80 == a2;
                    if (v14 || (sub_1C4F02938() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x69726F7661467369 && a2 == 0xEA00000000006574;
                      if (v15 || (sub_1C4F02938() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD000000000000023 && 0x80000001C4FC7FA0 == a2;
                        if (v16 || (sub_1C4F02938() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD000000000000019 && 0x80000001C4FC7FD0 == a2;
                          if (v17 || (sub_1C4F02938() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0xD000000000000016 && 0x80000001C4FC7FF0 == a2;
                            if (v18 || (sub_1C4F02938() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x6867756F726F6874 && a2 == 0xEC00000065726166;
                              if (v19 || (sub_1C4F02938() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0xD000000000000015 && 0x80000001C4FC8010 == a2;
                                if (v20 || (sub_1C4F02938() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0x6C61636F4C627573 && a2 == 0xEB00000000797469;
                                  if (v21 || (sub_1C4F02938() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0xD000000000000012 && 0x80000001C4FC8030 == a2;
                                    if (v22 || (sub_1C4F02938() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0x7974696C61636F6CLL && a2 == 0xE800000000000000;
                                      if (v23 || (sub_1C4F02938() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v24 = a1 == 0xD00000000000001FLL && 0x80000001C4FC8050 == a2;
                                        if (v24 || (sub_1C4F02938() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          v25 = a1 == 0xD000000000000015 && 0x80000001C4FB0B70 == a2;
                                          if (v25 || (sub_1C4F02938() & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else
                                          {
                                            v26 = a1 == 0xD00000000000001CLL && 0x80000001C4FC8070 == a2;
                                            if (v26 || (sub_1C4F02938() & 1) != 0)
                                            {

                                              return 21;
                                            }

                                            else
                                            {
                                              v27 = a1 == 0xD000000000000012 && 0x80000001C4FB0B50 == a2;
                                              if (v27 || (sub_1C4F02938() & 1) != 0)
                                              {

                                                return 22;
                                              }

                                              else
                                              {
                                                v28 = a1 == 0xD000000000000014 && 0x80000001C4FC8090 == a2;
                                                if (v28 || (sub_1C4F02938() & 1) != 0)
                                                {

                                                  return 23;
                                                }

                                                else
                                                {
                                                  v29 = a1 == 0x6F436C6174736F70 && a2 == 0xEA00000000006564;
                                                  if (v29 || (sub_1C4F02938() & 1) != 0)
                                                  {

                                                    return 24;
                                                  }

                                                  else
                                                  {
                                                    v30 = a1 == 0xD000000000000011 && 0x80000001C4FC80B0 == a2;
                                                    if (v30 || (sub_1C4F02938() & 1) != 0)
                                                    {

                                                      return 25;
                                                    }

                                                    else
                                                    {
                                                      v31 = a1 == 0x7972746E756F63 && a2 == 0xE700000000000000;
                                                      if (v31 || (sub_1C4F02938() & 1) != 0)
                                                      {

                                                        return 26;
                                                      }

                                                      else
                                                      {
                                                        v32 = a1 == 0xD000000000000018 && 0x80000001C4FC80D0 == a2;
                                                        if (v32 || (sub_1C4F02938() & 1) != 0)
                                                        {

                                                          return 27;
                                                        }

                                                        else if (a1 == 0x746E756F436F7369 && a2 == 0xEE0065646F437972)
                                                        {

                                                          return 28;
                                                        }

                                                        else
                                                        {
                                                          v34 = sub_1C4F02938();

                                                          if (v34)
                                                          {
                                                            return 28;
                                                          }

                                                          else
                                                          {
                                                            return 29;
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
      }
    }
  }
}

unint64_t sub_1C4D7BE68(char a1)
{
  result = 0x7461636964657270;
  switch(a1)
  {
    case 1:
      result = 0x6C43797469746E65;
      break;
    case 2:
      result = 0x656372756F73;
      break;
    case 3:
    case 5:
    case 13:
      result = 0xD000000000000016;
      break;
    case 4:
      result = 0x6464416C69616D65;
      break;
    case 6:
      result = 0x4C746361746E6F63;
      break;
    case 7:
      result = 0xD000000000000015;
      break;
    case 8:
      result = 0x6D754E656E6F6870;
      break;
    case 9:
    case 23:
      result = 0xD000000000000014;
      break;
    case 10:
      result = 0x69726F7661467369;
      break;
    case 11:
      result = 0xD000000000000023;
      break;
    case 12:
      result = 0xD000000000000019;
      break;
    case 14:
      result = 0x6867756F726F6874;
      break;
    case 15:
      result = 0xD000000000000015;
      break;
    case 16:
      result = 0x6C61636F4C627573;
      break;
    case 17:
    case 22:
      result = 0xD000000000000012;
      break;
    case 18:
      result = 0x7974696C61636F6CLL;
      break;
    case 19:
      result = 0xD00000000000001FLL;
      break;
    case 20:
      result = 0xD000000000000015;
      break;
    case 21:
      result = 0xD00000000000001CLL;
      break;
    case 24:
      result = 0x6F436C6174736F70;
      break;
    case 25:
      result = 0xD000000000000011;
      break;
    case 26:
      result = 0x7972746E756F63;
      break;
    case 27:
      result = 0xD000000000000018;
      break;
    case 28:
      result = 0x746E756F436F7369;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1C4D7C1A4()
{
  sub_1C43FE96C();
  sub_1C456902C(&qword_1EC0C6D78, &qword_1C4F71130);
  sub_1C4403200();
  v4 = v3;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C44058BC();
  sub_1C43FD870();
  v6 = sub_1C4D852AC();
  sub_1C444B100(&type metadata for CNContactStructs.AddressRelationshipType.CodingKeys, v7, v6);
  sub_1C4EFEEF8();
  sub_1C4412A4C();
  sub_1C44CD358(v8, v9, MEMORY[0x1E69A9750]);
  sub_1C441BD40();
  sub_1C4F02778();
  if (!v1)
  {
    v22 = type metadata accessor for CNContactStructs.AddressRelationshipType(0);
    sub_1C443E4C4(1);
    sub_1C4EFD548();
    sub_1C4432F18();
    sub_1C44CD358(v10, v11, MEMORY[0x1E69A92D0]);
    sub_1C443F020();
    sub_1C441BD40();
    sub_1C4F027E8();
    v12 = sub_1C443E4C4(2);
    type metadata accessor for Source(v12);
    sub_1C440EB5C();
    sub_1C44CD358(v13, v14, &protocol conformance descriptor for Source);
    sub_1C443F020();
    sub_1C441BD40();
    sub_1C4F027E8();
    sub_1C4409434(v22[7]);
    sub_1C441BD40();
    sub_1C4F027E8();
    sub_1C440200C();
    sub_1C44307E0(v15);
    sub_1C441BD40();
    sub_1C4F02738();
    sub_1C4D86E40();
    sub_1C4409434(v16);
    sub_1C441BD40();
    sub_1C4F027E8();
    sub_1C4459C78();
    sub_1C44307E0(v17);
    sub_1C441BD40();
    sub_1C4F02738();
    sub_1C4409434(v22[11]);
    sub_1C441BD40();
    sub_1C4F027E8();
    sub_1C4416974();
    sub_1C44307E0(v18);
    sub_1C441BD40();
    sub_1C4F02738();
    sub_1C4D86EF8();
    sub_1C4409434(v19);
    sub_1C441BD40();
    sub_1C4F027E8();
    sub_1C4D8719C();
    sub_1C4401774(v20);
    sub_1C44307E0(10);
    sub_1C441BD40();
    sub_1C4F02738();
    sub_1C4D87028();
    sub_1C4409434(v21);
    sub_1C441BD40();
    sub_1C4F027E8();
    sub_1C442E728(v22[16]);
    sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
    sub_1C43FC6D0(&qword_1EDDFA578, MEMORY[0x1E69E6160]);
    sub_1C440F0C4();
    sub_1C441BD40();
    sub_1C4F02778();
    sub_1C4409434(v22[17]);
    sub_1C441BD40();
    sub_1C4F027E8();
    sub_1C4401774(v22[18]);
    sub_1C44307E0(14);
    sub_1C441BD40();
    sub_1C4F02738();
    sub_1C4409434(v22[19]);
    sub_1C441BD40();
    sub_1C4F027E8();
    sub_1C4401774(v22[20]);
    sub_1C44307E0(16);
    sub_1C441BD40();
    sub_1C4F02738();
    sub_1C4409434(v22[21]);
    sub_1C441BD40();
    sub_1C4F027E8();
    sub_1C4401774(v22[22]);
    sub_1C44307E0(18);
    sub_1C441BD40();
    sub_1C4F02738();
    sub_1C4409434(v22[23]);
    sub_1C441BD40();
    sub_1C4F027E8();
    sub_1C4401774(v22[24]);
    sub_1C44307E0(20);
    sub_1C441BD40();
    sub_1C4F02738();
    sub_1C4409434(v22[25]);
    sub_1C441BD40();
    sub_1C4F027E8();
    sub_1C4401774(v22[26]);
    sub_1C44307E0(22);
    sub_1C441BD40();
    sub_1C4F02738();
    sub_1C4409434(v22[27]);
    sub_1C441BD40();
    sub_1C4F027E8();
    sub_1C4401774(v22[28]);
    sub_1C44307E0(24);
    sub_1C441BD40();
    sub_1C4F02738();
    sub_1C4409434(v22[29]);
    sub_1C441BD40();
    sub_1C4F027E8();
    sub_1C4401774(v22[30]);
    sub_1C44307E0(26);
    sub_1C441BD40();
    sub_1C4F02738();
    sub_1C4409434(v22[31]);
    sub_1C441BD40();
    sub_1C4F027E8();
    sub_1C4401774(v22[32]);
    sub_1C44307E0(28);
    sub_1C441BD40();
    sub_1C4F02738();
  }

  (*(v4 + 8))(v2, v0);
  sub_1C4403810();
  sub_1C43FBC80();
}

void sub_1C4D7C6E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v23;
  a20 = v24;
  v188 = v21;
  v26 = v25;
  v174 = v27;
  sub_1C4EFEEF8();
  sub_1C4403200();
  v187 = v28;
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v30);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v32);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v33);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v34);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v35);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v36);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v37);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v38);
  sub_1C44055D8();
  MEMORY[0x1EEE9AC00](v39);
  sub_1C4402024();
  MEMORY[0x1EEE9AC00](v40);
  sub_1C44143D0();
  MEMORY[0x1EEE9AC00](v41);
  sub_1C43FD230();
  v184[0] = v42;
  v43 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v43);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v44);
  sub_1C43FBC74();
  sub_1C4D86F60(v45);
  v186 = sub_1C456902C(&qword_1EC0C6D68, &qword_1C4F71128);
  sub_1C43FCDF8();
  v184[2] = v46;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v47);
  v49 = sub_1C4425644(v48, v172);
  v50 = type metadata accessor for CNContactStructs.AddressRelationshipType(v49);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v51);
  v53 = sub_1C4410790(v52, v173);
  v185 = v20;
  sub_1C44A1CA0(v53, v54, v55);
  sub_1C4EFD1D8();
  v56 = v50[6];
  if (qword_1EDDFED28 != -1)
  {
    sub_1C44133AC();
    swift_once();
  }

  v57 = type metadata accessor for Source(0);
  sub_1C442B738(v57, &unk_1EDDFD088);
  sub_1C4408374();
  sub_1C44CC80C(v58, v22 + v56, v59);
  sub_1C4D87038();
  sub_1C4EFE518();
  sub_1C442A790(v50[8]);
  v182 = v60;
  v181 = v50[9];
  sub_1C4EFE4E8();
  sub_1C442A790(v50[10]);
  v179 = v61;
  v178 = v50[11];
  sub_1C4EFE478();
  sub_1C442A790(v50[12]);
  v177 = v62;
  v176 = v50[13];
  sub_1C4EFE318();
  sub_1C442A790(v50[14]);
  sub_1C444C0B0(v50[15]);
  sub_1C4EFEB08();
  v175 = v50[16];
  *(v22 + v175) = 0;
  sub_1C444C0B0(v50[17]);
  sub_1C4EFE5A8();
  sub_1C442A790(v50[18]);
  sub_1C444C0B0(v50[19]);
  sub_1C4EFE4B8();
  sub_1C442A790(v50[20]);
  sub_1C444C0B0(v50[21]);
  sub_1C4EFEDE8();
  sub_1C442A790(v50[22]);
  sub_1C444C0B0(v50[23]);
  sub_1C4EFEA58();
  v63 = (v22 + v50[24]);
  *v63 = 0;
  v63[1] = 0;
  sub_1C444C0B0(v50[25]);
  sub_1C4EFE8D8();
  v64 = (v22 + v50[26]);
  *v64 = 0;
  v64[1] = 0;
  sub_1C444C0B0(v50[27]);
  sub_1C4EFE378();
  v65 = (v22 + v50[28]);
  *v65 = 0;
  v65[1] = 0;
  sub_1C444C0B0(v50[29]);
  sub_1C4EFECD8();
  v66 = (v22 + v50[30]);
  *v66 = 0;
  v66[1] = 0;
  sub_1C4EFE688();
  v67 = v50[32];
  v190 = v22;
  v68 = (v22 + v67);
  *v68 = 0;
  v68[1] = 0;
  v69 = v26[3];
  v189 = v26;
  sub_1C4417F50(v26, v69);
  sub_1C4D852AC();
  sub_1C4D86FE8();
  sub_1C4F02BC8();
  if (v21)
  {
    v170 = v190;
  }

  else
  {
    v188 = v68;
    LOBYTE(a10) = 0;
    sub_1C4412A4C();
    sub_1C44CD358(v70, v71, MEMORY[0x1E69A9778]);
    sub_1C4451480();
    v72 = v191;
    sub_1C4F02658();
    sub_1C444088C(v184[1], v190, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C43FE79C(3);
    sub_1C4451480();
    sub_1C4F026C8();
    v74 = *(v187 + 40);
    v75 = sub_1C4D86F08(v183[1]);
    v74(v75);
    v76 = sub_1C4402038(4);
    v77 = sub_1C4D8721C(v76);
    v187 += 40;
    v78 = v182;
    *v182 = v77;
    v78[1] = v79;
    sub_1C43FE79C(5);
    sub_1C4451480();
    sub_1C4F026C8();
    v80 = sub_1C4D86F08(v181);
    v74(v80);
    v81 = sub_1C4402038(6);
    v82 = sub_1C4D8721C(v81);
    v83 = v179;
    *v179 = v82;
    v83[1] = v84;
    sub_1C43FE79C(7);
    sub_1C4451480();
    sub_1C4F026C8();
    v85 = sub_1C4D86F08(v178);
    v74(v85);
    v86 = sub_1C4402038(8);
    *v177 = sub_1C4D8721C(v86);
    v177[1] = v87;
    sub_1C43FE79C(9);
    sub_1C4451480();
    sub_1C4F026C8();
    v88 = sub_1C4D86F08(v176);
    v74(v88);
    v89 = sub_1C4402038(10);
    v90 = sub_1C4D8721C(v89);
    sub_1C443E4B8(v90, v91, &a17);
    sub_1C43FE79C(11);
    sub_1C440C668();
    sub_1C4451480();
    sub_1C4F026C8();
    sub_1C4D86F9C(v190);
    sub_1C44585EC();
    (v74)(v92, v93, v94, v95, v96);
    v97 = sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
    v192 = 12;
    sub_1C440EE48(&qword_1EDDFEA58, MEMORY[0x1E69E6190]);
    sub_1C44A83E0();
    sub_1C4F02658();
    *(v190 + v175) = a10;
    sub_1C43FE79C(13);
    sub_1C447FB54(v98, v99);
    sub_1C4D86F9C(v190);
    sub_1C44585EC();
    (v74)(v100, v101, v102, v103, v104);
    v105 = sub_1C445C058(14);
    sub_1C443E4B8(v105, v106, &a11);
    sub_1C43FE79C(15);
    sub_1C447FB54(v107, v108);
    sub_1C4D86F9C(v190);
    sub_1C44585EC();
    (v74)(v109, v110, v111, v112, v113);
    v114 = sub_1C445C058(16);
    sub_1C443E4B8(v114, v115, &v193);
    sub_1C43FE79C(17);
    sub_1C447FB54(v116, v117);
    sub_1C4D86F9C(v190);
    sub_1C44585EC();
    (v74)(v118, v119, v120, v121, v122);
    v123 = sub_1C445C058(18);
    sub_1C443E4B8(v123, v124, v184);
    sub_1C43FE79C(19);
    sub_1C447FB54(v125, v126);
    sub_1C4D86F9C(v190);
    sub_1C44585EC();
    (v74)(v127, v128, v129, v130, v131);
    v132 = sub_1C445C058(20);
    sub_1C443E4B8(v132, v133, &v179);
    sub_1C43FE79C(21);
    sub_1C447FB54(v134, v135);
    sub_1C4D86F9C(v190);
    sub_1C44585EC();
    (v74)(v136, v137, v138, v139, v140);
    v141 = sub_1C445C058(22);
    sub_1C443E4B8(v141, v142, &v180);
    sub_1C43FE79C(23);
    sub_1C447FB54(v143, v144);
    sub_1C4456A14(&v185);
    sub_1C44585EC();
    (v74)(v145, v146, v147, v148, v149);
    v150 = sub_1C445C058(24);
    sub_1C443E4B8(v150, v151, &v181);
    sub_1C43FE79C(25);
    sub_1C447FB54(v152, v153);
    sub_1C4456A14(&v186);
    sub_1C44585EC();
    (v74)(v154, v155, v156, v157, v158);
    v159 = sub_1C445C058(26);
    sub_1C443E4B8(v159, v160, &v182);
    sub_1C43FE79C(27);
    sub_1C447FB54(v161, v162);
    sub_1C4456A14(v183);
    sub_1C44585EC();
    (v74)(v163, v164, v165, v166, v167);
    sub_1C445C058(28);
    sub_1C440D158();
    sub_1C441BF7C();
    v168(v72, v186);
    v169 = v188;
    *v188 = v97;
    v169[1] = v72;
    sub_1C44F1A00();
    v170 = v190;
    sub_1C44CC80C(v190, v174, v171);
  }

  sub_1C440962C(v189);
  sub_1C44401A4();
  sub_1C44D474C(v170, v73);
  sub_1C43FBC80();
}

uint64_t sub_1C4D7D180@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4D7B5D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4D7D1A8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C4D7BE60();
  *a1 = result;
  return result;
}

uint64_t sub_1C4D7D1D0(uint64_t a1)
{
  v2 = sub_1C4D852AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4D7D20C(uint64_t a1)
{
  v2 = sub_1C4D852AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4D7D5C4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000001C4F855E0 == a2;
  if (v3 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7461636964657270 && a2 == 0xE900000000000065;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C43797469746E65 && a2 == 0xEB00000000737361;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x6572646441736168 && a2 == 0xEA00000000007373)
        {

          return 4;
        }

        else
        {
          v10 = sub_1C4F02938();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_1C4D7D77C(char a1)
{
  result = 0x7461636964657270;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x6C43797469746E65;
      break;
    case 3:
      result = 0x656372756F73;
      break;
    case 4:
      result = 0x6572646441736168;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_1C4D7D828()
{
  sub_1C440EDD4();
  sub_1C456902C(&qword_1EC0C6D18, &qword_1C4F710F0);
  sub_1C4403200();
  v4 = v3;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FE61C();
  sub_1C43FD870();
  v6 = sub_1C4D8515C();
  sub_1C440F61C(&type metadata for CNContactStructs.Place.CodingKeys, v7, v6);
  sub_1C441D6E4();
  sub_1C4EFF0C8();
  sub_1C442E784();
  sub_1C44CD358(v8, v9, MEMORY[0x1E69A9818]);
  sub_1C43FE6CC();
  sub_1C43FCB2C();
  sub_1C4F027E8();
  if (!v1)
  {
    type metadata accessor for CNContactStructs.Place(0);
    sub_1C440CE38();
    sub_1C4EFEEF8();
    sub_1C4412A4C();
    sub_1C44CD358(v10, v11, MEMORY[0x1E69A9750]);
    sub_1C444C0BC();
    sub_1C43FCB2C();
    sub_1C4F02778();
    sub_1C4401FFC();
    sub_1C4EFD548();
    sub_1C4432F18();
    sub_1C44CD358(v12, v13, MEMORY[0x1E69A92D0]);
    sub_1C444C0BC();
    sub_1C43FCB2C();
    sub_1C4F027E8();
    sub_1C443439C();
    sub_1C440EB5C();
    sub_1C44CD358(v14, v15, &protocol conformance descriptor for Source);
    sub_1C444C0BC();
    sub_1C43FCB2C();
    sub_1C4F027E8();
    type metadata accessor for CNContactStructs.AddressRelationshipType(0);
    sub_1C44B67AC();
    sub_1C44CD358(v16, v17, &unk_1C4F70ECC);
    sub_1C43FCB2C();
    sub_1C4F02778();
  }

  return (*(v4 + 8))(v2, v0);
}

void sub_1C4D7DA88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_1C43FE96C();
  v28 = v27;
  v67 = v29;
  v30 = sub_1C456902C(&unk_1EC0BADC0, &qword_1C4F402C0);
  sub_1C43FBD18(v30);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FBC74();
  sub_1C4D86F60(v32);
  v33 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v33);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v34);
  sub_1C43FBC74();
  v69 = v35;
  sub_1C43FBE44();
  v71 = sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v70 = v36;
  MEMORY[0x1EEE9AC00](v37);
  sub_1C440F400();
  sub_1C456902C(&qword_1EC0C6D08, &qword_1C4F710E8);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v38);
  v39 = sub_1C4D86F2C();
  v40 = type metadata accessor for CNContactStructs.Place(v39);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v41);
  sub_1C43FBCC4();
  sub_1C44058BC();
  v43 = *(v42 + 20);
  v44 = sub_1C4EFEEF8();
  v74 = v43;
  sub_1C43FCF64();
  sub_1C440BAA8(v45, v46, v47, v44);
  v72 = v40[6];
  _s24IntelligencePlatformCore15LocationMatcherV11entityClass0aB006EntityG0Vvg_0();
  v48 = v40[7];
  if (qword_1EDDFED28 != -1)
  {
    sub_1C44133AC();
    swift_once();
  }

  v49 = type metadata accessor for Source(0);
  sub_1C442B738(v49, &unk_1EDDFD088);
  sub_1C4408374();
  v73 = v48;
  sub_1C44CC80C(v50, v25 + v48, v51);
  v52 = v40[8];
  v53 = type metadata accessor for CNContactStructs.AddressRelationshipType(0);
  sub_1C43FCF64();
  sub_1C440BAA8(v54, v55, v56, v53);
  sub_1C4417F50(v28, v28[3]);
  sub_1C4D8515C();
  sub_1C4F02BC8();
  if (v24)
  {
    sub_1C440962C(v28);
    sub_1C4420C3C(v25 + v74, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C4EFD548();
    sub_1C43FBCE0();
    (*(v59 + 8))(v25 + v72);
    sub_1C440636C();
    sub_1C44D474C(v25 + v73, v60);
    sub_1C4420C3C(v25 + v52, &unk_1EC0BADC0, &qword_1C4F402C0);
  }

  else
  {
    sub_1C442E784();
    sub_1C44CD358(v57, v58, MEMORY[0x1E69A9838]);
    sub_1C43FE6CC();
    sub_1C4F026C8();
    (*(v70 + 32))(v25, v26, v71);
    sub_1C4412A4C();
    sub_1C44CD358(v61, v62, MEMORY[0x1E69A9778]);
    sub_1C4F02658();
    sub_1C444088C(v69, v25 + v74, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C44B67AC();
    sub_1C44CD358(v63, v64, &unk_1C4F70EF4);
    sub_1C4F02658();
    v65 = sub_1C441698C();
    v66(v65);
    sub_1C444088C(v68, v25 + v52, &unk_1EC0BADC0, &qword_1C4F402C0);
    sub_1C44CC80C(v25, v67, type metadata accessor for CNContactStructs.Place);
    sub_1C440962C(v28);
    sub_1C44D474C(v25, type metadata accessor for CNContactStructs.Place);
  }

  sub_1C43FBC80();
}

uint64_t sub_1C4D7DFDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4D7D5C4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4D7E004(uint64_t a1)
{
  v2 = sub_1C4D8515C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4D7E040(uint64_t a1)
{
  v2 = sub_1C4D8515C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C4D7E0C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void (*a21)(void), uint64_t (*a22)(uint64_t, uint64_t, char *), void (*a23)(void))
{
  sub_1C43FE628();
  v209 = v25;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v214 = v24;
  v33 = v32;
  v205 = v34;
  v219 = v35;
  v222 = v36;
  sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v216 = v37;
  v217 = v38;
  MEMORY[0x1EEE9AC00](v37);
  sub_1C43FD2D8();
  v196 = v39;
  v211 = v31;
  v212 = v29;
  v40 = sub_1C43FE99C();
  v42 = sub_1C456902C(v40, v41);
  sub_1C43FBD18(v42);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v43);
  sub_1C43FBC74();
  v210 = v44;
  v45 = sub_1C43FBE44();
  v213 = v27(v45);
  sub_1C43FBCE0();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v46);
  sub_1C43FBC74();
  v48 = sub_1C43FD2C8(v47);
  v204 = type metadata accessor for EntityTriple(v48);
  sub_1C43FCDF8();
  v206 = v49;
  MEMORY[0x1EEE9AC00](v50);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v51);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v52);
  sub_1C43FD230();
  sub_1C43FD2C8(v53);
  sub_1C4EFD548();
  sub_1C43FCDF8();
  v207 = v55;
  v208 = v54;
  MEMORY[0x1EEE9AC00](v54);
  sub_1C43FBCC4();
  v58 = v57 - v56;
  sub_1C4EFF8A8();
  sub_1C43FCDF8();
  v220 = v60;
  v221 = v59;
  MEMORY[0x1EEE9AC00](v59);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v61);
  v63 = &v190 - v62;
  v64 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  v65 = sub_1C43FBD18(v64);
  MEMORY[0x1EEE9AC00](v65);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v66);
  v68 = &v190 - v67;
  sub_1C4EFEEF8();
  sub_1C43FCDF8();
  v70 = v69;
  MEMORY[0x1EEE9AC00](v71);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v72);
  v74 = &v190 - v73;
  v218 = *v33;
  v75 = v23;
  v77 = v76;
  sub_1C445FFA8(v23, v68, &qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C44101EC();
  sub_1C440175C(v78, v79, v80);
  if (v81)
  {
    sub_1C4420C3C(v68, &qword_1EC0B9A08, &unk_1C4F107B0);
    v82 = sub_1C45CF650();
    sub_1C43FFB2C(&type metadata for MappingError, v82);
    sub_1C43FE7A8(v83, 2);
LABEL_24:
    sub_1C440EE0C();
    sub_1C44109F8();
    return;
  }

  v203 = v70;
  v84 = *(v70 + 32);
  v215 = v77;
  v192 = v70 + 32;
  v191 = v84;
  v84(v74, v68, v77);
  v85 = v209(0);
  v86 = *(v207 + 16);
  v193 = v85[5];
  v86(v58, v75 + v193, v208);
  v209 = v63;
  sub_1C4EFF838();
  v87 = MEMORY[0x1E69E7CC0];
  v224 = MEMORY[0x1E69E7CC0];
  v88 = *(v75 + v85[8] + 8);
  v207 = v75;
  v208 = v74;
  v194 = v85;
  if (!v88)
  {
    v122 = v75;
    v117 = v214;
    v123 = v219;
    v91 = v217;
LABEL_11:
    v119 = v212;
    v118 = v213;
    goto LABEL_12;
  }

  sub_1C44D4060();
  v90 = v222;
  v91 = v217;
  if (!v92)
  {
    v117 = v214;
    v123 = v219;
    v122 = v207;
    goto LABEL_11;
  }

  v93 = *(v217 + 16);
  v94 = v202;
  v190 = v89;
  v93(v202, v205, v216);
  v95 = v204;
  v96 = *(v203 + 16);
  v97 = sub_1C4401998(*(v204 + 20));
  v98 = v215;
  v96(v97);
  v99 = sub_1C4401940(v95[6]);
  v100(v99, v209);
  v101 = v85[7];
  v102 = v207;
  (v96)(v94 + v95[7], v207 + v101, v98);
  sub_1C4408374();
  sub_1C44CC80C(v102 + v103, v94 + v104, v105);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EF9AE8();
  v106 = (v94 + v95[8]);
  *v106 = v190;
  v106[1] = v88;
  v107 = (v94 + v95[10]);
  v108 = v219;
  *v107 = v90;
  v107[1] = v108;
  *(v94 + v95[11]) = v109;
  *(v94 + v95[12]) = v218;
  v110 = v108;
  v111 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4401EC4(v111, v112, v113, MEMORY[0x1E69E7CC0]);
  v87 = v114;
  v116 = *(v114 + 16);
  v115 = *(v114 + 24);
  if (v116 >= v115 >> 1)
  {
    sub_1C44C9240(v115 > 1, v116 + 1, 1, v114);
    v87 = v184;
  }

  v118 = v213;
  v117 = v214;
  v119 = v212;
  *(v87 + 16) = v116 + 1;
  sub_1C445EB4C();
  sub_1C4420AA0();
  sub_1C44D4624(v202, v120, v121);
  v224 = v87;
  v122 = v207;
  v91 = v217;
  v85 = v194;
  v123 = v110;
LABEL_12:
  v124 = v122 + v85[9];
  v126 = v210;
  v125 = v211;
  sub_1C445FFA8(v124, v210, v211, v119);
  sub_1C440175C(v126, 1, v118);
  if (v81)
  {
    sub_1C4420C3C(v126, v125, v119);
    v127 = v201;
LABEL_15:
    v128 = v220;
LABEL_16:
    v129 = v209;
    v130 = v221;
    v131 = v203;
    if (*(v87 + 16))
    {
      (*(v91 + 16))(v127, v205, v216);
      v132 = v204;
      v133 = sub_1C448879C(*(v204 + 20));
      v134(v133, v208, v215);
      v135 = sub_1C448879C(v132[6]);
      v136(v135, v129, v130);
      sub_1C4EFEBB8();
      v137 = v122 + v193;
      sub_1C4EFD2F8();
      sub_1C440D158();
      sub_1C4408374();
      sub_1C44CC80C(v122 + v138, v127 + v139, v140);
      sub_1C4EF9AE8();
      v141 = (v127 + v132[8]);
      *v141 = v129;
      v141[1] = v137;
      sub_1C4D87188(v132[10]);
      *(v127 + v132[11]) = v142;
      *(v127 + v132[12]) = v218;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v179 = sub_1C43FCEC0();
        sub_1C44C9240(v179, v180, v181, v87);
        v87 = v182;
      }

      sub_1C4424824();
      v144 = v215;
      if (v145)
      {
        sub_1C44C9240(v143 > 1, v129, 1, v87);
        v87 = v183;
      }

      (*(v128 + 8))(v209, v130);
      v146 = sub_1C44D7E1C();
      v147(v146, v144);
      *(v87 + 16) = v129;
      sub_1C445EB4C();
      sub_1C4420AA0();
      sub_1C44D4624(v127, v148, v149);
    }

    else
    {
      (*(v128 + 8))(v209, v221, v216);
      (*(v131 + 8))(v208, v215);
    }

    goto LABEL_24;
  }

  v150 = v126;
  v151 = v200;
  sub_1C44D4624(v150, v200, a21);
  v223 = v218;
  v152 = a22(v222, v123, &v223);
  if (v117)
  {
    sub_1C44D474C(v151, a23);
    (*(v220 + 8))(v209, v221);
    v153 = sub_1C44D7E1C();
    v154(v153, v215);

    goto LABEL_24;
  }

  v155 = v215;
  if (!*(v152 + 16))
  {
    sub_1C44D474C(v151, a23);

    v127 = v201;
    v122 = v207;
    goto LABEL_15;
  }

  v156 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C49D3614(v156);
  v157 = v196;
  (*(v91 + 16))(v196, v205, v216);
  sub_1C440C668();
  (*(v158 + 16))(v197, v208, v155);
  (*(v220 + 16))(v198, v209, v221);
  v159 = v151 + *(v118 + 20);
  v160 = v195;
  sub_1C445FFA8(v159, v195, &qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C44101EC();
  sub_1C440175C(v161, v162, v163);
  if (!v81)
  {

    v217 = sub_1C4EFF048();
    v214 = v164;
    v165 = v204;
    sub_1C4408374();
    v167 = v199;
    sub_1C44CC80C(v207 + v166, v199 + v168, v169);
    sub_1C4EF9AE8();
    v171 = v170;
    (*(v91 + 32))(v167, v157, v216);
    v172 = v191;
    v191(v167 + v165[5], v197, v155);
    (*(v220 + 32))(v167 + v165[6], v198, v221);
    v172(v167 + v165[7], v160, v155);
    v173 = (v167 + v165[8]);
    v174 = v214;
    *v173 = v217;
    v173[1] = v174;
    sub_1C4D87188(v165[10]);
    *(v167 + v165[11]) = v171;
    *(v167 + v165[12]) = v218;
    v87 = v224;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v185 = sub_1C43FCEC0();
      sub_1C44C9240(v185, v186, v187, v87);
      v87 = v188;
    }

    v127 = v201;
    sub_1C44019A4();
    v128 = v220;
    v176 = v200;
    if (v145)
    {
      sub_1C44C9240(v175 > 1, v165, 1, v87);
      v87 = v189;
    }

    sub_1C44D474C(v176, a23);
    *(v87 + 16) = v165;
    sub_1C445EB4C();
    sub_1C4420AA0();
    sub_1C44D4624(v199, v177, v178);
    v122 = v207;
    goto LABEL_16;
  }

  __break(1u);
}

uint64_t sub_1C4D7EC5C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461636964657270 && a2 == 0xE900000000000065;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C43797469746E65 && a2 == 0xEB00000000737361;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000017 && 0x80000001C4FC80F0 == a2;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6E6F697461636F6CLL && a2 == 0xED00006C6562614CLL;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x7461636F4C736168 && a2 == 0xEB000000006E6F69)
          {

            return 5;
          }

          else
          {
            v11 = sub_1C4F02938();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1C4D7EE60(char a1)
{
  result = 0x7461636964657270;
  switch(a1)
  {
    case 1:
      result = 0x6C43797469746E65;
      break;
    case 2:
      result = 0x656372756F73;
      break;
    case 3:
      result = 0xD000000000000017;
      break;
    case 4:
      result = 0x6E6F697461636F6CLL;
      break;
    case 5:
      result = 0x7461636F4C736168;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1C4D7EF34()
{
  sub_1C43FE96C();
  sub_1C440EDD4();
  sub_1C456902C(&qword_1EC0C6D90, &qword_1C4F71140);
  sub_1C4403200();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C43FE61C();
  sub_1C43FD870();
  v3 = sub_1C4D85300();
  sub_1C440F61C(&type metadata for CNContactStructs.LocationRelationshipType.CodingKeys, v4, v3);
  sub_1C441D6E4();
  sub_1C4EFEEF8();
  sub_1C4412A4C();
  sub_1C44CD358(v5, v6, MEMORY[0x1E69A9750]);
  sub_1C44055EC();
  sub_1C4F02778();
  if (!v0)
  {
    v17 = type metadata accessor for CNContactStructs.LocationRelationshipType(0);
    sub_1C440CE38();
    sub_1C4EFD548();
    sub_1C4432F18();
    sub_1C44CD358(v7, v8, MEMORY[0x1E69A92D0]);
    sub_1C444C0BC();
    sub_1C43FCB2C();
    sub_1C4F027E8();
    v9 = sub_1C4401FFC();
    type metadata accessor for Source(v9);
    sub_1C440EB5C();
    sub_1C44CD358(v10, v11, &protocol conformance descriptor for Source);
    sub_1C444C0BC();
    sub_1C43FCB2C();
    sub_1C4F027E8();
    sub_1C4401958();
    sub_1C44055EC();
    sub_1C4F027E8();
    sub_1C440C15C((v1 + *(v17 + 32)));
    sub_1C4F02738();
    v12 = sub_1C4D870E8();
    type metadata accessor for CNContactStructs.Place(v12);
    sub_1C44C04D0();
    sub_1C44CD358(v13, v14, &unk_1C4F7107C);
    sub_1C43FCB2C();
    sub_1C4F02778();
  }

  v15 = sub_1C440231C();
  v16(v15);
  sub_1C440EE0C();
  sub_1C43FBC80();
}

void sub_1C4D7F178()
{
  sub_1C43FE96C();
  v5 = v4;
  v47 = v6;
  v7 = sub_1C456902C(&qword_1EC0BADB8, &unk_1C4F175D0);
  sub_1C43FBD18(v7);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C4416C44(v9, v45);
  sub_1C4EFEEF8();
  sub_1C4403200();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FD2D8();
  v11 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v11);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBC74();
  sub_1C456902C(&qword_1EC0C6D80, &qword_1C4F71138);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v13);
  v14 = sub_1C4D86F2C();
  v15 = type metadata accessor for CNContactStructs.LocationRelationshipType(v14);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v16);
  v18 = sub_1C4410790(v17, v46);
  sub_1C44A1CA0(v18, v19, v20);
  sub_1C4EFD1F8();
  v21 = *(v15 + 24);
  if (qword_1EDDFED28 != -1)
  {
    sub_1C44133AC();
    swift_once();
  }

  v22 = type metadata accessor for Source(0);
  sub_1C442B738(v22, &unk_1EDDFD088);
  sub_1C4408374();
  sub_1C44CC80C(v23, v1 + v21, v24);
  v25 = *(v15 + 28);
  sub_1C4EFE5E8();
  v26 = sub_1C4D870D0();
  v27 = type metadata accessor for CNContactStructs.Place(v26);
  sub_1C43FCF64();
  sub_1C440BAA8(v28, v29, v30, v27);
  sub_1C4417F50(v5, v5[3]);
  v31 = sub_1C4D85300();
  sub_1C44CD164(&type metadata for CNContactStructs.LocationRelationshipType.CodingKeys, v32, v31);
  if (!v0)
  {
    sub_1C4412A4C();
    v35 = sub_1C44CD358(v33, v34, MEMORY[0x1E69A9778]);
    sub_1C4D86EAC(v35);
    sub_1C444088C(v2, v1, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C441405C();
    sub_1C43FE664();
    sub_1C4F026C8();
    v36 = sub_1C4D870A0();
    v37(v36);
    sub_1C4428F20();
    sub_1C43FE664();
    *v3 = sub_1C4F02618();
    v3[1] = v39;
    sub_1C44C04D0();
    sub_1C44CD358(v40, v41, &unk_1C4F710A4);
    sub_1C450B3B4();
    sub_1C43FE664();
    sub_1C4F02658();
    v42 = sub_1C442A7B4();
    v43(v42);
    sub_1C444088C(v25, v1 + v2, &qword_1EC0BADB8, &unk_1C4F175D0);
    sub_1C44758A0();
    sub_1C44CC80C(v1, v47, v44);
  }

  sub_1C440962C(v5);
  sub_1C444AE90();
  sub_1C44D474C(v1, v38);
  sub_1C4403810();
  sub_1C43FBC80();
}

uint64_t sub_1C4D7F548@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4D7EC5C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4D7F570(uint64_t a1)
{
  v2 = sub_1C4D85300();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4D7F5AC(uint64_t a1)
{
  v2 = sub_1C4D85300();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C4D7F6AC()
{
  sub_1C43FBD3C();
  v2 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v2);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1C44042B0();
  v5 = type metadata accessor for CNContactStructs.EntityAliasRelationshipType(v4);
  v6 = sub_1C43FCF7C(v5);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBD08();
  sub_1C44D458C();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C4402CA8();
  v8 = *(type metadata accessor for CNContactStructs.Person(0) + 244);
  v9 = *(v0 + v8);
  if (v9)
  {
    if (*(v9 + 16))
    {
      sub_1C4401968(v9);
      v10 = MEMORY[0x1E69E7CC0];
      do
      {
        sub_1C44CC80C(v8, v1, type metadata accessor for CNContactStructs.EntityAliasRelationshipType);
        sub_1C4EFEAA8();
        v11 = sub_1C4EFEEF8();
        v12 = sub_1C444C460(v11);
        sub_1C444088C(v12, v13, &qword_1EC0B9A08, &unk_1C4F107B0);
        sub_1C4482EF0();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_1C43FCEC0();
          sub_1C44DBB10(v20, v21, v22, v10);
          v10 = v23;
        }

        sub_1C4473DBC();
        if (v15)
        {
          v24 = sub_1C4440B38(v14);
          sub_1C44DBB10(v24, v25, v26, v27);
          v10 = v28;
        }

        sub_1C4456300();
        sub_1C4D8711C(v16, v17);
        sub_1C440CE6C();
        sub_1C44D474C(v1, v18);
        sub_1C4D870C4();
      }

      while (!v19);

      v8 = v29;
      v0 = v30;
    }

    else
    {

      v10 = MEMORY[0x1E69E7CC0];
    }

    *(v0 + v8) = v10;
  }

  sub_1C43FE9F0();
}

uint64_t sub_1C4D7F88C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v9 = *a1;
  v10 = a1[1];
  v11 = sub_1C4EFF0C8();
  (*(*(v11 - 8) + 16))(a6, a2, v11);
  v12 = type metadata accessor for CNContactStructs.Person(0);
  v13 = *(v12 + 112);
  v14 = type metadata accessor for EntityTriple(0);
  v15 = v14[5];
  v16 = sub_1C4EFEEF8();
  (*(*(v16 - 8) + 16))(a6 + v15, a2 + v13, v16);
  sub_1C44CC80C(a2 + *(v12 + 28), a6 + v14[9], type metadata accessor for Source);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EF9AE8();
  v18 = v17;
  sub_1C4EFF888();
  sub_1C4EFEC38();
  v19 = (a6 + v14[8]);
  *v19 = v9;
  v19[1] = v10;
  v20 = (a6 + v14[10]);
  *v20 = a3;
  v20[1] = a4;
  *(a6 + v14[11]) = v18;
  *(a6 + v14[12]) = a5;
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C4D7FA18@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v9 = *a1;
  v10 = a1[1];
  v11 = sub_1C4EFF0C8();
  (*(*(v11 - 8) + 16))(a6, a2, v11);
  v12 = type metadata accessor for CNContactStructs.Person(0);
  v13 = *(v12 + 120);
  v14 = type metadata accessor for EntityTriple(0);
  v15 = v14[5];
  v16 = sub_1C4EFEEF8();
  (*(*(v16 - 8) + 16))(a6 + v15, a2 + v13, v16);
  sub_1C44CC80C(a2 + *(v12 + 28), a6 + v14[9], type metadata accessor for Source);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EF9AE8();
  v18 = v17;
  sub_1C4EFF888();
  sub_1C4EFEC38();
  v19 = (a6 + v14[8]);
  *v19 = v9;
  v19[1] = v10;
  v20 = (a6 + v14[10]);
  *v20 = a3;
  v20[1] = a4;
  *(a6 + v14[11]) = v18;
  *(a6 + v14[12]) = a5;
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C4D7FBA4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v9 = *a1;
  v10 = a1[1];
  v11 = sub_1C4EFF0C8();
  (*(*(v11 - 8) + 16))(a6, a2, v11);
  v12 = type metadata accessor for CNContactStructs.Person(0);
  v13 = *(v12 + 144);
  v14 = type metadata accessor for EntityTriple(0);
  v15 = v14[5];
  v16 = sub_1C4EFEEF8();
  (*(*(v16 - 8) + 16))(a6 + v15, a2 + v13, v16);
  sub_1C44CC80C(a2 + *(v12 + 28), a6 + v14[9], type metadata accessor for Source);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EF9AE8();
  v18 = v17;
  sub_1C4EFF888();
  sub_1C4EFEC38();
  v19 = (a6 + v14[8]);
  *v19 = v9;
  v19[1] = v10;
  v20 = (a6 + v14[10]);
  *v20 = a3;
  v20[1] = a4;
  *(a6 + v14[11]) = v18;
  *(a6 + v14[12]) = a5;
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C4D7FD30(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000001C4F855E0 == a2;
  if (v3 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7461636964657270 && a2 == 0xE900000000000065;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C43797469746E65 && a2 == 0xEB00000000737361;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000013 && 0x80000001C4FC81B0 == a2;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6D614E7473726966 && a2 == 0xE900000000000065;
            if (v10 || (sub_1C4F02938() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000017 && 0x80000001C4FC81D0 == a2;
              if (v11 || (sub_1C4F02938() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6E65727275437369 && a2 == 0xED00007265735574;
                if (v12 || (sub_1C4F02938() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000014 && 0x80000001C4FC81F0 == a2;
                  if (v13 || (sub_1C4F02938() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x66657250656D616ELL && a2 == 0xEA00000000007869;
                    if (v14 || (sub_1C4F02938() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000014 && 0x80000001C4FC8210 == a2;
                      if (v15 || (sub_1C4F02938() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x614E656C6464696DLL && a2 == 0xEA0000000000656DLL;
                        if (v16 || (sub_1C4F02938() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD000000000000014 && 0x80000001C4FC8230 == a2;
                          if (v17 || (sub_1C4F02938() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x614E796C696D6166 && a2 == 0xEA0000000000656DLL;
                            if (v18 || (sub_1C4F02938() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0xD000000000000014 && 0x80000001C4FC8250 == a2;
                              if (v19 || (sub_1C4F02938() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0x66667553656D616ELL && a2 == 0xEA00000000007869;
                                if (v20 || (sub_1C4F02938() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0xD000000000000015 && 0x80000001C4FC7DA0 == a2;
                                  if (v21 || (sub_1C4F02938() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0x776F6E4B6F736C61 && a2 == 0xEB0000000073416ELL;
                                    if (v22 || (sub_1C4F02938() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0x646572705F6C7275 && a2 == 0xED00006574616369;
                                      if (v23 || (sub_1C4F02938() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v24 = a1 == 7107189 && a2 == 0xE300000000000000;
                                        if (v24 || (sub_1C4F02938() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          v25 = a1 == 0xD000000000000015 && 0x80000001C4FC8270 == a2;
                                          if (v25 || (sub_1C4F02938() & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else
                                          {
                                            v26 = a1 == 0x6942664F65746164 && a2 == 0xEB00000000687472;
                                            if (v26 || (sub_1C4F02938() & 1) != 0)
                                            {

                                              return 21;
                                            }

                                            else
                                            {
                                              v27 = a1 == 0xD00000000000001CLL && 0x80000001C4FC8290 == a2;
                                              if (v27 || (sub_1C4F02938() & 1) != 0)
                                              {

                                                return 22;
                                              }

                                              else
                                              {
                                                v28 = a1 == 0xD000000000000012 && 0x80000001C4FC82B0 == a2;
                                                if (v28 || (sub_1C4F02938() & 1) != 0)
                                                {

                                                  return 23;
                                                }

                                                else
                                                {
                                                  v29 = a1 == 0xD000000000000015 && 0x80000001C4FC82D0 == a2;
                                                  if (v29 || (sub_1C4F02938() & 1) != 0)
                                                  {

                                                    return 24;
                                                  }

                                                  else
                                                  {
                                                    v30 = a1 == 0x73726576696E6E61 && a2 == 0xEB00000000797261;
                                                    if (v30 || (sub_1C4F02938() & 1) != 0)
                                                    {

                                                      return 25;
                                                    }

                                                    else
                                                    {
                                                      v31 = a1 == 0xD00000000000001CLL && 0x80000001C4FC82F0 == a2;
                                                      if (v31 || (sub_1C4F02938() & 1) != 0)
                                                      {

                                                        return 26;
                                                      }

                                                      else
                                                      {
                                                        v32 = a1 == 0xD000000000000012 && 0x80000001C4FC8310 == a2;
                                                        if (v32 || (sub_1C4F02938() & 1) != 0)
                                                        {

                                                          return 27;
                                                        }

                                                        else
                                                        {
                                                          v33 = a1 == 0xD00000000000001ELL && 0x80000001C4FC8330 == a2;
                                                          if (v33 || (sub_1C4F02938() & 1) != 0)
                                                          {

                                                            return 28;
                                                          }

                                                          else
                                                          {
                                                            v34 = a1 == 0xD000000000000014 && 0x80000001C4FC8350 == a2;
                                                            if (v34 || (sub_1C4F02938() & 1) != 0)
                                                            {

                                                              return 29;
                                                            }

                                                            else
                                                            {
                                                              v35 = a1 == 0xD000000000000025 && 0x80000001C4FC8370 == a2;
                                                              if (v35 || (sub_1C4F02938() & 1) != 0)
                                                              {

                                                                return 30;
                                                              }

                                                              else
                                                              {
                                                                v36 = a1 == 0xD00000000000001BLL && 0x80000001C4FC83A0 == a2;
                                                                if (v36 || (sub_1C4F02938() & 1) != 0)
                                                                {

                                                                  return 31;
                                                                }

                                                                else
                                                                {
                                                                  v37 = a1 == 0x72705F7365746164 && a2 == 0xEF65746163696465;
                                                                  if (v37 || (sub_1C4F02938() & 1) != 0)
                                                                  {

                                                                    return 32;
                                                                  }

                                                                  else
                                                                  {
                                                                    v38 = a1 == 0x7365746164 && a2 == 0xE500000000000000;
                                                                    if (v38 || (sub_1C4F02938() & 1) != 0)
                                                                    {

                                                                      return 33;
                                                                    }

                                                                    else
                                                                    {
                                                                      v39 = a1 == 0xD000000000000014 && 0x80000001C4FC83C0 == a2;
                                                                      if (v39 || (sub_1C4F02938() & 1) != 0)
                                                                      {

                                                                        return 34;
                                                                      }

                                                                      else
                                                                      {
                                                                        v40 = a1 == 0x697461707563636FLL && a2 == 0xEA00000000006E6FLL;
                                                                        if (v40 || (sub_1C4F02938() & 1) != 0)
                                                                        {

                                                                          return 35;
                                                                        }

                                                                        else
                                                                        {
                                                                          v41 = a1 == 0xD000000000000013 && 0x80000001C4FC83E0 == a2;
                                                                          if (v41 || (sub_1C4F02938() & 1) != 0)
                                                                          {

                                                                            return 36;
                                                                          }

                                                                          else
                                                                          {
                                                                            v42 = a1 == 0x6D614E6874726962 && a2 == 0xE900000000000065;
                                                                            if (v42 || (sub_1C4F02938() & 1) != 0)
                                                                            {

                                                                              return 37;
                                                                            }

                                                                            else
                                                                            {
                                                                              v43 = a1 == 0xD00000000000001CLL && 0x80000001C4FC8400 == a2;
                                                                              if (v43 || (sub_1C4F02938() & 1) != 0)
                                                                              {

                                                                                return 38;
                                                                              }

                                                                              else
                                                                              {
                                                                                v44 = a1 == 0xD000000000000012 && 0x80000001C4FC8420 == a2;
                                                                                if (v44 || (sub_1C4F02938() & 1) != 0)
                                                                                {

                                                                                  return 39;
                                                                                }

                                                                                else
                                                                                {
                                                                                  v45 = a1 == 0xD00000000000001ALL && 0x80000001C4FC8440 == a2;
                                                                                  if (v45 || (sub_1C4F02938() & 1) != 0)
                                                                                  {

                                                                                    return 40;
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    v46 = a1 == 0xD000000000000010 && 0x80000001C4FC8460 == a2;
                                                                                    if (v46 || (sub_1C4F02938() & 1) != 0)
                                                                                    {

                                                                                      return 41;
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      v47 = a1 == 0xD000000000000016 && 0x80000001C4FC8480 == a2;
                                                                                      if (v47 || (sub_1C4F02938() & 1) != 0)
                                                                                      {

                                                                                        return 42;
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        v48 = a1 == 0x6E6F6974616C6572 && a2 == 0xEC00000070696873;
                                                                                        if (v48 || (sub_1C4F02938() & 1) != 0)
                                                                                        {

                                                                                          return 43;
                                                                                        }

                                                                                        else
                                                                                        {
                                                                                          v49 = a1 == 0xD000000000000014 && 0x80000001C4FC7F80 == a2;
                                                                                          if (v49 || (sub_1C4F02938() & 1) != 0)
                                                                                          {

                                                                                            return 44;
                                                                                          }

                                                                                          else
                                                                                          {
                                                                                            v50 = a1 == 0x69726F7661467369 && a2 == 0xEA00000000006574;
                                                                                            if (v50 || (sub_1C4F02938() & 1) != 0)
                                                                                            {

                                                                                              return 45;
                                                                                            }

                                                                                            else
                                                                                            {
                                                                                              v51 = a1 == 0x6572705F656D616ELL && a2 == 0xEE00657461636964;
                                                                                              if (v51 || (sub_1C4F02938() & 1) != 0)
                                                                                              {

                                                                                                return 46;
                                                                                              }

                                                                                              else
                                                                                              {
                                                                                                v52 = a1 == 1701667182 && a2 == 0xE400000000000000;
                                                                                                if (v52 || (sub_1C4F02938() & 1) != 0)
                                                                                                {

                                                                                                  return 47;
                                                                                                }

                                                                                                else
                                                                                                {
                                                                                                  v53 = a1 == 0xD00000000000001BLL && 0x80000001C4FC84A0 == a2;
                                                                                                  if (v53 || (sub_1C4F02938() & 1) != 0)
                                                                                                  {

                                                                                                    return 48;
                                                                                                  }

                                                                                                  else
                                                                                                  {
                                                                                                    v54 = a1 == 0xD000000000000011 && 0x80000001C4FC84C0 == a2;
                                                                                                    if (v54 || (sub_1C4F02938() & 1) != 0)
                                                                                                    {

                                                                                                      return 49;
                                                                                                    }

                                                                                                    else
                                                                                                    {
                                                                                                      v55 = a1 == 0xD00000000000001CLL && 0x80000001C4FC84E0 == a2;
                                                                                                      if (v55 || (sub_1C4F02938() & 1) != 0)
                                                                                                      {

                                                                                                        return 50;
                                                                                                      }

                                                                                                      else
                                                                                                      {
                                                                                                        v56 = a1 == 0xD000000000000012 && 0x80000001C4FC8500 == a2;
                                                                                                        if (v56 || (sub_1C4F02938() & 1) != 0)
                                                                                                        {

                                                                                                          return 51;
                                                                                                        }

                                                                                                        else
                                                                                                        {
                                                                                                          v57 = a1 == 0xD00000000000001CLL && 0x80000001C4FC8520 == a2;
                                                                                                          if (v57 || (sub_1C4F02938() & 1) != 0)
                                                                                                          {

                                                                                                            return 52;
                                                                                                          }

                                                                                                          else
                                                                                                          {
                                                                                                            v58 = a1 == 0xD000000000000012 && 0x80000001C4FC8540 == a2;
                                                                                                            if (v58 || (sub_1C4F02938() & 1) != 0)
                                                                                                            {

                                                                                                              return 53;
                                                                                                            }

                                                                                                            else
                                                                                                            {
                                                                                                              v59 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
                                                                                                              if (v59 || (sub_1C4F02938() & 1) != 0)
                                                                                                              {

                                                                                                                return 54;
                                                                                                              }

                                                                                                              else
                                                                                                              {
                                                                                                                v60 = a1 == 0x7265796F6C706D65 && a2 == 0xE800000000000000;
                                                                                                                if (v60 || (sub_1C4F02938() & 1) != 0)
                                                                                                                {

                                                                                                                  return 55;
                                                                                                                }

                                                                                                                else
                                                                                                                {
                                                                                                                  v61 = a1 == 0xD000000000000013 && 0x80000001C4FC8560 == a2;
                                                                                                                  if (v61 || (sub_1C4F02938() & 1) != 0)
                                                                                                                  {

                                                                                                                    return 56;
                                                                                                                  }

                                                                                                                  else
                                                                                                                  {
                                                                                                                    v62 = a1 == 0xD000000000000017 && 0x80000001C4FC8580 == a2;
                                                                                                                    if (v62 || (sub_1C4F02938() & 1) != 0)
                                                                                                                    {

                                                                                                                      return 57;
                                                                                                                    }

                                                                                                                    else
                                                                                                                    {
                                                                                                                      v63 = a1 == 0x636F737341736168 && a2 == 0xEE006E6F69746169;
                                                                                                                      if (v63 || (sub_1C4F02938() & 1) != 0)
                                                                                                                      {

                                                                                                                        return 58;
                                                                                                                      }

                                                                                                                      else
                                                                                                                      {
                                                                                                                        v64 = a1 == 0xD000000000000017 && 0x80000001C4FC85A0 == a2;
                                                                                                                        if (v64 || (sub_1C4F02938() & 1) != 0)
                                                                                                                        {

                                                                                                                          return 59;
                                                                                                                        }

                                                                                                                        else if (a1 == 0xD000000000000015 && 0x80000001C4FC85C0 == a2)
                                                                                                                        {

                                                                                                                          return 60;
                                                                                                                        }

                                                                                                                        else
                                                                                                                        {
                                                                                                                          v66 = sub_1C4F02938();

                                                                                                                          if (v66)
                                                                                                                          {
                                                                                                                            return 60;
                                                                                                                          }

                                                                                                                          else
                                                                                                                          {
                                                                                                                            return 61;
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

uint64_t sub_1C4D80ED4(char a1)
{
  result = 0x7461636964657270;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      return 0x6C43797469746E65;
    case 3:
      return 0x656372756F73;
    case 4:
    case 36:
    case 56:
      return 0xD000000000000013;
    case 5:
      v3 = 0x4E7473726966;
      goto LABEL_28;
    case 6:
    case 57:
    case 59:
      return 0xD000000000000017;
    case 7:
      return 0x6E65727275437369;
    case 8:
      return 0xD000000000000014;
    case 9:
      return 0x66657250656D616ELL;
    case 10:
      return 0xD000000000000014;
    case 11:
      v4 = 0x656C6464696DLL;
      goto LABEL_31;
    case 12:
      return 0xD000000000000014;
    case 13:
      v4 = 0x796C696D6166;
LABEL_31:
      result = v4 & 0xFFFFFFFFFFFFLL | 0x614E000000000000;
      break;
    case 14:
      result = 0xD000000000000014;
      break;
    case 15:
      result = 0x66667553656D616ELL;
      break;
    case 16:
    case 20:
    case 24:
    case 60:
      result = 0xD000000000000015;
      break;
    case 17:
      result = 0x776F6E4B6F736C61;
      break;
    case 18:
      result = 0x646572705F6C7275;
      break;
    case 19:
      result = 7107189;
      break;
    case 21:
      result = 0x6942664F65746164;
      break;
    case 22:
    case 26:
    case 38:
    case 50:
    case 52:
      result = 0xD00000000000001CLL;
      break;
    case 23:
    case 27:
    case 39:
    case 51:
    case 53:
      result = 0xD000000000000012;
      break;
    case 25:
      result = 0x73726576696E6E61;
      break;
    case 28:
      result = 0xD00000000000001ELL;
      break;
    case 29:
      result = 0xD000000000000014;
      break;
    case 30:
      result = 0xD000000000000025;
      break;
    case 31:
    case 48:
      result = 0xD00000000000001BLL;
      break;
    case 32:
      result = 0x72705F7365746164;
      break;
    case 33:
      result = 0x7365746164;
      break;
    case 34:
      result = 0xD000000000000014;
      break;
    case 35:
      result = 0x697461707563636FLL;
      break;
    case 37:
      v3 = 0x4E6874726962;
LABEL_28:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6D61000000000000;
      break;
    case 40:
      result = 0xD00000000000001ALL;
      break;
    case 42:
      result = 0xD000000000000016;
      break;
    case 43:
      result = 0x6E6F6974616C6572;
      break;
    case 44:
      result = 0xD000000000000014;
      break;
    case 45:
      result = 0x69726F7661467369;
      break;
    case 46:
      result = 0x6572705F656D616ELL;
      break;
    case 47:
      result = 1701667182;
      break;
    case 49:
      result = 0xD000000000000011;
      break;
    case 54:
      result = 0x696669746E656469;
      break;
    case 55:
      result = 0x7265796F6C706D65;
      break;
    case 58:
      result = 0x636F737341736168;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

void sub_1C4D81488()
{
  sub_1C43FE96C();
  sub_1C456902C(&qword_1EC0C6E18, &qword_1C4F71180);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C44058BC();
  sub_1C43FD870();
  v2 = sub_1C4D85450();
  sub_1C444B100(&type metadata for CNContactStructs.Person.CodingKeys, v3, v2);
  sub_1C4EFF0C8();
  sub_1C442E784();
  sub_1C44CD358(v4, v5, MEMORY[0x1E69A9818]);
  sub_1C4449458();
  sub_1C441865C();
  sub_1C4F027E8();
  if (!v0)
  {
    v6 = type metadata accessor for CNContactStructs.Person(0);
    sub_1C443E4C4(1);
    sub_1C4EFEEF8();
    sub_1C4412A4C();
    sub_1C44CD358(v7, v8, MEMORY[0x1E69A9750]);
    sub_1C441DF58();
    sub_1C4F02778();
    sub_1C443E4C4(2);
    sub_1C4EFD548();
    sub_1C4432F18();
    sub_1C44CD358(v9, v10, MEMORY[0x1E69A92D0]);
    sub_1C4418670();
    sub_1C441865C();
    sub_1C4F027E8();
    v11 = sub_1C443E4C4(3);
    type metadata accessor for Source(v11);
    sub_1C440EB5C();
    sub_1C44CD358(v12, v13, &protocol conformance descriptor for Source);
    sub_1C4418670();
    sub_1C441865C();
    sub_1C4F027E8();
    sub_1C440A39C(v6[8]);
    sub_1C441DF58();
    sub_1C4F027E8();
    sub_1C4401774(v6[9]);
    sub_1C441B1F0(5);
    sub_1C440A39C(v6[10]);
    sub_1C441DF58();
    sub_1C4F027E8();
    sub_1C4401774(v6[11]);
    sub_1C441B1F0(7);
    sub_1C440A39C(v6[12]);
    sub_1C441DF58();
    sub_1C4F027E8();
    sub_1C4401774(v6[13]);
    sub_1C441B1F0(9);
    sub_1C440A39C(v6[14]);
    sub_1C441DF58();
    sub_1C4F027E8();
    sub_1C4401774(v6[15]);
    sub_1C441B1F0(11);
    sub_1C442C1EC();
    sub_1C4401774(v6[17]);
    sub_1C441B1F0(13);
    sub_1C442C1EC();
    sub_1C4401774(v6[19]);
    sub_1C441B1F0(15);
    sub_1C442C1EC();
    sub_1C4401774(v6[21]);
    sub_1C441B1F0(17);
    sub_1C442C1EC();
    sub_1C4401774(v6[23]);
    sub_1C441B1F0(19);
    sub_1C442C1EC();
    sub_1C4401774(v6[25]);
    sub_1C441B1F0(21);
    sub_1C442C1EC();
    sub_1C4401774(v6[27]);
    sub_1C441B1F0(23);
    sub_1C442C1EC();
    sub_1C442E728(v6[29]);
    sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
    sub_1C43FC6D0(&qword_1EDDFA578, MEMORY[0x1E69E6160]);
    sub_1C4D86E18();
    sub_1C4F02778();
    sub_1C442C1EC();
    sub_1C442E728(v6[31]);
    v14 = sub_1C4D86E18();
    sub_1C4D871DC(v14, v15, v16);
    sub_1C442C1EC();
    sub_1C4401774(v6[33]);
    sub_1C441B1F0(29);
    sub_1C442C1EC();
    sub_1C4401774(v6[35]);
    sub_1C441B1F0(31);
    sub_1C442C1EC();
    sub_1C442E728(v6[37]);
    v17 = sub_1C4D86E18();
    sub_1C4D871DC(v17, v18, v19);
    sub_1C442C1EC();
    sub_1C4401774(v6[39]);
    sub_1C441B1F0(35);
    sub_1C442C1EC();
    sub_1C4401774(v6[41]);
    sub_1C441B1F0(37);
    sub_1C442C1EC();
    sub_1C4401774(v6[43]);
    sub_1C441B1F0(39);
    sub_1C442C1EC();
    sub_1C4401774(v6[45]);
    sub_1C441B1F0(41);
    sub_1C442C1EC();
    sub_1C4401774(v6[47]);
    sub_1C441B1F0(43);
    sub_1C442C1EC();
    sub_1C4401774(v6[49]);
    sub_1C441B1F0(45);
    sub_1C442C1EC();
    sub_1C4401774(v6[51]);
    sub_1C441B1F0(47);
    sub_1C442C1EC();
    sub_1C4401774(v6[53]);
    sub_1C441B1F0(49);
    sub_1C442C1EC();
    sub_1C4401774(v6[55]);
    sub_1C441B1F0(51);
    sub_1C442C1EC();
    sub_1C4401774(v6[57]);
    sub_1C441B1F0(53);
    sub_1C442E728(v6[58]);
    sub_1C456902C(&qword_1EC0C6C40, &qword_1C4F70C88);
    sub_1C4D85828();
    sub_1C440F0C4();
    sub_1C441865C();
    sub_1C4F02778();
    v22 = sub_1C443E4C4(55);
    type metadata accessor for CNContactStructs.EmploymentRelationshipType(v22);
    sub_1C44CD0BC();
    sub_1C44CD358(v23, v24, &unk_1C4F70D1C);
    sub_1C4418670();
    sub_1C441865C();
    sub_1C4F02778();
    v25 = sub_1C443E4C4(56);
    type metadata accessor for CNContactStructs.VisualIdentifierRelationshipType(v25);
    sub_1C4485AF8();
    sub_1C44CD358(v26, v27, &unk_1C4F71010);
    sub_1C4418670();
    sub_1C441865C();
    sub_1C4F02778();
    sub_1C442E728(v6[61]);
    sub_1C456902C(&qword_1EC0C6C48, &qword_1C4F70C90);
    sub_1C4D858DC();
    sub_1C440F0C4();
    sub_1C441865C();
    sub_1C4F02778();
    sub_1C442E728(v6[62]);
    sub_1C456902C(&qword_1EC0C6C50, &qword_1C4F70C98);
    sub_1C4D85990();
    sub_1C440F0C4();
    sub_1C441865C();
    sub_1C4F02778();
    sub_1C442E728(v6[63]);
    sub_1C456902C(&qword_1EC0C6C58, &qword_1C4F70CA0);
    sub_1C4D85A44();
    sub_1C440F0C4();
    sub_1C441865C();
    sub_1C4F02778();
    sub_1C442E728(v6[64]);
    sub_1C456902C(&qword_1EC0C6C60, &qword_1C4F70CA8);
    sub_1C4D85AF8();
    sub_1C440F0C4();
    sub_1C441865C();
    sub_1C4F02778();
  }

  v20 = sub_1C43FE99C();
  v21(v20);
  sub_1C4402144();
  sub_1C43FBC80();
}

void sub_1C4D81D70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v24;
  a20 = v25;
  v315 = v21;
  v27 = v26;
  v281 = v28;
  v29 = sub_1C456902C(&qword_1EC0C6C38, &qword_1C4F70B38);
  sub_1C43FBD18(v29);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v30);
  sub_1C43FBC74();
  v280 = v31;
  v32 = sub_1C456902C(&qword_1EC0BAD38, &unk_1C4F70B40);
  sub_1C43FBD18(v32);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v33);
  sub_1C43FBC74();
  sub_1C43FD2C8(v34);
  sub_1C4EFEEF8();
  sub_1C4403200();
  v318 = v35;
  MEMORY[0x1EEE9AC00](v36);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v37);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v38);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v39);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v40);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v41);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v42);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v43);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v44);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v45);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v46);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v47);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v48);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v49);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v50);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v51);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v52);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v53);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v54);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v55);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v56);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v57);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v58);
  sub_1C4402024();
  MEMORY[0x1EEE9AC00](v59);
  sub_1C43FBF38();
  v308 = v60;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v61);
  sub_1C43FD230();
  v310 = v62;
  v63 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v63);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v64);
  sub_1C43FBC74();
  v311 = v65;
  sub_1C43FBE44();
  v285 = sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v284 = v66;
  MEMORY[0x1EEE9AC00](v67);
  sub_1C43FBCC4();
  sub_1C4422BD8();
  v283 = sub_1C456902C(&qword_1EC0C6DE0, &qword_1C4F71178);
  sub_1C43FCDF8();
  v282 = v68;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v69);
  v71 = v279 - v70;
  v72 = type metadata accessor for CNContactStructs.Person(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v73);
  sub_1C43FBCC4();
  sub_1C43FE61C();
  v319 = *(v74 + 20);
  v320 = v20;
  sub_1C4401E28();
  sub_1C440BAA8(v75, v76, v77, v78);
  v292 = v22 + v72[6];
  sub_1C4EFD4C8();
  v79 = v72[7];
  if (qword_1EDDFED28 != -1)
  {
    sub_1C44133AC();
    swift_once();
  }

  v80 = type metadata accessor for Source(0);
  sub_1C442B738(v80, &unk_1EDDFD088);
  sub_1C4408374();
  v293 = v79;
  sub_1C44CC80C(v81, v22 + v79, v82);
  v317 = v72[8];
  sub_1C4EFEE68();
  v316 = v72[10];
  sub_1C4EFE5D8();
  v314 = v72[12];
  sub_1C4EFE338();
  v313 = v72[14];
  sub_1C4EFE328();
  v309 = v72[16];
  sub_1C4EFE2C8();
  v307 = v72[18];
  sub_1C4EFE348();
  sub_1C44AE10C(v72[20]);
  sub_1C4EFE3A8();
  sub_1C44AE10C(v72[22]);
  sub_1C4EFEBD8();
  sub_1C44AE10C(v72[24]);
  sub_1C4EFE3D8();
  sub_1C44AE10C(v72[26]);
  sub_1C4EFE908();
  sub_1C44AE10C(v72[28]);
  sub_1C4EFE3B8();
  sub_1C44AE10C(v72[30]);
  sub_1C4EFE8F8();
  sub_1C44AE10C(v72[32]);
  sub_1C4EFE9D8();
  sub_1C44AE10C(v72[34]);
  sub_1C4EFEB18();
  sub_1C44AE10C(v72[36]);
  sub_1C4EFEC28();
  sub_1C44AE10C(v72[38]);
  sub_1C4EFE358();
  sub_1C44AE10C(v72[40]);
  sub_1C4EFEE38();
  sub_1C44AE10C(v72[42]);
  sub_1C4EFE948();
  sub_1C44AE10C(v72[44]);
  sub_1C4EFE778();
  sub_1C44AE10C(v72[46]);
  sub_1C4EFE588();
  sub_1C44AE10C(v72[48]);
  sub_1C4EFE318();
  sub_1C44AE10C(v72[50]);
  sub_1C4EFEBF8();
  v301 = v72[52];
  sub_1C4EFE858();
  v302 = v72[54];
  sub_1C4EFE938();
  v303 = v72[56];
  sub_1C4EFE928();
  v83 = v72[59];
  v84 = type metadata accessor for CNContactStructs.EmploymentRelationshipType(0);
  v305 = v83;
  sub_1C43FCF64();
  sub_1C440BAA8(v85, v86, v87, v84);
  v88 = v72[60];
  v89 = type metadata accessor for CNContactStructs.VisualIdentifierRelationshipType(0);
  v304 = v88;
  sub_1C4401E28();
  sub_1C440BAA8(v90, v91, v92, v93);
  v94 = v27[3];
  v312 = v27;
  sub_1C4417F50(v27, v94);
  sub_1C4D85450();
  v95 = v315;
  sub_1C4F02BC8();
  if (v95)
  {
    v315 = v95;
    v101 = 0;
    sub_1C441ABB0();
    sub_1C43FE28C(v102);
    sub_1C443E4A0();
    *(v103 - 256) = 0;
    v291 = 0;
  }

  else
  {
    v279[5] = v84;
    v279[4] = v89;
    LOBYTE(a10) = 0;
    sub_1C442E784();
    sub_1C44CD358(v96, v97, MEMORY[0x1E69A9838]);
    sub_1C4449458();
    v98 = v285;
    v99 = v71;
    v100 = v283;
    sub_1C4F026C8();
    (*(v284 + 32))(v22, v23, v98);
    LOBYTE(a10) = 1;
    sub_1C4412A4C();
    v134 = sub_1C44CD358(v132, v133, MEMORY[0x1E69A9778]);
    v135 = v311;
    v136 = v320;
    sub_1C4466E08();
    sub_1C4F02658();
    sub_1C444088C(v135, v22 + v319, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C43FE79C(4);
    v137 = v310;
    sub_1C4466E08();
    sub_1C4F026C8();
    v138 = v134;
    v139 = v100;
    v140 = v312;
    v279[3] = v138;
    v141 = v137;
    v142 = v318 + 40;
    v143 = *(v318 + 40);
    v143(v22 + v317, v141, v136);
    sub_1C4402038(5);
    v144 = sub_1C4F02618();
    v279[1] = v143;
    v279[2] = v142;
    v145 = (v22 + v72[9]);
    *v145 = v144;
    v145[1] = v146;
    v291 = v146;
    sub_1C43FE79C(6);
    sub_1C4F026C8();
    sub_1C441BF54();
    v147();
    sub_1C4402038(7);
    v148 = sub_1C4F02618();
    v149 = (v22 + v72[11]);
    *v149 = v148;
    v149[1] = v150;
    v290 = v150;
    sub_1C43FE79C(8);
    sub_1C4F026C8();
    sub_1C441BF54();
    v151();
    sub_1C4402038(9);
    v152 = sub_1C4F02618();
    v315 = 0;
    v154 = (v22 + v72[13]);
    *v154 = v152;
    v154[1] = v153;
    v289 = v153;
    sub_1C43FE79C(10);
    v155 = v315;
    sub_1C4F026C8();
    v315 = v155;
    if (v155)
    {
      sub_1C4435D80();
      v156(v99, v139);
      sub_1C441ABB0();
      sub_1C43FE28C(v157);
      v308 = 0;
      v310 = 0;
      v311 = 0;
      v101 = 1;
      goto LABEL_7;
    }

    sub_1C4401998(v313);
    sub_1C441BF54();
    v158();
    sub_1C4402038(11);
    v159 = v315;
    v160 = sub_1C4F02618();
    v311 = v161;
    v315 = v159;
    if (!v159)
    {
      v165 = (v22 + v72[15]);
      v166 = v311;
      *v165 = v160;
      v165[1] = v166;
      sub_1C43FE79C(12);
      sub_1C440DC10(v167, v168);
      v315 = 0;
      sub_1C43FF9A0();
      v169();
      v170 = sub_1C440C178(13);
      v310 = v171;
      v315 = 0;
      v172 = (v22 + v72[17]);
      *v172 = v170;
      v172[1] = v171;
      sub_1C43FE79C(14);
      sub_1C440DC10(v173, v174);
      v315 = 0;
      sub_1C43FF9A0();
      v175();
      v176 = sub_1C440C178(15);
      v308 = v177;
      v315 = 0;
      v178 = (v22 + v72[19]);
      *v178 = v176;
      v178[1] = v177;
      sub_1C43FE79C(16);
      sub_1C440DC10(v179, v180);
      v315 = 0;
      sub_1C446BD74(&v315);
      sub_1C43FF9A0();
      v181();
      v182 = sub_1C440C178(17);
      v306 = v183;
      v315 = 0;
      v184 = (v22 + v72[21]);
      *v184 = v182;
      v184[1] = v183;
      sub_1C43FE79C(18);
      sub_1C440DC10(v185, v186);
      v315 = 0;
      sub_1C446BD74(&v316);
      sub_1C43FF9A0();
      v187();
      sub_1C440C178(19);
      sub_1C4D86E34(v188, &v311);
      sub_1C444C0A4(v189, (v22 + v72[23]));
      sub_1C43FE79C(20);
      sub_1C440DC10(v190, v191);
      v315 = 0;
      sub_1C446BD74(&v317);
      sub_1C43FF9A0();
      v192();
      sub_1C440C178(21);
      sub_1C4D86E34(v193, &v310);
      sub_1C444C0A4(v194, (v22 + v72[25]));
      sub_1C43FE79C(22);
      sub_1C440DC10(v195, v196);
      v315 = 0;
      sub_1C446BD74(&v318);
      sub_1C43FF9A0();
      v197();
      sub_1C440C178(23);
      sub_1C4D86E34(v198, &v309);
      sub_1C444C0A4(v199, (v22 + v72[27]));
      sub_1C43FE79C(24);
      sub_1C440DC10(v200, v201);
      v315 = 0;
      sub_1C446BD74(&v320);
      sub_1C43FF9A0();
      v202();
      sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
      HIBYTE(v321) = 25;
      sub_1C440EE48(&qword_1EDDFEA58, MEMORY[0x1E69E6190]);
      sub_1C44A83E0();
      sub_1C4D86E28();
      sub_1C447CE90();
      sub_1C4F02658();
      v315 = 0;
      v203 = v72[29];
      v288 = a10;
      *(v22 + v203) = a10;
      sub_1C43FE79C(26);
      sub_1C440DC10(v204, v205);
      v315 = 0;
      sub_1C446BD74(&v322);
      sub_1C43FF9A0();
      v206();
      HIBYTE(v321) = 27;
      sub_1C44A83E0();
      sub_1C4D86E28();
      sub_1C447CE90();
      sub_1C4F02658();
      v315 = 0;
      v207 = v72[31];
      v287 = a10;
      *(v22 + v207) = a10;
      sub_1C43FE79C(28);
      sub_1C440DC10(v208, v209);
      v315 = 0;
      sub_1C446BD74(&a9);
      sub_1C43FF9A0();
      v210();
      sub_1C440C178(29);
      sub_1C4D86E34(v211, &v306);
      sub_1C444C0A4(v212, (v22 + v72[33]));
      sub_1C43FE79C(30);
      sub_1C440DC10(v213, v214);
      v315 = 0;
      sub_1C446BD74(&a10);
      sub_1C43FF9A0();
      v215();
      sub_1C440C178(31);
      sub_1C4D86E34(v216, &v305);
      sub_1C444C0A4(v217, (v22 + v72[35]));
      sub_1C43FE79C(32);
      sub_1C440DC10(v218, v219);
      v315 = 0;
      sub_1C446BD74(&a11);
      sub_1C43FF9A0();
      v220();
      HIBYTE(v321) = 33;
      sub_1C44A83E0();
      sub_1C4D86E28();
      sub_1C447CE90();
      sub_1C4F02658();
      v315 = 0;
      v221 = v72[37];
      v286 = a10;
      *(v22 + v221) = a10;
      sub_1C43FE79C(34);
      sub_1C440DC10(v222, v223);
      v315 = 0;
      sub_1C446BD74(&a12);
      sub_1C43FF9A0();
      v224();
      sub_1C440C178(35);
      sub_1C4D86E34(v225, &v303);
      sub_1C444C0A4(v226, (v22 + v72[39]));
      sub_1C43FE79C(36);
      sub_1C440DC10(v227, v228);
      v315 = 0;
      sub_1C446BD74(&a13);
      sub_1C43FF9A0();
      v229();
      sub_1C440C178(37);
      sub_1C4D86E34(v230, &v302);
      sub_1C444C0A4(v231, (v22 + v72[41]));
      sub_1C43FE79C(38);
      sub_1C440DC10(v232, v233);
      v315 = 0;
      sub_1C446BD74(&a14);
      sub_1C43FF9A0();
      v234();
      sub_1C440C178(39);
      sub_1C4D86E34(v235, &v301);
      sub_1C444C0A4(v236, (v22 + v72[43]));
      sub_1C43FE79C(40);
      sub_1C440DC10(v237, v238);
      v315 = 0;
      sub_1C446BD74(&a15);
      sub_1C43FF9A0();
      v239();
      sub_1C440C178(41);
      sub_1C4D86E34(v240, &v300);
      sub_1C444C0A4(v241, (v22 + v72[45]));
      sub_1C43FE79C(42);
      sub_1C440DC10(v242, v243);
      v315 = 0;
      sub_1C446BD74(&a16);
      sub_1C43FF9A0();
      v244();
      sub_1C440C178(43);
      sub_1C4D86E34(v245, &v299);
      sub_1C444C0A4(v246, (v22 + v72[47]));
      sub_1C43FE79C(44);
      sub_1C440DC10(v247, v248);
      v315 = 0;
      sub_1C446BD74(&a17);
      sub_1C43FF9A0();
      v249();
      sub_1C440C178(45);
      sub_1C4D86E34(v250, &v298);
      sub_1C444C0A4(v251, (v22 + v72[49]));
      sub_1C43FE79C(46);
      sub_1C440DC10(v252, v253);
      v315 = 0;
      sub_1C446BD74(&a18);
      sub_1C43FF9A0();
      v254();
      sub_1C440C178(47);
      sub_1C4D86E34(v255, &v297);
      sub_1C444C0A4(v256, (v22 + v72[51]));
      sub_1C43FE79C(48);
      sub_1C440DC10(v257, v258);
      v315 = 0;
      sub_1C43FF9A0();
      v259();
      sub_1C440C178(49);
      sub_1C4D86E34(v260, &v296);
      sub_1C444C0A4(v261, (v22 + v72[53]));
      sub_1C43FE79C(50);
      sub_1C440DC10(v262, v263);
      v315 = 0;
      sub_1C43FF9A0();
      v264();
      sub_1C440C178(51);
      sub_1C4D86E34(v265, &v295);
      sub_1C444C0A4(v266, (v22 + v72[55]));
      sub_1C43FE79C(52);
      sub_1C440DC10(v267, v268);
      v315 = 0;
      sub_1C43FF9A0();
      v269();
      sub_1C440C178(53);
      sub_1C4D86E34(v270, &v294);
      sub_1C444C0A4(v271, (v22 + v72[57]));
      sub_1C456902C(&qword_1EC0C6C40, &qword_1C4F70C88);
      HIBYTE(v321) = 54;
      sub_1C4D854A4();
      sub_1C4423DC8();
      v315 = 0;
      *(v22 + v72[58]) = a10;
      LOBYTE(a10) = 55;
      sub_1C44CD0BC();
      sub_1C44CD358(v272, v273, &unk_1C4F70D44);
      sub_1C4449458();
      sub_1C4D86E28();
      sub_1C447CE90();
      sub_1C4F02658();
      v315 = 0;
      sub_1C444088C(v279[10], v22 + v305, &qword_1EC0BAD38, &unk_1C4F70B40);
      LOBYTE(a10) = 56;
      sub_1C4485AF8();
      sub_1C44CD358(v274, v275, &unk_1C4F71038);
      sub_1C4449458();
      sub_1C4D86E28();
      sub_1C447CE90();
      sub_1C4F02658();
      v315 = 0;
      sub_1C444088C(v280, v22 + v304, &qword_1EC0C6C38, &qword_1C4F70B38);
      sub_1C456902C(&qword_1EC0C6C48, &qword_1C4F70C90);
      HIBYTE(v321) = 57;
      sub_1C4D85558();
      sub_1C4423DC8();
      v315 = 0;
      *(v22 + v72[61]) = a10;
      sub_1C456902C(&qword_1EC0C6C50, &qword_1C4F70C98);
      HIBYTE(v321) = 58;
      sub_1C4D8560C();
      sub_1C4423DC8();
      v315 = 0;
      *(v22 + v72[62]) = a10;
      sub_1C456902C(&qword_1EC0C6C58, &qword_1C4F70CA0);
      HIBYTE(v321) = 59;
      sub_1C4D856C0();
      sub_1C4423DC8();
      v315 = 0;
      *(v22 + v72[63]) = a10;
      sub_1C456902C(&qword_1EC0C6C60, &qword_1C4F70CA8);
      HIBYTE(v321) = 60;
      sub_1C4D85774();
      sub_1C4423DC8();
      v315 = 0;
      v276 = v72[64];
      v277 = sub_1C440FFB8();
      v278(v277);
      *(v22 + v276) = a10;
      sub_1C44CC80C(v22, v281, type metadata accessor for CNContactStructs.Person);
      sub_1C440962C(v312);
      sub_1C44D474C(v22, type metadata accessor for CNContactStructs.Person);
      goto LABEL_10;
    }

    v162 = sub_1C440FFB8();
    v163(v162);
    sub_1C441ABB0();
    sub_1C43FE28C(v164);
    v308 = 0;
    v310 = 0;
    v311 = 0;
    v101 = 1;
  }

  v140 = v312;
LABEL_7:
  sub_1C440962C(v140);
  if (v101)
  {
    (*(v284 + 8))(v22, v285);
  }

  sub_1C4420C3C(v22 + v319, &qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C4EFD548();
  sub_1C43FBCE0();
  (*(v104 + 8))(v292);
  sub_1C440636C();
  v105 = sub_1C446BD74(&v321);
  sub_1C44D474C(v105, v106);
  v107 = *(v318 + 8);
  v107(v22 + v317, v320);

  v108 = sub_1C4401998(v316);
  (v107)(v108);

  v109 = sub_1C4401998(v314);
  (v107)(v109);

  v110 = sub_1C4401998(v313);
  (v107)(v110);

  v111 = sub_1C4401998(v309);
  (v107)(v111);

  v112 = sub_1C4401998(v307);
  (v107)(v112);

  v113 = sub_1C441B634(&v315);
  (v107)(v113);

  v114 = sub_1C441B634(&v316);
  (v107)(v114);

  v115 = sub_1C441B634(&v317);
  (v107)(v115);

  v116 = sub_1C441B634(&v318);
  (v107)(v116);

  v117 = sub_1C441B634(&v320);
  (v107)(v117);

  v118 = sub_1C441B634(&v322);
  (v107)(v118);

  v119 = sub_1C441B634(&a9);
  (v107)(v119);

  v120 = sub_1C441B634(&a10);
  (v107)(v120);

  v121 = sub_1C441B634(&a11);
  (v107)(v121);

  v122 = sub_1C441B634(&a12);
  (v107)(v122);

  v123 = sub_1C441B634(&a13);
  (v107)(v123);

  v124 = sub_1C441B634(&a14);
  (v107)(v124);

  v125 = sub_1C441B634(&a15);
  (v107)(v125);

  v126 = sub_1C441B634(&a16);
  (v107)(v126);

  v127 = sub_1C441B634(&a17);
  (v107)(v127);

  v128 = sub_1C441B634(&a18);
  (v107)(v128);

  v129 = sub_1C4401998(v301);
  (v107)(v129);

  v130 = sub_1C4401998(v302);
  (v107)(v130);

  v131 = sub_1C4401998(v303);
  (v107)(v131);

  sub_1C4420C3C(v22 + v305, &qword_1EC0BAD38, &unk_1C4F70B40);
  sub_1C4420C3C(v22 + v304, &qword_1EC0C6C38, &qword_1C4F70B38);

LABEL_10:
  sub_1C43FBC80();
}