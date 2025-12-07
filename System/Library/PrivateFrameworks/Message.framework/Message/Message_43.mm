uint64_t sub_1B0AB41D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetermineMessageBatches.TaskState(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0AB424C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t getEnumTagSinglePayload for DetermineMessageBatches.CommandID(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for DetermineMessageBatches.CommandID(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_1B0AB4370()
{
  result = qword_1EB6E4060;
  if (!qword_1EB6E4060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E4060);
  }

  return result;
}

void sub_1B0AB4404(uint64_t a1)
{
  sub_1B0AA95BC(319);
  if (v1 <= 0x3F)
  {
    sub_1B0AB44A4(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B0AB44A4(uint64_t a1)
{
  if (!qword_1EB6DE3D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
    v1 = sub_1B0E45D88();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB6DE3D0);
    }
  }
}

void sub_1B0AB451C(uint64_t a1)
{
  v2 = type metadata accessor for MailboxTaskLogger(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v19 - v6;
  sub_1B0A92638(a1, v19 - v6);
  sub_1B0A92638(a1, v4);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v8 = sub_1B0E43988();
  v9 = sub_1B0E45908();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v10 = 68159235;
    *(v10 + 4) = 2;
    *(v10 + 8) = 256;
    v12 = &v4[*(v2 + 20)];
    *(v10 + 10) = *v12;
    *(v10 + 11) = 2082;
    v13 = &v7[*(v2 + 20)];
    *(v10 + 13) = sub_1B0399D64(*(v13 + 1), *(v13 + 2), &v21);
    *(v10 + 21) = 1040;
    *(v10 + 23) = 2;
    *(v10 + 27) = 512;
    v14 = *(v12 + 12);
    sub_1B0A9269C(v4);
    *(v10 + 29) = v14;
    *(v10 + 31) = 2160;
    *(v10 + 33) = 0x786F626C69616DLL;
    *(v10 + 41) = 2085;
    v15 = *(v13 + 4);
    LODWORD(v13) = *(v13 + 10);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0A9269C(v7);
    v19[1] = v15;
    v20 = v13;
    v16 = sub_1B0E44BA8();
    v18 = sub_1B0399D64(v16, v17, &v21);

    *(v10 + 43) = v18;
    _os_log_impl(&dword_1B0389000, v8, v9, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task.", v10, 0x33u);
    swift_arrayDestroy();
    MEMORY[0x1B272C230](v11, -1, -1);
    MEMORY[0x1B272C230](v10, -1, -1);
  }

  else
  {
    sub_1B0A9269C(v4);

    sub_1B0A9269C(v7);
  }
}

uint64_t sub_1B0AB479C(uint64_t a1, uint64_t a2)
{
  v131 = a1;
  v132 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2780, &unk_1B0E9C5E0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v119 = &v119 - v3;
  v130 = type metadata accessor for MailboxTaskLogger(0);
  MEMORY[0x1EEE9AC00](v130);
  v126 = &v119 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v127 = &v119 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v129 = &v119 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v121 = &v119 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v120 = &v119 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v122 = &v119 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3670, &unk_1B0E9B260);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v119 - v16;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v18 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v125);
  v123 = &v119 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v119 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v124 = &v119 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3920, &qword_1B0E9B070);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v27 = &v119 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v128 = &v119 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v119 - v32;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v119 - v35;
  MEMORY[0x1EEE9AC00](v37);
  v133 = &v119 - v38;
  v39 = type metadata accessor for DetermineNewestMessages(0);
  sub_1B03B5C80(v134 + *(v39 + 32), v27, &qword_1EB6E3920, &qword_1B0E9B070);
  if ((*(v29 + 48))(v27, 1, v28) == 1)
  {
    sub_1B0398EFC(v27, &qword_1EB6E3920, &qword_1B0E9B070);
    v40 = v132;
    v41 = v127;
    sub_1B0A92638(v132, v127);
    v42 = v126;
    sub_1B0A92638(v40, v126);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v43 = sub_1B0E43988();
    v44 = sub_1B0E458E8();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v137[0] = v46;
      *v45 = 68159235;
      *(v45 + 4) = 2;
      *(v45 + 8) = 256;
      v47 = v130;
      v48 = v42 + *(v130 + 20);
      *(v45 + 10) = *v48;
      *(v45 + 11) = 2082;
      v49 = v41 + *(v47 + 20);
      *(v45 + 13) = sub_1B0399D64(*(v49 + 8), *(v49 + 16), v137);
      *(v45 + 21) = 1040;
      *(v45 + 23) = 2;
      *(v45 + 27) = 512;
      v50 = *(v48 + 24);
      sub_1B0A9269C(v42);
      *(v45 + 29) = v50;
      *(v45 + 31) = 2160;
      *(v45 + 33) = 0x786F626C69616DLL;
      *(v45 + 41) = 2085;
      v51 = *(v49 + 32);
      v52 = *(v49 + 40);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0A9269C(v41);
      v135 = v51;
      v136 = v52;
      v53 = sub_1B0E44BA8();
      v55 = sub_1B0399D64(v53, v54, v137);

      *(v45 + 43) = v55;
      _os_log_impl(&dword_1B0389000, v43, v44, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Did not get any UIDs", v45, 0x33u);
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v46, -1, -1);
      MEMORY[0x1B272C230](v45, -1, -1);
    }

    else
    {
      sub_1B0A9269C(v42);

      sub_1B0A9269C(v41);
    }

    v59 = v131;
    v60 = v133;
    sub_1B03D06F8();
    v61 = sub_1B0E46EE8();
    goto LABEL_21;
  }

  v56 = v132;
  sub_1B03C60A4(v27, v36, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  sub_1B03B5C80(v36, v33, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  v127 = v28;
  v57 = v36;
  if (MessageIdentifierSet.count.getter() < 1)
  {
    sub_1B0398EFC(v33, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v58 = 1;
  }

  else
  {
    sub_1B03C60A4(v33, v22, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    sub_1B03C60A4(v22, v17, &unk_1EB6E26C0, &unk_1B0E9DE10);
    v58 = 0;
  }

  v60 = v133;
  v62 = v56;
  v63 = v125;
  (*(v18 + 56))(v17, v58, 1, v125);
  v64 = (*(v18 + 48))(v17, 1, v63);
  v66 = v128;
  v65 = v129;
  if (v64 == 1)
  {
    sub_1B0398EFC(v17, &unk_1EB6E3670, &unk_1B0E9B260);
    v67 = v121;
    sub_1B0A92638(v62, v121);
    sub_1B0A92638(v62, v65);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v68 = sub_1B0E43988();
    v69 = sub_1B0E45908();
    v70 = os_log_type_enabled(v68, v69);
    v59 = v131;
    if (v70)
    {
      v71 = swift_slowAlloc();
      v132 = swift_slowAlloc();
      v133 = v57;
      v137[0] = v132;
      *v71 = 68159235;
      *(v71 + 4) = 2;
      *(v71 + 8) = 256;
      v72 = v130;
      v73 = v65 + *(v130 + 20);
      *(v71 + 10) = *v73;
      *(v71 + 11) = 2082;
      v74 = v65;
      v75 = v67 + *(v72 + 20);
      *(v71 + 13) = sub_1B0399D64(*(v75 + 8), *(v75 + 16), v137);
      *(v71 + 21) = 1040;
      *(v71 + 23) = 2;
      *(v71 + 27) = 512;
      v76 = *(v73 + 24);
      sub_1B0A9269C(v74);
      *(v71 + 29) = v76;
      *(v71 + 31) = 2160;
      *(v71 + 33) = 0x786F626C69616DLL;
      *(v71 + 41) = 2085;
      v77 = *(v75 + 32);
      LODWORD(v73) = *(v75 + 40);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0A9269C(v67);
      v135 = v77;
      v136 = v73;
      v78 = sub_1B0E44BA8();
      v80 = sub_1B0399D64(v78, v79, v137);

      *(v71 + 43) = v80;
      _os_log_impl(&dword_1B0389000, v68, v69, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Persistence returned empty list as newest UIDs.", v71, 0x33u);
      v81 = v132;
      swift_arrayDestroy();
      v57 = v133;
      MEMORY[0x1B272C230](v81, -1, -1);
      MEMORY[0x1B272C230](v71, -1, -1);
    }

    else
    {
      sub_1B0A9269C(v65);

      sub_1B0A9269C(v67);
    }

    goto LABEL_20;
  }

  v82 = v17;
  v83 = v124;
  sub_1B03C60A4(v82, v124, &unk_1EB6E26C0, &unk_1B0E9DE10);
  v84 = v122;
  sub_1B0A92638(v62, v122);
  v85 = v120;
  sub_1B0A92638(v62, v120);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v133 = v57;
  sub_1B03B5C80(v57, v66, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  v86 = v123;
  sub_1B03B5C80(v83, v123, &unk_1EB6E26C0, &unk_1B0E9DE10);
  v87 = sub_1B0E43988();
  v88 = sub_1B0E45908();
  if (!os_log_type_enabled(v87, v88))
  {
    sub_1B0398EFC(v66, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    sub_1B0A9269C(v85);

    sub_1B0398EFC(v86, &unk_1EB6E26C0, &unk_1B0E9DE10);
    sub_1B0A9269C(v84);
    v112 = v83;
    goto LABEL_19;
  }

  LODWORD(v132) = v88;
  v89 = swift_slowAlloc();
  v129 = swift_slowAlloc();
  v137[0] = v129;
  *v89 = 68159747;
  *(v89 + 4) = 2;
  *(v89 + 8) = 256;
  v90 = v130;
  v91 = v85 + *(v130 + 20);
  *(v89 + 10) = *v91;
  *(v89 + 11) = 2082;
  v92 = v66;
  v93 = v84;
  v94 = v84 + *(v90 + 20);
  *(v89 + 13) = sub_1B0399D64(*(v94 + 8), *(v94 + 16), v137);
  *(v89 + 21) = 1040;
  *(v89 + 23) = 2;
  *(v89 + 27) = 512;
  v95 = *(v91 + 24);
  sub_1B0A9269C(v85);
  *(v89 + 29) = v95;
  *(v89 + 31) = 2160;
  *(v89 + 33) = 0x786F626C69616DLL;
  *(v89 + 41) = 2085;
  v96 = *(v94 + 32);
  LODWORD(v91) = *(v94 + 40);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0A9269C(v93);
  v135 = v96;
  v136 = v91;
  v97 = sub_1B0E44BA8();
  v99 = sub_1B0399D64(v97, v98, v137);

  *(v89 + 43) = v99;
  *(v89 + 51) = 2048;
  v100 = MessageIdentifierSet.count.getter();
  sub_1B0398EFC(v92, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  *(v89 + 53) = v100;
  *(v89 + 61) = 2082;
  result = sub_1B0B4AAF0();
  if ((result & 0x100000000) != 0)
  {
    goto LABEL_25;
  }

  v102 = result;
  v103 = v119;
  MessageIdentifierSet.ranges.getter(v119);
  v104 = sub_1B0B4A3E8();
  v106 = v105;
  result = sub_1B0398EFC(v103, &unk_1EB6E2780, &unk_1B0E9C5E0);
  if (v106)
  {
LABEL_26:
    __break(1u);
    return result;
  }

  if (HIDWORD(v104) < v102)
  {
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v135 = __PAIR64__(HIDWORD(v104), v102);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2640, &qword_1B0E9B010);
  v107 = MessageIdentifierRange.debugDescription.getter();
  v109 = v108;
  sub_1B0398EFC(v123, &unk_1EB6E26C0, &unk_1B0E9DE10);
  v110 = sub_1B0399D64(v107, v109, v137);

  *(v89 + 63) = v110;
  _os_log_impl(&dword_1B0389000, v87, v132, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Persistence returned %ld UIDs in range %{public}s as newest UIDs.", v89, 0x47u);
  v111 = v129;
  swift_arrayDestroy();
  MEMORY[0x1B272C230](v111, -1, -1);
  MEMORY[0x1B272C230](v89, -1, -1);

  v112 = v124;
LABEL_19:
  sub_1B0398EFC(v112, &unk_1EB6E26C0, &unk_1B0E9DE10);
  v59 = v131;
  v57 = v133;
LABEL_20:
  v61 = sub_1B03C60A4(v57, v60, &unk_1EB6E1AF0, &unk_1B0E9AF40);
LABEL_21:
  v113 = *(v134 + 88);
  v114 = *(v134 + 96);
  MEMORY[0x1EEE9AC00](v61);
  *(&v119 - 2) = v60;
  if (*(v59 + 192) == 1)
  {
    v116 = *(v59 + 176);
    v115 = *(v59 + 184);
    v135 = *(v59 + 168);
    v117 = v135;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0B2BE00(&v135, v113, v114, 0, sub_1B0AB5914);
    sub_1B03BB638(v117, v116, v115, 1);
    v118 = v135;
    *(v59 + 176) = 0;
    *(v59 + 184) = 0;
    *(v59 + 168) = v118;
    *(v59 + 192) = 1;
  }

  return sub_1B0398EFC(v60, &unk_1EB6E1AF0, &unk_1B0E9AF40);
}

uint64_t sub_1B0AB5594(uint64_t a1, uint64_t a2)
{
  v3 = a1 + *(type metadata accessor for MailboxSyncState(0) + 64);
  sub_1B0398EFC(v3, &qword_1EB6E4068, &unk_1B0EC2D20);
  sub_1B03B5C80(a2, v3, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  v4 = type metadata accessor for NewestMessages(0);
  v5 = *(v4 + 24);
  *(v3 + *(v4 + 20)) = 0;
  *(v3 + v5) = 0;
  v6 = *(*(v4 - 8) + 56);

  return v6(v3, 0, 1, v4);
}

double sub_1B0AB5654@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  v3 = *(v1 + 80);
  v4 = *(v1 + 88);
  v5 = *(v1 + 96);
  *a1 = *(v1 + 64);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return result;
}

double sub_1B0AB56A8()
{
  if (qword_1EB6DD760 != -1)
  {
    swift_once();
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return result;
}

uint64_t sub_1B0AB571C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB6E4070, &qword_1B0EC2D30);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

void sub_1B0AB5794(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t *a3@<X8>, double a4@<D0>)
{
  if (sub_1B0A9EA6C(a1, a2, a4))
  {
    v6 = 0xF000000000000007;
  }

  else
  {
    v7 = swift_allocObject();
    v8 = *(v4 + 72);
    *(v7 + 16) = *(v4 + 64);
    *(v7 + 24) = v8;
    *(v7 + 32) = 521;
    v6 = v7 | 0x4000000000000006;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  *a3 = v6;
}

unint64_t sub_1B0AB5834()
{
  result = qword_1EB6DD758;
  if (!qword_1EB6DD758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD758);
  }

  return result;
}

unint64_t sub_1B0AB5894(uint64_t a1)
{
  result = sub_1B0AB58BC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B0AB58BC()
{
  result = qword_1EB6DD750;
  if (!qword_1EB6DD750)
  {
    type metadata accessor for DetermineNewestMessages(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD750);
  }

  return result;
}

uint64_t sub_1B0AB591C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E35F0, &unk_1B0EA2050);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v23 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v23 - v14;
  result = sub_1B0AEB594(a2, a3, a4);
  if ((result & 1) != 0 && ((a1 >> 59) & 0x1E | (a1 >> 2) & 1) == 0xB)
  {
    v17 = swift_projectBox();
    sub_1B03B5C80(v17, v11, &qword_1EB6E35F0, &unk_1B0EA2050);
    v18 = *(v9 + 48);
    if (*(v4 + 72) == v11[1])
    {
      v19 = *(v11 + *(v9 + 64));
      v20 = sub_1B04520BC(*(v4 + 64), *v11);

      if (v20)
      {
        sub_1B03C60A4(v11 + v18, v15, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        if (v19 == 521)
        {
          v21 = *(type metadata accessor for DetermineNewestMessages(0) + 32);
          sub_1B0398EFC(v4 + v21, &qword_1EB6E3920, &qword_1B0E9B070);
          sub_1B03C60A4(v15, v4 + v21, &unk_1EB6E1AF0, &unk_1B0E9AF40);
          return (*(v13 + 56))(v4 + v21, 0, 1, v12);
        }

        v22 = v15;
        return sub_1B0398EFC(v22, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      }
    }

    else
    {
    }

    v22 = v11 + v18;
    return sub_1B0398EFC(v22, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  }

  return result;
}

uint64_t sub_1B0AB5B9C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B0AB5C30(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DirectedAcyclicGraph.Node(0, v3, *(v7 + 24), v8);
  (*(v4 + 16))(v6, a1, v3);
  v10 = sub_1B0AB5D64(v6);
  swift_getWitnessTable();
  sub_1B0E45588();
  sub_1B0E454D8();
}

uint64_t sub_1B0AB5D64(uint64_t a1)
{
  v2 = swift_allocObject();
  (*(*(*(*v2 + 80) - 8) + 32))(v2 + *(*v2 + 96), a1);
  return v2;
}

uint64_t sub_1B0AB5DF8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 80);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v19[-v10];
  v13 = *(*v12 + 96);
  swift_beginAccess();
  v14 = *(v6 + 16);
  v14(v11, a1 + v13, v5);
  v15 = *(*a2 + 96);
  swift_beginAccess();
  v14(v8, a2 + v15, v5);
  v16 = sub_1B0E44A28();
  v17 = *(v6 + 8);
  v17(v8, v5);
  v17(v11, v5);
  return v16 & 1;
}

uint64_t sub_1B0AB5FAC(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v9 - v5;
  v7 = *(v2 + 96);
  swift_beginAccess();
  (*(v4 + 16))(v6, v1 + v7, v3);
  sub_1B0E447C8();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1B0AB60F0()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));

  return swift_deallocClassInstance();
}

uint64_t sub_1B0AB61B4()
{
  sub_1B0E46C28();
  sub_1B0AB5FAC(v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0AB623C(uint64_t a1)
{
  sub_1B0E46C28();
  sub_1B0AB5FAC(v2);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0AB6288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for DirectedAcyclicGraph.Node(0, a1, a2, a4);
  v5 = sub_1B0E45258();
  if (sub_1B0E452A8())
  {
    WitnessTable = swift_getWitnessTable();
    v7 = sub_1B0AB67A0(v5, v4, WitnessTable);
  }

  else
  {
    v7 = MEMORY[0x1E69E7CD0];
  }

  v8 = swift_getWitnessTable();
  v9 = sub_1B0E45588();
  swift_getTupleTypeMetadata2();
  v10 = sub_1B0E45258();
  sub_1B0AA0980(v10, v4, v9, v8);

  v11 = sub_1B0E45258();
  sub_1B0AA0980(v11, v4, v9, v8);

  return v7;
}

uint64_t sub_1B0AB63E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  type metadata accessor for DirectedAcyclicGraph.Node(0, a7, a8, a4);
  swift_getWitnessTable();
  if ((sub_1B0E45478() & 1) == 0)
  {
    return 0;
  }

  sub_1B0E45588();
  swift_getWitnessTable();
  if ((sub_1B0E44758() & 1) == 0)
  {
    return 0;
  }

  return sub_1B0E44758();
}

uint64_t sub_1B0AB6514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for DirectedAcyclicGraph.Node(0, a5, a6, a4);
  swift_getWitnessTable();
  sub_1B0E45488();
  sub_1B0E45588();
  swift_getWitnessTable();
  sub_1B0E44748();

  return sub_1B0E44748();
}

uint64_t sub_1B0AB6618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1B0E46C28();
  sub_1B0AB6514(v11, a1, a2, a3, a4, a5);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0AB66B8(uint64_t a1, uint64_t a2)
{
  sub_1B0E46C28();
  sub_1B0AB6514(v5, *v2, v2[1], v2[2], *(a2 + 16), *(a2 + 24));
  return sub_1B0E46CB8();
}

uint64_t sub_1B0AB6728@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  v4 = sub_1B0AB6B5C(a2, *(a3 + 16), *(a3 + 24));
  v6 = v5;
  v8 = v7;

  *a1 = v4;
  a1[1] = v6;
  a1[2] = v8;
  return result;
}

uint64_t sub_1B0AB67A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v50 = &v38 - v10;
  v39 = v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v38 - v13;
  if (sub_1B0E452A8())
  {
    sub_1B0E46238();
    v15 = sub_1B0E46228();
  }

  else
  {
    v15 = MEMORY[0x1E69E7CD0];
  }

  v43 = sub_1B0E452A8();
  if (!v43)
  {
    return v15;
  }

  v16 = 0;
  v48 = (v6 + 16);
  v49 = v15 + 56;
  v45 = v6 + 32;
  v47 = (v6 + 8);
  v40 = v6;
  v41 = v5;
  v42 = v14;
  while (1)
  {
    v17 = sub_1B0E45288();
    sub_1B0E451E8();
    if (v17)
    {
      v18 = *(v6 + 16);
      v18(v14, (v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v16), a2);
      v19 = __OFADD__(v16, 1);
      v20 = v16 + 1;
      if (v19)
      {
        goto LABEL_20;
      }
    }

    else
    {
      result = sub_1B0E462E8();
      if (v39 != 8)
      {
        goto LABEL_23;
      }

      v51 = result;
      v18 = *v48;
      (*v48)(v14, &v51, a2);
      swift_unknownObjectRelease();
      v19 = __OFADD__(v16, 1);
      v20 = v16 + 1;
      if (v19)
      {
LABEL_20:
        __break(1u);
        return v15;
      }
    }

    v46 = v20;
    v44 = *(v6 + 32);
    v44(v50, v14, a2);
    v21 = sub_1B0E447B8();
    v22 = v15;
    v23 = -1 << *(v15 + 32);
    v24 = v21 & ~v23;
    v25 = v24 >> 6;
    v26 = *(v49 + 8 * (v24 >> 6));
    v27 = 1 << v24;
    v28 = *(v6 + 72);
    if (((1 << v24) & v26) != 0)
    {
      v29 = ~v23;
      do
      {
        v18(v8, (*(v22 + 48) + v28 * v24), a2);
        v30 = a3;
        v31 = sub_1B0E44A28();
        v32 = *v47;
        (*v47)(v8, a2);
        if (v31)
        {
          v32(v50, a2);
          a3 = v30;
          v6 = v40;
          v5 = v41;
          v15 = v22;
          goto LABEL_7;
        }

        v24 = (v24 + 1) & v29;
        v25 = v24 >> 6;
        v26 = *(v49 + 8 * (v24 >> 6));
        v27 = 1 << v24;
        a3 = v30;
      }

      while (((1 << v24) & v26) != 0);
      v6 = v40;
      v5 = v41;
    }

    v33 = v50;
    *(v49 + 8 * v25) = v27 | v26;
    v34 = *(v22 + 48) + v28 * v24;
    v15 = v22;
    result = (v44)(v34, v33, a2);
    v36 = *(v22 + 16);
    v19 = __OFADD__(v36, 1);
    v37 = v36 + 1;
    if (v19)
    {
      break;
    }

    *(v22 + 16) = v37;
LABEL_7:
    v14 = v42;
    v16 = v46;
    if (v46 == v43)
    {
      return v15;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1B0AB6B5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1B0AB6288(v9, v10, v10, v11);
  v24 = v12;
  v25 = v13;
  v26 = v14;
  if (sub_1B0E452A8())
  {
    v22 = v7;
    for (i = 0; ; ++i)
    {
      v16 = sub_1B0E45288();
      sub_1B0E451E8();
      if (v16)
      {
        (*(v6 + 16))(v8, a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * i, a2);
        v18 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_10;
        }
      }

      else
      {
        result = sub_1B0E462E8();
        if (v22 != 8)
        {
          __break(1u);
          return result;
        }

        v23 = result;
        (*(v6 + 16))(v8, &v23, a2);
        swift_unknownObjectRelease();
        v18 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_10:
          __break(1u);
          return v24;
        }
      }

      v19 = type metadata accessor for DirectedAcyclicGraph(0, a2, a3, v17);
      sub_1B0AB5C30(v8, v19);
      (*(v6 + 8))(v8, a2);
      if (v18 == sub_1B0E452A8())
      {
        return v24;
      }
    }
  }

  return v12;
}

uint64_t sub_1B0AB6D94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

BOOL sub_1B0AB6DEC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = sub_1B0AB8858(*a1, *(a1 + 8), *a2, *(a2 + 8));
  result = 0;
  if (v8 && v2 == v5)
  {
    return v4 == v7 && (sub_1B04520BC(v3, v6) & 1) != 0;
  }

  return result;
}

uint64_t sub_1B0AB6E74(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  v10 = sub_1B0AB8858(*a1, *(a1 + 8), *a2, *(a2 + 8));
  result = 0;
  if (v10 && v2 == v6 && v4 == v8)
  {
    return sub_1B04520BC(v3, v7) & (v5 == v9);
  }

  return result;
}

BOOL sub_1B0AB6F08(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  v6 = sub_1B0B63D20(*a1, *a2);
  v8 = v2 == v4 && v3 == v5;
  return (v6 & 1) != 0 && v8;
}

uint64_t sub_1B0AB6F5C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __s2[2] = *MEMORY[0x1E69E9840];
  v97 = *(a5 + 16);
  if (!v97)
  {
    return 0;
  }

  v5 = a4;
  v7 = a2;
  v8 = 0;
  v98 = a5 + 32;
  if (a1)
  {
    v9 = 0;
  }

  else
  {
    v9 = a2 == 0xC000000000000000;
  }

  v10 = a2 >> 62;
  v11 = !v9;
  v96 = v11;
  v88 = HIDWORD(a1);
  v12 = __OFSUB__(HIDWORD(a1), a1);
  v92 = v12;
  v91 = HIDWORD(a1) - a1;
  __n = BYTE6(a2);
  v89 = a1;
  v86 = (a1 >> 32) - a1;
  v87 = a1 >> 32;
  while (1)
  {
    v13 = (v98 + 48 * v8);
    v15 = *v13;
    v14 = v13[1];
    v17 = v13[3];
    v16 = v13[4];
    v18 = v14 >> 62;
    if (v14 >> 62 == 3)
    {
      if (v15)
      {
        v19 = 0;
      }

      else
      {
        v19 = v14 == 0xC000000000000000;
      }

      v21 = !v19 || v10 < 3;
      if (((v21 | v96) & 1) == 0)
      {
        v22 = 0;
        v23 = 0xC000000000000000;
        goto LABEL_53;
      }

LABEL_37:
      v24 = 0;
      if (v10 > 1)
      {
        goto LABEL_38;
      }

      goto LABEL_34;
    }

    if (v18 <= 1)
    {
      break;
    }

    if (v18 != 2)
    {
      goto LABEL_37;
    }

    v26 = *(v15 + 16);
    v25 = *(v15 + 24);
    v27 = __OFSUB__(v25, v26);
    v24 = v25 - v26;
    if (v27)
    {
      goto LABEL_165;
    }

    if (v10 > 1)
    {
      goto LABEL_38;
    }

LABEL_34:
    v28 = __n;
    if (v10)
    {
      v28 = v91;
      if (v92)
      {
        goto LABEL_164;
      }
    }

LABEL_40:
    if (v24 != v28)
    {
      goto LABEL_14;
    }

    if (v24 < 1)
    {
      goto LABEL_52;
    }

    if (v18 > 1)
    {
      if (v18 == 2)
      {
        v39 = *(v15 + 16);
        sub_1B03B2000(v15, v14);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v40 = sub_1B0E42A98();
        if (v40)
        {
          v41 = v40;
          v42 = sub_1B0E42AC8();
          if (__OFSUB__(v39, v42))
          {
            goto LABEL_168;
          }

          __s1 = (v39 - v42 + v41);
        }

        else
        {
          __s1 = 0;
        }

        v7 = a2;
        sub_1B0E42AB8();
        if (v10 == 2)
        {
          v76 = *(a1 + 24);
          v80 = *(a1 + 16);
          v51 = sub_1B0E42A98();
          if (v51)
          {
            v65 = sub_1B0E42AC8();
            v66 = v80;
            if (__OFSUB__(v80, v65))
            {
              goto LABEL_182;
            }

            v51 += v80 - v65;
          }

          else
          {
            v66 = v80;
          }

          v72 = v76 - v66;
          if (__OFSUB__(v76, v66))
          {
            goto LABEL_177;
          }

          v73 = sub_1B0E42AB8();
          if (v73 >= v72)
          {
            v54 = v72;
          }

          else
          {
            v54 = v73;
          }

          result = __s1;
          if (!__s1)
          {
            goto LABEL_193;
          }

          v5 = a4;
          if (!v51)
          {
            goto LABEL_192;
          }

LABEL_158:
          v7 = a2;
          if (result == v51)
          {
            goto LABEL_54;
          }

          goto LABEL_12;
        }

        if (v10 == 1)
        {
          if (v87 < v89)
          {
            goto LABEL_174;
          }

          v51 = sub_1B0E42A98();
          if (v51)
          {
            v52 = sub_1B0E42AC8();
            if (__OFSUB__(v89, v52))
            {
              goto LABEL_183;
            }

            v51 += v89 - v52;
          }

          v53 = sub_1B0E42AB8();
          v54 = v86;
          if (v53 < v86)
          {
            v54 = v53;
          }

          result = __s1;
          if (!__s1)
          {
            goto LABEL_191;
          }

          v5 = a4;
          if (!v51)
          {
            goto LABEL_190;
          }

LABEL_105:
          if (result == v51)
          {
            goto LABEL_54;
          }

LABEL_12:
          if (!memcmp(result, v51, v54))
          {
            goto LABEL_54;
          }

          goto LABEL_13;
        }

        v5 = a4;
        v49 = __s1;
        LODWORD(__s2[0]) = a1;
        BYTE4(__s2[0]) = v88;
        *(__s2 + 5) = *(&a1 + 5);
        HIBYTE(__s2[0]) = HIBYTE(a1);
        LODWORD(__s2[1]) = a2;
        WORD2(__s2[1]) = WORD2(a2);
        if (!__s1)
        {
          goto LABEL_189;
        }

        goto LABEL_127;
      }

      memset(__s2, 0, 14);
      if (!v10)
      {
LABEL_81:
        v99 = a1;
        v100 = v88;
        v101 = *(&a1 + 5);
        v102 = HIBYTE(a1);
        v103 = v7;
        v104 = BYTE2(v7);
        v105 = BYTE3(v7);
        v106 = BYTE4(v7);
        v107 = BYTE5(v7);
        sub_1B03B2000(v15, v14);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v49 = __s2;
        v50 = &v99;
        goto LABEL_128;
      }

      if (v10 != 2)
      {
        if (v87 < v89)
        {
          goto LABEL_170;
        }

        sub_1B03B2000(v15, v14);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v60 = sub_1B0E42A98();
        if (!v60)
        {
          sub_1B0E42AB8();
LABEL_187:
          __break(1u);
LABEL_188:
          __break(1u);
LABEL_189:
          __break(1u);
LABEL_190:
          __break(1u);
LABEL_191:
          __break(1u);
LABEL_192:
          __break(1u);
LABEL_193:
          __break(1u);
LABEL_194:
          __break(1u);
LABEL_195:
          __break(1u);
LABEL_196:
          __break(1u);
LABEL_197:
          result = sub_1B0E42AB8();
          __break(1u);
LABEL_198:
          __break(1u);
LABEL_199:
          __break(1u);
LABEL_200:
          __break(1u);
LABEL_201:
          __break(1u);
          return result;
        }

        v61 = v60;
        v62 = sub_1B0E42AC8();
        if (__OFSUB__(v89, v62))
        {
          goto LABEL_176;
        }

        v34 = (v89 - v62 + v61);
        v35 = sub_1B0E42AB8();
        if (!v34)
        {
          goto LABEL_187;
        }

        goto LABEL_114;
      }

      v78 = *(a1 + 24);
      __s1b = *(a1 + 16);
      sub_1B03B2000(v15, v14);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v46 = sub_1B0E42A98();
      if (v46)
      {
        v47 = sub_1B0E42AC8();
        v48 = __s1b;
        if (__OFSUB__(__s1b, v47))
        {
          goto LABEL_180;
        }

        v46 = &__s1b[v46 - v47];
      }

      else
      {
        v48 = __s1b;
      }

      v69 = v78 - v48;
      if (__OFSUB__(v78, v48))
      {
        goto LABEL_172;
      }

      v70 = sub_1B0E42AB8();
      if (!v46)
      {
        goto LABEL_188;
      }
    }

    else
    {
      if (v18)
      {
        if (v15 > v15 >> 32)
        {
          goto LABEL_167;
        }

        sub_1B03B2000(v15, v14);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v43 = sub_1B0E42A98();
        if (v43)
        {
          v44 = v43;
          v45 = sub_1B0E42AC8();
          if (__OFSUB__(v15, v45))
          {
            goto LABEL_169;
          }

          __s1a = (v15 - v45 + v44);
        }

        else
        {
          __s1a = 0;
        }

        v7 = a2;
        sub_1B0E42AB8();
        if (v10 == 2)
        {
          v77 = *(a1 + 24);
          v81 = *(a1 + 16);
          v51 = sub_1B0E42A98();
          if (v51)
          {
            v67 = sub_1B0E42AC8();
            v68 = v81;
            if (__OFSUB__(v81, v67))
            {
              goto LABEL_184;
            }

            v51 += v81 - v67;
          }

          else
          {
            v68 = v81;
          }

          v74 = v77 - v68;
          if (__OFSUB__(v77, v68))
          {
            goto LABEL_179;
          }

          v75 = sub_1B0E42AB8();
          if (v75 >= v74)
          {
            v54 = v74;
          }

          else
          {
            v54 = v75;
          }

          result = __s1a;
          if (!__s1a)
          {
            goto LABEL_201;
          }

          v5 = a4;
          if (!v51)
          {
            goto LABEL_200;
          }

          goto LABEL_158;
        }

        if (v10 == 1)
        {
          if (v87 < v89)
          {
            goto LABEL_178;
          }

          v51 = sub_1B0E42A98();
          if (v51)
          {
            v56 = sub_1B0E42AC8();
            if (__OFSUB__(v89, v56))
            {
              goto LABEL_185;
            }

            v51 += v89 - v56;
          }

          v57 = sub_1B0E42AB8();
          v54 = v86;
          if (v57 < v86)
          {
            v54 = v57;
          }

          result = __s1a;
          if (!__s1a)
          {
            goto LABEL_199;
          }

          v5 = a4;
          if (!v51)
          {
            goto LABEL_198;
          }

          goto LABEL_105;
        }

        v5 = a4;
        v49 = __s1a;
        LODWORD(__s2[0]) = a1;
        BYTE4(__s2[0]) = v88;
        *(__s2 + 5) = *(&a1 + 5);
        HIBYTE(__s2[0]) = HIBYTE(a1);
        LODWORD(__s2[1]) = a2;
        WORD2(__s2[1]) = WORD2(a2);
        if (!__s1a)
        {
          goto LABEL_194;
        }

LABEL_127:
        v50 = __s2;
LABEL_128:
        if (!memcmp(v49, v50, __n))
        {
          goto LABEL_54;
        }

        goto LABEL_13;
      }

      __s2[0] = v15;
      LOWORD(__s2[1]) = v14;
      BYTE2(__s2[1]) = BYTE2(v14);
      BYTE3(__s2[1]) = BYTE3(v14);
      BYTE4(__s2[1]) = BYTE4(v14);
      BYTE5(__s2[1]) = BYTE5(v14);
      if (!v10)
      {
        goto LABEL_81;
      }

      if (v10 == 1)
      {
        if (v87 < v89)
        {
          goto LABEL_171;
        }

        sub_1B03B2000(v15, v14);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v31 = sub_1B0E42A98();
        if (!v31)
        {
          goto LABEL_197;
        }

        v32 = v31;
        v33 = sub_1B0E42AC8();
        if (__OFSUB__(v89, v33))
        {
          goto LABEL_175;
        }

        v34 = (v89 - v33 + v32);
        v35 = sub_1B0E42AB8();
        if (!v34)
        {
          goto LABEL_196;
        }

LABEL_114:
        if (v35 >= v86)
        {
          v63 = v86;
        }

        else
        {
          v63 = v35;
        }

        v64 = memcmp(__s2, v34, v63);
        goto LABEL_141;
      }

      v79 = *(a1 + 24);
      __s1c = *(a1 + 16);
      sub_1B03B2000(v15, v14);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v46 = sub_1B0E42A98();
      if (v46)
      {
        v58 = sub_1B0E42AC8();
        v59 = __s1c;
        if (__OFSUB__(__s1c, v58))
        {
          goto LABEL_181;
        }

        v46 = &__s1c[v46 - v58];
      }

      else
      {
        v59 = __s1c;
      }

      v69 = v79 - v59;
      if (__OFSUB__(v79, v59))
      {
        goto LABEL_173;
      }

      v70 = sub_1B0E42AB8();
      if (!v46)
      {
        goto LABEL_195;
      }
    }

    if (v70 >= v69)
    {
      v71 = v69;
    }

    else
    {
      v71 = v70;
    }

    v64 = memcmp(__s2, v46, v71);
    v7 = a2;
LABEL_141:
    v5 = a4;
    if (!v64)
    {
      goto LABEL_54;
    }

LABEL_13:
    sub_1B0391D50(v15, v14);

LABEL_14:
    if (++v8 == v97)
    {
      return 0;
    }
  }

  if (!v18)
  {
    v24 = BYTE6(v14);
    if (v10 > 1)
    {
      goto LABEL_38;
    }

    goto LABEL_34;
  }

  LODWORD(v24) = HIDWORD(v15) - v15;
  if (__OFSUB__(HIDWORD(v15), v15))
  {
    goto LABEL_166;
  }

  v24 = v24;
  if (v10 <= 1)
  {
    goto LABEL_34;
  }

LABEL_38:
  if (v10 == 2)
  {
    v30 = *(a1 + 16);
    v29 = *(a1 + 24);
    v27 = __OFSUB__(v29, v30);
    v28 = v29 - v30;
    if (v27)
    {
      goto LABEL_163;
    }

    goto LABEL_40;
  }

  if (v24)
  {
    goto LABEL_14;
  }

LABEL_52:
  v22 = v15;
  v23 = v14;
LABEL_53:
  sub_1B03B2000(v22, v23);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
LABEL_54:
  if (v16 != v5)
  {
    goto LABEL_13;
  }

  v36 = *(v17 + 16);
  if (v36 != *(a3 + 16))
  {
    goto LABEL_13;
  }

  if (v36)
  {
    v37 = v17 == a3;
  }

  else
  {
    v37 = 1;
  }

  if (!v37)
  {
    v38 = 32;
    while (v36)
    {
      if (*(v17 + v38) != *(a3 + v38))
      {
        goto LABEL_13;
      }

      ++v38;
      if (!--v36)
      {
        goto LABEL_161;
      }
    }

    __break(1u);
LABEL_163:
    __break(1u);
LABEL_164:
    __break(1u);
LABEL_165:
    __break(1u);
LABEL_166:
    __break(1u);
LABEL_167:
    __break(1u);
LABEL_168:
    __break(1u);
LABEL_169:
    __break(1u);
LABEL_170:
    __break(1u);
LABEL_171:
    __break(1u);
LABEL_172:
    __break(1u);
LABEL_173:
    __break(1u);
LABEL_174:
    __break(1u);
LABEL_175:
    __break(1u);
LABEL_176:
    __break(1u);
LABEL_177:
    __break(1u);
LABEL_178:
    __break(1u);
LABEL_179:
    __break(1u);
LABEL_180:
    __break(1u);
LABEL_181:
    __break(1u);
LABEL_182:
    __break(1u);
LABEL_183:
    __break(1u);
LABEL_184:
    __break(1u);
LABEL_185:
    __break(1u);
  }

LABEL_161:
  sub_1B0391D50(v15, v14);

  return 1;
}

uint64_t *sub_1B0AB7920(int64_t a1)
{
  v134 = *MEMORY[0x1E69E9840];
  v5 = *v2;
  v6 = *(v5 + 16);
  v110 = a1;
  if (v6)
  {
    v7 = 0;
    a1 = *(a1 + 40);
    v8 = 72;
    while (1)
    {
      v9 = *(v5 + v8);
      v10 = a1 - v9;
      if (a1 >= v9)
      {
        if (__OFSUB__(a1, v9))
        {
          goto LABEL_210;
        }
      }

      else
      {
        if (__OFSUB__(v9, a1))
        {
          goto LABEL_211;
        }

        v10 = a1 - v9;
        if (__OFSUB__(0, v9 - a1))
        {
          goto LABEL_212;
        }
      }

      if (v10 / 1000000000.0 > 2100.0)
      {
        break;
      }

      ++v7;
      v8 += 48;
      if (v6 == v7)
      {
        v3 = *(v5 + 16);
        a1 = v110;
        goto LABEL_17;
      }
    }

    v3 = (v7 + 1);
    if (__OFADD__(v7, 1))
    {
LABEL_229:
      __break(1u);
LABEL_230:
      __break(1u);
LABEL_231:
      __break(1u);
      goto LABEL_232;
    }

    if (v3 != v6)
    {
      v83 = v8 + 48;
      while (v3 < v6)
      {
        v87 = *(v5 + v83);
        v88 = a1 - v87;
        if (a1 >= v87)
        {
          if (__OFSUB__(a1, v87))
          {
            goto LABEL_215;
          }
        }

        else
        {
          if (__OFSUB__(v87, a1))
          {
            goto LABEL_214;
          }

          v88 = a1 - v87;
          if (__OFSUB__(0, v87 - a1))
          {
            goto LABEL_216;
          }
        }

        if (v88 / 1000000000.0 <= 2100.0)
        {
          if (v3 != v7)
          {
            if (v7 >= v6)
            {
              goto LABEL_219;
            }

            v89 = v5 + 32 + 48 * v7;
            v121 = *(v89 + 16);
            v1 = *(v89 + 24);
            v115 = *(v89 + 40);
            v117 = *(v89 + 32);
            v90 = *(v5 + v83 - 40);
            v91 = *(v5 + v83 - 32);
            v129 = *(v5 + v83 - 24);
            v92 = *(v5 + v83 - 16);
            v126 = *v89;
            v128 = *(v5 + v83 - 8);
            v124 = *(v89 + 8);
            sub_1B03B2000(*v89, v124);
            v119 = v1;
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            sub_1B03B2000(v90, v91);
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v5 = sub_1B0B8C8D8(v5);
            }

            if (v7 >= *(v5 + 16))
            {
              goto LABEL_220;
            }

            v93 = v5 + 48 * v7;
            v94 = *(v93 + 32);
            v95 = *(v93 + 40);
            v1 = *(v93 + 56);
            *(v93 + 32) = v90;
            *(v93 + 40) = v91;
            *(v93 + 48) = v129;
            *(v93 + 56) = v92;
            *(v93 + 64) = v128;
            *(v93 + 72) = v87;
            sub_1B0391D50(v94, v95);

            if (v3 >= *(v5 + 16))
            {
              goto LABEL_221;
            }

            v84 = (v5 + v83);
            v85 = *(v5 + v83 - 40);
            v86 = *(v5 + v83 - 32);
            v1 = *(v5 + v83 - 16);
            *(v84 - 5) = v126;
            *(v84 - 4) = v124;
            *(v84 - 6) = v121;
            *(v84 - 2) = v119;
            *(v84 - 1) = v117;
            *v84 = v115;
            sub_1B0391D50(v85, v86);

            *v122 = v5;
          }

          ++v7;
        }

        ++v3;
        v6 = *(v5 + 16);
        v83 += 48;
        if (v3 == v6)
        {
          goto LABEL_16;
        }
      }

LABEL_213:
      __break(1u);
LABEL_214:
      __break(1u);
LABEL_215:
      __break(1u);
LABEL_216:
      __break(1u);
LABEL_217:
      __break(1u);
LABEL_218:
      __break(1u);
LABEL_219:
      __break(1u);
LABEL_220:
      __break(1u);
LABEL_221:
      __break(1u);
LABEL_222:
      __break(1u);
LABEL_223:
      __break(1u);
      goto LABEL_224;
    }

    v3 = *(v5 + 16);
LABEL_16:
    v6 = v7;
    a1 = v110;
    if (v3 < v7)
    {
LABEL_224:
      __break(1u);
      goto LABEL_225;
    }
  }

  else
  {
    v3 = 0;
  }

LABEL_17:
  sub_1B0BAD05C(v6, v3);
  v3 = *v122;
  v5 = *(*v122 + 2);
  if (!v5)
  {
    v1 = 0;
    goto LABEL_180;
  }

  v1 = 0;
  v12 = *a1;
  v11 = *(a1 + 8);
  v13 = a1;
  a1 = *(a1 + 16);
  if (v12)
  {
    v14 = 0;
  }

  else
  {
    v14 = v11 == 0xC000000000000000;
  }

  v15 = v11 >> 62;
  v116 = *(v13 + 24);
  v118 = v11;
  v114 = *(v13 + 32);
  v16 = !v14;
  v125 = v16;
  v17 = __OFSUB__(HIDWORD(v12), v12);
  v112 = v17;
  v113 = a1;
  v111 = HIDWORD(v12) - v12;
  v123 = BYTE6(v11);
  v120 = v12;
  v107 = v12 >> 32;
  v108 = v12;
  v106 = (v12 >> 32) - v12;
  v109 = *(*v122 + 2);
  while (1)
  {
    if (v1 >= *(v3 + 2))
    {
      __break(1u);
LABEL_209:
      __break(1u);
LABEL_210:
      __break(1u);
LABEL_211:
      __break(1u);
LABEL_212:
      __break(1u);
      goto LABEL_213;
    }

    v18 = &v3[48 * v1 + 32];
    v20 = *v18;
    v19 = *(v18 + 8);
    v21 = *(v18 + 16);
    v23 = *(v18 + 24);
    v22 = *(v18 + 32);
    v24 = v19 >> 62;
    if (v19 >> 62 == 3)
    {
      if (v20)
      {
        v25 = 0;
      }

      else
      {
        v25 = v19 == 0xC000000000000000;
      }

      v27 = !v25 || v15 < 3;
      if (((v27 | v125) & 1) == 0)
      {
        v127 = v22;
        v28 = 0;
        v29 = 0xC000000000000000;
        goto LABEL_69;
      }

LABEL_53:
      v30 = 0;
      if (v15 <= 1)
      {
        goto LABEL_50;
      }

      goto LABEL_54;
    }

    if (v24 > 1)
    {
      if (v24 != 2)
      {
        goto LABEL_53;
      }

      v32 = *(v20 + 16);
      v31 = *(v20 + 24);
      v33 = __OFSUB__(v31, v32);
      v30 = v31 - v32;
      if (v33)
      {
        goto LABEL_223;
      }

      if (v15 <= 1)
      {
        goto LABEL_50;
      }
    }

    else if (v24)
    {
      LODWORD(v30) = HIDWORD(v20) - v20;
      if (__OFSUB__(HIDWORD(v20), v20))
      {
        goto LABEL_222;
      }

      v30 = v30;
      if (v15 <= 1)
      {
LABEL_50:
        v34 = v123;
        if (v15)
        {
          v34 = v111;
          if (v112)
          {
            goto LABEL_217;
          }
        }

        goto LABEL_56;
      }
    }

    else
    {
      v30 = BYTE6(v19);
      if (v15 <= 1)
      {
        goto LABEL_50;
      }
    }

LABEL_54:
    if (v15 != 2)
    {
      if (v30)
      {
        goto LABEL_29;
      }

LABEL_68:
      v127 = v22;
      v28 = v20;
      v29 = v19;
LABEL_69:
      sub_1B03B2000(v28, v29);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
LABEL_70:
      if (v21 == a1 && v127 == v114)
      {
        v42 = *(v23 + 16);
        if (v42 == *(v116 + 16))
        {
          if (v42)
          {
            v43 = v23 == v116;
          }

          else
          {
            v43 = 1;
          }

          if (!v43)
          {
            v44 = 32;
            while (v42)
            {
              if (*(v23 + v44) != *(v116 + v44))
              {
                goto LABEL_28;
              }

              ++v44;
              if (!--v42)
              {
                goto LABEL_176;
              }
            }

            goto LABEL_209;
          }

LABEL_176:
          sub_1B0391D50(v20, v19);

          v5 = v110;
          sub_1B0AB89D0(v110, __s1);
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            goto LABEL_177;
          }

          goto LABEL_227;
        }
      }

      goto LABEL_28;
    }

    v36 = *(v120 + 16);
    v35 = *(v120 + 24);
    v33 = __OFSUB__(v35, v36);
    v34 = v35 - v36;
    if (v33)
    {
      goto LABEL_218;
    }

LABEL_56:
    if (v30 != v34)
    {
      goto LABEL_29;
    }

    if (v30 < 1)
    {
      goto LABEL_68;
    }

    v127 = v22;
    if (v24 <= 1)
    {
      break;
    }

    if (v24 != 2)
    {
      *&__s1[6] = 0;
      *__s1 = 0;
      if (v15)
      {
        if (v15 == 2)
        {
          v98 = *(v120 + 24);
          v104 = *(v120 + 16);
          sub_1B03B2000(v20, v19);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v40 = sub_1B0E42A98();
          if (v40)
          {
            v51 = sub_1B0E42AC8();
            v52 = v104;
            if (__OFSUB__(v104, v51))
            {
              goto LABEL_246;
            }

            v40 = &v104[v40 - v51];
          }

          else
          {
            v52 = v104;
          }

          v71 = v98 - v52;
          if (__OFSUB__(v98, v52))
          {
            goto LABEL_239;
          }

          result = sub_1B0E42AB8();
          if (!v40)
          {
            goto LABEL_254;
          }

          goto LABEL_151;
        }

        if (v107 < v108)
        {
          goto LABEL_235;
        }

        sub_1B03B2000(v20, v19);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v62 = sub_1B0E42A98();
        if (!v62)
        {
          goto LABEL_252;
        }

        v63 = v62;
        v64 = sub_1B0E42AC8();
        if (__OFSUB__(v108, v64))
        {
          goto LABEL_241;
        }

        v40 = (v108 - v64 + v63);
        result = sub_1B0E42AB8();
        if (!v40)
        {
          goto LABEL_253;
        }

LABEL_130:
        if (result >= v106)
        {
          v65 = v106;
        }

        else
        {
          v65 = result;
        }

LABEL_154:
        v5 = v109;
        a1 = v113;
        if (!memcmp(__s1, v40, v65))
        {
          goto LABEL_70;
        }

        goto LABEL_28;
      }

      goto LABEL_98;
    }

    a1 = *(v20 + 16);
    sub_1B03B2000(v20, v19);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v45 = sub_1B0E42A98();
    if (v45)
    {
      v46 = v45;
      v5 = v19 & 0x3FFFFFFFFFFFFFFFLL;
      v47 = sub_1B0E42AC8();
      if (__OFSUB__(a1, v47))
      {
        goto LABEL_230;
      }

      v102 = (a1 - v47 + v46);
    }

    else
    {
      v102 = 0;
    }

    sub_1B0E42AB8();
    a1 = v113;
    if (v15 == 2)
    {
      v96 = *(v120 + 24);
      v100 = *(v120 + 16);
      v54 = sub_1B0E42A98();
      if (v54)
      {
        v66 = sub_1B0E42AC8();
        v67 = v100;
        if (__OFSUB__(v100, v66))
        {
          goto LABEL_247;
        }

        v54 = (v54 + v100 - v66);
      }

      else
      {
        v67 = v100;
      }

      v72 = v96 - v67;
      if (__OFSUB__(v96, v67))
      {
        goto LABEL_242;
      }

      v73 = sub_1B0E42AB8();
      if (v73 >= v72)
      {
        v57 = v72;
      }

      else
      {
        v57 = v73;
      }

      result = v102;
      if (!v102)
      {
        goto LABEL_262;
      }

      v5 = v109;
      a1 = v113;
      if (!v54)
      {
        goto LABEL_261;
      }
    }

    else
    {
      if (v15 != 1)
      {
        v5 = v109;
        result = v102;
        *__s1 = v120;
        *&__s1[8] = v118;
        *&__s1[12] = WORD2(v118);
        if (!v102)
        {
          goto LABEL_255;
        }

        goto LABEL_142;
      }

      if (v107 < v108)
      {
        goto LABEL_237;
      }

      v54 = sub_1B0E42A98();
      if (v54)
      {
        v55 = sub_1B0E42AC8();
        if (__OFSUB__(v108, v55))
        {
          goto LABEL_249;
        }

        v54 = (v54 + v108 - v55);
      }

      a1 = v113;
      v56 = sub_1B0E42AB8();
      v57 = v106;
      if (v56 < v106)
      {
        v57 = v56;
      }

      result = v102;
      if (!v102)
      {
        goto LABEL_260;
      }

      v5 = v109;
      if (!v54)
      {
        goto LABEL_259;
      }
    }

LABEL_171:
    if (result == v54)
    {
      goto LABEL_70;
    }

    v70 = v57;
    v53 = v54;
LABEL_173:
    if (!memcmp(result, v53, v70))
    {
      goto LABEL_70;
    }

LABEL_28:
    sub_1B0391D50(v20, v19);

LABEL_29:
    if (++v1 == v5)
    {
      v1 = *(v3 + 2);
      a1 = v110;
      if (v1 > 0x10)
      {
        v5 = sub_1B0441754(0x11uLL);
        sub_1B0AB89D0(v110, __s1);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          if ((v5 & 0x8000000000000000) != 0)
          {
LABEL_233:
            __break(1u);
            goto LABEL_234;
          }

LABEL_205:
          if (v5 < *(v3 + 2))
          {
            v76 = &v3[48 * v5 + 32];
            v77 = a1;
            goto LABEL_207;
          }

LABEL_234:
          __break(1u);
LABEL_235:
          __break(1u);
LABEL_236:
          __break(1u);
LABEL_237:
          __break(1u);
LABEL_238:
          __break(1u);
LABEL_239:
          __break(1u);
LABEL_240:
          __break(1u);
LABEL_241:
          __break(1u);
LABEL_242:
          __break(1u);
LABEL_243:
          __break(1u);
LABEL_244:
          __break(1u);
LABEL_245:
          __break(1u);
LABEL_246:
          __break(1u);
LABEL_247:
          __break(1u);
LABEL_248:
          __break(1u);
LABEL_249:
          __break(1u);
LABEL_250:
          __break(1u);
        }

LABEL_232:
        v3 = sub_1B0B8C8D8(v3);
        if ((v5 & 0x8000000000000000) != 0)
        {
          goto LABEL_233;
        }

        goto LABEL_205;
      }

LABEL_180:
      if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_181:
        v79 = *(v3 + 2);
        v78 = *(v3 + 3);
        if (v79 >= v78 >> 1)
        {
          v3 = sub_1B0AFF9B0((v78 > 1), v79 + 1, 1, v3);
        }

        *(v3 + 2) = v79 + 1;
        v80 = &v3[48 * v79];
        v81 = *a1;
        v82 = *(a1 + 32);
        *(v80 + 3) = *(a1 + 16);
        *(v80 + 4) = v82;
        *(v80 + 2) = v81;
        *v122 = v3;
        return sub_1B0AB89D0(a1, __s1);
      }

LABEL_225:
      v3 = sub_1B0AFF9B0(0, v1 + 1, 1, v3);
      goto LABEL_181;
    }
  }

  if (v24)
  {
    a1 = v20;
    if (v20 > v20 >> 32)
    {
      __break(1u);
LABEL_227:
      v3 = sub_1B0B8C8D8(v3);
LABEL_177:
      if (v1 < *(v3 + 2))
      {
        v76 = &v3[48 * v1 + 32];
        v77 = v5;
LABEL_207:
        result = sub_1B0AB8A08(v77, v76);
        *v122 = v3;
        return result;
      }

      __break(1u);
      goto LABEL_229;
    }

    sub_1B03B2000(v20, v19);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v48 = sub_1B0E42A98();
    if (v48)
    {
      v49 = v48;
      v5 = v19 & 0x3FFFFFFFFFFFFFFFLL;
      v50 = sub_1B0E42AC8();
      if (__OFSUB__(v20, v50))
      {
        goto LABEL_231;
      }

      v103 = (v20 - v50 + v49);
    }

    else
    {
      v103 = 0;
    }

    sub_1B0E42AB8();
    a1 = v113;
    if (v15 == 2)
    {
      v97 = *(v120 + 24);
      v101 = *(v120 + 16);
      v54 = sub_1B0E42A98();
      if (v54)
      {
        v68 = sub_1B0E42AC8();
        v69 = v101;
        if (__OFSUB__(v101, v68))
        {
          goto LABEL_248;
        }

        v54 = (v54 + v101 - v68);
      }

      else
      {
        v69 = v101;
      }

      v74 = v97 - v69;
      if (__OFSUB__(v97, v69))
      {
        goto LABEL_244;
      }

      v75 = sub_1B0E42AB8();
      if (v75 >= v74)
      {
        v57 = v74;
      }

      else
      {
        v57 = v75;
      }

      result = v103;
      if (!v103)
      {
        goto LABEL_266;
      }

      v5 = v109;
      a1 = v113;
      if (!v54)
      {
        goto LABEL_265;
      }
    }

    else
    {
      if (v15 != 1)
      {
        v5 = v109;
        result = v103;
        *__s1 = v120;
        *&__s1[8] = v118;
        *&__s1[12] = WORD2(v118);
        if (!v103)
        {
          goto LABEL_256;
        }

LABEL_142:
        v53 = __s1;
LABEL_143:
        v70 = v123;
        goto LABEL_173;
      }

      if (v107 < v108)
      {
        goto LABEL_243;
      }

      v54 = sub_1B0E42A98();
      if (v54)
      {
        v58 = sub_1B0E42AC8();
        if (__OFSUB__(v108, v58))
        {
          goto LABEL_250;
        }

        v54 = (v54 + v108 - v58);
      }

      a1 = v113;
      v59 = sub_1B0E42AB8();
      v57 = v106;
      if (v59 < v106)
      {
        v57 = v59;
      }

      result = v103;
      if (!v103)
      {
        goto LABEL_264;
      }

      v5 = v109;
      if (!v54)
      {
        goto LABEL_263;
      }
    }

    goto LABEL_171;
  }

  *__s1 = v20;
  *&__s1[8] = v19;
  __s1[10] = BYTE2(v19);
  __s1[11] = BYTE3(v19);
  __s1[12] = BYTE4(v19);
  __s1[13] = BYTE5(v19);
  if (!v15)
  {
LABEL_98:
    v130 = v120;
    v131 = v118;
    v132 = WORD2(v118);
    sub_1B03B2000(v20, v19);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    result = __s1;
    v53 = &v130;
    goto LABEL_143;
  }

  if (v15 != 1)
  {
    v99 = *(v120 + 24);
    v105 = *(v120 + 16);
    sub_1B03B2000(v20, v19);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v40 = sub_1B0E42A98();
    if (v40)
    {
      v60 = sub_1B0E42AC8();
      v61 = v105;
      if (__OFSUB__(v105, v60))
      {
        goto LABEL_245;
      }

      v40 = &v105[v40 - v60];
    }

    else
    {
      v61 = v105;
    }

    v71 = v99 - v61;
    if (__OFSUB__(v99, v61))
    {
      goto LABEL_238;
    }

    result = sub_1B0E42AB8();
    if (!v40)
    {
      goto LABEL_257;
    }

LABEL_151:
    if (result >= v71)
    {
      v65 = v71;
    }

    else
    {
      v65 = result;
    }

    goto LABEL_154;
  }

  if (v107 < v108)
  {
    goto LABEL_236;
  }

  sub_1B03B2000(v20, v19);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v37 = sub_1B0E42A98();
  if (v37)
  {
    v38 = v37;
    v39 = sub_1B0E42AC8();
    if (__OFSUB__(v108, v39))
    {
      goto LABEL_240;
    }

    v40 = (v108 - v39 + v38);
    result = sub_1B0E42AB8();
    if (!v40)
    {
      goto LABEL_258;
    }

    goto LABEL_130;
  }

  sub_1B0E42AB8();
  __break(1u);
