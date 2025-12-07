uint64_t sub_224AECAB0(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_224A77FD0(result, a2);
  }

  return result;
}

uint64_t sub_224AECAC4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_224AECB0C()
{
  v0 = sub_224DAB258();
  __swift_allocate_value_buffer(v0, qword_27D6F37A8);
  __swift_project_value_buffer(v0, qword_27D6F37A8);
  return sub_224DAB238();
}

void sub_224AECBB8(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_224AECC54(uint64_t a1)
{
  v2 = sub_224DAC2B8();
  v47 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2, v3);
  v48 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v45 - v7;
  v9 = sub_224DACB98();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v45 - v16;
  v18 = sub_224DAC2A8();
  v19 = [v18 extensionIdentity];

  v20 = &v19[*MEMORY[0x277CFA128]];
  swift_beginAccess();
  v21 = *(v20 + 1);

  if (!v21)
  {
    return 1;
  }

  sub_224DACC68();
  (*(v10 + 32))(v14, v17, v9);
  v22 = (*(v10 + 88))(v14, v9);
  result = 1;
  if (v22 != *MEMORY[0x277CF9BF0] && v22 != *MEMORY[0x277CF9B68] && v22 != *MEMORY[0x277CF9B60])
  {
    (*(v10 + 8))(v14, v9);
    if (qword_27D6F2C88 != -1)
    {
      swift_once();
    }

    v24 = sub_224DAB258();
    __swift_project_value_buffer(v24, qword_27D6F37A8);
    v25 = v47;
    v26 = *(v47 + 16);
    v26(v8, a1, v2);
    v27 = v48;
    v26(v48, a1, v2);
    v28 = sub_224DAB228();
    v29 = sub_224DAF2A8();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v45 = v31;
      v46 = swift_slowAlloc();
      v49 = v46;
      *v30 = 138543618;
      v32 = sub_224DAC2A8();
      v33 = [v32 extensionIdentity];

      v34 = *(v25 + 8);
      v34(v8, v2);
      *(v30 + 4) = v33;
      *v31 = v33;
      *(v30 + 12) = 2082;
      v35 = v48;
      v36 = sub_224DAC2A8();
      v37 = [v36 kind];

      v38 = sub_224DAEE18();
      v40 = v39;

      v34(v35, v2);
      v41 = sub_224A33F74(v38, v40, &v49);

      *(v30 + 14) = v41;
      _os_log_impl(&dword_224A2F000, v28, v29, "Forbidding reload of remote control %{public}@:%{public}s.", v30, 0x16u);
      v42 = v45;
      sub_224AD68CC(v45);
      MEMORY[0x22AA5EED0](v42, -1, -1);
      v43 = v46;
      __swift_destroy_boxed_opaque_existential_1(v46);
      MEMORY[0x22AA5EED0](v43, -1, -1);
      MEMORY[0x22AA5EED0](v30, -1, -1);
    }

    else
    {

      v44 = *(v25 + 8);
      v44(v27, v2);
      v44(v8, v2);
    }

    return 0;
  }

  return result;
}

uint64_t sub_224AED168()
{
  v0 = sub_224DAB258();
  __swift_allocate_value_buffer(v0, qword_281351568);
  __swift_project_value_buffer(v0, qword_281351568);
  return sub_224DAB238();
}

void sub_224AED1EC(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v75 = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v64 - v7;
  if (!sub_224AED9F0())
  {
    if (qword_281351560 != -1)
    {
      swift_once();
    }

    v20 = sub_224DAB258();
    __swift_project_value_buffer(v20, qword_281351568);
    v12 = sub_224DAB228();
    v21 = sub_224DAF2A8();
    if (!os_log_type_enabled(v12, v21))
    {
      goto LABEL_12;
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = "Unable to fetch network authorization status:  ct server connection unavailable.";
    v16 = v21;
    v17 = v12;
    v18 = v14;
    v19 = 2;
    goto LABEL_11;
  }

  v74 = 0;
  sub_224DA9FE8();
  v9 = sub_224DAEDE8();

  v10 = _CTServerConnectionCopyCellularUsagePolicy();

  if (v10)
  {
    goto LABEL_3;
  }

  v22 = v74;
  if (!v74)
  {
    goto LABEL_3;
  }

  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

    goto LABEL_3;
  }

  v72 = 0;
  sub_224DAECD8();

  v23 = v72;
  if (!v72)
  {
LABEL_3:
    if (qword_281351560 != -1)
    {
      swift_once();
    }

    v11 = sub_224DAB258();
    __swift_project_value_buffer(v11, qword_281351568);
    v12 = sub_224DAB228();
    v13 = sub_224DAF2A8();
    if (!os_log_type_enabled(v12, v13))
    {
      goto LABEL_12;
    }

    v14 = swift_slowAlloc();
    *v14 = 67240448;
    *(v14 + 4) = v10;
    *(v14 + 8) = 1026;
    *(v14 + 10) = HIDWORD(v10);
    v15 = "Unable to fetch network authorization status for error: domain = %{public}d, code = %{public}d";
    v16 = v13;
    v17 = v12;
    v18 = v14;
    v19 = 14;
LABEL_11:
    _os_log_impl(&dword_224A2F000, v17, v16, v15, v18, v19);
    MEMORY[0x22AA5EED0](v14, -1, -1);
LABEL_12:

    *a2 = 0;
    return;
  }

  if (!*MEMORY[0x277CC3988])
  {
    __break(1u);
    goto LABEL_68;
  }

  v24 = sub_224DAEE18();
  v26 = *(v23 + 16);
  v69 = v5;
  if (!v26)
  {

    goto LABEL_26;
  }

  v27 = sub_224A3A40C(v24, v25);
  v29 = v28;

  if ((v29 & 1) == 0)
  {
LABEL_26:
    v67 = 0;
    v32 = 0;
    goto LABEL_27;
  }

  v71 = *(*(v23 + 56) + 8 * v27);
  swift_unknownObjectRetain();
  v30 = swift_dynamicCast();
  v31 = v72;
  if (!v30)
  {
    v31 = 0;
  }

  v67 = v31;
  if (v30)
  {
    v32 = v73;
  }

  else
  {
    v32 = 0;
  }

LABEL_27:
  if (!*MEMORY[0x277CC4368])
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v33 = sub_224DAEE18();
  v35 = *(v23 + 16);
  v70 = v32;
  if (v35)
  {
    v36 = sub_224A3A40C(v33, v34);
    v38 = v37;

    if (v38)
    {
      v71 = *(*(v23 + 56) + 8 * v36);
      swift_unknownObjectRetain();
      v39 = swift_dynamicCast();
      v40 = v72;
      if (!v39)
      {
        v40 = 0;
      }

      v68 = v40;
      if (v39)
      {
        v41 = v73;
      }

      else
      {
        v41 = 0;
      }
    }

    else
    {
      v68 = 0;
      v41 = 0;
    }

    v32 = v70;
  }

  else
  {

    v68 = 0;
    v41 = 0;
  }

  v42 = MEMORY[0x277CC3998];
  if (v32)
  {
    if (*MEMORY[0x277CC3998])
    {
      if (v67 == sub_224DAEE18() && v32 == v43)
      {

        LODWORD(v32) = 0;
      }

      else
      {
        v44 = sub_224DAFD88();

        LODWORD(v32) = v44 ^ 1;
      }

      v42 = MEMORY[0x277CC3998];
      goto LABEL_45;
    }

LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

LABEL_45:
  if (!v41)
  {
    goto LABEL_49;
  }

  if (!*v42)
  {
LABEL_70:
    __break(1u);
    return;
  }

  if (v68 != sub_224DAEE18() || v41 != v45)
  {
    v46 = v32;
    v47 = sub_224DAFD88();

    v48 = v47 ^ 1;
    LODWORD(v32) = v46;
    if ((v48 | v46))
    {
      LODWORD(v68) = v48;
      LODWORD(v67) = 0;
      goto LABEL_53;
    }

LABEL_54:
    LODWORD(v68) = 0;
    LODWORD(v70) = 2;
    LODWORD(v67) = 1;
    goto LABEL_55;
  }

LABEL_49:

  if ((v32 & 1) == 0)
  {
    goto LABEL_54;
  }

  LODWORD(v67) = 0;
  LODWORD(v68) = 0;
LABEL_53:
  LODWORD(v70) = 1;
LABEL_55:
  v49 = v69;
  if (qword_281351560 != -1)
  {
    swift_once();
  }

  v50 = sub_224DAB258();
  __swift_project_value_buffer(v50, qword_281351568);
  (*(v49 + 16))(v8, a1, v4);
  v51 = sub_224DAB228();
  v52 = sub_224DAF2A8();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v65 = v32;
    v54 = v53;
    v66 = swift_slowAlloc();
    v72 = v66;
    *v54 = 136446978;
    sub_224A33088(&qword_281351940, &qword_27D6F3900, &unk_224DB4640, MEMORY[0x277CF9FC8]);
    v55 = sub_224DAFD28();
    v56 = v49;
    v58 = v57;
    (*(v56 + 8))(v8, v4);
    v59 = sub_224A33F74(v55, v58, &v72);

    *(v54 + 4) = v59;
    *(v54 + 12) = 2082;
    if (v67)
    {
      v60 = 0x6465696E6564;
    }

    else
    {
      v60 = 0x6465776F6C6C61;
    }

    if (v67)
    {
      v61 = 0xE600000000000000;
    }

    else
    {
      v61 = 0xE700000000000000;
    }

    v62 = sub_224A33F74(v60, v61, &v72);

    *(v54 + 14) = v62;
    *(v54 + 22) = 1026;
    *(v54 + 24) = v68 & 1;
    *(v54 + 28) = 1026;
    *(v54 + 30) = v65 & 1;
    _os_log_impl(&dword_224A2F000, v51, v52, "Network authorization status for %{public}s = %{public}s (wifi=%{BOOL,public}d, cellular=%{BOOL,public}d)", v54, 0x22u);
    v63 = v66;
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v63, -1, -1);
    MEMORY[0x22AA5EED0](v54, -1, -1);
  }

  else
  {

    (*(v49 + 8))(v8, v4);
  }

  *a2 = v70;
}

uint64_t sub_224AED9F0()
{
  v1 = v0;
  os_unfair_lock_assert_owner(*(*(v0 + 32) + 16));
  result = *(v0 + 24);
  if (!result)
  {
    v3 = sub_224DAEDE8();
    sub_224AC319C();
    v4 = sub_224DAF3D8();
    v7[4] = sub_224AEFFA4;
    v7[5] = v1;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 1107296256;
    v7[2] = sub_224AEDD30;
    v7[3] = &block_descriptor_48;
    v5 = _Block_copy(v7);

    v6 = _CTServerConnectionCreateOnTargetQueue();
    _Block_release(v5);

    *(v1 + 24) = v6;
    _CTServerConnectionRegisterForNotification();
    return *(v1 + 24);
  }

  return result;
}

double sub_224AEDB38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *MEMORY[0x277CC3B50];
  if (a1)
  {
    if (!v3)
    {
      return result;
    }

    type metadata accessor for CFString(0);
    sub_224A80E28(&qword_281350B40, type metadata accessor for CFString, &unk_224DB303C);
    v4 = v3;
    v5 = sub_224DAA668();

    if ((v5 & 1) == 0)
    {
      return result;
    }
  }

  else if (v3)
  {
    return result;
  }

  if (qword_281351560 != -1)
  {
    swift_once();
  }

  v7 = sub_224DAB258();
  __swift_project_value_buffer(v7, qword_281351568);
  v8 = sub_224DAB228();
  v9 = sub_224DAF2A8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_224A2F000, v8, v9, "Received CT notification that network access policy has changed.", v10, 2u);
    MEMORY[0x22AA5EED0](v10, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4A10, &unk_224DB4000);
  sub_224A33088(&qword_281350EF0, &qword_27D6F4A10, &unk_224DB4000, MEMORY[0x277CBCE18]);
  sub_224DAB398();

  return result;
}

void sub_224AEDD30(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_224AEDDBC()
{

  return swift_deallocClassInstance();
}

uint64_t sub_224AEDE20()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4A10, &unk_224DB4000);
  sub_224A33088(&qword_281350EE0, &qword_27D6F4A10, &unk_224DB4000, MEMORY[0x277CBCE20]);
  return sub_224DAB3A8();
}

double sub_224AEDEB0()
{
  v1 = sub_224DAB7B8();
  v15 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_224DAB848();
  v5 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v0 + 16);
  aBlock[4] = sub_224AEFF4C;
  v18 = v0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224A39F40;
  aBlock[3] = &block_descriptor_5;
  v10 = _Block_copy(aBlock);
  v11 = v9;

  sub_224DAB7E8();
  v16 = MEMORY[0x277D84F90];
  sub_224A80E28(&qword_281350ED0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
  sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0, MEMORY[0x277D83970]);
  sub_224DAF788();
  MEMORY[0x22AA5D760](0, v8, v4, v10);
  _Block_release(v10);

  (*(v15 + 8))(v4, v1);
  (*(v5 + 8))(v8, v14);

  return result;
}

double sub_224AEE170(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F37C8, &unk_224DB4020);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v39 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v39 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F51B0, &unk_224DB4030);
  MEMORY[0x28223BE20](v11, v12);
  v16 = &v39 - v15;
  if ((*(a1 + 121) & 1) == 0)
  {
    *(a1 + 120) = 257;
    v41 = v2;
    v46 = v13;
    sub_224AEF458();
    *(a1 + 120) = 0;
    v17 = *(a1 + 96);
    v18 = __swift_project_boxed_opaque_existential_1((a1 + 72), v17);
    v45 = &v39;
    v19 = *(v17 - 8);
    v50 = v3;
    v20 = v19;
    MEMORY[0x28223BE20](v18, v18);
    v22 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v20 + 16))(v22);
    type metadata accessor for _CTNetworkService();
    v23 = sub_224AEDE20();
    (*(v20 + 8))(v22, v17);
    v51 = v23;
    v52 = *(a1 + 16);
    v24 = v52;
    v48 = sub_224DAF358();
    v25 = *(v48 - 8);
    v49 = *(v25 + 56);
    v43 = v25 + 56;
    v49(v10, 1, 1, v48);
    v26 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5200, &qword_224DBA810);
    v27 = sub_224AC319C();
    v40 = v6;
    v47 = v27;
    v44 = MEMORY[0x277CBCD90];
    sub_224A33088(&qword_281350FF0, &qword_27D6F5200, &qword_224DBA810, MEMORY[0x277CBCD90]);
    v42 = sub_224A80E28(&qword_281350A80, sub_224AC319C, MEMORY[0x277D85228]);
    sub_224DAB448();
    sub_224AD3910(v10);

    swift_allocObject();
    swift_weakInit();
    v28 = MEMORY[0x277CBCD60];
    sub_224A33088(&unk_2813511F0, &qword_27D6F51B0, &unk_224DB4030, MEMORY[0x277CBCD60]);
    sub_224DAB488();

    (*(v46 + 8))(v16, v11);
    swift_beginAccess();
    sub_224DAB308();
    swift_endAccess();

    __swift_project_boxed_opaque_existential_1((a1 + 24), *(a1 + 48));
    v51 = sub_224DAC688();
    v52 = *(a1 + 16);
    v29 = v52;
    v49(v10, 1, 1, v48);
    v30 = v29;
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5500, &unk_224DB4040);
    v46 = sub_224A33088(&qword_281351048, &unk_27D6F5500, &unk_224DB4040, v44);
    v31 = v40;
    sub_224DAB448();
    sub_224AD3910(v10);

    swift_allocObject();
    swift_weakInit();
    v39 = sub_224A33088(&qword_281351230, &qword_27D6F37C8, &unk_224DB4020, v28);
    v32 = v41;
    sub_224DAB488();

    v33 = *(v50 + 8);
    v50 += 8;
    v44 = v33;
    v33(v31, v32);
    swift_beginAccess();
    sub_224DAB308();
    swift_endAccess();

    __swift_project_boxed_opaque_existential_1((a1 + 24), *(a1 + 48));
    v51 = sub_224DAC6A8();
    v52 = *(a1 + 16);
    v34 = v52;
    v35 = v48;
    v49(v10, 1, 1, v48);
    v36 = v34;
    sub_224DAB448();
    sub_224AD3910(v10);

    swift_allocObject();
    swift_weakInit();
    sub_224DAB488();

    v44(v31, v32);
    swift_beginAccess();
    sub_224DAB308();
    swift_endAccess();

    __swift_project_boxed_opaque_existential_1((a1 + 24), *(a1 + 48));
    v51 = sub_224DAC698();
    v52 = *(a1 + 16);
    v37 = v52;
    v49(v10, 1, 1, v35);
    v38 = v37;
    sub_224DAB448();
    sub_224AD3910(v10);

    swift_allocObject();
    swift_weakInit();
    sub_224DAB488();

    v44(v31, v32);
    swift_beginAccess();
    sub_224DAB308();
    swift_endAccess();
  }

  return result;
}

double sub_224AEEA1C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_224AEF458();
  }

  return result;
}

double sub_224AEEA74(uint64_t *a1, uint64_t a2, char a3)
{
  v4 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_224AEEB48(v4, a3 & 1);
  }

  return result;
}

double sub_224AEEAE8(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_224AEEF9C(v2);
  }

  return result;
}

double sub_224AEEB48(uint64_t a1, int a2)
{
  v44 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v48 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4, v5);
  v8 = &v43[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6, v9);
  v47 = &v43[-v10];
  v49 = v2;
  BSDispatchQueueAssert();
  if (qword_281351560 != -1)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v11 = sub_224DAB258();
    __swift_project_value_buffer(v11, qword_281351568);

    v12 = sub_224DAB228();
    v13 = sub_224DAF2A8();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v16 = v15;
      v52 = v15;
      *v14 = 136446210;
      v17 = *(a1 + 16);
      v18 = MEMORY[0x277D84F90];
      if (v17)
      {
        v45 = v15;
        v46 = v14;
        v51 = MEMORY[0x277D84F90];
        sub_224DAF9E8();
        v19 = a1 + 32;
        do
        {
          sub_224A3317C(v19, v50);
          __swift_project_boxed_opaque_existential_1(v50, v50[3]);
          sub_224DAE338();
          __swift_destroy_boxed_opaque_existential_1(v50);
          sub_224DAF9B8();
          sub_224DAF9F8();
          sub_224DAFA08();
          sub_224DAF9C8();
          v19 += 40;
          --v17;
        }

        while (v17);
        v18 = v51;
        v16 = v45;
        v14 = v46;
      }

      v20 = sub_224DAF538();
      v21 = MEMORY[0x22AA5D380](v18, v20);
      v23 = v22;

      v24 = sub_224A33F74(v21, v23, &v52);

      *(v14 + 4) = v24;
      _os_log_impl(&dword_224A2F000, v12, v13, "Processing extensions added or updated: %{public}s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x22AA5EED0](v16, -1, -1);
      MEMORY[0x22AA5EED0](v14, -1, -1);
    }

    v25 = sub_224AEFD7C(a1);
    v26 = v25;
    v27 = v25 + 56;
    v28 = 1 << *(v25 + 32);
    v29 = -1;
    if (v28 < 64)
    {
      v29 = ~(-1 << v28);
    }

    v30 = v29 & *(v25 + 56);
    swift_beginAccess();
    v31 = 0;
    v32 = (v28 + 63) >> 6;
    v45 = (v48 + 32);
    v46 = v48 + 16;
    a1 = v48 + 8;
    if (v30)
    {
      while (1)
      {
LABEL_15:
        v35 = v47;
        v34 = v48;
        (*(v48 + 16))(v47, *(v26 + 48) + *(v48 + 72) * (__clz(__rbit64(v30)) | (v31 << 6)), v4);
        v36 = v35;
        v37 = v4;
        (*(v34 + 32))(v8, v36, v4);
        v38 = *(v49 + 112);
        if (!*(v38 + 16))
        {
          goto LABEL_20;
        }

        v39 = sub_224A89A08(v8);
        if ((v40 & 1) == 0)
        {
          break;
        }

        v41 = *(*(v38 + 56) + v39);

        if (!v41)
        {
          goto LABEL_20;
        }

LABEL_21:
        v30 &= v30 - 1;
        v4 = v37;
        (*a1)(v8, v37);
        if (!v30)
        {
          goto LABEL_11;
        }
      }

LABEL_20:
      sub_224AEF640(v8, v44 & 1);
      goto LABEL_21;
    }

LABEL_11:
    v33 = v31 + 1;
    if (!__OFADD__(v31, 1))
    {
      break;
    }

    __break(1u);
LABEL_25:
    swift_once();
  }

  if (v33 < v32)
  {
    v30 = *(v27 + 8 * v33);
    ++v31;
    if (v30)
    {
      v31 = v33;
      goto LABEL_15;
    }

    goto LABEL_11;
  }

  return result;
}

double sub_224AEEF9C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v48 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4, v5);
  v8 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v44 = v43 - v10;
  BSDispatchQueueAssert();
  if (qword_281351560 != -1)
  {
LABEL_26:
    swift_once();
  }

  v11 = sub_224DAB258();
  __swift_project_value_buffer(v11, qword_281351568);

  v12 = sub_224DAB228();
  v13 = sub_224DAF2A8();

  if (os_log_type_enabled(v12, v13))
  {
    v47 = v4;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = v15;
    v51 = v15;
    *v14 = 136446210;
    v17 = *(a1 + 16);
    v18 = MEMORY[0x277D84F90];
    if (v17)
    {
      v45 = v15;
      v46 = v14;
      v50 = MEMORY[0x277D84F90];
      sub_224DAF9E8();
      v19 = a1 + 32;
      do
      {
        sub_224A3317C(v19, v49);
        __swift_project_boxed_opaque_existential_1(v49, v49[3]);
        sub_224DAE338();
        __swift_destroy_boxed_opaque_existential_1(v49);
        sub_224DAF9B8();
        sub_224DAF9F8();
        sub_224DAFA08();
        sub_224DAF9C8();
        v19 += 40;
        --v17;
      }

      while (v17);
      v18 = v50;
      v16 = v45;
      v14 = v46;
    }

    v20 = sub_224DAF538();
    v21 = MEMORY[0x22AA5D380](v18, v20);
    v23 = v22;

    v24 = sub_224A33F74(v21, v23, &v51);

    *(v14 + 4) = v24;
    _os_log_impl(&dword_224A2F000, v12, v13, "Processing extensions removed: %{public}s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x22AA5EED0](v16, -1, -1);
    MEMORY[0x22AA5EED0](v14, -1, -1);

    v4 = v47;
  }

  else
  {
  }

  v25 = sub_224AEFD7C(a1);
  v26 = 0;
  v27 = v25 + 56;
  v28 = 1 << *(v25 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  a1 = v29 & *(v25 + 56);
  v30 = (v28 + 63) >> 6;
  v43[0] = v48 + 32;
  v43[1] = v48 + 16;
  v46 = (v48 + 8);
  v47 = v25;
  while (a1)
  {
LABEL_20:
    v32 = v48;
    v33 = *(v47 + 48);
    v45 = *(v48 + 72);
    v34 = v44;
    (*(v48 + 16))(v44, v33 + v45 * (__clz(__rbit64(a1)) | (v26 << 6)), v4);
    (*(v32 + 32))(v8, v34, v4);
    __swift_project_boxed_opaque_existential_1(v2 + 3, v2[6]);
    v35 = *(sub_224DAC668() + 16);

    if (!v35)
    {
      v36 = v45;
      swift_beginAccess();
      v37 = sub_224A89A08(v8);
      if (v38)
      {
        v39 = v37;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v41 = v2[14];
        v51 = v41;
        v2[14] = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_224B25894();
          v41 = v51;
        }

        (*v46)(*(v41 + 48) + v39 * v36, v4);
        sub_224B1BFA4(v39, v41);
        v2[14] = v41;
      }

      swift_endAccess();
    }

    a1 &= a1 - 1;
    (*v46)(v8, v4);
  }

  while (1)
  {
    v31 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      __break(1u);
      goto LABEL_26;
    }

    if (v31 >= v30)
    {
      break;
    }

    a1 = *(v27 + 8 * v31);
    ++v26;
    if (a1)
    {
      v26 = v31;
      goto LABEL_20;
    }
  }

  return result;
}

void sub_224AEF458()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v16 - v4;
  BSDispatchQueueAssert();
  v6 = *(v0 + 48);
  v17 = v0;
  __swift_project_boxed_opaque_existential_1((v0 + 24), v6);
  v7 = sub_224DAC678();
  v8 = sub_224AEFD7C(v7);

  v9 = 0;
  v10 = 1 << *(v8 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v8 + 56);
  v13 = (v10 + 63) >> 6;
  v16 = v2 + 16;
  while (v12)
  {
    v14 = v9;
LABEL_9:
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    (*(v2 + 16))(v5, *(v8 + 48) + *(v2 + 72) * (v15 | (v14 << 6)), v1);
    sub_224AEF640(v5, 0);
    (*(v2 + 8))(v5, v1);
  }

  while (1)
  {
    v14 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v14 >= v13)
    {

      return;
    }

    v12 = *(v8 + 56 + 8 * v14);
    ++v9;
    if (v12)
    {
      v9 = v14;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_224AEF640(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v53 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v47 - v8;
  v10 = type metadata accessor for NetworkAuthorizationChangeInfo(0);
  v52 = *(v10 - 1);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  BSDispatchQueueAssert();
  sub_224A3317C(v2 + 72, v56);
  v14 = *(*__swift_project_boxed_opaque_existential_1(v56, v56[3]) + 32);
  v15 = *(v14 + 16);

  os_unfair_lock_lock(v15);
  sub_224AED1EC(a1, v55);
  os_unfair_lock_unlock(*(v14 + 16));

  v16 = LOBYTE(v55[0]);
  __swift_destroy_boxed_opaque_existential_1(v56);
  result = swift_beginAccess();
  v18 = *(v3 + 112);
  if (*(v18 + 16))
  {

    v19 = sub_224A89A08(a1);
    if (v20)
    {
      v21 = *(*(v18 + 56) + v19);

      if (v21 == v16)
      {
        return result;
      }

      goto LABEL_8;
    }
  }

  if (!v16)
  {
    return result;
  }

  v21 = 0;
LABEL_8:
  v51 = v9;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v54 = *(v3 + 112);
  *(v3 + 112) = 0x8000000000000000;
  sub_224B1FD04(v16, a1, isUniquelyReferenced_nonNull_native);
  *(v3 + 112) = v54;
  swift_endAccess();
  v23 = *(v3 + 120) | a2;
  v24 = *(v53 + 16);
  v24(&v13[v10[5]], a1, v6);
  v49 = v23;
  v50 = v21;
  *v13 = v23 & 1;
  v13[v10[6]] = v21;
  v13[v10[7]] = v16;
  if (qword_281351560 != -1)
  {
    swift_once();
  }

  v25 = sub_224DAB258();
  __swift_project_value_buffer(v25, qword_281351568);
  v26 = v51;
  v24(v51, a1, v6);
  v27 = sub_224DAB228();
  v28 = sub_224DAF2A8();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v55[0] = v48;
    *v29 = 136446978;
    sub_224A33088(&qword_281351940, &qword_27D6F3900, &unk_224DB4640, MEMORY[0x277CF9FC8]);
    v30 = sub_224DAFD28();
    v32 = v31;
    (*(v53 + 8))(v26, v6);
    v33 = sub_224A33F74(v30, v32, v55);

    *(v29 + 4) = v33;
    *(v29 + 12) = 2082;
    v34 = 0xE700000000000000;
    v35 = 0x6465776F6C6C61;
    if (v50 != 1)
    {
      v35 = 0x6465696E6564;
      v34 = 0xE600000000000000;
    }

    if (v50)
    {
      v36 = v35;
    }

    else
    {
      v36 = 0x6E776F6E6B6E75;
    }

    if (v50)
    {
      v37 = v34;
    }

    else
    {
      v37 = 0xE700000000000000;
    }

    v38 = sub_224A33F74(v36, v37, v55);

    *(v29 + 14) = v38;
    *(v29 + 22) = 2082;
    v39 = 0xE700000000000000;
    v40 = 0x6465776F6C6C61;
    if (v16 != 1)
    {
      v40 = 0x6465696E6564;
      v39 = 0xE600000000000000;
    }

    if (v16)
    {
      v41 = v40;
    }

    else
    {
      v41 = 0x6E776F6E6B6E75;
    }

    if (v16)
    {
      v42 = v39;
    }

    else
    {
      v42 = 0xE700000000000000;
    }

    v43 = sub_224A33F74(v41, v42, v55);

    *(v29 + 24) = v43;
    *(v29 + 32) = 1026;
    *(v29 + 34) = v49 & 1;
    _os_log_impl(&dword_224A2F000, v27, v28, "Network authorization status changed for %{public}s from %{public}s to %{public}s, initial publish for container? %{BOOL,public}d", v29, 0x26u);
    v44 = v48;
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v44, -1, -1);
    MEMORY[0x22AA5EED0](v29, -1, -1);
  }

  else
  {

    (*(v53 + 8))(v26, v6);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F37C0, &unk_224DB4010);
  v45 = (*(v52 + 80) + 32) & ~*(v52 + 80);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_224DB3100;
  sub_224AEFCBC(v13, v46 + v45);
  v55[0] = v46;

  sub_224DAB348();

  return sub_224AEFD20(v13);
}

