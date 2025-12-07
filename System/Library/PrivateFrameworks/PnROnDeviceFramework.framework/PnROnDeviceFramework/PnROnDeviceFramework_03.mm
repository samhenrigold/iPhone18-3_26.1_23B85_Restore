void sub_25E9A39C0(uint64_t a1, unint64_t a2, unsigned __int8 *a3, uint64_t (*a4)(void))
{
  v7 = *a3;

  v8 = sub_25E9D7F00();
  v9 = a4();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_25E9887EC(a1, a2, &v12);
    _os_log_impl(&dword_25E971000, v8, v9, "%s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x25F8C51A0](v11, -1, -1);
    MEMORY[0x25F8C51A0](v10, -1, -1);
  }

  v13 = v7;
  _s20PnROnDeviceFramework20CoreAnalyticsServiceO017submitReliabilityF08category6reasonyAA0I8CategoryO_SStFZ_0(&v13, a1, a2);
}

uint64_t sub_25E9A3AE8()
{
  v0 = sub_25E9D7F10();
  __swift_allocate_value_buffer(v0, qword_280F6FE78);
  __swift_project_value_buffer(v0, qword_280F6FE78);
  sub_25E9A4428();
  sub_25E9D81A0();
  return sub_25E9D7F20();
}

uint64_t sub_25E9A3BA0()
{
  v0 = sub_25E9D7F10();
  __swift_allocate_value_buffer(v0, qword_280F700F0);
  __swift_project_value_buffer(v0, qword_280F700F0);
  sub_25E9A4428();
  sub_25E9D81A0();
  return sub_25E9D7F20();
}

uint64_t sub_25E9A3C58()
{
  v0 = sub_25E9D7F10();
  __swift_allocate_value_buffer(v0, qword_27FD0DAB8);
  __swift_project_value_buffer(v0, qword_27FD0DAB8);
  sub_25E9A4428();
  sub_25E9D81A0();
  return sub_25E9D7F20();
}

uint64_t sub_25E9A3D10()
{
  v0 = sub_25E9D7F10();
  __swift_allocate_value_buffer(v0, qword_27FD0DAD0);
  __swift_project_value_buffer(v0, qword_27FD0DAD0);
  sub_25E9A4428();
  sub_25E9D81A0();
  return sub_25E9D7F20();
}

uint64_t sub_25E9A3DC4()
{
  v0 = sub_25E9D7F10();
  __swift_allocate_value_buffer(v0, qword_27FD0DAE8);
  __swift_project_value_buffer(v0, qword_27FD0DAE8);
  sub_25E9A4428();
  sub_25E9D81A0();
  return sub_25E9D7F20();
}

uint64_t sub_25E9A3E78()
{
  v0 = sub_25E9D7F10();
  __swift_allocate_value_buffer(v0, qword_27FD0DB00);
  __swift_project_value_buffer(v0, qword_27FD0DB00);
  sub_25E9A4428();
  sub_25E9D81A0();
  return sub_25E9D7F20();
}

uint64_t sub_25E9A3F30()
{
  v0 = sub_25E9D7F10();
  __swift_allocate_value_buffer(v0, qword_27FD0DB18);
  __swift_project_value_buffer(v0, qword_27FD0DB18);
  sub_25E9A4428();
  sub_25E9D81A0();
  return sub_25E9D7F20();
}

uint64_t sub_25E9A3FE8()
{
  v0 = sub_25E9D7F10();
  __swift_allocate_value_buffer(v0, qword_27FD0DB30);
  __swift_project_value_buffer(v0, qword_27FD0DB30);
  sub_25E9A4428();
  sub_25E9D81A0();
  return sub_25E9D7F20();
}

uint64_t sub_25E9A40E8()
{
  v0 = sub_25E9D7F10();
  __swift_allocate_value_buffer(v0, qword_27FD0DB60);
  __swift_project_value_buffer(v0, qword_27FD0DB60);
  sub_25E9A4428();
  sub_25E9D81A0();
  return sub_25E9D7F20();
}

uint64_t sub_25E9A41A0()
{
  v0 = sub_25E9D7F10();
  __swift_allocate_value_buffer(v0, qword_27FD0DB78);
  __swift_project_value_buffer(v0, qword_27FD0DB78);
  sub_25E9A4428();
  sub_25E9D81A0();
  return sub_25E9D7F20();
}

uint64_t sub_25E9A42CC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_25E9D7F10();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  sub_25E9A4428();
  sub_25E9D81A0();
  return sub_25E9D7F20();
}

uint64_t sub_25E9A4380@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_25E9D7F10();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

unint64_t sub_25E9A4428()
{
  result = qword_280F700E0;
  if (!qword_280F700E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280F700E0);
  }

  return result;
}

uint64_t sub_25E9A4474(uint64_t a1, unsigned __int8 a2)
{
  sub_25E9D8390();
  sub_25E9D8010();

  return sub_25E9D83C0();
}

uint64_t sub_25E9A45C0(uint64_t a1, unsigned __int8 a2)
{
  sub_25E9D8390();
  sub_25E9D8010();

  return sub_25E9D83C0();
}

uint64_t sub_25E9A4718(uint64_t a1, unsigned __int8 a2)
{
  sub_25E9D8390();
  sub_25E9D8010();

  return sub_25E9D83C0();
}

uint64_t IEPlannerGrainMetricsRecord.description.getter()
{
  memcpy(__dst, v0, sizeof(__dst));
  memcpy(v9, v0, sizeof(v9));
  v1 = sub_25E9A4E2C();
  v2 = sub_25E9A5524();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9[0] = v1;
  sub_25E9A7674(v2, sub_25E9A74C8, 0, isUniquelyReferenced_nonNull_native, v9);

  v4 = sub_25E9A9B34(v9[0], 1);
  v6 = v5;

  if (v6)
  {
    return v4;
  }

  else
  {
    return 0xD00000000000002ALL;
  }
}

uint64_t IEPlannerGrainMetricsRecord.dictionary.getter()
{
  memcpy(__dst, v0, sizeof(__dst));
  memcpy(v6, v0, sizeof(v6));
  v1 = sub_25E9A4E2C();
  v2 = sub_25E9A5524();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6[0] = v1;
  sub_25E9A7674(v2, sub_25E9A74C8, 0, isUniquelyReferenced_nonNull_native, v6);

  return v6[0];
}

uint64_t sub_25E9A49F8()
{
  v0 = IEPlannerGrainMetricsRecord.dictionary.getter();
  v1 = sub_25E9A9B34(v0, 1);
  v3 = v2;

  if (v3)
  {
    return v1;
  }

  else
  {
    return 0xD00000000000002ALL;
  }
}

PnROnDeviceFramework::PlannerGrainStage_optional __swiftcall PlannerGrainStage.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_25E9D82D0();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t PlannerGrainStage.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x4174736575716572;
  v3 = 0x6E776F6E6B6E75;
  if (v1 == 5)
  {
    v3 = 0xD000000000000015;
  }

  v4 = 0xD00000000000001ALL;
  if (v1 != 3)
  {
    v4 = 0x65526E6F69746361;
  }

  if (*v0 > 4u)
  {
    v4 = v3;
  }

  v5 = 0x64656D7265746E69;
  if (v1 != 1)
  {
    v5 = 0xD000000000000015;
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
    return v4;
  }
}

uint64_t sub_25E9A4BD8(uint64_t a1)
{
  sub_25E9D8010();
}

void sub_25E9A4D24(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED00006E6F697463;
  v4 = 0x4174736575716572;
  v5 = 0x800000025E9DCBE0;
  v6 = 0x6E776F6E6B6E75;
  if (v2 == 5)
  {
    v6 = 0xD000000000000015;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  v7 = 0x800000025E9DCBB0;
  v8 = 0xD00000000000001ALL;
  if (v2 != 3)
  {
    v8 = 0x65526E6F69746361;
    v7 = 0xEE0065736E6F7073;
  }

  if (*v1 <= 4u)
  {
    v5 = v7;
  }

  else
  {
    v8 = v6;
  }

  v9 = 0xEC00000065746169;
  v10 = 0x64656D7265746E69;
  if (v2 != 1)
  {
    v10 = 0xD000000000000015;
    v9 = 0x800000025E9DCB90;
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
    v11 = v8;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

unint64_t sub_25E9A4E2C()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v44 = v0[6];
  v45 = v0[8];
  v56 = v0[9];
  v57 = v0[11];
  v58 = v0[7];
  v7 = *(v0 + 96);
  v46 = v0[10];
  v47 = v0[13];
  v48 = v0[14];
  v49 = v0[15];
  v50 = v0[16];
  v51 = v0[17];
  v52 = v0[18];
  v53 = v0[19];
  v8 = v0[22];
  v54 = v0[20];
  v55 = v0[21];
  v9 = v0[51];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DA70, &unk_25E9DA5A0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_25E9DA800;
  *(v10 + 32) = 0x496E6F6973736573;
  v11 = MEMORY[0x277D837D0];
  *(v10 + 40) = 0xE900000000000064;
  *(v10 + 48) = v2;
  *(v10 + 56) = v1;
  *(v10 + 72) = v11;
  strcpy((v10 + 80), "rawSessionId");
  *(v10 + 93) = 0;
  *(v10 + 94) = -5120;
  *(v10 + 96) = v3;
  *(v10 + 104) = v4;
  *(v10 + 120) = v11;
  *(v10 + 128) = 0x6552746E65696C63;
  *(v10 + 136) = 0xEF64497473657571;
  *(v10 + 144) = v5;
  *(v10 + 152) = v6;
  *(v10 + 168) = v11;
  *(v10 + 176) = 0x6D45646C756F6873;
  v12 = MEMORY[0x277D839B0];
  *(v10 + 184) = 0xEA00000000007469;
  *(v10 + 192) = 1;
  *(v10 + 216) = v12;
  *(v10 + 224) = 0xD000000000000011;
  *(v10 + 232) = 0x800000025E9DE000;
  if (v7 > 2)
  {
    if (v7 <= 4)
    {
      v13 = v9;
      v14 = v55;
      v15 = v56;
      v17 = v53;
      v16 = v54;
      v19 = v51;
      v18 = v52;
      v21 = v49;
      v20 = v50;
      v23 = v47;
      v22 = v48;
      if (v7 == 3)
      {
        v24 = 0x800000025E9DCBB0;
        v25 = 0xD00000000000001ALL;
      }

      else
      {
        v24 = 0xEE0065736E6F7073;
        v25 = 0x65526E6F69746361;
      }

      goto LABEL_15;
    }

    v13 = v9;
    v14 = v55;
    v15 = v56;
    v17 = v53;
    v16 = v54;
    v19 = v51;
    v18 = v52;
    v21 = v49;
    v20 = v50;
    v23 = v47;
    v22 = v48;
    if (v7 != 5)
    {
      v24 = 0xE700000000000000;
      v25 = 0x6E776F6E6B6E75;
      goto LABEL_15;
    }

    v26 = "actionWithoutResponse";
    goto LABEL_12;
  }

  if (!v7)
  {
    v24 = 0xED00006E6F697463;
    v25 = 0x4174736575716572;
    v13 = v9;
    v15 = v56;
    v27 = v57;
    v28 = v58;
    v16 = v54;
    v14 = v55;
    v18 = v52;
    v17 = v53;
    v20 = v50;
    v19 = v51;
    v22 = v48;
    v21 = v49;
    v23 = v47;
    goto LABEL_16;
  }

  v13 = v9;
  v14 = v55;
  v15 = v56;
  v17 = v53;
  v16 = v54;
  v19 = v51;
  v18 = v52;
  v21 = v49;
  v20 = v50;
  v23 = v47;
  v22 = v48;
  if (v7 != 1)
  {
    v26 = "requestDisambiguation";
LABEL_12:
    v24 = (v26 - 32) | 0x8000000000000000;
    v25 = 0xD000000000000015;
    goto LABEL_15;
  }

  v24 = 0xEC00000065746169;
  v25 = 0x64656D7265746E69;
LABEL_15:
  v27 = v57;
  v28 = v58;
LABEL_16:
  *(v10 + 240) = v25;
  *(v10 + 248) = v24;
  *(v10 + 264) = v11;
  *(v10 + 272) = 0x65757165526D756ELL;
  v29 = MEMORY[0x277D83B88];
  *(v10 + 280) = 0xEA00000000007473;
  *(v10 + 288) = v23;
  *(v10 + 312) = v29;
  strcpy((v10 + 320), "numPlanCreated");
  *(v10 + 335) = -18;
  *(v10 + 336) = v22;
  *(v10 + 360) = v29;
  *(v10 + 368) = 0xD000000000000011;
  *(v10 + 376) = 0x800000025E9DD550;
  *(v10 + 384) = v21;
  *(v10 + 408) = v29;
  *(v10 + 416) = 0xD000000000000012;
  *(v10 + 424) = 0x800000025E9DD570;
  *(v10 + 432) = v20;
  *(v10 + 456) = v29;
  *(v10 + 464) = 0xD000000000000016;
  *(v10 + 472) = 0x800000025E9DE020;
  *(v10 + 480) = v19;
  *(v10 + 504) = v29;
  *(v10 + 512) = 0xD000000000000018;
  *(v10 + 520) = 0x800000025E9DE040;
  *(v10 + 552) = v29;
  *(v10 + 528) = v18;
  *(v10 + 560) = 0xD000000000000015;
  *(v10 + 568) = 0x800000025E9DE060;
  *(v10 + 600) = v29;
  *(v10 + 576) = v17;
  *(v10 + 608) = 0xD000000000000020;
  *(v10 + 616) = 0x800000025E9DE080;
  *(v10 + 648) = v29;
  *(v10 + 624) = v16;
  *(v10 + 656) = 0xD000000000000017;
  *(v10 + 664) = 0x800000025E9DE0B0;
  *(v10 + 696) = v29;
  *(v10 + 672) = v14;
  *(v10 + 704) = 0xD000000000000010;
  *(v10 + 712) = 0x800000025E9DD5B0;
  *(v10 + 744) = v29;
  *(v10 + 720) = v8;

  v30 = sub_25E980C94(v10);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D720, &qword_25E9DAC00);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if (v28)
  {
    *(&v60 + 1) = v28;
    v31 = MEMORY[0x277D837D0];
    v32 = v44;
  }

  else
  {
    v32 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
    v31 = sub_25E9A1988();
  }

  v61 = v31;
  *&v60 = v32;
  sub_25E980EA8(&v60, v59);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_25E994BD0(v59, 0xD000000000000013, 0x800000025E9DD4F0, isUniquelyReferenced_nonNull_native);
  if (v15)
  {
    *(&v60 + 1) = v15;
    v34 = MEMORY[0x277D837D0];
    v35 = v45;
  }

  else
  {
    v35 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
    v34 = sub_25E9A1988();
  }

  v61 = v34;
  *&v60 = v35;
  sub_25E980EA8(&v60, v59);

  v36 = swift_isUniquelyReferenced_nonNull_native();
  sub_25E994BD0(v59, 0x7972657551776172, 0xEF6449746E657645, v36);
  if (v27)
  {
    *(&v60 + 1) = v27;
    v37 = MEMORY[0x277D837D0];
    v38 = v46;
  }

  else
  {
    v38 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
    v37 = sub_25E9A1988();
  }

  v61 = v37;
  *&v60 = v38;
  sub_25E980EA8(&v60, v59);

  v39 = swift_isUniquelyReferenced_nonNull_native();
  sub_25E994BD0(v59, 0x6E6576456E616C70, 0xEB00000000644974, v39);
  if (v13)
  {
    v40 = sub_25E9A89B8();
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DA80, &unk_25E9DA5D0);
  }

  else
  {
    v40 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
    v41 = sub_25E9A1988();
  }

  v61 = v41;
  *&v60 = v40;
  sub_25E980EA8(&v60, v59);
  v42 = swift_isUniquelyReferenced_nonNull_native();
  sub_25E994BD0(v59, 0x496572756C696166, 0xEB000000006F666ELL, v42);
  return v30;
}