LABEL_252:
  result = sub_1B0E42AB8();
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
  __break(1u);
LABEL_260:
  __break(1u);
LABEL_261:
  __break(1u);
LABEL_262:
  __break(1u);
LABEL_263:
  __break(1u);
LABEL_264:
  __break(1u);
LABEL_265:
  __break(1u);
LABEL_266:
  __break(1u);
  return result;
}

uint64_t sub_1B0AB8610(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x1E69E9840];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_1B0AB87A0(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_1B0391D50(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_1B0AE2440(v13, a3, a4, &v12);
  v10 = v4;
  sub_1B0391D50(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_1B0AB87A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_1B0E42A98();
  v11 = result;
  if (result)
  {
    result = sub_1B0E42AC8();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1B0E42AB8();
  sub_1B0AE2440(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_1B0AB8858(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_1B03B2000(a3, a4);
          return sub_1B0AB8610(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1B0AB8A40(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1B0AB8A88(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B0AB8AF4()
{
  result = qword_1EB6E40F8;
  if (!qword_1EB6E40F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E40F8);
  }

  return result;
}

uint64_t sub_1B0AB8B68()
{
  result = sub_1B03D0770(&unk_1F2710A98);
  qword_1EB737DC0 = result;
  return result;
}

uint64_t sub_1B0AB8B90()
{
  v5[8] = 0;
  *v5 = *(v0 + 9);
  sub_1B0E46508();
  MEMORY[0x1B2726E80](45, 0xE100000000000000);
  v1 = 65;
  if (*(v0 + 112) != 1)
  {
    v1 = 66;
  }

  if (*(v0 + 112))
  {
    v2 = v1;
  }

  else
  {
    v2 = 1919251285;
  }

  if (*(v0 + 112))
  {
    v3 = 0xE100000000000000;
  }

  else
  {
    v3 = 0xE400000000000000;
  }

  MEMORY[0x1B2726E80](v2, v3);

  return *&v5[1];
}

void sub_1B0AB8C54(uint64_t a1)
{
  v2 = v1;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v177);
  *&v181 = &v172 - v4;
  v5 = type metadata accessor for DownloadTask(0);
  MEMORY[0x1EEE9AC00](v5);
  v175 = &v172 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v172 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v184 = &v172 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v180 = &v172 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v192 = &v172 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v172 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v172 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v190 = &v172 - v23;
  v185 = type metadata accessor for MailboxTaskLogger(0);
  MEMORY[0x1EEE9AC00](v185);
  v173 = &v172 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v174 = &v172 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v189 = &v172 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v188 = &v172 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v187 = &v172 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v191 = &v172 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v172 - v36;
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v172 - v39;
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v172 - v42;
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v172 - v45;
  v182 = v5;
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  v47 = sub_1B0E46E98();
  v186 = a1;
  v183 = v2;
  if ((v47 & 1) == 0)
  {
    sub_1B0ABCCD8(a1, v40, type metadata accessor for MailboxTaskLogger);
    sub_1B0ABCCD8(a1, v37, type metadata accessor for MailboxTaskLogger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0ABCCD8(v2, v192, type metadata accessor for DownloadTask);
    v68 = v180;
    sub_1B0ABCCD8(v2, v180, type metadata accessor for DownloadTask);
    v69 = v184;
    sub_1B0ABCCD8(v2, v184, type metadata accessor for DownloadTask);
    sub_1B0ABCCD8(v2, v9, type metadata accessor for DownloadTask);
    v70 = sub_1B0E43988();
    v71 = sub_1B0E45908();
    if (!os_log_type_enabled(v70, v71))
    {
      v90 = a1;
      sub_1B03D0D24(v37, type metadata accessor for MailboxTaskLogger);

      sub_1B03D0D24(v9, type metadata accessor for DownloadTask);
      sub_1B03D0D24(v69, type metadata accessor for DownloadTask);
      sub_1B03D0D24(v68, type metadata accessor for DownloadTask);
      sub_1B03D0D24(v40, type metadata accessor for MailboxTaskLogger);
      sub_1B03D0D24(v192, type metadata accessor for DownloadTask);
LABEL_25:
      v2 = v183;
      goto LABEL_26;
    }

    v190 = v9;
    v72 = swift_slowAlloc();
    v179 = swift_slowAlloc();
    v195[0] = v179;
    *v72 = 68160259;
    *(v72 + 4) = 2;
    *(v72 + 8) = 256;
    v73 = v185;
    v74 = &v37[*(v185 + 20)];
    *(v72 + 10) = *v74;
    *(v72 + 11) = 2082;
    v75 = v68;
    v76 = &v40[*(v73 + 20)];
    *(v72 + 13) = sub_1B0399D64(*(v76 + 1), *(v76 + 2), v195);
    *(v72 + 21) = 1040;
    *(v72 + 23) = 2;
    *(v72 + 27) = 512;
    LOWORD(v74) = *(v74 + 12);
    sub_1B03D0D24(v37, type metadata accessor for MailboxTaskLogger);
    *(v72 + 29) = v74;
    *(v72 + 31) = 2160;
    *(v72 + 33) = 0x786F626C69616DLL;
    *(v72 + 41) = 2085;
    v77 = *(v76 + 4);
    LODWORD(v74) = *(v76 + 10);
    v78 = v75;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B03D0D24(v40, type metadata accessor for MailboxTaskLogger);
    v193 = v77;
    v194 = v74;
    v79 = sub_1B0E44BA8();
    v81 = sub_1B0399D64(v79, v80, v195);

    *(v72 + 43) = v81;
    *(v72 + 51) = 2082;
    v82 = v192;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v83 = v181;
    sub_1B0B24198();
    v84 = MessageIdentifierSet.debugDescription.getter();
    v86 = v85;
    sub_1B0398EFC(v83, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    sub_1B03D0D24(v82, type metadata accessor for DownloadTask);
    v87 = sub_1B0399D64(v84, v86, v195);

    *(v72 + 53) = v87;
    *(v72 + 61) = 2080;
    if (*(v78 + 112))
    {
      v88 = 0xE100000000000000;
      if (*(v78 + 112) == 1)
      {
        v89 = 65;
      }

      else
      {
        v89 = 66;
      }
    }

    else
    {
      v89 = 1919251285;
      v88 = 0xE400000000000000;
    }

    sub_1B03D0D24(v78, type metadata accessor for DownloadTask);
    v95 = sub_1B0399D64(v89, v88, v195);

    *(v72 + 63) = v95;
    *(v72 + 71) = 2082;
    if (*(v184 + 9))
    {
      v96 = 6581810;
    }

    else
    {
      v96 = 7631665;
    }

    sub_1B03D0D24(v184, type metadata accessor for DownloadTask);
    v97 = sub_1B0399D64(v96, 0xE300000000000000, v195);

    *(v72 + 73) = v97;
    *(v72 + 81) = 2082;
    v98 = v190;
    v99 = MessageIdentifierSet.debugDescription.getter();
    v101 = v100;
    sub_1B03D0D24(v98, type metadata accessor for DownloadTask);
    v102 = sub_1B0399D64(v99, v101, v195);

    *(v72 + 83) = v102;
    _os_log_impl(&dword_1B0389000, v70, v71, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task for %{public}s %s '%{public}s' -- full message download for %{public}s", v72, 0x5Bu);
    v103 = v179;
    swift_arrayDestroy();
    MEMORY[0x1B272C230](v103, -1, -1);
    MEMORY[0x1B272C230](v72, -1, -1);

LABEL_24:
    v90 = v186;
    goto LABEL_25;
  }

  sub_1B0ABCCD8(a1, v46, type metadata accessor for MailboxTaskLogger);
  sub_1B0ABCCD8(a1, v43, type metadata accessor for MailboxTaskLogger);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0ABCCD8(v2, v190, type metadata accessor for DownloadTask);
  sub_1B0ABCCD8(v2, v21, type metadata accessor for DownloadTask);
  sub_1B0ABCCD8(v2, v18, type metadata accessor for DownloadTask);
  v48 = sub_1B0E43988();
  v49 = sub_1B0E45908();
  if (os_log_type_enabled(v48, v49))
  {
    LODWORD(v192) = v49;
    v50 = v18;
    v51 = swift_slowAlloc();
    v184 = swift_slowAlloc();
    v195[0] = v184;
    *v51 = 68160003;
    *(v51 + 4) = 2;
    *(v51 + 8) = 256;
    v52 = v185;
    v53 = &v43[*(v185 + 20)];
    *(v51 + 10) = *v53;
    *(v51 + 11) = 2082;
    v54 = v21;
    v55 = &v46[*(v52 + 20)];
    *(v51 + 13) = sub_1B0399D64(*(v55 + 1), *(v55 + 2), v195);
    *(v51 + 21) = 1040;
    *(v51 + 23) = 2;
    *(v51 + 27) = 512;
    LOWORD(v53) = *(v53 + 12);
    sub_1B03D0D24(v43, type metadata accessor for MailboxTaskLogger);
    *(v51 + 29) = v53;
    *(v51 + 31) = 2160;
    *(v51 + 33) = 0x786F626C69616DLL;
    *(v51 + 41) = 2085;
    v56 = *(v55 + 4);
    LODWORD(v53) = *(v55 + 10);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B03D0D24(v46, type metadata accessor for MailboxTaskLogger);
    v193 = v56;
    v194 = v53;
    v57 = sub_1B0E44BA8();
    v59 = sub_1B0399D64(v57, v58, v195);

    *(v51 + 43) = v59;
    *(v51 + 51) = 2082;
    v60 = v190;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v61 = v181;
    sub_1B0B24198();
    v62 = MessageIdentifierSet.debugDescription.getter();
    v64 = v63;
    sub_1B0398EFC(v61, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    sub_1B03D0D24(v60, type metadata accessor for DownloadTask);
    v65 = sub_1B0399D64(v62, v64, v195);

    *(v51 + 53) = v65;
    *(v51 + 61) = 2080;
    if (*(v54 + 112))
    {
      v66 = 0xE100000000000000;
      if (*(v54 + 112) == 1)
      {
        v67 = 65;
      }

      else
      {
        v67 = 66;
      }
    }

    else
    {
      v67 = 1919251285;
      v66 = 0xE400000000000000;
    }

    sub_1B03D0D24(v54, type metadata accessor for DownloadTask);
    v91 = sub_1B0399D64(v67, v66, v195);

    *(v51 + 63) = v91;
    *(v51 + 71) = 2082;
    if (*(v50 + 9))
    {
      v92 = 6581810;
    }

    else
    {
      v92 = 7631665;
    }

    sub_1B03D0D24(v50, type metadata accessor for DownloadTask);
    v93 = sub_1B0399D64(v92, 0xE300000000000000, v195);

    *(v51 + 73) = v93;
    _os_log_impl(&dword_1B0389000, v48, v192, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task for %{public}s %s '%{public}s'", v51, 0x51u);
    v94 = v184;
    swift_arrayDestroy();
    MEMORY[0x1B272C230](v94, -1, -1);
    MEMORY[0x1B272C230](v51, -1, -1);

    goto LABEL_24;
  }

  sub_1B03D0D24(v43, type metadata accessor for MailboxTaskLogger);

  sub_1B03D0D24(v18, type metadata accessor for DownloadTask);
  sub_1B03D0D24(v21, type metadata accessor for DownloadTask);
  sub_1B03D0D24(v46, type metadata accessor for MailboxTaskLogger);
  sub_1B03D0D24(v190, type metadata accessor for DownloadTask);
  v90 = v186;
LABEL_26:
  v104 = *(v2 + 104);
  v107 = *(v104 + 64);
  v106 = v104 + 64;
  v105 = v107;
  v108 = 1 << *(*(v2 + 104) + 32);
  v109 = -1;
  if (v108 < 64)
  {
    v109 = ~(-1 << v108);
  }

  v110 = v109 & v105;
  v111 = (v108 + 63) >> 6;
  v190 = *(v2 + 104);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v112 = 0;
  *&v113 = 68159491;
  v181 = v113;
  *&v113 = 68159747;
  v178 = v113;
  v114 = v188;
  v115 = v187;
  if (v110)
  {
    goto LABEL_31;
  }

LABEL_32:
  v117 = v191;
  while (1)
  {
    v116 = v112 + 1;
    if (__OFADD__(v112, 1))
    {
      __break(1u);
      return;
    }

    if (v116 >= v111)
    {
      break;
    }

    v110 = *(v106 + 8 * v116);
    ++v112;
    if (v110)
    {
      while (1)
      {
        v118 = __clz(__rbit64(v110));
        v110 &= v110 - 1;
        v119 = v118 | (v116 << 6);
        v120 = *(v190 + 7);
        LODWORD(v192) = *(*(v190 + 6) + 4 * v119);
        v121 = v120 + 16 * v119;
        if (*(v121 + 8))
        {
          v122 = v117;
          sub_1B0ABCCD8(v90, v117, type metadata accessor for MailboxTaskLogger);
          sub_1B0ABCCD8(v90, v115, type metadata accessor for MailboxTaskLogger);
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          v123 = sub_1B0E43988();
          v124 = sub_1B0E458D8();
          if (!os_log_type_enabled(v123, v124))
          {
            sub_1B03D0D24(v115, type metadata accessor for MailboxTaskLogger);

            sub_1B03D0D24(v122, type metadata accessor for MailboxTaskLogger);
            v112 = v116;
            if (!v110)
            {
              goto LABEL_32;
            }

            goto LABEL_31;
          }

          v139 = swift_slowAlloc();
          LODWORD(v180) = v124;
          v128 = v139;
          v184 = swift_slowAlloc();
          v195[0] = v184;
          *v128 = v181;
          *(v128 + 4) = 2;
          *(v128 + 8) = 256;
          v140 = v185;
          v141 = v115 + *(v185 + 20);
          *(v128 + 10) = *v141;
          *(v128 + 11) = 2082;
          v142 = *(v140 + 20);
          v179 = v123;
          v143 = v122;
          v144 = v122 + v142;
          *(v128 + 13) = sub_1B0399D64(*(v122 + v142 + 8), *(v122 + v142 + 16), v195);
          *(v128 + 21) = 1040;
          *(v128 + 23) = 2;
          *(v128 + 27) = 512;
          v145 = *(v141 + 24);
          sub_1B03D0D24(v115, type metadata accessor for MailboxTaskLogger);
          *(v128 + 29) = v145;
          *(v128 + 31) = 2160;
          *(v128 + 33) = 0x786F626C69616DLL;
          *(v128 + 41) = 2085;
          v146 = *(v144 + 32);
          LODWORD(v144) = *(v144 + 40);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B03D0D24(v143, type metadata accessor for MailboxTaskLogger);
          v193 = v146;
          v194 = v144;
          v90 = v186;
          v147 = sub_1B0E44BA8();
          v149 = sub_1B0399D64(v147, v148, v195);

          *(v128 + 43) = v149;
          v114 = v188;
          *(v128 + 51) = 1024;
          *(v128 + 53) = v192;
          v126 = v179;
          _os_log_impl(&dword_1B0389000, v179, v180, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] UID %u, unknown size", v128, 0x39u);
          v138 = v184;
        }

        else
        {
          v184 = *v121;
          sub_1B0ABCCD8(v90, v114, type metadata accessor for MailboxTaskLogger);
          v125 = v189;
          sub_1B0ABCCD8(v90, v189, type metadata accessor for MailboxTaskLogger);
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          v126 = sub_1B0E43988();
          v127 = sub_1B0E458D8();
          if (!os_log_type_enabled(v126, v127))
          {
            sub_1B03D0D24(v125, type metadata accessor for MailboxTaskLogger);

            sub_1B03D0D24(v114, type metadata accessor for MailboxTaskLogger);
            v112 = v116;
            v115 = v187;
            if (!v110)
            {
              goto LABEL_32;
            }

            goto LABEL_31;
          }

          v128 = swift_slowAlloc();
          v180 = swift_slowAlloc();
          v195[0] = v180;
          *v128 = v178;
          v129 = v114;
          *(v128 + 4) = 2;
          *(v128 + 8) = 256;
          v130 = v185;
          v131 = v189 + *(v185 + 20);
          *(v128 + 10) = *v131;
          *(v128 + 11) = 2082;
          v132 = v129 + *(v130 + 20);
          *(v128 + 13) = sub_1B0399D64(*(v132 + 8), *(v132 + 16), v195);
          *(v128 + 21) = 1040;
          *(v128 + 23) = 2;
          *(v128 + 27) = 512;
          v133 = *(v131 + 24);
          sub_1B03D0D24(v189, type metadata accessor for MailboxTaskLogger);
          *(v128 + 29) = v133;
          *(v128 + 31) = 2160;
          *(v128 + 33) = 0x786F626C69616DLL;
          *(v128 + 41) = 2085;
          v134 = *(v132 + 32);
          LODWORD(v132) = *(v132 + 40);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B03D0D24(v188, type metadata accessor for MailboxTaskLogger);
          v193 = v134;
          v194 = v132;
          v90 = v186;
          v135 = sub_1B0E44BA8();
          v137 = sub_1B0399D64(v135, v136, v195);

          *(v128 + 43) = v137;
          v114 = v188;
          *(v128 + 51) = 1024;
          *(v128 + 53) = v192;
          *(v128 + 57) = 2048;
          *(v128 + 59) = v184;
          _os_log_impl(&dword_1B0389000, v126, v127, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] UID %u, size %{iec-bytes}ld", v128, 0x43u);
          v138 = v180;
        }

        swift_arrayDestroy();
        MEMORY[0x1B272C230](v138, -1, -1);
        MEMORY[0x1B272C230](v128, -1, -1);

        v112 = v116;
        v115 = v187;
        if (!v110)
        {
          goto LABEL_32;
        }

LABEL_31:
        v116 = v112;
        v117 = v191;
      }
    }
  }

  v150 = v183;
  _s18InProgressMessagesVMa(0);
  if ((sub_1B0E46E98() & 1) == 0)
  {
    v151 = v174;
    sub_1B0ABCCD8(v90, v174, type metadata accessor for MailboxTaskLogger);
    v152 = v173;
    sub_1B0ABCCD8(v90, v173, type metadata accessor for MailboxTaskLogger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v153 = v175;
    sub_1B0ABCCD8(v150, v175, type metadata accessor for DownloadTask);
    v154 = sub_1B0E43988();
    v155 = sub_1B0E458D8();
    if (os_log_type_enabled(v154, v155))
    {
      v156 = swift_slowAlloc();
      v157 = swift_slowAlloc();
      v195[0] = v157;
      *v156 = v181;
      *(v156 + 4) = 2;
      *(v156 + 8) = 256;
      v158 = v185;
      v159 = v152 + *(v185 + 20);
      *(v156 + 10) = *v159;
      *(v156 + 11) = 2082;
      v160 = v152;
      v161 = v151;
      v162 = v151 + *(v158 + 20);
      *(v156 + 13) = sub_1B0399D64(*(v162 + 8), *(v162 + 16), v195);
      *(v156 + 21) = 1040;
      *(v156 + 23) = 2;
      *(v156 + 27) = 512;
      LOWORD(v159) = *(v159 + 24);
      sub_1B03D0D24(v160, type metadata accessor for MailboxTaskLogger);
      *(v156 + 29) = v159;
      *(v156 + 31) = 2160;
      *(v156 + 33) = 0x786F626C69616DLL;
      *(v156 + 41) = 2085;
      v163 = *(v162 + 32);
      LODWORD(v162) = *(v162 + 40);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B03D0D24(v161, type metadata accessor for MailboxTaskLogger);
      v193 = v163;
      v194 = v162;
      v164 = sub_1B0E44BA8();
      v166 = sub_1B0399D64(v164, v165, v195);

      *(v156 + 43) = v166;
      *(v156 + 51) = 2082;
      v167 = v175;
      v168 = MessageIdentifierSet.debugDescription.getter();
      v170 = v169;
      sub_1B03D0D24(v167, type metadata accessor for DownloadTask);
      v171 = sub_1B0399D64(v168, v170, v195);

      *(v156 + 53) = v171;
      _os_log_impl(&dword_1B0389000, v154, v155, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Using cached body structure for message(s) %{public}s", v156, 0x3Du);
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v157, -1, -1);
      MEMORY[0x1B272C230](v156, -1, -1);
    }

    else
    {
      sub_1B03D0D24(v152, type metadata accessor for MailboxTaskLogger);

      sub_1B03D0D24(v153, type metadata accessor for DownloadTask);
      sub_1B03D0D24(v151, type metadata accessor for MailboxTaskLogger);
    }
  }
}

uint64_t sub_1B0ABA140@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v76 = a5;
  v77 = a4;
  v78 = a6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v70 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v70 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4100, &qword_1B0EC32F0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v75 = (&v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v70 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v81 = &v70 - v25;
  v26 = *(v6 + 80);
  v83 = *(v6 + 64);
  v84 = v26;
  v85 = *(v6 + 96);
  v86 = *(v6 + 112);
  v27 = type metadata accessor for DownloadTask(0);
  v28 = v6 + *(v27 + 40);
  v74 = v6 + *(v27 + 36);
  v29 = *(v74 + 16);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v79 = a2;
  v80 = a3;
  v31 = sub_1B0AB0D90(0, a2, a3, v30);
  v73 = v28;
  if (v31)
  {
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4108, &qword_1B0EC32F8);
    (*(*(v32 - 8) + 56))(v23, 1, 1, v32);
    v34 = a1;
  }

  else
  {
    v72 = a1;
    v82 = v29;
    v35 = *(&v85 + 1);
    sub_1B03D06F8();
    v36 = sub_1B0E46EE8();
    MEMORY[0x1EEE9AC00](v36);
    *(&v70 - 2) = v28;
    *(&v70 - 1) = &v82;
    sub_1B0B42F4C(v15, sub_1B0ABCD40, v35, v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
    v37 = sub_1B0E46E98();
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4108, &qword_1B0EC32F8);
    v39 = v38;
    v40 = 1;
    if ((v37 & 1) == 0)
    {
      v41 = &v23[*(v38 + 48)];
      sub_1B03D08AC(v18, v23);
      type metadata accessor for DownloadTask.CommandID(0);
      swift_storeEnumTagMultiPayload();
      v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FE0, &unk_1B0EC26C0) + 48);
      v71 = v23;
      v43 = v41 + v42;
      sub_1B03D08AC(v18, v41);
      *v43 = &unk_1F2710AC0;
      *(v43 + 8) = 0;
      *(v43 + 16) = 1;
      v23 = v71;
      type metadata accessor for ClientCommand(0);
      swift_storeEnumTagMultiPayload();
      v40 = 0;
    }

    (*(*(v39 - 8) + 56))(v23, v40, 1, v39);
    sub_1B0398EFC(v18, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4108, &qword_1B0EC32F8);
    v45 = *(v44 - 8);
    v46 = (*(v45 + 48))(v23, 1, v44);
    v34 = v72;
    if (v46 != 1)
    {

      v59 = v81;
      sub_1B03C60A4(v23, v81, &qword_1EB6E4108, &qword_1B0EC32F8);
      v60 = v44;
      v48 = v59;
      (*(v45 + 56))(v59, 0, 1, v60);
      goto LABEL_14;
    }
  }

  if (sub_1B0AB0D90(1, v79, v80, v33))
  {

    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4108, &qword_1B0EC32F8);
    v48 = v81;
    (*(*(v47 - 8) + 56))(v81, 1, 1, v47);
  }

  else
  {
    sub_1B0ABBD14(v73, v29, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
    v49 = sub_1B0E46E98();
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4108, &qword_1B0EC32F8);
    v51 = v50;
    if ((v49 & 1) == 0)
    {
      v52 = *(v50 + 48);
      v73 = v29;
      v53 = v12;
      v54 = v81 + v52;
      sub_1B03D08AC(v12, v81);
      type metadata accessor for DownloadTask.CommandID(0);
      swift_storeEnumTagMultiPayload();
      v55 = v34;
      v56 = v54 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FE0, &unk_1B0EC26C0) + 48);
      sub_1B03D08AC(v53, v54);
      *v56 = &unk_1F2710B58;
      *(v56 + 8) = 0;
      *(v56 + 16) = 1;
      v34 = v55;
      v12 = v53;
      type metadata accessor for ClientCommand(0);
      swift_storeEnumTagMultiPayload();
    }

    v57 = *(*(v51 - 8) + 56);
    v48 = v81;
    v57();

    sub_1B0398EFC(v12, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  }

  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4108, &qword_1B0EC32F8);
  if ((*(*(v58 - 8) + 48))(v23, 1, v58) != 1)
  {
    sub_1B0398EFC(v23, &qword_1EB6E4100, &qword_1B0EC32F0);
  }

LABEL_14:
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4108, &qword_1B0EC32F8);
  v62 = *(v61 - 8);
  v63 = *(v62 + 48);
  if (v63(v48, 1, v61) == 1)
  {
    v64 = v75;
    sub_1B0ABDEA8(v79, v80, v76, v75);
    if (v63(v64, 1, v61) == 1)
    {
      sub_1B0ABEC0C(v34, v79, v80, v77, v78);
      if (v63(v64, 1, v61) != 1)
      {
        sub_1B0398EFC(v64, &qword_1EB6E4100, &qword_1B0EC32F0);
      }
    }

    else
    {
      v68 = v78;
      sub_1B03C60A4(v64, v78, &qword_1EB6E4108, &qword_1B0EC32F8);
      (*(v62 + 56))(v68, 0, 1, v61);
    }

    v69 = v81;
    result = v63(v81, 1, v61);
    if (result != 1)
    {
      return sub_1B0398EFC(v69, &qword_1EB6E4100, &qword_1B0EC32F0);
    }
  }

  else
  {
    v65 = v48;
    v66 = v78;
    sub_1B03C60A4(v65, v78, &qword_1EB6E4108, &qword_1B0EC32F8);
    return (*(v62 + 56))(v66, 0, 1, v61);
  }

  return result;
}

uint64_t sub_1B0ABA9A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v64 = type metadata accessor for MessageHeader(0);
  v59 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v56 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = _s19MessageHeaderStatusOMa(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v57 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v50 - v17;
  v63 = _s25MessageSectionsToDownloadVMa(0);
  v65 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v20 = (&v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = v6 + *(type metadata accessor for DownloadTask(0) + 36);
  v22 = *(v7 + 88);
  v23 = *(v7 + 9);
  v60 = *(v7 + 96);
  v58 = v23;
  v61 = a2;
  v62 = a4;
  v24 = sub_1B0ACD674(v22, v60, v23, a2, a4, a6);
  if ((~v24 & 0xFF00000000) != 0)
  {
    return v24;
  }

  v54 = a6;
  v55 = v22;
  v51 = a1;
  v52 = a3;
  result = _s18InProgressMessagesVMa(0);
  v26 = *(result + 32);
  v53 = v21;
  v27 = *(v21 + v26);
  v28 = *(v27 + 16);
  if (v28)
  {
    v29 = 0;
    v30 = v27 + ((*(v65 + 80) + 32) & ~*(v65 + 80));
    v31 = (v59 + 48);
    while (v29 < *(v27 + 16))
    {
      v32 = (v30 + *(v65 + 72) * v29);
      sub_1B0ABCCD8(v32, v20, _s25MessageSectionsToDownloadVMa);
      sub_1B0ABCCD8(v20 + *(v63 + 20), v18, _s19MessageHeaderStatusOMa);
      v33 = *v31;
      if ((*v31)(v18, 3, v64))
      {
        sub_1B03D0D24(v20, _s25MessageSectionsToDownloadVMa);
        result = sub_1B03D0D24(v18, _s19MessageHeaderStatusOMa);
      }

      else
      {
        sub_1B03D0D24(v18, _s19MessageHeaderStatusOMa);
        v35 = sub_1B0A9E1D0(*v20 | 0x100000000, v61, v62, v34);
        result = sub_1B03D0D24(v20, _s25MessageSectionsToDownloadVMa);
        if ((v35 & 1) == 0)
        {
          if (v29 < *(v27 + 16))
          {
            v36 = *v32;
            v37 = v32 + *(v63 + 20);
            v38 = v57;
            sub_1B0ABCCD8(v37, v57, _s19MessageHeaderStatusOMa);
            if (v33(v38, 3, v64))
            {
              sub_1B03D0D24(v38, _s19MessageHeaderStatusOMa);
              goto LABEL_12;
            }

            v46 = v56;
            sub_1B0ABCD58(v38, v56, type metadata accessor for MessageHeader);
            v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E35E8, &qword_1B0EA2048);
            swift_allocBox();
            v48 = *(v47 + 64);
            *v49 = v55;
            *(v49 + 8) = v60;
            *(v49 + 12) = v36;
            sub_1B0ABCD58(v46, v49 + v48, type metadata accessor for MessageHeader);
            v42 = v36 | 0x100000000;
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            return v42;
          }

LABEL_20:
          __break(1u);
          return result;
        }
      }

      if (v28 == ++v29)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

LABEL_12:
  v39 = v54;
  v40 = v55;
  v41 = v60;
  v42 = sub_1B0AC1C84(v55, v60, v54);
  if ((~v42 & 0xFF00000000) == 0)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v43 = sub_1B0AC8160(v51, v61, v52, v62, v39);
    if ((v43 & 0x100000000) != 0)
    {
    }

    else
    {
      v44 = v43;
      v45 = swift_allocObject();
      *(v45 + 16) = v40;
      *(v45 + 24) = v41;
      *(v45 + 28) = v58;
      *(v45 + 32) = v44;
      return v44 | 0x200000000;
    }
  }

  return v42;
}

uint64_t sub_1B0ABAEB4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v25 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v27 = a1;
  v28 = &v23 - v6;
  v32 = 0;
  v7 = *(v2 + 88);
  v8 = *(v3 + 96);
  v9 = (a1 + 176);
  v10 = *(a1 + 176);
  v29 = v3;
  v30 = &v32;
  v11 = *(a1 + 168);
  v12 = *(a1 + 184);
  LODWORD(v13) = *(a1 + 192);
  v26 = v8;
  if (v13)
  {
    v31 = v11;
    sub_1B03B9A2C(v11, v10, v12, 1);
    sub_1B0B2B484(&v31, v7, v8, 0, sub_1B0ABC8F8);
    sub_1B03BB638(v11, v10, v12, 1);
    v10 = 0;
    v12 = 0;
    v11 = v31;
    *(a1 + 168) = v31;
    *v9 = 0;
    *(a1 + 184) = 0;
    *(a1 + 192) = 1;
    if (*(v3 + 112))
    {
      goto LABEL_7;
    }
  }

  else
  {
    sub_1B03B9A2C(v11, v10, v12, 0);

    if (*(v3 + 112))
    {
      goto LABEL_7;
    }
  }

  v14 = *(type metadata accessor for DownloadTask(0) + 36);
  v24 = v13;
  v13 = v3 + v14;
  v15 = *(_s18InProgressMessagesVMa(0) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  v23 = v13;
  LOBYTE(v13) = v24;
  if ((sub_1B0E46E98() & 1) == 0)
  {
    sub_1B0B24950(*(v3 + 64), *(v3 + 72), v23 + v15, v25);
  }

LABEL_7:
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v16 = v28;
  sub_1B0B24198();
  if ((v13 & 1) == 0)
  {
    return sub_1B0398EFC(v16, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  }

  v31 = v11;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v17 = v26;
  sub_1B0B2A30C(&v31, v7, v26, v16);
  v18 = sub_1B03BB638(v11, v10, v12, 1);
  v19 = v7;
  v20 = v31;
  v21 = v27;
  *(v27 + 168) = v31;
  *v9 = 0;
  v9[1] = 0;
  *(v21 + 192) = 1;
  MEMORY[0x1EEE9AC00](v18);
  *(&v23 - 2) = &v32;
  *(&v23 - 1) = v3;
  v31 = v20;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0B2BE00(&v31, v19, v17, 0, sub_1B0ABC900);
  sub_1B0398EFC(v16, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  result = sub_1B03BB638(v20, 0, 0, 1);
  *(v21 + 168) = v31;
  *v9 = 0;
  v9[1] = 0;
  *(v21 + 192) = 1;
  return result;
}

uint64_t sub_1B0ABB1D8(uint64_t a1, uint64_t a2, BOOL *a3)
{
  v56 = a3;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  v52 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v51 = &v45[-v5];
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1BF8, &qword_1B0E9AFF0);
  MEMORY[0x1EEE9AC00](v48);
  v7 = &v45[-v6];
  v8 = type metadata accessor for MessagesPendingDownload(0);
  MEMORY[0x1EEE9AC00](v8);
  v50 = &v45[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v45[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v45[-v14];
  v16 = *(a2 + 9);
  v53 = a2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0B24198();
  v49 = type metadata accessor for PendingPersistenceUpdates(0);
  v17 = *(v49 + 28);
  v55 = a1;
  v18 = a1 + v17;
  v19 = v18;
  v46 = v16;
  if (v16 == 1)
  {
    v19 = v18 + *(type metadata accessor for MessagesPendingDownloadPerPass(0) + 20);
  }

  v47 = v18;
  sub_1B0ABCCD8(v19, v12, type metadata accessor for MessagesPendingDownload);
  sub_1B03D08AC(v15, v7);
  v20 = MessageIdentifierSet.startIndex.getter(v13);
  v22 = v21;
  if (v20 != MessageIdentifierSet.endIndex.getter(v13) || v22 != v23)
  {
    do
    {
      MessageIdentifierSet.subscript.getter(v22, v13, &v58);
      v25 = v58;
      MessageIdentifierSet.index(_:offsetBy:)(v20, v22, 1);
      v20 = v26;
      v22 = v27;
      v28 = sub_1B03FE284(v25);
      if (v29)
      {
        v30 = v28;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v32 = *v12;
        v58 = *v12;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_1B0B8DCCC();
          v32 = v58;
        }

        sub_1B0B90410(v30, v32);
        *v12 = v32;
        v57 = v25;
        MessageIdentifierSet.insert(_:)(&v58, &v57, v13);
      }
    }

    while (v20 != MessageIdentifierSet.endIndex.getter(v13) || v22 != v33);
  }

  v34 = &v7[*(v48 + 36)];
  *v34 = v20;
  v34[1] = v22;
  sub_1B0398EFC(v7, &qword_1EB6E1BF8, &qword_1B0E9AFF0);
  sub_1B0398EFC(v15, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  if (v46)
  {
    v35 = type metadata accessor for MessagesPendingDownloadPerPass(0);
    v36 = v47;
    sub_1B0ABC908(v12, v47 + *(v35 + 20));
    v37 = v36 + *(v35 + 20);
  }

  else
  {
    v37 = v47;
    sub_1B0ABC908(v12, v47);
  }

  v38 = v37;
  v39 = v50;
  sub_1B0ABCCD8(v38, v50, type metadata accessor for MessagesPendingDownload);
  v40 = *v39;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B03D0D24(v39, type metadata accessor for MessagesPendingDownload);
  v41 = *(v40 + 16);

  v42 = v53 + *(type metadata accessor for DownloadTask(0) + 36);
  v43 = _s18InProgressMessagesVMa(0);
  (*(v52 + 16))(v51, v42 + *(v43 + 36), v54);
  result = sub_1B0E46ED8();
  *v56 = v41 < 0x20;
  return result;
}

void sub_1B0ABB674(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  if (*a2 == 1)
  {
    if (*(a3 + 9))
    {
      v4 = 10;
    }

    else
    {
      v4 = 9;
    }

    sub_1B03BDE74(v4);
    sub_1B03BDD7C(&v38, v4);
  }

  v5 = a3 + *(type metadata accessor for DownloadTask(0) + 36);
  v6 = *(v5 + *(_s18InProgressMessagesVMa(0) + 44));
  v7 = v6 + 64;
  v8 = 1 << *(v6 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v6 + 64);
  v11 = (v8 + 63) >> 6;
  v33 = v6;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v12 = 0;
  while (v10)
  {
    v13 = v12;
LABEL_14:
    v14 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v15 = v14 | (v13 << 6);
    v16 = *(*(v33 + 48) + 4 * v15);
    v17 = *(v33 + 56) + 184 * v15;
    v19 = *(v17 + 32);
    v18 = *(v17 + 48);
    v20 = *v17;
    v35[1] = *(v17 + 16);
    v35[2] = v19;
    v35[0] = v20;
    v21 = *(v17 + 112);
    v23 = *(v17 + 64);
    v22 = *(v17 + 80);
    v35[6] = *(v17 + 96);
    v35[7] = v21;
    v35[4] = v23;
    v35[5] = v22;
    v25 = *(v17 + 144);
    v24 = *(v17 + 160);
    v26 = *(v17 + 128);
    v36 = *(v17 + 176);
    v35[9] = v25;
    v35[10] = v24;
    v35[8] = v26;
    v35[3] = v18;
    type metadata accessor for MailboxSyncState(0);
    v27 = *(v17 + 96);
    *&v37[116] = *(v17 + 112);
    *&v37[100] = v27;
    v28 = *(v17 + 64);
    *&v37[84] = *(v17 + 80);
    *&v37[68] = v28;
    v37[180] = *(v17 + 176);
    v29 = *(v17 + 144);
    *&v37[164] = *(v17 + 160);
    v30 = *(v17 + 128);
    *&v37[148] = v29;
    *&v37[132] = v30;
    v31 = *(v17 + 16);
    *&v37[4] = *v17;
    *&v37[20] = v31;
    v32 = *(v17 + 48);
    *&v37[36] = *(v17 + 32);
    *&v37[52] = v32;
    v38 = v16;
    v47 = *&v37[128];
    v48 = *&v37[144];
    v49[0] = *&v37[160];
    *(v49 + 13) = *&v37[173];
    v43 = *&v37[64];
    v44 = *&v37[80];
    v45 = *&v37[96];
    v46 = *&v37[112];
    v39 = *v37;
    v40 = *&v37[16];
    v41 = *&v37[32];
    v42 = *&v37[48];
    sub_1B075DC38(v35, v34);
    sub_1B0A90F18(&v38);
    sub_1B075E728(v35);
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v11)
    {

      return;
    }

    v10 = *(v7 + 8 * v13);
    ++v12;
    if (v10)
    {
      v12 = v13;
      goto LABEL_14;
    }
  }

  __break(1u);
}

uint64_t sub_1B0ABB908()
{
  v5[8] = 0;
  sub_1B0E46298();
  MEMORY[0x1B2726E80](0xD000000000000023, 0x80000001B0F2B300);
  *v5 = *(v0 + 9);
  sub_1B0E46508();
  MEMORY[0x1B2726E80](32, 0xE100000000000000);
  v1 = 65;
  if (*(v0 + 112) != 1)
  {
    v1 = 66;
  }

  if (*(v0 + 112))
  {
    v2 = v1;
  }

  else
  {
    v2 = 1919251285;
  }

  if (*(v0 + 112))
  {
    v3 = 0xE100000000000000;
  }

  else
  {
    v3 = 0xE400000000000000;
  }

  MEMORY[0x1B2726E80](v2, v3);

  MEMORY[0x1B2726E80](41, 0xE100000000000000);
  return *&v5[1];
}

double sub_1B0ABBA10()
{
  if (qword_1EB6DDFC0 != -1)
  {
    swift_once();
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return result;
}

uint64_t sub_1B0ABBA78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  result = sub_1B0ABA9A4(a1, a2, a3, a4, a5, a6);
  *a7 = result;
  a7[1] = v9;
  return result;
}

unsigned int *sub_1B0ABBAEC(unsigned int *result)
{
  if (*(result + 4) == 2)
  {
    return sub_1B0AC5118(*result);
  }

  return result;
}

uint64_t sub_1B0ABBB38()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 13);
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](v1 | (v1 << 32));
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  MEMORY[0x1B2728D70](v2);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0ABBBC8(uint64_t a1)
{
  v2 = *(v1 + 13);
  MEMORY[0x1B2728D70](*(v1 + 8) | (*(v1 + 8) << 32));
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return MEMORY[0x1B2728D70](v2);
}

uint64_t sub_1B0ABBC3C(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 13);
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](v2 | (v2 << 32));
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  MEMORY[0x1B2728D70](v3);
  return sub_1B0E46CB8();
}

BOOL sub_1B0ABBCC8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 12))
  {
    v2 = 0x100000000;
  }

  else
  {
    v2 = 0;
  }

  if (*(a2 + 12))
  {
    v3 = 0x100000000;
  }

  else
  {
    v3 = 0;
  }

  return sub_1B0ABC504(*a1, v2 | *(a1 + 8) | (*(a1 + 13) << 40), *a2, v3 | *(a2 + 8) | (*(a2 + 13) << 40));
}

uint64_t sub_1B0ABBD14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v18 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v17 - v13;
  v15 = *(v3 + 40);
  sub_1B03D06F8();
  sub_1B0E46EE8();
  v21 = a1;
  sub_1B0B42F4C(v11, sub_1B0ABCDC0, v15, v14);
  v22 = a2;
  sub_1B0E46EE8();
  v19 = a1;
  v20 = &v22;
  sub_1B0B42F4C(v8, sub_1B0ABCF80, v15, v11);
  MessageIdentifierSet.subtracting(_:)(v11, v18);
  sub_1B0398EFC(v11, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  return sub_1B0398EFC(v14, &unk_1EB6E1AF0, &unk_1B0E9AF40);
}

BOOL sub_1B0ABBED8(uint64_t a1, uint64_t a2)
{
  if (BYTE4(a1) > 1u)
  {
    if (BYTE4(a1) == 2)
    {
      if (BYTE4(a2) == 2)
      {
        return a2 == a1;
      }
    }

    else if (a1)
    {
      if (BYTE4(a2) == 3 && a2 == 1)
      {
        return 1;
      }
    }

    else if (BYTE4(a2) == 3 && !a2)
    {
      return 1;
    }
  }

  else
  {
    if (!BYTE4(a1))
    {
      if (!BYTE4(a2))
      {
        return a2 == a1;
      }

      return 0;
    }

    if (BYTE4(a2) == 1)
    {
      return a2 == a1;
    }
  }

  return 0;
}

uint64_t sub_1B0ABBF54(uint64_t a1, uint64_t a2)
{
  v35 = a2;
  v32 = _s18SectionDataRequestVMa(0);
  MEMORY[0x1EEE9AC00](v32);
  v33 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v32 - v8;
  v10 = type metadata accessor for DownloadTask.CommandID(0);
  MEMORY[0x1EEE9AC00](v10);
  v34 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v32 - v13);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v32 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v32 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4110, &qword_1B0EC3300);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v32 - v22;
  v25 = *(v24 + 56);
  sub_1B0ABCCD8(a1, &v32 - v22, type metadata accessor for DownloadTask.CommandID);
  sub_1B0ABCCD8(v35, &v23[v25], type metadata accessor for DownloadTask.CommandID);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_1B0ABCCD8(v23, v17, type metadata accessor for DownloadTask.CommandID);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        sub_1B0398EFC(v17, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        goto LABEL_17;
      }

      sub_1B03C60A4(&v23[v25], v6, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      sub_1B03D06F8();
      v27 = sub_1B0E46E08();
      sub_1B0398EFC(v6, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v28 = v17;
    }

    else
    {
      sub_1B0ABCCD8(v23, v20, type metadata accessor for DownloadTask.CommandID);
      if (swift_getEnumCaseMultiPayload())
      {
        sub_1B0398EFC(v20, &unk_1EB6E1AF0, &unk_1B0E9AF40);
LABEL_17:
        sub_1B0398EFC(v23, &qword_1EB6E4110, &qword_1B0EC3300);
LABEL_18:
        v27 = 0;
        return v27 & 1;
      }

      sub_1B03C60A4(&v23[v25], v9, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      sub_1B03D06F8();
      v27 = sub_1B0E46E08();
      sub_1B0398EFC(v9, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v28 = v20;
    }

    sub_1B0398EFC(v28, &unk_1EB6E1AF0, &unk_1B0E9AF40);
LABEL_22:
    sub_1B03D0D24(v23, type metadata accessor for DownloadTask.CommandID);
    return v27 & 1;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_1B0ABCCD8(v23, v14, type metadata accessor for DownloadTask.CommandID);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      goto LABEL_17;
    }

    v27 = *&v23[v25] == *v14;
    goto LABEL_22;
  }

  v29 = v34;
  sub_1B0ABCCD8(v23, v34, type metadata accessor for DownloadTask.CommandID);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_1B03D0D24(v29, _s18SectionDataRequestVMa);
    goto LABEL_17;
  }

  v30 = v33;
  sub_1B0ABCD58(&v23[v25], v33, _s18SectionDataRequestVMa);
  sub_1B03D06F8();
  if ((sub_1B0E46E08() & 1) == 0 || (static SectionSpecifier.Part.__derived_struct_equals(_:_:)(*(v29 + *(v32 + 20)), *(v30 + *(v32 + 20))) & 1) == 0 || (sub_1B044DB64(*(v29 + *(v32 + 24)), *(v30 + *(v32 + 24))) & 1) == 0)
  {
    sub_1B03D0D24(v30, _s18SectionDataRequestVMa);
    sub_1B03D0D24(v29, _s18SectionDataRequestVMa);
    sub_1B03D0D24(v23, type metadata accessor for DownloadTask.CommandID);
    goto LABEL_18;
  }

  sub_1B03D0D24(v30, _s18SectionDataRequestVMa);
  sub_1B03D0D24(v29, _s18SectionDataRequestVMa);
  sub_1B03D0D24(v23, type metadata accessor for DownloadTask.CommandID);
  v27 = 1;
  return v27 & 1;
}