uint64_t sub_224AEFC38()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  __swift_destroy_boxed_opaque_existential_1((v0 + 72));

  return swift_deallocClassInstance();
}

uint64_t sub_224AEFCBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NetworkAuthorizationChangeInfo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_224AEFD20(uint64_t a1)
{
  v2 = type metadata accessor for NetworkAuthorizationChangeInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_224AEFD7C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v14 - v5;
  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v15 = MEMORY[0x277D84F90];
    sub_224ADA2AC(0, v7, 0);
    v8 = v15;
    v9 = a1 + 32;
    do
    {
      sub_224A3317C(v9, v14);
      __swift_project_boxed_opaque_existential_1(v14, v14[3]);
      sub_224DAE328();
      sub_224DA9FF8();
      __swift_destroy_boxed_opaque_existential_1(v14);
      v15 = v8;
      v11 = *(v8 + 16);
      v10 = *(v8 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_224ADA2AC((v10 > 1), v11 + 1, 1);
        v8 = v15;
      }

      *(v8 + 16) = v11 + 1;
      (*(v3 + 32))(v8 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v11, v6, v2);
      v9 += 40;
      --v7;
    }

    while (v7);
  }

  v12 = sub_224A40C50(v8);

  return v12;
}

uint64_t sub_224AEFFB4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_224DA9598();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v18[-4] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_224DA9688();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v12 = &v18[-4] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v18[-4] - v14;
  sub_224DA9CA8();
  strcpy(v18, "replicatorTmp");
  v18[7] = -4864;
  (*(v3 + 104))(v6, *MEMORY[0x277CC91D8], v2);
  sub_224AFC154();
  sub_224DA9678();
  (*(v3 + 8))(v6, v2);
  (*(v8 + 8))(v12, v7);
  (*(v8 + 32))(a1, v15, v7);
  return (*(v8 + 56))(a1, 0, 1, v7);
}

unint64_t sub_224AF02C0(char a1)
{
  result = 0x6F69736E65747865;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0xD000000000000017;
      break;
    case 5:
      result = 0xD000000000000014;
      break;
    case 6:
      return result;
    case 7:
      result = 1852793705;
      break;
    case 8:
    case 9:
    case 10:
      result = 0xD000000000000016;
      break;
    case 11:
      v3 = 13;
      goto LABEL_6;
    case 12:
      v3 = 10;
LABEL_6:
      result = v3 | 0xD000000000000010;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_224AF0428(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_224AF02C0(*a1);
  v5 = v4;
  if (v3 == sub_224AF02C0(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_224DAFD88();
  }

  return v8 & 1;
}

uint64_t sub_224AF04B0()
{
  v1 = *v0;
  sub_224DAFE68();
  sub_224AF02C0(v1);
  sub_224DAEE78();

  return sub_224DAFEA8();
}

uint64_t sub_224AF0514(uint64_t a1)
{
  sub_224AF02C0(*v1);
  sub_224DAEE78();
}

uint64_t sub_224AF0568(uint64_t a1)
{
  v2 = *v1;
  sub_224DAFE68();
  sub_224AF02C0(v2);
  sub_224DAEE78();

  return sub_224DAFEA8();
}

unint64_t sub_224AF05C8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_224AFC108(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_224AF05F8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_224AF02C0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_224AF0624()
{
  v0 = sub_224DAAB88();
  MEMORY[0x28223BE20](v0 - 8, v1);
  v79 = &v73 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_224DAB1C8();
  v3 = *(v91 - 8);
  MEMORY[0x28223BE20](v91, v4);
  v6 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_224DAB1B8();
  v7 = *(v88 - 8);
  MEMORY[0x28223BE20](v88, v8);
  v10 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F37D0, &qword_224DB4110);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6FF0, &unk_224DB4118);
  v11 = *(v84 - 8);
  v87 = *(v11 + 72);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  v78 = v13;
  *(v13 + 16) = xmmword_224DB4050;
  v14 = v13 + v12;
  *(v13 + v12) = 6;
  v82 = *MEMORY[0x277D46898];
  v15 = *(v7 + 104);
  v89 = v7 + 104;
  v90 = v15;
  v15(v10);
  v81 = *MEMORY[0x277D468F8];
  v16 = *(v3 + 104);
  v17 = v91;
  v16(v6);
  v85 = v3 + 104;
  v86 = v16;
  sub_224DAAB58();
  v83 = v14;
  v73 = v10;
  v18 = v6;
  sub_224DAB0E8();
  v19 = v87;
  v20 = v84;
  v80 = *(v84 + 48);
  *(v14 + v87) = 7;
  v90(v10, v82, v88);
  v21 = v81;
  (v16)(v18, v81, v17);
  sub_224DAAB58();
  v22 = v73;
  v23 = v18;
  sub_224DAB0E8();
  v80 = 2 * v19;
  v24 = v83;
  v25 = *(v20 + 48);
  *(v83 + 2 * v19) = 10;
  v76 = "configuration-snapshot";
  v77 = v25;
  v82 = *MEMORY[0x277D468A8];
  v26 = v90;
  (v90)(v22);
  v86(v23, v21, v91);
  sub_224DAAB58();
  sub_224DAB0E8();
  v28 = v87;
  v27 = v88;
  v29 = (v24 + v80 + v87);
  v30 = v84;
  v77 = *(v84 + 48);
  *v29 = 9;
  v75 = v29;
  v76 = "configuration-activity";
  v31 = v82;
  v26(v22, v82, v27);
  LODWORD(v80) = *MEMORY[0x277D46908];
  v32 = v23;
  (v86)(v23);
  sub_224DAAB58();
  sub_224DAB0E8();
  v77 = 4 * v28;
  v33 = v83;
  v76 = *(v30 + 48);
  *(v83 + 4 * v28) = 12;
  v34 = v88;
  v35 = v90;
  v90(v22, v31, v88);
  v86(v32, v81, v91);
  sub_224DAAB58();
  sub_224DAB0E8();
  v36 = v87;
  v37 = *(v84 + 48);
  *(v33 + v77 + v87) = 11;
  v76 = "configuration-timeline";
  v77 = v37;
  v35(v22, v82, v34);
  v38 = v91;
  v39 = v86;
  v86(v32, v80, v91);
  sub_224DAAB58();
  sub_224DAB0E8();
  v40 = v84;
  v41 = *(v84 + 48);
  *(v33 + 6 * v36) = 8;
  v76 = "live";
  v77 = v41;
  v42 = v82;
  v43 = v88;
  v90(v22, v82, v88);
  v39(v32, v81, v38);
  sub_224DAAB58();
  sub_224DAB0E8();
  v44 = 8 * v87;
  v45 = v83;
  v75 = *(v40 + 48);
  v76 = (8 * v87);
  *(v83 + 7 * v87) = 3;
  v74 = "archive-snapshot";
  v46 = v90;
  v90(v22, v42, v43);
  LODWORD(v77) = *MEMORY[0x277D468F0];
  v47 = v91;
  v48 = v86;
  (v86)(v32);
  sub_224DAAB58();
  sub_224DAB0E8();
  v49 = (v45 + v44);
  v50 = v84;
  v51 = *(v84 + 48);
  *v49 = 2;
  v74 = "archive-placeholder";
  v75 = v51;
  v52 = v82;
  v46(v22, v82, v88);
  v48(v32, v80, v47);
  sub_224DAAB58();
  sub_224DAB0E8();
  v53 = v87;
  v54 = v83;
  v55 = *(v50 + 48);
  v76[v87 + v83] = 5;
  v75 = "archive-control-preview";
  v76 = v55;
  v56 = v52;
  v57 = v88;
  v90(v22, v56, v88);
  v58 = v86;
  v86(v32, v77, v91);
  sub_224DAAB58();
  sub_224DAB0E8();
  v59 = v84;
  v60 = *(v84 + 48);
  *(v54 + 10 * v53) = 4;
  v76 = "archive-timeline";
  v77 = v60;
  v61 = v82;
  v62 = v90;
  v90(v22, v82, v57);
  v63 = v91;
  v58(v32, v80, v91);
  sub_224DAAB58();
  sub_224DAB0E8();
  v64 = v83;
  v80 = *(v59 + 48);
  *(v83 + 11 * v87) = 1;
  v77 = "archive-activity";
  v65 = v61;
  v66 = v88;
  v62(v22, v65, v88);
  v67 = v81;
  v68 = v63;
  v69 = v86;
  v86(v32, v81, v68);
  sub_224DAAB58();
  sub_224DAB0E8();
  v70 = (v64 + 12 * v87);
  v87 = *(v59 + 48);
  *v70 = 0;
  v90(v22, v82, v66);
  v69(v32, v67, v91);
  sub_224DAAB58();
  sub_224DAB0D8();
  v71 = sub_224DA0398(v78);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_2813652C8 = v71;
  return result;
}

uint64_t sub_224AF1128()
{
  v0 = sub_224DAAB88();
  MEMORY[0x28223BE20](v0 - 8, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F37E0, &unk_224DB4130);
  sub_224DAB1A8();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_224DB4060;
  sub_224DAAB58();
  sub_224DAB198();
  sub_224DAAB58();
  sub_224DAB198();
  sub_224DAAB58();
  sub_224DAB198();
  sub_224DAAB58();
  sub_224DAB198();
  sub_224DAAB58();
  sub_224DAB198();
  sub_224DAAB58();
  result = sub_224DAB198();
  qword_2813652A8 = v2;
  return result;
}

uint64_t sub_224AF1380()
{
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F37D8, &qword_224DB4128);
  v1 = MEMORY[0x28223BE20](v56, v0);
  v55 = &v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v1, v3);
  v54 = &v45 - v5;
  MEMORY[0x28223BE20](v4, v6);
  v53 = &v45 - v7;
  v60 = sub_224DAB0F8();
  v8 = *(v60 - 8);
  MEMORY[0x28223BE20](v60, v9);
  v52 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_224DAB188();
  __swift_allocate_value_buffer(v11, qword_2813652B0);
  v12 = __swift_project_value_buffer(v11, qword_2813652B0);
  if (qword_2813592A8 != -1)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v13 = qword_2813652C8;
    v14 = *(qword_2813652C8 + 16);
    if (!v14)
    {
      break;
    }

    v45 = v12;
    v62 = MEMORY[0x277D84F90];

    sub_224ADA2EC(0, v14, 0);
    v61 = v62;
    v15 = v13 + 64;
    v16 = sub_224DAF798();
    v17 = 0;
    v50 = v8 + 32;
    v51 = v8 + 16;
    v46 = v13 + 72;
    v47 = v14;
    v18 = v60;
    v48 = v13 + 64;
    v49 = v13;
    while ((v16 & 0x8000000000000000) == 0 && v16 < 1 << *(v13 + 32))
    {
      v20 = v16 >> 6;
      v12 = 1 << v16;
      if ((*(v15 + 8 * (v16 >> 6)) & (1 << v16)) == 0)
      {
        goto LABEL_26;
      }

      v21 = *(v13 + 36);
      v57 = v17;
      v58 = v21;
      v22 = v56;
      v23 = *(v56 + 48);
      v24 = *(v13 + 56);
      v25 = *(*(v13 + 48) + v16);
      v59 = *(v8 + 9);
      v26 = *(v8 + 2);
      v27 = v8;
      v28 = v53;
      v26(&v53[v23], v24 + v59 * v16, v18);
      v29 = v54;
      *v54 = v25;
      v30 = *(v27 + 4);
      v30(&v29[*(v22 + 48)], &v28[v23], v60);
      v31 = v29;
      v18 = v60;
      v32 = v55;
      sub_224AFC1A8(v31, v55);
      v8 = v52;
      v30(v52, (v32 + *(v22 + 48)), v18);
      v33 = v61;
      v62 = v61;
      v35 = *(v61 + 16);
      v34 = *(v61 + 24);
      if (v35 >= v34 >> 1)
      {
        sub_224ADA2EC((v34 > 1), v35 + 1, 1);
        v18 = v60;
        v33 = v62;
      }

      *(v33 + 16) = v35 + 1;
      v36 = (v27[80] + 32) & ~v27[80];
      v61 = v33;
      v30((v33 + v36 + v35 * v59), v8, v18);
      v19 = 1 << *(v49 + 32);
      if (v16 >= v19)
      {
        goto LABEL_27;
      }

      v15 = v48;
      v37 = *(v48 + 8 * v20);
      if ((v37 & v12) == 0)
      {
        goto LABEL_28;
      }

      v8 = v27;
      v13 = v49;
      if (v58 != *(v49 + 36))
      {
        goto LABEL_29;
      }

      v38 = v37 & (-2 << (v16 & 0x3F));
      if (v38)
      {
        v19 = __clz(__rbit64(v38)) | v16 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v39 = v20 << 6;
        v40 = v20 + 1;
        v41 = (v46 + 8 * v20);
        while (v40 < (v19 + 63) >> 6)
        {
          v43 = *v41++;
          v42 = v43;
          v39 += 64;
          ++v40;
          if (v43)
          {
            sub_224A3E204(v16, v58, 0);
            v19 = __clz(__rbit64(v42)) + v39;
            goto LABEL_5;
          }
        }

        sub_224A3E204(v16, v58, 0);
      }

LABEL_5:
      v17 = v57 + 1;
      v16 = v19;
      if (v57 + 1 == v47)
      {

        goto LABEL_22;
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
LABEL_30:
    swift_once();
  }

  v61 = MEMORY[0x277D84F90];
LABEL_22:
  if (qword_281359170 != -1)
  {
    swift_once();
  }

  return sub_224DAB178();
}

unint64_t sub_224AF18C8()
{
  v49 = sub_224DAAC58();
  v47 = *(v49 - 8);
  MEMORY[0x28223BE20](v49, v1);
  v45 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v46 = *(v48 - 8);
  MEMORY[0x28223BE20](v48, v3);
  v44 = &v42 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F56A0, &unk_224DB4150);
  v43 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v42 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  v42 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v42 - v11;
  v13 = sub_224DAAF48();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ReplicationService.ReplicationServiceError(0);
  MEMORY[0x28223BE20](v18, v19);
  v21 = (&v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_224AFCEFC(v0, v21);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload > 6)
    {
      if (EnumCaseMultiPayload == 7)
      {
        v32 = *v21;
        v33 = v21[1];
        v50 = 0;
        v51 = 0xE000000000000000;
        sub_224DAF938();

        v50 = 0xD000000000000019;
        v51 = 0x8000000224DC5CC0;
        MEMORY[0x22AA5D210](v32, v33);

        return v50;
      }

      if (EnumCaseMultiPayload != 8)
      {
        return 0xD000000000000019;
      }

      (*(v14 + 32))(v17, v21, v13);
      v50 = 0;
      v51 = 0xE000000000000000;
      sub_224DAF938();

      v50 = 0xD000000000000015;
      v51 = 0x8000000224DC5CA0;
      sub_224AFC698(&qword_281351720, 255, MEMORY[0x277D46790], MEMORY[0x277D467C8]);
      v26 = sub_224DAFD28();
LABEL_21:
      MEMORY[0x22AA5D210](v26);

      v25 = v50;
      (*(v14 + 8))(v17, v13);
      return v25;
    }

    if (EnumCaseMultiPayload != 5)
    {
      v39 = v47;
      v40 = v45;
      v41 = v49;
      (*(v47 + 32))(v45, v21, v49);
      v50 = 0;
      v51 = 0xE000000000000000;
      sub_224DAF938();
      MEMORY[0x22AA5D210](0xD000000000000015, 0x8000000224DC5CE0);
      sub_224DAFA48();
      v25 = v50;
      (*(v39 + 8))(v40, v41);
      return v25;
    }

    (*(v14 + 32))(v17, v21, v13);
    v50 = 0;
    v51 = 0xE000000000000000;
    sub_224DAF938();

    v27 = "record missing data: ";
    goto LABEL_14;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      (*(v14 + 32))(v17, v21, v13);
      v50 = 0;
      v51 = 0xE000000000000000;
      sub_224DAF938();

      v28 = 0x8000000224DC5DC0;
      v29 = 0xD000000000000014;
      goto LABEL_20;
    }

    (*(v14 + 32))(v17, v21, v13);
    v50 = 0;
    v51 = 0xE000000000000000;
    sub_224DAF938();

    v27 = "malformed record ID: ";
LABEL_14:
    v28 = (v27 - 32) | 0x8000000000000000;
    v29 = 0xD000000000000015;
LABEL_20:
    v50 = v29;
    v51 = v28;
    v26 = sub_224DAAEF8();
    goto LABEL_21;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v30 = v42;
    (*(v42 + 32))(v12, v21, v9);
    v50 = 0;
    v51 = 0xE000000000000000;
    sub_224DAF938();

    v50 = 0xD000000000000019;
    v51 = 0x8000000224DC5DA0;
    sub_224A33088(&unk_2813518D0, &unk_27D6F3920, &qword_224DB35B0, MEMORY[0x277CF9FC8]);
    v31 = sub_224DAFD28();
    MEMORY[0x22AA5D210](v31);

    v25 = v50;
    (*(v30 + 8))(v12, v9);
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v23 = v43;
    (*(v43 + 32))(v8, v21, v5);
    v50 = 0;
    v51 = 0xE000000000000000;
    sub_224DAF938();

    v50 = 0xD000000000000022;
    v51 = 0x8000000224DC5D50;
    sub_224A33088(&qword_281351848, &unk_27D6F56A0, &unk_224DB4150, MEMORY[0x277CFA030]);
    v24 = sub_224DAFD28();
    MEMORY[0x22AA5D210](v24);

    v25 = v50;
    (*(v23 + 8))(v8, v5);
  }

  else
  {
    v34 = v46;
    v35 = v44;
    v36 = v48;
    (*(v46 + 32))(v44, v21, v48);
    v50 = 0;
    v51 = 0xE000000000000000;
    sub_224DAF938();

    v50 = 0xD000000000000020;
    v51 = 0x8000000224DC5D20;
    sub_224A33088(&qword_281351860, &unk_27D6F30D0, &unk_224DB2AC0, MEMORY[0x277CFA030]);
    v37 = sub_224DAFD28();
    MEMORY[0x22AA5D210](v37);

    v25 = v50;
    (*(v34 + 8))(v35, v36);
  }

  return v25;
}

void sub_224AF21C0()
{
  v29[1] = *MEMORY[0x277D85DE8];
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4680, &unk_224DB4610);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = &v28[-v2];
  v4 = sub_224DA9688();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v28[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_224AEFFB4(v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_224A3311C(v3, &unk_27D6F4680, &unk_224DB4610);
    if (qword_2813516C8 != -1)
    {
      swift_once();
    }

    v9 = sub_224DAB258();
    __swift_project_value_buffer(v9, qword_281365120);
    v10 = sub_224DAB228();
    v11 = sub_224DAF288();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_224A2F000, v10, v11, "Could not clear temporary directory because no URL exists", v12, 2u);
      MEMORY[0x22AA5EED0](v12, -1, -1);
    }
  }

  else
  {
    (*(v5 + 32))(v8, v3, v4);
    v13 = [objc_opt_self() defaultManager];
    v14 = sub_224DA95F8();
    v29[0] = 0;
    v15 = [v13 removeItemAtURL:v14 error:v29];

    if (v15)
    {
      v16 = *(v5 + 8);
      v17 = v29[0];
      v16(v8, v4);
    }

    else
    {
      v18 = v29[0];
      v19 = sub_224DA9528();

      swift_willThrow();
      if (qword_2813516C8 != -1)
      {
        swift_once();
      }

      v20 = sub_224DAB258();
      __swift_project_value_buffer(v20, qword_281365120);
      v21 = v19;
      v22 = sub_224DAB228();
      v23 = sub_224DAF288();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        *v24 = 138543362;
        v26 = v19;
        v27 = _swift_stdlib_bridgeErrorToNSError();
        *(v24 + 4) = v27;
        *v25 = v27;
        _os_log_impl(&dword_224A2F000, v22, v23, "Could not clear temporary directory: %{public}@", v24, 0xCu);
        sub_224A3311C(v25, &unk_27D6F69F0, &unk_224DB3900);
        MEMORY[0x22AA5EED0](v25, -1, -1);
        MEMORY[0x22AA5EED0](v24, -1, -1);
      }

      else
      {
      }

      (*(v5 + 8))(v8, v4);
    }
  }
}

uint64_t sub_224AF25F8@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_224C569B0(a2, a3, a1);
  if (!v3)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F37E8, &qword_224DBD800);
    return (*(*(v6 - 8) + 56))(a1, 0, 1, v6);
  }

  return result;
}

uint64_t sub_224AF2674@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void (*a3)(char *, uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v118 = a3;
  v131 = a2;
  v108 = a4;
  v110 = sub_224DA9908();
  v109 = *(v110 - 8);
  v6 = MEMORY[0x28223BE20](v110, v5);
  v106 = v105 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v8);
  v111 = v105 - v9;
  v115 = sub_224DAAFC8();
  v114 = *(v115 - 8);
  MEMORY[0x28223BE20](v115, v10);
  v122 = v105 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_224DAAB88();
  v120 = *(v12 - 8);
  v121 = v12;
  v14 = MEMORY[0x28223BE20](v12, v13);
  v113 = v105 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v16);
  v117 = v105 - v17;
  v18 = sub_224DAB0F8();
  v123 = *(v18 - 8);
  v124 = v18;
  v20 = MEMORY[0x28223BE20](v18, v19);
  v116 = v105 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v22);
  v125 = v105 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4680, &unk_224DB4610);
  v26 = MEMORY[0x28223BE20](v24 - 8, v25);
  v112 = v105 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v28);
  v130 = v105 - v29;
  v137 = sub_224DA9688();
  v134 = *(v137 - 8);
  MEMORY[0x28223BE20](v137, v30);
  v126 = v105 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_224DAAF48();
  v33 = *(v32 - 8);
  MEMORY[0x28223BE20](v32, v34);
  v36 = v105 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F56A0, &unk_224DB4150);
  v38 = *(v37 - 8);
  v132 = v37;
  v133 = v38;
  MEMORY[0x28223BE20](v37, v39);
  v41 = v105 - v40;
  v42 = *(v33 + 16);
  v107 = a1;
  v105[1] = v33 + 16;
  v105[0] = v42;
  v42(v36, a1, v32);
  v43 = sub_224DAAEF8();
  v128 = v44;
  v129 = v43;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  sub_224A33088(&qword_281351980, &qword_27D6F3900, &unk_224DB4640, MEMORY[0x277CF9F98]);
  sub_224A33088(&unk_281351950, &qword_27D6F3900, &unk_224DB4640, MEMORY[0x277CF9FC0]);
  sub_224A33088(&qword_281351978, &qword_27D6F3900, &unk_224DB4640, MEMORY[0x277CF9FA0]);
  v45 = v131;
  v46 = v137;
  sub_224A33088(&qword_281351970, &qword_27D6F3900, &unk_224DB4640, MEMORY[0x277CF9FA8]);
  sub_224DAA208();
  v47 = *(v33 + 8);
  v128 = v36;
  v129 = v32;
  v47(v36, v32);
  v48 = v134;
  __swift_project_boxed_opaque_existential_1(v45, v45[3]);
  v49 = v130;
  sub_224DA9F48();
  if ((*(v48 + 48))(v49, 1, v46) == 1)
  {
    sub_224A3311C(v49, &unk_27D6F4680, &unk_224DB4610);
    type metadata accessor for ReplicationService.ReplicationServiceError(0);
    sub_224AFC698(qword_281359550, 255, type metadata accessor for ReplicationService.ReplicationServiceError, &unk_224DB44C0);
    swift_allocError();
    v50 = v132;
    v51 = v133;
    (*(v133 + 16))(v52, v41, v132);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return (*(v51 + 8))(v41, v50);
  }

  else
  {
    v54 = v132;
    v55 = v126;
    (*(v48 + 32))(v126, v49, v46);
    if (qword_2813592A8 != -1)
    {
      swift_once();
    }

    v56 = qword_2813652C8;
    v57 = v133;
    if (*(qword_2813652C8 + 16) && (v58 = sub_224B0B668(7), (v59 & 1) != 0))
    {
      v60 = *(v56 + 56);
      v62 = v123;
      v61 = v124;
      v63 = v116;
      (*(v123 + 16))(v116, v60 + *(v123 + 72) * v58, v124);
      (*(v62 + 32))(v125, v63, v61);
      __swift_project_boxed_opaque_existential_1(v45, v45[3]);
      v64 = sub_224DA9F18();
      if (v65)
      {
        v66 = v64;
      }

      else
      {
        v66 = 0x566E776F6E6B6E75;
      }

      if (v65)
      {
        v67 = v65;
      }

      else
      {
        v67 = 0xEE006E6F69737265;
      }

      __swift_project_boxed_opaque_existential_1(v118, *(v118 + 3));
      v135 = v66;
      v136 = v67;
      v127 = v67;
      v68 = v117;
      sub_224DAB0C8();
      sub_224DAAB68();
      v69 = v68;
      v70 = v121;
      v118 = *(v120 + 8);
      v118(v69, v121);
      sub_224AFC264();
      v130 = v41;
      sub_224AFC2B8();
      v71 = v119;
      v72 = sub_224DAB0A8();
      v120 = v73;
      if (v71)
      {
        (*(v62 + 8))(v125, v124);
        (*(v134 + 8))(v126, v137);
        (*(v133 + 8))(v130, v132);
      }

      else
      {
        v75 = v72;

        v76 = v134;
        v77 = v112;
        v78 = v137;
        (*(v134 + 16))(v112, v126, v137);
        (*(v76 + 56))(v77, 0, 1, v78);
        sub_224A77FD0(v75, v120);
        sub_224DAAFB8();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5710, &unk_224DB4160);
        v79 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6FE0, &unk_224DB9C50) - 8);
        v80 = *(*v79 + 80);
        v127 = v75;
        v81 = (v80 + 32) & ~v80;
        v82 = swift_allocObject();
        *(v82 + 16) = xmmword_224DB3100;
        v83 = (v82 + v81);
        v84 = v79[14];
        v85 = v113;
        sub_224DAB0C8();
        v86 = sub_224DAAB68();
        v118(v85, v70);
        *v83 = v86;
        (*(v114 + 16))(v83 + v84, v122, v115);
        sub_224DA06F0(v82);
        swift_setDeallocating();
        sub_224A3311C(v83, &unk_27D6F6FE0, &unk_224DB9C50);
        swift_deallocClassInstance();
        __swift_project_boxed_opaque_existential_1(v45, v45[3]);
        v87 = v130;
        v88 = sub_224DA9F28();
        if (v89)
        {
          v90 = v127;
          v135 = v88;
          v136 = v89;
          v91 = v111;
          sub_224DAAE48();
          v92 = v133;

          (v105[0])(v128, v107, v129);
          v103 = v109;
          v104 = v110;
          (*(v109 + 16))(v106, v91, v110);
          sub_224DAAF78();
          sub_224A78024(v90, v120);
          (*(v103 + 8))(v91, v104);
          (*(v114 + 8))(v122, v115);
          (*(v123 + 8))(v125, v124);
          (*(v134 + 8))(v126, v137);
          return (*(v92 + 8))(v130, v132);
        }

        else
        {
          v93 = v87;
          type metadata accessor for ReplicationService.ReplicationServiceError(0);
          sub_224AFC698(qword_281359550, 255, type metadata accessor for ReplicationService.ReplicationServiceError, &unk_224DB44C0);
          swift_allocError();
          v94 = v133;
          v96 = v95;
          v97 = v87;
          v98 = v132;
          (*(v133 + 16))(v96, v97, v132);
          swift_storeEnumTagMultiPayload();
          swift_willThrow();

          sub_224A78024(v127, v120);
          v99 = v134;
          v101 = v123;
          v100 = v124;
          v102 = v125;
          (*(v114 + 8))(v122, v115);
          (*(v101 + 8))(v102, v100);
          (*(v99 + 8))(v126, v137);
          return (*(v94 + 8))(v93, v98);
        }
      }
    }

    else
    {
      type metadata accessor for ReplicationService.ReplicationServiceError(0);
      sub_224AFC698(qword_281359550, 255, type metadata accessor for ReplicationService.ReplicationServiceError, &unk_224DB44C0);
      swift_allocError();
      *v74 = 1852793705;
      v74[1] = 0xE400000000000000;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      (*(v48 + 8))(v55, v46);
      return (*(v57 + 8))(v41, v54);
    }
  }
}

