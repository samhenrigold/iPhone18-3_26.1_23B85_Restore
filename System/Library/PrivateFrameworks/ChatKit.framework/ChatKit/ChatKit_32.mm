uint64_t DetailsViewCoordinator.isScreenSharingAvailable(for:)(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v2[13] = sub_190D572A0();
  v2[14] = sub_190D57290();
  v4 = sub_190D57240();
  v2[15] = v4;
  v2[16] = v3;

  return MEMORY[0x1EEE6DFA0](sub_190AD6614, v4, v3);
}

uint64_t sub_190AD6614()
{
  v1 = [*(*(v0 + 96) + OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_conversation) recipients];
  v2 = sub_190D57180();

  v13 = MEMORY[0x1E69E7CC0];
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v2 + 32;
    v5 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_19021834C(v4, v0 + 16);
      sub_190824530((v0 + 16), (v0 + 48));
      sub_19084E158();
      if ((swift_dynamicCast() & 1) != 0 && *(v0 + 80))
      {
        MEMORY[0x193AF29E0]();
        if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_190D571A0();
        }

        sub_190D571E0();
        v5 = v13;
      }

      v4 += 32;
      --v3;
    }

    while (v3);
  }

  else
  {

    v5 = MEMORY[0x1E69E7CC0];
  }

  v6 = *(v0 + 88);
  v7 = swift_task_alloc();
  *(v7 + 16) = v6;
  v8 = sub_190AD6298(sub_190AD6D2C, v7, v5);
  *(v0 + 136) = v8;

  if (v8)
  {
    *(v0 + 144) = sub_190D57290();
    v10 = sub_190D57240();
    *(v0 + 152) = v10;
    *(v0 + 160) = v9;

    return MEMORY[0x1EEE6DFA0](sub_190AD687C, v10, v9);
  }

  else
  {

    v11 = *(v0 + 8);

    return v11(0);
  }
}

uint64_t sub_190AD687C()
{
  v1 = *(v0 + 96);
  v2 = OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_modernScreenSharingCapabilities;
  *(v0 + 168) = OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_modernScreenSharingCapabilities;
  if (*(*(v1 + v2) + 16))
  {

    v3 = *(v0 + 136);
    v4 = objc_opt_self();
    sub_190D52690();
    v5 = sub_190D56D60();

    *(v0 + 184) = [v4 isModernScreenSharingAvailableForEntity:v3 capabilities:v5];

    v6 = *(v0 + 120);
    v7 = *(v0 + 128);

    return MEMORY[0x1EEE6DFA0](sub_190AD6BE8, v6, v7);
  }

  else
  {
    v8 = swift_task_alloc();
    *(v0 + 176) = v8;
    *v8 = v0;
    v8[1] = sub_190AD69E8;

    return sub_190BE6CC8();
  }
}

uint64_t sub_190AD69E8()
{
  v1 = *v0;

  v2 = *(v1 + 160);
  v3 = *(v1 + 152);

  return MEMORY[0x1EEE6DFA0](sub_190AD6B08, v3, v2);
}

uint64_t sub_190AD6B08()
{

  v1 = *(v0 + 136);
  v2 = objc_opt_self();
  sub_190D52690();
  v3 = sub_190D56D60();

  *(v0 + 184) = [v2 isModernScreenSharingAvailableForEntity:v1 capabilities:v3];

  v4 = *(v0 + 120);
  v5 = *(v0 + 128);

  return MEMORY[0x1EEE6DFA0](sub_190AD6BE8, v4, v5);
}

uint64_t sub_190AD6BE8()
{
  v1 = *(v0 + 136);

  v2 = *(v0 + 184);
  v3 = *(v0 + 8);

  return v3(v2);
}

id sub_190AD6C54(id *a1)
{
  result = [*a1 defaultIMHandle];
  if (result)
  {
    v2 = result;
    v3 = [result ID];

    v4 = sub_190D56F10();
    v6 = v5;

    if (v4 == sub_190D528D0() && v6 == v7)
    {
      v9 = 1;
    }

    else
    {
      v9 = sub_190D58760();
    }

    return (v9 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_190AD6D60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v7 = *(v4 + OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_conversation);
  v8 = sub_190D528D0();
  v10 = v9;
  v11 = *(v6 + OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_modernScreenSharingCapabilities);
  sub_190D52690();
  sub_190A0BE18(v8, v10, a4, v11);

  return result;
}

uint64_t sub_190AD6E0C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_19082CAEC;

  return DetailsViewCoordinator.isScreenSharingAvailable(for:)(a1);
}

uint64_t sub_190AD6ED4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53AE8, &qword_190DD5AE0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_190D51440();
  v3 = *(v12[0] - 8);
  MEMORY[0x1EEE9AC00](v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_190D519C0();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_190D56EC0();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_190D51460();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = sub_190D50CF0();
  __swift_allocate_value_buffer(v10, qword_1EAD9DEF0);
  __swift_project_value_buffer(v10, qword_1EAD9DEF0);
  sub_190D56E50();
  sub_190D51980();
  (*(v3 + 104))(v5, *MEMORY[0x1E6968DF0], v12[0]);
  sub_190D51470();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_190D50CE0();
}

uint64_t sub_190AD71B8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55080, qword_190DD5FF0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v137 = &v118 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53AE8, &qword_190DD5AE0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v125 = &v118 - v3;
  v4 = sub_190D519C0();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v135 = &v118 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_190D51440();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v118 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_190D56EC0();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v118 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_190D51460();
  v136 = v13;
  v138 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v118 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5CFC0, &qword_190DF0938);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53950, &unk_190DF0940);
  v132 = v16;
  v17 = *(v16 - 8);
  v128 = *(v17 + 72);
  v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v19 = swift_allocObject();
  v121 = v19;
  *(v19 + 16) = xmmword_190DF02F0;
  v122 = *(v16 + 48);
  *(v19 + v18) = 0;
  v20 = v19 + v18;
  sub_190D56E50();
  v131 = sub_190ADD800();
  *v9 = v131;
  v21 = *MEMORY[0x1E6968E00];
  v22 = *(v7 + 104);
  v129 = v6;
  v130 = v22;
  v126 = v21;
  v22(v9, v21, v6);
  sub_190D51980();
  sub_190D51470();
  v23 = *(v138 + 56);
  v138 += 56;
  v133 = v23;
  v23(v125, 1, 1, v13);
  sub_190D50B30();
  v134 = v20;
  sub_190D50B70();
  v24 = v128;
  v25 = (v20 + v128);
  v26 = v132;
  v122 = *(v132 + 48);
  *v25 = 1;
  v124 = v12;
  sub_190D56E50();
  *v9 = v131;
  v27 = v6;
  v127 = v7 + 104;
  v28 = v130;
  v130(v9, v21, v27);
  sub_190D51980();
  sub_190D51470();
  v29 = v125;
  v133(v125, 1, 1, v136);
  sub_190D50B30();
  v30 = v15;
  sub_190D50B70();
  v122 = 2 * v24;
  v31 = v134;
  v120 = *(v26 + 48);
  *(v134 + 2 * v24) = 2;
  sub_190D56E50();
  *v9 = v131;
  v28(v9, v126, v129);
  sub_190D51980();
  sub_190D51470();
  v32 = v136;
  v133(v29, 1, 1, v136);
  sub_190D50B30();
  sub_190D50B70();
  v33 = v128;
  v120 = v31 + v122 + v128;
  v34 = v132;
  v122 = *(v132 + 48);
  *v120 = 3;
  sub_190D56E50();
  v35 = v130;
  *v9 = v131;
  v35(v9, v126, v129);
  sub_190D51980();
  sub_190D51470();
  v36 = v125;
  v133(v125, 1, 1, v32);
  sub_190D50B30();
  sub_190D50B70();
  v122 = 4 * v33;
  v120 = *(v34 + 48);
  *(v134 + 4 * v33) = 4;
  sub_190D56E50();
  *v9 = v131;
  v37 = v126;
  v38 = v129;
  v35(v9, v126, v129);
  sub_190D51980();
  sub_190D51470();
  v133(v36, 1, 1, v136);
  sub_190D50B30();
  sub_190D50B70();
  v39 = v134;
  v40 = (v134 + v122 + v128);
  v122 = *(v132 + 48);
  *v40 = 5;
  v120 = "RECENTLY_DELETED";
  sub_190D56E50();
  v41 = v130;
  *v9 = v131;
  v41(v9, v37, v38);
  sub_190D51980();
  v123 = v30;
  sub_190D51470();
  v42 = v36;
  v43 = v136;
  v133(v42, 1, 1, v136);
  sub_190D50B30();
  sub_190D50B70();
  v122 = *(v132 + 48);
  *(v39 + 6 * v128) = 6;
  sub_190D56E50();
  v44 = v130;
  *v9 = v131;
  v45 = v126;
  v44(v9, v126, v129);
  sub_190D51980();
  sub_190D51470();
  v46 = v125;
  v133(v125, 1, 1, v43);
  sub_190D50B30();
  sub_190D50B70();
  v122 = 8 * v128;
  v47 = v134;
  v118 = (v134 + 7 * v128);
  v48 = v132;
  v119 = *(v132 + 48);
  *v118 = 7;
  sub_190D56E50();
  v49 = v130;
  v50 = v131;
  *v9 = v131;
  v51 = v45;
  v52 = v129;
  v49(v9, v51, v129);
  sub_190D51980();
  sub_190D51470();
  v133(v46, 1, 1, v136);
  sub_190D50B30();
  sub_190D50B70();
  v119 = *(v48 + 48);
  *(v47 + v122) = 8;
  sub_190D56E50();
  *v9 = v50;
  v53 = v126;
  v54 = v130;
  v130(v9, v126, v52);
  sub_190D51980();
  sub_190D51470();
  v55 = v133;
  v133(v46, 1, 1, v136);
  sub_190D50B30();
  sub_190D50B70();
  v56 = v134;
  v120 = v134 + v122 + v128;
  v122 = *(v132 + 48);
  *v120 = 9;
  sub_190D56E50();
  v57 = v131;
  *v9 = v131;
  v54(v9, v53, v129);
  sub_190D51980();
  sub_190D51470();
  v55(v46, 1, 1, v136);
  sub_190D50B30();
  sub_190D50B70();
  v58 = v128;
  v122 = *(v132 + 48);
  *(v56 + 10 * v128) = 10;
  sub_190D56E50();
  *v9 = v57;
  v59 = v126;
  v60 = v130;
  v130(v9, v126, v129);
  sub_190D51980();
  sub_190D51470();
  v133(v46, 1, 1, v136);
  sub_190D50B30();
  sub_190D50B70();
  v120 = v134 + 11 * v58;
  v122 = *(v132 + 48);
  *v120 = 11;
  sub_190D56E50();
  v61 = v131;
  *v9 = v131;
  v60(v9, v59, v129);
  sub_190D51980();
  sub_190D51470();
  v62 = v46;
  v63 = v133;
  v133(v46, 1, 1, v136);
  sub_190D50B30();
  sub_190D50B70();
  v64 = v128;
  v120 = v134 + 12 * v128;
  v122 = *(v132 + 48);
  *v120 = 12;
  sub_190D56E50();
  *v9 = v61;
  v65 = v130;
  v130(v9, v126, v129);
  sub_190D51980();
  sub_190D51470();
  v63(v62, 1, 1, v136);
  sub_190D50B30();
  sub_190D50B70();
  v120 = v134 + 13 * v64;
  v66 = v132;
  v122 = *(v132 + 48);
  *v120 = 13;
  sub_190D56E50();
  v67 = v131;
  *v9 = v131;
  v68 = v126;
  v69 = v129;
  v65(v9, v126, v129);
  sub_190D51980();
  sub_190D51470();
  v70 = v133;
  v133(v62, 1, 1, v136);
  sub_190D50B30();
  sub_190D50B70();
  v122 = *(v66 + 48);
  *(v134 + 14 * v128) = 14;
  sub_190D56E50();
  *v9 = v67;
  v71 = v69;
  v72 = v130;
  v130(v9, v68, v71);
  sub_190D51980();
  sub_190D51470();
  v73 = v62;
  v74 = v62;
  v75 = v136;
  v70(v74, 1, 1, v136);
  sub_190D50B30();
  v76 = v73;
  sub_190D50B70();
  v122 = 16 * v128;
  v119 = v134 + 15 * v128;
  v77 = v132;
  v120 = *(v132 + 48);
  *v119 = 15;
  sub_190D56E50();
  *v9 = v131;
  v78 = v126;
  v79 = v129;
  v72(v9, v126, v129);
  sub_190D51980();
  sub_190D51470();
  v80 = v133;
  v133(v76, 1, 1, v75);
  sub_190D50B30();
  sub_190D50B70();
  v119 = v134 + v122;
  v120 = *(v77 + 48);
  *v119 = 16;
  sub_190D56E50();
  v82 = v130;
  v81 = v131;
  *v9 = v131;
  v82(v9, v78, v79);
  sub_190D51980();
  sub_190D51470();
  v83 = v136;
  v80(v125, 1, 1, v136);
  sub_190D50B30();
  sub_190D50B70();
  v120 = v134 + v122 + v128;
  v122 = *(v132 + 48);
  *v120 = 17;
  sub_190D56E50();
  *v9 = v81;
  v84 = v126;
  v82(v9, v126, v79);
  sub_190D51980();
  sub_190D51470();
  v85 = v133;
  v133(v125, 1, 1, v83);
  sub_190D50B30();
  sub_190D50B70();
  v86 = v128;
  v120 = v134 + 18 * v128;
  v122 = *(v132 + 48);
  *v120 = 18;
  sub_190D56E50();
  v87 = v130;
  *v9 = v131;
  v87(v9, v84, v79);
  sub_190D51980();
  sub_190D51470();
  v88 = v125;
  v85(v125, 1, 1, v83);
  sub_190D50B30();
  sub_190D50B70();
  v89 = v134;
  v120 = v134 + 19 * v86;
  v122 = *(v132 + 48);
  *v120 = 19;
  sub_190D56E50();
  v91 = v130;
  v90 = v131;
  *v9 = v131;
  v91(v9, v126, v129);
  sub_190D51980();
  sub_190D51470();
  v92 = v136;
  v93 = v133;
  v133(v88, 1, 1, v136);
  sub_190D50B30();
  sub_190D50B70();
  v94 = v132;
  v122 = *(v132 + 48);
  *(v89 + 20 * v128) = 20;
  sub_190D56E50();
  *v9 = v90;
  v95 = v126;
  v91(v9, v126, v129);
  sub_190D51980();
  sub_190D51470();
  v96 = v125;
  v93(v125, 1, 1, v92);
  sub_190D50B30();
  v97 = v96;
  sub_190D50B70();
  v98 = v128;
  v99 = v134;
  v120 = v134 + 21 * v128;
  v122 = *(v94 + 48);
  *v120 = 21;
  sub_190D56E50();
  v100 = v130;
  v101 = v131;
  *v9 = v131;
  v102 = v95;
  v103 = v129;
  v100(v9, v102, v129);
  sub_190D51980();
  sub_190D51470();
  v133(v97, 1, 1, v136);
  sub_190D50B30();
  sub_190D50B70();
  v122 = *(v132 + 48);
  *(v99 + 22 * v98) = 22;
  sub_190D56E50();
  *v9 = v101;
  v104 = v126;
  v130(v9, v126, v103);
  sub_190D51980();
  sub_190D51470();
  v105 = v133;
  v133(v97, 1, 1, v136);
  sub_190D50B30();
  sub_190D50B70();
  v106 = v128;
  v120 = v134 + 23 * v128;
  v107 = v132;
  v122 = *(v132 + 48);
  *v120 = 23;
  sub_190D56E50();
  v108 = v130;
  v109 = v131;
  *v9 = v131;
  v108(v9, v104, v129);
  sub_190D51980();
  sub_190D51470();
  v105(v97, 1, 1, v136);
  sub_190D50B30();
  sub_190D50B70();
  v110 = v134;
  v122 = *(v107 + 48);
  *(v134 + 24 * v106) = 24;
  sub_190D56E50();
  *v9 = v109;
  v111 = v129;
  v130(v9, v126, v129);
  sub_190D51980();
  sub_190D51470();
  v112 = v125;
  v133(v125, 1, 1, v136);
  sub_190D50B30();
  v113 = v112;
  sub_190D50B70();
  v114 = (v110 + 25 * v128);
  v128 = *(v132 + 48);
  *v114 = 25;
  sub_190D56E50();
  v115 = v130;
  *v9 = v131;
  v115(v9, v126, v111);
  sub_190D51980();
  sub_190D51470();
  v133(v113, 1, 1, v136);
  sub_190D50B30();
  sub_190D50B70();
  v116 = sub_1908232DC(v121);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_1EAD9DF08 = v116;
  return result;
}

unint64_t sub_190AD9174()
{
  result = qword_1EAD45490;
  if (!qword_1EAD45490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45490);
  }

  return result;
}

uint64_t sub_190AD91C8()
{
  v1 = *v0;
  sub_190D58870();
  MEMORY[0x193AF4110](v1 + 1);
  return sub_190D588C0();
}

uint64_t sub_190AD9240(uint64_t a1)
{
  v2 = *v1;
  sub_190D58870();
  MEMORY[0x193AF4110](v2 + 1);
  return sub_190D588C0();
}

uint64_t sub_190AD9284@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_190ADD960(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_190AD92C4()
{
  result = qword_1EAD454D0;
  if (!qword_1EAD454D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD454D0);
  }

  return result;
}

unint64_t sub_190AD931C()
{
  result = qword_1EAD454A8;
  if (!qword_1EAD454A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD454A8);
  }

  return result;
}

unint64_t sub_190AD9374()
{
  result = qword_1EAD45488;
  if (!qword_1EAD45488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45488);
  }

  return result;
}

unint64_t sub_190AD93D8()
{
  result = qword_1EAD454B8;
  if (!qword_1EAD454B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD454B8);
  }

  return result;
}

unint64_t sub_190AD942C()
{
  result = qword_1EAD454B0;
  if (!qword_1EAD454B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD454B0);
  }

  return result;
}

unint64_t sub_190AD9484()
{
  result = qword_1EAD454C0;
  if (!qword_1EAD454C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD454C0);
  }

  return result;
}

unint64_t sub_190AD953C()
{
  result = qword_1EAD5CF38;
  if (!qword_1EAD5CF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5CF38);
  }

  return result;
}

uint64_t sub_190AD9590(uint64_t a1)
{
  v2 = sub_190AD953C();

  return MEMORY[0x1EEDB2C20](a1, v2);
}

unint64_t sub_190AD95E0()
{
  result = qword_1EAD454A0;
  if (!qword_1EAD454A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD454A0);
  }

  return result;
}

unint64_t sub_190AD9638()
{
  result = qword_1EAD45480;
  if (!qword_1EAD45480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45480);
  }

  return result;
}

unint64_t sub_190AD9690()
{
  result = qword_1EAD45498;
  if (!qword_1EAD45498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45498);
  }

  return result;
}

double sub_190AD96E4()
{
  if (qword_1EAD51C28 != -1)
  {
    swift_once();
  }

  sub_190D52690();
  return result;
}

uint64_t sub_190AD9740(uint64_t a1)
{
  v2 = sub_190AD9484();

  return MEMORY[0x1EEDB3D68](a1, v2);
}

unint64_t sub_190AD97E4()
{
  result = qword_1EAD5CF50;
  if (!qword_1EAD5CF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5CF50);
  }

  return result;
}

uint64_t sub_190AD987C()
{
  v0 = sub_190D51440();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_190D519C0();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_190D56EC0();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_190D51460();
  __swift_allocate_value_buffer(v6, qword_1EAD9DF10);
  __swift_project_value_buffer(v6, qword_1EAD9DF10);
  sub_190D56E50();
  sub_190D51980();
  (*(v1 + 104))(v3, *MEMORY[0x1E6968DF0], v0);
  return sub_190D51470();
}

uint64_t sub_190AD9A70(uint64_t a1)
{
  v1[14] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53AE8, &qword_190DD5AE0);
  v1[15] = swift_task_alloc();
  sub_190D519C0();
  v1[16] = swift_task_alloc();
  v2 = sub_190D51440();
  v1[17] = v2;
  v1[18] = *(v2 - 8);
  v1[19] = swift_task_alloc();
  sub_190D56EC0();
  v1[20] = swift_task_alloc();
  v3 = sub_190D51460();
  v1[21] = v3;
  v1[22] = *(v3 - 8);
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5CFB0, &qword_190DF0920);
  v1[25] = v4;
  v1[26] = *(v4 - 8);
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_190AD9CC8, 0, 0);
}

uint64_t sub_190AD9CC8()
{
  v1 = [objc_opt_self() sharedFeatureFlags];
  v2 = [v1 isModernFilteringEnabled];

  if (!v2)
  {
    v0[11] = &unk_1F0403098;
    v29 = CKMessageUnknownFilteringEnabled(v3, v4);
    if (v29)
    {
      sub_190CAA4FC(&unk_1F04030C0);
    }

    if (CKMessageSpamFilteringEnabled(v29, v30))
    {
      sub_190CAA4FC(&unk_1F04030E8);
    }

    else if (IMIsOscarEnabled())
    {
      v0[29] = objc_opt_self();
      v0[30] = sub_190D572A0();
      v0[31] = sub_190D57290();
      v40 = sub_190D57240();
      v42 = sub_190ADA658;
LABEL_42:

      return MEMORY[0x1EEE6DFA0](v42, v40, v41);
    }

    v0[35] = objc_opt_self();
    v0[36] = sub_190D572A0();
    v0[37] = sub_190D57290();
    v40 = sub_190D57240();
    v42 = sub_190ADAA3C;
    goto LABEL_42;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53C70, &qword_190DD63D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_190DD1D90;
  v6 = sub_190D57AA0();
  *(inited + 32) = v6;
  v8 = CKMessageUnknownFilteringEnabled(v6, v7);
  if (v8)
  {
    v8 = sub_190835CF0(1, 2, 1, inited);
    inited = v8;
    *(v8 + 16) = 2;
    *(v8 + 40) = 3;
  }

  if (CKMessageSpamFilteringEnabled(v8, v9))
  {
    v11 = *(inited + 16);
    v10 = *(inited + 24);
    v12 = v10 >> 1;
    v13 = v11 + 1;
    if (v10 >> 1 <= v11)
    {
      inited = sub_190835CF0((v10 > 1), v11 + 1, 1, inited);
      v10 = *(inited + 24);
      v12 = v10 >> 1;
    }

    *(inited + 16) = v13;
    *(inited + 8 * v11 + 32) = 4;
    v14 = v11 + 2;
    if (v12 < v14)
    {
      inited = sub_190835CF0((v10 > 1), v14, 1, inited);
    }

    *(inited + 16) = v14;
    *(inited + 8 * v13 + 32) = 5;
  }

  v16 = *(inited + 16);
  v15 = *(inited + 24);
  v17 = v15 >> 1;
  v18 = v16 + 1;
  if (v15 >> 1 <= v16)
  {
    inited = sub_190835CF0((v15 > 1), v16 + 1, 1, inited);
    v15 = *(inited + 24);
    v17 = v15 >> 1;
  }

  *(inited + 16) = v18;
  *(inited + 8 * v16 + 32) = 9;
  v19 = v16 + 2;
  if (v17 < v19)
  {
    inited = sub_190835CF0((v15 > 1), v19, 1, inited);
  }

  *(inited + 16) = v19;
  v20 = (inited + 32);
  *(inited + 32 + 8 * v18) = 7;
  v63 = sub_190D57A90();
  v21 = *(inited + 16);
  if (v21)
  {
    v22 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v24 = *v20++;
      v23 = v24;
      v25 = v24 - 1;
      if ((v24 - 1) >= 0x1A || ((0x3FFF3FFu >> v25) & 1) == 0)
      {
        break;
      }

      v26 = byte_190DF0A16[v25];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_1908368AC(0, *(v22 + 2) + 1, 1, v22);
      }

      v28 = *(v22 + 2);
      v27 = *(v22 + 3);
      if (v28 >= v27 >> 1)
      {
        v22 = sub_1908368AC((v27 > 1), v28 + 1, 1, v22);
      }

      *(v22 + 2) = v28 + 1;
      v22[v28 + 32] = v26;
      if (!--v21)
      {
        goto LABEL_29;
      }
    }

    sub_190D582B0();
    v0[8] = 0xE000000000000000;
    v0[7] = 0;
    MEMORY[0x193AF28B0](0x20676E697373694DLL, 0xE800000000000000);
    MEMORY[0x193AF28B0](0xD000000000000010, 0x8000000190E71EC0);
    MEMORY[0x193AF28B0](0x20726F6620, 0xE500000000000000);
    v0[12] = v23;
    type metadata accessor for IMConversationListFilterMode(0);
    goto LABEL_46;
  }