BOOL sub_1B0ABC504(_BOOL8 result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a2 ^ a4;
  if (a2 != a4)
  {
    return 0;
  }

  v5 = *(result + 16);
  if (v5 != *(a3 + 16))
  {
    return 0;
  }

  if (v5)
  {
    v6 = result == a3;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
LABEL_11:
    if ((a2 & 0x100000000) != 0)
    {
      v9 = 6581810;
    }

    else
    {
      v9 = 7631665;
    }

    if ((a4 & 0x100000000) != 0)
    {
      v10 = 6581810;
    }

    else
    {
      v10 = 7631665;
    }

    if (v9 == v10)
    {
      swift_bridgeObjectRelease_n();
      return (v4 & 0xFF0000000000) == 0;
    }

    v11 = sub_1B0E46A78();
    swift_bridgeObjectRelease_n();
    if (v11)
    {
      return (v4 & 0xFF0000000000) == 0;
    }

    return 0;
  }

  v7 = (result + 32);
  v8 = (a3 + 32);
  while (v5)
  {
    if (*v7 != *v8)
    {
      return 0;
    }

    ++v7;
    ++v8;
    if (!--v5)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0ABC5E0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 14))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B0ABC628(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 12) = 0;
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 14) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 14) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1B0ABC69C(uint64_t a1)
{
  sub_1B043CB9C(319, &qword_1EB6DE3E0, sub_1B041C1E8, &type metadata for UID, type metadata accessor for MessageIdentifierSet);
  if (v1 <= 0x3F)
  {
    _s18SectionDataRequestVMa(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

unint64_t sub_1B0ABC764()
{
  result = qword_1EB6DDFB8;
  if (!qword_1EB6DDFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDFB8);
  }

  return result;
}

uint64_t sub_1B0ABC800(uint64_t a1)
{
  result = sub_1B0ABC858(&qword_1EB6DDF98, type metadata accessor for DownloadTask, &unk_1B0EC321C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B0ABC858(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1B0ABC8A4()
{
  result = qword_1EB6DD1E8;
  if (!qword_1EB6DD1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD1E8);
  }

  return result;
}

uint64_t sub_1B0ABC908(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessagesPendingDownload(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0ABC96C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *, char *, uint64_t))
{
  v10 = type metadata accessor for UntaggedResponse(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v5 + 104);
  type metadata accessor for DownloadTask(0);
  sub_1B0ABCCD8(a1, v12, type metadata accessor for UntaggedResponse);
  if (swift_getEnumCaseMultiPayload() != 20)
  {
    return sub_1B03D0D24(v12, type metadata accessor for UntaggedResponse);
  }

  memcpy(v33, v12, sizeof(v33));
  if ((v33[12] & 1) == 0)
  {
    if (*(v13 + 16))
    {
      v14 = *&v33[8];
      v15 = sub_1B03FE284(*&v33[8]);
      if (v16)
      {
        v17 = *(*(v13 + 56) + 16 * v15 + 9);
        v18 = *&v33[540];
        v19 = v33[544];
        v29 = *&v33[336];
        v30 = *&v33[352];
        v31 = *&v33[368];
        v32 = v33[384];
        v25 = *&v33[272];
        v26 = *&v33[288];
        v27 = *&v33[304];
        v28 = *&v33[320];
        v21 = *&v33[208];
        v22 = *&v33[224];
        v23 = *&v33[240];
        v24 = *&v33[256];
        if (sub_1B07AB810(&v21) == 1)
        {
          if ((v19 & 1) == 0)
          {
            sub_1B0ACC6E4(v14, v18, v17, a2, a3, a5);
            return sub_1B0AA4C0C(v33);
          }
        }

        else
        {
          v34[8] = v29;
          v34[9] = v30;
          v34[10] = v31;
          v35 = v32;
          v34[4] = v25;
          v34[5] = v26;
          v34[6] = v27;
          v34[7] = v28;
          v34[0] = v21;
          v34[1] = v22;
          v34[2] = v23;
          v34[3] = v24;
          if ((v19 & 1) == 0)
          {
            sub_1B0ACBE30(v14, v34, v18, a2, a3, a5);
            return sub_1B0AA4C0C(v33);
          }
        }

        sub_1B0AC3E24(v14, *&v33[200], a5);
      }
    }
  }

  return sub_1B0AA4C0C(v33);
}

void sub_1B0ABCBB0(unint64_t result, NSObject *a2)
{
  if (((result >> 59) & 0x1E | (result >> 2) & 1) == 0xD && (*(v2 + 96) | (*(v2 + 96) << 32)) == (*((result & 0xFFFFFFFFFFFFFFBLL) + 0x18) | (*((result & 0xFFFFFFFFFFFFFFBLL) + 0x18) << 32)))
  {
    v4 = *((result & 0xFFFFFFFFFFFFFFBLL) + 0x1C);
    v5 = *((result & 0xFFFFFFFFFFFFFFBLL) + 0x20);
    v6 = *((result & 0xFFFFFFFFFFFFFFBLL) + 0x28);
    v7 = *((result & 0xFFFFFFFFFFFFFFBLL) + 0x30);
    if (sub_1B04520BC(*(v2 + 88), *((result & 0xFFFFFFFFFFFFFFBLL) + 0x10)))
    {
      if (*(v2 + 9))
      {
        v8 = 6581810;
      }

      else
      {
        v8 = 7631665;
      }

      if (v4)
      {
        v9 = 6581810;
      }

      else
      {
        v9 = 7631665;
      }

      if (v8 == v9)
      {
        swift_bridgeObjectRelease_n();
      }

      else
      {
        v10 = sub_1B0E46A78();
        swift_bridgeObjectRelease_n();
        if ((v10 & 1) == 0)
        {
          return;
        }
      }

      if (*(*(v2 + 104) + 16))
      {
        sub_1B03FE284(v5);
        if (v11)
        {
          type metadata accessor for DownloadTask(0);
          sub_1B0AC1DBC(v5, v6, v7, a2);
        }
      }
    }
  }
}

uint64_t sub_1B0ABCCD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0ABCD58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0ABCE08(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if ((a3 & 1) == 0)
  {
    v12 = a2;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
    result = MessageIdentifierSet.contains(_:)(&v12, v7);
    if ((result & 1) == 0)
    {
      if (!*(a5 + 16) || (result = sub_1B03FE284(a2), (v9 & 1) == 0))
      {
        v10 = a2;
        return MessageIdentifierSet.insert(_:)(v11, &v10, v7);
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DownloadTask.ActionID(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 5))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 4);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for DownloadTask.ActionID(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 4) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = -a2;
    }
  }

  return result;
}

uint64_t sub_1B0ABCF40(uint64_t a1)
{
  if (*(a1 + 4) <= 2u)
  {
    return *(a1 + 4);
  }

  else
  {
    return (*a1 + 3);
  }
}

uint64_t sub_1B0ABCF58(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 4) = a2;
  return result;
}

uint64_t sub_1B0ABCF9C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 9);
  sub_1B0E46C28();
  sub_1B0E46C68();
  if (v2 != 1)
  {
    MEMORY[0x1B2728D70](v1);
  }

  MEMORY[0x1B2728D70](v3);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0ABD020()
{
  v1 = *(v0 + 9);
  if (*(v0 + 8) == 1)
  {
    sub_1B0E46C68();
  }

  else
  {
    v2 = *v0;
    sub_1B0E46C68();
    MEMORY[0x1B2728D70](v2);
  }

  return MEMORY[0x1B2728D70](v1);
}

uint64_t sub_1B0ABD084(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 9);
  sub_1B0E46C28();
  sub_1B0E46C68();
  if (v3 != 1)
  {
    MEMORY[0x1B2728D70](v2);
  }

  MEMORY[0x1B2728D70](v4);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0ABD104(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 9))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  if (*(a2 + 9))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return sub_1B0ABD3E8(*a1, v2 | *(a1 + 8), *a2, v3 | *(a2 + 8));
}

