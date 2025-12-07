uint64_t sub_1B071F0D0(uint64_t a1)
{
  if (BYTE4(a1) == 2)
  {
    v3 = 2;
  }

  else
  {
    v3 = BYTE5(a1) & 1;
  }

  if (v3 == 2)
  {
    v2 = 0;
  }

  else
  {
    v2 = v3;
  }

  return v2 & 1;
}

uint64_t sub_1B071F1B0(uint64_t a1, uint64_t a2)
{
  v69 = &v92;
  v73 = a2;
  v70 = a1;
  v129 = 0;
  v128 = 0;
  v127 = 0;
  v126 = 0;
  v71 = 0;
  v103 = 0u;
  v102 = 0u;
  v95 = 0;
  v94 = 0u;
  v93 = 0u;
  v92 = 0u;
  v74 = sub_1B0E42E68();
  v75 = *(v74 - 8);
  v76 = v75;
  v78 = *(v75 + 64);
  v77 = v78;
  MEMORY[0x1EEE9AC00](v74 - 8);
  v80 = (v78 + 15) & 0xFFFFFFFFFFFFFFF0;
  v79 = &v21 - v80;
  MEMORY[0x1EEE9AC00](&v21 - v80);
  v81 = &v21 - v80;
  v129 = &v21 - v80;
  v128 = a1;
  v127 = v3;
  v126 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  if (MessageIdentifierSet.isEmpty.getter())
  {
    v26 = sub_1B07B681C();
    v27 = v17;
    v28 = v18;
    v29 = v19;
    v30 = v71;
    return v26;
  }

  v5 = v71;
  v52 = *(v76 + 16);
  v51 = v76 + 16;
  v46 = v52;
  v47 = (v76 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v52(v81, (v72 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_mailboxURL), v74);
  v119[1] = v73;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1B50, &unk_1B0E9DDF0);
  v48 = v49;
  v50 = sub_1B071CEA8();
  MEMORY[0x1B27270C0](v119, v49);
  v118 = v119[0];
  v52(v79, v81, v74);
  v53 = *(v76 + 80);
  v54 = (v53 + 16) & ~v53;
  v61 = swift_allocObject();
  v55 = *(v76 + 32);
  v56 = (v76 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v55(v61 + v54, v79, v74);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1B60, &unk_1B0EA09B0);
  v57 = v58;
  v63 = 0;
  v59 = sub_1B074AEA4();
  v60 = sub_1B074AF08();
  v62 = &v118;
  sub_1B0E46718();

  sub_1B039E440(v62);
  v111 = v119[2];
  v112 = v119[3];
  v113 = v119[4];
  v114 = v119[5];
  v115 = v119[6];
  v116 = v119[7];
  v117 = v119[8];
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1B68, &qword_1B0E9AF90);
  sub_1B074AF90();
  sub_1B0E46738();
  v6 = v69;
  v69[34] = v120;
  v7 = v121;
  v8 = v122;
  v125 = v124;
  v6[37] = v123;
  v6[36] = v8;
  v6[35] = v7;
  v6[14] = v6[34];
  v9 = v6[35];
  v10 = v6[36];
  v11 = v6[37];
  v108 = v125;
  v6[17] = v11;
  v6[16] = v10;
  v6[15] = v9;
  v104 = sub_1B07B681C();
  v105 = v12;
  v106 = v13;
  v107 = v14;
  v65 = &v21;
  MEMORY[0x1EEE9AC00](&v21);
  v66 = &v21 - 4;
  *(&v21 - 2) = v15;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1B78, &qword_1B0E9AF98);
  sub_1B074B040();
  sub_1B0E44FD8();
  v68 = v5;
  if (!v5)
  {
    v40 = v109;
    v31 = v109;
    v41 = v110;
    v32 = v110;
    v102 = v109;
    v103 = v110;
    v97[1] = v73;
    MEMORY[0x1B27270C0](v97, v48, v50);
    v96 = v97[0];
    v46(v79, v81, v74);
    v33 = (v53 + 16) & ~v53;
    v34 = swift_allocObject();
    v55(v34 + v33, v79, v74);
    sub_1B074AC8C();
    v35 = &v96;
    sub_1B0E46718();

    sub_1B039E440(v35);
    v36 = v98;
    v37 = v99;
    v38 = v100;
    v39 = v101;
    v92 = v98;
    v93 = v99;
    v94 = v100;
    v95 = v101;
    v84 = v98;
    v85 = v99;
    v86 = v100;
    v87 = v101;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v82 = v40;
    v83 = v41;

    v42 = &v21;
    MEMORY[0x1EEE9AC00](&v21);
    v43 = &v21 - 4;
    *(&v21 - 2) = v72;
    *(&v21 - 1) = v16;
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1B88, &unk_1B0E9AFA0);
    sub_1B074B174();
    sub_1B0E44FD8();
    v45 = 0;

    v22 = v88;
    v23 = v89;
    v24 = v90;
    v25 = v91;

    sub_1B074B1FC();
    (*(v76 + 8))(v81, v74);
    v26 = v22;
    v27 = v23;
    v28 = v24;
    v29 = v25;
    v30 = v45;
    return v26;
  }

  __break(1u);

  __break(1u);
  return result;
}

void sub_1B071F9F0()
{
}

uint64_t sub_1B071FA40(uint64_t a1, int *a2)
{
  v13 = 0uLL;
  v14 = 0;
  v15 = a1;
  v7 = *a2;
  v2 = *(a2 + 1);
  v3 = *(a2 + 12);
  v4 = *(a2 + 2);
  LODWORD(v13) = v7;
  *(&v13 + 4) = v2;
  BYTE12(v13) = v3;
  v14 = v4;
  *v10 = v7;
  *&v10[4] = v2;
  v11 = v3;
  v12 = v4;
  result = sub_1B071F0D0(*v10);
  if ((result & 1) == 0)
  {
    v8 = v7;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
    return MessageIdentifierSet.insert(_:)(v9, &v8, v6);
  }

  return result;
}

unint64_t sub_1B071FB18()
{
  v2 = qword_1EB6DABE0;
  if (!qword_1EB6DABE0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB6DABE0);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1B071FB7C@<X0>(int *a1@<X0>, void *a3@<X8>)
{
  v9 = *a1;
  v10 = *(a1 + 1);
  v11 = *(a1 + 12);
  v12 = *(a1 + 2);
  LODWORD(v15) = *a1;
  HIDWORD(v15) = v10;
  result = sub_1B071F0D0(v15);
  if (result)
  {
    *a3 = 0;
  }

  else
  {
    sub_1B071FB18();
    sub_1B043CF70();
    sub_1B0E44778();
    LODWORD(v13) = v9;
    *(&v13 + 4) = v10;
    BYTE12(v13) = v11;
    v7 = sub_1B071FDF4(v13, *(&v13 + 1), v12, v14);
    (MEMORY[0x1E69E5920])();
    MEMORY[0x1E69E5928](v7);
    if (v7)
    {
      v5 = [v7 second];
      MEMORY[0x1E69E5920](v7);
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    if (v6)
    {
      v4 = [v6 hasChanges];
      if (v4)
      {
        MEMORY[0x1E69E5928](v7);
        *a3 = v7;
        MEMORY[0x1E69E5920](v6);
        return MEMORY[0x1E69E5920](v7);
      }

      MEMORY[0x1E69E5920](v6);
    }

    *a3 = 0;
    return MEMORY[0x1E69E5920](v7);
  }

  return result;
}

id sub_1B071FDF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = 0;
  v22 = 0;
  v20 = 0;
  v17 = 0;
  *&v28 = a1;
  *(&v28 + 1) = a2;
  v29 = a3;
  v14 = a1;
  v15 = BYTE4(a2);
  v24 = a1;
  v25 = *(&v28 + 4);
  v26 = BYTE4(a2);
  v27 = a3;
  v23 = a4;
  if (BYTE4(a1) == 2)
  {
    return 0;
  }

  v21 = *(&v28 + 4) & 0xFFFFFFFF01010101;
  v22 = BYTE4(a2);
  MEMORY[0x1E69E5928](a4);
  if (!a4)
  {
    return 0;
  }

  v20 = a4;
  v8 = sub_1B074B258();
  MEMORY[0x1E69E5928](a4);
  v18 = *(&v28 + 4) & 0xFFFFFFFF01010101;
  v19 = v15;
  v10 = sub_1B074A67C(*(&v28 + 4) & 0xFFFFFFFF01010101, v15, a4);
  v17 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1B10, &unk_1B0E9C4B0);
  v7 = sub_1B039A494();
  v16[0] = v14;
  v6 = sub_1B07467B8();
  v4 = sub_1B041C1E8();
  BinaryInteger.init<A>(_:)(v16, MEMORY[0x1E69E7668], &type metadata for UID, v6, v4);
  v9 = sub_1B074A93C(v16[1]);
  MEMORY[0x1E69E5928](v10);
  v11 = sub_1B074A97C(v9, v10, v7, v8);
  MEMORY[0x1E69E5920](v10);
  MEMORY[0x1E69E5920](a4);
  return v11;
}

id sub_1B072011C@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X1>)
{
  result = sub_1B0720178(a2);
  *a1 = result;
  return result;
}

id sub_1B0720178(uint64_t a1)
{
  v11 = a1;
  v21 = 0;
  v20 = 0;
  v19 = 0;
  v12 = sub_1B0E42E68();
  v13 = *(v12 - 8);
  v14 = v12 - 8;
  v15 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v17);
  v16 = &v4 - v15;
  v21 = v1;
  v20 = v2;
  MEMORY[0x1E69E5928](v2);
  objc_opt_self();
  v18 = swift_dynamicCastObjCClass();
  if (v18)
  {
    v10 = v18;
  }

  else
  {
    MEMORY[0x1E69E5920](v17);
    v10 = 0;
  }

  v9 = v10;
  if (!v10)
  {
    return 0;
  }

  v8 = v9;
  v5 = v9;
  v19 = v9;
  MEMORY[0x1E69E5928](v9);
  v6 = [v5 mailboxURL];
  sub_1B0E42DE8();
  MEMORY[0x1E69E5920](v5);
  v7 = sub_1B0E42DB8();
  (*(v13 + 8))(v16, v12);
  MEMORY[0x1E69E5920](v6);
  if ((v7 & 1) == 0)
  {
    MEMORY[0x1E69E5920](v5);
    return 0;
  }

  return v5;
}

uint64_t sub_1B0720380(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = a1;
  v9[1] = a2;
  v9[2] = a3;
  v17 = 0;
  v16 = 0;
  v15 = 0;
  v3 = _s6LoggerVMa_1(0);
  v9[0] = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v12 = v9 - v9[0];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v10 = (*(*(v13 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11);
  v14 = (v9 - v10);
  v17 = v4;
  v16 = *v5;
  v15 = v6;
  sub_1B074B69C(v6 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_logger, v7);
  sub_1B07204E0(v12, v14);
  sub_1B074B764(v12);
  MessageIdentifierSet.formUnion(_:)(v14, v13);
  return sub_1B03D09B8(v14);
}

uint64_t sub_1B07204E0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v23 = a1;
  v14 = a2;
  v34 = 0;
  v33 = 0;
  v32 = 0;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v16 = v26;
  v18 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v9 - v19;
  MEMORY[0x1EEE9AC00](v2);
  v27 = &v9 - v19;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v24 = &v9 - v19;
  v20 = &v9 - v19;
  v34 = &v9 - v19;
  v33 = v5;
  v32 = v6;
  v22 = [v6 messages];
  v21 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1B90, &qword_1B0E9AFB0);
  v31 = sub_1B0E451B8();
  sub_1B041C1E8();
  MessageIdentifierSet.init()();
  v29 = v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1B98, &qword_1B0E9AFB8);
  sub_1B074B2E4();
  sub_1B0E44FD8();
  v28 = 0;
  sub_1B039E440(&v31);

  v10 = [v15 remoteIDs];
  v30 = sub_1B0E453F8();
  sub_1B03D08AC(v20, v17);
  v11 = &v9;
  MEMORY[0x1EEE9AC00](&v9);
  v12 = &v9 - 4;
  *(&v9 - 2) = v7;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1BA8, &qword_1B0E9AFC0);
  sub_1B074B394();
  sub_1B0E44FD8();
  sub_1B039E440(&v30);

  return sub_1B03D09B8(v20);
}

uint64_t sub_1B07207E0(uint64_t a1, uint64_t a2)
{
  v68 = a2;
  v75 = a1;
  v76 = 0;
  v99 = 0;
  v98 = 0;
  v97 = 0;
  v96 = 0;
  v94 = 0;
  v92 = 0;
  v82 = 0u;
  v81 = 0u;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v69 = v74;
  v70 = *(*(v74 - 8) + 64);
  MEMORY[0x1EEE9AC00](v75);
  v72 = (v70 + 15) & 0xFFFFFFFFFFFFFFF0;
  v71 = &v29 - v72;
  MEMORY[0x1EEE9AC00](v3);
  v73 = &v29 - v72;
  v99 = &v29 - v72;
  v98 = v4;
  v97 = v5;
  v96 = v2;
  v6 = sub_1B0721160();
  v95 = sub_1B0829BE8(v75, v74, v6);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1B30, &qword_1B0E9AF68);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1BB8, &qword_1B0E9AFC8);
  sub_1B0746680();
  v7 = sub_1B0E44F58();
  v79 = 0;
  v80 = v7;
  v62 = v7;
  sub_1B039E440(&v95);
  v94 = v62;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v93 = v62;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1BC0, &qword_1B0E9AFD0);
  v64 = sub_1B043CF70();
  sub_1B074B41C();
  v8 = sub_1B0E44718();
  v65 = 0;
  v66 = v8;
  v58 = v8;
  v92 = v8;
  v59 = *(v67 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_store);
  v9 = v59;
  v10 = sub_1B074B4A4();
  v12 = sub_1B039CA88(sub_1B0721718, 0, v69, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], v10, MEMORY[0x1E69E7410], v11);
  v60 = 0;
  v61 = v12;
  v54 = v12;
  v55 = sub_1B0E451A8();

  v57 = [v59 flagsForRemoteIDs_];
  v56 = v57;

  if (v57)
  {
    v53 = v56;
    v50 = v56;
    sub_1B071FB18();
    v51 = sub_1B0E445A8();

    v52 = v51;
  }

  else
  {
    v52 = 0;
  }

  v49 = v52;
  if (v52)
  {
    v48 = v49;
  }

  else
  {
    LODWORD(v27) = 0;
    v26 = 162;
    LOBYTE(v25) = 2;
    sub_1B0E465A8();
    __break(1u);
  }

  v13 = v60;
  v42 = v48;
  v91[1] = v48;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1BC8, &qword_1B0E9AFD8);
  v14 = sub_1B074B52C();
  MEMORY[0x1B27270C0](v91, v41, v14);
  v43 = v91[0];

  v90 = v43;
  sub_1B041C1E8();
  MessageIdentifierSet.init()();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v44 = &v29;
  MEMORY[0x1EEE9AC00](&v29);
  v45 = &v25;
  v27 = v15;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1BD8, &unk_1B0E9AFE0);
  sub_1B074B5DC();
  sub_1B0E44FD8();
  v47 = v13;
  if (v13)
  {

    __break(1u);
  }

  else
  {

    sub_1B039E440(&v90);
    if (MessageIdentifierSet.isEmpty.getter())
    {
      *&v30 = sub_1B07B681C();
      *(&v30 + 1) = v21;
      *&v31 = v22;
      *(&v31 + 1) = v23;
      sub_1B03D09B8(v73);

      v34 = v30;
      v35 = v31;
      v36 = v47;
      return v34;
    }

    v16 = v47;
    v87 = v68;
    v83 = sub_1B07B681C();
    v84 = v17;
    v85 = v18;
    v86 = v19;

    v37 = &v29;
    MEMORY[0x1EEE9AC00](&v29);
    v38 = &v25;
    v27 = v67;
    v28 = v20;
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1B58, &unk_1B0E9AF80);
    sub_1B074AD9C();
    sub_1B0E44FD8();
    v40 = v16;
    if (!v16)
    {

      v32 = v88;
      v33 = v89;
      v81 = v88;
      v82 = v89;
      sub_1B03D09B8(v73);

      v34 = v32;
      v35 = v33;
      v36 = v40;
      return v34;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1B0721160()
{
  v2 = qword_1EB6DE408;
  if (!qword_1EB6DE408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DE408);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B07211E8@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = 0;
  v6 = *a1;
  v14 = v6;
  v11 = [v6 imapUID];
  v7 = sub_1B041C1E8();
  v2 = sub_1B03948EC();
  result = MessageIdentifier.init<A>(exactly:)(&v11, &type metadata for UID, MEMORY[0x1E69E6530], v7, v2, &v12);
  v8 = v12;
  if (v13)
  {
    *a2 = 0x200000000;
    *(a2 + 8) = 0;
    *(a2 + 12) = 0;
  }

  else
  {
    result = sub_1B072136C([v6 serverFlags]);
    LODWORD(v9) = v8;
    *(&v9 + 4) = result;
    BYTE12(v9) = v4 & 1;
    *&v10 = v9;
    *(&v10 + 5) = result >> 8;
    *a2 = v10;
    *(a2 + 8) = *(&v9 + 5) >> 24;
    *(a2 + 12) = v4 & 1;
  }

  return result;
}

unint64_t sub_1B072136C(void *a1)
{
  v7 = [a1 junkLevel];
  if (v7 == 1)
  {
    v5 = IMAP2Persistence_Flags_JunkStatus_junk;
  }

  else if (v7 == 2)
  {
    v5 = IMAP2Persistence_Flags_JunkStatus_notJunk;
  }

  else
  {
    v5 = IMAP2Persistence_Flags_JunkStatus_unknown;
  }

  v3 = [a1 flagged];
  v4 = [a1 flagColor];
  if (v3)
  {
    if (v4)
    {
      if (v4 == 1)
      {
        v2 = IMAP2Persistence_Flags_Label_colorOrange;
      }

      else if (v4 == 2)
      {
        v2 = IMAP2Persistence_Flags_Label_colorYellow;
      }

      else if (v4 == 3)
      {
        v2 = IMAP2Persistence_Flags_Label_colorGreen;
      }

      else if (v4 == 4)
      {
        v2 = IMAP2Persistence_Flags_Label_colorBlue;
      }

      else if (v4 == 5)
      {
        v2 = IMAP2Persistence_Flags_Label_colorPurple;
      }

      else if (v4 == 6)
      {
        v2 = IMAP2Persistence_Flags_Label_colorGray;
      }

      else
      {
        v2 = IMAP2Persistence_Flags_Label_colorRed;
      }
    }

    else
    {
      v2 = IMAP2Persistence_Flags_Label_colorRed;
    }
  }

  else
  {
    v2 = IMAP2Persistence_Flags_Label_clear;
  }

  v8 = Flags.init(unread:deleted:answered:draft:forwarded:redirected:junk:label:iCloudCleanup:)([a1 read] != 1, objc_msgSend(a1, sel_deleted), objc_msgSend(a1, sel_replied), objc_msgSend(a1, sel_draft), objc_msgSend(a1, sel_forwarded), objc_msgSend(a1, sel_redirected), v5, v2, objc_msgSend(a1, sel_touchedByCleanup));
  MEMORY[0x1E69E5920](a1);
  return v8;
}

void sub_1B07216C8(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  *a2 = *a1;
  *(a2 + 8) = v2;
}

uint64_t sub_1B0721718@<X0>(int *a1@<X0>, uint64_t *a2@<X8>)
{
  v9 = 0;
  v9 = *a1;
  v8[0] = sub_1B0E46A28();
  v8[1] = v2;
  v3 = sub_1B0E44838();
  MEMORY[0x1B2728B30](v3);

  sub_1B0E469E8();
  v4 = sub_1B0E44838();
  MEMORY[0x1B2728B30](v4);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B03B1198(v8);
  result = sub_1B0E44C88();
  *a2 = result;
  a2[1] = v6;
  return result;
}

unint64_t sub_1B0721828(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v26 = 0;
  v24 = 0;
  v30 = a1;
  v16 = a2[1];
  v17 = a2[2];
  v27 = *a2;
  v28 = v16;
  v29 = v17;
  v26 = a3;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  MEMORY[0x1E69E5928](v17);
  v25 = sub_1B08252D8(v27, v16);
  result = MEMORY[0x1E69E5920](v17);
  if ((v25 & 0x100000000) == 0)
  {
    v24 = v25;
    v21 = v25;
    sub_1B043CF70();
    sub_1B0E44778();
    if (v22 == 2 || (_s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0(), MEMORY[0x1E69E5928](v17), v4 = sub_1B072136C(v17), v7 = v4, v8 = BYTE1(v4), v9 = BYTE2(v4), v10 = BYTE3(v4), v11 = BYTE4(v4), v12 = BYTE5(v4), v13 = BYTE6(v4), v14 = HIBYTE(v4), v15 = v5 & 1, , LOWORD(v18) = __PAIR16__(v8, v7), BYTE2(v18) = v9, BYTE3(v18) = v10, BYTE4(v18) = v11, BYTE5(v18) = v12, BYTE6(v18) = v13, HIBYTE(v18) = v14, result = static Flags.__derived_struct_equals(_:_:)(v18, v15 & 1, v22 & 0xFFFF010101010101, v23 & 1), (result & 1) != 0))
    {
      v19 = v25;
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
      return MessageIdentifierSet.insert(_:)(v20, &v19, v6);
    }
  }

  return result;
}

uint64_t sub_1B0721C14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = a1;
  v14 = a2;
  v15 = a3;
  v23 = a4;
  v31 = 0;
  v30 = 0;
  v29 = 0;
  v28 = 0;
  v27 = 0;
  v26 = 0;
  v4 = _s6LoggerVMa_1(0);
  v13 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v21 = &v12 - v13;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v18 = *(*(v22 - 8) + 64);
  v17 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v16);
  v24 = &v12 - v17;
  v31 = &v12 - v17;
  v19 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v25 = (&v12 - v19);
  v30 = &v12 - v19;
  v29 = v6;
  v20 = *v7;
  v28 = v20;
  v27 = v8;
  v26 = v9;
  sub_1B074B69C(v8 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_logger, v10);
  sub_1B07204E0(v21, v25);
  sub_1B074B764(v21);
  MessageIdentifierSet.intersection(_:)(v23, v24);
  sub_1B041C1E8();
  if (static MessageIdentifierSet.__derived_struct_equals(_:_:)(v25, v24))
  {
    sub_1B07B6998(v20);
  }

  else
  {
    sub_1B07B6C10(v24, v20);
  }

  sub_1B03D09B8(v24);
  return sub_1B03D09B8(v25);
}

id sub_1B0721E28@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X1>)
{
  result = sub_1B0721E7C(a2);
  *a1 = result;
  return result;
}

id sub_1B0721E7C(uint64_t a1)
{
  v11 = a1;
  v21 = 0;
  v20 = 0;
  v19 = 0;
  v12 = sub_1B0E42E68();
  v13 = *(v12 - 8);
  v14 = v12 - 8;
  v15 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v17);
  v16 = &v4 - v15;
  v21 = v1;
  v20 = v2;
  MEMORY[0x1E69E5928](v2);
  objc_opt_self();
  v18 = swift_dynamicCastObjCClass();
  if (v18)
  {
    v10 = v18;
  }

  else
  {
    MEMORY[0x1E69E5920](v17);
    v10 = 0;
  }

  v9 = v10;
  if (!v10)
  {
    return 0;
  }

  v8 = v9;
  v5 = v9;
  v19 = v9;
  MEMORY[0x1E69E5928](v9);
  v6 = [v5 mailboxURL];
  sub_1B0E42DE8();
  MEMORY[0x1E69E5920](v5);
  v7 = sub_1B0E42DB8();
  (*(v13 + 8))(v16, v12);
  MEMORY[0x1E69E5920](v6);
  if ((v7 & 1) == 0)
  {
    MEMORY[0x1E69E5920](v5);
    return 0;
  }

  return v5;
}

uint64_t sub_1B0722084(id *a1)
{
  [*a1 transferType];
  type metadata accessor for ECTransferMessageActionType(0);
  sub_1B071C014();
  return sub_1B0E46AE8() & 1;
}