LABEL_29:
  v31 = *(v63 + 16);
  if (v31)
  {
    v32 = (v63 + 32);
    v33 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v35 = *v32++;
      v34 = v35;
      v36 = v35 - 1;
      if ((v35 - 1) >= 0x1A || ((0x3FFF3FFu >> v36) & 1) == 0)
      {
        break;
      }

      v37 = byte_190DF0A16[v36];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = sub_1908368AC(0, *(v33 + 2) + 1, 1, v33);
      }

      v39 = *(v33 + 2);
      v38 = *(v33 + 3);
      if (v39 >= v38 >> 1)
      {
        v33 = sub_1908368AC((v38 > 1), v39 + 1, 1, v33);
      }

      *(v33 + 2) = v39 + 1;
      v33[v39 + 32] = v37;
      if (!--v31)
      {
        goto LABEL_47;
      }
    }

    sub_190D582B0();
    v0[10] = 0xE000000000000000;
    v0[9] = 0;
    MEMORY[0x193AF28B0](0x20676E697373694DLL, 0xE800000000000000);
    MEMORY[0x193AF28B0](0xD000000000000010, 0x8000000190E71EC0);
    MEMORY[0x193AF28B0](0x20726F6620, 0xE500000000000000);
    v0[13] = v34;
    type metadata accessor for IMConversationListFilterMode(0);
LABEL_46:
    sub_190D58450();
    return sub_190D58510();
  }

LABEL_47:

  v43 = v0[26];
  v58 = v0[28];
  v59 = v0[25];
  v44 = v0[24];
  v60 = v0[22];
  v61 = v0[27];
  v56 = v0[23];
  v57 = v0[21];
  v45 = v0[19];
  v46 = v0[18];
  v55 = v0[17];
  v62 = v0[15];

  sub_190D51430();
  sub_1909D5154();
  sub_190D50A90();
  sub_190D56E50();
  *v45 = sub_190ADD800();
  (*(v46 + 104))(v45, *MEMORY[0x1E6968E00], v55);
  sub_190D51980();
  sub_190D51470();
  (*(v60 + 16))(v56, v44, v57);
  sub_190D50A90();
  (*(v60 + 56))(v62, 1, 1, v57);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5CFB8, &unk_190DF0928);
  v47 = *(v43 + 72);
  v48 = (*(v43 + 80) + 32) & ~*(v43 + 80);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_190DD1DA0;
  v50 = v49 + v48;
  v51 = *(v43 + 16);
  v51(v50, v58, v59);
  v51(v50 + v47, v61, v59);
  sub_190D50AC0();
  v52 = *(v43 + 8);
  v52(v61, v59);
  (*(v60 + 8))(v44, v57);
  v52(v58, v59);

  v53 = v0[1];

  return v53();
}

uint64_t sub_190ADA658()
{
  v1 = *(v0 + 232);

  *(v0 + 256) = [v1 sharedConversationList];

  return MEMORY[0x1EEE6DFA0](sub_190ADA70C, 0, 0);
}

uint64_t sub_190ADA70C(uint64_t a1)
{
  *(v1 + 264) = sub_190D57290();
  v3 = sub_190D57240();

  return MEMORY[0x1EEE6DFA0](sub_190ADA7CC, v3, v2);
}

uint64_t sub_190ADA7CC()
{
  v1 = *(v0 + 256);

  *(v0 + 272) = [v1 conversationsForFilterMode_];

  return MEMORY[0x1EEE6DFA0](sub_190ADA884, 0, 0);
}

uint64_t sub_190ADA884()
{
  v1 = v0[34];
  sub_190ADD800();
  v2 = sub_190D57180();

  if (CKMessageUnknownFilteringEnabled(v3, v4))
  {
  }

  else
  {
    if (v2 >> 62)
    {
      v5 = sub_190D581C0();
    }

    else
    {
      v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v5)
    {
      goto LABEL_11;
    }
  }

  v6 = v0[11];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_1908368AC(0, *(v6 + 2) + 1, 1, v6);
  }

  v8 = *(v6 + 2);
  v7 = *(v6 + 3);
  if (v8 >= v7 >> 1)
  {
    v6 = sub_1908368AC((v7 > 1), v8 + 1, 1, v6);
  }

  *(v6 + 2) = v8 + 1;
  v6[v8 + 32] = 8;
  v0[11] = v6;
LABEL_11:
  v0[35] = objc_opt_self();
  v0[36] = sub_190D572A0();
  v0[37] = sub_190D57290();
  v10 = sub_190D57240();

  return MEMORY[0x1EEE6DFA0](sub_190ADAA3C, v10, v9);
}

uint64_t sub_190ADAA3C()
{
  v1 = *(v0 + 280);

  *(v0 + 304) = [v1 sharedConversationList];

  return MEMORY[0x1EEE6DFA0](sub_190ADAAF0, 0, 0);
}

uint64_t sub_190ADAAF0(uint64_t a1)
{
  *(v1 + 312) = sub_190D57290();
  v3 = sub_190D57240();

  return MEMORY[0x1EEE6DFA0](sub_190ADABB0, v3, v2);
}

uint64_t sub_190ADABB0()
{
  v1 = *(v0 + 304);

  *(v0 + 320) = [v1 conversationsForFilterMode_];

  return MEMORY[0x1EEE6DFA0](sub_190ADAC68, 0, 0);
}

uint64_t sub_190ADAC68()
{
  v1 = v0[40];
  sub_190ADD800();
  v2 = sub_190D57180();

  if (CKMessageUnknownFilteringEnabled(v3, v4))
  {

    v5 = v0[11];
  }

  else
  {
    if (v2 >> 62)
    {
      v6 = sub_190D581C0();
    }

    else
    {
      v6 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v5 = v0[11];
    if (!v6)
    {
      goto LABEL_11;
    }
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_1908368AC(0, *(v5 + 2) + 1, 1, v5);
  }

  v8 = *(v5 + 2);
  v7 = *(v5 + 3);
  if (v8 >= v7 >> 1)
  {
    v5 = sub_1908368AC((v7 > 1), v8 + 1, 1, v5);
  }

  *(v5 + 2) = v8 + 1;
  v5[v8 + 32] = 6;
LABEL_11:
  v9 = v0[28];
  v10 = v0[25];
  v11 = v0[26];
  v13 = v0[21];
  v12 = v0[22];
  v14 = v0[15];
  sub_190D51430();
  sub_1909D5154();
  sub_190D50A90();
  (*(v12 + 56))(v14, 1, 1, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5CFB8, &unk_190DF0928);
  v15 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_190DD1D90;
  (*(v11 + 16))(v16 + v15, v9, v10);
  sub_190D50AC0();
  (*(v11 + 8))(v9, v10);

  v17 = v0[1];

  return v17();
}

uint64_t sub_190ADAF3C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_190221DA0;

  return sub_190AD9A70(a1);
}

unint64_t sub_190ADAFD8()
{
  result = qword_1EAD459F0;
  if (!qword_1EAD459F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD459F0);
  }

  return result;
}

unint64_t sub_190ADB030()
{
  result = qword_1EAD45A00;
  if (!qword_1EAD45A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45A00);
  }

  return result;
}

uint64_t sub_190ADB0BC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD557E8, &unk_190DDF120);
  v2[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_190ADB158, 0, 0);
}

uint64_t sub_190ADB158()
{
  v43 = v0;
  if (qword_1EAD45C50 != -1)
  {
    swift_once();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 40) = Strong;
  if (Strong)
  {
    v2 = [objc_opt_self() sharedFeatureFlags];
    v3 = [v2 isModernFilteringEnabled];

    if (v3)
    {
      sub_190D50810();
      *(v0 + 193) = *(v0 + 192);
      sub_190D572A0();
      *(v0 + 48) = sub_190D57290();
      v4 = sub_190D57240();
      v6 = v5;
      v7 = sub_190ADB8DC;
LABEL_21:

      return MEMORY[0x1EEE6DFA0](v7, v4, v6);
    }

    v13 = sub_190D50810();
    *(v0 + 194) = *(v0 + 184);
    if (CKMessageUnknownFilteringEnabled(v13, v14) || (sub_190D50810(), !*(v0 + 189)) || (sub_190D50810(), *(v0 + 190) == 6))
    {
      v15 = 0;
    }

    else
    {
      sub_190D50810();
      v15 = *(v0 + 191) != 8;
    }

    sub_190D50810();
    v16 = sub_190A5E14C(*(v0 + 185), &unk_1F0403110);
    v18 = v16 && CKMessageSpamFilteringEnabled(v16, v17) == 0;
    v19 = sub_190D50810();
    if (*(v0 + 186) == 8)
    {
      v19 = IMIsOscarEnabled();
      if (!v15 && !v18 && v19)
      {
LABEL_19:
        if (CKMessageUnknownFilteringEnabled(v19, v20))
        {
          sub_190D572A0();
          *(v0 + 56) = sub_190D57290();
          v4 = sub_190D57240();
          v6 = v21;
          v7 = sub_190ADB98C;
          goto LABEL_21;
        }

        sub_190D50810();
        v25 = *(v0 + 187);
        if (v25 > 5)
        {
          switch(v25)
          {
            case 6u:
              *(v0 + 72) = objc_opt_self();
              *(v0 + 80) = sub_190D572A0();
              *(v0 + 88) = sub_190D57290();
              v4 = sub_190D57240();
              v6 = v32;
              v7 = sub_190ADBAF0;
              goto LABEL_21;
            case 7u:
              goto LABEL_35;
            case 8u:
              *(v0 + 128) = objc_opt_self();
              *(v0 + 136) = sub_190D572A0();
              *(v0 + 144) = sub_190D57290();
              v4 = sub_190D57240();
              v6 = v30;
              v7 = sub_190ADBF3C;
              goto LABEL_21;
          }
        }

        else
        {
          if (v25 - 1 < 5)
          {
LABEL_35:
            if (qword_1EAD46290 != -1)
            {
              swift_once();
            }

            v26 = sub_190D53040();
            __swift_project_value_buffer(v26, qword_1EAD9D7D8);
            v27 = sub_190D53020();
            v28 = sub_190D576C0();
            if (os_log_type_enabled(v27, v28))
            {
              v29 = swift_slowAlloc();
              *v29 = 0;
              _os_log_impl(&dword_19020E000, v27, v28, "Filter Unknown Senders disabled, these cases should be unreachable.", v29, 2u);
              MEMORY[0x193AF7A40](v29, -1, -1);
            }

LABEL_40:
            sub_190D506B0();
            swift_unknownObjectRelease();

            v24 = *(v0 + 8);
            goto LABEL_27;
          }

          if (!*(v0 + 187))
          {
            sub_190D572A0();
            *(v0 + 64) = sub_190D57290();
            v4 = sub_190D57240();
            v6 = v31;
            v7 = sub_190ADBA70;
            goto LABEL_21;
          }
        }

        if (qword_1EAD46290 != -1)
        {
          swift_once();
        }

        v33 = sub_190D53040();
        __swift_project_value_buffer(v33, qword_1EAD9D7D8);
        sub_190D50920();
        v34 = sub_190D53020();
        v35 = sub_190D576C0();

        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          v37 = swift_slowAlloc();
          v42 = v37;
          *v36 = 136315138;
          sub_190D50810();
          v38 = sub_190D56F50();
          v40 = sub_19021D9F8(v38, v39, &v42);

          *(v36 + 4) = v40;
          _os_log_impl(&dword_19020E000, v34, v35, "Filter Unknown Senders disabled, unhandled filter mode passed: %s.", v36, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v37);
          MEMORY[0x193AF7A40](v37, -1, -1);
          MEMORY[0x193AF7A40](v36, -1, -1);
        }

        goto LABEL_40;
      }
    }

    else if (!v15 && !v18)
    {
      goto LABEL_19;
    }

    v22 = *(v0 + 32);
    sub_190D50830();
    v23 = sub_190D50590();
    (*(*(v23 - 8) + 56))(v22, 1, 1, v23);
    sub_190D50460();
    sub_190ADD8A0();
    swift_allocError();
    sub_190D50840();

    sub_190ADD8F8(v22);
    swift_willThrow();
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1EAD46290 != -1)
    {
      swift_once();
    }

    v8 = sub_190D53040();
    __swift_project_value_buffer(v8, qword_1EAD9D7D8);
    v9 = sub_190D53020();
    v10 = sub_190D57680();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_19020E000, v9, v10, "No messages navigator provided, unable to change views.", v11, 2u);
      MEMORY[0x193AF7A40](v11, -1, -1);
    }

    sub_190ADD1E8();
    swift_allocError();
    *v12 = 0;
    swift_willThrow();
  }

  v24 = *(v0 + 8);
LABEL_27:

  return v24();
}

uint64_t sub_190ADB8DC()
{
  v1 = *(v0 + 193);
  v2 = *(v0 + 40);

  sub_190ADC310(v1 + 1, v2);

  return MEMORY[0x1EEE6DFA0](sub_190ADD9E4, 0, 0);
}

uint64_t sub_190ADB98C()
{
  v1 = *(v0 + 194);
  v2 = *(v0 + 40);

  v3 = [v2 conversationListController];
  [v3 setFilterMode_];

  v4 = [v2 conversationListController];
  [v4 updateConversationList];

  [v2 showConversationListWithAnimation_];

  return MEMORY[0x1EEE6DFA0](sub_190ADD9E4, 0, 0);
}

uint64_t sub_190ADBA70()
{
  v1 = *(v0 + 40);

  [v1 showConversationListWithAnimation_];

  return MEMORY[0x1EEE6DFA0](sub_190ADD9E4, 0, 0);
}

uint64_t sub_190ADBAF0()
{
  v1 = *(v0 + 72);

  *(v0 + 96) = [v1 sharedConversationList];

  return MEMORY[0x1EEE6DFA0](sub_190ADBB78, 0, 0);
}

uint64_t sub_190ADBB78(uint64_t a1)
{
  *(v1 + 104) = sub_190D57290();
  v3 = sub_190D57240();

  return MEMORY[0x1EEE6DFA0](sub_190ADBC04, v3, v2);
}

uint64_t sub_190ADBC04()
{
  v1 = *(v0 + 96);

  *(v0 + 112) = [v1 conversationsForFilterMode_];

  return MEMORY[0x1EEE6DFA0](sub_190ADBC90, 0, 0);
}

uint64_t sub_190ADBC90()
{
  v1 = v0[14];
  sub_190ADD800();
  v2 = sub_190D57180();

  if (v2 >> 62)
  {
    v3 = sub_190D581C0();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3)
  {
    v0[15] = sub_190D57290();
    v5 = sub_190D57240();

    return MEMORY[0x1EEE6DFA0](sub_190ADBDF4, v5, v4);
  }

  else
  {
    sub_190ADD1E8();
    swift_allocError();
    *v6 = 2;
    swift_willThrow();
    swift_unknownObjectRelease();

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_190ADBDF4()
{
  v1 = *(v0 + 40);

  v2 = [v1 conversationListController];
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = v3;
    [*(v0 + 40) showConversationListWithAnimation_];
    [v4 _showRecentlyDeletedModalActionTapped];
  }

  return MEMORY[0x1EEE6DFA0](sub_190ADBEC4, 0, 0);
}

uint64_t sub_190ADBEC4(uint64_t a1)
{
  sub_190D506B0();
  swift_unknownObjectRelease();

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_190ADBF3C()
{
  v1 = *(v0 + 128);

  *(v0 + 152) = [v1 sharedConversationList];

  return MEMORY[0x1EEE6DFA0](sub_190ADBFC4, 0, 0);
}

uint64_t sub_190ADBFC4(uint64_t a1)
{
  *(v1 + 160) = sub_190D57290();
  v3 = sub_190D57240();

  return MEMORY[0x1EEE6DFA0](sub_190ADC050, v3, v2);
}

uint64_t sub_190ADC050()
{
  v1 = *(v0 + 152);

  *(v0 + 168) = [v1 conversationsForFilterMode_];

  return MEMORY[0x1EEE6DFA0](sub_190ADC0DC, 0, 0);
}

uint64_t sub_190ADC0DC()
{
  v1 = v0[21];
  sub_190ADD800();
  v2 = sub_190D57180();

  if (v2 >> 62)
  {
    v3 = sub_190D581C0();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3)
  {
    v0[22] = sub_190D57290();
    v5 = sub_190D57240();

    return MEMORY[0x1EEE6DFA0](sub_190ADC240, v5, v4);
  }

  else
  {
    sub_190ADD1E8();
    swift_allocError();
    *v6 = 1;
    swift_willThrow();
    swift_unknownObjectRelease();

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_190ADC240()
{
  v1 = *(v0 + 40);

  v2 = [v1 conversationListController];
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = v3;
    [*(v0 + 40) showConversationListWithAnimation_];
    [v4 _showOscarModalActionTapped];
  }

  return MEMORY[0x1EEE6DFA0](sub_190ADD9E4, 0, 0);
}

id sub_190ADC310(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53C70, &qword_190DD63D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_190DD1D90;
  *(inited + 32) = a1;
  v5 = sub_19021E69C(inited);
  swift_setDeallocating();
  v12 = v5;
  if ((sub_190D57AF0() & 1) == 0)
  {
    v6 = sub_190D57AA0();
    sub_19022C974(&v11, v6);
  }

  v7 = [a2 conversationListController];
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    v9 = v8;
    byte_1EAD44F80 = 1;
    +[CKConversationListFilterModeUtilities invalidateEligibleFilterModesCache]_0();
    sub_1908A7E38(v12, 1);

    [v9 updateConversationList];
  }

  else
  {
  }

  return [a2 showConversationListWithAnimation_];
}

uint64_t sub_190ADC4C4(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5CF98, &qword_190DF08D8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5CFA0, &qword_190DF08E0);
  MEMORY[0x1EEE9AC00](v3);
  sub_190D50BE0();
  sub_190D50BD0();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5CFA8, &qword_190DF0910);
  sub_190D50BC0();

  sub_190D50BD0();
  sub_190D50BF0();
  return sub_190D50BB0();
}

uint64_t sub_190ADC660(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_190221DA4;

  return sub_190ADB0BC(a1, v4);
}

uint64_t sub_190ADC700@<X0>(uint64_t *a2@<X8>)
{
  result = sub_190ADD23C();
  *a2 = result;
  return result;
}

uint64_t sub_190ADC728(uint64_t a1)
{
  v2 = sub_1909D5004();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

unint64_t sub_190ADC768()
{
  result = qword_1EAD456E8;
  if (!qword_1EAD456E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD456E8);
  }

  return result;
}

unint64_t sub_190ADC7C0()
{
  result = qword_1EAD456F8;
  if (!qword_1EAD456F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD456F8);
  }

  return result;
}

unint64_t sub_190ADC8A4()
{
  result = qword_1EAD456F0;
  if (!qword_1EAD456F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD456F0);
  }

  return result;
}

uint64_t sub_190ADC8F8()
{
  v0 = sub_190D51440();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_190D519C0();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_190D56EC0();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_190D51460();
  __swift_allocate_value_buffer(v6, qword_1EAD9DF40);
  __swift_project_value_buffer(v6, qword_1EAD9DF40);
  sub_190D56E50();
  sub_190D51980();
  (*(v1 + 104))(v3, *MEMORY[0x1E6968DF0], v0);
  return sub_190D51470();
}

uint64_t sub_190ADCAEC(uint64_t a1, uint64_t *a2)
{
  v3 = sub_190D50D00();
  __swift_allocate_value_buffer(v3, a2);
  v4 = __swift_project_value_buffer(v3, a2);
  v5 = *MEMORY[0x1E695A590];
  v6 = *(*(v3 - 8) + 104);

  return v6(v4, v5, v3);
}

uint64_t sub_190ADCB90()
{
  if (qword_1EAD45C50 != -1)
  {
    swift_once();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v0[3] = Strong;
  if (Strong)
  {
    sub_190D572A0();
    v0[4] = sub_190D57290();
    v3 = sub_190D57240();

    return MEMORY[0x1EEE6DFA0](sub_190ADCD94, v3, v2);
  }

  else
  {
    if (qword_1EAD46290 != -1)
    {
      swift_once();
    }

    v4 = sub_190D53040();
    __swift_project_value_buffer(v4, qword_1EAD9D7D8);
    v5 = sub_190D53020();
    v6 = sub_190D57680();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_19020E000, v5, v6, "No messages navigator provided, unable to change views.", v7, 2u);
      MEMORY[0x193AF7A40](v7, -1, -1);
    }

    sub_190ADD1E8();
    swift_allocError();
    *v8 = 0;
    swift_willThrow();
    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_190ADCD94()
{
  v1 = *(v0 + 24);

  [v1 showConversationListWithAnimation_];

  return MEMORY[0x1EEE6DFA0](sub_190ADCE10, 0, 0);
}

uint64_t sub_190ADCE10(uint64_t a1)
{
  sub_190D506B0();
  swift_unknownObjectRelease();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_190ADCEEC@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a5@<X8>)
{
  if (*a1 == -1)
  {
    v7 = a2(0);
  }

  else
  {
    swift_once();
    v7 = a2(0);
  }

  v8 = v7;
  v9 = __swift_project_value_buffer(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

uint64_t sub_190ADCF94(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_190221DA0;

  return sub_190ADCB70(a1);
}

uint64_t sub_190ADD02C(uint64_t a1)
{
  v2 = sub_190ADC8A4();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

uint64_t getEnumTagSinglePayload for ConversationListEntityFilterMode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE7)
  {
    goto LABEL_17;
  }

  if (a2 + 25 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 25) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 25;
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

      return (*a1 | (v4 << 8)) - 25;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 25;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1A;
  v8 = v6 - 26;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ConversationListEntityFilterMode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 25 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 25) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE7)
  {
    v4 = 0;
  }

  if (a2 > 0xE6)
  {
    v5 = ((a2 - 231) >> 8) + 1;
    *result = a2 + 25;
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
    *result = a2 + 25;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_190ADD1E8()
{
  result = qword_1EAD5CF78;
  if (!qword_1EAD5CF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5CF78);
  }

  return result;
}

uint64_t sub_190ADD23C()
{
  v0 = sub_190D50C80();
  v32 = *(v0 - 8);
  v33 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v31 = v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD557E8, &unk_190DDF120);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v30 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v29 = v25 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53AE8, &qword_190DD5AE0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v34 = v25 - v7;
  v8 = sub_190D51440();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_190D519C0();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v13 = sub_190D56EC0();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v26 = sub_190D51460();
  v14 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v25[1] = v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v27 = v25 - v17;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5CF80, &qword_190DF08C0);
  sub_190D56E50();
  sub_190D51980();
  v18 = *MEMORY[0x1E6968DF0];
  v19 = *(v9 + 104);
  v19(v11, v18, v8);
  sub_190D51470();
  sub_190D56E50();
  sub_190D51980();
  v19(v11, v18, v8);
  v20 = v34;
  sub_190D51470();
  (*(v14 + 56))(v20, 0, 1, v26);
  v35[0] = 26;
  sub_190D56E50();
  *v11 = sub_190ADD800();
  v19(v11, *MEMORY[0x1E6968E00], v8);
  sub_190D51980();
  sub_190D51470();
  v21 = v29;
  sub_190D505A0();
  v22 = sub_190D50590();
  v23 = *(*(v22 - 8) + 56);
  v23(v21, 0, 1, v22);
  v23(v30, 1, 1, v22);
  (*(v32 + 104))(v31, *MEMORY[0x1E695A500], v33);
  sub_190ADD84C();
  sub_190AD953C();
  return sub_190D50860();
}

unint64_t sub_190ADD800()
{
  result = qword_1EAD466B0;
  if (!qword_1EAD466B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAD466B0);
  }

  return result;
}

unint64_t sub_190ADD84C()
{
  result = qword_1EAD5CF88;
  if (!qword_1EAD5CF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5CF88);
  }

  return result;
}

unint64_t sub_190ADD8A0()
{
  result = qword_1EAD5CF90;
  if (!qword_1EAD5CF90)
  {
    sub_190D50460();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5CF90);
  }

  return result;
}

uint64_t sub_190ADD8F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD557E8, &unk_190DDF120);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_190ADD960(uint64_t a1)
{
  if ((a1 - 1) >= 0x1A)
  {
    return 26;
  }

  else
  {
    return a1 - 1;
  }
}

unint64_t sub_190ADD988()
{
  result = qword_1EAD5CFC8;
  if (!qword_1EAD5CFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5CFC8);
  }

  return result;
}

uint64_t sub_190ADD9F0()
{
  v0 = sub_190D53040();
  __swift_allocate_value_buffer(v0, qword_1EAD9DF70);
  __swift_project_value_buffer(v0, qword_1EAD9DF70);
  sub_190D53010();
  return sub_190D53030();
}

uint64_t sub_190ADDA5C()
{
  v0 = sub_190D53040();
  __swift_allocate_value_buffer(v0, qword_1EAD9DF88);
  __swift_project_value_buffer(v0, qword_1EAD9DF88);
  sub_190D53010();
  return sub_190D53030();
}

uint64_t sub_190ADDAC8()
{
  v0 = sub_190D53040();
  __swift_allocate_value_buffer(v0, qword_1EAD9DFA0);
  __swift_project_value_buffer(v0, qword_1EAD9DFA0);
  sub_190D53010();
  return sub_190D53030();
}

uint64_t sub_190ADDB34()
{
  v0 = sub_190D53040();
  __swift_allocate_value_buffer(v0, qword_1EAD9DFB8);
  __swift_project_value_buffer(v0, qword_1EAD9DFB8);
  sub_190D53010();
  return sub_190D53030();
}

uint64_t sub_190ADDBA0()
{
  v0 = sub_190D53040();
  __swift_allocate_value_buffer(v0, qword_1EAD9DFD0);
  __swift_project_value_buffer(v0, qword_1EAD9DFD0);
  sub_190D53010();
  return sub_190D53030();
}

