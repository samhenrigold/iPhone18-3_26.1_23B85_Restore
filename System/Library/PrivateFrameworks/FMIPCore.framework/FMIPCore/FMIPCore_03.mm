uint64_t sub_24A6BD488()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 288) = v2;
  v3 = *(v1 + 264);
  if (v2)
  {
    v4 = sub_24A6BD7C0;
  }

  else
  {
    v4 = sub_24A6BD5A8;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24A6BD5A8()
{
  v1 = *(v0 + 304);
  _Block_release(*(v0 + 280));
  v2 = sub_24A82CD94();
  v3 = sub_24A82D504();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 67109120;
    *(v4 + 4) = v1;
    _os_log_impl(&dword_24A675000, v2, v3, "FMIPBeaconSharingController: Started sharing controller: %{BOOL}d", v4, 8u);
    MEMORY[0x24C21E1D0](v4, -1, -1);
  }

  *(*(v0 + 264) + 120) = v1;
  v5 = swift_task_alloc();
  *(v0 + 296) = v5;
  *v5 = v0;
  v5[1] = sub_24A6BD6CC;

  return sub_24A6BE07C();
}

uint64_t sub_24A6BD6CC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_24A6BD7C0(uint64_t a1)
{
  v17 = v1;
  v2 = v1[35];
  v3 = v1[36];
  swift_willThrow();
  _Block_release(v2);
  v4 = v3;
  v5 = sub_24A82CD94();
  v6 = sub_24A82D4E4();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v1[36];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = sub_24A82DC74();
    v12 = sub_24A68761C(v10, v11, &v16);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_24A675000, v5, v6, "FMIPBeaconSharingController: Failed to start sharing controller: %s", v8, 0xCu);
    sub_24A6876E8(v9);
    MEMORY[0x24C21E1D0](v9, -1, -1);
    MEMORY[0x24C21E1D0](v8, -1, -1);
  }

  else
  {
    v13 = v1[36];
  }

  *(v1[33] + 120) = 0;
  v14 = swift_task_alloc();
  v1[37] = v14;
  *v14 = v1;
  v14[1] = sub_24A6BD6CC;

  return sub_24A6BE07C();
}

uint64_t sub_24A6BD990(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_24A679170(0, &qword_27EF5CF10, 0x277D49640);
  sub_24A6AB7EC(&unk_27EF5CF18, &qword_27EF5CF10, 0x277D49640);
  v3 = sub_24A82D3A4();

  v2(v3);
}

uint64_t sub_24A6BDA40(uint64_t a1, char a2, void *a3)
{
  v5 = *sub_24A67DF6C((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_24A6BBA94(&qword_27EF5CF40, &unk_24A836A70);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_24A6BDB2C()
{
  if (qword_281512DE0 != -1)
  {
    swift_once();
  }

  v1 = sub_24A82CDC4();
  v0[23] = sub_24A6797D0(v1, qword_281518D70);
  v2 = sub_24A82CD94();
  v3 = sub_24A82D504();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24A675000, v2, v3, "FMIPBeaconSharingController: Stoppping...", v4, 2u);
    MEMORY[0x24C21E1D0](v4, -1, -1);
  }

  v5 = v0[22];

  v6 = *(v5 + 112);
  v0[2] = v0;
  v0[7] = v0 + 25;
  v0[3] = sub_24A6BDD08;
  v7 = swift_continuation_init();
  v0[17] = sub_24A6BBA94(&qword_27EF5CF38, &unk_24A830DF0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_24A6BDA40;
  v0[13] = &unk_285DC11F0;
  v0[14] = v7;
  [v6 stopRefreshingSharesWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_24A6BDD08()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 192) = v2;
  v3 = *(v1 + 176);
  if (v2)
  {
    v4 = sub_24A6BDEF8;
  }

  else
  {
    v4 = sub_24A6BDE28;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24A6BDE28(uint64_t a1)
{
  v2 = sub_24A82CD94();
  v3 = sub_24A82D504();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24A675000, v2, v3, "FMIPBeaconSharingController: Successfully stopped sharing controller", v4, 2u);
    MEMORY[0x24C21E1D0](v4, -1, -1);
  }

  v5 = *(v1 + 8);

  return v5();
}

uint64_t sub_24A6BDEF8(uint64_t a1)
{
  v16 = v1;
  v2 = *(v1 + 192);
  swift_willThrow();
  v3 = v2;
  v4 = sub_24A82CD94();
  v5 = sub_24A82D4E4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v1 + 192);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v9 = sub_24A82DC74();
    v11 = sub_24A68761C(v9, v10, &v15);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_24A675000, v4, v5, "FMIPBeaconSharingController: Failed to stop sharing controller: %s", v7, 0xCu);
    sub_24A6876E8(v8);
    MEMORY[0x24C21E1D0](v8, -1, -1);
    MEMORY[0x24C21E1D0](v7, -1, -1);
  }

  else
  {
    v12 = *(v1 + 192);
  }

  v13 = *(v1 + 8);

  return v13();
}

uint64_t sub_24A6BE09C()
{
  v1 = *(v0[19] + 112);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_24A6BE1BC;
  v2 = swift_continuation_init();
  v0[17] = sub_24A6BBA94(&qword_27EF5CF30, &qword_24A830DE8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_24A6BE394;
  v0[13] = &unk_285DC11C8;
  v0[14] = v2;
  [v1 sharingLimitsWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_24A6BE1BC()
{
  v1 = *(*v0 + 152);

  return MEMORY[0x2822009F8](sub_24A6BE2B0, v1, 0);
}

void sub_24A6BE2B0()
{
  v7 = v0;
  v1 = *(v0 + 144);
  v2 = [v1 maxCircleMembers];
  if (v2 < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v3 = v2;
  v4 = [v1 maxDelegatedShares];

  if (v4 < 0)
  {
LABEL_10:
    __break(1u);
    return;
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v6[0] = v3;
    v6[1] = v4;
    sub_24A74EB80(v6);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  v5 = *(v0 + 8);

  v5();
}

uint64_t sub_24A6BE394(uint64_t a1, void *a2)
{
  v3 = sub_24A67DF6C((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return MEMORY[0x282200948](v4);
}

uint64_t sub_24A6BE3F8()
{
  v89 = type metadata accessor for FMIPBeaconShare(0);
  v1 = MEMORY[0x28223BE20](v89);
  v93 = &v89 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = MEMORY[0x28223BE20](v1);
  v92 = &v89 - v4;
  MEMORY[0x28223BE20](v3);
  v91 = &v89 - v5;
  v103 = sub_24A82CAA4();
  v6 = *(v103 - 8);
  v7 = MEMORY[0x28223BE20](v103);
  v94 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v104 = &v89 - v9;
  v10 = type metadata accessor for FMIPBeaconShareStateOverride(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = MEMORY[0x277D84FA0];
  swift_beginAccess();
  v90 = v0;
  v14 = *(v0 + 136);

  v15 = sub_24A789DD4(MEMORY[0x277D84F90]);
  v16 = *(v14 + 16);
  v95 = v6;
  if (v16)
  {
    v17 = 0;
    v18 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v19 = *(v10 + 20);
    v100 = *(v10 + 24);
    v101 = v19;
    v99 = v14 + v18;
    v102 = (v6 + 16);
    v98 = (v6 + 8);
    v97 = v14;
    v96 = v11;
    do
    {
      if (v17 >= *(v14 + 16))
      {
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        swift_once();
        goto LABEL_42;
      }

      sub_24A6CA090(v99 + *(v11 + 72) * v17, v13, type metadata accessor for FMIPBeaconShareStateOverride);
      v22 = *v102;
      v23 = v15;
      v24 = v104;
      (*v102)(v104, &v13[v101], v103);
      v25 = v13;
      v26 = *&v13[v100];
      sub_24A6BB350(v26);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v108 = v23;
      v28 = sub_24A77EDF8(v24);
      v30 = v23;
      v31 = v28;
      v32 = *(v30 + 16);
      v33 = (v29 & 1) == 0;
      v34 = v32 + v33;
      if (__OFADD__(v32, v33))
      {
        goto LABEL_54;
      }

      v35 = v29;
      if (*(v30 + 24) >= v34)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v15 = v108;
          if (v29)
          {
            goto LABEL_3;
          }
        }

        else
        {
          sub_24A785D3C();
          v15 = v108;
          if (v35)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
        sub_24A780CBC(v34, isUniquelyReferenced_nonNull_native);
        v36 = sub_24A77EDF8(v104);
        if ((v35 & 1) != (v37 & 1))
        {
          result = sub_24A82DC44();
          __break(1u);
          return result;
        }

        v31 = v36;
        v15 = v108;
        if (v35)
        {
LABEL_3:
          v20 = *(v15 + 56);
          v21 = *(v20 + 8 * v31);
          *(v20 + 8 * v31) = v26;
          sub_24A6BB5A4(v21);
          (*v98)(v104, v103);
          v13 = v25;
          sub_24A6CA0F8(v25, type metadata accessor for FMIPBeaconShareStateOverride);
          goto LABEL_4;
        }
      }

      v38 = v16;
      *(v15 + 8 * (v31 >> 6) + 64) |= 1 << v31;
      v39 = v95;
      v40 = *(v15 + 48) + *(v95 + 72) * v31;
      v41 = v104;
      v16 = v15;
      v42 = v103;
      (v22)(v40, v104, v103);
      *(*(v16 + 56) + 8 * v31) = v26;
      v43 = v42;
      v15 = v16;
      (*(v39 + 8))(v41, v43);
      v13 = v25;
      sub_24A6CA0F8(v25, type metadata accessor for FMIPBeaconShareStateOverride);
      v44 = *(v16 + 16);
      v45 = __OFADD__(v44, 1);
      v46 = v44 + 1;
      if (v45)
      {
        goto LABEL_55;
      }

      *(v16 + 16) = v46;
      v16 = v38;
LABEL_4:
      ++v17;
      v11 = v96;
      v14 = v97;
    }

    while (v16 != v17);
  }

  v104 = v15;

  v47 = *(v90 + 128);
  if ((v47 & 0xC000000000000001) != 0)
  {

    sub_24A82D704();
    sub_24A679170(0, &qword_27EF5CF10, 0x277D49640);
    sub_24A6AB7EC(&unk_27EF5CF18, &qword_27EF5CF10, 0x277D49640);
    sub_24A82D414();
    v47 = v108;
    v48 = v109;
    v49 = v110;
    v50 = v111;
    v16 = v112;
  }

  else
  {
    v51 = -1 << *(v47 + 32);
    v48 = v47 + 56;
    v49 = ~v51;
    v52 = -v51;
    if (v52 < 64)
    {
      v53 = ~(-1 << v52);
    }

    else
    {
      v53 = -1;
    }

    v16 = v53 & *(v47 + 56);

    v50 = 0;
  }

  v100 = v49;
  v101 = v47;
  v54 = (v49 + 64) >> 6;
  v102 = (v95 + 8);
  while (v47 < 0)
  {
    v66 = sub_24A82D784();
    v63 = v94;
    if (!v66)
    {
      goto LABEL_40;
    }

    v105 = v66;
    sub_24A679170(0, &qword_27EF5CF10, 0x277D49640);
    swift_dynamicCast();
    v65 = v106[0];
    v62 = v50;
    v64 = v16;
    if (!v106[0])
    {
      goto LABEL_40;
    }

LABEL_35:
    v67 = [v65 identifier];
    sub_24A82CA84();

    if (*(v104 + 16) && (v68 = sub_24A77EDF8(v63), (v69 & 1) != 0))
    {
      v55 = *(*(v104 + 56) + 8 * v68);
      sub_24A6BB350(v55);
      (*v102)(v63, v103);
    }

    else
    {
      (*v102)(v63, v103);
      v70 = [v65 state];
      if ((v70 - 1) <= 6)
      {
        v55 = *&asc_24A8318B8[8 * (v70 - 1)];
      }

      else
      {
        v55 = 0x8000000000000000;
      }
    }

    v106[0] = v55;
    v56 = v65;
    sub_24A6BB350(v55);
    v57 = v91;
    sub_24A6BBB50(v56, v106, v91);
    v58 = v93;
    sub_24A6CA090(v57, v93, type metadata accessor for FMIPBeaconShare);
    v59 = v92;
    sub_24A70B86C(v92, v58);
    sub_24A6BB5A4(v55);

    sub_24A6CA0F8(v59, type metadata accessor for FMIPBeaconShare);
    sub_24A6CA0F8(v57, type metadata accessor for FMIPBeaconShare);
    v50 = v62;
    v16 = v64;
    v47 = v101;
  }

  v60 = v50;
  v61 = v16;
  v62 = v50;
  v63 = v94;
  if (!v16)
  {
    while (1)
    {
      v62 = v60 + 1;
      if (__OFADD__(v60, 1))
      {
        break;
      }

      if (v62 >= v54)
      {
        goto LABEL_40;
      }

      v61 = *(v48 + 8 * v62);
      ++v60;
      if (v61)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
    goto LABEL_53;
  }

LABEL_31:
  v64 = (v61 - 1) & v61;
  v65 = *(*(v47 + 48) + ((v62 << 9) | (8 * __clz(__rbit64(v61)))));
  if (v65)
  {
    goto LABEL_35;
  }

LABEL_40:

  sub_24A6BAFBC(v47);
  v16 = v107;
  v71 = *(v90 + 144);

  v72 = sub_24A7B4308(v16, v71);

  if (v72)
  {
  }

  if (qword_281512DE0 != -1)
  {
    goto LABEL_56;
  }

LABEL_42:
  v73 = sub_24A82CDC4();
  sub_24A6797D0(v73, qword_281518D70);
  v74 = sub_24A82CD94();
  v75 = sub_24A82D504();
  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v106[0] = v77;
    *v76 = 136315138;
    sub_24A6C84B4(&qword_27EF5CF28, 255, type metadata accessor for FMIPBeaconShare, &protocol conformance descriptor for FMIPBeaconShare);

    v78 = sub_24A82D3B4();
    v80 = v79;

    v81 = sub_24A68761C(v78, v80, v106);

    *(v76 + 4) = v81;
    _os_log_impl(&dword_24A675000, v74, v75, "FMIPBeaconSharingController: Did calculate shares update: %s", v76, 0xCu);
    sub_24A6876E8(v77);
    MEMORY[0x24C21E1D0](v77, -1, -1);
    MEMORY[0x24C21E1D0](v76, -1, -1);
  }

  v82 = sub_24A82C514();
  v106[3] = v82;
  v106[4] = sub_24A6C84B4(&unk_281514680, 255, MEMORY[0x277D08A28], MEMORY[0x277D089C8]);
  v83 = sub_24A697E3C(v106);
  (*(*(v82 - 8) + 104))(v83, *MEMORY[0x277D089D8], v82);
  LOBYTE(v82) = sub_24A82C4D4();
  sub_24A6876E8(v106);
  if (v82)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {

      sub_24A74ECD8(v84);

      swift_unknownObjectRelease();
    }
  }

  else
  {
    v85 = sub_24A82CD94();
    v86 = sub_24A82D504();
    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      *v87 = 0;
      _os_log_impl(&dword_24A675000, v85, v86, "FMIPBeaconSharingController: Not forwarding share updates due to FF disabled.", v87, 2u);
      MEMORY[0x24C21E1D0](v87, -1, -1);
    }
  }

  *(v90 + 144) = v16;
}

uint64_t sub_24A6BEF44@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = type metadata accessor for FMIPBeaconShareStateOverride(0);
  v9 = v8 - 8;
  v10 = *(v8 - 8);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v34[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v34[-1] - v14;
  v16 = *a2;
  v17 = *(v9 + 28);
  v18 = sub_24A82CAA4();
  (*(*(v18 - 8) + 16))(a3 + v17, a1, v18);
  sub_24A6BB350(v16);
  sub_24A82CA94();
  *(a3 + *(v9 + 32)) = v16;
  sub_24A6CA090(a3, v15, type metadata accessor for FMIPBeaconShareStateOverride);
  swift_beginAccess();
  v19 = *(v4 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v4 + 136) = v19;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v19 = sub_24A77FF40(0, v19[2] + 1, 1, v19);
    *(v4 + 136) = v19;
  }

  v22 = v19[2];
  v21 = v19[3];
  if (v22 >= v21 >> 1)
  {
    v19 = sub_24A77FF40((v21 > 1), v22 + 1, 1, v19);
  }

  v19[2] = v22 + 1;
  sub_24A6CA2B0(v15, v19 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v22, type metadata accessor for FMIPBeaconShareStateOverride);
  *(v4 + 136) = v19;
  swift_endAccess();
  if (qword_281512DE0 != -1)
  {
    swift_once();
  }

  v23 = sub_24A82CDC4();
  sub_24A6797D0(v23, qword_281518D70);
  sub_24A6CA090(a3, v13, type metadata accessor for FMIPBeaconShareStateOverride);
  v24 = sub_24A82CD94();
  v25 = sub_24A82D504();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v34[0] = v27;
    *v26 = 136315138;
    v28 = sub_24A6BCC70();
    v30 = v29;
    sub_24A6CA0F8(v13, type metadata accessor for FMIPBeaconShareStateOverride);
    v31 = sub_24A68761C(v28, v30, v34);

    *(v26 + 4) = v31;
    _os_log_impl(&dword_24A675000, v24, v25, "FMIPBeaconSharingController: Added beacon share state override: %s", v26, 0xCu);
    sub_24A6876E8(v27);
    MEMORY[0x24C21E1D0](v27, -1, -1);
    MEMORY[0x24C21E1D0](v26, -1, -1);
  }

  else
  {

    sub_24A6CA0F8(v13, type metadata accessor for FMIPBeaconShareStateOverride);
  }

  return sub_24A6BE3F8();
}

uint64_t sub_24A6BF2EC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for FMIPBeaconShareStateOverride(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v20[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281512DE0 != -1)
  {
    swift_once();
  }

  v7 = sub_24A82CDC4();
  sub_24A6797D0(v7, qword_281518D70);
  sub_24A6CA090(a1, v6, type metadata accessor for FMIPBeaconShareStateOverride);
  v8 = sub_24A82CD94();
  v9 = sub_24A82D504();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20[0] = v11;
    *v10 = 136315138;
    v12 = sub_24A6BCC70();
    v14 = v13;
    sub_24A6CA0F8(v6, type metadata accessor for FMIPBeaconShareStateOverride);
    v15 = sub_24A68761C(v12, v14, v20);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_24A675000, v8, v9, "FMIPBeaconSharingController: Removing beacon share state override: %s", v10, 0xCu);
    sub_24A6876E8(v11);
    MEMORY[0x24C21E1D0](v11, -1, -1);
    MEMORY[0x24C21E1D0](v10, -1, -1);
  }

  else
  {

    v16 = sub_24A6CA0F8(v6, type metadata accessor for FMIPBeaconShareStateOverride);
  }

  MEMORY[0x28223BE20](v16);
  *(&v19 - 2) = a1;
  swift_beginAccess();
  result = sub_24A6C77F0(sub_24A6C9E04, (&v19 - 4));
  v18 = *(*(v2 + 136) + 16);
  if (v18 < result)
  {
    __break(1u);
  }

  else
  {
    sub_24A6C9F6C(result, v18);
    swift_endAccess();
    return sub_24A6BE3F8();
  }

  return result;
}

uint64_t sub_24A6BF584(uint64_t a1, uint64_t a2)
{
  if (sub_24A82CA74() & 1) != 0 && (v4 = type metadata accessor for FMIPBeaconShareStateOverride(0), (sub_24A82CA74()))
  {
    v5 = *(v4 + 24);
    v6 = *(a1 + v5);
    v10 = *(a2 + v5);
    v7 = v10;
    v11 = v6;
    sub_24A6BB350(v6);
    sub_24A6BB350(v10);
    v8 = static FMIPBeaconShareState.== infix(_:_:)(&v11, &v10);
    sub_24A6BB5A4(v7);
    sub_24A6BB5A4(v6);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_24A6BF634(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_24A6BF658, v2, 0);
}

uint64_t sub_24A6BF658()
{
  v1 = *(v0 + 24);
  v2 = *(*(v0 + 32) + 128);
  v3 = swift_task_alloc();
  *(v3 + 16) = v1;

  sub_24A79ED0C(sub_24A6C9DE4, v3, v2);
  v5 = v4;

  if (v5 && (v6 = [v5 state], v5, (v6 - 1) <= 6))
  {
    v7 = *&asc_24A8318B8[8 * (v6 - 1)];
  }

  else
  {
    v7 = 0x8000000000000000;
  }

  **(v0 + 16) = v7;
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_24A6BF75C(id *a1, uint64_t a2)
{
  v3 = sub_24A82CAA4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*a1 identifier];
  sub_24A82CA84();

  v8 = sub_24A82CA74();
  (*(v4 + 8))(v6, v3);
  return v8 & 1;
}

uint64_t sub_24A6BF868(uint64_t a1, uint64_t (*a2)(char *, void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const char *a9)
{
  type metadata accessor for FMIPAcceptShareAction(0);
  v11 = swift_dynamicCastClass();
  if (v11)
  {

    return sub_24A6C0D50(v11, a2, a3, v12, v13, v14, v15, v16, a9);
  }

  else
  {
    type metadata accessor for FMIPDeclineShareAction(0);
    v18 = swift_dynamicCastClass();
    if (v18)
    {

      return sub_24A6C131C(v18, a2, a3);
    }

    else
    {
      type metadata accessor for FMIPWithdrawShareAction(0);
      v19 = swift_dynamicCastClass();
      if (v19)
      {

        return sub_24A6C09B8(v19, a2, a3, v20, v21, v22, v23, v24, a9);
      }

      else
      {
        if (qword_281512DE0 != -1)
        {
          swift_once();
        }

        v25 = sub_24A82CDC4();
        sub_24A6797D0(v25, qword_281518D70);

        v26 = sub_24A82CD94();
        v27 = sub_24A82D4E4();

        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          v29 = swift_slowAlloc();
          v33 = v29;
          *v28 = 136315138;
          v30 = sub_24A7E2164();
          v32 = sub_24A68761C(v30, v31, &v33);

          *(v28 + 4) = v32;
          _os_log_impl(&dword_24A675000, v26, v27, "FMIPBeaconSharingController: Unknown action received: %s", v28, 0xCu);
          sub_24A6876E8(v29);
          MEMORY[0x24C21E1D0](v29, -1, -1);
          MEMORY[0x24C21E1D0](v28, -1, -1);
        }

        v34 = 4;
        return a2(&v34, 0);
      }
    }
  }
}

uint64_t sub_24A6BFAC4(void *a1, void (*a2)(uint64_t *, uint64_t, uint64_t), uint64_t a3)
{
  v61 = a2;
  v62 = a3;
  v5 = sub_24A6BBA94(&qword_27EF5D018, &qword_24A830E38);
  MEMORY[0x28223BE20](v5 - 8);
  v58 = &v56 - v6;
  v7 = sub_24A6BBA94(&qword_27EF5D020, &qword_24A830E40);
  MEMORY[0x28223BE20](v7 - 8);
  v60 = &v56 - v8;
  v9 = sub_24A82CAA4();
  v63 = *(v9 - 8);
  v64 = v9;
  MEMORY[0x28223BE20](v9);
  v57 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = 0;
  v65 = a1;
  v12 = *(a1 + OBJC_IVAR____TtC8FMIPCore19FMIPShareItemAction_handles);
  v13 = MEMORY[0x277D84F90];
  aBlock[0] = MEMORY[0x277D84F90];
  v14 = *(v12 + 16);
  v15 = v12 + 40;
  v16 = 0x277D49000;
  v59 = v12 + 40;
LABEL_2:
  v17 = (v15 + 16 * v11);
  while (v14 != v11)
  {
    if (v11 >= *(v12 + 16))
    {
      __break(1u);
LABEL_26:
      swift_once();
LABEL_17:
      v27 = sub_24A82CDC4();
      sub_24A6797D0(v27, qword_281518D70);

      v28 = sub_24A82CD94();
      v29 = sub_24A82D504();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        aBlock[0] = v31;
        *v30 = 136315394;
        *(v30 + 4) = sub_24A68761C(*(v3 + *v16 + 352), *(v3 + *v16 + 360), aBlock);
        *(v30 + 12) = 2080;
        v32 = MEMORY[0x24C21CB60](v12, MEMORY[0x277D837D0]);
        v34 = sub_24A68761C(v32, v33, aBlock);

        *(v30 + 14) = v34;
        _os_log_impl(&dword_24A675000, v28, v29, "FMIPBeaconSharingController: Failed to run a share action for item: %s to %s", v30, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C21E1D0](v31, -1, -1);
        MEMORY[0x24C21E1D0](v30, -1, -1);
      }

      v35 = v61;
      v36 = v58;
      LOBYTE(aBlock[0]) = 4;
      sub_24A6CA090(v3 + *v16, v58, type metadata accessor for FMIPItem);
      v37 = type metadata accessor for FMIPItem(0);
      (*(*(v37 - 8) + 56))(v36, 0, 1, v37);
      v38 = sub_24A789FBC(MEMORY[0x277D84F90]);
      v35(aBlock, v36, v38);

      return sub_24A67F378(v36, &qword_27EF5D018, &qword_24A830E38);
    }

    ++v11;
    v3 = v17 + 2;

    v18 = sub_24A82CF94();

    v19 = [objc_opt_self() handleWithString_];

    v17 = v3;
    if (v19)
    {
      MEMORY[0x24C21CB10]();
      if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24A82D274();
      }

      sub_24A82D2C4();
      v13 = aBlock[0];
      v15 = v59;
      goto LABEL_2;
    }
  }

  v20 = sub_24A713D74(v13);

  if ((v20 & 0xC000000000000001) != 0)
  {
    v21 = sub_24A82D744();
  }

  else
  {
    v21 = *(v20 + 16);
  }

  v22 = v64;
  v3 = v65;
  v23 = v63;
  v24 = v60;
  v16 = &OBJC_IVAR____TtC8FMIPCore14FMIPItemAction_item;
  if (!v21)
  {

LABEL_16:
    if (qword_281512DE0 != -1)
    {
      goto LABEL_26;
    }

    goto LABEL_17;
  }

  v26 = *(v65 + OBJC_IVAR____TtC8FMIPCore14FMIPItemAction_item + 352);
  v25 = *(v65 + OBJC_IVAR____TtC8FMIPCore14FMIPItemAction_item + 360);
  sub_24A82CA44();
  if ((*(v23 + 48))(v24, 1, v22) == 1)
  {

    sub_24A67F378(v24, &qword_27EF5D020, &qword_24A830E40);
    goto LABEL_16;
  }

  (*(v23 + 32))(v57, v24, v22);
  if (qword_281512DE0 != -1)
  {
    swift_once();
  }

  v40 = sub_24A82CDC4();
  sub_24A6797D0(v40, qword_281518D70);

  v41 = sub_24A82CD94();
  v42 = sub_24A82D504();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    aBlock[0] = v44;
    *v43 = 136315394;
    *(v43 + 4) = sub_24A68761C(v26, v25, aBlock);
    *(v43 + 12) = 2080;
    v45 = MEMORY[0x24C21CB60](v12, MEMORY[0x277D837D0]);
    v47 = sub_24A68761C(v45, v46, aBlock);

    *(v43 + 14) = v47;
    _os_log_impl(&dword_24A675000, v41, v42, "FMIPBeaconSharingController: Sending share action for item: %s to %s", v43, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C21E1D0](v44, -1, -1);
    MEMORY[0x24C21E1D0](v43, -1, -1);
  }

  v48 = v57;
  v49 = *(v56 + 112);
  v50 = sub_24A82CA64();
  sub_24A679170(0, &qword_27EF5D028, 0x277D49670);
  sub_24A6AB7EC(&qword_27EF5D030, &qword_27EF5D028, 0x277D49670);
  v51 = sub_24A82D394();

  v52 = swift_allocObject();
  v53 = v61;
  v54 = v62;
  v52[2] = v65;
  v52[3] = v53;
  v52[4] = v54;
  aBlock[4] = sub_24A6CA48C;
  aBlock[5] = v52;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A6C08D8;
  aBlock[3] = &unk_285DC13D0;
  v55 = _Block_copy(aBlock);

  [v49 share:v50 recipients:v51 completion:v55];
  _Block_release(v55);

  return (*(v63 + 8))(v48, v64);
}