unint64_t sub_25E9A5524()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 192);
  v3 = *(v0 + 200);
  v4 = *(v0 + 208);
  v5 = *(v0 + 216);
  v6 = *(v0 + 224);
  v7 = *(v0 + 232);
  v8 = *(v0 + 240);
  v9 = *(v0 + 248);
  v10 = *(v0 + 264);
  v64 = *(v0 + 256);
  v65 = *(v0 + 272);
  v11 = *(v0 + 280);
  v12 = *(v0 + 296);
  v66 = *(v0 + 288);
  v67 = *(v0 + 304);
  v58 = *(v0 + 312);
  v59 = *(v0 + 328);
  v68 = *(v0 + 320);
  v69 = *(v0 + 336);
  v60 = *(v0 + 344);
  v61 = *(v0 + 360);
  v70 = *(v0 + 352);
  v71 = *(v0 + 368);
  v62 = *(v0 + 376);
  v63 = *(v0 + 392);
  v72 = *(v0 + 384);
  v73 = *(v0 + 400);
  v13 = sub_25E980C94(MEMORY[0x277D84F90]);
  v78 = v13;
  v14 = MEMORY[0x277D839F8];
  if (v2)
  {
    v15 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
    v16 = sub_25E9A1988();
    v77 = v16;
    *&v76 = v15;
  }

  else
  {
    *(&v75 + 1) = MEMORY[0x277D839F8];
    *&v74 = v1;
    sub_25E980EA8(&v74, &v76);
    v16 = v77;
  }

  if (v16)
  {
    sub_25E980EA8(&v76, &v74);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_25E994BD0(&v74, 0xD000000000000013, 0x800000025E9DA9B0, isUniquelyReferenced_nonNull_native);
    v78 = v13;
    if (v4)
    {
      goto LABEL_6;
    }

LABEL_9:
    *(&v75 + 1) = v14;
    *&v74 = v3;
    sub_25E980EA8(&v74, &v76);
    goto LABEL_10;
  }

  sub_25E981210(&v76, &qword_27FD0D908, &unk_25E9D9910);
  sub_25E9891E0(0xD000000000000013, 0x800000025E9DA9B0, &v74);
  sub_25E981210(&v74, &qword_27FD0D908, &unk_25E9D9910);
  if ((v4 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_6:
  v74 = 0u;
  v75 = 0u;
  v18 = [objc_allocWithZone(MEMORY[0x277CBEB68]) &selRef_description];
  v77 = sub_25E9A1988();
  *&v76 = v18;
  if (*(&v75 + 1))
  {
    sub_25E981210(&v74, &qword_27FD0D908, &unk_25E9D9910);
  }

LABEL_10:
  if (v77)
  {
    sub_25E980EA8(&v76, &v74);
    v19 = v78;
    v20 = swift_isUniquelyReferenced_nonNull_native();
    sub_25E994BD0(&v74, 0xD00000000000001CLL, 0x800000025E9DDED0, v20);
    v78 = v19;
    if (v6)
    {
      goto LABEL_12;
    }

LABEL_15:
    *(&v75 + 1) = v14;
    *&v74 = v5;
    sub_25E980EA8(&v74, &v76);
    goto LABEL_16;
  }

  sub_25E981210(&v76, &qword_27FD0D908, &unk_25E9D9910);
  sub_25E9891E0(0xD00000000000001CLL, 0x800000025E9DDED0, &v74);
  sub_25E981210(&v74, &qword_27FD0D908, &unk_25E9D9910);
  if ((v6 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_12:
  v74 = 0u;
  v75 = 0u;
  v21 = [objc_allocWithZone(MEMORY[0x277CBEB68]) &selRef_description];
  v77 = sub_25E9A1988();
  *&v76 = v21;
  if (*(&v75 + 1))
  {
    sub_25E981210(&v74, &qword_27FD0D908, &unk_25E9D9910);
  }

LABEL_16:
  if (v77)
  {
    sub_25E980EA8(&v76, &v74);
    v22 = v78;
    v23 = swift_isUniquelyReferenced_nonNull_native();
    sub_25E994BD0(&v74, 0xD000000000000020, 0x800000025E9DDEF0, v23);
    v78 = v22;
    if (v8)
    {
      goto LABEL_18;
    }

LABEL_21:
    *(&v75 + 1) = v14;
    *&v74 = v7;
    sub_25E980EA8(&v74, &v76);
    goto LABEL_22;
  }

  sub_25E981210(&v76, &qword_27FD0D908, &unk_25E9D9910);
  sub_25E9891E0(0xD000000000000020, 0x800000025E9DDEF0, &v74);
  sub_25E981210(&v74, &qword_27FD0D908, &unk_25E9D9910);
  if ((v8 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_18:
  v74 = 0u;
  v75 = 0u;
  v24 = [objc_allocWithZone(MEMORY[0x277CBEB68]) &selRef_description];
  v77 = sub_25E9A1988();
  *&v76 = v24;
  if (*(&v75 + 1))
  {
    sub_25E981210(&v74, &qword_27FD0D908, &unk_25E9D9910);
  }

LABEL_22:
  if (v77)
  {
    sub_25E980EA8(&v76, &v74);
    v25 = v78;
    v26 = swift_isUniquelyReferenced_nonNull_native();
    sub_25E994BD0(&v74, 0xD000000000000016, 0x800000025E9DA9F0, v26);
    v78 = v25;
    if (v64)
    {
      goto LABEL_24;
    }

LABEL_27:
    *(&v75 + 1) = v14;
    *&v74 = v9;
    sub_25E980EA8(&v74, &v76);
    goto LABEL_28;
  }

  sub_25E981210(&v76, &qword_27FD0D908, &unk_25E9D9910);
  sub_25E9891E0(0xD000000000000016, 0x800000025E9DA9F0, &v74);
  sub_25E981210(&v74, &qword_27FD0D908, &unk_25E9D9910);
  if ((v64 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_24:
  v74 = 0u;
  v75 = 0u;
  v27 = [objc_allocWithZone(MEMORY[0x277CBEB68]) &selRef_description];
  v77 = sub_25E9A1988();
  *&v76 = v27;
  if (*(&v75 + 1))
  {
    sub_25E981210(&v74, &qword_27FD0D908, &unk_25E9D9910);
  }

LABEL_28:
  if (v77)
  {
    sub_25E980EA8(&v76, &v74);
    v28 = v78;
    v29 = swift_isUniquelyReferenced_nonNull_native();
    sub_25E994BD0(&v74, 0xD000000000000023, 0x800000025E9DAA30, v29);
    v78 = v28;
    if (v65)
    {
      goto LABEL_30;
    }

LABEL_33:
    *(&v75 + 1) = v14;
    *&v74 = v10;
    sub_25E980EA8(&v74, &v76);
    goto LABEL_34;
  }

  sub_25E981210(&v76, &qword_27FD0D908, &unk_25E9D9910);
  sub_25E9891E0(0xD000000000000023, 0x800000025E9DAA30, &v74);
  sub_25E981210(&v74, &qword_27FD0D908, &unk_25E9D9910);
  if ((v65 & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_30:
  v74 = 0u;
  v75 = 0u;
  v30 = [objc_allocWithZone(MEMORY[0x277CBEB68]) &selRef_description];
  v77 = sub_25E9A1988();
  *&v76 = v30;
  if (*(&v75 + 1))
  {
    sub_25E981210(&v74, &qword_27FD0D908, &unk_25E9D9910);
  }

LABEL_34:
  if (v77)
  {
    sub_25E980EA8(&v76, &v74);
    v31 = v78;
    v32 = swift_isUniquelyReferenced_nonNull_native();
    sub_25E994BD0(&v74, 0xD000000000000028, 0x800000025E9DDF20, v32);
    v78 = v31;
    if (v66)
    {
      goto LABEL_36;
    }

LABEL_39:
    *(&v75 + 1) = v14;
    *&v74 = v11;
    sub_25E980EA8(&v74, &v76);
    goto LABEL_40;
  }

  sub_25E981210(&v76, &qword_27FD0D908, &unk_25E9D9910);
  sub_25E9891E0(0xD000000000000028, 0x800000025E9DDF20, &v74);
  sub_25E981210(&v74, &qword_27FD0D908, &unk_25E9D9910);
  if ((v66 & 1) == 0)
  {
    goto LABEL_39;
  }

LABEL_36:
  v74 = 0u;
  v75 = 0u;
  v33 = [objc_allocWithZone(MEMORY[0x277CBEB68]) &selRef_description];
  v77 = sub_25E9A1988();
  *&v76 = v33;
  if (*(&v75 + 1))
  {
    sub_25E981210(&v74, &qword_27FD0D908, &unk_25E9D9910);
  }

LABEL_40:
  if (v77)
  {
    sub_25E980EA8(&v76, &v74);
    v34 = v78;
    v35 = swift_isUniquelyReferenced_nonNull_native();
    sub_25E994BD0(&v74, 0xD00000000000002CLL, 0x800000025E9DDF50, v35);
    v78 = v34;
    if (v67)
    {
      goto LABEL_42;
    }

LABEL_45:
    *(&v75 + 1) = v14;
    *&v74 = v12;
    sub_25E980EA8(&v74, &v76);
    goto LABEL_46;
  }

  sub_25E981210(&v76, &qword_27FD0D908, &unk_25E9D9910);
  sub_25E9891E0(0xD00000000000002CLL, 0x800000025E9DDF50, &v74);
  sub_25E981210(&v74, &qword_27FD0D908, &unk_25E9D9910);
  if ((v67 & 1) == 0)
  {
    goto LABEL_45;
  }

LABEL_42:
  v74 = 0u;
  v75 = 0u;
  v36 = [objc_allocWithZone(MEMORY[0x277CBEB68]) &selRef_description];
  v77 = sub_25E9A1988();
  *&v76 = v36;
  if (*(&v75 + 1))
  {
    sub_25E981210(&v74, &qword_27FD0D908, &unk_25E9D9910);
  }

LABEL_46:
  if (v77)
  {
    sub_25E980EA8(&v76, &v74);
    v37 = v78;
    v38 = swift_isUniquelyReferenced_nonNull_native();
    sub_25E994BD0(&v74, 0xD000000000000022, 0x800000025E9DDF80, v38);
    v78 = v37;
    if (v68)
    {
      goto LABEL_48;
    }

LABEL_51:
    *(&v75 + 1) = v14;
    *&v74 = v58;
    sub_25E980EA8(&v74, &v76);
    goto LABEL_52;
  }

  sub_25E981210(&v76, &qword_27FD0D908, &unk_25E9D9910);
  sub_25E9891E0(0xD000000000000022, 0x800000025E9DDF80, &v74);
  sub_25E981210(&v74, &qword_27FD0D908, &unk_25E9D9910);
  if ((v68 & 1) == 0)
  {
    goto LABEL_51;
  }

LABEL_48:
  v74 = 0u;
  v75 = 0u;
  v39 = [objc_allocWithZone(MEMORY[0x277CBEB68]) &selRef_description];
  v77 = sub_25E9A1988();
  *&v76 = v39;
  if (*(&v75 + 1))
  {
    sub_25E981210(&v74, &qword_27FD0D908, &unk_25E9D9910);
  }

LABEL_52:
  if (v77)
  {
    sub_25E980EA8(&v76, &v74);
    v40 = v78;
    v41 = swift_isUniquelyReferenced_nonNull_native();
    sub_25E994BD0(&v74, 0xD000000000000026, 0x800000025E9DDFB0, v41);
    v78 = v40;
    if (v69)
    {
      goto LABEL_54;
    }

LABEL_57:
    *(&v75 + 1) = v14;
    *&v74 = v59;
    sub_25E980EA8(&v74, &v76);
    goto LABEL_58;
  }

  sub_25E981210(&v76, &qword_27FD0D908, &unk_25E9D9910);
  sub_25E9891E0(0xD000000000000026, 0x800000025E9DDFB0, &v74);
  sub_25E981210(&v74, &qword_27FD0D908, &unk_25E9D9910);
  if ((v69 & 1) == 0)
  {
    goto LABEL_57;
  }

LABEL_54:
  v74 = 0u;
  v75 = 0u;
  v42 = [objc_allocWithZone(MEMORY[0x277CBEB68]) &selRef_description];
  v77 = sub_25E9A1988();
  *&v76 = v42;
  if (*(&v75 + 1))
  {
    sub_25E981210(&v74, &qword_27FD0D908, &unk_25E9D9910);
  }

LABEL_58:
  if (v77)
  {
    sub_25E980EA8(&v76, &v74);
    v43 = v78;
    v44 = swift_isUniquelyReferenced_nonNull_native();
    sub_25E994BD0(&v74, 0xD000000000000029, 0x800000025E9DAA80, v44);
    v78 = v43;
    if (v70)
    {
      goto LABEL_60;
    }

LABEL_63:
    *(&v75 + 1) = v14;
    *&v74 = v60;
    sub_25E980EA8(&v74, &v76);
    goto LABEL_64;
  }

  sub_25E981210(&v76, &qword_27FD0D908, &unk_25E9D9910);
  sub_25E9891E0(0xD000000000000029, 0x800000025E9DAA80, &v74);
  sub_25E981210(&v74, &qword_27FD0D908, &unk_25E9D9910);
  if ((v70 & 1) == 0)
  {
    goto LABEL_63;
  }

LABEL_60:
  v74 = 0u;
  v75 = 0u;
  v45 = [objc_allocWithZone(MEMORY[0x277CBEB68]) &selRef_description];
  v77 = sub_25E9A1988();
  *&v76 = v45;
  if (*(&v75 + 1))
  {
    sub_25E981210(&v74, &qword_27FD0D908, &unk_25E9D9910);
  }

LABEL_64:
  if (v77)
  {
    sub_25E980EA8(&v76, &v74);
    v46 = v78;
    v47 = swift_isUniquelyReferenced_nonNull_native();
    sub_25E994BD0(&v74, 0xD00000000000001BLL, 0x800000025E9DAAE0, v47);
    v78 = v46;
    if (v71)
    {
      goto LABEL_66;
    }

LABEL_69:
    *(&v75 + 1) = v14;
    *&v74 = v61;
    sub_25E980EA8(&v74, &v76);
    goto LABEL_70;
  }

  sub_25E981210(&v76, &qword_27FD0D908, &unk_25E9D9910);
  sub_25E9891E0(0xD00000000000001BLL, 0x800000025E9DAAE0, &v74);
  sub_25E981210(&v74, &qword_27FD0D908, &unk_25E9D9910);
  if ((v71 & 1) == 0)
  {
    goto LABEL_69;
  }

LABEL_66:
  v74 = 0u;
  v75 = 0u;
  v48 = [objc_allocWithZone(MEMORY[0x277CBEB68]) &selRef_description];
  v77 = sub_25E9A1988();
  *&v76 = v48;
  if (*(&v75 + 1))
  {
    sub_25E981210(&v74, &qword_27FD0D908, &unk_25E9D9910);
  }

LABEL_70:
  if (v77)
  {
    sub_25E980EA8(&v76, &v74);
    v49 = v78;
    v50 = swift_isUniquelyReferenced_nonNull_native();
    sub_25E994BD0(&v74, 0xD000000000000019, 0x800000025E9DAB80, v50);
    v78 = v49;
    if (v72)
    {
      goto LABEL_72;
    }

LABEL_75:
    *(&v75 + 1) = v14;
    *&v74 = v62;
    sub_25E980EA8(&v74, &v76);
    goto LABEL_76;
  }

  sub_25E981210(&v76, &qword_27FD0D908, &unk_25E9D9910);
  sub_25E9891E0(0xD000000000000019, 0x800000025E9DAB80, &v74);
  sub_25E981210(&v74, &qword_27FD0D908, &unk_25E9D9910);
  if ((v72 & 1) == 0)
  {
    goto LABEL_75;
  }

LABEL_72:
  v74 = 0u;
  v75 = 0u;
  v51 = [objc_allocWithZone(MEMORY[0x277CBEB68]) &selRef_description];
  v77 = sub_25E9A1988();
  *&v76 = v51;
  if (*(&v75 + 1))
  {
    sub_25E981210(&v74, &qword_27FD0D908, &unk_25E9D9910);
  }

LABEL_76:
  if (v77)
  {
    sub_25E980EA8(&v76, &v74);
    v52 = v78;
    v53 = swift_isUniquelyReferenced_nonNull_native();
    sub_25E994BD0(&v74, 0xD00000000000001CLL, 0x800000025E9DAB30, v53);
    v78 = v52;
    if (v73)
    {
      goto LABEL_78;
    }

LABEL_81:
    *(&v75 + 1) = v14;
    *&v74 = v63;
    sub_25E980EA8(&v74, &v76);
    goto LABEL_82;
  }

  sub_25E981210(&v76, &qword_27FD0D908, &unk_25E9D9910);
  sub_25E9891E0(0xD00000000000001CLL, 0x800000025E9DAB30, &v74);
  sub_25E981210(&v74, &qword_27FD0D908, &unk_25E9D9910);
  if ((v73 & 1) == 0)
  {
    goto LABEL_81;
  }

LABEL_78:
  v74 = 0u;
  v75 = 0u;
  v54 = [objc_allocWithZone(MEMORY[0x277CBEB68]) &selRef_description];
  v77 = sub_25E9A1988();
  *&v76 = v54;
  if (*(&v75 + 1))
  {
    sub_25E981210(&v74, &qword_27FD0D908, &unk_25E9D9910);
  }

LABEL_82:
  if (v77)
  {
    sub_25E980EA8(&v76, &v74);
    v55 = v78;
    v56 = swift_isUniquelyReferenced_nonNull_native();
    sub_25E994BD0(&v74, 0xD000000000000016, 0x800000025E9DDFE0, v56);
    return v55;
  }

  else
  {
    sub_25E981210(&v76, &qword_27FD0D908, &unk_25E9D9910);
    sub_25E9891E0(0xD000000000000016, 0x800000025E9DDFE0, &v74);
    sub_25E981210(&v74, &qword_27FD0D908, &unk_25E9D9910);
    return v78;
  }
}

uint64_t sub_25E9A64AC()
{
  memcpy(__dst, v0, sizeof(__dst));
  memcpy(v32, v0, sizeof(v32));
  v1 = sub_25E9A4E2C();
  v2 = sub_25E9A5524();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v32[0] = v1;
  sub_25E9A7674(v2, sub_25E9A74C8, 0, isUniquelyReferenced_nonNull_native, v32);

  v4 = v32[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DBC8, &unk_25E9DA9C0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_25E9DA810;
  *(v5 + 32) = swift_getKeyPath();
  if (*(v4 + 16) && (v6 = sub_25E978F5C(0xD000000000000013, 0x800000025E9DA9B0), (v7 & 1) != 0) && (sub_25E980E4C(*(v4 + 56) + 32 * v6, v32), swift_dynamicCast()))
  {
    v8 = __dst[0];
  }

  else
  {
    v8 = 0;
  }

  *(v5 + 40) = v8;
  *(v5 + 48) = swift_getKeyPath();
  if (*(v4 + 16) && (v9 = sub_25E978F5C(0xD000000000000016, 0x800000025E9DA9F0), (v10 & 1) != 0) && (sub_25E980E4C(*(v4 + 56) + 32 * v9, v32), swift_dynamicCast()))
  {
    v11 = __dst[0];
  }

  else
  {
    v11 = 0;
  }

  *(v5 + 56) = v11;
  *(v5 + 64) = swift_getKeyPath();
  if (*(v4 + 16) && (v12 = sub_25E978F5C(0xD000000000000023, 0x800000025E9DAA30), (v13 & 1) != 0) && (sub_25E980E4C(*(v4 + 56) + 32 * v12, v32), swift_dynamicCast()))
  {
    v14 = __dst[0];
  }

  else
  {
    v14 = 0;
  }

  *(v5 + 72) = v14;
  *(v5 + 80) = swift_getKeyPath();
  if (*(v4 + 16) && (v15 = sub_25E978F5C(0xD000000000000029, 0x800000025E9DAA80), (v16 & 1) != 0) && (sub_25E980E4C(*(v4 + 56) + 32 * v15, v32), swift_dynamicCast()))
  {
    v17 = __dst[0];
  }

  else
  {
    v17 = 0;
  }

  *(v5 + 88) = v17;
  *(v5 + 96) = swift_getKeyPath();
  if (*(v4 + 16) && (v18 = sub_25E978F5C(0xD00000000000001BLL, 0x800000025E9DAAE0), (v19 & 1) != 0) && (sub_25E980E4C(*(v4 + 56) + 32 * v18, v32), swift_dynamicCast()))
  {
    v20 = __dst[0];
  }

  else
  {
    v20 = 0;
  }

  *(v5 + 104) = v20;
  *(v5 + 112) = swift_getKeyPath();
  if (*(v4 + 16) && (v21 = sub_25E978F5C(0xD00000000000001CLL, 0x800000025E9DAB30), (v22 & 1) != 0) && (sub_25E980E4C(*(v4 + 56) + 32 * v21, v32), swift_dynamicCast()))
  {
    v23 = __dst[0];
  }

  else
  {
    v23 = 0;
  }

  *(v5 + 120) = v23;
  *(v5 + 128) = swift_getKeyPath();
  if (!*(v4 + 16) || (v24 = sub_25E978F5C(0xD000000000000019, 0x800000025E9DAB80), (v25 & 1) == 0))
  {

    goto LABEL_36;
  }

  sub_25E980E4C(*(v4 + 56) + 32 * v24, v32);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_36:
    v26 = 0;
    goto LABEL_37;
  }

  v26 = __dst[0];
LABEL_37:
  *(v5 + 136) = v26;
  v27 = sub_25E980DC4(v5);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DBD0, &qword_25E9DABE8);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_25E9B8D0C(v27);
  v29 = v28;

  return v29;
}

uint64_t IEPlannerGrainMetricsRecord.SELFShouldEmit.getter()
{
  v1 = *(v0 + 56);
  if (!v1)
  {
    return 0;
  }

  if (*(v0 + 48) == 0xD00000000000001ELL && v1 == 0x800000025E9DDD00)
  {
    return 1;
  }

  else
  {
    return sub_25E9D8300();
  }
}

id IEPlannerGrainMetricsRecord.getSELFEvent()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D7D8, &qword_25E9D9BC0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v92 - v2;
  v4 = sub_25E9D77F0();
  v96 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v95 = &v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v94 = &v92 - v7;
  v8 = *(v0 + 32);
  v98 = *(v0 + 40);
  v99 = v8;
  v9 = *(v0 + 80);
  v101 = *(v0 + 88);
  v102 = v9;
  v10 = *(v0 + 120);
  v103 = *(v0 + 112);
  v11 = *(v0 + 128);
  v12 = *(v0 + 136);
  v13 = *(v0 + 144);
  v14 = *(v0 + 168);
  v100 = *(v0 + 408);
  v15 = [objc_allocWithZone(MEMORY[0x277D59E38]) init];
  if (!v15)
  {
    goto LABEL_27;
  }

  v92 = v4;
  v97 = v15;
  v16 = [objc_allocWithZone(MEMORY[0x277D59E70]) init];
  if (!v16)
  {

LABEL_27:
    if (qword_27FD0D590 != -1)
    {
LABEL_57:
      swift_once();
    }

    v43 = sub_25E9D7F10();
    __swift_project_value_buffer(v43, qword_27FD0DAE8);
    v44 = sub_25E9D7F00();
    v45 = sub_25E9D8120();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_25E971000, v44, v45, "PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary init failed!", v46, 2u);
      MEMORY[0x25F8C51A0](v46, -1, -1);
    }

    return 0;
  }

  v17 = v16;
  v135[0] = v16;
  v93 = [objc_allocWithZone(MEMORY[0x277D59E40]) init];
  if (!v93)
  {
    if (qword_27FD0D590 != -1)
    {
      swift_once();
    }

    v51 = sub_25E9D7F10();
    __swift_project_value_buffer(v51, qword_27FD0DAE8);
    v52 = sub_25E9D7F00();
    v53 = sub_25E9D8120();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_25E971000, v52, v53, "PNRODSchemaPNRODClientEventMetadata init failed!", v54, 2u);
      MEMORY[0x25F8C51A0](v54, -1, -1);
    }

    return 0;
  }

  if ((v103 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_59;
  }

  if (HIDWORD(v103))
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v18 = v3;
  [v17 setNumPlansCreated_];
  if ((v10 & 0x8000000000000000) != 0)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  if (HIDWORD(v10))
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  [v17 setNumQueriesCreated_];
  if ((v11 & 0x8000000000000000) != 0)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  if (HIDWORD(v11))
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  [v17 setNumQueriesExecuted_];
  if ((v12 & 0x8000000000000000) != 0)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  if (HIDWORD(v12))
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  [v17 setNumClientActionsCreated_];
  if ((v13 & 0x8000000000000000) != 0)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  if (HIDWORD(v13))
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  [v17 setNumActionResolverRequests_];
  [v17 setNumStatementsEvaluatedFromPlanner_];
  if ((v14 & 0x8000000000000000) != 0)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  if (HIDWORD(v14))
  {
LABEL_69:
    __break(1u);
LABEL_70:
    swift_once();
    goto LABEL_44;
  }

  [v17 setNumSystemPromptsResolved_];
  v19 = *(v0 + 16);
  v104[0] = *v0;
  v104[1] = v19;
  v105 = v99;
  v106 = v98;
  v20 = *(v0 + 64);
  v107 = *(v0 + 48);
  v108 = v20;
  v109 = v102;
  v110 = v101;
  v111 = *(v0 + 96);
  v112 = v103;
  v113 = v10;
  v114 = v11;
  v115 = v12;
  v116 = v13;
  v117 = *(v0 + 152);
  v118 = v14;
  v21 = *(v0 + 192);
  v119 = *(v0 + 176);
  v120 = v21;
  v22 = *(v0 + 256);
  v123 = *(v0 + 240);
  v124 = v22;
  v23 = *(v0 + 224);
  v121 = *(v0 + 208);
  v122 = v23;
  v24 = *(v0 + 320);
  v127 = *(v0 + 304);
  v128 = v24;
  v25 = *(v0 + 288);
  v125 = *(v0 + 272);
  v126 = v25;
  v26 = *(v0 + 400);
  v27 = *(v0 + 384);
  v131 = *(v0 + 368);
  v132 = v27;
  v28 = *(v0 + 352);
  v129 = *(v0 + 336);
  v130 = v28;
  v133 = v26;
  v134 = v100;
  v29 = sub_25E9A64AC();
  v30 = v29;
  v31 = 0;
  v32 = v29 + 64;
  v33 = 1 << *(v29 + 32);
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v35 = v34 & *(v29 + 64);
  v36 = (v33 + 63) >> 6;
  if (v35)
  {
    while (1)
    {
      v37 = v31;
LABEL_23:
      v38 = *(*(v30 + 56) + ((v37 << 9) | (8 * __clz(__rbit64(v35)))));
      v39 = objc_allocWithZone(MEMORY[0x277D59E90]);

      v40 = [v39 init];
      if (!v40)
      {
        break;
      }

      v41 = v40;
      v35 &= v35 - 1;
      [v40 setMetricValue_];
      *&v104[0] = v41;
      v42 = v41;
      swift_setAtWritableKeyPath();

      v31 = v37;
      if (!v35)
      {
        goto LABEL_20;
      }
    }

    if (qword_27FD0D590 != -1)
    {
      swift_once();
    }

    v88 = sub_25E9D7F10();
    __swift_project_value_buffer(v88, qword_27FD0DAE8);
    v89 = sub_25E9D7F00();
    v90 = sub_25E9D8120();
    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      *v91 = 0;
      _os_log_impl(&dword_25E971000, v89, v90, "PNRODSchemaPNRODMetricDurationMetric init failed!", v91, 2u);
      MEMORY[0x25F8C51A0](v91, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  while (1)
  {
LABEL_20:
    v37 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      __break(1u);
      goto LABEL_57;
    }

    if (v37 >= v36)
    {
      break;
    }

    v35 = *(v32 + 8 * v37);
    ++v31;
    if (v35)
    {
      goto LABEL_23;
    }
  }

  v13 = v135[0];
  sub_25E9D77B0();
  v48 = v96;
  v49 = v92;
  if ((*(v96 + 48))(v18, 1, v92) == 1)
  {
    sub_25E981210(v18, &qword_27FD0D7D8, &qword_25E9D9BC0);
    v50 = 0;
  }

  else
  {
    v55 = v94;
    (*(v48 + 32))(v94, v18, v49);
    v56 = objc_allocWithZone(MEMORY[0x277D5AC78]);
    v57 = sub_25E9D77D0();
    v50 = [v56 initWithNSUUID_];

    (*(v48 + 8))(v55, v49);
  }

  v14 = v97;
  [v13 setClientRequestId_];

  v58 = v100;
  if (v100)
  {
    sub_25E9A8130();
    v58 = v59;
  }

  [v13 setFailureInfo_];

  v60 = toSISSchemaUUID(convertId:)(v102);
  [v13 setPlanId_];

  v61 = v95;
  sub_25E9D77E0();
  v62 = objc_allocWithZone(MEMORY[0x277D5AC78]);
  v63 = sub_25E9D77D0();
  v64 = [v62 initWithNSUUID_];

  (*(v48 + 8))(v61, v49);
  v65 = v93;
  [v93 setPnrodId_];

  [v14 setEventMetadata_];
  [v14 setPnrodIntelligenceFlowPlannerGrainSummary_];
  if (qword_27FD0D590 != -1)
  {
    goto LABEL_70;
  }

LABEL_44:
  v66 = sub_25E9D7F10();
  __swift_project_value_buffer(v66, qword_27FD0DAE8);
  v67 = v14;
  v68 = sub_25E9D7F00();
  v69 = sub_25E9D8120();

  if (os_log_type_enabled(v68, v69))
  {
    v103 = v13;
    v70 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    *&v104[0] = v71;
    *v70 = 136315650;
    v72 = [v67 qualifiedMessageName];
    v73 = sub_25E9D7FB0();
    v75 = v74;

    v76 = sub_25E9887EC(v73, v75, v104);

    *(v70 + 4) = v76;
    *(v70 + 12) = 2080;
    v77 = [v67 formattedJsonBody];
    if (v77)
    {
      v78 = v77;
      v79 = sub_25E9D7FB0();
      v81 = v80;
    }

    else
    {
      v81 = 0xE500000000000000;
      v79 = 0x3E4C494E3CLL;
    }

    v82 = sub_25E9887EC(v79, v81, v104);

    *(v70 + 14) = v82;
    *(v70 + 22) = 2080;
    v83 = [v67 description];
    v84 = sub_25E9D7FB0();
    v86 = v85;

    v87 = sub_25E9887EC(v84, v86, v104);

    *(v70 + 24) = v87;
    _os_log_impl(&dword_25E971000, v68, v69, "Creating %s\n%s\n%s", v70, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x25F8C51A0](v71, -1, -1);
    MEMORY[0x25F8C51A0](v70, -1, -1);

    return v97;
  }

  else
  {
  }

  return v14;
}

double sub_25E9A74C8@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_25E980E4C((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;

  return result;
}

void sub_25E9A7514(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_25E980E4C(*(v3 + 56) + 32 * v13, v20);
    *&v21 = v16;
    *(&v21 + 1) = v15;
    sub_25E980EA8(v20, &v22);

    v17 = *(&v21 + 1);
    v18 = v21;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v17)
    {
      v19 = v1[5];
      *&v20[0] = v18;
      *(&v20[0] + 1) = v17;
      v20[1] = v22;
      v20[2] = v23;
      v19(v20);
      sub_25E981210(v20, &qword_27FD0DBD8, &unk_25E9DABF0);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v17 = 0;
        v18 = 0;
        v12 = 0;
        v22 = 0u;
        v23 = 0u;
        v21 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

unint64_t sub_25E9A7674(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v45 = a1;
  v46 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v47 = v8;
  v48 = 0;
  v49 = v11 & v9;
  v50 = a2;
  v51 = a3;

  sub_25E9A7514(&v43);
  v12 = *(&v43 + 1);
  if (!*(&v43 + 1))
  {
    goto LABEL_25;
  }

  v13 = v43;
  sub_25E980EA8(v44, v42);
  v14 = *a5;
  result = sub_25E978F5C(v13, v12);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (v14[3] < v20)
  {
    sub_25E97C278(v20, a4 & 1);
    result = sub_25E978F5C(v13, v12);
    if ((v21 & 1) == (v22 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = sub_25E9D8330();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v26 = result;
    sub_25E97F080();
    result = v26;
    v23 = *a5;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v23 = *a5;
  if (v21)
  {
LABEL_11:
    v24 = result;

    v25 = (v23[7] + 32 * v24);
    __swift_destroy_boxed_opaque_existential_0(v25);
    sub_25E980EA8(v42, v25);
    goto LABEL_15;
  }

LABEL_13:
  v23[(result >> 6) + 8] |= 1 << result;
  v27 = (v23[6] + 16 * result);
  *v27 = v13;
  v27[1] = v12;
  result = sub_25E980EA8(v42, (v23[7] + 32 * result));
  v28 = v23[2];
  v19 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (!v19)
  {
    v23[2] = v29;
LABEL_15:
    sub_25E9A7514(&v43);
    v12 = *(&v43 + 1);
    if (*(&v43 + 1))
    {
      v21 = 1;
      do
      {
        v13 = v43;
        sub_25E980EA8(v44, v42);
        v32 = *a5;
        result = sub_25E978F5C(v13, v12);
        v34 = v32[2];
        v35 = (v33 & 1) == 0;
        v19 = __OFADD__(v34, v35);
        v36 = v34 + v35;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v33;
        if (v32[3] < v36)
        {
          sub_25E97C278(v36, 1);
          result = sub_25E978F5C(v13, v12);
          if ((a4 & 1) != (v37 & 1))
          {
            goto LABEL_8;
          }
        }

        v38 = *a5;
        if (a4)
        {
          v30 = result;

          v31 = (v38[7] + 32 * v30);
          __swift_destroy_boxed_opaque_existential_0(v31);
          sub_25E980EA8(v42, v31);
        }

        else
        {
          v38[(result >> 6) + 8] |= 1 << result;
          v39 = (v38[6] + 16 * result);
          *v39 = v13;
          v39[1] = v12;
          result = sub_25E980EA8(v42, (v38[7] + 32 * result));
          v40 = v38[2];
          v19 = __OFADD__(v40, 1);
          v41 = v40 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v38[2] = v41;
        }

        sub_25E9A7514(&v43);
        v12 = *(&v43 + 1);
      }

      while (*(&v43 + 1));
    }

LABEL_25:
    sub_25E9A7B4C(v45);
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_25E9A7988()
{
  result = qword_27FD0DBC0;
  if (!qword_27FD0DBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD0DBC0);
  }

  return result;
}

uint64_t sub_25E9A79E4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 416))
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

uint64_t sub_25E9A7A2C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 408) = 0;
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
      *(result + 416) = 1;
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

    *(result + 416) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25E9A7BD4(uint64_t a1, char *a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t), uint64_t (*a5)(void))
{
  v8 = v5;
  v10 = *a2;
  *(v8 + 24) = 0;
  *(v8 + 32) = 0;
  *(v8 + 16) = 0;
  *(v8 + 40) = 22785;
  *(v8 + 16) = a3();
  *(v8 + 24) = v11;

  v13 = a4(v12);
  v14 = a5(0);
  (*(*(v14 - 8) + 8))(a1, v14);
  *(v8 + 32) = v13;
  *(v8 + 40) = 0;
  *(v8 + 41) = v10;
  return v8;
}

uint64_t sub_25E9A7C94()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 16);
  }

  else
  {
    v2 = 0;
  }

  if (v1)
  {
    v3 = *(v0 + 24);
  }

  else
  {
    v3 = 0xE000000000000000;
  }

  MEMORY[0x25F8C4910](v2, v3);

  MEMORY[0x25F8C4910](46, 0xE100000000000000);
  v4 = sub_25E9D82F0();
  MEMORY[0x25F8C4910](v4);

  return 0;
}

unint64_t sub_25E9A7D4C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DA70, &unk_25E9DA5A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25E9D9690;
  *(inited + 32) = 0x6E69616D6F64;
  *(inited + 40) = 0xE600000000000000;
  v2 = *(v0 + 24);
  if (v2)
  {
    v3 = *(v0 + 16);
    *(&v13 + 1) = MEMORY[0x277D837D0];
    *&v12 = v3;
    *(&v12 + 1) = v2;
    sub_25E980EA8(&v12, (inited + 48));
  }

  else
  {
    v13 = 0u;
    v4 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
    *(inited + 72) = sub_25E98F558(0, &qword_27FD0DA78, 0x277CBEB68);
    *(inited + 48) = v4;
    if (*(&v13 + 1))
    {
      sub_25E98C2B8(&v12);
    }
  }

  *(inited + 80) = 1701080931;
  *(inited + 88) = 0xE400000000000000;
  if (*(v0 + 40) == 1)
  {
    *(inited + 120) = sub_25E98F558(0, &qword_27FD0D630, 0x277D82BB8);

LABEL_8:
    v9 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
    goto LABEL_9;
  }

  v5 = *(v0 + 32);
  v6 = objc_allocWithZone(MEMORY[0x277CCABB0]);

  v7 = [v6 initWithLongLong_];
  v8 = sub_25E98F558(0, &qword_27FD0D630, 0x277D82BB8);
  v9 = v7;
  *(inited + 120) = v8;
  if (!v7)
  {
    goto LABEL_8;
  }

LABEL_9:
  *(inited + 96) = v9;
  v10 = sub_25E980C94(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D720, &qword_25E9DAC00);
  swift_arrayDestroy();
  return v10;
}

void *sub_25E9A7F44()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D59E30]) init];
  v2 = v1;
  if (v1)
  {
    if (*(v0 + 24))
    {
      v3 = v1;

      v4 = sub_25E9D7FA0();
    }

    else
    {
      v5 = v1;
      v4 = 0;
    }

    [v2 setDomain_];
  }

  if ((*(v0 + 40) & 1) == 0)
  {
    [v2 setCode_];
  }

  if (v2)
  {
    v6 = *(v0 + 41);
    if (v6 != 89)
    {
      [v2 setSource_];
    }
  }

  return v2;
}