void *sub_1B0722104(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = a1;
  v13 = a2;
  v14 = a3;
  v25 = 0;
  v24 = sub_1B0722384;
  v36 = 0;
  v35 = 0;
  v34 = 0;
  v33 = 0;
  v32 = 0;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v16 = (*(*(v27 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v13 - v16;
  v36 = &v13 - v16;
  v18 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v29 = &v13 - v18;
  v19 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v23 = &v13 - v19;
  v35 = &v13 - v19;
  v34 = v8;
  v20 = *v9;
  v33 = v20;
  v32 = v10;
  v21 = [v20 itemsToDelete];
  sub_1B071C094();
  v31 = sub_1B0E451B8();
  v22 = sub_1B041C1E8();
  MessageIdentifierSet.init()();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1C30, &unk_1B0E9AEA0);
  sub_1B071CBBC();
  v11 = v28;
  result = sub_1B0E44FD8();
  v30 = v11;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    sub_1B039E440(&v31);
    MEMORY[0x1E69E5920](v21);
    MessageIdentifierSet.intersection(_:)(v14, v17);
    if (static MessageIdentifierSet.__derived_struct_equals(_:_:)(v23, v17))
    {
      sub_1B07B6998(v20);
    }

    else
    {
      sub_1B07B6E28(v17, v20);
    }

    sub_1B03D09B8(v17);
    return sub_1B03D09B8(v23);
  }

  return result;
}

uint64_t sub_1B0722384(uint64_t a1, id *a2)
{
  v12 = 0;
  v10 = 0;
  v13 = a1;
  v12 = *a2;
  v7 = [v12 sourceRemoteID];
  if (v7)
  {
    v5 = sub_1B0E44AD8();
    v6 = v2;
    MEMORY[0x1E69E5920](v7);
    result = sub_1B08252D8(v5, v6);
  }

  else
  {
    result = sub_1B08252D8(0, 0);
  }

  v11 = result;
  if ((result & 0x100000000) == 0)
  {
    v10 = result;
    v8 = result;
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
    return MessageIdentifierSet.insert(_:)(v9, &v8, v4);
  }

  return result;
}

id sub_1B07224BC@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  result = sub_1B0720178(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B0722510(uint64_t a1, uint64_t a2, int a3)
{
  v17 = a1;
  v25 = a2;
  v15 = a3;
  v19 = sub_1B074B664;
  v21 = sub_1B074B690;
  v40 = 0;
  v39 = 0;
  v38 = 0;
  v37 = 0;
  v36 = 0;
  v16 = (*(*(_s6LoggerVMa_1(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v18);
  v23 = v10 - v16;
  v40 = v3;
  v39 = v4;
  v38 = v5 & 1;
  v37 = v6;

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v20 = &v32;
  v33 = v18;
  v34 = v17;

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v22 = &v29;
  v30 = v18;
  v31 = v17;
  sub_1B074B69C(v18 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_logger, v23);
  v7 = v24;
  v8 = sub_1B0726F34(v25);
  v26 = v7;
  v27 = v8;
  v28 = v7;
  if (v7)
  {
    v10[0] = v28;
    sub_1B074B764(v23);

    return v10[1];
  }

  else
  {
    v13 = v27;
    sub_1B074B764(v23);

    v36 = v13;
    v35 = v13;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1BE8, &qword_1B0ECD5D0);
    sub_1B074B7E4();
    if ((sub_1B0E45748() & 1) == 0)
    {
      return v13;
    }

    v11 = sub_1B0731CB8(v25, v15 & 1);

    return v11;
  }
}

void sub_1B0722888(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v939 = v2;
  v885 = v1;
  v912 = v3;
  v911 = v4;
  v937 = v5;
  v886 = v6;
  v929 = 0;
  v989 = 0;
  v988 = 0;
  v987 = 0;
  v986 = 0;
  v985 = 0;
  v984 = 0;
  v983 = 0;
  v982 = 0;
  v981 = 0;
  v980 = 0;
  v979 = 0;
  v978 = 0;
  v977 = 0;
  v976 = 0;
  v975[1] = 0;
  v975[0] = 0;
  v970 = 0;
  v966 = 0;
  v965 = 0;
  v964 = 0;
  v962 = 0;
  v961[1] = 0;
  v961[0] = 0;
  v958 = 0;
  v953 = 0uLL;
  v947 = 0;
  v944 = 0;
  v941 = 0;
  v887 = sub_1B0E439A8();
  v888 = *(v887 - 8);
  v889 = v888;
  MEMORY[0x1EEE9AC00](v887 - 8);
  v890 = &v181 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v891 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1BF8, &qword_1B0E9AFF0);
  v892 = (*(*(v891 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v891 - 8);
  v893 = &v181 - v892;
  v989 = &v181 - v892;
  v918 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1C00, &qword_1B0E9AFF8);
  v894 = v918;
  v895 = (*(*(v918 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v929);
  v896 = &v181 - v895;
  v897 = _s6LoggerVMa_1(v8);
  v898 = *(*(v897 - 8) + 64);
  MEMORY[0x1EEE9AC00](v897 - 8);
  v900 = (v898 + 15) & 0xFFFFFFFFFFFFFFF0;
  v899 = &v181 - v900;
  MEMORY[0x1EEE9AC00](&v181 - v900);
  v901 = &v181 - v900;
  v926 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v902 = v926;
  v907 = *(*(v926 - 8) + 64);
  MEMORY[0x1EEE9AC00](v929);
  v909 = (v907 + 15) & 0xFFFFFFFFFFFFFFF0;
  v903 = &v181 - v909;
  v988 = &v181 - v909;
  MEMORY[0x1EEE9AC00](v9);
  v904 = &v181 - v909;
  MEMORY[0x1EEE9AC00](v10);
  v905 = &v181 - v909;
  v987 = &v181 - v909;
  MEMORY[0x1EEE9AC00](v11);
  v906 = &v181 - v909;
  v986 = &v181 - v909;
  MEMORY[0x1EEE9AC00](v12);
  v908 = &v181 - v909;
  MEMORY[0x1EEE9AC00](v13);
  v910 = (&v181 - v909);
  v985 = &v181 - v909;
  v936 = sub_1B0E42E68();
  v913 = v936;
  v914 = *(v936 - 8);
  v934 = v914;
  v915 = v914;
  v916 = *(v914 + 64);
  MEMORY[0x1EEE9AC00](v929);
  v935 = &v181 - ((v916 + 15) & 0xFFFFFFFFFFFFFFF0);
  v917 = v935;
  v984 = v935;
  v983 = v937;
  v982 = v14;
  v981 = v15;
  v980 = v1;
  v979 = sub_1B0E46A48();
  v978 = sub_1B0E46A48();
  v925 = swift_allocObject();
  v919 = v925;
  v920 = (v925 + 16);
  v977 = v925 + 16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1C08, &qword_1B0E9B000);
  v923 = sub_1B0E46A48();
  v922 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1C10, &qword_1B0E9B008);
  v921 = v922;
  v924 = sub_1B043CF70();
  v931 = &type metadata for UID;
  *(v925 + 16) = sub_1B0E445D8();
  v16 = swift_allocBox();
  v930 = v17;
  v927 = v16;
  v928 = v17;
  v976 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2640, &qword_1B0E9B010);
  v932 = sub_1B0E46A48();
  v933 = sub_1B041C1E8();
  MessageIdentifierSet.init(arrayLiteral:)(v932, v931, v933, v933);
  (*(v934 + 16))(v935, v1 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_mailboxURL, v936);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v974 = v937;
  v938 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1B50, &unk_1B0E9DDF0);
  sub_1B074B86C();
  sub_1B0E45798();
  for (i = v939; ; i = v209)
  {
    v883 = i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E36C0, &qword_1B0E9B018);
    sub_1B0E46518();
    v884 = v973;
    if (!v973)
    {
      break;
    }

    v882 = v884;
    v880 = v884;
    v965 = v884;
    v881 = sub_1B0720178(v917);
    if (!v881)
    {
      v866 = sub_1B0721E7C(v917);
      if (v866)
      {
        v865 = v866;
        v856 = v866;
        v962 = v866;
        v863 = [v866 itemsToDelete];
        v857 = sub_1B071C094();
        v858 = v857;
        v862 = sub_1B0E451B8();
        v961[2] = v862;
        v860 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1C30, &unk_1B0E9AEA0);
        v859 = v860;
        v861 = sub_1B071C0F8();
        v864 = sub_1B0E45748();

        if ((v864 & 1) == 0)
        {
          MessageIdentifierSet.init()();
          v854 = [v856 itemsToDelete];
          v960 = sub_1B0E451B8();
          sub_1B0E45798();

          for (j = v883; ; j = v847)
          {
            v852 = j;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1C40, &qword_1B0E9B030);
            sub_1B0E46518();
            v853 = v959;
            if (!v959)
            {
              break;
            }

            v851 = v853;
            v849 = v853;
            v958 = v853;
            v957 = sub_1B0917A3C();
            v850 = v957;
            if ((v957 & 0x100000000) != 0)
            {
              v843 = [v849 sourceRemoteID];
              if (v843)
              {
                v842 = v843;
                v839 = v843;
                *&v840 = sub_1B0E44AD8();
                *(&v840 + 1) = v21;

                v841 = v840;
              }

              else
              {
                v841 = 0uLL;
              }

              v955 = v841;
              v22 = v849;
              if (*(&v955 + 1))
              {
                v956 = v955;
              }

              else
              {
                v838 = [v849 sourceMessage];
                if (v838)
                {
                  v837 = v838;
                  v835 = v838;
                  swift_getObjectType();
                  v836 = [v835 remoteID];
                  if (v836)
                  {
                    v834 = v836;
                    v830 = v836;
                    *&v831 = sub_1B0E44AD8();
                    *(&v831 + 1) = v23;

                    v832 = v831;
                  }

                  else
                  {
                    v832 = 0uLL;
                  }

                  v829 = v832;
                  swift_unknownObjectRelease();
                  v833 = v829;
                }

                else
                {
                  v833 = 0uLL;
                }

                v954 = v833;
                if (*(&v833 + 1))
                {
                  v956 = v954;
                }

                else
                {
                  *&v956 = sub_1B0E44838();
                  *(&v956 + 1) = v24;
                  if (*(&v954 + 1))
                  {
                    sub_1B03B1198(&v954);
                  }
                }

                if (*(&v955 + 1))
                {
                  sub_1B03B1198(&v955);
                }
              }

              v25 = v890;

              v760 = v956;
              v752 = *(&v956 + 1);
              v953 = v956;
              v753 = &OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_logger;
              sub_1B074B69C(v885 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_logger, v899);
              (*(v889 + 16))(v25, v899, v887);
              sub_1B074B764(v899);

              sub_1B074B69C(v885 + *v753, v901);
              v26 = (v901 + *(v897 + 20));
              v756 = *v26;
              v757 = *(v26 + 1);
              v758 = *(v26 + 1);
              v759 = *(v26 + 4);
              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              sub_1B074B764(v901);

              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              v755 = 36;
              v799 = 7;
              v27 = swift_allocObject();
              v28 = v757;
              v29 = v758;
              v30 = v759;
              v769 = v27;
              *(v27 + 16) = v756;
              *(v27 + 20) = v28;
              *(v27 + 24) = v29;
              *(v27 + 32) = v30;
              sub_1B0394868();
              sub_1B0394868();
              sub_1B0394868();
              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              v31 = swift_allocObject();
              v32 = v757;
              v33 = v758;
              v34 = v759;
              v754 = v31;
              *(v31 + 16) = v756;
              *(v31 + 20) = v32;
              *(v31 + 24) = v33;
              *(v31 + 32) = v34;

              v798 = 32;
              v35 = swift_allocObject();
              v36 = v754;
              v782 = v35;
              *(v35 + 16) = sub_1B074E050;
              *(v35 + 24) = v36;
              sub_1B0394868();
              sub_1B0394868();

              v37 = swift_allocObject();
              v38 = v757;
              v39 = v758;
              v40 = v759;
              v791 = v37;
              *(v37 + 16) = v756;
              *(v37 + 20) = v38;
              *(v37 + 24) = v39;
              *(v37 + 32) = v40;

              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              v41 = swift_allocObject();
              v42 = *(&v760 + 1);
              v800 = v41;
              *(v41 + 16) = v760;
              *(v41 + 24) = v42;
              v828 = sub_1B0E43988();
              v761 = v828;
              v827 = sub_1B0E458E8();
              v762 = v827;
              v794 = 17;
              v803 = swift_allocObject();
              v763 = v803;
              v772 = 16;
              *(v803 + 16) = 16;
              v804 = swift_allocObject();
              v764 = v804;
              v780 = 4;
              *(v804 + 16) = 4;
              v43 = swift_allocObject();
              v765 = v43;
              *(v43 + 16) = sub_1B0394C30;
              v775 = 0;
              *(v43 + 24) = 0;
              v44 = swift_allocObject();
              v45 = v765;
              v805 = v44;
              v766 = v44;
              *(v44 + 16) = sub_1B0394C24;
              *(v44 + 24) = v45;
              v806 = swift_allocObject();
              v767 = v806;
              v778 = 0;
              *(v806 + 16) = 0;
              v807 = swift_allocObject();
              v768 = v807;
              *(v807 + 16) = 1;
              v46 = swift_allocObject();
              v47 = v769;
              v770 = v46;
              *(v46 + 16) = sub_1B074DFFC;
              *(v46 + 24) = v47;
              v48 = swift_allocObject();
              v49 = v770;
              v808 = v48;
              v771 = v48;
              *(v48 + 16) = sub_1B039BA88;
              *(v48 + 24) = v49;
              v809 = swift_allocObject();
              v773 = v809;
              *(v809 + 16) = v772;
              v810 = swift_allocObject();
              v774 = v810;
              *(v810 + 16) = v780;
              v50 = swift_allocObject();
              v51 = v775;
              v776 = v50;
              *(v50 + 16) = sub_1B039BB94;
              *(v50 + 24) = v51;
              v52 = swift_allocObject();
              v53 = v776;
              v811 = v52;
              v777 = v52;
              *(v52 + 16) = sub_1B0394C24;
              *(v52 + 24) = v53;
              v812 = swift_allocObject();
              v779 = v812;
              *(v812 + 16) = v778;
              v813 = swift_allocObject();
              v781 = v813;
              *(v813 + 16) = v780;
              v54 = swift_allocObject();
              v55 = v782;
              v783 = v54;
              *(v54 + 16) = sub_1B039BBA0;
              *(v54 + 24) = v55;
              v56 = swift_allocObject();
              v57 = v783;
              v814 = v56;
              v784 = v56;
              *(v56 + 16) = sub_1B039BC08;
              *(v56 + 24) = v57;
              v815 = swift_allocObject();
              v785 = v815;
              *(v815 + 16) = 112;
              v816 = swift_allocObject();
              v786 = v816;
              v796 = 8;
              *(v816 + 16) = 8;
              v787 = swift_allocObject();
              *(v787 + 16) = 0x786F626C69616DLL;
              v58 = swift_allocObject();
              v59 = v787;
              v817 = v58;
              v788 = v58;
              *(v58 + 16) = sub_1B06BA324;
              *(v58 + 24) = v59;
              v818 = swift_allocObject();
              v789 = v818;
              *(v818 + 16) = 37;
              v819 = swift_allocObject();
              v790 = v819;
              *(v819 + 16) = v796;
              v60 = swift_allocObject();
              v61 = v791;
              v792 = v60;
              *(v60 + 16) = sub_1B074E0E4;
              *(v60 + 24) = v61;
              v62 = swift_allocObject();
              v63 = v792;
              v820 = v62;
              v793 = v62;
              *(v62 + 16) = sub_1B039BCF8;
              *(v62 + 24) = v63;
              v821 = swift_allocObject();
              v795 = v821;
              *(v821 + 16) = 34;
              v822 = swift_allocObject();
              v797 = v822;
              *(v822 + 16) = v796;
              v64 = swift_allocObject();
              v65 = v800;
              v801 = v64;
              *(v64 + 16) = sub_1B070B550;
              *(v64 + 24) = v65;
              v66 = swift_allocObject();
              v67 = v801;
              v825 = v66;
              v802 = v66;
              *(v66 + 16) = sub_1B039BCF8;
              *(v66 + 24) = v67;
              v826 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
              v823 = sub_1B0E46A48();
              v824 = v68;

              v69 = v803;
              v70 = v824;
              *v824 = sub_1B0398F5C;
              v70[1] = v69;

              v71 = v804;
              v72 = v824;
              v824[2] = sub_1B0398F5C;
              v72[3] = v71;

              v73 = v805;
              v74 = v824;
              v824[4] = sub_1B0399178;
              v74[5] = v73;

              v75 = v806;
              v76 = v824;
              v824[6] = sub_1B0398F5C;
              v76[7] = v75;

              v77 = v807;
              v78 = v824;
              v824[8] = sub_1B0398F5C;
              v78[9] = v77;

              v79 = v808;
              v80 = v824;
              v824[10] = sub_1B039BA94;
              v80[11] = v79;

              v81 = v809;
              v82 = v824;
              v824[12] = sub_1B0398F5C;
              v82[13] = v81;

              v83 = v810;
              v84 = v824;
              v824[14] = sub_1B0398F5C;
              v84[15] = v83;

              v85 = v811;
              v86 = v824;
              v824[16] = sub_1B0399178;
              v86[17] = v85;

              v87 = v812;
              v88 = v824;
              v824[18] = sub_1B0398F5C;
              v88[19] = v87;

              v89 = v813;
              v90 = v824;
              v824[20] = sub_1B0398F5C;
              v90[21] = v89;

              v91 = v814;
              v92 = v824;
              v824[22] = sub_1B03991EC;
              v92[23] = v91;

              v93 = v815;
              v94 = v824;
              v824[24] = sub_1B0398F5C;
              v94[25] = v93;

              v95 = v816;
              v96 = v824;
              v824[26] = sub_1B0398F5C;
              v96[27] = v95;

              v97 = v817;
              v98 = v824;
              v824[28] = sub_1B03993BC;
              v98[29] = v97;

              v99 = v818;
              v100 = v824;
              v824[30] = sub_1B0398F5C;
              v100[31] = v99;

              v101 = v819;
              v102 = v824;
              v824[32] = sub_1B0398F5C;
              v102[33] = v101;

              v103 = v820;
              v104 = v824;
              v824[34] = sub_1B039BCEC;
              v104[35] = v103;

              v105 = v821;
              v106 = v824;
              v824[36] = sub_1B0398F5C;
              v106[37] = v105;

              v107 = v822;
              v108 = v824;
              v824[38] = sub_1B0398F5C;
              v108[39] = v107;

              v109 = v824;
              v110 = v825;
              v824[40] = sub_1B039BCEC;
              v109[41] = v110;
              sub_1B0394964();

              if (os_log_type_enabled(v828, v827))
              {
                v111 = v766;
                v112 = v764;
                v113 = v763;
                v728 = v852;
                v724 = sub_1B0E45D78();
                v721 = v724;
                v722 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
                v725 = sub_1B03949A8(0, v722, v722);
                v723 = v725;
                v726 = sub_1B03949A8(2, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
                v952 = v724;
                v951 = v725;
                v950 = v726;
                v727 = &v952;
                sub_1B0394A48(3, &v952);
                sub_1B0394A48(7, v727);
                v114 = v728;
                v948 = sub_1B0398F5C;
                v949 = v113;
                sub_1B03949FC(&v948, v727, &v951, &v950);
                v729 = v114;
                v730 = v113;
                v731 = v112;
                v732 = v111;
                v733 = v767;
                v734 = v768;
                v735 = v771;
                v736 = v773;
                v737 = v774;
                v738 = v777;
                v739 = v779;
                v740 = v781;
                v741 = v784;
                v742 = v785;
                v743 = v786;
                v744 = v788;
                v745 = v789;
                v746 = v790;
                v747 = v793;
                v748 = v795;
                v749 = v797;
                v750 = v802;
                v751 = v114;
                if (v114)
                {
                  v698 = v730;
                  v699 = v731;
                  v700 = v732;
                  v701 = v733;
                  v702 = v734;
                  v703 = v735;
                  v704 = v736;
                  v705 = v737;
                  v706 = v738;
                  v707 = v739;
                  v708 = v740;
                  v709 = v741;
                  v710 = v742;
                  v711 = v743;
                  v712 = v744;
                  v713 = v745;
                  v714 = v746;
                  v715 = v747;
                  v716 = v748;
                  v717 = v749;
                  v718 = v750;
                  v719 = 0;
                  v237 = v750;
                  v236 = v749;
                  v235 = v748;
                  v234 = v747;
                  v233 = v746;
                  v232 = v745;
                  v231 = v744;
                  v230 = v743;
                  v229 = v742;
                  v228 = v741;
                  v227 = v740;
                  v226 = v739;
                  v225 = v738;
                  v224 = v737;
                  v223 = v736;
                  v222 = v735;
                  v221 = v734;
                  v220 = v733;
                  v219 = v732;
                  v218 = v731;

                  __break(1u);
                }

                else
                {
                  v115 = v766;
                  v116 = v764;
                  v117 = v763;
                  v948 = sub_1B0398F5C;
                  v949 = v764;
                  sub_1B03949FC(&v948, &v952, &v951, &v950);
                  v675 = 0;
                  v676 = v117;
                  v677 = v116;
                  v678 = v115;
                  v679 = v767;
                  v680 = v768;
                  v681 = v771;
                  v682 = v773;
                  v683 = v774;
                  v684 = v777;
                  v685 = v779;
                  v686 = v781;
                  v687 = v784;
                  v688 = v785;
                  v689 = v786;
                  v690 = v788;
                  v691 = v789;
                  v692 = v790;
                  v693 = v793;
                  v694 = v795;
                  v695 = v797;
                  v696 = v802;
                  v697 = 0;
                  v118 = v766;
                  v119 = v764;
                  v120 = v763;
                  v948 = sub_1B0399178;
                  v949 = v766;
                  sub_1B03949FC(&v948, &v952, &v951, &v950);
                  v652 = 0;
                  v653 = v120;
                  v654 = v119;
                  v655 = v118;
                  v656 = v767;
                  v657 = v768;
                  v658 = v771;
                  v659 = v773;
                  v660 = v774;
                  v661 = v777;
                  v662 = v779;
                  v663 = v781;
                  v664 = v784;
                  v665 = v785;
                  v666 = v786;
                  v667 = v788;
                  v668 = v789;
                  v669 = v790;
                  v670 = v793;
                  v671 = v795;
                  v672 = v797;
                  v673 = v802;
                  v674 = 0;
                  v121 = v766;
                  v122 = v764;
                  v123 = v763;
                  v948 = sub_1B0398F5C;
                  v949 = v767;
                  sub_1B03949FC(&v948, &v952, &v951, &v950);
                  v629 = 0;
                  v630 = v123;
                  v631 = v122;
                  v632 = v121;
                  v633 = v767;
                  v634 = v768;
                  v635 = v771;
                  v636 = v773;
                  v637 = v774;
                  v638 = v777;
                  v639 = v779;
                  v640 = v781;
                  v641 = v784;
                  v642 = v785;
                  v643 = v786;
                  v644 = v788;
                  v645 = v789;
                  v646 = v790;
                  v647 = v793;
                  v648 = v795;
                  v649 = v797;
                  v650 = v802;
                  v651 = 0;
                  v124 = v766;
                  v125 = v764;
                  v126 = v763;
                  v948 = sub_1B0398F5C;
                  v949 = v768;
                  sub_1B03949FC(&v948, &v952, &v951, &v950);
                  v606 = 0;
                  v607 = v126;
                  v608 = v125;
                  v609 = v124;
                  v610 = v767;
                  v611 = v768;
                  v612 = v771;
                  v613 = v773;
                  v614 = v774;
                  v615 = v777;
                  v616 = v779;
                  v617 = v781;
                  v618 = v784;
                  v619 = v785;
                  v620 = v786;
                  v621 = v788;
                  v622 = v789;
                  v623 = v790;
                  v624 = v793;
                  v625 = v795;
                  v626 = v797;
                  v627 = v802;
                  v628 = 0;
                  v127 = v766;
                  v128 = v764;
                  v129 = v763;
                  v948 = sub_1B039BA94;
                  v949 = v771;
                  sub_1B03949FC(&v948, &v952, &v951, &v950);
                  v583 = 0;
                  v584 = v129;
                  v585 = v128;
                  v586 = v127;
                  v587 = v767;
                  v588 = v768;
                  v589 = v771;
                  v590 = v773;
                  v591 = v774;
                  v592 = v777;
                  v593 = v779;
                  v594 = v781;
                  v595 = v784;
                  v596 = v785;
                  v597 = v786;
                  v598 = v788;
                  v599 = v789;
                  v600 = v790;
                  v601 = v793;
                  v602 = v795;
                  v603 = v797;
                  v604 = v802;
                  v605 = 0;
                  v130 = v766;
                  v131 = v764;
                  v132 = v763;
                  v948 = sub_1B0398F5C;
                  v949 = v773;
                  sub_1B03949FC(&v948, &v952, &v951, &v950);
                  v560 = 0;
                  v561 = v132;
                  v562 = v131;
                  v563 = v130;
                  v564 = v767;
                  v565 = v768;
                  v566 = v771;
                  v567 = v773;
                  v568 = v774;
                  v569 = v777;
                  v570 = v779;
                  v571 = v781;
                  v572 = v784;
                  v573 = v785;
                  v574 = v786;
                  v575 = v788;
                  v576 = v789;
                  v577 = v790;
                  v578 = v793;
                  v579 = v795;
                  v580 = v797;
                  v581 = v802;
                  v582 = 0;
                  v133 = v766;
                  v134 = v764;
                  v135 = v763;
                  v948 = sub_1B0398F5C;
                  v949 = v774;
                  sub_1B03949FC(&v948, &v952, &v951, &v950);
                  v537 = 0;
                  v538 = v135;
                  v539 = v134;
                  v540 = v133;
                  v541 = v767;
                  v542 = v768;
                  v543 = v771;
                  v544 = v773;
                  v545 = v774;
                  v546 = v777;
                  v547 = v779;
                  v548 = v781;
                  v549 = v784;
                  v550 = v785;
                  v551 = v786;
                  v552 = v788;
                  v553 = v789;
                  v554 = v790;
                  v555 = v793;
                  v556 = v795;
                  v557 = v797;
                  v558 = v802;
                  v559 = 0;
                  v136 = v766;
                  v137 = v764;
                  v138 = v763;
                  v948 = sub_1B0399178;
                  v949 = v777;
                  sub_1B03949FC(&v948, &v952, &v951, &v950);
                  v514 = 0;
                  v515 = v138;
                  v516 = v137;
                  v517 = v136;
                  v518 = v767;
                  v519 = v768;
                  v520 = v771;
                  v521 = v773;
                  v522 = v774;
                  v523 = v777;
                  v524 = v779;
                  v525 = v781;
                  v526 = v784;
                  v527 = v785;
                  v528 = v786;
                  v529 = v788;
                  v530 = v789;
                  v531 = v790;
                  v532 = v793;
                  v533 = v795;
                  v534 = v797;
                  v535 = v802;
                  v536 = 0;
                  v139 = v766;
                  v140 = v764;
                  v141 = v763;
                  v948 = sub_1B0398F5C;
                  v949 = v779;
                  sub_1B03949FC(&v948, &v952, &v951, &v950);
                  v491 = 0;
                  v492 = v141;
                  v493 = v140;
                  v494 = v139;
                  v495 = v767;
                  v496 = v768;
                  v497 = v771;
                  v498 = v773;
                  v499 = v774;
                  v500 = v777;
                  v501 = v779;
                  v502 = v781;
                  v503 = v784;
                  v504 = v785;
                  v505 = v786;
                  v506 = v788;
                  v507 = v789;
                  v508 = v790;
                  v509 = v793;
                  v510 = v795;
                  v511 = v797;
                  v512 = v802;
                  v513 = 0;
                  v142 = v766;
                  v143 = v764;
                  v144 = v763;
                  v948 = sub_1B0398F5C;
                  v949 = v781;
                  sub_1B03949FC(&v948, &v952, &v951, &v950);
                  v468 = 0;
                  v469 = v144;
                  v470 = v143;
                  v471 = v142;
                  v472 = v767;
                  v473 = v768;
                  v474 = v771;
                  v475 = v773;
                  v476 = v774;
                  v477 = v777;
                  v478 = v779;
                  v479 = v781;
                  v480 = v784;
                  v481 = v785;
                  v482 = v786;
                  v483 = v788;
                  v484 = v789;
                  v485 = v790;
                  v486 = v793;
                  v487 = v795;
                  v488 = v797;
                  v489 = v802;
                  v490 = 0;
                  v145 = v766;
                  v146 = v764;
                  v147 = v763;
                  v948 = sub_1B03991EC;
                  v949 = v784;
                  sub_1B03949FC(&v948, &v952, &v951, &v950);
                  v445 = 0;
                  v446 = v147;
                  v447 = v146;
                  v448 = v145;
                  v449 = v767;
                  v450 = v768;
                  v451 = v771;
                  v452 = v773;
                  v453 = v774;
                  v454 = v777;
                  v455 = v779;
                  v456 = v781;
                  v457 = v784;
                  v458 = v785;
                  v459 = v786;
                  v460 = v788;
                  v461 = v789;
                  v462 = v790;
                  v463 = v793;
                  v464 = v795;
                  v465 = v797;
                  v466 = v802;
                  v467 = 0;
                  v148 = v766;
                  v149 = v764;
                  v150 = v763;
                  v948 = sub_1B0398F5C;
                  v949 = v785;
                  sub_1B03949FC(&v948, &v952, &v951, &v950);
                  v422 = 0;
                  v423 = v150;
                  v424 = v149;
                  v425 = v148;
                  v426 = v767;
                  v427 = v768;
                  v428 = v771;
                  v429 = v773;
                  v430 = v774;
                  v431 = v777;
                  v432 = v779;
                  v433 = v781;
                  v434 = v784;
                  v435 = v785;
                  v436 = v786;
                  v437 = v788;
                  v438 = v789;
                  v439 = v790;
                  v440 = v793;
                  v441 = v795;
                  v442 = v797;
                  v443 = v802;
                  v444 = 0;
                  v151 = v766;
                  v152 = v764;
                  v153 = v763;
                  v948 = sub_1B0398F5C;
                  v949 = v786;
                  sub_1B03949FC(&v948, &v952, &v951, &v950);
                  v399 = 0;
                  v400 = v153;
                  v401 = v152;
                  v402 = v151;
                  v403 = v767;
                  v404 = v768;
                  v405 = v771;
                  v406 = v773;
                  v407 = v774;
                  v408 = v777;
                  v409 = v779;
                  v410 = v781;
                  v411 = v784;
                  v412 = v785;
                  v413 = v786;
                  v414 = v788;
                  v415 = v789;
                  v416 = v790;
                  v417 = v793;
                  v418 = v795;
                  v419 = v797;
                  v420 = v802;
                  v421 = 0;
                  v154 = v766;
                  v155 = v764;
                  v156 = v763;
                  v948 = sub_1B03993BC;
                  v949 = v788;
                  sub_1B03949FC(&v948, &v952, &v951, &v950);
                  v376 = 0;
                  v377 = v156;
                  v378 = v155;
                  v379 = v154;
                  v380 = v767;
                  v381 = v768;
                  v382 = v771;
                  v383 = v773;
                  v384 = v774;
                  v385 = v777;
                  v386 = v779;
                  v387 = v781;
                  v388 = v784;
                  v389 = v785;
                  v390 = v786;
                  v391 = v788;
                  v392 = v789;
                  v393 = v790;
                  v394 = v793;
                  v395 = v795;
                  v396 = v797;
                  v397 = v802;
                  v398 = 0;
                  v157 = v766;
                  v158 = v764;
                  v159 = v763;
                  v948 = sub_1B0398F5C;
                  v949 = v789;
                  sub_1B03949FC(&v948, &v952, &v951, &v950);
                  v353 = 0;
                  v354 = v159;
                  v355 = v158;
                  v356 = v157;
                  v357 = v767;
                  v358 = v768;
                  v359 = v771;
                  v360 = v773;
                  v361 = v774;
                  v362 = v777;
                  v363 = v779;
                  v364 = v781;
                  v365 = v784;
                  v366 = v785;
                  v367 = v786;
                  v368 = v788;
                  v369 = v789;
                  v370 = v790;
                  v371 = v793;
                  v372 = v795;
                  v373 = v797;
                  v374 = v802;
                  v375 = 0;
                  v160 = v766;
                  v161 = v764;
                  v162 = v763;
                  v948 = sub_1B0398F5C;
                  v949 = v790;
                  sub_1B03949FC(&v948, &v952, &v951, &v950);
                  v330 = 0;
                  v331 = v162;
                  v332 = v161;
                  v333 = v160;
                  v334 = v767;
                  v335 = v768;
                  v336 = v771;
                  v337 = v773;
                  v338 = v774;
                  v339 = v777;
                  v340 = v779;
                  v341 = v781;
                  v342 = v784;
                  v343 = v785;
                  v344 = v786;
                  v345 = v788;
                  v346 = v789;
                  v347 = v790;
                  v348 = v793;
                  v349 = v795;
                  v350 = v797;
                  v351 = v802;
                  v352 = 0;
                  v163 = v766;
                  v164 = v764;
                  v165 = v763;
                  v948 = sub_1B039BCEC;
                  v949 = v793;
                  sub_1B03949FC(&v948, &v952, &v951, &v950);
                  v307 = 0;
                  v308 = v165;
                  v309 = v164;
                  v310 = v163;
                  v311 = v767;
                  v312 = v768;
                  v313 = v771;
                  v314 = v773;
                  v315 = v774;
                  v316 = v777;
                  v317 = v779;
                  v318 = v781;
                  v319 = v784;
                  v320 = v785;
                  v321 = v786;
                  v322 = v788;
                  v323 = v789;
                  v324 = v790;
                  v325 = v793;
                  v326 = v795;
                  v327 = v797;
                  v328 = v802;
                  v329 = 0;
                  v166 = v766;
                  v167 = v764;
                  v168 = v763;
                  v948 = sub_1B0398F5C;
                  v949 = v795;
                  sub_1B03949FC(&v948, &v952, &v951, &v950);
                  v284 = 0;
                  v285 = v168;
                  v286 = v167;
                  v287 = v166;
                  v288 = v767;
                  v289 = v768;
                  v290 = v771;
                  v291 = v773;
                  v292 = v774;
                  v293 = v777;
                  v294 = v779;
                  v295 = v781;
                  v296 = v784;
                  v297 = v785;
                  v298 = v786;
                  v299 = v788;
                  v300 = v789;
                  v301 = v790;
                  v302 = v793;
                  v303 = v795;
                  v304 = v797;
                  v305 = v802;
                  v306 = 0;
                  v169 = v766;
                  v170 = v764;
                  v171 = v763;
                  v948 = sub_1B0398F5C;
                  v949 = v797;
                  sub_1B03949FC(&v948, &v952, &v951, &v950);
                  v261 = 0;
                  v262 = v171;
                  v263 = v170;
                  v264 = v169;
                  v265 = v767;
                  v266 = v768;
                  v267 = v771;
                  v268 = v773;
                  v269 = v774;
                  v270 = v777;
                  v271 = v779;
                  v272 = v781;
                  v273 = v784;
                  v274 = v785;
                  v275 = v786;
                  v276 = v788;
                  v277 = v789;
                  v278 = v790;
                  v279 = v793;
                  v280 = v795;
                  v281 = v797;
                  v282 = v802;
                  v283 = 0;
                  v172 = v766;
                  v173 = v764;
                  v174 = v763;
                  v948 = sub_1B039BCEC;
                  v949 = v802;
                  sub_1B03949FC(&v948, &v952, &v951, &v950);
                  v238 = 0;
                  v239 = v174;
                  v240 = v173;
                  v241 = v172;
                  v242 = v767;
                  v243 = v768;
                  v244 = v771;
                  v245 = v773;
                  v246 = v774;
                  v247 = v777;
                  v248 = v779;
                  v249 = v781;
                  v250 = v784;
                  v251 = v785;
                  v252 = v786;
                  v253 = v788;
                  v254 = v789;
                  v255 = v790;
                  v256 = v793;
                  v257 = v795;
                  v258 = v797;
                  v259 = v802;
                  v260 = 0;
                  _os_log_impl(&dword_1B0389000, v761, v762, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Found invalid UID '%{public}s' while looking for deleted messages.", v721, 0x35u);
                  sub_1B03998A8(v723, 0, v722);
                  sub_1B03998A8(v726, 2, MEMORY[0x1E69E7CA0] + 8);
                  sub_1B0E45D58();

                  v720 = v238;
                }
              }

              else
              {

                v720 = v852;
              }

              v217 = v720;

              (*(v889 + 8))(v890, v887);

              v847 = v217;
            }

            else
            {
              v848 = v850;
              v844 = v850;
              v947 = v850;
              v945 = v850;
              MessageIdentifierSet.insert(_:)(&v946, &v945, v902);
              v846 = [objc_opt_self() setDeleted];
              v20 = v856;
              v845 = [v856 persistentID];

              sub_1B07413A8(v846, v845, v844, v912, v927, v919, v911);
              v847 = v852;
            }
          }

          sub_1B039E440(v961);
          sub_1B03D08AC(v906, v908);
          v175 = v856;
          v215 = [v856 persistentID];

          v214 = *(v894 + 48);
          sub_1B074BA2C(v908, v896);
          *(v896 + v214) = v215;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1C48, &qword_1B0E9B038);
          sub_1B0E452E8();
          sub_1B03D09B8(v906);

          v216 = v852;
LABEL_46:
          v867 = v216;
          goto LABEL_47;
        }
      }

      v213 = sub_1B0829F6C(v917);
      if (v213)
      {
        v212 = v213;
        v211 = v213;
        v964 = v213;
        sub_1B0917CB8(v908);
        v210 = &v963;
        swift_beginAccess();
        MessageIdentifierSet.formUnion(_:)(v908, v902);
        swift_endAccess();
        sub_1B03D09B8(v908);
      }

      v216 = v883;
      goto LABEL_46;
    }

    v879 = v881;
    v875 = v881;
    v944 = v881;
    sub_1B074B69C(v885 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_logger, v901);
    sub_1B07204E0(v901, v910);
    sub_1B074B764(v901);
    sub_1B03D08AC(v910, v908);
    v18 = v875;
    v877 = [v875 persistentID];

    v876 = *(v894 + 48);
    sub_1B074BA2C(v908, v896);
    *(v896 + v876) = v877;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1C48, &qword_1B0E9B038);
    sub_1B0E452E8();
    sub_1B03D08AC(v910, v908);
    sub_1B074B4A4();
    sub_1B0E45798();
    for (k = v883; ; k = v871)
    {
      v873 = k;
      sub_1B0E46518();
      v874 = v942;
      if (v943)
      {
        break;
      }

      v872 = v874;
      v868 = v874;
      v871 = v873;
      v941 = v874;
      v870 = [v875 flagChange];
      v19 = v875;
      v869 = [v875 persistentID];

      sub_1B07413A8(v870, v869, v868, v912, v927, v919, v911);
    }

    sub_1B03D09B8(v893);
    sub_1B03D09B8(v910);

    v867 = v873;
LABEL_47:
    v209 = v867;
  }

  v206 = v883;
  sub_1B039E440(v975);
  v193 = &v972;
  v204 = 0;
  swift_beginAccess();
  v194 = *v920;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_endAccess();
  v202 = &type metadata for UID;
  v195 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  v971 = v195;
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1C20, &unk_1B0E9B020);
  v196 = v197;
  v198 = sub_1B074B8F4();
  v199 = &v971;
  v201 = sub_1B0829BE8(&v971, v197, v198);
  v200 = v201;
  sub_1B039E440(v199);
  v970 = v201;
  v969[3] = v201;
  MessageIdentifierSet.init()();
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1B30, &qword_1B0E9AF68);
  v203 = v205;
  v176 = sub_1B0746680();
  v177 = v206;
  v207 = v176;
  sub_1B0E44FD8();
  v208 = v177;
  if (v177)
  {
    __break(1u);
  }

  else
  {
    v189 = 0;
    v186 = v969;
    swift_beginAccess();
    v187 = *v920;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    swift_endAccess();
    v188 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

    v968 = v188;
    sub_1B074B97C();
    sub_1B0E46098();
    MessageIdentifierSet.subtracting(_:)(v905, v903);
    sub_1B03D09B8(v908);
    v178 = v189;
    v967 = v200;
    v190 = &v181;
    MEMORY[0x1EEE9AC00](&v181);
    *(&v181 - 2) = v179;
    v180 = sub_1B0E44F58();
    v191 = v178;
    v192 = v180;
    if (!v178)
    {
      v182 = v192;
      v185 = 0;
      v966 = v192;
      sub_1B03D08AC(v903, v908);
      v183 = v979;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v184 = v978;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B07411F4(v182, v908, v183, v184, v886);
      sub_1B03D09B8(v903);
      sub_1B03D09B8(v905);

      (*(v915 + 8))(v917, v913);

      sub_1B039E440(&v978);
      sub_1B039E440(&v979);
      return;
    }
  }

  __break(1u);
}

uint64_t sub_1B0726E80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(a5 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_messageChangeManager);
  MEMORY[0x1E69E5928](v12);
  sub_1B07B639C(a1, a2, a3, a4, a6);
  return MEMORY[0x1E69E5920](v12);
}

