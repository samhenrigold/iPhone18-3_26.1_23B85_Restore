uint64_t sub_1B0A21B5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a1;
  v16 = a3;
  v17 = a4;
  v18 = sub_1B039C8F0;
  v40 = 0;
  v39 = 0;
  v37 = 0;
  v38 = 0;
  v20 = 0;
  v24 = sub_1B0E44238();
  v21 = *(v24 - 8);
  v22 = v24 - 8;
  v14 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v23 = &v14 - v14;
  v28 = sub_1B0E44288();
  v25 = *(v28 - 8);
  v26 = v28 - 8;
  v15 = (*(v25 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v17);
  v27 = &v14 - v15;
  v40 = v5;
  v39 = a2;
  v37 = v6;
  v38 = v7;

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v8 = swift_allocObject();
  v9 = v17;
  v10 = v18;
  v11 = v8;
  v12 = v19;
  v11[2] = v16;
  v11[3] = v9;
  v11[4] = v12;
  v35 = v10;
  v36 = v11;
  aBlock = MEMORY[0x1E69E9820];
  v31 = 1107296256;
  v32 = 0;
  v33 = sub_1B038C908;
  v34 = &block_descriptor_32;
  v29 = _Block_copy(&aBlock);
  sub_1B039B81C();
  sub_1B039B77C();
  MEMORY[0x1B2727B00](v20, v27, v23, v29);
  (*(v21 + 8))(v23, v24);
  (*(v25 + 8))(v27, v28);
  _Block_release(v29);
}

unint64_t sub_1B0A21E28()
{
  v2 = qword_1EB6DB050;
  if (!qword_1EB6DB050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E38B0, &qword_1B0EA2ED0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB050);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B0A21EF8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v10 = a1[1];
  v6 = a1[2];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v11 = MEMORY[0x1B2726DE0](v7, v10, a2, a3);

  result = v11;
  if (v11)
  {
    *a4 = v6;
    *(a4 + 8) = 0;
  }

  else
  {
    *a4 = 0;
    *(a4 + 8) = 1;
  }

  return result;
}

uint64_t sub_1B0A220EC()
{
  v2 = 0;
  v1 = sub_1B0E46A48();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v2 = v1;
  sub_1B039E440(&v2);
  return v1;
}

uint64_t sub_1B0A22140(int a1)
{
  v11 = a1;
  v10 = v1;
  v7 = *v1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v9 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2610, &unk_1B0E9C610);
  sub_1B07F193C();
  sub_1B0A222E8();
  v8 = sub_1B0E450A8();
  sub_1B039E440(&v9);
  if (v8)
  {
    v4 = 1;
    return v4 & 1;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v6 = sub_1B0E452A8();

  if (v6 <= 20)
  {
LABEL_8:
    sub_1B0E452E8();
    v4 = 0;
    return v4 & 1;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v5 = sub_1B0E452A8();

  result = v5;
  if (!__OFSUB__(v5, 20))
  {
    sub_1B0A22360();
    sub_1B0E457D8();
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

unint64_t sub_1B0A222E8()
{
  v2 = qword_1EB6DE1D8;
  if (!qword_1EB6DE1D8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DE1D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0A22360()
{
  v2 = qword_1EB6DB540;
  if (!qword_1EB6DB540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E2610, &unk_1B0E9C610);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB540);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B0A223E8(int a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2610, &unk_1B0E9C610);
  sub_1B0A225B0();
  sub_1B0A22360();
  return sub_1B0E45898();
}

unint64_t sub_1B0A225B0()
{
  v2 = qword_1EB6DB550;
  if (!qword_1EB6DB550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E2610, &unk_1B0E9C610);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB550);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0A22638()
{
  v2 = qword_1EB6E38C8;
  if (!qword_1EB6E38C8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E38C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0A226F4()
{
  v2 = qword_1EB6E38D0;
  if (!qword_1EB6E38D0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E38D0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B0A22770(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = 0;
  v13 = 0;
  v11 = sub_1B039BF24(*a1, a2, a3, a4, a5, a6, a7, a8);
  v10 = v8;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v12 = v11;
  v13 = v10;
  sub_1B039E440(&v12);
  return v11;
}

uint64_t sub_1B0A22800@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = 0;
  v6 = a1;
  result = MailboxRowID.init(_:)(a1, &v4);
  if (v5)
  {
    *a2 = 0;
    *(a2 + 8) = 1;
  }

  else
  {
    *a2 = v4;
    *(a2 + 8) = 0;
  }

  return result;
}

uint64_t sub_1B0A22A20()
{
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v2 = sub_1B0E46A48();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v3 = v2;
  LODWORD(v4) = SyncRequest.ID.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E38F8, &unk_1B0EA3190);
  sub_1B0E46A48();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  sub_1B03B8BD8();
  v1 = sub_1B0E445D8();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v5 = v1;
  sub_1B06E38F8(&v3);
  return v2;
}

uint64_t sub_1B0A22B00()
{
  v12 = 0;
  v11[0] = 0;
  v11[1] = 0;
  memset(__b, 0, sizeof(__b));
  v13 = v0;
  v6 = *v0;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v12 = v6;
  sub_1B041AF18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E38E0, &qword_1B0EA3180);
  sub_1B0E45338();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v10[10] = v6;
  sub_1B0A22D58();
  sub_1B0E45798();
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E38F0, &qword_1B0EA3188);
    sub_1B0E46518();
    memcpy(__dst, v8, sizeof(__dst));
    memcpy(v10, __dst, 0x50uLL);
    if (!v10[8])
    {
      break;
    }

    v3 = v10[0];
    v4 = v10[6];
    v5 = v10[7];
    v2 = v10[8];
    LODWORD(__b[0]) = v10[0];
    LOBYTE(__b[1]) = v10[1];
    __b[2] = v10[2];
    LOWORD(__b[3]) = v10[3];
    __b[4] = v10[4];
    LOBYTE(__b[5]) = v10[5];
    __b[6] = v10[6];
    __b[7] = v10[7];
    __b[8] = v10[8];
    __b[9] = v10[9];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E38F8, &unk_1B0EA3190);
    sub_1B0E46A48();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
    sub_1B03B8BD8();
    sub_1B0E445D8();
    v2(v3);

    sub_1B041589C(v4, v5);
  }

  sub_1B039E440(v11);
}

unint64_t sub_1B0A22D58()
{
  v2 = qword_1EB6DB278;
  if (!qword_1EB6DB278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E38E0, &qword_1B0EA3180);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB278);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B0A22DE0(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v9[1] = a1;
  v9[2] = a2;
  v9[3] = a3;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v9[0] = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E38E0, &qword_1B0EA3180);
  v3 = sub_1B0A22D58();
  v5 = sub_1B039CA88(sub_1B0A24154, 0, v7, &type metadata for SyncRequest.ID, MEMORY[0x1E69E73E0], v3, MEMORY[0x1E69E7410], v8);
  sub_1B039E440(v9);
  return v5;
}

uint64_t sub_1B0A22EC8()
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E38E0, &qword_1B0EA3180);
  sub_1B0A22D58();
  v1 = sub_1B0E45748();

  return v1 & 1;
}

uint64_t (*sub_1B0A22F5C(unsigned int a1))()
{
  v53 = &v74;
  v57 = a1;
  v85 = 0;
  v84 = 0;
  v75 = 0;
  v72 = 0;
  v71 = 0;
  v70 = 0u;
  v69 = 0u;
  v66 = 0;
  v65 = 0;
  v55 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3920, &qword_1B0E9B070) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v57);
  v56 = v27 - v55;
  v85 = v2;
  v84 = v1;
  v58 = *v1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v82[0] = v58;
  v62 = v57;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E38E0, &qword_1B0EA3180);
  v59 = v60;
  sub_1B0A22D58();
  sub_1B0E456F8();
  v61 = 0;
  sub_1B039E440(v82);
  v52 = v82[1];
  if (v83)
  {
    v28 = 0;
    v29 = 0;
    v30 = v61;
    return v28;
  }

  v51 = v52;
  v3 = v61;
  v41 = v52;
  v75 = v52;
  sub_1B0E453A8();
  v87 = *(v53 + 5);
  v4 = *(v53 + 6);
  v5 = *(v53 + 7);
  v6 = *(v53 + 8);
  v91 = *(v53 + 9);
  v90 = v6;
  v89 = v5;
  v88 = v4;
  v76 = *(v53 + 5);
  v7 = *(v53 + 6);
  v8 = *(v53 + 7);
  v9 = *(v53 + 8);
  v80 = *(v53 + 9);
  v79 = v9;
  v78 = v8;
  v77 = v7;
  sub_1B0E45308();
  v81[0] = *v53;
  v10 = *(v53 + 1);
  v11 = *(v53 + 2);
  v12 = *(v53 + 3);
  v81[4] = *(v53 + 4);
  v81[3] = v12;
  v81[2] = v11;
  v81[1] = v10;
  sub_1B0A241A0(v81);
  v46 = *(v54 + 16);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v42 = &v87;
  sub_1B0A24204(&v87, &v73);
  v43 = v27;
  MEMORY[0x1EEE9AC00](v27);
  v45 = &v27[-4];
  v27[-2] = v13;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v44 = v47;
  v48 = sub_1B03B8BD8();
  v14 = sub_1B0E44688();
  v49 = v3;
  v50 = v14;
  if (!v3)
  {
    v38 = v50;
    sub_1B0A241A0(&v87);
    v72 = v38;
    v39 = &type metadata for OpaqueMailboxID;
    v15 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    MEMORY[0x1B2726710](v86, v15, v39, v44, v48);
    v16 = *(v53 + 24);
    v17 = *(v53 + 25);
    v71 = v86[4];
    v70 = v17;
    v69 = v16;
    for (i = v49; ; i = v32)
    {
      v35 = i;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3928, &qword_1B0EA31B0);
      sub_1B0E44608();
      v36 = v67;
      v37 = v68;
      if (!v67)
      {
        break;
      }

      v33 = v36;
      v34 = v37;
      v31 = v36;
      v32 = v35;
      v65 = v36;
      v66 = v37;
      v63 = v36;
      v64 = v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3800, &qword_1B0EA2E08);
      sub_1B0E445B8();
      sub_1B074EB58(v56);
    }

    sub_1B06B91B0();
    v18 = swift_allocObject();
    v19 = v57;
    v20 = v38;
    v21 = v18;
    v22 = v35;
    v27[1] = v21;
    *(v21 + 16) = v87;
    v23 = v88;
    v24 = v89;
    v25 = v90;
    *(v21 + 80) = v91;
    *(v21 + 64) = v25;
    *(v21 + 48) = v24;
    *(v21 + 32) = v23;
    *(v21 + 96) = v19;
    *(v21 + 104) = v20;
    v28 = sub_1B0A24328;
    v29 = v21;
    v30 = v22;
    return v28;
  }

  result = sub_1B0A241A0(&v87);
  __break(1u);
  return result;
}

uint64_t sub_1B0A234C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = a1;
  v24 = a2;
  v25 = a3;
  v39 = 0;
  v38 = 0;
  v37 = 0;
  v35 = 0;
  v36 = 0;
  v34 = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3920, &qword_1B0E9B070);
  v13 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v14 = v12 - v13;
  v15 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12 - v13);
  v31 = v12 - v15;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v28 = *(v30 - 8);
  v29 = v30 - 8;
  v20 = *(v28 + 64);
  v17 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v24);
  v18 = v12 - v17;
  v19 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v21 = v12 - v19;
  v39 = v12 - v19;
  v22 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v23 = v12 - v22;
  v38 = v12 - v22;
  v37 = v8;
  v35 = v9;
  v36 = v10;
  v34 = v3;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v26 = *(v3 + 16);
  v27 = v33;
  v33[0] = v24;
  v33[1] = v25;
  sub_1B03B8BD8();
  sub_1B0E44778();
  sub_1B039E440(v27);
  if ((*(v28 + 48))(v31, 1, v30) == 1)
  {
    sub_1B074EB58(v31);
    sub_1B03D08AC(v16, v18);
    sub_1B074BA2C(v18, v23);
  }

  else
  {
    sub_1B074BA2C(v31, v21);
    MessageIdentifierSet.union(_:)(v21, v18);
    sub_1B074BA2C(v18, v23);
    sub_1B03D09B8(v21);
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B03D08AC(v23, v14);
  (*(v28 + 56))(v14, 0, 1, v30);
  v12[1] = v32;
  v32[0] = v24;
  v32[1] = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3800, &qword_1B0EA2E08);
  sub_1B0E44788();
  return sub_1B03D09B8(v23);
}

uint64_t sub_1B0A23848()
{
  v2 = *(v0 + 8);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v2;
}

uint64_t sub_1B0A23890(char a1, uint64_t a2, char a3)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(v3 + 8) = a1;
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
}

uint64_t sub_1B0A238FC()
{
  v2 = *(v0 + 48);
  sub_1B0A24364(v2, *(v0 + 56));
  return v2;
}

uint64_t sub_1B0A23934(uint64_t a1, uint64_t a2)
{
  sub_1B0A24364(a1, a2);
  v3 = *(v2 + 48);
  v4 = *(v2 + 56);
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  sub_1B041589C(v3, v4);
  return sub_1B041589C(a1, a2);
}

uint64_t sub_1B0A23984()
{
  v2 = *(v0 + 64);

  return v2;
}

uint64_t sub_1B0A239BC(uint64_t a1, uint64_t a2)
{

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
}

uint64_t sub_1B0A23B30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a1;
  v11 = a2;
  v15 = a3;
  v22 = 0;
  v21 = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3830, &qword_1B0EA2E20);
  v10 = (*(*(v14 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v14);
  v19 = (&v9 - v10);
  v22 = &v9 - v10;
  v12 = *v3;
  v13 = v3[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v4 = v11;
  v5 = v13;
  v6 = v14;
  v7 = v19;
  *v19 = v12;
  v7[1] = v5;
  sub_1B03D08AC(v4, v7 + *(v6 + 48));
  v21 = v15;
  v16 = *(v15 + 8);
  v18 = *(v15 + 16);
  v17 = *(v15 + 24);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v20 = SyncRequest.includes(_:)(*v19, v19[1], v16, v18);

  sub_1B0A24E88(v19);
  return v20 & 1;
}

uint64_t sub_1B0A23C78(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v6 = *(a1 + 64);

  v6(a2, a3);
}

uint64_t sub_1B0A23CF4(uint64_t a1, uint64_t a2)
{
  v10 = a1;
  v25 = 0;
  v23 = 0;
  v24 = 0;
  v22 = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1668, &qword_1B0E99858);
  v9 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v20 = &v6 - v9;
  v21 = type metadata accessor for Activity.MailboxStatus(0);
  v18 = *(v21 - 8);
  v19 = v21 - 8;
  v12 = *(v18 + 64);
  v11 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v21);
  v13 = &v6 - v11;
  v14 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v6 - v11);
  v15 = &v6 - v14;
  v25 = &v6 - v14;
  v16 = *v4;
  v17 = v4[1];
  v23 = v16;
  v24 = v17;
  v22 = a2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  Activity.subscript.getter(v16, v17, v20);
  if ((*(v18 + 48))(v20, 1, v21) != 1)
  {
    sub_1B0415DC0(v20, v15);

    sub_1B0416014(v15, v13);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_1B06BB840(v13);
      }

      else if (EnumCaseMultiPayload != 2)
      {
        goto LABEL_6;
      }

      sub_1B0416B60(v15);
      v8 = 0;
      return v8 & 1;
    }

LABEL_6:
    sub_1B0416B60(v15);
    v8 = 1;
    return v8 & 1;
  }

  sub_1B0415C08(v20);

  v8 = 0;
  return v8 & 1;
}

uint64_t sub_1B0A23FC4@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *(result + 8);
  if ((*(result + 25) & 1) != 0 || (_s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0(), , result = static SyncRequest.Kind.__derived_enum_equals(_:_:)(v4, 4u), (result & 1) == 0))
  {
    *a2 = 0;
    *(a2 + 4) = 1;
  }

  else
  {
    *a2 = v3;
    *(a2 + 4) = 0;
  }

  return result;
}

uint64_t sub_1B0A241A0(uint64_t a1)
{

  if (*(a1 + 48))
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  return a1;
}

uint64_t sub_1B0A24204(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  v8 = *(a1 + 16);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(a2 + 16) = v8;
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 25) = *(a1 + 25);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 40) = *(a1 + 40);
  if (*(a1 + 48))
  {
    v5 = *(a1 + 48);
    swift_unknownObjectRetain();
    *(a2 + 48) = v5;
    v6 = *(a1 + 56);
    swift_unknownObjectRetain();
    *(a2 + 56) = v6;
  }

  else
  {
    *(a2 + 48) = *(a1 + 48);
  }

  v3 = *(a1 + 64);
  v4 = *(a1 + 72);

  result = a2;
  *(a2 + 64) = v3;
  *(a2 + 72) = v4;
  return result;
}

uint64_t sub_1B0A24364(uint64_t result, uint64_t a2)
{
  if (result)
  {
    swift_unknownObjectRetain();
    return swift_unknownObjectRetain();
  }

  return result;
}

unint64_t sub_1B0A243A4()
{
  v2 = qword_1EB6E3948;
  if (!qword_1EB6E3948)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E3948);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0A24420()
{
  v2 = qword_1EB6E3950;
  if (!qword_1EB6E3950)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E3950);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B0A244D0(uint64_t a1)
{
  swift_unknownObjectRetain();
  *v1 = a1;
  swift_unknownObjectRelease();
  return swift_unknownObjectRelease();
}

unint64_t sub_1B0A24570()
{
  v2 = qword_1EB6E3988;
  if (!qword_1EB6E3988)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E3988);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0A2479C()
{
  v2 = qword_1EB6E3990;
  if (!qword_1EB6E3990)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E3990);
    return WitnessTable;
  }

  return v2;
}

void *__swift_memcpy14_8(void *result, void *a2)
{
  *result = *a2;
  *(result + 6) = *(a2 + 6);
  return result;
}

