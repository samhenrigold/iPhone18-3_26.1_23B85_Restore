uint64_t sub_20DAA59DC()
{
  v1 = sub_20DD64C44();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280E01ED8 != -1)
  {
    swift_once();
  }

  v5 = qword_280E03EB0;
  sub_20DD64C54();
  v6 = v0;
  v7 = sub_20DD64C24();
  v8 = sub_20DD65384();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109120;
    v10 = OBJC_IVAR____TtC4Home19HFHomeEnergyManager_hasElectricityRatesEnabled;
    swift_beginAccess();
    *(v9 + 4) = *(&v6->isa + v10);

    _os_log_impl(&dword_20D9BF000, v7, v8, "hasElectricityRatesEnabled: %{BOOL}d", v9, 8u);
    MEMORY[0x20F327D10](v9, -1, -1);
  }

  else
  {

    v7 = v6;
  }

  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_20DAA5BC0()
{
  if (sub_20DAA4D14())
  {
    sub_20D9FF4D0(v0[8] + OBJC_IVAR____TtC4Home19HFHomeEnergyManager_utilityService, (v0 + 2));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843FC0, &qword_20DD945E8);
    type metadata accessor for RealUtilityServices();
    if (swift_dynamicCast())
    {

      v1 = swift_task_alloc();
      v0[10] = v1;
      *v1 = v0;
      v1[1] = sub_20DAA5F84;

      return sub_20DAA6078();
    }

    else
    {
      v4 = v0[1];

      return v4();
    }
  }

  else
  {
    v3 = swift_task_alloc();
    v0[9] = v3;
    *v3 = v0;
    v3[1] = sub_20DAA5D50;

    return sub_20DAA9C7C();
  }
}

uint64_t sub_20DAA5D50(char a1)
{
  *(*v1 + 88) = a1;

  return MEMORY[0x2822009F8](sub_20DAA5E50, 0, 0);
}

uint64_t sub_20DAA5E50()
{
  if (*(v0 + 88) == 1 && (sub_20DAA4D74(1), sub_20D9FF4D0(*(v0 + 64) + OBJC_IVAR____TtC4Home19HFHomeEnergyManager_utilityService, v0 + 16), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843FC0, &qword_20DD945E8), type metadata accessor for RealUtilityServices(), swift_dynamicCast()))
  {

    v1 = swift_task_alloc();
    *(v0 + 80) = v1;
    *v1 = v0;
    v1[1] = sub_20DAA5F84;

    return sub_20DAA6078();
  }

  else
  {
    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_20DAA5F84()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_20DAA6078()
{
  v1[25] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844500, &qword_20DD97000);
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v2 = sub_20DD64C44();
  v1[28] = v2;
  v1[29] = *(v2 - 8);
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v3 = sub_20DD63744();
  v1[38] = v3;
  v1[39] = *(v3 - 8);
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DAA6238, 0, 0);
}

uint64_t sub_20DAA6238()
{
  v1 = v0[41];
  v2 = v0[38];
  v3 = v0[39];
  v4 = *(v0[25] + OBJC_IVAR____TtC4Home19HFHomeEnergyManager_home);
  v0[42] = v4;
  v5 = [v4 name];
  v6 = sub_20DD64EB4();
  v8 = v7;

  v0[43] = v6;
  v0[44] = v8;
  v9 = [v4 uniqueIdentifier];
  sub_20DD63714();

  v10 = sub_20DD636E4();
  v12 = v11;
  v0[45] = v10;
  v0[46] = v11;
  v13 = *(v3 + 8);
  v0[47] = v13;
  v0[48] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v1, v2);
  v0[49] = sub_20DD64AE4();

  v14 = swift_task_alloc();
  v0[50] = v14;
  *v14 = v0;
  v14[1] = sub_20DAA63AC;

  return MEMORY[0x28215C940](v10, v12);
}

uint64_t sub_20DAA63AC(uint64_t a1)
{
  *(*v1 + 408) = a1;

  return MEMORY[0x2822009F8](sub_20DAA64AC, 0, 0);
}

uint64_t sub_20DAA64AC()
{
  v44 = v0;
  if (*(v0 + 408))
  {

    *(v0 + 456) = *(v0 + 408);
    v1 = *(v0 + 200);
    v2 = OBJC_IVAR____TtC4Home19HFHomeEnergyManager_cachedHasEnergySite;
    swift_beginAccess();
    *(v1 + v2) = 1;
    LOBYTE(v2) = sub_20DD64AA4();
    v3 = OBJC_IVAR____TtC4Home19HFHomeEnergyManager_hasElectricityRatesEnabled;
    swift_beginAccess();
    *(v1 + v3) = v2 & 1;
    if (qword_280E01ED8 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 200);
    v5 = qword_280E03EB0;
    *(v0 + 464) = qword_280E03EB0;
    v6 = v5;
    sub_20DD64C54();
    v7 = v4;
    v8 = sub_20DD64C24();
    v9 = sub_20DD65384();
    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 200);
    if (v10)
    {
      v12 = swift_slowAlloc();
      *v12 = 67109120;
      *(v12 + 4) = *(v1 + v3);

      _os_log_impl(&dword_20D9BF000, v8, v9, "hasElectricityRatesEnabled: %{BOOL}d", v12, 8u);
      MEMORY[0x20F327D10](v12, -1, -1);
    }

    else
    {
    }

    v18 = *(v0 + 280);
    v19 = *(v0 + 224);
    v20 = *(v0 + 232);
    v21 = *(v20 + 8);
    *(v0 + 472) = v21;
    *(v0 + 480) = (v20 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v21(v18, v19);
    sub_20DD64A94();
    v23 = v22;
    if (v22)
    {
    }

    v24 = swift_task_alloc();
    *(v0 + 488) = v24;
    *v24 = v0;
    v24[1] = sub_20DAA7224;

    return sub_20DAA53D0(v23 != 0);
  }

  else if ([*(v0 + 336) hf_currentUserIsOwner])
  {
    v13 = swift_task_alloc();
    *(v0 + 416) = v13;
    *v13 = v0;
    v13[1] = sub_20DAA69CC;
    v14 = *(v0 + 360);
    v15 = *(v0 + 368);
    v17 = *(v0 + 344);
    v16 = *(v0 + 352);

    return MEMORY[0x28215C858](v17, v16, v14, v15);
  }

  else
  {

    v25 = sub_20DD64A14();
    v27 = v26;

    *(v0 + 432) = v27;
    if (qword_280E01ED8 != -1)
    {
      swift_once();
    }

    v28 = qword_280E03EB0;
    sub_20DD64C54();
    v29 = sub_20DD64C24();
    v30 = sub_20DD65344();
    v31 = os_log_type_enabled(v29, v30);
    v32 = *(v0 + 288);
    v33 = *(v0 + 224);
    v34 = *(v0 + 232);
    if (v31)
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v43 = v36;
      *v35 = 136315138;
      *(v35 + 4) = sub_20D9E0B38(0xD000000000000011, 0x800000020DD9B490, &v43);
      _os_log_impl(&dword_20D9BF000, v29, v30, "%s Attempting to request to be added to EnergyKit share if needed", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v36);
      MEMORY[0x20F327D10](v36, -1, -1);
      MEMORY[0x20F327D10](v35, -1, -1);
    }

    (*(v34 + 8))(v32, v33);
    v37 = *(v0 + 336);
    sub_20DD649F4();
    *(v0 + 440) = sub_20DD649E4();
    v38 = [v37 uniqueIdentifier];
    sub_20DD63714();

    v42 = (*MEMORY[0x277D07590] + MEMORY[0x277D07590]);
    v39 = swift_task_alloc();
    *(v0 + 448) = v39;
    *v39 = v0;
    v39[1] = sub_20DAA6F90;
    v40 = *(v0 + 320);

    return v42(v40, v25, v27);
  }
}

uint64_t sub_20DAA69CC(uint64_t a1)
{
  *(*v1 + 424) = a1;

  return MEMORY[0x2822009F8](sub_20DAA6AEC, 0, 0);
}

uint64_t sub_20DAA6AEC()
{
  v39 = v0;
  v1 = v0[53];
  if (v1)
  {
    v0[57] = v1;
    v2 = v0[25];
    v3 = OBJC_IVAR____TtC4Home19HFHomeEnergyManager_cachedHasEnergySite;
    swift_beginAccess();
    *(v2 + v3) = 1;
    LOBYTE(v3) = sub_20DD64AA4();
    v4 = OBJC_IVAR____TtC4Home19HFHomeEnergyManager_hasElectricityRatesEnabled;
    swift_beginAccess();
    *(v2 + v4) = v3 & 1;
    if (qword_280E01ED8 != -1)
    {
      swift_once();
    }

    v5 = v0[25];
    v6 = qword_280E03EB0;
    v0[58] = qword_280E03EB0;
    v7 = v6;
    sub_20DD64C54();
    v8 = v5;
    v9 = sub_20DD64C24();
    v10 = sub_20DD65384();
    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[25];
    if (v11)
    {
      v13 = swift_slowAlloc();
      *v13 = 67109120;
      *(v13 + 4) = *(v2 + v4);

      _os_log_impl(&dword_20D9BF000, v9, v10, "hasElectricityRatesEnabled: %{BOOL}d", v13, 8u);
      MEMORY[0x20F327D10](v13, -1, -1);
    }

    else
    {
    }

    v26 = v0[35];
    v27 = v0[28];
    v28 = v0[29];
    v29 = *(v28 + 8);
    v0[59] = v29;
    v0[60] = (v28 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v29(v26, v27);
    sub_20DD64A94();
    v31 = v30;
    if (v30)
    {
    }

    v32 = swift_task_alloc();
    v0[61] = v32;
    *v32 = v0;
    v32[1] = sub_20DAA7224;

    return sub_20DAA53D0(v31 != 0);
  }

  else
  {
    if (qword_280E01ED8 != -1)
    {
      swift_once();
    }

    v14 = qword_280E03EB0;
    sub_20DD64C54();

    v15 = sub_20DD64C24();
    v16 = sub_20DD65364();

    v17 = os_log_type_enabled(v15, v16);
    v18 = v0[44];
    if (v17)
    {
      v19 = v0[43];
      v20 = v0[37];
      v21 = v0[28];
      v22 = v0[29];
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v38 = v24;
      *v23 = 136315394;
      *(v23 + 4) = sub_20D9E0B38(0xD000000000000011, 0x800000020DD9B490, &v38);
      *(v23 + 12) = 2080;
      v25 = sub_20D9E0B38(v19, v18, &v38);

      *(v23 + 14) = v25;
      _os_log_impl(&dword_20D9BF000, v15, v16, "%s Failed to create site for home %s", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F327D10](v24, -1, -1);
      MEMORY[0x20F327D10](v23, -1, -1);

      (*(v22 + 8))(v20, v21);
    }

    else
    {
      v34 = v0[37];
      v35 = v0[28];
      v36 = v0[29];

      (*(v36 + 8))(v34, v35);
    }

    v37 = v0[1];

    return v37();
  }
}

uint64_t sub_20DAA6F90()
{
  v2 = *v1;
  v3 = *v1;

  v4 = v2[47];
  v5 = v2[40];
  v6 = v2[38];
  if (v0)
  {

    v4(v5, v6);

    return MEMORY[0x2822009F8](sub_20DAA8288, 0, 0);
  }

  else
  {
    v4(v2[40], v2[38]);

    v7 = v3[1];

    return v7();
  }
}

uint64_t sub_20DAA7224()
{

  return MEMORY[0x2822009F8](sub_20DAA7320, 0, 0);
}

uint64_t sub_20DAA7320()
{
  v36 = v0;
  if (![*(v0 + 336) hf_currentUserIsOwner])
  {
    goto LABEL_8;
  }

  v1 = *(v0 + 336);

  sub_20DD64AB4();
  v2 = [v1 location];
  *(v0 + 496) = v2;
  if (v2)
  {
    v3 = v2;
    v4 = *(v0 + 464);

    v5 = v4;
    sub_20DD64C54();
    v6 = sub_20DD64C24();
    v7 = sub_20DD65354();
    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 472);
    v10 = *(v0 + 272);
    v11 = *(v0 + 224);
    if (v8)
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v35 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_20D9E0B38(0xD000000000000011, 0x800000020DD9B490, &v35);
      _os_log_impl(&dword_20D9BF000, v6, v7, "%s Updating site's location", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x20F327D10](v13, -1, -1);
      MEMORY[0x20F327D10](v12, -1, -1);
    }

    v9(v10, v11);
    v33 = (*MEMORY[0x277D07640] + MEMORY[0x277D07640]);
    v14 = swift_task_alloc();
    *(v0 + 504) = v14;
    *v14 = v0;
    v14[1] = sub_20DAA77A4;

    return v33(v3);
  }

  v17 = sub_20DD64AC4();
  if (v17)
  {
    v18 = *(v0 + 464);

    v19 = v18;
    sub_20DD64C54();

    v20 = sub_20DD64C24();
    v21 = sub_20DD65364();

    v22 = os_log_type_enabled(v20, v21);
    v23 = *(v0 + 472);
    v24 = *(v0 + 352);
    if (v22)
    {
      v25 = *(v0 + 344);
      v32 = *(v0 + 224);
      v34 = *(v0 + 248);
      v26 = swift_slowAlloc();
      v27 = v23;
      v28 = swift_slowAlloc();
      v35 = v28;
      *v26 = 136315394;
      *(v26 + 4) = sub_20D9E0B38(0xD000000000000011, 0x800000020DD9B490, &v35);
      *(v26 + 12) = 2080;
      v29 = sub_20D9E0B38(v25, v24, &v35);

      *(v26 + 14) = v29;
      _os_log_impl(&dword_20D9BF000, v20, v21, "%s have site.location BUT home.location is nil for home %s", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F327D10](v28, -1, -1);
      MEMORY[0x20F327D10](v26, -1, -1);

      v27(v34, v32);
    }

    else
    {
      v30 = *(v0 + 248);
      v31 = *(v0 + 224);

      v23(v30, v31);
    }
  }

  else
  {
LABEL_8:
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_20DAA77A4()
{
  *(*v1 + 512) = v0;

  if (v0)
  {
    v2 = sub_20DAA8378;
  }

  else
  {
    v2 = sub_20DAA78B8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20DAA78B8()
{
  v15 = v0;
  v1 = *(v0 + 464);
  sub_20DD64C54();
  v2 = sub_20DD64C24();
  v3 = sub_20DD65354();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 472);
  v6 = *(v0 + 264);
  v7 = *(v0 + 224);
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_20D9E0B38(0xD000000000000011, 0x800000020DD9B490, &v14);
    _os_log_impl(&dword_20D9BF000, v2, v3, "%s Updating site's timezone", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x20F327D10](v9, -1, -1);
    MEMORY[0x20F327D10](v8, -1, -1);
  }

  v5(v6, v7);
  v10 = *(v0 + 496);
  v11 = [objc_allocWithZone(MEMORY[0x277CBFBE8]) init];
  *(v0 + 520) = v11;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 192;
  *(v0 + 24) = sub_20DAA7AFC;
  v12 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8453B0, &qword_20DD97008);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_20DAA8B70;
  *(v0 + 104) = &block_descriptor_18;
  *(v0 + 112) = v12;
  [v11 reverseGeocodeLocation:v10 completionHandler:v0 + 80];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_20DAA7AFC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 528) = v1;
  if (v1)
  {
    v2 = sub_20DAA8618;
  }

  else
  {
    v2 = sub_20DAA7C0C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20DAA7C0C()
{
  v29 = v0;
  v1 = *(v0 + 192);

  if (!(v1 >> 62))
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_15:

    goto LABEL_16;
  }

  result = sub_20DD655B4();
  if (!result)
  {
    goto LABEL_15;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x20F326680](0, v1);
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v1 + 32);
  }

  v4 = v3;

  v5 = [v4 timeZone];

  if (v5)
  {
    sub_20DD63824();

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v8 = *(v0 + 208);
  v7 = *(v0 + 216);
  v9 = sub_20DD63834();
  v10 = *(v9 - 8);
  (*(v10 + 56))(v8, v6, 1, v9);
  sub_20DAB5454(v8, v7);
  if ((*(v10 + 48))(v7, 1, v9) == 1)
  {
    sub_20D9D76EC(*(v0 + 216), &qword_27C844500, &qword_20DD97000);
LABEL_16:
    v16 = *(v0 + 464);
    sub_20DD64C54();
    v17 = sub_20DD64C24();
    v18 = sub_20DD65364();
    v19 = os_log_type_enabled(v17, v18);
    v20 = *(v0 + 496);
    v21 = *(v0 + 472);
    v22 = *(v0 + 256);
    v23 = *(v0 + 224);
    if (v19)
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v28 = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_20D9E0B38(0xD000000000000011, 0x800000020DD9B490, &v28);
      _os_log_impl(&dword_20D9BF000, v17, v18, "%s Unable to get timezone", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x20F327D10](v25, -1, -1);
      MEMORY[0x20F327D10](v24, -1, -1);

      v21(v22, v23);
    }

    else
    {

      v21(v22, v23);
    }

    v26 = *(v0 + 8);

    return v26();
  }

  v11 = *(v0 + 216);
  v12 = sub_20DD63804();
  v14 = v13;
  *(v0 + 536) = v13;
  (*(v10 + 8))(v11, v9);
  v27 = (*MEMORY[0x277D07648] + MEMORY[0x277D07648]);
  v15 = swift_task_alloc();
  *(v0 + 544) = v15;
  *v15 = v0;
  v15[1] = sub_20DAA8068;

  return v27(v12, v14);
}

uint64_t sub_20DAA8068()
{
  *(*v1 + 552) = v0;

  if (v0)
  {
    v2 = sub_20DAA88C8;
  }

  else
  {

    v2 = sub_20DAA8184;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20DAA8184()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20DAA8288()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20DAA8378()
{
  v21 = v0;
  v1 = *(v0 + 512);
  v2 = *(v0 + 464);
  sub_20DD64C54();
  v3 = v1;
  v4 = sub_20DD64C24();
  v5 = sub_20DD65364();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 496);
  v8 = *(v0 + 472);
  v9 = *(v0 + 240);
  v10 = *(v0 + 224);
  if (v6)
  {
    v11 = swift_slowAlloc();
    v19 = v9;
    v12 = swift_slowAlloc();
    v18 = v8;
    v13 = swift_slowAlloc();
    v20 = v13;
    *v11 = 136315394;
    *(v11 + 4) = sub_20D9E0B38(0xD000000000000011, 0x800000020DD9B490, &v20);
    *(v11 + 12) = 2112;
    v14 = v1;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v15;
    *v12 = v15;
    _os_log_impl(&dword_20D9BF000, v4, v5, "%s Unable to update location. Error: %@", v11, 0x16u);
    sub_20D9D76EC(v12, &unk_27C843630, &qword_20DD94080);
    MEMORY[0x20F327D10](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x20F327D10](v13, -1, -1);
    MEMORY[0x20F327D10](v11, -1, -1);

    v18(v19, v10);
  }

  else
  {

    v8(v9, v10);
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_20DAA8618(uint64_t a1)
{
  v23 = v1;
  v2 = *(v1 + 520);
  swift_willThrow();

  v3 = *(v1 + 528);
  v4 = *(v1 + 464);
  sub_20DD64C54();
  v5 = v3;
  v6 = sub_20DD64C24();
  v7 = sub_20DD65364();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v1 + 496);
  v10 = *(v1 + 472);
  v11 = *(v1 + 240);
  v12 = *(v1 + 224);
  if (v8)
  {
    v13 = swift_slowAlloc();
    v21 = v11;
    v14 = swift_slowAlloc();
    v20 = v10;
    v15 = swift_slowAlloc();
    v22 = v15;
    *v13 = 136315394;
    *(v13 + 4) = sub_20D9E0B38(0xD000000000000011, 0x800000020DD9B490, &v22);
    *(v13 + 12) = 2112;
    v16 = v3;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v17;
    *v14 = v17;
    _os_log_impl(&dword_20D9BF000, v6, v7, "%s Unable to update location. Error: %@", v13, 0x16u);
    sub_20D9D76EC(v14, &unk_27C843630, &qword_20DD94080);
    MEMORY[0x20F327D10](v14, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x20F327D10](v15, -1, -1);
    MEMORY[0x20F327D10](v13, -1, -1);

    v20(v21, v12);
  }

  else
  {

    v10(v11, v12);
  }

  v18 = *(v1 + 8);

  return v18();
}

uint64_t sub_20DAA88C8()
{
  v21 = v0;

  v1 = *(v0 + 552);
  v2 = *(v0 + 464);
  sub_20DD64C54();
  v3 = v1;
  v4 = sub_20DD64C24();
  v5 = sub_20DD65364();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 496);
  v8 = *(v0 + 472);
  v9 = *(v0 + 240);
  v10 = *(v0 + 224);
  if (v6)
  {
    v11 = swift_slowAlloc();
    v19 = v9;
    v12 = swift_slowAlloc();
    v18 = v8;
    v13 = swift_slowAlloc();
    v20 = v13;
    *v11 = 136315394;
    *(v11 + 4) = sub_20D9E0B38(0xD000000000000011, 0x800000020DD9B490, &v20);
    *(v11 + 12) = 2112;
    v14 = v1;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v15;
    *v12 = v15;
    _os_log_impl(&dword_20D9BF000, v4, v5, "%s Unable to update location. Error: %@", v11, 0x16u);
    sub_20D9D76EC(v12, &unk_27C843630, &qword_20DD94080);
    MEMORY[0x20F327D10](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x20F327D10](v13, -1, -1);
    MEMORY[0x20F327D10](v11, -1, -1);

    v18(v19, v10);
  }

  else
  {

    v8(v9, v10);
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_20DAA8B70(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443A0, &qword_20DD94E00);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    sub_20D9D7510(0, &qword_27C8453B8, 0x277CBFC40);
    **(*(v4 + 64) + 40) = sub_20DD64FD4();

    return MEMORY[0x282200950](v4);
  }
}

uint64_t sub_20DAA8C60(char a1)
{
  *(v2 + 40) = v1;
  *(v2 + 184) = a1;
  v3 = sub_20DD63744();
  *(v2 + 48) = v3;
  *(v2 + 56) = *(v3 - 8);
  *(v2 + 64) = swift_task_alloc();
  v4 = sub_20DD64C44();
  *(v2 + 72) = v4;
  *(v2 + 80) = *(v4 - 8);
  *(v2 + 88) = swift_task_alloc();
  *(v2 + 96) = swift_task_alloc();
  *(v2 + 104) = swift_task_alloc();
  *(v2 + 112) = swift_task_alloc();
  *(v2 + 120) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DAA8DB0, 0, 0);
}

uint64_t sub_20DAA8DB0()
{
  v36 = v0;
  v1 = *(v0 + 40);
  v2 = *(v0 + 184);
  v3 = OBJC_IVAR____TtC4Home19HFHomeEnergyManager_hasElectricityRatesEnabled;
  *(v0 + 128) = OBJC_IVAR____TtC4Home19HFHomeEnergyManager_hasElectricityRatesEnabled;
  swift_beginAccess();
  if (v2 != *(v1 + v3))
  {
    if (qword_280E01ED8 != -1)
    {
      swift_once();
    }

    v4 = qword_280E03EB0;
    *(v0 + 136) = qword_280E03EB0;
    v5 = v4;
    sub_20DD64C54();
    v6 = sub_20DD64C24();
    v7 = sub_20DD65384();
    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 120);
    v10 = *(v0 + 72);
    v11 = *(v0 + 80);
    if (v8)
    {
      v12 = *(v0 + 184);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v35 = v14;
      *v13 = 136315394;
      *(v13 + 4) = sub_20D9E0B38(0xD000000000000021, 0x800000020DD9ADC0, &v35);
      *(v13 + 12) = 1024;
      *(v13 + 14) = v12;
      _os_log_impl(&dword_20D9BF000, v6, v7, "%s to %{BOOL}d", v13, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x20F327D10](v14, -1, -1);
      MEMORY[0x20F327D10](v13, -1, -1);
    }

    v15 = *(v11 + 8);
    v15(v9, v10);
    *(v0 + 144) = v15;
    v16 = *(*(v0 + 40) + OBJC_IVAR____TtC4Home19HFHomeEnergyManager_home);
    if ([v16 hf_currentUserIsOwner])
    {
      v18 = *(v0 + 56);
      v17 = *(v0 + 64);
      v19 = *(v0 + 48);
      sub_20DD64AE4();
      v20 = [v16 uniqueIdentifier];
      sub_20DD63714();

      v21 = sub_20DD636E4();
      v23 = v22;
      (*(v18 + 8))(v17, v19);
      v24 = swift_task_alloc();
      *(v0 + 152) = v24;
      *v24 = v0;
      v24[1] = sub_20DAA91E4;

      return MEMORY[0x28215C940](v21, v23);
    }

    v25 = v5;
    sub_20DD64C54();
    v26 = sub_20DD64C24();
    v27 = sub_20DD65364();
    v28 = os_log_type_enabled(v26, v27);
    v29 = *(v0 + 96);
    v30 = *(v0 + 72);
    if (v28)
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v35 = v32;
      *v31 = 136315138;
      *(v31 + 4) = sub_20D9E0B38(0xD000000000000021, 0x800000020DD9ADC0, &v35);
      _os_log_impl(&dword_20D9BF000, v26, v27, "%s User is not home owner", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x20F327D10](v32, -1, -1);
      MEMORY[0x20F327D10](v31, -1, -1);
    }

    v15(v29, v30);
  }

  v33 = *(v0 + 8);

  return v33(0);
}

uint64_t sub_20DAA91E4(uint64_t a1)
{
  *(*v1 + 160) = a1;

  return MEMORY[0x2822009F8](sub_20DAA92E4, 0, 0);
}

uint64_t sub_20DAA92E4()
{
  v16 = v0;
  if (*(v0 + 160))
  {
    v14 = (*MEMORY[0x277D07678] + MEMORY[0x277D07678]);
    v1 = swift_task_alloc();
    *(v0 + 168) = v1;
    *v1 = v0;
    v1[1] = sub_20DAA9530;
    v2 = *(v0 + 184);

    return v14(v2);
  }

  else
  {
    v4 = *(v0 + 136);
    sub_20DD64C54();
    v5 = sub_20DD64C24();
    v6 = sub_20DD65364();
    v7 = os_log_type_enabled(v5, v6);
    v8 = *(v0 + 144);
    v9 = *(v0 + 104);
    v10 = *(v0 + 72);
    if (v7)
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v15 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_20D9E0B38(0xD000000000000021, 0x800000020DD9ADC0, &v15);
      _os_log_impl(&dword_20D9BF000, v5, v6, "%s Couldn't find EnergySite", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x20F327D10](v12, -1, -1);
      MEMORY[0x20F327D10](v11, -1, -1);
    }

    v8(v9, v10);

    v13 = *(v0 + 8);

    return v13(0);
  }
}