uint64_t sub_190ADDC0C()
{
  v0 = sub_190D53040();
  __swift_allocate_value_buffer(v0, qword_1EAD9DFE8);
  __swift_project_value_buffer(v0, qword_1EAD9DFE8);
  sub_190D53010();
  return sub_190D53030();
}

void *CKTipCollectionViewCell.miniTipUIView.getter()
{
  v1 = OBJC_IVAR____TtC7ChatKit23CKTipCollectionViewCell_miniTipUIView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void CKTipCollectionViewCell.miniTipUIView.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC7ChatKit23CKTipCollectionViewCell_miniTipUIView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id CKTipCollectionViewCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id CKTipCollectionViewCell.init(frame:)()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC7ChatKit23CKTipCollectionViewCell_miniTipUIView] = 0;
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
}

Swift::Void __swiftcall CKTipCollectionViewCell.setTipHostingView(_:)(UIView_optional *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC7ChatKit23CKTipCollectionViewCell_miniTipUIView;
  swift_beginAccess();
  v5 = *&v1[v4];
  if (v5)
  {
    if (!a1)
    {
      goto LABEL_5;
    }

    sub_1902188FC(0, &qword_1EAD46530, 0x1E69DD250);
    v6 = v5;
    v7 = a1;
    v8 = sub_190D57D90();

    if (v8)
    {
      return;
    }

    v5 = *&v2[v4];
    if (v5)
    {
LABEL_5:
      [v5 removeFromSuperview];
      v5 = *&v2[v4];
    }
  }

  else
  {
    if (!a1)
    {
      return;
    }

    v5 = 0;
  }

  *&v2[v4] = a1;
  v9 = a1;

  if (a1)
  {
    [(UIView_optional *)v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    v10 = [v2 contentView];
    [v10 addSubview_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820, &unk_190DD76C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_190DD86A0;
    v12 = [(UIView_optional *)v9 leadingAnchor];
    v13 = [v2 contentView];
    v14 = [v13 safeAreaLayoutGuide];

    v15 = [v14 leadingAnchor];
    v16 = [objc_allocWithZone(CKUIBehavior) init];
    [v16 tipCellLeadingInset];
    v18 = v17;

    v19 = [v12 constraintEqualToAnchor:v15 constant:v18];
    *(inited + 32) = v19;
    v20 = [(UIView_optional *)v9 trailingAnchor];
    v21 = [v2 contentView];
    v22 = [v21 safeAreaLayoutGuide];

    v23 = [v22 trailingAnchor];
    v24 = [objc_allocWithZone(CKUIBehavior) init];
    [v24 tipCellTrailingInset];
    v26 = v25;

    v27 = [v20 constraintEqualToAnchor:v23 constant:v26];
    *(inited + 40) = v27;
    v28 = [(UIView_optional *)v9 topAnchor];
    v29 = [v2 contentView];
    v30 = [v29 topAnchor];

    v31 = [v28 constraintEqualToAnchor_];
    *(inited + 48) = v31;
    v32 = [(UIView_optional *)v9 bottomAnchor];
    v33 = [v2 contentView];
    v34 = [v33 bottomAnchor];

    v35 = [v32 constraintEqualToAnchor_];
    *(inited + 56) = v35;
    sub_190CAA5E8(inited);
    v36 = objc_opt_self();
    sub_1902188FC(0, &qword_1EAD45040, 0x1E696ACD8);
    v37 = sub_190D57160();

    [v36 activateConstraints_];
  }
}

id CKTipCollectionViewCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double (*sub_190ADE524(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_190842164();
  return sub_190AB6AE4;
}

void sub_190ADE584()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53C80, &unk_190DD64E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_190DE4300;
  v1 = IMBalloonExtensionIDWithSuffix();
  if (!v1)
  {
    __break(1u);
    goto LABEL_11;
  }

  v2 = v1;
  v3 = sub_190D56F10();
  v5 = v4;

  *(v0 + 32) = v3;
  *(v0 + 40) = v5;
  v6 = IMBalloonExtensionIDWithSuffix();
  if (!v6)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v7 = v6;
  v8 = sub_190D56F10();
  v10 = v9;

  *(v0 + 48) = v8;
  *(v0 + 56) = v10;
  v11 = IMStickersExtensionIdentifier();
  v12 = IMBalloonExtensionIDWithSuffix();

  if (!v12)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v13 = sub_190D56F10();
  v15 = v14;

  *(v0 + 64) = v13;
  *(v0 + 72) = v15;
  v16 = IMBalloonExtensionIDWithSuffix();
  if (!v16)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v17 = v16;
  v18 = sub_190D56F10();
  v20 = v19;

  *(v0 + 80) = v18;
  *(v0 + 88) = v20;
  v21 = IMBalloonExtensionIDWithSuffix();
  if (!v21)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v22 = v21;
  v23 = sub_190D56F10();
  v25 = v24;

  *(v0 + 96) = v23;
  *(v0 + 104) = v25;
  v26 = IMBalloonExtensionIDWithSuffix();
  if (!v26)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v27 = v26;
  v28 = sub_190D56F10();
  v30 = v29;

  *(v0 + 112) = v28;
  *(v0 + 120) = v30;
  v31 = IMBalloonExtensionIDWithSuffix();
  if (!v31)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v32 = v31;
  v33 = sub_190D56F10();
  v35 = v34;

  *(v0 + 128) = v33;
  *(v0 + 136) = v35;
  v36 = IMBalloonExtensionIDWithSuffix();
  if (v36)
  {
    v37 = v36;
    v38 = sub_190D56F10();
    v40 = v39;

    *(v0 + 144) = v38;
    *(v0 + 152) = v40;
    return;
  }

LABEL_17:
  __break(1u);
}

double (*sub_190ADE7A8(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_190ADE56C();
  return sub_190AB6B4C;
}

double (*sub_190ADE7F0(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_19084216C();
  return sub_190AB6B9C;
}

double (*sub_190ADE838(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_190842170();
  return sub_190AB6BEC;
}

double (*sub_190ADE88C(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_190842164();
  return sub_190AB7C50;
}

uint64_t sub_190ADE8EC(uint64_t (*a1)(void))
{
  if (*(v1 + 24))
  {
    v2 = *(v1 + 24);
  }

  else
  {
    v2 = a1();
    *(v1 + 24) = v2;
    sub_190D52690();
  }

  sub_190D52690();
  return v2;
}

void sub_190ADE950()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53C80, &unk_190DD64E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_190DD86E0;
  v1 = IMBalloonExtensionIDWithSuffix();
  if (!v1)
  {
    __break(1u);
    goto LABEL_12;
  }

  v2 = v1;
  v3 = sub_190D56F10();
  v5 = v4;

  *(v0 + 32) = v3;
  *(v0 + 40) = v5;
  v6 = IMBalloonExtensionIDWithSuffix();
  if (!v6)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = v6;
  v8 = sub_190D56F10();
  v10 = v9;

  *(v0 + 48) = v8;
  *(v0 + 56) = v10;
  v11 = IMStickersExtensionIdentifier();
  v12 = IMBalloonExtensionIDWithSuffix();

  if (!v12)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_190D56F10();
  v15 = v14;

  *(v0 + 64) = v13;
  *(v0 + 72) = v15;
  v16 = IMBalloonExtensionIDWithSuffix();
  if (!v16)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v17 = v16;
  v18 = sub_190D56F10();
  v20 = v19;

  *(v0 + 80) = v18;
  *(v0 + 88) = v20;
  v21 = IMBalloonExtensionIDWithSuffix();
  if (!v21)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v22 = v21;
  v23 = sub_190D56F10();
  v25 = v24;

  *(v0 + 96) = v23;
  *(v0 + 104) = v25;
  v26 = IMBalloonExtensionIDWithSuffix();
  if (!v26)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v27 = v26;
  v28 = sub_190D56F10();
  v30 = v29;

  *(v0 + 112) = v28;
  *(v0 + 120) = v30;
  v31 = IMBalloonExtensionIDWithSuffix();
  if (!v31)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v32 = v31;
  v33 = sub_190D56F10();
  v35 = v34;

  *(v0 + 128) = v33;
  *(v0 + 136) = v35;
  v36 = IMBalloonExtensionIDWithSuffix();
  if (!v36)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v37 = v36;
  v38 = sub_190D56F10();
  v40 = v39;

  *(v0 + 144) = v38;
  *(v0 + 152) = v40;
  v41 = IMBalloonExtensionIDWithSuffix();
  if (v41)
  {
    v42 = v41;
    v43 = sub_190D56F10();
    v45 = v44;

    *(v0 + 160) = v43;
    *(v0 + 168) = v45;
    return;
  }

LABEL_19:
  __break(1u);
}

double (*sub_190ADEBAC(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_190ADE8D4();
  return sub_190AB7C54;
}

double (*sub_190ADEBF4(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_19084216C();
  return sub_190AB7C58;
}

double (*sub_190ADEC3C(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_190842170();
  return sub_190AB7C5C;
}

id sub_190ADF074()
{
  result = [objc_opt_self() sharedBehaviors];
  if (result)
  {
    qword_1EAD452C8 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_190ADF0D8()
{
  v0 = [objc_opt_self() animationNamesForDomain_];
  v1 = sub_190D57180();

  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = (v1 + 40);
    v5 = MEMORY[0x1E69E7CC0];
    while (v3 < *(v1 + 16))
    {
      v7 = *(v4 - 1);
      v6 = *v4;
      sub_190D52690();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_1908354D4(0, *(v5 + 2) + 1, 1, v5);
      }

      v9 = *(v5 + 2);
      v8 = *(v5 + 3);
      if (v9 >= v8 >> 1)
      {
        v5 = sub_1908354D4((v8 > 1), v9 + 1, 1, v5);
      }

      ++v3;
      *(v5 + 2) = v9 + 1;
      v10 = &v5[16 * v9];
      *(v10 + 4) = v7;
      *(v10 + 5) = v6;
      v4 += 2;
      if (v2 == v3)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_9:
  }
}

uint64_t (*static TextEffectsMenuFactory.systemSupportedEffectNames.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1EAD45948 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

void sub_190ADF2E4(uint64_t a1, uint64_t a2)
{
  v2 = IMTextEffectOrderedSupportedNames();
  v3 = sub_190D57180();

  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = v3 + 40;
    v21 = v4 - 1;
    v7 = MEMORY[0x1E69E7CC0];
    v22 = v3 + 40;
    do
    {
      v23 = v7;
      v8 = (v6 + 16 * v5);
      v9 = v5;
      while (1)
      {
        if (v9 >= *(v3 + 16))
        {
          __break(1u);
          return;
        }

        v11 = *(v8 - 1);
        v10 = *v8;
        v12 = qword_1EAD45948;
        sub_190D52690();
        if (v12 != -1)
        {
          swift_once();
        }

        v13 = swift_beginAccess();
        v14 = qword_1EAD45950;
        v24[0] = v11;
        v24[1] = v10;
        MEMORY[0x1EEE9AC00](v13);
        v20[2] = v24;
        sub_190D52690();
        v15 = sub_190CA8558(sub_1909F5BC8, v20, v14);

        if (v15)
        {
          break;
        }

        ++v9;

        v8 += 2;
        if (v4 == v9)
        {
          v7 = v23;
          goto LABEL_17;
        }
      }

      v16 = sub_190D56ED0();
      v17 = IMTextEffectTypeFromName();

      v7 = v23;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1908368C0(0, *(v7 + 2) + 1, 1, v7);
      }

      v19 = *(v7 + 2);
      v18 = *(v7 + 3);
      if (v19 >= v18 >> 1)
      {
        v7 = sub_1908368C0((v18 > 1), v19 + 1, 1, v7);
      }

      v5 = v9 + 1;
      *(v7 + 2) = v19 + 1;
      *&v7[8 * v19 + 32] = v17;
      v6 = v22;
    }

    while (v21 != v9);
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

LABEL_17:

  off_1EAD45968 = v7;
}

double sub_190ADF55C(void *a1, void *a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_190D52690();
  return result;
}

double sub_190ADF5DC(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a3 = a1;

  return result;
}

uint64_t (*static TextEffectsMenuFactory.orderedSupportedEffects.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1EAD45960 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

double sub_190ADF6CC@<D0>(void *a1@<X3>, uint64_t *a2@<X4>, uint64_t *a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a4 = *a2;
  sub_190D52690();
  return result;
}

double sub_190ADF734(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = *a1;
  v9 = *a5;
  sub_190D52690();
  if (v9 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a6 = v8;

  return result;
}

uint64_t static TextEffectsMenuFactory.textStyleKeyCommands(action:configureImages:configureAttributedTitles:selectedText:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _s7ChatKit22TextEffectsMenuFactoryC20textStyleKeyCommands6action15configureImages0L16AttributedTitles06activeC6Styles08selectedC0SaySo12UIKeyCommandCG10ObjectiveC8SelectorVSg_S2bSo06IMTextH0VSStFZ_0(a1, a2, a3, 0);
  v4 = v3;
  if (v3 >> 62)
  {
    sub_1902188FC(0, &qword_1EAD44E30, 0x1E69DC8B0);
    v5 = sub_190D58530();
  }

  else
  {
    sub_190D52690();
    sub_190D58770();
    sub_1902188FC(0, &qword_1EAD44E30, 0x1E69DC8B0);
    v5 = v4;
  }

  return v5;
}

id sub_190ADFB70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t), unint64_t *a9, void *a10)
{
  a8(a3, a4, a5, a6);
  sub_1902188FC(0, a9, a10);
  v10 = sub_190D57160();

  return v10;
}

id sub_190ADFEE8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t), unint64_t *a5, void *a6)
{
  a4(a3, a2);
  sub_1902188FC(0, a5, a6);
  v8 = sub_190D57160();

  return v8;
}

id TextEffectsMenuFactory.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TextEffectsMenuFactory.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TextEffectsMenuFactory();
  return objc_msgSendSuper2(&v2, sel_init);
}

id TextEffectsMenuFactory.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for TextEffectsMenuFactory();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t _s7ChatKit22TextEffectsMenuFactoryC18keyCommandInputKey3forSSSgSo16IMTextEffectTypeV_tFZ_0(uint64_t a1)
{
  if (qword_1EAD45960 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = 0;
  do
  {
    if (*(off_1EAD45968 + 2) == v2)
    {
      return 0;
    }

    v3 = v2 + 1;
    v4 = *(off_1EAD45968 + v2++ + 4);
  }

  while (v4 != a1);
  if ((v3 - 1) > 9)
  {
    return 0;
  }

  if (v3 == 10)
  {
    return 48;
  }

  else
  {
    return sub_190D58720();
  }
}

void _s7ChatKit22TextEffectsMenuFactoryC016textStylePaletteE006activeC6Styles08selectedC07handlerSo6UIMenuCSo06IMTextH0V_SSyAK_So8UIActionCtctFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = MEMORY[0x1E69E7CC0];
  sub_1902188FC(0, &qword_1EAD464F0, 0x1E69DC628);
  for (i = 0; i != 32; i += 8)
  {
    v7 = *(&unk_1F0403138 + i + 32);
    if (v7 == 1 || v7 == 2 || v7 == 8 || v7 == 4)
    {
      v8 = sub_190D56ED0();

      v9 = [objc_opt_self() systemImageNamed_];
    }

    else
    {
      v9 = 0;
    }

    if (qword_1EAD452C0 != -1)
    {
      swift_once();
    }

    v10 = qword_1EAD452C8;
    v11 = sub_190D56ED0();
    v12 = [v10 __ck_localizedString_];

    if (!v12)
    {
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
      return;
    }

    sub_190D56F10();

    v13 = swift_allocObject();
    v13[2] = a4;
    v13[3] = a5;
    v13[4] = v7;
    v14 = v9;
    sub_190D50920();
    v15 = sub_190D57DC0();
    [v15 setState_];
    if (v7 == 2)
    {
      v16 = [objc_opt_self() sharedBehaviors];
      if (!v16)
      {
        goto LABEL_27;
      }

      v17 = v16;
      v18 = [v16 transcriptTextFont];

      if (!v18)
      {
        goto LABEL_28;
      }

      v19 = sub_190D56ED0();
      v20 = [v18 ck:v19 canToggleItalicTraitInText:?];

      [v15 setAttributes_];
    }

    v21 = v15;
    MEMORY[0x193AF29E0]();
    if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_190D571A0();
    }

    sub_190D571E0();
  }

  v22 = sub_190D56ED0();
  v23 = [v10 __ck_localizedString_];

  if (!v23)
  {
    goto LABEL_29;
  }

  sub_190D56F10();

  if (v26 >> 62)
  {
    sub_1902188FC(0, &unk_1EAD45090, 0x1E69DCC78);
    sub_190D52690();
    sub_190D58530();
  }

  else
  {
    sub_190D52690();
    sub_190D58770();
    sub_1902188FC(0, &unk_1EAD45090, 0x1E69DCC78);
  }

  sub_1902188FC(0, &unk_1EAD44ED0, 0x1E69DCC60);
  sub_190D57C90();
}

void _s7ChatKit22TextEffectsMenuFactoryC20textStyleKeyCommands6action15configureImages0L16AttributedTitles06activeC6Styles08selectedC0SaySo12UIKeyCommandCG10ObjectiveC8SelectorVSg_S2bSo06IMTextH0VSStFZ_0(uint64_t a1, char a2, char a3, uint64_t a4)
{
  if (a1)
  {
    v4 = 0;
    v32 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v5 = *(&unk_1F0403178 + v4 + 32);
      if (v5 != 8)
      {
        break;
      }

LABEL_4:
      v4 += 8;
      if (v4 == 32)
      {
        return;
      }
    }

    v6 = v5 != 1 && v5 != 2 && v5 != 4;
    if (qword_1EAD452C0 != -1)
    {
      swift_once();
    }

    v7 = qword_1EAD452C8;
    v8 = sub_190D56ED0();
    v9 = [v7 __ck_localizedString_];

    if (!v9)
    {
      __break(1u);
      return;
    }

    sub_190D56F10();
    if ((a2 & 1) != 0 && (v5 == 1 || v5 == 2 || v5 == 4))
    {
      v12 = v9;
      v13 = sub_190D56ED0();

      v11 = [objc_opt_self() systemImageNamed_];
    }

    else
    {
      v10 = v9;
      v11 = 0;
    }

    v14 = [v9 length];

    v15 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
    if (v6)
    {
      sub_1902188FC(0, &qword_1EAD44E30, 0x1E69DC8B0);
      sub_1902188FC(0, &qword_1EAD46510, 0x1E696AD98);
      v16 = v11;
      v17 = v15;
      v28 = 0u;
      v27 = 0u;
      v26 = MEMORY[0x1E69E7CC0];
      v18 = sub_190D58040();
    }

    else
    {
      sub_1902188FC(0, &qword_1EAD466C8, 0x1E69DCBA0);
      sub_1902188FC(0, &qword_1EAD46510, 0x1E696AD98);
      v19 = v11;
      v20 = v15;
      v28 = 0uLL;
      *&v27 = 0;
      *(&v27 + 1) = 0xE000000000000000;
      v26 = MEMORY[0x1E69E7CC0];
      v18 = sub_190D57650();
    }

    v21 = v18;
    v22 = CKIsRunningInMacCatalyst();
    if (v22)
    {
    }

    else
    {
      v23 = _CKUIEnhancedMainMenuEnabled(v22);

      if ((v23 & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    if (a3)
    {
      v24 = [objc_allocWithZone(MEMORY[0x1E696AAB0]) initWithString_];

      v9 = [v24 ck:v5 attributedStringByApplyingTextStyle:0 range:v14];
      [v21 setAttributedTitle_];
    }

    else
    {
      [v21 setTitle_];
    }

LABEL_29:

    [v21 setState_];
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v25 = v21;
      MEMORY[0x193AF29E0]();
      if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_190D571A0();
      }

      sub_190D571E0();
    }

    else
    {
    }

    goto LABEL_4;
  }
}

void _s7ChatKit22TextEffectsMenuFactoryC17textStyleCommands6action15configureImages0K16AttributedTitles06activeC6Styles08selectedC0SaySo9UICommandCG10ObjectiveC8SelectorVSg_S2bSo06IMTextH0VSStFZ_0(uint64_t a1, char a2, char a3, uint64_t a4)
{
  if (a1)
  {
    v33 = MEMORY[0x1E69E7CC0];
    if (qword_1EAD452C0 != -1)
    {
      swift_once();
    }

    v4 = 0;
    v30 = qword_1EAD452C8;
    while (1)
    {
      v5 = *(&unk_1F04031B8 + v4 + 32);
      if (v5 == 1)
      {
        v6 = 0;
        v7 = 0xE100000000000000;
      }

      else
      {
        if (v5 == 2)
        {
          v7 = 0xE100000000000000;
        }

        else
        {
          v7 = 0;
        }

        if (v5 == 2)
        {
          v6 = 0;
        }

        else
        {
          v6 = v5 != 4;
          if (v5 == 4)
          {
            v7 = 0xE100000000000000;
          }
        }
      }

      v8 = sub_190D56ED0();
      v9 = [v30 __ck_localizedString_];

      if (!v9)
      {
        __break(1u);
        return;
      }

      sub_190D56F10();
      if ((a2 & 1) != 0 && (v5 == 1 || v5 == 2 || v5 == 8 || v5 == 4))
      {
        v10 = v9;
        v11 = sub_190D56ED0();

        v12 = [objc_opt_self() systemImageNamed_];
      }

      else
      {
        v13 = v9;
        v12 = 0;
      }

      v14 = [v9 length];

      v15 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
      if (!v7)
      {
        goto LABEL_26;
      }

      if (v6)
      {
        break;
      }

      sub_1902188FC(0, &qword_1EAD466C8, 0x1E69DCBA0);
      sub_1902188FC(0, &qword_1EAD46510, 0x1E696AD98);
      v19 = v12;
      v20 = v15;
      v28 = 0uLL;
      *&v27 = 0;
      *(&v27 + 1) = 0xE000000000000000;
      v26 = MEMORY[0x1E69E7CC0];
      v18 = sub_190D57650();
LABEL_28:
      v21 = v18;
      v22 = CKIsRunningInMacCatalyst();
      if (v22)
      {
      }

      else
      {
        v23 = _CKUIEnhancedMainMenuEnabled(v22);

        if ((v23 & 1) == 0)
        {
          goto LABEL_34;
        }
      }

      if (a3)
      {
        v24 = [objc_allocWithZone(MEMORY[0x1E696AAB0]) initWithString_];

        v9 = [v24 ck:v5 attributedStringByApplyingTextStyle:0 range:v14];
        [v21 setAttributedTitle_];
      }

      else
      {
        [v21 setTitle_];
      }

LABEL_34:

      [v21 setState_];
      v25 = v21;
      MEMORY[0x193AF29E0]();
      if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_190D571A0();
      }

      sub_190D571E0();

      v4 += 8;
      if (v4 == 32)
      {
        return;
      }
    }

LABEL_26:
    sub_1902188FC(0, &qword_1EAD44E30, 0x1E69DC8B0);
    sub_1902188FC(0, &qword_1EAD46510, 0x1E696AD98);
    v16 = v12;
    v17 = v15;
    v28 = 0u;
    v27 = 0u;
    v26 = MEMORY[0x1E69E7CC0];
    v18 = sub_190D58040();
    goto LABEL_28;
  }
}

void _s7ChatKit22TextEffectsMenuFactoryC012inlineEffectE7Actions7handler06activecH4TypeSaySo8UIActionCGySo06IMTexthL0V_AHtc_AKtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = MEMORY[0x1E69E7CC0];
  if (qword_1EAD45960 != -1)
  {
LABEL_19:
    swift_once();
  }

  swift_beginAccess();
  v4 = off_1EAD45968;
  v18 = *(off_1EAD45968 + 2);
  if (v18)
  {
    sub_190D52690();
    v5 = 0;
    while (1)
    {
      if (v5 >= v4[2])
      {
        __break(1u);
        goto LABEL_19;
      }

      v6 = v4[v5 + 4];
      v7 = IMTextEffectLocalizationKeyFromType();
      if (!v7)
      {
        sub_190D56F10();
        v7 = sub_190D56ED0();
      }

      if (qword_1EAD452C0 != -1)
      {
        swift_once();
      }

      v8 = [qword_1EAD452C8 __ck_localizedString_];

      if (!v8)
      {
        break;
      }

      sub_190D56F10();
      sub_1902188FC(0, &qword_1EAD464F0, 0x1E69DC628);
      v9 = swift_allocObject();
      v9[2] = a1;
      v9[3] = a2;
      v9[4] = v6;
      v10 = v8;
      sub_190D50920();
      v11 = sub_190D57DC0();
      v12 = [objc_opt_self() sharedFeatureFlags];
      v13 = [v12 isStaticTextEffectMenusEnabled];

      if (v13)
      {
        v14 = [v10 length];

        v15 = [objc_allocWithZone(MEMORY[0x1E696AAB0]) initWithString_];
        v10 = v11;
        v16 = [v15 ck:v6 attributedStringByApplyingTextEffectType:0 range:v14];
        [v10 setAttributedTitle_];
      }

      else
      {
        v16 = v10;
      }

      [v11 setState_];
      v17 = v11;
      MEMORY[0x193AF29E0]();
      if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_190D571A0();
      }

      ++v5;
      sub_190D571E0();

      if (v18 == v5)
      {

        return;
      }
    }

    __break(1u);
  }
}

void _s7ChatKit22TextEffectsMenuFactoryC012inlineEffectE07handler06activecH4TypeSo6UIMenuCySo06IMTexthK0V_So8UIActionCtc_AJtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _s7ChatKit22TextEffectsMenuFactoryC012inlineEffectE7Actions7handler06activecH4TypeSaySo8UIActionCGySo06IMTexthL0V_AHtc_AKtFZ_0(a1, a2, a3);
  v4 = v3;
  if (qword_1EAD452C0 != -1)
  {
    swift_once();
  }

  v5 = qword_1EAD452C8;
  v6 = sub_190D56ED0();
  v7 = [v5 __ck_localizedString_];

  if (v7)
  {
    sub_190D56F10();
    v8 = sub_190D56ED0();
    v9 = [objc_opt_self() _systemImageNamed_];

    if (v9)
    {
      v10 = [objc_opt_self() textAttachmentWithImage_];
      v11 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithString_];

      v12 = [objc_opt_self() attributedStringWithAttachment_];
      [v11 appendAttributedString_];

      v13 = CKIsRunningInMacCatalyst();
      if (v13 || _CKUIEnhancedMainMenuEnabled(v13))
      {
        if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
        {
LABEL_9:
          sub_190D52690();
          sub_190D58770();
          sub_1902188FC(0, &unk_1EAD45090, 0x1E69DCC78);
LABEL_10:

          sub_1902188FC(0, &unk_1EAD44ED0, 0x1E69DCC60);
          sub_190D57C90();

          return;
        }
      }

      else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
      {
        goto LABEL_9;
      }

      sub_1902188FC(0, &unk_1EAD45090, 0x1E69DCC78);
      sub_190D52690();
      sub_190D58530();

      goto LABEL_10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void _s7ChatKit22TextEffectsMenuFactoryC06effectE8Commands6actionSaySo9UICommandCG10ObjectiveC8SelectorVSg_tFZ_0(uint64_t a1)
{
  if (a1)
  {
    v25 = MEMORY[0x1E69E7CC0];
    if (qword_1EAD45960 != -1)
    {
LABEL_24:
      swift_once();
    }

    swift_beginAccess();
    v1 = off_1EAD45968;
    v24 = *(off_1EAD45968 + 2);
    if (v24)
    {
      sub_190D52690();
      v2 = 0;
      v23 = v1;
      while (1)
      {
        if (v2 >= v1[2])
        {
          __break(1u);
          goto LABEL_24;
        }

        v3 = v1[v2 + 4];
        v4 = IMTextEffectLocalizationKeyFromType();
        if (!v4)
        {
          sub_190D56F10();
          v4 = sub_190D56ED0();
        }

        if (qword_1EAD452C0 != -1)
        {
          swift_once();
        }

        v5 = [qword_1EAD452C8 __ck_localizedString_];

        if (!v5)
        {
          break;
        }

        sub_190D56F10();
        v6 = [v5 length];
        v7 = _s7ChatKit22TextEffectsMenuFactoryC18keyCommandInputKey3forSSSgSo16IMTextEffectTypeV_tFZ_0(v3);
        v9 = v8;
        v10 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
        if (v9)
        {
          sub_1902188FC(0, &qword_1EAD466C8, 0x1E69DCBA0);
          sub_1902188FC(0, &qword_1EAD46510, 0x1E696AD98);
          v11 = v10;
          v22 = 0u;
          v21 = 0u;
          v20 = MEMORY[0x1E69E7CC0];
          v12 = sub_190D57650();
        }

        else
        {
          sub_1902188FC(0, &qword_1EAD44E30, 0x1E69DC8B0);
          sub_1902188FC(0, &qword_1EAD46510, 0x1E696AD98);
          v13 = v10;
          v22 = 0uLL;
          v21 = v7;
          v20 = MEMORY[0x1E69E7CC0];
          v12 = sub_190D58040();
        }

        v14 = v12;
        v15 = [objc_opt_self() sharedFeatureFlags];
        v16 = [v15 isStaticTextEffectMenusEnabled];

        if (v16)
        {
          v17 = CKIsRunningInMacCatalyst();
          if (v17 || _CKUIEnhancedMainMenuEnabled(v17))
          {
            v18 = [objc_allocWithZone(MEMORY[0x1E696AAB0]) initWithString_];

            v5 = [v18 ck:v3 attributedStringByApplyingTextEffectType:0 range:v6];
            [v14 setAttributedTitle_];
          }
        }

        v19 = v14;
        MEMORY[0x193AF29E0]();
        v1 = v23;
        if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_190D571A0();
        }

        ++v2;
        sub_190D571E0();

        if (v24 == v2)
        {

          return;
        }
      }

      __break(1u);
    }
  }
}

uint64_t _s7ChatKit22TextEffectsMenuFactoryC17effectKeyCommands6actionSaySo12UIKeyCommandCG10ObjectiveC8SelectorVSg_tFZ_0(uint64_t a1)
{
  _s7ChatKit22TextEffectsMenuFactoryC06effectE8Commands6actionSaySo9UICommandCG10ObjectiveC8SelectorVSg_tFZ_0(a1);
  v2 = v1;
  v11 = MEMORY[0x1E69E7CC0];
  v3 = v1 & 0xFFFFFFFFFFFFFF8;
  if (!(v1 >> 62))
  {
    v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_20:
    v6 = MEMORY[0x1E69E7CC0];
    goto LABEL_21;
  }

LABEL_19:
  v4 = sub_190D581C0();
  if (!v4)
  {
    goto LABEL_20;
  }

LABEL_3:
  v5 = 0;
  v6 = MEMORY[0x1E69E7CC0];
  do
  {
    v7 = v5;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x193AF3B90](v7, v2);
      }

      else
      {
        if (v7 >= *(v3 + 16))
        {
          goto LABEL_18;
        }

        v8 = *(v2 + 8 * v7 + 32);
      }

      v9 = v8;
      v5 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        break;
      }

      ++v7;
      if (v5 == v4)
      {
        goto LABEL_21;
      }
    }

    MEMORY[0x193AF29E0]();
    if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_190D571A0();
    }

    sub_190D571E0();
    v6 = v11;
  }

  while (v5 != v4);
