void sub_29D571150(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29D5711B4(uint64_t a1)
{
  if (!qword_2A17A4E40)
  {
    sub_29D5B1BCC();
    sub_29D56B02C(&qword_2A1A19800, MEMORY[0x29EDC3FB8], MEMORY[0x29EDC3FC8]);
    v1 = sub_29D5B491C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17A4E40);
    }
  }
}

uint64_t sub_29D571248(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_29D5712A8()
{
  result = qword_2A17A41F8;
  if (!qword_2A17A41F8)
  {
    sub_29D4A0664(255, &qword_2A1A164E8, &qword_2A1A162F0, 0x29EDBAC10);
    sub_29D4DC4A0(&qword_2A17A4200, &qword_2A1A162F0, 0x29EDBAC10, MEMORY[0x29EDCA2F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A41F8);
  }

  return result;
}

void sub_29D57136C(uint64_t a1)
{
  if (!qword_2A17A4E48)
  {
    sub_29D5713C8();
    v1 = sub_29D5B491C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17A4E48);
    }
  }
}

unint64_t sub_29D5713C8()
{
  result = qword_2A17A4E50;
  if (!qword_2A17A4E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A4E50);
  }

  return result;
}

uint64_t sub_29D57141C()
{
  v0 = sub_29D5B1AAC();
  sub_29D50CE1C(v0, qword_2A1A1A710);
  v1 = sub_29D50BA5C(v0, qword_2A1A1A710);
  v2 = *MEMORY[0x29EDC3F08];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

void *sub_29D5714A4(uint64_t a1)
{
  v2 = v1;
  v21 = *v1;
  v20 = sub_29D5B13CC();
  v4 = *(v20 - 8);
  MEMORY[0x2A1C7C4A8](v20, v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_29D5B13EC();
  v8 = *(v19 - 8);
  MEMORY[0x2A1C7C4A8](v19, v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D499E5C(a1, v1 + OBJC_IVAR____TtC13HealthRecords23OnboardingTileGenerator_context);
  v18 = sub_29D5B143C();
  sub_29D573D60(0, &qword_2A1A1A3A0, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v12 = sub_29D5B104C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_29D5B62A0;
  (*(v13 + 104))(v15 + v14, *MEMORY[0x29EDC3790], v12);
  (*(v4 + 104))(v7, *MEMORY[0x29EDC3898], v20);
  sub_29D5B13DC();
  (*(v8 + 32))(v2 + OBJC_IVAR____TtC13HealthRecords23OnboardingTileGenerator_domain, v11, v19);
  v16 = sub_29D571788(a1);
  sub_29D49A104(a1);
  v2[2] = v16;
  return v2;
}

uint64_t sub_29D571788(uint64_t a1)
{
  v2 = type metadata accessor for HealthRecordsGeneratorContext(0);
  v131 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2 - 8, v3);
  v132 = v4;
  v136 = &v101 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_29D5B23CC();
  v118 = *(v119 - 8);
  MEMORY[0x2A1C7C4A8](v119, v5);
  v117 = &v101 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D573D60(0, &qword_2A1A172F0, MEMORY[0x29EDCA498], MEMORY[0x29EDC9C68]);
  v9 = MEMORY[0x2A1C7C4A8](v7 - 8, v8);
  v111 = &v101 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9, v11);
  v112 = &v101 - v12;
  v104 = sub_29D5B106C();
  v109 = *(v104 - 8);
  MEMORY[0x2A1C7C4A8](v104, v13);
  v108 = &v101 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_29D5B1D6C();
  v106 = *(v107 - 8);
  MEMORY[0x2A1C7C4A8](v107, v15);
  v105 = &v101 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D50AF28(0);
  v115 = v17;
  v114 = *(v17 - 8);
  MEMORY[0x2A1C7C4A8](v17, v18);
  v113 = &v101 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D573494(0);
  v123 = v20;
  v122 = *(v20 - 8);
  MEMORY[0x2A1C7C4A8](v20, v21);
  v120 = &v101 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D573580(0);
  v125 = v23;
  v124 = *(v23 - 8);
  MEMORY[0x2A1C7C4A8](v23, v24);
  v121 = &v101 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D57365C(0);
  v128 = *(v26 - 8);
  v129 = v26;
  MEMORY[0x2A1C7C4A8](v26, v27);
  v126 = &v101 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D573708(0);
  v133 = v29;
  v130 = *(v29 - 8);
  MEMORY[0x2A1C7C4A8](v29, v30);
  v127 = &v101 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5737F4(0);
  v137 = *(v32 - 8);
  v138 = v32;
  MEMORY[0x2A1C7C4A8](v32, v33);
  v134 = &v101 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_29D5B0EDC();
  v102 = *(v103 - 8);
  MEMORY[0x2A1C7C4A8](v103, v35);
  v101 = &v101 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_29D5B1AAC();
  v38 = *(v37 - 8);
  MEMORY[0x2A1C7C4A8](v37, v39);
  v41 = &v101 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5B1CBC();
  v42 = sub_29D5B1C8C();
  sub_29D5B140C();
  sub_29D499EC0(&v143, v144);
  v43 = sub_29D5B136C();
  v44 = [v43 profileIdentifier];

  v116 = sub_29D5B1C3C();
  sub_29D48F668(&v143);
  v45 = sub_29D5B1C8C();
  sub_29D5B140C();
  sub_29D499EC0(&v143, v144);
  v46 = sub_29D5B136C();
  v47 = [v46 profileIdentifier];

  v140 = sub_29D5B1C6C();
  sub_29D48F668(&v143);
  sub_29D5B140C();
  sub_29D499EC0(&v143, v144);
  sub_29D5B136C();
  sub_29D5B26AC();
  swift_allocObject();
  v139 = sub_29D5B269C();
  sub_29D48F668(&v143);
  sub_29D5B140C();
  if (qword_2A1A18A28 != -1)
  {
    swift_once();
  }

  v48 = sub_29D50BA5C(v37, qword_2A1A1A710);
  (*(v38 + 16))(v41, v48, v37);
  v135 = a1;
  v49 = sub_29D5B143C();
  v50 = sub_29D5B10AC();
  v51 = sub_29D5B1A8C();
  v53 = v52;
  v54 = v37;
  if (v50)
  {
    v141 = 0x656C69666F72505BLL;
    v142 = 0xE90000000000003ALL;
    v50 = v50;
    v55 = [v50 identifier];
    v56 = v101;
    sub_29D5B0EBC();

    v57 = v54;
    v58 = sub_29D5B0E8C();
    v60 = v59;
    (*(v102 + 8))(v56, v103);
    v61 = v58;
    v54 = v57;
    MEMORY[0x29ED5E510](v61, v60);

    MEMORY[0x29ED5E510](93, 0xE100000000000000);

    v62 = v141;
    v63 = v142;
  }

  else
  {
    v63 = 0x800000029D5BBCB0;
    v62 = 0xD000000000000013;
  }

  v141 = v62;
  v142 = v63;
  MEMORY[0x29ED5E510](v51, v53);

  v64 = v141;
  v65 = v142;
  (*(v38 + 8))(v41, v54);
  type metadata accessor for FeedItemContextChangeGenerator();
  v66 = swift_allocObject();
  sub_29D497868(&v143, v66 + 16);
  *(v66 + 56) = v64;
  *(v66 + 64) = v65;
  v67 = v106;
  v68 = v105;
  v69 = v107;
  (*(v106 + 104))(v105, *MEMORY[0x29EDC4068], v107);
  v70 = sub_29D5B25FC();
  (*(v67 + 8))(v68, v69);
  v71 = v109;
  v72 = v108;
  v73 = v104;
  (*(v109 + 104))(v108, *MEMORY[0x29EDC37B8], v104);
  sub_29D5B105C();
  (*(v71 + 8))(v72, v73);
  v74 = sub_29D5B369C();
  v75 = v112;
  (*(*(v74 - 8) + 56))(v112, 1, 1, v74);
  *&v143 = v70;
  sub_29D55282C(v75, v111);
  sub_29D50AFBC(0);
  v76 = MEMORY[0x29EDB8A00];
  sub_29D5739EC(&qword_2A1A166F0, sub_29D50AFBC, MEMORY[0x29EDB8A00]);
  v77 = v113;
  sub_29D5B381C();
  sub_29D573888(v75, &qword_2A1A172F0, MEMORY[0x29EDCA498]);
  v78 = v118;
  v79 = v117;
  v80 = v119;
  (*(v118 + 104))(v117, *MEMORY[0x29EDC41C0], v119);
  v81 = sub_29D5B265C();
  (*(v78 + 8))(v79, v80);
  *&v143 = v81;
  sub_29D4CF8C0(0);
  sub_29D5739EC(&qword_2A1A16FF8, sub_29D50AF28, MEMORY[0x29EDC3CA8]);
  sub_29D5739EC(&qword_2A1A166B0, sub_29D4CF8C0, v76);
  v82 = v120;
  v83 = v115;
  sub_29D5B3B6C();

  (*(v114 + 8))(v77, v83);
  v84 = v136;
  sub_29D499E5C(v135, v136);
  v85 = (*(v131 + 80) + 32) & ~*(v131 + 80);
  v86 = (v132 + v85 + 7) & 0xFFFFFFFFFFFFFFF8;
  v87 = swift_allocObject();
  v88 = v110;
  *(v87 + 16) = v116;
  *(v87 + 24) = v88;
  sub_29D499F90(v84, v87 + v85);
  *(v87 + v86) = v88;
  v89 = swift_allocObject();
  *(v89 + 16) = sub_29D5738F8;
  *(v89 + 24) = v87;
  sub_29D573D60(0, &qword_2A1A16468, MEMORY[0x29EDC3840], MEMORY[0x29EDC9A40]);
  sub_29D5739EC(&qword_2A1A17260, sub_29D573494, MEMORY[0x29EDB8870]);

  v90 = v121;
  v91 = v123;
  sub_29D5B3B7C();

  (*(v122 + 8))(v82, v91);
  sub_29D4E3C34();

  v92 = v126;
  v93 = v125;
  sub_29D5B383C();

  (*(v124 + 8))(v90, v93);
  *(swift_allocObject() + 16) = v88;
  sub_29D4B2D8C(0);
  sub_29D5739EC(&qword_2A1A16C28, sub_29D57365C, MEMORY[0x29EDB8990]);
  sub_29D5739EC(&qword_2A1A16780, sub_29D4B2D8C, v76);
  v94 = v127;
  v95 = v129;
  sub_29D5B3B8C();

  (*(v128 + 8))(v92, v95);
  *&v143 = MEMORY[0x29EDCA190];
  sub_29D5739EC(&qword_2A1A16DB8, sub_29D573708, MEMORY[0x29EDB8928]);
  v96 = v133;
  v97 = v134;
  sub_29D5B3B4C();
  (*(v130 + 8))(v94, v96);
  sub_29D5739EC(&qword_2A1A17098, sub_29D5737F4, MEMORY[0x29EDB88C8]);
  v98 = v138;
  v99 = sub_29D5B3B1C();

  (*(v137 + 8))(v97, v98);
  return v99;
}

uint64_t sub_29D5728B0(unint64_t a1, char a2, uint64_t a3)
{
  if ((sub_29D573AA0(a1) & 1) == 0)
  {
    return MEMORY[0x29EDCA190];
  }

  sub_29D573D60(0, &qword_2A1A195F0, MEMORY[0x29EDC3840], MEMORY[0x29EDC9E90]);
  sub_29D5B134C();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_29D5B62A0;
  v5 = sub_29D5B143C();
  sub_29D5729C0(v5, a2 & 1);

  return v4;
}

uint64_t sub_29D5729C0(void *a1, int a2)
{
  v41 = a2;
  v3 = sub_29D5B0E6C();
  MEMORY[0x2A1C7C4A8](v3 - 8, v4);
  v40 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x29EDC9C68];
  sub_29D573D60(0, qword_2A1A1A3B0, MEMORY[0x29EDB98E8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v7 - 8, v8);
  v39 = v38 - v9;
  sub_29D573D60(0, &qword_2A1A17388, MEMORY[0x29EDC3980], v6);
  MEMORY[0x2A1C7C4A8](v10 - 8, v11);
  v38[1] = v38 - v12;
  v38[0] = sub_29D5B104C();
  v13 = *(v38[0] - 8);
  MEMORY[0x2A1C7C4A8](v38[0], v14);
  v16 = v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_29D5B1D6C();
  v18 = *(v17 - 8);
  MEMORY[0x2A1C7C4A8](v17, v19);
  v21 = v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D573D60(0, &qword_2A1A193A8, MEMORY[0x29EDB9C08], v6);
  MEMORY[0x2A1C7C4A8](v22 - 8, v23);
  v25 = v38 - v24;
  v26 = sub_29D5B0EDC();
  (*(*(v26 - 8) + 56))(v25, 1, 1, v26);
  if (qword_2A1A18A28 != -1)
  {
    swift_once();
  }

  v27 = sub_29D5B1AAC();
  sub_29D50BA5C(v27, qword_2A1A1A710);
  (*(v18 + 104))(v21, *MEMORY[0x29EDC4068], v17);
  sub_29D5B294C();
  (*(v18 + 8))(v21, v17);
  sub_29D573888(v25, &qword_2A1A193A8, MEMORY[0x29EDB9C08]);
  type metadata accessor for LabsOnboardingAppPluginViewController(0);
  (*(v13 + 104))(v16, *MEMORY[0x29EDC3790], v38[0]);
  v28 = a1;
  sub_29D5B110C();
  sub_29D5B0E5C();
  v29 = v39;
  sub_29D5B0C6C();
  v30 = sub_29D5B0C7C();
  (*(*(v30 - 8) + 56))(v29, 0, 1, v30);
  sub_29D5B16FC();
  sub_29D5B12BC();
  sub_29D5B124C();
  sub_29D5B132C();
  sub_29D5B123C();
  sub_29D5B122C();
  v43 = MEMORY[0x29EDCA1A0];
  v31 = sub_29D5B158C();
  sub_29D59AD10(v42, v31, v32);

  v33 = v43;
  v34 = sub_29D5B130C();
  sub_29D4E80E8(v33);
  v34(v42, 0);
  v35 = sub_29D5B401C();
  v36 = HKUIJoinStringsForAutomationIdentifier();

  if (v36)
  {
    sub_29D5B3E5C();
  }

  return sub_29D5B12EC();
}

uint64_t sub_29D572F68@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  sub_29D573D60(0, &qword_2A1A165D0, sub_29D4E3C34, MEMORY[0x29EDB8AB0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v9 = &v34 - v8;
  v10 = sub_29D5B371C();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10, v12);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  sub_29D5B36AC();
  v16 = v15;
  v17 = sub_29D5B370C();
  v18 = sub_29D5B427C();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v37 = v5;
    v20 = v19;
    v36 = swift_slowAlloc();
    v40 = v36;
    *v20 = 136446466;
    v39 = sub_29D573A34(0);
    sub_29D573A54(0, &qword_2A17A4E58, sub_29D573A34);
    v21 = sub_29D5B3E7C();
    v35 = v10;
    v23 = sub_29D501890(v21, v22, &v40);
    v38 = a2;
    v24 = v23;

    *(v20 + 4) = v24;
    *(v20 + 12) = 2082;
    v39 = v15;
    v25 = v15;
    sub_29D4B3AF4();
    sub_29D5B4CAC();
    v26 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_29D5B47BC();
    swift_unknownObjectRelease();
    v27 = sub_29D5B3E7C();
    v29 = sub_29D501890(v27, v28, &v40);

    *(v20 + 14) = v29;
    a2 = v38;
    _os_log_impl(&dword_29D48C000, v17, v18, "[%{public}s] Unable to compute desired difference for commit: %{public}s", v20, 0x16u);
    v30 = v36;
    swift_arrayDestroy();
    MEMORY[0x29ED5FB80](v30, -1, -1);
    v31 = v20;
    v5 = v37;
    MEMORY[0x29ED5FB80](v31, -1, -1);

    (*(v11 + 8))(v14, v35);
  }

  else
  {

    (*(v11 + 8))(v14, v10);
  }

  v39 = MEMORY[0x29EDCA190];
  sub_29D4E3C34();
  sub_29D5B3A2C();
  sub_29D50CA34();
  v32 = sub_29D5B3B1C();
  result = (*(v6 + 8))(v9, v5);
  *a2 = v32;
  return result;
}

uint64_t sub_29D573310()
{

  v1 = OBJC_IVAR____TtC13HealthRecords23OnboardingTileGenerator_domain;
  v2 = sub_29D5B13EC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_29D49A104(v0 + OBJC_IVAR____TtC13HealthRecords23OnboardingTileGenerator_context);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for OnboardingTileGenerator(uint64_t a1)
{
  result = qword_2A1A18A08;
  if (!qword_2A1A18A08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D573418@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC13HealthRecords23OnboardingTileGenerator_domain;
  v5 = sub_29D5B13EC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

void sub_29D573494(uint64_t a1)
{
  if (!qword_2A1A17258)
  {
    sub_29D50AF28(255);
    sub_29D4CF8C0(255);
    sub_29D5739EC(&qword_2A1A16FF8, sub_29D50AF28, MEMORY[0x29EDC3CA8]);
    sub_29D5739EC(&qword_2A1A166B0, sub_29D4CF8C0, MEMORY[0x29EDB8A00]);
    v1 = sub_29D5B379C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A17258);
    }
  }
}

void sub_29D573580(uint64_t a1)
{
  if (!qword_2A1A16EB0)
  {
    sub_29D573494(255);
    sub_29D573D60(255, &qword_2A1A16468, MEMORY[0x29EDC3840], MEMORY[0x29EDC9A40]);
    sub_29D5739EC(&qword_2A1A17260, sub_29D573494, MEMORY[0x29EDB8870]);
    v1 = sub_29D5B384C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16EB0);
    }
  }
}

void sub_29D57365C(uint64_t a1)
{
  if (!qword_2A1A16C20)
  {
    sub_29D573494(255);
    sub_29D4E3C34();
    sub_29D5739EC(&qword_2A1A17260, sub_29D573494, MEMORY[0x29EDB8870]);
    v1 = sub_29D5B38DC();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16C20);
    }
  }
}

void sub_29D573708(uint64_t a1)
{
  if (!qword_2A1A16DB0)
  {
    sub_29D57365C(255);
    sub_29D4B2D8C(255);
    sub_29D5739EC(&qword_2A1A16C28, sub_29D57365C, MEMORY[0x29EDB8990]);
    sub_29D5739EC(&qword_2A1A16780, sub_29D4B2D8C, MEMORY[0x29EDB8A00]);
    v1 = sub_29D5B387C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16DB0);
    }
  }
}

void sub_29D5737F4(uint64_t a1)
{
  if (!qword_2A1A17090)
  {
    sub_29D573708(255);
    sub_29D5739EC(&qword_2A1A16DB8, sub_29D573708, MEMORY[0x29EDB8928]);
    v1 = sub_29D5B37FC();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A17090);
    }
  }
}

uint64_t sub_29D573888(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29D573D60(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29D5738F8(unint64_t a1, char a2)
{
  type metadata accessor for HealthRecordsGeneratorContext(0);
  v5 = *(v2 + 16);

  return sub_29D5728B0(a1, a2, v5);
}

uint64_t sub_29D5739A8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_29D5739EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29D573A54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a2;
  if (!*a2)
  {
    a3(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

id sub_29D573AA0(unint64_t a1)
{
  v30 = sub_29D5B0E6C();
  v2 = *(v30 - 8);
  v4 = MEMORY[0x2A1C7C4A8](v30, v3);
  v29 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x2A1C7C4A8](v4, v6);
  v28 = &v25 - v8;
  MEMORY[0x2A1C7C4A8](v7, v9);
  v11 = &v25 - v10;
  if (a1 >> 62)
  {
    if (sub_29D5B485C() < 6)
    {
      return 0;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) < 6)
  {
    return 0;
  }

  v12 = sub_29D5B35FC();
  if (v12 >> 62)
  {
    v16 = sub_29D5B485C();

    if (v16)
    {
      return 0;
    }
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v13)
    {
      return 0;
    }
  }

  v25 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
    result = sub_29D5B485C();
    v27 = result;
  }

  else
  {
    v27 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v17 = 0;
  v26 = a1 & 0xC000000000000001;
  v18 = (v2 + 8);
  do
  {
    v15 = v27 != v17;
    if (v27 == v17)
    {
      break;
    }

    if (v26)
    {
      result = MEMORY[0x29ED5EF30](v17, a1);
    }

    else
    {
      if (v17 >= *(v25 + 16))
      {
        goto LABEL_23;
      }

      result = *(a1 + 8 * v17 + 32);
    }

    v19 = result;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
LABEL_23:
      __break(1u);
      return result;
    }

    v20 = [result modificationDate];
    sub_29D5B0E4C();

    v21 = v28;
    sub_29D5B0E5C();
    v22 = v29;
    sub_29D5B0DCC();
    v23 = *v18;
    v24 = v30;
    (*v18)(v21, v30);
    LOBYTE(v21) = sub_29D5B0DFC();

    v23(v22, v24);
    result = (v23)(v11, v24);
    ++v17;
  }

  while ((v21 & 1) == 0);
  return v15;
}

void sub_29D573D60(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29D573E90(uint64_t a1, uint64_t a2, unint64_t a3, int a4)
{
  v5 = v4;
  v25 = a4;
  v24 = a3;
  v8 = sub_29D5B1BCC();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8, v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29D5B2C0C();
  sub_29D5B21EC();
  v14 = sub_29D5B21DC();
  (*(v9 + 104))(v12, *MEMORY[0x29EDC3F70], v8);
  sub_29D5B1CBC();
  v15 = sub_29D5B1C8C();
  v16 = sub_29D5B1C4C();

  v17 = sub_29D5B21BC();
  (*(v9 + 8))(v12, v8);
  if (v17)
  {
    v18 = v24;
    v19 = HIDWORD(v24);
    v20 = sub_29D5B3E1C();
    [v5 startedTest_];

    [v13 pushViewController:v17 animated:0];
    v21 = swift_allocObject();
    *(v21 + 16) = v5;
    *(v21 + 24) = a1;
    *(v21 + 32) = a2;
    *(v21 + 40) = v18;
    *(v21 + 44) = v19;
    *(v21 + 48) = v25;
    aBlock[4] = sub_29D574ACC;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_29D49ACEC;
    aBlock[3] = &unk_2A242A688;
    v22 = _Block_copy(aBlock);
    v23 = v5;

    [v23 installCACommitCompletionBlock_];

    _Block_release(v22);
    v13 = v17;
  }
}

uint64_t sub_29D574118(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5)
{
  v38 = a5;
  v5 = a4;
  v35 = a2;
  v36 = a3;
  v37 = HIDWORD(a4);
  v7 = sub_29D5B3C8C();
  v42 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7, v8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29D5B3CAC();
  v40 = *(v11 - 8);
  v41 = v11;
  MEMORY[0x2A1C7C4A8](v11, v12);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_29D5B3CCC();
  v39 = v15;
  v16 = *(v15 - 8);
  v18 = MEMORY[0x2A1C7C4A8](v15, v17);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v18, v21);
  v23 = &v33 - v22;
  v24 = [a1 tableView];
  sub_29D4999F8();
  v34 = sub_29D5B43FC();
  sub_29D5B3CBC();
  sub_29D5B3CDC();
  v25 = *(v16 + 8);
  v25(v20, v15);
  v26 = swift_allocObject();
  v27 = v35;
  v28 = v36;
  *(v26 + 16) = v24;
  *(v26 + 24) = v27;
  *(v26 + 32) = v28;
  LODWORD(v27) = v37;
  *(v26 + 40) = v5;
  *(v26 + 44) = v27;
  *(v26 + 48) = v38;
  aBlock[4] = sub_29D574B70;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29D49ACEC;
  aBlock[3] = &unk_2A242A6D8;
  v29 = _Block_copy(aBlock);
  v30 = v24;

  sub_29D5B3C9C();
  aBlock[0] = MEMORY[0x29EDCA190];
  sub_29D574BD8(&qword_2A1A19700, MEMORY[0x29EDCA248], MEMORY[0x29EDCA250]);
  sub_29D574B80(0);
  sub_29D574BD8(&qword_2A1A196A0, sub_29D574B80, MEMORY[0x29EDC9A70]);
  sub_29D5B47CC();
  v31 = v34;
  MEMORY[0x29ED5E980](v23, v14, v10, v29);
  _Block_release(v29);

  (*(v42 + 8))(v10, v7);
  (*(v40 + 8))(v14, v41);
  return (v25)(v23, v39);
}

void sub_29D57452C(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  if (a1)
  {
    v7 = HIDWORD(a4);
    v9 = sub_29D5B3E1C();
    [a1 _performScrollTest_iterations_delta_length_];
  }
}

uint64_t sub_29D5745B4(uint64_t a1)
{
  sub_29D5B48CC();
  if (*(a1 + 16) && (v2 = sub_29D57A24C(v5), (v3 & 1) != 0))
  {
    sub_29D4A7420(*(a1 + 56) + 32 * v2, v6);
    sub_29D4A73CC(v5);

    if (swift_dynamicCast())
    {
      return 0x656D614E74736574;
    }
  }

  else
  {

    sub_29D4A73CC(v5);
  }

  return 0;
}

void sub_29D574698(void (*a1)(uint64_t))
{
  v2 = sub_29D5B1BCC();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29D5B2C0C();
  sub_29D5B21EC();
  v8 = sub_29D5B21DC();
  (*(v3 + 104))(v6, *MEMORY[0x29EDC3F70], v2);
  sub_29D5B1CBC();
  v9 = sub_29D5B1C8C();
  v10 = sub_29D5B1C4C();

  v11 = sub_29D5B21BC();
  (*(v3 + 8))(v6, v2);
  if (v11)
  {
    objc_opt_self();
    v12 = swift_dynamicCastObjCClass();
    if (v12)
    {
      v13 = v12;
      [v7 pushViewController:v12 animated:0];
      if (a1)
      {
        v14 = v11;
        a1(v13);
      }

      else
      {
      }

      goto LABEL_9;
    }
  }

  if (a1)
  {
    a1(0);
  }

LABEL_9:
}

uint64_t sub_29D57487C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    __break(1u);
    goto LABEL_12;
  }

  v6 = result;

  result = sub_29D5745B4(v7);
  if (!a3)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v11 = result;
  v12 = v8;
  v13 = v9;
  v14 = v10;

  v15 = sub_29D5B4ADC();

  if (v15)
  {
    if (v15 != 1)
    {

      sub_29D574A68();
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_29D5B62A0;
      sub_29D5B494C();

      MEMORY[0x29ED5E510](a2, a3);

      *(v18 + 56) = MEMORY[0x29EDC99B0];
      *(v18 + 32) = 0xD000000000000014;
      *(v18 + 40) = 0x800000029D5BE710;
      sub_29D5B4D2C();
      v17 = 0;
      goto LABEL_10;
    }

    if (v6)
    {
      v16 = swift_allocObject();
      *(v16 + 16) = v11;
      *(v16 + 24) = v12;
      *(v16 + 32) = v13;
      *(v16 + 40) = v14;

      sub_29D574698(sub_29D574ABC);

      v17 = 1;
LABEL_10:

      return v17;
    }
  }

  else if (v6)
  {
    sub_29D573E90(v11, v12, v13, v14);
    v17 = 1;
    goto LABEL_10;
  }

LABEL_13:
  __break(1u);
  return result;
}

void sub_29D574A68()
{
  if (!qword_2A17A4EC0)
  {
    v0 = sub_29D5B4C5C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17A4EC0);
    }
  }
}

void sub_29D574ACC()
{
  v1 = *(v0 + 16);
  v2 = sub_29D5B3E1C();
  [v1 finishedTest_];
}

uint64_t sub_29D574B30()
{

  return MEMORY[0x2A1C733A0](v0, 52, 7);
}

void sub_29D574B80(uint64_t a1)
{
  if (!qword_2A1A196B0)
  {
    sub_29D5B3C8C();
    v1 = sub_29D5B40BC();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A196B0);
    }
  }
}

