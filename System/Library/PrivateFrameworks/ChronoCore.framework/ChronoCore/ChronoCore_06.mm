uint64_t sub_224AC1B84(uint64_t (*a1)(uint64_t))
{
  sub_224DAE438();
  v2 = sub_224DAB348();
  return a1(v2);
}

uint64_t sub_224AC1C08(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = *a5;
  v11 = sub_224A3A40C(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_224B0EE4C(v16, a4 & 1);
      v11 = sub_224A3A40C(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_224DAFDD8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_224B250FC();
      v11 = v19;
    }
  }

  v21 = *a5;
  if (v17)
  {
    v22 = (v21[7] + 16 * v11);
    *v22 = a1;
    v22[1] = &off_283832818;

    return swift_unknownObjectRelease();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v21[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  v25 = (v21[7] + 16 * v11);
  *v25 = a1;
  v25[1] = &off_283832818;
  v26 = v21[2];
  v15 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v27;
}

uint64_t sub_224AC1D9C(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_224A78024(result, a2);
  }

  return result;
}

uint64_t sub_224AC1DB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_224AC1E18(uint64_t (*a1)(uint64_t))
{
  type metadata accessor for PushEvent(0);
  v2 = sub_224DAB348();
  return a1(v2);
}

uint64_t sub_224AC1E9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32C0, &qword_224DB3220);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_224AC1F14(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_224AC1F7C()
{
  result = qword_27D6F32D0;
  if (!qword_27D6F32D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F32D0);
  }

  return result;
}

uint64_t sub_224AC1FD0@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[17];
  v4 = v1[18];
  __swift_project_boxed_opaque_existential_1(v1 + 14, v3);
  result = (*(v4 + 24))(v3, v4);
  *a1 = result;
  return result;
}

uint64_t sub_224AC203C@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[27];
  v4 = v1[28];
  __swift_project_boxed_opaque_existential_1(v1 + 24, v3);
  result = (*(v4 + 8))(v3, v4);
  *a1 = result;
  return result;
}

uint64_t sub_224AC20C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_224AC2130(uint64_t (*a1)(void))
{
  v3 = *(type metadata accessor for IncomingMessage(0) - 8);
  sub_224ABA44C(*(v1 + 24), *(v1 + 32), (v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80))));
  return a1();
}

unint64_t sub_224AC21B4()
{
  result = qword_281350840;
  if (!qword_281350840)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281350840);
  }

  return result;
}

uint64_t sub_224AC2200()
{
  v1 = *(sub_224DAC5E8() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_224AB80B0(v2, v3);
}

uint64_t sub_224AC2264()
{
  v1 = *(sub_224DAC5E8() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));
  v4 = *(v3 + *(v1 + 64));

  return sub_224AB6978(v2, v3, v4);
}

uint64_t sub_224AC22E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for PushService.ServerError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PushService.ServerError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_224AC24C0()
{
  result = qword_27D6F3310;
  if (!qword_27D6F3310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F3310);
  }

  return result;
}

uint64_t sub_224AC255C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_224AC25D0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_224DABD48();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v8 = *(v1 + 32);
  os_unfair_lock_lock(*(v8 + 16));
  v9 = sub_224C5B090(a1);
  if (v9)
  {
    v10 = *(v2 + 24);
    (*(v5 + 16))(&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
    v11 = (*(v5 + 80) + 24) & ~*(v5 + 80);
    v12 = swift_allocObject();
    *(v12 + 16) = v2;
    (*(v5 + 32))(v12 + v11, &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);

    _s10ChronoCore14PushFoundationO20KeepAliveTransactionC9asyncTask6reason5queue5delay8wrappingySS_So012OS_dispatch_K0CSdyyycctFZ_0(0x6573616261746144, 0xE800000000000000, v10, sub_224AC2AB0, v12, 0.0);
  }

  os_unfair_lock_unlock(*(v8 + 16));
  return v9 & 1;
}

uint64_t sub_224AC276C(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_224DABD48();
  MEMORY[0x28223BE20](v5, v6);
  v7 = sub_224DABBC8();
  return a1(v7);
}

uint64_t sub_224AC2AB0(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v5 = *(sub_224DABD48() - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_224AC276C(a1, a2, v6, v7);
}

double sub_224AC2B34()
{
  sub_224DABAD8();
  sub_224DAB978();

  return result;
}

void *sub_224AC2B88(uint64_t a1)
{
  v49 = a1;
  v2 = sub_224DABD48();
  v47 = *(v2 - 8);
  v48 = v2;
  v4 = MEMORY[0x28223BE20](v2, v3);
  v44 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v44 - v7;
  v50 = sub_224DAF3C8();
  v9 = *(v50 - 1);
  MEMORY[0x28223BE20](v50, v10);
  v46 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_224DAF318();
  MEMORY[0x28223BE20](v12, v13);
  v14 = sub_224DAB848();
  MEMORY[0x28223BE20](v14 - 8, v15);
  type metadata accessor for PublicTokenStore();
  v16 = swift_allocObject();
  *(v16 + 16) = MEMORY[0x277D84F98];
  v1[2] = v16;
  type metadata accessor for UnfairLock();
  v17 = swift_allocObject();
  v18 = swift_slowAlloc();
  *v18 = 0;
  *(v17 + 16) = v18;
  v1[4] = v17;
  sub_224AC319C();
  sub_224DAB7E8();
  v51 = MEMORY[0x277D84F90];
  sub_224AC31E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3470, qword_224DB38B0);
  sub_224AC3240();
  sub_224DAF788();
  (*(v9 + 104))(v46, *MEMORY[0x277D85260], v50);
  v1[3] = sub_224DAF418();
  v1[5] = v49;

  sub_224DAB918();
  v19 = sub_224DAB908();
  v45 = v1;

  v20 = *(v19 + 16);
  v46 = v19;
  v21 = 0;
  if (v20)
  {
    v22 = *(v47 + 16);
    v23 = v19 + ((*(v47 + 80) + 32) & ~*(v47 + 80));
    v49 = *(v47 + 72);
    v50 = v22;
    v24 = (v47 + 8);
    v25 = 0xE000000000000000;
    v26 = v20;
    v27 = v48;
    do
    {
      v50(v8, v23, v27);
      v51 = v21;
      v52 = v25;

      MEMORY[0x22AA5D210](8236, 0xE200000000000000);
      v28 = sub_224DABD28();
      MEMORY[0x22AA5D210](v28);

      v21 = v51;
      v25 = v52;
      (*v24)(v8, v27);
      v23 += v49;
      --v26;
    }

    while (v26);
  }

  else
  {
    v25 = 0xE000000000000000;
  }

  if (qword_281351438 != -1)
  {
    swift_once();
  }

  v29 = sub_224DAB258();
  __swift_project_value_buffer(v29, qword_281364D78);

  v30 = sub_224DAB228();
  v31 = sub_224DAF2A8();

  v32 = os_log_type_enabled(v30, v31);
  v33 = v45;
  if (v32)
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v51 = v35;
    *v34 = 136446210;
    v36 = sub_224A33F74(v21, v25, &v51);

    *(v34 + 4) = v36;
    _os_log_impl(&dword_224A2F000, v30, v31, "Restored public tokens for environments: %{public}s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x22AA5EED0](v35, -1, -1);
    MEMORY[0x22AA5EED0](v34, -1, -1);
  }

  else
  {
  }

  v37 = v48;
  v38 = v44;
  if (v20)
  {
    v39 = *(v47 + 16);
    v40 = &v46[(*(v47 + 80) + 32) & ~*(v47 + 80)];
    v41 = *(v47 + 72);
    v42 = (v47 + 8);
    do
    {
      v39(v38, v40, v37);
      sub_224C5B090(v38);
      (*v42)(v38, v37);
      v40 += v41;
      --v20;
    }

    while (v20);
  }

  return v33;
}

unint64_t sub_224AC319C()
{
  result = qword_281350A70;
  if (!qword_281350A70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281350A70);
  }

  return result;
}

unint64_t sub_224AC31E8()
{
  result = qword_281350A88;
  if (!qword_281350A88)
  {
    sub_224DAF318();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281350A88);
  }

  return result;
}

unint64_t sub_224AC3240()
{
  result = qword_281350B90;
  if (!qword_281350B90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D6F3470, qword_224DB38B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281350B90);
  }

  return result;
}

uint64_t sub_224AC32A4()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3318, &qword_224DB33C0);
    sub_224A33088(&qword_281350F00, &qword_27D6F3318, &qword_224DB33C0, MEMORY[0x277CBCE20]);
    v1 = sub_224DAB3A8();
    *(v0 + 16) = v1;
  }

  return v1;
}

uint64_t sub_224AC3368()
{
  v1 = v0;
  v15 = sub_224DAF3C8();
  v2 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v3);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_224DAF318();
  MEMORY[0x28223BE20](v6, v7);
  v8 = sub_224DAB848();
  MEMORY[0x28223BE20](v8 - 8, v9);
  *(v0 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3318, &qword_224DB33C0);
  swift_allocObject();
  *(v0 + 24) = sub_224DAB358();
  v10 = sub_224AC319C();
  v14[0] = ".powersources.source";
  v14[1] = v10;
  sub_224DAB7E8();
  v16 = MEMORY[0x277D84F90];
  sub_224AC31E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3470, qword_224DB38B0);
  sub_224A33088(&qword_281350B90, &qword_27D6F3470, qword_224DB38B0, MEMORY[0x277D83970]);
  sub_224DAF788();
  (*(v2 + 104))(v5, *MEMORY[0x277D85260], v15);
  *(v0 + 32) = sub_224DAF418();
  *(v0 + 40) = -1;
  *(v0 + 44) = 0;
  v11 = IOPSCopyExternalPowerAdapterDetails();
  v12 = v11 != 0;

  *(v1 + 44) = v12;
  sub_224AC3814();
  return v1;
}

void sub_224AC35FC()
{
  v1 = v0;
  v2 = sub_224DAB8C8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(v1 + 32);
  *v6 = v7;
  (*(v3 + 104))(v6, *MEMORY[0x277D85200], v2);
  v8 = v7;
  LOBYTE(v7) = sub_224DAB8F8();
  (*(v3 + 8))(v6, v2);
  if ((v7 & 1) == 0)
  {
    __break(1u);
LABEL_12:
    swift_once();
    goto LABEL_7;
  }

  v9 = IOPSCopyExternalPowerAdapterDetails();
  v6 = v9;
  if (v9)
  {

    if (*(v1 + 44))
    {
      return;
    }
  }

  else if ((*(v1 + 44) & 1) == 0)
  {
    return;
  }

  if (qword_281351490 != -1)
  {
    goto LABEL_12;
  }

LABEL_7:
  v10 = sub_224DAB258();
  __swift_project_value_buffer(v10, qword_281364E08);
  v11 = sub_224DAB228();
  v12 = sub_224DAF2A8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 67240192;
    *(v13 + 4) = v6 != 0;
    _os_log_impl(&dword_224A2F000, v11, v12, "Charging state has changed to %{BOOL,public}d", v13, 8u);
    MEMORY[0x22AA5EED0](v13, -1, -1);
  }

  v14 = v6 != 0;

  *(v1 + 44) = v14;
  v15[15] = v14;
  sub_224DAB348();
}

void sub_224AC3814()
{
  v1 = *(v0 + 32);
  v2 = swift_allocObject();
  swift_weakInit();
  v8[4] = sub_224AC3AE4;
  v8[5] = v2;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_224AC3A24;
  v8[3] = &block_descriptor_0;
  v3 = _Block_copy(v8);

  swift_beginAccess();
  LODWORD(v1) = notify_register_dispatch("com.apple.system.powersources.source", (v0 + 40), v1, v3);
  swift_endAccess();
  _Block_release(v3);
  if (v1)
  {
    if (qword_281351490 != -1)
    {
      swift_once();
    }

    v4 = sub_224DAB258();
    __swift_project_value_buffer(v4, qword_281364E08);
    v5 = sub_224DAB228();
    v6 = sub_224DAF288();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_224A2F000, v5, v6, "Could not register for power source notifications", v7, 2u);
      MEMORY[0x22AA5EED0](v7, -1, -1);
    }
  }
}

double sub_224AC39CC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_224AC35FC();
  }

  return result;
}

double sub_224AC3A24(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);

  return result;
}

uint64_t sub_224AC3A78()
{

  return swift_deallocClassInstance();
}

uint64_t sub_224AC3AEC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4620, &qword_224DB34D0);
  result = MEMORY[0x28223BE20](v2 - 8, v3);
  v6 = &v48 - v5;
  v7 = v0[3];
  if (v7)
  {
    v8 = v0[39];
    v9 = qword_2813652D8;
    if ((*(v8 + qword_2813652D8) & 1) == 0)
    {
      *(v8 + qword_2813652D8) = 1;
      v10 = sub_224DAF128();
      (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
      v11 = swift_allocObject();
      v11[2] = 0;
      v11[3] = 0;
      v11[4] = v8;

      sub_224D8E744(0, 0, v6, &unk_224DB3508, v11);

      v9 = qword_2813652D8;
    }

    v12 = v1[38];
    if ((*(v12 + v9) & 1) == 0)
    {
      *(v12 + v9) = 1;
      v13 = sub_224DAF128();
      (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
      v14 = swift_allocObject();
      v14[2] = 0;
      v14[3] = 0;
      v14[4] = v12;

      sub_224D8E744(0, 0, v6, &unk_224DB3510, v14);

      v9 = qword_2813652D8;
    }

    v15 = v1[41];
    if ((*(v15 + v9) & 1) == 0)
    {
      *(v15 + v9) = 1;
      v16 = sub_224DAF128();
      (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
      v17 = swift_allocObject();
      v17[2] = 0;
      v17[3] = 0;
      v17[4] = v15;

      sub_224D8E744(0, 0, v6, &unk_224DB3518, v17);

      v9 = qword_2813652D8;
    }

    v18 = v1[40];
    if ((*(v18 + v9) & 1) == 0)
    {
      *(v18 + v9) = 1;
      v19 = sub_224DAF128();
      (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
      v20 = swift_allocObject();
      v20[2] = 0;
      v20[3] = 0;
      v20[4] = v18;

      sub_224D8E744(0, 0, v6, &unk_224DB3520, v20);
    }

    v21 = sub_224DAF128();
    (*(*(v21 - 8) + 56))(v6, 1, 1, v21);
    v22 = swift_allocObject();
    v22[2] = 0;
    v22[3] = 0;
    v22[4] = v1;

    sub_224D8E744(0, 0, v6, &unk_224DB3530, v22);

    sub_224AC4304();
    sub_224AC4648();
    sub_224AC498C();
    sub_224AC4CD0();
    v23 = v1[21];
    v24 = v1[22];
    v25 = __swift_project_boxed_opaque_existential_1(v1 + 18, v23);
    sub_224ACF838(v18, v25, 0, 0, v1, v23, v24);
    v26 = __swift_project_boxed_opaque_existential_1(v1 + 23, v1[26]);
    result = sub_224ACF49C(v12, *v26, 0, 0, v1);
  }

  if ((v7 & 2) != 0)
  {
    v27 = v1[39];
    v28 = qword_2813652D8;
    if ((*(v27 + qword_2813652D8) & 1) == 0)
    {
      *(v27 + qword_2813652D8) = 1;
      v29 = sub_224DAF128();
      (*(*(v29 - 8) + 56))(v6, 1, 1, v29);
      v30 = swift_allocObject();
      v30[2] = 0;
      v30[3] = 0;
      v30[4] = v27;

      sub_224D8E744(0, 0, v6, &unk_224DB34D8, v30);

      v28 = qword_2813652D8;
    }

    v31 = v1[38];
    if ((*(v31 + v28) & 1) == 0)
    {
      *(v31 + v28) = 1;
      v32 = sub_224DAF128();
      (*(*(v32 - 8) + 56))(v6, 1, 1, v32);
      v33 = swift_allocObject();
      v33[2] = 0;
      v33[3] = 0;
      v33[4] = v31;

      sub_224D8E744(0, 0, v6, &unk_224DB34E0, v33);

      v28 = qword_2813652D8;
    }

    v34 = v1[41];
    if ((*(v34 + v28) & 1) == 0)
    {
      *(v34 + v28) = 1;
      v35 = sub_224DAF128();
      (*(*(v35 - 8) + 56))(v6, 1, 1, v35);
      v36 = swift_allocObject();
      v36[2] = 0;
      v36[3] = 0;
      v36[4] = v34;

      sub_224D8E744(0, 0, v6, &unk_224DB34E8, v36);

      v28 = qword_2813652D8;
    }

    v37 = v1[40];
    if ((*(v37 + v28) & 1) == 0)
    {
      *(v37 + v28) = 1;
      v38 = sub_224DAF128();
      (*(*(v38 - 8) + 56))(v6, 1, 1, v38);
      v39 = swift_allocObject();
      v39[2] = 0;
      v39[3] = 0;
      v39[4] = v37;

      sub_224D8E744(0, 0, v6, &unk_224DB34F0, v39);
    }

    v40 = sub_224DAF128();
    (*(*(v40 - 8) + 56))(v6, 1, 1, v40);
    v41 = swift_allocObject();
    v41[2] = 0;
    v41[3] = 0;
    v41[4] = v1;

    sub_224D8E744(0, 0, v6, &unk_224DB3500, v41);

    v42 = sub_224C9AA18();
    sub_224AC55C8(v42, 3);

    v43 = sub_224C9AA18();
    sub_224AC55C8(v43, 4);

    v44 = v1[21];
    v45 = v1[22];
    v46 = __swift_project_boxed_opaque_existential_1(v1 + 18, v44);
    sub_224ACE600(v46, v37, 0, 0, v1, v44, v45);
    v47 = __swift_project_boxed_opaque_existential_1(v1 + 23, v1[26]);
    return sub_224ACE1F4(*v47, v31, 0, 0, v1);
  }

  return result;
}

double sub_224AC4304()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v16 - v3;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3370, &qword_224DB3590);
  v5 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v6);
  v8 = &v16 - v7;
  v9 = v0[31];
  v10 = v0[32];
  __swift_project_boxed_opaque_existential_1(v0 + 28, v9);
  v18 = (*(v10 + 16))(v9, v10);
  v11 = v0[2];
  v19 = v11;
  v12 = sub_224DAF358();
  (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3378, &qword_224DC02D0);
  sub_224AC319C();
  sub_224A33088(&qword_281351040, &qword_27D6F3378, &qword_224DC02D0, MEMORY[0x277CBCD90]);
  sub_224ACFEEC(&qword_281350A80, 255, sub_224AC319C, MEMORY[0x277D85228]);
  sub_224DAB448();
  sub_224A3311C(v4, &qword_27D6F5090, &qword_224DB5C30);

  swift_allocObject();
  swift_weakInit();
  sub_224A33088(&unk_281351220, &qword_27D6F3370, &qword_224DB3590, MEMORY[0x277CBCD60]);
  v14 = v17;
  sub_224DAB488();

  (*(v5 + 8))(v8, v14);
  swift_beginAccess();
  sub_224DAB308();
  swift_endAccess();

  return result;
}

double sub_224AC4648()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v16 - v3;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3348, &unk_224DB3560);
  v5 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v6);
  v8 = &v16 - v7;
  v9 = v0[31];
  v10 = v0[32];
  __swift_project_boxed_opaque_existential_1(v0 + 28, v9);
  v18 = (*(v10 + 24))(v9, v10);
  v11 = v0[2];
  v19 = v11;
  v12 = sub_224DAF358();
  (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3350, &unk_224DBD040);
  sub_224AC319C();
  sub_224A33088(&unk_2813510E8, &qword_27D6F3350, &unk_224DBD040, MEMORY[0x277CBCD90]);
  sub_224ACFEEC(&qword_281350A80, 255, sub_224AC319C, MEMORY[0x277D85228]);
  sub_224DAB448();
  sub_224A3311C(v4, &qword_27D6F5090, &qword_224DB5C30);

  swift_allocObject();
  swift_weakInit();
  sub_224A33088(&qword_281351288, &qword_27D6F3348, &unk_224DB3560, MEMORY[0x277CBCD60]);
  v14 = v17;
  sub_224DAB488();

  (*(v5 + 8))(v8, v14);
  swift_beginAccess();
  sub_224DAB308();
  swift_endAccess();

  return result;
}

double sub_224AC498C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v17 - v4;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3370, &qword_224DB3590);
  v6 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v7);
  v9 = &v17 - v8;
  v11 = *(v0 + 288);
  v10 = *(v0 + 296);
  __swift_project_boxed_opaque_existential_1((v1 + 264), v11);
  v19 = (*(*(v10 + 8) + 16))(v11);
  v20 = *(v1 + 16);
  v12 = v20;
  v13 = sub_224DAF358();
  (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
  v14 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3378, &qword_224DC02D0);
  sub_224AC319C();
  sub_224A33088(&qword_281351040, &qword_27D6F3378, &qword_224DC02D0, MEMORY[0x277CBCD90]);
  sub_224ACFEEC(&qword_281350A80, 255, sub_224AC319C, MEMORY[0x277D85228]);
  sub_224DAB448();
  sub_224A3311C(v5, &qword_27D6F5090, &qword_224DB5C30);

  swift_allocObject();
  swift_weakInit();
  sub_224A33088(&unk_281351220, &qword_27D6F3370, &qword_224DB3590, MEMORY[0x277CBCD60]);
  v15 = v18;
  sub_224DAB488();

  (*(v6 + 8))(v9, v15);
  swift_beginAccess();
  sub_224DAB308();
  swift_endAccess();

  return result;
}

double sub_224AC4CD0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v17 - v4;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3348, &unk_224DB3560);
  v6 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v7);
  v9 = &v17 - v8;
  v11 = *(v0 + 288);
  v10 = *(v0 + 296);
  __swift_project_boxed_opaque_existential_1((v1 + 264), v11);
  v19 = (*(*(v10 + 8) + 24))(v11);
  v20 = *(v1 + 16);
  v12 = v20;
  v13 = sub_224DAF358();
  (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
  v14 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3350, &unk_224DBD040);
  sub_224AC319C();
  sub_224A33088(&unk_2813510E8, &qword_27D6F3350, &unk_224DBD040, MEMORY[0x277CBCD90]);
  sub_224ACFEEC(&qword_281350A80, 255, sub_224AC319C, MEMORY[0x277D85228]);
  sub_224DAB448();
  sub_224A3311C(v5, &qword_27D6F5090, &qword_224DB5C30);

  swift_allocObject();
  swift_weakInit();
  sub_224A33088(&qword_281351288, &qword_27D6F3348, &unk_224DB3560, MEMORY[0x277CBCD60]);
  v15 = v18;
  sub_224DAB488();

  (*(v6 + 8))(v9, v15);
  swift_beginAccess();
  sub_224DAB308();
  swift_endAccess();

  return result;
}

uint64_t sub_224AC5014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F33A8, &unk_224DB35D0);
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F33B0, &qword_224DBC7F0);
  v4[13] = v6;
  v4[14] = *(v6 - 8);
  v4[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_224AC5148, 0, 0);
}

uint64_t sub_224AC5148()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  __swift_project_boxed_opaque_existential_1((v0[9] + 32), *(v0[9] + 56));
  sub_224DAACA8();
  sub_224DAF158();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[16] = v4;
  *v4 = v0;
  v4[1] = sub_224AC525C;
  v5 = v0[13];

  return MEMORY[0x2822003E8](v0 + 8, 0, 0, v5);
}

uint64_t sub_224AC525C()
{

  return MEMORY[0x2822009F8](sub_224AC5358, 0, 0);
}

uint64_t sub_224AC5358()
{
  v1 = v0[8];
  if (v1)
  {
    v2 = v0[9];
    v3 = *(v2 + 320);
    v4 = *(v2 + 16);
    v5 = swift_allocObject();
    v5[2] = v1;
    v5[3] = v2;
    v5[4] = v3;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_224ACFEE0;
    *(v6 + 24) = v5;
    v0[6] = sub_224A8A838;
    v0[7] = v6;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_224A9B6F8;
    v0[5] = &block_descriptor_1;
    v7 = _Block_copy(v0 + 2);

    dispatch_sync(v4, v7);
    _Block_release(v7);
    LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

    if (v7)
    {
      __break(1u);
    }

    else
    {
      v12 = swift_task_alloc();
      v0[16] = v12;
      *v12 = v0;
      v12[1] = sub_224AC525C;
      v11 = v0[13];
      v8 = (v0 + 8);
      v9 = 0;
      v10 = 0;
    }

    return MEMORY[0x2822003E8](v8, v9, v10, v11);
  }

  else
  {
    (*(v0[14] + 8))(v0[15], v0[13]);

    v13 = v0[1];

    return v13();
  }
}

double sub_224AC55C8(uint64_t a1, int a2)
{
  v3 = v2;
  v21 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v20[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F33B8, &qword_224DB35F0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v20[-v12];
  v22 = a1;
  v23 = *(v3 + 16);
  v14 = v23;
  v15 = sub_224DAF358();
  (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
  v16 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F33C0, &qword_224DB35F8);
  sub_224AC319C();
  sub_224A33088(&qword_2813511B0, &qword_27D6F33C0, &qword_224DB35F8, MEMORY[0x277CBCD90]);
  sub_224ACFEEC(&qword_281350A80, 255, sub_224AC319C, MEMORY[0x277D85228]);
  sub_224DAB448();
  sub_224A3311C(v8, &qword_27D6F5090, &qword_224DB5C30);

  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = v21;
  sub_224A33088(&qword_2813512F0, &qword_27D6F33B8, &qword_224DB35F0, MEMORY[0x277CBCD60]);
  sub_224DAB488();

  (*(v10 + 8))(v13, v9);
  swift_beginAccess();
  sub_224DAB308();
  swift_endAccess();

  return result;
}

uint64_t sub_224AC58F8()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 4);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 18);
  __swift_destroy_boxed_opaque_existential_1(v0 + 23);
  __swift_destroy_boxed_opaque_existential_1(v0 + 28);
  __swift_destroy_boxed_opaque_existential_1(v0 + 33);

  return __swift_destroy_boxed_opaque_existential_1(v0 + 42);
}