uint64_t sub_24A6C02B8(char a1, uint64_t a2, uint64_t a3, void (*a4)(void, void, void))
{
  v8 = sub_24A6BBA94(&qword_27EF5D018, &qword_24A830E38);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v28 - v9;
  if (qword_281512DE0 != -1)
  {
    swift_once();
  }

  v11 = sub_24A82CDC4();
  sub_24A6797D0(v11, qword_281518D70);

  v12 = sub_24A82CD94();
  v13 = sub_24A82D504();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    HIDWORD(v28) = v13;
    v15 = v14;
    v29 = swift_slowAlloc();
    v30[0] = v29;
    *v15 = 136315650;
    *(v15 + 4) = sub_24A68761C(*(a3 + OBJC_IVAR____TtC8FMIPCore14FMIPItemAction_item + 352), *(a3 + OBJC_IVAR____TtC8FMIPCore14FMIPItemAction_item + 360), v30);
    *(v15 + 12) = 2080;
    v16 = MEMORY[0x24C21CB60](*(a3 + OBJC_IVAR____TtC8FMIPCore19FMIPShareItemAction_handles), MEMORY[0x277D837D0]);
    v18 = a4;
    v19 = sub_24A68761C(v16, v17, v30);

    *(v15 + 14) = v19;
    a4 = v18;
    *(v15 + 22) = 1024;
    *(v15 + 24) = a1 & 1;
    _os_log_impl(&dword_24A675000, v12, BYTE4(v28), "FMIPBeaconSharingController: Share action for item: %s sent to %s: %{BOOL}d", v15, 0x1Cu);
    v20 = v29;
    swift_arrayDestroy();
    MEMORY[0x24C21E1D0](v20, -1, -1);
    MEMORY[0x24C21E1D0](v15, -1, -1);
  }

  sub_24A6C0654(a2);
  if (*(v21 + 16))
  {
    sub_24A6BBA94(&qword_27EF5D038, &qword_24A830E48);
    v22 = sub_24A82D974();
  }

  else
  {
    v22 = MEMORY[0x277D84F98];
  }

  v30[0] = v22;

  sub_24A6C7C0C(v23, 1, v30);

  if (a1)
  {
    v24 = 2;
  }

  else
  {
    v24 = 4;
  }

  v25 = v30[0];
  LOBYTE(v30[0]) = v24;
  sub_24A6CA090(a3 + OBJC_IVAR____TtC8FMIPCore14FMIPItemAction_item, v10, type metadata accessor for FMIPItem);
  v26 = type metadata accessor for FMIPItem(0);
  (*(*(v26 - 8) + 56))(v10, 0, 1, v26);
  a4(v30, v10, v25);

  return sub_24A67F378(v10, &qword_27EF5D018, &qword_24A830E38);
}

void sub_24A6C0654(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    v33 = MEMORY[0x277D84F90];
    sub_24A6FC8E0(0, v1, 0);
    v3 = v2 + 64;
    v4 = sub_24A82D6C4();
    v5 = 0;
    v6 = *(v2 + 36);
    v27 = v2 + 72;
    v28 = v1;
    v29 = v6;
    v30 = v2 + 64;
    v31 = v2;
    while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(v2 + 32))
    {
      v8 = v4 >> 6;
      if ((*(v3 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_22;
      }

      if (v6 != *(v2 + 36))
      {
        goto LABEL_23;
      }

      v32 = v5;
      v9 = *(*(v2 + 48) + 8 * v4);
      v10 = *(*(v2 + 56) + 8 * v4);
      v11 = v9;
      v12 = v10;
      v13 = [v11 destination];
      v14 = sub_24A82CFC4();
      v16 = v15;

      v18 = *(v33 + 16);
      v17 = *(v33 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_24A6FC8E0((v17 > 1), v18 + 1, 1);
      }

      *(v33 + 16) = v18 + 1;
      v19 = (v33 + 24 * v18);
      v19[4] = v14;
      v19[5] = v16;
      v19[6] = v10;
      v2 = v31;
      v7 = 1 << *(v31 + 32);
      if (v4 >= v7)
      {
        goto LABEL_24;
      }

      v3 = v30;
      v20 = *(v30 + 8 * v8);
      if ((v20 & (1 << v4)) == 0)
      {
        goto LABEL_25;
      }

      v6 = v29;
      if (v29 != *(v31 + 36))
      {
        goto LABEL_26;
      }

      v21 = v20 & (-2 << (v4 & 0x3F));
      if (v21)
      {
        v7 = __clz(__rbit64(v21)) | v4 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v22 = v8 << 6;
        v23 = v8 + 1;
        v24 = (v27 + 8 * v8);
        while (v23 < (v7 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            sub_24A6CA498(v4, v29, 0);
            v7 = __clz(__rbit64(v25)) + v22;
            goto LABEL_4;
          }
        }

        sub_24A6CA498(v4, v29, 0);
      }

LABEL_4:
      v5 = v32 + 1;
      v4 = v7;
      if (v32 + 1 == v28)
      {
        return;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }
}

uint64_t sub_24A6C08D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  sub_24A679170(0, &qword_27EF5D028, 0x277D49670);
  sub_24A6BBA94(&qword_27EF5CF40, &unk_24A836A70);
  sub_24A6AB7EC(&qword_27EF5D030, &qword_27EF5D028, 0x277D49670);
  v5 = sub_24A82CEF4();

  v4(a2, v5);
}

uint64_t sub_24A6C09E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[11] = a6;
  v7[12] = a7;
  v7[9] = a4;
  v7[10] = a5;
  v9 = *(type metadata accessor for FMIPBeaconShareStateOverride(0) - 8);
  v7[13] = v9;
  v7[14] = *(v9 + 64);
  v7[15] = swift_task_alloc();
  v10 = swift_task_alloc();
  v11 = OBJC_IVAR____TtC8FMIPCore21FMIPItemSharingAction_shareIdentifier;
  v7[16] = v10;
  v7[17] = v11;
  v7[8] = 0x8000000000000038;

  return MEMORY[0x2822009F8](sub_24A6C0AD0, a4, 0);
}

uint64_t sub_24A6C0AD0()
{
  v1 = v0[9];
  sub_24A6BEF44(v0[10] + v0[17], v0 + 8, v0[16]);
  v0[18] = *(v1 + 112);

  return MEMORY[0x2822009F8](sub_24A6C0B4C, 0, 0);
}

uint64_t sub_24A6C0B4C()
{
  v13 = *(v0 + 144);
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);
  v3 = *(v0 + 104);
  v4 = *(v0 + 96);
  v5 = *(v0 + 72);
  v11 = *(v0 + 80);
  v12 = sub_24A82CA64();
  sub_24A6CA090(v2, v1, type metadata accessor for FMIPBeaconShareStateOverride);
  v6 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = v11;
  *(v7 + 32) = v4;
  *(v7 + 40) = v5;
  sub_24A6CA2B0(v1, v7 + v6, type metadata accessor for FMIPBeaconShareStateOverride);
  *(v0 + 48) = sub_24A6C9CC4;
  *(v0 + 56) = v7;
  *(v0 + 16) = MEMORY[0x277D85DD0];
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_24A7FD664;
  *(v0 + 40) = &unk_285DC1178;
  v8 = _Block_copy((v0 + 16));

  [v13 removeShare:v12 completion:v8];
  _Block_release(v8);

  sub_24A6CA0F8(v2, type metadata accessor for FMIPBeaconShareStateOverride);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_24A6C0D30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_24A6CADF4, a4, 0);
}

uint64_t sub_24A6C0D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[12] = a6;
  v7[13] = a7;
  v7[10] = a4;
  v7[11] = a5;
  v9 = *(type metadata accessor for FMIPBeaconShareStateOverride(0) - 8);
  v7[14] = v9;
  v7[15] = *(v9 + 64);
  v7[16] = swift_task_alloc();
  v10 = swift_task_alloc();
  v11 = OBJC_IVAR____TtC8FMIPCore21FMIPItemSharingAction_shareIdentifier;
  v7[17] = v10;
  v7[18] = v11;
  v12 = swift_task_alloc();
  v7[19] = v12;
  *v12 = v7;
  v12[1] = sub_24A6C0EA0;

  return sub_24A6BF634((v7 + 8), a5 + v11);
}

uint64_t sub_24A6C0EA0()
{

  return MEMORY[0x2822009F8](sub_24A6C0F9C, 0, 0);
}

uint64_t sub_24A6C0F9C()
{
  v1 = v0[10];
  v2 = v0[8];
  v0[20] = v2;
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  v0[9] = v3;
  sub_24A6BB350(v2);

  return MEMORY[0x2822009F8](sub_24A6C102C, v1, 0);
}

uint64_t sub_24A6C102C()
{
  v1 = v0[10];
  sub_24A6BEF44(v0[11] + v0[18], v0 + 9, v0[17]);
  sub_24A6BB5A4(v0[9]);
  v0[21] = *(v1 + 112);

  return MEMORY[0x2822009F8](sub_24A6C10B0, 0, 0);
}

uint64_t sub_24A6C10B0()
{
  v13 = *(v0 + 168);
  v14 = *(v0 + 160);
  v1 = *(v0 + 136);
  v2 = *(v0 + 128);
  v3 = *(v0 + 104);
  v4 = *(v0 + 112);
  v5 = *(v0 + 80);
  v11 = *(v0 + 88);
  v12 = sub_24A82CA64();
  sub_24A6CA090(v1, v2, type metadata accessor for FMIPBeaconShareStateOverride);
  v6 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = v11;
  *(v7 + 32) = v3;
  *(v7 + 40) = v5;
  sub_24A6CA2B0(v2, v7 + v6, type metadata accessor for FMIPBeaconShareStateOverride);
  *(v0 + 48) = sub_24A6C990C;
  *(v0 + 56) = v7;
  *(v0 + 16) = MEMORY[0x277D85DD0];
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_24A7FD664;
  *(v0 + 40) = &unk_285DC10D8;
  v8 = _Block_copy((v0 + 16));

  [v13 acceptShare:v12 completion:v8];
  _Block_release(v8);

  sub_24A6BB5A4(v14);
  sub_24A6CA0F8(v1, type metadata accessor for FMIPBeaconShareStateOverride);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_24A6C129C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_24A6C12BC, a4, 0);
}

uint64_t sub_24A6C12BC()
{
  sub_24A6BF2EC(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24A6C1344(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, ...)
{
  v35 = a4;
  v9 = v6;
  v13 = sub_24A6BBA94(&qword_27EF5CF08, &qword_24A830D80);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v32 - v14;
  if (qword_281512DE0 != -1)
  {
    swift_once();
  }

  v16 = sub_24A82CDC4();
  sub_24A6797D0(v16, qword_281518D70);

  v17 = sub_24A82CD94();
  v18 = sub_24A82D504();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v34 = a6;
    v20 = v19;
    v21 = swift_slowAlloc();
    v32[1] = a5;
    v22 = v21;
    v36 = v21;
    *v20 = 136315138;
    sub_24A82CAA4();
    v33 = v6;
    v23 = a3;
    v24 = a2;
    sub_24A6C84B4(&qword_27EF5CEF0, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v25 = sub_24A82DB84();
    v27 = sub_24A68761C(v25, v26, &v36);

    *(v20 + 4) = v27;
    a2 = v24;
    a3 = v23;
    v9 = v33;
    _os_log_impl(&dword_24A675000, v17, v18, v35, v20, 0xCu);
    sub_24A6876E8(v22);
    MEMORY[0x24C21E1D0](v22, -1, -1);
    v28 = v20;
    a6 = v34;
    MEMORY[0x24C21E1D0](v28, -1, -1);
  }

  v29 = sub_24A82D354();
  (*(*(v29 - 8) + 56))(v15, 1, 1, v29);
  v30 = swift_allocObject();
  v30[2] = 0;
  v30[3] = 0;
  v30[4] = v9;
  v30[5] = a1;
  v30[6] = a2;
  v30[7] = a3;

  sub_24A7382F4(0, 0, v15, a6, v30);
}

uint64_t sub_24A6C161C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[12] = a6;
  v7[13] = a7;
  v7[10] = a4;
  v7[11] = a5;
  v9 = *(type metadata accessor for FMIPBeaconShareStateOverride(0) - 8);
  v7[14] = v9;
  v7[15] = *(v9 + 64);
  v7[16] = swift_task_alloc();
  v10 = swift_task_alloc();
  v11 = OBJC_IVAR____TtC8FMIPCore21FMIPItemSharingAction_shareIdentifier;
  v7[17] = v10;
  v7[18] = v11;
  v12 = swift_task_alloc();
  v7[19] = v12;
  *v12 = v7;
  v12[1] = sub_24A6C1744;

  return sub_24A6BF634((v7 + 8), a5 + v11);
}

uint64_t sub_24A6C1744()
{

  return MEMORY[0x2822009F8](sub_24A6C1840, 0, 0);
}

uint64_t sub_24A6C1840()
{
  v1 = v0[10];
  v2 = v0[8];
  v0[20] = v2;
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  v0[9] = v3 | 0x4000000000000000;
  sub_24A6BB350(v2);

  return MEMORY[0x2822009F8](sub_24A6C18D4, v1, 0);
}

uint64_t sub_24A6C18D4()
{
  v1 = v0[10];
  sub_24A6BEF44(v0[11] + v0[18], v0 + 9, v0[17]);
  sub_24A6BB5A4(v0[9]);
  v0[21] = *(v1 + 112);

  return MEMORY[0x2822009F8](sub_24A6C1958, 0, 0);
}

uint64_t sub_24A6C1958()
{
  v13 = *(v0 + 168);
  v14 = *(v0 + 160);
  v1 = *(v0 + 136);
  v2 = *(v0 + 128);
  v3 = *(v0 + 104);
  v4 = *(v0 + 112);
  v5 = *(v0 + 80);
  v11 = *(v0 + 88);
  v12 = sub_24A82CA64();
  sub_24A6CA090(v1, v2, type metadata accessor for FMIPBeaconShareStateOverride);
  v6 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = v11;
  *(v7 + 32) = v3;
  *(v7 + 40) = v5;
  sub_24A6CA2B0(v2, v7 + v6, type metadata accessor for FMIPBeaconShareStateOverride);
  *(v0 + 48) = sub_24A6C95EC;
  *(v0 + 56) = v7;
  *(v0 + 16) = MEMORY[0x277D85DD0];
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_24A7FD664;
  *(v0 + 40) = &unk_285DC1038;
  v8 = _Block_copy((v0 + 16));

  [v13 declineShare:v12 completion:v8];
  _Block_release(v8);

  sub_24A6BB5A4(v14);
  sub_24A6CA0F8(v1, type metadata accessor for FMIPBeaconShareStateOverride);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_24A6C1B44(int a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, const char *a8, uint64_t a9, uint64_t a10)
{
  v40 = a8;
  v46 = a7;
  v43 = a5;
  v44 = a4;
  v42 = a2;
  v41 = a1;
  v11 = a10;
  v12 = type metadata accessor for FMIPBeaconShareStateOverride(0);
  v45 = *(v12 - 8);
  v13 = *(v45 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = sub_24A6BBA94(&qword_27EF5CF08, &qword_24A830D80);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v37 - v15;
  if (qword_281512DE0 != -1)
  {
    swift_once();
  }

  v17 = sub_24A82CDC4();
  sub_24A6797D0(v17, qword_281518D70);

  v18 = sub_24A82CD94();
  v19 = sub_24A82D504();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v37 = a9;
    v21 = v20;
    v22 = swift_slowAlloc();
    v39 = a10;
    v23 = v22;
    v47 = v22;
    *v21 = 136315394;
    sub_24A82CAA4();
    v38 = a6;
    sub_24A6C84B4(&qword_27EF5CEF0, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v24 = sub_24A82DB84();
    v26 = sub_24A68761C(v24, v25, &v47);

    *(v21 + 4) = v26;
    *(v21 + 12) = 2080;
    v27 = v41;
    if (v41)
    {
      v28 = 0x73736563637573;
    }

    else
    {
      v28 = 0x64656C696166;
    }

    if (v41)
    {
      v29 = 0xE700000000000000;
    }

    else
    {
      v29 = 0xE600000000000000;
    }

    v30 = sub_24A68761C(v28, v29, &v47);

    *(v21 + 14) = v30;
    a6 = v38;
    _os_log_impl(&dword_24A675000, v18, v19, v40, v21, 0x16u);
    swift_arrayDestroy();
    v31 = v23;
    v11 = v39;
    MEMORY[0x24C21E1D0](v31, -1, -1);
    MEMORY[0x24C21E1D0](v21, -1, -1);
  }

  else
  {

    v27 = v41;
  }

  if (v27)
  {
    v32 = 2;
  }

  else
  {
    v32 = 4;
  }

  v48 = v32;
  v44(&v48, v42);
  v33 = sub_24A82D354();
  (*(*(v33 - 8) + 56))(v16, 1, 1, v33);
  sub_24A6CA090(v46, &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FMIPBeaconShareStateOverride);
  v34 = (*(v45 + 80) + 40) & ~*(v45 + 80);
  v35 = swift_allocObject();
  v35[2] = 0;
  v35[3] = 0;
  v35[4] = a6;
  sub_24A6CA2B0(&v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v35 + v34, type metadata accessor for FMIPBeaconShareStateOverride);

  sub_24A7382F4(0, 0, v16, v11, v35);
}

void sub_24A6C1F58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_281512DE0 != -1)
  {
    swift_once();
  }

  v7 = sub_24A82CDC4();
  sub_24A6797D0(v7, qword_281518D70);

  v8 = sub_24A82CD94();
  v9 = sub_24A82D504();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19[0] = v11;
    *v10 = 136315138;
    sub_24A82CAA4();
    sub_24A6C84B4(&qword_27EF5CEF0, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v12 = sub_24A82DB84();
    v14 = sub_24A68761C(v12, v13, v19);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_24A675000, v8, v9, "FMIPBeaconSharingController: Requesting share of beacon: %s", v10, 0xCu);
    sub_24A6876E8(v11);
    MEMORY[0x24C21E1D0](v11, -1, -1);
    MEMORY[0x24C21E1D0](v10, -1, -1);
  }

  v15 = *(v3 + 112);
  v16 = sub_24A82CA64();
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = a2;
  v17[4] = a3;
  v19[4] = sub_24A6CA440;
  v19[5] = v17;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 1107296256;
  v19[2] = sub_24A7FD664;
  v19[3] = &unk_285DC1380;
  v18 = _Block_copy(v19);

  [v15 requestShare:v16 completion:v18];
  _Block_release(v18);
}

uint64_t sub_24A6C2204(char a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, void))
{
  if (qword_281512DE0 != -1)
  {
    swift_once();
  }

  v7 = sub_24A82CDC4();
  sub_24A6797D0(v7, qword_281518D70);

  v8 = sub_24A82CD94();
  v9 = sub_24A82D504();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v10 = 136315394;
    sub_24A82CAA4();
    v12 = a4;
    sub_24A6C84B4(&qword_27EF5CEF0, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v13 = sub_24A82DB84();
    v15 = sub_24A68761C(v13, v14, &v21);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2080;
    if (a1)
    {
      v16 = 0x73736563637573;
    }

    else
    {
      v16 = 0x64656C696166;
    }

    if (a1)
    {
      v17 = 0xE700000000000000;
    }

    else
    {
      v17 = 0xE600000000000000;
    }

    v18 = sub_24A68761C(v16, v17, &v21);
    a4 = v12;

    *(v10 + 14) = v18;
    _os_log_impl(&dword_24A675000, v8, v9, "FMIPBeaconSharingController: Share request for beacon action completed: %s, status: %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C21E1D0](v11, -1, -1);
    MEMORY[0x24C21E1D0](v10, -1, -1);
  }

  if (a1)
  {
    v19 = 2;
  }

  else
  {
    v19 = 4;
  }

  v22 = v19;
  return a4(&v22, a2);
}

void sub_24A6C2474(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_281512DE0 != -1)
  {
    swift_once();
  }

  v7 = sub_24A82CDC4();
  sub_24A6797D0(v7, qword_281518D70);

  v8 = sub_24A82CD94();
  v9 = sub_24A82D504();

  if (os_log_type_enabled(v8, v9))
  {
    v23 = a2;
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    aBlock[0] = v11;
    *v10 = 136315138;
    sub_24A82CAA4();
    sub_24A6C84B4(&qword_27EF5CEF0, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v12 = sub_24A82DB84();
    v14 = sub_24A68761C(v12, v13, aBlock);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_24A675000, v8, v9, "FMIPBeaconSharingController: Requesting share of beacon: %s", v10, 0xCu);
    sub_24A6876E8(v11);
    MEMORY[0x24C21E1D0](v11, -1, -1);
    v15 = v10;
    a2 = v23;
    MEMORY[0x24C21E1D0](v15, -1, -1);
  }

  v16 = objc_allocWithZone(MEMORY[0x277D49628]);
  v17 = sub_24A82CA64();
  v18 = [v16 initWithBeaconIdentifier_];

  v19 = *(v4 + 112);
  v20 = swift_allocObject();
  v20[2] = a2;
  v20[3] = a3;
  v20[4] = v4;
  v20[5] = v18;
  aBlock[4] = sub_24A6CA4EC;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A6C2AE0;
  aBlock[3] = &unk_285DC1470;
  v21 = _Block_copy(aBlock);

  v22 = v18;

  [v19 isBeaconDelegated:v22 completion:v21];
  _Block_release(v21);
}