uint64_t sub_29D574BD8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29D574C28(uint64_t a1, void *a2, uint64_t a3)
{
  *&v230 = a3;
  v227 = a2;
  ObjectType = swift_getObjectType();
  v212 = sub_29D5B0D5C();
  v211 = *(v212 - 8);
  v5 = MEMORY[0x2A1C7C4A8](v212, v4);
  v207 = &v204 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5, v7);
  v209 = &v204 - v8;
  v9 = sub_29D5B1D6C();
  v225 = *(v9 - 8);
  *&v226 = v9;
  v10 = *(v225 + 64);
  v12 = MEMORY[0x2A1C7C4A8](v9, v11);
  v224 = &v204 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12, v13);
  *&v229 = &v204 - v14;
  sub_29D57B488(0, &unk_2A1A19450, MEMORY[0x29EDCA398], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v15 - 8, v16);
  v233 = &v204 - v17;
  v219 = sub_29D5B371C();
  v220 = *(v219 - 8);
  v19 = MEMORY[0x2A1C7C4A8](v219, v18);
  v208 = &v204 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x2A1C7C4A8](v19, v21);
  v218 = &v204 - v23;
  v25 = MEMORY[0x2A1C7C4A8](v22, v24);
  v213 = &v204 - v26;
  v28 = MEMORY[0x2A1C7C4A8](v25, v27);
  v210 = &v204 - v29;
  MEMORY[0x2A1C7C4A8](v28, v30);
  v216 = &v204 - v31;
  v222 = sub_29D5B0EDC();
  v223 = *(v222 - 8);
  v32 = *(v223 + 64);
  v34 = MEMORY[0x2A1C7C4A8](v222, v33);
  v221 = &v204 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x2A1C7C4A8](v34, v35);
  v38 = &v204 - v37;
  v40 = MEMORY[0x2A1C7C4A8](v36, v39);
  v42 = &v204 - v41;
  v44 = MEMORY[0x2A1C7C4A8](v40, v43);
  v214 = &v204 - v45;
  MEMORY[0x2A1C7C4A8](v44, v46);
  v215 = &v204 - v47;
  v48 = sub_29D5B198C();
  v49 = *(v48 - 8);
  v51 = MEMORY[0x2A1C7C4A8](v48, v50);
  v53 = &v204 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v51, v54);
  v56 = &v204 - v55;
  sub_29D5B18FC();
  swift_allocObject();
  v57 = sub_29D5B18EC();
  v206 = a1;
  v232 = v57;
  sub_29D5B18DC();
  v58 = *(v49 + 16);
  v228 = v56;
  v58(v53, v56, v48);
  v59 = v49;
  v60 = *(v49 + 88);
  v234 = v48;
  v61 = v60(v53, v48);
  if (v61 == *MEMORY[0x29EDC3E50])
  {
    (*(v49 + 96))(v53, v234);
    v62 = v225;
    v223 = *(v225 + 32);
    v63 = v229;
    v64 = v226;
    (v223)(v229, v53, v226);
    v65 = sub_29D5B410C();
    (*(*(v65 - 8) + 56))(v233, 1, 1, v65);
    v66 = v224;
    (*(v62 + 16))(v224, v63, v64);
    sub_29D48F564(v230, &v236);
    sub_29D5B40EC();
    *&v230 = v231;
    v231 = v227;
    v67 = sub_29D5B40DC();
    v68 = (*(v62 + 80) + 40) & ~*(v62 + 80);
    v69 = (v10 + v68 + 7) & 0xFFFFFFFFFFFFFFF8;
    v70 = swift_allocObject();
    v71 = MEMORY[0x29EDCA390];
    v70[2] = v67;
    v70[3] = v71;
    v70[4] = v230;
    (v223)(v70 + v68, v66, v64);
    *(v70 + v69) = v231;
    sub_29D497868(&v236, v70 + ((v69 + 15) & 0xFFFFFFFFFFFFFFF8));
    sub_29D57657C(0, 0, v233, &unk_29D5BAE08, v70);

    (*(v62 + 8))(v229, v64);
    return (*(v59 + 8))(v228, v234);
  }

  v73 = v230;
  v74 = v233;
  v75 = v231;
  if (v61 == *MEMORY[0x29EDC3E30])
  {
    (*(v59 + 96))(v53, v234);
    v76 = v223;
    v77 = v222;
    (*(v223 + 32))(v42, v53, v222);
    v78 = [objc_opt_self() medicalRecordTypes];
    sub_29D48F51C(0, &qword_2A1A19660, 0x29EDBAD78);
    v79 = sub_29D5B402C();

    if (v79 >> 62)
    {
      result = sub_29D5B485C();
      if (result)
      {
        goto LABEL_6;
      }
    }

    else
    {
      result = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
LABEL_6:
        if ((v79 & 0xC000000000000001) != 0)
        {
          v80 = MEMORY[0x29ED5EF30](0, v79);
        }

        else
        {
          if (!*((v79 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          v80 = *(v79 + 32);
        }

        v81 = v80;

        sub_29D578644(v42, v81, v227);

        goto LABEL_47;
      }
    }

LABEL_47:

    (*(v76 + 8))(v42, v77);
    return (*(v59 + 8))(v228, v234);
  }

  if (v61 == *MEMORY[0x29EDC3E38])
  {
    v82 = *(v59 + 8);
    v83 = v234;
    v82(v53, v234);
    sub_29D5B194C();

    return (v82)(v228, v83);
  }

  if (v61 == *MEMORY[0x29EDC3E60])
  {
    v205 = v59;
    (*(v59 + 96))(v53, v234);
    sub_29D4C8544(0);
    v85 = &v53[*(v84 + 48)];
    v87 = *v85;
    v86 = *(v85 + 1);
    *&v229 = v87;
    *&v226 = v86;
    v88 = v223;
    v225 = *(v223 + 32);
    v89 = v38;
    v204 = v38;
    v90 = v53;
    v91 = v222;
    (v225)(v38, v90, v222);
    v92 = sub_29D5B410C();
    (*(*(v92 - 8) + 56))(v74, 1, 1, v92);
    sub_29D48F564(v73, &v236);
    v93 = v221;
    v94 = v91;
    (*(v88 + 16))(v221, v89, v91);
    sub_29D5B40EC();
    v95 = v75;
    v231 = v227;
    v96 = sub_29D5B40DC();
    v97 = (*(v88 + 80) + 80) & ~*(v88 + 80);
    v98 = (v32 + v97 + 7) & 0xFFFFFFFFFFFFFFF8;
    v99 = swift_allocObject();
    v100 = MEMORY[0x29EDCA390];
    v99[2] = v96;
    v99[3] = v100;
    v99[4] = v95;
    sub_29D497868(&v236, (v99 + 5));
    (v225)(v99 + v97, v93, v94);
    *(v99 + v98) = v231;
    v101 = (v99 + ((v98 + 15) & 0xFFFFFFFFFFFFFFF8));
    v102 = v226;
    *v101 = v229;
    v101[1] = v102;
    sub_29D57657C(0, 0, v233, &unk_29D5BADF8, v99);

    (*(v88 + 8))(v204, v94);
    return (*(v205 + 8))(v228, v234);
  }

  if (v61 == *MEMORY[0x29EDC3E68])
  {
    v103 = v234;
    (*(v59 + 96))(v53, v234);
    v104 = *v53;
    v105 = *(v53 + 1);
    v106 = sub_29D5B410C();
    (*(*(v106 - 8) + 56))(v74, 1, 1, v106);
    sub_29D5B40EC();
    v107 = v75;
    v108 = v227;
    v109 = sub_29D5B40DC();
    v110 = swift_allocObject();
    v111 = MEMORY[0x29EDCA390];
    v110[2] = v109;
    v110[3] = v111;
    v110[4] = v107;
    v110[5] = v108;
    v110[6] = v104;
    v110[7] = v105;
    sub_29D57657C(0, 0, v74, &unk_29D5BADE8, v110);

    return (*(v59 + 8))(v228, v103);
  }

  if (v61 == *MEMORY[0x29EDC3E40])
  {
    v112 = v234;
    (*(v59 + 96))(v53, v234);
    v113 = *v53;
    v229 = *(v53 + 1);
    v230 = v113;
    v226 = *(v53 + 2);
    v114 = *(v53 + 6);
    v115 = sub_29D5B410C();
    (*(*(v115 - 8) + 56))(v74, 1, 1, v115);
    sub_29D5B40EC();
    v116 = v75;
    v117 = v227;
    v118 = sub_29D5B40DC();
    v119 = swift_allocObject();
    v120 = MEMORY[0x29EDCA390];
    *(v119 + 16) = v118;
    *(v119 + 24) = v120;
    *(v119 + 32) = v116;
    v121 = v229;
    *(v119 + 40) = v230;
    *(v119 + 56) = v121;
    *(v119 + 72) = v226;
    *(v119 + 88) = v114;
    *(v119 + 96) = v117;
    sub_29D57657C(0, 0, v74, &unk_29D5BAE18, v119);

    return (*(v59 + 8))(v228, v112);
  }

  if (v61 == *MEMORY[0x29EDC3E78])
  {
    (*(v59 + 96))(v53, v234);
    v122 = *v53;
    v123 = v218;
    sub_29D5B36CC();
    v124 = v122;
    v125 = sub_29D5B370C();
    v126 = sub_29D5B427C();

    if (os_log_type_enabled(v125, v126))
    {
      v127 = swift_slowAlloc();
      v128 = swift_slowAlloc();
      *&v236 = v128;
      *v127 = 136446466;
      v129 = sub_29D578614(ObjectType);
      v131 = sub_29D501890(v129, v130, &v236);

      *(v127 + 4) = v131;
      *(v127 + 12) = 2082;
      v235 = v122;
      v132 = v122;
      sub_29D4B3AF4();
      v133 = sub_29D5B3E9C();
      v135 = sub_29D501890(v133, v134, &v236);

      *(v127 + 14) = v135;
      _os_log_impl(&dword_29D48C000, v125, v126, "[%{public}s]: unable to complete onboarding: %{public}s", v127, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED5FB80](v128, -1, -1);
      MEMORY[0x29ED5FB80](v127, -1, -1);
    }

    (*(v220 + 8))(v123, v219);
    return (*(v59 + 8))(v228, v234);
  }

  if (v61 == *MEMORY[0x29EDC3E70])
  {
    (*(v59 + 96))(v53, v234);

    sub_29D4C8690(0);
    v137 = v223;
    v138 = &v53[*(v136 + 48)];
    v139 = v215;
    v140 = v222;
    (*(v223 + 32))(v215, v138, v222);
    v141 = v216;
    sub_29D5B36CC();
    v142 = v214;
    (*(v137 + 16))(v214, v139, v140);
    v143 = sub_29D5B370C();
    v144 = sub_29D5B427C();
    if (os_log_type_enabled(v143, v144))
    {
      v145 = swift_slowAlloc();
      v146 = swift_slowAlloc();
      *&v236 = v146;
      *v145 = 136446466;
      v147 = sub_29D578614(ObjectType);
      v149 = v137;
      v150 = sub_29D501890(v147, v148, &v236);

      *(v145 + 4) = v150;
      *(v145 + 12) = 2082;
      v151 = sub_29D5B0E8C();
      v153 = v152;
      v154 = *(v149 + 8);
      v154(v142, v140);
      v155 = sub_29D501890(v151, v153, &v236);

      *(v145 + 14) = v155;
      _os_log_impl(&dword_29D48C000, v143, v144, "[%{public}s]: received successful login redirect for login session with state %{public}s", v145, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED5FB80](v146, -1, -1);
      MEMORY[0x29ED5FB80](v145, -1, -1);

      (*(v220 + 8))(v216, v219);
      v154(v215, v140);
    }

    else
    {

      v172 = *(v137 + 8);
      v172(v142, v140);
      (*(v220 + 8))(v141, v219);
      v172(v139, v140);
    }

    return (*(v59 + 8))(v228, v234);
  }

  v156 = v223;
  if (v61 == *MEMORY[0x29EDC3E58])
  {
    (*(v59 + 96))(v53, v234);
    v157 = *v53;
    v158 = v213;
    sub_29D5B36CC();
    v159 = v157;
    v160 = sub_29D5B370C();
    v161 = sub_29D5B427C();

    if (os_log_type_enabled(v160, v161))
    {
      v162 = swift_slowAlloc();
      v163 = swift_slowAlloc();
      *&v236 = v163;
      *v162 = 136446466;
      v164 = sub_29D578614(ObjectType);
      v166 = sub_29D501890(v164, v165, &v236);

      *(v162 + 4) = v166;
      *(v162 + 12) = 2082;
      v235 = v157;
      v167 = v157;
      sub_29D4B3AF4();
      v168 = sub_29D5B3E9C();
      v170 = sub_29D501890(v168, v169, &v236);

      *(v162 + 14) = v170;
      _os_log_impl(&dword_29D48C000, v160, v161, "[%{public}s]: received login redirect error: %{public}s", v162, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED5FB80](v163, -1, -1);
      MEMORY[0x29ED5FB80](v162, -1, -1);
    }

    (*(v220 + 8))(v158, v219);
    (*(v59 + 8))(v228, v234);
    sub_29D4C85DC(0);
    return sub_29D57BFB0(&v53[*(v171 + 48)], &qword_2A1A193A8, MEMORY[0x29EDB9C08]);
  }

  else
  {
    if (v61 != *MEMORY[0x29EDC3E88])
    {
      if (v61 == *MEMORY[0x29EDC3E80])
      {
        v181 = v59;
        v182 = v234;
        (*(v59 + 96))(v53, v234);
        v183 = v211;
        v184 = v209;
        v185 = v212;
        (*(v211 + 32))(v209, v53, v212);
        sub_29D57ADF0(v184, v227, MEMORY[0x29EDC41E0], &unk_2A242A8C8, sub_29D57C21C);

        (*(v183 + 8))(v184, v185);
      }

      else
      {
        v186 = v227;
        v187 = v212;
        if (v61 != *MEMORY[0x29EDC3E90])
        {
          if (v61 != *MEMORY[0x29EDC3E48] && v61 != *MEMORY[0x29EDC3E98])
          {
            (*(v59 + 8))(v53, v234);
          }

          v190 = v208;
          sub_29D5B36CC();
          v191 = v211;
          v192 = v207;
          (*(v211 + 16))(v207, v206, v187);
          v193 = sub_29D5B370C();
          v194 = sub_29D5B428C();
          if (os_log_type_enabled(v193, v194))
          {
            v195 = swift_slowAlloc();
            v196 = swift_slowAlloc();
            *&v236 = v196;
            *v195 = 136446466;
            v197 = sub_29D578614(ObjectType);
            v199 = sub_29D501890(v197, v198, &v236);

            *(v195 + 4) = v199;
            *(v195 + 12) = 2082;
            sub_29D57C48C(&qword_2A17A4F30, MEMORY[0x29EDB9B18], MEMORY[0x29EDB9B40]);
            v200 = sub_29D5B4C4C();
            v202 = v201;
            (*(v191 + 8))(v192, v187);
            v203 = sub_29D501890(v200, v202, &v236);

            *(v195 + 14) = v203;
            _os_log_impl(&dword_29D48C000, v193, v194, "[%{public}s]: unsupported URL passed into HealthRecordsPluginAppDelegate: %{public}s", v195, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x29ED5FB80](v196, -1, -1);
            MEMORY[0x29ED5FB80](v195, -1, -1);

            (*(v220 + 8))(v208, v219);
          }

          else
          {

            (*(v191 + 8))(v192, v187);
            (*(v220 + 8))(v190, v219);
          }

          return (*(v59 + 8))(v228, v234);
        }

        v181 = v59;
        v182 = v234;
        (*(v59 + 96))(v53, v234);
        v188 = v211;
        v189 = v209;
        (*(v211 + 32))(v209, v53, v187);
        sub_29D57ADF0(v189, v186, MEMORY[0x29EDC41E8], &unk_2A242A8F0, sub_29D57C4E4);

        (*(v188 + 8))(v189, v187);
      }

      return (*(v181 + 8))(v228, v182);
    }

    (*(v59 + 96))(v53, v234);
    v173 = v210;
    sub_29D5B36CC();
    v174 = sub_29D5B370C();
    v175 = sub_29D5B427C();
    if (os_log_type_enabled(v174, v175))
    {
      v176 = swift_slowAlloc();
      v177 = swift_slowAlloc();
      *&v236 = v177;
      *v176 = 136446210;
      v178 = sub_29D578614(ObjectType);
      v180 = sub_29D501890(v178, v179, &v236);

      *(v176 + 4) = v180;
      v156 = v223;
      _os_log_impl(&dword_29D48C000, v174, v175, "[%{public}s]: received access-not-granted login redirect", v176, 0xCu);
      sub_29D48F668(v177);
      MEMORY[0x29ED5FB80](v177, -1, -1);
      MEMORY[0x29ED5FB80](v176, -1, -1);
    }

    (*(v220 + 8))(v173, v219);
    (*(v59 + 8))(v228, v234);
    return (*(v156 + 8))(v53, v222);
  }
}

uint64_t sub_29D57657C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_29D57B488(0, &unk_2A1A19450, MEMORY[0x29EDCA398], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v9 - 8, v10);
  v12 = v26 - v11;
  sub_29D545CA8(a3, v26 - v11);
  v13 = sub_29D5B410C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_29D57BFB0(v12, &unk_2A1A19450, MEMORY[0x29EDCA398]);
  }

  else
  {
    sub_29D5B40FC();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_29D5B40CC();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_29D5B3EAC() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_29D57BFB0(a3, &unk_2A1A19450, MEMORY[0x29EDCA398]);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_29D57BFB0(a3, &unk_2A1A19450, MEMORY[0x29EDCA398]);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_29D5768B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = *(sub_29D5B1BCC() - 8);
  v5 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v6 = *(v4 + 72);
  sub_29D57C48C(&qword_2A1A197F8, MEMORY[0x29EDC3FB8], MEMORY[0x29EDC3FD0]);
  v7 = 0;
  while ((sub_29D5B3E0C() & 1) == 0)
  {
    ++v7;
    v5 += v6;
    if (v2 == v7)
    {
      return 0;
    }
  }

  return v7;
}

unint64_t sub_29D5769D4(uint64_t a1, unint64_t a2)
{
  v3 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v4 = sub_29D5B485C();
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x29ED5EF30](v5, a2);
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v6 = *(a2 + 8 * v5 + 32);
    }

    v7 = v6;
    sub_29D48F51C(0, &qword_2A1A19660, 0x29EDBAD78);
    v8 = sub_29D5B465C();

    if (v8)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }
}

uint64_t sub_29D576AE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = sub_29D5B40EC();
  v8[3] = sub_29D5B40DC();
  v13 = swift_task_alloc();
  v8[4] = v13;
  *v13 = v8;
  v13[1] = sub_29D576BEC;

  return sub_29D576D28(a5, a6, a7, a8, v16, v17, v18, v19);
}

uint64_t sub_29D576BEC()
{

  v1 = sub_29D5B40CC();

  return MEMORY[0x2A1C73D48](sub_29D57C4E8, v1, v0);
}

uint64_t sub_29D576D28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ObjectType = swift_getObjectType();
  v8[50] = a8;
  v8[51] = ObjectType;
  v8[48] = a6;
  v8[49] = a7;
  v8[46] = a4;
  v8[47] = a5;
  v8[44] = a2;
  v8[45] = a3;
  v8[43] = a1;
  v18 = sub_29D5B371C();
  v8[52] = v18;
  v8[53] = *(v18 - 8);
  v8[54] = swift_task_alloc();
  v8[55] = sub_29D5B40EC();
  v8[56] = sub_29D5B40DC();
  v8[57] = sub_29D5B40DC();
  v20 = sub_29D5B40CC();
  v8[58] = v20;
  v8[59] = v19;

  return MEMORY[0x2A1C73D48](sub_29D576E84, v20, v19);
}

uint64_t sub_29D576E84()
{
  v1 = v0[50];
  v0[60] = sub_29D5B1CBC();
  v2 = sub_29D5B1C8C();
  v3 = sub_29D5B1C4C();

  v0[61] = [v3 clinicalAccountStore];
  v4 = swift_task_alloc();
  v0[62] = v4;
  *v4 = v0;
  v4[1] = sub_29D576F68;

  return sub_29D4FE294(v1);
}

uint64_t sub_29D576F68(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 488);
  *(*v1 + 504) = a1;

  v4 = *(v2 + 472);
  v5 = *(v2 + 464);

  return MEMORY[0x2A1C73D48](sub_29D5770B0, v5, v4);
}

uint64_t sub_29D5770B0()
{
  v1 = *(v0 + 504);

  if (v1)
  {
    v2 = sub_29D5B40CC();
    v4 = v3;
    v5 = sub_29D5771A8;
  }

  else
  {
    v6 = *(v0 + 400);
    sub_29D5B19AC();
    v7 = v6;
    v8 = sub_29D5B199C();
    v9 = *(v0 + 400);
    if (v8)
    {
      v10 = v8;
      [*(v0 + 400) presentViewController:v8 animated:1 completion:0];
    }

    v2 = sub_29D5B40CC();
    v4 = v11;
    v5 = sub_29D577444;
  }

  return MEMORY[0x2A1C73D48](v5, v2, v4);
}

uint64_t sub_29D5771A8()
{
  v1 = v0[48];
  v22 = v0[47];
  v23 = v0[49];
  v3 = v0[45];
  v2 = v0[46];
  v4 = v0[43];
  v5 = v0[44];

  v6 = MEMORY[0x29EDC9E90];
  sub_29D57B488(0, &qword_2A17A4F38, sub_29D57B4EC, MEMORY[0x29EDC9E90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D5B8060;
  *(inited + 32) = sub_29D5B3E5C();
  v8 = MEMORY[0x29EDC99B0];
  *(inited + 72) = MEMORY[0x29EDC99B0];
  *(inited + 40) = v9;
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  *(inited + 80) = sub_29D5B3E5C();
  *(inited + 88) = v10;
  *(inited + 120) = v8;
  *(inited + 96) = v3;
  *(inited + 104) = v2;
  *(inited + 128) = sub_29D5B3E5C();
  *(inited + 136) = v11;
  *(inited + 168) = v8;
  v12 = v22;
  if (!v1)
  {
    v12 = 0;
  }

  v13 = 0xE000000000000000;
  if (v1)
  {
    v13 = v1;
  }

  *(inited + 144) = v12;
  *(inited + 152) = v13;
  *(inited + 176) = sub_29D5B3E5C();
  *(inited + 184) = v14;
  *(inited + 216) = MEMORY[0x29EDC9CA8];
  *(inited + 192) = v23;

  v15 = sub_29D57AA8C(inited);
  swift_setDeallocating();
  sub_29D57B4EC();
  swift_arrayDestroy();
  sub_29D57B488(0, &qword_2A17A4F48, sub_29D57B550, v6);
  v16 = swift_initStackObject();
  *(v16 + 16) = xmmword_29D5B62A0;
  *(v16 + 32) = sub_29D5B3E5C();
  *(v16 + 40) = v17;
  *(v16 + 48) = v15;
  sub_29D57ABCC(v16);
  swift_setDeallocating();
  sub_29D57BEC0(v16 + 32, sub_29D57B550);
  v18 = sub_29D5B1C8C();
  v19 = sub_29D5B1C4C();

  sub_29D5B195C();

  v20 = v0[1];

  return v20();
}

uint64_t sub_29D577444()
{
  v23 = v0;

  sub_29D5B36CC();

  v1 = sub_29D5B370C();
  v2 = sub_29D5B427C();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[53];
    v20 = v0[52];
    v21 = v0[54];
    v4 = v0[43];
    v5 = v0[44];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v22 = v7;
    *v6 = 136315394;
    v8 = sub_29D5B4DFC();
    v10 = sub_29D501890(v8, v9, &v22);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    v0[41] = v4;
    v0[42] = v5;

    sub_29D5B4CAC();
    v11 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_29D5B47BC();
    swift_unknownObjectRelease();
    v12 = sub_29D5B3E7C();
    v14 = sub_29D501890(v12, v13, &v22);

    *(v6 + 14) = v14;
    _os_log_impl(&dword_29D48C000, v1, v2, "[%s]: called to handle onboarding to gateway %s but CHR isn't supported on this device", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED5FB80](v7, -1, -1);
    MEMORY[0x29ED5FB80](v6, -1, -1);

    (*(v3 + 8))(v21, v20);
  }

  else
  {
    v16 = v0[53];
    v15 = v0[54];
    v17 = v0[52];

    (*(v16 + 8))(v15, v17);
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_29D57768C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = sub_29D5B40EC();
  v7[3] = sub_29D5B40DC();
  v11 = swift_task_alloc();
  v7[4] = v11;
  *v11 = v7;
  v11[1] = sub_29D577750;

  return sub_29D57B670(a5, a6, a7);
}

uint64_t sub_29D577750()
{

  v1 = sub_29D5B40CC();

  return MEMORY[0x2A1C73D48](sub_29D57788C, v1, v0);
}

uint64_t sub_29D57788C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_29D5778EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a8;
  v8[6] = v11;
  v8[3] = a6;
  v8[4] = a7;
  v8[2] = a5;
  v8[7] = sub_29D5B40EC();
  v8[8] = sub_29D5B40DC();

  return MEMORY[0x2A1C73D48](sub_29D577978, 0, 0);
}

uint64_t sub_29D577978()
{
  sub_29D5B1CBC();
  v1 = sub_29D5B1C8C();
  v2 = sub_29D5B1C4C();
  v0[9] = v2;

  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_29D577A40;
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[3];
  v7 = v0[4];
  v8 = v0[2];

  return MEMORY[0x2A1C65968](v8, v6, v7, v2, v4, v5);
}

uint64_t sub_29D577A40()
{
  v1 = *(*v0 + 72);

  v3 = sub_29D5B40CC();

  return MEMORY[0x2A1C73D48](sub_29D577B9C, v3, v2);
}

uint64_t sub_29D577B9C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_29D577BFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = sub_29D5B40EC();
  v7[3] = sub_29D5B40DC();
  v11 = swift_task_alloc();
  v7[4] = v11;
  *v11 = v7;
  v11[1] = sub_29D576BEC;

  return sub_29D577CD0(a5, a6, a7);
}

uint64_t sub_29D577CD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v3[20] = a3;
  v3[21] = ObjectType;
  v3[18] = a1;
  v3[19] = a2;
  v8 = sub_29D5B371C();
  v3[22] = v8;
  v3[23] = *(v8 - 8);
  v3[24] = swift_task_alloc();
  v3[25] = sub_29D5B40EC();
  v3[26] = sub_29D5B40DC();
  v3[27] = sub_29D5B40DC();
  v10 = sub_29D5B40CC();
  v3[28] = v10;
  v3[29] = v9;

  return MEMORY[0x2A1C73D48](sub_29D577DF4, v10, v9);
}

uint64_t sub_29D577DF4()
{
  v1 = v0[18];
  v0[30] = sub_29D5B1CBC();
  v2 = sub_29D5B1C8C();
  v3 = sub_29D5B1C4C();

  v0[31] = [v3 clinicalAccountStore];
  v4 = swift_task_alloc();
  v0[32] = v4;
  *v4 = v0;
  v4[1] = sub_29D577ED8;

  return sub_29D4FE294(v1);
}

uint64_t sub_29D577ED8(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 248);
  *(*v1 + 289) = a1;

  v4 = *(v2 + 232);
  v5 = *(v2 + 224);

  return MEMORY[0x2A1C73D48](sub_29D578020, v5, v4);
}

uint64_t sub_29D578020()
{
  v1 = *(v0 + 289);

  if (v1)
  {
    v2 = sub_29D5B40CC();
    v4 = v3;
    *(v0 + 264) = v2;
    *(v0 + 272) = v3;
    v5 = sub_29D578124;
    v6 = v2;
  }

  else
  {
    v7 = *(v0 + 144);
    sub_29D5B19AC();
    v8 = v7;
    v9 = sub_29D5B199C();
    v10 = *(v0 + 144);
    if (v9)
    {
      v11 = v9;
      [*(v0 + 144) presentViewController:v9 animated:1 completion:0];
    }

    v12 = sub_29D5B40CC();
    v14 = v13;
    v5 = sub_29D578494;
    v6 = v12;
    v4 = v14;
  }

  return MEMORY[0x2A1C73D48](v5, v6, v4);
}

uint64_t sub_29D578124(uint64_t a1)
{
  v2 = sub_29D5B1C8C();
  v3 = sub_29D5B1C4C();

  v4 = [v3 clinicalAccountStore];
  v1[35] = v4;

  v1[2] = v1;
  v1[7] = v1 + 36;
  v1[3] = sub_29D578274;
  v5 = swift_continuation_init();
  sub_29D57C190();
  v1[17] = v6;
  v1[10] = MEMORY[0x29EDCA5F8];
  v1[11] = 1107296256;
  v1[12] = sub_29D579E58;
  v1[13] = &unk_2A242A890;
  v1[14] = v5;
  [v4 hasGatewayBackedHealthRecordsAccountWithCompletion_];

  return MEMORY[0x2A1C73CC0](v1 + 2);
}

uint64_t sub_29D578274()
{
  v1 = *(*v0 + 272);
  v2 = *(*v0 + 264);

  return MEMORY[0x2A1C73D48](sub_29D57837C, v2, v1);
}

uint64_t sub_29D57837C()
{
  v1 = *(v0 + 280);

  v2 = *(v0 + 288);

  v3 = sub_29D5B433C();
  sub_29D5B21EC();
  v4 = sub_29D5B21DC();
  v5 = sub_29D5B1C8C();
  v6 = sub_29D5B1C4C();

  if (v2 == 1)
  {
    sub_29D5B217C();
  }

  else
  {
    sub_29D5B21AC();
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_29D578494()
{
  v15 = v0;

  sub_29D5B36CC();
  v1 = sub_29D5B370C();
  v2 = sub_29D5B427C();
  v3 = os_log_type_enabled(v1, v2);
  v5 = v0[23];
  v4 = v0[24];
  v6 = v0[22];
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315138;
    v9 = sub_29D5B4DFC();
    v11 = sub_29D501890(v9, v10, &v14);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_29D48C000, v1, v2, "[%s]: called to handle onboarding to provider search but CHR isn't supported on this device", v7, 0xCu);
    sub_29D48F668(v8);
    MEMORY[0x29ED5FB80](v8, -1, -1);
    MEMORY[0x29ED5FB80](v7, -1, -1);
  }

  (*(v5 + 8))(v4, v6);

  v12 = v0[1];

  return v12();
}