uint64_t sub_224AC5974()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 144));
  __swift_destroy_boxed_opaque_existential_1((v0 + 184));
  __swift_destroy_boxed_opaque_existential_1((v0 + 224));
  __swift_destroy_boxed_opaque_existential_1((v0 + 264));

  __swift_destroy_boxed_opaque_existential_1((v0 + 336));
  return v0;
}

uint64_t sub_224AC59FC()
{
  sub_224AC5974();

  return swift_deallocClassInstance();
}

uint64_t sub_224AC5A60()
{
  v1 = *v0;
  v2 = *(*v0 + 168);
  v3 = v1[22];
  v4 = __swift_project_boxed_opaque_existential_1(v1 + 18, v2);
  sub_224ACE9E4(v4, v1, v2, v3);
  v5 = __swift_project_boxed_opaque_existential_1(v1 + 23, v1[26]);
  v6 = *(*v5 + 40);
  v7 = *(*v5 + 48);
  __swift_project_boxed_opaque_existential_1((*v5 + 16), v6);
  (*(*(v7 + 8) + 80))(sub_224ACEAF8, v1, v6);
  return sub_224AC3AEC();
}

uint64_t sub_224AC5B54(uint64_t a1, uint64_t a2)
{
  result = sub_224ACFEEC(qword_281355308, a2, type metadata accessor for ControlReplicationProvider, &unk_224DB346C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_224AC5BAC(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3320, &unk_224DBD6F0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v35 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5630, &unk_224DB34C0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v35 - v9;
  v11 = sub_224DA9908();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  sub_224DAA1F8();
  if (v16)
  {
    sub_224DA9888();

    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {
      sub_224A3311C(v10, &unk_27D6F5630, &unk_224DB34C0);
      if (qword_2813516C8 != -1)
      {
        swift_once();
      }

      v17 = sub_224DAB258();
      __swift_project_value_buffer(v17, qword_281365120);

      v18 = sub_224DAB228();
      v19 = sub_224DAF288();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v36 = v21;
        *v20 = 136446210;
        sub_224A33088(&qword_281351860, &unk_27D6F30D0, &unk_224DB2AC0, MEMORY[0x277CFA030]);
        v22 = sub_224DAFD28();
        v24 = sub_224A33F74(v22, v23, &v36);

        *(v20 + 4) = v24;
        _os_log_impl(&dword_224A2F000, v18, v19, "Found remote host with an invalid relationship ID: %{public}s", v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v21);
        MEMORY[0x22AA5EED0](v21, -1, -1);
        MEMORY[0x22AA5EED0](v20, -1, -1);
      }

      return 0;
    }

    (*(v12 + 32))(v15, v10, v11);
    __swift_project_boxed_opaque_existential_1(a2 + 4, a2[7]);
    sub_224DAAC98();
    v25 = sub_224DAAE38();
    if ((*(*(v25 - 8) + 48))(v6, 1, v25) == 1)
    {
      sub_224A3311C(v6, &qword_27D6F3320, &unk_224DBD6F0);
      if (qword_2813516C8 != -1)
      {
        swift_once();
      }

      v26 = sub_224DAB258();
      __swift_project_value_buffer(v26, qword_281365120);

      v27 = sub_224DAB228();
      v28 = sub_224DAF288();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v36 = v35;
        *v29 = 136446210;
        sub_224A33088(&qword_281351860, &unk_27D6F30D0, &unk_224DB2AC0, MEMORY[0x277CFA030]);
        v30 = sub_224DAFD28();
        v32 = sub_224A33F74(v30, v31, &v36);

        *(v29 + 4) = v32;
        _os_log_impl(&dword_224A2F000, v27, v28, "Found remote host for a missing relationship ID: %{public}s", v29, 0xCu);
        v33 = v35;
        __swift_destroy_boxed_opaque_existential_1(v35);
        MEMORY[0x22AA5EED0](v33, -1, -1);
        MEMORY[0x22AA5EED0](v29, -1, -1);
      }

      (*(v12 + 8))(v15, v11);
      return 0;
    }

    (*(v12 + 8))(v15, v11);
    sub_224A3311C(v6, &qword_27D6F3320, &unk_224DBD6F0);
  }

  return 1;
}

uint64_t sub_224AC6138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F33A8, &unk_224DB35D0);
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F33B0, &qword_224DBC7F0);
  v4[7] = v6;
  v4[8] = *(v6 - 8);
  v4[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_224AC626C, 0, 0);
}

uint64_t sub_224AC626C()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  __swift_project_boxed_opaque_existential_1((v0[3] + 32), *(v0[3] + 56));
  sub_224DAACA8();
  sub_224DAF158();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_224AC6380;
  v5 = v0[7];

  return MEMORY[0x2822003E8](v0 + 2, 0, 0, v5);
}

uint64_t sub_224AC6380()
{

  return MEMORY[0x2822009F8](sub_224AC647C, 0, 0);
}

uint64_t sub_224AC647C()
{
  if (v0[2])
  {
    v1 = v0[3];

    v2 = v1[21];
    v3 = v1[22];
    v4 = __swift_project_boxed_opaque_existential_1(v1 + 18, v2);
    sub_224ACE9E4(v4, v1, v2, v3);
    v5 = __swift_project_boxed_opaque_existential_1(v1 + 23, v1[26]);
    v6 = *(*v5 + 40);
    v7 = *(*v5 + 48);
    __swift_project_boxed_opaque_existential_1((*v5 + 16), v6);
    (*(*(v7 + 8) + 80))(sub_224ACFFA0, v1, v6);
    v8 = swift_task_alloc();
    v0[10] = v8;
    *v8 = v0;
    v8[1] = sub_224AC6380;
    v9 = v0[7];

    return MEMORY[0x2822003E8](v0 + 2, 0, 0, v9);
  }

  else
  {
    (*(v0[8] + 8))(v0[9], v0[7]);

    v10 = v0[1];

    return v10();
  }
}

void sub_224AC661C(uint64_t a1, void *a2, uint64_t a3)
{
  v95 = a3;
  v109 = a2;
  v97 = sub_224DAB8C8();
  v87 = *(v97 - 8);
  MEMORY[0x28223BE20](v97, v4);
  v96 = (&v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3338, &unk_224DB3550);
  MEMORY[0x28223BE20](v94, v6);
  v93 = &v87 - v7;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v91 = *(v98 - 8);
  v9 = MEMORY[0x28223BE20](v98, v8);
  v92 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11);
  v90 = &v87 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3388, &unk_224DB35A0);
  v15 = MEMORY[0x28223BE20](v13 - 8, v14);
  v17 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v18);
  v107 = &v87 - v19;
  v106 = sub_224DAADC8();
  v20 = *(v106 - 1);
  v22 = MEMORY[0x28223BE20](v106, v21);
  v105 = &v87 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v24);
  v104 = &v87 - v25;
  v26 = sub_224DAAE38();
  v108 = *(v26 - 8);
  MEMORY[0x28223BE20](v26, v27);
  v29 = &v87 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3320, &unk_224DBD6F0);
  MEMORY[0x28223BE20](v30 - 8, v31);
  v88 = &v87 - v32;
  v110 = a1;

  v33 = 0;
  sub_224ACC9A4(&v110);
  v34 = v110;
  v103 = *(v110 + 16);
  if (v103)
  {
    v35 = 0;
    v102 = (v108 + 16);
    LODWORD(v101) = *MEMORY[0x277D46750];
    v36 = (v20 + 8);
    v99 = (v108 + 8);
    v100 = (v20 + 104);
    v89 = v17;
    v37 = v106;
    while (v35 < *(v34 + 16))
    {
      v38 = v34;
      (*(v108 + 16))(v29, v34 + ((*(v108 + 80) + 32) & ~*(v108 + 80)) + *(v108 + 72) * v35, v26);
      v39 = v104;
      (*v100)(v104, v101, v37);
      v33 = v105;
      sub_224DAADD8();
      v40 = MEMORY[0x22AA59120](v39, v33);
      v41 = *v36;
      (*v36)(v33, v37);
      v41(v39, v37);
      if (v40)
      {

        v43 = v108;
        v42 = v88;
        (*(v108 + 32))(v88, v29, v26);
        (*(v43 + 56))(v42, 0, 1, v26);
        v44 = v109[21];
        v45 = v109[22];
        __swift_project_boxed_opaque_existential_1(v109 + 18, v44);
        v46 = (*(v45 + 24))(256, v44, v45);
        v47 = v98;
        v48 = v92;
        v49 = v89;
        if (!v46)
        {
          goto LABEL_33;
        }

        v50 = sub_224CFEA64(v46);

        v33 = 0;
        v51 = v50 + 64;
        v52 = 1 << v50[32];
        v53 = -1;
        if (v52 < 64)
        {
          v53 = ~(-1 << v52);
        }

        v54 = v53 & *(v50 + 8);
        v99 = ((v52 + 63) >> 6);
        v100 = v50;
        v106 = (v91 + 16);
        v108 = v91 + 32;
        LODWORD(v105) = *MEMORY[0x277D85200];
        v103 = (v87 + 8);
        v104 = (v87 + 104);
        v101 = v50 + 64;
        v102 = (v91 + 8);
        while (1)
        {
          v60 = v107;
          if (!v54)
          {
            break;
          }

          v61 = v33;
LABEL_23:
          v65 = __clz(__rbit64(v54));
          v54 &= v54 - 1;
          v66 = v65 | (v61 << 6);
          v67 = v100;
          v68 = v91;
          (*(v91 + 16))(v90, *(v100 + 6) + *(v91 + 72) * v66, v47);
          v69 = *(*(v67 + 7) + 8 * v66);
          v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6510, &unk_224DC0290);
          v71 = *(v70 + 48);
          v72 = *(v68 + 32);
          v49 = v89;
          v73 = v47;
          v72();
          *(v49 + v71) = v69;
          (*(*(v70 - 8) + 56))(v49, 0, 1, v70);
          v74 = v69;
          v64 = v109;
          v48 = v92;
          v60 = v107;
LABEL_24:
          sub_224A44E4C(v49, v60, &qword_27D6F3388, &unk_224DB35A0);
          v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6510, &unk_224DC0290);
          if ((*(*(v75 - 8) + 48))(v60, 1, v75) == 1)
          {

            v42 = v88;
            goto LABEL_33;
          }

          (*v108)(v48, v60, v73);
          v76 = v64[2];
          v78 = v96;
          v77 = v97;
          *v96 = v76;
          (*v104)(v78, v105, v77);
          v79 = v76;
          LOBYTE(v76) = sub_224DAB8F8();
          (*v103)(v78, v77);
          if ((v76 & 1) == 0)
          {
            goto LABEL_36;
          }

          v80 = v64[21];
          v81 = v64[22];
          __swift_project_boxed_opaque_existential_1(v64 + 18, v80);
          v82 = (*(v81 + 24))(768, v80, v81);
          if (v82)
          {
            v83 = sub_224CFEA64(v82);

            v47 = v98;
            if (*(v83 + 2) && (v84 = sub_224A683FC(v48), (v85 & 1) != 0))
            {
              v55 = *(*(v83 + 7) + 8 * v84);
            }

            else
            {

              v55 = 0;
            }
          }

          else
          {
            v55 = 0;
            v47 = v98;
          }

          v56 = v93;
          (*v106)(v93, v48, v47);
          v58 = v94;
          v57 = v95;
          *&v56[*(v94 + 36)] = v55;
          v59 = &v56[*(v58 + 40)];
          *v59 = 1;
          v59[8] = 0;
          sub_224C9AB2C(v56, v57);
          sub_224A3311C(v56, &qword_27D6F3338, &unk_224DB3550);
          (*v102)(v48, v47);
          v51 = v101;
        }

        if (v99 <= (v33 + 1))
        {
          v62 = v33 + 1;
        }

        else
        {
          v62 = v99;
        }

        v63 = v62 - 1;
        v64 = v109;
        while (1)
        {
          v61 = (v33 + 1);
          if (__OFADD__(v33, 1))
          {
            break;
          }

          if (v61 >= v99)
          {
            v73 = v47;
            v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6510, &unk_224DC0290);
            (*(*(v86 - 8) + 56))(v49, 1, 1, v86);
            v54 = 0;
            v33 = v63;
            goto LABEL_24;
          }

          v54 = *&v51[8 * v61];
          ++v33;
          if (v54)
          {
            v33 = v61;
            goto LABEL_23;
          }
        }

        __break(1u);
        break;
      }

      ++v35;
      (*v99)(v29, v26);
      v34 = v38;
      if (v103 == v35)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);

    __break(1u);
  }

  else
  {
LABEL_6:

    v42 = v88;
    (*(v108 + 56))(v88, 1, 1, v26);
LABEL_33:
    sub_224A3311C(v42, &qword_27D6F3320, &unk_224DBD6F0);
  }
}

uint64_t sub_224AC7088@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_224DAB8C8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = (&v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v3 + 16);
  *v11 = v12;
  (*(v8 + 104))(v11, *MEMORY[0x277D85200], v7);
  v13 = v12;
  LOBYTE(v12) = sub_224DAB8F8();
  result = (*(v8 + 8))(v11, v7);
  if (v12)
  {
    v15 = a2[3];
    v16 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v15);
    v17 = (*(v16 + 24))(768, v15, v16);
    if (v17)
    {
      v18 = sub_224CFEA64(v17);

      if (*(v18 + 2))
      {
        v19 = sub_224A683FC(a1);
        if (v20)
        {
          v21 = *(*(v18 + 7) + 8 * v19);

LABEL_8:
          v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
          (*(*(v22 - 8) + 16))(a3, a1, v22);
          result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3338, &unk_224DB3550);
          *(a3 + *(result + 36)) = v21;
          v23 = a3 + *(result + 40);
          *v23 = 1;
          *(v23 + 8) = 0;
          return result;
        }
      }
    }

    v21 = 0;
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

double sub_224AC72A8(unint64_t *a1, uint64_t a2)
{
  v143 = sub_224DAB0B8();
  v3 = *(v143 - 8);
  MEMORY[0x28223BE20](v143, v4);
  v142 = &v105 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v141 = &v105 - v8;
  v150 = sub_224DAC2B8();
  v9 = *(v150 - 8);
  v11 = MEMORY[0x28223BE20](v150, v10);
  v13 = &v105 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v105 - v15;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F30E0, &unk_224DB2AD0);
  v17 = *(v121 - 8);
  MEMORY[0x28223BE20](v121, v18);
  v120 = &v105 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3380, &qword_224DB3598);
  MEMORY[0x28223BE20](v20 - 8, v21);
  v119 = &v105 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v113 = *(v23 - 8);
  v25 = MEMORY[0x28223BE20](v23, v24);
  v27 = &v105 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v28);
  v112 = &v105 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3388, &unk_224DB35A0);
  v32 = MEMORY[0x28223BE20](v30 - 8, v31);
  v128 = &v105 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32, v34);
  v127 = &v105 - v35;
  v36 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return *&v37;
  }

  if (v36 >> 62)
  {
    goto LABEL_56;
  }

  v38 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v38)
  {
LABEL_57:

    return *&v37;
  }

LABEL_4:
  v125 = 0;
  v110 = v36 & 0xC000000000000001;
  v106 = v36 & 0xFFFFFFFFFFFFFF8;
  v107 = v36;
  v105 = v36 + 32;
  v148 = (v113 + 16);
  v126 = (v113 + 32);
  v118 = (v17 + 56);
  v117 = (v9 + 56);
  v116 = (v17 + 32);
  v138 = (v113 + 56);
  v137 = (v9 + 16);
  v136 = (v9 + 8);
  v135 = *MEMORY[0x277D46828];
  v134 = (v3 + 104);
  v133 = (v3 + 8);
  v3 = 0;
  v115 = (v113 + 8);
  *&v37 = 136446210;
  v131 = v37;
  v36 = v128;
  v17 = v127;
  v109 = v38;
  v139 = v23;
  v140 = v16;
  v149 = v27;
  while (1)
  {
    if (v110)
    {
      v39 = MEMORY[0x22AA5DCC0](v3, v107);
    }

    else
    {
      if (v3 >= *(v106 + 16))
      {
        goto LABEL_55;
      }

      v39 = *(v105 + 8 * v3);
    }

    v40 = v39;
    if (__OFADD__(v3++, 1))
    {
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      v38 = sub_224DAF838();
      if (!v38)
      {
        goto LABEL_57;
      }

      goto LABEL_4;
    }

    v111 = v3;
    v9 = [v39 extensionIdentity];
    v42 = v9 + *MEMORY[0x277CFA128];
    swift_beginAccess();
    v43 = *(v42 + 8);

    if (!v43)
    {
      break;
    }

LABEL_6:
    v3 = v111;
    if (v111 == v109)
    {
      goto LABEL_57;
    }
  }

  v108 = v40;
  v44 = Strong[26];
  v45 = Strong[27];
  v9 = __swift_project_boxed_opaque_existential_1(Strong + 23, v44);
  v46 = (*(*(v45 + 8) + 24))(512, v44);
  if (!v46)
  {
    goto LABEL_52;
  }

  v124 = v46;
  v47 = sub_224CFEA64(v46);
  v48 = 0;
  v50 = v47 + 64;
  v49 = *(v47 + 8);
  v114 = v47;
  v51 = 1 << v47[32];
  if (v51 < 64)
  {
    v52 = ~(-1 << v51);
  }

  else
  {
    v52 = -1;
  }

  v53 = v52 & v49;
  v54 = (v51 + 63) >> 6;
  v123 = v47 + 64;
  v122 = v54;
  while (2)
  {
    if (v53)
    {
      v130 = v48;
      v55 = v48;
LABEL_30:
      v129 = (v53 - 1) & v53;
      v58 = __clz(__rbit64(v53)) | (v55 << 6);
      v59 = v114;
      v60 = v113;
      v61 = v112;
      (*(v113 + 16))(v112, *(v114 + 6) + *(v113 + 72) * v58, v23);
      v9 = *(*(v59 + 7) + 8 * v58);
      v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6510, &unk_224DC0290);
      v63 = *(v62 + 48);
      v64 = *(v60 + 32);
      v36 = v128;
      v64(v128, v61, v23);
      *(v36 + v63) = v9;
      (*(*(v62 - 8) + 56))(v36, 0, 1, v62);
      v65 = v9;
      v17 = v127;
LABEL_31:
      sub_224A44E4C(v36, v17, &qword_27D6F3388, &unk_224DB35A0);
      v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6510, &unk_224DC0290);
      if ((*(*(v66 - 8) + 48))(v17, 1, v66) == 1)
      {

        goto LABEL_6;
      }

      (*v126)(v27, v17, v23);
      v67 = v120;
      sub_224DAA238();
      v17 = v118;
      v9 = *v118;
      v68 = v119;
      v36 = v121;
      (*v118)(v119, 1, 1, v121);
      v69 = type metadata accessor for ControlHostDescriptorPredicate(0);
      *(v68 + v69[5]) = 3;
      *(v68 + v69[6]) = 3;
      v70 = v69[7];
      v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
      (*(*(v71 - 8) + 56))(v68 + v70, 1, 1, v71);
      (*v117)(v68 + v69[8], 1, 1, v150);
      sub_224A3311C(v68, &qword_27D6F3390, &qword_224DB35B8);
      (*v116)(v68, v67, v36);
      (v9)(v68, 0, 1, v36);
      v72 = (*(*(v69 - 1) + 56))(v68, 0, 1, v69);
      v74 = v124;
      if (*(v124 + 16))
      {
        MEMORY[0x28223BE20](v72, v73);
        *(&v105 - 2) = v68;

        v75 = v74;
        v76 = v125;
        v77 = sub_224A6C07C(sub_224ACFF64, (&v105 - 4), v75);
        v78 = sub_224D44404(v77);

        v3 = &v105;
        MEMORY[0x28223BE20](v79, v80);
        *(&v105 - 2) = v68;
        v9 = sub_224A4ECE8(sub_224ACFF80, (&v105 - 4), v78);
        v125 = v76;
        sub_224A3311C(v68, &qword_27D6F3380, &qword_224DB3598);
        v81 = v9;
        if (v9 >> 62)
        {
          v3 = v9;
          v82 = sub_224DAF838();
          v81 = v9;
          v27 = v149;
          v83 = v150;
          if (v82)
          {
LABEL_35:
            if (v82 < 1)
            {
              __break(1u);
              goto LABEL_54;
            }

            v84 = 0;
            v145 = v81 & 0xC000000000000001;
            v146 = v82;
            v147 = v81;
            do
            {
              if (v145)
              {
                v88 = MEMORY[0x22AA5DCC0](v84);
              }

              else
              {
                v88 = *(v81 + 8 * v84 + 32);
              }

              v151 = v88;
              v89 = [v88 controlIdentity];
              v90 = v141;
              (*v148)(v141, v27, v23);
              (*v138)(v90, 0, 1, v23);
              sub_224DAC298();
              if (qword_2813516C8 != -1)
              {
                swift_once();
              }

              v91 = sub_224DAB258();
              __swift_project_value_buffer(v91, qword_281365120);
              (*v137)(v13, v16, v83);
              v92 = v13;
              v93 = sub_224DAB228();
              v94 = sub_224DAF2A8();
              v95 = os_log_type_enabled(v93, v94);
              v96 = v136;
              if (v95)
              {
                v97 = swift_slowAlloc();
                v132 = swift_slowAlloc();
                v152 = v132;
                *v97 = v131;
                sub_224ACFEEC(&unk_281350E08, 255, MEMORY[0x277CF99B8], MEMORY[0x277CF99E0]);
                v98 = sub_224DAFD28();
                v100 = v99;
                v85 = *v96;
                (*v96)(v92, v150);
                v101 = sub_224A33F74(v98, v100, &v152);
                v83 = v150;

                *(v97 + 4) = v101;
                _os_log_impl(&dword_224A2F000, v93, v94, "Received local preview control archive for %{public}s", v97, 0xCu);
                v102 = v132;
                __swift_destroy_boxed_opaque_existential_1(v132);
                MEMORY[0x22AA5EED0](v102, -1, -1);
                MEMORY[0x22AA5EED0](v97, -1, -1);
              }

              else
              {

                v85 = *v96;
                (*v96)(v92, v83);
              }

              v13 = v92;
              ++v84;
              v86 = v142;
              v87 = v143;
              (*v134)(v142, v135, v143);
              v16 = v140;
              v9 = Strong;
              sub_224AC8228(v140, 3, v86);

              (*v133)(v86, v87);
              v85(v16, v83);
              v81 = v147;
              v23 = v139;
              v27 = v149;
            }

            while (v146 != v84);
          }
        }

        else
        {
          v82 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v27 = v149;
          v83 = v150;
          if (v82)
          {
            goto LABEL_35;
          }
        }

        (*v115)(v27, v23);
      }

      else
      {
        v27 = v149;
        (*v115)(v149, v23);
        sub_224A3311C(v68, &qword_27D6F3380, &qword_224DB3598);
      }

      v36 = v128;
      v17 = v127;
      v50 = v123;
      v54 = v122;
      v48 = v130;
      v53 = v129;
      continue;
    }

    break;
  }

  if (v54 <= v48 + 1)
  {
    v56 = v48 + 1;
  }

  else
  {
    v56 = v54;
  }

  v57 = v56 - 1;
  while (1)
  {
    v55 = v48 + 1;
    if (__OFADD__(v48, 1))
    {
      break;
    }

    if (v55 >= v54)
    {
      v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6510, &unk_224DC0290);
      (*(*(v103 - 8) + 56))(v36, 1, 1, v103);
      v129 = 0;
      v130 = v57;
      goto LABEL_31;
    }

    v53 = *&v50[8 * v55];
    ++v48;
    if (v53)
    {
      v130 = v55;
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_52:

  return *&v37;
}