uint64_t sub_1B0ABD148()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](v1);
  sub_1B0E46C78();
  MEMORY[0x1B2728D70](v2 | (v2 << 32));
  sub_1B0B0AB48(v6, v3);
  MEMORY[0x1B2728D70](v4);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0ABD1E0(uint64_t a1)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  MEMORY[0x1B2728D70](*(v1 + 8));
  sub_1B0E46C78();
  MEMORY[0x1B2728D70](v3 | (v3 << 32));
  sub_1B0B0AB48(a1, v4);
  return MEMORY[0x1B2728D70](v5);
}

uint64_t sub_1B0ABD250(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](v2);
  sub_1B0E46C78();
  MEMORY[0x1B2728D70](v3 | (v3 << 32));
  sub_1B0B0AB48(v7, v4);
  MEMORY[0x1B2728D70](v5);
  return sub_1B0E46CB8();
}

unint64_t sub_1B0ABD2E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return sub_1B0ABD428(v5, v7) & 1;
}

uint64_t sub_1B0ABD350(uint64_t a1, int *a2)
{
  if (*(a2 + 16) == 1)
  {
    v2 = *a2;
    v7 = *a2;
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
    result = MessageIdentifierSet.contains(_:)(&v7, v3);
    if ((result & 1) == 0)
    {
      v5 = v2;
      return MessageIdentifierSet.insert(_:)(v6, &v5, v3);
    }
  }

  return result;
}

