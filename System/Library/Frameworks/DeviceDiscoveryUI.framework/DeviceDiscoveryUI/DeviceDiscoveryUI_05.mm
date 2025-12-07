uint64_t sub_2380E0180()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  v3 = *(v2 + 80);
  v4 = *(v2 + 72);
  if (v0)
  {
    v5 = sub_2380E0434;
  }

  else
  {
    v5 = sub_2380E03D0;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_2380E02BC()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  v3 = *(v2 + 72);
  v4 = *(v2 + 80);
  if (v0)
  {
    v5 = sub_2380E0498;
  }

  else
  {
    v5 = sub_2380E03D0;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_2380E03D0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2380E0434()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2380E0498()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2380E04FC(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC560, &unk_23815C210);
  v2[8] = swift_task_alloc();
  v3 = sub_23815362C();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  sub_238154F8C();
  v2[13] = sub_238154F7C();
  v5 = sub_238154F3C();
  v2[14] = v5;
  v2[15] = v4;

  return MEMORY[0x2822009F8](sub_2380E0634, v5, v4);
}

uint64_t sub_2380E0634()
{
  v1 = v0[10];
  sub_2380712E4(v0[6], (v0 + 2), &qword_27DEEBF18, &qword_23815B098);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBF18, &qword_23815B098);
  v2 = swift_dynamicCast();
  v3 = *(v1 + 56);
  if (v2)
  {
    v4 = v0[12];
    v5 = v0[9];
    v6 = v0[10];
    v7 = v0[8];
    v3(v7, 0, 1, v5);
    (*(v6 + 32))(v4, v7, v5);
    v8 = swift_task_alloc();
    v0[16] = v8;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC530, &qword_23815E3B0);
    *v8 = v0;
    v8[1] = sub_2380E084C;
    v10 = v0[12];
  }

  else
  {
    v11 = v0[8];
    v3(v11, 1, 1, v0[9]);
    sub_238071284(v11, &qword_27DEEC560, &unk_23815C210);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC530, &qword_23815E3B0);
    sub_23815355C();
    v13 = swift_task_alloc();
    v0[18] = v13;
    *v13 = v0;
    v13[1] = sub_2380E0988;
    v10 = v0[11];
    v9 = v12;
  }

  return MEMORY[0x2821B6230](v10, v9);
}

uint64_t sub_2380E084C()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  v3 = *(v2 + 120);
  v4 = *(v2 + 112);
  if (v0)
  {
    v5 = sub_2380E0BC4;
  }

  else
  {
    v5 = sub_2380E0B20;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_2380E0988()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 72);
  *(*v1 + 152) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 120);
  v7 = *(v2 + 112);
  if (v0)
  {
    v8 = sub_2380E0CE8;
  }

  else
  {
    v8 = sub_2380E0C68;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_2380E0B20()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[10];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2380E0BC4()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[10];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2380E0C68()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2380E0CE8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2380E0D70()
{
  v0[2] = sub_238154F8C();
  v0[3] = sub_238154F7C();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_2380E0E20;

  return MEMORY[0x2821B6270]();
}

uint64_t sub_2380E0E20()
{
  *(*v1 + 40) = v0;

  v3 = sub_238154F3C();
  if (v0)
  {
    v4 = sub_2380E0FE0;
  }

  else
  {
    v4 = sub_2380E0F7C;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_2380E0F7C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2380E0FE0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2380E1044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a4;
  v4[14] = sub_238154F8C();
  v4[15] = sub_238154F7C();
  v8 = (*(a4 + 96) + **(a4 + 96));
  v6 = swift_task_alloc();
  v4[16] = v6;
  *v6 = v4;
  v6[1] = sub_2380E1150;

  return v8();
}

uint64_t sub_2380E1150(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 136) = a1;
  *(v3 + 144) = a2;

  v5 = sub_238154F3C();

  return MEMORY[0x2822009F8](sub_2380E1294, v5, v4);
}

uint64_t sub_2380E1294()
{
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(v0 + 104);

  v4 = *(v3 + 72);
  *(v0 + 32) = *(v3 + 88);
  *(v0 + 16) = v4;
  v5 = *(v3 + 72);
  *(v0 + 56) = *(v3 + 88);
  *(v0 + 40) = v5;
  *(v0 + 88) = v2;
  *(v0 + 96) = v1;
  sub_2380712E4(v0 + 16, v0 + 64, &qword_27DEEC408, &qword_23815E800);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC408, &qword_23815E800);
  sub_23815471C();
  sub_238087244(*(v0 + 40), *(v0 + 48));

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_2380E1384()
{
  *(v1 + 464) = type metadata accessor for _DDNodeDecoration.Kind(0);
  *(v1 + 472) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA48, &qword_23815BF00);
  *(v1 + 480) = swift_task_alloc();
  *(v1 + 488) = swift_task_alloc();
  type metadata accessor for TransferIDStatus(0);
  *(v1 + 496) = swift_task_alloc();
  v2 = sub_238152FBC();
  *(v1 + 504) = v2;
  *(v1 + 512) = *(v2 - 8);
  *(v1 + 520) = swift_task_alloc();
  v3 = type metadata accessor for _DDNodeDecoration(0);
  *(v1 + 528) = v3;
  *(v1 + 536) = *(v3 - 8);
  *(v1 + 544) = swift_task_alloc();
  *(v1 + 552) = swift_task_alloc();
  v4 = sub_2381527EC();
  *(v1 + 560) = v4;
  *(v1 + 568) = *(v4 - 8);
  *(v1 + 576) = swift_task_alloc();
  *(v1 + 584) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC478, &qword_23815BEE8);
  *(v1 + 592) = swift_task_alloc();
  *(v1 + 600) = swift_task_alloc();
  *(v1 + 608) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC470, &qword_23815BEE0);
  *(v1 + 616) = swift_task_alloc();
  v5 = sub_23815305C();
  *(v1 + 624) = v5;
  *(v1 + 632) = *(v5 - 8);
  *(v1 + 640) = swift_task_alloc();
  *(v1 + 648) = swift_task_alloc();
  v6 = sub_23815309C();
  *(v1 + 656) = v6;
  *(v1 + 664) = *(v6 - 8);
  *(v1 + 672) = swift_task_alloc();
  v7 = sub_2381526CC();
  *(v1 + 680) = v7;
  *(v1 + 688) = *(v7 - 8);
  *(v1 + 696) = swift_task_alloc();
  v8 = sub_23815334C();
  *(v1 + 704) = v8;
  *(v1 + 712) = *(v8 - 8);
  *(v1 + 720) = swift_task_alloc();
  v9 = sub_23815300C();
  *(v1 + 728) = v9;
  *(v1 + 736) = *(v9 - 8);
  *(v1 + 744) = swift_task_alloc();
  *(v1 + 752) = swift_task_alloc();
  *(v1 + 760) = swift_task_alloc();
  v10 = sub_2381536AC();
  *(v1 + 768) = v10;
  *(v1 + 776) = *(v10 - 8);
  *(v1 + 784) = swift_task_alloc();
  *(v1 + 792) = swift_task_alloc();
  *(v1 + 800) = swift_task_alloc();
  *(v1 + 808) = swift_task_alloc();
  *(v1 + 816) = swift_task_alloc();
  v11 = type metadata accessor for DecorationIdentifier(0);
  *(v1 + 824) = v11;
  *(v1 + 832) = *(v11 - 8);
  *(v1 + 840) = swift_task_alloc();
  *(v1 + 848) = swift_task_alloc();
  *(v1 + 856) = swift_task_alloc();
  *(v1 + 864) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC5C8, &qword_23815C2B8);
  *(v1 + 872) = swift_task_alloc();
  v12 = sub_23815313C();
  *(v1 + 880) = v12;
  *(v1 + 888) = *(v12 - 8);
  *(v1 + 896) = swift_task_alloc();
  *(v1 + 904) = swift_task_alloc();
  v13 = sub_2381530BC();
  *(v1 + 912) = v13;
  *(v1 + 920) = *(v13 - 8);
  *(v1 + 928) = swift_task_alloc();
  *(v1 + 936) = swift_task_alloc();
  v14 = sub_23815374C();
  *(v1 + 944) = v14;
  *(v1 + 952) = *(v14 - 8);
  *(v1 + 960) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC5D0, &qword_23815C2C0);
  *(v1 + 968) = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC5D8, &qword_23815C2C8);
  *(v1 + 976) = v15;
  *(v1 + 984) = *(v15 - 8);
  v16 = swift_task_alloc();
  *(v1 + 992) = v16;
  v17 = *(v0 + 8);
  *(v1 + 1000) = *v0;
  *(v1 + 1008) = v17;
  v18 = *(v0 + 96);
  *(v1 + 320) = *(v0 + 80);
  *(v1 + 336) = v18;
  *(v1 + 352) = *(v0 + 112);
  v19 = *(v0 + 32);
  *(v1 + 256) = *(v0 + 16);
  *(v1 + 272) = v19;
  v20 = *(v0 + 64);
  *(v1 + 288) = *(v0 + 48);
  *(v1 + 304) = v20;
  *(v1 + 1016) = sub_238154F8C();
  *(v1 + 1024) = sub_238154F7C();
  v21 = swift_task_alloc();
  *(v1 + 1032) = v21;
  *v21 = v1;
  v21[1] = sub_2380E1BC4;

  return MEMORY[0x2821B5F98](v16);
}

uint64_t sub_2380E1BC4()
{
  v2 = *v1;
  v2[130] = v0;

  v4 = sub_238154F3C();
  v2[131] = v4;
  v2[132] = v3;
  if (v0)
  {
    v5 = sub_2380E5BE8;
  }

  else
  {
    v5 = sub_2380E1D28;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_2380E1D28()
{
  if (qword_27DEEA0B0 != -1)
  {
    swift_once();
  }

  v1 = sub_23815293C();
  *(v0 + 1064) = __swift_project_value_buffer(v1, qword_27DEEC3F0);
  v2 = sub_23815291C();
  v3 = sub_2381550FC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_238060000, v2, v3, "Started tracking transfers", v4, 2u);
    MEMORY[0x2383EA8A0](v4, -1, -1);
  }

  *(v0 + 392) = sub_2381533BC();
  *(v0 + 1224) = *MEMORY[0x277D54908];
  v5 = MEMORY[0x277D84F98];
  *(v0 + 1228) = *MEMORY[0x277D54910];
  *(v0 + 1096) = v5;
  *(v0 + 1088) = v5;
  *(v0 + 1080) = v5;
  *(v0 + 1072) = v5;
  *(v0 + 1104) = sub_238154F7C();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC5E0, &qword_23815C2D0);
  v7 = sub_2380711D4(&qword_27DEEC5E8, &qword_27DEEC5E0, &qword_23815C2D0, MEMORY[0x277D54AF0]);
  v8 = swift_task_alloc();
  *(v0 + 1112) = v8;
  *v8 = v0;
  v8[1] = sub_2380E1F30;
  v9 = *(v0 + 968);

  return MEMORY[0x282200308](v9, v6, v7);
}

uint64_t sub_2380E1F30()
{
  v2 = *v1;
  *(*v1 + 1120) = v0;

  v3 = *(v2 + 1104);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_238154F3C();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_2380E3CCC;
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_238154F3C();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_2380E20C8;
  }

  return MEMORY[0x2822009F8](v7, v4, v6);
}

uint64_t sub_2380E20C8()
{

  v1 = *(v0 + 1056);
  v2 = *(v0 + 1048);

  return MEMORY[0x2822009F8](sub_2380E2130, v2, v1);
}

uint64_t sub_2380E2130()
{
  v2 = v0[121];
  v3 = v0[119];
  v4 = v0[118];
  if ((*(v3 + 48))(v2, 1, v4) == 1)
  {

    v5 = sub_23815291C();
    v6 = sub_2381550FC();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_238060000, v5, v6, "Stopping tracking transfers", v7, 2u);
      MEMORY[0x2383EA8A0](v7, -1, -1);
    }

    v8 = v0[124];
    v9 = v0[123];
    v10 = v0[122];

    (*(v9 + 8))(v8, v10);

    v11 = v0[1];

    return v11();
  }

  v246 = (v0 + 125);
  (*(v3 + 32))(v0[120], v2, v4);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  v0[51] = sub_2380D3060(v0[52]);
  v13 = sub_23815372C();
  v14 = 0;
  v0[141] = v13;
  v15 = *(v13 + 32);
  *(v0 + 1232) = v15;
  if (1 << v15 < 64)
  {
    v16 = ~(-1 << (1 << v15));
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & *(v13 + 64);
  v250 = v0[136];
  v18 = v0[135];
LABEL_11:
  v248 = v18;
  v0[142] = v18;
  if (!v17)
  {
    goto LABEL_13;
  }

  do
  {
    v19 = v0[141];
LABEL_17:
    v0[144] = v14;
    v0[143] = v17;
    v21 = v0[117];
    v22 = v0[116];
    v23 = v0[115];
    v24 = v0[114];
    v25 = v0[113];
    v26 = v0[112];
    v27 = v0;
    v28 = v0[111];
    v255 = v27[110];
    (*(v23 + 16))(v21, *(v19 + 56) + *(v23 + 72) * (__clz(__rbit64(v17)) | (v14 << 6)), v24);
    v29 = *(v23 + 32);
    v1 = v23 + 32;
    v29(v22, v21, v24);
    v30 = v25;
    sub_23815316C();
    sub_2381530AC();
    LOBYTE(v25) = sub_23815311C();
    v31 = *(v28 + 8);
    v31(v26, v255);
    v31(v30, v255);
    if (v25)
    {
      v32 = v27[109];
      v33 = v27[108];
      sub_23815303C();
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB950, &qword_23815A128);
      (*(*(v34 - 8) + 56))(v33, 0, 1, v34);
      sub_23815301C();
      sub_2380ED27C(v33, v32);
      sub_2380F198C(v33, type metadata accessor for DecorationIdentifier);
      sub_238071284(v32, &qword_27DEEC5C8, &qword_23815C2B8);
      sub_23815303C();
      v35 = v250;
      v1 = v27;
      if (!*(v250 + 16))
      {
        goto LABEL_84;
      }

      v36 = sub_2380E7070(v27[102]);
      if ((v37 & 1) == 0)
      {
        goto LABEL_84;
      }

      v38 = v27[102];
      v39 = v27[96];
      v40 = (*(v250 + 56) + 24 * v36);
      v234 = *v40;
      v239 = v40[1];
      v41 = v40[2];
      v42 = *(v27[97] + 8);

      v252 = v41;

      v256 = v42;
      v42(v38, v39);
      v43 = *(v1 + 664);
      v44 = *(v1 + 656);
      v45 = *(v1 + 648);
      v46 = *(v1 + 632);
      v47 = *(v1 + 624);
      v48 = *(v1 + 616);
      sub_23815306C();
      sub_23815304C();
      v49 = *(v46 + 8);
      v49(v45, v47);
      v50 = (*(v43 + 48))(v48, 1, v44);
      v0 = v1;
      v51 = *(v1 + 928);
      if (v50 == 1)
      {
        v222 = *(v1 + 920);
        v229 = *(v1 + 912);
        v52 = *(v1 + 808);
        v205 = *(v1 + 768);
        v53 = *(v1 + 640);
        v216 = *(v1 + 624);
        v54 = *(v1 + 576);
        v55 = *(v1 + 568);
        v210 = *(v1 + 560);
        v201 = *v246;
        sub_238071284(*(v1 + 616), &qword_27DEEC470, &qword_23815BEE0);
        v56 = *(v1 + 320);
        v57 = *(v1 + 336);
        v58 = *(v1 + 288);
        *(v1 + 80) = *(v1 + 304);
        *(v1 + 96) = v56;
        *(v1 + 112) = v57;
        v59 = *(v1 + 256);
        v60 = *(v1 + 272);
        *(v1 + 16) = v201;
        *(v1 + 32) = v59;
        *(v1 + 128) = *(v1 + 352);
        *(v1 + 48) = v60;
        *(v1 + 64) = v58;
        sub_23815306C();
        sub_23815301C();
        sub_23815303C();
        v1 = v239;
        sub_2380D78D0(v53, v252, v54, v234, v239, v52);

        v256(v52, v205);
        (*(v55 + 8))(v54, v210);
        v49(v53, v216);
        (*(v222 + 8))(v51, v229);
      }

      else
      {
        v61 = *(v1 + 800);
        v62 = *(v1 + 672);
        v63 = *(v1 + 664);
        v64 = *(v1 + 656);
        v65 = *(v1 + 616);

        (*(v63 + 32))(v62, v65, v64);
        sub_23815303C();
        v66 = sub_2380E7070(v61);
        if (v67)
        {
          v68 = v66;
          v35 = v248;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v1 + 424) = v248;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_2380EAA74();
            v35 = *(v1 + 424);
          }

          v70 = *(v1 + 800);
          v71 = *(v1 + 768);
          v256(*(v35 + 48) + *(*(v1 + 776) + 72) * v68, v71);

          sub_2380E9134(v68, v35);
          v256(v70, v71);
          v0 = v1;
          v248 = v35;
        }

        else
        {
          v256(*(v1 + 800), *(v1 + 768));
          v0 = v1;
        }

        v72 = v0[76];
        v73 = v0[75];
        sub_23815308C();
        sub_23815301C();
        sub_23815303C();
        sub_2380712E4(v72, v73, &qword_27DEEC478, &qword_23815BEE8);
        v74 = sub_23815307C();
        v75 = *(v74 - 8);
        v250 = v35;
        if ((*(v75 + 48))(v73, 1, v74) != 1)
        {
          v85 = *(v0 + 306);
          v86 = v0[74];
          sub_2380712E4(v0[75], v86, &qword_27DEEC478, &qword_23815BEE8);
          v87 = (*(v75 + 88))(v86, v74);
          if (v87 == v85)
          {
            v241 = v0[116];
            v203 = v0[115];
            v236 = v0[114];
            v200 = v0[99];
            v207 = v0[96];
            v88 = v0[83];
            v218 = v0[82];
            v224 = v0[84];
            v212 = v0[76];
            v231 = v0[75];
            v89 = v0[74];
            v90 = v0[73];
            v91 = v0[71];
            v92 = v0[65];
            v94 = v0[63];
            v93 = v0[64];
            v202 = v0[70];
            v199 = *v246;
            (*(v75 + 96))(v89, v74);
            (*(v93 + 32))(v92, v89, v94);
            *(v0 + 17) = v199;
            v95 = *(v0 + 18);
            *(v0 + 25) = *(v0 + 19);
            v96 = *(v0 + 21);
            *(v0 + 27) = *(v0 + 20);
            *(v0 + 29) = v96;
            v97 = *(v0 + 17);
            *(v0 + 19) = *(v0 + 16);
            *(v0 + 21) = v97;
            v0[31] = v0[44];
            *(v0 + 23) = v95;
            sub_2380DC65C(v92, v252, v90, v200);

            (*(v93 + 8))(v92, v94);
            v256(v200, v207);
            v98 = *(v91 + 8);
            v1 = v91 + 8;
            v98(v90, v202);
            sub_238071284(v212, &qword_27DEEC478, &qword_23815BEE8);
            (*(v88 + 8))(v224, v218);
            (*(v203 + 8))(v241, v236);
            sub_238071284(v231, &qword_27DEEC478, &qword_23815BEE8);
            goto LABEL_31;
          }

          if (v87 == *(v0 + 307))
          {
            v232 = v0[115];
            v237 = v0[114];
            v242 = v0[116];
            v99 = v0[99];
            v100 = *(v1 + 776);
            v101 = *(v1 + 768);
            v219 = *(v1 + 672);
            v102 = *(v1 + 664);
            v208 = *(v1 + 608);
            v213 = *(v1 + 656);
            v225 = *(v1 + 600);
            v103 = *(v1 + 584);
            v104 = *(v1 + 568);
            v204 = *(v1 + 560);
            v105 = *(v1 + 552);
            v106 = *(v1 + 528);
            swift_storeEnumTagMultiPayload();
            (*(v100 + 16))(v105 + *(v106 + 24), v99, v101);
            v0 = v1;
            *(v105 + *(v106 + 20)) = v252;
            sub_2380A9944(v103, v105);
            sub_2380F198C(v105, type metadata accessor for _DDNodeDecoration);
            v256(v99, v101);
            (*(v104 + 8))(v103, v204);
            sub_238071284(v208, &qword_27DEEC478, &qword_23815BEE8);
            (*(v102 + 8))(v219, v213);
            (*(v232 + 8))(v242, v237);
            sub_238071284(v225, &qword_27DEEC478, &qword_23815BEE8);
            goto LABEL_31;
          }

          (*(v75 + 8))(v0[74], v74);
        }

        v76 = v0[115];
        v235 = v0[114];
        v240 = v0[116];
        v77 = v0[99];
        v78 = *(v1 + 776);
        v79 = *(v1 + 768);
        v223 = *(v1 + 672);
        v230 = v76;
        v80 = *(v1 + 664);
        v217 = *(v1 + 656);
        v81 = *(v1 + 584);
        v82 = *(v1 + 568);
        v206 = *(v1 + 560);
        v211 = *(v1 + 608);
        v83 = *(v1 + 552);
        v84 = *(v1 + 528);
        sub_238071284(*(v1 + 600), &qword_27DEEC478, &qword_23815BEE8);
        strcpy(v83, "unknown error");
        *(v83 + 14) = -4864;
        swift_storeEnumTagMultiPayload();
        (*(v78 + 16))(v83 + *(v84 + 24), v77, v79);
        v0 = v1;
        *(v83 + *(v84 + 20)) = v252;
        v1 = v81;
        sub_2380A9944(v81, v83);
        sub_2380F198C(v83, type metadata accessor for _DDNodeDecoration);
        v256(v77, v79);
        (*(v82 + 8))(v81, v206);
        sub_238071284(v211, &qword_27DEEC478, &qword_23815BEE8);
        (*(v80 + 8))(v223, v217);
        (*(v230 + 8))(v240, v235);
      }