uint64_t sub_224AF3524@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  sub_224C57C80(a2, a3, a1);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F56B0, &unk_224DB4140);
  return (*(*(v4 - 8) + 56))(a1, 0, 1, v4);
}

uint64_t sub_224AF359C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v52 = a6;
  v47 = a2;
  v48 = a1;
  v11 = *(a4 - 8);
  v12 = MEMORY[0x28223BE20](a1, a2);
  v49 = v13;
  v50 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v14);
  v46 = &v41 - v15;
  v16 = sub_224DAB258();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = a4;
  v56 = a5;
  v51 = a7;
  v57 = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v54);
  v22 = a3;
  v23 = a3;
  v24 = *(v11 + 16);
  v24(boxed_opaque_existential_1, v23, a4);
  if (qword_2813516C8 != -1)
  {
    swift_once();
  }

  v48 |= 0x40u;
  v25 = __swift_project_value_buffer(v16, qword_281365120);
  (*(v17 + 16))(v20, v25, v16);
  sub_224A3317C(v47, v53);
  v26 = v46;
  v43 = v22;
  v24(v46, v22, a4);
  v47 = v16;
  v27 = *(v11 + 80);
  v45 = v17;
  v28 = swift_allocObject();
  v41 = v24;
  v29 = v28;
  *(v28 + 2) = a4;
  *(v28 + 3) = a5;
  v42 = a5;
  v30 = v51;
  *(v28 + 4) = v52;
  *(v28 + 5) = v30;
  sub_224A36F98(v53, v28 + 48);
  v44 = v20;
  v31 = *(v11 + 32);
  v31(v29 + ((v27 + 88) & ~v27), v26, a4);
  v32 = v50;
  v41(v50, v43, a4);
  v33 = swift_allocObject();
  v34 = v42;
  *(v33 + 2) = a4;
  *(v33 + 3) = v34;
  *(v33 + 4) = v52;
  *(v33 + 5) = v30;
  v31(v33 + ((v27 + 48) & ~v27), v32, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F37F0, &qword_224DB4170);
  v35 = swift_allocObject();
  *(v35 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F37F8, &qword_224DB4178);
  swift_allocObject();
  *(v35 + 24) = sub_224DAB358();
  *(v35 + qword_281365300) = MEMORY[0x277D84FA0];
  *(v35 + qword_2813652D8) = 0;
  *(v35 + 32) = v48;
  sub_224AB1DE0(&v54, (v35 + 40));
  (*(v45 + 32))(v35 + qword_2813652E0, v44, v47);
  v36 = (v35 + qword_2813652F8);
  *v36 = sub_224AFC30C;
  v36[1] = v29;
  v37 = (v35 + qword_2813652E8);
  *v37 = sub_224AEC7AC;
  v37[1] = 0;
  v38 = (v35 + qword_281365308);
  *v38 = sub_224AFC338;
  v38[1] = v33;
  v39 = (v35 + qword_2813652F0);
  *v39 = sub_224AF8BC8;
  v39[1] = 0;
  return v35;
}

uint64_t sub_224AF3A10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v52 = a6;
  v47 = a2;
  v48 = a1;
  v11 = *(a4 - 8);
  v12 = MEMORY[0x28223BE20](a1, a2);
  v49 = v13;
  v50 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v14);
  v46 = &v41 - v15;
  v16 = sub_224DAB258();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = a4;
  v56 = a5;
  v51 = a7;
  v57 = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v54);
  v22 = a3;
  v23 = a3;
  v24 = *(v11 + 16);
  v24(boxed_opaque_existential_1, v23, a4);
  if (qword_2813516C8 != -1)
  {
    swift_once();
  }

  v48 |= 0x40u;
  v25 = __swift_project_value_buffer(v16, qword_281365120);
  (*(v17 + 16))(v20, v25, v16);
  sub_224A3317C(v47, v53);
  v26 = v46;
  v43 = v22;
  v24(v46, v22, a4);
  v47 = v16;
  v27 = *(v11 + 80);
  v45 = v17;
  v28 = swift_allocObject();
  v41 = v24;
  v29 = v28;
  *(v28 + 2) = a4;
  *(v28 + 3) = a5;
  v42 = a5;
  v30 = v51;
  *(v28 + 4) = v52;
  *(v28 + 5) = v30;
  sub_224A36F98(v53, v28 + 48);
  v44 = v20;
  v31 = *(v11 + 32);
  v31(v29 + ((v27 + 88) & ~v27), v26, a4);
  v32 = v50;
  v41(v50, v43, a4);
  v33 = swift_allocObject();
  v34 = v42;
  *(v33 + 2) = a4;
  *(v33 + 3) = v34;
  *(v33 + 4) = v52;
  *(v33 + 5) = v30;
  v31(v33 + ((v27 + 48) & ~v27), v32, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3838, &qword_224DB41A8);
  v35 = swift_allocObject();
  *(v35 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3840, &unk_224DB41B0);
  swift_allocObject();
  *(v35 + 24) = sub_224DAB358();
  *(v35 + qword_281365300) = MEMORY[0x277D84FA0];
  *(v35 + qword_2813652D8) = 0;
  *(v35 + 32) = v48;
  sub_224AB1DE0(&v54, (v35 + 40));
  (*(v45 + 32))(v35 + qword_2813652E0, v44, v47);
  v36 = (v35 + qword_2813652F8);
  *v36 = sub_224AFC380;
  v36[1] = v29;
  v37 = (v35 + qword_2813652E8);
  *v37 = sub_224AEC7AC;
  v37[1] = 0;
  v38 = (v35 + qword_281365308);
  *v38 = sub_224AFC48C;
  v38[1] = v33;
  v39 = (v35 + qword_2813652F0);
  *v39 = sub_224AFA674;
  v39[1] = 0;
  return v35;
}

uint64_t sub_224AF3E84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, unsigned int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *&v146 = a6;
  v147 = a5;
  v152 = a4;
  v142 = a3;
  v143 = a2;
  v135 = a7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v133 = v119 - v10;
  v134 = sub_224DAAFF8();
  v132 = *(v134 - 8);
  v12 = MEMORY[0x28223BE20](v134, v11);
  v130 = v119 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v122 = v119 - v16;
  v18 = MEMORY[0x28223BE20](v15, v17);
  v128 = v119 - v19;
  MEMORY[0x28223BE20](v18, v20);
  v129 = v119 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4680, &unk_224DB4610);
  MEMORY[0x28223BE20](v22 - 8, v23);
  v25 = v119 - v24;
  v138 = sub_224DAAFC8();
  v137 = *(v138 - 8);
  MEMORY[0x28223BE20](v138, v26);
  v136 = v119 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_224DA9688();
  v140 = *(v28 - 8);
  v141 = v28;
  MEMORY[0x28223BE20](v28, v29);
  v144 = v119 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = sub_224DAAC58();
  v151 = *(v155 - 1);
  MEMORY[0x28223BE20](v155, v31);
  v154 = v119 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_224DA9908();
  v34 = *(v33 - 8);
  v149 = v33;
  v150 = v34;
  v36 = MEMORY[0x28223BE20](v33, v35);
  v127 = v119 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v36, v38);
  v139 = v119 - v40;
  MEMORY[0x28223BE20](v39, v41);
  v148 = v119 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  MEMORY[0x28223BE20](v43 - 8, v44);
  v153 = v119 - v45;
  v46 = sub_224DAAF48();
  v47 = *(v46 - 8);
  v49 = MEMORY[0x28223BE20](v46, v48);
  v125 = v119 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49, v51);
  v53 = v119 - v52;
  v54 = sub_224DAC2B8();
  v156 = *(v54 - 8);
  v56 = MEMORY[0x28223BE20](v54, v55);
  v145 = v119 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = MEMORY[0x28223BE20](v56, v58);
  v61 = v119 - v60;
  MEMORY[0x28223BE20](v59, v62);
  v157 = v119 - v63;
  v64 = *(v47 + 16);
  v131 = a1;
  v124 = v47 + 16;
  v123 = v64;
  v64(v53, a1, v46);
  sub_224DAAEF8();
  v65 = sub_224DA96A8();
  v67 = v66;

  if (v67 >> 60 == 15)
  {
    sub_224AFC52C();
    swift_allocError();
    swift_willThrow();
    return (*(v47 + 8))(v53, v46);
  }

  else
  {
    v121 = v25;
    v126 = v46;
    sub_224DAAD38();
    sub_224AFC698(&qword_27D6F3868, 255, MEMORY[0x277CF99B8], MEMORY[0x277CF99D8]);
    v69 = v160;
    sub_224DAAD18();
    if (v69)
    {
      (*(v47 + 8))(v53, v126);
      return sub_224AC1D9C(v65, v67);
    }

    else
    {
      v160 = 0;
      sub_224DAC2A8();
      v120 = v54;
      sub_224DAC288();
      v70 = v120;
      v71 = v156;
      sub_224DAC298();
      sub_224AC1D9C(v65, v67);
      v74 = *(v71 + 8);
      v73 = v71 + 8;
      v72 = v74;
      (v74)(v61, v70);
      (*(v47 + 8))(v53, v126);
      v75 = v151;
      v76 = v152;
      v77 = *(v151 + 16);
      v79 = v154;
      v78 = v155;
      v77(v154, v152, v155);
      if ((*(v75 + 88))(v79, v78) == *MEMORY[0x277D46558])
      {
        (*(v75 + 96))(v79, v78);
        v80 = *v79;
        if (*(*v79 + 16) == 1)
        {
          v155 = v72;
          v156 = v73;
          v81 = v150 + 16;
          v82 = v80 + ((*(v150 + 80) + 32) & ~*(v150 + 80));
          v83 = v148;
          v154 = *(v150 + 16);
          (v154)(v148, v82, v149);

          __swift_project_boxed_opaque_existential_1(v146, *(v146 + 24));
          sub_224B942B8(v147);
          sub_224AFC580();
          sub_224AFC5D4();
          v84 = v160;
          v85 = sub_224DAAB38();
          if (v84)
          {

            (*(v150 + 8))(v83, v149);
            return (v155)(v157, v120);
          }

          else
          {
            v119[1] = v81;
            v93 = v87;
            v151 = v85;
            v152 = v86;

            v94 = v157;
            sub_224DAC2A8();
            v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
            (*(*(v95 - 8) + 56))(v153, 1, 1, v95);
            sub_224DAC298();
            swift_getObjectType();
            v96 = v144;
            sub_224DAC3F8();
            v158 = sub_224DAC408();
            v159 = v97;
            sub_224DAAE48();
            v160 = 0;

            v99 = v140;
            v98 = v141;
            v100 = v121;
            (*(v140 + 16))(v121, v96, v141);
            (*(v99 + 56))(v100, 0, 1, v98);
            sub_224A77FD0(v151, v152);
            v101 = v136;
            sub_224DAAFB8();
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5710, &unk_224DB4160);
            v102 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6FE0, &unk_224DB9C50) - 8);
            v103 = (*(*v102 + 80) + 32) & ~*(*v102 + 80);
            v104 = swift_allocObject();
            v146 = xmmword_224DB3100;
            *(v104 + 16) = xmmword_224DB3100;
            v105 = (v104 + v103);
            v106 = v102[14];
            *v105 = v93;
            (*(v137 + 16))(&v105[v106], v101, v138);
            v153 = sub_224DA06F0(v104);
            swift_setDeallocating();
            sub_224A3311C(v105, &unk_27D6F6FE0, &unk_224DB9C50);
            swift_deallocClassInstance();
            if (v147 > 0x3Fu)
            {
              v158 = MEMORY[0x277D84F90];
              sub_224AFC698(&unk_27D6F5720, 255, MEMORY[0x277D467D0], MEMORY[0x277D467D8]);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3880, &qword_224DC3300);
              sub_224A33088(&unk_27D6F5730, &qword_27D6F3880, &qword_224DC3300, MEMORY[0x277D83970]);
              v109 = v128;
              v110 = v134;
              sub_224DAF788();
              v107 = v132;
              v111 = *(v132 + 32);
            }

            else
            {
              v107 = v132;
              if ((v147 - 3) > 1u)
              {
                v158 = MEMORY[0x277D84F90];
              }

              else
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3888, &unk_224DB41D0);
                v108 = swift_allocObject();
                *(v108 + 16) = v146;
                sub_224DAAFE8();
                v158 = v108;
              }

              sub_224AFC698(&unk_27D6F5720, 255, MEMORY[0x277D467D0], MEMORY[0x277D467D8]);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3880, &qword_224DC3300);
              sub_224A33088(&unk_27D6F5730, &qword_27D6F3880, &qword_224DC3300, MEMORY[0x277D83970]);
              v112 = v122;
              v110 = v134;
              sub_224DAF788();
              v111 = *(v107 + 32);
              v109 = v128;
              v111(v128, v112, v110);
            }

            v113 = v129;
            v111(v129, v109, v110);
            v123(v125, v131, v126);
            v114 = v149;
            (v154)(v127, v139, v149);
            v115 = sub_224DA9878();
            (*(*(v115 - 8) + 56))(v133, 1, 1, v115);
            (*(v107 + 16))(v130, v113, v110);
            sub_224DAAF58();
            sub_224A78024(v151, v152);
            (*(v107 + 8))(v113, v110);
            (*(v137 + 8))(v136, v138);
            v116 = *(v150 + 8);
            v116(v139, v114);
            (*(v140 + 8))(v144, v141);
            v117 = v120;
            v118 = v155;
            (v155)(v145, v120);
            v116(v148, v114);
            return v118(v94, v117);
          }
        }

        else
        {

          type metadata accessor for ReplicationService.ReplicationServiceError(0);
          sub_224AFC698(qword_281359550, 255, type metadata accessor for ReplicationService.ReplicationServiceError, &unk_224DB44C0);
          swift_allocError();
          v77(v92, v76, v78);
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
          return (v72)(v157, v120);
        }
      }

      else
      {
        type metadata accessor for ReplicationService.ReplicationServiceError(0);
        sub_224AFC698(qword_281359550, 255, type metadata accessor for ReplicationService.ReplicationServiceError, &unk_224DB44C0);
        swift_allocError();
        v89 = v88;
        v90 = v76;
        v91 = v155;
        v77(v89, v90, v155);
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        (v72)(v157, v70);
        return (*(v75 + 8))(v154, v91);
      }
    }
  }
}

uint64_t sub_224AF5174(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v53 = a3;
  v58 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v50[1] = v50 - v6;
  v56 = sub_224DAC268();
  v51 = *(v56 - 8);
  v8 = MEMORY[0x28223BE20](v56, v7);
  v55 = v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v54 = v50 - v12;
  MEMORY[0x28223BE20](v11, v13);
  v52 = v50 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3890, &unk_224DB9C30);
  v17 = MEMORY[0x28223BE20](v15, v16);
  v19 = v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v20);
  v22 = v50 - v21;
  sub_224AFC628(a1, v50 - v21);
  v23 = *(v15 + 48);
  v24 = sub_224DAAF08();
  v26 = v25;
  v27 = sub_224DAAF48();
  v57 = *(*(v27 - 8) + 8);
  v57(v22, v27);
  if (v24 == 0xD000000000000010 && 0x8000000224DC43E0 == v26)
  {

    v32 = sub_224DA9908();
    (*(*(v32 - 8) + 8))(&v22[v23], v32);
  }

  else
  {
    v29 = sub_224DAFD88();

    v30 = sub_224DA9908();
    (*(*(v30 - 8) + 8))(&v22[v23], v30);
    if ((v29 & 1) == 0)
    {
      v31 = 0;
      return v31 & 1;
    }
  }

  sub_224AFC698(&qword_281351730, 255, MEMORY[0x277D46790], MEMORY[0x277D467B8]);
  v33 = sub_224DAEDD8();
  v34 = v59;
  if (v33)
  {
LABEL_14:
    v31 = 0;
    return v31 & 1;
  }

  sub_224AFC628(a1, v19);
  v35 = *(v15 + 48);
  sub_224DAAEF8();
  v36 = sub_224DA96A8();
  v38 = v37;

  if (v38 >> 60 == 15)
  {
    v57(v19, v27);
LABEL_13:
    v40 = sub_224DA9908();
    (*(*(v40 - 8) + 8))(&v19[v35], v40);
    goto LABEL_14;
  }

  v58 = v35;
  sub_224DAAD38();
  sub_224AFC698(&qword_27D6F56D0, 255, MEMORY[0x277CF9978], MEMORY[0x277CF9998]);
  v39 = v55;
  sub_224DAAD18();
  if (v34)
  {
    v57(v19, v27);
    sub_224AC1D9C(v36, v38);

    v35 = v58;
    goto LABEL_13;
  }

  v59 = sub_224DAC248();
  sub_224DAC258();
  sub_224DAC218();
  sub_224DAC228();
  sub_224AC1D9C(v36, v38);
  v42 = v51;
  v43 = v56;
  v59 = *(v51 + 8);
  v59(v39, v56);
  v57(v19, v27);
  v44 = sub_224DA9908();
  (*(*(v44 - 8) + 8))(&v19[v58], v44);
  v45 = v52;
  (*(v42 + 32))(v52, v54, v43);
  sub_224A3B79C(0, &qword_281350840, 0x277D82BB8);
  v46 = sub_224DAC248();
  v47 = sub_224DAC248();
  LOBYTE(v43) = sub_224DAF6A8();

  if (v43)
  {
    v48 = sub_224DAC258();
    v49 = sub_224DAC258();
    v31 = sub_224DAF6A8();
  }

  else
  {
    v31 = 0;
  }

  v59(v45, v56);
  return v31 & 1;
}

uint64_t sub_224AF57B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, unint64_t)@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v147 = a6;
  v165 = a4;
  v154 = a2;
  v141 = a7;
  v10 = sub_224DAAF28();
  MEMORY[0x28223BE20](v10 - 8, v11);
  v140 = &v137 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4680, &unk_224DB4610);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v142 = &v137 - v15;
  v145 = sub_224DAAFC8();
  v144 = *(v145 - 8);
  MEMORY[0x28223BE20](v145, v16);
  v146 = &v137 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = sub_224DAAC58();
  v152 = *(v153 - 8);
  MEMORY[0x28223BE20](v153, v18);
  v151 = &v137 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = sub_224DA9908();
  v149 = *(v150 - 8);
  v21 = MEMORY[0x28223BE20](v150, v20);
  v139 = &v137 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21, v23);
  v143 = &v137 - v25;
  v27 = MEMORY[0x28223BE20](v24, v26);
  v148 = &v137 - v28;
  v181 = a5;
  v169 = *(a5 - 8);
  MEMORY[0x28223BE20](v27, v29);
  v170 = &v137 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_224DAAF48();
  v177 = v31;
  v32 = *(v31 - 8);
  v34 = MEMORY[0x28223BE20](v31, v33);
  v155 = &v137 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v34, v36);
  v138 = &v137 - v38;
  MEMORY[0x28223BE20](v37, v39);
  v41 = &v137 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v175 = *(v42 - 8);
  v176 = v42;
  v44 = MEMORY[0x28223BE20](v42, v43);
  v168 = &v137 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44, v46);
  v48 = &v137 - v47;
  v158 = *(a3 + 3);
  v157 = *(a3 + 4);
  v164 = a3;
  v156 = __swift_project_boxed_opaque_existential_1(a3, v158);
  v49 = *(v32 + 16);
  v174 = a1;
  v171 = v49;
  v172 = v32 + 16;
  v49(v41, a1, v31);
  v173 = sub_224DAAEF8();
  v167 = v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F30E0, &unk_224DB2AD0);
  v52 = sub_224A33088(&qword_2813519C0, &qword_27D6F30E0, &unk_224DB2AD0, MEMORY[0x277CF9F98]);
  v53 = sub_224A33088(&unk_281351998, &qword_27D6F30E0, &unk_224DB2AD0, MEMORY[0x277CF9FC0]);
  v54 = sub_224A33088(&qword_2813519B8, &qword_27D6F30E0, &unk_224DB2AD0, MEMORY[0x277CF9FA0]);
  v55 = sub_224A33088(&qword_2813519B0, &qword_27D6F30E0, &unk_224DB2AD0, MEMORY[0x277CF9FA8]);
  v56 = v177;
  v163 = v51;
  v162 = v52;
  v161 = v53;
  v160 = v54;
  v159 = v55;
  sub_224DAA208();
  v57 = *(v32 + 8);
  v167 = v41;
  v173 = v32 + 8;
  v57(v41, v56);
  v58 = v166;
  v59 = (*(v157 + 40))(v48, v158);
  if (v58)
  {
    v166 = *(v175 + 8);
    v166(v48, v176);
    if (qword_2813516C8 != -1)
    {
      swift_once();
    }

    v60 = sub_224DAB258();
    __swift_project_value_buffer(v60, qword_281365120);
    v61 = v155;
    v171(v155, v174, v56);
    v62 = sub_224DAB228();
    v63 = sub_224DAF288();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v178 = v65;
      *v64 = 136315138;
      sub_224AFC698(&qword_281351720, 255, MEMORY[0x277D46790], MEMORY[0x277D467C8]);
      v66 = sub_224DAFD28();
      v67 = v61;
      v69 = v68;
      v57(v67, v56);
      v70 = sub_224A33F74(v66, v69, &v178);

      *(v64 + 4) = v70;
      _os_log_impl(&dword_224A2F000, v62, v63, "Cannot find host: %s to determine activation status", v64, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v65);
      MEMORY[0x22AA5EED0](v65, -1, -1);
      MEMORY[0x22AA5EED0](v64, -1, -1);
    }

    else
    {

      v57(v61, v56);
    }

    v72 = 0;
    v158 = 0;
  }

  else
  {
    v71 = v59;
    v158 = 0;
    v166 = *(v175 + 8);
    v166(v48, v176);
    v72 = (v71 & 1);
  }

  v73 = v170;
  v74 = v57;
  v75 = *(v164 + 3);
  v76 = *(v164 + 4);
  __swift_project_boxed_opaque_existential_1(v164, v75);
  (*(v76 + 32))(&v178, 768, v75, v76);
  if (!v180)
  {
    sub_224A3311C(&v178, &qword_27D6F50E0, &qword_224DB41A0);
    v78 = v168;
    v79 = v169;
    v80 = v174;
LABEL_13:
    v77 = sub_224A870EC(MEMORY[0x277D84F90]);

    goto LABEL_14;
  }

  v77 = sub_224A86CAC();
  sub_224A699F0(&v178);
  v78 = v168;
  v79 = v169;
  v80 = v174;
  if (!v77)
  {
    goto LABEL_13;
  }