uint64_t sub_20DAA9530()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_20DAA97CC;
  }

  else
  {
    v2 = sub_20DAA9644;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20DAA9644()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 40);
  v2[*(v0 + 128)] = *(v0 + 184);
  v3 = v1;
  sub_20DD64C54();
  v4 = v2;
  v5 = sub_20DD64C24();
  v6 = sub_20DD65384();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 128);
    v8 = *(v0 + 40);
    v9 = swift_slowAlloc();
    *v9 = 67109120;
    *(v9 + 4) = v8[v7];

    _os_log_impl(&dword_20D9BF000, v5, v6, "hasElectricityRatesEnabled: %{BOOL}d", v9, 8u);
    MEMORY[0x20F327D10](v9, -1, -1);
  }

  else
  {
  }

  (*(v0 + 144))(*(v0 + 112), *(v0 + 72));

  v10 = *(v0 + 8);

  return v10(1);
}

uint64_t sub_20DAA97CC()
{
  v21 = v0;
  v1 = *(v0 + 176);
  v2 = *(v0 + 136);
  sub_20DD64C54();
  v3 = v1;
  v4 = sub_20DD64C24();
  v5 = sub_20DD65364();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 176);
  v8 = *(v0 + 144);
  v9 = *(v0 + 88);
  v10 = *(v0 + 72);
  if (v6)
  {
    v19 = *(v0 + 144);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = v9;
    v13 = swift_slowAlloc();
    v20 = v13;
    *v11 = 136315394;
    *(v11 + 4) = sub_20D9E0B38(0xD000000000000021, 0x800000020DD9ADC0, &v20);
    *(v11 + 12) = 2112;
    v14 = v7;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v15;
    *v12 = v15;
    _os_log_impl(&dword_20D9BF000, v4, v5, "%s Couldn't update rate plan inclusion: %@", v11, 0x16u);
    sub_20D9D76EC(v12, &unk_27C843630, &qword_20DD94080);
    MEMORY[0x20F327D10](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x20F327D10](v13, -1, -1);
    MEMORY[0x20F327D10](v11, -1, -1);

    v19(v18, v10);
  }

  else
  {

    v8(v9, v10);
  }

  v16 = *(v0 + 8);

  return v16(0);
}

uint64_t sub_20DAA9BC0(char a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  a3;
  v6 = swift_task_alloc();
  v3[4] = v6;
  *v6 = v3;
  v6[1] = sub_20DAB5D24;

  return sub_20DAA8C60(a1);
}

uint64_t sub_20DAA9C7C()
{
  v1[2] = v0;
  v2 = sub_20DD64C44();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v3 = swift_task_alloc();
  v1[7] = v3;
  *v3 = v1;
  v3[1] = sub_20DAA9D74;

  return sub_20DAAF09C();
}

uint64_t sub_20DAA9D74(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 64) = a1;
  *(v3 + 72) = a2;

  return MEMORY[0x2822009F8](sub_20DAA9E74, 0, 0);
}

uint64_t sub_20DAA9E74()
{
  v1 = (v0[2] + OBJC_IVAR____TtC4Home19HFHomeEnergyManager_utilityService);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_0(v1, v2);
  v8 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_20DAA9FAC;
  v6 = v0[8];
  v5 = v0[9];

  return v8(v6, v5, v2, v3);
}

uint64_t sub_20DAA9FAC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 88) = a1;
  *(v3 + 96) = v1;

  if (v1)
  {
    v4 = sub_20DAAA34C;
  }

  else
  {
    v4 = sub_20DAAA0C0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_20DAAA0C0()
{
  v21 = v0;
  v1 = v0[11];
  if (v1 >> 62)
  {
    v2 = sub_20DD655B4();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (qword_280E01ED8 != -1)
  {
    swift_once();
  }

  v3 = qword_280E03EB0;
  sub_20DD64C54();

  v4 = sub_20DD64C24();
  v5 = sub_20DD65384();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[9];
  if (v6)
  {
    v8 = v0[8];
    v9 = v0[4];
    v18 = v0[3];
    v19 = v0[6];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20 = v11;
    *v10 = 136315650;
    *(v10 + 4) = sub_20D9E0B38(0xD000000000000028, 0x800000020DD9ADF0, &v20);
    *(v10 + 12) = 2080;
    v12 = sub_20D9E0B38(v8, v7, &v20);

    *(v10 + 14) = v12;
    *(v10 + 22) = 1024;
    *(v10 + 24) = v2 != 0;
    _os_log_impl(&dword_20D9BF000, v4, v5, "%s %s returning %{BOOL}d", v10, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x20F327D10](v11, -1, -1);
    MEMORY[0x20F327D10](v10, -1, -1);

    (*(v9 + 8))(v19, v18);
  }

  else
  {
    v13 = v0[6];
    v14 = v0[3];
    v15 = v0[4];

    (*(v15 + 8))(v13, v14);
  }

  v16 = v0[1];

  return v16(v2 != 0);
}

uint64_t sub_20DAAA34C()
{
  v41 = v0;
  p_cache = &OBJC_METACLASS___HFItemManagerDelegateUpdateRequest.cache;
  if (qword_280E01ED8 != -1)
  {
    swift_once();
  }

  v2 = v0[12];
  v3 = qword_280E03EB0;
  sub_20DD64C54();

  v4 = v2;
  v5 = sub_20DD64C24();
  v6 = sub_20DD65364();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[12];
  if (v7)
  {
    v9 = v0[8];
    v10 = v0[9];
    v36 = v0[4];
    v37 = v0[3];
    v38 = v0[5];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v40 = v13;
    *v11 = 136315650;
    *(v11 + 4) = sub_20D9E0B38(0xD000000000000028, 0x800000020DD9ADF0, &v40);
    *(v11 + 12) = 2080;
    v14 = v10;
    p_cache = (&OBJC_METACLASS___HFItemManagerDelegateUpdateRequest + 16);
    *(v11 + 14) = sub_20D9E0B38(v9, v14, &v40);
    *(v11 + 22) = 2112;
    v15 = v8;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 24) = v16;
    *v12 = v16;
    _os_log_impl(&dword_20D9BF000, v5, v6, "%s %s error: %@", v11, 0x20u);
    sub_20D9D76EC(v12, &unk_27C843630, &qword_20DD94080);
    MEMORY[0x20F327D10](v12, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x20F327D10](v13, -1, -1);
    MEMORY[0x20F327D10](v11, -1, -1);

    (*(v36 + 8))(v38, v37);
  }

  else
  {
    v18 = v0[4];
    v17 = v0[5];
    v19 = v0[3];

    (*(v18 + 8))(v17, v19);
  }

  if (p_cache[475] != -1)
  {
    swift_once();
  }

  v20 = qword_280E03EB0;
  sub_20DD64C54();

  v21 = sub_20DD64C24();
  v22 = sub_20DD65384();

  v23 = os_log_type_enabled(v21, v22);
  v24 = v0[9];
  if (v23)
  {
    v25 = v0[8];
    v39 = v0[6];
    v26 = v0[3];
    v27 = v0[4];
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v40 = v29;
    *v28 = 136315650;
    *(v28 + 4) = sub_20D9E0B38(0xD000000000000028, 0x800000020DD9ADF0, &v40);
    *(v28 + 12) = 2080;
    v30 = sub_20D9E0B38(v25, v24, &v40);

    *(v28 + 14) = v30;
    *(v28 + 22) = 1024;
    *(v28 + 24) = 0;
    _os_log_impl(&dword_20D9BF000, v21, v22, "%s %s returning %{BOOL}d", v28, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x20F327D10](v29, -1, -1);
    MEMORY[0x20F327D10](v28, -1, -1);

    (*(v27 + 8))(v39, v26);
  }

  else
  {
    v31 = v0[6];
    v32 = v0[3];
    v33 = v0[4];

    (*(v33 + 8))(v31, v32);
  }

  v34 = v0[1];

  return v34(0);
}

uint64_t sub_20DAAA934(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_20DAB5D24;

  return sub_20DAA9C7C();
}

uint64_t sub_20DAAA9DC()
{
  v1[151] = v0;
  v2 = sub_20DD64C44();
  v1[152] = v2;
  v1[153] = *(v2 - 8);
  v1[154] = swift_task_alloc();
  v3 = sub_20DD63744();
  v1[155] = v3;
  v1[156] = *(v3 - 8);
  v1[157] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DAAAAF8, 0, 0);
}

uint64_t sub_20DAAAAF8()
{
  v1 = *(v0 + 1256);
  v2 = *(v0 + 1248);
  v3 = *(v0 + 1240);
  v4 = *(v0 + 1208);
  *(v0 + 1264) = sub_20D9D5FE0(MEMORY[0x277D84F90]);
  *(v0 + 1360) = sub_20DAA4D14() & 1;
  sub_20DD64AE4();
  v5 = [*(v4 + OBJC_IVAR____TtC4Home19HFHomeEnergyManager_home) uniqueIdentifier];
  sub_20DD63714();

  v6 = sub_20DD636E4();
  v8 = v7;
  (*(v2 + 8))(v1, v3);
  v9 = swift_task_alloc();
  *(v0 + 1272) = v9;
  *v9 = v0;
  v9[1] = sub_20DAAAC34;

  return MEMORY[0x28215C940](v6, v8);
}

uint64_t sub_20DAAAC34(uint64_t a1)
{
  *(*v1 + 1280) = a1;

  return MEMORY[0x2822009F8](sub_20DAAAD34, 0, 0);
}

uint64_t sub_20DAAAD34()
{
  v54 = v0;
  v1 = *(v0 + 1264);
  if (*(v0 + 1280))
  {
    v2 = sub_20DD64A24();
    v3 = MEMORY[0x277D837D0];
    *(v0 + 104) = MEMORY[0x277D837D0];
    *(v0 + 80) = v2;
    *(v0 + 88) = v4;
    sub_20D9C29D8((v0 + 80), (v0 + 112));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v53 = v1;
    v6 = *(v0 + 136);
    v7 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 112, v6);
    v8 = *(v6 - 8);
    v9 = swift_task_alloc();
    (*(v8 + 16))(v9, v7, v6);
    sub_20DA29604(*v9, v9[1], 0x444965746973, 0xE600000000000000, isUniquelyReferenced_nonNull_native, &v53);
    __swift_destroy_boxed_opaque_existential_0((v0 + 112));

    v10 = v53;
    v11 = sub_20DD64A54();
    v13 = v12;
    *(v0 + 144) = v11;
    *(v0 + 168) = v3;
    *(v0 + 152) = v12;
    sub_20D9C29D8((v0 + 144), (v0 + 176));

    LOBYTE(v3) = swift_isUniquelyReferenced_nonNull_native();
    v53 = v10;
    v14 = *(v0 + 200);
    v15 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 176, v14);
    v16 = *(v14 - 8);
    v17 = swift_task_alloc();
    (*(v16 + 16))(v17, v15, v14);
    sub_20DA29604(*v17, v17[1], 0xD000000000000011, 0x800000020DD9AE40, v3, &v53);
    __swift_destroy_boxed_opaque_existential_0((v0 + 176));

    v18 = v53;
    if (v11 == 0x64657269707865 && v13 == 0xE700000000000000 || (sub_20DD65974() & 1) != 0 || v11 == 0x656E6E6F63736964 && v13 == 0xEC00000064657463)
    {
    }

    else
    {
      v51 = sub_20DD65974();

      if ((v51 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    *(v0 + 1128) = MEMORY[0x277D839B0];
    *(v0 + 1104) = 1;
    sub_20D9C29D8((v0 + 1104), (v0 + 1136));
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v53 = v18;
    v20 = *(v0 + 1160);
    v21 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 1136, v20);
    v22 = *(v20 - 8);
    v23 = swift_task_alloc();
    (*(v22 + 16))(v23, v21, v20);
    sub_20DA29938(*v23, 0x6E6F637369447369, 0xEE0064657463656ELL, v19, &v53);
    __swift_destroy_boxed_opaque_existential_0((v0 + 1136));

    v18 = v53;
LABEL_9:
    *(v0 + 1288) = v18;
    v24 = *(v0 + 1208);
    v25 = sub_20DD64A94();
    v27 = v26;
    *(v0 + 1192) = v25;
    *(v0 + 1200) = v26;
    *(v0 + 1296) = v26;
    v28 = OBJC_IVAR____TtC4Home19HFHomeEnergyManager_cachedHasEnergySite;
    swift_beginAccess();
    *(v24 + v28) = 1;
    v29 = swift_task_alloc();
    *(v0 + 1304) = v29;
    *v29 = v0;
    v29[1] = sub_20DAAB4C8;

    return sub_20DAA53D0(v27 != 0);
  }

  *(v0 + 16) = *(v0 + 1360);
  *(v0 + 40) = MEMORY[0x277D839B0];
  sub_20D9C29D8((v0 + 16), (v0 + 48));
  v31 = swift_isUniquelyReferenced_nonNull_native();
  v53 = v1;
  v32 = *(v0 + 72);
  v33 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 48, v32);
  v34 = *(v32 - 8);
  v35 = swift_task_alloc();
  (*(v34 + 16))(v35, v33, v32);
  sub_20DA29938(*v35, 0x726F707075537369, 0xEB00000000646574, v31, &v53);
  __swift_destroy_boxed_opaque_existential_0((v0 + 48));

  v36 = v53;
  if (qword_280E01ED8 != -1)
  {
    swift_once();
  }

  v37 = qword_280E03EB0;
  sub_20DD64C54();
  v38 = sub_20DD64C24();
  v39 = sub_20DD65384();
  v40 = os_log_type_enabled(v38, v39);
  v41 = *(v0 + 1232);
  v42 = *(v0 + 1224);
  v43 = *(v0 + 1216);
  if (v40)
  {
    v52 = *(v0 + 1232);
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v53 = v45;
    *v44 = 136315394;
    *(v44 + 4) = sub_20D9E0B38(0xD000000000000010, 0x800000020DD9AE20, &v53);
    *(v44 + 12) = 2080;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8442C8, &qword_20DD94B80);
    v46 = sub_20DD64DD4();
    v48 = v47;

    v49 = sub_20D9E0B38(v46, v48, &v53);

    *(v44 + 14) = v49;
    _os_log_impl(&dword_20D9BF000, v38, v39, "%s returning: %s", v44, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F327D10](v45, -1, -1);
    MEMORY[0x20F327D10](v44, -1, -1);

    (*(v42 + 8))(v52, v43);
  }

  else
  {

    (*(v42 + 8))(v41, v43);
  }

  v50 = *(v0 + 8);

  return v50(v36);
}

uint64_t sub_20DAAB4C8()
{

  return MEMORY[0x2822009F8](sub_20DAAB5C4, 0, 0);
}

uint64_t sub_20DAAB5C4()
{
  v68 = v0;
  v1 = *(v0 + 1296);
  if (v1)
  {
    *(v0 + 208) = *(v0 + 1192);
    v2 = *(v0 + 1288);
    v3 = MEMORY[0x277D837D0];
    *(v0 + 232) = MEMORY[0x277D837D0];
    *(v0 + 216) = v1;
    sub_20D9C29D8((v0 + 208), (v0 + 240));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v67 = v2;
    v5 = *(v0 + 264);
    v6 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 240, v5);
    v7 = *(v5 - 8);
    v8 = swift_task_alloc();
    (*(v7 + 16))(v8, v6, v5);
    sub_20DA29604(*v8, v8[1], 0xD000000000000015, 0x800000020DD9AE60, isUniquelyReferenced_nonNull_native, &v67);
    __swift_destroy_boxed_opaque_existential_0((v0 + 240));

    v9 = v67;
    v10 = sub_20DD64A74();
    if (v11)
    {
      *(v0 + 1064) = v3;
      *(v0 + 1040) = v10;
      *(v0 + 1048) = v11;
      sub_20D9C29D8((v0 + 1040), (v0 + 1072));
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v67 = v9;
      v13 = *(v0 + 1096);
      v14 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 1072, v13);
      v15 = *(v13 - 8);
      v16 = swift_task_alloc();
      (*(v15 + 16))(v16, v14, v13);
      sub_20DA29604(*v16, v16[1], 0xD000000000000013, 0x800000020DD9AF40, v12, &v67);
      __swift_destroy_boxed_opaque_existential_0((v0 + 1072));

      v9 = v67;
    }

    v17 = sub_20DD64A84();
    if (v18)
    {
      *(v0 + 1000) = v3;
      *(v0 + 976) = v17;
      *(v0 + 984) = v18;
      sub_20D9C29D8((v0 + 976), (v0 + 1008));
      v19 = swift_isUniquelyReferenced_nonNull_native();
      v67 = v9;
      v20 = *(v0 + 1032);
      v21 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 1008, v20);
      v22 = *(v20 - 8);
      v23 = swift_task_alloc();
      (*(v22 + 16))(v23, v21, v20);
      sub_20DA29604(*v23, v23[1], 0xD000000000000014, 0x800000020DD9AF20, v19, &v67);
      __swift_destroy_boxed_opaque_existential_0((v0 + 1008));

      v9 = v67;
    }

    v24 = sub_20DD64A64();
    if (v25)
    {
      *(v0 + 936) = v3;
      *(v0 + 912) = v24;
      *(v0 + 920) = v25;
      sub_20D9C29D8((v0 + 912), (v0 + 944));
      v26 = swift_isUniquelyReferenced_nonNull_native();
      v67 = v9;
      v27 = *(v0 + 968);
      v28 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 944, v27);
      v29 = *(v27 - 8);
      v30 = swift_task_alloc();
      (*(v29 + 16))(v30, v28, v27);
      sub_20DA29604(*v30, v30[1], 0xD000000000000012, 0x800000020DD9AF00, v26, &v67);
      __swift_destroy_boxed_opaque_existential_0((v0 + 944));

      v9 = v67;
    }

    v31 = sub_20DD64A34();
    if (v32)
    {
      *(v0 + 872) = v3;
      *(v0 + 848) = v31;
      *(v0 + 856) = v32;
      sub_20D9C29D8((v0 + 848), (v0 + 880));
      v33 = swift_isUniquelyReferenced_nonNull_native();
      v67 = v9;
      v34 = *(v0 + 904);
      v35 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 880, v34);
      v36 = *(v34 - 8);
      v37 = swift_task_alloc();
      (*(v36 + 16))(v37, v35, v34);
      sub_20DA29604(*v37, v37[1], 0x4165636976726573, 0xEE00737365726464, v33, &v67);
      __swift_destroy_boxed_opaque_existential_0((v0 + 880));

      v9 = v67;
    }

    *(v0 + 1312) = v9;
    v38 = sub_20DD64AD4();
    *(v0 + 1320) = v38;
    *(v0 + 1328) = v39;
    if (v39)
    {
      v40 = v38;
      v41 = v39;
      sub_20DD64BC4();
      v42 = sub_20DD64B94();
      *(v0 + 1336) = v42;
      v43 = swift_task_alloc();
      *(v0 + 1344) = v43;
      *v43 = v0;
      v43[1] = sub_20DAABEA4;

      return MEMORY[0x282172650](v40, v41, v42);
    }

    v44 = 1;
  }

  else
  {

    v9 = *(v0 + 1288);
    v44 = *(v0 + 1360);
  }

  *(v0 + 40) = MEMORY[0x277D839B0];
  *(v0 + 16) = v44;
  sub_20D9C29D8((v0 + 16), (v0 + 48));
  v45 = swift_isUniquelyReferenced_nonNull_native();
  v67 = v9;
  v46 = *(v0 + 72);
  v47 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 48, v46);
  v48 = *(v46 - 8);
  v49 = swift_task_alloc();
  (*(v48 + 16))(v49, v47, v46);
  sub_20DA29938(*v49, 0x726F707075537369, 0xEB00000000646574, v45, &v67);
  __swift_destroy_boxed_opaque_existential_0((v0 + 48));

  v50 = v67;
  if (qword_280E01ED8 != -1)
  {
    swift_once();
  }

  v51 = qword_280E03EB0;
  sub_20DD64C54();
  v52 = sub_20DD64C24();
  v53 = sub_20DD65384();
  v54 = os_log_type_enabled(v52, v53);
  v55 = *(v0 + 1232);
  v56 = *(v0 + 1224);
  v57 = *(v0 + 1216);
  if (v54)
  {
    v66 = *(v0 + 1232);
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v67 = v59;
    *v58 = 136315394;
    *(v58 + 4) = sub_20D9E0B38(0xD000000000000010, 0x800000020DD9AE20, &v67);
    *(v58 + 12) = 2080;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8442C8, &qword_20DD94B80);
    v60 = sub_20DD64DD4();
    v62 = v61;

    v63 = sub_20D9E0B38(v60, v62, &v67);

    *(v58 + 14) = v63;
    _os_log_impl(&dword_20D9BF000, v52, v53, "%s returning: %s", v58, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F327D10](v59, -1, -1);
    MEMORY[0x20F327D10](v58, -1, -1);

    (*(v56 + 8))(v66, v57);
  }

  else
  {

    (*(v56 + 8))(v55, v57);
  }

  v64 = *(v0 + 8);

  return v64(v50);
}

uint64_t sub_20DAABEA4(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 1352) = a1;

  v4 = *(v3 + 1336);
  if (v1)
  {

    v5 = sub_20DAACCCC;
  }

  else
  {

    v5 = sub_20DAABFF8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_20DAABFF8()
{
  v107 = v0;
  v1 = *(v0 + 1352);
  if (v1)
  {
    v2 = sub_20DD64B34();
    v4 = v3;
    v5 = sub_20DD64B44();
    v103 = v2;
    v104 = v1;
    if (!v6)
    {

      v5 = v2;
      v6 = v4;
    }

    v7 = *(v0 + 1328);
    v8 = *(v0 + 1320);
    v9 = *(v0 + 1312);
    v10 = MEMORY[0x277D837D0];
    *(v0 + 296) = MEMORY[0x277D837D0];
    *(v0 + 272) = v5;
    *(v0 + 280) = v6;
    sub_20D9C29D8((v0 + 272), (v0 + 304));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v106 = v9;
    v12 = *(v0 + 328);
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 304, v12);
    v14 = *(v12 - 8);
    v15 = swift_task_alloc();
    (*(v14 + 16))(v15, v13, v12);
    sub_20DA29604(*v15, v15[1], 0x4E7974696C697475, 0xEB00000000656D61, isUniquelyReferenced_nonNull_native, &v106);
    __swift_destroy_boxed_opaque_existential_0((v0 + 304));

    v16 = v106;
    *(v0 + 360) = v10;
    *(v0 + 336) = v8;
    *(v0 + 344) = v7;
    v17 = v10;
    sub_20D9C29D8((v0 + 336), (v0 + 368));
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v106 = v16;
    v19 = *(v0 + 392);
    v20 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 368, v19);
    v21 = *(v19 - 8);
    v22 = swift_task_alloc();
    (*(v21 + 16))(v22, v20, v19);
    sub_20DA29604(*v22, v22[1], 0x497974696C697475, 0xE900000000000044, v18, &v106);
    __swift_destroy_boxed_opaque_existential_0((v0 + 368));

    v23 = v106;
    *(v0 + 424) = v10;
    *(v0 + 400) = v103;
    *(v0 + 408) = v4;
    sub_20D9C29D8((v0 + 400), (v0 + 432));
    LOBYTE(v7) = swift_isUniquelyReferenced_nonNull_native();
    v106 = v23;
    v24 = *(v0 + 456);
    v25 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 432, v24);
    v26 = *(v24 - 8);
    v27 = swift_task_alloc();
    (*(v26 + 16))(v27, v25, v24);
    sub_20DA29604(*v27, v27[1], 0x4C7974696C697475, 0xEF656D614E676E6FLL, v7, &v106);
    __swift_destroy_boxed_opaque_existential_0((v0 + 432));

    v28 = v106;
    v29 = sub_20DD64B24();
    v30 = sub_20DD64AF4();

    v31 = sub_20DD64B54();
    v33 = v32;

    *(v0 + 488) = v10;
    *(v0 + 464) = v31;
    *(v0 + 472) = v33;
    sub_20D9C29D8((v0 + 464), (v0 + 496));
    LOBYTE(v31) = swift_isUniquelyReferenced_nonNull_native();
    v106 = v28;
    v34 = *(v0 + 520);
    v35 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 496, v34);
    v36 = *(v34 - 8);
    v37 = swift_task_alloc();
    (*(v36 + 16))(v37, v35, v34);
    sub_20DA29604(*v37, v37[1], 0xD000000000000011, 0x800000020DD9AE80, v31, &v106);
    __swift_destroy_boxed_opaque_existential_0((v0 + 496));

    v38 = v106;
    if ([objc_opt_self() isInternalInstall])
    {
      v39 = [objc_opt_self() standardUserDefaults];
      v40 = sub_20DD64E74();
      v41 = [v39 stringForKey_];

      if (v41)
      {
        v42 = sub_20DD64EB4();
        v44 = v43;

        *(v0 + 808) = v10;
        *(v0 + 784) = v42;
        *(v0 + 792) = v44;
        sub_20D9C29D8((v0 + 784), (v0 + 816));
        v45 = swift_isUniquelyReferenced_nonNull_native();
        v106 = v38;
        v46 = *(v0 + 840);
        v47 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 816, v46);
        v48 = *(v46 - 8);
        v49 = swift_task_alloc();
        (*(v48 + 16))(v49, v47, v46);
        sub_20DA29604(*v49, v49[1], 0xD000000000000011, 0x800000020DD9AE80, v45, &v106);
        __swift_destroy_boxed_opaque_existential_0((v0 + 816));

        v38 = v106;
      }
    }

    v50 = sub_20DD64B24();
    v51 = sub_20DD64B04();

    v52 = sub_20DD64B74();
    *(v0 + 552) = v10;
    *(v0 + 528) = v52;
    *(v0 + 536) = v53;
    sub_20D9C29D8((v0 + 528), (v0 + 560));
    LOBYTE(v50) = swift_isUniquelyReferenced_nonNull_native();
    v106 = v38;
    v54 = *(v0 + 584);
    v55 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 560, v54);
    v56 = *(v54 - 8);
    v57 = swift_task_alloc();
    (*(v56 + 16))(v57, v55, v54);
    sub_20DA29604(*v57, v57[1], 0xD000000000000014, 0x800000020DD9AEA0, v50, &v106);
    __swift_destroy_boxed_opaque_existential_0((v0 + 560));

    v58 = v106;
    v59 = sub_20DD64B64();
    *(v0 + 616) = v17;
    *(v0 + 592) = v59;
    *(v0 + 600) = v60;
    sub_20D9C29D8((v0 + 592), (v0 + 624));
    LOBYTE(v50) = swift_isUniquelyReferenced_nonNull_native();
    v106 = v58;
    v61 = *(v0 + 648);
    v62 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 624, v61);
    v63 = *(v61 - 8);
    v64 = swift_task_alloc();
    (*(v63 + 16))(v64, v62, v61);
    sub_20DA29604(*v64, v64[1], 0xD000000000000012, 0x800000020DD9AEC0, v50, &v106);
    __swift_destroy_boxed_opaque_existential_0((v0 + 624));

    v65 = v106;
    v66 = sub_20DD64B84();
    *(v0 + 680) = v17;
    *(v0 + 656) = v66;
    *(v0 + 664) = v67;
    sub_20D9C29D8((v0 + 656), (v0 + 688));
    LOBYTE(v50) = swift_isUniquelyReferenced_nonNull_native();
    v106 = v65;
    v68 = *(v0 + 712);
    v69 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 688, v68);
    v70 = *(v68 - 8);
    v71 = swift_task_alloc();
    (*(v70 + 16))(v71, v69, v68);
    sub_20DA29604(*v71, v71[1], 0xD00000000000001BLL, 0x800000020DD9AEE0, v50, &v106);
    __swift_destroy_boxed_opaque_existential_0((v0 + 688));

    v72 = v106;
    v73 = sub_20DD64B24();
    v74 = sub_20DD64B14();
    v76 = v75;

    *(v0 + 744) = v17;
    *(v0 + 720) = v74;
    *(v0 + 728) = v76;
    sub_20D9C29D8((v0 + 720), (v0 + 752));
    LOBYTE(v73) = swift_isUniquelyReferenced_nonNull_native();
    v106 = v72;
    v77 = *(v0 + 776);
    v78 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 752, v77);
    v79 = *(v77 - 8);
    v80 = swift_task_alloc();
    (*(v79 + 16))(v80, v78, v77);
    sub_20DA29604(*v80, v80[1], 0x577974696C697475, 0xEE00657469736265, v73, &v106);
    __swift_destroy_boxed_opaque_existential_0((v0 + 752));

    v81 = v106;
  }

  else
  {

    v81 = *(v0 + 1312);
  }

  *(v0 + 40) = MEMORY[0x277D839B0];
  *(v0 + 16) = 1;
  sub_20D9C29D8((v0 + 16), (v0 + 48));
  v82 = swift_isUniquelyReferenced_nonNull_native();
  v106 = v81;
  v83 = *(v0 + 72);
  v84 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 48, v83);
  v85 = *(v83 - 8);
  v86 = swift_task_alloc();
  (*(v85 + 16))(v86, v84, v83);
  sub_20DA29938(*v86, 0x726F707075537369, 0xEB00000000646574, v82, &v106);
  __swift_destroy_boxed_opaque_existential_0((v0 + 48));

  v87 = v106;
  if (qword_280E01ED8 != -1)
  {
    swift_once();
  }

  v88 = qword_280E03EB0;
  sub_20DD64C54();
  v89 = sub_20DD64C24();
  v90 = sub_20DD65384();
  v91 = os_log_type_enabled(v89, v90);
  v92 = *(v0 + 1232);
  v93 = *(v0 + 1224);
  v94 = *(v0 + 1216);
  if (v91)
  {
    v105 = *(v0 + 1232);
    v95 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    v106 = v96;
    *v95 = 136315394;
    *(v95 + 4) = sub_20D9E0B38(0xD000000000000010, 0x800000020DD9AE20, &v106);
    *(v95 + 12) = 2080;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8442C8, &qword_20DD94B80);
    v97 = sub_20DD64DD4();
    v99 = v98;

    v100 = sub_20D9E0B38(v97, v99, &v106);

    *(v95 + 14) = v100;
    _os_log_impl(&dword_20D9BF000, v89, v90, "%s returning: %s", v95, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F327D10](v96, -1, -1);
    MEMORY[0x20F327D10](v95, -1, -1);

    (*(v93 + 8))(v105, v94);
  }

  else
  {

    (*(v93 + 8))(v92, v94);
  }

  v101 = *(v0 + 8);

  return v101(v87);
}