double sub_224AC8228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v45 = a3;
  v3 = a2;
  v5 = sub_224DAC2B8();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v37 - v12;
  v44 = v3;
  v14 = sub_224ACFC44(v3);
  v15 = qword_2813516C8;

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = sub_224DAB258();
  v17 = __swift_project_value_buffer(v16, qword_281365120);
  v41 = *(v6 + 16);
  v41(v13, a1, v5);
  v42 = v17;
  v18 = sub_224DAB228();
  v19 = sub_224DAF2A8();
  if (os_log_type_enabled(v18, v19))
  {
    v38 = a1;
    v39 = v10;
    v20 = v6;
    v40 = v14;
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v46[0] = v22;
    v23 = 0xEB00000000726564;
    v24 = v44;
    *v21 = 136446466;
    v25 = 0xE800000000000000;
    v26 = 0x656E696C656D6974;
    v27 = 0xEF77656976657270;
    if (v24 != 3)
    {
      v27 = 0xEC0000006576696CLL;
    }

    if (v24 != 2)
    {
      v26 = 0x2D6C6F72746E6F63;
      v25 = v27;
    }

    v28 = 0x746F687370616E73;
    if (v24)
    {
      v23 = 0xE800000000000000;
    }

    else
    {
      v28 = 0x6C6F686563616C70;
    }

    if (v24 <= 1)
    {
      v29 = v28;
    }

    else
    {
      v29 = v26;
    }

    if (v24 <= 1)
    {
      v30 = v23;
    }

    else
    {
      v30 = v25;
    }

    v31 = sub_224A33F74(v29, v30, v46);

    *(v21 + 4) = v31;
    *(v21 + 12) = 2082;
    sub_224ACFEEC(&unk_281350E08, 255, MEMORY[0x277CF99B8], MEMORY[0x277CF99E0]);
    v32 = sub_224DAFD28();
    v34 = v33;
    v43 = *(v20 + 8);
    v43(v13, v5);
    v35 = sub_224A33F74(v32, v34, v46);

    *(v21 + 14) = v35;
    _os_log_impl(&dword_224A2F000, v18, v19, "Requesting replication of %{public}s archive for key: %{public}s", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v22, -1, -1);
    MEMORY[0x22AA5EED0](v21, -1, -1);

    a1 = v38;
  }

  else
  {

    v43 = *(v6 + 8);
    v43(v13, v5);
  }

  sub_224ACB4E4(a1, v45);

  return result;
}

double sub_224AC88F4(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = sub_224DAC2B8();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = (v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7, v10);
  v12 = v26 - v11;
  v27 = v2;
  sub_224ACFC44(v2);
  v13 = qword_2813516C8;

  if (v13 != -1)
  {
    swift_once();
  }

  v14 = sub_224DAB258();
  v15 = __swift_project_value_buffer(v14, qword_281365120);
  v29 = *(v5 + 16);
  v29(v12, a1, v4);
  v30 = v15;
  v16 = sub_224DAB228();
  v17 = sub_224DAF2A8();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v28 = v5;
    v19 = v18;
    v26[0] = swift_slowAlloc();
    v26[1] = v9;
    v32 = v26[0];
    *v19 = 136446210;
    sub_224ACFEEC(&unk_281350E08, 255, MEMORY[0x277CF99B8], MEMORY[0x277CF99E0]);
    v20 = sub_224DAFD28();
    v22 = v21;
    v31 = *(v28 + 8);
    v31(v12, v4);
    v23 = sub_224A33F74(v20, v22, &v32);

    *(v19 + 4) = v23;
    _os_log_impl(&dword_224A2F000, v16, v17, "Requesting deletion of archive for: %{public}s", v19, 0xCu);
    v24 = v26[0];
    __swift_destroy_boxed_opaque_existential_1(v26[0]);
    MEMORY[0x22AA5EED0](v24, -1, -1);
    MEMORY[0x22AA5EED0](v19, -1, -1);
  }

  else
  {

    v31 = *(v5 + 8);
    v31(v12, v4);
  }

  sub_224ACC448(a1);

  return result;
}

double sub_224AC8ED4(unint64_t *a1, uint64_t a2)
{
  v143 = sub_224DAB0B8();
  v3 = *(v143 - 8);
  MEMORY[0x28223BE20](v143, v4);
  v142 = &v105 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v141 = &v105 - v8;
  v150 = sub_224DAC2B8();
  v9 = *(v150 - 8);
  v11 = MEMORY[0x28223BE20](v150, v10);
  v13 = &v105 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v105 - v15;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F30E0, &unk_224DB2AD0);
  v17 = *(v121 - 8);
  MEMORY[0x28223BE20](v121, v18);
  v120 = &v105 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3380, &qword_224DB3598);
  MEMORY[0x28223BE20](v20 - 8, v21);
  v119 = &v105 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v113 = *(v23 - 8);
  v25 = MEMORY[0x28223BE20](v23, v24);
  v27 = &v105 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v28);
  v112 = &v105 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3388, &unk_224DB35A0);
  v32 = MEMORY[0x28223BE20](v30 - 8, v31);
  v128 = &v105 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32, v34);
  v127 = &v105 - v35;
  v36 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return *&v37;
  }

  if (v36 >> 62)
  {
    goto LABEL_56;
  }

  v38 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v38)
  {
LABEL_57:

    return *&v37;
  }

LABEL_4:
  v125 = 0;
  v110 = v36 & 0xC000000000000001;
  v106 = v36 & 0xFFFFFFFFFFFFFF8;
  v107 = v36;
  v105 = v36 + 32;
  v148 = (v113 + 16);
  v126 = (v113 + 32);
  v118 = (v17 + 56);
  v117 = (v9 + 56);
  v116 = (v17 + 32);
  v138 = (v113 + 56);
  v137 = (v9 + 16);
  v136 = (v9 + 8);
  v135 = *MEMORY[0x277D46828];
  v134 = (v3 + 104);
  v133 = (v3 + 8);
  v3 = 0;
  v115 = (v113 + 8);
  *&v37 = 136446210;
  v131 = v37;
  v36 = v128;
  v17 = v127;
  v109 = v38;
  v139 = v23;
  v140 = v16;
  v149 = v27;
  while (1)
  {
    if (v110)
    {
      v39 = MEMORY[0x22AA5DCC0](v3, v107);
    }

    else
    {
      if (v3 >= *(v106 + 16))
      {
        goto LABEL_55;
      }

      v39 = *(v105 + 8 * v3);
    }

    v40 = v39;
    if (__OFADD__(v3++, 1))
    {
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      v38 = sub_224DAF838();
      if (!v38)
      {
        goto LABEL_57;
      }

      goto LABEL_4;
    }

    v111 = v3;
    v9 = [v39 extensionIdentity];
    v42 = v9 + *MEMORY[0x277CFA128];
    swift_beginAccess();
    v43 = *(v42 + 8);

    if (!v43)
    {
      break;
    }

LABEL_6:
    v3 = v111;
    if (v111 == v109)
    {
      goto LABEL_57;
    }
  }

  v108 = v40;
  v44 = Strong[21];
  v45 = Strong[22];
  v9 = __swift_project_boxed_opaque_existential_1(Strong + 18, v44);
  v46 = (*(v45 + 24))(512, v44, v45);
  if (!v46)
  {
    goto LABEL_52;
  }

  v124 = v46;
  v47 = sub_224CFEA64(v46);
  v48 = 0;
  v50 = v47 + 64;
  v49 = *(v47 + 8);
  v114 = v47;
  v51 = 1 << v47[32];
  if (v51 < 64)
  {
    v52 = ~(-1 << v51);
  }

  else
  {
    v52 = -1;
  }

  v53 = v52 & v49;
  v54 = (v51 + 63) >> 6;
  v123 = v47 + 64;
  v122 = v54;
  while (2)
  {
    if (v53)
    {
      v130 = v48;
      v55 = v48;
LABEL_30:
      v129 = (v53 - 1) & v53;
      v58 = __clz(__rbit64(v53)) | (v55 << 6);
      v59 = v114;
      v60 = v113;
      v61 = v112;
      (*(v113 + 16))(v112, *(v114 + 6) + *(v113 + 72) * v58, v23);
      v9 = *(*(v59 + 7) + 8 * v58);
      v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6510, &unk_224DC0290);
      v63 = *(v62 + 48);
      v64 = *(v60 + 32);
      v36 = v128;
      v64(v128, v61, v23);
      *(v36 + v63) = v9;
      (*(*(v62 - 8) + 56))(v36, 0, 1, v62);
      v65 = v9;
      v17 = v127;
LABEL_31:
      sub_224A44E4C(v36, v17, &qword_27D6F3388, &unk_224DB35A0);
      v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6510, &unk_224DC0290);
      if ((*(*(v66 - 8) + 48))(v17, 1, v66) == 1)
      {

        goto LABEL_6;
      }

      (*v126)(v27, v17, v23);
      v67 = v120;
      sub_224DAA238();
      v17 = v118;
      v9 = *v118;
      v68 = v119;
      v36 = v121;
      (*v118)(v119, 1, 1, v121);
      v69 = type metadata accessor for ControlHostDescriptorPredicate(0);
      *(v68 + v69[5]) = 3;
      *(v68 + v69[6]) = 3;
      v70 = v69[7];
      v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
      (*(*(v71 - 8) + 56))(v68 + v70, 1, 1, v71);
      (*v117)(v68 + v69[8], 1, 1, v150);
      sub_224A3311C(v68, &qword_27D6F3390, &qword_224DB35B8);
      (*v116)(v68, v67, v36);
      (v9)(v68, 0, 1, v36);
      v72 = (*(*(v69 - 1) + 56))(v68, 0, 1, v69);
      v74 = v124;
      if (*(v124 + 16))
      {
        MEMORY[0x28223BE20](v72, v73);
        *(&v105 - 2) = v68;

        v75 = v74;
        v76 = v125;
        v77 = sub_224A6C07C(sub_224ACFDF4, (&v105 - 4), v75);
        v78 = sub_224D44404(v77);

        v3 = &v105;
        MEMORY[0x28223BE20](v79, v80);
        *(&v105 - 2) = v68;
        v9 = sub_224A4ECE8(sub_224ACFE14, (&v105 - 4), v78);
        v125 = v76;
        sub_224A3311C(v68, &qword_27D6F3380, &qword_224DB3598);
        v81 = v9;
        if (v9 >> 62)
        {
          v3 = v9;
          v82 = sub_224DAF838();
          v81 = v9;
          v27 = v149;
          v83 = v150;
          if (v82)
          {
LABEL_35:
            if (v82 < 1)
            {
              __break(1u);
              goto LABEL_54;
            }

            v84 = 0;
            v145 = v81 & 0xC000000000000001;
            v146 = v82;
            v147 = v81;
            do
            {
              if (v145)
              {
                v88 = MEMORY[0x22AA5DCC0](v84);
              }

              else
              {
                v88 = *(v81 + 8 * v84 + 32);
              }

              v151 = v88;
              v89 = [v88 controlIdentity];
              v90 = v141;
              (*v148)(v141, v27, v23);
              (*v138)(v90, 0, 1, v23);
              sub_224DAC298();
              if (qword_2813516C8 != -1)
              {
                swift_once();
              }

              v91 = sub_224DAB258();
              __swift_project_value_buffer(v91, qword_281365120);
              (*v137)(v13, v16, v83);
              v92 = v13;
              v93 = sub_224DAB228();
              v94 = sub_224DAF2A8();
              v95 = os_log_type_enabled(v93, v94);
              v96 = v136;
              if (v95)
              {
                v97 = swift_slowAlloc();
                v132 = swift_slowAlloc();
                v152 = v132;
                *v97 = v131;
                sub_224ACFEEC(&unk_281350E08, 255, MEMORY[0x277CF99B8], MEMORY[0x277CF99E0]);
                v98 = sub_224DAFD28();
                v100 = v99;
                v85 = *v96;
                (*v96)(v92, v150);
                v101 = sub_224A33F74(v98, v100, &v152);
                v83 = v150;

                *(v97 + 4) = v101;
                _os_log_impl(&dword_224A2F000, v93, v94, "Received local live control archive for %{public}s", v97, 0xCu);
                v102 = v132;
                __swift_destroy_boxed_opaque_existential_1(v132);
                MEMORY[0x22AA5EED0](v102, -1, -1);
                MEMORY[0x22AA5EED0](v97, -1, -1);
              }

              else
              {

                v85 = *v96;
                (*v96)(v92, v83);
              }

              v13 = v92;
              ++v84;
              v86 = v142;
              v87 = v143;
              (*v134)(v142, v135, v143);
              v16 = v140;
              v9 = Strong;
              sub_224AC8228(v140, 4, v86);

              (*v133)(v86, v87);
              v85(v16, v83);
              v81 = v147;
              v23 = v139;
              v27 = v149;
            }

            while (v146 != v84);
          }
        }

        else
        {
          v82 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v27 = v149;
          v83 = v150;
          if (v82)
          {
            goto LABEL_35;
          }
        }

        (*v115)(v27, v23);
      }

      else
      {
        v27 = v149;
        (*v115)(v149, v23);
        sub_224A3311C(v68, &qword_27D6F3380, &qword_224DB3598);
      }

      v36 = v128;
      v17 = v127;
      v50 = v123;
      v54 = v122;
      v48 = v130;
      v53 = v129;
      continue;
    }

    break;
  }

  if (v54 <= v48 + 1)
  {
    v56 = v48 + 1;
  }

  else
  {
    v56 = v54;
  }

  v57 = v56 - 1;
  while (1)
  {
    v55 = v48 + 1;
    if (__OFADD__(v48, 1))
    {
      break;
    }

    if (v55 >= v54)
    {
      v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6510, &unk_224DC0290);
      (*(*(v103 - 8) + 56))(v36, 1, 1, v103);
      v129 = 0;
      v130 = v57;
      goto LABEL_31;
    }

    v53 = *&v50[8 * v55];
    ++v48;
    if (v53)
    {
      v130 = v55;
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_52:

  return *&v37;
}

void sub_224AC9E54(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4)
{
  v37 = a3;
  v5 = sub_224DAC2B8();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v10 = &v31[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v31[-v12];
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3358, &unk_224DB3570);
    MEMORY[0x22AA5ABC0](v14);
    v15 = sub_224DAC2A8();
    v16 = [v15 extensionIdentity];

    v17 = &v16[*MEMORY[0x277CFA128]];
    swift_beginAccess();
    if (*(v17 + 1))
    {
      (*(v6 + 8))(v13, v5);
    }

    else
    {
      if (qword_2813516C8 != -1)
      {
        swift_once();
      }

      v18 = sub_224DAB258();
      __swift_project_value_buffer(v18, qword_281365120);
      (*(v6 + 16))(v10, v13, v5);
      v19 = sub_224DAB228();
      v20 = sub_224DAF2A8();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v34 = v21;
        v35 = swift_slowAlloc();
        v38 = v35;
        *v21 = 136446210;
        sub_224ACFEEC(&unk_281350E08, 255, MEMORY[0x277CF99B8], MEMORY[0x277CF99E0]);
        v33 = v19;
        v22 = sub_224DAFD28();
        v36 = a4;
        v24 = v23;
        v32 = v20;
        v25 = *(v6 + 8);
        v25(v10, v5);
        v26 = sub_224A33F74(v22, v24, &v38);
        a4 = v36;

        v28 = v33;
        v27 = v34;
        *(v34 + 1) = v26;
        v29 = v27;
        _os_log_impl(&dword_224A2F000, v28, v32, v37, v27, 0xCu);
        v30 = v35;
        __swift_destroy_boxed_opaque_existential_1(v35);
        MEMORY[0x22AA5EED0](v30, -1, -1);
        MEMORY[0x22AA5EED0](v29, -1, -1);
      }

      else
      {

        v25 = *(v6 + 8);
        v25(v10, v5);
      }

      sub_224AC88F4(v13, a4);

      v25(v13, v5);
    }
  }
}

void sub_224ACA200(uint64_t a1, void *a2, void (*a3)(uint64_t), uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v36 = *(v6 - 8);
  v37 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v35 = &v35 - v8;
  v40 = sub_224DAA428();
  v9 = *(v40 - 8);
  MEMORY[0x28223BE20](v40, v10);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3338, &unk_224DB3550);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v35 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3340, &qword_224DB41C0);
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v35 - v19;
  v38 = a1;
  sub_224A3796C(a1, &v35 - v19, &qword_27D6F3340, &qword_224DB41C0);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_224A44E4C(v20, v16, &qword_27D6F3338, &unk_224DB3550);
    v28 = *&v16[*(v13 + 36)];
    v29 = a2[3];
    v30 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v29);
    v42 = v28;
    v31 = v40;
    (*(v9 + 104))(v12, *MEMORY[0x277CFA040], v40);
    v32 = *(v30 + 8);
    v33 = *(v32 + 56);
    v34 = v28;
    v33(&v42, v12, v16, v29, v32);
    (*(v9 + 8))(v12, v31);
    sub_224A3311C(v16, &qword_27D6F3338, &unk_224DB3550);

    v27 = v41;
    if (!v41)
    {
      return;
    }

    goto LABEL_5;
  }

  v22 = v35;
  v21 = v36;
  v23 = v37;
  (*(v36 + 32))(v35, v20, v37);
  v24 = a2[3];
  v25 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v24);
  v42 = 0;
  v26 = v40;
  (*(v9 + 104))(v12, *MEMORY[0x277CFA038], v40);
  (*(*(v25 + 8) + 56))(&v42, v12, v22, v24);
  (*(v9 + 8))(v12, v26);
  (*(v21 + 8))(v22, v23);
  v27 = v41;
  if (v41)
  {
LABEL_5:
    v27(v38);
  }
}

void *sub_224ACA5DC(unint64_t a1, uint64_t a2, char a3)
{
  v111 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v105 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v98 = &v96 - v6;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F33C8, &qword_224DB3600);
  MEMORY[0x28223BE20](v103, v7);
  v9 = &v96 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  v12 = MEMORY[0x28223BE20](v10 - 8, v11);
  v100 = &v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v101 = &v96 - v16;
  v18 = MEMORY[0x28223BE20](v15, v17);
  v20 = &v96 - v19;
  MEMORY[0x28223BE20](v18, v21);
  v104 = &v96 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5740, &qword_224DB3608);
  MEMORY[0x28223BE20](v23 - 8, v24);
  v26 = &v96 - v25;
  v27 = sub_224DACB98();
  v109 = *(v27 - 8);
  MEMORY[0x28223BE20](v27, v28);
  v108 = &v96 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_224DAC2B8();
  v112 = *(v30 - 8);
  v32 = MEMORY[0x28223BE20](v30, v31);
  v99 = &v96 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v32, v34);
  v110 = &v96 - v36;
  v38 = MEMORY[0x28223BE20](v35, v37);
  v40 = &v96 - v39;
  MEMORY[0x28223BE20](v38, v41);
  v43 = &v96 - v42;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v107 = result;
  if (result)
  {
    v106 = v30;
    v102 = v27;
    if (a3 == 3)
    {
      if (qword_2813516C8 != -1)
      {
        swift_once();
      }

      v45 = sub_224DAB258();
      __swift_project_value_buffer(v45, qword_281365120);
      sub_224A3796C(v111, v26, &qword_27D6F5740, &qword_224DB3608);
      v46 = sub_224DAB228();
      v47 = sub_224DAF2A8();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v114 = v49;
        *v48 = 136446210;
        sub_224ACFEEC(&unk_281350E08, 255, MEMORY[0x277CF99B8], MEMORY[0x277CF99E0]);
        v50 = sub_224DAFD28();
        v52 = v51;
        sub_224A3311C(v26, &qword_27D6F5740, &qword_224DB3608);
        v53 = sub_224A33F74(v50, v52, &v114);

        *(v48 + 4) = v53;
        _os_log_impl(&dword_224A2F000, v46, v47, "Received remote preview archive for %{public}s", v48, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v49);
        v54 = v49;
        v30 = v106;
        MEMORY[0x22AA5EED0](v54, -1, -1);
        MEMORY[0x22AA5EED0](v48, -1, -1);
      }

      else
      {

        sub_224A3311C(v26, &qword_27D6F5740, &qword_224DB3608);
      }

      v112[2](v110, v111, v30);
      v66 = v104;
      sub_224DAC288();
      if (qword_27D6F2C58 != -1)
      {
        swift_once();
      }

      v67 = __swift_project_value_buffer(v4, qword_27D6F7180);
      v68 = v105;
      (*(v105 + 16))(v20, v67, v4);
      v97 = *(v68 + 56);
      v97(v20, 0, 1, v4);
      v69 = *(v103 + 48);
      sub_224A3796C(v66, v9, &qword_27D6F56C0, &unk_224DB3580);
      sub_224A3796C(v20, &v9[v69], &qword_27D6F56C0, &unk_224DB3580);
      v70 = *(v68 + 48);
      if (v70(v9, 1, v4) == 1)
      {
        sub_224A3311C(v20, &qword_27D6F56C0, &unk_224DB3580);
        sub_224A3311C(v66, &qword_27D6F56C0, &unk_224DB3580);
        v71 = v70(&v9[v69], 1, v4);
        v72 = v106;
        if (v71 == 1)
        {
          sub_224A3311C(v9, &qword_27D6F56C0, &unk_224DB3580);
LABEL_24:
          v86 = v110;
          sub_224DAC2A8();
          v97(v100, 1, 1, v4);
          v87 = v99;
          sub_224DAC298();
          v88 = v112;
          (v112[1])(v86, v72);
          v88[4](v86, v87, v72);
          goto LABEL_25;
        }
      }

      else
      {
        v73 = v101;
        sub_224A3796C(v9, v101, &qword_27D6F56C0, &unk_224DB3580);
        if (v70(&v9[v69], 1, v4) != 1)
        {
          v81 = v105;
          v82 = &v9[v69];
          v83 = v98;
          (*(v105 + 32))(v98, v82, v4);
          sub_224A33088(&qword_281351870, &unk_27D6F30D0, &unk_224DB2AC0, MEMORY[0x277CFA020]);
          v84 = sub_224DAEDD8();
          v85 = *(v81 + 8);
          v85(v83, v4);
          sub_224A3311C(v20, &qword_27D6F56C0, &unk_224DB3580);
          sub_224A3311C(v104, &qword_27D6F56C0, &unk_224DB3580);
          v85(v73, v4);
          sub_224A3311C(v9, &qword_27D6F56C0, &unk_224DB3580);
          v72 = v106;
          if (v84)
          {
            goto LABEL_24;
          }

LABEL_25:
          v89 = v107[31];
          v90 = v107[32];
          __swift_project_boxed_opaque_existential_1(v107 + 28, v89);
          v91 = sub_224DAC2A8();
          v93 = v108;
          v92 = v109;
          v94 = v102;
          (*(v109 + 104))(v108, *MEMORY[0x277CF9B60], v102);
          (*(v90 + 32))(v91, v93, v89, v90);

          (*(v92 + 8))(v93, v94);
          return (v112[1])(v110, v72);
        }

        sub_224A3311C(v20, &qword_27D6F56C0, &unk_224DB3580);
        sub_224A3311C(v104, &qword_27D6F56C0, &unk_224DB3580);
        (*(v105 + 8))(v73, v4);
        v72 = v106;
      }

      sub_224A3311C(v9, &qword_27D6F33C8, &qword_224DB3600);
      goto LABEL_25;
    }

    if (a3 == 4)
    {
      v55 = v112[2];
      v55(v43, v111, v30);
      if (qword_2813516C8 != -1)
      {
        swift_once();
      }

      v56 = sub_224DAB258();
      __swift_project_value_buffer(v56, qword_281365120);
      v55(v40, v43, v30);
      v57 = sub_224DAB228();
      v58 = sub_224DAF2A8();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v114 = v60;
        *v59 = 136446210;
        sub_224ACFEEC(&unk_281350E08, 255, MEMORY[0x277CF99B8], MEMORY[0x277CF99E0]);
        v61 = sub_224DAFD28();
        v63 = v62;
        v64 = v112[1];
        v111 = (v112 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v112 = v64;
        (v64)(v40, v30);
        v65 = sub_224A33F74(v61, v63, &v114);

        *(v59 + 4) = v65;
        _os_log_impl(&dword_224A2F000, v57, v58, "Received remote live control archive for %{public}s", v59, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v60);
        MEMORY[0x22AA5EED0](v60, -1, -1);
        MEMORY[0x22AA5EED0](v59, -1, -1);
      }

      else
      {

        v74 = v112[1];
        v111 = (v112 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v112 = v74;
        (v74)(v40, v30);
      }

      v75 = v107[36];
      v76 = v107[37];
      __swift_project_boxed_opaque_existential_1(v107 + 33, v75);
      v77 = sub_224DAC2A8();
      v78 = v108;
      v79 = v109;
      v80 = v102;
      (*(v109 + 104))(v108, *MEMORY[0x277CF9B60], v102);
      (*(*(v76 + 8) + 32))(v77, v78, v75);

      (*(v79 + 8))(v78, v80);
      return (v112)(v43, v106);
    }

    else
    {
      v114 = 0;
      v115 = 0xE000000000000000;
      sub_224DAF938();
      if (a3)
      {
        v113 = a3;
        sub_224DAFA48();
        MEMORY[0x22AA5D210](0xD000000000000022, 0x8000000224DC53C0);
      }

      else
      {

        v114 = 0xD000000000000024;
        v115 = 0x8000000224DC53F0;
        sub_224ACFEEC(&unk_281350E08, 255, MEMORY[0x277CF99B8], MEMORY[0x277CF99E0]);
        v95 = sub_224DAFD28();
        MEMORY[0x22AA5D210](v95);
      }

      result = sub_224DAFB58();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_224ACB394(uint64_t a1, uint64_t a2, void *a3, void (*a4)(char *), uint64_t a5, uint64_t a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3338, &unk_224DB3550);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v16 - v12;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
    sub_224DAA1F8();
    if (v15)
    {
    }

    else
    {
      sub_224AC7088(a1, a3, v13);
      if (a4)
      {
        a4(v13);
      }

      sub_224C9AB2C(v13, a6);

      return sub_224A3311C(v13, &qword_27D6F3338, &unk_224DB3550);
    }
  }

  return result;
}