LABEL_21:

  return v6;
}

id sub_190AE1E6C()
{
  v2.receiver = v0;
  v2.super_class = _s29ContactVerificationControllerV11CoordinatorCMa();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_190AE1F44@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = _s29ContactVerificationControllerV11CoordinatorCMa();
  v7 = objc_allocWithZone(v6);
  v8 = OBJC_IVAR____TtCVOV7ChatKit18DetailsInfoTabView15KeyTransparency29ContactVerificationController11Coordinator_navigationController;
  *&v7[OBJC_IVAR____TtCVOV7ChatKit18DetailsInfoTabView15KeyTransparency29ContactVerificationController11Coordinator_navigationController] = 0;
  v9 = &v7[OBJC_IVAR____TtCVOV7ChatKit18DetailsInfoTabView15KeyTransparency29ContactVerificationController11Coordinator_parent];
  *v9 = v4;
  *(v9 + 1) = v3;
  *(v9 + 2) = v5;
  *&v7[v8] = 0;
  v10 = v4;
  sub_19029063C(v3, v5);
  v12.receiver = v7;
  v12.super_class = v6;
  result = objc_msgSendSuper2(&v12, sel_init);
  *a1 = result;
  return result;
}

uint64_t sub_190AE1FE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_190AE2348();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_190AE2044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_190AE2348();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_190AE20A8(uint64_t a1)
{
  sub_190AE2348();
  sub_190D55130();
  __break(1u);
}

unint64_t sub_190AE20D4()
{
  result = qword_1EAD5CFF8;
  if (!qword_1EAD5CFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5CFF8);
  }

  return result;
}

id sub_190AE2128(uint64_t a1, uint64_t a2)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_self();
  v20 = 0;
  v21[0] = 0;
  [v3 handlesAndOptionsForContactVerificationUIForConversation:a2 handles:v21 options:&v20];
  v4 = v20;
  v5 = v21[0];
  if (v21[0])
  {
    v21[0] = 0;
    v6 = v5;
    v7 = v4;
    v8 = v6;
    sub_190D57170();

    if (v21[0])
    {
      if (v7)
      {
        v9 = v7;
        v10 = sub_190D57160();

        v11 = [v3 contactVerificationViewControllerForHandles:v10 options:v9];

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5D000, &qword_190DF0CC8);
        sub_190D55210();
        v12 = v21[0];
        [v11 setDelegate_];

        v13 = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) initWithRootViewController_];
        sub_190D55210();

        v14 = v21[0];
        v15 = *(v21[0] + OBJC_IVAR____TtCVOV7ChatKit18DetailsInfoTabView15KeyTransparency29ContactVerificationController11Coordinator_navigationController);
        *(v21[0] + OBJC_IVAR____TtCVOV7ChatKit18DetailsInfoTabView15KeyTransparency29ContactVerificationController11Coordinator_navigationController) = v13;
        v16 = v13;

        return v16;
      }
    }
  }

  else
  {
    v18 = v20;
  }

  v19 = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) init];

  return v19;
}

unint64_t sub_190AE2348()
{
  result = qword_1EAD5D008;
  if (!qword_1EAD5D008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5D008);
  }

  return result;
}

id sub_190AE239C()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtCVOV7ChatKit18DetailsInfoTabView15KeyTransparency29ContactVerificationController11Coordinator_parent;
  v3 = *(v0 + OBJC_IVAR____TtCVOV7ChatKit18DetailsInfoTabView15KeyTransparency29ContactVerificationController11Coordinator_parent);
  v4 = [v3 chat];
  [v4 fetchKTStatus];

  v5 = *(v2 + 8);
  if (v5)
  {
    v6 = *(v2 + 16);
    v7 = sub_190D50920();
    v5(v7);
    sub_19022123C(v5, v6);
  }

  result = *(v1 + OBJC_IVAR____TtCVOV7ChatKit18DetailsInfoTabView15KeyTransparency29ContactVerificationController11Coordinator_navigationController);
  if (result)
  {

    return [result dismissViewControllerAnimated:1 completion:0];
  }

  return result;
}

id sub_190AE2558(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC7ChatKit17CKInlineMediaView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC7ChatKit17CKInlineMediaView_image] = 0;
  v9 = objc_opt_self();
  result = [v9 sharedBehaviors];
  if (result)
  {
    v11 = result;
    v12 = OBJC_IVAR____TtC7ChatKit17CKInlineMediaView_generateButtonDiameter;
    [result entryViewGenerationButtonDiameter];
    v14 = v13;

    *&v4[v12] = v14;
    result = [v9 sharedBehaviors];
    if (result)
    {
      v15 = result;
      v16 = OBJC_IVAR____TtC7ChatKit17CKInlineMediaView_generateButtonMargin;
      [result entryViewGenerationButtonMargin];
      v18 = v17;

      *&v4[v16] = v18;
      v4[OBJC_IVAR____TtC7ChatKit17CKInlineMediaView_showGenerativeButton] = 0;
      v4[OBJC_IVAR____TtC7ChatKit17CKInlineMediaView_isGenerativeAssetAppearance] = 0;
      v19 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
      *&v4[OBJC_IVAR____TtC7ChatKit17CKInlineMediaView_imageView] = v19;
      type metadata accessor for CKInlineMediaViewGenerateButton();
      v20 = [swift_getObjCClassFromMetadata() buttonWithType_];
      *&v4[OBJC_IVAR____TtC7ChatKit17CKInlineMediaView_generateButton] = v20;
      v22.receiver = v4;
      v22.super_class = type metadata accessor for CKInlineMediaView();
      v21 = objc_msgSendSuper2(&v22, sel_initWithFrame_, a1, a2, a3, a4);
      sub_190AE2A1C();

      return v21;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_190AE2738(void *a1)
{
  *&v1[OBJC_IVAR____TtC7ChatKit17CKInlineMediaView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC7ChatKit17CKInlineMediaView_image] = 0;
  v3 = objc_opt_self();
  result = [v3 sharedBehaviors];
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = result;
  v6 = OBJC_IVAR____TtC7ChatKit17CKInlineMediaView_generateButtonDiameter;
  [result entryViewGenerationButtonDiameter];
  v8 = v7;

  *&v1[v6] = v8;
  result = [v3 sharedBehaviors];
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v9 = result;
  v10 = OBJC_IVAR____TtC7ChatKit17CKInlineMediaView_generateButtonMargin;
  [result entryViewGenerationButtonMargin];
  v12 = v11;

  *&v1[v10] = v12;
  v1[OBJC_IVAR____TtC7ChatKit17CKInlineMediaView_showGenerativeButton] = 0;
  v1[OBJC_IVAR____TtC7ChatKit17CKInlineMediaView_isGenerativeAssetAppearance] = 0;
  v13 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  *&v1[OBJC_IVAR____TtC7ChatKit17CKInlineMediaView_imageView] = v13;
  v14 = [objc_allocWithZone(type metadata accessor for CKInlineMediaViewGenerateButton()) initWithCoder_];
  if (!v14)
  {
    v14 = [swift_getObjCClassFromMetadata() buttonWithType_];
  }

  *&v1[OBJC_IVAR____TtC7ChatKit17CKInlineMediaView_generateButton] = v14;
  v18.receiver = v1;
  v18.super_class = type metadata accessor for CKInlineMediaView();
  v15 = objc_msgSendSuper2(&v18, sel_initWithCoder_, a1);
  v16 = v15;
  if (v15)
  {
    v17 = v15;
    sub_190AE2A1C();
  }

  return v16;
}

void sub_190AE2918()
{
  v1 = [objc_opt_self() sharedFeatureFlags];
  v2 = [v1 isGenPlaygroundSparkleButtonEnabled];

  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC7ChatKit17CKInlineMediaView_generateButtonDiameter] + *&v0[OBJC_IVAR____TtC7ChatKit17CKInlineMediaView_generateButtonMargin];
    [v0 bounds];
    if (v3 >= v4)
    {
      v6 = 1;
    }

    else
    {
      [v0 bounds];
      v6 = v3 >= v5;
    }

    v7 = *&v0[OBJC_IVAR____TtC7ChatKit17CKInlineMediaView_generateButton];
    v8 = v6 | ((v0[OBJC_IVAR____TtC7ChatKit17CKInlineMediaView_showGenerativeButton] & 1) == 0);

    [v7 setHidden_];
  }
}

void sub_190AE2A1C()
{
  v1 = v0;
  v2 = sub_190D56800();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1908E9B68();
  *v5 = sub_190D57870();
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8020], v2);
  v6 = sub_190D56830();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    v7 = [objc_opt_self() clearColor];
    [v1 setBackgroundColor_];

    [v1 setClipsToBounds_];
    v8 = OBJC_IVAR____TtC7ChatKit17CKInlineMediaView_imageView;
    [*&v1[OBJC_IVAR____TtC7ChatKit17CKInlineMediaView_imageView] setContentMode_];
    [v1 addSubview_];
    v9 = [objc_opt_self() sharedFeatureFlags];
    v10 = [v9 isGenPlaygroundSparkleButtonEnabled];

    if (v10)
    {
      v11 = *&v1[OBJC_IVAR____TtC7ChatKit17CKInlineMediaView_generateButton];
      [v11 addTarget:v1 action:sel_didTapGenerateButton_ forControlEvents:64];
      [v11 setHidden_];
      [v1 addSubview_];
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_190AE2C3C()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for CKInlineMediaView();
  objc_msgSendSuper2(&v6, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC7ChatKit17CKInlineMediaView_imageView];
  [v0 bounds];
  [v1 setFrame_];

  v2 = [objc_opt_self() sharedFeatureFlags];
  v3 = [v2 isGenPlaygroundSparkleButtonEnabled];

  if (v3)
  {
    sub_190AE2918();
    v4 = *&v0[OBJC_IVAR____TtC7ChatKit17CKInlineMediaView_generateButtonDiameter];
    v5 = *&v0[OBJC_IVAR____TtC7ChatKit17CKInlineMediaView_generateButtonMargin];
    [v0 bounds];
    [*&v0[OBJC_IVAR____TtC7ChatKit17CKInlineMediaView_generateButton] setFrame_];
  }
}

void sub_190AE2DA0(void *a1)
{
  v2 = *&v1[OBJC_IVAR____TtC7ChatKit17CKInlineMediaView_image];
  *&v1[OBJC_IVAR____TtC7ChatKit17CKInlineMediaView_image] = a1;
  v3 = a1;

  [*&v1[OBJC_IVAR____TtC7ChatKit17CKInlineMediaView_imageView] setImage_];
  v4 = [objc_opt_self() sharedFeatureFlags];
  LODWORD(v2) = [v4 isGenPlaygroundSparkleButtonEnabled];

  if (v2)
  {
    v5 = *&v1[OBJC_IVAR____TtC7ChatKit17CKInlineMediaView_generateButton];

    [v1 bringSubviewToFront_];
  }
}

id sub_190AE2F70()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKInlineMediaView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for AttributedTapbackItem(uint64_t a1)
{
  result = qword_1EAD5D050;
  if (!qword_1EAD5D050)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_190AE30A8(uint64_t a1)
{
  sub_190AE315C();
  if (v1 <= 0x3F)
  {
    sub_190D51840();
    if (v2 <= 0x3F)
    {
      type metadata accessor for ScootTrackingValue();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_190AE315C()
{
  if (!qword_1EAD5D060)
  {
    v0 = sub_190D57200();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAD5D060);
    }
  }
}

uint64_t sub_190AE31CC(void *a1, uint64_t a2, char a3)
{
  sub_190D58870();
  if (a3)
  {
    if (a3 == 1)
    {
      sub_190D56FC0();
    }

    else
    {
      v5 = [a1 stickerIdentifier];
      sub_190D56F10();

      sub_190D56FC0();
    }
  }

  else
  {
    MEMORY[0x193AF4130]([a1 associatedMessageType]);
  }

  return sub_190D588C0();
}

double sub_190AE32A8(uint64_t a1)
{
  if (*(v1 + 16))
  {
    if (*(v1 + 16) == 1)
    {

      sub_190D56FC0();
    }

    else
    {
      v3 = [*v1 stickerIdentifier];
      sub_190D56F10();

      sub_190D56FC0();
    }
  }

  else
  {
    MEMORY[0x193AF4130]([*v1 associatedMessageType]);
  }

  return result;
}

uint64_t sub_190AE3388(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 16);
  sub_190D58870();
  if (v3)
  {
    if (v3 == 1)
    {
      sub_190D56FC0();
    }

    else
    {
      v4 = [v2 stickerIdentifier];
      sub_190D56F10();

      sub_190D56FC0();
    }
  }

  else
  {
    MEMORY[0x193AF4130]([v2 associatedMessageType]);
  }

  return sub_190D588C0();
}

unint64_t sub_190AE346C()
{
  result = qword_1EAD5D068;
  if (!qword_1EAD5D068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5D068);
  }

  return result;
}

uint64_t sub_190AE34C0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_190D58870();
  sub_190D56FC0();
  sub_190D56FC0();
  if (v2)
  {
    v3 = v2;
    sub_190D57DA0();
  }

  if (v1)
  {
    v4 = v1;
    v5 = [v4 identifier];
    sub_190D56F10();

    sub_190D56FC0();
  }

  return sub_190D588C0();
}

void sub_190AE359C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_190D56FC0();
  sub_190D56FC0();
  if (v3)
  {
    v4 = v3;
    sub_190D57DA0();
  }

  if (v2)
  {
    v6 = v2;
    v5 = [v6 identifier];
    sub_190D56F10();

    sub_190D56FC0();
  }
}

uint64_t sub_190AE3684(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_190D58870();
  sub_190D56FC0();
  sub_190D56FC0();
  if (v3)
  {
    v4 = v3;
    sub_190D57DA0();
  }

  if (v2)
  {
    v5 = v2;
    v6 = [v5 identifier];
    sub_190D56F10();

    sub_190D56FC0();
  }

  return sub_190D588C0();
}

double sub_190AE375C@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 32);
  a1[1] = v2;
  sub_190D52690();
  return result;
}

uint64_t sub_190AE3768(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return sub_190AE3C18(v7, v8) & 1;
}

unint64_t sub_190AE37B4()
{
  result = qword_1EAD5D070;
  if (!qword_1EAD5D070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5D070);
  }

  return result;
}

uint64_t sub_190AE3808(uint64_t a1)
{
  v2 = v1;
  if (*(v1 + 16))
  {
    if (*(v1 + 16) == 1)
    {
      sub_190D56FC0();
    }

    else
    {
      v4 = [*v1 stickerIdentifier];
      sub_190D56F10();

      sub_190D56FC0();
    }
  }

  else
  {
    MEMORY[0x193AF4130]([*v1 associatedMessageType]);
  }

  sub_190AA156C(a1, *(v2 + 24));
  v5 = type metadata accessor for AttributedTapbackItem(0);
  sub_190D51840();
  sub_190AE3A58(&qword_1EAD54D88, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_190D56DD0();
  v6 = *(*(v2 + *(v5 + 28)) + 16);
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  MEMORY[0x193AF4130](*&v6);

  return sub_190D56FC0();
}

uint64_t sub_190AE3978()
{
  sub_190D58870();
  sub_190AE3808(v1);
  return sub_190D588C0();
}

uint64_t sub_190AE39BC(uint64_t a1)
{
  sub_190D58870();
  sub_190AE3808(v2);
  return sub_190D588C0();
}

double sub_190AE39F8@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (v2 + *(a1 + 32));
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
  sub_190D52690();
  return result;
}

uint64_t sub_190AE3A58(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_190AE3AA0(void *a1, uint64_t a2, char a3, void *a4, uint64_t a5, char a6)
{
  if (!a3)
  {
    if (!a6)
    {
      v8 = [a1 associatedMessageType];
      return v8 == [a4 associatedMessageType];
    }

    return 0;
  }

  if (a3 != 1)
  {
    if (a6 == 2)
    {
      v10 = [a1 stickerIdentifier];
      v11 = sub_190D56F10();
      v13 = v12;

      v14 = [a4 stickerIdentifier];
      v15 = sub_190D56F10();
      v17 = v16;

      if (v11 != v15 || v13 != v17)
      {
        v19 = sub_190D58760();

        return v19 & 1;
      }

      return 1;
    }

    return 0;
  }

  if (a6 != 1)
  {
    return 0;
  }

  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  return sub_190D58760();
}

uint64_t sub_190AE3C18(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (sub_190D58760() & 1) != 0)
  {
    v5 = a1[4] == a2[4] && a1[5] == a2[5];
    if (v5 || (sub_190D58760() & 1) != 0)
    {
      v6 = a1[3];
      v7 = a2[3];
      if (v6)
      {
        if (v7)
        {
          sub_1902495E8();
          v8 = v7;
          v9 = v6;
          v10 = sub_190D57D90();

          if (v10)
          {
LABEL_14:
            v11 = a1[2];
            if (v11)
            {
              v12 = [v11 identifier];
              v13 = sub_190D56F10();
              v15 = v14;

              v16 = a2[2];
              if (!v16)
              {
                if (!v15)
                {
                  goto LABEL_31;
                }

LABEL_28:
                v17 = 0;
LABEL_33:

                return v17 & 1;
              }
            }

            else
            {
              v16 = a2[2];
              if (!v16)
              {
                goto LABEL_31;
              }

              v15 = 0;
              v13 = 0;
            }

            v19 = [v16 identifier];
            v20 = sub_190D56F10();
            v22 = v21;

            if (v15)
            {
              if (v22)
              {
                if (v13 == v20 && v15 == v22)
                {

                  v17 = 1;
                }

                else
                {
                  v17 = sub_190D58760();
                }

                goto LABEL_33;
              }

              goto LABEL_28;
            }

            if (v22)
            {
              v17 = 0;
              goto LABEL_33;
            }

LABEL_31:
            v17 = 1;
            return v17 & 1;
          }
        }
      }

      else if (!v7)
      {
        goto LABEL_14;
      }
    }
  }

  v17 = 0;
  return v17 & 1;
}