uint64_t sub_20DAACCCC()
{
  v25 = v0;

  *(v0 + 16) = 1;
  v1 = *(v0 + 1312);
  *(v0 + 40) = MEMORY[0x277D839B0];
  sub_20D9C29D8((v0 + 16), (v0 + 48));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = v1;
  v3 = *(v0 + 72);
  v4 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 48, v3);
  v5 = *(v3 - 8);
  v6 = swift_task_alloc();
  (*(v5 + 16))(v6, v4, v3);
  sub_20DA29938(*v6, 0x726F707075537369, 0xEB00000000646574, isUniquelyReferenced_nonNull_native, &v24);
  __swift_destroy_boxed_opaque_existential_0((v0 + 48));

  v7 = v24;
  if (qword_280E01ED8 != -1)
  {
    swift_once();
  }

  v8 = qword_280E03EB0;
  sub_20DD64C54();
  v9 = sub_20DD64C24();
  v10 = sub_20DD65384();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 1232);
  v13 = *(v0 + 1224);
  v14 = *(v0 + 1216);
  if (v11)
  {
    v23 = *(v0 + 1232);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v24 = v16;
    *v15 = 136315394;
    *(v15 + 4) = sub_20D9E0B38(0xD000000000000010, 0x800000020DD9AE20, &v24);
    *(v15 + 12) = 2080;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8442C8, &qword_20DD94B80);
    v17 = sub_20DD64DD4();
    v19 = v18;

    v20 = sub_20D9E0B38(v17, v19, &v24);

    *(v15 + 14) = v20;
    _os_log_impl(&dword_20D9BF000, v9, v10, "%s returning: %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F327D10](v16, -1, -1);
    MEMORY[0x20F327D10](v15, -1, -1);

    (*(v13 + 8))(v23, v14);
  }

  else
  {

    (*(v13 + 8))(v12, v14);
  }

  v21 = *(v0 + 8);

  return v21(v7);
}

uint64_t sub_20DAAD194(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_20DAAD23C;

  return sub_20DAAA9DC();
}

uint64_t sub_20DAAD23C(uint64_t a1)
{
  v2 = *(*v1 + 24);
  v3 = *(*v1 + 16);
  v7 = *v1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8442C8, &qword_20DD94B80);
  v4 = sub_20DD64DB4();

  (v2)[2](v2, v4);

  _Block_release(v2);
  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_20DAAD3C8()
{
  v1[2] = v0;
  v2 = sub_20DD64C44();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v3 = sub_20DD63744();
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DAAD508, 0, 0);
}

uint64_t sub_20DAAD508()
{
  v27 = v0;
  v1 = *(v0[2] + OBJC_IVAR____TtC4Home19HFHomeEnergyManager_home);
  v2 = [v1 name];
  v3 = sub_20DD64EB4();
  v5 = v4;

  v0[12] = v3;
  v0[13] = v5;
  if ([v1 hf_currentUserIsAdministrator])
  {
    v7 = v0[10];
    v6 = v0[11];
    v8 = v0[9];
    sub_20DD64AE4();
    v9 = [v1 uniqueIdentifier];
    sub_20DD63714();

    v10 = sub_20DD636E4();
    v12 = v11;
    (*(v7 + 8))(v6, v8);
    v13 = swift_task_alloc();
    v0[14] = v13;
    *v13 = v0;
    v13[1] = sub_20DAAD870;

    return MEMORY[0x28215C940](v10, v12);
  }

  else
  {
    if (qword_280E01ED8 != -1)
    {
      swift_once();
    }

    v14 = qword_280E03EB0;
    sub_20DD64C54();

    v15 = sub_20DD64C24();
    v16 = sub_20DD65384();

    v17 = os_log_type_enabled(v15, v16);
    v18 = v0[6];
    v19 = v0[3];
    v20 = v0[4];
    if (v17)
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v26 = v22;
      *v21 = 136315394;
      *(v21 + 4) = sub_20D9E0B38(0xD000000000000014, 0x800000020DD9AF60, &v26);
      *(v21 + 12) = 2080;
      v23 = sub_20D9E0B38(v3, v5, &v26);

      *(v21 + 14) = v23;
      _os_log_impl(&dword_20D9BF000, v15, v16, "%s not allowed for home %s because: not admin", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F327D10](v22, -1, -1);
      MEMORY[0x20F327D10](v21, -1, -1);
    }

    else
    {
    }

    (*(v20 + 8))(v18, v19);

    v24 = v0[1];

    return v24(0);
  }
}

uint64_t sub_20DAAD870(uint64_t a1)
{
  *(*v1 + 120) = a1;

  return MEMORY[0x2822009F8](sub_20DAAD970, 0, 0);
}

uint64_t sub_20DAAD970()
{
  v21 = v0;
  if (v0[15])
  {
    v19 = (*MEMORY[0x277D07660] + MEMORY[0x277D07660]);
    v1 = swift_task_alloc();
    v0[16] = v1;
    *v1 = v0;
    v1[1] = sub_20DAADC5C;

    return v19();
  }

  else
  {
    if (qword_280E01ED8 != -1)
    {
      swift_once();
    }

    v3 = qword_280E03EB0;
    sub_20DD64C54();

    v4 = sub_20DD64C24();
    v5 = sub_20DD65364();

    v6 = os_log_type_enabled(v4, v5);
    v7 = v0[13];
    if (v6)
    {
      v8 = v0[12];
      v9 = v0[7];
      v10 = v0[3];
      v11 = v0[4];
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v20 = v13;
      *v12 = 136315394;
      *(v12 + 4) = sub_20D9E0B38(0xD000000000000014, 0x800000020DD9AF60, &v20);
      *(v12 + 12) = 2080;
      v14 = sub_20D9E0B38(v8, v7, &v20);

      *(v12 + 14) = v14;
      _os_log_impl(&dword_20D9BF000, v4, v5, "%s Error fetching Energy Site for %s", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F327D10](v13, -1, -1);
      MEMORY[0x20F327D10](v12, -1, -1);

      (*(v11 + 8))(v9, v10);
    }

    else
    {
      v15 = v0[7];
      v16 = v0[3];
      v17 = v0[4];

      (*(v17 + 8))(v15, v16);
    }

    v18 = v0[1];

    return v18(0);
  }
}

uint64_t sub_20DAADC5C(char a1)
{
  v4 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {
    v5 = sub_20DAAE218;
  }

  else
  {
    *(v4 + 152) = a1 & 1;
    v5 = sub_20DAADD88;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_20DAADD88()
{
  v21 = v0;
  v1 = *(v0 + 152);
  if (qword_280E01ED8 != -1)
  {
    swift_once();
  }

  v2 = qword_280E03EB0;
  sub_20DD64C54();

  v3 = sub_20DD64C24();
  v4 = sub_20DD65384();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 104);
  if (v5)
  {
    v7 = *(v0 + 96);
    v19 = *(v0 + 64);
    v9 = *(v0 + 24);
    v8 = *(v0 + 32);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20 = v11;
    *v10 = 136315650;
    *(v10 + 4) = sub_20D9E0B38(0xD000000000000014, 0x800000020DD9AF60, &v20);
    *(v10 + 12) = 1024;
    *(v10 + 14) = v1;
    *(v10 + 18) = 2080;
    v12 = sub_20D9E0B38(v7, v6, &v20);

    *(v10 + 20) = v12;
    _os_log_impl(&dword_20D9BF000, v3, v4, "%s success: %{BOOL}d for home %s", v10, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x20F327D10](v11, -1, -1);
    MEMORY[0x20F327D10](v10, -1, -1);

    (*(v8 + 8))(v19, v9);
    if (!v1)
    {
LABEL_5:

      v13 = *(v0 + 8);

      return v13(0);
    }
  }

  else
  {
    v15 = *(v0 + 64);
    v16 = *(v0 + 24);
    v17 = *(v0 + 32);

    (*(v17 + 8))(v15, v16);
    if (!v1)
    {
      goto LABEL_5;
    }
  }

  v18 = swift_task_alloc();
  *(v0 + 144) = v18;
  *v18 = v0;
  v18[1] = sub_20DAAE080;

  return sub_20DAA53D0(0);
}

uint64_t sub_20DAAE080()
{

  return MEMORY[0x2822009F8](sub_20DAAE17C, 0, 0);
}

uint64_t sub_20DAAE17C()
{

  v1 = *(v0 + 8);

  return v1(1);
}

uint64_t sub_20DAAE218()
{
  v41 = v0;
  p_cache = &OBJC_METACLASS___HFItemManagerDelegateUpdateRequest.cache;
  if (qword_280E01ED8 != -1)
  {
    swift_once();
  }

  v2 = v0[17];
  v3 = qword_280E03EB0;
  sub_20DD64C54();

  v4 = v2;
  v5 = sub_20DD64C24();
  v6 = sub_20DD65364();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[17];
  if (v7)
  {
    v9 = v0[12];
    v10 = v0[13];
    v36 = v0[4];
    v37 = v0[3];
    v38 = v0[5];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v40 = v13;
    *v11 = 136315650;
    *(v11 + 4) = sub_20D9E0B38(0xD000000000000014, 0x800000020DD9AF60, &v40);
    *(v11 + 12) = 2080;
    v14 = v10;
    p_cache = (&OBJC_METACLASS___HFItemManagerDelegateUpdateRequest + 16);
    *(v11 + 14) = sub_20D9E0B38(v9, v14, &v40);
    *(v11 + 22) = 2112;
    v15 = v8;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 24) = v16;
    *v12 = v16;
    _os_log_impl(&dword_20D9BF000, v5, v6, "%s revokeUtilitySubscription failed for %s error: %@", v11, 0x20u);
    sub_20D9D76EC(v12, &unk_27C843630, &qword_20DD94080);
    MEMORY[0x20F327D10](v12, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x20F327D10](v13, -1, -1);
    MEMORY[0x20F327D10](v11, -1, -1);

    (*(v36 + 8))(v38, v37);
  }

  else
  {
    v18 = v0[4];
    v17 = v0[5];
    v19 = v0[3];

    (*(v18 + 8))(v17, v19);
  }

  if (p_cache[475] != -1)
  {
    swift_once();
  }

  v20 = qword_280E03EB0;
  sub_20DD64C54();

  v21 = sub_20DD64C24();
  v22 = sub_20DD65384();

  v23 = os_log_type_enabled(v21, v22);
  v24 = v0[13];
  if (v23)
  {
    v25 = v0[12];
    v39 = v0[8];
    v26 = v0[3];
    v27 = v0[4];
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v40 = v29;
    *v28 = 136315650;
    *(v28 + 4) = sub_20D9E0B38(0xD000000000000014, 0x800000020DD9AF60, &v40);
    *(v28 + 12) = 1024;
    *(v28 + 14) = 0;
    *(v28 + 18) = 2080;
    v30 = sub_20D9E0B38(v25, v24, &v40);

    *(v28 + 20) = v30;
    _os_log_impl(&dword_20D9BF000, v21, v22, "%s success: %{BOOL}d for home %s", v28, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x20F327D10](v29, -1, -1);
    MEMORY[0x20F327D10](v28, -1, -1);

    (*(v27 + 8))(v39, v26);
  }

  else
  {
    v31 = v0[8];
    v32 = v0[3];
    v33 = v0[4];

    (*(v33 + 8))(v31, v32);
  }

  v34 = v0[1];

  return v34(0);
}

uint64_t sub_20DAAE828(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_20DAB5D24;

  return sub_20DAAD3C8();
}

uint64_t sub_20DAAE8FC()
{
  v1 = sub_20DD64C44();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_20DAAE9E4;

  return sub_20DAAF09C();
}

uint64_t sub_20DAAE9E4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 48) = a1;
  *(v3 + 56) = a2;

  return MEMORY[0x2822009F8](sub_20DAAEAE4, 0, 0);
}

uint64_t sub_20DAAEAE4()
{
  v20 = v0;
  v1 = sub_20DD638C4();
  if (qword_280E01ED8 != -1)
  {
    swift_once();
  }

  v2 = qword_280E03EB0;
  sub_20DD64C54();

  v3 = sub_20DD64C24();
  v4 = sub_20DD65384();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[7];
  if (v5)
  {
    v7 = v0[6];
    v8 = v0[3];
    v18 = v0[4];
    v9 = v0[2];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v10 = 136315650;
    *(v10 + 4) = sub_20D9E0B38(0xD000000000000025, 0x800000020DD9AF80, &v19);
    *(v10 + 12) = 2080;
    v12 = sub_20D9E0B38(v7, v6, &v19);

    *(v10 + 14) = v12;
    *(v10 + 22) = 1024;
    *(v10 + 24) = v1 & 1;
    _os_log_impl(&dword_20D9BF000, v3, v4, "%s %s returning %{BOOL}d", v10, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x20F327D10](v11, -1, -1);
    MEMORY[0x20F327D10](v10, -1, -1);

    (*(v8 + 8))(v18, v9);
  }

  else
  {
    v14 = v0[3];
    v13 = v0[4];
    v15 = v0[2];

    (*(v14 + 8))(v13, v15);
  }

  v16 = v0[1];

  return v16(v1 & 1);
}

uint64_t sub_20DAAEEAC(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_20DAAEF54;

  return sub_20DAAE8FC();
}

uint64_t sub_20DAAEF54(char a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v7 = *v1;

  v3[2](v3, a1 & 1);
  _Block_release(v3);
  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_20DAAF09C()
{
  v1[8] = v0;
  v2 = sub_20DD63794();
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8453A0, &qword_20DD96F18);
  v1[12] = swift_task_alloc();
  v3 = sub_20DD64C44();
  v1[13] = v3;
  v1[14] = *(v3 - 8);
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DAAF22C, 0, 0);
}

uint64_t sub_20DAAF22C()
{
  v119 = v0;
  if (qword_280E01ED8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 64);
  v2 = qword_280E03EB0;
  *(v0 + 168) = qword_280E03EB0;
  v3 = v2;
  sub_20DD64C54();
  v4 = v1;
  v5 = sub_20DD64C24();
  v6 = sub_20DD65384();

  v7 = &unk_27C845000;
  if (os_log_type_enabled(v5, v6))
  {
    v114 = v3;
    v8 = *(v0 + 64);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v118 = v10;
    *v9 = 136315906;
    *(v9 + 4) = sub_20D9E0B38(0x69676552656D6F68, 0xEC00000029286E6FLL, &v118);
    *(v9 + 12) = 2080;
    v11 = *(v8 + OBJC_IVAR____TtC4Home19HFHomeEnergyManager_home);
    v12 = [v11 name];
    v13 = sub_20DD64EB4();
    v15 = v14;

    v16 = sub_20D9E0B38(v13, v15, &v118);

    *(v9 + 14) = v16;
    *(v9 + 22) = 2080;
    v17 = *(v8 + OBJC_IVAR____TtC4Home19HFHomeEnergyManager_cachedRegionCode + 8);
    *(v0 + 40) = *(v8 + OBJC_IVAR____TtC4Home19HFHomeEnergyManager_cachedRegionCode);
    *(v0 + 48) = v17;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844118, qword_20DD96F20);
    v18 = sub_20DD64ED4();
    v20 = sub_20D9E0B38(v18, v19, &v118);

    *(v9 + 24) = v20;
    *(v9 + 32) = 2080;
    v21 = [v11 location];
    if (v21)
    {

      v22 = 0x800000020DD9AFB0;
      v23 = 0xD000000000000010;
    }

    else
    {
      v22 = 0xEE004C494E207369;
      v23 = 0x20636F4C656D6F68;
    }

    v28 = *(v0 + 160);
    v30 = *(v0 + 104);
    v29 = *(v0 + 112);
    v31 = sub_20D9E0B38(v23, v22, &v118);

    *(v9 + 34) = v31;
    _os_log_impl(&dword_20D9BF000, v5, v6, "%s called for %s: cached: %s, %s", v9, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x20F327D10](v10, -1, -1);
    MEMORY[0x20F327D10](v9, -1, -1);

    v27 = *(v29 + 8);
    v27(v28, v30);
    v3 = v114;
    v7 = &unk_27C845000;
  }

  else
  {
    v24 = *(v0 + 160);
    v25 = *(v0 + 104);
    v26 = *(v0 + 112);

    v27 = *(v26 + 8);
    v27(v24, v25);
  }

  v32 = *(v0 + 64);
  v33 = v7[117];
  *(v0 + 176) = v27;
  *(v0 + 184) = v33;
  v34 = &v32[v33];
  v35 = v34[1];
  if (v35)
  {
    v36 = *v34;
    v37 = v3;

    sub_20DD64C54();
    v38 = v32;

    v39 = sub_20DD64C24();
    v40 = sub_20DD65384();

    v41 = os_log_type_enabled(v39, v40);
    v42 = *(v0 + 152);
    v43 = *(v0 + 104);
    if (!v41)
    {

      v27(v42, v43);
      v54 = v36;
      goto LABEL_17;
    }

    v111 = *(v0 + 104);
    v44 = *(v0 + 64);
    v115 = v27;
    v45 = swift_slowAlloc();
    v108 = v42;
    v46 = swift_slowAlloc();
    v118 = v46;
    *v45 = 136315650;
    *(v45 + 4) = sub_20D9E0B38(0x69676552656D6F68, 0xEC00000029286E6FLL, &v118);
    *(v45 + 12) = 2080;
    *(v45 + 14) = sub_20D9E0B38(v36, v35, &v118);
    *(v45 + 22) = 2080;
    v47 = [*(v44 + OBJC_IVAR____TtC4Home19HFHomeEnergyManager_home) name];
    v48 = sub_20DD64EB4();
    v49 = v36;
    v51 = v50;

    v52 = sub_20D9E0B38(v48, v51, &v118);

    *(v45 + 24) = v52;
    _os_log_impl(&dword_20D9BF000, v39, v40, "%s returning cached region code: %s for %s", v45, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F327D10](v46, -1, -1);
    v53 = v45;
    v54 = v49;
    MEMORY[0x20F327D10](v53, -1, -1);

    v55 = v108;
    v56 = v111;
LABEL_12:
    v115(v55, v56);
LABEL_17:

    v75 = *(v0 + 8);

    return v75(v54, v35);
  }

  v57 = *&v32[OBJC_IVAR____TtC4Home19HFHomeEnergyManager_home];
  *(v0 + 192) = v57;
  v58 = [v57 location];
  *(v0 + 200) = v58;
  if (!v58)
  {
    v77 = *(v0 + 88);
    v78 = *(v0 + 96);
    v79 = *(v0 + 72);
    v80 = *(v0 + 80);
    sub_20DD63784();
    sub_20DD63774();
    (*(v80 + 8))(v77, v79);
    v81 = sub_20DD63764();
    v82 = *(v81 - 8);
    v83 = (*(v82 + 48))(v78, 1, v81);
    v84 = *(v0 + 96);
    if (v83 == 1)
    {
      sub_20D9D76EC(*(v0 + 96), &qword_27C8453A0, &qword_20DD96F18);
      v85 = 0;
      v35 = 0xE000000000000000;
    }

    else
    {
      v85 = sub_20DD63754();
      v35 = v90;
      (*(v82 + 8))(v84, v81);
    }

    v91 = *(v0 + 64);
    v92 = *(v0 + 168);
    sub_20DD64C54();
    v93 = v91;

    v94 = sub_20DD64C24();
    v95 = sub_20DD65384();

    if (!os_log_type_enabled(v94, v95))
    {
      v105 = *(v0 + 176);
      v106 = *(v0 + 128);
      v54 = v85;
      v107 = *(v0 + 104);

      v105(v106, v107);
      goto LABEL_17;
    }

    v96 = *(v0 + 192);
    v113 = *(v0 + 128);
    v115 = *(v0 + 176);
    v110 = *(v0 + 104);
    v97 = swift_slowAlloc();
    v98 = swift_slowAlloc();
    v118 = v98;
    *v97 = 136315650;
    *(v97 + 4) = sub_20D9E0B38(0x69676552656D6F68, 0xEC00000029286E6FLL, &v118);
    *(v97 + 12) = 2080;
    *(v97 + 14) = sub_20D9E0B38(v85, v35, &v118);
    *(v97 + 22) = 2080;
    v99 = [v96 name];
    v100 = sub_20DD64EB4();
    v102 = v101;

    v103 = sub_20D9E0B38(v100, v102, &v118);

    *(v97 + 24) = v103;
    _os_log_impl(&dword_20D9BF000, v94, v95, "%s falling back to device region code: %s for %s", v97, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F327D10](v98, -1, -1);
    v104 = v97;
    v54 = v85;
    MEMORY[0x20F327D10](v104, -1, -1);

    v56 = v110;
    v55 = v113;
    goto LABEL_12;
  }

  v59 = v58;
  v60 = *(v0 + 64);
  v61 = v3;
  sub_20DD64C54();
  v62 = v60;
  v63 = sub_20DD64C24();
  v64 = sub_20DD65384();

  v65 = os_log_type_enabled(v63, v64);
  v66 = *(v0 + 144);
  v67 = *(v0 + 104);
  if (v65)
  {
    v112 = *(v0 + 144);
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v118 = v69;
    *v68 = 136315394;
    *(v68 + 4) = sub_20D9E0B38(0x69676552656D6F68, 0xEC00000029286E6FLL, &v118);
    *(v68 + 12) = 2080;
    v109 = v67;
    v70 = [v57 name];
    v71 = sub_20DD64EB4();
    v116 = v27;
    v73 = v72;

    v74 = sub_20D9E0B38(v71, v73, &v118);

    *(v68 + 14) = v74;
    _os_log_impl(&dword_20D9BF000, v63, v64, "%s %s has a location. Reverse geocode started...", v68, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F327D10](v69, -1, -1);
    MEMORY[0x20F327D10](v68, -1, -1);

    v116(v112, v109);
  }

  else
  {

    v27(v66, v67);
  }

  v86 = (*(v0 + 64) + OBJC_IVAR____TtC4Home19HFHomeEnergyManager_geocoder);
  v87 = v86[3];
  v88 = v86[4];
  __swift_project_boxed_opaque_existential_0(v86, v87);
  v117 = (*(v88 + 8) + **(v88 + 8));
  v89 = swift_task_alloc();
  *(v0 + 208) = v89;
  *v89 = v0;
  v89[1] = sub_20DAAFD58;

  return v117(v59, v87, v88);
}