LABEL_14:
  (*(v79 + 16))(v73, v165, v181);
  v81 = v167;
  v82 = v80;
  v83 = v177;
  v171(v167, v82, v177);
  sub_224DAAEF8();
  sub_224DAA208();
  v74(v81, v83);
  if (*(v77 + 16) && (v84 = sub_224A683FC(v78), (v85 & 1) != 0))
  {
    v164 = v74;
    v165 = v72;
    v86 = *(*(v77 + 56) + 8 * v84);
    v87 = v152;
    v88 = *(v152 + 16);
    v89 = v151;
    v90 = v154;
    v91 = v153;
    v88(v151, v154, v153);
    if ((*(v87 + 88))(v89, v91) == *MEMORY[0x277D46558])
    {
      v163 = v88;
      (*(v87 + 96))(v89, v91);
      if (*(*v89 + 16) == 1)
      {
        v92 = *(v149 + 16);
        v93 = *v89 + ((*(v149 + 80) + 32) & ~*(v149 + 80));
        v94 = v148;
        v160 = v149 + 16;
        v159 = v92;
        v92(v148, v93, v150);
        v95 = v86;

        v96 = [v95 containerDescriptors];
        sub_224A3B79C(0, &unk_281350870, 0x277CFA1E0);
        v97 = sub_224DAF008();

        MEMORY[0x28223BE20](v98, v99);
        v136 = v94;
        v100 = v94;
        v101 = v158;
        sub_224AEA1F4(sub_224AFC364, (&v137 - 4), v97);
        v161 = v101;

        v162 = v95;
        v102 = [v95 metricsSpecification];
        v103 = objc_allocWithZone(MEMORY[0x277CFA360]);
        v104 = sub_224DAEFF8();

        v105 = [v103 initWithContainerDescriptors:v104 metricsSpecification:v102];

        sub_224DAAF08();
        v178 = v105;
        v179 = v165;
        v106 = *(v147 + 16);
        v163 = v105;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3810, &unk_224DB4190);
        sub_224A33088(&qword_27D6F3818, &qword_27D6F3810, &unk_224DB4190, &unk_224DBF514);
        sub_224A33088(&qword_27D6F3820, &qword_27D6F3810, &unk_224DB4190, &unk_224DBF4EC);
        v136 = v106;
        v107 = v181;
        v108 = v170;
        v109 = v161;
        v110 = sub_224DAAB38();
        v161 = v112;
        if (v109)
        {

          v113 = v163;
          v166(v168, v176);
          (*(v169 + 8))(v108, v107);

          return (*(v149 + 8))(v100, v150);
        }

        else
        {
          v120 = v111;
          v121 = v110;

          v122 = sub_224DA9688();
          (*(*(v122 - 8) + 56))(v142, 1, 1, v122);
          sub_224A77FD0(v121, v120);
          v123 = v146;
          v157 = v121;
          v158 = v120;
          sub_224DAAFB8();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5710, &unk_224DB4160);
          v124 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6FE0, &unk_224DB9C50) - 8);
          v125 = (*(*v124 + 80) + 32) & ~*(*v124 + 80);
          v126 = swift_allocObject();
          *(v126 + 16) = xmmword_224DB3100;
          v127 = (v126 + v125);
          v128 = v124[14];
          *v127 = v161;
          (*(v144 + 16))(v127 + v128, v123, v145);
          v161 = sub_224DA06F0(v126);
          swift_setDeallocating();
          sub_224A3311C(v127, &unk_27D6F6FE0, &unk_224DB9C50);
          swift_deallocClassInstance();
          sub_224C59BA8(v165, v143);
          sub_224AFC698(&qword_281351A00, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          v178 = sub_224DAFD28();
          v179 = v129;
          MEMORY[0x22AA5D210](46, 0xE100000000000000);
          v165 = 0;
          v130 = sub_224DAAEF8();
          MEMORY[0x22AA5D210](v130);

          v156 = v178;
          v155 = v179;
          sub_224DAAF08();
          sub_224DAAEC8();
          sub_224DAAF38();
          v131 = v167;
          sub_224DAAEE8();
          v132 = v177;
          v171(v138, v131, v177);
          v133 = v143;
          v134 = v150;
          v159(v139, v143, v150);
          sub_224DAAF78();

          sub_224A78024(v157, v158);
          v164(v131, v132);
          v135 = *(v149 + 8);
          v135(v133, v134);
          (*(v144 + 8))(v146, v145);
          v166(v168, v176);
          (*(v169 + 8))(v170, v181);
          return (v135)(v148, v134);
        }
      }

      else
      {
        v118 = v86;

        type metadata accessor for ReplicationService.ReplicationServiceError(0);
        sub_224AFC698(qword_281359550, 255, type metadata accessor for ReplicationService.ReplicationServiceError, &unk_224DB44C0);
        swift_allocError();
        v163(v119, v154, v91);
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        v166(v168, v176);
        return (*(v169 + 8))(v170, v181);
      }
    }

    else
    {
      type metadata accessor for ReplicationService.ReplicationServiceError(0);
      sub_224AFC698(qword_281359550, 255, type metadata accessor for ReplicationService.ReplicationServiceError, &unk_224DB44C0);
      swift_allocError();
      v177 = v77;
      v88(v117, v90, v91);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      v166(v168, v176);
      (*(v169 + 8))(v170, v181);
      return (*(v87 + 8))(v89, v91);
    }
  }

  else
  {
    type metadata accessor for ReplicationService.ReplicationServiceError(0);
    sub_224AFC698(qword_281359550, 255, type metadata accessor for ReplicationService.ReplicationServiceError, &unk_224DB44C0);
    swift_allocError();
    v115 = v176;
    (*(v175 + 16))(v116, v78, v176);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v166(v78, v115);
    return (*(v79 + 8))(v73, v181);
  }
}

uint64_t sub_224AF6D18@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v107 = a3;
  v122 = a2;
  v105 = a4;
  v109 = sub_224DAAFC8();
  v108 = *(v109 - 8);
  MEMORY[0x28223BE20](v109, v5);
  v110 = &v104 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_224DAAB88();
  v119 = *(v7 - 8);
  v120 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v118 = &v104 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F30E0, &unk_224DB2AD0);
  MEMORY[0x28223BE20](v117, v10);
  v114 = &v104 - v11;
  v12 = sub_224DA9908();
  v115 = *(v12 - 8);
  v116 = v12;
  MEMORY[0x28223BE20](v12, v13);
  v113 = &v104 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v121 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15, v16);
  v112 = &v104 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v19);
  v126 = &v104 - v20;
  v21 = sub_224DAB0F8();
  v22 = *(v21 - 8);
  v24 = MEMORY[0x28223BE20](v21, v23);
  v111 = &v104 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v26);
  v127 = &v104 - v27;
  v128 = sub_224DAAF48();
  v130 = *(v128 - 8);
  MEMORY[0x28223BE20](v128, v28);
  v132 = &v104 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_224DAB018();
  v31 = *(v30 - 8);
  MEMORY[0x28223BE20](v30, v32);
  v34 = &v104 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281351480 != -1)
  {
    swift_once();
  }

  v35 = sub_224DAB258();
  __swift_project_value_buffer(v35, qword_281364DF0);
  v36 = *(v31 + 16);
  v129 = a1;
  v36(v34, a1, v30);
  v37 = sub_224DAB228();
  v38 = sub_224DAF278();
  v39 = os_log_type_enabled(v37, v38);
  v124 = v21;
  v125 = v15;
  if (v39)
  {
    v40 = swift_slowAlloc();
    v123 = v22;
    v41 = v40;
    v42 = swift_slowAlloc();
    v131[0] = v42;
    *v41 = 136315138;
    sub_224AFC698(&qword_27D6F3830, 255, MEMORY[0x277D467E8], MEMORY[0x277D467F0]);
    v43 = sub_224DAFD28();
    v45 = v44;
    (*(v31 + 8))(v34, v30);
    v46 = sub_224A33F74(v43, v45, v131);

    *(v41 + 4) = v46;
    _os_log_impl(&dword_224A2F000, v37, v38, "received record %s", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v42);
    MEMORY[0x22AA5EED0](v42, -1, -1);
    v47 = v123;
    MEMORY[0x22AA5EED0](v41, -1, -1);
  }

  else
  {
    v47 = v22;

    (*(v31 + 8))(v34, v30);
  }

  v48 = v132;
  sub_224DAAF88();
  v49 = sub_224DAAF08();
  v51 = v50;
  v52 = v130 + 1;
  v53 = v130[1];
  v54 = v128;
  v53(v48, v128);
  v55 = sub_224AFC108(v49, v51);
  if (v55 == 13)
  {
    type metadata accessor for ReplicationService.ReplicationServiceError(0);
    sub_224AFC698(qword_281359550, 255, type metadata accessor for ReplicationService.ReplicationServiceError, &unk_224DB44C0);
    swift_allocError();
    v57 = v56;
    sub_224DAAF88();
    v58 = sub_224DAAF08();
    v60 = v59;
    v53(v48, v54);
    *v57 = v58;
    v57[1] = v60;
LABEL_15:
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  v61 = v55;
  if (qword_2813592A8 != -1)
  {
    swift_once();
  }

  v62 = qword_2813652C8;
  if (!*(qword_2813652C8 + 16) || (v63 = sub_224B0B668(v61), (v64 & 1) == 0))
  {
    type metadata accessor for ReplicationService.ReplicationServiceError(0);
    sub_224AFC698(qword_281359550, 255, type metadata accessor for ReplicationService.ReplicationServiceError, &unk_224DB44C0);
    swift_allocError();
    v81 = v80;
    *v80 = sub_224AF02C0(v61);
    v81[1] = v82;
    goto LABEL_15;
  }

  v65 = *(v62 + 56) + *(v47 + 72) * v63;
  v66 = v111;
  v67 = v124;
  (*(v47 + 16))(v111, v65, v124);
  (*(v47 + 32))(v127, v66, v67);
  sub_224DAAF88();
  sub_224DAAEF8();
  v111 = v68;
  sub_224A33088(&qword_2813519C0, &qword_27D6F30E0, &unk_224DB2AD0, MEMORY[0x277CF9F98]);
  v69 = sub_224A33088(&unk_281351998, &qword_27D6F30E0, &unk_224DB2AD0, MEMORY[0x277CF9FC0]);
  v130 = v52;
  v104 = v69;
  sub_224A33088(&qword_2813519B8, &qword_27D6F30E0, &unk_224DB2AD0, MEMORY[0x277CF9FA0]);
  v123 = v47;
  sub_224A33088(&qword_2813519B0, &qword_27D6F30E0, &unk_224DB2AD0, MEMORY[0x277CF9FA8]);
  v70 = v54;
  v71 = v112;
  sub_224DAA208();
  v53(v132, v70);
  v72 = v113;
  sub_224DAAD98();
  v73 = v125;
  sub_224DAA1E8();
  sub_224DA9898();
  v74 = v127;
  sub_224DAA1D8();
  (*(v115 + 8))(v72, v116);
  v75 = *(v121 + 8);
  v75(v71, v73);
  v76 = v118;
  sub_224DAB0C8();
  v77 = sub_224DAAEB8();
  LOBYTE(v66) = v78;
  (*(v119 + 8))(v76, v120);
  if (v66)
  {
    type metadata accessor for ReplicationService.ReplicationServiceError(0);
    sub_224AFC698(qword_281359550, 255, type metadata accessor for ReplicationService.ReplicationServiceError, &unk_224DB44C0);
    swift_allocError();
    sub_224DAAF88();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v75(v126, v125);
    return (*(v123 + 8))(v74, v124);
  }

  v132 = v75;
  v83 = v126;
  v84 = sub_224DAAFD8();
  if (*(v84 + 16) && (v85 = sub_224B31510(v77), (v86 & 1) != 0))
  {
    (*(v108 + 16))(v110, *(v84 + 56) + *(v108 + 72) * v85, v109);

    v87 = v107;
    v88 = v107[4];
    v130 = v107[3];
    v128 = v88;
    v129 = __swift_project_boxed_opaque_existential_1(v107, v130);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3810, &unk_224DB4190);
    v89 = sub_224DAAFA8();
    v91 = v90;
    v92 = sub_224A33088(&qword_27D6F3818, &qword_27D6F3810, &unk_224DB4190, &unk_224DBF514);
    sub_224A33088(&qword_27D6F3820, &qword_27D6F3810, &unk_224DB4190, &unk_224DBF4EC);
    v128 = v92;
    v93 = v106;
    sub_224DAB098();
    if (!v93)
    {
      sub_224A78024(v89, v91);
      v129 = v131[0];
      v130 = sub_224C91BAC();
      v120 = __swift_project_boxed_opaque_existential_1(v87, v87[3]);
      v94 = sub_224DAAFA8();
      v96 = v95;
      sub_224DAB098();

      sub_224A78024(v94, v96);
      (*(v108 + 8))(v110, v109);
      (*(v123 + 8))(v127, v124);

      v98 = v131[1];
      v99 = v105;
      (*(v121 + 32))(v105, v126, v125);
      v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3828, &unk_224DBD6B0);
      *(v99 + *(v100 + 36)) = v130;
      v101 = v99 + *(v100 + 40);
      *v101 = v98;
      *(v101 + 8) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3808, &qword_224DB4188);
      swift_storeEnumTagMultiPayload();
      v102 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3800, &qword_224DB4180) + 44);
      v103 = sub_224DAAE38();
      return (*(*(v103 - 8) + 16))(v99 + v102, v122, v103);
    }

    sub_224A78024(v89, v91);
    (*(v108 + 8))(v110, v109);
    v97 = v126;
  }

  else
  {

    type metadata accessor for ReplicationService.ReplicationServiceError(0);
    sub_224AFC698(qword_281359550, 255, type metadata accessor for ReplicationService.ReplicationServiceError, &unk_224DB44C0);
    swift_allocError();
    sub_224DAAF88();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v97 = v83;
  }

  (v132)(v97, v125);
  return (*(v123 + 8))(v127, v124);
}

uint64_t sub_224AF7C70@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v107 = a3;
  v122 = a2;
  v105 = a4;
  v109 = sub_224DAAFC8();
  v108 = *(v109 - 8);
  MEMORY[0x28223BE20](v109, v5);
  v110 = &v104 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_224DAAB88();
  v119 = *(v7 - 8);
  v120 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v118 = &v104 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F30E0, &unk_224DB2AD0);
  MEMORY[0x28223BE20](v117, v10);
  v114 = &v104 - v11;
  v12 = sub_224DA9908();
  v115 = *(v12 - 8);
  v116 = v12;
  MEMORY[0x28223BE20](v12, v13);
  v113 = &v104 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v121 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15, v16);
  v112 = &v104 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v19);
  v126 = &v104 - v20;
  v21 = sub_224DAB0F8();
  v22 = *(v21 - 8);
  v24 = MEMORY[0x28223BE20](v21, v23);
  v111 = &v104 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v26);
  v127 = &v104 - v27;
  v128 = sub_224DAAF48();
  v130 = *(v128 - 8);
  MEMORY[0x28223BE20](v128, v28);
  v132 = &v104 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_224DAB018();
  v31 = *(v30 - 8);
  MEMORY[0x28223BE20](v30, v32);
  v34 = &v104 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281351480 != -1)
  {
    swift_once();
  }

  v35 = sub_224DAB258();
  __swift_project_value_buffer(v35, qword_281364DF0);
  v36 = *(v31 + 16);
  v129 = a1;
  v36(v34, a1, v30);
  v37 = sub_224DAB228();
  v38 = sub_224DAF278();
  v39 = os_log_type_enabled(v37, v38);
  v124 = v21;
  v125 = v15;
  if (v39)
  {
    v40 = swift_slowAlloc();
    v123 = v22;
    v41 = v40;
    v42 = swift_slowAlloc();
    v131[0] = v42;
    *v41 = 136315138;
    sub_224AFC698(&qword_27D6F3830, 255, MEMORY[0x277D467E8], MEMORY[0x277D467F0]);
    v43 = sub_224DAFD28();
    v45 = v44;
    (*(v31 + 8))(v34, v30);
    v46 = sub_224A33F74(v43, v45, v131);

    *(v41 + 4) = v46;
    _os_log_impl(&dword_224A2F000, v37, v38, "received record %s", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v42);
    MEMORY[0x22AA5EED0](v42, -1, -1);
    v47 = v123;
    MEMORY[0x22AA5EED0](v41, -1, -1);
  }

  else
  {
    v47 = v22;

    (*(v31 + 8))(v34, v30);
  }

  v48 = v132;
  sub_224DAAF88();
  v49 = sub_224DAAF08();
  v51 = v50;
  v52 = v130 + 1;
  v53 = v130[1];
  v54 = v128;
  v53(v48, v128);
  v55 = sub_224AFC108(v49, v51);
  if (v55 == 13)
  {
    type metadata accessor for ReplicationService.ReplicationServiceError(0);
    sub_224AFC698(qword_281359550, 255, type metadata accessor for ReplicationService.ReplicationServiceError, &unk_224DB44C0);
    swift_allocError();
    v57 = v56;
    sub_224DAAF88();
    v58 = sub_224DAAF08();
    v60 = v59;
    v53(v48, v54);
    *v57 = v58;
    v57[1] = v60;
LABEL_15:
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  v61 = v55;
  if (qword_2813592A8 != -1)
  {
    swift_once();
  }

  v62 = qword_2813652C8;
  if (!*(qword_2813652C8 + 16) || (v63 = sub_224B0B668(v61), (v64 & 1) == 0))
  {
    type metadata accessor for ReplicationService.ReplicationServiceError(0);
    sub_224AFC698(qword_281359550, 255, type metadata accessor for ReplicationService.ReplicationServiceError, &unk_224DB44C0);
    swift_allocError();
    v81 = v80;
    *v80 = sub_224AF02C0(v61);
    v81[1] = v82;
    goto LABEL_15;
  }

  v65 = *(v62 + 56) + *(v47 + 72) * v63;
  v66 = v111;
  v67 = v124;
  (*(v47 + 16))(v111, v65, v124);
  (*(v47 + 32))(v127, v66, v67);
  sub_224DAAF88();
  sub_224DAAEF8();
  v111 = v68;
  sub_224A33088(&qword_2813519C0, &qword_27D6F30E0, &unk_224DB2AD0, MEMORY[0x277CF9F98]);
  v69 = sub_224A33088(&unk_281351998, &qword_27D6F30E0, &unk_224DB2AD0, MEMORY[0x277CF9FC0]);
  v130 = v52;
  v104 = v69;
  sub_224A33088(&qword_2813519B8, &qword_27D6F30E0, &unk_224DB2AD0, MEMORY[0x277CF9FA0]);
  v123 = v47;
  sub_224A33088(&qword_2813519B0, &qword_27D6F30E0, &unk_224DB2AD0, MEMORY[0x277CF9FA8]);
  v70 = v54;
  v71 = v112;
  sub_224DAA208();
  v53(v132, v70);
  v72 = v113;
  sub_224DAAD98();
  v73 = v125;
  sub_224DAA1E8();
  sub_224DA9898();
  v74 = v127;
  sub_224DAA1D8();
  (*(v115 + 8))(v72, v116);
  v75 = *(v121 + 8);
  v75(v71, v73);
  v76 = v118;
  sub_224DAB0C8();
  v77 = sub_224DAAEB8();
  LOBYTE(v66) = v78;
  (*(v119 + 8))(v76, v120);
  if (v66)
  {
    type metadata accessor for ReplicationService.ReplicationServiceError(0);
    sub_224AFC698(qword_281359550, 255, type metadata accessor for ReplicationService.ReplicationServiceError, &unk_224DB44C0);
    swift_allocError();
    sub_224DAAF88();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v75(v126, v125);
    return (*(v123 + 8))(v74, v124);
  }

  v132 = v75;
  v83 = v126;
  v84 = sub_224DAAFD8();
  if (*(v84 + 16) && (v85 = sub_224B31510(v77), (v86 & 1) != 0))
  {
    (*(v108 + 16))(v110, *(v84 + 56) + *(v108 + 72) * v85, v109);

    v87 = v107;
    v88 = v107[4];
    v130 = v107[3];
    v128 = v88;
    v129 = __swift_project_boxed_opaque_existential_1(v107, v130);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3850, &qword_224DB41C8);
    v89 = sub_224DAAFA8();
    v91 = v90;
    v92 = sub_224A33088(&qword_27D6F3858, &qword_27D6F3850, &qword_224DB41C8, &unk_224DBF514);
    sub_224A33088(&qword_27D6F3860, &qword_27D6F3850, &qword_224DB41C8, &unk_224DBF4EC);
    v128 = v92;
    v93 = v106;
    sub_224DAB098();
    if (!v93)
    {
      sub_224A78024(v89, v91);
      v129 = v131[0];
      v130 = sub_224D6F99C();
      v120 = __swift_project_boxed_opaque_existential_1(v87, v87[3]);
      v94 = sub_224DAAFA8();
      v96 = v95;
      sub_224DAB098();

      sub_224A78024(v94, v96);
      (*(v108 + 8))(v110, v109);
      (*(v123 + 8))(v127, v124);

      v98 = v131[1];
      v99 = v105;
      (*(v121 + 32))(v105, v126, v125);
      v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3338, &unk_224DB3550);
      *(v99 + *(v100 + 36)) = v130;
      v101 = v99 + *(v100 + 40);
      *v101 = v98;
      *(v101 + 8) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3340, &qword_224DB41C0);
      swift_storeEnumTagMultiPayload();
      v102 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3848, &qword_224DBD830) + 44);
      v103 = sub_224DAAE38();
      return (*(*(v103 - 8) + 16))(v99 + v102, v122, v103);
    }

    sub_224A78024(v89, v91);
    (*(v108 + 8))(v110, v109);
    v97 = v126;
  }

  else
  {

    type metadata accessor for ReplicationService.ReplicationServiceError(0);
    sub_224AFC698(qword_281359550, 255, type metadata accessor for ReplicationService.ReplicationServiceError, &unk_224DB44C0);
    swift_allocError();
    sub_224DAAF88();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v97 = v83;
  }

  (v132)(v97, v125);
  return (*(v123 + 8))(v127, v124);
}

uint64_t sub_224AF8C00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v69 = a5;
  v70 = a6;
  v67 = a3;
  v68 = a4;
  v72 = a2;
  v71 = a7;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F30E0, &unk_224DB2AD0);
  MEMORY[0x28223BE20](v66, v8);
  v63 = &v51 - v9;
  v10 = sub_224DA9908();
  v64 = *(v10 - 8);
  v65 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v60 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v61 = *(v13 - 8);
  v62 = v13;
  v15 = MEMORY[0x28223BE20](v13, v14);
  v58 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v17);
  v59 = &v51 - v18;
  v19 = sub_224DAAF48();
  v20 = *(v19 - 8);
  v22 = MEMORY[0x28223BE20](v19, v21);
  v57 = &v51 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v24);
  v26 = &v51 - v25;
  if (qword_281351480 != -1)
  {
    swift_once();
  }

  v27 = sub_224DAB258();
  __swift_project_value_buffer(v27, qword_281364DF0);
  v28 = *(v20 + 16);
  v28(v26, a1, v19);
  v29 = sub_224DAB228();
  v30 = sub_224DAF278();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v52 = v28;
    v32 = v31;
    v51 = swift_slowAlloc();
    v73 = v51;
    *v32 = 136315138;
    sub_224AFC698(&qword_281351720, 255, MEMORY[0x277D46790], MEMORY[0x277D467C8]);
    v33 = sub_224DAFD28();
    v53 = a1;
    v35 = v34;
    v36 = *(v20 + 8);
    v55 = (v20 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v56 = v36;
    v36(v26, v19);
    v37 = sub_224A33F74(v33, v35, &v73);
    a1 = v53;

    *(v32 + 4) = v37;
    _os_log_impl(&dword_224A2F000, v29, v30, "received deletion record %s", v32, 0xCu);
    v38 = v51;
    __swift_destroy_boxed_opaque_existential_1(v51);
    MEMORY[0x22AA5EED0](v38, -1, -1);
    v39 = v32;
    v28 = v52;
    MEMORY[0x22AA5EED0](v39, -1, -1);
  }

  else
  {

    v40 = *(v20 + 8);
    v55 = (v20 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v56 = v40;
    v40(v26, v19);
  }

  v54 = v19;
  v41 = v57;
  v28(v57, a1, v19);
  sub_224DAAEF8();
  v53 = sub_224A33088(&qword_2813519C0, &qword_27D6F30E0, &unk_224DB2AD0, MEMORY[0x277CF9F98]);
  v52 = sub_224A33088(&unk_281351998, &qword_27D6F30E0, &unk_224DB2AD0, MEMORY[0x277CF9FC0]);
  sub_224A33088(&qword_2813519B8, &qword_27D6F30E0, &unk_224DB2AD0, MEMORY[0x277CF9FA0]);
  sub_224A33088(&qword_2813519B0, &qword_27D6F30E0, &unk_224DB2AD0, MEMORY[0x277CF9FA8]);
  v42 = v58;
  sub_224DAA208();
  v56(v41, v54);
  v43 = v60;
  sub_224DAAD98();
  v44 = v62;
  sub_224DAA1E8();
  sub_224DA9898();
  v45 = v59;
  sub_224DAA1D8();
  (*(v64 + 8))(v43, v65);
  v46 = v61;
  (*(v61 + 8))(v42, v44);
  v47 = v71;
  (*(v46 + 32))(v71, v45, v44);
  __swift_instantiateConcreteTypeFromMangledNameV2(v67, v68);
  swift_storeEnumTagMultiPayload();
  v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v69, v70) + 44);
  v49 = sub_224DAAE38();
  return (*(*(v49 - 8) + 16))(v47 + v48, v72, v49);
}