uint64_t sub_1B0ABD3E8(uint64_t a1, __int16 a2, uint64_t a3, __int16 a4)
{
  if (a2)
  {
    if ((a4 & 1) == 0)
    {
      return 0;
    }

    return ((a4 & 0x100) == 0) ^ ((a2 & 0x100) >> 8);
  }

  result = 0;
  if (a4)
  {
    v6 = 0;
  }

  else
  {
    v6 = a3;
  }

  if ((a4 & 1) == 0 && v6 == a1)
  {
    return ((a4 & 0x100) == 0) ^ ((a2 & 0x100) >> 8);
  }

  return result;
}

uint64_t *sub_1B0ABD428(uint64_t *result, uint64_t *a2)
{
  if (result[1] != a2[1])
  {
    return 0;
  }

  v2 = *result;
  v3 = *a2;
  v4 = *(*result + 16);
  if (v4 != *(*a2 + 16))
  {
    return 0;
  }

  if (v4)
  {
    v5 = v2 == v3;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
LABEL_11:
    if (*(result + 8) == *(a2 + 8) && (*(result + 8) | (*(result + 8) << 32)) == (*(a2 + 8) | (*(a2 + 8) << 32)))
    {
      v8 = result;
      if (sub_1B04520BC(result[3], a2[3]) & 1) != 0 && (sub_1B0B749AC(v8[5], a2[5]))
      {
        return (*(v8 + 48) == *(a2 + 48));
      }
    }

    return 0;
  }

  v6 = (v2 + 32);
  v7 = (v3 + 32);
  while (v4)
  {
    if (*v6 != *v7)
    {
      return 0;
    }

    ++v6;
    ++v7;
    if (!--v4)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1B0ABD518(unint64_t result, char a2, void *a3)
{
  v3 = *(result + 16);
  if (!v3)
  {
    return result;
  }

  LOBYTE(i) = a2;
  v6 = result;
  v7 = *(result + 32);
  v8 = *(result + 40);
  v35 = *(result + 49);
  LOBYTE(v9) = *(result + 48);
  v10 = *a3;
  result = sub_1B03FE284(v7);
  v12 = v10[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  LOBYTE(v16) = v11;
  if (v10[3] < v15)
  {
    sub_1B0B308A0(v15, i & 1);
    result = sub_1B03FE284(v7);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    result = sub_1B0E46BA8();
    __break(1u);
  }

  if (i)
  {
LABEL_7:
    v18 = *a3;
    if (v16)
    {
      goto LABEL_8;
    }

LABEL_11:
    v18[(result >> 6) + 8] |= 1 << result;
    *(v18[6] + 4 * result) = v7;
    v21 = v18[7] + 16 * result;
    *v21 = v8;
    *(v21 + 8) = v9;
    *(v21 + 9) = v35;
    v22 = v18[2];
    v14 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (v14)
    {
LABEL_24:
      __break(1u);
      return result;
    }

    v18[2] = v23;
    v16 = v3 - 1;
    if (v3 != 1)
    {
      goto LABEL_14;
    }

    return result;
  }

  v20 = result;
  sub_1B0B8DB64();
  result = v20;
  v18 = *a3;
  if ((v16 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v19 = v18[7] + 16 * result;
  *v19 = v8;
  *(v19 + 8) = v9;
  *(v19 + 9) = v35;
  v16 = v3 - 1;
  if (v3 != 1)
  {
LABEL_14:
    for (i = (v6 + 73); ; i += 24)
    {
      v6 = *(i - 17);
      v9 = *(i - 9);
      v8 = *i;
      v3 = *(i - 1);
      v25 = *a3;
      result = sub_1B03FE284(v6);
      v27 = v25[2];
      v28 = (v26 & 1) == 0;
      v14 = __OFADD__(v27, v28);
      v29 = v27 + v28;
      if (v14)
      {
        break;
      }

      LODWORD(v7) = v26;
      if (v25[3] < v29)
      {
        sub_1B0B308A0(v29, 1);
        result = sub_1B03FE284(v6);
        if ((v7 & 1) != (v30 & 1))
        {
          goto LABEL_5;
        }
      }

      v31 = *a3;
      if (v7)
      {
        v24 = v31[7] + 16 * result;
        *v24 = v9;
        *(v24 + 8) = v3;
        *(v24 + 9) = v8;
      }

      else
      {
        v31[(result >> 6) + 8] |= 1 << result;
        *(v31[6] + 4 * result) = v6;
        v32 = v31[7] + 16 * result;
        *v32 = v9;
        *(v32 + 8) = v3;
        *(v32 + 9) = v8;
        v33 = v31[2];
        v14 = __OFADD__(v33, 1);
        v34 = v33 + 1;
        if (v14)
        {
          goto LABEL_24;
        }

        v31[2] = v34;
      }

      if (!--v16)
      {
        return result;
      }
    }

    goto LABEL_23;
  }

  return result;
}

uint64_t sub_1B0ABD77C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v4 = a3;
  v5 = a4;
  v6 = *a1;
  v7 = a1[1];
  v8 = *(a1 + 8);
  v9 = a1[3];
  v33 = *(a1 + 8);
  v10 = *(a2 + 16);
  if (v10)
  {
    v26 = a1[3];
    v27 = *(a1 + 8);
    v28 = a1[1];
    v29 = *a1;
    v34 = MEMORY[0x1E69E7CC0];
    sub_1B0B0A004(0, v10, 0);
    v11 = a2;
    v12 = 0;
    v13 = v34;
    v14 = *(v34 + 16);
    v15 = 24 * v14;
    do
    {
      v16 = *(v11 + v12 + 32);
      v17 = *(v11 + v12 + 40);
      v18 = *(v11 + v12 + 48);
      v19 = *(v11 + v12 + 49);
      v34 = v13;
      v20 = *(v13 + 24);
      v21 = v14 + 1;
      if (v14 >= v20 >> 1)
      {
        sub_1B0B0A004((v20 > 1), v14 + 1, 1);
        v11 = a2;
        v13 = v34;
      }

      *(v13 + 16) = v21;
      v22 = v13 + v15 + v12;
      *(v22 + 32) = v16;
      *(v22 + 40) = v17;
      *(v22 + 48) = v18;
      *(v22 + 49) = v19;
      v12 += 24;
      v14 = v21;
      --v10;
    }

    while (v10);

    v4 = a3;
    v6 = v29;
    v5 = a4;
    v7 = v28;
    v8 = v27;
    v9 = v26;
    if (*(v13 + 16))
    {
      goto LABEL_7;
    }

LABEL_9:
    v23 = MEMORY[0x1E69E7CC8];
    goto LABEL_10;
  }

  v13 = MEMORY[0x1E69E7CC0];
  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_9;
  }

LABEL_7:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4118, &qword_1B0EC3318);
  v23 = sub_1B0E466A8();
LABEL_10:
  v34 = v23;
  sub_1B0ABD518(v13, 1, &v34);

  v25 = v34;
  *v5 = v6;
  *(v5 + 8) = v7;
  *(v5 + 16) = v8;
  *(v5 + 24) = v9;
  *(v5 + 32) = v33;
  *(v5 + 40) = v25;
  *(v5 + 48) = v4;
  return result;
}

uint64_t sub_1B0ABD970(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B0ABD9B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s5BatchV7MessageVwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 10))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 9);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t _s5BatchV7MessageVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 9) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1B0ABDAB4()
{
  result = qword_1EB6E4120;
  if (!qword_1EB6E4120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E4120);
  }

  return result;
}

unint64_t sub_1B0ABDB0C()
{
  result = qword_1EB6E4128;
  if (!qword_1EB6E4128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E4128);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Environment.Power(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Environment.Power(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B0ABDCB4()
{
  result = qword_1EB6E4130;
  if (!qword_1EB6E4130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E4138, qword_1B0EC3450);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E4130);
  }

  return result;
}

unint64_t sub_1B0ABDD1C()
{
  result = qword_1EB6E4140;
  if (!qword_1EB6E4140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E4140);
  }

  return result;
}

uint64_t sub_1B0ABDD70(void (*a1)(__int128 *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (!v4)
  {
    return v5;
  }

  v24 = MEMORY[0x1E69E7CC0];
  sub_1B0B0A0A4(0, v4, 0);
  v5 = v24;
  for (i = (a3 + 32); ; ++i)
  {
    v19 = *i;
    a1(&v20, &v19);
    if (v3)
    {
      break;
    }

    v9 = v20;
    v10 = v21;
    v11 = v23;
    v12 = v22;
    v24 = v5;
    v14 = *(v5 + 16);
    v13 = *(v5 + 24);
    if (v14 >= v13 >> 1)
    {
      v17 = v21;
      v18 = v20;
      sub_1B0B0A0A4((v13 > 1), v14 + 1, 1);
      v10 = v17;
      v9 = v18;
      v5 = v24;
    }

    *(v5 + 16) = v14 + 1;
    v15 = v5 + 40 * v14;
    *(v15 + 32) = v9;
    *(v15 + 48) = v10;
    *(v15 + 68) = (v12 | (v11 << 32)) >> 32;
    *(v15 + 64) = v12;
    if (!--v4)
    {
      return v5;
    }
  }

  __break(1u);
  return result;
}

void sub_1B0ABDEA8(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X4>, _DWORD *a4@<X8>)
{
  v91 = a3;
  v99 = a1;
  v100 = a2;
  v97 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v93 = &v86 - v6;
  v88 = type metadata accessor for MailboxTaskLogger(0);
  MEMORY[0x1EEE9AC00](v88);
  v95 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v92 = &v86 - v9;
  v101 = type metadata accessor for DownloadTask.CommandID(0);
  MEMORY[0x1EEE9AC00](v101);
  v98 = (&v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v109 = type metadata accessor for MessageHeader(0);
  v11 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v96 = (&v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4160, &unk_1B0EC3C48);
  MEMORY[0x1EEE9AC00](v106);
  v14 = &v86 - v13;
  v15 = _s19MessageHeaderStatusOMa(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v94 = &v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v102 = (&v86 - v18);
  MEMORY[0x1EEE9AC00](v19);
  v108 = &v86 - v20;
  v21 = _s25MessageSectionsToDownloadVMa(0);
  v113 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = (&v86 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v89 = *(_s18InProgressMessagesVMa(0) + 32);
  v90 = v4;
  v24 = *(v4 + v89);
  v112 = *(v24 + 16);
  if (!v112)
  {
LABEL_29:
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4108, &qword_1B0EC32F8);
    (*(*(v59 - 8) + 56))(v97, 1, 1, v59);
    return;
  }

  v25 = 0;
  v115 = v24;
  v116 = 0;
  v26 = &v118;
  v87 = (*(v113 + 80) + 32) & ~*(v113 + 80);
  v111 = v24 + v87;
  v104 = v14;
  v105 = v11 + 7;
  v107 = (v11 + 3);
  v114 = v23;
  while (1)
  {
    if (v25 >= *(v24 + 16))
    {
      __break(1u);
      goto LABEL_39;
    }

    v110 = (*(v113 + 72) * v25);
    v27 = sub_1B0ACE73C(&v110[v111], v23, _s25MessageSectionsToDownloadVMa);
    v14 = v21;
    v4 = *(v23 + *(v21 + 24));
    v28 = v4[2];
    if (v28)
    {
      break;
    }

LABEL_12:
    v4 = &v86;
    v21 = v14;
    v23 = v114;
    *&v118 = MEMORY[0x1E69E7CC0];
    MEMORY[0x1EEE9AC00](v27);
    *(&v86 - 2) = &v118;
    v14 = v116;
    v43 = sub_1B0B380AC(sub_1B0ACEA64, (&v86 - 4), v42);
    v116 = v14;
    v24 = v115;
    if (v43)
    {
LABEL_4:
      sub_1B0ACE7A4(v23, _s25MessageSectionsToDownloadVMa);
    }

    else
    {
      v44 = *(v21 + 20);
      v45 = v23;
      v46 = v108;
      v11 = v109;
      v103 = *v105;
      v103(v108, 2, 3, v109);
      v47 = *(v106 + 48);
      v48 = v45 + v44;
      v14 = v104;
      sub_1B0ACE73C(v48, v104, _s19MessageHeaderStatusOMa);
      sub_1B0ACE73C(v46, &v14[v47], _s19MessageHeaderStatusOMa);
      v4 = *v107;
      v49 = (*v107)(v14, 3, v11);
      if (v49 > 1)
      {
        if (v49 == 2)
        {
          sub_1B0ACE7A4(v108, _s19MessageHeaderStatusOMa);
          v51 = (v4)(&v14[v47], 3, v109);
          v23 = v114;
          if (v51 != 2)
          {
            goto LABEL_23;
          }
        }

        else
        {
          sub_1B0ACE7A4(v108, _s19MessageHeaderStatusOMa);
          v53 = (v4)(&v14[v47], 3, v109);
          v23 = v114;
          if (v53 != 3)
          {
            goto LABEL_23;
          }
        }
      }

      else
      {
        v11 = v102;
        if (v49)
        {
          sub_1B0ACE7A4(v108, _s19MessageHeaderStatusOMa);
          v52 = (v4)(&v14[v47], 3, v109);
          v23 = v114;
          if (v52 != 1)
          {
            goto LABEL_23;
          }
        }

        else
        {
          sub_1B0ACE73C(v14, v102, _s19MessageHeaderStatusOMa);
          v50 = (v4)(&v14[v47], 3, v109);
          v23 = v114;
          if (v50)
          {
            sub_1B0ACE7A4(v108, _s19MessageHeaderStatusOMa);
            sub_1B0ACE7A4(v11, type metadata accessor for MessageHeader);
LABEL_23:
            sub_1B0398EFC(v14, &qword_1EB6E4160, &unk_1B0EC3C48);
            v54 = _s25MessageSectionsToDownloadVMa;
            v55 = v23;
LABEL_24:
            sub_1B0ACE7A4(v55, v54);
            v24 = v115;
            goto LABEL_5;
          }

          v4 = v96;
          sub_1B0ACE804(&v14[v47], v96, type metadata accessor for MessageHeader);
          v56 = static MessageHeader.== infix(_:_:)(v11, v4);
          sub_1B0ACE7A4(v4, type metadata accessor for MessageHeader);
          sub_1B0ACE7A4(v108, _s19MessageHeaderStatusOMa);
          sub_1B0ACE7A4(v11, type metadata accessor for MessageHeader);
          if ((v56 & 1) == 0)
          {
            sub_1B0ACE7A4(v23, _s25MessageSectionsToDownloadVMa);
            v54 = _s19MessageHeaderStatusOMa;
            v55 = v14;
            goto LABEL_24;
          }
        }
      }

      sub_1B0ACE7A4(v14, _s19MessageHeaderStatusOMa);
      v4 = v98;
      *v98 = *v23;
      swift_storeEnumTagMultiPayload();
      v58 = sub_1B0B70E5C(v4, v99, v100, v57);
      sub_1B0ACE7A4(v4, type metadata accessor for DownloadTask.CommandID);
      sub_1B0ACE7A4(v23, _s25MessageSectionsToDownloadVMa);
      v24 = v115;
      if ((v58 & 1) == 0)
      {
        goto LABEL_31;
      }
    }

LABEL_5:
    if (++v25 == v112)
    {
      goto LABEL_29;
    }
  }

  v21 = 0;
  v11 = v4 + 4;
  while (v21 < v4[2])
  {
    v29 = *v11;
    v30 = v11[2];
    v119 = v11[1];
    v120 = v30;
    v118 = v29;
    v31 = v11[3];
    v32 = v11[4];
    v33 = v11[6];
    v123 = v11[5];
    v124 = v33;
    v121 = v31;
    v122 = v32;
    v34 = v11[7];
    v35 = v11[8];
    v36 = v11[10];
    v127 = v11[9];
    v128 = v36;
    v125 = v34;
    v126 = v35;
    v37 = v11[11];
    v38 = v11[12];
    v39 = v11[13];
    *(v131 + 9) = *(v11 + 217);
    v130 = v38;
    v131[0] = v39;
    v129 = v37;
    v24 = *(&v119 + 1);
    sub_1B0ACE448(&v118, v117);
    v40 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v41 = static SectionSpecifier.Part.__derived_struct_equals(_:_:)(v40, MEMORY[0x1E69E7CC0]);

    v27 = sub_1B0ACE480(&v118);
    if (v41)
    {
      v21 = v14;
      v23 = v114;
      v24 = v115;
      goto LABEL_4;
    }

    ++v21;
    v11 += 15;
    if (v28 == v21)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_31:
  if (v25 >= *(v24 + 16))
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v14 = v110;
  LODWORD(v26) = *&v110[v111];
  v4 = v94;
  v103(v94, 3, 3, v109);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = v95;
  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_33;
  }

LABEL_40:
  v24 = sub_1B0B8C8EC(v24);
LABEL_33:
  if (v25 >= *(v24 + 16))
  {
    __break(1u);
  }

  else
  {
    sub_1B0ACE98C(v4, &v14[v24 + v87 + *(v21 + 20)]);
    *(v90 + v89) = v24;
    v61 = v91;
    v62 = v92;
    sub_1B0ACE73C(v91, v92, type metadata accessor for MailboxTaskLogger);
    sub_1B0ACE73C(v61, v11, type metadata accessor for MailboxTaskLogger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v63 = sub_1B0E43988();
    v64 = sub_1B0E458D8();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v117[0] = v66;
      *v65 = 68159491;
      LODWORD(v116) = v26;
      *(v65 + 4) = 2;
      *(v65 + 8) = 256;
      v67 = v88;
      v68 = v11;
      v69 = v11 + *(v88 + 20);
      *(v65 + 10) = *v69;
      *(v65 + 11) = 2082;
      v70 = v62 + *(v67 + 20);
      *(v65 + 13) = sub_1B0399D64(*(v70 + 8), *(v70 + 16), v117);
      *(v65 + 21) = 1040;
      *(v65 + 23) = 2;
      *(v65 + 27) = 512;
      LOWORD(v69) = *(v69 + 12);
      sub_1B0ACE7A4(v68, type metadata accessor for MailboxTaskLogger);
      *(v65 + 29) = v69;
      *(v65 + 31) = 2160;
      *(v65 + 33) = 0x786F626C69616DLL;
      *(v65 + 41) = 2085;
      v71 = *(v70 + 32);
      LODWORD(v70) = *(v70 + 40);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0ACE7A4(v62, type metadata accessor for MailboxTaskLogger);
      *&v118 = v71;
      DWORD2(v118) = v70;
      v72 = sub_1B0E44BA8();
      v74 = sub_1B0399D64(v72, v73, v117);
      LODWORD(v26) = v116;

      *(v65 + 43) = v74;
      *(v65 + 51) = 1024;
      *(v65 + 53) = v26;
      _os_log_impl(&dword_1B0389000, v63, v64, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Fetching headers for message %u", v65, 0x39u);
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v66, -1, -1);
      MEMORY[0x1B272C230](v65, -1, -1);
    }

    else
    {
      sub_1B0ACE7A4(v11, type metadata accessor for MailboxTaskLogger);

      sub_1B0ACE7A4(v62, type metadata accessor for MailboxTaskLogger);
    }

    v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4108, &qword_1B0EC32F8);
    v76 = v97;
    v77 = v97 + *(v75 + 48);
    *v97 = v26;
    swift_storeEnumTagMultiPayload();
    LODWORD(v118) = v26;
    v78 = sub_1B041C1E8();
    v79 = v93;
    MessageIdentifierSet.init(_:)(&v118, &type metadata for UID, v78);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E41A0, &unk_1B0EF9FA0);
    v80 = swift_allocObject();
    *(v80 + 16) = xmmword_1B0EC3500;
    *(v80 + 32) = 7;
    *(v80 + 40) = 0;
    *(v80 + 48) = 0;
    *(v80 + 56) = 0;
    *(v80 + 68) = -64;
    *(v80 + 64) = 0;
    v81 = SectionSpecifier.header.unsafeMutableAddressor();
    v83 = *v81;
    v82 = v81[1];
    v84 = *(v81 + 16);
    *(v80 + 72) = 1;
    *(v80 + 80) = v83;
    *(v80 + 88) = v82;
    *(v80 + 96) = v84;
    *(v80 + 108) = 33;
    *(v80 + 104) = 0;
    v85 = v77 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FE0, &unk_1B0EC26C0) + 48);
    sub_1B03C60A4(v79, v77, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    *v85 = v80;
    *(v85 + 8) = 0;
    *(v85 + 16) = 1;
    type metadata accessor for ClientCommand(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v75 - 8) + 56))(v76, 0, 1, v75);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0ACE964(v82, v84);
  }
}