void sub_29D578644(uint64_t a1, void *a2, void *a3)
{
  v64 = a2;
  v63 = a3;
  v4 = sub_29D5B371C();
  v68 = *(v4 - 8);
  v69 = v4;
  MEMORY[0x2A1C7C4A8](v4, v5);
  v60 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29D5B0EDC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x2A1C7C4A8](v7, v10);
  v66 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11, v12);
  v14 = &v58 - v13;
  v15 = objc_opt_self();
  v62 = a1;
  v16 = sub_29D5B0E9C();
  v58 = [v15 predicateForObjectWithUUID_];

  v61 = *(v8 + 16);
  v59 = v7;
  v61(v14, a1, v7);
  v17 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v18 = (v9 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 15) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  v67 = v8;
  (*(v8 + 32))(v22 + v17, v14, v7);
  v24 = v63;
  v23 = v64;
  *(v22 + v18) = v63;
  *(v22 + v19) = v23;
  v25 = v65;
  *(v22 + v20) = v65;
  v26 = v58;
  *(v22 + v21) = v58;
  v27 = v60;
  v28 = objc_allocWithZone(MEMORY[0x29EDBAD70]);
  aBlock[4] = sub_29D57BDE0;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29D579EB4;
  aBlock[3] = &unk_2A242A7C8;
  v29 = _Block_copy(aBlock);
  v30 = v26;
  v31 = v24;
  v32 = v23;
  v33 = v25;
  v34 = v30;
  v35 = [v28 initWithSampleType:v32 predicate:v30 limit:1 sortDescriptors:0 resultsHandler:v29];
  v36 = v29;
  v37 = v66;
  _Block_release(v36);

  sub_29D5B36CC();
  v38 = v59;
  (v61)(v37, v62);
  v39 = v32;
  v40 = v27;
  v41 = sub_29D5B370C();
  v42 = sub_29D5B426C();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v65 = v34;
    v44 = v43;
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v64 = v35;
    v47 = v46;
    aBlock[0] = v46;
    *v44 = 136315394;
    v48 = sub_29D5B0E8C();
    v49 = v37;
    v51 = v50;
    (*(v67 + 8))(v49, v38);
    v52 = sub_29D501890(v48, v51, aBlock);

    *(v44 + 4) = v52;
    *(v44 + 12) = 2112;
    *(v44 + 14) = v39;
    *v45 = v39;
    v53 = v39;
    _os_log_impl(&dword_29D48C000, v41, v42, "_showMedicalRecord querying for %s as sampleType %@", v44, 0x16u);
    sub_29D57BEC0(v45, sub_29D4A6FFC);
    MEMORY[0x29ED5FB80](v45, -1, -1);
    sub_29D48F668(v47);
    v54 = v47;
    v35 = v64;
    MEMORY[0x29ED5FB80](v54, -1, -1);
    v34 = v65;
    MEMORY[0x29ED5FB80](v44, -1, -1);
  }

  else
  {

    (*(v67 + 8))(v37, v38);
  }

  (*(v68 + 8))(v40, v69);
  sub_29D5B1CBC();
  v55 = sub_29D5B1C8C();
  v56 = sub_29D5B1C4C();

  v57 = [v56 healthStore];
  [v57 executeQuery_];
}

void sub_29D578B80(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  v98 = a2;
  v99 = a8;
  v95 = a7;
  v96 = a6;
  v97 = a5;
  v102 = a4;
  v92 = sub_29D5B3C8C();
  v94 = *(v92 - 8);
  MEMORY[0x2A1C7C4A8](v92, v9);
  v11 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29D5B3CAC();
  v93 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12, v13);
  v15 = &v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_29D5B0EDC();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v20 = MEMORY[0x2A1C7C4A8](v16, v19);
  v21 = &v89 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v20, v22);
  v24 = &v89 - v23;
  v25 = sub_29D5B371C();
  v100 = *(v25 - 1);
  v101 = v25;
  v27 = MEMORY[0x2A1C7C4A8](v25, v26);
  MEMORY[0x2A1C7C4A8](v27, v28);
  if (a3)
  {
    v31 = &v89 - v29;
    v32 = a3;
    v33 = a3;
    sub_29D5B36CC();
    (*(v17 + 16))(v24, v102, v16);
    v34 = a3;
    v35 = sub_29D5B370C();
    v36 = sub_29D5B427C();

    v37 = v16;
    if (os_log_type_enabled(v35, v36))
    {
      v38 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      aBlock[0] = v102;
      *v38 = 136315394;
      sub_29D57C48C(&unk_2A17A3A20, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C38]);
      v39 = sub_29D5B4C4C();
      v41 = v40;
      (*(v17 + 8))(v24, v37);
      v42 = sub_29D501890(v39, v41, aBlock);

      *(v38 + 4) = v42;
      *(v38 + 12) = 2080;
      v103 = v32;
      v43 = v32;
      sub_29D4B3AF4();
      v44 = sub_29D5B3E7C();
      v46 = sub_29D501890(v44, v45, aBlock);

      *(v38 + 14) = v46;
      _os_log_impl(&dword_29D48C000, v35, v36, "_showMedicalRecord was unable to fetch records, will not show medical record %s, error: %s", v38, 0x16u);
      v47 = v102;
      swift_arrayDestroy();
      MEMORY[0x29ED5FB80](v47, -1, -1);
      MEMORY[0x29ED5FB80](v38, -1, -1);
    }

    else
    {

      (*(v17 + 8))(v24, v16);
    }

    v65 = *(v100 + 8);
    v66 = v31;
LABEL_14:
    v65(v66, v101);
    return;
  }

  v48 = v17;
  v49 = v16;
  v50 = v99;
  v90 = v15;
  v91 = v12;
  v51 = v30;
  v52 = v97;
  if (v98)
  {
    v53 = sub_29D5795E8(v98);
    if (v53)
    {
      v54 = v53 & 0xFFFFFFFFFFFFFF8;
      if (v53 >> 62)
      {
        v98 = v53;
        v67 = sub_29D5B485C();
        v53 = v98;
        if (v67)
        {
LABEL_8:
          if ((v53 & 0xC000000000000001) == 0)
          {
            if (!*(v54 + 16))
            {
              __break(1u);
              return;
            }

            v55 = v48;
            v56 = *(v53 + 32);
LABEL_11:

            sub_29D48F51C(0, &qword_2A1A1A420, 0x29EDCA548);
            v101 = sub_29D5B43FC();
            (*(v55 + 16))(v21, v102, v49);
            v57 = (*(v55 + 80) + 24) & ~*(v55 + 80);
            v58 = swift_allocObject();
            *(v58 + 16) = v56;
            (*(v55 + 32))(v58 + v57, v21, v49);
            *(v58 + ((v18 + v57 + 7) & 0xFFFFFFFFFFFFFFF8)) = v52;
            aBlock[4] = sub_29D57BF20;
            aBlock[5] = v58;
            aBlock[0] = MEMORY[0x29EDCA5F8];
            aBlock[1] = 1107296256;
            aBlock[2] = sub_29D49ACEC;
            aBlock[3] = &unk_2A242A818;
            v59 = _Block_copy(aBlock);
            v60 = v56;
            v61 = v52;

            v62 = v90;
            sub_29D5B3C9C();
            aBlock[0] = MEMORY[0x29EDCA190];
            sub_29D57C48C(&qword_2A1A19700, MEMORY[0x29EDCA248], MEMORY[0x29EDCA250]);
            sub_29D57B488(0, &qword_2A1A196B0, MEMORY[0x29EDCA248], MEMORY[0x29EDC9A40]);
            sub_29D55D990();
            v63 = v92;
            sub_29D5B47CC();
            v64 = v101;
            MEMORY[0x29ED5E9E0](0, v62, v11, v59);
            _Block_release(v59);

            (*(v94 + 8))(v11, v63);
            (*(v93 + 8))(v62, v91);
            return;
          }

LABEL_50:
          v56 = MEMORY[0x29ED5EF30](0);
          v55 = v48;
          goto LABEL_11;
        }
      }

      else if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_8;
      }
    }
  }

  v11 = [objc_opt_self() medicalRecordTypes];
  sub_29D48F51C(0, &qword_2A1A19660, 0x29EDBAD78);
  v49 = sub_29D5B402C();

  if (v49 >> 62)
  {
    v68 = sub_29D5B485C();
    v69 = v96;
    if (!v68)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v68 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v69 = v96;
    if (!v68)
    {
      goto LABEL_30;
    }
  }

  v70 = __OFSUB__(v68, 1);
  v71 = v68 - 1;
  if (v70)
  {
    __break(1u);
  }

  else if ((v49 & 0xC000000000000001) == 0)
  {
    if ((v71 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v71 < *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v72 = *(v49 + 8 * v71 + 32);
      goto LABEL_25;
    }

    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v72 = MEMORY[0x29ED5EF30](v71, v49);
LABEL_25:
  v11 = v72;
  v21 = v69;
  v73 = sub_29D5B465C();

  if (v73)
  {

    v74 = v51;
    sub_29D5B36CC();
    v75 = v50;
    v76 = sub_29D5B370C();
    v77 = sub_29D5B427C();

    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      aBlock[0] = v79;
      *v78 = 136315138;
      v80 = v75;
      v81 = [v80 description];
      v82 = sub_29D5B3E5C();
      v84 = v83;

      v85 = sub_29D501890(v82, v84, aBlock);

      *(v78 + 4) = v85;
      _os_log_impl(&dword_29D48C000, v76, v77, "_showMedicalRecord did not find a record for %s", v78, 0xCu);
      sub_29D48F668(v79);
      MEMORY[0x29ED5FB80](v79, -1, -1);
      MEMORY[0x29ED5FB80](v78, -1, -1);
    }

    v65 = *(v100 + 8);
    v66 = v74;
    goto LABEL_14;
  }

LABEL_30:
  v86 = sub_29D5769D4(v69, v49);
  if (v87)
  {

    return;
  }

  v70 = __OFADD__(v86, 1);
  v71 = v86 + 1;
  if (v70)
  {
    goto LABEL_46;
  }

  if ((v49 & 0xC000000000000001) != 0)
  {
LABEL_47:
    v101 = MEMORY[0x29ED5EF30](v71, v49);
    v48 = v102;
    goto LABEL_39;
  }

  v48 = v102;
  if ((v71 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_49;
  }

  if (v71 >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v101 = *(v49 + 8 * v71 + 32);
LABEL_39:

  sub_29D578644(v48, v101, v52);
  v88 = v101;
}

uint64_t sub_29D5795E8(unint64_t a1)
{
  v8 = MEMORY[0x29EDCA190];
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  sub_29D5B49AC();
  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_29D5B485C())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x29ED5EF30](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = v4;
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {

        return 0;
      }

      sub_29D5B498C();
      sub_29D5B49BC();
      sub_29D5B49CC();
      sub_29D5B499C();
      if (v6 == i)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    sub_29D5B485C();
    sub_29D5B49AC();
  }

  return v8;
}

uint64_t sub_29D579750(void *a1, uint64_t a2, void *a3)
{
  v6 = sub_29D5B0EDC();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x2A1C7C4A8](v6, v8);
  v11 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9, v12);
  v77 = &v71 - v13;
  v14 = sub_29D5B371C();
  v79 = *(v14 - 8);
  v16 = MEMORY[0x2A1C7C4A8](v14, v15);
  v18 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x2A1C7C4A8](v16, v19);
  v78 = &v71 - v21;
  MEMORY[0x2A1C7C4A8](v20, v22);
  v24 = &v71 - v23;
  [a1 recordCategoryType];
  v25 = sub_29D5B454C();
  if (!v25)
  {
    sub_29D5B36CC();
    (*(v7 + 16))(v11, a2, v6);
    v54 = v6;
    v55 = sub_29D5B370C();
    v56 = sub_29D5B427C();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v75 = v14;
      v59 = v58;
      v80 = v58;
      *v57 = 136315138;
      v60 = sub_29D5B0E8C();
      v62 = v61;
      (*(v7 + 8))(v11, v54);
      v63 = sub_29D501890(v60, v62, &v80);

      *(v57 + 4) = v63;
      _os_log_impl(&dword_29D48C000, v55, v56, "_showMedicalRecord is unable to present the detail room for %s, unable to determine medical record category", v57, 0xCu);
      sub_29D48F668(v59);
      MEMORY[0x29ED5FB80](v59, -1, -1);
      MEMORY[0x29ED5FB80](v57, -1, -1);

      return (*(v79 + 8))(v18, v75);
    }

    (*(v7 + 8))(v11, v6);
    v69 = *(v79 + 8);
    v70 = v18;
    return v69(v70, v14);
  }

  v26 = v25;
  v74 = v6;
  sub_29D5B21EC();
  v27 = sub_29D5B21DC();
  sub_29D5B1CBC();
  v28 = sub_29D5B1C8C();
  v29 = sub_29D5B1C5C();

  v76 = v26;
  v30 = v26;
  v31 = v29;
  v32 = [v27 makeViewControllerForCategory:v30 usingProfile:v29];
  v33 = [a3 navigationController];
  if (!v33)
  {
    v64 = v32;
    sub_29D5B36CC();
    v65 = sub_29D5B370C();
    v66 = sub_29D5B427C();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = v14;
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&dword_29D48C000, v65, v66, "_showMedicalRecord's presenting view controller has no navigation controller", v68, 2u);
      MEMORY[0x29ED5FB80](v68, -1, -1);

      return (*(v79 + 8))(v24, v67);
    }

    v69 = *(v79 + 8);
    v70 = v24;
    return v69(v70, v14);
  }

  v34 = v33;
  v75 = v14;
  v73 = v32;
  [v33 pushViewController:v32 animated:0];
  v35 = [a1 primaryConcept];
  v36 = [v35 groupByConcept];

  LOBYTE(v35) = [v36 isQualifiedForConceptRoom];
  if (v35)
  {
    v37 = sub_29D5B21CC();
    [v34 pushViewController:v37 animated:0];
  }

  v38 = [v34 topViewController];
  if (!v38)
  {
    v38 = v34;
  }

  v39 = v31;
  sub_29D5B216C();

  v40 = v78;
  sub_29D5B36CC();
  v41 = v77;
  v42 = v74;
  (*(v7 + 16))(v77, a2, v74);
  v43 = sub_29D5B370C();
  v44 = sub_29D5B429C();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = v41;
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v72 = v27;
    v48 = v47;
    v80 = v47;
    *v46 = 136315138;
    v49 = sub_29D5B0E8C();
    v71 = v39;
    v51 = v50;
    (*(v7 + 8))(v45, v42);
    v52 = sub_29D501890(v49, v51, &v80);

    *(v46 + 4) = v52;
    _os_log_impl(&dword_29D48C000, v43, v44, "_showMedicalRecord presenting detail room for %s", v46, 0xCu);
    sub_29D48F668(v48);
    MEMORY[0x29ED5FB80](v48, -1, -1);
    MEMORY[0x29ED5FB80](v46, -1, -1);

    return (*(v79 + 8))(v78, v75);
  }

  else
  {

    (*(v7 + 8))(v41, v42);
    return (*(v79 + 8))(v40, v75);
  }
}

