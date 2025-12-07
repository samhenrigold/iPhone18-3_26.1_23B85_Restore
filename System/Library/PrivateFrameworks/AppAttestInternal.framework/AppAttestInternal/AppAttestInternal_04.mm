uint64_t sub_2261D535C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78E238, &qword_2261E8B88);
    v2 = sub_2261E41CC();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_226198CB8(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_22619A7A4(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_22619A7A4(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_22619A7A4(v31, v32);
    result = sub_2261E40BC();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_22619A7A4(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_2261D5624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[93] = v6;
  v7[92] = a6;
  v7[91] = a5;
  v7[90] = a4;
  v7[89] = a3;
  v7[88] = a2;
  v7[87] = a1;
  v8 = sub_2261E3CDC();
  v7[94] = v8;
  v7[95] = *(v8 - 8);
  v7[96] = swift_task_alloc();
  v7[97] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D78E1A0, &qword_2261E89A0);
  v7[98] = swift_task_alloc();
  v9 = sub_2261E393C();
  v7[99] = v9;
  v7[100] = *(v9 - 8);
  v7[101] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2261D5794, 0, 0);
}

uint64_t sub_2261D5794()
{
  sub_2261D7344(*(v0 + 704), *(v0 + 712), *(v0 + 720), *(v0 + 736), *(v0 + 784));
  v1 = *(v0 + 784);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = *v1;
    v3 = v1[1];
    v4 = *(v1 + 16);
    *(v0 + 520) = *v1;
    *(v0 + 528) = v3;
    *(v0 + 536) = v4;
    sub_22619C7B4();
    swift_willThrowTypedImpl();
    swift_allocError();
    *v5 = v2;
    *(v5 + 8) = v3;
    *(v5 + 16) = v4;

    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    v8 = 0xD00000000000001CLL;
    v9 = *(v0 + 712);
    (*(*(v0 + 800) + 32))(*(v0 + 808), v1, *(v0 + 792));
    v10 = v9[3];
    v11 = v9[4];
    __swift_project_boxed_opaque_existential_0(v9, v10);
    *(v0 + 538) = (*(v11 + 24))(v10, v11) & 1;
    *(v0 + 572) = 1;
    sub_2261AF3A8();
    sub_2261E3EFC();
    sub_2261E3EFC();
    if (*(v0 + 608) == *(v0 + 576) && *(v0 + 616) == *(v0 + 584))
    {

      v12 = "x-apple-client-appid";
    }

    else
    {
      v13 = sub_2261E425C();

      if (v13)
      {
        v12 = "x-apple-client-appid";
      }

      else
      {
        v8 = 0xD000000000000028;
        v12 = "register.appattest.apple.com";
      }
    }

    v14 = *(v0 + 760);
    v15 = *(v0 + 752);
    v16 = *(v0 + 744);
    v17 = v12 | 0x8000000000000000;
    v18 = *(v16 + OBJC_IVAR____TtC17AppAttestInternal18AttestationManager_auditToken + 16);
    *(v0 + 540) = *(v16 + OBJC_IVAR____TtC17AppAttestInternal18AttestationManager_auditToken);
    *(v0 + 556) = v18;
    v19 = type metadata accessor for AttestationManager.URLDelegate(0);
    v20 = objc_allocWithZone(v19);
    v21 = OBJC_IVAR____TtCC17AppAttestInternal18AttestationManagerP33_6A9676F167D55AEBDBB586D6DBA1125411URLDelegate_logger;
    v22 = sub_2261A5248();
    v23 = *(v14 + 16);
    *(v0 + 816) = v23;
    *(v0 + 824) = (v14 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v23(&v20[v21], v22, v15);
    *&v20[OBJC_IVAR____TtCC17AppAttestInternal18AttestationManagerP33_6A9676F167D55AEBDBB586D6DBA1125411URLDelegate____lazy_storage___securityController] = 0;
    v24 = &v20[OBJC_IVAR____TtCC17AppAttestInternal18AttestationManagerP33_6A9676F167D55AEBDBB586D6DBA1125411URLDelegate_host];
    *v24 = v8;
    v24[1] = v17;
    v25 = &v20[OBJC_IVAR____TtCC17AppAttestInternal18AttestationManagerP33_6A9676F167D55AEBDBB586D6DBA1125411URLDelegate_auditToken];
    v26 = *(v0 + 556);
    *v25 = *(v0 + 540);
    *(v25 + 1) = v26;
    *(v0 + 592) = v20;
    *(v0 + 600) = v19;
    v27 = objc_msgSendSuper2((v0 + 592), sel_init);
    *(v0 + 832) = v27;
    v28 = [objc_opt_self() defaultSessionConfiguration];
    v29 = [objc_opt_self() sessionWithConfiguration:v28 delegate:v27 delegateQueue:0];
    *(v0 + 840) = v29;

    v30 = [v29 configuration];
    [v30 setTimeoutIntervalForResource_];

    v31 = swift_task_alloc();
    *(v0 + 848) = v31;
    *v31 = v0;
    v31[1] = sub_2261D5BC8;
    v32 = *(v0 + 808);

    return MEMORY[0x28211ECF8](v32, 0);
  }
}

uint64_t sub_2261D5BC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[107] = a1;
  v5[108] = a2;
  v5[109] = a3;
  v5[110] = v3;

  if (v3)
  {
    v6 = sub_2261D7274;
  }

  else
  {
    v6 = sub_2261D5CE8;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2261D5CE8()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (!v1)
  {
    v143 = *(v0 + 872);
    v147 = *(v0 + 856);
    v151 = *(v0 + 864);
    v14 = *(v0 + 696);
    v15 = sub_2261E3FFC();
    sub_2261E410C();
    MEMORY[0x22AA782B0](0xD00000000000003ALL, 0x80000002261EDF60);
    v16 = sub_2261E423C();
    MEMORY[0x22AA782B0](v16);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v15, 0, 0xE000000000000000, 0xD00000000000006CLL, 0x80000002261EDEF0, 134);

    sub_22619C840(v147, v151);
    *v14 = 0xD000000000000037;
    *(v14 + 8) = 0x80000002261EDFA0;
    *(v14 + 16) = 0x80;
LABEL_59:
    sub_2261E406C();
    sub_2261C3440();
    sub_2261E434C();
LABEL_35:
    swift_storeEnumTagMultiPayload();
    v57 = *(v0 + 840);
    v58 = *(v0 + 832);
    v59 = *(v0 + 808);
    v60 = *(v0 + 800);
    v61 = *(v0 + 792);
    [v57 finishTasksAndInvalidate];

    (*(v60 + 8))(v59, v61);

    v62 = *(v0 + 8);
    goto LABEL_40;
  }

  v2 = v1;
  if ([v1 statusCode] != 200)
  {
    v17 = sub_2261E3DAC();
    v18 = [v2 valueForHTTPHeaderField_];

    if (v18)
    {
      v19 = sub_2261E3DDC();
      v144 = v20;
      v148 = v19;
    }

    else
    {
      v144 = 0;
      v148 = 0;
    }

    v21 = sub_2261E3DAC();
    v22 = [v2 valueForHTTPHeaderField_];

    if (v22)
    {
      v23 = sub_2261E3DDC();
      v134 = v24;
      v135 = v23;
    }

    else
    {
      v134 = 0;
      v135 = 0;
    }

    v25 = *(v0 + 768);
    v26 = *(v0 + 760);
    v155 = *(v0 + 752);
    (*(v0 + 816))(v25, *(v0 + 744) + OBJC_IVAR____TtC17AppAttestInternal18AttestationManager_logger);
    v152 = sub_2261E3FFC();
    sub_2261E410C();
    MEMORY[0x22AA782B0](0xD000000000000031, 0x80000002261EDFE0);
    *(v0 + 656) = [v2 &selRef_initWithDomain_code_userInfo_];
    v27 = sub_2261E423C();
    MEMORY[0x22AA782B0](v27);

    MEMORY[0x22AA782B0](0x737574617473202CLL, 0xE90000000000003DLL);
    v28 = [objc_opt_self() localizedStringForStatusCode_];
    v29 = sub_2261E3DDC();
    v31 = v30;

    MEMORY[0x22AA782B0](v29, v31);

    MEMORY[0x22AA782B0](0xD000000000000012, 0x80000002261EE020);
    if (v144)
    {
      v32 = v148;
    }

    else
    {
      v32 = 7104878;
    }

    if (v144)
    {
      v33 = v144;
    }

    else
    {
      v33 = 0xE300000000000000;
    }

    MEMORY[0x22AA782B0](v32, v33);

    MEMORY[0x22AA782B0](0x496563617274202CLL, 0xEA00000000003D44);
    if (v134)
    {
      v34 = v135;
    }

    else
    {
      v34 = 7104878;
    }

    if (v134)
    {
      v35 = v134;
    }

    else
    {
      v35 = 0xE300000000000000;
    }

    MEMORY[0x22AA782B0](v34, v35);

    MEMORY[0x22AA782B0](8236, 0xE200000000000000);
    v36 = sub_2261E423C();
    MEMORY[0x22AA782B0](v36);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v152, 0, 0xE000000000000000, 0xD00000000000006CLL, 0x80000002261EDEF0, 141);

    (*(v26 + 8))(v25, v155);
    if ([v2 &selRef_initWithDomain_code_userInfo_] >= 500 && objc_msgSend(v2, &selRef_initWithDomain_code_userInfo_) <= 599)
    {
      v55 = *(v0 + 864);
      v56 = *(v0 + 856);
      v39 = *(v0 + 696);

      sub_22619C840(v56, v55);
      *v39 = 0xD000000000000016;
      *(v39 + 8) = 0x80000002261EE040;
      v40 = 0x80;
    }

    else
    {
      v37 = *(v0 + 864);
      v38 = *(v0 + 856);
      v39 = *(v0 + 696);

      sub_22619C840(v38, v37);
      *v39 = 0xD000000000000016;
      *(v39 + 8) = 0x80000002261EE040;
      v40 = 64;
    }

    *(v39 + 16) = v40;
    sub_2261E406C();
    sub_2261C3440();
    sub_2261E434C();
    goto LABEL_35;
  }

  v3 = *(v0 + 712);
  v154 = sub_2261E400C();
  sub_2261E410C();
  MEMORY[0x22AA782B0](0xD000000000000034, 0x80000002261EE060);
  *(v0 + 664) = [v2 statusCode];
  v4 = sub_2261E423C();
  MEMORY[0x22AA782B0](v4);

  MEMORY[0x22AA782B0](0x737574617473202CLL, 0xE90000000000003DLL);
  v5 = [objc_opt_self() localizedStringForStatusCode_];
  v6 = sub_2261E3DDC();
  v8 = v7;

  MEMORY[0x22AA782B0](v6, v8);

  MEMORY[0x22AA782B0](32032, 0xE200000000000000);
  sub_2261A4EAC(v154, 0, 0xE000000000000000, 0xD00000000000006CLL, 0x80000002261EDEF0, 150);

  v9 = v3[3];
  v10 = v3[4];
  __swift_project_boxed_opaque_existential_0(v3, v9);
  v11 = (*(v10 + 16))(v9, v10);
  v12 = *(v0 + 880);
  if (v11)
  {
    if (v11 == 1)
    {
      v13 = (v0 + 344);
      sub_2261E396C();
      swift_allocObject();
      sub_2261E395C();
      *(v0 + 368) = &type metadata for WebAttestation;
      *(v0 + 376) = sub_2261D9C78();
      sub_2261D3604();
    }

    else
    {
      v13 = (v0 + 304);
      sub_2261E396C();
      swift_allocObject();
      sub_2261E395C();
      *(v0 + 328) = &type metadata for DeviceAttestation;
      *(v0 + 336) = sub_2261D9BD4();
      sub_2261D3794();
    }

    sub_2261E394C();
    if (v12)
    {
      v48 = *(v0 + 864);
      v49 = *(v0 + 856);
      v50 = *(v0 + 840);
      v51 = *(v0 + 832);
      v52 = *(v0 + 808);
      v53 = *(v0 + 800);
      v54 = *(v0 + 792);

      sub_22619C840(v49, v48);

      __swift_deallocate_boxed_opaque_existential_1(v13);
      [v50 finishTasksAndInvalidate];

      (*(v53 + 8))(v52, v54);
      goto LABEL_39;
    }

LABEL_36:

    sub_2261795DC(v13, v0 + 264);
    v63 = *(v0 + 288);
    v64 = *(v0 + 296);
    __swift_project_boxed_opaque_existential_0((v0 + 264), v63);
    (*(v64 + 32))(v63, v64);
    v65 = sub_2261E3B5C();
    v67 = v66;

    if (v67 >> 60 == 15)
    {
LABEL_37:
      v149 = *(v0 + 864);
      v140 = *(v0 + 872);
      v145 = *(v0 + 856);
      v68 = *(v0 + 696);
      v69 = sub_2261E3FFC();
      sub_2261E410C();

      __swift_project_boxed_opaque_existential_0((v0 + 264), *(v0 + 288));
      v70 = sub_2261E423C();
      MEMORY[0x22AA782B0](v70);

      MEMORY[0x22AA782B0](8236, 0xE200000000000000);
      v71 = sub_2261E423C();
      MEMORY[0x22AA782B0](v71);

      MEMORY[0x22AA782B0](32032, 0xE200000000000000);
      sub_2261A4EAC(v69, 0xD000000000000025, 0x80000002261EE0A0, 0xD00000000000006CLL, 0x80000002261EDEF0, 164);

      sub_22619C840(v145, v149);
      __swift_destroy_boxed_opaque_existential_0((v0 + 264));
      *v68 = 0xD000000000000022;
      *(v68 + 8) = 0x80000002261EE0D0;
      *(v68 + 16) = 1;
      goto LABEL_59;
    }

    v72 = sub_2261D83B0(&OBJC_IVAR____TtC17AppAttestInternal18AttestationManager____lazy_storage___securityController, &OBJC_IVAR____TtC17AppAttestInternal18AttestationManager_auditToken);
    v74 = sub_2261A180C(v65, v67);

    if (!v74)
    {
      sub_2261A28B8(v65, v67);
      goto LABEL_37;
    }

    v75 = *(v0 + 712);
    v76 = v75[3];
    v77 = v75[4];
    __swift_project_boxed_opaque_existential_0(v75, v76);
    *(v0 + 575) = (*(v77 + 16))(v76, v77);
    *(v0 + 574) = 1;
    sub_2261D2FBC();
    if (sub_2261E3D9C())
    {
      v78 = *(v0 + 872);
      v79 = *(v0 + 864);
      v80 = *(v0 + 856);
      v81 = *(v0 + 728);
      v82 = *(v0 + 696);
      nullsub_1();
      v84 = v83;
      sub_2261A28B8(v65, v67);

      sub_22619C840(v80, v79);
      __swift_destroy_boxed_opaque_existential_0((v0 + 264));
      *(v0 + 672) = v84;
LABEL_49:
      v93 = swift_dynamicCast();
      (*(*(v81 - 8) + 56))(v82, v93 ^ 1u, 1, v81);
      goto LABEL_59;
    }

    v85 = *(v0 + 712);
    v86 = v85[3];
    v87 = v85[4];
    __swift_project_boxed_opaque_existential_0(v85, v86);
    *(v0 + 573) = (*(v87 + 16))(v86, v87);
    *(v0 + 888) = 2;
    if (sub_2261E3D9C())
    {
      v88 = *(v0 + 872);
      v89 = *(v0 + 864);
      v90 = *(v0 + 856);
      v81 = *(v0 + 728);
      v82 = *(v0 + 696);
      nullsub_1();
      v92 = v91;
      sub_2261A28B8(v65, v67);

      sub_22619C840(v90, v89);
      __swift_destroy_boxed_opaque_existential_0((v0 + 264));
      *(v0 + 680) = v92;
      goto LABEL_49;
    }

    v94 = *(v0 + 712);
    v95 = v94[3];
    v96 = v94[4];
    __swift_project_boxed_opaque_existential_0(v94, v95);
    *(v0 + 539) = (*(v96 + 16))(v95, v96);
    *(v0 + 537) = 0;
    sub_22619F798();
    sub_2261E3EFC();
    sub_2261E3EFC();
    if (*(v0 + 624) == *(v0 + 640) && *(v0 + 632) == *(v0 + 648))
    {
    }

    else
    {
      v97 = sub_2261E425C();

      if ((v97 & 1) == 0)
      {
LABEL_58:

        v139 = *(v0 + 872);
        v142 = *(v0 + 864);
        v105 = *(v0 + 856);
        v106 = *(v0 + 696);
        v107 = sub_2261E3FFC();
        sub_2261E410C();

        v108 = sub_2261E423C();
        MEMORY[0x22AA782B0](v108);

        MEMORY[0x22AA782B0](32032, 0xE200000000000000);
        sub_2261A4EAC(v107, 0xD000000000000018, 0x80000002261EE100, 0xD00000000000006CLL, 0x80000002261EDEF0, 180);

        sub_2261A28B8(v65, v67);

        sub_22619C840(v105, v142);
        __swift_destroy_boxed_opaque_existential_0((v0 + 264));
        *v106 = 0xD000000000000015;
        *(v106 + 8) = 0x80000002261EE120;
        *(v106 + 16) = 1;
        goto LABEL_59;
      }
    }

    sub_2261A6578(*(v0 + 712), v0 + 384);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D78E188, &qword_2261E8990);
    if (swift_dynamicCast())
    {
      v136 = *(v0 + 184);
      v137 = *(v0 + 200);
      v138 = *(v0 + 192);
      v141 = *(v0 + 216);
      v146 = *(v0 + 208);
      sub_2261A6578(v0 + 264, v0 + 424);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78E1E0, &qword_2261E89A8);
      if ((swift_dynamicCast() & 1) != 0 && (v98 = sub_2261E3B5C(), v100 = v99, , , v100 >> 60 != 15))
      {
        v130 = v100;
        v132 = v98;
        v109 = *(v0 + 744);
        v110 = OBJC_IVAR____TtC17AppAttestInternal18AttestationManager____lazy_storage___securityController;
        v111 = *(v109 + OBJC_IVAR____TtC17AppAttestInternal18AttestationManager____lazy_storage___securityController);
        v112 = sub_2261B515C();

        if (v112)
        {
          v113 = *(v109 + v110);
          v133 = sub_2261A2234();
          v115 = v114;
          v117 = v116;
          v119 = v118;

          v150 = v115;
          v153 = v117;
          v128 = v119;
        }

        else
        {
          v133 = 0;
          v128 = 0;
          v150 = 0xF000000000000000;
          v153 = 0;
        }

        v120 = *(v0 + 872);
        v121 = *(v0 + 864);
        v122 = *(v0 + 856);
        v123 = *(v0 + 728);
        v156 = *(v0 + 696);
        sub_22619D8F4(v138, v137);
        sub_22619D664(v138, v137, v74, v132, v130, v133, v150, v153, (v0 + 16), v128);
        sub_2261A28B8(v65, v67);

        sub_22619C840(v122, v121);

        sub_22619C840(v138, v137);
        sub_22619C840(v146, v141);
        __swift_destroy_boxed_opaque_existential_0((v0 + 264));
        v124 = *(v0 + 16);
        *(v0 + 104) = *(v0 + 32);
        v125 = *(v0 + 64);
        *(v0 + 120) = *(v0 + 48);
        *(v0 + 136) = v125;
        *(v0 + 152) = *(v0 + 80);
        *(v0 + 88) = v124;
        v126 = swift_dynamicCast();
        (*(*(v123 - 8) + 56))(v156, v126 ^ 1u, 1, v123);
      }

      else
      {

        v127 = *(v0 + 872);
        v129 = *(v0 + 856);
        v131 = *(v0 + 864);
        v101 = *(v0 + 696);
        v102 = sub_2261E3FFC();
        sub_2261E410C();

        __swift_project_boxed_opaque_existential_0((v0 + 264), *(v0 + 288));
        v103 = sub_2261E423C();
        MEMORY[0x22AA782B0](v103);

        MEMORY[0x22AA782B0](8236, 0xE200000000000000);
        v104 = sub_2261E423C();
        MEMORY[0x22AA782B0](v104);

        MEMORY[0x22AA782B0](32032, 0xE200000000000000);
        sub_2261A4EAC(v102, 0xD00000000000001BLL, 0x80000002261EE140, 0xD00000000000006CLL, 0x80000002261EDEF0, 186);

        sub_2261A28B8(v65, v67);

        sub_22619C840(v129, v131);

        sub_22619C840(v138, v137);
        sub_22619C840(v146, v141);
        __swift_destroy_boxed_opaque_existential_0((v0 + 264));
        *v101 = 0xD000000000000018;
        *(v101 + 8) = 0x80000002261EE160;
        *(v101 + 16) = 1;
      }

      goto LABEL_59;
    }

    goto LABEL_58;
  }

  v13 = (v0 + 224);
  sub_2261E396C();
  swift_allocObject();
  sub_2261E395C();
  *(v0 + 248) = &type metadata for AppAttestation;
  *(v0 + 256) = sub_2261D9CCC();
  *(v0 + 224) = swift_allocObject();
  sub_2261D34C8();
  sub_2261E394C();
  if (!v12)
  {
    goto LABEL_36;
  }

  v41 = *(v0 + 864);
  v42 = *(v0 + 856);
  v43 = *(v0 + 840);
  v44 = *(v0 + 832);
  v45 = *(v0 + 808);
  v46 = *(v0 + 800);
  v47 = *(v0 + 792);

  sub_22619C840(v42, v41);

  __swift_deallocate_boxed_opaque_existential_1(v0 + 224);
  [v43 finishTasksAndInvalidate];

  (*(v46 + 8))(v45, v47);