uint64_t PNRError.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_25E9A8130()
{
  if (*(v0 + 16) == 63)
  {
    return;
  }

  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x277D59E50]) init];
  v3 = v2;
  if (v2)
  {
    if (*(v0 + 24))
    {
      v4 = v2;

      v5 = sub_25E9A7F44();
    }

    else
    {
      v6 = v2;
      v5 = 0;
    }

    [v3 setError_];

    if (*(v1 + 32))
    {
      v7 = v3;

      v8 = sub_25E9A7F44();
    }

    else
    {
      v9 = v3;
      v8 = 0;
    }

    [v3 setUnderlyingError_];

    if (*(v1 + 40))
    {
      v10 = v3;

      v11 = sub_25E9A7F44();
    }

    else
    {
      v12 = v3;
      v11 = 0;
    }

    [v3 setUnderUnderlyingError_];

    v13 = *(v1 + 16);
    switch(*(v1 + 16))
    {
      case 1:
        v13 = 50;
        break;
      case 2:
        v13 = 51;
        break;
      case 3:
        v13 = 52;
        break;
      case 4:
        v13 = 53;
        break;
      case 5:
        v13 = 54;
        break;
      case 6:
        v13 = 55;
        break;
      case 7:
        v13 = 5201;
        break;
      case 8:
        v13 = 5202;
        break;
      case 9:
        v13 = 5203;
        break;
      case 0xA:
        v13 = 5204;
        break;
      case 0xB:
        v13 = 5205;
        break;
      case 0xC:
        v13 = 5206;
        break;
      case 0xD:
        v13 = 5207;
        break;
      case 0xE:
        v13 = 520101;
        break;
      case 0xF:
        v13 = 520102;
        break;
      case 0x10:
        v13 = 520103;
        break;
      case 0x11:
        v13 = 520201;
        break;
      case 0x12:
        v13 = 520202;
        break;
      case 0x13:
        v13 = 520301;
        break;
      case 0x14:
        v13 = 520302;
        break;
      case 0x15:
        v13 = 520303;
        break;
      case 0x16:
        v13 = 520304;
        break;
      case 0x17:
        v13 = 520401;
        break;
      case 0x18:
        v13 = 520402;
        break;
      case 0x19:
        v13 = 520501;
        break;
      case 0x1A:
        v13 = 520502;
        break;
      case 0x1B:
        v13 = 520503;
        break;
      case 0x1C:
        v13 = 520504;
        break;
      case 0x1D:
        v13 = 520505;
        break;
      case 0x1E:
        v13 = 520506;
        break;
      case 0x1F:
        v13 = 520507;
        break;
      case 0x20:
        v13 = 520508;
        break;
      case 0x21:
        v13 = 520601;
        break;
      case 0x22:
        v13 = 520602;
        break;
      case 0x23:
        v13 = 520603;
        break;
      case 0x24:
        v13 = 520701;
        break;
      case 0x25:
        v13 = 520702;
        break;
      case 0x26:
        v13 = 5401;
        break;
      case 0x27:
        v13 = 5402;
        break;
      case 0x28:
        v13 = 540101;
        break;
      case 0x29:
        v13 = 540102;
        break;
      case 0x2A:
        v13 = 540103;
        break;
      case 0x2B:
        v13 = 540104;
        break;
      case 0x2C:
        v13 = 5501;
        break;
      case 0x2D:
        v13 = 5502;
        break;
      case 0x2E:
        v13 = 5503;
        break;
      case 0x2F:
        v13 = 5504;
        break;
      case 0x30:
        v13 = 5511;
        break;
      case 0x31:
        v13 = 5512;
        break;
      case 0x32:
        v13 = 5521;
        break;
      case 0x33:
        v13 = 5522;
        break;
      case 0x34:
        v13 = 5531;
        break;
      case 0x35:
        v13 = 5532;
        break;
      case 0x36:
        v13 = 5533;
        break;
      case 0x37:
        v13 = 5534;
        break;
      case 0x38:
        v13 = 5535;
        break;
      case 0x39:
        v13 = 5536;
        break;
      case 0x3A:
        v13 = 5537;
        break;
      case 0x3B:
        v13 = 55101;
        break;
      case 0x3C:
        v13 = 55102;
        break;
      case 0x3D:
        v13 = 99994097;
        break;
      case 0x3E:
        v13 = 99994099;
        break;
      case 0x3F:
        goto LABEL_101;
      default:
        break;
    }

    [v3 setFailureType_];
    v14 = *(v1 + 17);
    if ((v14 - 1) < 0x3E)
    {
      [v3 setFailureSubType_];
      v15 = *(v1 + 18);
      if ((v15 - 1) < 0x3E)
      {
        [v3 setFailureSubType_];
LABEL_81:
        if (qword_280F700E8 != -1)
        {
          swift_once();
        }

        v16 = sub_25E9D7F10();
        __swift_project_value_buffer(v16, qword_280F700F0);
        v17 = v3;

        v18 = sub_25E9D7F00();
        v19 = sub_25E9D8120();

        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          v21 = swift_slowAlloc();
          v38 = v21;
          *v20 = 136315394;
          v22 = sub_25E9A8CCC();
          v24 = sub_25E9887EC(v22, v23, &v38);

          *(v20 + 4) = v24;
          *(v20 + 12) = 2080;
          if (v3)
          {
            goto LABEL_95;
          }

          goto LABEL_99;
        }

LABEL_96:

        goto LABEL_97;
      }

LABEL_91:
      if (qword_280F700E8 != -1)
      {
        swift_once();
      }

      v29 = sub_25E9D7F10();
      __swift_project_value_buffer(v29, qword_280F700F0);
      v17 = v3;

      v18 = sub_25E9D7F00();
      v19 = sub_25E9D8120();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v38 = v21;
        *v20 = 136315394;
        v30 = sub_25E9A8CCC();
        v32 = sub_25E9887EC(v30, v31, &v38);

        *(v20 + 4) = v32;
        *(v20 + 12) = 2080;
        if (v3)
        {
LABEL_95:

          v33 = [v17 description];
          v34 = sub_25E9D7FB0();
          v36 = v35;

          v37 = sub_25E9887EC(v34, v36, &v38);

          *(v20 + 14) = v37;
          _os_log_impl(&dword_25E971000, v18, v19, "converting failureInfo to SELFMessage: %s %s", v20, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x25F8C51A0](v21, -1, -1);
          MEMORY[0x25F8C51A0](v20, -1, -1);
LABEL_97:

          return;
        }

        goto LABEL_100;
      }

      goto LABEL_96;
    }
  }

  else if (*(v0 + 17) - 1 < 0x3E)
  {
    if (*(v0 + 18) - 1 < 0x3E)
    {
      goto LABEL_81;
    }

    goto LABEL_91;
  }

  if (qword_280F700E8 != -1)
  {
    swift_once();
  }

  v25 = sub_25E9D7F10();
  __swift_project_value_buffer(v25, qword_280F700F0);
  v17 = v3;

  v18 = sub_25E9D7F00();
  v19 = sub_25E9D8120();

  if (!os_log_type_enabled(v18, v19))
  {
    goto LABEL_96;
  }

  v20 = swift_slowAlloc();
  v21 = swift_slowAlloc();
  v38 = v21;
  *v20 = 136315394;
  v26 = sub_25E9A8CCC();
  v28 = sub_25E9887EC(v26, v27, &v38);

  *(v20 + 4) = v28;
  *(v20 + 12) = 2080;
  if (v3)
  {
    goto LABEL_95;
  }

  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
}

unint64_t sub_25E9A89B8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DA70, &unk_25E9DA5A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25E9DADD0;
  *(inited + 32) = 0x546572756C696166;
  *(inited + 40) = 0xEB00000000657079;
  if (*(v0 + 16) == 63)
  {
    v3 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
    v4 = sub_25E9A1988();
  }

  else
  {
    v3 = sub_25E9D7FF0();
    *(inited + 56) = v5;
    v4 = MEMORY[0x277D837D0];
  }

  *(inited + 48) = v3;
  *(inited + 72) = v4;
  strcpy((inited + 80), "failureSubType");
  *(inited + 95) = -18;
  if (*(v1 + 17) == 63)
  {
    v6 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
    v7 = sub_25E9A1988();
  }

  else
  {
    v6 = sub_25E9D7FF0();
    *(inited + 104) = v8;
    v7 = MEMORY[0x277D837D0];
  }

  *(inited + 96) = v6;
  *(inited + 120) = v7;
  *(inited + 128) = 0xD000000000000011;
  *(inited + 136) = 0x800000025E9DE110;
  if (*(v1 + 18) == 63)
  {
    v9 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
    v10 = sub_25E9A1988();
  }

  else
  {
    v9 = sub_25E9D7FF0();
    *(inited + 152) = v11;
    v10 = MEMORY[0x277D837D0];
  }

  *(inited + 144) = v9;
  *(inited + 168) = v10;
  *(inited + 176) = 0x726F727265;
  *(inited + 184) = 0xE500000000000000;
  if (*(v1 + 24))
  {

    v12 = sub_25E9A7D4C();

    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DA80, &unk_25E9DA5D0);
  }

  else
  {
    v12 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
    v13 = sub_25E9A1988();
  }

  *(inited + 192) = v12;
  *(inited + 216) = v13;
  *(inited + 224) = 0x666E496775626564;
  *(inited + 232) = 0xE90000000000006FLL;
  v14 = *(v1 + 56);
  if (v14)
  {
    v15 = *(v1 + 48);
    *(inited + 248) = v14;
    v16 = MEMORY[0x277D837D0];
  }

  else
  {
    v15 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
    v16 = sub_25E9A1988();
  }

  *(inited + 264) = v16;
  *(inited + 240) = v15;

  v17 = sub_25E980C94(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D720, &qword_25E9DAC00);
  swift_arrayDestroy();
  return v17;
}

uint64_t sub_25E9A8CCC()
{
  v1 = 0xE000000000000000;
  if (*(v0 + 16) == 63)
  {
    v2 = 0;
  }

  else
  {
    sub_25E9D8240();

    strcpy(v13, "\nfailureType: ");
    HIBYTE(v13[1]) = -18;
    v3 = sub_25E9D82F0();
    MEMORY[0x25F8C4910](v3);

    MEMORY[0x25F8C4910](32, 0xE100000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DBE0, &qword_25E9DADE8);
    v4 = sub_25E9D7FF0();
    MEMORY[0x25F8C4910](v4);

    v2 = v13[0];
    v1 = v13[1];
  }

  if (*(v0 + 17) != 63)
  {
    sub_25E9D8240();

    v13[0] = v2;
    v13[1] = v1;
    MEMORY[0x25F8C4910](0xD000000000000011, 0x800000025E9DE150);
    v5 = sub_25E9D82F0();
    MEMORY[0x25F8C4910](v5);

    MEMORY[0x25F8C4910](32, 0xE100000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DBE0, &qword_25E9DADE8);
    v6 = sub_25E9D7FF0();
    MEMORY[0x25F8C4910](v6);
  }

  if (*(v0 + 18) != 63)
  {
    sub_25E9D8240();

    v13[0] = v2;
    v13[1] = v1;
    MEMORY[0x25F8C4910](0xD000000000000014, 0x800000025E9DE130);
    v7 = sub_25E9D82F0();
    MEMORY[0x25F8C4910](v7);

    MEMORY[0x25F8C4910](32, 0xE100000000000000);
    v8 = sub_25E9D7FF0();
    MEMORY[0x25F8C4910](v8);
  }

  if (*(v0 + 24))
  {
    v13[0] = v2;
    v13[1] = v1;

    MEMORY[0x25F8C4910](0x203A726F7272650ALL, 0xE800000000000000);
    v9 = sub_25E9A7C94();
    MEMORY[0x25F8C4910](v9);
  }

  v10 = *(v0 + 56);
  if (v10)
  {
    v11 = *(v0 + 48);
    v13[0] = v2;
    v13[1] = v1;

    MEMORY[0x25F8C4910](0x203A726F7272650ALL, 0xE800000000000000);
    MEMORY[0x25F8C4910](v11, v10);
  }

  return v2;
}

void *PNRFailureInfo.deinit()
{

  return v0;
}

uint64_t PNRFailureInfo.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

PnROnDeviceFramework::PNRFailureTypeEnum_optional __swiftcall PNRFailureTypeEnum.init(rawValue:)(Swift::Int64 rawValue)
{
  if (rawValue <= 55100)
  {
    if (rawValue <= 5205)
    {
      if (rawValue > 54)
      {
        if (rawValue <= 5202)
        {
          switch(rawValue)
          {
            case 55:
              *v1 = 6;
              return rawValue;
            case 5201:
              *v1 = 7;
              return rawValue;
            case 5202:
              *v1 = 8;
              return rawValue;
          }

          goto LABEL_91;
        }

        if (rawValue == 5203)
        {
          *v1 = 9;
        }

        else if (rawValue == 5204)
        {
          *v1 = 10;
        }

        else
        {
          *v1 = 11;
        }
      }

      else if (rawValue > 51)
      {
        if (rawValue == 52)
        {
          *v1 = 3;
        }

        else if (rawValue == 53)
        {
          *v1 = 4;
        }

        else
        {
          *v1 = 5;
        }
      }

      else
      {
        if (!rawValue)
        {
          *v1 = 0;
          return rawValue;
        }

        if (rawValue != 50)
        {
          if (rawValue == 51)
          {
            *v1 = 2;
            return rawValue;
          }

          goto LABEL_91;
        }

        v2 = 1;
LABEL_83:
        *v1 = v2;
      }
    }

    else
    {
      v2 = 45;
      switch(rawValue)
      {
        case 5401:
          *v1 = 38;
          return rawValue;
        case 5402:
          *v1 = 39;
          return rawValue;
        case 5403:
        case 5404:
        case 5405:
        case 5406:
        case 5407:
        case 5408:
        case 5409:
        case 5410:
        case 5411:
        case 5412:
        case 5413:
        case 5414:
        case 5415:
        case 5416:
        case 5417:
        case 5418:
        case 5419:
        case 5420:
        case 5421:
        case 5422:
        case 5423:
        case 5424:
        case 5425:
        case 5426:
        case 5427:
        case 5428:
        case 5429:
        case 5430:
        case 5431:
        case 5432:
        case 5433:
        case 5434:
        case 5435:
        case 5436:
        case 5437:
        case 5438:
        case 5439:
        case 5440:
        case 5441:
        case 5442:
        case 5443:
        case 5444:
        case 5445:
        case 5446:
        case 5447:
        case 5448:
        case 5449:
        case 5450:
        case 5451:
        case 5452:
        case 5453:
        case 5454:
        case 5455:
        case 5456:
        case 5457:
        case 5458:
        case 5459:
        case 5460:
        case 5461:
        case 5462:
        case 5463:
        case 5464:
        case 5465:
        case 5466:
        case 5467:
        case 5468:
        case 5469:
        case 5470:
        case 5471:
        case 5472:
        case 5473:
        case 5474:
        case 5475:
        case 5476:
        case 5477:
        case 5478:
        case 5479:
        case 5480:
        case 5481:
        case 5482:
        case 5483:
        case 5484:
        case 5485:
        case 5486:
        case 5487:
        case 5488:
        case 5489:
        case 5490:
        case 5491:
        case 5492:
        case 5493:
        case 5494:
        case 5495:
        case 5496:
        case 5497:
        case 5498:
        case 5499:
        case 5500:
        case 5505:
        case 5506:
        case 5507:
        case 5508:
        case 5509:
        case 5510:
        case 5513:
        case 5514:
        case 5515:
        case 5516:
        case 5517:
        case 5518:
        case 5519:
        case 5520:
        case 5523:
        case 5524:
        case 5525:
        case 5526:
        case 5527:
        case 5528:
        case 5529:
        case 5530:
          goto LABEL_91;
        case 5501:
          *v1 = 44;
          return rawValue;
        case 5502:
          goto LABEL_83;
        case 5503:
          *v1 = 46;
          return rawValue;
        case 5504:
          *v1 = 47;
          return rawValue;
        case 5511:
          *v1 = 48;
          return rawValue;
        case 5512:
          *v1 = 49;
          return rawValue;
        case 5521:
          *v1 = 50;
          return rawValue;
        case 5522:
          *v1 = 51;
          return rawValue;
        case 5531:
          *v1 = 52;
          return rawValue;
        case 5532:
          *v1 = 53;
          return rawValue;
        case 5533:
          *v1 = 54;
          return rawValue;
        case 5534:
          *v1 = 55;
          return rawValue;
        case 5535:
          *v1 = 56;
          return rawValue;
        case 5536:
          *v1 = 57;
          return rawValue;
        case 5537:
          *v1 = 58;
          return rawValue;
        default:
          if (rawValue == 5206)
          {
            *v1 = 12;
          }

          else
          {
            if (rawValue != 5207)
            {
              goto LABEL_91;
            }

            *v1 = 13;
          }

          break;
      }
    }
  }

  else if (rawValue > 520503)
  {
    if (rawValue > 520700)
    {
      if (rawValue > 540102)
      {
        if (rawValue > 99994096)
        {
          if (rawValue == 99994097)
          {
            *v1 = 61;
            return rawValue;
          }

          if (rawValue == 99994099)
          {
            *v1 = 62;
            return rawValue;
          }
        }

        else
        {
          if (rawValue == 540103)
          {
            *v1 = 42;
            return rawValue;
          }

          if (rawValue == 540104)
          {
            *v1 = 43;
            return rawValue;
          }
        }

        goto LABEL_91;
      }

      if (rawValue <= 540100)
      {
        if (rawValue == 520701)
        {
          *v1 = 36;
          return rawValue;
        }

        if (rawValue == 520702)
        {
          *v1 = 37;
          return rawValue;
        }

        goto LABEL_91;
      }

      if (rawValue == 540101)
      {
        *v1 = 40;
      }

      else
      {
        *v1 = 41;
      }
    }

    else
    {
      if (rawValue > 520507)
      {
        if (rawValue > 520601)
        {
          if (rawValue == 520602)
          {
            *v1 = 34;
            return rawValue;
          }

          if (rawValue == 520603)
          {
            *v1 = 35;
            return rawValue;
          }
        }

        else
        {
          if (rawValue == 520508)
          {
            *v1 = 32;
            return rawValue;
          }

          if (rawValue == 520601)
          {
            *v1 = 33;
            return rawValue;
          }
        }

        goto LABEL_91;
      }

      if (rawValue > 520505)
      {
        if (rawValue == 520506)
        {
          *v1 = 30;
        }

        else
        {
          *v1 = 31;
        }
      }

      else if (rawValue == 520504)
      {
        *v1 = 28;
      }

      else
      {
        *v1 = 29;
      }
    }
  }

  else if (rawValue > 520301)
  {
    if (rawValue > 520401)
    {
      if (rawValue <= 520501)
      {
        if (rawValue == 520402)
        {
          *v1 = 24;
          return rawValue;
        }

        if (rawValue == 520501)
        {
          *v1 = 25;
          return rawValue;
        }

        goto LABEL_91;
      }

      if (rawValue == 520502)
      {
        *v1 = 26;
      }

      else
      {
        *v1 = 27;
      }
    }

    else
    {
      if (rawValue > 520303)
      {
        if (rawValue == 520304)
        {
          *v1 = 22;
          return rawValue;
        }

        if (rawValue == 520401)
        {
          *v1 = 23;
          return rawValue;
        }

        goto LABEL_91;
      }

      if (rawValue == 520302)
      {
        *v1 = 20;
      }

      else
      {
        *v1 = 21;
      }
    }
  }

  else
  {
    if (rawValue > 520102)
    {
      if (rawValue > 520201)
      {
        if (rawValue == 520202)
        {
          *v1 = 18;
          return rawValue;
        }

        if (rawValue == 520301)
        {
          *v1 = 19;
          return rawValue;
        }
      }

      else
      {
        if (rawValue == 520103)
        {
          *v1 = 16;
          return rawValue;
        }

        if (rawValue == 520201)
        {
          *v1 = 17;
          return rawValue;
        }
      }

      goto LABEL_91;
    }

    if (rawValue <= 520100)
    {
      if (rawValue == 55101)
      {
        *v1 = 59;
        return rawValue;
      }

      if (rawValue == 55102)
      {
        *v1 = 60;
        return rawValue;
      }

LABEL_91:
      *v1 = 63;
      return rawValue;
    }

    if (rawValue == 520101)
    {
      *v1 = 14;
    }

    else
    {
      *v1 = 15;
    }
  }

  return rawValue;
}

unint64_t sub_25E9A9874()
{
  result = qword_27FD0DBE8;
  if (!qword_27FD0DBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD0DBE8);
  }

  return result;
}

uint64_t sub_25E9A98C8()
{
  v1 = *v0;
  sub_25E9D8390();
  MEMORY[0x25F8C4CA0](qword_25E9DB448[v1]);
  return sub_25E9D83C0();
}

uint64_t sub_25E9A9950(uint64_t a1)
{
  v2 = *v1;
  sub_25E9D8390();
  MEMORY[0x25F8C4CA0](qword_25E9DB448[v2]);
  return sub_25E9D83C0();
}

uint64_t getEnumTagSinglePayload for PNRFailureTypeEnum(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xC2)
  {
    goto LABEL_17;
  }

  if (a2 + 62 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 62) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 62;
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

      return (*a1 | (v4 << 8)) - 62;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 62;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x3F;
  v8 = v6 - 63;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PNRFailureTypeEnum(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 62 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 62) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xC2)
  {
    v4 = 0;
  }

  if (a2 > 0xC1)
  {
    v5 = ((a2 - 194) >> 8) + 1;
    *result = a2 + 62;
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
    *result = a2 + 62;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_25E9A9B34(uint64_t a1, char a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = sub_25E9D7FE0();
  MEMORY[0x28223BE20](v3 - 8);
  if (qword_280F6FE70 != -1)
  {
    swift_once();
  }

  v4 = sub_25E9D7F10();
  __swift_project_value_buffer(v4, qword_280F6FE78);
  v5 = sub_25E9D7F00();
  v6 = sub_25E9D8120();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v31 = v8;
    *v7 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DBF0, &qword_25E9DB688);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DBF8, &unk_25E9DB690);
    v9 = sub_25E9D7FF0();
    v11 = sub_25E9887EC(v9, v10, &v31);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_25E971000, v5, v6, "Converting %s metrics dictionary to json string", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x25F8C51A0](v8, -1, -1);
    MEMORY[0x25F8C51A0](v7, -1, -1);
  }

  if (a2)
  {
    v12 = 3;
  }

  else
  {
    v12 = 2;
  }

  v13 = objc_opt_self();
  v14 = sub_25E9D7F30();
  v31 = 0;
  v15 = [v13 dataWithJSONObject:v14 options:v12 error:&v31];

  v16 = v31;
  if (v15)
  {
    v17 = sub_25E9D7750();
    v19 = v18;

    sub_25E9D7FD0();
    v20 = sub_25E9D7FC0();
    sub_25E9A9FB0(v17, v19);
  }

  else
  {
    v21 = v16;
    v22 = sub_25E9D7740();

    swift_willThrow();
    v31 = 0;
    v32 = 0xE000000000000000;
    sub_25E9D8240();
    MEMORY[0x25F8C4910](0xD000000000000012, 0x800000025E9DE1F0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DBF0, &qword_25E9DB688);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DBF8, &unk_25E9DB690);
    v23 = sub_25E9D7FF0();
    MEMORY[0x25F8C4910](v23);

    MEMORY[0x25F8C4910](0xD000000000000022, 0x800000025E9DE210);
    v25 = v31;
    v24 = v32;

    v26 = sub_25E9D7F00();
    v27 = sub_25E9D8130();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v31 = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_25E9887EC(v25, v24, &v31);
      _os_log_impl(&dword_25E971000, v26, v27, "%s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x25F8C51A0](v29, -1, -1);
      MEMORY[0x25F8C51A0](v28, -1, -1);
    }

    LOBYTE(v31) = -127;
    _s20PnROnDeviceFramework20CoreAnalyticsServiceO017submitReliabilityF08category6reasonyAA0I8CategoryO_SStFZ_0(&v31, v25, v24);

    return 0;
  }

  return v20;
}

uint64_t sub_25E9A9FB0(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

double SELFComponent.QD.__allocating_init()()
{
  v0 = swift_allocObject();
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  *(v0 + 144) = 0u;
  *(v0 + 160) = 0u;
  *(v0 + 176) = 0u;
  *(v0 + 192) = 0u;
  *(v0 + 208) = 0;
  return result;
}

uint64_t sub_25E9AA058(uint64_t a1)
{
  v2 = sub_25E9D81F0();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v4 = sub_25E9B63C0(v2, *(a1 + 36), 0, a1);

  return v4;
}

double SELFComponent.QD.init()()
{
  *(v0 + 208) = 0;
  result = 0.0;
  *(v0 + 176) = 0u;
  *(v0 + 192) = 0u;
  *(v0 + 144) = 0u;
  *(v0 + 160) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  return result;
}

uint64_t sub_25E9AA0FC()
{
  swift_beginAccess();
  v0 = qword_27FD0DD78;
  if (!qword_27FD0DD78)
  {
    return 0;
  }

  sub_25E98F558(0, &qword_27FD0D920, 0x277D5A228);
  v1 = v0;
  v2 = sub_25E9D7E80();

  if (v2 >> 62)
  {
    v3 = sub_25E9D8290();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v3;
}

void sub_25E9AA1DC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D7D8, &qword_25E9D9BC0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v151 - v1;
  v3 = MEMORY[0x277D84F90];
  v159 = sub_25E97F328(MEMORY[0x277D84F90]);
  v158 = sub_25E97F328(v3);
  v160 = sub_25E97FF50(v3);
  swift_beginAccess();
  v4 = qword_27FD0DD78;
  if (!qword_27FD0DD78)
  {
    if (qword_27FD0D5B8 != -1)
    {
LABEL_98:
      swift_once();
    }

    v16 = sub_25E9D7F10();
    __swift_project_value_buffer(v16, qword_27FD0DB60);
    v17 = sub_25E9D7F00();
    v18 = sub_25E9D8120();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_25E971000, v17, v18, "QDSchemaQDClientEvent: Failed to init", v19, 2u);
      MEMORY[0x25F8C51A0](v19, -1, -1);
    }

    goto LABEL_92;
  }

  v155 = v2;
  sub_25E98F558(0, &qword_27FD0D920, 0x277D5A228);
  v5 = v4;
  v6 = sub_25E9D7E80();

  if (qword_27FD0D5B8 != -1)
  {
LABEL_89:
    swift_once();
  }

  v7 = sub_25E9D7F10();
  v8 = __swift_project_value_buffer(v7, qword_27FD0DB60);

  v9 = sub_25E9D7F00();
  v10 = sub_25E9D8120();
  v11 = v6 >> 62;
  if (os_log_type_enabled(v9, v10))
  {
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    if (v11)
    {
      v150 = v12;
      v13 = sub_25E9D8290();
      v12 = v150;
    }

    else
    {
      v13 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v12 + 4) = v13;
    v14 = v12;

    _os_log_impl(&dword_25E971000, v9, v10, "evaluateQDCollectionStartEnd length %ld", v14, 0xCu);
    MEMORY[0x25F8C51A0](v14, -1, -1);
  }

  else
  {
  }

  if (v11)
  {
    v20 = sub_25E9D8290();
    if (v20)
    {
      goto LABEL_14;
    }

    goto LABEL_91;
  }

  v20 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v20)
  {
LABEL_91:

LABEL_92:
    v132 = v152;
    *(v152 + 16) = v160;

    *(v132 + 24) = v159;

    *(v132 + 32) = v158;

    if (qword_27FD0D5B8 != -1)
    {
      swift_once();
    }

    v133 = sub_25E9D7F10();
    __swift_project_value_buffer(v133, qword_27FD0DB60);
    v134 = sub_25E9D7F00();
    v135 = sub_25E9D8120();
    if (os_log_type_enabled(v134, v135))
    {
      v136 = swift_slowAlloc();
      v170 = swift_slowAlloc();
      v172 = v170;
      *v136 = 136315650;
      type metadata accessor for QDSchemaQDCaller(0);

      v137 = sub_25E9D7F40();
      v139 = v138;

      v140 = sub_25E9887EC(v137, v139, &v172);

      *(v136 + 4) = v140;
      *(v136 + 12) = 2080;

      v141 = sub_25E9D7F40();
      v143 = v142;

      v144 = sub_25E9887EC(v141, v143, &v172);

      *(v136 + 14) = v144;
      *(v136 + 22) = 2080;

      v145 = sub_25E9D7F40();
      v147 = v146;

      v148 = sub_25E9887EC(v145, v147, &v172);

      *(v136 + 24) = v148;
      _os_log_impl(&dword_25E971000, v134, v135, "QD CALLER HASHMAP QDSchemaQDCollectionContext: %s, QD START HASHMAP QDSchemaQDCollectionContext: %s, QD END HASHMAP QDSchemaQDCollectionContext: %s", v136, 0x20u);
      v149 = v170;
      swift_arrayDestroy();
      MEMORY[0x25F8C51A0](v149, -1, -1);
      MEMORY[0x25F8C51A0](v136, -1, -1);
    }

    return;
  }