uint64_t sub_1B0726F34(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2648 = v2822;
  v2764 = v3;
  v2765 = v4;
  v2766 = v5;
  v2767 = v6;
  v2768 = v7;
  v2769 = v8;
  v2781 = v2;
  v2649 = sub_1B074E050;
  v2650 = sub_1B0394C30;
  v2651 = sub_1B0394C24;
  v2652 = sub_1B074DFFC;
  v2653 = sub_1B039BA88;
  v2654 = sub_1B039BB94;
  v2655 = sub_1B0394C24;
  v2656 = sub_1B039BBA0;
  v2657 = sub_1B039BC08;
  v2658 = 0x786F626C69616DLL;
  v2659 = sub_1B06BA324;
  v2660 = sub_1B074E0E4;
  v2661 = sub_1B039BCF8;
  v2662 = sub_1B074E560;
  v2663 = sub_1B03B0DF8;
  v2664 = sub_1B074E744;
  v2665 = sub_1B03B0DF8;
  v2666 = sub_1B03FB774;
  v2667 = sub_1B03B0DF8;
  v2668 = sub_1B03FB774;
  v2669 = sub_1B03B0DF8;
  v2670 = sub_1B0398F5C;
  v2671 = sub_1B0398F5C;
  v2672 = sub_1B0399178;
  v2673 = sub_1B0398F5C;
  v2674 = sub_1B0398F5C;
  v2675 = sub_1B039BA94;
  v2676 = sub_1B0398F5C;
  v2677 = sub_1B0398F5C;
  v2678 = sub_1B0399178;
  v2679 = sub_1B0398F5C;
  v2680 = sub_1B0398F5C;
  v2681 = sub_1B03991EC;
  v2682 = sub_1B0398F5C;
  v2683 = sub_1B0398F5C;
  v2684 = sub_1B03993BC;
  v2685 = sub_1B0398F5C;
  v2686 = sub_1B0398F5C;
  v2687 = sub_1B039BCEC;
  v2688 = sub_1B0398F5C;
  v2689 = sub_1B0398F5C;
  v2690 = sub_1B0399260;
  v2691 = sub_1B0398F5C;
  v2692 = sub_1B0398F5C;
  v2693 = sub_1B0399260;
  v2694 = sub_1B0398F5C;
  v2695 = sub_1B0398F5C;
  v2696 = sub_1B0399260;
  v2697 = sub_1B0398F5C;
  v2698 = sub_1B0398F5C;
  v2699 = sub_1B0399260;
  v2700 = sub_1B074E050;
  v2701 = sub_1B0394C24;
  v2702 = sub_1B074DFFC;
  v2703 = sub_1B039BA88;
  v2704 = sub_1B0394C24;
  v2705 = sub_1B039BBA0;
  v2706 = sub_1B039BC08;
  v2707 = sub_1B06BA324;
  v2708 = sub_1B074E0E4;
  v2709 = sub_1B039BCF8;
  v2710 = sub_1B074E560;
  v2711 = sub_1B03B0DF8;
  v2712 = sub_1B074E744;
  v2713 = sub_1B03B0DF8;
  v2714 = sub_1B03FB774;
  v2715 = sub_1B03B0DF8;
  v2716 = sub_1B0398F5C;
  v2717 = sub_1B0398F5C;
  v2718 = sub_1B0399178;
  v2719 = sub_1B0398F5C;
  v2720 = sub_1B0398F5C;
  v2721 = sub_1B039BA94;
  v2722 = sub_1B0398F5C;
  v2723 = sub_1B0398F5C;
  v2724 = sub_1B0399178;
  v2725 = sub_1B0398F5C;
  v2726 = sub_1B0398F5C;
  v2727 = sub_1B03991EC;
  v2728 = sub_1B0398F5C;
  v2729 = sub_1B0398F5C;
  v2730 = sub_1B03993BC;
  v2731 = sub_1B0398F5C;
  v2732 = sub_1B0398F5C;
  v2733 = sub_1B039BCEC;
  v2734 = sub_1B0398F5C;
  v2735 = sub_1B0398F5C;
  v2736 = sub_1B0399260;
  v2737 = sub_1B0398F5C;
  v2738 = sub_1B0398F5C;
  v2739 = sub_1B0399260;
  v2740 = sub_1B0398F5C;
  v2741 = sub_1B0398F5C;
  v2742 = sub_1B0399260;
  v2818 = 0;
  v2817 = 0;
  v2816 = 0;
  v2814 = 0;
  v2815 = 0;
  v2812 = 0;
  v2813 = 0;
  v2811 = 0;
  v2810 = 0;
  v2809 = 0;
  v2779 = v2808;
  memset(v2808, 0, sizeof(v2808));
  v2802 = 0;
  v2770 = 0;
  v2743 = _s6LoggerVMa_1(0);
  v2744 = (*(*(v2743 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v2745 = v655 - v2744;
  v2746 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v2747 = v655 - v2746;
  v2748 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v2749 = v655 - v2748;
  v2750 = sub_1B0E439A8();
  v2751 = *(v2750 - 8);
  v2752 = v2750 - 8;
  v2753 = (*(v2751 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2770);
  v2754 = v655 - v2753;
  v2755 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v14);
  v2756 = v655 - v2755;
  v16 = _s21UnfilteredFlagChangesVMa(v15);
  v2757 = *(v16 - 8);
  v2758 = v2757;
  v2759 = *(v2757 + 64);
  v2760 = (v2759 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v16);
  v2761 = v655 - v2760;
  v2762 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v655 - v2760);
  v2763 = v655 - v2762;
  v2818 = v655 - v2762;
  v2771 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v2775 = *(*(v2771 - 8) + 64);
  v2772 = (v2775 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2770);
  v2773 = (v655 - v2772);
  v2774 = (v2775 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v18);
  v2776 = v655 - v2774;
  v2777 = (v2775 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v19);
  v2778 = v655 - v2777;
  v2817 = v655 - v2777;
  v2816 = v20;
  v2814 = v21;
  v2815 = v22;
  v2812 = v23;
  v2813 = v24;
  v2811 = v25;
  v2810 = v1;
  v2809 = sub_1B0E46A48();
  sub_1B041C1E8();
  MessageIdentifierSet.init()();
  v2806 = 0;
  v2807 = 4;
  v2780 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1850, &unk_1B0E9B040);
  sub_1B06D55D0();
  sub_1B0E45798();
  for (i = v2781; ; i = v676)
  {
    v2647 = i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1858, &qword_1B0E99C00);
    sub_1B0E46518();
    if (v2805)
    {
      v659 = v2647;
      goto LABEL_34;
    }

    sub_1B03D08AC(v2778, v2776);
    v26 = v2647;
    v2765(v2764, v2776);
    v2645 = v26;
    v2646 = v26;
    if (v26)
    {
      v655[1] = v2646;
      sub_1B03D09B8(v2776);
      sub_1B03D09B8(v2778);
      sub_1B039E440(&v2809);
      return v2542;
    }

    sub_1B03D09B8(v2776);
    sub_1B0735EEC(v2773);
    MessageIdentifierSet.formUnion(_:)(v2773, v2771);
    sub_1B03D09B8(v2773);
    if (sub_1B0736144())
    {
      sub_1B074E258(v2763);
      v659 = v2645;
      goto LABEL_34;
    }

    sub_1B0736314(&v2819);
    v2640 = v2820;
    v2641 = v2821;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v2767(v2640, *(&v2640 + 1), v2641, *(&v2641 + 1));

    v2642 = v2820;
    v2643 = v2821;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v2644 = sub_1B07B7040(v2642, *(&v2642 + 1), v2643, *(&v2643 + 1));

    if (v2644)
    {
      (*(v2751 + 16))(v2756, v2769, v2750);
      sub_1B074B69C(v2769, v2749);
      sub_1B074B69C(v2749, v2747);
      sub_1B074E41C(v2749, v2745);
      v27 = (v2747 + *(v2743 + 20));
      v2580 = *v27;
      v2581 = *(v27 + 1);
      v2582 = *(v27 + 1);
      v2583 = *(v27 + 4);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B074B764(v2747);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v2579 = 36;
      v2605 = 7;
      v28 = swift_allocObject();
      v29 = v2581;
      v30 = v2582;
      v31 = v2583;
      v2587 = v28;
      *(v28 + 16) = v2580;
      *(v28 + 20) = v29;
      *(v28 + 24) = v30;
      *(v28 + 32) = v31;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v32 = swift_allocObject();
      v33 = v2581;
      v34 = v2582;
      v35 = v2583;
      v2578 = v32;
      *(v32 + 16) = v2580;
      *(v32 + 20) = v33;
      *(v32 + 24) = v34;
      *(v32 + 32) = v35;

      v2604 = 32;
      v36 = swift_allocObject();
      v37 = v2578;
      v2592 = v36;
      *(v36 + 16) = v2700;
      *(v36 + 24) = v37;
      sub_1B0394868();
      sub_1B0394868();

      v38 = swift_allocObject();
      v39 = v2581;
      v40 = v2582;
      v41 = v2583;
      v42 = v38;
      v43 = v2745;
      v2596 = v42;
      *(v42 + 16) = v2580;
      *(v42 + 20) = v39;
      *(v42 + 24) = v40;
      *(v42 + 32) = v41;
      sub_1B074B764(v43);
      v2584 = &v2819;
      sub_1B074E4B4(&v2819, v2788);
      v2598 = swift_allocObject();
      memcpy((v2598 + 16), v2584, 0x28uLL);
      sub_1B074E568(v2763, v2761);
      v2585 = (*(v2758 + 80) + 16) & ~*(v2758 + 80);
      v2600 = swift_allocObject();
      sub_1B074E678(v2761, (v2600 + v2585));
      v2594 = 24;
      v2606 = swift_allocObject();
      *(v2606 + 16) = v2764;
      v2638 = sub_1B0E43988();
      v2639 = sub_1B0E458C8();
      v2602 = 17;
      v2608 = swift_allocObject();
      v2589 = 16;
      *(v2608 + 16) = 16;
      v2609 = swift_allocObject();
      v2591 = 4;
      *(v2609 + 16) = 4;
      v44 = swift_allocObject();
      v2586 = v44;
      *(v44 + 16) = v2650;
      *(v44 + 24) = 0;
      v45 = swift_allocObject();
      v46 = v2586;
      v2610 = v45;
      *(v45 + 16) = v2701;
      *(v45 + 24) = v46;
      v2611 = swift_allocObject();
      *(v2611 + 16) = 0;
      v2612 = swift_allocObject();
      *(v2612 + 16) = 1;
      v47 = swift_allocObject();
      v48 = v2587;
      v2588 = v47;
      *(v47 + 16) = v2702;
      *(v47 + 24) = v48;
      v49 = swift_allocObject();
      v50 = v2588;
      v2613 = v49;
      *(v49 + 16) = v2703;
      *(v49 + 24) = v50;
      v2614 = swift_allocObject();
      *(v2614 + 16) = v2589;
      v2615 = swift_allocObject();
      *(v2615 + 16) = v2591;
      v51 = swift_allocObject();
      v2590 = v51;
      *(v51 + 16) = v2654;
      *(v51 + 24) = 0;
      v52 = swift_allocObject();
      v53 = v2590;
      v2616 = v52;
      *(v52 + 16) = v2704;
      *(v52 + 24) = v53;
      v2617 = swift_allocObject();
      *(v2617 + 16) = 0;
      v2618 = swift_allocObject();
      *(v2618 + 16) = v2591;
      v54 = swift_allocObject();
      v55 = v2592;
      v2593 = v54;
      *(v54 + 16) = v2705;
      *(v54 + 24) = v55;
      v56 = swift_allocObject();
      v57 = v2593;
      v2619 = v56;
      *(v56 + 16) = v2706;
      *(v56 + 24) = v57;
      v2620 = swift_allocObject();
      *(v2620 + 16) = 112;
      v2621 = swift_allocObject();
      v2603 = 8;
      *(v2621 + 16) = 8;
      v2595 = swift_allocObject();
      *(v2595 + 16) = v2658;
      v58 = swift_allocObject();
      v59 = v2595;
      v2622 = v58;
      *(v58 + 16) = v2707;
      *(v58 + 24) = v59;
      v2623 = swift_allocObject();
      *(v2623 + 16) = 37;
      v2624 = swift_allocObject();
      *(v2624 + 16) = v2603;
      v60 = swift_allocObject();
      v61 = v2596;
      v2597 = v60;
      *(v60 + 16) = v2708;
      *(v60 + 24) = v61;
      v62 = swift_allocObject();
      v63 = v2597;
      v2625 = v62;
      *(v62 + 16) = v2709;
      *(v62 + 24) = v63;
      v2626 = swift_allocObject();
      *(v2626 + 16) = 0;
      v2627 = swift_allocObject();
      *(v2627 + 16) = v2603;
      v64 = swift_allocObject();
      v65 = v2598;
      v2599 = v64;
      *(v64 + 16) = v2710;
      *(v64 + 24) = v65;
      v66 = swift_allocObject();
      v67 = v2599;
      v2628 = v66;
      *(v66 + 16) = v2711;
      *(v66 + 24) = v67;
      v2629 = swift_allocObject();
      *(v2629 + 16) = 0;
      v2630 = swift_allocObject();
      *(v2630 + 16) = v2603;
      v68 = swift_allocObject();
      v69 = v2600;
      v2601 = v68;
      *(v68 + 16) = v2712;
      *(v68 + 24) = v69;
      v70 = swift_allocObject();
      v71 = v2601;
      v2631 = v70;
      *(v70 + 16) = v2713;
      *(v70 + 24) = v71;
      v2632 = swift_allocObject();
      *(v2632 + 16) = 0;
      v2633 = swift_allocObject();
      *(v2633 + 16) = v2603;
      v72 = swift_allocObject();
      v73 = v2606;
      v2607 = v72;
      *(v72 + 16) = v2714;
      *(v72 + 24) = v73;
      v74 = swift_allocObject();
      v75 = v2607;
      v2635 = v74;
      *(v74 + 16) = v2715;
      *(v74 + 24) = v75;
      v2637 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v2634 = sub_1B0E46A48();
      v2636 = v76;

      v77 = v2608;
      v78 = v2636;
      *v2636 = v2716;
      v78[1] = v77;

      v79 = v2609;
      v80 = v2636;
      v2636[2] = v2717;
      v80[3] = v79;

      v81 = v2610;
      v82 = v2636;
      v2636[4] = v2718;
      v82[5] = v81;

      v83 = v2611;
      v84 = v2636;
      v2636[6] = v2719;
      v84[7] = v83;

      v85 = v2612;
      v86 = v2636;
      v2636[8] = v2720;
      v86[9] = v85;

      v87 = v2613;
      v88 = v2636;
      v2636[10] = v2721;
      v88[11] = v87;

      v89 = v2614;
      v90 = v2636;
      v2636[12] = v2722;
      v90[13] = v89;

      v91 = v2615;
      v92 = v2636;
      v2636[14] = v2723;
      v92[15] = v91;

      v93 = v2616;
      v94 = v2636;
      v2636[16] = v2724;
      v94[17] = v93;

      v95 = v2617;
      v96 = v2636;
      v2636[18] = v2725;
      v96[19] = v95;

      v97 = v2618;
      v98 = v2636;
      v2636[20] = v2726;
      v98[21] = v97;

      v99 = v2619;
      v100 = v2636;
      v2636[22] = v2727;
      v100[23] = v99;

      v101 = v2620;
      v102 = v2636;
      v2636[24] = v2728;
      v102[25] = v101;

      v103 = v2621;
      v104 = v2636;
      v2636[26] = v2729;
      v104[27] = v103;

      v105 = v2622;
      v106 = v2636;
      v2636[28] = v2730;
      v106[29] = v105;

      v107 = v2623;
      v108 = v2636;
      v2636[30] = v2731;
      v108[31] = v107;

      v109 = v2624;
      v110 = v2636;
      v2636[32] = v2732;
      v110[33] = v109;

      v111 = v2625;
      v112 = v2636;
      v2636[34] = v2733;
      v112[35] = v111;

      v113 = v2626;
      v114 = v2636;
      v2636[36] = v2734;
      v114[37] = v113;

      v115 = v2627;
      v116 = v2636;
      v2636[38] = v2735;
      v116[39] = v115;

      v117 = v2628;
      v118 = v2636;
      v2636[40] = v2736;
      v118[41] = v117;

      v119 = v2629;
      v120 = v2636;
      v2636[42] = v2737;
      v120[43] = v119;

      v121 = v2630;
      v122 = v2636;
      v2636[44] = v2738;
      v122[45] = v121;

      v123 = v2631;
      v124 = v2636;
      v2636[46] = v2739;
      v124[47] = v123;

      v125 = v2632;
      v126 = v2636;
      v2636[48] = v2740;
      v126[49] = v125;

      v127 = v2633;
      v128 = v2636;
      v2636[50] = v2741;
      v128[51] = v127;

      v129 = v2635;
      v130 = v2636;
      v2636[52] = v2742;
      v130[53] = v129;
      sub_1B0394964();

      if (os_log_type_enabled(v2638, v2639))
      {
        v131 = v2615;
        v132 = v2614;
        v133 = v2613;
        v134 = v2612;
        v135 = v2611;
        v136 = v2610;
        v137 = v2609;
        v2544 = sub_1B0E45D78();
        v2543 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v2545 = sub_1B03949A8(0, v2543, v2543);
        v2546 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v2547 = &v2787;
        v2787 = v2544;
        v2548 = &v2786;
        v2786 = v2545;
        v2549 = &v2785;
        v2785 = v2546;
        sub_1B0394A48(3, &v2787);
        sub_1B0394A48(9, v2547);
        v138 = v2645;
        v2783 = v2716;
        v2784 = v2608;
        sub_1B03949FC(&v2783, v2547, v2548, v2549);
        v2550 = v138;
        v2551 = v2608;
        v2552 = v137;
        v2553 = v136;
        v2554 = v135;
        v2555 = v134;
        v2556 = v133;
        v2557 = v132;
        v2558 = v131;
        v2559 = v2616;
        v2560 = v2617;
        v2561 = v2618;
        v2562 = v2619;
        v2563 = v2620;
        v2564 = v2621;
        v2565 = v2622;
        v2566 = v2623;
        v2567 = v2624;
        v2568 = v2625;
        v2569 = v2626;
        v2570 = v2627;
        v2571 = v2628;
        v2572 = v2629;
        v2573 = v2630;
        v2574 = v2631;
        v2575 = v2632;
        v2576 = v2633;
        v2577 = v2635;
        if (v138)
        {
          v2514 = v2551;
          v2515 = v2552;
          v2516 = v2553;
          v2517 = v2554;
          v2518 = v2555;
          v2519 = v2556;
          v2520 = v2557;
          v2521 = v2558;
          v2522 = v2559;
          v2523 = v2560;
          v2524 = v2561;
          v2525 = v2562;
          v2526 = v2563;
          v2527 = v2564;
          v2528 = v2565;
          v2529 = v2566;
          v2530 = v2567;
          v2531 = v2568;
          v2532 = v2569;
          v2533 = v2570;
          v2534 = v2571;
          v2535 = v2572;
          v2536 = v2573;
          v2537 = v2574;
          v2538 = v2575;
          v2539 = v2576;
          v2540 = v2577;
          v1785 = v2577;
          v1784 = v2576;
          v1783 = v2575;
          v1782 = v2574;
          v1781 = v2573;
          v1780 = v2572;
          v1779 = v2571;
          v1778 = v2570;
          v1777 = v2569;
          v1776 = v2568;
          v1775 = v2567;
          v1774 = v2566;
          v1773 = v2565;
          v1772 = v2564;
          v1771 = v2563;
          v1770 = v2562;
          v1769 = v2561;
          v1768 = v2560;
          v1767 = v2559;
          v1766 = v2558;
          v1765 = v2557;
          v1764 = v2556;
          v1763 = v2555;
          v1762 = v2554;
          v1761 = v2553;
          v1760 = v2552;

          __break(1u);
        }

        else
        {
          v139 = v2615;
          v140 = v2614;
          v141 = v2613;
          v142 = v2612;
          v143 = v2611;
          v144 = v2610;
          v145 = v2609;
          v2783 = v2717;
          v2784 = v2609;
          sub_1B03949FC(&v2783, &v2787, &v2786, &v2785);
          v2486 = 0;
          v2487 = v2608;
          v2488 = v145;
          v2489 = v144;
          v2490 = v143;
          v2491 = v142;
          v2492 = v141;
          v2493 = v140;
          v2494 = v139;
          v2495 = v2616;
          v2496 = v2617;
          v2497 = v2618;
          v2498 = v2619;
          v2499 = v2620;
          v2500 = v2621;
          v2501 = v2622;
          v2502 = v2623;
          v2503 = v2624;
          v2504 = v2625;
          v2505 = v2626;
          v2506 = v2627;
          v2507 = v2628;
          v2508 = v2629;
          v2509 = v2630;
          v2510 = v2631;
          v2511 = v2632;
          v2512 = v2633;
          v2513 = v2635;
          v146 = v2615;
          v147 = v2614;
          v148 = v2613;
          v149 = v2612;
          v150 = v2611;
          v151 = v2610;
          v152 = v2609;
          v2783 = v2718;
          v2784 = v2610;
          sub_1B03949FC(&v2783, &v2787, &v2786, &v2785);
          v2458 = 0;
          v2459 = v2608;
          v2460 = v152;
          v2461 = v151;
          v2462 = v150;
          v2463 = v149;
          v2464 = v148;
          v2465 = v147;
          v2466 = v146;
          v2467 = v2616;
          v2468 = v2617;
          v2469 = v2618;
          v2470 = v2619;
          v2471 = v2620;
          v2472 = v2621;
          v2473 = v2622;
          v2474 = v2623;
          v2475 = v2624;
          v2476 = v2625;
          v2477 = v2626;
          v2478 = v2627;
          v2479 = v2628;
          v2480 = v2629;
          v2481 = v2630;
          v2482 = v2631;
          v2483 = v2632;
          v2484 = v2633;
          v2485 = v2635;
          v153 = v2615;
          v154 = v2614;
          v155 = v2613;
          v156 = v2612;
          v157 = v2611;
          v158 = v2610;
          v159 = v2609;
          v2783 = v2719;
          v2784 = v2611;
          sub_1B03949FC(&v2783, &v2787, &v2786, &v2785);
          v2430 = 0;
          v2431 = v2608;
          v2432 = v159;
          v2433 = v158;
          v2434 = v157;
          v2435 = v156;
          v2436 = v155;
          v2437 = v154;
          v2438 = v153;
          v2439 = v2616;
          v2440 = v2617;
          v2441 = v2618;
          v2442 = v2619;
          v2443 = v2620;
          v2444 = v2621;
          v2445 = v2622;
          v2446 = v2623;
          v2447 = v2624;
          v2448 = v2625;
          v2449 = v2626;
          v2450 = v2627;
          v2451 = v2628;
          v2452 = v2629;
          v2453 = v2630;
          v2454 = v2631;
          v2455 = v2632;
          v2456 = v2633;
          v2457 = v2635;
          v160 = v2615;
          v161 = v2614;
          v162 = v2613;
          v163 = v2612;
          v164 = v2611;
          v165 = v2610;
          v166 = v2609;
          v2783 = v2720;
          v2784 = v2612;
          sub_1B03949FC(&v2783, &v2787, &v2786, &v2785);
          v2402 = 0;
          v2403 = v2608;
          v2404 = v166;
          v2405 = v165;
          v2406 = v164;
          v2407 = v163;
          v2408 = v162;
          v2409 = v161;
          v2410 = v160;
          v2411 = v2616;
          v2412 = v2617;
          v2413 = v2618;
          v2414 = v2619;
          v2415 = v2620;
          v2416 = v2621;
          v2417 = v2622;
          v2418 = v2623;
          v2419 = v2624;
          v2420 = v2625;
          v2421 = v2626;
          v2422 = v2627;
          v2423 = v2628;
          v2424 = v2629;
          v2425 = v2630;
          v2426 = v2631;
          v2427 = v2632;
          v2428 = v2633;
          v2429 = v2635;
          v167 = v2615;
          v168 = v2614;
          v169 = v2613;
          v170 = v2612;
          v171 = v2611;
          v172 = v2610;
          v173 = v2609;
          v2783 = v2721;
          v2784 = v2613;
          sub_1B03949FC(&v2783, &v2787, &v2786, &v2785);
          v2374 = 0;
          v2375 = v2608;
          v2376 = v173;
          v2377 = v172;
          v2378 = v171;
          v2379 = v170;
          v2380 = v169;
          v2381 = v168;
          v2382 = v167;
          v2383 = v2616;
          v2384 = v2617;
          v2385 = v2618;
          v2386 = v2619;
          v2387 = v2620;
          v2388 = v2621;
          v2389 = v2622;
          v2390 = v2623;
          v2391 = v2624;
          v2392 = v2625;
          v2393 = v2626;
          v2394 = v2627;
          v2395 = v2628;
          v2396 = v2629;
          v2397 = v2630;
          v2398 = v2631;
          v2399 = v2632;
          v2400 = v2633;
          v2401 = v2635;
          v174 = v2615;
          v175 = v2614;
          v176 = v2613;
          v177 = v2612;
          v178 = v2611;
          v179 = v2610;
          v180 = v2609;
          v2783 = v2722;
          v2784 = v2614;
          sub_1B03949FC(&v2783, &v2787, &v2786, &v2785);
          v2346 = 0;
          v2347 = v2608;
          v2348 = v180;
          v2349 = v179;
          v2350 = v178;
          v2351 = v177;
          v2352 = v176;
          v2353 = v175;
          v2354 = v174;
          v2355 = v2616;
          v2356 = v2617;
          v2357 = v2618;
          v2358 = v2619;
          v2359 = v2620;
          v2360 = v2621;
          v2361 = v2622;
          v2362 = v2623;
          v2363 = v2624;
          v2364 = v2625;
          v2365 = v2626;
          v2366 = v2627;
          v2367 = v2628;
          v2368 = v2629;
          v2369 = v2630;
          v2370 = v2631;
          v2371 = v2632;
          v2372 = v2633;
          v2373 = v2635;
          v181 = v2615;
          v182 = v2614;
          v183 = v2613;
          v184 = v2612;
          v185 = v2611;
          v186 = v2610;
          v187 = v2609;
          v2783 = v2723;
          v2784 = v2615;
          sub_1B03949FC(&v2783, &v2787, &v2786, &v2785);
          v2318 = 0;
          v2319 = v2608;
          v2320 = v187;
          v2321 = v186;
          v2322 = v185;
          v2323 = v184;
          v2324 = v183;
          v2325 = v182;
          v2326 = v181;
          v2327 = v2616;
          v2328 = v2617;
          v2329 = v2618;
          v2330 = v2619;
          v2331 = v2620;
          v2332 = v2621;
          v2333 = v2622;
          v2334 = v2623;
          v2335 = v2624;
          v2336 = v2625;
          v2337 = v2626;
          v2338 = v2627;
          v2339 = v2628;
          v2340 = v2629;
          v2341 = v2630;
          v2342 = v2631;
          v2343 = v2632;
          v2344 = v2633;
          v2345 = v2635;
          v188 = v2615;
          v189 = v2614;
          v190 = v2613;
          v191 = v2612;
          v192 = v2611;
          v193 = v2610;
          v194 = v2609;
          v2783 = v2724;
          v2784 = v2616;
          sub_1B03949FC(&v2783, &v2787, &v2786, &v2785);
          v2290 = 0;
          v2291 = v2608;
          v2292 = v194;
          v2293 = v193;
          v2294 = v192;
          v2295 = v191;
          v2296 = v190;
          v2297 = v189;
          v2298 = v188;
          v2299 = v2616;
          v2300 = v2617;
          v2301 = v2618;
          v2302 = v2619;
          v2303 = v2620;
          v2304 = v2621;
          v2305 = v2622;
          v2306 = v2623;
          v2307 = v2624;
          v2308 = v2625;
          v2309 = v2626;
          v2310 = v2627;
          v2311 = v2628;
          v2312 = v2629;
          v2313 = v2630;
          v2314 = v2631;
          v2315 = v2632;
          v2316 = v2633;
          v2317 = v2635;
          v195 = v2615;
          v196 = v2614;
          v197 = v2613;
          v198 = v2612;
          v199 = v2611;
          v200 = v2610;
          v201 = v2609;
          v2783 = v2725;
          v2784 = v2617;
          sub_1B03949FC(&v2783, &v2787, &v2786, &v2785);
          v2262 = 0;
          v2263 = v2608;
          v2264 = v201;
          v2265 = v200;
          v2266 = v199;
          v2267 = v198;
          v2268 = v197;
          v2269 = v196;
          v2270 = v195;
          v2271 = v2616;
          v2272 = v2617;
          v2273 = v2618;
          v2274 = v2619;
          v2275 = v2620;
          v2276 = v2621;
          v2277 = v2622;
          v2278 = v2623;
          v2279 = v2624;
          v2280 = v2625;
          v2281 = v2626;
          v2282 = v2627;
          v2283 = v2628;
          v2284 = v2629;
          v2285 = v2630;
          v2286 = v2631;
          v2287 = v2632;
          v2288 = v2633;
          v2289 = v2635;
          v202 = v2615;
          v203 = v2614;
          v204 = v2613;
          v205 = v2612;
          v206 = v2611;
          v207 = v2610;
          v208 = v2609;
          v2783 = v2726;
          v2784 = v2618;
          sub_1B03949FC(&v2783, &v2787, &v2786, &v2785);
          v2234 = 0;
          v2235 = v2608;
          v2236 = v208;
          v2237 = v207;
          v2238 = v206;
          v2239 = v205;
          v2240 = v204;
          v2241 = v203;
          v2242 = v202;
          v2243 = v2616;
          v2244 = v2617;
          v2245 = v2618;
          v2246 = v2619;
          v2247 = v2620;
          v2248 = v2621;
          v2249 = v2622;
          v2250 = v2623;
          v2251 = v2624;
          v2252 = v2625;
          v2253 = v2626;
          v2254 = v2627;
          v2255 = v2628;
          v2256 = v2629;
          v2257 = v2630;
          v2258 = v2631;
          v2259 = v2632;
          v2260 = v2633;
          v2261 = v2635;
          v209 = v2615;
          v210 = v2614;
          v211 = v2613;
          v212 = v2612;
          v213 = v2611;
          v214 = v2610;
          v215 = v2609;
          v2783 = v2727;
          v2784 = v2619;
          sub_1B03949FC(&v2783, &v2787, &v2786, &v2785);
          v2206 = 0;
          v2207 = v2608;
          v2208 = v215;
          v2209 = v214;
          v2210 = v213;
          v2211 = v212;
          v2212 = v211;
          v2213 = v210;
          v2214 = v209;
          v2215 = v2616;
          v2216 = v2617;
          v2217 = v2618;
          v2218 = v2619;
          v2219 = v2620;
          v2220 = v2621;
          v2221 = v2622;
          v2222 = v2623;
          v2223 = v2624;
          v2224 = v2625;
          v2225 = v2626;
          v2226 = v2627;
          v2227 = v2628;
          v2228 = v2629;
          v2229 = v2630;
          v2230 = v2631;
          v2231 = v2632;
          v2232 = v2633;
          v2233 = v2635;
          v216 = v2615;
          v217 = v2614;
          v218 = v2613;
          v219 = v2612;
          v220 = v2611;
          v221 = v2610;
          v222 = v2609;
          v2783 = v2728;
          v2784 = v2620;
          sub_1B03949FC(&v2783, &v2787, &v2786, &v2785);
          v2178 = 0;
          v2179 = v2608;
          v2180 = v222;
          v2181 = v221;
          v2182 = v220;
          v2183 = v219;
          v2184 = v218;
          v2185 = v217;
          v2186 = v216;
          v2187 = v2616;
          v2188 = v2617;
          v2189 = v2618;
          v2190 = v2619;
          v2191 = v2620;
          v2192 = v2621;
          v2193 = v2622;
          v2194 = v2623;
          v2195 = v2624;
          v2196 = v2625;
          v2197 = v2626;
          v2198 = v2627;
          v2199 = v2628;
          v2200 = v2629;
          v2201 = v2630;
          v2202 = v2631;
          v2203 = v2632;
          v2204 = v2633;
          v2205 = v2635;
          v223 = v2615;
          v224 = v2614;
          v225 = v2613;
          v226 = v2612;
          v227 = v2611;
          v228 = v2610;
          v229 = v2609;
          v2783 = v2729;
          v2784 = v2621;
          sub_1B03949FC(&v2783, &v2787, &v2786, &v2785);
          v2150 = 0;
          v2151 = v2608;
          v2152 = v229;
          v2153 = v228;
          v2154 = v227;
          v2155 = v226;
          v2156 = v225;
          v2157 = v224;
          v2158 = v223;
          v2159 = v2616;
          v2160 = v2617;
          v2161 = v2618;
          v2162 = v2619;
          v2163 = v2620;
          v2164 = v2621;
          v2165 = v2622;
          v2166 = v2623;
          v2167 = v2624;
          v2168 = v2625;
          v2169 = v2626;
          v2170 = v2627;
          v2171 = v2628;
          v2172 = v2629;
          v2173 = v2630;
          v2174 = v2631;
          v2175 = v2632;
          v2176 = v2633;
          v2177 = v2635;
          v230 = v2615;
          v231 = v2614;
          v232 = v2613;
          v233 = v2612;
          v234 = v2611;
          v235 = v2610;
          v236 = v2609;
          v2783 = v2730;
          v2784 = v2622;
          sub_1B03949FC(&v2783, &v2787, &v2786, &v2785);
          v2122 = 0;
          v2123 = v2608;
          v2124 = v236;
          v2125 = v235;
          v2126 = v234;
          v2127 = v233;
          v2128 = v232;
          v2129 = v231;
          v2130 = v230;
          v2131 = v2616;
          v2132 = v2617;
          v2133 = v2618;
          v2134 = v2619;
          v2135 = v2620;
          v2136 = v2621;
          v2137 = v2622;
          v2138 = v2623;
          v2139 = v2624;
          v2140 = v2625;
          v2141 = v2626;
          v2142 = v2627;
          v2143 = v2628;
          v2144 = v2629;
          v2145 = v2630;
          v2146 = v2631;
          v2147 = v2632;
          v2148 = v2633;
          v2149 = v2635;
          v237 = v2615;
          v238 = v2614;
          v239 = v2613;
          v240 = v2612;
          v241 = v2611;
          v242 = v2610;
          v243 = v2609;
          v2783 = v2731;
          v2784 = v2623;
          sub_1B03949FC(&v2783, &v2787, &v2786, &v2785);
          v2094 = 0;
          v2095 = v2608;
          v2096 = v243;
          v2097 = v242;
          v2098 = v241;
          v2099 = v240;
          v2100 = v239;
          v2101 = v238;
          v2102 = v237;
          v2103 = v2616;
          v2104 = v2617;
          v2105 = v2618;
          v2106 = v2619;
          v2107 = v2620;
          v2108 = v2621;
          v2109 = v2622;
          v2110 = v2623;
          v2111 = v2624;
          v2112 = v2625;
          v2113 = v2626;
          v2114 = v2627;
          v2115 = v2628;
          v2116 = v2629;
          v2117 = v2630;
          v2118 = v2631;
          v2119 = v2632;
          v2120 = v2633;
          v2121 = v2635;
          v244 = v2615;
          v245 = v2614;
          v246 = v2613;
          v247 = v2612;
          v248 = v2611;
          v249 = v2610;
          v250 = v2609;
          v2783 = v2732;
          v2784 = v2624;
          sub_1B03949FC(&v2783, &v2787, &v2786, &v2785);
          v2066 = 0;
          v2067 = v2608;
          v2068 = v250;
          v2069 = v249;
          v2070 = v248;
          v2071 = v247;
          v2072 = v246;
          v2073 = v245;
          v2074 = v244;
          v2075 = v2616;
          v2076 = v2617;
          v2077 = v2618;
          v2078 = v2619;
          v2079 = v2620;
          v2080 = v2621;
          v2081 = v2622;
          v2082 = v2623;
          v2083 = v2624;
          v2084 = v2625;
          v2085 = v2626;
          v2086 = v2627;
          v2087 = v2628;
          v2088 = v2629;
          v2089 = v2630;
          v2090 = v2631;
          v2091 = v2632;
          v2092 = v2633;
          v2093 = v2635;
          v251 = v2615;
          v252 = v2614;
          v253 = v2613;
          v254 = v2612;
          v255 = v2611;
          v256 = v2610;
          v257 = v2609;
          v2783 = v2733;
          v2784 = v2625;
          sub_1B03949FC(&v2783, &v2787, &v2786, &v2785);
          v2038 = 0;
          v2039 = v2608;
          v2040 = v257;
          v2041 = v256;
          v2042 = v255;
          v2043 = v254;
          v2044 = v253;
          v2045 = v252;
          v2046 = v251;
          v2047 = v2616;
          v2048 = v2617;
          v2049 = v2618;
          v2050 = v2619;
          v2051 = v2620;
          v2052 = v2621;
          v2053 = v2622;
          v2054 = v2623;
          v2055 = v2624;
          v2056 = v2625;
          v2057 = v2626;
          v2058 = v2627;
          v2059 = v2628;
          v2060 = v2629;
          v2061 = v2630;
          v2062 = v2631;
          v2063 = v2632;
          v2064 = v2633;
          v2065 = v2635;
          v258 = v2615;
          v259 = v2614;
          v260 = v2613;
          v261 = v2612;
          v262 = v2611;
          v263 = v2610;
          v264 = v2609;
          v2783 = v2734;
          v2784 = v2626;
          sub_1B03949FC(&v2783, &v2787, &v2786, &v2785);
          v2010 = 0;
          v2011 = v2608;
          v2012 = v264;
          v2013 = v263;
          v2014 = v262;
          v2015 = v261;
          v2016 = v260;
          v2017 = v259;
          v2018 = v258;
          v2019 = v2616;
          v2020 = v2617;
          v2021 = v2618;
          v2022 = v2619;
          v2023 = v2620;
          v2024 = v2621;
          v2025 = v2622;
          v2026 = v2623;
          v2027 = v2624;
          v2028 = v2625;
          v2029 = v2626;
          v2030 = v2627;
          v2031 = v2628;
          v2032 = v2629;
          v2033 = v2630;
          v2034 = v2631;
          v2035 = v2632;
          v2036 = v2633;
          v2037 = v2635;
          v265 = v2615;
          v266 = v2614;
          v267 = v2613;
          v268 = v2612;
          v269 = v2611;
          v270 = v2610;
          v271 = v2609;
          v2783 = v2735;
          v2784 = v2627;
          sub_1B03949FC(&v2783, &v2787, &v2786, &v2785);
          v1982 = 0;
          v1983 = v2608;
          v1984 = v271;
          v1985 = v270;
          v1986 = v269;
          v1987 = v268;
          v1988 = v267;
          v1989 = v266;
          v1990 = v265;
          v1991 = v2616;
          v1992 = v2617;
          v1993 = v2618;
          v1994 = v2619;
          v1995 = v2620;
          v1996 = v2621;
          v1997 = v2622;
          v1998 = v2623;
          v1999 = v2624;
          v2000 = v2625;
          v2001 = v2626;
          v2002 = v2627;
          v2003 = v2628;
          v2004 = v2629;
          v2005 = v2630;
          v2006 = v2631;
          v2007 = v2632;
          v2008 = v2633;
          v2009 = v2635;
          v272 = v2615;
          v273 = v2614;
          v274 = v2613;
          v275 = v2612;
          v276 = v2611;
          v277 = v2610;
          v278 = v2609;
          v2783 = v2736;
          v2784 = v2628;
          sub_1B03949FC(&v2783, &v2787, &v2786, &v2785);
          v1954 = 0;
          v1955 = v2608;
          v1956 = v278;
          v1957 = v277;
          v1958 = v276;
          v1959 = v275;
          v1960 = v274;
          v1961 = v273;
          v1962 = v272;
          v1963 = v2616;
          v1964 = v2617;
          v1965 = v2618;
          v1966 = v2619;
          v1967 = v2620;
          v1968 = v2621;
          v1969 = v2622;
          v1970 = v2623;
          v1971 = v2624;
          v1972 = v2625;
          v1973 = v2626;
          v1974 = v2627;
          v1975 = v2628;
          v1976 = v2629;
          v1977 = v2630;
          v1978 = v2631;
          v1979 = v2632;
          v1980 = v2633;
          v1981 = v2635;
          v279 = v2615;
          v280 = v2614;
          v281 = v2613;
          v282 = v2612;
          v283 = v2611;
          v284 = v2610;
          v285 = v2609;
          v2783 = v2737;
          v2784 = v2629;
          sub_1B03949FC(&v2783, &v2787, &v2786, &v2785);
          v1926 = 0;
          v1927 = v2608;
          v1928 = v285;
          v1929 = v284;
          v1930 = v283;
          v1931 = v282;
          v1932 = v281;
          v1933 = v280;
          v1934 = v279;
          v1935 = v2616;
          v1936 = v2617;
          v1937 = v2618;
          v1938 = v2619;
          v1939 = v2620;
          v1940 = v2621;
          v1941 = v2622;
          v1942 = v2623;
          v1943 = v2624;
          v1944 = v2625;
          v1945 = v2626;
          v1946 = v2627;
          v1947 = v2628;
          v1948 = v2629;
          v1949 = v2630;
          v1950 = v2631;
          v1951 = v2632;
          v1952 = v2633;
          v1953 = v2635;
          v286 = v2615;
          v287 = v2614;
          v288 = v2613;
          v289 = v2612;
          v290 = v2611;
          v291 = v2610;
          v292 = v2609;
          v2783 = v2738;
          v2784 = v2630;
          sub_1B03949FC(&v2783, &v2787, &v2786, &v2785);
          v1898 = 0;
          v1899 = v2608;
          v1900 = v292;
          v1901 = v291;
          v1902 = v290;
          v1903 = v289;
          v1904 = v288;
          v1905 = v287;
          v1906 = v286;
          v1907 = v2616;
          v1908 = v2617;
          v1909 = v2618;
          v1910 = v2619;
          v1911 = v2620;
          v1912 = v2621;
          v1913 = v2622;
          v1914 = v2623;
          v1915 = v2624;
          v1916 = v2625;
          v1917 = v2626;
          v1918 = v2627;
          v1919 = v2628;
          v1920 = v2629;
          v1921 = v2630;
          v1922 = v2631;
          v1923 = v2632;
          v1924 = v2633;
          v1925 = v2635;
          v293 = v2615;
          v294 = v2614;
          v295 = v2613;
          v296 = v2612;
          v297 = v2611;
          v298 = v2610;
          v299 = v2609;
          v2783 = v2739;
          v2784 = v2631;
          sub_1B03949FC(&v2783, &v2787, &v2786, &v2785);
          v1870 = 0;
          v1871 = v2608;
          v1872 = v299;
          v1873 = v298;
          v1874 = v297;
          v1875 = v296;
          v1876 = v295;
          v1877 = v294;
          v1878 = v293;
          v1879 = v2616;
          v1880 = v2617;
          v1881 = v2618;
          v1882 = v2619;
          v1883 = v2620;
          v1884 = v2621;
          v1885 = v2622;
          v1886 = v2623;
          v1887 = v2624;
          v1888 = v2625;
          v1889 = v2626;
          v1890 = v2627;
          v1891 = v2628;
          v1892 = v2629;
          v1893 = v2630;
          v1894 = v2631;
          v1895 = v2632;
          v1896 = v2633;
          v1897 = v2635;
          v300 = v2615;
          v301 = v2614;
          v302 = v2613;
          v303 = v2612;
          v304 = v2611;
          v305 = v2610;
          v306 = v2609;
          v2783 = v2740;
          v2784 = v2632;
          sub_1B03949FC(&v2783, &v2787, &v2786, &v2785);
          v1842 = 0;
          v1843 = v2608;
          v1844 = v306;
          v1845 = v305;
          v1846 = v304;
          v1847 = v303;
          v1848 = v302;
          v1849 = v301;
          v1850 = v300;
          v1851 = v2616;
          v1852 = v2617;
          v1853 = v2618;
          v1854 = v2619;
          v1855 = v2620;
          v1856 = v2621;
          v1857 = v2622;
          v1858 = v2623;
          v1859 = v2624;
          v1860 = v2625;
          v1861 = v2626;
          v1862 = v2627;
          v1863 = v2628;
          v1864 = v2629;
          v1865 = v2630;
          v1866 = v2631;
          v1867 = v2632;
          v1868 = v2633;
          v1869 = v2635;
          v307 = v2615;
          v308 = v2614;
          v309 = v2613;
          v310 = v2612;
          v311 = v2611;
          v312 = v2610;
          v313 = v2609;
          v2783 = v2741;
          v2784 = v2633;
          sub_1B03949FC(&v2783, &v2787, &v2786, &v2785);
          v1814 = 0;
          v1815 = v2608;
          v1816 = v313;
          v1817 = v312;
          v1818 = v311;
          v1819 = v310;
          v1820 = v309;
          v1821 = v308;
          v1822 = v307;
          v1823 = v2616;
          v1824 = v2617;
          v1825 = v2618;
          v1826 = v2619;
          v1827 = v2620;
          v1828 = v2621;
          v1829 = v2622;
          v1830 = v2623;
          v1831 = v2624;
          v1832 = v2625;
          v1833 = v2626;
          v1834 = v2627;
          v1835 = v2628;
          v1836 = v2629;
          v1837 = v2630;
          v1838 = v2631;
          v1839 = v2632;
          v1840 = v2633;
          v1841 = v2635;
          v314 = v2615;
          v315 = v2614;
          v316 = v2613;
          v317 = v2612;
          v318 = v2611;
          v319 = v2610;
          v320 = v2609;
          v2783 = v2742;
          v2784 = v2635;
          sub_1B03949FC(&v2783, &v2787, &v2786, &v2785);
          v1786 = 0;
          v1787 = v2608;
          v1788 = v320;
          v1789 = v319;
          v1790 = v318;
          v1791 = v317;
          v1792 = v316;
          v1793 = v315;
          v1794 = v314;
          v1795 = v2616;
          v1796 = v2617;
          v1797 = v2618;
          v1798 = v2619;
          v1799 = v2620;
          v1800 = v2621;
          v1801 = v2622;
          v1802 = v2623;
          v1803 = v2624;
          v1804 = v2625;
          v1805 = v2626;
          v1806 = v2627;
          v1807 = v2628;
          v1808 = v2629;
          v1809 = v2630;
          v1810 = v2631;
          v1811 = v2632;
          v1812 = v2633;
          v1813 = v2635;
          _os_log_impl(&dword_1B0389000, v2638, v2639, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Found %ld messages with flag changes (%ld unfiltered) (limit %ld).", v2544, 0x49u);
          sub_1B03998A8(v2545, 0, v2543);
          sub_1B03998A8(v2546, 1, MEMORY[0x1E69E7CA0] + 8);
          sub_1B0E45D58();

          v2541 = v1786;
        }
      }

      else
      {

        v2541 = v2645;
      }

      v1758 = v2541;
      MEMORY[0x1E69E5920](v2638);
      (*(v2751 + 8))(v2756, v2750);
      v1759 = v1758;
      goto LABEL_22;
    }

    v321 = v2648;
    v1750 = &v2819;
    v1748 = v2827;
    *(v2648 + 7) = v2820;
    *(v321 + 8) = v2821;
    sub_1B074E30C(v2827, v2804);
    v1749 = v2827[0];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B071F9F0();
    v1752 = sub_1B0E45C48();
    v1753 = sub_1B074E39C();
    v1756 = sub_1B0E454A8();

    v322 = v1750;
    v323 = v2648;
    v324 = *(v1750 + 1);
    v1751 = v2826;
    *(v2648 + 5) = v324;
    *(v323 + 6) = *(v322 + 3);
    sub_1B074E30C(v2826, v2803);
    v1754 = v2826[1];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B071F9F0();
    v1755 = sub_1B0E44628();

    result = v1756;
    v1757 = v1756 + v1755;
    if (__OFADD__(v1756, v1755))
    {
      break;
    }

    v2802 = v1757;
    (*(v2751 + 16))(v2754, v2769, v2750);
    sub_1B074B69C(v2769, v2749);
    sub_1B074B69C(v2749, v2747);
    sub_1B074E41C(v2749, v2745);
    v327 = (v2747 + *(v2743 + 20));
    v1683 = *v327;
    v1684 = *(v327 + 1);
    v1685 = *(v327 + 1);
    v1686 = *(v327 + 4);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B074B764(v2747);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v1682 = 36;
    v1710 = 7;
    v328 = swift_allocObject();
    v329 = v1684;
    v330 = v1685;
    v331 = v1686;
    v1690 = v328;
    *(v328 + 16) = v1683;
    *(v328 + 20) = v329;
    *(v328 + 24) = v330;
    *(v328 + 32) = v331;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v332 = swift_allocObject();
    v333 = v1684;
    v334 = v1685;
    v335 = v1686;
    v1681 = v332;
    *(v332 + 16) = v1683;
    *(v332 + 20) = v333;
    *(v332 + 24) = v334;
    *(v332 + 32) = v335;

    v1709 = 32;
    v336 = swift_allocObject();
    v337 = v1681;
    v1695 = v336;
    *(v336 + 16) = v2649;
    *(v336 + 24) = v337;
    sub_1B0394868();
    sub_1B0394868();

    v338 = swift_allocObject();
    v339 = v1684;
    v340 = v1685;
    v341 = v1686;
    v342 = v338;
    v343 = v2745;
    v1699 = v342;
    *(v342 + 16) = v1683;
    *(v342 + 20) = v339;
    *(v342 + 24) = v340;
    *(v342 + 32) = v341;
    sub_1B074B764(v343);
    v1687 = &v2819;
    sub_1B074E4B4(&v2819, v2801);
    v1701 = swift_allocObject();
    memcpy((v1701 + 16), v1687, 0x28uLL);
    sub_1B074E568(v2763, v2761);
    v1688 = (*(v2758 + 80) + 16) & ~*(v2758 + 80);
    v1703 = swift_allocObject();
    sub_1B074E678(v2761, (v1703 + v1688));
    v1697 = 24;
    v1705 = swift_allocObject();
    *(v1705 + 16) = v2764;
    v1711 = swift_allocObject();
    *(v1711 + 16) = v1757;
    v1746 = sub_1B0E43988();
    v1747 = sub_1B0E458C8();
    v1707 = 17;
    v1713 = swift_allocObject();
    v1692 = 16;
    *(v1713 + 16) = 16;
    v1714 = swift_allocObject();
    v1694 = 4;
    *(v1714 + 16) = 4;
    v344 = swift_allocObject();
    v1689 = v344;
    *(v344 + 16) = v2650;
    *(v344 + 24) = 0;
    v345 = swift_allocObject();
    v346 = v1689;
    v1715 = v345;
    *(v345 + 16) = v2651;
    *(v345 + 24) = v346;
    v1716 = swift_allocObject();
    *(v1716 + 16) = 0;
    v1717 = swift_allocObject();
    *(v1717 + 16) = 1;
    v347 = swift_allocObject();
    v348 = v1690;
    v1691 = v347;
    *(v347 + 16) = v2652;
    *(v347 + 24) = v348;
    v349 = swift_allocObject();
    v350 = v1691;
    v1718 = v349;
    *(v349 + 16) = v2653;
    *(v349 + 24) = v350;
    v1719 = swift_allocObject();
    *(v1719 + 16) = v1692;
    v1720 = swift_allocObject();
    *(v1720 + 16) = v1694;
    v351 = swift_allocObject();
    v1693 = v351;
    *(v351 + 16) = v2654;
    *(v351 + 24) = 0;
    v352 = swift_allocObject();
    v353 = v1693;
    v1721 = v352;
    *(v352 + 16) = v2655;
    *(v352 + 24) = v353;
    v1722 = swift_allocObject();
    *(v1722 + 16) = 0;
    v1723 = swift_allocObject();
    *(v1723 + 16) = v1694;
    v354 = swift_allocObject();
    v355 = v1695;
    v1696 = v354;
    *(v354 + 16) = v2656;
    *(v354 + 24) = v355;
    v356 = swift_allocObject();
    v357 = v1696;
    v1724 = v356;
    *(v356 + 16) = v2657;
    *(v356 + 24) = v357;
    v1725 = swift_allocObject();
    *(v1725 + 16) = 112;
    v1726 = swift_allocObject();
    v1708 = 8;
    *(v1726 + 16) = 8;
    v1698 = swift_allocObject();
    *(v1698 + 16) = v2658;
    v358 = swift_allocObject();
    v359 = v1698;
    v1727 = v358;
    *(v358 + 16) = v2659;
    *(v358 + 24) = v359;
    v1728 = swift_allocObject();
    *(v1728 + 16) = 37;
    v1729 = swift_allocObject();
    *(v1729 + 16) = v1708;
    v360 = swift_allocObject();
    v361 = v1699;
    v1700 = v360;
    *(v360 + 16) = v2660;
    *(v360 + 24) = v361;
    v362 = swift_allocObject();
    v363 = v1700;
    v1730 = v362;
    *(v362 + 16) = v2661;
    *(v362 + 24) = v363;
    v1731 = swift_allocObject();
    *(v1731 + 16) = 0;
    v1732 = swift_allocObject();
    *(v1732 + 16) = v1708;
    v364 = swift_allocObject();
    v365 = v1701;
    v1702 = v364;
    *(v364 + 16) = v2662;
    *(v364 + 24) = v365;
    v366 = swift_allocObject();
    v367 = v1702;
    v1733 = v366;
    *(v366 + 16) = v2663;
    *(v366 + 24) = v367;
    v1734 = swift_allocObject();
    *(v1734 + 16) = 0;
    v1735 = swift_allocObject();
    *(v1735 + 16) = v1708;
    v368 = swift_allocObject();
    v369 = v1703;
    v1704 = v368;
    *(v368 + 16) = v2664;
    *(v368 + 24) = v369;
    v370 = swift_allocObject();
    v371 = v1704;
    v1736 = v370;
    *(v370 + 16) = v2665;
    *(v370 + 24) = v371;
    v1737 = swift_allocObject();
    *(v1737 + 16) = 0;
    v1738 = swift_allocObject();
    *(v1738 + 16) = v1708;
    v372 = swift_allocObject();
    v373 = v1705;
    v1706 = v372;
    *(v372 + 16) = v2666;
    *(v372 + 24) = v373;
    v374 = swift_allocObject();
    v375 = v1706;
    v1739 = v374;
    *(v374 + 16) = v2667;
    *(v374 + 24) = v375;
    v1740 = swift_allocObject();
    *(v1740 + 16) = 0;
    v1741 = swift_allocObject();
    *(v1741 + 16) = v1708;
    v376 = swift_allocObject();
    v377 = v1711;
    v1712 = v376;
    *(v376 + 16) = v2668;
    *(v376 + 24) = v377;
    v378 = swift_allocObject();
    v379 = v1712;
    v1743 = v378;
    *(v378 + 16) = v2669;
    *(v378 + 24) = v379;
    v1745 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v1742 = sub_1B0E46A48();
    v1744 = v380;

    v381 = v1713;
    v382 = v1744;
    *v1744 = v2670;
    v382[1] = v381;

    v383 = v1714;
    v384 = v1744;
    v1744[2] = v2671;
    v384[3] = v383;

    v385 = v1715;
    v386 = v1744;
    v1744[4] = v2672;
    v386[5] = v385;

    v387 = v1716;
    v388 = v1744;
    v1744[6] = v2673;
    v388[7] = v387;

    v389 = v1717;
    v390 = v1744;
    v1744[8] = v2674;
    v390[9] = v389;

    v391 = v1718;
    v392 = v1744;
    v1744[10] = v2675;
    v392[11] = v391;

    v393 = v1719;
    v394 = v1744;
    v1744[12] = v2676;
    v394[13] = v393;

    v395 = v1720;
    v396 = v1744;
    v1744[14] = v2677;
    v396[15] = v395;

    v397 = v1721;
    v398 = v1744;
    v1744[16] = v2678;
    v398[17] = v397;

    v399 = v1722;
    v400 = v1744;
    v1744[18] = v2679;
    v400[19] = v399;

    v401 = v1723;
    v402 = v1744;
    v1744[20] = v2680;
    v402[21] = v401;

    v403 = v1724;
    v404 = v1744;
    v1744[22] = v2681;
    v404[23] = v403;

    v405 = v1725;
    v406 = v1744;
    v1744[24] = v2682;
    v406[25] = v405;

    v407 = v1726;
    v408 = v1744;
    v1744[26] = v2683;
    v408[27] = v407;

    v409 = v1727;
    v410 = v1744;
    v1744[28] = v2684;
    v410[29] = v409;

    v411 = v1728;
    v412 = v1744;
    v1744[30] = v2685;
    v412[31] = v411;

    v413 = v1729;
    v414 = v1744;
    v1744[32] = v2686;
    v414[33] = v413;

    v415 = v1730;
    v416 = v1744;
    v1744[34] = v2687;
    v416[35] = v415;

    v417 = v1731;
    v418 = v1744;
    v1744[36] = v2688;
    v418[37] = v417;

    v419 = v1732;
    v420 = v1744;
    v1744[38] = v2689;
    v420[39] = v419;

    v421 = v1733;
    v422 = v1744;
    v1744[40] = v2690;
    v422[41] = v421;

    v423 = v1734;
    v424 = v1744;
    v1744[42] = v2691;
    v424[43] = v423;

    v425 = v1735;
    v426 = v1744;
    v1744[44] = v2692;
    v426[45] = v425;

    v427 = v1736;
    v428 = v1744;
    v1744[46] = v2693;
    v428[47] = v427;

    v429 = v1737;
    v430 = v1744;
    v1744[48] = v2694;
    v430[49] = v429;

    v431 = v1738;
    v432 = v1744;
    v1744[50] = v2695;
    v432[51] = v431;

    v433 = v1739;
    v434 = v1744;
    v1744[52] = v2696;
    v434[53] = v433;

    v435 = v1740;
    v436 = v1744;
    v1744[54] = v2697;
    v436[55] = v435;

    v437 = v1741;
    v438 = v1744;
    v1744[56] = v2698;
    v438[57] = v437;

    v439 = v1743;
    v440 = v1744;
    v1744[58] = v2699;
    v440[59] = v439;
    sub_1B0394964();

    if (os_log_type_enabled(v1746, v1747))
    {
      v441 = v1723;
      v442 = v1722;
      v443 = v1721;
      v444 = v1720;
      v445 = v1719;
      v446 = v1718;
      v447 = v1717;
      v1644 = sub_1B0E45D78();
      v1643 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v1645 = sub_1B03949A8(0, v1643, v1643);
      v1646 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v1647 = &v2793;
      v2793 = v1644;
      v1648 = &v2792;
      v2792 = v1645;
      v1649 = &v2791;
      v2791 = v1646;
      sub_1B0394A48(3, &v2793);
      sub_1B0394A48(10, v1647);
      v448 = v2645;
      v2789 = v2670;
      v2790 = v1713;
      sub_1B03949FC(&v2789, v1647, v1648, v1649);
      v1650 = v448;
      v1651 = v1713;
      v1652 = v1714;
      v1653 = v1715;
      v1654 = v1716;
      v1655 = v447;
      v1656 = v446;
      v1657 = v445;
      v1658 = v444;
      v1659 = v443;
      v1660 = v442;
      v1661 = v441;
      v1662 = v1724;
      v1663 = v1725;
      v1664 = v1726;
      v1665 = v1727;
      v1666 = v1728;
      v1667 = v1729;
      v1668 = v1730;
      v1669 = v1731;
      v1670 = v1732;
      v1671 = v1733;
      v1672 = v1734;
      v1673 = v1735;
      v1674 = v1736;
      v1675 = v1737;
      v1676 = v1738;
      v1677 = v1739;
      v1678 = v1740;
      v1679 = v1741;
      v1680 = v1743;
      if (v448)
      {
        v1613 = v1680;
        v1611 = v1652;
        v1610 = v1651;
        v1612 = v1652;
        v1614 = v1653;
        v1615 = v1654;
        v1616 = v1655;
        v1617 = v1656;
        v1618 = v1657;
        v1619 = v1658;
        v1620 = v1659;
        v1621 = v1660;
        v1622 = v1661;
        v1623 = v1662;
        v1624 = v1663;
        v1625 = v1664;
        v1626 = v1665;
        v1627 = v1666;
        v1628 = v1667;
        v1629 = v1668;
        v1630 = v1669;
        v1631 = v1670;
        v1632 = v1671;
        v1633 = v1672;
        v1634 = v1673;
        v1635 = v1674;
        v1636 = v1675;
        v1637 = v1676;
        v1638 = v1677;
        v1639 = v1678;
        v1640 = v1679;
        v1641 = v1680;
        v710 = v1680;
        v709 = v1679;
        v708 = v1678;
        v707 = v1677;
        v706 = v1676;
        v705 = v1675;
        v704 = v1674;
        v703 = v1673;
        v702 = v1672;
        v701 = v1671;
        v700 = v1670;
        v699 = v1669;
        v698 = v1668;
        v697 = v1667;
        v696 = v1666;
        v695 = v1665;
        v694 = v1664;
        v693 = v1663;
        v692 = v1662;
        v691 = v1661;
        v690 = v1660;
        v689 = v1659;
        v688 = v1658;
        v687 = v1657;
        v686 = v1656;
        v685 = v1655;
        v684 = v1654;
        v683 = v1653;
        v682 = v1652;

        __break(1u);
      }

      else
      {
        v449 = v1723;
        v450 = v1722;
        v451 = v1721;
        v452 = v1720;
        v453 = v1719;
        v454 = v1718;
        v455 = v1717;
        v2789 = v2671;
        v2790 = v1714;
        sub_1B03949FC(&v2789, &v2793, &v2792, &v2791);
        v1579 = 0;
        v1580 = v1713;
        v1581 = v1714;
        v1582 = v1715;
        v1583 = v1716;
        v1584 = v455;
        v1585 = v454;
        v1586 = v453;
        v1587 = v452;
        v1588 = v451;
        v1589 = v450;
        v1590 = v449;
        v1591 = v1724;
        v1592 = v1725;
        v1593 = v1726;
        v1594 = v1727;
        v1595 = v1728;
        v1596 = v1729;
        v1597 = v1730;
        v1598 = v1731;
        v1599 = v1732;
        v1600 = v1733;
        v1601 = v1734;
        v1602 = v1735;
        v1603 = v1736;
        v1604 = v1737;
        v1605 = v1738;
        v1606 = v1739;
        v1607 = v1740;
        v1608 = v1741;
        v1609 = v1743;
        v456 = v1723;
        v457 = v1722;
        v458 = v1721;
        v459 = v1720;
        v460 = v1719;
        v461 = v1718;
        v462 = v1717;
        v2789 = v2672;
        v2790 = v1715;
        sub_1B03949FC(&v2789, &v2793, &v2792, &v2791);
        v1548 = 0;
        v1549 = v1713;
        v1550 = v1714;
        v1551 = v1715;
        v1552 = v1716;
        v1553 = v462;
        v1554 = v461;
        v1555 = v460;
        v1556 = v459;
        v1557 = v458;
        v1558 = v457;
        v1559 = v456;
        v1560 = v1724;
        v1561 = v1725;
        v1562 = v1726;
        v1563 = v1727;
        v1564 = v1728;
        v1565 = v1729;
        v1566 = v1730;
        v1567 = v1731;
        v1568 = v1732;
        v1569 = v1733;
        v1570 = v1734;
        v1571 = v1735;
        v1572 = v1736;
        v1573 = v1737;
        v1574 = v1738;
        v1575 = v1739;
        v1576 = v1740;
        v1577 = v1741;
        v1578 = v1743;
        v463 = v1723;
        v464 = v1722;
        v465 = v1721;
        v466 = v1720;
        v467 = v1719;
        v468 = v1718;
        v469 = v1717;
        v2789 = v2673;
        v2790 = v1716;
        sub_1B03949FC(&v2789, &v2793, &v2792, &v2791);
        v1517 = 0;
        v1518 = v1713;
        v1519 = v1714;
        v1520 = v1715;
        v1521 = v1716;
        v1522 = v469;
        v1523 = v468;
        v1524 = v467;
        v1525 = v466;
        v1526 = v465;
        v1527 = v464;
        v1528 = v463;
        v1529 = v1724;
        v1530 = v1725;
        v1531 = v1726;
        v1532 = v1727;
        v1533 = v1728;
        v1534 = v1729;
        v1535 = v1730;
        v1536 = v1731;
        v1537 = v1732;
        v1538 = v1733;
        v1539 = v1734;
        v1540 = v1735;
        v1541 = v1736;
        v1542 = v1737;
        v1543 = v1738;
        v1544 = v1739;
        v1545 = v1740;
        v1546 = v1741;
        v1547 = v1743;
        v470 = v1723;
        v471 = v1722;
        v472 = v1721;
        v473 = v1720;
        v474 = v1719;
        v475 = v1718;
        v476 = v1717;
        v2789 = v2674;
        v2790 = v1717;
        sub_1B03949FC(&v2789, &v2793, &v2792, &v2791);
        v1486 = 0;
        v1487 = v1713;
        v1488 = v1714;
        v1489 = v1715;
        v1490 = v1716;
        v1491 = v476;
        v1492 = v475;
        v1493 = v474;
        v1494 = v473;
        v1495 = v472;
        v1496 = v471;
        v1497 = v470;
        v1498 = v1724;
        v1499 = v1725;
        v1500 = v1726;
        v1501 = v1727;
        v1502 = v1728;
        v1503 = v1729;
        v1504 = v1730;
        v1505 = v1731;
        v1506 = v1732;
        v1507 = v1733;
        v1508 = v1734;
        v1509 = v1735;
        v1510 = v1736;
        v1511 = v1737;
        v1512 = v1738;
        v1513 = v1739;
        v1514 = v1740;
        v1515 = v1741;
        v1516 = v1743;
        v477 = v1723;
        v478 = v1722;
        v479 = v1721;
        v480 = v1720;
        v481 = v1719;
        v482 = v1718;
        v483 = v1717;
        v2789 = v2675;
        v2790 = v1718;
        sub_1B03949FC(&v2789, &v2793, &v2792, &v2791);
        v1455 = 0;
        v1456 = v1713;
        v1457 = v1714;
        v1458 = v1715;
        v1459 = v1716;
        v1460 = v483;
        v1461 = v482;
        v1462 = v481;
        v1463 = v480;
        v1464 = v479;
        v1465 = v478;
        v1466 = v477;
        v1467 = v1724;
        v1468 = v1725;
        v1469 = v1726;
        v1470 = v1727;
        v1471 = v1728;
        v1472 = v1729;
        v1473 = v1730;
        v1474 = v1731;
        v1475 = v1732;
        v1476 = v1733;
        v1477 = v1734;
        v1478 = v1735;
        v1479 = v1736;
        v1480 = v1737;
        v1481 = v1738;
        v1482 = v1739;
        v1483 = v1740;
        v1484 = v1741;
        v1485 = v1743;
        v484 = v1723;
        v485 = v1722;
        v486 = v1721;
        v487 = v1720;
        v488 = v1719;
        v489 = v1718;
        v490 = v1717;
        v2789 = v2676;
        v2790 = v1719;
        sub_1B03949FC(&v2789, &v2793, &v2792, &v2791);
        v1424 = 0;
        v1425 = v1713;
        v1426 = v1714;
        v1427 = v1715;
        v1428 = v1716;
        v1429 = v490;
        v1430 = v489;
        v1431 = v488;
        v1432 = v487;
        v1433 = v486;
        v1434 = v485;
        v1435 = v484;
        v1436 = v1724;
        v1437 = v1725;
        v1438 = v1726;
        v1439 = v1727;
        v1440 = v1728;
        v1441 = v1729;
        v1442 = v1730;
        v1443 = v1731;
        v1444 = v1732;
        v1445 = v1733;
        v1446 = v1734;
        v1447 = v1735;
        v1448 = v1736;
        v1449 = v1737;
        v1450 = v1738;
        v1451 = v1739;
        v1452 = v1740;
        v1453 = v1741;
        v1454 = v1743;
        v491 = v1723;
        v492 = v1722;
        v493 = v1721;
        v494 = v1720;
        v495 = v1719;
        v496 = v1718;
        v497 = v1717;
        v2789 = v2677;
        v2790 = v1720;
        sub_1B03949FC(&v2789, &v2793, &v2792, &v2791);
        v1393 = 0;
        v1394 = v1713;
        v1395 = v1714;
        v1396 = v1715;
        v1397 = v1716;
        v1398 = v497;
        v1399 = v496;
        v1400 = v495;
        v1401 = v494;
        v1402 = v493;
        v1403 = v492;
        v1404 = v491;
        v1405 = v1724;
        v1406 = v1725;
        v1407 = v1726;
        v1408 = v1727;
        v1409 = v1728;
        v1410 = v1729;
        v1411 = v1730;
        v1412 = v1731;
        v1413 = v1732;
        v1414 = v1733;
        v1415 = v1734;
        v1416 = v1735;
        v1417 = v1736;
        v1418 = v1737;
        v1419 = v1738;
        v1420 = v1739;
        v1421 = v1740;
        v1422 = v1741;
        v1423 = v1743;
        v498 = v1723;
        v499 = v1722;
        v500 = v1721;
        v501 = v1720;
        v502 = v1719;
        v503 = v1718;
        v504 = v1717;
        v2789 = v2678;
        v2790 = v1721;
        sub_1B03949FC(&v2789, &v2793, &v2792, &v2791);
        v1362 = 0;
        v1363 = v1713;
        v1364 = v1714;
        v1365 = v1715;
        v1366 = v1716;
        v1367 = v504;
        v1368 = v503;
        v1369 = v502;
        v1370 = v501;
        v1371 = v500;
        v1372 = v499;
        v1373 = v498;
        v1374 = v1724;
        v1375 = v1725;
        v1376 = v1726;
        v1377 = v1727;
        v1378 = v1728;
        v1379 = v1729;
        v1380 = v1730;
        v1381 = v1731;
        v1382 = v1732;
        v1383 = v1733;
        v1384 = v1734;
        v1385 = v1735;
        v1386 = v1736;
        v1387 = v1737;
        v1388 = v1738;
        v1389 = v1739;
        v1390 = v1740;
        v1391 = v1741;
        v1392 = v1743;
        v505 = v1723;
        v506 = v1722;
        v507 = v1721;
        v508 = v1720;
        v509 = v1719;
        v510 = v1718;
        v511 = v1717;
        v2789 = v2679;
        v2790 = v1722;
        sub_1B03949FC(&v2789, &v2793, &v2792, &v2791);
        v1331 = 0;
        v1332 = v1713;
        v1333 = v1714;
        v1334 = v1715;
        v1335 = v1716;
        v1336 = v511;
        v1337 = v510;
        v1338 = v509;
        v1339 = v508;
        v1340 = v507;
        v1341 = v506;
        v1342 = v505;
        v1343 = v1724;
        v1344 = v1725;
        v1345 = v1726;
        v1346 = v1727;
        v1347 = v1728;
        v1348 = v1729;
        v1349 = v1730;
        v1350 = v1731;
        v1351 = v1732;
        v1352 = v1733;
        v1353 = v1734;
        v1354 = v1735;
        v1355 = v1736;
        v1356 = v1737;
        v1357 = v1738;
        v1358 = v1739;
        v1359 = v1740;
        v1360 = v1741;
        v1361 = v1743;
        v512 = v1723;
        v513 = v1722;
        v514 = v1721;
        v515 = v1720;
        v516 = v1719;
        v517 = v1718;
        v518 = v1717;
        v2789 = v2680;
        v2790 = v1723;
        sub_1B03949FC(&v2789, &v2793, &v2792, &v2791);
        v1300 = 0;
        v1301 = v1713;
        v1302 = v1714;
        v1303 = v1715;
        v1304 = v1716;
        v1305 = v518;
        v1306 = v517;
        v1307 = v516;
        v1308 = v515;
        v1309 = v514;
        v1310 = v513;
        v1311 = v512;
        v1312 = v1724;
        v1313 = v1725;
        v1314 = v1726;
        v1315 = v1727;
        v1316 = v1728;
        v1317 = v1729;
        v1318 = v1730;
        v1319 = v1731;
        v1320 = v1732;
        v1321 = v1733;
        v1322 = v1734;
        v1323 = v1735;
        v1324 = v1736;
        v1325 = v1737;
        v1326 = v1738;
        v1327 = v1739;
        v1328 = v1740;
        v1329 = v1741;
        v1330 = v1743;
        v519 = v1723;
        v520 = v1722;
        v521 = v1721;
        v522 = v1720;
        v523 = v1719;
        v524 = v1718;
        v525 = v1717;
        v2789 = v2681;
        v2790 = v1724;
        sub_1B03949FC(&v2789, &v2793, &v2792, &v2791);
        v1269 = 0;
        v1270 = v1713;
        v1271 = v1714;
        v1272 = v1715;
        v1273 = v1716;
        v1274 = v525;
        v1275 = v524;
        v1276 = v523;
        v1277 = v522;
        v1278 = v521;
        v1279 = v520;
        v1280 = v519;
        v1281 = v1724;
        v1282 = v1725;
        v1283 = v1726;
        v1284 = v1727;
        v1285 = v1728;
        v1286 = v1729;
        v1287 = v1730;
        v1288 = v1731;
        v1289 = v1732;
        v1290 = v1733;
        v1291 = v1734;
        v1292 = v1735;
        v1293 = v1736;
        v1294 = v1737;
        v1295 = v1738;
        v1296 = v1739;
        v1297 = v1740;
        v1298 = v1741;
        v1299 = v1743;
        v526 = v1723;
        v527 = v1722;
        v528 = v1721;
        v529 = v1720;
        v530 = v1719;
        v531 = v1718;
        v532 = v1717;
        v2789 = v2682;
        v2790 = v1725;
        sub_1B03949FC(&v2789, &v2793, &v2792, &v2791);
        v1238 = 0;
        v1239 = v1713;
        v1240 = v1714;
        v1241 = v1715;
        v1242 = v1716;
        v1243 = v532;
        v1244 = v531;
        v1245 = v530;
        v1246 = v529;
        v1247 = v528;
        v1248 = v527;
        v1249 = v526;
        v1250 = v1724;
        v1251 = v1725;
        v1252 = v1726;
        v1253 = v1727;
        v1254 = v1728;
        v1255 = v1729;
        v1256 = v1730;
        v1257 = v1731;
        v1258 = v1732;
        v1259 = v1733;
        v1260 = v1734;
        v1261 = v1735;
        v1262 = v1736;
        v1263 = v1737;
        v1264 = v1738;
        v1265 = v1739;
        v1266 = v1740;
        v1267 = v1741;
        v1268 = v1743;
        v533 = v1723;
        v534 = v1722;
        v535 = v1721;
        v536 = v1720;
        v537 = v1719;
        v538 = v1718;
        v539 = v1717;
        v2789 = v2683;
        v2790 = v1726;
        sub_1B03949FC(&v2789, &v2793, &v2792, &v2791);
        v1207 = 0;
        v1208 = v1713;
        v1209 = v1714;
        v1210 = v1715;
        v1211 = v1716;
        v1212 = v539;
        v1213 = v538;
        v1214 = v537;
        v1215 = v536;
        v1216 = v535;
        v1217 = v534;
        v1218 = v533;
        v1219 = v1724;
        v1220 = v1725;
        v1221 = v1726;
        v1222 = v1727;
        v1223 = v1728;
        v1224 = v1729;
        v1225 = v1730;
        v1226 = v1731;
        v1227 = v1732;
        v1228 = v1733;
        v1229 = v1734;
        v1230 = v1735;
        v1231 = v1736;
        v1232 = v1737;
        v1233 = v1738;
        v1234 = v1739;
        v1235 = v1740;
        v1236 = v1741;
        v1237 = v1743;
        v540 = v1723;
        v541 = v1722;
        v542 = v1721;
        v543 = v1720;
        v544 = v1719;
        v545 = v1718;
        v546 = v1717;
        v2789 = v2684;
        v2790 = v1727;
        sub_1B03949FC(&v2789, &v2793, &v2792, &v2791);
        v1176 = 0;
        v1177 = v1713;
        v1178 = v1714;
        v1179 = v1715;
        v1180 = v1716;
        v1181 = v546;
        v1182 = v545;
        v1183 = v544;
        v1184 = v543;
        v1185 = v542;
        v1186 = v541;
        v1187 = v540;
        v1188 = v1724;
        v1189 = v1725;
        v1190 = v1726;
        v1191 = v1727;
        v1192 = v1728;
        v1193 = v1729;
        v1194 = v1730;
        v1195 = v1731;
        v1196 = v1732;
        v1197 = v1733;
        v1198 = v1734;
        v1199 = v1735;
        v1200 = v1736;
        v1201 = v1737;
        v1202 = v1738;
        v1203 = v1739;
        v1204 = v1740;
        v1205 = v1741;
        v1206 = v1743;
        v547 = v1723;
        v548 = v1722;
        v549 = v1721;
        v550 = v1720;
        v551 = v1719;
        v552 = v1718;
        v553 = v1717;
        v2789 = v2685;
        v2790 = v1728;
        sub_1B03949FC(&v2789, &v2793, &v2792, &v2791);
        v1145 = 0;
        v1146 = v1713;
        v1147 = v1714;
        v1148 = v1715;
        v1149 = v1716;
        v1150 = v553;
        v1151 = v552;
        v1152 = v551;
        v1153 = v550;
        v1154 = v549;
        v1155 = v548;
        v1156 = v547;
        v1157 = v1724;
        v1158 = v1725;
        v1159 = v1726;
        v1160 = v1727;
        v1161 = v1728;
        v1162 = v1729;
        v1163 = v1730;
        v1164 = v1731;
        v1165 = v1732;
        v1166 = v1733;
        v1167 = v1734;
        v1168 = v1735;
        v1169 = v1736;
        v1170 = v1737;
        v1171 = v1738;
        v1172 = v1739;
        v1173 = v1740;
        v1174 = v1741;
        v1175 = v1743;
        v554 = v1723;
        v555 = v1722;
        v556 = v1721;
        v557 = v1720;
        v558 = v1719;
        v559 = v1718;
        v560 = v1717;
        v2789 = v2686;
        v2790 = v1729;
        sub_1B03949FC(&v2789, &v2793, &v2792, &v2791);
        v1114 = 0;
        v1115 = v1713;
        v1116 = v1714;
        v1117 = v1715;
        v1118 = v1716;
        v1119 = v560;
        v1120 = v559;
        v1121 = v558;
        v1122 = v557;
        v1123 = v556;
        v1124 = v555;
        v1125 = v554;
        v1126 = v1724;
        v1127 = v1725;
        v1128 = v1726;
        v1129 = v1727;
        v1130 = v1728;
        v1131 = v1729;
        v1132 = v1730;
        v1133 = v1731;
        v1134 = v1732;
        v1135 = v1733;
        v1136 = v1734;
        v1137 = v1735;
        v1138 = v1736;
        v1139 = v1737;
        v1140 = v1738;
        v1141 = v1739;
        v1142 = v1740;
        v1143 = v1741;
        v1144 = v1743;
        v561 = v1723;
        v562 = v1722;
        v563 = v1721;
        v564 = v1720;
        v565 = v1719;
        v566 = v1718;
        v567 = v1717;
        v2789 = v2687;
        v2790 = v1730;
        sub_1B03949FC(&v2789, &v2793, &v2792, &v2791);
        v1083 = 0;
        v1084 = v1713;
        v1085 = v1714;
        v1086 = v1715;
        v1087 = v1716;
        v1088 = v567;
        v1089 = v566;
        v1090 = v565;
        v1091 = v564;
        v1092 = v563;
        v1093 = v562;
        v1094 = v561;
        v1095 = v1724;
        v1096 = v1725;
        v1097 = v1726;
        v1098 = v1727;
        v1099 = v1728;
        v1100 = v1729;
        v1101 = v1730;
        v1102 = v1731;
        v1103 = v1732;
        v1104 = v1733;
        v1105 = v1734;
        v1106 = v1735;
        v1107 = v1736;
        v1108 = v1737;
        v1109 = v1738;
        v1110 = v1739;
        v1111 = v1740;
        v1112 = v1741;
        v1113 = v1743;
        v568 = v1723;
        v569 = v1722;
        v570 = v1721;
        v571 = v1720;
        v572 = v1719;
        v573 = v1718;
        v574 = v1717;
        v2789 = v2688;
        v2790 = v1731;
        sub_1B03949FC(&v2789, &v2793, &v2792, &v2791);
        v1052 = 0;
        v1053 = v1713;
        v1054 = v1714;
        v1055 = v1715;
        v1056 = v1716;
        v1057 = v574;
        v1058 = v573;
        v1059 = v572;
        v1060 = v571;
        v1061 = v570;
        v1062 = v569;
        v1063 = v568;
        v1064 = v1724;
        v1065 = v1725;
        v1066 = v1726;
        v1067 = v1727;
        v1068 = v1728;
        v1069 = v1729;
        v1070 = v1730;
        v1071 = v1731;
        v1072 = v1732;
        v1073 = v1733;
        v1074 = v1734;
        v1075 = v1735;
        v1076 = v1736;
        v1077 = v1737;
        v1078 = v1738;
        v1079 = v1739;
        v1080 = v1740;
        v1081 = v1741;
        v1082 = v1743;
        v575 = v1723;
        v576 = v1722;
        v577 = v1721;
        v578 = v1720;
        v579 = v1719;
        v580 = v1718;
        v581 = v1717;
        v2789 = v2689;
        v2790 = v1732;
        sub_1B03949FC(&v2789, &v2793, &v2792, &v2791);
        v1021 = 0;
        v1022 = v1713;
        v1023 = v1714;
        v1024 = v1715;
        v1025 = v1716;
        v1026 = v581;
        v1027 = v580;
        v1028 = v579;
        v1029 = v578;
        v1030 = v577;
        v1031 = v576;
        v1032 = v575;
        v1033 = v1724;
        v1034 = v1725;
        v1035 = v1726;
        v1036 = v1727;
        v1037 = v1728;
        v1038 = v1729;
        v1039 = v1730;
        v1040 = v1731;
        v1041 = v1732;
        v1042 = v1733;
        v1043 = v1734;
        v1044 = v1735;
        v1045 = v1736;
        v1046 = v1737;
        v1047 = v1738;
        v1048 = v1739;
        v1049 = v1740;
        v1050 = v1741;
        v1051 = v1743;
        v582 = v1723;
        v583 = v1722;
        v584 = v1721;
        v585 = v1720;
        v586 = v1719;
        v587 = v1718;
        v588 = v1717;
        v2789 = v2690;
        v2790 = v1733;
        sub_1B03949FC(&v2789, &v2793, &v2792, &v2791);
        v990 = 0;
        v991 = v1713;
        v992 = v1714;
        v993 = v1715;
        v994 = v1716;
        v995 = v588;
        v996 = v587;
        v997 = v586;
        v998 = v585;
        v999 = v584;
        v1000 = v583;
        v1001 = v582;
        v1002 = v1724;
        v1003 = v1725;
        v1004 = v1726;
        v1005 = v1727;
        v1006 = v1728;
        v1007 = v1729;
        v1008 = v1730;
        v1009 = v1731;
        v1010 = v1732;
        v1011 = v1733;
        v1012 = v1734;
        v1013 = v1735;
        v1014 = v1736;
        v1015 = v1737;
        v1016 = v1738;
        v1017 = v1739;
        v1018 = v1740;
        v1019 = v1741;
        v1020 = v1743;
        v589 = v1723;
        v590 = v1722;
        v591 = v1721;
        v592 = v1720;
        v593 = v1719;
        v594 = v1718;
        v595 = v1717;
        v2789 = v2691;
        v2790 = v1734;
        sub_1B03949FC(&v2789, &v2793, &v2792, &v2791);
        v959 = 0;
        v960 = v1713;
        v961 = v1714;
        v962 = v1715;
        v963 = v1716;
        v964 = v595;
        v965 = v594;
        v966 = v593;
        v967 = v592;
        v968 = v591;
        v969 = v590;
        v970 = v589;
        v971 = v1724;
        v972 = v1725;
        v973 = v1726;
        v974 = v1727;
        v975 = v1728;
        v976 = v1729;
        v977 = v1730;
        v978 = v1731;
        v979 = v1732;
        v980 = v1733;
        v981 = v1734;
        v982 = v1735;
        v983 = v1736;
        v984 = v1737;
        v985 = v1738;
        v986 = v1739;
        v987 = v1740;
        v988 = v1741;
        v989 = v1743;
        v596 = v1723;
        v597 = v1722;
        v598 = v1721;
        v599 = v1720;
        v600 = v1719;
        v601 = v1718;
        v602 = v1717;
        v2789 = v2692;
        v2790 = v1735;
        sub_1B03949FC(&v2789, &v2793, &v2792, &v2791);
        v928 = 0;
        v929 = v1713;
        v930 = v1714;
        v931 = v1715;
        v932 = v1716;
        v933 = v602;
        v934 = v601;
        v935 = v600;
        v936 = v599;
        v937 = v598;
        v938 = v597;
        v939 = v596;
        v940 = v1724;
        v941 = v1725;
        v942 = v1726;
        v943 = v1727;
        v944 = v1728;
        v945 = v1729;
        v946 = v1730;
        v947 = v1731;
        v948 = v1732;
        v949 = v1733;
        v950 = v1734;
        v951 = v1735;
        v952 = v1736;
        v953 = v1737;
        v954 = v1738;
        v955 = v1739;
        v956 = v1740;
        v957 = v1741;
        v958 = v1743;
        v603 = v1723;
        v604 = v1722;
        v605 = v1721;
        v606 = v1720;
        v607 = v1719;
        v608 = v1718;
        v609 = v1717;
        v2789 = v2693;
        v2790 = v1736;
        sub_1B03949FC(&v2789, &v2793, &v2792, &v2791);
        v897 = 0;
        v898 = v1713;
        v899 = v1714;
        v900 = v1715;
        v901 = v1716;
        v902 = v609;
        v903 = v608;
        v904 = v607;
        v905 = v606;
        v906 = v605;
        v907 = v604;
        v908 = v603;
        v909 = v1724;
        v910 = v1725;
        v911 = v1726;
        v912 = v1727;
        v913 = v1728;
        v914 = v1729;
        v915 = v1730;
        v916 = v1731;
        v917 = v1732;
        v918 = v1733;
        v919 = v1734;
        v920 = v1735;
        v921 = v1736;
        v922 = v1737;
        v923 = v1738;
        v924 = v1739;
        v925 = v1740;
        v926 = v1741;
        v927 = v1743;
        v610 = v1723;
        v611 = v1722;
        v612 = v1721;
        v613 = v1720;
        v614 = v1719;
        v615 = v1718;
        v616 = v1717;
        v2789 = v2694;
        v2790 = v1737;
        sub_1B03949FC(&v2789, &v2793, &v2792, &v2791);
        v866 = 0;
        v867 = v1713;
        v868 = v1714;
        v869 = v1715;
        v870 = v1716;
        v871 = v616;
        v872 = v615;
        v873 = v614;
        v874 = v613;
        v875 = v612;
        v876 = v611;
        v877 = v610;
        v878 = v1724;
        v879 = v1725;
        v880 = v1726;
        v881 = v1727;
        v882 = v1728;
        v883 = v1729;
        v884 = v1730;
        v885 = v1731;
        v886 = v1732;
        v887 = v1733;
        v888 = v1734;
        v889 = v1735;
        v890 = v1736;
        v891 = v1737;
        v892 = v1738;
        v893 = v1739;
        v894 = v1740;
        v895 = v1741;
        v896 = v1743;
        v617 = v1723;
        v618 = v1722;
        v619 = v1721;
        v620 = v1720;
        v621 = v1719;
        v622 = v1718;
        v623 = v1717;
        v2789 = v2695;
        v2790 = v1738;
        sub_1B03949FC(&v2789, &v2793, &v2792, &v2791);
        v835 = 0;
        v836 = v1713;
        v837 = v1714;
        v838 = v1715;
        v839 = v1716;
        v840 = v623;
        v841 = v622;
        v842 = v621;
        v843 = v620;
        v844 = v619;
        v845 = v618;
        v846 = v617;
        v847 = v1724;
        v848 = v1725;
        v849 = v1726;
        v850 = v1727;
        v851 = v1728;
        v852 = v1729;
        v853 = v1730;
        v854 = v1731;
        v855 = v1732;
        v856 = v1733;
        v857 = v1734;
        v858 = v1735;
        v859 = v1736;
        v860 = v1737;
        v861 = v1738;
        v862 = v1739;
        v863 = v1740;
        v864 = v1741;
        v865 = v1743;
        v624 = v1723;
        v625 = v1722;
        v626 = v1721;
        v627 = v1720;
        v628 = v1719;
        v629 = v1718;
        v630 = v1717;
        v2789 = v2696;
        v2790 = v1739;
        sub_1B03949FC(&v2789, &v2793, &v2792, &v2791);
        v804 = 0;
        v805 = v1713;
        v806 = v1714;
        v807 = v1715;
        v808 = v1716;
        v809 = v630;
        v810 = v629;
        v811 = v628;
        v812 = v627;
        v813 = v626;
        v814 = v625;
        v815 = v624;
        v816 = v1724;
        v817 = v1725;
        v818 = v1726;
        v819 = v1727;
        v820 = v1728;
        v821 = v1729;
        v822 = v1730;
        v823 = v1731;
        v824 = v1732;
        v825 = v1733;
        v826 = v1734;
        v827 = v1735;
        v828 = v1736;
        v829 = v1737;
        v830 = v1738;
        v831 = v1739;
        v832 = v1740;
        v833 = v1741;
        v834 = v1743;
        v631 = v1723;
        v632 = v1722;
        v633 = v1721;
        v634 = v1720;
        v635 = v1719;
        v636 = v1718;
        v637 = v1717;
        v2789 = v2697;
        v2790 = v1740;
        sub_1B03949FC(&v2789, &v2793, &v2792, &v2791);
        v773 = 0;
        v774 = v1713;
        v775 = v1714;
        v776 = v1715;
        v777 = v1716;
        v778 = v637;
        v779 = v636;
        v780 = v635;
        v781 = v634;
        v782 = v633;
        v783 = v632;
        v784 = v631;
        v785 = v1724;
        v786 = v1725;
        v787 = v1726;
        v788 = v1727;
        v789 = v1728;
        v790 = v1729;
        v791 = v1730;
        v792 = v1731;
        v793 = v1732;
        v794 = v1733;
        v795 = v1734;
        v796 = v1735;
        v797 = v1736;
        v798 = v1737;
        v799 = v1738;
        v800 = v1739;
        v801 = v1740;
        v802 = v1741;
        v803 = v1743;
        v638 = v1723;
        v639 = v1722;
        v640 = v1721;
        v641 = v1720;
        v642 = v1719;
        v643 = v1718;
        v644 = v1717;
        v2789 = v2698;
        v2790 = v1741;
        sub_1B03949FC(&v2789, &v2793, &v2792, &v2791);
        v742 = 0;
        v743 = v1713;
        v744 = v1714;
        v745 = v1715;
        v746 = v1716;
        v747 = v644;
        v748 = v643;
        v749 = v642;
        v750 = v641;
        v751 = v640;
        v752 = v639;
        v753 = v638;
        v754 = v1724;
        v755 = v1725;
        v756 = v1726;
        v757 = v1727;
        v758 = v1728;
        v759 = v1729;
        v760 = v1730;
        v761 = v1731;
        v762 = v1732;
        v763 = v1733;
        v764 = v1734;
        v765 = v1735;
        v766 = v1736;
        v767 = v1737;
        v768 = v1738;
        v769 = v1739;
        v770 = v1740;
        v771 = v1741;
        v772 = v1743;
        v645 = v1723;
        v646 = v1722;
        v647 = v1721;
        v648 = v1720;
        v649 = v1719;
        v650 = v1718;
        v651 = v1717;
        v2789 = v2699;
        v2790 = v1743;
        sub_1B03949FC(&v2789, &v2793, &v2792, &v2791);
        v711 = 0;
        v712 = v1713;
        v713 = v1714;
        v714 = v1715;
        v715 = v1716;
        v716 = v651;
        v717 = v650;
        v718 = v649;
        v719 = v648;
        v720 = v647;
        v721 = v646;
        v722 = v645;
        v723 = v1724;
        v724 = v1725;
        v725 = v1726;
        v726 = v1727;
        v727 = v1728;
        v728 = v1729;
        v729 = v1730;
        v730 = v1731;
        v731 = v1732;
        v732 = v1733;
        v733 = v1734;
        v734 = v1735;
        v735 = v1736;
        v736 = v1737;
        v737 = v1738;
        v738 = v1739;
        v739 = v1740;
        v740 = v1741;
        v741 = v1743;
        _os_log_impl(&dword_1B0389000, v1746, v1747, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Found %ld messages with flag changes (%ld unfiltered) (limit %ld). Found %ld no-op flag change actions.", v1644, 0x53u);
        sub_1B03998A8(v1645, 0, v1643);
        sub_1B03998A8(v1646, 1, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();

        v1642 = v711;
      }
    }

    else
    {

      v1642 = v2645;
    }

    v681 = v1642;
    MEMORY[0x1E69E5920](v1746);
    (*(v2751 + 8))(v2754, v2750);
    v1759 = v681;
LABEL_22:
    v676 = v1759;
    v2825 = v2819;
    sub_1B074E7A8(&v2825, &v2800);
    v678 = &v2799;
    v2799 = v2825;
    v677 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1BE8, &qword_1B0ECD5D0);
    sub_1B074E7E0();
    sub_1B0E452D8();
    v679 = v2809;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v680 = sub_1B0E452A8();

    if (v680 >= v2764 || ((v674 = &v2819, v673 = &v2824, v2824 = v2819, sub_1B074E7A8(&v2824, &v2798), v2797[5] = v2824, sub_1B074B7E4(), v675 = sub_1B0E45748(), sub_1B039E440(v673), sub_1B074E4B4(v674, v2797), (v675 & 1) != 0) ? (v652 = v2648, v668 = v2823, *(v2648 + 2) = v2820, *(v652 + 3) = v2821, sub_1B074E30C(v2823, v2796), v670 = v2823[0], _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0(), sub_1B071F9F0(), v669 = sub_1B0E45C48(), sub_1B074E39C(), v671 = sub_1B0E454F8(), , v672 = v671 ^ 1) : (v672 = 1), (v667 = v672, v666 = &v2819, sub_1B074E868(), sub_1B074E4B4(v666, v2795), (v667 & 1) == 0) ? (v653 = v2648, v661 = v2822, *v2648 = v2820, *(v653 + 1) = v2821, sub_1B074E30C(v2822, v2794), v663 = v2822[1], _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0(), sub_1B071F9F0(), v662 = sub_1B0E45C48(), v654 = sub_1B074E39C(), v664 = MEMORY[0x1B27267E0](v663, v662, v2771, v654), , v665 = v664 ^ 1) : (v665 = 1), v660 = v665, sub_1B074E868(), (v660 & 1) == 0))
    {
      sub_1B074E868();
      sub_1B074E258(v2763);
      v659 = v676;
LABEL_34:
      v657 = v659;
      v656 = &v2809;
      v658 = v2809;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B03D09B8(v2778);
      sub_1B039E440(v656);
      return v658;
    }

    sub_1B074E868();
    sub_1B074E258(v2763);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0731CB8(uint64_t a1, int a2)
{
  v621 = v687;
  v661 = a2;
  v660 = a1;
  v656 = 0;
  v704 = 0;
  v703 = 0;
  v702 = 0;
  v701 = 0;
  v698 = 0;
  v697 = 0;
  v688 = 0;
  v687[1] = 0;
  v687[0] = 0;
  v623 = 0;
  v659 = a2 & 1;
  v624 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v625 = (*(*(v624 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v626 = &v261 - v625;
  v627 = sub_1B0E439A8();
  v628 = *(v627 - 8);
  v629 = v628;
  v630 = *(v628 + 64);
  MEMORY[0x1EEE9AC00](v656);
  v632 = (v630 + 15) & 0xFFFFFFFFFFFFFFF0;
  v631 = &v261 - v632;
  MEMORY[0x1EEE9AC00](v3);
  v633 = &v261 - v632;
  v634 = _s6LoggerVMa_1(v4);
  v636 = *(*(v634 - 8) + 64);
  MEMORY[0x1EEE9AC00](v634 - 8);
  v638 = (v636 + 15) & 0xFFFFFFFFFFFFFFF0;
  v635 = &v261 - v638;
  MEMORY[0x1EEE9AC00](&v261 - v638);
  v637 = &v261 - v638;
  MEMORY[0x1EEE9AC00](v5);
  v639 = &v261 - v638;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1C58, &qword_1B0E9B050);
  v640 = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6 - 8);
  v641 = &v261 - v640;
  v642 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1C60, &qword_1B0E9B058) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v656);
  v643 = &v261 - v642;
  v644 = sub_1B0E42B78();
  v645 = *(v644 - 8);
  v646 = v645;
  MEMORY[0x1EEE9AC00](v656);
  v647 = &v261 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v648 = sub_1B0E431B8();
  v649 = *(v648 - 8);
  v650 = v649;
  MEMORY[0x1EEE9AC00](v656);
  v651 = &v261 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v652 = sub_1B0E43228();
  v653 = *(v652 - 8);
  v654 = v653;
  MEMORY[0x1EEE9AC00](v652 - 8);
  v655 = &v261 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v657 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v656);
  v658 = &v261 - v657;
  v662 = sub_1B0E43108();
  v663 = *(v662 - 8);
  v664 = v663;
  v666 = *(v663 + 64);
  v665 = v666;
  MEMORY[0x1EEE9AC00](v660);
  v668 = (v666 + 15) & 0xFFFFFFFFFFFFFFF0;
  v667 = &v261 - v668;
  MEMORY[0x1EEE9AC00](v10);
  v669 = &v261 - v668;
  v704 = &v261 - v668;
  v703 = v11;
  v702 = v12;
  v701 = v2;
  if (v13)
  {
    goto LABEL_30;
  }

  v619 = sub_1B0829EAC();
  v620 = MailboxName.isInbox.getter(v619, v14);

  if (v620)
  {
    goto LABEL_30;
  }

  v616 = *(v622 + 16);
  v15 = v616;
  v617 = [v616 type];

  v700 = v617;
  v699 = 3;
  v618 = type metadata accessor for ECMailboxType(0);
  sub_1B0692640();
  if ((sub_1B0E46AE8() & 1) == 0)
  {
    goto LABEL_30;
  }

  v615 = sub_1B0740AC0();
  if (v16)
  {
    goto LABEL_30;
  }

  v614 = v615;
  v612 = v615;
  v698 = v615;
  (*(v650 + 104))(v651, *MEMORY[0x1E6969868], v648);
  sub_1B0E431C8();
  (*(v650 + 8))(v651, v648);
  v17 = *(v654 + 56);
  v611 = 1;
  v17(v643, 1, 1, v652);
  v18 = sub_1B0E43358();
  result = (*(*(v18 - 8) + 56))(v641, v611);
  v20 = __OFADD__(v612, 1);
  v613 = (v612 + 1);
  if (v20)
  {
    goto LABEL_33;
  }

  v21 = __OFSUB__(0, v613);
  v610 = -v613;
  if (v21)
  {
    goto LABEL_34;
  }

  v605 = &v239;
  v609 = 1;
  v260 = 1;
  v606 = 0;
  *iCloudCleanup = 0;
  v258 = 1;
  v257 = 0;
  v256 = 1;
  v255 = 0;
  v254 = 1;
  v253 = 0;
  v252 = 1;
  v251 = 0;
  v250 = 1;
  v249 = 0;
  v248 = 1;
  v247 = 0;
  v246 = 1;
  v245 = 0;
  v244 = 1;
  v243 = 0;
  v242 = 1;
  v241 = 0;
  v240 = 0;
  v239 = v610;
  sub_1B0E42B58();
  sub_1B0E430F8();
  sub_1B0394868();
  sub_1B0E431F8();
  v607 = *(v664 + 8);
  v608 = (v664 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v607(v667, v662);
  (*(v646 + 8))(v647, v644);
  (*(v654 + 8))(v655, v652);
  if ((*(v664 + 48))(v658, v609, v662) == 1)
  {
    sub_1B06B97A8(v658);
LABEL_30:
    v264 = 0;
    v266 = sub_1B0E46A48();
    v267 = v264;
    v268 = v264;
    v269 = v264;
    v270 = v264;
    v271 = v623;
    goto LABEL_31;
  }

  v22 = v633;
  v527 = *(v664 + 32);
  v526 = v664 + 32;
  v510 = v527;
  v511 = (v664 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v527(v669, v658, v662);
  v514 = &OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_logger;
  sub_1B074B69C(v622 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_logger, v639);
  v512 = *(v629 + 16);
  v513 = (v629 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v512(v22, v639, v627);
  sub_1B074B764(v639);

  sub_1B074B69C(v622 + *v514, v637);
  v23 = (v637 + *(v634 + 20));
  v517 = *v23;
  v518 = *(v23 + 1);
  v519 = *(v23 + 1);
  v520 = *(v23 + 4);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B074B764(v637);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v516 = 36;
  v570 = 7;
  v24 = swift_allocObject();
  v25 = v518;
  v26 = v519;
  v27 = v520;
  v536 = v24;
  *(v24 + 16) = v517;
  *(v24 + 20) = v25;
  *(v24 + 24) = v26;
  *(v24 + 32) = v27;
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v28 = swift_allocObject();
  v29 = v518;
  v30 = v519;
  v31 = v520;
  v515 = v28;
  *(v28 + 16) = v517;
  *(v28 + 20) = v29;
  *(v28 + 24) = v30;
  *(v28 + 32) = v31;

  v569 = 32;
  v32 = swift_allocObject();
  v33 = v515;
  v545 = v32;
  *(v32 + 16) = sub_1B074E050;
  *(v32 + 24) = v33;
  sub_1B0394868();
  sub_1B0394868();

  v34 = swift_allocObject();
  v35 = v518;
  v36 = v519;
  v37 = v520;
  v554 = v34;
  *(v34 + 16) = v517;
  *(v34 + 20) = v35;
  *(v34 + 24) = v36;
  *(v34 + 32) = v37;

  v38 = *(v664 + 16);
  v523 = v664 + 16;
  v521 = v38;
  v522 = (v664 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v38(v667, v669, v662);
  v524 = *(v523 + 64);
  v525 = (v524 + 16) & ~v524;
  v571 = swift_allocObject();
  v527(v571 + v525, v667, v662);
  sub_1B0394868();
  sub_1B0394868();
  v604 = sub_1B0E43988();
  v528 = v604;
  v603 = sub_1B0E458D8();
  v529 = v603;
  v565 = 17;
  v576 = swift_allocObject();
  v530 = v576;
  v557 = 16;
  *(v576 + 16) = 16;
  v577 = swift_allocObject();
  v531 = v577;
  v559 = 4;
  *(v577 + 16) = 4;
  v39 = swift_allocObject();
  v532 = v39;
  *(v39 + 16) = sub_1B0394C30;
  v561 = 0;
  *(v39 + 24) = 0;
  v40 = swift_allocObject();
  v41 = v532;
  v578 = v40;
  v533 = v40;
  *(v40 + 16) = sub_1B0394C24;
  *(v40 + 24) = v41;
  v579 = swift_allocObject();
  v534 = v579;
  v564 = 0;
  *(v579 + 16) = 0;
  v580 = swift_allocObject();
  v535 = v580;
  *(v580 + 16) = 1;
  v42 = swift_allocObject();
  v43 = v536;
  v537 = v42;
  *(v42 + 16) = sub_1B074DFFC;
  *(v42 + 24) = v43;
  v44 = swift_allocObject();
  v45 = v537;
  v581 = v44;
  v538 = v44;
  *(v44 + 16) = sub_1B039BA88;
  *(v44 + 24) = v45;
  v582 = swift_allocObject();
  v539 = v582;
  *(v582 + 16) = v557;
  v583 = swift_allocObject();
  v540 = v583;
  *(v583 + 16) = v559;
  v46 = swift_allocObject();
  v47 = v561;
  v541 = v46;
  *(v46 + 16) = sub_1B039BB94;
  *(v46 + 24) = v47;
  v48 = swift_allocObject();
  v49 = v541;
  v584 = v48;
  v542 = v48;
  *(v48 + 16) = sub_1B0394C24;
  *(v48 + 24) = v49;
  v585 = swift_allocObject();
  v543 = v585;
  *(v585 + 16) = v564;
  v586 = swift_allocObject();
  v544 = v586;
  *(v586 + 16) = v559;
  v50 = swift_allocObject();
  v51 = v545;
  v546 = v50;
  *(v50 + 16) = sub_1B039BBA0;
  *(v50 + 24) = v51;
  v52 = swift_allocObject();
  v53 = v546;
  v587 = v52;
  v547 = v52;
  *(v52 + 16) = sub_1B039BC08;
  *(v52 + 24) = v53;
  v588 = swift_allocObject();
  v548 = v588;
  *(v588 + 16) = 112;
  v589 = swift_allocObject();
  v549 = v589;
  v567 = 8;
  *(v589 + 16) = 8;
  v574 = 24;
  v550 = swift_allocObject();
  *(v550 + 16) = 0x786F626C69616DLL;
  v54 = swift_allocObject();
  v55 = v550;
  v590 = v54;
  v551 = v54;
  *(v54 + 16) = sub_1B06BA324;
  *(v54 + 24) = v55;
  v591 = swift_allocObject();
  v552 = v591;
  *(v591 + 16) = 37;
  v592 = swift_allocObject();
  v553 = v592;
  *(v592 + 16) = v567;
  v56 = swift_allocObject();
  v57 = v554;
  v555 = v56;
  *(v56 + 16) = sub_1B074E0E4;
  *(v56 + 24) = v57;
  v58 = swift_allocObject();
  v59 = v555;
  v593 = v58;
  v556 = v58;
  *(v58 + 16) = sub_1B039BCF8;
  *(v58 + 24) = v59;
  v594 = swift_allocObject();
  v558 = v594;
  *(v594 + 16) = v557;
  v595 = swift_allocObject();
  v560 = v595;
  *(v595 + 16) = v559;
  v60 = swift_allocObject();
  v61 = v561;
  v562 = v60;
  *(v60 + 16) = sub_1B0740C28;
  *(v60 + 24) = v61;
  v62 = swift_allocObject();
  v63 = v562;
  v596 = v62;
  v563 = v62;
  *(v62 + 16) = sub_1B0394C24;
  *(v62 + 24) = v63;
  v597 = swift_allocObject();
  v566 = v597;
  *(v597 + 16) = v564;
  v598 = swift_allocObject();
  v568 = v598;
  *(v598 + 16) = v567;
  v64 = swift_allocObject();
  v65 = v571;
  v572 = v64;
  *(v64 + 16) = sub_1B074E8C4;
  *(v64 + 24) = v65;
  v66 = swift_allocObject();
  v67 = v572;
  v601 = v66;
  v573 = v66;
  *(v66 + 16) = sub_1B074E950;
  *(v66 + 24) = v67;
  v602 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
  v575 = v602;
  v599 = sub_1B0E46A48();
  v600 = v68;

  v69 = v576;
  v70 = v600;
  *v600 = sub_1B0398F5C;
  v70[1] = v69;

  v71 = v577;
  v72 = v600;
  v600[2] = sub_1B0398F5C;
  v72[3] = v71;

  v73 = v578;
  v74 = v600;
  v600[4] = sub_1B0399178;
  v74[5] = v73;

  v75 = v579;
  v76 = v600;
  v600[6] = sub_1B0398F5C;
  v76[7] = v75;

  v77 = v580;
  v78 = v600;
  v600[8] = sub_1B0398F5C;
  v78[9] = v77;

  v79 = v581;
  v80 = v600;
  v600[10] = sub_1B039BA94;
  v80[11] = v79;

  v81 = v582;
  v82 = v600;
  v600[12] = sub_1B0398F5C;
  v82[13] = v81;

  v83 = v583;
  v84 = v600;
  v600[14] = sub_1B0398F5C;
  v84[15] = v83;

  v85 = v584;
  v86 = v600;
  v600[16] = sub_1B0399178;
  v86[17] = v85;

  v87 = v585;
  v88 = v600;
  v600[18] = sub_1B0398F5C;
  v88[19] = v87;

  v89 = v586;
  v90 = v600;
  v600[20] = sub_1B0398F5C;
  v90[21] = v89;

  v91 = v587;
  v92 = v600;
  v600[22] = sub_1B03991EC;
  v92[23] = v91;

  v93 = v588;
  v94 = v600;
  v600[24] = sub_1B0398F5C;
  v94[25] = v93;

  v95 = v589;
  v96 = v600;
  v600[26] = sub_1B0398F5C;
  v96[27] = v95;

  v97 = v590;
  v98 = v600;
  v600[28] = sub_1B03993BC;
  v98[29] = v97;

  v99 = v591;
  v100 = v600;
  v600[30] = sub_1B0398F5C;
  v100[31] = v99;

  v101 = v592;
  v102 = v600;
  v600[32] = sub_1B0398F5C;
  v102[33] = v101;

  v103 = v593;
  v104 = v600;
  v600[34] = sub_1B039BCEC;
  v104[35] = v103;

  v105 = v594;
  v106 = v600;
  v600[36] = sub_1B0398F5C;
  v106[37] = v105;

  v107 = v595;
  v108 = v600;
  v600[38] = sub_1B0398F5C;
  v108[39] = v107;

  v109 = v596;
  v110 = v600;
  v600[40] = sub_1B0399178;
  v110[41] = v109;

  v111 = v597;
  v112 = v600;
  v600[42] = sub_1B0398F5C;
  v112[43] = v111;

  v113 = v598;
  v114 = v600;
  v600[44] = sub_1B0398F5C;
  v114[45] = v113;

  v115 = v600;
  v116 = v601;
  v600[46] = sub_1B074E9C8;
  v115[47] = v116;
  sub_1B0394964();

  if (os_log_type_enabled(v604, v603))
  {
    v117 = v623;
    v504 = sub_1B0E45D78();
    v501 = v504;
    v502 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
    v505 = sub_1B03949A8(0, v502, v502);
    v503 = v505;
    v506 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v674 = v504;
    v673 = v505;
    v672 = v506;
    v507 = &v674;
    sub_1B0394A48(3, &v674);
    sub_1B0394A48(8, v507);
    v670 = sub_1B0398F5C;
    v671 = v530;
    sub_1B03949FC(&v670, v507, &v673, &v672);
    v508 = v117;
    v509 = v117;
    if (v117)
    {
      v499 = 0;

      __break(1u);
    }

    else
    {
      v670 = sub_1B0398F5C;
      v671 = v531;
      sub_1B03949FC(&v670, &v674, &v673, &v672);
      v497 = 0;
      v498 = 0;
      v670 = sub_1B0399178;
      v671 = v533;
      sub_1B03949FC(&v670, &v674, &v673, &v672);
      v495 = 0;
      v496 = 0;
      v670 = sub_1B0398F5C;
      v671 = v534;
      sub_1B03949FC(&v670, &v674, &v673, &v672);
      v493 = 0;
      v494 = 0;
      v670 = sub_1B0398F5C;
      v671 = v535;
      sub_1B03949FC(&v670, &v674, &v673, &v672);
      v491 = 0;
      v492 = 0;
      v670 = sub_1B039BA94;
      v671 = v538;
      sub_1B03949FC(&v670, &v674, &v673, &v672);
      v489 = 0;
      v490 = 0;
      v670 = sub_1B0398F5C;
      v671 = v539;
      sub_1B03949FC(&v670, &v674, &v673, &v672);
      v487 = 0;
      v488 = 0;
      v670 = sub_1B0398F5C;
      v671 = v540;
      sub_1B03949FC(&v670, &v674, &v673, &v672);
      v485 = 0;
      v486 = 0;
      v670 = sub_1B0399178;
      v671 = v542;
      sub_1B03949FC(&v670, &v674, &v673, &v672);
      v483 = 0;
      v484 = 0;
      v670 = sub_1B0398F5C;
      v671 = v543;
      sub_1B03949FC(&v670, &v674, &v673, &v672);
      v481 = 0;
      v482 = 0;
      v670 = sub_1B0398F5C;
      v671 = v544;
      sub_1B03949FC(&v670, &v674, &v673, &v672);
      v479 = 0;
      v480 = 0;
      v670 = sub_1B03991EC;
      v671 = v547;
      sub_1B03949FC(&v670, &v674, &v673, &v672);
      v477 = 0;
      v478 = 0;
      v670 = sub_1B0398F5C;
      v671 = v548;
      sub_1B03949FC(&v670, &v674, &v673, &v672);
      v475 = 0;
      v476 = 0;
      v670 = sub_1B0398F5C;
      v671 = v549;
      sub_1B03949FC(&v670, &v674, &v673, &v672);
      v473 = 0;
      v474 = 0;
      v670 = sub_1B03993BC;
      v671 = v551;
      sub_1B03949FC(&v670, &v674, &v673, &v672);
      v471 = 0;
      v472 = 0;
      v670 = sub_1B0398F5C;
      v671 = v552;
      sub_1B03949FC(&v670, &v674, &v673, &v672);
      v469 = 0;
      v470 = 0;
      v670 = sub_1B0398F5C;
      v671 = v553;
      sub_1B03949FC(&v670, &v674, &v673, &v672);
      v467 = 0;
      v468 = 0;
      v670 = sub_1B039BCEC;
      v671 = v556;
      sub_1B03949FC(&v670, &v674, &v673, &v672);
      v465 = 0;
      v466 = 0;
      v670 = sub_1B0398F5C;
      v671 = v558;
      sub_1B03949FC(&v670, &v674, &v673, &v672);
      v463 = 0;
      v464 = 0;
      v670 = sub_1B0398F5C;
      v671 = v560;
      sub_1B03949FC(&v670, &v674, &v673, &v672);
      v461 = 0;
      v462 = 0;
      v670 = sub_1B0399178;
      v671 = v563;
      sub_1B03949FC(&v670, &v674, &v673, &v672);
      v459 = 0;
      v460 = 0;
      v670 = sub_1B0398F5C;
      v671 = v566;
      sub_1B03949FC(&v670, &v674, &v673, &v672);
      v457 = 0;
      v458 = 0;
      v670 = sub_1B0398F5C;
      v671 = v568;
      sub_1B03949FC(&v670, &v674, &v673, &v672);
      v455 = 0;
      v456 = 0;
      v670 = sub_1B074E9C8;
      v671 = v573;
      sub_1B03949FC(&v670, &v674, &v673, &v672);
      v453 = 0;
      v454 = 0;
      _os_log_impl(&dword_1B0389000, v528, v529, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Looking for trashed messages that are more than %.*f hours old.", v501, 0x3Bu);
      sub_1B03998A8(v503, 0, v502);
      sub_1B03998A8(v506, 1, MEMORY[0x1E69E7CA0] + 8);
      sub_1B0E45D58();

      v500 = v453;
    }
  }

  else
  {
    v118 = v623;

    v500 = v118;
  }

  v119 = v667;
  v437 = v500;

  v438 = *(v629 + 8);
  v439 = (v629 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v438(v633, v627);
  v120 = swift_allocBox();
  v444 = v121;
  v440 = v120;
  v441 = v121;
  v697 = v121;
  sub_1B041C1E8();
  MessageIdentifierSet.init()();
  v448 = *(v622 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_serverMessagePersistence);
  v442 = v448;
  v122 = v448;
  v521(v119, v669, v662);
  v449 = sub_1B0E43068();
  v443 = v449;
  v607(v667, v662);
  v445 = 7;
  v447 = swift_allocObject();
  *(v447 + 16) = v444;

  v446 = v447;
  v123 = swift_allocObject();
  v124 = v447;
  v451 = v123;
  *(v123 + 16) = sub_1B074E9D4;
  *(v123 + 24) = v124;

  v695 = sub_1B074E9DC;
  v696 = v451;
  aBlock = MEMORY[0x1E69E9820];
  v691 = 1107296256;
  v692 = 0;
  v693 = sub_1B0740D3C;
  v694 = &block_descriptor_4;
  v450 = _Block_copy(&aBlock);

  [v448 enumerateUIDsInOlderThanDate:v449 limit:v660 withBlock:v450];
  _Block_release(v450);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  result = isEscapingClosureAtFileLocation;
  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v125 = v631;

    v348 = &OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_logger;
    sub_1B074B69C(v622 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_logger, v635);
    v512(v125, v635, v627);
    sub_1B074B764(v635);

    sub_1B074B69C(v622 + *v348, v637);
    v126 = (v637 + *(v634 + 20));
    v351 = *v126;
    v352 = *(v126 + 1);
    v353 = *(v126 + 1);
    v354 = *(v126 + 4);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B074B764(v637);

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v350 = 36;
    v402 = 7;
    v127 = swift_allocObject();
    v128 = v352;
    v129 = v353;
    v130 = v354;
    v364 = v127;
    *(v127 + 16) = v351;
    *(v127 + 20) = v128;
    *(v127 + 24) = v129;
    *(v127 + 32) = v130;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v131 = swift_allocObject();
    v132 = v352;
    v133 = v353;
    v134 = v354;
    v349 = v131;
    *(v131 + 16) = v351;
    *(v131 + 20) = v132;
    *(v131 + 24) = v133;
    *(v131 + 32) = v134;

    v401 = 32;
    v135 = swift_allocObject();
    v136 = v349;
    v373 = v135;
    *(v135 + 16) = sub_1B074E050;
    *(v135 + 24) = v136;
    sub_1B0394868();
    sub_1B0394868();

    v137 = swift_allocObject();
    v138 = v352;
    v139 = v353;
    v140 = v354;
    v382 = v137;
    *(v137 + 16) = v351;
    *(v137 + 20) = v138;
    *(v137 + 24) = v139;
    *(v137 + 32) = v140;

    v521(v667, v669, v662);
    v355 = (v524 + 16) & ~v524;
    v403 = swift_allocObject();
    v510(v403 + v355, v667, v662);
    sub_1B0394868();
    sub_1B0394868();
    v436 = sub_1B0E43988();
    v356 = v436;
    v435 = sub_1B0E45908();
    v357 = v435;
    v397 = 17;
    v406 = swift_allocObject();
    v358 = v406;
    v389 = 16;
    *(v406 + 16) = 16;
    v407 = swift_allocObject();
    v359 = v407;
    v391 = 4;
    *(v407 + 16) = 4;
    v141 = swift_allocObject();
    v360 = v141;
    *(v141 + 16) = sub_1B0394C30;
    v393 = 0;
    *(v141 + 24) = 0;
    v142 = swift_allocObject();
    v143 = v360;
    v408 = v142;
    v361 = v142;
    *(v142 + 16) = sub_1B0394C24;
    *(v142 + 24) = v143;
    v409 = swift_allocObject();
    v362 = v409;
    v396 = 0;
    *(v409 + 16) = 0;
    v410 = swift_allocObject();
    v363 = v410;
    *(v410 + 16) = 1;
    v144 = swift_allocObject();
    v145 = v364;
    v365 = v144;
    *(v144 + 16) = sub_1B074DFFC;
    *(v144 + 24) = v145;
    v146 = swift_allocObject();
    v147 = v365;
    v411 = v146;
    v366 = v146;
    *(v146 + 16) = sub_1B039BA88;
    *(v146 + 24) = v147;
    v412 = swift_allocObject();
    v367 = v412;
    *(v412 + 16) = v389;
    v413 = swift_allocObject();
    v368 = v413;
    *(v413 + 16) = v391;
    v148 = swift_allocObject();
    v149 = v393;
    v369 = v148;
    *(v148 + 16) = sub_1B039BB94;
    *(v148 + 24) = v149;
    v150 = swift_allocObject();
    v151 = v369;
    v414 = v150;
    v370 = v150;
    *(v150 + 16) = sub_1B0394C24;
    *(v150 + 24) = v151;
    v415 = swift_allocObject();
    v371 = v415;
    *(v415 + 16) = v396;
    v416 = swift_allocObject();
    v372 = v416;
    *(v416 + 16) = v391;
    v152 = swift_allocObject();
    v153 = v373;
    v374 = v152;
    *(v152 + 16) = sub_1B039BBA0;
    *(v152 + 24) = v153;
    v154 = swift_allocObject();
    v155 = v374;
    v417 = v154;
    v375 = v154;
    *(v154 + 16) = sub_1B039BC08;
    *(v154 + 24) = v155;
    v418 = swift_allocObject();
    v376 = v418;
    *(v418 + 16) = 112;
    v419 = swift_allocObject();
    v377 = v419;
    v399 = 8;
    *(v419 + 16) = 8;
    v378 = swift_allocObject();
    *(v378 + 16) = 0x786F626C69616DLL;
    v156 = swift_allocObject();
    v157 = v378;
    v420 = v156;
    v379 = v156;
    *(v156 + 16) = sub_1B06BA324;
    *(v156 + 24) = v157;
    v421 = swift_allocObject();
    v380 = v421;
    *(v421 + 16) = 37;
    v422 = swift_allocObject();
    v381 = v422;
    *(v422 + 16) = v399;
    v158 = swift_allocObject();
    v159 = v382;
    v383 = v158;
    *(v158 + 16) = sub_1B074E0E4;
    *(v158 + 24) = v159;
    v160 = swift_allocObject();
    v161 = v383;
    v423 = v160;
    v384 = v160;
    *(v160 + 16) = sub_1B039BCF8;
    *(v160 + 24) = v161;
    v424 = swift_allocObject();
    v385 = v424;
    *(v424 + 16) = v396;
    v425 = swift_allocObject();
    v386 = v425;
    *(v425 + 16) = v399;
    v162 = swift_allocObject();
    v163 = v440;
    v387 = v162;
    *(v162 + 16) = sub_1B074E9E8;
    *(v162 + 24) = v163;
    v164 = swift_allocObject();
    v165 = v387;
    v426 = v164;
    v388 = v164;
    *(v164 + 16) = sub_1B03B0DF8;
    *(v164 + 24) = v165;
    v427 = swift_allocObject();
    v390 = v427;
    *(v427 + 16) = v389;
    v428 = swift_allocObject();
    v392 = v428;
    *(v428 + 16) = v391;
    v166 = swift_allocObject();
    v167 = v393;
    v394 = v166;
    *(v166 + 16) = sub_1B0740C28;
    *(v166 + 24) = v167;
    v168 = swift_allocObject();
    v169 = v394;
    v429 = v168;
    v395 = v168;
    *(v168 + 16) = sub_1B0394C24;
    *(v168 + 24) = v169;
    v430 = swift_allocObject();
    v398 = v430;
    *(v430 + 16) = v396;
    v431 = swift_allocObject();
    v400 = v431;
    *(v431 + 16) = v399;
    v170 = swift_allocObject();
    v171 = v403;
    v404 = v170;
    *(v170 + 16) = sub_1B074E8C4;
    *(v170 + 24) = v171;
    v172 = swift_allocObject();
    v173 = v404;
    v434 = v172;
    v405 = v172;
    *(v172 + 16) = sub_1B074E950;
    *(v172 + 24) = v173;
    v432 = sub_1B0E46A48();
    v433 = v174;

    v175 = v406;
    v176 = v433;
    *v433 = sub_1B0398F5C;
    v176[1] = v175;

    v177 = v407;
    v178 = v433;
    v433[2] = sub_1B0398F5C;
    v178[3] = v177;

    v179 = v408;
    v180 = v433;
    v433[4] = sub_1B0399178;
    v180[5] = v179;

    v181 = v409;
    v182 = v433;
    v433[6] = sub_1B0398F5C;
    v182[7] = v181;

    v183 = v410;
    v184 = v433;
    v433[8] = sub_1B0398F5C;
    v184[9] = v183;

    v185 = v411;
    v186 = v433;
    v433[10] = sub_1B039BA94;
    v186[11] = v185;

    v187 = v412;
    v188 = v433;
    v433[12] = sub_1B0398F5C;
    v188[13] = v187;

    v189 = v413;
    v190 = v433;
    v433[14] = sub_1B0398F5C;
    v190[15] = v189;

    v191 = v414;
    v192 = v433;
    v433[16] = sub_1B0399178;
    v192[17] = v191;

    v193 = v415;
    v194 = v433;
    v433[18] = sub_1B0398F5C;
    v194[19] = v193;

    v195 = v416;
    v196 = v433;
    v433[20] = sub_1B0398F5C;
    v196[21] = v195;

    v197 = v417;
    v198 = v433;
    v433[22] = sub_1B03991EC;
    v198[23] = v197;

    v199 = v418;
    v200 = v433;
    v433[24] = sub_1B0398F5C;
    v200[25] = v199;

    v201 = v419;
    v202 = v433;
    v433[26] = sub_1B0398F5C;
    v202[27] = v201;

    v203 = v420;
    v204 = v433;
    v433[28] = sub_1B03993BC;
    v204[29] = v203;

    v205 = v421;
    v206 = v433;
    v433[30] = sub_1B0398F5C;
    v206[31] = v205;

    v207 = v422;
    v208 = v433;
    v433[32] = sub_1B0398F5C;
    v208[33] = v207;

    v209 = v423;
    v210 = v433;
    v433[34] = sub_1B039BCEC;
    v210[35] = v209;

    v211 = v424;
    v212 = v433;
    v433[36] = sub_1B0398F5C;
    v212[37] = v211;

    v213 = v425;
    v214 = v433;
    v433[38] = sub_1B0398F5C;
    v214[39] = v213;

    v215 = v426;
    v216 = v433;
    v433[40] = sub_1B0399260;
    v216[41] = v215;

    v217 = v427;
    v218 = v433;
    v433[42] = sub_1B0398F5C;
    v218[43] = v217;

    v219 = v428;
    v220 = v433;
    v433[44] = sub_1B0398F5C;
    v220[45] = v219;

    v221 = v429;
    v222 = v433;
    v433[46] = sub_1B0399178;
    v222[47] = v221;

    v223 = v430;
    v224 = v433;
    v433[48] = sub_1B0398F5C;
    v224[49] = v223;

    v225 = v431;
    v226 = v433;
    v433[50] = sub_1B0398F5C;
    v226[51] = v225;

    v227 = v433;
    v228 = v434;
    v433[52] = sub_1B074E9C8;
    v227[53] = v228;
    sub_1B0394964();

    if (os_log_type_enabled(v436, v435))
    {
      v229 = v437;
      v342 = sub_1B0E45D78();
      v339 = v342;
      v340 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v343 = sub_1B03949A8(0, v340, v340);
      v341 = v343;
      v344 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v679[0] = v342;
      v678 = v343;
      v677 = v344;
      v345 = v679;
      sub_1B0394A48(3, v679);
      sub_1B0394A48(9, v345);
      v675 = sub_1B0398F5C;
      v676 = v358;
      sub_1B03949FC(&v675, v345, &v678, &v677);
      v346 = v229;
      v347 = v229;
      if (v229)
      {
        v337 = 0;

        __break(1u);
      }

      else
      {
        v675 = sub_1B0398F5C;
        v676 = v359;
        sub_1B03949FC(&v675, v679, &v678, &v677);
        v335 = 0;
        v336 = 0;
        v675 = sub_1B0399178;
        v676 = v361;
        sub_1B03949FC(&v675, v679, &v678, &v677);
        v333 = 0;
        v334 = 0;
        v675 = sub_1B0398F5C;
        v676 = v362;
        sub_1B03949FC(&v675, v679, &v678, &v677);
        v331 = 0;
        v332 = 0;
        v675 = sub_1B0398F5C;
        v676 = v363;
        sub_1B03949FC(&v675, v679, &v678, &v677);
        v329 = 0;
        v330 = 0;
        v675 = sub_1B039BA94;
        v676 = v366;
        sub_1B03949FC(&v675, v679, &v678, &v677);
        v327 = 0;
        v328 = 0;
        v675 = sub_1B0398F5C;
        v676 = v367;
        sub_1B03949FC(&v675, v679, &v678, &v677);
        v325 = 0;
        v326 = 0;
        v675 = sub_1B0398F5C;
        v676 = v368;
        sub_1B03949FC(&v675, v679, &v678, &v677);
        v323 = 0;
        v324 = 0;
        v675 = sub_1B0399178;
        v676 = v370;
        sub_1B03949FC(&v675, v679, &v678, &v677);
        v321 = 0;
        v322 = 0;
        v675 = sub_1B0398F5C;
        v676 = v371;
        sub_1B03949FC(&v675, v679, &v678, &v677);
        v319 = 0;
        v320 = 0;
        v675 = sub_1B0398F5C;
        v676 = v372;
        sub_1B03949FC(&v675, v679, &v678, &v677);
        v317 = 0;
        v318 = 0;
        v675 = sub_1B03991EC;
        v676 = v375;
        sub_1B03949FC(&v675, v679, &v678, &v677);
        v315 = 0;
        v316 = 0;
        v675 = sub_1B0398F5C;
        v676 = v376;
        sub_1B03949FC(&v675, v679, &v678, &v677);
        v313 = 0;
        v314 = 0;
        v675 = sub_1B0398F5C;
        v676 = v377;
        sub_1B03949FC(&v675, v679, &v678, &v677);
        v311 = 0;
        v312 = 0;
        v675 = sub_1B03993BC;
        v676 = v379;
        sub_1B03949FC(&v675, v679, &v678, &v677);
        v309 = 0;
        v310 = 0;
        v675 = sub_1B0398F5C;
        v676 = v380;
        sub_1B03949FC(&v675, v679, &v678, &v677);
        v307 = 0;
        v308 = 0;
        v675 = sub_1B0398F5C;
        v676 = v381;
        sub_1B03949FC(&v675, v679, &v678, &v677);
        v305 = 0;
        v306 = 0;
        v675 = sub_1B039BCEC;
        v676 = v384;
        sub_1B03949FC(&v675, v679, &v678, &v677);
        v303 = 0;
        v304 = 0;
        v675 = sub_1B0398F5C;
        v676 = v385;
        sub_1B03949FC(&v675, v679, &v678, &v677);
        v301 = 0;
        v302 = 0;
        v675 = sub_1B0398F5C;
        v676 = v386;
        sub_1B03949FC(&v675, v679, &v678, &v677);
        v299 = 0;
        v300 = 0;
        v675 = sub_1B0399260;
        v676 = v388;
        sub_1B03949FC(&v675, v679, &v678, &v677);
        v297 = 0;
        v298 = 0;
        v675 = sub_1B0398F5C;
        v676 = v390;
        sub_1B03949FC(&v675, v679, &v678, &v677);
        v295 = 0;
        v296 = 0;
        v675 = sub_1B0398F5C;
        v676 = v392;
        sub_1B03949FC(&v675, v679, &v678, &v677);
        v293 = 0;
        v294 = 0;
        v675 = sub_1B0399178;
        v676 = v395;
        sub_1B03949FC(&v675, v679, &v678, &v677);
        v291 = 0;
        v292 = 0;
        v675 = sub_1B0398F5C;
        v676 = v398;
        sub_1B03949FC(&v675, v679, &v678, &v677);
        v289 = 0;
        v290 = 0;
        v675 = sub_1B0398F5C;
        v676 = v400;
        sub_1B03949FC(&v675, v679, &v678, &v677);
        v287 = 0;
        v288 = 0;
        v675 = sub_1B074E9C8;
        v676 = v405;
        sub_1B03949FC(&v675, v679, &v678, &v677);
        v285 = 0;
        v286 = 0;
        _os_log_impl(&dword_1B0389000, v356, v357, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Found %ld trashed message(s) that are more than %.*f hours old.", v339, 0x45u);
        sub_1B03998A8(v341, 0, v340);
        sub_1B03998A8(v344, 1, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();

        v338 = v285;
      }
    }

    else
    {
      v230 = v437;

      v338 = v230;
    }

    v231 = v626;
    v232 = v338;

    v438(v631, v627);
    v279 = sub_1B0394868();
    v272 = sub_1B0394868();
    v273 = sub_1B0394868();
    v274 = sub_1B0394868();
    v275 = sub_1B0394868();
    v276 = sub_1B0394868();
    v277 = sub_1B03904C0();
    v278 = sub_1B03904C0();
    v233 = sub_1B0394868();
    v705 = Flags.init(unread:deleted:answered:draft:forwarded:redirected:junk:label:iCloudCleanup:)(v279 & 1, v272 & 1, v273 & 1, v274 & 1, v275 & 1, v276 & 1, v277, v278, v233 & 1);
    v685 = *&v705.unread;
    v686 = v705.iCloudCleanup;
    LOWORD(v683) = *&v705.unread;
    BYTE2(v683) = v705.answered;
    BYTE3(v683) = v705.draft;
    BYTE4(v683) = v705.forwarded;
    BYTE5(v683) = v705.redirected;
    BYTE6(v683) = v705.junk;
    HIBYTE(v683) = v705.label;
    v684 = v705.iCloudCleanup;
    *&v705.unread = v683;
    v705.iCloudCleanup &= 1u;
    v706 = FlagsWithModifications.init(flags:)(v705);
    v234 = v621;
    *&v681 = *&v706.flags.unread;
    *(&v681 + 1) = *&v706.flags.iCloudCleanup;
    v682 = *&v706.originalFlags.value.label;
    v689 = *&v706.originalFlags.value.label;
    *(v621 + 2) = v681;
    v235 = v234[2];
    v688 = v689;
    *v234 = v235;
    BYTE1(v687[0]) = 1;
    v280 = &v680;
    swift_beginAccess();
    sub_1B03D08AC(v441, v231);
    swift_endAccess();
    v281 = &v261;
    MEMORY[0x1EEE9AC00](&v261);
    v282 = &v257;
    *iCloudCleanup = v687;
    v236 = sub_1B074B4A4();
    v238 = sub_1B039CA88(sub_1B074E9F0, v282, v624, &type metadata for FlagsChange, MEMORY[0x1E69E73E0], v236, MEMORY[0x1E69E7410], v237);
    v283 = v232;
    v284 = v238;
    if (!v232)
    {
      v265 = v284;
      sub_1B03D09B8(v626);

      v607(v669, v662);
      v266 = v265;
      v267 = sub_1B074E9D4;
      v268 = v446;
      v269 = 0;
      v270 = 0;
      v271 = v283;
LABEL_31:
      v262 = v270;
      v261 = v269;
      v263 = v266;
      sub_1B04197E4(v267, v268);
      sub_1B04197E4(v261, v262);
      return v263;
    }

    result = 0;
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0735EEC@<X0>(void *a1@<X8>)
{
  v8 = a1;
  v18 = 0;
  v17 = sub_1B071E8EC;
  v10 = sub_1B0741178;
  v26 = 0;
  v25 = 0;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v11 = (*(*(v20 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v20);
  v12 = &v5 - v11;
  v13 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v5 - v11);
  v21 = &v5 - v13;
  v14 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v5 - v13);
  v16 = &v5 - v14;
  v26 = &v5 - v14;
  v25 = v1;
  v15 = *v1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v24 = v15;
  sub_1B041C1E8();
  MessageIdentifierSet.init()();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1BE8, &qword_1B0ECD5D0);
  sub_1B074E7E0();
  sub_1B0E44FD8();
  v22 = 0;
  sub_1B039E440(&v24);
  v6 = *(v9 + *(_s21UnfilteredFlagChangesVMa(0) + 24));
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v23 = v6;
  sub_1B03D08AC(v16, v12);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1C48, &qword_1B0E9B038);
  sub_1B074EA1C();
  sub_1B0E44FD8();
  sub_1B039E440(&v23);
  return sub_1B03D09B8(v16);
}

uint64_t sub_1B0736144()
{
  v19 = 0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v12 = (*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v4 - v12;
  v19 = v0;
  v15 = *v0;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v18 = v15;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1BE8, &qword_1B0ECD5D0);
  sub_1B074B7E4();
  v16 = sub_1B0E45748();

  if (v16)
  {
    v1 = v13;
    v2 = _s21UnfilteredFlagChangesVMa(0);
    sub_1B03D08AC(v10 + *(v2 + 20), v1);
    v8 = MessageIdentifierSet.isEmpty.getter();
    sub_1B03D09B8(v13);
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    v5 = *(v10 + *(_s21UnfilteredFlagChangesVMa(0) + 24));
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v17 = v5;
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1C48, &qword_1B0E9B038);
    sub_1B074EAA4();
    v6 = sub_1B0E45748();

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

void sub_1B0736314(uint64_t a1@<X8>)
{
  v135 = v233;
  v136 = &v199;
  v138 = a1;
  v160 = 0;
  v232 = 0;
  v231 = 0;
  v230 = 0;
  v229 = 0;
  v228 = 0;
  v227 = 0;
  v226 = 0;
  v225[1] = 0;
  v225[0] = 0;
  v139 = 0u;
  v220 = 0u;
  v219 = 0u;
  v218[1] = 0;
  v218[0] = 0;
  v217[1] = 0;
  v217[0] = 0;
  v215 = 0;
  v212 = 0;
  v169 = 0;
  v191 = 0;
  v190 = 0u;
  v189 = 0u;
  v188 = 0u;
  v187 = 0u;
  v186 = 0u;
  v185 = 0u;
  v184 = 0u;
  v178 = 0;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3920, &qword_1B0E9B070);
  v142 = *(*(v140 - 8) + 64);
  MEMORY[0x1EEE9AC00](v140 - 8);
  v144 = (v142 + 15) & 0xFFFFFFFFFFFFFFF0;
  v141 = &v44 - v144;
  MEMORY[0x1EEE9AC00](&v44 - v144);
  v143 = &v44 - v144;
  MEMORY[0x1EEE9AC00](&v44 - v144);
  v145 = &v44 - v144;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v146 = v163;
  v147 = *(v163 - 8);
  v148 = v147;
  v152 = *(v147 + 64);
  MEMORY[0x1EEE9AC00](v163 - 8);
  v154 = (v152 + 15) & 0xFFFFFFFFFFFFFFF0;
  v149 = &v44 - v154;
  v232 = &v44 - v154;
  MEMORY[0x1EEE9AC00](&v44 - v154);
  v150 = &v44 - v154;
  v231 = &v44 - v154;
  MEMORY[0x1EEE9AC00](&v44 - v154);
  v151 = &v44 - v154;
  v230 = &v44 - v154;
  MEMORY[0x1EEE9AC00](v2);
  v153 = &v44 - v154;
  MEMORY[0x1EEE9AC00](&v44 - v154);
  v155 = &v44 - v154;
  v229 = &v44 - v154;
  v156 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1C70, &qword_1B0E9B078) - 8) + 64);
  MEMORY[0x1EEE9AC00](v160);
  v158 = (v156 + 15) & 0xFFFFFFFFFFFFFFF0;
  v157 = &v44 - v158;
  MEMORY[0x1EEE9AC00](v3);
  v159 = &v44 - v158;
  v228 = v1;
  v227 = sub_1B0E46A48();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1C78, &qword_1B0E9B080);
  v164 = sub_1B0E46A48();
  v162 = sub_1B0E45C48();
  v161 = v162;
  v165 = sub_1B074E39C();
  v226 = sub_1B0E445D8();
  v166 = *v1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v224 = v166;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1BE8, &qword_1B0ECD5D0);
  v167 = v168;
  sub_1B074B7E4();
  sub_1B0E45798();
  for (i = v169; ; i = v80)
  {
    v131 = i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1C80, &qword_1B0E9B088);
    sub_1B0E46518();
    v132 = v221;
    v133 = v222;
    v134 = v223;
    if (!v223)
    {
      break;
    }

    v119 = v132;
    v120 = v132 >> 40;
    v121 = HIWORD(v132);
    v122 = HIBYTE(v132);
    v123 = v133;
    v124 = v133 >> 8;
    v125 = v133 >> 16;
    v126 = v133 >> 24;
    v127 = DWORD1(v133);
    v128 = v133 >> 40;
    v129 = *(&v133 + 1) >> 40;
    v130 = v134;
    v4 = v136;
    v5 = BYTE13(v133);
    v6 = v134;
    *v202 = v132 & 0x1010101FFFFFFFFLL;
    *&v202[8] = v133 & 0xFFFF0101;
    v203 = BYTE4(v133) & 1;
    *(v136 + 37) = v128;
    v204 = v5;
    v205 = v6;
    v7 = *(v4 + 37);
    LOBYTE(v6) = v204;
    v199 = *&v202[4];
    LOBYTE(v200) = v203;
    *(v4 + 9) = v7;
    HIBYTE(v201) = v6;
    if (FlagsWithModifications.hasLocalChanges.getter(v199, v200, v201))
    {
      sub_1B074EC14(v202, &v173);
      v8 = *(v136 + 3);
      v172 = *(v136 + 5);
      v171 = v8;
      sub_1B0E452E8();
      v118 = v131;
    }

    else
    {
      v89 = *(v137 + *(_s21UnfilteredFlagChangesVMa(0) + 24));
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v194[1] = v89;
      v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1C48, &qword_1B0E9B038);
      v9 = sub_1B074EA1C();
      MEMORY[0x1B27270C0](v194, v88, v9);
      v90 = v194[0];

      v193 = v90;
      sub_1B074EC14(v202, &v192);
      v91 = *v202;
      v92 = v202[4];
      v93 = v202[5];
      v94 = v202[6];
      v95 = v202[7];
      v96 = v202[8];
      v97 = v202[9];
      v98 = v202[10];
      v99 = v202[11];
      v100 = v203;
      v101 = *(v136 + 37);
      v102 = v204;
      v103 = v205;
      v104 = 7;
      v10 = swift_allocObject();
      v11 = v92;
      v12 = v93;
      v13 = v94;
      v14 = v95;
      v15 = v96;
      v16 = v97;
      v17 = v98;
      v18 = v99;
      v19 = v100;
      v20 = v101;
      v21 = v102;
      v22 = v103;
      v105 = v10;
      *(v10 + 16) = v91;
      *(v10 + 20) = v11;
      *(v10 + 21) = v12;
      *(v10 + 22) = v13;
      *(v10 + 23) = v14;
      *(v10 + 24) = v15;
      *(v10 + 25) = v16;
      *(v10 + 26) = v17;
      *(v10 + 27) = v18;
      *(v10 + 28) = v19;
      *(v10 + 29) = v20;
      *(v10 + 37) = v21;
      *(v10 + 40) = v22;
      v23 = swift_allocObject();
      v24 = v105;
      v107 = v23;
      *(v23 + 16) = sub_1B074EC64;
      *(v23 + 24) = v24;
      v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1CA0, &qword_1B0E9B0A8);
      sub_1B074ECF8();
      v108 = &v193;
      sub_1B0E46718();

      sub_1B039E440(v108);
      v113 = v195;
      v109 = v195;
      v114 = v196;
      v110 = v196;
      v115 = v197;
      v111 = v197;
      v116 = v198;
      v112 = v198;
      v188 = v195;
      v189 = v196;
      v190 = v197;
      v191 = v198;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

      v180 = v113;
      v181 = v114;
      v182 = v115;
      v183 = v116;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1CB0, &qword_1B0E9B0B0);
      sub_1B0E464B8();
      for (j = v131; ; j = v84)
      {
        v86 = j;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1CB8, &qword_1B0E9B0B8);
        sub_1B0E464C8();
        v87 = v179;
        if (!v179)
        {
          break;
        }

        v85 = v87;
        v83 = v87;
        v84 = v86;
        v178 = v87;
        v25 = v87;
        v176 = *v202;
        v175 = v83;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1C98, &qword_1B0E9B0A0);
        v81 = &v174;
        v82 = sub_1B0E44728();
        MessageIdentifierSet.insert(_:)(&v177, &v176, v146);
        v82(v81, 0);
      }

      sub_1B074ED80();

      v118 = v86;
    }

    v80 = v118;
    sub_1B03F5C58(v202);
  }

  sub_1B039E440(v225);
  *&v219 = sub_1B07B681C();
  *(&v219 + 1) = v26;
  *&v220 = v27;
  *(&v220 + 1) = v28;
  v74 = _s21UnfilteredFlagChangesVMa(0);
  v75 = *(v137 + v74[6]);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v217[2] = v75;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1C48, &qword_1B0E9B038);
  v76 = v77;
  v78 = sub_1B074EAA4();
  sub_1B0E45798();
  for (k = v131; ; k = v57)
  {
    v65 = k;
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1C88, &unk_1B0E9B090);
    sub_1B0E46518();
    v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1C00, &qword_1B0E9AFF8);
    v29 = *(v69 - 8);
    v67 = *(v29 + 48);
    v68 = (v29 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    v30 = v67(v159, 1);
    v70 = v66;
    v71 = v69;
    v72 = v67;
    v73 = v68;
    if (v30 == 1)
    {
      break;
    }

    v64 = *(v159 + *(v69 + 48));
    v63 = v64;
    sub_1B074BA2C(v159, v155);
    v212 = v64;
    if (MessageIdentifierSet.isEmpty.getter() & 1) != 0 || (sub_1B03D08AC(v137 + v74[5], v153), v62 = MessageIdentifierSet.isSubset(of:)(v153), sub_1B03D09B8(v153), (v62))
    {
      v39 = v63;
      v210 = v63;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1C90, &qword_1B0E9E010);
      sub_1B0E454D8();

      sub_1B03D09B8(v155);
      v57 = v65;
    }

    else
    {
      v31 = v65;
      sub_1B03D08AC(v137 + v74[5], v153);
      MessageIdentifierSet.intersection(_:)(v153, v151);
      sub_1B03D09B8(v153);
      v32 = v63;
      v209 = v63;
      sub_1B0E44778();

      v60 = &v44;
      MEMORY[0x1EEE9AC00](&v44);
      *(&v44 - 2) = v151;
      sub_1B03F1A20(sub_1B074EB2C, (&v44 - 4), v33, MEMORY[0x1E69E73E0], v34, v35, v36);
      v61 = v31;
      if (v31)
      {
        __break(1u);
        return;
      }

      sub_1B074EB58(v143);
      v58 = *(v148 + 48);
      v59 = (v148 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
      if (v58(v145, 1, v146) == 1)
      {
        sub_1B03D08AC(v151, v150);
        if (v58(v145, 1, v146) != 1)
        {
          sub_1B074EB58(v145);
        }
      }

      else
      {
        sub_1B074BA2C(v145, v150);
      }

      if ((MessageIdentifierSet.isEmpty.getter() & 1) == 0)
      {
        if (MessageIdentifierSet.isSubset(of:)(v150))
        {
          v37 = v63;
          v206 = v63;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1C90, &qword_1B0E9E010);
          sub_1B0E454D8();
        }

        else
        {
          v38 = v63;
          sub_1B03D08AC(v150, v141);
          (*(v148 + 56))(v141, 0, 1, v146);
          v208[0] = v63;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1C98, &qword_1B0E9B0A0);
          sub_1B0E44788();
        }
      }

      sub_1B03D09B8(v150);
      sub_1B03D09B8(v151);

      sub_1B03D09B8(v155);
      v57 = v61;
    }
  }

  v51 = v73;
  v52 = v72;
  v53 = v71;
  v54 = v70;
  sub_1B039E440(v218);
  v55 = *(v137 + v74[7]);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v216 = v55;
  sub_1B0E45798();
  for (m = v65; ; m = v50)
  {
    v50 = m;
    sub_1B0E46518();
    if (v52(v157, 1, v53) == 1)
    {
      break;
    }

    v48 = *(v157 + *(v53 + 48));
    v47 = v48;
    sub_1B074BA2C(v157, v149);
    v215 = v48;
    sub_1B03D08AC(v137 + v74[5], v153);
    v49 = MessageIdentifierSet.isSubset(of:)(v153);
    sub_1B03D09B8(v153);
    if (v49)
    {
      v40 = v47;
      v213 = v47;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1C90, &qword_1B0E9E010);
      sub_1B0E454D8();
    }

    sub_1B03D09B8(v149);
  }

  sub_1B039E440(v217);
  v44 = v227;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v45 = v219;
  v46 = v220;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0741390(v44, v45, *(&v45 + 1), v46, *(&v46 + 1), v233);
  sub_1B071F9F0();
  sub_1B039E440(&v226);
  sub_1B039E440(&v227);
  v41 = v138;
  v42 = *v135;
  v43 = v135[1];
  *(v138 + 32) = v233[4];
  v41[1] = v43;
  *v41 = v42;
}