uint64_t sub_224ACB4E4(uint64_t a1, uint64_t a2)
{
  v121 = a2;
  v3 = sub_224DAAF28();
  v5 = MEMORY[0x28223BE20](v3 - 8, v4);
  v120 = &v119 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v7);
  v128 = &v119 - v8;
  v9 = sub_224DAAF48();
  v123 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v10);
  v122 = &v119 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_224DAAE38();
  v132 = *(v12 - 8);
  v133 = v12;
  MEMORY[0x28223BE20](v12, v13);
  v125 = &v119 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3320, &unk_224DBD6F0);
  v17 = MEMORY[0x28223BE20](v15 - 8, v16);
  v19 = &v119 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v20);
  v134 = &v119 - v21;
  v139 = sub_224DAC2B8();
  v22 = *(v139 - 8);
  v24 = MEMORY[0x28223BE20](v139, v23);
  v124 = &v119 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v24, v26);
  *&v131 = &v119 - v28;
  MEMORY[0x28223BE20](v27, v29);
  v31 = &v119 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5630, &unk_224DB34C0);
  MEMORY[0x28223BE20](v32 - 8, v33);
  v35 = &v119 - v34;
  v36 = sub_224DA9908();
  v37 = *(v36 - 8);
  v136 = v36;
  v137 = v37;
  MEMORY[0x28223BE20](v36, v38);
  v135 = &v119 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  MEMORY[0x28223BE20](v40 - 8, v41);
  v43 = &v119 - v42;
  v44 = sub_224DAAC58();
  v129 = *(v44 - 8);
  v130 = v44;
  MEMORY[0x28223BE20](v44, v45);
  v126 = (&v119 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  v138 = a1;
  sub_224DAC288();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v48 = *(v47 - 8);
  if ((*(v48 + 48))(v43, 1, v47) == 1)
  {
    sub_224A3311C(v43, &qword_27D6F56C0, &unk_224DB3580);
LABEL_7:
    v68 = v22;
    v69 = v139;
    (*(v22 + 16))(v31, v138, v139);
    v57 = sub_224DAB228();
    v70 = sub_224DAF288();
    if (!os_log_type_enabled(v57, v70))
    {

      (*(v22 + 8))(v31, v69);
      goto LABEL_11;
    }

    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v140[0] = v72;
    *v71 = 136446210;
    sub_224ACFEEC(&unk_281350E08, 255, MEMORY[0x277CF99B8], MEMORY[0x277CF99E0]);
    v73 = sub_224DAFD28();
    v74 = v68;
    v76 = v75;
    (*(v74 + 8))(v31, v69);
    v77 = sub_224A33F74(v73, v76, v140);

    *(v71 + 4) = v77;
    _os_log_impl(&dword_224A2F000, v57, v70, "Cannot replicate a control archive belonging to a local host %{public}s", v71, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v72);
    MEMORY[0x22AA5EED0](v72, -1, -1);
    v67 = v71;
LABEL_9:
    MEMORY[0x22AA5EED0](v67, -1, -1);

LABEL_11:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3398, &unk_224DB35C0);
    sub_224A33088(&qword_27D6F33A0, &qword_27D6F3398, &unk_224DB35C0, &unk_224DB8AC8);
    swift_allocError();
    *v78 = 0;
    return swift_willThrow();
  }

  v119 = v9;
  sub_224DAA1F8();
  v50 = v49;
  (*(v48 + 8))(v43, v47);
  if (!v50)
  {
    goto LABEL_7;
  }

  sub_224DA9888();

  v52 = v136;
  v51 = v137;
  v53 = v22;
  if ((*(v137 + 48))(v35, 1, v136) == 1)
  {
    sub_224A3311C(v35, &unk_27D6F5630, &unk_224DB34C0);
    v54 = *(v22 + 16);
    v55 = v131;
    v56 = v139;
    v54(v131, v138, v139);
    v57 = sub_224DAB228();
    v58 = sub_224DAF288();
    if (!os_log_type_enabled(v57, v58))
    {

      (*(v53 + 8))(v55, v56);
      goto LABEL_11;
    }

    v59 = swift_slowAlloc();
    v60 = v53;
    v61 = swift_slowAlloc();
    v140[0] = v61;
    *v59 = 136446210;
    sub_224ACFEEC(&unk_281350E08, 255, MEMORY[0x277CF99B8], MEMORY[0x277CF99E0]);
    v62 = sub_224DAFD28();
    v63 = v56;
    v65 = v64;
    (*(v60 + 8))(v55, v63);
    v66 = sub_224A33F74(v62, v65, v140);

    *(v59 + 4) = v66;
    _os_log_impl(&dword_224A2F000, v57, v58, "Cannot replicate a control archive if we have a bad relationship ID %{public}s", v59, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v61);
    MEMORY[0x22AA5EED0](v61, -1, -1);
    v67 = v59;
    goto LABEL_9;
  }

  (*(v51 + 32))();
  __swift_project_boxed_opaque_existential_1((v141 + 40), *(v141 + 64));
  v80 = v134;
  sub_224DAAC98();
  sub_224A3796C(v80, v19, &qword_27D6F3320, &unk_224DBD6F0);
  v81 = v132;
  v82 = v133;
  if ((*(v132 + 48))(v19, 1, v133) == 1)
  {
    sub_224A3311C(v19, &qword_27D6F3320, &unk_224DBD6F0);
    v83 = v124;
    v84 = v139;
    (*(v53 + 16))(v124, v138, v139);
    v85 = sub_224DAB228();
    v86 = sub_224DAF288();
    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      v88 = v53;
      v89 = swift_slowAlloc();
      v140[0] = v89;
      *v87 = 136446210;
      sub_224ACFEEC(&unk_281350E08, 255, MEMORY[0x277CF99B8], MEMORY[0x277CF99E0]);
      v90 = sub_224DAFD28();
      v92 = v91;
      (*(v88 + 8))(v83, v84);
      v93 = sub_224A33F74(v90, v92, v140);
      v52 = v136;

      *(v87 + 4) = v93;
      _os_log_impl(&dword_224A2F000, v85, v86, "Cannot replicate a control archive if we have no relationship %{public}s", v87, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v89);
      MEMORY[0x22AA5EED0](v89, -1, -1);
      v94 = v87;
      v80 = v134;
      MEMORY[0x22AA5EED0](v94, -1, -1);
    }

    else
    {

      (*(v53 + 8))(v83, v84);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3398, &unk_224DB35C0);
    sub_224A33088(&qword_27D6F33A0, &qword_27D6F3398, &unk_224DB35C0, &unk_224DB8AC8);
    swift_allocError();
    *v108 = 0;
    swift_willThrow();
    sub_224A3311C(v80, &qword_27D6F3320, &unk_224DBD6F0);
    return (*(v137 + 8))(v135, v52);
  }

  else
  {
    v95 = v125;
    (*(v81 + 32))(v125, v19, v82);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3BC0, &unk_224DB9C60);
    v96 = swift_allocObject();
    v131 = xmmword_224DB3100;
    *(v96 + 16) = xmmword_224DB3100;
    sub_224DAAD98();
    (*(v81 + 8))(v95, v82);
    sub_224A3311C(v80, &qword_27D6F3320, &unk_224DBD6F0);
    (*(v51 + 8))(v135, v52);
    v97 = v126;
    *v126 = v96;
    v99 = v129;
    v98 = v130;
    (*(v129 + 104))(v97, *MEMORY[0x277D46558], v130);
    v134 = sub_224B942B8(*(v141 + 32));
    v135 = v100;
    v101 = *(v51 + 56);
    v102 = v128;
    v101(v128, 1, 1, v52);
    sub_224DAAD38();
    v103 = v139;
    v140[3] = v139;
    v140[4] = sub_224ACFEEC(&qword_27D6F3360, 255, MEMORY[0x277CF99B8], MEMORY[0x277CF99C0]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v140);
    (*(v53 + 16))(boxed_opaque_existential_1, v138, v103);
    v105 = v127;
    v106 = sub_224DAAD28();
    if (v105)
    {

      sub_224ACFD2C(v102);
      (*(v99 + 8))(v97, v98);
      return __swift_destroy_boxed_opaque_existential_1(v140);
    }

    else
    {
      v109 = v106;
      v110 = v102;
      v111 = v107;
      __swift_destroy_boxed_opaque_existential_1(v140);
      sub_224DA96C8();
      v112 = v97;
      sub_224ACFD88(v110, v120);
      v113 = v122;
      sub_224DAAEE8();
      sub_224A78024(v109, v111);
      sub_224ACFD2C(v110);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3368, &qword_224DB3B10);
      v114 = v123;
      v115 = (*(v123 + 80) + 32) & ~*(v123 + 80);
      v116 = swift_allocObject();
      *(v116 + 16) = v131;
      v117 = v119;
      (*(v114 + 16))(v116 + v115, v113, v119);
      sub_224C6BB2C(v116, v112, v121);
      swift_setDeallocating();
      v118 = *(v114 + 8);
      v118(v116 + v115, v117);
      swift_deallocClassInstance();
      v118(v113, v117);
      return (*(v129 + 8))(v112, v130);
    }
  }
}

uint64_t sub_224ACC448(uint64_t a1)
{
  v3 = v1;
  v5 = sub_224DAB0B8();
  v48 = *(v5 - 8);
  v49 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v47 = v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_224DAAF28();
  v10 = MEMORY[0x28223BE20](v8 - 8, v9);
  v12 = v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v13);
  v15 = v44 - v14;
  v52 = sub_224DAAF48();
  v46 = *(v52 - 8);
  MEMORY[0x28223BE20](v52, v16);
  v50 = v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  MEMORY[0x28223BE20](v18 - 8, v19);
  v21 = v44 - v20;
  sub_224DAC288();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    return sub_224A3311C(v21, &qword_27D6F56C0, &unk_224DB3580);
  }

  sub_224DAA1F8();
  v26 = v25;
  result = (*(v23 + 8))(v21, v22);
  if (v26)
  {

    v27 = sub_224B942B8(*(v3 + 32));
    v29 = v28;
    v30 = sub_224DA9908();
    (*(*(v30 - 8) + 56))(v15, 1, 1, v30);
    sub_224DAAD38();
    v31 = sub_224DAC2B8();
    v51[3] = v31;
    v51[4] = sub_224ACFEEC(&qword_27D6F3360, 255, MEMORY[0x277CF99B8], MEMORY[0x277CF99C0]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v51);
    (*(*(v31 - 8) + 16))(boxed_opaque_existential_1, a1, v31);
    v33 = sub_224DAAD28();
    if (v2)
    {
      sub_224ACFD2C(v15);

      return __swift_destroy_boxed_opaque_existential_1(v51);
    }

    else
    {
      v35 = v33;
      v36 = v34;
      __swift_destroy_boxed_opaque_existential_1(v51);
      sub_224DA96C8();
      v44[2] = v27;
      v45 = v3;
      v44[1] = v29;
      sub_224ACFD88(v15, v12);
      v37 = v50;
      sub_224DAAEE8();
      sub_224A78024(v35, v36);
      sub_224ACFD2C(v15);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3368, &qword_224DB3B10);
      v38 = v46;
      v39 = (*(v46 + 80) + 32) & ~*(v46 + 80);
      v40 = swift_allocObject();
      *(v40 + 16) = xmmword_224DB3100;
      (*(v38 + 16))(v40 + v39, v37, v52);
      v42 = v47;
      v41 = v48;
      v43 = v49;
      (*(v48 + 104))(v47, *MEMORY[0x277D46820], v49);
      __swift_project_boxed_opaque_existential_1((v45 + 40), *(v45 + 64));
      sub_224DAABF8();

      (*(v41 + 8))(v42, v43);
      return (*(v38 + 8))(v50, v52);
    }
  }

  return result;
}

uint64_t sub_224ACC9A4(uint64_t *a1)
{
  v2 = *(sub_224DAAE38() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_224CB24E8(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_224ACCA4C(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_224ACCA4C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_224DAFD18();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_224DAAE38();
        v6 = sub_224DAF058();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_224DAAE38() - 8);
      v8[0] = (v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
      v8[1] = v5;
      sub_224ACCF18(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_224ACCB78(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_224ACCB78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v65 = sub_224DA9908();
  v8 = *(v65 - 8);
  v10 = MEMORY[0x28223BE20](v65, v9);
  v64 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v12);
  v63 = &v46 - v13;
  v14 = sub_224DAAE38();
  v16 = MEMORY[0x28223BE20](v14, v15);
  v56 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v62 = &v46 - v20;
  result = MEMORY[0x28223BE20](v19, v21);
  v61 = &v46 - v24;
  v48 = a2;
  if (a3 != a2)
  {
    v25 = *a4;
    v27 = *(v23 + 16);
    v26 = v23 + 16;
    v28 = *(v26 + 56);
    v58 = (v8 + 8);
    v59 = v27;
    v57 = (v26 - 8);
    v60 = v26;
    v29 = (v25 + v28 * (a3 - 1));
    v53 = -v28;
    v54 = (v26 + 16);
    v30 = a1 - a3;
    v55 = v25;
    v47 = v28;
    v31 = v25 + v28 * a3;
    v32 = v63;
LABEL_5:
    v51 = v29;
    v52 = a3;
    v49 = v31;
    v50 = v30;
    v66 = v30;
    while (1)
    {
      v33 = v61;
      v34 = v59;
      v59(v61, v31, v14);
      v35 = v14;
      v36 = v62;
      v34(v62, v29, v35);
      sub_224DAAD98();
      v37 = v64;
      sub_224DAAD98();
      v67 = MEMORY[0x22AA57C30](v32, v37);
      v38 = *v58;
      v39 = v37;
      v40 = v65;
      (*v58)(v39, v65);
      v38(v32, v40);
      v41 = *v57;
      v42 = v36;
      v14 = v35;
      (*v57)(v42, v35);
      result = v41(v33, v35);
      if ((v67 & 1) == 0)
      {
LABEL_4:
        a3 = v52 + 1;
        v29 = &v51[v47];
        v30 = v50 - 1;
        v31 = v49 + v47;
        if (v52 + 1 == v48)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v55)
      {
        break;
      }

      v43 = *v54;
      v44 = v56;
      (*v54)(v56, v31, v35);
      swift_arrayInitWithTakeFrontToBack();
      result = v43(v29, v44, v35);
      v29 += v53;
      v31 += v53;
      if (__CFADD__(v66++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_224ACCF18(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v143 = a1;
  v165 = sub_224DA9908();
  v8 = *(v165 - 8);
  v10 = MEMORY[0x28223BE20](v165, v9);
  v164 = &v139 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v12);
  v163 = &v139 - v13;
  v14 = sub_224DAAE38();
  v15 = *(v14 - 8);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v146 = &v139 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17, v19);
  v155 = &v139 - v21;
  v23 = MEMORY[0x28223BE20](v20, v22);
  v162 = &v139 - v24;
  result = MEMORY[0x28223BE20](v23, v25);
  v166 = &v139 - v27;
  v28 = a3[1];
  v151 = a3;
  if (v28 < 1)
  {
    v30 = MEMORY[0x277D84F90];
LABEL_96:
    v14 = v30;
    v30 = *v143;
    if (!*v143)
    {
      goto LABEL_134;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v58 = v151;
    if ((result & 1) == 0)
    {
LABEL_128:
      result = sub_224CB23F0(v14);
      v14 = result;
    }

    v168 = v14;
    v135 = *(v14 + 16);
    if (v135 >= 2)
    {
      while (*v58)
      {
        v136 = *(v14 + 16 * v135);
        v137 = *(v14 + 16 * (v135 - 1) + 40);
        sub_224ACDB18(*v58 + *(v15 + 72) * v136, *v58 + *(v15 + 72) * *(v14 + 16 * (v135 - 1) + 32), *v58 + *(v15 + 72) * v137, v30);
        if (v5)
        {
        }

        if (v137 < v136)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_224CB23F0(v14);
        }

        if (v135 - 2 >= *(v14 + 16))
        {
          goto LABEL_122;
        }

        v138 = (v14 + 16 * v135);
        *v138 = v136;
        v138[1] = v137;
        v168 = v14;
        result = sub_224CB2364(v135 - 1);
        v14 = v168;
        v135 = *(v168 + 16);
        if (v135 <= 1)
        {
        }
      }

      goto LABEL_132;
    }
  }

  v139 = a4;
  v29 = 0;
  v159 = (v8 + 8);
  v160 = v15 + 16;
  v157 = (v15 + 32);
  v158 = (v15 + 8);
  v30 = MEMORY[0x277D84F90];
  v161 = v14;
  v142 = v15;
  while (1)
  {
    v31 = v29 + 1;
    if (v29 + 1 >= v28)
    {
      v47 = v29 + 1;
      v58 = v151;
    }

    else
    {
      v152 = v28;
      v140 = v30;
      v141 = v5;
      v32 = v29;
      v144 = v29;
      v33 = *v151;
      v167 = v33;
      v34 = *(v15 + 72);
      v35 = (v33 + v34 * v31);
      v36 = v14;
      v37 = *(v15 + 16);
      (v37)(v166, v35, v14);
      v38 = v162;
      v153 = v37;
      (v37)(v162, v33 + v34 * v32, v36);
      v39 = v163;
      sub_224DAAD98();
      v40 = v164;
      sub_224DAAD98();
      LODWORD(v154) = MEMORY[0x22AA57C30](v39, v40);
      v41 = *v159;
      v42 = v40;
      v43 = v165;
      (*v159)(v42, v165);
      v150 = v41;
      (v41)(v39, v43);
      v44 = *(v142 + 8);
      v30 = v158;
      v44(v38, v36);
      v149 = v44;
      result = (v44)(v166, v36);
      v45 = v144 + 2;
      v156 = v34;
      v46 = v167 + v34 * (v144 + 2);
      while (1)
      {
        v47 = v152;
        if (v152 == v45)
        {
          break;
        }

        v48 = v161;
        v49 = v153;
        v153();
        v50 = v162;
        v49(v162, v35, v48);
        v51 = v163;
        sub_224DAAD98();
        v52 = v164;
        sub_224DAAD98();
        LOBYTE(v167) = MEMORY[0x22AA57C30](v51, v52) & 1;
        LODWORD(v167) = v167;
        v53 = v52;
        v54 = v165;
        v55 = v35;
        v56 = v150;
        (v150)(v53, v165);
        v56(v51, v54);
        v30 = v158;
        v57 = v149;
        (v149)(v50, v48);
        result = v57(v166, v48);
        ++v45;
        v46 += v156;
        v35 = &v156[v55];
        if ((v154 & 1) != v167)
        {
          v47 = v45 - 1;
          goto LABEL_9;
        }
      }

      v5 = v141;
      v58 = v151;
      v15 = v142;
      v14 = v161;
      v29 = v144;
      if ((v154 & 1) == 0)
      {
        goto LABEL_23;
      }

LABEL_9:
      if (v47 < v144)
      {
        goto LABEL_125;
      }

      if (v144 < v47)
      {
        v59 = v47;
        v60 = v156 * (v47 - 1);
        v61 = v47 * v156;
        v152 = v47;
        v62 = v144;
        v63 = v144 * v156;
        do
        {
          if (v62 != --v59)
          {
            v64 = *v58;
            if (!v64)
            {
              goto LABEL_131;
            }

            v65 = *v157;
            (*v157)(v146, v64 + v63, v14);
            if (v63 < v60 || v64 + v63 >= (v64 + v61))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v63 != v60)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = (v65)(v64 + v60, v146, v14);
            v58 = v151;
          }

          ++v62;
          v60 -= v156;
          v61 -= v156;
          v63 += v156;
        }

        while (v62 < v59);
        v5 = v141;
        v15 = v142;
        v30 = v140;
        v29 = v144;
        v47 = v152;
      }

      else
      {
LABEL_23:
        v30 = v140;
      }
    }

    v66 = v58[1];
    if (v47 < v66)
    {
      if (__OFSUB__(v47, v29))
      {
        goto LABEL_124;
      }

      if (v47 - v29 < v139)
      {
        if (__OFADD__(v29, v139))
        {
          goto LABEL_126;
        }

        if (v29 + v139 >= v66)
        {
          v67 = v58[1];
        }

        else
        {
          v67 = v29 + v139;
        }

        if (v67 < v29)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v47 != v67)
        {
          break;
        }
      }
    }

    v68 = v47;
    if (v47 < v29)
    {
      goto LABEL_123;
    }

LABEL_35:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_224AD92E0(0, *(v30 + 2) + 1, 1, v30);
      v30 = result;
    }

    v70 = *(v30 + 2);
    v69 = *(v30 + 3);
    v71 = v70 + 1;
    v58 = v15;
    if (v70 >= v69 >> 1)
    {
      result = sub_224AD92E0((v69 > 1), v70 + 1, 1, v30);
      v30 = result;
    }

    *(v30 + 2) = v71;
    v72 = &v30[16 * v70];
    *(v72 + 4) = v29;
    *(v72 + 5) = v68;
    v73 = *v143;
    if (!*v143)
    {
      goto LABEL_133;
    }

    v147 = v68;
    if (v70)
    {
      v15 = v73;
      while (1)
      {
        v74 = v71 - 1;
        if (v71 >= 4)
        {
          break;
        }

        if (v71 == 3)
        {
          v75 = *(v30 + 4);
          v76 = *(v30 + 5);
          v85 = __OFSUB__(v76, v75);
          v77 = v76 - v75;
          v78 = v85;
LABEL_55:
          if (v78)
          {
            goto LABEL_112;
          }

          v91 = &v30[16 * v71];
          v93 = *v91;
          v92 = *(v91 + 1);
          v94 = __OFSUB__(v92, v93);
          v95 = v92 - v93;
          v96 = v94;
          if (v94)
          {
            goto LABEL_115;
          }

          v97 = &v30[16 * v74 + 32];
          v99 = *v97;
          v98 = *(v97 + 1);
          v85 = __OFSUB__(v98, v99);
          v100 = v98 - v99;
          if (v85)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v95, v100))
          {
            goto LABEL_119;
          }

          if (v95 + v100 >= v77)
          {
            if (v77 < v100)
            {
              v74 = v71 - 2;
            }

            goto LABEL_76;
          }

          goto LABEL_69;
        }

        v101 = &v30[16 * v71];
        v103 = *v101;
        v102 = *(v101 + 1);
        v85 = __OFSUB__(v102, v103);
        v95 = v102 - v103;
        v96 = v85;
LABEL_69:
        if (v96)
        {
          goto LABEL_114;
        }

        v104 = &v30[16 * v74];
        v106 = *(v104 + 4);
        v105 = *(v104 + 5);
        v85 = __OFSUB__(v105, v106);
        v107 = v105 - v106;
        if (v85)
        {
          goto LABEL_117;
        }

        if (v107 < v95)
        {
          goto LABEL_3;
        }

LABEL_76:
        v112 = v74 - 1;
        if (v74 - 1 >= v71)
        {
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
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
          goto LABEL_127;
        }

        if (!*v151)
        {
          goto LABEL_130;
        }

        v113 = *&v30[16 * v112 + 32];
        v114 = *&v30[16 * v74 + 40];
        sub_224ACDB18(*v151 + v58[9] * v113, *v151 + v58[9] * *&v30[16 * v74 + 32], *v151 + v58[9] * v114, v15);
        if (v5)
        {
        }

        if (v114 < v113)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v30 = sub_224CB23F0(v30);
        }

        if (v112 >= *(v30 + 2))
        {
          goto LABEL_109;
        }

        v115 = &v30[16 * v112];
        *(v115 + 4) = v113;
        *(v115 + 5) = v114;
        v168 = v30;
        result = sub_224CB2364(v74);
        v30 = v168;
        v71 = *(v168 + 16);
        if (v71 <= 1)
        {
          goto LABEL_3;
        }
      }

      v79 = &v30[16 * v71 + 32];
      v80 = *(v79 - 64);
      v81 = *(v79 - 56);
      v85 = __OFSUB__(v81, v80);
      v82 = v81 - v80;
      if (v85)
      {
        goto LABEL_110;
      }

      v84 = *(v79 - 48);
      v83 = *(v79 - 40);
      v85 = __OFSUB__(v83, v84);
      v77 = v83 - v84;
      v78 = v85;
      if (v85)
      {
        goto LABEL_111;
      }

      v86 = &v30[16 * v71];
      v88 = *v86;
      v87 = *(v86 + 1);
      v85 = __OFSUB__(v87, v88);
      v89 = v87 - v88;
      if (v85)
      {
        goto LABEL_113;
      }

      v85 = __OFADD__(v77, v89);
      v90 = v77 + v89;
      if (v85)
      {
        goto LABEL_116;
      }

      if (v90 >= v82)
      {
        v108 = &v30[16 * v74 + 32];
        v110 = *v108;
        v109 = *(v108 + 1);
        v85 = __OFSUB__(v109, v110);
        v111 = v109 - v110;
        if (v85)
        {
          goto LABEL_120;
        }

        if (v77 < v111)
        {
          v74 = v71 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_55;
    }

LABEL_3:
    v28 = v151[1];
    v29 = v147;
    v15 = v58;
    if (v147 >= v28)
    {
      goto LABEL_96;
    }
  }

  v140 = v30;
  v141 = v5;
  v116 = *v58;
  v117 = *(v15 + 72);
  v156 = *(v15 + 16);
  v118 = (v116 + v117 * (v47 - 1));
  v153 = -v117;
  v144 = v29;
  v119 = (v29 - v47);
  v154 = v116;
  v145 = v117;
  v120 = v116 + v47 * v117;
  v147 = v67;
LABEL_87:
  v152 = v47;
  v148 = v120;
  v149 = v119;
  v121 = v120;
  v150 = v118;
  v122 = v118;
  while (1)
  {
    v58 = v166;
    v123 = v156;
    (v156)(v166, v121, v14);
    v124 = v162;
    v123(v162, v122, v14);
    v125 = v163;
    sub_224DAAD98();
    v126 = v164;
    sub_224DAAD98();
    LODWORD(v167) = MEMORY[0x22AA57C30](v125, v126);
    v127 = *v159;
    v128 = v126;
    v129 = v165;
    (*v159)(v128, v165);
    v130 = v125;
    v14 = v161;
    v127(v130, v129);
    v131 = *v158;
    (*v158)(v124, v14);
    result = v131(v58, v14);
    if ((v167 & 1) == 0)
    {
LABEL_86:
      v47 = v152 + 1;
      v118 = &v150[v145];
      v119 = v149 - 1;
      v68 = v147;
      v120 = v148 + v145;
      if (v152 + 1 != v147)
      {
        goto LABEL_87;
      }

      v5 = v141;
      v15 = v142;
      v30 = v140;
      v29 = v144;
      if (v147 < v144)
      {
        goto LABEL_123;
      }

      goto LABEL_35;
    }

    if (!v154)
    {
      break;
    }

    v132 = *v157;
    v133 = v155;
    (*v157)(v155, v121, v14);
    swift_arrayInitWithTakeFrontToBack();
    v132(v122, v133, v14);
    v122 = v153 + v122;
    v121 += v153;
    if (__CFADD__(v119++, 1))
    {
      goto LABEL_86;
    }
  }

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
  return result;
}

uint64_t sub_224ACDB18(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v77 = a3;
  v72 = sub_224DA9908();
  v7 = *(v72 - 8);
  v9 = MEMORY[0x28223BE20](v72, v8);
  v71 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11);
  v70 = &v60 - v12;
  v76 = sub_224DAAE38();
  v13 = *(v76 - 8);
  v15 = MEMORY[0x28223BE20](v76, v14);
  v69 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v15, v17);
  v74 = &v60 - v19;
  v21 = *(v20 + 72);
  if (!v21)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v21 == -1)
  {
    goto LABEL_61;
  }

  v22 = v77 - a2;
  if (v77 - a2 == 0x8000000000000000 && v21 == -1)
  {
    goto LABEL_62;
  }

  v23 = (a2 - a1) / v21;
  v80 = a1;
  v79 = a4;
  if (v23 >= v22 / v21)
  {
    v25 = v22 / v21 * v21;
    if (a4 < a2 || a2 + v25 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v42 = a4 + v25;
    if (v25 >= 1)
    {
      v43 = -v21;
      v64 = (v7 + 8);
      v65 = (v13 + 16);
      v62 = a4;
      v63 = (v13 + 8);
      v44 = v42;
      v75 = a1;
      v66 = -v21;
      v45 = v76;
      while (2)
      {
        while (1)
        {
          v60 = v42;
          v46 = a2;
          v47 = a2 + v43;
          v67 = v46;
          v68 = v47;
          while (1)
          {
            v48 = v77;
            if (v46 <= a1)
            {
              v80 = v46;
              v78 = v60;
              goto LABEL_59;
            }

            v61 = v42;
            v77 += v43;
            v49 = v44 + v43;
            v50 = *v65;
            (*v65)();
            v51 = v69;
            (v50)(v69, v47, v45);
            v52 = v70;
            sub_224DAAD98();
            v53 = v71;
            sub_224DAAD98();
            v73 = MEMORY[0x22AA57C30](v52, v53);
            v54 = *v64;
            v55 = v53;
            v56 = v72;
            (*v64)(v55, v72);
            v54(v52, v56);
            v57 = *v63;
            (*v63)(v51, v45);
            v57(v74, v45);
            if (v73)
            {
              break;
            }

            v42 = v49;
            v58 = v62;
            if (v48 < v44 || v77 >= v44)
            {
              swift_arrayInitWithTakeFrontToBack();
              v47 = v68;
              v43 = v66;
            }

            else
            {
              v47 = v68;
              v43 = v66;
              if (v48 != v44)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v44 = v49;
            a1 = v75;
            v46 = v67;
            if (v49 <= v58)
            {
              a2 = v67;
              goto LABEL_58;
            }
          }

          v59 = v62;
          if (v48 < v67 || v77 >= v67)
          {
            break;
          }

          a2 = v68;
          a1 = v75;
          v42 = v61;
          v43 = v66;
          if (v48 != v67)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v44 <= v59)
          {
            goto LABEL_58;
          }
        }

        a2 = v68;
        swift_arrayInitWithTakeFrontToBack();
        a1 = v75;
        v42 = v61;
        v43 = v66;
        if (v44 > v59)
        {
          continue;
        }

        break;
      }
    }

LABEL_58:
    v80 = a2;
    v78 = v42;
  }

  else
  {
    v24 = v23 * v21;
    if (a4 < a1 || a1 + v24 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v68 = a4 + v24;
    v78 = a4 + v24;
    if (v24 >= 1 && a2 < v77)
    {
      v27 = *(v13 + 16);
      v64 = (v7 + 8);
      v65 = v27;
      v66 = v21;
      v67 = v13 + 16;
      v63 = (v13 + 8);
      v28 = v76;
      do
      {
        v75 = a1;
        v29 = v74;
        v30 = v65;
        (v65)(v74, a2, v28);
        v31 = v69;
        (v30)(v69, a4, v28);
        v32 = v70;
        sub_224DAAD98();
        v33 = v71;
        sub_224DAAD98();
        v73 = MEMORY[0x22AA57C30](v32, v33);
        v34 = a2;
        v35 = *v64;
        v36 = v33;
        v37 = a4;
        v38 = v72;
        (*v64)(v36, v72);
        v35(v32, v38);
        v39 = *v63;
        (*v63)(v31, v28);
        v39(v29, v28);
        if (v73)
        {
          v40 = v66;
          a2 = v34 + v66;
          v41 = v75;
          a4 = v37;
          if (v75 < v34 || v75 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v75 != v34)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        else
        {
          a2 = v34;
          v40 = v66;
          a4 = v37 + v66;
          v41 = v75;
          if (v75 < v37 || v75 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v75 != v37)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v79 = a4;
        }

        a1 = v41 + v40;
        v80 = a1;
      }

      while (a4 < v68 && a2 < v77);
    }
  }

LABEL_59:
  sub_224CB2404(&v80, &v79, &v78);
  return 1;
}

uint64_t sub_224ACE1F4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v32 = a2;
  v33 = a4;
  v31 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v29 - v9;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5DB0, &unk_224DB35E0);
  v11 = *(v30 - 8);
  MEMORY[0x28223BE20](v30, v12);
  v14 = &v29 - v13;
  v36[3] = type metadata accessor for PreviewControlConfigurationService();
  v36[4] = sub_224ACFEEC(&unk_281352A58, 255, type metadata accessor for PreviewControlConfigurationService, &unk_224DB2A48);
  v36[0] = a1;
  v16 = a1[5];
  v15 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v16);
  v17 = *(v15 + 8);
  v18 = *(v17 + 40);

  *&v34[0] = v18(768, v16, v17);
  v35 = *(a5 + 16);
  v19 = v35;
  v20 = sub_224DAF358();
  (*(*(v20 - 8) + 56))(v10, 1, 1, v20);
  v21 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5140, &unk_224DBAE80);
  sub_224AC319C();
  sub_224A33088(&qword_281351140, &unk_27D6F5140, &unk_224DBAE80, MEMORY[0x277CBCD90]);
  sub_224ACFEEC(&qword_281350A80, 255, sub_224AC319C, MEMORY[0x277D85228]);
  sub_224DAB448();
  sub_224A3311C(v10, &qword_27D6F5090, &qword_224DB5C30);

  v22 = swift_allocObject();
  swift_weakInit();
  sub_224A3317C(v36, v34);
  v23 = swift_allocObject();
  v23[2] = v22;
  sub_224A36F98(v34, (v23 + 3));
  v24 = v31;
  v25 = v32;
  v26 = v33;
  v23[8] = v31;
  v23[9] = v26;
  v23[10] = v25;
  sub_224A364AC(v24, v26);
  sub_224A33088(&qword_2813512B0, &qword_27D6F5DB0, &unk_224DB35E0, MEMORY[0x277CBCD60]);

  v27 = v30;
  sub_224DAB488();

  (*(v11 + 8))(v14, v27);
  swift_beginAccess();
  sub_224DAB308();
  swift_endAccess();

  return __swift_destroy_boxed_opaque_existential_1(v36);
}