LABEL_39:

  v62 = *(v0 + 8);
LABEL_40:

  return v62();
}

uint64_t sub_2261D7274()
{
  v1 = v0[105];
  v2 = v0[104];
  v3 = v0[101];
  v4 = v0[100];
  v5 = v0[99];
  [v1 finishTasksAndInvalidate];

  (*(v4 + 8))(v3, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_2261D7344@<X0>(uint64_t a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t *a5@<X8>)
{
  v112 = a2;
  v110 = a5;
  v8 = sub_2261E393C();
  v106 = *(v8 - 8);
  v107 = v8;
  MEMORY[0x28223BE20](v8);
  v108 = &v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DD90, &qword_2261E89B0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v96 - v11;
  v13 = sub_2261E3B2C();
  v109 = *(v13 - 8);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v96 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v96 - v17;
  v19 = sub_2261E398C();
  MEMORY[0x28223BE20](v19 - 8);
  sub_2261E39CC();
  swift_allocObject();
  v20 = sub_2261E39BC();
  sub_2261E397C();
  sub_2261E399C();
  v21 = v113;
  v22 = sub_2261E39AC();
  if (v21)
  {
  }

  v98 = v16;
  v99 = v12;
  v102 = a4;
  v103 = a1;
  v105 = a3;
  v100 = v18;
  v101 = v13;
  v113 = v20;
  v104 = 0;
  v24 = v23;
  v25 = v112;
  v26 = v112[3];
  v27 = v112[4];
  v28 = v22;
  __swift_project_boxed_opaque_existential_0(v112, v26);
  v29 = (*(v27 + 40))(v26, v27);
  v30 = sub_2261E3B8C();
  v31 = sub_2261C8E9C(v29, v30);
  v33 = v32;
  v35 = v34;

  if ((v35 & 0x100) != 0)
  {
    *atoken.val = v31;
    *&atoken.val[2] = v33;
    v38 = v35 & 1;
    LOBYTE(atoken.val[4]) = v38;
    sub_22619C7B4();
    swift_willThrowTypedImpl();
    swift_allocError();
    *v39 = v31;
    *(v39 + 8) = v33;
    *(v39 + 16) = v38;
    sub_22619C840(v28, v24);
  }

  v36 = v28;
  v97 = v24;
  if (!v31)
  {
LABEL_10:
    v41 = sub_2261E3FEC();
    *atoken.val = 0;
    *&atoken.val[2] = 0xE000000000000000;
    sub_2261E410C();

    *atoken.val = 0xD00000000000001ALL;
    *&atoken.val[2] = 0x80000002261EE180;
    v42 = sub_2261E423C();
    MEMORY[0x22AA782B0](v42);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v41, *atoken.val, *&atoken.val[2], 0xD00000000000006CLL, 0x80000002261EDEF0, 243);

    v43 = 0x80000002261EE1A0;
    sub_22619C840(v28, v97);

    v44 = 0xD000000000000017;
LABEL_11:
    v45 = v110;
    *v110 = v44;
    v45[1] = v43;
    *(v45 + 16) = 1;
LABEL_12:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D78E1A0, &qword_2261E89A0);
    return swift_storeEnumTagMultiPayload();
  }

  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    sub_2261795CC(v31, v33, v35, 0);
    goto LABEL_10;
  }

  *atoken.val = xmmword_2261E6D40;
  sub_2261E3BAC();
  sub_2261795CC(v31, v33, v35, 0);
  v37 = *&atoken.val[2];
  if (*&atoken.val[2] >> 60 == 15)
  {
    goto LABEL_10;
  }

  v46 = *atoken.val;
  sub_2261A2B90();

  sub_2261CF300(MEMORY[0x277D837D0], &atoken);

  v96 = v46;
  if (*&atoken.val[2])
  {
    v47 = *&atoken.val[2];
    v48 = *atoken.val;
    v49 = sub_2261E400C();
    *atoken.val = 0;
    *&atoken.val[2] = 0xE000000000000000;
    sub_2261E410C();

    *atoken.val = 0xD00000000000001DLL;
    *&atoken.val[2] = 0x80000002261EE260;
    MEMORY[0x22AA782B0](v48, v47);
    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v49, *atoken.val, *&atoken.val[2], 0xD00000000000006CLL, 0x80000002261EDEF0, 252);

    v50 = v101;
    v51 = v109;
    v52 = v100;
    v53 = v99;
    v54 = v98;
  }

  else
  {
    v55 = v25[3];
    v56 = v25[4];
    __swift_project_boxed_opaque_existential_0(v25, v55);
    LOBYTE(v114) = (*(v56 + 24))(v55, v56) & 1;
    v119 = 1;
    sub_2261AF3A8();
    sub_2261E3EFC();
    sub_2261E3EFC();
    v50 = v101;
    if (*atoken.val == v117 && *&atoken.val[2] == v118)
    {

      v54 = v98;
    }

    else
    {
      sub_2261E425C();

      v54 = v98;
    }

    v51 = v109;
    v52 = v100;
    v53 = v99;
  }

  sub_2261E3B1C();

  if ((*(v51 + 48))(v53, 1, v50) == 1)
  {
    sub_2261D9D20(v53);
    v57 = sub_2261E3FEC();
    *atoken.val = 0;
    *&atoken.val[2] = 0xE000000000000000;
    sub_2261E410C();

    *atoken.val = 0xD000000000000018;
    *&atoken.val[2] = 0x80000002261EE1C0;
    v58 = sub_2261E423C();
    MEMORY[0x22AA782B0](v58);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v57, *atoken.val, *&atoken.val[2], 0xD00000000000006CLL, 0x80000002261EDEF0, 259);

    sub_22619C840(v36, v97);
    sub_2261A28B8(v96, v37);

    v59 = v110;
    *v110 = 0xD000000000000015;
    v59[1] = 0x80000002261EE1E0;
    *(v59 + 16) = 1;
    goto LABEL_12;
  }

  v105 = v37;
  (*(v51 + 32))(v52, v53, v50);
  (*(v51 + 16))(v54, v52, v50);
  v60 = v108;
  sub_2261E390C();
  sub_2261E38FC();
  v61 = v112[3];
  v62 = v112[4];
  __swift_project_boxed_opaque_existential_0(v112, v61);
  (*(v62 + 32))(v61, v62);
  sub_2261E392C();

  result = sub_2261E392C();
  v117 = 0;
  v118 = 0xE000000000000000;
  v63 = v97;
  v64 = v97 >> 62;
  if ((v97 >> 62) > 1)
  {
    v66 = 0;
    v65 = v36;
    if (v64 != 2)
    {
      goto LABEL_33;
    }

    v68 = *(v36 + 16);
    v67 = *(v36 + 24);
    v69 = __OFSUB__(v67, v68);
    v66 = v67 - v68;
    if (!v69)
    {
      goto LABEL_32;
    }

    __break(1u);
  }

  else
  {
    v65 = v36;
    if (!v64)
    {
      v66 = BYTE6(v97);
LABEL_33:
      *atoken.val = v66;
      v70 = sub_2261E423C();
      MEMORY[0x22AA782B0](v70);

      sub_2261E392C();

      sub_22619D8F4(v65, v63);
      sub_2261E391C();
      v71 = v96;
      v72 = v105;
      sub_2261E3B9C();
      sub_2261E392C();

      v73 = *(v111 + OBJC_IVAR____TtC17AppAttestInternal18AttestationManager_auditToken + 16);
      *atoken.val = *(v111 + OBJC_IVAR____TtC17AppAttestInternal18AttestationManager_auditToken);
      *&atoken.val[4] = v73;
      v74 = audit_token_to_pid(&atoken);
      v75 = sub_2261A0BA4(v74);
      if (v76)
      {
        v77 = v76;
        v78 = v75;
        sub_2261D8278();
        v79 = sub_2261A3D28();
        v81 = v80;

        *atoken.val = 0;
        *&atoken.val[2] = 0xE000000000000000;
        sub_2261E410C();

        *atoken.val = 0x7365747441707041;
        *&atoken.val[2] = 0xEB00000000282074;
        if (v81)
        {
          v82 = v112[3];
          v83 = v112[4];
          __swift_project_boxed_opaque_existential_0(v112, v82);
          v84 = (*(v83 + 16))(v82, v83);
          v85 = sub_2261CF6F4(v84);
          MEMORY[0x22AA782B0](v85);

          MEMORY[0x22AA782B0](0x202D2029302E312DLL, 0xE800000000000000);
          v114 = 30240;
          v115 = 0xE200000000000000;
          MEMORY[0x22AA782B0](v79, v81);

          v87 = v114;
          v86 = v115;
          v114 = v78;
          v115 = v77;

          MEMORY[0x22AA782B0](v87, v86);

          MEMORY[0x22AA782B0](v114, v115);

          v88 = v108;
          sub_2261E392C();

          sub_2261A28B8(v96, v105);
        }

        else
        {
          v92 = v112[3];
          v93 = v112[4];
          __swift_project_boxed_opaque_existential_0(v112, v92);
          v94 = (*(v93 + 16))(v92, v93);
          v95 = sub_2261CF6F4(v94);
          MEMORY[0x22AA782B0](v95);

          MEMORY[0x22AA782B0](0x202D2029302E312DLL, 0xE800000000000000);
          MEMORY[0x22AA782B0](v78, v77);

          v88 = v108;
          sub_2261E392C();

          sub_2261A28B8(v96, v105);
        }

        sub_22619C840(v36, v97);
        (*(v109 + 8))(v100, v101);
        (*(v106 + 32))(v110, v88, v107);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D78E1A0, &qword_2261E89A0);
        return swift_storeEnumTagMultiPayload();
      }

      v112 = v65;
      v89 = sub_2261E3FEC();
      *atoken.val = 0;
      *&atoken.val[2] = 0xE000000000000000;
      sub_2261E410C();

      *atoken.val = 0xD000000000000023;
      *&atoken.val[2] = 0x80000002261EE200;
      sub_2261DA494(&unk_27D78E200, MEMORY[0x277CC8678], MEMORY[0x277CC8698]);
      v90 = v107;
      v91 = sub_2261E423C();
      MEMORY[0x22AA782B0](v91);

      MEMORY[0x22AA782B0](32032, 0xE200000000000000);
      sub_2261A4EAC(v89, *atoken.val, *&atoken.val[2], 0xD00000000000006CLL, 0x80000002261EDEF0, 273);

      v43 = 0x80000002261EE230;
      sub_2261A28B8(v71, v72);
      sub_22619C840(v112, v97);
      (*(v106 + 8))(v60, v90);
      (*(v109 + 8))(v100, v101);
      v44 = 0xD000000000000020;
      goto LABEL_11;
    }
  }

  LODWORD(v66) = HIDWORD(v65) - v65;
  if (__OFSUB__(HIDWORD(v65), v65))
  {
    goto LABEL_40;
  }

  v66 = v66;
LABEL_32:
  if ((v66 & 0x8000000000000000) == 0)
  {
    goto LABEL_33;
  }

  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

char *sub_2261D8278()
{
  v1 = OBJC_IVAR____TtC17AppAttestInternal18AttestationManager____lazy_storage___bundleRecordController;
  if (*(v0 + OBJC_IVAR____TtC17AppAttestInternal18AttestationManager____lazy_storage___bundleRecordController))
  {
    v2 = *(v0 + OBJC_IVAR____TtC17AppAttestInternal18AttestationManager____lazy_storage___bundleRecordController);
  }

  else
  {
    type metadata accessor for BundleRecordController(0);
    v2 = sub_2261A2BE4(*(v0 + OBJC_IVAR____TtC17AppAttestInternal18AttestationManager_auditToken), *(v0 + OBJC_IVAR____TtC17AppAttestInternal18AttestationManager_auditToken + 8), *(v0 + OBJC_IVAR____TtC17AppAttestInternal18AttestationManager_auditToken + 16), *(v0 + OBJC_IVAR____TtC17AppAttestInternal18AttestationManager_auditToken + 24));
    *(v0 + v1) = v2;
  }

  return v2;
}

id sub_2261D83B0(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    type metadata accessor for SecurityController(0);
    v7 = (v2 + *a2);
    v8 = v2;
    v9 = sub_2261A0FCC(*v7, v7[1], v7[2], v7[3]);
    v10 = *(v2 + v3);
    *(v8 + v3) = v9;
    v5 = v9;

    v4 = 0;
  }

  v11 = v4;
  return v5;
}

id sub_2261D8464()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AttestationManager.URLDelegate(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2261D85E8()
{
  result = qword_27D78E198;
  if (!qword_27D78E198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D78E198);
  }

  return result;
}

uint64_t sub_2261D863C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DFE8, &qword_2261E6FC8);
  v33 = v4;
  result = sub_2261E41AC();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_22619A7A4(v24, v34);
      }

      else
      {
        sub_226198CB8(v24, v34);
      }

      sub_2261E42EC();
      sub_2261E3E6C();
      result = sub_2261E430C();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_22619A7A4(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

_OWORD *sub_2261D88F4(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2261A48EC(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_2261D8AB0();
      v11 = v19;
      goto LABEL_8;
    }

    sub_2261D863C(v16, a4 & 1);
    v11 = sub_2261A48EC(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_2261E428C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v22);

    return sub_22619A7A4(a1, v22);
  }

  else
  {
    sub_2261D8A44(v11, a2, a3, a1, v21);
  }
}