LABEL_14:
  v21 = 0;
  v164 = v6 & 0xC000000000000001;
  v156 = v6 & 0xFFFFFFFFFFFFFF8;
  *&v15 = 136315138;
  v165 = v15;
  *&v15 = 136315906;
  v157 = v15;
  v151 = xmmword_25E9DB6C0;
  v167 = v8;
  v162 = v20;
  v163 = v6;
  while (1)
  {
    if (v164)
    {
      v22 = MEMORY[0x25F8C4B40](v21, v6);
      v23 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        goto LABEL_87;
      }
    }

    else
    {
      if (v21 >= *(v156 + 16))
      {
        goto LABEL_88;
      }

      v22 = *(v6 + 8 * v21 + 32);
      v23 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
        goto LABEL_89;
      }
    }

    v169 = v23;
    v170 = v21;
    v24 = v22;
    v25 = sub_25E9D7F00();
    v26 = sub_25E9D8120();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v172 = v28;
      *v27 = v165;
      v29 = [v24 debugDescription];
      v30 = sub_25E9D7FB0();
      v32 = v31;

      v33 = sub_25E9887EC(v30, v32, &v172);

      *(v27 + 4) = v33;
      _os_log_impl(&dword_25E971000, v25, v26, "evaluateQDCollectionStartEnd value %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x25F8C51A0](v28, -1, -1);
      MEMORY[0x25F8C51A0](v27, -1, -1);
    }

    v34 = sub_25E9D7840();
    if (v34)
    {
      v35 = v34;
      objc_opt_self();
      v36 = swift_dynamicCastObjCClass();
      if (!v36)
      {
      }
    }

    else
    {
      v36 = 0;
    }

    v37 = v36;
    v38 = sub_25E9D7F00();
    v39 = sub_25E9D8120();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v172 = v41;
      *v40 = v165;
      v171 = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC10, &qword_25E9DB6E8);
      v42 = sub_25E9D81B0();
      v44 = sub_25E9887EC(v42, v43, &v172);

      *(v40 + 4) = v44;
      _os_log_impl(&dword_25E971000, v38, v39, "qdEvent Client Event value %s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v41);
      MEMORY[0x25F8C51A0](v41, -1, -1);
      MEMORY[0x25F8C51A0](v40, -1, -1);
    }

    if (v36 && (v45 = [v37 eventMetadata]) != 0 && (v46 = v45, v47 = objc_msgSend(v45, sel_qdId), v46, v47))
    {
      v48 = v155;
      sub_25E9D8100();

      v49 = sub_25E9D77F0();
      v50 = *(v49 - 8);
      if ((*(v50 + 48))(v48, 1, v49) == 1)
      {
        sub_25E9961C4(v48);
        v168 = 0;
        v51 = 0xE000000000000000;
      }

      else
      {
        v168 = sub_25E9D77C0();
        v53 = v52;
        v54 = v49;
        v51 = v53;
        (*(v50 + 8))(v48, v54);
      }
    }

    else
    {
      v168 = 0;
      v51 = 0xE000000000000000;
    }

    v55 = v24;
    v56 = v37;

    v57 = sub_25E9D7F00();
    v58 = sub_25E9D8120();

    if (!os_log_type_enabled(v57, v58))
    {

      if (!v36)
      {
        goto LABEL_15;
      }

      goto LABEL_55;
    }

    v59 = swift_slowAlloc();
    v161 = swift_slowAlloc();
    v172 = v161;
    *v59 = v157;
    v166 = v51;
    v60 = sub_25E9D8000();
    v62 = sub_25E9887EC(v60, v61, &v172);

    *(v59 + 4) = v62;
    *(v59 + 12) = 2080;
    if (!v36)
    {
      v70 = 0xE000000000000000;
      v71 = sub_25E9887EC(0, 0xE000000000000000, &v172);

      v72 = 0;
      *(v59 + 14) = v71;
      *(v59 + 22) = 2080;
      goto LABEL_53;
    }

    v63 = [v56 collectionContext];
    if (!v63)
    {
      goto LABEL_48;
    }

    v64 = v63;
    v65 = [v63 startedOrChanged];

    if (!v65)
    {
      v63 = 0;
LABEL_48:
      v69 = 0xE000000000000000;
      goto LABEL_49;
    }

    v66 = [v65 debugDescription];

    v67 = sub_25E9D7FB0();
    v69 = v68;

    v63 = v67;
LABEL_49:
    v73 = sub_25E9887EC(v63, v69, &v172);

    *(v59 + 14) = v73;
    *(v59 + 22) = 2080;
    v74 = [v56 collectionContext];
    if (v74 && (v75 = v74, v76 = [v74 ended], v75, v76))
    {
      v77 = [v76 debugDescription];

      v72 = sub_25E9D7FB0();
      v70 = v78;
    }

    else
    {
      v72 = 0;
      v70 = 0xE000000000000000;
    }

LABEL_53:
    v79 = sub_25E9887EC(v72, v70, &v172);

    *(v59 + 24) = v79;
    *(v59 + 32) = 2048;
    v80 = sub_25E9D7850();
    if (!v80)
    {
      break;
    }

    v81 = v80;
    v82 = sub_25E9D7870();

    *(v59 + 34) = v82;
    _os_log_impl(&dword_25E971000, v57, v58, "QDID value %s, QD SPAN STARTED value %s, QD SPAN ENDED value %s, QD SPAN TS value %llu", v59, 0x2Au);
    v83 = v161;
    swift_arrayDestroy();
    MEMORY[0x25F8C51A0](v83, -1, -1);
    MEMORY[0x25F8C51A0](v59, -1, -1);

    v51 = v166;
    if (!v36)
    {
LABEL_15:

LABEL_16:

      goto LABEL_17;
    }

LABEL_55:
    v84 = [v56 collectionContext];
    if (v84)
    {
      v85 = v84;
      v86 = [v84 startedOrChanged];

      if (v86)
      {

        v87 = v56;
        v88 = sub_25E9D7F00();
        v89 = sub_25E9D8120();

        if (os_log_type_enabled(v88, v89))
        {
          v161 = v55;
          v166 = v51;
          v90 = swift_slowAlloc();
          v153 = swift_slowAlloc();
          v172 = v153;
          *v90 = v165;
          v154 = v87;
          v91 = [v87 collectionContext];
          if (v91 && (v92 = v91, v93 = [v91 startedOrChanged], v92, v93) && (v94 = objc_msgSend(v93, sel_callers), v93, v94))
          {
            v95 = sub_25E98F558(0, &qword_27FD0DC00, 0x277CCABB0);
            v96 = sub_25E9D8080();
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC08, &qword_25E9DB6E0);
            v96 = swift_allocObject();
            *(v96 + 16) = v151;
            v95 = sub_25E98F558(0, &qword_27FD0DC00, 0x277CCABB0);
            *(v96 + 32) = sub_25E9D8190();
          }

          sub_25E98F558(0, &qword_27FD0DC00, 0x277CCABB0);
          v111 = MEMORY[0x25F8C4980](v96, v95);
          v113 = v112;

          v114 = sub_25E9887EC(v111, v113, &v172);

          *(v90 + 4) = v114;
          _os_log_impl(&dword_25E971000, v88, v89, "qdCollectionContext: startedOrChanged, thisQDEvent Callers  value %s", v90, 0xCu);
          v115 = v153;
          __swift_destroy_boxed_opaque_existential_0(v153);
          MEMORY[0x25F8C51A0](v115, -1, -1);
          MEMORY[0x25F8C51A0](v90, -1, -1);

          v51 = v166;
          v55 = v161;
          v87 = v154;
        }

        else
        {
        }

        v116 = [v87 collectionContext];
        v117 = v168;
        if (!v116)
        {
          goto LABEL_83;
        }

        v118 = v116;
        v119 = [v116 startedOrChanged];

        if (!v119)
        {
          goto LABEL_83;
        }

        v120 = [v119 callers];

        if (v120)
        {
          sub_25E98F558(0, &qword_27FD0DC00, 0x277CCABB0);
          v121 = sub_25E9D8080();

          if (v121 >> 62)
          {
            if (!sub_25E9D8290())
            {
              goto LABEL_82;
            }

LABEL_77:
            if ((v121 & 0xC000000000000001) != 0)
            {
              v122 = v51;
              v123 = MEMORY[0x25F8C4B40](0, v121);
            }

            else
            {
              if (!*((v121 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
                goto LABEL_98;
              }

              v122 = v51;
              v123 = *(v121 + 32);
            }

            v124 = v123;

            v120 = [v124 intValue];

            v51 = v122;
          }

          else
          {
            if (*((v121 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_77;
            }

LABEL_82:

LABEL_83:
            v120 = 0;
          }
        }

        v125 = v160;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v172 = v125;
        sub_25E994634(v120, v117, v51, isUniquelyReferenced_nonNull_native);
        v160 = v172;
        v127 = sub_25E9D7850();
        if (!v127)
        {
          goto LABEL_101;
        }

        v128 = v127;
        v129 = sub_25E9D7870();

        v130 = v159;
        v131 = swift_isUniquelyReferenced_nonNull_native();
        v172 = v130;
        sub_25E993FE0(13, v129, v117, v51, v131);

        v159 = v172;
        goto LABEL_17;
      }
    }

    v97 = [v56 collectionContext];
    if (!v97 || (v98 = v97, v99 = [v97 ended], v98, !v99))
    {

      goto LABEL_16;
    }

    v100 = sub_25E9D7F00();
    v101 = sub_25E9D8120();
    if (os_log_type_enabled(v100, v101))
    {
      v102 = v51;
      v103 = swift_slowAlloc();
      *v103 = 0;
      _os_log_impl(&dword_25E971000, v100, v101, "qdCollectionContext: ended", v103, 2u);
      v104 = v103;
      v51 = v102;
      MEMORY[0x25F8C51A0](v104, -1, -1);
    }

    v105 = sub_25E9D7850();
    v106 = v168;
    if (!v105)
    {
      goto LABEL_102;
    }

    v107 = v105;
    v108 = sub_25E9D7870();

    v109 = v158;
    v110 = swift_isUniquelyReferenced_nonNull_native();
    v172 = v109;
    sub_25E993FE0(14, v108, v106, v51, v110);

    v158 = v172;
LABEL_17:
    v21 = v170 + 1;
    v6 = v163;
    if (v169 == v162)
    {
      goto LABEL_91;
    }
  }

  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
}

void sub_25E9AB3D8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D7D8, &qword_25E9D9BC0);
  v1 = MEMORY[0x28223BE20](v0 - 8);
  v3 = &v513 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v517 = &v513 - v4;
  v5 = MEMORY[0x277D84F90];
  v558 = sub_25E97FE4C(MEMORY[0x277D84F90]);
  v557 = sub_25E97FE4C(v5);
  v556 = sub_25E97FE4C(v5);
  v555 = sub_25E97FE4C(v5);
  v554 = sub_25E97FE4C(v5);
  v553 = sub_25E97FE4C(v5);
  v552 = sub_25E97FE4C(v5);
  v551 = sub_25E97FE4C(v5);
  v550 = sub_25E97FE4C(v5);
  v549 = sub_25E97FE4C(v5);
  v532 = sub_25E97FE4C(v5);
  v524 = sub_25E97FE4C(v5);
  v531 = sub_25E97FE4C(v5);
  v523 = sub_25E97FE4C(v5);
  v530 = sub_25E97FE4C(v5);
  v522 = sub_25E97FE4C(v5);
  v529 = sub_25E97FE4C(v5);
  v521 = sub_25E97FE4C(v5);
  v526 = sub_25E97FE4C(v5);
  v520 = sub_25E97FE4C(v5);
  swift_beginAccess();
  v6 = qword_27FD0DD78;
  if (!qword_27FD0DD78)
  {
    if (qword_27FD0D5B8 != -1)
    {
      swift_once();
    }

    v16 = sub_25E9D7F10();
    __swift_project_value_buffer(v16, qword_27FD0DB60);
    v17 = sub_25E9D7F00();
    v18 = sub_25E9D8120();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_25E971000, v17, v18, "QDSchemaQDClientEvent: Failed to init", v19, 2u);
      MEMORY[0x25F8C51A0](v19, -1, -1);
    }

    goto LABEL_197;
  }

  v516 = v3;
  sub_25E98F558(0, &qword_27FD0DC18, 0x277D5A280);
  v7 = v6;
  v8 = sub_25E9D7E80();

  if (qword_27FD0D5B8 != -1)
  {
LABEL_194:
    swift_once();
  }

  v9 = sub_25E9D7F10();
  v10 = __swift_project_value_buffer(v9, qword_27FD0DB60);

  v544 = v10;
  v11 = sub_25E9D7F00();
  v12 = sub_25E9D8120();
  v13 = os_log_type_enabled(v11, v12);
  v514 = v8;
  if (v13)
  {
    v14 = swift_slowAlloc();
    *v14 = 134217984;
    if (v8 >> 62)
    {
      v512 = sub_25E9D8290();
      v8 = v514;
      v15 = v512;
    }

    else
    {
      v15 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v14 + 4) = v15;

    _os_log_impl(&dword_25E971000, v11, v12, "evaluateQDSpanStartEnd length %ld", v14, 0xCu);
    MEMORY[0x25F8C51A0](v14, -1, -1);
  }

  else
  {
  }

  v547[0] = v8;

  v20 = v515;
  sub_25E9B54B8(v547);
  v515 = v20;
  v22 = v547[0];
  if (v547[0] >> 62)
  {
    v23 = sub_25E9D8290();
    if (v23)
    {
      goto LABEL_15;
    }

    goto LABEL_196;
  }

  v23 = *((v547[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v23)
  {
LABEL_196:

LABEL_197:
    v355 = v558;
    v356 = v525;
    v525[5] = v558;

    v357 = v557;
    v356[6] = v557;

    if (qword_27FD0D5B8 != -1)
    {
      swift_once();
    }

    v358 = sub_25E9D7F10();
    v544 = __swift_project_value_buffer(v358, qword_27FD0DB60);
    v359 = sub_25E9D7F00();
    v360 = sub_25E9D8120();
    if (os_log_type_enabled(v359, v360))
    {
      v361 = swift_slowAlloc();
      v362 = swift_slowAlloc();
      v547[0] = v362;
      *v361 = 136315394;
      swift_beginAccess();
      v363 = v558;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC20, &qword_25E9DB6F0);
      v364 = sub_25E9D7F40();
      v366 = v365;
      v543 = v363;

      v367 = sub_25E9887EC(v364, v366, v547);

      *(v361 + 4) = v367;
      *(v361 + 12) = 2080;
      swift_beginAccess();
      v368 = v557;

      v369 = sub_25E9D7F40();
      v371 = v370;
      v542 = v368;

      v372 = sub_25E9887EC(v369, v371, v547);

      *(v361 + 14) = v372;
      _os_log_impl(&dword_25E971000, v359, v360, "QD SUB START HASHMAP qdInputCollectionStart:Event %s, QD SUB END HASHMAP qdInputCollectionEnd:Event %s", v361, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F8C51A0](v362, -1, -1);
      MEMORY[0x25F8C51A0](v361, -1, -1);
    }

    else
    {
      v542 = v357;
      v543 = v355;
    }

    v373 = v556;
    v374 = v525;
    v525[7] = v556;

    v375 = v555;
    v374[8] = v555;

    v376 = sub_25E9D7F00();
    v377 = sub_25E9D8120();
    if (os_log_type_enabled(v376, v377))
    {
      v378 = swift_slowAlloc();
      v379 = swift_slowAlloc();
      v547[0] = v379;
      *v378 = 136315394;
      swift_beginAccess();
      v380 = v556;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC20, &qword_25E9DB6F0);
      v381 = sub_25E9D7F40();
      v383 = v382;
      v541 = v380;

      v384 = sub_25E9887EC(v381, v383, v547);

      *(v378 + 4) = v384;
      *(v378 + 12) = 2080;
      swift_beginAccess();
      v385 = v555;

      v386 = sub_25E9D7F40();
      v388 = v387;
      v540 = v385;

      v389 = sub_25E9887EC(v386, v388, v547);

      *(v378 + 14) = v389;
      _os_log_impl(&dword_25E971000, v376, v377, "QD SUB START HASHMAP qdSpanRetrievalStart:Event %s, QD SUB END HASHMAP qdSpanRetrievalEnd:Event %s", v378, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F8C51A0](v379, -1, -1);
      MEMORY[0x25F8C51A0](v378, -1, -1);
    }

    else
    {
      v540 = v375;
      v541 = v373;
    }

    v390 = v554;
    v391 = v525;
    v525[9] = v554;

    v392 = v553;
    v391[10] = v553;

    v393 = sub_25E9D7F00();
    v394 = sub_25E9D8120();
    if (os_log_type_enabled(v393, v394))
    {
      v395 = swift_slowAlloc();
      v396 = swift_slowAlloc();
      v547[0] = v396;
      *v395 = 136315394;
      swift_beginAccess();
      v397 = v554;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC20, &qword_25E9DB6F0);
      v398 = sub_25E9D7F40();
      v400 = v399;
      v539 = v397;

      v401 = sub_25E9887EC(v398, v400, v547);

      *(v395 + 4) = v401;
      *(v395 + 12) = 2080;
      swift_beginAccess();
      v402 = v553;

      v403 = sub_25E9D7F40();
      v405 = v404;
      v538 = v402;

      v406 = sub_25E9887EC(v403, v405, v547);

      *(v395 + 14) = v406;
      _os_log_impl(&dword_25E971000, v393, v394, "QD SUB START HASHMAP qdContextRetrievalStart:Event %s, QD SUB END HASHMAP qdContextRetrievalEnd:Event %s", v395, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F8C51A0](v396, -1, -1);
      MEMORY[0x25F8C51A0](v395, -1, -1);
    }

    else
    {
      v538 = v392;
      v539 = v390;
    }

    v407 = v552;
    v408 = v525;
    v525[11] = v552;

    v409 = v551;
    v408[12] = v551;

    v410 = sub_25E9D7F00();
    v411 = sub_25E9D8120();
    if (os_log_type_enabled(v410, v411))
    {
      v412 = swift_slowAlloc();
      v413 = swift_slowAlloc();
      v547[0] = v413;
      *v412 = 136315394;
      swift_beginAccess();
      v414 = v552;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC20, &qword_25E9DB6F0);
      v415 = sub_25E9D7F40();
      v417 = v416;
      *&v537 = v414;

      v418 = sub_25E9887EC(v415, v417, v547);

      *(v412 + 4) = v418;
      *(v412 + 12) = 2080;
      swift_beginAccess();
      v419 = v551;

      v420 = sub_25E9D7F40();
      v422 = v421;
      v536 = v419;

      v423 = sub_25E9887EC(v420, v422, v547);

      *(v412 + 14) = v423;
      _os_log_impl(&dword_25E971000, v410, v411, "QD SUB START HASHMAP qdToolRetrievalContextStart:Event %s, QD SUB END HASHMAP qdToolRetrievalContextEnd:Event %s", v412, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F8C51A0](v413, -1, -1);
      MEMORY[0x25F8C51A0](v412, -1, -1);
    }

    else
    {
      v536 = v409;
      *&v537 = v407;
    }

    v424 = v550;
    v425 = v525;
    v525[13] = v550;

    v426 = v549;
    v425[14] = v549;

    v427 = sub_25E9D7F00();
    v428 = sub_25E9D8120();
    if (os_log_type_enabled(v427, v428))
    {
      v429 = swift_slowAlloc();
      v430 = swift_slowAlloc();
      v548 = v430;
      *v429 = 136315394;
      swift_beginAccess();
      v431 = v550;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC20, &qword_25E9DB6F0);
      v432 = sub_25E9D7F40();
      v434 = v433;
      v535 = v431;

      v435 = sub_25E9887EC(v432, v434, &v548);

      *(v429 + 4) = v435;
      *(v429 + 12) = 2080;
      swift_beginAccess();
      v426 = v549;

      v436 = sub_25E9D7F40();
      v438 = v437;

      v439 = sub_25E9887EC(v436, v438, &v548);

      *(v429 + 14) = v439;
      _os_log_impl(&dword_25E971000, v427, v428, "QD SUB START HASHMAP qdToolRetrievalStart:Event %s, QD SUB END HASHMAP qdToolRetrievalEnd:Event %s", v429, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F8C51A0](v430, -1, -1);
      MEMORY[0x25F8C51A0](v429, -1, -1);
    }

    else
    {
      v535 = v424;
    }

    v441 = v524;
    v440 = v525;
    v525[15] = v532;

    v440[16] = v441;

    v442 = sub_25E9D7F00();
    v443 = sub_25E9D8120();
    v444 = os_log_type_enabled(v442, v443);
    *&v534 = v426;
    if (v444)
    {
      v445 = swift_slowAlloc();
      v533 = swift_slowAlloc();
      v548 = v533;
      *v445 = 136315394;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC20, &qword_25E9DB6F0);
      v446 = sub_25E9D7F40();
      v448 = v447;

      v449 = sub_25E9887EC(v446, v448, &v548);

      *(v445 + 4) = v449;
      *(v445 + 12) = 2080;

      v450 = sub_25E9D7F40();
      v452 = v451;

      v453 = sub_25E9887EC(v450, v452, &v548);

      *(v445 + 14) = v453;
      _os_log_impl(&dword_25E971000, v442, v443, "QD SUB START HASHMAP qdRankingStart:Event %s, QD SUB END HASHMAP qdRankingEnd:Event %s", v445, 0x16u);
      v454 = v533;
      swift_arrayDestroy();
      MEMORY[0x25F8C51A0](v454, -1, -1);
      MEMORY[0x25F8C51A0](v445, -1, -1);
    }

    v455 = v523;
    v456 = v525;
    v525[17] = v531;

    v456[18] = v455;

    v457 = sub_25E9D7F00();
    v458 = sub_25E9D8120();
    if (os_log_type_enabled(v457, v458))
    {
      v459 = swift_slowAlloc();
      v533 = swift_slowAlloc();
      v548 = v533;
      *v459 = 136315394;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC20, &qword_25E9DB6F0);
      v460 = sub_25E9D7F40();
      v462 = v461;

      v463 = sub_25E9887EC(v460, v462, &v548);

      *(v459 + 4) = v463;
      *(v459 + 12) = 2080;

      v464 = sub_25E9D7F40();
      v466 = v465;

      v467 = sub_25E9887EC(v464, v466, &v548);

      *(v459 + 14) = v467;
      _os_log_impl(&dword_25E971000, v457, v458, "QD SUB START HASHMAP qdTupleBuildingStart:Event %s, QD SUB END HASHMAP qdTupleBuildingEnd:Event %s", v459, 0x16u);
      v468 = v533;
      swift_arrayDestroy();
      MEMORY[0x25F8C51A0](v468, -1, -1);
      MEMORY[0x25F8C51A0](v459, -1, -1);
    }

    v469 = v522;
    v470 = v525;
    v525[19] = v530;

    v470[20] = v469;

    v471 = sub_25E9D7F00();
    v472 = sub_25E9D8120();
    if (os_log_type_enabled(v471, v472))
    {
      v473 = swift_slowAlloc();
      v533 = swift_slowAlloc();
      v548 = v533;
      *v473 = 136315394;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC20, &qword_25E9DB6F0);
      v474 = sub_25E9D7F40();
      v476 = v475;

      v477 = sub_25E9887EC(v474, v476, &v548);

      *(v473 + 4) = v477;
      *(v473 + 12) = 2080;

      v478 = sub_25E9D7F40();
      v480 = v479;

      v481 = sub_25E9887EC(v478, v480, &v548);

      *(v473 + 14) = v481;
      _os_log_impl(&dword_25E971000, v471, v472, "QD SUB START HASHMAP qdTupleRankingStart:Event %s, QD SUB END HASHMAP qdTupleRankingEnd:Event %s", v473, 0x16u);
      v482 = v533;
      swift_arrayDestroy();
      MEMORY[0x25F8C51A0](v482, -1, -1);
      MEMORY[0x25F8C51A0](v473, -1, -1);
    }

    v483 = v521;
    v484 = v525;
    v525[21] = v529;

    v484[22] = v483;

    v485 = sub_25E9D7F00();
    v486 = sub_25E9D8120();
    if (os_log_type_enabled(v485, v486))
    {
      v487 = swift_slowAlloc();
      v533 = swift_slowAlloc();
      v548 = v533;
      *v487 = 136315394;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC20, &qword_25E9DB6F0);
      v488 = sub_25E9D7F40();
      v490 = v489;

      v491 = sub_25E9887EC(v488, v490, &v548);

      *(v487 + 4) = v491;
      *(v487 + 12) = 2080;

      v492 = sub_25E9D7F40();
      v494 = v493;

      v495 = sub_25E9887EC(v492, v494, &v548);

      *(v487 + 14) = v495;
      _os_log_impl(&dword_25E971000, v485, v486, "QD SUB START HASHMAP qdOutputBuildingStart:Event %s, QD SUB END HASHMAP qdOutputBuildingEnd:Event %s", v487, 0x16u);
      v496 = v533;
      swift_arrayDestroy();
      MEMORY[0x25F8C51A0](v496, -1, -1);
      MEMORY[0x25F8C51A0](v487, -1, -1);
    }

    v497 = v525;
    v525[25] = v526;

    v498 = v520;
    v497[26] = v520;

    v499 = sub_25E9D7F00();
    v500 = sub_25E9D8120();
    if (os_log_type_enabled(v499, v500))
    {
      v501 = swift_slowAlloc();
      v520 = v498;
      v502 = v501;
      v544 = swift_slowAlloc();
      v548 = v544;
      *v502 = 136315394;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC20, &qword_25E9DB6F0);
      v503 = sub_25E9D7F40();
      v505 = v504;

      v506 = sub_25E9887EC(v503, v505, &v548);

      *(v502 + 4) = v506;
      *(v502 + 12) = 2080;

      v507 = sub_25E9D7F40();
      v509 = v508;

      v510 = sub_25E9887EC(v507, v509, &v548);

      *(v502 + 14) = v510;
      _os_log_impl(&dword_25E971000, v499, v500, "QD SUB START HASHMAP qdFetchDynamicEnumerationEntitiesStart:Event %s, QD SUB END HASHMAP qdFetchDynamicEnumerationEntitiesEnd:Event %s", v502, 0x16u);
      v511 = v544;
      swift_arrayDestroy();
      MEMORY[0x25F8C51A0](v511, -1, -1);
      MEMORY[0x25F8C51A0](v502, -1, -1);
    }

    return;
  }