uint64_t sub_190AE3DCC(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if (*(a1 + 16) == 1)
    {
      if (v6 != 1)
      {
        return 0;
      }

      v7 = v4 == v5 && *(a1 + 8) == *(a2 + 8);
      if (!v7 && (sub_190D58760() & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v6 != 2)
      {
        return 0;
      }

      v9 = [v4 stickerIdentifier];
      v10 = sub_190D56F10();
      v12 = v11;

      v13 = [v5 stickerIdentifier];
      v14 = sub_190D56F10();
      v16 = v15;

      if (v10 == v14 && v12 == v16)
      {

        goto LABEL_21;
      }

      v18 = sub_190D58760();

      if ((v18 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    if (*(a2 + 16))
    {
      return 0;
    }

    v8 = [v4 associatedMessageType];
    if (v8 != [v5 associatedMessageType])
    {
      return 0;
    }
  }

LABEL_21:
  if ((sub_1909A72E4(*(a1 + 24), *(a2 + 24)) & 1) == 0)
  {
    return 0;
  }

  v19 = type metadata accessor for AttributedTapbackItem(0);
  if ((sub_190D517D0() & 1) == 0 || *(*(a1 + *(v19 + 28)) + 16) != *(*(a2 + *(v19 + 28)) + 16))
  {
    return 0;
  }

  v20 = *(v19 + 32);
  v21 = *(a1 + v20);
  v22 = *(a1 + v20 + 8);
  v23 = (a2 + v20);
  if (v21 == *v23 && v22 == v23[1])
  {
    return 1;
  }

  return sub_190D58760();
}

id sub_190AE3FCC(void *a1)
{
  v1 = [a1 transferGUID];
  if (!v1)
  {
    sub_190D56F10();
    v1 = sub_190D56ED0();
  }

  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v3 = result;
    v4 = [result mediaObjectWithTransferGUID:v1 imMessage:0];

    if (v4 && (objc_opt_self(), (v5 = swift_dynamicCastObjCClass()) != 0))
    {
      v6 = [objc_opt_self() saveableStickerForMediaObject_];
      if (v6)
      {
        v7 = v6;

        return v7;
      }

      if (qword_1EAD52008 != -1)
      {
        swift_once();
      }

      v18 = sub_190D53040();
      __swift_project_value_buffer(v18, qword_1EAD9E5D8);
      v12 = sub_190D53020();
      v19 = sub_190D576A0();
      if (!os_log_type_enabled(v12, v19))
      {
        goto LABEL_14;
      }

      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_19020E000, v12, v19, "Could not retrieve saveable sticker from mediaObject", v20, 2u);
      v17 = v20;
    }

    else
    {
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5D080, &qword_190DF0FF8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5D088, &unk_190DF1000);
      v8 = sub_190D56F50();
      v10 = v9;
      if (qword_1EAD52008 != -1)
      {
        swift_once();
      }

      v11 = sub_190D53040();
      __swift_project_value_buffer(v11, qword_1EAD9E5D8);
      sub_190D52690();
      v12 = sub_190D53020();
      v13 = sub_190D576A0();

      if (!os_log_type_enabled(v12, v13))
      {

        goto LABEL_14;
      }

      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v21 = v15;
      *v14 = 136315138;
      v16 = sub_19021D9F8(v8, v10, &v21);

      *(v14 + 4) = v16;
      _os_log_impl(&dword_19020E000, v12, v13, "Expected CKAnimatedStickerMediaObject but received %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x193AF7A40](v15, -1, -1);
      v17 = v14;
    }

    MEMORY[0x193AF7A40](v17, -1, -1);
LABEL_14:

    return 0;
  }

  __break(1u);
  return result;
}

void sub_190AE4304(void *a1, void *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53040, &unk_190DDF780);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_190DD1D90;
  v7 = [a2 fullName];
  if (v7)
  {
    v8 = v7;
    v9 = sub_190D56F10();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  *(v6 + 56) = MEMORY[0x1E69E6158];
  v12 = sub_19081EA10();
  *(v6 + 64) = v12;
  if (!v11)
  {
    v13 = [a2 displayID];
    v9 = sub_190D56F10();
    v11 = v14;
  }

  *(v6 + 32) = v9;
  *(v6 + 40) = v11;
  v15 = CKFrameworkBundle(v12);
  if (!v15)
  {
    __break(1u);
    goto LABEL_21;
  }

  v16 = v15;
  v17 = sub_190D56ED0();
  v18 = sub_190D56ED0();
  v19 = [v16 localizedStringForKey:v17 value:0 table:v18];

  sub_190D56F10();
  sub_190D56EE0();

  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  v21 = a1;
  v22 = [v3 delegate];
  if (v22)
  {
    v23 = v22;
    if ([v22 respondsToSelector_])
    {
      v24 = [v23 presentingViewControllerForAlertsFromDetailsAdapter_];
      swift_unknownObjectRelease();
      v25 = v24;
      if (v24)
      {
        goto LABEL_13;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  v25 = v21;
LABEL_13:
  *(v20 + 16) = v25;

  v26 = sub_190D56ED0();

  v27 = [objc_opt_self() alertControllerWithTitle:v26 message:0 preferredStyle:1];

  v28 = [v3 conversation];
  v29 = CKFrameworkBundle(v28);
  if (!v29)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    return;
  }

  v30 = v29;
  v31 = sub_190D56ED0();
  v32 = sub_190D56ED0();
  v33 = [v30 localizedStringForKey:v31 value:0 table:v32];

  if (!v33)
  {
    sub_190D56F10();
    v33 = sub_190D56ED0();
  }

  v34 = swift_allocObject();
  v34[2] = v28;
  v34[3] = a2;
  v34[4] = v20;
  aBlock[4] = sub_190AE62B4;
  aBlock[5] = v34;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_19084156C;
  aBlock[3] = &block_descriptor_28_0;
  v35 = _Block_copy(aBlock);
  v45 = v28;
  v36 = a2;
  sub_190D50920();

  v37 = objc_opt_self();
  v38 = [v37 actionWithTitle:v33 style:2 handler:v35];
  _Block_release(v35);

  v39 = CKFrameworkBundle([v27 addAction_]);
  if (!v39)
  {
    goto LABEL_22;
  }

  v40 = v39;
  v41 = sub_190D56ED0();
  v42 = sub_190D56ED0();
  v43 = [v40 localizedStringForKey:v41 value:0 table:v42];

  if (!v43)
  {
    sub_190D56F10();
    v43 = sub_190D56ED0();
  }

  v44 = [v37 actionWithTitle:v43 style:1 handler:0];

  [v27 addAction_];
  swift_beginAccess();
  [v27 presentFromViewController:*(v20 + 16) animated:1 completion:0];
}

void sub_190AE4890(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820, &unk_190DD76C0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_190DD55F0;
  *(v7 + 32) = a3;
  sub_1902188FC(0, &qword_1EAD44E70, 0x1E69A5B90);
  v8 = a3;
  v9 = sub_190D57160();

  [a2 removeRecipientHandles_];

  v10 = [a2 chat];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 hasSiblingRecipientsSharingLocation];

    if (v12)
    {
      v14 = CKFrameworkBundle(v13);
      if (v14)
      {
        v15 = v14;
        v16 = sub_190D56ED0();
        v17 = sub_190D56ED0();
        v18 = [v15 localizedStringForKey:v16 value:0 table:v17];

        sub_190D56F10();
        v19 = sub_190D56ED0();

        v20 = [objc_opt_self() alertControllerWithTitle:0 message:v19 preferredStyle:1];

        v22 = CKFrameworkBundle(v21);
        if (v22)
        {
          v23 = v22;
          v24 = sub_190D56ED0();
          v25 = sub_190D56ED0();
          v26 = [v23 localizedStringForKey:v24 value:0 table:v25];

          sub_190D56F10();
          v27 = swift_allocObject();
          *(v27 + 16) = a2;
          v28 = a2;
          v29 = sub_190D56ED0();

          v41[4] = sub_190AE6340;
          v41[5] = v27;
          v41[0] = MEMORY[0x1E69E9820];
          v41[1] = 1107296256;
          v41[2] = sub_19084156C;
          v41[3] = &block_descriptor_34_0;
          v30 = _Block_copy(v41);

          v31 = objc_opt_self();
          v32 = [v31 actionWithTitle:v29 style:0 handler:v30];
          _Block_release(v30);

          [v20 addAction_];
          v34 = CKFrameworkBundle(v33);
          if (v34)
          {
            v35 = v34;
            v36 = sub_190D56ED0();
            v37 = sub_190D56ED0();
            v38 = [v35 localizedStringForKey:v36 value:0 table:v37];

            sub_190D56F10();
            v39 = sub_190D56ED0();

            v40 = [v31 actionWithTitle:v39 style:1 handler:0];

            [v20 addAction_];
            swift_beginAccess();
            [*(a4 + 16) presentViewController:v20 animated:1 completion:0];

            return;
          }

LABEL_10:
          __break(1u);
          return;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_10;
    }
  }
}

void sub_190AE4DA0(void *a1)
{
  v3 = v1;
  v5 = CKFrameworkBundle(a1);
  if (!v5)
  {
    __break(1u);
LABEL_18:

    __break(1u);
    goto LABEL_19;
  }

  v6 = v5;
  v7 = sub_190D56ED0();
  v8 = sub_190D56ED0();
  v9 = &selRef_loadFrequentRepliesLimit_loadImmediately_;
  v2 = [v6 localizedStringForKey:v7 value:0 table:v8];

  if (!v2)
  {
    sub_190D56F10();
    v2 = sub_190D56ED0();
  }

  v11 = CKFrameworkBundle(v10);
  if (!v11)
  {
    goto LABEL_18;
  }

  v12 = v11;
  v13 = sub_190D56ED0();
  v14 = sub_190D56ED0();
  v15 = [v12 localizedStringForKey:v13 value:0 table:v14];

  v16 = v15;
  v17 = v15;
  if (!v15)
  {
    sub_190D56F10();
    v17 = sub_190D56ED0();

    sub_190D56F10();
    v16 = sub_190D56ED0();
  }

  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  v19 = a1;
  v20 = v15;
  v21 = [v3 delegate];
  if (v21)
  {
    v22 = v21;
    if ([v21 respondsToSelector_])
    {
      v23 = [v22 presentingViewControllerForAlertsFromDetailsAdapter_];
      swift_unknownObjectRelease();
      v24 = v23;
      v9 = &selRef_loadFrequentRepliesLimit_loadImmediately_;
      if (v23)
      {
        goto LABEL_13;
      }
    }

    else
    {
      swift_unknownObjectRelease();
      v9 = &selRef_loadFrequentRepliesLimit_loadImmediately_;
    }
  }

  v24 = v19;
LABEL_13:
  *(v18 + 16) = v24;

  v25 = [objc_opt_self() alertControllerWithTitle:v17 message:v2 preferredStyle:1];
  v26 = [v3 conversation];
  v27 = swift_allocObject();
  *(v27 + 16) = v26;
  *(v27 + 24) = v18;
  aBlock[4] = sub_190AE6250;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_19084156C;
  aBlock[3] = &block_descriptor_15_1;
  v28 = _Block_copy(aBlock);
  v37 = v26;
  sub_190D50920();

  v29 = objc_opt_self();
  v30 = [v29 actionWithTitle:v16 style:2 handler:v28];
  _Block_release(v28);

  v31 = CKFrameworkBundle([v25 addAction_]);
  if (!v31)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v32 = v31;
  v33 = sub_190D56ED0();
  v34 = sub_190D56ED0();
  v35 = [v32 v9[72]];

  if (!v35)
  {
    sub_190D56F10();
    v35 = sub_190D56ED0();
  }

  v36 = [v29 actionWithTitle:v35 style:1 handler:0];

  [v25 addAction_];
  swift_beginAccess();
  [v25 presentFromViewController:*(v18 + 16) animated:1 completion:0];
}

void sub_190AE5270(int a1, id a2, uint64_t a3)
{
  [a2 leave];
  v5 = [a2 chat];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 hasSiblingRecipientsSharingLocation];

    if (v7)
    {
      v9 = CKFrameworkBundle(v8);
      if (v9)
      {
        v10 = v9;
        v11 = sub_190D56ED0();
        v12 = sub_190D56ED0();
        v13 = [v10 localizedStringForKey:v11 value:0 table:v12];

        sub_190D56F10();
        v14 = sub_190D56ED0();

        v15 = [objc_opt_self() alertControllerWithTitle:0 message:v14 preferredStyle:1];

        v17 = CKFrameworkBundle(v16);
        if (v17)
        {
          v18 = v17;
          v19 = sub_190D56ED0();
          v20 = sub_190D56ED0();
          v21 = [v18 localizedStringForKey:v19 value:0 table:v20];

          sub_190D56F10();
          v22 = swift_allocObject();
          *(v22 + 16) = a2;
          v23 = a2;
          v24 = sub_190D56ED0();

          v36[4] = sub_190AE6258;
          v36[5] = v22;
          v36[0] = MEMORY[0x1E69E9820];
          v36[1] = 1107296256;
          v36[2] = sub_19084156C;
          v36[3] = &block_descriptor_21_2;
          v25 = _Block_copy(v36);

          v26 = objc_opt_self();
          v27 = [v26 actionWithTitle:v24 style:0 handler:v25];
          _Block_release(v25);

          [v15 addAction_];
          v29 = CKFrameworkBundle(v28);
          if (v29)
          {
            v30 = v29;
            v31 = sub_190D56ED0();
            v32 = sub_190D56ED0();
            v33 = [v30 localizedStringForKey:v31 value:0 table:v32];

            sub_190D56F10();
            v34 = sub_190D56ED0();

            v35 = [v26 actionWithTitle:v34 style:1 handler:0];

            [v15 addAction_];
            swift_beginAccess();
            [*(a3 + 16) presentViewController:v15 animated:1 completion:0];

            return;
          }

LABEL_10:
          __break(1u);
          return;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_10;
    }
  }
}

void sub_190AE56F4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = sub_190D51840();
  v8 = *(v7 - 8);
  *&v9 = MEMORY[0x1EEE9AC00](v7).n128_u64[0];
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a2 chat];
  if (!v12)
  {
    goto LABEL_7;
  }

  v13 = v12;
  v14 = [v12 hasSiblingRecipientsSharingLocation];

  if (!v14)
  {
    goto LABEL_7;
  }

  v49 = a3;
  v50 = a4;
  v16 = CKFrameworkBundle(v15);
  if (!v16)
  {
    __break(1u);
    goto LABEL_11;
  }

  v17 = v16;
  v18 = sub_190D56ED0();
  v19 = sub_190D56ED0();
  v20 = [v17 localizedStringForKey:v18 value:0 table:v19];

  sub_190D56F10();
  v21 = sub_190D56ED0();

  v22 = [objc_opt_self() alertControllerWithTitle:0 message:v21 preferredStyle:1];

  v24 = CKFrameworkBundle(v23);
  if (!v24)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v25 = v24;
  v26 = sub_190D56ED0();
  v27 = sub_190D56ED0();
  v28 = [v25 localizedStringForKey:v26 value:0 table:v27];

  sub_190D56F10();
  v29 = swift_allocObject();
  *(v29 + 16) = a2;
  v30 = a2;
  v31 = sub_190D56ED0();

  aBlock[4] = sub_190AE6340;
  aBlock[5] = v29;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_19084156C;
  aBlock[3] = &block_descriptor_6_6;
  v32 = _Block_copy(aBlock);

  v33 = objc_opt_self();
  v34 = [v33 actionWithTitle:v31 style:0 handler:v32];
  _Block_release(v32);

  [v22 addAction_];
  v36 = CKFrameworkBundle(v35);
  if (!v36)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v37 = v36;
  v38 = sub_190D56ED0();
  v39 = sub_190D56ED0();
  v40 = [v37 localizedStringForKey:v38 value:0 table:v39];

  sub_190D56F10();
  v41 = sub_190D56ED0();

  v42 = [v33 actionWithTitle:v41 style:1 handler:0];

  [v22 addAction_];
  [v49 presentViewController:v22 animated:1 completion:0];

  a4 = v50;
LABEL_7:
  [a2 updateDeletingIncomingMessages_];
  v43 = [objc_opt_self() sharedConversationList];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820, &unk_190DD76C0);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_190DD55F0;
  *(v44 + 32) = a2;
  sub_1902188FC(0, &qword_1EAD466B0, off_1E72E4B40);
  v45 = a2;
  v46 = sub_190D57160();

  v47 = [objc_opt_self() now];
  sub_190D517E0();

  v48 = sub_190D51780();
  (*(v8 + 8))(v11, v7);
  [v43 recoverableDeleteForConversations:v46 deleteDate:v48 synchronousQuery:0 completionHandler:0];

  if (a4)
  {
    [a4 dismissDetailsViewAndShowConversationList];
  }
}

void sub_190AE5D24(uint64_t a1)
{
  v4 = CKFrameworkBundle(a1);
  if (!v4)
  {
    __break(1u);
LABEL_21:

    __break(1u);
LABEL_22:

    __break(1u);
    goto LABEL_23;
  }

  v5 = v4;
  v6 = sub_190D56ED0();
  v3 = sub_190D56ED0();
  v2 = [v5 localizedStringForKey:v6 value:0 table:v3];

  if (!v2)
  {
    sub_190D56F10();
    v2 = sub_190D56ED0();
  }

  v8 = CKFrameworkBundle(v7);
  if (!v8)
  {
    goto LABEL_21;
  }

  v9 = v8;
  v10 = sub_190D56ED0();
  v11 = sub_190D56ED0();
  v3 = [v9 localizedStringForKey:v10 value:0 table:v11];

  if (!v3)
  {
    sub_190D56F10();
    v3 = sub_190D56ED0();
  }

  v13 = CKFrameworkBundle(v12);
  if (!v13)
  {
    goto LABEL_22;
  }

  v14 = v13;
  v15 = sub_190D56ED0();
  v16 = sub_190D56ED0();
  v17 = [v14 localizedStringForKey:v15 value:0 table:v16];

  if (!v17)
  {
    sub_190D56F10();
    v17 = sub_190D56ED0();
  }

  v18 = [v1 delegate];
  if (v18)
  {
    v19 = v18;
    if ([v18 respondsToSelector_])
    {
      v20 = [v19 presentingViewControllerForAlertsFromDetailsAdapter_];
      swift_unknownObjectRelease();
      if (v20)
      {
        goto LABEL_16;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  v20 = [v1 detailsController];
LABEL_16:
  v21 = [objc_opt_self() alertControllerWithTitle:v2 message:v3 preferredStyle:1];

  v22 = [v1 conversation];
  v23 = [v1 delegate];
  v24 = swift_allocObject();
  v24[2] = v22;
  v24[3] = v20;
  v24[4] = v23;
  aBlock[4] = sub_190AE6244;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_19084156C;
  aBlock[3] = &block_descriptor_74;
  v25 = _Block_copy(aBlock);
  v35 = v22;
  v26 = v20;
  swift_unknownObjectRetain();

  v27 = objc_opt_self();
  v28 = [v27 actionWithTitle:v17 style:2 handler:v25];
  _Block_release(v25);

  v29 = CKFrameworkBundle([v21 addAction_]);
  if (!v29)
  {
LABEL_23:
    __break(1u);
    return;
  }

  v30 = v29;
  v31 = sub_190D56ED0();
  v32 = sub_190D56ED0();
  v33 = [v30 localizedStringForKey:v31 value:0 table:v32];

  if (!v33)
  {
    sub_190D56F10();
    v33 = sub_190D56ED0();
  }

  v34 = [v27 actionWithTitle:v33 style:1 handler:0];

  [v21 addAction_];
  [v21 presentFromViewController:v26 animated:1 completion:0];

  swift_unknownObjectRelease();
}

uint64_t objectdestroyTm_27(void (*a1)(void))
{
  a1(*(v1 + 32));

  return MEMORY[0x1EEE6BDD0](v1, 40, 7);
}

void sub_190AE62C0()
{
  v1 = [*(v0 + 16) chat];
  [v1 stopSharingLocation];
}

uint64_t _s23BackgroundsDisabledViewVMa(uint64_t a1)
{
  result = qword_1EAD5D0F0;
  if (!qword_1EAD5D0F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_190AE63B8(uint64_t a1)
{
  sub_190AE6424(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_190AE6424(uint64_t a1)
{
  if (!qword_1EAD57640)
  {
    sub_190D53DF0();
    v1 = sub_190D53A80();
    if (!v2)
    {
      atomic_store(v1, &qword_1EAD57640);
    }
  }
}

uint64_t sub_190AE6498@<X0>(uint64_t a1@<X8>)
{
  v79 = a1;
  v2 = _s23BackgroundsDisabledViewVMa(0);
  v75 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v76 = v3;
  v77 = &v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_190D543E0() - 8;
  MEMORY[0x1EEE9AC00](v74);
  v67 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_190D55430();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_190D511C0();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5D100, &qword_190DF1078);
  MEMORY[0x1EEE9AC00](v80);
  v11 = &v67 - v10;
  v78 = v1;
  sub_190AE6B20();
  v12 = sub_190D555E0();
  v14 = v13;
  v16 = v15;
  KeyPath = v17;
  sub_190D55480();
  (*(v6 + 104))(v8, *MEMORY[0x1E6980EA8], v5);
  sub_190D55460();

  (*(v6 + 8))(v8, v5);
  v18 = sub_190D555B0();
  v72 = v19;
  v73 = v18;
  LOBYTE(v8) = v20;
  v71 = v21;
  v22 = v67;

  sub_19081E474(v12, v14, v16 & 1);

  KeyPath = swift_getKeyPath();
  v69 = sub_190D55310();
  sub_190D539C0();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = v8 & 1;
  LOBYTE(v84) = v8 & 1;
  v81 = 0;
  v68 = sub_190D552A0();
  sub_190D539C0();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v82 = 0;
  sub_190D56500();
  sub_190D54430();
  *&v83[55] = v87;
  *&v83[71] = v88;
  *&v83[87] = v89;
  *&v83[103] = v90;
  *&v83[7] = v84;
  *&v83[23] = v85;
  *&v83[39] = v86;
  v40 = sub_190D56500();
  v42 = v41;
  v43 = *(v80 + 36);
  v44 = *(v74 + 28);
  v45 = *MEMORY[0x1E697F468];
  v46 = sub_190D54A20();
  (*(*(v46 - 8) + 104))(&v22[v44], v45, v46);
  __asm { FMOV            V0.2D, #26.0 }

  *v22 = _Q0;
  if (qword_1EAD51DA0 != -1)
  {
    swift_once();
  }

  v52 = &v11[v43];
  v53 = sub_190D52990();
  v54 = __swift_project_value_buffer(v53, qword_1EAD9E210);
  sub_190AE71E0(v22, v52, MEMORY[0x1E697EAF0]);
  v55 = v22;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5D108, &qword_190DF10B0);
  (*(*(v53 - 8) + 16))(v52 + *(v56 + 52), v54, v53);
  sub_1909586B8(v55);
  *(v52 + *(v56 + 56)) = 256;
  v57 = (v52 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5D110, &unk_190DF10B8) + 36));
  *v57 = v40;
  v57[1] = v42;
  v58 = v72;
  *v11 = v73;
  *(v11 + 1) = v58;
  v11[16] = v31;
  v59 = KeyPath;
  *(v11 + 3) = v71;
  *(v11 + 4) = v59;
  v11[40] = 1;
  LOBYTE(v59) = v68;
  v11[48] = v69;
  *(v11 + 7) = v24;
  *(v11 + 8) = v26;
  *(v11 + 9) = v28;
  *(v11 + 10) = v30;
  v11[88] = 0;
  v11[96] = v59;
  *(v11 + 13) = v33;
  *(v11 + 14) = v35;
  *(v11 + 15) = v37;
  *(v11 + 16) = v39;
  v11[136] = 0;
  v60 = *&v83[80];
  *(v11 + 201) = *&v83[64];
  *(v11 + 217) = v60;
  *(v11 + 233) = *&v83[96];
  *(v11 + 31) = *&v83[111];
  v61 = *&v83[16];
  *(v11 + 137) = *v83;
  *(v11 + 153) = v61;
  v62 = *&v83[48];
  *(v11 + 169) = *&v83[32];
  *(v11 + 185) = v62;
  v63 = v77;
  sub_190AE71E0(v78, v77, _s23BackgroundsDisabledViewVMa);
  v64 = (*(v75 + 80) + 16) & ~*(v75 + 80);
  v65 = swift_allocObject();
  sub_190AE7248(v63, v65 + v64);
  sub_190AE7308();
  sub_190D557E0();

  return sub_19022EEA4(v11, &qword_1EAD5D100, &qword_190DF1078);
}

id sub_190AE6B20()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54C10, &qword_190DE84D0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v31 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5D158, &qword_190DF10E0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v31 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5D160, &qword_190DF10E8);
  v32 = *(v6 - 8);
  v33 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v31 = &v31 - v7;
  v8 = sub_190D51290();
  MEMORY[0x1EEE9AC00](v8 - 8);
  result = CKFrameworkBundle(v9);
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v11 = result;
  v12 = sub_190D56ED0();
  v13 = sub_190D56ED0();
  v14 = [v11 localizedStringForKey:v12 value:0 table:v13];

  sub_190D56F10();
  result = CKFrameworkBundle(v15);
  if (!result)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v16 = result;
  v17 = sub_190D56ED0();
  v18 = sub_190D56ED0();
  v19 = [v16 localizedStringForKey:v17 value:0 table:v18];

  v20 = sub_190D56F10();
  v22 = v21;

  sub_190D51280();
  sub_190D511D0();
  v23 = [objc_opt_self() secondaryLabelColor];
  v35[0] = sub_190D55CE0();
  sub_190AE752C();
  sub_190D511E0();
  v35[0] = v20;
  v35[1] = v22;
  v24 = sub_190D519C0();
  (*(*(v24 - 8) + 56))(v2, 1, 1, v24);
  sub_190D511C0();
  sub_190AE7580();
  sub_19081E484();
  sub_190D51480();
  sub_19022EEA4(v2, &qword_1EAD54C10, &qword_190DE84D0);

  if ((*(v32 + 48))(v5, 1, v33) == 1)
  {
    v25 = &qword_1EAD5D158;
    v26 = &qword_190DF10E0;
    v27 = v5;
  }

  else
  {
    v28 = v31;
    sub_190AE75D8(v5, v31);
    v29 = sub_190D55D50();
    sub_190233640(&qword_1EAD5D178, &qword_1EAD5D160, &qword_190DF10E8, MEMORY[0x1E69E66D8]);
    v30 = sub_190D511F0();
    v34 = v29;
    sub_190D512B0();
    v30(v35, 0);
    v27 = v28;
    v25 = &qword_1EAD5D160;
    v26 = &qword_190DF10E8;
  }

  return sub_19022EEA4(v27, v25, v26);
}

id sub_190AE6FEC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F20, &unk_190DD75D0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v12 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v12 - v4;
  sub_190D515E0();
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v7 = result;
    sub_190844DA8(v5, v2);
    v8 = sub_190D515F0();
    v9 = *(v8 - 8);
    v10 = 0;
    if ((*(v9 + 48))(v2, 1, v8) != 1)
    {
      v10 = sub_190D51570();
      (*(v9 + 8))(v2, v8);
    }

    sub_190820FDC(MEMORY[0x1E69E7CC0]);
    v11 = sub_190D56D60();

    [v7 openSensitiveURL:v10 withOptions:v11];

    return sub_19022EEA4(v5, &unk_1EAD55F20, &unk_190DD75D0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_190AE71E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_190AE7248(uint64_t a1, uint64_t a2)
{
  v4 = _s23BackgroundsDisabledViewVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_190AE7308()
{
  result = qword_1EAD5D118;
  if (!qword_1EAD5D118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5D100, &qword_190DF1078);
    sub_190AE73C0();
    sub_190233640(&qword_1EAD5D150, &qword_1EAD5D110, &unk_190DF10B8, MEMORY[0x1E697F940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5D118);
  }

  return result;
}

unint64_t sub_190AE73C0()
{
  result = qword_1EAD5D120;
  if (!qword_1EAD5D120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5D128, &qword_190DF10C8);
    sub_190AE74A8(&qword_1EAD5D130, &qword_1EAD5D138, &qword_190DF10D0, sub_190AE7478);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5D120);
  }

  return result;
}

uint64_t sub_190AE74A8(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_190AE752C()
{
  result = qword_1EAD5D168;
  if (!qword_1EAD5D168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5D168);
  }

  return result;
}

unint64_t sub_190AE7580()
{
  result = qword_1EAD5D170;
  if (!qword_1EAD5D170)
  {
    sub_190D511C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5D170);
  }

  return result;
}

uint64_t sub_190AE75D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5D160, &qword_190DF10E8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t _s14descr1F03EB3E1C29DownloadPurgedAttachmentsViewVMa(uint64_t a1)
{
  result = qword_1EAD5D180;
  if (!qword_1EAD5D180)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_190AE76BC(uint64_t a1)
{
  result = _s14descr1F03EBF51O9ViewModelCMa(319);
  if (v2 <= 0x3F)
  {
    result = sub_190D579B0();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_190AE775C(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_19093B898();
  sub_190D51C20();

  v4 = *(v3 + 32);
  *a2 = *(v3 + 24);
  *(a2 + 8) = v4;
}

double sub_190AE77DC(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_19093B898();
  sub_190D51C10();

  return result;
}

uint64_t sub_190AE7880@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v46 = a1;
  v45 = _s14descr1F03EB3E1C29DownloadPurgedAttachmentsViewVMa(0);
  v3 = *(v45 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v5 = v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD563E0, &qword_190DD7300);
  v7 = *(v6 - 8);
  v41 = v6;
  v42 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v9 = v39 - v8;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD530E8, &qword_190E02820);
  MEMORY[0x1EEE9AC00](v40);
  v11 = v39 - v10;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5D190, &qword_190DF1160);
  MEMORY[0x1EEE9AC00](v43);
  v44 = v39 - v12;
  v13 = *v1;
  v47 = sub_19093AF34();
  v48 = v14;
  sub_190AE8350(v1, v5);
  v15 = *(v3 + 80);
  v16 = (v15 + 16) & ~v15;
  v17 = v4;
  v18 = v15;
  v19 = swift_allocObject();
  sub_190AE83B4(v5, v19 + v16);
  sub_19081E484();
  sub_190D56080();
  swift_getKeyPath();
  v47 = v13;
  sub_19093B898();
  sub_190D51C20();

  v20 = 0;
  if ((v13[32] & 1) == 0)
  {
    v20 = sub_190D55E10();
  }

  KeyPath = swift_getKeyPath();
  (*(v42 + 32))(v11, v9, v41);
  v22 = &v11[*(v40 + 36)];
  *v22 = KeyPath;
  v22[1] = v20;
  v23 = v45;
  v40 = *(v45 + 20);
  sub_190AE8350(v2, v5);
  v39[1] = v18;
  v39[2] = v17;
  v24 = swift_allocObject();
  sub_190AE83B4(v5, v24 + v16);
  v25 = v44;
  sub_19081E40C(v11, v44, &unk_1EAD530E8, &qword_190E02820);
  v26 = v2;
  v27 = v16;
  v28 = v43;
  v29 = *(v43 + 52);
  v30 = sub_190D579B0();
  v31 = *(v30 - 8);
  v41 = *(v31 + 16);
  v42 = v31 + 16;
  v41(v25 + v29, v26 + v40, v30);
  v32 = (v25 + *(v28 + 56));
  *v32 = sub_190AE8474;
  v32[1] = v24;
  v33 = *(v23 + 24);
  sub_190AE8350(v26, v5);
  v34 = swift_allocObject();
  sub_190AE83B4(v5, v34 + v27);
  v35 = v46;
  sub_19081E40C(v25, v46, &qword_1EAD5D190, &qword_190DF1160);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5D198, &unk_190DF11C0);
  result = (v41)(v35 + *(v36 + 52), v26 + v33, v30);
  v38 = (v35 + *(v36 + 56));
  *v38 = sub_190AE85A8;
  v38[1] = v34;
  return result;
}