uint64_t sub_20DAAFD58(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 216) = a1;
  *(v3 + 224) = v1;

  if (v1)
  {
    v4 = sub_20DAB04B8;
  }

  else
  {
    v4 = sub_20DAAFE6C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_20DAAFE6C()
{
  v61 = v0;
  v1 = *(v0 + 216);
  if (!(v1 >> 62))
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_13:
    v22 = *(v0 + 200);

    goto LABEL_14;
  }

  result = sub_20DD655B4();
  if (!result)
  {
    goto LABEL_13;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x20F326680](0, *(v0 + 216));
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(*(v0 + 216) + 32);
  }

  v4 = [v3 ISOcountryCode];

  if (!v4)
  {
    v22 = *(v0 + 200);
LABEL_14:

    v28 = *(v0 + 88);
    v27 = *(v0 + 96);
    v29 = *(v0 + 72);
    v30 = *(v0 + 80);
    sub_20DD63784();
    sub_20DD63774();
    (*(v30 + 8))(v28, v29);
    v31 = sub_20DD63764();
    v32 = *(v31 - 8);
    v33 = (*(v32 + 48))(v27, 1, v31);
    v34 = *(v0 + 96);
    if (v33 == 1)
    {
      sub_20D9D76EC(*(v0 + 96), &qword_27C8453A0, &qword_20DD96F18);
      v7 = 0;
      v9 = 0xE000000000000000;
    }

    else
    {
      v7 = sub_20DD63754();
      v9 = v35;
      (*(v32 + 8))(v34, v31);
    }

    v36 = *(v0 + 64);
    v37 = *(v0 + 168);
    sub_20DD64C54();
    v38 = v36;

    v39 = sub_20DD64C24();
    v40 = sub_20DD65384();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = *(v0 + 192);
      v57 = *(v0 + 128);
      v59 = *(v0 + 176);
      v55 = *(v0 + 104);
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v60 = v43;
      *v42 = 136315650;
      *(v42 + 4) = sub_20D9E0B38(0x69676552656D6F68, 0xEC00000029286E6FLL, &v60);
      *(v42 + 12) = 2080;
      *(v42 + 14) = sub_20D9E0B38(v7, v9, &v60);
      *(v42 + 22) = 2080;
      v44 = [v41 name];
      v45 = sub_20DD64EB4();
      v47 = v46;

      v48 = sub_20D9E0B38(v45, v47, &v60);

      *(v42 + 24) = v48;
      _os_log_impl(&dword_20D9BF000, v39, v40, "%s falling back to device region code: %s for %s", v42, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x20F327D10](v43, -1, -1);
      MEMORY[0x20F327D10](v42, -1, -1);

      v59(v57, v55);
    }

    else
    {
      v49 = *(v0 + 176);
      v50 = *(v0 + 128);
      v51 = *(v0 + 104);

      v49(v50, v51);
    }

    goto LABEL_20;
  }

  v5 = *(v0 + 168);
  v6 = *(v0 + 64);
  v7 = sub_20DD64EB4();
  v9 = v8;

  v10 = v5;
  sub_20DD64C54();
  v11 = v6;

  v12 = sub_20DD64C24();
  v13 = sub_20DD65384();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = *(v0 + 192);
    v56 = *(v0 + 136);
    v58 = *(v0 + 176);
    v54 = *(v0 + 104);
    v53 = *(v0 + 200);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v60 = v16;
    *v15 = 136315650;
    *(v15 + 4) = sub_20D9E0B38(0x69676552656D6F68, 0xEC00000029286E6FLL, &v60);
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_20D9E0B38(v7, v9, &v60);
    *(v15 + 22) = 2080;
    v17 = [v14 name];
    v18 = sub_20DD64EB4();
    v20 = v19;

    v21 = sub_20D9E0B38(v18, v20, &v60);

    *(v15 + 24) = v21;
    _os_log_impl(&dword_20D9BF000, v12, v13, "%s Reverse geocode succeeded, region code: %s for %s", v15, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F327D10](v16, -1, -1);
    MEMORY[0x20F327D10](v15, -1, -1);

    v58(v56, v54);
  }

  else
  {
    v23 = *(v0 + 176);
    v24 = *(v0 + 136);
    v25 = *(v0 + 104);

    v23(v24, v25);
  }

  v26 = (*(v0 + 64) + *(v0 + 184));
  *v26 = v7;
  v26[1] = v9;

LABEL_20:

  v52 = *(v0 + 8);

  return v52(v7, v9);
}

uint64_t sub_20DAB04B8()
{
  v62 = v0;
  v1 = *(v0 + 224);
  v2 = *(v0 + 64);
  v3 = *(v0 + 168);
  sub_20DD64C54();
  v4 = v2;
  v5 = v1;
  v6 = sub_20DD64C24();
  v7 = sub_20DD65384();

  if (os_log_type_enabled(v6, v7))
  {
    v53 = *(v0 + 224);
    v54 = *(v0 + 200);
    v52 = *(v0 + 192);
    v57 = *(v0 + 120);
    v59 = *(v0 + 176);
    v55 = *(v0 + 104);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v61 = v9;
    *v8 = 136315650;
    *(v8 + 4) = sub_20D9E0B38(0x69676552656D6F68, 0xEC00000029286E6FLL, &v61);
    *(v8 + 12) = 2080;
    swift_getErrorValue();
    v10 = sub_20DD659F4();
    v12 = sub_20D9E0B38(v10, v11, &v61);

    *(v8 + 14) = v12;
    *(v8 + 22) = 2080;
    v13 = [v52 name];
    v14 = sub_20DD64EB4();
    v16 = v15;

    v17 = sub_20D9E0B38(v14, v16, &v61);

    *(v8 + 24) = v17;
    _os_log_impl(&dword_20D9BF000, v6, v7, "%s Reverse geocode error: %s for %s", v8, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F327D10](v9, -1, -1);
    MEMORY[0x20F327D10](v8, -1, -1);

    v59(v57, v55);
  }

  else
  {
    v18 = *(v0 + 224);
    v19 = *(v0 + 176);
    v20 = *(v0 + 120);
    v21 = *(v0 + 104);

    v19(v20, v21);
  }

  v22 = *(v0 + 88);
  v23 = *(v0 + 96);
  v24 = *(v0 + 72);
  v25 = *(v0 + 80);
  sub_20DD63784();
  sub_20DD63774();
  (*(v25 + 8))(v22, v24);
  v26 = sub_20DD63764();
  v27 = *(v26 - 8);
  v28 = (*(v27 + 48))(v23, 1, v26);
  v29 = *(v0 + 96);
  if (v28 == 1)
  {
    sub_20D9D76EC(*(v0 + 96), &qword_27C8453A0, &qword_20DD96F18);
    v30 = 0;
    v31 = 0xE000000000000000;
  }

  else
  {
    v30 = sub_20DD63754();
    v31 = v32;
    (*(v27 + 8))(v29, v26);
  }

  v33 = v30;
  v34 = *(v0 + 64);
  v35 = *(v0 + 168);
  sub_20DD64C54();
  v36 = v34;

  v37 = sub_20DD64C24();
  v38 = sub_20DD65384();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = *(v0 + 192);
    v58 = *(v0 + 128);
    v60 = *(v0 + 176);
    v56 = *(v0 + 104);
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v61 = v41;
    *v40 = 136315650;
    *(v40 + 4) = sub_20D9E0B38(0x69676552656D6F68, 0xEC00000029286E6FLL, &v61);
    *(v40 + 12) = 2080;
    *(v40 + 14) = sub_20D9E0B38(v33, v31, &v61);
    *(v40 + 22) = 2080;
    v42 = [v39 name];
    v43 = sub_20DD64EB4();
    v45 = v44;

    v46 = sub_20D9E0B38(v43, v45, &v61);

    *(v40 + 24) = v46;
    _os_log_impl(&dword_20D9BF000, v37, v38, "%s falling back to device region code: %s for %s", v40, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F327D10](v41, -1, -1);
    MEMORY[0x20F327D10](v40, -1, -1);

    v60(v58, v56);
  }

  else
  {
    v47 = *(v0 + 176);
    v48 = *(v0 + 128);
    v49 = *(v0 + 104);

    v47(v48, v49);
  }

  v50 = *(v0 + 8);

  return v50(v33, v31);
}

uint64_t sub_20DAB0BE0(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_20DAB0C88;

  return sub_20DAAF09C();
}

uint64_t sub_20DAB0C88(uint64_t a1, uint64_t a2)
{
  v3 = *(*v2 + 24);
  v4 = *(*v2 + 16);
  v8 = *v2;

  v5 = sub_20DD64E74();

  (v3)[2](v3, v5);

  _Block_release(v3);
  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_20DAB0E10(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_20DD64C44();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DAB0ED0, 0, 0);
}

uint64_t sub_20DAB0ED0()
{
  v1 = (v0[3] + OBJC_IVAR____TtC4Home19HFHomeEnergyManager_geocoder);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_0(v1, v2);
  v7 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_20DAB1008;
  v5 = v0[2];

  return v7(v5, v2, v3);
}

uint64_t sub_20DAB1008(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 64) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_20DAB1158, 0, 0);
  }
}

uint64_t sub_20DAB1158()
{
  v19 = v2;
  v3 = v2[8];
  if (!(v3 >> 62))
  {
    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_12:

    goto LABEL_13;
  }

  if (!sub_20DD655B4())
  {
    goto LABEL_12;
  }

LABEL_3:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x20F326680](0, v2[8]);
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_19;
    }

    v4 = *(v2[8] + 32);
  }

  v5 = [v4 ISOcountryCode];

  if (!v5)
  {
LABEL_13:
    v0 = 0;
    v1 = 0xE000000000000000;
    goto LABEL_14;
  }

  v0 = sub_20DD64EB4();
  v1 = v6;

  if (qword_280E01ED8 != -1)
  {
LABEL_19:
    swift_once();
  }

  v7 = qword_280E03EB0;
  sub_20DD64C54();

  v8 = sub_20DD64C24();
  v9 = sub_20DD65384();

  v10 = os_log_type_enabled(v8, v9);
  v12 = v2[5];
  v11 = v2[6];
  v13 = v2[4];
  if (v10)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v18 = v15;
    *v14 = 136315394;
    *(v14 + 4) = sub_20D9E0B38(0xD000000000000015, 0x800000020DD9AFD0, &v18);
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_20D9E0B38(v0, v1, &v18);
    _os_log_impl(&dword_20D9BF000, v8, v9, "%s returning country code: %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F327D10](v15, -1, -1);
    MEMORY[0x20F327D10](v14, -1, -1);
  }

  (*(v12 + 8))(v11, v13);
LABEL_14:

  v16 = v2[1];

  return v16(v0, v1);
}

uint64_t sub_20DAB140C()
{
  v1 = sub_20DD64D74();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20DD64D94();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D9D7510(0, &unk_280E020E0, 0x277D85C78);
  v9 = sub_20DD653C4();
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  aBlock[4] = sub_20DAB5C98;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20DA89A38;
  aBlock[3] = &block_descriptor_215;
  v11 = _Block_copy(aBlock);
  v12 = v0;

  sub_20DD64D84();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_20DAB5CB8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C844F20, &unk_20DD96990);
  sub_20DA93C1C();
  sub_20DD65504();
  MEMORY[0x20F326330](0, v8, v4, v11);
  _Block_release(v11);

  (*(v2 + 8))(v4, v1);
  return (*(v6 + 8))(v8, v5);
}

void sub_20DAB16A0()
{
  v0 = [objc_opt_self() sharedDispatcher];
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3[4] = sub_20DAB5D10;
  v3[5] = v1;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 1107296256;
  v3[2] = sub_20DA2E46C;
  v3[3] = &block_descriptor_221;
  v2 = _Block_copy(v3);

  [v0 dispatchHomeObserverMessage:v2 sender:0];
  _Block_release(v2);
}

void sub_20DAB17A8(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC4Home19HFHomeEnergyManager_home);

    if ([a1 respondsToSelector_])
    {
      [a1 homeDidUpdateHomeEnergyManagerEnabled_];
    }
  }
}

uint64_t sub_20DAB1848(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_20DAB1868, 0, 0);
}

uint64_t sub_20DAB1868()
{
  sub_20DD64BC4();
  v1 = sub_20DD64B94();
  v0[4] = v1;
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_20DA085C0;
  v4 = v0[2];
  v3 = v0[3];

  return MEMORY[0x282172650](v4, v3, v1);
}

uint64_t sub_20DAB1AA0(uint64_t a1, void *aBlock)
{
  v2[2] = _Block_copy(aBlock);
  v2[3] = sub_20DD64EB4();
  v2[4] = v3;

  return MEMORY[0x2822009F8](sub_20DAB1B1C, 0, 0);
}

uint64_t sub_20DAB1B1C()
{
  sub_20DD64BC4();
  v1 = sub_20DD64B94();
  v0[5] = v1;
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_20DAB1BD0;
  v4 = v0[3];
  v3 = v0[4];

  return MEMORY[0x282172650](v4, v3, v1);
}

uint64_t sub_20DAB1BD0(void *a1)
{
  v4 = *v2;
  *(v4 + 56) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_20DAB1D4C, 0, 0);
  }

  else
  {
    v5 = *(v4 + 16);

    (v5)[2](v5, a1, 0);
    _Block_release(v5);

    v6 = *(v4 + 8);

    return v6();
  }
}

uint64_t sub_20DAB1D4C()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 16);

  v3 = sub_20DD63494();

  (v2)[2](v2, 0, v3);
  _Block_release(v2);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_20DAB1DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 128) = v19;
  *(v9 + 136) = v8;
  *(v9 + 96) = v17;
  *(v9 + 112) = v18;
  *(v9 + 80) = v16;
  *(v9 + 64) = a7;
  *(v9 + 72) = a8;
  *(v9 + 48) = a5;
  *(v9 + 56) = a6;
  *(v9 + 32) = a3;
  *(v9 + 40) = a4;
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v12 = sub_20DD64C44();
  *(v9 + 144) = v12;
  *(v9 + 152) = *(v12 - 8);
  *(v9 + 160) = swift_task_alloc();
  *(v9 + 168) = swift_task_alloc();
  sub_20DD64AE4();

  v13 = swift_task_alloc();
  *(v9 + 176) = v13;
  *v13 = v9;
  v13[1] = sub_20DAB1F50;

  return MEMORY[0x28215C940](a1, a2);
}

uint64_t sub_20DAB1F50(uint64_t a1)
{
  *(*v1 + 184) = a1;

  return MEMORY[0x2822009F8](sub_20DAB2050, 0, 0);
}

uint64_t sub_20DAB2050()
{
  if (v0[23])
  {
    v15 = *MEMORY[0x277D07658] + MEMORY[0x277D07658];
    v1 = swift_task_alloc();
    v0[24] = v1;
    *v1 = v0;
    v1[1] = sub_20DAB22CC;

    __asm { BR              X8 }
  }

  if (qword_280E01ED8 != -1)
  {
    swift_once();
  }

  v2 = qword_280E03EB0;
  sub_20DD64C54();

  v3 = sub_20DD64C24();
  v4 = sub_20DD65364();

  v5 = os_log_type_enabled(v3, v4);
  v7 = v0[19];
  v6 = v0[20];
  v8 = v0[18];
  if (v5)
  {
    v10 = v0[2];
    v9 = v0[3];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_20D9E0B38(v10, v9, &v17);
    _os_log_impl(&dword_20D9BF000, v3, v4, "Error fetching Energy Site for %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x20F327D10](v12, -1, -1);
    MEMORY[0x20F327D10](v11, -1, -1);
  }

  (*(v7 + 8))(v6, v8);

  v13 = v0[1];

  return v13(0);
}

uint64_t sub_20DAB22CC(char a1)
{
  v3 = *v2;
  *(v3 + 216) = a1;
  *(v3 + 200) = v1;

  if (v1)
  {
    v4 = sub_20DAB27DC;
  }

  else
  {
    v4 = sub_20DAB23E4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_20DAB23E4()
{
  v17 = v0;
  if (qword_280E01ED8 != -1)
  {
    swift_once();
  }

  v1 = qword_280E03EB0;
  sub_20DD64C54();
  v2 = sub_20DD64C24();
  v3 = sub_20DD65384();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 216);
    v5 = *(v0 + 168);
    v6 = *(v0 + 144);
    v7 = *(v0 + 152);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_20D9E0B38(0xD00000000000008DLL, 0x800000020DD9AFF0, &v16);
    *(v8 + 12) = 1024;
    *(v8 + 14) = v4;
    _os_log_impl(&dword_20D9BF000, v2, v3, "%s Created utility subscription: %{BOOL}d", v8, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x20F327D10](v9, -1, -1);
    MEMORY[0x20F327D10](v8, -1, -1);

    (*(v7 + 8))(v5, v6);
  }

  else
  {
    v10 = *(v0 + 168);
    v11 = *(v0 + 144);
    v12 = *(v0 + 152);

    (*(v12 + 8))(v10, v11);
  }

  if (*(v0 + 216) == 1)
  {
    v13 = swift_task_alloc();
    *(v0 + 208) = v13;
    *v13 = v0;
    v13[1] = sub_20DAB2668;

    return sub_20DAA53D0(1);
  }

  else
  {

    v15 = *(v0 + 8);

    return v15(0);
  }
}

uint64_t sub_20DAB2668()
{

  return MEMORY[0x2822009F8](sub_20DAB2764, 0, 0);
}

uint64_t sub_20DAB2764()
{

  v1 = *(v0 + 8);

  return v1(1);
}

uint64_t sub_20DAB27DC()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_20DAB2A3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, void *a10)
{
  v10[2] = a10;
  v11 = sub_20DD636C4();
  v10[3] = v11;
  v10[4] = *(v11 - 8);
  v10[5] = swift_task_alloc();
  v10[6] = _Block_copy(a9);
  v12 = sub_20DD64EB4();
  v31 = v13;
  v32 = v12;
  v10[7] = v13;
  v14 = sub_20DD64EB4();
  v29 = v15;
  v30 = v14;
  v10[8] = v15;
  v28 = sub_20DD64EB4();
  v17 = v16;
  v10[9] = v16;
  v26 = sub_20DD64EB4();
  v19 = v18;
  v10[10] = v18;
  sub_20DD63674();
  sub_20DD64EB4();
  v10[11] = v20;
  sub_20DD64EB4();
  v10[12] = v21;
  if (a8)
  {
    sub_20DD64EB4();
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  v10[13] = v23;
  a10;
  v24 = swift_task_alloc();
  v10[14] = v24;
  *v24 = v10;
  v24[1] = sub_20DAB2C64;

  return sub_20DAB1DFC(v32, v31, v30, v29, v28, v17, v26, v19);
}

uint64_t sub_20DAB2C64(char a1)
{
  v12 = *v2;
  v3 = *v2;
  v4 = *v2;

  v5 = v3[6];
  v6 = v3[2];
  (*(v3[4] + 8))(v3[5], v3[3]);

  v7 = v1;

  if (v1)
  {
    v8 = sub_20DD63494();

    (*(v5 + 16))(v5, 0, v8);
  }

  else
  {
    (*(v5 + 16))(v5, a1 & 1, 0);
  }

  _Block_release(v12[6]);

  v9 = v4[1];

  return v9();
}

id HFHomeEnergyManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HFHomeEnergyManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HFHomeEnergyManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20DAB3098()
{
  result = sub_20DD64E74();
  qword_280E020D0 = result;
  return result;
}

uint64_t sub_20DAB30F4()
{
  result = sub_20DD64E74();
  qword_280E020B8 = result;
  return result;
}

uint64_t sub_20DAB3150(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 152) = a1;
  *(v2 + 160) = v3;
  return MEMORY[0x2822009F8](sub_20DAB3174, 0, 0);
}

uint64_t sub_20DAB3174()
{
  v2 = v0[19];
  v1 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_20DAB329C;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8453B0, &qword_20DD97008);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_20DAA8B70;
  v0[13] = &block_descriptor_206;
  v0[14] = v3;
  [v1 reverseGeocodeLocation:v2 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_20DAB329C(uint64_t a1)
{
  v2 = *v1;
  if (*(*v1 + 48))
  {
    swift_willThrow();
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {
    v5 = *(*v1 + 144);
    v6 = *(v2 + 8);

    return v6(v5);
  }
}

uint64_t sub_20DAB33DC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_20D9D77C4;

  return v6();
}

uint64_t sub_20DAB34C4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_20D9C76B4;

  return v7();
}

uint64_t sub_20DAB35AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  sub_20DA9A680(a3, v23 - v10);
  v12 = sub_20DD65114();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_20D9D76EC(v11, &qword_27C8443F0, &qword_20DD93820);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_20DD65104();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_20DD65094();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_20DD64EF4() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_20D9D76EC(a3, &qword_27C8443F0, &qword_20DD93820);

    return v21;
  }

LABEL_8:
  sub_20D9D76EC(a3, &qword_27C8443F0, &qword_20DD93820);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

id sub_20DAB3898(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v15[3] = sub_20D9D7510(0, &unk_280E02148, 0x277CBFBE8);
  v15[4] = &protocol witness table for CLGeocoder;
  v15[0] = a2;
  v14[3] = type metadata accessor for RealUtilityServices();
  v14[4] = &protocol witness table for RealUtilityServices;
  v14[0] = a3;
  v8 = &a4[OBJC_IVAR____TtC4Home19HFHomeEnergyManager_cachedRegionCode];
  *v8 = 0;
  v8[1] = 0;
  a4[OBJC_IVAR____TtC4Home19HFHomeEnergyManager_isGridForecastSupported] = 2;
  *&a4[OBJC_IVAR____TtC4Home19HFHomeEnergyManager_temporaryLocation] = 0;
  v9 = &a4[OBJC_IVAR____TtC4Home19HFHomeEnergyManager_homeElectricitySupportedCache];
  *v9 = 0xD00000000000001DLL;
  v9[1] = 0x800000020DD9B2D0;
  v10 = &a4[OBJC_IVAR____TtC4Home19HFHomeEnergyManager_hasUtilitySubscriptionCache];
  *v10 = 0xD00000000000001ELL;
  v10[1] = 0x800000020DD9B500;
  a4[OBJC_IVAR____TtC4Home19HFHomeEnergyManager_cachedHasEnergySite] = 0;
  a4[OBJC_IVAR____TtC4Home19HFHomeEnergyManager_hasElectricityRatesEnabled] = 0;
  *&a4[OBJC_IVAR____TtC4Home19HFHomeEnergyManager_home] = a1;
  sub_20D9FF4D0(v15, &a4[OBJC_IVAR____TtC4Home19HFHomeEnergyManager_geocoder]);
  sub_20D9FF4D0(v14, &a4[OBJC_IVAR____TtC4Home19HFHomeEnergyManager_utilityService]);
  v13.receiver = a4;
  v13.super_class = type metadata accessor for HFHomeEnergyManager();
  v11 = objc_msgSendSuper2(&v13, sel_init);
  __swift_destroy_boxed_opaque_existential_0(v14);
  __swift_destroy_boxed_opaque_existential_0(v15);
  return v11;
}

id sub_20DAB3A08(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24[3] = a5;
  v24[4] = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a2, a5);
  v23[3] = a6;
  v23[4] = a8;
  v16 = __swift_allocate_boxed_opaque_existential_1(v23);
  (*(*(a6 - 8) + 32))(v16, a3, a6);
  v17 = &a4[OBJC_IVAR____TtC4Home19HFHomeEnergyManager_cachedRegionCode];
  *v17 = 0;
  v17[1] = 0;
  a4[OBJC_IVAR____TtC4Home19HFHomeEnergyManager_isGridForecastSupported] = 2;
  *&a4[OBJC_IVAR____TtC4Home19HFHomeEnergyManager_temporaryLocation] = 0;
  v18 = &a4[OBJC_IVAR____TtC4Home19HFHomeEnergyManager_homeElectricitySupportedCache];
  *v18 = 0xD00000000000001DLL;
  v18[1] = 0x800000020DD9B2D0;
  v19 = &a4[OBJC_IVAR____TtC4Home19HFHomeEnergyManager_hasUtilitySubscriptionCache];
  *v19 = 0xD00000000000001ELL;
  v19[1] = 0x800000020DD9B500;
  a4[OBJC_IVAR____TtC4Home19HFHomeEnergyManager_cachedHasEnergySite] = 0;
  a4[OBJC_IVAR____TtC4Home19HFHomeEnergyManager_hasElectricityRatesEnabled] = 0;
  *&a4[OBJC_IVAR____TtC4Home19HFHomeEnergyManager_home] = a1;
  sub_20D9FF4D0(v24, &a4[OBJC_IVAR____TtC4Home19HFHomeEnergyManager_geocoder]);
  sub_20D9FF4D0(v23, &a4[OBJC_IVAR____TtC4Home19HFHomeEnergyManager_utilityService]);
  v22.receiver = a4;
  v22.super_class = type metadata accessor for HFHomeEnergyManager();
  v20 = objc_msgSendSuper2(&v22, sel_init);
  __swift_destroy_boxed_opaque_existential_0(v23);
  __swift_destroy_boxed_opaque_existential_0(v24);
  return v20;
}

id sub_20DAB3BCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23 = a7;
  v24 = a8;
  v13 = *(a6 - 8);
  v14 = MEMORY[0x28223BE20](a1);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v14);
  v20 = &v23 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = objc_allocWithZone(type metadata accessor for HFHomeEnergyManager());
  (*(v18 + 16))(v20, a2, a5);
  (*(v13 + 16))(v16, a3, a6);
  return sub_20DAB3A08(a1, v20, v16, v21, a5, a6, v23, v24);
}

uint64_t sub_20DAB3D64()
{
  v0 = sub_20DD63794();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8453A0, &qword_20DD96F18);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  sub_20DD63784();
  sub_20DD63774();
  (*(v1 + 8))(v3, v0);
  v7 = sub_20DD63764();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_20D9D76EC(v6, &qword_27C8453A0, &qword_20DD96F18);
  }

  else
  {
    sub_20DD63754();
    (*(v8 + 8))(v6, v7);
  }

  v9 = sub_20DD638C4();

  return v9 & 1;
}

uint64_t keypath_get_33Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  result = swift_beginAccess();
  *a3 = *(v4 + v5);
  return result;
}

uint64_t dispatch thunk of Geocoding.reverseGeocodeLocation(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_20D9D77BC;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of HFHomeEnergyManager.updateHomeEnergyAvailableFeatures()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x130);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_20D9D7010;

  return v5();
}

uint64_t dispatch thunk of HFHomeEnergyManager.updateIncludeElectricityRates(_:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x1A8);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_20DAB5D28;

  return v7(a1);
}

uint64_t dispatch thunk of HFHomeEnergyManager.isHomeElectricitySupportedInHomeRegion()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x1B0);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_20DAB5D28;

  return v5();
}

uint64_t dispatch thunk of HFHomeEnergyManager.utilityDetails()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x1B8);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_20DA473A0;

  return v5();
}

uint64_t dispatch thunk of HFHomeEnergyManager.revokeSubscription()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x1C0);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_20DAB5D28;

  return v5();
}

uint64_t dispatch thunk of HFHomeEnergyManager.isGridForecastSupportedInHomeRegion()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x1D0);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_20DA473A0;

  return v5();
}

uint64_t dispatch thunk of HFHomeEnergyManager.homeRegion()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x1D8);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_20DAB4DFC;

  return v5();
}

uint64_t sub_20DAB4DFC(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t dispatch thunk of HFHomeEnergyManager.lookupCountryCode(_:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x1E8);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_20DAB5074;

  return v7(a1);
}

uint64_t sub_20DAB5074(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t dispatch thunk of static HFHomeEnergyManager.utilityConfiguration(_:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(v2 + 504) + **(v2 + 504));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_20D9D7010;

  return v8(a1, a2);
}

uint64_t dispatch thunk of HFHomeEnergyManager.createUtilitySubscription(homeID:utilityID:serviceLocationID:accessToken:accessTokenExpirationDate:refreshToken:address:utilityCustomerName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v18 = *((*MEMORY[0x277D85000] & *v15) + 0x200);
  v21 = (v18 + *v18);
  v19 = swift_task_alloc();
  *(v16 + 16) = v19;
  *v19 = v16;
  v19[1] = sub_20D9D77BC;

  return v21(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15);
}