LABEL_31:
      v14 = v0[144];
      v17 = (v0[143] - 1) & v0[143];
      v18 = v248;
      goto LABEL_11;
    }

    v17 &= v17 - 1;
    (*(v27[115] + 8))(v27[116], v27[114]);
    v0 = v27;
  }

  while (v17);
  while (1)
  {
LABEL_13:
    v20 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_83;
    }

    v19 = v0[141];
    if (v20 >= (((1 << *(v0 + 1232)) + 63) >> 6))
    {
      break;
    }

    v17 = *(v19 + 8 * v20 + 64);
    ++v14;
    if (v17)
    {
      v14 = v20;
      goto LABEL_17;
    }
  }

  v1 = 0;
  v107 = v0[51];
  v110 = *(v107 + 56);
  v109 = v107 + 56;
  v108 = v110;
  v111 = -1;
  v257 = v0[51];
  v112 = -1 << *(v257 + 32);
  if (-v112 < 64)
  {
    v111 = ~(-1 << -v112);
  }

  v113 = v111 & v108;
  v114 = (63 - v112) >> 6;
  v247 = v0[137];
  v115 = v0[134];
  while (2)
  {
    v116 = v1;
    v253 = v115;
    if (!v113)
    {
      goto LABEL_42;
    }

LABEL_41:
    v1 = v116;
LABEL_45:
    v117 = v0[107];
    v118 = v0[106];
    v119 = v0[62];
    v120 = __clz(__rbit64(v113));
    v113 &= v113 - 1;
    v121 = *(v0[104] + 72);
    sub_2380F1924(*(v257 + 48) + v121 * (v120 | (v1 << 6)), v117, type metadata accessor for DecorationIdentifier);
    sub_2380F19EC(v117, v118, type metadata accessor for DecorationIdentifier);
    sub_2380F1924(v118, v119, type metadata accessor for TransferIDStatus);
    v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB950, &qword_23815A128);
    v123 = *(v122 - 8);
    if ((*(v123 + 48))(v119, 1, v122) != 1)
    {
      (*(v0[97] + 32))(v0[98], v0[62], v0[96]);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_238152A8C();

      if (*(v0[54] + 16))
      {
        v125 = v0[54];
        v126 = sub_2380E6DE4(v0[106]);
        if (v127)
        {
          sub_2380F1924(*(v125 + 56) + *(v0[67] + 72) * v126, v0[61], type metadata accessor for _DDNodeDecoration);
          v243 = 0;
        }

        else
        {
          v243 = 1;
        }
      }

      else
      {
        v243 = 1;
      }

      v128 = v0;
      v129 = v0[67];
      v130 = v128[66];
      v238 = v128;
      v131 = v128[61];

      v132 = v243;
      v244 = *(v129 + 56);
      v244(v131, v132, 1, v130);
      if ((*(v129 + 48))(v131, 1, v130))
      {
        v0 = v238;
        sub_238071284(v238[61], &qword_27DEEBA48, &qword_23815BF00);
LABEL_63:
        v233 = v0[106];
        v138 = v0[105];
        v214 = v0[103];
        v139 = v0[71];
        v220 = *(v214 + 20);
        v227 = v0[70];
        (*(v0[97] + 16))(v138, v0[98], v0[96]);
        (*(v123 + 56))(v138, 0, 1, v122);
        (*(v139 + 16))(v138 + *(v214 + 20), v233 + v220, v227);
        swift_getKeyPath();
        swift_getKeyPath();
        v228 = sub_238152A7C();
        v141 = v140;
        v142 = sub_2380E6DE4(v138);
        if (v143)
        {
          v144 = v142;
          v145 = swift_isUniquelyReferenced_nonNull_native();
          v0[57] = *v141;
          *v141 = 0x8000000000000000;
          if (!v145)
          {
            sub_2380E9728();
          }

          v221 = v0[105];
          v209 = v0[67];
          v215 = v0[60];
          v146 = v0[57];
          sub_2380F198C(*(v146 + 48) + v144 * v121, type metadata accessor for DecorationIdentifier);
          sub_2380F19EC(*(v146 + 56) + *(v209 + 72) * v144, v215, type metadata accessor for _DDNodeDecoration);
          sub_2380E8278(v144, v146);
          sub_2380F198C(v221, type metadata accessor for DecorationIdentifier);
          *v141 = v146;

          v147 = 0;
        }

        else
        {
          sub_2380F198C(v0[105], type metadata accessor for DecorationIdentifier);
          v147 = 1;
        }

        v148 = v0[60];
        v244(v148, v147, 1, v0[66]);
        sub_238071284(v148, &qword_27DEEBA48, &qword_23815BF00);
        v228();

        goto LABEL_69;
      }

      v133 = v238[68];
      v134 = v238[61];
      v226 = v238[59];
      sub_2380F1924(v134, v133, type metadata accessor for _DDNodeDecoration);
      sub_238071284(v134, &qword_27DEEBA48, &qword_23815BF00);
      sub_2380F1924(v133, v226, type metadata accessor for _DDNodeDecoration.Kind);
      sub_2380F198C(v133, type metadata accessor for _DDNodeDecoration);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v0 = v238;
      if (EnumCaseMultiPayload > 2)
      {
        if ((EnumCaseMultiPayload - 5) < 3)
        {
          goto LABEL_69;
        }

        if (EnumCaseMultiPayload == 3)
        {
          v136 = v238[59];
          v137 = type metadata accessor for _DDNodeAskRequestDecorationViewModel;
LABEL_62:
          sub_2380F198C(v136, v137);
          goto LABEL_63;
        }
      }

      else if (EnumCaseMultiPayload == 1)
      {
        sub_2380F198C(v238[59], type metadata accessor for _DDNodeDecoration.Kind);
LABEL_69:
        v149 = sub_2380E7070(v0[98]);
        if (v150)
        {
          v151 = v149;
          v115 = v253;
          v152 = swift_isUniquelyReferenced_nonNull_native();
          v0[56] = v253;
          if (!v152)
          {
            sub_2380EA7F4();
            v115 = v0[56];
          }

          (*(v0[97] + 8))(*(v115 + 48) + *(v0[97] + 72) * v151, v0[96]);

          sub_2380E8E14(v151, v115);
          v247 = v115;
        }

        else
        {
          v115 = v253;
        }

        v153 = sub_2380E7070(v0[98]);
        if (v154)
        {
          v254 = v115;
          v156 = v153;
          v157 = v248;
          v158 = swift_isUniquelyReferenced_nonNull_native();
          v0[55] = v248;
          if (!v158)
          {
            sub_2380EAA74();
            v157 = v0[55];
          }

          v249 = v0[98];
          v251 = v0[106];
          v159 = v0;
          v160 = v0[97];
          v245 = v159[96];
          v161 = *(v160 + 8);
          v161(*(v157 + 48) + *(v160 + 72) * v156);

          sub_2380E9134(v156, v157);
          (v161)(v249, v245);
          v0 = v159;
          sub_2380F198C(v251, type metadata accessor for DecorationIdentifier);
          v248 = v157;
          v250 = v157;
          v115 = v254;
        }

        else
        {
          v155 = v0[106];
          (*(v0[97] + 8))(v0[98], v0[96]);
          sub_2380F198C(v155, type metadata accessor for DecorationIdentifier);
        }

        continue;
      }

      v136 = v238[59];
      v137 = type metadata accessor for _DDNodeDecoration.Kind;
      goto LABEL_62;
    }

    break;
  }

  v124 = v0[62];
  sub_2380F198C(v0[106], type metadata accessor for DecorationIdentifier);
  sub_2380F198C(v124, type metadata accessor for TransferIDStatus);
  v116 = v1;
  v115 = v253;
  if (v113)
  {
    goto LABEL_41;
  }

LABEL_42:
  while (1)
  {
    v1 = v116 + 1;
    if (__OFADD__(v116, 1))
    {
      break;
    }

    if (v1 >= v114)
    {
      (*(v0[119] + 8))(v0[120], v0[118]);

      v0[137] = v247;
      v0[136] = v250;
      v0[135] = v248;
      v0[134] = v115;
      v0[138] = sub_238154F7C();
      v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC5E0, &qword_23815C2D0);
      v163 = sub_2380711D4(&qword_27DEEC5E8, &qword_27DEEC5E0, &qword_23815C2D0, MEMORY[0x277D54AF0]);
      v164 = swift_task_alloc();
      v0[139] = v164;
      *v164 = v0;
      v164[1] = sub_2380E1F30;
      v165 = v0[121];

      return MEMORY[0x282200308](v165, v162, v163);
    }

    v113 = *(v109 + 8 * v1);
    ++v116;
    if (v113)
    {
      goto LABEL_45;
    }
  }

LABEL_83:
  __break(1u);
LABEL_84:
  v166 = *(v1 + 816);
  v167 = *(v1 + 776);
  v168 = *(v1 + 768);
  v169 = *(v1 + 760);
  v170 = *(v1 + 736);
  v171 = *(v1 + 728);
  v172 = *(v167 + 8);
  *(v1 + 1160) = v172;
  *(v1 + 1168) = (v167 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v172(v166, v168);
  sub_23815302C();
  v173 = sub_238152FFC();
  v174 = *(v170 + 8);
  *(v1 + 1176) = v174;
  *(v1 + 1184) = (v170 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v174(v169, v171);
  if (v173)
  {
    if (*(v173 + 16))
    {
      v175 = *(v1 + 720);
      v176 = *(v1 + 712);
      v177 = *(v1 + 704);
      v178 = *(v1 + 696);
      v179 = *(v1 + 688);
      v180 = *(v1 + 680);
      (*(v176 + 16))(v175, v173 + ((*(v176 + 80) + 32) & ~*(v176 + 80)), v177);
      sub_23815333C();
      (*(v176 + 8))(v175, v177);
      v181 = sub_23815268C();
      v183 = v182;
      (*(v179 + 8))(v178, v180);
      v184 = *(v173 + 16);

      if (v184 == 1)
      {
        sub_23807CB28(73);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEED8F0, &qword_23815C2E0);
        v185 = swift_allocObject();
        *(v185 + 16) = xmmword_238157F20;
        *(v185 + 56) = MEMORY[0x277D837D0];
        *(v185 + 64) = sub_2380F1440();
        *(v185 + 32) = v181;
        *(v185 + 40) = v183;
      }

      else
      {
        sub_23807CB28(74);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEED8F0, &qword_23815C2E0);
        v193 = swift_allocObject();
        *(v193 + 16) = xmmword_238158810;
        *(v193 + 56) = MEMORY[0x277D837D0];
        v194 = sub_2380F1440();
        *(v193 + 32) = v181;
        *(v193 + 40) = v183;
        v195 = MEMORY[0x277D83C10];
        *(v193 + 96) = MEMORY[0x277D83B88];
        *(v193 + 104) = v195;
        *(v193 + 64) = v194;
        *(v193 + 72) = v184 - 1;
      }

      v191 = sub_238154C9C();
      v192 = v196;

      goto LABEL_97;
    }
  }

  v186 = *(v1 + 752);
  v187 = *(v1 + 728);
  sub_23815302C();
  v188 = sub_238152FCC();
  v190 = v189;
  v174(v186, v187);
  if (v190)
  {
    v191 = v188;
  }

  else
  {
    v191 = 0;
  }

  if (v190)
  {
    v192 = v190;
  }

  else
  {
    v192 = 0xE000000000000000;
  }

LABEL_97:
  *(v1 + 1200) = v191;
  *(v1 + 1192) = v192;

  sub_23815302C();
  v197 = swift_task_alloc();
  *(v1 + 1208) = v197;
  *v197 = v1;
  v197[1] = sub_2380E4194;
  v198 = *(v1 + 744);

  return sub_2380F0D2C(v198);
}

uint64_t sub_2380E3CCC()
{
  v0[50] = v0[140];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC000, &qword_23815B500);
  swift_willThrowTypedImpl();

  v1 = v0[132];
  v2 = v0[131];

  return MEMORY[0x2822009F8](sub_2380E3D74, v2, v1);
}

uint64_t sub_2380E3D74()
{
  v1 = v0[140];

  v2 = v1;
  v3 = sub_23815291C();
  v4 = sub_2381550DC();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[140];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_238060000, v3, v4, "Error while tracking transfers %@", v7, 0xCu);
    sub_238071284(v8, &unk_27DEECA10, &qword_2381588F0);
    MEMORY[0x2383EA8A0](v8, -1, -1);
    MEMORY[0x2383EA8A0](v7, -1, -1);
  }

  else
  {
  }

  v11 = sub_23815291C();
  v12 = sub_2381550FC();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_238060000, v11, v12, "Stopping tracking transfers", v13, 2u);
    MEMORY[0x2383EA8A0](v13, -1, -1);
  }

  v14 = v0[124];
  v15 = v0[123];
  v16 = v0[122];

  (*(v15 + 8))(v14, v16);

  v17 = v0[1];

  return v17();
}

uint64_t sub_2380E4194(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 1176);
  v4 = *(*v1 + 744);
  v5 = *(*v1 + 728);
  *(*v1 + 1216) = a1;

  v3(v4, v5);
  v6 = *(v2 + 1056);
  v7 = *(v2 + 1048);

  return MEMORY[0x2822009F8](sub_2380E4328, v7, v6);
}

uint64_t sub_2380E4328()
{
  v1 = v0[152];
  v2 = v0[150];
  v3 = v0[149];
  v4 = v0[145];
  v5 = v0[142];
  v6 = v0[101];
  v7 = v0[96];

  sub_23815303C();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2380C83D0(v2, v3, v1, v6, isUniquelyReferenced_nonNull_native);
  v4(v6, v7);
  v233 = (v0 + 125);
  v9 = v5;
  v10 = v0[150];
  v237 = v0[149];
  v243 = v0[152];
  v246 = v0[145];
  v249 = v0;
LABEL_2:
  v11 = v249[83];
  v12 = v249[82];
  v13 = v249[81];
  v14 = v249[79];
  v15 = v249[78];
  v16 = v249[77];
  sub_23815306C();
  sub_23815304C();
  v17 = *(v14 + 8);
  v17(v13, v15);
  v18 = (*(v11 + 48))(v16, 1, v12);
  v19 = v249;
  v20 = v249[116];
  if (v18 == 1)
  {
    v242 = v9;
    v222 = v249[115];
    v228 = v249[114];
    v21 = v249[101];
    v22 = v249[80];
    v216 = v249[78];
    v23 = v249[72];
    v24 = v249[71];
    v204 = v249[96];
    v210 = v249[70];
    v199 = *v233;
    sub_238071284(v249[77], &qword_27DEEC470, &qword_23815BEE0);
    v25 = *(v249 + 20);
    v26 = *(v249 + 21);
    v27 = *(v249 + 18);
    *(v249 + 5) = *(v249 + 19);
    *(v249 + 6) = v25;
    *(v249 + 7) = v26;
    v28 = *(v249 + 16);
    v29 = *(v249 + 17);
    *(v249 + 1) = v199;
    *(v249 + 2) = v28;
    v249[16] = v249[44];
    *(v249 + 3) = v29;
    *(v249 + 4) = v27;
    sub_23815306C();
    sub_23815301C();
    sub_23815303C();
    sub_2380D78D0(v22, v243, v23, v10, v237, v21);

    v246(v21, v204);
    (*(v24 + 8))(v23, v210);
    v17(v22, v216);
    (*(v222 + 8))(v20, v228);
  }

  else
  {
    v30 = v249[100];
    v31 = v249[84];
    v32 = v249[83];
    v33 = v249[82];
    v34 = v249[77];

    (*(v32 + 32))(v31, v34, v33);
    sub_23815303C();
    v35 = sub_2380E7070(v30);
    if (v36)
    {
      v37 = v35;
      v38 = swift_isUniquelyReferenced_nonNull_native();
      v249[53] = v9;
      if (!v38)
      {
        sub_2380EAA74();
        v9 = v249[53];
      }

      v39 = v249[100];
      v40 = v249[96];
      v246(*(v9 + 48) + *(v249[97] + 72) * v37, v40);

      sub_2380E9134(v37, v9);
      v246(v39, v40);
      v19 = v249;
    }

    else
    {
      v246(v249[100], v249[96]);
      v19 = v249;
    }

    v41 = v19[76];
    v42 = v19[75];
    sub_23815308C();
    sub_23815301C();
    sub_23815303C();
    sub_2380712E4(v41, v42, &qword_27DEEC478, &qword_23815BEE8);
    v43 = sub_23815307C();
    v44 = *(v43 - 8);
    v242 = v9;
    if ((*(v44 + 48))(v42, 1, v43) != 1)
    {
      v67 = *(v19 + 306);
      v68 = v19[74];
      sub_2380712E4(v19[75], v68, &qword_27DEEC478, &qword_23815BEE8);
      v69 = (*(v44 + 88))(v68, v43);
      if (v69 == v67)
      {
        v239 = v19[116];
        v200 = v19[115];
        v197 = v19[99];
        v218 = v19[84];
        v70 = v19[83];
        v212 = v19[82];
        v202 = v19[96];
        v206 = v19[76];
        v224 = v19[75];
        v230 = v19[114];
        v71 = v19[74];
        v72 = v19[73];
        v73 = v19[71];
        v74 = v19[65];
        v76 = v19[63];
        v75 = v19[64];
        v198 = v19[70];
        v196 = *v233;
        (*(v44 + 96))(v71, v43);
        (*(v75 + 32))(v74, v71, v76);
        *(v19 + 17) = v196;
        v77 = *(v19 + 18);
        *(v19 + 25) = *(v19 + 19);
        v78 = *(v19 + 21);
        *(v19 + 27) = *(v19 + 20);
        *(v19 + 29) = v78;
        v79 = *(v19 + 17);
        *(v19 + 19) = *(v19 + 16);
        *(v19 + 21) = v79;
        v19[31] = v19[44];
        *(v19 + 23) = v77;
        sub_2380DC65C(v74, v243, v72, v197);

        (*(v75 + 8))(v74, v76);
        v246(v197, v202);
        (*(v73 + 8))(v72, v198);
        sub_238071284(v206, &qword_27DEEC478, &qword_23815BEE8);
        (*(v70 + 8))(v218, v212);
        (*(v200 + 8))(v239, v230);
        sub_238071284(v224, &qword_27DEEC478, &qword_23815BEE8);
        goto LABEL_11;
      }

      if (v69 == *(v19 + 307))
      {
        v240 = v19[116];
        v80 = v19[115];
        v231 = v19[114];
        v81 = v19[99];
        v82 = v249[97];
        v83 = v249[96];
        v219 = v249[84];
        v84 = v249[83];
        v213 = v249[82];
        v207 = v249[76];
        v225 = v249[75];
        v85 = v249[73];
        v86 = v249[71];
        v203 = v249[70];
        v87 = v249[69];
        v88 = v249[66];
        swift_storeEnumTagMultiPayload();
        (*(v82 + 16))(v87 + *(v88 + 24), v81, v83);
        v19 = v249;
        *(v87 + *(v88 + 20)) = v243;
        sub_2380A9944(v85, v87);
        sub_2380F198C(v87, type metadata accessor for _DDNodeDecoration);
        v246(v81, v83);
        (*(v86 + 8))(v85, v203);
        sub_238071284(v207, &qword_27DEEC478, &qword_23815BEE8);
        (*(v84 + 8))(v219, v213);
        (*(v80 + 8))(v240, v231);
        sub_238071284(v225, &qword_27DEEC478, &qword_23815BEE8);
        goto LABEL_11;
      }

      (*(v44 + 8))(v19[74], v43);
    }

    v238 = v19[116];
    v223 = v19[115];
    v229 = v19[114];
    v45 = v19[99];
    v46 = v249[97];
    v47 = v249[96];
    v217 = v249[84];
    v48 = v249[83];
    v211 = v249[82];
    v205 = v249[76];
    v49 = v249[73];
    v50 = v249[71];
    v201 = v249[70];
    v51 = v249[69];
    v52 = v249[66];
    sub_238071284(v249[75], &qword_27DEEC478, &qword_23815BEE8);
    strcpy(v51, "unknown error");
    *(v51 + 14) = -4864;
    swift_storeEnumTagMultiPayload();
    (*(v46 + 16))(v51 + *(v52 + 24), v45, v47);
    v19 = v249;
    *(v51 + *(v52 + 20)) = v243;
    sub_2380A9944(v49, v51);
    sub_2380F198C(v51, type metadata accessor for _DDNodeDecoration);
    v246(v45, v47);
    (*(v50 + 8))(v49, v201);
    sub_238071284(v205, &qword_27DEEC478, &qword_23815BEE8);
    (*(v48 + 8))(v217, v211);
    (*(v223 + 8))(v238, v229);
  }

LABEL_11:
  v53 = v19[144];
  v54 = (v19[143] - 1) & v19[143];
  v19[142] = v242;
  if (!v54)
  {
    goto LABEL_13;
  }

  do
  {
    v55 = v19[141];
LABEL_17:
    v19[144] = v53;
    v19[143] = v54;
    v57 = v19[117];
    v58 = v19[116];
    v59 = v19[115];
    v60 = v19[114];
    v61 = v19[113];
    v62 = v19[112];
    v63 = v19;
    v64 = v19[111];
    v247 = v63[110];
    (*(v59 + 16))(v57, *(v55 + 56) + *(v59 + 72) * (__clz(__rbit64(v54)) | (v53 << 6)), v60);
    (*(v59 + 32))(v58, v57, v60);
    sub_23815316C();
    sub_2381530AC();
    v65 = v61;
    LOBYTE(v61) = sub_23815311C();
    v66 = *(v64 + 8);
    v66(v62, v247);
    v66(v65, v247);
    if (v61)
    {
      v89 = v63[109];
      v90 = v63[108];
      sub_23815303C();
      v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB950, &qword_23815A128);
      (*(*(v91 - 8) + 56))(v90, 0, 1, v91);
      sub_23815301C();
      sub_2380ED27C(v90, v89);
      sub_2380F198C(v90, type metadata accessor for DecorationIdentifier);
      sub_238071284(v89, &qword_27DEEC5C8, &qword_23815C2B8);
      sub_23815303C();
      v9 = v242;
      v19 = v63;
      if (!*(v242 + 16))
      {
        goto LABEL_75;
      }

      v92 = sub_2380E7070(v63[102]);
      if ((v93 & 1) == 0)
      {
        goto LABEL_75;
      }

      v94 = v63[102];
      v95 = v249[96];
      v96 = (*(v242 + 56) + 24 * v92);
      v10 = *v96;
      v97 = v96[2];
      v98 = *(v249[97] + 8);
      v237 = v96[1];

      v243 = v97;

      v246 = v98;
      v98(v94, v95);
      goto LABEL_2;
    }

    v54 &= v54 - 1;
    (*(v63[115] + 8))(v63[116], v63[114]);
    v19 = v63;
  }

  while (v54);
  while (1)
  {
LABEL_13:
    v56 = v53 + 1;
    if (__OFADD__(v53, 1))
    {
      __break(1u);
      goto LABEL_74;
    }

    v55 = v19[141];
    if (v56 >= (((1 << *(v19 + 1232)) + 63) >> 6))
    {
      break;
    }

    v54 = *(v55 + 8 * v56 + 64);
    ++v53;
    if (v54)
    {
      v53 = v56;
      goto LABEL_17;
    }
  }

  v99 = 0;
  v100 = v19[51];
  v103 = *(v100 + 56);
  v102 = v100 + 56;
  v101 = v103;
  v104 = -1;
  v248 = v19[51];
  v105 = -1 << *(v248 + 32);
  if (-v105 < 64)
  {
    v104 = ~(-1 << -v105);
  }

  v106 = v104 & v101;
  v107 = (63 - v105) >> 6;
  v241 = v19[137];
  v108 = v19[134];