_OWORD *sub_2261D8A44(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_22619A7A4(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void *sub_2261D8AB0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DFE8, &qword_2261E6FC8);
  v2 = *v0;
  v3 = sub_2261E419C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_226198CB8(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_22619A7A4(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

unint64_t sub_2261D8C54(__int128 *a1, uint64_t a2)
{
  v103 = &type metadata for AppAttestationRequestContext;
  v4 = sub_2261AF5C4();
  v104 = v4;
  v5 = swift_allocObject();
  v102[0] = v5;
  v6 = *a1;
  v7 = a1[1];
  v5[1] = *a1;
  v5[2] = v7;
  v8 = a1[2];
  v9 = a1[3];
  v5[3] = v8;
  v5[4] = v9;
  v105[0] = v6;
  v105[1] = v7;
  v105[2] = v8;
  v105[3] = v9;
  sub_2261AF618(a1, &v98);
  v10 = sub_2261D97B8(v105);
  if (v11 >> 60 == 15)
  {
    v12 = sub_2261E3FFC();
    sub_2261A4EAC(v12, 0xD000000000000019, 0x80000002261EE3A0, 0xD00000000000006CLL, 0x80000002261EDEF0, 297);
LABEL_18:
    v38 = 0;
    goto LABEL_19;
  }

  v87[1] = a2;
  v88 = v11;
  v89 = v10;
  v13 = *(v4 + 16);
  LOBYTE(v92) = v13(&type metadata for AppAttestationRequestContext, v4);
  LOBYTE(v90) = 0;
  sub_22619F798();
  sub_2261E3EFC();
  sub_2261E3EFC();
  if (v98 == v94)
  {

    goto LABEL_6;
  }

  v14 = sub_2261E425C();

  if (v14)
  {
LABEL_6:
    v15 = (*(v4 + 40))(&type metadata for AppAttestationRequestContext, v4);
    v16 = SecKeyCopyAttributes(v15);

    if (v16)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        *&v98 = 0;
        sub_2261E3D5C();

        v17 = v98;
        if (v98)
        {
          v18 = sub_2261E3DDC();
          if (*(v17 + 16))
          {
            v20 = sub_2261A48EC(v18, v19);
            v22 = v21;

            if (v22)
            {
              sub_226198CB8(*(v17 + 56) + 32 * v20, &v92);

              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DFD8, qword_2261E6E00);
              v23 = swift_allocObject();
              *(v23 + 16) = xmmword_2261E8980;
              *(v23 + 32) = sub_2261E3DDC();
              v87[0] = v23 + 32;
              *(v23 + 72) = MEMORY[0x277D83B88];
              *(v23 + 40) = v24;
              *(v23 + 48) = 1440;
              *(v23 + 80) = sub_2261E3DDC();
              *(v23 + 88) = v25;
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D78E210, &unk_2261E8B60);
              v26 = swift_allocObject();
              *(v26 + 16) = xmmword_2261E6810;
              *(v26 + 32) = sub_2261E3DDC();
              *(v26 + 40) = v27;
              *(v26 + 48) = sub_2261E3DDC();
              *(v26 + 56) = v28;
              *(v26 + 64) = sub_2261E3DDC();
              *(v26 + 72) = v29;
              *(v26 + 80) = sub_2261E3DDC();
              *(v26 + 88) = v30;
              *(v23 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DDB8, &qword_2261E57B8);
              *(v23 + 96) = v26;
              *(v23 + 128) = sub_2261E3DDC();
              *(v23 + 136) = v31;
              *(v23 + 168) = MEMORY[0x277CC9318];
              v32 = v88;
              *(v23 + 144) = v89;
              *(v23 + 152) = v32;
              *(v23 + 176) = sub_2261E3DDC();
              *(v23 + 184) = v33;
              sub_226198CB8(&v92, v23 + 192);
              *(v23 + 224) = sub_2261E3DDC();
              *(v23 + 232) = v34;
              v35 = *(v4 + 32);
              sub_22619D8F4(v89, v32);
              v36 = v35(&type metadata for AppAttestationRequestContext, v4);
              *(v23 + 264) = MEMORY[0x277D837D0];
              *(v23 + 240) = v36;
              *(v23 + 248) = v37;
              v38 = sub_2261A9F20(v23);
              swift_setDeallocating();
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D78E220, &unk_2261E8B70);
              swift_arrayDestroy();
              swift_deallocClassInstance();
              __swift_destroy_boxed_opaque_existential_0(&v92);
              goto LABEL_13;
            }
          }

          else
          {
          }

          v77 = sub_2261E3FFC();
          *&v98 = 0;
          *(&v98 + 1) = 0xE000000000000000;
          sub_2261E410C();

          v90 = 0xD00000000000002ELL;
          v91 = 0x80000002261EE3F0;
          v78 = __swift_project_boxed_opaque_existential_0(v102, v103);
          MEMORY[0x28223BE20](v78);
          v80 = (v87 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0));
          (*(v81 + 16))(v80);
          v82 = v80[1];
          v94 = *v80;
          v95 = v82;
          v83 = v80[3];
          v96 = v80[2];
          v97 = v83;
          sub_2261AF674();
          v84 = sub_2261E423C();
          v86 = v85;
          v98 = v94;
          v99 = v95;
          v100 = v96;
          v101 = v97;
          sub_2261AF6C8(&v98);
          MEMORY[0x22AA782B0](v84, v86);

          MEMORY[0x22AA782B0](32032, 0xE200000000000000);
          v51 = v90;
          v52 = v77;
          v53 = v91;
          v54 = 311;
LABEL_17:
          sub_2261A4EAC(v52, v51, v53, 0xD00000000000006CLL, 0x80000002261EDEF0, v54);
          sub_2261A28B8(v89, v88);

          goto LABEL_18;
        }
      }

      else
      {
      }
    }

    v41 = sub_2261E3FFC();
    *&v98 = 0;
    *(&v98 + 1) = 0xE000000000000000;
    sub_2261E410C();

    v92 = 0xD00000000000002ALL;
    v93 = 0x80000002261EE3C0;
    v42 = __swift_project_boxed_opaque_existential_0(v102, v103);
    MEMORY[0x28223BE20](v42);
    v44 = (v87 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v45 + 16))(v44);
    v46 = v44[1];
    v94 = *v44;
    v95 = v46;
    v47 = v44[3];
    v96 = v44[2];
    v97 = v47;
    sub_2261AF674();
    v48 = sub_2261E423C();
    v50 = v49;
    v98 = v94;
    v99 = v95;
    v100 = v96;
    v101 = v97;
    sub_2261AF6C8(&v98);
    MEMORY[0x22AA782B0](v48, v50);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    v51 = v92;
    v52 = v41;
    v53 = v93;
    v54 = 306;
    goto LABEL_17;
  }

  v38 = MEMORY[0x277D84F98];
LABEL_13:
  LOBYTE(v92) = v13(&type metadata for AppAttestationRequestContext, v4);
  LOBYTE(v90) = 1;
  sub_2261E3EFC();
  sub_2261E3EFC();
  if (v98 == v94)
  {

    v39 = v88;
    v40 = v89;
LABEL_21:
    v58 = MEMORY[0x277D83B88];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DFD8, qword_2261E6E00);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2261E5760;
    *(inited + 32) = sub_2261E3DDC();
    *(inited + 72) = v58;
    *(inited + 40) = v60;
    *(inited + 48) = 1440;
    *(inited + 80) = sub_2261E3DDC();
    *(inited + 88) = v61;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D78E210, &unk_2261E8B60);
    v62 = swift_allocObject();
    *(v62 + 16) = xmmword_2261E6DF0;
    *(v62 + 32) = sub_2261E3DDC();
    *(v62 + 40) = v63;
    *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DDB8, &qword_2261E57B8);
    *(inited + 96) = v62;
    *(inited + 128) = sub_2261E3DDC();
    *(inited + 136) = v64;
    *(inited + 168) = MEMORY[0x277CC9318];
    *(inited + 144) = v40;
    *(inited + 152) = v39;
    sub_2261A74CC(v40, v39);
    v38 = sub_2261A9F20(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D78E220, &unk_2261E8B70);
    v57 = swift_arrayDestroy();
    goto LABEL_22;
  }

  v56 = sub_2261E425C();

  v39 = v88;
  v40 = v89;
  if (v56)
  {
    goto LABEL_21;
  }

LABEL_22:
  if ((MEMORY[0x22AA788B0](v57) & 1) == 0)
  {
    v65 = sub_2261E3DDC();
    v67 = v66;
    *(&v99 + 1) = MEMORY[0x277D839B0];
    LOBYTE(v98) = 1;
    sub_22619A7A4(&v98, &v94);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v92 = v38;
    sub_2261D88F4(&v94, v65, v67, isUniquelyReferenced_nonNull_native);

    v38 = v92;
  }

  v69 = sub_2261D83B0(&OBJC_IVAR____TtC17AppAttestInternal18AttestationManager____lazy_storage___securityController, &OBJC_IVAR____TtC17AppAttestInternal18AttestationManager_auditToken);
  v70 = MEMORY[0x277D83B88];
  v71 = isRunningInRecovery();
  sub_2261A10B4(0xD000000000000032, 0x80000002261EDDF0, v71 & 1, v70, &v98);

  if (BYTE8(v98))
  {
    sub_2261A28B8(v40, v39);
  }

  else
  {
    v72 = v98;
    v73 = sub_2261E3DDC();
    v75 = v74;
    *(&v99 + 1) = v70;
    *&v98 = v72;
    sub_22619A7A4(&v98, &v94);
    v76 = swift_isUniquelyReferenced_nonNull_native();
    v92 = v38;
    sub_2261D88F4(&v94, v73, v75, v76);
    sub_2261A28B8(v40, v39);

    v38 = v92;
  }

LABEL_19:
  __swift_destroy_boxed_opaque_existential_0(v102);
  return v38;
}

uint64_t sub_2261D97B8(_OWORD *a1)
{
  v2 = sub_2261E3D3C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2261E3D2C();
  v7 = *(v6 - 1);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37[3] = &type metadata for AppAttestationRequestContext;
  v37[4] = sub_2261AF5C4();
  v10 = swift_allocObject();
  v37[0] = v10;
  v11 = a1[1];
  v10[1] = *a1;
  v10[2] = v11;
  v12 = a1[3];
  v10[3] = a1[2];
  v10[4] = v12;
  sub_2261A6578(v37, &v36);
  sub_2261AF618(a1, &v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D78E188, &qword_2261E8990);
  if (swift_dynamicCast())
  {
    v27 = v30[2];
    v26 = v31;
    v25 = v32;
    v24 = v33;
    v23 = v34;
    v22 = v35;
    v28 = v32;
    v29 = v33;
    sub_22619D8F4(v32, v33);
    sub_2261E3BCC();
    v21 = v9;
    v13 = v3;
    v14 = v28;
    v15 = v29;
    sub_2261DA494(&qword_28136E230, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
    sub_2261E3D1C();
    sub_22619D8F4(v14, v15);
    sub_22619D714(v14, v15, v5);
    sub_22619C840(v14, v15);
    v16 = v21;
    sub_2261E3D0C();
    (*(v13 + 8))(v5, v2);
    v31 = v6;
    v32 = sub_2261DA494(&qword_28136E238, MEMORY[0x277CC5290], MEMORY[0x277CC5280]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v30);
    (*(v7 + 16))(boxed_opaque_existential_1, v16, v6);
    __swift_project_boxed_opaque_existential_0(v30, v31);
    sub_2261E3ADC();

    sub_22619C840(v25, v24);
    sub_22619C840(v23, v22);
    (*(v7 + 8))(v16, v6);
    sub_22619C840(v28, v29);
    v18 = v36;
    __swift_destroy_boxed_opaque_existential_0(v30);
  }

  else
  {
    v18 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0(v37);
  return v18;
}

unint64_t sub_2261D9BD4()
{
  result = qword_27D78E1C8;
  if (!qword_27D78E1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D78E1C8);
  }

  return result;
}

uint64_t __swift_deallocate_boxed_opaque_existential_1(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x22AA792E0);
  }

  return result;
}

unint64_t sub_2261D9C78()
{
  result = qword_27D78E1E8;
  if (!qword_27D78E1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D78E1E8);
  }

  return result;
}

unint64_t sub_2261D9CCC()
{
  result = qword_28136EB28;
  if (!qword_28136EB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28136EB28);
  }

  return result;
}

uint64_t sub_2261D9D20(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DD90, &qword_2261E89B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2261D9DB0(uint64_t a1)
{
  result = sub_2261E3CDC();
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

uint64_t sub_2261D9E64(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 17))
  {
    return (*a1 + 126);
  }

  v3 = ((*(a1 + 16) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 16) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_2261D9EB8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 16) = 0;
    *result = a2 - 126;
    *(result + 8) = 0;
    if (a3 >= 0x7E)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_2261D9F58(uint64_t a1)
{
  result = sub_2261E3CDC();
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

void sub_2261DA004(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2261A2B9C();
  v7 = *v6;
  v8 = v6[1];

  LOBYTE(v7) = sub_2261CF5C8(v7, v8);

  if (v7)
  {
    v9 = sub_2261E400C();
    sub_2261A4EAC(v9, 0xD000000000000020, 0x80000002261EE370, 0xD00000000000006CLL, 0x80000002261EDEF0, 422);
LABEL_18:
    v34 = *(a3 + 16);

    v34(a3, 1, 0);
    return;
  }

  v10 = [a1 protectionSpace];
  v11 = [v10 authenticationMethod];

  v12 = sub_2261E3DDC();
  v14 = v13;

  if (v12 == sub_2261E3DDC() && v14 == v15)
  {
  }

  else
  {
    v17 = sub_2261E425C();

    if ((v17 & 1) == 0)
    {
      v18 = a1;
      v19 = sub_2261E3CBC();
      v20 = sub_2261E3FFC();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v40 = v22;
        *v21 = 136315138;
        v23 = [v18 protectionSpace];
        v24 = [v23 authenticationMethod];

        v25 = sub_2261E3DDC();
        v27 = v26;

        v28 = sub_2261A4344(v25, v27, &v40);

        *(v21 + 4) = v28;
        _os_log_impl(&dword_226177000, v19, v20, "Authentication method does not involve server trust. { authMethod=%s }", v21, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v22);
        MEMORY[0x22AA792E0](v22, -1, -1);
LABEL_16:
        MEMORY[0x22AA792E0](v21, -1, -1);
        goto LABEL_17;
      }

      goto LABEL_17;
    }
  }

  v29 = [a1 protectionSpace];
  v39 = [v29 serverTrust];

  if (!v39)
  {
    v19 = sub_2261E3CBC();
    v33 = sub_2261E3FFC();
    if (os_log_type_enabled(v19, v33))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_226177000, v19, v33, "Failed to fetch trust object from challenge.", v21, 2u);
      goto LABEL_16;
    }

LABEL_17:

    goto LABEL_18;
  }

  v30 = sub_2261D839C();
  v31 = sub_2261A1E9C(v39, *(a2 + OBJC_IVAR____TtCC17AppAttestInternal18AttestationManagerP33_6A9676F167D55AEBDBB586D6DBA1125411URLDelegate_host), *(a2 + OBJC_IVAR____TtCC17AppAttestInternal18AttestationManagerP33_6A9676F167D55AEBDBB586D6DBA1125411URLDelegate_host + 8));

  if (v31)
  {
    v38 = [objc_allocWithZone(MEMORY[0x277CCACF0]) initWithTrust_];
    (*(a3 + 16))(a3, 0, v38);

    v32 = v38;
  }

  else
  {
    v35 = sub_2261E3CBC();
    v36 = sub_2261E3FFC();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_226177000, v35, v36, "Failed to set certificate pinning policy.", v37, 2u);
      MEMORY[0x22AA792E0](v37, -1, -1);
    }

    (*(a3 + 16))(a3, 1, 0);
    v32 = v39;
  }
}

uint64_t sub_2261DA494(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id DeviceAttestHandler.__allocating_init(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  *&v9[OBJC_IVAR____TtC17AppAttestInternal19DeviceAttestHandler____lazy_storage___eligibilityManager] = 0;
  *&v9[OBJC_IVAR____TtC17AppAttestInternal19DeviceAttestHandler____lazy_storage___identityManager] = 0;
  *&v9[OBJC_IVAR____TtC17AppAttestInternal19DeviceAttestHandler____lazy_storage___attestationManager] = 0;
  v10 = OBJC_IVAR____TtC17AppAttestInternal19DeviceAttestHandler_logger;
  v11 = sub_2261A5328();
  v12 = sub_2261E3CDC();
  (*(*(v12 - 8) + 16))(&v9[v10], v11, v12);
  v13 = &v9[OBJC_IVAR____TtC17AppAttestInternal19DeviceAttestHandler_auditToken];
  *v13 = a1;
  *(v13 + 1) = a2;
  *(v13 + 2) = a3;
  *(v13 + 3) = a4;
  v15.receiver = v9;
  v15.super_class = v4;
  return objc_msgSendSuper2(&v15, sel_init);
}

id DeviceAttestHandler.init(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC17AppAttestInternal19DeviceAttestHandler____lazy_storage___eligibilityManager] = 0;
  *&v4[OBJC_IVAR____TtC17AppAttestInternal19DeviceAttestHandler____lazy_storage___identityManager] = 0;
  *&v4[OBJC_IVAR____TtC17AppAttestInternal19DeviceAttestHandler____lazy_storage___attestationManager] = 0;
  v10 = OBJC_IVAR____TtC17AppAttestInternal19DeviceAttestHandler_logger;
  v11 = sub_2261A5328();
  v12 = sub_2261E3CDC();
  (*(*(v12 - 8) + 16))(&v4[v10], v11, v12);
  v13 = &v4[OBJC_IVAR____TtC17AppAttestInternal19DeviceAttestHandler_auditToken];
  *v13 = a1;
  *(v13 + 1) = a2;
  *(v13 + 2) = a3;
  *(v13 + 3) = a4;
  v15.receiver = v4;
  v15.super_class = ObjectType;
  return objc_msgSendSuper2(&v15, sel_init);
}

Swift::Bool __swiftcall DeviceAttestHandler.isSupported()()
{
  v1 = sub_2261E3CDC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2261DA974();
  v7 = sub_22619DFA0(v5, v6);

  if ((v7 & 1) == 0)
  {
    (*(v2 + 16))(v4, v0 + OBJC_IVAR____TtC17AppAttestInternal19DeviceAttestHandler_logger, v1);
    v8 = sub_2261E3FFC();
    v14 = 0;
    v15 = 0xE000000000000000;
    sub_2261E410C();

    v14 = 0xD000000000000024;
    v15 = 0x80000002261EE420;
    v9 = j__getpid();
    v10 = sub_2261A0BA4(v9);
    if (v11)
    {
      v12 = v11;
    }

    else
    {
      v10 = 7104878;
      v12 = 0xE300000000000000;
    }

    MEMORY[0x22AA782B0](v10, v12);

    MEMORY[0x22AA782B0](8200233, 0xE300000000000000);
    sub_2261A4EAC(v8, v14, v15, 0xD000000000000064, 0x80000002261EE450, 30);

    (*(v2 + 8))(v4, v1);
  }

  return v7 & 1;
}

uint64_t sub_2261DA974()
{
  v1 = OBJC_IVAR____TtC17AppAttestInternal19DeviceAttestHandler____lazy_storage___eligibilityManager;
  if (*(v0 + OBJC_IVAR____TtC17AppAttestInternal19DeviceAttestHandler____lazy_storage___eligibilityManager))
  {
    v2 = *(v0 + OBJC_IVAR____TtC17AppAttestInternal19DeviceAttestHandler____lazy_storage___eligibilityManager);
  }

  else
  {
    type metadata accessor for EligibilityManager(0);
    v2 = sub_22619DE4C(*(v0 + OBJC_IVAR____TtC17AppAttestInternal19DeviceAttestHandler_auditToken), *(v0 + OBJC_IVAR____TtC17AppAttestInternal19DeviceAttestHandler_auditToken + 8), *(v0 + OBJC_IVAR____TtC17AppAttestInternal19DeviceAttestHandler_auditToken + 16), *(v0 + OBJC_IVAR____TtC17AppAttestInternal19DeviceAttestHandler_auditToken + 24), 2);
    *(v0 + v1) = v2;
  }

  return v2;
}