uint64_t sub_1B0ABEC0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v199 = a5;
  v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v226 = *(v223 - 8);
  MEMORY[0x1EEE9AC00](v223);
  v196 = &v188 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v198 = &v188 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v217 = &v188 - v14;
  v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v222);
  v200 = &v188 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v219 = &v188 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3670, &unk_1B0E9B260);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v201 = &v188 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v218 = &v188 - v21;
  v210 = _s25MessageSectionsToDownloadVMa(0);
  v197 = *(v210 - 8);
  MEMORY[0x1EEE9AC00](v210);
  v204 = (&v188 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v23);
  v195 = (&v188 - v24);
  MEMORY[0x1EEE9AC00](v25);
  v227 = (&v188 - v26);
  MEMORY[0x1EEE9AC00](v27);
  v215 = (&v188 - v28);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4198, &unk_1B0EC3C80);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v193 = &v188 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v190 = &v188 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v191 = &v188 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v203 = &v188 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v192 = &v188 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v202 = &v188 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v208 = &v188 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v188 - v44;
  MEMORY[0x1EEE9AC00](v46);
  v207 = &v188 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v188 - v49;
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v188 - v52;
  v54 = *(v5 + *(_s18InProgressMessagesVMa(0) + 32));
  v216 = a1;
  v230 = a3;
  sub_1B0ACEEC8(a3, v54, v50);
  v55 = _s18SectionDataRequestVMa(0);
  v56 = *(v55 - 8);
  v228 = *(v56 + 48);
  v229 = v56 + 48;
  if (v228(v50, 1, v55) != 1)
  {
    sub_1B0ACE804(v50, v53, _s18SectionDataRequestVMa);
    (*(v56 + 56))(v53, 0, 1, v55);
LABEL_54:
    if (v228(v53, 1, v55) == 1)
    {
      sub_1B0398EFC(v53, &qword_1EB6E4198, &unk_1B0EC3C80);
      v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4108, &qword_1B0EC32F8);
      return (*(*(v178 - 8) + 56))(v199, 1, 1, v178);
    }

    else
    {
      v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4108, &qword_1B0EC32F8);
      v181 = v199;
      v182 = v199 + *(v180 + 48);
      *&v259 = &unk_1F2710BF0;
      MEMORY[0x1EEE9AC00](v180);
      *(&v188 - 2) = v53;
      v184 = sub_1B0ABDD70(sub_1B0ACEA44, (&v188 - 4), v183);
      sub_1B0AFC708(v184);
      sub_1B0ACE73C(v53, v181, _s18SectionDataRequestVMa);
      type metadata accessor for DownloadTask.CommandID(0);
      swift_storeEnumTagMultiPayload();
      v185 = v196;
      sub_1B03B5C80(v53, v196, &unk_1EB6E26C0, &unk_1B0E9DE10);
      v186 = v259;
      v187 = v182 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FE0, &unk_1B0EC26C0) + 48);
      sub_1B03B5C80(v185, v182, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      *v187 = v186;
      *(v187 + 8) = 0;
      *(v187 + 16) = 1;
      type metadata accessor for ClientCommand(0);
      swift_storeEnumTagMultiPayload();
      sub_1B0398EFC(v185, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      sub_1B0ACE7A4(v53, _s18SectionDataRequestVMa);
      return (*(*(v180 - 8) + 56))(v181, 0, 1, v180);
    }
  }

  v188 = v50;
  v194 = v53;
  v57 = *(v54 + 16);
  v220 = (v226 + 6);
  v221 = v226 + 7;
  v226 = (v56 + 56);
  swift_bridgeObjectRetain_n();
  v211 = a2;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v224 = v55;
  v209 = v57;
  v212 = a4;
  v189 = v54;
  if (!v57)
  {
LABEL_28:
    v116 = *(v54 + 16);
    if (v209 == v116)
    {

      (*v226)(v194, 1, 1, v55);
    }

    else
    {
      if (v209 >= v116)
      {
        goto LABEL_59;
      }

      v117 = v54 + ((*(v197 + 80) + 32) & ~*(v197 + 80)) + *(v197 + 72) * v209;
      v118 = *(v117 + *(v210 + 24));
      sub_1B0ACE73C(v117, v195, _s25MessageSectionsToDownloadVMa);
      sub_1B0ACE73C(v117, v204, _s25MessageSectionsToDownloadVMa);
      v119 = *(v118 + 2);
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v227 = v118;
      v120 = 0;
      if (v119)
      {
        v121 = v118 + 10;
        while (1)
        {
          v122 = *(v121 - 8);
          v123 = *(v121 + 24);
          v260 = *(v121 + 8);
          v261 = v123;
          v259 = v122;
          v124 = *(v121 + 40);
          v125 = *(v121 + 56);
          v126 = *(v121 + 88);
          v264 = *(v121 + 72);
          v265 = v126;
          v262 = v124;
          v263 = v125;
          v127 = *(v121 + 104);
          v128 = *(v121 + 120);
          v129 = *(v121 + 152);
          v268 = *(v121 + 136);
          v269 = v129;
          v266 = v127;
          v267 = v128;
          v130 = *(v121 + 168);
          v131 = *(v121 + 184);
          v132 = *(v121 + 200);
          *(v272 + 9) = *(v121 + 209);
          v271 = v131;
          v272[0] = v132;
          v270 = v130;
          v133 = *v204;
          v134 = v121[1];
          v272[2] = *v121;
          v273[0] = v134;
          *(v273 + 15) = *(v121 + 31);
          v135 = *(&v260 + 1);
          sub_1B0ACE448(&v259, &v245);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v136 = sub_1B0AD074C(v133, v135, v230);

          v137 = sub_1B0ACFEE0(1, v136);

          if (*(v137 + 16))
          {
            LODWORD(v245) = v133;
            v138 = sub_1B041C1E8();
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            v139 = v200;
            MessageIdentifierSet.init(_:)(&v245, &type metadata for UID, v138);
            if (MessageIdentifierSet.count.getter() <= 0)
            {
              sub_1B0398EFC(v139, &unk_1EB6E1AF0, &unk_1B0E9AF40);
              v142 = 1;
              v141 = v201;
            }

            else
            {
              v140 = v198;
              sub_1B03C60A4(v139, v198, &unk_1EB6E1AF0, &unk_1B0E9AF40);
              v141 = v201;
              sub_1B03C60A4(v140, v201, &unk_1EB6E26C0, &unk_1B0E9DE10);
              v142 = 0;
            }

            v145 = v223;
            (*v221)(v141, v142, 1, v223);
            if ((*v220)(v141, 1, v145) == 1)
            {
              goto LABEL_63;
            }

            v146 = v141;
            v143 = v203;
            sub_1B03C60A4(v146, v203, &unk_1EB6E26C0, &unk_1B0E9DE10);
            v144 = v224;
            *(v143 + *(v224 + 20)) = v135;
            *(v143 + *(v144 + 24)) = v137;
            (*v226)(v143, 0, 1, v144);
          }

          else
          {
            v143 = v203;
            v144 = v224;
            (*v226)(v203, 1, 1, v224);
          }

          sub_1B0ACE480(&v259);
          v147 = v228(v143, 1, v144);
          sub_1B0398EFC(v143, &qword_1EB6E4198, &unk_1B0EC3C80);
          if (v147 != 1)
          {
            break;
          }

          ++v120;
          v121 += 15;
          if (v119 == v120)
          {
            v120 = v119;
            break;
          }
        }

        v55 = v224;
        v118 = v227;
      }

      else
      {
        v55 = v224;
      }

      v148 = *(v118 + 2);
      if (v120 == v148)
      {

        sub_1B0ACE7A4(v195, _s25MessageSectionsToDownloadVMa);
        v149 = *v226;
        v150 = v192;
        (*v226)(v192, 1, 1, v55);

        v151 = v193;
      }

      else
      {
        if (v120 >= v148)
        {
          goto LABEL_60;
        }

        v152 = &v118[60 * v120];
        v153 = *(v152 + 2);
        v154 = *(v152 + 4);
        v246 = *(v152 + 3);
        v247 = v154;
        v245 = v153;
        v155 = *(v152 + 5);
        v156 = *(v152 + 6);
        v157 = *(v152 + 8);
        v250 = *(v152 + 7);
        v251 = v157;
        v248 = v155;
        v249 = v156;
        v158 = *(v152 + 9);
        v159 = *(v152 + 10);
        v160 = *(v152 + 12);
        v254 = *(v152 + 11);
        v255 = v160;
        v252 = v158;
        v253 = v159;
        v161 = *(v152 + 13);
        v162 = *(v152 + 14);
        v163 = *(v152 + 15);
        *(v258 + 9) = *(v152 + 249);
        v257 = v162;
        v258[0] = v163;
        v256 = v161;
        v164 = *(v152 + 15);
        v243 = *(v152 + 14);
        v244[0] = v164;
        *(v244 + 9) = *(v152 + 249);
        v165 = *(v152 + 11);
        v239 = *(v152 + 10);
        v240 = v165;
        v166 = *(v152 + 13);
        v241 = *(v152 + 12);
        v242 = v166;
        v167 = *(v152 + 7);
        v235 = *(v152 + 6);
        v236 = v167;
        v168 = *(v152 + 9);
        v237 = *(v152 + 8);
        v238 = v168;
        v169 = *(v152 + 3);
        v231 = *(v152 + 2);
        v232 = v169;
        v170 = *(v152 + 5);
        v233 = *(v152 + 4);
        v234 = v170;
        sub_1B0ACE448(&v245, &v259);
        v171 = v191;
        v172 = v195;
        sub_1B0ACFA14(&v231, v230, v195, v191);

        sub_1B0ACE7A4(v172, _s25MessageSectionsToDownloadVMa);
        v271 = v243;
        v272[0] = v244[0];
        *(v272 + 9) = *(v244 + 9);
        v267 = v239;
        v268 = v240;
        v269 = v241;
        v270 = v242;
        v263 = v235;
        v264 = v236;
        v265 = v237;
        v266 = v238;
        v259 = v231;
        v260 = v232;
        v261 = v233;
        v262 = v234;
        sub_1B0ACE480(&v259);
        v173 = v190;
        sub_1B03B5C80(v171, v190, &qword_1EB6E4198, &unk_1B0EC3C80);
        if (v228(v173, 1, v55) == 1)
        {
          goto LABEL_65;
        }

        v150 = v192;
        sub_1B0ACE804(v173, v192, _s18SectionDataRequestVMa);
        sub_1B0398EFC(v171, &qword_1EB6E4198, &unk_1B0EC3C80);
        v149 = *v226;
        (*v226)(v150, 0, 1, v55);

        v151 = v193;
      }

      sub_1B0ACE7A4(v204, _s25MessageSectionsToDownloadVMa);

      sub_1B03B5C80(v150, v151, &qword_1EB6E4198, &unk_1B0EC3C80);
      if (v228(v151, 1, v55) == 1)
      {
        goto LABEL_64;
      }

      v174 = v151;
      v175 = v194;
      sub_1B0ACE804(v174, v194, _s18SectionDataRequestVMa);
      sub_1B0398EFC(v150, &qword_1EB6E4198, &unk_1B0EC3C80);
      v149(v175, 0, 1, v55);
    }

    v176 = v188;
    v177 = v228(v188, 1, v55);
    v53 = v194;
    if (v177 != 1)
    {
      sub_1B0398EFC(v176, &qword_1EB6E4198, &unk_1B0EC3C80);
    }

    goto LABEL_54;
  }

  v58 = 0;
  v206 = v54 + ((*(v197 + 80) + 32) & ~*(v197 + 80));
  v205 = *(v197 + 72);
  while (1)
  {
    v213 = v58;
    v59 = v206 + v205 * v58;
    v60 = *(v59 + *(v210 + 24));
    sub_1B0ACE73C(v59, v215, _s25MessageSectionsToDownloadVMa);
    sub_1B0ACE73C(v59, v227, _s25MessageSectionsToDownloadVMa);
    v61 = *(v60 + 16);
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v225 = v61;
    v214 = v60;
    v62 = 0;
    if (v61)
    {
      v63 = (v60 + 40);
      while (1)
      {
        v64 = *(v63 - 8);
        v65 = *(v63 + 24);
        v260 = *(v63 + 8);
        v261 = v65;
        v259 = v64;
        v66 = *(v63 + 40);
        v67 = *(v63 + 56);
        v68 = *(v63 + 88);
        v264 = *(v63 + 72);
        v265 = v68;
        v262 = v66;
        v263 = v67;
        v69 = *(v63 + 104);
        v70 = *(v63 + 120);
        v71 = *(v63 + 152);
        v268 = *(v63 + 136);
        v269 = v71;
        v266 = v69;
        v267 = v70;
        v72 = *(v63 + 168);
        v73 = *(v63 + 184);
        v74 = *(v63 + 200);
        *(v272 + 9) = *(v63 + 209);
        v271 = v73;
        v272[0] = v74;
        v270 = v72;
        v75 = *v227;
        v76 = v63[1];
        v273[2] = *v63;
        v274[0] = v76;
        *(v274 + 15) = *(v63 + 31);
        v77 = *(&v260 + 1);
        sub_1B0ACE448(&v259, &v245);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v78 = sub_1B0AD074C(v75, v77, v230);

        v79 = sub_1B0ACFEE0(1, v78);

        if (*(v79 + 16))
        {
          LODWORD(v245) = v75;
          v80 = sub_1B041C1E8();
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v81 = v219;
          MessageIdentifierSet.init(_:)(&v245, &type metadata for UID, v80);
          if (MessageIdentifierSet.count.getter() <= 0)
          {
            sub_1B0398EFC(v81, &unk_1EB6E1AF0, &unk_1B0E9AF40);
            v84 = 1;
            v83 = v218;
          }

          else
          {
            v82 = v217;
            sub_1B03C60A4(v81, v217, &unk_1EB6E1AF0, &unk_1B0E9AF40);
            v83 = v218;
            sub_1B03C60A4(v82, v218, &unk_1EB6E26C0, &unk_1B0E9DE10);
            v84 = 0;
          }

          v85 = v223;
          (*v221)(v83, v84, 1, v223);
          v86 = (*v220)(v83, 1, v85) == 1;
          v87 = v83;
          v55 = v224;
          if (v86)
          {
            goto LABEL_61;
          }

          sub_1B03C60A4(v87, v45, &unk_1EB6E26C0, &unk_1B0E9DE10);
          *&v45[*(v55 + 20)] = v77;
          *&v45[*(v55 + 24)] = v79;
          (*v226)(v45, 0, 1, v55);
        }

        else
        {
          v55 = v224;
          (*v226)(v45, 1, 1, v224);
        }

        sub_1B0ACE480(&v259);
        v88 = v228(v45, 1, v55);
        sub_1B0398EFC(v45, &qword_1EB6E4198, &unk_1B0EC3C80);
        if (v88 != 1)
        {
          break;
        }

        ++v62;
        v63 += 15;
        if (v225 == v62)
        {
          v62 = v225;
          break;
        }
      }

      v60 = v214;
    }

    v89 = *(v60 + 16);
    if (v62 == v89)
    {

      sub_1B0ACE7A4(v215, _s25MessageSectionsToDownloadVMa);
      v90 = v207;
      (*v226)(v207, 1, 1, v55);

      goto LABEL_22;
    }

    v91 = v208;
    if (v62 >= v89)
    {
      break;
    }

    v92 = (v60 + 240 * v62);
    v93 = v92[2];
    v94 = v92[4];
    v246 = v92[3];
    v247 = v94;
    v245 = v93;
    v95 = v92[5];
    v96 = v92[6];
    v97 = v92[8];
    v250 = v92[7];
    v251 = v97;
    v248 = v95;
    v249 = v96;
    v98 = v92[9];
    v99 = v92[10];
    v100 = v92[12];
    v254 = v92[11];
    v255 = v100;
    v252 = v98;
    v253 = v99;
    v101 = v92[13];
    v102 = v92[14];
    v103 = v92[15];
    *(v258 + 9) = *(v92 + 249);
    v257 = v102;
    v258[0] = v103;
    v256 = v101;
    v104 = v92[15];
    v243 = v92[14];
    v244[0] = v104;
    *(v244 + 9) = *(v92 + 249);
    v105 = v92[11];
    v239 = v92[10];
    v240 = v105;
    v106 = v92[13];
    v241 = v92[12];
    v242 = v106;
    v107 = v92[7];
    v235 = v92[6];
    v236 = v107;
    v108 = v92[9];
    v237 = v92[8];
    v238 = v108;
    v109 = v92[3];
    v231 = v92[2];
    v232 = v109;
    v110 = v92[5];
    v233 = v92[4];
    v234 = v110;
    sub_1B0ACE448(&v245, &v259);
    v111 = v91;
    v112 = v215;
    sub_1B0ACFA14(&v231, v230, v215, v111);
    v113 = v208;

    sub_1B0ACE7A4(v112, _s25MessageSectionsToDownloadVMa);
    v271 = v243;
    v272[0] = v244[0];
    *(v272 + 9) = *(v244 + 9);
    v267 = v239;
    v268 = v240;
    v269 = v241;
    v270 = v242;
    v263 = v235;
    v264 = v236;
    v265 = v237;
    v266 = v238;
    v259 = v231;
    v260 = v232;
    v261 = v233;
    v262 = v234;
    sub_1B0ACE480(&v259);
    v114 = v202;
    sub_1B03B5C80(v113, v202, &qword_1EB6E4198, &unk_1B0EC3C80);
    if (v228(v114, 1, v55) == 1)
    {
      goto LABEL_62;
    }

    v90 = v207;
    sub_1B0ACE804(v114, v207, _s18SectionDataRequestVMa);
    sub_1B0398EFC(v113, &qword_1EB6E4198, &unk_1B0EC3C80);
    (*v226)(v90, 0, 1, v55);

LABEL_22:

    sub_1B0ACE7A4(v227, _s25MessageSectionsToDownloadVMa);
    v115 = v228(v90, 1, v55);
    sub_1B0398EFC(v90, &qword_1EB6E4198, &unk_1B0EC3C80);
    if (v115 != 1)
    {
      v209 = v213;
LABEL_27:
      v54 = v189;
      goto LABEL_28;
    }

    v58 = v213 + 1;
    if (v213 + 1 == v209)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:

  sub_1B0ACE7A4(v227, _s25MessageSectionsToDownloadVMa);
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:

  __break(1u);
LABEL_65:

  result = sub_1B0ACE7A4(v204, _s25MessageSectionsToDownloadVMa);
  __break(1u);
  return result;
}

