uint64_t sub_1BD86E6C8()
{
  v2 = *(*v1 + 360);
  v3 = *(*v1 + 32);
  *(*v1 + 376) = v0;

  sub_1BD0DE53C(v3, &qword_1EBD39290, &unk_1BE0D9740);
  v2, v4, v5, v6, v7, v8, v9, v10;
  if (v0)
  {
    v11 = sub_1BD86F340;
  }

  else
  {
    v11 = sub_1BD86E82C;
  }

  return MEMORY[0x1EEE6DFA0](v11, 0, 0);
}

uint64_t sub_1BD86E82C()
{
  v1 = v0[27];
  v2 = v0[22];
  v3 = v0[23];
  v5 = v0[16];
  v4 = v0[17];
  (*(v3 + 16))(v4, v1, v2);
  (*(v3 + 56))(v4, 0, 1, v2);
  sub_1BD15D62C(v4, v5);
  sub_1BE048884();
  sub_1BD0DE53C(v4, &unk_1EBD39970, &unk_1BE0B9F80);
  (*(v3 + 8))(v1, v2);
  v6 = v0[43];
  v7 = v0[22];
  v8 = v0[15];
  v0[48] = *(v0[2] + 24);
  sub_1BE048874();
  LODWORD(v7) = v6(v8, 1, v7);
  sub_1BD0DE53C(v8, &unk_1EBD39970, &unk_1BE0B9F80);
  if (v7 == 1)
  {
    v9 = v0[3];
    v0[49] = sub_1BE048894();
    v10 = sub_1BE048654();
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
    v11 = swift_task_alloc();
    v0[50] = v11;
    *v11 = v0;
    v11[1] = sub_1BD86ED98;
    v12 = v0[26];
    v13 = v0[3];

    return MEMORY[0x1EEDB33A8](v12, v13);
  }

  v14 = v0[43];
  v15 = v0[22];
  v16 = v0[14];
  sub_1BE048874();
  if (v14(v16, 1, v15) == 1)
  {
    v17 = v0[41];
    v18 = v0[14];
    (*(v0[23] + 8))(v0[40], v0[22]);
  }

  else
  {
    v19 = v0[43];
    v20 = v0[22];
    v21 = v0[13];
    v22 = *(v0[23] + 32);
    v22(v0[25], v0[14], v20);
    sub_1BE048874();
    v23 = v19(v21, 1, v20);
    v24 = v0[41];
    v25 = v0[22];
    v26 = v0[23];
    v18 = v0[13];
    if (v23 != 1)
    {
      v31 = v0[24];
      v30 = v0[25];
      v22(v31, v0[13], v0[22]);
      [v24 setType_];
      v32 = sub_1BE04AE64();
      [v24 setStartDate_];

      v33 = sub_1BE04AE64();
      [v24 setEndDate_];

      v34 = *(v26 + 8);
      v34(v31, v25);
      v34(v30, v25);
      v37 = v0[41];
      v34(v0[40], v0[22]);
      goto LABEL_11;
    }

    v27 = v0[40];
    v28 = v0[25];

    v29 = *(v26 + 8);
    v29(v28, v25);
    v29(v27, v25);
  }

  sub_1BD0DE53C(v18, &unk_1EBD39970, &unk_1BE0B9F80);
  v37 = 0;
LABEL_11:

  v35 = v0[1];

  return v35(v37);
}

uint64_t sub_1BD86ED98()
{
  v2 = *(*v1 + 392);
  v3 = *(*v1 + 24);
  *(*v1 + 408) = v0;

  sub_1BD0DE53C(v3, &qword_1EBD39290, &unk_1BE0D9740);
  v2, v4, v5, v6, v7, v8, v9, v10;
  if (v0)
  {
    v11 = sub_1BD86F55C;
  }

  else
  {
    v11 = sub_1BD86EEFC;
  }

  return MEMORY[0x1EEE6DFA0](v11, 0, 0);
}

uint64_t sub_1BD86EEFC()
{
  v1 = v0[26];
  v2 = v0[22];
  v3 = v0[23];
  v5 = v0[16];
  v4 = v0[17];
  (*(v3 + 16))(v4, v1, v2);
  (*(v3 + 56))(v4, 0, 1, v2);
  sub_1BD15D62C(v4, v5);
  sub_1BE048884();
  sub_1BD0DE53C(v4, &unk_1EBD39970, &unk_1BE0B9F80);
  (*(v3 + 8))(v1, v2);
  v6 = v0[43];
  v7 = v0[22];
  v8 = v0[14];
  sub_1BE048874();
  if (v6(v8, 1, v7) == 1)
  {
    v9 = v0[41];
    v10 = v0[14];
    (*(v0[23] + 8))(v0[40], v0[22]);

LABEL_5:
    sub_1BD0DE53C(v10, &unk_1EBD39970, &unk_1BE0B9F80);
    v29 = 0;
    goto LABEL_7;
  }

  v11 = v0[43];
  v12 = v0[22];
  v13 = v0[13];
  v14 = *(v0[23] + 32);
  v14(v0[25], v0[14], v12);
  sub_1BE048874();
  v15 = v11(v13, 1, v12);
  v16 = v0[41];
  v17 = v0[22];
  v18 = v0[23];
  v10 = v0[13];
  if (v15 == 1)
  {
    v19 = v0[40];
    v20 = v0[25];

    v21 = *(v18 + 8);
    v21(v20, v17);
    v21(v19, v17);
    goto LABEL_5;
  }

  v23 = v0[24];
  v22 = v0[25];
  v14(v23, v0[13], v0[22]);
  [v16 setType_];
  v24 = sub_1BE04AE64();
  [v16 setStartDate_];

  v25 = sub_1BE04AE64();
  [v16 setEndDate_];

  v26 = *(v18 + 8);
  v26(v23, v17);
  v26(v22, v17);
  v29 = v0[41];
  v26(v0[40], v0[22]);
LABEL_7:

  v27 = v0[1];

  return v27(v29);
}

uint64_t sub_1BD86F340()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 176);
  v3 = *(v0 + 184);

  (*(v3 + 8))(v1, v2);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1BD86F55C()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 176);
  v3 = *(v0 + 184);

  (*(v3 + 8))(v1, v2);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1BD86F778@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBD36FA8 != -1)
  {
    swift_once();
  }

  v2 = sub_1BE04A884();
  v3 = __swift_project_value_buffer(v2, qword_1EBDAB740);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1BD86F820(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56150, &qword_1BE0FE8D8);
  v5 = sub_1BD0DE4F4(&qword_1EBD56158, &qword_1EBD56150, &qword_1BE0FE8D8, MEMORY[0x1E695A700]);

  return MEMORY[0x1EEDB4008](KeyPath, sub_1BD86A27C, 0, v4, a2, v5);
}

uint64_t sub_1BD86F8E8(uint64_t a1)
{
  v4 = v1[1];
  *(v2 + 16) = *v1;
  *(v2 + 32) = v4;
  v5 = v1[3];
  *(v2 + 48) = v1[2];
  *(v2 + 64) = v5;
  v6 = swift_task_alloc();
  *(v2 + 80) = v6;
  *v6 = v2;
  v6[1] = sub_1BD86F994;

  return sub_1BD86AD6C(a1);
}

uint64_t sub_1BD86F994()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

double sub_1BD86FA88@<D0>(_OWORD *a2@<X8>)
{
  sub_1BD86FB14(v6);
  v3 = v6[1];
  *a2 = v6[0];
  a2[1] = v3;
  result = *&v7;
  v5 = v8;
  a2[2] = v7;
  a2[3] = v5;
  return result;
}

uint64_t sub_1BD86FAC8(uint64_t a1)
{
  v2 = sub_1BD15D0F8();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

uint64_t sub_1BD86FB14@<X0>(uint64_t *a1@<X8>)
{
  v88 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F618, &unk_1BE0ED6E0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v87 = &v80 - v2;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD560B0, &unk_1BE103F90);
  v84 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v85 = &v80 - v3;
  v107 = sub_1BE048D74();
  v109 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v105 = &v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39290, &unk_1BE0D9740);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v91 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v97 = &v80 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD528E0, &qword_1BE0B79D0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v108 = &v80 - v10;
  v11 = sub_1BE04B0F4();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = (&v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_1BE04A874();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1BE0523D4();
  MEMORY[0x1EEE9AC00](v18 - 8);
  v100 = sub_1BE04A884();
  v106 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v80 - v20;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39298, &qword_1BE0FE830);
  sub_1BE052354();
  if (qword_1EBD36CF8 != -1)
  {
    swift_once();
  }

  v22 = __swift_project_value_buffer(v14, qword_1EBDAB400);
  v23 = *(v15 + 16);
  v23(v17, v22, v14);
  sub_1BE04B0A4();
  v96 = v21;
  sub_1BE04A894();
  sub_1BE052354();
  v98 = v22;
  v99 = v14;
  v94 = v15 + 16;
  v23(v17, v22, v14);
  v95 = v23;
  sub_1BE04B0A4();
  v24 = v108;
  sub_1BE04A894();
  v25 = *(v106 + 56);
  v106 += 56;
  v101 = v25;
  v25(v24, 0, 1, v100);
  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  sub_1BE052354();
  v23(v17, v22, v14);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v26 = v97;
  sub_1BE048664();
  v27 = sub_1BE048654();
  v102 = v27;
  v28 = *(v27 - 8);
  v29 = *(v28 + 56);
  v30 = v28 + 56;
  v29(v26, 0, 1, v27);
  v29(v91, 1, 1, v27);
  v104 = *MEMORY[0x1E695A500];
  v103 = *(v109 + 104);
  v109 += 104;
  v103(v105);
  sub_1BD87101C();
  sub_1BD0304AC();
  v86 = sub_1BE0488B4();
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD560D0, &qword_1BE0FE838);
  sub_1BE052354();
  v31 = v98;
  v32 = v99;
  v33 = v95;
  v95(v17, v98, v99);
  sub_1BE04B0A4();
  sub_1BE04A894();
  sub_1BE052354();
  v33(v17, v31, v32);
  sub_1BE04B0A4();
  v34 = v108;
  sub_1BE04A894();
  v35 = v100;
  v101(v34, 0, 1, v100);
  LOBYTE(v110) = 0;
  v36 = v102;
  v92 = v29;
  v93 = v30;
  v29(v97, 1, 1, v102);
  v29(v91, 1, 1, v36);
  v37 = v105;
  (v103)(v105, v104, v107);
  sub_1BD871070();
  v38 = v37;
  v83 = sub_1BE0488A4();
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD560E0, &qword_1BE0FE840);
  sub_1BE052354();
  v39 = v98;
  v40 = v99;
  v41 = v95;
  v95(v17, v98, v99);
  sub_1BE04B0A4();
  sub_1BE04A894();
  sub_1BE052354();
  v41(v17, v39, v40);
  sub_1BE04B0A4();
  v42 = v108;
  sub_1BE04A894();
  v101(v42, 0, 1, v35);
  v92(v97, 1, 1, v102);
  LODWORD(v82) = *MEMORY[0x1E695A198];
  v81 = *(v84 + 104);
  v43 = v85;
  v81(v85);
  (v103)(v38, v104, v107);
  v84 = sub_1BE0488E4();
  sub_1BE052354();
  v44 = v98;
  v45 = v99;
  v46 = v95;
  v95(v17, v98, v99);
  sub_1BE04B0A4();
  sub_1BE04A894();
  sub_1BE052354();
  v46(v17, v44, v45);
  sub_1BE04B0A4();
  v47 = v108;
  sub_1BE04A894();
  v101(v47, 0, 1, v100);
  v48 = v97;
  v92(v97, 1, 1, v102);
  (v81)(v43, v82, v90);
  (v103)(v105, v104, v107);
  v81 = v13;
  v49 = v48;
  v90 = sub_1BE0488E4();
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD560E8, &qword_1BE0FE848);
  sub_1BE052354();
  v50 = v98;
  v51 = v99;
  v46(v17, v98, v99);
  sub_1BE04B0A4();
  sub_1BE04A894();
  sub_1BE052354();
  v46(v17, v50, v51);
  sub_1BE04B0A4();
  v52 = v108;
  sub_1BE04A894();
  v101(v52, 0, 1, v100);
  LOBYTE(v110) = 8;
  v53 = v102;
  v54 = v92;
  v92(v49, 1, 1, v102);
  v55 = v91;
  v54(v91, 1, 1, v53);
  (v103)(v105, v104, v107);
  sub_1BD0F0AB4();
  v56 = v55;
  v89 = sub_1BE0488A4();
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD560F8, &unk_1BE0FE850);
  sub_1BE052354();
  v57 = v98;
  v58 = v99;
  v59 = v95;
  v95(v17, v98, v99);
  sub_1BE04B0A4();
  sub_1BE04A894();
  sub_1BE052354();
  v59(v17, v57, v58);
  sub_1BE04B0A4();
  v60 = v108;
  sub_1BE04A894();
  v101(v60, 0, 1, v100);
  LOBYTE(v110) = 12;
  v61 = v97;
  v62 = v102;
  v63 = v92;
  v92(v97, 1, 1, v102);
  v63(v56, 1, 1, v62);
  (v103)(v105, v104, v107);
  sub_1BD2336F8();
  v85 = sub_1BE0488A4();
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F620, &qword_1BE0ED6F0);
  sub_1BE052354();
  v64 = v98;
  v65 = v99;
  v66 = v95;
  v95(v17, v98, v99);
  sub_1BE04B0A4();
  sub_1BE04A894();
  sub_1BE052354();
  v66(v17, v64, v65);
  sub_1BE04B0A4();
  v67 = v108;
  sub_1BE04A894();
  v101(v67, 0, 1, v100);
  v68 = sub_1BE052344();
  v110 = 0uLL;
  (*(*(v68 - 8) + 56))(v87, 1, 1, v68);
  v69 = v92;
  v92(v61, 1, 1, v102);
  (v103)(v105, v104, v107);
  v87 = sub_1BE0488F4();
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56110, &qword_1BE0FE860);
  sub_1BE052354();
  v70 = v98;
  v71 = v99;
  v72 = v95;
  v95(v17, v98, v99);
  sub_1BE04B0A4();
  sub_1BE04A894();
  sub_1BE052354();
  v72(v17, v70, v71);
  sub_1BE04B0A4();
  v73 = v108;
  sub_1BE04A894();
  v101(v73, 0, 1, v100);
  v110 = 0u;
  v111 = 0u;
  v74 = v102;
  v69(v97, 1, 1, v102);
  v69(v91, 1, 1, v74);
  (v103)(v105, v104, v107);
  sub_1BD8710C4();
  result = sub_1BE0488C4();
  v76 = v88;
  v77 = v83;
  *v88 = v86;
  v76[1] = v77;
  v78 = v90;
  v76[2] = v84;
  v76[3] = v78;
  v79 = v85;
  v76[4] = v89;
  v76[5] = v79;
  v76[6] = v87;
  v76[7] = result;
  return result;
}

unint64_t sub_1BD87101C()
{
  result = qword_1EBD560C0;
  if (!qword_1EBD560C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD560C0);
  }

  return result;
}

unint64_t sub_1BD871070()
{
  result = qword_1EBD560D8;
  if (!qword_1EBD560D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD560D8);
  }

  return result;
}

unint64_t sub_1BD8710C4()
{
  result = qword_1EBD56118;
  if (!qword_1EBD56118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD56118);
  }

  return result;
}

uint64_t sub_1BD871150(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[13];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1BD0F985C;

  return sub_1BD86D1B4(a1, v4, v5, v6, (v1 + 5), v7);
}

unint64_t sub_1BD871218()
{
  result = qword_1EBD56140;
  if (!qword_1EBD56140)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD56140);
  }

  return result;
}

id sub_1BD87126C(uint64_t a1, char a2, char a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC9PassKitUI34ProvisioningManualEntryFlowSection_outputObjects] = MEMORY[0x1E69E7CC0];
  *&v3[OBJC_IVAR____TtC9PassKitUI34ProvisioningManualEntryFlowSection_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v8 = &v3[OBJC_IVAR____TtC9PassKitUI34ProvisioningManualEntryFlowSection_identifier];
  *v8 = 0xD000000000000016;
  v8[1] = 0x80000001BE13D850;
  *&v3[OBJC_IVAR____TtC9PassKitUI34ProvisioningManualEntryFlowSection__manualEntryOptions] = &type metadata for ManualEntryOptions;
  *&v3[OBJC_IVAR____TtC9PassKitUI34ProvisioningManualEntryFlowSection_context] = a1;
  v3[OBJC_IVAR____TtC9PassKitUI34ProvisioningManualEntryFlowSection_showBrowseBanks] = a2;
  v3[OBJC_IVAR____TtC9PassKitUI34ProvisioningManualEntryFlowSection_fromWelcomeScreen] = a3;
  v10.receiver = v3;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, sel_init);
}

_BYTE *sub_1BD87141C(uint64_t a1)
{
  v2 = v1;
  if (a1)
  {
    type metadata accessor for ProvisioningHeroFlowItem();
    if (swift_dynamicCastClass())
    {
      v3 = *&v1[OBJC_IVAR____TtC9PassKitUI34ProvisioningManualEntryFlowSection_context];
      KeyPath = swift_getKeyPath();
      sub_1BD187078(v1, v63);
      sub_1BD7CD0C0();
      v5 = v67;
      sub_1BD7CD0C0();
      if ((sub_1BD6CBE60(v5, v64) & 1) != 0 && (sub_1BD6CBE60(v5, v65) & 1) == 0)
      {
        v6 = v67;
      }

      else
      {
        v6 = byte_1F3B8C820;
        sub_1BD7CD0C0();
        if (sub_1BD6CBE60(v6, v64) & 1) == 0 || (sub_1BD6CBE60(v6, v65))
        {
          v6 = byte_1F3B8C821;
          sub_1BD7CD0C0();
          if (sub_1BD6CBE60(v6, v64) & 1) == 0 || (sub_1BD6CBE60(v6, v65))
          {
            v6 = byte_1F3B8C822;
            sub_1BD7CD0C0();
            if (sub_1BD6CBE60(v6, v64) & 1) == 0 || (sub_1BD6CBE60(v6, v65))
            {
              v6 = 3;
            }
          }
        }
      }

      v34 = v1;
      sub_1BD12F5D4(v63, v34, KeyPath);

      KeyPath, v35, v36, v37, v38, v39, v40, v41;
      v74 = v64;
      sub_1BD58532C(&v74);
      v75 = v65;
      sub_1BD58532C(&v75);
      v76 = v66;
      sub_1BD58532C(&v76);
      if (v6 == 3)
      {
        return 0;
      }

      v42 = objc_allocWithZone(type metadata accessor for ProvisioningManualEntryOptionFlowSection());
      v43 = sub_1BE048964();
      v51 = sub_1BD87305C(v43, 0, v6);
      v52 = v3;
    }

    else
    {
      v22 = type metadata accessor for ProvisioningManualEntryOptionFlowSection();
      result = swift_dynamicCastClass();
      if (!result)
      {
        return result;
      }

      if (result[OBJC_IVAR____TtC9PassKitUIP33_C41BC0765F0158CE72E232E364E8ADE540ProvisioningManualEntryOptionFlowSection_didActivate])
      {
        return 0;
      }

      v23 = *&v1[OBJC_IVAR____TtC9PassKitUI34ProvisioningManualEntryFlowSection_context];
      v24 = swift_getKeyPath();
      swift_unknownObjectRetain();
      sub_1BD187078(v1, v68);
      sub_1BD7CD0C0();
      v25 = v72;
      sub_1BD7CD0C0();
      if ((sub_1BD6CBE60(v25, v69) & 1) != 0 && (sub_1BD6CBE60(v25, v70) & 1) == 0)
      {
        v26 = v72;
      }

      else
      {
        v26 = byte_1F3B8C848;
        sub_1BD7CD0C0();
        if (sub_1BD6CBE60(v26, v69) & 1) == 0 || (sub_1BD6CBE60(v26, v70))
        {
          v26 = byte_1F3B8C849;
          sub_1BD7CD0C0();
          if (sub_1BD6CBE60(v26, v69) & 1) == 0 || (sub_1BD6CBE60(v26, v70))
          {
            v26 = byte_1F3B8C84A;
            sub_1BD7CD0C0();
            if (sub_1BD6CBE60(v26, v69) & 1) == 0 || (sub_1BD6CBE60(v26, v70))
            {
              v26 = 3;
            }
          }
        }
      }

      v53 = v1;
      sub_1BD12F5D4(v68, v53, v24);

      v24, v54, v55, v56, v57, v58, v59, v60;
      v74 = v69;
      sub_1BD58532C(&v74);
      v75 = v70;
      sub_1BD58532C(&v75);
      v76 = v71;
      sub_1BD58532C(&v76);
      if (v26 == 3)
      {
        swift_unknownObjectRelease();
        return 0;
      }

      v61 = objc_allocWithZone(v22);
      v62 = sub_1BE048964();
      v51 = sub_1BD87305C(v62, 0, v26);
      swift_unknownObjectRelease();
      v52 = v23;
    }

    v52, v44, v45, v46, v47, v48, v49, v50;
    return v51;
  }

  sub_1BD8719A0();
  if (v7)
  {
    v9 = v7;
    v10 = v8;
    v11 = *&v2[OBJC_IVAR____TtC9PassKitUI34ProvisioningManualEntryFlowSection_context];
    type metadata accessor for PaymentSetupProductsFlowSection();
    swift_allocObject();
    v12 = sub_1BE048964();
    v13 = sub_1BD0DB670(v12, v10, v9);
    v11, v14, v15, v16, v17, v18, v19, v20;

    return v13;
  }

  else
  {
    v27 = *&v1[OBJC_IVAR____TtC9PassKitUI34ProvisioningManualEntryFlowSection_context];
    v28 = v2[OBJC_IVAR____TtC9PassKitUI34ProvisioningManualEntryFlowSection_fromWelcomeScreen];
    v29 = type metadata accessor for ProvisioningHeroFlowItem();
    v30 = objc_allocWithZone(v29);
    *&v30[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem__hasSeenHeroScreen] = &type metadata for HasSeenHeroScreenKey;
    *&v30[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem__privacyDisclosures] = &type metadata for PrivacyDisclosures;
    *&v30[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem__hasSelectedMethod] = &type metadata for HasSelectedMethodKey;
    v31 = OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_selectedMethod;
    *&v30[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_selectedMethod] = 0;
    *&v30[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    v32 = &v30[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_identifier];
    strcpy(&v30[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_identifier], "HeroFlowItem");
    v32[13] = 0;
    *(v32 + 7) = -5120;
    *&v30[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_context] = v27;
    v30[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_style] = v28;
    *&v30[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_product] = 0;
    v33 = *&v30[v31];
    *&v30[v31] = 0;
    sub_1BE048964();

    v30[OBJC_IVAR____TtC9PassKitUI24ProvisioningHeroFlowItem_allowSecondaryManualEntry] = 0;
    v73.receiver = v30;
    v73.super_class = v29;
    return objc_msgSendSuper2(&v73, sel_init);
  }
}

void sub_1BD8719A0()
{
  v1 = sub_1BE04B944();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v124 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v124 - v6;
  v8 = sub_1BE04BAC4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v124 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR____TtC9PassKitUI34ProvisioningManualEntryFlowSection_showBrowseBanks) == 1)
  {
    sub_1BE04BC34();
    v12 = sub_1BE04BA54();
    (*(v9 + 8))(v11, v8);
    if ((v12 & 1) == 0)
    {
      sub_1BE04BB94();
      v13 = sub_1BE04B934();
      v14 = *(v2 + 8);
      v14(v7, v1);
      v15 = [v13 deviceRegion];
      swift_unknownObjectRelease();
      sub_1BE04BB94();
      v16 = sub_1BE04B8E4();
      v14(v4, v1);
      v17 = [v16 context];

      if (v17)
      {
        v18 = [v17 configuration];

        if (!v18)
        {

          return;
        }

        v19 = v18;
        v20 = [v19 browseProvisioningBankAppsEnabledForRegion_];

        if ((v20 & 1) == 0 || (v21 = sub_1BE04BBD4(), v22 = [v21 paymentSetupProductModel], v21, !v22))
        {

          return;
        }

        v23 = [v22 setupProductsOfType_];
        if (v23)
        {
          v24 = v23;
          sub_1BD0E5E8C(0, &qword_1EBD38568, 0x1E69B8E48);
          v128 = sub_1BE052744();
        }

        else
        {
          v128 = 0;
        }

        v25 = [v22 allSections];
        if (v25)
        {
          v26 = v25;
          v126 = v19;
          sub_1BD0E5E8C(0, &qword_1EBD42938, 0x1E69B8E68);
          v27 = sub_1BE052744();

          v129 = v27;
          v125 = v22;
          if (v27 >> 62)
          {
            goto LABEL_50;
          }

          v35 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v35)
          {
LABEL_15:
            v36 = 0;
            v131 = v129 & 0xFFFFFFFFFFFFFF8;
            v132 = v129 & 0xC000000000000001;
            v130 = (v129 + 32);
            v127 = v35;
            while (1)
            {
              if (v132)
              {
                v37 = MEMORY[0x1BFB40900](v36, v129);
              }

              else
              {
                if (v36 >= *(v131 + 16))
                {
                  goto LABEL_49;
                }

                v37 = *&v130[8 * v36];
              }

              v38 = v37;
              v39 = __OFADD__(v36, 1);
              v40 = v36 + 1;
              if (v39)
              {
                goto LABEL_48;
              }

              v41 = [v37 categories];
              if (!v41)
              {
                goto LABEL_64;
              }

              v42 = v41;
              v133 = v40;
              sub_1BD0E5E8C(0, &qword_1EBD42940, 0x1E69B8E50);
              v43 = sub_1BE052744();

              v134 = v38;
              if (v43 >> 62)
              {
                break;
              }

              v51 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v51)
              {
                goto LABEL_24;
              }

LABEL_16:
              v43, v44, v45, v46, v47, v48, v49, v50;

              v36 = v133;
              if (v133 == v127)
              {
                goto LABEL_51;
              }
            }

            v51 = sub_1BE053704();
            if (!v51)
            {
              goto LABEL_16;
            }

LABEL_24:
            v52 = 0;
            v135 = v43 & 0xFFFFFFFFFFFFFF8;
            while (1)
            {
              if ((v43 & 0xC000000000000001) != 0)
              {
                v61 = MEMORY[0x1BFB40900](v52, v43);
              }

              else
              {
                if (v52 >= *(v135 + 16))
                {
                  goto LABEL_47;
                }

                v61 = *(v43 + 8 * v52 + 32);
              }

              v62 = v61;
              v63 = v52 + 1;
              if (__OFADD__(v52, 1))
              {
                __break(1u);
LABEL_47:
                __break(1u);
LABEL_48:
                __break(1u);
LABEL_49:
                __break(1u);
LABEL_50:
                v35 = sub_1BE053704();
                if (!v35)
                {
                  goto LABEL_51;
                }

                goto LABEL_15;
              }

              v64 = [v61 identifier];
              if (!v64)
              {
                break;
              }

              v65 = v64;
              v66 = sub_1BE052434();
              v68 = v67;

              v69 = sub_1BE052434();
              v60 = v53;
              if (!v68)
              {
                goto LABEL_26;
              }

              if (v66 == v69 && v68 == v53)
              {
                v43, v53, v69, v55, v56, v57, v58, v59;

                v68, v93, v94, v95, v96, v97, v98, v99;
                v60, v100, v101, v102, v103, v104, v105, v106;
                goto LABEL_45;
              }

              v71 = sub_1BE053B84();
              v68, v72, v73, v74, v75, v76, v77, v78;
              v60, v79, v80, v81, v82, v83, v84, v85;
              if (v71)
              {
                v43, v86, v87, v88, v89, v90, v91, v92;

LABEL_45:
                v129, v107, v108, v109, v110, v111, v112, v113;
                goto LABEL_52;
              }

LABEL_27:

              ++v52;
              if (v63 == v51)
              {
                goto LABEL_16;
              }
            }

            sub_1BE052434();
            v60 = v53;
LABEL_26:
            v60, v53, v54, v55, v56, v57, v58, v59;
            goto LABEL_27;
          }

LABEL_51:
          v129, v28, v29, v30, v31, v32, v33, v34;
          v62 = 0;
LABEL_52:
          v115 = v125;
          v114 = v126;
          if (v128)
          {
            if (v128 >> 62)
            {
              v116 = sub_1BE053704();
            }

            else
            {
              v116 = *((v128 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            if (v116)
            {
              if (!v62)
              {
                v128, v117, v118, v119, v120, v121, v122, v123;
              }

              return;
            }

            v128, v117, v118, v119, v120, v121, v122, v123;
          }

          else
          {
          }

          return;
        }
      }

      else
      {

        __break(1u);
LABEL_64:
        __break(1u);
      }

      __break(1u);
    }
  }
}

uint64_t sub_1BD87203C()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI34ProvisioningManualEntryFlowSection_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD872084(uint64_t (*a1)(uint64_t))
{
  v2 = sub_1BE04BBD4();
  [v2 resetForNewProvisioning];

  type metadata accessor for ProvisioningCardReaderFlowItem();
  sub_1BD6A1404(0, 255, 0, 0);
  return a1(1);
}