void DeviceAttestHandler.attestKey(with:options:completion:)(__SecKey *a1, void *a2, void (*a3)(void, __SecKey *), uint64_t a4)
{
  v76 = a3;
  v77 = a1;
  v7 = sub_2261E3CDC();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v73 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78E040, &unk_2261E6FE0);
  MEMORY[0x28223BE20](v14 - 8);
  v75 = v73 - v15;
  v16 = sub_2261DA974();
  v18 = sub_22619DFA0(v16, v17);

  if ((v18 & 1) == 0)
  {
    (*(v8 + 16))(v11, v4 + OBJC_IVAR____TtC17AppAttestInternal19DeviceAttestHandler_logger, v7);
    v31 = sub_2261E3FFC();
    *&v99 = 0;
    *(&v99 + 1) = 0xE000000000000000;
    sub_2261E410C();

    *&v99 = 0xD000000000000024;
    *(&v99 + 1) = 0x80000002261EE420;
    v32 = j__getpid();
    v33 = sub_2261A0BA4(v32);
    if (!v34)
    {
      v33 = 7104878;
    }

    v35 = 0xE300000000000000;
    if (v34)
    {
      v36 = v34;
    }

    else
    {
      v36 = 0xE300000000000000;
    }

    MEMORY[0x22AA782B0](v33, v36);

    v37 = MEMORY[0x22AA782B0](0x3D79656B20, 0xE500000000000000);
    v38 = sub_2261C9E2C(v37);
    if (v39)
    {
      v35 = v39;
    }

    else
    {
      v38 = 7104878;
    }

    MEMORY[0x22AA782B0](v38, v35);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v31, v99, *(&v99 + 1), 0xD000000000000064, 0x80000002261EE450, 46);

    (*(v8 + 8))(v11, v7);
    v40 = 0xD000000000000015;
    v41 = 0x80000002261EE4C0;
    v42 = 3;
    goto LABEL_27;
  }

  if ((sub_2261C9EA0(v77, 2) & 1) == 0)
  {
    (*(v8 + 16))(v13, v4 + OBJC_IVAR____TtC17AppAttestInternal19DeviceAttestHandler_logger, v7);
    v43 = sub_2261E3FFC();
    *&v99 = 0;
    *(&v99 + 1) = 0xE000000000000000;
    sub_2261E410C();

    *&v99 = 0xD000000000000013;
    *(&v99 + 1) = 0x80000002261EE4E0;
    v45 = sub_2261C9E2C(v44);
    if (v46)
    {
      v47 = v46;
    }

    else
    {
      v45 = 7104878;
      v47 = 0xE300000000000000;
    }

    MEMORY[0x22AA782B0](v45, v47);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v43, v99, *(&v99 + 1), 0xD000000000000064, 0x80000002261EE450, 52);

    (*(v8 + 8))(v13, v7);
    v40 = 0x2064696C61766E49;
    v41 = 0xEC0000002E79656BLL;
    goto LABEL_26;
  }

  if ((sub_2261DC394(a2) & 1) == 0)
  {
    v77 = sub_2261A9CDC(1, 0xD000000000000010, 0x80000002261EE500);
    v76(0, v77);
    v48 = v77;

    return;
  }

  sub_2261DB7B8();
  sub_22619D218();

  if (*(&v86 + 1) == 1)
  {
LABEL_25:
    v40 = 0xD000000000000023;
    v41 = 0x80000002261EE520;
LABEL_26:
    v42 = 1;
LABEL_27:
    v49 = sub_2261A9CDC(v42, v40, v41);
    v50 = v49;
LABEL_28:
    v76(0, v50);

    return;
  }

  v91 = v86;
  v92 = v87;
  v93 = v88;
  v19 = sub_2261A54B0();
  if (!v20)
  {
    v84 = v91;
    sub_22619A7B4(&v84, &qword_27D78DE20, &unk_2261E6280);
    v78 = v92;
    sub_22619A7B4(&v78, &qword_27D78DE20, &unk_2261E6280);
    v99 = v93;
    sub_22619A7B4(&v99, &qword_27D78DE20, &unk_2261E6280);
    goto LABEL_25;
  }

  v21 = v19;
  v22 = v20;
  v74 = a4;
  *&v99 = 0;
  sub_2261E3D5C();
  v23 = v99;
  if (!v99)
  {

    *&v99 = 0;
    *(&v99 + 1) = 0xE000000000000000;
    sub_2261E410C();

    v82 = 0xD000000000000013;
    v83 = 0x80000002261EE550;
    v89[0] = v93;
    v84 = v92;
    v78 = v91;
    v99 = v91;
    *v100 = v92;
    *&v100[16] = v93;
    sub_22619C894();
    v51 = sub_2261E423C();
    v53 = v52;
    sub_22619A7B4(&v78, &qword_27D78DE20, &unk_2261E6280);
    sub_22619A7B4(&v84, &qword_27D78DE20, &unk_2261E6280);
    sub_22619A7B4(v89, &qword_27D78DE20, &unk_2261E6280);
    MEMORY[0x22AA782B0](v51, v53);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    v49 = sub_2261A9CDC(1, v82, v83);

    v50 = v49;
    goto LABEL_28;
  }

  v94 = v91;
  sub_22619A7B4(&v94, &qword_27D78DE20, &unk_2261E6280);
  v95 = v92;
  sub_22619A7B4(&v95, &qword_27D78DE20, &unk_2261E6280);
  v96 = v93;
  sub_22619A7B4(&v96, &qword_27D78DE20, &unk_2261E6280);
  v24 = v4;

  v25 = sub_22619C044();

  sub_2261D04FC(2, v25 & 1, v21, v22, v77, v23, v89);
  v26 = sub_2261DB840();
  v98 = *(v89 + 8);
  v27 = *(&v89[1] + 1);
  v97 = v90;
  *(&v79 + 1) = &type metadata for DeviceAttestationRequestContext;
  *&v80 = sub_2261DC494();
  v28 = swift_allocObject();
  *&v78 = v28;
  v29 = v89[1];
  *(v28 + 16) = v89[0];
  *(v28 + 32) = v29;
  *(v28 + 48) = v90;
  sub_2261AF3FC(&v98, &v82);
  v30 = v27;
  sub_22619A73C(&v97, &v82, &qword_27D78E2C8, &qword_2261E8B90);
  sub_2261D4738(&v78, &v99);

  __swift_destroy_boxed_opaque_existential_0(&v78);
  v84 = v99;
  v85[0] = *v100;
  *(v85 + 9) = *&v100[9];
  sub_22619A73C(&v84, &v99, &qword_27D78E2D8, &unk_2261E8BA0);
  v54 = v76;
  if (v100[24])
  {
    v55 = v99;
    v78 = v99;
    LOBYTE(v79) = v100[0];
    sub_22619C7B4();
    swift_willThrowTypedImpl();
    sub_22619C830(v55, *(&v55 + 1));
  }

  else
  {
    sub_2261795DC(&v99, &v82);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78E048, &qword_2261E6FF8);
    if (swift_dynamicCast())
    {
      v99 = v78;
      *v100 = v79;
      *&v100[16] = v80;
      v101 = v81;
      v56 = sub_2261E3FAC();
      v57 = v75;
      (*(*(v56 - 8) + 56))(v75, 1, 1, v56);
      v58 = swift_allocObject();
      v59 = *v100;
      *(v58 + 40) = v99;
      *(v58 + 56) = v59;
      v60 = v101;
      *(v58 + 72) = *&v100[16];
      *(v58 + 88) = v60;
      v61 = v89[1];
      *(v58 + 104) = v89[0];
      *(v58 + 16) = 0;
      *(v58 + 24) = 0;
      *(v58 + 32) = v24;
      *(v58 + 120) = v61;
      *(v58 + 136) = v90;
      *(v58 + 144) = v54;
      *(v58 + 152) = v74;
      sub_2261AF3FC(&v98, &v78);
      v62 = v30;
      sub_22619A73C(&v97, &v78, &qword_27D78E2C8, &qword_2261E8B90);
      v63 = v24;

      sub_2261B0BA4(0, 0, v57, &unk_2261E8BB8, v58);

      sub_2261A04D8(&v98);

LABEL_36:
      sub_22619A7B4(&v97, &qword_27D78E2C8, &qword_2261E8B90);
      sub_22619A7B4(&v84, &qword_27D78E2D8, &unk_2261E8BA0);
      return;
    }
  }

  sub_22619A73C(&v84, &v99, &qword_27D78E2D8, &unk_2261E8BA0);
  if (v100[24] == 1)
  {
    v64 = v99;
    v65 = v100[0];
    v77 = OBJC_IVAR____TtC17AppAttestInternal19DeviceAttestHandler_logger;
    LODWORD(v75) = sub_2261E3FFC();
    *&v99 = 0;
    *(&v99 + 1) = 0xE000000000000000;
    sub_2261E410C();

    v73[1] = v24;
    *&v78 = 0xD00000000000002DLL;
    *(&v78 + 1) = 0x80000002261EE5A0;
    v99 = v64;
    v100[0] = v65;
    sub_22619C7B4();
    v66 = sub_2261E429C();
    MEMORY[0x22AA782B0](v66);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v75, v78, *(&v78 + 1), 0xD000000000000064, 0x80000002261EE450, 82);

    *&v99 = 0;
    *(&v99 + 1) = 0xE000000000000000;
    sub_2261E410C();

    *&v78 = 0xD00000000000002DLL;
    *(&v78 + 1) = 0x80000002261EE5A0;
    v99 = v64;
    v100[0] = v65;
    v67 = sub_2261E429C();
    v69 = v68;
    sub_22619C830(v64, *(&v64 + 1));
    MEMORY[0x22AA782B0](v67, v69);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    v70 = sub_2261A9CDC(0, v78, *(&v78 + 1));

    v76(0, v70);

    sub_2261A04D8(&v98);
    goto LABEL_36;
  }

  sub_22619A7B4(&v99, &qword_27D78E2D8, &unk_2261E8BA0);
  v71 = sub_2261E3FFC();
  sub_2261A4EAC(v71, 0xD000000000000024, 0x80000002261EE570, 0xD000000000000064, 0x80000002261EE450, 87);
  v72 = sub_2261A9CDC(0, 0xD000000000000024, 0x80000002261EE570);
  v54(0, v72);

  sub_2261A04D8(&v98);
  sub_22619A7B4(&v97, &qword_27D78E2C8, &qword_2261E8B90);
  sub_22619A7B4(&v84, &qword_27D78E2D8, &unk_2261E8BA0);
}

char *sub_2261DB7B8()
{
  v1 = OBJC_IVAR____TtC17AppAttestInternal19DeviceAttestHandler____lazy_storage___identityManager;
  if (*(v0 + OBJC_IVAR____TtC17AppAttestInternal19DeviceAttestHandler____lazy_storage___identityManager))
  {
    v2 = *(v0 + OBJC_IVAR____TtC17AppAttestInternal19DeviceAttestHandler____lazy_storage___identityManager);
  }

  else
  {
    type metadata accessor for IdentityManager(0);
    v2 = sub_22619AB84(*(v0 + OBJC_IVAR____TtC17AppAttestInternal19DeviceAttestHandler_auditToken), *(v0 + OBJC_IVAR____TtC17AppAttestInternal19DeviceAttestHandler_auditToken + 8), *(v0 + OBJC_IVAR____TtC17AppAttestInternal19DeviceAttestHandler_auditToken + 16), *(v0 + OBJC_IVAR____TtC17AppAttestInternal19DeviceAttestHandler_auditToken + 24));
    *(v0 + v1) = v2;
  }

  return v2;
}

id sub_2261DB840()
{
  v1 = OBJC_IVAR____TtC17AppAttestInternal19DeviceAttestHandler____lazy_storage___attestationManager;
  v2 = *(v0 + OBJC_IVAR____TtC17AppAttestInternal19DeviceAttestHandler____lazy_storage___attestationManager);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC17AppAttestInternal19DeviceAttestHandler____lazy_storage___attestationManager);
  }

  else
  {
    type metadata accessor for AttestationManager(0);
    v4 = v0;
    v5 = sub_2261D4654(*(v0 + OBJC_IVAR____TtC17AppAttestInternal19DeviceAttestHandler_auditToken), *(v0 + OBJC_IVAR____TtC17AppAttestInternal19DeviceAttestHandler_auditToken + 8), *(v0 + OBJC_IVAR____TtC17AppAttestInternal19DeviceAttestHandler_auditToken + 16), *(v0 + OBJC_IVAR____TtC17AppAttestInternal19DeviceAttestHandler_auditToken + 24));
    v6 = *(v0 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

uint64_t sub_2261DB8C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[33] = a7;
  v8[34] = a8;
  v8[31] = a5;
  v8[32] = a6;
  v8[30] = a4;
  return MEMORY[0x2822009F8](sub_2261DB8F0, 0, 0);
}

uint64_t sub_2261DB8F0()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 256);
  *(v0 + 280) = sub_2261DB840();
  v3 = v1[3];
  v5 = *v1;
  v4 = v1[1];
  *(v0 + 48) = v1[2];
  *(v0 + 64) = v3;
  *(v0 + 16) = v5;
  *(v0 + 32) = v4;
  *(v0 + 192) = *(v2 + 8);
  v6 = *(v2 + 24);
  *(v0 + 224) = *(v2 + 32);
  *(v0 + 104) = &type metadata for DeviceAttestationRequestContext;
  *(v0 + 112) = sub_2261DC494();
  v7 = swift_allocObject();
  *(v0 + 80) = v7;
  v8 = *(v2 + 32);
  v9 = *(v2 + 16);
  *(v7 + 16) = *v2;
  *(v7 + 32) = v9;
  *(v7 + 48) = v8;
  sub_2261AF3FC(v0 + 192, v0 + 208);
  v10 = v6;
  sub_22619A73C(v0 + 224, v0 + 232, &qword_27D78E2C8, &qword_2261E8B90);
  v11 = swift_task_alloc();
  *(v0 + 288) = v11;
  v12 = sub_2261D85E8();
  sub_2261DD62C();
  *v11 = v0;
  v11[1] = sub_2261DBA68;

  return sub_2261D5624(v0 + 120, v0 + 16, v0 + 80, &type metadata for DeviceAttestationRequest, &type metadata for DeviceAttestationObjectContext, v12);
}

uint64_t sub_2261DBA68()
{
  v2 = *v1;
  v3 = *(*v1 + 280);
  *(*v1 + 296) = v0;

  if (v0)
  {
    v4 = sub_2261DBFA8;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v2 + 80));
    v4 = sub_2261DBBA4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2261DBBA4(uint64_t a1)
{
  v2 = *(v1 + 120);
  v3 = *(v1 + 128);
  LOBYTE(v4) = *(v1 + 136);
  if (*(v1 + 137))
  {
    v30 = *(v1 + 264);
    v5 = sub_2261E3FFC();
    sub_2261E410C();

    *(v1 + 144) = v2;
    *(v1 + 152) = v3;
    *(v1 + 160) = v4;
    sub_2261C3440();
    v6 = sub_2261E429C();
    MEMORY[0x22AA782B0](v6);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v5, 0xD00000000000001ELL, 0x80000002261EE6C0, 0xD000000000000064, 0x80000002261EE450, 96);

    sub_2261E410C();

    *(v1 + 168) = v2;
    *(v1 + 176) = v3;
    *(v1 + 184) = v4;
    v7 = sub_2261E429C();
    v9 = v8;
    sub_2261DD680(v2, v3, v4, 1);
    MEMORY[0x22AA782B0](v7, v9);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    v10 = sub_2261A9CDC(0, 0xD00000000000001ELL, 0x80000002261EE6C0);

    v30(0, v10);
  }

  else if (v2)
  {
    v11 = (v2 & 0xFFFFFFFFFFFFFF8);
    if (v2 >> 62)
    {
      goto LABEL_27;
    }

    for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2261E416C())
    {
      v27 = v3;
      v28 = v4;
      v29 = v1;
      if (!i)
      {
        break;
      }

      v13 = 0;
      v32 = v2 & 0xC000000000000001;
      v14 = MEMORY[0x277D84F90];
      v31 = v2;
      v15 = v11;
      while (1)
      {
        if (v32)
        {
          v16 = MEMORY[0x22AA78540](v13, v2);
        }

        else
        {
          if (v13 >= v11[2])
          {
            goto LABEL_26;
          }

          v16 = *(v2 + 8 * v13 + 32);
        }

        v11 = v16;
        v1 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        v4 = sub_2261A2658();
        v3 = v17;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_2261DC288(0, *(v14 + 2) + 1, 1, v14);
        }

        v19 = *(v14 + 2);
        v18 = *(v14 + 3);
        if (v19 >= v18 >> 1)
        {
          v14 = sub_2261DC288((v18 > 1), v19 + 1, 1, v14);
        }

        *(v14 + 2) = v19 + 1;
        v20 = &v14[16 * v19];
        *(v20 + 4) = v4;
        *(v20 + 5) = v3;

        ++v13;
        v2 = v31;
        v11 = v15;
        if (v1 == i)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      ;
    }

    v14 = MEMORY[0x277D84F90];
LABEL_21:
    v1 = v29;
    v24 = *(v29 + 264);
    sub_2261DD680(v2, v27, v28, 0);
    v24(v14, 0);
  }

  else
  {
    v21 = *(v1 + 264);
    v22 = sub_2261E3FFC();
    sub_2261A4EAC(v22, 0xD000000000000023, 0x80000002261EE690, 0xD000000000000064, 0x80000002261EE450, 103);
    v23 = sub_2261A9CDC(0, 0xD000000000000023, 0x80000002261EE690);
    v21(0, v23);
  }

  v25 = *(v1 + 8);

  return v25();
}

uint64_t sub_2261DBFA8()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 80));
  v1 = *(v0 + 8);

  return v1();
}

void sub_2261DC0AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v4 = sub_2261E3F1C();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  (*(a3 + 16))(a3);
}

id DeviceAttestHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DeviceAttestHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_2261DC288(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78E2E8, &unk_2261E8C20);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_2261DC394(void *a1)
{
  *&v6 = sub_2261E3DDC();
  *(&v6 + 1) = v2;
  v3 = [a1 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v3)
  {
    sub_2261E409C();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    if (swift_dynamicCast() & 1) != 0 && (v5)
    {
      return 1;
    }
  }

  else
  {
    sub_22619A7B4(v8, &qword_27D78E0B8, &unk_2261E78B0);
  }

  return 0;
}

unint64_t sub_2261DC494()
{
  result = qword_27D78E2C0;
  if (!qword_27D78E2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D78E2C0);
  }

  return result;
}

uint64_t sub_2261DC4E8()
{
  v2 = v0[4];
  v3 = v0[18];
  v4 = v0[19];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2261C3494;

  return sub_2261DB8C8(v5, v6, v7, v2, (v0 + 5), (v0 + 13), v3, v4);
}