LABEL_15:
  v24 = 0;
  v528 = v22 & 0xC000000000000001;
  v518 = v22 & 0xFFFFFFFFFFFFFF8;
  *&v21 = 136315138;
  v537 = v21;
  *&v21 = 136315906;
  v519 = v21;
  v534 = xmmword_25E9D96A0;
  v533 = v23;
  v527 = v22;
  while (1)
  {
    if (v528)
    {
      v34 = v24;
      v35 = MEMORY[0x25F8C4B40](v24, v22);
      v36 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        goto LABEL_192;
      }
    }

    else
    {
      if (v24 >= *(v518 + 16))
      {
        goto LABEL_193;
      }

      v34 = v24;
      v35 = *(v22 + 8 * v24 + 32);
      v36 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
LABEL_192:
        __break(1u);
LABEL_193:
        __break(1u);
        goto LABEL_194;
      }
    }

    v535 = v36;
    v536 = v34;
    v37 = v35;
    v38 = sub_25E9D7F00();
    v39 = sub_25E9D8120();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v546[0] = v41;
      *v40 = v537;
      v42 = [v37 debugDescription];
      v43 = sub_25E9D7FB0();
      v45 = v44;

      v46 = sub_25E9887EC(v43, v45, v546);

      *(v40 + 4) = v46;
      _os_log_impl(&dword_25E971000, v38, v39, "evaluateQDSpanStartEnd value %s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v41);
      MEMORY[0x25F8C51A0](v41, -1, -1);
      MEMORY[0x25F8C51A0](v40, -1, -1);
    }

    v47 = sub_25E9D7840();
    if (v47)
    {
      v48 = v47;
      objc_opt_self();
      v49 = swift_dynamicCastObjCClass();
      if (!v49)
      {
      }
    }

    else
    {
      v49 = 0;
    }

    v50 = v49;
    v51 = sub_25E9D7F00();
    v52 = sub_25E9D8120();

    v53 = os_log_type_enabled(v51, v52);
    v541 = v37;
    if (v53)
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v546[0] = v55;
      *v54 = v537;
      v545 = v49;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC10, &qword_25E9DB6E8);
      v56 = sub_25E9D81B0();
      v58 = sub_25E9887EC(v56, v57, v546);

      *(v54 + 4) = v58;
      _os_log_impl(&dword_25E971000, v51, v52, "qdSubEvent Client Event value %s", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v55);
      MEMORY[0x25F8C51A0](v55, -1, -1);
      MEMORY[0x25F8C51A0](v54, -1, -1);
    }

    if (!v49)
    {
      goto LABEL_39;
    }

    v59 = [v50 eventMetadata];
    if (!v59)
    {
      goto LABEL_39;
    }

    v60 = v59;
    v61 = [v59 qdId];

    if (!v61)
    {
      goto LABEL_39;
    }

    v62 = v517;
    sub_25E9D8100();

    v63 = v62;
    v64 = sub_25E9D77F0();
    v65 = *(v64 - 8);
    if ((*(v65 + 48))(v63, 1, v64) == 1)
    {
      sub_25E9961C4(v63);
LABEL_39:
      v542 = 0;
      v66 = 0xE000000000000000;
      goto LABEL_40;
    }

    v542 = sub_25E9D77C0();
    v66 = v107;
    (*(v65 + 8))(v63, v64);
LABEL_40:

    v67 = sub_25E9D7F00();
    v68 = sub_25E9D8120();

    v69 = os_log_type_enabled(v67, v68);
    v540 = v66;
    if (v69)
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v546[0] = v71;
      *v70 = v537;
      v72 = sub_25E9D8000();
      v74 = sub_25E9887EC(v72, v73, v546);

      *(v70 + 4) = v74;
      _os_log_impl(&dword_25E971000, v67, v68, "QDID value %s", v70, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v71);
      MEMORY[0x25F8C51A0](v71, -1, -1);
      MEMORY[0x25F8C51A0](v70, -1, -1);
    }

    if (!v49)
    {
      goto LABEL_47;
    }

    v75 = [v50 subComponentContext];
    if (!v75)
    {
      goto LABEL_47;
    }

    v76 = v75;
    v77 = [v75 traceId];

    if (!v77)
    {
      goto LABEL_47;
    }

    v78 = v516;
    sub_25E9D8100();

    v79 = sub_25E9D77F0();
    v80 = *(v79 - 8);
    if ((*(v80 + 48))(v78, 1, v79) == 1)
    {
      sub_25E9961C4(v78);
LABEL_47:
      v81 = 0;
      v82 = 0xE000000000000000;
      goto LABEL_48;
    }

    v81 = sub_25E9D77C0();
    v82 = v108;
    (*(v80 + 8))(v78, v79);
LABEL_48:

    v83 = sub_25E9D7F00();
    v84 = sub_25E9D8120();

    v85 = os_log_type_enabled(v83, v84);
    v543 = v82;
    v538 = v81;
    if (v85)
    {
      v86 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v546[0] = v87;
      *v86 = v537;
      v88 = sub_25E9D8000();
      v90 = sub_25E9887EC(v88, v89, v546);

      *(v86 + 4) = v90;
      v81 = v538;
      _os_log_impl(&dword_25E971000, v83, v84, "TRACEID value %s", v86, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v87);
      MEMORY[0x25F8C51A0](v87, -1, -1);
      MEMORY[0x25F8C51A0](v86, -1, -1);
    }

    v91 = v541;
    v92 = v50;
    v93 = v91;
    v94 = sub_25E9D7F00();
    v95 = sub_25E9D8120();
    v539 = v92;

    v96 = os_log_type_enabled(v94, v95);
    v541 = v93;
    if (v96)
    {
      break;
    }

    v8 = v540;
    v33 = v533;
    if (!v49)
    {
      goto LABEL_101;
    }

LABEL_74:
    v128 = [v539 subComponentContext];
    if (v128)
    {
      v129 = v128;
      v130 = [v128 startedOrChanged];

      if (v130)
      {
        v131 = [v130 subComponent];

        if (v131 > 5)
        {
          if (v131 <= 7)
          {
            if (v131 == 6)
            {
              v300 = sub_25E9D7F00();
              v301 = sub_25E9D8120();
              if (os_log_type_enabled(v300, v301))
              {
                v302 = swift_slowAlloc();
                *v302 = 0;
                _os_log_impl(&dword_25E971000, v300, v301, "subComponentContext: QDSUBCOMPONENT_RANKING", v302, 2u);
                MEMORY[0x25F8C51A0](v302, -1, -1);
              }

              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC28, &qword_25E9DB6F8);
              v303 = swift_allocObject();
              *(v303 + 16) = v534;
              *(v303 + 32) = v81;
              v8 = v303 + 32;
              *(v303 + 40) = v543;

              v304 = v541;
              v305 = sub_25E9D7850();
              if (!v305)
              {
                goto LABEL_241;
              }

              v306 = v305;

              v307 = sub_25E9D7870();

              *(v303 + 48) = 25;
              *(v303 + 56) = v307;
              v308 = sub_25E97F328(v303);
              swift_setDeallocating();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC30, &qword_25E9DB700);
              swift_arrayDestroy();
              swift_deallocClassInstance();
              v309 = v532;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v546[0] = v309;
              sub_25E9944EC(v308, v542, v540, isUniquelyReferenced_nonNull_native);

              v532 = v546[0];
            }

            else
            {
              v157 = sub_25E9D7F00();
              v158 = sub_25E9D8120();
              if (os_log_type_enabled(v157, v158))
              {
                v159 = swift_slowAlloc();
                *v159 = 0;
                _os_log_impl(&dword_25E971000, v157, v158, "subComponentContext: QDSUBCOMPONENT_TUPLE_BUILDING", v159, 2u);
                MEMORY[0x25F8C51A0](v159, -1, -1);
              }

              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC28, &qword_25E9DB6F8);
              v160 = swift_allocObject();
              *(v160 + 16) = v534;
              *(v160 + 32) = v81;
              v8 = v160 + 32;
              *(v160 + 40) = v543;

              v161 = v541;
              v162 = sub_25E9D7850();
              if (!v162)
              {
                goto LABEL_240;
              }

              v163 = v162;

              v164 = sub_25E9D7870();

              *(v160 + 48) = 27;
              *(v160 + 56) = v164;
              v165 = sub_25E97F328(v160);
              swift_setDeallocating();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC30, &qword_25E9DB700);
              swift_arrayDestroy();
              swift_deallocClassInstance();
              v166 = v531;
              v167 = swift_isUniquelyReferenced_nonNull_native();
              v546[0] = v166;
              sub_25E9944EC(v165, v542, v540, v167);

              v531 = v546[0];
            }

            goto LABEL_18;
          }

          switch(v131)
          {
            case 8:
              v322 = sub_25E9D7F00();
              v323 = sub_25E9D8120();
              if (os_log_type_enabled(v322, v323))
              {
                v324 = swift_slowAlloc();
                *v324 = 0;
                _os_log_impl(&dword_25E971000, v322, v323, "subComponentContext: QDSUBCOMPONENT_TUPLE_RANKING", v324, 2u);
                MEMORY[0x25F8C51A0](v324, -1, -1);
              }

              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC28, &qword_25E9DB6F8);
              v325 = swift_allocObject();
              *(v325 + 16) = v534;
              *(v325 + 32) = v81;
              v8 = v325 + 32;
              *(v325 + 40) = v543;

              v326 = v541;
              v327 = sub_25E9D7850();
              if (!v327)
              {
                goto LABEL_239;
              }

              v328 = v327;

              v329 = sub_25E9D7870();

              *(v325 + 48) = 29;
              *(v325 + 56) = v329;
              v330 = sub_25E97F328(v325);
              swift_setDeallocating();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC30, &qword_25E9DB700);
              swift_arrayDestroy();
              swift_deallocClassInstance();
              v331 = v530;
              v332 = swift_isUniquelyReferenced_nonNull_native();
              v546[0] = v331;
              sub_25E9944EC(v330, v542, v540, v332);

              v530 = v546[0];
              goto LABEL_18;
            case 9:
              v344 = sub_25E9D7F00();
              v345 = sub_25E9D8120();
              if (os_log_type_enabled(v344, v345))
              {
                v346 = swift_slowAlloc();
                *v346 = 0;
                _os_log_impl(&dword_25E971000, v344, v345, "subComponentContext: QDSUBCOMPONENT_OUTPUT_BUILDING", v346, 2u);
                MEMORY[0x25F8C51A0](v346, -1, -1);
              }

              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC28, &qword_25E9DB6F8);
              v347 = swift_allocObject();
              *(v347 + 16) = v534;
              *(v347 + 32) = v81;
              v8 = v347 + 32;
              *(v347 + 40) = v543;

              v348 = v541;
              v349 = sub_25E9D7850();
              if (!v349)
              {
                goto LABEL_238;
              }

              v350 = v349;

              v351 = sub_25E9D7870();

              *(v347 + 48) = 31;
              *(v347 + 56) = v351;
              v352 = sub_25E97F328(v347);
              swift_setDeallocating();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC30, &qword_25E9DB700);
              swift_arrayDestroy();
              swift_deallocClassInstance();
              v353 = v529;
              v354 = swift_isUniquelyReferenced_nonNull_native();
              v546[0] = v353;
              sub_25E9944EC(v352, v542, v540, v354);

              v529 = v546[0];
              goto LABEL_18;
            case 11:
              v143 = sub_25E9D7F00();
              v144 = sub_25E9D8120();
              if (os_log_type_enabled(v143, v144))
              {
                v145 = swift_slowAlloc();
                *v145 = 0;
                _os_log_impl(&dword_25E971000, v143, v144, "subComponentContext: QDSUBCOMPONENT_FETCH_DYNAMIC_ENUMERATION_ENTITIES", v145, 2u);
                MEMORY[0x25F8C51A0](v145, -1, -1);
              }

              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC28, &qword_25E9DB6F8);
              v146 = swift_allocObject();
              *(v146 + 16) = v534;
              *(v146 + 32) = v81;
              v8 = v146 + 32;
              *(v146 + 40) = v543;

              v147 = v541;
              v148 = sub_25E9D7850();
              if (!v148)
              {
                goto LABEL_237;
              }

              v149 = v148;

              v150 = sub_25E9D7870();

              *(v146 + 48) = 35;
              *(v146 + 56) = v150;
              v151 = sub_25E97F328(v146);
              swift_setDeallocating();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC30, &qword_25E9DB700);
              swift_arrayDestroy();
              swift_deallocClassInstance();
              v152 = v526;
              v153 = swift_isUniquelyReferenced_nonNull_native();
              v546[0] = v152;
              sub_25E9944EC(v151, v542, v540, v153);

              v526 = v546[0];
              goto LABEL_18;
          }
        }

        else
        {
          if (v131 > 2)
          {
            if (v131 == 3)
            {
              v311 = sub_25E9D7F00();
              v312 = sub_25E9D8120();
              if (os_log_type_enabled(v311, v312))
              {
                v313 = swift_slowAlloc();
                *v313 = 0;
                _os_log_impl(&dword_25E971000, v311, v312, "subComponentContext: QDSUBCOMPONENT_CONTEXT_RETRIEVAL", v313, 2u);
                MEMORY[0x25F8C51A0](v313, -1, -1);
              }

              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC28, &qword_25E9DB6F8);
              v314 = swift_allocObject();
              *(v314 + 16) = v534;
              *(v314 + 32) = v81;
              v8 = v314 + 32;
              *(v314 + 40) = v543;

              v315 = v541;
              v316 = sub_25E9D7850();
              if (!v316)
              {
                goto LABEL_244;
              }

              v317 = v316;

              v318 = sub_25E9D7870();

              *(v314 + 48) = 19;
              *(v314 + 56) = v318;
              v319 = sub_25E97F328(v314);
              swift_setDeallocating();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC30, &qword_25E9DB700);
              swift_arrayDestroy();
              swift_deallocClassInstance();
              v320 = v554;
              v321 = swift_isUniquelyReferenced_nonNull_native();
              v546[0] = v320;
              sub_25E9944EC(v319, v542, v540, v321);

              v554 = v546[0];
            }

            else if (v131 == 4)
            {
              v333 = sub_25E9D7F00();
              v334 = sub_25E9D8120();
              if (os_log_type_enabled(v333, v334))
              {
                v335 = swift_slowAlloc();
                *v335 = 0;
                _os_log_impl(&dword_25E971000, v333, v334, "subComponentContext: QDSUBCOMPONENT_TOOL_RETRIEVAL_CONTEXT", v335, 2u);
                MEMORY[0x25F8C51A0](v335, -1, -1);
              }

              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC28, &qword_25E9DB6F8);
              v336 = swift_allocObject();
              *(v336 + 16) = v534;
              *(v336 + 32) = v81;
              v8 = v336 + 32;
              *(v336 + 40) = v543;

              v337 = v541;
              v338 = sub_25E9D7850();
              if (!v338)
              {
                goto LABEL_243;
              }

              v339 = v338;

              v340 = sub_25E9D7870();

              *(v336 + 48) = 21;
              *(v336 + 56) = v340;
              v341 = sub_25E97F328(v336);
              swift_setDeallocating();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC30, &qword_25E9DB700);
              swift_arrayDestroy();
              swift_deallocClassInstance();
              v342 = v552;
              v343 = swift_isUniquelyReferenced_nonNull_native();
              v546[0] = v342;
              sub_25E9944EC(v341, v542, v540, v343);

              v552 = v546[0];
            }

            else
            {
              v132 = sub_25E9D7F00();
              v133 = sub_25E9D8120();
              if (os_log_type_enabled(v132, v133))
              {
                v134 = swift_slowAlloc();
                *v134 = 0;
                _os_log_impl(&dword_25E971000, v132, v133, "subComponentContext: QDSUBCOMPONENT_TOOL_RETRIEVAL", v134, 2u);
                MEMORY[0x25F8C51A0](v134, -1, -1);
              }

              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC28, &qword_25E9DB6F8);
              v135 = swift_allocObject();
              *(v135 + 16) = v534;
              *(v135 + 32) = v81;
              v8 = v135 + 32;
              *(v135 + 40) = v543;

              v136 = v541;
              v137 = sub_25E9D7850();
              if (!v137)
              {
                goto LABEL_242;
              }

              v138 = v137;

              v139 = sub_25E9D7870();

              *(v135 + 48) = 23;
              *(v135 + 56) = v139;
              v140 = sub_25E97F328(v135);
              swift_setDeallocating();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC30, &qword_25E9DB700);
              swift_arrayDestroy();
              swift_deallocClassInstance();
              v141 = v550;
              v142 = swift_isUniquelyReferenced_nonNull_native();
              v546[0] = v141;
              sub_25E9944EC(v140, v542, v540, v142);

              v550 = v546[0];
            }

            goto LABEL_18;
          }

          if (v131 == 1)
          {
            v289 = sub_25E9D7F00();
            v290 = sub_25E9D8120();
            if (os_log_type_enabled(v289, v290))
            {
              v291 = swift_slowAlloc();
              *v291 = 0;
              _os_log_impl(&dword_25E971000, v289, v290, "subComponentContext: QDSUBCOMPONENT_INPUT_COLLECTION", v291, 2u);
              MEMORY[0x25F8C51A0](v291, -1, -1);
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC28, &qword_25E9DB6F8);
            v292 = swift_allocObject();
            *(v292 + 16) = v534;
            *(v292 + 32) = v81;
            v8 = v292 + 32;
            *(v292 + 40) = v543;

            v293 = v541;
            v294 = sub_25E9D7850();
            if (!v294)
            {
              goto LABEL_246;
            }

            v295 = v294;

            v296 = sub_25E9D7870();

            *(v292 + 48) = 15;
            *(v292 + 56) = v296;
            v297 = sub_25E97F328(v292);
            swift_setDeallocating();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC30, &qword_25E9DB700);
            swift_arrayDestroy();
            swift_deallocClassInstance();
            v298 = v558;
            v299 = swift_isUniquelyReferenced_nonNull_native();
            v546[0] = v298;
            sub_25E9944EC(v297, v542, v540, v299);

            v558 = v546[0];
LABEL_18:
            v33 = v533;
            goto LABEL_19;
          }

          if (v131 == 2)
          {
            v154 = sub_25E9D7F00();
            v155 = sub_25E9D8120();
            if (os_log_type_enabled(v154, v155))
            {
              v156 = swift_slowAlloc();
              *v156 = 0;
              _os_log_impl(&dword_25E971000, v154, v155, "subComponentContext: QDSUBCOMPONENT_SPAN_RETRIEVAL", v156, 2u);
              MEMORY[0x25F8C51A0](v156, -1, -1);
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC28, &qword_25E9DB6F8);
            v25 = swift_allocObject();
            *(v25 + 16) = v534;
            *(v25 + 32) = v81;
            v8 = v25 + 32;
            *(v25 + 40) = v543;

            v26 = v541;
            v27 = sub_25E9D7850();
            if (!v27)
            {
              goto LABEL_245;
            }

            v28 = v27;

            v29 = sub_25E9D7870();

            *(v25 + 48) = 17;
            *(v25 + 56) = v29;
            v30 = sub_25E97F328(v25);
            swift_setDeallocating();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC30, &qword_25E9DB700);
            swift_arrayDestroy();
            swift_deallocClassInstance();
            v31 = v556;
            v32 = swift_isUniquelyReferenced_nonNull_native();
            v546[0] = v31;
            sub_25E9944EC(v30, v542, v540, v32);

            v556 = v546[0];
            goto LABEL_18;
          }
        }
      }
    }

LABEL_101:
    v168 = sub_25E9D7F00();
    v169 = sub_25E9D8120();
    if (os_log_type_enabled(v168, v169))
    {
      v170 = swift_slowAlloc();
      *v170 = 0;
      _os_log_impl(&dword_25E971000, v168, v169, "subComponentContext: default", v170, 2u);
      MEMORY[0x25F8C51A0](v170, -1, -1);
    }

    v171 = v542;
    v172 = sub_25E976F20(v542, v8, v558);
    if (v172)
    {
      if (*(v172 + 16))
      {
        sub_25E978F5C(v81, v543);
        v174 = v173;

        if (v174)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC28, &qword_25E9DB6F8);
          v175 = swift_allocObject();
          *(v175 + 16) = v534;
          *(v175 + 32) = v81;
          *(v175 + 40) = v543;

          v176 = sub_25E9D7850();
          if (!v176)
          {
            goto LABEL_235;
          }

          v177 = v176;
          v178 = sub_25E9D7870();

          *(v175 + 48) = 16;
          *(v175 + 56) = v178;
          v179 = sub_25E97F328(v175);
          swift_setDeallocating();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC30, &qword_25E9DB700);
          swift_arrayDestroy();
          swift_deallocClassInstance();
          v8 = v540;

          v180 = v557;
          v181 = swift_isUniquelyReferenced_nonNull_native();
          v546[0] = v180;
          v171 = v542;
          sub_25E9944EC(v179, v542, v8, v181);

          v557 = v546[0];
        }
      }

      else
      {
      }
    }

    v182 = sub_25E976F20(v171, v8, v556);
    if (v182)
    {
      if (*(v182 + 16))
      {
        sub_25E978F5C(v81, v543);
        v184 = v183;

        if (v184)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC28, &qword_25E9DB6F8);
          v185 = swift_allocObject();
          *(v185 + 16) = v534;
          *(v185 + 32) = v81;
          *(v185 + 40) = v543;

          v186 = sub_25E9D7850();
          if (!v186)
          {
            goto LABEL_236;
          }

          v187 = v186;
          v188 = sub_25E9D7870();

          *(v185 + 48) = 18;
          *(v185 + 56) = v188;
          v189 = sub_25E97F328(v185);
          swift_setDeallocating();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC30, &qword_25E9DB700);
          swift_arrayDestroy();
          swift_deallocClassInstance();
          v8 = v540;

          v190 = v555;
          v191 = swift_isUniquelyReferenced_nonNull_native();
          v546[0] = v190;
          v171 = v542;
          sub_25E9944EC(v189, v542, v8, v191);

          v555 = v546[0];
        }
      }

      else
      {
      }
    }

    v192 = sub_25E976F20(v171, v8, v554);
    if (v192)
    {
      if (*(v192 + 16))
      {
        sub_25E978F5C(v81, v543);
        v194 = v193;

        if (v194)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC28, &qword_25E9DB6F8);
          v195 = swift_allocObject();
          *(v195 + 16) = v534;
          *(v195 + 32) = v81;
          *(v195 + 40) = v543;

          v196 = sub_25E9D7850();
          if (!v196)
          {
            goto LABEL_227;
          }

          v197 = v196;
          v198 = sub_25E9D7870();

          *(v195 + 48) = 20;
          *(v195 + 56) = v198;
          v199 = sub_25E97F328(v195);
          swift_setDeallocating();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC30, &qword_25E9DB700);
          swift_arrayDestroy();
          swift_deallocClassInstance();
          v8 = v540;

          v200 = v553;
          v201 = swift_isUniquelyReferenced_nonNull_native();
          v546[0] = v200;
          v171 = v542;
          sub_25E9944EC(v199, v542, v8, v201);

          v553 = v546[0];
        }
      }

      else
      {
      }
    }

    v202 = sub_25E976F20(v171, v8, v552);
    if (v202)
    {
      if (*(v202 + 16))
      {
        sub_25E978F5C(v81, v543);
        v204 = v203;

        if (v204)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC28, &qword_25E9DB6F8);
          v205 = swift_allocObject();
          *(v205 + 16) = v534;
          *(v205 + 32) = v81;
          *(v205 + 40) = v543;

          v206 = sub_25E9D7850();
          if (!v206)
          {
            goto LABEL_228;
          }

          v207 = v206;
          v208 = sub_25E9D7870();

          *(v205 + 48) = 22;
          *(v205 + 56) = v208;
          v209 = sub_25E97F328(v205);
          swift_setDeallocating();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC30, &qword_25E9DB700);
          swift_arrayDestroy();
          swift_deallocClassInstance();
          v8 = v540;

          v210 = v551;
          v211 = swift_isUniquelyReferenced_nonNull_native();
          v546[0] = v210;
          v171 = v542;
          sub_25E9944EC(v209, v542, v8, v211);

          v551 = v546[0];
        }
      }

      else
      {
      }
    }

    v212 = sub_25E976F20(v171, v8, v550);
    if (v212)
    {
      if (*(v212 + 16))
      {
        sub_25E978F5C(v81, v543);
        v214 = v213;

        if (v214)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC28, &qword_25E9DB6F8);
          v215 = swift_allocObject();
          *(v215 + 16) = v534;
          *(v215 + 32) = v81;
          *(v215 + 40) = v543;

          v216 = sub_25E9D7850();
          if (!v216)
          {
            goto LABEL_229;
          }

          v217 = v216;
          v218 = sub_25E9D7870();

          *(v215 + 48) = 24;
          *(v215 + 56) = v218;
          v219 = sub_25E97F328(v215);
          swift_setDeallocating();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC30, &qword_25E9DB700);
          swift_arrayDestroy();
          swift_deallocClassInstance();
          v8 = v540;

          v220 = v549;
          v221 = swift_isUniquelyReferenced_nonNull_native();
          v546[0] = v220;
          v171 = v542;
          sub_25E9944EC(v219, v542, v8, v221);

          v549 = v546[0];
        }
      }

      else
      {
      }
    }

    v222 = sub_25E976F20(v171, v8, v532);
    if (v222)
    {
      if (*(v222 + 16))
      {
        v223 = v81;
        v224 = v81;
        v225 = v543;
        sub_25E978F5C(v223, v543);
        v227 = v226;

        if (v227)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC28, &qword_25E9DB6F8);
          v228 = swift_allocObject();
          *(v228 + 16) = v534;
          *(v228 + 32) = v224;
          *(v228 + 40) = v225;

          v229 = sub_25E9D7850();
          if (!v229)
          {
            goto LABEL_230;
          }

          v230 = v229;
          v231 = sub_25E9D7870();

          *(v228 + 48) = 26;
          *(v228 + 56) = v231;
          v232 = sub_25E97F328(v228);
          swift_setDeallocating();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC30, &qword_25E9DB700);
          swift_arrayDestroy();
          swift_deallocClassInstance();
          v8 = v540;

          v233 = v524;
          v234 = swift_isUniquelyReferenced_nonNull_native();
          v546[0] = v233;
          v171 = v542;
          sub_25E9944EC(v232, v542, v8, v234);

          v524 = v546[0];
          v81 = v538;
        }

        else
        {
          v81 = v224;
        }
      }

      else
      {
      }
    }

    v235 = sub_25E976F20(v171, v8, v531);
    if (v235)
    {
      if (*(v235 + 16))
      {
        v236 = v81;
        v237 = v81;
        v238 = v543;
        sub_25E978F5C(v236, v543);
        v240 = v239;

        if (v240)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC28, &qword_25E9DB6F8);
          v241 = swift_allocObject();
          *(v241 + 16) = v534;
          *(v241 + 32) = v237;
          *(v241 + 40) = v238;

          v242 = sub_25E9D7850();
          if (!v242)
          {
            goto LABEL_231;
          }

          v243 = v242;
          v244 = sub_25E9D7870();

          *(v241 + 48) = 28;
          *(v241 + 56) = v244;
          v245 = sub_25E97F328(v241);
          swift_setDeallocating();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC30, &qword_25E9DB700);
          swift_arrayDestroy();
          swift_deallocClassInstance();
          v8 = v540;

          v246 = v523;
          v247 = swift_isUniquelyReferenced_nonNull_native();
          v546[0] = v246;
          v171 = v542;
          sub_25E9944EC(v245, v542, v8, v247);

          v523 = v546[0];
          v81 = v538;
        }

        else
        {
          v81 = v237;
        }
      }

      else
      {
      }
    }

    v248 = sub_25E976F20(v171, v8, v530);
    if (v248)
    {
      if (*(v248 + 16))
      {
        v249 = v81;
        v250 = v81;
        v251 = v543;
        sub_25E978F5C(v249, v543);
        v253 = v252;

        if (v253)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC28, &qword_25E9DB6F8);
          v254 = swift_allocObject();
          *(v254 + 16) = v534;
          *(v254 + 32) = v250;
          *(v254 + 40) = v251;

          v255 = sub_25E9D7850();
          if (!v255)
          {
            goto LABEL_232;
          }

          v256 = v255;
          v257 = sub_25E9D7870();

          *(v254 + 48) = 30;
          *(v254 + 56) = v257;
          v258 = sub_25E97F328(v254);
          swift_setDeallocating();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC30, &qword_25E9DB700);
          swift_arrayDestroy();
          swift_deallocClassInstance();
          v8 = v540;

          v259 = v522;
          v260 = swift_isUniquelyReferenced_nonNull_native();
          v546[0] = v259;
          v171 = v542;
          sub_25E9944EC(v258, v542, v8, v260);

          v522 = v546[0];
          v81 = v538;
        }

        else
        {
          v81 = v250;
        }
      }

      else
      {
      }
    }

    v261 = sub_25E976F20(v171, v8, v529);
    if (v261)
    {
      if (*(v261 + 16))
      {
        v262 = v81;
        v263 = v81;
        v264 = v543;
        sub_25E978F5C(v262, v543);
        v266 = v265;

        if (v266)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC28, &qword_25E9DB6F8);
          v267 = swift_allocObject();
          *(v267 + 16) = v534;
          *(v267 + 32) = v263;
          *(v267 + 40) = v264;

          v268 = sub_25E9D7850();
          if (!v268)
          {
            goto LABEL_233;
          }

          v269 = v268;
          v270 = sub_25E9D7870();

          *(v267 + 48) = 32;
          *(v267 + 56) = v270;
          v271 = sub_25E97F328(v267);
          swift_setDeallocating();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC30, &qword_25E9DB700);
          swift_arrayDestroy();
          swift_deallocClassInstance();
          v8 = v540;

          v272 = v521;
          v273 = swift_isUniquelyReferenced_nonNull_native();
          v546[0] = v272;
          v171 = v542;
          sub_25E9944EC(v271, v542, v8, v273);

          v521 = v546[0];
          v81 = v538;
        }

        else
        {
          v81 = v263;
        }
      }

      else
      {
      }
    }

    v274 = sub_25E976F20(v171, v8, v526);
    if (!v274)
    {
      goto LABEL_167;
    }

    if (!*(v274 + 16))
    {

LABEL_167:

      goto LABEL_19;
    }

    v275 = v81;
    v276 = v81;
    v277 = v543;
    sub_25E978F5C(v275, v543);
    v279 = v278;

    if ((v279 & 1) == 0)
    {
      goto LABEL_167;
    }

    v280 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC28, &qword_25E9DB6F8);
    v281 = swift_allocObject();
    *(v281 + 16) = v534;
    *(v281 + 32) = v276;
    v8 = v281 + 32;
    *(v281 + 40) = v277;

    v282 = v541;
    v283 = sub_25E9D7850();
    if (!v283)
    {
      goto LABEL_234;
    }

    v284 = v283;

    v285 = sub_25E9D7870();

    *(v281 + 48) = 36;
    *(v281 + 56) = v285;
    v286 = sub_25E97F328(v281);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC30, &qword_25E9DB700);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v287 = v520;
    v288 = swift_isUniquelyReferenced_nonNull_native();
    v546[0] = v287;
    sub_25E9944EC(v286, v542, v540, v288);

    v520 = v546[0];
    v33 = v280;