uint64_t sub_224AF92B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void (*a4)(char *, uint64_t, uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v136 = a6;
  v153 = a4;
  v142 = a2;
  v130 = a7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4680, &unk_224DB4610);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v131 = &v128 - v12;
  v135 = sub_224DAAFC8();
  v133 = *(v135 - 8);
  MEMORY[0x28223BE20](v135, v13);
  v134 = &v128 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_224DAAC58();
  v140 = *(v141 - 8);
  MEMORY[0x28223BE20](v141, v15);
  v139 = &v128 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = sub_224DA9908();
  v137 = *(v156 - 8);
  v18 = MEMORY[0x28223BE20](v156, v17);
  v128 = &v128 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18, v20);
  v132 = &v128 - v22;
  v24 = MEMORY[0x28223BE20](v21, v23);
  v129 = &v128 - v25;
  v27 = MEMORY[0x28223BE20](v24, v26);
  v138 = &v128 - v28;
  v159 = a5;
  v158 = *(a5 - 8);
  MEMORY[0x28223BE20](v27, v29);
  v168 = &v128 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_224DAAF48();
  v166 = v31;
  v32 = *(v31 - 8);
  v34 = MEMORY[0x28223BE20](v31, v33);
  v143 = &v128 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34, v36);
  v38 = &v128 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v164 = *(v39 - 8);
  v165 = v39;
  v41 = MEMORY[0x28223BE20](v39, v40);
  v157 = &v128 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41, v43);
  v45 = &v128 - v44;
  v146 = a3[3];
  v145 = a3[4];
  v152 = a3;
  v144 = __swift_project_boxed_opaque_existential_1(a3, v146);
  v46 = *(v32 + 16);
  v162 = v32 + 16;
  v163 = a1;
  v161 = v46;
  v46(v38, a1, v31);
  v160 = sub_224DAAEF8();
  v155 = v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F30E0, &unk_224DB2AD0);
  v49 = sub_224A33088(&qword_2813519C0, &qword_27D6F30E0, &unk_224DB2AD0, MEMORY[0x277CF9F98]);
  v50 = sub_224A33088(&unk_281351998, &qword_27D6F30E0, &unk_224DB2AD0, MEMORY[0x277CF9FC0]);
  v51 = sub_224A33088(&qword_2813519B8, &qword_27D6F30E0, &unk_224DB2AD0, MEMORY[0x277CF9FA0]);
  v52 = v166;
  v53 = sub_224A33088(&qword_2813519B0, &qword_27D6F30E0, &unk_224DB2AD0, MEMORY[0x277CF9FA8]);
  v150 = v49;
  v151 = v48;
  v148 = v51;
  v149 = v50;
  v147 = v53;
  sub_224DAA208();
  v54 = *(v32 + 8);
  v155 = v38;
  v160 = v32 + 8;
  v54(v38, v52);
  v55 = v154;
  v56 = (*(v145 + 32))(v45, v146);
  if (v55)
  {
    v154 = *(v164 + 8);
    v154(v45, v165);
    if (qword_2813516C8 != -1)
    {
      swift_once();
    }

    v57 = sub_224DAB258();
    __swift_project_value_buffer(v57, qword_281365120);
    v58 = v143;
    v161(v143, v163, v52);
    v59 = sub_224DAB228();
    v60 = sub_224DAF288();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v167[0] = v62;
      *v61 = 136315138;
      sub_224AFC698(&qword_281351720, 255, MEMORY[0x277D46790], MEMORY[0x277D467C8]);
      v63 = sub_224DAFD28();
      v65 = v64;
      v54(v58, v52);
      v66 = sub_224A33F74(v63, v65, v167);

      *(v61 + 4) = v66;
      _os_log_impl(&dword_224A2F000, v59, v60, "Cannot find host: %s to determine activation status", v61, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v62);
      MEMORY[0x22AA5EED0](v62, -1, -1);
      MEMORY[0x22AA5EED0](v61, -1, -1);
    }

    else
    {

      v54(v58, v52);
    }

    v146 = 0;
  }

  else
  {
    v67 = v56;
    v154 = *(v164 + 8);
    v154(v45, v165);
    v146 = v67 & 1;
  }

  v68 = v159;
  v69 = v157;
  v70 = v152[3];
  v71 = v152[4];
  __swift_project_boxed_opaque_existential_1(v152, v70);
  v72 = (*(v71 + 24))(768, v70, v71);
  v73 = v158;
  if (v72)
  {
    v74 = sub_224CFEA64(v72);
  }

  else
  {
    v74 = sub_224DA08CC(MEMORY[0x277D84F90]);
  }

  (*(v73 + 16))(v168, v153, v68);
  v75 = v155;
  v76 = v166;
  v161(v155, v163, v166);
  sub_224DAAEF8();
  sub_224DAA208();
  v54(v75, v76);
  if (*(v74 + 16) && (v77 = sub_224A683FC(v69), (v78 & 1) != 0))
  {
    v79 = *(*(v74 + 56) + 8 * v77);
    v80 = v140;
    v160 = v74;
    v81 = *(v140 + 16);
    v82 = v139;
    v83 = v142;
    v84 = v141;
    v81(v139, v142, v141);
    if ((*(v80 + 88))(v82, v84) == *MEMORY[0x277D46558])
    {
      v153 = v81;
      (*(v80 + 96))(v82, v84);
      if (*(*v82 + 16) == 1)
      {
        v85 = v138;
        v150 = *(v137 + 16);
        v151 = v137 + 16;
        v150();
        v86 = v79;

        v153 = v86;
        v87 = [v86 controlItems];
        sub_224DAF5D8();
        v88 = sub_224DAF008();

        MEMORY[0x28223BE20](v89, v90);
        v127 = v85;
        sub_224AEA1F4(sub_224AFC510, (&v128 - 4), v88);
        v152 = 0;

        v91 = objc_allocWithZone(MEMORY[0x277CFA1F0]);
        v92 = sub_224DAEFF8();

        v93 = [v91 initWithControlItems_];

        sub_224DAAF08();
        v94 = v159;
        v167[0] = v93;
        v167[1] = v146;
        v95 = *(v136 + 16);
        v96 = v93;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3850, &qword_224DB41C8);
        sub_224A33088(&qword_27D6F3858, &qword_27D6F3850, &qword_224DB41C8, &unk_224DBF514);
        sub_224A33088(&qword_27D6F3860, &qword_27D6F3850, &qword_224DB41C8, &unk_224DBF4EC);
        v127 = v95;
        v97 = v138;
        v98 = v168;
        v99 = v152;
        v100 = sub_224DAAB38();
        if (v99)
        {

          v154(v157, v165);
          (*(v158 + 8))(v98, v94);

          return (*(v137 + 8))(v97, v156);
        }

        else
        {
          v109 = v102;
          v152 = v96;
          v110 = v101;
          v111 = v100;

          v112 = sub_224DA9688();
          (*(*(v112 - 8) + 56))(v131, 1, 1, v112);
          sub_224A77FD0(v111, v110);
          v113 = v134;
          v148 = v111;
          v149 = v110;
          sub_224DAAFB8();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5710, &unk_224DB4160);
          v114 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6FE0, &unk_224DB9C50) - 8);
          v115 = (*(*v114 + 80) + 32) & ~*(*v114 + 80);
          v116 = swift_allocObject();
          *(v116 + 16) = xmmword_224DB3100;
          v117 = v114[14];
          *(v116 + v115) = v109;
          v118 = v133;
          (*(v133 + 16))(v116 + v115 + v117, v113, v135);
          v119 = sub_224DA06F0(v116);
          swift_setDeallocating();
          sub_224A3311C(v116 + v115, &unk_27D6F6FE0, &unk_224DB9C50);
          swift_deallocClassInstance();
          sub_224DAF598();
          v120 = v132;
          v121 = v153;
          sub_224DAAE58();
          v122 = v137;
          v123 = *(v137 + 32);
          v124 = v129;
          v147 = v119;
          v125 = v156;
          v123(v129, v120);
          v161(v155, v163, v166);
          (v150)(v128, v124, v125);
          sub_224DAAF78();

          sub_224A78024(v148, v149);
          v126 = *(v122 + 8);
          v126(v124, v125);
          (*(v118 + 8))(v134, v135);
          v154(v157, v165);
          (*(v158 + 8))(v168, v159);
          return (v126)(v138, v125);
        }
      }

      else
      {
        v107 = v79;

        type metadata accessor for ReplicationService.ReplicationServiceError(0);
        sub_224AFC698(qword_281359550, 255, type metadata accessor for ReplicationService.ReplicationServiceError, &unk_224DB44C0);
        swift_allocError();
        v153(v108, v142, v84);
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        v154(v157, v165);
        return (*(v158 + 8))(v168, v159);
      }
    }

    else
    {
      type metadata accessor for ReplicationService.ReplicationServiceError(0);
      sub_224AFC698(qword_281359550, 255, type metadata accessor for ReplicationService.ReplicationServiceError, &unk_224DB44C0);
      swift_allocError();
      v81(v106, v83, v84);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      v154(v157, v165);
      (*(v158 + 8))(v168, v159);
      return (*(v80 + 8))(v82, v84);
    }
  }

  else
  {
    type metadata accessor for ReplicationService.ReplicationServiceError(0);
    sub_224AFC698(qword_281359550, 255, type metadata accessor for ReplicationService.ReplicationServiceError, &unk_224DB44C0);
    swift_allocError();
    v104 = v165;
    (*(v164 + 16))(v105, v69, v165);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v154(v69, v104);
    return (*(v73 + 8))(v168, v68);
  }
}

uint64_t sub_224AFA5B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t, uint64_t, uint64_t *))
{
  v13 = *(a6 + 8);
  v16[3] = a4;
  v16[4] = v13;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v16);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, a3, a4);
  a8(a1, a2, v16);
  return __swift_destroy_boxed_opaque_existential_1(v16);
}

uint64_t sub_224AFA6AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  result = sub_224AF8C00(a1, a2, a3, a4, a5, a6, a7);
  if (!v7)
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    return (*(*(v12 - 8) + 56))(a7, 0, 1, v12);
  }

  return result;
}

uint64_t sub_224AFA730()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 40));

  return swift_deallocClassInstance();
}

void sub_224AFA7E0()
{
  v2 = v0;
  v3 = sub_224DAB8C8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = (v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = v2[14];
  *v7 = v8;
  (*(v4 + 104))(v7, *MEMORY[0x277D85200], v3);
  v9 = v8;
  LOBYTE(v8) = sub_224DAB8F8();
  (*(v4 + 8))(v7, v3);
  if (v8)
  {
    __swift_project_boxed_opaque_existential_1(v2 + 5, v2[8]);
    sub_224DAAC48();
    v1 = &unk_281351000;
  }

  else
  {
    __break(1u);
    swift_once();
    v10 = sub_224DAB258();
    __swift_project_value_buffer(v10, qword_281365120);
    v11 = v7;
    v12 = sub_224DAB228();
    v13 = sub_224DAF288();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138543362;
      v16 = v7;
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v17;
      *v15 = v17;
      _os_log_impl(&dword_224A2F000, v12, v13, "Failed to register replicator: %{public}@", v14, 0xCu);
      sub_224A3311C(v15, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v15, -1, -1);
      MEMORY[0x22AA5EED0](v14, -1, -1);
    }

    else
    {
    }
  }

  v18 = v2[2];
  if (*(v18 + 16))
  {
    if (v1[217] != -1)
    {
      swift_once();
    }

    v19 = sub_224DAB258();
    __swift_project_value_buffer(v19, qword_281365120);

    v20 = sub_224DAB228();
    v21 = sub_224DAF2A8();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v36[0] = v23;
      *v22 = 136315138;
      v24 = MEMORY[0x22AA5D380](v18, &type metadata for ReplicatedTypeGroup);
      v26 = sub_224A33F74(v24, v25, v36);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_224A2F000, v20, v21, "starting replication as source for %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x22AA5EED0](v23, -1, -1);
      MEMORY[0x22AA5EED0](v22, -1, -1);
    }

    sub_224AFACC0();
  }

  v27 = v2[3];
  if (*(v27 + 16))
  {
    if (v1[217] != -1)
    {
      swift_once();
    }

    v28 = sub_224DAB258();
    __swift_project_value_buffer(v28, qword_281365120);

    v29 = sub_224DAB228();
    v30 = sub_224DAF2A8();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v36[0] = v32;
      *v31 = 136315138;
      v33 = MEMORY[0x22AA5D380](v27, &type metadata for ReplicatedTypeGroup);
      v35 = sub_224A33F74(v33, v34, v36);

      *(v31 + 4) = v35;
      _os_log_impl(&dword_224A2F000, v29, v30, "starting replication as host for %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v32);
      MEMORY[0x22AA5EED0](v32, -1, -1);
      MEMORY[0x22AA5EED0](v31, -1, -1);
    }

    sub_224AFAF58();
  }
}

void sub_224AFACC0()
{
  v1 = sub_224DAB8C8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = (&v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + 112);
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x277D85200], v1);
  v7 = v6;
  LOBYTE(v6) = sub_224DAB8F8();
  (*(v2 + 8))(v5, v1);
  if (v6)
  {
    v8 = *(v0 + 32);
    v9 = 1 << *(v8 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v8 + 64);
    v12 = (v9 + 63) >> 6;

    v13 = 0;
    while (v11)
    {
      v14 = v13;
LABEL_16:
      v17 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v18 = v17 | (v14 << 6);
      v19 = *(*(v8 + 48) + v18);
      sub_224A3317C(*(v8 + 56) + 40 * v18, v25);
      LOBYTE(v26) = v19;
      sub_224A36F98(v25, &v26 + 8);
LABEL_17:
      v29[1] = v27;
      v29[2] = v28;
      v29[0] = v26;
      if (!v28)
      {

        return;
      }

      sub_224A36F98((v29 + 8), &v26);
      v20 = *(&v27 + 1);
      v21 = v28;
      __swift_project_boxed_opaque_existential_1(&v26, *(&v27 + 1));
      if ((*(v21 + 16))(v20, v21))
      {
        v22 = *(&v27 + 1);
        v23 = v28;
        __swift_project_boxed_opaque_existential_1(&v26, *(&v27 + 1));
        (*(v23 + 40))(v22, v23);
      }

      __swift_destroy_boxed_opaque_existential_1(&v26);
    }

    if (v12 <= v13 + 1)
    {
      v15 = v13 + 1;
    }

    else
    {
      v15 = v12;
    }

    v16 = v15 - 1;
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v14 >= v12)
      {
        v11 = 0;
        v27 = 0u;
        v28 = 0u;
        v13 = v16;
        v26 = 0u;
        goto LABEL_17;
      }

      v11 = *(v8 + 64 + 8 * v14);
      ++v13;
      if (v11)
      {
        v13 = v14;
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void sub_224AFAF58()
{
  v1 = sub_224DAB8C8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = (&v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + 112);
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x277D85200], v1);
  v7 = v6;
  LOBYTE(v6) = sub_224DAB8F8();
  (*(v2 + 8))(v5, v1);
  if (v6)
  {
    v8 = *(v0 + 32);
    v9 = 1 << *(v8 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v8 + 64);
    v12 = (v9 + 63) >> 6;

    v13 = 0;
    while (v11)
    {
      v14 = v13;
LABEL_16:
      v17 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v18 = v17 | (v14 << 6);
      v19 = *(*(v8 + 48) + v18);
      sub_224A3317C(*(v8 + 56) + 40 * v18, v25);
      LOBYTE(v26) = v19;
      sub_224A36F98(v25, &v26 + 8);
LABEL_17:
      v29[1] = v27;
      v29[2] = v28;
      v29[0] = v26;
      if (!v28)
      {

        return;
      }

      sub_224A36F98((v29 + 8), &v26);
      v20 = *(&v27 + 1);
      v21 = v28;
      __swift_project_boxed_opaque_existential_1(&v26, *(&v27 + 1));
      if (((*(v21 + 16))(v20, v21) & 2) != 0)
      {
        v22 = *(&v27 + 1);
        v23 = v28;
        __swift_project_boxed_opaque_existential_1(&v26, *(&v27 + 1));
        (*(v23 + 48))(v22, v23);
      }

      __swift_destroy_boxed_opaque_existential_1(&v26);
    }

    if (v12 <= v13 + 1)
    {
      v15 = v13 + 1;
    }

    else
    {
      v15 = v12;
    }

    v16 = v15 - 1;
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v14 >= v12)
      {
        v11 = 0;
        v27 = 0u;
        v28 = 0u;
        v13 = v16;
        v26 = 0u;
        goto LABEL_17;
      }

      v11 = *(v8 + 64 + 8 * v14);
      ++v13;
      if (v11)
      {
        v13 = v14;
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void sub_224AFB1F0()
{
  v24 = 0;
  v25 = 0xE000000000000000;
  v1 = *(v0 + 32);
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  while (v4)
  {
    v7 = v6;
LABEL_15:
    v10 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v11 = v10 | (v7 << 6);
    v12 = *(*(v1 + 48) + v11);
    sub_224A3317C(*(v1 + 56) + 40 * v11, v19);
    LOBYTE(v20) = v12;
    sub_224A36F98(v19, &v20 + 8);
LABEL_16:
    v23[1] = v21;
    v23[2] = v22;
    v23[0] = v20;
    if (!v22)
    {

      return;
    }

    sub_224A36F98((v23 + 8), &v20);
    __swift_project_boxed_opaque_existential_1(&v20, *(&v21 + 1));
    v13 = sub_224DA9F68();
    v15 = v14;
    v16 = HIBYTE(v14) & 0xF;
    if ((v14 & 0x2000000000000000) == 0)
    {
      v16 = v13 & 0xFFFFFFFFFFFFLL;
    }

    if (v16)
    {
      v17 = v13;
      __swift_project_boxed_opaque_existential_1(&v20, *(&v21 + 1));
      *&v19[0] = sub_224DA9F78();
      *(&v19[0] + 1) = v18;
      MEMORY[0x22AA5D210](2618, 0xE200000000000000);
      MEMORY[0x22AA5D210](v17, v15);

      MEMORY[0x22AA5D210](10, 0xE100000000000000);
      MEMORY[0x22AA5D210](*&v19[0], *(&v19[0] + 1));
    }

    __swift_destroy_boxed_opaque_existential_1(&v20);
  }

  if (v5 <= v6 + 1)
  {
    v8 = v6 + 1;
  }

  else
  {
    v8 = v5;
  }

  v9 = v8 - 1;
  while (1)
  {
    v7 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v7 >= v5)
    {
      v4 = 0;
      v21 = 0u;
      v22 = 0u;
      v6 = v9;
      v20 = 0u;
      goto LABEL_16;
    }

    v4 = *(v1 + 64 + 8 * v7);
    ++v6;
    if (v4)
    {
      v6 = v7;
      goto LABEL_15;
    }
  }

  __break(1u);
}

uint64_t sub_224AFB448(uint64_t a1, uint64_t a2)
{
  result = sub_224AFC698(qword_281359620, a2, type metadata accessor for ReplicationService.Service, &unk_224DB40C4);
  *(a1 + 8) = result;
  return result;
}

void *sub_224AFB4A0(uint64_t a1, uint64_t (*a2)(char *, unint64_t, uint64_t), uint64_t (*a3)(void *, uint64_t, uint64_t))
{
  v5 = v3;
  v6 = a1;
  v20[1] = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 32);
  v8 = v7 & 0x3F;
  v9 = (1 << v7) + 63;
  v10 = v9 >> 6;
  v11 = 8 * (v9 >> 6);
  if (v8 <= 0xD)
  {
    goto LABEL_2;
  }

  v16 = 8 * (v9 >> 6);

  if (swift_stdlib_isStackAllocationSafe())
  {

    v11 = v16;
LABEL_2:
    MEMORY[0x28223BE20](a1, v11);
    v13 = v20 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v13, v12);
    result = a2(v13, v10, v6);
    if (v5)
    {
      return swift_willThrow();
    }

    return result;
  }

  v17 = swift_slowAlloc();
  v18 = v5;
  v19 = sub_224AFB7E0(v17, v10, v6, a3);
  result = MEMORY[0x22AA5EED0](v17, -1, -1);
  if (!v18)
  {
    return v19;
  }

  return result;
}

unint64_t *sub_224AFB610(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v11 = v10 | (v5 << 6);
LABEL_11:
    if ((*(*(a3 + 56) + 8 * v11) & 2) != 0)
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_224B2CE74(result, a2, v4, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return sub_224B2CE74(result, a2, v4, a3);
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_224AFB6F8(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v11 = v10 | (v5 << 6);
LABEL_11:
    if (*(*(a3 + 56) + 8 * v11))
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_224B2CE74(result, a2, v4, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return sub_224B2CE74(result, a2, v4, a3);
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_224AFB7E0(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = a4(result, a2, a3);

    return v8;
  }

  return result;
}

uint64_t sub_224AFB868(unint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v24 = a7;
  v25 = a8;
  v14 = *(a5 - 8);
  v15 = MEMORY[0x28223BE20](a1, a2);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v24 - v19;
  (*(v14 + 32))(&v24 - v19);
  v21 = swift_allocObject();
  (*(v14 + 16))(v17, v20, a5);
  v22 = sub_224AFB9EC(a1, v17, a3, v21, a5, a6, v24, v25, a9, a10);
  (*(v14 + 8))(v20, a5);
  return v22;
}

uint64_t sub_224AFB9EC(unint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v86[3] = a5;
  v86[4] = a6;
  v86[5] = a7;
  v86[6] = a8;
  v86[7] = a9;
  v86[8] = a10;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v86);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a2, a5);
  *(a4 + 32) = a1;
  sub_224AFC6E0(v86, a4 + 40);
  *(a4 + 112) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3D70, &qword_224DB41E0);
  v16 = sub_224DAFB88();
  v17 = v16;
  v18 = 1 << *(a1 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(a1 + 64);
  v21 = (v18 + 63) >> 6;
  v80 = v16 + 64;

  v77 = a3;
  v22 = 0;
  v78 = v17;
  if (!v20)
  {
LABEL_5:
    v24 = v22;
    while (1)
    {
      v22 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_56;
      }

      if (v22 >= v21)
      {
        break;
      }

      v25 = *(a1 + 64 + 8 * v22);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v20 = (v25 - 1) & v25;
        goto LABEL_10;
      }
    }

    a1 = 0;
    v34 = sub_224AFB4A0(v17, sub_224AFB6F8, sub_224AFB6F8);
    v35 = v34[2];
    v36 = MEMORY[0x277D84F90];
    if (v35)
    {
      v83[0] = MEMORY[0x277D84F90];
      v81 = v35;
      sub_224ADA330(0, v35, 0);
      v37 = v83[0];
      v38 = (v34 + 8);
      v39 = sub_224DAF798();
      v40 = v81;
      v41 = 0;
      while ((v39 & 0x8000000000000000) == 0 && v39 < 1 << *(v34 + 32))
      {
        a1 = v39 >> 6;
        v43 = 1 << v39;
        if ((*&v38[8 * (v39 >> 6)] & (1 << v39)) == 0)
        {
          goto LABEL_57;
        }

        v44 = *(v34[6] + v39);
        v45 = *(v34 + 9);
        v83[0] = v37;
        v47 = *(v37 + 16);
        v46 = *(v37 + 24);
        if (v47 >= v46 >> 1)
        {
          v74 = v45;
          v75 = v39;
          sub_224ADA330((v46 > 1), v47 + 1, 1);
          v40 = v81;
          v45 = v74;
          v39 = v75;
          v37 = v83[0];
        }

        *(v37 + 16) = v47 + 1;
        *(v37 + v47 + 32) = v44;
        v42 = 1 << *(v34 + 32);
        if (v39 >= v42)
        {
          goto LABEL_58;
        }

        v48 = *&v38[8 * a1];
        if ((v48 & v43) == 0)
        {
          goto LABEL_59;
        }

        if (v45 != *(v34 + 9))
        {
          goto LABEL_60;
        }

        v49 = v48 & (-2 << (v39 & 0x3F));
        if (v49)
        {
          v42 = __clz(__rbit64(v49)) | v39 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v50 = a1 << 6;
          v51 = a1 + 1;
          v52 = &v34[a1 + 9];
          while (v51 < (v42 + 63) >> 6)
          {
            v53 = *v52++;
            a1 = v53;
            v50 += 64;
            ++v51;
            if (v53)
            {
              sub_224A3E204(v39, v45, 0);
              v40 = v81;
              v42 = __clz(__rbit64(a1)) + v50;
              goto LABEL_16;
            }
          }

          sub_224A3E204(v39, v45, 0);
          v40 = v81;
        }

LABEL_16:
        ++v41;
        v39 = v42;
        if (v41 == v40)
        {

          v36 = MEMORY[0x277D84F90];
          a1 = 0;
          goto LABEL_33;
        }
      }

LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
    }

    else
    {

      v37 = MEMORY[0x277D84F90];
LABEL_33:
      *(a4 + 16) = v37;
      v54 = sub_224AFB4A0(v78, sub_224AFB610, sub_224AFB610);

      v55 = v54[2];
      if (!v55)
      {

        __swift_destroy_boxed_opaque_existential_1(v86);

        v56 = MEMORY[0x277D84F90];
LABEL_54:
        result = a4;
        *(a4 + 24) = v56;
        return result;
      }

      v83[0] = v36;
      v82 = v55;
      sub_224ADA330(0, v55, 0);
      v56 = v83[0];
      v57 = (v54 + 8);
      v58 = sub_224DAF798();
      v59 = v82;
      v60 = 0;
      while ((v58 & 0x8000000000000000) == 0 && v58 < 1 << *(v54 + 32))
      {
        v62 = v58 >> 6;
        v63 = 1 << v58;
        if ((*&v57[8 * (v58 >> 6)] & (1 << v58)) == 0)
        {
          goto LABEL_62;
        }

        v64 = *(v54[6] + v58);
        v65 = *(v54 + 9);
        v83[0] = v56;
        a1 = *(v56 + 16);
        v66 = *(v56 + 24);
        if (a1 >= v66 >> 1)
        {
          v79 = v58;
          v76 = v65;
          sub_224ADA330((v66 > 1), a1 + 1, 1);
          v59 = v82;
          v65 = v76;
          v58 = v79;
          v56 = v83[0];
        }

        *(v56 + 16) = a1 + 1;
        *(v56 + a1 + 32) = v64;
        v61 = 1 << *(v54 + 32);
        if (v58 >= v61)
        {
          goto LABEL_63;
        }

        v67 = *&v57[8 * v62];
        if ((v67 & v63) == 0)
        {
          goto LABEL_64;
        }

        if (v65 != *(v54 + 9))
        {
          goto LABEL_65;
        }

        v68 = v67 & (-2 << (v58 & 0x3F));
        if (v68)
        {
          v61 = __clz(__rbit64(v68)) | v58 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v69 = v62 << 6;
          v70 = v62 + 1;
          v71 = &v54[v62 + 9];
          while (v70 < (v61 + 63) >> 6)
          {
            v72 = *v71++;
            a1 = v72;
            v69 += 64;
            ++v70;
            if (v72)
            {
              sub_224A3E204(v58, v65, 0);
              v61 = __clz(__rbit64(a1)) + v69;
              goto LABEL_51;
            }
          }

          sub_224A3E204(v58, v65, 0);
LABEL_51:
          v59 = v82;
        }

        ++v60;
        v58 = v61;
        if (v60 == v59)
        {
          __swift_destroy_boxed_opaque_existential_1(v86);

          goto LABEL_54;
        }
      }
    }

    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  while (1)
  {
    v23 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
LABEL_10:
    v26 = v23 | (v22 << 6);
    v27 = *(*(a1 + 48) + v26);
    sub_224A3317C(*(a1 + 56) + 40 * v26, v83);
    v28 = v84;
    v29 = v85;
    __swift_project_boxed_opaque_existential_1(v83, v84);
    v30 = (*(v29 + 16))(v28, v29);
    __swift_destroy_boxed_opaque_existential_1(v83);
    *(v80 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v17 = v78;
    *(v78[6] + v26) = v27;
    *(v78[7] + 8 * v26) = v30;
    v31 = v78[2];
    v32 = __OFADD__(v31, 1);
    v33 = v31 + 1;
    if (v32)
    {
      break;
    }

    v78[2] = v33;
    if (!v20)
    {
      goto LABEL_5;
    }
  }

LABEL_66:
  __break(1u);

  __swift_destroy_boxed_opaque_existential_1((a4 + 40));

  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

unint64_t sub_224AFC108(uint64_t a1, uint64_t a2)
{
  v2 = sub_224DAFBF8();

  if (v2 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_224AFC154()
{
  result = qword_281350C00;
  if (!qword_281350C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281350C00);
  }

  return result;
}

uint64_t sub_224AFC1A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F37D8, &qword_224DB4128);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for ReplicationService.ReplicationServiceError(uint64_t a1)
{
  result = qword_281359540;
  if (!qword_281359540)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_224AFC264()
{
  result = qword_2813593D8;
  if (!qword_2813593D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813593D8);
  }

  return result;
}

unint64_t sub_224AFC2B8()
{
  result = qword_2813593E0;
  if (!qword_2813593E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813593E0);
  }

  return result;
}

uint64_t objectdestroy_5Tm()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

unint64_t sub_224AFC52C()
{
  result = qword_27D6F5750;
  if (!qword_27D6F5750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F5750);
  }

  return result;
}

unint64_t sub_224AFC580()
{
  result = qword_27D6F3870;
  if (!qword_27D6F3870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F3870);
  }

  return result;
}

unint64_t sub_224AFC5D4()
{
  result = qword_27D6F3878;
  if (!qword_27D6F3878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F3878);
  }

  return result;
}

uint64_t sub_224AFC628(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3890, &unk_224DB9C30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_224AFC698(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_224AFC6E0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  v4 = *(a1 + 64);
  v5 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v5;
  *(a2 + 64) = v4;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_224AFC74C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_224AFC79C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 840))
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