LABEL_31:
  v109 = v99;
  v244 = v108;
  if (!v106)
  {
    goto LABEL_33;
  }

  do
  {
    v99 = v109;
LABEL_36:
    v110 = v19[107];
    v111 = v19[106];
    v112 = v19[62];
    v113 = __clz(__rbit64(v106));
    v106 &= v106 - 1;
    v114 = *(v19[104] + 72);
    sub_2380F1924(*(v248 + 48) + v114 * (v113 | (v99 << 6)), v110, type metadata accessor for DecorationIdentifier);
    sub_2380F19EC(v110, v111, type metadata accessor for DecorationIdentifier);
    sub_2380F1924(v111, v112, type metadata accessor for TransferIDStatus);
    v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB950, &qword_23815A128);
    v116 = *(v115 - 8);
    if ((*(v116 + 48))(v112, 1, v115) != 1)
    {
      (*(v19[97] + 32))(v19[98], v19[62], v19[96]);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_238152A8C();

      if (*(v19[54] + 16))
      {
        v118 = v19[54];
        v119 = sub_2380E6DE4(v19[106]);
        if (v120)
        {
          sub_2380F1924(*(v118 + 56) + *(v19[67] + 72) * v119, v19[61], type metadata accessor for _DDNodeDecoration);
          v234 = 0;
        }

        else
        {
          v234 = 1;
        }
      }

      else
      {
        v234 = 1;
      }

      v121 = v19;
      v122 = v19[67];
      v123 = v121[66];
      v124 = v121[61];

      v125 = v234;
      v235 = *(v122 + 56);
      v235(v124, v125, 1, v123);
      if ((*(v122 + 48))(v124, 1, v123))
      {
        v19 = v249;
        sub_238071284(v249[61], &qword_27DEEBA48, &qword_23815BF00);
LABEL_54:
        v227 = v19[106];
        v131 = v19[105];
        v132 = v19[71];
        v220 = v19[70];
        v208 = v19[103];
        v214 = *(v208 + 20);
        (*(v19[97] + 16))(v131, v19[98], v19[96]);
        (*(v116 + 56))(v131, 0, 1, v115);
        (*(v132 + 16))(v131 + *(v208 + 20), v227 + v214, v220);
        swift_getKeyPath();
        swift_getKeyPath();
        v221 = sub_238152A7C();
        v134 = v133;
        v135 = sub_2380E6DE4(v131);
        if (v136)
        {
          v137 = v135;
          v138 = swift_isUniquelyReferenced_nonNull_native();
          v19[57] = *v134;
          *v134 = 0x8000000000000000;
          if (!v138)
          {
            sub_2380E9728();
          }

          v215 = v19[105];
          v139 = v249[67];
          v209 = v249[60];
          v140 = v249[57];
          sub_2380F198C(*(v140 + 48) + v137 * v114, type metadata accessor for DecorationIdentifier);
          v141 = *(v139 + 72);
          v19 = v249;
          sub_2380F19EC(*(v140 + 56) + v141 * v137, v209, type metadata accessor for _DDNodeDecoration);
          sub_2380E8278(v137, v140);
          sub_2380F198C(v215, type metadata accessor for DecorationIdentifier);
          *v134 = v140;

          v142 = 0;
        }

        else
        {
          sub_2380F198C(v19[105], type metadata accessor for DecorationIdentifier);
          v142 = 1;
        }

        v143 = v19[60];
        v235(v143, v142, 1, v19[66]);
        sub_238071284(v143, &qword_27DEEBA48, &qword_23815BF00);
        v221();

        goto LABEL_60;
      }

      v126 = v249[68];
      v127 = v249[61];
      v226 = v249[59];
      sub_2380F1924(v127, v126, type metadata accessor for _DDNodeDecoration);
      sub_238071284(v127, &qword_27DEEBA48, &qword_23815BF00);
      sub_2380F1924(v126, v226, type metadata accessor for _DDNodeDecoration.Kind);
      sub_2380F198C(v126, type metadata accessor for _DDNodeDecoration);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v19 = v249;
      if (EnumCaseMultiPayload > 2)
      {
        if ((EnumCaseMultiPayload - 5) < 3)
        {
          goto LABEL_60;
        }

        if (EnumCaseMultiPayload == 3)
        {
          v129 = v249[59];
          v130 = type metadata accessor for _DDNodeAskRequestDecorationViewModel;
LABEL_53:
          sub_2380F198C(v129, v130);
          goto LABEL_54;
        }
      }

      else if (EnumCaseMultiPayload == 1)
      {
        sub_2380F198C(v249[59], type metadata accessor for _DDNodeDecoration.Kind);
LABEL_60:
        v144 = sub_2380E7070(v19[98]);
        if (v145)
        {
          v146 = v144;
          v108 = v244;
          v147 = swift_isUniquelyReferenced_nonNull_native();
          v19[56] = v244;
          if (!v147)
          {
            sub_2380EA7F4();
            v108 = v19[56];
          }

          (*(v19[97] + 8))(*(v108 + 48) + *(v19[97] + 72) * v146, v19[96]);

          sub_2380E8E14(v146, v108);
          v241 = v108;
        }

        else
        {
          v108 = v244;
        }

        v148 = sub_2380E7070(v19[98]);
        if (v149)
        {
          v245 = v108;
          v151 = v148;
          v152 = v242;
          v153 = swift_isUniquelyReferenced_nonNull_native();
          v19[55] = v242;
          if (!v153)
          {
            sub_2380EAA74();
            v152 = v19[55];
          }

          v236 = v19[106];
          v232 = v19[98];
          v154 = v249[97];
          v155 = v249[96];
          v156 = *(v154 + 8);
          v156(*(v152 + 48) + *(v154 + 72) * v151, v155);

          v242 = v152;
          sub_2380E9134(v151, v152);
          v156(v232, v155);
          v19 = v249;
          sub_2380F198C(v236, type metadata accessor for DecorationIdentifier);
          v108 = v245;
        }

        else
        {
          v150 = v19[106];
          (*(v19[97] + 8))(v19[98], v19[96]);
          sub_2380F198C(v150, type metadata accessor for DecorationIdentifier);
        }

        goto LABEL_31;
      }

      v129 = v249[59];
      v130 = type metadata accessor for _DDNodeDecoration.Kind;
      goto LABEL_53;
    }

    v117 = v19[62];
    sub_2380F198C(v19[106], type metadata accessor for DecorationIdentifier);
    sub_2380F198C(v117, type metadata accessor for TransferIDStatus);
    v109 = v99;
    v108 = v244;
  }

  while (v106);
LABEL_33:
  while (1)
  {
    v99 = v109 + 1;
    if (__OFADD__(v109, 1))
    {
      break;
    }

    if (v99 >= v107)
    {
      (*(v19[119] + 8))(v19[120], v19[118]);

      v19[137] = v241;
      v19[136] = v242;
      v19[135] = v242;
      v19[134] = v108;
      v19[138] = sub_238154F7C();
      v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC5E0, &qword_23815C2D0);
      v158 = sub_2380711D4(&qword_27DEEC5E8, &qword_27DEEC5E0, &qword_23815C2D0, MEMORY[0x277D54AF0]);
      v159 = swift_task_alloc();
      v19[139] = v159;
      *v159 = v19;
      v159[1] = sub_2380E1F30;
      v160 = v19[121];

      return MEMORY[0x282200308](v160, v157, v158);
    }

    v106 = *(v102 + 8 * v99);
    ++v109;
    if (v106)
    {
      goto LABEL_36;
    }
  }

LABEL_74:
  __break(1u);
LABEL_75:
  v161 = v19[102];
  v162 = v19[97];
  v163 = v19[96];
  v164 = v19[95];
  v165 = v19[92];
  v166 = v19[91];
  v167 = *(v162 + 8);
  v19[145] = v167;
  v19[146] = (v162 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v167(v161, v163);
  sub_23815302C();
  v168 = sub_238152FFC();
  v169 = *(v165 + 8);
  v19[147] = v169;
  v19[148] = (v165 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v169(v164, v166);
  if (!v168)
  {
    goto LABEL_80;
  }

  if (!*(v168 + 16))
  {

LABEL_80:
    v182 = v19[94];
    v183 = v19[91];
    sub_23815302C();
    v184 = sub_238152FCC();
    v186 = v185;
    v169(v182, v183);
    if (v186)
    {
      v187 = v184;
    }

    else
    {
      v187 = 0;
    }

    if (v186)
    {
      v188 = v186;
    }

    else
    {
      v188 = 0xE000000000000000;
    }

    goto LABEL_88;
  }

  v170 = v19[90];
  v171 = v19;
  v172 = v19[89];
  v173 = v171[88];
  v174 = v171[87];
  v175 = v171[86];
  v176 = v171[85];
  (*(v172 + 16))(v170, v168 + ((*(v172 + 80) + 32) & ~*(v172 + 80)), v173);
  sub_23815333C();
  (*(v172 + 8))(v170, v173);
  v177 = sub_23815268C();
  v179 = v178;
  (*(v175 + 8))(v174, v176);
  v180 = *(v168 + 16);

  if (v180 == 1)
  {
    sub_23807CB28(73);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEED8F0, &qword_23815C2E0);
    v181 = swift_allocObject();
    *(v181 + 16) = xmmword_238157F20;
    *(v181 + 56) = MEMORY[0x277D837D0];
    *(v181 + 64) = sub_2380F1440();
    *(v181 + 32) = v177;
    *(v181 + 40) = v179;
  }

  else
  {
    sub_23807CB28(74);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEED8F0, &qword_23815C2E0);
    v189 = swift_allocObject();
    *(v189 + 16) = xmmword_238158810;
    *(v189 + 56) = MEMORY[0x277D837D0];
    v190 = sub_2380F1440();
    *(v189 + 32) = v177;
    *(v189 + 40) = v179;
    v191 = MEMORY[0x277D83C10];
    *(v189 + 96) = MEMORY[0x277D83B88];
    *(v189 + 104) = v191;
    *(v189 + 64) = v190;
    *(v189 + 72) = v180 - 1;
  }

  v187 = sub_238154C9C();
  v188 = v192;

  v19 = v249;
LABEL_88:
  v19[150] = v187;
  v19[149] = v188;

  sub_23815302C();
  v193 = swift_task_alloc();
  v19[151] = v193;
  *v193 = v19;
  v193[1] = sub_2380E4194;
  v194 = v19[93];

  return sub_2380F0D2C(v194);
}

uint64_t sub_2380E5BE8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2380E5E68@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[5];
  v4 = v1[3];
  v29 = v1[4];
  v30 = v3;
  v5 = v1[5];
  v31 = v1[6];
  v6 = v1[1];
  v25 = *v1;
  v26 = v6;
  v7 = v1[3];
  v9 = *v1;
  v8 = v1[1];
  v27 = v1[2];
  v28 = v7;
  v10 = v1[6];
  v23[5] = v5;
  v23[6] = v10;
  v23[0] = v9;
  v23[1] = v8;
  v23[2] = v27;
  v32 = *(v1 + 14);
  v24 = *(v1 + 14);
  v23[3] = v4;
  v23[4] = v29;
  sub_2380D45B8(a1);
  v11 = swift_allocObject();
  v12 = v30;
  *(v11 + 80) = v29;
  *(v11 + 96) = v12;
  *(v11 + 112) = v31;
  *(v11 + 128) = v32;
  v13 = v26;
  *(v11 + 16) = v25;
  *(v11 + 32) = v13;
  v14 = v28;
  *(v11 + 48) = v27;
  *(v11 + 64) = v14;
  v15 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC450, &qword_23815BE98) + 36));
  sub_23815396C();
  sub_2380EEFF8(&v25, v22);
  sub_238154F9C();
  *v15 = &unk_23815C160;
  v15[1] = v11;
  v16 = swift_allocObject();
  v17 = v30;
  *(v16 + 80) = v29;
  *(v16 + 96) = v17;
  *(v16 + 112) = v31;
  *(v16 + 128) = v32;
  v18 = v26;
  *(v16 + 16) = v25;
  *(v16 + 32) = v18;
  v19 = v28;
  *(v16 + 48) = v27;
  *(v16 + 64) = v19;
  v20 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC458, &unk_23815BEA0) + 36));
  *v20 = 0;
  v20[1] = 0;
  v20[2] = sub_2380F1B08;
  v20[3] = v16;
  return sub_2380EEFF8(&v25, v23);
}

void sub_2380E6084()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA00, &qword_23815B4A0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v20 - v2;
  v4 = sub_238152F3C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_238152F1C();
  v8 = sub_238152EEC();
  (*(v5 + 8))(v7, v4);
  if (v8)
  {
    v9 = &v0[OBJC_IVAR____TtC17DeviceDiscoveryUIP33_1E333BE9CDEDD9CAE6FF0E7324E8D41C37PreviewImageFrameReportingCoordinator_imageViewFrame];
    if (!CGRectIsEmpty(*&v0[OBJC_IVAR____TtC17DeviceDiscoveryUIP33_1E333BE9CDEDD9CAE6FF0E7324E8D41C37PreviewImageFrameReportingCoordinator_imageViewFrame]))
    {
      if (qword_27DEEA0B0 != -1)
      {
        swift_once();
      }

      v10 = sub_23815293C();
      __swift_project_value_buffer(v10, qword_27DEEC3F0);
      v11 = v0;
      v12 = sub_23815291C();
      v13 = sub_2381550FC();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        *v14 = 138412290;
        v16 = [objc_opt_self() valueWithRect_];
        *(v14 + 4) = v16;
        *v15 = v16;
        _os_log_impl(&dword_238060000, v12, v13, "Updating presenter with animationRect %@", v14, 0xCu);
        sub_238071284(v15, &unk_27DEECA10, &qword_2381588F0);
        MEMORY[0x2383EA8A0](v15, -1, -1);
        MEMORY[0x2383EA8A0](v14, -1, -1);
      }

      v17 = sub_238154FBC();
      (*(*(v17 - 8) + 56))(v3, 1, 1, v17);
      v18 = swift_allocObject();
      v18[2] = 0;
      v18[3] = 0;
      v18[4] = v11;
      v19 = v11;
      sub_2380D2D4C(0, 0, v3, &unk_23815C130, v18);
    }
  }
}

uint64_t sub_2380E63B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x2822009F8](sub_2380E63D0, 0, 0);
}

uint64_t sub_2380E63D0()
{
  v1 = (*(v0 + 24) + OBJC_IVAR____TtC17DeviceDiscoveryUIP33_1E333BE9CDEDD9CAE6FF0E7324E8D41C37PreviewImageFrameReportingCoordinator_imageViewFrame);
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = swift_task_alloc();
  *(v0 + 32) = v6;
  *v6 = v0;
  v6[1] = sub_2380E64A4;
  v7.n128_u64[0] = v2;
  v8.n128_u64[0] = v3;
  v9.n128_u64[0] = v4;
  v10.n128_u64[0] = v5;

  return MEMORY[0x2821B5F78](v7, v8, v9, v10);
}