void sub_24A6C274C(uint64_t a1, uint64_t a2, void (*a3)(void *, char *, void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_24A6BBA94(&unk_27EF5CCB8, &qword_24A82FDB0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = aBlock - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = aBlock - v15;
  v17 = sub_24A82C8B4();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = aBlock - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A696E10(a1, v16);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_24A67F378(v16, &unk_27EF5CCB8, &qword_24A82FDB0);
    v21 = *(a5 + 112);
    v22 = swift_allocObject();
    *(v22 + 16) = a3;
    *(v22 + 24) = a4;
    aBlock[4] = sub_24A6CA4F8;
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A6C2AE0;
    aBlock[3] = &unk_285DC14C0;
    v23 = _Block_copy(aBlock);

    [v21 delegatedShare:a6 completion:v23];
    _Block_release(v23);
  }

  else
  {
    (*(v18 + 32))(v20, v16, v17);
    LOBYTE(aBlock[0]) = 2;
    (*(v18 + 16))(v14, v20, v17);
    (*(v18 + 56))(v14, 0, 1, v17);
    a3(aBlock, v14, 0);
    sub_24A67F378(v14, &unk_27EF5CCB8, &qword_24A82FDB0);
    (*(v18 + 8))(v20, v17);
  }
}

uint64_t sub_24A6C2A40(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, uint64_t, uint64_t))
{
  v6 = sub_24A82C8B4();
  if ((*(*(v6 - 8) + 48))(a1, 1, v6) == 1)
  {
    v7 = 4;
  }

  else
  {
    v7 = 2;
  }

  v9 = v7;
  return a3(&v9, a1, a2);
}

uint64_t sub_24A6C2AE0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_24A6BBA94(&unk_27EF5CCB8, &qword_24A82FDB0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - v7;
  v9 = *(a1 + 32);
  if (a2)
  {
    sub_24A82C884();
    v10 = sub_24A82C8B4();
    (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  }

  else
  {
    v11 = sub_24A82C8B4();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  }

  v12 = a3;
  v9(v8, a3);

  return sub_24A67F378(v8, &unk_27EF5CCB8, &qword_24A82FDB0);
}

void sub_24A6C2C34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_281512DE0 != -1)
  {
    swift_once();
  }

  v7 = sub_24A82CDC4();
  sub_24A6797D0(v7, qword_281518D70);

  v8 = sub_24A82CD94();
  v9 = sub_24A82D504();

  if (os_log_type_enabled(v8, v9))
  {
    v22 = a2;
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    aBlock[0] = v11;
    *v10 = 136315138;
    sub_24A82CAA4();
    sub_24A6C84B4(&qword_27EF5CEF0, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v12 = sub_24A82DB84();
    v14 = sub_24A68761C(v12, v13, aBlock);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_24A675000, v8, v9, "FMIPBeaconSharingController: Stop delegated share of beacon: %s", v10, 0xCu);
    sub_24A6876E8(v11);
    MEMORY[0x24C21E1D0](v11, -1, -1);
    v15 = v10;
    a2 = v22;
    MEMORY[0x24C21E1D0](v15, -1, -1);
  }

  v16 = objc_allocWithZone(MEMORY[0x277D49628]);
  v17 = sub_24A82CA64();
  v18 = [v16 initWithBeaconIdentifier_];

  v19 = *(v4 + 112);
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  *(v20 + 24) = a3;
  aBlock[4] = sub_24A6CA4A4;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A7FD664;
  aBlock[3] = &unk_285DC1420;
  v21 = _Block_copy(aBlock);

  [v19 stopTemporaryItemLocationShare:v18 completion:v21];
  _Block_release(v21);
}

uint64_t sub_24A6C2EF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_24A6BBA94(&qword_27EF5CF08, &qword_24A830D80);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v25 - v9;
  if (qword_281512DE0 != -1)
  {
    swift_once();
  }

  v11 = sub_24A82CDC4();
  sub_24A6797D0(v11, qword_281518D70);
  swift_retain_n();
  v12 = sub_24A82CD94();
  v13 = sub_24A82D504();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v26 = v15;
    *v14 = 136315394;
    sub_24A82CAA4();
    v25 = v10;
    v16 = a3;
    v17 = a2;
    sub_24A6C84B4(&qword_27EF5CEF0, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v18 = sub_24A82DB84();
    v20 = sub_24A68761C(v18, v19, &v26);

    *(v14 + 4) = v20;
    a2 = v17;
    a3 = v16;
    v4 = v3;
    v10 = v25;
    *(v14 + 12) = 1024;
    v21 = *(a1 + OBJC_IVAR____TtC8FMIPCore21FMIPStopSharingAction_force);

    *(v14 + 14) = v21;

    _os_log_impl(&dword_24A675000, v12, v13, "FMIPBeaconSharingController: Stopping sharing of beacon: %s, forced? %{BOOL}d", v14, 0x12u);
    sub_24A6876E8(v15);
    MEMORY[0x24C21E1D0](v15, -1, -1);
    MEMORY[0x24C21E1D0](v14, -1, -1);
  }

  else
  {
  }

  v22 = sub_24A82D354();
  (*(*(v22 - 8) + 56))(v10, 1, 1, v22);
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = v4;
  v23[5] = a1;
  v23[6] = a2;
  v23[7] = a3;

  sub_24A7382F4(0, 0, v10, &unk_24A830E18, v23);
}

uint64_t sub_24A6C3210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[53] = a6;
  v7[54] = a7;
  v7[51] = a4;
  v7[52] = a5;
  sub_24A6BBA94(&qword_27EF5CF08, &qword_24A830D80);
  v7[55] = swift_task_alloc();
  v7[56] = *(type metadata accessor for FMIPBeaconShareStateOverride(0) - 8);
  v7[57] = swift_task_alloc();
  v7[58] = swift_task_alloc();
  v9 = type metadata accessor for FMIPBeaconShare(0);
  v7[59] = v9;
  v7[60] = *(v9 - 8);
  v7[61] = swift_task_alloc();
  v7[62] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24A6C3380, a4, 0);
}

uint64_t sub_24A6C3380()
{
  *(v0 + 504) = *(*(v0 + 408) + 144);

  return MEMORY[0x2822009F8](sub_24A6C33F4, 0, 0);
}

uint64_t sub_24A6C33F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = *(v3 + 504);
  v6 = *(v5 + 32);
  *(v3 + 635) = v6;
  v7 = 1 << v6;
  v8 = *(v5 + 56);
  v9 = v7 < 64;
  v10 = -1 << v7;
  if (v9)
  {
    v11 = ~v10;
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & v8;
  *(v3 + 512) = OBJC_IVAR____TtC8FMIPCore21FMIPStopSharingAction_beaconIdentifier;
  *(v3 + 520) = MEMORY[0x277D84F90];
  if ((v11 & v8) != 0)
  {
    while (1)
    {
      a1 = *(v3 + 504);
LABEL_10:
      *(v3 + 536) = v4;
      *(v3 + 528) = v12;
      v14 = *(v3 + 488);
      v15 = *(v3 + 496);
      sub_24A6CA090(*(a1 + 48) + *(*(v3 + 480) + 72) * (__clz(__rbit64(v12)) | (v4 << 6)), v15, type metadata accessor for FMIPBeaconShare);
      sub_24A6CA2B0(v15, v14, type metadata accessor for FMIPBeaconShare);
      if (sub_24A82CA74())
      {
        break;
      }

      v12 &= v12 - 1;
      a1 = sub_24A6CA0F8(*(v3 + 488), type metadata accessor for FMIPBeaconShare);
      if (!v12)
      {
        goto LABEL_6;
      }
    }

    a2 = *(v3 + 408);
    *(v3 + 400) = 0x8000000000000038;
    v17 = sub_24A6C35F4;
  }

  else
  {
    while (1)
    {
LABEL_6:
      v13 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
        return MEMORY[0x2822009F8](a1, a2, a3);
      }

      a1 = *(v3 + 504);
      if (v13 >= (((1 << *(v3 + 635)) + 63) >> 6))
      {
        break;
      }

      v12 = *(a1 + 8 * v13 + 56);
      ++v4;
      if (v12)
      {
        v4 = v13;
        goto LABEL_10;
      }
    }

    v16 = *(v3 + 416);

    a2 = *(v3 + 408);
    if (*(v16 + OBJC_IVAR____TtC8FMIPCore21FMIPStopSharingAction_force))
    {
      v17 = sub_24A6C3920;
    }

    else
    {
      v17 = sub_24A6C409C;
    }
  }

  a1 = v17;
  a3 = 0;

  return MEMORY[0x2822009F8](a1, a2, a3);
}

uint64_t sub_24A6C35F4()
{
  sub_24A6BEF44(*(v0 + 488), (v0 + 400), *(v0 + 464));

  return MEMORY[0x2822009F8](sub_24A6C3668, 0, 0);
}

uint64_t sub_24A6C3668()
{
  sub_24A6CA090(*(v0 + 464), *(v0 + 456), type metadata accessor for FMIPBeaconShareStateOverride);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *(v0 + 520);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_21:
    v2 = sub_24A77FF40(0, v2[2] + 1, 1, v2);
  }

  v4 = v2[2];
  v3 = v2[3];
  if (v4 >= v3 >> 1)
  {
    v2 = sub_24A77FF40((v3 > 1), v4 + 1, 1, v2);
  }

  v5 = *(v0 + 488);
  v6 = *(v0 + 456);
  v7 = *(v0 + 448);
  sub_24A6CA0F8(*(v0 + 464), type metadata accessor for FMIPBeaconShareStateOverride);
  sub_24A6CA0F8(v5, type metadata accessor for FMIPBeaconShare);
  v2[2] = v4 + 1;
  sub_24A6CA2B0(v6, v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v4, type metadata accessor for FMIPBeaconShareStateOverride);
  v8 = *(v0 + 536);
  v9 = (*(v0 + 528) - 1) & *(v0 + 528);
  *(v0 + 520) = v2;
  if (v9)
  {
    while (1)
    {
      v10 = *(v0 + 504);
LABEL_10:
      *(v0 + 536) = v8;
      *(v0 + 528) = v9;
      v12 = *(v0 + 488);
      v2 = *(v0 + 496);
      sub_24A6CA090(*(v10 + 48) + *(*(v0 + 480) + 72) * (__clz(__rbit64(v9)) | (v8 << 6)), v2, type metadata accessor for FMIPBeaconShare);
      sub_24A6CA2B0(v2, v12, type metadata accessor for FMIPBeaconShare);
      if (sub_24A82CA74())
      {
        break;
      }

      v9 &= v9 - 1;
      sub_24A6CA0F8(*(v0 + 488), type metadata accessor for FMIPBeaconShare);
      if (!v9)
      {
        goto LABEL_6;
      }
    }

    v14 = *(v0 + 408);
    *(v0 + 400) = 0x8000000000000038;
    v15 = sub_24A6C35F4;
  }

  else
  {
    while (1)
    {
LABEL_6:
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        goto LABEL_21;
      }

      v10 = *(v0 + 504);
      if (v11 >= (((1 << *(v0 + 635)) + 63) >> 6))
      {
        break;
      }

      v9 = *(v10 + 8 * v11 + 56);
      ++v8;
      if (v9)
      {
        v8 = v11;
        goto LABEL_10;
      }
    }

    v13 = *(v0 + 416);

    v14 = *(v0 + 408);
    if (*(v13 + OBJC_IVAR____TtC8FMIPCore21FMIPStopSharingAction_force))
    {
      v15 = sub_24A6C3920;
    }

    else
    {
      v15 = sub_24A6C409C;
    }
  }

  return MEMORY[0x2822009F8](v15, v14, 0);
}

uint64_t sub_24A6C3948(uint64_t a1)
{
  v2 = v1[68];
  v3 = sub_24A82CA64();
  v1[69] = v3;
  v1[18] = v1;
  v1[23] = v1 + 634;
  v1[19] = sub_24A6C3A88;
  v4 = swift_continuation_init();
  v1[49] = sub_24A6BBA94(&qword_27EF5CF38, &unk_24A830DF0);
  v1[42] = MEMORY[0x277D85DD0];
  v1[43] = 1107296256;
  v1[44] = sub_24A6BDA40;
  v1[45] = &unk_285DC1330;
  v1[46] = v4;
  [v2 forceStopSharing:v3 completion:v1 + 42];

  return MEMORY[0x282200938](v1 + 18);
}

uint64_t sub_24A6C3A88()
{
  v1 = *(*v0 + 176);
  *(*v0 + 560) = v1;
  if (v1)
  {
    v2 = sub_24A6C4D2C;
  }

  else
  {
    v2 = sub_24A6C3B98;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24A6C3B98()
{
  v27 = v0;

  if (qword_281512DE0 != -1)
  {
    swift_once();
  }

  v1 = sub_24A82CDC4();
  sub_24A6797D0(v1, qword_281518D70);

  v2 = sub_24A82CD94();
  v3 = sub_24A82D504();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v26 = v5;
    *v4 = 136315138;
    sub_24A82CAA4();
    sub_24A6C84B4(&qword_27EF5CEF0, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v6 = sub_24A82DB84();
    v8 = sub_24A68761C(v6, v7, &v26);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_24A675000, v2, v3, "Force Stopped sharing for beacon: %s succeeded", v4, 0xCu);
    sub_24A6876E8(v5);
    MEMORY[0x24C21E1D0](v5, -1, -1);
    MEMORY[0x24C21E1D0](v4, -1, -1);
  }

  *(v0 + 600) = *(v0 + 544);
  *(v0 + 592) = 0;
  if (*(*(v0 + 416) + OBJC_IVAR____TtC8FMIPCore21FMIPStopSharingAction_isDelegated) == 1)
  {
    if (qword_281512DE0 != -1)
    {
      swift_once();
    }

    *(v0 + 608) = sub_24A6797D0(v1, qword_281518D70);

    v9 = sub_24A82CD94();
    v10 = sub_24A82D504();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v26 = v12;
      *v11 = 136315138;
      sub_24A82CAA4();
      sub_24A6C84B4(&qword_27EF5CEF0, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v13 = sub_24A82DB84();
      v15 = sub_24A68761C(v13, v14, &v26);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_24A675000, v9, v10, "FMIPBeaconSharingController: Stop delegated share of beacon: %s", v11, 0xCu);
      sub_24A6876E8(v12);
      MEMORY[0x24C21E1D0](v12, -1, -1);
      MEMORY[0x24C21E1D0](v11, -1, -1);
    }

    v16 = objc_allocWithZone(MEMORY[0x277D49628]);
    v17 = sub_24A82CA64();
    *(v0 + 616) = [v16 initWithBeaconIdentifier_];

    return MEMORY[0x2822009F8](sub_24A6C4818, 0, 0);
  }

  else
  {
    v18 = *(v0 + 520);
    v19 = *(v0 + 440);
    v20 = *(v0 + 408);
    v21 = sub_24A82D354();
    (*(*(v21 - 8) + 56))(v19, 1, 1, v21);
    v22 = swift_allocObject();
    v22[2] = 0;
    v22[3] = 0;
    v22[4] = v18;
    v22[5] = v20;

    sub_24A7382F4(0, 0, v19, &unk_24A830E28, v22);

    v23 = *(v0 + 424);
    LOBYTE(v26) = 2;
    v23(&v26, 0);

    v24 = *(v0 + 8);

    return v24();
  }
}

uint64_t sub_24A6C40C4(uint64_t a1)
{
  v2 = v1[71];
  v3 = sub_24A82CA64();
  v1[72] = v3;
  v1[2] = v1;
  v1[7] = v1 + 79;
  v1[3] = sub_24A6C4204;
  v4 = swift_continuation_init();
  v1[33] = sub_24A6BBA94(&qword_27EF5CF38, &unk_24A830DF0);
  v1[26] = MEMORY[0x277D85DD0];
  v1[27] = 1107296256;
  v1[28] = sub_24A6BDA40;
  v1[29] = &unk_285DC12B8;
  v1[30] = v4;
  [v2 stopSharing:v3 completion:v1 + 26];

  return MEMORY[0x282200938](v1 + 2);
}

uint64_t sub_24A6C4204()
{
  v1 = *(*v0 + 48);
  *(*v0 + 584) = v1;
  if (v1)
  {
    v2 = sub_24A6C52EC;
  }

  else
  {
    v2 = sub_24A6C4314;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24A6C4314()
{
  v27 = v0;

  if (qword_281512DE0 != -1)
  {
    swift_once();
  }

  v1 = sub_24A82CDC4();
  sub_24A6797D0(v1, qword_281518D70);

  v2 = sub_24A82CD94();
  v3 = sub_24A82D504();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v26 = v5;
    *v4 = 136315138;
    sub_24A82CAA4();
    sub_24A6C84B4(&qword_27EF5CEF0, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v6 = sub_24A82DB84();
    v8 = sub_24A68761C(v6, v7, &v26);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_24A675000, v2, v3, "Stopped sharing for beacon: %s succeeded", v4, 0xCu);
    sub_24A6876E8(v5);
    MEMORY[0x24C21E1D0](v5, -1, -1);
    MEMORY[0x24C21E1D0](v4, -1, -1);
  }

  *(v0 + 600) = *(v0 + 568);
  *(v0 + 592) = 0;
  if (*(*(v0 + 416) + OBJC_IVAR____TtC8FMIPCore21FMIPStopSharingAction_isDelegated) == 1)
  {
    if (qword_281512DE0 != -1)
    {
      swift_once();
    }

    *(v0 + 608) = sub_24A6797D0(v1, qword_281518D70);

    v9 = sub_24A82CD94();
    v10 = sub_24A82D504();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v26 = v12;
      *v11 = 136315138;
      sub_24A82CAA4();
      sub_24A6C84B4(&qword_27EF5CEF0, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v13 = sub_24A82DB84();
      v15 = sub_24A68761C(v13, v14, &v26);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_24A675000, v9, v10, "FMIPBeaconSharingController: Stop delegated share of beacon: %s", v11, 0xCu);
      sub_24A6876E8(v12);
      MEMORY[0x24C21E1D0](v12, -1, -1);
      MEMORY[0x24C21E1D0](v11, -1, -1);
    }

    v16 = objc_allocWithZone(MEMORY[0x277D49628]);
    v17 = sub_24A82CA64();
    *(v0 + 616) = [v16 initWithBeaconIdentifier_];

    return MEMORY[0x2822009F8](sub_24A6C4818, 0, 0);
  }

  else
  {
    v18 = *(v0 + 520);
    v19 = *(v0 + 440);
    v20 = *(v0 + 408);
    v21 = sub_24A82D354();
    (*(*(v21 - 8) + 56))(v19, 1, 1, v21);
    v22 = swift_allocObject();
    v22[2] = 0;
    v22[3] = 0;
    v22[4] = v18;
    v22[5] = v20;

    sub_24A7382F4(0, 0, v19, &unk_24A830E28, v22);

    v23 = *(v0 + 424);
    LOBYTE(v26) = 2;
    v23(&v26, 0);

    v24 = *(v0 + 8);

    return v24();
  }
}

uint64_t sub_24A6C4818()
{
  v1 = v0[77];
  v2 = v0[75];
  v0[10] = v0;
  v0[15] = v0 + 633;
  v0[11] = sub_24A6C4944;
  v3 = swift_continuation_init();
  v0[41] = sub_24A6BBA94(&qword_27EF5CF38, &unk_24A830DF0);
  v0[34] = MEMORY[0x277D85DD0];
  v0[35] = 1107296256;
  v0[36] = sub_24A6BDA40;
  v0[37] = &unk_285DC1308;
  v0[38] = v3;
  [v2 stopTemporaryItemLocationShare:v1 completion:v0 + 34];

  return MEMORY[0x282200938](v0 + 10);
}