uint64_t sub_190AE7D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_190D572A0();
  v4[3] = sub_190D57290();
  v6 = sub_190D57240();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x1EEE6DFA0](sub_190AE7D98, v6, v5);
}

uint64_t sub_190AE7D98()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_190AE7E2C;

  return sub_19093B314();
}

uint64_t sub_190AE7E2C()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return MEMORY[0x1EEE6DFA0](sub_1909F3328, v3, v2);
}

double sub_190AE7F4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = _s14descr1F03EB3E1C29DownloadPurgedAttachmentsViewVMa(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BAF0, &qword_190DD7B00);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v18 - v10;
  v12 = sub_190D572E0();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  sub_190AE8350(a2, &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_190D572A0();
  v13 = sub_190D57290();
  v14 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v15 = swift_allocObject();
  v16 = MEMORY[0x1E69E85E0];
  *(v15 + 16) = v13;
  *(v15 + 24) = v16;
  sub_190AE83B4(&v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  sub_190857E08(0, 0, v11, a4, v15);

  return result;
}

uint64_t sub_190AE8100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_190D572A0();
  v4[3] = sub_190D57290();
  v6 = sub_190D57240();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x1EEE6DFA0](sub_190AE8198, v6, v5);
}

uint64_t sub_190AE8198()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_190AE822C;

  return sub_19093B314();
}

uint64_t sub_190AE822C()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return MEMORY[0x1EEE6DFA0](sub_190AE89C4, v3, v2);
}

uint64_t sub_190AE8350(uint64_t a1, uint64_t a2)
{
  v4 = _s14descr1F03EB3E1C29DownloadPurgedAttachmentsViewVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_190AE83B4(uint64_t a1, uint64_t a2)
{
  v4 = _s14descr1F03EB3E1C29DownloadPurgedAttachmentsViewVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_28()
{
  v1 = (_s14descr1F03EB3E1C29DownloadPurgedAttachmentsViewVMa(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = sub_190D579B0();
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v3 + v5, v6);
  v7(v0 + v3 + v1[8], v6);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_190AE8644(uint64_t a1)
{
  v4 = *(_s14descr1F03EB3E1C29DownloadPurgedAttachmentsViewVMa(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_190221DA0;

  return sub_190AE8100(a1, v6, v7, v1 + v5);
}

uint64_t objectdestroy_13Tm_0()
{
  v1 = (_s14descr1F03EB3E1C29DownloadPurgedAttachmentsViewVMa(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();

  v5 = v1[7];
  v6 = sub_190D579B0();
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v3 + v5, v6);
  v7(v0 + v3 + v1[8], v6);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_190AE8850(uint64_t a1)
{
  v4 = *(_s14descr1F03EB3E1C29DownloadPurgedAttachmentsViewVMa(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_190221DA4;

  return sub_190AE7D00(a1, v6, v7, v1 + v5);
}

unint64_t sub_190AE8960()
{
  result = qword_1EAD5D1A0;
  if (!qword_1EAD5D1A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5D198, &unk_190DF11C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5D1A0);
  }

  return result;
}

double sub_190AE89C8@<D0>(uint64_t a1@<X8>)
{
  v32 = sub_190D540E0();
  v30 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v28 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_190D55350();
  v29 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5D1A8, &qword_190DF1200);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v27 - v9;
  v11 = sub_190D554A0();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v27 - v17;
  v19 = *(v12 + 56);
  v19(v10, 1, 1, v11, v16);
  sub_190AE8DEC(v10);
  (v19)(v10, 1, 1, v11);
  sub_190AE8E54(v10, v7);
  if ((*(v12 + 48))(v7, 1, v11) == 1)
  {
    sub_190AE8DEC(v7);
    v20 = v18;
    (*(v12 + 104))(v18, *MEMORY[0x1E6980F30], v11);
  }

  else
  {
    v20 = v18;
    (*(v12 + 32))(v18, v7, v11);
  }

  (*(v12 + 16))(v14, v20, v11);
  sub_190D553D0();
  (*(v30 + 104))(v28, *MEMORY[0x1E697E6E8], v32);
  sub_190D55340();
  sub_190D55330();
  v22 = v21;
  (*(v29 + 8))(v4, v31);
  sub_190D55480();
  sub_190D553D0();
  v23 = sub_190D55420();

  v24 = sub_190D55D50();
  v25 = sub_190D55D50();
  (*(v12 + 8))(v20, v11);
  *a1 = v22;
  *(a1 + 8) = xmmword_190DF11F0;
  *(a1 + 24) = v23;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 72) = v24;
  *(a1 + 80) = v25;
  return result;
}

uint64_t sub_190AE8DEC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5D1A8, &qword_190DF1200);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_190AE8E54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5D1A8, &qword_190DF1200);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_190AE8EE8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_190AE8F30(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_190AE8F94@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v38 = a2;
  v40 = a5;
  v7 = sub_190D51040();
  v39 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v37 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_190D50FD0();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v37 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57CB8, &qword_190DE1178);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v37 - v17;
  sub_190D51020();
  if (a4)
  {
    sub_190D50FC0();
    v19 = sub_1908369D0(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v21 = v19[2];
    v20 = v19[3];
    if (v21 >= v20 >> 1)
    {
      v19 = sub_1908369D0((v20 > 1), v21 + 1, 1, v19);
    }

    v19[2] = v21 + 1;
    (*(v10 + 32))(v19 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v21, v15, v9);
  }

  else
  {
    v19 = MEMORY[0x1E69E7CC0];
  }

  v22 = [a1 description];
  v23 = sub_190D56F10();
  v25 = v24;

  v41 = v23;
  v42 = v25;
  MEMORY[0x193AF28B0](44, 0xE100000000000000);
  v26 = [v38 description];
  v27 = sub_190D56F10();
  v29 = v28;

  MEMORY[0x193AF28B0](v27, v29);

  sub_190D50FC0();

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v19 = sub_1908369D0(0, v19[2] + 1, 1, v19);
  }

  v31 = v19[2];
  v30 = v19[3];
  if (v31 >= v30 >> 1)
  {
    v19 = sub_1908369D0((v30 > 1), v31 + 1, 1, v19);
  }

  v19[2] = v31 + 1;
  (*(v10 + 32))(v19 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v31, v12, v9);
  v32 = v39;
  v33 = *(v39 + 48);
  if (v33(v18, 1, v7))
  {
  }

  else
  {
    sub_190D50FE0();
  }

  if (v33(v18, 1, v7))
  {
    v34 = sub_190D515F0();
    (*(*(v34 - 8) + 56))(v40, 1, 1, v34);
  }

  else
  {
    v35 = v37;
    (*(v32 + 16))(v37, v18, v7);
    sub_190D50FF0();
    (*(v32 + 8))(v35, v7);
  }

  return sub_19022EEA4(v18, &qword_1EAD57CB8, &qword_190DE1178);
}

uint64_t sub_190AE9440@<X0>(uint64_t a3@<X8>)
{
  v4 = sub_190D51040();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57CB8, &qword_190DE1178);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v14 - v9;
  sub_190D51020();
  v11 = *(v5 + 48);
  if (!v11(v10, 1, v4))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53F60, &qword_190DE1180);
    sub_190D50FD0();
    v15 = a3;
    *(swift_allocObject() + 16) = xmmword_190DD1D90;
    a3 = v15;
    sub_190D50FC0();
    sub_190D50FE0();
  }

  if (v11(v10, 1, v4))
  {
    v12 = sub_190D515F0();
    (*(*(v12 - 8) + 56))(a3, 1, 1, v12);
  }

  else
  {
    (*(v5 + 16))(v7, v10, v4);
    sub_190D50FF0();
    (*(v5 + 8))(v7, v4);
  }

  return sub_19022EEA4(v10, &qword_1EAD57CB8, &qword_190DE1178);
}

uint64_t sub_190AE9710(void *a1)
{
  v2 = sub_190D515F0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v39 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F20, &unk_190DD75D0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v37 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v37 - v16;
  v40 = v3;
  (*(v3 + 56))(&v37 - v16, 1, 1, v2, v15);
  v18 = [a1 latitude];
  if (v18)
  {
    v19 = v18;
    v38 = v2;
    v20 = [a1 longitude];
    if (v20)
    {
      v21 = v20;
      v22 = [a1 label];
      if (v22)
      {
        v23 = v22;
        sub_190D56F10();
        v25 = v24;
      }

      else
      {
        v25 = 0;
      }

      sub_190AE8F94(v19, v21, v25, v13);

      v2 = v38;
      goto LABEL_10;
    }

    v2 = v38;
  }

  v26 = [a1 query];
  if (!v26)
  {
    goto LABEL_11;
  }

  v27 = v26;
  sub_190D56F10();

  sub_190AE9440(v10);
  v13 = v10;
LABEL_10:

  sub_19022EEA4(v17, &unk_1EAD55F20, &unk_190DD75D0);
  sub_190844E18(v13, v17);
LABEL_11:
  sub_190844DA8(v17, v7);
  v28 = v40;
  if ((*(v40 + 48))(v7, 1, v2) == 1)
  {
    sub_19022EEA4(v7, &unk_1EAD55F20, &unk_190DD75D0);
    v29 = [a1 fallbackUrl];
    if (v29)
    {
      v30 = v29;
      v31 = sub_190D56F10();
    }

    else
    {
      v31 = 0;
    }

    sub_190B3AA78(v31);
  }

  else
  {
    v32 = v39;
    (*(v28 + 32))(v39, v7, v2);
    v33 = [objc_opt_self() sharedApplication];
    v34 = sub_190D51570();
    sub_19082233C(MEMORY[0x1E69E7CC0]);
    type metadata accessor for OpenExternalURLOptionsKey(0);
    sub_190964630();
    v35 = sub_190D56D60();

    [v33 openURL:v34 options:v35 completionHandler:0];

    (*(v28 + 8))(v32, v2);
  }

  return sub_19022EEA4(v17, &unk_1EAD55F20, &unk_190DD75D0);
}

double sub_190AE9C5C()
{
  v1 = sub_190D56B90();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v0 + OBJC_IVAR___CKResolvedBubbleMaterialConfiguration_wrapped, v1, v3);
  sub_190D56B40();
  v7 = v6;
  (*(v2 + 8))(v5, v1);
  return v7;
}

uint64_t sub_190AE9EA4()
{
  v1 = sub_190D56B90();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v0 + OBJC_IVAR___CKResolvedBubbleMaterialConfiguration_wrapped, v1, v3);
  v6 = sub_190D56B80();
  (*(v2 + 8))(v5, v1);
  return v6;
}

id sub_190AE9FAC(char *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = sub_190D56B90();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, &a1[OBJC_IVAR___CKResolvedBubbleMaterialConfiguration_wrapped], v5, v7);
  v10 = a1;
  v11 = a3();
  (*(v6 + 8))(v9, v5);
  v12 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];

  return v12;
}

id sub_190AEA108(uint64_t (*a1)(uint64_t))
{
  v3 = sub_190D56B90();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (*(v4 + 16))(v7, v1 + OBJC_IVAR___CKResolvedBubbleMaterialConfiguration_wrapped, v3, v5);
  v9 = a1(v8);
  (*(v4 + 8))(v7, v3);
  v10 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];

  return v10;
}

uint64_t sub_190AEA3E8()
{
  v1 = sub_190D56A60();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_190D56B90();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, v0 + OBJC_IVAR___CKResolvedBubbleMaterialConfiguration_wrapped, v5, v7);
  sub_190D56B50();
  (*(v6 + 8))(v9, v5);
  v10 = sub_190D56A50();
  (*(v2 + 8))(v4, v1);
  return v10;
}