uint64_t sub_1B0A248DC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFF && *(a1 + 14))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (*a1 < 0x100000000uLL)
      {
        v3 = *a1;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

void *sub_1B0A24A24(void *result, int a2, int a3)
{
  v3 = result;
  v4 = result + 14;
  if (a2 < 0)
  {
    result = 0;
    *(v3 + 6) = 0;
    *(v3 + 2) = 0;
    *v3 = a2 + 0x80000000;
    if (a3 < 0)
    {
      *v4 = 1;
    }
  }

  else
  {
    if (a3 < 0)
    {
      *v4 = 0;
    }

    if (a2)
    {
      *result = (a2 - 1);
    }
  }

  return result;
}

unint64_t sub_1B0A24C50()
{
  v2 = qword_1EB6E3998;
  if (!qword_1EB6E3998)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E3998);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0A24CE4()
{
  v2 = qword_1EB6E39A0;
  if (!qword_1EB6E39A0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E39A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0A24D78()
{
  v2 = qword_1EB6E39A8;
  if (!qword_1EB6E39A8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E39A8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0A24E0C()
{
  v2 = qword_1EB6E39B0;
  if (!qword_1EB6E39B0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E39B0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B0A24E88(uint64_t a1)
{

  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3830, &qword_1B0EA2E20) + 48);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  (*(*(v1 - 8) + 8))(a1 + v3);
  return a1;
}

uint64_t sub_1B0A24F1C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v113 = a3;
  v142 = a1;
  v159 = a2;
  v188 = 0;
  v187 = 0;
  v186 = 0;
  v185 = 0;
  v184 = 0;
  v183 = 0;
  v182 = 0;
  v181 = 0;
  v179 = 0;
  v177 = 0;
  v178 = 0;
  v174 = 0;
  v175 = 0;
  v171 = 0;
  v170 = 0;
  v169 = 0;
  v162 = 0;
  v163 = 0;
  v161 = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E39C8, &qword_1B0EA35E8);
  v114 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v115 = v35 - v114;
  v135 = 0;
  v116 = (*(*(sub_1B0E43438() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v135);
  v117 = v35 - v116;
  v118 = sub_1B0E43498();
  v119 = *(v118 - 8);
  v120 = v118 - 8;
  v121 = (*(v119 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v135);
  v122 = v35 - v121;
  v123 = sub_1B0E433B8();
  v124 = *(v123 - 8);
  v125 = v123 - 8;
  v126 = (*(v124 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v135);
  v127 = v35 - v126;
  v128 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v129 = v35 - v128;
  v188 = v35 - v128;
  v157 = sub_1B0E43108();
  v153 = *(v157 - 8);
  v154 = v157 - 8;
  v130 = (*(v153 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v135);
  v131 = v35 - v130;
  v132 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v156 = v35 - v132;
  v133 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v155 = v35 - v133;
  v187 = v35 - v133;
  v134 = (*(*(type metadata accessor for IndexableMessageInfo(v10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v135);
  v152 = (v35 - v134);
  v136 = sub_1B0E433E8();
  v137 = *(v136 - 8);
  v138 = v136 - 8;
  v139 = (*(v137 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v135);
  v140 = v35 - v139;
  v141 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v151 = v35 - v141;
  v186 = v35 - v141;
  v143 = sub_1B0E43428();
  v144 = *(v143 - 8);
  v145 = v143 - 8;
  v147 = *(v144 + 64);
  v146 = (v147 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v142);
  v148 = v35 - v146;
  v149 = (v147 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v13);
  v150 = v35 - v149;
  v185 = v35 - v149;
  v184 = v14;
  v183 = v15;
  sub_1B08A9C20(v14, v16);
  sub_1B0A268AC(v152, v151);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v158 = [v159 dateReceived];
  sub_1B0E430D8();
  (*(v153 + 32))(v155, v156, v157);
  swift_unknownObjectRelease();
  MEMORY[0x1E69E5920](v158);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v160 = [v159 headersDictionary];
  if (v160)
  {
    v112 = v160;
    v109 = v160;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
    v110 = sub_1B0E445A8();
    MEMORY[0x1E69E5920](v109);
    v111 = v110;
  }

  else
  {
    v111 = 0;
  }

  v108 = v111;
  swift_unknownObjectRelease();
  if (v108)
  {
    v107 = v108;
    v104 = v108;
    v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E39D0, &qword_1B0EA35F0);
    v105 = sub_1B0E465D8();

    v106 = v105;
  }

  else
  {
    v106 = 0;
  }

  v101 = v106;
  v182 = v106;
  swift_getObjectType();
  swift_unknownObjectRetain();
  v102 = [v159 isPartOfExistingThread];
  v181 = v102 & 1;
  v17 = swift_unknownObjectRelease();
  v180[0] = MEMORY[0x1B27254E0](v17);
  v180[1] = v18;
  v100 = (v18 & 0xF000000000000000) != 0xF000000000000000;
  v98 = v100;
  sub_1B043C03C(v180);
  v179 = v98;
  swift_getObjectType();
  swift_unknownObjectRetain();
  v99 = [v159 account];
  swift_unknownObjectRelease();
  if (v99)
  {
    v97 = v99;
    v91 = v99;
    swift_getObjectType();
    v92 = [v91 identifier];
    v93 = sub_1B0E44AD8();
    v94 = v19;
    swift_unknownObjectRelease();
    MEMORY[0x1E69E5920](v92);
    v95 = v93;
    v96 = v94;
  }

  else
  {
    v95 = 0;
    v96 = 0;
  }

  v88 = v96;
  v89 = v95;
  v177 = v95;
  v178 = v96;
  swift_getObjectType();
  swift_unknownObjectRetain();
  v90 = [v159 account];
  swift_unknownObjectRelease();
  if (v90)
  {
    v87 = v90;
    v84 = v90;
    swift_getObjectType();
    v85 = [v84 isManaged];
    swift_unknownObjectRelease();
    v86 = v85;
  }

  else
  {
    v86 = 2;
  }

  v176 = v86;
  if (v86 == 2)
  {
    v83 = 0;
  }

  else
  {
    v83 = v176;
  }

  if (v83)
  {
    (*(v124 + 104))(v129, *MEMORY[0x1E699B378], v123);
  }

  else
  {
    (*(v124 + 104))(v129, *MEMORY[0x1E699B380], v123);
  }

  v81 = [objc_opt_self() csAccountTypeString];
  v174 = sub_1B0E44AD8();
  v175 = v20;
  MEMORY[0x1E69E5920](v81);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v82 = [v159 account];
  if (v82)
  {
    v80 = v82;
    v79 = v82;
    v161 = v82;
    swift_unknownObjectRelease();
    swift_getObjectType();
    v78 = [swift_getObjCClassFromMetadata() csAccountTypeString];
    v174 = sub_1B0E44AD8();
    v175 = v21;

    MEMORY[0x1E69E5920](v78);
  }

  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_unknownObjectRetain();
  v77 = [v159 account];
  swift_unknownObjectRelease();
  if (v77)
  {
    v76 = v77;
    v72 = v77;
    swift_getObjectType();
    v73 = [v72 emailAddressStrings];
    v74 = sub_1B0E451B8();
    swift_unknownObjectRelease();
    MEMORY[0x1E69E5920](v73);
    v75 = v74;
  }

  else
  {
    v75 = 0;
  }

  v172 = v75;
  if (v75)
  {
    v173 = v172;
  }

  else
  {
    v173 = sub_1B0E46A48();
    if (v172)
    {
      sub_1B039E440(&v172);
    }
  }

  v22 = v122;
  v66 = v173;
  v171 = v173;
  v67 = objc_opt_self();
  swift_getObjectType();
  swift_unknownObjectRetain();
  v68 = [v67 searchableMessageUpdateForBaseMessage_];
  swift_unknownObjectRelease();
  v170 = v68;
  sub_1B0A271F0();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  swift_getObjectType();
  swift_unknownObjectRetain();
  v70 = [ObjCClassFromMetadata searchableMessageAttachmentsForBaseMessage:v159 includeEncryptedBody:0];
  swift_unknownObjectRelease();
  v169 = v70;
  (*(v119 + 104))(v22, *MEMORY[0x1E69ADB08], v118);
  v71 = sub_1B0E43478();
  (*(v119 + 8))(v122, v118);
  if (v71)
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v61 = [v159 notificationID];
    v62 = sub_1B0E44AD8();
    v63 = v23;
    swift_unknownObjectRelease();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v167 = v62;
    v168 = v63;
    MEMORY[0x1E69E5920](v61);
    v64 = v62;
    v65 = v63;
  }

  else
  {
    v167 = 0;
    v168 = 0;
    v64 = 0;
    v65 = 0;
  }

  v46 = v65;
  v47 = v64;
  v51 = 0;
  v24 = sub_1B0E46A28();
  v54 = &v165;
  v165 = v24;
  v166 = v25;
  v50 = "";
  v52 = 1;
  v26 = sub_1B0E44838();
  v48 = v27;
  MEMORY[0x1B2728B30](v26);

  swift_getObjectType();
  swift_unknownObjectRetain();
  v49 = [v159 globalMessageID];
  swift_unknownObjectRelease();
  v164 = v49;
  sub_1B0E469F8();
  v28 = sub_1B0E44838();
  v53 = v29;
  MEMORY[0x1B2728B30](v28);

  v56 = v165;
  v55 = v166;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B03B1198(v54);
  v57 = sub_1B0E44C88();
  v58 = v30;
  v162 = v57;
  v163 = v30;
  (*(v137 + 16))(v140, v151, v136);
  (*(v153 + 16))(v131, v155, v157);
  (*(v124 + 16))(v127, v129, v123);
  v59 = v174;
  v60 = v175;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0E45C88();
  MEMORY[0x1E69E5928](v70);
  if (v70)
  {
    v45 = v70;
    v44 = v70;
    sub_1B0E45C98();
    MEMORY[0x1E69E5920](v44);
    v32 = sub_1B0E43468();
    (*(*(v32 - 8) + 56))(v115, 0, 1);
  }

  else
  {
    v31 = sub_1B0E43468();
    (*(*(v31 - 8) + 56))(v115, 1);
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_getObjectType();
  swift_unknownObjectRetain();
  v42 = [v159 category];
  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_unknownObjectRetain();
  v43 = [v159 summary];
  if (v43)
  {
    v41 = v43;
    v36 = v43;
    v37 = sub_1B0E44AD8();
    v38 = v33;
    MEMORY[0x1E69E5920](v36);
    v39 = v37;
    v40 = v38;
  }

  else
  {
    v39 = 0;
    v40 = 0;
  }

  v35[2] = v40;
  v35[1] = v39;
  swift_unknownObjectRelease();
  sub_1B0E433F8();
  (*(v144 + 32))(v150, v148, v143);

  sub_1B03B1198(&v167);
  MEMORY[0x1E69E5920](v70);
  MEMORY[0x1E69E5920](v68);
  sub_1B03B1198(&v174);
  (*(v124 + 8))(v129, v123);
  (*(v153 + 8))(v155, v157);
  (*(v137 + 8))(v151, v136);
  (*(v144 + 16))(v113, v150, v143);
  swift_unknownObjectRelease();
  sub_1B08AA168(v142);
  return (*(v144 + 8))(v150, v143);
}

uint64_t sub_1B0A268AC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v88 = a1;
  v63 = sub_1B0A27254;
  v64 = sub_1B0A27398;
  v65 = sub_1B0A27398;
  v66 = sub_1B0A27398;
  v127 = 0;
  v126 = 0;
  v125 = 0;
  v124 = 0;
  v118 = 0;
  v119 = 0;
  v67 = 0;
  v102 = 0;
  v99 = 0;
  v97 = 0;
  v95 = 0;
  v93 = 0;
  v94 = 0;
  memset(v92, 0, sizeof(v92));
  v79 = 0;
  v68 = sub_1B0E433A8();
  v69 = (*(*(v68 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v68);
  v70 = v21 - v69;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E39D8, &qword_1B0EA35F8);
  v71 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v72 = v21 - v71;
  v73 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v21 - v71);
  v74 = v21 - v73;
  v127 = v21 - v73;
  v75 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v79);
  v76 = v21 - v75;
  v77 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v78 = v21 - v77;
  v126 = v21 - v77;
  v80 = sub_1B0E433E8();
  v81 = *(v80 - 8);
  v82 = v80 - 8;
  v84 = *(v81 + 64);
  v83 = (v84 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v79);
  v85 = v21 - v83;
  v86 = (v84 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v87 = v21 - v86;
  v125 = v21 - v86;
  v124 = v7;
  v89 = type metadata accessor for IndexableMessageInfo(v8);
  v9 = (v88 + v89[9]);
  v90 = *v9;
  v91 = v9[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v120 = v90;
  v121 = v91;
  if (v91)
  {
    v122 = v120;
    v123 = v121;
  }

  else
  {
    v122 = sub_1B0E44838();
    v123 = v10;
    if (v121)
    {
      sub_1B03B1198(&v120);
    }
  }

  v11 = v67;
  v57 = v122;
  v58 = v123;
  v118 = v122;
  v119 = v123;
  sub_1B06BC2F4(v88 + v89[6], v78);
  v12 = v88 + v89[11];
  v13 = *v12;
  LOBYTE(v12) = v12[1];
  v116 = v13;
  v117 = v12 & 1;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E39E0, &qword_1B0EA3600);
  v14 = sub_1B0E43418();
  result = sub_1B039A570(v63, 0, v59, MEMORY[0x1E69E73E0], v14, v60, v74);
  v61 = v11;
  if (v11)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    __break(1u);
    __break(1u);
    return result;
  }

  v102 = sub_1B0E46A48();
  v16 = v88 + v89[7];
  v55 = v103;
  v56 = 96;
  memcpy(v103, v16, sizeof(v103));
  sub_1B0A27294(v103, v101);
  memcpy(&__dst, v55, v56);
  if (v107)
  {
    v49 = __dst;
    v51 = v105;
    v50 = v106;
    v52 = v107;
    v53 = v111;
    v54 = v115;
    v92[0] = __dst;
    v92[1] = v105;
    v92[2] = v106;
    v92[3] = v107;
    v92[4] = v108;
    v92[5] = v109;
    v92[6] = v110;
    v92[7] = v111;
    v92[8] = v112;
    v92[9] = v113;
    v92[10] = v114;
    v92[11] = v115;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0E43398();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E39F0, &unk_1B0EA3610);
    sub_1B0E452E8();
  }

  v17 = v61;
  v44 = *(v88 + v89[10]);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v100 = v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E39E8, &qword_1B0EA3608);
  v46 = sub_1B0A27410();
  result = sub_1B039CA88(v64, 0, v45, v68, MEMORY[0x1E69E73E0], v46, MEMORY[0x1E69E7410], v60);
  v47 = v17;
  v48 = result;
  if (v17)
  {
    goto LABEL_16;
  }

  v40 = v48;
  sub_1B039E440(&v100);
  v99 = v40;
  v41 = v88[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v98 = v41;
  v18 = sub_1B039CA88(v65, 0, v45, v68, MEMORY[0x1E69E73E0], v46, MEMORY[0x1E69E7410], v60);
  v42 = 0;
  v43 = v18;
  v37 = v18;
  sub_1B039E440(&v98);
  v97 = v37;
  v38 = *v88;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v96 = v38;
  v39 = sub_1B039CA88(v66, 0, v45, v68, MEMORY[0x1E69E73E0], v46, MEMORY[0x1E69E7410], v60);
  v33 = v39;
  sub_1B039E440(&v96);
  v95 = v33;
  v19 = v88 + v89[15];
  v34 = *v19;
  v35 = *(v19 + 1);
  v36 = v19[16];
  sub_1B08AA33C(v34, v35, v36);
  if (v36 == 255)
  {
    v28 = 0;
    v29 = 0xF000000000000000;
  }

  else
  {
    v30 = v34;
    v31 = v35;
    v32 = v36;
    v23 = v36;
    v25 = v35;
    v24 = v34;
    v26 = IndexableMessageInfo.Content.data.getter(v34, v35);
    v27 = v20;
    sub_1B08A9938();
    v28 = v26;
    v29 = v27;
  }

  v21[2] = v29;
  v21[1] = v28;
  v93 = v28;
  v94 = v29;
  sub_1B06BC2F4(v78, v76);
  sub_1B0A27498(v74, v72);
  v22 = &v102;
  v21[3] = v102;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0E433D8();
  (*(v81 + 32))(v87, v85, v80);
  sub_1B039E440(v22);
  sub_1B0A275C0(v74);
  sub_1B06B97A8(v78);
  (*(v81 + 16))(v62, v87, v80);
  sub_1B08AA168(v88);
  return (*(v81 + 8))(v87, v80);
}

unint64_t sub_1B0A271F0()
{
  v2 = qword_1EB6DA850;
  if (!qword_1EB6DA850)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB6DA850);
    return ObjCClassMetadata;
  }

  return v2;
}

void *sub_1B0A27294(void *a1, void *a2)
{
  if (a1[3])
  {
    *a2 = *a1;
    v3 = a1[1];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    a2[1] = v3;
    a2[2] = a1[2];
    v4 = a1[3];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    a2[3] = v4;
    a2[4] = a1[4];
    a2[5] = a1[5];
    a2[6] = a1[6];
    v5 = a1[7];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    a2[7] = v5;
    a2[8] = a1[8];
    a2[9] = a1[9];
    a2[10] = a1[10];
    v6 = a1[11];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    a2[11] = v6;
  }

  else
  {
    memcpy(a2, a1, 0x60uLL);
  }

  return a2;
}

uint64_t sub_1B0A27398(uint64_t *a1)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return sub_1B0E43398();
}

unint64_t sub_1B0A27410()
{
  v2 = qword_1EB6DB0A8;
  if (!qword_1EB6DB0A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E39E8, &qword_1B0EA3608);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB0A8);
    return WitnessTable;
  }

  return v2;
}

void *sub_1B0A27498(const void *a1, void *a2)
{
  v6 = sub_1B0E43418();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E39D8, &qword_1B0EA35F8);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_1B0A275C0(uint64_t a1)
{
  v3 = sub_1B0E43418();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_1B0A27668@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B0A2C36C();
  v1 = sub_1B0E439A8();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1B0A27778(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_allocObject();
  v11 = sub_1B0A28920(a1, a2, a3, a4);
  if (v9)
  {
    return v5;
  }

  else
  {
    return v11;
  }
}

uint64_t sub_1B0A2781C()
{
  v73 = 0;
  v48 = sub_1B0A2C624;
  v49 = sub_1B0A2C62C;
  v50 = sub_1B039BC08;
  v51 = sub_1B0398F5C;
  v52 = sub_1B0398F5C;
  v53 = sub_1B03991EC;
  v54 = sub_1B0A2C618;
  v55 = *v0;
  v91 = 0;
  v90 = 0;
  v56 = 0;
  v62 = 0;
  v57 = sub_1B0E44238();
  v58 = *(v57 - 8);
  v59 = v57 - 8;
  v60 = (*(v58 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v61 = &v20 - v60;
  v63 = sub_1B0E44288();
  v64 = *(v63 - 8);
  v65 = v63 - 8;
  v66 = (*(v64 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v62);
  v67 = &v20 - v66;
  v68 = sub_1B0E439A8();
  v69 = *(v68 - 8);
  v70 = v68 - 8;
  v71 = (*(v69 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v68);
  v72 = &v20 - v71;
  v91 = v0;
  static IndexRequest.ID.makeNext()();
  v74 = v1;
  v90 = v1;
  v75 = v89;
  swift_beginAccess();
  v76 = sub_1B0A3A058(v74);
  swift_endAccess();
  if (v76)
  {
    v22 = *(v47 + 16);
    MEMORY[0x1E69E5928](v22);

    v17 = swift_allocObject();
    v18 = v74;
    v19 = v54;
    *(v17 + 16) = v47;
    *(v17 + 24) = v18;
    v87 = v19;
    v88 = v17;
    aBlock = MEMORY[0x1E69E9820];
    v83 = 1107296256;
    v84 = 0;
    v85 = sub_1B038C908;
    v86 = &block_descriptor_19;
    v21 = _Block_copy(&aBlock);
    sub_1B039B81C();
    sub_1B039B77C();
    MEMORY[0x1B2727B00](0, v67, v61, v21);
    (*(v58 + 8))(v61, v57);
    (*(v64 + 8))(v67, v63);
    _Block_release(v21);

    return MEMORY[0x1E69E5920](v22);
  }

  else
  {
    sub_1B0A27668(v72);

    v35 = 32;
    v36 = 7;
    v2 = swift_allocObject();
    v3 = v47;
    v37 = v2;
    *(v2 + 16) = v48;
    *(v2 + 24) = v3;

    v45 = sub_1B0E43988();
    v46 = sub_1B0E458E8();
    v34 = 17;
    v39 = swift_allocObject();
    *(v39 + 16) = 2;
    v40 = swift_allocObject();
    *(v40 + 16) = 4;
    v4 = swift_allocObject();
    v5 = v37;
    v38 = v4;
    *(v4 + 16) = v49;
    *(v4 + 24) = v5;
    v6 = swift_allocObject();
    v7 = v38;
    v42 = v6;
    *(v6 + 16) = v50;
    *(v6 + 24) = v7;
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v41 = sub_1B0E46A48();
    v43 = v8;

    v9 = v39;
    v10 = v43;
    *v43 = v51;
    v10[1] = v9;

    v11 = v40;
    v12 = v43;
    v43[2] = v52;
    v12[3] = v11;

    v13 = v42;
    v14 = v43;
    v43[4] = v53;
    v14[5] = v13;
    sub_1B0394964();

    if (os_log_type_enabled(v45, v46))
    {
      v15 = v56;
      v27 = sub_1B0E45D78();
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v26 = 0;
      v28 = sub_1B03949A8(0, v25, v25);
      v29 = sub_1B03949A8(v26, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v30 = &v81;
      v81 = v27;
      v31 = &v80;
      v80 = v28;
      v32 = &v79;
      v79 = v29;
      sub_1B0394A48(0, &v81);
      sub_1B0394A48(1, v30);
      v77 = v51;
      v78 = v39;
      sub_1B03949FC(&v77, v30, v31, v32);
      v33 = v15;
      if (v15)
      {

        __break(1u);
      }

      else
      {
        v77 = v52;
        v78 = v40;
        sub_1B03949FC(&v77, &v81, &v80, &v79);
        v24 = 0;
        v77 = v53;
        v78 = v42;
        sub_1B03949FC(&v77, &v81, &v80, &v79);
        _os_log_impl(&dword_1B0389000, v45, v46, "[%{public}u] Download & index already running.", v27, 8u);
        v23 = 0;
        sub_1B03998A8(v28, 0, v25);
        sub_1B03998A8(v29, v23, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v45);
    return (*(v69 + 8))(v72, v68);
  }
}

_BYTE *sub_1B0A28230@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  memset(__b, 0, 0x23uLL);
  v38 = 0;
  v39 = 0;
  v40 = 0;
  v37 = 0;
  v35 = 0;
  v36 = 0;
  v41 = a1;
  v31 = sub_1B0A38D58();
  v32 = v3;
  v33 = v4;
  if (!v3)
  {
    goto LABEL_16;
  }

  v38 = v31;
  v39 = v3;
  v40 = v4;
  v5 = sub_1B0A394B4();
  v28 = v5;
  if ((v5 & 0xFC) == 0xFC)
  {
    goto LABEL_15;
  }

  v37 = v5;
  MEMORY[0x1E69E5928](a1);
  v6 = [a1 identifier];
  v27 = v6;
  if (v6)
  {
    v25._countAndFlagsBits = sub_1B0E44AD8();
    v25._object = v7;
    MEMORY[0x1E69E5920](v27);
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  MEMORY[0x1E69E5920](a1);
  if (v26._object)
  {
    rawValue = v26;
  }

  else
  {
    sub_1B0E465A8();
    __break(1u);
  }

  *&v8 = AccountID.init(rawValue:)(rawValue);
  v22 = v8;
  v23 = v9;
  if (!v9)
  {
LABEL_15:

LABEL_16:
    result = MEMORY[0x1E69E5920](a1);
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    goto LABEL_17;
  }

  v35 = v8;
  v36 = v9;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  AccountConfiguration.init(accountID:endpoint:transportLayerSecurity:)(v22, v23, v31, v32, v33, v28, v43);
  v13 = v43[0];
  v14 = v43[1];
  v15 = v43[2];
  v16 = v43[3];
  v12 = LOWORD(v43[4]);
  v11 = BYTE2(v43[4]);
  sub_1B0A39750(v43, v34);
  memcpy(__b, v43, 0x23uLL);

  MEMORY[0x1E69E5920](a1);
  result = __b;
  sub_1B06FF6F0(__b);
  v17 = v13;
  v18 = v14;
  v19 = v15;
  v20 = v16;
  v21 = v12 | (v11 << 16);
LABEL_17:
  *a2 = v17;
  *(a2 + 8) = v18;
  *(a2 + 16) = v19;
  *(a2 + 24) = v20;
  *(a2 + 32) = v21;
  *(a2 + 34) = BYTE2(v21);
  return result;
}

uint64_t sub_1B0A28634()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  return Strong;
}

uint64_t sub_1B0A28698(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRetain();
  swift_beginAccess();
  *(v2 + 40) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  swift_endAccess();
  return swift_unknownObjectRelease();
}

uint64_t sub_1B0A28714()
{
  v2 = *(v0 + 80);

  return v2;
}

uint64_t sub_1B0A28740()
{
  swift_beginAccess();
  v2 = *(v0 + 88);
  swift_endAccess();
  return v2;
}

uint64_t sub_1B0A2878C(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 88) = a1;
  return swift_endAccess();
}

uint64_t sub_1B0A287D8()
{
  swift_beginAccess();
  v2 = *(v0 + 96);
  swift_endAccess();
  return v2;
}

uint64_t sub_1B0A28824(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 96) = a1;
  return swift_endAccess();
}

uint64_t sub_1B0A28870()
{
  swift_beginAccess();
  v2 = *(v0 + 104);

  swift_endAccess();
  return v2;
}

uint64_t sub_1B0A288C0(uint64_t a1)
{

  swift_beginAccess();
  *(v1 + 104) = a1;

  swift_endAccess();
}

uint64_t sub_1B0A28920(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v96 = a1;
  v79 = a2;
  v78 = a3;
  v93 = a4;
  v84 = 0;
  v100 = sub_1B0A397CC;
  v98 = sub_1B0A397D8;
  v66 = sub_1B0A397E0;
  v67 = sub_1B0A3984C;
  v68 = *v4;
  v125 = 0;
  v123 = 0;
  v124 = 0;
  v122 = 0;
  v121 = 0;
  v120 = 0;
  v92 = 0;
  v69 = sub_1B0E44208();
  v70 = *(v69 - 8);
  v71 = v69 - 8;
  v72 = (*(v70 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v73 = (v37 - v72);
  v74 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v75 = (v37 - v74);
  v76 = (*(*(sub_1B0E459C8() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v92);
  v90 = v37 - v76;
  v77 = (*(*(sub_1B0E45988() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v92);
  v89 = v37 - v77;
  v80 = (*(*(sub_1B0E44288() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v92);
  v88 = v37 - v80;
  v125 = v7;
  v123 = v8;
  v124 = v9;
  v122 = v10;
  v121 = v4;
  v83 = sub_1B06CCC58();
  v85 = 1;
  v81 = sub_1B0E44838();
  v82 = v11;
  sub_1B039B81C();
  sub_1B06BFBDC();
  sub_1B06BFC7C(v90);
  v12 = sub_1B0E45A08();
  v13 = v91;
  *(v91 + 16) = v12;
  *(v13 + 40) = 0;
  swift_unknownObjectWeakInit();
  v14 = sub_1B0A39FEC();
  v15 = v91;
  *(v91 + 72) = v14;
  v15[11] = 0;
  v15[12] = 0;
  v15[13] = 0;
  v86 = sub_1B0E44838();
  v87 = v16;
  sub_1B039B81C();
  sub_1B06BFBDC();
  sub_1B06BFC7C(v90);
  v17 = sub_1B0E45A08();
  v18 = v91;
  v94 = v17;
  v120 = v17;
  swift_unknownObjectRetain();
  *(v18 + 24) = v93;
  type metadata accessor for SyncSession();
  swift_unknownObjectRetain();
  MEMORY[0x1E69E5928](v94);
  v95 = 7;
  v19 = swift_allocObject();
  v20 = v94;
  v21 = v19;
  v22 = v96;
  v97 = v21;
  *(v21 + 16) = v93;
  *(v21 + 24) = v20;
  MEMORY[0x1E69E5928](v22);
  v23 = swift_allocObject();
  v24 = v97;
  v25 = v98;
  v26 = v99;
  v27 = v23;
  v28 = v100;
  *(v27 + 16) = v96;
  v29 = SyncSession.__allocating_init(generateCredentials:updateIndexingStatistics:)(v28, v24, v25, v27);
  v101 = v26;
  v102 = v29;
  v103 = v26;
  if (v26)
  {
    v41 = v103;
    MEMORY[0x1E69E5920](v94);
    v42 = v41;
    v43 = 1863;
  }

  else
  {
    *(v91 + 80) = v102;
    swift_unknownObjectRetain();
    v61 = v91 + 32;
    v62 = v119;
    swift_beginAccess();
    *(v91 + 40) = v78;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    swift_endAccess();
    MEMORY[0x1E69E5928](v96);
    *(v91 + 48) = v96;
    *(v91 + 56) = sub_1B0A297E4();
    v30 = static MonotonicTime.now()();
    v31 = v91;
    *(v91 + 64) = v30;
    v63 = *(v31 + 80);

    SyncSession.activate()();
    v64 = v32;
    v65 = v32;
    if (!v32)
    {

      type metadata accessor for RestartableTimer();
      v49 = *(v91 + 16);
      MEMORY[0x1E69E5928](v49);
      v33 = v70;
      *v75 = 10;
      v44 = MEMORY[0x1E69E7F48];
      v46 = *(v33 + 104);
      v45 = v33 + 104;
      v46();
      v34 = v46;
      *v73 = 1;
      v34();
      v53 = &unk_1F270A398;
      v54 = 24;
      v55 = 7;
      v50 = swift_allocObject();
      v47 = v50 + 16;

      v48 = v91;
      swift_weakInit();

      v117 = v66;
      v118 = v50;
      aBlock = MEMORY[0x1E69E9820];
      v58 = 1107296256;
      v113 = 1107296256;
      v114 = 0;
      v115 = sub_1B038C908;
      v116 = &block_descriptor_28;
      v35 = _Block_copy(&aBlock);
      v51 = RestartableTimer.__allocating_init(queue:repeating:leeway:closure:)(v49, v75, v73, v35);

      v52 = v111;
      swift_beginAccess();
      *(v91 + 104) = v51;

      swift_endAccess();
      v59 = swift_allocObject();
      v56 = v59 + 16;

      v57 = v91;
      swift_weakInit();

      v109 = v67;
      v110 = v59;
      v104 = MEMORY[0x1E69E9820];
      v105 = v58;
      v106 = 0;
      v107 = sub_1B0A2C1B8;
      v108 = &block_descriptor_32_0;
      v60 = _Block_copy(&v104);

      [v96 setExpirationHandlerWithReason_];
      _Block_release(v60);
      MEMORY[0x1E69E5920](v94);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      MEMORY[0x1E69E5920](v96);
      return v91;
    }

    v40 = v65;

    MEMORY[0x1E69E5920](v94);
    v42 = v40;
    v43 = 2047;
  }

  v38 = v43;
  v39 = v42;
  if ((v43 & 0x7FF) == 0x7FF)
  {
  }

  else
  {
    MEMORY[0x1E69E5920](*(v91 + 16));
    swift_unknownObjectRelease();
    sub_1B06D56EC();
    if ((v38 & 8) != 0)
    {
      MEMORY[0x1E69E5920](*(v91 + 48));
    }

    sub_1B0391AD4((v91 + 72));
    if ((v38 & 0x80) != 0)
    {
    }

    v37[3] = v91;
    v37[2] = v91;
    sub_1B0391AD4((v91 + 104));
    swift_deallocPartialClassInstance();
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  MEMORY[0x1E69E5920](v96);
  return v37[1];
}

uint64_t sub_1B0A29704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B0A35904(a1, a2, a3, a4);
  sub_1B0A36D38(a1, a2, a3, a4);
  result = IndexingStatistics.fractionCompletedAsInt.getter(a1, a2);
  if (result >= 95)
  {
    v5 = [objc_opt_self() standardUserDefaults];
    sub_1B0A37F44();
    return MEMORY[0x1E69E5920](v5);
  }

  return result;
}

uint64_t sub_1B0A297E4()
{
  v1 = *sub_1B0A2C4B4();

  sub_1B03E1B3C(sub_1B0A2C514, 0, v1, &unk_1F270BB80, &unk_1F270BB80);

  return v2;
}

uint64_t sub_1B0A29878(uint64_t a1)
{
  v2[4] = a1 + 16;
  swift_beginAccess();
  v2[0] = swift_weakLoadStrong();
  if (v2[0])
  {

    sub_1B0391AD4(v2);
    swift_endAccess();
    sub_1B0A29928();
  }

  else
  {
    sub_1B0391AD4(v2);
    return swift_endAccess();
  }
}

uint64_t sub_1B0A29928()
{
  v71 = sub_1B0A2C624;
  v72 = sub_1B0A2C62C;
  v73 = sub_1B039BC08;
  v74 = sub_1B0A398B8;
  v75 = sub_1B074E950;
  v76 = sub_1B0398F5C;
  v77 = sub_1B0398F5C;
  v78 = sub_1B03991EC;
  v79 = sub_1B0398F5C;
  v80 = sub_1B0398F5C;
  v81 = sub_1B074E9C8;
  v82 = *v0;
  v104 = 0;
  v83 = 0;
  v84 = 0;
  v85 = sub_1B0E439A8();
  v86 = *(v85 - 8);
  v87 = v85 - 8;
  v88 = (*(v86 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v89 = v31 - v88;
  v94 = sub_1B0E44468();
  v92 = *(v94 - 8);
  v93 = v94 - 8;
  v90 = (*(v92 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v94);
  v95 = (v31 - v90);
  v104 = v0;

  v91 = v0[2];
  MEMORY[0x1E69E5928](v91);
  v1 = v92;
  *v95 = v91;
  (*(v1 + 104))();
  v96 = sub_1B0E44488();
  (*(v92 + 8))(v95, v94);
  result = v96;
  if ((v96 & 1) == 0)
  {
    __break(1u);
    goto LABEL_23;
  }

  v68 = v70[6];
  MEMORY[0x1E69E5928](v68);
  v69 = [v68 eligibleToRun];
  MEMORY[0x1E69E5920](v68);
  if (v69)
  {
    result = swift_beginAccess();
    v3 = v70[11];
    v67 = v3 + 1;
    if (!__OFADD__(v3, 1))
    {
      v70[11] = v67;
      swift_endAccess();
      v65 = v102;
      swift_beginAccess();
      v66 = v70[11];
      result = swift_endAccess();
      if (!(v66 % 6))
      {
        sub_1B0A27668(v89);

        v51 = 32;
        v52 = 7;
        v5 = swift_allocObject();
        v6 = v70;
        v48 = v5;
        *(v5 + 16) = v71;
        *(v5 + 24) = v6;

        v63 = sub_1B0E43988();
        v64 = sub_1B0E45908();
        v50 = 17;
        v54 = swift_allocObject();
        *(v54 + 16) = 2;
        v55 = swift_allocObject();
        *(v55 + 16) = 4;
        v7 = swift_allocObject();
        v8 = v48;
        v49 = v7;
        *(v7 + 16) = v72;
        *(v7 + 24) = v8;
        v9 = swift_allocObject();
        v10 = v49;
        v56 = v9;
        *(v9 + 16) = v73;
        *(v9 + 24) = v10;
        v57 = swift_allocObject();
        *(v57 + 16) = 0;
        v58 = swift_allocObject();
        *(v58 + 16) = 8;
        v11 = swift_allocObject();
        v12 = v70;
        v53 = v11;
        *(v11 + 16) = v74;
        *(v11 + 24) = v12;
        v13 = swift_allocObject();
        v14 = v53;
        v60 = v13;
        *(v13 + 16) = v75;
        *(v13 + 24) = v14;
        v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
        v59 = sub_1B0E46A48();
        v61 = v15;

        v16 = v54;
        v17 = v61;
        *v61 = v76;
        v17[1] = v16;

        v18 = v55;
        v19 = v61;
        v61[2] = v77;
        v19[3] = v18;

        v20 = v56;
        v21 = v61;
        v61[4] = v78;
        v21[5] = v20;

        v22 = v57;
        v23 = v61;
        v61[6] = v79;
        v23[7] = v22;

        v24 = v58;
        v25 = v61;
        v61[8] = v80;
        v25[9] = v24;

        v26 = v60;
        v27 = v61;
        v61[10] = v81;
        v27[11] = v26;
        sub_1B0394964();

        if (os_log_type_enabled(v63, v64))
        {
          v28 = v83;
          v41 = sub_1B0E45D78();
          v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
          v40 = 0;
          v42 = sub_1B03949A8(0, v39, v39);
          v43 = sub_1B03949A8(v40, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
          v44 = &v101;
          v101 = v41;
          v45 = &v100;
          v100 = v42;
          v46 = &v99;
          v99 = v43;
          sub_1B0394A48(0, &v101);
          sub_1B0394A48(2, v44);
          v97 = v76;
          v98 = v54;
          sub_1B03949FC(&v97, v44, v45, v46);
          v47 = v28;
          if (v28)
          {

            __break(1u);
          }

          else
          {
            v97 = v77;
            v98 = v55;
            sub_1B03949FC(&v97, &v101, &v100, &v99);
            v38 = 0;
            v97 = v78;
            v98 = v56;
            sub_1B03949FC(&v97, &v101, &v100, &v99);
            v37 = 0;
            v97 = v79;
            v98 = v57;
            sub_1B03949FC(&v97, &v101, &v100, &v99);
            v36 = 0;
            v97 = v80;
            v98 = v58;
            sub_1B03949FC(&v97, &v101, &v100, &v99);
            v35 = 0;
            v97 = v81;
            v98 = v60;
            sub_1B03949FC(&v97, &v101, &v100, &v99);
            _os_log_impl(&dword_1B0389000, v63, v64, "[%{public}u] Still eligible to run after %f seconds.", v41, 0x12u);
            v34 = 0;
            sub_1B03998A8(v42, 0, v39);
            sub_1B03998A8(v43, v34, MEMORY[0x1E69E7CA0] + 8);
            sub_1B0E45D58();
          }
        }

        else
        {
        }

        MEMORY[0x1E69E5920](v63);
        return (*(v86 + 8))(v89, v85);
      }

      return result;
    }

LABEL_24:
    __break(1u);
    return result;
  }

  result = swift_beginAccess();
  v29 = v70[12];
  v33 = v29 + 1;
  if (__OFADD__(v29, 1))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v70[12] = v33;
  swift_endAccess();
  v31[1] = v103;
  swift_beginAccess();
  v32 = v70[12];
  result = swift_endAccess();
  if (v32 > 1)
  {
    return sub_1B0A2B748(1u);
  }

  return result;
}

uint64_t sub_1B0A2A6F0(uint64_t a1, uint64_t a2)
{
  v94 = a1;
  v93 = a2;
  v92 = 0;
  v75 = sub_1B0A2C624;
  v76 = sub_1B0A2C62C;
  v77 = sub_1B039BC08;
  v78 = sub_1B06BD0C0;
  v79 = sub_1B06D5270;
  v80 = sub_1B0A398B8;
  v81 = sub_1B074E950;
  v82 = sub_1B0398F5C;
  v83 = sub_1B0398F5C;
  v84 = sub_1B03991EC;
  v85 = sub_1B0398F5C;
  v86 = sub_1B0398F5C;
  v87 = sub_1B06D527C;
  v88 = sub_1B0398F5C;
  v89 = sub_1B0398F5C;
  v90 = sub_1B074E9C8;
  v111 = 0;
  v110 = 0;
  v108 = 0;
  v91 = 0;
  v95 = sub_1B0E439A8();
  v96 = *(v95 - 8);
  v97 = v95 - 8;
  v98 = (*(v96 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v94);
  v99 = v40 - v98;
  v111 = v2;
  v100 = v3 + 16;
  v110 = v3 + 16;
  v101 = v109;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  swift_endAccess();
  result = Strong;
  if (Strong)
  {
    v74 = Strong;
    v56 = Strong;
    v108 = Strong;
    type metadata accessor for SearchIndexerBackgroundTask();
    sub_1B0A27668(v99);

    v57 = 32;
    v58 = 7;
    v5 = swift_allocObject();
    v6 = v56;
    v50 = v5;
    *(v5 + 16) = v75;
    *(v5 + 24) = v6;

    v52 = swift_allocObject();
    *(v52 + 16) = v94;

    v72 = sub_1B0E43988();
    v73 = sub_1B0E45908();
    v54 = 17;
    v60 = swift_allocObject();
    *(v60 + 16) = 2;
    v61 = swift_allocObject();
    *(v61 + 16) = 4;
    v7 = swift_allocObject();
    v8 = v50;
    v51 = v7;
    *(v7 + 16) = v76;
    *(v7 + 24) = v8;
    v9 = swift_allocObject();
    v10 = v51;
    v62 = v9;
    *(v9 + 16) = v77;
    *(v9 + 24) = v10;
    v63 = swift_allocObject();
    *(v63 + 16) = 0;
    v64 = swift_allocObject();
    v55 = 8;
    *(v64 + 16) = 8;
    v11 = swift_allocObject();
    v12 = v52;
    v53 = v11;
    *(v11 + 16) = v78;
    *(v11 + 24) = v12;
    v13 = swift_allocObject();
    v14 = v53;
    v65 = v13;
    *(v13 + 16) = v79;
    *(v13 + 24) = v14;
    v66 = swift_allocObject();
    *(v66 + 16) = 0;
    v67 = swift_allocObject();
    *(v67 + 16) = v55;
    v15 = swift_allocObject();
    v16 = v56;
    v59 = v15;
    *(v15 + 16) = v80;
    *(v15 + 24) = v16;
    v17 = swift_allocObject();
    v18 = v59;
    v69 = v17;
    *(v17 + 16) = v81;
    *(v17 + 24) = v18;
    v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v68 = sub_1B0E46A48();
    v70 = v19;

    v20 = v60;
    v21 = v70;
    *v70 = v82;
    v21[1] = v20;

    v22 = v61;
    v23 = v70;
    v70[2] = v83;
    v23[3] = v22;

    v24 = v62;
    v25 = v70;
    v70[4] = v84;
    v25[5] = v24;

    v26 = v63;
    v27 = v70;
    v70[6] = v85;
    v27[7] = v26;

    v28 = v64;
    v29 = v70;
    v70[8] = v86;
    v29[9] = v28;

    v30 = v65;
    v31 = v70;
    v70[10] = v87;
    v31[11] = v30;

    v32 = v66;
    v33 = v70;
    v70[12] = v88;
    v33[13] = v32;

    v34 = v67;
    v35 = v70;
    v70[14] = v89;
    v35[15] = v34;

    v36 = v69;
    v37 = v70;
    v70[16] = v90;
    v37[17] = v36;
    sub_1B0394964();

    if (os_log_type_enabled(v72, v73))
    {
      v38 = v91;
      v43 = sub_1B0E45D78();
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v42 = 0;
      v44 = sub_1B03949A8(0, v41, v41);
      v45 = sub_1B03949A8(v42, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v46 = &v107;
      v107 = v43;
      v47 = &v106;
      v106 = v44;
      v48 = &v105;
      v105 = v45;
      sub_1B0394A48(0, &v107);
      sub_1B0394A48(3, v46);
      v103 = v82;
      v104 = v60;
      sub_1B03949FC(&v103, v46, v47, v48);
      v49 = v38;
      if (v38)
      {

        __break(1u);
      }

      else
      {
        v103 = v83;
        v104 = v61;
        sub_1B03949FC(&v103, &v107, &v106, &v105);
        v40[7] = 0;
        v103 = v84;
        v104 = v62;
        sub_1B03949FC(&v103, &v107, &v106, &v105);
        v40[6] = 0;
        v103 = v85;
        v104 = v63;
        sub_1B03949FC(&v103, &v107, &v106, &v105);
        v40[5] = 0;
        v103 = v86;
        v104 = v64;
        sub_1B03949FC(&v103, &v107, &v106, &v105);
        v40[4] = 0;
        v103 = v87;
        v104 = v65;
        sub_1B03949FC(&v103, &v107, &v106, &v105);
        v40[3] = 0;
        v103 = v88;
        v104 = v66;
        sub_1B03949FC(&v103, &v107, &v106, &v105);
        v40[2] = 0;
        v103 = v89;
        v104 = v67;
        sub_1B03949FC(&v103, &v107, &v106, &v105);
        v40[1] = 0;
        v103 = v90;
        v104 = v69;
        sub_1B03949FC(&v103, &v107, &v106, &v105);
        _os_log_impl(&dword_1B0389000, v72, v73, "[%{public}u] Download & index task did expire (reason: %lu) after %f seconds.", v43, 0x1Cu);
        v40[0] = 0;
        sub_1B03998A8(v44, 0, v41);
        sub_1B03998A8(v45, v40[0], MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v72);
    (*(v96 + 8))(v99, v95);
    v39 = sub_1B0394868();
    sub_1B0A2B748(v39 & 1);
  }

  return result;
}

uint64_t sub_1B0A2B4F8(uint64_t a1, uint64_t a2)
{
  v11 = a1;
  v12 = a2;
  v17 = sub_1B0A2C62C;
  v8 = 0;
  v9 = (*(*(sub_1B0E43908() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v18 = (&v8 - v9);
  v10 = (*(*(sub_1B0E43808() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v21 = &v8 - v10;

  v2 = swift_allocObject();
  v3 = v12;
  v22 = v2;
  *(v2 + 16) = v11;
  *(v2 + 24) = v3;
  sub_1B0E437D8();
  v29 = sub_1B0A276D4();
  v30 = v4;
  v31 = v5;
  v32 = v6;
  v13 = v29;
  v14 = v4;
  v15 = BYTE1(v4);
  v16 = BYTE2(v4);
  v20 = v5;
  v19 = v6;
  sub_1B0507508();
  v23 = v13;
  v24 = v14;
  v25 = v15;
  v26 = v16;
  v27 = v20;
  v28 = v19;
  sub_1B0E438B8();
  sub_1B0A398C0(v18);
  sub_1B04197E4(v20, v19);
  sub_1B0A39958(v21);
}

uint64_t sub_1B0A2B748(unsigned int a1)
{
  v73 = a1;
  v72 = 0;
  v52 = sub_1B0A2C624;
  v53 = sub_1B0A2C62C;
  v54 = sub_1B039BC08;
  v55 = sub_1B0398F5C;
  v56 = sub_1B0398F5C;
  v57 = sub_1B03991EC;
  v58 = sub_1B0A39A0C;
  v59 = *v1;
  v97 = 0;
  v96 = 0;
  v94 = 0;
  v60 = 0;
  v66 = 0;
  v61 = sub_1B0E44238();
  v62 = *(v61 - 8);
  v63 = v61 - 8;
  v64 = (*(v62 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v65 = &v22 - v64;
  v67 = sub_1B0E44288();
  v68 = *(v67 - 8);
  v69 = v67 - 8;
  v70 = (*(v68 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v66);
  v71 = &v22 - v70;
  v74 = sub_1B0E439A8();
  v75 = *(v74 - 8);
  v76 = v74 - 8;
  v77 = (*(v75 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v73);
  v78 = &v22 - v77;
  v97 = v2 & 1;
  v96 = v1;
  v79 = v95;
  swift_beginAccess();
  v80 = sub_1B0A3A114();
  v81 = v3;
  result = swift_endAccess();
  if ((v81 & 1) == 0)
  {
    v50 = v80;
    v49 = v80;
    v94 = v80;
    if (v73)
    {
      sub_1B0A27668(v78);

      v37 = 32;
      v38 = 7;
      v5 = swift_allocObject();
      v6 = v51;
      v39 = v5;
      *(v5 + 16) = v52;
      *(v5 + 24) = v6;

      v47 = sub_1B0E43988();
      v48 = sub_1B0E458F8();
      v36 = 17;
      v41 = swift_allocObject();
      *(v41 + 16) = 2;
      v42 = swift_allocObject();
      *(v42 + 16) = 4;
      v7 = swift_allocObject();
      v8 = v39;
      v40 = v7;
      *(v7 + 16) = v53;
      *(v7 + 24) = v8;
      v9 = swift_allocObject();
      v10 = v40;
      v44 = v9;
      *(v9 + 16) = v54;
      *(v9 + 24) = v10;
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v43 = sub_1B0E46A48();
      v45 = v11;

      v12 = v41;
      v13 = v45;
      *v45 = v55;
      v13[1] = v12;

      v14 = v42;
      v15 = v45;
      v45[2] = v56;
      v15[3] = v14;

      v16 = v44;
      v17 = v45;
      v45[4] = v57;
      v17[5] = v16;
      sub_1B0394964();

      if (os_log_type_enabled(v47, v48))
      {
        v18 = v60;
        v29 = sub_1B0E45D78();
        v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v28 = 0;
        v30 = sub_1B03949A8(0, v27, v27);
        v31 = sub_1B03949A8(v28, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v32 = &v86;
        v86 = v29;
        v33 = &v85;
        v85 = v30;
        v34 = &v84;
        v84 = v31;
        sub_1B0394A48(0, &v86);
        sub_1B0394A48(1, v32);
        v82 = v55;
        v83 = v41;
        sub_1B03949FC(&v82, v32, v33, v34);
        v35 = v18;
        if (v18)
        {

          __break(1u);
        }

        else
        {
          v82 = v56;
          v83 = v42;
          sub_1B03949FC(&v82, &v86, &v85, &v84);
          v26 = 0;
          v82 = v57;
          v83 = v44;
          sub_1B03949FC(&v82, &v86, &v85, &v84);
          _os_log_impl(&dword_1B0389000, v47, v48, "[%{public}u] No longer eligible to run. dasd may have crashed. Forcing task expiry.", v29, 8u);
          v25 = 0;
          sub_1B03998A8(v30, 0, v27);
          sub_1B03998A8(v31, v25, MEMORY[0x1E69E7CA0] + 8);
          sub_1B0E45D58();
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v47);
      (*(v75 + 8))(v78, v74);
    }

    v24 = *(v51 + 16);
    MEMORY[0x1E69E5928](v24);

    v19 = swift_allocObject();
    v20 = v49;
    v21 = v58;
    *(v19 + 16) = v51;
    *(v19 + 24) = v20;
    v92 = v21;
    v93 = v19;
    aBlock = MEMORY[0x1E69E9820];
    v88 = 1107296256;
    v89 = 0;
    v90 = sub_1B038C908;
    v91 = &block_descriptor_76;
    v23 = _Block_copy(&aBlock);
    sub_1B039B81C();
    sub_1B039B77C();
    MEMORY[0x1B2727B00](0, v71, v65, v23);
    (*(v62 + 8))(v65, v61);
    (*(v68 + 8))(v71, v67);
    _Block_release(v23);

    return MEMORY[0x1E69E5920](v24);
  }

  return result;
}

uint64_t sub_1B0A2C1B8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);

  v4(a2);
}

uint64_t sub_1B0A2C210()
{
  MEMORY[0x1E69E5920](v0[2]);
  swift_unknownObjectRelease();
  sub_1B06D56EC();
  MEMORY[0x1E69E5920](v0[6]);
  sub_1B0391AD4(v0 + 9);

  sub_1B0391AD4(v0 + 13);
  return v2;
}

uint64_t sub_1B0A2C2C8()
{
  v1 = sub_1B0E439A8();
  __swift_allocate_value_buffer(v1, qword_1EB6DB9C0);
  __swift_project_value_buffer(v1, qword_1EB6DB9C0);
  sub_1B0E44838();
  sub_1B0E44838();
  return sub_1B0E43998();
}

uint64_t sub_1B0A2C36C()
{
  if (qword_1EB6DB9B8 != -1)
  {
    swift_once();
  }

  v0 = sub_1B0E439A8();
  return __swift_project_value_buffer(v0, qword_1EB6DB9C0);
}

uint64_t sub_1B0A2C46C()
{
  sub_1B06E5F98();
  v2 = v0;
  result = sub_1B06C70B0(&v2, &unk_1F270BB80);
  qword_1EB6DBA58 = result;
  return result;
}

uint64_t *sub_1B0A2C4B4()
{
  if (qword_1EB6DBA50 != -1)
  {
    swift_once();
  }

  return &qword_1EB6DBA58;
}

void sub_1B0A2C514(int *a1@<X0>, _DWORD *a2@<X8>)
{
  v5 = *a1;
  sub_1B0A2C440();
  *a1 = v2;
  *a2 = v5;
}

uint64_t sub_1B0A2C578(void (*a1)(void))
{

  a1();
  sub_1B06E5F98();
  v4 = v1;

  return v4;
}

uint64_t sub_1B0A2C638(uint64_t a1)
{
  v13 = a1;
  v10 = "Fatal error";
  v11 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v12 = "Message/SearchIndexerBackgroundTask.swift";
  v23 = 0;
  v22 = 0;
  v18 = sub_1B0E44468();
  v16 = *(v18 - 8);
  v17 = v18 - 8;
  v14 = (*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v13);
  v19 = (v5 - v14);
  v23 = v2;
  v22 = v1;

  v15 = *(v1 + 16);
  MEMORY[0x1E69E5928](v15);
  v3 = v16;
  *v19 = v15;
  (*(v3 + 104))();
  v20 = sub_1B0E44488();
  (*(v16 + 8))(v19, v18);
  result = v20;
  if (v20)
  {

    v7 = &v21;
    swift_beginAccess();
    v8 = *(v9 + 104);

    swift_endAccess();
    if (v8)
    {
      v6 = v8;
    }

    else
    {
      sub_1B0E465A8();
      __break(1u);
    }

    v5[1] = v6;
    RestartableTimer.start()();

    return sub_1B0A2C880(v13);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0A2C880(uint64_t a1)
{
  v78 = a1;
  v63 = sub_1B03F7AE0;
  v64 = sub_1B0A2C62C;
  v65 = sub_1B039BC08;
  v66 = sub_1B0398F5C;
  v67 = sub_1B0398F5C;
  v68 = sub_1B03991EC;
  v69 = sub_1B0A39AF8;
  v70 = *v1;
  v94 = 0;
  v93 = 0;
  v92 = 0;
  v91 = 0;
  v71 = 0;
  v72 = 0;
  v73 = sub_1B0E439A8();
  v74 = *(v73 - 8);
  v75 = v73 - 8;
  v76 = (*(v74 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v77 = &v26 - v76;
  v83 = sub_1B0E44468();
  v81 = *(v83 - 8);
  v82 = v83 - 8;
  v79 = (*(v81 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v78);
  v84 = (&v26 - v79);
  v94 = v2;
  v93 = v1;

  v80 = v1[2];
  MEMORY[0x1E69E5928](v80);
  v3 = v81;
  *v84 = v80;
  (*(v3 + 104))();
  v85 = sub_1B0E44488();
  (*(v81 + 8))(v84, v83);
  result = v85;
  if (v85)
  {

    v47 = *(v62 + 56);
    v92 = v47;
    sub_1B0A27668(v77);
    v51 = 7;
    v48 = swift_allocObject();
    *(v48 + 16) = v47;

    v50 = 32;
    v5 = swift_allocObject();
    v6 = v48;
    v52 = v5;
    *(v5 + 16) = v63;
    *(v5 + 24) = v6;

    v60 = sub_1B0E43988();
    v61 = sub_1B0E45908();
    v49 = 17;
    v54 = swift_allocObject();
    *(v54 + 16) = 2;
    v55 = swift_allocObject();
    *(v55 + 16) = 4;
    v7 = swift_allocObject();
    v8 = v52;
    v53 = v7;
    *(v7 + 16) = v64;
    *(v7 + 24) = v8;
    v9 = swift_allocObject();
    v10 = v53;
    v57 = v9;
    *(v9 + 16) = v65;
    *(v9 + 24) = v10;
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v56 = sub_1B0E46A48();
    v58 = v11;

    v12 = v54;
    v13 = v58;
    *v58 = v66;
    v13[1] = v12;

    v14 = v55;
    v15 = v58;
    v58[2] = v67;
    v15[3] = v14;

    v16 = v57;
    v17 = v58;
    v58[4] = v68;
    v17[5] = v16;
    sub_1B0394964();

    if (os_log_type_enabled(v60, v61))
    {
      v18 = v71;
      v40 = sub_1B0E45D78();
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v39 = 0;
      v41 = sub_1B03949A8(0, v38, v38);
      v42 = sub_1B03949A8(v39, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v43 = &v90;
      v90 = v40;
      v44 = &v89;
      v89 = v41;
      v45 = &v88;
      v88 = v42;
      sub_1B0394A48(0, &v90);
      sub_1B0394A48(1, v43);
      v86 = v66;
      v87 = v54;
      sub_1B03949FC(&v86, v43, v44, v45);
      v46 = v18;
      if (v18)
      {

        __break(1u);
      }

      else
      {
        v86 = v67;
        v87 = v55;
        sub_1B03949FC(&v86, &v90, &v89, &v88);
        v37 = 0;
        v86 = v68;
        v87 = v57;
        sub_1B03949FC(&v86, &v90, &v89, &v88);
        _os_log_impl(&dword_1B0389000, v60, v61, "[%{public}u] Starting download & index.", v40, 8u);
        v36 = 0;
        sub_1B03998A8(v41, 0, v38);
        sub_1B03998A8(v42, v36, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v60);
    (*(v74 + 8))(v77, v73);
    v27 = *(v62 + 48);
    MEMORY[0x1E69E5928](v27);
    sub_1B0A2DE7C();
    MEMORY[0x1E69E5920](v27);
    v28 = *(v62 + 24);
    swift_unknownObjectRetain();
    ObjectType = swift_getObjectType();
    v35 = sub_1B090F870(ObjectType);
    v91 = v35;
    swift_unknownObjectRelease();
    v34 = *(v62 + 80);

    v31 = 7;
    v33 = swift_allocObject();
    v29 = v33 + 16;

    v30 = v62;
    swift_weakInit();

    v20 = swift_allocObject();
    v21 = v47;
    v22 = v69;
    v23 = v35;
    v24 = v20;
    v25 = v78;
    v32 = v24;
    *(v24 + 16) = v33;
    *(v24 + 24) = v21;
    SyncSession.start(_:configurations:_:)(v25, v23, v22, v24);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0A2D2D0(Swift::Int a1)
{
  v83.underlying = a1;
  v64 = sub_1B03F7AE0;
  v65 = sub_1B0A2C62C;
  v66 = sub_1B039BC08;
  v67 = sub_1B0A398B8;
  v68 = sub_1B074E950;
  v69 = sub_1B0398F5C;
  v70 = sub_1B0398F5C;
  v71 = sub_1B03991EC;
  v72 = sub_1B0398F5C;
  v73 = sub_1B0398F5C;
  v74 = sub_1B074E9C8;
  v75 = *v1;
  v98 = 0;
  v97 = 0;
  v96 = 0;
  v76 = 0;
  v77 = 0;
  v78 = sub_1B0E439A8();
  v79 = *(v78 - 8);
  v80 = v78 - 8;
  v81 = (*(v79 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v82 = v29 - v81;
  v88 = sub_1B0E44468();
  v86 = *(v88 - 8);
  v87 = v88 - 8;
  v84 = (*(v86 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v83.underlying);
  v89 = (v29 - v84);
  v98 = v2;
  v97 = v1;

  v85 = v1[2];
  MEMORY[0x1E69E5928](v85);
  v3 = v86;
  *v89 = v85;
  (*(v3 + 104))();
  v90 = sub_1B0E44488();
  (*(v86 + 8))(v89, v88);
  result = v90;
  if (v90)
  {

    v44 = *(v63 + 56);
    v96 = v44;
    sub_1B0A27668(v82);
    v50 = 7;
    v45 = swift_allocObject();
    *(v45 + 16) = v44;

    v49 = 32;
    v5 = swift_allocObject();
    v6 = v45;
    v46 = v5;
    *(v5 + 16) = v64;
    *(v5 + 24) = v6;

    v61 = sub_1B0E43988();
    v62 = sub_1B0E45908();
    v48 = 17;
    v52 = swift_allocObject();
    *(v52 + 16) = 2;
    v53 = swift_allocObject();
    *(v53 + 16) = 4;
    v7 = swift_allocObject();
    v8 = v46;
    v47 = v7;
    *(v7 + 16) = v65;
    *(v7 + 24) = v8;
    v9 = swift_allocObject();
    v10 = v47;
    v54 = v9;
    *(v9 + 16) = v66;
    *(v9 + 24) = v10;
    v55 = swift_allocObject();
    *(v55 + 16) = 0;
    v56 = swift_allocObject();
    *(v56 + 16) = 8;
    v11 = swift_allocObject();
    v12 = v63;
    v51 = v11;
    *(v11 + 16) = v67;
    *(v11 + 24) = v12;
    v13 = swift_allocObject();
    v14 = v51;
    v58 = v13;
    *(v13 + 16) = v68;
    *(v13 + 24) = v14;
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v57 = sub_1B0E46A48();
    v59 = v15;

    v16 = v52;
    v17 = v59;
    *v59 = v69;
    v17[1] = v16;

    v18 = v53;
    v19 = v59;
    v59[2] = v70;
    v19[3] = v18;

    v20 = v54;
    v21 = v59;
    v59[4] = v71;
    v21[5] = v20;

    v22 = v55;
    v23 = v59;
    v59[6] = v72;
    v23[7] = v22;

    v24 = v56;
    v25 = v59;
    v59[8] = v73;
    v25[9] = v24;

    v26 = v58;
    v27 = v59;
    v59[10] = v74;
    v27[11] = v26;
    sub_1B0394964();

    if (os_log_type_enabled(v61, v62))
    {
      v28 = v76;
      v37 = sub_1B0E45D78();
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v36 = 0;
      v38 = sub_1B03949A8(0, v35, v35);
      v39 = sub_1B03949A8(v36, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v40 = &v95;
      v95 = v37;
      v41 = &v94;
      v94 = v38;
      v42 = &v93;
      v93 = v39;
      sub_1B0394A48(0, &v95);
      sub_1B0394A48(2, v40);
      v91 = v69;
      v92 = v52;
      sub_1B03949FC(&v91, v40, v41, v42);
      v43 = v28;
      if (v28)
      {

        __break(1u);
      }

      else
      {
        v91 = v70;
        v92 = v53;
        sub_1B03949FC(&v91, &v95, &v94, &v93);
        v34 = 0;
        v91 = v71;
        v92 = v54;
        sub_1B03949FC(&v91, &v95, &v94, &v93);
        v33 = 0;
        v91 = v72;
        v92 = v55;
        sub_1B03949FC(&v91, &v95, &v94, &v93);
        v32 = 0;
        v91 = v73;
        v92 = v56;
        sub_1B03949FC(&v91, &v95, &v94, &v93);
        v31 = 0;
        v91 = v74;
        v92 = v58;
        sub_1B03949FC(&v91, &v95, &v94, &v93);
        _os_log_impl(&dword_1B0389000, v61, v62, "[%{public}u] Stopping download & index after %f seconds.", v37, 0x12u);
        v30 = 0;
        sub_1B03998A8(v38, 0, v35);
        sub_1B03998A8(v39, v30, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v61);
    (*(v79 + 8))(v82, v78);
    v29[1] = *(v63 + 80);

    SyncSession.stop(_:)(v83);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0A2DE7C()
{
  v68 = sub_1B07135E4;
  v69 = sub_1B070B324;
  v70 = sub_1B0398F5C;
  v71 = sub_1B0398F5C;
  v72 = sub_1B070B4B4;
  v110 = *MEMORY[0x1E69E9840];
  v106 = 0;
  v105 = 0;
  v103 = 0;
  v78 = 0;
  v73 = sub_1B0E439A8();
  v74 = *(v73 - 8);
  v75 = v73 - 8;
  v76 = (*(v74 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v73);
  v77 = v43 - v76;
  v106 = v0;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2C88, &unk_1B0EA3630);
  v86 = sub_1B0E46A48();
  v84 = v1;
  v90 = *MEMORY[0x1E698E4D8];
  MEMORY[0x1E69E5928](v90);
  v2 = sub_1B0E44AD8();
  v3 = v84;
  *v84 = v2;
  v3[1] = v4;
  v79 = sub_1B039A494();
  v5 = sub_1B041A060(302);
  v6 = v84;
  v84[5] = v79;
  v6[2] = v5;
  v89 = *MEMORY[0x1E698E4F0];
  MEMORY[0x1E69E5928](v89);
  v7 = sub_1B0E44AD8();
  v8 = v84;
  v9 = v7;
  v10 = v80;
  v84[6] = v9;
  v8[7] = v11;
  v88 = [v10 identifier];
  v12 = sub_1B0E44AD8();
  v13 = v84;
  v92 = MEMORY[0x1E69E6158];
  v84[11] = MEMORY[0x1E69E6158];
  v13[8] = v12;
  v13[9] = v14;
  v87 = *MEMORY[0x1E698E4E0];
  MEMORY[0x1E69E5928](v87);
  v15 = sub_1B0E44AD8();
  v16 = v84;
  v84[12] = v15;
  v16[13] = v17;
  v82 = sub_1B0E46A48();
  v81 = v18;
  v19 = sub_1B0E44838();
  v20 = v81;
  *v81 = v19;
  v20[1] = v21;
  sub_1B0394964();
  v83 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
  v24 = v83;
  v25 = v84;
  v84[17] = v23;
  v25[14] = v24;
  sub_1B0394964();
  v91 = v26;
  MEMORY[0x1E69E5920](v87);
  MEMORY[0x1E69E5920](v88);
  MEMORY[0x1E69E5920](v89);
  MEMORY[0x1E69E5920](v90);
  v93 = MEMORY[0x1E69E7CA0] + 8;
  v94 = MEMORY[0x1E69E6168];
  v95 = sub_1B0E445D8();
  v105 = v95;
  v109 = 0;
  v98 = [objc_opt_self() sharedScheduler];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v97 = sub_1B0E44598();

  v104 = v109;
  v99 = [v98 taskStartedWithParameters:v97 error:&v104];
  v96 = v104;
  MEMORY[0x1E69E5928](v104);
  v27 = v109;
  v109 = v96;
  MEMORY[0x1E69E5920](v27);
  MEMORY[0x1E69E5920](v97);
  MEMORY[0x1E69E5920](v98);
  if ((v99 & 1) == 0)
  {
    v52 = v109;
    v54 = sub_1B0E42CD8();
    MEMORY[0x1E69E5920](v52);
    swift_willThrow();
    v53 = 0;
    v29 = v54;
    v103 = v54;
    type metadata accessor for SearchIndexerBackgroundTask();
    sub_1B0A27668(v77);
    v30 = v54;
    v57 = 7;
    v58 = swift_allocObject();
    *(v58 + 16) = v54;
    v66 = sub_1B0E43988();
    v67 = sub_1B0E458E8();
    v55 = 17;
    v60 = swift_allocObject();
    *(v60 + 16) = 64;
    v61 = swift_allocObject();
    *(v61 + 16) = 8;
    v56 = 32;
    v31 = swift_allocObject();
    v32 = v58;
    v59 = v31;
    *(v31 + 16) = v68;
    *(v31 + 24) = v32;
    v33 = swift_allocObject();
    v34 = v59;
    v63 = v33;
    *(v33 + 16) = v69;
    *(v33 + 24) = v34;
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v62 = sub_1B0E46A48();
    v64 = v35;

    v36 = v60;
    v37 = v64;
    *v64 = v70;
    v37[1] = v36;

    v38 = v61;
    v39 = v64;
    v64[2] = v71;
    v39[3] = v38;

    v40 = v63;
    v41 = v64;
    v64[4] = v72;
    v41[5] = v40;
    sub_1B0394964();

    if (os_log_type_enabled(v66, v67))
    {
      v42 = v53;
      v45 = sub_1B0E45D78();
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v46 = sub_1B03949A8(1, v44, v44);
      v47 = sub_1B03949A8(0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v48 = &v102;
      v102 = v45;
      v49 = &v108;
      v108 = v46;
      v50 = &v107;
      v107 = v47;
      sub_1B0394A48(2, &v102);
      sub_1B0394A48(1, v48);
      v100 = v70;
      v101 = v60;
      sub_1B03949FC(&v100, v48, v49, v50);
      v51 = v42;
      if (v42)
      {

        __break(1u);
      }

      else
      {
        v100 = v71;
        v101 = v61;
        sub_1B03949FC(&v100, &v102, &v108, &v107);
        v43[1] = 0;
        v100 = v72;
        v101 = v63;
        sub_1B03949FC(&v100, &v102, &v108, &v107);
        _os_log_impl(&dword_1B0389000, v66, v67, "Failed to report taskStarted: %@", v45, 0xCu);
        sub_1B03998A8(v46, 1, v44);
        sub_1B03998A8(v47, 0, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v66);
    (*(v74 + 8))(v77, v73);
  }
}

uint64_t sub_1B0A2E920(unsigned int a1, uint64_t a2, int a3)
{
  v150 = a1;
  v149 = a2;
  v147 = a3;
  v148 = 0;
  v124 = sub_1B03F7AE0;
  v125 = sub_1B0A2C62C;
  v126 = sub_1B039BC08;
  v127 = sub_1B0A398B8;
  v128 = sub_1B074E950;
  v129 = sub_1B0398F5C;
  v130 = sub_1B0398F5C;
  v131 = sub_1B03991EC;
  v132 = sub_1B0398F5C;
  v133 = sub_1B0398F5C;
  v134 = sub_1B074E9C8;
  v135 = sub_1B03F7AE0;
  v136 = sub_1B0A2C62C;
  v137 = sub_1B039BC08;
  v138 = sub_1B0A398B8;
  v139 = sub_1B074E950;
  v140 = sub_1B0398F5C;
  v141 = sub_1B0398F5C;
  v142 = sub_1B03991EC;
  v143 = sub_1B0398F5C;
  v144 = sub_1B0398F5C;
  v145 = sub_1B074E9C8;
  v175 = 0;
  v174 = 0;
  v173 = 0;
  v171 = 0;
  v146 = 0;
  v151 = sub_1B0E439A8();
  v152 = *(v151 - 8);
  v153 = v151 - 8;
  v154 = (*(v152 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v150);
  v155 = &v57 - v154;
  v156 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v157 = &v57 - v156;
  v175 = v5;
  v158 = v6 + 16;
  v174 = v6 + 16;
  v173 = v7;
  v159 = v172;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  swift_endAccess();
  result = Strong;
  if (Strong)
  {
    v123 = Strong;
    v122 = v123;
    v171 = v123;
    if (!v150 || v150 == 1 || v150 == 2 || v150 == 3)
    {
      type metadata accessor for SearchIndexerBackgroundTask();
      sub_1B0A27668(v155);
      v77 = 7;
      v72 = swift_allocObject();
      *(v72 + 16) = v147;

      v76 = 32;
      v33 = swift_allocObject();
      v34 = v72;
      v73 = v33;
      *(v33 + 16) = v124;
      *(v33 + 24) = v34;

      v88 = sub_1B0E43988();
      v89 = sub_1B0E45908();
      v75 = 17;
      v79 = swift_allocObject();
      *(v79 + 16) = 2;
      v80 = swift_allocObject();
      *(v80 + 16) = 4;
      v35 = swift_allocObject();
      v36 = v73;
      v74 = v35;
      *(v35 + 16) = v125;
      *(v35 + 24) = v36;
      v37 = swift_allocObject();
      v38 = v74;
      v81 = v37;
      *(v37 + 16) = v126;
      *(v37 + 24) = v38;
      v82 = swift_allocObject();
      *(v82 + 16) = 0;
      v83 = swift_allocObject();
      *(v83 + 16) = 8;
      v39 = swift_allocObject();
      v40 = v122;
      v78 = v39;
      *(v39 + 16) = v127;
      *(v39 + 24) = v40;
      v41 = swift_allocObject();
      v42 = v78;
      v85 = v41;
      *(v41 + 16) = v128;
      *(v41 + 24) = v42;
      v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v84 = sub_1B0E46A48();
      v86 = v43;

      v44 = v79;
      v45 = v86;
      *v86 = v129;
      v45[1] = v44;

      v46 = v80;
      v47 = v86;
      v86[2] = v130;
      v47[3] = v46;

      v48 = v81;
      v49 = v86;
      v86[4] = v131;
      v49[5] = v48;

      v50 = v82;
      v51 = v86;
      v86[6] = v132;
      v51[7] = v50;

      v52 = v83;
      v53 = v86;
      v86[8] = v133;
      v53[9] = v52;

      v54 = v85;
      v55 = v86;
      v86[10] = v134;
      v55[11] = v54;
      sub_1B0394964();

      if (os_log_type_enabled(v88, v89))
      {
        v56 = v146;
        v65 = sub_1B0E45D78();
        v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v64 = 0;
        v66 = sub_1B03949A8(0, v63, v63);
        v67 = sub_1B03949A8(v64, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v68 = &v170;
        v170 = v65;
        v69 = &v169;
        v169 = v66;
        v70 = &v168;
        v168 = v67;
        sub_1B0394A48(0, &v170);
        sub_1B0394A48(2, v68);
        v166 = v129;
        v167 = v79;
        sub_1B03949FC(&v166, v68, v69, v70);
        v71 = v56;
        if (v56)
        {

          __break(1u);
        }

        else
        {
          v166 = v130;
          v167 = v80;
          sub_1B03949FC(&v166, &v170, &v169, &v168);
          v62 = 0;
          v166 = v131;
          v167 = v81;
          sub_1B03949FC(&v166, &v170, &v169, &v168);
          v61 = 0;
          v166 = v132;
          v167 = v82;
          sub_1B03949FC(&v166, &v170, &v169, &v168);
          v60 = 0;
          v166 = v133;
          v167 = v83;
          sub_1B03949FC(&v166, &v170, &v169, &v168);
          v59 = 0;
          v166 = v134;
          v167 = v85;
          sub_1B03949FC(&v166, &v170, &v169, &v168);
          _os_log_impl(&dword_1B0389000, v88, v89, "[%{public}u] Download & index did complete after %f seconds.", v65, 0x12u);
          v58 = 0;
          sub_1B03998A8(v66, 0, v63);
          sub_1B03998A8(v67, v58, MEMORY[0x1E69E7CA0] + 8);
          sub_1B0E45D58();
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v88);
      (*(v152 + 8))(v155, v151);
    }

    else
    {
      type metadata accessor for SearchIndexerBackgroundTask();
      sub_1B0A27668(v157);
      v109 = 7;
      v104 = swift_allocObject();
      *(v104 + 16) = v147;

      v108 = 32;
      v9 = swift_allocObject();
      v10 = v104;
      v105 = v9;
      *(v9 + 16) = v135;
      *(v9 + 24) = v10;

      v120 = sub_1B0E43988();
      v121 = sub_1B0E458E8();
      v107 = 17;
      v111 = swift_allocObject();
      *(v111 + 16) = 2;
      v112 = swift_allocObject();
      *(v112 + 16) = 4;
      v11 = swift_allocObject();
      v12 = v105;
      v106 = v11;
      *(v11 + 16) = v136;
      *(v11 + 24) = v12;
      v13 = swift_allocObject();
      v14 = v106;
      v113 = v13;
      *(v13 + 16) = v137;
      *(v13 + 24) = v14;
      v114 = swift_allocObject();
      *(v114 + 16) = 0;
      v115 = swift_allocObject();
      *(v115 + 16) = 8;
      v15 = swift_allocObject();
      v16 = v122;
      v110 = v15;
      *(v15 + 16) = v138;
      *(v15 + 24) = v16;
      v17 = swift_allocObject();
      v18 = v110;
      v117 = v17;
      *(v17 + 16) = v139;
      *(v17 + 24) = v18;
      v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v116 = sub_1B0E46A48();
      v118 = v19;

      v20 = v111;
      v21 = v118;
      *v118 = v140;
      v21[1] = v20;

      v22 = v112;
      v23 = v118;
      v118[2] = v141;
      v23[3] = v22;

      v24 = v113;
      v25 = v118;
      v118[4] = v142;
      v25[5] = v24;

      v26 = v114;
      v27 = v118;
      v118[6] = v143;
      v27[7] = v26;

      v28 = v115;
      v29 = v118;
      v118[8] = v144;
      v29[9] = v28;

      v30 = v117;
      v31 = v118;
      v118[10] = v145;
      v31[11] = v30;
      sub_1B0394964();

      if (os_log_type_enabled(v120, v121))
      {
        v32 = v146;
        v97 = sub_1B0E45D78();
        v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v96 = 0;
        v98 = sub_1B03949A8(0, v95, v95);
        v99 = sub_1B03949A8(v96, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v100 = &v165;
        v165 = v97;
        v101 = &v164;
        v164 = v98;
        v102 = &v163;
        v163 = v99;
        sub_1B0394A48(0, &v165);
        sub_1B0394A48(2, v100);
        v161 = v140;
        v162 = v111;
        sub_1B03949FC(&v161, v100, v101, v102);
        v103 = v32;
        if (v32)
        {

          __break(1u);
        }

        else
        {
          v161 = v141;
          v162 = v112;
          sub_1B03949FC(&v161, &v165, &v164, &v163);
          v94 = 0;
          v161 = v142;
          v162 = v113;
          sub_1B03949FC(&v161, &v165, &v164, &v163);
          v93 = 0;
          v161 = v143;
          v162 = v114;
          sub_1B03949FC(&v161, &v165, &v164, &v163);
          v92 = 0;
          v161 = v144;
          v162 = v115;
          sub_1B03949FC(&v161, &v165, &v164, &v163);
          v91 = 0;
          v161 = v145;
          v162 = v117;
          sub_1B03949FC(&v161, &v165, &v164, &v163);
          _os_log_impl(&dword_1B0389000, v120, v121, "[%{public}u] Download & index did fail after %f seconds.", v97, 0x12u);
          v90 = 0;
          sub_1B03998A8(v98, 0, v95);
          sub_1B03998A8(v99, v90, MEMORY[0x1E69E7CA0] + 8);
          sub_1B0E45D58();
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v120);
      (*(v152 + 8))(v157, v151);
    }

    sub_1B0A2FE60(v150);
  }

  return result;
}

uint64_t sub_1B0A2FE60(unsigned int a1)
{
  v11 = a1;
  v10 = sub_1B0A39B2C;
  v31 = 0;
  v30 = 0;
  v12 = 0;
  v16 = sub_1B0E44238();
  v13 = *(v16 - 8);
  v14 = v16 - 8;
  v7 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v15 = &v7 - v7;
  v20 = sub_1B0E44288();
  v17 = *(v20 - 8);
  v18 = v20 - 8;
  v8 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11);
  v19 = &v7 - v8;
  v31 = v2;
  v30 = v1;
  v22 = *(v1 + 16);
  MEMORY[0x1E69E5928](v22);

  v3 = swift_allocObject();
  v4 = v10;
  v5 = v3;
  LOBYTE(v3) = v11;
  *(v5 + 16) = v9;
  *(v5 + 24) = v3;
  v28 = v4;
  v29 = v5;
  aBlock = MEMORY[0x1E69E9820];
  v24 = 1107296256;
  v25 = 0;
  v26 = sub_1B038C908;
  v27 = &block_descriptor_185;
  v21 = _Block_copy(&aBlock);
  sub_1B039B81C();
  sub_1B039B77C();
  MEMORY[0x1B2727B00](v12, v19, v15, v21);
  (*(v13 + 8))(v15, v16);
  (*(v17 + 8))(v19, v20);
  _Block_release(v21);

  return MEMORY[0x1E69E5920](v22);
}

uint64_t sub_1B0A30120(unsigned int a1)
{
  v15 = a1;
  v12 = "Fatal error";
  v13 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v14 = "Message/SearchIndexerBackgroundTask.swift";
  v27 = 0;
  v26 = 0;
  v23 = 0;
  v20 = sub_1B0E44468();
  v18 = *(v20 - 8);
  v19 = v20 - 8;
  v16 = (*(v18 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v15);
  v21 = (v5 - v16);
  v27 = v2;
  v26 = v1;

  v17 = *(v1 + 16);
  MEMORY[0x1E69E5928](v17);
  v3 = v18;
  *v21 = v17;
  (*(v3 + 104))();
  v22 = sub_1B0E44488();
  (*(v18 + 8))(v21, v20);
  result = v22;
  if (v22)
  {

    v9 = &v25;
    swift_beginAccess();
    v10 = v11[13];

    swift_endAccess();
    if (v10)
    {
      v8 = v10;
    }

    else
    {
      sub_1B0E465A8();
      __break(1u);
    }

    v5[0] = v8;
    RestartableTimer.stop()();

    v5[1] = &v24;
    swift_beginAccess();
    v7 = sub_1B0A3A1D0(v15);
    swift_endAccess();
    v23 = v7;
    v6 = v11[6];
    MEMORY[0x1E69E5928](v6);
    sub_1B0A30C10(*(v11 + 14), v7);
    MEMORY[0x1E69E5920](v6);
    return sub_1B0A303EC(v7, v11);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0A303EC(unsigned int a1, void *a2)
{
  v58 = a1;
  v57 = a2;
  v49 = sub_1B0A2C624;
  v50 = sub_1B0A2C62C;
  v51 = sub_1B039BC08;
  v52 = sub_1B0398F5C;
  v53 = sub_1B0398F5C;
  v54 = sub_1B03991EC;
  v55 = *a2;
  v72 = 0;
  v71 = 0;
  v56 = 0;
  v59 = sub_1B0E439A8();
  v60 = *(v59 - 8);
  v61 = v59 - 8;
  v62 = (*(v60 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v58);
  v63 = v22 - v62;
  v72 = v2;
  v71 = v3;
  if (!v2 || v58 == 1 || v58 == 2 || v58 == 3 || v58 == 4 || v58 == 5)
  {
    v48 = v57 + 4;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v5 = v57[5];
    v64 = Strong;
    v65 = v5;
    if (Strong)
    {
      v45 = &v64;
      v47 = v64;
      v46 = v65;
      swift_unknownObjectRetain();
      sub_1B03FD360(v45);
      swift_endAccess();
      ObjectType = swift_getObjectType();
      (*(v46 + 8))(v57, ObjectType);
      return swift_unknownObjectRelease();
    }

    else
    {
      sub_1B03FD360(&v64);
      return swift_endAccess();
    }
  }

  else
  {
    sub_1B0A27668(v63);

    v33 = 32;
    v34 = 7;
    v8 = swift_allocObject();
    v9 = v57;
    v35 = v8;
    *(v8 + 16) = v49;
    *(v8 + 24) = v9;

    v43 = sub_1B0E43988();
    v44 = sub_1B0E45908();
    v32 = 17;
    v37 = swift_allocObject();
    *(v37 + 16) = 2;
    v38 = swift_allocObject();
    *(v38 + 16) = 4;
    v10 = swift_allocObject();
    v11 = v35;
    v36 = v10;
    *(v10 + 16) = v50;
    *(v10 + 24) = v11;
    v12 = swift_allocObject();
    v13 = v36;
    v40 = v12;
    *(v12 + 16) = v51;
    *(v12 + 24) = v13;
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v39 = sub_1B0E46A48();
    v41 = v14;

    v15 = v37;
    v16 = v41;
    *v41 = v52;
    v16[1] = v15;

    v17 = v38;
    v18 = v41;
    v41[2] = v53;
    v18[3] = v17;

    v19 = v40;
    v20 = v41;
    v41[4] = v54;
    v20[5] = v19;
    sub_1B0394964();

    if (os_log_type_enabled(v43, v44))
    {
      v21 = v56;
      v25 = sub_1B0E45D78();
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v24 = 0;
      v26 = sub_1B03949A8(0, v23, v23);
      v27 = sub_1B03949A8(v24, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v28 = &v70;
      v70 = v25;
      v29 = &v69;
      v69 = v26;
      v30 = &v68;
      v68 = v27;
      sub_1B0394A48(0, &v70);
      sub_1B0394A48(1, v28);
      v66 = v52;
      v67 = v37;
      sub_1B03949FC(&v66, v28, v29, v30);
      v31 = v21;
      if (v21)
      {

        __break(1u);
      }

      else
      {
        v66 = v53;
        v67 = v38;
        sub_1B03949FC(&v66, &v70, &v69, &v68);
        v22[1] = 0;
        v66 = v54;
        v67 = v40;
        sub_1B03949FC(&v66, &v70, &v69, &v68);
        _os_log_impl(&dword_1B0389000, v43, v44, "[%{public}u] Did complete, but was already done.", v25, 8u);
        v22[0] = 0;
        sub_1B03998A8(v26, 0, v23);
        sub_1B03998A8(v27, v22[0], MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v43);
    return (*(v60 + 8))(v63, v59);
  }
}

uint64_t sub_1B0A30C10(unsigned int a1, int a2)
{
  v338 = a1;
  v337 = a2;
  v294 = sub_1B03F7AE0;
  v295 = sub_1B0A2C62C;
  v296 = sub_1B039BC08;
  v297 = sub_1B0398F5C;
  v298 = sub_1B0398F5C;
  v299 = sub_1B03991EC;
  v300 = sub_1B03F7AE0;
  v301 = sub_1B0A2C62C;
  v302 = sub_1B039BC08;
  v303 = sub_1B0398F5C;
  v304 = sub_1B0398F5C;
  v305 = sub_1B03991EC;
  v306 = sub_1B03F7AE0;
  v307 = sub_1B0A2C62C;
  v308 = sub_1B039BC08;
  v309 = sub_1B0398F5C;
  v310 = sub_1B0398F5C;
  v311 = sub_1B03991EC;
  v312 = sub_1B03F7AE0;
  v313 = sub_1B0A2C62C;
  v314 = sub_1B039BC08;
  v315 = sub_1B0398F5C;
  v316 = sub_1B0398F5C;
  v317 = sub_1B03991EC;
  v318 = sub_1B03F7AE0;
  v319 = sub_1B0A2C62C;
  v320 = sub_1B039BC08;
  v321 = sub_1B0398F5C;
  v322 = sub_1B0398F5C;
  v323 = sub_1B03991EC;
  v324 = sub_1B03F7AE0;
  v325 = sub_1B0A2C62C;
  v326 = sub_1B039BC08;
  v327 = sub_1B0398F5C;
  v328 = sub_1B0398F5C;
  v329 = sub_1B03991EC;
  v330 = sub_1B03F7AE0;
  v331 = sub_1B0A2C62C;
  v332 = sub_1B039BC08;
  v333 = sub_1B0398F5C;
  v334 = sub_1B0398F5C;
  v335 = sub_1B03991EC;
  v394 = 0;
  v393 = 0;
  v392 = 0;
  v391 = 0;
  v336 = 0;
  v339 = sub_1B0E439A8();
  v340 = *(v339 - 8);
  v341 = v339 - 8;
  v342 = (*(v340 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v338);
  v343 = &v116[-v342];
  v344 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v345 = &v116[-v344];
  v346 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v347 = &v116[-v346];
  v348 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v349 = &v116[-v348];
  v350 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v351 = &v116[-v350];
  v352 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v353 = &v116[-v352];
  v354 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v14);
  v355 = &v116[-v354];
  v394 = v15;
  v393 = v16;
  v392 = v2;
  if (v16)
  {
    switch(v337)
    {
      case 1u:
        type metadata accessor for SearchIndexerBackgroundTask();
        sub_1B0A27668(v349);
        v207 = 7;
        v204 = swift_allocObject();
        *(v204 + 16) = v338;

        v206 = 32;
        v59 = swift_allocObject();
        v60 = v204;
        v208 = v59;
        *(v59 + 16) = v312;
        *(v59 + 24) = v60;

        v216 = sub_1B0E43988();
        v217 = sub_1B0E458E8();
        v205 = 17;
        v210 = swift_allocObject();
        *(v210 + 16) = 2;
        v211 = swift_allocObject();
        *(v211 + 16) = 4;
        v61 = swift_allocObject();
        v62 = v208;
        v209 = v61;
        *(v61 + 16) = v313;
        *(v61 + 24) = v62;
        v63 = swift_allocObject();
        v64 = v209;
        v213 = v63;
        *(v63 + 16) = v314;
        *(v63 + 24) = v64;
        v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
        v212 = sub_1B0E46A48();
        v214 = v65;

        v66 = v210;
        v67 = v214;
        *v214 = v315;
        v67[1] = v66;

        v68 = v211;
        v69 = v214;
        v214[2] = v316;
        v69[3] = v68;

        v70 = v213;
        v71 = v214;
        v214[4] = v317;
        v71[5] = v70;
        sub_1B0394964();

        if (os_log_type_enabled(v216, v217))
        {
          v72 = v336;
          v197 = sub_1B0E45D78();
          v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
          v196 = 0;
          v198 = sub_1B03949A8(0, v195, v195);
          v199 = sub_1B03949A8(v196, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
          v200 = &v375;
          v375 = v197;
          v201 = &v374;
          v374 = v198;
          v202 = &v373;
          v373 = v199;
          sub_1B0394A48(0, &v375);
          sub_1B0394A48(1, v200);
          v371 = v315;
          v372 = v210;
          sub_1B03949FC(&v371, v200, v201, v202);
          v203 = v72;
          if (v72)
          {

            __break(1u);
          }

          else
          {
            v371 = v316;
            v372 = v211;
            sub_1B03949FC(&v371, &v375, &v374, &v373);
            v194 = 0;
            v371 = v317;
            v372 = v213;
            sub_1B03949FC(&v371, &v375, &v374, &v373);
            _os_log_impl(&dword_1B0389000, v216, v217, "[%{public}u] Did defer.", v197, 8u);
            v193 = 0;
            sub_1B03998A8(v198, 0, v195);
            sub_1B03998A8(v199, v193, MEMORY[0x1E69E7CA0] + 8);
            sub_1B0E45D58();
          }
        }

        else
        {
        }

        MEMORY[0x1E69E5920](v216);
        (*(v340 + 8))(v349, v339);
        sub_1B0A330D8(1, 1, v338);
        break;
      case 2u:
        type metadata accessor for SearchIndexerBackgroundTask();
        sub_1B0A27668(v345);
        v157 = 7;
        v154 = swift_allocObject();
        *(v154 + 16) = v338;

        v156 = 32;
        v87 = swift_allocObject();
        v88 = v154;
        v158 = v87;
        *(v87 + 16) = v300;
        *(v87 + 24) = v88;

        v166 = sub_1B0E43988();
        v167 = sub_1B0E458E8();
        v155 = 17;
        v160 = swift_allocObject();
        *(v160 + 16) = 2;
        v161 = swift_allocObject();
        *(v161 + 16) = 4;
        v89 = swift_allocObject();
        v90 = v158;
        v159 = v89;
        *(v89 + 16) = v301;
        *(v89 + 24) = v90;
        v91 = swift_allocObject();
        v92 = v159;
        v163 = v91;
        *(v91 + 16) = v302;
        *(v91 + 24) = v92;
        v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
        v162 = sub_1B0E46A48();
        v164 = v93;

        v94 = v160;
        v95 = v164;
        *v164 = v303;
        v95[1] = v94;

        v96 = v161;
        v97 = v164;
        v164[2] = v304;
        v97[3] = v96;

        v98 = v163;
        v99 = v164;
        v164[4] = v305;
        v99[5] = v98;
        sub_1B0394964();

        if (os_log_type_enabled(v166, v167))
        {
          v100 = v336;
          v147 = sub_1B0E45D78();
          v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
          v146 = 0;
          v148 = sub_1B03949A8(0, v145, v145);
          v149 = sub_1B03949A8(v146, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
          v150 = &v385;
          v385 = v147;
          v151 = &v384;
          v384 = v148;
          v152 = &v383;
          v383 = v149;
          sub_1B0394A48(0, &v385);
          sub_1B0394A48(1, v150);
          v381 = v303;
          v382 = v160;
          sub_1B03949FC(&v381, v150, v151, v152);
          v153 = v100;
          if (v100)
          {

            __break(1u);
          }

          else
          {
            v381 = v304;
            v382 = v161;
            sub_1B03949FC(&v381, &v385, &v384, &v383);
            v144 = 0;
            v381 = v305;
            v382 = v163;
            sub_1B03949FC(&v381, &v385, &v384, &v383);
            _os_log_impl(&dword_1B0389000, v166, v167, "[%{public}u] Did not complete. More work.", v147, 8u);
            v143 = 0;
            sub_1B03998A8(v148, 0, v145);
            sub_1B03998A8(v149, v143, MEMORY[0x1E69E7CA0] + 8);
            sub_1B0E45D58();
          }
        }

        else
        {
        }

        MEMORY[0x1E69E5920](v166);
        (*(v340 + 8))(v345, v339);
        sub_1B0A330D8(3, 1, v338);
        break;
      case 3u:
        type metadata accessor for SearchIndexerBackgroundTask();
        sub_1B0A27668(v347);
        v182 = 7;
        v179 = swift_allocObject();
        *(v179 + 16) = v338;

        v181 = 32;
        v73 = swift_allocObject();
        v74 = v179;
        v183 = v73;
        *(v73 + 16) = v306;
        *(v73 + 24) = v74;

        v191 = sub_1B0E43988();
        v192 = sub_1B0E458E8();
        v180 = 17;
        v185 = swift_allocObject();
        *(v185 + 16) = 2;
        v186 = swift_allocObject();
        *(v186 + 16) = 4;
        v75 = swift_allocObject();
        v76 = v183;
        v184 = v75;
        *(v75 + 16) = v307;
        *(v75 + 24) = v76;
        v77 = swift_allocObject();
        v78 = v184;
        v188 = v77;
        *(v77 + 16) = v308;
        *(v77 + 24) = v78;
        v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
        v187 = sub_1B0E46A48();
        v189 = v79;

        v80 = v185;
        v81 = v189;
        *v189 = v309;
        v81[1] = v80;

        v82 = v186;
        v83 = v189;
        v189[2] = v310;
        v83[3] = v82;

        v84 = v188;
        v85 = v189;
        v189[4] = v311;
        v85[5] = v84;
        sub_1B0394964();

        if (os_log_type_enabled(v191, v192))
        {
          v86 = v336;
          v172 = sub_1B0E45D78();
          v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
          v171 = 0;
          v173 = sub_1B03949A8(0, v170, v170);
          v174 = sub_1B03949A8(v171, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
          v175 = &v380;
          v380 = v172;
          v176 = &v379;
          v379 = v173;
          v177 = &v378;
          v378 = v174;
          sub_1B0394A48(0, &v380);
          sub_1B0394A48(1, v175);
          v376 = v309;
          v377 = v185;
          sub_1B03949FC(&v376, v175, v176, v177);
          v178 = v86;
          if (v86)
          {

            __break(1u);
          }

          else
          {
            v376 = v310;
            v377 = v186;
            sub_1B03949FC(&v376, &v380, &v379, &v378);
            v169 = 0;
            v376 = v311;
            v377 = v188;
            sub_1B03949FC(&v376, &v380, &v379, &v378);
            _os_log_impl(&dword_1B0389000, v191, v192, "[%{public}u] Currently unavailable.", v172, 8u);
            v168 = 0;
            sub_1B03998A8(v173, 0, v170);
            sub_1B03998A8(v174, v168, MEMORY[0x1E69E7CA0] + 8);
            sub_1B0E45D58();
          }
        }

        else
        {
        }

        MEMORY[0x1E69E5920](v191);
        (*(v340 + 8))(v347, v339);
        sub_1B0A330D8(6, 1, v338);
        break;
      case 4u:
        type metadata accessor for SearchIndexerBackgroundTask();
        sub_1B0A27668(v351);
        v232 = 7;
        v229 = swift_allocObject();
        *(v229 + 16) = v338;

        v231 = 32;
        v45 = swift_allocObject();
        v46 = v229;
        v233 = v45;
        *(v45 + 16) = v318;
        *(v45 + 24) = v46;

        v241 = sub_1B0E43988();
        v242 = sub_1B0E45908();
        v230 = 17;
        v235 = swift_allocObject();
        *(v235 + 16) = 2;
        v236 = swift_allocObject();
        *(v236 + 16) = 4;
        v47 = swift_allocObject();
        v48 = v233;
        v234 = v47;
        *(v47 + 16) = v319;
        *(v47 + 24) = v48;
        v49 = swift_allocObject();
        v50 = v234;
        v238 = v49;
        *(v49 + 16) = v320;
        *(v49 + 24) = v50;
        v240 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
        v237 = sub_1B0E46A48();
        v239 = v51;

        v52 = v235;
        v53 = v239;
        *v239 = v321;
        v53[1] = v52;

        v54 = v236;
        v55 = v239;
        v239[2] = v322;
        v55[3] = v54;

        v56 = v238;
        v57 = v239;
        v239[4] = v323;
        v57[5] = v56;
        sub_1B0394964();

        if (os_log_type_enabled(v241, v242))
        {
          v58 = v336;
          v222 = sub_1B0E45D78();
          v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
          v221 = 0;
          v223 = sub_1B03949A8(0, v220, v220);
          v224 = sub_1B03949A8(v221, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
          v225 = &v370;
          v370 = v222;
          v226 = &v369;
          v369 = v223;
          v227 = &v368;
          v368 = v224;
          sub_1B0394A48(0, &v370);
          sub_1B0394A48(1, v225);
          v366 = v321;
          v367 = v235;
          sub_1B03949FC(&v366, v225, v226, v227);
          v228 = v58;
          if (v58)
          {

            __break(1u);
          }

          else
          {
            v366 = v322;
            v367 = v236;
            sub_1B03949FC(&v366, &v370, &v369, &v368);
            v219 = 0;
            v366 = v323;
            v367 = v238;
            sub_1B03949FC(&v366, &v370, &v369, &v368);
            _os_log_impl(&dword_1B0389000, v241, v242, "[%{public}u] Did complete.", v222, 8u);
            v218 = 0;
            sub_1B03998A8(v223, 0, v220);
            sub_1B03998A8(v224, v218, MEMORY[0x1E69E7CA0] + 8);
            sub_1B0E45D58();
          }
        }

        else
        {
        }

        MEMORY[0x1E69E5920](v241);
        (*(v340 + 8))(v351, v339);
        [v293 setTaskCompleted];
        break;
      case 5u:
        type metadata accessor for SearchIndexerBackgroundTask();
        sub_1B0A27668(v353);
        v257 = 7;
        v254 = swift_allocObject();
        *(v254 + 16) = v338;

        v256 = 32;
        v31 = swift_allocObject();
        v32 = v254;
        v258 = v31;
        *(v31 + 16) = v324;
        *(v31 + 24) = v32;

        v266 = sub_1B0E43988();
        v267 = sub_1B0E458E8();
        v255 = 17;
        v260 = swift_allocObject();
        *(v260 + 16) = 2;
        v261 = swift_allocObject();
        *(v261 + 16) = 4;
        v33 = swift_allocObject();
        v34 = v258;
        v259 = v33;
        *(v33 + 16) = v325;
        *(v33 + 24) = v34;
        v35 = swift_allocObject();
        v36 = v259;
        v263 = v35;
        *(v35 + 16) = v326;
        *(v35 + 24) = v36;
        v265 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
        v262 = sub_1B0E46A48();
        v264 = v37;

        v38 = v260;
        v39 = v264;
        *v264 = v327;
        v39[1] = v38;

        v40 = v261;
        v41 = v264;
        v264[2] = v328;
        v41[3] = v40;

        v42 = v263;
        v43 = v264;
        v264[4] = v329;
        v43[5] = v42;
        sub_1B0394964();

        if (os_log_type_enabled(v266, v267))
        {
          v44 = v336;
          v247 = sub_1B0E45D78();
          v245 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
          v246 = 0;
          v248 = sub_1B03949A8(0, v245, v245);
          v249 = sub_1B03949A8(v246, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
          v250 = &v365;
          v365 = v247;
          v251 = &v364;
          v364 = v248;
          v252 = &v363;
          v363 = v249;
          sub_1B0394A48(0, &v365);
          sub_1B0394A48(1, v250);
          v361 = v327;
          v362 = v260;
          sub_1B03949FC(&v361, v250, v251, v252);
          v253 = v44;
          if (v44)
          {

            __break(1u);
          }

          else
          {
            v361 = v328;
            v362 = v261;
            sub_1B03949FC(&v361, &v365, &v364, &v363);
            v244 = 0;
            v361 = v329;
            v362 = v263;
            sub_1B03949FC(&v361, &v365, &v364, &v363);
            _os_log_impl(&dword_1B0389000, v266, v267, "[%{public}u] Did expire.", v247, 8u);
            v243 = 0;
            sub_1B03998A8(v248, 0, v245);
            sub_1B03998A8(v249, v243, MEMORY[0x1E69E7CA0] + 8);
            sub_1B0E45D58();
          }
        }

        else
        {
        }

        MEMORY[0x1E69E5920](v266);
        (*(v340 + 8))(v353, v339);
        sub_1B0A330D8(5, 0, v338);
        break;
      default:
        type metadata accessor for SearchIndexerBackgroundTask();
        sub_1B0A27668(v343);
        v132 = 7;
        v129 = swift_allocObject();
        *(v129 + 16) = v338;

        v131 = 32;
        v101 = swift_allocObject();
        v102 = v129;
        v133 = v101;
        *(v101 + 16) = v294;
        *(v101 + 24) = v102;

        v141 = sub_1B0E43988();
        v142 = sub_1B0E458E8();
        v130 = 17;
        v135 = swift_allocObject();
        *(v135 + 16) = 2;
        v136 = swift_allocObject();
        *(v136 + 16) = 4;
        v103 = swift_allocObject();
        v104 = v133;
        v134 = v103;
        *(v103 + 16) = v295;
        *(v103 + 24) = v104;
        v105 = swift_allocObject();
        v106 = v134;
        v138 = v105;
        *(v105 + 16) = v296;
        *(v105 + 24) = v106;
        v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
        v137 = sub_1B0E46A48();
        v139 = v107;

        v108 = v135;
        v109 = v139;
        *v139 = v297;
        v109[1] = v108;

        v110 = v136;
        v111 = v139;
        v139[2] = v298;
        v111[3] = v110;

        v112 = v138;
        v113 = v139;
        v139[4] = v299;
        v113[5] = v112;
        sub_1B0394964();

        if (os_log_type_enabled(v141, v142))
        {
          v114 = v336;
          v122 = sub_1B0E45D78();
          v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
          v121 = 0;
          v123 = sub_1B03949A8(0, v120, v120);
          v124 = sub_1B03949A8(v121, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
          v125 = &v390;
          v390 = v122;
          v126 = &v389;
          v389 = v123;
          v127 = &v388;
          v388 = v124;
          sub_1B0394A48(0, &v390);
          sub_1B0394A48(1, v125);
          v386 = v297;
          v387 = v135;
          sub_1B03949FC(&v386, v125, v126, v127);
          v128 = v114;
          if (v114)
          {

            __break(1u);
          }

          else
          {
            v386 = v298;
            v387 = v136;
            sub_1B03949FC(&v386, &v390, &v389, &v388);
            v119 = 0;
            v386 = v299;
            v387 = v138;
            sub_1B03949FC(&v386, &v390, &v389, &v388);
            _os_log_impl(&dword_1B0389000, v141, v142, "[%{public}u] didComplete() called multiple times.", v122, 8u);
            v118 = 0;
            sub_1B03998A8(v123, 0, v120);
            sub_1B03998A8(v124, v118, MEMORY[0x1E69E7CA0] + 8);
            sub_1B0E45D58();
          }
        }

        else
        {
        }

        MEMORY[0x1E69E5920](v141);
        (*(v340 + 8))(v343, v339);
        break;
    }
  }

  else
  {
    type metadata accessor for SearchIndexerBackgroundTask();
    sub_1B0A27668(v355);
    v282 = 7;
    v279 = swift_allocObject();
    *(v279 + 16) = v338;

    v281 = 32;
    v17 = swift_allocObject();
    v18 = v279;
    v283 = v17;
    *(v17 + 16) = v330;
    *(v17 + 24) = v18;

    v291 = sub_1B0E43988();
    v292 = sub_1B0E458E8();
    v280 = 17;
    v285 = swift_allocObject();
    *(v285 + 16) = 2;
    v286 = swift_allocObject();
    *(v286 + 16) = 4;
    v19 = swift_allocObject();
    v20 = v283;
    v284 = v19;
    *(v19 + 16) = v331;
    *(v19 + 24) = v20;
    v21 = swift_allocObject();
    v22 = v284;
    v288 = v21;
    *(v21 + 16) = v332;
    *(v21 + 24) = v22;
    v290 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v287 = sub_1B0E46A48();
    v289 = v23;

    v24 = v285;
    v25 = v289;
    *v289 = v333;
    v25[1] = v24;

    v26 = v286;
    v27 = v289;
    v289[2] = v334;
    v27[3] = v26;

    v28 = v288;
    v29 = v289;
    v289[4] = v335;
    v29[5] = v28;
    sub_1B0394964();

    if (os_log_type_enabled(v291, v292))
    {
      v30 = v336;
      v272 = sub_1B0E45D78();
      v270 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v271 = 0;
      v273 = sub_1B03949A8(0, v270, v270);
      v274 = sub_1B03949A8(v271, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v275 = &v360;
      v360 = v272;
      v276 = &v359;
      v359 = v273;
      v277 = &v358;
      v358 = v274;
      sub_1B0394A48(0, &v360);
      sub_1B0394A48(1, v275);
      v356 = v333;
      v357 = v285;
      sub_1B03949FC(&v356, v275, v276, v277);
      v278 = v30;
      if (v30)
      {

        __break(1u);
      }

      else
      {
        v356 = v334;
        v357 = v286;
        sub_1B03949FC(&v356, &v360, &v359, &v358);
        v269 = 0;
        v356 = v335;
        v357 = v288;
        sub_1B03949FC(&v356, &v360, &v359, &v358);
        _os_log_impl(&dword_1B0389000, v291, v292, "[%{public}u] Did fail.", v272, 8u);
        v268 = 0;
        sub_1B03998A8(v273, 0, v270);
        sub_1B03998A8(v274, v268, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v291);
    (*(v340 + 8))(v355, v339);
    sub_1B0A330D8(12, 1, v338);
  }

  v117 = sub_1B0971120(v337, 1) || sub_1B0971120(v337, 2);
  v391 = v117;
  return sub_1B0A34A40(v117);
}

void sub_1B0A330D8(uint64_t a1, int a2, int a3)
{
  v174 = a1;
  v173 = a2;
  v172 = a3;
  v144 = sub_1B03F7AE0;
  v145 = sub_1B0A2C62C;
  v146 = sub_1B039BC08;
  v147 = sub_1B0A1F568;
  v148 = sub_1B074E950;
  v149 = sub_1B07135E4;
  v150 = sub_1B070B324;
  v151 = sub_1B0398F5C;
  v152 = sub_1B0398F5C;
  v153 = sub_1B03991EC;
  v154 = sub_1B0398F5C;
  v155 = sub_1B0398F5C;
  v156 = sub_1B074E9C8;
  v157 = sub_1B0398F5C;
  v158 = sub_1B0398F5C;
  v159 = sub_1B070B4B4;
  v160 = sub_1B03F7AE0;
  v161 = sub_1B0A2C62C;
  v162 = sub_1B039BC08;
  v163 = sub_1B0A1F568;
  v164 = sub_1B074E950;
  v165 = sub_1B0398F5C;
  v166 = sub_1B0398F5C;
  v167 = sub_1B03991EC;
  v168 = sub_1B0398F5C;
  v169 = sub_1B0398F5C;
  v170 = sub_1B074E9C8;
  v204 = *MEMORY[0x1E69E9840];
  v202 = 0;
  v203 = 0;
  v196 = 0;
  v195 = 0;
  v194 = 0;
  v171 = 0;
  v192 = 0;
  v175 = sub_1B0E439A8();
  v176 = *(v175 - 8);
  v177 = v175 - 8;
  v178 = (*(v176 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v174);
  v179 = v73 - v178;
  v180 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v181 = v73 - v180;
  v202 = v6;
  v203 = v7 & 1;
  v196 = v8;
  v195 = v3;
  sub_1B0A355B4(v6, v7 & 1);
  v183 = v9;
  v194 = v9;
  v201 = 0;
  v193 = 0;
  v185 = [v182 setTaskExpiredWithRetryAfter:&v193 error:?];
  v184 = v193;
  MEMORY[0x1E69E5928](v193);
  v10 = v201;
  v201 = v184;
  MEMORY[0x1E69E5920](v10);
  if (v185)
  {
    type metadata accessor for SearchIndexerBackgroundTask();
    sub_1B0A27668(v181);
    v130 = 7;
    v125 = swift_allocObject();
    *(v125 + 16) = v172;

    v129 = 32;
    v11 = swift_allocObject();
    v12 = v125;
    v126 = v11;
    *(v11 + 16) = v160;
    *(v11 + 24) = v12;

    v131 = swift_allocObject();
    *(v131 + 16) = v183;
    v142 = sub_1B0E43988();
    v143 = sub_1B0E45908();
    v128 = 17;
    v133 = swift_allocObject();
    *(v133 + 16) = 2;
    v134 = swift_allocObject();
    *(v134 + 16) = 4;
    v13 = swift_allocObject();
    v14 = v126;
    v127 = v13;
    *(v13 + 16) = v161;
    *(v13 + 24) = v14;
    v15 = swift_allocObject();
    v16 = v127;
    v135 = v15;
    *(v15 + 16) = v162;
    *(v15 + 24) = v16;
    v136 = swift_allocObject();
    *(v136 + 16) = 0;
    v137 = swift_allocObject();
    *(v137 + 16) = 8;
    v17 = swift_allocObject();
    v18 = v131;
    v132 = v17;
    *(v17 + 16) = v163;
    *(v17 + 24) = v18;
    v19 = swift_allocObject();
    v20 = v132;
    v139 = v19;
    *(v19 + 16) = v164;
    *(v19 + 24) = v20;
    v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v138 = sub_1B0E46A48();
    v140 = v21;

    v22 = v133;
    v23 = v140;
    *v140 = v165;
    v23[1] = v22;

    v24 = v134;
    v25 = v140;
    v140[2] = v166;
    v25[3] = v24;

    v26 = v135;
    v27 = v140;
    v140[4] = v167;
    v27[5] = v26;

    v28 = v136;
    v29 = v140;
    v140[6] = v168;
    v29[7] = v28;

    v30 = v137;
    v31 = v140;
    v140[8] = v169;
    v31[9] = v30;

    v32 = v139;
    v33 = v140;
    v140[10] = v170;
    v33[11] = v32;
    sub_1B0394964();

    if (os_log_type_enabled(v142, v143))
    {
      v34 = v171;
      v118 = sub_1B0E45D78();
      v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v117 = 0;
      v119 = sub_1B03949A8(0, v116, v116);
      v120 = sub_1B03949A8(v117, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v121 = &v188;
      v188 = v118;
      v122 = &v198;
      v198 = v119;
      v123 = &v197;
      v197 = v120;
      sub_1B0394A48(0, &v188);
      sub_1B0394A48(2, v121);
      v186 = v165;
      v187 = v133;
      sub_1B03949FC(&v186, v121, v122, v123);
      v124 = v34;
      if (v34)
      {

        __break(1u);
      }

      else
      {
        v186 = v166;
        v187 = v134;
        sub_1B03949FC(&v186, &v188, &v198, &v197);
        v115 = 0;
        v186 = v167;
        v187 = v135;
        sub_1B03949FC(&v186, &v188, &v198, &v197);
        v114 = 0;
        v186 = v168;
        v187 = v136;
        sub_1B03949FC(&v186, &v188, &v198, &v197);
        v113 = 0;
        v186 = v169;
        v187 = v137;
        sub_1B03949FC(&v186, &v188, &v198, &v197);
        v112 = 0;
        v186 = v170;
        v187 = v139;
        sub_1B03949FC(&v186, &v188, &v198, &v197);
        _os_log_impl(&dword_1B0389000, v142, v143, "[%{public}u] Did request retry after %f s.", v118, 0x12u);
        v111 = 0;
        sub_1B03998A8(v119, 0, v116);
        sub_1B03998A8(v120, v111, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v142);
    (*(v176 + 8))(v181, v175);
  }

  else
  {
    v82 = v201;
    v86 = sub_1B0E42CD8();
    MEMORY[0x1E69E5920](v82);
    swift_willThrow();
    v83 = 0;
    v35 = v86;
    v192 = v86;
    type metadata accessor for SearchIndexerBackgroundTask();
    sub_1B0A27668(v179);
    v94 = 7;
    v84 = swift_allocObject();
    *(v84 + 16) = v172;

    v93 = 32;
    v36 = swift_allocObject();
    v37 = v84;
    v87 = v36;
    *(v36 + 16) = v144;
    *(v36 + 24) = v37;

    v85 = 24;
    v38 = swift_allocObject();
    v39 = v86;
    v89 = v38;
    *(v38 + 16) = v183;
    v40 = v39;
    v95 = swift_allocObject();
    *(v95 + 16) = v86;
    v109 = sub_1B0E43988();
    v110 = sub_1B0E458E8();
    v91 = 17;
    v97 = swift_allocObject();
    *(v97 + 16) = 2;
    v98 = swift_allocObject();
    *(v98 + 16) = 4;
    v41 = swift_allocObject();
    v42 = v87;
    v88 = v41;
    *(v41 + 16) = v145;
    *(v41 + 24) = v42;
    v43 = swift_allocObject();
    v44 = v88;
    v99 = v43;
    *(v43 + 16) = v146;
    *(v43 + 24) = v44;
    v100 = swift_allocObject();
    *(v100 + 16) = 0;
    v101 = swift_allocObject();
    v92 = 8;
    *(v101 + 16) = 8;
    v45 = swift_allocObject();
    v46 = v89;
    v90 = v45;
    *(v45 + 16) = v147;
    *(v45 + 24) = v46;
    v47 = swift_allocObject();
    v48 = v90;
    v102 = v47;
    *(v47 + 16) = v148;
    *(v47 + 24) = v48;
    v103 = swift_allocObject();
    *(v103 + 16) = 64;
    v104 = swift_allocObject();
    *(v104 + 16) = v92;
    v49 = swift_allocObject();
    v50 = v95;
    v96 = v49;
    *(v49 + 16) = v149;
    *(v49 + 24) = v50;
    v51 = swift_allocObject();
    v52 = v96;
    v106 = v51;
    *(v51 + 16) = v150;
    *(v51 + 24) = v52;
    v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v105 = sub_1B0E46A48();
    v107 = v53;

    v54 = v97;
    v55 = v107;
    *v107 = v151;
    v55[1] = v54;

    v56 = v98;
    v57 = v107;
    v107[2] = v152;
    v57[3] = v56;

    v58 = v99;
    v59 = v107;
    v107[4] = v153;
    v59[5] = v58;

    v60 = v100;
    v61 = v107;
    v107[6] = v154;
    v61[7] = v60;

    v62 = v101;
    v63 = v107;
    v107[8] = v155;
    v63[9] = v62;

    v64 = v102;
    v65 = v107;
    v107[10] = v156;
    v65[11] = v64;

    v66 = v103;
    v67 = v107;
    v107[12] = v157;
    v67[13] = v66;

    v68 = v104;
    v69 = v107;
    v107[14] = v158;
    v69[15] = v68;

    v70 = v106;
    v71 = v107;
    v107[16] = v159;
    v71[17] = v70;
    sub_1B0394964();

    if (os_log_type_enabled(v109, v110))
    {
      v72 = v83;
      v75 = sub_1B0E45D78();
      v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v76 = sub_1B03949A8(1, v74, v74);
      v77 = sub_1B03949A8(0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v78 = &v191;
      v191 = v75;
      v79 = &v200;
      v200 = v76;
      v80 = &v199;
      v199 = v77;
      sub_1B0394A48(2, &v191);
      sub_1B0394A48(3, v78);
      v189 = v151;
      v190 = v97;
      sub_1B03949FC(&v189, v78, v79, v80);
      v81 = v72;
      if (v72)
      {

        __break(1u);
      }

      else
      {
        v189 = v152;
        v190 = v98;
        sub_1B03949FC(&v189, &v191, &v200, &v199);
        v73[6] = 0;
        v189 = v153;
        v190 = v99;
        sub_1B03949FC(&v189, &v191, &v200, &v199);
        v73[5] = 0;
        v189 = v154;
        v190 = v100;
        sub_1B03949FC(&v189, &v191, &v200, &v199);
        v73[4] = 0;
        v189 = v155;
        v190 = v101;
        sub_1B03949FC(&v189, &v191, &v200, &v199);
        v73[3] = 0;
        v189 = v156;
        v190 = v102;
        sub_1B03949FC(&v189, &v191, &v200, &v199);
        v73[2] = 0;
        v189 = v157;
        v190 = v103;
        sub_1B03949FC(&v189, &v191, &v200, &v199);
        v73[1] = 0;
        v189 = v158;
        v190 = v104;
        sub_1B03949FC(&v189, &v191, &v200, &v199);
        v73[0] = 0;
        v189 = v159;
        v190 = v106;
        sub_1B03949FC(&v189, &v191, &v200, &v199);
        _os_log_impl(&dword_1B0389000, v109, v110, "[%{public}u] Failed to request retry after %f s: %@", v75, 0x1Cu);
        sub_1B03998A8(v76, 1, v74);
        sub_1B03998A8(v77, 0, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v109);
    (*(v176 + 8))(v179, v175);
  }
}

uint64_t sub_1B0A34A40(unsigned int a1)
{
  v93 = a1;
  v77 = sub_1B07135E4;
  v78 = sub_1B070B324;
  v79 = sub_1B0398F5C;
  v80 = sub_1B0398F5C;
  v81 = sub_1B070B4B4;
  v123 = *MEMORY[0x1E69E9840];
  v119 = 0;
  v118 = 0;
  v117 = 0;
  v115 = 0;
  v87 = 0;
  v82 = sub_1B0E439A8();
  v83 = *(v82 - 8);
  v84 = v82 - 8;
  v85 = (*(v83 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v93);
  v86 = v52 - v85;
  v89 = 1;
  v119 = v2 & 1;
  v118 = v1;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2C88, &unk_1B0EA3630);
  v97 = sub_1B0E46A48();
  v95 = v3;
  v102 = *MEMORY[0x1E698E4D8];
  MEMORY[0x1E69E5928](v102);
  v4 = sub_1B0E44AD8();
  v5 = v95;
  *v95 = v4;
  v5[1] = v6;
  v94 = sub_1B039A494();
  v7 = sub_1B041A060(302);
  v8 = v95;
  v95[5] = v94;
  v8[2] = v7;
  v101 = *MEMORY[0x1E698E4F0];
  MEMORY[0x1E69E5928](v101);
  v9 = sub_1B0E44AD8();
  v10 = v95;
  v11 = v9;
  v12 = v88;
  v95[6] = v11;
  v10[7] = v13;
  v100 = [v12 identifier];
  v14 = sub_1B0E44AD8();
  v15 = v95;
  v104 = MEMORY[0x1E69E6158];
  v95[11] = MEMORY[0x1E69E6158];
  v15[8] = v14;
  v15[9] = v16;
  v99 = *MEMORY[0x1E698E4E0];
  MEMORY[0x1E69E5928](v99);
  v17 = sub_1B0E44AD8();
  v18 = v95;
  v95[12] = v17;
  v18[13] = v19;
  v91 = sub_1B0E46A48();
  v90 = v20;
  v21 = sub_1B0E44838();
  v22 = v90;
  *v90 = v21;
  v22[1] = v23;
  sub_1B0394964();
  v92 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
  v26 = v95;
  v27 = v25;
  v28 = v92;
  v95[17] = v27;
  v26[14] = v28;
  v98 = *MEMORY[0x1E698E4E8];
  MEMORY[0x1E69E5928](v98);
  v29 = sub_1B0E44AD8();
  v30 = v95;
  v31 = v29;
  LOBYTE(v29) = v93;
  v95[18] = v31;
  v30[19] = v32;
  v33 = sub_1B0A38BD8(v29 & 1);
  v34 = v95;
  v95[23] = v94;
  v34[20] = v33;
  sub_1B0394964();
  v103 = v35;
  MEMORY[0x1E69E5920](v98);
  MEMORY[0x1E69E5920](v99);
  MEMORY[0x1E69E5920](v100);
  MEMORY[0x1E69E5920](v101);
  MEMORY[0x1E69E5920](v102);
  v105 = MEMORY[0x1E69E7CA0] + 8;
  v106 = MEMORY[0x1E69E6168];
  v107 = sub_1B0E445D8();
  v117 = v107;
  v122 = 0;
  v110 = [objc_opt_self() sharedScheduler];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v109 = sub_1B0E44598();

  v116 = v122;
  v111 = [v110 taskStoppedWithParameters:v109 error:&v116];
  v108 = v116;
  MEMORY[0x1E69E5928](v116);
  v36 = v122;
  v122 = v108;
  MEMORY[0x1E69E5920](v36);
  MEMORY[0x1E69E5920](v109);
  MEMORY[0x1E69E5920](v110);
  if ((v111 & 1) == 0)
  {
    v61 = v122;
    v63 = sub_1B0E42CD8();
    MEMORY[0x1E69E5920](v61);
    swift_willThrow();
    v62 = 0;
    v38 = v63;
    v115 = v63;
    type metadata accessor for SearchIndexerBackgroundTask();
    sub_1B0A27668(v86);
    v39 = v63;
    v66 = 7;
    v67 = swift_allocObject();
    *(v67 + 16) = v63;
    v75 = sub_1B0E43988();
    v76 = sub_1B0E458E8();
    v64 = 17;
    v69 = swift_allocObject();
    *(v69 + 16) = 64;
    v70 = swift_allocObject();
    *(v70 + 16) = 8;
    v65 = 32;
    v40 = swift_allocObject();
    v41 = v67;
    v68 = v40;
    *(v40 + 16) = v77;
    *(v40 + 24) = v41;
    v42 = swift_allocObject();
    v43 = v68;
    v72 = v42;
    *(v42 + 16) = v78;
    *(v42 + 24) = v43;
    v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v71 = sub_1B0E46A48();
    v73 = v44;

    v45 = v69;
    v46 = v73;
    *v73 = v79;
    v46[1] = v45;

    v47 = v70;
    v48 = v73;
    v73[2] = v80;
    v48[3] = v47;

    v49 = v72;
    v50 = v73;
    v73[4] = v81;
    v50[5] = v49;
    sub_1B0394964();

    if (os_log_type_enabled(v75, v76))
    {
      v51 = v62;
      v54 = sub_1B0E45D78();
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v55 = sub_1B03949A8(1, v53, v53);
      v56 = sub_1B03949A8(0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v57 = &v114;
      v114 = v54;
      v58 = &v121;
      v121 = v55;
      v59 = &v120;
      v120 = v56;
      sub_1B0394A48(2, &v114);
      sub_1B0394A48(1, v57);
      v112 = v79;
      v113 = v69;
      sub_1B03949FC(&v112, v57, v58, v59);
      v60 = v51;
      if (v51)
      {

        __break(1u);
      }

      else
      {
        v112 = v80;
        v113 = v70;
        sub_1B03949FC(&v112, &v114, &v121, &v120);
        v52[1] = 0;
        v112 = v81;
        v113 = v72;
        sub_1B03949FC(&v112, &v114, &v121, &v120);
        _os_log_impl(&dword_1B0389000, v75, v76, "Failed to report taskStopped: %@", v54, 0xCu);
        sub_1B03998A8(v55, 1, v53);
        sub_1B03998A8(v56, 0, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v75);
    (*(v83 + 8))(v86, v82);
  }
}

void sub_1B0A355B4(unint64_t a1, char a2)
{
  if (a2)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      v6 = 0;
      v7 = 1;
    }

    else
    {
      v6 = a1;
      v7 = 0;
    }

    if (v7)
    {
      v2 = 0;
    }

    else
    {
      v2 = v6;
    }

    if (is_mul_ok(v2, 0x3CuLL))
    {
      if (is_mul_ok(60 * v2, 0x3CuLL))
      {
LABEL_18:
        sub_1B041A044();
        sub_1B0E46B68();
        sub_1B041A044();
        sub_1B0E46B78();
        sub_1B0912230();
        sub_1B0E453D8();
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      v4 = 0;
      v5 = 1;
    }

    else
    {
      v4 = a1;
      v5 = 0;
    }

    if (v5)
    {
      v3 = 0;
    }

    else
    {
      v3 = v4;
    }

    if (is_mul_ok(v3, 0x3CuLL))
    {
      goto LABEL_18;
    }
  }

  __break(1u);
}

void sub_1B0A35904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v149 = a1;
  v147 = a2;
  v134 = a3;
  v135 = a4;
  v118 = sub_1B07135E4;
  v119 = sub_1B070B324;
  v120 = sub_1B0398F5C;
  v121 = sub_1B0398F5C;
  v122 = sub_1B070B4B4;
  v123 = sub_1B0A39C00;
  v124 = sub_1B03B0DF8;
  v125 = sub_1B0A39C14;
  v126 = sub_1B03B0DF8;
  v127 = sub_1B0398F5C;
  v128 = sub_1B0398F5C;
  v129 = sub_1B0399260;
  v130 = sub_1B0398F5C;
  v131 = sub_1B0398F5C;
  v132 = sub_1B0399260;
  v181 = *MEMORY[0x1E69E9840];
  v174 = 0u;
  v175 = 0u;
  v173 = 0;
  v172 = 0;
  v133 = 0;
  v170 = 0;
  v146 = 0;
  v136 = sub_1B0E439A8();
  v137 = *(v136 - 8);
  v138 = v136 - 8;
  v140 = *(v137 + 64);
  v139 = (v140 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v141 = &v59 - v139;
  v142 = v139;
  MEMORY[0x1EEE9AC00](v5);
  v143 = &v59 - v142;
  *&v174 = v6;
  *(&v174 + 1) = v7;
  *&v175 = v8;
  *(&v175 + 1) = v9;
  v173 = v4;
  v150 = sub_1B0A39B9C();
  v144 = 0x1FB55D000uLL;
  v159 = [v145 0x1FB55D678];
  v157 = sub_1B0E44AD8();
  v151 = v10;
  v158 = [v145 (v144 + 1656)];
  v152 = sub_1B0E44AD8();
  v153 = v11;
  v148 = sub_1B039A494();
  v12 = qos_class_self();
  v154 = sub_1B074A93C(v12);
  v155 = sub_1B041A060(3600);
  v156 = sub_1B041A060(v147);
  v13 = sub_1B041A060(v149);
  v160 = sub_1B0A38B34(v157, v151, v152, v153, v154, 30, v155, v156, v13);
  MEMORY[0x1E69E5920](v158);
  MEMORY[0x1E69E5920](v159);
  v172 = v160;
  v180 = 0;
  v162 = [objc_opt_self() sharedScheduler];
  v171 = v180;
  v163 = [v162 reportProgressMetrics:v160 error:&v171];
  v161 = v171;
  MEMORY[0x1E69E5928](v171);
  v14 = v180;
  v180 = v161;
  MEMORY[0x1E69E5920](v14);
  MEMORY[0x1E69E5920](v162);
  if (v163)
  {
    type metadata accessor for SearchIndexerBackgroundTask();
    sub_1B0A27668(v143);
    v98 = 48;
    v104 = 7;
    v15 = swift_allocObject();
    v16 = v147;
    v17 = v134;
    v18 = v135;
    v99 = v15;
    v15[2] = v149;
    v15[3] = v16;
    v15[4] = v17;
    v15[5] = v18;
    v19 = swift_allocObject();
    v20 = v147;
    v21 = v134;
    v22 = v135;
    v105 = v19;
    v19[2] = v149;
    v19[3] = v20;
    v19[4] = v21;
    v19[5] = v22;
    v116 = sub_1B0E43988();
    v117 = sub_1B0E458C8();
    v101 = 17;
    v107 = swift_allocObject();
    *(v107 + 16) = 0;
    v108 = swift_allocObject();
    v102 = 8;
    *(v108 + 16) = 8;
    v103 = 32;
    v23 = swift_allocObject();
    v24 = v99;
    v100 = v23;
    *(v23 + 16) = v123;
    *(v23 + 24) = v24;
    v25 = swift_allocObject();
    v26 = v100;
    v109 = v25;
    *(v25 + 16) = v124;
    *(v25 + 24) = v26;
    v110 = swift_allocObject();
    *(v110 + 16) = 0;
    v111 = swift_allocObject();
    *(v111 + 16) = v102;
    v27 = swift_allocObject();
    v28 = v105;
    v106 = v27;
    *(v27 + 16) = v125;
    *(v27 + 24) = v28;
    v29 = swift_allocObject();
    v30 = v106;
    v113 = v29;
    *(v29 + 16) = v126;
    *(v29 + 24) = v30;
    v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v112 = sub_1B0E46A48();
    v114 = v31;

    v32 = v107;
    v33 = v114;
    *v114 = v127;
    v33[1] = v32;

    v34 = v108;
    v35 = v114;
    v114[2] = v128;
    v35[3] = v34;

    v36 = v109;
    v37 = v114;
    v114[4] = v129;
    v37[5] = v36;

    v38 = v110;
    v39 = v114;
    v114[6] = v130;
    v39[7] = v38;

    v40 = v111;
    v41 = v114;
    v114[8] = v131;
    v41[9] = v40;

    v42 = v113;
    v43 = v114;
    v114[10] = v132;
    v43[11] = v42;
    sub_1B0394964();

    if (os_log_type_enabled(v116, v117))
    {
      v44 = v133;
      v91 = sub_1B0E45D78();
      v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v90 = 0;
      v92 = sub_1B03949A8(0, v89, v89);
      v93 = sub_1B03949A8(v90, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v94 = &v166;
      v166 = v91;
      v95 = &v177;
      v177 = v92;
      v96 = &v176;
      v176 = v93;
      sub_1B0394A48(0, &v166);
      sub_1B0394A48(2, v94);
      v164 = v127;
      v165 = v107;
      sub_1B03949FC(&v164, v94, v95, v96);
      v97 = v44;
      if (v44)
      {

        __break(1u);
      }

      else
      {
        v164 = v128;
        v165 = v108;
        sub_1B03949FC(&v164, &v166, &v177, &v176);
        v88 = 0;
        v164 = v129;
        v165 = v109;
        sub_1B03949FC(&v164, &v166, &v177, &v176);
        v87 = 0;
        v164 = v130;
        v165 = v110;
        sub_1B03949FC(&v164, &v166, &v177, &v176);
        v86 = 0;
        v164 = v131;
        v165 = v111;
        sub_1B03949FC(&v164, &v166, &v177, &v176);
        v85 = 0;
        v164 = v132;
        v165 = v113;
        sub_1B03949FC(&v164, &v166, &v177, &v176);
        _os_log_impl(&dword_1B0389000, v116, v117, "Reported progress metrics. completed: %ld/%ld)", v91, 0x16u);
        v84 = 0;
        sub_1B03998A8(v92, 0, v89);
        sub_1B03998A8(v93, v84, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v116);
    (*(v137 + 8))(v143, v136);
    MEMORY[0x1E69E5920](v160);
  }

  else
  {
    v68 = v180;
    v70 = sub_1B0E42CD8();
    MEMORY[0x1E69E5920](v68);
    swift_willThrow();
    v69 = 0;
    MEMORY[0x1E69E5920](v160);
    v45 = v70;
    v170 = v70;
    type metadata accessor for SearchIndexerBackgroundTask();
    sub_1B0A27668(v141);
    v46 = v70;
    v73 = 7;
    v74 = swift_allocObject();
    *(v74 + 16) = v70;
    v82 = sub_1B0E43988();
    v83 = sub_1B0E458E8();
    v71 = 17;
    v76 = swift_allocObject();
    *(v76 + 16) = 64;
    v77 = swift_allocObject();
    *(v77 + 16) = 8;
    v72 = 32;
    v47 = swift_allocObject();
    v48 = v74;
    v75 = v47;
    *(v47 + 16) = v118;
    *(v47 + 24) = v48;
    v49 = swift_allocObject();
    v50 = v75;
    v79 = v49;
    *(v49 + 16) = v119;
    *(v49 + 24) = v50;
    v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v78 = sub_1B0E46A48();
    v80 = v51;

    v52 = v76;
    v53 = v80;
    *v80 = v120;
    v53[1] = v52;

    v54 = v77;
    v55 = v80;
    v80[2] = v121;
    v55[3] = v54;

    v56 = v79;
    v57 = v80;
    v80[4] = v122;
    v57[5] = v56;
    sub_1B0394964();

    if (os_log_type_enabled(v82, v83))
    {
      v58 = v69;
      v61 = sub_1B0E45D78();
      v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v62 = sub_1B03949A8(1, v60, v60);
      v63 = sub_1B03949A8(0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v64 = &v169;
      v169 = v61;
      v65 = &v179;
      v179 = v62;
      v66 = &v178;
      v178 = v63;
      sub_1B0394A48(2, &v169);
      sub_1B0394A48(1, v64);
      v167 = v120;
      v168 = v76;
      sub_1B03949FC(&v167, v64, v65, v66);
      v67 = v58;
      if (v58)
      {

        __break(1u);
      }

      else
      {
        v167 = v121;
        v168 = v77;
        sub_1B03949FC(&v167, &v169, &v179, &v178);
        v59 = 0;
        v167 = v122;
        v168 = v79;
        sub_1B03949FC(&v167, &v169, &v179, &v178);
        _os_log_impl(&dword_1B0389000, v82, v83, "Failed to report progress metrics: %@", v61, 0xCu);
        sub_1B03998A8(v62, 1, v60);
        sub_1B03998A8(v63, 0, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v82);
    (*(v137 + 8))(v141, v136);
  }
}

void sub_1B0A36D38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v142 = a1;
  v134 = a2;
  v132 = a3;
  v133 = a4;
  v143 = 0;
  v116 = sub_1B07135E4;
  v117 = sub_1B070B324;
  v118 = sub_1B0398F5C;
  v119 = sub_1B0398F5C;
  v120 = sub_1B070B4B4;
  v121 = sub_1B0A39C14;
  v122 = sub_1B03B0DF8;
  v123 = sub_1B0A39C28;
  v124 = sub_1B03B0DF8;
  v125 = sub_1B0398F5C;
  v126 = sub_1B0398F5C;
  v127 = sub_1B0399260;
  v128 = sub_1B0398F5C;
  v129 = sub_1B0398F5C;
  v130 = sub_1B0399260;
  v163 = *MEMORY[0x1E69E9840];
  v156 = 0u;
  v157 = 0u;
  v155 = 0;
  v131 = 0;
  v153 = 0;
  v135 = sub_1B0E439A8();
  v136 = *(v135 - 8);
  v137 = v135 - 8;
  v138 = (*(v136 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v142);
  v139 = &v57 - v138;
  v140 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v141 = &v57 - v140;
  *&v156 = v7;
  *(&v156 + 1) = v8;
  *&v157 = v9;
  *(&v157 + 1) = v10;
  v155 = v4;
  v162 = 0;
  v11 = IndexingStatistics.fractionCompletedAsInt.getter(v7, v8);
  v154 = v162;
  v146 = [v144 reportTaskWorkloadProgress:v142 completed:v11 category:30 subCategory:v143 error:&v154];
  v145 = v154;
  MEMORY[0x1E69E5928](v154);
  v12 = v162;
  v162 = v145;
  MEMORY[0x1E69E5920](v12);
  if (v146)
  {
    type metadata accessor for SearchIndexerBackgroundTask();
    sub_1B0A27668(v141);
    v96 = 48;
    v102 = 7;
    v13 = swift_allocObject();
    v14 = v134;
    v15 = v132;
    v16 = v133;
    v97 = v13;
    v13[2] = v142;
    v13[3] = v14;
    v13[4] = v15;
    v13[5] = v16;
    v17 = swift_allocObject();
    v18 = v134;
    v19 = v132;
    v20 = v133;
    v103 = v17;
    v17[2] = v142;
    v17[3] = v18;
    v17[4] = v19;
    v17[5] = v20;
    v114 = sub_1B0E43988();
    v115 = sub_1B0E458C8();
    v99 = 17;
    v105 = swift_allocObject();
    *(v105 + 16) = 0;
    v106 = swift_allocObject();
    v100 = 8;
    *(v106 + 16) = 8;
    v101 = 32;
    v21 = swift_allocObject();
    v22 = v97;
    v98 = v21;
    *(v21 + 16) = v121;
    *(v21 + 24) = v22;
    v23 = swift_allocObject();
    v24 = v98;
    v107 = v23;
    *(v23 + 16) = v122;
    *(v23 + 24) = v24;
    v108 = swift_allocObject();
    *(v108 + 16) = 0;
    v109 = swift_allocObject();
    *(v109 + 16) = v100;
    v25 = swift_allocObject();
    v26 = v103;
    v104 = v25;
    *(v25 + 16) = v123;
    *(v25 + 24) = v26;
    v27 = swift_allocObject();
    v28 = v104;
    v111 = v27;
    *(v27 + 16) = v124;
    *(v27 + 24) = v28;
    v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v110 = sub_1B0E46A48();
    v112 = v29;

    v30 = v105;
    v31 = v112;
    *v112 = v125;
    v31[1] = v30;

    v32 = v106;
    v33 = v112;
    v112[2] = v126;
    v33[3] = v32;

    v34 = v107;
    v35 = v112;
    v112[4] = v127;
    v35[5] = v34;

    v36 = v108;
    v37 = v112;
    v112[6] = v128;
    v37[7] = v36;

    v38 = v109;
    v39 = v112;
    v112[8] = v129;
    v39[9] = v38;

    v40 = v111;
    v41 = v112;
    v112[10] = v130;
    v41[11] = v40;
    sub_1B0394964();

    if (os_log_type_enabled(v114, v115))
    {
      v42 = v131;
      v89 = sub_1B0E45D78();
      v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v88 = 0;
      v90 = sub_1B03949A8(0, v87, v87);
      v91 = sub_1B03949A8(v88, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v92 = &v149;
      v149 = v89;
      v93 = &v159;
      v159 = v90;
      v94 = &v158;
      v158 = v91;
      sub_1B0394A48(0, &v149);
      sub_1B0394A48(2, v92);
      v147 = v125;
      v148 = v105;
      sub_1B03949FC(&v147, v92, v93, v94);
      v95 = v42;
      if (v42)
      {

        __break(1u);
      }

      else
      {
        v147 = v126;
        v148 = v106;
        sub_1B03949FC(&v147, &v149, &v159, &v158);
        v86 = 0;
        v147 = v127;
        v148 = v107;
        sub_1B03949FC(&v147, &v149, &v159, &v158);
        v85 = 0;
        v147 = v128;
        v148 = v108;
        sub_1B03949FC(&v147, &v149, &v159, &v158);
        v84 = 0;
        v147 = v129;
        v148 = v109;
        sub_1B03949FC(&v147, &v149, &v159, &v158);
        v83 = 0;
        v147 = v130;
        v148 = v111;
        sub_1B03949FC(&v147, &v149, &v159, &v158);
        _os_log_impl(&dword_1B0389000, v114, v115, "Reported task workload progress (total: %ld, completed: %ld%%)", v89, 0x16u);
        v82 = 0;
        sub_1B03998A8(v90, 0, v87);
        sub_1B03998A8(v91, v82, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v114);
    (*(v136 + 8))(v141, v135);
  }

  else
  {
    v66 = v162;
    v68 = sub_1B0E42CD8();
    MEMORY[0x1E69E5920](v66);
    swift_willThrow();
    v67 = 0;
    v43 = v68;
    v153 = v68;
    type metadata accessor for SearchIndexerBackgroundTask();
    sub_1B0A27668(v139);
    v44 = v68;
    v71 = 7;
    v72 = swift_allocObject();
    *(v72 + 16) = v68;
    v80 = sub_1B0E43988();
    v81 = sub_1B0E458E8();
    v69 = 17;
    v74 = swift_allocObject();
    *(v74 + 16) = 64;
    v75 = swift_allocObject();
    *(v75 + 16) = 8;
    v70 = 32;
    v45 = swift_allocObject();
    v46 = v72;
    v73 = v45;
    *(v45 + 16) = v116;
    *(v45 + 24) = v46;
    v47 = swift_allocObject();
    v48 = v73;
    v77 = v47;
    *(v47 + 16) = v117;
    *(v47 + 24) = v48;
    v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v76 = sub_1B0E46A48();
    v78 = v49;

    v50 = v74;
    v51 = v78;
    *v78 = v118;
    v51[1] = v50;

    v52 = v75;
    v53 = v78;
    v78[2] = v119;
    v53[3] = v52;

    v54 = v77;
    v55 = v78;
    v78[4] = v120;
    v55[5] = v54;
    sub_1B0394964();

    if (os_log_type_enabled(v80, v81))
    {
      v56 = v67;
      v59 = sub_1B0E45D78();
      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v60 = sub_1B03949A8(1, v58, v58);
      v61 = sub_1B03949A8(0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v62 = &v152;
      v152 = v59;
      v63 = &v161;
      v161 = v60;
      v64 = &v160;
      v160 = v61;
      sub_1B0394A48(2, &v152);
      sub_1B0394A48(1, v62);
      v150 = v118;
      v151 = v74;
      sub_1B03949FC(&v150, v62, v63, v64);
      v65 = v56;
      if (v56)
      {

        __break(1u);
      }

      else
      {
        v150 = v119;
        v151 = v75;
        sub_1B03949FC(&v150, &v152, &v161, &v160);
        v57 = 0;
        v150 = v120;
        v151 = v77;
        sub_1B03949FC(&v150, &v152, &v161, &v160);
        _os_log_impl(&dword_1B0389000, v80, v81, "Failed to report task workload progress: %@", v59, 0xCu);
        sub_1B03998A8(v60, 1, v58);
        sub_1B03998A8(v61, 0, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v80);
    (*(v136 + 8))(v139, v135);
  }
}

uint64_t sub_1B0A37F44()
{
  v109 = *MEMORY[0x1E69E9840];
  v103 = 0;
  v88 = 0;
  v101 = 0;
  v89 = sub_1B0E439A8();
  v90 = *(v89 - 8);
  v91 = v90;
  v92 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v89 - 8);
  v94 = (v92 + 15) & 0xFFFFFFFFFFFFFFF0;
  v93 = &v22 - v94;
  MEMORY[0x1EEE9AC00](&v22 - v94);
  v95 = &v22 - v94;
  v103 = v0;
  if (sub_1B0A38C1C())
  {
    return v88;
  }

  v108 = 0;
  v1 = objc_opt_self();
  v102 = v108;
  v87 = [v1 reportFeatureCheckpoint:50 forFeature:302 error:&v102];
  v86 = v102;
  v2 = v102;
  v3 = v108;
  v108 = v86;

  if (v87)
  {
    sub_1B0A38CA8(1);
    v82 = 0;
    type metadata accessor for SearchIndexerBackgroundTask();
    sub_1B0A27668(v95);
    v84 = sub_1B0E43988();
    v80 = v84;
    v83 = sub_1B0E45908();
    v81 = v83;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v85 = sub_1B0E46A48();
    if (os_log_type_enabled(v84, v83))
    {
      v4 = v88;
      v71 = sub_1B0E45D78();
      v67 = v71;
      v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v69 = 0;
      v72 = sub_1B03949A8(0, v68, v68);
      v70 = v72;
      v73 = sub_1B03949A8(v69, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v97 = v71;
      v105 = v72;
      v104 = v73;
      v74 = 0;
      v75 = &v97;
      sub_1B0394A48(0, &v97);
      sub_1B0394A48(v74, v75);
      v96 = v85;
      v76 = &v22;
      MEMORY[0x1EEE9AC00](&v22);
      v77 = &v22 - 6;
      *(&v22 - 4) = v5;
      *(&v22 - 3) = &v105;
      *(&v22 - 2) = &v104;
      v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E17D0, &unk_1B0E99B60);
      sub_1B06D3AB0();
      sub_1B0E45018();
      v79 = v4;
      if (v4)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_1B0389000, v80, v81, "Reported feature availability.", v67, 2u);
        v65 = 0;
        sub_1B03998A8(v70, 0, v68);
        sub_1B03998A8(v73, v65, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();

        v66 = v79;
      }
    }

    else
    {

      v66 = v88;
    }

    v63 = v66;

    (*(v91 + 8))(v95, v89);
    return v63;
  }

  else
  {
    v39 = v108;
    v43 = sub_1B0E42CD8();
    v40 = v43;

    swift_willThrow();
    v42 = 0;
    v41 = 0;
    v7 = v43;
    v101 = v43;
    type metadata accessor for SearchIndexerBackgroundTask();
    sub_1B0A27668(v93);
    v8 = v43;
    v50 = 7;
    v51 = swift_allocObject();
    *(v51 + 16) = v43;
    v61 = sub_1B0E43988();
    v44 = v61;
    v60 = sub_1B0E458E8();
    v45 = v60;
    v46 = 17;
    v54 = swift_allocObject();
    v47 = v54;
    *(v54 + 16) = 64;
    v55 = swift_allocObject();
    v48 = v55;
    *(v55 + 16) = 8;
    v49 = 32;
    v9 = swift_allocObject();
    v10 = v51;
    v52 = v9;
    *(v9 + 16) = sub_1B07135E4;
    *(v9 + 24) = v10;
    v11 = swift_allocObject();
    v12 = v52;
    v58 = v11;
    v53 = v11;
    *(v11 + 16) = sub_1B070B324;
    *(v11 + 24) = v12;
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v56 = sub_1B0E46A48();
    v57 = v13;

    v14 = v54;
    v15 = v57;
    *v57 = sub_1B0398F5C;
    v15[1] = v14;

    v16 = v55;
    v17 = v57;
    v57[2] = sub_1B0398F5C;
    v17[3] = v16;

    v18 = v57;
    v19 = v58;
    v57[4] = sub_1B070B4B4;
    v18[5] = v19;
    sub_1B0394964();

    if (os_log_type_enabled(v61, v60))
    {
      v20 = v41;
      v32 = sub_1B0E45D78();
      v29 = v32;
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v35 = 1;
      v33 = sub_1B03949A8(1, v30, v30);
      v31 = v33;
      v34 = sub_1B03949A8(0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v100 = v32;
      v107 = v33;
      v106 = v34;
      v36 = &v100;
      sub_1B0394A48(2, &v100);
      sub_1B0394A48(v35, v36);
      v98 = sub_1B0398F5C;
      v99 = v47;
      sub_1B03949FC(&v98, v36, &v107, &v106);
      v37 = v20;
      v38 = v20;
      if (v20)
      {
        v27 = 0;

        __break(1u);
      }

      else
      {
        v98 = sub_1B0398F5C;
        v99 = v48;
        sub_1B03949FC(&v98, &v100, &v107, &v106);
        v25 = 0;
        v26 = 0;
        v98 = sub_1B070B4B4;
        v99 = v53;
        sub_1B03949FC(&v98, &v100, &v107, &v106);
        v23 = 0;
        v24 = 0;
        _os_log_impl(&dword_1B0389000, v44, v45, "Failed to report feature availability: %@", v29, 0xCu);
        sub_1B03998A8(v31, 1, v30);
        sub_1B03998A8(v34, 0, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();

        v28 = v23;
      }
    }

    else
    {
      v21 = v41;

      v28 = v21;
    }

    v22 = v28;

    (*(v91 + 8))(v93, v89);
    return v22;
  }
}

uint64_t sub_1B0A38C1C()
{
  sub_1B0E44838();
  v2 = sub_1B0E44AC8();

  v3 = [v1 BOOLForKey_];
  MEMORY[0x1E69E5920](v2);
  return v3;
}

uint64_t sub_1B0A38CA8(char a1)
{
  v4 = sub_1B0E453B8();
  sub_1B0E44838();
  v3 = sub_1B0E44AC8();

  [v2 setValue:v4 forKey:v3];
  MEMORY[0x1E69E5920](v3);
  return swift_unknownObjectRelease();
}

uint64_t sub_1B0A38D58()
{
  v62 = 0;
  v61 = 0;
  v60 = 0;
  v58 = 0;
  v59 = 0;
  v55 = 0;
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E18D8, &unk_1B0E99EF0);
  v42 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v0);
  v43 = v12 - v42;
  v44 = sub_1B0E43BB8();
  v45 = *(v44 - 8);
  v46 = v44 - 8;
  v47 = (*(v45 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v53);
  v48 = v12 - v47;
  v62 = v12 - v47;
  v49 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v50 = v12 - v49;
  v51 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v52 = v12 - v51;
  v61 = v12 - v51;
  v60 = v5;
  MEMORY[0x1E69E5928](v5);
  v54 = [v53 hostname];
  if (v54)
  {
    v41 = v54;
    v36 = v54;
    v37 = sub_1B0E44AD8();
    v38 = v6;
    MEMORY[0x1E69E5920](v36);
    v39 = v37;
    v40 = v38;
  }

  else
  {
    v39 = 0;
    v40 = 0;
  }

  v34 = v40;
  v35 = v39;
  if (!v40)
  {
    MEMORY[0x1E69E5920](v53);
LABEL_30:
    v18 = 0;
    v19 = 0;
    v20 = 0;
    return v18;
  }

  v32 = v35;
  v33 = v34;
  v29 = v34;
  v30 = v35;
  v58 = v35;
  v59 = v34;
  MEMORY[0x1E69E5920](v53);
  MEMORY[0x1E69E5928](v53);
  v31 = [v53 portNumber];
  MEMORY[0x1E69E5920](v53);
  if (v31 <= 0xFFFF)
  {
    v56 = v31;
    v57 = 0;
  }

  else
  {
    v56 = 0;
    v57 = 1;
  }

  v28 = v56;
  if (v57)
  {

    goto LABEL_30;
  }

  v27 = v28;
  v25 = v28;
  v55 = v28;
  v7 = sub_1B0A61548();
  v26 = v7;
  if ((v7 & 0xFC) != 0xFC)
  {
    v24 = v26;
    v23 = (v26 >> 6) & 3;
    if (v23)
    {
      if (v23 == 1)
      {
        if (v25)
        {
          goto LABEL_26;
        }

        sub_1B0E43B88();
        (*(v45 + 32))(v52, v50, v44);
LABEL_29:
        (*(v45 + 16))(v50, v52, v44);
        v12[1] = sub_1B0E43BA8();
        v14 = *(v45 + 8);
        v13 = v45 + 8;
        v14(v50, v44);
        AccountConfiguration.Endpoint.init(host:port:)();
        v15 = v8;
        v16 = v9;
        v17 = v10;
        v14(v52, v44);
        v18 = v15;
        v19 = v16;
        v20 = v17;
        return v18;
      }

      if (v25)
      {
        goto LABEL_26;
      }

LABEL_22:
      sub_1B0E43B78();
      (*(v45 + 32))(v52, v50, v44);
      goto LABEL_29;
    }

    if (!v25)
    {
      goto LABEL_22;
    }
  }

LABEL_26:
  sub_1B0E43B98();
  if ((*(v45 + 48))(v43, 1, v44) != 1)
  {
    v22 = *(v45 + 32);
    v21 = v45 + 32;
    v22(v48, v43, v44);
    (*(v45 + 16))(v50, v48, v44);
    v22(v52, v50, v44);
    (*(v45 + 8))(v48, v44);
    goto LABEL_29;
  }

  sub_1B06E31EC(v43);

  v18 = 0;
  v19 = 0;
  v20 = 0;
  return v18;
}

uint64_t sub_1B0A394B4()
{
  v5 = [v0 defaultConnectionSettings];
  if (v5)
  {
    v3 = [v5 usesSSL];
    v4 = [v5 tryDirectSSL];
    if (v3)
    {
      MEMORY[0x1E69E5920](v5);
      if (v4)
      {
        return 64;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      MEMORY[0x1E69E5920](v5);
      return 65408;
    }
  }

  else
  {
    return 65532;
  }
}

id sub_1B0A395D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v18 = sub_1B0E44AC8();
  if (a4)
  {
    v11 = sub_1B0E44AC8();

    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v10 = [v16 initWithIdentifier:v18 taskName:a9 qos:? workloadCategory:? expectedMetricValue:? itemsCompleted:? totalItemCount:?];
  MEMORY[0x1E69E5920](a9);
  MEMORY[0x1E69E5920](a8);
  MEMORY[0x1E69E5920](a7);
  MEMORY[0x1E69E5920](a5);
  MEMORY[0x1E69E5920](v12);
  MEMORY[0x1E69E5920](v18);

  return v10;
}

uint64_t sub_1B0A39750(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  v3 = *(a1 + 8);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(a2 + 8) = v3;
  *(a2 + 16) = *(a1 + 16);
  v5 = *(a1 + 24);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = a2;
  *(a2 + 24) = v5;
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 34) = *(a1 + 34);
  return result;
}

uint64_t block_copy_helper_30_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

void *sub_1B0A398C0(void *a1)
{
  if (*a1)
  {
  }

  v3 = a1 + *(sub_1B0E43908() + 20);
  v1 = sub_1B0E438E8();
  (*(*(v1 - 8) + 8))(v3);
  return a1;
}

uint64_t sub_1B0A39958(uint64_t a1)
{
  v1 = sub_1B0E43798();
  (*(*(v1 - 8) + 8))(a1);
  v4 = *(sub_1B0E43808() + 20);
  v2 = sub_1B0E437A8();
  (*(*(v2 - 8) + 8))(a1 + v4);
  return a1;
}

uint64_t block_copy_helper_74(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_1B0A39A7C()
{
  v2 = qword_1EB6E3A00;
  if (!qword_1EB6E3A00)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E3A00);
    return WitnessTable;
  }

  return v2;
}

uint64_t block_copy_helper_183(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_1B0A39B9C()
{
  v2 = qword_1EB6E3A08;
  if (!qword_1EB6E3A08)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB6E3A08);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1B0A39C50(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0xFE && *(a1 + 9))
    {
      v4 = *a1 + 254;
    }

    else
    {
      v2 = 255 - *(a1 + 8);
      if (v2 >= 0xFE)
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

uint64_t sub_1B0A39D74(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = result;
  v4 = (result + 9);
  if (a2 > 0xFE)
  {
    result = 0;
    *(v3 + 8) = 0;
    *v3 = a2 - 255;
    if (a3 >= 0xFF)
    {
      *v4 = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *v4 = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t sub_1B0A39F70()
{
  v2 = qword_1EB6E3A10;
  if (!qword_1EB6E3A10)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E3A10);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B0A39FEC()
{
  v4 = 0;
  v2 = 0;
  v3 = 1;
  v1 = sub_1B06C70B0(&v2, &unk_1F270C2E8);

  v4 = v1;
  sub_1B0391AD4(&v4);
  return v1;
}

uint64_t sub_1B0A3A058(uint64_t a1)
{
  v9 = a1;
  v8 = v1;
  v4 = *v1;

  v6 = a1;
  sub_1B03E1B3C(sub_1B0A3A338, v5, v4, &unk_1F270C2E8, &unk_1F270C378);

  return v7 & 1;
}

uint64_t sub_1B0A3A114()
{
  v3 = *v0;

  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3A18, &qword_1B0EA3780);
  sub_1B03E1B3C(sub_1B0A3A3DC, 0, v3, &unk_1F270C2E8, v1);

  return v4;
}

uint64_t sub_1B0A3A1D0(char a1)
{
  v7 = a1;
  v6 = v1;
  v4 = *v1;

  v5[16] = a1;
  sub_1B03E1B3C(sub_1B0A3A508, v5, v4, &unk_1F270C2E8, &unk_1F270C408);

  return v5[31];
}

uint64_t sub_1B0A3A288@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if ((*(result + 8) & 1) != 0 && !*result)
  {
    *result = a2;
    *(result + 8) = 0;
    *a3 = 1;
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

uint64_t *sub_1B0A3A3DC@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  if (result[1])
  {
    *a2 = 0;
    *(a2 + 8) = 1;
  }

  else
  {
    *result = 1;
    *(result + 8) = 1;
    *a2 = v2;
    *(a2 + 8) = 0;
  }

  return result;
}

uint64_t sub_1B0A3A4B0@<X0>(_BYTE *a1@<X8>, char a2@<W1>)
{
  result = sub_1B0A3A5AC(a2);
  *a1 = result;
  return result;
}

unint64_t sub_1B0A3A530()
{
  v2 = qword_1EB6E3A20;
  if (!qword_1EB6E3A20)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E3A20);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B0A3A5AC(char a1)
{
  v5 = *v1;
  if ((v1[1] & 1) == 0)
  {
    if (a1)
    {
      if (a1 != 1)
      {
        if (a1 != 2)
        {
          if (a1 == 3)
          {
            goto LABEL_17;
          }

          goto LABEL_21;
        }

LABEL_19:
        sub_1B0A3A7C0(v4);
        return 3;
      }

LABEL_20:
      sub_1B0A3A7C0(v4);
      return 2;
    }

LABEL_18:
    sub_1B0A3A7C0(v4);
    return 1;
  }

  if (!v5)
  {
    if (a1)
    {
      if (a1 != 1)
      {
        if (a1 != 2)
        {
          if (a1 == 3)
          {
LABEL_17:
            sub_1B0A3A7C0(v4);
            return 4;
          }

LABEL_21:
          sub_1B0A3A7C0(v4);
          return 0;
        }

        goto LABEL_19;
      }

      goto LABEL_20;
    }

    goto LABEL_18;
  }

  sub_1B0A3A7C0(v4);
  if (v5 == 1)
  {
    return 5;
  }

  else
  {
    return 6;
  }
}

uint64_t sub_1B0A3A7C0(uint64_t result)
{
  *result = 2;
  *(result + 8) = 1;
  return result;
}

unint64_t sub_1B0A3A7F0()
{
  v2 = qword_1EB6E3A28;
  if (!qword_1EB6E3A28)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E3A28);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0A3A980()
{
  v2 = qword_1EB6E3A30;
  if (!qword_1EB6E3A30)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E3A30);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0A3AA14()
{
  v2 = qword_1EB6E3A38;
  if (!qword_1EB6E3A38)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E3A38);
    return WitnessTable;
  }

  return v2;
}

void *sub_1B0A3AA90(void *a1)
{
  v339 = v374;
  v350 = a1;
  v340 = "Fatal error";
  v341 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v342 = "Message/SearchRequestPredicate+FromCriterion.swift";
  v343 = "Negative value is not representable";
  v344 = "Swift/Integers.swift";
  v345 = "Unexpectedly found nil while unwrapping an Optional value";
  v346 = "Not enough bits to represent the passed value";
  v347 = sub_1B0A3E1D0;
  v348 = sub_1B0A3E638;
  v421 = 0;
  v419 = 0;
  v412 = 0;
  v411 = 0;
  v408 = 0;
  v349 = 0;
  v370 = 0;
  v368 = 0;
  v351 = sub_1B0E43108();
  v352 = *(v351 - 8);
  v353 = v351 - 8;
  v354 = (*(v352 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v350);
  v355 = &v86 - v354;
  v356 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v2);
  v357 = &v86 - v356;
  v421 = &v86 - v356;
  v419 = v4;
  v358 = [v4 criterionType] - 1;
  if (v358 > 0x30)
  {
LABEL_162:
    MEMORY[0x1E69E5928](v350);
    v74 = sub_1B0E46A28();
    v103 = &v417;
    v417 = v74;
    v418 = v75;
    v104 = 0;
    v76 = sub_1B0E44838();
    v101 = v77;
    MEMORY[0x1B2728B30](v76);

    v78 = [v350 criterionType];
    v102 = &v416;
    v416 = v78;
    type metadata accessor for CriterionType(0);
    sub_1B0E469E8();
    v79 = sub_1B0E44838();
    v105 = v80;
    MEMORY[0x1B2728B30](v79);

    v106 = [v350 expression];
    if (v106)
    {
      v100 = v106;
      v95 = v106;
      v96 = sub_1B0E44AD8();
      v97 = v81;
      MEMORY[0x1E69E5920](v95);
      v98 = v96;
      v99 = v97;
    }

    else
    {
      v98 = 0;
      v99 = 0;
    }

    v89 = v415;
    v415[0] = v98;
    v415[1] = v99;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3850, &qword_1B0E9B600);
    v82 = sub_1B0E44B88();
    v90 = v414;
    v414[0] = v82;
    v414[1] = v83;
    v92 = &v417;
    sub_1B0E46A08();
    sub_1B03B1198(v90);
    v84 = sub_1B0E44838();
    v91 = v85;
    MEMORY[0x1B2728B30](v84);

    v94 = v417;
    v93 = v418;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B03B1198(v92);
    sub_1B0E44C88();
    sub_1B0E465B8();
    __break(1u);
  }

  else
  {
    switch(v358)
    {
      case 1uLL:
      case 0x20uLL:
        v307 = swift_allocObject();
        v306 = v307 + 16;
        v368 = v307 + 16;
        *(v307 + 16) = sub_1B0E46A48();

        v366 = v348;
        v367 = v307;
        v361 = MEMORY[0x1E69E9820];
        v362 = 1107296256;
        v363 = 0;
        v364 = sub_1B0A3E640;
        v365 = &block_descriptor_20;
        v305 = _Block_copy(&v361);

        [v350 tokenizeUsingTokenizationHandler_];
        _Block_release(v305);
        v308 = &v360;
        swift_beginAccess();
        v310 = *(v307 + 16);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        swift_endAccess();
        v359[3] = v310;
        v309 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3A50, &qword_1B0EA3918);
        sub_1B0A3E364();
        v311 = sub_1B0E45748();

        if (v311)
        {

          goto LABEL_167;
        }

        v302 = v359;
        swift_beginAccess();
        v303 = *(v307 + 16);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        swift_endAccess();
        v304 = static SearchRequest.Predicate.and(_:)(v303);

        v420 = v304;

        break;
      case 2uLL:
      case 3uLL:
      case 4uLL:
      case 5uLL:
      case 6uLL:
      case 7uLL:
      case 9uLL:
      case 0xCuLL:
      case 0xDuLL:
      case 0xEuLL:
      case 0xFuLL:
      case 0x10uLL:
      case 0x11uLL:
      case 0x12uLL:
      case 0x13uLL:
      case 0x14uLL:
      case 0x15uLL:
      case 0x16uLL:
      case 0x17uLL:
      case 0x1CuLL:
      case 0x1DuLL:
      case 0x1EuLL:
      case 0x1FuLL:
      case 0x21uLL:
      case 0x23uLL:
      case 0x24uLL:
      case 0x25uLL:
      case 0x26uLL:
      case 0x29uLL:
      case 0x2AuLL:
      case 0x2BuLL:
      case 0x2CuLL:
      case 0x2EuLL:
      case 0x2FuLL:
        goto LABEL_162;
      case 8uLL:
        v334 = 32;
        v335 = 7;
        v336 = swift_allocObject();
        v337 = swift_allocObject();
        v338 = [v350 expression];
        if (v338)
        {
          v333 = v338;
          v328 = v338;
          v329 = sub_1B0E44AD8();
          v330 = v5;
          MEMORY[0x1E69E5920](v328);
          v331 = v329;
          v332 = v330;
        }

        else
        {
          v331 = 0;
          v332 = 0;
        }

        v326 = v332;
        v327 = v331;
        if (v332)
        {
          v324 = v327;
          v325 = v326;
        }

        else
        {
          sub_1B0E465A8();
          __break(1u);
        }

        v6 = v336;
        v7 = v337;
        v8 = v325;
        *(v337 + 16) = v324;
        *(v7 + 24) = v8;
        *(v6 + 16) = v7 | 0xB000000000000000;
        v322 = swift_allocObject();
        v323 = [v350 expression];
        if (v323)
        {
          v321 = v323;
          v316 = v323;
          v317 = sub_1B0E44AD8();
          v318 = v9;
          MEMORY[0x1E69E5920](v316);
          v319 = v317;
          v320 = v318;
        }

        else
        {
          v319 = 0;
          v320 = 0;
        }

        v314 = v320;
        v315 = v319;
        if (v320)
        {
          v312 = v315;
          v313 = v314;
        }

        else
        {
          sub_1B0E465A8();
          __break(1u);
        }

        v10 = v336;
        v11 = v322;
        v12 = v313;
        *(v322 + 16) = v312;
        *(v11 + 24) = v12;
        *(v10 + 24) = v11 | 0x3000000000000000;
        v420 = (v10 | 0x8000000000000000);
        break;
      case 0xAuLL:
      case 0xBuLL:
        v278 = [v350 expression];
        if (v278)
        {
          v277 = v278;
        }

        else
        {
          sub_1B0E465A8();
          __break(1u);
        }

        v272 = v277;
        [v277 doubleValue];
        v273 = v18;
        MEMORY[0x1E69E5920](v272);
        sub_1B0E430A8();
        v19 = [v350 qualifier];
        v276 = &v373;
        v373 = v19;
        v274 = &v372;
        v372 = 6;
        v275 = type metadata accessor for MessageRuleQualifier(0);
        sub_1B0A3E224();
        if (sub_1B0E46AE8())
        {
          v271 = swift_allocObject();
          (*(v352 + 16))(v355, v357, v351);
          v20 = sub_1B0A3DC74(v355);
          v21 = v271;
          *(v271 + 16) = v20;
          *(v21 + 24) = v22;
          *(v21 + 32) = v23;
          v420 = (v21 | 0x9000000000000000);
        }

        else
        {
          v270 = swift_allocObject();
          (*(v352 + 16))(v355, v357, v351);
          v24 = sub_1B0A3DC74(v355);
          v25 = v270;
          *(v270 + 16) = v24;
          *(v25 + 24) = v26;
          *(v25 + 32) = v27;
          v420 = (v25 | 0x1000000000000000);
        }

        (*(v352 + 8))(v357, v351);
        break;
      case 0x18uLL:
        v289 = [v350 criteria];
        if (v289)
        {
          v288 = v289;
          v285 = v289;
          sub_1B08F5E90();
          v286 = sub_1B0E451B8();
          MEMORY[0x1E69E5920](v285);
          v287 = v286;
        }

        else
        {
          v287 = 0;
        }

        v284 = v287;
        if (v287)
        {
          v283 = v284;
        }

        else
        {
          sub_1B0E465A8();
          __break(1u);
        }

        v16 = v349;
        v371 = v283;
        v281 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3A40, &qword_1B0EA3910);
        sub_1B0A3E2DC();
        result = sub_1B0E44F58();
        v282 = result;
        if (v16)
        {
          __break(1u);
          return result;
        }

        v279 = v282;
        sub_1B039E440(&v371);
        v370 = v279;
        v369 = v279;
        v280 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3A50, &qword_1B0EA3918);
        sub_1B0A3E364();
        if (sub_1B0E45748())
        {

          goto LABEL_167;
        }

        if ([v350 allCriteriaMustBeSatisfied])
        {
          v420 = static SearchRequest.Predicate.and(_:)(v279);
        }

        else
        {
          v420 = static SearchRequest.Predicate.or(_:)(v279);
        }

        break;
      case 0x19uLL:
        v147 = [v350 criteria];
        if (v147)
        {
          v146 = v147;
          v143 = v147;
          sub_1B08F5E90();
          v144 = sub_1B0E451B8();
          MEMORY[0x1E69E5920](v143);
          v145 = v144;
        }

        else
        {
          v145 = 0;
        }

        v413 = v145;
        if (v145)
        {
          v138 = &v413;
          v140 = v413;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B039E440(v138);
          v410[2] = v140;
          v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3A40, &qword_1B0EA3910);
          sub_1B0A3CF60();
          sub_1B0E45728();
          v141 = v410[1];

          v142 = v141;
        }

        else
        {
          sub_1B039E440(&v413);
          v142 = 0;
        }

        v137 = v142;
        if (!v142)
        {
          goto LABEL_167;
        }

        v136 = v137;
        v134 = v137;
        v412 = v137;
        MEMORY[0x1E69E5928](v137);
        v65 = sub_1B0A3AA90(v134);
        v135 = v65;
        if ((v65 & 0xF000000000000007) != 0xF000000000000007)
        {
          v133 = v135;
          v132 = v135;
          v411 = v135;
          v131 = swift_allocObject();
          sub_1B09AE83C(v132);
          v66 = v131;
          v67 = v132;
          *(v131 + 16) = v132;
          v420 = (v66 | 0x7000000000000000);
          sub_1B09AEA14(v67);
          MEMORY[0x1E69E5920](v134);
          break;
        }

        MEMORY[0x1E69E5920](v134);
LABEL_167:
        MEMORY[0x1E69E5920](v350);
        return 0xF000000000000007;
      case 0x1AuLL:
        v269 = [v350 expression];
        if (v269)
        {
          v268 = v269;
          v263 = v269;
          v264 = sub_1B0E44AD8();
          v265 = v28;
          MEMORY[0x1E69E5920](v263);
          v266 = v264;
          v267 = v265;
        }

        else
        {
          v266 = 0;
          v267 = 0;
        }

        v260 = v267;
        v259 = v266;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v258 = @"MessageWasRepliedTo";
        MEMORY[0x1E69E5928](@"MessageWasRepliedTo");
        v261 = sub_1B0E44AD8();
        v262 = v29;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v407[0] = v259;
        v407[1] = v260;
        v403 = v261;
        v404 = v262;
        sub_1B070B280(v407, &v405);
        if (v404)
        {
          sub_1B070B280(&v403, v375);
          if (v406)
          {
            v30 = v339[22];
            v254 = v374;
            *v339 = v30;
            v255 = v375;
            v256 = MEMORY[0x1B2726DE0](v375[0], v375[1], v374[0], v374[1]);
            sub_1B03B1198(v254);
            sub_1B03B1198(v255);
            sub_1B03B1198(&v403);
            v257 = v256;
            goto LABEL_55;
          }

          sub_1B03B1198(v375);
          goto LABEL_57;
        }

        if (v406)
        {
LABEL_57:
          sub_1B06FF6F0(&v403);
          v257 = 0;
          goto LABEL_55;
        }

        sub_1B03B1198(&v403);
        v257 = 1;
LABEL_55:
        v253 = v257;

        MEMORY[0x1E69E5920](v258);
        if (v253)
        {

          v420 = 0xC000000000000000;

          goto LABEL_97;
        }

        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v250 = @"MessageIsDeleted";
        MEMORY[0x1E69E5928](@"MessageIsDeleted");
        v251 = sub_1B0E44AD8();
        v252 = v31;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v402[0] = v259;
        v402[1] = v260;
        v398 = v251;
        v399 = v252;
        sub_1B070B280(v402, &v400);
        if (v399)
        {
          sub_1B070B280(&v398, v377);
          if (v401)
          {
            v32 = v339[19];
            v246 = v376;
            v339[2] = v32;
            v247 = v377;
            v248 = MEMORY[0x1B2726DE0](v377[0], v377[1], v376[0], v376[1]);
            sub_1B03B1198(v246);
            sub_1B03B1198(v247);
            sub_1B03B1198(&v398);
            v249 = v248;
            goto LABEL_66;
          }

          sub_1B03B1198(v377);
          goto LABEL_68;
        }

        if (v401)
        {
LABEL_68:
          sub_1B06FF6F0(&v398);
          v249 = 0;
          goto LABEL_66;
        }

        sub_1B03B1198(&v398);
        v249 = 1;
LABEL_66:
        v245 = v249;

        MEMORY[0x1E69E5920](v250);
        if (v245)
        {

          v420 = 0xC000000000000008;

          goto LABEL_97;
        }

        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v242 = @"MessageIsFlagged";
        MEMORY[0x1E69E5928](@"MessageIsFlagged");
        v243 = sub_1B0E44AD8();
        v244 = v33;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v397[0] = v259;
        v397[1] = v260;
        v393 = v243;
        v394 = v244;
        sub_1B070B280(v397, &v395);
        if (v394)
        {
          sub_1B070B280(&v393, v379);
          if (v396)
          {
            v34 = v339[16];
            v238 = v378;
            v339[4] = v34;
            v239 = v379;
            v240 = MEMORY[0x1B2726DE0](v379[0], v379[1], v378[0], v378[1]);
            sub_1B03B1198(v238);
            sub_1B03B1198(v239);
            sub_1B03B1198(&v393);
            v241 = v240;
            goto LABEL_77;
          }

          sub_1B03B1198(v379);
          goto LABEL_79;
        }

        if (v396)
        {
LABEL_79:
          sub_1B06FF6F0(&v393);
          v241 = 0;
          goto LABEL_77;
        }

        sub_1B03B1198(&v393);
        v241 = 1;
LABEL_77:
        v237 = v241;

        MEMORY[0x1E69E5920](v242);
        if (v237)
        {

          v420 = 0xC000000000000010;

          goto LABEL_97;
        }

        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v234 = @"MessageIsRead";
        MEMORY[0x1E69E5928](@"MessageIsRead");
        v235 = sub_1B0E44AD8();
        v236 = v35;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v392[0] = v259;
        v392[1] = v260;
        v388 = v235;
        v389 = v236;
        sub_1B070B280(v392, &v390);
        if (v389)
        {
          sub_1B070B280(&v388, v381);
          if (v391)
          {
            v36 = v339[13];
            v230 = v380;
            v339[6] = v36;
            v231 = v381;
            v232 = MEMORY[0x1B2726DE0](v381[0], v381[1], v380[0], v380[1]);
            sub_1B03B1198(v230);
            sub_1B03B1198(v231);
            sub_1B03B1198(&v388);
            v233 = v232;
            goto LABEL_88;
          }

          sub_1B03B1198(v381);
          goto LABEL_90;
        }

        if (v391)
        {
LABEL_90:
          sub_1B06FF6F0(&v388);
          v233 = 0;
          goto LABEL_88;
        }

        sub_1B03B1198(&v388);
        v233 = 1;
LABEL_88:
        v229 = v233;

        MEMORY[0x1E69E5920](v234);
        if (v229)
        {

          v420 = 0xC000000000000018;
        }

        else
        {

          MEMORY[0x1E69E5928](v350);
          v226 = 29;
          v386 = sub_1B0E46A28();
          v387 = v37;
          v38 = sub_1B0E44838();
          v227 = v39;
          MEMORY[0x1B2728B30](v38);

          v40 = [v350 expression];
          v228 = v40;
          if (v40)
          {
            v225 = v228;
            v220 = v228;
            v221 = sub_1B0E44AD8();
            v222 = v41;
            MEMORY[0x1E69E5920](v220);
            v223 = v221;
            v224 = v222;
          }

          else
          {
            v223 = 0;
            v224 = 0;
          }

          v214 = v385;
          v385[0] = v223;
          v385[1] = v224;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3850, &qword_1B0E9B600);
          v42 = sub_1B0E44B88();
          v215 = v384;
          v384[0] = v42;
          v384[1] = v43;
          v217 = &v386;
          sub_1B0E46A08();
          sub_1B03B1198(v215);
          v44 = sub_1B0E44838();
          v216 = v45;
          MEMORY[0x1B2728B30](v44);

          v219 = v386;
          v218 = v387;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B03B1198(v217);
          sub_1B0E44C88();
          sub_1B0E465B8();
          __break(1u);
        }

LABEL_97:
        v46 = [v350 qualifier];
        v213 = &v383;
        v383 = v46;
        v211 = &v382;
        v382 = 7;
        v212 = type metadata accessor for MessageRuleQualifier(0);
        sub_1B0A3E224();
        if (sub_1B0E46AE8())
        {
          v210 = swift_allocObject();
          sub_1B0A3E2A4(&v420, (v210 + 16));
          v47 = v420;
          v420 = (v210 | 0x7000000000000000);
          sub_1B09AEA14(v47);
        }

        break;
      case 0x1BuLL:
        v209 = [v350 expression];
        if (v209)
        {
          v208 = v209;
        }

        else
        {
          sub_1B0E465A8();
          __break(1u);
        }

        v206 = v208;
        v207 = [v208 integerValue];
        MEMORY[0x1E69E5920](v206);
        if ((v207 & 0x8000000000000000) != 0)
        {
          sub_1B0E465A8();
          __break(1u);
        }

        sub_1B0391B00();
        v205 = v48;
        if (v49)
        {
          sub_1B0E465A8();
          __break(1u);
        }

        else
        {
          v204 = v205;
        }

        v202 = v204;
        v408 = v204;
        v203 = swift_allocObject();
        v50 = sub_1B0A3D9AC(v202);
        v51 = v203;
        *(v203 + 16) = v50;
        v420 = (v51 | 0x4000000000000000);
        break;
      case 0x22uLL:
        v129 = swift_allocObject();
        v130 = [v350 expression];
        if (v130)
        {
          v128 = v130;
          v123 = v130;
          v124 = sub_1B0E44AD8();
          v125 = v68;
          MEMORY[0x1E69E5920](v123);
          v126 = v124;
          v127 = v125;
        }

        else
        {
          v126 = 0;
          v127 = 0;
        }

        v121 = v127;
        v122 = v126;
        if (v127)
        {
          v119 = v122;
          v120 = v121;
        }

        else
        {
          sub_1B0E465A8();
          __break(1u);
        }

        v69 = v129;
        v70 = v120;
        *(v129 + 16) = v119;
        *(v69 + 24) = v70;
        v420 = (v69 | 0x5000000000000000);
        break;
      case 0x27uLL:
        v117 = swift_allocObject();
        v118 = [v350 expression];
        if (v118)
        {
          v116 = v118;
          v111 = v118;
          v112 = sub_1B0E44AD8();
          v113 = v71;
          MEMORY[0x1E69E5920](v111);
          v114 = v112;
          v115 = v113;
        }

        else
        {
          v114 = 0;
          v115 = 0;
        }

        v109 = v115;
        v110 = v114;
        if (v115)
        {
          v107 = v110;
          v108 = v109;
        }

        else
        {
          sub_1B0E465A8();
          __break(1u);
        }

        v72 = v117;
        v73 = v108;
        *(v117 + 16) = v107;
        *(v72 + 24) = v73;
        v420 = (v72 | 0xB000000000000000);
        break;
      case 0x28uLL:
        v300 = swift_allocObject();
        v301 = [v350 expression];
        if (v301)
        {
          v299 = v301;
          v294 = v301;
          v295 = sub_1B0E44AD8();
          v296 = v13;
          MEMORY[0x1E69E5920](v294);
          v297 = v295;
          v298 = v296;
        }

        else
        {
          v297 = 0;
          v298 = 0;
        }

        v292 = v298;
        v293 = v297;
        if (v298)
        {
          v290 = v293;
          v291 = v292;
        }

        else
        {
          sub_1B0E465A8();
          __break(1u);
        }

        v14 = v300;
        v15 = v291;
        *(v300 + 16) = v290;
        *(v14 + 24) = v15;
        v420 = (v14 | 0x3000000000000000);
        break;
      case 0x2DuLL:
      case 0x30uLL:
        goto LABEL_167;
      default:
        v201 = [v350 criterionIdentifier];
        if (v201)
        {
          v200 = v201;
          v195 = v201;
          v196 = sub_1B0E44AD8();
          v197 = v52;
          MEMORY[0x1E69E5920](v195);
          v198 = v196;
          v199 = v197;
        }

        else
        {
          v198 = 0;
          v199 = 0;
        }

        v193 = v199;
        v194 = v198;
        if (v199)
        {
          v191 = v194;
          v192 = v193;
        }

        else
        {
          sub_1B0E465A8();
          __break(1u);
        }

        v184 = v192;
        v183 = v191;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v186 = sub_1B0E44AC8();
        MEMORY[0x1E69E5928](v186);

        MEMORY[0x1E69E5920](v186);
        MEMORY[0x1E69E5928](v186);
        v185 = *MEMORY[0x1E699B178];
        MEMORY[0x1E69E5928](v185);
        v189 = v410;
        v410[0] = v185;
        v187 = &v409;
        v409 = v186;
        v188 = type metadata accessor for ECMessageHeaderKey(0);
        sub_1B0693188();
        v190 = sub_1B0E44A28();
        sub_1B06D4E94(v189);
        if (v190)
        {
          MEMORY[0x1E69E5920](v186);
          v181 = swift_allocObject();
          v182 = [v350 expression];
          if (v182)
          {
            v180 = v182;
            v175 = v182;
            v176 = sub_1B0E44AD8();
            v177 = v53;
            MEMORY[0x1E69E5920](v175);
            v178 = v176;
            v179 = v177;
          }

          else
          {
            v178 = 0;
            v179 = 0;
          }

          v173 = v179;
          v174 = v178;
          if (v179)
          {
            v171 = v174;
            v172 = v173;
          }

          else
          {
            sub_1B0E465A8();
            __break(1u);
          }

          v54 = v186;
          v55 = v181;
          v56 = v172;
          *(v181 + 16) = v171;
          *(v55 + 24) = v56;
          v420 = (v55 | 0xA000000000000000);
          MEMORY[0x1E69E5920](v54);
        }

        else
        {
          MEMORY[0x1E69E5920](v186);
          v169 = swift_allocObject();
          v170 = [v350 criterionIdentifier];
          if (v170)
          {
            v168 = v170;
            v163 = v170;
            v164 = sub_1B0E44AD8();
            v165 = v57;
            MEMORY[0x1E69E5920](v163);
            v166 = v164;
            v167 = v165;
          }

          else
          {
            v166 = 0;
            v167 = 0;
          }

          v161 = v167;
          v162 = v166;
          if (v167)
          {
            v159 = v162;
            v160 = v161;
          }

          else
          {
            sub_1B0E465A8();
            __break(1u);
          }

          v58 = v350;
          v59 = v169;
          v60 = v160;
          *(v169 + 16) = v159;
          *(v59 + 24) = v60;
          v158 = [v58 expression];
          if (v158)
          {
            v157 = v158;
            v152 = v158;
            v153 = sub_1B0E44AD8();
            v154 = v61;
            MEMORY[0x1E69E5920](v152);
            v155 = v153;
            v156 = v154;
          }

          else
          {
            v155 = 0;
            v156 = 0;
          }

          v150 = v156;
          v151 = v155;
          if (v156)
          {
            v148 = v151;
            v149 = v150;
          }

          else
          {
            sub_1B0E465A8();
            __break(1u);
          }

          v62 = v186;
          v63 = v169;
          v64 = v149;
          *(v169 + 32) = v148;
          *(v63 + 40) = v64;
          v420 = (v63 | 0x6000000000000000);
          MEMORY[0x1E69E5920](v62);
        }

        break;
    }
  }

  v86 = &v420;
  v87 = v420;
  sub_1B09AE83C(v420);
  MEMORY[0x1E69E5920](v350);
  sub_1B0A3CF34(v86);
  return v87;
}

unint64_t sub_1B0A3CF60()
{
  v2 = qword_1EB6E3A48;
  if (!qword_1EB6E3A48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E3A40, &qword_1B0EA3910);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E3A48);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0A3CFE8(unint64_t a1)
{
  switch(a1 >> 60)
  {
    case 1uLL:
    case 4uLL:
    case 9uLL:
    case 0xCuLL:
      sub_1B09AE83C(a1);
      v42 = a1;
      break;
    case 2uLL:
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v37 = swift_allocObject();
      v35 = objc_opt_self();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v36 = sub_1B0E44AC8();

      v38 = [v35 fullyOrPartiallyRedactedStringForString_];
      MEMORY[0x1E69E5920](v36);
      *(v37 + 16) = sub_1B0E44AD8();
      *(v37 + 24) = v1;
      MEMORY[0x1E69E5920](v38);

      v42 = v37 | 0x2000000000000000;
      break;
    case 3uLL:
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v33 = swift_allocObject();
      v31 = objc_opt_self();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v32 = sub_1B0E44AC8();

      v34 = [v31 fullyOrPartiallyRedactedStringForString_];
      MEMORY[0x1E69E5920](v32);
      *(v33 + 16) = sub_1B0E44AD8();
      *(v33 + 24) = v2;
      MEMORY[0x1E69E5920](v34);

      v42 = v33 | 0x3000000000000000;
      break;
    case 5uLL:
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v29 = swift_allocObject();
      v27 = objc_opt_self();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v28 = sub_1B0E44AC8();

      v30 = [v27 fullyOrPartiallyRedactedStringForString_];
      MEMORY[0x1E69E5920](v28);
      *(v29 + 16) = sub_1B0E44AD8();
      *(v29 + 24) = v3;
      MEMORY[0x1E69E5920](v30);

      v42 = v29 | 0x5000000000000000;
      break;
    case 6uLL:
      v21 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v26 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v24 = swift_allocObject();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      *(v24 + 16) = v21;
      *(v24 + 24) = v26;
      v22 = objc_opt_self();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v23 = sub_1B0E44AC8();

      v25 = [v22 fullyOrPartiallyRedactedStringForString_];
      MEMORY[0x1E69E5920](v23);
      *(v24 + 32) = sub_1B0E44AD8();
      *(v24 + 40) = v4;
      MEMORY[0x1E69E5920](v25);

      v42 = v24 | 0x6000000000000000;
      break;
    case 7uLL:
      v20 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      sub_1B09AE83C(v20);
      v19 = swift_allocObject();
      *(v19 + 16) = sub_1B0A3CFE8(v20);
      sub_1B09AEA14(v20);
      v42 = v19 | 0x7000000000000000;
      break;
    case 8uLL:
      v18 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v17 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      sub_1B09AE83C(v18);
      sub_1B09AE83C(v17);
      v16 = swift_allocObject();
      *(v16 + 16) = sub_1B0A3CFE8(v18);
      *(v16 + 24) = sub_1B0A3CFE8(v17);
      sub_1B09AEA14(v17);
      sub_1B09AEA14(v18);
      v42 = v16 | 0x8000000000000000;
      break;
    case 0xAuLL:
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v14 = swift_allocObject();
      v12 = objc_opt_self();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v13 = sub_1B0E44AC8();

      v15 = [v12 fullyOrPartiallyRedactedStringForString_];
      MEMORY[0x1E69E5920](v13);
      *(v14 + 16) = sub_1B0E44AD8();
      *(v14 + 24) = v5;
      MEMORY[0x1E69E5920](v15);

      v42 = v14 | 0xA000000000000000;
      break;
    case 0xBuLL:
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v10 = swift_allocObject();
      v8 = objc_opt_self();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v9 = sub_1B0E44AC8();

      v11 = [v8 fullyOrPartiallyRedactedStringForString_];
      MEMORY[0x1E69E5920](v9);
      *(v10 + 16) = sub_1B0E44AD8();
      *(v10 + 24) = v6;
      MEMORY[0x1E69E5920](v11);

      v42 = v10 | 0xB000000000000000;
      break;
    default:
      v41 = *(a1 + 16);
      v40 = *(a1 + 24);
      sub_1B09AE83C(v41);
      sub_1B09AE83C(v40);
      v39 = swift_allocObject();
      *(v39 + 16) = sub_1B0A3CFE8(v41);
      *(v39 + 24) = sub_1B0A3CFE8(v40);
      sub_1B09AEA14(v40);
      sub_1B09AEA14(v41);
      v42 = v39;
      break;
  }

  return v42;
}

uint64_t sub_1B0A3D9AC(uint64_t a1)
{
  v6[2] = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v7 = 1;
      return 1;
    }

    else if (a1 == 2)
    {
      v7 = 2;
      return 2;
    }

    else if (a1 == 3)
    {
      v7 = 3;
      return 3;
    }

    else if (a1 == 4)
    {
      v7 = 4;
      return 4;
    }

    else if (a1 == 5)
    {
      v7 = 5;
      return 5;
    }

    else if (a1 == 6)
    {
      v7 = 6;
      return 6;
    }

    else
    {
      if (a1 == 7)
      {
        sub_1B0E44838();
        sub_1B0E465B8();
        __break(1u);
      }

      v6[0] = sub_1B0E46A28();
      v6[1] = v1;
      v2 = sub_1B0E44838();
      MEMORY[0x1B2728B30](v2);

      type metadata accessor for ECMessageFlagColor(0);
      sub_1B0E469E8();
      v3 = sub_1B0E44838();
      MEMORY[0x1B2728B30](v3);

      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B03B1198(v6);
      sub_1B0E44C88();
      sub_1B0E465B8();
      __break(1u);
    }
  }

  else
  {
    v7 = 0;
    return 0;
  }

  return v5;
}

Swift::Int sub_1B0A3DC74(char *a1)
{
  v33 = a1;
  v25 = "Fatal error";
  v26 = "Unexpectedly found nil while unwrapping an Optional value";
  v27 = "Message/SearchRequestPredicate+FromCriterion.swift";
  memset(&v44, 0, sizeof(v44));
  v43 = 0;
  v42 = 0;
  v34 = 0;
  v28 = sub_1B0E43108();
  v29 = *(v28 - 8);
  v30 = v28 - 8;
  v31 = (v29[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v32 = &v9 - v31;
  v35 = sub_1B0E431A8();
  v36 = *(v35 - 8);
  v37 = v35 - 8;
  v38 = (*(v36 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v34);
  v39 = &v9 - v38;
  v43 = v1;
  sub_1B0A3E6C8();
  v40 = *MEMORY[0x1E695D850];
  MEMORY[0x1E69E5928](v40);
  v41 = sub_1B0A3E174(v40);
  if (v41)
  {
    v24 = v41;
  }

  else
  {
    sub_1B0E465A8();
    __break(1u);
  }

  v20 = v24;
  v42 = v24;
  v9 = [objc_opt_self() ef_posixLocale];
  sub_1B0E43188();
  v2 = sub_1B0E43178();
  v3 = v32;
  v10 = v2;
  (*(v36 + 8))(v39, v35);
  MEMORY[0x1E69E5920](v9);
  [v20 setLocale_];
  MEMORY[0x1E69E5920](v10);
  v14 = v29[2];
  v13 = v29 + 2;
  v14(v3, v33, v28);
  v4 = sub_1B0E43068();
  v5 = v32;
  v11 = v4;
  v22 = v29[1];
  v21 = v29 + 1;
  v22(v32, v28);
  v15 = 0x1FB92C000uLL;
  v17 = [v20 0x1FB92C1D2];
  MEMORY[0x1E69E5920](v11);
  v14(v5, v33, v28);
  v6 = sub_1B0E43068();
  v7 = v32;
  v12 = v6;
  v22(v32, v28);
  v18 = [v20 (v15 + 466)];
  MEMORY[0x1E69E5920](v12);
  v14(v7, v33, v28);
  v16 = sub_1B0E43068();
  v22(v32, v28);
  v19 = [v20 (v15 + 466)];
  MEMORY[0x1E69E5920](v16);
  v23 = SearchRequest.Predicate.Day.init(year:month:day:)(v17, v18, v19);
  v44 = v23;
  MEMORY[0x1E69E5920](v20);
  v22(v33, v28);
  return v23.year;
}

id sub_1B0A3E174(uint64_t a1)
{
  v3 = [swift_getObjCClassFromMetadata() calendarWithIdentifier_];
  MEMORY[0x1E69E5920](a1);
  return v3;
}

uint64_t sub_1B0A3E1D0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x1E69E5928](*a1);
  result = sub_1B0A3AA90(v3);
  *a2 = result;
  return result;
}

unint64_t sub_1B0A3E224()
{
  v2 = qword_1EB6DAA20;
  if (!qword_1EB6DAA20)
  {
    type metadata accessor for MessageRuleQualifier(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAA20);
    return WitnessTable;
  }

  return v2;
}

unint64_t *sub_1B0A3E2A4(unint64_t *a1, unint64_t *a2)
{
  v3 = *a1;
  sub_1B09AE83C(*a1);
  result = a2;
  *a2 = v3;
  return result;
}

unint64_t sub_1B0A3E2DC()
{
  v2 = qword_1EB6DAFA8;
  if (!qword_1EB6DAFA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E3A40, &qword_1B0EA3910);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAFA8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0A3E364()
{
  v2 = qword_1EB6DB3C0;
  if (!qword_1EB6DB3C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E3A50, &qword_1B0EA3918);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB3C0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B0A3E3EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B0E46A48();
  v13 = v3;
  v6 = swift_allocObject();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *v13 = v6 | 0x5000000000000000;
  v7 = swift_allocObject();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v13[1] = v7 | 0xA000000000000000;
  v8 = swift_allocObject();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v13[2] = v8 | 0xB000000000000000;
  v9 = swift_allocObject();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v13[3] = v9 | 0x3000000000000000;
  v12 = swift_allocObject();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  v13[4] = v12 | 0x2000000000000000;
  sub_1B0394964();
  static SearchRequest.Predicate.or(_:)(v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3A50, &qword_1B0EA3918);
  sub_1B0E452E8();
  swift_endAccess();
}

uint64_t sub_1B0A3E640(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);

  MEMORY[0x1E69E5928](a2);
  v2 = sub_1B0E44AD8();
  v4(v2);

  MEMORY[0x1E69E5920](a2);
}

unint64_t sub_1B0A3E6C8()
{
  v2 = qword_1EB6E3A58;
  if (!qword_1EB6E3A58)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB6E3A58);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1B0A3E72C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v18 = a4;
  v30 = a1;
  v36 = a2;
  v35 = a3;
  v19 = sub_1B0A3FDF0;
  v43 = 0;
  v42 = 0;
  v40 = 0;
  v41 = 0;
  v39 = 0;
  v37 = 0;
  v38 = 0;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3A60, &qword_1B0EA3920);
  v21 = (*(*(v20 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v20);
  v22 = v14 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3A68, &unk_1B0EA3928);
  v24 = (*(*(v23 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v23);
  v25 = v14 - v24;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v26 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v31 = v14 - v26;
  VMa = _s9UIDsQueryVMa(0);
  v27 = (*(*(VMa - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](VMa);
  v33 = v14 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v29 = (*(*(v28 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v30);
  v32 = v14 - v29;
  v43 = v14 - v29;
  v42 = v7;
  v40 = v8;
  v41 = v9;
  v39 = v4;
  v34 = *(v4 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_serverMessagePersistence);
  MEMORY[0x1E69E5928](v34);
  sub_1B03D08AC(v30, v31);
  sub_1B0A3ECF4(v31, v33);
  sub_1B0A3F6A8(v33, v32);
  sub_1B0A3FD00(v33);
  MEMORY[0x1E69E5920](v34);
  sub_1B070E90C(v36);
  if (v36)
  {
    v16 = v36;
    v17 = v35;
    v15 = v35;
    v14[0] = v36;
    v37 = v36;
    v38 = v35;
    v10 = sub_1B0721160();
    MEMORY[0x1B27270C0](v28, v10);

    v11 = swift_allocObject();
    v12 = v15;
    v14[1] = v11;
    *(v11 + 16) = v14[0];
    *(v11 + 24) = v12;
    sub_1B0A3FDFC();
    sub_1B0E46738();

    v14[2] = sub_1B074B97C();
    sub_1B0A3FE84();
    sub_1B0E46098();
  }

  else
  {
    sub_1B03D08AC(v32, v18);
  }

  return sub_1B03D09B8(v32);
}

uint64_t _s9UIDsQueryVMa(uint64_t a1)
{
  v2 = qword_1EB6DBAD0;
  if (!qword_1EB6DBAD0)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_1B0A3EB98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11 = a2;
  v9 = a1;
  v15 = 0;
  v14 = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v7 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v10 = &v6 - v7;
  v8 = (*(*(_s9UIDsQueryVMa(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v6 - v8;
  v15 = v4;
  v14 = v2;
  v13 = *(v2 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_serverMessagePersistence);
  MEMORY[0x1E69E5928](v13);
  sub_1B03D08AC(v9, v10);
  sub_1B0A3ECF4(v10, v12);
  sub_1B0A3F6A8(v12, v11);
  sub_1B0A3FD00(v12);
  return MEMORY[0x1E69E5920](v13);
}

uint64_t sub_1B0A3ECF4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v59 = v99;
  v45 = a2;
  v71 = a1;
  v113 = 0;
  v112 = 0;
  v111 = 0;
  v110 = 0;
  v109 = 0;
  v105 = 0;
  v99[1] = 0;
  v99[0] = 0;
  v97 = 0;
  v94 = 0;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E24D8, &qword_1B0E9CCD8);
  v47 = (*(*(v46 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v23 - v47;
  v113 = &v23 - v47;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2780, &unk_1B0E9C5E0);
  v49 = (*(*(v74 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v74);
  v76 = &v23 - v49;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3A80, &qword_1B0EA3938);
  v50 = (*(*(v78 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v78);
  v75 = &v23 - v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3A88, &unk_1B0EA3940);
  v52 = (*(*(v51 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v51);
  v77 = &v23 - v52;
  v59[16] = &v23 - v52;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v53 = (*(*(v72 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v72);
  v54 = &v23 - v53;
  v55 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v23 - v53);
  v56 = &v23 - v55;
  v57 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v23 - v55);
  v4 = &v23 - v57;
  v73 = &v23 - v57;
  v58 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v68 = &v23 - v58;
  v59[15] = &v23 - v58;
  v66 = 0;
  VMa = _s9UIDsQueryVMa(0);
  v62 = *(*(VMa - 8) + 64);
  v61 = (v62 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v71);
  v63 = &v23 - v61;
  v64 = (v62 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v65 = &v23 - v64;
  *(v8 + 112) = &v23 - v64;
  *(v8 + 104) = v9;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2640, &qword_1B0E9B010);
  v69 = sub_1B0E46A48();
  v70 = sub_1B041C1E8();
  MessageIdentifierSet.init(arrayLiteral:)(v69, &type metadata for UID, v70, v10);
  sub_1B03D08AC(v71, v4);
  MessageIdentifierSet.ranges.getter(v76);
  sub_1B03D09B8(v73);
  v11 = sub_1B0A3FF0C();
  MEMORY[0x1B2727080](v74, v11);
  sub_1B07D772C(v76);
  sub_1B0E465F8();
  while (1)
  {
    sub_1B0E46608();
    v43 = v59[10];
    v44 = v59[11];
    if (v108)
    {
      break;
    }

    v41 = v43;
    v42 = v44;
    v15 = v41;
    v16 = v42;
    v17 = HIDWORD(v42);
    v36 = HIDWORD(v42);
    v37 = v42;
    v38 = v41;
    v59[1] = v41;
    v99[0] = __PAIR64__(v17, v16);
    if (v15 > 0)
    {
      sub_1B03D08AC(v71, v73);
      MessageIdentifierSet.ranges.getter(v76);
      result = sub_1B03D09B8(v73);
      v35 = v38 - 1;
      if (__OFSUB__(v38, 1))
      {
        __break(1u);
        return result;
      }

      MessageIdentifierSet.RangeView.subscript.getter(v74, &v98);
      v31 = v98;
      v97 = v98;
      sub_1B07D772C(v76);
      v96 = v31;
      MessageIdentifierRange.upperBound.getter(v67, &v95);
      v32 = v95;
      v94 = v95;
      v34 = &v93;
      v93 = v95;
      v33 = &type metadata for UID;
      static MessageIdentifier.max.getter(&type metadata for UID, v70);
      v91[1] = v91[2];
      MessageIdentifier.advanced(by:)(-4, v33, v70, &v92);
      v91[0] = v92;
      if (static MessageIdentifier.< infix(_:_:)(v34, v91, v33, v70))
      {
        v30 = v90;
        v90[0] = v37;
        v90[1] = v36;
        v88[1] = v32;
        MessageIdentifier.advanced(by:)(2, &type metadata for UID, v70, &v89);
        v88[0] = v89;
        if (MessageIdentifierRange.contains(_:)(v88, v67, v20))
        {
          v79[1] = v32;
          MessageIdentifier.advanced(by:)(1, &type metadata for UID, v70, &v80);
          v79[0] = v80;
          MessageIdentifierSet.insert(_:)(v81, v79, v72);
        }

        else
        {
          v29 = v87;
          v87[0] = v37;
          v87[1] = v36;
          *&v85[8] = v32;
          MessageIdentifier.advanced(by:)(3, &type metadata for UID, v70, &v86);
          *&v85[4] = v86;
          if (MessageIdentifierRange.contains(_:)(&v85[4], v67, v21))
          {
            *&v83[8] = v32;
            v28 = &type metadata for UID;
            MessageIdentifier.advanced(by:)(1, &type metadata for UID, v70, &v84);
            *&v83[4] = v84;
            MessageIdentifierSet.insert(_:)(v85, &v83[4], v72);
            *&v81[8] = v32;
            MessageIdentifier.advanced(by:)(2, v28, v70, &v82);
            *&v81[4] = v82;
            MessageIdentifierSet.insert(_:)(v83, &v81[4], v72);
          }
        }
      }
    }
  }

  v12 = v56;
  sub_1B07D772C(v77);
  v39 = 0;
  v40 = sub_1B0E46A48();
  v13 = sub_1B0E46A48();
  MessageIdentifierSet.init(arrayLiteral:)(v13, &type metadata for UID, v70, v14);
  sub_1B03D08AC(v68, v12);
  sub_1B0A40AB8(v40, v73, v12, v63);
  sub_1B0A40B20(v63, v65);
  sub_1B03D08AC(v71, v12);
  sub_1B03D08AC(v68, v54);
  MessageIdentifierSet.union(_:)(v54, v73);
  sub_1B03D09B8(v54);
  sub_1B03D09B8(v56);
  MessageIdentifierSet.ranges.getter(v76);
  sub_1B03D09B8(v73);
  sub_1B07D76A4();
  sub_1B0E45798();
  while (1)
  {
    sub_1B0E46518();
    v27 = v106;
    if (v107)
    {
      break;
    }

    v26 = v27;
    v24 = HIDWORD(v27);
    v25 = v27;
    v105 = v27;
    v104 = v27;
    if (MessageIdentifierRange.count.getter(v67, v22) <= 1)
    {
      v102[1] = v25;
      v102[2] = v24;
      MessageIdentifierRange.lowerBound.getter(v67, v102);
      v101 = v102[0];
      MessageIdentifierSet.insert(_:)(v103, &v101, v72);
    }

    else
    {
      v23 = v100;
      v100[0] = v25;
      v100[1] = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E24F8, &qword_1B0E9CD00);
      sub_1B0E452E8();
    }
  }

  sub_1B07D772C(v48);
  sub_1B03D09B8(v68);
  sub_1B0A40C04(v65, v45);
  sub_1B03D09B8(v71);
  return sub_1B0A3FD00(v65);
}

uint64_t sub_1B0A3F6A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v41 = a1;
  v46 = sub_1B0A40D6C;
  v36 = sub_1B074E9DC;
  v69 = 0;
  v68 = 0;
  v67 = 0;
  v66 = 0;
  v64 = 0;
  v65 = 0;
  v38 = 0;
  v49 = sub_1B0E43308();
  v47 = *(v49 - 8);
  v48 = v49 - 8;
  v37 = (*(v47 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v2 = v14 - v37;
  v50 = v14 - v37;
  v39 = (*(*(_s9UIDsQueryVMa(v3) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v38);
  v43 = (v14 - v39);
  V7EncodedVMa = _s9UIDsQueryV7EncodedVMa(v4);
  v42 = (*(*(V7EncodedVMa - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v41);
  v53 = v14 - v42;
  v69 = v14 - v42;
  v68 = v5;
  v67 = v6;
  sub_1B0A40C04(v5, v7);
  sub_1B0A3FF94(v43, v53);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v45 = swift_allocBox();
  v44 = v8;
  v66 = v8;
  sub_1B041C1E8();
  MessageIdentifierSet.init()();

  v64 = v46;
  v65 = v45;
  (*(v47 + 16))(v2, v53, v49);
  v51 = sub_1B0E43258();
  (*(v47 + 8))(v50, v49);
  v9 = (v53 + *(V7EncodedVMa + 20));
  v54 = *v9;
  v55 = v9[1];
  sub_1B070E18C(v54, v55);
  if ((v55 & 0xF000000000000000) == 0xF000000000000000)
  {
    v32 = 0;
  }

  else
  {
    v33 = v54;
    v34 = v55;
    v29 = v55;
    v30 = v54;
    v31 = sub_1B0E42F18();
    sub_1B0391D50(v30, v29);
    v32 = v31;
  }

  v26 = v32;
  v10 = (v53 + *(V7EncodedVMa + 24));
  v27 = *v10;
  v28 = v10[1];
  sub_1B070E18C(v27, v28);
  if ((v28 & 0xF000000000000000) == 0xF000000000000000)
  {
    v23 = 0;
  }

  else
  {
    v24 = v27;
    v25 = v28;
    v20 = v28;
    v21 = v27;
    v22 = sub_1B0E42F18();
    sub_1B0391D50(v21, v20);
    v23 = v22;
  }

  v16 = v23;

  v11 = swift_allocObject();
  v12 = v45;
  v15 = v11;
  *(v11 + 16) = v46;
  *(v11 + 24) = v12;

  v62 = v36;
  v63 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v58 = 1107296256;
  v59 = 0;
  v60 = sub_1B0740D3C;
  v61 = &block_descriptor_21;
  v18 = v15;
  v17 = _Block_copy(&aBlock);

  [v40 enumerateUIDsInIndexSet:v51 includingJSON:v26 excludingJSON:v16 withBlock:v17];
  _Block_release(v17);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  result = isEscapingClosureAtFileLocation;
  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    MEMORY[0x1E69E5920](v16);
    MEMORY[0x1E69E5920](v26);
    MEMORY[0x1E69E5920](v51);
    v14[1] = v56;
    swift_beginAccess();
    sub_1B03D08AC(v44, v35);
    swift_endAccess();

    sub_1B0A40D74(v53);
    return sub_1B04197E4(v46, v45);
  }

  return result;
}

uint64_t sub_1B0A3FD00(uint64_t a1)
{

  VMa = _s9UIDsQueryVMa(0);
  v2 = *(VMa + 20);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  v5 = *(*(v4 - 8) + 8);
  v5(a1 + v2);
  (v5)(a1 + *(VMa + 24), v4);
  return a1;
}

unint64_t sub_1B0A3FDFC()
{
  v2 = qword_1EB6E3A70;
  if (!qword_1EB6E3A70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E3A60, &qword_1B0EA3920);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E3A70);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0A3FE84()
{
  v2 = qword_1EB6E3A78;
  if (!qword_1EB6E3A78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E3A68, &unk_1B0EA3928);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E3A78);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0A3FF0C()
{
  v2 = qword_1EB6DE4B8[0];
  if (!qword_1EB6DE4B8[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E2780, &unk_1B0E9C5E0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, qword_1EB6DE4B8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B0A3FF94@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v53 = a1;
  v60 = 0;
  v59 = 0;
  v58 = 0;
  v36 = 0;
  v52 = 0;
  V7EncodedV13UIDSetAsArrayVMa = _s9UIDsQueryV7EncodedV13UIDSetAsArrayVMa(0);
  v38 = (*(*(V7EncodedV13UIDSetAsArrayVMa - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](V7EncodedV13UIDSetAsArrayVMa);
  v39 = v14 - v38;
  v40 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v14 - v38);
  v41 = v14 - v40;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v42 = (*(*(v55 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v52);
  v56 = v14 - v42;
  v43 = (*(*(sub_1B0E43308() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v52);
  v51 = v14 - v43;
  v45 = *(*(_s9UIDsQueryV7EncodedVMa(v3) - 8) + 64);
  v44 = (v45 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v52);
  v46 = v14 - v44;
  v47 = (v45 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v48 = v14 - v47;
  v60 = v14 - v47;
  v59 = v5;
  sub_1B0E42928();
  v6 = sub_1B0E42908();
  v7 = v56;
  v49 = v6;
  v58 = v6;
  v50 = *v53;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0A4126C(v50, v51);
  VMa = _s9UIDsQueryVMa(v52);
  sub_1B03D08AC(v53 + *(VMa + 20), v7);
  v57 = MessageIdentifierSet.isEmpty.getter();
  sub_1B03D09B8(v56);
  if (v57)
  {
    v32 = 0;
    v33 = 0xF000000000000000;
    v34 = v36;
  }

  else
  {
    v8 = v36;
    sub_1B03D08AC(v53 + *(VMa + 20), v56);
    sub_1B0A416E8(v56, v41);
    sub_1B0A41704();
    v9 = sub_1B0E428F8();
    v28 = v8;
    v29 = v9;
    v30 = v10;
    v31 = v8;
    if (v8)
    {
      v14[1] = v31;
      sub_1B03D09B8(v41);
      swift_unexpectedError();
      __break(1u);
      goto LABEL_11;
    }

    v27 = v30;
    v26 = v29;
    sub_1B03D09B8(v41);
    v32 = v26;
    v33 = v27;
    v34 = v28;
  }

  v22 = v34;
  v23 = v33;
  v24 = v32;
  sub_1B03D08AC(v53 + *(VMa + 24), v56);
  v25 = MessageIdentifierSet.isEmpty.getter();
  sub_1B03D09B8(v56);
  if (v25)
  {
    v20 = 0;
    v21 = 0xF000000000000000;
LABEL_9:
    sub_1B0A411BC(v51, v24, v23, v20, v21, v46);
    sub_1B0A41784(v46, v48);

    sub_1B0A4181C(v48, v35);
    sub_1B0A3FD00(v53);
    return sub_1B0A40D74(v48);
  }

  v11 = v22;
  sub_1B03D08AC(v53 + *(VMa + 24), v56);
  sub_1B0A416E8(v56, v39);
  sub_1B0A41704();
  v17 = sub_1B0E428F8();
  v18 = v12;
  v19 = v11;
  if (!v11)
  {
    v16 = v18;
    v15 = v17;
    sub_1B03D09B8(v39);
    v20 = v15;
    v21 = v16;
    goto LABEL_9;
  }

LABEL_11:
  v14[0] = v19;
  sub_1B03D09B8(v39);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

void *sub_1B0A4055C(int a1, uint64_t a2)
{
  v9 = 0;
  v14 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v13 = swift_projectBox();
  v10 = a1;
  v6 = sub_1B041C1E8();
  v2 = sub_1B07467B8();
  result = MessageIdentifier.init<A>(exactly:)(&v10, &type metadata for UID, MEMORY[0x1E69E7668], v6, v2, &v11);
  if ((v12 & 1) == 0)
  {
    v9 = v11;
    v7 = v11;
    swift_beginAccess();
    MessageIdentifierSet.insert(_:)(v8, &v7, v4);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1B0A406B8(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v7 = &v5 - v6;
  sub_1B03D08AC(v2, &v5 - v6);
  VMa = _s9UIDsQueryVMa(0);
  sub_1B074F0FC(v7, v1 + *(VMa + 20));
  return sub_1B03D09B8(v8);
}

uint64_t sub_1B0A407A0(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v7 = &v5 - v6;
  sub_1B03D08AC(v2, &v5 - v6);
  VMa = _s9UIDsQueryVMa(0);
  sub_1B074F0FC(v7, v1 + *(VMa + 24));
  return sub_1B03D09B8(v8);
}

BOOL sub_1B0A40850(uint64_t a1, uint64_t *a2)
{
  v12 = a1;
  v17 = a2;
  v23 = 0;
  v22 = 0;
  v13 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v7 - v13;
  v15 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v16 = &v7 - v15;
  v23 = v4;
  v22 = v5;
  v20 = *v4;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v19 = *v17;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2640, &qword_1B0E9B010);
  sub_1B0A42234();
  v21 = sub_1B0E45368();

  if (v21)
  {
    VMa = _s9UIDsQueryVMa(0);
    sub_1B03D08AC(v12 + *(VMa + 20), v16);
    sub_1B03D08AC(v17 + *(VMa + 20), v14);
    v10 = sub_1B041C1E8();
    v11 = static MessageIdentifierSet.__derived_struct_equals(_:_:)(v16, v14);
    sub_1B03D09B8(v14);
    sub_1B03D09B8(v16);
    if (v11)
    {
      sub_1B03D08AC(v12 + *(VMa + 24), v16);
      sub_1B03D08AC(v17 + *(VMa + 24), v14);
      v8 = static MessageIdentifierSet.__derived_struct_equals(_:_:)(v16, v14);
      sub_1B03D09B8(v14);
      sub_1B03D09B8(v16);
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

uint64_t sub_1B0A40AB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  VMa = _s9UIDsQueryVMa(0);
  sub_1B074BA2C(a2, a4 + *(VMa + 20));
  return sub_1B074BA2C(a3, a4 + *(VMa + 24));
}

char *sub_1B0A40B20(char *a1, char *a2)
{
  *a2 = *a1;
  VMa = _s9UIDsQueryVMa(0);
  v3 = *(VMa + 20);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  v6 = *(*(v5 - 8) + 32);
  v6(&a2[v3], &a1[v3]);
  (v6)(&a2[*(VMa + 24)], &a1[*(VMa + 24)], v5);
  return a2;
}

char *sub_1B0A40C04(char *a1, char *a2)
{
  v3 = *a1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *a2 = v3;
  VMa = _s9UIDsQueryVMa(0);
  v4 = *(VMa + 20);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  v7 = *(*(v6 - 8) + 16);
  v7(&a2[v4], &a1[v4]);
  (v7)(&a2[*(VMa + 24)], &a1[*(VMa + 24)], v6);
  return a2;
}

uint64_t _s9UIDsQueryV7EncodedVMa(uint64_t a1)
{
  v2 = qword_1EB6DBAE0;
  if (!qword_1EB6DBAE0)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_1B0A40D74(uint64_t a1)
{
  v1 = sub_1B0E43308();
  (*(*(v1 - 8) + 8))(a1);
  V7EncodedVMa = _s9UIDsQueryV7EncodedVMa(0);
  v6 = *(V7EncodedVMa + 20);
  if ((*(a1 + v6 + 8) & 0xF000000000000000) != 0xF000000000000000)
  {
    sub_1B0391D50(*(a1 + v6), *(a1 + v6 + 8));
  }

  v3 = a1 + *(V7EncodedVMa + 24);
  if ((*(v3 + 8) & 0xF000000000000000) != 0xF000000000000000)
  {
    sub_1B0391D50(*v3, *(v3 + 8));
  }

  return a1;
}

uint64_t _s9UIDsQueryV7EncodedV13UIDSetAsArrayVMa(uint64_t a1)
{
  v2 = qword_1EB6DBAF0;
  if (!qword_1EB6DBAF0)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_1B0A40F58(uint64_t a1)
{
  v10 = a1;
  v9 = sub_1B0E43308();
  v7 = *(v9 - 8);
  v8 = v9 - 8;
  v4 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x1EEE9AC00](v9);
  v5 = &v3 - v4;
  (*(v7 + 16))(v1);
  (*(v7 + 40))(v6, v5, v9);
  return (*(v7 + 8))(v10, v9);
}

uint64_t sub_1B0A4106C()
{
  v1 = v0 + *(_s9UIDsQueryV7EncodedVMa(0) + 20);
  v3 = *v1;
  sub_1B070E18C(*v1, *(v1 + 8));
  return v3;
}

uint64_t sub_1B0A410B4(uint64_t a1, unint64_t a2)
{
  sub_1B070E18C(a1, a2);
  v3 = (v2 + *(_s9UIDsQueryV7EncodedVMa(0) + 20));
  v4 = *v3;
  v5 = v3[1];
  *v3 = a1;
  v3[1] = a2;
  sub_1B070E144(v4, v5);
  return sub_1B070E144(a1, a2);
}

uint64_t sub_1B0A41114()
{
  v1 = v0 + *(_s9UIDsQueryV7EncodedVMa(0) + 24);
  v3 = *v1;
  sub_1B070E18C(*v1, *(v1 + 8));
  return v3;
}

uint64_t sub_1B0A4115C(uint64_t a1, unint64_t a2)
{
  sub_1B070E18C(a1, a2);
  v3 = (v2 + *(_s9UIDsQueryV7EncodedVMa(0) + 24));
  v4 = *v3;
  v5 = v3[1];
  *v3 = a1;
  v3[1] = a2;
  sub_1B070E144(v4, v5);
  return sub_1B070E144(a1, a2);
}

uint64_t sub_1B0A411BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = sub_1B0E43308();
  (*(*(v6 - 8) + 32))(a6, a1);
  result = _s9UIDsQueryV7EncodedVMa(0);
  v8 = (a6 + *(result + 20));
  *v8 = a2;
  v8[1] = a3;
  v9 = (a6 + *(result + 24));
  *v9 = a4;
  v9[1] = a5;
  return result;
}

uint64_t sub_1B0A4126C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v29 = a1;
  v18 = "Fatal error";
  v19 = "Range requires lowerBound <= upperBound";
  v20 = "Swift/ClosedRange.swift";
  v47 = 0;
  v46 = 0;
  v30 = v45;
  v45[0] = 0;
  v45[1] = 0;
  v41 = 0;
  v28 = sub_1B0E43308();
  v24 = *(v28 - 8);
  v25 = v28 - 8;
  v22 = *(v24 + 64);
  v21 = (v22 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v29);
  v27 = v5 - v21;
  v23 = v21;
  MEMORY[0x1EEE9AC00](v2);
  v26 = v5 - v23;
  v47 = v5 - v23;
  v46 = v3;
  sub_1B0E432F8();
  (*(v24 + 32))(v26, v27, v28);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v44 = v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E24F8, &qword_1B0E9CD00);
  sub_1B0A419A0();
  sub_1B0E45798();
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3A90, &qword_1B0EA3950);
    sub_1B0E46518();
    v16 = v42;
    if (v43)
    {
      break;
    }

    v15 = v16;
    v7 = v16;
    v41 = v16;
    v39 = v16;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2640, &qword_1B0E9B010);
    MessageIdentifierRange.lowerBound.getter(v8, &v38);
    v6 = &v37;
    v37 = v38;
    v11 = sub_1B03948EC();
    v12 = sub_1B041C1E8();
    v9 = MEMORY[0x1E69E6530];
    v10 = &type metadata for UID;
    BinaryInteger.init<A>(_:)(v6, MEMORY[0x1E69E6530], &type metadata for UID, v11, v12);
    v13 = v40;
    v35 = v7;
    MessageIdentifierRange.upperBound.getter(v8, &v34);
    v33 = v34;
    BinaryInteger.init<A>(_:)(&v33, v9, v10, v11, v12);
    v14 = v36;
    if (v36 < v13)
    {
      sub_1B0E465A8();
      __break(1u);
    }

    v5[1] = v32;
    v32[0] = v13;
    v32[1] = v14;
    v5[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E24B0, &qword_1B0E9CC68);
    sub_1B08C3104();
    sub_1B0E432A8();
  }

  sub_1B039E440(v45);
  (*(v24 + 16))(v17, v26, v28);

  return (*(v24 + 8))(v26, v28);
}