uint64_t sub_24A6C4944()
{
  v1 = *(*v0 + 112);
  *(*v0 + 624) = v1;
  if (v1)
  {
    v2 = sub_24A6C58AC;
  }

  else
  {
    v2 = sub_24A6C4A54;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24A6C4A54()
{
  v23 = v0;

  v1 = sub_24A82CD94();
  v2 = sub_24A82D504();

  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[77];
  if (v3)
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v22 = v6;
    *v5 = 136315138;
    sub_24A82CAA4();
    sub_24A6C84B4(&qword_27EF5CEF0, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v7 = sub_24A82DB84();
    v9 = sub_24A68761C(v7, v8, &v22);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_24A675000, v1, v2, "Stopped delegated share for beacon: %s succeeded", v5, 0xCu);
    sub_24A6876E8(v6);
    MEMORY[0x24C21E1D0](v6, -1, -1);
    MEMORY[0x24C21E1D0](v5, -1, -1);
  }

  v10 = v0[74];
  v11 = v0[65];
  v12 = v0[55];
  v13 = v0[51];
  v14 = sub_24A82D354();
  (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v11;
  v15[5] = v13;

  sub_24A7382F4(0, 0, v12, &unk_24A830E28, v15);

  v16 = v0[53];
  if (v10)
  {
    v21 = 4;
    v17 = v10;
    v16(&v21, v10);
  }

  else
  {
    v20 = 2;
    v16(&v20, 0);
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_24A6C4D2C(uint64_t a1)
{
  v39 = v1;
  v2 = v1[69];
  swift_willThrow();

  if (qword_281512DE0 != -1)
  {
    swift_once();
  }

  v3 = v1[70];
  v4 = sub_24A82CDC4();
  sub_24A6797D0(v4, qword_281518D70);

  v5 = v3;
  v6 = sub_24A82CD94();
  v7 = sub_24A82D504();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v1[70];
    v9 = swift_slowAlloc();
    v37 = v4;
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v38[0] = v11;
    *v9 = 136315394;
    sub_24A82CAA4();
    sub_24A6C84B4(&qword_27EF5CEF0, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v12 = sub_24A82DB84();
    v14 = sub_24A68761C(v12, v13, v38);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2114;
    v15 = v8;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v16;
    *v10 = v16;
    _os_log_impl(&dword_24A675000, v6, v7, "forceStopSharing for %s failed due to %{public}@", v9, 0x16u);
    sub_24A67F378(v10, &qword_27EF5D010, &qword_24A830E30);
    v17 = v10;
    v4 = v37;
    MEMORY[0x24C21E1D0](v17, -1, -1);
    sub_24A6876E8(v11);
    MEMORY[0x24C21E1D0](v11, -1, -1);
    MEMORY[0x24C21E1D0](v9, -1, -1);
  }

  v18 = v1[70];
  v1[75] = v1[68];
  v1[74] = v18;
  if (*(v1[52] + OBJC_IVAR____TtC8FMIPCore21FMIPStopSharingAction_isDelegated))
  {
    if (qword_281512DE0 != -1)
    {
      swift_once();
    }

    v1[76] = sub_24A6797D0(v4, qword_281518D70);

    v19 = sub_24A82CD94();
    v20 = sub_24A82D504();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v38[0] = v22;
      *v21 = 136315138;
      sub_24A82CAA4();
      sub_24A6C84B4(&qword_27EF5CEF0, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v23 = sub_24A82DB84();
      v25 = sub_24A68761C(v23, v24, v38);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_24A675000, v19, v20, "FMIPBeaconSharingController: Stop delegated share of beacon: %s", v21, 0xCu);
      sub_24A6876E8(v22);
      MEMORY[0x24C21E1D0](v22, -1, -1);
      MEMORY[0x24C21E1D0](v21, -1, -1);
    }

    v26 = objc_allocWithZone(MEMORY[0x277D49628]);
    v27 = sub_24A82CA64();
    v1[77] = [v26 initWithBeaconIdentifier_];

    return MEMORY[0x2822009F8](sub_24A6C4818, 0, 0);
  }

  else
  {
    v28 = v1[65];
    v29 = v1[55];
    v30 = v1[51];
    v31 = sub_24A82D354();
    (*(*(v31 - 8) + 56))(v29, 1, 1, v31);
    v32 = swift_allocObject();
    v32[2] = 0;
    v32[3] = 0;
    v32[4] = v28;
    v32[5] = v30;

    sub_24A7382F4(0, 0, v29, &unk_24A830E28, v32);

    v33 = v1[53];
    if (v18)
    {
      LOBYTE(v38[0]) = 4;
      v34 = v18;
      v33(v38, v18);
    }

    else
    {
      LOBYTE(v38[0]) = 2;
      v33(v38, 0);
    }

    v35 = v1[1];

    return v35();
  }
}

uint64_t sub_24A6C52EC(uint64_t a1)
{
  v39 = v1;
  v2 = v1[72];
  swift_willThrow();

  if (qword_281512DE0 != -1)
  {
    swift_once();
  }

  v3 = v1[73];
  v4 = sub_24A82CDC4();
  sub_24A6797D0(v4, qword_281518D70);

  v5 = v3;
  v6 = sub_24A82CD94();
  v7 = sub_24A82D504();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v1[73];
    v9 = swift_slowAlloc();
    v37 = v4;
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v38[0] = v11;
    *v9 = 136315394;
    sub_24A82CAA4();
    sub_24A6C84B4(&qword_27EF5CEF0, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v12 = sub_24A82DB84();
    v14 = sub_24A68761C(v12, v13, v38);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2114;
    v15 = v8;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v16;
    *v10 = v16;
    _os_log_impl(&dword_24A675000, v6, v7, "stopSharing for %s failed due to %{public}@", v9, 0x16u);
    sub_24A67F378(v10, &qword_27EF5D010, &qword_24A830E30);
    v17 = v10;
    v4 = v37;
    MEMORY[0x24C21E1D0](v17, -1, -1);
    sub_24A6876E8(v11);
    MEMORY[0x24C21E1D0](v11, -1, -1);
    MEMORY[0x24C21E1D0](v9, -1, -1);
  }

  v18 = v1[73];
  v1[75] = v1[71];
  v1[74] = v18;
  if (*(v1[52] + OBJC_IVAR____TtC8FMIPCore21FMIPStopSharingAction_isDelegated))
  {
    if (qword_281512DE0 != -1)
    {
      swift_once();
    }

    v1[76] = sub_24A6797D0(v4, qword_281518D70);

    v19 = sub_24A82CD94();
    v20 = sub_24A82D504();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v38[0] = v22;
      *v21 = 136315138;
      sub_24A82CAA4();
      sub_24A6C84B4(&qword_27EF5CEF0, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v23 = sub_24A82DB84();
      v25 = sub_24A68761C(v23, v24, v38);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_24A675000, v19, v20, "FMIPBeaconSharingController: Stop delegated share of beacon: %s", v21, 0xCu);
      sub_24A6876E8(v22);
      MEMORY[0x24C21E1D0](v22, -1, -1);
      MEMORY[0x24C21E1D0](v21, -1, -1);
    }

    v26 = objc_allocWithZone(MEMORY[0x277D49628]);
    v27 = sub_24A82CA64();
    v1[77] = [v26 initWithBeaconIdentifier_];

    return MEMORY[0x2822009F8](sub_24A6C4818, 0, 0);
  }

  else
  {
    v28 = v1[65];
    v29 = v1[55];
    v30 = v1[51];
    v31 = sub_24A82D354();
    (*(*(v31 - 8) + 56))(v29, 1, 1, v31);
    v32 = swift_allocObject();
    v32[2] = 0;
    v32[3] = 0;
    v32[4] = v28;
    v32[5] = v30;

    sub_24A7382F4(0, 0, v29, &unk_24A830E28, v32);

    v33 = v1[53];
    if (v18)
    {
      LOBYTE(v38[0]) = 4;
      v34 = v18;
      v33(v38, v18);
    }

    else
    {
      LOBYTE(v38[0]) = 2;
      v33(v38, 0);
    }

    v35 = v1[1];

    return v35();
  }
}

uint64_t sub_24A6C58AC(uint64_t a1)
{
  v30 = v1;
  v2 = v1[78];
  v3 = v1[77];
  swift_willThrow();

  v4 = v2;
  v5 = sub_24A82CD94();
  v6 = sub_24A82D504();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v1[78];
    v28 = v1[74];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v29[0] = v10;
    *v8 = 136315394;
    sub_24A82CAA4();
    sub_24A6C84B4(&qword_27EF5CEF0, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v11 = sub_24A82DB84();
    v13 = sub_24A68761C(v11, v12, v29);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2114;
    v14 = v7;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v15;
    *v9 = v15;
    _os_log_impl(&dword_24A675000, v5, v6, "stopTemporaryItemLocationShare for %s failed due to %{public}@", v8, 0x16u);
    sub_24A67F378(v9, &qword_27EF5D010, &qword_24A830E30);
    MEMORY[0x24C21E1D0](v9, -1, -1);
    sub_24A6876E8(v10);
    MEMORY[0x24C21E1D0](v10, -1, -1);
    MEMORY[0x24C21E1D0](v8, -1, -1);
    v16 = v28;
  }

  else
  {
    v16 = v1[74];
  }

  v17 = v1[78];
  v18 = v1[65];
  v19 = v1[55];
  v20 = v1[51];
  v21 = sub_24A82D354();
  (*(*(v21 - 8) + 56))(v19, 1, 1, v21);
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = v18;
  v22[5] = v20;

  sub_24A7382F4(0, 0, v19, &unk_24A830E28, v22);

  if (v17)
  {
    v23 = v1[53];
    LOBYTE(v29[0]) = 4;
    v24 = v17;
    v23(v29, v17);
  }

  else
  {
    v25 = v1[53];
    LOBYTE(v29[0]) = 2;
    v25(v29, 0);
  }

  v26 = v1[1];

  return v26();
}

uint64_t sub_24A6C5C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_24A6C5C38, 0, 0);
}

uint64_t sub_24A6C5C38()
{
  v1 = *(*(v0 + 16) + 16);
  *(v0 + 32) = v1;
  if (v1)
  {
    v2 = *(v0 + 24);
    v3 = *(type metadata accessor for FMIPBeaconShareStateOverride(0) - 8);
    *(v0 + 56) = *(v3 + 80);
    *(v0 + 40) = *(v3 + 72);
    *(v0 + 48) = 0;

    return MEMORY[0x2822009F8](sub_24A6C5D30, v2, 0);
  }

  else
  {
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_24A6C5D30()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);
  v3 = v1 + 1;
  sub_24A6BF2EC(*(v0 + 16) + ((*(v0 + 56) + 32) & ~*(v0 + 56)) + *(v0 + 40) * v1);
  if (v3 == v2)
  {
    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    ++*(v0 + 48);
    v6 = *(v0 + 24);

    return MEMORY[0x2822009F8](sub_24A6C5D30, v6, 0);
  }
}