id CKBubbleMaterialConfiguration.Resolved.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CKBubbleMaterialConfiguration.Resolved.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKBubbleMaterialConfiguration.Resolved(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for CKBubbleMaterialConfiguration.Resolved(uint64_t a1)
{
  result = qword_1EAD5D1B8;
  if (!qword_1EAD5D1B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_190AEA710(uint64_t a1)
{
  result = sub_190D56B90();
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

void sub_190AEA8BC(double a1)
{
  v2 = v1;
  v66 = sub_190D56770();
  v3 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v65 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_190D567A0();
  v5 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v63 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_190D51C00();
  v67 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_190D567F0();
  v10 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v62 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v61 = &v48 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v71 = &v48 - v15;
  v16 = OBJC_IVAR___CKTapbackPickerViewController_needsPresentationAnimation;
  if (*(v1 + OBJC_IVAR___CKTapbackPickerViewController_needsPresentationAnimation) == 1)
  {
    v17 = sub_19098B380();
    v18 = [v17 indexPathsForVisibleItems];

    v19 = sub_190D57180();
    if (*(v19 + 16))
    {
      v48 = v10;
      *(v2 + v16) = 0;
      aBlock[0] = v19;
      sub_190D52690();
      sub_190AEB14C(aBlock);

      v20 = aBlock[0];
      sub_190D567B0();
      v56 = v20[2];
      if (v56)
      {
        v21 = 0;
        v60 = OBJC_IVAR___CKTapbackPickerViewController____lazy_storage___collectionView;
        v59 = v67 + 16;
        v58 = (v48 + 8);
        v51 = v74;
        v50 = (v3 + 8);
        v49 = (v5 + 8);
        v57 = (v67 + 8);
        v55 = v2;
        v54 = v7;
        v53 = v9;
        v52 = v20;
        v22 = (v48 + 8);
        while (v21 < v20[2])
        {
          (*(v67 + 16))(v9, v20 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v21, v7);
          v34 = *(v2 + v60);
          v35 = sub_190D51BB0();
          v36 = [v34 cellForItemAtIndexPath_];

          if (!v36)
          {
            goto LABEL_24;
          }

          type metadata accessor for TapbackPickerCollectionViewCell();
          v37 = swift_dynamicCastClass();
          if (!v37)
          {

            goto LABEL_25;
          }

          v38 = v37;
          v39 = OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_tapbackView;
          swift_beginAccess();
          v40 = *(v38 + v39);
          if (!v40)
          {

LABEL_24:

LABEL_25:
            (*v57)(v9, v7);
            (*v58)(v71, v72);
            return;
          }

          type metadata accessor for TapbackClassicView();
          v41 = swift_dynamicCastClass();
          if (v41)
          {
            v42 = v41;
            v43 = objc_opt_self();
            v44 = v40;
            if ([v43 accessibilityAnimatedImagesDisabled])
            {
            }

            else
            {
              v46 = *(v42 + OBJC_IVAR___CKTapbackClassicView_asset);
              v47 = v46;

              if (v46)
              {
              }
            }
          }

          else
          {
            v45 = v40;
          }

          v70 = v36;
          if ([v40 respondsToSelector_])
          {
            [v40 prepareForAppearingAnimation];
          }

          v23 = v21 + 1;
          v24 = v62;
          sub_190D56820();
          v25 = v61;
          sub_190D56820();
          v69 = *v22;
          v69(v24, v72);
          sub_1908E9B68();
          v68 = sub_190D57870();
          v26 = swift_allocObject();
          *(v26 + 16) = v40;
          v74[2] = sub_190AEB1F4;
          v74[3] = v26;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          v74[0] = sub_190840E6C;
          v74[1] = &block_descriptor_75;
          v27 = _Block_copy(aBlock);
          v28 = v40;

          v29 = v63;
          sub_190D56790();
          aBlock[0] = MEMORY[0x1E69E7CC0];
          sub_190840DB0();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD546A0, &unk_190DD6E80);
          sub_190840E08();
          v30 = v65;
          v31 = v66;
          sub_190D58170();
          v32 = v68;
          MEMORY[0x193AF30E0](v25, v29, v30, v27);
          _Block_release(v27);

          v33 = v30;
          v21 = v23;
          (*v50)(v33, v31);
          (*v49)(v29, v64);
          v69(v25, v72);
          v9 = v53;
          v7 = v54;
          (*v57)(v53, v54);
          v2 = v55;
          v20 = v52;
          if (v56 == v23)
          {
            goto LABEL_21;
          }
        }

        __break(1u);

        __break(1u);
      }

      else
      {
LABEL_21:

        (*(v48 + 8))(v71, v72);
      }
    }

    else
    {
    }
  }
}

void sub_190AEB14C(uint64_t *a1)
{
  v2 = *(sub_190D51C00() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1909E39D0(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_190AEB204(v5);
  *a1 = v3;
}

void sub_190AEB204(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_190D58710();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_190D51C00();
        v6 = sub_190D571D0();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_190D51C00() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_190AEB5F4(v8, v9, a1, v4);
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
    sub_190AEB330(0, v2, 1, a1);
  }
}

void sub_190AEB330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_190D51C00();
  MEMORY[0x1EEE9AC00](v8);
  v46 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v36 - v11;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v36 - v16;
  v38 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v20 = *(v14 + 16);
    v19 = v14 + 16;
    v21 = *(v19 + 56);
    v47 = (v19 - 8);
    v48 = v20;
    v49 = v19;
    v44 = (v19 + 16);
    v45 = v18;
    v22 = (v18 + v21 * (a3 - 1));
    v43 = -v21;
    v23 = a1 - a3;
    v37 = v21;
    v24 = v18 + v21 * a3;
LABEL_5:
    v41 = v22;
    v42 = a3;
    v39 = v24;
    v40 = v23;
    v25 = v23;
    v26 = v22;
    while (1)
    {
      v27 = v48;
      (v48)(v17, v24, v8, v15);
      v27(v12, v26, v8);
      v28 = sub_190D51BF0();
      if (v28 == sub_190D51BF0())
      {
        v29 = sub_190D51BE0();
        v30 = sub_190D51BE0();
      }

      else
      {
        v29 = sub_190D51BF0();
        v30 = sub_190D51BF0();
      }

      v31 = v29 < v30;
      v32 = *v47;
      (*v47)(v12, v8);
      v32(v17, v8);
      if (!v31)
      {
LABEL_4:
        a3 = v42 + 1;
        v22 = &v41[v37];
        v23 = v40 - 1;
        v24 = v39 + v37;
        if (v42 + 1 == v38)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v45)
      {
        break;
      }

      v33 = *v44;
      v34 = v46;
      (*v44)(v46, v24, v8);
      swift_arrayInitWithTakeFrontToBack();
      v33(v26, v34, v8);
      v26 += v43;
      v24 += v43;
      if (__CFADD__(v25++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_190AEB5F4(int64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v144 = a1;
  v8 = sub_190D51C00();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v147 = &v138 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v159 = &v138 - v12;
  MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v138 - v15;
  MEMORY[0x1EEE9AC00](v17);
  MEMORY[0x1EEE9AC00](v18);
  MEMORY[0x1EEE9AC00](v19);
  v142 = &v138 - v20;
  v25 = MEMORY[0x1EEE9AC00](v21);
  v141 = &v138 - v26;
  v27 = a3[1];
  v154 = v9;
  if (v27 < 1)
  {
    v29 = MEMORY[0x1E69E7CC0];
LABEL_103:
    v30 = *v144;
    if (!*v144)
    {
      goto LABEL_141;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = v154;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_105:
      v165 = v29;
      v133 = *(v29 + 16);
      if (v133 >= 2)
      {
        while (*a3)
        {
          v134 = *(v29 + 16 * v133);
          v135 = v29;
          v136 = *(v29 + 16 * (v133 - 1) + 32);
          v29 = *(v29 + 16 * (v133 - 1) + 40);
          sub_190AEC158(*a3 + *(v8 + 72) * v134, (*a3 + *(v8 + 72) * v136), (*a3 + *(v8 + 72) * v29), v30);
          if (v5)
          {
            goto LABEL_113;
          }

          if (v29 < v134)
          {
            goto LABEL_128;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v135 = sub_1909E383C(v135);
          }

          if (v133 - 2 >= *(v135 + 2))
          {
            goto LABEL_129;
          }

          v137 = &v135[16 * v133];
          *v137 = v134;
          *(v137 + 1) = v29;
          v165 = v135;
          sub_1909E37B0(v133 - 1);
          v29 = v165;
          v133 = *(v165 + 16);
          if (v133 <= 1)
          {
            goto LABEL_113;
          }
        }

        goto LABEL_139;
      }

LABEL_113:

      return;
    }

LABEL_135:
    v29 = sub_1909E383C(v29);
    goto LABEL_105;
  }

  v161 = v22;
  v138 = a4;
  v28 = 0;
  v163 = (v9 + 8);
  v164 = v9 + 16;
  v162 = (v9 + 32);
  v29 = MEMORY[0x1E69E7CC0];
  v146 = a3;
  v149 = v16;
  v140 = v23;
  v139 = v24;
  while (1)
  {
    v30 = v28;
    v31 = v28 + 1;
    if (v28 + 1 < v27)
    {
      v152 = v27;
      v32 = *a3;
      v33 = *(v154 + 72);
      v155 = v28 + 1;
      v34 = *(v154 + 16);
      v35 = v141;
      v34(v141, v32 + v33 * v31, v8, v25);
      v145 = v30;
      v156 = v33;
      v36 = v32 + v33 * v30;
      v37 = v142;
      v151 = v34;
      (v34)(v142, v36, v8);
      v38 = sub_190D51BF0();
      v39 = sub_190D51BF0();
      v148 = v5;
      if (v38 == v39)
      {
        v40 = sub_190D51BE0();
        v41 = sub_190D51BE0();
      }

      else
      {
        v40 = sub_190D51BF0();
        v41 = sub_190D51BF0();
      }

      LODWORD(v153) = v40 < v41;
      v143 = v29;
      v42 = *v163;
      (*v163)(v37, v8);
      v150 = v42;
      (v42)(v35, v8);
      v43 = (v145 + 2);
      v44 = v155;
      v45 = v156 * (v145 + 2);
      v46 = v32 + v45;
      v47 = v156 * v155;
      v48 = v32 + v156 * v155;
      v49 = v140;
      a3 = v139;
      do
      {
        v31 = v43;
        v55 = v44;
        v29 = v47;
        v54 = v45;
        if (v43 >= v152)
        {
          break;
        }

        v158 = v44;
        v160 = v43;
        v56 = v151;
        v151(a3, v46, v8);
        v56(v49, v48, v8);
        v57 = sub_190D51BF0();
        v58 = sub_190D51BF0();
        v157 = v54;
        if (v57 == v58)
        {
          v50 = sub_190D51BE0();
          v51 = sub_190D51BE0();
        }

        else
        {
          v50 = sub_190D51BF0();
          v51 = sub_190D51BF0();
        }

        v52 = v50 < v51;
        v53 = v150;
        (v150)(v49, v8);
        v53(a3, v8);
        v31 = v160;
        v43 = (v160 + 1);
        v54 = v157;
        v46 += v156;
        v48 += v156;
        v55 = v158;
        v44 = v158 + 1;
        v47 = &v156[v29];
        v45 = &v156[v157];
      }

      while (v153 == v52);
      if (!v153)
      {
        a3 = v146;
        v29 = v143;
        v5 = v148;
        v16 = v149;
LABEL_30:
        v30 = v145;
        goto LABEL_31;
      }

      v30 = v145;
      v5 = v148;
      if (v31 < v145)
      {
        goto LABEL_132;
      }

      if (v145 < v31)
      {
        v59 = v145 * v156;
        do
        {
          if (v30 != v55)
          {
            v148 = v5;
            v61 = *v146;
            if (!*v146)
            {
              goto LABEL_138;
            }

            v62 = v55;
            v160 = *v162;
            v160(v147, (v61 + v59), v8);
            if (v59 < v29 || v61 + v59 >= (v61 + v54))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v59 != v29)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v160((v61 + v29), v147, v8);
            v5 = v148;
            v55 = v62;
          }

          ++v30;
          v29 -= v156;
          v54 -= v156;
          v59 += v156;
        }

        while (v30 < v55--);
        a3 = v146;
        v29 = v143;
        v16 = v149;
        goto LABEL_30;
      }

      a3 = v146;
      v29 = v143;
      v16 = v149;
    }

LABEL_31:
    v63 = a3[1];
    if (v31 < v63)
    {
      if (__OFSUB__(v31, v30))
      {
        goto LABEL_131;
      }

      if (v31 - v30 < v138)
      {
        break;
      }
    }

LABEL_52:
    if (v31 < v30)
    {
      goto LABEL_130;
    }

    v83 = swift_isUniquelyReferenced_nonNull_native();
    v155 = v31;
    if ((v83 & 1) == 0)
    {
      v29 = sub_190835714(0, *(v29 + 16) + 1, 1, v29);
    }

    v85 = *(v29 + 16);
    v84 = *(v29 + 24);
    v86 = v85 + 1;
    if (v85 >= v84 >> 1)
    {
      v29 = sub_190835714((v84 > 1), v85 + 1, 1, v29);
    }

    *(v29 + 16) = v86;
    v87 = v29 + 16 * v85;
    v88 = v155;
    *(v87 + 32) = v30;
    *(v87 + 40) = v88;
    v89 = *v144;
    if (!*v144)
    {
      goto LABEL_140;
    }

    if (v85)
    {
      while (1)
      {
        v30 = v86 - 1;
        if (v86 >= 4)
        {
          break;
        }

        if (v86 == 3)
        {
          v90 = *(v29 + 32);
          v91 = *(v29 + 40);
          v100 = __OFSUB__(v91, v90);
          v92 = v91 - v90;
          v93 = v100;
LABEL_72:
          if (v93)
          {
            goto LABEL_119;
          }

          v106 = (v29 + 16 * v86);
          v108 = *v106;
          v107 = v106[1];
          v109 = __OFSUB__(v107, v108);
          v110 = v107 - v108;
          v111 = v109;
          if (v109)
          {
            goto LABEL_122;
          }

          v112 = (v29 + 32 + 16 * v30);
          v114 = *v112;
          v113 = v112[1];
          v100 = __OFSUB__(v113, v114);
          v115 = v113 - v114;
          if (v100)
          {
            goto LABEL_125;
          }

          if (__OFADD__(v110, v115))
          {
            goto LABEL_126;
          }

          if (v110 + v115 >= v92)
          {
            if (v92 < v115)
            {
              v30 = v86 - 2;
            }

            goto LABEL_93;
          }

          goto LABEL_86;
        }

        v116 = (v29 + 16 * v86);
        v118 = *v116;
        v117 = v116[1];
        v100 = __OFSUB__(v117, v118);
        v110 = v117 - v118;
        v111 = v100;
LABEL_86:
        if (v111)
        {
          goto LABEL_121;
        }

        v119 = v29 + 16 * v30;
        v121 = *(v119 + 32);
        v120 = *(v119 + 40);
        v100 = __OFSUB__(v120, v121);
        v122 = v120 - v121;
        if (v100)
        {
          goto LABEL_124;
        }

        if (v122 < v110)
        {
          goto LABEL_3;
        }

LABEL_93:
        v127 = v30 - 1;
        if (v30 - 1 >= v86)
        {
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
          __break(1u);
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
          goto LABEL_134;
        }

        if (!*a3)
        {
          goto LABEL_137;
        }

        v128 = v29;
        v129 = *(v29 + 32 + 16 * v127);
        v130 = *(v29 + 32 + 16 * v30);
        v29 = *(v29 + 32 + 16 * v30 + 8);
        sub_190AEC158(*a3 + *(v154 + 72) * v129, (*a3 + *(v154 + 72) * v130), (*a3 + *(v154 + 72) * v29), v89);
        if (v5)
        {
          goto LABEL_113;
        }

        if (v29 < v129)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v128 = sub_1909E383C(v128);
        }

        if (v127 >= *(v128 + 2))
        {
          goto LABEL_116;
        }

        v131 = &v128[16 * v127];
        *(v131 + 4) = v129;
        *(v131 + 5) = v29;
        v165 = v128;
        sub_1909E37B0(v30);
        v29 = v165;
        v86 = *(v165 + 16);
        v16 = v149;
        if (v86 <= 1)
        {
          goto LABEL_3;
        }
      }

      v94 = v29 + 32 + 16 * v86;
      v95 = *(v94 - 64);
      v96 = *(v94 - 56);
      v100 = __OFSUB__(v96, v95);
      v97 = v96 - v95;
      if (v100)
      {
        goto LABEL_117;
      }

      v99 = *(v94 - 48);
      v98 = *(v94 - 40);
      v100 = __OFSUB__(v98, v99);
      v92 = v98 - v99;
      v93 = v100;
      if (v100)
      {
        goto LABEL_118;
      }

      v101 = (v29 + 16 * v86);
      v103 = *v101;
      v102 = v101[1];
      v100 = __OFSUB__(v102, v103);
      v104 = v102 - v103;
      if (v100)
      {
        goto LABEL_120;
      }

      v100 = __OFADD__(v92, v104);
      v105 = v92 + v104;
      if (v100)
      {
        goto LABEL_123;
      }

      if (v105 >= v97)
      {
        v123 = (v29 + 32 + 16 * v30);
        v125 = *v123;
        v124 = v123[1];
        v100 = __OFSUB__(v124, v125);
        v126 = v124 - v125;
        if (v100)
        {
          goto LABEL_127;
        }

        if (v92 < v126)
        {
          v30 = v86 - 2;
        }

        goto LABEL_93;
      }

      goto LABEL_72;
    }

LABEL_3:
    v27 = a3[1];
    v28 = v155;
    if (v155 >= v27)
    {
      goto LABEL_103;
    }
  }

  v64 = (v30 + v138);
  if (__OFADD__(v30, v138))
  {
    goto LABEL_133;
  }

  if (v64 >= v63)
  {
    v64 = a3[1];
  }

  if (v64 < v30)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v31 == v64)
  {
    goto LABEL_52;
  }

  v143 = v29;
  v148 = v5;
  v65 = *a3;
  v66 = *(v154 + 72);
  v160 = *(v154 + 16);
  v67 = (v65 + v66 * (v31 - 1));
  v157 = -v66;
  v158 = v65;
  v145 = v30;
  v68 = v30 - v31;
  v150 = v66;
  v151 = v64;
  v69 = (v65 + v31 * v66);
LABEL_42:
  v155 = v31;
  v156 = v67;
  v152 = v69;
  v153 = v68;
  while (1)
  {
    v70 = v160;
    v160(v16, v69, v8);
    v71 = v8;
    v72 = v16;
    v73 = v161;
    v74 = v71;
    (v70)(v161, v67);
    v75 = sub_190D51BF0();
    if (v75 == sub_190D51BF0())
    {
      v76 = sub_190D51BE0();
      v77 = sub_190D51BE0();
    }

    else
    {
      v76 = sub_190D51BF0();
      v77 = sub_190D51BF0();
    }

    v78 = v76 < v77;
    v79 = *v163;
    (*v163)(v73, v74);
    (v79)(v72, v74);
    v16 = v72;
    if (!v78)
    {
      v8 = v74;
LABEL_41:
      v31 = v155 + 1;
      v67 = &v150[v156];
      v68 = v153 - 1;
      v69 = &v150[v152];
      if ((v155 + 1) == v151)
      {
        v31 = v151;
        v5 = v148;
        v30 = v145;
        a3 = v146;
        v29 = v143;
        goto LABEL_52;
      }

      goto LABEL_42;
    }

    if (!v158)
    {
      break;
    }

    v80 = *v162;
    v81 = v159;
    v8 = v74;
    (*v162)(v159, v69, v74);
    swift_arrayInitWithTakeFrontToBack();
    v80(v67, v81, v74);
    v67 += v157;
    v69 += v157;
    if (__CFADD__(v68++, 1))
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
}

void sub_190AEC158(unint64_t a1, char *a2, char *a3, char *a4)
{
  v59 = a4;
  v7 = sub_190D51C00();
  v63 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v62 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v54 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v54 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v54 - v16;
  v64 = *(v18 + 72);
  if (!v64)
  {
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
    return;
  }

  if (&a2[-a1] == 0x8000000000000000 && v64 == -1)
  {
    goto LABEL_67;
  }

  v19 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v64 == -1)
  {
    goto LABEL_68;
  }

  v20 = &a2[-a1] / v64;
  v67 = a1;
  v21 = v59;
  v66 = v59;
  if (v20 >= v19 / v64)
  {
    v24 = v19 / v64 * v64;
    if (v59 < a2 || &a2[v24] <= v59)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v59 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v35 = &v21[v24];
    if (v24 >= 1)
    {
      v36 = -v64;
      v55 = (v63 + 8);
      v56 = (v63 + 16);
      v37 = &v21[v24];
      v57 = -v64;
      v58 = a1;
      do
      {
        v63 = v35;
        v54 = v35;
        v38 = a2;
        v60 = a2;
        v61 = &a2[v36];
        while (1)
        {
          if (v38 <= a1)
          {
            v67 = v38;
            v65 = v54;
            goto LABEL_65;
          }

          v40 = a3;
          v41 = *v56;
          v64 = v37 + v36;
          (v41)(v11);
          v42 = v62;
          v41();
          v43 = sub_190D51BF0();
          if (v43 == sub_190D51BF0())
          {
            v44 = sub_190D51BE0();
            v45 = sub_190D51BE0();
          }

          else
          {
            v44 = sub_190D51BF0();
            v45 = sub_190D51BF0();
          }

          v46 = v44 < v45;
          v47 = v42;
          a3 = (v40 + v36);
          v48 = *v55;
          (*v55)(v47, v7);
          v49 = v11;
          v48(v11, v7);
          if (v46)
          {
            break;
          }

          v50 = v64;
          v51 = v64;
          v52 = v59;
          if (v40 < v37 || a3 >= v37)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v40 != v37)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v63 = v51;
          v37 = v51;
          v39 = v50 > v52;
          v11 = v49;
          v36 = v57;
          a1 = v58;
          v38 = v60;
          if (!v39)
          {
            a2 = v60;
            v35 = v63;
            goto LABEL_64;
          }
        }

        a2 = v61;
        v53 = v59;
        if (v40 < v60 || a3 >= v60)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v40 != v60)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v35 = v63;
        v36 = v57;
        a1 = v58;
      }

      while (v37 > v53);
    }

LABEL_64:
    v67 = a2;
    v65 = v35;
  }

  else
  {
    v22 = v20 * v64;
    v23 = v59;
    if (v59 < a1 || a1 + v22 <= v59)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v59 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v61 = a3;
    v62 = &v21[v22];
    v65 = &v21[v22];
    if (v22 >= 1 && a2 < a3)
    {
      v60 = *(v63 + 16);
      v63 += 16;
      v26 = (v63 - 8);
      do
      {
        v27 = v60;
        (v60)(v17, a2, v7);
        (v27)(v14, v23, v7);
        v28 = sub_190D51BF0();
        if (v28 == sub_190D51BF0())
        {
          v29 = sub_190D51BE0();
          v30 = sub_190D51BE0();
        }

        else
        {
          v29 = sub_190D51BF0();
          v30 = sub_190D51BF0();
        }

        v31 = v29 < v30;
        v32 = *v26;
        (*v26)(v14, v7);
        v32(v17, v7);
        if (v31)
        {
          v33 = v64;
          if (a1 < a2 || a1 >= &a2[v64])
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v33;
        }

        else
        {
          v33 = v64;
          v34 = v23 + v64;
          if (a1 < v23 || a1 >= v34)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v23)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v66 = v34;
          v23 += v33;
        }

        a1 += v33;
        v67 = a1;
      }

      while (v23 < v62 && a2 < v61);
    }
  }

LABEL_65:
  sub_1909E3850(&v67, &v66, &v65);
}

Swift::Bool __swiftcall UITextView.ck_isCursorDirectlyAfterBracketCharacter()()
{
  v1 = v0;
  v2 = [v0 selectedRange];
  if (v2 == sub_190D50E40() || v2 < 1)
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = [v1 text];
    if (v4)
    {
      v5 = v4;
      v6 = [v4 characterAtIndex_];
      v7 = sub_190D56ED0();
      v8 = [objc_opt_self() characterSetWithCharactersInString_];

      LOBYTE(v6) = [v8 characterIsMember_];
      LOBYTE(v4) = v6;
    }

    else
    {
      __break(1u);
    }
  }

  return v4;
}

BOOL sub_190AEC86C(void *a1)
{
  v1 = a1;
  isCursorDirectlyAfterBracket = UITextView.ck_isCursorDirectlyAfterBracketCharacter()();

  return isCursorDirectlyAfterBracket;
}

double sub_190AEC9A0(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return result;
}