uint64_t sub_2380E64A4()
{
  *(*v1 + 40) = v0;

  if (v0)
  {

    v2 = sub_2380F1B18;
  }

  else
  {
    v2 = sub_2380E65C0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

id sub_2380E6618(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for PreviewImageFrameReportingCoordinator(0, a2);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_2380E6660(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  *a2 = v3;
}

uint64_t sub_2380E66E0(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_238152A9C();
}

uint64_t sub_2380E6764(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_238085D80(result, a2);
  }

  return result;
}

uint64_t sub_2380E6778(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2380E6870;

  return v6(a1);
}

uint64_t sub_2380E6870()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_2380E6968(uint64_t *a1)
{
  sub_23815568C();
  if (a1[1])
  {
    MEMORY[0x2383E9CD0](1);
    sub_238154C5C();
  }

  else
  {
    MEMORY[0x2383E9CD0](0);
  }

  MEMORY[0x2383E9CD0](a1[2]);
  MEMORY[0x2383E9CD0](a1[3]);
  MEMORY[0x2383E9CD0](a1[4]);
  type metadata accessor for _DDContactInfoCache.ContactInfo.Key(0);
  sub_238153A2C();
  sub_2380F15B0(&qword_27DEEC028, MEMORY[0x277CDFAA0], MEMORY[0x277CDFAA8]);
  sub_238154C4C();
  sub_2381537EC();
  sub_2380F15B0(&qword_27DEEC030, MEMORY[0x277CDF3E0], MEMORY[0x277CDF3F0]);
  sub_238154C4C();
  v2 = sub_2381556BC();

  return sub_2380E7144(a1, v2);
}

unint64_t sub_2380E6AE8(uint64_t a1)
{
  sub_2381527EC();
  v2 = MEMORY[0x277CC95F0];
  sub_2380F15B0(&qword_27DEEB990, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v3 = sub_238154C3C();
  return sub_2380E7AEC(a1, v3, MEMORY[0x277CC95F0], &qword_27DEEBA30, v2, MEMORY[0x277CC9610]);
}

unint64_t sub_2380E6BBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_23815568C();
  MEMORY[0x2383E9CD0](a1);
  MEMORY[0x2383E9CD0](a2);
  MEMORY[0x2383E9CD0](a3);
  v6 = sub_2381556BC();

  return sub_2380E7350(a1, a2, a3, v6);
}

unint64_t sub_2380E6C58(unint64_t a1, unint64_t a2)
{
  sub_23815568C();
  MEMORY[0x2383E9CE0](a1 >> 14);
  MEMORY[0x2383E9CE0](a2 >> 14);
  v4 = sub_2381556BC();

  return sub_2380E73D4(a1, a2, v4);
}

unint64_t sub_2380E6CD8(uint64_t a1, uint64_t a2)
{
  sub_23815568C();
  sub_238154C5C();
  v4 = sub_2381556BC();

  return sub_2380E745C(a1, a2, v4);
}

unint64_t sub_2380E6D50(uint64_t a1)
{
  sub_238154CCC();
  sub_23815568C();
  sub_238154C5C();
  v2 = sub_2381556BC();

  return sub_2380E7514(a1, v2);
}

unint64_t sub_2380E6DE4(uint64_t a1)
{
  v2 = sub_2381536AC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TransferIDStatus(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23815568C();
  sub_2380F1924(a1, v8, type metadata accessor for TransferIDStatus);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB950, &qword_23815A128);
  if ((*(*(v9 - 8) + 48))(v8, 1, v9) == 1)
  {
    MEMORY[0x2383E9CD0](0);
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    MEMORY[0x2383E9CD0](1);
    sub_2380F15B0(&qword_27DEEC0C0, MEMORY[0x277D54BD0], MEMORY[0x277D54BD8]);
    sub_238154C4C();
    (*(v3 + 8))(v5, v2);
  }

  type metadata accessor for DecorationIdentifier(0);
  sub_2381527EC();
  sub_2380F15B0(&qword_27DEEB990, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_238154C4C();
  v10 = sub_2381556BC();
  return sub_2380E7618(a1, v10);
}

unint64_t sub_2380E7070(uint64_t a1)
{
  sub_2381536AC();
  v2 = MEMORY[0x277D54BD0];
  sub_2380F15B0(&qword_27DEEC0C0, MEMORY[0x277D54BD0], MEMORY[0x277D54BD8]);
  v3 = sub_238154C3C();
  return sub_2380E7AEC(a1, v3, MEMORY[0x277D54BD0], &qword_27DEEC600, v2, MEMORY[0x277D54BE0]);
}

unint64_t sub_2380E7144(uint64_t *a1, uint64_t a2)
{
  v5 = type metadata accessor for _DDContactInfoCache.ContactInfo.Key(0);
  MEMORY[0x28223BE20](v5);
  v8 = (&v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = *a1;
    v13 = a1[1];
    v14 = *(v6 + 72);
    do
    {
      sub_2380F1924(*(v2 + 48) + v14 * v10, v8, type metadata accessor for _DDContactInfoCache.ContactInfo.Key);
      v15 = v8[1];
      if (v15)
      {
        if (!v13)
        {
          goto LABEL_4;
        }

        v16 = *v8 == v12 && v15 == v13;
        if (!v16 && (sub_2381555CC() & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      else if (v13)
      {
        goto LABEL_4;
      }

      if (v8[2] == a1[2] && v8[3] == a1[3] && v8[4] == a1[4] && (sub_238153A1C() & 1) != 0 && (sub_2381537DC() & 1) != 0)
      {
        sub_2380F198C(v8, type metadata accessor for _DDContactInfoCache.ContactInfo.Key);
        return v10;
      }

LABEL_4:
      sub_2380F198C(v8, type metadata accessor for _DDContactInfoCache.ContactInfo.Key);
      v10 = (v10 + 1) & v11;
    }

    while (((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_2380E7350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = -1 << *(v4 + 32);
  result = a4 & ~v6;
  if ((*(v4 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v8 = ~v6;
    do
    {
      v9 = (*(v4 + 48) + 24 * result);
      v10 = *v9;
      v11 = v9[1];
      v12 = v9[2];
      if (v10 == a1 && v11 == a2 && v12 == a3)
      {
        break;
      }

      result = (result + 1) & v8;
    }

    while (((*(v4 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_2380E73D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = (*(v3 + 48) + 16 * result);
      v9 = *v8 ^ a1;
      v10 = v8[1] ^ a2;
      if (v9 < 0x4000 && v10 < 0x4000)
      {
        break;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_2380E745C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_2381555CC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_2380E7514(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_238154CCC();
      v8 = v7;
      if (v6 == sub_238154CCC() && v8 == v9)
      {
        break;
      }

      v11 = sub_2381555CC();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_2380E7618(uint64_t a1, uint64_t a2)
{
  v36 = a1;
  v31 = sub_2381536AC();
  v4 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v29 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TransferIDStatus(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB998, &qword_23815A550);
  MEMORY[0x28223BE20](v34);
  v10 = &v27 - v9;
  v30 = type metadata accessor for DecorationIdentifier(0);
  MEMORY[0x28223BE20](v30);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = v2;
  v14 = -1 << *(v2 + 32);
  v15 = a2 & ~v14;
  v33 = v2 + 64;
  if ((*(v2 + 64 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v32 = ~v14;
    v28 = (v4 + 32);
    v16 = *(v11 + 72);
    v17 = (v4 + 8);
    while (1)
    {
      sub_2380F1924(*(v35 + 48) + v16 * v15, v13, type metadata accessor for DecorationIdentifier);
      v19 = *(v34 + 48);
      sub_2380F1924(v13, v10, type metadata accessor for TransferIDStatus);
      sub_2380F1924(v36, &v10[v19], type metadata accessor for TransferIDStatus);
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB950, &qword_23815A128);
      v21 = *(*(v20 - 8) + 48);
      if (v21(v10, 1, v20) == 1)
      {
        break;
      }

      sub_2380F1924(v10, v8, type metadata accessor for TransferIDStatus);
      if (v21(&v10[v19], 1, v20) == 1)
      {
        sub_2380F198C(v13, type metadata accessor for DecorationIdentifier);
        (*v17)(v8, v31);
LABEL_10:
        sub_238071284(v10, &qword_27DEEB998, &qword_23815A550);
        goto LABEL_4;
      }

      v22 = v29;
      v23 = v31;
      (*v28)(v29, &v10[v19], v31);
      v24 = sub_2381527AC();
      v25 = *v17;
      (*v17)(v22, v23);
      v25(v8, v23);
      if (v24)
      {
LABEL_3:
        sub_2380F198C(v10, type metadata accessor for TransferIDStatus);
        v18 = sub_2381527AC();
        sub_2380F198C(v13, type metadata accessor for DecorationIdentifier);
        if (v18)
        {
          return v15;
        }

        goto LABEL_4;
      }

      sub_2380F198C(v13, type metadata accessor for DecorationIdentifier);
      sub_2380F198C(v10, type metadata accessor for TransferIDStatus);
LABEL_4:
      v15 = (v15 + 1) & v32;
      if (((*(v33 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        return v15;
      }
    }

    if (v21(&v10[v19], 1, v20) == 1)
    {
      goto LABEL_3;
    }

    sub_2380F198C(v13, type metadata accessor for DecorationIdentifier);
    goto LABEL_10;
  }

  return v15;
}

unint64_t sub_2380E7AEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), const char *a6)
{
  v24 = a5;
  v25 = a6;
  v23 = a4;
  v21[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v21 - v10;
  v22 = v6;
  v12 = -1 << *(v6 + 32);
  v13 = a2 & ~v12;
  v21[0] = v6 + 64;
  if ((*(v6 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v17 = *(v9 + 16);
    v16 = v9 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    do
    {
      v15(v11, *(v22 + 48) + v18 * v13, v8);
      sub_2380F15B0(v23, v24, v25);
      v19 = sub_238154C7C();
      (*(v16 - 8))(v11, v8);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
    }

    while (((*(v21[0] + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  return v13;
}

uint64_t sub_2380E7C8C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_2380E6CD8(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v11 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_2380E95BC();
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + 8 * v6);
  sub_2380E80C8(v6, v8);
  *v3 = v8;
  return v9;
}

uint64_t sub_2380E7D24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_2380E6DE4(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_2380E9728();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for DecorationIdentifier(0);
    sub_2380F198C(v10 + *(*(v11 - 8) + 72) * v7, type metadata accessor for DecorationIdentifier);
    v12 = *(v9 + 56);
    v13 = type metadata accessor for _DDNodeDecoration(0);
    v20 = *(v13 - 8);
    sub_2380F19EC(v12 + *(v20 + 72) * v7, a2, type metadata accessor for _DDNodeDecoration);
    sub_2380E8278(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for _DDNodeDecoration(0);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_2380E7EF8@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v11 = v6;
  v13 = sub_2380E6AE8(a1);
  if (v14)
  {
    v15 = v13;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v6;
    v29 = *v11;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_2380E9CD4(a3, a4, a5);
      v17 = v29;
    }

    v18 = *(v17 + 48);
    v19 = sub_2381527EC();
    (*(*(v19 - 8) + 8))(v18 + *(*(v19 - 8) + 72) * v15, v19);
    v20 = *(v17 + 56);
    v21 = a2(0);
    v28 = *(v21 - 8);
    (*(v28 + 32))(a6, v20 + *(v28 + 72) * v15, v21);
    sub_2380E8AC4(v15, v17, a3);
    *v11 = v17;
    v22 = *(v28 + 56);
    v23 = a6;
    v24 = 0;
    v25 = v21;
  }

  else
  {
    v26 = a2(0);
    v22 = *(*(v26 - 8) + 56);
    v25 = v26;
    v23 = a6;
    v24 = 1;
  }

  return v22(v23, v24, 1, v25);
}

uint64_t sub_2380E80C8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_23815539C() + 1) & ~v5;
    do
    {
      sub_23815568C();

      sub_238154C5C();
      v9 = sub_2381556BC();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_2380E8278(int64_t a1, uint64_t a2)
{
  v42 = sub_2381536AC();
  v4 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v41 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TransferIDStatus(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DecorationIdentifier(0);
  v10 = *(v9 - 8);
  result = MEMORY[0x28223BE20](v9);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a2 + 64;
  v15 = -1 << *(a2 + 32);
  v16 = (a1 + 1) & ~v15;
  if ((*(a2 + 64 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v17 = ~v15;
    v43 = (sub_23815539C() + 1) & ~v15;
    v44 = v17;
    v18 = *(v10 + 72);
    v38 = (v4 + 8);
    v39 = (v4 + 32);
    v40 = v13;
    v45 = v18;
    do
    {
      v19 = v18 * v16;
      sub_2380F1924(*(a2 + 48) + v18 * v16, v13, type metadata accessor for DecorationIdentifier);
      sub_23815568C();
      sub_2380F1924(v13, v8, type metadata accessor for TransferIDStatus);
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB950, &qword_23815A128);
      if ((*(*(v20 - 8) + 48))(v8, 1, v20) == 1)
      {
        MEMORY[0x2383E9CD0](0);
      }

      else
      {
        v21 = a1;
        v22 = a2;
        v23 = v14;
        v24 = v9;
        v25 = v41;
        v26 = v42;
        (*v39)(v41, v8, v42);
        MEMORY[0x2383E9CD0](1);
        sub_2380F15B0(&qword_27DEEC0C0, MEMORY[0x277D54BD0], MEMORY[0x277D54BD8]);
        sub_238154C4C();
        v27 = v25;
        v9 = v24;
        v14 = v23;
        a2 = v22;
        a1 = v21;
        v13 = v40;
        (*v38)(v27, v26);
      }

      sub_2381527EC();
      sub_2380F15B0(&qword_27DEEB990, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      sub_238154C4C();
      v28 = sub_2381556BC();
      result = sub_2380F198C(v13, type metadata accessor for DecorationIdentifier);
      v29 = v44;
      v30 = v28 & v44;
      if (a1 >= v43)
      {
        v18 = v45;
        if (v30 < v43)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v18 = v45;
        if (v30 >= v43)
        {
          goto LABEL_13;
        }
      }

      if (a1 >= v30)
      {
LABEL_13:
        if (v18 * a1 < v19 || *(a2 + 48) + v18 * a1 >= (*(a2 + 48) + v19 + v18))
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v18 * a1 != v19)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v31 = *(a2 + 56);
        v32 = *(*(type metadata accessor for _DDNodeDecoration(0) - 8) + 72);
        v33 = v32 * a1;
        result = v31 + v32 * a1;
        if (v32 * a1 < (v32 * v16) || result >= v31 + v32 * v16 + v32)
        {
          result = swift_arrayInitWithTakeFrontToBack();
          a1 = v16;
          v18 = v45;
        }

        else
        {
          a1 = v16;
          v18 = v45;
          if (v33 != v32 * v16)
          {
            result = swift_arrayInitWithTakeBackToFront();
            a1 = v16;
          }
        }
      }

LABEL_4:
      v16 = (v16 + 1) & v29;
    }

    while (((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) != 0);
  }

  *(v14 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(a2 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v36;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_2380E87A4(int64_t a1, uint64_t a2)
{
  v40 = sub_2381527EC();
  v4 = *(v40 - 8);
  result = MEMORY[0x28223BE20](v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = sub_23815539C();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      sub_2380F15B0(&qword_27DEEB990, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v23 = sub_238154C3C();
      result = (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v27 = *(v41 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + a1);
          v30 = (v28 + v10);
          if (a1 != v10 || v29 >= v30 + 1)
          {
            *v29 = *v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }

  return result;
}

unint64_t sub_2380E8AC4(int64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v37 = a3;
  v5 = sub_2381527EC();
  v6 = *(v5 - 8);
  result = MEMORY[0x28223BE20](v5);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v42 = a2;
    v13 = ~v11;
    v14 = sub_23815539C();
    v15 = v13;
    a2 = v42;
    v41 = (v14 + 1) & v15;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v39 = v10;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v12;
      v21 = v15;
      v22 = v16;
      v40(v9, *(a2 + 48) + v18 * v12, v5);
      sub_2380F15B0(&qword_27DEEB990, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v23 = sub_238154C3C();
      result = (*v38)(v9, v5);
      v15 = v21;
      v24 = v23 & v21;
      if (a1 >= v41)
      {
        if (v24 >= v41 && a1 >= v24)
        {
LABEL_15:
          v16 = v22;
          if (v19 * a1 < v20 || *(v42 + 48) + v19 * a1 >= (*(v42 + 48) + v20 + v19))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v19 * a1 != v20)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v42;
          v27 = *(v42 + 56);
          v28 = *(*(v37(0) - 8) + 72);
          v29 = v28 * a1;
          result = v27 + v28 * a1;
          v30 = v28 * v12;
          v31 = v27 + v28 * v12 + v28;
          if (v29 < v30 || result >= v31)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v12;
            v10 = v39;
            v15 = v21;
          }

          else
          {
            a1 = v12;
            v33 = v29 == v30;
            v10 = v39;
            v15 = v21;
            if (!v33)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v15 = v21;
              a1 = v12;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v41 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v16 = v22;
      v10 = v39;
      a2 = v42;
LABEL_4:
      v12 = (v12 + 1) & v15;
      v18 = v19;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(a2 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v36;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_2380E8E14(int64_t a1, uint64_t a2)
{
  v40 = sub_2381536AC();
  v4 = *(v40 - 8);
  result = MEMORY[0x28223BE20](v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = sub_23815539C();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      sub_2380F15B0(&qword_27DEEC0C0, MEMORY[0x277D54BD0], MEMORY[0x277D54BD8]);
      v23 = sub_238154C3C();
      result = (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v27 = *(v41 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + 8 * a1);
          v30 = (v28 + 8 * v10);
          if (a1 != v10 || v29 >= v30 + 1)
          {
            *v29 = *v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }

  return result;
}

unint64_t sub_2380E9134(int64_t a1, uint64_t a2)
{
  v41 = sub_2381536AC();
  v4 = *(v41 - 8);
  result = MEMORY[0x28223BE20](v41);
  v40 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v42 = v6;
    v12 = sub_23815539C();
    v13 = v41;
    v6 = v42;
    v14 = v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v38 = (v12 + 1) & v11;
    v39 = v16;
    v17 = *(v15 + 56);
    v36 = (v15 - 8);
    v37 = a2 + 64;
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v40;
      v21 = v14;
      v22 = v15;
      v39(v40, *(v6 + 48) + v17 * v10, v13);
      sub_2380F15B0(&qword_27DEEC0C0, MEMORY[0x277D54BD0], MEMORY[0x277D54BD8]);
      v23 = sub_238154C3C();
      result = (*v36)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v42;
          v27 = *(v42 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v42;
            v17 = v18;
            v14 = v21;
            v8 = v37;
          }

          else
          {
            v8 = v37;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v42;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = v28 + 24 * a1;
          v30 = (v28 + 24 * v10);
          if (a1 != v10 || v29 >= v30 + 24)
          {
            v31 = *v30;
            *(v29 + 16) = *(v30 + 2);
            *v29 = v31;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v37;
      v17 = v18;
      v6 = v42;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v32 = *(v6 + 16);
  v33 = __OFSUB__(v32, 1);
  v34 = v32 - 1;
  if (v33)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v34;
    ++*(v6 + 36);
  }

  return result;
}

void sub_2380E9458()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEEC100, &qword_23815B648);
  v2 = *v0;
  v3 = sub_23815550C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = *(*(v2 + 56) + v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_2380E95BC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC0A0, &unk_23815B5E0);
  v2 = *v0;
  v3 = sub_23815550C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        v22 = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_2380E9728()
{
  v1 = v0;
  v2 = type metadata accessor for _DDNodeDecoration(0);
  v29 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DecorationIdentifier(0);
  v28 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEEC0B0, &unk_23815B5F0);
  v8 = *v0;
  v9 = sub_23815550C();
  v10 = v9;
  if (*(v8 + 16))
  {
    v27 = v1;
    v11 = (v9 + 64);
    v12 = v8 + 64;
    v13 = ((1 << *(v10 + 32)) + 63) >> 6;
    if (v10 != v8 || v11 >= v12 + 8 * v13)
    {
      memmove(v11, (v8 + 64), 8 * v13);
    }

    v14 = 0;
    *(v10 + 16) = *(v8 + 16);
    v15 = 1 << *(v8 + 32);
    v16 = *(v8 + 64);
    v17 = -1;
    if (v15 < 64)
    {
      v17 = ~(-1 << v15);
    }

    v18 = v17 & v16;
    v19 = (v15 + 63) >> 6;
    if ((v17 & v16) != 0)
    {
      do
      {
        v20 = __clz(__rbit64(v18));
        v18 &= v18 - 1;
LABEL_14:
        v23 = v20 | (v14 << 6);
        v24 = *(v28 + 72) * v23;
        sub_2380F1924(*(v8 + 48) + v24, v7, type metadata accessor for DecorationIdentifier);
        v25 = *(v29 + 72) * v23;
        sub_2380F1924(*(v8 + 56) + v25, v4, type metadata accessor for _DDNodeDecoration);
        sub_2380F19EC(v7, *(v10 + 48) + v24, type metadata accessor for DecorationIdentifier);
        sub_2380F19EC(v4, *(v10 + 56) + v25, type metadata accessor for _DDNodeDecoration);
      }

      while (v18);
    }

    v21 = v14;
    while (1)
    {
      v14 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v1 = v27;
        goto LABEL_18;
      }

      v22 = *(v12 + 8 * v14);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v18 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v10;
  }
}

void sub_2380E9A3C()
{
  v1 = v0;
  v31 = sub_2381527EC();
  v33 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC0A8, &qword_23815C170);
  v3 = *v0;
  v4 = sub_23815550C();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = v3 + 64;
    if (v5 != v3 || v6 >= &v7[8 * v8])
    {
      memmove(v6, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + v18);
        v24 = v32;
        (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + v18) = v23;
        v13 = v34;
      }

      while (v34);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v26;
        v5 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }
}

void sub_2380E9CD4(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v46 = a1(0);
  v49 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v45 = &v35 - v7;
  v44 = sub_2381527EC();
  v48 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v43 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v9 = *v3;
  v10 = sub_23815550C();
  v11 = v10;
  if (*(v9 + 16))
  {
    v12 = (v10 + 64);
    v13 = (v9 + 64);
    v14 = ((1 << *(v11 + 32)) + 63) >> 6;
    v35 = v6;
    v36 = v9 + 64;
    if (v11 != v9 || v12 >= &v13[8 * v14])
    {
      memmove(v12, v13, 8 * v14);
    }

    v15 = 0;
    v16 = *(v9 + 16);
    v47 = v11;
    *(v11 + 16) = v16;
    v17 = 1 << *(v9 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v9 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = v48 + 16;
    v41 = v20;
    v38 = v48 + 32;
    v39 = v49 + 16;
    v37 = v49 + 32;
    v42 = v9;
    v22 = v43;
    v21 = v44;
    if (v19)
    {
      do
      {
        v23 = __clz(__rbit64(v19));
        v50 = (v19 - 1) & v19;
LABEL_14:
        v26 = v23 | (v15 << 6);
        v27 = v48;
        v28 = *(v48 + 72) * v26;
        (*(v48 + 16))(v22, *(v9 + 48) + v28, v21);
        v29 = v49;
        v30 = *(v49 + 72) * v26;
        v31 = v45;
        v32 = v46;
        (*(v49 + 16))(v45, *(v9 + 56) + v30, v46);
        v33 = v47;
        (*(v27 + 32))(*(v47 + 48) + v28, v22, v21);
        v34 = *(v33 + 56);
        v9 = v42;
        (*(v29 + 32))(v34 + v30, v31, v32);
        v20 = v41;
        v19 = v50;
      }

      while (v50);
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v15 >= v20)
      {

        v6 = v35;
        v11 = v47;
        goto LABEL_18;
      }

      v25 = *(v36 + 8 * v15);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v50 = (v25 - 1) & v25;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v6 = v11;
  }
}

void sub_2380EA02C()
{
  v1 = v0;
  v2 = type metadata accessor for _DDContactInfoCache.ContactInfo.Key(0);
  v24 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC038, &qword_23815C100);
  v5 = *v0;
  v6 = sub_23815550C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v23 = v1;
    v8 = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || v8 >= v9 + 8 * v10)
    {
      memmove(v8, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = *(v24 + 72) * v20;
        sub_2380F1924(*(v5 + 48) + v21, v4, type metadata accessor for _DDContactInfoCache.ContactInfo.Key);
        v22 = *(*(v5 + 56) + 8 * v20);
        sub_2380F19EC(v4, *(v7 + 48) + v21, type metadata accessor for _DDContactInfoCache.ContactInfo.Key);
        *(*(v7 + 56) + 8 * v20) = v22;
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }
}

void sub_2380EA26C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC010, &qword_23815B520);
  v2 = *v0;
  v3 = sub_23815550C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(v2 + 48) + 24 * v17;
        v19 = *(v18 + 16);
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = *(v4 + 48) + 24 * v17;
        *v21 = *v18;
        *(v21 + 16) = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_2380EA3E0()
{
  v1 = v0;
  v2 = type metadata accessor for _DDContactInfoCache.ContactInfo.Key(0);
  v36 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v35 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC020, &qword_23815B580);
  v4 = *v0;
  v5 = sub_23815550C();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v32 = v1;
    v33 = v4 + 64;
    if (v6 != v4 || v7 >= &v8[8 * v9])
    {
      memmove(v7, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v37 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v34 = v4;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v38 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v35;
        v21 = *(v36 + 72) * v19;
        sub_2380F1924(*(v4 + 48) + v21, v35, type metadata accessor for _DDContactInfoCache.ContactInfo.Key);
        v22 = *(v4 + 56);
        v23 = 32 * v19;
        v24 = v22 + 32 * v19;
        v25 = *v24;
        v26 = *(v24 + 8);
        v27 = *(v24 + 16);
        v28 = *(v24 + 24);
        v29 = v37;
        sub_2380F19EC(v20, *(v37 + 48) + v21, type metadata accessor for _DDContactInfoCache.ContactInfo.Key);
        v30 = *(v29 + 56) + v23;
        v4 = v34;
        *v30 = v25;
        *(v30 + 8) = v26;
        *(v30 + 16) = v27;
        *(v30 + 24) = v28;
        sub_2380B3F10(v25, v26, v27, v28);
        v14 = v38;
      }

      while (v38);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v32;
        v6 = v37;
        goto LABEL_18;
      }

      v18 = *(v33 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v38 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }
}

void sub_2380EA66C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC008, &qword_23815B508);
  v2 = *v0;
  v3 = sub_23815550C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 24 * v17;
        v19 = *(v2 + 48) + 24 * v17;
        v20 = *(v19 + 16);
        v17 *= 16;
        v21 = *(v2 + 56) + v17;
        v22 = *v21;
        v23 = *(v21 + 8);
        v24 = *(v4 + 48) + v18;
        *v24 = *v19;
        *(v24 + 16) = v20;
        v25 = *(v4 + 56) + v17;
        *v25 = v22;
        *(v25 + 8) = v23;
        sub_2380B3E18(v22, v23);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_2380EA7F4()
{
  v1 = v0;
  v33 = sub_2381536AC();
  v35 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC5F8, &unk_23815C2E8);
  v3 = *v0;
  v4 = sub_23815550C();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || v6 >= &v7[8 * v8])
    {
      memmove(v6, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;

        v13 = v36;
      }

      while (v36);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }
}

void sub_2380EAA74()
{
  v1 = v0;
  v2 = sub_2381536AC();
  v3 = *(v2 - 8);
  v39 = v2;
  v40 = v3;
  MEMORY[0x28223BE20](v2);
  v38 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC0C8, &qword_23815B600);
  v5 = *v0;
  v6 = sub_23815550C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v33 = v1;
    v34 = v5 + 64;
    if (v7 != v5 || v8 >= &v9[8 * v10])
    {
      memmove(v8, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v41 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v35 = v40 + 32;
    v36 = v40 + 16;
    v37 = v5;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v43 = (v15 - 1) & v15;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v22 = v39;
        v21 = v40;
        v23 = *(v40 + 72) * v20;
        v24 = v38;
        (*(v40 + 16))(v38, *(v5 + 48) + v23, v39);
        v25 = *(v5 + 56);
        v26 = 24 * v20;
        v27 = (v25 + 24 * v20);
        v28 = v27[1];
        v42 = *v27;
        v29 = v27[2];
        v30 = v41;
        (*(v21 + 32))(*(v41 + 48) + v23, v24, v22);
        v31 = (*(v30 + 56) + v26);
        v5 = v37;
        *v31 = v42;
        v31[1] = v28;
        v31[2] = v29;

        v15 = v43;
      }

      while (v43);
    }

    v18 = v11;
    v7 = v41;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v33;
        goto LABEL_18;
      }

      v19 = *(v34 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v43 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }
}

void sub_2380EAD18(uint64_t a1)
{
  v2 = v1;
  v44 = sub_2381536AC();
  v3 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v43 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TransferIDStatus(0);
  MEMORY[0x28223BE20](v5 - 8);
  v47 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DecorationIdentifier(0);
  v45 = *(v7 - 8);
  v46 = v7;
  MEMORY[0x28223BE20](v7);
  v49 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC4F8, &unk_23815C180);
  v10 = sub_2381553EC();
  v11 = v10;
  if (*(v9 + 16))
  {
    v12 = 0;
    v13 = (v9 + 56);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 56);
    v17 = (v14 + 63) >> 6;
    v42 = (v3 + 32);
    v40 = v1;
    v41 = (v3 + 8);
    v18 = v10 + 56;
    v19 = v47;
    while (v16)
    {
      v21 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v24 = *(v9 + 48);
      v48 = *(v45 + 72);
      v25 = v49;
      sub_2380F19EC(v24 + v48 * (v21 | (v12 << 6)), v49, type metadata accessor for DecorationIdentifier);
      sub_23815568C();
      sub_2380F1924(v25, v19, type metadata accessor for TransferIDStatus);
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB950, &qword_23815A128);
      if ((*(*(v26 - 8) + 48))(v19, 1, v26) == 1)
      {
        MEMORY[0x2383E9CD0](0);
      }

      else
      {
        v27 = v9;
        v29 = v43;
        v28 = v44;
        (*v42)(v43, v47, v44);
        MEMORY[0x2383E9CD0](1);
        sub_2380F15B0(&qword_27DEEC0C0, MEMORY[0x277D54BD0], MEMORY[0x277D54BD8]);
        sub_238154C4C();
        v30 = v29;
        v9 = v27;
        v19 = v47;
        (*v41)(v30, v28);
      }

      sub_2381527EC();
      sub_2380F15B0(&qword_27DEEB990, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      sub_238154C4C();
      v31 = sub_2381556BC();
      v32 = -1 << *(v11 + 32);
      v33 = v31 & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v18 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v18 + 8 * v34);
          if (v38 != -1)
          {
            v20 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return;
      }

      v20 = __clz(__rbit64((-1 << v33) & ~*(v18 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      sub_2380F19EC(v49, *(v11 + 48) + v20 * v48, type metadata accessor for DecorationIdentifier);
      ++*(v11 + 16);
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v16 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    v39 = 1 << *(v9 + 32);
    if (v39 >= 64)
    {
      bzero(v13, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v39;
    }

    v2 = v40;
    *(v9 + 16) = 0;
  }

  *v2 = v11;
}

void sub_2380EB278(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC640, &unk_23815C4E0);
  v4 = sub_2381553EC();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_23815568C();
      sub_238154C5C();
      v21 = sub_2381556BC();
      v22 = -1 << *(v5 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero((v3 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

uint64_t sub_2380EB4D8(uint64_t a1, uint64_t a2)
{
  v48 = a1;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB998, &qword_23815A550);
  MEMORY[0x28223BE20](v62);
  v5 = &v45 - v4;
  v55 = type metadata accessor for DecorationIdentifier(0);
  v59 = *(v55 - 8);
  v6 = MEMORY[0x28223BE20](v55);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v46 = &v45 - v9;
  v10 = sub_2381536AC();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v51 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v45 - v14;
  v16 = type metadata accessor for TransferIDStatus(0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v61 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v45 - v19;
  v47 = v2;
  v63 = *v2;
  sub_23815568C();
  v64 = a2;
  sub_2380F1924(a2, v20, type metadata accessor for TransferIDStatus);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB950, &qword_23815A128);
  v22 = *(v21 - 8);
  v23 = *(v22 + 48);
  v65 = v21;
  v52 = v22 + 48;
  v66 = v23;
  v24 = (v23)(v20, 1);
  v56 = v11;
  if (v24 == 1)
  {
    MEMORY[0x2383E9CD0](0);
  }

  else
  {
    (*(v11 + 32))(v15, v20, v10);
    MEMORY[0x2383E9CD0](1);
    sub_2380F15B0(&qword_27DEEC0C0, MEMORY[0x277D54BD0], MEMORY[0x277D54BD8]);
    sub_238154C4C();
    (*(v11 + 8))(v15, v10);
  }

  v25 = *(v55 + 20);
  sub_2381527EC();
  sub_2380F15B0(&qword_27DEEB990, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v53 = v25;
  sub_238154C4C();
  v26 = sub_2381556BC();
  v27 = -1 << *(v63 + 32);
  v28 = v26 & ~v27;
  v60 = v63 + 56;
  if ((*(v63 + 56 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28))
  {
    v57 = v10;
    v58 = ~v27;
    v59 = *(v59 + 72);
    v49 = (v56 + 4);
    ++v56;
    v50 = v5;
    v29 = v61;
    do
    {
      v31 = v59 * v28;
      sub_2380F1924(*(v63 + 48) + v59 * v28, v8, type metadata accessor for DecorationIdentifier);
      v32 = *(v62 + 48);
      sub_2380F1924(v8, v5, type metadata accessor for TransferIDStatus);
      sub_2380F1924(v64, &v5[v32], type metadata accessor for TransferIDStatus);
      if (v66(v5, 1, v65) == 1)
      {
        if (v66(&v5[v32], 1, v65) != 1)
        {
          sub_2380F198C(v8, type metadata accessor for DecorationIdentifier);
LABEL_13:
          sub_238071284(v5, &qword_27DEEB998, &qword_23815A550);
          goto LABEL_7;
        }
      }

      else
      {
        sub_2380F1924(v5, v61, type metadata accessor for TransferIDStatus);
        if (v66(&v5[v32], 1, v65) == 1)
        {
          sub_2380F198C(v8, type metadata accessor for DecorationIdentifier);
          (*v56)(v61, v57);
          goto LABEL_13;
        }

        v33 = &v5[v32];
        v34 = v8;
        v35 = v51;
        v36 = v57;
        (*v49)(v51, v33, v57);
        v37 = sub_2381527AC();
        v54 = v31;
        v38 = *v56;
        v39 = v35;
        v8 = v34;
        v5 = v50;
        (*v56)(v39, v36);
        v38(v29, v36);
        v31 = v54;
        if ((v37 & 1) == 0)
        {
          sub_2380F198C(v8, type metadata accessor for DecorationIdentifier);
          sub_2380F198C(v5, type metadata accessor for TransferIDStatus);
          goto LABEL_7;
        }
      }

      sub_2380F198C(v5, type metadata accessor for TransferIDStatus);
      v30 = sub_2381527AC();
      sub_2380F198C(v8, type metadata accessor for DecorationIdentifier);
      if (v30)
      {
        sub_2380F198C(v64, type metadata accessor for DecorationIdentifier);
        sub_2380F1924(*(v63 + 48) + v31, v48, type metadata accessor for DecorationIdentifier);
        return 0;
      }

LABEL_7:
      v28 = (v28 + 1) & v58;
    }

    while (((*(v60 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) != 0);
  }

  v40 = v47;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v42 = v64;
  v43 = v46;
  sub_2380F1924(v64, v46, type metadata accessor for DecorationIdentifier);
  v67 = *v40;
  sub_2380EBE44(v43, v28, isUniquelyReferenced_nonNull_native);
  *v40 = v67;
  sub_2380F19EC(v42, v48, type metadata accessor for DecorationIdentifier);
  return 1;
}

uint64_t sub_2380EBCF4(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_23815568C();
  sub_238154C5C();
  v8 = sub_2381556BC();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_2381555CC() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_2380EC618(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_2380EBE44(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v65 = a1;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB998, &qword_23815A550);
  MEMORY[0x28223BE20](v64);
  v8 = &v50 - v7;
  v58 = type metadata accessor for DecorationIdentifier(0);
  v9 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_2381536AC();
  v12 = *(v59 - 8);
  v13 = MEMORY[0x28223BE20](v59);
  v54 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v50 - v15;
  v17 = type metadata accessor for TransferIDStatus(0);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v60 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v50 - v20;
  v22 = *(*v4 + 16);
  v23 = *(*v4 + 24);
  v50 = v4;
  v52 = v9;
  if (v23 <= v22 || (a3 & 1) == 0)
  {
    if (a3)
    {
      v24 = v16;
      v57 = v12;
      sub_2380EAD18(v22 + 1);
    }

    else
    {
      if (v23 > v22)
      {
        sub_2380EC798();
        goto LABEL_23;
      }

      v24 = v16;
      v57 = v12;
      sub_2380ECB00(v22 + 1);
    }

    v53 = *v4;
    sub_23815568C();
    sub_2380F1924(v65, v21, type metadata accessor for TransferIDStatus);
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB950, &qword_23815A128);
    v26 = *(*(v25 - 8) + 48);
    if (v26(v21, 1, v25) == 1)
    {
      MEMORY[0x2383E9CD0](0);
    }

    else
    {
      v27 = v57;
      v28 = *(v57 + 32);
      v29 = v24;
      v63 = v24;
      v30 = v59;
      v28(v29, v21, v59);
      MEMORY[0x2383E9CD0](1);
      sub_2380F15B0(&qword_27DEEC0C0, MEMORY[0x277D54BD0], MEMORY[0x277D54BD8]);
      v31 = v63;
      sub_238154C4C();
      v32 = v27;
      v9 = v52;
      (*(v32 + 8))(v31, v30);
    }

    v33 = *(v58 + 20);
    sub_2381527EC();
    sub_2380F15B0(&qword_27DEEB990, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    v55 = v33;
    sub_238154C4C();
    v34 = sub_2381556BC();
    v35 = -1 << *(v53 + 32);
    a2 = v34 & ~v35;
    v63 = (v53 + 56);
    if ((*(v53 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v62 = ~v35;
      v61 = *(v9 + 72);
      v51 = (v57 + 32);
      v57 += 8;
      v36 = v60;
      v37 = v53;
      while (1)
      {
        sub_2380F1924(*(v37 + 48) + v61 * a2, v11, type metadata accessor for DecorationIdentifier);
        v39 = *(v64 + 48);
        sub_2380F1924(v11, v8, type metadata accessor for TransferIDStatus);
        sub_2380F1924(v65, &v8[v39], type metadata accessor for TransferIDStatus);
        if (v26(v8, 1, v25) == 1)
        {
          break;
        }

        sub_2380F1924(v8, v36, type metadata accessor for TransferIDStatus);
        if (v26(&v8[v39], 1, v25) == 1)
        {
          sub_2380F198C(v11, type metadata accessor for DecorationIdentifier);
          (*v57)(v36, v59);
LABEL_20:
          sub_238071284(v8, &qword_27DEEB998, &qword_23815A550);
          goto LABEL_14;
        }

        v40 = v54;
        v41 = v59;
        (*v51)(v54, &v8[v39], v59);
        v56 = sub_2381527AC();
        v42 = *v57;
        v43 = v40;
        v36 = v60;
        (*v57)(v43, v41);
        v44 = v41;
        v37 = v53;
        v42(v36, v44);
        if (v56)
        {
LABEL_13:
          sub_2380F198C(v8, type metadata accessor for TransferIDStatus);
          v38 = sub_2381527AC();
          sub_2380F198C(v11, type metadata accessor for DecorationIdentifier);
          if (v38)
          {
            goto LABEL_26;
          }

          goto LABEL_14;
        }

        sub_2380F198C(v11, type metadata accessor for DecorationIdentifier);
        sub_2380F198C(v8, type metadata accessor for TransferIDStatus);
LABEL_14:
        a2 = (a2 + 1) & v62;
        if (((*&v63[(a2 >> 3) & 0xFFFFFFFFFFFFFF8] >> a2) & 1) == 0)
        {
          goto LABEL_23;
        }
      }

      if (v26(&v8[v39], 1, v25) == 1)
      {
        goto LABEL_13;
      }

      sub_2380F198C(v11, type metadata accessor for DecorationIdentifier);
      goto LABEL_20;
    }
  }

LABEL_23:
  v45 = *v50;
  *(*v50 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_2380F19EC(v65, *(v45 + 48) + *(v52 + 72) * a2, type metadata accessor for DecorationIdentifier);
  v47 = *(v45 + 16);
  v48 = __OFADD__(v47, 1);
  v49 = v47 + 1;
  if (v48)
  {
    __break(1u);
LABEL_26:
    result = sub_2381555EC();
    __break(1u);
  }

  else
  {
    *(v45 + 16) = v49;
  }

  return result;
}

void sub_2380EC618(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_2380EB278(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_2380EC9A4();
      goto LABEL_16;
    }

    sub_2380ED044(v8 + 1);
  }

  v10 = *v4;
  sub_23815568C();
  sub_238154C5C();
  v11 = sub_2381556BC();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (sub_2381555CC() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  sub_2381555EC();
  __break(1u);
}

void sub_2380EC798()
{
  v1 = v0;
  v2 = type metadata accessor for DecorationIdentifier(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC4F8, &unk_23815C180);
  v6 = *v0;
  v7 = sub_2381553DC();
  v8 = v7;
  if (*(v6 + 16))
  {
    v9 = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || v9 >= v10 + 8 * v11)
    {
      memmove(v9, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_2380F1924(*(v6 + 48) + v21, v5, type metadata accessor for DecorationIdentifier);
        sub_2380F19EC(v5, *(v8 + 48) + v21, type metadata accessor for DecorationIdentifier);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v8;
  }
}

void sub_2380EC9A4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC640, &unk_23815C4E0);
  v2 = *v0;
  v3 = sub_2381553DC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_2380ECB00(uint64_t a1)
{
  v2 = v1;
  v46 = sub_2381536AC();
  v3 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v45 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TransferIDStatus(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DecorationIdentifier(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v50 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC4F8, &unk_23815C180);
  v12 = sub_2381553EC();
  v13 = v11;
  if (*(v11 + 16))
  {
    v41 = v1;
    v14 = 0;
    v15 = v11 + 56;
    v16 = 1 << *(v11 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v11 + 56);
    v19 = (v16 + 63) >> 6;
    v42 = (v3 + 8);
    v43 = (v3 + 32);
    v20 = v12 + 56;
    v44 = v9;
    v47 = v13;
    while (v18)
    {
      v22 = __clz(__rbit64(v18));
      v49 = (v18 - 1) & v18;
LABEL_15:
      v25 = *(v13 + 48);
      v48 = *(v9 + 72);
      v26 = v50;
      sub_2380F1924(v25 + v48 * (v22 | (v14 << 6)), v50, type metadata accessor for DecorationIdentifier);
      sub_23815568C();
      sub_2380F1924(v26, v7, type metadata accessor for TransferIDStatus);
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB950, &qword_23815A128);
      if ((*(*(v27 - 8) + 48))(v7, 1, v27) == 1)
      {
        MEMORY[0x2383E9CD0](0);
      }

      else
      {
        v28 = v8;
        v29 = v7;
        v31 = v45;
        v30 = v46;
        (*v43)(v45, v29, v46);
        MEMORY[0x2383E9CD0](1);
        sub_2380F15B0(&qword_27DEEC0C0, MEMORY[0x277D54BD0], MEMORY[0x277D54BD8]);
        sub_238154C4C();
        v32 = v31;
        v7 = v29;
        v8 = v28;
        v9 = v44;
        (*v42)(v32, v30);
      }

      sub_2381527EC();
      sub_2380F15B0(&qword_27DEEB990, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      sub_238154C4C();
      v33 = sub_2381556BC();
      v34 = -1 << *(v12 + 32);
      v35 = v33 & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v20 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v20 + 8 * v36);
          if (v40 != -1)
          {
            v21 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_31;
      }

      v21 = __clz(__rbit64((-1 << v35) & ~*(v20 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      sub_2380F19EC(v50, *(v12 + 48) + v21 * v48, type metadata accessor for DecorationIdentifier);
      ++*(v12 + 16);
      v13 = v47;
      v18 = v49;
    }

    v23 = v14;
    while (1)
    {
      v14 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v2 = v41;
        goto LABEL_29;
      }

      v24 = *(v15 + 8 * v14);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v49 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v2 = v12;
  }
}

void sub_2380ED044(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC640, &unk_23815C4E0);
  v4 = sub_2381553EC();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v19 = *v17;
      v18 = v17[1];
      sub_23815568C();
      sub_238154C5C();
      v20 = sub_2381556BC();
      v21 = -1 << *(v5 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v19;
      v13[1] = v18;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

uint64_t sub_2380ED27C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB998, &qword_23815A550);
  MEMORY[0x28223BE20](v62);
  v5 = &v45 - v4;
  v57 = type metadata accessor for DecorationIdentifier(0);
  v48 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2381536AC();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v51 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v45 - v12;
  v14 = type metadata accessor for TransferIDStatus(0);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v61 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v45 - v17;
  v46 = v2;
  v63 = *v2;
  sub_23815568C();
  v64 = a1;
  sub_2380F1924(a1, v18, type metadata accessor for TransferIDStatus);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB950, &qword_23815A128);
  v20 = *(v19 - 8);
  v21 = *(v20 + 48);
  v65 = v19;
  v52 = v20 + 48;
  v66 = v21;
  v22 = (v21)(v18, 1);
  v55 = v9;
  v56 = v8;
  if (v22 == 1)
  {
    MEMORY[0x2383E9CD0](0);
  }

  else
  {
    (*(v9 + 32))(v13, v18, v8);
    MEMORY[0x2383E9CD0](1);
    sub_2380F15B0(&qword_27DEEC0C0, MEMORY[0x277D54BD0], MEMORY[0x277D54BD8]);
    sub_238154C4C();
    (*(v9 + 8))(v13, v8);
  }

  v23 = *(v57 + 20);
  sub_2381527EC();
  sub_2380F15B0(&qword_27DEEB990, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v53 = v23;
  sub_238154C4C();
  v24 = sub_2381556BC();
  v25 = -1 << *(v63 + 32);
  v26 = v24 & ~v25;
  v60 = v63 + 56;
  if (((*(v63 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
  {
    return (*(v48 + 56))(v47, 1, 1, v57);
  }

  v58 = ~v25;
  v59 = *(v48 + 72);
  v49 = (v55 + 4);
  ++v55;
  v50 = v5;
  while (1)
  {
    v28 = v59 * v26;
    sub_2380F1924(*(v63 + 48) + v59 * v26, v7, type metadata accessor for DecorationIdentifier);
    v29 = *(v62 + 48);
    sub_2380F1924(v7, v5, type metadata accessor for TransferIDStatus);
    sub_2380F1924(v64, &v5[v29], type metadata accessor for TransferIDStatus);
    if (v66(v5, 1, v65) == 1)
    {
      if (v66(&v5[v29], 1, v65) != 1)
      {
        sub_2380F198C(v7, type metadata accessor for DecorationIdentifier);
LABEL_13:
        sub_238071284(v5, &qword_27DEEB998, &qword_23815A550);
        goto LABEL_7;
      }
    }

    else
    {
      sub_2380F1924(v5, v61, type metadata accessor for TransferIDStatus);
      if (v66(&v5[v29], 1, v65) == 1)
      {
        sub_2380F198C(v7, type metadata accessor for DecorationIdentifier);
        (*v55)(v61, v56);
        goto LABEL_13;
      }

      v30 = *v49;
      v31 = &v5[v29];
      v32 = v7;
      v54 = v28;
      v33 = v61;
      v34 = v51;
      v35 = v56;
      v30(v51, v31, v56);
      v36 = sub_2381527AC();
      v37 = *v55;
      v38 = v34;
      v7 = v32;
      v5 = v50;
      (*v55)(v38, v35);
      v39 = v33;
      v28 = v54;
      v37(v39, v35);
      if ((v36 & 1) == 0)
      {
        sub_2380F198C(v7, type metadata accessor for DecorationIdentifier);
        sub_2380F198C(v5, type metadata accessor for TransferIDStatus);
        goto LABEL_7;
      }
    }

    sub_2380F198C(v5, type metadata accessor for TransferIDStatus);
    v27 = sub_2381527AC();
    sub_2380F198C(v7, type metadata accessor for DecorationIdentifier);
    if (v27)
    {
      break;
    }

LABEL_7:
    v26 = (v26 + 1) & v58;
    if (((*(v60 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
    {
      return (*(v48 + 56))(v47, 1, 1, v57);
    }
  }

  v41 = v46;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v43 = *v41;
  v67 = *v41;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_2380EC798();
    v43 = v67;
  }

  v44 = v47;
  sub_2380F19EC(*(v43 + 48) + v28, v47, type metadata accessor for DecorationIdentifier);
  sub_2380EDA44(v26);
  *v41 = v67;
  return (*(v48 + 56))(v44, 0, 1, v57);
}

void sub_2380EDA44(int64_t a1)
{
  v41 = sub_2381536AC();
  v3 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v40 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TransferIDStatus(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DecorationIdentifier(0);
  MEMORY[0x28223BE20](v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v1;
  v13 = *v1 + 56;
  v14 = -1 << *(*v1 + 32);
  v15 = (a1 + 1) & ~v14;
  if (((1 << v15) & *(v13 + 8 * (v15 >> 6))) != 0)
  {
    v43 = v3;
    v44 = v9;
    v16 = ~v14;

    v17 = sub_23815539C();
    if ((*(v13 + 8 * (v15 >> 6)) & (1 << v15)) != 0)
    {
      v18 = *(v44 + 72);
      v37 = (v43 + 8);
      v38 = (v43 + 32);
      v42 = (v17 + 1) & v16;
      v43 = v7;
      v39 = v11;
      v44 = v18;
      while (1)
      {
        v19 = v18 * v15;
        sub_2380F1924(*(v12 + 48) + v18 * v15, v11, type metadata accessor for DecorationIdentifier);
        sub_23815568C();
        sub_2380F1924(v11, v7, type metadata accessor for TransferIDStatus);
        v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB950, &qword_23815A128);
        if ((*(*(v20 - 8) + 48))(v7, 1, v20) == 1)
        {
          MEMORY[0x2383E9CD0](0);
        }

        else
        {
          v21 = v12;
          v22 = a1;
          v23 = v16;
          v24 = v8;
          v25 = v13;
          v26 = v40;
          v27 = v7;
          v28 = v41;
          (*v38)(v40, v27, v41);
          MEMORY[0x2383E9CD0](1);
          sub_2380F15B0(&qword_27DEEC0C0, MEMORY[0x277D54BD0], MEMORY[0x277D54BD8]);
          sub_238154C4C();
          v29 = v26;
          v13 = v25;
          v8 = v24;
          v16 = v23;
          a1 = v22;
          v12 = v21;
          v11 = v39;
          (*v37)(v29, v28);
        }

        sub_2381527EC();
        sub_2380F15B0(&qword_27DEEB990, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
        sub_238154C4C();
        v30 = sub_2381556BC();
        sub_2380F198C(v11, type metadata accessor for DecorationIdentifier);
        v31 = v30 & v16;
        if (a1 >= v42)
        {
          break;
        }

        v7 = v43;
        v18 = v44;
        if (v31 < v42)
        {
          goto LABEL_14;
        }

LABEL_15:
        v32 = v18 * a1;
        if (v18 * a1 < v19 || *(v12 + 48) + v18 * a1 >= (*(v12 + 48) + v19 + v18))
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {
          a1 = v15;
          if (v32 == v19)
          {
            goto LABEL_6;
          }

          swift_arrayInitWithTakeBackToFront();
        }

        v18 = v44;
        a1 = v15;
LABEL_6:
        v15 = (v15 + 1) & v16;
        if (((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
        {
          goto LABEL_19;
        }
      }

      v7 = v43;
      v18 = v44;
      if (v31 < v42)
      {
        goto LABEL_6;
      }

LABEL_14:
      if (a1 < v31)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }

LABEL_19:

    *(v13 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v13 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v33 = *(v12 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v12 + 16) = v35;
    ++*(v12 + 36);
  }
}

uint64_t sub_2380EDF54(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_2380EE048;

  return v5(v2 + 32);
}

uint64_t sub_2380EE048()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

unint64_t sub_2380EE15C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC648, &unk_23815C4F0);
    v3 = sub_23815552C();

    for (i = (a1 + 48); ; i += 2)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v13 = *i;

      result = sub_2380E6CD8(v5, v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      *(v3[7] + 16 * result) = v13;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2380EE278(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEEC100, &qword_23815B648);
  v3 = sub_23815552C();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v15 = *(a1 + 48);
  result = sub_2380E6C58(v4, v5);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = (a1 + 80);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v9 = (v3[6] + 16 * result);
    *v9 = v4;
    v9[1] = v5;
    *(v3[7] + 16 * result) = v15;
    v10 = v3[2];
    v11 = __OFADD__(v10, 1);
    v12 = v10 + 1;
    if (v11)
    {
      break;
    }

    v3[2] = v12;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v13 = v8 + 2;
    v4 = *(v8 - 2);
    v5 = *(v8 - 1);
    v15 = *v8;

    result = sub_2380E6C58(v4, v5);
    v8 = v13;
    if (v14)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_2380EE3A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC4C8, &qword_23815C108);
    v3 = sub_23815552C();
    v4 = a1 + 32;

    while (1)
    {
      sub_2380712E4(v4, &v11, &unk_27DEEA870, &qword_23815C110);
      v5 = v11;
      result = sub_2380E6D50(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_23807A440(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2380EE4C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC0A0, &unk_23815B5E0);
    v3 = sub_23815552C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_2380E6CD8(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2380EE5CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC628, &qword_23815C480);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEEC0B0, &unk_23815B5F0);
    v7 = sub_23815552C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_2380712E4(v9, v5, &qword_27DEEC628, &qword_23815C480);
      result = sub_2380E6DE4(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for DecorationIdentifier(0);
      sub_2380F19EC(v5, v14 + *(*(v15 - 8) + 72) * v13, type metadata accessor for DecorationIdentifier);
      v16 = v7[7];
      v17 = type metadata accessor for _DDNodeDecoration(0);
      result = sub_2380F19EC(&v5[v8], v16 + *(*(v17 - 8) + 72) * v13, type metadata accessor for _DDNodeDecoration);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2380EE7E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC620, &qword_23815C478);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC0A8, &qword_23815C170);
    v7 = sub_23815552C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_2380712E4(v9, v5, &qword_27DEEC620, &qword_23815C478);
      result = sub_2380E6AE8(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_2381527EC();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + v13) = v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2380EE9CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC618, &qword_23815C470);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEEC090, &qword_23815B5D8);
    v7 = sub_23815552C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_2380712E4(v9, v5, &qword_27DEEC618, &qword_23815C470);
      result = sub_2380E6AE8(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_2381527EC();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = sub_238152EBC();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v13, &v5[v8], v17);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2380EEBEC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC4D0, &qword_23815C118);
    v3 = sub_23815552C();
    v4 = a1 + 32;

    while (1)
    {
      sub_2380712E4(v4, &v13, &qword_27DEEC4D8, &qword_23815C120);
      v5 = v13;
      v6 = v14;
      result = sub_2380E6CD8(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_23807A440(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2380EED1C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC630, &unk_23815C488);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEEC110, &unk_23815B6B0);
    v7 = sub_23815552C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_2380712E4(v9, v5, &qword_27DEEC630, &unk_23815C488);
      result = sub_2380E6AE8(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_2381527EC();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = sub_23815364C();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v13, &v5[v8], v17);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_2380EEF64()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_238088780;

  return sub_2380D4DD0(v0 + 16);
}

uint64_t sub_2380EF074(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_238088780;

  return sub_2380D71C0(a1, v4, v5, v1 + 32);
}

uint64_t sub_2380EF128(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_238088780;

  return sub_2380D75B0(a1, v4, v5, v1 + 32);
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_2380EF27C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_2380EF2C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2380EF334()
{
  result = qword_27DEEC4B0;
  if (!qword_27DEEC4B0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEC458, &unk_23815BEA0);
    v4[0] = sub_2380EF3C0();
    v4[1] = MEMORY[0x277CE0790];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEC4B0);
  }

  return result;
}

unint64_t sub_2380EF3C0()
{
  result = qword_27DEEC4B8;
  if (!qword_27DEEC4B8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEC450, &qword_23815BE98);
    v4[0] = sub_2380F15B0(&qword_27DEEC4C0, type metadata accessor for _DDDevicePickerView, byte_23815F3C8);
    v4[1] = sub_2380F15B0(&qword_27DEED860, MEMORY[0x277CDD8B0], MEMORY[0x277CDD8A0]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEC4B8);
  }

  return result;
}

uint64_t sub_2380EF4AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_238088780;

  return sub_2380E63B0(a1, v4, v5, v6);
}

uint64_t sub_2380EF560(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_238088780;

  return sub_2380EDF54(a1, v4);
}

uint64_t sub_2380EF618()
{
  v1 = sub_2381536AC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  v5 = sub_2381527EC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);

  v9 = *(v0 + 96);
  if (v9 >> 60 != 15)
  {
    sub_238085CA0(*(v0 + 88), v9);
  }

  v10 = v3 | v7;
  v11 = (v3 + 136) & ~v3;
  v12 = (v11 + v4 + v7) & ~v7;

  (*(v2 + 8))(v0 + v11, v1);
  (*(v6 + 8))(v0 + v12, v5);

  return MEMORY[0x2821FE8E8](v0, v12 + v8, v10 | 7, v13);
}

double sub_2380EF7C8()
{
  v1 = *(sub_2381536AC() - 8);
  v2 = (*(v1 + 80) + 136) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_2381527EC() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_2380D8C30(v0 + 16, v0 + v2, v5);
}

uint64_t sub_2380EF898()
{
  v1 = sub_2381536AC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);

  v5 = *(v0 + 96);
  if (v5 >> 60 != 15)
  {
    sub_238085CA0(*(v0 + 88), v5);
  }

  v6 = (v3 + 136) & ~v3;

  (*(v2 + 8))(v0 + v6, v1);

  return MEMORY[0x2821FE8E8](v0, v6 + v4, v3 | 7, v7);
}

double sub_2380EF9BC()
{
  v1 = *(sub_2381536AC() - 8);
  v2 = v0 + ((*(v1 + 80) + 136) & ~*(v1 + 80));

  return sub_2380D9438(v0 + 16, v2);
}

uint64_t sub_2380EFA20()
{
  v1 = sub_2381536AC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  swift_unknownObjectRelease();

  v5 = *(v0 + 112);
  if (v5 >> 60 != 15)
  {
    sub_238085CA0(*(v0 + 104), v5);
  }

  v6 = (v3 + 152) & ~v3;

  (*(v2 + 8))(v0 + v6, v1);

  return MEMORY[0x2821FE8E8](v0, v6 + v4, v3 | 7, v7);
}

uint64_t sub_2380EFB4C(uint64_t a1)
{
  v4 = *(sub_2381536AC() - 8);
  v5 = (*(v4 + 80) + 152) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_238088780;

  return sub_2380D9660(a1, v6, v7, v1 + 32, v1 + v5);
}

uint64_t sub_2380EFC54(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC530, &qword_23815E3B0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_238088780;

  return sub_2380E04FC(a1, v1 + v5);
}

uint64_t sub_2380EFD3C()
{
  sub_23815361C();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_238088780;

  return sub_2380E0D70();
}

uint64_t sub_2380EFE50(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC568, &qword_23815C220) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_238088780;

  return sub_2380DFF50(a1, v1 + v5);
}

uint64_t objectdestroy_79Tm()
{
  v1 = sub_23815361C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7, v6);
}

uint64_t sub_2380EFFBC()
{
  sub_23815361C();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_238087150;

  return sub_2380E0D70();
}

uint64_t objectdestroy_75Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7, v8);
}

uint64_t sub_2380F0198()
{
  v1 = sub_2381536AC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  v5 = sub_2381527EC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  swift_unknownObjectRelease();

  v9 = *(v0 + 112);
  if (v9 >> 60 != 15)
  {
    sub_238085CA0(*(v0 + 104), v9);
  }

  v10 = v3 | v7;
  v11 = (v3 + 152) & ~v3;
  v12 = (v11 + v4 + v7) & ~v7;

  (*(v2 + 8))(v0 + v11, v1);
  (*(v6 + 8))(v0 + v12, v5);

  return MEMORY[0x2821FE8E8](v0, v12 + v8, v10 | 7, v13);
}

uint64_t sub_2380F0350(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_2381536AC() - 8);
  v6 = (*(v5 + 80) + 152) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_2381527EC() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_238088780;

  return sub_2380D8F2C(a1, v10, v11, v1 + 32, v1 + v6, v1 + v9);
}

uint64_t sub_2380F04A4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7, v1);
}

uint64_t sub_2380F04DC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_238088780;

  return sub_2380E6778(a1, v4);
}

uint64_t objectdestroy_8Tm()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 112);
  if (v1 >> 60 != 15)
  {
    sub_238085CA0(*(v0 + 104), v1);
  }

  return MEMORY[0x2821FE8E8](v0, 152, 7, v2);
}

uint64_t sub_2380F0634(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_238087150;

  return sub_2380E1044(a1, v4, v5, v1 + 32);
}

unint64_t sub_2380F06E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC638, &unk_23815C498);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v19 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC038, &qword_23815C100);
    v7 = sub_23815552C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_2380712E4(v9, v5, &qword_27DEEC638, &unk_23815C498);
      result = sub_2380E6968(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for _DDContactInfoCache.ContactInfo.Key(0);
      result = sub_2380F19EC(v5, v14 + *(*(v15 - 8) + 72) * v13, type metadata accessor for _DDContactInfoCache.ContactInfo.Key);
      *(v7[7] + 8 * v13) = *(v5 + v8);
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void *sub_2380F08C8(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC010, &qword_23815B520);
  v3 = sub_23815552C();
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  v8 = sub_2380E6BBC(v4, v5, v6);
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v10 = v8;
  result = v7;
  v12 = a1 + 11;
  while (1)
  {
    *(v3 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v10;
    v13 = (v3[6] + 24 * v10);
    *v13 = v4;
    v13[1] = v5;
    v13[2] = v6;
    *(v3[7] + 8 * v10) = result;
    v14 = v3[2];
    v15 = __OFADD__(v14, 1);
    v16 = v14 + 1;
    if (v15)
    {
      break;
    }

    v3[2] = v16;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v17 = v12 + 4;
    v4 = *(v12 - 3);
    v5 = *(v12 - 2);
    v6 = *(v12 - 1);
    v18 = *v12;

    v10 = sub_2380E6BBC(v4, v5, v6);
    v12 = v17;
    result = v18;
    if (v19)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_2380F09FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC0F8, &qword_23815B640);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC020, &qword_23815B580);
    v7 = sub_23815552C();
    v8 = v5 + *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_2380712E4(v9, v5, &qword_27DEEC0F8, &qword_23815B640);
      result = sub_2380E6968(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for _DDContactInfoCache.ContactInfo.Key(0);
      result = sub_2380F19EC(v5, v14 + *(*(v15 - 8) + 72) * v13, type metadata accessor for _DDContactInfoCache.ContactInfo.Key);
      v16 = v7[7] + 32 * v13;
      v17 = *(v8 + 2);
      v18 = v8[24];
      *v16 = *v8;
      *(v16 + 16) = v17;
      *(v16 + 24) = v18;
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2380F0BF8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC008, &qword_23815B508);
  v3 = sub_23815552C();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(a1 + 48);
  v6 = *(a1 + 56);
  v8 = *(a1 + 64);
  result = sub_2380E6BBC(v4, v5, v7);
  if (v10)
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x277D84F98];
  }

  v11 = (a1 + 104);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v12 = (v3[6] + 24 * result);
    *v12 = v4;
    v12[1] = v5;
    v12[2] = v7;
    v13 = v3[7] + 16 * result;
    *v13 = v6;
    *(v13 + 8) = v8 & 1;
    v14 = v3[2];
    v15 = __OFADD__(v14, 1);
    v16 = v14 + 1;
    if (v15)
    {
      break;
    }

    v3[2] = v16;
    sub_2380B3E18(v6, v8 & 1);
    if (!--v1)
    {
      return v3;
    }

    v4 = *(v11 - 4);
    v5 = *(v11 - 3);
    v7 = *(v11 - 2);
    v6 = *(v11 - 1);
    v8 = *v11;
    result = sub_2380E6BBC(v4, v5, v7);
    v11 += 40;
    if (v17)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2380F0D2C(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_23815334C();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = sub_2381526CC();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  sub_238154F8C();
  v1[9] = sub_238154F7C();
  v5 = sub_238154F3C();
  v1[10] = v5;
  v1[11] = v4;

  return MEMORY[0x2822009F8](sub_2380F0E7C, v5, v4);
}

uint64_t sub_2380F0E7C(uint64_t a1)
{
  v2 = sub_238152FDC();
  if (v3 >> 60 != 15)
  {
    v4 = v2;
    v5 = v3;
    v6 = objc_allocWithZone(MEMORY[0x277D755B8]);
    sub_238085D80(v4, v5);
    v7 = sub_23815274C();
    v8 = [v6 initWithData_];

    sub_238087244(v4, v5);
    if (v8)
    {

      v9 = sub_23815466C();
      sub_238087244(v4, v5);
LABEL_13:

      v25 = v1[1];

      return v25(v9);
    }

    sub_238087244(v4, v5);
  }

  v10 = sub_238152FFC();
  if (!v10)
  {

    v9 = sub_23815467C();
    goto LABEL_13;
  }

  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = v1[7];
    v13 = v1[4];
    v36 = MEMORY[0x277D84F90];
    v14 = v10;
    sub_2380FDB18(0, v11, 0);
    v15 = v36;
    v16 = *(v13 + 16);
    v13 += 16;
    v17 = v14 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v34 = *(v13 + 56);
    v35 = v16;
    v18 = (v13 - 8);
    do
    {
      v19 = v1[5];
      v20 = v1[3];
      v35(v19, v17, v20);
      sub_23815333C();
      (*v18)(v19, v20);
      v22 = *(v36 + 16);
      v21 = *(v36 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_2380FDB18((v21 > 1), v22 + 1, 1);
      }

      v23 = v1[8];
      v24 = v1[6];
      *(v36 + 16) = v22 + 1;
      (*(v12 + 32))(v36 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v22, v23, v24);
      v17 += v34;
      --v11;
    }

    while (v11);
  }

  else
  {

    v15 = MEMORY[0x277D84F90];
  }

  v1[12] = v15;
  sub_238154B0C();
  sub_238154AEC();
  v28 = v27;
  v30 = v29;
  v31 = swift_task_alloc();
  v1[13] = v31;
  *v31 = v1;
  v31[1] = sub_2380F11D0;
  v32.n128_u64[0] = v28;
  v33.n128_u64[0] = v30;

  return MEMORY[0x2821B6378](v15, v32, v33);
}

uint64_t sub_2380F11D0(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = v4[10];
    v6 = v4[11];
    v7 = sub_2380F13AC;
  }

  else
  {

    v4[14] = a1;
    v5 = v4[10];
    v6 = v4[11];
    v7 = sub_2380F1324;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_2380F1324()
{

  v1 = sub_23815466C();

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_2380F13AC()
{

  v1 = sub_23815467C();

  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_2380F1440()
{
  result = qword_27DEEC5F0;
  if (!qword_27DEEC5F0)
  {
    result = swift_getWitnessTable(MEMORY[0x277CC9C00], MEMORY[0x277D837D0], v0, v1);
    atomic_store(result, &qword_27DEEC5F0);
  }

  return result;
}

uint64_t objectdestroyTm()
{

  v1 = *(v0 + 96);
  if (v1 >> 60 != 15)
  {
    sub_238085CA0(*(v0 + 88), v1);
  }

  return MEMORY[0x2821FE8E8](v0, 136, 7, v2);
}

uint64_t sub_2380F15B0(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroy_39Tm_0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7, v1);
}

uint64_t sub_2380F163C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_238088780;

  return sub_238107958(a1, v4, v5, v6);
}

uint64_t sub_2380F16F4(uint64_t a1)
{
  v4 = *(sub_2381527EC() - 8);
  v5 = (*(v4 + 80) + 160) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_238088780;

  return sub_2380D61DC(a1, v6, v7, v8, (v1 + 5), v1 + v5);
}

uint64_t objectdestroy_168Tm()
{
  v1 = sub_2381527EC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  swift_unknownObjectRelease();

  v5 = *(v0 + 120);
  if (v5 >> 60 != 15)
  {
    sub_238085CA0(*(v0 + 112), v5);
  }

  v6 = (v3 + 160) & ~v3;

  (*(v2 + 8))(v0 + v6, v1);

  return MEMORY[0x2821FE8E8](v0, v6 + v4, v3 | 7, v7);
}

uint64_t sub_2380F1924(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2380F198C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2380F19EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2380F1A54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEEBB90, &unk_23815A7A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

BOOL _DDNodeDecoration.Kind.isInProgress.getter()
{
  v1 = type metadata accessor for _DDNodeDecoration.Kind(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2380F1BF8(v0, v3);
  v4 = (swift_getEnumCaseMultiPayload() & 0xFFFFFFFD) == 0;
  sub_2380F1D64(v3, type metadata accessor for _DDNodeDecoration.Kind);
  return v4;
}

uint64_t sub_2380F1BF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _DDNodeDecoration.Kind(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _DDNodeDecoration.isFinal.getter()
{
  v1 = type metadata accessor for _DDNodeDecoration.Kind(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2380F1BF8(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = 1;
  v6 = type metadata accessor for _DDNodeDecoration.Kind;
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload == 1)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if ((EnumCaseMultiPayload - 5) >= 3)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v5 = 0;
      v6 = type metadata accessor for _DDNodeAskRequestDecorationViewModel;
LABEL_8:
      sub_2380F1D64(v3, v6);
      return v5;
    }

LABEL_7:
    v5 = 0;
    v6 = type metadata accessor for _DDNodeDecoration.Kind;
    goto LABEL_8;
  }

  return v5;
}

uint64_t sub_2380F1D64(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _DDNodeDecoration.init(_:preview:transferID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_2380F3210(a1, a4, type metadata accessor for _DDNodeDecoration.Kind);
  v7 = type metadata accessor for _DDNodeDecoration(0);
  *(a4 + *(v7 + 20)) = a2;
  v8 = *(v7 + 24);
  v9 = sub_2381536AC();
  v10 = *(*(v9 - 8) + 32);

  return v10(a4 + v8, a3, v9);
}

uint64_t _DDNodeDecoration.Action.init(_:operation:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t _DDNodeDecoration.Action.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t _DDNodeDecoration.Action.operation.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t static _DDNodeDecoration.Action.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_2381555CC();
  }
}

uint64_t sub_2380F1F28(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_2381555CC();
  }
}

uint64_t static _DDNodeDecoration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((_s17DeviceDiscoveryUI17_DDNodeDecorationV4KindO2eeoiySbAE_AEtFZ_0(a1, a2) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for _DDNodeDecoration(0);
  if ((sub_2381546AC() & 1) == 0)
  {
    return 0;
  }

  return sub_2381527AC();
}

uint64_t sub_2380F1FE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((static _DDNodeDecoration.Kind.== infix(_:_:)(a1, a2) & 1) == 0 || (sub_2381546AC() & 1) == 0)
  {
    return 0;
  }

  return sub_2381527AC();
}

uint64_t _s17DeviceDiscoveryUI17_DDNodeDecorationV4KindO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _DDNodeAskRequestDecorationViewModel(0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v98 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v83 - v7;
  v9 = type metadata accessor for _DDNodeDecoration.Kind(0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = (&v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v83 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v83 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = (&v83 - v19);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC6A8, &unk_23815C610);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v24 = &v83 - v23;
  v25 = &v83 + *(v22 + 56) - v23;
  sub_2380F1BF8(a1, &v83 - v23);
  sub_2380F1BF8(a2, v25);
  v26 = v24;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      v28 = v24;
      if (EnumCaseMultiPayload == 6)
      {
        if (swift_getEnumCaseMultiPayload() != 6)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v67 = swift_getEnumCaseMultiPayload();
        if (v67 != 7)
        {
          goto LABEL_41;
        }
      }
    }

    else
    {
      v28 = v24;
      if (EnumCaseMultiPayload == 4)
      {
        sub_2380F1BF8(v24, v12);
        v30 = v12[1];
        v96 = *v12;
        v97 = v30;
        v31 = v12[2];
        v32 = v12[3];
        v33 = v12[5];
        v94 = v12[4];
        v95 = v31;
        v98 = v33;
        v35 = v12[7];
        v34 = v12[8];
        v36 = v12[9];
        v37 = v12[10];
        v38 = v12[11];

        if (swift_getEnumCaseMultiPayload() != 4)
        {
          sub_2380F3120(v34, v36, v37, v38);

          v28 = v26;
          goto LABEL_41;
        }

        v86 = v32;
        v88 = v34;
        v89 = v36;
        v90 = v37;
        v91 = v38;
        v92 = v35;
        v40 = *v25;
        v39 = *(v25 + 1);
        v42 = *(v25 + 2);
        v41 = *(v25 + 3);
        v43 = *(v25 + 5);
        v85 = *(v25 + 4);
        v93 = v43;
        v44 = *(v25 + 8);
        v87 = *(v25 + 7);
        v46 = *(v25 + 9);
        v45 = *(v25 + 10);
        v47 = *(v25 + 11);

        if (v96 == v40 && v97 == v39)
        {
        }

        else
        {
          v49 = sub_2381555CC();

          if ((v49 & 1) == 0)
          {
            sub_2380F3120(v88, v89, v90, v91);
            sub_2380F3120(v44, v46, v45, v47);

LABEL_73:

LABEL_74:
            v65 = 0;
            goto LABEL_75;
          }
        }

        v96 = v45;
        v97 = v44;
        v84 = v47;
        v69 = v91;
        if (v95 == v42 && v86 == v41)
        {

          v70 = v98;
          v71 = v89;
        }

        else
        {
          v72 = sub_2381555CC();

          v70 = v98;
          v71 = v89;
          if ((v72 & 1) == 0)
          {
            sub_2380F3120(v88, v89, v90, v69);
            sub_2380F3120(v97, v46, v96, v84);

LABEL_72:

            goto LABEL_73;
          }
        }

        v73 = v90;
        v74 = v46;
        if (v94 == v85 && v70 == v93 || (sub_2381555CC() & 1) != 0)
        {
          v98 = v26;
          v75 = v88;
          if (v71)
          {
            if (v46)
            {
              if (v88 == v97 && v71 == v46)
              {
                v65 = 1;
                v76 = v97;
              }

              else
              {
                v76 = v97;
                v65 = sub_2381555CC();
              }

              sub_2380F31CC(v75, v71, v73, v69);
              v79 = v74;
              v97 = v74;
              v80 = v96;
              v81 = v84;
              sub_2380F31CC(v76, v79, v96, v84);
              sub_2380F31CC(v75, v71, v73, v69);

              v82 = v97;
              sub_2380F3120(v76, v97, v80, v81);
              sub_2380F3120(v75, v71, v73, v69);
              sub_2380F3120(v76, v82, v80, v81);

              sub_2380F3120(v75, v71, v73, v69);
              v26 = v98;
              goto LABEL_75;
            }

            sub_2380F31CC(v88, v71, v73, v69);
          }

          else
          {

            if (!v46)
            {
              sub_2380F3120(v75, 0, v73, v69);
              v65 = 1;
              v26 = v98;
LABEL_75:
              sub_2380F1D64(v26, type metadata accessor for _DDNodeDecoration.Kind);
              return v65 & 1;
            }
          }

          sub_2380F3120(v75, v71, v73, v69);
          sub_2380F3120(v97, v46, v96, v84);
          v65 = 0;
          v26 = v98;
          goto LABEL_75;
        }

        sub_2380F3120(v88, v71, v73, v69);
        sub_2380F3120(v97, v46, v96, v84);

        goto LABEL_72;
      }

      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_41;
      }
    }

    v29 = v28;
    goto LABEL_37;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      v28 = v24;
      sub_2380F1BF8(v24, v15);
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        sub_2380F1D64(v15, type metadata accessor for _DDNodeAskRequestDecorationViewModel);
        goto LABEL_41;
      }

      sub_2380F3210(v15, v8, type metadata accessor for _DDNodeAskRequestDecorationViewModel);
      v66 = v98;
      sub_2380F3210(v25, v98, type metadata accessor for _DDNodeAskRequestDecorationViewModel);
      v65 = _s17DeviceDiscoveryUI36_DDNodeAskRequestDecorationViewModelV2eeoiySbAC_ACtFZ_0(v8, v66);
      sub_2380F1D64(v66, type metadata accessor for _DDNodeAskRequestDecorationViewModel);
      sub_2380F1D64(v8, type metadata accessor for _DDNodeAskRequestDecorationViewModel);
      goto LABEL_49;
    }

    sub_2380F1BF8(v24, v18);
    v50 = *v18;
    v51 = *(v18 + 1);
    v52 = v18[16];
    v53 = v18[48];
    v55 = *(v18 + 7);
    v54 = *(v18 + 8);
    v97 = *(v18 + 5);
    v98 = v54;
    v28 = v24;

    if (swift_getEnumCaseMultiPayload() != 2)
    {
      goto LABEL_41;
    }

    v56 = *v25;
    v57 = *(v25 + 1);
    v58 = v25[16];
    v59 = *(v25 + 5);
    LODWORD(v96) = v25[48];
    v60 = *(v25 + 7);
    v61 = *(v25 + 8);
    v94 = v59;
    v95 = v60;

    if (v50 != v56)
    {
      goto LABEL_74;
    }

    if (v52)
    {
      if (!v58)
      {
        goto LABEL_74;
      }
    }

    else
    {
      if (v51 == v57)
      {
        v77 = v58;
      }

      else
      {
        v77 = 1;
      }

      if (v77)
      {
        goto LABEL_74;
      }
    }

    if (v53)
    {
      v78 = v96;
      if (v55 != v95)
      {
        v78 = 0;
      }

      if (v78 != 1)
      {
        goto LABEL_74;
      }
    }

    else
    {
      v65 = 0;
      if ((v96 & 1) != 0 || v97 != v94 || v55 != v95)
      {
        goto LABEL_75;
      }
    }

    v65 = v98 == v61;
    goto LABEL_75;
  }

  if (EnumCaseMultiPayload)
  {
    v28 = v24;
    sub_2380F1BF8(v24, v20);
    v63 = *v20;
    v62 = v20[1];
    if (swift_getEnumCaseMultiPayload() != 1)
    {

      goto LABEL_41;
    }

    if (v63 == *v25 && v62 == *(v25 + 1))
    {
      v65 = 1;
    }

    else
    {
      v65 = sub_2381555CC();
    }

LABEL_49:
    sub_2380F1D64(v28, type metadata accessor for _DDNodeDecoration.Kind);
    return v65 & 1;
  }

  v28 = v24;
  if (swift_getEnumCaseMultiPayload())
  {
LABEL_41:
    sub_2380F3164(v28);
    v65 = 0;
    return v65 & 1;
  }

  sub_2380F1D64(v25, type metadata accessor for _DDNodeDecoration.Kind);
  v29 = v24;
LABEL_37:
  sub_2380F1D64(v29, type metadata accessor for _DDNodeDecoration.Kind);
  v65 = 1;
  return v65 & 1;
}

uint64_t sub_2380F29FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for _DDNodeDecoration.Kind(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_2381536AC();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_2380F2B34(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for _DDNodeDecoration.Kind(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = sub_2381536AC();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_2380F2C58(uint64_t a1)
{
  result = type metadata accessor for _DDNodeDecoration.Kind(319);
  if (v2 <= 0x3F)
  {
    result = sub_2381536AC();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_2380F2CF4(uint64_t a1)
{
  sub_2380F2F6C(319, &qword_27DEEC670, sub_238067930);
  if (v1 <= 0x3F)
  {
    sub_2380F2DD0(319);
    if (v2 <= 0x3F)
    {
      sub_2380F2F6C(319, &qword_27DEEC690, type metadata accessor for _DDNodeAskRequestDecorationViewModel);
      if (v3 <= 0x3F)
      {
        sub_2380F2FB8(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_2380F2DD0(uint64_t a1)
{
  if (!qword_27DEEC678)
  {
    MEMORY[0x28223BE20](a1);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEC680, &qword_23815C5D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEC688, &unk_23815C5D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DEED750, &qword_238159750);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_27DEEC678);
    }
  }
}

void sub_2380F2F6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2380F2FB8(uint64_t a1)
{
  if (!qword_27DEEC698)
  {
    MEMORY[0x28223BE20](a1);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEC6A0, &qword_23815C5E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DEED750, &qword_238159750);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_27DEEC698);
    }
  }
}

double sub_2380F3120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_2380F3164(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC6A8, &unk_23815C610);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2380F31CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

uint64_t sub_2380F3210(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id sub_2380F3278(uint64_t a1, uint64_t a2)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = sub_238154C8C();

  v7[0] = 0;
  v3 = [swift_getObjCClassFromMetadata() bundleRecordWithApplicationIdentifier:v2 error:v7];

  if (v3)
  {
    v4 = v7[0];
  }

  else
  {
    v5 = v7[0];
    sub_23815266C();

    swift_willThrow();
  }

  return v3;
}

uint64_t sub_2380F3350()
{
  v0 = sub_23815293C();
  __swift_allocate_value_buffer(v0, qword_27DEEC6B0);
  __swift_project_value_buffer(v0, qword_27DEEC6B0);
  sub_238154DEC();
  return sub_23815292C();
}

uint64_t DDDeviceAdvertiserView.init(bundleID:serviceIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_2381546FC();
  *a5 = v20;
  *(a5 + 8) = v21;
  sub_2381528EC();
  swift_allocObject();
  *(a5 + 48) = sub_2381528DC();
  sub_2381546FC();
  *(a5 + 56) = v20;
  *(a5 + 64) = v21;
  if (qword_27DEEA030 != -1)
  {
    swift_once();
  }

  v10 = qword_27DEF3190;
  type metadata accessor for DDDeviceAccessController(0);
  sub_2380F90E8(&qword_27DEED6B0, type metadata accessor for DDDeviceAccessController, byte_238159338);
  v11 = v10;
  v12 = sub_2381539BC();
  v14 = v13;
  *(a5 + 72) = v12;
  *(a5 + 80) = v13;
  sub_2380BDAE8();
  *(a5 + 16) = v15;
  *(a5 + 24) = v16;
  *(a5 + 32) = a1;
  *(a5 + 40) = a2;
  v17 = (v14 + OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_bundleID);
  *v17 = a1;
  v17[1] = a2;

  *(v14 + OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_role) = 1;
  v18 = (v14 + OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_serviceName);
  *v18 = a3;
  v18[1] = a4;
}

uint64_t sub_2380F3588@<X0>(uint64_t a1@<X8>)
{
  v60 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC748, &qword_23815C730);
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v5 = &v56 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC750, &qword_23815C738);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v56 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC758, &qword_23815C740);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v56 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC760, &qword_23815C748);
  v15 = v14 - 8;
  MEMORY[0x28223BE20](v14);
  v57 = &v56 - v16;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC768, &qword_23815C750) - 8;
  MEMORY[0x28223BE20](v59);
  v58 = &v56 - v17;
  v18 = v1[3];
  v70 = v1[2];
  v71 = v18;
  v72 = v1[4];
  v73 = *(v1 + 10);
  v19 = v1[1];
  v68 = *v1;
  v69 = v19;
  *v5 = sub_238153DEC();
  *(v5 + 1) = 0;
  v5[16] = 0;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC770, &qword_23815C758);
  sub_2380F3B6C(&v68, &v5[*(v20 + 44)]);
  v21 = sub_23815410C();
  v22 = sub_238153A4C();
  v23 = &v5[*(v3 + 44)];
  *v23 = v22;
  v23[8] = v21;
  sub_2381548BC();
  sub_238153A8C();
  sub_23807121C(v5, v9, &qword_27DEEC748, &qword_23815C730);
  v24 = &v9[*(v7 + 44)];
  v25 = v64;
  v26 = v66;
  v27 = v67;
  *(v24 + 4) = v65;
  *(v24 + 5) = v26;
  *(v24 + 6) = v27;
  v28 = v62;
  *v24 = *&v61[88];
  *(v24 + 1) = v28;
  *(v24 + 2) = v63;
  *(v24 + 3) = v25;
  v29 = swift_allocObject();
  v30 = v71;
  *(v29 + 48) = v70;
  *(v29 + 64) = v30;
  *(v29 + 80) = v72;
  *(v29 + 96) = v73;
  v31 = v69;
  *(v29 + 16) = v68;
  *(v29 + 32) = v31;
  sub_23807121C(v9, v13, &qword_27DEEC750, &qword_23815C738);
  v32 = &v13[*(v11 + 44)];
  *v32 = sub_2380F9324;
  v32[1] = v29;
  v32[2] = 0;
  v32[3] = 0;
  v33 = swift_allocObject();
  v34 = v71;
  *(v33 + 48) = v70;
  *(v33 + 64) = v34;
  *(v33 + 80) = v72;
  *(v33 + 96) = v73;
  v35 = v69;
  *(v33 + 16) = v68;
  *(v33 + 32) = v35;
  v36 = v57;
  sub_23807121C(v13, v57, &qword_27DEEC758, &qword_23815C740);
  v37 = (v36 + *(v15 + 44));
  *v37 = 0;
  v37[1] = 0;
  v37[2] = sub_2380F9348;
  v37[3] = v33;
  v38 = swift_allocObject();
  v39 = v71;
  *(v38 + 48) = v70;
  *(v38 + 64) = v39;
  *(v38 + 80) = v72;
  *(v38 + 96) = v73;
  v40 = v69;
  *(v38 + 16) = v68;
  *(v38 + 32) = v40;
  v41 = objc_opt_self();
  sub_2380F8DF4(&v68, v61);
  sub_2380F8DF4(&v68, v61);
  sub_2380F8DF4(&v68, v61);
  v42 = [v41 defaultCenter];
  v43 = v58;
  v44 = v59;
  sub_2381551DC();

  v45 = swift_allocObject();
  *(v45 + 16) = sub_2380F9D1C;
  *(v45 + 24) = v38;
  sub_23807121C(v36, v43, &qword_27DEEC760, &qword_23815C748);
  v46 = (v43 + *(v44 + 64));
  *v46 = sub_2380F93A4;
  v46[1] = v45;
  v47 = swift_allocObject();
  v48 = v71;
  *(v47 + 48) = v70;
  *(v47 + 64) = v48;
  *(v47 + 80) = v72;
  *(v47 + 96) = v73;
  v49 = v69;
  *(v47 + 16) = v68;
  *(v47 + 32) = v49;
  sub_2380F8DF4(&v68, v61);
  v50 = [v41 defaultCenter];
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC6E0, &qword_23815C630);
  v52 = v60;
  sub_2381551DC();

  v53 = swift_allocObject();
  *(v53 + 16) = sub_2380F9D20;
  *(v53 + 24) = v47;
  result = sub_23807121C(v43, v52, &qword_27DEEC768, &qword_23815C750);
  v55 = (v52 + *(v51 + 56));
  *v55 = sub_2380F93A4;
  v55[1] = v53;
  return result;
}

uint64_t sub_2380F3B6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v129 = a2;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC778, &qword_23815C760);
  MEMORY[0x28223BE20](v122);
  v126 = v113 - v3;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC780, &qword_23815C768);
  MEMORY[0x28223BE20](v125);
  v119 = v113 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC788, &qword_23815C770);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v128 = v113 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v127 = v113 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC790, &qword_23815C778);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v113 - v11;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC798, &qword_23815C780);
  v13 = MEMORY[0x28223BE20](v120);
  v15 = v113 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v113 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC7A0, &qword_23815C788);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v124 = v113 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = v113 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC7A8, &qword_23815C790);
  v24 = v23 - 8;
  v25 = MEMORY[0x28223BE20](v23);
  v123 = v113 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = v113 - v27;
  *v28 = sub_238153DEC();
  *(v28 + 1) = 0;
  v28[16] = 1;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC7B0, &qword_23815C798);
  sub_2380F5AF0(&v28[*(v29 + 44)]);
  v30 = sub_2381540FC();
  v31 = *(v24 + 44);
  v131 = v28;
  v32 = &v28[v31];
  *v32 = v30;
  __asm { FMOV            V0.2D, #16.0 }

  *(v32 + 8) = _Q0;
  *(v32 + 24) = _Q0;
  v32[40] = 0;
  v38 = *(a1 + 80);
  v39 = OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_completedPairedDevices;
  v40 = swift_beginAccess();
  v41 = *(*(v38 + v39) + 16);
  v130 = v22;
  v121 = a1;
  if (v41)
  {
    v113[1] = v113;
    MEMORY[0x28223BE20](v40);
    v111 = a1;
    v42 = sub_238153D1C();
    sub_2380F87D0(101, &v152);
    v115 = v12;
    v116 = v10;
    v43 = v152;
    v114 = v15;
    v44 = *(&v152 + 1);
    v113[0] = v17;
    v45 = v153[0];
    v46 = *&v153[8];
    v47 = *&v153[16];
    v117 = v9;
    v48 = v153[24];
    LOBYTE(v144) = 1;
    LOBYTE(v134) = v153[0];
    v133[0] = v153[24];
    v49 = sub_23815415C();
    v118 = v38;
    v50 = v49;
    sub_23815377C();
    v152 = v42;
    v153[0] = 1;
    *&v153[8] = v43;
    *&v153[16] = v44;
    v153[24] = v45;
    *&v154 = v46;
    *(&v154 + 1) = v47;
    LOBYTE(v155) = v48;
    BYTE8(v155) = v50;
    *&v156 = v51;
    *(&v156 + 1) = v52;
    *&v157 = v53;
    *(&v157 + 1) = v54;
    LOBYTE(v158[0]) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC7E8, &qword_23815C800);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC868, &qword_23815C840);
    sub_2380F94D8();
    sub_2380F984C();
    v55 = v113[0];
    sub_23815482C();
    v56 = sub_2381540EC();
    v57 = v55 + *(v120 + 9);
    v58 = v55;
    *v57 = v56;
    *(v57 + 8) = 0u;
    *(v57 + 24) = 0u;
    *(v57 + 40) = 1;
    LOBYTE(v44) = sub_23815412C();
    sub_23815377C();
    v60 = v59;
    v62 = v61;
    v64 = v63;
    v66 = v65;
    v67 = sub_2381540FC();
    LOBYTE(v152) = 0;
    LOBYTE(v159) = 1;
    v111 = sub_2381548EC();
    v112 = v68;
    LOBYTE(v110) = 1;
    v109 = 0;
    sub_238153A8C();
    *&v132[55] = v167;
    *&v132[71] = v168;
    *&v132[87] = v169;
    *&v132[103] = v170;
    *&v132[7] = v164;
    *&v132[23] = v165;
    *&v132[39] = v166;
    v69 = v114;
    sub_2380712E4(v55, v114, &qword_27DEEC798, &qword_23815C780);
    v70 = v115;
    sub_2380712E4(v69, v115, &qword_27DEEC798, &qword_23815C780);
    v71 = v70 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC8A8, &qword_23815C860) + 48);
    *v71 = v44;
    *(v71 + 8) = v60;
    *(v71 + 16) = v62;
    *(v71 + 24) = v64;
    *(v71 + 32) = v66;
    *(v71 + 40) = 0;
    *(v71 + 48) = v67;
    *(v71 + 56) = 0u;
    *(v71 + 72) = 0u;
    *(v71 + 88) = 1;
    v72 = *&v132[80];
    *(v71 + 153) = *&v132[64];
    *(v71 + 169) = v72;
    *(v71 + 185) = *&v132[96];
    *(v71 + 200) = *&v132[111];
    v73 = *&v132[16];
    *(v71 + 89) = *v132;
    *(v71 + 105) = v73;
    v74 = *&v132[48];
    *(v71 + 121) = *&v132[32];
    *(v71 + 137) = v74;
    sub_238071284(v58, &qword_27DEEC798, &qword_23815C780);
    v75 = v130;
    sub_238071284(v69, &qword_27DEEC798, &qword_23815C780);
    sub_23807121C(v70, v75, &qword_27DEEC790, &qword_23815C778);
    (*(v116 + 56))(v75, 0, 1, v117);
  }

  else
  {
    (*(v10 + 56))(v22, 1, 1, v9);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  v163 = v155;
  v161 = *&v153[16];
  v162 = v154;
  v159 = v152;
  v160 = *v153;
  if (v155 == 1)
  {
    v120 = v113;
    v144 = v159;
    v145 = v160;
    v146 = v161;
    v147 = v162;
    MEMORY[0x28223BE20](v76);
    v118 = &v109;
    v111 = &v144;
    v112 = v121;
    v77 = sub_238153D1C();
    sub_2380F87D0(102, &v152);
    v78 = v152;
    v79 = v153[0];
    v80 = *&v153[8];
    v81 = *&v153[16];
    v82 = v153[24];
    LOBYTE(v134) = 1;
    v133[0] = v153[0];
    v143 = v153[24];
    v83 = sub_23815415C();
    sub_23815377C();
    v152 = v77;
    v153[0] = 1;
    *&v153[8] = v78;
    v153[24] = v79;
    *&v154 = v80;
    *(&v154 + 1) = v81;
    LOBYTE(v155) = v82;
    BYTE8(v155) = v83;
    *&v156 = v84;
    *(&v156 + 1) = v85;
    *&v157 = v86;
    *(&v157 + 1) = v87;
    LOBYTE(v158[0]) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC7E8, &qword_23815C800);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC808, &qword_23815C810);
    sub_2380F94D8();
    sub_2380F9590();
    v88 = v119;
    sub_23815482C();
    v89 = sub_2381540EC();
    v90 = v126;
    v91 = v88 + *(v125 + 36);
    *v91 = v89;
    *(v91 + 8) = 0u;
    *(v91 + 24) = 0u;
    *(v91 + 40) = 1;
    sub_2380712E4(v88, v90, &qword_27DEEC780, &qword_23815C768);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC7C0, &qword_23815C7F0);
    sub_2380F93B4();
    sub_2380711D4(&qword_27DEEC858, &qword_27DEEC7C0, &qword_23815C7F0, MEMORY[0x277CE1198]);
    v92 = v127;
    sub_238153ECC();
    sub_23808E828(&v159);
    sub_238071284(v88, &qword_27DEEC780, &qword_23815C768);
  }

  else
  {
    sub_23808E828(&v159);
    v93 = sub_238153DEC();
    v143 = 1;
    sub_2380F48B8(v121, &v134);
    v150 = v140;
    v151[0] = v141[0];
    *(v151 + 9) = *(v141 + 9);
    v146 = v136;
    v147 = v137;
    v148 = v138;
    v149 = v139;
    v144 = v134;
    v145 = v135;
    v157 = v140;
    v158[0] = v141[0];
    *(v158 + 9) = *(v141 + 9);
    *&v153[16] = v136;
    v154 = v137;
    v155 = v138;
    v156 = v139;
    v152 = v134;
    *v153 = v135;
    sub_2380712E4(&v144, v133, &qword_27DEEC7B8, &qword_23815C7E8);
    sub_238071284(&v152, &qword_27DEEC7B8, &qword_23815C7E8);
    *(&v142[6] + 7) = v150;
    *(&v142[5] + 7) = v149;
    *(&v142[2] + 7) = v146;
    *(&v142[1] + 7) = v145;
    *(&v142[7] + 7) = v151[0];
    v142[8] = *(v151 + 9);
    *(&v142[3] + 7) = v147;
    *(&v142[4] + 7) = v148;
    *(v142 + 7) = v144;
    v94 = v142[4];
    v95 = v126;
    *(v126 + 97) = v142[5];
    v96 = v142[7];
    *(v95 + 113) = v142[6];
    *(v95 + 129) = v96;
    *(v95 + 145) = v142[8];
    v97 = v142[0];
    *(v95 + 33) = v142[1];
    v98 = v142[3];
    *(v95 + 49) = v142[2];
    *(v95 + 65) = v98;
    *(v95 + 81) = v94;
    v99 = v143;
    *v95 = v93;
    *(v95 + 1) = 0;
    v95[16] = v99;
    *(v95 + 17) = v97;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC7C0, &qword_23815C7F0);
    sub_2380F93B4();
    sub_2380711D4(&qword_27DEEC858, &qword_27DEEC7C0, &qword_23815C7F0, MEMORY[0x277CE1198]);
    v92 = v127;
    sub_238153ECC();
  }

  v100 = v123;
  sub_2380712E4(v131, v123, &qword_27DEEC7A8, &qword_23815C790);
  v101 = v130;
  v102 = v124;
  sub_2380712E4(v130, v124, &qword_27DEEC7A0, &qword_23815C788);
  v103 = v128;
  sub_2380712E4(v92, v128, &qword_27DEEC788, &qword_23815C770);
  v104 = v92;
  v105 = v129;
  sub_2380712E4(v100, v129, &qword_27DEEC7A8, &qword_23815C790);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC860, &qword_23815C838);
  sub_2380712E4(v102, v105 + v106[12], &qword_27DEEC7A0, &qword_23815C788);
  sub_2380712E4(v103, v105 + v106[16], &qword_27DEEC788, &qword_23815C770);
  v107 = v105 + v106[20];
  *v107 = 0;
  *(v107 + 8) = 1;
  sub_238071284(v104, &qword_27DEEC788, &qword_23815C770);
  sub_238071284(v101, &qword_27DEEC7A0, &qword_23815C788);
  sub_238071284(v131, &qword_27DEEC7A8, &qword_23815C790);
  sub_238071284(v103, &qword_27DEEC788, &qword_23815C770);
  sub_238071284(v102, &qword_27DEEC7A0, &qword_23815C788);
  return sub_238071284(v100, &qword_27DEEC7A8, &qword_23815C790);
}

uint64_t sub_2380F48B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 80);
  v4 = OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_completedPairedDevices;
  swift_beginAccess();
  if (*(*(v3 + v4) + 16))
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    KeyPath = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
  }

  else
  {
    v44 = sub_23807CB28(99);
    v45 = v18;
    sub_2380704A0();
    v19 = sub_23815438C();
    v21 = v20;
    v23 = v22;
    sub_23815419C();
    v5 = sub_23815435C();
    v6 = v24;
    v34 = v25;
    v7 = v26;

    sub_238070490(v19, v21, v23 & 1);

    KeyPath = swift_getKeyPath();
    v10 = sub_23815463C();
    v9 = swift_getKeyPath();
    LOBYTE(v44) = v34 & 1;
    v13 = v34 & 1;
    v27 = sub_2381540EC();
    sub_23815377C();
    v11 = v27;
    v12 = 1;
  }

  v37 = 1;
  *&v38 = v5;
  *(&v38 + 1) = v6;
  *&v39 = v13;
  *(&v39 + 1) = v7;
  *&v40 = KeyPath;
  *(&v40 + 1) = v12;
  *&v41 = v9;
  *(&v41 + 1) = v10;
  *&v42 = v11;
  *(&v42 + 1) = v14;
  *v43 = v15;
  *&v43[8] = v16;
  *&v43[16] = v17;
  v43[24] = 0;
  *(&v36[2] + 7) = v40;
  *(&v36[1] + 7) = v39;
  *(v36 + 7) = v38;
  v36[6] = *&v43[9];
  *(&v36[5] + 7) = *v43;
  *(&v36[4] + 7) = v42;
  *(&v36[3] + 7) = v41;
  v35[112] = 1;
  *a2 = 0;
  *(a2 + 8) = 1;
  v28 = v36[0];
  v29 = v36[1];
  v30 = v36[3];
  *(a2 + 41) = v36[2];
  *(a2 + 25) = v29;
  *(a2 + 9) = v28;
  v31 = v36[4];
  v32 = v36[5];
  *(a2 + 105) = v36[6];
  *(a2 + 89) = v32;
  *(a2 + 73) = v31;
  *(a2 + 57) = v30;
  *(a2 + 128) = 0;
  *(a2 + 136) = 1;
  v44 = v5;
  v45 = v6;
  v46 = v13;
  v47 = v7;
  v48 = KeyPath;
  v49 = v12;
  v50 = v9;
  v51 = v10;
  v52 = v11;
  v53 = v14;
  v54 = v15;
  v55 = v16;
  v56 = v17;
  v57 = 0;
  sub_2380712E4(&v38, v35, &qword_27DEEC968, &qword_23815C9C8);
  return sub_238071284(&v44, &qword_27DEEC968, &qword_23815C9C8);
}

uint64_t DDDeviceAdvertiserView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC6D0, &qword_23815C620);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v40 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC6D8, &qword_23815C628);
  MEMORY[0x28223BE20](v8);
  v10 = &v40 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC6E0, &qword_23815C630);
  MEMORY[0x28223BE20](v11);
  v13 = &v40 - v12;
  v14 = v1[3];
  v60 = v1[2];
  v61 = v14;
  *v62 = v1[4];
  *&v62[16] = *(v1 + 10);
  v15 = v1[1];
  v58 = *v1;
  v59 = v15;
  v51 = *(v1 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC6E8, &qword_23815C638);
  sub_23815470C();
  if (v49[0])
  {
    v45 = v8;
    v46 = v7;
    v47 = v11;
    v17 = v2;
    v63[0] = *&v62[8];
    v18 = *(*&v62[16] + OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_bundleID + 8);
    if (v18)
    {
      v19 = *(*&v62[16] + OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_bundleID);
      sub_2380F9130(0, v16);
      sub_2380712E4(v63, &v51, &qword_27DEEC730, &qword_23815C660);

      v20 = sub_2380F3278(v19, v18);
      v21 = v10;
      if (v20)
      {
        v23 = v20;
        v24 = [v20 localizedName];
        v25 = sub_238154CCC();
        v43 = v26;
        v44 = v25;

        sub_238071284(v63, &qword_27DEEC730, &qword_23815C660);
      }

      else
      {
        sub_238071284(v63, &qword_27DEEC730, &qword_23815C660);
        v43 = 0xE000000000000000;
        v44 = 0;
      }
    }

    else
    {
      v43 = 0xE000000000000000;
      v44 = 0;
      v21 = v10;
    }

    v27 = *(&v59 + 1);
    v42 = v59;
    v28 = swift_allocObject();
    v29 = v61;
    *(v28 + 48) = v60;
    *(v28 + 64) = v29;
    *(v28 + 80) = *v62;
    *(v28 + 96) = *&v62[16];
    v30 = v59;
    *(v28 + 16) = v58;
    *(v28 + 32) = v30;

    sub_2380F8DF4(&v58, &v51);
    v41 = sub_23815410C();
    v40 = sub_238153A4C();
    sub_2381548BC();
    sub_238153A8C();
    *&v50[55] = v54;
    *&v50[71] = v55;
    *&v50[87] = v56;
    *&v50[103] = v57;
    *&v50[7] = v51;
    *&v50[23] = v52;
    *&v50[39] = v53;
    v31 = swift_allocObject();
    v32 = v61;
    *(v31 + 48) = v60;
    *(v31 + 64) = v32;
    *(v31 + 80) = *v62;
    *(v31 + 96) = *&v62[16];
    v33 = v59;
    *(v31 + 16) = v58;
    *(v31 + 32) = v33;
    v34 = &v5[*(v17 + 36)];
    sub_23815396C();
    sub_2380F8DF4(&v58, v49);
    sub_238154F9C();
    *v34 = &unk_23815C648;
    *(v34 + 1) = v31;
    v35 = v43;
    *v5 = v44;
    *(v5 + 1) = v35;
    *(v5 + 2) = v42;
    *(v5 + 3) = v27;
    v36 = *&v50[80];
    *(v5 + 121) = *&v50[64];
    *(v5 + 137) = v36;
    *(v5 + 153) = *&v50[96];
    v37 = *&v50[16];
    *(v5 + 57) = *v50;
    *(v5 + 73) = v37;
    v38 = *&v50[48];
    *(v5 + 89) = *&v50[32];
    *(v5 + 4) = sub_2380F8DEC;
    *(v5 + 5) = v28;
    *(v5 + 6) = v40;
    v5[56] = v41;
    *(v5 + 21) = *&v50[111];
    *(v5 + 105) = v38;
    v39 = v46;
    sub_23807121C(v5, v46, &qword_27DEEC6D0, &qword_23815C620);
    sub_2380712E4(v39, v21, &qword_27DEEC6D0, &qword_23815C620);
    swift_storeEnumTagMultiPayload();
    sub_2380711D4(&qword_27DEEC6F0, &qword_27DEEC6E0, &qword_23815C630, MEMORY[0x277CDDB50]);
    sub_2380F8EC0();
    sub_238153ECC();
    return sub_238071284(v39, &qword_27DEEC6D0, &qword_23815C620);
  }

  else
  {
    v53 = v60;
    v54 = v61;
    v55 = *v62;
    *&v56 = *&v62[16];
    v51 = v58;
    v52 = v59;
    sub_2380F3588(v13);
    sub_2380712E4(v13, v10, &qword_27DEEC6E0, &qword_23815C630);
    swift_storeEnumTagMultiPayload();
    sub_2380711D4(&qword_27DEEC6F0, &qword_27DEEC6E0, &qword_23815C630, MEMORY[0x277CDDB50]);
    sub_2380F8EC0();
    sub_238153ECC();
    return sub_238071284(v13, &qword_27DEEC6E0, &qword_23815C630);
  }
}

double sub_2380F5154(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA00, &qword_23815B4A0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13[-v3 - 8];
  v5 = sub_238154FBC();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_238154F8C();
  sub_2380F8DF4(a1, v13);
  v6 = sub_238154F7C();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  *(v7 + 16) = v6;
  *(v7 + 24) = v8;
  v9 = *(a1 + 48);
  *(v7 + 64) = *(a1 + 32);
  *(v7 + 80) = v9;
  *(v7 + 96) = *(a1 + 64);
  *(v7 + 112) = *(a1 + 80);
  v10 = *(a1 + 16);
  *(v7 + 32) = *a1;
  *(v7 + 48) = v10;
  sub_2380D2A4C(0, 0, v4, &unk_23815CA28, v7);

  return result;
}

uint64_t sub_2380F529C(uint64_t a1)
{
  *(v1 + 104) = sub_238154F8C();
  *(v1 + 112) = sub_238154F7C();
  v3 = *(a1 + 48);
  *(v1 + 48) = *(a1 + 32);
  *(v1 + 64) = v3;
  *(v1 + 80) = *(a1 + 64);
  *(v1 + 96) = *(a1 + 80);
  v4 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v4;
  v5 = swift_task_alloc();
  *(v1 + 120) = v5;
  *v5 = v1;
  v5[1] = sub_2380F5368;

  return sub_2380F5504();
}

uint64_t sub_2380F5368()
{

  v1 = sub_238154F3C();

  return MEMORY[0x2822009F8](sub_2380F54A4, v1, v0);
}

uint64_t sub_2380F54A4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2380F5504()
{
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  *(v1 + 32) = *(v0 + 8);
  *(v1 + 40) = v2;
  *(v1 + 48) = v3;
  *(v1 + 56) = *(v0 + 40);
  *(v1 + 137) = *(v0 + 56);
  v4 = *(v0 + 80);
  *(v1 + 72) = *(v0 + 64);
  *(v1 + 80) = v4;
  sub_238154F8C();
  *(v1 + 88) = sub_238154F7C();
  v6 = sub_238154F3C();
  *(v1 + 96) = v6;
  *(v1 + 104) = v5;

  return MEMORY[0x2822009F8](sub_2380F55C4, v6, v5);
}

uint64_t sub_2380F55C4()
{
  v16 = v0;
  if (qword_27DEEA0B8 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = sub_23815293C();
  v0[14] = __swift_project_value_buffer(v2, qword_27DEEC6B0);

  v3 = v1;

  v4 = sub_23815291C();
  v5 = sub_2381550FC();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[6];
    v6 = v0[7];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315138;

    v10 = sub_238085EAC(v7, v6, &v15);

    *(v8 + 4) = v10;
    _os_log_impl(&dword_238060000, v4, v5, "Loading setting for %s", v8, 0xCu);
    v11 = __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x2383EA8A0](v9, -1, -1, v11);
    MEMORY[0x2383EA8A0](v8, -1, -1);
  }

  v12 = v0[8];
  v13 = (*v12 + 152) & 0xFFFFFFFFFFFFLL | 0x517C000000000000;
  v0[15] = *(*v12 + 152);
  v0[16] = v13;

  return MEMORY[0x2822009F8](sub_2380F57E0, v12, 0);
}

uint64_t sub_2380F57E0()
{
  *(v0 + 138) = (*(v0 + 120))(*(v0 + 48), *(v0 + 56));
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return MEMORY[0x2822009F8](sub_2380F5850, v1, v2);
}

uint64_t sub_2380F5850()
{
  v21 = v0;
  v1 = *(v0 + 138);
  v2 = *(v0 + 80);
  v3 = *(v0 + 72);
  v4 = *(v0 + 137);

  *(v0 + 16) = v4;
  *(v0 + 136) = (v1 == 2) | v1 & 1;
  *(v0 + 24) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC6E8, &qword_23815C638);
  sub_23815471C();

  v5 = v2;
  v6 = sub_23815291C();
  v7 = sub_2381550FC();

  v8 = v7;

  if (os_log_type_enabled(v6, v7))
  {
    v9 = *(v0 + 72);
    v10 = v6;
    v11 = *(v0 + 48);
    v12 = *(v0 + 56);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v20 = v14;
    *v13 = 136315394;
    *(v13 + 4) = sub_238085EAC(v11, v12, &v20);
    *(v13 + 12) = 2080;
    *(v0 + 16) = v4;
    *(v0 + 24) = v9;
    sub_23815470C();
    if (*(v0 + 136))
    {
      v15 = 0x64656C6261736964;
    }

    else
    {
      v15 = 0x64656C62616E65;
    }

    if (*(v0 + 136))
    {
      v16 = 0xE800000000000000;
    }

    else
    {
      v16 = 0xE700000000000000;
    }

    v17 = sub_238085EAC(v15, v16, &v20);

    *(v13 + 14) = v17;
    _os_log_impl(&dword_238060000, v10, v8, "Loaded setting for %s: %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2383EA8A0](v14, -1, -1);
    MEMORY[0x2383EA8A0](v13, -1, -1);
  }

  else
  {
  }

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_2380F5AF0@<X0>(char *a2@<X8>)
{
  v22 = a2;
  v21 = sub_2381547FC();
  v18 = *(v21 - 8);
  v2 = v18;
  v3 = MEMORY[0x28223BE20](v21);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - v6;
  v20 = sub_238153D1C();
  v28 = 1;
  sub_2380F6044(&v24);
  v42 = *&v25[176];
  v43 = *&v25[192];
  v44[0] = *&v25[208];
  *(v44 + 9) = *&v25[217];
  v38 = *&v25[112];
  v39 = *&v25[128];
  v40 = *&v25[144];
  v41 = *&v25[160];
  v34 = *&v25[48];
  v35 = *&v25[64];
  v36 = *&v25[80];
  v37 = *&v25[96];
  v30 = v24;
  v31 = *v25;
  v32 = *&v25[16];
  v33 = *&v25[32];
  v45[12] = *&v25[176];
  v45[13] = *&v25[192];
  v46[0] = *&v25[208];
  *(v46 + 9) = *&v25[217];
  v45[8] = *&v25[112];
  v45[9] = *&v25[128];
  v45[10] = *&v25[144];
  v45[11] = *&v25[160];
  v45[4] = *&v25[48];
  v45[5] = *&v25[64];
  v45[6] = *&v25[80];
  v45[7] = *&v25[96];
  v45[0] = v24;
  v45[1] = *v25;
  v45[2] = *&v25[16];
  v45[3] = *&v25[32];
  sub_2380712E4(&v30, v23, &qword_27DEEC970, &qword_23815C9D0);
  sub_238071284(v45, &qword_27DEEC970, &qword_23815C9D0);
  *(&v27[12] + 7) = v42;
  *(&v27[13] + 7) = v43;
  *(&v27[14] + 7) = v44[0];
  v27[15] = *(v44 + 9);
  *(&v27[8] + 7) = v38;
  *(&v27[9] + 7) = v39;
  *(&v27[10] + 7) = v40;
  *(&v27[11] + 7) = v41;
  *(&v27[4] + 7) = v34;
  *(&v27[5] + 7) = v35;
  *(&v27[6] + 7) = v36;
  *(&v27[7] + 7) = v37;
  *(v27 + 7) = v30;
  *(&v27[1] + 7) = v31;
  *(&v27[2] + 7) = v32;
  *(&v27[3] + 7) = v33;
  v8 = v28;
  v19 = v28;
  sub_2381548EC();
  sub_238153A8C();
  *(&v29[6] + 7) = *&v29[21];
  *(&v29[8] + 7) = *&v29[23];
  *(&v29[10] + 7) = *&v29[25];
  *(&v29[12] + 7) = *&v29[27];
  *(v29 + 7) = *&v29[15];
  *(&v29[2] + 7) = *&v29[17];
  *(&v29[4] + 7) = *&v29[19];
  sub_2381547EC();
  v9 = *(v2 + 16);
  v10 = v5;
  v11 = v21;
  v9(v5, v7, v21);
  *(&v23[32] + 1) = v27[15];
  *(&v23[26] + 1) = v27[12];
  v12 = v20;
  v23[0] = v20;
  v23[1] = 0;
  LOBYTE(v23[2]) = v8;
  *(&v23[28] + 1) = v27[13];
  *(&v23[30] + 1) = v27[14];
  *(&v23[18] + 1) = v27[8];
  *(&v23[20] + 1) = v27[9];
  *(&v23[22] + 1) = v27[10];
  *(&v23[24] + 1) = v27[11];
  *(&v23[10] + 1) = v27[4];
  *(&v23[12] + 1) = v27[5];
  *(&v23[14] + 1) = v27[6];
  *(&v23[16] + 1) = v27[7];
  *(&v23[2] + 1) = v27[0];
  *(&v23[4] + 1) = v27[1];
  *(&v23[6] + 1) = v27[2];
  *(&v23[8] + 1) = v27[3];
  *(&v23[42] + 1) = *&v29[8];
  *(&v23[44] + 1) = *&v29[10];
  *(&v23[46] + 1) = *&v29[12];
  *(&v23[34] + 1) = *v29;
  *(&v23[36] + 1) = *&v29[2];
  *(&v23[38] + 1) = *&v29[4];
  *(&v23[40] + 1) = *&v29[6];
  v23[48] = *(&v29[13] + 7);
  v13 = v22;
  memcpy(v22, v23, 0x188uLL);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC978, &qword_23815C9D8);
  v9(&v13[*(v14 + 48)], v10, v11);
  sub_2380712E4(v23, &v24, &qword_27DEEC980, &unk_23815C9E0);
  v15 = *(v18 + 8);
  v15(v7, v11);
  v15(v10, v11);
  *&v25[241] = v27[15];
  *&v25[193] = v27[12];
  v24 = v12;
  v25[0] = v19;
  *&v25[209] = v27[13];
  *&v25[225] = v27[14];
  *&v25[129] = v27[8];
  *&v25[145] = v27[9];
  *&v25[161] = v27[10];
  *&v25[177] = v27[11];
  *&v25[65] = v27[4];
  *&v25[81] = v27[5];
  *&v25[97] = v27[6];
  *&v25[113] = v27[7];
  *&v25[1] = v27[0];
  *&v25[17] = v27[1];
  *&v25[33] = v27[2];
  *&v25[49] = v27[3];
  *&v25[321] = *&v29[8];
  *&v25[337] = *&v29[10];
  *v26 = *&v29[12];
  *&v25[257] = *v29;
  *&v25[273] = *&v29[2];
  *&v25[289] = *&v29[4];
  *&v25[305] = *&v29[6];
  *&v26[15] = *(&v29[13] + 7);
  return sub_238071284(&v24, &qword_27DEEC980, &unk_23815C9E0);
}

uint64_t sub_2380F6044@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_2381548DC();
  v5 = v4;
  sub_2380F63F4(&v43);
  v25 = v48;
  v26 = v49;
  v27 = v50;
  v21 = v44;
  v22 = v45;
  v23 = v46;
  v24 = v47;
  v20 = v43;
  v29[6] = v49;
  v29[7] = v50;
  v29[2] = v45;
  v29[3] = v46;
  v29[4] = v47;
  v29[5] = v48;
  v28 = v51;
  v30 = v51;
  v29[0] = v43;
  v29[1] = v44;
  sub_2380712E4(&v20, v33, &qword_27DEEC988, &unk_23815F7F0);
  sub_238071284(v29, &qword_27DEEC988, &unk_23815F7F0);
  v16 = v26;
  v17 = v27;
  v18 = v28;
  v12 = v22;
  v13 = v23;
  v14 = v24;
  v15 = v25;
  v10 = v20;
  v11 = v21;
  v6 = sub_238153DFC();
  LOBYTE(v43) = 1;
  sub_2380F6768(v31);
  *&v19[7] = v31[0];
  *&v19[23] = v31[1];
  *&v19[39] = v31[2];
  *&v19[55] = v32;
  v33[3] = v12;
  v33[4] = v13;
  *&v36[1] = *v19;
  *&v36[17] = *&v19[16];
  *&v36[33] = *&v19[32];
  *&v36[49] = *&v19[48];
  *&v36[64] = *(&v32 + 1);
  *&v9[88] = *(&v32 + 1);
  *&v9[72] = *&v36[48];
  v33[1] = v10;
  v33[2] = v11;
  v33[7] = v16;
  v33[8] = v17;
  v7 = v43;
  *&v33[0] = v3;
  *(&v33[0] + 1) = v5;
  v34 = v18;
  v33[5] = v14;
  v33[6] = v15;
  *v9 = v18;
  v35[0] = v6;
  v35[1] = 0;
  v36[0] = v43;
  *&v9[8] = v6;
  *&v9[24] = *v36;
  *&v9[56] = *&v36[32];
  *&v9[40] = *&v36[16];
  *a2 = v33[0];
  *(a2 + 16) = v10;
  *(a2 + 64) = v13;
  *(a2 + 80) = v14;
  *(a2 + 32) = v11;
  *(a2 + 48) = v12;
  *(a2 + 128) = v17;
  *(a2 + 144) = *v9;
  *(a2 + 96) = v15;
  *(a2 + 112) = v16;
  *(a2 + 208) = *&v9[64];
  *(a2 + 224) = *&v9[80];
  *(a2 + 160) = *&v9[16];
  *(a2 + 176) = *&v9[32];
  *(a2 + 192) = *&v9[48];
  *(a2 + 240) = 0;
  *(a2 + 248) = 1;
  v37[0] = v6;
  v37[1] = 0;
  v38 = v7;
  v40 = *&v19[16];
  v41 = *&v19[32];
  *v42 = *&v19[48];
  *&v42[15] = *&v19[63];
  v39 = *v19;
  sub_2380712E4(v33, &v43, &qword_27DEEC990, &unk_23815C9F0);
  sub_2380712E4(v35, &v43, &qword_27DEEC998, &qword_23815DAA0);
  sub_238071284(v37, &qword_27DEEC998, &qword_23815DAA0);
  *&v43 = v3;
  *(&v43 + 1) = v5;
  v50 = v16;
  v51 = v17;
  v52 = v18;
  v46 = v12;
  v47 = v13;
  v49 = v15;
  v48 = v14;
  v45 = v11;
  v44 = v10;
  return sub_238071284(&v43, &qword_27DEEC990, &unk_23815C9F0);
}

uint64_t sub_2380F63F4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_23815468C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2381545CC();
  v6 = sub_23815460C();

  sub_2381548DC();
  sub_2381538EC();
  *&v28[3] = *&v28[27];
  *&v28[11] = *&v28[35];
  *&v28[19] = *&v28[43];
  if (qword_27DEEA0C0 != -1)
  {
    swift_once();
  }

  (*(v3 + 104))(v5, *MEMORY[0x277CE0FE0], v2);

  v7 = sub_2381546CC();

  (*(v3 + 8))(v5, v2);
  sub_2381548DC();
  sub_2381538EC();
  *&v27[6] = *&v28[51];
  *&v27[22] = *&v28[59];
  *&v27[38] = v29;
  *&v30[0] = v6;
  WORD4(v30[0]) = 256;
  *(v30 + 10) = *v28;
  *(&v30[1] + 10) = *&v28[8];
  *(&v30[2] + 10) = *&v28[16];
  *(&v30[3] + 1) = *&v28[23];
  *&v21[31] = v30[2];
  *&v21[39] = v30[3];
  *&v21[15] = v30[0];
  *&v21[23] = v30[1];
  v31[0] = v7;
  v31[1] = 0;
  *v32 = 1;
  *&v32[48] = *(&v29 + 1);
  *&v32[34] = *&v27[32];
  *&v32[18] = *&v27[16];
  *&v32[2] = *v27;
  v26 = *&v32[48];
  v24 = *&v32[16];
  v25 = *&v32[32];
  v22 = v7;
  v23 = *v32;
  v8 = v30[0];
  v9 = v30[1];
  v10 = v30[3];
  *(a1 + 32) = v30[2];
  *(a1 + 48) = v10;
  *a1 = v8;
  *(a1 + 16) = v9;
  v11 = v22;
  v12 = v23;
  v13 = v24;
  v14 = v25;
  *(a1 + 128) = v26;
  *(a1 + 96) = v13;
  *(a1 + 112) = v14;
  *(a1 + 64) = v11;
  *(a1 + 80) = v12;
  v33[0] = v7;
  v33[1] = 0;
  v34 = 1;
  v35 = *v27;
  v36 = *&v27[16];
  *v37 = *&v27[32];
  *&v37[14] = *&v27[46];
  sub_2380712E4(v30, &v17, &unk_27DEEC9A0, &unk_23815CA00);
  sub_2380712E4(v31, &v17, &qword_27DEEB760, &qword_23815F800);
  sub_238071284(v33, &qword_27DEEB760, &qword_23815F800);
  v17 = v6;
  v18 = 256;
  v19 = *v28;
  v20 = *&v28[8];
  *v21 = *&v28[16];
  *&v21[7] = *&v28[23];
  return sub_238071284(&v17, &unk_27DEEC9A0, &unk_23815CA00);
}

uint64_t sub_2380F6768@<X0>(uint64_t *a2@<X8>)
{
  v2 = sub_238153D7C();
  MEMORY[0x28223BE20](v2 - 8);
  sub_238153D8C();
  v3 = sub_23815436C();
  v5 = v4;
  v7 = v6;
  sub_2381542BC();
  v8 = sub_23815435C();
  v10 = v9;
  v12 = v11;

  sub_238070490(v3, v5, v7 & 1);

  sub_238153F0C();
  v13 = sub_23815432C();
  v36 = v14;
  v37 = v13;
  v16 = v15;
  v35 = v17;
  sub_238070490(v8, v10, v12 & 1);

  sub_238153D6C();
  sub_238153D5C();
  sub_238153D4C();
  sub_238153D5C();
  sub_238153D9C();
  v18 = sub_23815436C();
  v20 = v19;
  v22 = v21;
  sub_23815424C();
  v23 = sub_23815435C();
  v25 = v24;
  LOBYTE(v3) = v26;

  sub_238070490(v18, v20, v22 & 1);

  sub_2381541DC();
  v27 = sub_2381542FC();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  sub_238070490(v23, v25, v3 & 1);

  *a2 = v37;
  a2[1] = v16;
  *(a2 + 16) = v35 & 1;
  a2[3] = v36;
  a2[4] = v27;
  a2[5] = v29;
  *(a2 + 48) = v31 & 1;
  a2[7] = v33;
  sub_238070430(v37, v16, v35 & 1);

  sub_238070430(v27, v29, v31 & 1);

  sub_238070490(v27, v29, v31 & 1);

  sub_238070490(v37, v16, v35 & 1);
}

void sub_2380F6A90(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_self() avatarImageRender];
  v3 = [v2 placeholderImageForSize:40.0 scale:{40.0, 5.0}];
  v4 = sub_23815466C();

  qword_27DEEC6C8 = v4;
}

uint64_t sub_2380F6B08@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v46 = a3;
  v4 = a1[7];
  v43 = a1[6];
  v44 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC848, &qword_23815C830);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v42 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC838, &qword_23815C828);
  MEMORY[0x28223BE20](v8);
  v10 = &v42 - v9;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC828, &qword_23815C820);
  MEMORY[0x28223BE20](v45);
  v12 = &v42 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC818, &qword_23815C818);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v19 = &v42 - v18;
  v20 = a1[1];
  if (v20 && v4)
  {
    v21 = *a1;
    v42 = v17;
    *v7 = sub_238153DEC();
    *(v7 + 1) = 0;
    v7[16] = 0;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC900, &qword_23815C8D0);
    sub_2380F6F84(v21, v20, v43, v4, v44, &v7[*(v22 + 44)]);
    sub_2381548EC();
    sub_238153A8C();
    sub_23807121C(v7, v10, &qword_27DEEC848, &qword_23815C830);
    v23 = &v10[*(v8 + 36)];
    v24 = v52;
    *(v23 + 4) = v51;
    *(v23 + 5) = v24;
    *(v23 + 6) = v53;
    v25 = v48;
    *v23 = v47;
    *(v23 + 1) = v25;
    v26 = v50;
    *(v23 + 2) = v49;
    *(v23 + 3) = v26;
    sub_2381545CC();
    v27 = sub_23815460C();

    LOBYTE(v21) = sub_2381540FC();
    sub_23807121C(v10, v12, &qword_27DEEC838, &qword_23815C828);
    v28 = &v12[*(v45 + 36)];
    *v28 = v27;
    v28[8] = v21;
    v29 = &v16[*(v13 + 36)];
    v30 = *(sub_238153A7C() + 20);
    v31 = *MEMORY[0x277CE0118];
    v32 = sub_238153DDC();
    (*(*(v32 - 8) + 104))(&v29[v30], v31, v32);
    __asm { FMOV            V0.2D, #20.0 }

    *v29 = _Q0;
    *&v29[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC338, &qword_23815BC80) + 36)] = 256;
    sub_23807121C(v12, v16, &qword_27DEEC828, &qword_23815C820);
    sub_23807121C(v16, v19, &qword_27DEEC818, &qword_23815C818);
    v38 = v46;
    sub_23807121C(v19, v46, &qword_27DEEC818, &qword_23815C818);
    return (*(v42 + 56))(v38, 0, 1, v13);
  }

  else
  {
    v40 = *(v17 + 56);
    v41 = v46;

    return v40(v41, 1, 1, v13);
  }
}