LABEL_19:
    v24 = v536 + 1;
    v22 = v527;
    if (v535 == v33)
    {
      goto LABEL_196;
    }
  }

  v97 = swift_slowAlloc();
  v98 = swift_slowAlloc();
  v546[0] = v98;
  *v97 = v519;
  if (v49)
  {
    v99 = [v539 subComponentContext];
    if (v99)
    {
      v100 = v99;
      v101 = [v99 startedOrChanged];

      if (v101)
      {
        v102 = [v101 debugDescription];

        v103 = sub_25E9D7FB0();
        v105 = v104;

        v99 = v103;
        goto LABEL_62;
      }

      v99 = 0;
    }

    v105 = 0xE000000000000000;
LABEL_62:
    v109 = sub_25E9887EC(v99, v105, v546);

    *(v97 + 4) = v109;
    *(v97 + 12) = 2080;
    v110 = [v539 subComponentContext];
    if (v110)
    {
      v111 = v110;
      v112 = [v110 startedOrChanged];

      if (v112)
      {
        [v112 subComponent];
      }
    }
  }

  else
  {
    v106 = sub_25E9887EC(0, 0xE000000000000000, v546);

    *(v97 + 4) = v106;
    *(v97 + 12) = 2080;
  }

  v113 = sub_25E9D8150();
  v115 = sub_25E9887EC(v113, v114, v546);

  *(v97 + 14) = v115;
  *(v97 + 22) = 2080;
  if (v49)
  {
    v116 = [v539 subComponentContext];
    v117 = v541;
    if (v116)
    {
      v118 = v116;
      v119 = [v116 ended];

      if (v119)
      {
        v120 = [v119 debugDescription];

        v121 = sub_25E9D7FB0();
        v123 = v122;

        goto LABEL_71;
      }
    }

    v121 = 0;
    v123 = 0xE000000000000000;
  }

  else
  {
    v121 = 0;
    v123 = 0xE000000000000000;
LABEL_71:
    v117 = v541;
  }

  v124 = sub_25E9887EC(v121, v123, v546);

  *(v97 + 24) = v124;
  *(v97 + 32) = 2048;
  v125 = sub_25E9D7850();
  if (v125)
  {
    v126 = v125;
    v127 = sub_25E9D7870();

    *(v97 + 34) = v127;
    _os_log_impl(&dword_25E971000, v94, v95, "QD SPAN STARTED value %s, QD SPAN COMPONENT value %s, QD SPAN ENDED value %s, QD SPAN TS value %llu ", v97, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x25F8C51A0](v98, -1, -1);
    MEMORY[0x25F8C51A0](v97, -1, -1);

    v8 = v540;
    v81 = v538;
    v33 = v533;
    if (!v49)
    {
      goto LABEL_101;
    }

    goto LABEL_74;
  }

  __break(1u);
LABEL_227:
  __break(1u);
LABEL_228:
  __break(1u);
LABEL_229:
  __break(1u);
LABEL_230:
  __break(1u);
LABEL_231:
  __break(1u);
LABEL_232:
  __break(1u);
LABEL_233:
  __break(1u);
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
}

void sub_25E9AF338(uint64_t a1)
{
  v3 = v1;
  v4 = MEMORY[0x28223BE20](a1);
  sub_25E9AB3D8();
  if (v2)
  {
    return;
  }

  sub_25E9AA1DC();
  if (qword_27FD0D5B8 != -1)
  {
    goto LABEL_339;
  }

  while (1)
  {
    v497 = v4;
    v5 = sub_25E9D7F10();
    __swift_project_value_buffer(v5, qword_27FD0DB60);
    v6 = sub_25E9D7F00();
    v7 = sub_25E9D8120();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = sub_25E978EFC(2);
      *v8 = 0;
      _os_log_impl(&dword_25E971000, v6, v7, "Enter allQDMetrics", v8, 2u);
      MEMORY[0x25F8C51A0](v8, -1, -1);
    }

    swift_retain_n();
    v517 = sub_25E9D7F00();
    log = sub_25E9D8120();
    v9 = swift_allocObject();
    *(v9 + 16) = 32;
    v10 = swift_allocObject();
    *(v10 + 16) = 8;
    v11 = swift_allocObject();
    *(v11 + 16) = sub_25E9B60B4;
    *(v11 + 24) = v3;
    v12 = v3;
    v13 = swift_allocObject();
    *(v13 + 16) = sub_25E9B614C;
    *(v13 + 24) = v11;
    v14 = swift_allocObject();
    *(v14 + 16) = 32;
    v15 = swift_allocObject();
    *(v15 + 16) = 8;
    v16 = swift_allocObject();
    *(v16 + 16) = sub_25E9B60FC;
    *(v16 + 24) = v12;
    v17 = swift_allocObject();
    *(v17 + 16) = sub_25E9B6474;
    *(v17 + 24) = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC38, &qword_25E9DB708);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_25E9DA580;
    *(v18 + 32) = sub_25E9B6144;
    *(v18 + 40) = v9;
    *(v18 + 48) = sub_25E9B647C;
    *(v18 + 56) = v10;
    *(v18 + 64) = sub_25E9B6154;
    *(v18 + 72) = v13;
    *(v18 + 80) = sub_25E9B647C;
    *(v18 + 88) = v14;
    *(v18 + 96) = sub_25E9B647C;
    *(v18 + 104) = v15;
    *(v18 + 112) = sub_25E9B646C;
    *(v18 + 120) = v17;
    v498 = v12;
    swift_retain_n();

    if (os_log_type_enabled(v517, log))
    {
      v19 = sub_25E978EFC(22);
      v499 = swift_slowAlloc();
      *v515 = v499;
      *v19 = 514;
      *(v19 + 2) = 32;

      *(v19 + 3) = 8;

      *&v514[0] = v12[3];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DA68, &qword_25E9DA3F0);
      v20 = sub_25E9D81B0();
      v22 = sub_25E9887EC(v20, v21, v515);

      *(v19 + 4) = v22;

      *(v19 + 12) = 32;

      *(v19 + 13) = 8;

      *&v514[0] = v12[4];
      v23 = sub_25E9D81B0();
      v25 = sub_25E9887EC(v23, v24, v515);

      *(v19 + 14) = v25;

      v26 = v517;
      _os_log_impl(&dword_25E971000, v517, log, "Compute Metrics QDCollectionStart: %s, Compute Metrics QDCollectionEnd: %s", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F8C51A0](v499, -1, -1);
      MEMORY[0x25F8C51A0](v19, -1, -1);

      v4 = v498;
    }

    else
    {

      v4 = v12;
    }

    if (*(v4 + 24))
    {
      v27 = *(v4 + 24);
    }

    else
    {
      v27 = sub_25E97F328(MEMORY[0x277D84F90]);
    }

    v28 = v27 + 64;
    v29 = 1 << *(v27 + 32);
    v30 = -1;
    if (v29 < 64)
    {
      v30 = ~(-1 << v29);
    }

    v31 = v30 & *(v27 + 64);
    v32 = (v29 + 63) >> 6;

    v33 = 0;
    v3 = &unk_2870ABC00;
    v485 = v32;
    v486 = v27 + 64;
    v494 = v27;
    if (v31)
    {
      break;
    }

LABEL_14:
    while (1)
    {
      v34 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if (v34 >= v32)
      {

        return;
      }

      v31 = *(v28 + 8 * v34);
      ++v33;
      if (v31)
      {
        v33 = v34;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_339:
    swift_once();
  }

  while (1)
  {
LABEL_18:
    v492 = v31;
    v493 = v33;
    v35 = (v33 << 10) | (16 * __clz(__rbit64(v31)));
    v36 = *(v27 + 48) + v35;
    v38 = *v36;
    v37 = *(v36 + 8);
    v39 = (*(v27 + 56) + v35);
    v487 = *(v39 + 1);
    v488 = *v39;
    v40 = swift_allocObject();
    *(v40 + 16) = v38;
    *(v40 + 24) = v37;
    swift_bridgeObjectRetain_n();
    v41 = sub_25E9D7F00();
    v42 = sub_25E9D8120();
    v43 = swift_allocObject();
    *(v43 + 16) = 32;
    v44 = swift_allocObject();
    *(v44 + 16) = 8;
    v45 = swift_allocObject();
    *(v45 + 16) = sub_25E9B6470;
    *(v45 + 24) = v40;
    v46 = swift_allocObject();
    *(v46 + 16) = sub_25E9B6474;
    *(v46 + 24) = v45;
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_25E9D8990;
    *(v47 + 32) = sub_25E9B647C;
    *(v47 + 40) = v43;
    *(v47 + 48) = sub_25E9B647C;
    *(v47 + 56) = v44;
    *(v47 + 64) = sub_25E9B646C;
    *(v47 + 72) = v46;

    v496 = v42;
    v48 = os_log_type_enabled(v41, v42);
    v517 = v38;
    if (v48)
    {
      v49 = sub_25E978EFC(12);
      v50 = swift_slowAlloc();
      *v515 = v50;
      *v49 = 258;
      *(v49 + 2) = 32;

      *(v49 + 3) = 8;

      v51 = sub_25E9887EC(v517, v37, v515);

      *(v49 + 4) = v51;

      _os_log_impl(&dword_25E971000, v41, v496, "Current QDID: %s", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v50);
      MEMORY[0x25F8C51A0](v50, -1, -1);
      v52 = v49;
      v38 = v517;
      MEMORY[0x25F8C51A0](v52, -1, -1);
    }

    else
    {
    }

    v53 = v37;
    v54 = v498;
    if (!v498[2])
    {

      v433 = sub_25E9D7F00();
      v434 = sub_25E9D8120();
      if (!os_log_type_enabled(v433, v434))
      {
        goto LABEL_336;
      }

      v435 = sub_25E978EFC(2);
      *v435 = 0;
      v436 = "qdCaller failed!";
LABEL_280:
      _os_log_impl(&dword_25E971000, v433, v434, v436, v435, 2u);
      MEMORY[0x25F8C51A0](v435, -1, -1);
      goto LABEL_336;
    }

    v55 = v498[4];
    if (!v55)
    {

      v433 = sub_25E9D7F00();
      v434 = sub_25E9D8120();
      if (!os_log_type_enabled(v433, v434))
      {
        goto LABEL_336;
      }

      v435 = sub_25E978EFC(2);
      *v435 = 0;
      v436 = "qdCollectionContextEnd failed!";
      goto LABEL_280;
    }

    sub_25E976E14(v38, v37, v55, v515);
    v483 = *&v515[8];
    v484 = *v515;
    v56 = swift_allocObject();
    v56[2] = v498;
    v56[3] = v38;
    v56[4] = v37;
    swift_retain_n();
    swift_bridgeObjectRetain_n();
    v57 = sub_25E9D7F00();
    v58 = sub_25E9D8120();
    v59 = swift_allocObject();
    *(v59 + 16) = 32;
    v60 = swift_allocObject();
    *(v60 + 16) = 8;
    v61 = swift_allocObject();
    *(v61 + 16) = sub_25E9B615C;
    *(v61 + 24) = v56;
    v62 = swift_allocObject();
    *(v62 + 16) = sub_25E9B6474;
    *(v62 + 24) = v61;
    v63 = swift_allocObject();
    *(v63 + 16) = xmmword_25E9D8990;
    *(v63 + 32) = sub_25E9B647C;
    *(v63 + 40) = v59;
    *(v63 + 48) = sub_25E9B647C;
    *(v63 + 56) = v60;
    *(v63 + 64) = sub_25E9B646C;
    *(v63 + 72) = v62;

    v489 = v58;
    loga = v53;
    if (!os_log_type_enabled(v57, v58))
    {

      goto LABEL_32;
    }

    v64 = sub_25E978EFC(12);
    v65 = swift_slowAlloc();
    *v515 = v65;
    *v64 = 258;
    *(v64 + 2) = 32;

    *(v64 + 3) = 8;

    v66 = v498[5];
    if (!v66)
    {
      __break(1u);
      return;
    }

    v67 = v517;
    if (!*(v66 + 16))
    {
      goto LABEL_30;
    }

    v68 = sub_25E978F5C(v67, loga);
    if ((v69 & 1) == 0)
    {

LABEL_30:
      v70 = 0;
      goto LABEL_31;
    }

    v70 = *(*(v66 + 56) + 8 * v68);

LABEL_31:
    *&v514[0] = v70;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DA68, &qword_25E9DA3F0);
    v71 = sub_25E9D81B0();
    v73 = v72;

    v74 = sub_25E9887EC(v71, v73, v515);

    *(v64 + 4) = v74;

    v54 = v498;

    _os_log_impl(&dword_25E971000, v57, v489, "This qdInputCollectionStart: %s", v64, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v65);
    MEMORY[0x25F8C51A0](v65, -1, -1);
    v75 = v64;
    v53 = loga;
    MEMORY[0x25F8C51A0](v75, -1, -1);
LABEL_32:

    v76 = v54[5];
    v77 = v517;
    if (!v76)
    {
      v87 = xmmword_25E9DB6D0;
LABEL_42:
      v482 = v87;
      goto LABEL_43;
    }

    v78 = sub_25E976F20(v77, v53, v76);

    if (!v78)
    {
      v87 = xmmword_25E9DB6D0;
      goto LABEL_42;
    }

    v79 = v54[5];
    if (!v79 || (, v80 = sub_25E976F20(v77, v53, v79), , !v80))
    {

      v433 = sub_25E9D7F00();
      v434 = sub_25E9D8120();
      if (!os_log_type_enabled(v433, v434))
      {
        goto LABEL_336;
      }

      v435 = sub_25E978EFC(2);
      *v435 = 0;
      v436 = "qdInputCollectionEventStartTrace failed!";
      goto LABEL_280;
    }

    v81 = v54[6];
    if (!v81 || (, v82 = sub_25E976F20(v77, v53, v81), , !v82))
    {

      v433 = sub_25E9D7F00();
      v434 = sub_25E9D8120();
      if (!os_log_type_enabled(v433, v434))
      {
        goto LABEL_336;
      }

      v435 = sub_25E978EFC(2);
      *v435 = 0;
      v436 = "qdInputCollectionEventEndTrace failed!";
      goto LABEL_280;
    }

    v84 = sub_25E9AA058(v83);
    v86 = v85;

    if (!v86)
    {

      v433 = sub_25E9D7F00();
      v437 = sub_25E9D8120();
      if (!os_log_type_enabled(v433, v437))
      {
        goto LABEL_336;
      }

      v438 = sub_25E978EFC(2);
      *v438 = 0;
      v439 = "traceID:qdInputCollectionEventStartTrace failed!";
      goto LABEL_335;
    }

    sub_25E976E14(v84, v86, v80, v515);

    v482 = *v515;
    sub_25E976E14(v84, v86, v82, v514);

    v87 = v514[0];
LABEL_43:
    v481 = v87;
    v88 = swift_allocObject();
    v88[2] = v54;
    v88[3] = v77;
    v88[4] = v53;
    swift_retain_n();
    swift_bridgeObjectRetain_n();
    v89 = sub_25E9D7F00();
    v90 = sub_25E9D8120();
    v91 = swift_allocObject();
    *(v91 + 16) = 32;
    v92 = swift_allocObject();
    *(v92 + 16) = 8;
    v93 = swift_allocObject();
    *(v93 + 16) = sub_25E9B6168;
    *(v93 + 24) = v88;
    v94 = swift_allocObject();
    *(v94 + 16) = sub_25E9B6474;
    *(v94 + 24) = v93;
    v95 = swift_allocObject();
    *(v95 + 16) = xmmword_25E9D8990;
    *(v95 + 32) = sub_25E9B647C;
    *(v95 + 40) = v91;
    *(v95 + 48) = sub_25E9B647C;
    *(v95 + 56) = v92;
    *(v95 + 64) = sub_25E9B646C;
    *(v95 + 72) = v94;

    if (!os_log_type_enabled(v89, v90))
    {

      v103 = v517;
      goto LABEL_54;
    }

    oslog = v89;
    v96 = sub_25E978EFC(12);
    v97 = swift_slowAlloc();
    *v515 = v97;
    *v96 = 258;
    *(v96 + 2) = 32;

    *(v96 + 3) = 8;

    v98 = v54[7];
    if (v98)
    {
      v99 = v517;
      if (*(v98 + 16))
      {

        v100 = sub_25E978F5C(v99, loga);
        if (v101)
        {
          v102 = *(*(v98 + 56) + 8 * v100);

LABEL_52:
          *&v514[0] = v102;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DA68, &qword_25E9DA3F0);
          v104 = sub_25E9D81B0();
          v105 = v106;

          goto LABEL_53;
        }
      }

      v102 = 0;
      goto LABEL_52;
    }

    v104 = 0;
    v105 = 0xE000000000000000;
LABEL_53:
    v103 = v517;
    v107 = sub_25E9887EC(v104, v105, v515);

    *(v96 + 4) = v107;

    v54 = v498;

    _os_log_impl(&dword_25E971000, oslog, v90, "This qdSpanRetrievalStart: %s ", v96, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v97);
    v108 = v97;
    v53 = loga;
    MEMORY[0x25F8C51A0](v108, -1, -1);
    MEMORY[0x25F8C51A0](v96, -1, -1);

LABEL_54:
    v109 = v54[7];
    if (!v109)
    {
      v124 = xmmword_25E9DB6D0;
LABEL_60:
      v473 = v124;
      *osloga = v124;
      goto LABEL_74;
    }

    v110 = sub_25E976F20(v103, v53, v109);

    if (!v110)
    {
      v124 = xmmword_25E9DB6D0;
      goto LABEL_60;
    }

    v111 = swift_allocObject();
    *(v111 + 16) = v103;
    *(v111 + 24) = v53;
    swift_bridgeObjectRetain_n();
    v112 = sub_25E9D7F00();
    v113 = sub_25E9D8120();
    v114 = v53;
    v115 = swift_allocObject();
    *(v115 + 16) = 32;
    v116 = swift_allocObject();
    *(v116 + 16) = 8;
    v117 = swift_allocObject();
    *(v117 + 16) = sub_25E9B6470;
    *(v117 + 24) = v111;
    v118 = swift_allocObject();
    *(v118 + 16) = sub_25E9B6474;
    *(v118 + 24) = v117;
    v119 = swift_allocObject();
    *(v119 + 16) = xmmword_25E9D8990;
    *(v119 + 32) = sub_25E9B647C;
    *(v119 + 40) = v115;
    *(v119 + 48) = sub_25E9B647C;
    *(v119 + 56) = v116;
    *(v119 + 64) = sub_25E9B646C;
    *(v119 + 72) = v118;

    if (os_log_type_enabled(v112, v113))
    {
      v120 = sub_25E978EFC(12);
      osloge = v112;
      v121 = swift_slowAlloc();
      *v515 = v121;
      *v120 = 258;
      *(v120 + 2) = 32;

      *(v120 + 3) = 8;

      v122 = sub_25E9887EC(v517, v114, v515);

      *(v120 + 4) = v122;

      _os_log_impl(&dword_25E971000, osloge, v113, "Enter Span Retrieval for QDID %s", v120, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v121);
      MEMORY[0x25F8C51A0](v121, -1, -1);
      v123 = v120;
      v103 = v517;
      MEMORY[0x25F8C51A0](v123, -1, -1);
    }

    else
    {
    }

    v53 = v114;
    v125 = v498[7];
    if (!v125 || (, v126 = sub_25E976F20(v103, v53, v125), , !v126))
    {

      v433 = sub_25E9D7F00();
      v437 = sub_25E9D8120();
      if (os_log_type_enabled(v433, v437))
      {
        v438 = sub_25E978EFC(2);
        *v438 = 0;
        v439 = "qdSpanRetrievalEventStart failed!";
        goto LABEL_335;
      }

      goto LABEL_336;
    }

    v127 = swift_allocObject();
    *(v127 + 16) = v103;
    *(v127 + 24) = v53;
    v128 = swift_allocObject();
    *(v128 + 16) = v126;
    v129 = v128;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v490 = v126;
    oslogb = sub_25E9D7F00();
    v470 = sub_25E9D8120();
    v459 = swift_allocObject();
    *(v459 + 16) = 32;
    v130 = swift_allocObject();
    *(v130 + 16) = 8;
    v131 = swift_allocObject();
    *(v131 + 16) = sub_25E9B6470;
    *(v131 + 24) = v127;
    v132 = swift_allocObject();
    *(v132 + 16) = sub_25E9B6474;
    *(v132 + 24) = v131;
    v133 = swift_allocObject();
    *(v133 + 16) = 32;
    v134 = swift_allocObject();
    *(v134 + 16) = 8;
    v135 = swift_allocObject();
    *(v135 + 16) = sub_25E9B6478;
    *(v135 + 24) = v129;
    v136 = swift_allocObject();
    *(v136 + 16) = sub_25E9B6474;
    *(v136 + 24) = v135;
    v137 = swift_allocObject();
    *(v137 + 16) = xmmword_25E9DA580;
    *(v137 + 32) = sub_25E9B647C;
    *(v137 + 40) = v459;
    *(v137 + 48) = sub_25E9B647C;
    *(v137 + 56) = v130;
    *(v137 + 64) = sub_25E9B646C;
    *(v137 + 72) = v132;
    *(v137 + 80) = sub_25E9B647C;
    *(v137 + 88) = v133;
    *(v137 + 96) = sub_25E9B647C;
    *(v137 + 104) = v134;
    *(v137 + 112) = sub_25E9B646C;
    *(v137 + 120) = v136;

    if (os_log_type_enabled(oslogb, v470))
    {
      v138 = sub_25E978EFC(22);
      v456 = swift_slowAlloc();
      *v515 = v456;
      *v138 = 514;
      *(v138 + 2) = 32;

      *(v138 + 3) = 8;

      v139 = sub_25E9887EC(v517, loga, v515);

      *(v138 + 4) = v139;

      *(v138 + 12) = 32;

      *(v138 + 13) = 8;

      v140 = sub_25E9D7F50();
      v142 = sub_25E9887EC(v140, v141, v515);

      *(v138 + 14) = v142;

      _os_log_impl(&dword_25E971000, oslogb, v470, "qdSpanRetrievalEventStartTrace for QDID %s: %s", v138, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F8C51A0](v456, -1, -1);
      sub_25E978F50();
    }

    v143 = v517;
    v144 = v498[8];
    if (!v144)
    {
      break;
    }

    v145 = sub_25E976F20(v143, v53, v144);

    if (!v145)
    {
      break;
    }

    v146 = swift_allocObject();
    *(v146 + 16) = v143;
    *(v146 + 24) = v53;
    v147 = swift_allocObject();
    *(v147 + 16) = v145;
    v148 = v147;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v474 = v145;
    oslogc = sub_25E9D7F00();
    v467 = sub_25E9D8120();
    v457 = swift_allocObject();
    *(v457 + 16) = 32;
    v149 = swift_allocObject();
    *(v149 + 16) = 8;
    v150 = swift_allocObject();
    *(v150 + 16) = sub_25E9B6470;
    *(v150 + 24) = v146;
    v151 = swift_allocObject();
    *(v151 + 16) = sub_25E9B6474;
    *(v151 + 24) = v150;
    v152 = swift_allocObject();
    *(v152 + 16) = 32;
    v153 = swift_allocObject();
    *(v153 + 16) = 8;
    v154 = swift_allocObject();
    *(v154 + 16) = sub_25E9B6214;
    *(v154 + 24) = v148;
    v155 = swift_allocObject();
    *(v155 + 16) = sub_25E9B6474;
    *(v155 + 24) = v154;
    v156 = swift_allocObject();
    *(v156 + 16) = xmmword_25E9DA580;
    *(v156 + 32) = sub_25E9B647C;
    *(v156 + 40) = v457;
    *(v156 + 48) = sub_25E9B647C;
    *(v156 + 56) = v149;
    *(v156 + 64) = sub_25E9B646C;
    *(v156 + 72) = v151;
    *(v156 + 80) = sub_25E9B647C;
    *(v156 + 88) = v152;
    *(v156 + 96) = sub_25E9B647C;
    *(v156 + 104) = v153;
    *(v156 + 112) = sub_25E9B646C;
    *(v156 + 120) = v155;

    v157 = os_log_type_enabled(oslogc, v467);
    v158 = v517;
    if (v157)
    {
      v159 = sub_25E978EFC(22);
      v453 = swift_slowAlloc();
      *v515 = v453;
      *v159 = 514;
      *(v159 + 2) = 32;

      *(v159 + 3) = 8;

      v160 = sub_25E9887EC(v158, loga, v515);

      *(v159 + 4) = v160;

      *(v159 + 12) = 32;

      *(v159 + 13) = 8;

      v161 = sub_25E9D7F50();
      v163 = sub_25E9887EC(v161, v162, v515);

      *(v159 + 14) = v163;

      _os_log_impl(&dword_25E971000, oslogc, v467, "qdSpanRetrievalEventEndTrace for QDID %s: %s", v159, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F8C51A0](v453, -1, -1);
      sub_25E978F50();
    }

    v165 = sub_25E9AA058(v164);
    v167 = v166;

    if (!v167)
    {

      v433 = sub_25E9D7F00();
      v437 = sub_25E9D8120();
      if (!os_log_type_enabled(v433, v437))
      {
        goto LABEL_336;
      }

      v438 = sub_25E978EFC(2);
      *v438 = 0;
      v439 = "traceID:qdSpanRetrievalEventStartTrace failed!";
      goto LABEL_335;
    }

    v168 = swift_allocObject();
    *(v168 + 16) = v517;
    *(v168 + 24) = v53;
    v169 = swift_allocObject();
    *(v169 + 16) = v165;
    *(v169 + 24) = v167;
    v170 = v169;
    swift_bridgeObjectRetain_n();
    v460 = v167;
    swift_bridgeObjectRetain_n();
    v464 = v165;
    oslogd = sub_25E9D7F00();
    v468 = sub_25E9D8120();
    v171 = swift_allocObject();
    *(v171 + 16) = 32;
    v172 = v171;
    v451 = swift_allocObject();
    *(v451 + 16) = 8;
    v173 = swift_allocObject();
    *(v173 + 16) = sub_25E9B6234;
    *(v173 + 24) = v168;
    v174 = swift_allocObject();
    *(v174 + 16) = sub_25E9B6474;
    *(v174 + 24) = v173;
    v175 = swift_allocObject();
    *(v175 + 16) = 32;
    v176 = swift_allocObject();
    *(v176 + 16) = 8;
    v177 = swift_allocObject();
    *(v177 + 16) = sub_25E9B6470;
    *(v177 + 24) = v170;
    v178 = swift_allocObject();
    *(v178 + 16) = sub_25E9B6474;
    *(v178 + 24) = v177;
    v179 = swift_allocObject();
    *(v179 + 16) = xmmword_25E9DA580;
    *(v179 + 32) = sub_25E9B647C;
    *(v179 + 40) = v172;
    *(v179 + 48) = sub_25E9B647C;
    *(v179 + 56) = v451;
    *(v179 + 64) = sub_25E9B646C;
    *(v179 + 72) = v174;
    *(v179 + 80) = sub_25E9B647C;
    *(v179 + 88) = v175;
    *(v179 + 96) = sub_25E9B647C;
    *(v179 + 104) = v176;
    *(v179 + 112) = sub_25E9B646C;
    *(v179 + 120) = v178;

    if (os_log_type_enabled(oslogd, v468))
    {
      v180 = sub_25E978EFC(22);
      v448 = swift_slowAlloc();
      *v515 = v448;
      *v180 = 514;
      *(v180 + 2) = 32;

      *(v180 + 3) = 8;

      v181 = sub_25E9887EC(v517, loga, v515);

      *(v180 + 4) = v181;

      *(v180 + 12) = 32;

      *(v180 + 13) = 8;

      v182 = sub_25E9887EC(v464, v460, v515);

      *(v180 + 14) = v182;

      _os_log_impl(&dword_25E971000, oslogd, v468, "qdSpanRetrievalEventStartTrace for QDID:TraceID %s: %s", v180, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F8C51A0](v448, -1, -1);
      sub_25E978F50();
    }

    v103 = v517;
    sub_25E976E14(v464, v460, v490, v515);

    *osloga = *v515;
    sub_25E976E14(v464, v460, v474, v514);

    v473 = v514[0];
    v54 = v498;