void (*sub_190AECA00(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC7ChatKit40CKSendMenuPopoverContainerViewController_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_190863E2C;
}

id CKSendMenuPopoverContainerViewController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CKSendMenuPopoverContainerViewController.init()()
{
  swift_unknownObjectWeakInit();
  result = [objc_opt_self() sharedBehaviors];
  if (result)
  {
    v2 = result;
    result = [result newSendMenuPopoverLayoutConfiguration];
    if (result)
    {
      v3 = result;
      v4 = OBJC_IVAR____TtC7ChatKit40CKSendMenuPopoverContainerViewController_layout;
      v5 = [objc_allocWithZone(CKPopoverViewLayout) initWithConfiguration_];

      *&v0[v4] = v5;
      v7.receiver = v0;
      v7.super_class = type metadata accessor for CKSendMenuPopoverContainerViewController();
      v6 = objc_msgSendSuper2(&v7, sel_initWithNibName_bundle_, 0, 0);
      [v6 setModalPresentationStyle_];
      return v6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_190AECC34(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  if (qword_1EAD46238 != -1)
  {
    swift_once();
  }

  v7 = sub_190D53040();
  __swift_project_value_buffer(v7, qword_1EAD9D760);
  v8 = v4;
  v9 = sub_190D53020();
  v10 = sub_190D576C0();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    *(v11 + 4) = v8;
    *v12 = v8;
    v13 = v8;
    _os_log_impl(&dword_19020E000, v9, v10, "Self: %@", v11, 0xCu);
    sub_190830D58(v12);
    MEMORY[0x193AF7A40](v12, -1, -1);
    MEMORY[0x193AF7A40](v11, -1, -1);
  }

  v14 = a1;
  v15 = sub_190D53020();
  v16 = sub_190D576C0();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138412290;
    *(v17 + 4) = v14;
    *v18 = v14;
    v19 = v14;
    _os_log_impl(&dword_19020E000, v15, v16, "View Controller to add: %@", v17, 0xCu);
    sub_190830D58(v18);
    MEMORY[0x193AF7A40](v18, -1, -1);
    MEMORY[0x193AF7A40](v17, -1, -1);
  }

  v20 = [v8 childViewControllers];
  sub_190AEDD14();
  isEscapingClosureAtFileLocation = sub_190D57180();

  if (!(isEscapingClosureAtFileLocation >> 62))
  {
    if (*((isEscapingClosureAtFileLocation & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_9;
    }

LABEL_14:

    v23 = 0;
    goto LABEL_15;
  }

  if (!sub_190D581C0())
  {
    goto LABEL_14;
  }

LABEL_9:
  if ((isEscapingClosureAtFileLocation & 0xC000000000000001) != 0)
  {
    goto LABEL_30;
  }

  if (*((isEscapingClosureAtFileLocation & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    for (i = *(isEscapingClosureAtFileLocation + 32); ; i = MEMORY[0x193AF3B90](0, isEscapingClosureAtFileLocation))
    {
      v23 = i;

LABEL_15:
      [v8 addChildViewController_];
      v24 = [v8 view];
      if (!v24)
      {
        break;
      }

      v25 = v24;
      v26 = [v14 view];
      if (!v26)
      {
        goto LABEL_33;
      }

      v27 = v26;
      [v25 addSubview_];

      v28 = [v14 view];
      if (!v28)
      {
        goto LABEL_34;
      }

      v29 = v28;
      v30 = [v8 view];
      if (!v30)
      {
        goto LABEL_35;
      }

      v31 = v30;
      [v30 bounds];
      v33 = v32;
      v35 = v34;
      v37 = v36;
      v39 = v38;

      [v29 setFrame_];
      v40 = [v14 view];
      if (!v40)
      {
        goto LABEL_36;
      }

      v41 = v40;
      [v40 setAutoresizingMask_];

      [v14 didMoveToParentViewController_];
      if (v23)
      {
        v42 = v23;
        v43 = [v14 view];
        if (!v43)
        {
          goto LABEL_37;
        }

        v44 = v43;
        [v43 setAlpha_];

        v45 = objc_opt_self();
        v46 = swift_allocObject();
        *(v46 + 16) = v42;
        *(v46 + 24) = v14;
        v67 = sub_190AEDD74;
        v68 = v46;
        aBlock = MEMORY[0x1E69E9820];
        v64 = 1107296256;
        v65 = sub_190840E6C;
        v66 = &block_descriptor_15_2;
        v47 = _Block_copy(&aBlock);
        v48 = v14;
        v49 = v42;

        v50 = swift_allocObject();
        v50[2] = v8;
        v50[3] = v49;
        v50[4] = a3;
        v50[5] = a4;
        v67 = sub_190AEDD7C;
        v68 = v50;
        aBlock = MEMORY[0x1E69E9820];
        v64 = 1107296256;
        v65 = sub_190896518;
        v66 = &block_descriptor_21_3;
        v51 = _Block_copy(&aBlock);
        v52 = v8;
        v53 = v49;
        sub_190D50920();

        [v45 animateWithDuration:v47 animations:v51 completion:0.3];
        _Block_release(v51);
        _Block_release(v47);
      }

      v69 = 0;
      v54 = *&v8[OBJC_IVAR____TtC7ChatKit40CKSendMenuPopoverContainerViewController_layout];
      v14 = swift_allocObject();
      v14[2] = a2;
      v14[3] = v8;
      v14[4] = &v69;
      v55 = swift_allocObject();
      *(v55 + 16) = sub_190AEDD60;
      *(v55 + 24) = v14;
      v67 = sub_190838A04;
      v68 = v55;
      aBlock = MEMORY[0x1E69E9820];
      v64 = 1107296256;
      v65 = sub_19088B7B8;
      v66 = &block_descriptor_76;
      v56 = _Block_copy(&aBlock);
      v8 = v8;
      v57 = v54;
      sub_190D50920();

      [v57 updateProperties_];

      _Block_release(v56);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        if (v69 == 1)
        {
          v58 = objc_opt_self();
          v59 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v67 = sub_190AEDD6C;
          v68 = v59;
          aBlock = MEMORY[0x1E69E9820];
          v64 = 1107296256;
          v65 = sub_190840E6C;
          v66 = &block_descriptor_9_8;
          v60 = _Block_copy(&aBlock);

          [v58 animateWithDuration:v60 animations:0.3];
          _Block_release(v60);
        }

        if (v23)
        {
        }

        else
        {
          a3();
        }

        return;
      }

      __break(1u);
LABEL_30:
      ;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
}

void sub_190AED41C(void *a1, void *a2)
{
  v3 = [a1 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = v3;
  [v3 setAlpha_];

  v5 = [a2 view];
  if (!v5)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v6 = v5;
  [v5 setAlpha_];
}

void sub_190AED4C0(unint64_t a1, char *a2, _BYTE *a3)
{
  if (a1 > 3)
  {
    v5 = 2;
  }

  else
  {
    v5 = qword_190DF12C0[a1];
  }

  v6 = OBJC_IVAR____TtC7ChatKit40CKSendMenuPopoverContainerViewController_layout;
  [*&a2[OBJC_IVAR____TtC7ChatKit40CKSendMenuPopoverContainerViewController_layout] setState_];
  v7 = [a2 presentationController];
  if (v7)
  {
    v29 = v7;
    v8 = [v7 containerView];
    if (v8)
    {
      v28 = v8;
      v9 = [v29 sourceView];
      if (v9)
      {
        v10 = v9;
        v11 = *&a2[v6];
        [v28 frame];
        [v11 setContainerSize_];

        v14 = *&a2[v6];
        [v10 frame];
        [v14 setAnchorSize_];

        v17 = *&a2[v6];
        [v10 center];
        v19 = v18;
        v21 = v20;
        v22 = [v10 superview];
        [v28 convertPoint:v22 fromView:{v19, v21}];
        v24 = v23;
        v26 = v25;

        [v17 setAnchorCenter_];
        *a3 = 1;
        return;
      }

      v27 = v28;
    }

    else
    {
      v27 = v29;
    }
  }
}

void sub_190AED774(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [v2 view];
    if (v3)
    {
      v4 = v3;
      v5 = [*&v2[OBJC_IVAR____TtC7ChatKit40CKSendMenuPopoverContainerViewController_layout] newLayoutMetricsWithCoordinateSpace_];
      [v5 frame];
      [v2 setPreferredContentSize_];

      swift_beginAccess();
      v8 = swift_unknownObjectWeakLoadStrong();
      if (v8)
      {
        v9 = v8;
        [v5 frame];
        [v9 sendMenuFrameChanged_];

        swift_unknownObjectRelease();
      }

      else
      {
      }

      v2 = v4;
    }

    else
    {
    }
  }
}

double sub_190AED8AC(char a1)
{
  v10.receiver = v1;
  v10.super_class = type metadata accessor for CKSendMenuPopoverContainerViewController();
  objc_msgSendSuper2(&v10, sel_viewWillAppear_, a1 & 1);
  v3 = [v1 transitionCoordinator];
  if (v3)
  {
    v5 = v3;
    v6 = swift_allocObject();
    *(v6 + 16) = v1;
    v9[4] = sub_190AEDD80;
    v9[5] = v6;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 1107296256;
    v9[2] = sub_190AEDA9C;
    v9[3] = &block_descriptor_27_1;
    v7 = _Block_copy(v9);
    v8 = v1;

    [v5 animateAlongsideTransition:v7 completion:0];
    _Block_release(v7);
    swift_unknownObjectRelease();
  }

  return result;
}

void sub_190AED9CC(uint64_t a1, char *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [a2 view];
    if (v5)
    {
      v6 = v5;
      [v5 frame];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;

      [v4 sendMenuHasInitialFrame_];
      swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }
}

double sub_190AEDA9C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_190D50920();
  v3 = swift_unknownObjectRetain();
  v2(v3);

  swift_unknownObjectRelease();
  return result;
}

id CKSendMenuPopoverContainerViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_190D56ED0();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id CKSendMenuPopoverContainerViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKSendMenuPopoverContainerViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_190AEDCA8()
{
  v0 = sub_190D53040();
  __swift_allocate_value_buffer(v0, qword_1EAD9D760);
  __swift_project_value_buffer(v0, qword_1EAD9D760);
  sub_190D53010();
  return sub_190D53030();
}

unint64_t sub_190AEDD14()
{
  result = qword_1EAD45060;
  if (!qword_1EAD45060)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAD45060);
  }

  return result;
}

void sub_190AEDE70()
{
  swift_unknownObjectWeakInit();
  v1 = [objc_opt_self() sharedBehaviors];
  if (!v1)
  {
    __break(1u);
  }

  v2 = v1;
  v3 = [v1 newSendMenuPopoverLayoutConfiguration];
  if (!v3)
  {
    __break(1u);
  }

  v4 = OBJC_IVAR____TtC7ChatKit40CKSendMenuPopoverContainerViewController_layout;
  v5 = v3;
  v6 = [objc_allocWithZone(CKPopoverViewLayout) initWithConfiguration_];

  *(v0 + v4) = v6;
  sub_190D58510();
  __break(1u);
}

void sub_190AEDF68(void *a1, uint64_t a2, void *a3, void (**a4)(void))
{
  v62 = swift_allocObject();
  *(v62 + 16) = a4;
  _Block_copy(a4);
  if (qword_1EAD46238 != -1)
  {
    swift_once();
  }

  v8 = sub_190D53040();
  __swift_project_value_buffer(v8, qword_1EAD9D760);
  v9 = a3;
  v10 = sub_190D53020();
  v11 = sub_190D576C0();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    *(v12 + 4) = v9;
    *v13 = v9;
    v14 = v9;
    _os_log_impl(&dword_19020E000, v10, v11, "Self: %@", v12, 0xCu);
    sub_190830D58(v13);
    MEMORY[0x193AF7A40](v13, -1, -1);
    MEMORY[0x193AF7A40](v12, -1, -1);
  }

  v15 = a1;
  v16 = sub_190D53020();
  v17 = sub_190D576C0();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v18 = 138412290;
    *(v18 + 4) = v15;
    *v19 = v15;
    v20 = v15;
    _os_log_impl(&dword_19020E000, v16, v17, "View Controller to add: %@", v18, 0xCu);
    sub_190830D58(v19);
    MEMORY[0x193AF7A40](v19, -1, -1);
    MEMORY[0x193AF7A40](v18, -1, -1);
  }

  v21 = [v9 childViewControllers];
  sub_190AEDD14();
  isEscapingClosureAtFileLocation = sub_190D57180();

  if (!(isEscapingClosureAtFileLocation >> 62))
  {
    if (*((isEscapingClosureAtFileLocation & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_9;
    }

LABEL_14:

    v24 = 0;
    goto LABEL_15;
  }

  if (!sub_190D581C0())
  {
    goto LABEL_14;
  }

LABEL_9:
  if ((isEscapingClosureAtFileLocation & 0xC000000000000001) != 0)
  {
    goto LABEL_31;
  }

  if (*((isEscapingClosureAtFileLocation & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    for (i = *(isEscapingClosureAtFileLocation + 32); ; i = MEMORY[0x193AF3B90](0, isEscapingClosureAtFileLocation))
    {
      v24 = i;

LABEL_15:
      [v9 addChildViewController_];
      v25 = [v9 view];
      if (!v25)
      {
        break;
      }

      v26 = v25;
      v27 = [v15 view];
      if (!v27)
      {
        goto LABEL_34;
      }

      v28 = v27;
      [v26 addSubview_];

      v29 = [v15 view];
      if (!v29)
      {
        goto LABEL_35;
      }

      v30 = v29;
      v31 = [v9 view];
      if (!v31)
      {
        goto LABEL_36;
      }

      v32 = v31;
      [v31 bounds];
      v34 = v33;
      v36 = v35;
      v38 = v37;
      v40 = v39;

      [v30 setFrame_];
      v41 = [v15 view];
      if (!v41)
      {
        goto LABEL_37;
      }

      v42 = v41;
      [v41 setAutoresizingMask_];

      [v15 didMoveToParentViewController_];
      if (v24)
      {
        v61 = a4;
        v43 = v24;
        v44 = [v15 view];
        if (!v44)
        {
          goto LABEL_38;
        }

        v45 = v44;
        [v44 setAlpha_];

        v46 = objc_opt_self();
        v47 = swift_allocObject();
        *(v47 + 16) = v43;
        *(v47 + 24) = v15;
        v67 = sub_190AEE9F4;
        v68 = v47;
        aBlock = MEMORY[0x1E69E9820];
        v64 = 1107296256;
        v65 = sub_190840E6C;
        v66 = &block_descriptor_55_0;
        v48 = _Block_copy(&aBlock);
        v49 = v15;
        v50 = v43;

        v51 = swift_allocObject();
        v51[2] = v9;
        v51[3] = v50;
        v51[4] = sub_190841A8C;
        v51[5] = v62;
        v67 = sub_190AEEA18;
        v68 = v51;
        aBlock = MEMORY[0x1E69E9820];
        v64 = 1107296256;
        v65 = sub_190896518;
        v66 = &block_descriptor_62_2;
        v52 = _Block_copy(&aBlock);
        v53 = v9;
        v54 = v50;
        sub_190D50920();

        [v46 animateWithDuration:v48 animations:v52 completion:0.3];
        _Block_release(v52);
        _Block_release(v48);
      }

      v69 = 0;
      v55 = *&v9[OBJC_IVAR____TtC7ChatKit40CKSendMenuPopoverContainerViewController_layout];
      v15 = swift_allocObject();
      v15[2] = a2;
      v15[3] = v9;
      v15[4] = &v69;
      a2 = swift_allocObject();
      *(a2 + 16) = sub_190AEEA1C;
      *(a2 + 24) = v15;
      v67 = sub_190984F4C;
      v68 = a2;
      aBlock = MEMORY[0x1E69E9820];
      v64 = 1107296256;
      v65 = sub_19088B7B8;
      v66 = &block_descriptor_43_1;
      v56 = _Block_copy(&aBlock);
      v9 = v9;
      v57 = v55;
      sub_190D50920();

      [v57 updateProperties_];

      _Block_release(v56);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        if (v69 == 1)
        {
          v58 = objc_opt_self();
          v59 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v67 = sub_190AEE9F0;
          v68 = v59;
          aBlock = MEMORY[0x1E69E9820];
          v64 = 1107296256;
          v65 = sub_190840E6C;
          v66 = &block_descriptor_48_0;
          v60 = _Block_copy(&aBlock);

          [v58 animateWithDuration:v60 animations:0.3];
          _Block_release(v60);
        }

        if (v24)
        {
        }

        else
        {
          a4[2](a4);
        }

        return;
      }

      __break(1u);
LABEL_31:
      ;
    }
  }

  else
  {
    __break(1u);
  }

  _Block_release(a4);
  __break(1u);
LABEL_34:
  _Block_release(a4);
  __break(1u);
LABEL_35:
  _Block_release(a4);
  __break(1u);
LABEL_36:
  _Block_release(a4);
  __break(1u);
LABEL_37:
  _Block_release(a4);
  __break(1u);
LABEL_38:
  _Block_release(v61);
  __break(1u);
}

uint64_t objectdestroy_17Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_190AEE810()
{
  v1 = *(v0 + 32);
  v2 = sub_190AEE840(*(v0 + 24));
  return v1(v2);
}

id sub_190AEE840(void *a1)
{
  if (qword_1EAD46238 != -1)
  {
    swift_once();
  }

  v2 = sub_190D53040();
  __swift_project_value_buffer(v2, qword_1EAD9D760);
  v3 = a1;
  v4 = sub_190D53020();
  v5 = sub_190D576C0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v3;
    *v7 = v3;
    v8 = v3;
    _os_log_impl(&dword_19020E000, v4, v5, "Removing child: %@", v6, 0xCu);
    sub_190830D58(v7);
    MEMORY[0x193AF7A40](v7, -1, -1);
    MEMORY[0x193AF7A40](v6, -1, -1);
  }

  [v3 willMoveToParentViewController_];
  result = [v3 view];
  if (result)
  {
    v10 = result;
    [result removeFromSuperview];

    return [v3 removeFromParentViewController];
  }

  else
  {
    __break(1u);
  }

  return result;
}

id CKBalloonView.snapshotCurrentView.getter()
{
  v1 = [v0 canUseOpaqueMask];
  if (v1)
  {
    [v0 setCanUseOpaqueMask_];
    [v0 prepareForDisplayIfNeeded];
    [v0 layoutIfNeeded];
    [objc_opt_self() flush];
  }

  result = [v0 snapshotViewAfterScreenUpdates_];
  if (v1)
  {
    v3 = result;
    [v0 setCanUseOpaqueMask_];
    [v0 prepareForDisplayIfNeeded];
    [v0 layoutIfNeeded];
    return v3;
  }

  return result;
}

char *sub_190AEEB54()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5D1D8, &qword_190DF12F0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v81 = &v66 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v80 = &v66 - v4;
  v78 = sub_190D51D40();
  v77 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v85 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5D1E0, &qword_190DF12F8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v84 = &v66 - v7;
  v88 = sub_190D51DA0();
  v92 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v82 = (&v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v87 = &v66 - v10;
  v83 = sub_190D51D90();
  v79 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v12 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v66 - v14;
  v16 = sub_190D51D50();
  v86 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53838, &unk_190DF1300);
  inited = swift_initStackObject();
  v76 = xmmword_190DD1D90;
  *(inited + 16) = xmmword_190DD1D90;
  *(inited + 32) = 0x74706D6F7270;
  *(inited + 40) = 0xE600000000000000;
  v20 = _s20ImagePlaygroundInputVMa(0);
  v21 = (v0 + *(v20 + 20));
  v23 = *v21;
  v22 = v21[1];
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v23;
  *(inited + 56) = v22;
  sub_190D52690();
  v24 = sub_190820FDC(inited);
  swift_setDeallocating();
  sub_19099F008(inited + 32);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5D1E8, &qword_190DF1310);
  v90 = v24;
  v25 = v89;
  sub_190D51D60();
  if (v25)
  {
    return v12;
  }

  v73 = v20;
  v89 = v0;
  v70 = 0;
  v75 = v15;
  v74 = v12;
  v26 = v87;
  v27 = *(v86 + 16);
  v71 = v18;
  v27(v87, v18, v16);
  v28 = *MEMORY[0x1E699C588];
  v29 = *(v92 + 104);
  v92 += 104;
  v72 = v29;
  v30 = (v29)(v26, v28, v88);
  result = CKFrameworkBundle(v30);
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v32 = result;
  v33 = sub_190D56ED0();
  v34 = sub_190D56ED0();
  v35 = [v32 localizedStringForKey:v33 value:0 table:v34];

  sub_190D56F10();
  v69 = v36;

  result = CKFrameworkBundle(v37);
  v38 = v84;
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v39 = result;
  v68 = v16;
  v40 = sub_190D56ED0();
  v41 = sub_190D56ED0();
  v42 = [v39 localizedStringForKey:v40 value:0 table:v41];

  sub_190D56F10();
  v43 = sub_190D51D80();
  v67 = *(*(v43 - 8) + 56);
  v67(v38, 1, 1, v43);
  sub_190D51D70();
  v44 = v88;
  v45 = (v89 + *(v73 + 24));
  v46 = *v45;
  v47 = v45[1];
  v48 = v82;
  *v82 = *v45;
  v48[1] = v47;
  v72(v48, *MEMORY[0x1E699C5F0], v44);
  sub_19083B680(v46, v47);
  result = CKFrameworkBundle(v49);
  v50 = v38;
  v51 = v83;
  if (result)
  {
    v52 = result;
    v53 = sub_190D56ED0();
    v54 = sub_190D56ED0();
    v55 = [v52 localizedStringForKey:v53 value:0 table:v54];

    sub_190D56F10();
    v67(v50, 1, 1, v43);
    v56 = v74;
    sub_190D51D70();
    (*(v77 + 104))(v85, *MEMORY[0x1E699C2E8], v78);
    v57 = v79;
    v58 = *(v79 + 56);
    v58(v80, 1, 1, v51);
    v59 = *(v57 + 16);
    v60 = v81;
    v59(v81, v56, v51);
    v58(v60, 0, 1, v51);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5D1F0, &qword_190DF1318);
    v61 = (*(v57 + 80) + 32) & ~*(v57 + 80);
    v62 = swift_allocObject();
    *(v62 + 16) = v76;
    v63 = v75;
    v59((v62 + v61), v75, v51);
    v64 = objc_allocWithZone(sub_190D51D10());
    v12 = sub_190D51D00();
    v65 = *(v57 + 8);
    v65(v74, v51);
    v65(v63, v51);
    (*(v86 + 8))(v71, v68);
    return v12;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t _s20ImagePlaygroundInputVMa(uint64_t a1)
{
  result = qword_1EAD5D1F8;
  if (!qword_1EAD5D1F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_190AEF578(uint64_t a1)
{
  result = sub_190D518A0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

id sub_190AEF5FC()
{
  result = [objc_opt_self() sharedBehaviors];
  if (result)
  {
    qword_1EAD5D208 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_190AEF640()
{
  if (qword_1EAD51C80 != -1)
  {
    swift_once();
  }

  v0 = qword_1EAD5D208;
  v1 = [v0 theme];

  if (v1)
  {
    qword_1EAD5D210 = v1;
  }

  else
  {
    __break(1u);
  }
}

id sub_190AEF750(void *a1, uint64_t a2, SEL *a3)
{
  v4 = a1;
  v5 = [v4 chat];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 *a3];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t ConversationAppIntentsQuery.entities(matching:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_190D572A0();
  v2[4] = sub_190D57290();
  v4 = sub_190D57240();

  return MEMORY[0x1EEE6DFA0](sub_190AEF858, v4, v3);
}

uint64_t sub_190AEF858()
{
  v68 = v0;

  if (qword_1EAD45C50 != -1)
  {
    swift_once();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (qword_1EAD46290 != -1)
    {
      swift_once();
    }

    v24 = sub_190D53040();
    __swift_project_value_buffer(v24, qword_1EAD9D7D8);
    sub_190D52690();
    v25 = sub_190D53020();
    v26 = sub_190D57680();

    if (os_log_type_enabled(v25, v26))
    {
      v28 = v0[2];
      v27 = v0[3];
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v61 = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_19021D9F8(v28, v27, &v61);
      _os_log_impl(&dword_19020E000, v25, v26, "No message navigator provided, unable to query for conversation matchingString: %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x193AF7A40](v30, -1, -1);
      MEMORY[0x193AF7A40](v29, -1, -1);
    }

    goto LABEL_25;
  }

  v2 = Strong;
  v3 = sub_190D56ED0();
  v4 = [v2 firstConversationExactlyMatchingDisplayName_];

  if (!v4)
  {
    if (qword_1EAD46290 != -1)
    {
      swift_once();
    }

    v31 = sub_190D53040();
    __swift_project_value_buffer(v31, qword_1EAD9D7D8);
    sub_190D52690();
    v32 = sub_190D53020();
    v33 = sub_190D57680();

    if (os_log_type_enabled(v32, v33))
    {
      v35 = v0[2];
      v34 = v0[3];
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v61 = v37;
      *v36 = 136315138;
      *(v36 + 4) = sub_19021D9F8(v35, v34, &v61);
      _os_log_impl(&dword_19020E000, v32, v33, "No conversation found for matchingString: %s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v37);
      MEMORY[0x193AF7A40](v37, -1, -1);
      MEMORY[0x193AF7A40](v36, -1, -1);
    }

    swift_unknownObjectRelease();
    goto LABEL_25;
  }

  v5 = v4;
  ConversationAppIntentsEntity.init(conversation:)(v5, &v61);
  if (!v62)
  {
    if (qword_1EAD46290 != -1)
    {
      swift_once();
    }

    v38 = sub_190D53040();
    __swift_project_value_buffer(v38, qword_1EAD9D7D8);
    v39 = v5;
    sub_190D52690();
    v40 = sub_190D53020();
    v41 = sub_190D57680();

    if (os_log_type_enabled(v40, v41))
    {
      v58 = v0[2];
      v60 = v0[3];
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v61 = v43;
      *v42 = 136315394;
      v44 = [v39 debugDescription];
      v45 = sub_190D56F10();
      v47 = v46;

      v48 = sub_19021D9F8(v45, v47, &v61);

      *(v42 + 4) = v48;
      *(v42 + 12) = 2080;
      *(v42 + 14) = sub_19021D9F8(v58, v60, &v61);
      _os_log_impl(&dword_19020E000, v40, v41, "No 'id' in converation %s for string %s", v42, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x193AF7A40](v43, -1, -1);
      MEMORY[0x193AF7A40](v42, -1, -1);
    }

    swift_unknownObjectRelease();
LABEL_25:
    v49 = MEMORY[0x1E69E7CC0];
    goto LABEL_28;
  }

  v55 = v62;
  v7 = v66;
  v6 = v67;
  v56 = v65;
  v8 = v63;
  v57 = v64;
  v59 = v61;
  if (qword_1EAD46290 != -1)
  {
    swift_once();
  }

  v9 = sub_190D53040();
  __swift_project_value_buffer(v9, qword_1EAD9D7D8);
  v10 = v5;
  sub_190D52690();
  v11 = sub_190D53020();
  v12 = sub_190D57680();

  v13 = v10;

  if (os_log_type_enabled(v11, v12))
  {
    v53 = v8;
    v54 = v7;
    v15 = v0[2];
    v14 = v0[3];
    v16 = swift_slowAlloc();
    v52 = v6;
    v17 = swift_slowAlloc();
    v61 = v17;
    *v16 = 136315394;
    *(v16 + 4) = sub_19021D9F8(v15, v14, &v61);
    *(v16 + 12) = 2080;
    v18 = [v10 debugDescription];
    v19 = sub_190D56F10();
    v21 = v20;

    v22 = sub_19021D9F8(v19, v21, &v61);

    *(v16 + 14) = v22;
    _os_log_impl(&dword_19020E000, v11, v12, "Mapping from strings: %s to conversation: %s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193AF7A40](v17, -1, -1);
    MEMORY[0x193AF7A40](v16, -1, -1);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53F68, &qword_190DD6430);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_190DD1D90;
    *(v23 + 32) = v59;
    *(v23 + 40) = v55;
    *(v23 + 48) = v53;
    *(v23 + 56) = v57;
    *(v23 + 64) = v56;
    *(v23 + 72) = v54;
    *(v23 + 80) = v52;
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53F68, &qword_190DD6430);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_190DD1D90;
    *(v23 + 32) = v59;
    *(v23 + 40) = v55;
    *(v23 + 48) = v8;
    *(v23 + 56) = v57;
    *(v23 + 64) = v56;
    *(v23 + 72) = v7;
    *(v23 + 80) = v6;
  }

  swift_unknownObjectRelease();
  v49 = v23;
LABEL_28:
  v50 = v0[1];

  return v50(v49);
}

uint64_t ConversationAppIntentsQuery.entities(for:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_190D572A0();
  *(v1 + 24) = sub_190D57290();
  v3 = sub_190D57240();

  return MEMORY[0x1EEE6DFA0](sub_190AF0058, v3, v2);
}

uint64_t sub_190AF0058()
{
  v69 = v0;

  if (qword_1EAD45C50 != -1)
  {
LABEL_36:
    swift_once();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(v0 + 16);
    v4 = *(v3 + 16);
    if (!v4)
    {
      v7 = MEMORY[0x1E69E7CC0];
      goto LABEL_26;
    }

    v5 = 0;
    v6 = v3 + 40;
    v7 = MEMORY[0x1E69E7CC0];
    v60 = v3 + 40;
    while (1)
    {
      v61 = v7;
      v8 = v6 + 16 * v5;
      v9 = v5;
      while (1)
      {
        if (v9 >= v4)
        {
          __break(1u);
LABEL_35:
          __break(1u);
          goto LABEL_36;
        }

        v5 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_35;
        }

        sub_190D52690();
        v16 = sub_190D56ED0();
        v17 = [v2 conversationMatchingGUID_];

        if (v17)
        {
          break;
        }

        v10 = 0;
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v14 = 0;
        v15 = 0;
LABEL_7:
        sub_190AF0750(v15, 0, v14, v13, v12, v11, v10);
        ++v9;
        v8 += 16;
        if (v5 == v4)
        {
          v7 = v61;
          goto LABEL_26;
        }
      }

      ConversationAppIntentsEntity.init(conversation:)(v17, &v62);

      v15 = v62;
      v18 = v63;
      v14 = v64;
      v13 = v65;
      v12 = v66;
      v11 = v67;
      v10 = v68;
      if (!v63)
      {
        goto LABEL_7;
      }

      v58 = v64;
      v59 = v62;
      v56 = v66;
      v57 = v65;
      v19 = v67;
      v20 = v68;
      v21 = v61;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_1908369F8(0, *(v61 + 2) + 1, 1, v61);
      }

      v23 = *(v21 + 2);
      v22 = *(v21 + 3);
      v24 = v21;
      v25 = v56;
      v26 = v57;
      v27 = v58;
      v28 = v59;
      if (v23 >= v22 >> 1)
      {
        v32 = sub_1908369F8((v22 > 1), v23 + 1, 1, v21);
        v26 = v57;
        v27 = v58;
        v25 = v56;
        v30 = v19;
        v29 = v20;
        v24 = v32;
        v28 = v59;
      }

      else
      {
        v29 = v20;
        v30 = v19;
      }

      v6 = v60;
      *(v24 + 2) = v23 + 1;
      v31 = &v24[56 * v23];
      v7 = v24;
      *(v31 + 4) = v28;
      *(v31 + 5) = v18;
      *(v31 + 6) = v27;
      *(v31 + 7) = v26;
      *(v31 + 8) = v25;
      *(v31 + 9) = v30;
      *(v31 + 10) = v29;
      if (v5 == v4)
      {
LABEL_26:
        if (qword_1EAD46290 != -1)
        {
          swift_once();
        }

        v42 = sub_190D53040();
        __swift_project_value_buffer(v42, qword_1EAD9D7D8);
        sub_190D52690();
        sub_190D52690();
        v43 = sub_190D53020();
        v44 = sub_190D57680();

        if (os_log_type_enabled(v43, v44))
        {
          v45 = *(v0 + 16);
          v46 = swift_slowAlloc();
          v47 = swift_slowAlloc();
          v62 = v47;
          *v46 = 136315394;
          v48 = MEMORY[0x193AF2A20](v45, MEMORY[0x1E69E6158]);
          v50 = sub_19021D9F8(v48, v49, &v62);

          *(v46 + 4) = v50;
          *(v46 + 12) = 2080;
          v51 = MEMORY[0x193AF2A40](v7, &type metadata for ConversationAppIntentsEntity);
          v53 = sub_19021D9F8(v51, v52, &v62);

          *(v46 + 14) = v53;
          _os_log_impl(&dword_19020E000, v43, v44, "Mapping from identifiers: %s to conversations: %s", v46, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x193AF7A40](v47, -1, -1);
          MEMORY[0x193AF7A40](v46, -1, -1);
        }

        swift_unknownObjectRelease();

        goto LABEL_31;
      }
    }
  }

  if (qword_1EAD46290 != -1)
  {
    swift_once();
  }

  v33 = sub_190D53040();
  __swift_project_value_buffer(v33, qword_1EAD9D7D8);
  sub_190D52690();
  v34 = sub_190D53020();
  v35 = sub_190D57680();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = *(v0 + 16);
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v62 = v38;
    *v37 = 136315138;
    v39 = MEMORY[0x193AF2A20](v36, MEMORY[0x1E69E6158]);
    v41 = sub_19021D9F8(v39, v40, &v62);

    *(v37 + 4) = v41;
    _os_log_impl(&dword_19020E000, v34, v35, "No message navigator provided, unable to query for conversation id: %s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x193AF7A40](v38, -1, -1);
    MEMORY[0x193AF7A40](v37, -1, -1);
  }

  v7 = MEMORY[0x1E69E7CC0];
LABEL_31:
  v54 = *(v0 + 8);

  return v54(v7);
}

uint64_t sub_190AF05D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_19082D778;

  return ConversationAppIntentsQuery.entities(matching:)(a2, a3);
}

uint64_t sub_190AF0674(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_190830DC8;

  return ConversationAppIntentsQuery.entities(for:)(a1);
}

double sub_190AF0750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {
  }

  return result;
}