uint64_t sub_29D579E58(uint64_t a1, char a2)
{
  **(*(*sub_29D499EC0((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;

  return MEMORY[0x2A1C73CD0]();
}

uint64_t sub_29D579EB4(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v7 = *(a1 + 32);
  if (a3)
  {
    sub_29D48F51C(0, &qword_2A1A16280, 0x29EDBAD60);
    v5 = sub_29D5B402C();
  }

  v8 = a2;
  v9 = a4;
  v7(v8, v5, a4);
}

uint64_t sub_29D579F6C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_29D57A064;

  return v6(a1);
}

uint64_t sub_29D57A064()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_29D57A24C(uint64_t a1)
{
  v2 = sub_29D5B48AC();

  return sub_29D57A46C(a1, v2);
}

unint64_t sub_29D57A290(uint64_t a1, uint64_t a2)
{
  sub_29D5B4D4C();
  sub_29D5B3EFC();
  v4 = sub_29D5B4D9C();

  return sub_29D57A534(a1, a2, v4);
}

unint64_t sub_29D57A308(uint64_t a1)
{
  sub_29D5B0EDC();
  sub_29D57C48C(&qword_2A1A193B0, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C18]);
  v2 = sub_29D5B3D8C();

  return sub_29D57A5EC(a1, v2);
}

unint64_t sub_29D57A3A0(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a2 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    sub_29D48F51C(0, a3, a4);
    do
    {
      v8 = *(*(v4 + 48) + 8 * v6);
      v9 = sub_29D5B465C();

      if (v9)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_29D57A46C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_29D4BBDE0(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x29ED5EE90](v9, a1);
      sub_29D4A73CC(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_29D57A534(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_29D5B4C7C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_29D57A5EC(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_29D5B0EDC();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_29D57C48C(&qword_2A17A4848, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C20]);
      v16 = sub_29D5B3E0C();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_29D57A7AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_29D4A6960(0);
    v3 = sub_29D5B4AAC();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_29D57A1AC(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

unint64_t sub_29D57A898(uint64_t a1)
{
  sub_29D57C2A4(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_29D57C314(0);
    v9 = sub_29D5B4AAC();
    v10 = *(v3 + 48);
    v11 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);

    while (1)
    {
      sub_29D57C3C0(v11, v7, sub_29D57C2A4);
      result = sub_29D57A308(v7);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = v9[6];
      v17 = sub_29D5B0EDC();
      (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, v7, v17);
      v18 = v9[7];
      v19 = type metadata accessor for AccountNewRecordsData(0);
      result = sub_29D57C428(&v7[v10], v18 + *(*(v19 - 8) + 72) * v15);
      v20 = v9[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v9[2] = v22;
      v11 += v12;
      if (!--v8)
      {

        return v9;
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

unint64_t sub_29D57AA8C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_29D57C244(0, &qword_2A17A4F68, MEMORY[0x29EDCA178] + 8, MEMORY[0x29EDC9E70]);
    v3 = sub_29D5B4AAC();
    v4 = a1 + 32;

    while (1)
    {
      sub_29D57C3C0(v4, &v13, sub_29D57B4EC);
      v5 = v13;
      v6 = v14;
      result = sub_29D57A290(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_29D4C97AC(&v15, (v3[7] + 32 * result));
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

unint64_t sub_29D57ABCC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_29D57B5E0(0);
    v3 = sub_29D5B4AAC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_29D57A290(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_29D57ACC4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_29D57C244(0, &qword_2A17A3DB8, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E70]);
    v3 = sub_29D5B4AAC();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_29D57A290(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

uint64_t sub_29D57ADF0(uint64_t a1, void *a2, unsigned int *a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_29D5B249C();
  v9 = *(v8 - 8);
  v11 = MEMORY[0x2A1C7C4A8](v8, v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11, v14);
  v16 = &v23 - v15;
  v17 = sub_29D5B0D5C();
  (*(*(v17 - 8) + 16))(v16, a1, v17);
  (*(v9 + 104))(v16, *a3, v8);
  sub_29D5B1CBC();
  v18 = sub_29D5B1C8C();
  v19 = sub_29D5B1C4C();

  v20 = [v19 healthStore];
  (*(v9 + 16))(v13, v16, v8);
  sub_29D5B24BC();
  swift_allocObject();
  sub_29D5B24AC();
  *(swift_allocObject() + 16) = a2;
  v21 = a2;
  sub_29D5B248C();

  return (*(v9 + 8))(v16, v8);
}

uint64_t sub_29D57B014(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_29D57C4D8;

  return sub_29D577BFC(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_29D57B0E8(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_29D5B0EDC() - 8);
  v6 = (*(v5 + 80) + 80) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1[2];
  v9 = v1[3];
  v10 = *(v1 + v7);
  v11 = v1[4];
  v12 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_29D57C4D8;

  return sub_29D5778EC(a1, v8, v9, v11, (v1 + 5), v1 + v6, v10, v12);
}

uint64_t sub_29D57B244(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_29D5B1D6C() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[4];
  v12 = *(v1 + v7);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_29D4E7B8C;

  return sub_29D57768C(a1, v9, v10, v11, v1 + v6, v12, v1 + v8);
}

uint64_t sub_29D57B384(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_29D57C4D8;

  return sub_29D576AE4(a1, v12, v4, v5, v6, v7, v8, v9);
}

void sub_29D57B488(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29D57B4EC()
{
  if (!qword_2A17A4F40)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A17A4F40);
    }
  }
}

void sub_29D57B550(uint64_t a1)
{
  if (!qword_2A17A4F50)
  {
    sub_29D57C244(255, &qword_2A17A4F58, MEMORY[0x29EDCA178] + 8, MEMORY[0x29EDC98E0]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A17A4F50);
    }
  }
}

void sub_29D57B5E0(uint64_t a1)
{
  if (!qword_2A17A4F60)
  {
    sub_29D57C244(255, &qword_2A17A4F58, MEMORY[0x29EDCA178] + 8, MEMORY[0x29EDC98E0]);
    v1 = sub_29D5B4ABC();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17A4F60);
    }
  }
}

uint64_t sub_29D57B670(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_29D5B251C();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_29D5B1BCC();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v6 = sub_29D5B1D6C();
  v3[11] = v6;
  v3[12] = *(v6 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = sub_29D5B40EC();
  v3[15] = sub_29D5B40DC();
  v3[16] = sub_29D5B40DC();
  v8 = sub_29D5B40CC();
  v3[17] = v8;
  v3[18] = v7;

  return MEMORY[0x2A1C73D48](sub_29D57B830, v8, v7);
}

uint64_t sub_29D57B830()
{
  v1 = v0[3];
  sub_29D5B1CBC();
  v2 = sub_29D5B1C8C();
  v3 = sub_29D5B1C4C();

  v0[19] = [v3 clinicalAccountStore];
  v4 = swift_task_alloc();
  v0[20] = v4;
  *v4 = v0;
  v4[1] = sub_29D57B910;

  return sub_29D4FE294(v1);
}

uint64_t sub_29D57B910(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  *(*v1 + 168) = a1;

  v4 = *(v2 + 144);
  v5 = *(v2 + 136);

  return MEMORY[0x2A1C73D48](sub_29D57BA58, v5, v4);
}

uint64_t sub_29D57BA58()
{
  v1 = *(v0 + 168);

  if (v1)
  {
    v2 = sub_29D5B40CC();
    v4 = v3;
    v5 = sub_29D57BC08;
  }

  else
  {
    v6 = *(v0 + 24);
    sub_29D5B19AC();
    v7 = v6;
    v8 = sub_29D5B199C();
    v9 = *(v0 + 24);
    if (v8)
    {
      v10 = v8;
      [*(v0 + 24) presentViewController:v8 animated:1 completion:0];

      v2 = sub_29D5B40CC();
      v4 = v11;
      v5 = sub_29D57BB88;
    }

    else
    {

      v2 = sub_29D5B40CC();
      v4 = v12;
      v5 = sub_29D57C4DC;
    }
  }

  return MEMORY[0x2A1C73D48](v5, v2, v4);
}

uint64_t sub_29D57BB88()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_29D57BC08()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  v4 = v0[2];

  v5 = *(v2 + 16);
  v5(v1, v4, v3);
  if ((*(v2 + 88))(v1, v3) == *MEMORY[0x29EDC4068])
  {
    sub_29D5B190C();
  }

  else
  {
    v6 = v0[12];
    v7 = v0[10];
    v15 = v0[11];
    v16 = v0[13];
    v9 = v0[8];
    v8 = v0[9];
    v10 = v0[6];
    v11 = v0[7];
    v12 = v0[5];
    (v5)(v7, v0[2]);
    (*(v8 + 104))(v7, *MEMORY[0x29EDC3F80], v9);
    (*(v10 + 104))(v11, *MEMORY[0x29EDC41F8], v12);
    sub_29D5B191C();
    (*(v10 + 8))(v11, v12);
    (*(v8 + 8))(v7, v9);
    (*(v6 + 8))(v16, v15);
  }

  v13 = v0[1];

  return v13();
}

void sub_29D57BDE0(uint64_t a1, unint64_t a2, void *a3)
{
  v7 = *(sub_29D5B0EDC() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v3 + v9);
  v13 = *(v3 + v10);
  v14 = *(v3 + v11);
  v15 = *(v3 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_29D578B80(a1, a2, a3, v3 + v8, v12, v13, v14, v15);
}

uint64_t sub_29D57BEC0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29D57BF20()
{
  v1 = *(sub_29D5B0EDC() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_29D579750(v3, v0 + v2, v4);
}

uint64_t sub_29D57BFB0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29D57B488(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29D57C020(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_29D57C4D8;

  return sub_29D579F6C(a1, v4);
}

uint64_t sub_29D57C0D8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_29D4E7B8C;

  return sub_29D579F6C(a1, v4);
}

void sub_29D57C190()
{
  if (!qword_2A17A4F70)
  {
    v0 = sub_29D5B411C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17A4F70);
    }
  }
}

void sub_29D57C244(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, void, uint64_t, void))
{
  if (!*a2)
  {
    v5 = a4(0, MEMORY[0x29EDC99B0], a3, MEMORY[0x29EDC99C0]);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_29D57C2A4(uint64_t a1)
{
  if (!qword_2A1A19398)
  {
    sub_29D5B0EDC();
    type metadata accessor for AccountNewRecordsData(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1A19398);
    }
  }
}

void sub_29D57C314(uint64_t a1)
{
  if (!qword_2A17A4F78)
  {
    sub_29D5B0EDC();
    type metadata accessor for AccountNewRecordsData(255);
    sub_29D57C48C(&qword_2A1A193B0, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C18]);
    v1 = sub_29D5B4ABC();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17A4F78);
    }
  }
}

uint64_t sub_29D57C3C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D57C428(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountNewRecordsData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D57C48C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_29D57C4EC()
{
  result = [objc_opt_self() secondaryLabelColor];
  qword_2A17ABF98 = result;
  return result;
}

void sub_29D57C558(uint64_t a1, void **a2, uint64_t a3, uint64_t *a4)
{
  sub_29D48F51C(0, &unk_2A1A19440, 0x29EDC76B0);
  v6 = *a2;
  v7 = sub_29D5B458C();

  *a4 = v7;
}

id sub_29D57C644(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + *a1);
  if (v3)
  {
    v4 = *(v1 + *a1);
  }

  else
  {
    v5 = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
    [v5 setNumberOfLines_];
    [v5 setTranslatesAutoresizingMaskIntoConstraints_];
    [v5 setLineBreakMode_];
    [v5 setAdjustsFontForContentSizeCategory_];
    v6 = *(v1 + v2);
    *(v1 + v2) = v5;
    v4 = v5;

    v3 = 0;
  }

  v7 = v3;
  return v4;
}

id sub_29D57C710(uint64_t *a1)
{
  v3 = v1;
  v4 = sub_29D5B1DBC();
  MEMORY[0x2A1C7C4A8](v4, v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = *(v3 + v9);
  if (v10)
  {
    v11 = *(v3 + v9);
  }

  else
  {
    *v8 = 0;
    (*(v6 + 104))(v8, *MEMORY[0x29EDC40C8]);
    v12 = objc_allocWithZone(sub_29D5B1DEC());
    v13 = sub_29D5B1DCC();
    [v13 setTranslatesAutoresizingMaskIntoConstraints_];
    v14 = *(v3 + v9);
    *(v3 + v9) = v13;
    v11 = v13;

    v10 = 0;
  }

  v15 = v10;
  return v11;
}

id sub_29D57C84C(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + *a1);
  if (v3)
  {
    v4 = *(v1 + *a1);
  }

  else
  {
    v5 = [objc_allocWithZone(MEMORY[0x29EDC7B40]) init];
    v6 = *(v1 + v2);
    *(v1 + v2) = v5;
    v4 = v5;

    v3 = 0;
  }

  v7 = v3;
  return v4;
}

BOOL sub_29D57C8BC()
{
  v1 = OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___currentLayout;
  v2 = v0[OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___currentLayout];
  if (v2 != 2)
  {
    return v2 & 1;
  }

  v3 = [v0 traitCollection];
  v4 = [v3 preferredContentSizeCategory];
  v5 = sub_29D5B44BC();

  result = (v5 & 1) == 0;
  v0[v1] = result;
  return result;
}

uint64_t sub_29D57C960()
{
  if (*(v0 + OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___currentLayoutConstraints))
  {
    v1 = *(v0 + OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___currentLayoutConstraints);
  }

  else
  {
    v1 = MEMORY[0x29EDCA190];
    *(v0 + OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___currentLayoutConstraints) = MEMORY[0x29EDCA190];
  }

  return v1;
}

id sub_29D57C9A8()
{
  v1 = OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___deltaImageFont;
  v2 = *(v0 + OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___deltaImageFont);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___deltaImageFont);
  }

  else
  {
    v4 = [objc_opt_self() hk:36.0 roundedSystemFontWithSize:*MEMORY[0x29EDC76F0] weight:?];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_29D57CA38()
{
  v1 = OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___deltaImageView;
  v2 = *(v0 + OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___deltaImageView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___deltaImageView);
  }

  else
  {
    v4 = sub_29D57CA9C(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_29D57CA9C(uint64_t a1)
{
  v2 = sub_29D5B1BCC();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ConceptDeltaHighlightFeedItemData(0);
  MEMORY[0x2A1C7C4A8](v7 - 8, v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView_viewModel;
  swift_beginAccess();
  sub_29D5697AC(a1 + v11, v10);
  v12 = sub_29D57F820(v10);
  sub_29D52A588(v10);
  v13 = [objc_allocWithZone(MEMORY[0x29EDC7AD8]) initWithImage_];

  v14 = v13;
  [v14 setTranslatesAutoresizingMaskIntoConstraints_];
  [v14 setMaximumContentSizeCategory_];

  sub_29D5697AC(a1 + v11, v10);
  v15 = sub_29D5B1D6C();
  (*(*(v15 - 8) + 16))(v6, v10, v15);
  (*(v3 + 104))(v6, *MEMORY[0x29EDC3F80], v2);
  v16 = sub_29D5B1B9C();
  (*(v3 + 8))(v6, v2);
  sub_29D52A588(v10);
  [v14 setTintColor_];

  return v14;
}

char *sub_29D57CCE8(uint64_t a1, void *a2)
{
  v3 = v2;
  *&v2[OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___leftGuide] = 0;
  *&v2[OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___leftValueLabel] = 0;
  *&v2[OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___leftDateLabel] = 0;
  *&v2[OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___leftRangeView] = 0;
  *&v2[OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___rightGuide] = 0;
  *&v2[OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___rightValueLabel] = 0;
  *&v2[OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___rightDateLabel] = 0;
  *&v2[OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___rightRangeView] = 0;
  *&v2[OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___containerLayoutGuide] = 0;
  v2[OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___currentLayout] = 2;
  *&v2[OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___currentLayoutConstraints] = 0;
  *&v2[OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___deltaImageFont] = 0;
  *&v2[OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___deltaImageView] = 0;
  sub_29D5697AC(a1, &v2[OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView_viewModel]);
  sub_29D5B1CBC();
  v6 = sub_29D5B1C8C();
  v7 = sub_29D5B1C9C();

  *&v3[OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView_profile] = v7;
  v14.receiver = v3;
  v14.super_class = type metadata accessor for ConceptDeltaHighlightFeedItemView(0);
  v8 = objc_msgSendSuper2(&v14, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_29D57F4D4();
  v9 = [objc_opt_self() _preferredFontForTextStyle_design_weight_];
  v10 = sub_29D57C608();
  [v10 setFont_];

  v11 = sub_29D57C638();
  [v11 setFont_];

  v12 = sub_29D57C8BC();
  *&v8[OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___currentLayoutConstraints] = sub_29D57D91C(v12);

  sub_29D57D1D4(a1);

  sub_29D52A588(a1);
  return v8;
}

void sub_29D57CF38(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for ConceptDeltaHighlightFeedItemData(0);
  MEMORY[0x2A1C7C4A8](v4 - 8, v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ConceptDeltaHighlightFeedItemView(0);
  v18.receiver = v2;
  v18.super_class = v8;
  objc_msgSendSuper2(&v18, sel_traitCollectionDidChange_, a1);
  v9 = [v2 traitCollection];
  if (v9)
  {
    v10 = v9;
    if (a1)
    {
      sub_29D48F51C(0, &qword_2A17A5018, 0x29EDC7D80);
      v11 = a1;
      v12 = sub_29D5B465C();

      if (v12)
      {
        return;
      }
    }

    else
    {
    }

LABEL_8:
    v13 = [objc_opt_self() _preferredFontForTextStyle_design_weight_];
    v14 = sub_29D57C608();
    [v14 setFont_];

    v15 = sub_29D57C638();
    [v15 setFont_];

    v16 = OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView_viewModel;
    swift_beginAccess();
    sub_29D5697AC(v2 + v16, v7);
    sub_29D57D1D4(v7);
    sub_29D52A588(v7);
    sub_29D57D810();
    return;
  }

  if (a1)
  {
    goto LABEL_8;
  }
}

void sub_29D57D1D4(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for ConceptDeltaHighlightFeedItemData(0);
  sub_29D57FCCC(0);
  v4 = sub_29D5B3CEC();
  v5 = [v4 chartableCodedQuantitySet];

  if (v5)
  {
    v6 = [v5 compatibleUnit];

    v7 = [v6 unitString];
    if (!v7)
    {
      sub_29D5B3E5C();
      v7 = sub_29D5B3E1C();
    }

    v8 = [*(v2 + OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView_profile) ucumDisplayConverter];
    v9 = [v8 synonymForUCUMUnitString_];

    v10 = sub_29D5B3E5C();
    v12 = v11;

    v13 = sub_29D5B3CEC();

    sub_29D4A2670(v13, v10, v12, v30);
    if (v30[1])
    {
      v38 = v31;
      v39 = v32;
      v14 = sub_29D5B3CEC();
      sub_29D4A2670(v14, v10, v12, v33);
      if (v33[1])
      {
        v36 = v34;
        v37 = v35;
        v15 = sub_29D57C608();
        v16 = sub_29D5B3E1C();
        [v15 setText_];

        v17 = sub_29D57C5FC();
        if (qword_2A17A3A08 != -1)
        {
          swift_once();
        }

        v18 = qword_2A17ABFA0;
        if (qword_2A17A3A10 != -1)
        {
          swift_once();
        }

        v19 = qword_2A17ABFA8;
        v20 = sub_29D57FDB4();
        v21 = MEMORY[0x29ED5CCF0](v18, v19, &type metadata for ConceptDeltaHighlightRecordViewData, v20);
        [v17 setAttributedText_];

        v22 = sub_29D57C638();
        v23 = sub_29D5B3E1C();
        [v22 setText_];

        v24 = sub_29D57C62C();
        v25 = MEMORY[0x29ED5CCF0](v18, v19, &type metadata for ConceptDeltaHighlightRecordViewData, v20);
        [v24 setAttributedText_];

        v26 = sub_29D57C614();
        sub_29D5B1DDC();

        v27 = sub_29D57C704();
        sub_29D5B1DDC();

        v28 = sub_29D57CA38();
        v29 = sub_29D57F820(a1);
        [v28 setImage_];

        sub_29D57FD34(v33);
      }

      sub_29D57FD34(v30);
    }

    else
    {
    }
  }
}

uint64_t sub_29D57D608()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = [v2 preferredContentSizeCategory];
  v4 = sub_29D5B44BC();

  [v1 bounds];
  Width = CGRectGetWidth(v18);
  v6 = sub_29D57CA38();
  [v6 intrinsicContentSize];
  v8 = v7;

  if ((Width - v8 + -24.0) * 0.5 < 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = (Width - v8 + -24.0) * 0.5;
  }

  v10 = sub_29D57C608();
  sub_29D57D738(v9);
  v12 = v11;

  if (v12 > 2 || (v13 = sub_29D57C638(), sub_29D57D738(v9), v15 = v14, v13, v15 >= 3))
  {
    v16 = 0;
  }

  else
  {
    v16 = v4 ^ 1;
  }

  return v16 & 1;
}

void sub_29D57D738(double a1)
{
  [v1 sizeThatFits_];
  if (v2 > 0.0)
  {
    v3 = v2;
    v4 = [v1 font];
    if (!v4)
    {
LABEL_11:
      __break(1u);
      return;
    }

    v5 = v4;
    [v4 lineHeight];
    v7 = v6;

    v8 = round(v3 / v7);
    if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v8 > -9.22337204e18)
    {
      if (v8 < 9.22337204e18)
      {
        return;
      }

      goto LABEL_10;
    }

    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }
}

void sub_29D57D810()
{
  v1 = sub_29D57D608();
  if (v1 != sub_29D57C8BC())
  {
    sub_29D57C960();
    sub_29D48F51C(0, &qword_2A17A3F80, 0x29EDBA008);
    v2 = sub_29D5B401C();

    [v0 removeConstraints_];

    *&v0[OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___currentLayoutConstraints] = sub_29D57E778(v1);

    v3 = objc_opt_self();
    v4 = sub_29D5B401C();

    [v3 activateConstraints_];

    v0[OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___currentLayout] = v1;
  }
}

uint64_t sub_29D57D91C(char a1)
{
  v2 = v1;
  v148 = objc_opt_self();
  sub_29D48F45C(0, &qword_2A1A19420, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_29D5BAE50;
  v4 = sub_29D57C608();
  v5 = [v4 topAnchor];

  v6 = sub_29D57C5F0();
  v7 = [v6 &selRef_setAlpha_];

  v8 = [v5 constraintEqualToAnchor_];
  *(v3 + 32) = v8;
  v9 = OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___leftDateLabel;
  v10 = [*&v2[OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___leftDateLabel] leftAnchor];
  v11 = OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___leftGuide;
  v12 = [*&v2[OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___leftGuide] 0x29F35295ALL];
  v13 = [v10 &selRef:v12 initWithProfileIdentifier:? + 5];

  *(v3 + 40) = v13;
  v147 = v9;
  v14 = [*&v2[v9] rightAnchor];
  v15 = [*&v2[v11] rightAnchor];
  v16 = [v14 &selRef:v15 initWithProfileIdentifier:? + 5];

  *(v3 + 48) = v16;
  v17 = sub_29D57C5FC();
  v18 = [v17 &selRef_setAlpha_];

  v19 = [*&v2[v9] bottomAnchor];
  v20 = [v18 constraintEqualToAnchor:v19 constant:0.0];

  *(v3 + 56) = v20;
  v21 = OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___leftValueLabel;
  v22 = [*&v2[OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___leftValueLabel] leftAnchor];
  v23 = [*&v2[v11] leftAnchor];
  v24 = [v22 &selRef:v23 initWithProfileIdentifier:? + 5];

  *(v3 + 64) = v24;
  v146 = v21;
  v25 = [*&v2[v21] rightAnchor];
  v26 = [*&v2[v11] rightAnchor];
  v27 = [v25 &selRef:v26 initWithProfileIdentifier:? + 5];

  *(v3 + 72) = v27;
  v28 = [*&v2[v21] bottomAnchor];
  v29 = sub_29D57C614();
  v30 = sub_29D5B1DAC();

  v31 = [v28 constraintEqualToAnchor:v30 constant:-6.0];
  *(v3 + 80) = v31;
  v32 = OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___leftRangeView;
  v33 = [*&v2[OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___leftRangeView] leftAnchor];
  v34 = [*&v2[v11] leftAnchor];
  v35 = [v33 &selRef:v34 initWithProfileIdentifier:? + 5];

  *(v3 + 88) = v35;
  v36 = [*&v2[v32] rightAnchor];
  v37 = [*&v2[v11] rightAnchor];
  v38 = [v36 &selRef:v37 initWithProfileIdentifier:? + 5];

  *(v3 + 96) = v38;
  v39 = [*&v2[v32] bottomAnchor];
  v40 = [*&v2[v11] bottomAnchor];
  v41 = [v39 &selRef:v40 initWithProfileIdentifier:? + 5];

  *(v3 + 104) = v41;
  v42 = sub_29D57C638();
  v43 = [v42 topAnchor];

  v44 = sub_29D57C620();
  v45 = [v44 topAnchor];

  v46 = [v43 &selRef:v45 initWithProfileIdentifier:? + 5];
  *(v3 + 112) = v46;
  v47 = OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___rightDateLabel;
  v48 = [*&v2[OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___rightDateLabel] leftAnchor];
  v49 = OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___rightGuide;
  v50 = [*&v2[OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___rightGuide] leftAnchor];
  v51 = [v48 &selRef:v50 initWithProfileIdentifier:? + 5];

  *(v3 + 120) = v51;
  v145 = v47;
  v52 = [*&v2[v47] rightAnchor];
  v53 = [*&v2[v49] rightAnchor];
  v54 = [v52 &selRef:v53 initWithProfileIdentifier:? + 5];

  *(v3 + 128) = v54;
  v55 = sub_29D57C62C();
  v56 = [v55 topAnchor];

  v57 = [*&v2[v47] bottomAnchor];
  v58 = [v56 constraintEqualToAnchor:v57 constant:0.0];

  *(v3 + 136) = v58;
  v59 = OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___rightValueLabel;
  v60 = [*&v2[OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___rightValueLabel] rightAnchor];
  v61 = [*&v2[v49] rightAnchor];
  v62 = [v60 &selRef:v61 initWithProfileIdentifier:? + 5];

  *(v3 + 144) = v62;
  v144 = v59;
  v63 = [*&v2[v59] leftAnchor];
  v64 = [*&v2[v49] leftAnchor];
  v65 = [v63 &selRef:v64 initWithProfileIdentifier:? + 5];

  *(v3 + 152) = v65;
  v66 = [*&v2[v59] bottomAnchor];
  v67 = sub_29D57C704();
  v68 = sub_29D5B1DAC();

  v69 = [v66 constraintEqualToAnchor:v68 constant:-6.0];
  *(v3 + 160) = v69;
  v70 = OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___rightRangeView;
  v71 = [*&v2[OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___rightRangeView] leftAnchor];
  v72 = [*&v2[v49] leftAnchor];
  v73 = [v71 &selRef:v72 initWithProfileIdentifier:? + 5];

  *(v3 + 168) = v73;
  v74 = [*&v2[v70] rightAnchor];
  v75 = [*&v2[v49] rightAnchor];
  v76 = [v74 &selRef:v75 initWithProfileIdentifier:? + 5];

  *(v3 + 176) = v76;
  v77 = [*&v2[v70] bottomAnchor];
  v78 = [*&v2[v49] bottomAnchor];
  v79 = [v77 &selRef:v78 initWithProfileIdentifier:? + 5];

  *(v3 + 184) = v79;
  v80 = sub_29D57C840();
  v81 = [v80 leftAnchor];

  v82 = [v2 leftAnchor];
  v83 = [v81 &selRef:v82 initWithProfileIdentifier:? + 5];

  *(v3 + 192) = v83;
  v84 = OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___containerLayoutGuide;
  v85 = [*&v2[OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___containerLayoutGuide] topAnchor];
  v86 = [v2 topAnchor];
  v87 = [v85 &selRef:v86 initWithProfileIdentifier:? + 5];

  *(v3 + 200) = v87;
  v88 = [*&v2[v84] rightAnchor];
  v89 = [v2 rightAnchor];
  v90 = [v88 &selRef:v89 initWithProfileIdentifier:? + 5];

  *(v3 + 208) = v90;
  v91 = [*&v2[v84] bottomAnchor];
  v92 = [v2 bottomAnchor];
  v93 = [v91 &selRef:v92 initWithProfileIdentifier:? + 5];

  *(v3 + 216) = v93;
  v94 = [*&v2[v11] topAnchor];
  v95 = [*&v2[v84] topAnchor];
  v96 = [v94 &selRef:v95 initWithProfileIdentifier:? + 5];

  LODWORD(v97) = 1148829696;
  [v96 setPriority_];
  *(v3 + 224) = v96;
  v98 = [*&v2[v11] leadingAnchor];
  v99 = [*&v2[v84] leadingAnchor];
  v100 = [v98 &selRef:v99 initWithProfileIdentifier:? + 5];

  *(v3 + 232) = v100;
  v101 = v2;
  v102 = sub_29D57CA38();
  v103 = [v102 bottomAnchor];

  v104 = [*&v101[v84] bottomAnchor];
  v105 = [v103 constraintLessThanOrEqualToAnchor_];

  *(v3 + 240) = v105;
  sub_29D48F51C(0, &qword_2A17A3F80, 0x29EDBA008);
  v106 = sub_29D5B401C();

  [v148 activateConstraints_];

  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D5B8F20;
  v108 = *&v101[v146];
  *(inited + 32) = v108;
  v109 = *&v101[v147];
  *(inited + 40) = v109;
  v110 = *&v101[v144];
  *(inited + 48) = v110;
  v111 = *&v101[v145];
  *(inited + 56) = v111;
  v112 = inited & 0xC000000000000001;
  v113 = v108;
  v114 = v109;
  v115 = v110;
  v116 = v111;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_15;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_14;
  }

  for (i = v113; ; i = MEMORY[0x29ED5EF30](0, inited))
  {
    v119 = i;
    LODWORD(v118) = 1148846080;
    [i setContentCompressionResistancePriority:1 forAxis:v118];
    LODWORD(v120) = 1148846080;
    [v119 setContentHuggingPriority:1 forAxis:v120];

    if (v112)
    {
      v121 = MEMORY[0x29ED5EF30](1, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_14;
      }

      v121 = *(inited + 40);
    }

    v123 = v121;
    LODWORD(v122) = 1148846080;
    [v121 setContentCompressionResistancePriority:1 forAxis:v122];
    LODWORD(v124) = 1148846080;
    [v123 setContentHuggingPriority:1 forAxis:v124];

    if (v112)
    {
      v125 = MEMORY[0x29ED5EF30](2, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
      {
        goto LABEL_14;
      }

      v125 = *(inited + 48);
    }

    v127 = v125;
    LODWORD(v126) = 1148846080;
    [v125 setContentCompressionResistancePriority:1 forAxis:v126];
    LODWORD(v128) = 1148846080;
    [v127 setContentHuggingPriority:1 forAxis:v128];

    if (v112)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4uLL)
    {
      v129 = *(inited + 56);
      goto LABEL_13;
    }

LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

  v129 = MEMORY[0x29ED5EF30](3, inited);
LABEL_13:
  v131 = v129;
  LODWORD(v130) = 1148846080;
  [v129 setContentCompressionResistancePriority:1 forAxis:v130];
  LODWORD(v132) = 1148846080;
  [v131 setContentHuggingPriority:1 forAxis:v132];

  swift_setDeallocating();
  swift_arrayDestroy();
  v133 = OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___deltaImageView;
  v134 = *&v101[OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___deltaImageView];
  LODWORD(v135) = 1148846080;
  [v134 setContentCompressionResistancePriority:1 forAxis:v135];
  LODWORD(v136) = 1148846080;
  [v134 setContentHuggingPriority:1 forAxis:v136];

  v137 = *&v101[v133];
  LODWORD(v138) = 1148846080;
  [v137 setContentCompressionResistancePriority:0 forAxis:v138];
  LODWORD(v139) = 1148846080;
  [v137 setContentHuggingPriority:0 forAxis:v139];

  v140 = sub_29D57E778(a1 & 1);
  v141 = sub_29D5B401C();
  [v148 activateConstraints_];

  return v140;
}

uint64_t sub_29D57E778(char a1)
{
  sub_29D48F45C(0, &qword_2A1A19420, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  if ((a1 & 1) == 0)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_29D5BAE60;
    v81 = sub_29D57C5F0();
    v82 = [v81 trailingAnchor];

    v83 = sub_29D57CA38();
    v84 = [v83 leadingAnchor];

    v85 = [v82 constraintLessThanOrEqualToAnchor:v84 constant:-12.0];
    *(v3 + 32) = v85;
    v86 = OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___deltaImageView;
    v87 = [*&v1[OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___deltaImageView] centerYAnchor];
    v88 = OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___leftGuide;
    v89 = [*&v1[OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___leftGuide] centerYAnchor];
    v90 = [v87 constraintEqualToAnchor_];

    *(v3 + 40) = v90;
    v91 = [*&v1[v86] &selRef_imageNamed_inBundle_compatibleWithTraitCollection_ + 4];
    v92 = sub_29D57C840();
    v93 = [v92 &selRef_imageNamed_inBundle_compatibleWithTraitCollection_ + 4];

    v94 = [v91 constraintEqualToAnchor_];
    *(v3 + 48) = v94;
    v95 = sub_29D57C62C();
    v96 = [v95 leftAnchor];

    v97 = [*&v1[v88] leftAnchor];
    v98 = [v96 constraintEqualToAnchor_];

    *(v3 + 56) = v98;
    v99 = sub_29D57C620();
    v100 = [v99 topAnchor];

    v101 = [*&v1[v88] bottomAnchor];
    v102 = [v100 constraintEqualToAnchor:v101 constant:12.0];

    LODWORD(v103) = 1148829696;
    [v102 setPriority_];
    *(v3 + 64) = v102;
    v64 = OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___rightGuide;
    v104 = [*&v1[OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___rightGuide] leadingAnchor];
    v105 = OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___containerLayoutGuide;
    v106 = [*&v1[OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___containerLayoutGuide] leadingAnchor];
    v107 = [v104 constraintEqualToAnchor_];

    *(v3 + 72) = v107;
    v108 = [*&v1[v64] trailingAnchor];
    v109 = [*&v1[v88] trailingAnchor];
    v110 = [v108 constraintEqualToAnchor_];

    *(v3 + 80) = v110;
    v111 = [*&v1[v64] bottomAnchor];
    v112 = [*&v1[v105] bottomAnchor];
    v113 = [v111 constraintEqualToAnchor_];

    LODWORD(v114) = 1148829696;
    [v113 setPriority_];
    *(v3 + 88) = v113;
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_29D5B8F20;
    *(inited + 32) = sub_29D57C5FC();
    v61 = inited + 32;
    *(inited + 40) = sub_29D57C608();
    v115 = *&v1[OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___rightValueLabel];
    *(inited + 48) = v115;
    v116 = v115;
    *(inited + 56) = sub_29D57C638();
    v117 = inited & 0xC000000000000001;
    if ((inited & 0xC000000000000001) != 0)
    {
      v1 = MEMORY[0x29ED5EF30](0, inited);
    }

    else
    {
      if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_35;
      }

      v1 = *v61;
    }

    [v1 setTextAlignment_];

    if (v117)
    {
      v118 = MEMORY[0x29ED5EF30](1, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_35;
      }

      v118 = *(inited + 40);
    }

    v1 = v118;
    [v118 setTextAlignment_];

    if (v117)
    {
      v119 = MEMORY[0x29ED5EF30](2, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
      {
        goto LABEL_35;
      }

      v119 = *(inited + 48);
    }

    v1 = v119;
    [v119 setTextAlignment_];

    if (v117)
    {
      v120 = MEMORY[0x29ED5EF30](3, inited);
      goto LABEL_33;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4uLL)
    {
      v120 = *(inited + 56);
LABEL_33:
      v79 = v120;
      [v120 setTextAlignment_];
      goto LABEL_34;
    }

LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_29D5BAC90;
  v4 = sub_29D57C5F0();
  v5 = [v4 bottomAnchor];

  v6 = sub_29D57C840();
  v7 = [v6 &selRef_latestSupportedVersion + 5];

  v8 = [v5 constraintEqualToAnchor_];
  LODWORD(v9) = 1148829696;
  [v8 setPriority_];
  *(v3 + 32) = v8;
  v10 = OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___leftGuide;
  v11 = [*&v1[OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___leftGuide] trailingAnchor];
  v12 = sub_29D57CA38();
  v13 = [v12 leadingAnchor];

  v14 = [v11 constraintEqualToAnchor:v13 constant:-12.0];
  *(v3 + 40) = v14;
  v15 = OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___deltaImageView;
  v123 = OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___deltaImageView;
  v16 = [*&v1[OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___deltaImageView] topAnchor];
  v17 = OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___containerLayoutGuide;
  v18 = [*&v1[OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___containerLayoutGuide] topAnchor];
  v19 = [v16 constraintGreaterThanOrEqualToAnchor_];

  *(v3 + 48) = v19;
  v20 = sub_29D57C620();
  v21 = [v20 topAnchor];

  v22 = [*&v1[v17] topAnchor];
  v23 = [v21 constraintEqualToAnchor_];

  LODWORD(v24) = 1148829696;
  [v23 setPriority_];
  *(v3 + 56) = v23;
  v25 = OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___rightGuide;
  v26 = [*&v1[OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___rightGuide] leadingAnchor];
  v27 = [*&v1[v15] trailingAnchor];
  v28 = [v26 constraintEqualToAnchor:v27 constant:12.0];

  *(v3 + 64) = v28;
  v29 = [*&v1[v25] trailingAnchor];
  v30 = [*&v1[v17] trailingAnchor];
  v31 = [v29 constraintEqualToAnchor_];

  *(v3 + 72) = v31;
  v32 = [*&v1[v25] bottomAnchor];
  v33 = [*&v1[v17] bottomAnchor];
  v34 = [v32 constraintEqualToAnchor_];

  LODWORD(v35) = 1148829696;
  [v34 setPriority_];
  *(v3 + 80) = v34;
  v36 = [*&v1[v10] centerYAnchor];
  v37 = [*&v1[v25] centerYAnchor];
  v38 = [v36 constraintEqualToAnchor_];

  *(v3 + 88) = v38;
  v39 = [*&v1[v10] centerYAnchor];
  v40 = [*&v1[v17] centerYAnchor];
  v41 = [v39 constraintEqualToAnchor_];

  *(v3 + 96) = v41;
  v42 = [*&v1[v123] centerYAnchor];
  v43 = [*&v1[v17] centerYAnchor];
  v44 = [v42 constraintEqualToAnchor_];

  *(v3 + 104) = v44;
  v45 = [*&v1[v10] widthAnchor];
  v46 = [*&v1[v25] widthAnchor];
  v47 = [v45 constraintEqualToAnchor_];

  *(v3 + 112) = v47;
  v48 = [*&v1[v10] heightAnchor];
  v49 = [*&v1[v25] heightAnchor];
  v50 = [v48 constraintEqualToAnchor_];

  *(v3 + 120) = v50;
  v51 = sub_29D57C608();
  v52 = [v51 firstBaselineAnchor];

  v53 = sub_29D57C638();
  v54 = [v53 firstBaselineAnchor];

  v55 = [v52 constraintEqualToAnchor_];
  *(v3 + 128) = v55;
  v56 = sub_29D57C5FC();
  v57 = [v56 firstBaselineAnchor];

  v58 = sub_29D57C62C();
  v59 = [v58 firstBaselineAnchor];

  v60 = [v57 constraintEqualToAnchor_];
  *(v3 + 136) = v60;
  v61 = swift_initStackObject();
  v122 = xmmword_29D5B6340;
  *(v61 + 16) = xmmword_29D5B6340;
  v62 = *&v1[OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___leftValueLabel];
  *(v61 + 32) = v62;
  v63 = *&v1[OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___leftDateLabel];
  *(v61 + 40) = v63;
  v64 = v61 & 0xC000000000000001;
  inited = v61 & 0xFFFFFFFFFFFFFF8;
  v66 = v62;
  v67 = v63;
  if ((v61 & 0xC000000000000001) != 0)
  {
    goto LABEL_38;
  }

  if (!*((v61 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_36;
  }

  for (i = v66; ; i = MEMORY[0x29ED5EF30](0, v61))
  {
    [i setTextAlignment_];

    if (v64)
    {
      v69 = MEMORY[0x29ED5EF30](1, v61);
    }

    else
    {
      if (*(inited + 16) < 2uLL)
      {
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      v69 = *(v61 + 40);
    }

    v70 = v69;
    [v69 setTextAlignment_];

    swift_setDeallocating();
    swift_arrayDestroy();
    inited = swift_initStackObject();
    *(inited + 16) = v122;
    v71 = *&v1[OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___rightValueLabel];
    *(inited + 32) = v71;
    v61 = inited + 32;
    v72 = *&v1[OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___rightDateLabel];
    *(inited + 40) = v72;
    v64 = inited & 0xC000000000000001;
    v73 = v71;
    v74 = v72;
    if ((inited & 0xC000000000000001) != 0)
    {
      v75 = MEMORY[0x29ED5EF30](0, inited);
    }

    else
    {
      if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_37;
      }

      v75 = v73;
    }

    v76 = v75;
    v77 = (sub_29D5B45AC() & 1) != 0 ? 0 : 2;
    [v76 setTextAlignment_];

    if (v64)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v78 = *(inited + 40);
      goto LABEL_17;
    }

LABEL_37:
    __break(1u);
LABEL_38:
    ;
  }

  v78 = MEMORY[0x29ED5EF30](1, inited);
LABEL_17:
  v79 = v78;
  if (sub_29D5B45AC())
  {
    v80 = 0;
  }

  else
  {
    v80 = 2;
  }

  [v79 setTextAlignment_];
LABEL_34:

  swift_setDeallocating();
  swift_arrayDestroy();
  return v3;
}

id sub_29D57F4D4()
{
  sub_29D48F45C(0, &qword_2A1A19420, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D5BAE70;
  *(inited + 32) = sub_29D57C608();
  *(inited + 40) = sub_29D57C5FC();
  *(inited + 48) = sub_29D57C614();
  *(inited + 56) = sub_29D57C638();
  *(inited + 64) = sub_29D57C62C();
  *(inited + 72) = sub_29D57C704();
  v2 = inited & 0xC000000000000001;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_23;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_22;
  }

  for (i = *(inited + 32); ; i = MEMORY[0x29ED5EF30](0, inited))
  {
    v4 = i;
    [v0 addSubview_];

    if (v2)
    {
      v5 = MEMORY[0x29ED5EF30](1, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_22;
      }

      v5 = *(inited + 40);
    }

    v6 = v5;
    [v0 addSubview_];

    if (v2)
    {
      v7 = MEMORY[0x29ED5EF30](2, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
      {
        goto LABEL_22;
      }

      v7 = *(inited + 48);
    }

    v8 = v7;
    [v0 addSubview_];

    if (v2)
    {
      v9 = MEMORY[0x29ED5EF30](3, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 4uLL)
      {
        goto LABEL_22;
      }

      v9 = *(inited + 56);
    }

    v10 = v9;
    [v0 addSubview_];

    if (v2)
    {
      v11 = MEMORY[0x29ED5EF30](4, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 5uLL)
      {
        goto LABEL_22;
      }

      v11 = *(inited + 64);
    }

    v12 = v11;
    [v0 addSubview_];

    if (v2)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 6uLL)
    {
      v13 = *(inited + 72);
      goto LABEL_19;
    }

LABEL_22:
    __break(1u);
LABEL_23:
    ;
  }

  v13 = MEMORY[0x29ED5EF30](5, inited);
LABEL_19:
  v14 = v13;
  [v0 addSubview_];

  swift_setDeallocating();
  swift_arrayDestroy();
  v15 = sub_29D57CA38();
  [v0 addSubview_];

  v16 = sub_29D57C840();
  [v0 addLayoutGuide_];

  v17 = sub_29D57C5F0();
  [v0 addLayoutGuide_];

  v18 = sub_29D57C620();
  [v0 addLayoutGuide_];

  v19 = qword_2A17A3A00;
  v20 = *&v0[OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___leftDateLabel];
  if (v19 != -1)
  {
    swift_once();
  }

  v21 = qword_2A17ABF98;
  [v20 setTextColor_];

  return [*&v0[OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___rightDateLabel] setTextColor_];
}

id sub_29D57F820(uint64_t a1)
{
  v3 = [objc_opt_self() defaultMetrics];
  v4 = sub_29D57C9A8();
  v5 = [v1 traitCollection];
  v6 = [v3 scaledFontForFont:v4 compatibleWithTraitCollection:v5];

  v7 = *(a1 + *(type metadata accessor for ConceptDeltaHighlightFeedItemData(0) + 32));
  if (v7 == -1 || !v7 || v7 == 1)
  {
    v8 = [objc_opt_self() configurationWithFont_];
    v9 = sub_29D5B3E1C();

    v10 = [objc_opt_self() systemImageNamed:v9 withConfiguration:v8];

    if (v10)
    {

      return v10;
    }

    __break(1u);
  }

  type metadata accessor for ComparisonResult(0);
  result = sub_29D5B4C9C();
  __break(1u);
  return result;
}

id sub_29D57FA08()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConceptDeltaHighlightFeedItemView(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ConceptDeltaHighlightFeedItemView(uint64_t a1)
{
  result = qword_2A17A4FF0;
  if (!qword_2A17A4FF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D57FBA0(uint64_t a1)
{
  result = type metadata accessor for ConceptDeltaHighlightFeedItemData(319);
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

unint64_t sub_29D57FC78()
{
  result = qword_2A17A5000;
  if (!qword_2A17A5000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A5000);
  }

  return result;
}

void sub_29D57FCCC(uint64_t a1)
{
  if (!qword_2A17A48C8)
  {
    sub_29D48F51C(255, &qword_2A17A48B8, 0x29EDBAC58);
    v1 = sub_29D5B3D0C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17A48C8);
    }
  }
}

uint64_t sub_29D57FD34(uint64_t a1)
{
  sub_29D48F45C(0, &qword_2A17A5008, &type metadata for ConceptDeltaHighlightRecordViewData, MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_29D57FDB4()
{
  result = qword_2A17A5010;
  if (!qword_2A17A5010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A5010);
  }

  return result;
}

void sub_29D57FE08()
{
  *(v0 + OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___leftGuide) = 0;
  *(v0 + OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___leftValueLabel) = 0;
  *(v0 + OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___leftDateLabel) = 0;
  *(v0 + OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___leftRangeView) = 0;
  *(v0 + OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___rightGuide) = 0;
  *(v0 + OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___rightValueLabel) = 0;
  *(v0 + OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___rightDateLabel) = 0;
  *(v0 + OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___rightRangeView) = 0;
  *(v0 + OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___containerLayoutGuide) = 0;
  *(v0 + OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___currentLayout) = 2;
  *(v0 + OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___currentLayoutConstraints) = 0;
  *(v0 + OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___deltaImageFont) = 0;
  *(v0 + OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___deltaImageView) = 0;
  sub_29D5B4A2C();
  __break(1u);
}

uint64_t type metadata accessor for RecordKindFeedItemData(uint64_t a1)
{
  result = qword_2A1A19C40;
  if (!qword_2A1A19C40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D57FF78(uint64_t a1)
{
  sub_29D5B1D6C();
  if (v1 <= 0x3F)
  {
    sub_29D4B4C4C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_29D580014(void *a1)
{
  sub_29D580CC0(0, &qword_2A17A5040, MEMORY[0x29EDC9E88]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = &v10[-v7];
  sub_29D499EC0(a1, a1[3]);
  sub_29D580C6C();
  sub_29D5B4DCC();
  v10[15] = 0;
  sub_29D5B1D6C();
  sub_29D5811F8(&qword_2A17A4120, MEMORY[0x29EDC4098], MEMORY[0x29EDC40A0]);
  sub_29D5B4C0C();
  if (!v1)
  {
    type metadata accessor for RecordKindFeedItemData(0);
    v10[14] = 1;
    sub_29D5B4C1C();
    v10[13] = 2;
    sub_29D5B4BCC();
    v10[12] = 3;
    sub_29D5B0E6C();
    sub_29D5811F8(&qword_2A1A193D8, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BD0]);
    sub_29D5B4BBC();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_29D580284(uint64_t a1)
{
  v2 = sub_29D5B0E6C();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4B4C4C(0);
  MEMORY[0x2A1C7C4A8](v7 - 8, v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5B1D6C();
  sub_29D5811F8(&qword_2A17A4128, MEMORY[0x29EDC4098], MEMORY[0x29EDC40A8]);
  sub_29D5B3D9C();
  v11 = type metadata accessor for RecordKindFeedItemData(0);
  MEMORY[0x29ED5F360](*(v1 + *(v11 + 20)));
  sub_29D5B3EFC();
  sub_29D580D24(v1 + *(v11 + 28), v10, sub_29D4B4C4C);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    return sub_29D5B4D6C();
  }

  (*(v3 + 32))(v6, v10, v2);
  sub_29D5B4D6C();
  sub_29D5811F8(&qword_2A17A4068, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BD8]);
  sub_29D5B3D9C();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_29D5804E8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  sub_29D4B4C4C(0);
  MEMORY[0x2A1C7C4A8](v3 - 8, v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29D5B1D6C();
  v29 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7, v8);
  v30 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D580CC0(0, &qword_2A17A5030, MEMORY[0x29EDC9E80]);
  v33 = v10;
  v31 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10, v11);
  v13 = &v27 - v12;
  v14 = type metadata accessor for RecordKindFeedItemData(0);
  MEMORY[0x2A1C7C4A8](v14, v15);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D499EC0(a1, a1[3]);
  sub_29D580C6C();
  v32 = v13;
  v18 = v34;
  sub_29D5B4DBC();
  if (v18)
  {
    return sub_29D48F668(a1);
  }

  v34 = v6;
  v19 = v17;
  v20 = v29;
  v38 = 0;
  sub_29D5811F8(&qword_2A17A4110, MEMORY[0x29EDC4098], MEMORY[0x29EDC40B8]);
  v21 = v30;
  sub_29D5B4B6C();
  (*(v20 + 32))(v19, v21, v7);
  v37 = 1;
  *(v19 + v14[5]) = sub_29D5B4B7C();
  v36 = 2;
  v22 = sub_29D5B4B2C();
  v23 = (v19 + v14[6]);
  *v23 = v22;
  v23[1] = v24;
  sub_29D5B0E6C();
  v35 = 3;
  sub_29D5811F8(&qword_2A1A193D0, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BF0]);
  v25 = v34;
  sub_29D5B4B1C();
  (*(v31 + 8))(v32, v33);
  sub_29D4D1F64(v25, v19 + v14[7]);
  sub_29D580D24(v19, v28, type metadata accessor for RecordKindFeedItemData);
  sub_29D48F668(a1);
  return sub_29D581198(v19, type metadata accessor for RecordKindFeedItemData);
}

uint64_t sub_29D580994()
{
  v1 = 0x79726F6765746163;
  v2 = 0x656C746974;
  if (*v0 != 2)
  {
    v2 = 0x66676E696E61656DLL;
  }

  if (*v0)
  {
    v1 = 0x49747065636E6F63;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_29D580A24@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_29D581358(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_29D580A4C(uint64_t a1)
{
  v2 = sub_29D580C6C();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D580A88(uint64_t a1)
{
  v2 = sub_29D580C6C();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D580AF4()
{
  sub_29D5B4D4C();
  sub_29D580284(v1);
  return sub_29D5B4D9C();
}

uint64_t sub_29D580B38(uint64_t a1)
{
  sub_29D5B4D4C();
  sub_29D580284(v2);
  return sub_29D5B4D9C();
}

uint64_t sub_29D580BC0(void *a1)
{
  a1[1] = sub_29D5811F8(&qword_2A17A4638, type metadata accessor for RecordKindFeedItemData, &unk_29D5BB018);
  a1[2] = sub_29D5811F8(&qword_2A17A4380, type metadata accessor for RecordKindFeedItemData, &unk_29D5BAFF0);
  result = sub_29D5811F8(&qword_2A17A5028, type metadata accessor for RecordKindFeedItemData, &unk_29D5BAFB0);
  a1[3] = result;
  return result;
}

unint64_t sub_29D580C6C()
{
  result = qword_2A17A5038;
  if (!qword_2A17A5038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A5038);
  }

  return result;
}

void sub_29D580CC0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_29D580C6C();
    v7 = a3(a1, &type metadata for RecordKindFeedItemData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_29D580D24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

BOOL sub_29D580D8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_29D5B0E6C();
  v32 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v5);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4B4C4C(0);
  MEMORY[0x2A1C7C4A8](v8 - 8, v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4D2828(0);
  v13 = v12;
  MEMORY[0x2A1C7C4A8](v12, v14);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5B1D6C();
  sub_29D5811F8(&qword_2A17A4130, MEMORY[0x29EDC4098], MEMORY[0x29EDC40B0]);
  sub_29D5B3FFC();
  sub_29D5B3FFC();
  if (v34 != v33)
  {
    return 0;
  }

  v17 = type metadata accessor for RecordKindFeedItemData(0);
  if (*(a1 + v17[5]) != *(a2 + v17[5]))
  {
    return 0;
  }

  v18 = v17[6];
  v20 = *(a1 + v18);
  v19 = *(a1 + v18 + 8);
  v21 = (a2 + v18);
  if (v20 != *v21 || v19 != v21[1])
  {
    v22 = v17;
    v23 = sub_29D5B4C7C();
    v17 = v22;
    if ((v23 & 1) == 0)
    {
      return 0;
    }
  }

  v24 = v17[7];
  v25 = *(v13 + 48);
  sub_29D580D24(a1 + v24, v16, sub_29D4B4C4C);
  sub_29D580D24(a2 + v24, &v16[v25], sub_29D4B4C4C);
  v26 = v32;
  v27 = *(v32 + 48);
  if (v27(v16, 1, v4) == 1)
  {
    if (v27(&v16[v25], 1, v4) == 1)
    {
      sub_29D581198(v16, sub_29D4B4C4C);
      return 1;
    }

    goto LABEL_11;
  }

  sub_29D580D24(v16, v11, sub_29D4B4C4C);
  if (v27(&v16[v25], 1, v4) == 1)
  {
    (*(v26 + 8))(v11, v4);
LABEL_11:
    sub_29D581198(v16, sub_29D4D2828);
    return 0;
  }

  (*(v26 + 32))(v7, &v16[v25], v4);
  sub_29D5811F8(&qword_2A17A4070, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BE8]);
  v29 = sub_29D5B3E0C();
  v30 = *(v26 + 8);
  v30(v7, v4);
  v30(v11, v4);
  sub_29D581198(v16, sub_29D4B4C4C);
  return (v29 & 1) != 0;
}

uint64_t sub_29D581198(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29D5811F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_29D581254()
{
  result = qword_2A17A5048;
  if (!qword_2A17A5048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A5048);
  }

  return result;
}

unint64_t sub_29D5812AC()
{
  result = qword_2A17A5050;
  if (!qword_2A17A5050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A5050);
  }

  return result;
}

unint64_t sub_29D581304()
{
  result = qword_2A17A5058;
  if (!qword_2A17A5058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A5058);
  }

  return result;
}

uint64_t sub_29D581358(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79726F6765746163 && a2 == 0xEC000000646E694BLL;
  if (v4 || (sub_29D5B4C7C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x49747065636E6F63 && a2 == 0xE900000000000064 || (sub_29D5B4C7C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_29D5B4C7C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x66676E696E61656DLL && a2 == 0xEE00657461446C75)
  {

    return 3;
  }

  else
  {
    v6 = sub_29D5B4C7C();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_29D5814CC(uint64_t a1)
{
  v128 = *v1;
  v3 = type metadata accessor for HealthRecordsGeneratorContext(0);
  v126 = *(v3 - 8);
  v125 = *(v126 + 64);
  MEMORY[0x2A1C7C4A8](v3 - 8, v4);
  v123 = &v99 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D582FFC(0, &qword_2A1A19628, MEMORY[0x29EDCA298], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v6 - 8, v7);
  v115 = &v99 - v8;
  v9 = sub_29D5B43DC();
  v119 = *(v9 - 8);
  v120 = v9;
  MEMORY[0x2A1C7C4A8](v9, v10);
  v113 = &v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D582B48(0);
  v116 = v12;
  v117 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12, v13);
  v112 = &v99 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D582C7C(0);
  v16 = *(v15 - 8);
  v121 = v15;
  v122 = v16;
  MEMORY[0x2A1C7C4A8](v15, v17);
  v114 = &v99 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D582D48(0);
  v127 = v19;
  v129 = *(v19 - 8);
  MEMORY[0x2A1C7C4A8](v19, v20);
  v118 = &v99 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D582E04(0);
  v23 = *(v22 - 8);
  v130 = v22;
  v131 = v23;
  MEMORY[0x2A1C7C4A8](v22, v24);
  v124 = &v99 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_29D5B446C();
  v108 = *(v106 - 8);
  MEMORY[0x2A1C7C4A8](v106, v26);
  v104 = &v99 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D499DC0(0);
  v107 = v28;
  v109 = *(v28 - 8);
  MEMORY[0x2A1C7C4A8](v28, v29);
  v105 = &v99 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D582F60(0);
  v103 = v31;
  v110 = *(v31 - 8);
  MEMORY[0x2A1C7C4A8](v31, v32);
  v102 = &v99 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_29D5B13CC();
  v34 = *(v101 - 8);
  MEMORY[0x2A1C7C4A8](v101, v35);
  v37 = &v99 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_29D5B13EC();
  v39 = *(v38 - 8);
  MEMORY[0x2A1C7C4A8](v38, v40);
  v42 = &v99 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = a1;
  sub_29D499E5C(a1, v1 + OBJC_IVAR____TtC13HealthRecords27NewRecordsGeneratorPipeline_context);
  sub_29D5B143C();
  sub_29D582FFC(0, &qword_2A1A1A3A0, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v43 = sub_29D5B104C();
  v44 = *(v43 - 8);
  v45 = (*(v44 + 80) + 32) & ~*(v44 + 80);
  v46 = swift_allocObject();
  v111 = xmmword_29D5B62A0;
  *(v46 + 16) = xmmword_29D5B62A0;
  (*(v44 + 104))(v46 + v45, *MEMORY[0x29EDC3758], v43);
  (*(v34 + 104))(v37, *MEMORY[0x29EDC3898], v101);
  sub_29D5B13DC();
  v47 = v99;
  (*(v39 + 32))(v99 + OBJC_IVAR____TtC13HealthRecords27NewRecordsGeneratorPipeline_domain, v42, v38);
  v48 = v100;
  sub_29D5B140C();
  v49 = v135;
  v50 = v136;
  sub_29D499EC0(&v134, v135);
  v51 = sub_29D4C9C8C(v49, v50);
  v52 = [objc_opt_self() medicalRecordTypes];
  sub_29D48F51C(0, &qword_2A1A19660, 0x29EDBAD78);
  v53 = sub_29D5B402C();

  type metadata accessor for NewRecordsUpdateObserver();
  swift_allocObject();
  v54 = sub_29D542E5C(v53, v51);
  sub_29D48F668(&v134);
  v55 = v47;
  *(v47 + OBJC_IVAR____TtC13HealthRecords27NewRecordsGeneratorPipeline_newRecordsUpdateObserver) = v54;
  v134 = v54[4];
  sub_29D54320C(0);
  sub_29D582C34(&qword_2A1A16640, sub_29D54320C, MEMORY[0x29EDB8A70]);

  v56 = v102;
  sub_29D5B3B7C();

  v57 = MEMORY[0x29EDB8908];
  sub_29D582C34(&qword_2A1A16EE0, sub_29D582F60, MEMORY[0x29EDB8908]);
  v58 = v103;
  v59 = sub_29D5B3B1C();
  (v110)[1](v56, v58);
  *(v55 + OBJC_IVAR____TtC13HealthRecords27NewRecordsGeneratorPipeline_newRecordsUpdatePublisher) = v59;
  v60 = v55;
  sub_29D5B140C();
  sub_29D499EC0(&v134, v135);
  v61 = sub_29D5B136C();
  sub_29D48F668(&v134);
  v62 = [objc_opt_self() defaultCenter];
  v63 = v61;
  v110 = v63;
  v64 = v104;
  sub_29D5B447C();

  sub_29D582C34(&qword_2A1A19608, MEMORY[0x29EDB9DF8], MEMORY[0x29EDB9DF0]);
  v65 = v105;
  v66 = v106;
  sub_29D5B3B7C();
  (*(v108 + 8))(v64, v66);
  sub_29D582C34(&qword_2A1A197B8, sub_29D499DC0, v57);
  v67 = v107;
  v68 = sub_29D5B3B1C();
  (*(v109 + 8))(v65, v67);
  v69 = v60;
  *(v60 + OBJC_IVAR____TtC13HealthRecords27NewRecordsGeneratorPipeline_indexerPublisher) = v68;
  v70 = v48;
  v71 = sub_29D5B146C();
  sub_29D5B1CBC();
  v72 = sub_29D5B1C8C();
  sub_29D5B140C();
  sub_29D499EC0(&v134, v135);
  v73 = sub_29D5B136C();
  v74 = [v73 profileIdentifier];

  sub_29D5B1C3C();
  sub_29D48F668(&v134);
  v75 = sub_29D5B363C();

  v133 = *(v60 + OBJC_IVAR____TtC13HealthRecords27NewRecordsGeneratorPipeline_newRecordsUpdatePublisher);
  v134 = v75;
  v132 = *(v60 + OBJC_IVAR____TtC13HealthRecords27NewRecordsGeneratorPipeline_indexerPublisher);
  sub_29D4F7770(0);
  sub_29D499998();
  v76 = MEMORY[0x29EDB8A00];
  sub_29D582C34(&qword_2A1A16800, sub_29D4F7770, MEMORY[0x29EDB8A00]);
  sub_29D582C34(&qword_2A1A19778, sub_29D499998, v76);
  v77 = v112;
  sub_29D5B3B5C();

  v78 = v113;
  sub_29D5B43CC();
  v134 = v71;
  v79 = sub_29D5B43BC();
  v80 = v115;
  (*(*(v79 - 8) + 56))(v115, 1, 1, v79);
  sub_29D48F51C(0, &qword_2A1A1A420, 0x29EDCA548);
  sub_29D582C34(&qword_2A1A17220, sub_29D582B48, MEMORY[0x29EDB8878]);
  sub_29D5127AC();
  v81 = v114;
  v82 = v116;
  sub_29D5B3C2C();
  sub_29D499F04(v80);
  (*(v119 + 8))(v78, v120);
  (*(v117 + 8))(v77, v82);
  v83 = v123;
  sub_29D499E5C(v70, v123);
  v84 = (*(v126 + 80) + 16) & ~*(v126 + 80);
  v85 = (v125 + v84 + 7) & 0xFFFFFFFFFFFFFFF8;
  v86 = swift_allocObject();
  v87 = v86 + v84;
  v88 = v83;
  sub_29D499F90(v83, v87);
  *(v86 + v85) = v128;
  sub_29D4A02FC(0, &qword_2A1A19818, MEMORY[0x29EDC3C90]);
  sub_29D582C34(&qword_2A1A16950, sub_29D582C7C, MEMORY[0x29EDB89B8]);
  v89 = v118;
  v90 = v121;
  sub_29D5B3B2C();

  (*(v122 + 8))(v81, v90);
  sub_29D582EF0(0, &qword_2A1A195D8, MEMORY[0x29EDC9E90]);
  v91 = swift_allocObject();
  *(v91 + 16) = v111;
  sub_29D499E5C(v70, v88);
  v92 = type metadata accessor for NewRecordsGenerator(0);
  swift_allocObject();
  v93 = sub_29D5AB2BC(v88);
  *(v91 + 56) = v92;
  *(v91 + 64) = sub_29D582C34(qword_2A1A1A150, type metadata accessor for NewRecordsGenerator, &unk_29D5BBC24);
  *(v91 + 32) = v93;
  sub_29D582C34(&qword_2A1A17178, sub_29D582D48, MEMORY[0x29EDB88A0]);
  v94 = v124;
  v95 = v127;
  sub_29D5B3C0C();

  (*(v129 + 8))(v89, v95);
  sub_29D582C34(&qword_2A1A17128, sub_29D582E04, MEMORY[0x29EDB88B0]);
  v96 = v130;
  v97 = sub_29D5B3B1C();
  (*(v131 + 8))(v94, v96);
  *(v69 + 16) = v97;
  sub_29D542EF0();

  sub_29D49A104(v70);
  return v69;
}

uint64_t sub_29D5825C4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for HealthRecordsGeneratorContext(0);
  MEMORY[0x2A1C7C4A8](v6 - 8, v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29D5B371C();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10, v12);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5B36AC();
  v15 = sub_29D5B370C();
  v16 = sub_29D5B429C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v33 = a3;
    v18 = v17;
    v19 = swift_slowAlloc();
    v34 = v19;
    v35 = a2;
    *v18 = 136446466;
    swift_getMetatypeMetadata();
    v20 = sub_29D5B3E7C();
    v22 = sub_29D501890(v20, v21, &v34);
    v32 = v10;
    v23 = a1;
    v24 = v22;

    *(v18 + 4) = v24;
    *(v18 + 12) = 2082;
    v35 = type metadata accessor for NewRecordsGenerator(0);
    sub_29D58310C();
    v25 = sub_29D5B3E7C();
    v27 = sub_29D501890(v25, v26, &v34);
    a1 = v23;

    *(v18 + 14) = v27;
    _os_log_impl(&dword_29D48C000, v15, v16, "[%{public}s]: Emitting %{public}s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED5FB80](v19, -1, -1);
    v28 = v18;
    a3 = v33;
    MEMORY[0x29ED5FB80](v28, -1, -1);

    (*(v11 + 8))(v14, v32);
  }

  else
  {

    (*(v11 + 8))(v14, v10);
  }

  sub_29D499E5C(a1, v9);
  v29 = type metadata accessor for NewRecordsGenerator(0);
  swift_allocObject();
  v30 = sub_29D5AB2BC(v9);
  a3[3] = v29;
  result = sub_29D582C34(qword_2A1A1A150, type metadata accessor for NewRecordsGenerator, &unk_29D5BBC24);
  a3[4] = result;
  *a3 = v30;
  return result;
}

uint64_t sub_29D5828B0()
{

  v1 = OBJC_IVAR____TtC13HealthRecords27NewRecordsGeneratorPipeline_domain;
  v2 = sub_29D5B13EC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_29D49A104(v0 + OBJC_IVAR____TtC13HealthRecords27NewRecordsGeneratorPipeline_context);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for NewRecordsGeneratorPipeline(uint64_t a1)
{
  result = qword_2A1A1A238;
  if (!qword_2A1A1A238)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D5829E8(uint64_t a1)
{
  result = sub_29D5B13EC();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for HealthRecordsGeneratorContext(319);
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_29D582ACC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC13HealthRecords27NewRecordsGeneratorPipeline_domain;
  v5 = sub_29D5B13EC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

void sub_29D582B48(uint64_t a1)
{
  if (!qword_2A1A17218)
  {
    sub_29D4F7770(255);
    sub_29D499998();
    v1 = MEMORY[0x29EDB8A00];
    sub_29D582C34(&qword_2A1A16800, sub_29D4F7770, MEMORY[0x29EDB8A00]);
    sub_29D582C34(&qword_2A1A19778, sub_29D499998, v1);
    v2 = sub_29D5B37AC();
    if (!v3)
    {
      atomic_store(v2, &qword_2A1A17218);
    }
  }
}

uint64_t sub_29D582C34(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_29D582C7C(uint64_t a1)
{
  if (!qword_2A1A16948)
  {
    sub_29D582B48(255);
    sub_29D48F51C(255, &qword_2A1A1A420, 0x29EDCA548);
    sub_29D582C34(&qword_2A1A17220, sub_29D582B48, MEMORY[0x29EDB8878]);
    sub_29D5127AC();
    v1 = sub_29D5B390C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16948);
    }
  }
}

void sub_29D582D48(uint64_t a1)
{
  if (!qword_2A1A17170)
  {
    sub_29D582C7C(255);
    sub_29D4A02FC(255, &qword_2A1A19818, MEMORY[0x29EDC3C90]);
    sub_29D582C34(&qword_2A1A16950, sub_29D582C7C, MEMORY[0x29EDB89B8]);
    v1 = sub_29D5B37CC();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A17170);
    }
  }
}

void sub_29D582E04(uint64_t a1)
{
  if (!qword_2A1A17120)
  {
    sub_29D499C88(255);
    sub_29D582D48(255);
    sub_29D582C34(&qword_2A1A197A8, sub_29D499C88, MEMORY[0x29EDB89C0]);
    sub_29D582C34(&qword_2A1A17178, sub_29D582D48, MEMORY[0x29EDB88A0]);
    v1 = sub_29D5B37DC();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A17120);
    }
  }
}

void sub_29D582EF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_29D4A02FC(255, &qword_2A1A19818, MEMORY[0x29EDC3C90]);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_29D582F60(uint64_t a1)
{
  if (!qword_2A1A16ED8)
  {
    sub_29D54320C(255);
    sub_29D582C34(&qword_2A1A16640, sub_29D54320C, MEMORY[0x29EDB8A70]);
    v1 = sub_29D5B384C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16ED8);
    }
  }
}

void sub_29D582FFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D583060@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for HealthRecordsGeneratorContext(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_29D5825C4(v1 + v4, v5, a1);
}

unint64_t sub_29D58310C()
{
  result = qword_2A17A5060;
  if (!qword_2A17A5060)
  {
    type metadata accessor for NewRecordsGenerator(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A17A5060);
  }

  return result;
}

id sub_29D583154()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for SharedConceptTileViewController(0);
  objc_msgSendSuper2(&v4, sel_viewDidLoad);
  result = [v0 view];
  if (result)
  {
    v2 = result;
    [result addSubview_];

    result = [v0 view];
    if (result)
    {
      v3 = result;
      [result addSubview_];

      sub_29D583264();
      return sub_29D5836C8();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_29D58321C(void *a1)
{
  v1 = a1;
  sub_29D583154();
}

void sub_29D583264()
{
  sub_29D502718(0, &qword_2A1A19420, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_29D5BB1D0;
  v2 = *&v0[qword_2A17A5068];
  v3 = [v2 leadingAnchor];
  v4 = [v0 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_11;
  }

  v5 = v4;
  v6 = [v4 leadingAnchor];

  v7 = [v3 constraintEqualToAnchor_];
  *(v1 + 32) = v7;
  v8 = [v2 trailingAnchor];
  v9 = [v0 view];
  if (!v9)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v10 = v9;
  v11 = [v9 trailingAnchor];

  v12 = [v8 constraintEqualToAnchor_];
  *(v1 + 40) = v12;
  v13 = [v2 topAnchor];
  v14 = [v0 view];
  if (!v14)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v15 = v14;
  v16 = [v14 topAnchor];

  v17 = [v13 constraintEqualToAnchor_];
  *(v1 + 48) = v17;
  v18 = [v2 bottomAnchor];
  v19 = *&v0[qword_2A17A5070];
  v20 = [v19 topAnchor];
  v21 = [v18 constraintEqualToAnchor_];

  *(v1 + 56) = v21;
  v22 = [v19 leadingAnchor];
  v23 = [v0 view];
  if (!v23)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v24 = v23;
  v25 = [v23 leadingAnchor];

  v26 = [v22 constraintEqualToAnchor_];
  *(v1 + 64) = v26;
  v27 = [v19 trailingAnchor];
  v28 = [v0 view];
  if (!v28)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v29 = v28;
  v30 = [v28 trailingAnchor];

  v31 = [v27 constraintEqualToAnchor:v30 constant:-16.0];
  *(v1 + 72) = v31;
  v32 = [v19 bottomAnchor];
  v33 = [v0 view];
  if (!v33)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v34 = v33;
  v35 = objc_opt_self();
  v36 = [v34 bottomAnchor];

  v37 = [v32 constraintEqualToAnchor_];
  *(v1 + 80) = v37;
  sub_29D48F51C(0, &qword_2A17A3F80, 0x29EDBA008);
  v38 = sub_29D5B401C();

  [v35 activateConstraints_];
}

uint64_t sub_29D5836C8()
{
  sub_29D48F36C(0, &qword_2A17A3B88, MEMORY[0x29EDC4230]);
  MEMORY[0x2A1C7C4A8](v1 - 8, v2);
  v24 = &v23 - v3;
  v4 = sub_29D5B277C();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D48F36C(0, qword_2A1A185B8, type metadata accessor for SharedConceptFeedItemData);
  MEMORY[0x2A1C7C4A8](v9 - 8, v10);
  v12 = &v23 - v11;
  v13 = type metadata accessor for SharedConceptFeedItemData(0);
  v14 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13, v15);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *((*MEMORY[0x29EDCA1E8] & *v0) + 0x60);
  swift_beginAccess();
  sub_29D5851E4(v0 + v18, v12, qword_2A1A185B8, type metadata accessor for SharedConceptFeedItemData);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    return sub_29D5852B0(v12, qword_2A1A185B8, type metadata accessor for SharedConceptFeedItemData);
  }

  sub_29D4B45A0(v12, v17);
  sub_29D583A44(v17, v8);
  v25[3] = v4;
  v25[4] = MEMORY[0x29EDC4228];
  v20 = sub_29D4A0410(v25);
  v21 = *(v5 + 16);
  v21(v20, v8, v4);
  sub_29D5B237C();
  v22 = v24;
  v21(v24, v8, v4);
  (*(v5 + 56))(v22, 0, 1, v4);
  sub_29D5B23AC();
  (*(v5 + 8))(v8, v4);
  return sub_29D585250(v17, type metadata accessor for SharedConceptFeedItemData);
}

uint64_t sub_29D583A44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v112 = a2;
  v110 = sub_29D5B0E6C();
  v109 = *(v110 - 8);
  MEMORY[0x2A1C7C4A8](v110, v3);
  v108 = &v93 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_29D5B0C4C();
  v96 = *(v97 - 8);
  MEMORY[0x2A1C7C4A8](v97, v5);
  v95 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D48F36C(0, &qword_2A1A164E0, sub_29D506534);
  v9 = MEMORY[0x2A1C7C4A8](v7 - 8, v8);
  v101 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9, v11);
  v13 = &v93 - v12;
  v103 = type metadata accessor for SharedConceptCodedValue(0);
  v102 = *(v103 - 8);
  v15 = MEMORY[0x2A1C7C4A8](v103, v14);
  v100 = &v93 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v15, v17);
  v19 = &v93 - v18;
  v99 = sub_29D5B200C();
  v98 = *(v99 - 8);
  MEMORY[0x2A1C7C4A8](v99, v20);
  v22 = &v93 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D48F36C(0, &qword_2A1A19588, MEMORY[0x29EDB9C70]);
  MEMORY[0x2A1C7C4A8](v23 - 8, v24);
  v26 = &v93 - v25;
  v27 = sub_29D5B1BCC();
  v28 = *(v27 - 8);
  MEMORY[0x2A1C7C4A8](v27, v29);
  v31 = &v93 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for SharedConceptFeedItemData(0);
  v33 = *(v32 + 24);
  v34 = sub_29D5B1D6C();
  (*(*(v34 - 8) + 16))(v31, a1 + v33, v34);
  v35 = *MEMORY[0x29EDC3F80];
  v106 = v28;
  v36 = *(v28 + 104);
  v105 = v31;
  v107 = v27;
  v36(v31, v35, v27);
  v104 = v32;
  v37 = *(v32 + 44);
  v111 = a1;
  v38 = (a1 + v37);
  v39 = v38[1];
  v116 = *v38;
  v117 = v39;
  v40 = *(v38 + 4);
  v41 = *(v38 + 5);
  v42 = *(v38 + 8);
  v43 = *(v38 + 6);
  v44 = *(v38 + 7);
  v123 = *(v38 + 72);
  v118 = v40;
  v119 = v41;
  v120 = v43;
  v121 = v44;
  v122 = v42;
  sub_29D4C9824();
  result = sub_29D5B22FC();
  if (result)
  {
    v46 = sub_29D5B0EFC();
    (*(*(v46 - 8) + 56))(v26, 1, 1, v46);
    sub_29D5B1FFC();
    v115 = sub_29D5B2A0C();
    (*(v98 + 8))(v22, v99);
    sub_29D5852B0(v26, &qword_2A1A19588, MEMORY[0x29EDB9C70]);
    v114 = 0;
    goto LABEL_26;
  }

  v98 = v44;
  v99 = v43;
  v47 = MEMORY[0x29EDCA190];
  *&v116 = MEMORY[0x29EDCA190];
  v48 = *(v41 + 16);
  v94 = v41;
  if (v48)
  {
    v49 = v41;
    v50 = *(v103 + 20);
    v51 = v49 + ((*(v102 + 80) + 32) & ~*(v102 + 80));
    v52 = *(v102 + 72);
    v114 = v19;
    v115 = v52;
    do
    {
      sub_29D58517C(v51, v19, type metadata accessor for SharedConceptCodedValue);
      sub_29D5851E4(&v19[v50], v13, &qword_2A1A164E0, sub_29D506534);
      sub_29D506534(0);
      v54 = v53;
      v55 = *(v53 - 8);
      if ((*(v55 + 48))(v13, 1, v53) == 1)
      {
        sub_29D585250(v19, type metadata accessor for SharedConceptCodedValue);
        result = sub_29D5852B0(v13, &qword_2A1A164E0, sub_29D506534);
      }

      else
      {
        sub_29D5B3CEC();
        sub_29D585250(v19, type metadata accessor for SharedConceptCodedValue);
        v56 = (*(v55 + 8))(v13, v54);
        MEMORY[0x29ED5E5E0](v56);
        if (*((v116 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v116 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_29D5B408C();
        }

        result = sub_29D5B40AC();
        v47 = v116;
        v19 = v114;
        v52 = v115;
      }

      v51 += v52;
      --v48;
    }

    while (v48);
  }

  if (v47 >> 62)
  {
    result = sub_29D5B485C();
    v57 = v101;
    v58 = v100;
    if (result)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v57 = v101;
    v58 = v100;
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_13:
      if ((v47 & 0xC000000000000001) != 0)
      {
        v59 = MEMORY[0x29ED5EF30](0, v47);
      }

      else
      {
        if (!*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_30;
        }

        v59 = *(v47 + 32);
      }

      v60 = v59;

      v61 = [objc_opt_self() referenceRangeViewDataFromInspectableValueInRange_];

      goto LABEL_19;
    }
  }

  v61 = 0;
LABEL_19:
  v62 = v94;
  v63 = *(v94 + 16);
  v114 = v61;
  if (!v63)
  {
    goto LABEL_23;
  }

  v64 = v94 + ((*(v102 + 80) + 32) & ~*(v102 + 80));
  sub_29D58517C(v64, v58, type metadata accessor for SharedConceptCodedValue);
  sub_29D5851E4(v58 + *(v103 + 20), v57, &qword_2A1A164E0, sub_29D506534);
  sub_29D506534(0);
  v66 = v65;
  v67 = *(v65 - 8);
  if ((*(v67 + 48))(v57, 1, v65) != 1)
  {
    v68 = sub_29D5B3CEC();
    (*(v67 + 8))(v57, v66);
    sub_29D585250(v58, type metadata accessor for SharedConceptCodedValue);
    v69 = [v68 currentValue];

    v70 = [v69 displayString];
    v71 = sub_29D5B3E5C();
    v73 = v72;

    *&v116 = v71;
    *(&v116 + 1) = v73;
    v74 = v95;
    sub_29D5B0C2C();
    sub_29D4B343C();
    v115 = sub_29D5B477C();
    (*(v96 + 8))(v74, v97);

    goto LABEL_25;
  }

  sub_29D5852B0(v57, &qword_2A1A164E0, sub_29D506534);
  sub_29D585250(v58, type metadata accessor for SharedConceptCodedValue);
  if (*(v62 + 16))
  {
    v115 = *(v64 + *(v103 + 28));
  }

  else
  {
LABEL_23:
    v115 = 0;
  }

LABEL_25:
  v75 = [objc_opt_self() sharedConverter];
  v76 = sub_29D5B3E1C();
  v77 = [v75 synonymForUCUMUnitString_];

  sub_29D5B3E5C();
LABEL_26:
  sub_29D5B1CBC();
  v78 = sub_29D5B1C8C();
  v79 = v113;
  v80 = *((*MEMORY[0x29EDCA1E8] & *v113) + 0x70);
  swift_beginAccess();
  result = sub_29D5693B8(v79 + v80, &v116, &qword_2A1A19460, &qword_2A1A19470, MEMORY[0x29EDC2808], sub_29D4A02A4);
  v81 = *(&v117 + 1);
  if (*(&v117 + 1))
  {
    v82 = sub_29D499EC0(&v116, *(&v117 + 1));
    v83 = *(v81 - 8);
    MEMORY[0x2A1C7C4A8](v82, v82);
    v85 = &v93 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v83 + 16))(v85);
    v86 = sub_29D5B314C();
    (*(v83 + 8))(v85, v81);
    v87 = sub_29D5B1C9C();

    sub_29D48F668(&v116);
    v88 = [v87 utcDateFormatter];
    v89 = v108;
    sub_29D5B0E1C();
    v90 = sub_29D5B0DEC();
    (*(v109 + 8))(v89, v110);
    v91 = [v88 relativeStringFromDate_];

    sub_29D5B3E5C();

    v92 = v105;
    sub_29D5B1AFC();
    sub_29D5B1B9C();
    sub_29D5B275C();

    return (*(v106 + 8))(v92, v107);
  }

LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_29D584830(uint64_t a1)
{
  v2 = v1;
  v36 = a1;
  sub_29D48F36C(0, qword_2A1A185B8, type metadata accessor for SharedConceptFeedItemData);
  MEMORY[0x2A1C7C4A8](v3 - 8, v4);
  v6 = &v35 - v5;
  v7 = type metadata accessor for SharedConceptFeedItemData(0);
  v8 = *(v7 - 8);
  v10 = MEMORY[0x2A1C7C4A8](v7, v9);
  v35 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10, v12);
  v37 = &v35 - v13;
  sub_29D5B1CBC();
  v14 = sub_29D5B1C8C();
  v15 = *((*MEMORY[0x29EDCA1E8] & *v1) + 0x70);
  swift_beginAccess();
  result = sub_29D5693B8(v2 + v15, v38, &qword_2A1A19460, &qword_2A1A19470, MEMORY[0x29EDC2808], sub_29D4A02A4);
  v17 = v39;
  if (v39)
  {
    v18 = sub_29D499EC0(v38, v39);
    v19 = *(v17 - 8);
    MEMORY[0x2A1C7C4A8](v18, v18);
    v21 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v19 + 16))(v21);
    v22 = sub_29D5B314C();
    (*(v19 + 8))(v21, v17);
    v23 = sub_29D5B1C9C();

    sub_29D48F668(v38);
    v24 = *((*MEMORY[0x29EDCA1E8] & *v2) + 0x60);
    swift_beginAccess();
    sub_29D5851E4(v2 + v24, v6, qword_2A1A185B8, type metadata accessor for SharedConceptFeedItemData);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {

      return sub_29D5852B0(v6, qword_2A1A185B8, type metadata accessor for SharedConceptFeedItemData);
    }

    else
    {
      v25 = v37;
      sub_29D4B45A0(v6, v37);
      v26 = v35;
      sub_29D58517C(v25, v35, type metadata accessor for SharedConceptFeedItemData);
      objc_allocWithZone(type metadata accessor for SharedConceptDetailViewController(0));
      v27 = v23;
      v28 = sub_29D506760(v27, v26);
      sub_29D5693B8(v36, v38, &qword_2A17A4DA0, MEMORY[0x29EDCA178] + 8, MEMORY[0x29EDC9C68], sub_29D502718);
      v29 = v39;
      if (v39)
      {
        v30 = sub_29D499EC0(v38, v39);
        v31 = *(v29 - 8);
        MEMORY[0x2A1C7C4A8](v30, v30);
        v33 = &v35 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v31 + 16))(v33);
        v34 = sub_29D5B4C6C();
        (*(v31 + 8))(v33, v29);
        sub_29D48F668(v38);
      }

      else
      {
        v34 = 0;
      }

      [v2 showViewController:v28 sender:v34];

      swift_unknownObjectRelease();
      return sub_29D585250(v25, type metadata accessor for SharedConceptFeedItemData);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_29D584D6C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = qword_2A17A5068;
  *&v3[v6] = [objc_allocWithZone(sub_29D5B238C()) initWithFrame_];
  v7 = qword_2A17A5070;
  *&v3[v7] = [objc_allocWithZone(sub_29D5B23BC()) initWithFrame_];
  v8 = &v3[qword_2A17A5078];
  *(v8 + 4) = 0;
  *v8 = 0u;
  *(v8 + 1) = 0u;
  if (a2)
  {
    v9 = sub_29D5B3E1C();
  }

  else
  {
    v9 = 0;
  }

  v12.receiver = v3;
  v12.super_class = type metadata accessor for SharedConceptTileViewController(0);
  v10 = objc_msgSendSuper2(&v12, sel_initWithNibName_bundle_, v9, a3);

  return v10;
}

id sub_29D584E80(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v5 = sub_29D5B3E5C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_29D584D6C(v5, v7, a4);
}

id sub_29D584EE0(void *a1)
{
  v3 = qword_2A17A5068;
  *&v1[v3] = [objc_allocWithZone(sub_29D5B238C()) initWithFrame_];
  v4 = qword_2A17A5070;
  *&v1[v4] = [objc_allocWithZone(sub_29D5B23BC()) initWithFrame_];
  v5 = &v1[qword_2A17A5078];
  v6 = type metadata accessor for SharedConceptTileViewController(0);
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 4) = 0;
  v9.receiver = v1;
  v9.super_class = v6;
  v7 = objc_msgSendSuper2(&v9, sel_initWithCoder_, a1);

  if (v7)
  {
  }

  return v7;
}

uint64_t sub_29D584FF0()
{
  v1 = v0 + qword_2A17A5078;

  return sub_29D4B9414(v1);
}

id sub_29D585040()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SharedConceptTileViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D585078(uint64_t a1)
{
  v2 = a1 + qword_2A17A5078;

  return sub_29D4B9414(v2);
}

uint64_t type metadata accessor for SharedConceptTileViewController(uint64_t a1)
{
  result = qword_2A17A5080;
  if (!qword_2A17A5080)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D58517C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D5851E4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_29D48F36C(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_29D585250(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29D5852B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29D48F36C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t type metadata accessor for LabListViewController(uint64_t a1)
{
  result = qword_2A17A5090;
  if (!qword_2A17A5090)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D5853F4(void *a1)
{
  v4.receiver = a1;
  v4.super_class = type metadata accessor for LabListViewController(0);
  v1 = v4.receiver;
  objc_msgSendSuper2(&v4, sel_viewDidLoad);
  v2 = [v1 collectionView];
  if (v2)
  {
    v3 = v2;
    sub_29D5B330C();
    sub_29D5B432C();
  }

  else
  {
    __break(1u);
  }
}

id sub_29D5854E8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LabListViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D585528@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_29D5B101C();
  result = sub_29D5B100C();
  v4 = MEMORY[0x29EDC3640];
  a1[3] = v2;
  a1[4] = v4;
  *a1 = result;
  return result;
}

uint64_t sub_29D585568(uint64_t a1, void *a2)
{
  v63 = a1;
  v64 = a2;
  v2 = sub_29D5B2DCC();
  v58 = *(v2 - 8);
  v59 = v2;
  MEMORY[0x2A1C7C4A8](v2, v3);
  v57 = v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29D5B356C();
  v54 = *(v5 - 8);
  v55 = v5;
  MEMORY[0x2A1C7C4A8](v5, v6);
  v56 = v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29D5B0C7C();
  v60 = *(v8 - 8);
  v61 = v8;
  MEMORY[0x2A1C7C4A8](v8, v9);
  v62 = v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D585FC8(0, qword_2A1A1A3B0, MEMORY[0x29EDB98E8], MEMORY[0x29EDC9C68]);
  v13 = MEMORY[0x2A1C7C4A8](v11 - 8, v12);
  v15 = v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13, v16);
  v18 = v52 - v17;
  sub_29D5B18CC();
  v53 = MEMORY[0x29ED5BE80]();
  sub_29D48F410(0, &qword_2A1A19420, MEMORY[0x29EDCA170] + 8);
  v52[1] = v19;
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_29D5B8F20;
  *(v20 + 32) = sub_29D5B183C();
  *(v20 + 40) = sub_29D5B184C();
  sub_29D585FC8(0, &qword_2A1A1A3A0, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v21 = sub_29D5B104C();
  v22 = *(v21 - 8);
  v23 = *(v22 + 72);
  v24 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_29D5B5E20;
  v26 = v25 + v24;
  v27 = *(v22 + 104);
  v27(v26, *MEMORY[0x29EDC3730], v21);
  v28 = v26 + v23;
  v29 = v61;
  v27(v28, *MEMORY[0x29EDC36E0], v21);
  v30 = v63;
  v31 = v60;
  (*(v60 + 56))(v18, 1, 1, v29);
  sub_29D48F410(0, &qword_2A1A16210, MEMORY[0x29EDC37E0]);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_29D5B62A0;
  v33 = v64;
  *(v32 + 32) = v64;
  v34 = v33;
  v35 = MEMORY[0x29ED5BE30](v25, 0, v18, v32);

  v36 = v62;

  sub_29D58602C(v18);
  *(v20 + 48) = v35;
  sub_29D5B0C5C();
  sub_29D5B357C();
  v37 = *(v31 + 8);
  v37(v36, v29);
  result = (*(v31 + 48))(v15, 1, v29);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v39 = MEMORY[0x29ED5BE50](v15);
    v37(v15, v29);
    *(v20 + 56) = v39;
    sub_29D48F51C(0, &qword_2A1A16378, 0x29EDBA0A8);
    v40 = sub_29D5B401C();

    v41 = [objc_opt_self() andPredicateWithSubpredicates_];

    v42 = v53;
    [v53 setPredicate_];

    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_29D5B6350;
    v44 = objc_allocWithZone(MEMORY[0x29EDBA0F0]);
    v45 = sub_29D5B3E1C();
    v46 = [v44 initWithKey:v45 ascending:1 selector:sel_localizedStandardCompare_];

    *(v43 + 32) = v46;
    sub_29D48F51C(0, &qword_2A1A16340, 0x29EDBA0F0);
    v47 = sub_29D5B401C();

    [v42 setSortDescriptors_];

    sub_29D5B101C();
    v48 = v42;
    sub_29D5B100C();
    v49 = sub_29D5B0FFC();

    [objc_allocWithZone(MEMORY[0x29EDB8C58]) initWithFetchRequest:v48 managedObjectContext:v49 sectionNameKeyPath:0 cacheName:0];

    sub_29D5860B8(0);
    sub_29D5B0C5C();
    (*(v54 + 16))(v56, v30, v55);
    v50 = v57;
    sub_29D5B2DBC();
    sub_29D5B2DAC();
    (*(v58 + 8))(v50, v59);
    v51 = sub_29D5B2B0C();

    sub_29D58614C(&qword_2A17A50B0, sub_29D5860B8, MEMORY[0x29EDC2988]);
    return v51;
  }

  return result;
}

uint64_t sub_29D585CA0(void *a1)
{
  v2 = sub_29D5B356C();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D585FC8(0, &qword_2A17A46B0, sub_29D585F68, MEMORY[0x29EDC9E90]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_29D5BB220;
  v8 = *(v3 + 104);
  v8(v6, *MEMORY[0x29EDC3D18], v2);
  v9 = sub_29D585568(v6, a1);
  v11 = v10;
  v12 = *(v3 + 8);
  v12(v6, v2);
  *(v7 + 32) = v9;
  *(v7 + 40) = v11;
  v8(v6, *MEMORY[0x29EDC3D20], v2);
  v13 = sub_29D585568(v6, a1);
  v15 = v14;
  v12(v6, v2);
  *(v7 + 48) = v13;
  *(v7 + 56) = v15;
  v8(v6, *MEMORY[0x29EDC3D30], v2);
  v16 = sub_29D585568(v6, a1);
  v18 = v17;
  v12(v6, v2);
  *(v7 + 64) = v16;
  *(v7 + 72) = v18;
  v8(v6, *MEMORY[0x29EDC3D28], v2);
  v19 = sub_29D585568(v6, a1);
  v21 = v20;
  v12(v6, v2);
  *(v7 + 80) = v19;
  *(v7 + 88) = v21;
  v8(v6, *MEMORY[0x29EDC3D10], v2);
  v22 = sub_29D585568(v6, a1);
  v24 = v23;
  v12(v6, v2);
  *(v7 + 96) = v22;
  *(v7 + 104) = v24;
  sub_29D5B304C();
  swift_allocObject();
  sub_29D5B305C();
  return sub_29D5B347C();
}

unint64_t sub_29D585F68()
{
  result = qword_2A17A46B8;
  if (!qword_2A17A46B8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A17A46B8);
  }

  return result;
}

void sub_29D585FC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D58602C(uint64_t a1)
{
  sub_29D585FC8(0, qword_2A1A1A3B0, MEMORY[0x29EDB98E8], MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29D5860B8(uint64_t a1)
{
  if (!qword_2A17A50A0)
  {
    sub_29D5B18CC();
    sub_29D58614C(&qword_2A17A50A8, MEMORY[0x29EDC3C88], MEMORY[0x29EDC1B30]);
    v1 = sub_29D5B2AFC();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17A50A0);
    }
  }
}

uint64_t sub_29D58614C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_29D586194(unint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) == 0)
  {
    if (*(a1 + 16))
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = MEMORY[0x29EDCA198];
    goto LABEL_6;
  }

  if (!sub_29D5B485C())
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_29D58A5F0(0);
  v3 = sub_29D5B4AAC();
LABEL_6:
  if (sub_29D48F51C(0, &qword_2A1A19660, 0x29EDBAD78) == MEMORY[0x29EDC99B0])
  {
    if (v2)
    {
      v9 = sub_29D5B49EC();
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = v9 | 0x8000000000000000;
    }

    else
    {
      v39 = -1 << *(a1 + 32);
      v11 = ~v39;
      v10 = a1 + 64;
      v40 = -v39;
      if (v40 < 64)
      {
        v41 = ~(-1 << v40);
      }

      else
      {
        v41 = -1;
      }

      v12 = v41 & *(a1 + 64);
      v13 = a1;
    }

    v42 = (v11 + 64) >> 6;

    v43 = 0;
    for (i = v13; ; v13 = i)
    {
      if ((v13 & 0x8000000000000000) != 0)
      {
        v57 = sub_29D5B4A1C();
        if (!v57)
        {
          v38 = v13;
          goto LABEL_61;
        }

        v64 = v57;
        sub_29D48F51C(0, &qword_2A17A3CA8, 0x29EDBAC60);
        swift_dynamicCast();
        sub_29D48F51C(0, &qword_2A1A16378, 0x29EDBA0A8);
        swift_dynamicCast();
        v56 = v64;
        v55 = v65;
        v50 = v43;
        v52 = v12;
        if (!v65)
        {
          goto LABEL_60;
        }
      }

      else
      {
        v49 = v12;
        v50 = v43;
        if (!v12)
        {
          v51 = v43;
          do
          {
            v50 = v51 + 1;
            if (__OFADD__(v51, 1))
            {
              goto LABEL_64;
            }

            if (v50 >= v42)
            {
              goto LABEL_60;
            }

            v49 = *(v10 + 8 * v50);
            ++v51;
          }

          while (!v49);
          v13 = i;
        }

        v52 = (v49 - 1) & v49;
        v53 = (v50 << 9) | (8 * __clz(__rbit64(v49)));
        v54 = *(*(v13 + 56) + v53);
        v55 = *(*(v13 + 48) + v53);
        v56 = v54;
        if (!v55)
        {
LABEL_60:
          v38 = i;
LABEL_61:
          sub_29D4B30C0(v38);

          return;
        }
      }

      v58 = sub_29D57A15C(v55);
      if (v59)
      {
        v44 = *(v3 + 48);
        v45 = *(v44 + 8 * v58);
        *(v44 + 8 * v58) = v55;
        v46 = v58;

        v47 = *(v3 + 56);
        v48 = *(v47 + 8 * v46);
        *(v47 + 8 * v46) = v56;
      }

      else
      {
        v60 = *(v3 + 16);
        if (v60 >= *(v3 + 24))
        {
          goto LABEL_65;
        }

        *(v3 + 64 + ((v58 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v58;
        *(*(v3 + 48) + 8 * v58) = v55;
        *(*(v3 + 56) + 8 * v58) = v56;
        *(v3 + 16) = v60 + 1;
      }

      v43 = v50;
      v12 = v52;
    }
  }

  if (v2)
  {
    v4 = sub_29D5B49EC();
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = v4 | 0x8000000000000000;
  }

  else
  {
    v14 = -1 << *(a1 + 32);
    v6 = ~v14;
    v5 = a1 + 64;
    v15 = -v14;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v7 = v16 & *(a1 + 64);
    v8 = a1;
  }

  v17 = (v6 + 64) >> 6;
  v18 = v3 + 64;

  v19 = 0;
  v61 = v8;
  while ((v8 & 0x8000000000000000) != 0)
  {
    v29 = sub_29D5B4A1C();
    if (!v29 || (v63 = v29, sub_29D48F51C(0, &qword_2A17A3CA8, 0x29EDBAC60), swift_dynamicCast(), sub_29D48F51C(0, &qword_2A1A16378, 0x29EDBA0A8), swift_dynamicCast(), v28 = v63, v27 = v65, v22 = v19, v24 = v7, !v65))
    {
LABEL_38:
      v38 = v61;
      goto LABEL_61;
    }

LABEL_29:
    v30 = sub_29D5B464C();
    v31 = -1 << *(v3 + 32);
    v32 = v30 & ~v31;
    v33 = v32 >> 6;
    if (((-1 << v32) & ~*(v18 + 8 * (v32 >> 6))) != 0)
    {
      v20 = __clz(__rbit64((-1 << v32) & ~*(v18 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v34 = 0;
      v35 = (63 - v31) >> 6;
      do
      {
        if (++v33 == v35 && (v34 & 1) != 0)
        {
          __break(1u);
          goto LABEL_63;
        }

        v36 = v33 == v35;
        if (v33 == v35)
        {
          v33 = 0;
        }

        v34 |= v36;
        v37 = *(v18 + 8 * v33);
      }

      while (v37 == -1);
      v20 = __clz(__rbit64(~v37)) + (v33 << 6);
    }

    *(v18 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v3 + 48) + 8 * v20) = v27;
    *(*(v3 + 56) + 8 * v20) = v28;
    ++*(v3 + 16);
    v19 = v22;
    v7 = v24;
    v8 = v61;
  }

  v21 = v7;
  v22 = v19;
  if (v7)
  {
LABEL_25:
    v24 = (v21 - 1) & v21;
    v25 = (v22 << 9) | (8 * __clz(__rbit64(v21)));
    v26 = *(*(v8 + 56) + v25);
    v27 = *(*(v8 + 48) + v25);
    v28 = v26;
    if (!v27)
    {
      goto LABEL_38;
    }

    goto LABEL_29;
  }

  v23 = v19;
  while (1)
  {
    v22 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v22 >= v17)
    {
      goto LABEL_38;
    }

    v21 = *(v5 + 8 * v22);
    ++v23;
    if (v21)
    {
      v8 = v61;
      goto LABEL_25;
    }
  }

LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
}

uint64_t sub_29D586710(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_29D58A358();
    v2 = sub_29D5B4AAC();
  }

  else
  {
    v2 = MEMORY[0x29EDCA198];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (*(a1 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v5)))));
    v14 = v13[1];
    *&v30[0] = *v13;
    *(&v30[0] + 1) = v14;

    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_29D4C97AC(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_29D4C97AC(v29, v30);
    result = sub_29D5B48AC();
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *(v7 + 8 * v17);
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v22;
    *(v11 + 16) = v23;
    *(v11 + 32) = v24;
    result = sub_29D4C97AC(v30, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_29D5869CC(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = MEMORY[0x29EDC3DB0];
  v6 = MEMORY[0x29EDC9C68];
  sub_29D58A224(0, &qword_2A1A17300, MEMORY[0x29EDC3DB0], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v7 - 8, v8);
  v10 = &v21 - v9;
  v11 = sub_29D5B359C();
  v12 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11, v13);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22.receiver = v2;
  v22.super_class = ObjectType;
  objc_msgSendSuper2(&v22, sel_viewDidAppear_, a1 & 1);
  sub_29D5B1E5C();
  v16 = sub_29D5B1E4C();
  v17 = qword_2A17A50B8;
  swift_beginAccess();
  sub_29D58A2E4(v2 + v17, v10, &qword_2A1A17300, v5, v6, sub_29D58A224);
  v18 = *(v12 + 48);
  if (v18(v10, 1, v11) == 1)
  {
    v19 = *MEMORY[0x29EDC3D98];
    (*(v12 + 104))(v15, *MEMORY[0x29EDC3D98], v11);
    if (v18(v10, 1, v11) != 1)
    {
      sub_29D58A3BC(v10, &qword_2A1A17300, MEMORY[0x29EDC3DB0], MEMORY[0x29EDC9C68], sub_29D58A224);
    }
  }

  else
  {
    (*(v12 + 32))(v15, v10, v11);
    v19 = *MEMORY[0x29EDC3D98];
  }

  v20 = (*(v12 + 88))(v15, v11);
  if (v20 != v19 && v20 != *MEMORY[0x29EDC3DA0] && v20 != *MEMORY[0x29EDC3DA8])
  {
    (*(v12 + 8))(v15, v11);
  }

  sub_29D5B1E2C();
}

void sub_29D586D10(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_29D5869CC(a3);
}

void sub_29D586D64(uint64_t a1, uint64_t a2)
{
  v61 = a2;
  v63 = a1;
  v2 = MEMORY[0x29EDC9C68];
  sub_29D58A224(0, &qword_2A1A17300, MEMORY[0x29EDC3DB0], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v3 - 8, v4);
  v60 = &v55 - v5;
  v6 = sub_29D5B200C();
  v58 = *(v6 - 8);
  v59 = v6;
  MEMORY[0x2A1C7C4A8](v6, v7);
  v56 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D58A224(0, &qword_2A1A19588, MEMORY[0x29EDB9C70], v2);
  MEMORY[0x2A1C7C4A8](v9 - 8, v10);
  v57 = &v55 - v11;
  v12 = sub_29D5B282C();
  v13 = *(v12 - 8);
  v15 = MEMORY[0x2A1C7C4A8](v12, v14);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v15, v18);
  v20 = &v55 - v19;
  v21 = MEMORY[0x29EDC4240];
  sub_29D58A224(0, &qword_2A17A3FE0, MEMORY[0x29EDC4240], v2);
  v24 = MEMORY[0x2A1C7C4A8](v22 - 8, v23);
  v26 = &v55 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v24, v27);
  v29 = &v55 - v28;
  sub_29D58A224(0, &qword_2A17A50F8, MEMORY[0x29EDC4260], v2);
  MEMORY[0x2A1C7C4A8](v30 - 8, v31);
  v33 = &v55 - v32;
  sub_29D58A2E4(v63, v29, &qword_2A17A3FE0, v21, v2, sub_29D58A224);
  v34 = *(v13 + 48);
  v35 = 1;
  if (v34(v29, 1, v12) != 1)
  {
    (*(v13 + 32))(v20, v29, v12);
    (*(v13 + 16))(v17, v20, v12);
    sub_29D5B290C();
    (*(v13 + 8))(v20, v12);
    v35 = 0;
  }

  v36 = sub_29D5B28FC();
  (*(*(v36 - 8) + 56))(v33, v35, 1, v36);
  sub_29D5B22EC();
  v37 = MEMORY[0x29EDC9C68];
  sub_29D58A3BC(v33, &qword_2A17A50F8, MEMORY[0x29EDC4260], MEMORY[0x29EDC9C68], sub_29D58A224);
  sub_29D58A2E4(v63, v26, &qword_2A17A3FE0, MEMORY[0x29EDC4240], v37, sub_29D58A224);
  if (v34(v26, 1, v12) == 1)
  {
    sub_29D58A3BC(v26, &qword_2A17A3FE0, MEMORY[0x29EDC4240], MEMORY[0x29EDC9C68], sub_29D58A224);
    v38 = v62;
LABEL_7:
    v45 = sub_29D5B0EFC();
    v46 = v57;
    (*(*(v45 - 8) + 56))(v57, 1, 1, v45);
    v47 = v56;
    sub_29D5B1FFC();
    sub_29D5B2A0C();
    (*(v58 + 8))(v47, v59);
    sub_29D58A3BC(v46, &qword_2A1A19588, MEMORY[0x29EDB9C70], MEMORY[0x29EDC9C68], sub_29D58A224);
    v48 = sub_29D5B3E1C();

    [v38 setTitle_];

    v44 = MEMORY[0x29EDC3D98];
    goto LABEL_8;
  }

  v39 = sub_29D5B27FC();
  (*(v13 + 8))(v26, v12);
  v38 = v62;
  if (v39 != 6)
  {
    goto LABEL_7;
  }

  v40 = sub_29D5B0EFC();
  v41 = v57;
  (*(*(v40 - 8) + 56))(v57, 1, 1, v40);
  v42 = v56;
  sub_29D5B1FFC();
  sub_29D5B2A0C();
  (*(v58 + 8))(v42, v59);
  sub_29D58A3BC(v41, &qword_2A1A19588, MEMORY[0x29EDB9C70], MEMORY[0x29EDC9C68], sub_29D58A224);
  v43 = sub_29D5B3E1C();

  [v38 setTitle_];

  v44 = MEMORY[0x29EDC3DA0];
LABEL_8:
  v49 = *v44;
  v50 = sub_29D5B359C();
  v51 = *(v50 - 8);
  v52 = v60;
  (*(v51 + 104))(v60, v49, v50);
  (*(v51 + 56))(v52, 0, 1, v50);
  v53 = qword_2A17A50B8;
  swift_beginAccess();
  sub_29D58A41C(v52, v38 + v53);
  swift_endAccess();
  v54 = sub_29D5B22DC();
  [v54 addTarget:v38 action:sel_didTapAction forControlEvents:64];
}

uint64_t sub_29D587620()
{
  v1 = v0;
  v2 = sub_29D5B371C();
  v63 = *(v2 - 8);
  v64 = v2;
  MEMORY[0x2A1C7C4A8](v2, v3);
  v62 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x29EDC9C68];
  sub_29D58A224(0, &unk_2A1A19450, MEMORY[0x29EDCA398], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v6 - 8, v7);
  v59 = &v57 - v8;
  v9 = sub_29D5B0EDC();
  v60 = *(v9 - 8);
  v61 = v9;
  v11 = MEMORY[0x2A1C7C4A8](v9, v10);
  v57 = v12;
  v58 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11, v13);
  v69 = &v57 - v14;
  sub_29D58A224(0, &qword_2A17A3FE0, MEMORY[0x29EDC4240], v5);
  MEMORY[0x2A1C7C4A8](v15 - 8, v16);
  v65 = &v57 - v17;
  v18 = sub_29D5B282C();
  v67 = *(v18 - 8);
  v68 = v18;
  MEMORY[0x2A1C7C4A8](v18, v19);
  v66 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x29EDC3DB0];
  sub_29D58A224(0, &qword_2A1A17300, MEMORY[0x29EDC3DB0], v5);
  MEMORY[0x2A1C7C4A8](v22 - 8, v23);
  v25 = &v57 - v24;
  v26 = sub_29D5B359C();
  v27 = *(v26 - 8);
  MEMORY[0x2A1C7C4A8](v26, v28);
  v30 = &v57 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5B1E5C();
  v31 = sub_29D5B1E4C();
  v32 = qword_2A17A50B8;
  swift_beginAccess();
  sub_29D58A2E4(v1 + v32, v25, &qword_2A1A17300, v21, v5, sub_29D58A224);
  v33 = *(v27 + 48);
  if (v33(v25, 1, v26) == 1)
  {
    v34 = *MEMORY[0x29EDC3D98];
    (*(v27 + 104))(v30, *MEMORY[0x29EDC3D98], v26);
    if (v33(v25, 1, v26) != 1)
    {
      sub_29D58A3BC(v25, &qword_2A1A17300, MEMORY[0x29EDC3DB0], MEMORY[0x29EDC9C68], sub_29D58A224);
    }
  }

  else
  {
    (*(v27 + 32))(v30, v25, v26);
    v34 = *MEMORY[0x29EDC3D98];
  }

  v35 = (*(v27 + 88))(v30, v26);
  if (v35 != v34 && v35 != *MEMORY[0x29EDC3DA0] && v35 != *MEMORY[0x29EDC3DA8])
  {
    (*(v27 + 8))(v30, v26);
  }

  sub_29D5B1E2C();

  v36 = *((*MEMORY[0x29EDCA1E8] & *v1) + 0x60);
  swift_beginAccess();
  v37 = v65;
  sub_29D58A2E4(v1 + v36, v65, &qword_2A17A3FE0, MEMORY[0x29EDC4240], MEMORY[0x29EDC9C68], sub_29D58A224);
  v38 = v67;
  v39 = v68;
  if ((*(v67 + 48))(v37, 1, v68) == 1)
  {
    sub_29D58A3BC(v37, &qword_2A17A3FE0, MEMORY[0x29EDC4240], MEMORY[0x29EDC9C68], sub_29D58A224);
    v40 = v62;
    sub_29D5B36DC();
    v41 = sub_29D5B370C();
    v42 = sub_29D5B427C();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_29D48C000, v41, v42, "Tapped on tile while context.userData was unavailable", v43, 2u);
      MEMORY[0x29ED5FB80](v43, -1, -1);
    }

    return (*(v63 + 8))(v40, v64);
  }

  else
  {
    (*(v38 + 32))(v66, v37, v39);
    v45 = v69;
    sub_29D5B280C();
    v46 = sub_29D5B410C();
    v47 = v59;
    (*(*(v46 - 8) + 56))(v59, 1, 1, v46);
    v48 = v60;
    v49 = v58;
    v50 = v45;
    v51 = v61;
    (*(v60 + 16))(v58, v50, v61);
    sub_29D5B40EC();
    v52 = v1;
    v53 = sub_29D5B40DC();
    v54 = (*(v48 + 80) + 40) & ~*(v48 + 80);
    v55 = swift_allocObject();
    v56 = MEMORY[0x29EDCA390];
    *(v55 + 2) = v53;
    *(v55 + 3) = v56;
    *(v55 + 4) = v52;
    (*(v48 + 32))(&v55[v54], v49, v51);
    sub_29D57657C(0, 0, v47, &unk_29D5BB3A0, v55);

    (*(v48 + 8))(v69, v51);
    return (*(v38 + 8))(v66, v39);
  }
}

uint64_t sub_29D587EA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v6 = sub_29D5B0EDC();
  v5[13] = v6;
  v5[14] = *(v6 - 8);
  v5[15] = swift_task_alloc();
  v7 = sub_29D5B371C();
  v5[16] = v7;
  v5[17] = *(v7 - 8);
  v5[18] = swift_task_alloc();
  sub_29D5B40EC();
  v5[19] = sub_29D5B40DC();
  v9 = sub_29D5B40CC();
  v5[20] = v9;
  v5[21] = v8;

  return MEMORY[0x2A1C73D48](sub_29D587FF0, v9, v8);
}

uint64_t sub_29D587FF0()
{
  v1 = v0[11];
  sub_29D5B1CBC();
  v2 = sub_29D5B1C8C();
  v3 = *((*MEMORY[0x29EDCA1E8] & *v1) + 0x70);
  swift_beginAccess();
  v4 = sub_29D58A2E4(v1 + v3, (v0 + 2), &qword_2A1A19460, &qword_2A1A19470, MEMORY[0x29EDC2808], sub_29D4A02A4);
  v5 = v0[5];
  if (v5)
  {
    v6 = sub_29D499EC0(v0 + 2, v0[5]);
    v7 = *(v5 - 8);
    v8 = swift_task_alloc();
    (*(v7 + 16))(v8, v6, v5);
    v9 = sub_29D5B314C();
    (*(v7 + 8))(v8, v5);
    v10 = sub_29D5B1C9C();
    v0[22] = v10;

    sub_29D48F668(v0 + 2);
    sub_29D5B227C();
    swift_allocObject();
    v11 = v10;
    v0[23] = sub_29D5B225C();
    v12 = swift_task_alloc();
    v0[24] = v12;
    *v12 = v0;
    v12[1] = sub_29D588234;
    v4 = v0[12];
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2A1C65E50](v4);
}

uint64_t sub_29D588234(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 200) = a1;
  *(v4 + 208) = v1;

  v5 = *(v3 + 168);
  v6 = *(v3 + 160);
  if (v1)
  {
    v7 = sub_29D58877C;
  }

  else
  {
    v7 = sub_29D588378;
  }

  return MEMORY[0x2A1C73D48](v7, v6, v5);
}

uint64_t sub_29D588378()
{
  if ([*(v0 + 200) wantsGatewayUpgrade])
  {
    v1 = swift_task_alloc();
    *(v0 + 216) = v1;
    *v1 = v0;
    v1[1] = sub_29D5884A4;
    v2 = *(v0 + 200);
    v3 = *(v0 + 88);

    return MEMORY[0x2A1C65E70](v2, v3);
  }

  else
  {
    v4 = swift_task_alloc();
    *(v0 + 224) = v4;
    *v4 = v0;
    v4[1] = sub_29D58865C;
    v5 = *(v0 + 200);
    v6 = *(v0 + 88);

    return MEMORY[0x2A1C65E58](v5, v6);
  }
}

uint64_t sub_29D5884A4()
{
  v1 = *v0;

  v2 = *(v1 + 168);
  v3 = *(v1 + 160);

  return MEMORY[0x2A1C73D48](sub_29D5885C4, v3, v2);
}

uint64_t sub_29D5885C4()
{
  v1 = *(v0 + 200);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_29D58865C()
{
  v1 = *v0;

  v2 = *(v1 + 168);
  v3 = *(v1 + 160);

  return MEMORY[0x2A1C73D48](sub_29D58A6F4, v3, v2);
}

uint64_t sub_29D58877C()
{
  v38 = v0;
  v1 = v0[26];
  v3 = v0[14];
  v2 = v0[15];
  v5 = v0[12];
  v4 = v0[13];

  sub_29D5B36CC();
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_29D5B370C();
  v8 = sub_29D5B427C();

  if (os_log_type_enabled(v7, v8))
  {
    v32 = v0[26];
    v33 = v0[22];
    v34 = v0[17];
    v9 = v0[15];
    v35 = v0[16];
    v36 = v0[18];
    v10 = v0[13];
    v11 = v0[14];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v37 = v13;
    *v12 = 136315394;
    sub_29D58A5A8(&unk_2A17A3A20, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C38]);
    v14 = sub_29D5B4C4C();
    v16 = v15;
    (*(v11 + 8))(v9, v10);
    v17 = sub_29D501890(v14, v16, &v37);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2080;
    v0[10] = v32;
    v18 = v32;
    sub_29D4A02FC(0, &qword_2A1A1A410, MEMORY[0x29EDC9F18]);
    v19 = sub_29D5B3E7C();
    v21 = sub_29D501890(v19, v20, &v37);

    *(v12 + 14) = v21;
    _os_log_impl(&dword_29D48C000, v7, v8, "AccountStatusReloginSummaryTileFeedItemViewController failed to fetch account %s: %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED5FB80](v13, -1, -1);
    MEMORY[0x29ED5FB80](v12, -1, -1);

    (*(v34 + 8))(v36, v35);
  }

  else
  {
    v22 = v0[26];
    v23 = v0[22];
    v25 = v0[17];
    v24 = v0[18];
    v27 = v0[15];
    v26 = v0[16];
    v28 = v0[13];
    v29 = v0[14];

    (*(v29 + 8))(v27, v28);
    (*(v25 + 8))(v24, v26);
  }

  v30 = v0[1];

  return v30();
}

void sub_29D588A88(void *a1)
{
  v1 = a1;
  sub_29D587620();
}

uint64_t sub_29D588AD0()
{
  v1 = v0;
  v2 = MEMORY[0x29EDC9C68];
  sub_29D58A224(0, &qword_2A1A17300, MEMORY[0x29EDC3DB0], MEMORY[0x29EDC9C68]);
  v5 = MEMORY[0x2A1C7C4A8](v3 - 8, v4);
  v98 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5, v7);
  v97 = &v89 - v8;
  v9 = sub_29D5B359C();
  v99 = *(v9 - 8);
  v11 = MEMORY[0x2A1C7C4A8](v9, v10);
  v13 = &v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11, v14);
  v96 = &v89 - v15;
  v95 = sub_29D5B0EDC();
  v94 = *(v95 - 8);
  MEMORY[0x2A1C7C4A8](v95, v16);
  v93 = &v89 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D58A224(0, &qword_2A17A3FE0, MEMORY[0x29EDC4240], v2);
  MEMORY[0x2A1C7C4A8](v18 - 8, v19);
  v100 = (&v89 - v20);
  v103 = sub_29D5B282C();
  v102 = *(v103 - 8);
  MEMORY[0x2A1C7C4A8](v103, v21);
  v101 = &v89 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_29D5B371C();
  v23 = *(v104 - 1);
  v25 = MEMORY[0x2A1C7C4A8](v104, v24);
  v27 = &v89 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x2A1C7C4A8](v25, v28);
  v92 = &v89 - v30;
  MEMORY[0x2A1C7C4A8](v29, v31);
  v33 = &v89 - v32;
  v34 = sub_29D5B2C2C();
  v35 = *(v34 - 8);
  MEMORY[0x2A1C7C4A8](v34, v36);
  v38 = &v89 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = *((*MEMORY[0x29EDCA1E8] & *v0) + 0x70);
  swift_beginAccess();
  sub_29D58A2E4(v1 + v39, &v105, &qword_2A1A19460, &qword_2A1A19470, MEMORY[0x29EDC2808], sub_29D4A02A4);
  if (v106)
  {
    v90 = v13;
    v91 = v9;
    sub_29D497868(&v105, v107);
    sub_29D499EC0(v107, v107[3]);
    sub_29D5B315C();
    if ((*(v35 + 88))(v38, v34) == *MEMORY[0x29EDC1D20])
    {
      sub_29D48F668(v107);
      sub_29D5B36DC();
      v40 = sub_29D5B370C();
      v41 = sub_29D5B429C();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&dword_29D48C000, v40, v41, "User dismissed AccountStatus tile", v42, 2u);
        MEMORY[0x29ED5FB80](v42, -1, -1);
      }

      v43 = *(v23 + 8);
      v44 = v104;
      v43(v33, v104);
      v45 = *((*MEMORY[0x29EDCA1E8] & *v1) + 0x60);
      swift_beginAccess();
      v46 = v100;
      sub_29D58A2E4(v1 + v45, v100, &qword_2A17A3FE0, MEMORY[0x29EDC4240], MEMORY[0x29EDC9C68], sub_29D58A224);
      v47 = v102;
      v48 = v103;
      if ((*(v102 + 48))(v46, 1, v103) == 1)
      {
        sub_29D58A3BC(v46, &qword_2A17A3FE0, MEMORY[0x29EDC4240], MEMORY[0x29EDC9C68], sub_29D58A224);
        v49 = v92;
        sub_29D5B36DC();
        v50 = sub_29D5B370C();
        v51 = sub_29D5B427C();
        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          *v52 = 0;
          _os_log_impl(&dword_29D48C000, v50, v51, "Tapped on tile dismissal while context.userData was unavailable", v52, 2u);
          MEMORY[0x29ED5FB80](v52, -1, -1);
        }

        return (v43)(v49, v44);
      }

      else
      {
        (*(v47 + 32))(v101, v46, v48);
        sub_29D58A224(0, &qword_2A17A50E0, sub_29D58A288, MEMORY[0x29EDC9E90]);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_29D5B5E20;
        *(inited + 32) = sub_29D5B28CC();
        *(inited + 40) = v60;
        v61 = v93;
        sub_29D5B280C();
        v62 = sub_29D5B0E8C();
        v64 = v63;
        (*(v94 + 8))(v61, v95);
        *(inited + 48) = v62;
        *(inited + 56) = v64;
        *(inited + 64) = sub_29D5B28BC();
        *(inited + 72) = v65;
        v66 = qword_2A17A50B8;
        swift_beginAccess();
        v67 = v97;
        sub_29D58A2E4(v1 + v66, v97, &qword_2A1A17300, MEMORY[0x29EDC3DB0], MEMORY[0x29EDC9C68], sub_29D58A224);
        v68 = v99;
        v69 = *(v99 + 48);
        v70 = v91;
        v71 = v69(v67, 1, v91);
        v104 = v69;
        if (v71 == 1)
        {
          v72 = v96;
          (*(v68 + 104))(v96, *MEMORY[0x29EDC3D98], v70);
          if (v69(v67, 1, v70) != 1)
          {
            sub_29D58A3BC(v67, &qword_2A1A17300, MEMORY[0x29EDC3DB0], MEMORY[0x29EDC9C68], sub_29D58A224);
          }
        }

        else
        {
          v72 = v96;
          (*(v68 + 32))(v96, v67, v70);
        }

        v73 = sub_29D5B358C();
        v74 = v72;
        v76 = v75;
        v100 = *(v68 + 8);
        (v100)(v74, v70);
        *(inited + 80) = v73;
        *(inited + 88) = v76;
        v77 = sub_29D57ACC4(inited);
        swift_setDeallocating();
        sub_29D58A288();
        swift_arrayDestroy();
        sub_29D48F51C(0, &qword_2A17A43D8, 0x29EDBA088);
        v78 = sub_29D5B430C();
        sub_29D5B443C();
        sub_29D586710(v77);

        v79 = objc_allocWithZone(sub_29D5B2AEC());
        v80 = v91;
        v81 = sub_29D5B2ADC();
        [v78 addOperation_];

        sub_29D5B1E5C();
        v82 = sub_29D5B1E4C();
        v83 = v98;
        sub_29D58A2E4(v1 + v66, v98, &qword_2A1A17300, MEMORY[0x29EDC3DB0], MEMORY[0x29EDC9C68], sub_29D58A224);
        v84 = v104;
        if ((v104)(v83, 1, v80) == 1)
        {
          v85 = *MEMORY[0x29EDC3D98];
          v86 = v90;
          (*(v68 + 104))(v90, *MEMORY[0x29EDC3D98], v80);
          if (v84(v83, 1, v80) != 1)
          {
            sub_29D58A3BC(v83, &qword_2A1A17300, MEMORY[0x29EDC3DB0], MEMORY[0x29EDC9C68], sub_29D58A224);
          }

          v68 = v99;
        }

        else
        {
          v86 = v90;
          (*(v68 + 32))(v90, v83, v80);
          v85 = *MEMORY[0x29EDC3D98];
        }

        v87 = (*(v68 + 88))(v86, v80);
        if (v87 == v85)
        {
          v88 = v103;
        }

        else
        {
          v88 = v103;
          if (v87 != *MEMORY[0x29EDC3DA0] && v87 != *MEMORY[0x29EDC3DA8])
          {
            (v100)(v86, v80);
          }
        }

        sub_29D5B1E2C();

        return (*(v102 + 8))(v101, v88);
      }
    }

    (*(v35 + 8))(v38, v34);
    sub_29D48F668(v107);
  }

  else
  {
    sub_29D58A3BC(&v105, &qword_2A1A19460, &qword_2A1A19470, MEMORY[0x29EDC2808], sub_29D4A02A4);
  }

  sub_29D5B36DC();
  v54 = sub_29D5B370C();
  v55 = sub_29D5B427C();
  v56 = os_log_type_enabled(v54, v55);
  v57 = v104;
  if (v56)
  {
    v58 = swift_slowAlloc();
    *v58 = 0;
    _os_log_impl(&dword_29D48C000, v54, v55, "didTapDismiss invoked for tile without a dismiss button!", v58, 2u);
    MEMORY[0x29ED5FB80](v58, -1, -1);
  }

  return (*(v23 + 8))(v27, v57);
}

uint64_t sub_29D5898BC()
{
  v1 = sub_29D5B2C2C();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1, v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *((*MEMORY[0x29EDCA1E8] & *v0) + 0x70);
  swift_beginAccess();
  sub_29D58A2E4(v0 + v6, &v9, &qword_2A1A19460, &qword_2A1A19470, MEMORY[0x29EDC2808], sub_29D4A02A4);
  if (v10)
  {
    sub_29D497868(&v9, v11);
    sub_29D499EC0(v11, v11[3]);
    sub_29D5B315C();
    if ((*(v2 + 88))(v5, v1) == *MEMORY[0x29EDC1D20])
    {
      sub_29D48F668(v11);
      return 1;
    }

    (*(v2 + 8))(v5, v1);
    sub_29D48F668(v11);
  }

  else
  {
    sub_29D58A3BC(&v9, &qword_2A1A19460, &qword_2A1A19470, MEMORY[0x29EDC2808], sub_29D4A02A4);
  }

  return 0;
}

id sub_29D589AAC(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v7 = qword_2A17A50B8;
  v8 = sub_29D5B359C();
  (*(*(v8 - 8) + 56))(&v3[v7], 1, 1, v8);
  v9 = &v3[qword_2A17A50C0];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  v10 = qword_2A17ABFC8;
  v11 = *MEMORY[0x29EDC1E68];
  v12 = sub_29D5B2CAC();
  (*(*(v12 - 8) + 104))(&v3[v10], v11, v12);
  v3[qword_2A17ABFD0] = 1;
  if (a2)
  {
    v13 = sub_29D5B3E1C();
  }

  else
  {
    v13 = 0;
  }

  v16.receiver = v3;
  v16.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v16, sel_initWithNibName_bundle_, v13, a3);

  return v14;
}