uint64_t sub_224ACE600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v31 = a2;
  v32 = a4;
  v30 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v28 - v12;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5DB0, &unk_224DB35E0);
  v14 = *(v29 - 8);
  MEMORY[0x28223BE20](v29, v15);
  v17 = &v28 - v16;
  v35[3] = a6;
  v35[4] = a7;
  __swift_allocate_boxed_opaque_existential_1(v35);
  (*(*(a6 - 8) + 16))();
  *&v33[0] = (*(*(a7 + 8) + 40))(768, a6);
  v34 = *(a5 + 16);
  v18 = v34;
  v19 = sub_224DAF358();
  (*(*(v19 - 8) + 56))(v13, 1, 1, v19);
  v20 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5140, &unk_224DBAE80);
  sub_224AC319C();
  sub_224A33088(&qword_281351140, &unk_27D6F5140, &unk_224DBAE80, MEMORY[0x277CBCD90]);
  sub_224ACFEEC(&qword_281350A80, 255, sub_224AC319C, MEMORY[0x277D85228]);
  sub_224DAB448();
  sub_224A3311C(v13, &qword_27D6F5090, &qword_224DB5C30);

  v21 = swift_allocObject();
  swift_weakInit();
  sub_224A3317C(v35, v33);
  v22 = swift_allocObject();
  v22[2] = v21;
  sub_224A36F98(v33, (v22 + 3));
  v23 = v30;
  v24 = v31;
  v25 = v32;
  v22[8] = v30;
  v22[9] = v25;
  v22[10] = v24;
  sub_224A364AC(v23, v25);
  sub_224A33088(&qword_2813512B0, &qword_27D6F5DB0, &unk_224DB35E0, MEMORY[0x277CBCD60]);

  v26 = v29;
  sub_224DAB488();

  (*(v14 + 8))(v17, v26);
  swift_beginAccess();
  sub_224DAB308();
  swift_endAccess();

  return __swift_destroy_boxed_opaque_existential_1(v35);
}

uint64_t sub_224ACE9E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  MEMORY[0x28223BE20](a1, a1);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  (*(*(a4 + 8) + 80))(sub_224ACFFA0, a2, a3);
  return (*(v7 + 8))(v9, a3);
}

uint64_t sub_224ACEB00(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_224ACFF60;

  return sub_224C9D900(a1, v4, v5, v6);
}

uint64_t sub_224ACEBB4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_224ACFF60;

  return sub_224C9D44C(a1, v4, v5, v6);
}

uint64_t sub_224ACEC68(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_224ACED1C;

  return sub_224C9D900(a1, v4, v5, v6);
}

uint64_t sub_224ACED1C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_224ACEE10(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_224ACFF60;

  return sub_224AC5014(a1, v4, v5, v6);
}

uint64_t sub_224ACEEC4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_224ACFF60;

  return sub_224AC6138(a1, v4, v5, v6);
}

uint64_t sub_224ACEF78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, __int128 *a8, uint64_t a9, __int128 *a10, uint64_t a11, uint64_t a12, __int128 a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, __int128 a23, __int128 a24, uint64_t a25, uint64_t a26)
{
  v61 = a8;
  v60 = a7;
  v58 = a6;
  v56 = a5;
  v54 = a4;
  v62 = a3;
  v53 = a1;
  v59 = a15;
  v57 = a14;
  v55 = a13;
  v51 = a12;
  v52 = a10;
  v73 = a23;
  v74 = a24;
  v72[3] = a19;
  v75 = a25;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v72);
  (*(*(a19 - 8) + 32))(boxed_opaque_existential_1, a2, a19);
  v70 = a18;
  v71 = a22;
  v28 = __swift_allocate_boxed_opaque_existential_1(v69);
  (*(*(a18 - 8) + 32))(v28, a9, a18);
  v67 = a20;
  v68 = a26;
  v29 = __swift_allocate_boxed_opaque_existential_1(v66);
  (*(*(a20 - 8) + 32))(v29, a11, a20);
  v64 = a17;
  v65 = a21;
  v30 = __swift_allocate_boxed_opaque_existential_1(v63);
  (*(*(a17 - 8) + 32))(v30, a12, a17);
  type metadata accessor for ControlReplicationProvider();
  v31 = swift_allocObject();
  v32 = __swift_mutable_project_boxed_opaque_existential_1(v69, v70);
  MEMORY[0x28223BE20](v32, v32);
  v34 = (&v51 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v35 + 16))(v34);
  v36 = __swift_mutable_project_boxed_opaque_existential_1(v66, v67);
  MEMORY[0x28223BE20](v36, v36);
  v38 = (&v51 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v39 + 16))(v38);
  v40 = __swift_mutable_project_boxed_opaque_existential_1(v63, v64);
  MEMORY[0x28223BE20](v40, v40);
  v42 = (&v51 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v43 + 16))(v42);
  v44 = *v34;
  v45 = *v38;
  v46 = *v42;
  *(v31 + 208) = type metadata accessor for PreviewControlConfigurationService();
  *(v31 + 216) = sub_224ACFEEC(&unk_281352A48, 255, type metadata accessor for PreviewControlConfigurationService, &unk_224DB2A64);
  *(v31 + 184) = v44;
  *(v31 + 288) = type metadata accessor for LiveControlService(0);
  *(v31 + 296) = sub_224ACFEEC(&qword_281359B70, 255, type metadata accessor for LiveControlService, &unk_224DBCEA4);
  *(v31 + 264) = v45;
  *(v31 + 360) = type metadata accessor for LocationService(0);
  *(v31 + 368) = &off_2838352C0;
  *(v31 + 336) = v46;
  *(v31 + 104) = MEMORY[0x277D84FA0];
  *(v31 + 24) = v53;
  sub_224ACFF34(v72, v31 + 32);
  v47 = v56;
  *(v31 + 112) = v54;
  *(v31 + 120) = v47;
  v48 = v60;
  *(v31 + 128) = v58;
  *(v31 + 136) = v48;
  sub_224A36F98(v61, v31 + 144);
  sub_224A36F98(v52, v31 + 224);
  *(v31 + 304) = v55;
  v49 = v59;
  *(v31 + 320) = v57;
  *(v31 + 328) = v49;
  *(v31 + 16) = v62;
  __swift_destroy_boxed_opaque_existential_1(v63);
  __swift_destroy_boxed_opaque_existential_1(v66);
  __swift_destroy_boxed_opaque_existential_1(v69);
  return v31;
}

uint64_t sub_224ACF49C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a5;
  v24 = a3;
  v25 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3328, &qword_224DB3540);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v23 - v14;
  v28[3] = type metadata accessor for PreviewControlConfigurationService();
  v28[4] = sub_224ACFEEC(&unk_281352A58, 255, type metadata accessor for PreviewControlConfigurationService, &unk_224DB2A48);
  v28[0] = a2;

  *&v26[0] = sub_224C9A9FC();
  v27 = *(a5 + 16);
  v16 = v27;
  v17 = sub_224DAF358();
  (*(*(v17 - 8) + 56))(v10, 1, 1, v17);
  v18 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3330, &qword_224DB3548);
  sub_224AC319C();
  sub_224A33088(&qword_2813511A0, &qword_27D6F3330, &qword_224DB3548, MEMORY[0x277CBCD90]);
  sub_224ACFEEC(&qword_281350A80, 255, sub_224AC319C, MEMORY[0x277D85228]);
  sub_224DAB448();
  sub_224A3311C(v10, &qword_27D6F5090, &qword_224DB5C30);

  sub_224A3317C(v28, v26);
  v19 = swift_allocObject();
  sub_224A36F98(v26, v19 + 16);
  v20 = v24;
  v21 = v25;
  *(v19 + 56) = v24;
  *(v19 + 64) = v21;
  sub_224A364AC(v20, v21);
  sub_224A33088(&qword_2813512E0, &qword_27D6F3328, &qword_224DB3540, MEMORY[0x277CBCD60]);
  sub_224DAB488();

  (*(v12 + 8))(v15, v11);
  swift_beginAccess();
  sub_224DAB308();
  swift_endAccess();

  return __swift_destroy_boxed_opaque_existential_1(v28);
}

uint64_t sub_224ACF838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v28 = a5;
  v29 = a3;
  v30 = a4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v28 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3328, &qword_224DB3540);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v28 - v18;
  v33[3] = a6;
  v33[4] = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v33);
  (*(*(a6 - 8) + 16))(boxed_opaque_existential_1, a2, a6);
  *&v31[0] = sub_224C9A9FC();
  v32 = *(a5 + 16);
  v21 = v32;
  v22 = sub_224DAF358();
  (*(*(v22 - 8) + 56))(v14, 1, 1, v22);
  v23 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3330, &qword_224DB3548);
  sub_224AC319C();
  sub_224A33088(&qword_2813511A0, &qword_27D6F3330, &qword_224DB3548, MEMORY[0x277CBCD90]);
  sub_224ACFEEC(&qword_281350A80, 255, sub_224AC319C, MEMORY[0x277D85228]);
  sub_224DAB448();
  sub_224A3311C(v14, &qword_27D6F5090, &qword_224DB5C30);

  sub_224A3317C(v33, v31);
  v24 = swift_allocObject();
  sub_224A36F98(v31, v24 + 16);
  v25 = v29;
  v26 = v30;
  *(v24 + 56) = v29;
  *(v24 + 64) = v26;
  sub_224A364AC(v25, v26);
  sub_224A33088(&qword_2813512E0, &qword_27D6F3328, &qword_224DB3540, MEMORY[0x277CBCD60]);
  sub_224DAB488();

  (*(v16 + 8))(v19, v15);
  swift_beginAccess();
  sub_224DAB308();
  swift_endAccess();

  return __swift_destroy_boxed_opaque_existential_1(v33);
}

uint64_t objectdestroy_56Tm()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  if (*(v0 + 56))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_224ACFC44(char a1)
{
  if (a1 == 3)
  {
    v2 = 312;
    return *(v1 + v2);
  }

  if (a1 == 4)
  {
    v2 = 328;
    return *(v1 + v2);
  }

  sub_224DAF938();
  sub_224DAFA48();
  MEMORY[0x22AA5D210](0xD000000000000023, 0x8000000224DC5390);
  result = sub_224DAFB58();
  __break(1u);
  return result;
}

uint64_t sub_224ACFD2C(uint64_t a1)
{
  v2 = sub_224DAAF28();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_224ACFD88(uint64_t a1, uint64_t a2)
{
  v4 = sub_224DAAF28();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_74Tm()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  if (*(v0 + 64))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_224ACFEEC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_224ACFF34(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  v2 = *(a1 + 16);
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 32) = v3;
  *(a2 + 48) = v4;
  *(a2 + 16) = v2;
  return a2;
}

uint64_t sub_224ACFFA8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v164 = a5;
  v163 = a4;
  v162 = a2;
  v173 = a1;
  v167 = sub_224DACC88();
  v174 = *(v167 - 8);
  v7 = MEMORY[0x28223BE20](v167, v6);
  v166 = &v149 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = v8;
  MEMORY[0x28223BE20](v7, v9);
  v161 = &v149 - v10;
  v11 = sub_224DAB258();
  v12 = *(v11 - 8);
  v175 = v11;
  v176 = v12;
  v14 = MEMORY[0x28223BE20](v11, v13);
  v169 = &v149 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v16);
  v159 = &v149 - v17;
  v158 = sub_224DAE918();
  v157 = *(v158 - 8);
  MEMORY[0x28223BE20](v158, v18);
  v156 = &v149 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = sub_224DA9908();
  v154 = *(v155 - 8);
  MEMORY[0x28223BE20](v155, v20);
  v153 = &v149 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = sub_224DA9878();
  v22 = *(v168 - 1);
  MEMORY[0x28223BE20](v168, v23);
  v152 = (&v149 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = type metadata accessor for ExtensionTask.Identifier(0);
  MEMORY[0x28223BE20](v25, v26);
  v171 = (&v149 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = sub_224DACB28();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28, v30);
  v32 = &v149 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for ExtensionTask.SchedulingConfiguration(0);
  v35 = MEMORY[0x28223BE20](v33 - 8, v34);
  v170 = &v149 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35, v37);
  v39 = &v149 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F33D0, qword_224DB3710);
  v41 = *(*(v40 - 8) + 56);
  v41(v39, 1, 1, v40);
  v172 = a3;
  sub_224DACC58();
  v42 = (*(v29 + 88))(v32, v28);
  if (v42 == *MEMORY[0x277CF9B58])
  {
    sub_224A3D238(v39, type metadata accessor for ExtensionTask.SchedulingConfiguration);
    (*(v29 + 96))(v32, v28);
    v43 = *(v40 + 48);
    (*(v22 + 32))(v39, v32, v168);
    *&v39[v43] = 0x408C200000000000;
    v44 = v39;
    v45 = 0;
LABEL_5:
    v41(v44, v45, 1, v40);
    goto LABEL_7;
  }

  if (v42 == *MEMORY[0x277CF9B50])
  {
    sub_224A3D238(v39, type metadata accessor for ExtensionTask.SchedulingConfiguration);
    v44 = v39;
    v45 = 1;
    goto LABEL_5;
  }

  (*(v29 + 8))(v32, v28);
LABEL_7:
  v46 = v173;
  v47 = v171;
  *v171 = v173;
  swift_storeEnumTagMultiPayload();
  v165 = v39;
  v48 = v170;
  v150 = type metadata accessor for ExtensionTask.SchedulingConfiguration;
  sub_224A3F63C(v39, v170, type metadata accessor for ExtensionTask.SchedulingConfiguration);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5070, &unk_224DB3670);
  v49 = *(type metadata accessor for ExtensionTask.SchedulingOption(0) - 8);
  v50 = (*(v49 + 80) + 32) & ~*(v49 + 80);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_224DB3100;
  v52 = sub_224DAE8B8();
  (*(*(v52 - 8) + 56))(v51 + v50, 3, 5, v52);
  v151 = type metadata accessor for ExtensionTask(0);
  v53 = objc_allocWithZone(v151);
  v54 = v46;
  sub_224DAE908();
  v55 = OBJC_IVAR____TtC10ChronoCore13ExtensionTask_schedulingOptions;
  *&v53[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_schedulingOptions] = MEMORY[0x277D84F90];
  v56 = OBJC_IVAR____TtC10ChronoCore13ExtensionTask_powerlogWakeReason;
  v57 = sub_224DAC938();
  (*(*(v57 - 8) + 56))(&v53[v56], 1, 1, v57);
  v58 = &v53[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_syncWorkItem];
  *v58 = 0;
  v58[1] = 0;
  v59 = &v53[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_asyncWorkItem];
  *v59 = 0;
  v59[1] = 0;
  v60 = &v53[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_taskWorkItem];
  *v60 = 0;
  v60[1] = 0;
  v61 = &v53[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_completion];
  *v61 = 0;
  v61[1] = 0;
  v62 = v152;
  sub_224DA9868();
  (*(v22 + 32))(&v53[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_creationDate], v62, v168);
  *&v53[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_target] = v46;
  sub_224A3F63C(v48, &v53[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_schedulingConfiguration], type metadata accessor for ExtensionTask.SchedulingConfiguration);
  swift_beginAccess();
  *&v53[v55] = v51;
  v168 = v54;

  v63 = &v53[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_cost];
  *v63 = 0;
  v63[8] = 1;
  v152 = type metadata accessor for ExtensionTask.Identifier;
  sub_224A3F63C(v47, &v53[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_identifier], type metadata accessor for ExtensionTask.Identifier);
  v64 = v153;
  sub_224DA98F8();
  v65 = v154;
  v66 = v155;
  (*(v154 + 16))(&v53[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_taskIdentifier], v64, v155);
  v178[0] = sub_224DA98E8();
  sub_224A3F6A4();
  v67 = sub_224DAEF18();
  v69 = sub_224A3D19C(8, v67, v68);
  v71 = v70;
  v73 = v72;
  v75 = v74;

  v76 = MEMORY[0x22AA5D1C0](v69, v71, v73, v75);
  v78 = v77;

  v79 = &v53[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_logDigest];
  *v79 = v76;
  v79[1] = v78;
  v53[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_allowCostOverride] = 1;
  v179.receiver = v53;
  v179.super_class = v151;
  v80 = objc_msgSendSuper2(&v179, sel_init);
  (*(v65 + 8))(v64, v66);
  sub_224A3D238(v170, v150);
  sub_224A3D238(v171, v152);
  v81 = v157;
  v82 = v156;
  v83 = v158;
  v157[13](v156, *MEMORY[0x277CE3D68], v158);
  v84 = OBJC_IVAR____TtC10ChronoCore13ExtensionTask_requiredDataProtectionLevel;
  swift_beginAccess();
  v85 = v81[5];
  v171 = v80;
  v85(v80 + v84, v82, v83);
  swift_endAccess();
  v86 = v176;
  v87 = *(v176 + 16);
  v156 = OBJC_IVAR____TtC10ChronoCore25PlaceholderReloadStrategy_logger;
  v88 = v159;
  v89 = v175;
  v158 = v176 + 16;
  v157 = v87;
  (v87)(v159, v177 + OBJC_IVAR____TtC10ChronoCore25PlaceholderReloadStrategy_logger, v175);
  v90 = v168;
  v91 = sub_224DAB228();
  v92 = sub_224DAF268();

  if (os_log_type_enabled(v91, v92))
  {
    v93 = swift_slowAlloc();
    v94 = swift_slowAlloc();
    *v93 = 138543362;
    *(v93 + 4) = v90;
    *v94 = v173;
    v95 = v90;
    _os_log_impl(&dword_224A2F000, v91, v92, "%{public}@ reload without cache", v93, 0xCu);
    sub_224A3311C(v94, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v94, -1, -1);
    MEMORY[0x22AA5EED0](v93, -1, -1);
  }

  v96 = *(v86 + 8);
  v176 = v86 + 8;
  v168 = v96;
  (v96)(v88, v89);
  v97 = swift_allocObject();
  *(v97 + 16) = 0;
  v98 = v174;
  v99 = *(v174 + 16);
  v155 = v174 + 16;
  v159 = v99;
  v100 = v161;
  v101 = v90;
  v102 = v167;
  (v99)(v161, v172);
  v103 = (*(v98 + 80) + 40) & ~*(v98 + 80);
  v104 = (v160 + v103 + 7) & 0xFFFFFFFFFFFFFFF8;
  v105 = swift_allocObject();
  v106 = v177;
  *(v105 + 2) = v177;
  *(v105 + 3) = v101;
  *(v105 + 4) = v162;
  v107 = *(v98 + 32);
  v108 = v102;
  v107(v105 + v103, v100, v102);
  *(v105 + v104) = v97;
  v109 = v171;
  v110 = (v171 + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_asyncWorkItem);
  v111 = *(v171 + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_asyncWorkItem);
  v112 = *(v171 + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_asyncWorkItem + 8);
  *v110 = sub_224AD18BC;
  v110[1] = v105;
  v113 = v101;

  sub_224A3D418(v111, v112);
  v114 = swift_allocObject();
  v115 = v164;
  *(v114 + 2) = v163;
  *(v114 + 3) = v115;
  *(v114 + 4) = v97;
  v116 = (v109 + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_completion);
  v117 = *(v109 + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_completion);
  v118 = *(v109 + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_completion + 8);
  *v116 = sub_224A8B280;
  v116[1] = v114;
  v170 = v97;
  v119 = v175;

  sub_224A3D418(v117, v118);
  v120 = v169;
  (v157)(v169, &v156[v106], v119);
  v121 = v166;
  (v159)(v166, v172, v108);
  v122 = v113;
  v123 = sub_224DAB228();
  v124 = sub_224DAF2A8();

  if (os_log_type_enabled(v123, v124))
  {
    v125 = swift_slowAlloc();
    v126 = swift_slowAlloc();
    v127 = v108;
    v128 = v121;
    v129 = swift_slowAlloc();
    v178[0] = v129;
    *v125 = 138543618;
    *(v125 + 4) = v122;
    *v126 = v173;
    *(v125 + 12) = 2082;
    v130 = v122;
    v131 = sub_224DACBA8();
    v133 = v132;
    (*(v174 + 8))(v128, v127);
    v134 = sub_224A33F74(v131, v133, v178);

    *(v125 + 14) = v134;
    _os_log_impl(&dword_224A2F000, v123, v124, "%{public}@ scheduled %{public}s", v125, 0x16u);
    sub_224A3311C(v126, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v126, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v129);
    MEMORY[0x22AA5EED0](v129, -1, -1);
    MEMORY[0x22AA5EED0](v125, -1, -1);

    v135 = v169;
  }

  else
  {

    (*(v174 + 8))(v121, v108);
    v135 = v120;
  }

  (v168)(v135, v119);
  sub_224DAD358();
  v136 = *(v177 + OBJC_IVAR____TtC10ChronoCore31MobilePlaceholderReloadStrategy_taskService + 24);
  v137 = *(v177 + OBJC_IVAR____TtC10ChronoCore31MobilePlaceholderReloadStrategy_taskService + 32);
  __swift_project_boxed_opaque_existential_1((v177 + OBJC_IVAR____TtC10ChronoCore31MobilePlaceholderReloadStrategy_taskService), v136);
  v138 = v171;
  v139 = (*(v137 + 16))(v171, v136, v137);
  v141 = v140;
  v143 = v142;
  v145 = v144;
  v178[3] = &type metadata for TaskCancellable;
  v178[4] = sub_224A8B0FC();
  v146 = swift_allocObject();
  v178[0] = v146;
  v146[2] = v139;
  v146[3] = v141;
  v146[4] = v143;
  v146[5] = v145;
  v147 = sub_224DAD368();

  sub_224A3D238(v165, type metadata accessor for ExtensionTask.SchedulingConfiguration);

  return v147;
}