LABEL_74:
    v183 = swift_allocObject();
    v183[2] = v54;
    v183[3] = v103;
    v183[4] = v53;
    swift_retain_n();
    swift_bridgeObjectRetain_n();
    v184 = sub_25E9D7F00();
    v185 = sub_25E9D8120();
    v186 = swift_allocObject();
    *(v186 + 16) = 32;
    v187 = swift_allocObject();
    *(v187 + 16) = 8;
    v188 = swift_allocObject();
    *(v188 + 16) = sub_25E9B6174;
    *(v188 + 24) = v183;
    v189 = swift_allocObject();
    *(v189 + 16) = sub_25E9B6474;
    *(v189 + 24) = v188;
    v190 = swift_allocObject();
    *(v190 + 16) = xmmword_25E9D8990;
    *(v190 + 32) = sub_25E9B647C;
    *(v190 + 40) = v186;
    *(v190 + 48) = sub_25E9B647C;
    *(v190 + 56) = v187;
    *(v190 + 64) = sub_25E9B646C;
    *(v190 + 72) = v189;

    if (!os_log_type_enabled(v184, v185))
    {

      v198 = v517;
      v199 = v54[9];
      if (!v199)
      {
        goto LABEL_93;
      }

      goto LABEL_80;
    }

    v471 = v184;
    v191 = sub_25E978EFC(12);
    v192 = swift_slowAlloc();
    *v515 = v192;
    *v191 = 258;
    *(v191 + 2) = 32;

    *(v191 + 3) = 8;

    v193 = v54[9];
    if (!v193)
    {
      v210 = 0;
      v211 = 0xE000000000000000;
      goto LABEL_92;
    }

    v194 = v517;
    if (!*(v193 + 16))
    {
      goto LABEL_90;
    }

    v195 = sub_25E978F5C(v194, loga);
    if ((v196 & 1) == 0)
    {

LABEL_90:
      v197 = 0;
      goto LABEL_91;
    }

    v197 = *(*(v193 + 56) + 8 * v195);

LABEL_91:
    *&v514[0] = v197;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DA68, &qword_25E9DA3F0);
    v210 = sub_25E9D81B0();
    v211 = v212;

LABEL_92:
    v198 = v517;
    v213 = sub_25E9887EC(v210, v211, v515);

    *(v191 + 4) = v213;

    v54 = v498;

    _os_log_impl(&dword_25E971000, v471, v185, "This qdContextRetrievalStart: %s", v191, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v192);
    v214 = v192;
    v53 = loga;
    MEMORY[0x25F8C51A0](v214, -1, -1);
    MEMORY[0x25F8C51A0](v191, -1, -1);

    v199 = v498[9];
    if (!v199)
    {
LABEL_93:
      v209 = xmmword_25E9DB6D0;
      goto LABEL_94;
    }

LABEL_80:

    v200 = sub_25E976F20(v198, v53, v199);

    if (!v200)
    {
      v209 = xmmword_25E9DB6D0;
LABEL_94:
      *v472 = v209;
      goto LABEL_95;
    }

    v201 = v54[9];
    if (!v201 || (, v202 = sub_25E976F20(v198, v53, v201), , !v202))
    {

      v433 = sub_25E9D7F00();
      v437 = sub_25E9D8120();
      if (os_log_type_enabled(v433, v437))
      {
        v438 = sub_25E978EFC(2);
        *v438 = 0;
        v439 = "qdContextRetrievalEventStart failed!";
        goto LABEL_335;
      }

      goto LABEL_336;
    }

    v203 = v54[10];
    if (!v203 || (, v204 = sub_25E976F20(v198, v53, v203), , !v204))
    {

      v433 = sub_25E9D7F00();
      v437 = sub_25E9D8120();
      if (!os_log_type_enabled(v433, v437))
      {
        goto LABEL_336;
      }

      v438 = sub_25E978EFC(2);
      *v438 = 0;
      v439 = "qdContextRetrievalEventEnd failed!";
      goto LABEL_335;
    }

    v206 = sub_25E9AA058(v205);
    v208 = v207;

    if (!v208)
    {

      v433 = sub_25E9D7F00();
      v437 = sub_25E9D8120();
      if (!os_log_type_enabled(v433, v437))
      {
        goto LABEL_336;
      }

      v438 = sub_25E978EFC(2);
      *v438 = 0;
      v439 = "traceID:qdContextRetrievalEventStartTrace failed!";
      goto LABEL_335;
    }

    sub_25E976E14(v206, v208, v202, v515);

    *v472 = *v515;
    sub_25E976E14(v206, v208, v204, v514);

    v209 = v514[0];
LABEL_95:
    v469 = v209;
    v215 = swift_allocObject();
    v215[2] = v54;
    v215[3] = v198;
    v215[4] = v53;
    swift_retain_n();
    swift_bridgeObjectRetain_n();
    v216 = sub_25E9D7F00();
    v217 = sub_25E9D8120();
    v218 = swift_allocObject();
    *(v218 + 16) = 32;
    v219 = swift_allocObject();
    *(v219 + 16) = 8;
    v220 = swift_allocObject();
    *(v220 + 16) = sub_25E9B6180;
    *(v220 + 24) = v215;
    v221 = swift_allocObject();
    *(v221 + 16) = sub_25E9B6474;
    *(v221 + 24) = v220;
    v222 = swift_allocObject();
    *(v222 + 16) = xmmword_25E9D8990;
    *(v222 + 32) = sub_25E9B647C;
    *(v222 + 40) = v218;
    *(v222 + 48) = sub_25E9B647C;
    *(v222 + 56) = v219;
    *(v222 + 64) = sub_25E9B646C;
    *(v222 + 72) = v221;

    if (os_log_type_enabled(v216, v217))
    {
      v465 = v216;
      v223 = sub_25E978EFC(12);
      v224 = swift_slowAlloc();
      *v515 = v224;
      *v223 = 258;
      *(v223 + 2) = 32;

      *(v223 + 3) = 8;

      v225 = v54[13];
      if (!v225)
      {
        v229 = 0;
        v230 = 0xE000000000000000;
LABEL_105:
        v232 = sub_25E9887EC(v229, v230, v515);

        *(v223 + 4) = v232;

        v54 = v498;

        _os_log_impl(&dword_25E971000, v465, v217, "This qdToolRetrievalStart: %s", v223, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v224);
        v233 = v224;
        v53 = loga;
        MEMORY[0x25F8C51A0](v233, -1, -1);
        MEMORY[0x25F8C51A0](v223, -1, -1);

        goto LABEL_106;
      }

      if (*(v225 + 16))
      {

        v226 = sub_25E978F5C(v517, loga);
        if (v227)
        {
          v228 = *(*(v225 + 56) + 8 * v226);

LABEL_104:
          *&v514[0] = v228;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DA68, &qword_25E9DA3F0);
          v229 = sub_25E9D81B0();
          v230 = v231;

          goto LABEL_105;
        }
      }

      v228 = 0;
      goto LABEL_104;
    }

LABEL_106:
    v234 = v517;
    v235 = v54[13];
    if (v235 && (, v236 = sub_25E976F20(v234, v53, v235), , v236))
    {

      v237 = v54[13];
      if (!v237 || (, v238 = sub_25E976F20(v234, v53, v237), , !v238))
      {

        v433 = sub_25E9D7F00();
        v437 = sub_25E9D8120();
        if (!os_log_type_enabled(v433, v437))
        {
          goto LABEL_336;
        }

        v438 = sub_25E978EFC(2);
        *v438 = 0;
        v439 = "qdToolRetrievalEventStart failed!";
        goto LABEL_335;
      }

      v239 = v54[14];
      if (!v239 || (, v240 = sub_25E976F20(v234, v53, v239), , !v240))
      {

        v433 = sub_25E9D7F00();
        v437 = sub_25E9D8120();
        if (!os_log_type_enabled(v433, v437))
        {
          goto LABEL_336;
        }

        v438 = sub_25E978EFC(2);
        *v438 = 0;
        v439 = "qdToolRetrievalEventEnd failed!";
        goto LABEL_335;
      }

      v242 = sub_25E9AA058(v241);
      v244 = v243;

      if (!v244)
      {

        v433 = sub_25E9D7F00();
        v437 = sub_25E9D8120();
        if (!os_log_type_enabled(v433, v437))
        {
          goto LABEL_336;
        }

        v438 = sub_25E978EFC(2);
        *v438 = 0;
        v439 = "traceID:qdToolRetrievalEventStartTrace failed!";
        goto LABEL_335;
      }

      sub_25E976E14(v242, v244, v238, v515);

      v466 = *v515;
      sub_25E976E14(v242, v244, v240, v514);

      v245 = v514[0];
    }

    else
    {
      v245 = xmmword_25E9DB6D0;
      v466 = xmmword_25E9DB6D0;
    }

    v463 = v245;
    v246 = swift_allocObject();
    v246[2] = v54;
    v246[3] = v234;
    v246[4] = v53;
    swift_retain_n();
    swift_bridgeObjectRetain_n();
    v247 = sub_25E9D7F00();
    v248 = sub_25E9D8120();
    v249 = swift_allocObject();
    *(v249 + 16) = 32;
    v250 = swift_allocObject();
    *(v250 + 16) = 8;
    v251 = swift_allocObject();
    *(v251 + 16) = sub_25E9B618C;
    *(v251 + 24) = v246;
    v252 = swift_allocObject();
    *(v252 + 16) = sub_25E9B6474;
    *(v252 + 24) = v251;
    v253 = swift_allocObject();
    *(v253 + 16) = xmmword_25E9D8990;
    *(v253 + 32) = sub_25E9B647C;
    *(v253 + 40) = v249;
    *(v253 + 48) = sub_25E9B647C;
    *(v253 + 56) = v250;
    *(v253 + 64) = sub_25E9B646C;
    *(v253 + 72) = v252;

    if (os_log_type_enabled(v247, v248))
    {
      v461 = v247;
      v254 = sub_25E978EFC(12);
      v255 = swift_slowAlloc();
      *v515 = v255;
      *v254 = 258;
      *(v254 + 2) = 32;

      *(v254 + 3) = 8;

      v256 = v54[15];
      if (v256)
      {
        v257 = v517;
        if (*(v256 + 16))
        {

          v258 = sub_25E978F5C(v257, loga);
          if (v259)
          {
            v260 = *(*(v256 + 56) + 8 * v258);

            goto LABEL_125;
          }
        }

        v260 = 0;
LABEL_125:
        *&v514[0] = v260;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DA68, &qword_25E9DA3F0);
        v263 = sub_25E9D81B0();
        v264 = v265;
      }

      else
      {
        v263 = 0;
        v264 = 0xE000000000000000;
      }

      v266 = sub_25E9887EC(v263, v264, v515);

      *(v254 + 4) = v266;

      _os_log_impl(&dword_25E971000, v461, v248, "This qdRankingStart: %s", v254, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v255);
      MEMORY[0x25F8C51A0](v255, -1, -1);
      sub_25E978F50();
    }

    v261 = v517;
    v262 = v54[15];
    if (v262 && (, v267 = sub_25E976F20(v261, v53, v262), , v267))
    {

      v268 = v54[15];
      if (!v268 || (, v269 = sub_25E976F20(v261, v53, v268), , !v269))
      {

        v433 = sub_25E9D7F00();
        v437 = sub_25E9D8120();
        if (!os_log_type_enabled(v433, v437))
        {
          goto LABEL_336;
        }

        v438 = sub_25E978EFC(2);
        *v438 = 0;
        v439 = "qdRankingEventStart failed!";
        goto LABEL_335;
      }

      v270 = v54[16];
      if (!v270 || (, v271 = sub_25E976F20(v261, v53, v270), , !v271))
      {

        v433 = sub_25E9D7F00();
        v437 = sub_25E9D8120();
        if (!os_log_type_enabled(v433, v437))
        {
          goto LABEL_336;
        }

        v438 = sub_25E978EFC(2);
        *v438 = 0;
        v439 = "qdRankingEventEnd failed!";
        goto LABEL_335;
      }

      v273 = sub_25E9AA058(v272);
      v275 = v274;

      if (!v275)
      {

        v433 = sub_25E9D7F00();
        v437 = sub_25E9D8120();
        if (!os_log_type_enabled(v433, v437))
        {
          goto LABEL_336;
        }

        v438 = sub_25E978EFC(2);
        *v438 = 0;
        v439 = "traceID:qdRankingEventStartTrace failed!";
        goto LABEL_335;
      }

      sub_25E976E14(v273, v275, v269, v515);

      *v462 = *v515;
      sub_25E976E14(v273, v275, v271, v514);

      v276 = v514[0];
    }

    else
    {
      v276 = xmmword_25E9DB6D0;
      *v462 = xmmword_25E9DB6D0;
    }

    v458 = v276;
    v277 = swift_allocObject();
    v277[2] = v54;
    v277[3] = v261;
    v277[4] = v53;
    swift_retain_n();
    swift_bridgeObjectRetain_n();
    v278 = sub_25E9D7F00();
    v279 = sub_25E9D8120();
    v280 = swift_allocObject();
    *(v280 + 16) = 32;
    v281 = swift_allocObject();
    *(v281 + 16) = 8;
    v282 = swift_allocObject();
    *(v282 + 16) = sub_25E9B6198;
    *(v282 + 24) = v277;
    v283 = swift_allocObject();
    *(v283 + 16) = sub_25E9B6474;
    *(v283 + 24) = v282;
    v284 = swift_allocObject();
    *(v284 + 16) = xmmword_25E9D8990;
    *(v284 + 32) = sub_25E9B647C;
    *(v284 + 40) = v280;
    *(v284 + 48) = sub_25E9B647C;
    *(v284 + 56) = v281;
    *(v284 + 64) = sub_25E9B646C;
    *(v284 + 72) = v283;

    if (os_log_type_enabled(v278, v279))
    {
      v454 = v278;
      v285 = sub_25E978EFC(12);
      v286 = swift_slowAlloc();
      *v515 = v286;
      *v285 = 258;
      *(v285 + 2) = 32;

      *(v285 + 3) = 8;

      v287 = v54[21];
      if (v287)
      {
        v288 = v517;
        if (*(v287 + 16))
        {

          v289 = sub_25E978F5C(v288, loga);
          if (v290)
          {
            v291 = *(*(v287 + 56) + 8 * v289);

            goto LABEL_145;
          }
        }

        v291 = 0;
LABEL_145:
        *&v514[0] = v291;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DA68, &qword_25E9DA3F0);
        v294 = sub_25E9D81B0();
        v295 = v296;
      }

      else
      {
        v294 = 0;
        v295 = 0xE000000000000000;
      }

      v297 = sub_25E9887EC(v294, v295, v515);

      *(v285 + 4) = v297;

      _os_log_impl(&dword_25E971000, v454, v279, "This qdOutputBuildingStart: %s", v285, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v286);
      MEMORY[0x25F8C51A0](v286, -1, -1);
      sub_25E978F50();
    }

    v292 = v517;
    v293 = v54[21];
    if (v293 && (, v298 = sub_25E976F20(v292, v53, v293), , v298))
    {

      v299 = v54[21];
      if (!v299 || (, v300 = sub_25E976F20(v292, v53, v299), , !v300))
      {

        v433 = sub_25E9D7F00();
        v437 = sub_25E9D8120();
        if (!os_log_type_enabled(v433, v437))
        {
          goto LABEL_336;
        }

        v438 = sub_25E978EFC(2);
        *v438 = 0;
        v439 = "qdOutputEventStart failed!";
        goto LABEL_335;
      }

      v301 = v54[22];
      if (!v301 || (, v302 = sub_25E976F20(v292, v53, v301), , !v302))
      {

        v433 = sub_25E9D7F00();
        v437 = sub_25E9D8120();
        if (!os_log_type_enabled(v433, v437))
        {
          goto LABEL_336;
        }

        v438 = sub_25E978EFC(2);
        *v438 = 0;
        v439 = "qdOutputEventEnd failed!";
        goto LABEL_335;
      }

      v304 = sub_25E9AA058(v303);
      v306 = v305;

      if (!v306)
      {

        v433 = sub_25E9D7F00();
        v437 = sub_25E9D8120();
        if (!os_log_type_enabled(v433, v437))
        {
          goto LABEL_336;
        }

        v438 = sub_25E978EFC(2);
        *v438 = 0;
        v439 = "traceID:qdOutputEventStartTrace failed!";
        goto LABEL_335;
      }

      sub_25E976E14(v304, v306, v300, v515);

      *v455 = *v515;
      sub_25E976E14(v304, v306, v302, v514);

      v307 = v514[0];
    }

    else
    {
      v307 = xmmword_25E9DB6D0;
      *v455 = xmmword_25E9DB6D0;
    }

    v452 = v307;
    v308 = swift_allocObject();
    v308[2] = v54;
    v308[3] = v292;
    v308[4] = v53;
    swift_retain_n();
    swift_bridgeObjectRetain_n();
    v309 = sub_25E9D7F00();
    v310 = sub_25E9D8120();
    v311 = swift_allocObject();
    *(v311 + 16) = 32;
    v312 = swift_allocObject();
    *(v312 + 16) = 8;
    v313 = swift_allocObject();
    *(v313 + 16) = sub_25E9B61A4;
    *(v313 + 24) = v308;
    v314 = swift_allocObject();
    *(v314 + 16) = sub_25E9B6474;
    *(v314 + 24) = v313;
    v315 = swift_allocObject();
    *(v315 + 16) = xmmword_25E9D8990;
    *(v315 + 32) = sub_25E9B647C;
    *(v315 + 40) = v311;
    *(v315 + 48) = sub_25E9B647C;
    *(v315 + 56) = v312;
    *(v315 + 64) = sub_25E9B646C;
    *(v315 + 72) = v314;

    if (os_log_type_enabled(v309, v310))
    {
      v449 = v309;
      v316 = sub_25E978EFC(12);
      v317 = swift_slowAlloc();
      *v515 = v317;
      *v316 = 258;
      *(v316 + 2) = 32;

      *(v316 + 3) = 8;

      v318 = v54[17];
      if (v318)
      {
        v319 = v517;
        if (*(v318 + 16))
        {

          v320 = sub_25E978F5C(v319, loga);
          if (v321)
          {
            v322 = *(*(v318 + 56) + 8 * v320);

            goto LABEL_165;
          }
        }

        v322 = 0;
LABEL_165:
        *&v514[0] = v322;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DA68, &qword_25E9DA3F0);
        v325 = sub_25E9D81B0();
        v326 = v327;
      }

      else
      {
        v325 = 0;
        v326 = 0xE000000000000000;
      }

      v328 = sub_25E9887EC(v325, v326, v515);

      *(v316 + 4) = v328;

      _os_log_impl(&dword_25E971000, v449, v310, "This qdTupleBuildingStart: %s", v316, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v317);
      MEMORY[0x25F8C51A0](v317, -1, -1);
      sub_25E978F50();
    }

    v323 = v517;
    v324 = v54[17];
    if (v324 && (, v329 = sub_25E976F20(v323, v53, v324), , v329))
    {

      v330 = v54[17];
      if (!v330 || (, v331 = sub_25E976F20(v323, v53, v330), , !v331))
      {

        v433 = sub_25E9D7F00();
        v437 = sub_25E9D8120();
        if (!os_log_type_enabled(v433, v437))
        {
          goto LABEL_336;
        }

        v438 = sub_25E978EFC(2);
        *v438 = 0;
        v439 = "qdTupleEventStart failed!";
        goto LABEL_335;
      }

      v332 = v54[18];
      if (!v332 || (, v333 = sub_25E976F20(v323, v53, v332), , !v333))
      {

        v433 = sub_25E9D7F00();
        v437 = sub_25E9D8120();
        if (!os_log_type_enabled(v433, v437))
        {
          goto LABEL_336;
        }

        v438 = sub_25E978EFC(2);
        *v438 = 0;
        v439 = "qdTupleEventEnd failed!";
        goto LABEL_335;
      }

      v335 = sub_25E9AA058(v334);
      v337 = v336;

      if (!v337)
      {

        v433 = sub_25E9D7F00();
        v437 = sub_25E9D8120();
        if (!os_log_type_enabled(v433, v437))
        {
          goto LABEL_336;
        }

        v438 = sub_25E978EFC(2);
        *v438 = 0;
        v439 = "traceID:qdTupleEventStartTrace failed!";
        goto LABEL_335;
      }

      sub_25E976E14(v335, v337, v331, v515);

      *v450 = *v515;
      sub_25E976E14(v335, v337, v333, v514);

      v338 = v514[0];
    }

    else
    {
      v338 = xmmword_25E9DB6D0;
      *v450 = xmmword_25E9DB6D0;
    }

    v447 = v338;
    v339 = swift_allocObject();
    v339[2] = v54;
    v339[3] = v323;
    v339[4] = v53;
    swift_retain_n();
    swift_bridgeObjectRetain_n();
    v340 = sub_25E9D7F00();
    v341 = sub_25E9D8120();
    v342 = swift_allocObject();
    *(v342 + 16) = 32;
    v343 = swift_allocObject();
    *(v343 + 16) = 8;
    v344 = swift_allocObject();
    *(v344 + 16) = sub_25E9B61B0;
    *(v344 + 24) = v339;
    v345 = swift_allocObject();
    *(v345 + 16) = sub_25E9B6474;
    *(v345 + 24) = v344;
    v346 = swift_allocObject();
    *(v346 + 16) = xmmword_25E9D8990;
    *(v346 + 32) = sub_25E9B647C;
    *(v346 + 40) = v342;
    *(v346 + 48) = sub_25E9B647C;
    *(v346 + 56) = v343;
    *(v346 + 64) = sub_25E9B646C;
    *(v346 + 72) = v345;

    if (os_log_type_enabled(v340, v341))
    {
      v445 = v340;
      v347 = sub_25E978EFC(12);
      v348 = swift_slowAlloc();
      *v515 = v348;
      *v347 = 258;
      *(v347 + 2) = 32;

      *(v347 + 3) = 8;

      v349 = v54[19];
      if (v349)
      {
        if (*(v349 + 16))
        {

          v350 = sub_25E978F5C(v517, loga);
          if (v351)
          {
            v352 = *(*(v349 + 56) + 8 * v350);

            goto LABEL_185;
          }
        }

        v352 = 0;
LABEL_185:
        *&v514[0] = v352;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DA68, &qword_25E9DA3F0);
        v355 = sub_25E9D81B0();
        v356 = v357;
      }

      else
      {
        v355 = 0;
        v356 = 0xE000000000000000;
      }

      v358 = sub_25E9887EC(v355, v356, v515);

      *(v347 + 4) = v358;

      _os_log_impl(&dword_25E971000, v445, v341, "This qdTupleRankingStart: %s", v347, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v348);
      MEMORY[0x25F8C51A0](v348, -1, -1);
      sub_25E978F50();
    }

    v353 = v517;
    v354 = v54[19];
    if (v354 && (, v359 = sub_25E976F20(v353, v53, v354), , v359))
    {

      v360 = v54[19];
      if (!v360 || (, v361 = sub_25E976F20(v353, v53, v360), , !v361))
      {

        v433 = sub_25E9D7F00();
        v437 = sub_25E9D8120();
        if (!os_log_type_enabled(v433, v437))
        {
          goto LABEL_336;
        }

        v438 = sub_25E978EFC(2);
        *v438 = 0;
        v439 = "qdTupleRankingEventStart failed!";
        goto LABEL_335;
      }

      v362 = v54[20];
      if (!v362 || (, v363 = sub_25E976F20(v353, v53, v362), , !v363))
      {

        v433 = sub_25E9D7F00();
        v437 = sub_25E9D8120();
        if (!os_log_type_enabled(v433, v437))
        {
          goto LABEL_336;
        }

        v438 = sub_25E978EFC(2);
        *v438 = 0;
        v439 = "qdTupleRankingEventEnd failed!";
        goto LABEL_335;
      }

      v365 = sub_25E9AA058(v364);
      v367 = v366;

      if (!v367)
      {

        v433 = sub_25E9D7F00();
        v437 = sub_25E9D8120();
        if (!os_log_type_enabled(v433, v437))
        {
          goto LABEL_336;
        }

        v438 = sub_25E978EFC(2);
        *v438 = 0;
        v439 = "traceID:qdTupleRankingEventStartTrace failed!";
        goto LABEL_335;
      }

      sub_25E976E14(v365, v367, v361, v515);

      v446 = *v515;
      sub_25E976E14(v365, v367, v363, v514);

      v368 = v514[0];
    }

    else
    {
      v368 = xmmword_25E9DB6D0;
      v446 = xmmword_25E9DB6D0;
    }

    v444 = v368;
    v369 = swift_allocObject();
    v369[2] = v54;
    v369[3] = v353;
    v369[4] = v53;
    swift_retain_n();
    swift_bridgeObjectRetain_n();
    v370 = sub_25E9D7F00();
    v371 = sub_25E9D8120();
    v372 = swift_allocObject();
    *(v372 + 16) = 32;
    v373 = swift_allocObject();
    *(v373 + 16) = 8;
    v374 = swift_allocObject();
    *(v374 + 16) = sub_25E9B61BC;
    *(v374 + 24) = v369;
    v375 = swift_allocObject();
    *(v375 + 16) = sub_25E9B6474;
    *(v375 + 24) = v374;
    v376 = swift_allocObject();
    *(v376 + 16) = xmmword_25E9D8990;
    *(v376 + 32) = sub_25E9B647C;
    *(v376 + 40) = v372;
    *(v376 + 48) = sub_25E9B647C;
    *(v376 + 56) = v373;
    *(v376 + 64) = sub_25E9B646C;
    *(v376 + 72) = v375;

    if (os_log_type_enabled(v370, v371))
    {
      v442 = v370;
      v377 = sub_25E978EFC(12);
      v378 = swift_slowAlloc();
      *v515 = v378;
      *v377 = 258;
      *(v377 + 2) = 32;

      *(v377 + 3) = 8;

      v379 = v54[11];
      if (v379)
      {
        v380 = v517;
        if (*(v379 + 16))
        {

          v381 = sub_25E978F5C(v380, loga);
          if (v382)
          {
            v383 = *(*(v379 + 56) + 8 * v381);

            goto LABEL_205;
          }
        }

        v383 = 0;
LABEL_205:
        *&v514[0] = v383;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DA68, &qword_25E9DA3F0);
        v386 = sub_25E9D81B0();
        v387 = v388;
      }

      else
      {
        v386 = 0;
        v387 = 0xE000000000000000;
      }

      v389 = sub_25E9887EC(v386, v387, v515);

      *(v377 + 4) = v389;

      _os_log_impl(&dword_25E971000, v442, v371, "This qdToolRetrievalContextStart: %s", v377, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v378);
      MEMORY[0x25F8C51A0](v378, -1, -1);
      sub_25E978F50();
    }

    v384 = v517;
    v385 = v54[11];
    if (v385 && (, v390 = sub_25E976F20(v384, v53, v385), , v390))
    {

      v391 = v54[11];
      if (!v391 || (, v392 = sub_25E976F20(v384, v53, v391), , !v392))
      {

        v433 = sub_25E9D7F00();
        v437 = sub_25E9D8120();
        if (!os_log_type_enabled(v433, v437))
        {
          goto LABEL_336;
        }

        v438 = sub_25E978EFC(2);
        *v438 = 0;
        v439 = "qdToolRetrievalContextStart failed!";
        goto LABEL_335;
      }

      v393 = v54[12];
      if (!v393 || (, v394 = sub_25E976F20(v384, v53, v393), , !v394))
      {

        v433 = sub_25E9D7F00();
        v437 = sub_25E9D8120();
        if (!os_log_type_enabled(v433, v437))
        {
          goto LABEL_336;
        }

        v438 = sub_25E978EFC(2);
        *v438 = 0;
        v439 = "qdToolRetrievalContextEnd failed!";
        goto LABEL_335;
      }

      v396 = sub_25E9AA058(v395);
      v398 = v397;

      if (!v398)
      {

        v433 = sub_25E9D7F00();
        v437 = sub_25E9D8120();
        if (!os_log_type_enabled(v433, v437))
        {
          goto LABEL_336;
        }

        v438 = sub_25E978EFC(2);
        *v438 = 0;
        v439 = "traceID:qdToolRetrievalContextEventStartTrace failed!";
        goto LABEL_335;
      }

      sub_25E976E14(v396, v398, v392, v515);

      v491 = *v515;
      sub_25E976E14(v396, v398, v394, v514);

      *v443 = v514[0];
    }

    else
    {
      v491 = xmmword_25E9DB6D0;
      *v443 = xmmword_25E9DB6D0;
    }

    v399 = swift_allocObject();
    v399[2] = v54;
    v399[3] = v384;
    v399[4] = v53;
    swift_retain_n();
    swift_bridgeObjectRetain_n();
    v400 = sub_25E9D7F00();
    v401 = sub_25E9D8120();
    v402 = swift_allocObject();
    *(v402 + 16) = 32;
    v403 = swift_allocObject();
    *(v403 + 16) = 8;
    v404 = v400;
    v405 = swift_allocObject();
    *(v405 + 16) = sub_25E9B6208;
    *(v405 + 24) = v399;
    v406 = swift_allocObject();
    *(v406 + 16) = sub_25E9B6474;
    *(v406 + 24) = v405;
    v407 = swift_allocObject();
    *(v407 + 16) = xmmword_25E9D8990;
    *(v407 + 32) = sub_25E9B647C;
    *(v407 + 40) = v402;
    *(v407 + 48) = sub_25E9B647C;
    *(v407 + 56) = v403;
    *(v407 + 64) = sub_25E9B646C;
    *(v407 + 72) = v406;

    if (os_log_type_enabled(v404, v401))
    {
      v440 = v401;
      v408 = sub_25E978EFC(12);
      v409 = v54;
      v410 = swift_slowAlloc();
      *v515 = v410;
      *v408 = 258;
      *(v408 + 2) = 32;

      *(v408 + 3) = 8;

      v411 = v409[25];
      if (v411)
      {
        if (*(v411 + 16))
        {

          v412 = sub_25E978F5C(v517, loga);
          if (v413)
          {
            v414 = *(*(v411 + 56) + 8 * v412);

            goto LABEL_224;
          }
        }

        v414 = 0;
LABEL_224:
        *&v514[0] = v414;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DA68, &qword_25E9DA3F0);
        v415 = sub_25E9D81B0();
        v416 = v417;
      }

      else
      {
        v415 = 0;
        v416 = 0xE000000000000000;
      }

      v418 = sub_25E9887EC(v415, v416, v515);

      *(v408 + 4) = v418;

      _os_log_impl(&dword_25E971000, v404, v440, "This qdFetchDynamicEnumerationEntitiesStart: %s", v408, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v410);
      MEMORY[0x25F8C51A0](v410, -1, -1);
      sub_25E978F50();
    }

    v419 = v54[25];
    v420 = v517;
    if (v419 && (, v421 = sub_25E976F20(v420, loga, v419), , v421))
    {

      v422 = v54[25];
      if (!v422 || (, v423 = sub_25E976F20(v420, loga, v422), , !v423))
      {

        v433 = sub_25E9D7F00();
        v437 = sub_25E9D8120();
        if (!os_log_type_enabled(v433, v437))
        {
          goto LABEL_336;
        }

        v438 = sub_25E978EFC(2);
        *v438 = 0;
        v439 = "qdFetchDynamicEnumerationEntitiesStart failed!";
        goto LABEL_335;
      }

      v424 = v54[26];
      if (!v424 || (, v425 = sub_25E976F20(v420, loga, v424), , !v425))
      {

        v433 = sub_25E9D7F00();
        v437 = sub_25E9D8120();
        if (!os_log_type_enabled(v433, v437))
        {
          goto LABEL_336;
        }

        v438 = sub_25E978EFC(2);
        *v438 = 0;
        v439 = "qdFetchDynamicEnumerationEntitiesEnd failed!";
        goto LABEL_335;
      }

      v427 = sub_25E9AA058(v426);
      v429 = v428;

      if (!v429)
      {

        v433 = sub_25E9D7F00();
        v437 = sub_25E9D8120();
        if (!os_log_type_enabled(v433, v437))
        {
          goto LABEL_336;
        }

        v438 = sub_25E978EFC(2);
        *v438 = 0;
        v439 = "traceID:qdDynamicEnumerationEventStartTrace failed!";
LABEL_335:
        _os_log_impl(&dword_25E971000, v433, v437, v439, v438, 2u);
        sub_25E978F50();
      }

      sub_25E976E14(v427, v429, v423, v515);

      v495 = *v515;
      sub_25E976E14(v427, v429, v425, v514);

      v430 = v514[0];
    }

    else
    {
      v430 = xmmword_25E9DB6D0;
      v495 = xmmword_25E9DB6D0;
    }

    v441 = v430;
    sub_25E976F70(v420, loga, *v497, v514);
    memcpy(v515, v514, sizeof(v515));
    v28 = v486;
    v3 = &unk_2870ABC00;
    if (sub_25E994EC4(v515) == 1)
    {
      v512[0] = 0;
      LODWORD(v513[0]) = 0;
      BYTE4(v513[0]) = 0;
      memset(&v513[2], 0, 24);
      v513[1] = 90;
      v513[5] = 90;
      memset(&v513[6], 0, 24);
      memset(&v513[10], 0, 24);
      v513[9] = 90;
      v513[13] = 90;
      memset(&v513[14], 0, 24);
      memset(&v513[18], 0, 24);
      v513[17] = 90;
      v513[21] = 90;
      memset(&v513[22], 0, 24);
      memset(&v513[26], 0, 24);
      v513[25] = 90;
      v513[29] = 90;
      memset(&v513[30], 0, 24);
      memset(&v513[34], 0, 24);
      v513[33] = 90;
      v513[37] = 90;
      memset(&v513[38], 0, 24);
      v513[41] = 90;
      memset(&v513[42], 0, 24);
      nullsub_1();
      memcpy(v514, v513, 0x168uLL);
    }

    v4 = sub_25E981270();

    memcpy(v513, v514, sizeof(v513));
    if (sub_25E994EC4(v513) != 1)
    {
      if ((v4 - 1) < 4 && (v4 & 0x100000000) == 0)
      {
        v432 = v4;
      }

      else
      {
        v432 = 0;
      }

      LODWORD(v514[0]) = v432;
      BYTE4(v514[0]) = 0;
    }

    memcpy(v512, v514, sizeof(v512));
    if (sub_25E994EC4(v512) != 1)
    {
      *(&v514[0] + 1) = v488;
      *&v514[1] = v487;
      *(&v514[1] + 1) = v484;
      *&v514[2] = v483;
    }

    memcpy(__dst, v514, sizeof(__dst));
    if (sub_25E994EC4(__dst) != 1)
    {
      *(&v514[2] + 8) = *osloga;
      *(&v514[3] + 8) = v473;
    }

    memcpy(v510, v514, sizeof(v510));
    if (sub_25E994EC4(v510) != 1)
    {
      *(&v514[4] + 8) = *v472;
      *(&v514[5] + 8) = v469;
    }

    memcpy(v509, v514, sizeof(v509));
    if (sub_25E994EC4(v509) != 1)
    {
      *(&v514[6] + 8) = v466;
      *(&v514[7] + 8) = v463;
    }

    memcpy(v508, v514, sizeof(v508));
    if (sub_25E994EC4(v508) != 1)
    {
      *(&v514[8] + 8) = *v462;
      *(&v514[9] + 8) = v458;
    }

    memcpy(v507, v514, sizeof(v507));
    if (sub_25E994EC4(v507) != 1)
    {
      *(&v514[10] + 8) = *v455;
      *(&v514[11] + 8) = v452;
    }

    memcpy(v506, v514, sizeof(v506));
    if (sub_25E994EC4(v506) != 1)
    {
      *(&v514[12] + 8) = *v450;
      *(&v514[13] + 8) = v447;
    }

    memcpy(v505, v514, sizeof(v505));
    if (sub_25E994EC4(v505) != 1)
    {
      *(&v514[14] + 8) = v446;
      *(&v514[15] + 8) = v444;
    }

    memcpy(v504, v514, sizeof(v504));
    if (sub_25E994EC4(v504) != 1)
    {
      *(&v514[16] + 8) = v482;
      *(&v514[17] + 8) = v481;
    }

    memcpy(v503, v514, sizeof(v503));
    if (sub_25E994EC4(v503) != 1)
    {
      *(&v514[18] + 8) = v491;
      *(&v514[19] + 8) = *v443;
    }

    memcpy(v502, v514, sizeof(v502));
    if (sub_25E994EC4(v502) != 1)
    {
      *(&v514[20] + 8) = v495;
      *(&v514[21] + 8) = v441;
    }

    v31 = (v492 - 1) & v492;
    memcpy(v516, v514, 0x168uLL);
    sub_25E98F93C(v516, v420, loga);
    v27 = v494;
    v32 = v485;
    v33 = v493;
    if (!v31)
    {
      goto LABEL_14;
    }
  }

  v433 = sub_25E9D7F00();
  v437 = sub_25E9D8120();
  if (os_log_type_enabled(v433, v437))
  {
    v438 = sub_25E978EFC(2);
    *v438 = 0;
    v439 = "qdSpanRetrievalEventEnd failed!";
    goto LABEL_335;
  }