id sub_29D589C10(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v5 = sub_29D5B3E5C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_29D589AAC(v5, v7, a4);
}

id sub_29D589C70(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = qword_2A17A50B8;
  v5 = sub_29D5B359C();
  (*(*(v5 - 8) + 56))(&v1[v4], 1, 1, v5);
  v6 = &v1[qword_2A17A50C0];
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 4) = 0;
  v7 = qword_2A17ABFC8;
  v8 = *MEMORY[0x29EDC1E68];
  v9 = sub_29D5B2CAC();
  (*(*(v9 - 8) + 104))(&v1[v7], v8, v9);
  v1[qword_2A17ABFD0] = 1;
  v12.receiver = v1;
  v12.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v12, sel_initWithCoder_, a1);

  if (v10)
  {
  }

  return v10;
}

uint64_t sub_29D589DD0()
{
  sub_29D58A3BC(v0 + qword_2A17A50B8, &qword_2A1A17300, MEMORY[0x29EDC3DB0], MEMORY[0x29EDC9C68], sub_29D58A224);
  sub_29D58A3BC(v0 + qword_2A17A50C0, &unk_2A17A4DB0, &unk_2A17A4570, MEMORY[0x29EDC4218], sub_29D4A02A4);
  v1 = qword_2A17ABFC8;
  v2 = sub_29D5B2CAC();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

id sub_29D589EC8()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D589F00(uint64_t a1)
{
  sub_29D58A3BC(a1 + qword_2A17A50B8, &qword_2A1A17300, MEMORY[0x29EDC3DB0], MEMORY[0x29EDC9C68], sub_29D58A224);
  sub_29D58A3BC(a1 + qword_2A17A50C0, &unk_2A17A4DB0, &unk_2A17A4570, MEMORY[0x29EDC4218], sub_29D4A02A4);
  v2 = qword_2A17ABFC8;
  v3 = sub_29D5B2CAC();
  v4 = *(*(v3 - 8) + 8);

  return v4(a1 + v2, v3);
}

uint64_t type metadata accessor for AccountStatusReloginSummaryTileFeedItemViewController(uint64_t a1)
{
  result = qword_2A17A50C8;
  if (!qword_2A17A50C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D58A048(uint64_t a1)
{
  sub_29D58A224(319, &qword_2A1A17300, MEMORY[0x29EDC3DB0], MEMORY[0x29EDC9C68]);
  if (v1 <= 0x3F)
  {
    sub_29D5B2CAC();
    if (v2 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

uint64_t sub_29D58A160@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = qword_2A17ABFC8;
  v5 = sub_29D5B2CAC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

void sub_29D58A224(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29D58A288()
{
  if (!qword_2A17A50E8)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A17A50E8);
    }
  }
}

uint64_t sub_29D58A2E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

void sub_29D58A358()
{
  if (!qword_2A17A50F0)
  {
    v0 = sub_29D5B4ABC();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17A50F0);
    }
  }
}

uint64_t sub_29D58A3BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_29D58A41C(uint64_t a1, uint64_t a2)
{
  sub_29D58A224(0, &qword_2A1A17300, MEMORY[0x29EDC3DB0], MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D58A4B0(uint64_t a1)
{
  v4 = *(sub_29D5B0EDC() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_29D4E7B8C;

  return sub_29D587EA0(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_29D58A5A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_29D58A5F0(uint64_t a1)
{
  if (!qword_2A17A5100)
  {
    sub_29D48F51C(255, &qword_2A1A19660, 0x29EDBAD78);
    sub_29D48F51C(255, &qword_2A1A16378, 0x29EDBA0A8);
    sub_29D58A68C();
    v1 = sub_29D5B4ABC();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17A5100);
    }
  }
}

unint64_t sub_29D58A68C()
{
  result = qword_2A1A19658;
  if (!qword_2A1A19658)
  {
    sub_29D48F51C(255, &qword_2A1A19660, 0x29EDBAD78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A19658);
  }

  return result;
}

uint64_t type metadata accessor for ClinicalNotificationSettingsSwitchCellViewController(uint64_t a1)
{
  result = qword_2A1A173B0;
  if (!qword_2A1A173B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D58A790()
{
  v1 = sub_29D5B3E5C();

  MEMORY[0x29ED5E510](0xD000000000000025, 0x800000029D5BED50);

  return v1;
}

uint64_t (*sub_29D58A808(uint64_t *a1))(uint64_t a1)
{
  v4 = sub_29D5B3E5C();
  v5 = v2;

  MEMORY[0x29ED5E510](0xD000000000000025, 0x800000029D5BED50);

  *a1 = v4;
  a1[1] = v5;
  return sub_29D58A8A4;
}

id sub_29D58A8AC()
{
  v1 = qword_2A1A173C0;
  v2 = *(v0 + qword_2A1A173C0);
  if (v2)
  {
    v3 = *(v0 + qword_2A1A173C0);
  }

  else
  {
    sub_29D58A910();
    v4 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_29D58A910()
{
  v0 = *MEMORY[0x29EDC3DC8];
  sub_29D5B31FC();
  v1 = v9;
  if (v9)
  {
    v2 = sub_29D499EC0(v8, v9);
    v3 = *(v1 - 8);
    MEMORY[0x2A1C7C4A8](v2, v2);
    v5 = &v8[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v3 + 16))(v5);
    v6 = sub_29D5B314C();
    (*(v3 + 8))(v5, v1);
    [objc_allocWithZone(MEMORY[0x29EDBAC18]) initWithCategory:3 domainName:v0 healthStore:v6];

    sub_29D48F668(v8);
  }

  else
  {

    __break(1u);
  }
}

void *sub_29D58AA7C()
{
  sub_29D58B420();
  v1 = v0;
  return v0;
}

void (*sub_29D58AAB0(void *a1))(id *a1)
{
  v3 = sub_29D58B420();
  *a1 = v1;
  a1[1] = v3;
  v4 = v1;
  return sub_29D4C76CC;
}

uint64_t sub_29D58AB04()
{
  ObjectType = swift_getObjectType();
  v1 = sub_29D5B371C();
  v2 = *(v1 - 8);
  v4 = MEMORY[0x2A1C7C4A8](v1, v3);
  MEMORY[0x2A1C7C4A8](v4, v5);
  v7 = &v22[-1] - v6;
  v8 = sub_29D58A8AC();
  sub_29D5B3E5C();
  v9 = sub_29D5B42EC();

  if (v9 == 2)
  {
    sub_29D5B36EC();
    v10 = sub_29D5B370C();
    v11 = sub_29D5B427C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v22[0] = v13;
      *v12 = 136446466;
      v22[2] = ObjectType;
      swift_getMetatypeMetadata();
      v14 = sub_29D5B3E7C();
      v16 = sub_29D501890(v14, v15, v22);

      *(v12 + 4) = v16;
      *(v12 + 12) = 2082;
      v17 = sub_29D5B3E5C();
      v19 = sub_29D501890(v17, v18, v22);

      *(v12 + 14) = v19;
      _os_log_impl(&dword_29D48C000, v10, v11, "[%{public}s]: value for notification type %{public}s is nil", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED5FB80](v13, -1, -1);
      MEMORY[0x29ED5FB80](v12, -1, -1);
    }

    (*(v2 + 8))(v7, v1);
    v9 = 1;
  }

  return v9 & 1;
}

uint64_t sub_29D58AEE4(char a1)
{
  swift_getObjectType();
  v2 = sub_29D5B371C();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x2A1C7C4A8](v2, v4);
  MEMORY[0x2A1C7C4A8](v5, v6);
  v8 = &v18 - v7;
  v9 = sub_29D58A8AC();
  sub_29D5B3E5C();
  sub_29D5B42FC();

  sub_29D5B36EC();
  v10 = sub_29D5B370C();
  v11 = sub_29D5B429C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v19 = v13;
    *v12 = 136446466;
    v14 = sub_29D5B4DFC();
    v16 = sub_29D501890(v14, v15, &v19);

    *(v12 + 4) = v16;
    *(v12 + 12) = 1024;
    *(v12 + 14) = a1 & 1;
    _os_log_impl(&dword_29D48C000, v10, v11, "%{public}s Set CHR Notifications changes preference to %{BOOL}d", v12, 0x12u);
    sub_29D48F668(v13);
    MEMORY[0x29ED5FB80](v13, -1, -1);
    MEMORY[0x29ED5FB80](v12, -1, -1);
  }

  return (*(v3 + 8))(v8, v2);
}

char *sub_29D58B278(char *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    sub_29D5B3E5C();
    *&a1[qword_2A1A173C0] = 0;
    v6 = a4;
    v7 = sub_29D5B3E1C();
  }

  else
  {
    *&a1[qword_2A1A173C0] = 0;
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = a1;
  v11.super_class = type metadata accessor for ClinicalNotificationSettingsSwitchCellViewController(0);
  v9 = objc_msgSendSuper2(&v11, sel_initWithNibName_bundle_, v7, a4);

  return v9;
}

char *sub_29D58B334(char *a1, uint64_t a2, void *a3)
{
  *&a1[qword_2A1A173C0] = 0;
  v7.receiver = a1;
  v7.super_class = type metadata accessor for ClinicalNotificationSettingsSwitchCellViewController(0);
  v4 = a3;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, v4);

  if (v5)
  {
  }

  return v5;
}

id sub_29D58B3C8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClinicalNotificationSettingsSwitchCellViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_29D58B420()
{
  result = qword_2A17A5108;
  if (!qword_2A17A5108)
  {
    type metadata accessor for ClinicalNotificationSettingsSwitchCellViewController(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A5108);
  }

  return result;
}

char *sub_29D58B478(char *result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x29EDCA190];
  }

  v6 = result;
  v7 = 0;
  v8 = MEMORY[0x29EDCA190];
  do
  {
    for (i = v7; ; ++i)
    {
      if (i >= v4)
      {
        __break(1u);
LABEL_20:
        __break(1u);
        return result;
      }

      v10 = sub_29D5B16BC();
      v12 = *(v10 - 8);
      result = (v10 - 8);
      v11 = v12;
      v7 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_20;
      }

      result = (v6)(&v19, a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * i);
      if (v3)
      {

        return v8;
      }

      v13 = v20;
      if (v20)
      {
        break;
      }

      if (v7 == v4)
      {
        return v8;
      }
    }

    v14 = v19;
    result = swift_isUniquelyReferenced_nonNull_native();
    v21 = v14;
    if ((result & 1) == 0)
    {
      result = sub_29D514C4C(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v16 = *(v8 + 2);
    v15 = *(v8 + 3);
    v17 = v16 + 1;
    if (v16 >= v15 >> 1)
    {
      result = sub_29D514C4C((v15 > 1), v16 + 1, 1, v8);
      v17 = v16 + 1;
      v8 = result;
    }

    *(v8 + 2) = v17;
    v18 = &v8[16 * v16];
    *(v18 + 4) = v21;
    *(v18 + 5) = v13;
  }

  while (v7 != v4);
  return v8;
}

char *sub_29D58B614(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v17 = a1;
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x29EDCA190];
  }

  v5 = (a3 + 40);
  v6 = MEMORY[0x29EDCA190];
  while (1)
  {
    v8 = *v5;
    v16[0] = *(v5 - 1);
    v16[1] = v8;

    v17(&v14, v16);
    if (v3)
    {
      break;
    }

    v9 = v15;
    if (v15)
    {
      v10 = v14;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_29D514C4C(0, *(v6 + 2) + 1, 1, v6);
      }

      v12 = *(v6 + 2);
      v11 = *(v6 + 3);
      if (v12 >= v11 >> 1)
      {
        v6 = sub_29D514C4C((v11 > 1), v12 + 1, 1, v6);
      }

      *(v6 + 2) = v12 + 1;
      v7 = &v6[16 * v12];
      *(v7 + 4) = v10;
      *(v7 + 5) = v9;
    }

    v5 += 2;
    if (!--v4)
    {
      return v6;
    }
  }

  return v6;
}