uint64_t sub_224AFC7E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 824) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 840) = 1;
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

    *(result + 840) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ReplicationService.ZoneID(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ReplicationService.ZoneID(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_224AFCAB8(uint64_t a1)
{
  sub_224DAAF48();
  if (v1 <= 0x3F)
  {
    sub_224AFCB78();
    if (v2 <= 0x3F)
    {
      sub_224AFCBC8(319);
      if (v3 <= 0x3F)
      {
        sub_224AFCD10(319);
        if (v4 <= 0x3F)
        {
          sub_224DAAC58();
          if (v5 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_224AFCB78()
{
  if (!qword_2813518C0)
  {
    v0 = sub_224DAA028();
    if (!v1)
    {
      atomic_store(v0, &qword_2813518C0);
    }
  }
}

void sub_224AFCBC8(uint64_t a1)
{
  if (!qword_281351840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D6F3900, &unk_224DB4640);
    sub_224A33088(&qword_281351980, &qword_27D6F3900, &unk_224DB4640, MEMORY[0x277CF9F98]);
    sub_224A33088(&unk_281351950, &qword_27D6F3900, &unk_224DB4640, MEMORY[0x277CF9FC0]);
    sub_224A33088(&qword_281351978, &qword_27D6F3900, &unk_224DB4640, MEMORY[0x277CF9FA0]);
    sub_224A33088(&qword_281351970, &qword_27D6F3900, &unk_224DB4640, MEMORY[0x277CF9FA8]);
    v1 = sub_224DAA288();
    if (!v2)
    {
      atomic_store(v1, &qword_281351840);
    }
  }
}

void sub_224AFCD10(uint64_t a1)
{
  if (!qword_281351850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D6F30E0, &unk_224DB2AD0);
    sub_224A33088(&qword_2813519C0, &qword_27D6F30E0, &unk_224DB2AD0, MEMORY[0x277CF9F98]);
    sub_224A33088(&unk_281351998, &qword_27D6F30E0, &unk_224DB2AD0, MEMORY[0x277CF9FC0]);
    sub_224A33088(&qword_2813519B8, &qword_27D6F30E0, &unk_224DB2AD0, MEMORY[0x277CF9FA0]);
    sub_224A33088(&qword_2813519B0, &qword_27D6F30E0, &unk_224DB2AD0, MEMORY[0x277CF9FA8]);
    v1 = sub_224DAA288();
    if (!v2)
    {
      atomic_store(v1, &qword_281351850);
    }
  }
}

unint64_t sub_224AFCEA8()
{
  result = qword_281359060[0];
  if (!qword_281359060[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281359060);
  }

  return result;
}

uint64_t sub_224AFCEFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReplicationService.ReplicationServiceError(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_224AFCF6C(uint64_t a1)
{
  v2 = *v1;
  sub_224AFD06C();
  v3 = sub_224DAEFF8();
  [v2 recordWidgetRefreshes_];
}

uint64_t sub_224AFD000(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = sub_224DAEE18();
  v5 = v4;

  v2(v3, v5);
}

unint64_t sub_224AFD06C()
{
  result = qword_281350A58;
  if (!qword_281350A58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281350A58);
  }

  return result;
}

void *sub_224AFD1E4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = v16 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v16 - v8;
  [v0 mutableCopy];
  sub_224DAF758();
  swift_unknownObjectRelease();
  sub_224AFD41C();
  swift_dynamicCast();
  v10 = v16[1];
  v11 = [v0 extensionIdentity];
  sub_224DAF538();
  v12 = *MEMORY[0x277CFA138];
  swift_beginAccess();
  (*(v6 + 16))(v9, &v11[v12], v5);
  v13 = *MEMORY[0x277CFA130];
  swift_beginAccess();
  sub_224AFD468(&v11[v13], v4);
  sub_224DA9898();
  v14 = sub_224DAF508();

  [v10 setExtensionIdentity_];
  return v10;
}

unint64_t sub_224AFD41C()
{
  result = qword_281350910;
  if (!qword_281350910)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281350910);
  }

  return result;
}

uint64_t sub_224AFD468(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_224AFD4D8(uint64_t (*a1)(uint64_t, __n128)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v38 = a2;
  v39 = a1;
  v36 = a4;
  v7 = &qword_27D6F38A0;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F38A0, &unk_224DB4630);
  v35 = *(v40 - 8);
  v9 = MEMORY[0x28223BE20](v40, v8);
  v43 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11);
  v37 = &v35 - v12;
  v13 = a3 + 64;
  v14 = 1 << *(a3 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(a3 + 64);
  v17 = (v14 + 63) >> 6;
  v41 = a3;

  v18 = 0;
  if (v16)
  {
    while (1)
    {
      v19 = v7;
      v42 = v5;
      v20 = v18;
LABEL_9:
      v21 = __clz(__rbit64(v16)) | (v20 << 6);
      v22 = *(v41 + 56);
      v23 = (*(v41 + 48) + 16 * v21);
      v24 = *v23;
      v25 = v23[1];
      v26 = sub_224DAC5E8();
      v27 = *(v26 - 8);
      v28 = v22 + *(v27 + 72) * v21;
      v29 = v37;
      (*(v27 + 16))(&v37[*(v40 + 48)], v28, v26);
      *v29 = v24;
      v29[1] = v25;
      v30 = v29;
      v31 = v43;
      v7 = v19;
      sub_224A44E4C(v30, v43, v19, &unk_224DB4630);

      v32 = v42;
      v33 = (v39)(v31);
      v5 = v32;
      if (v32)
      {
        sub_224A3311C(v43, &qword_27D6F38A0, &unk_224DB4630);

        return;
      }

      if (v33)
      {
        break;
      }

      v16 &= v16 - 1;
      sub_224A3311C(v43, v19, &unk_224DB4630);
      v18 = v20;
      if (!v16)
      {
        goto LABEL_5;
      }
    }

    v34 = v36;
    sub_224A44E4C(v43, v36, &qword_27D6F38A0, &unk_224DB4630);
    (*(v35 + 56))(v34, 0, 1, v40);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v20 >= v17)
      {

        (*(v35 + 56))(v36, 1, 1, v40);
        return;
      }

      v16 = *(v13 + 8 * v20);
      ++v18;
      if (v16)
      {
        v19 = v7;
        v42 = v5;
        goto LABEL_9;
      }
    }

    __break(1u);
  }
}

void *sub_224AFD844(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_224DAF838())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x22AA5DCC0](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = v7;
      v10 = a1(&v13);
      if (v3)
      {

        return v8;
      }

      if (v10)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

uint64_t sub_224AFD9B0@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t a4@<X8>)
{
  v25 = a1;
  v7 = a3(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v21 - v10;
  v12 = *(a2 + 16);
  if (v12)
  {
    v22 = v8;
    v23 = a4;
    v14 = *(v8 + 16);
    v13 = v8 + 16;
    v24 = v14;
    v15 = (v13 - 8);
    v16 = a2 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    while (1)
    {
      v24(v11, v16, v7);
      v18 = v25(v11);
      if (v4)
      {
        return (*v15)(v11, v7);
      }

      if (v18)
      {
        break;
      }

      (*v15)(v11, v7);
      v16 += v17;
      if (!--v12)
      {
        v19 = 1;
        v8 = v22;
        a4 = v23;
        return (*(v8 + 56))(a4, v19, 1, v7);
      }
    }

    v8 = v22;
    a4 = v23;
    (*(v22 + 32))(v23, v11, v7);
    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  return (*(v8 + 56))(a4, v19, 1, v7);
}

void sub_224AFDB84(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v41 = a2;
  v42 = a1;
  v39 = a4;
  v7 = &qword_27D6F38A8;
  v8 = &unk_224DB4650;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F38A8, &unk_224DB4650);
  v38 = *(v43 - 8);
  v10 = MEMORY[0x28223BE20](v43, v9);
  v46 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v12);
  v40 = &v38 - v13;
  v14 = a3 + 64;
  v15 = 1 << *(a3 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(a3 + 64);
  v18 = (v15 + 63) >> 6;
  v44 = a3;

  v19 = 0;
  if (v17)
  {
    while (1)
    {
      v20 = v8;
      v21 = v7;
      v45 = v5;
      v22 = v19;
LABEL_9:
      v23 = __clz(__rbit64(v17)) | (v22 << 6);
      v24 = v44;
      v25 = *(v44 + 48);
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
      v27 = *(v26 - 8);
      v28 = v25 + *(v27 + 72) * v23;
      v29 = v40;
      (*(v27 + 16))(v40, v28, v26);
      v30 = *(*(v24 + 56) + 8 * v23);
      *&v29[*(v43 + 48)] = v30;
      v31 = v29;
      v32 = v46;
      v7 = v21;
      v33 = v21;
      v8 = v20;
      sub_224A44E4C(v31, v46, v33, v20);
      v34 = v30;
      v35 = v45;
      v36 = v42(v32);
      v5 = v35;
      if (v35)
      {
        sub_224A3311C(v46, &qword_27D6F38A8, &unk_224DB4650);

        return;
      }

      if (v36)
      {
        break;
      }

      v17 &= v17 - 1;
      sub_224A3311C(v46, v7, v20);
      v19 = v22;
      if (!v17)
      {
        goto LABEL_5;
      }
    }

    v37 = v39;
    sub_224A44E4C(v46, v39, &qword_27D6F38A8, &unk_224DB4650);
    (*(v38 + 56))(v37, 0, 1, v43);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v22 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v22 >= v18)
      {

        (*(v38 + 56))(v39, 1, 1, v43);
        return;
      }

      v17 = *(v14 + 8 * v22);
      ++v19;
      if (v17)
      {
        v20 = v8;
        v21 = v7;
        v45 = v5;
        goto LABEL_9;
      }
    }

    __break(1u);
  }
}

uint64_t sub_224AFDE7C(unint64_t a1)
{
  v135 = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4680, &unk_224DB4610);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v93 = &v90 - v4;
  v5 = sub_224DAAE38();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v129 = &v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v90 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3320, &unk_224DBD6F0);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v105 = &v90 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5630, &unk_224DB34C0);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v19 = &v90 - v18;
  v20 = sub_224DA9908();
  v107 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v21);
  v116 = &v90 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_224DA9688();
  v23 = *(v118 - 8);
  v25 = MEMORY[0x28223BE20](v118, v24);
  v94 = &v90 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v25, v27);
  v115 = &v90 - v29;
  v31 = MEMORY[0x28223BE20](v28, v30);
  v100 = &v90 - v32;
  v34 = MEMORY[0x28223BE20](v31, v33);
  v91 = &v90 - v35;
  v37 = MEMORY[0x28223BE20](v34, v36);
  v109 = &v90 - v38;
  MEMORY[0x28223BE20](v37, v39);
  v106 = &v90 - v40;
  v132 = MEMORY[0x277D84FA0];
  v41 = *(a1 + 48);
  v42 = *(v41 + 32);
  v43 = v42 & 0x3F;
  v121 = ((1 << v42) + 63) >> 6;
  v44 = 8 * v121;

  v126 = v12;
  v113 = v23;
  v103 = v19;
  v102 = v20;
  if (v43 > 0xD)
  {
    goto LABEL_64;
  }

  while (1)
  {
    v120 = a1;
    v119 = &v90;
    MEMORY[0x28223BE20](v45, v46);
    v122 = &v90 - ((v44 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v122, v44);
    v12 = 0;
    v127 = v41;
    v48 = v41[7];
    v41 += 7;
    v47 = v48;
    v49 = 1 << *(v41 - 24);
    v50 = -1;
    if (v49 < 64)
    {
      v50 = ~(-1 << v49);
    }

    v51 = v50 & v47;
    v20 = (v49 + 63) >> 6;
    v125 = (v23 + 16);
    v123 = 0;
    v124 = v23 + 8;
    while (v51)
    {
      v52 = __clz(__rbit64(v51));
      v128 = (v51 - 1) & v51;
LABEL_12:
      v55 = v113;
      a1 = v52 | (v12 << 6);
      v44 = v106;
      v56 = v118;
      (*(v113 + 16))(v106, v127[6] + *(v113 + 72) * a1, v118);
      v19 = sub_224DA95D8();
      (*(v55 + 8))(v44, v56);
      v51 = v128;
      if ((v19 & 1) == 0)
      {
        *&v122[(a1 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << a1;
        v57 = __OFADD__(v123, 1);
        v123 = (v123 + 1);
        if (v57)
        {
          __break(1u);
LABEL_16:
          v110 = sub_224B04F30(v122, v121, v123, v127);
          v112 = 0;
          v12 = v126;
          v19 = v103;
          v20 = v102;
          a1 = v120;
          goto LABEL_17;
        }
      }
    }

    v53 = v12;
    while (1)
    {
      v12 = v53 + 1;
      if (__OFADD__(v53, 1))
      {
        break;
      }

      if (v12 >= v20)
      {
        goto LABEL_16;
      }

      v54 = v41[v12];
      ++v53;
      if (v54)
      {
        v52 = __clz(__rbit64(v54));
        v128 = (v54 - 1) & v54;
        goto LABEL_12;
      }
    }

LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v23 = v113;
  }

  v89 = swift_slowAlloc();
  v110 = sub_224AFEFE8(v89, v121, v41, sub_224AFEEC4);
  v112 = 0;

  MEMORY[0x22AA5EED0](v89, -1, -1);
LABEL_17:
  v58 = *a1;
  v121 = *(*a1 + 16);
  if (v121)
  {
    v44 = 0;
    v120 = (v58 + 4);
    v111 = (v107 + 48);
    v99 = (v107 + 32);
    v123 = (v6 + 8);
    v127 = (v6 + 32);
    v128 = v6 + 16;
    v98 = (v6 + 48);
    v92 = (v113 + 48);
    v117 = (v113 + 8);
    v104 = (v113 + 32);
    v114 = v113 + 16;
    v97 = (v107 + 8);
    v124 = v5;
    v119 = v58;
    while (1)
    {
      if (v44 >= v58[2])
      {
        goto LABEL_63;
      }

      v122 = v44;
      sub_224A3317C(v120 + 40 * v44, &v133);
      __swift_project_boxed_opaque_existential_1(&v133, v134);
      a1 = sub_224DAE338();
      v59 = a1 + *MEMORY[0x277CFA128];
      swift_beginAccess();
      v60 = *(v59 + 8);

      if (v60)
      {
        sub_224DA9888();

        if ((*v111)(v19, 1, v20) == 1)
        {
          sub_224A3311C(v19, &unk_27D6F5630, &unk_224DB34C0);
        }

        else
        {
          (*v99)(v116, v19, v20);
          v44 = __swift_project_boxed_opaque_existential_1(v108 + 5, v108[8]);
          v61 = sub_224DAAC78();
          a1 = v61;
          v62 = *(v61 + 16);
          if (v62)
          {
            v20 = 0;
            v63 = MEMORY[0x277D84F90];
            v125 = *(v61 + 16);
            while (v20 < *(a1 + 16))
            {
              v41 = ((*(v6 + 80) + 32) & ~*(v6 + 80));
              v19 = *(v6 + 72);
              (*(v6 + 16))(v12, v41 + a1 + v19 * v20, v5);
              v44 = v12;
              if (sub_224DAAE28())
              {
                v64 = v6;
                v65 = *v127;
                (*v127)(v129, v12, v5);
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v131 = v63;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  v44 = &v131;
                  sub_224ADA1C0(0, *(v63 + 16) + 1, 1);
                  v63 = v131;
                }

                v68 = *(v63 + 16);
                v67 = *(v63 + 24);
                if (v68 >= v67 >> 1)
                {
                  v44 = &v131;
                  sub_224ADA1C0((v67 > 1), v68 + 1, 1);
                  v63 = v131;
                }

                *(v63 + 16) = v68 + 1;
                v69 = v41 + v63 + v68 * v19;
                v5 = v124;
                v65(v69, v129, v124);
                v6 = v64;
                v62 = v125;
                v12 = v126;
              }

              else
              {
                (*v123)(v12, v5);
              }

              if (v62 == ++v20)
              {
                goto LABEL_36;
              }
            }

            __break(1u);
            goto LABEL_61;
          }

          v63 = MEMORY[0x277D84F90];
LABEL_36:

          MEMORY[0x28223BE20](v70, v71);
          a1 = v116;
          *(&v90 - 2) = v116;
          v72 = v105;
          v73 = v112;
          sub_224AFD9B0(sub_224B05258, v63, MEMORY[0x277D46770], v105);
          v112 = v73;

          if ((*v98)(v72, 1, v5) == 1)
          {
            sub_224A3311C(v72, &qword_27D6F3320, &unk_224DBD6F0);
            v20 = v102;
            (*v97)(a1, v102);
          }

          else
          {
            v74 = v108[3];
            a1 = v108[4];
            __swift_project_boxed_opaque_existential_1(v108, v74);
            __swift_project_boxed_opaque_existential_1(&v133, v134);
            v41 = sub_224DAE338();
            v19 = v93;
            (*(a1 + 8))(v41, v74, a1);

            v75 = v118;
            if ((*v92)(v19, 1, v118) != 1)
            {
              v76 = v91;
              sub_224DA9548();
              v125 = *v117;
              v125(v19, v75);
              v101 = *v104;
              v101(v109, v76, v75);
              v131 = MEMORY[0x277D84FA0];
              v44 = v110;
              v12 = v110 + 56;
              v77 = 1 << *(v110 + 32);
              if (v77 < 64)
              {
                v78 = ~(-1 << v77);
              }

              else
              {
                v78 = -1;
              }

              v20 = v78 & *(v110 + 56);
              v41 = ((v77 + 63) >> 6);

              v79 = 0;
              a1 = v115;
              v96 = v12;
              v95 = v41;
              while (v20)
              {
LABEL_51:
                v81 = *(v44 + 48) + *(v113 + 72) * (__clz(__rbit64(v20)) | (v79 << 6));
                v82 = v100;
                v19 = v118;
                v107 = *(v113 + 16);
                (v107)(v100, v81, v118);
                v101(a1, v82, v19);
                sub_224DA9658();
                sub_224DA9658();
                LOBYTE(v82) = sub_224DAEEE8();
                a1 = v115;

                if (v82)
                {
                  v83 = v94;
                  v84 = v107;
                  (v107)(v94, a1, v19);
                  v85 = v106;
                  sub_224ADB390(v106, v83);
                  v86 = v125;
                  v125(v85, v19);
                  v84(v83, v115, v19);
                  v41 = v95;
                  sub_224ADB390(v85, v83);
                  v87 = v85;
                  a1 = v115;
                  v86(v87, v19);
                  v12 = v96;
                }

                v20 &= v20 - 1;
                v125(a1, v19);
                v44 = v110;
              }

              while (1)
              {
                v80 = v79 + 1;
                if (__OFADD__(v79, 1))
                {
                  break;
                }

                if (v80 >= v41)
                {

                  if (*(v131 + 16) <= *(v44 + 16) >> 3)
                  {
                    v130 = v44;
                    sub_224AFF0F0(v131, &unk_27D6F4680, &unk_224DB4610, MEMORY[0x277CC9260], sub_224B01E48);

                    v125(v109, v118);
                    v110 = v130;
                  }

                  else
                  {
                    v110 = sub_224B00004(v131, v44);

                    v125(v109, v118);
                  }

                  v12 = v126;
                  v19 = v103;
                  v20 = v102;
                  sub_224A3311C(v105, &qword_27D6F3320, &unk_224DBD6F0);
                  (*v97)(v116, v20);
                  goto LABEL_20;
                }

                v20 = *(v12 + 8 * v80);
                ++v79;
                if (v20)
                {
                  v79 = v80;
                  goto LABEL_51;
                }
              }

LABEL_61:
              __break(1u);
              goto LABEL_62;
            }

            sub_224A3311C(v19, &unk_27D6F4680, &unk_224DB4610);
            sub_224A3311C(v72, &qword_27D6F3320, &unk_224DBD6F0);
            v20 = v102;
            (*v97)(v116, v102);
            v12 = v126;
          }

          v19 = v103;
        }
      }

LABEL_20:
      v58 = v119;
      v44 = (v122 + 1);
      __swift_destroy_boxed_opaque_existential_1(&v133);
      if (v44 == v121)
      {

        return v132;
      }
    }
  }

  return v132;
}

uint64_t sub_224AFEEF8(uint64_t a1, uint64_t a2)
{
  v2 = sub_224DA9908();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_224DAAD98();
  v7 = sub_224DA98D8();
  (*(v3 + 8))(v6, v2);
  return v7 & 1;
}

void *sub_224AFEFE8(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_224B069DC(result, a2, a3, a4);

    return v8;
  }

  return result;
}