LABEL_336:
}

uint64_t sub_25E9B4C00(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 40);
  if (v3)
  {
    if (*(v3 + 16))
    {

      sub_25E978F5C(a2, a3);
      if (v6)
      {
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DA68, &qword_25E9DA3F0);
    v7 = sub_25E9D81B0();

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25E9B4CC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 56);
  if (v3)
  {
    if (*(v3 + 16))
    {

      sub_25E978F5C(a2, a3);
      if (v6)
      {
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DA68, &qword_25E9DA3F0);
    v3 = sub_25E9D81B0();
  }

  return v3;
}

uint64_t sub_25E9B4D84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 72);
  if (v3)
  {
    if (*(v3 + 16))
    {

      sub_25E978F5C(a2, a3);
      if (v6)
      {
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DA68, &qword_25E9DA3F0);
    v3 = sub_25E9D81B0();
  }

  return v3;
}

uint64_t sub_25E9B4E48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 104);
  if (v3)
  {
    if (*(v3 + 16))
    {

      sub_25E978F5C(a2, a3);
      if (v6)
      {
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DA68, &qword_25E9DA3F0);
    v3 = sub_25E9D81B0();
  }

  return v3;
}

uint64_t sub_25E9B4F0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 120);
  if (v3)
  {
    if (*(v3 + 16))
    {

      sub_25E978F5C(a2, a3);
      if (v6)
      {
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DA68, &qword_25E9DA3F0);
    v3 = sub_25E9D81B0();
  }

  return v3;
}

uint64_t sub_25E9B4FD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 168);
  if (v3)
  {
    if (*(v3 + 16))
    {

      sub_25E978F5C(a2, a3);
      if (v6)
      {
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DA68, &qword_25E9DA3F0);
    v3 = sub_25E9D81B0();
  }

  return v3;
}

uint64_t sub_25E9B5094(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 136);
  if (v3)
  {
    if (*(v3 + 16))
    {

      sub_25E978F5C(a2, a3);
      if (v6)
      {
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DA68, &qword_25E9DA3F0);
    v3 = sub_25E9D81B0();
  }

  return v3;
}

uint64_t sub_25E9B5158(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 152);
  if (v3)
  {
    if (*(v3 + 16))
    {

      sub_25E978F5C(a2, a3);
      if (v6)
      {
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DA68, &qword_25E9DA3F0);
    v3 = sub_25E9D81B0();
  }

  return v3;
}

uint64_t sub_25E9B521C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 88);
  if (v3)
  {
    if (*(v3 + 16))
    {

      sub_25E978F5C(a2, a3);
      if (v6)
      {
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DA68, &qword_25E9DA3F0);
    v3 = sub_25E9D81B0();
  }

  return v3;
}

uint64_t sub_25E9B52E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 200);
  if (v3)
  {
    if (*(v3 + 16))
    {

      sub_25E978F5C(a2, a3);
      if (v6)
      {
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DA68, &qword_25E9DA3F0);
    v3 = sub_25E9D81B0();
  }

  return v3;
}

void *SELFComponent.QD.deinit()
{

  return v0;
}

uint64_t SELFComponent.QD.__deallocating_deinit()
{
  SELFComponent.QD.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_25E9B54B8(unint64_t *a1)
{
  v2 = *a1;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v2 & 0x8000000000000000) != 0 || (v2 & 0x4000000000000000) != 0)
  {
    v2 = sub_25E9B6050(v2);
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v5[0] = (v2 & 0xFFFFFFFFFFFFFF8) + 32;
  v5[1] = v3;
  result = sub_25E9B5530(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_25E9B5530(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_25E9D82E0();
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
        sub_25E9D7860();
        v6 = sub_25E9D80B0();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_25E9B571C(v8, v9, a1, v4);
      *(v7 + 16) = 0;
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
    return sub_25E9B5634(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_25E9B5634(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = result;
    v7 = *a4;
    sub_25E9D7860();
    sub_25E9B6414();
    v8 = v7 + 8 * v4 - 8;
    v9 = v6 - v4;
LABEL_5:
    v10 = v9;
    v11 = v8;
    while (1)
    {
      result = sub_25E9D7F70();
      if ((result & 1) == 0)
      {
LABEL_4:
        ++v4;
        v8 += 8;
        --v9;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v7)
      {
        break;
      }

      v12 = *v11;
      *v11 = v11[1];
      v11[1] = v12;
      --v11;
      if (__CFADD__(v10++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_25E9B571C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v87 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_92:
    v7 = *v87;
    if (!*v87)
    {
      goto LABEL_130;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_124:
      result = sub_25E9B603C(v9);
      v9 = result;
    }

    v79 = *(v9 + 2);
    if (v79 >= 2)
    {
      while (1)
      {
        v80 = *v6;
        if (!*v6)
        {
          goto LABEL_128;
        }

        v6 = (v79 - 1);
        v81 = *&v9[16 * v79];
        v82 = *&v9[16 * v79 + 24];
        sub_25E9B5D3C((v80 + 8 * v81), (v80 + 8 * *&v9[16 * v79 + 16]), (v80 + 8 * v82), v7);
        if (v5)
        {
        }

        if (v82 < v81)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_25E9B603C(v9);
        }

        if (v79 - 2 >= *(v9 + 2))
        {
          goto LABEL_118;
        }

        v83 = &v9[16 * v79];
        *v83 = v81;
        *(v83 + 1) = v82;
        result = sub_25E9B5FB0(v6);
        v79 = *(v9 + 2);
        v6 = a3;
        if (v79 <= 1)
        {
        }
      }
    }
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8++;
    if (v8 < v7)
    {
      v11 = v6;
      v6 = v5;
      v12 = 8 * v10;
      v13 = *v11 + 8 * v10 + 16;
      sub_25E9D7860();
      sub_25E9B6414();
      result = sub_25E9D7F70();
      v14 = v10;
      v15 = result;
      v86 = v14;
      v16 = v14 + 2;
      while (v7 != v16)
      {
        result = sub_25E9D7F70();
        ++v16;
        v13 += 8;
        if ((v15 & 1) != (result & 1))
        {
          v7 = v16 - 1;
          break;
        }
      }

      v5 = v6;
      if (v15)
      {
        v10 = v86;
        if (v7 < v86)
        {
          goto LABEL_121;
        }

        v6 = a3;
        if (v86 < v7)
        {
          v17 = 8 * v7 - 8;
          v18 = v7;
          v19 = v86;
          do
          {
            if (v19 != --v18)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_127;
              }

              v20 = *(v21 + v12);
              *(v21 + v12) = *(v21 + v17);
              *(v21 + v17) = v20;
            }

            ++v19;
            v17 -= 8;
            v12 += 8;
          }

          while (v19 < v18);
        }

        v8 = v7;
      }

      else
      {
        v8 = v7;
        v6 = a3;
        v10 = v86;
      }
    }

    v22 = v6[1];
    if (v8 < v22)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_120;
      }

      if (v8 - v10 < a4)
      {
        break;
      }
    }

LABEL_40:
    if (v8 < v10)
    {
      goto LABEL_119;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v32 = v5;
    if ((result & 1) == 0)
    {
      result = sub_25E983B70(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v34 = *(v9 + 2);
    v33 = *(v9 + 3);
    v35 = v34 + 1;
    if (v34 >= v33 >> 1)
    {
      result = sub_25E983B70((v33 > 1), v34 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v35;
    v36 = &v9[16 * v34];
    *(v36 + 4) = v10;
    *(v36 + 5) = v8;
    v37 = *v87;
    if (!*v87)
    {
      goto LABEL_129;
    }

    if (v34)
    {
      v5 = v32;
      while (1)
      {
        v38 = v35 - 1;
        if (v35 >= 4)
        {
          break;
        }

        if (v35 == 3)
        {
          v39 = *(v9 + 4);
          v40 = *(v9 + 5);
          v49 = __OFSUB__(v40, v39);
          v41 = v40 - v39;
          v42 = v49;
LABEL_61:
          if (v42)
          {
            goto LABEL_108;
          }

          v55 = &v9[16 * v35];
          v57 = *v55;
          v56 = *(v55 + 1);
          v58 = __OFSUB__(v56, v57);
          v59 = v56 - v57;
          v60 = v58;
          if (v58)
          {
            goto LABEL_111;
          }

          v61 = &v9[16 * v38 + 32];
          v63 = *v61;
          v62 = *(v61 + 1);
          v49 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v49)
          {
            goto LABEL_114;
          }

          if (__OFADD__(v59, v64))
          {
            goto LABEL_115;
          }

          if (v59 + v64 >= v41)
          {
            if (v41 < v64)
            {
              v38 = v35 - 2;
            }

            goto LABEL_82;
          }

          goto LABEL_75;
        }

        v65 = &v9[16 * v35];
        v67 = *v65;
        v66 = *(v65 + 1);
        v49 = __OFSUB__(v66, v67);
        v59 = v66 - v67;
        v60 = v49;
LABEL_75:
        if (v60)
        {
          goto LABEL_110;
        }

        v68 = &v9[16 * v38];
        v70 = *(v68 + 4);
        v69 = *(v68 + 5);
        v49 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if (v49)
        {
          goto LABEL_113;
        }

        if (v71 < v59)
        {
          goto LABEL_4;
        }

LABEL_82:
        v76 = v38 - 1;
        if (v38 - 1 >= v35)
        {
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
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
          goto LABEL_123;
        }

        if (!*v6)
        {
          goto LABEL_126;
        }

        v77 = *&v9[16 * v76 + 32];
        v7 = *&v9[16 * v38 + 40];
        sub_25E9B5D3C((*v6 + 8 * v77), (*v6 + 8 * *&v9[16 * v38 + 32]), (*v6 + 8 * v7), v37);
        if (v5)
        {
        }

        if (v7 < v77)
        {
          goto LABEL_104;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_25E9B603C(v9);
        }

        if (v76 >= *(v9 + 2))
        {
          goto LABEL_105;
        }

        v78 = &v9[16 * v76];
        *(v78 + 4) = v77;
        *(v78 + 5) = v7;
        result = sub_25E9B5FB0(v38);
        v35 = *(v9 + 2);
        if (v35 <= 1)
        {
          goto LABEL_4;
        }
      }

      v43 = &v9[16 * v35 + 32];
      v44 = *(v43 - 64);
      v45 = *(v43 - 56);
      v49 = __OFSUB__(v45, v44);
      v46 = v45 - v44;
      if (v49)
      {
        goto LABEL_106;
      }

      v48 = *(v43 - 48);
      v47 = *(v43 - 40);
      v49 = __OFSUB__(v47, v48);
      v41 = v47 - v48;
      v42 = v49;
      if (v49)
      {
        goto LABEL_107;
      }

      v50 = &v9[16 * v35];
      v52 = *v50;
      v51 = *(v50 + 1);
      v49 = __OFSUB__(v51, v52);
      v53 = v51 - v52;
      if (v49)
      {
        goto LABEL_109;
      }

      v49 = __OFADD__(v41, v53);
      v54 = v41 + v53;
      if (v49)
      {
        goto LABEL_112;
      }

      if (v54 >= v46)
      {
        v72 = &v9[16 * v38 + 32];
        v74 = *v72;
        v73 = *(v72 + 1);
        v49 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v49)
        {
          goto LABEL_116;
        }

        if (v41 < v75)
        {
          v38 = v35 - 2;
        }

        goto LABEL_82;
      }

      goto LABEL_61;
    }

    v5 = v32;
LABEL_4:
    v7 = v6[1];
    if (v8 >= v7)
    {
      goto LABEL_92;
    }
  }

  if (__OFADD__(v10, a4))
  {
    goto LABEL_122;
  }

  v23 = v8;
  if (v10 + a4 >= v22)
  {
    v24 = v6[1];
  }

  else
  {
    v24 = v10 + a4;
  }

  if (v24 < v10)
  {
LABEL_123:
    __break(1u);
    goto LABEL_124;
  }

  if (v23 == v24)
  {
    v8 = v23;
    goto LABEL_40;
  }

  v84 = v5;
  v25 = *v6;
  sub_25E9D7860();
  sub_25E9B6414();
  v26 = v25 + 8 * v23 - 8;
  v7 = v10 - v23;
  v89 = v24;
LABEL_33:
  v27 = v23;
  v28 = v7;
  v29 = v26;
  while (1)
  {
    result = sub_25E9D7F70();
    if ((result & 1) == 0)
    {
LABEL_32:
      v23 = v27 + 1;
      v26 += 8;
      --v7;
      v8 = v89;
      if (v23 != v89)
      {
        goto LABEL_33;
      }

      v5 = v84;
      v6 = a3;
      goto LABEL_40;
    }

    if (!v25)
    {
      break;
    }

    v30 = *v29;
    *v29 = v29[1];
    v29[1] = v30;
    --v29;
    if (__CFADD__(v28++, 1))
    {
      goto LABEL_32;
    }
  }

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
  return result;
}

uint64_t sub_25E9B5D3C(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 >= v12 >> 3)
  {
    if (a4 != __src || &__src[8 * v13] <= a4)
    {
      memmove(a4, __src, 8 * v13);
    }

    v14 = &v4[8 * v13];
    if (v11 >= 8 && v6 > v7)
    {
      sub_25E9D7860();
      sub_25E9B6414();
LABEL_27:
      v17 = v6 - 8;
      v5 -= 8;
      v18 = v14;
      do
      {
        v19 = v5 + 8;
        v18 -= 8;
        if (sub_25E9D7F70())
        {
          if (v19 != v6)
          {
            *v5 = *v17;
          }

          if (v14 <= v4 || (v6 -= 8, v17 <= v7))
          {
            v6 = v17;
            goto LABEL_38;
          }

          goto LABEL_27;
        }

        if (v19 != v14)
        {
          *v5 = *v18;
        }

        v5 -= 8;
        v14 = v18;
      }

      while (v18 > v4);
      v14 = v18;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 >= 8 && v6 < v5)
    {
      sub_25E9D7860();
      sub_25E9B6414();
      while ((sub_25E9D7F70() & 1) != 0)
      {
        v15 = v6;
        v16 = v7 == v6;
        v6 += 8;
        if (!v16)
        {
          goto LABEL_17;
        }

LABEL_18:
        v7 += 8;
        if (v4 >= v14 || v6 >= v5)
        {
          goto LABEL_20;
        }
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 8;
      if (v16)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v7 = *v15;
      goto LABEL_18;
    }

LABEL_20:
    v6 = v7;
  }

LABEL_38:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * ((v14 - v4) / 8));
  }

  return 1;
}

uint64_t sub_25E9B5FB0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_25E9B603C(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_25E9B6050(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_25E9D8290();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return MEMORY[0x2821FD130](0, v2, 0, a1);
}

uint64_t objectdestroy_47Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25E9B6234()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_25E9B63C0(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 16 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

unint64_t sub_25E9B6414()
{
  result = qword_27FD0DC40;
  if (!qword_27FD0DC40)
  {
    sub_25E9D7860();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD0DC40);
  }

  return result;
}