uint64_t sub_24A6C5E08()
{
  swift_unknownObjectRelease();

  sub_24A6BAF88(v0 + 152);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

_DWORD *sub_24A6C5E6C@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_24A6C5E88(uint64_t a1, id *a2)
{
  result = sub_24A82CFA4();
  *a2 = 0;
  return result;
}

uint64_t sub_24A6C5F00(uint64_t a1, id *a2)
{
  v3 = sub_24A82CFB4();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_24A6C5F80@<X0>(uint64_t *a2@<X8>)
{
  sub_24A82CFC4();
  v3 = sub_24A82CF94();

  *a2 = v3;
  return result;
}

uint64_t sub_24A6C5FC4(uint64_t a1)
{
  v2 = sub_24A6C84B4(&qword_27EF5CE28, 255, type metadata accessor for SPPairingSessionError, &unk_24A8308AC);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_24A6C6034(uint64_t a1)
{
  v2 = sub_24A6C84B4(&qword_27EF5CE28, 255, type metadata accessor for SPPairingSessionError, &unk_24A8308AC);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_24A6C60A4(uint64_t a1)
{
  v2 = sub_24A6C84B4(&qword_27EF5CE60, 255, type metadata accessor for SPPairingSessionError, &unk_24A8308F0);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_24A6C6114(uint64_t a1)
{
  v2 = sub_24A6C84B4(&qword_27EF5CEA8, 255, type metadata accessor for SPUnknownDiscoverySessionError, &unk_24A830780);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_24A6C6184(uint64_t a1)
{
  v2 = sub_24A6C84B4(&qword_27EF5CEA8, 255, type metadata accessor for SPUnknownDiscoverySessionError, &unk_24A830780);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_24A6C61F4(uint64_t a1)
{
  v2 = sub_24A6C84B4(&qword_27EF5CED8, 255, type metadata accessor for SPUnknownDiscoverySessionError, &unk_24A830C00);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_24A6C6264(uint64_t a1)
{
  v2 = sub_24A6C84B4(&qword_27EF5CE70, 255, type metadata accessor for SPAccessoryDiscoverySessionError, &unk_24A830654);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_24A6C62D4(uint64_t a1)
{
  v2 = sub_24A6C84B4(&qword_27EF5CE70, 255, type metadata accessor for SPAccessoryDiscoverySessionError, &unk_24A830654);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_24A6C6344(uint64_t a1)
{
  v2 = sub_24A6C84B4(&qword_27EF5CEA0, 255, type metadata accessor for SPAccessoryDiscoverySessionError, &unk_24A830AF0);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_24A6C6480(uint64_t a1)
{
  v2 = sub_24A6C84B4(&unk_27EF5D150, 255, type metadata accessor for CommandError, &unk_24A83174C);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_24A6C64F0(uint64_t a1)
{
  v2 = sub_24A6C84B4(&unk_27EF5D150, 255, type metadata accessor for CommandError, &unk_24A83174C);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_24A6C6560(void *a1, uint64_t a2)
{
  v4 = sub_24A6C84B4(&unk_27EF5D150, 255, type metadata accessor for CommandError, &unk_24A83174C);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_24A6C65F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A6C84B4(&unk_27EF5D150, 255, type metadata accessor for CommandError, &unk_24A83174C);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_24A6C6730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_24A82DCC4();
  swift_getWitnessTable();
  sub_24A82CD74();
  return sub_24A82DD24();
}

uint64_t sub_24A6C67A4(uint64_t a1)
{
  v2 = sub_24A6C84B4(&qword_27EF5CEA0, 255, type metadata accessor for SPAccessoryDiscoverySessionError, &unk_24A830AF0);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_24A6C6814(uint64_t a1)
{
  v2 = sub_24A6C84B4(&qword_27EF5CEA0, 255, type metadata accessor for SPAccessoryDiscoverySessionError, &unk_24A830AF0);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_24A6C6884(void *a1, uint64_t a2)
{
  v4 = sub_24A6C84B4(&qword_27EF5CEA0, 255, type metadata accessor for SPAccessoryDiscoverySessionError, &unk_24A830AF0);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_24A6C6918(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A6C84B4(&qword_27EF5CEA0, 255, type metadata accessor for SPAccessoryDiscoverySessionError, &unk_24A830AF0);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_24A6C69A8(uint64_t a1)
{
  v2 = sub_24A6C84B4(&qword_27EF5CED8, 255, type metadata accessor for SPUnknownDiscoverySessionError, &unk_24A830C00);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_24A6C6A18(uint64_t a1)
{
  v2 = sub_24A6C84B4(&qword_27EF5CED8, 255, type metadata accessor for SPUnknownDiscoverySessionError, &unk_24A830C00);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_24A6C6A88(void *a1, uint64_t a2)
{
  v4 = sub_24A6C84B4(&qword_27EF5CED8, 255, type metadata accessor for SPUnknownDiscoverySessionError, &unk_24A830C00);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_24A6C6B1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A6C84B4(&qword_27EF5CED8, 255, type metadata accessor for SPUnknownDiscoverySessionError, &unk_24A830C00);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_24A6C6BAC(uint64_t a1)
{
  v2 = sub_24A6C84B4(&qword_27EF5CE60, 255, type metadata accessor for SPPairingSessionError, &unk_24A8308F0);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_24A6C6C1C(uint64_t a1)
{
  v2 = sub_24A6C84B4(&qword_27EF5CE60, 255, type metadata accessor for SPPairingSessionError, &unk_24A8308F0);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_24A6C6C8C(void *a1, uint64_t a2)
{
  v4 = sub_24A6C84B4(&qword_27EF5CE60, 255, type metadata accessor for SPPairingSessionError, &unk_24A8308F0);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_24A6C6D20(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A6C84B4(&qword_27EF5CE60, 255, type metadata accessor for SPPairingSessionError, &unk_24A8308F0);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_24A6C6DA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_24A82DCC4();
  sub_24A82CF64();
  return sub_24A82DD24();
}

uint64_t sub_24A6C6E00(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_24A82CD64();
}

uint64_t sub_24A6C6E6C(uint64_t a1)
{
  v2 = sub_24A6C84B4(&qword_27EF5D170, 255, type metadata accessor for SPBeaconType, &unk_24A83138C);
  v3 = sub_24A6C84B4(&qword_27EF5D178, 255, type metadata accessor for SPBeaconType, &unk_24A83132C);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_24A6C6F30(uint64_t a1)
{
  v2 = sub_24A6C84B4(&qword_27EF5D120, 255, type metadata accessor for CommandError, &unk_24A83165C);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_24A6C6FA0(uint64_t a1)
{
  v2 = sub_24A6C84B4(&qword_27EF5D120, 255, type metadata accessor for CommandError, &unk_24A83165C);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_24A6C7010(uint64_t a1)
{
  v2 = sub_24A6C84B4(&unk_27EF5D150, 255, type metadata accessor for CommandError, &unk_24A83174C);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_24A6C7080(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_24A6C84B4(&unk_27EF5D150, 255, type metadata accessor for CommandError, &unk_24A83174C);

  return sub_24A82C794();
}

uint64_t sub_24A6C7108(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_24A82CD64();
}

uint64_t sub_24A6C7174(uint64_t a1)
{
  v2 = sub_24A6C84B4(&qword_27EF5CEF8, 255, type metadata accessor for SPBeaconTaskName, &unk_24A830D10);
  v3 = sub_24A6C84B4(&qword_27EF5CF00, 255, type metadata accessor for SPBeaconTaskName, &unk_24A830458);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_24A6C7238(uint64_t a1)
{
  v2 = sub_24A6C84B4(&qword_281512B90, 255, type metadata accessor for FileAttributeKey, &unk_24A83185C);
  v3 = sub_24A6C84B4(&qword_27EF5D198, 255, type metadata accessor for FileAttributeKey, &unk_24A8310C0);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_24A6C72FC@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_24A82CF94();

  *a2 = v3;
  return result;
}

uint64_t sub_24A6C7344(uint64_t a1)
{
  v2 = sub_24A6C84B4(&qword_27EF5D180, 255, type metadata accessor for FileProtectionType, &unk_24A831234);
  v3 = sub_24A6C84B4(&unk_27EF5D188, 255, type metadata accessor for FileProtectionType, &unk_24A8311D4);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_24A6C7408(uint64_t a1)
{
  v2 = sub_24A6C84B4(&qword_27EF5D160, 255, type metadata accessor for SPBeaconLocationSource, &unk_24A8314E4);
  v3 = sub_24A6C84B4(&qword_27EF5D168, 255, type metadata accessor for SPBeaconLocationSource, &unk_24A831484);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_24A6C74CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_24A6C84B4(&qword_27EF5CEA0, 255, type metadata accessor for SPAccessoryDiscoverySessionError, &unk_24A830AF0);

  return sub_24A82C794();
}

uint64_t sub_24A6C7554(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_24A6C84B4(&qword_27EF5CED8, 255, type metadata accessor for SPUnknownDiscoverySessionError, &unk_24A830C00);

  return sub_24A82C794();
}

uint64_t sub_24A6C75DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_24A6C84B4(&qword_27EF5CE60, 255, type metadata accessor for SPPairingSessionError, &unk_24A8308F0);

  return sub_24A82C794();
}

uint64_t sub_24A6C7664()
{
  v0 = sub_24A82CFC4();
  v1 = MEMORY[0x24C21CA70](v0);

  return v1;
}

uint64_t sub_24A6C76A0(uint64_t a1)
{
  sub_24A82CFC4();
  sub_24A82D094();
}

uint64_t sub_24A6C76F4(uint64_t a1)
{
  sub_24A82CFC4();
  sub_24A82DCC4();
  sub_24A82D094();
  v1 = sub_24A82DD24();

  return v1;
}

uint64_t sub_24A6C7768(void *a1, uint64_t *a2)
{
  v2 = sub_24A82CFC4();
  v4 = v3;
  if (v2 == sub_24A82CFC4() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_24A82DC04();
  }

  return v7 & 1;
}

uint64_t sub_24A6C77F0(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v6 = type metadata accessor for FMIPBeaconShareStateOverride(0);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v34 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v34 - v14;
  v16 = *v2;
  result = sub_24A6C7B20(a1, a2, *v2);
  if (!v3)
  {
    v44 = 0;
    if (v18)
    {
      return *(v16 + 16);
    }

    v39 = v15;
    v40 = a1;
    v36 = v13;
    v37 = v10;
    v35 = v2;
    v43 = result;
    v19 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v21 = (v16 + 16);
      v20 = *(v16 + 16);
      if (v19 == v20)
      {
        return v43;
      }

      v38 = v7;
      while (v19 < v20)
      {
        v22 = v16;
        v41 = (*(v7 + 80) + 32) & ~*(v7 + 80);
        v23 = v16 + v41;
        v24 = *(v7 + 72);
        v42 = v24 * v19;
        v25 = v39;
        sub_24A6CA090(v23 + v24 * v19, v39, type metadata accessor for FMIPBeaconShareStateOverride);
        v26 = a2;
        v27 = v44;
        v28 = v40(v25);
        result = sub_24A6CA0F8(v25, type metadata accessor for FMIPBeaconShareStateOverride);
        v44 = v27;
        if (v27)
        {
          return result;
        }

        if (v28)
        {
          a2 = v26;
          v7 = v38;
          v16 = v22;
        }

        else
        {
          v29 = v43;
          if (v19 == v43)
          {
            a2 = v26;
            v7 = v38;
            v16 = v22;
          }

          else
          {
            if ((v43 & 0x8000000000000000) != 0)
            {
              goto LABEL_26;
            }

            v30 = *v21;
            if (v43 >= *v21)
            {
              goto LABEL_27;
            }

            v31 = v24 * v43;
            result = sub_24A6CA090(v23 + v24 * v43, v36, type metadata accessor for FMIPBeaconShareStateOverride);
            if (v19 >= v30)
            {
              goto LABEL_28;
            }

            v32 = v42;
            sub_24A6CA090(v23 + v42, v37, type metadata accessor for FMIPBeaconShareStateOverride);
            v16 = v22;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v16 = sub_24A766C48(v22);
            }

            a2 = v26;
            v33 = v16 + v41;
            result = sub_24A6CA02C(v37, v16 + v41 + v31);
            if (v19 >= *(v16 + 16))
            {
              goto LABEL_29;
            }

            result = sub_24A6CA02C(v36, v33 + v32);
            *v35 = v16;
            v7 = v38;
            v29 = v43;
          }

          v43 = v29 + 1;
        }

        ++v19;
        v21 = (v16 + 16);
        v20 = *(v16 + 16);
        if (v19 == v20)
        {
          return v43;
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

uint64_t sub_24A6C7B20(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(type metadata accessor for FMIPBeaconShareStateOverride(0) - 8);
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

void sub_24A6C7C0C(void *a1, char a2, void *a3)
{
  v39 = a1[2];
  if (!v39)
  {
    goto LABEL_21;
  }

  LOBYTE(v5) = a2;
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v9 = *a3;

  v10 = v8;
  v11 = sub_24A6A2D48(v7, v6);
  v13 = v9[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v17 = v12;
  if (v9[3] < v16)
  {
    sub_24A781098(v16, v5 & 1);
    v11 = sub_24A6A2D48(v7, v6);
    if ((v17 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v11 = sub_24A82DC44();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v17)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v21 = v11;
  sub_24A785FBC();
  v11 = v21;
  if (v17)
  {
LABEL_8:
    v19 = swift_allocError();
    swift_willThrow();
    v20 = v19;
    sub_24A6BBA94(&qword_27EF5CF40, &unk_24A836A70);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v22 = *a3;
  *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
  v23 = (v22[6] + 16 * v11);
  *v23 = v7;
  v23[1] = v6;
  *(v22[7] + 8 * v11) = v8;
  v24 = v22[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_24A82D854();
    MEMORY[0x24C21C9E0](0xD00000000000001BLL, 0x800000024A844730);
    sub_24A82D914();
    MEMORY[0x24C21C9E0](39, 0xE100000000000000);
    sub_24A82D934();
    __break(1u);
    return;
  }

  v22[2] = v25;
  if (v39 != 1)
  {
    v5 = (a1 + 9);
    v26 = 1;
    while (v26 < a1[2])
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v8 = *v5;
      v27 = *a3;

      v28 = v8;
      v29 = sub_24A6A2D48(v7, v6);
      v31 = v27[2];
      v32 = (v30 & 1) == 0;
      v15 = __OFADD__(v31, v32);
      v33 = v31 + v32;
      if (v15)
      {
        goto LABEL_23;
      }

      v17 = v30;
      if (v27[3] < v33)
      {
        sub_24A781098(v33, 1);
        v29 = sub_24A6A2D48(v7, v6);
        if ((v17 & 1) != (v34 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v17)
      {
        goto LABEL_8;
      }

      v35 = *a3;
      *(*a3 + 8 * (v29 >> 6) + 64) |= 1 << v29;
      v36 = (v35[6] + 16 * v29);
      *v36 = v7;
      v36[1] = v6;
      *(v35[7] + 8 * v29) = v8;
      v37 = v35[2];
      v15 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v15)
      {
        goto LABEL_24;
      }

      ++v26;
      v35[2] = v38;
      v5 += 3;
      if (v39 == v26)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

uint64_t sub_24A6C7FA0(uint64_t a1, uint64_t a2)
{
  if (sub_24A82CA74() & 1) != 0 && (v4 = type metadata accessor for FMIPBeaconShareStateOverride(0), (sub_24A82CA74()))
  {
    v5 = *(v4 + 24);
    v6 = *(a1 + v5);
    v10 = *(a2 + v5);
    v7 = v10;
    v11 = v6;
    sub_24A6BB350(v6);
    sub_24A6BB350(v10);
    v8 = static FMIPBeaconShareState.== infix(_:_:)(&v11, &v10);
    sub_24A6BB5A4(v7);
    sub_24A6BB5A4(v6);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t _s8FMIPCore15FMIPBeaconShareV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A82C8B4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24A6BBA94(&unk_27EF5CCB8, &qword_24A82FDB0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v41 - v9;
  v11 = sub_24A6BBA94(&qword_27EF5D040, &unk_24A830E50);
  MEMORY[0x28223BE20](v11);
  v13 = &v41 - v12;
  if ((sub_24A82CA74() & 1) == 0)
  {
    goto LABEL_20;
  }

  v14 = type metadata accessor for FMIPBeaconShare(0);
  if ((sub_24A82CA74() & 1) == 0)
  {
    goto LABEL_20;
  }

  v15 = v14[6];
  v16 = *(a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  v19 = v16 == *v18 && v17 == v18[1];
  if (!v19 && (sub_24A82DC04() & 1) == 0)
  {
    goto LABEL_20;
  }

  v20 = v14[7];
  v21 = *(a1 + v20);
  v22 = *(a1 + v20 + 8);
  v23 = (a2 + v20);
  if ((v21 != *v23 || v22 != v23[1]) && (sub_24A82DC04() & 1) == 0)
  {
    goto LABEL_20;
  }

  v41 = v5;
  v42 = v14;
  v24 = v14[8];
  v25 = *(a1 + v24);
  v43 = *(a2 + v24);
  v26 = v43;
  v44 = v25;
  sub_24A6BB350(v25);
  sub_24A6BB350(v26);
  v27 = static FMIPBeaconShareState.== infix(_:_:)(&v44, &v43);
  sub_24A6BB5A4(v26);
  sub_24A6BB5A4(v25);
  if ((v27 & 1) == 0)
  {
    goto LABEL_20;
  }

  v28 = v42;
  if ((sub_24A82C9E4() & 1) == 0 || (sub_24A82C9E4() & 1) == 0)
  {
    goto LABEL_20;
  }

  v29 = v28[11];
  v30 = *(v11 + 48);
  sub_24A696E10(a1 + v29, v13);
  sub_24A696E10(a2 + v29, &v13[v30]);
  v31 = v41;
  v32 = *(v41 + 48);
  if (v32(v13, 1, v4) != 1)
  {
    sub_24A696E10(v13, v10);
    if (v32(&v13[v30], 1, v4) != 1)
    {
      (*(v31 + 32))(v7, &v13[v30], v4);
      sub_24A6C84B4(&qword_27EF5D048, 255, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
      v35 = sub_24A82CF84();
      v36 = *(v31 + 8);
      v36(v7, v4);
      v36(v10, v4);
      sub_24A67F378(v13, &unk_27EF5CCB8, &qword_24A82FDB0);
      if ((v35 & 1) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_23;
    }

    (*(v31 + 8))(v10, v4);
LABEL_19:
    sub_24A67F378(v13, &qword_27EF5D040, &unk_24A830E50);
    goto LABEL_20;
  }

  if (v32(&v13[v30], 1, v4) != 1)
  {
    goto LABEL_19;
  }

  sub_24A67F378(v13, &unk_27EF5CCB8, &qword_24A82FDB0);
LABEL_23:
  v37 = v42[12];
  v38 = (a1 + v37);
  v39 = *(a1 + v37 + 8);
  v40 = (a2 + v37);
  v33 = *(a2 + v37 + 8);
  if (v39)
  {
    if (!v33)
    {
      return v33 & 1;
    }

    goto LABEL_29;
  }

  if (*v38 != *v40)
  {
    LOBYTE(v33) = 1;
  }

  if ((v33 & 1) == 0)
  {
LABEL_29:
    if (*(a1 + v42[13]) == *(a2 + v42[13]))
    {
      LOBYTE(v33) = *(a1 + v42[14]) ^ *(a2 + v42[14]) ^ 1;
      return v33 & 1;
    }
  }

LABEL_20:
  LOBYTE(v33) = 0;
  return v33 & 1;
}

uint64_t sub_24A6C84B4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24A6C8500()
{
  result = qword_27EF5CCD8;
  if (!qword_27EF5CCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5CCD8);
  }

  return result;
}

unint64_t sub_24A6C8558()
{
  result = qword_27EF5CCE0;
  if (!qword_27EF5CCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5CCE0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FMIPBeaconShareDirection(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for FMIPBeaconShareDirection(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_24A6C8774(unint64_t *a1)
{
  if ((*a1 & 0x8000000000000000) == 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t sub_24A6C879C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 8))
  {
    return (*a1 + 126);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_24A6C87F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_24A6C8858(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for FMIPBeaconSharingLimits(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for FMIPBeaconSharingLimits(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for FMIPBeaconSharingLimits(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_24A6C89D0(uint64_t a1)
{
  result = sub_24A82CAA4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_24A6C8ED0()
{
  result = qword_27EF5CE50;
  if (!qword_27EF5CE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5CE50);
  }

  return result;
}

uint64_t sub_24A6C9518(uint64_t a1)
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
  v10[1] = sub_24A6CADE0;

  return sub_24A6C161C(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_24A6C9614(uint64_t a1)
{
  v4 = *(type metadata accessor for FMIPBeaconShareStateOverride(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24A6CADE0;

  return sub_24A6C0D30(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_24A6C970C(uint64_t a1)
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
  v10[1] = sub_24A6CADE0;

  return sub_24A6C0D78(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_24A6C97E0()
{
  v1 = (type metadata accessor for FMIPBeaconShareStateOverride(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(*v1 + 64);

  v5 = sub_24A82CAA4();
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v3, v5);
  v6(v0 + v3 + v1[7], v5);
  sub_24A6BB5A4(*(v0 + v3 + v1[8]));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24A6C99D4()
{
  v1 = (type metadata accessor for FMIPBeaconShareStateOverride(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();

  v5 = sub_24A82CAA4();
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v3, v5);
  v6(v0 + v3 + v1[7], v5);
  sub_24A6BB5A4(*(v0 + v3 + v1[8]));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24A6C9AF8(uint64_t a1)
{
  v4 = *(type metadata accessor for FMIPBeaconShareStateOverride(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24A6CADE0;

  return sub_24A6C129C(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_24A6C9BF0(uint64_t a1)
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
  v10[1] = sub_24A6CADE0;

  return sub_24A6C09E0(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_24A6C9CEC(uint64_t a1)
{
  v4 = *(type metadata accessor for FMIPBeaconShareStateOverride(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24A6CADE0;

  return sub_24A6C0D30(a1, v6, v7, v8, v1 + v5);
}

unint64_t sub_24A6C9E24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = type metadata accessor for FMIPBeaconShareStateOverride(0);
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_24A6C9F6C(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_24A77FF40(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_24A6C9E24(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_24A6CA02C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMIPBeaconShareStateOverride(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A6CA090(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24A6CA0F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24A6CA18C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_24A6CA1DC(uint64_t a1)
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
  v10[1] = sub_24A6CADE0;

  return sub_24A6C3210(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_24A6CA2B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24A6CA318(void (*a1)(void), void (*a2)(void))
{
  swift_unknownObjectRelease();
  a1(*(v2 + 32));
  a2(*(v2 + 40));

  return MEMORY[0x2821FE8E8](v2, 48, 7);
}

uint64_t sub_24A6CA380(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24A6CADE0;

  return sub_24A6C5C18(a1, v4, v5, v7, v6);
}

uint64_t sub_24A6CA44C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24A6CA498(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_24A6CA4A4(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  if (a2)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  v6 = v4;
  return v3(&v6);
}

uint64_t getEnumTagSinglePayload for FMOSActivity.Options(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for FMOSActivity.Options(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

uint64_t FMIPConnectAction.__allocating_init(device:enabled:)(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = swift_allocObject();
  FMIPConnectAction.init(device:enabled:)(a1, v2);
  return v4;
}

uint64_t FMIPConnectAction.init(device:enabled:)(uint64_t a1, char a2)
{
  *(v2 + OBJC_IVAR____TtC8FMIPCore17FMIPConnectAction_enabled) = a2;
  *(v2 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_authenticationContext) = 0;
  v3 = (v2 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_trustedDeviceConfirmation);
  *v3 = 0;
  v3[1] = 0;
  v4 = (v2 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_dsid);
  *v4 = 0;
  v4[1] = 0;
  v5 = (v2 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_username);
  *v5 = 0;
  v5[1] = 0;
  v6 = (v2 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_oneTimeToken);
  *v6 = 0;
  v6[1] = 0;
  v7 = (v2 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_escrowUUID);
  *v7 = 0;
  v7[1] = 0;
  *(v2 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_recoverySession) = xmmword_24A8318F0;
  sub_24A6CAF68(a1, v2 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device);
  return v2;
}

uint64_t sub_24A6CAF68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMIPDevice(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static FMIPConnectAction.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + OBJC_IVAR____TtC8FMIPCore17FMIPConnectAction_enabled) == *(a2 + OBJC_IVAR____TtC8FMIPCore17FMIPConnectAction_enabled))
  {
    return static FMIPDevice.== infix(_:_:)(a1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device, a2 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24A6CB004()
{
  v1 = sub_24A6FDDC4();
  if (*(v0 + OBJC_IVAR____TtC8FMIPCore17FMIPConnectAction_enabled))
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC8FMIPCore17FMIPConnectAction_enabled))
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  MEMORY[0x24C21C9E0](v2, v3);

  MEMORY[0x24C21C9E0](0x64656C62616E6520, 0xEA0000000000203ALL);

  return v1;
}

uint64_t FMIPConnectAction.__deallocating_deinit()
{
  FMIPDeviceAction.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24A6CB164(void *a1, void *a2)
{
  if (*(*a1 + OBJC_IVAR____TtC8FMIPCore17FMIPConnectAction_enabled) == *(*a2 + OBJC_IVAR____TtC8FMIPCore17FMIPConnectAction_enabled))
  {
    return static FMIPDevice.== infix(_:_:)(*a1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device, *a2 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device);
  }

  else
  {
    return 0;
  }
}

uint64_t type metadata accessor for FMIPConnectAction(uint64_t a1)
{
  result = qword_27EF5D210;
  if (!qword_27EF5D210)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A6CB28C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMIPItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t FMIPItemAction.__allocating_init(item:)(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_24A6CB364(a1, v2 + OBJC_IVAR____TtC8FMIPCore14FMIPItemAction_item);
  return v2;
}

uint64_t sub_24A6CB364(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMIPItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A6CB3F0(uint64_t a1)
{
  v2 = type metadata accessor for FMIPItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t FMIPItemAction.__deallocating_deinit()
{
  sub_24A6CB3F0(v0 + OBJC_IVAR____TtC8FMIPCore14FMIPItemAction_item);

  return swift_deallocClassInstance();
}

uint64_t FMIPItemAction.debugDescription.getter()
{
  v1 = sub_24A82DDB4();
  MEMORY[0x24C21C9E0](v1);

  MEMORY[0x24C21C9E0](2016419898, 0xE400000000000000);
  sub_24A6CB660();
  v2 = sub_24A82D174();
  MEMORY[0x24C21C9E0](v2);

  MEMORY[0x24C21C9E0](32, 0xE100000000000000);
  sub_24A82D854();

  v3 = v0 + OBJC_IVAR____TtC8FMIPCore14FMIPItemAction_item;
  MEMORY[0x24C21C9E0](*(v3 + 352), *(v3 + 360));
  MEMORY[0x24C21C9E0](0x27203A656D616E20, 0xE800000000000000);
  v4 = type metadata accessor for FMIPItem(0);
  MEMORY[0x24C21C9E0](*(v3 + *(v4 + 56)), *(v3 + *(v4 + 56) + 8));
  MEMORY[0x24C21C9E0](15911, 0xE200000000000000);

  MEMORY[0x24C21C9E0](0x203A656369766564, 0xE800000000000000);

  return 60;
}

unint64_t sub_24A6CB660()
{
  result = qword_281512BE0;
  if (!qword_281512BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281512BE0);
  }

  return result;
}

uint64_t type metadata accessor for FMIPItemAction(uint64_t a1)
{
  result = qword_27EF5D220;
  if (!qword_27EF5D220)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A6CB72C(uint64_t a1)
{
  result = type metadata accessor for FMIPItem(319);
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

uint64_t FMIPSafeLocationType.sortOrder.getter()
{
  if (*v0)
  {
    return 1;
  }

  else
  {
    return 100;
  }
}

FMIPCore::FMIPSafeLocationType_optional __swiftcall FMIPSafeLocationType.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

void *sub_24A6CB838@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

FMIPCore::FMIPSafeLocationApprovalState_optional __swiftcall FMIPSafeLocationApprovalState.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t FMIPSafeLocation.identifier.getter()
{
  v1 = *v0;

  return v1;
}

id FMIPSafeLocation.location.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 17);
  v3 = *(v1 + 18);
  v4 = *(v1 + 19);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  *a1 = *(v1 + 16);
  *(a1 + 1) = v2;
  *(a1 + 2) = v3;
  *(a1 + 3) = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  return v5;
}

uint64_t FMIPSafeLocation.address.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 40), 0x120uLL);
  memcpy(a1, (v1 + 40), 0x120uLL);
  return sub_24A6CB940(__dst, v4);
}

uint64_t sub_24A6CB940(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A6BBA94(&unk_27EF5E0D0, &qword_24A8319E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *FMIPSafeLocation.address.setter(const void *a1)
{
  memcpy(__dst, (v1 + 40), 0x120uLL);
  sub_24A67F378(__dst, &unk_27EF5E0D0, &qword_24A8319E0);
  return memcpy((v1 + 40), a1, 0x120uLL);
}

uint64_t FMIPSafeLocation.name.getter()
{
  v1 = *(v0 + 336);

  return v1;
}

uint64_t sub_24A6CBA8C(uint64_t a1)
{
  sub_24A82D094();
}

unint64_t sub_24A6CBB84@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24A6CD808(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_24A6CBBB4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x73736572646461;
  v5 = 0xE400000000000000;
  v6 = 1701869940;
  v7 = 0xED00006574617453;
  v8 = 0x6C61766F72707061;
  if (v2 != 4)
  {
    v8 = 1701667182;
    v7 = 0xE400000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEA00000000007265;
  v10 = 0x696669746E656469;
  if (v2 != 1)
  {
    v10 = 0x6E6F697461636F6CLL;
    v9 = 0xE800000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_24A6CBC74()
{
  v1 = *v0;
  v2 = 0x73736572646461;
  v3 = 1701869940;
  v4 = 0x6C61766F72707061;
  if (v1 != 4)
  {
    v4 = 1701667182;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x696669746E656469;
  if (v1 != 1)
  {
    v5 = 0x6E6F697461636F6CLL;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_24A6CBD30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24A6CD808(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24A6CBD64(uint64_t a1)
{
  v2 = sub_24A6CC934();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A6CBDA0(uint64_t a1)
{
  v2 = sub_24A6CC934();

  return MEMORY[0x2821FE720](a1, v2);
}

void *FMIPSafeLocation.init(safeLocation:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24A82CAA4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A68808C(v35);
  memcpy(v34, v35, sizeof(v34));
  v8 = a1;
  FMIPLocation.init(safeLocation:)(v8, v36);
  v9 = v36[0];
  v32 = BYTE2(v36[0]);
  v33 = BYTE1(v36[0]);
  v31 = BYTE3(v36[0]);
  v30 = v36[1];
  v10 = v36[2];
  v11 = [v8 identifier];
  sub_24A82CA84();

  v12 = sub_24A82CA54();
  v14 = v13;
  (*(v5 + 8))(v7, v4);
  memcpy(v36, v34, 0x120uLL);
  sub_24A67F378(v36, &unk_27EF5E0D0, &qword_24A8319E0);
  memcpy(v34, v35, sizeof(v34));
  v15 = [v8 type];
  v16 = [v8 approvalState];
  v17 = [v8 name];
  if (v17)
  {
    v29 = v15;
    v18 = v14;
    v19 = v12;
    v20 = v9;
    v21 = v17;
    v22 = sub_24A82CFC4();
    v24 = v23;

    v9 = v20;
    v12 = v19;
    v14 = v18;
    v15 = v29;
  }

  else
  {

    v22 = 0;
    v24 = 0;
  }

  if (v16 >= 4)
  {
    v25 = 0;
  }

  else
  {
    v25 = v16;
  }

  *a2 = v12;
  *(a2 + 8) = v14;
  *(a2 + 16) = v9;
  v26 = v32;
  *(a2 + 17) = v33;
  *(a2 + 18) = v26;
  *(a2 + 19) = v31;
  *(a2 + 24) = v30;
  *(a2 + 32) = v10;
  result = memcpy((a2 + 40), v34, 0x120uLL);
  *(a2 + 328) = v15 == 1;
  *(a2 + 329) = v25;
  *(a2 + 336) = v22;
  *(a2 + 344) = v24;
  return result;
}

void *FMIPSafeLocation.init(location:identifier:address:type:approvalState:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, const void *a4@<X3>, char *a5@<X4>, char *a6@<X5>, uint64_t a7@<X8>)
{
  v11 = *a1;
  v12 = a1[1];
  v13 = a1[2];
  v14 = a1[3];
  v15 = *(a1 + 1);
  v16 = *(a1 + 2);
  v17 = *a5;
  v19 = *a6;
  sub_24A68808C(__src);
  memcpy((a7 + 40), __src, 0x120uLL);
  *(a7 + 16) = v11;
  *(a7 + 17) = v12;
  *(a7 + 18) = v13;
  *(a7 + 19) = v14;
  *(a7 + 24) = v15;
  *(a7 + 32) = v16;
  *a7 = a2;
  *(a7 + 8) = a3;
  memcpy(__dst, a4, sizeof(__dst));
  nullsub_1();
  memcpy(v22, (a7 + 40), 0x120uLL);
  sub_24A67F378(v22, &unk_27EF5E0D0, &qword_24A8319E0);
  result = memcpy((a7 + 40), __dst, 0x120uLL);
  *(a7 + 328) = v17;
  *(a7 + 329) = v19;
  *(a7 + 336) = 0;
  *(a7 + 344) = 0;
  return result;
}

uint64_t FMIPSafeLocation.init(safeLocation:newLocation:)@<X0>(void *__src@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  v9 = *(a2 + 1);
  v10 = *(a2 + 2);
  sub_24A68808C(__srca);
  *(a3 + 16) = v5;
  *(a3 + 17) = v6;
  *(a3 + 18) = v7;
  *(a3 + 19) = v8;
  *(a3 + 24) = v9;
  *(a3 + 32) = v10;
  v11 = __dst[1];
  *a3 = __dst[0];
  *(a3 + 8) = v11;
  memcpy(v18, __srca, sizeof(v18));

  sub_24A6CB940(&__dst[5], &v15);
  sub_24A67F378(v18, &unk_27EF5E0D0, &qword_24A8319E0);
  memcpy((a3 + 40), &__dst[5], 0x120uLL);
  *(a3 + 328) = __dst[41];
  v12 = __dst[42];
  v13 = __dst[43];

  result = sub_24A6CC294(__dst);
  *(a3 + 336) = v12;
  *(a3 + 344) = v13;
  return result;
}

void *FMIPSafeLocation.init(identifier:label:location:placemark:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, void *a6@<X5>, uint64_t a7@<X8>)
{
  sub_24A68808C(__src);
  memcpy((a7 + 40), __src, 0x120uLL);
  __dst[0] = 4;
  v14 = a5;
  FMIPLocation.init(location:type:)(v14, __dst, v25);
  v15 = v25[0];
  v16 = BYTE1(v25[0]);
  v17 = BYTE2(v25[0]);
  v21 = BYTE3(v25[0]);
  v20 = v25[1];
  v18 = v25[2];

  FMIPAddress.init(label:placemark:)(v23, a6, a3, a4);

  *a7 = a1;
  *(a7 + 8) = a2;
  memcpy(__dst, v23, sizeof(__dst));
  nullsub_1();
  memcpy(v25, (a7 + 40), 0x120uLL);
  sub_24A67F378(v25, &unk_27EF5E0D0, &qword_24A8319E0);
  result = memcpy((a7 + 40), __dst, 0x120uLL);
  *(a7 + 16) = v15;
  *(a7 + 17) = v16;
  *(a7 + 18) = v17;
  *(a7 + 19) = v21;
  *(a7 + 24) = v20;
  *(a7 + 32) = v18;
  *(a7 + 328) = 256;
  *(a7 + 336) = a3;
  *(a7 + 344) = a4;
  return result;
}

uint64_t FMIPSafeLocation.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_24A6BBA94(&qword_27EF5D230, &qword_24A8319E8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v27 - v7;
  sub_24A68808C(v48);
  memcpy(v47, v48, sizeof(v47));
  v9 = a1[3];
  v37 = a1;
  sub_24A67DF6C(a1, v9);
  sub_24A6CC934();
  sub_24A82DD64();
  if (v2)
  {
    sub_24A6876E8(v37);
    memcpy(v39, v47, 0x120uLL);
    return sub_24A67F378(v39, &unk_27EF5E0D0, &qword_24A8319E0);
  }

  else
  {
    v10 = v6;
    v36 = a2;
    LOBYTE(v39[0]) = 1;
    v11 = v5;
    v13 = sub_24A82DA44();
    v15 = v14;
    v45[295] = 0;
    sub_24A684C3C();
    sub_24A82DA34();
    memcpy(v44, v46, sizeof(v44));
    memcpy(v45, v47, 0x120uLL);
    sub_24A67F378(v45, &unk_27EF5E0D0, &qword_24A8319E0);
    memcpy(v47, v44, sizeof(v47));
    LOBYTE(v38[0]) = 2;
    sub_24A687EF0();
    sub_24A82DA84();
    v32 = LOBYTE(v39[0]);
    v33 = BYTE1(v39[0]);
    v16 = BYTE2(v39[0]);
    v17 = BYTE3(v39[0]);
    v34 = v39[1];
    v18 = v39[2];
    LOBYTE(v39[0]) = 5;
    v29 = sub_24A82DA04();
    v30 = v17;
    v31 = v16;
    v35 = v19;
    LOBYTE(v39[0]) = 3;
    v20 = sub_24A82DA74();
    LOBYTE(v39[0]) = 4;
    v21 = sub_24A82DA74();
    v22 = v20 == 1;
    v27 = v22;
    (*(v10 + 8))(v8, v11);
    if (v21 >= 4)
    {
      LODWORD(v21) = 0;
    }

    v28 = v21;
    v38[0] = v13;
    v38[1] = v15;
    v23 = v32;
    LOBYTE(v38[2]) = v32;
    BYTE1(v38[2]) = v33;
    BYTE2(v38[2]) = v31;
    BYTE3(v38[2]) = v30;
    v24 = v34;
    v38[3] = v34;
    v38[4] = v18;
    memcpy(&v38[5], v44, 0x120uLL);
    LOBYTE(v38[41]) = v22;
    BYTE1(v38[41]) = v21;
    v25 = v29;
    v26 = v35;
    v38[42] = v29;
    v38[43] = v35;
    memcpy(v36, v38, 0x160uLL);
    sub_24A6CC988(v38, v39);
    sub_24A6876E8(v37);
    v39[0] = v13;
    v39[1] = v15;
    LOBYTE(v39[2]) = v23;
    BYTE1(v39[2]) = v33;
    BYTE2(v39[2]) = v31;
    BYTE3(v39[2]) = v30;
    v39[3] = v24;
    v39[4] = v18;
    memcpy(&v39[5], v44, 0x120uLL);
    v40 = v27;
    v41 = v28;
    v42 = v25;
    v43 = v26;
    return sub_24A6CC294(v39);
  }
}

unint64_t sub_24A6CC934()
{
  result = qword_27EF5D238;
  if (!qword_27EF5D238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D238);
  }

  return result;
}

uint64_t FMIPSafeLocation.encode(to:)(void *a1)
{
  v3 = sub_24A6BBA94(&qword_27EF5D240, &unk_24A8319F0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - v5;
  v27 = *(v1 + 8);
  v7 = *(v1 + 16);
  v25 = *(v1 + 17);
  v26 = v7;
  v24 = *(v1 + 18);
  v22 = *(v1 + 19);
  v23 = *(v1 + 24);
  v8 = *(v1 + 32);
  memcpy(v35, (v1 + 40), 0x120uLL);
  v21 = *(v1 + 328);
  v20 = *(v1 + 329);
  v9 = *(v1 + 344);
  v18 = *(v1 + 336);
  v19 = v9;
  sub_24A67DF6C(a1, a1[3]);
  sub_24A6CC934();
  v10 = v3;
  sub_24A82DD84();
  v34[0] = 1;
  v11 = v28;
  sub_24A82DB04();
  if (!v11)
  {
    v13 = v24;
    v12 = v25;
    v14 = v26;
    memcpy(v34, v35, sizeof(v34));
    v33[295] = 0;
    sub_24A6CB940(v35, v33);
    sub_24A6BBA94(&unk_27EF5E0D0, &qword_24A8319E0);
    sub_24A6CCD3C();
    sub_24A82DB44();
    memcpy(v33, v34, 0x120uLL);
    sub_24A67F378(v33, &unk_27EF5E0D0, &qword_24A8319E0);
    LOBYTE(v30) = v14;
    BYTE1(v30) = v12;
    BYTE2(v30) = v13;
    BYTE3(v30) = v22;
    v15 = v23;
    v31 = v23;
    v32 = v8;
    v29 = 2;
    sub_24A6CCE5C();
    v16 = v15;
    sub_24A82DB44();

    LOBYTE(v30) = 3;
    sub_24A82DB34();
    LOBYTE(v30) = 4;
    sub_24A82DB34();
    v30 = v18;
    v31 = v19;
    v29 = 5;
    sub_24A6BBA94(&qword_27EF5D248, &unk_24A834970);
    sub_24A6CCEB0();
    sub_24A82DB44();
  }

  return (*(v4 + 8))(v6, v10);
}

unint64_t sub_24A6CCD3C()
{
  result = qword_2815145D8;
  if (!qword_2815145D8)
  {
    sub_24A6CCDC0(&unk_27EF5E0D0, &qword_24A8319E0);
    sub_24A6CCE08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815145D8);
  }

  return result;
}

uint64_t sub_24A6CCDC0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_24A6CCE08()
{
  result = qword_2815145E8;
  if (!qword_2815145E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815145E8);
  }

  return result;
}

unint64_t sub_24A6CCE5C()
{
  result = qword_2815144C8;
  if (!qword_2815144C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815144C8);
  }

  return result;
}

unint64_t sub_24A6CCEB0()
{
  result = qword_281512BD0;
  if (!qword_281512BD0)
  {
    sub_24A6CCDC0(&qword_27EF5D248, &unk_24A834970);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281512BD0);
  }

  return result;
}

uint64_t FMIPSafeLocation.hashValue.getter()
{
  sub_24A82DCC4();
  sub_24A82D094();
  return sub_24A82DD24();
}

uint64_t sub_24A6CCFB8()
{
  sub_24A82DCC4();
  sub_24A82D094();
  return sub_24A82DD24();
}

uint64_t sub_24A6CD00C(uint64_t a1)
{
  sub_24A82DCC4();
  sub_24A82D094();
  return sub_24A82DD24();
}

uint64_t _s8FMIPCore16FMIPSafeLocationV2eeoiySbAC_ACtFZ_0(unint64_t *a1, unint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v32 = *(a1 + 17);
  v33 = *(a1 + 16);
  v30 = *(a1 + 19);
  v31 = *(a1 + 18);
  v6 = a1[3];
  v7 = a1[4];
  memcpy(__dst, a1 + 5, sizeof(__dst));
  v26 = *(a1 + 329);
  v23 = a1[42];
  v24 = a1[43];
  v8 = *a2;
  v9 = a2[1];
  v10 = *(a2 + 16);
  v11 = *(a2 + 17);
  v12 = *(a2 + 18);
  v28 = *(a1 + 328);
  v29 = *(a2 + 19);
  v13 = a2[3];
  v14 = a2[4];
  memcpy(__src, a2 + 5, 0x120uLL);
  v27 = *(a2 + 328);
  v25 = *(a2 + 329);
  v15 = a2[42];
  v16 = a2[43];
  v22 = v15;
  if (__PAIR128__(v5, v4) != __PAIR128__(v9, v8) && (sub_24A82DC04() & 1) == 0)
  {
    return 0;
  }

  LOBYTE(v40[0]) = v33;
  BYTE1(v40[0]) = v32;
  BYTE2(v40[0]) = v31;
  BYTE3(v40[0]) = v30;
  *&v40[1] = v6;
  *&v40[2] = v7;
  LOBYTE(v38[0]) = v10;
  BYTE1(v38[0]) = v11;
  BYTE2(v38[0]) = v12;
  BYTE3(v38[0]) = v29;
  *&v38[1] = v13;
  *&v38[2] = v14;
  v17 = v6;
  v18 = v13;
  v19 = _s8FMIPCore12FMIPLocationV2eeoiySbAC_ACtFZ_0(v40, v38);

  if ((v19 & 1) == 0)
  {
    return 0;
  }

  memcpy(v40, __dst, 0x120uLL);
  memcpy(&v40[36], __src, 0x120uLL);
  memcpy(v41, __dst, sizeof(v41));
  if (sub_24A6921A8(v41) != 1)
  {
    memcpy(v39, v40, sizeof(v39));
    memcpy(v37, v40, sizeof(v37));
    memcpy(v38, &v40[36], 0x120uLL);
    if (sub_24A6921A8(v38) != 1)
    {
      memcpy(v36, &v40[36], sizeof(v36));
      v20 = _s8FMIPCore11FMIPAddressV2eeoiySbAC_ACtFZ_0(v37, v36);
      memcpy(v34, v36, sizeof(v34));
      sub_24A6CB940(__dst, v35);
      sub_24A6CB940(__src, v35);
      sub_24A6CB940(v39, v35);
      sub_24A6CD854(v34);
      memcpy(v35, v37, sizeof(v35));
      sub_24A6CD854(v35);
      memcpy(v36, v40, sizeof(v36));
      sub_24A67F378(v36, &unk_27EF5E0D0, &qword_24A8319E0);
      if ((v20 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_12;
    }

    memcpy(v36, v40, sizeof(v36));
    sub_24A6CB940(__dst, v35);
    sub_24A6CB940(__src, v35);
    sub_24A6CB940(v39, v35);
    sub_24A6CD854(v36);
LABEL_10:
    memcpy(v38, v40, sizeof(v38));
    sub_24A67F378(v38, &qword_27EF5D280, &unk_24A831EC0);
    return 0;
  }

  memcpy(v38, &v40[36], 0x120uLL);
  if (sub_24A6921A8(v38) != 1)
  {
    sub_24A6CB940(__dst, v39);
    sub_24A6CB940(__src, v39);
    goto LABEL_10;
  }

  memcpy(v39, v40, sizeof(v39));
  sub_24A6CB940(__dst, v37);
  sub_24A6CB940(__src, v37);
  sub_24A67F378(v39, &unk_27EF5E0D0, &qword_24A8319E0);
LABEL_12:
  if (v28 == v27 && v26 == v25)
  {
    if (v24)
    {
      if (v16 && (v23 == v22 && v24 == v16 || (sub_24A82DC04() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v16)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_24A6CD438()
{
  result = qword_27EF5D250;
  if (!qword_27EF5D250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D250);
  }

  return result;
}

unint64_t sub_24A6CD490()
{
  result = qword_27EF5D258;
  if (!qword_27EF5D258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D258);
  }

  return result;
}

unint64_t sub_24A6CD4E8()
{
  result = qword_27EF5D260;
  if (!qword_27EF5D260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D260);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FMIPBatteryStatus(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_24A6CD5EC(uint64_t a1)
{
  v1 = *(a1 + 168);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_24A6CD60C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 352))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24A6CD654(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 344) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 352) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 352) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24A6CD704()
{
  result = qword_27EF5D268;
  if (!qword_27EF5D268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D268);
  }

  return result;
}

unint64_t sub_24A6CD75C()
{
  result = qword_27EF5D270;
  if (!qword_27EF5D270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D270);
  }

  return result;
}

unint64_t sub_24A6CD7B4()
{
  result = qword_27EF5D278;
  if (!qword_27EF5D278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D278);
  }

  return result;
}

unint64_t sub_24A6CD808(uint64_t a1, uint64_t a2)
{
  v2 = sub_24A82D9C4();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_24A6CD8C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMIPItemGroup(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t FMIPItemGroupAction.__allocating_init(itemGroup:)(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_24A6CD998(a1, v2 + OBJC_IVAR____TtC8FMIPCore19FMIPItemGroupAction_itemGroup);
  return v2;
}

uint64_t sub_24A6CD998(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMIPItemGroup(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A6CDA24(uint64_t a1)
{
  v2 = type metadata accessor for FMIPItemGroup(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t FMIPItemGroupAction.__deallocating_deinit()
{
  sub_24A6CDA24(v0 + OBJC_IVAR____TtC8FMIPCore19FMIPItemGroupAction_itemGroup);

  return swift_deallocClassInstance();
}

uint64_t FMIPItemGroupAction.description.getter()
{
  v1 = sub_24A82DDB4();
  MEMORY[0x24C21C9E0](v1);

  MEMORY[0x24C21C9E0](2016419898, 0xE400000000000000);
  sub_24A6CB660();
  v2 = sub_24A82D174();
  MEMORY[0x24C21C9E0](v2);

  MEMORY[0x24C21C9E0](32, 0xE100000000000000);
  sub_24A82D854();

  v3 = (v0 + OBJC_IVAR____TtC8FMIPCore19FMIPItemGroupAction_itemGroup);
  MEMORY[0x24C21C9E0](v3[1], v3[2]);
  MEMORY[0x24C21C9E0](0x27203A656D616E20, 0xE800000000000000);
  MEMORY[0x24C21C9E0](v3[3], v3[4]);
  MEMORY[0x24C21C9E0](15911, 0xE200000000000000);

  MEMORY[0x24C21C9E0](0x203A70756F7267, 0xE700000000000000);

  return 60;
}

uint64_t type metadata accessor for FMIPItemGroupAction(uint64_t a1)
{
  result = qword_27EF5D288;
  if (!qword_27EF5D288)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A6CDCDC(uint64_t a1)
{
  result = type metadata accessor for FMIPItemGroup(319);
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

uint64_t FMIPItemRole.emoji.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t FMIPItemRole.name.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t sub_24A6CDE04(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x696A6F6D65;
  if (v2 != 1)
  {
    v4 = 1701667182;
    v3 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x696669746E656469;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xEA00000000007265;
  }

  v7 = 0xE500000000000000;
  v8 = 0x696A6F6D65;
  if (*a2 != 1)
  {
    v8 = 1701667182;
    v7 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x696669746E656469;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xEA00000000007265;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24A82DC04();
  }

  return v11 & 1;
}

uint64_t sub_24A6CDEF0()
{
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A6CDF8C(uint64_t a1)
{
  sub_24A82D094();
}

uint64_t sub_24A6CE014(uint64_t a1)
{
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

unint64_t sub_24A6CE0AC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24A6CEC48(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_24A6CE0DC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000007265;
  v4 = 0xE500000000000000;
  v5 = 0x696A6F6D65;
  if (v2 != 1)
  {
    v5 = 1701667182;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x696669746E656469;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_24A6CE134()
{
  v1 = 0x696A6F6D65;
  if (*v0 != 1)
  {
    v1 = 1701667182;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696669746E656469;
  }
}

unint64_t sub_24A6CE188@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24A6CEC48(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24A6CE1B0(uint64_t a1)
{
  v2 = sub_24A6CE42C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A6CE1EC(uint64_t a1)
{
  v2 = sub_24A6CE42C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FMIPItemRole.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_24A6BBA94(&qword_27EF5D298, &qword_24A831F58);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  sub_24A67DF6C(a1, a1[3]);
  sub_24A6CE42C();
  sub_24A82DD64();
  if (!v2)
  {
    v22 = 1;
    v9 = sub_24A82DA44();
    v11 = v10;
    v12 = v9;
    v21 = 0;
    v19 = sub_24A82DA74();
    v20 = 2;
    v14 = sub_24A82DA44();
    v15 = v8;
    v17 = v16;
    (*(v6 + 8))(v15, v5);
    *a2 = v19;
    a2[1] = v12;
    a2[2] = v11;
    a2[3] = v14;
    a2[4] = v17;
  }

  return sub_24A6876E8(a1);
}

unint64_t sub_24A6CE42C()
{
  result = qword_27EF5D2A0;
  if (!qword_27EF5D2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D2A0);
  }

  return result;
}

uint64_t FMIPItemRole.encode(to:)(void *a1)
{
  v4 = sub_24A6BBA94(&qword_27EF5D2A8, &qword_24A831F60);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - v6;
  v8 = v1[1];
  v9 = v1[3];
  v11[0] = v1[2];
  v11[1] = v8;
  v11[2] = v1[4];
  v11[3] = v9;
  sub_24A67DF6C(a1, a1[3]);
  sub_24A6CE42C();
  sub_24A82DD84();
  v14 = 0;
  sub_24A82DB34();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v13 = 2;
  sub_24A82DB04();
  v12 = 1;
  sub_24A82DB04();
  return (*(v5 + 8))(v7, v4);
}

uint64_t static FMIPItemRole.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  v6 = a1[3] == a2[3] && a1[4] == a2[4];
  if (!v6 && (sub_24A82DC04() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  return sub_24A82DC04();
}

uint64_t FMIPItemRole.hash(into:)(uint64_t a1)
{
  MEMORY[0x24C21D5E0](*v1);
  sub_24A82D094();

  return sub_24A82D094();
}

uint64_t FMIPItemRole.hashValue.getter()
{
  v1 = *v0;
  sub_24A82DCC4();
  MEMORY[0x24C21D5E0](v1);
  sub_24A82D094();
  sub_24A82D094();
  return sub_24A82DD24();
}

uint64_t sub_24A6CE814(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  v6 = a1[3] == a2[3] && a1[4] == a2[4];
  if (!v6 && (sub_24A82DC04() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  return sub_24A82DC04();
}

uint64_t sub_24A6CE8C8()
{
  v1 = *v0;
  sub_24A82DCC4();
  MEMORY[0x24C21D5E0](v1);
  sub_24A82D094();
  sub_24A82D094();
  return sub_24A82DD24();
}

uint64_t sub_24A6CE948(uint64_t a1)
{
  MEMORY[0x24C21D5E0](*v1);
  sub_24A82D094();

  return sub_24A82D094();
}

uint64_t sub_24A6CE9B8(uint64_t a1)
{
  v2 = *v1;
  sub_24A82DCC4();
  MEMORY[0x24C21D5E0](v2);
  sub_24A82D094();
  sub_24A82D094();
  return sub_24A82DD24();
}

unint64_t sub_24A6CEA38()
{
  result = qword_27EF5D2B0;
  if (!qword_27EF5D2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D2B0);
  }

  return result;
}

__n128 sub_24A6CEA8C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_24A6CEAA0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_24A6CEAE8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24A6CEB44()
{
  result = qword_27EF5D2B8;
  if (!qword_27EF5D2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D2B8);
  }

  return result;
}

unint64_t sub_24A6CEB9C()
{
  result = qword_27EF5D2C0;
  if (!qword_27EF5D2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D2C0);
  }

  return result;
}

unint64_t sub_24A6CEBF4()
{
  result = qword_27EF5D2C8;
  if (!qword_27EF5D2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D2C8);
  }

  return result;
}

unint64_t sub_24A6CEC48(uint64_t a1, uint64_t a2)
{
  v2 = sub_24A82D9C4();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_24A6CEED4()
{
  qword_27EF5D2D0 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_none");

  return swift_unknownObjectRetain();
}

const char *FMOSActivity.init(_:parent:options:)@<X0>(const char *description@<X0>, char a2@<W2>, NSObject **a3@<X3>, os_activity_flag_t *a4@<X4>, os_activity_t *a5@<X8>)
{
  if (a2)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (!description)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (*a3)
  {
    v6 = _os_activity_create(&dword_24A675000, description, *a3, *a4);
    description = swift_unknownObjectRelease();
    *a5 = v6;
    return description;
  }

LABEL_7:
  __break(1u);
  return description;
}

uint64_t sub_24A6CEFCC@<X0>(void *a1@<X0>, void *a2@<X1>, void *a4@<X8>)
{
  if (*a1 != -1)
  {
    v6 = a2;
    v7 = a4;
    swift_once();
    a4 = v7;
    a2 = v6;
  }

  *a4 = *a2;

  return swift_unknownObjectRetain();
}

void *FMOSActivity.apply(execute:)(const void *a1)
{
  result = _Block_copy(a1);
  v3 = *v1;
  if (v3)
  {
    v4 = result;
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_24A6A0BB0;
    *(v6 + 24) = v5;
    v9[4] = sub_24A680678;
    v9[5] = v6;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 1107296256;
    v9[2] = sub_24A6805E4;
    v9[3] = &unk_285DC1AF8;
    v7 = _Block_copy(v9);

    os_activity_apply(v3, v7);
    _Block_release(v7);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *static FMOSActivity.start(_:execute:)(const char *a1, int a2, char a3, void *aBlock)
{
  result = _Block_copy(aBlock);
  v7 = result;
  if (qword_281513E40 == -1)
  {
    if ((a3 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  result = swift_once();
  if (a3)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (!a1)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v8 = _os_activity_create(&dword_24A675000, a1, qword_281513E48[0], OS_ACTIVITY_FLAG_DEFAULT);
  v9 = _Block_copy(v7);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_24A6CF738;
  *(v11 + 24) = v10;
  v13[4] = sub_24A6CF73C;
  v13[5] = v11;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_24A6805E4;
  v13[3] = &unk_285DC1B70;
  v12 = _Block_copy(v13);

  os_activity_apply(v8, v12);
  _Block_release(v12);
  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  _Block_release(v7);
  result = swift_unknownObjectRelease();
  if (v12)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

unint64_t sub_24A6CF394()
{
  result = qword_27EF5D2E0;
  if (!qword_27EF5D2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D2E0);
  }

  return result;
}

unint64_t sub_24A6CF3EC()
{
  result = qword_27EF5D2E8;
  if (!qword_27EF5D2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D2E8);
  }

  return result;
}

unint64_t sub_24A6CF444()
{
  result = qword_27EF5D2F0;
  if (!qword_27EF5D2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D2F0);
  }

  return result;
}

unint64_t sub_24A6CF49C()
{
  result = qword_27EF5D2F8;
  if (!qword_27EF5D2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D2F8);
  }

  return result;
}

BOOL sub_24A6CF52C(_DWORD *a1, int *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

_DWORD *sub_24A6CF55C@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 4) = v3 == 0;
  return result;
}

int *sub_24A6CF588@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 4) = v5 == 0;
  return result;
}

uint64_t sub_24A6CF660(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_24A6CF6BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

double FMIPProductType.productInformation.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_24A6BBA94(&qword_27EF5D360, &unk_24A836200);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - v8;
  v10 = type metadata accessor for FMIPProductType(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A6CFA08(v2, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      *(a1 + 24) = &type metadata for FMIPZeusProductInformation;
      *(a1 + 32) = &protocol witness table for FMIPZeusProductInformation;
      v14 = swift_allocObject();
      *a1 = v14;
      v15 = *(v12 + 3);
      *(v14 + 48) = *(v12 + 2);
      *(v14 + 64) = v15;
      *(v14 + 80) = *(v12 + 8);
      v16 = *(v12 + 1);
      *(v14 + 16) = *v12;
      *(v14 + 32) = v16;
    }

    else
    {
      sub_24A6CFA6C(v12, v9);
      sub_24A67E964(v9, v7, &qword_27EF5D360, &unk_24A836200);
      v20 = type metadata accessor for FMIPHawkeyeProductInformation(0);
      if ((*(*(v20 - 8) + 48))(v7, 1, v20) == 1)
      {
        sub_24A67F378(v9, &qword_27EF5D360, &unk_24A836200);
        sub_24A67F378(v7, &qword_27EF5D360, &unk_24A836200);
        *&v16 = 0;
        *a1 = 0u;
        *(a1 + 16) = 0u;
        *(a1 + 32) = 0;
      }

      else
      {
        *(a1 + 24) = v20;
        *(a1 + 32) = &protocol witness table for FMIPHawkeyeProductInformation;
        v21 = sub_24A697E3C(a1);
        sub_24A6D2750(v7, v21, type metadata accessor for FMIPHawkeyeProductInformation);
        sub_24A67F378(v9, &qword_27EF5D360, &unk_24A836200);
      }
    }
  }

  else
  {
    v17 = *(v12 + 3);
    if (v17)
    {
      *(a1 + 24) = &type metadata for FMIPB389ProductInformation;
      *(a1 + 32) = &protocol witness table for FMIPB389ProductInformation;
      v18 = swift_allocObject();
      *a1 = v18;
      *(v18 + 16) = *v12;
      *(v18 + 32) = *(v12 + 2);
      *(v18 + 40) = v17;
      v16 = *(v12 + 2);
      v19 = *(v12 + 3);
      *(v18 + 48) = v16;
      *(v18 + 64) = v19;
      *(v18 + 80) = *(v12 + 8);
    }

    else
    {
      *(a1 + 32) = 0;
      *&v16 = 0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }
  }

  return *&v16;
}

uint64_t sub_24A6CFA08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMIPProductType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A6CFA6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A6BBA94(&qword_27EF5D360, &unk_24A836200);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A6CFADC()
{

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_24A6CFB24@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24A6BBA94(&qword_27EF5D360, &unk_24A836200);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v49 - v5;
  v7 = type metadata accessor for FMIPProductType(0);
  MEMORY[0x28223BE20](v7);
  v9 = v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[3];
  v11 = a1[4];
  sub_24A67DF6C(a1, v10);
  v12 = (*(v11 + 32))(v10, v11);
  v13 = sub_24A82CFC4();
  v15 = v14;
  if (v13 == sub_24A82CFC4() && v15 == v16)
  {
    goto LABEL_15;
  }

  v18 = sub_24A82DC04();

  if (v18)
  {
LABEL_6:

LABEL_16:
    sub_24A698230(a1, v50);
    FMIPHawkeyeProductInformation.init(beacon:)(v50, v6);
    sub_24A6CFA6C(v6, v9);
    goto LABEL_17;
  }

  v19 = sub_24A82CFC4();
  v21 = v20;
  if (v19 == sub_24A82CFC4() && v21 == v22)
  {
LABEL_15:

    goto LABEL_16;
  }

  v24 = sub_24A82DC04();

  if (v24)
  {
    goto LABEL_6;
  }

  v25 = sub_24A82CFC4();
  v27 = v26;
  if (v25 != sub_24A82CFC4() || v27 != v28)
  {
    v30 = sub_24A82DC04();

    if (v30)
    {

      goto LABEL_20;
    }

    v35 = sub_24A82CFC4();
    v37 = v36;
    if (v35 == sub_24A82CFC4() && v37 == v38)
    {
      goto LABEL_26;
    }

    v39 = sub_24A82DC04();

    if ((v39 & 1) == 0)
    {
      v40 = sub_24A82CFC4();
      v42 = v41;
      if (v40 == sub_24A82CFC4() && v42 == v43)
      {
LABEL_26:

        goto LABEL_31;
      }

      v44 = sub_24A82DC04();

      if ((v44 & 1) == 0)
      {
        goto LABEL_32;
      }
    }

    while (1)
    {
LABEL_31:
      sub_24A82D934();
      __break(1u);
LABEL_32:
      v45 = sub_24A82CFC4();
      v47 = v46;
      if (v45 == sub_24A82CFC4() && v47 == v48)
      {
      }

      else
      {
        sub_24A82DC04();
      }
    }
  }

LABEL_20:
  v31 = a1[3];
  v32 = a1[4];
  sub_24A67DF6C(a1, v31);
  if ((*(v32 + 160))(v31, v32))
  {
    sub_24A698230(a1, v49);
    FMIPZeusProductInformation.init(beacon:)(v49, v50);
  }

  else
  {
    sub_24A698230(a1, v49);
    FMIPB389ProductInformation.init(beacon:)(v49, v50);
  }

  v33 = v50[3];
  *(v9 + 2) = v50[2];
  *(v9 + 3) = v33;
  *(v9 + 8) = v51;
  v34 = v50[1];
  *v9 = v50[0];
  *(v9 + 1) = v34;
LABEL_17:
  swift_storeEnumTagMultiPayload();
  sub_24A6D2750(v9, a2, type metadata accessor for FMIPProductType);
  return sub_24A6876E8(a1);
}

uint64_t sub_24A6D0128@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24A6BBA94(&qword_27EF5D360, &unk_24A836200);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v23 - v5;
  if (![a1 isPosh])
  {
    v11 = [a1 type];
    v12 = sub_24A82CFC4();
    v14 = v13;
    if (v12 == sub_24A82CFC4() && v14 == v15)
    {
      goto LABEL_14;
    }

    v17 = sub_24A82DC04();

    if ((v17 & 1) == 0)
    {
      v11 = [a1 type];
      v18 = sub_24A82CFC4();
      v20 = v19;
      if (v18 == sub_24A82CFC4() && v20 == v21)
      {
LABEL_14:

        goto LABEL_15;
      }

      v22 = sub_24A82DC04();

      if ((v22 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

LABEL_15:
    FMIPHawkeyeProductInformation.init(beacon:)(a1, v6);
    sub_24A6CFA6C(v6, a2);
    type metadata accessor for FMIPProductType(0);
    return swift_storeEnumTagMultiPayload();
  }

  v7 = [a1 productInformation];
  if (!v7)
  {
    goto LABEL_15;
  }

  v8 = v7;
  v9 = [v7 isAirTag];

  if (!v9)
  {
    goto LABEL_15;
  }

LABEL_4:

  type metadata accessor for FMIPProductType(0);
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0;

  return swift_storeEnumTagMultiPayload();
}

BOOL FMIPProductType.isZeus.getter()
{
  v1 = type metadata accessor for FMIPProductType(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A6CFA08(v0, v3);
  v4 = swift_getEnumCaseMultiPayload() == 1;
  sub_24A6D236C(v3, type metadata accessor for FMIPProductType);
  return v4;
}

BOOL _s8FMIPCore15FMIPProductTypeO10supportsR1Sbvg_0()
{
  v1 = type metadata accessor for FMIPProductType(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A6CFA08(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    sub_24A67F378(v3, &qword_27EF5D360, &unk_24A836200);
  }

  else
  {
    sub_24A6D236C(v3, type metadata accessor for FMIPProductType);
  }

  return EnumCaseMultiPayload < 2;
}

BOOL FMIPProductType.isAccessory.getter()
{
  v1 = type metadata accessor for FMIPProductType(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A6CFA08(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    sub_24A67F378(v3, &qword_27EF5D360, &unk_24A836200);
  }

  else
  {
    sub_24A6D236C(v3, type metadata accessor for FMIPProductType);
  }

  return EnumCaseMultiPayload == 2;
}

uint64_t FMIPProductType.coreLocationBeaconType.getter()
{
  v1 = type metadata accessor for FMIPProductType(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A6CFA08(v0, v3);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    sub_24A67F378(v3, &qword_27EF5D360, &unk_24A836200);
    return 3;
  }

  else
  {
    sub_24A6D236C(v3, type metadata accessor for FMIPProductType);
    return 1;
  }
}

uint64_t FMIPProductType.hash(into:)(uint64_t a1)
{
  v3 = type metadata accessor for FMIPHawkeyeProductInformation(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24A6BBA94(&qword_27EF5D360, &unk_24A836200);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - v11;
  v13 = type metadata accessor for FMIPProductType(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A6CFA08(v1, v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v17 = *(v15 + 3);
      v34 = *(v15 + 2);
      v35 = v17;
      v36 = *(v15 + 8);
      v18 = *(v15 + 1);
      v32 = *v15;
      v33 = v18;
      MEMORY[0x24C21D5E0](1);
      v29 = v34;
      v30 = v35;
      v31 = v36;
      v27 = v32;
      v28 = v33;
      FMIPZeusProductInformation.hash(into:)(a1);
      return sub_24A6D23CC(&v32);
    }

    else
    {
      sub_24A6CFA6C(v15, v12);
      MEMORY[0x24C21D5E0](2);
      sub_24A67E964(v12, v10, &qword_27EF5D360, &unk_24A836200);
      if ((*(v4 + 48))(v10, 1, v3) == 1)
      {
        sub_24A82DCE4();
      }

      else
      {
        sub_24A6D2750(v10, v6, type metadata accessor for FMIPHawkeyeProductInformation);
        sub_24A82DCE4();
        FMIPHawkeyeProductInformation.hash(into:)(a1);
        sub_24A6D236C(v6, type metadata accessor for FMIPHawkeyeProductInformation);
      }

      return sub_24A67F378(v12, &qword_27EF5D360, &unk_24A836200);
    }
  }

  else
  {
    v25 = *v15;
    v20 = *(v15 + 3);
    v26 = *(v15 + 2);
    v21 = *(v15 + 3);
    v22 = *(v15 + 2);
    v23 = v21;
    v24 = *(v15 + 8);
    MEMORY[0x24C21D5E0](0);
    if (v20)
    {
      v27 = v25;
      v29 = v22;
      v30 = v23;
      v31 = v24;
      *&v28 = v26;
      *(&v28 + 1) = v20;
      sub_24A82DCE4();
      FMIPB389ProductInformation.hash(into:)(a1);
      v34 = v29;
      v35 = v30;
      v36 = v31;
      v32 = v27;
      v33 = v28;
      return sub_24A6D2420(&v32);
    }

    else
    {
      return sub_24A82DCE4();
    }
  }
}

uint64_t FMIPProductType.hashValue.getter()
{
  sub_24A82DCC4();
  FMIPProductType.hash(into:)(v1);
  return sub_24A82DD24();
}

uint64_t sub_24A6D0AB0()
{
  sub_24A82DCC4();
  FMIPProductType.hash(into:)(v1);
  return sub_24A82DD24();
}

uint64_t sub_24A6D0AF4(uint64_t a1)
{
  sub_24A82DCC4();
  FMIPProductType.hash(into:)(v2);
  return sub_24A82DD24();
}

uint64_t sub_24A6D0B34(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 0xE400000000000000;
  v5 = 1937073530;
  if (v2 != 1)
  {
    v5 = 0x6579656B776168;
    v4 = 0xE700000000000000;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 959984482;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  v8 = 1937073530;
  if (*a2 != 1)
  {
    v8 = 0x6579656B776168;
    v3 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 959984482;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24A82DC04();
  }

  return v11 & 1;
}

uint64_t sub_24A6D0C1C()
{
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A6D0CB0(uint64_t a1)
{
  sub_24A82D094();
}

uint64_t sub_24A6D0D30(uint64_t a1)
{
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

unint64_t sub_24A6D0DC0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24A6D2B14(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_24A6D0DF0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE400000000000000;
  v5 = 1937073530;
  if (v2 != 1)
  {
    v5 = 0x6579656B776168;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 959984482;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_24A6D0EF0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000012;
  }

  else
  {
    v3 = 1701869940;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0x800000024A843480;
  }

  if (*a2)
  {
    v5 = 0xD000000000000012;
  }

  else
  {
    v5 = 1701869940;
  }

  if (*a2)
  {
    v6 = 0x800000024A843480;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24A82DC04();
  }

  return v8 & 1;
}

uint64_t sub_24A6D0F94()
{
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A6D1014(uint64_t a1)
{
  sub_24A82D094();
}

uint64_t sub_24A6D1080(uint64_t a1)
{
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A6D10FC@<X0>(char *a2@<X8>)
{
  v3 = sub_24A82D9C4();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_24A6D115C(unint64_t *a1@<X8>)
{
  v2 = 0x800000024A843480;
  v3 = 1701869940;
  if (*v1)
  {
    v3 = 0xD000000000000012;
  }

  else
  {
    v2 = 0xE400000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_24A6D1198()
{
  if (*v0)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_24A6D11D0@<X0>(char *a3@<X8>)
{
  v4 = sub_24A82D9C4();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_24A6D1240(uint64_t a1)
{
  v2 = sub_24A6D2474();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A6D127C(uint64_t a1)
{
  v2 = sub_24A6D2474();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FMIPProductType.encode(to:)(void *a1)
{
  v2 = v1;
  v22 = sub_24A6BBA94(&qword_27EF5D360, &unk_24A836200);
  MEMORY[0x28223BE20](v22);
  v5 = &v21 - v4;
  v6 = type metadata accessor for FMIPProductType(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24A6BBA94(&qword_27EF5D368, &qword_24A8323E0);
  v24 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v21 - v10;
  sub_24A67DF6C(a1, a1[3]);
  sub_24A6D2474();
  sub_24A82DD84();
  sub_24A6CFA08(v2, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v13 = *(v8 + 3);
      v32 = *(v8 + 2);
      v33 = v13;
      v34 = *(v8 + 8);
      v14 = *(v8 + 1);
      v30 = *v8;
      v31 = v14;
      LOBYTE(v25) = 1;
      v35 = 0;
      sub_24A6D24C8();
      v15 = v23;
      sub_24A82DB44();
      if (!v15)
      {
        v27 = v32;
        v28 = v33;
        v29 = v34;
        v25 = v30;
        v26 = v31;
        v35 = 1;
        sub_24A6D25D0();
        sub_24A82DB44();
      }

      (*(v24 + 8))(v11, v9);
      return sub_24A6D23CC(&v30);
    }

    else
    {
      sub_24A6CFA6C(v8, v5);
      LOBYTE(v30) = 2;
      LOBYTE(v25) = 0;
      sub_24A6D24C8();
      v20 = v23;
      sub_24A82DB44();
      if (!v20)
      {
        LOBYTE(v30) = 1;
        sub_24A6D251C();
        sub_24A82DB44();
      }

      sub_24A67F378(v5, &qword_27EF5D360, &unk_24A836200);
      return (*(v24 + 8))(v11, v9);
    }
  }

  else
  {
    v17 = *(v8 + 3);
    v32 = *(v8 + 2);
    v33 = v17;
    v34 = *(v8 + 8);
    v18 = *(v8 + 1);
    v30 = *v8;
    v31 = v18;
    LOBYTE(v25) = 0;
    v35 = 0;
    sub_24A6D24C8();
    v19 = v23;
    sub_24A82DB44();
    if (!v19)
    {
      v27 = v32;
      v28 = v33;
      v29 = v34;
      v25 = v30;
      v26 = v31;
      v35 = 1;
      sub_24A6BBA94(&qword_27EF5D398, &qword_24A8323E8);
      sub_24A6D2624();
      sub_24A82DB44();
    }

    (*(v24 + 8))(v11, v9);
    return sub_24A67F378(&v30, &qword_27EF5D398, &qword_24A8323E8);
  }
}

uint64_t FMIPProductType.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v36 = sub_24A6BBA94(&qword_27EF5D3B0, &qword_24A8323F0);
  v34 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v4 = &v30 - v3;
  v5 = type metadata accessor for FMIPProductType(0);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v30 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v30 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v30 - v15;
  v17 = a1[3];
  v38 = a1;
  sub_24A67DF6C(a1, v17);
  sub_24A6D2474();
  v18 = v37;
  sub_24A82DD64();
  if (!v18)
  {
    v31 = v14;
    v32 = v11;
    v37 = v5;
    v33 = v16;
    v19 = v34;
    v20 = v35;
    v44 = 0;
    sub_24A6D26FC();
    v21 = v36;
    sub_24A82DA84();
    if (v39)
    {
      if (v39 != 1)
      {
        type metadata accessor for FMIPHawkeyeProductInformation(0);
        LOBYTE(v39) = 1;
        sub_24A6D28A8(&qword_27EF5D3C0, type metadata accessor for FMIPHawkeyeProductInformation, &protocol conformance descriptor for FMIPHawkeyeProductInformation);
        sub_24A82DA34();
        (*(v19 + 8))(v4, v21);
        swift_storeEnumTagMultiPayload();
        v28 = v8;
        goto LABEL_10;
      }

      v44 = 1;
      sub_24A6D27B8();
      sub_24A82DA84();
      (*(v19 + 8))(v4, v21);
      v23 = v42;
      v24 = v32;
      *(v32 + 2) = v41;
      *(v24 + 48) = v23;
      *(v24 + 64) = v43;
      v25 = v40;
      *v24 = v39;
      *(v24 + 16) = v25;
    }

    else
    {
      v44 = 1;
      sub_24A6D280C();
      sub_24A82DA34();
      (*(v19 + 8))(v4, v21);
      v26 = v42;
      v24 = v31;
      *(v31 + 2) = v41;
      *(v24 + 48) = v26;
      *(v24 + 64) = v43;
      v27 = v40;
      *v24 = v39;
      *(v24 + 16) = v27;
    }

    swift_storeEnumTagMultiPayload();
    v28 = v24;
LABEL_10:
    v29 = v33;
    sub_24A6D2750(v28, v33, type metadata accessor for FMIPProductType);
    sub_24A6D2750(v29, v20, type metadata accessor for FMIPProductType);
  }

  return sub_24A6876E8(v38);
}

BOOL _s8FMIPCore15FMIPProductTypeO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMIPHawkeyeProductInformation(0);
  v67 = *(v4 - 8);
  v68 = v4;
  MEMORY[0x28223BE20](v4);
  v65 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24A6BBA94(&qword_27EF5D360, &unk_24A836200);
  MEMORY[0x28223BE20](v6 - 8);
  v66 = &v65 - v7;
  v8 = sub_24A6BBA94(&qword_27EF5D428, &qword_24A832720);
  MEMORY[0x28223BE20](v8);
  v10 = &v65 - v9;
  v11 = type metadata accessor for FMIPProductType(0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v65 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v65 - v18;
  v20 = sub_24A6BBA94(&qword_27EF5D430, &qword_24A832728);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v23 = &v65 + *(v21 + 56) - v22;
  v24 = a1;
  v25 = &v65 - v22;
  sub_24A6CFA08(v24, &v65 - v22);
  sub_24A6CFA08(a2, v23);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_24A6CFA08(v25, v19);
    v36 = *(v19 + 3);
    v106 = *(v19 + 2);
    v107 = v36;
    v108 = *(v19 + 8);
    v37 = *(v19 + 1);
    v104 = *v19;
    v105 = v37;
    if (!swift_getEnumCaseMultiPayload())
    {
      v87 = *v23;
      v47 = *(v23 + 3);
      v88 = *(v23 + 2);
      v48 = *(v23 + 3);
      v84 = *(v23 + 2);
      v85 = v48;
      v86 = *(v23 + 8);
      v92 = *v19;
      v93 = *(v19 + 2);
      v49 = *(&v105 + 1);
      v50 = *(v19 + 3);
      v89 = *(v19 + 2);
      v90 = v50;
      v91 = *(v19 + 8);
      if (*(&v105 + 1))
      {
        v51 = *(v19 + 2);
        v73 = *v19;
        *&v74 = v51;
        *(&v74 + 1) = *(&v105 + 1);
        v52 = *(v19 + 3);
        v75 = *(v19 + 2);
        v76 = v52;
        v77 = *(v19 + 8);
        v103 = v77;
        v101 = v75;
        v102 = v52;
        v99 = v73;
        v100 = v74;
        if (v47)
        {
          v94 = *v23;
          v53 = *(v23 + 2);
          v54 = *(v23 + 3);
          v96 = *(v23 + 2);
          v97 = v54;
          v98 = *(v23 + 8);
          *&v95 = v53;
          *(&v95 + 1) = v47;
          v55 = _s8FMIPCore26FMIPB389ProductInformationV2eeoiySbAC_ACtFZ_0(&v99, &v94);
          v69[2] = v96;
          v69[3] = v97;
          v70 = v98;
          v69[0] = v94;
          v69[1] = v95;
          sub_24A67E964(&v73, v71, &qword_27EF5D398, &qword_24A8323E8);
          sub_24A6D2420(v69);
          v71[2] = v101;
          v71[3] = v102;
          v72 = v103;
          v71[0] = v99;
          v71[1] = v100;
          sub_24A6D2420(v71);
          v94 = v92;
          *&v95 = v93;
          *(&v95 + 1) = v49;
          v96 = v89;
          v97 = v90;
          v98 = v91;
          sub_24A67F378(&v94, &qword_27EF5D398, &qword_24A8323E8);
          if (v55)
          {
LABEL_26:
            sub_24A6D236C(v25, type metadata accessor for FMIPProductType);
            return 1;
          }

          goto LABEL_30;
        }

        v96 = v75;
        v97 = v76;
        v98 = v77;
        v94 = v73;
        v95 = v74;
        sub_24A67E964(&v73, v71, &qword_27EF5D398, &qword_24A8323E8);
        sub_24A6D2420(&v94);
      }

      else if (!v47)
      {
        v73 = *v19;
        v74 = *(v19 + 2);
        v60 = *(v19 + 3);
        v75 = *(v19 + 2);
        v76 = v60;
        v77 = *(v19 + 8);
        v44 = &qword_27EF5D398;
        v45 = &qword_24A8323E8;
        v46 = &v73;
        goto LABEL_24;
      }

      v73 = v92;
      *&v74 = v93;
      *(&v74 + 1) = v49;
      v75 = v89;
      v76 = v90;
      v78 = v87;
      v77 = v91;
      v79 = v88;
      v80 = v47;
      v83 = v86;
      v82 = v85;
      v81 = v84;
      v57 = &unk_27EF5D438;
      v58 = &unk_24A832730;
      v59 = &v73;
      goto LABEL_29;
    }

    v38 = &qword_27EF5D398;
    v39 = &qword_24A8323E8;
    v40 = &v104;
LABEL_13:
    sub_24A67F378(v40, v38, v39);
    goto LABEL_14;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_24A6CFA08(v25, v14);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v41 = *(v8 + 48);
      sub_24A6CFA6C(v14, v10);
      sub_24A6CFA6C(v23, &v10[v41]);
      v42 = v68;
      v43 = *(v67 + 48);
      if (v43(v10, 1, v68) == 1)
      {
        if (v43(&v10[v41], 1, v42) == 1)
        {
          v44 = &qword_27EF5D360;
          v45 = &unk_24A836200;
          v46 = v10;
LABEL_24:
          sub_24A67F378(v46, v44, v45);
          goto LABEL_26;
        }

        goto LABEL_21;
      }

      v56 = v66;
      sub_24A67E964(v10, v66, &qword_27EF5D360, &unk_24A836200);
      if (v43(&v10[v41], 1, v42) == 1)
      {
        sub_24A6D236C(v56, type metadata accessor for FMIPHawkeyeProductInformation);
LABEL_21:
        v57 = &qword_27EF5D428;
        v58 = &qword_24A832720;
        v59 = v10;
LABEL_29:
        sub_24A67F378(v59, v57, v58);
        goto LABEL_30;
      }

      v61 = &v10[v41];
      v62 = v65;
      sub_24A6D2750(v61, v65, type metadata accessor for FMIPHawkeyeProductInformation);
      v63 = _s8FMIPCore29FMIPHawkeyeProductInformationV2eeoiySbAC_ACtFZ_0(v56, v62);
      sub_24A6D236C(v62, type metadata accessor for FMIPHawkeyeProductInformation);
      sub_24A6D236C(v56, type metadata accessor for FMIPHawkeyeProductInformation);
      sub_24A67F378(v10, &qword_27EF5D360, &unk_24A836200);
      if (v63)
      {
        goto LABEL_26;
      }

LABEL_30:
      sub_24A6D236C(v25, type metadata accessor for FMIPProductType);
      return 0;
    }

    v38 = &qword_27EF5D360;
    v39 = &unk_24A836200;
    v40 = v14;
    goto LABEL_13;
  }

  sub_24A6CFA08(v25, v17);
  v27 = *(v17 + 3);
  v75 = *(v17 + 2);
  v76 = v27;
  v77 = *(v17 + 8);
  v28 = *(v17 + 1);
  v73 = *v17;
  v74 = v28;
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_24A6D23CC(&v73);
LABEL_14:
    sub_24A67F378(v25, &qword_27EF5D430, &qword_24A832728);
    return 0;
  }

  v29 = *(v23 + 1);
  v30 = *(v23 + 3);
  v106 = *(v23 + 2);
  v107 = v30;
  v31 = *(v23 + 1);
  v104 = *v23;
  v105 = v31;
  v32 = *(v17 + 3);
  v101 = *(v17 + 2);
  v102 = v32;
  v33 = *(v17 + 1);
  v99 = *v17;
  v100 = v33;
  v34 = *(v23 + 3);
  v96 = v106;
  v97 = v34;
  v108 = *(v23 + 8);
  v103 = *(v17 + 8);
  v98 = *(v23 + 8);
  v94 = v104;
  v95 = v29;
  v35 = _s8FMIPCore26FMIPB389ProductInformationV2eeoiySbAC_ACtFZ_0(&v99, &v94);
  sub_24A6D23CC(&v104);
  sub_24A6D23CC(&v73);
  sub_24A6D236C(v25, type metadata accessor for FMIPProductType);
  return v35;
}

uint64_t sub_24A6D236C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24A6D2474()
{
  result = qword_27EF5D370;
  if (!qword_27EF5D370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D370);
  }

  return result;
}

unint64_t sub_24A6D24C8()
{
  result = qword_27EF5D378;
  if (!qword_27EF5D378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D378);
  }

  return result;
}

unint64_t sub_24A6D251C()
{
  result = qword_27EF5D380;
  if (!qword_27EF5D380)
  {
    sub_24A6CCDC0(&qword_27EF5D360, &unk_24A836200);
    sub_24A6D28A8(&qword_27EF5D388, type metadata accessor for FMIPHawkeyeProductInformation, &protocol conformance descriptor for FMIPHawkeyeProductInformation);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D380);
  }

  return result;
}

unint64_t sub_24A6D25D0()
{
  result = qword_27EF5D390;
  if (!qword_27EF5D390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D390);
  }

  return result;
}

unint64_t sub_24A6D2624()
{
  result = qword_27EF5D3A0;
  if (!qword_27EF5D3A0)
  {
    sub_24A6CCDC0(&qword_27EF5D398, &qword_24A8323E8);
    sub_24A6D26A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D3A0);
  }

  return result;
}

unint64_t sub_24A6D26A8()
{
  result = qword_27EF5D3A8;
  if (!qword_27EF5D3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D3A8);
  }

  return result;
}

unint64_t sub_24A6D26FC()
{
  result = qword_27EF5D3B8;
  if (!qword_27EF5D3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D3B8);
  }

  return result;
}

uint64_t sub_24A6D2750(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_24A6D27B8()
{
  result = qword_27EF5D3C8;
  if (!qword_27EF5D3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D3C8);
  }

  return result;
}

unint64_t sub_24A6D280C()
{
  result = qword_27EF5D3D0;
  if (!qword_27EF5D3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D3D0);
  }

  return result;
}

uint64_t sub_24A6D28A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24A6D2964()
{
  result = qword_27EF5D400;
  if (!qword_27EF5D400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D400);
  }

  return result;
}

unint64_t sub_24A6D29BC()
{
  result = qword_27EF5D408;
  if (!qword_27EF5D408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D408);
  }

  return result;
}

unint64_t sub_24A6D2A14()
{
  result = qword_27EF5D410;
  if (!qword_27EF5D410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D410);
  }

  return result;
}

unint64_t sub_24A6D2A6C()
{
  result = qword_27EF5D418;
  if (!qword_27EF5D418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D418);
  }

  return result;
}

unint64_t sub_24A6D2AC0()
{
  result = qword_27EF5D420;
  if (!qword_27EF5D420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D420);
  }

  return result;
}

unint64_t sub_24A6D2B14(uint64_t a1, uint64_t a2)
{
  v2 = sub_24A82D9C4();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_24A6D2B64()
{
  v0 = sub_24A82CDC4();
  sub_24A67976C(v0, qword_27EF78BE8);
  sub_24A6797D0(v0, qword_27EF78BE8);
  return sub_24A82CDA4();
}

void sub_24A6D2CC8(char a1)
{
  v3 = sub_24A82CF94();
  [v1 willChangeValueForKey_];

  *(v1 + OBJC_IVAR____TtC8FMIPCore29FMIPDeviceImageCacheOperation__isFinished) = a1;
  v4 = sub_24A82CF94();
  [v1 didChangeValueForKey_];
}

id FMIPDeviceImageCacheOperation.__allocating_init(request:completion:)(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v7[OBJC_IVAR____TtC8FMIPCore29FMIPDeviceImageCacheOperation__isFinished] = 0;
  v8 = &v7[OBJC_IVAR____TtC8FMIPCore29FMIPDeviceImageCacheOperation_request];
  v9 = a1[1];
  *v8 = *a1;
  v8[1] = v9;
  v10 = a1[3];
  v8[2] = a1[2];
  v8[3] = v10;
  v11 = &v7[OBJC_IVAR____TtC8FMIPCore29FMIPDeviceImageCacheOperation_completion];
  *v11 = a2;
  v11[1] = a3;
  v13.receiver = v7;
  v13.super_class = v3;
  return objc_msgSendSuper2(&v13, sel_init);
}

id FMIPDeviceImageCacheOperation.init(request:completion:)(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v3[OBJC_IVAR____TtC8FMIPCore29FMIPDeviceImageCacheOperation__isFinished] = 0;
  v4 = &v3[OBJC_IVAR____TtC8FMIPCore29FMIPDeviceImageCacheOperation_request];
  v5 = a1[1];
  *v4 = *a1;
  v4[1] = v5;
  v6 = a1[3];
  v4[2] = a1[2];
  v4[3] = v6;
  v7 = &v3[OBJC_IVAR____TtC8FMIPCore29FMIPDeviceImageCacheOperation_completion];
  *v7 = a2;
  v7[1] = a3;
  v9.receiver = v3;
  v9.super_class = type metadata accessor for FMIPDeviceImageCacheOperation();
  return objc_msgSendSuper2(&v9, sel_init);
}

void sub_24A6D2E7C()
{
  if ([v0 isCancelled])
  {
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v1 = sub_24A82CDC4();
    sub_24A6797D0(v1, qword_281518F88);
    oslog = sub_24A82CD94();
    v2 = sub_24A82D504();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&dword_24A675000, oslog, v2, "FMIPDeviceImageCreationOperation: operation cancelled", v3, 2u);
      MEMORY[0x24C21E1D0](v3, -1, -1);
    }
  }
}

id sub_24A6D2FD0()
{
  v1 = v0;
  v2 = sub_24A6BBA94(&unk_27EF5CCB8, &qword_24A82FDB0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v50 - v3;
  v5 = sub_24A82C8B4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v9 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v50 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v50 - v13;
  v15 = type metadata accessor for FMIPDeviceImageCacheOperation();
  v64.receiver = v0;
  v64.super_class = v15;
  objc_msgSendSuper2(&v64, sel_start);
  v16 = *&v0[OBJC_IVAR____TtC8FMIPCore29FMIPDeviceImageCacheOperation_request + 16];
  aBlock = *&v0[OBJC_IVAR____TtC8FMIPCore29FMIPDeviceImageCacheOperation_request];
  v61 = v16;
  v17 = *&v0[OBJC_IVAR____TtC8FMIPCore29FMIPDeviceImageCacheOperation_request + 48];
  v62 = *&v0[OBJC_IVAR____TtC8FMIPCore29FMIPDeviceImageCacheOperation_request + 32];
  v63 = v17;
  sub_24A821D24(v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_24A6D3E54(v4);
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v18 = sub_24A82CDC4();
    sub_24A6797D0(v18, qword_281518F88);
    v19 = sub_24A82CD94();
    v20 = sub_24A82D4E4();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_24A675000, v19, v20, "FMIPDeviceImageDownloadOperation: operation cannot start without URL", v21, 2u);
      MEMORY[0x24C21E1D0](v21, -1, -1);
    }

    return [v1 setFinished_];
  }

  else
  {
    v58 = *(v6 + 32);
    v59 = v6 + 32;
    v58(v14, v4, v5);
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v23 = sub_24A82CDC4();
    sub_24A6797D0(v23, qword_281518F88);
    v54 = *(v6 + 16);
    v55 = v6 + 16;
    v54(v12, v14, v5);
    v24 = sub_24A82CD94();
    v25 = sub_24A82D504();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v53 = v0;
      v27 = v26;
      v28 = swift_slowAlloc();
      v52 = v14;
      v29 = v28;
      *&aBlock = v28;
      *v27 = 136315138;
      v30 = sub_24A82C814();
      v51 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
      v32 = v31;
      v33 = *(v6 + 8);
      v56 = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v57 = v33;
      v33(v12, v5);
      v34 = sub_24A68761C(v30, v32, &aBlock);
      v9 = v51;

      *(v27 + 4) = v34;
      _os_log_impl(&dword_24A675000, v24, v25, "FMIPDeviceImageDownloadOperation: started for URL: %s", v27, 0xCu);
      sub_24A6876E8(v29);
      v35 = v29;
      v14 = v52;
      MEMORY[0x24C21E1D0](v35, -1, -1);
      v36 = v27;
      v1 = v53;
      MEMORY[0x24C21E1D0](v36, -1, -1);
    }

    else
    {

      v37 = *(v6 + 8);
      v56 = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v57 = v37;
      v37(v12, v5);
    }

    v38 = [objc_opt_self() defaultSessionConfiguration];
    [v38 setHTTPShouldUsePipelining_];
    v39 = [objc_opt_self() sessionWithConfiguration_];
    v40 = sub_24A82C844();
    v54(v9, v14, v5);
    v41 = *(v6 + 80);
    v42 = v9;
    v43 = (v41 + 16) & ~v41;
    v44 = (v7 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
    v45 = v14;
    v46 = swift_allocObject();
    v58((v46 + v43), v42, v5);
    *(v46 + v44) = v1;
    *&v62 = sub_24A6D3EBC;
    *(&v62 + 1) = v46;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v61 = sub_24A6D3B78;
    *(&v61 + 1) = &unk_285DC1E30;
    v47 = _Block_copy(&aBlock);
    v48 = v1;

    v49 = [v39 dataTaskWithURL:v40 completionHandler:v47];
    _Block_release(v47);

    [v49 resume];
    return v57(v45, v5);
  }
}

id sub_24A6D35D4(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5, char *a6)
{
  v11 = sub_24A82C8B4();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v53 - v16;
  if (a2 >> 60 == 15 || a4)
  {
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v30 = sub_24A82CDC4();
    sub_24A6797D0(v30, qword_281518F88);
    (*(v12 + 16))(v15, a5, v11);
    v31 = a4;
    v32 = sub_24A82CD94();
    v33 = sub_24A82D504();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v54 = a6;
      v36 = v35;
      v56 = v35;
      *v34 = 136315394;
      v37 = sub_24A82C814();
      v39 = v38;
      (*(v12 + 8))(v15, v11);
      v40 = sub_24A68761C(v37, v39, &v56);

      *(v34 + 4) = v40;
      *(v34 + 12) = 2080;
      v55 = a4;
      v41 = a4;
      sub_24A6BBA94(&qword_27EF5D468, &qword_24A832790);
      v42 = sub_24A82D024();
      v44 = sub_24A68761C(v42, v43, &v56);

      *(v34 + 14) = v44;
      _os_log_impl(&dword_24A675000, v32, v33, "FMDeviceImageDownloadOperation: error received for URL: %s, error: %s", v34, 0x16u);
      swift_arrayDestroy();
      v45 = v36;
      a6 = v54;
      MEMORY[0x24C21E1D0](v45, -1, -1);
      MEMORY[0x24C21E1D0](v34, -1, -1);
    }

    else
    {

      (*(v12 + 8))(v15, v11);
    }

    v46 = *&a6[OBJC_IVAR____TtC8FMIPCore29FMIPDeviceImageCacheOperation_completion];
    v47 = a4;
    if (!a4)
    {
      sub_24A6D3FAC();
      v47 = swift_allocError();
      *v48 = 0;
    }

    v49 = a4;
    v46(v47, 0, 1);

    return [a6 setFinished_];
  }

  else
  {
    v54 = a6;
    sub_24A681458(a1, a2);
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v18 = sub_24A82CDC4();
    sub_24A6797D0(v18, qword_281518F88);
    (*(v12 + 16))(v17, a5, v11);
    sub_24A681458(a1, a2);
    v19 = sub_24A82CD94();
    v20 = sub_24A82D504();
    sub_24A67E8E8(a1, a2);
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v56 = v53;
      *v21 = 136315394;
      v22 = sub_24A82C814();
      v24 = v23;
      (*(v12 + 8))(v17, v11);
      v25 = sub_24A68761C(v22, v24, &v56);

      *(v21 + 4) = v25;
      *(v21 + 12) = 2080;
      v26 = sub_24A82C8D4();
      v28 = sub_24A68761C(v26, v27, &v56);

      *(v21 + 14) = v28;
      _os_log_impl(&dword_24A675000, v19, v20, "FMDeviceImageDownloadOperation: response received for URL: %s, data: %s", v21, 0x16u);
      v29 = v53;
      swift_arrayDestroy();
      MEMORY[0x24C21E1D0](v29, -1, -1);
      MEMORY[0x24C21E1D0](v21, -1, -1);
    }

    else
    {

      (*(v12 + 8))(v17, v11);
    }

    v51 = v54;
    v52 = *&v54[OBJC_IVAR____TtC8FMIPCore29FMIPDeviceImageCacheOperation_completion];
    sub_24A681458(a1, a2);
    v52(a1, a2, 0);
    sub_24A67E8E8(a1, a2);
    [v51 setFinished_];
    return sub_24A67E8E8(a1, a2);
  }
}

uint64_t sub_24A6D3B78(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  if (a2)
  {

    v8 = v6;
    v6 = sub_24A82C904();
    v10 = v9;
  }

  else
  {

    v10 = 0xF000000000000000;
  }

  v11 = a3;
  v12 = a4;
  v7(v6, v10, a3, a4);

  sub_24A67E8E8(v6, v10);
}

id FMIPDeviceImageCacheOperation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FMIPDeviceImageCacheOperation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMIPDeviceImageCacheOperation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_24A6D3DC4(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FMIPDeviceImageCacheOperation();
  v7 = objc_allocWithZone(v6);
  v7[OBJC_IVAR____TtC8FMIPCore29FMIPDeviceImageCacheOperation__isFinished] = 0;
  v8 = &v7[OBJC_IVAR____TtC8FMIPCore29FMIPDeviceImageCacheOperation_request];
  v9 = a1[1];
  *v8 = *a1;
  v8[1] = v9;
  v10 = a1[3];
  v8[2] = a1[2];
  v8[3] = v10;
  v11 = &v7[OBJC_IVAR____TtC8FMIPCore29FMIPDeviceImageCacheOperation_completion];
  *v11 = a2;
  v11[1] = a3;
  v13.receiver = v7;
  v13.super_class = v6;
  return objc_msgSendSuper2(&v13, sel_init);
}

uint64_t sub_24A6D3E54(uint64_t a1)
{
  v2 = sub_24A6BBA94(&unk_27EF5CCB8, &qword_24A82FDB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_24A6D3EBC(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  v9 = *(sub_24A82C8B4() - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v11 = *(v4 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_24A6D35D4(a1, a2, a3, a4, v4 + v10, v11);
}

unint64_t sub_24A6D3FAC()
{
  result = qword_27EF5D460;
  if (!qword_27EF5D460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D460);
  }

  return result;
}

void sub_24A6D4000(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = *v3;
    v7[4] = a2;
    v7[5] = a3;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 1107296256;
    v7[2] = sub_24A6D40D8;
    v7[3] = &unk_285DC1E68;
    v6 = _Block_copy(v7);
  }

  else
  {
    v6 = 0;
    v5 = *v3;
  }

  [v5 authenticateWithContext:a1 completion:v6];
  _Block_release(v6);
}

uint64_t sub_24A6D40D8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_24A6BBA94(&qword_27EF5D4A0, &qword_24A832858);
    v4 = sub_24A82CEF4();
  }

  v6 = a3;
  v5(v4, a3);
}

void sub_24A6D4194(uint64_t a1, void *a2, void (*a3)(void), uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v7 = sub_24A82CDC4();
    sub_24A6797D0(v7, qword_281518F88);
    v8 = a2;
    v9 = sub_24A82CD94();
    v10 = sub_24A82D504();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v56 = v12;
      *v11 = 136315138;
      v57 = a2;
      v13 = a2;
      sub_24A6BBA94(&qword_27EF5D468, &qword_24A832790);
      v14 = sub_24A82D024();
      v16 = sub_24A68761C(v14, v15, &v56);

      *(v11 + 4) = v16;
      _os_log_impl(&dword_24A675000, v9, v10, "FMIPAuthKitAuthenticationController: failed to authenticate %s", v11, 0xCu);
      sub_24A6876E8(v12);
      MEMORY[0x24C21E1D0](v12, -1, -1);
      MEMORY[0x24C21E1D0](v11, -1, -1);
    }

    (a3)(0, 0, 0, 0, a2);
    return;
  }

  if (a1)
  {
    v19 = sub_24A82CFC4();
    if (*(a1 + 16))
    {
      v21 = sub_24A6A2D48(v19, v20);
      v23 = v22;

      if (v23)
      {
        v57 = *(*(a1 + 56) + 8 * v21);
        swift_unknownObjectRetain();
        sub_24A6BBA94(&qword_27EF5D4A0, &qword_24A832858);
        if (swift_dynamicCast())
        {
          v24 = sub_24A82CFC4();
          if (*(a1 + 16))
          {
            v26 = sub_24A6A2D48(v24, v25);
            v28 = v27;

            if (v28)
            {
              v56 = *(*(a1 + 56) + 8 * v26);
              swift_unknownObjectRetain();
              if (swift_dynamicCast())
              {
                v29 = v57;
                if (qword_281515DC8 != -1)
                {
                  swift_once();
                }

                v30 = sub_24A82CDC4();
                sub_24A6797D0(v30, qword_281518F88);

                v31 = sub_24A82CD94();
                v32 = sub_24A82D504();

                if (os_log_type_enabled(v31, v32))
                {
                  v55 = v57;
                  v33 = swift_slowAlloc();
                  v34 = swift_slowAlloc();
                  *v33 = 138412290;
                  v35 = sub_24A82CED4();
                  *(v33 + 4) = v35;
                  *v34 = v35;
                  _os_log_impl(&dword_24A675000, v31, v32, "FMIPAuthKitAuthenticationController: authentication results %@", v33, 0xCu);
                  sub_24A67CDA4(v34);
                  MEMORY[0x24C21E1D0](v34, -1, -1);
                  v36 = v33;
                  v29 = v55;
                  MEMORY[0x24C21E1D0](v36, -1, -1);
                }

                *(a5 + OBJC_IVAR____TtC8FMIPCore37FMIPEphemeralAuthenticationController_authenticationResults) = sub_24A6D4900(a1);

                v56 = v29;
                v37 = sub_24A82DB84();
                a3(v37);

                return;
              }
            }
          }

          else
          {
          }

          if (qword_281515DC8 != -1)
          {
            swift_once();
          }

          v51 = sub_24A82CDC4();
          sub_24A6797D0(v51, qword_281518F88);
          v52 = sub_24A82CD94();
          v53 = sub_24A82D504();
          if (os_log_type_enabled(v52, v53))
          {
            v54 = swift_slowAlloc();
            *v54 = 0;
            _os_log_impl(&dword_24A675000, v52, v53, "FMIPAuthKitAuthenticationController: empty dsid", v54, 2u);
            MEMORY[0x24C21E1D0](v54, -1, -1);
          }

          sub_24A6D4CF8();
          v49 = swift_allocError();
          v50 = 1;
LABEL_32:
          *v48 = v50;
          (a3)(0, 0, 0, 0, v49);

          return;
        }
      }
    }

    else
    {
    }

    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v44 = sub_24A82CDC4();
    sub_24A6797D0(v44, qword_281518F88);
    v45 = sub_24A82CD94();
    v46 = sub_24A82D504();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_24A675000, v45, v46, "FMIPAuthKitAuthenticationController: empty password", v47, 2u);
      MEMORY[0x24C21E1D0](v47, -1, -1);
    }

    sub_24A6D4CF8();
    v49 = swift_allocError();
    v50 = 2;
    goto LABEL_32;
  }

  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v38 = sub_24A82CDC4();
  sub_24A6797D0(v38, qword_281518F88);
  v39 = sub_24A82CD94();
  v40 = sub_24A82D504();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&dword_24A675000, v39, v40, "FMIPAuthKitAuthenticationController: empty authentication result", v41, 2u);
    MEMORY[0x24C21E1D0](v41, -1, -1);
  }

  sub_24A6D4CF8();
  v42 = swift_allocError();
  *v43 = 0;
  (a3)(0, 0, 0, 0, v42);
}

unint64_t sub_24A6D4900(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_24A6BBA94(&qword_27EF5D4B0, &qword_24A832860);
    v2 = sub_24A82D974();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = (*(a1 + 48) + 16 * (v13 | (v12 << 6)));
        v16 = *v14;
        v15 = v14[1];

        swift_unknownObjectRetain();
        sub_24A6BBA94(&qword_27EF5D4A0, &qword_24A832858);
        swift_dynamicCast();
        sub_24A6A50DC(&v22, v24);
        sub_24A6A50DC(v24, v25);
        sub_24A6A50DC(v25, &v23);
        result = sub_24A6A2D48(v16, v15);
        if (v17)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v16;
          v9[1] = v15;
          v10 = result;

          v11 = (v2[7] + 32 * v10);
          sub_24A6876E8(v11);
          result = sub_24A6A50DC(&v23, v11);
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v18 = (v2[6] + 16 * result);
          *v18 = v16;
          v18[1] = v15;
          result = sub_24A6A50DC(&v23, (v2[7] + 32 * result));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

id FMIPEphemeralAuthenticationController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FMIPEphemeralAuthenticationController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMIPEphemeralAuthenticationController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_24A6D4CF8()
{
  result = qword_27EF5D4A8;
  if (!qword_27EF5D4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D4A8);
  }

  return result;
}

uint64_t sub_24A6D4D4C(uint64_t a1)
{
  type metadata accessor for FMIPLostModeAction(0);
  if (swift_dynamicCastClass() || (type metadata accessor for FMIPLockAction(0), swift_dynamicCastClass()))
  {
    type metadata accessor for FMLocalize();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v2 = [objc_opt_self() bundleForClass_];
  }

  else
  {
    type metadata accessor for FMIPEraseAction(0);
    swift_dynamicCastClass();
    type metadata accessor for FMLocalize();
    v3 = swift_getObjCClassFromMetadata();
    v2 = [objc_opt_self() bundleForClass_];
  }

  v4 = sub_24A82C6F4();

  return v4;
}

void *sub_24A6D4F1C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  [a1 setIsEphemeral_];
  [a1 setShouldPromptForPasswordOnly_];
  v8 = sub_24A82CF94();
  [a1 setUsername_];

  [a1 setIsUsernameEditable_];
  type metadata accessor for FMLocalize();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = [objc_opt_self() bundleForClass_];
  sub_24A82C6F4();

  sub_24A6BBA94(&qword_27EF5D4B8, &qword_24A832868);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_24A8327A0;
  *(v11 + 56) = MEMORY[0x277D837D0];
  *(v11 + 64) = sub_24A6B243C();
  *(v11 + 32) = a2;
  *(v11 + 40) = a3;

  sub_24A82CFF4();

  v12 = sub_24A82CF94();

  [a1 setReason_];

  sub_24A6D4D4C(a4);
  v13 = sub_24A82CF94();

  [a1 setDefaultButtonString_];

  v14 = objc_opt_self();
  v15 = sub_24A82CF94();
  v16 = sub_24A82CF94();
  LOBYTE(v14) = [v14 BOOLForKey:v15 inDomain:v16];

  if ((v14 & 1) == 0)
  {
    [a1 setAuthenticationType_];
  }

  return a1;
}

unint64_t sub_24A6D51CC()
{
  result = qword_27EF5D4C8;
  if (!qword_27EF5D4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D4C8);
  }

  return result;
}

uint64_t type metadata accessor for FMIPCancelEraseRequest(uint64_t a1)
{
  result = qword_27EF5D4D0;
  if (!qword_27EF5D4D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A6D52BC()
{
  v1 = v0;
  v2 = (*(v0 + qword_27EF78C18) + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device);
  v4 = *v2;
  v3 = v2[1];
  v12 = MEMORY[0x277D837D0];
  *&v11 = v4;
  *(&v11 + 1) = v3;
  v5 = qword_27EF5D920;
  v6 = *(v0 + qword_27EF5D920);

  os_unfair_lock_lock(v6 + 6);

  os_unfair_lock_unlock(v6 + 6);

  sub_24A6A50DC(&v11, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_24A6A4F8C(v10, 0x656369766564, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
  v8 = *(v1 + v5);

  os_unfair_lock_lock((v8 + 24));
  sub_24A6A3D28((v8 + 16));
  os_unfair_lock_unlock((v8 + 24));
}

uint64_t sub_24A6D53F4()
{
  sub_24A6F8F90();

  return swift_deallocClassInstance();
}

uint64_t sub_24A6D5470(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x656B6F5468747561;
  }

  else
  {
    v3 = 0x7263734570696D66;
  }

  if (v2)
  {
    v4 = 0xEE0044495555776FLL;
  }

  else
  {
    v4 = 0xE90000000000006ELL;
  }

  if (*a2)
  {
    v5 = 0x656B6F5468747561;
  }

  else
  {
    v5 = 0x7263734570696D66;
  }

  if (*a2)
  {
    v6 = 0xE90000000000006ELL;
  }

  else
  {
    v6 = 0xEE0044495555776FLL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24A82DC04();
  }

  return v8 & 1;
}

uint64_t sub_24A6D5528()
{
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A6D55BC(uint64_t a1)
{
  sub_24A82D094();
}

uint64_t sub_24A6D563C(uint64_t a1)
{
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A6D56CC@<X0>(char *a2@<X8>)
{
  v3 = sub_24A82D9C4();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_24A6D572C(uint64_t *a1@<X8>)
{
  v2 = 0x7263734570696D66;
  if (*v1)
  {
    v2 = 0x656B6F5468747561;
  }

  v3 = 0xEE0044495555776FLL;
  if (*v1)
  {
    v3 = 0xE90000000000006ELL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_24A6D577C()
{
  if (*v0)
  {
    return 0x656B6F5468747561;
  }

  else
  {
    return 0x7263734570696D66;
  }
}

uint64_t sub_24A6D57C8@<X0>(char *a3@<X8>)
{
  v4 = sub_24A82D9C4();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_24A6D582C(uint64_t a1)
{
  v2 = sub_24A6D5F30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A6D5868(uint64_t a1)
{
  v2 = sub_24A6D5F30();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24A6D58F0(void *a1)
{
  v3 = v1;
  v5 = sub_24A6BBA94(&qword_27EF5D4E0, &qword_24A8329E8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v28 - v7;
  sub_24A67DF6C(a1, a1[3]);
  sub_24A6D5F30();
  sub_24A82DD64();
  if (v2)
  {
    sub_24A6876E8(a1);
    type metadata accessor for FMIPValidatePasswordResponse();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v31[0]) = 1;
    v9 = sub_24A82DA44();
    v11 = v10;
    LOBYTE(v31[0]) = 0;
    v12 = sub_24A82DA44();
    v1[9] = v9;
    v1[10] = v11;
    v1[7] = v12;
    v1[8] = v13;
    sub_24A698230(a1, v31);
    v3 = sub_24A814C20(v31);
    v14 = qword_281515DC8;

    if (v14 != -1)
    {
      swift_once();
    }

    v15 = sub_24A82CDC4();
    sub_24A6797D0(v15, qword_281518F88);
    v16 = sub_24A82CD94();
    v17 = sub_24A82D504();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v29 = v18;
      v19 = swift_slowAlloc();
      v32 = v19;
      *v18 = 136315138;
      v30 = v16;
      v31[0] = v19;
      v20 = sub_24A6D5C40();
      v22 = sub_24A68761C(v20, v21, v31);

      v23 = v29;
      *(v29 + 1) = v22;
      v24 = v17;
      v25 = v30;
      _os_log_impl(&dword_24A675000, v30, v24, "FMIPValidatePasswordResponse: initialized with coder %s", v23, 0xCu);
      v26 = v32;
      sub_24A6876E8(v32);
      MEMORY[0x24C21E1D0](v26, -1, -1);
      MEMORY[0x24C21E1D0](v23, -1, -1);
    }

    else
    {
    }

    (*(v6 + 8))(v8, v5);
    sub_24A6876E8(a1);
  }

  return v3;
}

uint64_t sub_24A6D5C40()
{
  v1 = sub_24A82DDB4();
  MEMORY[0x24C21C9E0](v1);

  MEMORY[0x24C21C9E0](2016419898, 0xE400000000000000);
  sub_24A6CB660();
  v2 = sub_24A82D174();
  MEMORY[0x24C21C9E0](v2);

  MEMORY[0x24C21C9E0](32, 0xE100000000000000);
  sub_24A82D854();

  v3 = *(v0 + 64);
  if (v3)
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (v3)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x24C21C9E0](v4, v5);

  MEMORY[0x24C21C9E0](0x6B6F546874756120, 0xEB000000003A6E65);
  v6 = *(v0 + 80);
  if (v6)
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (v6)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  MEMORY[0x24C21C9E0](v7, v8);

  MEMORY[0x24C21C9E0](15913, 0xE200000000000000);

  MEMORY[0x24C21C9E0](0x5555776F72637365, 0xEB000000003A4449);

  return 60;
}

uint64_t sub_24A6D5E40()
{
}

uint64_t sub_24A6D5E70()
{

  return swift_deallocClassInstance();
}

unint64_t sub_24A6D5F30()
{
  result = qword_27EF5D4E8;
  if (!qword_27EF5D4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D4E8);
  }

  return result;
}

unint64_t sub_24A6D5F98()
{
  result = qword_27EF5D4F0;
  if (!qword_27EF5D4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D4F0);
  }

  return result;
}

unint64_t sub_24A6D5FF0()
{
  result = qword_27EF5D4F8;
  if (!qword_27EF5D4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D4F8);
  }

  return result;
}

unint64_t sub_24A6D6048()
{
  result = qword_27EF5D500;
  if (!qword_27EF5D500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D500);
  }

  return result;
}

uint64_t sub_24A6D60A4()
{
  sub_24A82DCC4();
  sub_24A82D094();
  return sub_24A82DD24();
}

uint64_t sub_24A6D6118(uint64_t a1)
{
  sub_24A82DCC4();
  sub_24A82D094();
  return sub_24A82DD24();
}

uint64_t sub_24A6D616C@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_24A82D9C4();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_24A6D61FC@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_24A82D9C4();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_24A6D6254(uint64_t a1)
{
  v2 = sub_24A6D6434();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A6D6290(uint64_t a1)
{
  v2 = sub_24A6D6434();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FMIPRangingParameters.init(from:)@<X0>(void *a1@<X0>, double *a2@<X8>)
{
  v5 = sub_24A6BBA94(&qword_27EF5D508, &qword_24A832B50);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  sub_24A67DF6C(a1, a1[3]);
  sub_24A6D6434();
  sub_24A82DD64();
  if (!v2)
  {
    sub_24A82DA64();
    v10 = v9;
    (*(v6 + 8))(v8, v5);
    *a2 = v10;
  }

  return sub_24A6876E8(a1);
}

unint64_t sub_24A6D6434()
{
  result = qword_27EF5D510;
  if (!qword_27EF5D510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D510);
  }

  return result;
}

uint64_t FMIPRangingParameters.encode(to:)(void *a1)
{
  v2 = sub_24A6BBA94(&qword_27EF5D518, &qword_24A832B58);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  sub_24A67DF6C(a1, a1[3]);
  sub_24A6D6434();
  sub_24A82DD84();
  sub_24A82DB24();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_24A6D65EC(void *a1)
{
  v2 = sub_24A6BBA94(&qword_27EF5D518, &qword_24A832B58);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  sub_24A67DF6C(a1, a1[3]);
  sub_24A6D6434();
  sub_24A82DD84();
  sub_24A82DB24();
  return (*(v3 + 8))(v5, v2);
}

uint64_t getEnumTagSinglePayload for FMIPRangingParameters.CodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for FMIPRangingParameters.CodingKeys(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}