void sub_224AFF0F0(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), void (*a5)(char *))
{
  v26 = a3;
  v27 = a5;
  v25 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = v24 - v10;
  v12 = a4(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = v24 - v15;
  if (*(*v5 + 16))
  {
    v17 = 1 << *(a1 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(a1 + 56);
    v20 = (v17 + 63) >> 6;
    v24[1] = v13 + 8;
    v24[2] = v13 + 16;

    v21 = 0;
    while (v19)
    {
      v22 = v21;
LABEL_10:
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      (*(v13 + 16))(v16, *(a1 + 48) + *(v13 + 72) * (v23 | (v22 << 6)), v12);
      v27(v16);
      (*(v13 + 8))(v16, v12);
      sub_224A3311C(v11, v25, v26);
    }

    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v22 >= v20)
      {

        return;
      }

      v19 = *(a1 + 56 + 8 * v22);
      ++v21;
      if (v19)
      {
        v21 = v22;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

void sub_224AFF30C(uint64_t a1, uint64_t a2)
{
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (!sub_224DAF838())
    {
      return;
    }
  }

  else if (!*(*v2 + 16))
  {
    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_224DAF7E8();
    sub_224A3B79C(0, &unk_2813509D0, 0x277CFA378);
    sub_224B07048();
    sub_224DAF1F8();
    a1 = v19;
    v4 = v20;
    v5 = v21;
    v6 = v22;
    v7 = v23;
  }

  else
  {
    v8 = -1 << *(a1 + 32);
    v4 = a1 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(a1 + 56);

    v6 = 0;
  }

  v11 = (v5 + 64) >> 6;
  if (a1 < 0)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v12 = v6;
    v13 = v7;
    v14 = v6;
    if (!v7)
    {
      break;
    }

LABEL_16:
    v15 = (v13 - 1) & v13;
    v16 = *(*(a1 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v16)
    {
LABEL_22:
      sub_224A3B7E4(a1);
      return;
    }

    while (1)
    {
      v17 = sub_224B02170(v16, &unk_2813509D0, 0x277CFA378, sub_224AE4630, sub_224ADD3B4);

      v6 = v14;
      v7 = v15;
      if ((a1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_18:
      if (sub_224DAF878())
      {
        sub_224A3B79C(0, &unk_2813509D0, 0x277CFA378);
        swift_dynamicCast();
        v16 = v18;
        v14 = v6;
        v15 = v7;
        if (v18)
        {
          continue;
        }
      }

      goto LABEL_22;
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v11)
    {
      goto LABEL_22;
    }

    v13 = *(v4 + 8 * v14);
    ++v12;
    if (v13)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

uint64_t sub_224AFF5A0(uint64_t a1, uint64_t a2)
{
  v100 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3898, &unk_224DB4620);
  v7 = MEMORY[0x28223BE20](v5 - 8, v6);
  v9 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = (&v71 - v11);
  v13 = sub_224DAAF48();
  v15 = MEMORY[0x28223BE20](v13, v14);
  v91 = (&v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = MEMORY[0x28223BE20](v15, v17);
  v20 = (&v71 - v19);
  MEMORY[0x28223BE20](v18, v21);
  v86 = (&v71 - v23);
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v72 = v12;
  v74 = v9;
  v25 = a1 + 56;
  v24 = *(a1 + 56);
  v26 = -1 << *(a1 + 32);
  v85 = ~v26;
  if (-v26 < 64)
  {
    v27 = ~(-1 << -v26);
  }

  else
  {
    v27 = -1;
  }

  v93 = (v27 & v24);
  v78 = (63 - v26) >> 6;
  v92 = v22 + 16;
  v83 = (v22 + 48);
  v84 = (v22 + 56);
  v82 = (v22 + 32);
  v88 = (a2 + 56);
  v73 = v22;
  v94 = (v22 + 8);

  v29 = 0;
  v75 = a1;
  for (i = a1 + 56; ; v25 = i)
  {
    v30 = v93;
    v31 = v29;
    if (v93)
    {
LABEL_14:
      v2 = (v30 - 1) & v30;
      v35 = v72;
      (*(v73 + 16))(v72, *(a1 + 48) + *(v73 + 72) * (__clz(__rbit64(v30)) | (v31 << 6)), v13);
      v36 = 0;
      v33 = v31;
    }

    else
    {
      v32 = v78 <= (v29 + 1) ? v29 + 1 : v78;
      v33 = v32 - 1;
      v34 = v29;
      while (1)
      {
        v31 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          goto LABEL_58;
        }

        if (v31 >= v78)
        {
          break;
        }

        v30 = *(v25 + 8 * v31);
        ++v34;
        if (v30)
        {
          goto LABEL_14;
        }
      }

      v2 = 0;
      v36 = 1;
      v35 = v72;
    }

    v80 = *v84;
    v80(v35, v36, 1, v13);
    v95 = a1;
    v96 = v25;
    v97 = v85;
    v98 = v33;
    v99 = v2;
    v79 = *v83;
    if (v79(v35, 1, v13) == 1)
    {
      sub_224A3311C(v35, &qword_27D6F3898, &unk_224DB4620);
      v65 = a1;
      goto LABEL_53;
    }

    v77 = *v82;
    v77(v86, v35, v13);
    v76 = sub_224A3CECC(&qword_281351738, MEMORY[0x277D46790], MEMORY[0x277D467A8]);
    v37 = sub_224DAED88();
    v38 = -1 << *(a2 + 32);
    v29 = v37 & ~v38;
    v31 = v29 >> 6;
    v25 = 1 << v29;
    if (((1 << v29) & v88[v29 >> 6]) != 0)
    {
      break;
    }

    (*v94)(v86, v13);
LABEL_22:
    v29 = v33;
    v93 = v2;
  }

  v71 = v94 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v87 = ~v38;
  v39 = *(v73 + 72);
  v89 = *(v73 + 16);
  v90 = v39;
  while (1)
  {
    v89(v20, *(a2 + 48) + v90 * v29, v13);
    v40 = sub_224A3CECC(&qword_281351730, MEMORY[0x277D46790], MEMORY[0x277D467B8]);
    v41 = sub_224DAEDD8();
    v93 = *v94;
    v93(v20, v13);
    if (v41)
    {
      break;
    }

    v29 = (v29 + 1) & v87;
    v31 = v29 >> 6;
    v25 = 1 << v29;
    if (((1 << v29) & v88[v29 >> 6]) == 0)
    {
      a1 = v75;
      v93(v86, v13);
      goto LABEL_22;
    }
  }

  v87 = v40;
  v42 = (v93)(v86, v13);
  v44 = *(a2 + 32);
  v71 = ((1 << v44) + 63) >> 6;
  v28 = 8 * v71;
  a1 = v75;
  if ((v44 & 0x3Fu) > 0xD)
  {
    goto LABEL_59;
  }

  while (2)
  {
    v72 = &v71;
    MEMORY[0x28223BE20](v42, v43);
    v46 = &v71 - ((v45 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v46, v88, v45);
    v47 = *&v46[8 * v31] & ~v25;
    v48 = *(a2 + 16);
    v86 = v46;
    *&v46[8 * v31] = v47;
    v49 = v48 - 1;
    v29 = v74;
    v50 = i;
    v51 = v78;
LABEL_26:
    v73 = v49;
    while (v2)
    {
      v52 = v33;
LABEL_38:
      v55 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v89(v29, *(a1 + 48) + (v55 | (v52 << 6)) * v90, v13);
      v56 = 0;
LABEL_39:
      v80(v29, v56, 1, v13);
      v95 = a1;
      v96 = v50;
      v97 = v85;
      v98 = v33;
      v99 = v2;
      if (v79(v29, 1, v13) == 1)
      {
        sub_224A3311C(v29, &qword_27D6F3898, &unk_224DB4620);
        a2 = sub_224B04C08(v86, v71, v73, a2);
        goto LABEL_52;
      }

      v77(v91, v29, v13);
      v57 = sub_224DAED88();
      v58 = a2;
      v59 = -1 << *(a2 + 32);
      v60 = v57 & ~v59;
      v31 = v60 >> 6;
      v25 = 1 << v60;
      if (((1 << v60) & v88[v60 >> 6]) != 0)
      {
        v89(v20, *(v58 + 48) + v60 * v90, v13);
        v61 = sub_224DAEDD8();
        v93(v20, v13);
        if ((v61 & 1) == 0)
        {
          v62 = ~v59;
          do
          {
            v60 = (v60 + 1) & v62;
            v31 = v60 >> 6;
            v25 = 1 << v60;
            if (((1 << v60) & v88[v60 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v89(v20, *(v58 + 48) + v60 * v90, v13);
            v63 = sub_224DAEDD8();
            v93(v20, v13);
          }

          while ((v63 & 1) == 0);
        }

        v93(v91, v13);
        v64 = v86[v31];
        v86[v31] = v64 & ~v25;
        a2 = v58;
        a1 = v75;
        v29 = v74;
        v50 = i;
        v51 = v78;
        if ((v64 & v25) != 0)
        {
          v49 = v73 - 1;
          if (__OFSUB__(v73, 1))
          {
            __break(1u);
          }

          if (v73 == 1)
          {

            a2 = MEMORY[0x277D84FA0];
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v93(v91, v13);
        a2 = v58;
        a1 = v75;
        v29 = v74;
        v50 = i;
        v51 = v78;
      }
    }

    if (v51 <= (v33 + 1))
    {
      v53 = v33 + 1;
    }

    else
    {
      v53 = v51;
    }

    v54 = v53 - 1;
    while (1)
    {
      v52 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if (v52 >= v51)
      {
        v2 = 0;
        v56 = 1;
        v33 = v54;
        goto LABEL_39;
      }

      v2 = *(v50 + 8 * v52);
      ++v33;
      if (v2)
      {
        v33 = v52;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    v67 = v28;

    v86 = a2;
    v68 = v67;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v69 = v86;

      a2 = v69;
      continue;
    }

    break;
  }

  v70 = swift_slowAlloc();
  memcpy(v70, v88, v68);
  a2 = sub_224B03608(v70, v71, v86, v29, &v95);

  MEMORY[0x22AA5EED0](v70, -1, -1);
LABEL_52:
  v65 = v95;
LABEL_53:
  sub_224A3B7E4(v65);
  return a2;
}

uint64_t sub_224B00004(uint64_t a1, uint64_t a2)
{
  v100 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4680, &unk_224DB4610);
  v7 = MEMORY[0x28223BE20](v5 - 8, v6);
  v9 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = (&v71 - v11);
  v13 = sub_224DA9688();
  v15 = MEMORY[0x28223BE20](v13, v14);
  v91 = (&v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = MEMORY[0x28223BE20](v15, v17);
  v20 = (&v71 - v19);
  MEMORY[0x28223BE20](v18, v21);
  v86 = (&v71 - v23);
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v72 = v12;
  v74 = v9;
  v25 = a1 + 56;
  v24 = *(a1 + 56);
  v26 = -1 << *(a1 + 32);
  v85 = ~v26;
  if (-v26 < 64)
  {
    v27 = ~(-1 << -v26);
  }

  else
  {
    v27 = -1;
  }

  v93 = (v27 & v24);
  v78 = (63 - v26) >> 6;
  v92 = v22 + 16;
  v83 = (v22 + 48);
  v84 = (v22 + 56);
  v82 = (v22 + 32);
  v88 = (a2 + 56);
  v73 = v22;
  v94 = (v22 + 8);

  v29 = 0;
  v75 = a1;
  for (i = a1 + 56; ; v25 = i)
  {
    v30 = v93;
    v31 = v29;
    if (v93)
    {
LABEL_14:
      v2 = (v30 - 1) & v30;
      v35 = v72;
      (*(v73 + 16))(v72, *(a1 + 48) + *(v73 + 72) * (__clz(__rbit64(v30)) | (v31 << 6)), v13);
      v36 = 0;
      v33 = v31;
    }

    else
    {
      v32 = v78 <= (v29 + 1) ? v29 + 1 : v78;
      v33 = v32 - 1;
      v34 = v29;
      while (1)
      {
        v31 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          goto LABEL_58;
        }

        if (v31 >= v78)
        {
          break;
        }

        v30 = *(v25 + 8 * v31);
        ++v34;
        if (v30)
        {
          goto LABEL_14;
        }
      }

      v2 = 0;
      v36 = 1;
      v35 = v72;
    }

    v80 = *v84;
    v80(v35, v36, 1, v13);
    v95 = a1;
    v96 = v25;
    v97 = v85;
    v98 = v33;
    v99 = v2;
    v79 = *v83;
    if (v79(v35, 1, v13) == 1)
    {
      sub_224A3311C(v35, &unk_27D6F4680, &unk_224DB4610);
      v65 = a1;
      goto LABEL_53;
    }

    v77 = *v82;
    v77(v86, v35, v13);
    v76 = sub_224A3CECC(&qword_281351A80, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
    v37 = sub_224DAED88();
    v38 = -1 << *(a2 + 32);
    v29 = v37 & ~v38;
    v31 = v29 >> 6;
    v25 = 1 << v29;
    if (((1 << v29) & v88[v29 >> 6]) != 0)
    {
      break;
    }

    (*v94)(v86, v13);
LABEL_22:
    v29 = v33;
    v93 = v2;
  }

  v71 = v94 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v87 = ~v38;
  v39 = *(v73 + 72);
  v89 = *(v73 + 16);
  v90 = v39;
  while (1)
  {
    v89(v20, *(a2 + 48) + v90 * v29, v13);
    v40 = sub_224A3CECC(&qword_281351A78, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
    v41 = sub_224DAEDD8();
    v93 = *v94;
    v93(v20, v13);
    if (v41)
    {
      break;
    }

    v29 = (v29 + 1) & v87;
    v31 = v29 >> 6;
    v25 = 1 << v29;
    if (((1 << v29) & v88[v29 >> 6]) == 0)
    {
      a1 = v75;
      v93(v86, v13);
      goto LABEL_22;
    }
  }

  v87 = v40;
  v42 = (v93)(v86, v13);
  v44 = *(a2 + 32);
  v71 = ((1 << v44) + 63) >> 6;
  v28 = 8 * v71;
  a1 = v75;
  if ((v44 & 0x3Fu) > 0xD)
  {
    goto LABEL_59;
  }

  while (2)
  {
    v72 = &v71;
    MEMORY[0x28223BE20](v42, v43);
    v46 = &v71 - ((v45 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v46, v88, v45);
    v47 = *&v46[8 * v31] & ~v25;
    v48 = *(a2 + 16);
    v86 = v46;
    *&v46[8 * v31] = v47;
    v49 = v48 - 1;
    v29 = v74;
    v50 = i;
    v51 = v78;
LABEL_26:
    v73 = v49;
    while (v2)
    {
      v52 = v33;
LABEL_38:
      v55 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v89(v29, *(a1 + 48) + (v55 | (v52 << 6)) * v90, v13);
      v56 = 0;
LABEL_39:
      v80(v29, v56, 1, v13);
      v95 = a1;
      v96 = v50;
      v97 = v85;
      v98 = v33;
      v99 = v2;
      if (v79(v29, 1, v13) == 1)
      {
        sub_224A3311C(v29, &unk_27D6F4680, &unk_224DB4610);
        a2 = sub_224B04F30(v86, v71, v73, a2);
        goto LABEL_52;
      }

      v77(v91, v29, v13);
      v57 = sub_224DAED88();
      v58 = a2;
      v59 = -1 << *(a2 + 32);
      v60 = v57 & ~v59;
      v31 = v60 >> 6;
      v25 = 1 << v60;
      if (((1 << v60) & v88[v60 >> 6]) != 0)
      {
        v89(v20, *(v58 + 48) + v60 * v90, v13);
        v61 = sub_224DAEDD8();
        v93(v20, v13);
        if ((v61 & 1) == 0)
        {
          v62 = ~v59;
          do
          {
            v60 = (v60 + 1) & v62;
            v31 = v60 >> 6;
            v25 = 1 << v60;
            if (((1 << v60) & v88[v60 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v89(v20, *(v58 + 48) + v60 * v90, v13);
            v63 = sub_224DAEDD8();
            v93(v20, v13);
          }

          while ((v63 & 1) == 0);
        }

        v93(v91, v13);
        v64 = v86[v31];
        v86[v31] = v64 & ~v25;
        a2 = v58;
        a1 = v75;
        v29 = v74;
        v50 = i;
        v51 = v78;
        if ((v64 & v25) != 0)
        {
          v49 = v73 - 1;
          if (__OFSUB__(v73, 1))
          {
            __break(1u);
          }

          if (v73 == 1)
          {

            a2 = MEMORY[0x277D84FA0];
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v93(v91, v13);
        a2 = v58;
        a1 = v75;
        v29 = v74;
        v50 = i;
        v51 = v78;
      }
    }

    if (v51 <= (v33 + 1))
    {
      v53 = v33 + 1;
    }

    else
    {
      v53 = v51;
    }

    v54 = v53 - 1;
    while (1)
    {
      v52 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if (v52 >= v51)
      {
        v2 = 0;
        v56 = 1;
        v33 = v54;
        goto LABEL_39;
      }

      v2 = *(v50 + 8 * v52);
      ++v33;
      if (v2)
      {
        v33 = v52;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    v67 = v28;

    v86 = a2;
    v68 = v67;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v69 = v86;

      a2 = v69;
      continue;
    }

    break;
  }

  v70 = swift_slowAlloc();
  memcpy(v70, v88, v68);
  a2 = sub_224B03ADC(v70, v71, v86, v29, &v95);

  MEMORY[0x22AA5EED0](v70, -1, -1);
LABEL_52:
  v65 = v95;
LABEL_53:
  sub_224A3B7E4(v65);
  return a2;
}

uint64_t sub_224B00A68(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v85 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v4 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_224DAF7E8();
    sub_224A3B79C(0, &unk_2813509D0, 0x277CFA378);
    sub_224B07048();
    sub_224DAF1F8();
    v4 = v80;
    v6 = v81;
    v7 = v82;
    v8 = v83;
    v9 = v84;
  }

  else
  {
    v10 = -1 << *(a1 + 32);
    v6 = a1 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a1 + 56);

    v8 = 0;
  }

  v75 = v4;
  v76 = v6;
  v77 = v7;
  v78 = v8;
  v66 = v7;
  v13 = (v7 + 64) >> 6;
  v72 = (v3 + 56);
  v79 = v9;
  v69 = v6;
  v70 = v4;
  for (i = v13; ; v13 = i)
  {
    if (v4 < 0)
    {
      v21 = sub_224DAF878();
      if (!v21)
      {
        goto LABEL_65;
      }

      v73 = v21;
      sub_224A3B79C(0, &unk_2813509D0, 0x277CFA378);
      swift_dynamicCast();
      v19 = v74;
      v17 = v8;
      v2 = v9;
      if (!v74)
      {
        goto LABEL_65;
      }
    }

    else
    {
      v14 = v9;
      v15 = v8;
      if (v9)
      {
LABEL_20:
        v2 = (v14 - 1) & v14;
        v19 = *(*(v4 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
        v20 = v19;
        v17 = v15;
      }

      else
      {
        if (v13 <= (v8 + 1))
        {
          v16 = v8 + 1;
        }

        else
        {
          v16 = v13;
        }

        v17 = v16 - 1;
        v18 = v8;
        while (1)
        {
          v15 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            goto LABEL_67;
          }

          if (v15 >= v13)
          {
            break;
          }

          v14 = *(v6 + 8 * v15);
          ++v18;
          if (v14)
          {
            goto LABEL_20;
          }
        }

        v19 = 0;
        v2 = 0;
      }

      v75 = v4;
      v76 = v6;
      v77 = v66;
      v78 = v17;
      v79 = v2;
      if (!v19)
      {
LABEL_65:
        v55 = v4;
        goto LABEL_63;
      }
    }

    v22 = v19;
    v23 = sub_224DAF698();
    v24 = -1 << *(v3 + 32);
    v8 = v23 & ~v24;
    v4 = v8 >> 6;
    v15 = 1 << v8;
    if (((1 << v8) & v72[v8 >> 6]) != 0)
    {
      break;
    }

LABEL_10:

    v8 = v17;
    v9 = v2;
    v6 = v69;
    v4 = v70;
  }

  v25 = ~v24;
  v26 = sub_224A3B79C(0, &unk_2813509D0, 0x277CFA378);
  v27 = *(*(v3 + 48) + 8 * v8);
  v71 = v26;
  while (1)
  {
    v28 = sub_224DAF6A8();

    if (v28)
    {
      break;
    }

    v8 = (v8 + 1) & v25;
    v4 = v8 >> 6;
    v15 = 1 << v8;
    if (((1 << v8) & v72[v8 >> 6]) == 0)
    {
      goto LABEL_10;
    }

    v27 = *(*(v3 + 48) + 8 * v8);
  }

  v31 = *(v3 + 32);
  v63 = ((1 << v31) + 63) >> 6;
  v5 = 8 * v63;
  if ((v31 & 0x3Fu) > 0xD)
  {
    goto LABEL_68;
  }

  while (2)
  {
    v64 = &v62;
    MEMORY[0x28223BE20](v29, v30);
    v33 = &v62 - ((v32 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v33, v72, v32);
    v34 = *&v33[8 * v4] & ~v15;
    v35 = *(v3 + 16);
    v65 = v33;
    *&v33[8 * v4] = v34;
    v4 = v35 - 1;
    v37 = v69;
    v36 = v70;
    v38 = i;
LABEL_33:
    v67 = v4;
    while (v36 < 0)
    {
      v39 = sub_224DAF878();
      if (!v39)
      {
        goto LABEL_61;
      }

      v73 = v39;
      swift_dynamicCast();
      v40 = v74;
      if (!v74)
      {
        goto LABEL_61;
      }

LABEL_50:
      v45 = sub_224DAF698();
      v46 = v3;
      v47 = -1 << *(v3 + 32);
      v48 = v45 & ~v47;
      v49 = v48 >> 6;
      v50 = 1 << v48;
      if (((1 << v48) & v72[v48 >> 6]) != 0)
      {
        v51 = ~v47;
        while (1)
        {
          v8 = *(*(v46 + 48) + 8 * v48);
          v52 = sub_224DAF6A8();

          if (v52)
          {
            break;
          }

          v48 = (v48 + 1) & v51;
          v49 = v48 >> 6;
          v50 = 1 << v48;
          if (((1 << v48) & v72[v48 >> 6]) == 0)
          {
            goto LABEL_34;
          }
        }

        v53 = v65[v49];
        v65[v49] = v53 & ~v50;
        v54 = (v53 & v50) == 0;
        v3 = v46;
        v37 = v69;
        v36 = v70;
        v4 = v67;
        v38 = i;
        if (!v54)
        {
          v4 = v67 - 1;
          if (__OFSUB__(v67, 1))
          {
            __break(1u);
          }

          if (v67 == 1)
          {

            v3 = MEMORY[0x277D84FA0];
            goto LABEL_62;
          }

          goto LABEL_33;
        }
      }

      else
      {
LABEL_34:

        v3 = v46;
        v37 = v69;
        v36 = v70;
        v4 = v67;
        v38 = i;
      }
    }

    if (v2)
    {
      v15 = v17;
LABEL_48:
      v43 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v40 = *(*(v36 + 48) + ((v15 << 9) | (8 * v43)));
      v44 = v40;
      v42 = v15;
LABEL_49:
      v75 = v36;
      v76 = v37;
      v77 = v66;
      v78 = v42;
      v17 = v42;
      v79 = v2;
      if (!v40)
      {
LABEL_61:
        v3 = sub_224B05B48(v65, v63, v4, v3, &qword_27D6F3638, &qword_224DB3C10);
        goto LABEL_62;
      }

      goto LABEL_50;
    }

    if (v38 <= (v17 + 1))
    {
      v41 = v17 + 1;
    }

    else
    {
      v41 = v38;
    }

    v42 = v41 - 1;
    while (1)
    {
      v15 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v15 >= v38)
      {
        v40 = 0;
        v2 = 0;
        goto LABEL_49;
      }

      v2 = *(v37 + 8 * v15);
      ++v17;
      if (v2)
      {
        goto LABEL_48;
      }
    }

    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    v57 = v5;

    v58 = v57;
    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v59 = swift_slowAlloc();
  memcpy(v59, v72, v58);
  sub_224B04488(v59, v63, v3, v8, &v75);
  v61 = v60;

  MEMORY[0x22AA5EED0](v59, -1, -1);
  v3 = v61;
LABEL_62:
  v55 = v75;
LABEL_63:
  sub_224A3B7E4(v55);
  return v3;
}

uint64_t sub_224B010F8(uint64_t a1, uint64_t a2)
{
  v100 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5630, &unk_224DB34C0);
  v7 = MEMORY[0x28223BE20](v5 - 8, v6);
  v9 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = (&v71 - v11);
  v13 = sub_224DA9908();
  v15 = MEMORY[0x28223BE20](v13, v14);
  v91 = (&v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = MEMORY[0x28223BE20](v15, v17);
  v20 = (&v71 - v19);
  MEMORY[0x28223BE20](v18, v21);
  v86 = (&v71 - v23);
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v72 = v12;
  v74 = v9;
  v25 = a1 + 56;
  v24 = *(a1 + 56);
  v26 = -1 << *(a1 + 32);
  v85 = ~v26;
  if (-v26 < 64)
  {
    v27 = ~(-1 << -v26);
  }

  else
  {
    v27 = -1;
  }

  v93 = (v27 & v24);
  v78 = (63 - v26) >> 6;
  v92 = v22 + 16;
  v83 = (v22 + 48);
  v84 = (v22 + 56);
  v82 = (v22 + 32);
  v88 = (a2 + 56);
  v73 = v22;
  v94 = (v22 + 8);

  v29 = 0;
  v75 = a1;
  for (i = a1 + 56; ; v25 = i)
  {
    v30 = v93;
    v31 = v29;
    if (v93)
    {
LABEL_14:
      v2 = (v30 - 1) & v30;
      v35 = v72;
      (*(v73 + 16))(v72, *(a1 + 48) + *(v73 + 72) * (__clz(__rbit64(v30)) | (v31 << 6)), v13);
      v36 = 0;
      v33 = v31;
    }

    else
    {
      v32 = v78 <= (v29 + 1) ? v29 + 1 : v78;
      v33 = v32 - 1;
      v34 = v29;
      while (1)
      {
        v31 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          goto LABEL_58;
        }

        if (v31 >= v78)
        {
          break;
        }

        v30 = *(v25 + 8 * v31);
        ++v34;
        if (v30)
        {
          goto LABEL_14;
        }
      }

      v2 = 0;
      v36 = 1;
      v35 = v72;
    }

    v80 = *v84;
    v80(v35, v36, 1, v13);
    v95 = a1;
    v96 = v25;
    v97 = v85;
    v98 = v33;
    v99 = v2;
    v79 = *v83;
    if (v79(v35, 1, v13) == 1)
    {
      sub_224A3311C(v35, &unk_27D6F5630, &unk_224DB34C0);
      v65 = a1;
      goto LABEL_53;
    }

    v77 = *v82;
    v77(v86, v35, v13);
    v76 = sub_224A3CECC(&qword_281351A18, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    v37 = sub_224DAED88();
    v38 = -1 << *(a2 + 32);
    v29 = v37 & ~v38;
    v31 = v29 >> 6;
    v25 = 1 << v29;
    if (((1 << v29) & v88[v29 >> 6]) != 0)
    {
      break;
    }

    (*v94)(v86, v13);
LABEL_22:
    v29 = v33;
    v93 = v2;
  }

  v71 = v94 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v87 = ~v38;
  v39 = *(v73 + 72);
  v89 = *(v73 + 16);
  v90 = v39;
  while (1)
  {
    v89(v20, *(a2 + 48) + v90 * v29, v13);
    v40 = sub_224A3CECC(&qword_281351A10, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
    v41 = sub_224DAEDD8();
    v93 = *v94;
    v93(v20, v13);
    if (v41)
    {
      break;
    }

    v29 = (v29 + 1) & v87;
    v31 = v29 >> 6;
    v25 = 1 << v29;
    if (((1 << v29) & v88[v29 >> 6]) == 0)
    {
      a1 = v75;
      v93(v86, v13);
      goto LABEL_22;
    }
  }

  v87 = v40;
  v42 = (v93)(v86, v13);
  v44 = *(a2 + 32);
  v71 = ((1 << v44) + 63) >> 6;
  v28 = 8 * v71;
  a1 = v75;
  if ((v44 & 0x3Fu) > 0xD)
  {
    goto LABEL_59;
  }

  while (2)
  {
    v72 = &v71;
    MEMORY[0x28223BE20](v42, v43);
    v46 = &v71 - ((v45 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v46, v88, v45);
    v47 = *&v46[8 * v31] & ~v25;
    v48 = *(a2 + 16);
    v86 = v46;
    *&v46[8 * v31] = v47;
    v49 = v48 - 1;
    v29 = v74;
    v50 = i;
    v51 = v78;
LABEL_26:
    v73 = v49;
    while (v2)
    {
      v52 = v33;
LABEL_38:
      v55 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v89(v29, *(a1 + 48) + (v55 | (v52 << 6)) * v90, v13);
      v56 = 0;
LABEL_39:
      v80(v29, v56, 1, v13);
      v95 = a1;
      v96 = v50;
      v97 = v85;
      v98 = v33;
      v99 = v2;
      if (v79(v29, 1, v13) == 1)
      {
        sub_224A3311C(v29, &unk_27D6F5630, &unk_224DB34C0);
        a2 = sub_224B05568(v86, v71, v73, a2);
        goto LABEL_52;
      }

      v77(v91, v29, v13);
      v57 = sub_224DAED88();
      v58 = a2;
      v59 = -1 << *(a2 + 32);
      v60 = v57 & ~v59;
      v31 = v60 >> 6;
      v25 = 1 << v60;
      if (((1 << v60) & v88[v60 >> 6]) != 0)
      {
        v89(v20, *(v58 + 48) + v60 * v90, v13);
        v61 = sub_224DAEDD8();
        v93(v20, v13);
        if ((v61 & 1) == 0)
        {
          v62 = ~v59;
          do
          {
            v60 = (v60 + 1) & v62;
            v31 = v60 >> 6;
            v25 = 1 << v60;
            if (((1 << v60) & v88[v60 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v89(v20, *(v58 + 48) + v60 * v90, v13);
            v63 = sub_224DAEDD8();
            v93(v20, v13);
          }

          while ((v63 & 1) == 0);
        }

        v93(v91, v13);
        v64 = v86[v31];
        v86[v31] = v64 & ~v25;
        a2 = v58;
        a1 = v75;
        v29 = v74;
        v50 = i;
        v51 = v78;
        if ((v64 & v25) != 0)
        {
          v49 = v73 - 1;
          if (__OFSUB__(v73, 1))
          {
            __break(1u);
          }

          if (v73 == 1)
          {

            a2 = MEMORY[0x277D84FA0];
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v93(v91, v13);
        a2 = v58;
        a1 = v75;
        v29 = v74;
        v50 = i;
        v51 = v78;
      }
    }

    if (v51 <= (v33 + 1))
    {
      v53 = v33 + 1;
    }

    else
    {
      v53 = v51;
    }

    v54 = v53 - 1;
    while (1)
    {
      v52 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if (v52 >= v51)
      {
        v2 = 0;
        v56 = 1;
        v33 = v54;
        goto LABEL_39;
      }

      v2 = *(v50 + 8 * v52);
      ++v33;
      if (v2)
      {
        v33 = v52;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    v67 = v28;

    v86 = a2;
    v68 = v67;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v69 = v86;

      a2 = v69;
      continue;
    }

    break;
  }

  v70 = swift_slowAlloc();
  memcpy(v70, v88, v68);
  a2 = sub_224B04734(v70, v71, v86, v29, &v95);

  MEMORY[0x22AA5EED0](v70, -1, -1);
LABEL_52:
  v65 = v95;
LABEL_53:
  sub_224A3B7E4(v65);
  return a2;
}

uint64_t sub_224B01B5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_224DAAF48();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_224A3CECC(&qword_281351738, MEMORY[0x277D46790], MEMORY[0x277D467A8]);
  v32 = a1;
  v11 = sub_224DAED88();
  v12 = v10 + 56;
  v30 = v10 + 56;
  v31 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v27 = v2;
    v28 = v6;
    v29 = a2;
    v15 = ~v13;
    v18 = *(v6 + 16);
    v17 = v6 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    while (1)
    {
      v16(v9, *(v31 + 48) + v19 * v14, v5);
      sub_224A3CECC(&qword_281351730, MEMORY[0x277D46790], MEMORY[0x277D467B8]);
      v20 = sub_224DAEDD8();
      (*(v17 - 8))(v9, v5);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
      if (((*(v30 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v21 = 1;
        v6 = v28;
        a2 = v29;
        return (*(v6 + 56))(a2, v21, 1, v5);
      }
    }

    v22 = v27;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v22;
    v33 = *v22;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_224AE4690();
      v24 = v33;
    }

    v6 = v28;
    a2 = v29;
    (*(v28 + 32))(v29, *(v24 + 48) + v19 * v14, v5);
    sub_224A5D240(v14, MEMORY[0x277D46790], &qword_281351738, MEMORY[0x277D46790], MEMORY[0x277D467A8]);
    v21 = 0;
    *v22 = v33;
  }

  else
  {
    v21 = 1;
  }

  return (*(v6 + 56))(a2, v21, 1, v5);
}

uint64_t sub_224B01E48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_224DA9688();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_224A3CECC(&qword_281351A80, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  v32 = a1;
  v11 = sub_224DAED88();
  v12 = v10 + 56;
  v30 = v10 + 56;
  v31 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v27 = v2;
    v28 = v6;
    v29 = a2;
    v15 = ~v13;
    v18 = *(v6 + 16);
    v17 = v6 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    while (1)
    {
      v16(v9, *(v31 + 48) + v19 * v14, v5);
      sub_224A3CECC(&qword_281351A78, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
      v20 = sub_224DAEDD8();
      (*(v17 - 8))(v9, v5);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
      if (((*(v30 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v21 = 1;
        v6 = v28;
        a2 = v29;
        return (*(v6 + 56))(a2, v21, 1, v5);
      }
    }

    v22 = v27;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v22;
    v33 = *v22;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_224AE4644();
      v24 = v33;
    }

    v6 = v28;
    a2 = v29;
    (*(v28 + 32))(v29, *(v24 + 48) + v19 * v14, v5);
    sub_224A5D240(v14, MEMORY[0x277CC9260], &qword_281351A80, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
    v21 = 0;
    *v22 = v33;
  }

  else
  {
    v21 = 1;
  }

  return (*(v6 + 56))(a2, v21, 1, v5);
}

uint64_t sub_224B02170(void *a1, unint64_t *a2, void *a3, void (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *v5;
  if ((*v5 & 0xC000000000000001) != 0)
  {
    if (v7 < 0)
    {
      v11 = *v5;
    }

    else
    {
      v11 = v7 & 0xFFFFFFFFFFFFFF8;
    }

    v12 = a1;
    v13 = sub_224DAF888();

    if (v13)
    {
      v14 = sub_224B05D34(v11, v12, a5, a2, a3);

      return v14;
    }

    return 0;
  }

  v17 = v5;
  sub_224A3B79C(0, a2, a3);
  v18 = sub_224DAF698();
  v19 = -1 << *(v7 + 32);
  v20 = v18 & ~v19;
  if (((*(v7 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
  {
    return 0;
  }

  v21 = ~v19;
  while (1)
  {
    v22 = *(*(v7 + 48) + 8 * v20);
    v23 = sub_224DAF6A8();

    if (v23)
    {
      break;
    }

    v20 = (v20 + 1) & v21;
    if (((*(v7 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25 = *v17;
  v27 = *v17;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a4();
    v25 = v27;
  }

  v26 = *(*(v25 + 48) + 8 * v20);
  sub_224A4B8F0(v20);
  result = v26;
  *v17 = v27;
  return result;
}

uint64_t sub_224B02318(char a1)
{
  v3 = *v1;
  sub_224DAFE68();
  MEMORY[0x22AA5E1E0](a1 & 1);
  v4 = sub_224DAFEA8();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 2;
  }

  v7 = ~v5;
  while (*(*(v3 + 48) + v6) != (a1 & 1))
  {
    v6 = (v6 + 1) & v7;
    if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 2;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  v12 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_224AE48C4();
    v10 = v12;
  }

  v11 = *(*(v10 + 48) + v6);
  sub_224B06210(v6);
  result = v11;
  *v1 = v12;
  return result;
}

uint64_t sub_224B024C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v26 - v8;
  v10 = *v2;
  sub_224A33088(&qword_281351878, &unk_27D6F30D0, &unk_224DB2AC0, MEMORY[0x277CFA018]);
  v32 = a1;
  v11 = sub_224DAED88();
  v30 = v10 + 56;
  v31 = v10;
  v12 = -1 << *(v10 + 32);
  v13 = v11 & ~v12;
  if ((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v27 = v2;
    v28 = v6;
    v29 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v19 = v18 * v13;
      v15(v9, *(v31 + 48) + v18 * v13, v5);
      sub_224A33088(&qword_281351870, &unk_27D6F30D0, &unk_224DB2AC0, MEMORY[0x277CFA020]);
      v20 = sub_224DAEDD8();
      (*(v16 - 8))(v9, v5);
      if (v20)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v30 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v21 = 1;
        v6 = v28;
        a2 = v29;
        return (*(v6 + 56))(a2, v21, 1, v5);
      }
    }

    v22 = v27;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v22;
    v33 = *v22;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_224AE4B98();
      v24 = v33;
    }

    v6 = v28;
    a2 = v29;
    (*(v28 + 32))(v29, *(v24 + 48) + v19, v5);
    sub_224A9DF9C(v13, &unk_27D6F30D0, &unk_224DB2AC0, &qword_281351878, MEMORY[0x277CFA018]);
    v21 = 0;
    *v22 = v33;
  }

  else
  {
    v21 = 1;
  }

  return (*(v6 + 56))(a2, v21, 1, v5);
}

uint64_t sub_224B0279C(uint64_t a1)
{
  v2 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v2 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v2 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = sub_224DAF888();

    if (v5)
    {
      v6 = sub_224B06034(v4, a1);

      return v6;
    }

    return 0;
  }

  sub_224DAB338();
  sub_224A3CECC(&unk_281350FE0, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB0]);
  v8 = sub_224DAED88();
  v9 = -1 << *(v2 + 32);
  v10 = v8 & ~v9;
  if (((*(v2 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
    return 0;
  }

  v11 = ~v9;
  sub_224A3CECC(&unk_281350FD0, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB8]);
  while ((sub_224DAEDD8() & 1) == 0)
  {
    v10 = (v10 + 1) & v11;
    if (((*(v2 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v1;
  v15 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_224AE4D78();
    v13 = v15;
  }

  v14 = *(*(v13 + 48) + 8 * v10);
  sub_224B065A4(v10);
  result = v14;
  *v1 = v15;
  return result;
}

uint64_t sub_224B0299C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6570, &qword_224DB3C40);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v26 - v8;
  v10 = *v2;
  sub_224A33088(&unk_27D6F3B50, &unk_27D6F6570, &qword_224DB3C40, MEMORY[0x277CFA018]);
  v32 = a1;
  v11 = sub_224DAED88();
  v30 = v10 + 56;
  v31 = v10;
  v12 = -1 << *(v10 + 32);
  v13 = v11 & ~v12;
  if ((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v27 = v2;
    v28 = v6;
    v29 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v19 = v18 * v13;
      v15(v9, *(v31 + 48) + v18 * v13, v5);
      sub_224A33088(&qword_27D6F3670, &unk_27D6F6570, &qword_224DB3C40, MEMORY[0x277CFA020]);
      v20 = sub_224DAEDD8();
      (*(v16 - 8))(v9, v5);
      if (v20)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v30 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v21 = 1;
        v6 = v28;
        a2 = v29;
        return (*(v6 + 56))(a2, v21, 1, v5);
      }
    }

    v22 = v27;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v22;
    v33 = *v22;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_224AE4EC8();
      v24 = v33;
    }

    v6 = v28;
    a2 = v29;
    (*(v28 + 32))(v29, *(v24 + 48) + v19, v5);
    sub_224A9DF9C(v13, &unk_27D6F6570, &qword_224DB3C40, &unk_27D6F3B50, MEMORY[0x277CFA018]);
    v21 = 0;
    *v22 = v33;
  }

  else
  {
    v21 = 1;
  }

  return (*(v6 + 56))(a2, v21, 1, v5);
}

uint64_t sub_224B02CC4(unsigned __int8 a1)
{
  v2 = v1;
  v4 = *v1;
  sub_224DAFE68();
  sub_224DAEE78();

  v5 = sub_224DAFEA8();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 4;
  }

  v27 = v1;
  v28 = ~v6;
  v8 = a1;
  while (1)
  {
    v9 = *(*(v4 + 48) + v7);
    v10 = 0xD000000000000014;
    v11 = v9 == 2 ? 0x64657472617473 : 0xD000000000000014;
    v12 = v9 == 2 ? 0xE700000000000000 : 0x8000000224DC4690;
    v13 = *(*(v4 + 48) + v7) ? 0x437363697274656DLL : 0xD000000000000012;
    v14 = *(*(v4 + 48) + v7) ? 0xEE006465676E6168 : 0x8000000224DC4660;
    v15 = *(*(v4 + 48) + v7) <= 1u ? v13 : v11;
    v16 = *(*(v4 + 48) + v7) <= 1u ? v14 : v12;
    if (v8 == 2)
    {
      v10 = 0x64657472617473;
      v17 = 0xE700000000000000;
    }

    else
    {
      v17 = 0x8000000224DC4690;
    }

    v18 = v8 ? 0x437363697274656DLL : 0xD000000000000012;
    v19 = v8 ? 0xEE006465676E6168 : 0x8000000224DC4660;
    v20 = v8 <= 1 ? v18 : v10;
    v21 = v8 <= 1 ? v19 : v17;
    if (v15 == v20 && v16 == v21)
    {
      break;
    }

    v22 = sub_224DAFD88();

    if (v22)
    {
      goto LABEL_42;
    }

    v7 = (v7 + 1) & v28;
    if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
    {
      return 4;
    }
  }

LABEL_42:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25 = *v2;
  v29 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_224AE5154();
    v25 = v29;
  }

  v23 = *(*(v25 + 48) + v7);
  sub_224B06790(v7);
  *v27 = v29;
  return v23;
}

uint64_t sub_224B03048@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v26 - v8;
  v10 = *v2;
  sub_224A33088(&unk_281351900, &unk_27D6F3920, &qword_224DB35B0, MEMORY[0x277CF9FA8]);
  v32 = a1;
  v11 = sub_224DAED88();
  v30 = v10 + 56;
  v31 = v10;
  v12 = -1 << *(v10 + 32);
  v13 = v11 & ~v12;
  if ((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v27 = v2;
    v28 = v6;
    v29 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v19 = v18 * v13;
      v15(v9, *(v31 + 48) + v18 * v13, v5);
      sub_224A33088(&unk_2813518F0, &unk_27D6F3920, &qword_224DB35B0, MEMORY[0x277CF9FB0]);
      v20 = sub_224DAEDD8();
      (*(v16 - 8))(v9, v5);
      if (v20)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v30 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v21 = 1;
        v6 = v28;
        a2 = v29;
        return (*(v6 + 56))(a2, v21, 1, v5);
      }
    }

    v22 = v27;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v22;
    v33 = *v22;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_224AE4A04();
      v24 = v33;
    }

    v6 = v28;
    a2 = v29;
    (*(v28 + 32))(v29, *(v24 + 48) + v19, v5);
    sub_224A9DF9C(v13, &unk_27D6F3920, &qword_224DB35B0, &unk_281351900, MEMORY[0x277CF9FA8]);
    v21 = 0;
    *v22 = v33;
  }

  else
  {
    v21 = 1;
  }

  return (*(v6 + 56))(a2, v21, 1, v5);
}

uint64_t sub_224B0331C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_224DAC268();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_224A3CECC(&qword_281350E50, MEMORY[0x277CF9978], MEMORY[0x277CF9988]);
  v32 = a1;
  v11 = sub_224DAED88();
  v12 = v10 + 56;
  v30 = v10 + 56;
  v31 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v27 = v2;
    v28 = v6;
    v29 = a2;
    v15 = ~v13;
    v18 = *(v6 + 16);
    v17 = v6 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    while (1)
    {
      v16(v9, *(v31 + 48) + v19 * v14, v5);
      sub_224A3CECC(&qword_281350E48, MEMORY[0x277CF9978], MEMORY[0x277CF9990]);
      v20 = sub_224DAEDD8();
      (*(v17 - 8))(v9, v5);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
      if (((*(v30 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v21 = 1;
        v6 = v28;
        a2 = v29;
        return (*(v6 + 56))(a2, v21, 1, v5);
      }
    }

    v22 = v27;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v22;
    v33 = *v22;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_224AE5118();
      v24 = v33;
    }

    v6 = v28;
    a2 = v29;
    (*(v28 + 32))(v29, *(v24 + 48) + v19 * v14, v5);
    sub_224A5D240(v14, MEMORY[0x277CF9978], &qword_281350E50, MEMORY[0x277CF9978], MEMORY[0x277CF9988]);
    v21 = 0;
    *v22 = v33;
  }

  else
  {
    v21 = 1;
  }

  return (*(v6 + 56))(a2, v21, 1, v5);
}

uint64_t sub_224B03608(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v50 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3898, &unk_224DB4620);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v49 - v11;
  v13 = sub_224DAAF48();
  v15 = MEMORY[0x28223BE20](v13, v14);
  v60 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v15, v17);
  v66 = &v49 - v19;
  v20 = *(a3 + 16);
  v21 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v22 = *(a1 + v21);
  v52 = a1;
  v53 = v12;
  *(a1 + v21) = v22 & ((-1 << a4) - 1);
  v23 = v20 - 1;
  v63 = v24 + 16;
  v64 = a3;
  v57 = (v24 + 48);
  v58 = (v24 + 56);
  v56 = (v24 + 32);
  v62 = a3 + 56;
  v59 = v24;
  v65 = (v24 + 8);
  v54 = a5;
  while (2)
  {
    v51 = v23;
    do
    {
      while (1)
      {
        v26 = *a5;
        v27 = a5[1];
        v29 = a5[2];
        v28 = a5[3];
        v30 = a5[4];
        if (!v30)
        {
          v32 = (v29 + 64) >> 6;
          if (v32 <= v28 + 1)
          {
            v33 = v28 + 1;
          }

          else
          {
            v33 = (v29 + 64) >> 6;
          }

          v34 = v33 - 1;
          while (1)
          {
            v31 = v28 + 1;
            if (__OFADD__(v28, 1))
            {
              break;
            }

            if (v31 >= v32)
            {
              v35 = 0;
              v36 = 1;
              goto LABEL_15;
            }

            v30 = *(v27 + 8 * v31);
            ++v28;
            if (v30)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_30;
        }

        v31 = a5[3];
LABEL_14:
        v35 = (v30 - 1) & v30;
        (*(v59 + 16))(v12, *(v26 + 48) + *(v59 + 72) * (__clz(__rbit64(v30)) | (v31 << 6)), v13);
        v36 = 0;
        v34 = v31;
LABEL_15:
        (*v58)(v12, v36, 1, v13);
        *a5 = v26;
        a5[1] = v27;
        a5[2] = v29;
        a5[3] = v34;
        a5[4] = v35;
        if ((*v57)(v12, 1, v13) == 1)
        {
          sub_224A3311C(v12, &qword_27D6F3898, &unk_224DB4620);
          v48 = v64;

          return sub_224B04C08(v52, v50, v51, v48);
        }

        (*v56)(v66, v12, v13);
        v37 = v64;
        sub_224A3CECC(&qword_281351738, MEMORY[0x277D46790], MEMORY[0x277D467A8]);
        v38 = sub_224DAED88();
        v39 = -1 << *(v37 + 32);
        v40 = v38 & ~v39;
        v41 = v40 >> 6;
        v42 = 1 << v40;
        if (((1 << v40) & *(v62 + 8 * (v40 >> 6))) != 0)
        {
          break;
        }

        v25 = *v65;
LABEL_4:
        result = (v25)(v66, v13);
      }

      v55 = v65 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v61 = ~v39;
      v43 = *(v59 + 72);
      v44 = *(v59 + 16);
      while (1)
      {
        v45 = v60;
        v44(v60, *(v64 + 48) + v43 * v40, v13);
        sub_224A3CECC(&qword_281351730, MEMORY[0x277D46790], MEMORY[0x277D467B8]);
        v46 = sub_224DAEDD8();
        v25 = *v65;
        (*v65)(v45, v13);
        if (v46)
        {
          break;
        }

        v40 = (v40 + 1) & v61;
        v41 = v40 >> 6;
        v42 = 1 << v40;
        if (((1 << v40) & *(v62 + 8 * (v40 >> 6))) == 0)
        {
          v12 = v53;
          a5 = v54;
          goto LABEL_4;
        }
      }

      result = (v25)(v66, v13);
      v12 = v53;
      v47 = v52[v41];
      v52[v41] = v47 & ~v42;
      a5 = v54;
    }

    while ((v47 & v42) == 0);
    v23 = v51 - 1;
    if (__OFSUB__(v51, 1))
    {
LABEL_30:
      __break(1u);
      return result;
    }

    if (v51 != 1)
    {
      continue;
    }

    return MEMORY[0x277D84FA0];
  }
}

uint64_t sub_224B03ADC(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v50 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4680, &unk_224DB4610);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v49 - v11;
  v13 = sub_224DA9688();
  v15 = MEMORY[0x28223BE20](v13, v14);
  v60 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v15, v17);
  v66 = &v49 - v19;
  v20 = *(a3 + 16);
  v21 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v22 = *(a1 + v21);
  v52 = a1;
  v53 = v12;
  *(a1 + v21) = v22 & ((-1 << a4) - 1);
  v23 = v20 - 1;
  v63 = v24 + 16;
  v64 = a3;
  v57 = (v24 + 48);
  v58 = (v24 + 56);
  v56 = (v24 + 32);
  v62 = a3 + 56;
  v59 = v24;
  v65 = (v24 + 8);
  v54 = a5;
  while (2)
  {
    v51 = v23;
    do
    {
      while (1)
      {
        v26 = *a5;
        v27 = a5[1];
        v29 = a5[2];
        v28 = a5[3];
        v30 = a5[4];
        if (!v30)
        {
          v32 = (v29 + 64) >> 6;
          if (v32 <= v28 + 1)
          {
            v33 = v28 + 1;
          }

          else
          {
            v33 = (v29 + 64) >> 6;
          }

          v34 = v33 - 1;
          while (1)
          {
            v31 = v28 + 1;
            if (__OFADD__(v28, 1))
            {
              break;
            }

            if (v31 >= v32)
            {
              v35 = 0;
              v36 = 1;
              goto LABEL_15;
            }

            v30 = *(v27 + 8 * v31);
            ++v28;
            if (v30)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_30;
        }

        v31 = a5[3];
LABEL_14:
        v35 = (v30 - 1) & v30;
        (*(v59 + 16))(v12, *(v26 + 48) + *(v59 + 72) * (__clz(__rbit64(v30)) | (v31 << 6)), v13);
        v36 = 0;
        v34 = v31;
LABEL_15:
        (*v58)(v12, v36, 1, v13);
        *a5 = v26;
        a5[1] = v27;
        a5[2] = v29;
        a5[3] = v34;
        a5[4] = v35;
        if ((*v57)(v12, 1, v13) == 1)
        {
          sub_224A3311C(v12, &unk_27D6F4680, &unk_224DB4610);
          v48 = v64;

          return sub_224B04F30(v52, v50, v51, v48);
        }

        (*v56)(v66, v12, v13);
        v37 = v64;
        sub_224A3CECC(&qword_281351A80, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
        v38 = sub_224DAED88();
        v39 = -1 << *(v37 + 32);
        v40 = v38 & ~v39;
        v41 = v40 >> 6;
        v42 = 1 << v40;
        if (((1 << v40) & *(v62 + 8 * (v40 >> 6))) != 0)
        {
          break;
        }

        v25 = *v65;
LABEL_4:
        result = (v25)(v66, v13);
      }

      v55 = v65 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v61 = ~v39;
      v43 = *(v59 + 72);
      v44 = *(v59 + 16);
      while (1)
      {
        v45 = v60;
        v44(v60, *(v64 + 48) + v43 * v40, v13);
        sub_224A3CECC(&qword_281351A78, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
        v46 = sub_224DAEDD8();
        v25 = *v65;
        (*v65)(v45, v13);
        if (v46)
        {
          break;
        }

        v40 = (v40 + 1) & v61;
        v41 = v40 >> 6;
        v42 = 1 << v40;
        if (((1 << v40) & *(v62 + 8 * (v40 >> 6))) == 0)
        {
          v12 = v53;
          a5 = v54;
          goto LABEL_4;
        }
      }

      result = (v25)(v66, v13);
      v12 = v53;
      v47 = v52[v41];
      v52[v41] = v47 & ~v42;
      a5 = v54;
    }

    while ((v47 & v42) == 0);
    v23 = v51 - 1;
    if (__OFSUB__(v51, 1))
    {
LABEL_30:
      __break(1u);
      return result;
    }

    if (v51 != 1)
    {
      continue;
    }

    return MEMORY[0x277D84FA0];
  }
}

uint64_t sub_224B03FB0(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v50 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v49 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v15 = MEMORY[0x28223BE20](v13, v14);
  v60 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v15, v17);
  v66 = &v49 - v19;
  v20 = *(a3 + 16);
  v21 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v22 = *(a1 + v21);
  v52 = a1;
  v53 = v12;
  *(a1 + v21) = v22 & ((-1 << a4) - 1);
  v23 = v20 - 1;
  v63 = v24 + 16;
  v64 = a3;
  v57 = (v24 + 48);
  v58 = (v24 + 56);
  v56 = (v24 + 32);
  v62 = a3 + 56;
  v59 = v24;
  v65 = (v24 + 8);
  v54 = a5;
  while (2)
  {
    v51 = v23;
    do
    {
      while (1)
      {
        v27 = *a5;
        v26 = a5[1];
        v29 = a5[2];
        v28 = a5[3];
        v30 = a5[4];
        if (!v30)
        {
          v32 = (v29 + 64) >> 6;
          if (v32 <= v28 + 1)
          {
            v33 = v28 + 1;
          }

          else
          {
            v33 = (v29 + 64) >> 6;
          }

          v34 = v33 - 1;
          while (1)
          {
            v31 = v28 + 1;
            if (__OFADD__(v28, 1))
            {
              break;
            }

            if (v31 >= v32)
            {
              v35 = 0;
              v36 = 1;
              goto LABEL_15;
            }

            v30 = *(v26 + 8 * v31);
            ++v28;
            if (v30)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_30;
        }

        v31 = a5[3];
LABEL_14:
        v35 = (v30 - 1) & v30;
        (*(v59 + 16))(v12, *(v27 + 48) + *(v59 + 72) * (__clz(__rbit64(v30)) | (v31 << 6)), v13);
        v36 = 0;
        v34 = v31;
LABEL_15:
        (*v58)(v12, v36, 1, v13);
        *a5 = v27;
        a5[1] = v26;
        a5[2] = v29;
        a5[3] = v34;
        a5[4] = v35;
        if ((*v57)(v12, 1, v13) == 1)
        {
          sub_224A3311C(v12, &unk_27D6F5060, &qword_224DB5620);
          v48 = v64;

          return sub_224A41D48(v52, v50, v51, v48);
        }

        (*v56)(v66, v12, v13);
        v37 = v64;
        sub_224A33088(&qword_281351970, &qword_27D6F3900, &unk_224DB4640, MEMORY[0x277CF9FA8]);
        v38 = sub_224DAED88();
        v39 = -1 << *(v37 + 32);
        v40 = v38 & ~v39;
        v41 = v40 >> 6;
        v42 = 1 << v40;
        if (((1 << v40) & *(v62 + 8 * (v40 >> 6))) != 0)
        {
          break;
        }

        v25 = *v65;
LABEL_4:
        result = (v25)(v66, v13);
      }

      v55 = v65 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v61 = ~v39;
      v43 = *(v59 + 72);
      v44 = *(v59 + 16);
      while (1)
      {
        v45 = v60;
        v44(v60, *(v64 + 48) + v43 * v40, v13);
        sub_224A33088(&unk_281351960, &qword_27D6F3900, &unk_224DB4640, MEMORY[0x277CF9FB0]);
        v46 = sub_224DAEDD8();
        v25 = *v65;
        (*v65)(v45, v13);
        if (v46)
        {
          break;
        }

        v40 = (v40 + 1) & v61;
        v41 = v40 >> 6;
        v42 = 1 << v40;
        if (((1 << v40) & *(v62 + 8 * (v40 >> 6))) == 0)
        {
          v12 = v53;
          a5 = v54;
          goto LABEL_4;
        }
      }

      result = (v25)(v66, v13);
      v12 = v53;
      v47 = v52[v41];
      v52[v41] = v47 & ~v42;
      a5 = v54;
    }

    while ((v47 & v42) == 0);
    v23 = v51 - 1;
    if (__OFSUB__(v51, 1))
    {
LABEL_30:
      __break(1u);
      return result;
    }

    if (v51 != 1)
    {
      continue;
    }

    return MEMORY[0x277D84FA0];
  }
}

void sub_224B04488(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = a5;
  v7 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v33 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        if ((*v5 & 0x8000000000000000) != 0)
        {
          if (!sub_224DAF878())
          {
            goto LABEL_30;
          }

          sub_224A3B79C(0, &unk_2813509D0, 0x277CFA378);
          swift_dynamicCast();
          v12 = v34;
          if (!v34)
          {
            goto LABEL_30;
          }
        }

        else
        {
          v9 = v5[3];
          v10 = v5[4];
          if (!v10)
          {
            v13 = (v5[2] + 64) >> 6;
            if (v13 <= v9 + 1)
            {
              v14 = v9 + 1;
            }

            else
            {
              v14 = (v5[2] + 64) >> 6;
            }

            v15 = v14 - 1;
            while (1)
            {
              v11 = v9 + 1;
              if (__OFADD__(v9, 1))
              {
                break;
              }

              if (v11 >= v13)
              {
                v12 = 0;
                v16 = 0;
                goto LABEL_18;
              }

              v10 = *(v5[1] + 8 * v11);
              ++v9;
              if (v10)
              {
                goto LABEL_17;
              }
            }

            __break(1u);
            goto LABEL_32;
          }

          v11 = v5[3];
LABEL_17:
          v16 = (v10 - 1) & v10;
          v12 = *(*(*v5 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
          v17 = v12;
          v15 = v11;
LABEL_18:
          v5[3] = v15;
          v5[4] = v16;
          if (!v12)
          {
LABEL_30:

            sub_224B05B48(a1, a2, v30, a3, &qword_27D6F3638, &qword_224DB3C10);
            return;
          }
        }

        v18 = sub_224DAF698();
        v19 = -1 << *(a3 + 32);
        v20 = v18 & ~v19;
        v21 = v20 >> 6;
        v22 = 1 << v20;
        if (((1 << v20) & *(v33 + 8 * (v20 >> 6))) == 0)
        {
          goto LABEL_3;
        }

        sub_224A3B79C(0, &unk_2813509D0, 0x277CFA378);
        v23 = *(*(a3 + 48) + 8 * v20);
        v24 = sub_224DAF6A8();

        if (v24)
        {
          break;
        }

        v25 = ~v19;
        while (1)
        {
          v20 = (v20 + 1) & v25;
          v21 = v20 >> 6;
          v22 = 1 << v20;
          if (((1 << v20) & *(v33 + 8 * (v20 >> 6))) == 0)
          {
            break;
          }

          v26 = *(*(a3 + 48) + 8 * v20);
          v27 = sub_224DAF6A8();

          if (v27)
          {
            goto LABEL_24;
          }
        }

LABEL_3:

        v5 = a5;
      }

LABEL_24:

      v28 = a1[v21];
      a1[v21] = v28 & ~v22;
      v5 = a5;
    }

    while ((v28 & v22) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_32:
      __break(1u);
      return;
    }

    if (v30 != 1)
    {
      continue;
    }

    break;
  }
}

uint64_t sub_224B04734(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v50 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5630, &unk_224DB34C0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v49 - v11;
  v13 = sub_224DA9908();
  v15 = MEMORY[0x28223BE20](v13, v14);
  v60 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v15, v17);
  v66 = &v49 - v19;
  v20 = *(a3 + 16);
  v21 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v22 = *(a1 + v21);
  v52 = a1;
  v53 = v12;
  *(a1 + v21) = v22 & ((-1 << a4) - 1);
  v23 = v20 - 1;
  v63 = v24 + 16;
  v64 = a3;
  v57 = (v24 + 48);
  v58 = (v24 + 56);
  v56 = (v24 + 32);
  v62 = a3 + 56;
  v59 = v24;
  v65 = (v24 + 8);
  v54 = a5;
  while (2)
  {
    v51 = v23;
    do
    {
      while (1)
      {
        v26 = *a5;
        v27 = a5[1];
        v29 = a5[2];
        v28 = a5[3];
        v30 = a5[4];
        if (!v30)
        {
          v32 = (v29 + 64) >> 6;
          if (v32 <= v28 + 1)
          {
            v33 = v28 + 1;
          }

          else
          {
            v33 = (v29 + 64) >> 6;
          }

          v34 = v33 - 1;
          while (1)
          {
            v31 = v28 + 1;
            if (__OFADD__(v28, 1))
            {
              break;
            }

            if (v31 >= v32)
            {
              v35 = 0;
              v36 = 1;
              goto LABEL_15;
            }

            v30 = *(v27 + 8 * v31);
            ++v28;
            if (v30)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_30;
        }

        v31 = a5[3];
LABEL_14:
        v35 = (v30 - 1) & v30;
        (*(v59 + 16))(v12, *(v26 + 48) + *(v59 + 72) * (__clz(__rbit64(v30)) | (v31 << 6)), v13);
        v36 = 0;
        v34 = v31;
LABEL_15:
        (*v58)(v12, v36, 1, v13);
        *a5 = v26;
        a5[1] = v27;
        a5[2] = v29;
        a5[3] = v34;
        a5[4] = v35;
        if ((*v57)(v12, 1, v13) == 1)
        {
          sub_224A3311C(v12, &unk_27D6F5630, &unk_224DB34C0);
          v48 = v64;

          return sub_224B05568(v52, v50, v51, v48);
        }

        (*v56)(v66, v12, v13);
        v37 = v64;
        sub_224A3CECC(&qword_281351A18, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
        v38 = sub_224DAED88();
        v39 = -1 << *(v37 + 32);
        v40 = v38 & ~v39;
        v41 = v40 >> 6;
        v42 = 1 << v40;
        if (((1 << v40) & *(v62 + 8 * (v40 >> 6))) != 0)
        {
          break;
        }

        v25 = *v65;
LABEL_4:
        result = (v25)(v66, v13);
      }

      v55 = v65 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v61 = ~v39;
      v43 = *(v59 + 72);
      v44 = *(v59 + 16);
      while (1)
      {
        v45 = v60;
        v44(v60, *(v64 + 48) + v43 * v40, v13);
        sub_224A3CECC(&qword_281351A10, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
        v46 = sub_224DAEDD8();
        v25 = *v65;
        (*v65)(v45, v13);
        if (v46)
        {
          break;
        }

        v40 = (v40 + 1) & v61;
        v41 = v40 >> 6;
        v42 = 1 << v40;
        if (((1 << v40) & *(v62 + 8 * (v40 >> 6))) == 0)
        {
          v12 = v53;
          a5 = v54;
          goto LABEL_4;
        }
      }

      result = (v25)(v66, v13);
      v12 = v53;
      v47 = v52[v41];
      v52[v41] = v47 & ~v42;
      a5 = v54;
    }

    while ((v47 & v42) == 0);
    v23 = v51 - 1;
    if (__OFSUB__(v51, 1))
    {
LABEL_30:
      __break(1u);
      return result;
    }

    if (v51 != 1)
    {
      continue;
    }

    return MEMORY[0x277D84FA0];
  }
}