uint64_t type metadata accessor for DeviceAttestHandler(uint64_t a1)
{
  result = qword_27D7913A8;
  if (!qword_27D7913A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2261DC5EC(uint64_t a1)
{
  result = sub_2261E3CDC();
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

void sub_2261DC6C0(__SecKey *a1, void *a2, char *a3, void (**a4)(void, void, void))
{
  v74 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78E040, &unk_2261E6FE0);
  MEMORY[0x28223BE20](v7 - 8);
  v72 = &v69[-v8];
  v9 = sub_2261E3CDC();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v69[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v15 = &v69[-v14];
  v73 = swift_allocObject();
  *(v73 + 16) = a4;
  _Block_copy(a4);
  v16 = sub_2261DA974();
  v18 = sub_22619DFA0(v16, v17);

  if ((v18 & 1) == 0)
  {
    (*(v10 + 16))(v15, &a3[OBJC_IVAR____TtC17AppAttestInternal19DeviceAttestHandler_logger], v9);
    LODWORD(v72) = sub_2261E3FFC();
    *&v96 = 0;
    *(&v96 + 1) = 0xE000000000000000;
    sub_2261E410C();

    *&v96 = 0xD000000000000024;
    *(&v96 + 1) = 0x80000002261EE420;
    v30 = j__getpid();
    v31 = sub_2261A0BA4(v30);
    if (!v32)
    {
      v31 = 7104878;
    }

    v33 = a4;
    v34 = 0xE300000000000000;
    if (v32)
    {
      v35 = v32;
    }

    else
    {
      v35 = 0xE300000000000000;
    }

    MEMORY[0x22AA782B0](v31, v35);

    v36 = MEMORY[0x22AA782B0](0x3D79656B20, 0xE500000000000000);
    v37 = sub_2261C9E2C(v36);
    if (v38)
    {
      v34 = v38;
    }

    else
    {
      v37 = 7104878;
    }

    MEMORY[0x22AA782B0](v37, v34);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v72, v96, *(&v96 + 1), 0xD000000000000064, 0x80000002261EE450, 46);

    (*(v10 + 8))(v15, v9);
    v39 = sub_2261A9CDC(3, 0xD000000000000015, 0x80000002261EE4C0);
    (v33)[2](v33, 0, v39);
    goto LABEL_29;
  }

  if ((sub_2261C9EA0(v74, 2) & 1) == 0)
  {
    (*(v10 + 16))(v13, &a3[OBJC_IVAR____TtC17AppAttestInternal19DeviceAttestHandler_logger], v9);
    v40 = sub_2261E3FFC();
    *&v96 = 0;
    *(&v96 + 1) = 0xE000000000000000;
    sub_2261E410C();

    *&v96 = 0xD000000000000013;
    *(&v96 + 1) = 0x80000002261EE4E0;
    v42 = sub_2261C9E2C(v41);
    if (!v43)
    {
      v42 = 7104878;
    }

    v44 = a4;
    if (v43)
    {
      v45 = v43;
    }

    else
    {
      v45 = 0xE300000000000000;
    }

    MEMORY[0x22AA782B0](v42, v45);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v40, v96, *(&v96 + 1), 0xD000000000000064, 0x80000002261EE450, 52);

    (*(v10 + 8))(v13, v9);
    v39 = sub_2261A9CDC(1, 0x2064696C61766E49, 0xEC0000002E79656BLL);
    (v44)[2](v44, 0, v39);
    goto LABEL_29;
  }

  if ((sub_2261DC394(a2) & 1) == 0)
  {
    v74 = sub_2261A9CDC(1, 0xD000000000000010, 0x80000002261EE500);
    (a4)[2](a4, 0, v74);

    v46 = v74;

    return;
  }

  sub_2261DB7B8();
  sub_22619D218();

  if (*(&v83 + 1) == 1)
  {
LABEL_28:
    v39 = sub_2261A9CDC(1, 0xD000000000000023, 0x80000002261EE520);
    (a4)[2](a4, 0, v39);
LABEL_29:

    return;
  }

  v88 = v83;
  v89 = v84;
  v90 = v85;
  v19 = sub_2261A54B0();
  if (!v20)
  {
    v81 = v88;
    sub_22619A7B4(&v81, &qword_27D78DE20, &unk_2261E6280);
    v75 = v89;
    sub_22619A7B4(&v75, &qword_27D78DE20, &unk_2261E6280);
    v96 = v90;
    sub_22619A7B4(&v96, &qword_27D78DE20, &unk_2261E6280);
    goto LABEL_28;
  }

  v21 = v19;
  v22 = v20;
  v71 = a4;
  *&v96 = 0;
  sub_2261E3D5C();
  v23 = v96;
  if (!v96)
  {

    *&v96 = 0;
    *(&v96 + 1) = 0xE000000000000000;
    sub_2261E410C();

    v79 = 0xD000000000000013;
    v80 = 0x80000002261EE550;
    v86[0] = v90;
    v81 = v89;
    v75 = v88;
    v96 = v88;
    *v97 = v89;
    *&v97[16] = v90;
    sub_22619C894();
    v47 = sub_2261E423C();
    v49 = v48;
    sub_22619A7B4(&v75, &qword_27D78DE20, &unk_2261E6280);
    sub_22619A7B4(&v81, &qword_27D78DE20, &unk_2261E6280);
    sub_22619A7B4(v86, &qword_27D78DE20, &unk_2261E6280);
    MEMORY[0x22AA782B0](v47, v49);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    v50 = sub_2261A9CDC(1, v79, v80);

    (v71)[2](v71, 0, v50);

    return;
  }

  v91 = v88;
  sub_22619A7B4(&v91, &qword_27D78DE20, &unk_2261E6280);
  v92 = v89;
  sub_22619A7B4(&v92, &qword_27D78DE20, &unk_2261E6280);
  v93 = v90;
  sub_22619A7B4(&v93, &qword_27D78DE20, &unk_2261E6280);

  v24 = sub_22619C044();

  sub_2261D04FC(2, v24 & 1, v21, v22, v74, v23, v86);
  v25 = sub_2261DB840();
  v95 = *(v86 + 8);
  v26 = *(&v86[1] + 1);
  v94 = v87;
  *(&v76 + 1) = &type metadata for DeviceAttestationRequestContext;
  *&v77 = sub_2261DC494();
  v27 = swift_allocObject();
  *&v75 = v27;
  v28 = v86[1];
  *(v27 + 16) = v86[0];
  *(v27 + 32) = v28;
  *(v27 + 48) = v87;
  sub_2261AF3FC(&v95, &v79);
  v29 = v26;
  sub_22619A73C(&v94, &v79, &qword_27D78E2C8, &qword_2261E8B90);
  sub_2261D4738(&v75, &v96);

  __swift_destroy_boxed_opaque_existential_0(&v75);
  v81 = v96;
  v82[0] = *v97;
  *(v82 + 9) = *&v97[9];
  sub_22619A73C(&v81, &v96, &qword_27D78E2D8, &unk_2261E8BA0);
  if (v97[24])
  {
    v51 = v96;
    v75 = v96;
    LOBYTE(v76) = v97[0];
    sub_22619C7B4();
    swift_willThrowTypedImpl();
    sub_22619C830(v51, *(&v51 + 1));
  }

  else
  {
    sub_2261795DC(&v96, &v79);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78E048, &qword_2261E6FF8);
    if (swift_dynamicCast())
    {
      v96 = v75;
      *v97 = v76;
      *&v97[16] = v77;
      v98 = v78;
      v52 = sub_2261E3FAC();
      v53 = v72;
      (*(*(v52 - 8) + 56))(v72, 1, 1, v52);
      v54 = swift_allocObject();
      v55 = *v97;
      *(v54 + 40) = v96;
      *(v54 + 56) = v55;
      v56 = v98;
      *(v54 + 72) = *&v97[16];
      *(v54 + 88) = v56;
      v57 = v86[1];
      *(v54 + 104) = v86[0];
      *(v54 + 16) = 0;
      *(v54 + 24) = 0;
      *(v54 + 32) = a3;
      *(v54 + 120) = v57;
      *(v54 + 136) = v87;
      *(v54 + 144) = sub_2261DD4F4;
      *(v54 + 152) = v73;
      sub_2261AF3FC(&v95, &v75);
      v58 = v29;
      sub_22619A73C(&v94, &v75, &qword_27D78E2C8, &qword_2261E8B90);
      v59 = a3;

      sub_2261B0BA4(0, 0, v53, &unk_2261E8C18, v54);

      sub_2261A04D8(&v95);

      sub_22619A7B4(&v94, &qword_27D78E2C8, &qword_2261E8B90);
      sub_22619A7B4(&v81, &qword_27D78E2D8, &unk_2261E8BA0);

      return;
    }
  }

  sub_22619A73C(&v81, &v96, &qword_27D78E2D8, &unk_2261E8BA0);
  if (v97[24] == 1)
  {
    v60 = v96;
    v61 = v97[0];
    v72 = OBJC_IVAR____TtC17AppAttestInternal19DeviceAttestHandler_logger;
    v70 = sub_2261E3FFC();
    *&v96 = 0;
    *(&v96 + 1) = 0xE000000000000000;
    sub_2261E410C();

    v74 = v29;
    *&v75 = 0xD00000000000002DLL;
    *(&v75 + 1) = 0x80000002261EE5A0;
    v96 = v60;
    v97[0] = v61;
    sub_22619C7B4();
    v62 = sub_2261E429C();
    MEMORY[0x22AA782B0](v62);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v70, v75, *(&v75 + 1), 0xD000000000000064, 0x80000002261EE450, 82);

    *&v96 = 0;
    *(&v96 + 1) = 0xE000000000000000;
    sub_2261E410C();

    *&v75 = 0xD00000000000002DLL;
    *(&v75 + 1) = 0x80000002261EE5A0;
    v96 = v60;
    v97[0] = v61;
    v63 = sub_2261E429C();
    v65 = v64;
    sub_22619C830(v60, *(&v60 + 1));
    MEMORY[0x22AA782B0](v63, v65);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    v66 = sub_2261A9CDC(0, v75, *(&v75 + 1));

    (v71)[2](v71, 0, v66);

    sub_2261A04D8(&v95);
  }

  else
  {
    sub_22619A7B4(&v96, &qword_27D78E2D8, &unk_2261E8BA0);
    v67 = sub_2261E3FFC();
    sub_2261A4EAC(v67, 0xD000000000000024, 0x80000002261EE570, 0xD000000000000064, 0x80000002261EE450, 87);
    v68 = sub_2261A9CDC(0, 0xD000000000000024, 0x80000002261EE570);
    (v71)[2](v71, 0, v68);

    sub_2261A04D8(&v95);
  }

  sub_22619A7B4(&v94, &qword_27D78E2C8, &qword_2261E8B90);
  sub_22619A7B4(&v81, &qword_27D78E2D8, &unk_2261E8BA0);
}

uint64_t objectdestroy_2Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 160, 7);
}

uint64_t sub_2261DD57C()
{
  v2 = v0[4];
  v3 = v0[18];
  v4 = v0[19];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2261C31BC;

  return sub_2261DB8C8(v5, v6, v7, v2, (v0 + 5), (v0 + 13), v3, v4);
}

unint64_t sub_2261DD62C()
{
  result = qword_27D78E2E0;
  if (!qword_27D78E2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D78E2E0);
  }

  return result;
}

uint64_t sub_2261DD680(uint64_t a1, uint64_t a2, unsigned __int8 a3, char a4)
{
  if (a4)
  {
    return sub_2261DD68C(a1, a2, a3);
  }

  else
  {
  }
}

uint64_t sub_2261DD68C(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  if ((a3 >> 6) > 1u)
  {
    if (a3 >> 6 != 2)
    {
      return result;
    }
  }

  else if (!(a3 >> 6))
  {
    return sub_22619C830(result, a2);
  }
}

char *sub_2261DD6B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  type metadata accessor for KeychainController(0);
  v9 = sub_2261A2B48();
  v10 = *v9;
  v11 = v9[1];

  *(v8 + 6) = sub_2261DFDC8(v10, v11);
  *(v8 + 7) = 0;
  v12 = OBJC_IVAR____TtC17AppAttestInternal18AppUUIDDataManager_logger;
  v13 = sub_2261A51A0();
  v14 = sub_2261E3CDC();
  (*(*(v14 - 8) + 16))(&v8[v12], v13, v14);
  *(v8 + 2) = a1;
  *(v8 + 3) = a2;
  *(v8 + 4) = a3;
  *(v8 + 5) = a4;
  return v8;
}

uint64_t sub_2261DD794@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_2261E406C();
  v77 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v79 = &v68 - v8;
  v78 = *(a2 - 8);
  MEMORY[0x28223BE20](v7);
  v76 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78E2F0, &unk_2261E8C30);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v68 - v14;
  v16 = type metadata accessor for AppUUID(0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2261A6578(a1, &v80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DFC0, &qword_2261E6D50);
  v20 = swift_dynamicCast();
  v21 = *(v17 + 56);
  if (!v20)
  {
    v21(v15, 1, 1, v16);
    sub_22619A7B4(v15, &qword_27D78E2F0, &unk_2261E8C30);
    *a3 = 0xD000000000000017;
    *(a3 + 8) = 0x80000002261EBA10;
    *(a3 + 16) = 0;
    sub_22619C7B4();
    sub_2261E434C();
    return swift_storeEnumTagMultiPayload();
  }

  v74 = v6;
  v75 = a3;
  v21(v15, 0, 1, v16);
  sub_2261DE1B8(v15, v19);
  v22 = &v19[*(v16 + 20)];
  v24 = *v22;
  v23 = *(v22 + 1);
  v25 = v24 & 0xFFFFFFFFFFFFLL;
  if ((v23 & 0x2000000000000000) != 0)
  {
    v26 = HIBYTE(v23) & 0xF;
  }

  else
  {
    v26 = v25;
  }

  if (!v26)
  {
    v31 = sub_2261E3FEC();
    v80 = 0;
    v81 = 0xE000000000000000;
    sub_2261E410C();

    v80 = 0xD000000000000027;
    v81 = 0x80000002261EBA30;
    sub_2261DF364();
    v32 = sub_2261E423C();
    MEMORY[0x22AA782B0](v32);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v31, v80, v81, 0xD00000000000006CLL, 0x80000002261EE710, 32);

    sub_2261DE6A0(v19);
    v33 = v75;
    *v75 = 0xD000000000000024;
    v33[1] = 0x80000002261EBAD0;
    *(v33 + 16) = 0;
    goto LABEL_10;
  }

  sub_2261C34C0(v13);
  v21(v13, 0, 1, v16);
  v27 = v83;
  v28 = sub_2261DE21C();
  if (!v27)
  {
    v35 = v28;
    v36 = v29;
    v37 = v30;
    sub_22619A7B4(v13, &qword_27D78E2F0, &unk_2261E8C30);
    if ((v37 & 0x100) != 0)
    {
      v80 = v35;
      v81 = v36;
      v45 = v37 & 1;
      v82 = v37 & 1;
      sub_22619C7B4();
      v46 = v35;
    }

    else
    {
      v72 = v35;
      v83 = 0;
      v39 = sub_2261DEFE0(v19);
      v73 = v40;
      v41 = v38;
      if ((v38 & 0x100) == 0)
      {
        if (v73 >> 60 != 15)
        {
          v69 = v38;
          v48 = sub_2261E3B8C();
          v70 = v39;
          v49 = v48;
          type metadata accessor for CFData(0);
          v50 = v72;
          v71 = sub_2261E09C4(v49, v72, v36, v51);
          v68 = v52;
          v54 = v53;
          sub_22619C81C(v50, v36, v37, 0);

          if ((v54 & 0x100) != 0)
          {
            v62 = v71;
            v63 = v68;
            v80 = v71;
            v81 = v68;
            v82 = v54 & 1;
            sub_22619C838(v71, v68);
            sub_22619C7B4();
            swift_willThrowTypedImpl();
            swift_allocError();
            *v64 = v62;
            *(v64 + 8) = v63;
            *(v64 + 16) = v54 & 1;
            sub_2261CDCA0(v70, v73, v69, 0);
            sub_2261795CC(v62, v63, v54, 1);
            return sub_2261DE6A0(v19);
          }

          v80 = v71;
          v55 = v71;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78E300, &unk_2261E8C40);
          v56 = v79;
          if (swift_dynamicCast())
          {
            sub_2261795CC(v71, v68, v54, 0);
            sub_2261CDCA0(v70, v73, v69, 0);
            v57 = v78;
            v58 = *(v78 + 56);
            v58(v56, 0, 1, a2);
            sub_2261DE6A0(v19);
            v59 = *(v57 + 32);
            v60 = v76;
            v59(v76, v56, a2);
            v61 = v75;
            v59(v75, v60, a2);
            v58(v61, 0, 1, a2);
            sub_22619C7B4();
            sub_2261E434C();
            return swift_storeEnumTagMultiPayload();
          }

          (*(v78 + 56))(v56, 1, 1, a2);
          (*(v77 + 8))(v56, v74);
          v65 = sub_2261E3FEC();
          v80 = 0;
          v81 = 0xE000000000000000;
          sub_2261E410C();
          MEMORY[0x22AA782B0](0xD000000000000032, 0x80000002261ED240);
          sub_2261DF364();
          v66 = sub_2261E423C();
          MEMORY[0x22AA782B0](v66);

          MEMORY[0x22AA782B0](32032, 0xE200000000000000);
          sub_2261A4EAC(v65, v80, v81, 0xD00000000000006CLL, 0x80000002261EE710, 46);

          sub_2261CDCA0(v70, v73, v69, 0);
          sub_2261795CC(v71, v68, v54, 0);
          sub_2261DE6A0(v19);
          v67 = v75;
          *v75 = 0xD00000000000002FLL;
          v67[1] = 0x80000002261EE7B0;
          *(v67 + 16) = 1;
          sub_22619C7B4();
          goto LABEL_11;
        }

        sub_22619C81C(v72, v36, v37, 0);
        v42 = sub_2261E3FEC();
        v80 = 0;
        v81 = 0xE000000000000000;
        sub_2261E410C();

        v80 = 0xD000000000000023;
        v81 = 0x80000002261EE6E0;
        sub_2261DF364();
        v43 = sub_2261E423C();
        MEMORY[0x22AA782B0](v43);

        MEMORY[0x22AA782B0](32032, 0xE200000000000000);
        sub_2261A4EAC(v42, v80, v81, 0xD00000000000006CLL, 0x80000002261EE710, 39);

        sub_2261DE6A0(v19);
        v44 = v75;
        *v75 = 0xD000000000000020;
        v44[1] = 0x80000002261EE780;
        *(v44 + 16) = 1;
LABEL_10:
        sub_22619C7B4();
LABEL_11:
        sub_2261E434C();
        return swift_storeEnumTagMultiPayload();
      }

      sub_22619C81C(v72, v36, v37, 0);
      v36 = v73;
      v80 = v39;
      v81 = v73;
      v45 = v41 & 1;
      v82 = v41 & 1;
      sub_22619C7B4();
      v46 = v39;
    }

    swift_willThrowTypedImpl();
    swift_allocError();
    *v47 = v46;
    *(v47 + 8) = v36;
    *(v47 + 16) = v45;
    return sub_2261DE6A0(v19);
  }

  sub_22619A7B4(v13, &qword_27D78E2F0, &unk_2261E8C30);
  return sub_2261DE6A0(v19);
}