void sub_1B0AC03DC(char *a1, uint64_t a2)
{
  v199 = a2;
  v208 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v200 = &v182 - v3;
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1BF8, &qword_1B0E9AFF0);
  MEMORY[0x1EEE9AC00](v207);
  v206 = &v182 - v4;
  v191 = _s18SectionDataRequestVMa(0);
  MEMORY[0x1EEE9AC00](v191);
  v188 = &v182 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v190 = &v182 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v203 = &v182 - v9;
  v10 = _s19MessageHeaderStatusOMa(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v196 = &v182 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v195 = &v182 - v13;
  v201 = _s25MessageSectionsToDownloadVMa(0);
  v14 = *(v201 - 8);
  MEMORY[0x1EEE9AC00](v201);
  v16 = (&v182 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v197 = type metadata accessor for MailboxTaskLogger(0);
  MEMORY[0x1EEE9AC00](v197);
  v189 = &v182 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v192 = &v182 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v193 = &v182 - v21;
  MEMORY[0x1EEE9AC00](v22);
  *&v194 = &v182 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v182 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v205 = (&v182 - v28);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v182 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v182 - v33;
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v204);
  v202 = &v182 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v182 - v37;
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v182 - v40;
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v182 - v43;
  v45 = type metadata accessor for DownloadTask.CommandID(0);
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v182 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B0ACE73C(v208, v47, type metadata accessor for DownloadTask.CommandID);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v71 = v38;
      sub_1B03C60A4(v47, v38, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v72 = v199;
      v73 = v205;
      sub_1B0ACE73C(v199, v205, type metadata accessor for MailboxTaskLogger);
      sub_1B0ACE73C(v72, v26, type metadata accessor for MailboxTaskLogger);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v74 = v202;
      sub_1B03B5C80(v71, v202, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v75 = sub_1B0E43988();
      v76 = sub_1B0E45908();
      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        v208 = swift_slowAlloc();
        v211[0] = v208;
        *v77 = 68159491;
        *(v77 + 4) = 2;
        *(v77 + 8) = 256;
        v78 = v197;
        v79 = &v26[*(v197 + 20)];
        *(v77 + 10) = *v79;
        *(v77 + 11) = 2082;
        v80 = v73;
        v81 = &v73[*(v78 + 20)];
        *(v77 + 13) = sub_1B0399D64(*(v81 + 1), *(v81 + 2), v211);
        *(v77 + 21) = 1040;
        *(v77 + 23) = 2;
        *(v77 + 27) = 512;
        LOWORD(v79) = *(v79 + 12);
        sub_1B0ACE7A4(v26, type metadata accessor for MailboxTaskLogger);
        *(v77 + 29) = v79;
        *(v77 + 31) = 2160;
        *(v77 + 33) = 0x786F626C69616DLL;
        *(v77 + 41) = 2085;
        v82 = *(v81 + 4);
        LODWORD(v79) = *(v81 + 10);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0ACE7A4(v80, type metadata accessor for MailboxTaskLogger);
        v209 = v82;
        v210 = v79;
        v83 = sub_1B0E44BA8();
        v85 = sub_1B0399D64(v83, v84, v211);

        *(v77 + 43) = v85;
        *(v77 + 51) = 2082;
        v86 = MessageIdentifierSet.debugDescription.getter();
        v88 = v87;
        sub_1B0398EFC(v74, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        v89 = sub_1B0399D64(v86, v88, v211);

        *(v77 + 53) = v89;
        _os_log_impl(&dword_1B0389000, v75, v76, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Did complete fetching message size for messages %{public}s", v77, 0x3Du);
        v90 = v208;
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v90, -1, -1);
        MEMORY[0x1B272C230](v77, -1, -1);

        sub_1B0398EFC(v71, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        return;
      }

      sub_1B0ACE7A4(v26, type metadata accessor for MailboxTaskLogger);

      sub_1B0398EFC(v74, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      sub_1B0398EFC(v71, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v98 = v73;
    }

    else
    {
      sub_1B03C60A4(v47, v44, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v49 = v199;
      sub_1B0ACE73C(v199, v34, type metadata accessor for MailboxTaskLogger);
      sub_1B0ACE73C(v49, v31, type metadata accessor for MailboxTaskLogger);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B03B5C80(v44, v41, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v50 = sub_1B0E43988();
      v51 = sub_1B0E45908();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v208 = v44;
        v54 = v53;
        v211[0] = v53;
        *v52 = 68159491;
        *(v52 + 4) = 2;
        *(v52 + 8) = 256;
        v55 = v197;
        v56 = &v31[*(v197 + 20)];
        *(v52 + 10) = *v56;
        *(v52 + 11) = 2082;
        v57 = &v34[*(v55 + 20)];
        *(v52 + 13) = sub_1B0399D64(*(v57 + 1), *(v57 + 2), v211);
        *(v52 + 21) = 1040;
        *(v52 + 23) = 2;
        *(v52 + 27) = 512;
        LOWORD(v56) = *(v56 + 12);
        sub_1B0ACE7A4(v31, type metadata accessor for MailboxTaskLogger);
        *(v52 + 29) = v56;
        *(v52 + 31) = 2160;
        *(v52 + 33) = 0x786F626C69616DLL;
        *(v52 + 41) = 2085;
        v58 = *(v57 + 4);
        LODWORD(v57) = *(v57 + 10);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0ACE7A4(v34, type metadata accessor for MailboxTaskLogger);
        v209 = v58;
        v210 = v57;
        v59 = sub_1B0E44BA8();
        v61 = sub_1B0399D64(v59, v60, v211);

        *(v52 + 43) = v61;
        *(v52 + 51) = 2082;
        v62 = MessageIdentifierSet.debugDescription.getter();
        v64 = v63;
        sub_1B0398EFC(v41, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        v65 = sub_1B0399D64(v62, v64, v211);

        *(v52 + 53) = v65;
        _os_log_impl(&dword_1B0389000, v50, v51, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Did complete fetching body structure for messages %{public}s", v52, 0x3Du);
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v54, -1, -1);
        MEMORY[0x1B272C230](v52, -1, -1);

        sub_1B0398EFC(v208, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        return;
      }

      sub_1B0ACE7A4(v31, type metadata accessor for MailboxTaskLogger);

      sub_1B0398EFC(v41, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      sub_1B0398EFC(v44, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v98 = v34;
    }

    v97 = type metadata accessor for MailboxTaskLogger;
    goto LABEL_52;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v66 = *v47;
    v208 = _s18InProgressMessagesVMa(0);
    v67 = *(v208 + 8);
    v68 = *(v198 + v67);
    v69 = *(v68 + 16);
    if (!v69)
    {
      return;
    }

    v70 = 0;
    while (1)
    {
      if (v70 >= *(v68 + 16))
      {
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }

      v26 = (v68 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v70);
      sub_1B0ACE73C(v26, v16, _s25MessageSectionsToDownloadVMa);
      v47 = *v16;
      sub_1B0ACE7A4(v16, _s25MessageSectionsToDownloadVMa);
      if (v66 == v47)
      {
        break;
      }

      if (v69 == ++v70)
      {
        return;
      }
    }

    v207 = v67;
    if (v70 >= *(v68 + 16))
    {
      __break(1u);
    }

    else
    {
      v206 = *(v201 + 20);
      v158 = v195;
      sub_1B0ACE73C(&v26[v206], v195, _s19MessageHeaderStatusOMa);
      v159 = type metadata accessor for MessageHeader(0);
      v160 = *(v159 - 8);
      v161 = v196;
      v205 = *(v160 + 56);
      v203 = v160 + 56;
      (v205)(v196, 2, 3, v159);
      v162 = sub_1B0ACAF84(v158, v161);
      sub_1B0ACE7A4(v161, _s19MessageHeaderStatusOMa);
      sub_1B0ACE7A4(v158, _s19MessageHeaderStatusOMa);
      if (v162)
      {
LABEL_58:
        v166 = v199;
        v167 = v194;
        sub_1B0ACE73C(v199, v194, type metadata accessor for MailboxTaskLogger);
        v168 = v193;
        sub_1B0ACE73C(v166, v193, type metadata accessor for MailboxTaskLogger);
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        v169 = sub_1B0E43988();
        v170 = sub_1B0E458E8();
        if (os_log_type_enabled(v169, v170))
        {
          v171 = swift_slowAlloc();
          LODWORD(v205) = v170;
          v172 = v171;
          v206 = swift_slowAlloc();
          v211[0] = v206;
          *v172 = 68159491;
          *(v172 + 4) = 2;
          *(v172 + 8) = 256;
          v173 = v197;
          v174 = v168 + *(v197 + 20);
          *(v172 + 10) = *v174;
          *(v172 + 11) = 2082;
          v175 = v167;
          v176 = v167 + *(v173 + 20);
          *(v172 + 13) = sub_1B0399D64(*(v176 + 8), *(v176 + 16), v211);
          *(v172 + 21) = 1040;
          *(v172 + 23) = 2;
          *(v172 + 27) = 512;
          LOWORD(v174) = *(v174 + 24);
          sub_1B0ACE7A4(v168, type metadata accessor for MailboxTaskLogger);
          *(v172 + 29) = v174;
          *(v172 + 31) = 2160;
          *(v172 + 33) = 0x786F626C69616DLL;
          *(v172 + 41) = 2085;
          v177 = *(v176 + 32);
          LODWORD(v176) = *(v176 + 40);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B0ACE7A4(v175, type metadata accessor for MailboxTaskLogger);
          v209 = v177;
          v210 = v176;
          v178 = sub_1B0E44BA8();
          v180 = sub_1B0399D64(v178, v179, v211);

          *(v172 + 43) = v180;
          *(v172 + 51) = 1024;
          *(v172 + 53) = v66;
          _os_log_impl(&dword_1B0389000, v169, v205, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Server did not return header data for message %u.", v172, 0x39u);
          v181 = v206;
          swift_arrayDestroy();
          MEMORY[0x1B272C230](v181, -1, -1);
          MEMORY[0x1B272C230](v172, -1, -1);
        }

        else
        {
          sub_1B0ACE7A4(v168, type metadata accessor for MailboxTaskLogger);

          sub_1B0ACE7A4(v167, type metadata accessor for MailboxTaskLogger);
        }

        LODWORD(v211[0]) = v66;
        MessageIdentifierSet.insert(_:)(&v209, v211, v204);
        sub_1B0BAFDD8(v70, v16);
        v97 = _s25MessageSectionsToDownloadVMa;
        v98 = v16;
        goto LABEL_52;
      }

      if (v70 < *(v68 + 16))
      {
        v163 = v195;
        sub_1B0ACE73C(&v26[v206], v195, _s19MessageHeaderStatusOMa);
        v164 = v196;
        (v205)(v196, 3, 3, v159);
        v165 = sub_1B0ACAF84(v163, v164);
        sub_1B0ACE7A4(v164, _s19MessageHeaderStatusOMa);
        sub_1B0ACE7A4(v163, _s19MessageHeaderStatusOMa);
        if ((v165 & 1) == 0)
        {
          return;
        }

        goto LABEL_58;
      }
    }

    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v91 = v203;
  sub_1B0ACE804(v47, v203, _s18SectionDataRequestVMa);
  v92 = v200;
  sub_1B03B5C80(v91, v200, &unk_1EB6E26C0, &unk_1B0E9DE10);
  v66 = v206;
  sub_1B03B5C80(v92, v206, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  v93 = (v66 + *(v207 + 36));
  v70 = MessageIdentifierSet.startIndex.getter(v204);
  v26 = v94;
  sub_1B0398EFC(v92, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  *v93 = v70;
  v93[1] = v26;
  v205 = v93;
  v69 = *(_s18InProgressMessagesVMa(0) + 32);
  v47 = v198;
  v45 = *(v198 + v69);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_65:
    v45 = sub_1B0B8C8EC(v45);
  }

  v195 = v69;
  *(v47 + v69) = v45;
  v47 = v204;
  if (v70 != MessageIdentifierSet.endIndex.getter(v204) || v26 != v95)
  {
    v202 = 0;
    *&v96 = 68160003;
    v194 = v96;
    while (1)
    {
      v69 = v66;
      MessageIdentifierSet.subscript.getter(v26, v47, &v209);
      v99 = v209;
      MessageIdentifierSet.index(_:offsetBy:)(v70, v26, 1);
      v100 = v205;
      v207 = v102;
      v208 = v101;
      *v205 = v101;
      v100[1] = v102;
      v26 = v45[2];
      if (v26)
      {
        v103 = 0;
        while (1)
        {
          if (v103 >= v45[2])
          {
            __break(1u);
            goto LABEL_63;
          }

          v70 = v45 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v103;
          sub_1B0ACE73C(v70, v16, _s25MessageSectionsToDownloadVMa);
          v69 = *v16;
          v104 = sub_1B0ACE7A4(v16, _s25MessageSectionsToDownloadVMa);
          if (v99 == v69)
          {
            break;
          }

          if (v26 == ++v103)
          {
            goto LABEL_27;
          }
        }

        if (v103 >= v45[2])
        {
          goto LABEL_64;
        }

        v200 = &v182;
        v196 = *(v201 + 24);
        v105 = *(v70 + v196);
        MEMORY[0x1EEE9AC00](v104);
        *(&v182 - 2) = v203;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v106 = v202;
        v107 = sub_1B0BA6EBC(sub_1B0ACE86C, (&v182 - 4), v105);
        v109 = v108;
        v202 = v106;
        v47 = v204;

        if ((v109 & 1) == 0)
        {
          v200 = v107;
          if (v103 >= v45[2])
          {
            goto LABEL_68;
          }

          if ((v200 & 0x8000000000000000) != 0)
          {
            goto LABEL_69;
          }

          v112 = *(v70 + v196);
          if (v200 >= *(v112 + 16))
          {
            goto LABEL_70;
          }

          v196 = 240 * v200;
          v113 = v112 + 240 * v200;
          v114 = *(v113 + 72);
          v115 = *(v203 + *(v191 + 24));
          v116 = v193 & 0xFFFFFF0000000000 | *(v113 + 80) | (*(v113 + 84) << 32);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v193 = v116;
          LOBYTE(v115) = sub_1B0B815D8(v115, v114, v116);

          if ((v115 & 1) == 0)
          {
            break;
          }
        }
      }

LABEL_27:
      v66 = v206;
      v110 = MessageIdentifierSet.endIndex.getter(v47);
      v26 = v207;
      v70 = v208;
      if (v208 == v110 && v207 == v111)
      {
        goto LABEL_17;
      }
    }

    v117 = v199;
    sub_1B0ACE73C(v199, v192, type metadata accessor for MailboxTaskLogger);
    sub_1B0ACE73C(v117, v189, type metadata accessor for MailboxTaskLogger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v118 = v203;
    sub_1B0ACE73C(v203, v190, _s18SectionDataRequestVMa);
    v119 = v118;
    v120 = v188;
    sub_1B0ACE73C(v119, v188, _s18SectionDataRequestVMa);
    v121 = sub_1B0E43988();
    v122 = sub_1B0E458E8();
    if (os_log_type_enabled(v121, v122))
    {
      v185 = v122;
      v187 = v121;
      v123 = swift_slowAlloc();
      v184 = swift_slowAlloc();
      v211[0] = v184;
      *v123 = v194;
      *(v123 + 4) = 2;
      *(v123 + 8) = 256;
      v124 = v197;
      v125 = v189;
      v126 = v189 + *(v197 + 20);
      *(v123 + 10) = *v126;
      *(v123 + 11) = 2082;
      v127 = v192 + *(v124 + 20);
      *(v123 + 13) = sub_1B0399D64(*(v127 + 8), *(v127 + 16), v211);
      *(v123 + 21) = 1040;
      *(v123 + 23) = 2;
      *(v123 + 27) = 512;
      LODWORD(v186) = *(v126 + 24);
      sub_1B0ACE7A4(v125, type metadata accessor for MailboxTaskLogger);
      *(v123 + 29) = v186;
      *(v123 + 31) = 2160;
      *(v123 + 33) = 0x786F626C69616DLL;
      *(v123 + 41) = 2085;
      v128 = *(v127 + 32);
      LODWORD(v127) = *(v127 + 40);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0ACE7A4(v192, type metadata accessor for MailboxTaskLogger);
      v209 = v128;
      v210 = v127;
      v129 = sub_1B0E44BA8();
      v131 = sub_1B0399D64(v129, v130, v211);

      *(v123 + 43) = v131;
      *(v123 + 51) = 1024;
      *(v123 + 53) = v99;
      *(v123 + 57) = 2082;
      v132 = v191;
      v133 = v190;
      v134 = SectionSpecifier.Part.debugDescription.getter(*(v190 + *(v191 + 20)));
      v136 = v135;
      sub_1B0ACE7A4(v133, _s18SectionDataRequestVMa);
      v137 = sub_1B0399D64(v134, v136, v211);

      *(v123 + 59) = v137;
      v186 = v123;
      *(v123 + 67) = 2080;
      v138 = v188;
      v139 = *(v188 + *(v132 + 24));
      v140 = *(v139 + 16);
      if (v140)
      {
        v209 = MEMORY[0x1E69E7CC0];
        sub_1B0B0A0C4(0, v140, 0);
        v141 = v209;
        v142 = (v139 + 32);
        v143 = *(v209 + 16);
        do
        {
          v144 = *v142;
          v209 = v141;
          v145 = *(v141 + 24);
          if (v143 >= v145 >> 1)
          {
            v183 = v144;
            sub_1B0B0A0C4((v145 > 1), v143 + 1, 1);
            v144 = v183;
            v141 = v209;
          }

          *(v141 + 16) = v143 + 1;
          *(v141 + 8 * v143 + 32) = v144;
          ++v142;
          ++v143;
          --v140;
        }

        while (v140);
        v138 = v188;
      }

      else
      {
        v141 = MEMORY[0x1E69E7CC0];
      }

      v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3AE0, &unk_1B0EA3A80);
      v147 = MEMORY[0x1B27272F0](v141, v146);
      v149 = v148;

      sub_1B0ACE7A4(v138, _s18SectionDataRequestVMa);
      v150 = sub_1B0399D64(v147, v149, v211);

      v151 = v186;
      *(v186 + 69) = v150;
      v152 = v187;
      _os_log_impl(&dword_1B0389000, v187, v185, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Server did not return any data for message %u, part '[%{public}s]', ranges %s", v151, 0x4Du);
      v153 = v184;
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v153, -1, -1);
      MEMORY[0x1B272C230](v151, -1, -1);

      v47 = v204;
    }

    else
    {
      sub_1B0ACE7A4(v189, type metadata accessor for MailboxTaskLogger);

      sub_1B0ACE7A4(v120, _s18SectionDataRequestVMa);
      sub_1B0ACE7A4(v192, type metadata accessor for MailboxTaskLogger);
      sub_1B0ACE7A4(v190, _s18SectionDataRequestVMa);
    }

    if (v103 < v45[2])
    {
      v154 = *(v201 + 24);
      v155 = *(v70 + v154);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v70 + v154) = v155;
      v157 = v198;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v155 = sub_1B0B8C900(v155);
        *(v70 + v154) = v155;
      }

      if (v200 < *(v155 + 2))
      {
        v155[v196 + 86] = 1;
        *(v70 + v154) = v155;
        *(v157 + v195) = v45;
        goto LABEL_27;
      }

      goto LABEL_72;
    }

LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    return;
  }

LABEL_17:
  sub_1B0398EFC(v66, &qword_1EB6E1BF8, &qword_1B0E9AFF0);
  v97 = _s18SectionDataRequestVMa;
  v98 = v203;
LABEL_52:
  sub_1B0ACE7A4(v98, v97);
}

uint64_t sub_1B0AC1C84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a2;
  sub_1B0ACDED4();
  v7 = 0;
  v8 = *(_s18InProgressMessagesVMa(0) + 32);
  v9 = *(v3 + v8);
  v10 = v9[2];
  while (1)
  {
    if (v10 == v7)
    {
      return 0xFF00000000;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1B0B8C8EC(v9);
      v9 = result;
    }

    if (v7 >= v9[2])
    {
      break;
    }

    _s25MessageSectionsToDownloadVMa(0);
    v12 = sub_1B0AC73F4(a1, v5, a3);
    *(v3 + v8) = v9;
    ++v7;
    if ((~v12 & 0xF000000000000007) != 0)
    {
      return 0x300000001;
    }
  }

  __break(1u);
  return result;
}

void sub_1B0AC1DBC(uint64_t a1, uint64_t a2, int a3, NSObject *isa_low)
{
  v137 = a3;
  v7 = a1;
  v8 = _s19MessageHeaderStatusOMa(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v139 = (v124 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v140 = type metadata accessor for MailboxTaskLogger(0);
  MEMORY[0x1EEE9AC00](v140);
  v11 = v124 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v124 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v129 = v124 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v130 = v124 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v134 = v124 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v135 = v124 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v131 = (v124 - v24);
  MEMORY[0x1EEE9AC00](v25);
  v132 = v124 - v26;
  v133 = _s25MessageSectionsToDownloadVMa(0);
  v27 = *(v133 - 8);
  MEMORY[0x1EEE9AC00](v133);
  v136 = (v124 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v29);
  v138 = v124 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v33 = (v124 - v32);
  sub_1B0AC57D8(v7, v144);
  v154 = v144[8];
  v155 = v144[9];
  v156[0] = v145[0];
  *(v156 + 9) = *(v145 + 9);
  v150 = v144[4];
  v151 = v144[5];
  v152 = v144[6];
  v153 = v144[7];
  v146 = v144[0];
  v147 = v144[1];
  v148 = v144[2];
  v149 = v144[3];
  if (sub_1B0ACE88C(&v146) != 1)
  {
    v128 = isa_low;
    v126 = a2;
    v157[8] = v154;
    v157[9] = v155;
    v158[0] = v156[0];
    *(v158 + 9) = *(v156 + 9);
    v157[4] = v150;
    v157[5] = v151;
    v157[6] = v152;
    v157[7] = v153;
    v157[0] = v146;
    v157[1] = v147;
    v157[2] = v148;
    v157[3] = v149;
    v48 = _s18InProgressMessagesVMa(0);
    v49 = 0;
    v50 = *(v48 + 32);
    v127 = v4;
    v124[1] = v48;
    v125 = v50;
    v51 = *(&v4->isa + v50);
    v52 = *(v51 + 16);
    while (v52 != v49)
    {
      if (v49 >= *(v51 + 16))
      {
        __break(1u);
        goto LABEL_29;
      }

      sub_1B0ACE73C(v51 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v49++, v33, _s25MessageSectionsToDownloadVMa);
      isa_low = LODWORD(v33->isa);
      sub_1B0ACE7A4(v33, _s25MessageSectionsToDownloadVMa);
      if (isa_low == v7)
      {
        v53 = v128;
        v54 = v130;
        sub_1B0ACE73C(v128, v130, type metadata accessor for MailboxTaskLogger);
        v55 = v129;
        sub_1B0ACE73C(v53, v129, type metadata accessor for MailboxTaskLogger);
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        v56 = v126;
        swift_bridgeObjectRetain_n();
        v57 = sub_1B0E43988();
        v58 = sub_1B0E458E8();
        v139 = v57;
        if (os_log_type_enabled(v57, v58))
        {
          v59 = swift_slowAlloc();
          v138 = swift_slowAlloc();
          v143 = v138;
          *v59 = 68159747;
          *(v59 + 4) = 2;
          *(v59 + 8) = 256;
          v60 = v140;
          v61 = v55;
          v62 = v55 + *(v140 + 20);
          *(v59 + 10) = *v62;
          *(v59 + 11) = 2082;
          v63 = v54 + *(v60 + 20);
          *(v59 + 13) = sub_1B0399D64(*(v63 + 8), *(v63 + 16), &v143);
          *(v59 + 21) = 1040;
          *(v59 + 23) = 2;
          *(v59 + 27) = 512;
          LOWORD(v62) = *(v62 + 24);
          sub_1B0ACE7A4(v61, type metadata accessor for MailboxTaskLogger);
          *(v59 + 29) = v62;
          *(v59 + 31) = 2160;
          *(v59 + 33) = 0x786F626C69616DLL;
          *(v59 + 41) = 2085;
          v64 = *(v63 + 32);
          LODWORD(v63) = *(v63 + 40);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B0ACE7A4(v54, type metadata accessor for MailboxTaskLogger);
          v141 = v64;
          v142 = v63;
          v65 = sub_1B0E44BA8();
          v67 = sub_1B0399D64(v65, v66, &v143);

          *(v59 + 43) = v67;
          *(v59 + 51) = 2048;
          v68 = *(v56 + 16);

          *(v59 + 53) = v68;

          *(v59 + 61) = 1024;
          *(v59 + 63) = v7;
          v69 = v139;
          _os_log_impl(&dword_1B0389000, v139, v58, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Requested to download %ld sections for message %u -- but sections for this message have already been added.", v59, 0x43u);
          v70 = v138;
          swift_arrayDestroy();
          MEMORY[0x1B272C230](v70, -1, -1);
          MEMORY[0x1B272C230](v59, -1, -1);
          sub_1B0398EFC(v144, &qword_1EB6E4168, &qword_1B0EC3C58);

          return;
        }

        sub_1B0ACE7A4(v55, type metadata accessor for MailboxTaskLogger);
        sub_1B0398EFC(v144, &qword_1EB6E4168, &qword_1B0EC3C58);

        v94 = v54;
LABEL_27:
        sub_1B0ACE7A4(v94, type metadata accessor for MailboxTaskLogger);
        return;
      }
    }

    v71 = v128;
    v72 = v132;
    sub_1B0ACE73C(v128, v132, type metadata accessor for MailboxTaskLogger);
    v73 = v131;
    sub_1B0ACE73C(v71, v131, type metadata accessor for MailboxTaskLogger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v74 = v126;
    swift_bridgeObjectRetain_n();
    v75 = sub_1B0E43988();
    v76 = sub_1B0E45908();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      LODWORD(v129) = v76;
      v78 = v77;
      v130 = swift_slowAlloc();
      v143 = v130;
      *v78 = 68159747;
      *(v78 + 4) = 2;
      *(v78 + 8) = 256;
      v79 = v140;
      v80 = v73 + *(v140 + 20);
      *(v78 + 10) = *v80;
      *(v78 + 11) = 2082;
      v81 = *(v79 + 20);
      v124[0] = v75;
      v82 = v72;
      v83 = v72 + v81;
      *(v78 + 13) = sub_1B0399D64(*(v83 + 8), *(v83 + 16), &v143);
      *(v78 + 21) = 1040;
      *(v78 + 23) = 2;
      *(v78 + 27) = 512;
      v84 = *(v80 + 12);
      sub_1B0ACE7A4(v73, type metadata accessor for MailboxTaskLogger);
      *(v78 + 29) = v84;
      *(v78 + 31) = 2160;
      *(v78 + 33) = 0x786F626C69616DLL;
      *(v78 + 41) = 2085;
      v85 = *(v83 + 32);
      v86 = *(v83 + 40);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0ACE7A4(v82, type metadata accessor for MailboxTaskLogger);
      v141 = v85;
      v142 = v86;
      v71 = v128;
      v87 = sub_1B0E44BA8();
      v89 = sub_1B0399D64(v87, v88, &v143);

      *(v78 + 43) = v89;
      *(v78 + 51) = 2048;
      v90 = *(v74 + 16);

      *(v78 + 53) = v90;

      *(v78 + 61) = 1024;
      *(v78 + 63) = v7;
      v91 = v124[0];
      _os_log_impl(&dword_1B0389000, v124[0], v129, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Requested to download %ld sections for message %u.", v78, 0x43u);
      v92 = v130;
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v92, -1, -1);
      MEMORY[0x1B272C230](v78, -1, -1);
    }

    else
    {

      sub_1B0ACE7A4(v73, type metadata accessor for MailboxTaskLogger);

      v93 = sub_1B0ACE7A4(v72, type metadata accessor for MailboxTaskLogger);
    }

    v95 = v127;
    v96 = v139;
    v97 = v137;
    if (!*(v74 + 16))
    {
      LODWORD(v143) = v7;
      v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
      v93 = MessageIdentifierSet.insert(_:)(&v141, &v143, v98);
    }

    MEMORY[0x1EEE9AC00](v93);
    v124[-4] = v157;
    v124[-3] = v95;
    v124[-2] = v71;
    v99 = sub_1B0B3E208(sub_1B0ACE8B0, &v124[-6], v74);
    v100 = type metadata accessor for MessageHeader(0);
    if (v97)
    {
      v101 = 2;
    }

    else
    {
      v101 = 1;
    }

    (*(*(v100 - 8) + 56))(v96, v101, 3, v100);
    v102 = v133;
    v49 = v138;
    sub_1B0ACE73C(v96, &v138[*(v133 + 20)], _s19MessageHeaderStatusOMa);
    *v49 = v7;
    *(v49 + *(v102 + 24)) = v99;
    *(v49 + *(v102 + 28)) = MEMORY[0x1E69E7CC0];
    v103 = v135;
    sub_1B0ACE73C(v71, v135, type metadata accessor for MailboxTaskLogger);
    v104 = v134;
    sub_1B0ACE73C(v71, v134, type metadata accessor for MailboxTaskLogger);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v105 = sub_1B0E43988();
    v106 = sub_1B0E45908();
    if (os_log_type_enabled(v105, v106))
    {
      v107 = swift_slowAlloc();
      LODWORD(v132) = v106;
      v108 = v107;
      v133 = swift_slowAlloc();
      v143 = v133;
      *v108 = 68160003;
      *(v108 + 4) = 2;
      *(v108 + 8) = 256;
      v109 = v140;
      v110 = *(v140 + 20);
      v131 = v105;
      v111 = v104 + v110;
      *(v108 + 10) = *(v104 + v110);
      *(v108 + 11) = 2082;
      v112 = v103;
      v113 = v103 + *(v109 + 20);
      *(v108 + 13) = sub_1B0399D64(*(v113 + 8), *(v113 + 16), &v143);
      *(v108 + 21) = 1040;
      *(v108 + 23) = 2;
      *(v108 + 27) = 512;
      LOWORD(v111) = *(v111 + 24);
      sub_1B0ACE7A4(v104, type metadata accessor for MailboxTaskLogger);
      *(v108 + 29) = v111;
      *(v108 + 31) = 2160;
      *(v108 + 33) = 0x786F626C69616DLL;
      *(v108 + 41) = 2085;
      v114 = *(v113 + 32);
      LODWORD(v113) = *(v113 + 40);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0ACE7A4(v112, type metadata accessor for MailboxTaskLogger);
      v141 = v114;
      v142 = v113;
      v115 = sub_1B0E44BA8();
      v117 = sub_1B0399D64(v115, v116, &v143);

      *(v108 + 43) = v117;
      v49 = v138;
      *(v108 + 51) = 2048;
      v118 = *(v99 + 2);

      *(v108 + 53) = v118;
      v33 = v127;

      *(v108 + 61) = 1024;
      *(v108 + 63) = v7;
      *(v108 + 67) = 1024;
      *(v108 + 69) = v137 & 1;
      v119 = v131;
      _os_log_impl(&dword_1B0389000, v131, v132, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Adding %ld sections for message %u. Downloading message headers: %{BOOL}d", v108, 0x49u);
      v120 = v133;
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v120, -1, -1);
      MEMORY[0x1B272C230](v108, -1, -1);

      isa_low = v136;
    }

    else
    {

      sub_1B0ACE7A4(v104, type metadata accessor for MailboxTaskLogger);

      sub_1B0ACE7A4(v103, type metadata accessor for MailboxTaskLogger);
      isa_low = v136;
      v33 = v127;
    }

    sub_1B0ACE73C(v49, isa_low, _s25MessageSectionsToDownloadVMa);
    v51 = v125;
    v4 = *(&v33->isa + v125);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_29:
      v4 = sub_1B0AFFAD0(0, v4[2].isa + 1, 1, v4);
    }

    v121 = v139;
    isa = v4[2].isa;
    v122 = v4[3].isa;
    if (isa >= v122 >> 1)
    {
      v4 = sub_1B0AFFAD0((v122 > 1), isa + 1, 1, v4);
    }

    sub_1B0398EFC(v144, &qword_1EB6E4168, &qword_1B0EC3C58);
    sub_1B0ACE7A4(v49, _s25MessageSectionsToDownloadVMa);
    sub_1B0ACE7A4(v121, _s19MessageHeaderStatusOMa);
    v4[2].isa = (isa + 1);
    sub_1B0ACE804(isa_low, v4 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * isa, _s25MessageSectionsToDownloadVMa);
    *(&v33->isa + v51) = v4;
    return;
  }

  sub_1B0ACE73C(isa_low, v14, type metadata accessor for MailboxTaskLogger);
  sub_1B0ACE73C(isa_low, v11, type metadata accessor for MailboxTaskLogger);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  swift_bridgeObjectRetain_n();
  v34 = sub_1B0E43988();
  v35 = sub_1B0E458E8();
  if (!os_log_type_enabled(v34, v35))
  {

    sub_1B0ACE7A4(v11, type metadata accessor for MailboxTaskLogger);

    v94 = v14;
    goto LABEL_27;
  }

  v36 = swift_slowAlloc();
  LODWORD(v138) = v35;
  v37 = v36;
  v139 = swift_slowAlloc();
  v141 = v139;
  *v37 = 68159747;
  *(v37 + 4) = 2;
  *(v37 + 8) = 256;
  v38 = v140;
  v39 = a2;
  v40 = &v11[*(v140 + 20)];
  *(v37 + 10) = *v40;
  *(v37 + 11) = 2082;
  v41 = &v14[*(v38 + 20)];
  *(v37 + 13) = sub_1B0399D64(*(v41 + 1), *(v41 + 2), &v141);
  *(v37 + 21) = 1040;
  *(v37 + 23) = 2;
  *(v37 + 27) = 512;
  LOWORD(v40) = *(v40 + 12);
  sub_1B0ACE7A4(v11, type metadata accessor for MailboxTaskLogger);
  *(v37 + 29) = v40;
  *(v37 + 31) = 2160;
  *(v37 + 33) = 0x786F626C69616DLL;
  *(v37 + 41) = 2085;
  v42 = *(v41 + 4);
  LODWORD(v41) = *(v41 + 10);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0ACE7A4(v14, type metadata accessor for MailboxTaskLogger);
  *&v157[0] = v42;
  DWORD2(v157[0]) = v41;
  v43 = sub_1B0E44BA8();
  v45 = sub_1B0399D64(v43, v44, &v141);

  *(v37 + 43) = v45;
  *(v37 + 51) = 2048;
  v46 = *(v39 + 16);

  *(v37 + 53) = v46;

  *(v37 + 61) = 1024;
  *(v37 + 63) = v7;
  _os_log_impl(&dword_1B0389000, v34, v138, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Requested to download %ld sections for message %u, but we don’t have a body structure for this message.", v37, 0x43u);
  v47 = v139;
  swift_arrayDestroy();
  MEMORY[0x1B272C230](v47, -1, -1);
  MEMORY[0x1B272C230](v37, -1, -1);
}

BOOL sub_1B0AC2E88(__int128 *a1, __int128 *a2)
{
  v3 = a1[9];
  v119 = a1[8];
  v120 = v3;
  v121 = a1[10];
  v122 = *(a1 + 176);
  v4 = a1[5];
  v115 = a1[4];
  v116 = v4;
  v5 = a1[7];
  v117 = a1[6];
  v118 = v5;
  v6 = a1[1];
  v111 = *a1;
  v112 = v6;
  v7 = a1[3];
  v113 = a1[2];
  v114 = v7;
  if (sub_1B04FAE9C(&v111) == 1)
  {
    v8 = a2[9];
    v85 = a2[8];
    v86 = v8;
    v87 = a2[10];
    v88 = *(a2 + 176);
    v9 = a2[5];
    v81 = a2[4];
    v82 = v9;
    v10 = a2[7];
    v83 = a2[6];
    v84 = v10;
    v11 = a2[1];
    v77 = *a2;
    v78 = v11;
    v12 = a2[3];
    v79 = a2[2];
    v80 = v12;
    return sub_1B04FAE9C(&v77) == 1;
  }

  v14 = a2[9];
  v85 = a2[8];
  v86 = v14;
  v87 = a2[10];
  v88 = *(a2 + 176);
  v15 = a2[5];
  v81 = a2[4];
  v82 = v15;
  v16 = a2[7];
  v83 = a2[6];
  v84 = v16;
  v17 = a2[1];
  v77 = *a2;
  v78 = v17;
  v18 = a2[3];
  v79 = a2[2];
  v80 = v18;
  if (sub_1B04FAE9C(&v77) == 1)
  {
    return 0;
  }

  v73 = v119;
  v74 = v120;
  v75 = v121;
  v76 = v122;
  v69 = v115;
  v70 = v116;
  v71 = v117;
  v72 = v118;
  v65 = v111;
  v66 = v112;
  v67 = v113;
  v68 = v114;
  if (sub_1B04FAE88(&v65) != 1)
  {
    v61 = v85;
    v62 = v86;
    v63 = v87;
    v64 = v88;
    v57 = v81;
    v58 = v82;
    v59 = v83;
    v60 = v84;
    v53 = v77;
    v54 = v78;
    v55 = v79;
    v56 = v80;
    if (sub_1B04FAE88(&v53) == 1)
    {
      return 0;
    }

    v51[8] = v73;
    v51[9] = v74;
    v51[10] = v75;
    v52 = v76;
    v51[4] = v69;
    v51[5] = v70;
    v51[6] = v71;
    v51[7] = v72;
    v51[0] = v65;
    v51[1] = v66;
    v51[2] = v67;
    v51[3] = v68;
    if (sub_1B0717014(v51) == 1)
    {
      __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
      v20 = v19[4];
      v94 = v19[5];
      v95 = v19[6];
      *&v96 = *(v19 + 14);
      v21 = v19[1];
      v89 = *v19;
      v90 = v21;
      v22 = v19[3];
      v91 = v19[2];
      v92 = v22;
      v93 = v20;
      v47 = v61;
      v48 = v62;
      v49 = v63;
      v50 = v64;
      v43 = v57;
      v44 = v58;
      v45 = v59;
      v46 = v60;
      v39 = v53;
      v40 = v54;
      v41 = v55;
      v42 = v56;
      if (sub_1B0717014(&v39) == 1)
      {
        __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
        v24 = v23[5];
        v104 = v23[4];
        v105 = v24;
        v106 = v23[6];
        *&v107 = *(v23 + 14);
        v25 = v23[1];
        v100 = *v23;
        v101 = v25;
        v26 = v23[3];
        v102 = v23[2];
        v103 = v26;
        return (static BodyStructure.Multipart.__derived_struct_equals(_:_:)(&v89, &v100) & 1) != 0;
      }
    }

    else
    {
      __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
      v28 = v27[9];
      v97 = v27[8];
      v98 = v28;
      v99 = v27[10];
      v29 = v27[4];
      v94 = v27[5];
      v30 = v27[6];
      v96 = v27[7];
      v95 = v30;
      v31 = v27[1];
      v89 = *v27;
      v90 = v31;
      v32 = v27[2];
      v92 = v27[3];
      v93 = v29;
      v91 = v32;
      v50 = v64;
      v48 = v62;
      v49 = v63;
      v46 = v60;
      v47 = v61;
      v44 = v58;
      v45 = v59;
      v42 = v56;
      v43 = v57;
      v40 = v54;
      v41 = v55;
      v39 = v53;
      if (sub_1B0717014(&v39) != 1)
      {
        __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
        v34 = v33[9];
        v108 = v33[8];
        v109 = v34;
        v110 = v33[10];
        v35 = v33[5];
        v104 = v33[4];
        v105 = v35;
        v36 = v33[6];
        v107 = v33[7];
        v106 = v36;
        v37 = v33[1];
        v100 = *v33;
        v101 = v37;
        v38 = v33[2];
        v103 = v33[3];
        v102 = v38;
        return static BodyStructure.Singlepart.__derived_struct_equals(_:_:)(&v89, &v100);
      }
    }

    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    return 0;
  }

  v61 = v85;
  v62 = v86;
  v63 = v87;
  v64 = v88;
  v57 = v81;
  v58 = v82;
  v59 = v83;
  v60 = v84;
  v53 = v77;
  v54 = v78;
  v55 = v79;
  v56 = v80;
  return sub_1B04FAE88(&v53) == 1;
}

uint64_t sub_1B0AC3288(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[9];
  v13[8] = a1[8];
  v13[9] = v2;
  v14[0] = a1[10];
  *(v14 + 9) = *(a1 + 169);
  v3 = a1[5];
  v13[4] = a1[4];
  v13[5] = v3;
  v4 = a1[7];
  v13[6] = a1[6];
  v13[7] = v4;
  v5 = a1[1];
  v13[0] = *a1;
  v13[1] = v5;
  v6 = a1[3];
  v13[2] = a1[2];
  v13[3] = v6;
  v7 = a2[9];
  v15[8] = a2[8];
  v15[9] = v7;
  v16[0] = a2[10];
  *(v16 + 9) = *(a2 + 169);
  v8 = a2[5];
  v15[4] = a2[4];
  v15[5] = v8;
  v9 = a2[7];
  v15[6] = a2[6];
  v15[7] = v9;
  v10 = a2[1];
  v15[0] = *a2;
  v15[1] = v10;
  v11 = a2[3];
  v15[2] = a2[2];
  v15[3] = v11;
  return sub_1B0ACB2BC(v13, v15) & 1;
}

uint64_t sub_1B0AC3330@<X0>(uint64_t a1@<X8>)
{
  v2 = _s25MessageSectionsToDownloadVMa(0);
  v49 = *(v2 - 8);
  v50 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v52 = v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v48 = v43 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v51 = v43 - v7;
  v8 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0ACA438(v8);
  v74[0] = sub_1B0AE2670(v9, v10);
  sub_1B0ACA2C0(v74);

  v11 = v74[0];
  sub_1B03D06F8();
  sub_1B0E46EE8();
  v12 = *(v11 + 2);
  if (!v12)
  {
  }

  v46 = *v53;
  v45 = *(v53 + 8);
  v43[1] = v11;
  v13 = v11 + 48;
  v44 = xmmword_1B0EC1E70;
  v47 = a1;
  while (1)
  {
    if (*v13)
    {
      goto LABEL_4;
    }

    v15 = *(v13 - 1);
    if (HIDWORD(v15) || v15 > 0x15F90)
    {
      goto LABEL_4;
    }

    v17 = v15 * 1.25;
    if (v17 == INFINITY)
    {
      break;
    }

    if (v17 <= -1.0)
    {
      goto LABEL_25;
    }

    if (v17 >= 4294967300.0)
    {
      goto LABEL_26;
    }

    v18 = *(v13 - 4);
    v19 = v15 + 0x4000;
    if (v19 <= v17)
    {
      v20 = v17;
    }

    else
    {
      v20 = v19;
    }

    sub_1B04FAA88(&v56);
    v68[8] = v64;
    v68[9] = v65;
    v68[10] = v66;
    v69 = v67;
    v68[4] = v60;
    v68[5] = v61;
    v68[6] = v62;
    v68[7] = v63;
    v68[0] = v56;
    v68[1] = v57;
    v68[2] = v58;
    v68[3] = v59;
    v21 = v46;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0398EFC(v68, &qword_1EB6E4148, &qword_1B0EE17F0);
    *&v55[97] = v62;
    *&v55[113] = v63;
    *&v55[65] = v60;
    *&v55[81] = v61;
    v55[177] = v67;
    *&v55[145] = v65;
    *&v55[161] = v66;
    *&v55[129] = v64;
    *&v55[1] = v56;
    *&v55[17] = v57;
    *&v55[33] = v58;
    *&v55[49] = v59;
    *(&v73[8] + 7) = *&v55[128];
    *(&v73[9] + 7) = *&v55[144];
    *(&v73[10] + 7) = *&v55[160];
    *(&v73[4] + 7) = *&v55[64];
    *(&v73[5] + 7) = *&v55[80];
    *(&v73[6] + 7) = *&v55[96];
    *(&v73[7] + 7) = *&v55[112];
    *(v73 + 7) = *v55;
    *(&v73[1] + 7) = *&v55[16];
    *(&v73[2] + 7) = *&v55[32];
    *(&v73[3] + 7) = *&v55[48];
    v91 = *&v55[128];
    v92 = *&v55[144];
    v93 = *&v55[160];
    v87 = *&v55[64];
    v88 = *&v55[80];
    v89 = *&v55[96];
    v90 = *&v55[112];
    v83 = *v55;
    v84 = *&v55[16];
    v85 = *&v55[32];
    LOBYTE(v70) = 0;
    *(&v70 + 1) = v21;
    *&v71 = __PAIR64__(v18, v45);
    v22 = MEMORY[0x1E69E7CC0];
    *(&v71 + 1) = MEMORY[0x1E69E7CC0];
    LODWORD(v72) = v20;
    *(&v72 + 1) = MEMORY[0x1E69E7CC0];
    LODWORD(v73[0]) = 0;
    WORD2(v73[0]) = 2;
    BYTE6(v73[0]) = 0;
    *(&v73[11] + 7) = *&v55[176];
    LOBYTE(v74[0]) = 0;
    v74[1] = v21;
    v75 = v45;
    v76 = v18;
    v77 = MEMORY[0x1E69E7CC0];
    v78 = v20;
    v79 = MEMORY[0x1E69E7CC0];
    v80 = 0;
    v81 = 2;
    v82 = 0;
    v94 = *&v55[176];
    v86 = *&v55[48];
    sub_1B0ACE448(&v70, v54);
    sub_1B0ACE480(v74);
    v23 = v50;
    v24 = *(v50 + 20);
    v25 = type metadata accessor for MessageHeader(0);
    v26 = v48;
    (*(*(v25 - 8) + 56))(&v48[v24], 1, 3, v25);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4150, &qword_1B0EC3510);
    v27 = swift_allocObject();
    v28 = v73[9];
    v27[13] = v73[8];
    v27[14] = v28;
    v27[15] = v73[10];
    *(v27 + 249) = *(&v73[10] + 9);
    v29 = v73[5];
    v30 = v73[6];
    v31 = v73[3];
    v27[9] = v73[4];
    v27[10] = v29;
    v32 = v73[7];
    v27[11] = v30;
    v27[12] = v32;
    v33 = v73[1];
    v34 = v73[2];
    v35 = v72;
    v27[5] = v73[0];
    v27[6] = v33;
    v27[7] = v34;
    v27[8] = v31;
    v36 = v70;
    v37 = v71;
    v27[1] = v44;
    v27[2] = v36;
    v27[3] = v37;
    v27[4] = v35;
    *v26 = v18;
    *(v26 + *(v23 + 24)) = v27;
    *(v26 + *(v23 + 28)) = v22;
    v38 = v51;
    sub_1B0ACE804(v26, v51, _s25MessageSectionsToDownloadVMa);
    sub_1B0ACE73C(v38, v52, _s25MessageSectionsToDownloadVMa);
    v39 = *(_s18InProgressMessagesVMa(0) + 32);
    v11 = *(v53 + v39);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_1B0AFFAD0(0, *(v11 + 2) + 1, 1, v11);
    }

    v41 = *(v11 + 2);
    v40 = *(v11 + 3);
    if (v41 >= v40 >> 1)
    {
      v11 = sub_1B0AFFAD0((v40 > 1), v41 + 1, 1, v11);
    }

    *(v11 + 2) = v41 + 1;
    sub_1B0ACE804(v52, &v11[((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v41], _s25MessageSectionsToDownloadVMa);
    *(v53 + v39) = v11;
    *v55 = v18;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
    MessageIdentifierSet.insert(_:)(v54, v55, v14);
    sub_1B0ACE7A4(v51, _s25MessageSectionsToDownloadVMa);
LABEL_4:
    v13 += 24;
    if (!--v12)
    {
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);

  __break(1u);
  return result;
}

void sub_1B0AC39A4(uint64_t a1)
{
  v2 = v1;
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v9 = 0;
  while (v7)
  {
LABEL_9:
    v11 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v12 = v11 | (v9 << 6);
    v13 = *(a1 + 56) + 16 * v12;
    if ((*(v13 + 8) & 1) == 0)
    {
      v14 = *(*(a1 + 48) + 4 * v12);
      v15 = *v13;
      if (*(v13 + 9) == 1)
      {
        sub_1B04FAA88(&v83);
        goto LABEL_15;
      }

      v16 = *(v2 + 16);
      if (*(v16 + 16))
      {
        v17 = sub_1B03FE284(*(*(a1 + 48) + 4 * v12));
        if (v18)
        {
          v19 = *(v16 + 56) + 184 * v17;
          v21 = *(v19 + 32);
          v20 = *(v19 + 48);
          v22 = *(v19 + 16);
          v59 = *v19;
          v60 = v22;
          v61 = v21;
          v62 = v20;
          v23 = *(v19 + 64);
          v24 = *(v19 + 80);
          v25 = *(v19 + 112);
          v65 = *(v19 + 96);
          v66 = v25;
          v63 = v23;
          v64 = v24;
          v26 = *(v19 + 128);
          v27 = *(v19 + 144);
          v28 = *(v19 + 160);
          v70 = *(v19 + 176);
          v68 = v27;
          v69 = v28;
          v67 = v26;
          LODWORD(v47) = v14;
          _s18InProgressMessagesVMa(0);
          sub_1B075DC38(&v59, &v71);
          v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
          MessageIdentifierSet.insert(_:)(&v71, &v47, v29);
          v79 = v67;
          v80 = v68;
          v81 = v69;
          v82 = v70;
          v75 = v63;
          v76 = v64;
          v77 = v65;
          v78 = v66;
          v71 = v59;
          v72 = v60;
          v73 = v61;
          v74 = v62;
          __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
          v91 = v79;
          v92 = v80;
          v93 = v81;
          v94 = v82;
          v87 = v75;
          v88 = v76;
          v89 = v77;
          v90 = v78;
          v83 = v71;
          v84 = v72;
          v85 = v73;
          v86 = v74;
LABEL_15:
          v46 = v14;
          if (HIDWORD(v15))
          {
            v55 = v91;
            v56 = v92;
            v57 = v93;
            v58 = v94;
            v51 = v87;
            v52 = v88;
            v53 = v89;
            v54 = v90;
            v47 = v83;
            v48 = v84;
            v49 = v85;
            v50 = v86;
            v30 = *(v2 + *(_s18InProgressMessagesVMa(0) + 28));
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v31 = v2;
              LODWORD(v15) = 0;
              v82 = v58;
              v79 = v55;
              v80 = v56;
              v81 = v57;
LABEL_20:
              v75 = v51;
              v76 = v52;
              v77 = v53;
              v78 = v54;
              v71 = v47;
              v72 = v48;
              v32 = v49;
              v33 = v50;
              goto LABEL_21;
            }

            LODWORD(v15) = 0;
            v70 = v58;
            v67 = v55;
            v68 = v56;
            v69 = v57;
          }

          else
          {
            v55 = v91;
            v56 = v92;
            v57 = v93;
            v58 = v94;
            v51 = v87;
            v52 = v88;
            v53 = v89;
            v54 = v90;
            v47 = v83;
            v48 = v84;
            v49 = v85;
            v50 = v86;
            v30 = *(v2 + *(_s18InProgressMessagesVMa(0) + 28));
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v31 = v2;
              v79 = v55;
              v80 = v56;
              v81 = v57;
              v82 = v58;
              goto LABEL_20;
            }

            v67 = v55;
            v68 = v56;
            v69 = v57;
            v70 = v58;
          }

          v63 = v51;
          v64 = v52;
          v65 = v53;
          v66 = v54;
          v59 = v47;
          v60 = v48;
          v61 = v49;
          v62 = v50;
          v31 = v2;
          v30 = sub_1B0AFFAF8(0, *(v30 + 2) + 1, 1, v30);
          v79 = v67;
          v80 = v68;
          v81 = v69;
          v82 = v70;
          v75 = v63;
          v76 = v64;
          v77 = v65;
          v78 = v66;
          v71 = v59;
          v72 = v60;
          v32 = v61;
          v33 = v62;
LABEL_21:
          v73 = v32;
          v74 = v33;
          v35 = *(v30 + 2);
          v34 = *(v30 + 3);
          if (v35 >= v34 >> 1)
          {
            v30 = sub_1B0AFFAF8((v34 > 1), v35 + 1, 1, v30);
          }

          *(v30 + 2) = v35 + 1;
          v36 = &v30[192 * v35];
          *(v36 + 8) = v46;
          *(v36 + 9) = v15;
          v37 = v71;
          v38 = v72;
          v39 = v73;
          *(v36 + 88) = v74;
          *(v36 + 72) = v39;
          *(v36 + 56) = v38;
          *(v36 + 40) = v37;
          v40 = v75;
          v41 = v76;
          v42 = v77;
          *(v36 + 152) = v78;
          *(v36 + 136) = v42;
          *(v36 + 120) = v41;
          *(v36 + 104) = v40;
          v43 = v79;
          v44 = v80;
          v45 = v81;
          v36[216] = v82;
          *(v36 + 200) = v45;
          *(v36 + 184) = v44;
          *(v36 + 168) = v43;
          v2 = v31;
          *(v31 + *(_s18InProgressMessagesVMa(0) + 28)) = v30;
        }
      }
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v8)
    {

      return;
    }

    v7 = *(v4 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_1B0AC3E24(int a1, uint64_t a2, void (*a3)(char *, char *, uint64_t))
{
  v7 = _s25MessageSectionsToDownloadVMa(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = (&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v3 + *(_s18InProgressMessagesVMa(0) + 32));
  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = 0;
    while (1)
    {
      if (v13 >= *(v11 + 16))
      {
        __break(1u);
        return;
      }

      sub_1B0ACE73C(v11 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v13, v10, _s25MessageSectionsToDownloadVMa);
      v14 = *v10;
      sub_1B0ACE7A4(v10, _s25MessageSectionsToDownloadVMa);
      if (v14 == a1)
      {
        break;
      }

      if (v12 == ++v13)
      {
        return;
      }
    }

    v15 = *(a2 + 16);
    if (v15)
    {
      v16 = *(type metadata accessor for MessageData.BodySection(0) - 8);
      v17 = (a2 + ((*(v16 + 80) + 32) & ~*(v16 + 80)));
      v18 = *(v16 + 72);
      do
      {
        sub_1B0AC4000(v17, v3, v13, a3);
        v17 = (v17 + v18);
        --v15;
      }

      while (v15);
    }
  }
}

void sub_1B0AC4000(uint64_t *a1, uint64_t a2, unint64_t a3, void (*a4)(char *, char *, uint64_t))
{
  v85 = type metadata accessor for MessageData.BodySection(0);
  MEMORY[0x1EEE9AC00](v85);
  v9 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for MailboxTaskLogger(0);
  MEMORY[0x1EEE9AC00](v74);
  v81 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v73 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4178, &unk_1B0EE7570);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v84 = &v73 - v15;
  v16 = type metadata accessor for MessageData.BodyData(0);
  v82 = *(v16 - 8);
  v83 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v80 = &v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = _s19MessageHeaderStatusOMa(0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v79 = &v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v73 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v73 - v24;
  v26 = _s18InProgressMessagesVMa(0);
  if ((a3 & 0x8000000000000000) != 0)
  {
    goto LABEL_23;
  }

  v90 = *(v26 + 32);
  v91 = a2;
  a2 = *&v90[a2];
  if (*(a2 + 16) <= a3)
  {
    goto LABEL_24;
  }

  v78 = v13;
  v27 = _s25MessageSectionsToDownloadVMa(0);
  v28 = *(v27 - 8);
  v86 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v29 = *(v28 + 72);
  v88 = v27;
  v89 = a3;
  v30 = a2 + v86 + *(v27 + 20);
  v87 = v29 * a3;
  sub_1B0ACE73C(v30 + v29 * a3, v25, _s19MessageHeaderStatusOMa);
  v31 = type metadata accessor for MessageHeader(0);
  v32 = *(v31 - 8);
  v76 = *(v32 + 56);
  v77 = v31;
  v75 = v32 + 56;
  v76(v22, 3, 3);
  v33 = sub_1B0ACAF84(v25, v22);
  sub_1B0ACE7A4(v22, _s19MessageHeaderStatusOMa);
  sub_1B0ACE7A4(v25, _s19MessageHeaderStatusOMa);
  if ((v33 & 1) == 0 || (v34 = *a1, v25 = a1[1], v35 = *(a1 + 16), v36 = SectionSpecifier.header.unsafeMutableAddressor(), v73 = v9, v38 = *v36, v37 = v36[1], v39 = *(v36 + 16), _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0(), sub_1B0ACE964(v37, v39), LOBYTE(v34) = static SectionSpecifier.__derived_struct_equals(_:_:)(v34, v25, v35, v38, v37, v39), , v40 = v73, sub_1B0ACE978(v37, v39), (v34 & 1) == 0))
  {
    v22 = v90;
    v9 = v91;
    a2 = *&v90[v91];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v22[v9] = a2;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_25;
    }

    while (1)
    {
      if (*(a2 + 16) <= v89)
      {
        __break(1u);
      }

      else
      {
        v22 = (a2 + v86 + v87);
        v25 = *(v88 + 24);
        a2 = *&v22[v25];
        v62 = swift_isUniquelyReferenced_nonNull_native();
        *&v22[v25] = a2;
        if (v62)
        {
          goto LABEL_11;
        }
      }

      a2 = sub_1B0B8C900(a2);
LABEL_11:
      *&v22[v25] = a2;
      if (!*(a2 + 16))
      {
        return;
      }

      v63 = 0;
      for (i = 32; ; i += 240)
      {
        *&v22[v25] = a2;
        if (v63 >= *(a2 + 16))
        {
          break;
        }

        v9 = a2 + i;
        sub_1B0AC492C(a1, a4);
        ++v63;
        a2 = *&v22[v25];
        if (v63 == *(a2 + 16))
        {
          return;
        }
      }

      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      a2 = sub_1B0B8C8EC(a2);
      *&v22[v9] = a2;
    }
  }

  v41 = v84;
  sub_1B03B5C80(a1 + *(v85 + 24), v84, &qword_1EB6E4178, &unk_1B0EE7570);
  if ((*(v82 + 48))(v41, 1, v83) == 1)
  {
    sub_1B0398EFC(v41, &qword_1EB6E4178, &unk_1B0EE7570);
    v42 = v78;
    sub_1B0ACE73C(a4, v78, type metadata accessor for MailboxTaskLogger);
    v43 = v81;
    sub_1B0ACE73C(a4, v81, type metadata accessor for MailboxTaskLogger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0ACE73C(a1, v40, type metadata accessor for MessageData.BodySection);
    v44 = sub_1B0E43988();
    v45 = sub_1B0E458E8();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      LODWORD(v90) = v45;
      v47 = v46;
      v91 = swift_slowAlloc();
      v94 = v91;
      *v47 = 68159491;
      *(v47 + 4) = 2;
      *(v47 + 8) = 256;
      v48 = v74;
      v49 = v43 + *(v74 + 20);
      *(v47 + 10) = *v49;
      *(v47 + 11) = 2082;
      v50 = v42;
      v51 = v42 + *(v48 + 20);
      *(v47 + 13) = sub_1B0399D64(*(v51 + 8), *(v51 + 16), &v94);
      *(v47 + 21) = 1040;
      *(v47 + 23) = 2;
      *(v47 + 27) = 512;
      LOWORD(v49) = *(v49 + 24);
      sub_1B0ACE7A4(v43, type metadata accessor for MailboxTaskLogger);
      *(v47 + 29) = v49;
      *(v47 + 31) = 2160;
      *(v47 + 33) = 0x786F626C69616DLL;
      *(v47 + 41) = 2085;
      v52 = *(v51 + 32);
      LODWORD(v51) = *(v51 + 40);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0ACE7A4(v50, type metadata accessor for MailboxTaskLogger);
      v92 = v52;
      v93 = v51;
      v53 = sub_1B0E44BA8();
      v55 = sub_1B0399D64(v53, v54, &v94);

      *(v47 + 43) = v55;
      *(v47 + 51) = 2082;
      v56 = SectionSpecifier.debugDescription.getter(*v40, *(v40 + 8), *(v40 + 16));
      v58 = v57;
      sub_1B0ACE7A4(v40, type metadata accessor for MessageData.BodySection);
      v59 = sub_1B0399D64(v56, v58, &v94);

      *(v47 + 53) = v59;
      _os_log_impl(&dword_1B0389000, v44, v90, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] No header data in response for '%{public}s'", v47, 0x3Du);
      v60 = v91;
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v60, -1, -1);
      MEMORY[0x1B272C230](v47, -1, -1);
    }

    else
    {
      sub_1B0ACE7A4(v43, type metadata accessor for MailboxTaskLogger);

      sub_1B0ACE7A4(v42, type metadata accessor for MailboxTaskLogger);
      sub_1B0ACE7A4(v40, type metadata accessor for MessageData.BodySection);
    }
  }

  else
  {
    v65 = v80;
    sub_1B0ACE804(v41, v80, type metadata accessor for MessageData.BodyData);
    v66 = sub_1B0E443C8();
    v67 = v79;
    (*(*(v66 - 8) + 16))(v79, v65, v66);
    (v76)(v67, 0, 3, v77);
    v69 = v90;
    v68 = v91;
    v70 = *&v90[v91];
    v71 = swift_isUniquelyReferenced_nonNull_native();
    *&v69[v68] = v70;
    if ((v71 & 1) == 0)
    {
      *&v69[v68] = sub_1B0B8C8EC(v70);
    }

    sub_1B0ACE7A4(v65, type metadata accessor for MessageData.BodyData);
    v72 = *&v69[v68];
    if (*(v72 + 16) <= v89)
    {
      __break(1u);
    }

    else
    {
      sub_1B0ACE98C(v67, v72 + v86 + *(v88 + 20) + v87);
    }
  }
}

void sub_1B0AC492C(uint64_t *a1, void (*a2)(char *, char *, uint64_t))
{
  v3 = v2;
  v6 = type metadata accessor for MessageData.BodySection(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v49[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for MailboxTaskLogger(0);
  MEMORY[0x1EEE9AC00](v9);
  v55 = &v49[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v49[-v12];
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v49[-v15];
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v49[-v18];
  v20 = *(v2 + 20);
  sub_1B0ACE73C(a2, &v49[-v18], type metadata accessor for MailboxTaskLogger);
  sub_1B0ACE73C(a2, v16, type metadata accessor for MailboxTaskLogger);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v57 = a1;
  sub_1B0ACE73C(a1, v8, type metadata accessor for MessageData.BodySection);
  v56 = a2;
  v21 = sub_1B0E43988();
  v22 = sub_1B0E458D8();
  v23 = os_log_type_enabled(v21, v22);
  v54 = v20;
  v53 = v9;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v52 = v13;
    v25 = v24;
    v51 = swift_slowAlloc();
    v60[0] = v51;
    *v25 = 68159747;
    v50 = v22;
    *(v25 + 4) = 2;
    *(v25 + 8) = 256;
    v26 = v20;
    v27 = &v16[*(v9 + 20)];
    *(v25 + 10) = *v27;
    *(v25 + 11) = 2082;
    v28 = *(v9 + 20);
    v29 = v3;
    v30 = &v19[v28];
    *(v25 + 13) = sub_1B0399D64(*&v19[v28 + 8], *&v19[v28 + 16], v60);
    *(v25 + 21) = 1040;
    *(v25 + 23) = 2;
    *(v25 + 27) = 512;
    LOWORD(v27) = *(v27 + 12);
    sub_1B0ACE7A4(v16, type metadata accessor for MailboxTaskLogger);
    *(v25 + 29) = v27;
    *(v25 + 31) = 2160;
    *(v25 + 33) = 0x786F626C69616DLL;
    *(v25 + 41) = 2085;
    v31 = *(v30 + 4);
    LODWORD(v27) = *(v30 + 10);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0ACE7A4(v19, type metadata accessor for MailboxTaskLogger);
    v58 = v31;
    v59 = v27;
    v32 = sub_1B0E44BA8();
    v34 = sub_1B0399D64(v32, v33, v60);

    *(v25 + 43) = v34;
    *(v25 + 51) = 1024;
    *(v25 + 53) = v26;
    *(v25 + 57) = 2082;
    v35 = SectionSpecifier.debugDescription.getter(*v8, *(v8 + 1), v8[16]);
    v37 = v36;
    sub_1B0ACE7A4(v8, type metadata accessor for MessageData.BodySection);
    v38 = sub_1B0399D64(v35, v37, v60);

    *(v25 + 59) = v38;
    _os_log_impl(&dword_1B0389000, v21, v50, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] UID %u: Received body section data for section '%{public}s'", v25, 0x43u);
    v39 = v51;
    swift_arrayDestroy();
    MEMORY[0x1B272C230](v39, -1, -1);
    MEMORY[0x1B272C230](v25, -1, -1);

    if (*(v29 + 54))
    {
      return;
    }
  }

  else
  {
    sub_1B0ACE7A4(v16, type metadata accessor for MailboxTaskLogger);

    sub_1B0ACE7A4(v19, type metadata accessor for MailboxTaskLogger);
    sub_1B0ACE7A4(v8, type metadata accessor for MessageData.BodySection);
    if (*(v3 + 54))
    {
      return;
    }
  }

  v40 = *v57;
  v41 = v57[1];
  v42 = *(v57 + 16);
  v43 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v44 = SectionSpecifier.init(part:kind:)(v43, 0, 2u);
  v46 = v45;
  v48 = v47;
  LOBYTE(v40) = static SectionSpecifier.__derived_struct_equals(_:_:)(v40, v41, v42, v44, v45, v47);

  sub_1B0ACE978(v46, v48);
  if (v40)
  {
    sub_1B0AC8A34(v57, v56);
  }
}

uint64_t sub_1B0AC50B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + *(_s18SectionDataRequestVMa(0) + 20));
  v3 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v4 = static SectionSpecifier.Part.__derived_struct_equals(_:_:)(v3, v2);

  return v4 & 1;
}

uint64_t sub_1B0AC5118(int a1)
{
  v3 = type metadata accessor for MessageHeader(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v40 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4160, &unk_1B0EC3C48);
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v37 - v6;
  v7 = _s19MessageHeaderStatusOMa(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v46 = &v37 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v37 - v13;
  v52 = _s25MessageSectionsToDownloadVMa(0);
  v50 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v38 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = (&v37 - v17);
  result = _s18InProgressMessagesVMa(0);
  v20 = *(result + 32);
  v39 = v1;
  v37 = v20;
  v51 = *(v1 + v20);
  v49 = *(v51 + 16);
  if (v49)
  {
    v21 = 0;
    v48 = v51 + ((*(v50 + 80) + 32) & ~*(v50 + 80));
    v22 = (v4 + 48);
    v43 = (v4 + 56);
    v44 = v3;
    v42 = a1;
    v41 = v9;
    do
    {
      if (v21 >= *(v51 + 16))
      {
        __break(1u);
        return result;
      }

      sub_1B0ACE73C(v48 + *(v50 + 72) * v21, v18, _s25MessageSectionsToDownloadVMa);
      v23 = *(v52 + 20);
      sub_1B0ACE73C(v18 + v23, v14, _s19MessageHeaderStatusOMa);
      v24 = *v22;
      v25 = (*v22)(v14, 3, v3);
      sub_1B0ACE7A4(v14, _s19MessageHeaderStatusOMa);
      if (*v18 != a1 || *(*(v18 + *(v52 + 24)) + 16))
      {
        result = sub_1B0ACE7A4(v18, _s25MessageSectionsToDownloadVMa);
        goto LABEL_4;
      }

      v26 = v46;
      (*v43)(v46, 1, 3, v3);
      v27 = *(v45 + 48);
      v28 = v18 + v23;
      v29 = v47;
      sub_1B0ACE73C(v28, v47, _s19MessageHeaderStatusOMa);
      v3 = v44;
      sub_1B0ACE73C(v26, v29 + v27, _s19MessageHeaderStatusOMa);
      v30 = v24(v29, 3, v3);
      if (v30 > 1)
      {
        if (v30 == 2)
        {
          sub_1B0ACE7A4(v46, _s19MessageHeaderStatusOMa);
          v31 = v47;
          if (v24((v47 + v27), 3, v3) == 2)
          {
            goto LABEL_23;
          }
        }

        else
        {
          sub_1B0ACE7A4(v46, _s19MessageHeaderStatusOMa);
          v31 = v47;
          if (v24((v47 + v27), 3, v3) == 3)
          {
            goto LABEL_23;
          }
        }
      }

      else if (v30)
      {
        sub_1B0ACE7A4(v46, _s19MessageHeaderStatusOMa);
        v31 = v47;
        if (v24((v47 + v27), 3, v3) == 1)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v31 = v47;
        v32 = v41;
        sub_1B0ACE73C(v47, v41, _s19MessageHeaderStatusOMa);
        if (!v24((v31 + v27), 3, v3))
        {
          v33 = v31 + v27;
          v34 = v40;
          sub_1B0ACE804(v33, v40, type metadata accessor for MessageHeader);
          v35 = static MessageHeader.== infix(_:_:)(v32, v34);
          sub_1B0ACE7A4(v34, type metadata accessor for MessageHeader);
          sub_1B0ACE7A4(v46, _s19MessageHeaderStatusOMa);
          v3 = v44;
          sub_1B0ACE7A4(v32, type metadata accessor for MessageHeader);
          if (v35)
          {
LABEL_23:
            sub_1B0ACE7A4(v31, _s19MessageHeaderStatusOMa);
            sub_1B0ACE7A4(v18, _s25MessageSectionsToDownloadVMa);
LABEL_24:
            v36 = v38;
            sub_1B0BAFDD8(v21, v38);
            return sub_1B0ACE7A4(v36, _s25MessageSectionsToDownloadVMa);
          }

          sub_1B0ACE7A4(v31, _s19MessageHeaderStatusOMa);
          goto LABEL_19;
        }

        sub_1B0ACE7A4(v46, _s19MessageHeaderStatusOMa);
        sub_1B0ACE7A4(v32, type metadata accessor for MessageHeader);
      }

      sub_1B0398EFC(v31, &qword_1EB6E4160, &unk_1B0EC3C48);
LABEL_19:
      result = sub_1B0ACE7A4(v18, _s25MessageSectionsToDownloadVMa);
      a1 = v42;
      if (!v25)
      {
        goto LABEL_24;
      }

LABEL_4:
      ++v21;
    }

    while (v49 != v21);
  }

  return result;
}

double sub_1B0AC57D8@<D0>(int a1@<W0>, _OWORD *a2@<X8>)
{
  v5 = *(v2 + *(_s18InProgressMessagesVMa(0) + 28));
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = (v5 + 32);
    while (*v7 != a1)
    {
      v7 += 12;
      if (!--v6)
      {
        goto LABEL_5;
      }
    }

    v8 = *v7;
    v9 = v7[1];
    v10 = v7[3];
    v24[2] = v7[2];
    v24[3] = v10;
    v24[0] = v8;
    v24[1] = v9;
    v11 = v7[4];
    v12 = v7[5];
    v13 = v7[7];
    v24[6] = v7[6];
    v24[7] = v13;
    v24[4] = v11;
    v24[5] = v12;
    v14 = v7[8];
    v15 = v7[9];
    v16 = v7[10];
    *(v25 + 9) = *(v7 + 169);
    v24[9] = v15;
    v25[0] = v16;
    v24[8] = v14;
    memmove(__dst, v7, 0xB9uLL);
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    sub_1B0ACE8D0(v24, &v23);
    v36 = __dst[8];
    v37 = __dst[9];
    v38[0] = v27[0];
    *(v38 + 9) = *(v27 + 9);
    v32 = __dst[4];
    v33 = __dst[5];
    v34 = __dst[6];
    v35 = __dst[7];
    v28 = __dst[0];
    v29 = __dst[1];
    v30 = __dst[2];
    v31 = __dst[3];
  }

  else
  {
LABEL_5:
    sub_1B0ACE938(&v28);
  }

  v17 = v37;
  a2[8] = v36;
  a2[9] = v17;
  a2[10] = v38[0];
  *(a2 + 169) = *(v38 + 9);
  v18 = v33;
  a2[4] = v32;
  a2[5] = v18;
  v19 = v35;
  a2[6] = v34;
  a2[7] = v19;
  v20 = v29;
  *a2 = v28;
  a2[1] = v20;
  result = *&v30;
  v22 = v31;
  a2[2] = v30;
  a2[3] = v22;
  return result;
}

__n128 sub_1B0AC5920@<Q0>(uint64_t *a1@<X0>, uint64_t *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v6 = *a1;
  v7 = *a2;
  v8 = *(a2 + 2);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0AC59E4(v6, v7, v8, a3, v16);

  v9 = v17[0];
  *(a4 + 192) = v16[12];
  *(a4 + 208) = v9;
  *(a4 + 217) = *(v17 + 9);
  v10 = v16[9];
  *(a4 + 128) = v16[8];
  *(a4 + 144) = v10;
  v11 = v16[11];
  *(a4 + 160) = v16[10];
  *(a4 + 176) = v11;
  v12 = v16[5];
  *(a4 + 64) = v16[4];
  *(a4 + 80) = v12;
  v13 = v16[7];
  *(a4 + 96) = v16[6];
  *(a4 + 112) = v13;
  v14 = v16[1];
  *a4 = v16[0];
  *(a4 + 16) = v14;
  result = v16[3];
  *(a4 + 32) = v16[2];
  *(a4 + 48) = result;
  return result;
}