uint64_t sub_2380F6F84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v64 = a4;
  v65 = a5;
  v60[1] = a3;
  v63 = a6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC908, &qword_23815C8D8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v60 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC910, &qword_23815C8E0);
  v12 = MEMORY[0x28223BE20](v11);
  v62 = v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = v60 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = v60 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC8E0, &unk_23815C8B0);
  v20 = v19 - 8;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = v60 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v60 - v24;
  v26 = objc_opt_self();

  v27 = [v26 avatarImageRender];
  v28 = [v27 placeholderImageForSize:40.0 scale:{40.0, 5.0}];
  v61 = sub_23815466C();

  sub_2381547EC();
  LOBYTE(v27) = sub_23815412C();
  sub_23815377C();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v37 = &v25[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC8F0, &qword_23815C8C0) + 36)];
  *v37 = v27;
  *(v37 + 1) = v30;
  *(v37 + 2) = v32;
  *(v37 + 3) = v34;
  *(v37 + 4) = v36;
  v37[40] = 0;
  v38 = sub_23815414C();
  v39 = &v25[*(v20 + 44)];
  *v39 = v38;
  *(v39 + 8) = 0u;
  *(v39 + 24) = 0u;
  v39[40] = 1;
  *v10 = sub_238153DEC();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v40 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC918, &qword_23815C8E8) + 44)];
  v41 = v65;
  v64 = a1;
  v65 = a2;
  sub_2380F7494(v41, a1, a2, v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAAE8, &qword_23815C8F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_238158810;
  LOBYTE(v27) = sub_23815412C();
  *(inited + 32) = v27;
  v43 = sub_23815414C();
  *(inited + 33) = v43;
  v44 = sub_23815413C();
  sub_23815413C();
  if (sub_23815413C() != v27)
  {
    v44 = sub_23815413C();
  }

  sub_23815413C();
  if (sub_23815413C() != v43)
  {
    v44 = sub_23815413C();
  }

  sub_23815377C();
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v52 = v51;
  sub_23807121C(v10, v16, &qword_27DEEC908, &qword_23815C8D8);
  v53 = &v16[*(v11 + 36)];
  *v53 = v44;
  *(v53 + 1) = v46;
  *(v53 + 2) = v48;
  *(v53 + 3) = v50;
  *(v53 + 4) = v52;
  v53[40] = 0;
  sub_23807121C(v16, v18, &qword_27DEEC910, &qword_23815C8E0);
  sub_2380712E4(v25, v23, &qword_27DEEC8E0, &unk_23815C8B0);
  v54 = v62;
  sub_2380712E4(v18, v62, &qword_27DEEC910, &qword_23815C8E0);
  v55 = v25;
  v56 = v63;
  v57 = v65;
  *v63 = v64;
  v56[1] = v57;
  v56[2] = v61;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC920, &qword_23815C8F8);
  sub_2380712E4(v23, v56 + *(v58 + 48), &qword_27DEEC8E0, &unk_23815C8B0);
  sub_2380712E4(v54, v56 + *(v58 + 64), &qword_27DEEC910, &qword_23815C8E0);

  sub_238071284(v18, &qword_27DEEC910, &qword_23815C8E0);
  sub_238071284(v55, &qword_27DEEC8E0, &unk_23815C8B0);
  sub_238071284(v54, &qword_27DEEC910, &qword_23815C8E0);
  sub_238071284(v23, &qword_27DEEC8E0, &unk_23815C8B0);
}