void sub_1BD8721E0(void (*a1)(void), uint64_t a2)
{
  v3 = v2;
  v6 = sub_1BE04BBD4();
  [v6 resetForNewProvisioning];

  KeyPath = swift_getKeyPath();
  sub_1BD188350(v3, &v73);
  sub_1BD7CD0C0();
  v8 = *(&v73 + 1);
  if (!*(*(&v73 + 1) + 16) || (sub_1BE053D04(), sub_1BE052524(), v9 = sub_1BE053D64(), v17 = -1 << *(v8 + 32), v18 = v9 & ~v17, ((*(v8 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0))
  {
    v29 = 0;
    goto LABEL_23;
  }

  v68 = v3;
  v69 = a1;
  v19 = ~v17;
  while (1)
  {
    v20 = 0xEE007265626D754ELL;
    if (!*(*(v8 + 48) + v18))
    {
      goto LABEL_7;
    }

    if (*(*(v8 + 48) + v18) != 1)
    {
      break;
    }

    v20 = 0xED00006572757470;
LABEL_7:
    v21 = sub_1BE053B84();
    v20, v22, v23, v24, v25, v26, v27, v28;
    if (v21)
    {
      goto LABEL_12;
    }

    v18 = (v18 + 1) & v19;
    if (((*(v8 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
      v29 = 0;
      goto LABEL_22;
    }
  }

  0xEE006E6F69736976, v10, v11, v12, v13, v14, v15, v16;
LABEL_12:
  v30 = v74;
  if (!*(v74 + 16) || (sub_1BE053D04(), sub_1BE052524(), v31 = sub_1BE053D64(), v39 = -1 << *(v30 + 32), v40 = v31 & ~v39, ((*(v30 + 56 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40) & 1) == 0))
  {
    v29 = 1;
    goto LABEL_22;
  }

  v41 = ~v39;
  while (2)
  {
    v42 = 0xEE007265626D754ELL;
    if (!*(*(v30 + 48) + v40))
    {
LABEL_18:
      v43 = sub_1BE053B84();
      v42, v44, v45, v46, v47, v48, v49, v50;
      if ((v43 & 1) != 0 || (v40 = (v40 + 1) & v41, ((*(v30 + 56 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40) & 1) == 0))
      {
        v29 = v43 ^ 1;
        goto LABEL_22;
      }

      continue;
    }

    break;
  }

  if (*(*(v30 + 48) + v40) == 1)
  {
    v42 = 0xED00006572757470;
    goto LABEL_18;
  }

  0xEE006E6F69736976, v32, v33, v34, v35, v36, v37, v38;
  v29 = 0;
LABEL_22:
  a1 = v69;
  v3 = v68;
LABEL_23:
  v70 = v73;
  v71 = v74;
  v72 = v75;
  v51 = v3;
  sub_1BD12FC44(&v70, v51, KeyPath);

  KeyPath, v52, v53, v54, v55, v56, v57, v58;
  v76 = *(&v70 + 1);
  sub_1BD58532C(&v76);
  v77 = v71;
  sub_1BD58532C(&v77);
  v78 = *(&v71 + 1);
  sub_1BD58532C(&v78);
  if (v29)
  {
    type metadata accessor for ProvisioningCardReaderFlowItem();
    v59 = swift_allocObject();
    v59[2] = v51;
    v59[3] = a1;
    v59[4] = a2;
    v60 = v51;
    sub_1BE048964();
    sub_1BD6A1404(0x4000000000000000, 1, sub_1BD873400, v59);
    v59, v61, v62, v63, v64, v65, v66, v67;
  }

  else
  {
    a1(1);
  }
}

uint64_t sub_1BD8725A0(char a1, void *a2, uint64_t (*a3)(uint64_t))
{
  if (a1)
  {
    return (a3)(1, a2);
  }

  v92 = a3;
  KeyPath = swift_getKeyPath();
  sub_1BD188350(a2, v95);
  v3 = v97;
  v89 = v96;
  v4 = v98;
  v87 = v99;
  v88 = v95[0];
  sub_1BE053D04();
  sub_1BE052524();
  v5 = sub_1BE053D64();
  v13 = -1 << *(v3 + 32);
  v14 = v5 & ~v13;
  if (((*(v3 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v93[0] = v3;
    sub_1BD2A939C(2, v14, isUniquelyReferenced_nonNull_native, v26, v27, v28, v29, v30);
    goto LABEL_10;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = 0xEE007265626D754ELL;
    if (*(*(v3 + 48) + v14))
    {
      break;
    }

LABEL_7:
    v17 = sub_1BE053B84();
    v16, v18, v19, v20, v21, v22, v23, v24;
    if (v17)
    {
      goto LABEL_10;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v3 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  if (*(*(v3 + 48) + v14) == 1)
  {
    v16 = 0xED00006572757470;
    goto LABEL_7;
  }

  0xEE006E6F69736976, v6, v7, v8, v9, v10, v11, v12;
LABEL_10:
  sub_1BE053D04();
  sub_1BE052524();
  v31 = sub_1BE053D64();
  v39 = -1 << *(v4 + 32);
  v40 = v31 & ~v39;
  if (((*(v4 + 56 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40) & 1) == 0)
  {
LABEL_17:
    v51 = swift_isUniquelyReferenced_nonNull_native();
    v93[0] = v4;
    sub_1BD2A939C(2, v40, v51, v52, v53, v54, v55, v56);
    goto LABEL_18;
  }

  v41 = ~v39;
  while (2)
  {
    v42 = 0xEE007265626D754ELL;
    if (!*(*(v4 + 48) + v40))
    {
LABEL_15:
      v43 = sub_1BE053B84();
      v42, v44, v45, v46, v47, v48, v49, v50;
      if (v43)
      {
        goto LABEL_18;
      }

      v40 = (v40 + 1) & v41;
      if (((*(v4 + 56 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40) & 1) == 0)
      {
        goto LABEL_17;
      }

      continue;
    }

    break;
  }

  if (*(*(v4 + 48) + v40) == 1)
  {
    v42 = 0xED00006572757470;
    goto LABEL_15;
  }

  0xEE006E6F69736976, v32, v33, v34, v35, v36, v37, v38;
LABEL_18:
  LOBYTE(v93[0]) = v88;
  v93[1] = v89;
  v93[2] = v3;
  v93[3] = v4;
  v94 = v87;
  v57 = a2;
  sub_1BD12FC44(v93, v57, KeyPath);
  v4, v58, v59, v60, v61, v62, v63, v64;
  v3, v65, v66, v67, v68, v69, v70, v71;
  v89, v72, v73, v74, v75, v76, v77, v78;

  KeyPath, v79, v80, v81, v82, v83, v84, v85;
  a3 = v92;
  return (a3)(1, a2);
}

id sub_1BD8728D8(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  v6 = v2;
  sub_1BD12F620(1, v6, KeyPath);

  KeyPath, v7, v8, v9, v10, v11, v12, v13;
  if (!a1)
  {
    return sub_1BD872C5C(v6[OBJC_IVAR____TtC9PassKitUIP33_C41BC0765F0158CE72E232E364E8ADE540ProvisioningManualEntryOptionFlowSection_entryOption], v14, v15, v16, v17, v18, v19, v20);
  }

  v21 = &v6[OBJC_IVAR____TtC9PassKitUIP33_C41BC0765F0158CE72E232E364E8ADE540ProvisioningManualEntryOptionFlowSection_provisioningResult];
  v22 = v6[OBJC_IVAR____TtC9PassKitUIP33_C41BC0765F0158CE72E232E364E8ADE540ProvisioningManualEntryOptionFlowSection_provisioningResult + 8];
  if (v22 != 255)
  {
    v23 = *v21;
    if (v22)
    {
      v62 = *v21;
      sub_1BD0E5E8C(0, qword_1EBD45AD0, 0x1E69B90E8);
      sub_1BD412688();
      swift_willThrowTypedImpl();
    }

    else
    {
      ObjectType = swift_getObjectType();
      v26 = *(a2 + 8);
      sub_1BD8733EC(v23, v22);
      v60 = v23;
      if (v26(ObjectType, a2) == 0x6F69747365676E69 && v27 == 0xE90000000000006ELL)
      {
        0xE90000000000006ELL, 0xE90000000000006ELL, v28, v29, v30, v31, v32, v33;
      }

      else
      {
        v34 = v27;
        v35 = sub_1BE053B84();
        v34, v36, v37, v38, v39, v40, v41, v42;
        if ((v35 & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD38570, &unk_1BE0B6A50);
          v43 = swift_allocObject();
          *(v43 + 16) = xmmword_1BE0B6CA0;
          v44 = *&v6[OBJC_IVAR____TtC9PassKitUIP33_C41BC0765F0158CE72E232E364E8ADE540ProvisioningManualEntryOptionFlowSection_context];
          v45 = objc_allocWithZone(type metadata accessor for ProvisioningPassIngestionSection());
          sub_1BD8733EC(v23, v22);
          v46 = sub_1BE048964();
          v47 = sub_1BD989980(v46, v60);
          sub_1BD585394(v23, v22);
          v44, v48, v49, v50, v51, v52, v53, v54;
          *(v43 + 32) = v47;
          *(v43 + 40) = &off_1F3BC8F80;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
          v55 = swift_allocObject();
          *(v55 + 16) = xmmword_1BE0B7020;
          *(v55 + 32) = v60;
          v56 = type metadata accessor for ProvisioningBatchPassIngestionSection();
          v57 = objc_allocWithZone(v56);
          *&v57[OBJC_IVAR____TtC9PassKitUI37ProvisioningBatchPassIngestionSection_delegate + 8] = 0;
          swift_unknownObjectWeakInit();
          v58 = &v57[OBJC_IVAR____TtC9PassKitUI37ProvisioningBatchPassIngestionSection_identifier];
          *v58 = 0xD000000000000019;
          *(v58 + 1) = 0x80000001BE126DA0;
          *&v57[OBJC_IVAR____TtC9PassKitUI37ProvisioningBatchPassIngestionSection_context] = v44;
          *&v57[OBJC_IVAR____TtC9PassKitUI37ProvisioningBatchPassIngestionSection_provisionedPassesGroups] = v55;
          sub_1BD8733EC(v23, v22);
          v61.receiver = v57;
          v61.super_class = v56;
          sub_1BE048964();
          *(v43 + 48) = objc_msgSendSuper2(&v61, sel_init);
          *(v43 + 56) = &off_1F3BAFB20;
          type metadata accessor for UIStaticFlowSection();
          v59 = swift_allocObject();
          *(v59 + 24) = 0;
          swift_unknownObjectWeakInit();
          sub_1BD585394(v23, v22);
          sub_1BD585394(v23, v22);
          result = v59;
          *(v59 + 40) = 0x6F69747365676E69;
          *(v59 + 48) = 0xE90000000000006ELL;
          *(v59 + 56) = v43;
          *(v59 + 32) = 514;
          return result;
        }
      }

      sub_1BD585394(v23, v22);
      sub_1BD585394(v23, v22);
    }
  }

  return 0;
}

id sub_1BD872C5C(char a1, const char *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v9 = *(v8 + OBJC_IVAR____TtC9PassKitUIP33_C41BC0765F0158CE72E232E364E8ADE540ProvisioningManualEntryOptionFlowSection_outputObjects);
      *(v8 + OBJC_IVAR____TtC9PassKitUIP33_C41BC0765F0158CE72E232E364E8ADE540ProvisioningManualEntryOptionFlowSection_outputObjects) = MEMORY[0x1E69E7CC0];
      v9, a2, a3, a4, a5, a6, a7, a8;
      v10 = *(v8 + OBJC_IVAR____TtC9PassKitUIP33_C41BC0765F0158CE72E232E364E8ADE540ProvisioningManualEntryOptionFlowSection_context);
      v11 = *(v8 + OBJC_IVAR____TtC9PassKitUIP33_C41BC0765F0158CE72E232E364E8ADE540ProvisioningManualEntryOptionFlowSection_forceShow);
      v12 = type metadata accessor for ProvisioningCameraCaptureFlowItem();
      v13 = objc_allocWithZone(v12);
      v14 = &v13[OBJC_IVAR____TtC9PassKitUI33ProvisioningCameraCaptureFlowItem_managingSection];
      *&v13[OBJC_IVAR____TtC9PassKitUI33ProvisioningCameraCaptureFlowItem_managingSection + 8] = 0;
      swift_unknownObjectWeakInit();
      *&v13[OBJC_IVAR____TtC9PassKitUI33ProvisioningCameraCaptureFlowItem_delegate + 8] = 0;
      swift_unknownObjectWeakInit();
      v15 = &v13[OBJC_IVAR____TtC9PassKitUI33ProvisioningCameraCaptureFlowItem_identifier];
      *v15 = 0xD000000000000015;
      v15[1] = 0x80000001BE13D8B0;
      *&v13[OBJC_IVAR____TtC9PassKitUI33ProvisioningCameraCaptureFlowItem__manualEntryOptions] = &type metadata for ManualEntryOptions;
      *&v13[OBJC_IVAR____TtC9PassKitUI33ProvisioningCameraCaptureFlowItem_context] = v10;
      v13[OBJC_IVAR____TtC9PassKitUI33ProvisioningCameraCaptureFlowItem_forceShow] = v11;
      *(v14 + 1) = &off_1F3BC0A90;
      swift_unknownObjectWeakAssign();
      v31.receiver = v13;
      v31.super_class = v12;
      sub_1BE048964();
      return objc_msgSendSuper2(&v31, sel_init);
    }

    else
    {
      v24 = *(v8 + OBJC_IVAR____TtC9PassKitUIP33_C41BC0765F0158CE72E232E364E8ADE540ProvisioningManualEntryOptionFlowSection_context);
      v25 = *(v8 + OBJC_IVAR____TtC9PassKitUIP33_C41BC0765F0158CE72E232E364E8ADE540ProvisioningManualEntryOptionFlowSection_forceShow);
      v26 = type metadata accessor for ProvisioningCardReaderFlowItem();
      v27 = objc_allocWithZone(v26);
      v28 = &v27[OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderFlowItem_managingSection];
      *&v27[OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderFlowItem_managingSection + 8] = 0;
      swift_unknownObjectWeakInit();
      *&v27[OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderFlowItem__manualEntryOptions] = &type metadata for ManualEntryOptions;
      *&v27[OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderFlowItem_delegate + 8] = 0;
      swift_unknownObjectWeakInit();
      v29 = &v27[OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderFlowItem_identifier];
      *v29 = 0xD000000000000012;
      v29[1] = 0x80000001BE13D890;
      *&v27[OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderFlowItem_context] = v24;
      v27[OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderFlowItem_forceShow] = v25;
      *(v28 + 1) = &off_1F3BC0A90;
      swift_unknownObjectWeakAssign();
      v32.receiver = v27;
      v32.super_class = v26;
      sub_1BE048964();
      return objc_msgSendSuper2(&v32, sel_init);
    }
  }

  else
  {
    v17 = *(v8 + OBJC_IVAR____TtC9PassKitUIP33_C41BC0765F0158CE72E232E364E8ADE540ProvisioningManualEntryOptionFlowSection_context);
    v18 = *(v8 + OBJC_IVAR____TtC9PassKitUIP33_C41BC0765F0158CE72E232E364E8ADE540ProvisioningManualEntryOptionFlowSection_forceShow);
    v19 = *(v8 + OBJC_IVAR____TtC9PassKitUIP33_C41BC0765F0158CE72E232E364E8ADE540ProvisioningManualEntryOptionFlowSection_outputObjects);
    v20 = type metadata accessor for ProvisioningManualEntryFlowItem();
    v21 = objc_allocWithZone(v20);
    v22 = &v21[OBJC_IVAR____TtC9PassKitUI31ProvisioningManualEntryFlowItem_managingSection];
    *&v21[OBJC_IVAR____TtC9PassKitUI31ProvisioningManualEntryFlowItem_managingSection + 8] = 0;
    swift_unknownObjectWeakInit();
    *&v21[OBJC_IVAR____TtC9PassKitUI31ProvisioningManualEntryFlowItem__manualEntryOptions] = &type metadata for ManualEntryOptions;
    *&v21[OBJC_IVAR____TtC9PassKitUI31ProvisioningManualEntryFlowItem_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    v23 = &v21[OBJC_IVAR____TtC9PassKitUI31ProvisioningManualEntryFlowItem_identifier];
    *v23 = 0xD000000000000013;
    v23[1] = 0x80000001BE13D8D0;
    *&v21[OBJC_IVAR____TtC9PassKitUI31ProvisioningManualEntryFlowItem_context] = v17;
    v21[OBJC_IVAR____TtC9PassKitUI31ProvisioningManualEntryFlowItem_forceShow] = v18;
    *(v22 + 1) = &off_1F3BC0A90;
    swift_unknownObjectWeakAssign();
    *&v21[OBJC_IVAR____TtC9PassKitUI31ProvisioningManualEntryFlowItem_cameraCaptureObjects] = v19;
    v30.receiver = v21;
    v30.super_class = v20;
    sub_1BE048C84();
    sub_1BE048964();
    return objc_msgSendSuper2(&v30, sel_init);
  }
}

uint64_t sub_1BD873000()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUIP33_C41BC0765F0158CE72E232E364E8ADE540ProvisioningManualEntryOptionFlowSection_identifier);
  sub_1BE048C84();
  return v1;
}

id sub_1BD87305C(uint64_t a1, int a2, char a3)
{
  v4 = v3;
  v60 = a2;
  v7 = 0xEE007265626D754ELL;
  ObjectType = swift_getObjectType();
  v8 = sub_1BE04BAC4();
  v58 = *(v8 - 8);
  v59 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v3[OBJC_IVAR____TtC9PassKitUIP33_C41BC0765F0158CE72E232E364E8ADE540ProvisioningManualEntryOptionFlowSection_outputObjects] = MEMORY[0x1E69E7CC0];
  v11 = &v3[OBJC_IVAR____TtC9PassKitUIP33_C41BC0765F0158CE72E232E364E8ADE540ProvisioningManualEntryOptionFlowSection_provisioningResult];
  *v11 = 0;
  v11[8] = -1;
  v3[OBJC_IVAR____TtC9PassKitUIP33_C41BC0765F0158CE72E232E364E8ADE540ProvisioningManualEntryOptionFlowSection_didActivate] = 0;
  *&v3[OBJC_IVAR____TtC9PassKitUIP33_C41BC0765F0158CE72E232E364E8ADE540ProvisioningManualEntryOptionFlowSection_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC9PassKitUIP33_C41BC0765F0158CE72E232E364E8ADE540ProvisioningManualEntryOptionFlowSection__manualEntryOptions] = &type metadata for ManualEntryOptions;
  *&v3[OBJC_IVAR____TtC9PassKitUIP33_C41BC0765F0158CE72E232E364E8ADE540ProvisioningManualEntryOptionFlowSection__isManualProvisioning] = &type metadata for IsManualProvisioning;
  v57 = OBJC_IVAR____TtC9PassKitUIP33_C41BC0765F0158CE72E232E364E8ADE540ProvisioningManualEntryOptionFlowSection_presentationConfiguration;
  v3[OBJC_IVAR____TtC9PassKitUIP33_C41BC0765F0158CE72E232E364E8ADE540ProvisioningManualEntryOptionFlowSection_presentationConfiguration] = 2;
  *&v3[OBJC_IVAR____TtC9PassKitUIP33_C41BC0765F0158CE72E232E364E8ADE540ProvisioningManualEntryOptionFlowSection_context] = a1;
  v3[OBJC_IVAR____TtC9PassKitUIP33_C41BC0765F0158CE72E232E364E8ADE540ProvisioningManualEntryOptionFlowSection_entryOption] = a3;
  v65 = 0;
  v66 = 0xE000000000000000;
  sub_1BE048964();
  sub_1BE053834();
  v66, v12, v13, v14, v15, v16, v17, v18;
  v65 = 0xD00000000000001DLL;
  v66 = 0x80000001BE13D870;
  if (a3)
  {
    v19 = 0x61436172656D6163;
    if (a3 == 1)
    {
      v20 = 0xED00006572757470;
    }

    else
    {
      v19 = 0x6F72506F54706174;
      v20 = 0xEE006E6F69736976;
    }
  }

  else
  {
    v19 = 0x6472614365707974;
    v20 = 0xEE007265626D754ELL;
  }

  v63 = v19;
  v64 = v20;
  sub_1BD0DDEBC();
  v21 = sub_1BE053534();
  v23 = v22;
  v20, v22, v24, v25, v26, v27, v28, v29;
  MEMORY[0x1BFB3F610](v21, v23);
  v23, v30, v31, v32, v33, v34, v35, v36;
  MEMORY[0x1BFB3F610](62, 0xE100000000000000);
  v44 = v66;
  v45 = &v3[OBJC_IVAR____TtC9PassKitUIP33_C41BC0765F0158CE72E232E364E8ADE540ProvisioningManualEntryOptionFlowSection_identifier];
  *v45 = v65;
  v45[1] = v44;
  v3[OBJC_IVAR____TtC9PassKitUIP33_C41BC0765F0158CE72E232E364E8ADE540ProvisioningManualEntryOptionFlowSection_forceShow] = v60 & 1;
  if (!a3)
  {
LABEL_9:
    v46 = sub_1BE053B84();
    v7, v47, v48, v49, v50, v51, v52, v53;
    if ((v46 & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  if (a3 == 1)
  {
    v7 = 0xED00006572757470;
    goto LABEL_9;
  }

  0xEE006E6F69736976, v37, v38, v39, v40, v41, v42, v43;
LABEL_12:
  sub_1BE04BC34();
  v54 = sub_1BE04BAB4();
  (*(v58 + 8))(v10, v59);
  if ((v54 & 1) == 0)
  {
    v4[v57] = 1;
  }

LABEL_14:
  v62.receiver = v4;
  v62.super_class = ObjectType;
  return objc_msgSendSuper2(&v62, sel_init);
}

id sub_1BD8733EC(id result, char a2)
{
  if (a2 != -1)
  {
    return result;
  }

  return result;
}

id sub_1BD873460@<X0>(void *a1@<X8>)
{
  v2 = sub_1BD874648();
  *a1 = v2;

  return v2;
}

uint64_t sub_1BD873498(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, WitnessTable);
}

uint64_t sub_1BD873514(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, WitnessTable);
}

void sub_1BD873590(uint64_t a1)
{
  swift_getWitnessTable();
  sub_1BE04F964();
  __break(1u);
}

void sub_1BD8735DC(void *a1)
{
  v1 = a1;
  sub_1BD8735D0();
}

void sub_1BD873630(void *result)
{
  v2 = (v1 + *result);
  v3 = *v2;
  if (*v2)
  {
    v4 = v2[1];
    v5 = sub_1BD0D44B8(*v2, v4);
    v3(v5);

    sub_1BD0D4744(v3, v4, v6, v7, v8, v9, v10, v11);
  }
}

void sub_1BD873698(void *a1)
{
  v1 = a1;
  sub_1BD873624();
}

id sub_1BD8736E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = *MEMORY[0x1E69E7D40];
  v7 = (v4 + qword_1EBD56240);
  *v7 = 0;
  v7[1] = 0;
  v8 = (v4 + qword_1EBD56248[0]);
  *v8 = 0;
  v8[1] = 0;
  v9 = type metadata accessor for PaymentSetupDockView.Coordinator(0, *((v6 & v5) + 0x50), *((v6 & v5) + 0x58), a4);
  v11.receiver = v4;
  v11.super_class = v9;
  return objc_msgSendSuper2(&v11, sel_init);
}

id sub_1BD873794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for PaymentSetupDockView.Coordinator(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), *((*MEMORY[0x1E69E7D40] & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

void sub_1BD873804(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  sub_1BD0D4744(*(a1 + qword_1EBD56240), *(a1 + qword_1EBD56240 + 8), a3, a4, a5, a6, a7, a8);
  v15 = *(a1 + qword_1EBD56248[0]);
  v16 = *(a1 + qword_1EBD56248[0] + 8);

  sub_1BD0D4744(v15, v16, v9, v10, v11, v12, v13, v14);
}

void sub_1BD873870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PaymentSetupDockView.Coordinator(319, *(a1 + 16), *(a1 + 24), a4);
  if (v4 <= 0x3F)
  {
    type metadata accessor for PKPaymentSetupContext(319);
    if (v5 <= 0x3F)
    {
      sub_1BE0534B4();
      if (v6 <= 0x3F)
      {
        sub_1BD1C2DD8(319, &qword_1EBD4F750, MEMORY[0x1E69E6158]);
        if (v7 <= 0x3F)
        {
          sub_1BD873DE0(319);
          if (v8 <= 0x3F)
          {
            sub_1BD1C2DD8(319, &qword_1EBD502A8, MEMORY[0x1E69E7DE0]);
            if (v9 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1BD873990(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  v9 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v9;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_33;
  }

  v10 = ((((((v9 + ((v8 + 16) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8) + 9;
  v11 = (a2 - v7 + 255) >> 8;
  if (v10 <= 3)
  {
    v12 = v11 + 1;
  }

  else
  {
    v12 = 2;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *&a1[v10];
      if (!*&a1[v10])
      {
        goto LABEL_33;
      }
    }

    else
    {
      v15 = *&a1[v10];
      if (!v15)
      {
        goto LABEL_33;
      }
    }
  }

  else if (!v14 || (v15 = a1[v10]) == 0)
  {
LABEL_33:
    if ((v6 & 0x80000000) != 0)
    {
      v20 = (*(v4 + 48))((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v8 + 8) & ~v8);
      if (v20 >= 2)
      {
        return v20 - 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v19 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }
  }

  v17 = (v15 - 1) << (8 * v10);
  if (v10 <= 3)
  {
    v18 = *a1;
  }

  else
  {
    v17 = 0;
    v18 = *a1;
  }

  return v7 + (v18 | v17) + 1;
}

void sub_1BD873B38(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(v7 + 80);
  v12 = *(*(*(a4 + 16) - 8) + 64);
  if (!v8)
  {
    ++v12;
  }

  v13 = ((((((((v11 + 16) & ~v11) + v12) & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v10 < a3)
  {
    v14 = (a3 - v10 + 255) >> 8;
    if (v13 <= 3)
    {
      v15 = v14 + 1;
    }

    else
    {
      v15 = 2;
    }

    if (v15 >= 0x10000)
    {
      v16 = 4;
    }

    else
    {
      v16 = 2;
    }

    if (v15 < 0x100)
    {
      v16 = 1;
    }

    if (v15 >= 2)
    {
      v6 = v16;
    }

    else
    {
      v6 = 0;
    }
  }

  if (v10 >= a2)
  {
    if (v6 > 1)
    {
      if (v6 != 2)
      {
        *&a1[v13] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_38;
      }

      *&a1[v13] = 0;
    }

    else if (v6)
    {
      a1[v13] = 0;
      if (!a2)
      {
        return;
      }

LABEL_38:
      if ((v9 & 0x80000000) != 0)
      {
        v20 = ((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v11 + 8) & ~v11);
        if (v9 >= a2)
        {
          v24 = *(v7 + 56);
          v25 = a2 + 1;
          v26 = (((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v11 + 8) & ~v11;

          v24(v26, v25);
        }

        else
        {
          if (v12 <= 3)
          {
            v21 = ~(-1 << (8 * v12));
          }

          else
          {
            v21 = -1;
          }

          if (v12)
          {
            v22 = v21 & (~v9 + a2);
            if (v12 <= 3)
            {
              v23 = v12;
            }

            else
            {
              v23 = 4;
            }

            bzero(v20, v12);
            if (v23 > 2)
            {
              if (v23 == 3)
              {
                *v20 = v22;
                v20[2] = BYTE2(v22);
              }

              else
              {
                *v20 = v22;
              }
            }

            else if (v23 == 1)
            {
              *v20 = v22;
            }

            else
            {
              *v20 = v22;
            }
          }
        }
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v19 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v19 = a2 - 1;
        }

        *a1 = v19;
      }

      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  v17 = ~v10 + a2;
  bzero(a1, v13);
  if (v13 <= 3)
  {
    v18 = (v17 >> 8) + 1;
  }

  else
  {
    v18 = 1;
  }

  if (v13 <= 3)
  {
    *a1 = v17;
    if (v6 > 1)
    {
LABEL_26:
      if (v6 == 2)
      {
        *&a1[v13] = v18;
      }

      else
      {
        *&a1[v13] = v18;
      }

      return;
    }
  }

  else
  {
    *a1 = v17;
    if (v6 > 1)
    {
      goto LABEL_26;
    }
  }

  if (v6)
  {
    a1[v13] = v18;
  }
}

void sub_1BD873DE0(uint64_t a1)
{
  if (!qword_1EBD56350)
  {
    type metadata accessor for PKPrivacyLinkContext(255);
    v1 = sub_1BE0534B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD56350);
    }
  }
}

void sub_1BD873E54(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 + 16);
  v7 = sub_1BE0534B4();
  v71 = *(v7 - 8);
  v72 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v65 - v8;
  v74 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v69 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v70 = &v65 - v13;
  v14 = sub_1BE04BD74();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v2 + *(a2 + 64));
  [a1 setButtonsEnabled_];
  v73 = *v2;
  if (*(v73 + qword_1EBD56240) && (v20 = [a1 primaryButton]) != 0)
  {
    v21 = v20;
    v68 = v19;
    [v20 removeTarget:0 action:0 forControlEvents:0x2000];
    [v21 addTarget:v73 action:sel_continueButtonPressed forControlEvents:0x2000];
    v22 = *(v3 + *(a2 + 48) + 8);
    v66 = a1;
    v67 = v6;
    if (v22)
    {
      v23 = v22;
    }

    else
    {
      (*(v15 + 104))(v18, *MEMORY[0x1E69B80D8], v14);
      v24 = PKPassKitBundle();
      if (!v24)
      {
LABEL_32:
        __break(1u);
        return;
      }

      v25 = v24;
      sub_1BE04B6F4();
      v23 = v26;

      (*(v15 + 8))(v18, v14);
    }

    sub_1BE048C84();
    v27 = v21;
    v28 = sub_1BE052404();
    [v27 setTitle:v28 forState:0];

    if ((sub_1BE051C54() & 1) != 0 && *(v3 + *(a2 + 44)) == 1)
    {
      v23, v29, v30, v31, v32, v33, v34, v35;
      v36 = v27;
      v37 = sub_1BE052404();
    }

    else
    {
      v38 = v27;
      v37 = sub_1BE052404();
      v23, v39, v40, v41, v42, v43, v44, v45;
    }

    a1 = v66;
    v19 = v68;
    [v27 setTitle:v37 forState:2];

    [v27 setEnabled_];
    [v27 setShowSpinner_];

    v6 = v67;
  }

  else
  {
    [a1 setPrimaryButton_];
  }

  v46 = [a1 footerView];
  if (v46)
  {
    v47 = v46;
    if (*(v73 + qword_1EBD56248))
    {
      v48 = [v46 setUpLaterButton];
      v49 = v48;
      if (*(v3 + *(a2 + 56) + 8))
      {
        if (v48)
        {
          v68 = v19;
          v50 = v48;
          v51 = sub_1BE052404();
          [v50 setTitle:v51 forStates:0];

          v19 = v68;
LABEL_20:
          [v49 removeTarget:0 action:0 forControlEvents:0x2000];
          [v49 addTarget:v73 action:sel_setUpLaterButtonPressed forControlEvents:0x2000];
        }
      }

      else if (v48)
      {
        goto LABEL_20;
      }
    }

    else
    {
      [v46 setSetUpLaterButton_];
    }

    [v47 setManualEntryButton_];
    [v47 setButtonsEnabled_];
  }

  v52 = v3 + *(a2 + 60);
  if ((v52[8] & 1) == 0)
  {
    v53 = [objc_opt_self() pk:*v52 privacyLinkForContext:?];
    [a1 setPrivacyLink_];
  }

  v55 = v71;
  v54 = v72;
  (*(v71 + 16))(v9, v3 + *(a2 + 40), v72);
  v56 = v74;
  if ((*(v74 + 48))(v9, 1, v6) == 1)
  {
    (*(v55 + 8))(v9, v54);
    return;
  }

  v57 = a1;
  v58 = v70;
  (*(v56 + 32))(v70, v9, v6);
  sub_1BE04F8C4();
  (*(v56 + 16))(v69, v58, v6);
  v59 = sub_1BE04F884();
  v60 = [v59 view];
  if (!v60)
  {
    __break(1u);
    goto LABEL_32;
  }

  v61 = v60;
  v62 = [objc_opt_self() clearColor];
  [v61 setBackgroundColor_];

  v63 = [v59 view];
  [v57 setAdditionalView_];

  v64 = (v3 + *(a2 + 68));
  if (v64[1])
  {
    (*(v74 + 8))(v70, v6);
  }

  else
  {
    [v57 setAdditionalViewBottomPadding_];

    (*(v74 + 8))(v70, v6);
  }
}

id sub_1BD8745D8(uint64_t a1)
{
  result = [objc_allocWithZone(PKPaymentSetupDockView) initWithFrame:*(v1 + 8) context:{0.0, 0.0, 0.0, 0.0}];
  if (result)
  {
    v4 = result;
    sub_1BD873E54(result, a1);
    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD874650(void *a1)
{
  objc_allocWithZone(type metadata accessor for JPKIInternalClientWrapper(0));
  v3 = a1;
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1BD87470C;

  return JPKIInternalClientWrapper.init(_:)(v3);
}

uint64_t sub_1BD87470C(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t JPKIInternalClientWrapper.__allocating_init(_:)(uint64_t a1)
{
  objc_allocWithZone(v1);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1BD87633C;

  return JPKIInternalClientWrapper.init(_:)(a1);
}

uint64_t type metadata accessor for JPKIInternalClientWrapper(uint64_t a1)
{
  result = qword_1EBD56388;
  if (!qword_1EBD56388)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BD874A78(void *a1, void *aBlock)
{
  *(v2 + 16) = _Block_copy(aBlock);
  objc_allocWithZone(type metadata accessor for JPKIInternalClientWrapper(0));
  v4 = a1;
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  *v5 = v2;
  v5[1] = sub_1BD874B40;

  return JPKIInternalClientWrapper.init(_:)(v4);
}

uint64_t sub_1BD874B40(void *a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  (v3)[2](v3, a1);
  _Block_release(v3);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t JPKIInternalClientWrapper.init(_:)(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_1BE052184();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v4 = sub_1BE052164();
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v5 = sub_1BE04D214();
  v2[14] = v5;
  v2[15] = *(v5 - 8);
  v2[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56358, &qword_1BE0FED38);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56360, &unk_1BE0FED40);
  v2[20] = swift_task_alloc();
  v6 = sub_1BE052134();
  v2[21] = v6;
  v2[22] = *(v6 - 8);
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD874EF0, 0, 0);
}

uint64_t sub_1BD874EF0()
{
  v1 = [*(v0 + 32) secureElementPass];
  *(v0 + 208) = v1;
  if (v1)
  {
    v2 = v1;
    if ([v1 isDevicePrimaryPaymentApplicationPersonalized])
    {
      v3 = [v2 devicePrimaryPaymentApplication];
      if (v3)
      {
        v4 = v3;
        v5 = [v3 paymentNetworkIdentifier];

        v6 = *(v0 + 32);
        if (v5 == 138)
        {
          v7 = [*(v0 + 32) uniqueID];
          if (v7)
          {
            v8 = *(v0 + 40);
            v9 = v7;
            sub_1BE052434();

            sub_1BE0521B4();
            swift_allocObject();
            v10 = sub_1BE052194();
            v11 = OBJC_IVAR____PKJPKIInternalClientWrapper_internalClient;
            *(v0 + 216) = v10;
            *(v0 + 224) = v11;
            *(v8 + v11) = v10;
            sub_1BE048964();
            v12 = swift_task_alloc();
            *(v0 + 232) = v12;
            *v12 = v0;
            v12[1] = sub_1BD8751C0;
            v13 = *(v0 + 160);

            return MEMORY[0x1EEE32E00](v13);
          }

          goto LABEL_10;
        }
      }

      else
      {
        v6 = *(v0 + 32);
      }

      goto LABEL_13;
    }

LABEL_10:

    v6 = v2;
    goto LABEL_13;
  }

  v6 = *(v0 + 32);
LABEL_13:

  type metadata accessor for JPKIInternalClientWrapper(0);
  swift_deallocPartialClassInstance();

  v14 = *(v0 + 8);

  return v14(0);
}

uint64_t sub_1BD8751C0()
{
  v1 = *(*v0 + 216);

  v1, v2, v3, v4, v5, v6, v7, v8;

  return MEMORY[0x1EEE6DFA0](sub_1BD8752D8, 0, 0);
}

uint64_t sub_1BD8752D8()
{
  receiver = v0[10].receiver;
  result = swift_getEnumCaseMultiPayload();
  if (result != 1)
  {
    v22 = *receiver;
    v87 = *receiver;
    v89 = *(*receiver + 16);
    if (v89)
    {
      v23 = 0;
      super_class = v0[5].super_class;
      v25 = v0[3].super_class;
      log = *MEMORY[0x1E69C8668];
      v80 = (v25 + 104);
      v26 = (v25 + 8);
      while (v23 < v22[2])
      {
        v27 = v0[4].super_class;
        v28 = v0[4].receiver;
        v29 = v0[3].receiver;
        (*(super_class + 2))(v0[6].super_class, v22 + ((*(super_class + 80) + 32) & ~*(super_class + 80)) + *(super_class + 9) * v23, v0[5].receiver);
        sub_1BE052154();
        (*v80)(v28, log, v29);
        v30 = sub_1BE052174();
        v31 = *v26;
        (*v26)(v28, v29);
        v31(v27, v29);
        if (v30)
        {
          (*(v0[5].super_class + 4))(v0[9].receiver, v0[6].super_class, v0[5].receiver);
          v32 = 0;
          v22 = v87;
          goto LABEL_13;
        }

        ++v23;
        result = (*(super_class + 1))(v0[6].super_class, v0[5].receiver);
        v22 = v87;
        if (v89 == v23)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_9:
      v32 = 1;
LABEL_13:
      v44 = v0[9].receiver;
      v45 = v0[2].super_class;
      v79 = *(v0[5].super_class + 7);
      v79(v44, v32, 1, v0[5].receiver);
      result = sub_1BD875E08(v44, v45 + OBJC_IVAR____PKJPKIInternalClientWrapper_userCertificateInfo);
      if (!v89)
      {
LABEL_18:

        v22, v55, v56, v57, v58, v59, v60, v61;
        v62 = 1;
LABEL_20:
        v74 = v0[8].super_class;
        v76 = v0[2].receiver;
        v75 = v0[2].super_class;
        v79(v74, v62, 1, v0[5].receiver);
        sub_1BD875E08(v74, v75 + OBJC_IVAR____PKJPKIInternalClientWrapper_signingCertificateInfo);
        v77 = type metadata accessor for JPKIInternalClientWrapper(0);
        v0[1].receiver = v75;
        v0[1].super_class = v77;
        v90 = objc_msgSendSuper2(v0 + 1, sel_init);

        goto LABEL_21;
      }

      v46 = 0;
      v47 = v0[5].super_class;
      v48 = v0[3].super_class;
      loga = *MEMORY[0x1E69C8670];
      v81 = (v48 + 104);
      v49 = (v48 + 8);
      while (v46 < v22[2])
      {
        v50 = v0[4].super_class;
        v51 = v0[4].receiver;
        v52 = v0[3].receiver;
        (*(v47 + 2))(v0[6].receiver, v22 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 9) * v46, v0[5].receiver);
        sub_1BE052154();
        (*v81)(v51, loga, v52);
        v53 = sub_1BE052174();
        v54 = *v49;
        (*v49)(v51, v52);
        v54(v50, v52);
        if (v53)
        {
          v63 = v0[8].super_class;
          v64 = v0[5].super_class;
          v65 = v0[6].receiver;
          v66 = v0[5].receiver;

          v87, v67, v68, v69, v70, v71, v72, v73;
          (*(v64 + 4))(v63, v65, v66);
          v62 = 0;
          goto LABEL_20;
        }

        ++v46;
        result = (*(v47 + 1))(v0[6].receiver, v0[5].receiver);
        v22 = v87;
        if (v89 == v46)
        {
          goto LABEL_18;
        }
      }
    }

    __break(1u);
    return result;
  }

  v4 = v0[12].receiver;
  v3 = v0[12].super_class;
  v6 = v0[11].receiver;
  v5 = v0[11].super_class;
  v7 = v0[10].super_class;
  v8 = v6[4];
  v8(v3, receiver, v7);
  sub_1BD875DB0();
  swift_willThrowTypedImpl();
  v8(v4, v3, v7);
  sub_1BE04D1E4();
  v9 = v6[2];
  v9(v5, v4, v7);
  v10 = sub_1BE04D204();
  v11 = sub_1BE052C54();
  v12 = os_log_type_enabled(v10, v11);
  v14 = v0[11].receiver;
  v13 = v0[11].super_class;
  v15 = v0[10].super_class;
  v16 = v0[2].receiver;
  if (v12)
  {
    v86 = v0[13].receiver;
    v85 = v11;
    v17 = swift_slowAlloc();
    logb = v10;
    v18 = swift_slowAlloc();
    *v17 = 138412290;
    swift_allocError();
    v88 = v16;
    v9(v19, v13, v15);
    v20 = _swift_stdlib_bridgeErrorToNSError();
    v21 = v14[1];
    v21(v13, v15);
    *(v17 + 4) = v20;
    *v18 = v20;
    _os_log_impl(&dword_1BD026000, logb, v85, "JPKIInternalClientWrapper failed to retrieve installed certificates: %@", v17, 0xCu);
    sub_1BD0DE53C(v18, &unk_1EBD3E590, &unk_1BE0B7E50);
    MEMORY[0x1BFB45F20](v18, -1, -1);
    MEMORY[0x1BFB45F20](v17, -1, -1);
  }

  else
  {

    v21 = v14[1];
    v21(v13, v15);
  }

  v33 = v0[14].receiver;
  v34 = v0[12].receiver;
  v35 = v0[10].super_class;
  v36 = v0[2].super_class;
  (*(v0[7].super_class + 1))(v0[8].receiver, v0[7].receiver);
  v21(v34, v35);
  *&v33[v36], v37, v38, v39, v40, v41, v42, v43;
  type metadata accessor for JPKIInternalClientWrapper(0);
  swift_deallocPartialClassInstance();
  v90 = 0;
LABEL_21:

  v78 = v0->super_class;

  return v78(v90);
}

uint64_t sub_1BD8759F4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56358, &qword_1BE0FED38);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - v4;
  sub_1BD875E78(v1 + *a1, &v10 - v4);
  v6 = sub_1BE052164();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1BD0DE53C(v5, &qword_1EBD56358, &qword_1BE0FED38);
    return 0;
  }

  else
  {
    v9 = sub_1BE052144();
    (*(v7 + 8))(v5, v6);
    return v9;
  }
}

uint64_t sub_1BD875B2C(char *a1, uint64_t a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56358, &qword_1BE0FED38);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v13 - v6;
  sub_1BD875E78(&a1[*a3], &v13 - v6);
  v8 = sub_1BE052164();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1BD0DE53C(v7, &qword_1EBD56358, &qword_1BE0FED38);
    return 0;
  }

  else
  {
    v11 = a1;
    v10 = sub_1BE052144();

    (*(v9 + 8))(v7, v8);
  }

  return v10;
}

id JPKIInternalClientWrapper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id JPKIInternalClientWrapper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JPKIInternalClientWrapper(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1BD875DB0()
{
  result = qword_1EBD56370;
  if (!qword_1EBD56370)
  {
    sub_1BE052134();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD56370);
  }

  return result;
}

uint64_t sub_1BD875E08(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56358, &qword_1BE0FED38);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD875E78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56358, &qword_1BE0FED38);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1BD875EF0(uint64_t a1)
{
  sub_1BD876230(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of static JPKIInternalClientWrapper.instantiate(pass:)(uint64_t a1)
{
  v6 = (*(v1 + 104) + **(v1 + 104));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1BD87470C;

  return v6(a1);
}

uint64_t dispatch thunk of JPKIInternalClientWrapper.__allocating_init(_:)(uint64_t a1)
{
  v6 = (*(v1 + 112) + **(v1 + 112));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1BD87633C;

  return v6(a1);
}

void sub_1BD876230(uint64_t a1)
{
  if (!qword_1EBD56398)
  {
    sub_1BE052164();
    v1 = sub_1BE0534B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD56398);
    }
  }
}

uint64_t sub_1BD876288()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1BD0F985C;

  return sub_1BD874A78(v2, v3);
}

uint64_t type metadata accessor for IdentityPassVendor(uint64_t a1)
{
  result = qword_1EBD563A0;
  if (!qword_1EBD563A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BD8763B4(uint64_t a1)
{
  result = type metadata accessor for Passes(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1BD876420@<X0>(unint64_t a1@<X0>, void *a2@<X2>, void *a3@<X4>, unint64_t a4@<X5>, void *a5@<X6>, uint64_t a6@<X8>)
{
  v436 = a5;
  v419 = a6;
  v418 = type metadata accessor for Passes(0);
  MEMORY[0x1EEE9AC00](v418);
  v417 = &v416 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F190, &qword_1BE0C5788);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v420 = &v416 - v12;
  v447 = type metadata accessor for UnavailablePass(0);
  v433 = *(v447 - 8);
  MEMORY[0x1EEE9AC00](v447);
  v448 = &v416 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0, &qword_1BE0B9840);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v416 = &v416 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v423 = &v416 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v421 = &v416 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v422 = &v416 - v21;
  v454 = type metadata accessor for WrappedPass(0);
  MEMORY[0x1EEE9AC00](v454);
  v446 = (&v416 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v23);
  v445 = (&v416 - v24);
  MEMORY[0x1EEE9AC00](v25);
  v449 = &v416 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v416 - v28;
  v462 = type metadata accessor for IdentityCredential(0);
  v466 = *(v462 - 8);
  MEMORY[0x1EEE9AC00](v462);
  v31 = (&v416 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v32);
  v464 = (&v416 - v33);
  v452 = type metadata accessor for AvailablePass(0);
  v450 = *(v452 - 8);
  MEMORY[0x1EEE9AC00](v452);
  v424 = &v416 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v416 - v36;
  a3, v38, v39, v40, v41, v42, v43, v44;
  a2, v45, v46, v47, v48, v49, v50, v51;
  v57 = a4 >> 62;
  if (a4 >> 62)
  {
LABEL_134:
    v58 = sub_1BE053704();
  }

  else
  {
    v58 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v465 = a1;
  v451 = a4;
  v457 = v29;
  v455 = v57;
  if (v58)
  {
    v478 = MEMORY[0x1E69E7CC0];
    v463 = v58;
    sub_1BD531B28(0, (v58 & ~(v58 >> 63)), 0, v52, v53, v54, v55, v56);
    v59 = v463;
    if ((v463 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_136:
      v31 = sub_1BE053704();
      goto LABEL_104;
    }

    v60 = 0;
    v29 = v478;
    v467 = a4 & 0xC000000000000001;
    do
    {
      if (v467)
      {
        v61 = MEMORY[0x1BFB40900](v60, a4);
      }

      else
      {
        v61 = *(a4 + 8 * v60 + 32);
      }

      v62 = v61;
      v63 = [v61 uniqueID];
      if (v63)
      {
        v69 = v63;
        v70 = sub_1BE052434();
        v72 = v71;

        v59 = v463;
      }

      else
      {
        v70 = 0;
        v72 = 0;
      }

      v478 = v29;
      v74 = *(v29 + 16);
      v73 = *(v29 + 24);
      if (v74 >= v73 >> 1)
      {
        sub_1BD531B28((v73 > 1), (v74 + 1), 1, v64, v65, v66, v67, v68);
        v59 = v463;
        v29 = v478;
      }

      ++v60;
      *(v29 + 16) = v74 + 1;
      v75 = (v29 + 24 * v74);
      v75[4] = v70;
      v75[5] = v72;
      v75[6] = v62;
      a4 = v451;
    }

    while (v59 != v60);
    a1 = v465;
    goto LABEL_17;
  }

  v29 = MEMORY[0x1E69E7CC0];
  if (*(MEMORY[0x1E69E7CC0] + 16))
  {
LABEL_17:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD48E20, &unk_1BE0DD6B0);
    v76 = sub_1BE053A04();
    goto LABEL_18;
  }

  v76 = MEMORY[0x1E69E7CC8];
LABEL_18:
  v478 = v76;
  v57 = 0;
  sub_1BD878520(v29, 1, &v478, v52, v53, v54, v55, v56);
  v84 = v457;
  v85 = v478;
  a4 = *(a1 + 16);
  v467 = a4;
  if (a4)
  {
    v460 = 0;
    v478 = MEMORY[0x1E69E7CC0];
    sub_1BD531A40(0, a4, 0);
    v456 = v478;
    v29 = a1 + ((v466[80] + 32) & ~v466[80]);
    v459 = v466 + 56;
    v458 = *(v466 + 9);
    v461 = v85;
    do
    {
      v463 = a4;
      v86 = v464;
      sub_1BD878960(v29, v464, type metadata accessor for IdentityCredential);
      v87 = (v86 + *(v462 + 32));
      v88 = v87[1];
      if (v88 && v85[2] && (v89 = *v87, sub_1BE048C84(), v90 = sub_1BD149194(v89, v88), v92 = v91, v88, v91, v93, v94, v95, v96, v97, v98, (v92 & 1) != 0) && (v99 = [*(v85[7] + 8 * v90) paymentPass]) != 0)
      {
        *v84 = v99;
      }

      else
      {
        v100 = v84;
        v101 = (v464 + *(v462 + 24));
        v103 = *v101;
        v102 = v101[1];
        v104 = *v464;
        v105 = v464[1];
        v106 = qword_1EBD370E8;
        sub_1BE048C84();
        sub_1BE048C84();
        if (v106 != -1)
        {
          swift_once();
        }

        v107 = sub_1BE04CF34();
        v108 = __swift_project_value_buffer(v107, qword_1EBDAB9C0);
        v109 = type metadata accessor for PlaceholderPass(0);
        (*(*(v107 - 8) + 16))(&v100[*(v109 + 28)], v108, v107);
        *v100 = v103;
        *(v100 + 1) = v102;
        *(v100 + 2) = v104;
        *(v100 + 3) = v105;
        v84 = v100;
        *(v100 + 4) = 4;
      }

      swift_storeEnumTagMultiPayload();
      v110 = v449;
      sub_1BD878960(v84, v449, type metadata accessor for WrappedPass);
      v111 = v464;
      sub_1BD878960(v464, v31, type metadata accessor for IdentityCredential);
      sub_1BD878960(v110, v37, type metadata accessor for WrappedPass);
      v112 = v452;
      v113 = *(v452 + 24);
      sub_1BD878960(v31, v37 + v113, type metadata accessor for IdentityCredential);
      (*v459)(v37 + v113, 0, 1, v462);
      v114 = MEMORY[0x1E69E7CC0];
      *(v37 + v112[14]) = MEMORY[0x1E69E7CC0];
      sub_1BD878A30(v31, type metadata accessor for IdentityCredential);
      sub_1BD878A30(v110, type metadata accessor for WrappedPass);
      sub_1BD878A30(v84, type metadata accessor for WrappedPass);
      sub_1BD878A30(v111, type metadata accessor for IdentityCredential);
      *(v37 + v112[15]) = v114;
      *(v37 + v112[5]) = 0;
      v115 = v112[7];
      v116 = type metadata accessor for BalanceInfo(0);
      (*(*(v116 - 8) + 56))(v37 + v115, 1, 1, v116);
      v117 = (v37 + v112[8]);
      *v117 = 0;
      v117[1] = 0;
      *(v37 + v112[9]) = 0;
      v118 = v112[10];
      v119 = type metadata accessor for PassEligibleRewardsInfo(0);
      (*(*(v119 - 8) + 56))(v37 + v118, 1, 1, v119);
      v120 = (v37 + v112[12]);
      *(v120 + 25) = 0u;
      *v120 = 0u;
      v120[1] = 0u;
      v121 = v37 + v112[13];
      *(v121 + 32) = 0;
      *v121 = 0u;
      *(v121 + 16) = 0u;
      *(v37 + v112[11]) = 2;
      v122 = v456;
      v478 = v456;
      v124 = v456[2];
      v123 = v456[3];
      v125 = v463;
      if (v124 >= v123 >> 1)
      {
        sub_1BD531A40((v123 > 1), v124 + 1, 1);
        v122 = v478;
      }

      *(v122 + 16) = v124 + 1;
      v126 = (*(v450 + 80) + 32) & ~*(v450 + 80);
      v456 = v122;
      sub_1BD8789C8(v37, v122 + v126 + *(v450 + 72) * v124, type metadata accessor for AvailablePass);
      v29 += v458;
      a4 = v125 - 1;
      v85 = v461;
    }

    while (a4);
    v461, v127, v128, v129, v130, v131, v132, v133;
    v141 = v456;
    v57 = v460;
    a4 = v467;
  }

  else
  {
    v478, v77, v78, v79, v80, v81, v82, v83;
    v141 = MEMORY[0x1E69E7CC0];
  }

  v456 = v141;
  v470 = MEMORY[0x1E69E7CC0];
  if (v455)
  {
    v142 = sub_1BE053704();
  }

  else
  {
    v142 = *((v451 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v143 = v465;
  a1 = MEMORY[0x1E69E7CC0];
  if (v142)
  {
    v144 = 0;
    v428 = v451 & 0xC000000000000001;
    v427 = v451 & 0xFFFFFFFFFFFFFF8;
    v426 = (v451 + 32);
    v425 = v142;
    while (1)
    {
      if (v428)
      {
        v240 = v144;
        v160 = MEMORY[0x1BFB40900](v144, v451);
        v161 = __OFADD__(v240, 1);
        a1 = v240 + 1;
        if (v161)
        {
          goto LABEL_96;
        }
      }

      else
      {
        if (v144 >= *(v427 + 16))
        {
          goto LABEL_133;
        }

        v159 = v144;
        v160 = *&v426[8 * v144];
        v161 = __OFADD__(v159, 1);
        a1 = v159 + 1;
        if (v161)
        {
LABEL_96:
          __break(1u);
LABEL_97:
          __break(1u);
          break;
        }
      }

      v432 = a1;
      v431 = v160;
      v162 = [v160 paymentApplications];
      if (!v162)
      {
        goto LABEL_212;
      }

      v163 = v162;
      v29 = sub_1BD0E5E8C(0, &qword_1EBD43BA0, 0x1E69B8B40);
      sub_1BD214890(&qword_1EBD43BB0, &qword_1EBD43BA0, 0x1E69B8B40);
      v37 = sub_1BE052A34();

      v430 = v37;
      if ((v37 & 0xC000000000000001) != 0)
      {
        swift_unknownObjectRetain();
        sub_1BE0536B4();
        sub_1BE052A74();
        v37 = v471;
        a1 = v472;
        v164 = v473;
        v165 = v474;
        v166 = v475;
      }

      else
      {
        v167 = -1 << *(v37 + 32);
        a1 = v37 + 56;
        v168 = ~v167;
        v169 = -v167;
        if (v169 < 64)
        {
          v170 = ~(-1 << v169);
        }

        else
        {
          v170 = -1;
        }

        v166 = v170 & *(v37 + 56);
        sub_1BE048C84();
        v164 = v168;
        v165 = 0;
      }

      v429 = v164;
      v171 = (v164 + 64) >> 6;
      v437 = v171;
      v438 = v29;
      v440 = a1;
      v439 = v37;
      if (v37 < 0)
      {
        goto LABEL_51;
      }

LABEL_54:
      v174 = v165;
      v175 = v166;
      v176 = v165;
      if (!v166)
      {
        while (1)
        {
          v176 = v174 + 1;
          if (__OFADD__(v174, 1))
          {
            break;
          }

          if (v176 >= v171)
          {
            goto LABEL_93;
          }

          v175 = *(a1 + 8 * v176);
          ++v174;
          if (v175)
          {
            goto LABEL_58;
          }
        }

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

LABEL_58:
      v177 = __clz(__rbit64(v175));
      v441 = (v175 - 1) & v175;
      v178 = *(v37 + 48);
      v442 = v176;
      v173 = *(v178 + ((v176 << 9) | (8 * v177)));
      if (!v173)
      {
        goto LABEL_93;
      }

      do
      {
        v463 = v173;
        v179 = [v173 subcredentials];
        if (!v179)
        {
          goto LABEL_211;
        }

        v180 = v179;
        v434 = v165;
        v435 = v166;
        v181 = sub_1BD0E5E8C(0, &qword_1EBD398B8, 0x1E69B85A0);
        sub_1BD214890(&qword_1EBD474E0, &qword_1EBD398B8, 0x1E69B85A0);
        v37 = sub_1BE052A34();

        v444 = v37;
        v453 = v181;
        if ((v37 & 0xC000000000000001) != 0)
        {
          swift_unknownObjectRetain();
          sub_1BE0536B4();
          sub_1BE052A74();
          v29 = v476;
          a1 = v477[0];
          v182 = v477[1];
          v183 = v477[2];
          v184 = v477[3];
        }

        else
        {
          v185 = -1 << *(v37 + 32);
          a1 = v37 + 56;
          v186 = ~v185;
          v187 = -v185;
          if (v187 < 64)
          {
            v188 = ~(-1 << v187);
          }

          else
          {
            v188 = -1;
          }

          v189 = v188 & *(v37 + 56);
          sub_1BE048C84();
          v184 = v189;
          v182 = v186;
          v29 = v37;
          v183 = 0;
        }

        v443 = v182;
        v190 = ((v182 + 64) >> 6);
        v459 = a1;
        v458 = v29;
        v457 = v190;
        while (1)
        {
          v210 = v184;
          v461 = v183;
          if (v29 < 0)
          {
            break;
          }

          v211 = v183;
          if (!v184)
          {
            while (1)
            {
              v183 = v211 + 1;
              if (__OFADD__(v211, 1))
              {
                break;
              }

              if (v183 >= v190)
              {
                v219 = v463;
                goto LABEL_89;
              }

              v184 = *(a1 + 8 * v183);
              ++v211;
              if (v184)
              {
                goto LABEL_74;
              }
            }

            __break(1u);
            goto LABEL_130;
          }

LABEL_74:
          v464 = ((v184 - 1) & v184);
          v29 = *(*(v29 + 48) + ((v183 << 9) | (8 * __clz(__rbit64(v184)))));
LABEL_77:
          v219 = v463;
          if (!v29)
          {
            v29 = v458;
            goto LABEL_89;
          }

          v455 = v210;
          if (a4)
          {
            v460 = v57;
            v478 = MEMORY[0x1E69E7CC0];
            sub_1BD531B48(0, a4, 0, v212, v213, v214, v215, v216);
            v57 = 0;
            v220 = v478;
            v221 = v143 + ((v466[80] + 32) & ~v466[80]);
            while (v57 < v143[2])
            {
              sub_1BD878960(&v221[*(v466 + 9) * v57], v31, type metadata accessor for IdentityCredential);
              v222 = *v31;
              a1 = v31[1];
              sub_1BE048C84();
              sub_1BD878A30(v31, type metadata accessor for IdentityCredential);
              v478 = v220;
              v224 = v220[2];
              v223 = v220[3];
              a4 = v224 + 1;
              if (v224 >= v223 >> 1)
              {
                sub_1BD531B48((v223 > 1), (v224 + 1), 1, v136, v137, v138, v139, v140);
                v220 = v478;
              }

              ++v57;
              v220[2] = a4;
              v225 = &v220[2 * v224];
              v225[4] = v222;
              v225[5] = a1;
              v143 = v465;
              if (v467 == v57)
              {
                v57 = v460;
                goto LABEL_86;
              }
            }

            goto LABEL_97;
          }

          v220 = MEMORY[0x1E69E7CC0];
LABEL_86:
          v195 = [v29 identifier];
          if (v195)
          {
            v191 = v195;
            v192 = sub_1BE052434();
            v194 = v193;
          }

          else
          {
            v192 = 0;
            v194 = 0;
          }

          v478 = v192;
          v479 = v194;
          MEMORY[0x1EEE9AC00](v195);
          *(&v416 - 2) = &v478;
          v37 = sub_1BD2FF130(sub_1BD878940, (&v416 - 4), v220);
          v220, v196, v197, v198, v199, v200, v201, v202;

          v194, v203, v204, v205, v206, v207, v208, v209;
          a4 = v467;
          a1 = v459;
          v29 = v458;
          v190 = v457;
          v184 = v464;
          if (v37)
          {

            sub_1BD5F0644(v29);
            v444, v145, v146, v147, v148, v149, v150, v151;
            sub_1BD5F0644(v439);
            v430, v152, v153, v154, v155, v156, v157, v158;
            goto LABEL_39;
          }
        }

        v217 = v184;
        v218 = sub_1BE053744();
        if (v218)
        {
          v469 = v218;
          swift_dynamicCast();
          v29 = v478;
          v210 = v217;
          v464 = v217;
          goto LABEL_77;
        }

        v219 = v463;
LABEL_89:

        sub_1BD5F0644(v29);
        v444, v226, v227, v228, v229, v230, v231, v232;
        v165 = v442;
        v166 = v441;
        v29 = v438;
        a1 = v440;
        v37 = v439;
        v171 = v437;
        if ((v439 & 0x8000000000000000) == 0)
        {
          goto LABEL_54;
        }

LABEL_51:
        v172 = sub_1BE053744();
        if (!v172)
        {
          break;
        }

        v469 = v172;
        swift_dynamicCast();
        v173 = v478;
        v442 = v165;
        v441 = v166;
      }

      while (v478);
LABEL_93:
      sub_1BD5F0644(v37);
      v430, v233, v234, v235, v236, v237, v238, v239;
      sub_1BE0538C4();
      a1 = *(v470 + 16);
      sub_1BE0538F4();
      sub_1BE053904();
      sub_1BE0538D4();
LABEL_39:
      v144 = v432;
      if (v432 == v425)
      {
        v37 = v470;
        a1 = MEMORY[0x1E69E7CC0];
        goto LABEL_101;
      }
    }
  }

  v37 = a1;
LABEL_101:
  v451, v134, v135, v136, v137, v138, v139, v140;
  v143, v241, v242, v243, v244, v245, v246, v247;
  v478 = a1;
  v460 = v57;
  if (v37 < 0 || (v37 & 0x4000000000000000) != 0)
  {
    goto LABEL_136;
  }

  v31 = *(v37 + 16);
LABEL_104:
  v255 = 0;
  v57 = v37 & 0xC000000000000001;
  v256 = MEMORY[0x1E69E7CC0];
  a1 = MEMORY[0x1E69E7CC0];
  while (v31 != v255)
  {
    if (v57)
    {
      v257 = MEMORY[0x1BFB40900](v255, v37);
    }

    else
    {
      if (v255 >= *(v37 + 16))
      {
        goto LABEL_132;
      }

      v257 = *(v37 + 8 * v255 + 32);
    }

    a4 = v257;
    v258 = (v255 + 1);
    if (__OFADD__(v255, 1))
    {
      goto LABEL_131;
    }

    v29 = [v257 paymentPass];

    ++v255;
    if (v29)
    {
      MEMORY[0x1BFB3F7A0]();
      if (*((v478 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v478 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1BE052774();
      }

      sub_1BE0527C4();
      a1 = v478;
      v255 = v258;
    }
  }

  v37, v248, v249, v250, v251, v252, v253, v254;
  if (a1 >> 62)
  {
    v266 = sub_1BE053704();
    v267 = v452;
    if (v266)
    {
      goto LABEL_117;
    }

LABEL_138:
    a1, v259, v260, v261, v262, v263, v264, v265;
    v269 = MEMORY[0x1E69E7CC0];
    goto LABEL_139;
  }

  v266 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v267 = v452;
  if (!v266)
  {
    goto LABEL_138;
  }

LABEL_117:
  v478 = v256;
  sub_1BD5319FC(0, v266 & ~(v266 >> 63), 0);
  if (v266 < 0)
  {
    goto LABEL_210;
  }

  v268 = 0;
  v269 = v478;
  v465 = (a1 & 0xC000000000000001);
  v467 = a1;
  v270 = v448;
  do
  {
    if (v465)
    {
      v271 = MEMORY[0x1BFB40900](v268, a1);
    }

    else
    {
      v271 = *(a1 + 8 * v268 + 32);
    }

    v272 = v271;
    v273 = v445;
    *v445 = v271;
    swift_storeEnumTagMultiPayload();
    sub_1BD878960(v273, v270, type metadata accessor for WrappedPass);
    v274 = v447;
    v275 = (v270 + *(v447 + 20));
    *v275 = 0;
    v275[1] = 0;
    v276 = v272;
    v277 = v436;
    v278 = sub_1BD49ABC8(v273, v277);
    v279 = v270 + *(v274 + 28);
    *v279 = v278;
    *(v279 + 8) = v280;
    *(v279 + 16) = v281;
    sub_1BD878960(v273, v446, type metadata accessor for WrappedPass);
    if (swift_getEnumCaseMultiPayload() > 1)
    {
      sub_1BD878A30(v445, type metadata accessor for WrappedPass);
      v283 = 0;
      v284 = v477;
    }

    else
    {
      v282 = *v446;
      v283 = [*v446 hasAssociatedPeerPaymentAccount];

      v276 = v282;
      v284 = &v476;
    }

    v285 = *(v284 - 32);
    a1 = v467;

    sub_1BD878A30(v285, type metadata accessor for WrappedPass);
    v286 = v448;
    v448[*(v447 + 24)] = v283;
    v478 = v269;
    v288 = v269[2];
    v287 = v269[3];
    if (v288 >= v287 >> 1)
    {
      sub_1BD5319FC((v287 > 1), v288 + 1, 1);
      v286 = v448;
      v269 = v478;
    }

    ++v268;
    v269[2] = v288 + 1;
    sub_1BD8789C8(v286, v269 + ((*(v433 + 80) + 32) & ~*(v433 + 80)) + *(v433 + 72) * v288, type metadata accessor for UnavailablePass);
  }

  while (v266 != v268);
  a1, v289, v290, v291, v292, v293, v294, v295;
  v267 = v452;
LABEL_139:
  v296 = [v436 pass];
  v297 = v456;
  v298 = v456[2];
  v299 = v422;
  v300 = v421;
  v301 = v420;
  if (!v296)
  {
    v386 = v450;
    if (v298)
    {
      sub_1BD878960(v456 + ((*(v450 + 80) + 32) & ~*(v450 + 80)), v422, type metadata accessor for AvailablePass);
      (*(v386 + 56))(v299, 0, 1, v267);
    }

    else
    {
      (*(v450 + 56))(v422, 1, 1, v267);
    }

LABEL_202:
    sub_1BD0DE19C(v299, v423, &qword_1EBD520A0, &qword_1BE0B9840);
    v409 = v416;
    sub_1BD0DE19C(v299, v416, &qword_1EBD520A0, &qword_1BE0B9840);
    if ((*(v386 + 48))(v409, 1, v267) == 1)
    {
      sub_1BD0DE53C(v299, &qword_1EBD520A0, &qword_1BE0B9840);

      v410 = 0;
    }

    else
    {
      v411 = v449;
      sub_1BD878960(v409, v449, type metadata accessor for WrappedPass);
      sub_1BD878A30(v409, type metadata accessor for AvailablePass);
      WrappedPass.devicePrimaryPaymentApplication.getter();
      v410 = v412;

      sub_1BD878A30(v411, type metadata accessor for WrappedPass);
      v409 = v299;
    }

    sub_1BD0DE53C(v409, &qword_1EBD520A0, &qword_1BE0B9840);
    v413 = v417;
    sub_1BD49C65C(v423, v417);
    v414 = v418;
    *(v413 + *(v418 + 20)) = v410;
    *(v413 + v414[7]) = v456;
    *(v413 + v414[9]) = v269;
    *(v413 + v414[10]) = 0;
    *(v413 + v414[11]) = 0;
    *(v413 + v414[6]) = 1;
    *(v413 + v414[8]) = 0;
    return sub_1BD8789C8(v413, v419, type metadata accessor for Passes);
  }

  v302 = v296;
  v303 = v450;
  v304 = v424;
  if (!v298)
  {
LABEL_197:

    v387 = 1;
LABEL_200:
    v386 = v450;
    (*(v450 + 56))(v300, v387, 1, v267);
    sub_1BD49C65C(v300, v299);
    goto LABEL_202;
  }

  v305 = 0;
  v461 = (v456 + ((*(v450 + 80) + 32) & ~*(v450 + 80)));
  v459 = v466 + 48;
  v463 = MEMORY[0x1E69E7CC0] >> 62;
  v454 = v296;
  v458 = v298;
  while (1)
  {
    if (v305 >= v297[2])
    {
      goto LABEL_209;
    }

    v306 = *(v303 + 72);
    v464 = v305;
    sub_1BD878960(v461 + v306 * v305, v304, type metadata accessor for AvailablePass);
    sub_1BD0DE19C(v304 + *(v267 + 24), v301, &qword_1EBD3F190, &qword_1BE0C5788);
    if ((*v459)(v301, 1, v462) != 1)
    {
      break;
    }

    sub_1BD878A30(v304, type metadata accessor for AvailablePass);
    sub_1BD0DE53C(v301, &qword_1EBD3F190, &qword_1BE0C5788);
LABEL_143:
    v305 = v464 + 1;
    v303 = v450;
    v304 = v424;
    v297 = v456;
    if ((v464 + 1) == v458)
    {
      goto LABEL_197;
    }
  }

  v307 = *(v301 + 8);
  v465 = *v301;
  sub_1BE048C84();
  sub_1BD878A30(v301, type metadata accessor for IdentityCredential);
  v308 = [v302 paymentApplications];
  if (v308)
  {
    v309 = v308;
    sub_1BD0E5E8C(0, &qword_1EBD43BA0, 0x1E69B8B40);
    sub_1BD214890(&qword_1EBD43BB0, &qword_1EBD43BA0, 0x1E69B8B40);
    v310 = sub_1BE052A34();
  }

  else
  {
    v311 = MEMORY[0x1E69E7CD0];
    if (v463 && sub_1BE053704())
    {
      sub_1BD111DC0(MEMORY[0x1E69E7CC0]);
      v310 = v385;
    }

    else
    {
      v310 = v311;
    }
  }

  v470 = MEMORY[0x1E69E7CC0];
  v466 = v307;
  v457 = v310;
  if ((v310 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1BE0536B4();
    sub_1BD0E5E8C(0, &qword_1EBD43BA0, 0x1E69B8B40);
    sub_1BD214890(&qword_1EBD43BB0, &qword_1EBD43BA0, 0x1E69B8B40);
    sub_1BE052A74();
    v312 = v479;
    v467 = v478;
    v313 = v480;
    v314 = v481;
    v315 = v482;
  }

  else
  {
    v316 = -1 << *(v310 + 32);
    v312 = v310 + 56;
    v313 = ~v316;
    v317 = -v316;
    if (v317 < 64)
    {
      v318 = ~(-1 << v317);
    }

    else
    {
      v318 = -1;
    }

    v315 = v318 & *(v310 + 56);
    sub_1BE048C84();
    v314 = 0;
    v467 = v310;
  }

  v455 = v313;
  v319 = (v313 + 64) >> 6;
  while ((v467 & 0x8000000000000000) != 0)
  {
    v332 = sub_1BE053744();
    if (!v332 || (v468 = v332, sub_1BD0E5E8C(0, &qword_1EBD43BA0, 0x1E69B8B40), swift_dynamicCast(), (v322 = v469) == 0))
    {
LABEL_173:
      sub_1BD5F0644(v467);
      v457, v336, v337, v338, v339, v340, v341, v342;
      v350 = v470;
      if (v470 >> 62)
      {
        v351 = sub_1BE053704();
      }

      else
      {
        v351 = *((v470 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v267 = v452;
      v352 = v466;
      if (v351)
      {
        v353 = 0;
        v467 = v350 & 0xC000000000000001;
        do
        {
          if (v467)
          {
            v354 = MEMORY[0x1BFB40900](v353, v350);
          }

          else
          {
            if (v353 >= *((v350 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_208;
            }

            v354 = *(v350 + 8 * v353 + 32);
          }

          v355 = v354;
          v356 = v353 + 1;
          if (__OFADD__(v353, 1))
          {
            goto LABEL_207;
          }

          v357 = [v354 identifier];
          if (v357)
          {
            v358 = v357;
            v359 = sub_1BE052434();
            v361 = v360;

            v368 = v359;
            v352 = v466;
            v369 = v368 == v465 && v361 == v466;
            if (v369)
            {
              v466, v362, v465, v363, v364, v365, v366, v367;
              v350, v388, v389, v390, v391, v392, v393, v394;
              v361, v395, v396, v397, v398, v399, v400, v401;

              goto LABEL_199;
            }

            v370 = sub_1BE053B84();
            v361, v371, v372, v373, v374, v375, v376, v377;

            if (v370)
            {
              v352, v343, v344, v345, v346, v347, v348, v349;
              v350, v402, v403, v404, v405, v406, v407, v408;
LABEL_199:
              v267 = v452;

              v300 = v421;
              sub_1BD8789C8(v424, v421, type metadata accessor for AvailablePass);
              v387 = 0;
              v299 = v422;
              goto LABEL_200;
            }
          }

          else
          {
          }

          ++v353;
          v369 = v356 == v351;
          v267 = v452;
        }

        while (!v369);
      }

      v352, v343, v344, v345, v346, v347, v348, v349;
      v350, v378, v379, v380, v381, v382, v383, v384;
      sub_1BD878A30(v424, type metadata accessor for AvailablePass);
      v299 = v422;
      v300 = v421;
      v301 = v420;
      v302 = v454;
      goto LABEL_143;
    }

LABEL_168:
    v333 = [v322 subcredentials];
    if (v333)
    {
      v320 = v333;
      sub_1BD0E5E8C(0, &qword_1EBD398B8, 0x1E69B85A0);
      sub_1BD214890(&qword_1EBD474E0, &qword_1EBD398B8, 0x1E69B85A0);
      v321 = sub_1BE052A34();

      v322 = v320;
    }

    else if (v463 && (v334 = MEMORY[0x1E69E7CC0], sub_1BE053704()))
    {
      sub_1BD111DE4(v334);
      v321 = v335;
    }

    else
    {
      v321 = MEMORY[0x1E69E7CD0];
    }

    sub_1BDA7A3D8(v321, v323, v324, v325, v326, v327, v328, v329);
  }

  v330 = v314;
  v331 = v315;
  if (v315)
  {
LABEL_164:
    v315 = (v331 - 1) & v331;
    v322 = *(*(v467 + 48) + ((v314 << 9) | (8 * __clz(__rbit64(v331)))));
    if (!v322)
    {
      goto LABEL_173;
    }

    goto LABEL_168;
  }

  while (1)
  {
    v314 = v330 + 1;
    if (__OFADD__(v330, 1))
    {
      break;
    }

    if (v314 >= v319)
    {
      goto LABEL_173;
    }

    v331 = *(v312 + 8 * v314);
    ++v330;
    if (v331)
    {
      goto LABEL_164;
    }
  }

  __break(1u);
LABEL_207:
  __break(1u);
LABEL_208:
  __break(1u);
LABEL_209:
  __break(1u);
LABEL_210:
  __break(1u);
LABEL_211:
  __break(1u);
LABEL_212:
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

void sub_1BD878520(void **a1, const char *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v54 = a1[2];
  if (!v54)
  {
    goto LABEL_21;
  }

  LOBYTE(v10) = a2;
  v12 = a1[4];
  v11 = a1[5];
  v13 = a1[6];
  v14 = *a3;
  sub_1BE048C84();
  v15 = v13;
  v16 = sub_1BD149194(v12, v11);
  v17 = v14[2];
  v18 = (a2 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v21 = a2;
  if (v14[3] < v20)
  {
    sub_1BD500648(v20, v10 & 1);
    v16 = sub_1BD149194(v12, v11);
    if ((v21 & 1) == (a2 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A5C8, &qword_1BE0BAA50);
    v16 = sub_1BE053C14();
    __break(1u);
  }

  if (v10)
  {
LABEL_7:
    if (v21)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v38 = v16;
  sub_1BD5063E4();
  v16 = v38;
  if (v21)
  {
LABEL_8:
    v22 = swift_allocError();
    swift_willThrow();
    a1, v23, v24, v25, v26, v27, v28, v29;
    v30 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0, &qword_1BE0BFD10);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v11, v31, v32, v33, v34, v35, v36, v37;

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v39 = *a3;
  *(*a3 + 8 * (v16 >> 6) + 64) |= 1 << v16;
  v40 = (v39[6] + 16 * v16);
  *v40 = v12;
  v40[1] = v11;
  *(v39[7] + 8 * v16) = v15;
  v41 = v39[2];
  v19 = __OFADD__(v41, 1);
  v42 = v41 + 1;
  if (v19)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_1BE053834();
    MEMORY[0x1BFB3F610](0xD00000000000001BLL, 0x80000001BE13DAD0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A5C8, &qword_1BE0BAA50);
    sub_1BE053974();
    MEMORY[0x1BFB3F610](39, 0xE100000000000000);
    sub_1BE053994();
    __break(1u);
    return;
  }

  v39[2] = v42;
  if (v54 != 1)
  {
    v10 = a1 + 9;
    v43 = 1;
    while (v43 < a1[2])
    {
      v12 = *(v10 - 2);
      v11 = *(v10 - 1);
      v44 = *v10;
      v45 = *a3;
      sub_1BE048C84();
      v15 = v44;
      v46 = sub_1BD149194(v12, v11);
      v47 = v45[2];
      v48 = (a2 & 1) == 0;
      v19 = __OFADD__(v47, v48);
      v49 = v47 + v48;
      if (v19)
      {
        goto LABEL_23;
      }

      v21 = a2;
      if (v45[3] < v49)
      {
        sub_1BD500648(v49, 1);
        v46 = sub_1BD149194(v12, v11);
        if ((v21 & 1) != (a2 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v21)
      {
        goto LABEL_8;
      }

      v50 = *a3;
      *(*a3 + 8 * (v46 >> 6) + 64) |= 1 << v46;
      v51 = (v50[6] + 16 * v46);
      *v51 = v12;
      v51[1] = v11;
      *(v50[7] + 8 * v46) = v15;
      v52 = v50[2];
      v19 = __OFADD__(v52, 1);
      v53 = v52 + 1;
      if (v19)
      {
        goto LABEL_24;
      }

      ++v43;
      v50[2] = v53;
      v10 += 3;
      if (v54 == v43)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
  a1, a2, a3, a4, a5, a6, a7, a8;
}

BOOL sub_1BD8788CC(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  result = (v4 | v5) == 0;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if (*a1 == *a2 && v4 == v5)
    {
      return 1;
    }

    else
    {
      return sub_1BE053B84() & 1;
    }
  }

  return result;
}

uint64_t sub_1BD878960(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD8789C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD878A30(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1BD878AA4()
{
  result = qword_1EBD563B0;
  if (!qword_1EBD563B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD563B0);
  }

  return result;
}

id NearbyPeerPaymentSenderVFXViewController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t NearbyPeerPaymentSenderVFXViewController.state.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9PassKitUI40NearbyPeerPaymentSenderVFXViewController_state;
  swift_beginAccess();
  return sub_1BD113234(v1 + v3, a1);
}

uint64_t NearbyPeerPaymentSenderVFXViewController.animationDelegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC9PassKitUI40NearbyPeerPaymentSenderVFXViewController_animationDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*NearbyPeerPaymentSenderVFXViewController.animationDelegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC9PassKitUI40NearbyPeerPaymentSenderVFXViewController_animationDelegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1BD317324;
}

char *NearbyPeerPaymentSenderVFXViewController.init()()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR____TtC9PassKitUI40NearbyPeerPaymentSenderVFXViewController_state];
  *v2 = 0u;
  *(v2 + 1) = 0u;
  *(v2 + 4) = 0;
  *&v0[OBJC_IVAR____TtC9PassKitUI40NearbyPeerPaymentSenderVFXViewController_animationDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v7.receiver = v0;
  v7.super_class = ObjectType;
  v3 = objc_msgSendSuper2(&v7, sel_init);
  v4 = *&v3[OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_unknownAmountEmitter];
  v5 = v3;
  [v4 removeFromParentNode];
  sub_1BD878D88();

  return v5;
}

void sub_1BD878D88()
{
  v17 = 53;
  v16 = MEMORY[0x1E69E6448];
  v1 = MEMORY[0x1E69E6448];
  LODWORD(v15[0]) = 1065353216;
  VFXNode.setBehaviorGraphValue(key:value:)(&v17, v15);
  sub_1BD0DE53C(v15, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v17 = 54;
  v16 = v1;
  LODWORD(v15[0]) = 1032134328;
  VFXNode.setBehaviorGraphValue(key:value:)(&v17, v15);
  sub_1BD0DE53C(v15, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v17 = 2;
  v16 = v1;
  LODWORD(v15[0]) = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(&v17, v15);
  sub_1BD0DE53C(v15, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v17 = 16;
  v2 = objc_opt_self();
  v3 = [v2 valueWithVFXFloat2_];
  v16 = sub_1BD0E5E8C(0, &qword_1EBD4DBD0, 0x1E696B098);
  v4 = v16;
  v15[0] = v3;
  VFXNode.setBehaviorGraphValue(key:value:)(&v17, v15);
  sub_1BD0DE53C(v15, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v17 = 29;
  v5 = [v2 &selRef_removeCachedPaymentOffers + 3];
  v16 = v4;
  v15[0] = v5;
  VFXNode.setBehaviorGraphValue(key:value:)(&v17, v15);
  sub_1BD0DE53C(v15, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v17 = 39;
  v6 = [v2 &selRef_removeCachedPaymentOffers + 3];
  v16 = v4;
  v15[0] = v6;
  VFXNode.setBehaviorGraphValue(key:value:)(&v17, v15);
  sub_1BD0DE53C(v15, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v17 = 16;
  v7 = [v2 &selRef_removeCachedPaymentOffers + 3];
  v16 = v4;
  v15[0] = v7;
  VFXNode.setBehaviorGraphValue(key:value:)(&v17, v15);
  sub_1BD0DE53C(v15, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v8 = *(v0 + OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_blueRingParticles);
  v17 = 16;
  v9 = [v2 &selRef_removeCachedPaymentOffers + 3];
  v16 = v4;
  v15[0] = v9;
  VFXNode.setBehaviorGraphValue(key:value:)(&v17, v15);
  sub_1BD0DE53C(v15, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  [*(v0 + OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_transferParticlesBurstA) setOpacity_];
  [*(v0 + OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_transferParticlesBurstB) setOpacity_];
  v10 = *(v0 + OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_blueRing);
  [v10 setHidden_];
  [v10 setPaused_];
  [v8 setHidden_];
  [v8 setPaused_];
  v17 = 12;
  v11 = MEMORY[0x1E69E6448];
  v16 = MEMORY[0x1E69E6448];
  LODWORD(v15[0]) = 1135869952;
  VFXNode.setBehaviorGraphValue(key:value:)(&v17, v15);
  sub_1BD0DE53C(v15, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v17 = 13;
  v16 = v11;
  LODWORD(v15[0]) = 981668463;
  VFXNode.setBehaviorGraphValue(key:value:)(&v17, v15);
  sub_1BD0DE53C(v15, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v17 = 14;
  v16 = v11;
  LODWORD(v15[0]) = 1048576000;
  VFXNode.setBehaviorGraphValue(key:value:)(&v17, v15);
  sub_1BD0DE53C(v15, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v17 = 52;
  v16 = v11;
  LODWORD(v15[0]) = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(&v17, v15);
  sub_1BD0DE53C(v15, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v17 = 22;
  v16 = v11;
  LODWORD(v15[0]) = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(&v17, v15);
  sub_1BD0DE53C(v15, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v17 = 1;
  v16 = v11;
  LODWORD(v15[0]) = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(&v17, v15);
  sub_1BD0DE53C(v15, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v17 = 48;
  v16 = v11;
  LODWORD(v15[0]) = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(&v17, v15);
  sub_1BD0DE53C(v15, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v17 = 49;
  v16 = v11;
  LODWORD(v15[0]) = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(&v17, v15);
  sub_1BD0DE53C(v15, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v17 = 26;
  v16 = v11;
  LODWORD(v15[0]) = 1065353216;
  VFXNode.setBehaviorGraphValue(key:value:)(&v17, v15);
  sub_1BD0DE53C(v15, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v17 = 2;
  v16 = v11;
  LODWORD(v15[0]) = 1117782016;
  VFXNode.setBehaviorGraphValue(key:value:)(&v17, v15);
  sub_1BD0DE53C(v15, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v17 = 37;
  v16 = v11;
  LODWORD(v15[0]) = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(&v17, v15);
  sub_1BD0DE53C(v15, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v17 = 33;
  v16 = v11;
  LODWORD(v15[0]) = 1060320051;
  VFXNode.setBehaviorGraphValue(key:value:)(&v17, v15);
  sub_1BD0DE53C(v15, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v17 = 35;
  v16 = v11;
  LODWORD(v15[0]) = 1045220557;
  VFXNode.setBehaviorGraphValue(key:value:)(&v17, v15);
  sub_1BD0DE53C(v15, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v17 = 28;
  v16 = v11;
  LODWORD(v15[0]) = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(&v17, v15);
  sub_1BD0DE53C(v15, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v17 = 27;
  v16 = v11;
  LODWORD(v15[0]) = 1065353216;
  VFXNode.setBehaviorGraphValue(key:value:)(&v17, v15);
  sub_1BD0DE53C(v15, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v17 = 20;
  v12 = [v2 valueWithVFXFloat3_];
  v16 = v4;
  v15[0] = v12;
  VFXNode.setBehaviorGraphValue(key:value:)(&v17, v15);
  sub_1BD0DE53C(v15, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v17 = 5;
  v16 = v11;
  LODWORD(v15[0]) = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(&v17, v15);
  sub_1BD0DE53C(v15, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v17 = 6;
  v16 = v11;
  LODWORD(v15[0]) = 1056964608;
  VFXNode.setBehaviorGraphValue(key:value:)(&v17, v15);
  sub_1BD0DE53C(v15, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v17 = 7;
  v16 = v11;
  LODWORD(v15[0]) = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(&v17, v15);
  sub_1BD0DE53C(v15, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v17 = 38;
  v16 = MEMORY[0x1E69E63B0];
  v15[0] = 0x3FE0000000000000;
  VFXNode.setBehaviorGraphValue(key:value:)(&v17, v15);
  sub_1BD0DE53C(v15, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v17 = 34;
  v16 = v11;
  LODWORD(v15[0]) = 1065353216;
  VFXNode.setBehaviorGraphValue(key:value:)(&v17, v15);
  sub_1BD0DE53C(v15, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v17 = 37;
  v16 = v11;
  LODWORD(v15[0]) = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(&v17, v15);
  sub_1BD0DE53C(v15, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v17 = 1;
  v16 = v11;
  LODWORD(v15[0]) = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(&v17, v15);
  sub_1BD0DE53C(v15, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v17 = 51;
  v16 = v11;
  LODWORD(v15[0]) = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(&v17, v15);
  sub_1BD0DE53C(v15, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v17 = 55;
  v16 = v11;
  LODWORD(v15[0]) = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(&v17, v15);
  sub_1BD0DE53C(v15, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v17 = 42;
  v13 = [v2 valueWithVFXFloat2_];
  v16 = v4;
  v15[0] = v13;
  VFXNode.setBehaviorGraphValue(key:value:)(&v17, v15);
  sub_1BD0DE53C(v15, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v17 = 40;
  v14 = [v2 valueWithVFXFloat2_];
  v16 = v4;
  v15[0] = v14;
  VFXNode.setBehaviorGraphValue(key:value:)(&v17, v15);
  sub_1BD0DE53C(v15, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v17 = 41;
  v16 = v11;
  LODWORD(v15[0]) = 1073322394;
  VFXNode.setBehaviorGraphValue(key:value:)(&v17, v15);
  sub_1BD0DE53C(v15, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v17 = 50;
  v16 = v11;
  LODWORD(v15[0]) = 1075838976;
  VFXNode.setBehaviorGraphValue(key:value:)(&v17, v15);
  sub_1BD0DE53C(v15, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v17 = 56;
  v16 = v11;
  LODWORD(v15[0]) = 1045220557;
  VFXNode.setBehaviorGraphValue(key:value:)(&v17, v15);
  sub_1BD0DE53C(v15, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  NearbyPeerPaymentSenderVFXViewController.restartEmitters()();
}

Swift::Void __swiftcall NearbyPeerPaymentSenderVFXViewController.restartEmitters()()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_ambientEmitter);
  v3 = [v2 particleEmitter];
  [v3 killParticles];

  v4 = [v2 particleEmitter];
  [v4 restart];

  v5 = *(v1 + OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_nodeBindings);
  v6 = [v5 particleEmitter];
  [v6 killParticles];

  v7 = [v5 particleEmitter];
  [v7 restart];

  v8 = OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_currentStarterTextNodes;
  swift_beginAccess();
  v9 = *(v1 + v8);
  if (v9 >> 62)
  {
    v10 = sub_1BE053704();
    if (!v10)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v10)
    {
      goto LABEL_10;
    }
  }

  if (v10 < 1)
  {
    __break(1u);
    goto LABEL_31;
  }

  sub_1BE048C84();
  v11 = 0;
  do
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x1BFB40900](v11, v9);
    }

    else
    {
      v12 = *(v9 + 8 * v11 + 32);
    }

    v13 = v12;
    ++v11;
    v14 = [v12 particleEmitter];
    [v14 killParticles];

    v15 = [v13 particleEmitter];
    [v15 restart];
  }

  while (v10 != v11);
  v9, v16, v17, v18, v19, v20, v21, v22;
LABEL_10:
  v23 = OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_currentTransferTextNodes;
  swift_beginAccess();
  v24 = *(v1 + v23);
  if (v24 >> 62)
  {
    v25 = sub_1BE053704();
    if (v25)
    {
LABEL_12:
      if (v25 >= 1)
      {
        sub_1BE048C84();
        v26 = 0;
        do
        {
          if ((v24 & 0xC000000000000001) != 0)
          {
            v27 = MEMORY[0x1BFB40900](v26, v24);
          }

          else
          {
            v27 = *(v24 + 8 * v26 + 32);
          }

          v28 = v27;
          ++v26;
          v29 = [v27 particleEmitter];
          [v29 killParticles];

          v30 = [v28 particleEmitter];
          [v30 restart];
        }

        while (v25 != v26);
        v24, v31, v32, v33, v34, v35, v36, v37;
        goto LABEL_19;
      }

LABEL_31:
      __break(1u);
      return;
    }
  }

  else
  {
    v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v25)
    {
      goto LABEL_12;
    }
  }

LABEL_19:
  v46 = 30;
  v38 = OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_currentDigitModels;
  swift_beginAccess();
  v39 = *(v1 + v38);
  if (v39 >> 62)
  {
    v40 = sub_1BE053704();
  }

  else
  {
    v40 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v41 = MEMORY[0x1E69E6448];
  v45 = MEMORY[0x1E69E6448];
  v44[0] = 5000.0 / v40;
  VFXNode.setBehaviorGraphValue(key:value:)(&v46, v44);
  sub_1BD0DE53C(v44, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v46 = 47;
  v42 = *(v1 + v38);
  if (v42 >> 62)
  {
    v43 = sub_1BE053704();
  }

  else
  {
    v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v45 = v41;
  v44[0] = 5000.0 / v43;
  VFXNode.setBehaviorGraphValue(key:value:)(&v46, v44);
  sub_1BD0DE53C(v44, &qword_1EBD3EC90, &unk_1BE0BC6B0);
}

uint64_t NearbyPeerPaymentSenderVFXViewController.setState(_:completion:)(uint64_t a1, uint64_t a2, void *a3)
{
  v126 = a3;
  v6 = sub_1BE04D214();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v125 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC9PassKitUI40NearbyPeerPaymentSenderVFXViewController_state;
  swift_beginAccess();
  sub_1BD113234(v3 + v10, v137);
  swift_beginAccess();
  v11 = v3;
  sub_1BD1263C8(a1, v3 + v10);
  swift_endAccess();
  sub_1BE04D094();
  sub_1BD113234(v137, v129);
  v127 = a1;
  sub_1BD113234(a1, v135);
  v12 = sub_1BE04D204();
  v13 = sub_1BE052C54();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v125 = a2;
    v15 = v14;
    v16 = swift_slowAlloc();
    v128 = v16;
    *v15 = 136315394;
    v17 = NearbyPeerPaymentSenderState.description.getter();
    v19 = v18;
    sub_1BD11326C(v129);
    v20 = sub_1BD123690(v17, v19, &v128);
    v19, v21, v22, v23, v24, v25, v26, v27;
    *(v15 + 4) = v20;
    *(v15 + 12) = 2080;
    v28 = NearbyPeerPaymentSenderState.description.getter();
    v30 = v29;
    sub_1BD11326C(v135);
    v31 = sub_1BD123690(v28, v30, &v128);
    v30, v32, v33, v34, v35, v36, v37, v38;
    *(v15 + 14) = v31;
    _os_log_impl(&dword_1BD026000, v12, v13, "NearbyPeerPayment/VFX: Sender state changed from: %s to: %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFB45F20](v16, -1, -1);
    v39 = v15;
    a2 = v125;
    MEMORY[0x1BFB45F20](v39, -1, -1);
  }

  else
  {

    sub_1BD11326C(v135);
    sub_1BD11326C(v129);
  }

  (*(v7 + 8))(v9, v6);
  v40 = v127;
  sub_1BD113234(v127, v135);
  if (v136 > 2)
  {
    if ((v136 - 3) < 3)
    {
      v41 = MEMORY[0x1E69E7CC0];
      goto LABEL_41;
    }

    if (v136 == 6)
    {
      v60 = swift_allocObject();
      *(v60 + 16) = v11;
      v61 = swift_allocObject();
      *(v61 + 16) = sub_1BD87EEC4;
      *(v61 + 24) = v60;
      v62 = swift_allocObject();
      *(v62 + 16) = sub_1BD87EF30;
      *(v62 + 24) = v61;
      v63 = v11;
      v41 = sub_1BD1D7BB0(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v65 = v41[2];
      v64 = v41[3];
      if (v65 >= v64 >> 1)
      {
        v41 = sub_1BD1D7BB0((v64 > 1), (v65 + 1), 1, v41);
      }

      v41[2] = v65 + 1;
      v66 = &v41[2 * v65];
LABEL_29:
      v66[4] = sub_1BD330914;
      v66[5] = v62;
      goto LABEL_41;
    }

    goto LABEL_23;
  }

  if (!v136)
  {
    sub_1BD113234(v137, v129);
    v132 = 0;
    v133 = 0;
    v131 = 0;
    v134 = xmmword_1BE0B8E00;
    if (v130 == 1)
    {
      sub_1BD11326C(v129);
      v41 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      sub_1BD0DE53C(v129, &qword_1EBD398E0, &qword_1BE0B8E80);
      v78 = swift_allocObject();
      *(v78 + 16) = v11;
      v79 = swift_allocObject();
      *(v79 + 16) = sub_1BD87EFDC;
      *(v79 + 24) = v78;
      v80 = v11;
      v41 = sub_1BD1D7BB0(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v82 = v41[2];
      v81 = v41[3];
      if (v82 >= v81 >> 1)
      {
        v41 = sub_1BD1D7BB0((v81 > 1), (v82 + 1), 1, v41);
      }

      v41[2] = v82 + 1;
      v83 = &v41[2 * v82];
      v83[4] = sub_1BD330914;
      v83[5] = v79;
    }

    sub_1BD113234(v137, v129);
    if (v130 - 2 >= 5 && v130)
    {
      if (v130 == 1)
      {
        v104 = swift_allocObject();
        *(v104 + 16) = v11;
        v62 = swift_allocObject();
        *(v62 + 16) = sub_1BD87F030;
        *(v62 + 24) = v104;
        v105 = v11;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v41 = sub_1BD1D7BB0(0, (v41[2] + 1), 1, v41);
        }

        v107 = v41[2];
        v106 = v41[3];
        if (v107 >= v106 >> 1)
        {
          v41 = sub_1BD1D7BB0((v106 > 1), (v107 + 1), 1, v41);
        }

        v41[2] = v107 + 1;
        v66 = &v41[2 * v107];
        goto LABEL_29;
      }

      v108 = swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_1BE048964();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v41 = sub_1BD1D7BB0(0, (v41[2] + 1), 1, v41);
      }

      v117 = v41[2];
      v116 = v41[3];
      if (v117 >= v116 >> 1)
      {
        v41 = sub_1BD1D7BB0((v116 > 1), (v117 + 1), 1, v41);
      }

      v41[2] = v117 + 1;
      v118 = &v41[2 * v117];
      v118[4] = sub_1BD87F038;
      v118[5] = v108;
      v108, v109, v110, v111, v112, v113, v114, v115;
      v119 = swift_allocObject();
      *(v119 + 16) = v11;
      v120 = swift_allocObject();
      *(v120 + 16) = sub_1BD87F040;
      *(v120 + 24) = v119;
      v121 = v41[2];
      v122 = v41[3];
      v123 = v11;
      if (v121 >= v122 >> 1)
      {
        v41 = sub_1BD1D7BB0((v122 > 1), (v121 + 1), 1, v41);
      }

      v41[2] = v121 + 1;
      v124 = &v41[2 * v121];
      v124[4] = sub_1BD330914;
      v124[5] = v120;
    }

    else
    {
      sub_1BD632BE4();
      v84 = swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_1BE048964();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v41 = sub_1BD1D7BB0(0, (v41[2] + 1), 1, v41);
      }

      v93 = v41[2];
      v92 = v41[3];
      if (v93 >= v92 >> 1)
      {
        v41 = sub_1BD1D7BB0((v92 > 1), (v93 + 1), 1, v41);
      }

      v41[2] = v93 + 1;
      v94 = &v41[2 * v93];
      v94[4] = sub_1BD87F028;
      v94[5] = v84;
      v84, v85, v86, v87, v88, v89, v90, v91;
    }

    v73 = v129;
    goto LABEL_40;
  }

  if (v136 == 1)
  {
    v74 = swift_allocObject();
    *(v74 + 16) = v11;
    v62 = swift_allocObject();
    *(v62 + 16) = sub_1BD87EFD4;
    *(v62 + 24) = v74;
    v75 = v11;
    v41 = sub_1BD1D7BB0(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v77 = v41[2];
    v76 = v41[3];
    if (v77 >= v76 >> 1)
    {
      v41 = sub_1BD1D7BB0((v76 > 1), (v77 + 1), 1, v41);
    }

    v41[2] = v77 + 1;
    v66 = &v41[2 * v77];
    goto LABEL_29;
  }

  if (v136 != 2)
  {
LABEL_23:
    v67 = swift_allocObject();
    *(v67 + 16) = v11;
    v68 = swift_allocObject();
    *(v68 + 16) = sub_1BD87BEF0;
    *(v68 + 24) = v67;
    v69 = v11;
    v41 = sub_1BD1D7BB0(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v71 = v41[2];
    v70 = v41[3];
    if (v71 >= v70 >> 1)
    {
      v41 = sub_1BD1D7BB0((v70 > 1), (v71 + 1), 1, v41);
    }

    v41[2] = v71 + 1;
    v72 = &v41[2 * v71];
    v72[4] = sub_1BD32E540;
    v72[5] = v68;
    v73 = v135;
LABEL_40:
    sub_1BD11326C(v73);
    goto LABEL_41;
  }

  v42 = swift_allocObject();
  *(v42 + 16) = v11;
  v43 = swift_allocObject();
  *(v43 + 16) = sub_1BD87EF58;
  *(v43 + 24) = v42;
  v44 = v11;
  v41 = sub_1BD1D7BB0(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v46 = v41[2];
  v45 = v41[3];
  v47 = v46 + 1;
  if (v46 >= v45 >> 1)
  {
    v41 = sub_1BD1D7BB0((v45 > 1), (v46 + 1), 1, v41);
  }

  v41[2] = v47;
  v48 = &v41[2 * v46];
  v48[4] = sub_1BD330914;
  v48[5] = v43;
  v49 = swift_allocObject();
  *(v49 + 16) = v44;
  v50 = swift_allocObject();
  *(v50 + 16) = sub_1BD87EF60;
  *(v50 + 24) = v49;
  v51 = v41[3];
  v52 = v44;
  if (v47 >= v51 >> 1)
  {
    v41 = sub_1BD1D7BB0((v51 > 1), (v46 + 2), 1, v41);
  }

  v41[2] = v46 + 2;
  v53 = &v41[2 * v47];
  v53[4] = sub_1BD330914;
  v53[5] = v50;
  v54 = swift_allocObject();
  *(v54 + 16) = v52;
  v55 = swift_allocObject();
  *(v55 + 16) = sub_1BD87EFB0;
  *(v55 + 24) = v54;
  v56 = v41[2];
  v57 = v41[3];
  v58 = v52;
  if (v56 >= v57 >> 1)
  {
    v41 = sub_1BD1D7BB0((v57 > 1), (v56 + 1), 1, v41);
  }

  v41[2] = v56 + 1;
  v59 = &v41[2 * v56];
  v59[4] = sub_1BD330914;
  v59[5] = v55;
  v40 = v127;
LABEL_41:
  sub_1BD113234(v40, v129);
  v95 = v130;
  sub_1BD11326C(v129);
  if (v95 >= 7)
  {
    sub_1BD51228C(v41, a2, v126);
  }

  else
  {
    sub_1BD5114BC(v41, a2, v126);
  }

  v41, v96, v97, v98, v99, v100, v101, v102;
  return sub_1BD11326C(v137);
}

uint64_t sub_1BD87A784(uint64_t (**a1)(void), uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1BD878D88();
  }

  return v2();
}

uint64_t sub_1BD87A7F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v57 = a1;
  v58 = a2;
  v60 = sub_1BE051F54();
  v62 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_1BE051FA4();
  v61 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE051FC4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v47 - v13;
  v69[0] = 1;
  v66 = MEMORY[0x1E69E6448];
  LODWORD(aBlock) = 1065353216;
  VFXNode.setBehaviorGraphValue(key:value:)(v69, &aBlock);
  sub_1BD0DE53C(&aBlock, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v55 = sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  v15 = sub_1BE052D54();
  sub_1BE051FB4();
  sub_1BE051FF4();
  v16 = *(v9 + 8);
  v59 = v9 + 8;
  v54 = v16;
  v16(v11, v8);
  v17 = swift_allocObject();
  *(v17 + 16) = v2;
  v67 = sub_1BD87F13C;
  v68 = v17;
  aBlock = MEMORY[0x1E69E9820];
  v64 = 1107296256;
  v65 = sub_1BD126964;
  v66 = &block_descriptor_196;
  v18 = _Block_copy(&aBlock);
  v19 = v68;
  v48 = v3;
  v19, v20, v21, v22, v23, v24, v25, v26;
  sub_1BE051F74();
  aBlock = MEMORY[0x1E69E7CC0];
  v52 = sub_1BD14EC84();
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  v53 = sub_1BD14ECDC();
  v27 = v60;
  sub_1BE053664();
  MEMORY[0x1BFB3FD90](v14, v7, v5, v18);
  _Block_release(v18);

  v28 = *(v62 + 8);
  v62 += 8;
  v50 = v28;
  v28(v5, v27);
  v29 = *(v61 + 8);
  v61 += 8;
  v49 = v29;
  v30 = v56;
  v29(v7, v56);
  v47 = v8;
  v31 = v54;
  v54(v14, v8);
  v32 = sub_1BE052D54();
  sub_1BE051FB4();
  sub_1BE051FF4();
  v31(v11, v8);
  v33 = swift_allocObject();
  v34 = v48;
  *(v33 + 16) = v48;
  v67 = sub_1BD87F144;
  v68 = v33;
  aBlock = MEMORY[0x1E69E9820];
  v64 = 1107296256;
  v65 = sub_1BD126964;
  v66 = &block_descriptor_98_1;
  v35 = _Block_copy(&aBlock);
  v36 = v68;
  v37 = v34;
  v36, v38, v39, v40, v41, v42, v43, v44;
  sub_1BE051F74();
  aBlock = MEMORY[0x1E69E7CC0];
  v45 = v60;
  sub_1BE053664();
  MEMORY[0x1BFB3FD90](v14, v7, v5, v35);
  _Block_release(v35);

  v50(v5, v45);
  v49(v7, v30);
  v31(v14, v47);
  sub_1BD87C3EC(v37, v57, v58);
  return sub_1BD87D074(v37);
}

uint64_t sub_1BD87ADB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3 + OBJC_IVAR____TtC9PassKitUI40NearbyPeerPaymentSenderVFXViewController_animationDelegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    v12 = 0;
    memset(v11, 0, sizeof(v11));
    (*(v6 + 72))(v11, ObjectType, v6);
    swift_unknownObjectRelease();
    sub_1BD11326C(v11);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = *(v5 + 8);
    v10 = swift_getObjectType();
    (*(v9 + 24))(a1, a2, v10, v9);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1BD87AEA4(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = swift_allocObject();
    swift_beginAccess();
    v8 = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();
    sub_1BE048964();

    v9 = swift_allocObject();
    v9[2] = sub_1BD1839E0;
    v9[3] = v4;
    v9[4] = v7;
    sub_1BE048964();
    sub_1BD87A7F0(sub_1BD87F1E0, v9);

    v7, v10, v11, v12, v13, v14, v15, v16;
    v24 = v9;
  }

  else
  {
    sub_1BE048964();
    v24 = v4;
  }

  v24, v17, v18, v19, v20, v21, v22, v23;
}

void sub_1BD87AFE8(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  a1();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1BD632BE4();
  }
}

uint64_t sub_1BD87B048(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3 + OBJC_IVAR____TtC9PassKitUI40NearbyPeerPaymentSenderVFXViewController_animationDelegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    memset(v11, 0, sizeof(v11));
    v12 = xmmword_1BE0B8E00;
    (*(v6 + 72))(v11, ObjectType, v6);
    swift_unknownObjectRelease();
    sub_1BD11326C(v11);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = *(v5 + 8);
    v10 = swift_getObjectType();
    (*(v9 + 32))(a1, a2, v10, v9);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1BD87B144(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3 + OBJC_IVAR____TtC9PassKitUI40NearbyPeerPaymentSenderVFXViewController_animationDelegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    (*(v7 + 16))(a1, a2, ObjectType, v7);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1BD87B1E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v41 = a4;
  v42 = a5;
  v38 = a3;
  v39 = a1;
  v7 = v6;
  v40 = a2;
  v8 = sub_1BE051F54();
  v45 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BE051FA4();
  v43 = *(v11 - 8);
  v44 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BE051FC4();
  v37 = v14;
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v36 - v19;
  sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  v21 = sub_1BE052D54();
  sub_1BE051FB4();
  sub_1BE051FF4();
  v36 = *(v15 + 8);
  v36(v17, v14);
  v22 = swift_allocObject();
  v23 = v39;
  v24 = v40;
  v22[2] = v6;
  v22[3] = v23;
  v22[4] = v24;
  aBlock[4] = v41;
  v47 = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = v42;
  v25 = _Block_copy(aBlock);
  v26 = v47;
  v27 = v7;
  sub_1BE048964();
  v26, v28, v29, v30, v31, v32, v33, v34;
  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FD90](v20, v13, v10, v25);
  _Block_release(v25);

  (*(v45 + 8))(v10, v8);
  (*(v43 + 8))(v13, v44);
  return (v36)(v20, v37);
}

id sub_1BD87B56C(unint64_t a1, unint64_t a2)
{
  v3 = v2;
  v82 = a1;
  v83 = a2;
  v89 = sub_1BE051F54();
  v92 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v84 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE051FA4();
  v6 = *(v5 - 8);
  v90 = v5;
  v91 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v81 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE051FC4();
  v86 = v8;
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v75 - v13;
  v85 = *&v2[OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_nodeBindings];
  v99[0] = 49;
  v96 = MEMORY[0x1E69E6448];
  LODWORD(aBlock) = 1065353216;
  VFXNode.setBehaviorGraphValue(key:value:)(v99, &aBlock);
  sub_1BD0DE53C(&aBlock, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v15 = objc_opt_self();
  [v15 begin];
  [v15 setAnimationDuration_];
  v99[0] = 22;
  v96 = MEMORY[0x1E69E63B0];
  aBlock = 0x3FB999999999999ALL;
  VFXNode.setBehaviorGraphValue(key:value:)(v99, &aBlock);
  sub_1BD0DE53C(&aBlock, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  [v15 commit];
  v80 = sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  v16 = sub_1BE052D54();
  sub_1BE051FB4();
  sub_1BE051FF4();
  v17 = *(v9 + 8);
  v87 = v9 + 8;
  v88 = v17;
  v17(v11, v8);
  v18 = swift_allocObject();
  v19 = v82;
  v20 = v83;
  v18[2] = v2;
  v18[3] = v19;
  v18[4] = v20;
  v97 = sub_1BD87F1F8;
  v98 = v18;
  aBlock = MEMORY[0x1E69E9820];
  v94 = 1107296256;
  v95 = sub_1BD126964;
  v96 = &block_descriptor_150_1;
  v21 = _Block_copy(&aBlock);
  v22 = v98;
  v76 = v3;
  sub_1BE048964();
  v22, v23, v24, v25, v26, v27, v28, v29;
  v30 = v81;
  sub_1BE051F74();
  aBlock = MEMORY[0x1E69E7CC0];
  v82 = sub_1BD14EC84();
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  v83 = sub_1BD14ECDC();
  v31 = v84;
  v32 = v89;
  sub_1BE053664();
  MEMORY[0x1BFB3FD90](v14, v30, v31, v21);
  _Block_release(v21);

  v33 = *(v92 + 8);
  v92 += 8;
  v78 = v33;
  v33(v31, v32);
  v34 = *(v91 + 8);
  v91 += 8;
  v77 = v34;
  v34(v30, v90);
  v35 = v86;
  v36 = v88;
  v88(v14, v86);
  v37 = sub_1BE052D54();
  sub_1BE051FB4();
  sub_1BE051FF4();
  v36(v11, v35);
  v38 = swift_allocObject();
  v39 = v76;
  *(v38 + 16) = v76;
  v97 = sub_1BD87F224;
  v98 = v38;
  aBlock = MEMORY[0x1E69E9820];
  v94 = 1107296256;
  v95 = sub_1BD126964;
  v96 = &block_descriptor_156;
  v40 = _Block_copy(&aBlock);
  v41 = v98;
  v42 = v39;
  v41, v43, v44, v45, v46, v47, v48, v49;
  sub_1BE051F74();
  aBlock = MEMORY[0x1E69E7CC0];
  v50 = v89;
  sub_1BE053664();
  MEMORY[0x1BFB3FD90](v14, v30, v31, v40);
  _Block_release(v40);

  v78(v31, v50);
  v77(v30, v90);
  v88(v14, v86);
  [v15 begin];
  [v15 setAnimationDuration_];
  v51 = objc_allocWithZone(MEMORY[0x1E69793D0]);
  LODWORD(v52) = 1051260355;
  LODWORD(v53) = 1.0;
  LODWORD(v54) = 1.0;
  v55 = [v51 initWithControlPoints__:v52 :{0.0, v53, v54}];
  [v15 setAnimationTimingFunction_];

  v56 = swift_allocObject();
  *(v56 + 16) = v42;
  v97 = sub_1BD87F248;
  v98 = v56;
  aBlock = MEMORY[0x1E69E9820];
  v94 = 1107296256;
  v95 = sub_1BD126964;
  v96 = &block_descriptor_162;
  v57 = _Block_copy(&aBlock);
  v58 = v98;
  v59 = v42;
  v58, v60, v61, v62, v63, v64, v65, v66;
  [v15 setCompletionBlock_];
  _Block_release(v57);
  v99[0] = 48;
  v67 = MEMORY[0x1E69E6448];
  v96 = MEMORY[0x1E69E6448];
  LODWORD(aBlock) = 0x40000000;
  VFXNode.setBehaviorGraphValue(key:value:)(v99, &aBlock);
  sub_1BD0DE53C(&aBlock, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v99[0] = 2;
  v96 = v67;
  v68 = v67;
  LODWORD(aBlock) = 1110704128;
  VFXNode.setBehaviorGraphValue(key:value:)(v99, &aBlock);
  sub_1BD0DE53C(&aBlock, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  [v15 commit];
  [v15 begin];
  [v15 setAnimationDuration_];
  v69 = objc_allocWithZone(MEMORY[0x1E69793D0]);
  LODWORD(v70) = 1051361018;
  LODWORD(v71) = 1.0;
  LODWORD(v72) = 1.0;
  v73 = [v69 initWithControlPoints__:v70 :{0.0, v71, v72}];
  [v15 setAnimationTimingFunction_];

  v99[0] = 33;
  v96 = v68;
  LODWORD(aBlock) = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(v99, &aBlock);
  sub_1BD0DE53C(&aBlock, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v99[0] = 38;
  v96 = MEMORY[0x1E69E63B0];
  aBlock = 0x400C000000000000;
  VFXNode.setBehaviorGraphValue(key:value:)(v99, &aBlock);
  sub_1BD0DE53C(&aBlock, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v99[0] = 35;
  v96 = v68;
  LODWORD(aBlock) = 1066192077;
  VFXNode.setBehaviorGraphValue(key:value:)(v99, &aBlock);
  sub_1BD0DE53C(&aBlock, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  [v15 commit];
  [v15 begin];
  [v15 setAnimationDuration_];
  v99[0] = 37;
  v96 = v68;
  LODWORD(aBlock) = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(v99, &aBlock);
  sub_1BD0DE53C(&aBlock, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  return [v15 commit];
}

uint64_t sub_1BD87BF14(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = objc_opt_self();
  [v6 begin];
  [v6 setAnimationDuration_];
  v27 = 26;
  v7 = MEMORY[0x1E69E6448];
  v24 = MEMORY[0x1E69E6448];
  LODWORD(aBlock[0]) = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(&v27, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v27 = 36;
  v24 = v7;
  LODWORD(aBlock[0]) = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(&v27, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v27 = 37;
  v24 = v7;
  LODWORD(aBlock[0]) = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(&v27, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v27 = 49;
  v24 = v7;
  LODWORD(aBlock[0]) = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(&v27, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v27 = 28;
  v24 = v7;
  LODWORD(aBlock[0]) = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(&v27, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v27 = 5;
  v24 = v7;
  LODWORD(aBlock[0]) = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(&v27, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v27 = 6;
  v24 = v7;
  LODWORD(aBlock[0]) = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(&v27, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v27 = 7;
  v24 = v7;
  LODWORD(aBlock[0]) = 1065353216;
  VFXNode.setBehaviorGraphValue(key:value:)(&v27, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v27 = 15;
  v24 = v7;
  LODWORD(aBlock[0]) = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(&v27, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v27 = 1;
  v24 = v7;
  LODWORD(aBlock[0]) = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(&v27, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v27 = 1;
  v24 = v7;
  LODWORD(aBlock[0]) = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(&v27, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v27 = 1;
  v24 = v7;
  LODWORD(aBlock[0]) = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(&v27, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v27 = 1;
  v24 = v7;
  LODWORD(aBlock[0]) = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(&v27, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v25 = a1;
  v26 = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  v24 = &block_descriptor_214;
  v8 = _Block_copy(aBlock);
  v9 = v26;
  sub_1BE048964();
  v9, v10, v11, v12, v13, v14, v15, v16;
  [v6 setCompletionBlock_];
  _Block_release(v8);
  [v6 commit];
  v17 = v3 + OBJC_IVAR____TtC9PassKitUI40NearbyPeerPaymentSenderVFXViewController_animationDelegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v18 = *(v17 + 8);
    ObjectType = swift_getObjectType();
    (*(v18 + 16))(PKEdgeInsetsMake, 0, ObjectType, v18);
    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v20 = *(v17 + 8);
    v21 = swift_getObjectType();
    (*(v20 + 48))(PKEdgeInsetsMake, 0, v21, v20);
    swift_unknownObjectRelease();
  }

  return sub_1BD87B1E0(PKEdgeInsetsMake, 0, &unk_1F3BC1728, sub_1BD87F2C0, &block_descriptor_220, 0.5);
}

id sub_1BD87C3EC(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_opt_self();
  [v6 begin];
  [v6 setAnimationDuration_];
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = a3;
  v28 = sub_1BD87F154;
  v29 = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  v27 = &block_descriptor_110_3;
  v8 = _Block_copy(aBlock);
  v9 = v29;
  v10 = a1;
  sub_1BE048964();
  v9, v11, v12, v13, v14, v15, v16, v17;
  [v6 setCompletionBlock_];
  _Block_release(v8);
  v25 = 1;
  v18 = MEMORY[0x1E69E6448];
  v27 = MEMORY[0x1E69E6448];
  LODWORD(aBlock[0]) = 1065353216;
  VFXNode.setBehaviorGraphValue(key:value:)(&v25, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  [v6 commit];
  [v6 begin];
  [v6 setAnimationDuration_];
  v25 = 28;
  v27 = v18;
  LODWORD(aBlock[0]) = 1065353216;
  VFXNode.setBehaviorGraphValue(key:value:)(&v25, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  [v6 commit];
  [v6 begin];
  [v6 setAnimationDuration_];
  v19 = objc_allocWithZone(MEMORY[0x1E69793D0]);
  LODWORD(v20) = 1051931443;
  LODWORD(v21) = 0.75;
  LODWORD(v22) = 1.0;
  v23 = [v19 initWithControlPoints__:0.0 :{v20, v21, v22}];
  [v6 setAnimationTimingFunction_];

  v25 = 27;
  v27 = v18;
  LODWORD(aBlock[0]) = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(&v25, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v25 = 36;
  v27 = v18;
  LODWORD(aBlock[0]) = 1065353216;
  VFXNode.setBehaviorGraphValue(key:value:)(&v25, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  return [v6 commit];
}

id sub_1BD87C6CC()
{
  v0 = objc_opt_self();
  [v0 begin];
  v1 = [objc_opt_self() functionWithName_];
  [v0 setAnimationTimingFunction_];

  [v0 setAnimationDuration_];
  v5 = 51;
  v4 = MEMORY[0x1E69E6448];
  v3[0] = 1065353216;
  VFXNode.setBehaviorGraphValue(key:value:)(&v5, v3);
  sub_1BD0DE53C(v3, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  return [v0 commit];
}

id sub_1BD87C7DC(void *a1)
{
  v2 = objc_opt_self();
  [v2 begin];
  v3 = [objc_opt_self() functionWithName_];
  [v2 setAnimationTimingFunction_];

  [v2 setAnimationDuration_];
  v20 = 28;
  v17 = MEMORY[0x1E69E6448];
  LODWORD(aBlock[0]) = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(&v20, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  v18 = sub_1BD87F1BC;
  v19 = v4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  v17 = &block_descriptor_131_2;
  v5 = _Block_copy(aBlock);
  v6 = v19;
  v7 = a1;
  v6, v8, v9, v10, v11, v12, v13, v14;
  [v2 setCompletionBlock_];
  _Block_release(v5);
  return [v2 commit];
}

id sub_1BD87C990(uint64_t a1)
{
  v2 = objc_opt_self();
  [v2 begin];
  [v2 setAnimationDuration_];
  v9 = 37;
  v3 = OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_currentDissipateTextNodes;
  swift_beginAccess();
  v4 = *(a1 + v3);
  if (v4 >> 62)
  {
    v5 = sub_1BE053704();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = MEMORY[0x1E69E6448];
  *v7 = (3600.0 / v5) + 130.0;
  VFXNode.setBehaviorGraphValue(key:value:)(&v9, v7);
  sub_1BD0DE53C(v7, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v9 = 38;
  v8 = MEMORY[0x1E69E63B0];
  v7[0] = 0x3FF0000000000000;
  VFXNode.setBehaviorGraphValue(key:value:)(&v9, v7);
  sub_1BD0DE53C(v7, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  return [v2 commit];
}

id sub_1BD87CAF0(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_opt_self();
  [v6 begin];
  [v6 setAnimationDuration_];
  v7 = objc_allocWithZone(MEMORY[0x1E69793D0]);
  LODWORD(v8) = 1051361018;
  LODWORD(v9) = 1060001284;
  LODWORD(v10) = 1.0;
  v11 = [v7 initWithControlPoints__:v8 :{0.0, v9, v10}];
  [v6 setAnimationTimingFunction_];

  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = a3;
  v26 = sub_1BD87F1A4;
  v27 = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  v25 = &block_descriptor_116_0;
  v13 = _Block_copy(aBlock);
  v14 = v27;
  a1;
  sub_1BE048964();
  v14, v15, v16, v17, v18, v19, v20, v21;
  [v6 setCompletionBlock_];
  _Block_release(v13);
  v23 = 3;
  v25 = MEMORY[0x1E69E63B0];
  aBlock[0] = 0x3FE6666666666666;
  VFXNode.setBehaviorGraphValue(key:value:)(&v23, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  return [v6 commit];
}

id sub_1BD87CCD4(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_opt_self();
  [v6 begin];
  [v6 setAnimationDuration_];
  v7 = objc_allocWithZone(MEMORY[0x1E69793D0]);
  LODWORD(v8) = 1044442094;
  LODWORD(v9) = 1046005731;
  LODWORD(v10) = 1065551187;
  v11 = [v7 initWithControlPoints__:v8 :{0.0, v9, v10}];
  [v6 setAnimationTimingFunction_];

  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = a3;
  v26 = sub_1BD87F1B0;
  v27 = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  v25 = &block_descriptor_122_0;
  v13 = _Block_copy(aBlock);
  v14 = v27;
  a1;
  sub_1BE048964();
  v14, v15, v16, v17, v18, v19, v20, v21;
  [v6 setCompletionBlock_];
  _Block_release(v13);
  v23 = 3;
  v25 = MEMORY[0x1E69E63B0];
  aBlock[0] = 0xBFB999999999999ALL;
  VFXNode.setBehaviorGraphValue(key:value:)(&v23, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  return [v6 commit];
}

id sub_1BD87CEC4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = objc_opt_self();
  [v5 begin];
  [v5 setAnimationDuration_];
  v6 = objc_allocWithZone(MEMORY[0x1E69793D0]);
  LODWORD(v7) = 1046233901;
  LODWORD(v8) = 1039784739;
  LODWORD(v9) = 1047213690;
  LODWORD(v10) = 1.0;
  v11 = [v6 initWithControlPoints__:v7 :{v8, v9, v10}];
  [v5 setAnimationTimingFunction_];

  v26 = 3;
  v23 = MEMORY[0x1E69E63B0];
  aBlock[0] = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(&v26, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v24 = a2;
  v25 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  v23 = &block_descriptor_125_2;
  v12 = _Block_copy(aBlock);
  v13 = v25;
  sub_1BE048964();
  v13, v14, v15, v16, v17, v18, v19, v20;
  [v5 setCompletionBlock_];
  _Block_release(v12);
  return [v5 commit];
}

uint64_t sub_1BD87D074(void *a1)
{
  v31 = a1;
  v1 = sub_1BE051F54();
  v34 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BE051FA4();
  v32 = *(v4 - 8);
  v33 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE051FC4();
  v30 = v7;
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v29 - v12;
  sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  v14 = sub_1BE052D54();
  sub_1BE051FB4();
  sub_1BE051FF4();
  v15 = *(v8 + 8);
  v15(v10, v7);
  v16 = swift_allocObject();
  v17 = v31;
  *(v16 + 16) = v31;
  aBlock[4] = sub_1BD87F14C;
  v36 = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_104_1;
  v18 = _Block_copy(aBlock);
  v19 = v36;
  v20 = v17;
  v19, v21, v22, v23, v24, v25, v26, v27;
  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FD90](v13, v6, v3, v18);
  _Block_release(v18);

  (*(v34 + 8))(v3, v1);
  (*(v32 + 8))(v6, v33);
  return (v15)(v13, v30);
}

id sub_1BD87D3EC(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC9PassKitUI40NearbyPeerPaymentSenderVFXViewController_state;
  swift_beginAccess();
  sub_1BD113234(a1 + v2, &v8);
  v6[0] = v8;
  v6[1] = v9;
  v7 = v10;
  v3 = *(&v9 + 1);
  result = sub_1BD11326C(v6);
  if (v3 <= 6)
  {
    v5 = objc_opt_self();
    [v5 begin];
    [v5 setAnimationDuration_];
    LOBYTE(v6[0]) = 1;
    *(&v9 + 1) = MEMORY[0x1E69E6448];
    LODWORD(v8) = 1065353216;
    VFXNode.setBehaviorGraphValue(key:value:)(v6, &v8);
    sub_1BD0DE53C(&v8, &qword_1EBD3EC90, &unk_1BE0BC6B0);
    return [v5 commit];
  }

  return result;
}

id sub_1BD87D4F8(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC9PassKitUI40NearbyPeerPaymentSenderVFXViewController_state;
  swift_beginAccess();
  sub_1BD113234(v2 + v5, &aBlock);
  v38[0] = aBlock;
  v38[1] = v35;
  v39 = v36;
  v6 = *(&v35 + 1);
  result = sub_1BD11326C(v38);
  if (v6 <= 6)
  {
    v33 = a1;
    v8 = *(v2 + OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_transferParticlesBurstA);
    [v8 setHidden_];
    [v8 setPaused_];
    v9 = *(v2 + OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_transferParticlesBurstB);
    [v9 setHidden_];
    [v9 setPaused_];
    v10 = [v8 particleEmitter];
    [v10 killParticles];

    v11 = [v8 particleEmitter];
    [v11 restart];

    v12 = [v9 particleEmitter];
    [v12 killParticles];

    v13 = [v9 particleEmitter];
    [v13 restart];

    LODWORD(v14) = 1.0;
    [v8 setOpacity_];
    LODWORD(v15) = 1.0;
    [v9 setOpacity_];
    v16 = *(v2 + OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_transferStatusParticles);
    [v16 setHidden_];
    [v16 setPaused_];
    v17 = [v16 particleEmitter];
    [v17 killParticles];

    v18 = [v16 particleEmitter];
    [v18 restart];

    LOBYTE(v38[0]) = 4;
    v19 = MEMORY[0x1E69E6448];
    *(&v35 + 1) = MEMORY[0x1E69E6448];
    LODWORD(aBlock) = 0;
    VFXNode.setBehaviorGraphValue(key:value:)(v38, &aBlock);
    sub_1BD0DE53C(&aBlock, &qword_1EBD3EC90, &unk_1BE0BC6B0);
    v20 = objc_opt_self();
    [v20 begin];
    [v20 setAnimationDuration_];
    v21 = [objc_opt_self() functionWithName_];
    [v20 setAnimationTimingFunction_];

    LOBYTE(v38[0]) = 22;
    *(&v35 + 1) = v19;
    LODWORD(aBlock) = 1043878380;
    VFXNode.setBehaviorGraphValue(key:value:)(v38, &aBlock);
    sub_1BD0DE53C(&aBlock, &qword_1EBD3EC90, &unk_1BE0BC6B0);
    LOBYTE(v38[0]) = 1;
    *(&v35 + 1) = v19;
    LODWORD(aBlock) = 1065353216;
    VFXNode.setBehaviorGraphValue(key:value:)(v38, &aBlock);
    sub_1BD0DE53C(&aBlock, &qword_1EBD3EC90, &unk_1BE0BC6B0);
    LOBYTE(v38[0]) = 2;
    *(&v35 + 1) = v19;
    LODWORD(aBlock) = 1125515264;
    VFXNode.setBehaviorGraphValue(key:value:)(v38, &aBlock);
    sub_1BD0DE53C(&aBlock, &qword_1EBD3EC90, &unk_1BE0BC6B0);
    v22 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v23 = swift_allocObject();
    v23[2] = v22;
    v23[3] = v33;
    v23[4] = a2;
    v36 = sub_1BD87F26C;
    v37 = v23;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v35 = sub_1BD126964;
    *(&v35 + 1) = &block_descriptor_169_1;
    v24 = _Block_copy(&aBlock);
    v25 = v37;
    sub_1BE048964();
    v25, v26, v27, v28, v29, v30, v31, v32;
    [v20 setCompletionBlock_];
    _Block_release(v24);
    return [v20 commit];
  }

  return result;
}

uint64_t sub_1BD87D98C()
{
  v1 = OBJC_IVAR____TtC9PassKitUI40NearbyPeerPaymentSenderVFXViewController_state;
  swift_beginAccess();
  sub_1BD113234(v0 + v1, &v7);
  v5[0] = v7;
  v5[1] = v8;
  v6 = v9;
  v2 = *(&v8 + 1);
  result = sub_1BD11326C(v5);
  if (v2 <= 6)
  {
    [*(v0 + OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_blueRing) setHidden_];
    [*(v0 + OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_blueRingParticles) setHidden_];
    LOBYTE(v5[0]) = 1;
    v4 = MEMORY[0x1E69E6448];
    *(&v8 + 1) = MEMORY[0x1E69E6448];
    LODWORD(v7) = 1065353216;
    VFXNode.setBehaviorGraphValue(key:value:)(v5, &v7);
    sub_1BD0DE53C(&v7, &qword_1EBD3EC90, &unk_1BE0BC6B0);
    LOBYTE(v5[0]) = 1;
    *(&v8 + 1) = MEMORY[0x1E69E63B0];
    *&v7 = 0x3FF0000000000000;
    VFXNode.setBehaviorGraphValue(key:value:)(v5, &v7);
    sub_1BD0DE53C(&v7, &qword_1EBD3EC90, &unk_1BE0BC6B0);
    LOBYTE(v5[0]) = 11;
    *(&v8 + 1) = v4;
    LODWORD(v7) = 0;
    VFXNode.setBehaviorGraphValue(key:value:)(v5, &v7);
    sub_1BD0DE53C(&v7, &qword_1EBD3EC90, &unk_1BE0BC6B0);
    LOBYTE(v5[0]) = 15;
    *(&v8 + 1) = v4;
    LODWORD(v7) = 1106247680;
    VFXNode.setBehaviorGraphValue(key:value:)(v5, &v7);
    return sub_1BD0DE53C(&v7, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  }

  return result;
}

void sub_1BD87DB2C(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  swift_beginAccess();
  v4 = *(a1 + v3);
  if (v4 >> 62)
  {
    v5 = sub_1BE053704();
    if (!v5)
    {
      return;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      return;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
  }

  else
  {
    sub_1BE048C84();
    v6 = 0;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1BFB40900](v6, v4);
      }

      else
      {
        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      ++v6;
      v9 = [v7 particleEmitter];
      [v9 killParticles];
    }

    while (v5 != v6);
    v4, v10, v11, v12, v13, v14, v15, v16;
  }
}

void sub_1BD87DC3C(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_1BD87DCAC(a2, a3);
  }
}

id sub_1BD87DCAC(uint64_t a1, void *a2)
{
  v4 = objc_opt_self();
  [v4 begin];
  [v4 setAnimationDuration_];
  v20 = 22;
  v5 = MEMORY[0x1E69E6448];
  v17 = MEMORY[0x1E69E6448];
  LODWORD(aBlock[0]) = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(&v20, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v20 = 1;
  v17 = v5;
  LODWORD(aBlock[0]) = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(&v20, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v18 = a1;
  v19 = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  v17 = &block_descriptor_172_0;
  v6 = _Block_copy(aBlock);
  v7 = v19;
  sub_1BE048964();
  v7, v8, v9, v10, v11, v12, v13, v14;
  [v4 setCompletionBlock_];
  _Block_release(v6);
  return [v4 commit];
}

id sub_1BD87DE38(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = objc_opt_self();
  [v6 begin];
  [v6 setAnimationDuration_];
  v7 = objc_allocWithZone(MEMORY[0x1E69793D0]);
  LODWORD(v8) = 1058670851;
  LODWORD(v9) = 1057422626;
  LODWORD(v10) = 1.0;
  v11 = [v7 initWithControlPoints__:v8 :{0.0, v9, v10}];
  [v6 setAnimationTimingFunction_];

  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = a3;
  v26 = sub_1BD87F290;
  v27 = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  v25 = &block_descriptor_190_2;
  v13 = _Block_copy(aBlock);
  v14 = v27;
  sub_1BD0D44B8(a1, a2);
  a3;
  v14, v15, v16, v17, v18, v19, v20, v21;
  [v6 setCompletionBlock_];
  _Block_release(v13);
  v23 = 17;
  v25 = MEMORY[0x1E69E6448];
  LODWORD(aBlock[0]) = 1066024305;
  VFXNode.setBehaviorGraphValue(key:value:)(&v23, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  return [v6 commit];
}

id sub_1BD87E020(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = objc_opt_self();
  [v6 begin];
  [v6 setAnimationDuration_];
  v7 = objc_allocWithZone(MEMORY[0x1E69793D0]);
  LODWORD(v8) = 1058665818;
  LODWORD(v9) = -1130005896;
  LODWORD(v10) = 1057152513;
  LODWORD(v11) = 1065520149;
  v12 = [v7 initWithControlPoints__:v8 :{v9, v10, v11}];
  [v6 setAnimationTimingFunction_];

  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = a3;
  v34 = sub_1BD87F29C;
  v35 = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  v33 = &block_descriptor_196;
  v14 = _Block_copy(aBlock);
  v15 = v35;
  sub_1BD0D44B8(a1, a2);
  v16 = a3;
  v15, v17, v18, v19, v20, v21, v22, v23;
  [v6 setCompletionBlock_];
  _Block_release(v14);
  [*&v16[OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_transferParticlesBurstA] setOpacity_];
  [*&v16[OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_transferParticlesBurstB] setOpacity_];
  v31 = 17;
  v24 = MEMORY[0x1E69E6448];
  v33 = MEMORY[0x1E69E6448];
  LODWORD(aBlock[0]) = 1063675494;
  VFXNode.setBehaviorGraphValue(key:value:)(&v31, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v31 = 15;
  v33 = v24;
  LODWORD(aBlock[0]) = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(&v31, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v31 = 2;
  v33 = v24;
  LODWORD(aBlock[0]) = 1120403456;
  VFXNode.setBehaviorGraphValue(key:value:)(&v31, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v31 = 5;
  v33 = v24;
  LODWORD(aBlock[0]) = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(&v31, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v31 = 6;
  v33 = v24;
  LODWORD(aBlock[0]) = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(&v31, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v31 = 7;
  v33 = v24;
  LODWORD(aBlock[0]) = 1065353216;
  VFXNode.setBehaviorGraphValue(key:value:)(&v31, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  [v6 commit];
  [v6 begin];
  [v6 setAnimationDuration_];
  v25 = objc_allocWithZone(MEMORY[0x1E69793D0]);
  LODWORD(v26) = 1036831949;
  LODWORD(v27) = 0.25;
  LODWORD(v28) = 1.0;
  v29 = [v25 initWithControlPoints__:v26 :{0.0, v27, v28}];
  [v6 setAnimationTimingFunction_];

  v31 = 4;
  v33 = v24;
  LODWORD(aBlock[0]) = 1065353216;
  VFXNode.setBehaviorGraphValue(key:value:)(&v31, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  return [v6 commit];
}

void sub_1BD87E410(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = objc_opt_self();
  [v6 begin];
  [v6 setAnimationDuration_];
  v7 = objc_allocWithZone(MEMORY[0x1E69793D0]);
  LODWORD(v8) = 1057328674;
  LODWORD(v9) = -1172485806;
  LODWORD(v10) = 1059521456;
  LODWORD(v11) = 1064153645;
  v12 = [v7 initWithControlPoints__:v8 :{v9, v10, v11}];
  [v6 setAnimationTimingFunction_];

  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = a3;
  v27 = sub_1BD87F2A8;
  v28 = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  v26 = &block_descriptor_202_0;
  v14 = _Block_copy(aBlock);
  v15 = v28;
  sub_1BD0D44B8(a1, a2);
  a3;
  v15, v16, v17, v18, v19, v20, v21, v22;
  [v6 setCompletionBlock_];
  _Block_release(v14);
  v24 = 1;
  v23 = MEMORY[0x1E69E6448];
  v26 = MEMORY[0x1E69E6448];
  LODWORD(aBlock[0]) = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(&v24, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  v24 = 17;
  v26 = v23;
  LODWORD(aBlock[0]) = 1065520988;
  VFXNode.setBehaviorGraphValue(key:value:)(&v24, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  [v6 commit];
  [v6 begin];
  [v6 setAnimationDuration_];
  v24 = 52;
  v26 = v23;
  LODWORD(aBlock[0]) = 1065353216;
  VFXNode.setBehaviorGraphValue(key:value:)(&v24, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  [v6 commit];
  AudioServicesPlaySystemSound(0x572u);
}

id sub_1BD87E6C8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = objc_opt_self();
  [v6 begin];
  [v6 setAnimationDuration_];
  v7 = objc_allocWithZone(MEMORY[0x1E69793D0]);
  LODWORD(v8) = 1053243421;
  LODWORD(v9) = -1100316934;
  LODWORD(v10) = 1059355361;
  LODWORD(v11) = 1065713926;
  v12 = [v7 initWithControlPoints__:v8 :{v9, v10, v11}];
  [v6 setAnimationTimingFunction_];

  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = a3;
  v27 = sub_1BD87F2B4;
  v28 = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  v26 = &block_descriptor_208;
  v14 = _Block_copy(aBlock);
  v15 = v28;
  sub_1BD0D44B8(a1, a2);
  a3;
  v15, v16, v17, v18, v19, v20, v21, v22;
  [v6 setCompletionBlock_];
  _Block_release(v14);
  v24 = 17;
  v26 = MEMORY[0x1E69E6448];
  LODWORD(aBlock[0]) = 1065302884;
  VFXNode.setBehaviorGraphValue(key:value:)(&v24, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  return [v6 commit];
}

id sub_1BD87E8C0(void *a1, void *a2)
{
  v4 = objc_opt_self();
  [v4 begin];
  [v4 setAnimationDuration_];
  v5 = objc_allocWithZone(MEMORY[0x1E69793D0]);
  LODWORD(v6) = 1053085716;
  LODWORD(v7) = 1045019230;
  LODWORD(v8) = 1059761370;
  LODWORD(v9) = 1.0;
  v10 = [v5 initWithControlPoints__:v6 :{v7, v8, v9}];
  [v4 setAnimationTimingFunction_];

  if (a1)
  {
    v22 = a1;
    v23 = a2;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD126964;
    v21 = &block_descriptor_211;
    a1 = _Block_copy(aBlock);
    v11 = v23;
    sub_1BE048964();
    v11, v12, v13, v14, v15, v16, v17, v18;
  }

  [v4 setCompletionBlock_];
  _Block_release(a1);
  v24 = 17;
  v21 = MEMORY[0x1E69E6448];
  LODWORD(aBlock[0]) = 1065353216;
  VFXNode.setBehaviorGraphValue(key:value:)(&v24, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  return [v4 commit];
}

uint64_t sub_1BD87EA78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1 + OBJC_IVAR____TtC9PassKitUI40NearbyPeerPaymentSenderVFXViewController_animationDelegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    v12 = 0;
    memset(v11, 0, sizeof(v11));
    (*(v6 + 72))(v11, ObjectType, v6);
    swift_unknownObjectRelease();
    sub_1BD11326C(v11);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = *(v5 + 8);
    v10 = swift_getObjectType();
    (*(v9 + 8))(a2, a3, v10, v9);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1BD87EB6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1 + OBJC_IVAR____TtC9PassKitUI40NearbyPeerPaymentSenderVFXViewController_animationDelegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    memset(v11, 0, sizeof(v11));
    v12 = xmmword_1BE0B8DF0;
    (*(v6 + 72))(v11, ObjectType, v6);
    swift_unknownObjectRelease();
    sub_1BD11326C(v11);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = *(v5 + 8);
    v10 = swift_getObjectType();
    (*(v9 + 40))(a2, a3, v10, v9);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1BD87EC68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1 + OBJC_IVAR____TtC9PassKitUI40NearbyPeerPaymentSenderVFXViewController_animationDelegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    memset(v11, 0, sizeof(v11));
    v12 = xmmword_1BE0B8E10;
    (*(v6 + 72))(v11, ObjectType, v6);
    swift_unknownObjectRelease();
    sub_1BD11326C(v11);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = *(v5 + 8);
    v10 = swift_getObjectType();
    (*(v9 + 56))(a2, a3, v10, v9);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1BD87ED64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1 + OBJC_IVAR____TtC9PassKitUI40NearbyPeerPaymentSenderVFXViewController_animationDelegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    (*(v7 + 64))(a2, a3, ObjectType, v7);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1BD87EE00()
{
  sub_1BD11326C(v0 + OBJC_IVAR____TtC9PassKitUI40NearbyPeerPaymentSenderVFXViewController_state);
  v1 = v0 + OBJC_IVAR____TtC9PassKitUI40NearbyPeerPaymentSenderVFXViewController_animationDelegate;

  return sub_1BD0D4534(v1);
}

id NearbyPeerPaymentSenderVFXViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1BD87F154()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  sub_1BD87C990(v1);

  return sub_1BD87CAF0(v1, v2, v3);
}

id sub_1BD87F37C()
{
  v0 = objc_allocWithZone(type metadata accessor for FundingSourceVerificationController(0));

  return [v0 init];
}

uint64_t type metadata accessor for SavingsBankVerificationView(uint64_t a1)
{
  result = qword_1EBD563C8;
  if (!qword_1EBD563C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD87F428(uint64_t a1)
{
  sub_1BD0E5E8C(319, &qword_1EBD3CCE0, 0x1E69B8330);
  if (v1 <= 0x3F)
  {
    sub_1BD0E5E8C(319, &qword_1EBD4E090, 0x1E69B83A8);
    if (v2 <= 0x3F)
    {
      sub_1BD10EE48();
      if (v3 <= 0x3F)
      {
        sub_1BD87F514(319);
        if (v4 <= 0x3F)
        {
          sub_1BD170C00(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1BD87F514(uint64_t a1)
{
  if (!qword_1EBD563D8)
  {
    type metadata accessor for FundingSourceVerificationController(255);
    sub_1BD881494(&qword_1EBD563E0, type metadata accessor for FundingSourceVerificationController, &unk_1BE0CCE80);
    v1 = sub_1BE04E3E4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD563D8);
    }
  }
}

uint64_t sub_1BD87F5C4@<X0>(void *a1@<X8>)
{
  v3 = sub_1BE04F3D4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20, &qword_1BE0C6AD0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v22 - v8);
  v10 = type metadata accessor for SavingsBankVerificationView(0);
  sub_1BD0DE19C(v1 + *(v10 + 32), v9, &qword_1EBD3FA20, &qword_1BE0C6AD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1BE04E664();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    v13 = *v9;
    sub_1BE052C44();
    v14 = sub_1BE050174();
    sub_1BE04CF84();

    sub_1BE04F3C4();
    swift_getAtKeyPath();
    v13, v15, v16, v17, v18, v19, v20, v21;
    return (*(v4 + 8))(v6, v3);
  }
}

id sub_1BD87F7CC@<X0>(void *a1@<X8>)
{
  v77 = a1;
  v2 = sub_1BE04BD74();
  v73 = *(v2 - 8);
  v74 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v72 = &v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44A98, &unk_1BE0D2A20);
  v67 = *(v4 - 8);
  v68 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v71 = &v65 - v5;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44A88, &unk_1BE0ECF10);
  MEMORY[0x1EEE9AC00](v76);
  v70 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v69 = &v65 - v8;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56440, &qword_1BE0FF050);
  MEMORY[0x1EEE9AC00](v75);
  v10 = (&v65 - v9);
  type metadata accessor for FundingSourceVerificationController(0);
  sub_1BD881494(&qword_1EBD563E0, type metadata accessor for FundingSourceVerificationController, &unk_1BE0CCE80);
  v11 = sub_1BE04E3C4();
  KeyPath = swift_getKeyPath();
  v13 = swift_getKeyPath();
  sub_1BE04D8B4(&v79);
  KeyPath, v14, v15, v16, v17, v18, v19, v20;
  v13, v21, v22, v23, v24, v25, v26, v27;

  if (v79)
  {

    v28 = sub_1BE04E3C4();
    v29 = swift_getKeyPath();
    v30 = swift_getKeyPath();
    sub_1BE04D8B4(&v79);
    v29, v31, v32, v33, v34, v35, v36, v37;
    v30, v38, v39, v40, v41, v42, v43, v44;

    *v10 = v79;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42280, &qword_1BE0FEFC0);
    sub_1BD880F44(&qword_1EBD56428, sub_1BD248390, MEMORY[0x1E6982090]);
    sub_1BD3CA07C();
    v45 = v77;
    sub_1BE04F9A4();
LABEL_6:
    v63 = 0;
LABEL_7:
    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56420, &qword_1BE0FEFD0);
    return (*(*(v64 - 8) + 56))(v45, v63, 1, v64);
  }

  v46 = v72;
  v47 = v73;
  v48 = v74;
  v50 = v70;
  v49 = v71;
  v66 = v10;
  v51 = v76;
  v45 = v77;
  v52 = *(v1 + 24);
  LOBYTE(v79) = *(v1 + 16);
  v80 = v52;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516A4();
  if (v78 != 1)
  {
    v63 = 1;
    goto LABEL_7;
  }

  (*(v47 + 104))(v46, *MEMORY[0x1E69B80E0], v48);
  result = PKPassKitBundle();
  if (result)
  {
    v54 = result;
    v55 = sub_1BE04B6F4();
    v57 = v56;

    (*(v47 + 8))(v46, v48);
    v79 = v55;
    v80 = v57;
    sub_1BD0DDEBC();
    sub_1BE04E504();
    v58 = (v50 + *(v51 + 36));
    v59 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ABF0, &qword_1BE0BB6F8) + 28);
    v60 = *MEMORY[0x1E697DC10];
    v61 = sub_1BE04E364();
    (*(*(v61 - 8) + 104))(v58 + v59, v60, v61);
    *v58 = swift_getKeyPath();
    (*(v67 + 32))(v50, v49, v68);
    v62 = v69;
    sub_1BD88121C(v50, v69);
    sub_1BD0DE19C(v62, v66, &qword_1EBD44A88, &unk_1BE0ECF10);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42280, &qword_1BE0FEFC0);
    sub_1BD880F44(&qword_1EBD56428, sub_1BD248390, MEMORY[0x1E6982090]);
    sub_1BD3CA07C();
    sub_1BE04F9A4();
    sub_1BD0DE53C(v62, &qword_1EBD44A88, &unk_1BE0ECF10);
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD87FE38@<X0>(uint64_t a1@<X8>)
{
  v128 = a1;
  v2 = sub_1BE04E664();
  v132 = *(v2 - 8);
  v133 = v2;
  v131 = *(v132 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v130 = &v119 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v129 = &v119 - v5;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0, &unk_1BE0BC2A0);
  MEMORY[0x1EEE9AC00](v127);
  v126 = (&v119 - v6);
  v7 = type metadata accessor for SavingsBankVerificationView(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v9;
  v11 = &v119 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD563E8, &qword_1BE0FEF58);
  v120 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v119 - v13);
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD563F0, &qword_1BE0FEF60);
  v123 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122);
  v121 = &v119 - v15;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD563F8, &unk_1BE0FEF68);
  v125 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124);
  v142 = &v119 - v16;
  sub_1BD87F7CC(v14);
  sub_1BD880C28(v1, v11);
  v17 = *(v8 + 80);
  v18 = (v17 + 16) & ~v17;
  v135 = v10;
  v136 = v17;
  v19 = swift_allocObject();
  sub_1BD880C8C(v11, v19 + v18);
  v20 = (v14 + *(v12 + 36));
  *v20 = sub_1BD880CF0;
  v20[1] = v19;
  v20[2] = 0;
  v20[3] = 0;
  v21 = v1;
  v22 = *(v1 + 32);
  v140 = *(v1 + 40);
  v141 = v22;
  v139 = *(v1 + 48);
  v134 = v1;
  v138 = type metadata accessor for FundingSourceVerificationController(0);
  v137 = sub_1BD881494(&qword_1EBD563E0, type metadata accessor for FundingSourceVerificationController, &unk_1BE0CCE80);
  v23 = sub_1BE04E3C4();
  KeyPath = swift_getKeyPath();
  v25 = swift_getKeyPath();
  sub_1BE04D8B4(&v143);
  KeyPath, v26, v27, v28, v29, v30, v31, v32;
  v25, v33, v34, v35, v36, v37, v38, v39;

  v40 = v143;
  v41 = v11;
  v119 = v11;
  sub_1BD880C28(v21, v11);
  v42 = swift_allocObject();
  sub_1BD880C8C(v41, v42 + v18);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42280, &qword_1BE0FEFC0);
  v44 = sub_1BD880D78();
  v45 = sub_1BD880F44(&qword_1EBD56430, sub_1BD2482E0, MEMORY[0x1E69E7C80]);
  v46 = v121;
  v47 = v120;
  sub_1BE051064();
  v42, v48, v49, v50, v51, v52, v53, v54;

  sub_1BD0DE53C(v14, &qword_1EBD563E8, &qword_1BE0FEF58);
  v55 = v134;
  v56 = *(v134 + 24);
  LOBYTE(v143) = *(v134 + 16);
  v144 = v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516A4();
  v57 = v55;
  v58 = v119;
  sub_1BD880C28(v57, v119);
  v59 = swift_allocObject();
  sub_1BD880C8C(v58, v59 + v18);
  v143 = v47;
  v144 = v43;
  v145 = v44;
  v146 = v45;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v61 = MEMORY[0x1E69E6388];
  v62 = v122;
  sub_1BE051074();
  v59, v63, v64, v65, v66, v67, v68, v69;
  (*(v123 + 8))(v46, v62);
  v70 = sub_1BE04E3C4();
  v71 = swift_getKeyPath();
  v72 = swift_getKeyPath();
  v73 = v126;
  sub_1BE04D8B4(v126);

  v71, v74, v75, v76, v77, v78, v79, v80;
  v72, v81, v82, v83, v84, v85, v86, v87;
  sub_1BD880C28(v134, v58);
  v88 = swift_allocObject();
  sub_1BD880C8C(v58, v88 + v18);
  v143 = v62;
  v144 = MEMORY[0x1E69E6370];
  v145 = OpaqueTypeConformance2;
  v146 = v61;
  swift_getOpaqueTypeConformance2();
  sub_1BD2477C0();
  v89 = v128;
  v90 = v73;
  v91 = v124;
  v92 = v142;
  sub_1BE051074();
  v88, v93, v94, v95, v96, v97, v98, v99;
  sub_1BD0DE53C(v90, &qword_1EBD416C0, &unk_1BE0BC2A0);
  (*(v125 + 8))(v92, v91);
  v100 = sub_1BE04E3D4();
  v101 = swift_getKeyPath();
  v102 = v89 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56438, &qword_1BE0FF048) + 36);
  sub_1BE04E974();

  v101, v103, v104, v105, v106, v107, v108, v109;
  v110 = v129;
  sub_1BD87F5C4(v129);
  v111 = v133;
  v112 = v132 + 32;
  v113 = *(v132 + 32);
  v114 = v130;
  v113(v130, v110, v133);
  v115 = (*(v112 + 48) + 16) & ~*(v112 + 48);
  v116 = swift_allocObject();
  v113((v116 + v115), v114, v111);
  result = type metadata accessor for ErrorAlertModifier(0);
  v118 = (v102 + *(result + 20));
  *v118 = sub_1BD8811C0;
  v118[1] = v116;
  return result;
}

void sub_1BD880724(uint64_t a1, void *a2)
{
  v3 = sub_1BE04E664();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (!*a2)
  {
    sub_1BD87F5C4(v6);
    sub_1BE04E654();
    (*(v4 + 8))(v6, v3);
  }
}

void sub_1BD880804(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516A4();
  if (v1 == 1)
  {
    sub_1BD880870();
  }
}

void sub_1BD880870()
{
  type metadata accessor for FundingSourceVerificationController(0);
  sub_1BD881494(&qword_1EBD563E0, type metadata accessor for FundingSourceVerificationController, &unk_1BE0CCE80);
  v1 = sub_1BE04E3C4();
  v2 = &v1[OBJC_IVAR____TtC9PassKitUI20ApplyControllerModel_applicationType];
  *v2 = 6;
  v2[8] = 0;

  v3 = sub_1BE04E3C4();
  v4 = &v3[OBJC_IVAR____TtC9PassKitUI35FundingSourceVerificationController_verificationType];
  *v4 = 2;
  v4[8] = 0;

  v5 = sub_1BE04E3C4();
  v6 = *v0;
  v7 = *&v5[OBJC_IVAR____TtC9PassKitUI20ApplyControllerModel_account];
  *&v5[OBJC_IVAR____TtC9PassKitUI20ApplyControllerModel_account] = *v0;
  v8 = v6;

  v9 = sub_1BE04E3C4();
  v10 = *(v0 + 8);
  v11 = *&v9[OBJC_IVAR____TtC9PassKitUI35FundingSourceVerificationController_fundingSource];
  *&v9[OBJC_IVAR____TtC9PassKitUI35FundingSourceVerificationController_fundingSource] = v10;
  v12 = v10;

  v13 = sub_1BE04E3C4();
  sub_1BD333918();
}

double sub_1BD880A20(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516B4();
  return result;
}

void sub_1BD880A7C(void *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  sub_1BE04D8B4(a2);
  KeyPath, v5, v6, v7, v8, v9, v10, v11;

  v4, v12, v13, v14, v15, v16, v17, v18;
}

uint64_t sub_1BD880AF8(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0, &unk_1BE0BC2A0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - v8;
  sub_1BD0DE19C(a1, &v13 - v8, &qword_1EBD416C0, &unk_1BE0BC2A0);
  v10 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BD0DE19C(v9, v6, &qword_1EBD416C0, &unk_1BE0BC2A0);
  v11 = v10;
  sub_1BE04D8C4();
  return sub_1BD0DE53C(v9, &qword_1EBD416C0, &unk_1BE0BC2A0);
}

uint64_t sub_1BD880C28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SavingsBankVerificationView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD880C8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SavingsBankVerificationView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1BD880CF8(uint64_t a1, void *a2)
{
  type metadata accessor for SavingsBankVerificationView(0);

  sub_1BD880724(a1, a2);
}

unint64_t sub_1BD880D78()
{
  result = qword_1EBD56400;
  if (!qword_1EBD56400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD563E8, &qword_1BE0FEF58);
    sub_1BD880E04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD56400);
  }

  return result;
}

unint64_t sub_1BD880E04()
{
  result = qword_1EBD56408;
  if (!qword_1EBD56408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD56410, &qword_1BE0FEFC8);
    sub_1BD880E88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD56408);
  }

  return result;
}

unint64_t sub_1BD880E88()
{
  result = qword_1EBD56418;
  if (!qword_1EBD56418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD56420, &qword_1BE0FEFD0);
    sub_1BD880F44(&qword_1EBD56428, sub_1BD248390, MEMORY[0x1E6982090]);
    sub_1BD3CA07C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD56418);
  }

  return result;
}

uint64_t sub_1BD880F44(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD42280, &qword_1BE0FEFC0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1BD880FBC()
{
  v1 = *(type metadata accessor for SavingsBankVerificationView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_1BD880804(v2);
}

uint64_t objectdestroyTm_101()
{
  v1 = (type metadata accessor for SavingsBankVerificationView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  *(v2 + 24), v3, v4, v5, v6, v7, v8, v9;
  sub_1BD035CB4(*(v2 + 32), *(v2 + 40), *(v2 + 48), v10, v11, v12, v13, v14);
  v15 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20, &qword_1BE0C6AD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = sub_1BE04E664();
    (*(*(v23 - 8) + 8))(v2 + v15, v23);
  }

  else
  {
    *(v2 + v15), v16, v17, v18, v19, v20, v21, v22;
  }

  return swift_deallocObject();
}

uint64_t sub_1BD88121C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44A88, &unk_1BE0ECF10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BD88128C()
{
  result = qword_1EBD56448;
  if (!qword_1EBD56448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD56438, &qword_1BE0FF048);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD563F8, &unk_1BE0FEF68);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD416C0, &unk_1BE0BC2A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD563F0, &qword_1BE0FEF60);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD563E8, &qword_1BE0FEF58);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD42280, &qword_1BE0FEFC0);
    sub_1BD880D78();
    sub_1BD880F44(&qword_1EBD56430, sub_1BD2482E0, MEMORY[0x1E69E7C80]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1BD2477C0();
    swift_getOpaqueTypeConformance2();
    sub_1BD881494(&qword_1EBD3EA00, type metadata accessor for ErrorAlertModifier, &unk_1BE101590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD56448);
  }

  return result;
}

uint64_t sub_1BD881494(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1BD8815D8()
{
  v1 = v0;
  v66 = *MEMORY[0x1E69E9840];
  *&v60 = sub_1BE04B8D4();
  v2 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v4 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v56 - v6;
  v59 = sub_1BE04B944();
  v57 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE04BAC4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v0 + OBJC_IVAR____TtC9PassKitUI38ProvisioningReaderModeReadCardFlowItem_context);
  sub_1BE04BC34();
  v58 = sub_1BE04B9A4();
  (*(v11 + 8))(v13, v10);
  v15 = *(v0 + OBJC_IVAR____TtC9PassKitUI38ProvisioningReaderModeReadCardFlowItem_product);
  sub_1BE04BB94();
  sub_1BE04B924();
  (*(v57 + 8))(v9, v59);
  v16 = v60;
  (*(v2 + 104))(v4, *MEMORY[0x1E69B7F80], v60);
  LOBYTE(v13) = sub_1BE04B8C4();
  v17 = *(v2 + 8);
  v17(v4, v16);
  v17(v7, v16);
  v18 = *(v1 + OBJC_IVAR____TtC9PassKitUI38ProvisioningReaderModeReadCardFlowItem_fieldsModel);
  v19 = objc_allocWithZone(PKProvisioningReaderModeViewController);
  v20 = v1;
  v61 = v1;
  v21 = [v19 initWithContext:v58 product:v15 isWatch:v13 & 1 fieldsModel:v18 delegate:v1];
  sub_1BE052434();
  v23 = v22;
  v62 = v14;
  v24 = sub_1BE04BB74();
  v23, v25, v26, v27, v28, v29, v30, v31;
  [v21 setReporter_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46290, &qword_1BE0CC120);
  v32 = sub_1BE04C384();
  v33 = *(v32 - 8);
  v34 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v35 = swift_allocObject();
  v60 = xmmword_1BE0B69E0;
  *(v35 + 16) = xmmword_1BE0B69E0;
  *(v35 + v34) = [objc_allocWithZone(MEMORY[0x1E69B91F0]) init];
  (*(v33 + 104))(v35 + v34, *MEMORY[0x1E69B8290], v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD456E0, &unk_1BE0FF0F0);
  *(swift_allocObject() + 16) = v60;
  sub_1BE04BB94();
  sub_1BE04C3D4();
  swift_allocObject();
  v36 = sub_1BE04C394();
  v37 = type metadata accessor for PKProvisioningFieldsUIRendererObjWrapper();
  v38 = objc_allocWithZone(v37);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v65.receiver = v38;
  v65.super_class = v37;
  v39 = v21;
  v40 = objc_msgSendSuper2(&v65, &selRef_initWithCounterpartHandles_transactionSourceCollection_paymentDataProvider_);
  key = 0;
  objc_setAssociatedObject(v39, &key, v40, 1);
  LOBYTE(v9) = *(v20 + OBJC_IVAR____TtC9PassKitUI38ProvisioningReaderModeReadCardFlowItem_termsAccepted);
  v41 = type metadata accessor for ProvisioningUICoordinator();
  v42 = objc_allocWithZone(v41);
  *&v42[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v42[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_manualEntryDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v43 = &v42[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_renderer];
  *&v42[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_renderer + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v42[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_credentialIndex] = 0;
  *&v42[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_cameraCaptureObjects] = MEMORY[0x1E69E7CC0];
  *&v42[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_composer] = 0;
  *&v42[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_fieldsModel] = 0;
  v42[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_skipRequirements] = 0;
  *&v42[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_provisioningError] = 0;
  *&v42[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_provisionedPasses] = 0;
  *&v42[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_passcodeAssertion] = 0;
  *&v42[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_seStorageHandle] = 0;
  *&v42[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_termsPresenter] = 0;
  *&v42[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_context] = v62;
  *&v42[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_configuration] = v36;
  swift_unknownObjectWeakAssign();
  *(v43 + 1) = &off_1F3BC1D90;
  swift_unknownObjectWeakAssign();
  v42[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_previouslyAcceptedTerms] = v9;
  v44 = v39;
  sub_1BE048964();
  sub_1BE048964();
  *&v42[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_reporter] = sub_1BE04BBB4();
  v63.receiver = v42;
  v63.super_class = v41;
  v45 = objc_msgSendSuper2(&v63, sel_init);
  v36, v46, v47, v48, v49, v50, v51, v52;

  *&v45[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_delegate + 8] = &off_1F3BC1830;
  v53 = v61;
  swift_unknownObjectWeakAssign();
  v54 = *(v53 + OBJC_IVAR____TtC9PassKitUI38ProvisioningReaderModeReadCardFlowItem_coordinator);
  *(v53 + OBJC_IVAR____TtC9PassKitUI38ProvisioningReaderModeReadCardFlowItem_coordinator) = v45;

  return v21;
}

uint64_t sub_1BD881CF0()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI38ProvisioningReaderModeReadCardFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD881D2C(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI38ProvisioningReaderModeReadCardFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

id sub_1BD881D7C(uint64_t a1, void *a2, char a3)
{
  v4 = v3 + OBJC_IVAR____TtC9PassKitUI38ProvisioningReaderModeReadCardFlowItem_provisioningResult;
  v5 = *(v3 + OBJC_IVAR____TtC9PassKitUI38ProvisioningReaderModeReadCardFlowItem_provisioningResult);
  *v4 = a2;
  v6 = *(v4 + 8);
  *(v4 + 8) = a3 & 1;
  sub_1BD585394(v5, v6);

  return a2;
}

void sub_1BD881DD4(void *a1, void *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46290, &qword_1BE0CC120);
  v6 = sub_1BE04C384();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1BE0B69E0;
  *(v9 + v8) = a2;
  (*(v7 + 104))(v9 + v8, *MEMORY[0x1E69B82A8], v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD456E0, &unk_1BE0FF0F0);
  sub_1BE04B944();
  *(swift_allocObject() + 16) = xmmword_1BE0B69E0;
  v10 = a2;
  sub_1BE04BB94();
  sub_1BE04C3D4();
  swift_allocObject();
  v18 = sub_1BE04C394();
  v19 = OBJC_IVAR____TtC9PassKitUI38ProvisioningReaderModeReadCardFlowItem_coordinator;
  v20 = *(v3 + OBJC_IVAR____TtC9PassKitUI38ProvisioningReaderModeReadCardFlowItem_coordinator);
  if (v20)
  {
    v21 = v20;
    sub_1BD81412C(v18);

    v22 = *(v3 + v19);
    if (v22)
    {
      v23 = v22;
      sub_1BD8145A8(a1);
    }
  }

  v18, v11, v12, v13, v14, v15, v16, v17;
}

uint64_t sub_1BD882194()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI38ProvisioningReaderModeReadCardFlowItem_coordinator);
  if (!v1)
  {
    return 0;
  }

  v2 = *&v1[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_provisionedPasses];
  if (!v2)
  {
    return 0;
  }

  v3 = v1;
  v4 = v2;
  v5 = sub_1BE04BC84();

  return v5;
}

uint64_t sub_1BD882248()
{
  v1 = v0 + OBJC_IVAR____TtC9PassKitUI38ProvisioningReaderModeReadCardFlowItem_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    memset(v5, 0, sizeof(v5));
    v6 = 2;
    sub_1BD865A00(v0, &off_1F3BC1840, v5, ObjectType, v3);
    swift_unknownObjectRelease();
    return sub_1BD12FF7C(v5);
  }

  return result;
}

void sub_1BD8822D8()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI38ProvisioningReaderModeReadCardFlowItem_provisioningResult + 8);
  if (v1 == 255 || (v1 & 1) != 0)
  {
    v2 = v0 + OBJC_IVAR____TtC9PassKitUI38ProvisioningReaderModeReadCardFlowItem_delegate;
    if (!swift_unknownObjectWeakLoadStrong())
    {
      return;
    }

    v3 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    sub_1BD8659A4(v0, &off_1F3BC1840, ObjectType, v3);
    goto LABEL_7;
  }

  v5 = *(v0 + OBJC_IVAR____TtC9PassKitUI38ProvisioningReaderModeReadCardFlowItem_provisioningResult);
  v6 = *(v0 + OBJC_IVAR____TtC9PassKitUI38ProvisioningReaderModeReadCardFlowItem_context);
  objc_allocWithZone(type metadata accessor for ProvisioningPassIngestionSection());
  sub_1BE048964();
  sub_1BD8733EC(v5, v1);
  v17 = sub_1BD989980(v6, v5);
  v6, v7, v8, v9, v10, v11, v12, v13;
  v14 = v0 + OBJC_IVAR____TtC9PassKitUI38ProvisioningReaderModeReadCardFlowItem_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v15 = *(v14 + 8);
    v16 = swift_getObjectType();
    sub_1BD865948(v0, &off_1F3BC1840, v17, &off_1F3BC8F80, v16, v15);
    sub_1BD585394(v5, v1);

LABEL_7:

    swift_unknownObjectRelease();
    return;
  }

  sub_1BD585394(v5, v1);
}

void sub_1BD882488()
{
  v1 = sub_1BE04B944();
  MEMORY[0x1EEE9AC00](v1);
  v5 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v0 + OBJC_IVAR____TtC9PassKitUI38ProvisioningReaderModeReadCardFlowItem_provisioningResult);
  v7 = *(v0 + OBJC_IVAR____TtC9PassKitUI38ProvisioningReaderModeReadCardFlowItem_provisioningResult + 8);
  if (v7 != 255)
  {
    v8 = *v6;
    if (v7)
    {
      v35 = *v6;
      sub_1BD8826F8();
      sub_1BD412688();
      swift_willThrowTypedImpl();
      return;
    }

    v30 = (v0 + OBJC_IVAR____TtC9PassKitUI38ProvisioningReaderModeReadCardFlowItem_provisioningResult);
    v31 = v8;
    v32 = v7;
    v33 = v3;
    v34 = v2;
    v9 = *(v0 + OBJC_IVAR____TtC9PassKitUI38ProvisioningReaderModeReadCardFlowItem_context);
    v8;
    v29[1] = v9;
    sub_1BE04BB94();
    v10 = sub_1BE04BD44();
    v18 = v10;
    if (v10 >> 62)
    {
      v19 = sub_1BE053704();
      if (v19)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v19 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v19)
      {
LABEL_6:
        if (v19 < 1)
        {
          __break(1u);
          return;
        }

        for (i = 0; i != v19; ++i)
        {
          if ((v18 & 0xC000000000000001) != 0)
          {
            v21 = MEMORY[0x1BFB40900](i, v18);
          }

          else
          {
            v21 = *(v18 + 8 * i + 32);
          }

          v22 = v21;
          v23 = sub_1BE04B934();
          if ([v23 respondsToSelector_])
          {
            v24 = sub_1BE04B8E4();
            [v23 paymentWebService:v24 removePass:v22 withCompletionHandler:0];
          }

          swift_unknownObjectRelease();
        }
      }
    }

    v18, v11, v12, v13, v14, v15, v16, v17;
    v25 = v30;
    v26 = *v30;
    *v30 = 0;
    v27 = *(v25 + 8);
    *(v25 + 8) = -1;
    sub_1BD585394(v26, v27);
    v28 = sub_1BE04BBD4();
    [v28 resetForNewProvisioningForce_];

    sub_1BD585394(v31, v32);
    (*(v33 + 8))(v5, v34);
  }
}

unint64_t sub_1BD8826F8()
{
  result = qword_1EBD45AD0[0];
  if (!qword_1EBD45AD0[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1EBD45AD0);
  }

  return result;
}

void sub_1BD88278C(uint64_t a1)
{
  sub_1BD3DE6D8();
  if (v1 <= 0x3F)
  {
    sub_1BD1C86BC();
    if (v2 <= 0x3F)
    {
      sub_1BD8828D4(319, &qword_1EBD36A40, MEMORY[0x1E6969530]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for PKPaymentRewardsRedemptionStatus(319);
        if (v4 <= 0x3F)
        {
          sub_1BD8828D4(319, &qword_1EBD56518, sub_1BD3DE6D8);
          if (v5 <= 0x3F)
          {
            sub_1BD8828D4(319, &qword_1EBD45140, MEMORY[0x1E6968FB0]);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1BD8828D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BE0534B4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1BD882970(uint64_t a1)
{
  result = type metadata accessor for PaymentRewardsDetailItem(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1BD8829F8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v4 = sub_1BE050474();
  v55 = *(v4 - 8);
  v56 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v54 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_1BE04FF64();
  v50 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56608, &qword_1BE0FF3B8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v48 - v9;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56610, &qword_1BE0FF3C0);
  v51 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v12 = &v48 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56618, &qword_1BE0FF3C8);
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13);
  v53 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v48 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56620, &qword_1BE0FF3D0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v48 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v48 - v22;
  *v23 = sub_1BE04F7C4();
  *(v23 + 1) = 0;
  v23[16] = 1;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56628, &qword_1BE0FF3D8);
  sub_1BD882FA4(a1, &v23[*(v24 + 44)]);
  *v10 = sub_1BE04F504();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56630, &qword_1BE0FF3E0);
  sub_1BD883AA4(a1, &v10[*(v25 + 44)]);
  sub_1BE04FF44();
  v26 = sub_1BD0DE4F4(&qword_1EBD56638, &qword_1EBD56608, &qword_1BE0FF3B8, MEMORY[0x1E69817F8]);
  sub_1BE050D14();
  (*(v50 + 8))(v7, v52);
  sub_1BD0DE53C(v10, &qword_1EBD56608, &qword_1BE0FF3B8);
  sub_1BE052434();
  v28 = v27;
  v58 = v8;
  v59 = v26;
  swift_getOpaqueTypeConformance2();
  v29 = v49;
  sub_1BE050DE4();
  v28, v30, v31, v32, v33, v34, v35, v36;
  (*(v51 + 8))(v12, v29);
  v38 = v54;
  v37 = v55;
  v39 = v56;
  (*(v55 + 104))(v54, *MEMORY[0x1E6980EF8], v56);
  sub_1BE0503A4();
  v40 = sub_1BE050284();
  (*(v37 + 8))(v38, v39);
  KeyPath = swift_getKeyPath();
  v42 = &v18[*(v14 + 44)];
  *v42 = KeyPath;
  v42[1] = v40;
  v43 = v48;
  sub_1BD0DE19C(v23, v48, &qword_1EBD56620, &qword_1BE0FF3D0);
  v44 = v53;
  sub_1BD0DE19C(v18, v53, &qword_1EBD56618, &qword_1BE0FF3C8);
  v45 = v57;
  sub_1BD0DE19C(v43, v57, &qword_1EBD56620, &qword_1BE0FF3D0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56640, &qword_1BE0FF3E8);
  sub_1BD0DE19C(v44, v45 + *(v46 + 48), &qword_1EBD56618, &qword_1BE0FF3C8);
  sub_1BD0DE53C(v18, &qword_1EBD56618, &qword_1BE0FF3C8);
  sub_1BD0DE53C(v23, &qword_1EBD56620, &qword_1BE0FF3D0);
  sub_1BD0DE53C(v44, &qword_1EBD56618, &qword_1BE0FF3C8);
  return sub_1BD0DE53C(v43, &qword_1EBD56620, &qword_1BE0FF3D0);
}

uint64_t sub_1BD882FA4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v115 = a1;
  v121 = a2;
  v113 = sub_1BE04FF64();
  v111 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113);
  v108 = &v105 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56608, &qword_1BE0FF3B8);
  MEMORY[0x1EEE9AC00](v110);
  v106 = (&v105 - v4);
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56610, &qword_1BE0FF3C0);
  v112 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v109 = &v105 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56670, &qword_1BE0FF408);
  v7 = *(v6 - 8);
  v118 = v6;
  v119 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v107 = &v105 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56678, &qword_1BE0FF410);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v120 = &v105 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v116 = &v105 - v12;
  v13 = sub_1BE050474();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v105 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56648, &qword_1BE0FF3F0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v117 = &v105 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v122 = &v105 - v20;
  v123 = sub_1BD886824(*a1);
  v124 = v21;
  sub_1BD0DDEBC();
  v22 = sub_1BE0506C4();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  (*(v14 + 104))(v16, *MEMORY[0x1E6980EF8], v13);
  sub_1BE0503A4();
  v29 = sub_1BE050284();
  (*(v14 + 8))(v16, v13);
  v30 = sub_1BE0505F4();
  v32 = v31;
  LOBYTE(v13) = v33;
  v35 = v34;
  v29, v31, v33, v34, v36, v37, v38, v39;
  sub_1BD0DDF10(v22, v24, (v26 & 1), v40, v41, v42, v43, v44);
  v28, v45, v46, v47, v48, v49, v50, v51;
  v123 = v30;
  v124 = v32;
  v125 = v13 & 1;
  v52 = 1;
  v126 = v35;
  v127 = 1;
  v128 = 0x3FE0000000000000;
  sub_1BE052434();
  v54 = v53;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56650, &qword_1BE0FF3F8);
  sub_1BD886744();
  v55 = v115;
  sub_1BE050DE4();
  v54, v56, v57, v58, v59, v60, v61, v62;
  sub_1BD0DDF10(v30, v32, (v13 & 1), v63, v64, v65, v66, v67);
  v35, v68, v69, v70, v71, v72, v73, v74;
  v75 = *(v55 + 32);
  if (v75)
  {
    v76 = *(v55 + 24);
    v77 = sub_1BE04F504();
    v78 = v106;
    *v106 = v77;
    *(v78 + 8) = 0;
    *(v78 + 16) = 1;
    v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56630, &qword_1BE0FF3E0);
    sub_1BD883730(v55, v76, v75, v78 + *(v79 + 44));
    v80 = v108;
    sub_1BE04FF44();
    v81 = sub_1BD0DE4F4(&qword_1EBD56638, &qword_1EBD56608, &qword_1BE0FF3B8, MEMORY[0x1E69817F8]);
    v83 = v109;
    v82 = v110;
    sub_1BE050D14();
    (*(v111 + 8))(v80, v113);
    sub_1BD0DE53C(v78, &qword_1EBD56608, &qword_1BE0FF3B8);
    sub_1BE052434();
    v85 = v84;
    v123 = v82;
    v124 = v81;
    swift_getOpaqueTypeConformance2();
    v86 = v107;
    v87 = v114;
    sub_1BE050DE4();
    v85, v88, v89, v90, v91, v92, v93, v94;
    (*(v112 + 8))(v83, v87);
    v95 = sub_1BE04FC94();
    v96 = v118;
    *(v86 + *(v118 + 36)) = v95;
    v97 = v116;
    sub_1BD0BD04C(v86, v116);
    v52 = 0;
    v98 = v96;
  }

  else
  {
    v98 = v118;
    v97 = v116;
  }

  (*(v119 + 56))(v97, v52, 1, v98);
  v99 = v122;
  v100 = v117;
  sub_1BD0DE19C(v122, v117, &qword_1EBD56648, &qword_1BE0FF3F0);
  v101 = v120;
  sub_1BD0DE19C(v97, v120, &qword_1EBD56678, &qword_1BE0FF410);
  v102 = v121;
  sub_1BD0DE19C(v100, v121, &qword_1EBD56648, &qword_1BE0FF3F0);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56680, &unk_1BE0FF418);
  sub_1BD0DE19C(v101, v102 + *(v103 + 48), &qword_1EBD56678, &qword_1BE0FF410);
  sub_1BD0DE53C(v97, &qword_1EBD56678, &qword_1BE0FF410);
  sub_1BD0DE53C(v99, &qword_1EBD56648, &qword_1BE0FF3F0);
  sub_1BD0DE53C(v101, &qword_1EBD56678, &qword_1BE0FF410);
  return sub_1BD0DE53C(v100, &qword_1EBD56648, &qword_1BE0FF3F0);
}

uint64_t sub_1BD883730@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v79 = a2;
  v80 = a3;
  v84 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0, &qword_1BE0B7620);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v83 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v81 = &v79 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56648, &qword_1BE0FF3F0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v82 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v79 - v12;
  v14 = *(a1 + 8);
  v15 = *(a1 + 16);
  v85 = v14;
  v86 = v15;
  sub_1BD0DDEBC();
  sub_1BE048C84();
  v16 = sub_1BE0506C4();
  v18 = v17;
  v20 = v19;
  v85 = v16;
  v86 = v17;
  v22 = (v21 & 1);
  v87 = v21 & 1;
  v88 = v19;
  v89 = 1;
  v90 = 0x3FE0000000000000;
  sub_1BE052434();
  v24 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56650, &qword_1BE0FF3F8);
  sub_1BD886744();
  sub_1BE050DE4();
  v24, v25, v26, v27, v28, v29, v30, v31;
  sub_1BD0DDF10(v16, v18, v22, v32, v33, v34, v35, v36);
  v20, v37, v38, v39, v40, v41, v42, v43;
  v85 = v79;
  v86 = v80;
  sub_1BE048C84();
  v44 = sub_1BE0506C4();
  v46 = v45;
  v48 = v47;
  v85 = v44;
  v86 = v45;
  v50 = (v49 & 1);
  v87 = v49 & 1;
  v88 = v47;
  sub_1BE052434();
  v52 = v51;
  v53 = v81;
  sub_1BE050DE4();
  v52, v54, v55, v56, v57, v58, v59, v60;
  sub_1BD0DDF10(v44, v46, v50, v61, v62, v63, v64, v65);
  v48, v66, v67, v68, v69, v70, v71, v72;
  v73 = v82;
  sub_1BD0DE19C(v13, v82, &qword_1EBD56648, &qword_1BE0FF3F0);
  v74 = v83;
  sub_1BD0DE19C(v53, v83, &qword_1EBD452C0, &qword_1BE0B7620);
  v75 = v84;
  sub_1BD0DE19C(v73, v84, &qword_1EBD56648, &qword_1BE0FF3F0);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56668, &qword_1BE0FF400);
  v77 = v75 + *(v76 + 48);
  *v77 = 0;
  *(v77 + 8) = 1;
  sub_1BD0DE19C(v74, v75 + *(v76 + 64), &qword_1EBD452C0, &qword_1BE0B7620);
  sub_1BD0DE53C(v53, &qword_1EBD452C0, &qword_1BE0B7620);
  sub_1BD0DE53C(v13, &qword_1EBD56648, &qword_1BE0FF3F0);
  sub_1BD0DE53C(v74, &qword_1EBD452C0, &qword_1BE0B7620);
  return sub_1BD0DE53C(v73, &qword_1EBD56648, &qword_1BE0FF3F0);
}

id sub_1BD883AA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v122 = a1;
  v120 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0, &qword_1BE0B7620);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v121 = &v117 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v119 = &v117 - v5;
  v6 = sub_1BE050474();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v117 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE04BD74();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v117 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56648, &qword_1BE0FF3F0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v118 = &v117 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v123 = &v117 - v18;
  (*(v11 + 104))(v13, *MEMORY[0x1E69B8088], v10, v17);
  result = PKPassKitBundle();
  if (result)
  {
    v20 = result;
    v21 = sub_1BE04B6F4();
    v23 = v22;

    (*(v11 + 8))(v13, v10);
    v124 = v21;
    v125 = v23;
    sub_1BD0DDEBC();
    v24 = sub_1BE0506C4();
    v26 = v25;
    v28 = v27;
    v30 = v29;
    (*(v7 + 104))(v9, *MEMORY[0x1E6980EF8], v6);
    sub_1BE0503A4();
    v31 = sub_1BE050284();
    v32 = v6;
    v33 = v31;
    (*(v7 + 8))(v9, v32);
    v34 = sub_1BE0505F4();
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v33, v35, v37, v39, v41, v42, v43, v44;
    sub_1BD0DDF10(v24, v26, (v28 & 1), v45, v46, v47, v48, v49);
    v30, v50, v51, v52, v53, v54, v55, v56;
    v124 = v34;
    v125 = v36;
    v126 = v38 & 1;
    v127 = v40;
    v128 = 1;
    v129 = 0x3FE0000000000000;
    sub_1BE052434();
    v58 = v57;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56650, &qword_1BE0FF3F8);
    sub_1BD886744();
    sub_1BE050DE4();
    v58, v59, v60, v61, v62, v63, v64, v65;
    sub_1BD0DDF10(v34, v36, (v38 & 1), v66, v67, v68, v69, v70);
    v40, v71, v72, v73, v74, v75, v76, v77;
    result = [*(v122 + 40) formattedStringValue];
    if (result)
    {
      v78 = result;
      v79 = sub_1BE052434();
      v81 = v80;

      v124 = v79;
      v125 = v81;
      v82 = sub_1BE0506C4();
      v84 = v83;
      v86 = v85;
      v124 = v82;
      v125 = v83;
      v88 = (v87 & 1);
      v126 = v87 & 1;
      v127 = v85;
      sub_1BE052434();
      v90 = v89;
      v91 = v119;
      sub_1BE050DE4();
      v90, v92, v93, v94, v95, v96, v97, v98;
      sub_1BD0DDF10(v82, v84, v88, v99, v100, v101, v102, v103);
      v86, v104, v105, v106, v107, v108, v109, v110;
      v111 = v123;
      v112 = v118;
      sub_1BD0DE19C(v123, v118, &qword_1EBD56648, &qword_1BE0FF3F0);
      v113 = v121;
      sub_1BD0DE19C(v91, v121, &qword_1EBD452C0, &qword_1BE0B7620);
      v114 = v120;
      sub_1BD0DE19C(v112, v120, &qword_1EBD56648, &qword_1BE0FF3F0);
      v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56668, &qword_1BE0FF400);
      v116 = v114 + *(v115 + 48);
      *v116 = 0;
      *(v116 + 8) = 1;
      sub_1BD0DE19C(v113, v114 + *(v115 + 64), &qword_1EBD452C0, &qword_1BE0B7620);
      sub_1BD0DE53C(v91, &qword_1EBD452C0, &qword_1BE0B7620);
      sub_1BD0DE53C(v111, &qword_1EBD56648, &qword_1BE0FF3F0);
      sub_1BD0DE53C(v113, &qword_1EBD452C0, &qword_1BE0B7620);
      return sub_1BD0DE53C(v112, &qword_1EBD56648, &qword_1BE0FF3F0);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD884058()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD565F8, &qword_1BE0FF3B0);
  sub_1BD0DE4F4(&qword_1EBD56600, &qword_1EBD565F8, &qword_1BE0FF3B0, MEMORY[0x1E6981F48]);
  return sub_1BE0504E4();
}

id sub_1BD884110@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a1;
  v32 = a2;
  v2 = type metadata accessor for RedemptionStatusLinkButton(0);
  v29 = *(v2 - 8);
  v3 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80, &qword_1BE0BB860);
  v8 = *(v31 - 8);
  v9 = MEMORY[0x1EEE9AC00](v31);
  v11 = &v29 - v10;
  (*(v5 + 104))(v7, *MEMORY[0x1E69B8088], v4, v9);
  result = PKPassKitBundle();
  if (result)
  {
    v13 = result;
    v14 = sub_1BE04B6F4();
    v16 = v15;

    (*(v5 + 8))(v7, v4);
    v33 = v14;
    v34 = v16;
    sub_1BD886380(v30, &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
    v17 = (*(v29 + 80) + 16) & ~*(v29 + 80);
    v18 = swift_allocObject();
    sub_1BD886CA4(&v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
    sub_1BD0DDEBC();
    sub_1BE051744();
    sub_1BE052434();
    v20 = v19;
    sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80, &qword_1BE0BB860, MEMORY[0x1E697D680]);
    v21 = v31;
    sub_1BE050DE4();
    v20, v22, v23, v24, v25, v26, v27, v28;
    return (*(v8 + 8))(v11, v21);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD884444(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v21 - v3;
  v5 = sub_1BE04AA64();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0DE19C(a1, v4, &unk_1EBD3CF70, &qword_1BE0BA000);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_1BD0DE53C(v4, &unk_1EBD3CF70, &qword_1BE0BA000);
  }

  (*(v6 + 32))(v8, v4, v5);
  v10 = [objc_opt_self() sharedApplication];
  v11 = sub_1BE04A9C4();
  v12 = sub_1BD1ABAC0(MEMORY[0x1E69E7CC0]);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_1BD6A6C48(&qword_1EBD37B90, type metadata accessor for OpenExternalURLOptionsKey, &unk_1BE0B3A4C);
  v13 = sub_1BE052224();
  v12, v14, v15, v16, v17, v18, v19, v20;
  [v10 openURL:v11 options:v13 completionHandler:0];

  return (*(v6 + 8))(v8, v5);
}

void sub_1BD8846A8(uint64_t *a1@<X8>)
{
  v76 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49130, &qword_1BE0C7180);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v75 - v2;
  v4 = sub_1BE050474();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE04BD74();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 104))(v12, *MEMORY[0x1E69B8088], v8, v10);
  v13 = PKPassKitBundle();
  if (v13)
  {
    v14 = v13;
    v15 = sub_1BE04B6F4();
    v17 = v16;

    (*(v9 + 8))(v12, v8);
    v77 = v15;
    v78 = v17;
    sub_1BD0DDEBC();
    v18 = sub_1BE0506C4();
    v20 = v19;
    LOBYTE(v15) = v21;
    v23 = v22;
    (*(v5 + 104))(v7, *MEMORY[0x1E6980F30], v4);
    v24 = sub_1BE050354();
    (*(*(v24 - 8) + 56))(v3, 1, 1, v24);
    v25 = sub_1BE0503C4();
    sub_1BD0DE53C(v3, &qword_1EBD49130, &qword_1BE0C7180);
    (*(v5 + 8))(v7, v4);
    v26 = sub_1BE0505F4();
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v25, v27, v29, v31, v33, v34, v35, v36;
    sub_1BD0DDF10(v18, v20, (v15 & 1), v37, v38, v39, v40, v41);
    v23, v42, v43, v44, v45, v46, v47, v48;
    v49 = sub_1BE051494();
    v77 = v49;
    v50 = sub_1BE050574();
    v52 = v51;
    LOBYTE(v15) = v53;
    v55 = v54;
    sub_1BD0DDF10(v26, v28, (v30 & 1), v54, v56, v57, v58, v59);
    v49, v60, v61, v62, v63, v64, v65, v66;
    v32, v67, v68, v69, v70, v71, v72, v73;
    v74 = v76;
    *v76 = v50;
    v74[1] = v52;
    *(v74 + 16) = v15 & 1;
    v74[3] = v55;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BD884A50()
{
  sub_1BD8846A8(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45200, &qword_1BE0BB900);
  sub_1BD35CEE0();
  return sub_1BE051A54();
}

uint64_t sub_1BD884ADC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v43 = a1;
  v3 = sub_1BE04FF64();
  v41 = *(v3 - 8);
  v42 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v40 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE04F434();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56530, &qword_1BE0FF198);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v36 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56538, &qword_1BE0FF1A0);
  v13 = *(v12 - 8);
  v36 = v12;
  v37 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v36 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56540, &qword_1BE0FF1A8);
  v17 = *(v16 - 8);
  v38 = v16;
  v39 = v17;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v36 - v18;
  *v11 = sub_1BE04F7B4();
  *(v11 + 1) = 0;
  v11[16] = 0;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56548, &qword_1BE0FF1B0);
  sub_1BD884F30(v2, &v11[*(v20 + 44)]);
  (*(v6 + 104))(v8, *MEMORY[0x1E697C438], v5);
  v21 = sub_1BD0DE4F4(&qword_1EBD56550, &qword_1EBD56530, &qword_1BE0FF198, MEMORY[0x1E6981870]);
  sub_1BE050E84();
  (*(v6 + 8))(v8, v5);
  sub_1BD0DE53C(v11, &qword_1EBD56530, &qword_1BE0FF198);
  v22 = v40;
  sub_1BE04FF54();
  v44 = v9;
  v45 = v21;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v24 = v36;
  sub_1BE050D14();
  (*(v41 + 8))(v22, v42);
  (*(v37 + 8))(v15, v24);
  sub_1BE052434();
  v26 = v25;
  v44 = v24;
  v45 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v27 = v38;
  sub_1BE050DE4();
  v26, v28, v29, v30, v31, v32, v33, v34;
  return (*(v39 + 8))(v19, v27);
}

uint64_t sub_1BD884F30@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56558, &qword_1BE0FF1B8);
  v42 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v44 = &v41 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56560, &qword_1BE0FF1C0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v41 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56568, &qword_1BE0FF1C8);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v41 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56570, &qword_1BE0FF1D0);
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v41 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v41 - v21;
  *v8 = sub_1BE04F7B4();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56578, &qword_1BE0FF1D8);
  sub_1BD885424(a1, &v8[*(v23 + 44)]);
  sub_1BE051CD4();
  sub_1BE04EE54();
  sub_1BD0DE204(v8, v12, &qword_1EBD56560, &qword_1BE0FF1C0);
  v24 = &v12[*(v10 + 44)];
  v25 = v53;
  *(v24 + 4) = v52;
  *(v24 + 5) = v25;
  *(v24 + 6) = v54;
  v26 = v49;
  *v24 = v48;
  *(v24 + 1) = v26;
  v27 = v51;
  *(v24 + 2) = v50;
  *(v24 + 3) = v27;
  v28 = [objc_opt_self() systemGroupedBackgroundColor];
  v29 = sub_1BE0511C4();
  LOBYTE(v10) = sub_1BE0501D4();
  sub_1BD0DE204(v12, v19, &qword_1EBD56568, &qword_1BE0FF1C8);
  v30 = &v19[*(v14 + 44)];
  *v30 = v29;
  v30[8] = v10;
  v41 = v22;
  sub_1BD0DE204(v19, v22, &qword_1EBD56570, &qword_1BE0FF1D0);
  v47 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56580, &qword_1BE0FF1E0);
  sub_1BD0DE4F4(&qword_1EBD56588, &qword_1EBD56580, &qword_1BE0FF1E0, MEMORY[0x1E6981F48]);
  v31 = v44;
  sub_1BE0504A4();
  v32 = v16;
  sub_1BD0DE19C(v22, v16, &qword_1EBD56570, &qword_1BE0FF1D0);
  v33 = v42;
  v34 = *(v42 + 16);
  v35 = v45;
  v36 = v43;
  v34(v45, v31, v43);
  v37 = v46;
  sub_1BD0DE19C(v32, v46, &qword_1EBD56570, &qword_1BE0FF1D0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56590, &qword_1BE0FF1E8);
  v34((v37 + *(v38 + 48)), v35, v36);
  v39 = *(v33 + 8);
  v39(v31, v36);
  sub_1BD0DE53C(v41, &qword_1EBD56570, &qword_1BE0FF1D0);
  v39(v35, v36);
  return sub_1BD0DE53C(v32, &qword_1EBD56570, &qword_1BE0FF1D0);
}

id sub_1BD885424@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD565C0, &unk_1BE0FF248);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v85 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0, &qword_1BE0B7620);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v85 - v15;
  result = [*a1 formattedStringValue];
  if (result)
  {
    v18 = result;
    v86 = a1;
    v87 = v4;
    v88 = v16;
    v89 = v12;
    v90 = a2;
    v91 = v6;
    v19 = sub_1BE052434();
    v21 = v20;

    v92 = v19;
    v93 = v21;
    sub_1BD0DDEBC();
    v22 = sub_1BE0506C4();
    v24 = v23;
    v26 = v25;
    v28 = v27;
    result = PKFontForDesign(*MEMORY[0x1E69DB8D8], *MEMORY[0x1E69DDDB8], *MEMORY[0x1E69DDC90], 2, 0, *MEMORY[0x1E69DB980]);
    if (result)
    {
      v29 = result;
      v30 = [result fontWithSize_];

      v31 = sub_1BE050484();
      v32 = sub_1BE0505F4();
      v34 = v33;
      v36 = v35;
      v38 = v37;
      v31, v33, v35, v37, v39, v40, v41, v42;
      sub_1BD0DDF10(v22, v24, (v26 & 1), v43, v44, v45, v46, v47);
      v28, v48, v49, v50, v51, v52, v53, v54;
      v92 = v32;
      v93 = v34;
      v55 = (v36 & 1);
      v94 = v36 & 1;
      v95 = v38;
      sub_1BE052434();
      v57 = v56;
      v58 = v88;
      sub_1BE050DE4();
      v57, v59, v60, v61, v62, v63, v64, v65;
      sub_1BD0DDF10(v32, v34, v55, v66, v67, v68, v69, v70);
      v38, v71, v72, v73, v74, v75, v76, v77;
      sub_1BD885814(v86, v9);
      v78 = sub_1BE050324();
      KeyPath = swift_getKeyPath();
      v80 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD565C8, &qword_1BE0FF288) + 36)];
      *v80 = KeyPath;
      v80[1] = v78;
      *&v9[*(v87 + 36)] = sub_1BE04FC94();
      v81 = v89;
      sub_1BD0DE19C(v58, v89, &qword_1EBD452C0, &qword_1BE0B7620);
      v82 = v91;
      sub_1BD0DE19C(v9, v91, &qword_1EBD565C0, &unk_1BE0FF248);
      v83 = v90;
      sub_1BD0DE19C(v81, v90, &qword_1EBD452C0, &qword_1BE0B7620);
      v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD565D0, &unk_1BE0FF290);
      sub_1BD0DE19C(v82, v83 + *(v84 + 48), &qword_1EBD565C0, &unk_1BE0FF248);
      sub_1BD0DE53C(v9, &qword_1EBD565C0, &unk_1BE0FF248);
      sub_1BD0DE53C(v58, &qword_1EBD452C0, &qword_1BE0B7620);
      sub_1BD0DE53C(v82, &qword_1EBD565C0, &unk_1BE0FF248);
      return sub_1BD0DE53C(v81, &qword_1EBD452C0, &qword_1BE0B7620);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1BD885814(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v105 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970, &unk_1BE0B9F80);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v96 - v4;
  v6 = sub_1BE04AF64();
  v106 = *(v6 - 8);
  v107 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v98 = &v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5BB60, &qword_1BE0C4580);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v104 = &v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v103 = &v96 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0, &qword_1BE0B7620);
  v99 = *(v12 - 8);
  v100 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v102 = &v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v97 = &v96 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v96 - v17;
  v19 = type metadata accessor for PaymentRewardsDetailItem(0);
  v20 = (a1 + *(v19 + 40));
  v21 = v20[1];
  v108 = *v20;
  v109 = v21;
  v22 = sub_1BD0DDEBC();
  sub_1BE048C84();
  v96 = v22;
  v23 = sub_1BE0506C4();
  v25 = v24;
  v27 = v26;
  v108 = v23;
  v109 = v24;
  v29 = (v28 & 1);
  v110 = v28 & 1;
  v111 = v26;
  sub_1BE052434();
  v31 = v30;
  v101 = v18;
  sub_1BE050DE4();
  v31, v32, v33, v34, v35, v36, v37, v38;
  sub_1BD0DDF10(v23, v25, v29, v39, v40, v41, v42, v43);
  v44 = v27;
  v45 = v106;
  v46 = v107;
  v44, v47, v48, v49, v50, v51, v52, v53;
  sub_1BD0DE19C(a1 + *(v19 + 24), v5, &unk_1EBD39970, &unk_1BE0B9F80);
  if ((*(v45 + 48))(v5, 1, v46) == 1)
  {
    sub_1BD0DE53C(v5, &unk_1EBD39970, &unk_1BE0B9F80);
    v54 = 1;
    v55 = v103;
LABEL_5:
    (*(v99 + 56))(v55, v54, 1, v100);
    v91 = v101;
    v92 = v102;
    sub_1BD0DE19C(v101, v102, &qword_1EBD452C0, &qword_1BE0B7620);
    v93 = v104;
    sub_1BD0DE19C(v55, v104, &unk_1EBD5BB60, &qword_1BE0C4580);
    v94 = v105;
    sub_1BD0DE19C(v92, v105, &qword_1EBD452C0, &qword_1BE0B7620);
    v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47228, &qword_1BE0D9270);
    sub_1BD0DE19C(v93, v94 + *(v95 + 48), &unk_1EBD5BB60, &qword_1BE0C4580);
    sub_1BD0DE53C(v55, &unk_1EBD5BB60, &qword_1BE0C4580);
    sub_1BD0DE53C(v91, &qword_1EBD452C0, &qword_1BE0B7620);
    sub_1BD0DE53C(v93, &unk_1EBD5BB60, &qword_1BE0C4580);
    sub_1BD0DE53C(v92, &qword_1EBD452C0, &qword_1BE0B7620);
    return;
  }

  v56 = v98;
  (*(v45 + 32))(v98, v5, v46);
  v57 = sub_1BE04AE64();
  v58 = PKShortDateString();

  if (v58)
  {
    v59 = sub_1BE052434();
    v61 = v60;

    v108 = v59;
    v109 = v61;
    v62 = sub_1BE0506C4();
    v64 = v63;
    v66 = v65;
    v108 = v62;
    v109 = v63;
    v68 = (v67 & 1);
    v110 = v67 & 1;
    v111 = v65;
    sub_1BE052434();
    v70 = v69;
    v71 = v97;
    sub_1BE050DE4();
    v70, v72, v73, v74, v75, v76, v77, v78;
    sub_1BD0DDF10(v62, v64, v68, v79, v80, v81, v82, v83);
    v66, v84, v85, v86, v87, v88, v89, v90;
    (*(v45 + 8))(v56, v46);
    v55 = v103;
    sub_1BD0DE204(v71, v103, &qword_1EBD452C0, &qword_1BE0B7620);
    v54 = 0;
    goto LABEL_5;
  }

  __break(1u);
}

uint64_t sub_1BD885D9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a1;
  v40 = a2;
  v3 = type metadata accessor for RedemptionStatusLinkButton(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v39 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v38 = &v35 - v6;
  v7 = sub_1BE04F5B4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56598, &qword_1BE0FF1F0);
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11);
  v37 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v35 - v15;
  v41 = a1;
  sub_1BD182C40();
  sub_1BD886208();
  sub_1BE051A24();
  sub_1BE04F594();
  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD565A8, &qword_1BE0FF1F8) + 36);
  (*(v8 + 16))(&v16[v17], v10, v7);
  v18 = *(v8 + 56);
  v18(&v16[v17], 0, 1, v7);
  KeyPath = swift_getKeyPath();
  v20 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD565B0, &unk_1BE0FF230) + 36)];
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39580, &qword_1BE0D8820) + 28);
  (*(v8 + 32))(v20 + v21, v10, v7);
  v18(v20 + v21, 0, 1, v7);
  *v20 = KeyPath;
  v22 = &v16[*(v12 + 44)];
  __asm { FMOV            V0.2D, #16.0 }

  *v22 = _Q0;
  *(v22 + 1) = _Q0;
  v22[32] = 0;
  v28 = type metadata accessor for PaymentRewardsDetailItem(0);
  v29 = v38;
  sub_1BD0DE19C(v36 + *(v28 + 36), v38, &unk_1EBD3CF70, &qword_1BE0BA000);
  v30 = v37;
  sub_1BD0DE19C(v16, v37, &qword_1EBD56598, &qword_1BE0FF1F0);
  v31 = v39;
  sub_1BD886380(v29, v39);
  v32 = v40;
  sub_1BD0DE19C(v30, v40, &qword_1EBD56598, &qword_1BE0FF1F0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD565B8, &qword_1BE0FF240);
  sub_1BD886380(v31, v32 + *(v33 + 48));
  sub_1BD8863E4(v29);
  sub_1BD0DE53C(v16, &qword_1EBD56598, &qword_1BE0FF1F0);
  sub_1BD8863E4(v31);
  return sub_1BD0DE53C(v30, &qword_1EBD56598, &qword_1BE0FF1F0);
}

double sub_1BD88615C@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for PaymentRewardsDetailItem(0);
  v5 = *(a1 + *(v4 + 28));
  v6 = (a1 + *(v4 + 44));
  v7 = *v6;
  v8 = v6[1];
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  v11 = *a1;
  *a2 = v5;
  a2[1] = v7;
  a2[2] = v8;
  a2[3] = v10;
  a2[4] = v9;
  a2[5] = v11;
  sub_1BE048C84();
  v12 = v11;

  sub_1BE048C84();
  return result;
}

unint64_t sub_1BD886208()
{
  result = qword_1EBD565A0;
  if (!qword_1EBD565A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD565A0);
  }

  return result;
}

uint64_t sub_1BD88625C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = v2[1];
  KeyPath = swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD566A8, &qword_1BE0FF4F0);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  v9 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD566B0, &qword_1BE0FF4F8) + 36);
  *v9 = KeyPath;
  *(v9 + 8) = v5;
  *(v9 + 16) = 0;
  v10 = swift_getKeyPath();
  v11 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD566B8, &qword_1BE0FF530) + 36);
  *v11 = v10;
  *(v11 + 8) = 1;
  v12 = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD566C0, &qword_1BE0FF568);
  v14 = (a2 + *(result + 36));
  *v14 = v12;
  v14[1] = v6;
  return result;
}

uint64_t sub_1BD886380(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RedemptionStatusLinkButton(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD8863E4(uint64_t a1)
{
  v2 = type metadata accessor for RedemptionStatusLinkButton(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1BD886468(uint64_t a1)
{
  sub_1BD8828D4(319, &qword_1EBD45140, MEMORY[0x1E6968FB0]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1BD8864F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BD886538(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_1BD886594()
{
  result = qword_1EBD565E8;
  if (!qword_1EBD565E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD565F0, qword_1BE0FF308);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD56538, &qword_1BE0FF1A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD56530, &qword_1BE0FF198);
    sub_1BD0DE4F4(&qword_1EBD56550, &qword_1EBD56530, &qword_1BE0FF198, MEMORY[0x1E6981870]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1BD6A6C48(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD565E8);
  }

  return result;
}

unint64_t sub_1BD886744()
{
  result = qword_1EBD56658;
  if (!qword_1EBD56658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD56650, &qword_1BE0FF3F8);
    sub_1BD8867D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD56658);
  }

  return result;
}

unint64_t sub_1BD8867D0()
{
  result = qword_1EBD56660;
  if (!qword_1EBD56660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD56660);
  }

  return result;
}

id sub_1BD886824(uint64_t a1)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v27 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v27 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v27 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v27 - v16;
  v21.n128_f64[0] = MEMORY[0x1EEE9AC00](v18);
  v22 = &v27 - v19;
  v28 = v23;
  if (a1 > 3)
  {
    if ((a1 - 5) >= 2)
    {
      if (a1 == 4)
      {
        (*(v3 + 104))(v11, *MEMORY[0x1E69B8088], v20, v21.n128_f64[0]);
        result = PKPassKitBundle();
        if (result)
        {
          v25 = result;
          v26 = sub_1BE04B6F4();
          v22 = v11;
          goto LABEL_19;
        }

        goto LABEL_23;
      }

      goto LABEL_15;
    }

    (*(v3 + 104))(v8, *MEMORY[0x1E69B8088], v20, v21.n128_f64[0]);
    result = PKPassKitBundle();
    if (result)
    {
      v25 = result;
      v26 = sub_1BE04B6F4();
      v22 = v8;
      goto LABEL_19;
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (a1 == 1)
  {
    (*(v3 + 104))(&v27 - v19, *MEMORY[0x1E69B8088], v20, v21.n128_f64[0]);
    result = PKPassKitBundle();
    if (result)
    {
      v25 = result;
      v26 = sub_1BE04B6F4();
      goto LABEL_19;
    }

    goto LABEL_21;
  }

  if (a1 != 2)
  {
    if (a1 == 3)
    {
      (*(v3 + 104))(v14, *MEMORY[0x1E69B8088], v20, v21.n128_f64[0]);
      result = PKPassKitBundle();
      if (result)
      {
        v25 = result;
        v26 = sub_1BE04B6F4();
        v22 = v14;
LABEL_19:

        (*(v3 + 8))(v22, v28);
        return v26;
      }

      goto LABEL_24;
    }

LABEL_15:
    (*(v3 + 104))(v5, *MEMORY[0x1E69B8088], v20, v21);
    result = PKPassKitBundle();
    if (result)
    {
      v25 = result;
      v26 = sub_1BE04B6F4();
      v22 = v5;
      goto LABEL_19;
    }

    goto LABEL_22;
  }

  (*(v3 + 104))(v17, *MEMORY[0x1E69B8088], v20, v21.n128_f64[0]);
  result = PKPassKitBundle();
  if (result)
  {
    v25 = result;
    v26 = sub_1BE04B6F4();
    v22 = v17;
    goto LABEL_19;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1BD886CA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RedemptionStatusLinkButton(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD886D08()
{
  v1 = *(type metadata accessor for RedemptionStatusLinkButton(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1BD884444(v2);
}

unint64_t sub_1BD886D78()
{
  result = qword_1EBD56698;
  if (!qword_1EBD56698)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD566A0, &qword_1BE0FF468);
    sub_1BD35CEE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD56698);
  }

  return result;
}

unint64_t sub_1BD886E2C()
{
  result = qword_1EBD566C8;
  if (!qword_1EBD566C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD566C0, &qword_1BE0FF568);
    sub_1BD886EE4();
    sub_1BD0DE4F4(&qword_1EBD3A8B0, &qword_1EBD3A8B8, &qword_1BE0BB050, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD566C8);
  }

  return result;
}

unint64_t sub_1BD886EE4()
{
  result = qword_1EBD566D0;
  if (!qword_1EBD566D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD566B8, &qword_1BE0FF530);
    sub_1BD886F9C();
    sub_1BD0DE4F4(&qword_1EBD38AB0, &qword_1EBD38AB8, &qword_1BE0B7660, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD566D0);
  }

  return result;
}

unint64_t sub_1BD886F9C()
{
  result = qword_1EBD566D8;
  if (!qword_1EBD566D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD566B0, &qword_1BE0FF4F8);
    sub_1BD0DE4F4(&unk_1EBD566E0, &qword_1EBD566A8, &qword_1BE0FF4F0, MEMORY[0x1E697FDF8]);
    sub_1BD0DE4F4(&unk_1EBD4E910, &unk_1EBD3E2E0, &qword_1BE0B8230, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD566D8);
  }

  return result;
}

void sub_1BD887084(id *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v43[1] = *MEMORY[0x1E69E9840];
  v5 = [*a1 contactProperty];
  if (!v5)
  {
    goto LABEL_14;
  }

  v6 = v5;
  v7 = [v5 contact];

  if (!v7)
  {
    goto LABEL_14;
  }

  v8 = [v7 identifier];
  if (!v8)
  {
    sub_1BE052434();
    v10 = v9;
    v8 = sub_1BE052404();
    v10, v11, v12, v13, v14, v15, v16, v17;
  }

  v18 = sub_1BD8873C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56750, &unk_1BE0FF5C0);
  v19 = sub_1BE052724();
  v18, v20, v21, v22, v23, v24, v25, v26;
  v43[0] = 0;
  v27 = [a2 unifiedContactWithIdentifier:v8 keysToFetch:v19 error:v43];

  if (v27)
  {
    v28 = v43[0];
    v29 = v27;
    v30 = sub_1BD2A68F8(v43, v29);

    if ((v30 & 1) == 0)
    {

LABEL_13:
LABEL_14:
      v27 = 0;
      goto LABEL_15;
    }

    v31 = [v29 postalAddresses];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58EB0, &qword_1BE0C38A0);
    v32 = sub_1BE052744();

    if (v32 >> 62)
    {
      v40 = sub_1BE053704();
    }

    else
    {
      v40 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v32, v33, v34, v35, v36, v37, v38, v39;

    if (!v40)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v41 = v43[0];
    v42 = sub_1BE04A854();

    swift_willThrow();
  }

LABEL_15:
  *a3 = v27;
}

uint64_t static ContactFavorites.requiredKeysForMonogram.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BE0FF570;
  *(v0 + 32) = [objc_allocWithZone(MEMORY[0x1E696AEC0]) initWithString_];
  *(v0 + 40) = [objc_allocWithZone(MEMORY[0x1E696AEC0]) initWithString_];
  *(v0 + 48) = [objc_allocWithZone(MEMORY[0x1E696AEC0]) initWithString_];
  *(v0 + 56) = [objc_allocWithZone(MEMORY[0x1E696AEC0]) initWithString_];
  return v0;
}

uint64_t sub_1BD8873C4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BE0FF580;
  *(v0 + 32) = [objc_allocWithZone(MEMORY[0x1E696AEC0]) initWithString_];
  *(v0 + 40) = [objc_allocWithZone(MEMORY[0x1E696AEC0]) initWithString_];
  *(v0 + 48) = [objc_allocWithZone(MEMORY[0x1E696AEC0]) initWithString_];
  *(v0 + 56) = [objc_allocWithZone(MEMORY[0x1E696AEC0]) initWithString_];
  *(v0 + 64) = [objc_allocWithZone(MEMORY[0x1E696AEC0]) initWithString_];
  *(v0 + 72) = [objc_allocWithZone(MEMORY[0x1E696AEC0]) initWithString_];
  *(v0 + 80) = [objc_allocWithZone(MEMORY[0x1E696AEC0]) initWithString_];
  *(v0 + 88) = [objc_allocWithZone(MEMORY[0x1E696AEC0]) initWithString_];
  *(v0 + 96) = [objc_allocWithZone(MEMORY[0x1E696AEC0]) initWithString_];
  *(v0 + 104) = [objc_allocWithZone(MEMORY[0x1E696AEC0]) initWithString_];
  *(v0 + 112) = [objc_allocWithZone(MEMORY[0x1E696AEC0]) initWithString_];
  return v0;
}

void *sub_1BD8875B0(unint64_t a1, void *a2)
{
  v21 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BE053704())
  {
    v5 = 0;
    v6 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1BFB40900](v5, a1);
      }

      else
      {
        if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v7 = *(a1 + 8 * v5 + 32);
      }

      v8 = v7;
      v9 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v20 = v7;
      sub_1BD887084(&v20, a2, &v19);
      if (v2)
      {
        v6, v10, v11, v12, v13, v14, v15, v16;

        return v6;
      }

      if (v19)
      {
        MEMORY[0x1BFB3F7A0]();
        if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1BE052774();
        }

        sub_1BE0527C4();
        v6 = v21;
      }

      ++v5;
      if (v9 == i)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

void *_s9PassKitUI16ContactFavoritesO9favoritesSaySo9CNContactCGyFZ_0()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 entries];

  sub_1BD88782C();
  v2 = sub_1BE052744();

  v3 = [objc_allocWithZone(MEMORY[0x1E695CE18]) init];
  v20 = MEMORY[0x1E69E7CD0];
  v4 = sub_1BD8875B0(v2, v3);
  v2, v5, v6, v7, v8, v9, v10, v11;

  v20, v12, v13, v14, v15, v16, v17, v18;
  return v4;
}

unint64_t sub_1BD88782C()
{
  result = qword_1EBD4DF60;
  if (!qword_1EBD4DF60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD4DF60);
  }

  return result;
}

uint64_t type metadata accessor for AccountLegalDisclosureSheet(uint64_t a1)
{
  result = qword_1EBD56758;
  if (!qword_1EBD56758)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD8878EC(uint64_t a1)
{
  type metadata accessor for PKFeatureIdentifier(319);
  if (v1 <= 0x3F)
  {
    sub_1BD170C00(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1BD88798C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56778, &unk_1BE0FF650);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v46 - v9;
  v47 = sub_1BE04F7B4();
  v49 = 0;
  sub_1BD887D1C(&v64);
  v52 = *&v65[2];
  v53[0] = *&v65[4];
  *(v53 + 9) = *(&v65[5] + 1);
  v50 = v64;
  v51 = *v65;
  v54[2] = *&v65[2];
  v55[0] = *&v65[4];
  *(v55 + 9) = *(&v65[5] + 1);
  v54[0] = v64;
  v54[1] = *v65;
  sub_1BD0DE19C(&v50, &v56, &qword_1EBD40828, &qword_1BE1037A0);
  sub_1BD0DE53C(v54, &qword_1EBD40828, &qword_1BE1037A0);
  *(&v48[1] + 7) = v51;
  *(&v48[2] + 7) = v52;
  *(&v48[3] + 7) = v53[0];
  v48[4] = *(v53 + 9);
  *(v48 + 7) = v50;
  v11 = v49;
  v12 = sub_1BE050234();
  sub_1BE04E1F4();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  LOBYTE(v64) = 0;
  v21 = sub_1BE0501C4();
  sub_1BE04E1F4();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  *v10 = sub_1BE04F504();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56780, &qword_1BE0FF660);
  sub_1BD887FAC(a1, &v10[*(v30 + 44)]);
  LOBYTE(a1) = sub_1BE0501D4();
  sub_1BE04E1F4();
  v31 = &v10[*(v5 + 44)];
  *v31 = a1;
  *(v31 + 1) = v32;
  *(v31 + 2) = v33;
  *(v31 + 3) = v34;
  *(v31 + 4) = v35;
  v31[40] = 0;
  sub_1BD0BD338(v10, v7);
  v36 = v47;
  *&v56 = v47;
  *(&v56 + 1) = 0x4032000000000000;
  LOBYTE(v57[0]) = v11;
  *(&v57[4] + 1) = v48[4];
  *(&v57[1] + 1) = v48[1];
  *(&v57[2] + 1) = v48[2];
  *(&v57[3] + 1) = v48[3];
  *(v57 + 1) = v48[0];
  BYTE8(v57[5]) = v12;
  *&v58 = v14;
  *(&v58 + 1) = v16;
  *&v59 = v18;
  *(&v59 + 1) = v20;
  LOBYTE(v60) = 0;
  BYTE8(v60) = v21;
  *&v61 = v23;
  *(&v61 + 1) = v25;
  *&v62 = v27;
  *(&v62 + 1) = v29;
  v63 = 0;
  *(a2 + 192) = 0;
  v37 = v57[2];
  *(a2 + 32) = v57[1];
  *(a2 + 48) = v37;
  v38 = v57[0];
  *a2 = v56;
  *(a2 + 16) = v38;
  v39 = v57[3];
  v40 = v57[4];
  v41 = v58;
  *(a2 + 96) = v57[5];
  *(a2 + 112) = v41;
  *(a2 + 64) = v39;
  *(a2 + 80) = v40;
  v42 = v60;
  *(a2 + 128) = v59;
  *(a2 + 144) = v42;
  v43 = v62;
  *(a2 + 160) = v61;
  *(a2 + 176) = v43;
  *(a2 + 200) = 0;
  *(a2 + 208) = 1;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56788, &qword_1BE0FF668);
  sub_1BD0BD338(v7, a2 + *(v44 + 64));
  sub_1BD0DE19C(&v56, &v64, &qword_1EBD56790, &unk_1BE0FF670);
  sub_1BD0BD3A8(v10);
  sub_1BD0BD3A8(v7);
  *(&v65[2] + 1) = v48[1];
  *(&v65[4] + 1) = v48[2];
  *(&v65[6] + 1) = v48[3];
  *(&v65[8] + 1) = v48[4];
  *&v64 = v36;
  *(&v64 + 1) = 0x4032000000000000;
  LOBYTE(v65[0]) = v11;
  *(v65 + 1) = v48[0];
  v66 = v12;
  v67 = v14;
  v68 = v16;
  v69 = v18;
  v70 = v20;
  v71 = 0;
  v72 = v21;
  v73 = v23;
  v74 = v25;
  v75 = v27;
  v76 = v29;
  v77 = 0;
  return sub_1BD0DE53C(&v64, &qword_1EBD56790, &unk_1BE0FF670);
}

void sub_1BD887D1C(uint64_t a2@<X8>)
{
  v3 = sub_1BE052404();
  v4 = PKLocalizedFeatureString();

  if (v4)
  {
    sub_1BE052434();

    sub_1BD0DDEBC();
    v5 = sub_1BE0506C4();
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v12 = sub_1BE050294();
    v13 = sub_1BE0505F4();
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v12, v14, v16, v18, v20, v21, v22, v23;
    sub_1BD0DDF10(v5, v7, (v9 & 1), v24, v25, v26, v27, v28);
    v11, v29, v30, v31, v32, v33, v34, v35;
    v36 = sub_1BE0505D4();
    v38 = v37;
    v40 = v39;
    v42 = v41;
    sub_1BD0DDF10(v13, v15, (v17 & 1), v41, v43, v44, v45, v46);
    v19, v47, v48, v49, v50, v51, v52, v53;
    v54 = sub_1BE052404();
    v55 = PKLocalizedFeatureString();

    if (v55)
    {
      sub_1BE052434();

      v56 = sub_1BE0506C4();
      v58 = v57;
      v60 = v59;
      v62 = v61;
      KeyPath = swift_getKeyPath();
      *a2 = v36;
      *(a2 + 8) = v38;
      *(a2 + 16) = v40 & 1;
      *(a2 + 24) = v42;
      *(a2 + 32) = v56;
      *(a2 + 40) = v58;
      *(a2 + 48) = v60 & 1;
      *(a2 + 56) = v62;
      *(a2 + 64) = KeyPath;
      *(a2 + 72) = 1;
      sub_1BD0D7F18(v36, v38, v40 & 1);
      sub_1BE048C84();
      sub_1BD0D7F18(v56, v58, v60 & 1);
      sub_1BE048C84();
      sub_1BE048964();
      sub_1BD0DDF10(v56, v58, (v60 & 1), v64, v65, v66, v67, v68);
      KeyPath, v69, v70, v71, v72, v73, v74, v75;
      v62, v76, v77, v78, v79, v80, v81, v82;
      sub_1BD0DDF10(v36, v38, (v40 & 1), v83, v84, v85, v86, v87);
      v42, v88, v89, v90, v91, v92, v93, v94;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_1BD887FAC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v40 = a1;
  v46 = a2;
  v2 = sub_1BE050014();
  v44 = *(v2 - 8);
  v45 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v43 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AccountLegalDisclosureSheet(0);
  v36 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v37 = v5;
  v38 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE04BD74();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80, &qword_1BE0BB860);
  v39 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v11 = &v35 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56798, &unk_1BE0FF680);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v41 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v35 - v17;
  (*(v7 + 104))(v9, *MEMORY[0x1E69B80F0], v6, v16);
  result = PKPassKitBundle();
  if (result)
  {
    v20 = result;
    v21 = sub_1BE04B6F4();
    v23 = v22;

    (*(v7 + 8))(v9, v6);
    v47 = v21;
    v48 = v23;
    v24 = v38;
    sub_1BD8887FC(v40, v38);
    v25 = (*(v36 + 80) + 16) & ~*(v36 + 80);
    v26 = swift_allocObject();
    sub_1BD888860(v24, v26 + v25);
    sub_1BD0DDEBC();
    sub_1BE051744();
    v27 = v43;
    sub_1BE050004();
    sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80, &qword_1BE0BB860, MEMORY[0x1E697D680]);
    sub_1BD888924();
    v28 = v42;
    v29 = v45;
    sub_1BE050894();
    (*(v44 + 8))(v27, v29);
    (*(v39 + 8))(v11, v28);
    v30 = *(v13 + 16);
    v31 = v41;
    v30(v41, v18, v12);
    v32 = v46;
    *v46 = 0;
    *(v32 + 8) = 1;
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD567A0, &qword_1BE0FF690);
    v30(v32 + *(v33 + 48), v31, v12);
    v34 = *(v13 + 8);
    v34(v18, v12);
    return (v34)(v31, v12);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD8884C0(uint64_t a1)
{
  v24 = sub_1BE04F3D4();
  v2 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20, &qword_1BE0C6AD0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v23 - v6);
  v8 = sub_1BE04E664();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AccountLegalDisclosureSheet(0);
  sub_1BD0DE19C(a1 + *(v12 + 20), v7, &qword_1EBD3FA20, &qword_1BE0C6AD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    v13 = *v7;
    sub_1BE052C44();
    v14 = sub_1BE050174();
    sub_1BE04CF84();

    sub_1BE04F3C4();
    swift_getAtKeyPath();
    v13, v15, v16, v17, v18, v19, v20, v21;
    (*(v2 + 8))(v4, v24);
  }

  sub_1BE04E654();
  return (*(v9 + 8))(v11, v8);
}

double sub_1BD888748@<D0>(uint64_t a2@<X8>)
{
  *a2 = sub_1BE04F7B4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56768, &qword_1BE0FF640);
  sub_1BD88798C(v2, a2 + *(v4 + 44));
  sub_1BE051CD4();
  sub_1BE04E5E4();
  v5 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56770, &qword_1BE0FF648) + 36));
  *v5 = v7;
  v5[1] = v8;
  result = *&v9;
  v5[2] = v9;
  return result;
}

uint64_t sub_1BD8887FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountLegalDisclosureSheet(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD888860(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountLegalDisclosureSheet(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD8888C4()
{
  v1 = *(type metadata accessor for AccountLegalDisclosureSheet(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1BD8884C0(v2);
}

unint64_t sub_1BD888924()
{
  result = qword_1EBD366F0;
  if (!qword_1EBD366F0)
  {
    sub_1BE050014();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD366F0);
  }

  return result;
}

unint64_t sub_1BD88897C()
{
  result = qword_1EBD567A8;
  if (!qword_1EBD567A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD56770, &qword_1BE0FF648);
    sub_1BD0DE4F4(&qword_1EBD567B0, &qword_1EBD567B8, qword_1BE0FF6C8, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD567A8);
  }

  return result;
}

uint64_t sub_1BD888B38()
{
  v1 = sub_1BE04D214();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v96[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v96[-v7];
  v9 = *&v0[OBJC_IVAR____TtC9PassKitUI40ProvisioningExternalVerificationFlowItem_method];
  v10 = [v9 type];
  if (v10 > 7)
  {
    goto LABEL_30;
  }

  if (((1 << v10) & 0xF3) == 0)
  {
    if (v10 == 2)
    {
      objc_opt_self();
      v12 = swift_dynamicCastObjCClass();
      if (v12)
      {
        v13 = v12;
        v14 = v9;
        if ([v13 direction] == 1)
        {
          v15 = *&v0[OBJC_IVAR____TtC9PassKitUI40ProvisioningExternalVerificationFlowItem_reporter];
          if (v15)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0, &unk_1BE0B9A10);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_1BE0B69E0;
            v17 = *MEMORY[0x1E69BB430];
            *(inited + 32) = *MEMORY[0x1E69BB430];
            v18 = v17;
            v19 = [v14 debugTypeDescription];
            v20 = sub_1BE052434();
            v22 = v21;

            *(inited + 40) = v20;
            *(inited + 48) = v22;
            v23 = sub_1BD1AAF50(inited);
            swift_setDeallocating();
            sub_1BD0DE53C(inited + 32, &qword_1EBD3F590, &qword_1BE0C0E20);
            type metadata accessor for PKAnalyticsKey(0);
            sub_1BD1F0E18();
            v24 = sub_1BE052224();
            v23, v25, v26, v27, v28, v29, v30, v31;
            [v15 reportViewAppearedWithContext_];
          }

          [*&v0[OBJC_IVAR____TtC9PassKitUI40ProvisioningExternalVerificationFlowItem_verificationController] completeVerificationUsingOutboundCall];
        }
      }

      return 2;
    }

    v32 = *&v0[OBJC_IVAR____TtC9PassKitUI40ProvisioningExternalVerificationFlowItem_verificationController];
    if ([v32 isBankAppInstalled])
    {
      v33 = *&v0[OBJC_IVAR____TtC9PassKitUI40ProvisioningExternalVerificationFlowItem_reporter];
      if (v33)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0, &unk_1BE0B9A10);
        v34 = swift_initStackObject();
        *(v34 + 16) = xmmword_1BE0B69E0;
        v35 = *MEMORY[0x1E69BB430];
        *(v34 + 32) = *MEMORY[0x1E69BB430];
        v36 = v35;
        v37 = [v9 debugTypeDescription];
        v38 = sub_1BE052434();
        v40 = v39;

        *(v34 + 40) = v38;
        *(v34 + 48) = v40;
        v41 = sub_1BD1AAF50(v34);
        swift_setDeallocating();
        sub_1BD0DE53C(v34 + 32, &qword_1EBD3F590, &qword_1BE0C0E20);
        type metadata accessor for PKAnalyticsKey(0);
        sub_1BD1F0E18();
        v42 = sub_1BE052224();
        v41, v43, v44, v45, v46, v47, v48, v49;
        [v33 reportViewAppearedWithContext_];
      }

      [v32 launchBankApp];
      return 2;
    }

    v50 = [v32 bankAppStoreID];
    if (!v50)
    {
      sub_1BE04D0C4();
      v93 = sub_1BE04D204();
      v94 = sub_1BE052C54();
      if (os_log_type_enabled(v93, v94))
      {
        v95 = swift_slowAlloc();
        *v95 = 0;
        _os_log_impl(&dword_1BD026000, v93, v94, "No matching app installed and no app matching app found in store. There was possibly a store lookup error.", v95, 2u);
        MEMORY[0x1BFB45F20](v95, -1, -1);
      }

      (*(v2 + 8))(v4, v1);
      return 2;
    }

    v51 = v50;
    v52 = [objc_allocWithZone(PKStoreProductViewPresenter) initWithProductDelegate_];
    [v52 loadProductForItemIdentifier:v51 customProductPageIdentifier:0];
    v53 = &v0[OBJC_IVAR____TtC9PassKitUI40ProvisioningExternalVerificationFlowItem_delegate];
    if (!swift_unknownObjectWeakLoadStrong() || (v54 = *(v53 + 1), ObjectType = swift_getObjectType(), v56 = v0, v57 = (*(v54 + 32))(v0, &off_1F3BC1A80, ObjectType, v54), v59 = v58, swift_unknownObjectRelease(), !v57) || (v60 = swift_getObjectType(), v61 = (*(v59 + 56))(v60, v59), swift_unknownObjectRelease(), !v61))
    {
      sub_1BE04D0C4();
      v90 = sub_1BE04D204();
      v91 = sub_1BE052C54();
      if (os_log_type_enabled(v90, v91))
      {
        v92 = swift_slowAlloc();
        *v92 = 0;
        _os_log_impl(&dword_1BD026000, v90, v91, "External verification failed to access presenter for App Store.", v92, 2u);
        MEMORY[0x1BFB45F20](v92, -1, -1);
      }

      (*(v2 + 8))(v8, v1);
      return 2;
    }

    v62 = swift_allocObject();
    v62[2] = v56;
    v62[3] = v61;
    v63 = swift_allocObject();
    v63[2] = sub_1BD8897A4;
    v63[3] = v62;
    aBlock[4] = sub_1BD8897AC;
    v98 = v63;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD889468;
    aBlock[3] = &block_descriptor_197;
    v64 = _Block_copy(aBlock);
    v65 = v98;
    v66 = v56;
    v67 = v61;
    sub_1BE048964();
    v65, v68, v69, v70, v71, v72, v73, v74;
    [v52 presentStoreViewWithBlock_];

    _Block_release(v64);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();
    v62, v76, v77, v78, v79, v80, v81, v82;
    v63, v83, v84, v85, v86, v87, v88, v89;
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return 1;
    }

    __break(1u);
LABEL_30:
    result = sub_1BE053994();
    __break(1u);
    return result;
  }

  return 2;
}

void sub_1BD88927C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v9 = *(a4 + OBJC_IVAR____TtC9PassKitUI40ProvisioningExternalVerificationFlowItem_reporter);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0, &unk_1BE0B9A10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BE0B69E0;
    v12 = *MEMORY[0x1E69BB430];
    *(inited + 32) = *MEMORY[0x1E69BB430];
    v13 = *(a4 + OBJC_IVAR____TtC9PassKitUI40ProvisioningExternalVerificationFlowItem_method);
    v14 = v12;
    v15 = [v13 debugTypeDescription];
    v16 = sub_1BE052434();
    v18 = v17;

    *(inited + 40) = v16;
    *(inited + 48) = v18;
    v19 = sub_1BD1AAF50(inited);
    swift_setDeallocating();
    sub_1BD0DE53C(inited + 32, &qword_1EBD3F590, &qword_1BE0C0E20);
    type metadata accessor for PKAnalyticsKey(0);
    sub_1BD1F0E18();
    v20 = sub_1BE052224();
    v19, v21, v22, v23, v24, v25, v26, v27;
    [v9 reportViewAppearedWithContext_];
  }

  aBlock[4] = a2;
  v38 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_12_7;
  v28 = _Block_copy(aBlock);
  v29 = v38;
  sub_1BE048964();
  v29, v30, v31, v32, v33, v34, v35, v36;
  [a5 presentViewController:a1 animated:1 completion:v28];
  _Block_release(v28);
}

void sub_1BD889468(uint64_t a1, void *a2, void *aBlock)
{
  v4 = *(a1 + 32);
  v5 = _Block_copy(aBlock);
  v6 = swift_allocObject();
  v6[2] = v5;
  v14 = a2;
  v4();
  v6, v7, v8, v9, v10, v11, v12, v13;
}

uint64_t sub_1BD889510()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI40ProvisioningExternalVerificationFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD88954C(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI40ProvisioningExternalVerificationFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void sub_1BD889598(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC9PassKitUI40ProvisioningExternalVerificationFlowItem_verificationController);
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v16[4] = sub_1BD19E0B8;
  v17 = v6;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1107296256;
  v16[2] = sub_1BD126964;
  v16[3] = &block_descriptor_18_1;
  v7 = _Block_copy(v16);
  v8 = v17;
  sub_1BE048964();
  v8, v9, v10, v11, v12, v13, v14, v15;
  [v5 performStoreLookupForBankAppWithCompletion_];
  _Block_release(v7);
}