uint64_t sub_2261DE1B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppUUID(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2261DE21C()
{
  v0 = sub_2261A9864();
  sub_2261A2CB8(v26, v0);

  if (*(&v26[0] + 1) == 1)
  {
    return 0xD000000000000031;
  }

  v27 = v26[0];
  v28 = v26[1];
  v29 = v26[2];

  v2 = sub_2261A30F4();

  if (sub_2261A3324(v2, 4u))
  {
    v3 = sub_2261A5588();
    if (!v4)
    {
      v18 = sub_2261E3FEC();
      sub_2261E410C();

      v39 = v29;
      v40 = v28;
      v41 = v27;
      sub_22619C894();
      v19 = sub_2261E423C();
      v21 = v20;
      sub_22619A7B4(&v41, &qword_27D78DE20, &unk_2261E6280);
      sub_22619A7B4(&v40, &qword_27D78DE20, &unk_2261E6280);
      sub_22619A7B4(&v39, &qword_27D78DE20, &unk_2261E6280);
      MEMORY[0x22AA782B0](v19, v21);

      MEMORY[0x22AA782B0](32032, 0xE200000000000000);
      sub_2261A4EAC(v18, 0xD000000000000020, 0x80000002261EE7E0, 0xD00000000000006CLL, 0x80000002261EE710, 95);

      return 0xD00000000000001DLL;
    }

    v5 = v3;
    v6 = v4;
    v7 = &v32;
    v8 = &v31;
    v9 = &v30;
  }

  else
  {
    v10 = sub_2261A54B0();
    if (!v11)
    {
      v22 = sub_2261E3FEC();
      sub_2261E410C();

      v36 = v29;
      v37 = v28;
      v38 = v27;
      sub_22619C894();
      v23 = sub_2261E423C();
      v25 = v24;
      sub_22619A7B4(&v38, &qword_27D78DE20, &unk_2261E6280);
      sub_22619A7B4(&v37, &qword_27D78DE20, &unk_2261E6280);
      sub_22619A7B4(&v36, &qword_27D78DE20, &unk_2261E6280);
      MEMORY[0x22AA782B0](v23, v25);

      MEMORY[0x22AA782B0](32032, 0xE200000000000000);
      sub_2261A4EAC(v22, 0xD000000000000019, 0x80000002261EBB90, 0xD00000000000006CLL, 0x80000002261EE710, 102);

      return 0xD000000000000016;
    }

    v5 = v10;
    v6 = v11;
    v7 = &v35;
    v8 = &v34;
    v9 = &v33;
  }

  *v9 = v27;
  sub_22619A7B4(v9, &qword_27D78DE20, &unk_2261E6280);
  *v8 = v28;
  sub_22619A7B4(v8, &qword_27D78DE20, &unk_2261E6280);
  *v7 = v29;
  sub_22619A7B4(v7, &qword_27D78DE20, &unk_2261E6280);
  v12 = sub_2261E1EC4(v5, v6);
  v14 = v13;
  v16 = v15;

  if ((v16 & 0x100) == 0)
  {
    return v12;
  }

  sub_22619C7B4();
  swift_willThrowTypedImpl();
  result = swift_allocError();
  *v17 = v12;
  *(v17 + 8) = v14;
  *(v17 + 16) = v16 & 1;
  return result;
}

uint64_t sub_2261DE6A0(uint64_t a1)
{
  v2 = type metadata accessor for AppUUID(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2261DE6FC@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v5 = sub_2261E406C();
  v45 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v42 - v7;
  v69 = *(a1 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2261A9864();
  sub_2261A2CB8(v50, v11);

  if (*(&v50[0] + 1) == 1)
  {
    *a2 = 0xD000000000000031;
    *(a2 + 8) = 0x80000002261ED310;
    *(a2 + 16) = 1;
    sub_22619C7B4();
    sub_2261E434C();
    return swift_storeEnumTagMultiPayload();
  }

  v42 = a1;
  v43 = a2;
  v44 = v2;
  v51 = v50[0];
  v52 = v50[1];
  v53 = v50[2];

  v13 = sub_2261A30F4();

  if (sub_2261A3324(v13, 4u))
  {
    v14 = sub_2261A5588();
    if (!v15)
    {
      v16 = sub_2261E3FEC();
      *&v46 = 0;
      *(&v46 + 1) = 0xE000000000000000;
      sub_2261E410C();

      *&v49 = 0xD000000000000020;
      *(&v49 + 1) = 0x80000002261EE7E0;
      v66 = v53;
      v67 = v52;
      v68 = v51;
      v46 = v51;
      v47 = v52;
      v48 = v53;
      sub_22619C894();
      v17 = sub_2261E423C();
      v19 = v18;
      sub_22619A7B4(&v68, &qword_27D78DE20, &unk_2261E6280);
      sub_22619A7B4(&v67, &qword_27D78DE20, &unk_2261E6280);
      sub_22619A7B4(&v66, &qword_27D78DE20, &unk_2261E6280);
      MEMORY[0x22AA782B0](v17, v19);

      MEMORY[0x22AA782B0](32032, 0xE200000000000000);
      sub_2261A4EAC(v16, v49, *(&v49 + 1), 0xD00000000000006CLL, 0x80000002261EE710, 95);

      v20 = 0x80000002261EE810;
      v21 = 0xD00000000000001DLL;
LABEL_12:
      v36 = v43;
      *v43 = v21;
      v36[1] = v20;
      *(v36 + 16) = 1;
      sub_22619C7B4();
LABEL_14:
      sub_2261E434C();
      return swift_storeEnumTagMultiPayload();
    }
  }

  else
  {
    v14 = sub_2261A54B0();
    if (!v15)
    {
      v32 = sub_2261E3FEC();
      *&v46 = 0;
      *(&v46 + 1) = 0xE000000000000000;
      sub_2261E410C();

      *&v49 = 0xD000000000000019;
      *(&v49 + 1) = 0x80000002261EBB90;
      v63 = v53;
      v64 = v52;
      v65 = v51;
      v46 = v51;
      v47 = v52;
      v48 = v53;
      sub_22619C894();
      v33 = sub_2261E423C();
      v35 = v34;
      sub_22619A7B4(&v65, &qword_27D78DE20, &unk_2261E6280);
      sub_22619A7B4(&v64, &qword_27D78DE20, &unk_2261E6280);
      sub_22619A7B4(&v63, &qword_27D78DE20, &unk_2261E6280);
      MEMORY[0x22AA782B0](v33, v35);

      MEMORY[0x22AA782B0](32032, 0xE200000000000000);
      sub_2261A4EAC(v32, v49, *(&v49 + 1), 0xD00000000000006CLL, 0x80000002261EE710, 102);

      v20 = 0x80000002261EBBB0;
      v21 = 0xD000000000000016;
      goto LABEL_12;
    }
  }

  v22 = sub_2261E1EC4(v14, v15);
  v24 = v23;
  v26 = v25;

  if ((v26 & 0x100) != 0)
  {
    v54 = v51;
    sub_22619A7B4(&v54, &qword_27D78DE20, &unk_2261E6280);
    v55 = v52;
    sub_22619A7B4(&v55, &qword_27D78DE20, &unk_2261E6280);
    v56 = v53;
    sub_22619A7B4(&v56, &qword_27D78DE20, &unk_2261E6280);
    *&v46 = v22;
    *(&v46 + 1) = v24;
    v30 = v26 & 1;
    LOBYTE(v47) = v30;
    sub_22619C7B4();
    swift_willThrowTypedImpl();
    result = swift_allocError();
    *v31 = v22;
    *(v31 + 8) = v24;
    *(v31 + 16) = v30;
    return result;
  }

  *&v46 = v22;
  *(&v46 + 1) = v24;

  v27 = v42;
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v69 + 56))(v8, 1, 1, v27);
    (*(v45 + 8))(v8, v5);
    v37 = sub_2261E3FEC();
    *&v46 = 0;
    *(&v46 + 1) = 0xE000000000000000;
    sub_2261E410C();
    v49 = v46;
    MEMORY[0x22AA782B0](0xD00000000000002ELL, 0x80000002261EBC30);
    MEMORY[0x22AA782B0](v22, v24);
    sub_22619C81C(v22, v24, v26, 0);
    MEMORY[0x22AA782B0](8236, 0xE200000000000000);
    v60 = v53;
    v61 = v52;
    v62 = v51;
    v46 = v51;
    v47 = v52;
    v48 = v53;
    sub_22619C894();
    v38 = sub_2261E423C();
    v40 = v39;
    sub_22619A7B4(&v62, &qword_27D78DE20, &unk_2261E6280);
    sub_22619A7B4(&v61, &qword_27D78DE20, &unk_2261E6280);
    sub_22619A7B4(&v60, &qword_27D78DE20, &unk_2261E6280);
    MEMORY[0x22AA782B0](v38, v40);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v37, v49, *(&v49 + 1), 0xD00000000000006CLL, 0x80000002261EE710, 111);

    v41 = v43;
    *v43 = 0xD000000000000025;
    v41[1] = 0x80000002261EBC60;
    *(v41 + 16) = 1;
    sub_22619C7B4();
    goto LABEL_14;
  }

  sub_22619C81C(v22, v24, v26, 0);
  v57 = v51;
  sub_22619A7B4(&v57, &qword_27D78DE20, &unk_2261E6280);
  v58 = v52;
  sub_22619A7B4(&v58, &qword_27D78DE20, &unk_2261E6280);
  v59 = v53;
  sub_22619A7B4(&v59, &qword_27D78DE20, &unk_2261E6280);
  v28 = v69;
  (*(v69 + 56))(v8, 0, 1, v27);
  v29 = *(v28 + 32);
  v29(v10, v8, v27);
  v29(v43, v10, v27);
  sub_22619C7B4();
  sub_2261E434C();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2261DEFE0(uint64_t a1)
{
  v3 = sub_2261E3E2C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AppUUID(0);
  v8 = (a1 + *(v7 + 20));
  v9 = *v8;
  v10 = v8[1];
  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11)
  {
    return 0xD000000000000024;
  }

  v26[2] = v7;
  v12 = sub_2261A9864();
  sub_2261A2CB8(v29, v12);

  if (*(&v29[0] + 1) == 1 || (v30 = v29[0], v31 = v29[1], v32 = v29[2], v26[0] = sub_2261A54B0(), v26[1] = v1, v13 = v3, v15 = v14, v33 = v30, sub_22619A7B4(&v33, &qword_27D78DE20, &unk_2261E6280), v34 = v31, sub_22619A7B4(&v34, &qword_27D78DE20, &unk_2261E6280), v35 = v32, v16 = v4, v17 = v15, v18 = v13, sub_22619A7B4(&v35, &qword_27D78DE20, &unk_2261E6280), !v17))
  {
    v22 = 0xD000000000000016;
    v23 = sub_2261E3FEC();
    v27 = 0;
    v28 = 0xE000000000000000;
    sub_2261E410C();

    v27 = 0xD000000000000019;
    v28 = 0x80000002261EBB90;
    sub_2261DF364();
    v24 = sub_2261E423C();
    MEMORY[0x22AA782B0](v24);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v23, v27, v28, 0xD00000000000006CLL, 0x80000002261EE710, 130);
  }

  else
  {

    v19 = sub_2261A30F4();

    v20 = sub_2261A3324(v19, 4u);
    v27 = sub_22619A85C(v20);
    v28 = v21;
    MEMORY[0x22AA782B0](58, 0xE100000000000000);
    MEMORY[0x22AA782B0](v26[0], v17);

    MEMORY[0x22AA782B0](58, 0xE100000000000000);
    MEMORY[0x22AA782B0](v9, v10);
    sub_2261E3E1C();
    v22 = sub_2261E3DEC();

    (*(v16 + 8))(v6, v18);
  }

  return v22;
}

unint64_t sub_2261DF364()
{
  result = qword_27D78E2F8;
  if (!qword_27D78E2F8)
  {
    type metadata accessor for AppUUID(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D78E2F8);
  }

  return result;
}

void sub_2261DF3BC(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v65 = a2;
  v64 = sub_2261E406C();
  v62 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v5 = &v56 - v4;
  v6 = sub_2261E3E2C();
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = *(a1 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78E2F0, &unk_2261E8C30);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v56 - v13;
  sub_2261C34C0(&v56 - v13);
  v15 = type metadata accessor for AppUUID(0);
  (*(*(v15 - 8) + 56))(v14, 0, 1, v15);
  v16 = sub_2261DE21C();
  v66 = v2;
  if (v2)
  {
    sub_22619A7B4(v14, &qword_27D78E2F0, &unk_2261E8C30);
    return;
  }

  v19 = v16;
  v20 = v17;
  v21 = v18;
  v58 = v11;
  v59 = v9;
  v60 = v5;
  v61 = a1;
  v22 = v65;
  sub_22619A7B4(v14, &qword_27D78E2F0, &unk_2261E8C30);
  if ((v21 & 0x100) != 0)
  {
    v67 = v19;
    v68 = v20;
    v69 = v21 & 1;
    sub_22619C7B4();
    swift_willThrowTypedImpl();
    swift_allocError();
    *v50 = v19;
    *(v50 + 8) = v20;
    *(v50 + 16) = v21 & 1;
    return;
  }

  v23 = sub_2261E1EC4(v19, v20);
  v25 = v24;
  v27 = v26;
  sub_22619C81C(v19, v20, v21, 0);
  if ((v27 & 0x100) != 0)
  {
    v67 = v23;
    v68 = v25;
    v51 = v27 & 1;
    v69 = v51;
    sub_22619C7B4();
    swift_willThrowTypedImpl();
    swift_allocError();
    *v52 = v23;
    *(v52 + 8) = v25;
    *(v52 + 16) = v51;
    return;
  }

  type metadata accessor for CFData(0);
  v29 = sub_2261DFE64(v23, v25, v28);
  v30 = v25;
  v31 = v29;
  v33 = v32;
  v35 = v34;
  sub_22619C81C(v23, v30, v27, 0);
  if ((v35 & 0x100) != 0)
  {
    v67 = v31;
    v68 = v33;
    v69 = v35 & 1;
    sub_22619C838(v31, v33);
    sub_22619C7B4();
    swift_willThrowTypedImpl();
    swift_allocError();
    *v53 = v31;
    *(v53 + 8) = v33;
    *(v53 + 16) = v35 & 1;
    sub_2261795CC(v31, v33, v35, 1);
    return;
  }

  if (v31)
  {
    v56 = v31;
    v36 = sub_2261E3BBC();
    v38 = v37;
    v57 = v31;
    sub_2261795CC(v31, v33, v35, 0);
    sub_2261E3E1C();
    v39 = sub_2261E3DFC();
    LODWORD(v59) = v35;
    v41 = v40;
    sub_22619C840(v36, v38);
    v67 = v39;
    v68 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DE20, &unk_2261E6280);
    v42 = v60;
    v43 = v61;
    v44 = swift_dynamicCast();
    v45 = v64;
    if ((v44 & 1) == 0)
    {
      v54 = *(v63 + 56);
      v63 = v33;
      v54(v42, 1, 1, v43);
      (*(v62 + 8))(v42, v45);
      v55 = sub_2261E3FFC();
      v67 = 0;
      v68 = 0xE000000000000000;
      sub_2261E410C();
      MEMORY[0x22AA782B0](0xD000000000000036, 0x80000002261EE830);
      v70 = v56;
      sub_2261E413C();
      MEMORY[0x22AA782B0](32032, 0xE200000000000000);
      sub_2261A4EAC(v55, v67, v68, 0xD00000000000006CLL, 0x80000002261EE710, 71);

      sub_2261795CC(v57, v63, v59, 0);
      *v22 = 0xD000000000000027;
      *(v22 + 8) = 0x80000002261EE870;
      *(v22 + 16) = 1;
      sub_22619C7B4();
      sub_2261E434C();
      goto LABEL_15;
    }

    sub_2261795CC(v57, v33, v59, 0);
    v46 = v63;
    v47 = *(v63 + 56);
    v47(v42, 0, 1, v43);
    v48 = *(v46 + 32);
    v49 = v58;
    v48(v58, v42, v43);
    v48(v22, v49, v43);
    v47(v22, 0, 1, v43);
    sub_22619C7B4();
  }

  else
  {
    (*(v63 + 56))(v22, 1, 1, v61);
    sub_22619C7B4();
  }

  sub_2261E434C();
LABEL_15:
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_2261DFAC0()
{

  v1 = OBJC_IVAR____TtC17AppAttestInternal18AppUUIDDataManager_logger;
  v2 = sub_2261E3CDC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_2261DFB6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char **a5@<X8>)
{
  v10 = swift_allocObject();
  type metadata accessor for KeychainController(0);
  v11 = sub_2261A2B48();
  v12 = *v11;
  v13 = v11[1];

  *(v10 + 48) = sub_2261DFDC8(v12, v13);
  *(v10 + 56) = 0;
  v14 = OBJC_IVAR____TtC17AppAttestInternal18AppUUIDDataManager_logger;
  v15 = sub_2261A51A0();
  v16 = sub_2261E3CDC();
  result = (*(*(v16 - 8) + 16))(v10 + v14, v15, v16);
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  *(v10 + 40) = a4;
  *a5 = v10;
  return result;
}