uint64_t sub_20DAB5454(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844500, &qword_20DD97000);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_20DAB54C4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_20D9D77C4;

  JUMPOUT(0x20DAB2A3CLL);
}

uint64_t sub_20DAB55B8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_20D9D77C4;

  return sub_20DA207C8(a1, v4);
}

uint64_t sub_20DAB5670(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_20D9C76B4;

  return sub_20DA207C8(a1, v4);
}

uint64_t sub_20DAB5728()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_20D9D77C4;

  return sub_20DAB0BE0(v2, v3);
}

uint64_t sub_20DAB57D4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_20D9C76B4;

  return sub_20DAAEEAC(v2, v3);
}

uint64_t sub_20DAB5880()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_20D9D77C4;

  return sub_20DAAE828(v2, v3);
}

uint64_t sub_20DAB592C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_20D9D77C4;

  return sub_20DAAD194(v2, v3);
}

uint64_t sub_20DAB59D8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_20D9D77C4;

  return sub_20DAAA934(v2, v3);
}

uint64_t sub_20DAB5A84()
{
  v2 = *(v0 + 16);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_20D9D77C4;

  return sub_20DAA9BC0(v2, v4, v3);
}

uint64_t sub_20DAB5B38()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_20D9D77C4;

  return sub_20DAA4AA8(v2, v3);
}

uint64_t sub_20DAB5BE4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_20D9D77C4;

  return sub_20DAB1AA0(v2, v3);
}

uint64_t block_copy_helper_213(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_20DAB5CB8()
{
  result = qword_280E02168;
  if (!qword_280E02168)
  {
    sub_20DD64D74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E02168);
  }

  return result;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_20DABE150(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_20DABED88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_20DAC0B90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_20DAC47B4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_20DAC5284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_20DAC5FDC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_20DAC8FDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DACB360(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DACCBD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  objc_destroyWeak((v24 + 56));
  objc_destroyWeak(&location);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_20DAD3FC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t HFPrimaryStateFromBOOL(int a1)
{
  if (a1)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t HFToggledPrimaryState(uint64_t a1)
{
  if (a1 == 2)
  {
    return 1;
  }

  else
  {
    return 2 * (a1 == 1);
  }
}

__CFString *NSStringFromHFRemoteAccessState(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"NotSet";
  }

  else
  {
    return off_277DF3928[a1 - 1];
  }
}

__CFString *HFLocalizedStringFromHMHomeInvitationState(uint64_t a1)
{
  if ((a1 - 1) > 6)
  {
    v2 = &stru_2824B1A78;
  }

  else
  {
    v2 = _HFLocalizedStringWithDefaultValue(off_277DF3948[a1 - 1], off_277DF3948[a1 - 1], 1);
  }

  return v2;
}

void sub_20DAD73B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *HFCAPackageStateForHFPrimaryState(uint64_t a1)
{
  v1 = &HFCAPackageStateOn;
  if (a1 != 2)
  {
    v1 = &HFCAPackageStateOff;
  }

  return *v1;
}

__CFString *HFVibrantStateForHFCAPackageState(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (HFCAPackageStateOn == v1)
  {
    v3 = HFCAPackageStateOnVibrant;
  }

  else if (HFCAPackageStateActivated == v1)
  {
    v3 = HFCAPackageStateActivatedVibrant;
  }

  else
  {
    v3 = v1;
  }

  v4 = v3;

  return v3;
}

__CFString *HFCAPackageAlternateStateForHFCAPackageState(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (HFCAPackageStateOn == v1)
  {
    v3 = HFCAPackageStateOnAlternate;
  }

  else if (HFCAPackageStateOff == v1)
  {
    v3 = HFCAPackageStateOffAlternate;
  }

  else if (HFCAPackageStateActivated == v1)
  {
    v3 = HFCAPackageStateActivatedAlternate;
  }

  else
  {
    v3 = v1;
  }

  v4 = v3;

  return v3;
}

void sub_20DADC48C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_20DADD594(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DADD830(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DAE6568(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DAEA430(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_20DAEAC6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DAEB294(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, ...)
{
  va_start(va, a27);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v27 - 152), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_20DAF07F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_20DAF0990(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_20DAF68F4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 64));
  _Unwind_Resume(a1);
}

void FetchNaturalLightColorTemperatureForBrightness(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __FetchNaturalLightColorTemperatureForBrightness_block_invoke;
  v9[3] = &unk_277DF49C0;
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  [v8 fetchNaturalLightColorTemperatureForBrightness:a1 completion:v9];
}

void __FetchNaturalLightColorTemperatureForBrightness_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = HFLogForCategory(0x3DuLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v11 = 138412802;
      v12 = v8;
      v13 = 2112;
      v14 = v5;
      v15 = 2112;
      v16 = v6;
      _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, "Fetch natural light color temp for profile: %@ %@ error: %@", &v11, 0x20u);
    }

    v9 = 0;
  }

  else
  {
    [v5 floatValue];
    v9 = HFGetUIColorFromMired(v10);
  }

  (*(*(a1 + 40) + 16))();
}

id _HFFaucetIconSet()
{
  v0 = [[HFCAPackageIconDescriptor alloc] initWithPackageIdentifier:@"HFCAPackageIconIdentifierFaucet"];
  v1 = [HFServiceIconSet setWithDefaultIcon:v0];

  return v1;
}

id _HFSprinklerIconSet()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = @"HFCAPackageIconIdentifierIrrigationController";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v1 = [[HFCAPackageIconDescriptor alloc] initWithPackageIdentifier:@"HFCAPackageIconIdentifierSprinkler"];
  v2 = [v0 na_map:&__block_literal_global_223];
  v3 = [HFServiceIconSet setWithDefaultIcon:v1 alternateIcons:v2];

  return v3;
}

id _HFFanServiceIconSet()
{
  v5[2] = *MEMORY[0x277D85DE8];
  v5[0] = @"HFCAPackageIconIdentifierFloorFan";
  v5[1] = @"HFCAPackageIconIdentifierCeilingFan";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:2];
  v1 = [[HFCAPackageIconDescriptor alloc] initWithPackageIdentifier:@"HFCAPackageIconIdentifierDeskFan"];
  v2 = [v0 na_map:&__block_literal_global_223];
  v3 = [HFServiceIconSet setWithDefaultIcon:v1 alternateIcons:v2];

  return v3;
}

id _HFThermostatIconSet()
{
  v0 = +[HFFormatterManager sharedInstance];
  v1 = [v0 temperatureFormatter];

  [v1 setInputIsCelsius:0];
  v2 = [v1 stringForObjectValue:&unk_282523568];
  v3 = [[HFTemperatureIconDescriptor alloc] initWithFormattedTemperature:v2 heatingCoolingMode:2 targetHeatingCoolingMode:2];
  v4 = [HFServiceIconSet setWithDefaultIcon:v3];

  return v4;
}

id _HFProgrammableSwitchIconSet()
{
  v0 = [[HFCAPackageIconDescriptor alloc] initWithPackageIdentifier:@"HFCAPackageIconIdentifierProgrammableSwitch"];
  v1 = [HFServiceIconSet setWithDefaultIcon:v0];

  return v1;
}

id _HFNetworkRouterIconSet()
{
  v0 = [[HFCAPackageIconDescriptor alloc] initWithPackageIdentifier:@"HFCAPackageIconIdentifierWiFiRouter"];
  v1 = [HFServiceIconSet setWithDefaultIcon:v0];

  return v1;
}

void sub_20DAFD2BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_20DB00A80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_20DB059AC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_20DB0A3B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DB0B2A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DB0B77C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void sub_20DB0BEF4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_20DB0C214(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_20DB0D350(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_20DB0D7A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_20DB0DF10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t HMPresenceEventUserTypeFromSelectedUserCollectionType(unint64_t a1)
{
  if (a1 < 3)
  {
    return qword_20DD972F8[a1];
  }

  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1];
  NSLog(&cfstr_UnexpectedUser.isa, v2);

  return 2;
}

uint64_t HFSelectedUserCollectionTypeFromPresenceEventUserType(uint64_t a1)
{
  if ((a1 - 1) < 3)
  {
    return qword_20DD97310[a1 - 1];
  }

  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1];
  NSLog(&cfstr_UnknownPresenc.isa, v2);

  return 0;
}

void sub_20DB15978(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, id a16)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a16);
  _Unwind_Resume(a1);
}

__CFString *HFStringFromHFLocationEventType(unint64_t a1)
{
  if (a1 < 3)
  {
    return off_277DF56D8[a1];
  }

  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString * _Nonnull HFStringFromHFLocationEventType(HFLocationEventType)"];
  [v2 handleFailureInFunction:v3 file:@"HFLocationEventAdditions.m" lineNumber:29 description:@"Unknown HFLocationEventType"];

  return &stru_2824B1A78;
}

__CFString *NSStringFromHFPresenceEventActivationGranularity(uint64_t a1)
{
  v1 = @"(unknown)";
  if (!a1)
  {
    v1 = @"ActivationGranularityUser";
  }

  if (a1 == 1)
  {
    return @"ActivationGranularityHome";
  }

  else
  {
    return v1;
  }
}

void sub_20DB1BA8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DB1C05C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_20DB1CE68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_20DB1F014(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_20DB202C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_20DB20838(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_20DB213A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location, ...)
{
  va_start(va, location);
  objc_destroyWeak((v22 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_20DB2232C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 88));
  _Unwind_Resume(a1);
}

void sub_20DB23658(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_20DB2445C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_20DB2465C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_20DB24930(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_20DB24AA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *NSStringFromHMHomeManagerDataSyncState(unint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  if (a1 >= 7)
  {
    v1 = [MEMORY[0x277CCACA8] stringWithFormat:@"Yet to stringify HMHomeManagerDataSyncState: %lu", a1];
    v2 = HFLogForCategory(0x27uLL);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v5 = v1;
      _os_log_error_impl(&dword_20D9BF000, v2, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    NSLog(&stru_2824B1958.isa, v1);
  }

  else
  {
    v1 = off_277DF5EC0[a1];
  }

  return v1;
}

__CFString *NSStringFromHMSoftwareUpdateState(unint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  if (a1 >= 6)
  {
    v1 = [MEMORY[0x277CCACA8] stringWithFormat:@"Yet to stringify HMSoftwareUpdateState: %lu", a1];
    v2 = HFLogForCategory(0x27uLL);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v5 = v1;
      _os_log_error_impl(&dword_20D9BF000, v2, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    NSLog(&stru_2824B1958.isa, v1);
  }

  else
  {
    v1 = off_277DF5EF8[a1];
  }

  return v1;
}

__CFString *NSStringFromHMSoftwareUpdateStatusV2(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  if ((a1 - 1) >= 0x12)
  {
    v1 = [MEMORY[0x277CCACA8] stringWithFormat:@"HMSoftwareUpdateStatusV2(%ld)", a1];
    v2 = HFLogForCategory(0x27uLL);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v5 = v1;
      _os_log_error_impl(&dword_20D9BF000, v2, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    NSLog(&stru_2824B1958.isa, v1);
  }

  else
  {
    v1 = off_277DF5F28[a1 - 1];
  }

  return v1;
}

__CFString *NSStringFromHMHomeInvitationState(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  if ((a1 - 1) >= 7)
  {
    v1 = [MEMORY[0x277CCACA8] stringWithFormat:@"Yet to stringify HMHomeInvitationState: %lu", a1];
    v2 = HFLogForCategory(0x27uLL);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v5 = v1;
      _os_log_error_impl(&dword_20D9BF000, v2, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    NSLog(&stru_2824B1958.isa, v1);
  }

  else
  {
    v1 = off_277DF5FB8[a1 - 1];
  }

  return v1;
}

void sub_20DB2B8F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9)
{
  if (a2 == 1)
  {
    v9 = objc_begin_catch(exception_object);
    v10 = HFLogForCategory(0x45uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      LODWORD(a9) = 138412290;
      *(&a9 + 4) = v9;
      _os_log_error_impl(&dword_20D9BF000, v10, OS_LOG_TYPE_ERROR, "Tried to decode something that didn't want to be decoded... : %@", &a9, 0xCu);
    }

    objc_end_catch();
    JUMPOUT(0x20DB2B8B0);
  }

  _Unwind_Resume(exception_object);
}

__CFString *NSStringFromNSPropertyListFormat(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  switch(a1)
  {
    case 1:
      v1 = @"NSPropertyListOpenStepFormat";
      break;
    case 200:
      v1 = @"NSPropertyListBinaryFormat_v1_0";
      break;
    case 100:
      v1 = @"NSPropertyListXMLFormat_v1_0";
      break;
    default:
      v1 = [MEMORY[0x277CCACA8] stringWithFormat:@"Yet to stringify NSPropertyListFormat: %lu", a1];
      v2 = HFLogForCategory(0x27uLL);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v5 = v1;
        _os_log_error_impl(&dword_20D9BF000, v2, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }

      NSLog(&stru_2824B1958.isa, v1);
      break;
  }

  return v1;
}

void sub_20DB2BC50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9)
{
  if (a2 == 1)
  {
    v9 = objc_begin_catch(exception_object);
    v10 = HFLogForCategory(0x45uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      LODWORD(a9) = 138412290;
      *(&a9 + 4) = v9;
      _os_log_error_impl(&dword_20D9BF000, v10, OS_LOG_TYPE_ERROR, "Tried to decode something that didn't want to be decoded... : %@", &a9, 0xCu);
    }

    objc_end_catch();
    JUMPOUT(0x20DB2BC0CLL);
  }

  _Unwind_Resume(exception_object);
}

__CFString *NSStringFromHMUserActionPredictionType(unint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  if (a1 >= 5)
  {
    v1 = [MEMORY[0x277CCACA8] stringWithFormat:@"Yet to stringify HMUserActionPredictionType: %lu", a1];
    v2 = HFLogForCategory(0x27uLL);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v5 = v1;
      _os_log_error_impl(&dword_20D9BF000, v2, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    NSLog(&stru_2824B1958.isa, v1);
  }

  else
  {
    v1 = off_277DF5FF0[a1];
  }

  return v1;
}

__CFString *NSStringFromHMMediaPlaybackState(unint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  if (a1 >= 7)
  {
    v1 = [MEMORY[0x277CCACA8] stringWithFormat:@"Yet to stringify HMMediaPlaybackState: %lu", a1];
    v2 = HFLogForCategory(0x27uLL);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v5 = v1;
      _os_log_error_impl(&dword_20D9BF000, v2, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    NSLog(&stru_2824B1958.isa, v1);
  }

  else
  {
    v1 = off_277DF6018[a1];
  }

  return v1;
}

__CFString *NSStringFromHMCameraStreamState(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  if ((a1 - 1) >= 4)
  {
    v1 = [MEMORY[0x277CCACA8] stringWithFormat:@"Yet to stringify HMCameraStreamState: %lu", a1];
    v2 = HFLogForCategory(0x27uLL);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v5 = v1;
      _os_log_error_impl(&dword_20D9BF000, v2, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    NSLog(&stru_2824B1958.isa, v1);
  }

  else
  {
    v1 = off_277DF6050[a1 - 1];
  }

  return v1;
}

__CFString *NSStringFromHMSymptomFixSessionState(unint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  if (a1 >= 3)
  {
    v1 = [MEMORY[0x277CCACA8] stringWithFormat:@"Yet to stringify HMSymptomFixSessionState: %lu", a1];
    v2 = HFLogForCategory(0x27uLL);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v5 = v1;
      _os_log_error_impl(&dword_20D9BF000, v2, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    NSLog(&stru_2824B1958.isa, v1);
  }

  else
  {
    v1 = off_277DF6070[a1];
  }

  return v1;
}

__CFString *NSStringFromConfigurationState(unint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  if (a1 >= 4)
  {
    v1 = [MEMORY[0x277CCACA8] stringWithFormat:@"Yet to stringify HMServiceConfigurationState: %lu", a1];
    v2 = HFLogForCategory(0x27uLL);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v5 = v1;
      _os_log_error_impl(&dword_20D9BF000, v2, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    NSLog(&stru_2824B1958.isa, v1);
  }

  else
  {
    v1 = off_277DF6088[a1];
  }

  return v1;
}

__CFString *NSStringFromBooleanValue(int a1)
{
  if (a1)
  {
    return @"YES";
  }

  else
  {
    return @"NO";
  }
}

__CFString *NSStringFromNSOperationQueuePriority(uint64_t a1)
{
  v1 = __ROR8__(a1 + 8, 2);
  if (v1 > 4)
  {
    return @"Unknown";
  }

  else
  {
    return off_277DF60A8[v1];
  }
}

id HFDescriptionForBitmask(unint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __HFDescriptionForBitmask_block_invoke;
  v18 = &unk_277DF5EA0;
  v5 = v3;
  v20 = v5;
  v6 = v4;
  v19 = v6;
  v7 = &v15;
  if (a1)
  {
    v8 = 0;
    v21 = 0;
    v9 = vcnt_s8(a1);
    v9.i16[0] = vaddlv_u8(v9);
    v10 = v9.i32[0];
    do
    {
      if (((1 << v8) & a1) != 0)
      {
        (v17)(v7);
        if (v21)
        {
          break;
        }

        --v10;
      }

      if (v8 > 0x3E)
      {
        break;
      }

      ++v8;
    }

    while (v10 > 0);
  }

  v11 = MEMORY[0x277CCACA8];
  v12 = [v6 componentsJoinedByString:{@", "}];
  v13 = [v11 stringWithFormat:@"{%@}", v12, v15, v16];

  return v13;
}

void __HFDescriptionForBitmask_block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = (*(*(a1 + 40) + 16))();
  v5 = *(a1 + 32);
  v7 = v4;
  if (v4)
  {
    [v5 addObject:v4];
  }

  else
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown(%lu)", a2];
    [v5 addObject:v6];
  }
}

void sub_20DB2DE24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DB2E1E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_20DB3201C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 160));
  _Unwind_Resume(a1);
}

void sub_20DB34F74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, id a44)
{
  objc_destroyWeak((v44 + 48));
  objc_destroyWeak((v46 + 48));
  objc_destroyWeak((v45 + 48));
  objc_destroyWeak(&a44);
  objc_destroyWeak((v47 - 176));
  _Unwind_Resume(a1);
}

void sub_20DB3BB18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DB3E844(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DB3F528(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_20DB3FA00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DB42B3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DB46CF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_20DB46EF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_20DB470C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_20DB4F5B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *NSStringFromHMSymptomType(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = a1 - 1;
  result = @"HMSymptomTypeNeediCloudCredential";
  switch(v1)
  {
    case 0:
      return result;
    case 1:
      result = @"HMSymptomTypeNeediTunesCredential";
      break;
    case 2:
      result = @"HMSymptomTypeNeedHomeKitFix";
      break;
    case 3:
      result = @"HMSymptomTypeNeedWiFiFix";
      break;
    case 4:
      result = @"HMSymptomTypeNeedWiFiPerformanceFix";
      break;
    case 5:
      result = @"HMSymptomTypeNeedInternetFix";
      break;
    case 6:
      result = @"HMSymptomTypeNeedHardwareFix";
      break;
    case 7:
      result = @"HMSymptomTypeStereoVersionMismatch";
      break;
    case 8:
      result = @"HMSymptomTypeStereoNotFound";
      break;
    case 9:
      result = @"HMSymptomTypeStereoError";
      break;
    case 10:
      result = @"HMSymptomTypeWiFiNetworkMismatch";
      break;
    case 11:
      result = @"HMSymptomTypeNoConfiguredTargets";
      break;
    case 12:
      result = @"HMSymptomTypeVPNProfileExpired";
      break;
    case 13:
      result = @"HMSymptomTypeNeed8021xNetworkFix";
      break;
    case 14:
      result = @"HMSymptomTypeNeedWiFiSecurityFix";
      break;
    case 15:
      result = @"HMSymptomTypeNeedNetworkProfileFix";
      break;
    case 16:
      result = @"HMSymptomTypeNeedNetworkProfileInstall";
      break;
    case 17:
      result = @"HMSymptomTypeNetworkNotShareable";
      break;
    case 18:
      result = @"HMSymptomTypeNeedCaptiveLeaseRenewal";
      break;
    case 19:
      result = @"HMSymptomTypeNeedCDPFix";
      break;
    case 20:
      result = @"HMSymptomTypePrimaryResidentUnreachable";
      break;
    default:
      if (@"HMSymptomTypeNeediCloudCredential" == 999)
      {
        result = @"HMSymptomTypeNeedGeneralFix";
      }

      else if (@"HMSymptomTypeNeediCloudCredential" == 1000)
      {
        result = @"HMSymptomTypeFixInProgress";
      }

      else
      {
        v3 = HFLogForCategory(0);
        if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
        {
          v4 = 136315394;
          v5 = "NSString * _Nonnull NSStringFromHMSymptomType(HMSymptomType)";
          v6 = 2048;
          v7 = @"HMSymptomTypeNeediCloudCredential";
          _os_log_error_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_ERROR, "%s: Unhandled symptom type: %ld", &v4, 0x16u);
        }

        result = @"HMSymptomType??????";
      }

      break;
  }

  return result;
}

uint64_t NSStringToHMSymptomType(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"HMSymptomTypeNeediCloudCredential"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"HMSymptomTypeNeediTunesCredential"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"HMSymptomTypeNeedHomeKitFix"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"HMSymptomTypeNeedWiFiFix"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"HMSymptomTypeNeedWiFiPerformanceFix"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"HMSymptomTypeNeedInternetFix"])
  {
    v2 = 6;
  }

  else if ([v1 isEqualToString:@"HMSymptomTypeNeedHardwareFix"])
  {
    v2 = 7;
  }

  else if ([v1 isEqualToString:@"HMSymptomTypeStereoVersionMismatch"])
  {
    v2 = 8;
  }

  else if ([v1 isEqualToString:@"HMSymptomTypeStereoNotFound"])
  {
    v2 = 9;
  }

  else if ([v1 isEqualToString:@"HMSymptomTypeStereoError"])
  {
    v2 = 10;
  }

  else if ([v1 isEqualToString:@"HMSymptomTypeWiFiNetworkMismatch"])
  {
    v2 = 11;
  }

  else if ([v1 isEqualToString:@"HMSymptomTypeFixInProgress"])
  {
    v2 = 1000;
  }

  else
  {
    if (([v1 isEqualToString:@"HMSymptomTypeNeedGeneralFix"] & 1) == 0)
    {
      if ([v1 isEqualToString:@"HMSymptomTypeNoConfiguredTargets"])
      {
        v2 = 12;
        goto LABEL_45;
      }

      if ([v1 isEqualToString:@"HMSymptomTypeVPNProfileExpired"])
      {
        v2 = 13;
        goto LABEL_45;
      }

      if ([v1 isEqualToString:@"HMSymptomTypeNeed8021xNetworkFix"])
      {
        v2 = 14;
        goto LABEL_45;
      }

      if ([v1 isEqualToString:@"HMSymptomTypeNeedWiFiSecurityFix"])
      {
        v2 = 15;
        goto LABEL_45;
      }

      if ([v1 isEqualToString:@"HMSymptomTypeNeedNetworkProfileFix"])
      {
        v2 = 16;
        goto LABEL_45;
      }

      if ([v1 isEqualToString:@"HMSymptomTypeNeedNetworkProfileInstall"])
      {
        v2 = 17;
        goto LABEL_45;
      }

      if ([v1 isEqualToString:@"HMSymptomTypeNetworkNotShareable"])
      {
        v2 = 18;
        goto LABEL_45;
      }

      if ([v1 isEqualToString:@"HMSymptomTypeNeedCaptiveLeaseRenewal"])
      {
        v2 = 19;
        goto LABEL_45;
      }

      if ([v1 isEqualToString:@"HMSymptomTypeNeedCDPFix"])
      {
        v2 = 20;
        goto LABEL_45;
      }

      v4 = [MEMORY[0x277CCA890] currentHandler];
      v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"HMSymptomType NSStringToHMSymptomType(NSString *__strong _Nonnull)"];
      [v4 handleFailureInFunction:v5 file:@"HMSymptomsHandler+HFAdditions.m" lineNumber:154 description:{@"Unsupported Symptom: %@", v1}];
    }

    v2 = 999;
  }

LABEL_45:

  return v2;
}

void sub_20DB5FE74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DB65744(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_20DB65A50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_20DB67F2C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_20DB68BA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *NSStringFromHFControlItemCharacteristicUsage(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"(unknown)";
  }

  else
  {
    return off_277DF7A78[a1];
  }
}

void sub_20DB6B798(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DB6D6C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DB6DF48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, ...)
{
  va_start(va, a29);
  _Block_object_dispose(&a14, 8);
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_20DB71208(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DB72C50(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

__CFString *HF_HomeAccessNotAllowedReasonCodeString(uint64_t a1)
{
  v2 = a1 - 1;
  if (a1 - 1) < 8 && ((0x8Bu >> v2))
  {
    v3 = off_277DF8660[v2];
  }

  else
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"HMHomeAccessNotAllowedReasonCode-NotDefined (%lu)", a1];
  }

  return v3;
}

void sub_20DB75E34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DB76530(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_20DB7E4E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_20DB80D64(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_20DB8167C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DB81A70(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_20DB81F5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DB82584(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_20DB82B28(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_20DB83178(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DB8383C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_20DB83B40(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_20DB842AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DB84664(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DB84A78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DB84D94(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_20DB85228(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_20DB85558(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_20DB88378(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_20DB89278(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_20DB8E33C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DB93278(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *HFItemOptionalLocalizedString(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 objectForKeyedSubscript:HFItemUpdateOptionDisableOptionalData];
  v5 = [v4 BOOLValue];

  if (v5)
  {
    v6 = &stru_2824B1A78;
  }

  else
  {
    v6 = _HFLocalizedStringWithDefaultValue(v3, v3, 1);
  }

  return v6;
}

void sub_20DB97BE8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

void sub_20DB98B7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DB9B51C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DBA1C78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DBA597C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v22 + 48));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id HFPrunePropertyList(void *a1)
{
  v1 = a1;
  if (([v1 conformsToProtocol:&unk_2825812A8] & 1) == 0)
  {
    NSLog(&cfstr_FoundObjectInP.isa, v1);
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
    if ([v2 count])
    {
      v3 = [v2 na_dictionaryByMappingValues:&__block_literal_global_76];
LABEL_10:
      v4 = v3;
LABEL_12:

      goto LABEL_16;
    }

    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
    if ([v2 count])
    {
      v3 = [v2 na_map:&__block_literal_global_56_0];
      goto LABEL_10;
    }

LABEL_11:
    v4 = 0;
    goto LABEL_12;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ![v1 length])
  {
LABEL_6:
    v4 = 0;
    goto LABEL_16;
  }

  v4 = v1;
LABEL_16:

  return v4;
}

void sub_20DBA679C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DBA95A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DBA9A68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, ...)
{
  va_start(va, a31);
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v31 - 216), 8);
  _Block_object_dispose((v31 - 184), 8);
  _Block_object_dispose((v31 - 152), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_20DBAA4E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DBAC06C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_20DBB0730(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 160));
  _Unwind_Resume(a1);
}

void sub_20DBB33F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id a32)
{
  objc_destroyWeak((v32 + 32));
  objc_destroyWeak(&a32);
  objc_destroyWeak((v33 - 112));
  _Unwind_Resume(a1);
}

void sub_20DBB4410(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_20DBB4D60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DBB5FD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_20DBB61DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_20DBB63A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_20DBB6564(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *NSStringFromHMCameraStreamingOption(unint64_t a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return off_277DF9ED8[a1];
  }
}

uint64_t cameraStreamingOptionFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"HFCameraStreamingOptionOff"])
  {
    v2 = 0;
  }

  else if ([v1 isEqualToString:@"HFCameraStreamingOptionStreamAndRecord"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"HFCameraStreamingOptionDetectActivity"])
  {
    v2 = 3;
  }

  else
  {
    v2 = [v1 isEqualToString:@"HFCameraStreamingOptionStream"];
  }

  return v2;
}

__CFString *NSStringFromHMCameraMotionDetectionType(uint64_t a1)
{
  v1 = @"HFCameraRecordingEventAnimals";
  v2 = @"HFCameraRecordingEventVehicles";
  v3 = @"HFCameraRecordingEventPackages";
  if (a1 != 16)
  {
    v3 = 0;
  }

  if (a1 != 8)
  {
    v2 = v3;
  }

  if (a1 != 4)
  {
    v1 = v2;
  }

  v4 = @"HFCameraRecordingEventAnyMotion";
  v5 = @"HFCameraRecordingEventPeople";
  if (a1 != 2)
  {
    v5 = 0;
  }

  if (a1 != 1)
  {
    v4 = v5;
  }

  if (a1 <= 3)
  {
    return v4;
  }

  else
  {
    return v1;
  }
}

__CFString *NSStringFromHMCameraSignificantEventPersonFamiliarityOptions(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return 0;
  }

  else
  {
    return off_277DF9EB8[a1 - 1];
  }
}

void *HFLocalizedStringFromHMCameraAccessMode(unint64_t a1)
{
  if (a1 > 3)
  {
    v1 = 0;
  }

  else
  {
    v1 = off_277DF9ED8[a1];
  }

  return _HFLocalizedStringWithDefaultValue(v1, v1, 1);
}

id HFLocalizedStringFromHMCameraMotionDetectionType(uint64_t a1)
{
  v1 = HFLocalizationKeyFromHMCameraMotionDetectionType(a1);
  v2 = _HFLocalizedStringWithDefaultValue(v1, v1, 1);

  return v2;
}

__CFString *HFLocalizationKeyFromHMCameraMotionDetectionType(uint64_t a1)
{
  v1 = @"HFCameraRecordingEventAnimals";
  v2 = @"HFCameraRecordingEventVehicles";
  v3 = @"HFCameraRecordingEventPackages";
  if (a1 != 16)
  {
    v3 = 0;
  }

  if (a1 != 8)
  {
    v2 = v3;
  }

  if (a1 != 4)
  {
    v1 = v2;
  }

  v4 = @"HFCameraRecordingEventAnyMotion";
  v5 = @"HFCameraRecordingEventPeople";
  if (a1 != 2)
  {
    v5 = 0;
  }

  if (a1 != 1)
  {
    v4 = v5;
  }

  if (a1 <= 3)
  {
    return v4;
  }

  else
  {
    return v1;
  }
}

void *HFLocalizedStringFromHMCameraSignificantEventPersonFamiliarityOptions(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    v1 = 0;
  }

  else
  {
    v1 = off_277DF9EB8[a1 - 1];
  }

  return _HFLocalizedStringWithDefaultValue(v1, v1, 1);
}

__CFString *HFLocalizationKeyFromHMCameraSignificantEventPersonFamiliarityOptions(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return 0;
  }

  else
  {
    return off_277DF9EB8[a1 - 1];
  }
}

void sub_20DBB8184(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__11(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_20DBB8854(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_20DBBB240(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id HFCAPackageIconIdentifierStatesWithContinuousAnimation()
{
  if (qword_280E02F08 != -1)
  {
    dispatch_once(&qword_280E02F08, &__block_literal_global_87);
  }

  v1 = _MergedGlobals_248;

  return v1;
}

void __HFCAPackageIconIdentifierStatesWithContinuousAnimation_block_invoke()
{
  v13[5] = *MEMORY[0x277D85DE8];
  v12[0] = @"HFCAPackageIconIdentifierDeskFan";
  v11[0] = HFCAPackageStateOn;
  v11[1] = HFCAPackageStateOnVibrant;
  v11[2] = HFCAPackageStateDisplay;
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:3];
  v13[0] = v0;
  v12[1] = @"HFCAPackageIconIdentifierFloorFan";
  v10[0] = HFCAPackageStateOn;
  v10[1] = HFCAPackageStateOnVibrant;
  v10[2] = HFCAPackageStateDisplay;
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:3];
  v13[1] = v1;
  v12[2] = @"HFCAPackageIconIdentifierCeilingFan";
  v9[0] = HFCAPackageStateOn;
  v9[1] = HFCAPackageStateOnVibrant;
  v9[2] = HFCAPackageStateDisplay;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:3];
  v13[2] = v2;
  v12[3] = @"HFCAPackageIconIdentifierCeilingFanWithLight";
  v8[0] = HFCAPackageStateOn;
  v8[1] = HFCAPackageStateOnVibrant;
  v8[2] = HFCAPackageStateDisplay;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:3];
  v12[4] = @"HFCAPackageIconIdentifierSecuritySystem";
  v7[0] = HFCAPackageStateActivated;
  v7[1] = HFCAPackageStateActivatedAlternate;
  v13[3] = v3;
  v7[2] = HFCAPackageStateActivatedVibrant;
  v7[3] = HFCAPackageStateDisplay;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:4];
  v13[4] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:5];
  v6 = _MergedGlobals_248;
  _MergedGlobals_248 = v5;
}

__CFString *NSLocalizedStringFromHFMediaAccessControlClassification(uint64_t a1, int a2)
{
  if (a1 <= 1)
  {
    v2 = @"HFMediaAccessControlClassificationAnyoneOnTheSameNetwork";
    if (a1 != 1)
    {
      v2 = 0;
    }

    if (a1)
    {
      v3 = v2;
    }

    else
    {
      v3 = @"HFMediaAccessControlClassificationEveryone";
    }

    if (!a2)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (a1 == 2)
  {
    v3 = @"HFMediaAccessControlClassificationOnlyPeopleSharingThisHome";
    if (!a2)
    {
      goto LABEL_14;
    }

LABEL_13:
    v3 = [(__CFString *)v3 stringByAppendingFormat:@"_Short"];
    goto LABEL_14;
  }

  if (a1 == 3)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSString * _Nonnull NSLocalizedStringFromHFMediaAccessControlClassification(HFMediaAccessControlClassification, BOOL)"}];
    [(__CFString *)v3 handleFailureInFunction:v4 file:@"HFMediaAccessControlDescriptor.m" lineNumber:24 description:@"Well. This is unexpected.  How did you get here?"];

    v5 = &stru_2824B1A78;
    goto LABEL_15;
  }

  v3 = 0;
  if (a2)
  {
    goto LABEL_13;
  }

LABEL_14:
  v5 = _HFLocalizedStringWithDefaultValue(v3, v3, 1);
LABEL_15:

  return v5;
}

void sub_20DBC0E94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DBC60AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DBC62D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t HFPrimaryStateForDoorState(unint64_t a1)
{
  if (a1 > 4)
  {
    return 0;
  }

  else
  {
    return qword_20DD973F0[a1];
  }
}

uint64_t HFPrimaryStateForLockMechanismState(unint64_t a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return qword_20DD97418[a1];
  }
}

uint64_t HFPrimaryStateForCurrentSecuritySystemState(unint64_t a1)
{
  if (a1 > 4)
  {
    return 0;
  }

  else
  {
    return qword_20DD97438[a1];
  }
}

uint64_t HFLockMechanismStateForPrimaryState(uint64_t a1)
{
  if (a1)
  {
    return a1 == 1;
  }

  else
  {
    return 3;
  }
}

uint64_t HFPrimaryStateForHeatingCoolingState(unint64_t a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return qword_20DD97460[a1];
  }
}

uint64_t HFPrimaryStateForTargetSecuritySystemState(unint64_t a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return qword_20DD97480[a1];
  }
}