uint64_t sub_1B07374C8(uint64_t *a1)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v2 = sub_1B0E452A8();

  return v2;
}

void sub_1B0737514(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2170 = v2204;
  v2125 = v1;
  v2153 = v2;
  v2169 = v3;
  v2162 = 0;
  v2257 = 0;
  v2256 = 0;
  v2255 = 0;
  v2254 = 0;
  v2253 = 0;
  v2252 = 0;
  v2251 = 0;
  v2250 = 0;
  v2126 = 0u;
  v2249 = 0u;
  v2248 = 0u;
  v2239 = 0;
  v2238 = 0u;
  v2237 = 0u;
  v2236 = 0u;
  v2235 = 0u;
  v2234 = 0u;
  v2233 = 0u;
  v2232 = 0u;
  v2210 = 0u;
  v2209 = 0u;
  v2208 = 0u;
  v2207 = 0u;
  v2206 = 0u;
  v2202 = 0;
  v2171 = 0;
  v2200 = 0;
  v2199 = 0;
  v2193 = 0;
  v2191 = 0;
  v2185 = 0;
  v2184 = 0;
  v2183 = 0;
  v2182 = 0u;
  v2181 = 0u;
  v2178 = 0;
  v2177 = 0;
  v2127 = sub_1B0E439A8();
  v2128 = *(v2127 - 8);
  v2129 = v2128;
  v2130 = *(v2128 + 64);
  MEMORY[0x1EEE9AC00](0);
  v2132 = (v2130 + 15) & 0xFFFFFFFFFFFFFFF0;
  v2131 = v521 - v2132;
  MEMORY[0x1EEE9AC00](v4);
  v2133 = v521 - v2132;
  v2134 = _s6LoggerVMa_1(v5);
  v2136 = *(*(v2134 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2134 - 8);
  v2138 = (v2136 + 15) & 0xFFFFFFFFFFFFFFF0;
  v2135 = v521 - v2138;
  MEMORY[0x1EEE9AC00](v521 - v2138);
  v2137 = v521 - v2138;
  MEMORY[0x1EEE9AC00](v6);
  v2139 = v521 - v2138;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3920, &qword_1B0E9B070);
  v2140 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v2142 = (v2140 + 15) & 0xFFFFFFFFFFFFFFF0;
  v2141 = v521 - v2142;
  MEMORY[0x1EEE9AC00](v521 - v2142);
  v2143 = v521 - v2142;
  v2165 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v2144 = v2165;
  v2145 = *(v2165 - 8);
  v2146 = v2145;
  v2149 = *(v2145 + 64);
  v2147 = v2149;
  MEMORY[0x1EEE9AC00](v2162);
  v2151 = (v2149 + 15) & 0xFFFFFFFFFFFFFFF0;
  v2148 = v521 - v2151;
  v2257 = v521 - v2151;
  MEMORY[0x1EEE9AC00](v8);
  v2150 = v521 - v2151;
  MEMORY[0x1EEE9AC00](v9);
  v2152 = v521 - v2151;
  v2256 = v521 - v2151;
  v2154 = sub_1B0E42E68();
  v2155 = *(v2154 - 8);
  v2156 = v2155;
  v2158 = *(v2155 + 64);
  v2157 = v2158;
  MEMORY[0x1EEE9AC00](v2169);
  v2160 = (v2158 + 15) & 0xFFFFFFFFFFFFFFF0;
  v2159 = v521 - v2160;
  MEMORY[0x1EEE9AC00](v10);
  v2161 = v521 - v2160;
  v2255 = v521 - v2160;
  v2254 = v11;
  v2253 = v12;
  v2252 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1C78, &qword_1B0E9B080);
  v2166 = sub_1B0E46A48();
  v2164 = sub_1B0E45C48();
  v2163 = v2164;
  v2167 = sub_1B074E39C();
  v2251 = sub_1B0E445D8();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v2168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1CC0, &qword_1B0E9B0C0);
  sub_1B043CF70();
  sub_1B0E445C8();
  v13 = v2170;
  v14 = v2171;
  v15 = v2170[56];
  v16 = v2170[57];
  v2250 = v2258;
  v2170[51] = v16;
  v13[50] = v15;
  for (i = v14; ; i = v2109)
  {
    v2122 = i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1CC8, &qword_1B0E9B0C8);
    sub_1B0E446D8();
    v2123 = v2246;
    v2124 = v2247;
    if (!v2247)
    {
      break;
    }

    v2120 = v2123;
    v2121 = v2124;
    v2118 = v2124;
    v2117 = v2123;
    v2185 = v2123;
    v2184 = v2124;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B074F084();
    sub_1B0E45448();
    v2183 = v2261;
    v2182 = v2260;
    v2181 = v2259;
    for (j = v2122; ; j = v2113)
    {
      v2115 = j;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1CE0, &qword_1B0E9B0E0);
      sub_1B0E45508();
      v2116 = v2179;
      if (v2180)
      {
        break;
      }

      v2114 = v2116;
      v2113 = v2115;
      v2178 = v2116;
      v2112 = sub_1B07B72D0(v2116);
      v2177 = v2112;
      v17 = v2112;
      v2175 = v2117;
      v2174 = v2112;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1C98, &qword_1B0E9B0A0);
      v2110 = &v2173;
      v2111 = sub_1B0E44728();
      MessageIdentifierSet.insert(_:)(&v2176, &v2175, v2144);
      v2111(v2110, 0);
    }

    v2109 = v2115;
    sub_1B06B91B0();
  }

  sub_1B06B91B0();
  v2089 = *(v2156 + 16);
  v2088 = v2156 + 16;
  v2083 = v2089;
  v2084 = (v2156 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v2089(v2161, (v2125 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_mailboxURL), v2154);
  v2241[1] = v2153;
  v2086 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1B50, &unk_1B0E9DDF0);
  v2085 = v2086;
  v2087 = sub_1B071CEA8();
  MEMORY[0x1B27270C0](v2241, v2086);
  v2240 = v2241[0];
  v2089(v2159, v2161, v2154);
  v2090 = *(v2156 + 80);
  v2091 = (v2090 + 16) & ~v2090;
  v2098 = swift_allocObject();
  v2092 = *(v2156 + 32);
  v2093 = (v2156 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v2092(v2098 + v2091, v2159, v2154);
  v2095 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1B60, &unk_1B0EA09B0);
  v2094 = v2095;
  v2096 = sub_1B074AC8C();
  v2097 = sub_1B074AF08();
  v2099 = &v2240;
  sub_1B0E46718();

  sub_1B039E440(v2099);
  v2104 = v2242;
  v2100 = v2242;
  v2105 = v2243;
  v2101 = v2243;
  v2106 = v2244;
  v2102 = v2244;
  v2107 = v2245;
  v2103 = v2245;
  v2236 = v2242;
  v2237 = v2243;
  v2238 = v2244;
  v2239 = v2245;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  v2228 = v2104;
  v2229 = v2105;
  v2230 = v2106;
  v2231 = v2107;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1B88, &unk_1B0E9AFA0);
  sub_1B0E464B8();
  for (k = v2122; ; k = v1311)
  {
    v2081 = k;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1CD0, &unk_1B0E9B0D0);
    sub_1B0E464C8();
    v2082 = v2227;
    if (!v2227)
    {
      break;
    }

    v2080 = v2082;
    v2078 = v2082;
    v2193 = v2082;
    v18 = v2082;
    v2079 = [v2078 persistentID];

    v2192 = v2079;
    sub_1B0E44778();

    if ((*(v2146 + 48))(v2143, 1, v2144) == 1)
    {
      sub_1B074EB58(v2143);

      v1311 = v2081;
    }

    else
    {
      v19 = v2133;
      sub_1B074BA2C(v2143, v2152);
      v1992 = &OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_logger;
      sub_1B074B69C(v2125 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_logger, v2139);
      (*(v2129 + 16))(v19, v2139, v2127);
      sub_1B074B764(v2139);

      sub_1B074B69C(v2125 + *v1992, v2137);
      v20 = (v2137 + *(v2134 + 20));
      v1995 = *v20;
      v1996 = *(v20 + 1);
      v1997 = *(v20 + 1);
      v1998 = *(v20 + 4);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B074B764(v2137);

      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v1994 = 36;
      v2044 = 7;
      v21 = swift_allocObject();
      v22 = v1996;
      v23 = v1997;
      v24 = v1998;
      v2009 = v21;
      *(v21 + 16) = v1995;
      *(v21 + 20) = v22;
      *(v21 + 24) = v23;
      *(v21 + 32) = v24;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v25 = swift_allocObject();
      v26 = v1996;
      v27 = v1997;
      v28 = v1998;
      v1993 = v25;
      *(v25 + 16) = v1995;
      *(v25 + 20) = v26;
      *(v25 + 24) = v27;
      *(v25 + 32) = v28;

      v2043 = 32;
      v29 = swift_allocObject();
      v30 = v1993;
      v2021 = v29;
      *(v29 + 16) = sub_1B074E050;
      *(v29 + 24) = v30;
      sub_1B0394868();
      sub_1B0394868();

      v31 = swift_allocObject();
      v32 = v1996;
      v33 = v1997;
      v34 = v1998;
      v2030 = v31;
      *(v31 + 16) = v1995;
      *(v31 + 20) = v32;
      *(v31 + 24) = v33;
      *(v31 + 32) = v34;

      sub_1B03D08AC(v2152, v2150);
      v1999 = (*(v2146 + 80) + 16) & ~*(v2146 + 80);
      v2000 = swift_allocObject();
      sub_1B074BA2C(v2150, v2000 + v1999);

      v35 = swift_allocObject();
      v36 = v2000;
      v2035 = v35;
      *(v35 + 16) = sub_1B074EF18;
      *(v35 + 24) = v36;

      v37 = v2078;
      v2048 = 24;
      v2045 = swift_allocObject();
      *(v2045 + 16) = v2078;
      v2077 = sub_1B0E43988();
      v2001 = v2077;
      v2076 = sub_1B0E458C8();
      v2002 = v2076;
      v2039 = 17;
      v2049 = swift_allocObject();
      v2003 = v2049;
      v2012 = 16;
      *(v2049 + 16) = 16;
      v2050 = swift_allocObject();
      v2004 = v2050;
      v2019 = 4;
      *(v2050 + 16) = 4;
      v38 = swift_allocObject();
      v2005 = v38;
      *(v38 + 16) = sub_1B0394C30;
      v2015 = 0;
      *(v38 + 24) = 0;
      v39 = swift_allocObject();
      v40 = v2005;
      v2051 = v39;
      v2006 = v39;
      *(v39 + 16) = sub_1B0394C24;
      *(v39 + 24) = v40;
      v2052 = swift_allocObject();
      v2007 = v2052;
      v2038 = 0;
      *(v2052 + 16) = 0;
      v2053 = swift_allocObject();
      v2008 = v2053;
      *(v2053 + 16) = 1;
      v41 = swift_allocObject();
      v42 = v2009;
      v2010 = v41;
      *(v41 + 16) = sub_1B074DFFC;
      *(v41 + 24) = v42;
      v43 = swift_allocObject();
      v44 = v2010;
      v2054 = v43;
      v2011 = v43;
      *(v43 + 16) = sub_1B039BA88;
      *(v43 + 24) = v44;
      v2055 = swift_allocObject();
      v2013 = v2055;
      *(v2055 + 16) = v2012;
      v2056 = swift_allocObject();
      v2014 = v2056;
      *(v2056 + 16) = v2019;
      v45 = swift_allocObject();
      v46 = v2015;
      v2016 = v45;
      *(v45 + 16) = sub_1B039BB94;
      *(v45 + 24) = v46;
      v47 = swift_allocObject();
      v48 = v2016;
      v2057 = v47;
      v2017 = v47;
      *(v47 + 16) = sub_1B0394C24;
      *(v47 + 24) = v48;
      v2058 = swift_allocObject();
      v2018 = v2058;
      *(v2058 + 16) = v2038;
      v2059 = swift_allocObject();
      v2020 = v2059;
      *(v2059 + 16) = v2019;
      v49 = swift_allocObject();
      v50 = v2021;
      v2022 = v49;
      *(v49 + 16) = sub_1B039BBA0;
      *(v49 + 24) = v50;
      v51 = swift_allocObject();
      v52 = v2022;
      v2060 = v51;
      v2023 = v51;
      *(v51 + 16) = sub_1B039BC08;
      *(v51 + 24) = v52;
      v2061 = swift_allocObject();
      v2024 = v2061;
      *(v2061 + 16) = 112;
      v2062 = swift_allocObject();
      v2025 = v2062;
      v2041 = 8;
      *(v2062 + 16) = 8;
      v2026 = swift_allocObject();
      *(v2026 + 16) = 0x786F626C69616DLL;
      v53 = swift_allocObject();
      v54 = v2026;
      v2063 = v53;
      v2027 = v53;
      *(v53 + 16) = sub_1B06BA324;
      *(v53 + 24) = v54;
      v2064 = swift_allocObject();
      v2028 = v2064;
      *(v2064 + 16) = 37;
      v2065 = swift_allocObject();
      v2029 = v2065;
      *(v2065 + 16) = v2041;
      v55 = swift_allocObject();
      v56 = v2030;
      v2031 = v55;
      *(v55 + 16) = sub_1B074E0E4;
      *(v55 + 24) = v56;
      v57 = swift_allocObject();
      v58 = v2031;
      v2066 = v57;
      v2032 = v57;
      *(v57 + 16) = sub_1B039BCF8;
      *(v57 + 24) = v58;
      v2067 = swift_allocObject();
      v2033 = v2067;
      *(v2067 + 16) = 34;
      v2068 = swift_allocObject();
      v2034 = v2068;
      *(v2068 + 16) = v2041;
      v59 = swift_allocObject();
      v60 = v2035;
      v2036 = v59;
      *(v59 + 16) = sub_1B074EF98;
      *(v59 + 24) = v60;
      v61 = swift_allocObject();
      v62 = v2036;
      v2069 = v61;
      v2037 = v61;
      *(v61 + 16) = sub_1B039BCF8;
      *(v61 + 24) = v62;
      v2070 = swift_allocObject();
      v2040 = v2070;
      *(v2070 + 16) = v2038;
      v2071 = swift_allocObject();
      v2042 = v2071;
      *(v2071 + 16) = v2041;
      v63 = swift_allocObject();
      v64 = v2045;
      v2046 = v63;
      *(v63 + 16) = sub_1B074EFA4;
      *(v63 + 24) = v64;
      v65 = swift_allocObject();
      v66 = v2046;
      v2074 = v65;
      v2047 = v65;
      *(v65 + 16) = sub_1B06BCD8C;
      *(v65 + 24) = v66;
      v2075 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v2072 = sub_1B0E46A48();
      v2073 = v67;

      v68 = v2049;
      v69 = v2073;
      *v2073 = sub_1B0398F5C;
      v69[1] = v68;

      v70 = v2050;
      v71 = v2073;
      v2073[2] = sub_1B0398F5C;
      v71[3] = v70;

      v72 = v2051;
      v73 = v2073;
      v2073[4] = sub_1B0399178;
      v73[5] = v72;

      v74 = v2052;
      v75 = v2073;
      v2073[6] = sub_1B0398F5C;
      v75[7] = v74;

      v76 = v2053;
      v77 = v2073;
      v2073[8] = sub_1B0398F5C;
      v77[9] = v76;

      v78 = v2054;
      v79 = v2073;
      v2073[10] = sub_1B039BA94;
      v79[11] = v78;

      v80 = v2055;
      v81 = v2073;
      v2073[12] = sub_1B0398F5C;
      v81[13] = v80;

      v82 = v2056;
      v83 = v2073;
      v2073[14] = sub_1B0398F5C;
      v83[15] = v82;

      v84 = v2057;
      v85 = v2073;
      v2073[16] = sub_1B0399178;
      v85[17] = v84;

      v86 = v2058;
      v87 = v2073;
      v2073[18] = sub_1B0398F5C;
      v87[19] = v86;

      v88 = v2059;
      v89 = v2073;
      v2073[20] = sub_1B0398F5C;
      v89[21] = v88;

      v90 = v2060;
      v91 = v2073;
      v2073[22] = sub_1B03991EC;
      v91[23] = v90;

      v92 = v2061;
      v93 = v2073;
      v2073[24] = sub_1B0398F5C;
      v93[25] = v92;

      v94 = v2062;
      v95 = v2073;
      v2073[26] = sub_1B0398F5C;
      v95[27] = v94;

      v96 = v2063;
      v97 = v2073;
      v2073[28] = sub_1B03993BC;
      v97[29] = v96;

      v98 = v2064;
      v99 = v2073;
      v2073[30] = sub_1B0398F5C;
      v99[31] = v98;

      v100 = v2065;
      v101 = v2073;
      v2073[32] = sub_1B0398F5C;
      v101[33] = v100;

      v102 = v2066;
      v103 = v2073;
      v2073[34] = sub_1B039BCEC;
      v103[35] = v102;

      v104 = v2067;
      v105 = v2073;
      v2073[36] = sub_1B0398F5C;
      v105[37] = v104;

      v106 = v2068;
      v107 = v2073;
      v2073[38] = sub_1B0398F5C;
      v107[39] = v106;

      v108 = v2069;
      v109 = v2073;
      v2073[40] = sub_1B039BCEC;
      v109[41] = v108;

      v110 = v2070;
      v111 = v2073;
      v2073[42] = sub_1B0398F5C;
      v111[43] = v110;

      v112 = v2071;
      v113 = v2073;
      v2073[44] = sub_1B0398F5C;
      v113[45] = v112;

      v114 = v2073;
      v115 = v2074;
      v2073[46] = sub_1B03992D4;
      v114[47] = v115;
      sub_1B0394964();

      if (os_log_type_enabled(v2077, v2076))
      {
        v116 = v2011;
        v117 = v2008;
        v118 = v2007;
        v119 = v2006;
        v120 = v2004;
        v121 = v2003;
        v122 = v2081;
        v1962 = sub_1B0E45D78();
        v1959 = v1962;
        v1960 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v1963 = sub_1B03949A8(0, v1960, v1960);
        v1961 = v1963;
        v1964 = sub_1B03949A8(2, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v2190 = v1962;
        v2189 = v1963;
        v2188 = v1964;
        v1965 = &v2190;
        sub_1B0394A48(3, &v2190);
        sub_1B0394A48(8, v1965);
        v2186 = sub_1B0398F5C;
        v2187 = v121;
        sub_1B03949FC(&v2186, v1965, &v2189, &v2188);
        v1966 = v122;
        v1967 = v121;
        v1968 = v120;
        v1969 = v119;
        v1970 = v118;
        v1971 = v117;
        v1972 = v116;
        v1973 = v2013;
        v1974 = v2014;
        v1975 = v2017;
        v1976 = v2018;
        v1977 = v2020;
        v1978 = v2023;
        v1979 = v2024;
        v1980 = v2025;
        v1981 = v2027;
        v1982 = v2028;
        v1983 = v2029;
        v1984 = v2032;
        v1985 = v2033;
        v1986 = v2034;
        v1987 = v2037;
        v1988 = v2040;
        v1989 = v2042;
        v1990 = v2047;
        v1991 = v122;
        if (v122)
        {
          v1933 = v1967;
          v1934 = v1968;
          v1935 = v1969;
          v1936 = v1970;
          v1937 = v1971;
          v1938 = v1972;
          v1939 = v1973;
          v1940 = v1974;
          v1941 = v1975;
          v1942 = v1976;
          v1943 = v1977;
          v1944 = v1978;
          v1945 = v1979;
          v1946 = v1980;
          v1947 = v1981;
          v1948 = v1982;
          v1949 = v1983;
          v1950 = v1984;
          v1951 = v1985;
          v1952 = v1986;
          v1953 = v1987;
          v1954 = v1988;
          v1955 = v1989;
          v1956 = v1990;
          v1957 = 0;
          v1334 = v1990;
          v1333 = v1989;
          v1332 = v1988;
          v1331 = v1987;
          v1330 = v1986;
          v1329 = v1985;
          v1328 = v1984;
          v1327 = v1983;
          v1326 = v1982;
          v1325 = v1981;
          v1324 = v1980;
          v1323 = v1979;
          v1322 = v1978;
          v1321 = v1977;
          v1320 = v1976;
          v1319 = v1975;
          v1318 = v1974;
          v1317 = v1973;
          v1316 = v1972;
          v1315 = v1971;
          v1314 = v1970;
          v1313 = v1969;
          v1312 = v1968;

          __break(1u);
        }

        else
        {
          v124 = v2011;
          v125 = v2008;
          v126 = v2007;
          v127 = v2006;
          v128 = v2004;
          v129 = v2003;
          v2186 = sub_1B0398F5C;
          v2187 = v2004;
          sub_1B03949FC(&v2186, &v2190, &v2189, &v2188);
          v1907 = 0;
          v1908 = v129;
          v1909 = v128;
          v1910 = v127;
          v1911 = v126;
          v1912 = v125;
          v1913 = v124;
          v1914 = v2013;
          v1915 = v2014;
          v1916 = v2017;
          v1917 = v2018;
          v1918 = v2020;
          v1919 = v2023;
          v1920 = v2024;
          v1921 = v2025;
          v1922 = v2027;
          v1923 = v2028;
          v1924 = v2029;
          v1925 = v2032;
          v1926 = v2033;
          v1927 = v2034;
          v1928 = v2037;
          v1929 = v2040;
          v1930 = v2042;
          v1931 = v2047;
          v1932 = 0;
          v130 = v2011;
          v131 = v2008;
          v132 = v2007;
          v133 = v2006;
          v134 = v2004;
          v135 = v2003;
          v2186 = sub_1B0399178;
          v2187 = v2006;
          sub_1B03949FC(&v2186, &v2190, &v2189, &v2188);
          v1881 = 0;
          v1882 = v135;
          v1883 = v134;
          v1884 = v133;
          v1885 = v132;
          v1886 = v131;
          v1887 = v130;
          v1888 = v2013;
          v1889 = v2014;
          v1890 = v2017;
          v1891 = v2018;
          v1892 = v2020;
          v1893 = v2023;
          v1894 = v2024;
          v1895 = v2025;
          v1896 = v2027;
          v1897 = v2028;
          v1898 = v2029;
          v1899 = v2032;
          v1900 = v2033;
          v1901 = v2034;
          v1902 = v2037;
          v1903 = v2040;
          v1904 = v2042;
          v1905 = v2047;
          v1906 = 0;
          v136 = v2011;
          v137 = v2008;
          v138 = v2007;
          v139 = v2006;
          v140 = v2004;
          v141 = v2003;
          v2186 = sub_1B0398F5C;
          v2187 = v2007;
          sub_1B03949FC(&v2186, &v2190, &v2189, &v2188);
          v1855 = 0;
          v1856 = v141;
          v1857 = v140;
          v1858 = v139;
          v1859 = v138;
          v1860 = v137;
          v1861 = v136;
          v1862 = v2013;
          v1863 = v2014;
          v1864 = v2017;
          v1865 = v2018;
          v1866 = v2020;
          v1867 = v2023;
          v1868 = v2024;
          v1869 = v2025;
          v1870 = v2027;
          v1871 = v2028;
          v1872 = v2029;
          v1873 = v2032;
          v1874 = v2033;
          v1875 = v2034;
          v1876 = v2037;
          v1877 = v2040;
          v1878 = v2042;
          v1879 = v2047;
          v1880 = 0;
          v142 = v2011;
          v143 = v2008;
          v144 = v2007;
          v145 = v2006;
          v146 = v2004;
          v147 = v2003;
          v2186 = sub_1B0398F5C;
          v2187 = v2008;
          sub_1B03949FC(&v2186, &v2190, &v2189, &v2188);
          v1829 = 0;
          v1830 = v147;
          v1831 = v146;
          v1832 = v145;
          v1833 = v144;
          v1834 = v143;
          v1835 = v142;
          v1836 = v2013;
          v1837 = v2014;
          v1838 = v2017;
          v1839 = v2018;
          v1840 = v2020;
          v1841 = v2023;
          v1842 = v2024;
          v1843 = v2025;
          v1844 = v2027;
          v1845 = v2028;
          v1846 = v2029;
          v1847 = v2032;
          v1848 = v2033;
          v1849 = v2034;
          v1850 = v2037;
          v1851 = v2040;
          v1852 = v2042;
          v1853 = v2047;
          v1854 = 0;
          v148 = v2011;
          v149 = v2008;
          v150 = v2007;
          v151 = v2006;
          v152 = v2004;
          v153 = v2003;
          v2186 = sub_1B039BA94;
          v2187 = v2011;
          sub_1B03949FC(&v2186, &v2190, &v2189, &v2188);
          v1803 = 0;
          v1804 = v153;
          v1805 = v152;
          v1806 = v151;
          v1807 = v150;
          v1808 = v149;
          v1809 = v148;
          v1810 = v2013;
          v1811 = v2014;
          v1812 = v2017;
          v1813 = v2018;
          v1814 = v2020;
          v1815 = v2023;
          v1816 = v2024;
          v1817 = v2025;
          v1818 = v2027;
          v1819 = v2028;
          v1820 = v2029;
          v1821 = v2032;
          v1822 = v2033;
          v1823 = v2034;
          v1824 = v2037;
          v1825 = v2040;
          v1826 = v2042;
          v1827 = v2047;
          v1828 = 0;
          v154 = v2011;
          v155 = v2008;
          v156 = v2007;
          v157 = v2006;
          v158 = v2004;
          v159 = v2003;
          v2186 = sub_1B0398F5C;
          v2187 = v2013;
          sub_1B03949FC(&v2186, &v2190, &v2189, &v2188);
          v1777 = 0;
          v1778 = v159;
          v1779 = v158;
          v1780 = v157;
          v1781 = v156;
          v1782 = v155;
          v1783 = v154;
          v1784 = v2013;
          v1785 = v2014;
          v1786 = v2017;
          v1787 = v2018;
          v1788 = v2020;
          v1789 = v2023;
          v1790 = v2024;
          v1791 = v2025;
          v1792 = v2027;
          v1793 = v2028;
          v1794 = v2029;
          v1795 = v2032;
          v1796 = v2033;
          v1797 = v2034;
          v1798 = v2037;
          v1799 = v2040;
          v1800 = v2042;
          v1801 = v2047;
          v1802 = 0;
          v160 = v2011;
          v161 = v2008;
          v162 = v2007;
          v163 = v2006;
          v164 = v2004;
          v165 = v2003;
          v2186 = sub_1B0398F5C;
          v2187 = v2014;
          sub_1B03949FC(&v2186, &v2190, &v2189, &v2188);
          v1751 = 0;
          v1752 = v165;
          v1753 = v164;
          v1754 = v163;
          v1755 = v162;
          v1756 = v161;
          v1757 = v160;
          v1758 = v2013;
          v1759 = v2014;
          v1760 = v2017;
          v1761 = v2018;
          v1762 = v2020;
          v1763 = v2023;
          v1764 = v2024;
          v1765 = v2025;
          v1766 = v2027;
          v1767 = v2028;
          v1768 = v2029;
          v1769 = v2032;
          v1770 = v2033;
          v1771 = v2034;
          v1772 = v2037;
          v1773 = v2040;
          v1774 = v2042;
          v1775 = v2047;
          v1776 = 0;
          v166 = v2011;
          v167 = v2008;
          v168 = v2007;
          v169 = v2006;
          v170 = v2004;
          v171 = v2003;
          v2186 = sub_1B0399178;
          v2187 = v2017;
          sub_1B03949FC(&v2186, &v2190, &v2189, &v2188);
          v1725 = 0;
          v1726 = v171;
          v1727 = v170;
          v1728 = v169;
          v1729 = v168;
          v1730 = v167;
          v1731 = v166;
          v1732 = v2013;
          v1733 = v2014;
          v1734 = v2017;
          v1735 = v2018;
          v1736 = v2020;
          v1737 = v2023;
          v1738 = v2024;
          v1739 = v2025;
          v1740 = v2027;
          v1741 = v2028;
          v1742 = v2029;
          v1743 = v2032;
          v1744 = v2033;
          v1745 = v2034;
          v1746 = v2037;
          v1747 = v2040;
          v1748 = v2042;
          v1749 = v2047;
          v1750 = 0;
          v172 = v2011;
          v173 = v2008;
          v174 = v2007;
          v175 = v2006;
          v176 = v2004;
          v177 = v2003;
          v2186 = sub_1B0398F5C;
          v2187 = v2018;
          sub_1B03949FC(&v2186, &v2190, &v2189, &v2188);
          v1699 = 0;
          v1700 = v177;
          v1701 = v176;
          v1702 = v175;
          v1703 = v174;
          v1704 = v173;
          v1705 = v172;
          v1706 = v2013;
          v1707 = v2014;
          v1708 = v2017;
          v1709 = v2018;
          v1710 = v2020;
          v1711 = v2023;
          v1712 = v2024;
          v1713 = v2025;
          v1714 = v2027;
          v1715 = v2028;
          v1716 = v2029;
          v1717 = v2032;
          v1718 = v2033;
          v1719 = v2034;
          v1720 = v2037;
          v1721 = v2040;
          v1722 = v2042;
          v1723 = v2047;
          v1724 = 0;
          v178 = v2011;
          v179 = v2008;
          v180 = v2007;
          v181 = v2006;
          v182 = v2004;
          v183 = v2003;
          v2186 = sub_1B0398F5C;
          v2187 = v2020;
          sub_1B03949FC(&v2186, &v2190, &v2189, &v2188);
          v1673 = 0;
          v1674 = v183;
          v1675 = v182;
          v1676 = v181;
          v1677 = v180;
          v1678 = v179;
          v1679 = v178;
          v1680 = v2013;
          v1681 = v2014;
          v1682 = v2017;
          v1683 = v2018;
          v1684 = v2020;
          v1685 = v2023;
          v1686 = v2024;
          v1687 = v2025;
          v1688 = v2027;
          v1689 = v2028;
          v1690 = v2029;
          v1691 = v2032;
          v1692 = v2033;
          v1693 = v2034;
          v1694 = v2037;
          v1695 = v2040;
          v1696 = v2042;
          v1697 = v2047;
          v1698 = 0;
          v184 = v2011;
          v185 = v2008;
          v186 = v2007;
          v187 = v2006;
          v188 = v2004;
          v189 = v2003;
          v2186 = sub_1B03991EC;
          v2187 = v2023;
          sub_1B03949FC(&v2186, &v2190, &v2189, &v2188);
          v1647 = 0;
          v1648 = v189;
          v1649 = v188;
          v1650 = v187;
          v1651 = v186;
          v1652 = v185;
          v1653 = v184;
          v1654 = v2013;
          v1655 = v2014;
          v1656 = v2017;
          v1657 = v2018;
          v1658 = v2020;
          v1659 = v2023;
          v1660 = v2024;
          v1661 = v2025;
          v1662 = v2027;
          v1663 = v2028;
          v1664 = v2029;
          v1665 = v2032;
          v1666 = v2033;
          v1667 = v2034;
          v1668 = v2037;
          v1669 = v2040;
          v1670 = v2042;
          v1671 = v2047;
          v1672 = 0;
          v190 = v2011;
          v191 = v2008;
          v192 = v2007;
          v193 = v2006;
          v194 = v2004;
          v195 = v2003;
          v2186 = sub_1B0398F5C;
          v2187 = v2024;
          sub_1B03949FC(&v2186, &v2190, &v2189, &v2188);
          v1621 = 0;
          v1622 = v195;
          v1623 = v194;
          v1624 = v193;
          v1625 = v192;
          v1626 = v191;
          v1627 = v190;
          v1628 = v2013;
          v1629 = v2014;
          v1630 = v2017;
          v1631 = v2018;
          v1632 = v2020;
          v1633 = v2023;
          v1634 = v2024;
          v1635 = v2025;
          v1636 = v2027;
          v1637 = v2028;
          v1638 = v2029;
          v1639 = v2032;
          v1640 = v2033;
          v1641 = v2034;
          v1642 = v2037;
          v1643 = v2040;
          v1644 = v2042;
          v1645 = v2047;
          v1646 = 0;
          v196 = v2011;
          v197 = v2008;
          v198 = v2007;
          v199 = v2006;
          v200 = v2004;
          v201 = v2003;
          v2186 = sub_1B0398F5C;
          v2187 = v2025;
          sub_1B03949FC(&v2186, &v2190, &v2189, &v2188);
          v1595 = 0;
          v1596 = v201;
          v1597 = v200;
          v1598 = v199;
          v1599 = v198;
          v1600 = v197;
          v1601 = v196;
          v1602 = v2013;
          v1603 = v2014;
          v1604 = v2017;
          v1605 = v2018;
          v1606 = v2020;
          v1607 = v2023;
          v1608 = v2024;
          v1609 = v2025;
          v1610 = v2027;
          v1611 = v2028;
          v1612 = v2029;
          v1613 = v2032;
          v1614 = v2033;
          v1615 = v2034;
          v1616 = v2037;
          v1617 = v2040;
          v1618 = v2042;
          v1619 = v2047;
          v1620 = 0;
          v202 = v2011;
          v203 = v2008;
          v204 = v2007;
          v205 = v2006;
          v206 = v2004;
          v207 = v2003;
          v2186 = sub_1B03993BC;
          v2187 = v2027;
          sub_1B03949FC(&v2186, &v2190, &v2189, &v2188);
          v1569 = 0;
          v1570 = v207;
          v1571 = v206;
          v1572 = v205;
          v1573 = v204;
          v1574 = v203;
          v1575 = v202;
          v1576 = v2013;
          v1577 = v2014;
          v1578 = v2017;
          v1579 = v2018;
          v1580 = v2020;
          v1581 = v2023;
          v1582 = v2024;
          v1583 = v2025;
          v1584 = v2027;
          v1585 = v2028;
          v1586 = v2029;
          v1587 = v2032;
          v1588 = v2033;
          v1589 = v2034;
          v1590 = v2037;
          v1591 = v2040;
          v1592 = v2042;
          v1593 = v2047;
          v1594 = 0;
          v208 = v2011;
          v209 = v2008;
          v210 = v2007;
          v211 = v2006;
          v212 = v2004;
          v213 = v2003;
          v2186 = sub_1B0398F5C;
          v2187 = v2028;
          sub_1B03949FC(&v2186, &v2190, &v2189, &v2188);
          v1543 = 0;
          v1544 = v213;
          v1545 = v212;
          v1546 = v211;
          v1547 = v210;
          v1548 = v209;
          v1549 = v208;
          v1550 = v2013;
          v1551 = v2014;
          v1552 = v2017;
          v1553 = v2018;
          v1554 = v2020;
          v1555 = v2023;
          v1556 = v2024;
          v1557 = v2025;
          v1558 = v2027;
          v1559 = v2028;
          v1560 = v2029;
          v1561 = v2032;
          v1562 = v2033;
          v1563 = v2034;
          v1564 = v2037;
          v1565 = v2040;
          v1566 = v2042;
          v1567 = v2047;
          v1568 = 0;
          v214 = v2011;
          v215 = v2008;
          v216 = v2007;
          v217 = v2006;
          v218 = v2004;
          v219 = v2003;
          v2186 = sub_1B0398F5C;
          v2187 = v2029;
          sub_1B03949FC(&v2186, &v2190, &v2189, &v2188);
          v1517 = 0;
          v1518 = v219;
          v1519 = v218;
          v1520 = v217;
          v1521 = v216;
          v1522 = v215;
          v1523 = v214;
          v1524 = v2013;
          v1525 = v2014;
          v1526 = v2017;
          v1527 = v2018;
          v1528 = v2020;
          v1529 = v2023;
          v1530 = v2024;
          v1531 = v2025;
          v1532 = v2027;
          v1533 = v2028;
          v1534 = v2029;
          v1535 = v2032;
          v1536 = v2033;
          v1537 = v2034;
          v1538 = v2037;
          v1539 = v2040;
          v1540 = v2042;
          v1541 = v2047;
          v1542 = 0;
          v220 = v2011;
          v221 = v2008;
          v222 = v2007;
          v223 = v2006;
          v224 = v2004;
          v225 = v2003;
          v2186 = sub_1B039BCEC;
          v2187 = v2032;
          sub_1B03949FC(&v2186, &v2190, &v2189, &v2188);
          v1491 = 0;
          v1492 = v225;
          v1493 = v224;
          v1494 = v223;
          v1495 = v222;
          v1496 = v221;
          v1497 = v220;
          v1498 = v2013;
          v1499 = v2014;
          v1500 = v2017;
          v1501 = v2018;
          v1502 = v2020;
          v1503 = v2023;
          v1504 = v2024;
          v1505 = v2025;
          v1506 = v2027;
          v1507 = v2028;
          v1508 = v2029;
          v1509 = v2032;
          v1510 = v2033;
          v1511 = v2034;
          v1512 = v2037;
          v1513 = v2040;
          v1514 = v2042;
          v1515 = v2047;
          v1516 = 0;
          v226 = v2011;
          v227 = v2008;
          v228 = v2007;
          v229 = v2006;
          v230 = v2004;
          v231 = v2003;
          v2186 = sub_1B0398F5C;
          v2187 = v2033;
          sub_1B03949FC(&v2186, &v2190, &v2189, &v2188);
          v1465 = 0;
          v1466 = v231;
          v1467 = v230;
          v1468 = v229;
          v1469 = v228;
          v1470 = v227;
          v1471 = v226;
          v1472 = v2013;
          v1473 = v2014;
          v1474 = v2017;
          v1475 = v2018;
          v1476 = v2020;
          v1477 = v2023;
          v1478 = v2024;
          v1479 = v2025;
          v1480 = v2027;
          v1481 = v2028;
          v1482 = v2029;
          v1483 = v2032;
          v1484 = v2033;
          v1485 = v2034;
          v1486 = v2037;
          v1487 = v2040;
          v1488 = v2042;
          v1489 = v2047;
          v1490 = 0;
          v232 = v2011;
          v233 = v2008;
          v234 = v2007;
          v235 = v2006;
          v236 = v2004;
          v237 = v2003;
          v2186 = sub_1B0398F5C;
          v2187 = v2034;
          sub_1B03949FC(&v2186, &v2190, &v2189, &v2188);
          v1439 = 0;
          v1440 = v237;
          v1441 = v236;
          v1442 = v235;
          v1443 = v234;
          v1444 = v233;
          v1445 = v232;
          v1446 = v2013;
          v1447 = v2014;
          v1448 = v2017;
          v1449 = v2018;
          v1450 = v2020;
          v1451 = v2023;
          v1452 = v2024;
          v1453 = v2025;
          v1454 = v2027;
          v1455 = v2028;
          v1456 = v2029;
          v1457 = v2032;
          v1458 = v2033;
          v1459 = v2034;
          v1460 = v2037;
          v1461 = v2040;
          v1462 = v2042;
          v1463 = v2047;
          v1464 = 0;
          v238 = v2011;
          v239 = v2008;
          v240 = v2007;
          v241 = v2006;
          v242 = v2004;
          v243 = v2003;
          v2186 = sub_1B039BCEC;
          v2187 = v2037;
          sub_1B03949FC(&v2186, &v2190, &v2189, &v2188);
          v1413 = 0;
          v1414 = v243;
          v1415 = v242;
          v1416 = v241;
          v1417 = v240;
          v1418 = v239;
          v1419 = v238;
          v1420 = v2013;
          v1421 = v2014;
          v1422 = v2017;
          v1423 = v2018;
          v1424 = v2020;
          v1425 = v2023;
          v1426 = v2024;
          v1427 = v2025;
          v1428 = v2027;
          v1429 = v2028;
          v1430 = v2029;
          v1431 = v2032;
          v1432 = v2033;
          v1433 = v2034;
          v1434 = v2037;
          v1435 = v2040;
          v1436 = v2042;
          v1437 = v2047;
          v1438 = 0;
          v244 = v2011;
          v245 = v2008;
          v246 = v2007;
          v247 = v2006;
          v248 = v2004;
          v249 = v2003;
          v2186 = sub_1B0398F5C;
          v2187 = v2040;
          sub_1B03949FC(&v2186, &v2190, &v2189, &v2188);
          v1387 = 0;
          v1388 = v249;
          v1389 = v248;
          v1390 = v247;
          v1391 = v246;
          v1392 = v245;
          v1393 = v244;
          v1394 = v2013;
          v1395 = v2014;
          v1396 = v2017;
          v1397 = v2018;
          v1398 = v2020;
          v1399 = v2023;
          v1400 = v2024;
          v1401 = v2025;
          v1402 = v2027;
          v1403 = v2028;
          v1404 = v2029;
          v1405 = v2032;
          v1406 = v2033;
          v1407 = v2034;
          v1408 = v2037;
          v1409 = v2040;
          v1410 = v2042;
          v1411 = v2047;
          v1412 = 0;
          v250 = v2011;
          v251 = v2008;
          v252 = v2007;
          v253 = v2006;
          v254 = v2004;
          v255 = v2003;
          v2186 = sub_1B0398F5C;
          v2187 = v2042;
          sub_1B03949FC(&v2186, &v2190, &v2189, &v2188);
          v1361 = 0;
          v1362 = v255;
          v1363 = v254;
          v1364 = v253;
          v1365 = v252;
          v1366 = v251;
          v1367 = v250;
          v1368 = v2013;
          v1369 = v2014;
          v1370 = v2017;
          v1371 = v2018;
          v1372 = v2020;
          v1373 = v2023;
          v1374 = v2024;
          v1375 = v2025;
          v1376 = v2027;
          v1377 = v2028;
          v1378 = v2029;
          v1379 = v2032;
          v1380 = v2033;
          v1381 = v2034;
          v1382 = v2037;
          v1383 = v2040;
          v1384 = v2042;
          v1385 = v2047;
          v1386 = 0;
          v256 = v2011;
          v257 = v2008;
          v258 = v2007;
          v259 = v2006;
          v260 = v2004;
          v261 = v2003;
          v2186 = sub_1B03992D4;
          v2187 = v2047;
          sub_1B03949FC(&v2186, &v2190, &v2189, &v2188);
          v1335 = 0;
          v1336 = v261;
          v1337 = v260;
          v1338 = v259;
          v1339 = v258;
          v1340 = v257;
          v1341 = v256;
          v1342 = v2013;
          v1343 = v2014;
          v1344 = v2017;
          v1345 = v2018;
          v1346 = v2020;
          v1347 = v2023;
          v1348 = v2024;
          v1349 = v2025;
          v1350 = v2027;
          v1351 = v2028;
          v1352 = v2029;
          v1353 = v2032;
          v1354 = v2033;
          v1355 = v2034;
          v1356 = v2037;
          v1357 = v2040;
          v1358 = v2042;
          v1359 = v2047;
          v1360 = 0;
          _os_log_impl(&dword_1B0389000, v2001, v2002, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Uploaded flags for UIDs %{public}s for change %lld", v1959, 0x3Fu);
          sub_1B03998A8(v1961, 0, v1960);
          sub_1B03998A8(v1964, 2, MEMORY[0x1E69E7CA0] + 8);
          sub_1B0E45D58();

          v1958 = v1335;
        }
      }

      else
      {
        v123 = v2081;

        v1958 = v123;
      }

      v1310 = v1958;

      (*(v2129 + 8))(v2133, v2127);
      sub_1B074F018();
      v1307 = v521;
      MEMORY[0x1EEE9AC00](v521);
      v521[-2] = v262;
      v1309 = sub_1B074074C(sub_1B074F07C, &v521[-4]);
      v2191 = v1309;
      v1308 = *(v2125 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_messageChangeManager);
      v263 = v1308;
      [v1308 persistResults:v1309 forAction:v2078];

      sub_1B03D09B8(v2152);
      v1311 = v1310;
    }
  }

  sub_1B074ED80();
  v2219[1] = v2153;
  MEMORY[0x1B27270C0](v2219, v2085, v2087);
  v2218 = v2219[0];
  v2083(v2159, v2161, v2154);
  v1301 = (v2090 + 16) & ~v2090;
  v1302 = swift_allocObject();
  v2092(v1302 + v1301, v2159, v2154);
  v1304 = 0;
  sub_1B074AEA4();
  v1303 = &v2218;
  sub_1B0E46718();

  sub_1B039E440(v1303);
  v2211 = v2219[2];
  v2212 = v2219[3];
  v2213 = v2219[4];
  v2214 = v2219[5];
  v2215 = v2219[6];
  v2216 = v2219[7];
  v2217 = v2219[8];
  v1305 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1B68, &qword_1B0E9AF90);
  sub_1B074AF90();
  sub_1B0E46738();
  v264 = v2170;
  v2170[27] = v2220;
  v265 = v2221;
  v266 = v2222;
  v2226 = v2224;
  v264[30] = v2223;
  v264[29] = v266;
  v264[28] = v265;
  sub_1B074EDD0(v2225, v2205);
  v267 = v2170;
  *v2170 = v2170[27];
  v268 = v267[28];
  v269 = v267[29];
  v270 = v267[30];
  v2204[8] = v2226;
  v267[3] = v270;
  v267[2] = v269;
  v267[1] = v268;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1B78, &qword_1B0E9AF98);
  sub_1B0E46638();
  for (m = v2081; ; m = v525)
  {
    v1299 = m;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26B0, &unk_1B0E9DE00);
    sub_1B0E46648();
    v1300 = v2203;
    if (!v2203)
    {
      sub_1B074EEBC();
      sub_1B074B1FC();

      (*(v2156 + 8))(v2161, v2154);
      sub_1B039E440(&v2251);
      return;
    }

    v1298 = v1300;
    v1296 = v1300;
    v2202 = v1300;
    v271 = v1300;
    v1297 = [v1296 persistentID];

    v2201 = v1297;
    sub_1B0E44778();

    if ((*(v2146 + 48))(v2141, 1, v2144) != 1)
    {
      break;
    }

    sub_1B074EB58(v2141);

    v525 = v1299;