uint64_t sub_29D58B754(void (*a1)(uint64_t *__return_ptr, char *), uint64_t a2, uint64_t a3)
{
  v30 = a1;
  v32 = sub_29D5B16BC();
  v5 = *(v32 - 8);
  MEMORY[0x2A1C7C4A8](v32, v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a3 + 56;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a3 + 56);
  v13 = (v10 + 63) >> 6;
  v29 = v5 + 16;
  v31 = (v5 + 8);
  v35 = a3;

  v15 = 0;
  v28 = MEMORY[0x29EDCA190];
  while (v12)
  {
    v16 = v32;
LABEL_11:
    (*(v5 + 16))(v8, *(v35 + 48) + *(v5 + 72) * (__clz(__rbit64(v12)) | (v15 << 6)), v16);
    v30(&v33, v8);
    if (v3)
    {
      (*v31)(v8, v16);

LABEL_19:

      return v28;
    }

    v12 &= v12 - 1;
    result = (*v31)(v8, v16);
    v18 = v34;
    if (v34)
    {
      v27 = v33;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_29D514C4C(0, *(v28 + 2) + 1, 1, v28);
        v28 = result;
      }

      v20 = *(v28 + 2);
      v19 = *(v28 + 3);
      v21 = v20 + 1;
      if (v20 >= v19 >> 1)
      {
        v25 = *(v28 + 2);
        v26 = v20 + 1;
        result = sub_29D514C4C((v19 > 1), v20 + 1, 1, v28);
        v20 = v25;
        v21 = v26;
        v28 = result;
      }

      v22 = v27;
      v23 = v28;
      *(v28 + 2) = v21;
      v24 = &v23[16 * v20];
      *(v24 + 4) = v22;
      *(v24 + 5) = v18;
    }
  }

  v16 = v32;
  while (1)
  {
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v17 >= v13)
    {
      goto LABEL_19;
    }

    v12 = *(v9 + 8 * v17);
    ++v15;
    if (v12)
    {
      v15 = v17;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_29D58BA44(void (*a1)(void), uint64_t a2, unint64_t a3)
{
  sub_29D4B4AD4(0);
  MEMORY[0x2A1C7C4A8](v6 - 8, v7);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29D5B134C();
  v33 = *(v10 - 8);
  v12 = MEMORY[0x2A1C7C4A8](v10, v11);
  v39 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x2A1C7C4A8](v12, v14);
  v32 = &v30 - v16;
  if (a3 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; v15 = v28)
  {
    v18 = 0;
    v37 = a3 & 0xFFFFFFFFFFFFFF8;
    v38 = a3 & 0xC000000000000001;
    v34 = (v33 + 32);
    v35 = (v33 + 48);
    v40 = v15;
    v41 = MEMORY[0x29EDCA190];
    v30 = a1;
    v31 = a3;
    v36 = i;
    while (1)
    {
      if (v38)
      {
        v15 = MEMORY[0x29ED5EF30](v18, a3);
      }

      else
      {
        if (v18 >= *(v37 + 16))
        {
          goto LABEL_20;
        }

        v15 = *(a3 + 8 * v18 + 32);
      }

      v19 = v15;
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      v42 = v15;
      a1(&v42);
      if (v3)
      {

        return v41;
      }

      v21 = v40;
      if ((*v35)(v9, 1, v40) == 1)
      {
        v15 = sub_29D597004(v9, sub_29D4B4AD4);
      }

      else
      {
        v22 = *v34;
        v23 = v32;
        (*v34)(v32, v9, v21);
        v22(v39, v23, v21);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v41 = sub_29D515230(0, v41[2] + 1, 1, v41);
        }

        v25 = v41[2];
        v24 = v41[3];
        if (v25 >= v24 >> 1)
        {
          v41 = sub_29D515230((v24 > 1), v25 + 1, 1, v41);
        }

        v26 = v40;
        v27 = v41;
        v41[2] = v25 + 1;
        v15 = (v22)(v27 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v25, v39, v26);
        a1 = v30;
        a3 = v31;
      }

      ++v18;
      if (v20 == v36)
      {
        return v41;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    v28 = v15;
    i = sub_29D5B485C();
  }

  return MEMORY[0x29EDCA190];
}

char *sub_29D58BDA8(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  sub_29D5967A0(0);
  MEMORY[0x2A1C7C4A8](v6 - 8, v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29D5B0EDC();
  v11 = *(v10 - 8);
  v13 = MEMORY[0x2A1C7C4A8](v10, v12);
  v34 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13, v15);
  v31 = &v27 - v16;
  v17 = *(a3 + 16);
  if (!v17)
  {
    return MEMORY[0x29EDCA190];
  }

  v18 = *(type metadata accessor for LabNameWithDate(0) - 8);
  v28 = v11;
  v32 = (v11 + 32);
  v33 = (v11 + 48);
  v19 = a3 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
  v20 = *(v18 + 72);
  v35 = MEMORY[0x29EDCA190];
  v29 = v10;
  v30 = a1;
  v27 = v20;
  while (1)
  {
    a1(v19);
    if (v3)
    {
      break;
    }

    if ((*v33)(v9, 1, v10) == 1)
    {
      sub_29D597004(v9, sub_29D5967A0);
    }

    else
    {
      v21 = v31;
      v22 = *v32;
      (*v32)(v31, v9, v10);
      v22(v34, v21, v10);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v35 = sub_29D5153E8(0, *(v35 + 2) + 1, 1, v35);
      }

      v24 = *(v35 + 2);
      v23 = *(v35 + 3);
      if (v24 >= v23 >> 1)
      {
        v35 = sub_29D5153E8((v23 > 1), v24 + 1, 1, v35);
      }

      v25 = v35;
      *(v35 + 2) = v24 + 1;
      v10 = v29;
      v22(&v25[((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v24], v34, v29);
      a1 = v30;
      v20 = v27;
    }

    v19 += v20;
    if (!--v17)
    {
      return v35;
    }
  }

  return v35;
}

void *sub_29D58C0FC(void (*a1)(void), uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v40 = a2;
  sub_29D4B4AD4(0);
  MEMORY[0x2A1C7C4A8](v8 - 8, v9);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29D5B134C();
  v14 = MEMORY[0x2A1C7C4A8](v12, v13);
  v39 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14, v16);
  v36 = &v33 - v18;
  v19 = *(a3 + 16);
  if (!v19)
  {
    return MEMORY[0x29EDCA190];
  }

  v20 = v17;
  v21 = *(a4(0) - 8);
  v35 = v20;
  v37 = (v20 + 32);
  v38 = (v20 + 48);
  v22 = a3 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
  v23 = *(v21 + 72);
  v41 = MEMORY[0x29EDCA190];
  v33 = v12;
  v34 = a1;
  while (1)
  {
    a1(v22);
    if (v4)
    {
      break;
    }

    if ((*v38)(v11, 1, v12) == 1)
    {
      sub_29D597004(v11, sub_29D4B4AD4);
    }

    else
    {
      v24 = v23;
      v25 = v36;
      v26 = *v37;
      (*v37)(v36);
      (v26)(v39, v25, v12);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v41 = sub_29D515230(0, v41[2] + 1, 1, v41);
      }

      v28 = v41[2];
      v27 = v41[3];
      v29 = v35;
      if (v28 >= v27 >> 1)
      {
        v31 = sub_29D515230((v27 > 1), v28 + 1, 1, v41);
        v29 = v35;
        v41 = v31;
      }

      v30 = v41;
      v41[2] = v28 + 1;
      v12 = v33;
      (v26)(v30 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v28, v39, v33);
      a1 = v34;
      v23 = v24;
    }

    v22 += v23;
    if (!--v19)
    {
      return v41;
    }
  }

  return v41;
}