uint64_t type metadata accessor for AppUUIDDataManager(uint64_t a1)
{
  result = qword_28136F920;
  if (!qword_28136F920)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2261DFD14(uint64_t a1)
{
  result = sub_2261E3CDC();
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

uint64_t sub_2261DFDC8(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v5 = OBJC_IVAR____TtC17AppAttestInternal18KeychainController_logger;
  v6 = sub_2261A50F8();
  v7 = sub_2261E3CDC();
  (*(*(v7 - 8) + 16))(v4 + v5, v6, v7);
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  return v4;
}

_OWORD *sub_2261DFE64(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v87 = a3;
  v93 = *MEMORY[0x277D85DE8];
  v7 = sub_2261E3CDC();
  v8 = MEMORY[0x28223BE20](v7);
  v84 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v13 = &v83 - v12;
  if (!a2 && !*(v3 + 24))
  {
    v67 = sub_2261E3FFC();
    sub_2261A4EAC(v67, 0xD000000000000040, 0x80000002261EE8D0, 0xD00000000000006FLL, 0x80000002261EE920, 30);
    return 0xD000000000000013;
  }

  v88 = a1;
  v85 = v11;
  v86 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78E078, &qword_2261E7260);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2261E6800;
  v15 = *MEMORY[0x277CDC228];
  *(inited + 32) = *MEMORY[0x277CDC228];
  v16 = *MEMORY[0x277CDC250];
  type metadata accessor for CFString(0);
  v18 = v17;
  *(inited + 40) = v16;
  v19 = *MEMORY[0x277CDC5C8];
  *(inited + 64) = v17;
  *(inited + 72) = v19;
  v20 = sub_2261E0978();
  v83 = v15;
  v21 = v16;
  v22 = v19;
  v23 = sub_2261E402C();
  *(inited + 104) = v20;
  *(inited + 80) = v23;
  v24 = sub_2261CB294(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78E080, &qword_2261E7268);
  swift_arrayDestroy();
  if (a2)
  {
    v25 = HIBYTE(a2) & 0xF;
    v26 = v88;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v25 = v88 & 0xFFFFFFFFFFFFLL;
    }

    if (!v25)
    {
      v54 = v85;
      v55 = v86;
      (*(v85 + 16))(v13, v4 + OBJC_IVAR____TtC17AppAttestInternal18KeychainController_logger, v86);

      v56 = sub_2261E3FFC();
      *&v91 = 0;
      *(&v91 + 1) = 0xE000000000000000;
      sub_2261E410C();
      MEMORY[0x22AA782B0](0xD000000000000020, 0x80000002261EEA10);
      MEMORY[0x22AA782B0](v26, a2);

      MEMORY[0x22AA782B0](0x737365636361202CLL, 0xEE003D70756F7247);
      v57 = *(v4 + 24);
      if (v57)
      {
        v58 = *(v4 + 16);
      }

      else
      {
        v58 = 7104878;
        v57 = 0xE300000000000000;
      }

      MEMORY[0x22AA782B0](v58, v57);

      MEMORY[0x22AA782B0](32032, 0xE200000000000000);
      sub_2261A4EAC(v56, v91, *(&v91 + 1), 0xD00000000000006FLL, 0x80000002261EE920, 41);

      (*(v54 + 8))(v13, v55);
      return 0xD000000000000017;
    }

    v27 = *MEMORY[0x277CDC080];
    v28 = MEMORY[0x277D837D0];
    v92 = MEMORY[0x277D837D0];
    *&v91 = v88;
    *(&v91 + 1) = a2;
    sub_22619A7A4(&v91, result);
    swift_bridgeObjectRetain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v89 = v24;
    sub_2261CAD8C(result, v27, isUniquelyReferenced_nonNull_native);
    v30 = v89;
    type metadata accessor for CFData(0);
    if (v31 == v87)
    {
      v68 = *MEMORY[0x277CDBFB8];
      v92 = v28;
      *&v91 = v26;
      *(&v91 + 1) = a2;
      sub_22619A7A4(&v91, result);

      v69 = swift_isUniquelyReferenced_nonNull_native();
      v89 = v30;
      sub_2261CAD8C(result, v68, v69);
      v70 = v89;
      v71 = *MEMORY[0x277CDBF20];
      v92 = v28;
      *&v91 = v26;
      *(&v91 + 1) = a2;
      sub_22619A7A4(&v91, result);

      v72 = swift_isUniquelyReferenced_nonNull_native();
      v89 = v70;
      sub_2261CAD8C(result, v71, v72);
      v73 = v89;
      v74 = *MEMORY[0x277CDC120];
      v92 = v28;
      *&v91 = v26;
      *(&v91 + 1) = a2;
      sub_22619A7A4(&v91, result);
      v75 = swift_isUniquelyReferenced_nonNull_native();
      v89 = v73;
      sub_2261CAD8C(result, v74, v75);
      v76 = v89;
      v77 = *MEMORY[0x277CDC558];
      v78 = sub_2261E402C();
      v92 = v20;
      *&v91 = v78;
      sub_22619A7A4(&v91, result);
      v79 = swift_isUniquelyReferenced_nonNull_native();
      v89 = v76;
      sub_2261CAD8C(result, v77, v79);
      v80 = v89;
      v81 = *MEMORY[0x277CDC238];
      v92 = v18;
      *&v91 = v81;
      sub_22619A7A4(&v91, result);
      v82 = v81;
      v39 = swift_isUniquelyReferenced_nonNull_native();
      v89 = v80;
      v40 = v83;
      goto LABEL_11;
    }

    v32 = *MEMORY[0x277CDC568];
    v33 = sub_2261E402C();
    v92 = v20;
    *&v91 = v33;
    sub_22619A7A4(&v91, result);
  }

  else
  {
    v34 = *MEMORY[0x277CDC550];
    v35 = sub_2261E402C();
    v92 = v20;
    *&v91 = v35;
    sub_22619A7A4(&v91, result);
    v36 = swift_isUniquelyReferenced_nonNull_native();
    v89 = v24;
    sub_2261CAD8C(result, v34, v36);
    v30 = v89;
    v32 = *MEMORY[0x277CDC428];
    v37 = *MEMORY[0x277CDC430];
    v92 = v18;
    *&v91 = v37;
    sub_22619A7A4(&v91, result);
    v38 = v37;
  }

  v39 = swift_isUniquelyReferenced_nonNull_native();
  v89 = v30;
  v40 = v32;
LABEL_11:
  v41 = sub_2261CAD8C(result, v40, v39);
  v42 = v89;
  v43 = *(v4 + 16);
  v44 = *(v4 + 24);
  if (v44)
  {
    v45 = HIBYTE(v44) & 0xF;
    if ((v44 & 0x2000000000000000) == 0)
    {
      v45 = v43 & 0xFFFFFFFFFFFFLL;
    }

    if (!v45)
    {

      return 0xD00000000000001ELL;
    }

    v46 = *MEMORY[0x277CDBEC8];
    v92 = MEMORY[0x277D837D0];
    *&v91 = v43;
    *(&v91 + 1) = v44;
    sub_22619A7A4(&v91, result);

    v47 = swift_isUniquelyReferenced_nonNull_native();
    v89 = v42;
    v41 = sub_2261CAD8C(result, v46, v47);
    v42 = v89;
  }

  if (*MEMORY[0x277CDC5D0])
  {
    v48 = *MEMORY[0x277CDC5D0];
    v49 = sub_2261E402C();
    v92 = v20;
    *&v91 = v49;
    sub_22619A7A4(&v91, result);
    v50 = swift_isUniquelyReferenced_nonNull_native();
    v89 = v42;
    sub_2261CAD8C(result, v48, v50);

    result[0] = 0;
    sub_2261E2428(&qword_28136E200, type metadata accessor for CFString, &unk_2261E7344);
    v51 = sub_2261E3D4C();
    v52 = SecItemCopyMatching(v51, result);

    if (v52 != -25300 && v52)
    {
      v59 = v43;
      v60 = 7104878;
      (*(v85 + 16))(v84, v4 + OBJC_IVAR____TtC17AppAttestInternal18KeychainController_logger, v86);
      v61 = sub_2261E3FFC();
      *&v91 = 0;
      *(&v91 + 1) = 0xE000000000000000;
      sub_2261E410C();
      MEMORY[0x22AA782B0](0xD00000000000002ALL, 0x80000002261EE990);
      LODWORD(v89) = v52;
      v62 = sub_2261E423C();
      MEMORY[0x22AA782B0](v62);

      MEMORY[0x22AA782B0](0x3D6C6562616C202CLL, 0xE800000000000000);
      if (a2)
      {
        v63 = v88;
      }

      else
      {
        v63 = 7104878;
      }

      v64 = 0xE300000000000000;
      if (a2)
      {
        v65 = a2;
      }

      else
      {
        v65 = 0xE300000000000000;
      }

      MEMORY[0x22AA782B0](v63, v65);

      MEMORY[0x22AA782B0](0x737365636361202CLL, 0xEE003D70756F7247);
      if (v44)
      {

        v60 = v59;
        v64 = v44;
      }

      MEMORY[0x22AA782B0](v60, v64);

      MEMORY[0x22AA782B0](32032, 0xE200000000000000);
      v66 = v84;
      sub_2261A4EAC(v61, v91, *(&v91 + 1), 0xD00000000000006FLL, 0x80000002261EE920, 78);

      (*(v85 + 8))(v66, v86);
      swift_unknownObjectRelease();
      return 0xD000000000000020;
    }

    else
    {

      v41 = result[0];
      if (result[0])
      {
        *&v91 = result[0];
        swift_unknownObjectRetain();
        if (swift_dynamicCast())
        {
          v53 = v89;
          swift_unknownObjectRelease();
          return v53;
        }

        else
        {
          swift_unknownObjectRelease();
          return 0;
        }
      }
    }
  }

  else
  {
    __break(1u);
  }

  return v41;
}

unint64_t sub_2261E0978()
{
  result = qword_28136E1A0;
  if (!qword_28136E1A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28136E1A0);
  }

  return result;
}

_OWORD *sub_2261E09C4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v97 = *MEMORY[0x277D85DE8];
  v10 = sub_2261E3CDC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v14 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v14)
  {
    v20 = sub_2261E3FFC();
    *&v95 = 0;
    *(&v95 + 1) = 0xE000000000000000;
    sub_2261E410C();

    *&v95 = 0xD000000000000020;
    *(&v95 + 1) = 0x80000002261EEA10;
    MEMORY[0x22AA782B0](a2, a3);
    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v20, v95, *(&v95 + 1), 0xD00000000000006FLL, 0x80000002261EE920, 94);

    return 0xD000000000000017;
  }

  v15 = sub_2261E14D0(a2, a3, a4);
  if (v17 != -1)
  {
    sub_2261E2410(v15, v16, v17);
    v18 = sub_2261E3FFC();
    *&v95 = 0;
    *(&v95 + 1) = 0xE000000000000000;
    sub_2261E410C();

    *&v95 = 0xD00000000000002ELL;
    *(&v95 + 1) = 0x80000002261EEAC0;
    MEMORY[0x22AA782B0](a2, a3);
    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v18, v95, *(&v95 + 1), 0xD00000000000006FLL, 0x80000002261EE920, 99);

    return 0xD000000000000025;
  }

  v90 = a1;
  v91 = a4;
  v87 = v13;
  v88 = v11;
  v89 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78E078, &qword_2261E7260);
  v19 = swift_allocObject();
  v19[1] = xmmword_2261E5760;
  v21 = *MEMORY[0x277CDC080];
  *(v19 + 4) = *MEMORY[0x277CDC080];
  v22 = MEMORY[0x277D837D0];
  *(v19 + 5) = a2;
  *(v19 + 6) = a3;
  v23 = *MEMORY[0x277CDBED8];
  *(v19 + 8) = v22;
  *(v19 + 9) = v23;
  v24 = *MEMORY[0x277CDBF00];
  if (!*MEMORY[0x277CDBF00])
  {
    __break(1u);
    goto LABEL_30;
  }

  v25 = v19;
  type metadata accessor for CFString(0);
  v25[10] = v24;
  v26 = *MEMORY[0x277CDC5C8];
  v92 = v27;
  v25[13] = v27;
  v25[14] = v26;
  v28 = sub_2261E0978();
  v29 = v21;

  v30 = v23;
  v31 = v26;
  v32 = v24;
  v33 = sub_2261E402C();
  v25[18] = v28;
  v25[15] = v33;
  v34 = sub_2261CB294(v25);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78E080, &qword_2261E7268);
  swift_arrayDestroy();
  v19 = swift_deallocClassInstance();
  if (!*MEMORY[0x277CDC5D0])
  {
LABEL_30:
    __break(1u);
    return v19;
  }

  v35 = *MEMORY[0x277CDC5D0];
  v36 = sub_2261E402C();
  v96 = v28;
  *&v95 = v36;
  sub_22619A7A4(&v95, result);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v93 = v34;
  sub_2261CAD8C(result, v35, isUniquelyReferenced_nonNull_native);

  v38 = v93;
  type metadata accessor for CFData(0);
  v40 = v90;
  v39 = v91;
  if (v41 == v91)
  {
    v51 = *MEMORY[0x277CDBFB8];
    v52 = MEMORY[0x277D837D0];
    v96 = MEMORY[0x277D837D0];
    *&v95 = a2;
    *(&v95 + 1) = a3;
    sub_22619A7A4(&v95, result);

    v53 = swift_isUniquelyReferenced_nonNull_native();
    v93 = v38;
    sub_2261CAD8C(result, v51, v53);
    v54 = v93;
    v55 = *MEMORY[0x277CDBF20];
    v96 = v52;
    *&v95 = a2;
    *(&v95 + 1) = a3;
    sub_22619A7A4(&v95, result);

    v56 = swift_isUniquelyReferenced_nonNull_native();
    v93 = v54;
    sub_2261CAD8C(result, v55, v56);
    v57 = v93;
    v58 = *MEMORY[0x277CDC120];
    v96 = v52;
    *&v95 = a2;
    *(&v95 + 1) = a3;
    sub_22619A7A4(&v95, result);

    v59 = swift_isUniquelyReferenced_nonNull_native();
    v93 = v57;
    sub_2261CAD8C(result, v58, v59);
    v60 = v93;
    v61 = *MEMORY[0x277CDC228];
    v62 = *MEMORY[0x277CDC238];
    v96 = v92;
    *&v95 = v62;
    sub_22619A7A4(&v95, result);
    v63 = v62;
    v64 = swift_isUniquelyReferenced_nonNull_native();
    v93 = v60;
    sub_2261CAD8C(result, v61, v64);
    v65 = v93;
    v66 = *MEMORY[0x277CDC5E8];
    v96 = v39;
    *&v95 = v40;
    sub_22619A7A4(&v95, result);
    swift_unknownObjectRetain();
    v67 = swift_isUniquelyReferenced_nonNull_native();
    v93 = v65;
    sub_2261CAD8C(result, v66, v67);
    v49 = v93;
    v50 = MEMORY[0x277CDC560];
  }

  else
  {
    v42 = *MEMORY[0x277CDC228];
    v43 = *MEMORY[0x277CDC250];
    v96 = v92;
    *&v95 = v43;
    sub_22619A7A4(&v95, result);
    v44 = v43;
    v45 = swift_isUniquelyReferenced_nonNull_native();
    v93 = v38;
    sub_2261CAD8C(result, v42, v45);
    v46 = v93;
    v47 = *MEMORY[0x277CDC5F8];
    v96 = v39;
    *&v95 = v40;
    sub_22619A7A4(&v95, result);
    swift_unknownObjectRetain();
    v48 = swift_isUniquelyReferenced_nonNull_native();
    v93 = v46;
    sub_2261CAD8C(result, v47, v48);
    v49 = v93;
    v50 = MEMORY[0x277CDC568];
  }

  v68 = *v50;
  v69 = sub_2261E402C();
  v96 = v28;
  *&v95 = v69;
  sub_22619A7A4(&v95, result);
  v70 = swift_isUniquelyReferenced_nonNull_native();
  v93 = v49;
  sub_2261CAD8C(result, v68, v70);
  v71 = v93;
  v73 = *(v5 + 16);
  v72 = *(v5 + 24);
  if (v72)
  {
    v74 = HIBYTE(v72) & 0xF;
    if ((v72 & 0x2000000000000000) == 0)
    {
      v74 = v73 & 0xFFFFFFFFFFFFLL;
    }

    if (!v74)
    {

      v82 = sub_2261E3FFC();
      *&v95 = 0;
      *(&v95 + 1) = 0xE000000000000000;
      sub_2261E410C();
      MEMORY[0x22AA782B0](0xD000000000000027, 0x80000002261EEA90);
      MEMORY[0x22AA782B0](a2, a3);
      MEMORY[0x22AA782B0](0x737365636361202CLL, 0xEE003D70756F7247);
      MEMORY[0x22AA782B0](v73, v72);

      MEMORY[0x22AA782B0](32032, 0xE200000000000000);
      sub_2261A4EAC(v82, v95, *(&v95 + 1), 0xD00000000000006FLL, 0x80000002261EE920, 130);

      return 0xD00000000000001ELL;
    }

    v75 = *MEMORY[0x277CDBEC8];
    v96 = MEMORY[0x277D837D0];
    v76 = v73;
    *&v95 = v73;
    *(&v95 + 1) = v72;
    sub_22619A7A4(&v95, result);

    v77 = swift_isUniquelyReferenced_nonNull_native();
    v93 = v71;
    sub_2261CAD8C(result, v75, v77);
  }

  else
  {
    v76 = *(v5 + 16);
  }

  result[0] = 0;
  sub_2261E2428(&qword_28136E200, type metadata accessor for CFString, &unk_2261E7344);
  v78 = sub_2261E3D4C();
  v79 = SecItemAdd(v78, result);

  if (v79)
  {
    (*(v88 + 16))(v87, v5 + OBJC_IVAR____TtC17AppAttestInternal18KeychainController_logger, v89);
    LODWORD(v92) = sub_2261E3FFC();
    *&v95 = 0;
    *(&v95 + 1) = 0xE000000000000000;
    sub_2261E410C();
    MEMORY[0x22AA782B0](0xD00000000000002ALL, 0x80000002261EEA60);
    LODWORD(v93) = v79;
    v80 = sub_2261E423C();
    MEMORY[0x22AA782B0](v80);

    MEMORY[0x22AA782B0](0x3D6C6562616C202CLL, 0xE800000000000000);
    MEMORY[0x22AA782B0](a2, a3);
    MEMORY[0x22AA782B0](0x737365636361202CLL, 0xEE003D70756F7247);
    if (v72)
    {
    }

    else
    {
      v72 = 0xE300000000000000;
      v76 = 7104878;
    }

    MEMORY[0x22AA782B0](v76, v72);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    v83 = v87;
    sub_2261A4EAC(v92, v95, *(&v95 + 1), 0xD00000000000006FLL, 0x80000002261EE920, 140);

    (*(v88 + 8))(v83, v89);
    *&v95 = 0;
    *(&v95 + 1) = 0xE000000000000000;
    sub_2261E410C();

    *&v95 = 0xD00000000000002ALL;
    *(&v95 + 1) = 0x80000002261EEA60;
    LODWORD(v93) = v79;
    v84 = sub_2261E423C();
    MEMORY[0x22AA782B0](v84);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    v85 = v95;
    swift_unknownObjectRelease();
    return v85;
  }

  else
  {

    v19 = result[0];
    if (result[0])
    {
      *&v95 = result[0];
      swift_unknownObjectRetain();
      if (swift_dynamicCast())
      {
        v81 = v93;
        swift_unknownObjectRelease();
        return v81;
      }

      else
      {
        swift_unknownObjectRelease();
        return 0;
      }
    }
  }

  return v19;
}