uint64_t HFTargetSecuritySystemStateForPrimaryState(unint64_t a1)
{
  if (a1 > 1)
  {
    return 1;
  }

  else
  {
    return 3;
  }
}

id __HFSimplePowerStateServices_block_invoke()
{
  if (qword_280E02F60 != -1)
  {
    dispatch_once(&qword_280E02F60, &__block_literal_global_308);
  }

  v1 = qword_280E02F68;

  return v1;
}

void __HFSimplePowerStateServices_block_invoke_2()
{
  v6[4] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v1 = *MEMORY[0x277CD0EA0];
  v6[0] = *MEMORY[0x277CD0E40];
  v6[1] = v1;
  v2 = *MEMORY[0x277CD0F08];
  v6[2] = *MEMORY[0x277CD0ED0];
  v6[3] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:4];
  v4 = [v0 setWithArray:v3];
  v5 = qword_280E02F68;
  qword_280E02F68 = v4;
}

id __HFSimpleActiveStateServices_block_invoke()
{
  if (qword_280E02F70 != -1)
  {
    dispatch_once(&qword_280E02F70, &__block_literal_global_312);
  }

  v1 = qword_280E02F78;

  return v1;
}

void __HFSimpleActiveStateServices_block_invoke_2()
{
  v6[5] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v1 = *MEMORY[0x277CD0F38];
  v6[0] = *MEMORY[0x277CD0F40];
  v6[1] = v1;
  v2 = *MEMORY[0x277CD0F20];
  v6[2] = *MEMORY[0x277CD0E48];
  v6[3] = v2;
  v6[4] = *MEMORY[0x277CD0E78];
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:5];
  v4 = [v0 setWithArray:v3];
  v5 = qword_280E02F78;
  qword_280E02F78 = v4;
}

id __HFCurrentTargetPositionServices_block_invoke()
{
  if (qword_280E02F80 != -1)
  {
    dispatch_once(&qword_280E02F80, &__block_literal_global_316);
  }

  v1 = qword_280E02F88;

  return v1;
}

void __HFCurrentTargetPositionServices_block_invoke_2()
{
  v5[3] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v1 = *MEMORY[0x277CD0F58];
  v5[0] = *MEMORY[0x277CD0E30];
  v5[1] = v1;
  v5[2] = *MEMORY[0x277CD0F60];
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:3];
  v3 = [v0 setWithArray:v2];
  v4 = qword_280E02F88;
  qword_280E02F88 = v3;
}

void sub_20DBCE3D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DBD2920(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_20DBD4FF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *NSStringFromHFDiffOperationType(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"(unknown operation type)";
  }

  else
  {
    return off_277DFAAD0[a1];
  }
}

__CFString *_HFStandardIndexPathDescription(void *a1)
{
  if (a1)
  {
    v1 = MEMORY[0x277CCACA8];
    v2 = MEMORY[0x277CCABB0];
    v3 = a1;
    v4 = [v2 numberWithInteger:{objc_msgSend(v3, "section")}];
    v5 = MEMORY[0x277CCABB0];
    v6 = [v3 row];

    v7 = [v5 numberWithInteger:v6];
    v8 = [v1 stringWithFormat:@"{%@, %@}", v4, v7];
  }

  else
  {
    v8 = @"(null)";
  }

  return v8;
}

void sub_20DBDD724(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id location)
{
  objc_destroyWeak((v34 + 32));
  objc_destroyWeak((v33 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DBDF24C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DBDFAC8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 112));
  _Unwind_Resume(a1);
}

void sub_20DBE0DE4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v5 + 32));
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v6 - 88));
  _Unwind_Resume(a1);
}

void sub_20DBE8C00(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_20DBE8F34(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_20DBE9258(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_20DBE956C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_20DBE9FA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_20DBEA6B8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_20DBEBA1C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 88));
  _Unwind_Resume(a1);
}

void sub_20DBEC94C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_20DBED538(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DBEFB34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__12(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id _HomeKitSettingToHFItem_CacheItemCacheKey(void *a1)
{
  v1 = a1;
  objc_opt_class();
  v2 = v1;
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  if (v4)
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = [v4 keyPath];
    v7 = [v5 stringWithFormat:@"Group-%@", v6];
  }

  else
  {
    objc_opt_class();
    v8 = v2;
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v6 = v9;

    if (v6)
    {
      v10 = MEMORY[0x277CCACA8];
      v11 = [v6 keyPath];
      v7 = [v10 stringWithFormat:@"Setting-%@", v11];
    }

    else
    {
      objc_opt_class();
      v12 = v8;
      if (objc_opt_isKindOfClass())
      {
        v13 = v12;
      }

      else
      {
        v13 = 0;
      }

      v11 = v13;

      if (v11)
      {
        v14 = MEMORY[0x277CCACA8];
        v15 = [v11 keyPath];
        v7 = [v14 stringWithFormat:@"SettingGroupEntity-%@", v15];
      }

      else
      {
        objc_opt_class();
        v15 = v12;
        if (objc_opt_isKindOfClass())
        {
          v16 = v15;
        }

        else
        {
          v16 = 0;
        }

        v7 = v16;

        if (v7)
        {
          v17 = MEMORY[0x277CCACA8];
          v18 = [v7 title];
          v19 = [v7 identifier];
          v7 = [v17 stringWithFormat:@"SelectionItem-%@-%@", v18, v19];
        }

        else
        {
          v15 = 0;
        }
      }
    }
  }

  return v7;
}

void sub_20DBF244C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  if (v1)
  {
    objc_destroyWeak(v2);
  }

  objc_destroyWeak((v4 - 72));
  _Unwind_Resume(a1);
}

void sub_20DBF3C94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DBF7368(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DBFB808(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DBFCFB0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 72));
  _Unwind_Resume(a1);
}

void sub_20DBFF494(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DBFFE04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DC01D90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DC023CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    (*(a9 + 16))();
  }

  _Unwind_Resume(exception_object);
}

void sub_20DC02410(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  JUMPOUT(0x20DC023E8);
}

void sub_20DC02D34(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 144));
  _Unwind_Resume(a1);
}

void sub_20DC037A4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 80));
  objc_destroyWeak((v2 + 32));
  _Unwind_Resume(a1);
}