void sub_224AD0FFC(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v47 = a7;
  v48 = a8;
  v46 = a6;
  v52 = a2;
  v53 = a3;
  v11 = sub_224DAE6E8();
  v50 = *(v11 - 8);
  v51 = v11;
  MEMORY[0x28223BE20](v11, v12);
  v49 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_224DAB258();
  v15 = *(v14 - 8);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v45 - v21;
  v23 = sub_224DADA98();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23, v25);
  v27 = &v45 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_224A4B83C(a1, v55);
  if (!v55[3])
  {
    sub_224A3311C(v55, &qword_27D6F4760, &unk_224DB3680);
    goto LABEL_6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5080, &qword_224DB3690);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    (*(v15 + 16))(v19, a4 + OBJC_IVAR____TtC10ChronoCore25PlaceholderReloadStrategy_logger, v14);
    v32 = a5;
    v33 = sub_224DAB228();
    v34 = sub_224DAF288();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v35 = 138543362;
      *(v35 + 4) = v32;
      *v36 = v32;
      v37 = v32;
      _os_log_impl(&dword_224A2F000, v33, v34, "%{public}@ No extension session", v35, 0xCu);
      sub_224A3311C(v36, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v36, -1, -1);
      MEMORY[0x22AA5EED0](v35, -1, -1);
    }

    (*(v15 + 8))(v19, v14);
    sub_224AD1978();
    (*(v50 + 104))(v49, *MEMORY[0x277CE3C40], v51);
    v38 = sub_224DAF638();
    v52();
    goto LABEL_9;
  }

  v45 = v54;
  __swift_project_boxed_opaque_existential_1((a4 + OBJC_IVAR____TtC10ChronoCore31MobilePlaceholderReloadStrategy_descriptorService), *(a4 + OBJC_IVAR____TtC10ChronoCore31MobilePlaceholderReloadStrategy_descriptorService + 24));
  if (sub_224DADA38())
  {
    sub_224DACA18();
    sub_224DACF08();

    (*(v24 + 8))(v27, v23);
    v28 = sub_224DACF18();

    v29 = sub_224AE8EB4(v28);

    v30 = v48;

    v31 = v53;

    sub_224BAFA30(a5, v46, v45, v47, v29, a4, v30, v52, v31);
    swift_unknownObjectRelease();

    return;
  }

  (*(v15 + 16))(v22, a4 + OBJC_IVAR____TtC10ChronoCore25PlaceholderReloadStrategy_logger, v14);
  v39 = a5;
  v40 = sub_224DAB228();
  v41 = sub_224DAF288();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    *v42 = 138543362;
    *(v42 + 4) = v39;
    *v43 = v39;
    v44 = v39;
    _os_log_impl(&dword_224A2F000, v40, v41, "%{public}@ Descriptors are not available", v42, 0xCu);
    sub_224A3311C(v43, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v43, -1, -1);
    MEMORY[0x22AA5EED0](v42, -1, -1);
  }

  (*(v15 + 8))(v22, v14);
  sub_224AD1978();
  (*(v50 + 104))(v49, *MEMORY[0x277CE3C40], v51);
  v38 = sub_224DAF638();
  v52();
  swift_unknownObjectRelease();
LABEL_9:
}

uint64_t sub_224AD1650(uint64_t a1, char a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  if ((a2 & 1) == 0)
  {
    v5 = a1;
    swift_beginAccess();
    *(a3 + 16) = v5;

    a1 = 0;
  }

  return a4(a1);
}

uint64_t sub_224AD16D0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC10ChronoCore31MobilePlaceholderReloadStrategy_taskService));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC10ChronoCore31MobilePlaceholderReloadStrategy_descriptorService));
  return __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC10ChronoCore31MobilePlaceholderReloadStrategy_hostService));
}

uint64_t sub_224AD1714()
{
  sub_224A3D418(*(v0 + 16), *(v0 + 24));
  v1 = OBJC_IVAR____TtC10ChronoCore25PlaceholderReloadStrategy_logger;
  v2 = sub_224DAB258();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC10ChronoCore25PlaceholderReloadStrategy_extensionManager));
  v3 = OBJC_IVAR____TtC10ChronoCore31MobilePlaceholderReloadStrategy_taskService;

  __swift_destroy_boxed_opaque_existential_1((v0 + v3));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC10ChronoCore31MobilePlaceholderReloadStrategy_descriptorService));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC10ChronoCore31MobilePlaceholderReloadStrategy_hostService));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MobilePlaceholderReloadStrategy(uint64_t a1)
{
  result = qword_2813535B8;
  if (!qword_2813535B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_224AD18BC(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v7 = *(sub_224DACC88() - 8);
  v8 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v9 = v3[2];
  v10 = v3[3];
  v11 = v3[4];
  v12 = *(v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_224AD0FFC(a1, a2, a3, v9, v10, v11, v3 + v8, v12);
}

unint64_t sub_224AD1978()
{
  result = qword_281350860;
  if (!qword_281350860)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281350860);
  }

  return result;
}

id sub_224AD19C4()
{
  v1 = v0;
  v2 = sub_224DA9908();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = &v52[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5, v8);
  v64 = &v52[-v9];
  v10 = OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__lock_activityStore;
  swift_beginAccess();
  v11 = *&v0[v10];
  v12 = v11 + 64;
  v13 = 1 << *(v11 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v11 + 64);
  v57 = OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__schedulingProvider;
  v16 = (v13 + 63) >> 6;
  v62 = v3 + 32;
  v63 = v3 + 16;
  v61 = (v3 + 8);
  v65 = v11;

  v17 = 0;
  *&v18 = 136446466;
  v55 = v18;
  v59 = v7;
  v60 = v2;
  v58 = v10;
  for (i = v3; v15; v10 = v58)
  {
LABEL_10:
    while (1)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v21 = v64;
      (*(v3 + 16))(v64, *(v65 + 48) + *(v3 + 72) * (v20 | (v17 << 6)), v2);
      (*(v3 + 32))(v7, v21, v2);
      swift_beginAccess();
      v22 = *&v1[v10];
      if (*(v22 + 16))
      {
        v23 = sub_224A438E8(v7);
        if (v24)
        {
          break;
        }
      }

      swift_endAccess();
      (*v61)(v7, v2);
      if (!v15)
      {
        goto LABEL_6;
      }
    }

    v25 = *(*(v22 + 56) + 8 * v23);
    swift_endAccess();
    v26 = *v61;

    v26(v7, v2);
    if (qword_2813515F0 != -1)
    {
      swift_once();
    }

    v27 = sub_224DAB258();
    __swift_project_value_buffer(v27, qword_281364F88);

    v28 = sub_224DAB228();
    v29 = sub_224DAF288();

    v30 = v25;
    if (os_log_type_enabled(v28, v29))
    {
      v31 = swift_slowAlloc();
      v53 = v29;
      v32 = v31;
      v33 = swift_slowAlloc();
      v67 = v33;
      *v32 = v55;
      v34 = (*(v25 + 24) + OBJC_IVAR____TtC10ChronoCore12TaskActivity_logDigest);
      v35 = v28;
      v54 = v1;
      v36 = *v34;
      v37 = v34[1];

      v38 = sub_224A33F74(v36, v37, &v67);

      *(v32 + 4) = v38;
      *(v32 + 12) = 2082;
      v39 = *(v30 + 24);
      v40 = *(v39 + OBJC_IVAR____TtC10ChronoCore12TaskActivity_name + 8);
      v68 = *(v39 + OBJC_IVAR____TtC10ChronoCore12TaskActivity_name);
      v69 = v40;

      MEMORY[0x22AA5D210](46, 0xE100000000000000);
      MEMORY[0x22AA5D210](*(v39 + OBJC_IVAR____TtC10ChronoCore12TaskActivity_logDigest), *(v39 + OBJC_IVAR____TtC10ChronoCore12TaskActivity_logDigest + 8));

      v41 = sub_224A33F74(v68, v69, &v67);

      *(v32 + 14) = v41;
      v1 = v54;
      _os_log_impl(&dword_224A2F000, v35, v53, "[%{public}s]: orphaned %{public}s; cancelling", v32, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA5EED0](v33, -1, -1);
      MEMORY[0x22AA5EED0](v32, -1, -1);
    }

    else
    {
    }

    v3 = i;
    sub_224A3317C(&v1[v57], &v68);
    v42 = v1;
    v43 = v70;
    v44 = v71;
    __swift_project_boxed_opaque_existential_1(&v68, v70);
    v45 = v43;
    v1 = v42;
    (*(v44 + 40))(v30, v45, v44);

    __swift_destroy_boxed_opaque_existential_1(&v68);
    v7 = v59;
    v2 = v60;
  }

  while (1)
  {
LABEL_6:
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
LABEL_26:
      swift_once();
      goto LABEL_21;
    }

    if (v19 >= v16)
    {
      break;
    }

    v15 = *(v12 + 8 * v19);
    ++v17;
    if (v15)
    {
      v17 = v19;
      goto LABEL_10;
    }
  }

  if (!*(*&v1[v10] + 16))
  {
    goto LABEL_24;
  }

  if (qword_2813515F0 != -1)
  {
    goto LABEL_26;
  }

LABEL_21:
  v46 = sub_224DAB258();
  __swift_project_value_buffer(v46, qword_281364F88);
  v47 = sub_224DAB228();
  v48 = sub_224DAF288();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    *v49 = 0;
    _os_log_impl(&dword_224A2F000, v47, v48, "orphaned activities detected", v49, 2u);
    MEMORY[0x22AA5EED0](v49, -1, -1);
  }

LABEL_24:
  v50 = type metadata accessor for TaskActivityScheduler();
  v66.receiver = v1;
  v66.super_class = v50;
  return objc_msgSendSuper2(&v66, sel_dealloc);
}

void sub_224AD2080(uint64_t a1, char a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_224A49120(a1, a2 & 1);
  }
}

void sub_224AD20F0(char *a1, NSObject *a2, uint64_t a3)
{
  v6 = sub_224DA9908();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__lock_activityStore;
  swift_beginAccess();
  if (*(*&a1[v11] + 16) && (, sub_224A438E8(a2), v13 = v12, , (v13 & 1) != 0))
  {
    sub_224A46B4C(a3, a1, a2);
  }

  else
  {
    if (qword_2813515F0 != -1)
    {
      swift_once();
    }

    v14 = sub_224DAB258();
    __swift_project_value_buffer(v14, qword_281364F88);
    (*(v7 + 16))(v10, a2, v6);
    v15 = sub_224DAB228();
    v16 = sub_224DAF2A8();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v36 = v17;
      v37 = swift_slowAlloc();
      v39 = v37;
      *v17 = 136446210;
      v38 = sub_224DA98E8();
      sub_224A3F6A4();
      v18 = sub_224DAEF18();
      v20 = v6;
      v21 = sub_224A3D19C(8, v18, v19);
      v23 = v22;
      v25 = v24;
      v27 = v26;

      v28 = MEMORY[0x22AA5D1C0](v21, v23, v25, v27);
      v30 = v29;

      (*(v7 + 8))(v10, v20);
      v31 = sub_224A33F74(v28, v30, &v39);

      v32 = v36;
      *(v36 + 1) = v31;
      v33 = v32;
      _os_log_impl(&dword_224A2F000, v15, v16, "[%{public}s]: activity abandoned from enqueing because already cancelled or completed.", v32, 0xCu);
      v34 = v37;
      __swift_destroy_boxed_opaque_existential_1(v37);
      MEMORY[0x22AA5EED0](v34, -1, -1);
      MEMORY[0x22AA5EED0](v33, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v10, v6);
    }
  }
}

double sub_224AD2404()
{
  v0 = sub_224DAB7B8();
  v1 = *(v0 - 8);
  v30 = v0;
  v31 = v1;
  MEMORY[0x28223BE20](v0, v2);
  v29 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_224DAF318();
  MEMORY[0x28223BE20](v4, v5);
  v6 = sub_224DAF3C8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_224DAB848();
  v27 = *(v11 - 8);
  v28 = v11;
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_224AC319C();
  sub_224DAB7F8();
  (*(v7 + 104))(v10, *MEMORY[0x277D85268], v6);
  aBlock[0] = MEMORY[0x277D84F90];
  sub_224A47C10(&qword_281350A88, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3470, qword_224DB38B0);
  v15 = MEMORY[0x277D83970];
  sub_224A33088(&qword_281350B90, &qword_27D6F3470, qword_224DB38B0, MEMORY[0x277D83970]);
  sub_224DAF788();
  v16 = sub_224DAF418();
  v17 = swift_allocObject();
  v18 = v26;
  *(v17 + 16) = v26;
  *(v17 + 24) = v16;
  aBlock[4] = sub_224AD38F8;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224A39F40;
  aBlock[3] = &block_descriptor_2;
  v19 = _Block_copy(aBlock);
  v20 = v18;
  v21 = v16;
  sub_224DAB7E8();
  v32 = MEMORY[0x277D84F90];
  sub_224A47C10(&qword_281350ED0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
  sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0, v15);
  v23 = v29;
  v22 = v30;
  sub_224DAF788();
  MEMORY[0x22AA5D760](0, v14, v23, v19);
  _Block_release(v19);

  (*(v31 + 8))(v23, v22);
  (*(v27 + 8))(v14, v28);

  return result;
}

void sub_224AD28A8(char *a1, void *a2)
{
  if (qword_2813515F0 != -1)
  {
    swift_once();
  }

  v4 = sub_224DAB258();
  __swift_project_value_buffer(v4, qword_281364F88);
  v5 = sub_224DAB228();
  v6 = sub_224DAF2A8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_224A2F000, v5, v6, "Waiting for data migration to complete.", v7, 2u);
    MEMORY[0x22AA5EED0](v7, -1, -1);
  }

  __swift_project_boxed_opaque_existential_1(&a1[OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__systemDataMigrator], *&a1[OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__systemDataMigrator + 24]);
  v8 = sub_224DAC968();
  v9 = *&a1[OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__lock];
  os_unfair_lock_lock(*(v9 + 16));
  sub_224AD2A18(a1, v8 & 1, a2);
  v10 = *(v9 + 16);

  os_unfair_lock_unlock(v10);
}

double sub_224AD2A18(char *a1, int a2, void *a3)
{
  v67 = a3;
  v56 = sub_224DA9FB8();
  v55 = *(v56 - 8);
  MEMORY[0x28223BE20](v56, v5);
  v54 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_224DA9FD8();
  v58 = *(v59 - 8);
  MEMORY[0x28223BE20](v59, v7);
  v57 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v65 = &v54 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3428, &qword_224DB3700);
  v69 = *(v12 - 8);
  v70 = v12;
  MEMORY[0x28223BE20](v12, v13);
  v68 = &v54 - v14;
  v15 = &a1[OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__keybagProvider];
  __swift_project_boxed_opaque_existential_1(&a1[OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__keybagProvider], *&a1[OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__keybagProvider + 24]);
  sub_224DAA178();
  if (qword_2813515F0 != -1)
  {
    swift_once();
  }

  v16 = sub_224DAB258();
  __swift_project_value_buffer(v16, qword_281364F88);
  v17 = a1;
  v18 = sub_224DAB228();
  v19 = sub_224DAF2A8();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 67240448;
    *(v20 + 4) = a2 & 1;
    *(v20 + 8) = 2050;
    v21 = OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__lock_enqueueActivityBlocksWaitingForMigration;
    swift_beginAccess();
    *(v20 + 10) = *(*&v17[v21] + 16);

    _os_log_impl(&dword_224A2F000, v18, v19, "Data migration completed (ran? %{BOOL,public}d) - have %{public}ld pending activities.", v20, 0x12u);
    MEMORY[0x22AA5EED0](v20, -1, -1);
  }

  else
  {
  }

  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  v64 = (v22 + 16);
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  v61 = (v23 + 16);
  v24 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v25 = swift_allocObject();
  v26 = v67;
  *(v25 + 16) = v67;
  *(v25 + 24) = v24;
  v63 = v24;
  *(v25 + 32) = v23;
  *(v25 + 40) = v22;
  v60 = a2;
  *(v25 + 48) = a2 & 1;
  v62 = *&v17[OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__lock];
  __swift_project_boxed_opaque_existential_1(v15, *(v15 + 3));

  v27 = v26;
  v67 = v22;

  v66 = v23;

  v72[0] = sub_224DAA138();
  v71 = v27;
  v28 = sub_224DAF358();
  v29 = v65;
  (*(*(v28 - 8) + 56))(v65, 1, 1, v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3430, &qword_224DB3708);
  sub_224AC319C();
  sub_224A33088(&unk_281351150, &qword_27D6F3430, &qword_224DB3708, MEMORY[0x277CBCD90]);
  sub_224A47C10(&qword_281350A80, sub_224AC319C, MEMORY[0x277D85228]);
  v30 = v68;
  sub_224DAB448();
  sub_224AD3910(v29);

  v31 = swift_allocObject();
  v31[2] = v62;
  v31[3] = sub_224AD3900;
  v31[4] = v25;
  sub_224A33088(&qword_2813512B8, &qword_27D6F3428, &qword_224DB3700, MEMORY[0x277CBCD60]);
  v32 = v25;

  v33 = v70;
  v34 = sub_224DAB488();

  (*(v69 + 8))(v30, v33);
  v35 = v64;
  swift_beginAccess();
  *v35 = v34;

  BSDispatchQueueAssert();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v37 = Strong;
    v38 = v66;
    v39 = v67;
    os_unfair_lock_assert_owner(*(*(Strong + OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__lock) + 16));
    v40 = v61;
    swift_beginAccess();
    if (*v40)
    {

LABEL_18:

      return result;
    }

    v70 = v32;
    v41 = &v37[OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__keybagProvider];
    __swift_project_boxed_opaque_existential_1(&v37[OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__keybagProvider], *&v37[OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__keybagProvider + 24]);
    v42 = sub_224DAA148();
    if ((v60 & 1) == 0 || (v42 & 1) == 0)
    {
      sub_224AD3670(v37, v38, v39);

      goto LABEL_18;
    }

    __swift_project_boxed_opaque_existential_1(v41, *(v41 + 3));
    v43 = v57;
    sub_224DAA128();
    v44 = __swift_project_boxed_opaque_existential_1(&v37[OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__lock_userManager], *&v37[OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__lock_userManager + 24]);
    v45 = *v44;
    if ((![*(*v44 + 16) isMultiUser] || (v46 = objc_msgSend(*(v45 + 16), sel_currentUser)) != 0 && (v47 = v46, v48 = objc_msgSend(v46, sel_isLoginUser), v47, v48)) && (v49 = v55, v50 = v54, v51 = v56, (*(v55 + 104))(v54, *MEMORY[0x277CF9F90], v56), v52 = sub_224DA9FC8(), (*(v49 + 8))(v50, v51), (v52 & 1) == 0))
    {
      (*(v58 + 8))(v43, v59);
    }

    else
    {
      sub_224AD3670(v37, v38, v39);

      (*(v58 + 8))(v43, v59);
    }
  }

  else
  {
  }

  return result;
}

void sub_224AD334C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = sub_224DA9FB8();
  v31 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_224DA9FD8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  BSDispatchQueueAssert();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    os_unfair_lock_assert_owner(*(*(Strong + OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__lock) + 16));
    swift_beginAccess();
    if (*(a3 + 16) != 1)
    {
      v28 = v13;
      v29 = v12;
      v30 = a4;
      v19 = &v18[OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__keybagProvider];
      __swift_project_boxed_opaque_existential_1(&v18[OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__keybagProvider], *&v18[OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__keybagProvider + 24]);
      v20 = sub_224DAA148();
      if (a5 & 1) != 0 && (v20)
      {
        __swift_project_boxed_opaque_existential_1(v19, v19[3]);
        sub_224DAA128();
        v21 = __swift_project_boxed_opaque_existential_1(&v18[OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__lock_userManager], *&v18[OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__lock_userManager + 24]);
        v22 = *v21;
        if ([*(*v21 + 16) isMultiUser] && ((v23 = objc_msgSend(*(v22 + 16), sel_currentUser)) == 0 || (v24 = v23, v25 = objc_msgSend(v23, sel_isLoginUser), v24, !v25)) || (v26 = v31, (*(v31 + 104))(v11, *MEMORY[0x277CF9F90], v8), v27 = sub_224DA9FC8(), (*(v26 + 8))(v11, v8), (v27 & 1) != 0))
        {
          sub_224AD3670(v18, a3, v30);

          (*(v28 + 8))(v16, v29);
          return;
        }

        (*(v28 + 8))(v16, v29);
      }

      else
      {
        sub_224AD3670(v18, a3, v30);
      }
    }
  }
}