uint64_t sub_29D58C444(uint64_t a1)
{
  result = MEMORY[0x29ED5E7A0](*(a1 + 16), MEMORY[0x29EDC99B0], MEMORY[0x29EDC99C0]);
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_29D59AD10(v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_29D58C560(uint64_t a1, uint64_t a2)
{
  v4 = sub_29D5B0E6C();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x2A1C7C4A8](v4, v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7, v10);
  v12 = &v25 - v11;
  sub_29D4D2828(0);
  v15 = MEMORY[0x2A1C7C4A8](v13 - 8, v14);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v15 + 56);
  sub_29D59683C(a2, v17, sub_29D4B4C4C);
  sub_29D59683C(a1, &v17[v18], sub_29D4B4C4C);
  v19 = *(v5 + 48);
  LODWORD(a1) = v19(v17, 1, v4);
  v20 = v19(&v17[v18], 1, v4);
  if (a1 == 1)
  {
    if (v20 == 1)
    {
      v21 = 0;
    }

    else
    {
      sub_29D597004(&v17[v18], sub_29D4B4C4C);
      v21 = 1;
    }
  }

  else if (v20 == 1)
  {
    (*(v5 + 8))(v17, v4);
    v21 = 0;
  }

  else
  {
    v22 = *(v5 + 32);
    v22(v12, v17, v4);
    v22(v9, &v17[v18], v4);
    sub_29D597120(&qword_2A17A3DC8, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BE0]);
    v21 = sub_29D5B3DCC();
    v23 = *(v5 + 8);
    v23(v9, v4);
    v23(v12, v4);
  }

  return v21 & 1;
}