uint64_t sub_2261E14D0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v66 = a3;
  v65 = sub_2261E3CDC();
  v64 = *(v65 - 8);
  v7 = MEMORY[0x28223BE20](v65);
  v63 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v61 = &v61 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78E078, &qword_2261E7260);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2261E6800;
  v11 = *MEMORY[0x277CDC228];
  *(inited + 32) = *MEMORY[0x277CDC228];
  v12 = *MEMORY[0x277CDC250];
  type metadata accessor for CFString(0);
  v14 = v13;
  *(inited + 40) = v12;
  v15 = *MEMORY[0x277CDC5C8];
  *(inited + 64) = v13;
  *(inited + 72) = v15;
  v16 = sub_2261E0978();
  v62 = v11;
  v17 = v12;
  v18 = v15;
  v19 = sub_2261E402C();
  *(inited + 104) = v16;
  *(inited + 80) = v19;
  v20 = sub_2261CB294(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78E080, &qword_2261E7268);
  result = swift_arrayDestroy();
  if (!*MEMORY[0x277CDC5D0])
  {
    __break(1u);
    return result;
  }

  v22 = *MEMORY[0x277CDC5D0];
  v23 = sub_2261E402C();
  v70 = v16;
  *&v69 = v23;
  sub_22619A7A4(&v69, v68);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v67 = v20;
  sub_2261CAD8C(v68, v22, isUniquelyReferenced_nonNull_native);

  v25 = v67;
  if (a2)
  {
    v26 = HIBYTE(a2) & 0xF;
    v27 = a1;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v26 = a1 & 0xFFFFFFFFFFFFLL;
    }

    if (!v26)
    {

      v34 = sub_2261E3FFC();
      *&v69 = 0;
      *(&v69 + 1) = 0xE000000000000000;
      sub_2261E410C();

      *&v69 = 0xD000000000000020;
      *(&v69 + 1) = 0x80000002261EEA10;
      MEMORY[0x22AA782B0](a1, a2);

      MEMORY[0x22AA782B0](32032, 0xE200000000000000);
      sub_2261A4EAC(v34, v69, *(&v69 + 1), 0xD00000000000006FLL, 0x80000002261EE920, 169);

      return 0xD000000000000017;
    }

    type metadata accessor for CFData(0);
    v28 = *MEMORY[0x277CDC080];
    if (v29 == v66)
    {
      v35 = MEMORY[0x277D837D0];
      v70 = MEMORY[0x277D837D0];
      *&v69 = v27;
      *(&v69 + 1) = a2;
      sub_22619A7A4(&v69, v68);
      swift_bridgeObjectRetain_n();
      v36 = swift_isUniquelyReferenced_nonNull_native();
      v67 = v25;
      sub_2261CAD8C(v68, v28, v36);
      v37 = v67;
      v38 = *MEMORY[0x277CDBFB8];
      v70 = v35;
      *&v69 = v27;
      *(&v69 + 1) = a2;
      sub_22619A7A4(&v69, v68);

      v39 = swift_isUniquelyReferenced_nonNull_native();
      v67 = v37;
      sub_2261CAD8C(v68, v38, v39);
      v40 = v67;
      v41 = *MEMORY[0x277CDBF20];
      v70 = v35;
      *&v69 = v27;
      *(&v69 + 1) = a2;
      sub_22619A7A4(&v69, v68);

      v42 = swift_isUniquelyReferenced_nonNull_native();
      v67 = v40;
      sub_2261CAD8C(v68, v41, v42);
      v43 = v67;
      v44 = *MEMORY[0x277CDC120];
      v70 = v35;
      *&v69 = v27;
      *(&v69 + 1) = a2;
      sub_22619A7A4(&v69, v68);
      v30 = swift_isUniquelyReferenced_nonNull_native();
      v67 = v43;
      v31 = v44;
    }

    else
    {
      v70 = MEMORY[0x277D837D0];
      *&v69 = a1;
      *(&v69 + 1) = a2;
      sub_22619A7A4(&v69, v68);

      v30 = swift_isUniquelyReferenced_nonNull_native();
      v67 = v25;
      v31 = v28;
    }

    sub_2261CAD8C(v68, v31, v30);
    v25 = v67;
    v33 = *(v4 + 16);
    v32 = *(v4 + 24);
    if (!v32)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v27 = a1;
    v33 = *(v4 + 16);
    v32 = *(v4 + 24);
    if (!v32)
    {
      goto LABEL_17;
    }
  }

  v45 = HIBYTE(v32) & 0xF;
  if ((v32 & 0x2000000000000000) == 0)
  {
    v45 = v33 & 0xFFFFFFFFFFFFLL;
  }

  if (!v45)
  {
    v57 = v61;
    (*(v64 + 16))(v61, v4 + OBJC_IVAR____TtC17AppAttestInternal18KeychainController_logger, v65);

    v58 = sub_2261E3FFC();
    *&v69 = 0;
    *(&v69 + 1) = 0xE000000000000000;
    sub_2261E410C();
    MEMORY[0x22AA782B0](0xD000000000000027, 0x80000002261EEA90);
    if (a2)
    {
    }

    else
    {
      v27 = 7104878;
      a2 = 0xE300000000000000;
    }

    MEMORY[0x22AA782B0](v27, a2);

    MEMORY[0x22AA782B0](0x737365636361202CLL, 0xEE003D70756F7247);
    MEMORY[0x22AA782B0](v33, v32);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v58, v69, *(&v69 + 1), 0xD00000000000006FLL, 0x80000002261EE920, 185);

    (*(v64 + 8))(v57, v65);
    return 0xD00000000000001ELL;
  }

  v46 = *MEMORY[0x277CDBEC8];
  v70 = MEMORY[0x277D837D0];
  *&v69 = v33;
  *(&v69 + 1) = v32;
  sub_22619A7A4(&v69, v68);

  v47 = swift_isUniquelyReferenced_nonNull_native();
  v67 = v25;
  sub_2261CAD8C(v68, v46, v47);
  v25 = v67;
LABEL_17:
  type metadata accessor for CFData(0);
  if (v48 == v66)
  {
    v49 = *MEMORY[0x277CDC238];
    v70 = v14;
    *&v69 = v49;
    sub_22619A7A4(&v69, v68);
    v50 = v49;
    v51 = swift_isUniquelyReferenced_nonNull_native();
    v67 = v25;
    sub_2261CAD8C(v68, v62, v51);
  }

  sub_2261E2428(&qword_28136E200, type metadata accessor for CFString, &unk_2261E7344);
  v52 = sub_2261E3D4C();
  v53 = SecItemDelete(v52);

  if (v53 != -25300 && v53)
  {
    (*(v64 + 16))(v63, v4 + OBJC_IVAR____TtC17AppAttestInternal18KeychainController_logger, v65);
    v54 = sub_2261E3FFC();
    *&v69 = 0;
    *(&v69 + 1) = 0xE000000000000000;
    sub_2261E410C();
    MEMORY[0x22AA782B0](0xD000000000000029, 0x80000002261EEB20);
    LODWORD(v68[0]) = v53;
    v55 = sub_2261E423C();
    MEMORY[0x22AA782B0](v55);

    MEMORY[0x22AA782B0](0x3D6C6562616C202CLL, 0xE800000000000000);
    if (a2)
    {
      v56 = a2;
    }

    else
    {
      v27 = 0;
      v56 = 0xE000000000000000;
    }

    MEMORY[0x22AA782B0](v27, v56);

    MEMORY[0x22AA782B0](0x737365636361202CLL, 0xEE003D70756F7247);
    if (v32)
    {
    }

    else
    {
      v33 = 7104878;
      v32 = 0xE300000000000000;
    }

    MEMORY[0x22AA782B0](v33, v32);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    v59 = v63;
    sub_2261A4EAC(v54, v69, *(&v69 + 1), 0xD00000000000006FLL, 0x80000002261EE920, 198);

    (*(v64 + 8))(v59, v65);
    *&v69 = 0;
    *(&v69 + 1) = 0xE000000000000000;
    sub_2261E410C();

    *&v69 = 0xD00000000000002ELL;
    *(&v69 + 1) = 0x80000002261EEB50;
    LODWORD(v68[0]) = v53;
    v60 = sub_2261E423C();
    MEMORY[0x22AA782B0](v60);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    return v69;
  }

  else
  {

    return 0;
  }
}

unint64_t sub_2261E1EC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2261E3D3C();
  v31 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2261E3D2C();
  v32 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v30 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2261E3E2C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2261E3E1C();
  v13 = a1;
  v14 = a2;
  v15 = sub_2261E3DEC();
  v17 = v16;
  (*(v10 + 8))(v12, v9);
  v33 = v17 >> 60;
  if (v17 >> 60 == 15)
  {
    v18 = 0xD000000000000012;
    v19 = sub_2261E3FFC();
    v36 = 0;
    v37 = 0xE000000000000000;
    sub_2261E410C();

    v36 = 0xD00000000000002ELL;
    v37 = 0x80000002261EEB80;
    MEMORY[0x22AA782B0](v13, v14);
    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v19, v36, v37, 0xD00000000000006FLL, 0x80000002261EE920, 207);
  }

  else
  {
    sub_2261E2428(&qword_28136E230, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
    sub_2261E3D1C();
    sub_22619D8F4(v15, v17);
    sub_22619D714(v15, v17, v6);
    sub_2261A28B8(v15, v17);
    v20 = v30;
    sub_2261E3D0C();
    (*(v31 + 8))(v6, v4);
    v38 = v7;
    v39 = sub_2261E2428(&qword_28136E238, MEMORY[0x277CC5290], MEMORY[0x277CC5280]);
    v21 = __swift_allocate_boxed_opaque_existential_1(&v36);
    v22 = v32;
    (*(v32 + 16))(v21, v20, v7);
    __swift_project_boxed_opaque_existential_0(&v36, v38);
    sub_2261E3ADC();
    (*(v22 + 8))(v20, v7);
    v23 = v34;
    v24 = v35;
    __swift_destroy_boxed_opaque_existential_0(&v36);
    v25 = sub_2261A2B54();
    v27 = *v25;
    v26 = *(v25 + 1);
    v36 = v27;
    v37 = v26;

    MEMORY[0x22AA782B0](58, 0xE100000000000000);
    v28 = sub_2261E3B9C();
    MEMORY[0x22AA782B0](v28);

    sub_22619C840(v23, v24);
    sub_2261A28B8(v15, v17);
    return v36;
  }

  return v18;
}

uint64_t sub_2261E236C()
{

  v1 = OBJC_IVAR____TtC17AppAttestInternal18KeychainController_logger;
  v2 = sub_2261E3CDC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_2261E2410(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_22619C830(a1, a2);
  }

  return a1;
}

uint64_t sub_2261E2428(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for KeychainController(uint64_t a1)
{
  result = qword_28136EF48;
  if (!qword_28136EF48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2261E24C4(uint64_t a1)
{
  result = sub_2261E3CDC();
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

uint64_t sub_2261E2560(__int128 *a1)
{
  v4 = sub_2261E2AE0(a1);
  if (v2)
  {
    return v1;
  }

  v5 = v4;
  v48 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78E0A0, &qword_2261E75C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2261E5760;
  v7 = sub_2261E3DAC();
  v8 = objc_opt_self();
  v9 = [v8 cborWithUTF8String_];

  *(inited + 32) = v9;
  v10 = sub_2261E3B8C();
  v11 = [v8 cborWithData_];

  *(inited + 40) = v11;
  v12 = sub_2261E3DAC();
  v13 = [v8 cborWithUTF8String_];

  *(inited + 48) = v13;
  v14 = sub_2261E3DAC();
  v15 = [v8 cborWithUTF8String_];

  *(inited + 56) = v15;
  v16 = sub_2261E3DAC();
  v17 = [v8 cborWithUTF8String_];

  *(inited + 64) = v17;
  *(inited + 72) = v5;
  v49 = v5;
  sub_2261CEFA0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78E0A8, qword_2261E75C8);
  swift_arrayDestroy();
  sub_2261CF098();
  sub_2261CF0E4();
  v18 = sub_2261E3D4C();

  v19 = [v8 cborWithDictionary_];

  v20 = *(a1 + 6);
  if (v20 >> 60 == 15)
  {
    goto LABEL_12;
  }

  v21 = *(a1 + 5);
  v23 = *(a1 + 7);
  v22 = *(a1 + 8);
  sub_22619D8F4(v21, *(a1 + 6));
  sub_22619D8F4(v23, v22);
  v47 = v19;
  v24 = [v19 dictionary];
  if (!v24)
  {
    v32 = OBJC_IVAR____TtC17AppAttestInternal22AttestationCBORManager_logger;
    v33 = sub_2261E3FFC();
    v1 = v48 + v32;
    sub_2261A4EAC(v33, 0xD000000000000029, 0x80000002261EDB20, 0xD000000000000070, 0x80000002261EEC10, 57);
    sub_22619C7B4();
    swift_allocError();
    *v34 = 0xD000000000000029;
    *(v34 + 8) = 0x80000002261EDB20;
    *(v34 + 16) = 1;
    swift_willThrow();

    sub_2261B52AC(v21, v20, v23, v22);
    v35 = v47;
    goto LABEL_14;
  }

  v25 = v24;
  v26 = sub_2261E3D6C();

  v45 = v22;
  v46 = v23;
  v27 = sub_2261E335C(v21, v20, v23, v22);
  v28 = sub_2261E3DAC();
  v29 = [v8 cborWithUTF8String_];

  if ((v26 & 0xC000000000000001) == 0)
  {
    v36 = v27;
    goto LABEL_11;
  }

  if (v26 >= 0)
  {
    v26 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  v30 = v27;
  result = sub_2261E416C();
  if (!__OFADD__(result, 1))
  {
    sub_2261CE790(v26, result + 1);
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_2261CEC14(v27, v29, isUniquelyReferenced_nonNull_native);

    v38 = sub_2261E3D4C();

    v19 = [v8 cborWithDictionary_];

    sub_2261B52AC(v21, v20, v46, v45);
LABEL_12:
    v39 = v19;
    v40 = sub_2261E3B4C();
    if (v41 >> 60 != 15)
    {
      v1 = v40;

      return v1;
    }

    v42 = OBJC_IVAR____TtC17AppAttestInternal22AttestationCBORManager_logger;
    v43 = sub_2261E3FFC();
    v1 = v48 + v42;
    sub_2261A4EAC(v43, 0xD00000000000001FLL, 0x80000002261EDA90, 0xD000000000000070, 0x80000002261EEC10, 80);
    sub_22619C7B4();
    swift_allocError();
    *v44 = 0xD00000000000001FLL;
    *(v44 + 8) = 0x80000002261EDA90;
    *(v44 + 16) = 1;
    swift_willThrow();

    v35 = v49;
LABEL_14:

    return v1;
  }

  __break(1u);
  return result;
}

char *sub_2261E2AE0(__int128 *a1)
{
  v2 = *(a1 + 2);
  if (v2 >> 62)
  {
    v19 = *(a1 + 2);
    v20 = sub_2261E416C();
    v2 = v19;
    v3 = v20;
    if (v20)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_3:
      v4 = v2;
      *&v56[0] = MEMORY[0x277D84F90];
      result = sub_2261E3230(0, v3 & ~(v3 >> 63), 0);
      if ((v3 & 0x8000000000000000) == 0)
      {
        v6 = 0;
        v7 = *&v56[0];
        v8 = v4;
        v58 = v4 & 0xC000000000000001;
        v9 = v4;
        do
        {
          if (v58)
          {
            v10 = MEMORY[0x22AA78540](v6, v8);
          }

          else
          {
            v10 = *(v8 + 8 * v6 + 32);
          }

          v11 = v10;
          v12 = sub_2261A2658();
          v14 = v13;

          *&v56[0] = v7;
          v16 = v7[2];
          v15 = v7[3];
          v17 = v16 + 1;
          if (v16 >= v15 >> 1)
          {
            sub_2261E3230((v15 > 1), v16 + 1, 1);
            v7 = *&v56[0];
          }

          ++v6;
          v7[2] = v17;
          v18 = &v7[2 * v16];
          v18[4] = v12;
          v18[5] = v14;
          v8 = v9;
        }

        while (v3 != v6);
        goto LABEL_14;
      }

      __break(1u);
      return result;
    }
  }

  v7 = MEMORY[0x277D84F90];
  v17 = *(MEMORY[0x277D84F90] + 16);
  if (v17)
  {
LABEL_14:
    v21 = v7[4];
    v22 = v7[5];
    v23 = &v7[2 * v17 + 4];
    v24 = *(v23 - 16);
    v25 = *(v23 - 8);
    sub_22619D8F4(v21, v22);
    sub_22619D8F4(v24, v25);

    sub_22619D8F4(v21, v22);
    v26 = sub_2261E3B8C();
    v27 = objc_opt_self();
    v28 = [v27 cborWithData_];

    sub_22619C840(v21, v22);
    sub_22619D8F4(v24, v25);
    v58 = v24;
    v29 = sub_2261E3B8C();
    v30 = [v27 &selRef:v29 base64EncodedStringWithOptions:? + 6];

    sub_22619C840(v24, v25);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78E308, qword_2261E8D30);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_2261E8D20;
    *(v31 + 32) = v28;
    *(v31 + 40) = v30;
    sub_2261CF098();
    v50 = v28;
    v49 = v30;
    v32 = sub_2261E3F1C();

    v33 = [v27 cborWithArray_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78E0A0, &qword_2261E75C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2261E6800;
    v35 = sub_2261E3DAC();
    v36 = [v27 cborWithUTF8String_];

    *(inited + 32) = v36;
    *(inited + 40) = v33;
    v48 = v33;
    v37 = sub_2261E3DAC();
    v38 = [v27 cborWithUTF8String_];

    *(inited + 48) = v38;
    v39 = sub_2261E3B8C();
    v40 = [v27 cborWithData_];

    *(inited + 56) = v40;
    sub_2261CEFA0(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78E0A8, qword_2261E75C8);
    swift_arrayDestroy();
    sub_2261CF0E4();
    v41 = sub_2261E3D4C();

    v42 = [v27 cborWithDictionary_];

    sub_22619C840(v21, v22);
    sub_22619C840(v58, v25);

    return v42;
  }

  v43 = sub_2261E3FFC();
  *&v56[0] = 0;
  *(&v56[0] + 1) = 0xE000000000000000;
  sub_2261E410C();

  v53 = a1[2];
  v54 = a1[3];
  v55 = *(a1 + 8);
  v51 = *a1;
  v52 = a1[1];
  sub_2261E355C(a1, v56);
  sub_2261D395C();
  v44 = sub_2261E423C();
  v46 = v45;
  v56[2] = v53;
  v56[3] = v54;
  v57 = v55;
  v56[0] = v51;
  v56[1] = v52;
  sub_2261E35B8(v56);
  MEMORY[0x22AA782B0](v44, v46);

  MEMORY[0x22AA782B0](32032, 0xE200000000000000);
  sub_2261A4EAC(v43, 0xD000000000000020, 0x80000002261EEC90, 0xD000000000000070, 0x80000002261EEC10, 95);

  sub_22619C7B4();
  swift_allocError();
  *v47 = 0xD00000000000001DLL;
  *(v47 + 8) = 0x80000002261EECC0;
  *(v47 + 16) = 1;
  return swift_willThrow();
}

uint64_t sub_2261E30C4()
{
  v1 = OBJC_IVAR____TtC17AppAttestInternal22AttestationCBORManager_logger;
  v2 = sub_2261E3CDC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_2261E3160()
{
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtC17AppAttestInternal22AttestationCBORManager_logger;
  v2 = sub_2261A5280();
  v3 = sub_2261E3CDC();
  (*(*(v3 - 8) + 16))(v0 + v1, v2, v3);
  return v0;
}

uint64_t sub_2261E31E8(uint64_t a1)
{
  v1 = *(a1 + 48);
  v4[2] = *(a1 + 32);
  v4[3] = v1;
  v5 = *(a1 + 64);
  v2 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v2;
  return sub_2261E2560(v4);
}

char *sub_2261E3230(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2261E3250(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2261E3250(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78E2E8, &unk_2261E8C20);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

id sub_2261E335C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78E0A0, &qword_2261E75C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2261E6800;
  v5 = sub_2261E3DAC();
  v6 = objc_opt_self();
  v7 = [v6 cborWithUTF8String_];

  *(inited + 32) = v7;
  v8 = sub_2261E3B8C();
  v9 = [v6 cborWithData_];

  *(inited + 40) = v9;
  v10 = sub_2261E3DAC();
  v11 = [v6 cborWithUTF8String_];

  *(inited + 48) = v11;
  v12 = sub_2261E3B8C();
  v13 = [v6 cborWithData_];

  *(inited + 56) = v13;
  sub_2261CEFA0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78E0A8, qword_2261E75C8);
  swift_arrayDestroy();
  sub_2261CF098();
  sub_2261CF0E4();
  v14 = sub_2261E3D4C();

  v15 = [v6 cborWithDictionary_];

  return v15;
}

uint64_t type metadata accessor for AttestationCBORManager(uint64_t a1)
{
  result = qword_28136EEA0;
  if (!qword_28136EEA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void AppAttest_WebAuthentication_AttestKey_cold_2(void *a1, uint8_t *buf)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_fault_impl(&dword_226177000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "%@", buf, 0xCu);
}