uint64_t sub_224AD3670(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  a1[OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__lock_completedMigration] = 1;
  swift_beginAccess();
  *(a2 + 16) = 1;
  swift_beginAccess();
  if (*(a3 + 16))
  {

    sub_224DAB328();
  }

  swift_beginAccess();
  *(a3 + 16) = 0;

  if (qword_2813515F0 != -1)
  {
    swift_once();
  }

  v6 = sub_224DAB258();
  __swift_project_value_buffer(v6, qword_281364F88);
  v7 = a1;
  v8 = sub_224DAB228();
  v9 = sub_224DAF2A8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 134349056;
    v11 = OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__lock_enqueueActivityBlocksWaitingForMigration;
    swift_beginAccess();
    *(v10 + 4) = (*(&v7->isa + v11))[2];

    _os_log_impl(&dword_224A2F000, v8, v9, "Unwinding %{public}ld pending activities.", v10, 0xCu);
    MEMORY[0x22AA5EED0](v10, -1, -1);
  }

  else
  {

    v8 = v7;
  }

  v12 = OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__lock_enqueueActivityBlocksWaitingForMigration;
  swift_beginAccess();
  v13 = *(&v7->isa + v12);
  v14 = *(v13 + 16);
  if (v14)
  {

    v15 = v13 + 40;
    do
    {
      v16 = *(v15 - 8);

      v16(v17);

      v15 += 16;
      --v14;
    }

    while (v14);
  }

  *(&v7->isa + v12) = MEMORY[0x277D84F90];
}

uint64_t sub_224AD3910(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_224AD3978()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  os_unfair_lock_lock(*(v1 + 16));
  v2();
  v3 = *(v1 + 16);

  os_unfair_lock_unlock(v3);
}

void sub_224AD39C8()
{
  v1 = *(sub_224DA9908() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_224AD20F0(v3, (v0 + v2), v4);
}

uint64_t sub_224AD3ACC()
{
  v9 = type metadata accessor for _AccountStoreImpl();
  v10 = &off_283829428;
  v8[0] = swift_allocObject();
  type metadata accessor for AccountsChangedNotification();
  v0 = swift_allocObject();
  v1 = __swift_mutable_project_boxed_opaque_existential_1(v8, v9);
  MEMORY[0x28223BE20](v1, v1);
  v3 = (&v8[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v4 + 16))(v3);
  v5 = sub_224AD5308(*v3, v0);
  result = __swift_destroy_boxed_opaque_existential_1(v8);
  qword_2813651F8 = v5;
  return result;
}

uint64_t sub_224AD3BE4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3438, &unk_224DB37F0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v8 - v4;
  v8[1] = *(v0 + 16);
  swift_allocObject();
  swift_weakInit();
  swift_allocObject();
  swift_weakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4A10, &unk_224DB4000);
  sub_224A33088(&qword_281350EE0, &qword_27D6F4A10, &unk_224DB4000, MEMORY[0x277CBCE20]);
  sub_224DAB3C8();

  sub_224A33088(&qword_2813513C0, &unk_27D6F3438, &unk_224DB37F0, MEMORY[0x277CBCB60]);
  v6 = sub_224DAB3A8();
  (*(v2 + 8))(v5, v1);
  return v6;
}

void sub_224AD3E30(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + 24);
    v4 = Strong;
    v5 = swift_allocObject();
    *(v5 + 16) = sub_224AD582C;
    *(v5 + 24) = v4;
    aBlock[4] = sub_224A8A838;
    aBlock[5] = v5;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_224A9B6F8;
    aBlock[3] = &block_descriptor_49;
    v6 = _Block_copy(aBlock);
    v7 = v3;

    dispatch_sync(v7, v6);

    _Block_release(v6);
    LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

    if (v6)
    {
      __break(1u);
    }
  }
}

double sub_224AD3FA4(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_224AD4528();
  }

  return result;
}

void sub_224AD3FFC(void *a1)
{
  v2 = sub_224DAB7B8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_224DAB848();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_224DAF558();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[14];
  if (v17 < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
LABEL_7:
    __break(1u);
    return;
  }

  a1[14] = v19;
  if (v19 == 1)
  {
    v20 = [objc_opt_self() sharedInstance];
    v27 = v3;
    v28 = v7;
    v21 = v20;
    sub_224DAF568();

    swift_allocObject();
    swift_weakInit();
    sub_224A80D98(&qword_281350980, MEMORY[0x277CC9DB0], MEMORY[0x277CC9DA8]);
    v22 = sub_224DAB488();

    (*(v13 + 8))(v16, v12);
    a1[15] = v22;

    v23 = a1[3];
    aBlock[4] = sub_224AD583C;
    aBlock[5] = a1;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_224A39F40;
    aBlock[3] = &block_descriptor_53;
    v24 = _Block_copy(aBlock);
    v25 = v23;

    sub_224DAB7E8();
    v29 = MEMORY[0x277D84F90];
    sub_224A80D98(&qword_281350ED0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
    sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0, MEMORY[0x277D83970]);
    sub_224DAF788();
    MEMORY[0x22AA5D760](0, v11, v6, v24);
    _Block_release(v24);

    (*(v27 + 8))(v6, v2);
    (*(v8 + 8))(v11, v28);
  }
}

double sub_224AD4454(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_224AD4860();
  }

  return result;
}

uint64_t sub_224AD44B4(void *a1)
{
  a1[6] = sub_224AD5604(&selRef_aa_primaryAppleAccount, "iCloudAccount: %{private}s");
  a1[7] = v2;

  a1[4] = sub_224AD5604(&selRef_ams_activeiTunesAccount, "iTunesAccount: %{private}s");
  a1[5] = v3;
}

double sub_224AD4528()
{
  v1 = sub_224DAB7B8();
  v15 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_224DAB848();
  v5 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v0 + 24);
  aBlock[4] = sub_224AD5814;
  v18 = v0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224A39F40;
  aBlock[3] = &block_descriptor_42;
  v10 = _Block_copy(aBlock);
  v11 = v9;

  sub_224DAB7E8();
  v16 = MEMORY[0x277D84F90];
  sub_224A80D98(&qword_281350ED0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
  sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0, MEMORY[0x277D83970]);
  sub_224DAF788();
  MEMORY[0x22AA5D760](0, v8, v4, v10);
  _Block_release(v10);

  (*(v15 + 8))(v4, v1);
  (*(v5 + 8))(v8, v14);

  return result;
}

void sub_224AD47E8(uint64_t a1)
{
  v1 = *(a1 + 112);
  v2 = v1 == 1;
  v3 = v1 < 1;
  v4 = v1 - 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(a1 + 112) = v4;
    if (v2 && *(a1 + 120))
    {

      sub_224DAB328();

      *(a1 + 120) = 0;
    }
  }
}

void sub_224AD4860()
{
  v1 = v0;
  v2 = sub_224DAB7B8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_224DAB848();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_224DA9388();
  if (!v12)
  {
    goto LABEL_10;
  }

  v13 = v12;
  v34 = sub_224DAEE18();
  v35 = v14;
  sub_224DAF8D8();
  if (!*(v13 + 16) || (v15 = sub_224B0B624(&aBlock), (v16 & 1) == 0))
  {

    sub_224AD52A4(&aBlock);
LABEL_10:
    v36 = 0u;
    v37 = 0u;
    goto LABEL_11;
  }

  sub_224A33E0C(*(v13 + 56) + 32 * v15, &v36);
  sub_224AD52A4(&aBlock);

  if (!*(&v37 + 1))
  {
LABEL_11:
    sub_224AD523C(&v36);
    return;
  }

  if (swift_dynamicCast())
  {
    v18 = aBlock;
    v17 = v29;
    if (v18 == sub_224DAEE18() && v17 == v19)
    {

LABEL_14:

      v20 = *(v1 + 24);
      v32 = sub_224AD5300;
      v33 = v1;
      aBlock = MEMORY[0x277D85DD0];
      v29 = 1107296256;
      v30 = sub_224A39F40;
      v31 = &block_descriptor_39;
      v27 = _Block_copy(&aBlock);
      v26 = v20;

      sub_224DAB7E8();
      *&v36 = MEMORY[0x277D84F90];
      sub_224A80D98(&qword_281350ED0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
      sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0, MEMORY[0x277D83970]);
LABEL_15:
      sub_224DAF788();
      v21 = v26;
      v22 = v27;
      MEMORY[0x22AA5D760](0, v11, v6, v27);
      _Block_release(v22);

      (*(v3 + 8))(v6, v2);
      (*(v8 + 8))(v11, v7);

      return;
    }

    LODWORD(v27) = sub_224DAFD88();

    if (v27)
    {
      goto LABEL_14;
    }

    if (v18 == sub_224DAEE18() && v17 == v23)
    {

LABEL_20:
      v25 = *(v1 + 24);
      v32 = sub_224AD52F8;
      v33 = v1;
      aBlock = MEMORY[0x277D85DD0];
      v29 = 1107296256;
      v30 = sub_224A39F40;
      v31 = &block_descriptor_3;
      v27 = _Block_copy(&aBlock);

      v26 = v25;
      sub_224DAB7E8();
      *&v36 = MEMORY[0x277D84F90];
      sub_224A80D98(&qword_281350ED0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
      sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0, MEMORY[0x277D83970]);
      goto LABEL_15;
    }

    v24 = sub_224DAFD88();

    if (v24)
    {
      goto LABEL_20;
    }
  }
}

double sub_224AD4DE8(void *a1)
{
  v3 = sub_224AD5604(&selRef_aa_primaryAppleAccount, "iCloudAccount: %{private}s");
  v5 = v2;
  v6 = a1[7];
  if (v6)
  {
    if (v2)
    {
      v7 = a1[6] == v3 && v6 == v2;
      if (v7 || (sub_224DAFD88() & 1) != 0)
      {

        return result;
      }
    }
  }

  else if (!v2)
  {
    return result;
  }

  a1[6] = v3;
  a1[7] = v5;

  if (qword_281351480 != -1)
  {
    swift_once();
  }

  v8 = sub_224DAB258();
  __swift_project_value_buffer(v8, qword_281364DF0);
  v9 = sub_224DAB228();
  v10 = sub_224DAF2A8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_224A2F000, v9, v10, "iCloud account changed", v11, 2u);
    MEMORY[0x22AA5EED0](v11, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4A10, &unk_224DB4000);
  sub_224A33088(&qword_281350EF0, &qword_27D6F4A10, &unk_224DB4000, MEMORY[0x277CBCE18]);
  sub_224DAB398();

  return result;
}

double sub_224AD4FCC(void *a1)
{
  v3 = sub_224AD5604(&selRef_ams_activeiTunesAccount, "iTunesAccount: %{private}s");
  v5 = v2;
  v6 = a1[5];
  if (v6)
  {
    if (v2)
    {
      v7 = a1[4] == v3 && v6 == v2;
      if (v7 || (sub_224DAFD88() & 1) != 0)
      {

        return result;
      }
    }
  }

  else if (!v2)
  {
    return result;
  }

  a1[4] = v3;
  a1[5] = v5;

  if (qword_281351480 != -1)
  {
    swift_once();
  }

  v8 = sub_224DAB258();
  __swift_project_value_buffer(v8, qword_281364DF0);
  v9 = sub_224DAB228();
  v10 = sub_224DAF2A8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_224A2F000, v9, v10, "iTunes account changed", v11, 2u);
    MEMORY[0x22AA5EED0](v11, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4A10, &unk_224DB4000);
  sub_224A33088(&qword_281350EF0, &qword_27D6F4A10, &unk_224DB4000, MEMORY[0x277CBCE18]);
  sub_224DAB398();

  return result;
}

uint64_t sub_224AD51B0()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 64));
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_224AD523C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4760, &unk_224DB3680);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *sub_224AD5308(uint64_t a1, uint64_t *a2)
{
  v4 = sub_224DAF3C8();
  v14 = *(v4 - 8);
  v15 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v13 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_224DAF318();
  MEMORY[0x28223BE20](v7, v8);
  v9 = sub_224DAB848();
  MEMORY[0x28223BE20](v9 - 8, v10);
  v18 = type metadata accessor for _AccountStoreImpl();
  v19 = &off_283829428;
  *&v17 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4A10, &unk_224DB4000);
  swift_allocObject();
  a2[2] = sub_224DAB358();
  v12 = sub_224AC319C();
  *(a2 + 2) = 0u;
  *(a2 + 3) = 0u;
  a2[14] = 0;
  a2[15] = 0;
  a2[13] = 0;
  sub_224DAFF38();
  sub_224DAB818();
  v16 = MEMORY[0x277D84F90];
  sub_224A80D98(&qword_281350A88, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3470, qword_224DB38B0);
  sub_224A33088(&qword_281350B90, &qword_27D6F3470, qword_224DB38B0, MEMORY[0x277D83970]);
  sub_224DAF788();
  (*(v14 + 104))(v13, *MEMORY[0x277D85268], v15);
  a2[3] = sub_224DAF418();
  sub_224A36F98(&v17, (a2 + 8));
  return a2;
}

uint64_t sub_224AD5604(SEL *a1, const char *a2, ...)
{
  v4 = [objc_opt_self() ams_sharedAccountStore];
  v5 = [v4 *a1];

  if (v5 && (v6 = [v5 identifier], v5, v6))
  {
    v7 = sub_224DAEE18();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  if (qword_281351480 != -1)
  {
    swift_once();
  }

  v10 = sub_224DAB258();
  __swift_project_value_buffer(v10, qword_281364DF0);

  v11 = sub_224DAB228();
  v12 = sub_224DAF278();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v19 = v14;
    *v13 = 136380675;
    if (v9)
    {
      v15 = v7;
    }

    else
    {
      v15 = 0x3E6C696E3CLL;
    }

    if (v9)
    {
      v16 = v9;
    }

    else
    {
      v16 = 0xE500000000000000;
    }

    v17 = sub_224A33F74(v15, v16, &v19);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_224A2F000, v11, v12, a2, v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x22AA5EED0](v14, -1, -1);
    MEMORY[0x22AA5EED0](v13, -1, -1);
  }

  return v7;
}

uint64_t sub_224AD5884()
{
  v10 = sub_224DAF3C8();
  v0 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v1);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_224DAF318();
  MEMORY[0x28223BE20](v4, v5);
  v6 = sub_224DAB848();
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9[1] = sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
  sub_224DAB7E8();
  v11 = MEMORY[0x277D84F90];
  sub_224A80DE0(&qword_281350A88, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3470, qword_224DB38B0);
  sub_224A9B6A0(&qword_281350B90, &qword_27D6F3470, qword_224DB38B0);
  sub_224DAF788();
  (*(v0 + 104))(v3, *MEMORY[0x277D85260], v10);
  result = sub_224DAF418();
  qword_28135B6E0 = result;
  return result;
}

uint64_t PushFoundation.KeepAliveTransaction.__allocating_init(reason:)(uint64_t a1, NSObject *a2)
{
  v4 = swift_allocObject();
  PushFoundation.KeepAliveTransaction.init(reason:)(a1, a2);
  return v4;
}

uint64_t sub_224AD5B48(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (*(result + 16))
  {
    v5 = result;

    v6 = sub_224DAB228();
    v7 = sub_224DAF2A8();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10 = v9;
      *v8 = 136446210;
      *(v8 + 4) = sub_224A33F74(a2, a3, &v10);
      _os_log_impl(&dword_224A2F000, v6, v7, "Dropping transaction for SIGTERM: %{public}s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x22AA5EED0](v9, -1, -1);
      MEMORY[0x22AA5EED0](v8, -1, -1);
    }

    byte_27D6F3448 = 1;
    *(v5 + 16) = 0;

    return swift_unknownObjectRelease();
  }

  return result;
}

double static PushFoundation.KeepAliveTransaction.with<A>(reason:_:)(uint64_t a1, NSObject *a2, void (*a3)(void))
{
  type metadata accessor for PushFoundation.KeepAliveTransaction(0);
  swift_allocObject();

  PushFoundation.KeepAliveTransaction.init(reason:)(a1, a2);
  a3();
  sub_224A9C084();

  return result;
}