void *sub_29D58C810(void (*a1)(uint64_t *__return_ptr, char *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v32 = a1;
  v33 = a2;
  v6 = type metadata accessor for AccountNewRecordsData(0);
  v31 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6 - 8, v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a3 + 64;
  v11 = 1 << *(a3 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a3 + 64);
  v14 = (v11 + 63) >> 6;
  v34 = a3;

  v16 = 0;
  v17 = MEMORY[0x29EDCA190];
  for (i = v9; ; v9 = i)
  {
    v36 = v17;
    if (!v13)
    {
      while (1)
      {
        v18 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v18 >= v14)
        {
          goto LABEL_26;
        }

        v13 = *(v10 + 8 * v18);
        ++v16;
        if (v13)
        {
          v16 = v18;
          goto LABEL_11;
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
      return result;
    }

LABEL_11:
    sub_29D59683C(*(v34 + 56) + *(v31 + 72) * (__clz(__rbit64(v13)) | (v16 << 6)), v9, type metadata accessor for AccountNewRecordsData);
    v32(&v37, v9);
    if (v4)
    {
      break;
    }

    v35 = 0;
    result = sub_29D597004(v9, type metadata accessor for AccountNewRecordsData);
    v19 = v37;
    v20 = *(v37 + 16);
    v17 = v36;
    v21 = v36[2];
    v22 = v21 + v20;
    if (__OFADD__(v21, v20))
    {
      goto LABEL_28;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v22 <= v17[3] >> 1)
    {
      if (!*(v19 + 16))
      {
        goto LABEL_4;
      }
    }

    else
    {
      if (v21 <= v22)
      {
        v24 = v21 + v20;
      }

      else
      {
        v24 = v21;
      }

      v17 = sub_29D515934(isUniquelyReferenced_nonNull_native, v24, 1, v17);
      if (!*(v19 + 16))
      {
LABEL_4:

        if (v20)
        {
          goto LABEL_29;
        }

        goto LABEL_5;
      }
    }

    v25 = (v17[3] >> 1) - v17[2];
    result = type metadata accessor for LabNameWithDate(0);
    if (v25 < v20)
    {
      goto LABEL_30;
    }

    swift_arrayInitWithCopy();

    if (v20)
    {
      v26 = v17[2];
      v27 = __OFADD__(v26, v20);
      v28 = v26 + v20;
      if (v27)
      {
        goto LABEL_31;
      }

      v17[2] = v28;
    }

LABEL_5:
    v13 &= v13 - 1;
    v4 = v35;
  }

  sub_29D597004(v9, type metadata accessor for AccountNewRecordsData);

LABEL_26:

  return v36;
}

uint64_t sub_29D58CB0C()
{
  v1 = v0;
  sub_29D594128(0);
  v3 = *(v2 - 8);
  v163 = v2;
  v164 = v3;
  MEMORY[0x2A1C7C4A8](v2, v4);
  v162 = &v119 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D595170(0);
  v159 = v6 - 8;
  MEMORY[0x2A1C7C4A8](v6 - 8, v7);
  v158 = (&v119 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29D4B4C4C(0);
  MEMORY[0x2A1C7C4A8](v9 - 8, v10);
  v153 = &v119 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5952CC(0);
  v149 = v12;
  v151 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12, v13);
  v145 = &v119 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D595050(0);
  v154 = v15;
  v155 = *(v15 - 8);
  MEMORY[0x2A1C7C4A8](v15, v16);
  v147 = &v119 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D594FBC(0);
  v19 = *(v18 - 8);
  v156 = v18;
  v157 = v19;
  MEMORY[0x2A1C7C4A8](v18, v20);
  v150 = &v119 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D594F10(0);
  v23 = *(v22 - 8);
  v160 = v22;
  v161 = v23;
  MEMORY[0x2A1C7C4A8](v22, v24);
  v152 = &v119 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D59483C(0);
  v169 = v26;
  v174 = *(v26 - 8);
  MEMORY[0x2A1C7C4A8](v26, v27);
  v129 = &v119 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5945F4(0);
  v135 = v29;
  v136 = *(v29 - 8);
  MEMORY[0x2A1C7C4A8](v29, v30);
  v131 = &v119 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5943E8(0);
  v137 = v32;
  v138 = *(v32 - 8);
  MEMORY[0x2A1C7C4A8](v32, v33);
  v132 = &v119 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D594354(0);
  v139 = v35;
  v140 = *(v35 - 8);
  MEMORY[0x2A1C7C4A8](v35, v36);
  v133 = &v119 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5942A8(0);
  v141 = v38;
  v142 = *(v38 - 8);
  MEMORY[0x2A1C7C4A8](v38, v39);
  v134 = &v119 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D594214(0);
  v146 = v41;
  v148 = *(v41 - 8);
  MEMORY[0x2A1C7C4A8](v41, v42);
  v171 = &v119 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4FEF8C(0);
  v120 = v44;
  v121 = *(v44 - 8);
  MEMORY[0x2A1C7C4A8](v44, v45);
  v47 = &v119 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D594BA8(0);
  v124 = v48;
  v125 = *(v48 - 1);
  MEMORY[0x2A1C7C4A8](v48, v49);
  v122 = &v119 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D59497C(0);
  v126 = v51;
  v127 = *(v51 - 8);
  MEMORY[0x2A1C7C4A8](v51, v52);
  v123 = &v119 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5948D0(0);
  v167 = v54;
  v144 = *(v54 - 8);
  MEMORY[0x2A1C7C4A8](v54, v55);
  v173 = &v119 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_29D5B23CC();
  v58 = *(v57 - 8);
  MEMORY[0x2A1C7C4A8](v57, v59);
  v61 = &v119 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4C17A4(0);
  v168 = v62;
  v143 = *(v62 - 8);
  MEMORY[0x2A1C7C4A8](v62, v63);
  v170 = &v119 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = *(v0 + 16);
  v66 = [v65 healthStore];
  sub_29D5B26AC();
  swift_allocObject();
  v166 = sub_29D5B269C();
  (*(v58 + 104))(v61, *MEMORY[0x29EDC41B8], v57);
  v67 = sub_29D5B268C();
  (*(v58 + 8))(v61, v57);
  v175 = v67;
  sub_29D4C188C(0);
  sub_29D4C1354(0);
  v68 = MEMORY[0x29EDB8A00];
  v165 = MEMORY[0x29EDB8A00];
  sub_29D597120(&qword_2A1A16880, sub_29D4C188C, MEMORY[0x29EDB8A00]);
  sub_29D597120(&qword_2A1A16870, sub_29D4C1354, v68);
  v172 = v1;

  sub_29D5B3B8C();

  v69 = [v65 healthStore];
  sub_29D5B233C();
  swift_allocObject();
  v70 = sub_29D5B232C();
  v71 = [v65 healthStore];
  v72 = [objc_allocWithZone(MEMORY[0x29EDC3E10]) initWithHealthStore_];

  *(swift_allocObject() + 16) = v72;
  v73 = MEMORY[0x29EDB8AD0];
  sub_29D5953B8(0, &qword_2A1A16598, MEMORY[0x29EDB8AD0]);
  sub_29D594E20(&qword_2A1A165A0, &qword_2A1A16598, v73, MEMORY[0x29EDB8AD8]);
  v130 = v72;
  sub_29D5B3A9C();
  sub_29D597120(&qword_2A1A16520, sub_29D4FEF8C, MEMORY[0x29EDB8AE8]);
  v74 = v120;
  v75 = sub_29D5B3B1C();
  (*(v121 + 8))(v47, v74);
  v175 = v75;
  sub_29D5B396C();
  v76 = MEMORY[0x29EDB89F8];
  sub_29D5953B8(0, &qword_2A1A16728, MEMORY[0x29EDB89F8]);
  sub_29D48F51C(0, &qword_2A1A19640, 0x29EDC3E08);
  sub_29D594CB4(0);
  v77 = v165;
  sub_29D594E20(&qword_2A1A16730, &qword_2A1A16728, v76, v165);
  v120 = MEMORY[0x29EDB89C0];
  sub_29D597120(&qword_2A1A168F0, sub_29D594CB4, MEMORY[0x29EDB89C0]);
  v78 = v122;
  sub_29D5B3BFC();

  v79 = swift_allocObject();
  *(v79 + 16) = v172;
  *(v79 + 24) = v70;
  v128 = v70;

  sub_29D5B396C();
  sub_29D594B24(0);
  v80 = MEMORY[0x29EDB89A8];
  sub_29D597120(&qword_2A1A169C0, sub_29D594BA8, MEMORY[0x29EDB89A8]);
  sub_29D597120(&qword_2A1A16860, sub_29D594B24, v77);
  v81 = v123;
  v82 = v124;
  sub_29D5B3BEC();

  (*(v125 + 8))(v78, v82);
  v175 = MEMORY[0x29EDCA198];
  sub_29D594E64(0);
  sub_29D597120(&qword_2A1A16A10, sub_29D59497C, v80);
  v83 = v126;
  sub_29D5B3BBC();
  (*(v127 + 8))(v81, v83);
  v175 = sub_29D57A898(MEMORY[0x29EDCA190]);
  v126 = sub_29D597120(&qword_2A1A16C68, sub_29D5948D0, MEMORY[0x29EDB8980]);
  v84 = v129;
  sub_29D5B3B4C();

  sub_29D5B396C();
  sub_29D5946E0(0);
  v127 = MEMORY[0x29EDB88C8];
  v125 = sub_29D597120(&qword_2A1A17028, sub_29D59483C, MEMORY[0x29EDB88C8]);
  sub_29D597120(&qword_2A1A16910, sub_29D5946E0, v120);
  v85 = v131;
  v86 = v169;
  sub_29D5B3C6C();
  v87 = *(v174 + 8);
  v174 += 8;
  v124 = v87;
  v87(v84, v86);
  v88 = swift_allocObject();
  *(v88 + 16) = v166;
  *(v88 + 24) = v172;

  sub_29D5B396C();
  sub_29D5944D4(0);
  v121 = v80;
  sub_29D597120(&qword_2A1A169D0, sub_29D5945F4, v80);
  v123 = MEMORY[0x29EDB8870];
  sub_29D597120(&qword_2A1A17250, sub_29D5944D4, MEMORY[0x29EDB8870]);
  v89 = v132;
  v90 = v135;
  sub_29D5B3C6C();

  (*(v136 + 8))(v85, v90);
  sub_29D597120(&qword_2A1A16A30, sub_29D5943E8, v80);
  v91 = v133;
  v92 = v137;
  sub_29D5B3BAC();
  (*(v138 + 8))(v89, v92);
  type metadata accessor for AccountNewRecordsData(0);
  sub_29D597120(&qword_2A1A16C88, sub_29D594354, MEMORY[0x29EDB8968]);
  v93 = v134;
  v94 = v139;
  sub_29D5B3B7C();
  (*(v140 + 8))(v91, v94);
  v140 = MEMORY[0x29EDB8908];
  sub_29D597120(&qword_2A1A16E78, sub_29D5942A8, MEMORY[0x29EDB8908]);
  v95 = v141;
  sub_29D5B3BDC();
  (*(v142 + 8))(v93, v95);
  v96 = MEMORY[0x29EDCA190];
  v175 = sub_29D57A898(MEMORY[0x29EDCA190]);
  sub_29D5B3B4C();

  sub_29D597120(&qword_2A1A16DF8, sub_29D4C17A4, MEMORY[0x29EDB8928]);
  v97 = v145;
  v98 = v169;
  sub_29D5B3B6C();
  v124(v84, v98);
  v99 = swift_allocObject();
  *(v99 + 16) = sub_29D595AA4;
  *(v99 + 24) = v172;

  sub_29D5B396C();
  sub_29D59513C(0);
  v100 = v123;
  sub_29D597120(&qword_2A1A17270, sub_29D5952CC, v123);
  sub_29D597120(&qword_2A1A16700, sub_29D59513C, v165);
  v101 = v147;
  v102 = v149;
  sub_29D5B3C5C();

  (*(v151 + 8))(v97, v102);
  v103 = sub_29D57A898(v96);
  v104 = sub_29D5B0E6C();
  v105 = v153;
  (*(*(v104 - 8) + 56))(v153, 1, 1, v104);
  v106 = v158;
  v107 = *(v159 + 72);
  *v158 = v96;
  *(v106 + 8) = v103;
  sub_29D596E38(v105, v106 + v107, sub_29D4B4C4C);
  sub_29D597120(&qword_2A1A16A80, sub_29D595050, v121);
  v108 = v150;
  v109 = v154;
  sub_29D5B3B4C();
  sub_29D597004(v106, sub_29D595170);
  (*(v155 + 8))(v101, v109);
  type metadata accessor for AllAccountsLabRecordsData(0);
  sub_29D597120(&qword_2A1A17018, sub_29D594FBC, v127);
  v110 = v152;
  v111 = v156;
  sub_29D5B3B7C();
  (*(v157 + 8))(v108, v111);
  sub_29D597120(&qword_2A1A16B30, sub_29D594214, MEMORY[0x29EDB89A0]);
  sub_29D597120(&qword_2A1A16EA8, sub_29D594F10, v140);
  v112 = v162;
  v113 = v146;
  v114 = v160;
  v115 = v171;
  sub_29D5B3B6C();
  sub_29D597120(&qword_2A1A17240, sub_29D594128, v100);
  v116 = v163;
  v117 = sub_29D5B3B1C();

  (*(v164 + 8))(v112, v116);
  (*(v161 + 8))(v110, v114);
  (*(v148 + 8))(v115, v113);
  (*(v144 + 8))(v173, v167);
  (*(v143 + 8))(v170, v168);
  return v117;
}

uint64_t sub_29D58E370(void *a1)
{
  sub_29D596EA0(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9[1] = *a1;
  sub_29D594D58(0, &qword_2A1A16420, &qword_2A1A19640, 0x29EDC3E08);
  sub_29D594DB0();
  sub_29D5B3FEC();
  sub_29D4B3AF4();
  sub_29D5B391C();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_29D58E4A4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_29D59287C(0);
  MEMORY[0x2A1C7C4A8](v6 - 8, v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AccountNewRecordsData(0);
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10, v12);
  v14 = (&v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *a1;
  sub_29D59683C(a2, v9, sub_29D59287C);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_29D597004(v9, sub_29D59287C);
    *a3 = v15;
  }

  else
  {
    sub_29D596E38(v9, v14, type metadata accessor for AccountNewRecordsData);
    sub_29D596FA0(0, &qword_2A17A5170, sub_29D57C2A4, MEMORY[0x29EDC9E90]);
    sub_29D57C2A4(0);
    v18 = v17 - 8;
    v19 = (*(*(v17 - 8) + 80) + 32) & ~*(*(v17 - 8) + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_29D5B62A0;
    v21 = v20 + v19;
    v22 = *(v18 + 56);
    v23 = *v14;

    v24 = [v23 identifier];
    sub_29D5B0EBC();

    sub_29D59683C(v14, v21 + v22, type metadata accessor for AccountNewRecordsData);
    v25 = sub_29D57A898(v20);
    swift_setDeallocating();
    sub_29D597004(v21, sub_29D57C2A4);
    swift_deallocClassInstance();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = v15;
    sub_29D596920(v25, sub_29D5954A8, 0, isUniquelyReferenced_nonNull_native, &v29);

    v27 = v29;
    result = sub_29D597004(v14, type metadata accessor for AccountNewRecordsData);
    *a3 = v27;
  }

  return result;
}

uint64_t sub_29D58E800()
{
  sub_29D594790(0);
  sub_29D597120(&qword_2A1A164D0, sub_29D594790, MEMORY[0x29EDC98D8]);
  return sub_29D5B3FEC();
}

uint64_t sub_29D58E88C@<X0>(id *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v35 = a2;
  v32 = a1;
  v42 = a3;
  v39 = type metadata accessor for AccountNewRecordsData(0);
  MEMORY[0x2A1C7C4A8](v39, v4);
  v38 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5945C0(0);
  v7 = *(v6 - 8);
  v40 = v6;
  v41 = v7;
  MEMORY[0x2A1C7C4A8](v6, v8);
  v34 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29D5B23CC();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10, v12);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4C17A4(0);
  v16 = *(v15 - 8);
  v36 = v15;
  v37 = v16;
  MEMORY[0x2A1C7C4A8](v15, v17);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_29D5B0EDC();
  v33 = v20;
  v21 = *(v20 - 8);
  MEMORY[0x2A1C7C4A8](v20, v22);
  v24 = &v32 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = [*a1 identifier];
  sub_29D5B0EBC();

  (*(v21 + 16))(v14, v24, v20);
  (*(v11 + 104))(v14, *MEMORY[0x29EDC41D0], v10);
  v26 = sub_29D5B268C();
  (*(v11 + 8))(v14, v10);
  v43 = v26;
  sub_29D4C188C(0);
  sub_29D4C1354(0);
  v27 = MEMORY[0x29EDB8A00];
  sub_29D597120(&qword_2A1A16880, sub_29D4C188C, MEMORY[0x29EDB8A00]);
  sub_29D597120(&qword_2A1A16870, sub_29D4C1354, v27);

  sub_29D5B3B8C();

  sub_29D59683C(v32, v38, type metadata accessor for AccountNewRecordsData);
  v28 = v34;
  sub_29D5B3A2C();
  sub_29D597120(&qword_2A1A16DF8, sub_29D4C17A4, MEMORY[0x29EDB8928]);
  sub_29D597120(&qword_2A1A16618, sub_29D5945C0, MEMORY[0x29EDB8AB8]);
  v29 = v36;
  v30 = v40;
  sub_29D5B3B6C();
  (*(v41 + 8))(v28, v30);
  (*(v37 + 8))(v19, v29);
  return (*(v21 + 8))(v24, v33);
}