LABEL_29:
    ;
  }

  v272 = v2131;
  sub_1B074BA2C(v2141, v2148);
  v1210 = &OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_logger;
  sub_1B074B69C(v2125 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_logger, v2135);
  (*(v2129 + 16))(v272, v2135, v2127);
  sub_1B074B764(v2135);

  sub_1B074B69C(v2125 + *v1210, v2137);
  v273 = (v2137 + *(v2134 + 20));
  v1213 = *v273;
  v1214 = *(v273 + 1);
  v1215 = *(v273 + 1);
  v1216 = *(v273 + 4);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B074B764(v2137);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v1212 = 36;
  v1262 = 7;
  v274 = swift_allocObject();
  v275 = v1214;
  v276 = v1215;
  v277 = v1216;
  v1227 = v274;
  *(v274 + 16) = v1213;
  *(v274 + 20) = v275;
  *(v274 + 24) = v276;
  *(v274 + 32) = v277;
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v278 = swift_allocObject();
  v279 = v1214;
  v280 = v1215;
  v281 = v1216;
  v1211 = v278;
  *(v278 + 16) = v1213;
  *(v278 + 20) = v279;
  *(v278 + 24) = v280;
  *(v278 + 32) = v281;

  v1261 = 32;
  v282 = swift_allocObject();
  v283 = v1211;
  v1239 = v282;
  *(v282 + 16) = sub_1B074E050;
  *(v282 + 24) = v283;
  sub_1B0394868();
  sub_1B0394868();

  v284 = swift_allocObject();
  v285 = v1214;
  v286 = v1215;
  v287 = v1216;
  v1248 = v284;
  *(v284 + 16) = v1213;
  *(v284 + 20) = v285;
  *(v284 + 24) = v286;
  *(v284 + 32) = v287;

  sub_1B03D08AC(v2148, v2150);
  v1217 = (*(v2146 + 80) + 16) & ~*(v2146 + 80);
  v1218 = swift_allocObject();
  sub_1B074BA2C(v2150, v1218 + v1217);

  v288 = swift_allocObject();
  v289 = v1218;
  v1253 = v288;
  *(v288 + 16) = sub_1B074EF18;
  *(v288 + 24) = v289;

  v290 = v1296;
  v1266 = 24;
  v1263 = swift_allocObject();
  *(v1263 + 16) = v1296;
  v1295 = sub_1B0E43988();
  v1219 = v1295;
  v1294 = sub_1B0E458C8();
  v1220 = v1294;
  v1257 = 17;
  v1267 = swift_allocObject();
  v1221 = v1267;
  v1230 = 16;
  *(v1267 + 16) = 16;
  v1268 = swift_allocObject();
  v1222 = v1268;
  v1237 = 4;
  *(v1268 + 16) = 4;
  v291 = swift_allocObject();
  v1223 = v291;
  *(v291 + 16) = sub_1B0394C30;
  v1233 = 0;
  *(v291 + 24) = 0;
  v292 = swift_allocObject();
  v293 = v1223;
  v1269 = v292;
  v1224 = v292;
  *(v292 + 16) = sub_1B0394C24;
  *(v292 + 24) = v293;
  v1270 = swift_allocObject();
  v1225 = v1270;
  v1256 = 0;
  *(v1270 + 16) = 0;
  v1271 = swift_allocObject();
  v1226 = v1271;
  *(v1271 + 16) = 1;
  v294 = swift_allocObject();
  v295 = v1227;
  v1228 = v294;
  *(v294 + 16) = sub_1B074DFFC;
  *(v294 + 24) = v295;
  v296 = swift_allocObject();
  v297 = v1228;
  v1272 = v296;
  v1229 = v296;
  *(v296 + 16) = sub_1B039BA88;
  *(v296 + 24) = v297;
  v1273 = swift_allocObject();
  v1231 = v1273;
  *(v1273 + 16) = v1230;
  v1274 = swift_allocObject();
  v1232 = v1274;
  *(v1274 + 16) = v1237;
  v298 = swift_allocObject();
  v299 = v1233;
  v1234 = v298;
  *(v298 + 16) = sub_1B039BB94;
  *(v298 + 24) = v299;
  v300 = swift_allocObject();
  v301 = v1234;
  v1275 = v300;
  v1235 = v300;
  *(v300 + 16) = sub_1B0394C24;
  *(v300 + 24) = v301;
  v1276 = swift_allocObject();
  v1236 = v1276;
  *(v1276 + 16) = v1256;
  v1277 = swift_allocObject();
  v1238 = v1277;
  *(v1277 + 16) = v1237;
  v302 = swift_allocObject();
  v303 = v1239;
  v1240 = v302;
  *(v302 + 16) = sub_1B039BBA0;
  *(v302 + 24) = v303;
  v304 = swift_allocObject();
  v305 = v1240;
  v1278 = v304;
  v1241 = v304;
  *(v304 + 16) = sub_1B039BC08;
  *(v304 + 24) = v305;
  v1279 = swift_allocObject();
  v1242 = v1279;
  *(v1279 + 16) = 112;
  v1280 = swift_allocObject();
  v1243 = v1280;
  v1259 = 8;
  *(v1280 + 16) = 8;
  v1244 = swift_allocObject();
  *(v1244 + 16) = 0x786F626C69616DLL;
  v306 = swift_allocObject();
  v307 = v1244;
  v1281 = v306;
  v1245 = v306;
  *(v306 + 16) = sub_1B06BA324;
  *(v306 + 24) = v307;
  v1282 = swift_allocObject();
  v1246 = v1282;
  *(v1282 + 16) = 37;
  v1283 = swift_allocObject();
  v1247 = v1283;
  *(v1283 + 16) = v1259;
  v308 = swift_allocObject();
  v309 = v1248;
  v1249 = v308;
  *(v308 + 16) = sub_1B074E0E4;
  *(v308 + 24) = v309;
  v310 = swift_allocObject();
  v311 = v1249;
  v1284 = v310;
  v1250 = v310;
  *(v310 + 16) = sub_1B039BCF8;
  *(v310 + 24) = v311;
  v1285 = swift_allocObject();
  v1251 = v1285;
  *(v1285 + 16) = 34;
  v1286 = swift_allocObject();
  v1252 = v1286;
  *(v1286 + 16) = v1259;
  v312 = swift_allocObject();
  v313 = v1253;
  v1254 = v312;
  *(v312 + 16) = sub_1B074EF98;
  *(v312 + 24) = v313;
  v314 = swift_allocObject();
  v315 = v1254;
  v1287 = v314;
  v1255 = v314;
  *(v314 + 16) = sub_1B039BCF8;
  *(v314 + 24) = v315;
  v1288 = swift_allocObject();
  v1258 = v1288;
  *(v1288 + 16) = v1256;
  v1289 = swift_allocObject();
  v1260 = v1289;
  *(v1289 + 16) = v1259;
  v316 = swift_allocObject();
  v317 = v1263;
  v1264 = v316;
  *(v316 + 16) = sub_1B074EFA4;
  *(v316 + 24) = v317;
  v318 = swift_allocObject();
  v319 = v1264;
  v1292 = v318;
  v1265 = v318;
  *(v318 + 16) = sub_1B06BCD8C;
  *(v318 + 24) = v319;
  v1293 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
  v1290 = sub_1B0E46A48();
  v1291 = v320;

  v321 = v1267;
  v322 = v1291;
  *v1291 = sub_1B0398F5C;
  v322[1] = v321;

  v323 = v1268;
  v324 = v1291;
  v1291[2] = sub_1B0398F5C;
  v324[3] = v323;

  v325 = v1269;
  v326 = v1291;
  v1291[4] = sub_1B0399178;
  v326[5] = v325;

  v327 = v1270;
  v328 = v1291;
  v1291[6] = sub_1B0398F5C;
  v328[7] = v327;

  v329 = v1271;
  v330 = v1291;
  v1291[8] = sub_1B0398F5C;
  v330[9] = v329;

  v331 = v1272;
  v332 = v1291;
  v1291[10] = sub_1B039BA94;
  v332[11] = v331;

  v333 = v1273;
  v334 = v1291;
  v1291[12] = sub_1B0398F5C;
  v334[13] = v333;

  v335 = v1274;
  v336 = v1291;
  v1291[14] = sub_1B0398F5C;
  v336[15] = v335;

  v337 = v1275;
  v338 = v1291;
  v1291[16] = sub_1B0399178;
  v338[17] = v337;

  v339 = v1276;
  v340 = v1291;
  v1291[18] = sub_1B0398F5C;
  v340[19] = v339;

  v341 = v1277;
  v342 = v1291;
  v1291[20] = sub_1B0398F5C;
  v342[21] = v341;

  v343 = v1278;
  v344 = v1291;
  v1291[22] = sub_1B03991EC;
  v344[23] = v343;

  v345 = v1279;
  v346 = v1291;
  v1291[24] = sub_1B0398F5C;
  v346[25] = v345;

  v347 = v1280;
  v348 = v1291;
  v1291[26] = sub_1B0398F5C;
  v348[27] = v347;

  v349 = v1281;
  v350 = v1291;
  v1291[28] = sub_1B03993BC;
  v350[29] = v349;

  v351 = v1282;
  v352 = v1291;
  v1291[30] = sub_1B0398F5C;
  v352[31] = v351;

  v353 = v1283;
  v354 = v1291;
  v1291[32] = sub_1B0398F5C;
  v354[33] = v353;

  v355 = v1284;
  v356 = v1291;
  v1291[34] = sub_1B039BCEC;
  v356[35] = v355;

  v357 = v1285;
  v358 = v1291;
  v1291[36] = sub_1B0398F5C;
  v358[37] = v357;

  v359 = v1286;
  v360 = v1291;
  v1291[38] = sub_1B0398F5C;
  v360[39] = v359;

  v361 = v1287;
  v362 = v1291;
  v1291[40] = sub_1B039BCEC;
  v362[41] = v361;

  v363 = v1288;
  v364 = v1291;
  v1291[42] = sub_1B0398F5C;
  v364[43] = v363;

  v365 = v1289;
  v366 = v1291;
  v1291[44] = sub_1B0398F5C;
  v366[45] = v365;

  v367 = v1291;
  v368 = v1292;
  v1291[46] = sub_1B03992D4;
  v367[47] = v368;
  sub_1B0394964();

  if (os_log_type_enabled(v1295, v1294))
  {
    v369 = v1229;
    v370 = v1226;
    v371 = v1225;
    v372 = v1224;
    v373 = v1222;
    v374 = v1221;
    v375 = v1299;
    v1180 = sub_1B0E45D78();
    v1177 = v1180;
    v1178 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
    v1181 = sub_1B03949A8(0, v1178, v1178);
    v1179 = v1181;
    v1182 = sub_1B03949A8(2, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v2198 = v1180;
    v2197 = v1181;
    v2196 = v1182;
    v1183 = &v2198;
    sub_1B0394A48(3, &v2198);
    sub_1B0394A48(8, v1183);
    v2194 = sub_1B0398F5C;
    v2195 = v374;
    sub_1B03949FC(&v2194, v1183, &v2197, &v2196);
    v1184 = v375;
    v1185 = v374;
    v1186 = v373;
    v1187 = v372;
    v1188 = v371;
    v1189 = v370;
    v1190 = v369;
    v1191 = v1231;
    v1192 = v1232;
    v1193 = v1235;
    v1194 = v1236;
    v1195 = v1238;
    v1196 = v1241;
    v1197 = v1242;
    v1198 = v1243;
    v1199 = v1245;
    v1200 = v1246;
    v1201 = v1247;
    v1202 = v1250;
    v1203 = v1251;
    v1204 = v1252;
    v1205 = v1255;
    v1206 = v1258;
    v1207 = v1260;
    v1208 = v1265;
    v1209 = v375;
    if (v375)
    {
      v1151 = v1185;
      v1152 = v1186;
      v1153 = v1187;
      v1154 = v1188;
      v1155 = v1189;
      v1156 = v1190;
      v1157 = v1191;
      v1158 = v1192;
      v1159 = v1193;
      v1160 = v1194;
      v1161 = v1195;
      v1162 = v1196;
      v1163 = v1197;
      v1164 = v1198;
      v1165 = v1199;
      v1166 = v1200;
      v1167 = v1201;
      v1168 = v1202;
      v1169 = v1203;
      v1170 = v1204;
      v1171 = v1205;
      v1172 = v1206;
      v1173 = v1207;
      v1174 = v1208;
      v1175 = 0;
      v552 = v1208;
      v551 = v1207;
      v550 = v1206;
      v549 = v1205;
      v548 = v1204;
      v547 = v1203;
      v546 = v1202;
      v545 = v1201;
      v544 = v1200;
      v543 = v1199;
      v542 = v1198;
      v541 = v1197;
      v540 = v1196;
      v539 = v1195;
      v538 = v1194;
      v537 = v1193;
      v536 = v1192;
      v535 = v1191;
      v534 = v1190;
      v533 = v1189;
      v532 = v1188;
      v531 = v1187;
      v530 = v1186;

      __break(1u);
    }

    else
    {
      v377 = v1229;
      v378 = v1226;
      v379 = v1225;
      v380 = v1224;
      v381 = v1222;
      v382 = v1221;
      v2194 = sub_1B0398F5C;
      v2195 = v1222;
      sub_1B03949FC(&v2194, &v2198, &v2197, &v2196);
      v1125 = 0;
      v1126 = v382;
      v1127 = v381;
      v1128 = v380;
      v1129 = v379;
      v1130 = v378;
      v1131 = v377;
      v1132 = v1231;
      v1133 = v1232;
      v1134 = v1235;
      v1135 = v1236;
      v1136 = v1238;
      v1137 = v1241;
      v1138 = v1242;
      v1139 = v1243;
      v1140 = v1245;
      v1141 = v1246;
      v1142 = v1247;
      v1143 = v1250;
      v1144 = v1251;
      v1145 = v1252;
      v1146 = v1255;
      v1147 = v1258;
      v1148 = v1260;
      v1149 = v1265;
      v1150 = 0;
      v383 = v1229;
      v384 = v1226;
      v385 = v1225;
      v386 = v1224;
      v387 = v1222;
      v388 = v1221;
      v2194 = sub_1B0399178;
      v2195 = v1224;
      sub_1B03949FC(&v2194, &v2198, &v2197, &v2196);
      v1099 = 0;
      v1100 = v388;
      v1101 = v387;
      v1102 = v386;
      v1103 = v385;
      v1104 = v384;
      v1105 = v383;
      v1106 = v1231;
      v1107 = v1232;
      v1108 = v1235;
      v1109 = v1236;
      v1110 = v1238;
      v1111 = v1241;
      v1112 = v1242;
      v1113 = v1243;
      v1114 = v1245;
      v1115 = v1246;
      v1116 = v1247;
      v1117 = v1250;
      v1118 = v1251;
      v1119 = v1252;
      v1120 = v1255;
      v1121 = v1258;
      v1122 = v1260;
      v1123 = v1265;
      v1124 = 0;
      v389 = v1229;
      v390 = v1226;
      v391 = v1225;
      v392 = v1224;
      v393 = v1222;
      v394 = v1221;
      v2194 = sub_1B0398F5C;
      v2195 = v1225;
      sub_1B03949FC(&v2194, &v2198, &v2197, &v2196);
      v1073 = 0;
      v1074 = v394;
      v1075 = v393;
      v1076 = v392;
      v1077 = v391;
      v1078 = v390;
      v1079 = v389;
      v1080 = v1231;
      v1081 = v1232;
      v1082 = v1235;
      v1083 = v1236;
      v1084 = v1238;
      v1085 = v1241;
      v1086 = v1242;
      v1087 = v1243;
      v1088 = v1245;
      v1089 = v1246;
      v1090 = v1247;
      v1091 = v1250;
      v1092 = v1251;
      v1093 = v1252;
      v1094 = v1255;
      v1095 = v1258;
      v1096 = v1260;
      v1097 = v1265;
      v1098 = 0;
      v395 = v1229;
      v396 = v1226;
      v397 = v1225;
      v398 = v1224;
      v399 = v1222;
      v400 = v1221;
      v2194 = sub_1B0398F5C;
      v2195 = v1226;
      sub_1B03949FC(&v2194, &v2198, &v2197, &v2196);
      v1047 = 0;
      v1048 = v400;
      v1049 = v399;
      v1050 = v398;
      v1051 = v397;
      v1052 = v396;
      v1053 = v395;
      v1054 = v1231;
      v1055 = v1232;
      v1056 = v1235;
      v1057 = v1236;
      v1058 = v1238;
      v1059 = v1241;
      v1060 = v1242;
      v1061 = v1243;
      v1062 = v1245;
      v1063 = v1246;
      v1064 = v1247;
      v1065 = v1250;
      v1066 = v1251;
      v1067 = v1252;
      v1068 = v1255;
      v1069 = v1258;
      v1070 = v1260;
      v1071 = v1265;
      v1072 = 0;
      v401 = v1229;
      v402 = v1226;
      v403 = v1225;
      v404 = v1224;
      v405 = v1222;
      v406 = v1221;
      v2194 = sub_1B039BA94;
      v2195 = v1229;
      sub_1B03949FC(&v2194, &v2198, &v2197, &v2196);
      v1021 = 0;
      v1022 = v406;
      v1023 = v405;
      v1024 = v404;
      v1025 = v403;
      v1026 = v402;
      v1027 = v401;
      v1028 = v1231;
      v1029 = v1232;
      v1030 = v1235;
      v1031 = v1236;
      v1032 = v1238;
      v1033 = v1241;
      v1034 = v1242;
      v1035 = v1243;
      v1036 = v1245;
      v1037 = v1246;
      v1038 = v1247;
      v1039 = v1250;
      v1040 = v1251;
      v1041 = v1252;
      v1042 = v1255;
      v1043 = v1258;
      v1044 = v1260;
      v1045 = v1265;
      v1046 = 0;
      v407 = v1229;
      v408 = v1226;
      v409 = v1225;
      v410 = v1224;
      v411 = v1222;
      v412 = v1221;
      v2194 = sub_1B0398F5C;
      v2195 = v1231;
      sub_1B03949FC(&v2194, &v2198, &v2197, &v2196);
      v995 = 0;
      v996 = v412;
      v997 = v411;
      v998 = v410;
      v999 = v409;
      v1000 = v408;
      v1001 = v407;
      v1002 = v1231;
      v1003 = v1232;
      v1004 = v1235;
      v1005 = v1236;
      v1006 = v1238;
      v1007 = v1241;
      v1008 = v1242;
      v1009 = v1243;
      v1010 = v1245;
      v1011 = v1246;
      v1012 = v1247;
      v1013 = v1250;
      v1014 = v1251;
      v1015 = v1252;
      v1016 = v1255;
      v1017 = v1258;
      v1018 = v1260;
      v1019 = v1265;
      v1020 = 0;
      v413 = v1229;
      v414 = v1226;
      v415 = v1225;
      v416 = v1224;
      v417 = v1222;
      v418 = v1221;
      v2194 = sub_1B0398F5C;
      v2195 = v1232;
      sub_1B03949FC(&v2194, &v2198, &v2197, &v2196);
      v969 = 0;
      v970 = v418;
      v971 = v417;
      v972 = v416;
      v973 = v415;
      v974 = v414;
      v975 = v413;
      v976 = v1231;
      v977 = v1232;
      v978 = v1235;
      v979 = v1236;
      v980 = v1238;
      v981 = v1241;
      v982 = v1242;
      v983 = v1243;
      v984 = v1245;
      v985 = v1246;
      v986 = v1247;
      v987 = v1250;
      v988 = v1251;
      v989 = v1252;
      v990 = v1255;
      v991 = v1258;
      v992 = v1260;
      v993 = v1265;
      v994 = 0;
      v419 = v1229;
      v420 = v1226;
      v421 = v1225;
      v422 = v1224;
      v423 = v1222;
      v424 = v1221;
      v2194 = sub_1B0399178;
      v2195 = v1235;
      sub_1B03949FC(&v2194, &v2198, &v2197, &v2196);
      v943 = 0;
      v944 = v424;
      v945 = v423;
      v946 = v422;
      v947 = v421;
      v948 = v420;
      v949 = v419;
      v950 = v1231;
      v951 = v1232;
      v952 = v1235;
      v953 = v1236;
      v954 = v1238;
      v955 = v1241;
      v956 = v1242;
      v957 = v1243;
      v958 = v1245;
      v959 = v1246;
      v960 = v1247;
      v961 = v1250;
      v962 = v1251;
      v963 = v1252;
      v964 = v1255;
      v965 = v1258;
      v966 = v1260;
      v967 = v1265;
      v968 = 0;
      v425 = v1229;
      v426 = v1226;
      v427 = v1225;
      v428 = v1224;
      v429 = v1222;
      v430 = v1221;
      v2194 = sub_1B0398F5C;
      v2195 = v1236;
      sub_1B03949FC(&v2194, &v2198, &v2197, &v2196);
      v917 = 0;
      v918 = v430;
      v919 = v429;
      v920 = v428;
      v921 = v427;
      v922 = v426;
      v923 = v425;
      v924 = v1231;
      v925 = v1232;
      v926 = v1235;
      v927 = v1236;
      v928 = v1238;
      v929 = v1241;
      v930 = v1242;
      v931 = v1243;
      v932 = v1245;
      v933 = v1246;
      v934 = v1247;
      v935 = v1250;
      v936 = v1251;
      v937 = v1252;
      v938 = v1255;
      v939 = v1258;
      v940 = v1260;
      v941 = v1265;
      v942 = 0;
      v431 = v1229;
      v432 = v1226;
      v433 = v1225;
      v434 = v1224;
      v435 = v1222;
      v436 = v1221;
      v2194 = sub_1B0398F5C;
      v2195 = v1238;
      sub_1B03949FC(&v2194, &v2198, &v2197, &v2196);
      v891 = 0;
      v892 = v436;
      v893 = v435;
      v894 = v434;
      v895 = v433;
      v896 = v432;
      v897 = v431;
      v898 = v1231;
      v899 = v1232;
      v900 = v1235;
      v901 = v1236;
      v902 = v1238;
      v903 = v1241;
      v904 = v1242;
      v905 = v1243;
      v906 = v1245;
      v907 = v1246;
      v908 = v1247;
      v909 = v1250;
      v910 = v1251;
      v911 = v1252;
      v912 = v1255;
      v913 = v1258;
      v914 = v1260;
      v915 = v1265;
      v916 = 0;
      v437 = v1229;
      v438 = v1226;
      v439 = v1225;
      v440 = v1224;
      v441 = v1222;
      v442 = v1221;
      v2194 = sub_1B03991EC;
      v2195 = v1241;
      sub_1B03949FC(&v2194, &v2198, &v2197, &v2196);
      v865 = 0;
      v866 = v442;
      v867 = v441;
      v868 = v440;
      v869 = v439;
      v870 = v438;
      v871 = v437;
      v872 = v1231;
      v873 = v1232;
      v874 = v1235;
      v875 = v1236;
      v876 = v1238;
      v877 = v1241;
      v878 = v1242;
      v879 = v1243;
      v880 = v1245;
      v881 = v1246;
      v882 = v1247;
      v883 = v1250;
      v884 = v1251;
      v885 = v1252;
      v886 = v1255;
      v887 = v1258;
      v888 = v1260;
      v889 = v1265;
      v890 = 0;
      v443 = v1229;
      v444 = v1226;
      v445 = v1225;
      v446 = v1224;
      v447 = v1222;
      v448 = v1221;
      v2194 = sub_1B0398F5C;
      v2195 = v1242;
      sub_1B03949FC(&v2194, &v2198, &v2197, &v2196);
      v839 = 0;
      v840 = v448;
      v841 = v447;
      v842 = v446;
      v843 = v445;
      v844 = v444;
      v845 = v443;
      v846 = v1231;
      v847 = v1232;
      v848 = v1235;
      v849 = v1236;
      v850 = v1238;
      v851 = v1241;
      v852 = v1242;
      v853 = v1243;
      v854 = v1245;
      v855 = v1246;
      v856 = v1247;
      v857 = v1250;
      v858 = v1251;
      v859 = v1252;
      v860 = v1255;
      v861 = v1258;
      v862 = v1260;
      v863 = v1265;
      v864 = 0;
      v449 = v1229;
      v450 = v1226;
      v451 = v1225;
      v452 = v1224;
      v453 = v1222;
      v454 = v1221;
      v2194 = sub_1B0398F5C;
      v2195 = v1243;
      sub_1B03949FC(&v2194, &v2198, &v2197, &v2196);
      v813 = 0;
      v814 = v454;
      v815 = v453;
      v816 = v452;
      v817 = v451;
      v818 = v450;
      v819 = v449;
      v820 = v1231;
      v821 = v1232;
      v822 = v1235;
      v823 = v1236;
      v824 = v1238;
      v825 = v1241;
      v826 = v1242;
      v827 = v1243;
      v828 = v1245;
      v829 = v1246;
      v830 = v1247;
      v831 = v1250;
      v832 = v1251;
      v833 = v1252;
      v834 = v1255;
      v835 = v1258;
      v836 = v1260;
      v837 = v1265;
      v838 = 0;
      v455 = v1229;
      v456 = v1226;
      v457 = v1225;
      v458 = v1224;
      v459 = v1222;
      v460 = v1221;
      v2194 = sub_1B03993BC;
      v2195 = v1245;
      sub_1B03949FC(&v2194, &v2198, &v2197, &v2196);
      v787 = 0;
      v788 = v460;
      v789 = v459;
      v790 = v458;
      v791 = v457;
      v792 = v456;
      v793 = v455;
      v794 = v1231;
      v795 = v1232;
      v796 = v1235;
      v797 = v1236;
      v798 = v1238;
      v799 = v1241;
      v800 = v1242;
      v801 = v1243;
      v802 = v1245;
      v803 = v1246;
      v804 = v1247;
      v805 = v1250;
      v806 = v1251;
      v807 = v1252;
      v808 = v1255;
      v809 = v1258;
      v810 = v1260;
      v811 = v1265;
      v812 = 0;
      v461 = v1229;
      v462 = v1226;
      v463 = v1225;
      v464 = v1224;
      v465 = v1222;
      v466 = v1221;
      v2194 = sub_1B0398F5C;
      v2195 = v1246;
      sub_1B03949FC(&v2194, &v2198, &v2197, &v2196);
      v761 = 0;
      v762 = v466;
      v763 = v465;
      v764 = v464;
      v765 = v463;
      v766 = v462;
      v767 = v461;
      v768 = v1231;
      v769 = v1232;
      v770 = v1235;
      v771 = v1236;
      v772 = v1238;
      v773 = v1241;
      v774 = v1242;
      v775 = v1243;
      v776 = v1245;
      v777 = v1246;
      v778 = v1247;
      v779 = v1250;
      v780 = v1251;
      v781 = v1252;
      v782 = v1255;
      v783 = v1258;
      v784 = v1260;
      v785 = v1265;
      v786 = 0;
      v467 = v1229;
      v468 = v1226;
      v469 = v1225;
      v470 = v1224;
      v471 = v1222;
      v472 = v1221;
      v2194 = sub_1B0398F5C;
      v2195 = v1247;
      sub_1B03949FC(&v2194, &v2198, &v2197, &v2196);
      v735 = 0;
      v736 = v472;
      v737 = v471;
      v738 = v470;
      v739 = v469;
      v740 = v468;
      v741 = v467;
      v742 = v1231;
      v743 = v1232;
      v744 = v1235;
      v745 = v1236;
      v746 = v1238;
      v747 = v1241;
      v748 = v1242;
      v749 = v1243;
      v750 = v1245;
      v751 = v1246;
      v752 = v1247;
      v753 = v1250;
      v754 = v1251;
      v755 = v1252;
      v756 = v1255;
      v757 = v1258;
      v758 = v1260;
      v759 = v1265;
      v760 = 0;
      v473 = v1229;
      v474 = v1226;
      v475 = v1225;
      v476 = v1224;
      v477 = v1222;
      v478 = v1221;
      v2194 = sub_1B039BCEC;
      v2195 = v1250;
      sub_1B03949FC(&v2194, &v2198, &v2197, &v2196);
      v709 = 0;
      v710 = v478;
      v711 = v477;
      v712 = v476;
      v713 = v475;
      v714 = v474;
      v715 = v473;
      v716 = v1231;
      v717 = v1232;
      v718 = v1235;
      v719 = v1236;
      v720 = v1238;
      v721 = v1241;
      v722 = v1242;
      v723 = v1243;
      v724 = v1245;
      v725 = v1246;
      v726 = v1247;
      v727 = v1250;
      v728 = v1251;
      v729 = v1252;
      v730 = v1255;
      v731 = v1258;
      v732 = v1260;
      v733 = v1265;
      v734 = 0;
      v479 = v1229;
      v480 = v1226;
      v481 = v1225;
      v482 = v1224;
      v483 = v1222;
      v484 = v1221;
      v2194 = sub_1B0398F5C;
      v2195 = v1251;
      sub_1B03949FC(&v2194, &v2198, &v2197, &v2196);
      v683 = 0;
      v684 = v484;
      v685 = v483;
      v686 = v482;
      v687 = v481;
      v688 = v480;
      v689 = v479;
      v690 = v1231;
      v691 = v1232;
      v692 = v1235;
      v693 = v1236;
      v694 = v1238;
      v695 = v1241;
      v696 = v1242;
      v697 = v1243;
      v698 = v1245;
      v699 = v1246;
      v700 = v1247;
      v701 = v1250;
      v702 = v1251;
      v703 = v1252;
      v704 = v1255;
      v705 = v1258;
      v706 = v1260;
      v707 = v1265;
      v708 = 0;
      v485 = v1229;
      v486 = v1226;
      v487 = v1225;
      v488 = v1224;
      v489 = v1222;
      v490 = v1221;
      v2194 = sub_1B0398F5C;
      v2195 = v1252;
      sub_1B03949FC(&v2194, &v2198, &v2197, &v2196);
      v657 = 0;
      v658 = v490;
      v659 = v489;
      v660 = v488;
      v661 = v487;
      v662 = v486;
      v663 = v485;
      v664 = v1231;
      v665 = v1232;
      v666 = v1235;
      v667 = v1236;
      v668 = v1238;
      v669 = v1241;
      v670 = v1242;
      v671 = v1243;
      v672 = v1245;
      v673 = v1246;
      v674 = v1247;
      v675 = v1250;
      v676 = v1251;
      v677 = v1252;
      v678 = v1255;
      v679 = v1258;
      v680 = v1260;
      v681 = v1265;
      v682 = 0;
      v491 = v1229;
      v492 = v1226;
      v493 = v1225;
      v494 = v1224;
      v495 = v1222;
      v496 = v1221;
      v2194 = sub_1B039BCEC;
      v2195 = v1255;
      sub_1B03949FC(&v2194, &v2198, &v2197, &v2196);
      v631 = 0;
      v632 = v496;
      v633 = v495;
      v634 = v494;
      v635 = v493;
      v636 = v492;
      v637 = v491;
      v638 = v1231;
      v639 = v1232;
      v640 = v1235;
      v641 = v1236;
      v642 = v1238;
      v643 = v1241;
      v644 = v1242;
      v645 = v1243;
      v646 = v1245;
      v647 = v1246;
      v648 = v1247;
      v649 = v1250;
      v650 = v1251;
      v651 = v1252;
      v652 = v1255;
      v653 = v1258;
      v654 = v1260;
      v655 = v1265;
      v656 = 0;
      v497 = v1229;
      v498 = v1226;
      v499 = v1225;
      v500 = v1224;
      v501 = v1222;
      v502 = v1221;
      v2194 = sub_1B0398F5C;
      v2195 = v1258;
      sub_1B03949FC(&v2194, &v2198, &v2197, &v2196);
      v605 = 0;
      v606 = v502;
      v607 = v501;
      v608 = v500;
      v609 = v499;
      v610 = v498;
      v611 = v497;
      v612 = v1231;
      v613 = v1232;
      v614 = v1235;
      v615 = v1236;
      v616 = v1238;
      v617 = v1241;
      v618 = v1242;
      v619 = v1243;
      v620 = v1245;
      v621 = v1246;
      v622 = v1247;
      v623 = v1250;
      v624 = v1251;
      v625 = v1252;
      v626 = v1255;
      v627 = v1258;
      v628 = v1260;
      v629 = v1265;
      v630 = 0;
      v503 = v1229;
      v504 = v1226;
      v505 = v1225;
      v506 = v1224;
      v507 = v1222;
      v508 = v1221;
      v2194 = sub_1B0398F5C;
      v2195 = v1260;
      sub_1B03949FC(&v2194, &v2198, &v2197, &v2196);
      v579 = 0;
      v580 = v508;
      v581 = v507;
      v582 = v506;
      v583 = v505;
      v584 = v504;
      v585 = v503;
      v586 = v1231;
      v587 = v1232;
      v588 = v1235;
      v589 = v1236;
      v590 = v1238;
      v591 = v1241;
      v592 = v1242;
      v593 = v1243;
      v594 = v1245;
      v595 = v1246;
      v596 = v1247;
      v597 = v1250;
      v598 = v1251;
      v599 = v1252;
      v600 = v1255;
      v601 = v1258;
      v602 = v1260;
      v603 = v1265;
      v604 = 0;
      v509 = v1229;
      v510 = v1226;
      v511 = v1225;
      v512 = v1224;
      v513 = v1222;
      v514 = v1221;
      v2194 = sub_1B03992D4;
      v2195 = v1265;
      sub_1B03949FC(&v2194, &v2198, &v2197, &v2196);
      v553 = 0;
      v554 = v514;
      v555 = v513;
      v556 = v512;
      v557 = v511;
      v558 = v510;
      v559 = v509;
      v560 = v1231;
      v561 = v1232;
      v562 = v1235;
      v563 = v1236;
      v564 = v1238;
      v565 = v1241;
      v566 = v1242;
      v567 = v1243;
      v568 = v1245;
      v569 = v1246;
      v570 = v1247;
      v571 = v1250;
      v572 = v1251;
      v573 = v1252;
      v574 = v1255;
      v575 = v1258;
      v576 = v1260;
      v577 = v1265;
      v578 = 0;
      _os_log_impl(&dword_1B0389000, v1219, v1220, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Uploaded delete flags for UIDs %{public}s for change %lld", v1177, 0x3Fu);
      sub_1B03998A8(v1179, 0, v1178);
      sub_1B03998A8(v1182, 2, MEMORY[0x1E69E7CA0] + 8);
      sub_1B0E45D58();

      v1176 = v553;
    }
  }

  else
  {
    v376 = v1299;

    v1176 = v376;
  }

  v515 = v1176;

  (*(v2129 + 8))(v2131, v2127);
  v526 = 0;
  v527 = sub_1B071C094();
  v516 = sub_1B074B4A4();
  v518 = sub_1B039CA88(sub_1B0740794, v526, v2144, v527, MEMORY[0x1E69E73E0], v516, MEMORY[0x1E69E7410], v517);
  v528 = v515;
  v529 = v518;
  if (!v515)
  {
    v524 = v529;
    v2200 = v529;
    sub_1B074EFAC();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v521[1] = v521;
    MEMORY[0x1EEE9AC00](v521);
    v521[-2] = v519;
    v523 = sub_1B0740A78(sub_1B074F010, &v521[-4]);

    v2199 = v523;
    v522 = *(v2125 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_messageChangeManager);
    v520 = v522;
    [v522 persistResults:v523 forAction:v1296];

    sub_1B03D09B8(v2148);

    v525 = v528;
    goto LABEL_29;
  }

  __break(1u);
}