char *PushFoundation.KeepAliveTransaction.deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtCO10ChronoCore14PushFoundation20KeepAliveTransaction_logger;
  v2 = sub_224DAB258();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_224AD5DB4(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_224AD5E28(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_224A33F74(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

char *sub_224AD5E84(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3450, &unk_224DB38A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

_BYTE **sub_224AD5F78(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void _s10ChronoCore14PushFoundationO20KeepAliveTransactionC9asyncTask6reason5queue5delay8wrappingySS_So012OS_dispatch_K0CSdyyycctFZ_0(char *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v43 = a4;
  v44 = a5;
  v45 = a3;
  v49 = a1;
  v8 = sub_224DAB7B8();
  v48 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_224DAB848();
  v46 = *(v12 - 8);
  v47 = v12;
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_224DAB798();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18);
  v20 = (&v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = sub_224DAB878();
  v41 = *(v21 - 8);
  v42 = v21;
  v23 = MEMORY[0x28223BE20](v21, v22);
  v25 = &v40 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v26);
  v28 = &v40 - v27;
  type metadata accessor for PushFoundation.KeepAliveTransaction(0);
  v29 = swift_allocObject();

  PushFoundation.KeepAliveTransaction.init(reason:)(v49, a2);
  if (a6 <= 0.0)
  {
    v37 = swift_allocObject();
    v38 = v44;
    v37[2] = v43;
    v37[3] = v38;
    v37[4] = v29;
    v55 = sub_224AD6750;
    v56 = v37;
    aBlock = MEMORY[0x277D85DD0];
    v52 = 1107296256;
    v53 = sub_224A39F40;
    v54 = &block_descriptor_29;
    v39 = _Block_copy(&aBlock);

    sub_224DAB7E8();
    v50 = MEMORY[0x277D84F90];
    sub_224A80DE0(&qword_281350ED0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
    sub_224A9B6A0(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0);
    sub_224DAF788();
    MEMORY[0x22AA5D760](0, v15, v11, v39);
    _Block_release(v39);

    (*(v48 + 8))(v11, v8);
    (*(v46 + 8))(v15, v47);
    goto LABEL_7;
  }

  v49 = v11;
  v30 = a6 * 1000.0;
  if (COERCE_UNSIGNED_INT64(a6 * 1000.0) >> 52 > 0x7FE)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v30 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v30 < 9.22337204e18)
  {
    v31 = v30;
    sub_224DAB858();
    *v20 = v31;
    (*(v17 + 104))(v20, *MEMORY[0x277D85178], v16);
    v40 = v28;
    sub_224DAB868();
    (*(v17 + 8))(v20, v16);
    v41 = *(v41 + 8);
    (v41)(v25, v42);
    v32 = swift_allocObject();
    v33 = v44;
    v32[2] = v43;
    v32[3] = v33;
    v32[4] = v29;
    v55 = sub_224AD67A8;
    v56 = v32;
    aBlock = MEMORY[0x277D85DD0];
    v52 = 1107296256;
    v53 = sub_224A39F40;
    v54 = &block_descriptor_35;
    v34 = _Block_copy(&aBlock);

    sub_224DAB7E8();
    v50 = MEMORY[0x277D84F90];
    sub_224A80DE0(&qword_281350ED0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
    sub_224A9B6A0(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0);
    v35 = v49;
    sub_224DAF788();
    v36 = v40;
    MEMORY[0x22AA5D6A0](v40, v15, v35, v34);
    _Block_release(v34);

    (*(v48 + 8))(v35, v8);
    (*(v46 + 8))(v15, v47);
    (v41)(v36, v42);
LABEL_7:

    return;
  }

LABEL_10:
  __break(1u);
}

uint64_t sub_224AD6650(uint64_t a1)
{
  result = sub_224DAB258();
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

uint64_t objectdestroy_25Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

double sub_224AD67C0(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 32);

  v3(a1, v4);

  return result;
}

uint64_t sub_224AD684C()
{
  v0 = sub_224DAB258();
  __swift_allocate_value_buffer(v0, qword_27D6F3478);
  __swift_project_value_buffer(v0, qword_27D6F3478);
  return sub_224DAB238();
}

uint64_t sub_224AD68CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F69F0, &unk_224DB3900);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_224AD698C(uint64_t a1, void *a2)
{
  v2 = a1;
  v16[1] = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_224DAF7E8();
    sub_224A3B79C(0, &unk_2813509D0, 0x277CFA378);
    sub_224A5D644(&qword_2813509C8, &unk_2813509D0, 0x277CFA378);
    sub_224DAF1F8();
    v2 = v16[2];
    v3 = v16[3];
    v4 = v16[4];
    v5 = v16[5];
    v6 = v16[6];
  }

  else
  {
    v5 = 0;
    v7 = -1 << *(a1 + 32);
    v3 = (a1 + 56);
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = (v9 & *(a1 + 56));
  }

  v10 = (v4 + 64) >> 6;
  if (v2 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v11 = v5;
    v12 = v6;
    v13 = v5;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v14 = (v12 - 1) & v12;
    v15 = *(*(v2 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v15)
    {
LABEL_18:
      sub_224A3B7E4(v2);
      return;
    }

    while (1)
    {
      sub_224A5E830(v16, v15, &unk_2813509D0, 0x277CFA378, &qword_27D6F3638, &qword_224DB3C10);

      v5 = v13;
      v6 = v14;
      if ((v2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_224DAF878())
      {
        sub_224A3B79C(0, &unk_2813509D0, 0x277CFA378);
        swift_dynamicCast();
        v15 = v16[0];
        v13 = v5;
        v14 = v6;
        if (v16[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v13 = (v11 + 1);
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      goto LABEL_18;
    }

    v12 = v3[v13];
    ++v11;
    if (v12)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_224AD6BD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(char *, char *))
{
  v31 = a4;
  v6 = a3(0);
  v7 = *(v6 - 8);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v15 = v30 - v14;
  result = MEMORY[0x28223BE20](v13, v16);
  v19 = v30 - v18;
  v20 = 0;
  v32 = a1;
  v33 = a2;
  v23 = *(a1 + 56);
  v22 = a1 + 56;
  v21 = v23;
  v24 = 1 << *(v22 - 24);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & v21;
  v27 = (v24 + 63) >> 6;
  v30[1] = v7 + 32;
  v30[2] = v7 + 16;
  v30[0] = v7 + 8;
  if ((v25 & v21) != 0)
  {
    do
    {
      v28 = v20;
LABEL_9:
      v29 = __clz(__rbit64(v26));
      v26 &= v26 - 1;
      (*(v7 + 16))(v19, *(v32 + 48) + *(v7 + 72) * (v29 | (v28 << 6)), v6);
      (*(v7 + 32))(v11, v19, v6);
      v31(v15, v11);
      result = (*(v7 + 8))(v15, v6);
    }

    while (v26);
  }

  while (1)
  {
    v28 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v28 >= v27)
    {

      return v33;
    }

    v26 = *(v22 + 8 * v28);
    ++v20;
    if (v26)
    {
      v20 = v28;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_224AD6E04(uint64_t a1)
{
  v3 = sub_224DA9688();
  v5 = MEMORY[0x28223BE20](v3, v4);
  v41 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v7);
  v10 = v34 - v9;
  v11 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v11)
  {
    v34[1] = v1;
    v47 = MEMORY[0x277D84F90];
    v42 = v8;
    sub_224ADA268(0, v11, 0);
    v13 = v42;
    v45 = a1 + 56;
    v46 = v47;
    result = sub_224DAF798();
    v14 = result;
    v15 = 0;
    v39 = v13 + 8;
    v40 = v13 + 16;
    v37 = a1;
    v38 = v13 + 32;
    v35 = a1 + 64;
    v36 = v11;
    while ((v14 & 0x8000000000000000) == 0 && v14 < 1 << *(a1 + 32))
    {
      v17 = v14 >> 6;
      if ((*(v45 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
      {
        goto LABEL_23;
      }

      v18 = *(a1 + 36);
      v43 = v15;
      v44 = v18;
      v19 = v10;
      v20 = *(v13 + 72);
      v21 = v41;
      (*(v13 + 16))(v41, *(a1 + 48) + v20 * v14, v3);
      sub_224DA9548();
      v13 = v42;
      (*(v42 + 8))(v21, v3);
      v22 = v46;
      v47 = v46;
      v24 = *(v46 + 16);
      v23 = *(v46 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_224ADA268((v23 > 1), v24 + 1, 1);
        v13 = v42;
        v22 = v47;
      }

      *(v22 + 16) = v24 + 1;
      v25 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      v46 = v22;
      v26 = v22 + v25 + v24 * v20;
      v10 = v19;
      result = (*(v13 + 32))(v26, v19, v3);
      a1 = v37;
      v16 = 1 << *(v37 + 32);
      if (v14 >= v16)
      {
        goto LABEL_24;
      }

      v27 = *(v45 + 8 * v17);
      if ((v27 & (1 << v14)) == 0)
      {
        goto LABEL_25;
      }

      if (v44 != *(v37 + 36))
      {
        goto LABEL_26;
      }

      v28 = v27 & (-2 << (v14 & 0x3F));
      if (v28)
      {
        v16 = __clz(__rbit64(v28)) | v14 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v29 = v17 << 6;
        v30 = v17 + 1;
        v31 = (v35 + 8 * v17);
        while (v30 < (v16 + 63) >> 6)
        {
          v33 = *v31++;
          v32 = v33;
          v29 += 64;
          ++v30;
          if (v33)
          {
            result = sub_224A3E204(v14, v44, 0);
            v16 = __clz(__rbit64(v32)) + v29;
            goto LABEL_19;
          }
        }

        result = sub_224A3E204(v14, v44, 0);
LABEL_19:
        v13 = v42;
      }

      v15 = v43 + 1;
      v14 = v16;
      if (v43 + 1 == v36)
      {
        return v46;
      }
    }

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

  return result;
}

void sub_224AD7178(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_224DAF538();
  v4 = sub_224A3CE84(&unk_2813509A0, MEMORY[0x277CFA140], MEMORY[0x277D85378]);
  v5 = 0;
  v13[1] = MEMORY[0x22AA5D540](v2, v3, v4);
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = v5;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v12 = *(*(a1 + 48) + ((v10 << 9) | (8 * v11)));
    sub_224A37578(v13, v12, MEMORY[0x277CFA140], &qword_27D6F3510, &qword_224DB3AA8, MEMORY[0x277CFA140]);
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v10 >= v9)
    {

      return;
    }

    v8 = *(a1 + 64 + 8 * v10);
    ++v5;
    if (v8)
    {
      v5 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_224AD7304(uint64_t a1)
{
  v2 = sub_224DAC268();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v5, v8);
  v11 = v28 - v10;
  MEMORY[0x28223BE20](v9, v12);
  v14 = v28 - v13;
  v15 = *(a1 + 16);
  v16 = sub_224A3CE84(&qword_281350E50, MEMORY[0x277CF9978], MEMORY[0x277CF9988]);
  result = MEMORY[0x22AA5D540](v15, v2, v16);
  v18 = 0;
  v29 = a1;
  v30 = result;
  v21 = *(a1 + 64);
  v20 = a1 + 64;
  v19 = v21;
  v22 = 1 << *(v20 - 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & v19;
  v25 = (v22 + 63) >> 6;
  v28[2] = v3 + 32;
  v28[3] = v3 + 16;
  v28[1] = v3 + 8;
  if ((v23 & v19) != 0)
  {
    do
    {
      v26 = v18;
LABEL_9:
      v27 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
      (*(v3 + 16))(v14, *(v29 + 48) + *(v3 + 72) * (v27 | (v26 << 6)), v2);
      (*(v3 + 32))(v7, v14, v2);
      sub_224ADCAF4(v11, v7);
      result = (*(v3 + 8))(v11, v2);
    }

    while (v24);
  }

  while (1)
  {
    v26 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v26 >= v25)
    {

      return v30;
    }

    v24 = *(v20 + 8 * v26);
    ++v18;
    if (v24)
    {
      v18 = v26;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_224AD7564()
{
  v1 = v0[9];
  v2 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 6, v1);
  v3 = (*(v2 + 8))(v1, v2);
  v4 = sub_224AD6E04(v3);

  v5 = sub_224AE9040(v4);

  return v5;
}

uint64_t sub_224AD75F4(uint64_t a1)
{
  v3 = sub_224DA9688();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (!*(v1 + 96))
  {
    return MEMORY[0x277D84FA0];
  }

  if (*(v1 + 96) == 1)
  {
    v9 = sub_224AD7844(a1);
    MEMORY[0x28223BE20](v9, v10);
    *&v22[-16] = a1;
    *&v22[-8] = v1;
    v12 = sub_224AD8940(sub_224AE91DC, &v22[-32], v11);
    v13 = sub_224AE9040(v12);

    return sub_224AD6BD8(v13, v9, MEMORY[0x277CC9260], sub_224ADB390);
  }

  else
  {
    v15 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3498, &unk_224DB3A00);
    v16 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_224DB3100;
    v18 = *(v1 + 72);
    v19 = *(v1 + 80);
    __swift_project_boxed_opaque_existential_1((v1 + 48), v18);
    (*(v19 + 8))(v18, v19);
    sub_224DA9548();
    v20 = *(v4 + 8);
    v20(v8, v15);
    v21 = sub_224AE9040(v17);
    swift_setDeallocating();
    v20((v17 + v16), v15);
    swift_deallocClassInstance();
    return v21;
  }
}

uint64_t sub_224AD7844(uint64_t a1)
{
  v2 = v1;
  v4 = v1[4];
  v5 = v1[5];
  __swift_project_boxed_opaque_existential_1(v1 + 1, v4);
  (*(v5 + 32))(v12, 768, v4, v5);
  if (*(&v13 + 1))
  {
    v14[1] = v12[1];
    v14[2] = v13;
    v14[0] = v12[0];
    if (*(*(&v13 + 1) + 16))
    {
      v6 = sub_224A79FA8(*(&v13 + 1));
      MEMORY[0x28223BE20](v6, v7);
      v11[2] = a1;
      v11[3] = v2;
      v8 = sub_224AD8B5C(sub_224AE9214, v11, v6, &qword_27D6F3498, &unk_224DB3A00, MEMORY[0x277CC9260], MEMORY[0x277CC9260]);

      v9 = sub_224AE9040(v8);

      sub_224A699F0(v14);
      return v9;
    }

    sub_224A699F0(v14);
  }

  else
  {
    sub_224A3311C(v12, &qword_27D6F50E0, &qword_224DB41A0);
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_224AD79C4@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = [*a1 widgets];
  sub_224A3B79C(0, &qword_2813508A0, 0x277CFA1E8);
  v8 = sub_224DAF008();

  v11[2] = a2;
  v11[3] = a3;
  v9 = sub_224AD7D38(sub_224AE9230, v11, v8);

  *a4 = v9;
  return result;
}

uint64_t sub_224AD7A90@<X0>(void **a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v25 = a3;
  v29 = a4;
  v6 = sub_224DA9688();
  v27 = *(v6 - 8);
  v28 = v6;
  result = MEMORY[0x28223BE20](v6, v7);
  v26 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a2;
  v11 = *(*a2 + 16);
  if (v11)
  {
    v12 = 0;
    v13 = *a1;
    v14 = v10 + 32;
    while (v12 < *(v10 + 16))
    {
      sub_224A3317C(v14, &v30);
      sub_224A3B79C(0, &qword_281350840, 0x277D82BB8);
      __swift_project_boxed_opaque_existential_1(&v30, v31);
      v15 = sub_224DAE338();
      v16 = [v13 widget];
      v17 = [v16 extensionIdentity];

      LOBYTE(v16) = sub_224DAF6A8();
      if (v16)
      {
        sub_224A36F98(&v30, v32);
        v22 = v25[10];
        __swift_project_boxed_opaque_existential_1(v25 + 6, v25[9]);
        v23 = [v13 widget];
        v24 = v26;
        (*(v22 + 16))();

        v20 = v29;
        sub_224DA9548();
        v21 = v27;
        v19 = v28;
        (*(v27 + 8))(v24, v28);
        v18 = 0;
        goto LABEL_8;
      }

      ++v12;
      result = __swift_destroy_boxed_opaque_existential_1(&v30);
      v14 += 40;
      if (v11 == v12)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:
    v33 = 0;
    memset(v32, 0, sizeof(v32));
    v18 = 1;
    v19 = v28;
    v20 = v29;
    v21 = v27;
LABEL_8:
    sub_224A3311C(v32, &unk_27D6F4700, &unk_224DB3A10);
    return (*(v21 + 56))(v20, v18, 1, v19);
  }

  return result;
}

void *sub_224AD7D38(void (*a1)(void), uint64_t a2, unint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4680, &unk_224DB4610);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v30 - v8;
  v10 = sub_224DA9688();
  v33 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10, v11);
  v39 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12, v14);
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
    v41 = MEMORY[0x277D84F90];
    v30 = a1;
    v31 = a3;
    v36 = i;
    while (1)
    {
      if (v38)
      {
        v15 = MEMORY[0x22AA5DCC0](v18, a3);
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
        v15 = sub_224A3311C(v9, &unk_27D6F4680, &unk_224DB4610);
      }

      else
      {
        v22 = *v34;
        v23 = v32;
        (*v34)(v32, v9, v21);
        v22(v39, v23, v21);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v41 = sub_224AD9DB4(0, v41[2] + 1, 1, v41, &qword_27D6F3498, &unk_224DB3A00, MEMORY[0x277CC9260]);
        }

        v25 = v41[2];
        v24 = v41[3];
        if (v25 >= v24 >> 1)
        {
          v41 = sub_224AD9DB4((v24 > 1), v25 + 1, 1, v41, &qword_27D6F3498, &unk_224DB3A00, MEMORY[0x277CC9260]);
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
    i = sub_224DAF838();
  }

  return MEMORY[0x277D84F90];
}

void *sub_224AD80E8(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v35 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4680, &unk_224DB4610);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v27 - v8;
  v10 = sub_224DA9688();
  v11 = *(v10 - 8);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v34 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v15);
  v31 = &v27 - v16;
  v17 = *(a3 + 16);
  if (!v17)
  {
    return MEMORY[0x277D84F90];
  }

  v18 = *(sub_224DAC268() - 8);
  v28 = v11;
  v32 = (v11 + 32);
  v33 = (v11 + 48);
  v19 = a3 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
  v20 = MEMORY[0x277D84F90];
  v21 = *(v18 + 72);
  v29 = v10;
  v30 = a1;
  v27 = v21;
  while (1)
  {
    a1(v19);
    if (v3)
    {
      break;
    }

    if ((*v33)(v9, 1, v10) == 1)
    {
      sub_224A3311C(v9, &unk_27D6F4680, &unk_224DB4610);
    }

    else
    {
      v22 = v31;
      v23 = *v32;
      (*v32)(v31);
      (v23)(v34, v22, v10);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_224AD9DB4(0, v20[2] + 1, 1, v20, &qword_27D6F3498, &unk_224DB3A00, MEMORY[0x277CC9260]);
      }

      v25 = v20[2];
      v24 = v20[3];
      if (v25 >= v24 >> 1)
      {
        v20 = sub_224AD9DB4((v24 > 1), v25 + 1, 1, v20, &qword_27D6F3498, &unk_224DB3A00, MEMORY[0x277CC9260]);
      }

      v20[2] = v25 + 1;
      v10 = v29;
      (v23)(v20 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v25, v34, v29);
      a1 = v30;
      v21 = v27;
    }

    v19 += v21;
    if (!--v17)
    {
      return v20;
    }
  }

  return v20;
}

uint64_t sub_224AD8458(void (*a1)(uint64_t *__return_ptr, id *), uint64_t a2, unint64_t a3)
{
  v15 = MEMORY[0x277D84F90];
  if (a3 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_224DAF838())
  {
    v6 = 0;
    v11 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x22AA5DCC0](v6, a3);
      }

      else
      {
        if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v7 = *(a3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v14 = v7;
      a1(&v13, &v14);
      if (v3)
      {

        return v11;
      }

      if (v13)
      {
        MEMORY[0x22AA5D350]();
        if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_224DAF038();
        }

        sub_224DAF078();
        v11 = v15;
      }

      ++v6;
      if (v9 == i)
      {
        return v11;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

void *sub_224AD8604(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v39 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6130, &unk_224DBB6A0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v30 - v8;
  v10 = sub_224DABE18();
  v12 = MEMORY[0x28223BE20](v10, v11);
  v38 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v14);
  v36 = &v30 - v16;
  v17 = *(a3 + 16);
  if (!v17)
  {
    return MEMORY[0x277D84F90];
  }

  v33 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v18 = a3 + v33;
  v19 = (v15 + 48);
  v37 = (v15 + 32);
  v40 = MEMORY[0x277D84F90];
  v20 = *(v15 + 72);
  v34 = v10;
  v35 = a1;
  v21 = a1;
  v31 = v9;
  v32 = (v15 + 48);
  while (1)
  {
    v22 = v21;
    v21(v18);
    if (v3)
    {
      break;
    }

    if ((*v19)(v9, 1, v10) == 1)
    {
      sub_224A3311C(v9, &unk_27D6F6130, &unk_224DBB6A0);
      v21 = v22;
    }

    else
    {
      v23 = v36;
      v24 = *v37;
      (*v37)(v36, v9, v10);
      v24(v38, v23, v10);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v40 = sub_224AD9DB4(0, v40[2] + 1, 1, v40, &qword_27D6F3598, &qword_224DB3B50, MEMORY[0x277CF98E0]);
      }

      v26 = v40[2];
      v25 = v40[3];
      v9 = v31;
      if (v26 >= v25 >> 1)
      {
        v40 = sub_224AD9DB4((v25 > 1), v26 + 1, 1, v40, &qword_27D6F3598, &qword_224DB3B50, MEMORY[0x277CF98E0]);
      }

      v27 = v40;
      v40[2] = v26 + 1;
      v28 = v27 + v33 + v26 * v20;
      v10 = v34;
      v24(v28, v38, v34);
      v21 = v35;
      v19 = v32;
    }

    v18 += v20;
    if (!--v17)
    {
      return v40;
    }
  }

  return v40;
}

void *sub_224AD8940(void *(*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v5 = a3 + 32;
  v6 = MEMORY[0x277D84F90];
  while (1)
  {
    result = (a1)(&v19, v5, a2);
    if (v3)
    {

      return v6;
    }

    v8 = v19;
    v9 = *(v19 + 16);
    v10 = v6[2];
    v11 = v10 + v9;
    if (__OFADD__(v10, v9))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v11 <= v6[3] >> 1)
    {
      if (*(v8 + 16))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v10 <= v11)
      {
        v13 = v10 + v9;
      }

      else
      {
        v13 = v10;
      }

      v6 = sub_224AD9DB4(isUniquelyReferenced_nonNull_native, v13, 1, v6, &qword_27D6F3498, &unk_224DB3A00, MEMORY[0x277CC9260]);
      if (*(v8 + 16))
      {
LABEL_15:
        v14 = (v6[3] >> 1) - v6[2];
        result = sub_224DA9688();
        if (v14 < v9)
        {
          goto LABEL_24;
        }

        swift_arrayInitWithCopy();

        if (v9)
        {
          v15 = v6[2];
          v16 = __OFADD__(v15, v9);
          v17 = v15 + v9;
          if (v16)
          {
            goto LABEL_25;
          }

          v6[2] = v17;
        }

        goto LABEL_4;
      }
    }

    if (v9)
    {
      goto LABEL_23;
    }

LABEL_4:
    v5 += 40;
    if (!--v4)
    {
      return v6;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

void *sub_224AD8B5C(void (*a1)(uint64_t *__return_ptr, id *), uint64_t a2, unint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  v8 = v7;
  v9 = a3;
  if (a3 >> 62)
  {
    goto LABEL_32;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_224DAF838())
  {
    v11 = 0;
    v30 = v9 & 0xFFFFFFFFFFFFFF8;
    v31 = v9 & 0xC000000000000001;
    v12 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v31)
      {
        v13 = MEMORY[0x22AA5DCC0](v11, v9);
      }

      else
      {
        if (v11 >= *(v30 + 16))
        {
          goto LABEL_27;
        }

        v13 = *(v9 + 8 * v11 + 32);
      }

      v14 = v13;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      v34 = v13;
      a1(&v33, &v34);
      if (v8)
      {

        return v12;
      }

      v15 = v11 + 1;
      v8 = v9;

      v16 = v33;
      v17 = *(v33 + 16);
      v9 = v12[2];
      v18 = v9 + v17;
      if (__OFADD__(v9, v17))
      {
        goto LABEL_28;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v18 <= v12[3] >> 1)
      {
        if (*(v16 + 16))
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v9 <= v18)
        {
          v20 = v9 + v17;
        }

        else
        {
          v20 = v9;
        }

        v12 = sub_224AD9DB4(isUniquelyReferenced_nonNull_native, v20, 1, v12, a4, a5, a6);
        if (*(v16 + 16))
        {
LABEL_20:
          v9 = v12[2];
          v21 = (v12[3] >> 1) - v9;
          a7(0);
          if (v21 < v17)
          {
            goto LABEL_30;
          }

          swift_arrayInitWithCopy();

          if (v17)
          {
            v22 = v12[2];
            v23 = __OFADD__(v22, v17);
            v24 = v22 + v17;
            if (v23)
            {
              goto LABEL_31;
            }

            v12[2] = v24;
          }

          goto LABEL_5;
        }
      }

      if (v17)
      {
        goto LABEL_29;
      }

LABEL_5:
      ++v11;
      v9 = v8;
      v8 = 0;
      if (v15 == i)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_224AD8DB8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  v9 = (*(v8 + 8))(v7, v8);
  v12[2] = a2;
  v12[3] = a3;
  v10 = sub_224AD7D38(sub_224AE91F8, v12, v9);

  *a4 = v10;
  return result;
}

uint64_t sub_224AD8E74@<X0>(void **a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v26 = a3;
  v29 = a4;
  v6 = sub_224DA9688();
  v27 = *(v6 - 8);
  v28 = v6;
  result = MEMORY[0x28223BE20](v6, v7);
  v25 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a2;
  v11 = *(*a2 + 16);
  if (v11)
  {
    v12 = 0;
    v13 = *a1;
    v14 = v10 + 32;
    while (v12 < *(v10 + 16))
    {
      sub_224A3317C(v14, &v30);
      sub_224A3B79C(0, &qword_281350840, 0x277D82BB8);
      __swift_project_boxed_opaque_existential_1(&v30, v31);
      v15 = sub_224DAE338();
      v16 = [v13 extensionIdentity];
      v17 = sub_224DAF6A8();

      if (v17)
      {
        sub_224A36F98(&v30, v32);
        v22 = v26[9];
        v23 = v26[10];
        __swift_project_boxed_opaque_existential_1(v26 + 6, v22);
        v24 = v25;
        (*(v23 + 16))(v13, v22, v23);
        v20 = v29;
        sub_224DA9548();
        v21 = v27;
        v19 = v28;
        (*(v27 + 8))(v24, v28);
        v18 = 0;
        goto LABEL_8;
      }

      ++v12;
      result = __swift_destroy_boxed_opaque_existential_1(&v30);
      v14 += 40;
      if (v11 == v12)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:
    v33 = 0;
    memset(v32, 0, sizeof(v32));
    v18 = 1;
    v19 = v28;
    v20 = v29;
    v21 = v27;
LABEL_8:
    sub_224A3311C(v32, &unk_27D6F4700, &unk_224DB3A10);
    return (*(v21 + 56))(v20, v18, 1, v19);
  }

  return result;
}

void sub_224AD90E8()
{
  v1 = [*v0 baseURL];
  sub_224DA9638();
}

void sub_224AD9148(uint64_t a1)
{
  v2 = [*v1 baseURLForWidget_];
  sub_224DA9638();
}

uint64_t sub_224AD91AC()
{
  v1 = [*v0 allCachedSnapshotURLs];
  sub_224DA9688();
  sub_224A3CE84(&qword_281351A80, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  v2 = sub_224DAF1B8();

  return v2;
}

char *sub_224AD92E0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3688, &qword_224DB3C60);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_224AD94BC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3648, &qword_224DB3C20);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 < a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_224AD9600(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3588, &unk_224DB3B40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3590, &qword_224DB5660);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_224AD9818(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3758, &qword_224DB3D30);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void *sub_224AD9A60(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

char *sub_224AD9C48(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F35C8, &qword_224DB3B98);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_224AD9DB4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_224AD9F90(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3A10, &unk_224DB3B80);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_224ADA0B0(void *a1, int64_t a2, char a3)
{
  result = sub_224A94AE0(a1, a2, a3, *v3, &qword_27D6F34F0, &qword_224DB3A88, MEMORY[0x277CF9A78]);
  *v3 = result;
  return result;
}

void *sub_224ADA0F4(void *a1, int64_t a2, char a3)
{
  result = sub_224A94AE0(a1, a2, a3, *v3, &qword_27D6F34F8, &qword_224DB3A90, MEMORY[0x277CF9E98]);
  *v3 = result;
  return result;
}

void *sub_224ADA138(void *a1, int64_t a2, char a3)
{
  result = sub_224A94AE0(a1, a2, a3, *v3, &qword_27D6F3730, &qword_224DB3D08, MEMORY[0x277CF9EF8]);
  *v3 = result;
  return result;
}

void *sub_224ADA17C(void *a1, int64_t a2, char a3)
{
  result = sub_224A94AE0(a1, a2, a3, *v3, &qword_27D6F3368, &qword_224DB3B10, MEMORY[0x277D46790]);
  *v3 = result;
  return result;
}

void *sub_224ADA1C0(void *a1, int64_t a2, char a3)
{
  result = sub_224A94AE0(a1, a2, a3, *v3, &qword_27D6F34B0, &unk_224DB3A38, MEMORY[0x277D46770]);
  *v3 = result;
  return result;
}

char *sub_224ADA204(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_224ADA7E4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_224ADA224(void *a1, int64_t a2, char a3)
{
  result = sub_224A94AE0(a1, a2, a3, *v3, &qword_27D6F3580, &qword_224DB94A0, MEMORY[0x277CF9978]);
  *v3 = result;
  return result;
}

void *sub_224ADA268(void *a1, int64_t a2, char a3)
{
  result = sub_224A94AE0(a1, a2, a3, *v3, &qword_27D6F3498, &unk_224DB3A00, MEMORY[0x277CC9260]);
  *v3 = result;
  return result;
}

void *sub_224ADA2AC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_224ADAC58(a1, a2, a3, *v3, &qword_27D6F35D0, &unk_224DB3BA0, &qword_27D6F3900, &unk_224DB4640);
  *v3 = result;
  return result;
}

void *sub_224ADA2EC(void *a1, int64_t a2, char a3)
{
  result = sub_224A94AE0(a1, a2, a3, *v3, &qword_27D6F3788, &qword_224DB3D68, MEMORY[0x277D46840]);
  *v3 = result;
  return result;
}

char *sub_224ADA330(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_224ADA8E8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_224ADA350(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_224ADAC58(a1, a2, a3, *v3, &qword_27D6F3548, &unk_224DB3AF0, &unk_27D6F56A0, &unk_224DB4150);
  *v3 = result;
  return result;
}

void *sub_224ADA390(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_224ADA9DC(a1, a2, a3, *v3, &qword_27D6F3500, &qword_224DB3A98, &qword_27D6F3508, &qword_224DB3AA0);
  *v3 = result;
  return result;
}

void *sub_224ADA3D0(void *a1, int64_t a2, char a3)
{
  result = sub_224A94AE0(a1, a2, a3, *v3, &qword_27D6F3BC0, &unk_224DB9C60, MEMORY[0x277CC95F0]);
  *v3 = result;
  return result;
}

void *sub_224ADA414(void *a1, int64_t a2, char a3)
{
  result = sub_224A94AE0(a1, a2, a3, *v3, &qword_27D6F34D0, &qword_224DB3A68, MEMORY[0x277CF9DE0]);
  *v3 = result;
  return result;
}

void *sub_224ADA458(void *a1, int64_t a2, char a3)
{
  result = sub_224A94AE0(a1, a2, a3, *v3, &qword_27D6F34C8, &qword_224DB3A60, MEMORY[0x277CF9D00]);
  *v3 = result;
  return result;
}

void *sub_224ADA49C(void *a1, int64_t a2, char a3)
{
  result = sub_224A94AE0(a1, a2, a3, *v3, &qword_27D6F3598, &qword_224DB3B50, MEMORY[0x277CF98E0]);
  *v3 = result;
  return result;
}

void *sub_224ADA4E0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_224ADA9DC(a1, a2, a3, *v3, &qword_27D6F3740, &qword_224DB3D18, &qword_27D6F3748, &qword_224DB3D20);
  *v3 = result;
  return result;
}

void *sub_224ADA520(void *a1, int64_t a2, char a3)
{
  result = sub_224A94AE0(a1, a2, a3, *v3, &qword_27D6F36A0, &qword_224DB3C78, MEMORY[0x277CF99B8]);
  *v3 = result;
  return result;
}

void *sub_224ADA564(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_224ADAC58(a1, a2, a3, *v3, &qword_27D6F3B90, &qword_224DB3CB8, &unk_27D6F30D0, &unk_224DB2AC0);
  *v3 = result;
  return result;
}

void *sub_224ADA5A4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_224ADAB24(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_224ADA5C4(void *a1, int64_t a2, char a3)
{
  result = sub_224A94AE0(a1, a2, a3, *v3, &qword_27D6F3750, &qword_224DB3D28, type metadata accessor for TimelineFilenameMigrator.Result);
  *v3 = result;
  return result;
}

void *sub_224ADA608(void *a1, int64_t a2, char a3)
{
  result = sub_224A94AE0(a1, a2, a3, *v3, &qword_27D6F3770, &qword_224DB3D50, MEMORY[0x277CF9880]);
  *v3 = result;
  return result;
}

void *sub_224ADA64C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_224ADAC58(a1, a2, a3, *v3, &qword_27D6F35E8, &qword_224DB3BC0, &unk_27D6F3920, &qword_224DB35B0);
  *v3 = result;
  return result;
}

void *sub_224ADA68C(void *a1, int64_t a2, char a3)
{
  result = sub_224A94AE0(a1, a2, a3, *v3, &qword_27D6F35B0, &qword_224DB3B68, MEMORY[0x277CB9350]);
  *v3 = result;
  return result;
}

void *sub_224ADA6D0(void *a1, int64_t a2, char a3)
{
  result = sub_224A94AE0(a1, a2, a3, *v3, &qword_27D6F36C0, qword_224DBC830, MEMORY[0x277CF9C18]);
  *v3 = result;
  return result;
}

void *sub_224ADA714(void *a1, int64_t a2, char a3)
{
  result = sub_224A94AE0(a1, a2, a3, *v3, &qword_27D6F3568, &qword_224DB3B20, MEMORY[0x277CF9D80]);
  *v3 = result;
  return result;
}

void *sub_224ADA758(void *a1, int64_t a2, char a3)
{
  result = sub_224A94AE0(a1, a2, a3, *v3, &qword_27D6F3550, &qword_224DB3B00, MEMORY[0x277D467E8]);
  *v3 = result;
  return result;
}

char *sub_224ADA79C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_224ADAE40(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_224ADA7E4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F34D8, &unk_224DB3A70);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_224ADA8E8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3790, &unk_224DB3D70);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void *sub_224ADA9DC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_224ADAB24(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F36F0, &unk_224DB3CC0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5620, &unk_224DB3350);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_224ADAC58(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

char *sub_224ADAE40(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3A10, &unk_224DB3B80);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}