void sub_20DC058A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  objc_destroyWeak((v65 + 72));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DC09140(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak((v24 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DC0DAD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id location)
{
  objc_destroyWeak(&a30);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DC0E1DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DC1093C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, ...)
{
  va_start(va, a51);
  if (a14)
  {
    (*(a14 + 16))();
  }

  _Block_object_dispose(&a40, 8);
  _Block_object_dispose(&a46, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__13(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_20DC1106C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

uint64_t HFAppProxiesContainsAppProxyWithIdentifier(void *a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __HFAppProxiesContainsAppProxyWithIdentifier_block_invoke;
  v7[3] = &unk_277DFBF30;
  v8 = v3;
  v4 = v3;
  v5 = [a1 na_any:v7];

  return v5;
}

void sub_20DC118CC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

uint64_t __HFAppProxiesContainsAppProxyWithIdentifier_block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 bundleIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

void sub_20DC144A8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_20DC14FD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_20DC154D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_20DC15954(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_20DC15BF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__14(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_20DC17C04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  if (v34)
  {
    (*(v34 + 16))(v34, a2, a3, a4, a5, a6, a7, a8);
  }

  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v35 - 192), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__15(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_20DC19444(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DC19994(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__16(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_20DC19B2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_20DC19D70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_20DC1CE50(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_20DC1F888(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DC209B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_20DC24FE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void HFAppDataSetValueIfChanged(void *a1, void *a2, void *a3)
{
  v9 = a1;
  v5 = a2;
  v6 = a3;
  v7 = [v9 objectForKeyedSubscript:v5];
  v8 = v7;
  if (v7 != v6 && ([v7 isEqual:v6] & 1) == 0)
  {
    [v9 setObject:v6 forKeyedSubscript:v5];
  }
}

void sub_20DC27704(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DC27958(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t _handleStateDumpRequest(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = *MEMORY[0x277D85DE8];
  v10 = HFLogForCategory(0x45uLL);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138413314;
    v13 = a1;
    v14 = 2112;
    v15 = a2;
    v16 = 2112;
    v17 = a3;
    v18 = 2112;
    v19 = a4;
    v20 = 2112;
    v21 = a5;
    _os_log_impl(&dword_20D9BF000, v10, OS_LOG_TYPE_DEFAULT, "_handleStateDumpRequest called with CFNotificationCenter: %@, observer: %@, name: %@, object: %@, userInfo: %@", &v12, 0x34u);
  }

  return [a2 _writeStateDump];
}

void _HFLogStateDumpNode(void *a1, void *a2, __CFString *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (a3)
  {
    v8 = a3;
  }

  else
  {
    v8 = &stru_2824B1A78;
  }

  v9 = [v6 stringByAppendingString:v8];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = ___HFLogStateDumpNode_block_invoke;
  aBlock[3] = &unk_277DFC878;
  v10 = v9;
  v24 = v10;
  v11 = v7;
  v25 = v11;
  v12 = _Block_copy(aBlock);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = ___HFLogStateDumpNode_block_invoke_87;
    v21[3] = &unk_277DF8C40;
    v13 = &v22;
    v22 = v5;
    v12[2](v12, @"[", v21, @"]");
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = ___HFLogStateDumpNode_block_invoke_2;
      v19[3] = &unk_277DF8C40;
      v13 = &v20;
      v20 = v5;
      v12[2](v12, @"{", v19, @"}");
    }

    else
    {
      v14 = [v5 description];
      v15 = [v14 componentsSeparatedByString:@"\n"];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = ___HFLogStateDumpNode_block_invoke_4;
      v16[3] = &unk_277DF3258;
      v13 = &v17;
      v17 = v10;
      v18 = v11;
      [v15 enumerateObjectsUsingBlock:v16];
    }
  }
}

void sub_20DC2CCF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, ...)
{
  va_start(va, a36);
  if (a15)
  {
    (*(a15 + 16))(a15, a2, a3, a4, a5, a6, a7, a8);
  }

  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v36 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__17(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_20DC2E5EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__18(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_20DC30CCC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

uint64_t HFComputeHashFromContents(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 computeHashFromContents];
  }

  else
  {
    objc_opt_class();
    v3 = v1;
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    v5 = v4;

    v2 = [v5 hash];
  }

  return v2;
}

void sub_20DC3202C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DC390F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DC3DEB0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v3 - 112));
  _Unwind_Resume(a1);
}

void sub_20DC3E898(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DC3F1E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DC3F9A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DC40FB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DC41930(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DC429EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DC434E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DC43980(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DC43CB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DC441D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va1, a20);
  va_start(va, a20);
  v21 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_20DC46C0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DC484DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DC48B70(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_20DC493DC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_20DC49894(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DC4B7AC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_20DC517A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_20DC522A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__19(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_20DC52B94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_20DC52D14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_20DC533B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_20DC53540(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_20DC53798(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_20DC53A80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__Block_byref_object_copy__48(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_20DC54460(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id location)
{
  objc_destroyWeak((v31 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DC565D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location, id a25)
{
  objc_destroyWeak((v25 + 72));
  objc_destroyWeak((v25 + 64));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a25);
  _Unwind_Resume(a1);
}

void __HFHomeKitSettingsValueManagerDispatchWillWriteValueForSettings_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 settings:*(a1 + 32) willWriteValueForSettings:*(a1 + 40)];
  }
}

void __HFHomeKitSettingsValueManagerDispatchDidWriteValueForSettings_block_invoke(void *a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 settings:a1[4] didWriteValueForSettings:a1[5] failedSettings:a1[6] homeKitObjectIdentifiers:a1[7]];
  }
}

void sub_20DC5806C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id HFHomeKitObjectUniqueIdentifiers(void *a1)
{
  v1 = MEMORY[0x277CBEB98];
  if (a1)
  {
    v2 = [a1 na_map:&__block_literal_global_141];
    v3 = [v1 setWithArray:v2];
  }

  else
  {
    v3 = [MEMORY[0x277CBEB98] set];
  }

  return v3;
}

void sub_20DC5DD90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DC5E774(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DC5EF74(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_20DC67134(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DC6761C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DC68FA0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_20DC6D9E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void *_HFLocalizedStringWithDefaultValue(void *a1, void *a2, int a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = HFHomeBundle();
  v8 = [v7 localizedStringForKey:v5 value:@"_" table:@"HFLocalizable"];

  if ([@"_" isEqualToString:v8])
  {
    v9 = HFHomeBundle();
    v10 = [v9 localizedStringForKey:v5 value:@"_" table:@"HFUserFriendlyNameLocalizable"];

    v8 = v10;
  }

  if ([@"_" isEqualToString:v8])
  {
    v11 = HFHomeBundle();
    v12 = [v11 localizedStringForKey:v5 value:@"_" table:@"HFUserFriendlyNameDerivedLocalizable"];

    v8 = v12;
  }

  if ([@"_" isEqualToString:v8])
  {
    v13 = v5;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    if (qword_280E034E8 != -1)
    {
      dispatch_once(&qword_280E034E8, &__block_literal_global_151_0);
    }

    v14 = qword_280E034F0;
    v15 = [v14 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v15)
    {
      v16 = v15;
      v27 = a3;
      v28 = v6;
      v17 = *v30;
LABEL_10:
      v18 = 0;
      while (1)
      {
        if (*v30 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v29 + 1) + 8 * v18);
        v20 = HFHomeBundle();
        v21 = [v20 localizedStringForKey:v13 value:&stru_2824B1A78 table:v19];

        if (![(__CFString *)v21 isEqualToString:v13])
        {
          break;
        }

        if (v16 == ++v18)
        {
          v16 = [v14 countByEnumeratingWithState:&v29 objects:v33 count:16];
          if (v16)
          {
            goto LABEL_10;
          }

          v21 = @"_";
          break;
        }
      }

      v6 = v28;
      a3 = v27;
    }

    else
    {
      v21 = @"_";
    }

    v8 = v21;
  }

  v22 = [@"_" isEqualToString:v8];
  if (v22)
  {
    v23 = v6;
  }

  else
  {
    v23 = v8;
  }

  if (v22)
  {
    v24 = a3 == 0;
  }

  else
  {
    v24 = 1;
  }

  if (!v24)
  {
    NSLog(&cfstr_MissingLocaliz.isa, v5, @"HFLocalizable");
    v23 = v6;
  }

  v25 = v23;

  return v23;
}

id HFLocalizedStringWithFormat(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = a2;
  v11 = _HFLocalizedStringWithDefaultValue(a1, 0, 1);
  if (v11)
  {
    v17[1] = &a9;
    v12 = objc_alloc(MEMORY[0x277CCACA8]);
    v13 = [MEMORY[0x277CBEAF8] currentLocale];
    v17[0] = 0;
    v14 = [v12 initWithValidatedFormat:v11 validFormatSpecifiers:v10 locale:v13 arguments:&a9 error:v17];
    v15 = v17[0];

    if (!v14)
    {
      NSLog(&cfstr_CouldnTLocaliz_0.isa, v11, v15);
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

id HFLocalizedStringWithFormatterBlock(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _HFLocalizedStringWithDefaultValue(a1, v5, 0);
  v8 = v7;
  if (v6 && ([v7 isEqualToString:v5] & 1) == 0)
  {
    v9 = v6[2](v6, v8);

    v8 = v9;
  }

  return v8;
}

id HFLocalizedWiFiString(void *a1)
{
  v1 = HFLocalizedWiFiStringKeyForKey(a1);
  v2 = _HFLocalizedStringWithDefaultValue(v1, v1, 1);

  return v2;
}

id HFLocalizedWiFiStringKeyForKey(void *a1)
{
  v1 = a1;
  v2 = +[HFUtilities useWLANInsteadOfWiFi];
  v3 = @"WIFI";
  if (v2)
  {
    v3 = @"WLAN";
  }

  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", v1, v3];

  return v4;
}

id HFLocalizedCategoryOrPrimaryServiceTypeString(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = MEMORY[0x277CCE8C8];
  if (v7 && (v9 = *MEMORY[0x277CCE8C8], [v6 isEqual:*MEMORY[0x277CCE8C8]]))
  {
    v10 = [MEMORY[0x277CD1650] hf_getUserFriendlyMatterDescriptionKey:v7];
  }

  else
  {
    v11 = [MEMORY[0x277CD1650] hf_getUserFriendlyDescriptionKey:v6];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = [MEMORY[0x277CD1D90] hf_getUserFriendlyDescriptionKey:v6];
    }

    v10 = v13;

    v9 = *v8;
  }

  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", v5, v10];
  v15 = MEMORY[0x277CCACA8];
  v16 = [MEMORY[0x277CD1650] hf_getUserFriendlyDescriptionKey:v9];
  v17 = [v15 stringWithFormat:@"%@_%@", v5, v16];

  v18 = _HFLocalizedStringWithDefaultValue(v17, v17, 1);
  v19 = _HFLocalizedStringWithDefaultValue(v14, v18, 0);

  return v19;
}

id HFHomeBundle()
{
  if (qword_280E034C8 != -1)
  {
    dispatch_once(&qword_280E034C8, &__block_literal_global_149);
  }

  v1 = _MergedGlobals_283[0];

  return v1;
}

void __HFHomeBundle_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = _MergedGlobals_283[0];
  _MergedGlobals_283[0] = v2;
}

id __HFHomeApplicationBundleIdentifiers_block_invoke()
{
  if (qword_280E034D0 != -1)
  {
    dispatch_once(&qword_280E034D0, &__block_literal_global_43_0);
  }

  v1 = qword_280E034D8;

  return v1;
}

void __HFHomeApplicationBundleIdentifiers_block_invoke_2()
{
  v0 = [MEMORY[0x277CBEB98] setWithObjects:{@"com.apple.Home", @"com.apple.NanoHome", 0}];
  v1 = qword_280E034D8;
  qword_280E034D8 = v0;
}

id HFLogForCategory(unint64_t a1)
{
  if (a1 >= 0x50)
  {
    NSLog(&cfstr_UnknownLogging.isa, a1);
  }

  if (qword_280E034E0 != -1)
  {
    dispatch_once(&qword_280E034E0, &__block_literal_global_49_1);
  }

  v2 = _MergedGlobals_283[a1 + 7];

  return v2;
}

void __HFLogForCategory_block_invoke()
{
  v0 = os_log_create("com.apple.Home.framework", "HF_Default");
  v1 = qword_280E034F8;
  qword_280E034F8 = v0;

  v2 = os_log_create("com.apple.Home.framework", "HF_AccessoryDiagnostics");
  v3 = qword_280E03500;
  qword_280E03500 = v2;

  v4 = os_log_create("com.apple.Home.framework", "HF_Camera_Activity_Zones");
  v5 = qword_280E03508;
  qword_280E03508 = v4;

  v6 = os_log_create("com.apple.Home.framework", "HF_ActivityEvents");
  v7 = qword_280E03510;
  qword_280E03510 = v6;

  v8 = os_log_create("com.apple.Home.framework", "HF_Alarms_and_Timers");
  v9 = qword_280E03518;
  qword_280E03518 = v8;

  v10 = os_log_create("com.apple.Home.framework", "HF_AMS_Accounts");
  v11 = qword_280E03520;
  qword_280E03520 = v10;

  v12 = os_log_create("com.apple.Home.framework", "HF_Analytics");
  v13 = qword_280E03528;
  qword_280E03528 = v12;

  v14 = os_log_create("com.apple.Home.framework", "HF_Announce");
  v15 = qword_280E03530;
  qword_280E03530 = v14;

  v16 = os_log_create("com.apple.Home.framework", "HF_AppEvent");
  v17 = qword_280E03538;
  qword_280E03538 = v16;

  v18 = os_log_create("com.apple.Home.framework", "HF_AppOnboarding");
  v19 = qword_280E03540;
  qword_280E03540 = v18;

  v20 = os_log_create("com.apple.Home.framework", "HF_AudioPlayer");
  v21 = qword_280E03548;
  qword_280E03548 = v20;

  v22 = os_log_create("com.apple.Home.framework", "HF_AudioRecorder");
  v23 = qword_280E03550;
  qword_280E03550 = v22;

  v24 = os_log_create("com.apple.Home.framework", "HF_Bolt");
  v25 = qword_280E03558;
  qword_280E03558 = v24;

  v26 = os_log_create("com.apple.Home.framework", "HF_Cache");
  v27 = qword_280E03560;
  qword_280E03560 = v26;

  v28 = os_log_create("com.apple.Home.framework", "HF_Camera");
  v29 = qword_280E03568;
  qword_280E03568 = v28;

  v30 = os_log_create("com.apple.Home.framework", "HF_Camera_Calendar");
  v31 = qword_280E03570;
  qword_280E03570 = v30;

  v32 = os_log_create("com.apple.Home.framework", "HF_Camera_Clips");
  v33 = qword_280E03578;
  qword_280E03578 = v32;

  v34 = os_log_create("com.apple.Home.framework", "HF_Camera_Clip_Scrubber");
  v35 = qword_280E03580;
  qword_280E03580 = v34;

  v36 = os_log_create("com.apple.Home.framework", "HF_Camera_Export");
  v37 = qword_280E03588;
  qword_280E03588 = v36;

  v38 = os_log_create("com.apple.Home.framework", "HF_CameraFaceRecognition");
  v39 = qword_280E03590;
  qword_280E03590 = v38;

  v40 = os_log_create("com.apple.Home.framework", "HF_Camera_Feedback");
  v41 = qword_280E03598;
  qword_280E03598 = v40;

  v42 = os_log_create("com.apple.Home.framework", "HF_Camera_Images");
  v43 = qword_280E035A0;
  qword_280E035A0 = v42;

  v44 = os_log_create("com.apple.Home.framework", "HF_Camera_Notification");
  v45 = qword_280E035A8;
  qword_280E035A8 = v44;

  v46 = os_log_create("com.apple.Home.framework", "HF_Camera_Playback_Engine");
  v47 = qword_280E035B0;
  qword_280E035B0 = v46;

  v48 = os_log_create("com.apple.Home.framework", "HF_Camera_Playback_Engine_UI");
  v49 = qword_280E035B8;
  qword_280E035B8 = v48;

  v50 = os_log_create("com.apple.Home.framework", "HF_Camera_Poster_Frames");
  v51 = qword_280E035C0;
  qword_280E035C0 = v50;

  v52 = os_log_create("com.apple.Home.framework", "HF_Camera_Settings");
  v53 = qword_280E035C8;
  qword_280E035C8 = v52;

  v54 = os_log_create("com.apple.Home.framework", "HF_Camera_Snapshot");
  v55 = qword_280E035D0;
  qword_280E035D0 = v54;

  v56 = os_log_create("com.apple.Home.framework", "HF_Camera_Stream");
  v57 = qword_280E035D8;
  qword_280E035D8 = v56;

  v58 = os_log_create("com.apple.Home.framework", "HF_Camera_Timelapse");
  v59 = qword_280E035E0;
  qword_280E035E0 = v58;

  v60 = os_log_create("com.apple.Home.framework", "HF_ControlCenter");
  v61 = qword_280E035E8;
  qword_280E035E8 = v60;

  v62 = os_log_create("com.apple.Home.framework", "HF_Dashboard");
  v63 = qword_280E035F0;
  qword_280E035F0 = v62;

  v64 = os_log_create("com.apple.Home.framework", "HF_DashboardReorder");
  v65 = qword_280E035F8;
  qword_280E035F8 = v64;

  v66 = os_log_create("com.apple.Home.framework", "HF_Demo_Mode");
  v67 = qword_280E03600;
  qword_280E03600 = v66;

  v68 = os_log_create("com.apple.Home.framework", "HF_FeatureOnboarding");
  v69 = qword_280E03608;
  qword_280E03608 = v68;

  v70 = os_log_create("com.apple.Home.framework", "HF_HomeControlService");
  v71 = qword_280E03610;
  qword_280E03610 = v70;

  v72 = os_log_create("com.apple.Home.framework", "HF_HomeEnergy");
  v73 = qword_280E03618;
  qword_280E03618 = v72;

  v74 = os_log_create("com.apple.Home.framework", "HF_HomeActivityState");
  v75 = qword_280E03620;
  qword_280E03620 = v74;

  v76 = os_log_create("com.apple.Home.framework", "HF_ThermostatPresets");
  v77 = qword_280E03628;
  qword_280E03628 = v76;

  v78 = os_log_create("com.apple.Home.framework", "HF_HomeKitDelegate");
  v79 = qword_280E03630;
  qword_280E03630 = v78;

  v80 = os_log_create("com.apple.Home.framework", "HF_HomeKitSettings");
  v81 = qword_280E03638;
  qword_280E03638 = v80;

  v82 = os_log_create("com.apple.Home.framework", "HF_HomeTheater");
  v83 = qword_280E03640;
  qword_280E03640 = v82;

  v84 = os_log_create("com.apple.Home.framework", "HF_Invitations");
  v85 = qword_280E03648;
  qword_280E03648 = v84;

  v86 = os_log_create("com.apple.Home.framework", "HF_ItemBuilder");
  v87 = qword_280E03650;
  qword_280E03650 = v86;

  v88 = os_log_create("com.apple.Home.framework", "HF_ItemUpdate");
  v89 = qword_280E03658;
  qword_280E03658 = v88;

  v90 = os_log_create("com.apple.Home.framework", "HF_Location");
  v91 = qword_280E03660;
  qword_280E03660 = v90;

  v92 = os_log_create("com.apple.Home.framework", "HF_ManagedConfigurationProfiles");
  v93 = qword_280E03668;
  qword_280E03668 = v92;

  v94 = os_log_create("com.apple.Home.framework", "HF_Media");
  v95 = qword_280E03670;
  qword_280E03670 = v94;

  v96 = os_log_create("com.apple.Home.framework", "HF_MultiServices");
  v97 = qword_280E03678;
  qword_280E03678 = v96;

  v98 = os_log_create("com.apple.Home.framework", "HF_NaturalLanguage");
  v99 = qword_280E03680;
  qword_280E03680 = v98;

  v100 = os_log_create("com.apple.Home.framework", "HF_Navigation");
  v101 = qword_280E03688;
  qword_280E03688 = v100;

  v102 = os_log_create("com.apple.Home.framework", "HF_Nearby_Accessories");
  v103 = qword_280E03690;
  qword_280E03690 = v102;

  v104 = os_log_create("com.apple.Home.framework", "HF_Notification");
  v105 = qword_280E03698;
  qword_280E03698 = v104;

  v106 = os_log_create("com.apple.Home.framework", "HF_Performance");
  v107 = qword_280E036A0;
  qword_280E036A0 = v106;

  v108 = os_log_create("com.apple.Home.framework", "HF_PerformanceInfo");
  v109 = qword_280E036A8;
  qword_280E036A8 = v108;

  v110 = os_log_create("com.apple.Home.framework", "HF_PinCode");
  v111 = qword_280E036B0;
  qword_280E036B0 = v110;

  v112 = os_log_create("com.apple.Home.framework", "HF_Predictions");
  v113 = qword_280E036B8;
  qword_280E036B8 = v112;

  v114 = os_log_create("com.apple.Home.framework", "HF_PrimaryUser");
  v115 = qword_280E036C0;
  qword_280E036C0 = v114;

  v116 = os_log_create("com.apple.Home.framework", "HF_PrototypeSettings");
  v117 = qword_280E036C8;
  qword_280E036C8 = v116;

  v118 = os_log_create("com.apple.Home.framework", "HF_QuickControlView");
  v119 = qword_280E036D0;
  qword_280E036D0 = v118;

  v120 = os_log_create("com.apple.Home.framework", "HF_Rapport");
  v121 = qword_280E036D8;
  qword_280E036D8 = v120;

  v122 = os_log_create("com.apple.Home.framework", "HF_ReadWrite");
  v123 = qword_280E036E0;
  qword_280E036E0 = v122;

  v124 = os_log_create("com.apple.Home.framework", "HF_SettingUpdate");
  v125 = qword_280E036E8;
  qword_280E036E8 = v124;

  v126 = os_log_create("com.apple.Home.framework", "HF_Setup");
  v127 = qword_280E036F0;
  qword_280E036F0 = v126;

  v128 = os_log_create("com.apple.Home.framework", "HF_Sidebar");
  v129 = qword_280E036F8;
  qword_280E036F8 = v128;

  v130 = os_log_create("com.apple.Home.framework", "HF_SiriEndpoints");
  v131 = qword_280E03700;
  qword_280E03700 = v130;

  v132 = os_log_create("com.apple.Home.framework", "HF_SiriSupport");
  v133 = qword_280E03708;
  qword_280E03708 = v132;

  v134 = os_log_create("com.apple.Home.framework", "HF_SmartConfiguration");
  v135 = qword_280E03710;
  qword_280E03710 = v134;

  v136 = os_log_create("com.apple.Home.framework", "HF_SoftwareUpdate");
  v137 = qword_280E03718;
  qword_280E03718 = v136;

  v138 = os_log_create("com.apple.Home.framework", "HF_StateDump");
  v139 = qword_280E03720;
  qword_280E03720 = v138;

  v140 = os_log_create("com.apple.Home.framework", "HF_Store");
  v141 = qword_280E03728;
  qword_280E03728 = v140;

  v142 = os_log_create("com.apple.Home.framework", "HF_SymptomStatusItem");
  v143 = qword_280E03730;
  qword_280E03730 = v142;

  v144 = os_log_create("com.apple.Home.framework", "HF_SymptomStatusBannerItem");
  v145 = qword_280E03738;
  qword_280E03738 = v144;

  v146 = os_log_create("com.apple.Home.framework", "HF_Triggers");
  v147 = qword_280E03748;
  qword_280E03748 = v146;

  v148 = os_log_create("com.apple.Home.framework", "HF_UserInteraction");
  v149 = qword_280E03750;
  qword_280E03750 = v148;

  v150 = os_log_create("com.apple.Home.framework", "HF_Users");
  v151 = qword_280E03758;
  qword_280E03758 = v150;

  v152 = os_log_create("com.apple.Home.framework", "HF_ViewVisibility");
  v153 = qword_280E03760;
  qword_280E03760 = v152;

  v154 = os_log_create("com.apple.Home.framework", "HF_WalletKey");
  v155 = qword_280E03740;
  qword_280E03740 = v154;

  v156 = os_log_create("com.apple.Home.framework", "HF_Wallpaper");
  v157 = qword_280E03768;
  qword_280E03768 = v156;

  v158 = os_log_create("com.apple.Home.framework", "HF_WiFiPicker");
  v159 = qword_280E03770;
  qword_280E03770 = v158;
}

void __HFSensitiveLocalizedStringTables_block_invoke_2()
{
  v0 = qword_280E034F0;
  qword_280E034F0 = &unk_282525840;
}

void sub_20DC73EF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_20DC74040(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(v1 + 16))(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_20DC751E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_20DC7608C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__20(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_20DC7A1E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__21(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_20DC7C508(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DC7DC4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t HFPreferencesBooleanValueForKeyWithinDomain(void *a1, void *a2)
{
  v3 = _InstallHomePreferencesObserverIfNecessary_onceToken;
  v4 = a2;
  v5 = a1;
  if (v3 != -1)
  {
    dispatch_once(&_InstallHomePreferencesObserverIfNecessary_onceToken, &__block_literal_global_362_0);
  }

  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(v5, v4, &keyExistsAndHasValidFormat);

  v7 = 1;
  if (AppBooleanValue)
  {
    v7 = 2;
  }

  if (keyExistsAndHasValidFormat)
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

uint64_t HFPreferencesBooleanValueForKey(void *a1)
{
  v1 = _InstallHomePreferencesObserverIfNecessary_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    dispatch_once(&_InstallHomePreferencesObserverIfNecessary_onceToken, &__block_literal_global_362_0);
  }

  v3 = HFPreferencesBooleanValueForKeyWithinDomain(v2, @"com.apple.Home");

  return v3;
}

uint64_t HomeKitPreferencesBooleanValueForKey(void *a1)
{
  v1 = _InstallHomeKitPreferencesObserverIfNecessary_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    dispatch_once(&_InstallHomeKitPreferencesObserverIfNecessary_onceToken, &__block_literal_global_365);
  }

  v3 = HFPreferencesBooleanValueForKeyWithinDomain(v2, @"com.apple.homed");

  return v3;
}

id HFPreferencesNumberForKey(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (_InstallHomePreferencesObserverIfNecessary_onceToken != -1)
    {
      dispatch_once(&_InstallHomePreferencesObserverIfNecessary_onceToken, &__block_literal_global_362_0);
    }

    objc_opt_class();
    v2 = CFPreferencesCopyAppValue(v1, @"com.apple.Home");
    if (objc_opt_isKindOfClass())
    {
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }

    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id HFPreferencesStringForKey(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (_InstallHomePreferencesObserverIfNecessary_onceToken != -1)
    {
      dispatch_once(&_InstallHomePreferencesObserverIfNecessary_onceToken, &__block_literal_global_362_0);
    }

    objc_opt_class();
    v2 = CFPreferencesCopyAppValue(v1, @"com.apple.Home");
    if (objc_opt_isKindOfClass())
    {
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }

    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id HomeKitPreferencesStringForKey(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (_InstallHomeKitPreferencesObserverIfNecessary_onceToken != -1)
    {
      dispatch_once(&_InstallHomeKitPreferencesObserverIfNecessary_onceToken, &__block_literal_global_365);
    }

    objc_opt_class();
    v2 = CFPreferencesCopyAppValue(v1, @"com.apple.homed");
    if (objc_opt_isKindOfClass())
    {
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }

    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void HFPreferencesRemoveValueForKey(void *a1)
{
  v1 = a1;
  if (v1)
  {
    key = v1;
    if (_InstallHomePreferencesObserverIfNecessary_onceToken != -1)
    {
      dispatch_once(&_InstallHomePreferencesObserverIfNecessary_onceToken, &__block_literal_global_362_0);
    }

    CFPreferencesSetAppValue(key, 0, @"com.apple.Home");
    v1 = key;
  }
}

BOOL HFCheckAndClearResetRedesignMigrationPreference()
{
  v0 = HFPreferencesBooleanValueForKey(@"resetRedesignMigrationKey");
  if (v0 == 2)
  {
    HFPreferencesRemoveValueForKey(@"resetRedesignMigrationKey");
  }

  return v0 == 2;
}

BOOL HFCheckAndClearResetIdentifyVoicePreference()
{
  v0 = HFPreferencesBooleanValueForKey(@"HFResetIdentifyVoiceOnboardingKey");
  if (v0 == 2)
  {
    HFPreferencesRemoveValueForKey(@"HFResetIdentifyVoiceOnboardingKey");
  }

  return v0 == 2;
}

BOOL HFCheckAndClearResetAnnouncePreference()
{
  v0 = HFPreferencesBooleanValueForKey(@"HFResetAnnounceOnboardingKey");
  if (v0 == 2)
  {
    HFPreferencesRemoveValueForKey(@"HFResetAnnounceOnboardingKey");
  }

  return v0 == 2;
}

BOOL HFCheckAndClearResetAnnounceTextButtonViewCountPreference()
{
  v0 = HFPreferencesBooleanValueForKey(@"HFResetAnounceTextButtonDisplayStatsKey");
  if (v0 == 2)
  {
    HFPreferencesRemoveValueForKey(@"HFResetAnounceTextButtonDisplayStatsKey");
  }

  return v0 == 2;
}

BOOL HFCheckAndClearResetHomeTheaterPreference()
{
  v0 = HFPreferencesBooleanValueForKey(@"HFResetHomeTheaterOnboardingKey");
  if (v0 == 2)
  {
    HFPreferencesRemoveValueForKey(@"HFResetHomeTheaterOnboardingKey");
  }

  return v0 == 2;
}

BOOL HFCheckAndClearResetTVViewingProfilesPreference()
{
  v0 = HFPreferencesBooleanValueForKey(@"HFResetTVViewingProfilesOnboardingKey");
  if (v0 == 2)
  {
    HFPreferencesRemoveValueForKey(@"HFResetTVViewingProfilesOnboardingKey");
  }

  return v0 == 2;
}

BOOL HFCheckAndClearResetNaturalLightingPreference()
{
  v0 = HFPreferencesBooleanValueForKey(@"HFResetNaturalLightingOnboardingKey");
  if (v0 == 2)
  {
    HFPreferencesRemoveValueForKey(@"HFResetNaturalLightingOnboardingKey");
  }

  return v0 == 2;
}

BOOL HFCheckAndClearResetCameraRecordingPreference()
{
  v0 = HFPreferencesBooleanValueForKey(@"HFResetCameraRecordingOnboardingKey");
  if (v0 == 2)
  {
    HFPreferencesRemoveValueForKey(@"HFResetCameraRecordingOnboardingKey");
  }

  return v0 == 2;
}

BOOL HFCheckAndClearResetWalletKeyExpressModePreference()
{
  v0 = HFPreferencesBooleanValueForKey(@"HFResetWalletKeyExpressModeOnboardingKey");
  if (v0 == 2)
  {
    HFPreferencesRemoveValueForKey(@"HFResetWalletKeyExpressModeOnboardingKey");
  }

  return v0 == 2;
}

BOOL HFCheckAndClearResetAccessCodePreference()
{
  v0 = HFPreferencesBooleanValueForKey(@"HFResetAccessCodeOnboardingKey");
  if (v0 == 2)
  {
    HFPreferencesRemoveValueForKey(@"HFResetAccessCodeOnboardingKey");
  }

  return v0 == 2;
}

BOOL HFCheckAndClearResetAccessoryFirmwareUpdatePreference()
{
  v0 = HFPreferencesBooleanValueForKey(@"HFResetAccessoryFirmwareUpdateOnboarding");
  if (v0 == 2)
  {
    HFPreferencesRemoveValueForKey(@"HFResetAccessoryFirmwareUpdateOnboarding");
  }

  return v0 == 2;
}

BOOL HFCheckAndClearResetUtilityPreference()
{
  v0 = HFPreferencesBooleanValueForKey(@"HFResetUtilityOnboarding");
  if (v0 == 2)
  {
    HFPreferencesRemoveValueForKey(@"HFResetUtilityOnboarding");
  }

  return v0 == 2;
}

uint64_t HFForceRemoteAccessStateAvailable()
{
  v0 = __HFForceRemoteAccessStateAvailable_block_invoke();
  v1 = [v0 BOOLValue];

  return v1;
}

id __HFForceRemoteAccessStateAvailable_block_invoke()
{
  if (_MergedGlobals_289 != -1)
  {
    dispatch_once(&_MergedGlobals_289, &__block_literal_global_326);
  }

  v1 = qword_280E03810;

  return v1;
}

void __HFForceRemoteAccessStateAvailable_block_invoke_2()
{
  v0 = [MEMORY[0x277CCABB0] numberWithBool:HFPreferencesBooleanValueForKey(@"HFForceRemoteAccessStateAvailable") == 2];
  v1 = qword_280E03810;
  qword_280E03810 = v0;
}

uint64_t HFForceNotAdministrator()
{
  v0 = __HFForceNotAdministrator_block_invoke();
  v1 = [v0 BOOLValue];

  return v1;
}

id __HFForceNotAdministrator_block_invoke()
{
  if (qword_280E03818 != -1)
  {
    dispatch_once(&qword_280E03818, &__block_literal_global_330);
  }

  v1 = qword_280E03820;

  return v1;
}

void __HFForceNotAdministrator_block_invoke_2()
{
  v0 = [MEMORY[0x277CCABB0] numberWithBool:HFPreferencesBooleanValueForKey(@"HFForceNotAdministrator") == 2];
  v1 = qword_280E03820;
  qword_280E03820 = v0;
}

uint64_t HFForceNonInternalInstallBehavior()
{
  v0 = __HFForceNonInternalInstallBehavior_block_invoke();
  v1 = [v0 BOOLValue];

  return v1;
}

id __HFForceNonInternalInstallBehavior_block_invoke()
{
  if (qword_280E03828 != -1)
  {
    dispatch_once(&qword_280E03828, &__block_literal_global_334);
  }

  v1 = qword_280E03830;

  return v1;
}

void __HFForceNonInternalInstallBehavior_block_invoke_2()
{
  v0 = [MEMORY[0x277CCABB0] numberWithBool:HFPreferencesBooleanValueForKey(@"HFForceNonInternalInstallBehavior") == 2];
  v1 = qword_280E03830;
  qword_280E03830 = v0;
}

uint64_t HFHideQuickControls()
{
  if (qword_280E03838 != -1)
  {
    dispatch_once(&qword_280E03838, &__block_literal_global_338_0);
  }

  v0 = qword_280E03840;
  v1 = [v0 BOOLValue];

  return v1;
}

void __HFHideQuickControls_block_invoke_2()
{
  v0 = [MEMORY[0x277CCABB0] numberWithBool:HFPreferencesBooleanValueForKey(@"hideQuickControls") == 2];
  v1 = qword_280E03840;
  qword_280E03840 = v0;
}

uint64_t HFForceMacLikeBehavior()
{
  v0 = __HFForceMacLikeBehavior_block_invoke();
  v1 = [v0 BOOLValue];

  return v1;
}

id __HFForceMacLikeBehavior_block_invoke()
{
  if (qword_280E03848 != -1)
  {
    dispatch_once(&qword_280E03848, &__block_literal_global_342);
  }

  v1 = qword_280E03850;

  return v1;
}

void __HFForceMacLikeBehavior_block_invoke_2()
{
  v0 = [MEMORY[0x277CCABB0] numberWithBool:HFPreferencesBooleanValueForKey(@"HFHelloImAMacKey") == 2];
  v1 = qword_280E03850;
  qword_280E03850 = v0;
}

id _HFPreferencesGetAccessoryDictionary(void *a1)
{
  v1 = a1;
  if (+[HFUtilities isInternalInstall])
  {
    v2 = HFPreferencesBooleanValueForKey(@"InternalDebuggingEnabled");
    v3 = MEMORY[0x277CBEC10];
    if (v2 == 2)
    {
      if (!v1)
      {
        v9 = [MEMORY[0x277CCA890] currentHandler];
        v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSDictionary *_HFPreferencesGetAccessoryDictionary(NSString *__strong)"];
        [v9 handleFailureInFunction:v10 file:@"HFPreferences.m" lineNumber:508 description:{@"Invalid parameter not satisfying: %@", @"accessoryUUID"}];
      }

      if (_InstallHomePreferencesObserverIfNecessary_onceToken != -1)
      {
        dispatch_once(&_InstallHomePreferencesObserverIfNecessary_onceToken, &__block_literal_global_362_0);
      }

      v4 = objc_autoreleasePoolPush();
      v5 = CFPreferencesCopyAppValue([v1 stringByAppendingString:@"-AccessoryDictionary"], @"com.apple.Home");
      v6 = v5;
      if (v5)
      {
        v7 = v5;
      }

      else
      {
        v7 = v3;
      }

      v3 = v7;

      objc_autoreleasePoolPop(v4);
    }
  }

  else
  {
    v3 = MEMORY[0x277CBEC10];
  }

  return v3;
}

BOOL HFPreferencesInternalDebuggingEnabled()
{
  result = +[HFUtilities isInternalInstall];
  if (result)
  {
    return HFPreferencesBooleanValueForKey(@"InternalDebuggingEnabled") == 2;
  }

  return result;
}

void _HFPreferencesSetAccessoryDictionary(void *a1, void *a2)
{
  v6 = a1;
  v3 = a2;
  if (+[HFUtilities isInternalInstall]&& HFPreferencesBooleanValueForKey(@"InternalDebuggingEnabled") == 2)
  {
    if (!v6)
    {
      v4 = [MEMORY[0x277CCA890] currentHandler];
      v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void _HFPreferencesSetAccessoryDictionary(NSString *__strong, NSDictionary *__strong)"}];
      [v4 handleFailureInFunction:v5 file:@"HFPreferences.m" lineNumber:522 description:{@"Invalid parameter not satisfying: %@", @"accessoryUUID"}];
    }

    if (![v3 count])
    {

      v3 = 0;
    }

    CFPreferencesSetAppValue([v6 stringByAppendingString:@"-AccessoryDictionary"], v3, @"com.apple.Home");
  }
}

void HFPreferencesAccessorySetValueForKey(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = _HFPreferencesGetAccessoryDictionary(v7);
  v9 = [v8 mutableCopy];

  [v9 setObject:v5 forKeyedSubscript:v6];
  _HFPreferencesSetAccessoryDictionary(v7, v9);
}

id HFPreferencesAccessoryValueForKey(void *a1, void *a2)
{
  v3 = a2;
  v4 = _HFPreferencesGetAccessoryDictionary(a1);
  v5 = [v4 objectForKey:v3];

  return v5;
}

void HFPreferencesSetInternalDebuggingEnabled(uint64_t a1)
{
  v1 = [MEMORY[0x277CCABB0] numberWithBool:a1];
  v2 = _InstallHomePreferencesObserverIfNecessary_onceToken;
  v3 = @"InternalDebuggingEnabled";
  v4 = v1;
  v7 = v4;
  if (v2 == -1)
  {
    v5 = v4;
  }

  else
  {
    dispatch_once(&_InstallHomePreferencesObserverIfNecessary_onceToken, &__block_literal_global_362_0);
    v5 = v7;
  }

  CFPreferencesSetAppValue(@"InternalDebuggingEnabled", v5, @"com.apple.Home");

  CFPreferencesSynchronize(@"com.apple.Home", *MEMORY[0x277CBF020], *MEMORY[0x277CBF010]);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.Home.preferenceschanged", 0, 0, 1u);
}

BOOL HFPreferencesShowDoublePaneEnergyForecast()
{
  result = +[HFUtilities isInternalInstall];
  if (result)
  {
    return HFPreferencesBooleanValueForKey(@"ShowDoublePaneEnergyForecast") == 2;
  }

  return result;
}

BOOL HFPreferenceIdentifyHomePodButtonEnabled()
{
  result = +[HFUtilities isInternalInstall];
  if (result)
  {
    return HFPreferencesBooleanValueForKey(@"HFPreferenceIdentifyHomePodButtonEnabledKey") == 2;
  }

  return result;
}

id HFPerformanceUpgradeTitles()
{
  if (qword_280E03858 != -1)
  {
    dispatch_once(&qword_280E03858, &__block_literal_global_360_0);
  }

  v1 = qword_280E03860;

  return v1;
}

void __HFPerformanceUpgradeTitles_block_invoke_2()
{
  v0 = qword_280E03860;
  qword_280E03860 = MEMORY[0x277CBEC10];
}

BOOL HFForceHideEmptyFavoriteScenes()
{
  result = +[HFUtilities isInternalInstall];
  if (result)
  {
    return HFPreferencesBooleanValueForKey(@"HFForceHideEmptyFavoriteScenes") == 2;
  }

  return result;
}

void _HomePrefsChangedHandler()
{
  v0 = [MEMORY[0x277CCAB98] defaultCenter];
  [v0 postNotificationName:@"com.apple.Home.preferenceschanged" object:0];
}

void _HomeDPrefsChangedHandler()
{
  v0 = [MEMORY[0x277CCAB98] defaultCenter];
  [v0 postNotificationName:@"com.apple.homed.preferenceschanged" object:0];
}

void sub_20DC81D58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DC864E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DC89730(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DC8BE28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DC8E934(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  objc_destroyWeak((v23 + 64));
  objc_destroyWeak(&location);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v24 - 128), 8);
  _Block_object_dispose((v24 - 96), 8);
  _Unwind_Resume(a1);
}

id _HFStateDumpBuilderForMediaProfileContainer(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = &unk_282584A38;
  v6 = v3;
  v7 = v6;
  if (!v6)
  {
    goto LABEL_7;
  }

  if ([v6 conformsToProtocol:v5])
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v7;
  if (!v8)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertProtocolCast(Protocol * _Nonnull __strong, id  _Nonnull __strong)"}];
    v12 = NSStringFromProtocol(v5);
    [v10 handleFailureInFunction:v11 file:@"NSObject+NAAdditions.h" lineNumber:71 description:{@"Expected protocol %@", v12}];

LABEL_7:
    v9 = 0;
  }

  v13 = [HFStateDumpBuilder builderWithObject:v7 context:v4];
  v14 = [v7 uniqueIdentifier];
  [v13 appendObject:v14 withName:@"UUID" options:2];

  v15 = [v7 hf_backingAccessory];
  v16 = [v4 copyWithDetailLevel:0];
  [v13 appendObject:v15 withName:@"accessory" context:v16 options:1];

  v17 = [v7 hf_backingAccessory];
  v18 = [v17 firmwareVersion];
  [v13 appendObject:v18 withName:@"firmware version" options:1];

  v19 = [v7 hf_parentRoom];
  [v13 appendObject:v19 withName:@"room"];

  [v13 appendBool:objc_msgSend(v7 withName:"hf_isReachable") ifEqualTo:{@"reachable", 0}];
  [v13 appendBool:objc_msgSend(v7 withName:"hf_isCurrentAccessory") ifEqualTo:{@"currentAccessory", 1}];
  [v13 appendBool:objc_msgSend(v7 withName:"hf_homePodSupportsMultiUser") ifEqualTo:{@"supportsMultiUser", 1}];
  if ([v4 detailLevel] == 2)
  {
    v20 = [v7 mediaSession];
    [v13 appendObject:v20 withName:@"mediaSession"];

    v21 = [v7 settings];
    [v13 appendObject:v21 withName:@"settings"];
  }

  return v13;
}

void sub_20DC95A8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DC96140(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location, id a23)
{
  objc_destroyWeak((v23 + 48));
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a23);
  _Unwind_Resume(a1);
}

void sub_20DC98FD4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_20DC9BB4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DC9D910(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_20DC9DA90(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void sub_20DC9F504(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 120));
  _Unwind_Resume(a1);
}

void sub_20DCA11E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DCA18B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DCA39D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DCA41BC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_20DCA458C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_20DCA4944(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_20DCA4E6C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_20DCA5250(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_20DCA5634(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_20DCA5A58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DCA6A18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DCA6CE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DCA7690(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DCA80C8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_20DCA8C98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DCABFA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DCB6950(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *NSStringFromHFWallpaperVariant(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return @"original";
  }

  else
  {
    return off_277DFF4D8[a1 - 1];
  }
}

void sub_20DCBDB48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DCC1278(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t HMSoftwareUpdateStateFromHMSoftwareUpdateStatusV2(unint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  if (a1 < 0x13)
  {
    return qword_20DD97698[a1];
  }

  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Yet to handle HMSoftwareUpdateStatusV2: %lu", a1];
  v3 = HFLogForCategory(0x44uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v5 = v2;
    _os_log_error_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
  }

  NSLog(&stru_2824B1958.isa, v2);
  return 4;
}

void sub_20DCC1D1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DCC2674(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DCC41A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DCC443C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  _Unwind_Resume(a1);
}

void sub_20DCC4C9C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

void sub_20DCC6AC8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_20DCC9EF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, ...)
{
  va_start(va, a43);
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose(&a38, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v43 - 216), 8);
  _Block_object_dispose((v43 - 168), 8);
  _Block_object_dispose((v43 - 136), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__22(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *HFStringForDeviceOrientationSimplified(uint64_t a1)
{
  result = @"Unknown";
  if (a1 > 3)
  {
    if (a1 == 4)
    {
      return @"LandscapeRight";
    }

    else
    {
      if (a1 == 5)
      {
        v13 = [MEMORY[0x277D759A0] mainScreen];
        [v13 bounds];
        v7 = v14;
        v15 = [MEMORY[0x277D759A0] mainScreen];
        [v15 bounds];
        v10 = v16;

        v11 = @"FaceUp-Landscape";
        v12 = @"FaceUp-Portrait";
      }

      else
      {
        if (a1 != 6)
        {
          return result;
        }

        v5 = [MEMORY[0x277D759A0] mainScreen];
        [v5 bounds];
        v7 = v6;
        v8 = [MEMORY[0x277D759A0] mainScreen];
        [v8 bounds];
        v10 = v9;

        v11 = @"FaceDown-Landscape";
        v12 = @"FaceDown-Portrait";
      }

      if (v7 >= v10)
      {
        return v11;
      }

      else
      {
        return v12;
      }
    }
  }

  else
  {
    v3 = @"PortraitUpsideDown";
    v4 = @"LandscapeLeft";
    if (a1 != 3)
    {
      v4 = @"Unknown";
    }

    if (a1 != 2)
    {
      v3 = v4;
    }

    if (a1 == 1)
    {
      return @"Portrait";
    }

    else
    {
      return v3;
    }
  }
}

void sub_20DCCCE8C(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1);
  objc_destroyWeak((v2 - 152));
  _Unwind_Resume(a1);
}

void sub_20DCCFD48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__23(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_20DCD126C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_20DCD1CE0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_20DCD29B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DCD3708(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DCD7068(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_20DCD95C4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_20DCD9A5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DCE050C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__24(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_20DCE1458(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_20DCE8584(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_20DCE8EA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DCEB248(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *NSStringFromHMUserCameraAccessLevel(unint64_t a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  else
  {
    return off_277E006C8[a1];
  }
}

void *HFLocalizedStringFromHMUserCameraAccessLevel(unint64_t a1)
{
  if (a1 > 2)
  {
    v1 = 0;
  }

  else
  {
    v1 = off_277E006C8[a1];
  }

  return _HFLocalizedStringWithDefaultValue(v1, 0, 0);
}

void sub_20DCEBE14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DCEED50(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_20DCEF4E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DCF28AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, id a16)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a16);
  _Unwind_Resume(a1);
}

void sub_20DCF2D88(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 112));
  _Unwind_Resume(a1);
}

void sub_20DCF351C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 128));
  _Unwind_Resume(a1);
}

void sub_20DCF3C48(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 128));
  _Unwind_Resume(a1);
}

void sub_20DCF4270(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_20DCF4B28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DCF4F24(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_20DCF8608(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id location)
{
  objc_destroyWeak((v27 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DCF896C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

HFCharacteristicGroup *HFNewTargetCurrentGroup(void *a1, void *a2, void *a3)
{
  v19[2] = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = +[HFCharacteristicGroup _targetCurrentStateCharacteristicTypeMap];
  v9 = [v8 objectForKeyedSubscript:v7];

  v19[0] = v7;
  v19[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
  v11 = v5;
  v12 = v6;
  v13 = v10;
  v14 = [HFCharacteristicGroup alloc];
  v15 = _HFLocalizedStringWithDefaultValue(v12, v12, 1);

  v16 = [MEMORY[0x277CBEB98] setWithArray:v13];

  v17 = [(HFCharacteristicGroup *)v14 initWithID:v11 title:v15 characteristicTypes:v16];

  return v17;
}

void sub_20DCFE974(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_20DCFEE70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 88));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DD033D0(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x20DD0339CLL);
  }

  _Unwind_Resume(a1);
}

void sub_20DD093A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v23 + 48));
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DD0B0DC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_20DD0B2AC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void sub_20DD0F640(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DD10AF8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_20DD15278(_Unwind_Exception *a1)
{
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 40));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v5 - 136));
  _Unwind_Resume(a1);
}

void sub_20DD161C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DD17804(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DD17DA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_20DD17F34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_20DD1CC70(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void HFGetColorForLightTemperature(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3810000000;
  v20 = "";
  v21 = 0;
  v22 = 0;
  v23 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __HFGetColorForLightTemperature_block_invoke;
  aBlock[3] = &unk_277E013D8;
  aBlock[4] = &v17;
  aBlock[5] = a1;
  aBlock[6] = a2;
  aBlock[7] = a3;
  v4 = _Block_copy(aBlock);
  v5 = v4;
  if (a4 >= 1000.0 && a4 <= 40000.0)
  {
    v6 = v18;
    v7 = vdup_n_s32(a4 > 6500.0);
    v8.i64[0] = v7.u32[0];
    v8.i64[1] = v7.u32[1];
    v9 = vcltzq_s64(vshlq_n_s64(v8, 0x3FuLL));
    __asm { FMOV            V1.2D, #1.0 }

    v18[2] = vmaxnmq_f64(vminnmq_f64(vaddq_f64(vbslq_s8(v9, xmmword_20DD978B0, xmmword_20DD978A0), vdivq_f64(vbslq_s8(v9, xmmword_20DD978F0, xmmword_20DD978E0), vaddq_f64(vbslq_s8(v9, xmmword_20DD978D0, xmmword_20DD978C0), vdupq_lane_s64(*&a4, 0)))), _Q1), 0);
    v6[3].f64[0] = fmax(fmin(-8257.79973 / (a4 + 2575.28275) + 1.89937539, 1.0), 0.0);
  }

  if (v4)
  {
    (*(v4 + 2))(v4);
  }

  _Block_object_dispose(&v17, 8);
}

double __HFGetColorForLightTemperature_block_invoke(void *a1)
{
  v1 = a1[5];
  if (v1)
  {
    result = *(*(a1[4] + 8) + 32);
    *v1 = result;
  }

  v3 = a1[6];
  if (v3)
  {
    result = *(*(a1[4] + 8) + 40);
    *v3 = result;
  }

  v4 = a1[7];
  if (v4)
  {
    result = *(*(a1[4] + 8) + 48);
    *v4 = result;
  }

  return result;
}

void *HFConvertRGBToHSB(void *result, double *a2, double *a3, int8x16_t a4, int8x16_t a5, double a6)
{
  if (*a4.i64 < *a5.i64 || *a4.i64 < a6)
  {
    if (*a5.i64 < *a4.i64 || *a5.i64 < a6)
    {
      if (*a5.i64 >= *a4.i64)
      {
        v8 = *a4.i64;
      }

      else
      {
        v8 = *a5.i64;
      }

      v9 = a6;
    }

    else
    {
      if (*a4.i64 >= a6)
      {
        v8 = a6;
      }

      else
      {
        v8 = *a4.i64;
      }

      v9 = *a5.i64;
    }
  }

  else
  {
    if (*a5.i64 >= a6)
    {
      v8 = a6;
    }

    else
    {
      v8 = *a5.i64;
    }

    v9 = *a4.i64;
  }

  v10 = 0.0;
  if (v9 <= 0.0)
  {
    v12 = 0.0;
  }

  else
  {
    v11 = v9 - v8;
    v12 = (v9 - v8) / v9;
    if (v12 != 0.0)
    {
      v13 = (v9 - *a5.i64) / v11;
      v14 = (v9 - a6) / v11;
      if (v9 == *a4.i64)
      {
        if (v8 == *a5.i64)
        {
          v10 = v14 + 5.0;
        }

        else
        {
          v10 = 1.0 - v13;
        }
      }

      else
      {
        v16 = v9 == *a5.i64;
        v17 = (v9 - *a4.i64) / v11;
        if (v16)
        {
          if (v8 == a6)
          {
            v10 = v17 + 1.0;
          }

          else
          {
            v10 = 3.0 - v14;
          }
        }

        else if (v8 == *a4.i64)
        {
          v10 = v13 + 3.0;
        }

        else
        {
          v10 = 5.0 - v17;
        }
      }
    }
  }

  if (a3)
  {
    *a3 = v9;
  }

  if (result)
  {
    *a4.i64 = v10 / 6.0;
    *a5.i64 = v10 / 6.0 - trunc(v10 / 6.0);
    v15.f64[0] = NAN;
    v15.f64[1] = NAN;
    *result = vbslq_s8(vnegq_f64(v15), a5, a4).u64[0];
  }

  if (a2)
  {
    *a2 = v12;
  }

  return result;
}

double *HFConvertHSBToRGB(double *result, double *a2, double *a3, int8x16_t a4, double a5, double a6, int8x16_t a7)
{
  *a7.i64 = *a4.i64 - trunc(*a4.i64);
  v7.f64[0] = NAN;
  v7.f64[1] = NAN;
  v8 = *vbslq_s8(vnegq_f64(v7), a7, a4).i64 * 6.0;
  v9 = v8;
  v10 = v8 - v8;
  v11 = (1.0 - a5) * a6;
  v12 = (1.0 - a5 * v10) * a6;
  v13 = (1.0 - a5 * (1.0 - v10)) * a6;
  if (v9 <= 2)
  {
    if (v9)
    {
      if (v9 != 1)
      {
        v14 = (1.0 - a5) * a6;
        v15 = a6;
        if (v9 != 2)
        {
          return result;
        }

LABEL_17:
        *result = v14;
        *a2 = v15;
        *a3 = v13;
        return result;
      }

      v14 = v12;
      v15 = a6;
    }

    else
    {
      v14 = a6;
      v15 = v13;
    }

    v13 = v11;
    goto LABEL_17;
  }

  switch(v9)
  {
    case 3:
      v14 = (1.0 - a5) * a6;
      v15 = v12;
LABEL_16:
      v13 = a6;
      goto LABEL_17;
    case 4:
      v14 = v13;
      v15 = v11;
      goto LABEL_16;
    case 5:
      v14 = a6;
      v15 = v11;
      v13 = v12;
      goto LABEL_17;
  }

  return result;
}

BOOL HFIsColorLighter(void *a1, double a2, double a3)
{
  v9 = 0.0;
  v10 = 0.0;
  v7 = 0;
  v8 = 0.0;
  [a1 getRed:&v10 green:&v9 blue:&v8 alpha:&v7];
  v5 = (v10 * 255.0 + v9 * 255.0 + v8 * 255.0) / 3.0;
  if (v5 >= a2 * 255.0)
  {
    return v5 > 242.25 || sqrt(((v8 * 255.0 - v5) * (v8 * 255.0 - v5) + (v10 * 255.0 - v5) * (v10 * 255.0 - v5) + (v9 * 255.0 - v5) * (v9 * 255.0 - v5)) / 3.0) <= a3;
  }

  return v5 > 242.25;
}

BOOL HFIsNearYellow(void *a1)
{
  v5 = 0.0;
  v3 = 0;
  v4 = 0.0;
  v2 = 0;
  [a1 getRed:&v5 green:&v4 blue:&v3 alpha:&v2];
  return v4 * 255.0 >= 237.150009 && v5 * 255.0 >= 237.150009;
}

id HFGetUIColorFromMired(double a1)
{
  v1 = 1000000.0 / a1;
  v6 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  HFGetColorForLightTemperature(&v6, &v5, &v4, v1);
  v2 = [MEMORY[0x277D75348] colorWithRed:v6 green:v5 blue:v4 alpha:1.0];

  return v2;
}

void sub_20DD1DC34(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_20DD210D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va1, a15);
  va_start(va, a15);
  v16 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_20DD21EC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__25(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __HFWallpaperManagerRegisterWithDispatcher_block_invoke(uint64_t a1)
{
  v4 = +[HFHomeKitDispatcher sharedDispatcher];
  [v4 addHomeManagerObserver:*(a1 + 32)];
  [v4 addHomeObserver:*(a1 + 32)];
  if ([v4 hasLoadedHomes])
  {
    v2 = *(a1 + 32);
    v3 = [v4 homeManager];
    [v2 homeManagerDidFinishInitialDatabaseLoad:v3];
  }
}

void sub_20DD288CC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_20DD29158(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __HFComparatorForNullableObjects_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = v5;
  v9 = v6;
  v10 = v9;
  v14 = v9;
  if (v8)
  {
    v11 = -1;
  }

  else
  {
    v11 = v9 != 0;
  }

  v12 = v9;
  if (v8 && v9)
  {
    v11 = v7[2](v7, v8, v9);
    v12 = v14;
  }

  return v11;
}

void sub_20DD2BA48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DD2F62C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_20DD2FBEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DD30810(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DD30C98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _HFCharacteristicMetadataTypeIsReallyBinary(void *a1)
{
  v1 = a1;
  v2 = [v1 minimumValue];
  if ([v2 isEqualToNumber:&unk_282525290])
  {
    v3 = [v1 maximumValue];
    if ([v3 isEqualToNumber:&unk_2825252A8])
    {
      v4 = [v1 stepValue];
      v5 = [v4 isEqualToNumber:&unk_2825252A8];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id HFValueSetStringProviderWithMap(const char *a1, void *a2)
{
  v3 = a2;
  if (qword_280E03D60 != -1)
  {
    dispatch_once(&qword_280E03D60, &__block_literal_global_420);
  }

  v4 = qword_280E03D68;
  v5 = NSStringFromSelector(a1);
  v6 = [v4 na_objectForKey:v5 withDefaultValue:v3];

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __HFValueSetStringProviderWithMap_block_invoke_3;
  aBlock[3] = &unk_277E01C18;
  v11 = v6;
  v7 = v6;
  v8 = _Block_copy(aBlock);

  return v8;
}

void __HFValueSetStringProviderWithMap_block_invoke_2()
{
  v0 = objc_opt_new();
  v1 = qword_280E03D68;
  qword_280E03D68 = v0;
}

id __HFValueSetStringProviderWithMap_block_invoke_3(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:a2];
  v3 = v2;
  if (!v2)
  {
    v2 = @"HFCharacteristicValueUnknownString";
  }

  v4 = _HFLocalizedStringWithDefaultValue(v2, v2, 1);

  return v4;
}

uint64_t HFAccessorySettingsDefaultInterfaceModalityForHMAccessorySetting(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v2 = 0;
      goto LABEL_21;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v2 = -1;
      goto LABEL_21;
    }

    v3 = v1;
    v4 = [v3 minimumValue];
    if ([v4 isEqual:&unk_2825252C0])
    {
      v5 = [v3 maximumValue];
      if ([v5 isEqual:&unk_2825252D8])
      {
        v6 = [v3 stepValue];
        v7 = [v6 isEqual:&unk_2825252D8];

        if (v7)
        {
          v2 = 5;
LABEL_20:

          goto LABEL_21;
        }

LABEL_13:
        v8 = [v3 maximumValue];
        if (v8 && (v9 = v8, [v3 minimumValue], v10 = objc_claimAutoreleasedReturnValue(), v10, v9, v10))
        {
          v11 = [v3 stepValue];
          if (v11)
          {
            v2 = 3;
          }

          else
          {
            v2 = 2;
          }
        }

        else
        {
          v2 = 1;
        }

        goto LABEL_20;
      }
    }

    goto LABEL_13;
  }

  v2 = 6;
LABEL_21:

  return v2;
}

void sub_20DD36BBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v13 + 40));
  _Unwind_Resume(a1);
}

__CFString *NSStringFromAFVoiceGender(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"Any";
  }

  else
  {
    return off_277E02520[a1 - 1];
  }
}

void sub_20DD3FE60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DD40DFC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v5 - 104));
  _Unwind_Resume(a1);
}

void sub_20DD41868(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v5 + 32));
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v6 - 104));
  _Unwind_Resume(a1);
}

void sub_20DD41F38(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v4 - 72));
  _Unwind_Resume(a1);
}

void sub_20DD42364(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_20DD426CC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_20DD42A5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DD42FB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DD46D68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DD49C40(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_20DD4A1FC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_20DD4E758(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, ...)
{
  va_start(va, a27);
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__27(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *HFMediaAccessoryItemTypeDescription(uint64_t a1)
{
  if ((a1 - 1) > 7)
  {
    return @"Unknown";
  }

  else
  {
    return off_277E02868[a1 - 1];
  }
}

void sub_20DD54124(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DD55930(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DD57080(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class __getMediaServiceConfigurationClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!qword_280E03E00)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __MediaSetupLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_277E02A20;
    v8 = 0;
    qword_280E03E00 = _sl_dlopen();
  }

  if (!qword_280E03E00)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *MediaSetupLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"HFMediaServiceManager.m" lineNumber:21 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("MediaServiceConfiguration");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getMediaServiceConfigurationClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"HFMediaServiceManager.m" lineNumber:23 description:{@"Unable to find class %s", "MediaServiceConfiguration"}];

LABEL_10:
    __break(1u);
  }

  qword_280E03DF8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MediaSetupLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  qword_280E03E00 = result;
  return result;
}

id HFProgrammableSwitchLocalizableStringForAccessoryNamingSystemAndIndex(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 > 1)
  {
    v8 = 0;
  }

  else if (a1 == 1)
  {
    v8 = HFLocalizedStringWithFormat(@"HFProgrammableSwitch_Numeral_FormatString", @"%1lu", a3, a4, a5, a6, a7, a8, a2);
  }

  else
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@_%lu", a4, a5, a6, a7, a8, @"HFProgrammableSwitch", @"DOTS", a2];
    v10 = _HFLocalizedStringWithDefaultValue(v9, 0, 0);
    v8 = v10;
    if (!v10)
    {
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@_UndefinedIdx", @"HFProgrammableSwitch", @"DOTS"];
      v8 = _HFLocalizedStringWithDefaultValue(v11, 0, 0);
    }
  }

  return v8;
}

__CFString *HFLocalizedStringKeyFromHMCharacteristicValueInputEvent(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"HFProgrammableSwitchUndefinedValue";
  }

  else
  {
    return off_277E02EB8[a1];
  }
}

id HFProgrammableSwitchInputEventOptionDisplayPriorityMap()
{
  if (qword_280E03E30 != -1)
  {
    dispatch_once(&qword_280E03E30, &__block_literal_global_237);
  }

  v1 = _MergedGlobals_332;

  return v1;
}

void __HFProgrammableSwitchInputEventOptionDisplayPriorityMap_block_invoke()
{
  v0 = objc_opt_new();
  v1 = objc_opt_new();
  [v1 addIndex:0];
  [v1 addIndex:1];
  [v1 addIndex:2];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __HFProgrammableSwitchInputEventOptionDisplayPriorityMap_block_invoke_2;
  v5[3] = &unk_277E02E98;
  v6 = v0;
  v2 = v0;
  [v1 enumerateIndexesUsingBlock:v5];
  v3 = [v2 copy];
  v4 = _MergedGlobals_332;
  _MergedGlobals_332 = v3;
}

void __HFProgrammableSwitchInputEventOptionDisplayPriorityMap_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
  v5 = HFProgrammableSwitchLocalizedStringKeyForValue(v4);
  v6 = _HFLocalizedStringWithDefaultValue(v5, v5, 1);

  [*(a1 + 32) na_safeSetObject:v7 forKey:v6];
}

__CFString *HFProgrammableSwitchLocalizedStringKeyForValue(void *a1)
{
  if (a1 && (v1 = [a1 integerValue], v1 <= 2))
  {
    return off_277E02EB8[v1];
  }

  else
  {
    return @"HFProgrammableSwitchUndefinedValue";
  }
}

void sub_20DD5B100(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id HFDateAddedForApplicationDataContainer(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [v1 applicationData];
  v3 = [v2 objectForKeyedSubscript:@"HFApplicationDataDateAddedData"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = 0;
    v4 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v3 error:&v8];
    v5 = v8;
    if (!v4)
    {
      v6 = HFLogForCategory(0);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v10 = v1;
        v11 = 2112;
        v12 = v5;
        _os_log_error_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_ERROR, "Error decoding date added for container %@; error: %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id HFUpdateDateAddedForApplicationDataContainer(void *a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  if (!v4)
  {
    v5 = 0;
    goto LABEL_7;
  }

  v15 = 0;
  v5 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v4 requiringSecureCoding:1 error:&v15];
  v6 = v15;
  if (!v6)
  {
LABEL_7:
    v10 = [v3 applicationData];
    [v10 setObject:v5 forKeyedSubscript:@"HFApplicationDataDateAddedData"];

    v11 = MEMORY[0x277D2C900];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __HFUpdateDateAddedForApplicationDataContainer_block_invoke;
    v13[3] = &unk_277DF2C68;
    v14 = v3;
    v9 = [v11 futureWithErrorOnlyHandlerAdapterBlock:v13];
    v7 = v14;
    goto LABEL_8;
  }

  v7 = v6;
  v8 = HFLogForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v17 = v3;
    v18 = 2112;
    v19 = v7;
    _os_log_error_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_ERROR, "Error encoding date added for container %@; error: %@", buf, 0x16u);
  }

  v9 = [MEMORY[0x277D2C900] futureWithError:v7];
LABEL_8:

  return v9;
}

void __HFUpdateDateAddedForApplicationDataContainer_block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 applicationData];
  [v2 updateApplicationData:v4 completionHandler:v3];
}

void sub_20DD618B8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_20DD628F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20DD62B08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id HFSymbolIconAccessoryTypeForSymbol(void *a1)
{
  v1 = a1;
  v2 = [v1 rangeOfString:@"."];
  if (v2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [MEMORY[0x277CCACA8] string];
  }

  else
  {
    [v1 substringToIndex:v2];
  }
  v3 = ;

  return v3;
}

CGPoint CGPointFromString(NSString *string)
{
  MEMORY[0x2821DE300](string);
  result.y = v2;
  result.x = v1;
  return result;
}