uint64_t sub_21CE423CC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 512) = v1;
  if (v1)
  {

    v2 = sub_21CE426F8;
  }

  else
  {
    v2 = sub_21CE424F0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21CE424F0()
{
  v1 = *(v0 + 288);

  v2 = sub_21CE6BD80();
  v3 = sub_21CE6CF30();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    if (v1 >> 62)
    {
      v5 = sub_21CE6D360();
    }

    else
    {
      v5 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v4 + 4) = v5;

    _os_log_impl(&dword_21CDE1000, v2, v3, "deleteSearchableItems done, adding %ld items to index", v4, 0xCu);
    MEMORY[0x21CF1BD50](v4, -1, -1);
  }

  else
  {
  }

  v6 = *(v0 + 504);
  v7 = *(v0 + 488);
  sub_21CDE40C8(0, &unk_281211A88, 0x277CC34B0);
  v8 = sub_21CE6CD30();
  *(v0 + 520) = v8;

  *(v0 + 80) = v0;
  *(v0 + 88) = sub_21CE4276C;
  v9 = swift_continuation_init();
  *(v0 + 264) = v6;
  *(v0 + 208) = MEMORY[0x277D85DD0];
  *(v0 + 216) = 1107296256;
  *(v0 + 224) = sub_21CE4B3C8;
  *(v0 + 232) = &block_descriptor_52;
  *(v0 + 240) = v9;
  [v7 indexSearchableItems:v8 completionHandler:v0 + 208];

  return MEMORY[0x282200938](v0 + 80);
}

uint64_t sub_21CE426F8()
{
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21CE4276C()
{
  v1 = *(*v0 + 112);
  *(*v0 + 528) = v1;
  if (v1)
  {

    v2 = sub_21CE42964;
  }

  else
  {
    v2 = sub_21CE42884;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21CE42884()
{
  v1 = sub_21CE6BD80();
  v2 = sub_21CE6CF30();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_21CDE1000, v1, v2, "adding done", v3, 2u);
    MEMORY[0x21CF1BD50](v3, -1, -1);
  }

  v4 = *(v0 + 8);
  v5 = *(v0 + 376);

  return v4(v5);
}

uint64_t sub_21CE42964()
{
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21CE429D8(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 392) = a7;
  *(v8 + 400) = v7;
  *(v8 + 376) = a5;
  *(v8 + 384) = a6;
  *(v8 + 360) = a3;
  *(v8 + 368) = a4;
  *(v8 + 584) = a2;
  *(v8 + 352) = a1;
  return MEMORY[0x2822009F8](sub_21CE42A08, 0, 0);
}

uint64_t sub_21CE42A08()
{
  v51 = v0;
  v1 = *(v0 + 352);
  v2 = MEMORY[0x277D84F90];
  v3 = sub_21CDFA79C(MEMORY[0x277D84F90]);
  *(v0 + 320) = MEMORY[0x277D84FA0];
  v4 = *(v1 + 32);
  *(v0 + 585) = v4;
  v5 = 1 << v4;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(v1 + 64);

  v8 = 0;
  while (1)
  {
    *(v0 + 408) = v3;
    *(v0 + 416) = v2;
    if (!v7)
    {
      while (1)
      {
        v10 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          __break(1u);
          goto LABEL_36;
        }

        if (v10 >= (((1 << *(v0 + 585)) + 63) >> 6))
        {
          break;
        }

        v9 = *(v0 + 352);
        v7 = *(v9 + 8 * v10 + 64);
        ++v8;
        if (v7)
        {
          v8 = v10;
          goto LABEL_11;
        }
      }

      v29 = *(v0 + 584);
      v30 = *(v0 + 360);

      v31 = *v30;
      v32 = *(v0 + 320);

      *v30 = sub_21CE452BC(v33, v31);
      if (v29)
      {

        v34 = *(v0 + 8);
        v35 = *(v0 + 408);

        return v34(v35);
      }

      v36 = *(v32 + 16);
      if (v36)
      {
        v2 = sub_21CE12CDC(*(v32 + 16), 0);
        v37 = sub_21CE49EB0(&v50, v2 + 4, v36, v32);
        sub_21CDEEAA0(v50);
        if (v37 == v36)
        {
LABEL_29:
          if (qword_281213298 == -1)
          {
            goto LABEL_30;
          }

LABEL_36:
          swift_once();
LABEL_30:
          v38 = sub_21CE6BDA0();
          *(v0 + 528) = __swift_project_value_buffer(v38, qword_2812165F0);

          v39 = sub_21CE6BD80();
          v40 = sub_21CE6CF30();

          if (os_log_type_enabled(v39, v40))
          {
            v41 = swift_slowAlloc();
            v42 = swift_slowAlloc();
            v50 = v42;
            *v41 = 136315138;
            v43 = MEMORY[0x21CF1AD30](v2, MEMORY[0x277D837D0]);
            v45 = sub_21CDF2CC8(v43, v44, &v50);

            *(v41 + 4) = v45;
            _os_log_impl(&dword_21CDE1000, v39, v40, "deleteSearchableItems for %s", v41, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v42);
            MEMORY[0x21CF1BD50](v42, -1, -1);
            MEMORY[0x21CF1BD50](v41, -1, -1);
          }

          v46 = *(*(v0 + 400) + 24);
          *(v0 + 536) = v46;
          v47 = sub_21CE6CD30();
          *(v0 + 544) = v47;

          *(v0 + 16) = v0;
          *(v0 + 24) = sub_21CE44C98;
          v48 = swift_continuation_init();
          v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40C88, &qword_21CE73420);
          *(v0 + 552) = v49;
          *(v0 + 200) = v49;
          *(v0 + 144) = MEMORY[0x277D85DD0];
          *(v0 + 152) = 1107296256;
          *(v0 + 160) = sub_21CE4B3C8;
          *(v0 + 168) = &block_descriptor_40;
          *(v0 + 176) = v48;
          [v46 deleteSearchableItemsWithDomainIdentifiers:v47 completionHandler:v0 + 144];
          v19 = v0 + 16;

          return MEMORY[0x282200938](v19);
        }

        __break(1u);
      }

      v2 = MEMORY[0x277D84F90];
      goto LABEL_29;
    }

    v9 = *(v0 + 352);
LABEL_11:
    *(v0 + 424) = v7;
    *(v0 + 432) = v8;
    v11 = *(v0 + 384);
    v12 = __clz(__rbit64(v7)) | (v8 << 6);
    v13 = (*(v9 + 48) + 16 * v12);
    v14 = *v13;
    *(v0 + 440) = *v13;
    v15 = v13[1];
    *(v0 + 448) = v15;
    v16 = *(*(v9 + 56) + 8 * v12);

    v17 = v11(v14, v15, v16);
    *(v0 + 456) = v17;

    v18 = sub_21CDFA7B0(v2);
    if (v17 >> 62)
    {
      break;
    }

    v19 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 464) = v19;
    if (v19)
    {
      goto LABEL_15;
    }

LABEL_13:
    v20 = *(v0 + 448);
    v21 = *(v0 + 440);
    v3 = *(v0 + 408);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v50 = v3;
    sub_21CE069B8(v18, v21, v20, isUniquelyReferenced_nonNull_native);

    v8 = *(v0 + 432);
    v7 = (*(v0 + 424) - 1) & *(v0 + 424);
  }

  v19 = sub_21CE6D360();
  *(v0 + 464) = v19;
  if (!v19)
  {
    goto LABEL_13;
  }

LABEL_15:
  *(v0 + 472) = v18;
  *(v0 + 480) = v2;
  v23 = *(v0 + 456);
  if ((v23 & 0xC000000000000001) != 0)
  {
    v24 = MEMORY[0x21CF1B2A0](0);
    goto LABEL_18;
  }

  if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    return MEMORY[0x282200938](v19);
  }

  v24 = *(v23 + 32);
LABEL_18:
  *(v0 + 488) = v24;
  *(v0 + 496) = 1;
  v25 = swift_task_alloc();
  *(v0 + 504) = v25;
  *v25 = v0;
  v25[1] = sub_21CE43360;
  v27 = *(v0 + 368);
  v26 = *(v0 + 376);

  return sub_21CE4C8D8(v27, v26);
}

uint64_t sub_21CE43360(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 512) = a1;
  *(v3 + 520) = v1;

  if (v1)
  {

    v4 = sub_21CE44340;
  }

  else
  {
    v4 = sub_21CE4348C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_21CE4348C()
{
  v126 = v0;
  v1 = *(v0 + 512);
  v2 = v1 >> 62;
  if (v1 >> 62)
  {
    v3 = sub_21CE6D360();
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *(v0 + 480);
  v5 = v4 >> 62;
  if (!(v4 >> 62))
  {
    v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = v6 + v3;
    if (!__OFADD__(v6, v3))
    {
      goto LABEL_5;
    }

LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v6 = sub_21CE6D360();
  v7 = v6 + v3;
  if (__OFADD__(v6, v3))
  {
    goto LABEL_60;
  }

LABEL_5:

  if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
  {
    if (!v5)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (v5)
  {
LABEL_11:
    sub_21CE6D360();
    goto LABEL_12;
  }

  v8 = v4 & 0xFFFFFFFFFFFFFF8;
  v9 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
  if (v9 >= v7)
  {
    v123 = *(v0 + 480);
    goto LABEL_13;
  }

LABEL_12:
  v123 = sub_21CE6D2D0();
  v8 = v123 & 0xFFFFFFFFFFFFFF8;
  v9 = *((v123 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
LABEL_13:
  v10 = *(v8 + 16);
  v11 = v9 - v10;
  if (v2)
  {
    if ((v1 & 0x8000000000000000) != 0)
    {
      v4 = *(v0 + 512);
    }

    else
    {
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
    }

    v14 = sub_21CE6D360();
    if (v14)
    {
      v15 = v14;
      v16 = sub_21CE6D360();
      if (v11 < v16)
      {
LABEL_127:
        __break(1u);
LABEL_128:
        __break(1u);
LABEL_129:
        swift_once();
        goto LABEL_107;
      }

      if (v15 < 1)
      {
        goto LABEL_128;
      }

      v120 = v16;
      v121 = v8;
      v122 = v1 >> 62;
      v4 = v8 + 8 * v10 + 32;
      sub_21CE4B2EC();
      for (i = 0; i != v15; ++i)
      {
        v18 = *(v0 + 512);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40300, &unk_21CE71920);
        v19 = sub_21CE141C4((v0 + 272), i, v18);
        v13 = *v20;
        (v19)(v0 + 272, 0);
        *(v4 + 8 * i) = v13;
      }

      v2 = v1 >> 62;
      v12 = v120;
      v8 = v121;
      goto LABEL_26;
    }

LABEL_30:

    if (v3 <= 0)
    {
      goto LABEL_31;
    }

LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  v12 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v12)
  {
    goto LABEL_30;
  }

  if (v11 < v12)
  {
LABEL_126:
    __break(1u);
    goto LABEL_127;
  }

  v13 = v8 + 8 * v10;
  sub_21CDE40C8(0, &unk_281211A88, 0x277CC34B0);
  swift_arrayInitWithCopy();
LABEL_26:

  if (v12 < v3)
  {
    goto LABEL_61;
  }

  if (v12 > 0)
  {
    v21 = *(v8 + 16);
    v22 = __OFADD__(v21, v12);
    v23 = v21 + v12;
    if (v22)
    {
      __break(1u);
      goto LABEL_122;
    }

    *(v8 + 16) = v23;
  }

LABEL_31:
  if (v2)
  {
    v6 = sub_21CE6D360();
    v24 = v6;
    if (v6)
    {
      goto LABEL_33;
    }

LABEL_47:
    v4 = MEMORY[0x277D84F90];
    goto LABEL_48;
  }

  v24 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v24)
  {
    goto LABEL_47;
  }

LABEL_33:
  if (v24 < 1)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v25 = 0;
  v26 = v1 & 0xC000000000000001;
  v124 = *(v0 + 512) + 32;
  v4 = MEMORY[0x277D84F90];
  do
  {
    if (v26)
    {
      v27 = MEMORY[0x21CF1B2A0](v25, *(v0 + 512));
    }

    else
    {
      v27 = *(v124 + 8 * v25);
    }

    v28 = v27;
    v29 = [v27 domainIdentifier];
    if (v29)
    {
      v30 = v29;
      v31 = sub_21CE6CC50();
      v33 = v32;

      sub_21CE4784C((v0 + 304), v31, v33);
    }

    v34 = sub_21CE4B458();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_21CDF2AEC(0, *(v4 + 16) + 1, 1, v4);
    }

    v36 = *(v4 + 16);
    v35 = *(v4 + 24);
    v3 = v36 + 1;
    if (v36 >= v35 >> 1)
    {
      v4 = sub_21CDF2AEC((v35 > 1), v36 + 1, 1, v4);
    }

    ++v25;

    *(v4 + 16) = v3;
    *(v4 + 8 * v36 + 32) = v34;
  }

  while (v24 != v25);
LABEL_48:
  v37 = *(v0 + 488);
  v11 = *(v0 + 472);

  v38 = [v37 identifier];
  v1 = sub_21CE6CC50();
  v2 = v39;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 344) = v11;
  v6 = sub_21CE66850(v1, v2);
  v42 = *(v11 + 16);
  v43 = (v41 & 1) == 0;
  v22 = __OFADD__(v42, v43);
  v44 = v42 + v43;
  if (v22)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  LOBYTE(v3) = v41;
  if (*(*(v0 + 472) + 24) >= v44)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_55;
    }

LABEL_64:
    v11 = v6;
    sub_21CE4728C(&unk_27CE40CA0, &unk_21CE70250);
    v6 = v11;
    v47 = *(v0 + 344);
    if (v3)
    {
      goto LABEL_56;
    }

    goto LABEL_65;
  }

  sub_21CE464E4(v44, isUniquelyReferenced_nonNull_native, &unk_27CE40CA0, &unk_21CE70250);
  v6 = sub_21CE66850(v1, v2);
  if ((v3 & 1) != (v45 & 1))
  {

    return sub_21CE6D440();
  }

LABEL_55:
  v47 = *(v0 + 344);
  if (v3)
  {
LABEL_56:
    v48 = *(v0 + 488);
    *(*(v47 + 7) + 8 * v6) = v4;

    goto LABEL_67;
  }

LABEL_65:
  *&v47[2 * (v6 >> 6) + 16] |= 1 << v6;
  v49 = (*(v47 + 6) + 16 * v6);
  *v49 = v1;
  v49[1] = v2;
  *(*(v47 + 7) + 8 * v6) = v4;
  v50 = *(v47 + 2);
  v22 = __OFADD__(v50, 1);
  v51 = v50 + 1;
  if (v22)
  {
LABEL_125:
    __break(1u);
    goto LABEL_126;
  }

  v52 = *(v0 + 488);
  *(v47 + 2) = v51;

LABEL_67:
  v13 = *(v0 + 496);
  if (v13 != *(v0 + 464))
  {
LABEL_114:
    *(v0 + 472) = v47;
    *(v0 + 480) = v123;
    v115 = *(v0 + 456);
    if ((v115 & 0xC000000000000001) == 0)
    {
      if (v13 >= *((v115 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_124:
        __break(1u);
        goto LABEL_125;
      }

      v116 = *(v115 + 8 * v13 + 32);
LABEL_117:
      v11 = v116;
      *(v0 + 488) = v116;
      *(v0 + 496) = v13 + 1;
      if (!__OFADD__(v13, 1))
      {
        v117 = swift_task_alloc();
        *(v0 + 504) = v117;
        *v117 = v0;
        v117[1] = sub_21CE43360;
        v119 = *(v0 + 368);
        v118 = *(v0 + 376);

        return sub_21CE4C8D8(v119, v118);
      }

      __break(1u);
      goto LABEL_124;
    }

LABEL_122:
    v116 = MEMORY[0x21CF1B2A0](v13);
    goto LABEL_117;
  }

  v53 = &qword_27CE406C0;
  v54 = *(v0 + 520);
  LODWORD(v122) = 136315138;
LABEL_69:
  v55 = *(v0 + 448);
  v56 = *(v0 + 440);
  v57 = *(v0 + 408);

  v58 = swift_isUniquelyReferenced_nonNull_native();
  v125 = v57;
  sub_21CE069B8(v47, v56, v55, v58);

  v59 = *(v0 + 432);
  v60 = (*(v0 + 424) - 1) & *(v0 + 424);
  *(v0 + 408) = v125;
  while (1)
  {
    *(v0 + 416) = v123;
    if (!v60)
    {
      break;
    }

    v68 = *(v0 + 352);
LABEL_78:
    *(v0 + 424) = v60;
    *(v0 + 432) = v59;
    v11 = *(v0 + 384);
    v70 = __clz(__rbit64(v60)) | (v59 << 6);
    v71 = *(v68 + 48) + 16 * v70;
    v47 = *v71;
    *(v0 + 440) = *v71;
    v72 = *(v71 + 8);
    *(v0 + 448) = v72;
    v73 = *(*(v68 + 56) + 8 * v70);

    v74 = (v11)(v47, v72, v73);
    *(v0 + 456) = v74;

    if (!v54)
    {
      v47 = sub_21CDFA7B0(MEMORY[0x277D84F90]);
      if (v74 >> 62)
      {
        v93 = sub_21CE6D360();
      }

      else
      {
        v93 = *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v54 = 0;
      *(v0 + 464) = v93;
      if (v93)
      {
LABEL_113:
        v13 = 0;
        goto LABEL_114;
      }

      goto LABEL_69;
    }

    *(v0 + 328) = v54;
    v75 = v54;
    __swift_instantiateConcreteTypeFromMangledNameV2(v53, &qword_21CE70E30);
    sub_21CDE40C8(0, &unk_2812119D0, 0x277CCA9B8);
    if (swift_dynamicCast())
    {
      v47 = *(v0 + 336);
      if ([v47 code] == -10814)
      {

        if (qword_281213298 != -1)
        {
          swift_once();
        }

        v11 = *(v0 + 448);
        v76 = sub_21CE6BDA0();
        __swift_project_value_buffer(v76, qword_2812165F0);

        v77 = sub_21CE6BD80();
        v78 = sub_21CE6CF30();

        v79 = os_log_type_enabled(v77, v78);
        v80 = *(v0 + 448);
        if (v79)
        {
          v81 = *(v0 + 440);
          v82 = swift_slowAlloc();
          v83 = v53;
          v84 = swift_slowAlloc();
          v125 = v84;
          *v82 = 136315138;
          v11 = sub_21CDF2CC8(v81, v80, &v125);

          *(v82 + 4) = v11;
          _os_log_impl(&dword_21CDE1000, v77, v78, "Extension offloaded, skipping: %s", v82, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v84);
          v85 = v84;
          v53 = v83;
          MEMORY[0x21CF1BD50](v85, -1, -1);
          MEMORY[0x21CF1BD50](v82, -1, -1);
        }

        else
        {
        }

        v92 = *(v0 + 328);
        goto LABEL_92;
      }
    }

    if (qword_281213298 != -1)
    {
      swift_once();
    }

    v11 = *(v0 + 448);
    v86 = sub_21CE6BDA0();
    __swift_project_value_buffer(v86, qword_2812165F0);

    v87 = v54;
    v88 = sub_21CE6BD80();
    v89 = sub_21CE6CF10();

    v90 = os_log_type_enabled(v88, v89);
    v91 = *(v0 + 448);
    if (v90)
    {
      v61 = *(v0 + 440);
      v47 = swift_slowAlloc();
      v62 = v53;
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v125 = v64;
      *v47 = 136315394;
      v11 = sub_21CDF2CC8(v61, v91, &v125);

      *(v47 + 1) = v11;
      *(v47 + 6) = 2112;
      v65 = v54;
      v66 = _swift_stdlib_bridgeErrorToNSError();
      *(v47 + 14) = v66;
      *v63 = v66;
      _os_log_impl(&dword_21CDE1000, v88, v89, "Unexpected error while processing extension: %s, error: %@", v47, 0x16u);
      sub_21CE06F6C(v63);
      v67 = v63;
      v53 = v62;
      MEMORY[0x21CF1BD50](v67, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v64);
      MEMORY[0x21CF1BD50](v64, -1, -1);
      MEMORY[0x21CF1BD50](v47, -1, -1);

      goto LABEL_71;
    }

    v92 = v54;
LABEL_92:

LABEL_71:
    v54 = 0;
    v59 = *(v0 + 432);
    v60 = (*(v0 + 424) - 1) & *(v0 + 424);
  }

  while (1)
  {
    v69 = v59 + 1;
    if (__OFADD__(v59, 1))
    {
      __break(1u);
      goto LABEL_113;
    }

    if (v69 >= (((1 << *(v0 + 585)) + 63) >> 6))
    {
      break;
    }

    v68 = *(v0 + 352);
    v60 = *(v68 + 8 * v69 + 64);
    ++v59;
    if (v60)
    {
      v59 = v69;
      goto LABEL_78;
    }
  }

  v94 = *(v0 + 584);
  v95 = *(v0 + 360);

  v96 = *v95;
  v97 = *(v0 + 320);

  *v95 = sub_21CE452BC(v98, v96);
  if ((v94 & 1) == 0)
  {
    v101 = *(v97 + 16);
    if (v101)
    {
      v11 = sub_21CE12CDC(*(v97 + 16), 0);
      v102 = sub_21CE49EB0(&v125, (v11 + 32), v101, v97);
      sub_21CDEEAA0(v125);
      if (v102 == v101)
      {
        goto LABEL_106;
      }

      __break(1u);
    }

    v11 = MEMORY[0x277D84F90];
LABEL_106:
    if (qword_281213298 != -1)
    {
      goto LABEL_129;
    }

LABEL_107:
    v103 = sub_21CE6BDA0();
    *(v0 + 528) = __swift_project_value_buffer(v103, qword_2812165F0);

    v104 = sub_21CE6BD80();
    v105 = sub_21CE6CF30();

    if (os_log_type_enabled(v104, v105))
    {
      v106 = swift_slowAlloc();
      v107 = swift_slowAlloc();
      v125 = v107;
      *v106 = v122;
      v108 = MEMORY[0x21CF1AD30](v11, MEMORY[0x277D837D0]);
      v110 = sub_21CDF2CC8(v108, v109, &v125);

      *(v106 + 4) = v110;
      _os_log_impl(&dword_21CDE1000, v104, v105, "deleteSearchableItems for %s", v106, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v107);
      MEMORY[0x21CF1BD50](v107, -1, -1);
      MEMORY[0x21CF1BD50](v106, -1, -1);
    }

    v111 = *(*(v0 + 400) + 24);
    *(v0 + 536) = v111;
    v112 = sub_21CE6CD30();
    *(v0 + 544) = v112;

    *(v0 + 16) = v0;
    *(v0 + 24) = sub_21CE44C98;
    v113 = swift_continuation_init();
    v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40C88, &qword_21CE73420);
    *(v0 + 552) = v114;
    *(v0 + 200) = v114;
    *(v0 + 144) = MEMORY[0x277D85DD0];
    *(v0 + 152) = 1107296256;
    *(v0 + 160) = sub_21CE4B3C8;
    *(v0 + 168) = &block_descriptor_40;
    *(v0 + 176) = v113;
    [v111 deleteSearchableItemsWithDomainIdentifiers:v112 completionHandler:v0 + 144];

    return MEMORY[0x282200938](v0 + 16);
  }

  v99 = *(v0 + 8);
  v100 = *(v0 + 408);

  return v99(v100);
}

uint64_t sub_21CE44340()
{
  v79 = v0;

  v1 = *(v0 + 520);
  v2 = *(v0 + 480);
  v3 = &unk_281213000;
  v4 = 1;
  *(v0 + 328) = v1;
  v5 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE406C0, &qword_21CE70E30);
  sub_21CDE40C8(0, &unk_2812119D0, 0x277CCA9B8);
  if (swift_dynamicCast())
  {
    v6 = *(v0 + 336);
    if ([v6 code] == -10814)
    {

      if (qword_281213298 != -1)
      {
        swift_once();
      }

      v7 = sub_21CE6BDA0();
      __swift_project_value_buffer(v7, qword_2812165F0);

      v8 = sub_21CE6BD80();
      v9 = sub_21CE6CF30();

      v10 = os_log_type_enabled(v8, v9);
      v11 = *(v0 + 448);
      if (v10)
      {
        v12 = *(v0 + 440);
        v76 = v2;
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v78 = v14;
        *v13 = 136315138;
        v15 = sub_21CDF2CC8(v12, v11, &v78);

        *(v13 + 4) = v15;
        _os_log_impl(&dword_21CDE1000, v8, v9, "Extension offloaded, skipping: %s", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v14);
        MEMORY[0x21CF1BD50](v14, -1, -1);
        v16 = v13;
        v2 = v76;
        MEMORY[0x21CF1BD50](v16, -1, -1);
      }

      else
      {
      }

      v31 = *(v0 + 328);
      goto LABEL_15;
    }
  }

  if (qword_281213298 != -1)
  {
    swift_once();
  }

  v17 = sub_21CE6BDA0();
  __swift_project_value_buffer(v17, qword_2812165F0);

  v18 = v1;
  v19 = sub_21CE6BD80();
  v20 = sub_21CE6CF10();

  v21 = os_log_type_enabled(v19, v20);
  v22 = *(v0 + 448);
  if (v21)
  {
    v77 = v2;
    v23 = *(v0 + 440);
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v78 = v26;
    *v24 = 136315394;
    v27 = sub_21CDF2CC8(v23, v22, &v78);

    *(v24 + 4) = v27;
    v2 = v77;
    *(v24 + 12) = 2112;
    v28 = v1;
    v29 = _swift_stdlib_bridgeErrorToNSError();
    *(v24 + 14) = v29;
    *v25 = v29;
    _os_log_impl(&dword_21CDE1000, v19, v20, "Unexpected error while processing extension: %s, error: %@", v24, 0x16u);
    sub_21CE06F6C(v25);
    MEMORY[0x21CF1BD50](v25, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v26);
    v30 = v26;
    v3 = &unk_281213000;
    MEMORY[0x21CF1BD50](v30, -1, -1);
    MEMORY[0x21CF1BD50](v24, -1, -1);

    goto LABEL_16;
  }

  v31 = v1;
LABEL_15:

LABEL_16:
  v32 = *(v0 + 432);
  v33 = (*(v0 + 424) - 1) & *(v0 + 424);
  *(v0 + 416) = v2;
  if (!v33)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v34 = *(v0 + 352);
LABEL_22:
    *(v0 + 424) = v33;
    *(v0 + 432) = v32;
    v36 = *(v0 + 384);
    v37 = __clz(__rbit64(v33)) | (v32 << 6);
    v38 = (*(v34 + 48) + 16 * v37);
    v39 = *v38;
    *(v0 + 440) = *v38;
    v40 = v38[1];
    *(v0 + 448) = v40;
    v41 = *(*(v34 + 56) + 8 * v37);

    v42 = v36(v39, v40, v41);
    *(v0 + 456) = v42;

    v43 = sub_21CDFA7B0(MEMORY[0x277D84F90]);
    if (!(v42 >> 62))
    {
      v44 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
      *(v0 + 464) = v44;
      if (v44)
      {
        break;
      }

      goto LABEL_24;
    }

    v44 = sub_21CE6D360();
    *(v0 + 464) = v44;
    if (v44)
    {
      break;
    }

LABEL_24:
    v45 = *(v0 + 448);
    v46 = *(v0 + 440);
    v47 = *(v0 + 408);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v78 = v47;
    sub_21CE069B8(v43, v46, v45, isUniquelyReferenced_nonNull_native);

    v32 = *(v0 + 432);
    v33 = (*(v0 + 424) - 1) & *(v0 + 424);
    *(v0 + 408) = v78;
    *(v0 + 416) = v2;
    if (!v33)
    {
      while (1)
      {
LABEL_18:
        v35 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          __break(1u);
          goto LABEL_49;
        }

        if (v35 >= (((1 << *(v0 + 585)) + 63) >> 6))
        {
          break;
        }

        v34 = *(v0 + 352);
        v33 = *(v34 + 8 * v35 + 64);
        ++v32;
        if (v33)
        {
          v32 = v35;
          goto LABEL_22;
        }
      }

      v49 = *(v0 + 584);
      v50 = *(v0 + 360);

      v51 = *v50;
      v52 = *(v0 + 320);

      *v50 = sub_21CE452BC(v53, v51);
      if (v49)
      {

        v54 = *(v0 + 8);
        v55 = *(v0 + 408);

        return v54(v55);
      }

      v57 = *(v52 + 16);
      if (v57)
      {
        v4 = sub_21CE12CDC(*(v52 + 16), 0);
        v58 = sub_21CE49EB0(&v78, (v4 + 32), v57, v52);
        sub_21CDEEAA0(v78);
        if (v58 == v57)
        {
LABEL_36:
          if (v3[83] == -1)
          {
            goto LABEL_37;
          }

LABEL_49:
          swift_once();
LABEL_37:
          v59 = sub_21CE6BDA0();
          *(v0 + 528) = __swift_project_value_buffer(v59, qword_2812165F0);

          v60 = sub_21CE6BD80();
          v61 = sub_21CE6CF30();

          if (os_log_type_enabled(v60, v61))
          {
            v62 = swift_slowAlloc();
            v63 = swift_slowAlloc();
            v78 = v63;
            *v62 = 136315138;
            v64 = MEMORY[0x21CF1AD30](v4, MEMORY[0x277D837D0]);
            v66 = sub_21CDF2CC8(v64, v65, &v78);

            *(v62 + 4) = v66;
            _os_log_impl(&dword_21CDE1000, v60, v61, "deleteSearchableItems for %s", v62, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v63);
            MEMORY[0x21CF1BD50](v63, -1, -1);
            MEMORY[0x21CF1BD50](v62, -1, -1);
          }

          v67 = *(*(v0 + 400) + 24);
          *(v0 + 536) = v67;
          v68 = sub_21CE6CD30();
          *(v0 + 544) = v68;

          *(v0 + 16) = v0;
          *(v0 + 24) = sub_21CE44C98;
          v69 = swift_continuation_init();
          v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40C88, &qword_21CE73420);
          *(v0 + 552) = v70;
          *(v0 + 200) = v70;
          *(v0 + 144) = MEMORY[0x277D85DD0];
          *(v0 + 152) = 1107296256;
          *(v0 + 160) = sub_21CE4B3C8;
          *(v0 + 168) = &block_descriptor_40;
          *(v0 + 176) = v69;
          [v67 deleteSearchableItemsWithDomainIdentifiers:v68 completionHandler:v0 + 144];
          v44 = v0 + 16;

          return MEMORY[0x282200938](v44);
        }

        __break(1u);
      }

      v4 = MEMORY[0x277D84F90];
      goto LABEL_36;
    }
  }

  *(v0 + 472) = v43;
  *(v0 + 480) = v2;
  v71 = *(v0 + 456);
  if ((v71 & 0xC000000000000001) != 0)
  {
    v72 = MEMORY[0x21CF1B2A0](0);
    goto LABEL_45;
  }

  if (!*((v71 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    return MEMORY[0x282200938](v44);
  }

  v72 = *(v71 + 32);
LABEL_45:
  *(v0 + 488) = v72;
  *(v0 + 496) = 1;
  v73 = swift_task_alloc();
  *(v0 + 504) = v73;
  *v73 = v0;
  v73[1] = sub_21CE43360;
  v75 = *(v0 + 368);
  v74 = *(v0 + 376);

  return sub_21CE4C8D8(v75, v74);
}

uint64_t sub_21CE44C98()
{
  v1 = *(*v0 + 48);
  *(*v0 + 560) = v1;
  if (v1)
  {

    v2 = sub_21CE44FDC;
  }

  else
  {
    v2 = sub_21CE44DB8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21CE44DB8()
{

  v1 = sub_21CE6BD80();
  v2 = sub_21CE6CF30();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 416);
  if (v3)
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    if (v4 >> 62)
    {
      v12 = v5;
      v6 = sub_21CE6D360();
      v5 = v12;
    }

    else
    {
      v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v5 + 4) = v6;
    v7 = v5;

    _os_log_impl(&dword_21CDE1000, v1, v2, "deleteSearchableItems done, adding %ld items to index", v7, 0xCu);
    MEMORY[0x21CF1BD50](v7, -1, -1);
  }

  else
  {
  }

  v8 = *(v0 + 552);
  v9 = *(v0 + 536);
  sub_21CDE40C8(0, &unk_281211A88, 0x277CC34B0);
  v10 = sub_21CE6CD30();
  *(v0 + 568) = v10;

  *(v0 + 80) = v0;
  *(v0 + 88) = sub_21CE45050;
  v11 = swift_continuation_init();
  *(v0 + 264) = v8;
  *(v0 + 208) = MEMORY[0x277D85DD0];
  *(v0 + 216) = 1107296256;
  *(v0 + 224) = sub_21CE4B3C8;
  *(v0 + 232) = &block_descriptor_44;
  *(v0 + 240) = v11;
  [v9 indexSearchableItems:v10 completionHandler:v0 + 208];

  return MEMORY[0x282200938](v0 + 80);
}

uint64_t sub_21CE44FDC()
{
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21CE45050()
{
  v1 = *(*v0 + 112);
  *(*v0 + 576) = v1;
  if (v1)
  {

    v2 = sub_21CE45248;
  }

  else
  {
    v2 = sub_21CE45168;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21CE45168()
{
  v1 = sub_21CE6BD80();
  v2 = sub_21CE6CF30();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_21CDE1000, v1, v2, "adding done", v3, 2u);
    MEMORY[0x21CF1BD50](v3, -1, -1);
  }

  v4 = *(v0 + 8);
  v5 = *(v0 + 408);

  return v4(v5);
}

uint64_t sub_21CE45248()
{
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21CE452BC(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_21CE4784C(v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21CE453C0(uint64_t a1, void *a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE406C0, &qword_21CE70E30);
    v4 = swift_allocError();
    *v5 = a2;
    v6 = a2;

    return MEMORY[0x282200958](v3, v4);
  }

  else
  {

    return swift_continuation_throwingResume();
  }
}

uint64_t LinkMetadataIndexer.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_21CE454E8(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_21CE6D360();
LABEL_9:
  result = sub_21CE6D2D0();
  *v2 = result;
  return result;
}

uint64_t sub_21CE45588(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v38 = type metadata accessor for SettingsPaneRecipe(0);
  v37 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FF08, &qword_21CE70290);
  v39 = v4;
  result = sub_21CE6D380();
  v9 = v7;
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v3;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    v36 = v9;
    v18 = v38;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v23 = v20 | (v11 << 6);
      v24 = *(v9 + 48);
      v41 = *(v37 + 72);
      v25 = v24 + v41 * v23;
      if (v39)
      {
        sub_21CDFA9F8(v25, v6);
        v40 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        sub_21CE01738(v25, v6);
        v40 = *(*(v9 + 56) + 8 * v23);
      }

      sub_21CE6D4B0();
      sub_21CE6CCA0();
      sub_21CE6CCA0();
      sub_21CE6BA60();
      sub_21CE4B350(&qword_2812132C0, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
      sub_21CE6CB80();
      type metadata accessor for NSBundle.PluginLocation(0);
      sub_21CE6CCA0();
      sub_21CE00700(&v6[*(v18 + 28)], &v44);
      if (*(&v45 + 1))
      {
        v42[0] = v44;
        v42[1] = v45;
        v43 = v46;
        sub_21CE6D4D0();
        sub_21CE6D220();
        sub_21CE00770(v42);
      }

      else
      {
        sub_21CE6D4D0();
      }

      result = sub_21CE6D4E0();
      v26 = -1 << *(v10 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        v9 = v36;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_39:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
      v9 = v36;
LABEL_7:
      *(v17 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_21CDFA9F8(v6, *(v10 + 48) + v41 * v19);
      *(*(v10 + 56) + 8 * v19) = v40;
      ++*(v10 + 16);
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_37;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_37:
  *v3 = v10;
  return result;
}

uint64_t sub_21CE459F8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FEF8, &qword_21CE70280);
  v34 = v4;
  result = sub_21CE6D380();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_21CE6D4B0();
      sub_21CE6CCA0();
      result = sub_21CE6D4E0();
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

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_21CE45CA0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40CE0, &unk_21CE734F8);
  v35 = v4;
  result = sub_21CE6D380();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
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
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_21CE6D4B0();
      sub_21CE6CCA0();
      result = sub_21CE6D4E0();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_21CE45F44(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40800, &qword_21CE734F0);
  v37 = v4;
  result = sub_21CE6D380();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_21CE6D4B0();
      sub_21CE6CCA0();
      result = sub_21CE6D4E0();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_21CE46204(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40CC0, &qword_21CE70240);
  v33 = v4;
  result = sub_21CE6D380();
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
        sub_21CDFA678(v24, v34);
      }

      else
      {
        sub_21CDE66C8(v24, v34);
      }

      sub_21CE6D4B0();
      sub_21CE6CCA0();
      result = sub_21CE6D4E0();
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
      result = sub_21CDFA678(v34, (*(v7 + 56) + 32 * v15));
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

uint64_t sub_21CE464E4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v36 = v6;
  result = sub_21CE6D380();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v36 & 1) == 0)
      {
      }

      sub_21CE6D4B0();
      sub_21CE6CCA0();
      result = sub_21CE6D4E0();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v16 + 8 * v29);
          if (v33 != -1)
          {
            v17 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v35;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v4;
    if (v34 >= 64)
    {
      bzero(v11, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

_OWORD *sub_21CE46784(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40C98, &unk_21CE734B0);
  v35 = v4;
  result = sub_21CE6D380();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v2;
    v34 = v5;
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
    v14 = result + 4;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = (v20 + 32 * v19);
      if (v35)
      {
        sub_21CDFA678(v22, v36);
      }

      else
      {
        sub_21CDE66C8(v22, v36);
        v23 = v21;
      }

      sub_21CE6CC50();
      sub_21CE6D4B0();
      sub_21CE6CCA0();
      v24 = sub_21CE6D4E0();

      v25 = -1 << *(v7 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + (v26 >> 6))) == 0)
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
          v31 = *(v14 + v27);
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

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 6) + 8 * v15) = v21;
      result = sub_21CDFA678(v36, (*(v7 + 7) + 32 * v15));
      ++*(v7 + 2);
      v5 = v34;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

void *sub_21CE46A54()
{
  v1 = v0;
  v2 = type metadata accessor for SettingsPaneRecipe(0);
  v24 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FF08, &qword_21CE70290);
  v5 = *v0;
  v6 = sub_21CE6D370();
  v7 = v6;
  if (*(v5 + 16))
  {
    v23 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
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
        sub_21CE01738(*(v5 + 48) + v21, v4);
        v22 = *(*(v5 + 56) + 8 * v20);
        sub_21CDFA9F8(v4, *(v7 + 48) + v21);
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

  return result;
}

void *sub_21CE46C6C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FEF8, &qword_21CE70280);
  v2 = *v0;
  v3 = sub_21CE6D370();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
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

  return result;
}

id sub_21CE46DDC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40CE0, &unk_21CE734F8);
  v2 = *v0;
  v3 = sub_21CE6D370();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

  return result;
}

void sub_21CE46F48()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40800, &qword_21CE734F0);
  v2 = *v0;
  v3 = sub_21CE6D370();
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
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

void sub_21CE470C0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40CC0, &qword_21CE70240);
  v2 = *v0;
  v3 = sub_21CE6D370();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_21CDE66C8(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_21CDFA678(v25, (*(v4 + 56) + v22));
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
}

void sub_21CE4728C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_21CE6D370();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
      }

      while (v14);
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
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

id sub_21CE473EC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40C98, &unk_21CE734B0);
  v2 = *v0;
  v3 = sub_21CE6D370();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_21CDE66C8(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_21CDFA678(v19, (*(v4 + 56) + 32 * v17));
        result = v18;
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

  return result;
}

uint64_t sub_21CE4756C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_21CE6BA60();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_21CE4B350(&qword_2812132C0, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  v33 = a2;
  v11 = sub_21CE6CB70();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_21CE4B350(&qword_2812132B8, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
      v21 = sub_21CE6CBA0();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_21CE47F58(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_21CE4784C(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_21CE6D4B0();
  sub_21CE6CCA0();
  v8 = sub_21CE6D4E0();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_21CE6D400() & 1) != 0)
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

    sub_21CE481FC(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_21CE4799C(uint64_t a1)
{
  v2 = v1;
  v36 = sub_21CE6BA60();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40CF0, &qword_21CE73508);
  result = sub_21CE6D250();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_21CE4B350(&qword_2812132C0, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
      result = sub_21CE6CB70();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_21CE47CF8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40CB0, qword_21CE734C8);
  result = sub_21CE6D250();
  v5 = result;
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
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_21CE6D4B0();
      sub_21CE6CCA0();
      result = sub_21CE6D4E0();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
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

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_21CE47F58(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_21CE6BA60();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_21CE4799C(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_21CE4837C();
      goto LABEL_12;
    }

    sub_21CE48710(v10 + 1);
  }

  v12 = *v3;
  sub_21CE4B350(&qword_2812132C0, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  v13 = sub_21CE6CB70();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_21CE4B350(&qword_2812132B8, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
      v21 = sub_21CE6CBA0();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_21CE6D430();
  __break(1u);
  return result;
}

void sub_21CE481FC(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_21CE47CF8(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_21CE485B4();
      goto LABEL_16;
    }

    sub_21CE48A2C(v8 + 1);
  }

  v10 = *v4;
  sub_21CE6D4B0();
  sub_21CE6CCA0();
  v11 = sub_21CE6D4E0();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (sub_21CE6D400() & 1) != 0)
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
  sub_21CE6D430();
  __break(1u);
}

void *sub_21CE4837C()
{
  v1 = v0;
  v2 = sub_21CE6BA60();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40CF0, &qword_21CE73508);
  v6 = *v0;
  v7 = sub_21CE6D240();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
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
    *v1 = v8;
  }

  return result;
}

void sub_21CE485B4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40CB0, qword_21CE734C8);
  v2 = *v0;
  v3 = sub_21CE6D240();
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

uint64_t sub_21CE48710(uint64_t a1)
{
  v2 = v1;
  v33 = sub_21CE6BA60();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40CF0, &qword_21CE73508);
  v7 = sub_21CE6D250();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_21CE4B350(&qword_2812132C0, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
      result = sub_21CE6CB70();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
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
    *v2 = v7;
  }

  return result;
}

uint64_t sub_21CE48A2C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40CB0, qword_21CE734C8);
  result = sub_21CE6D250();
  v5 = result;
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
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_21CE6D4B0();

      sub_21CE6CCA0();
      result = sub_21CE6D4E0();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
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

  return result;
}

void *sub_21CE48C64(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v8 = result;
      v9 = a2;
      v10 = a5;
      v11 = a4;
      bzero(result, 8 * a2);
      result = v8;
      a2 = v9;
      a4 = v11;
      a5 = v10;
    }

    v12 = a6(result, a2, a3, a4, a5);

    return v12;
  }

  return result;
}

uint64_t sub_21CE48D04(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40CD8, &qword_21CE734E8);
  result = sub_21CE6D390();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v17 + 8 * v16);
    sub_21CE6D4B0();

    v33 = v21;
    sub_21CE6CCA0();
    result = sub_21CE6D4E0();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v9 + 48) + 16 * v25);
    *v30 = v19;
    v30[1] = v20;
    *(*(v9 + 56) + 8 * v25) = v33;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v32;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void sub_21CE48F44(uint64_t a1)
{
  if (*(*v1 + 16))
  {
    v3 = a1 + 56;
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(a1 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_21CE49978(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }
}

uint64_t sub_21CE49070(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v66 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v53 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v57 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v61 = (a2 + 56);

  v15 = 0;
  v59 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_56;
      }

      if (v17 >= v12)
      {
        goto LABEL_53;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v60 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    sub_21CE6D4B0();

    sub_21CE6CCA0();
    v23 = sub_21CE6D4E0();
    v24 = -1 << *(v5 + 32);
    v2 = v23 & ~v24;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v59;
    v15 = v60;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v24;
  while (1)
  {
    v25 = (*(v5 + 48) + 16 * v2);
    v26 = *v25 == v22 && v25[1] == v21;
    if (v26 || (sub_21CE6D400() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v59;
  v27 = v60;
  v63 = v57;
  v64 = v60;
  v65 = v11;
  v62[0] = v59;
  v62[1] = v7;

  v29 = *(v5 + 32);
  v54 = ((1 << v29) + 63) >> 6;
  v14 = 8 * v54;
  if ((v29 & 0x3Fu) > 0xD)
  {
    goto LABEL_57;
  }

  while (1)
  {
    v55 = &v53;
    MEMORY[0x28223BE20](v28);
    v2 = &v53 - ((v30 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v61, v30);
    v31 = *(v2 + 8 * v8) & ~v4;
    v32 = *(v5 + 16);
    v58 = v2;
    *(v2 + 8 * v8) = v31;
    v33 = v32 - 1;
LABEL_23:
    v56 = v33;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v35 = v27;
    while (1)
    {
      v36 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v36 >= v12)
      {
        v5 = sub_21CE49754(v58, v54, v56, v5);
        goto LABEL_51;
      }

      v11 = *(v7 + 8 * v36);
      ++v35;
      if (v11)
      {
        v27 = v36;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v37 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v38 = *(v3 + 48);
            v60 = v27;
            v39 = (v38 + ((v27 << 10) | (16 * v37)));
            v40 = *v39;
            v4 = v39[1];
            sub_21CE6D4B0();

            sub_21CE6CCA0();
            v41 = sub_21CE6D4E0();
            v42 = -1 << *(v5 + 32);
            v8 = v41 & ~v42;
            v2 = v8 >> 6;
            v43 = 1 << v8;
            if (((1 << v8) & v61[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v27 = v60;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v44 = (*(v5 + 48) + 16 * v8);
          if (*v44 != v40 || v44[1] != v4)
          {
            v46 = ~v42;
            while ((sub_21CE6D400() & 1) == 0)
            {
              v8 = (v8 + 1) & v46;
              v2 = v8 >> 6;
              v43 = 1 << v8;
              if (((1 << v8) & v61[v8 >> 6]) == 0)
              {
                v3 = v59;
                goto LABEL_45;
              }

              v47 = (*(v5 + 48) + 16 * v8);
              if (*v47 == v40 && v47[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v59;
          v34 = v58[v2];
          v58[v2] = v34 & ~v43;
          v26 = (v34 & v43) == 0;
          v27 = v60;
          if (!v26)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v33 = v56 - 1;
        if (__OFSUB__(v56, 1))
        {
          __break(1u);
        }

        if (v56 == 1)
        {

          v5 = MEMORY[0x277D84FA0];
          goto LABEL_51;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    v49 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v27 = v60;
  }

  v50 = swift_slowAlloc();
  memcpy(v50, v61, v49);
  v51 = v53;
  v52 = sub_21CE49AB4(v50, v54, v5, v2, v62);

  if (!v51)
  {

    MEMORY[0x21CF1BD50](v50, -1, -1);
    v3 = v62[0];
    v57 = v63;
    v5 = v52;
LABEL_51:
    v13 = v3;
LABEL_53:
    sub_21CDEEAA0(v13);
    return v5;
  }

  result = MEMORY[0x21CF1BD50](v50, -1, -1);
  __break(1u);
  return result;
}

unint64_t *sub_21CE495E0(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, __n128))
{
  v25 = a3;
  v22 = 0;
  v21 = result;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = (*(v25 + 48) + 16 * v14);
    v16 = v15[1];
    v24[0] = *v15;
    v24[1] = v16;

    v17 = (a4)(v24);

    if (v4)
    {
      return result;
    }

    if (v17)
    {
      *(v21 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_16:
        v19 = v25;

        return sub_21CE49754(v21, a2, v22, v19);
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

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21CE49754(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40CB0, qword_21CE734C8);
  result = sub_21CE6D260();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_21CE6D4B0();

    sub_21CE6CCA0();
    result = sub_21CE6D4E0();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_21CE49978(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_21CE6D4B0();
  sub_21CE6CCA0();
  v6 = sub_21CE6D4E0();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_21CE6D400() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_21CE485B4();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_21CE49CEC(v8);
  *v2 = v16;
  return v12;
}

unint64_t *sub_21CE49AB4(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v31 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v28 = v11 + 1;
          }

          else
          {
            v28 = (a5[2] + 64) >> 6;
          }

          a5[3] = v28 - 1;
          a5[4] = 0;

          return sub_21CE49754(v31, a2, v30, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        sub_21CE6D4B0();

        sub_21CE6CCA0();
        v19 = sub_21CE6D4E0();
        v20 = -1 << *(a3 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v24 = (*(a3 + 48) + 16 * v21);
      if (*v24 != v18 || v24[1] != v17)
      {
        v26 = ~v20;
        while ((sub_21CE6D400() & 1) == 0)
        {
          v21 = (v21 + 1) & v26;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v27 = (*(a3 + 48) + 16 * v21);
          if (*v27 == v18 && v27[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v31[v22];
      v31[v22] = v10 & ~v23;
    }

    while ((v10 & v23) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v30 != 1)
      {
        continue;
      }

      return MEMORY[0x277D84FA0];
    }

    return result;
  }
}

unint64_t sub_21CE49CEC(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_21CE6D1D0();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_21CE6D4B0();

        sub_21CE6CCA0();
        v10 = sub_21CE6D4E0();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

void *sub_21CE49EB0(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

double sub_21CE4A008@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;

  return result;
}

void *sub_21CE4A090()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_21CE6CC20();
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    v2 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) init];
  }

  type metadata accessor for LinkMetadataIndexer();
  v3 = swift_allocObject();
  v3[2] = [objc_allocWithZone(MEMORY[0x277D23C38]) init];
  v4 = *MEMORY[0x277CCA1A0];
  v5 = objc_allocWithZone(MEMORY[0x277CC34A8]);
  v6 = v4;
  v7 = sub_21CE6CC20();
  v8 = [v5 initWithName:v7 protectionClass:v6];

  v3[3] = v8;
  v3[4] = v2;
  return v3;
}

void sub_21CE4A1C4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, id))
{
  v22 = 0;
  v4 = 0;
  v5 = a3 + 64;
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
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = (*(a3 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = *(*(a3 + 56) + 8 * v13);

    v18 = v17;
    LOBYTE(v15) = a4(v15, v16, v18);

    if (v15)
    {
      *(a1 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_15:
        sub_21CE48D04(a1, a2, v22, a3);
        return;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_15;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_21CE4A334(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, id), uint64_t a3)
{
  v6 = a1;
  v12[1] = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 32);
  v8 = ((1 << v7) + 63) >> 6;
  if ((v7 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v11 = swift_slowAlloc();
      sub_21CE48C64(v11, v8, v6, a2, a3, sub_21CE4A1C4);
      MEMORY[0x21CF1BD50](v11, -1, -1);
      return;
    }
  }

  MEMORY[0x28223BE20](a1);
  v10 = v12 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v10, v9);
  sub_21CE4A1C4(v10, v8, v6, a2);
  if (v3)
  {
    swift_willThrow();
  }
}

uint64_t sub_21CE4A500(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *, __n128), uint64_t a3, int a4, void *a5)
{
  v7 = a1 + 64;
  v8 = -1 << *(a1 + 32);
  if (-v8 < 64)
  {
    v9 = ~(-1 << -v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(a1 + 64);
  v11 = (63 - v8) >> 6;

  v12 = 0;
  v38 = a5;
  v39 = v7;
  v37 = v11;
  while (v10)
  {
    v46 = a4;
    v13 = v12;
LABEL_14:
    v15 = __clz(__rbit64(v10)) | (v13 << 6);
    v16 = (*(a1 + 48) + 16 * v15);
    v17 = v16[1];
    v18 = *(*(a1 + 56) + 8 * v15);
    v45[0] = *v16;
    v45[1] = v17;
    v45[2] = v18;

    (a2)(&v42, v45);

    v19 = v42;
    v20 = v43;
    v21 = v44;
    v22 = *a5;
    v24 = sub_21CE66850(v42, v43);
    v25 = *(v22 + 16);
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_25;
    }

    v28 = v23;
    if (*(v22 + 24) >= v27)
    {
      if ((v46 & 1) == 0)
      {
        sub_21CE4728C(&unk_27CE40CA0, &unk_21CE70250);
      }
    }

    else
    {
      sub_21CE464E4(v27, v46 & 1, &unk_27CE40CA0, &unk_21CE70250);
      v29 = sub_21CE66850(v19, v20);
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_27;
      }

      v24 = v29;
    }

    v10 &= v10 - 1;
    v31 = *a5;
    if (v28)
    {
      v45[0] = *(v31[7] + 8 * v24);

      sub_21CE3BC20(v21);

      *(v31[7] + 8 * v24) = v45[0];
    }

    else
    {
      v31[(v24 >> 6) + 8] |= 1 << v24;
      v32 = (v31[6] + 16 * v24);
      *v32 = v19;
      v32[1] = v20;
      *(v31[7] + 8 * v24) = v21;
      v33 = v31[2];
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
        goto LABEL_26;
      }

      v31[2] = v35;
    }

    a4 = 1;
    v12 = v13;
    a5 = v38;
    v7 = v39;
    v11 = v37;
  }

  v14 = v12;
  while (1)
  {
    v13 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v13 >= v11)
    {
      sub_21CDEEAA0(a1);
    }

    v10 = *(v7 + 8 * v13);
    ++v14;
    if (v10)
    {
      v46 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_21CE6D440();
  __break(1u);
  return result;
}

uint64_t sub_21CE4A7CC(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *, __n128), uint64_t a3, char a4, void *a5)
{
  v47 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v38 = v6;
  while (v9)
  {
    v42 = a4;
    v16 = v11;
LABEL_15:
    v18 = __clz(__rbit64(v9)) | (v16 << 6);
    v19 = (*(a1 + 48) + 16 * v18);
    v20 = v19[1];
    v21 = *(*(a1 + 56) + 8 * v18);
    v46[0] = *v19;
    v46[1] = v20;
    v46[2] = v21;

    (a2)(&v43, v46);

    v22 = v43;
    v23 = v44;
    v24 = v45;
    v25 = *v47;
    v27 = sub_21CE66850(v43, v44);
    v28 = v25[2];
    v29 = (v26 & 1) == 0;
    v30 = v28 + v29;
    if (__OFADD__(v28, v29))
    {
      goto LABEL_26;
    }

    v31 = v26;
    if (v25[3] >= v30)
    {
      if ((v42 & 1) == 0)
      {
        sub_21CE4728C(&qword_27CE3FED8, &qword_21CE734C0);
      }
    }

    else
    {
      sub_21CE464E4(v30, v42 & 1, &qword_27CE3FED8, &qword_21CE734C0);
      v32 = sub_21CE66850(v22, v23);
      if ((v31 & 1) != (v33 & 1))
      {
        goto LABEL_28;
      }

      v27 = v32;
    }

    v9 &= v9 - 1;
    v34 = *v47;
    if (v31)
    {
      v35 = *(v34[7] + 8 * v27);
      swift_bridgeObjectRetain_n();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v46[0] = v35;
      sub_21CE4A500(v24, sub_21CE4B3CC, 0, isUniquelyReferenced_nonNull_native, v46);
      if (v40)
      {
        goto LABEL_29;
      }

      swift_bridgeObjectRelease_n();
      *(v34[7] + 8 * v27) = v46[0];
    }

    else
    {
      v34[(v27 >> 6) + 8] |= 1 << v27;
      v12 = (v34[6] + 16 * v27);
      *v12 = v22;
      v12[1] = v23;
      *(v34[7] + 8 * v27) = v24;
      v13 = v34[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_27;
      }

      v34[2] = v15;
    }

    a4 = 1;
    v11 = v16;
    v6 = v38;
  }

  v17 = v11;
  while (1)
  {
    v16 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v16 >= v10)
    {
      sub_21CDEEAA0(a1);
    }

    v9 = *(v6 + 8 * v16);
    ++v17;
    if (v9)
    {
      v42 = a4;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  sub_21CE6D440();
  __break(1u);
LABEL_29:

  __break(1u);
  return result;
}

uint64_t dispatch thunk of LinkMetadataIndexer.donateToSpotlightAsync()()
{
  v4 = (*(*v0 + 176) + **(*v0 + 176));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_21CDE7888;

  return v4();
}

uint64_t dispatch thunk of LinkMetadataIndexer.donateDeeplinks(filteredTo:dryRun:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 184) + **(*v3 + 184));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_21CE4B3C0;

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of LinkMetadataIndexer.donateDeeplinks(filteredToAppIntent:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 192) + **(*v2 + 192));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_21CE4B3C0;

  return v8(a1, a2);
}

uint64_t dispatch thunk of LinkMetadataIndexer.donateDeeplinks(filteredTo:filteredToAppIntent:dryRun:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(*v5 + 200) + **(*v5 + 200));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_21CE4B0A4;

  return v14(a1, a2, a3, a4, a5);
}

uint64_t sub_21CE4B0A4(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of LinkMetadataIndexer.deleteDeeplinks(withDomainIdentifiers:)(uint64_t a1)
{
  v6 = (*(*v1 + 216) + **(*v1 + 216));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21CDE7A00;

  return v6(a1);
}

uint64_t block_copy_helper_29(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_21CE4B2EC()
{
  result = qword_27CE40308;
  if (!qword_27CE40308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE40300, &unk_21CE71920);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE40308);
  }

  return result;
}

uint64_t sub_21CE4B350(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_21CE4B3D4(uint64_t a1)
{
  v2 = sub_21CE6D1C0();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_21CE536B4(&v4, v2, *(a1 + 36), 0, a1);
  }
}

unint64_t sub_21CE4B458()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40310, &qword_21CE71470);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v57 - v6;
  v8 = sub_21CDFA548(MEMORY[0x277D84F90]);
  v64 = v8;
  v9 = [v1 attributeSet];
  v10 = [v9 title];

  v11 = MEMORY[0x277D837D0];
  if (v10)
  {
    v12 = sub_21CE6CC50();
    v14 = v13;

    v63 = v11;
    *&v61 = v12;
    *(&v61 + 1) = v14;
    sub_21CDFA678(&v61, &v59);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v58 = v8;
    sub_21CE06868(&v59, 0x656C746974, 0xE500000000000000, isUniquelyReferenced_nonNull_native);
    v64 = v58;
  }

  else
  {
    sub_21CE598FC(0x656C746974, 0xE500000000000000, &v61);
    sub_21CDE5494(&v61, &qword_27CE40410, &qword_21CE71B10);
  }

  v16 = [v1 attributeSet];
  v17 = [v16 subtitle];

  if (v17)
  {
    v18 = sub_21CE6CC50();
    v20 = v19;

    v63 = v11;
    *&v61 = v18;
    *(&v61 + 1) = v20;
    sub_21CDFA678(&v61, &v59);
    v21 = v64;
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v58 = v21;
    sub_21CE06868(&v59, 0x656C746974627573, 0xE800000000000000, v22);
    v64 = v58;
  }

  else
  {
    sub_21CE598FC(0x656C746974627573, 0xE800000000000000, &v61);
    sub_21CDE5494(&v61, &qword_27CE40410, &qword_21CE71B10);
  }

  v23 = [v1 attributeSet];
  v24 = [v23 URL];

  if (v24)
  {
    sub_21CE6B9F0();

    v25 = 0;
  }

  else
  {
    v25 = 1;
  }

  v26 = sub_21CE6BA60();
  v27 = *(v26 - 8);
  (*(v27 + 56))(v5, v25, 1, v26);
  sub_21CE53750(v5, v7);
  if ((*(v27 + 48))(v7, 1, v26) == 1)
  {
    sub_21CDE5494(v7, &unk_27CE40310, &qword_21CE71470);
    sub_21CE598FC(7107189, 0xE300000000000000, &v61);
    sub_21CDE5494(&v61, &qword_27CE40410, &qword_21CE71B10);
  }

  else
  {
    v63 = v26;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v61);
    (*(v27 + 32))(boxed_opaque_existential_1, v7, v26);
    sub_21CDFA678(&v61, &v59);
    v29 = v64;
    v30 = swift_isUniquelyReferenced_nonNull_native();
    v58 = v29;
    sub_21CE06868(&v59, 7107189, 0xE300000000000000, v30);
    v64 = v58;
  }

  v31 = [v1 attributeSet];
  v32 = [v31 keywords];

  if (v32)
  {
    v33 = sub_21CE6CD40();

    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40BA0, &qword_21CE6F4B0);
    *&v61 = v33;
    sub_21CDFA678(&v61, &v59);
    v34 = v64;
    v35 = swift_isUniquelyReferenced_nonNull_native();
    v58 = v34;
    sub_21CE06868(&v59, 0x7364726F7779656BLL, 0xE800000000000000, v35);
    v64 = v58;
  }

  else
  {
    sub_21CE598FC(0x7364726F7779656BLL, 0xE800000000000000, &v61);
    sub_21CDE5494(&v61, &qword_27CE40410, &qword_21CE71B10);
  }

  v36 = [v1 attributeSet];
  v37 = [v36 textContent];

  if (v37)
  {
    v38 = sub_21CE6CC50();
    v40 = v39;

    v63 = v11;
    *&v61 = v38;
    *(&v61 + 1) = v40;
    sub_21CDFA678(&v61, &v59);
    v41 = v64;
    v42 = swift_isUniquelyReferenced_nonNull_native();
    v58 = v41;
    sub_21CE06868(&v59, 0x7470697263736564, 0xEB000000006E6F69, v42);
    v64 = v58;
  }

  else
  {
    sub_21CE598FC(0x7470697263736564, 0xEB000000006E6F69, &v61);
    sub_21CDE5494(&v61, &qword_27CE40410, &qword_21CE71B10);
  }

  v43 = [v1 attributeSet];
  v44 = [v43 thumbnailBundleID];

  if (v44)
  {
    v45 = sub_21CE6CC50();
    v47 = v46;

    *(&v60 + 1) = v11;
    *&v59 = v45;
    *(&v59 + 1) = v47;
    sub_21CDFA678(&v59, &v61);
  }

  else
  {
    v59 = 0u;
    v60 = 0u;
    v48 = [v1 attributeSet];
    v49 = [v48 thumbnailContentType];

    if (v49)
    {
      v50 = sub_21CE6CC50();
      v52 = v51;

      v53 = MEMORY[0x277D837D0];
    }

    else
    {
      v50 = 0;
      v52 = 0;
      v53 = 0;
      v62 = 0;
    }

    *&v61 = v50;
    *(&v61 + 1) = v52;
    v63 = v53;
    if (*(&v60 + 1))
    {
      sub_21CDE5494(&v59, &qword_27CE40410, &qword_21CE71B10);
    }
  }

  if (v63)
  {
    sub_21CDFA678(&v61, &v59);
    v54 = v64;
    v55 = swift_isUniquelyReferenced_nonNull_native();
    v58 = v54;
    sub_21CE06868(&v59, 1852793705, 0xE400000000000000, v55);
    return v58;
  }

  else
  {
    sub_21CDE5494(&v61, &qword_27CE40410, &qword_21CE71B10);
    sub_21CE598FC(1852793705, 0xE400000000000000, &v59);
    sub_21CDE5494(&v59, &qword_27CE40410, &qword_21CE71B10);
    return v64;
  }
}

id sub_21CE4BBC4()
{
  v0 = sub_21CE6B870();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(sub_21CE6B990() + 16);

  result = sub_21CE6BA20();
  if (v6)
  {
    v12[0] = result;
    v12[1] = v6;
    sub_21CE6B860();
    sub_21CE1570C();
    v7 = sub_21CE6D160();
    (*(v1 + 8))(v3, v0);

    v8 = *(v7 + 16);

    v9 = v4 + v8;
    if (__OFADD__(v4, v8))
    {
      __break(1u);
      goto LABEL_9;
    }
  }

  else
  {
    v8 = 0;
    v9 = v4;
  }

  if (v9 > 100)
  {
    v10 = 0;
    return [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  }

  v11 = __OFSUB__(100 - v4, v8);
  v10 = 100 - v4 - v8;
  if (!v11)
  {
    return [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  }

LABEL_9:
  __break(1u);
  return result;
}

Swift::String_optional __swiftcall URL.relatedAppBundleIdentifier()()
{
  v0 = sub_21CE6BA30();
  if (!v1)
  {
    goto LABEL_10;
  }

  if (v0 == 0xD000000000000013 && v1 == 0x800000021CE78990)
  {
  }

  else
  {
    v2 = sub_21CE6D400();

    if ((v2 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  v3 = sub_21CE6BA00();
  if (!v1)
  {
LABEL_10:
    v4 = 0;
    goto LABEL_17;
  }

  if (v3 == 0xD000000000000017 && v1 == 0x800000021CE789B0)
  {

    goto LABEL_12;
  }

  v5 = sub_21CE6D400();

  if ((v5 & 1) == 0)
  {
LABEL_15:
    v4 = 0;
    v1 = 0;
    goto LABEL_17;
  }

LABEL_12:
  v6 = *(sub_21CE6B990() + 16);

  if (v6 < 2)
  {
    goto LABEL_15;
  }

  v4 = sub_21CE6B990();
  if (v4[2] < 2uLL)
  {
    __break(1u);
  }

  else
  {
    v8 = v4[6];
    v7 = v4[7];

    v1 = v7;
    v4 = v8;
  }

LABEL_17:
  result.value._object = v1;
  result.value._countAndFlagsBits = v4;
  return result;
}

uint64_t sub_21CE4BE90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_21CE4B0A4;

  return v11(a1, a2, a3, a4);
}

void *sub_21CE4BFC0(void *a1)
{
  v2 = sub_21CE6BB40();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21CE6BD60();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_21CE6BD40();
  v11 = sub_21CE6BD30();
  (*(v7 + 8))(v9, v6);
  v12 = a1;
  v13 = [v10 initWithContentType_];

  v14 = v13;
  sub_21CE6BB30();
  v15 = sub_21CE6BB10();
  v17 = v16;
  (*(v3 + 8))(v5, v2);
  v18 = [a1 title];
  v73 = v15;
  v19 = sub_21CE6CC20();
  v20 = [v18 localizedStringForLocaleIdentifier_];

  if (!v20)
  {
    sub_21CE6CC50();
    v20 = sub_21CE6CC20();
  }

  [v14 setTitle_];

  v21 = [a1 subtitle];
  v22 = v14;
  if (v21)
  {
    v23 = v21;
    v24 = sub_21CE6CC20();
    v25 = [v23 localizedStringForLocaleIdentifier_];

    if (!v25)
    {
      sub_21CE6CC50();
      v25 = sub_21CE6CC20();
    }
  }

  else
  {
    v25 = 0;
  }

  [v14 setSubtitle_];

  v26 = [a1 synonyms];
  if (v26)
  {
    sub_21CDE40C8(0, &unk_281211A10, 0x277D23910);
    v27 = sub_21CE6CD40();

    if (v27 >> 62)
    {
      v28 = sub_21CE6D360();
      if (v28)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v28)
      {
LABEL_10:
        v74 = MEMORY[0x277D84F90];
        sub_21CDE4558(0, v28 & ~(v28 >> 63), 0);
        if (v28 < 0)
        {
          __break(1u);
          goto LABEL_53;
        }

        v71 = v14;
        v72 = a1;
        v29 = 0;
        v30 = v74;
        do
        {
          if ((v27 & 0xC000000000000001) != 0)
          {
            v31 = MEMORY[0x21CF1B2A0](v29, v27);
          }

          else
          {
            v31 = *(v27 + 8 * v29 + 32);
          }

          v32 = v31;
          v33 = sub_21CE6CC20();
          v34 = [v32 localizedStringForLocaleIdentifier_];

          v35 = sub_21CE6CC50();
          v37 = v36;

          v74 = v30;
          v39 = *(v30 + 16);
          v38 = *(v30 + 24);
          if (v39 >= v38 >> 1)
          {
            sub_21CDE4558((v38 > 1), v39 + 1, 1);
            v30 = v74;
          }

          ++v29;
          *(v30 + 16) = v39 + 1;
          v40 = v30 + 16 * v39;
          *(v40 + 32) = v35;
          *(v40 + 40) = v37;
        }

        while (v28 != v29);

        v22 = v71;
        v12 = v72;
        goto LABEL_21;
      }
    }

LABEL_21:
    v26 = sub_21CE6CD30();
  }

  [v22 setKeywords_];

  v41 = [v12 descriptionText];
  if (v41)
  {
    v42 = v41;
    v43 = sub_21CE6CC20();

    v44 = [v42 localizedStringForLocaleIdentifier_];

    v45 = &off_278323000;
    if (v44)
    {
      goto LABEL_27;
    }

    sub_21CE6CC50();
    v44 = sub_21CE6CC20();
  }

  else
  {
    v44 = 0;
    v45 = &off_278323000;
  }

LABEL_27:
  [v22 setTextContent_];

  v46 = [v22 v45[478]];
  [v22 setSubject_];

  v47 = [v22 subtitle];
  [v22 setContentDescription_];

  v48 = [v12 image];
  if (v48)
  {
    v17 = v48;
    objc_opt_self();
    v49 = swift_dynamicCastObjCClass();
    if (v49)
    {
      v50 = v49;
      v51 = [v49 iconType];
      if (v51 == 1)
      {
        v52 = [v50 identifier];
        if (!v52)
        {
          sub_21CE6CC50();
          v52 = sub_21CE6CC20();
        }

        [v22 setThumbnailContentType_];
        goto LABEL_44;
      }

      if (!v51)
      {
        v52 = [v50 identifier];
        if (!v52)
        {
          sub_21CE6CC50();
          v52 = sub_21CE6CC20();
        }

        [v22 setThumbnailBundleID_];
LABEL_44:

        v65 = sub_21CE6CC20();
        [v22 setBundleIdentifier_];

        goto LABEL_45;
      }

      if (qword_281213298 == -1)
      {
LABEL_47:
        v66 = sub_21CE6BDA0();
        __swift_project_value_buffer(v66, qword_2812165F0);
        v52 = sub_21CE6BD80();
        v67 = sub_21CE6CF10();
        if (os_log_type_enabled(v52, v67))
        {
          v68 = swift_slowAlloc();
          *v68 = 0;
          _os_log_impl(&dword_21CDE1000, v52, v67, "Unknown icon type", v68, 2u);
          MEMORY[0x21CF1BD50](v68, -1, -1);
        }

        goto LABEL_44;
      }

LABEL_53:
      swift_once();
      goto LABEL_47;
    }
  }

  if (qword_281213298 != -1)
  {
    swift_once();
  }

  v53 = sub_21CE6BDA0();
  __swift_project_value_buffer(v53, qword_2812165F0);
  v54 = v22;
  v55 = sub_21CE6BD80();
  v56 = sub_21CE6CF10();

  if (!os_log_type_enabled(v55, v56))
  {

LABEL_45:
    return v22;
  }

  v57 = v22;
  v58 = swift_slowAlloc();
  v59 = swift_slowAlloc();
  v74 = v59;
  *v58 = 136315138;
  v60 = [v54 v45[478]];
  if (v60)
  {
    v61 = v60;
    v62 = sub_21CE6CC50();
    v64 = v63;
  }

  else
  {
    v64 = 0xE200000000000000;
    v62 = 10023;
  }

  v69 = sub_21CDF2CC8(v62, v64, &v74);

  *(v58 + 4) = v69;
  _os_log_impl(&dword_21CDE1000, v55, v56, "Missing icon for DisplayRepresentation(title:%s", v58, 0xCu);
  __swift_destroy_boxed_opaque_existential_1(v59);
  MEMORY[0x21CF1BD50](v59, -1, -1);
  MEMORY[0x21CF1BD50](v58, -1, -1);

  return v57;
}

uint64_t sub_21CE4C8D8(uint64_t a1, uint64_t a2)
{
  v3[40] = a2;
  v3[41] = v2;
  v3[39] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40310, &qword_21CE71470);
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();
  v3[44] = swift_task_alloc();
  v3[45] = swift_task_alloc();
  v4 = sub_21CE6BA60();
  v3[46] = v4;
  v3[47] = *(v4 - 8);
  v3[48] = swift_task_alloc();
  v3[49] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21CE4CA30, 0, 0);
}

uint64_t sub_21CE4CA30()
{
  v1 = *(v0 + 328);
  v2 = MEMORY[0x277D84F90];
  *(v0 + 272) = MEMORY[0x277D84F90];
  v3 = [objc_opt_self() policyWithEnumMetadata_];
  *(v0 + 400) = v3;
  *(v0 + 280) = 0;
  v4 = [v3 connectionWithError_];
  *(v0 + 408) = v4;
  v5 = *(v0 + 280);
  if (v4)
  {
    v6 = *(v0 + 328);
    v7 = v5;
    v8 = [v6 cases];
    sub_21CDE40C8(0, &unk_281211A48, 0x277D23830);
    v9 = sub_21CE6CD40();
    *(v0 + 416) = v9;

    if (v9 >> 62)
    {
      v27 = sub_21CE6D360();
      *(v0 + 424) = v27;
      if (v27)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      *(v0 + 424) = v10;
      if (v10)
      {
LABEL_4:
        v11 = sub_21CDE40C8(0, &qword_281211A20, 0x277CC34B8);
        *(v0 + 440) = v2;
        *(v0 + 448) = v2;
        *(v0 + 432) = v11;
        v12 = *(v0 + 416);
        if ((v12 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x21CF1B2A0](0);
        }

        else
        {
          if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
          }

          v13 = *(v12 + 32);
        }

        *(v0 + 456) = v13;
        *(v0 + 464) = 1;
        v17 = *(v0 + 328);
        v18 = [v13 displayRepresentation];
        *(v0 + 472) = v18;
        v19 = sub_21CE4BFC0(v18);
        *(v0 + 480) = v19;
        v20 = [v17 identifier];
        if (!v20)
        {
          sub_21CE6CC50();
          v20 = sub_21CE6CC20();
        }

        v21 = *(v0 + 328);
        [v19 setIdentifier_];

        v22 = [v21 identifier];
        if (!v22)
        {
          sub_21CE6CC50();
          v22 = sub_21CE6CC20();
        }

        *(v0 + 488) = v22;
        v23 = [v13 identifier];
        if (!v23)
        {
          sub_21CE6CC50();
          v23 = sub_21CE6CC20();
        }

        *(v0 + 496) = v23;
        v24 = *(v0 + 408);
        v25 = *(v0 + 360);
        *(v0 + 16) = v0;
        *(v0 + 56) = v25;
        *(v0 + 24) = sub_21CE4CF44;
        v26 = swift_continuation_init();
        *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40D18, &qword_21CE735C8);
        *(v0 + 80) = MEMORY[0x277D85DD0];
        *(v0 + 88) = 1107296256;
        *(v0 + 96) = sub_21CE4E508;
        *(v0 + 104) = &block_descriptor_8;
        *(v0 + 112) = v26;
        [v24 fetchURLForEnumWithIdentifier:v22 caseIdentifier:v23 completionHandler:v0 + 80];

        return MEMORY[0x282200938](v0 + 16);
      }
    }

    v28 = *(v0 + 408);

    v29 = *(v0 + 8);
    v30 = MEMORY[0x277D84F90];

    return v29(v30);
  }

  else
  {
    v14 = v5;
    sub_21CE6B910();

    swift_willThrow();

    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_21CE4CF44()
{
  v1 = *(*v0 + 48);
  *(*v0 + 504) = v1;
  if (v1)
  {
    v2 = sub_21CE4DDE8;
  }

  else
  {
    v2 = sub_21CE4D080;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21CE4D080()
{
  v132 = v0;
  v131[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 368);
  v2 = *(v0 + 376);
  v3 = *(v0 + 352);
  sub_21CE53750(*(v0 + 360), v3);
  v4 = *(v2 + 48);
  v5 = v4(v3, 1, v1);
  v6 = *(v0 + 488);
  v7 = *(v0 + 496);
  if (v5 == 1)
  {
    sub_21CDE5494(*(v0 + 352), &unk_27CE40310, &qword_21CE71470);

    if (qword_281213298 != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 472);
    v9 = sub_21CE6BDA0();
    __swift_project_value_buffer(v9, qword_2812165F0);
    v10 = v8;
    v11 = sub_21CE6BD80();
    v12 = sub_21CE6CF10();

    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 472);
    v15 = *(v0 + 480);
    v16 = *(v0 + 456);
    if (v13)
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      v19 = [v14 title];
      *(v17 + 4) = v19;
      *v18 = v19;
      _os_log_impl(&dword_21CDE1000, v11, v12, "Error fetching URL for %@", v17, 0xCu);
      sub_21CDE5494(v18, &unk_27CE40D20, &qword_21CE70EA0);
      MEMORY[0x21CF1BD50](v18, -1, -1);
      MEMORY[0x21CF1BD50](v17, -1, -1);
    }

    else
    {
    }

    v23 = *(v0 + 440);
    v24 = *(v0 + 448);
  }

  else
  {
    v20 = *(v0 + 480);
    (*(*(v0 + 376) + 32))(*(v0 + 392), *(v0 + 352), *(v0 + 368));

    v21 = sub_21CE6B9B0();
    [v20 setURL_];

    if (URL.relatedAppBundleIdentifier()().value._object)
    {
      v22 = sub_21CE6CC20();
    }

    else
    {
      v22 = 0;
    }

    v25 = *(v0 + 480);
    [v25 setRelatedAppBundleIdentifier_];

    v26 = sub_21CE4BBC4();
    [v25 setRankingHint_];

    if (qword_281213298 != -1)
    {
      swift_once();
    }

    v27 = *(v0 + 480);
    v28 = *(v0 + 328);
    v29 = sub_21CE6BDA0();
    __swift_project_value_buffer(v29, qword_2812165F0);
    v30 = v27;
    v31 = v28;
    v32 = sub_21CE6BD80();
    v33 = sub_21CE6CF00();

    if (os_log_type_enabled(v32, v33))
    {
      v129 = v33;
      v130 = v4;
      v34 = *(v0 + 480);
      v35 = *(v0 + 328);
      v36 = swift_slowAlloc();
      v128 = swift_slowAlloc();
      *(v0 + 304) = v128;
      *v36 = 136317187;
      v37 = [v35 mangledTypeName];
      v38 = sub_21CE6CC50();
      v40 = v39;

      v41 = sub_21CDF2CC8(v38, v40, (v0 + 304));

      *(v36 + 4) = v41;
      *(v36 + 12) = 2160;
      *(v36 + 14) = 1752392040;
      *(v36 + 22) = 2081;
      v42 = [v34 title];
      if (v42)
      {
        v43 = v42;
        v44 = sub_21CE6CC50();
        v46 = v45;
      }

      else
      {
        v46 = 0xE200000000000000;
        v44 = 10023;
      }

      v47 = *(v0 + 480);
      v48 = sub_21CDF2CC8(v44, v46, (v0 + 304));

      *(v36 + 24) = v48;
      *(v36 + 32) = 2160;
      *(v36 + 34) = 1752392040;
      *(v36 + 42) = 2081;
      v49 = [v47 subtitle];
      if (v49)
      {
        v50 = v49;
        v51 = sub_21CE6CC50();
        v53 = v52;
      }

      else
      {
        v53 = 0xE200000000000000;
        v51 = 10023;
      }

      v127 = v32;
      v54 = *(v0 + 480);
      v55 = sub_21CDF2CC8(v51, v53, (v0 + 304));

      *(v36 + 44) = v55;
      *(v36 + 52) = 2160;
      *(v36 + 54) = 1752392040;
      *(v36 + 62) = 2081;
      v56 = [v54 keywords];
      if (v56)
      {
        v57 = v56;
        v58 = sub_21CE6CD40();
      }

      else
      {
        v58 = MEMORY[0x277D84F90];
      }

      v59 = *(v0 + 480);
      v60 = MEMORY[0x21CF1AD30](v58, MEMORY[0x277D837D0]);
      v62 = v61;

      v63 = sub_21CDF2CC8(v60, v62, (v0 + 304));

      *(v36 + 64) = v63;
      *(v36 + 72) = 2160;
      *(v36 + 74) = 1752392040;
      *(v36 + 82) = 2081;
      v64 = [v59 URL];
      if (v64)
      {
        v65 = v64;
        sub_21CE6B9F0();

        v66 = 0;
      }

      else
      {
        v66 = 1;
      }

      v67 = *(v0 + 368);
      v69 = *(v0 + 336);
      v68 = *(v0 + 344);
      (*(*(v0 + 376) + 56))(v69, v66, 1, v67);
      sub_21CE53750(v69, v68);
      if (v130(v68, 1, v67))
      {
        sub_21CDE5494(*(v0 + 344), &unk_27CE40310, &qword_21CE71470);
        v70 = 0xE200000000000000;
        v71 = 10023;
      }

      else
      {
        v72 = *(v0 + 376);
        v73 = *(v0 + 384);
        v74 = *(v0 + 368);
        v75 = *(v0 + 344);
        (*(v72 + 16))(v73, v75, v74);
        sub_21CDE5494(v75, &unk_27CE40310, &qword_21CE71470);
        v76 = sub_21CE6B980();
        v70 = v77;
        (*(v72 + 8))(v73, v74);
        v71 = v76;
      }

      v78 = sub_21CDF2CC8(v71, v70, (v0 + 304));

      *(v36 + 84) = v78;
      _os_log_impl(&dword_21CDE1000, v32, v129, "LNEnumMetadata:  %s  CSSearchableItem title: %{private,mask.hash}s, subtitle:%{private,mask.hash}s, keywords:%{private,mask.hash}s, url:%{private,mask.hash}s", v36, 0x5Cu);
      swift_arrayDestroy();
      MEMORY[0x21CF1BD50](v128, -1, -1);
      MEMORY[0x21CF1BD50](v36, -1, -1);
    }

    else
    {
    }

    v79 = *(v0 + 320);
    v80 = *(v0 + 328);
    *(v0 + 208) = *(v0 + 312);
    *(v0 + 216) = v79;

    v81 = [v80 mangledTypeNameByBundleIdentifier];
    v82 = sub_21CE6CB60();

    v83 = sub_21CE4B3D4(v82);
    v85 = v84;

    if (v85)
    {

      *(v0 + 224) = v83;
      *(v0 + 232) = v85;
      *(v0 + 240) = 0x6C7070612E6D6F63;
      *(v0 + 248) = 0xEA00000000002E65;
      sub_21CE537C0();
      sub_21CE6CED0();

      v86 = *(v0 + 160);
      v87 = *(v0 + 168);
      *(v0 + 256) = 46;
      *(v0 + 264) = 0xE100000000000000;
      *(v0 + 176) = *(v0 + 144);
      *(v0 + 192) = v86;
      *(v0 + 200) = v87;
      sub_21CE53814();
      sub_21CE6CCC0();

      MEMORY[0x21CF1ACB0](*(v0 + 256), *(v0 + 264));
    }

    else
    {
      v88 = *(v0 + 328);
      v89 = sub_21CE6BD80();
      v90 = sub_21CE6CF10();

      if (os_log_type_enabled(v89, v90))
      {
        v91 = *(v0 + 328);
        v92 = swift_slowAlloc();
        v93 = swift_slowAlloc();
        v131[0] = v93;
        *v92 = 136315138;
        v94 = [v91 description];
        v95 = sub_21CE6CC50();
        v97 = v96;

        v98 = sub_21CDF2CC8(v95, v97, v131);

        *(v92 + 4) = v98;
        _os_log_impl(&dword_21CDE1000, v89, v90, "Unknown bundle domain for %s", v92, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v93);
        MEMORY[0x21CF1BD50](v93, -1, -1);
        MEMORY[0x21CF1BD50](v92, -1, -1);
      }
    }

    v99 = *(v0 + 480);
    sub_21CE6B980();
    v100 = objc_allocWithZone(MEMORY[0x277CC34B0]);
    v101 = v99;
    v102 = sub_21CE6CC20();

    v103 = sub_21CE6CC20();

    [v100 initWithUniqueIdentifier:v102 domainIdentifier:v103 attributeSet:v101];

    MEMORY[0x21CF1AD00]();
    if (*((*(v0 + 272) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 272) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_21CE6CD60();
    }

    v105 = *(v0 + 472);
    v104 = *(v0 + 480);
    v106 = *(v0 + 456);
    v107 = *(v0 + 392);
    v108 = *(v0 + 368);
    v109 = *(v0 + 376);
    sub_21CE6CD80();

    (*(v109 + 8))(v107, v108);
    v23 = *(v0 + 272);
    v24 = v23;
  }

  v110 = *(v0 + 464);
  if (v110 == *(v0 + 424))
  {
    v111 = *(v0 + 408);

    v112 = *(v0 + 8);

    return v112(v24);
  }

  *(v0 + 440) = v23;
  *(v0 + 448) = v24;
  v114 = *(v0 + 416);
  if ((v114 & 0xC000000000000001) != 0)
  {
    v115 = MEMORY[0x21CF1B2A0](v110);
  }

  else
  {
    if (v110 >= *((v114 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_58;
    }

    v115 = *(v114 + 8 * v110 + 32);
  }

  v116 = v115;
  *(v0 + 456) = v115;
  *(v0 + 464) = v110 + 1;
  if (__OFADD__(v110, 1))
  {
    __break(1u);
LABEL_58:
    __break(1u);
  }

  v117 = *(v0 + 328);
  v118 = [v115 displayRepresentation];
  *(v0 + 472) = v118;
  v119 = sub_21CE4BFC0(v118);
  *(v0 + 480) = v119;
  v120 = [v117 identifier];
  if (!v120)
  {
    sub_21CE6CC50();
    v120 = sub_21CE6CC20();
  }

  v121 = *(v0 + 328);
  [v119 setIdentifier_];

  v122 = [v121 identifier];
  if (!v122)
  {
    sub_21CE6CC50();
    v122 = sub_21CE6CC20();
  }

  *(v0 + 488) = v122;
  v123 = [v116 identifier];
  if (!v123)
  {
    sub_21CE6CC50();
    v123 = sub_21CE6CC20();
  }

  *(v0 + 496) = v123;
  v124 = *(v0 + 408);
  v125 = *(v0 + 360);
  *(v0 + 16) = v0;
  *(v0 + 56) = v125;
  *(v0 + 24) = sub_21CE4CF44;
  v126 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40D18, &qword_21CE735C8);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_21CE4E508;
  *(v0 + 104) = &block_descriptor_8;
  *(v0 + 112) = v126;
  [v124 fetchURLForEnumWithIdentifier:v122 caseIdentifier:v123 completionHandler:v0 + 80];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_21CE4DDE8()
{
  v58 = v0;
  v57[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 496);
  v2 = *(v0 + 504);
  v3 = *(v0 + 488);
  swift_willThrow();

  *(v0 + 288) = v2;
  v4 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE406C0, &qword_21CE70E30);
  sub_21CDE40C8(0, &unk_2812119D0, 0x277CCA9B8);
  if (swift_dynamicCast())
  {

    v5 = *(v0 + 296);
    if (qword_281213298 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 456);
    v7 = *(v0 + 328);
    v8 = sub_21CE6BDA0();
    __swift_project_value_buffer(v8, qword_2812165F0);
    v9 = v7;
    v10 = v6;
    v11 = v5;
    v12 = sub_21CE6BD80();
    v13 = sub_21CE6CF20();

    v14 = os_log_type_enabled(v12, v13);
    v15 = *(v0 + 480);
    v16 = *(v0 + 456);
    if (v14)
    {
      v17 = *(v0 + 328);
      v55 = *(v0 + 472);
      v56 = *(v0 + 480);
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v57[0] = v54;
      *v18 = 136315650;
      v20 = [v17 identifier];
      v21 = sub_21CE6CC50();
      v23 = v22;

      v24 = sub_21CDF2CC8(v21, v23, v57);

      *(v18 + 4) = v24;
      *(v18 + 12) = 2080;
      v25 = [v16 identifier];
      v26 = sub_21CE6CC50();
      v28 = v27;

      v29 = sub_21CDF2CC8(v26, v28, v57);

      *(v18 + 14) = v29;
      *(v18 + 22) = 2112;
      *(v18 + 24) = v11;
      *v19 = v11;
      v30 = v11;
      _os_log_impl(&dword_21CDE1000, v12, v13, "Error during %s:%s URL request %@", v18, 0x20u);
      sub_21CDE5494(v19, &unk_27CE40D20, &qword_21CE70EA0);
      MEMORY[0x21CF1BD50](v19, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x21CF1BD50](v54, -1, -1);
      MEMORY[0x21CF1BD50](v18, -1, -1);
    }

    else
    {
    }

    v37 = *(v0 + 464);
    v38 = *(v0 + 416);
    if (v37 == *(v0 + 424))
    {
      v39 = *(v0 + 448);
      v40 = *(v0 + 408);

      v41 = *(v0 + 8);

      return v41(v39);
    }

    if ((v38 & 0xC000000000000001) != 0)
    {
      v42 = MEMORY[0x21CF1B2A0](*(v0 + 464), *(v0 + 416));
    }

    else
    {
      if (v37 >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      v42 = *(v38 + 8 * v37 + 32);
    }

    v43 = v42;
    *(v0 + 456) = v42;
    *(v0 + 464) = v37 + 1;
    if (!__OFADD__(v37, 1))
    {
      v44 = *(v0 + 328);
      v45 = [v42 displayRepresentation];
      *(v0 + 472) = v45;
      v46 = sub_21CE4BFC0(v45);
      *(v0 + 480) = v46;
      v47 = [v44 identifier];
      if (!v47)
      {
        sub_21CE6CC50();
        v47 = sub_21CE6CC20();
      }

      v48 = *(v0 + 328);
      [v46 setIdentifier_];

      v49 = [v48 identifier];
      if (!v49)
      {
        sub_21CE6CC50();
        v49 = sub_21CE6CC20();
      }

      *(v0 + 488) = v49;
      v50 = [v43 identifier];
      if (!v50)
      {
        sub_21CE6CC50();
        v50 = sub_21CE6CC20();
      }

      *(v0 + 496) = v50;
      v51 = *(v0 + 408);
      v52 = *(v0 + 360);
      *(v0 + 16) = v0;
      *(v0 + 56) = v52;
      *(v0 + 24) = sub_21CE4CF44;
      v53 = swift_continuation_init();
      *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40D18, &qword_21CE735C8);
      *(v0 + 80) = MEMORY[0x277D85DD0];
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_21CE4E508;
      *(v0 + 104) = &block_descriptor_8;
      *(v0 + 112) = v53;
      [v51 fetchURLForEnumWithIdentifier:v49 caseIdentifier:v50 completionHandler:v0 + 80];

      return MEMORY[0x282200938](v0 + 16);
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  v32 = *(v0 + 472);
  v31 = *(v0 + 480);
  v33 = *(v0 + 456);
  v34 = *(v0 + 400);

  v35 = *(v0 + 8);

  return v35();
}

uint64_t sub_21CE4E508(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40310, &qword_21CE71470);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v19 - v10;
  v12 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE406C0, &qword_21CE70E30);
    v13 = swift_allocError();
    *v14 = a3;
    v15 = a3;

    return MEMORY[0x282200958](v12, v13);
  }

  else
  {
    if (a2)
    {
      sub_21CE6B9F0();
      v16 = sub_21CE6BA60();
      (*(*(v16 - 8) + 56))(v9, 0, 1, v16);
    }

    else
    {
      v17 = sub_21CE6BA60();
      (*(*(v17 - 8) + 56))(v9, 1, 1, v17);
    }

    sub_21CE53750(v9, v11);
    sub_21CE53750(v11, *(*(v12 + 64) + 40));
    return swift_continuation_throwingResume();
  }
}

void sub_21CE4E6E4()
{
  v1 = [v0 systemProtocolMetadata];
  type metadata accessor for LNSystemEntityProtocolIdentifier(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40CC8, &qword_21CE734E0);
  sub_21CE53868();
  v2 = sub_21CE6CB60();

  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (v5)
  {
LABEL_9:
    v9 = sub_21CE6CC50();
    v11 = v10;
    if (v9 == sub_21CE6CC50() && v11 == v12)
    {

      goto LABEL_17;
    }

    v5 &= v5 - 1;
    v14 = sub_21CE6D400();

    if (v14)
    {

LABEL_17:

      return;
    }
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      return;
    }

    v5 = *(v2 + 64 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_21CE4E8B0(uint64_t a1, uint64_t a2)
{
  v3[68] = v2;
  v3[67] = a2;
  v3[66] = a1;
  v4 = sub_21CE6BA60();
  v3[69] = v4;
  v3[70] = *(v4 - 8);
  v3[71] = swift_task_alloc();
  v3[72] = swift_task_alloc();
  v3[73] = swift_task_alloc();
  v3[74] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40310, &qword_21CE71470);
  v3[75] = swift_task_alloc();
  v3[76] = swift_task_alloc();
  v3[77] = swift_task_alloc();
  v3[78] = swift_task_alloc();
  v3[79] = swift_task_alloc();
  v3[80] = swift_task_alloc();
  v3[81] = swift_task_alloc();
  v3[82] = swift_task_alloc();
  v3[83] = swift_task_alloc();
  v3[84] = swift_task_alloc();
  v5 = sub_21CE6D0C0();
  v3[85] = v5;
  v3[86] = *(v5 - 8);
  v3[87] = swift_task_alloc();
  v6 = sub_21CE6D0D0();
  v3[88] = v6;
  v3[89] = *(v6 - 8);
  v3[90] = swift_task_alloc();
  v7 = sub_21CE6BD60();
  v3[91] = v7;
  v3[92] = *(v7 - 8);
  v3[93] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21CE4EB80, 0, 0);
}

uint64_t sub_21CE4EB80()
{
  v55 = v0;
  v54[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 744);
  v2 = *(v0 + 736);
  v3 = *(v0 + 728);
  v4 = *(v0 + 712);
  v47 = *(v0 + 720);
  v48 = *(v0 + 704);
  v5 = *(v0 + 688);
  v49 = *(v0 + 696);
  v50 = *(v0 + 680);
  v6 = *(v0 + 544);
  v52 = [objc_opt_self() policyWithEntityMetadata_];
  *(v0 + 752) = v52;
  v7 = [objc_allocWithZone(MEMORY[0x277D23C68]) init];
  *(v0 + 760) = v7;
  sub_21CE6BD50();
  sub_21CE6BD20();
  (*(v2 + 8))(v1, v3);
  v8 = objc_allocWithZone(MEMORY[0x277D237C8]);
  v9 = sub_21CE6CC20();

  v10 = [v8 initWithContentType_];

  v11 = [objc_allocWithZone(MEMORY[0x277D23C18]) initWithContentType:v10 preferredExtractionType:1];
  [v7 setExportConfiguration_];

  sub_21CE4E6E4();
  v12 = MEMORY[0x277D23A58];
  if ((v13 & 1) == 0)
  {
    v12 = MEMORY[0x277D23A30];
  }

  (*(v4 + 104))(v47, *v12, v48);
  sub_21CDE40C8(0, &qword_281211A28, 0x277D23B90);
  *v49 = v6;
  (*(v5 + 104))(v49, *MEMORY[0x277D23A40], v50);
  v14 = v6;
  v15 = v7;
  v16 = sub_21CE6D0E0();
  *(v0 + 768) = v16;
  *(v0 + 464) = MEMORY[0x277D84F90];
  *(v0 + 472) = 0;
  v17 = [v52 connectionWithError_];
  *(v0 + 776) = v17;
  v18 = *(v0 + 472);
  if (v17)
  {
    v19 = v17;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 496;
    *(v0 + 24) = sub_21CE4F38C;
    v20 = swift_continuation_init();
    *(v0 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40D30, &qword_21CE735D8);
    *(v0 + 144) = MEMORY[0x277D85DD0];
    *(v0 + 152) = 1107296256;
    *(v0 + 160) = sub_21CDE6724;
    *(v0 + 168) = &block_descriptor_8;
    *(v0 + 176) = v20;
    v21 = v18;
    [v19 performConfigurableQuery:v16 completionHandler:v0 + 144];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    v22 = v18;
    v23 = sub_21CE6B910();

    swift_willThrow();
    *(v0 + 480) = v23;
    v24 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE406C0, &qword_21CE70E30);
    sub_21CDE40C8(0, &unk_2812119D0, 0x277CCA9B8);
    if (swift_dynamicCast())
    {

      v25 = *(v0 + 488);
      if (qword_281213298 != -1)
      {
        swift_once();
      }

      v26 = sub_21CE6BDA0();
      __swift_project_value_buffer(v26, qword_2812165F0);
      v27 = v25;
      v28 = sub_21CE6BD80();
      v29 = sub_21CE6CF20();

      v30 = os_log_type_enabled(v28, v29);
      v31 = *(v0 + 768);
      v32 = *(v0 + 760);
      v33 = *(v0 + 752);
      if (v30)
      {
        v53 = *(v0 + 752);
        v34 = swift_slowAlloc();
        v51 = v31;
        v35 = swift_slowAlloc();
        v54[0] = v35;
        *v34 = 136315138;
        v36 = [v27 localizedDescription];
        v37 = sub_21CE6CC50();
        v39 = v38;

        v40 = sub_21CDF2CC8(v37, v39, v54);

        *(v34 + 4) = v40;
        _os_log_impl(&dword_21CDE1000, v28, v29, "Error performing entity query %s", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v35);
        MEMORY[0x21CF1BD50](v35, -1, -1);
        MEMORY[0x21CF1BD50](v34, -1, -1);
      }

      else
      {
      }

      v44 = *(v0 + 8);
      v45 = MEMORY[0x277D84F90];

      return v44(v45);
    }

    else
    {
      v41 = *(v0 + 768);
      v42 = *(v0 + 752);

      v43 = *(v0 + 8);

      return v43();
    }
  }
}

uint64_t sub_21CE4F38C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 784) = v1;
  if (v1)
  {
    v2 = sub_21CE51DD0;
  }

  else
  {
    v2 = sub_21CE4F4C8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21CE4F4C8()
{
  v202 = v0;
  v201[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 496);
  *(v0 + 792) = v1;
  v2 = &selRef_setBundleIdentifier_;
  v3 = [v1 value];
  v4 = [v3 value];

  sub_21CE6D190();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40D38, &unk_21CE735E0);
  if (!swift_dynamicCast())
  {
    if (qword_281213298 != -1)
    {
      swift_once();
    }

    v161 = *(v0 + 544);
    v162 = sub_21CE6BDA0();
    __swift_project_value_buffer(v162, qword_2812165F0);
    v163 = v161;
    v164 = sub_21CE6BD80();
    v165 = sub_21CE6CF20();

    v166 = os_log_type_enabled(v164, v165);
    v167 = *(v0 + 776);
    v168 = *(v0 + 768);
    v169 = *(v0 + 760);
    v170 = *(v0 + 752);
    if (v166)
    {
      v198 = *(v0 + 776);
      v171 = *(v0 + 544);
      v200 = *(v0 + 752);
      v172 = swift_slowAlloc();
      v197 = v168;
      v173 = swift_slowAlloc();
      v201[0] = v173;
      *v172 = 136315138;
      v174 = [v171 description];
      v175 = sub_21CE6CC50();
      v177 = v176;

      v178 = sub_21CDF2CC8(v175, v177, v201);

      *(v172 + 4) = v178;
      _os_log_impl(&dword_21CDE1000, v164, v165, "Unable to fetch entities for %s", v172, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v173);
      MEMORY[0x21CF1BD50](v173, -1, -1);
      MEMORY[0x21CF1BD50](v172, -1, -1);
    }

    else
    {
    }

LABEL_86:
    v8 = MEMORY[0x277D84F90];
LABEL_87:

    v191 = *(v0 + 8);

    return v191(v8);
  }

  v5 = *(v0 + 504);
  *(v0 + 800) = v5;
  if (v5 >> 62)
  {
    v6 = sub_21CE6D360();
    *(v0 + 808) = v6;
    if (v6)
    {
      goto LABEL_4;
    }

    goto LABEL_85;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  *(v0 + 808) = v6;
  if (!v6)
  {
LABEL_85:
    v187 = *(v0 + 776);
    v188 = *(v0 + 768);
    v189 = *(v0 + 760);
    v190 = *(v0 + 752);

    goto LABEL_86;
  }

LABEL_4:
  if (v6 < 1)
  {
    __break(1u);
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    *(v0 + 824) = v8;
    *(v0 + 816) = v7;
    v9 = *(v0 + 800);
    v10 = (v9 & 0xC000000000000001) != 0 ? MEMORY[0x21CF1B2A0]() : *(v9 + 8 * v7 + 32);
    v11 = v10;
    *(v0 + 832) = v10;
    v12 = [v10 displayRepresentation];
    *(v0 + 840) = v12;
    if (v12)
    {
      break;
    }

LABEL_7:
    v7 = *(v0 + 816) + 1;
    if (v7 == *(v0 + 808))
    {
      v179 = *(v0 + 792);
      v180 = *(v0 + 776);
      v181 = *(v0 + 768);
      v182 = *(v0 + 760);
      v183 = *(v0 + 752);

      goto LABEL_87;
    }
  }

  v13 = v12;
  v14 = *(v0 + 544);
  sub_21CDE40C8(0, &qword_281211A20, 0x277CC34B8);
  v15 = v13;
  v16 = sub_21CE4BFC0(v15);
  *(v0 + 848) = v16;
  v17 = [v14 identifier];
  if (!v17)
  {
    sub_21CE6CC50();
    v17 = sub_21CE6CC20();
  }

  [v16 setIdentifier_];

  v18 = [v11 v2[8]];
  sub_21CE6D190();
  swift_unknownObjectRelease();
  sub_21CDE40C8(0, &qword_2812119C0, 0x277D237F0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_7;
  }

  v19 = *(v0 + 512);
  *(v0 + 856) = v19;
  v20 = [v11 exportedContent];
  if (!v20)
  {
    v25 = *(*(v0 + 560) + 56);
    v25(*(v0 + 656), 1, 1, *(v0 + 552));
    goto LABEL_22;
  }

  v21 = v20;
  v22 = [v20 content];

  v23 = [v22 fileURL];
  if (v23)
  {
    sub_21CE6B9F0();

    v24 = 0;
  }

  else
  {
    v24 = 1;
  }

  v26 = *(v0 + 656);
  v27 = *(v0 + 648);
  v28 = *(v0 + 560);
  v29 = *(v0 + 552);
  v25 = *(v28 + 56);
  v25(v27, v24, 1, v29);
  sub_21CE53750(v27, v26);
  if ((*(v28 + 48))(v26, 1, v29) != 1)
  {
    v38 = *(v0 + 664);
    v39 = *(v0 + 592);
    v40 = *(v0 + 552);
    v41 = *(*(v0 + 560) + 32);
    v41(v39, *(v0 + 656), v40);
    v41(v38, v39, v40);
    v25(v38, 0, 1, v40);
    goto LABEL_34;
  }

LABEL_22:
  *(v0 + 864) = v25;
  sub_21CDE5494(*(v0 + 656), &unk_27CE40310, &qword_21CE71470);
  v30 = [v11 exportedContent];
  if (!v30)
  {
    goto LABEL_81;
  }

  v31 = v30;
  v32 = [v30 content];

  v33 = [v32 data];
  v34 = sub_21CE6BA90();
  v36 = v35;

  v37 = v36 >> 62;
  if ((v36 >> 62) <= 1)
  {
    if (!v37)
    {
      sub_21CDF32E8(v34, v36);
      if ((v36 & 0xFF000000000000) == 0)
      {
        goto LABEL_81;
      }

      goto LABEL_32;
    }

    sub_21CDF32E8(v34, v36);
    v42 = v34;
    v43 = v34 >> 32;
LABEL_31:
    if (v42 == v43)
    {
      goto LABEL_81;
    }

LABEL_32:
    v44 = [v11 exportedContent];
    if (!v44)
    {
      goto LABEL_81;
    }

    v45 = v44;
    v46 = *(v0 + 640);
    v47 = *(v0 + 552);
    v48 = [v44 content];

    v49 = [v48 data];
    v50 = sub_21CE6BA90();
    v52 = v51;

    v25(v46, 1, 1, v47);
    sub_21CE6B9A0();
    sub_21CDF32E8(v50, v52);
    sub_21CDE5494(v46, &unk_27CE40310, &qword_21CE71470);
LABEL_34:
    v53 = *(v0 + 672);
    v54 = *(v0 + 616);
    v55 = *(v0 + 560);
    v56 = *(v0 + 552);
    sub_21CE53750(*(v0 + 664), v53);
    sub_21CE0D9E4(v53, v54);
    v57 = *(v55 + 48);
    if (v57(v54, 1, v56) == 1)
    {
      sub_21CDE5494(*(v0 + 616), &unk_27CE40310, &qword_21CE71470);
      if (qword_281213298 != -1)
      {
        swift_once();
      }

      v58 = *(v0 + 544);
      v59 = sub_21CE6BDA0();
      __swift_project_value_buffer(v59, qword_2812165F0);
      v60 = v58;
      v61 = sub_21CE6BD80();
      v62 = sub_21CE6CF20();

      v63 = os_log_type_enabled(v61, v62);
      v64 = *(v0 + 856);
      v65 = *(v0 + 848);
      v66 = *(v0 + 840);
      v67 = *(v0 + 832);
      v68 = *(v0 + 672);
      if (v63)
      {
        v195 = *(v0 + 856);
        v69 = *(v0 + 544);
        v199 = *(v0 + 672);
        v70 = swift_slowAlloc();
        v193 = v65;
        v71 = swift_slowAlloc();
        v201[0] = v71;
        *v70 = 136315138;
        v72 = [v69 description];
        v73 = sub_21CE6CC50();
        v75 = v74;

        v76 = sub_21CDF2CC8(v73, v75, v201);

        *(v70 + 4) = v76;
        _os_log_impl(&dword_21CDE1000, v61, v62, "Unable to export or fetch entity URL for %s", v70, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v71);
        MEMORY[0x21CF1BD50](v71, -1, -1);
        MEMORY[0x21CF1BD50](v70, -1, -1);

        v77 = v199;
      }

      else
      {

        v77 = v68;
      }

      sub_21CDE5494(v77, &unk_27CE40310, &qword_21CE71470);
      v8 = *(v0 + 824);
    }

    else
    {
      v78 = *(v0 + 848);
      (*(*(v0 + 560) + 32))(*(v0 + 576), *(v0 + 616), *(v0 + 552));
      v79 = sub_21CE6B9B0();
      [v78 setURL_];

      if (URL.relatedAppBundleIdentifier()().value._object)
      {
        v80 = sub_21CE6CC20();
      }

      else
      {
        v80 = 0;
      }

      v81 = *(v0 + 848);
      [v81 setRelatedAppBundleIdentifier_];

      v82 = sub_21CE4BBC4();
      [v81 setRankingHint_];

      if (qword_281213298 != -1)
      {
        swift_once();
      }

      v83 = *(v0 + 848);
      v84 = sub_21CE6BDA0();
      __swift_project_value_buffer(v84, qword_2812165F0);
      v85 = v83;
      v86 = sub_21CE6BD80();
      v87 = sub_21CE6CF00();

      if (os_log_type_enabled(v86, v87))
      {
        v196 = v87;
        v88 = *(v0 + 848);
        v89 = swift_slowAlloc();
        v194 = swift_slowAlloc();
        *(v0 + 520) = v194;
        *v89 = 141559811;
        *(v89 + 4) = 1752392040;
        *(v89 + 12) = 2081;
        v90 = [v88 title];
        if (v90)
        {
          v91 = v90;
          v92 = sub_21CE6CC50();
          v94 = v93;
        }

        else
        {
          v94 = 0xE200000000000000;
          v92 = 10023;
        }

        v95 = *(v0 + 848);
        v96 = sub_21CDF2CC8(v92, v94, (v0 + 520));

        *(v89 + 14) = v96;
        *(v89 + 22) = 2160;
        *(v89 + 24) = 1752392040;
        *(v89 + 32) = 2081;
        v97 = [v95 subtitle];
        if (v97)
        {
          v98 = v97;
          v99 = sub_21CE6CC50();
          v101 = v100;
        }

        else
        {
          v101 = 0xE200000000000000;
          v99 = 10023;
        }

        v102 = *(v0 + 848);
        v103 = sub_21CDF2CC8(v99, v101, (v0 + 520));

        *(v89 + 34) = v103;
        *(v89 + 42) = 2160;
        *(v89 + 44) = 1752392040;
        *(v89 + 52) = 2081;
        v104 = [v102 keywords];
        if (v104)
        {
          v105 = v104;
          v106 = MEMORY[0x277D837D0];
          v107 = sub_21CE6CD40();
        }

        else
        {
          v107 = MEMORY[0x277D84F90];
          v106 = MEMORY[0x277D837D0];
        }

        v108 = *(v0 + 848);
        v109 = MEMORY[0x21CF1AD30](v107, v106);
        v111 = v110;

        v112 = sub_21CDF2CC8(v109, v111, (v0 + 520));

        *(v89 + 54) = v112;
        *(v89 + 62) = 2160;
        *(v89 + 64) = 1752392040;
        *(v89 + 72) = 2081;
        v113 = [v108 URL];
        if (v113)
        {
          v114 = v113;
          sub_21CE6B9F0();

          v115 = 0;
        }

        else
        {
          v115 = 1;
        }

        v116 = *(v0 + 608);
        v117 = *(v0 + 600);
        v118 = *(v0 + 552);
        v25(v117, v115, 1, v118);
        sub_21CE53750(v117, v116);
        v119 = v57(v116, 1, v118);
        v120 = *(v0 + 608);
        if (v119)
        {
          sub_21CDE5494(*(v0 + 608), &unk_27CE40310, &qword_21CE71470);
          v121 = 0xE200000000000000;
          v122 = 10023;
        }

        else
        {
          v123 = *(v0 + 568);
          v124 = *(v0 + 560);
          v125 = *(v0 + 552);
          (*(v124 + 16))(v123, *(v0 + 608), v125);
          sub_21CDE5494(v120, &unk_27CE40310, &qword_21CE71470);
          v122 = sub_21CE6B980();
          v121 = v126;
          (*(v124 + 8))(v123, v125);
        }

        v127 = sub_21CDF2CC8(v122, v121, (v0 + 520));

        *(v89 + 74) = v127;
        _os_log_impl(&dword_21CDE1000, v86, v196, "LNEntityMetadata: CSSearchableItem title: %{private,mask.hash}s, subtitle:%{private,mask.hash}s, keywords:%{private,mask.hash}s, url:%{private,mask.hash}s", v89, 0x52u);
        swift_arrayDestroy();
        MEMORY[0x21CF1BD50](v194, -1, -1);
        MEMORY[0x21CF1BD50](v89, -1, -1);
      }

      else
      {
      }

      v128 = *(v0 + 544);
      v129 = *(v0 + 536);
      *(v0 + 400) = *(v0 + 528);
      *(v0 + 408) = v129;

      v130 = [v128 mangledTypeNameByBundleIdentifier];
      v131 = sub_21CE6CB60();

      v132 = sub_21CE4B3D4(v131);
      v134 = v133;

      if (v134)
      {

        *(v0 + 416) = v132;
        *(v0 + 424) = v134;
        *(v0 + 432) = 0x6C7070612E6D6F63;
        *(v0 + 440) = 0xEA00000000002E65;
        sub_21CE537C0();
        sub_21CE6CED0();

        v135 = *(v0 + 352);
        v136 = *(v0 + 360);
        *(v0 + 448) = 46;
        *(v0 + 456) = 0xE100000000000000;
        *(v0 + 368) = *(v0 + 336);
        *(v0 + 384) = v135;
        *(v0 + 392) = v136;
        sub_21CE53814();
        sub_21CE6CCC0();

        MEMORY[0x21CF1ACB0](*(v0 + 448), *(v0 + 456));
      }

      else
      {
        v137 = *(v0 + 544);
        v138 = sub_21CE6BD80();
        v139 = sub_21CE6CF10();

        if (os_log_type_enabled(v138, v139))
        {
          v140 = *(v0 + 544);
          v141 = swift_slowAlloc();
          v142 = swift_slowAlloc();
          v201[0] = v142;
          *v141 = 136315138;
          v143 = [v140 description];
          v144 = sub_21CE6CC50();
          v146 = v145;

          v147 = sub_21CDF2CC8(v144, v146, v201);

          *(v141 + 4) = v147;
          _os_log_impl(&dword_21CDE1000, v138, v139, "Unknown bundle domain for %s", v141, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v142);
          MEMORY[0x21CF1BD50](v142, -1, -1);
          MEMORY[0x21CF1BD50](v141, -1, -1);
        }
      }

      v148 = *(v0 + 848);
      sub_21CE6B980();
      v149 = objc_allocWithZone(MEMORY[0x277CC34B0]);
      v150 = v148;
      v151 = sub_21CE6CC20();

      v152 = sub_21CE6CC20();

      [v149 initWithUniqueIdentifier:v151 domainIdentifier:v152 attributeSet:v150];

      MEMORY[0x21CF1AD00]();
      if (*((*(v0 + 464) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 464) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21CE6CD60();
      }

      v153 = *(v0 + 856);
      v154 = *(v0 + 848);
      v155 = *(v0 + 840);
      v156 = *(v0 + 832);
      v157 = *(v0 + 672);
      v158 = *(v0 + 576);
      v159 = *(v0 + 560);
      v160 = *(v0 + 552);
      sub_21CE6CD80();

      (*(v159 + 8))(v158, v160);
      sub_21CDE5494(v157, &unk_27CE40310, &qword_21CE71470);
      v8 = *(v0 + 464);
    }

    v2 = &selRef_setBundleIdentifier_;
    goto LABEL_7;
  }

  if (v37 == 2)
  {
    v42 = *(v34 + 16);
    v43 = *(v34 + 24);
    sub_21CDF32E8(v34, v36);
    goto LABEL_31;
  }

  sub_21CDF32E8(v34, v36);
LABEL_81:
  v184 = *(v0 + 776);
  v185 = *(v0 + 632);
  *(v0 + 80) = v0;
  *(v0 + 120) = v185;
  *(v0 + 88) = sub_21CE5098C;
  v186 = swift_continuation_init();
  *(v0 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40D18, &qword_21CE735C8);
  *(v0 + 208) = MEMORY[0x277D85DD0];
  *(v0 + 216) = 1107296256;
  *(v0 + 224) = sub_21CE4E508;
  *(v0 + 232) = &block_descriptor_11;
  *(v0 + 240) = v186;
  [v184 fetchEntityURL:v19 completionHandler:v0 + 208];

  return MEMORY[0x282200938](v0 + 80);
}

uint64_t sub_21CE5098C()
{
  v1 = *(*v0 + 112);
  *(*v0 + 872) = v1;
  if (v1)
  {
    v2 = sub_21CE522B8;
  }

  else
  {
    v2 = sub_21CE50AC8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21CE50AC8()
{
  v184 = v0;
  v183[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 624);
  v2 = *(v0 + 560);
  v3 = *(v0 + 552);
  sub_21CE53750(*(v0 + 632), v1);
  v4 = (*(v2 + 48))(v1, 1, v3);
  v5 = *(v0 + 864);
  v6 = *(v0 + 664);
  if (v4 == 1)
  {
    v7 = *(v0 + 552);
    sub_21CDE5494(*(v0 + 624), &unk_27CE40310, &qword_21CE71470);
    v5(v6, 1, 1, v7);
  }

  else
  {
    v8 = *(v0 + 584);
    v9 = *(v0 + 552);
    v10 = *(*(v0 + 560) + 32);
    v10(v8, *(v0 + 624), v9);
    v10(v6, v8, v9);
    v5(v6, 0, 1, v9);
  }

  v181 = *(v0 + 864);
  v11 = &unk_281213000;
LABEL_5:
  v12 = *(v0 + 672);
  v13 = *(v0 + 616);
  v14 = *(v0 + 560);
  v15 = *(v0 + 552);
  sub_21CE53750(*(v0 + 664), v12);
  sub_21CE0D9E4(v12, v13);
  v16 = *(v14 + 48);
  if (v16(v13, 1, v15) == 1)
  {
    sub_21CDE5494(*(v0 + 616), &unk_27CE40310, &qword_21CE71470);
    if (v11[83] != -1)
    {
      swift_once();
    }

    v17 = *(v0 + 544);
    v18 = sub_21CE6BDA0();
    __swift_project_value_buffer(v18, qword_2812165F0);
    v19 = v17;
    v20 = sub_21CE6BD80();
    v21 = sub_21CE6CF20();

    v22 = os_log_type_enabled(v20, v21);
    v23 = *(v0 + 856);
    v24 = *(v0 + 848);
    v25 = *(v0 + 840);
    v26 = *(v0 + 832);
    v27 = *(v0 + 672);
    if (v22)
    {
      loga = *(v0 + 856);
      v28 = *(v0 + 544);
      v182 = *(v0 + 672);
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v183[0] = v30;
      *v29 = 136315138;
      v31 = [v28 description];
      v32 = sub_21CE6CC50();
      v177 = v24;
      v34 = v33;

      v35 = sub_21CDF2CC8(v32, v34, v183);

      *(v29 + 4) = v35;
      _os_log_impl(&dword_21CDE1000, v20, v21, "Unable to export or fetch entity URL for %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x21CF1BD50](v30, -1, -1);
      MEMORY[0x21CF1BD50](v29, -1, -1);

      v36 = v182;
    }

    else
    {

      v36 = v27;
    }

    sub_21CDE5494(v36, &unk_27CE40310, &qword_21CE71470);
    v40 = *(v0 + 824);
  }

  else
  {
    v37 = *(v0 + 848);
    (*(*(v0 + 560) + 32))(*(v0 + 576), *(v0 + 616), *(v0 + 552));
    v38 = sub_21CE6B9B0();
    [v37 setURL_];

    if (URL.relatedAppBundleIdentifier()().value._object)
    {
      v39 = sub_21CE6CC20();
    }

    else
    {
      v39 = 0;
    }

    v41 = *(v0 + 848);
    [v41 setRelatedAppBundleIdentifier_];

    v42 = sub_21CE4BBC4();
    [v41 setRankingHint_];

    if (v11[83] != -1)
    {
      swift_once();
    }

    v43 = *(v0 + 848);
    v44 = sub_21CE6BDA0();
    __swift_project_value_buffer(v44, qword_2812165F0);
    v45 = v43;
    v46 = sub_21CE6BD80();
    v47 = sub_21CE6CF00();

    if (os_log_type_enabled(v46, v47))
    {
      v178 = v47;
      log = v46;
      v48 = *(v0 + 848);
      v49 = swift_slowAlloc();
      v176 = swift_slowAlloc();
      *(v0 + 520) = v176;
      *v49 = 141559811;
      *(v49 + 4) = 1752392040;
      *(v49 + 12) = 2081;
      v50 = [v48 title];
      if (v50)
      {
        v51 = v50;
        v52 = sub_21CE6CC50();
        v54 = v53;
      }

      else
      {
        v54 = 0xE200000000000000;
        v52 = 10023;
      }

      v55 = *(v0 + 848);
      v56 = sub_21CDF2CC8(v52, v54, (v0 + 520));

      *(v49 + 14) = v56;
      *(v49 + 22) = 2160;
      *(v49 + 24) = 1752392040;
      *(v49 + 32) = 2081;
      v57 = [v55 subtitle];
      if (v57)
      {
        v58 = v57;
        v59 = sub_21CE6CC50();
        v61 = v60;
      }

      else
      {
        v61 = 0xE200000000000000;
        v59 = 10023;
      }

      v62 = *(v0 + 848);
      v63 = sub_21CDF2CC8(v59, v61, (v0 + 520));

      *(v49 + 34) = v63;
      *(v49 + 42) = 2160;
      *(v49 + 44) = 1752392040;
      *(v49 + 52) = 2081;
      v64 = [v62 keywords];
      if (v64)
      {
        v65 = v64;
        v66 = MEMORY[0x277D837D0];
        v67 = sub_21CE6CD40();
      }

      else
      {
        v67 = MEMORY[0x277D84F90];
        v66 = MEMORY[0x277D837D0];
      }

      v68 = *(v0 + 848);
      v69 = MEMORY[0x21CF1AD30](v67, v66);
      v71 = v70;

      v72 = sub_21CDF2CC8(v69, v71, (v0 + 520));

      *(v49 + 54) = v72;
      *(v49 + 62) = 2160;
      *(v49 + 64) = 1752392040;
      *(v49 + 72) = 2081;
      v73 = [v68 URL];
      if (v73)
      {
        v74 = v73;
        sub_21CE6B9F0();

        v75 = 0;
      }

      else
      {
        v75 = 1;
      }

      v76 = *(v0 + 608);
      v77 = *(v0 + 600);
      v78 = *(v0 + 552);
      v181(v77, v75, 1, v78);
      sub_21CE53750(v77, v76);
      v79 = v16(v76, 1, v78);
      v80 = *(v0 + 608);
      if (v79)
      {
        sub_21CDE5494(*(v0 + 608), &unk_27CE40310, &qword_21CE71470);
        v81 = 0xE200000000000000;
        v82 = 10023;
      }

      else
      {
        v83 = *(v0 + 568);
        v84 = *(v0 + 560);
        v85 = *(v0 + 552);
        (*(v84 + 16))(v83, *(v0 + 608), v85);
        sub_21CDE5494(v80, &unk_27CE40310, &qword_21CE71470);
        v82 = sub_21CE6B980();
        v81 = v86;
        (*(v84 + 8))(v83, v85);
      }

      v87 = sub_21CDF2CC8(v82, v81, (v0 + 520));

      *(v49 + 74) = v87;
      _os_log_impl(&dword_21CDE1000, log, v178, "LNEntityMetadata: CSSearchableItem title: %{private,mask.hash}s, subtitle:%{private,mask.hash}s, keywords:%{private,mask.hash}s, url:%{private,mask.hash}s", v49, 0x52u);
      swift_arrayDestroy();
      MEMORY[0x21CF1BD50](v176, -1, -1);
      MEMORY[0x21CF1BD50](v49, -1, -1);
    }

    else
    {
    }

    v88 = *(v0 + 544);
    v89 = *(v0 + 536);
    *(v0 + 400) = *(v0 + 528);
    *(v0 + 408) = v89;

    v90 = [v88 mangledTypeNameByBundleIdentifier];
    v91 = sub_21CE6CB60();

    v92 = sub_21CE4B3D4(v91);
    v94 = v93;

    if (v94)
    {

      *(v0 + 416) = v92;
      *(v0 + 424) = v94;
      *(v0 + 432) = 0x6C7070612E6D6F63;
      *(v0 + 440) = 0xEA00000000002E65;
      sub_21CE537C0();
      sub_21CE6CED0();

      v95 = *(v0 + 352);
      v96 = *(v0 + 360);
      *(v0 + 448) = 46;
      *(v0 + 456) = 0xE100000000000000;
      *(v0 + 368) = *(v0 + 336);
      *(v0 + 384) = v95;
      *(v0 + 392) = v96;
      sub_21CE53814();
      sub_21CE6CCC0();

      MEMORY[0x21CF1ACB0](*(v0 + 448), *(v0 + 456));
    }

    else
    {
      v97 = *(v0 + 544);
      v98 = sub_21CE6BD80();
      v99 = sub_21CE6CF10();

      if (os_log_type_enabled(v98, v99))
      {
        v100 = *(v0 + 544);
        v101 = swift_slowAlloc();
        v102 = swift_slowAlloc();
        v183[0] = v102;
        *v101 = 136315138;
        v103 = [v100 description];
        v104 = sub_21CE6CC50();
        v106 = v105;

        v107 = sub_21CDF2CC8(v104, v106, v183);

        *(v101 + 4) = v107;
        _os_log_impl(&dword_21CDE1000, v98, v99, "Unknown bundle domain for %s", v101, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v102);
        MEMORY[0x21CF1BD50](v102, -1, -1);
        MEMORY[0x21CF1BD50](v101, -1, -1);
      }
    }

    v108 = *(v0 + 848);
    sub_21CE6B980();
    v109 = objc_allocWithZone(MEMORY[0x277CC34B0]);
    v110 = v108;
    v111 = sub_21CE6CC20();

    v112 = sub_21CE6CC20();

    [v109 initWithUniqueIdentifier:v111 domainIdentifier:v112 attributeSet:v110];

    MEMORY[0x21CF1AD00]();
    if (*((*(v0 + 464) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 464) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_21CE6CD60();
    }

    v113 = *(v0 + 856);
    v114 = *(v0 + 848);
    v115 = *(v0 + 840);
    v116 = *(v0 + 832);
    v117 = *(v0 + 672);
    v118 = *(v0 + 576);
    v119 = *(v0 + 560);
    v120 = *(v0 + 552);
    sub_21CE6CD80();

    (*(v119 + 8))(v118, v120);
    sub_21CDE5494(v117, &unk_27CE40310, &qword_21CE71470);
    v40 = *(v0 + 464);
  }

  while (1)
  {
    v121 = *(v0 + 816) + 1;
    if (v121 == *(v0 + 808))
    {
      break;
    }

    *(v0 + 824) = v40;
    *(v0 + 816) = v121;
    v122 = *(v0 + 800);
    if ((v122 & 0xC000000000000001) != 0)
    {
      v123 = MEMORY[0x21CF1B2A0]();
    }

    else
    {
      v123 = *(v122 + 8 * v121 + 32);
    }

    v124 = v123;
    *(v0 + 832) = v123;
    v125 = [v123 displayRepresentation];
    *(v0 + 840) = v125;
    if (v125)
    {
      v126 = v125;
      v127 = *(v0 + 544);
      sub_21CDE40C8(0, &qword_281211A20, 0x277CC34B8);
      v128 = v126;
      v129 = sub_21CE4BFC0(v128);
      *(v0 + 848) = v129;
      v130 = [v127 identifier];
      if (!v130)
      {
        sub_21CE6CC50();
        v130 = sub_21CE6CC20();
      }

      [v129 setIdentifier_];

      v131 = [v124 value];
      sub_21CE6D190();
      swift_unknownObjectRelease();
      sub_21CDE40C8(0, &qword_2812119C0, 0x277D237F0);
      if (swift_dynamicCast())
      {
        v132 = *(v0 + 512);
        *(v0 + 856) = v132;
        v133 = [v124 exportedContent];
        if (!v133)
        {
          v138 = *(*(v0 + 560) + 56);
          v138(*(v0 + 656), 1, 1, *(v0 + 552));
          goto LABEL_59;
        }

        v134 = v133;
        v135 = [v133 content];

        v136 = [v135 fileURL];
        if (v136)
        {
          sub_21CE6B9F0();

          v137 = 0;
        }

        else
        {
          v137 = 1;
        }

        v139 = *(v0 + 656);
        v140 = *(v0 + 648);
        v141 = *(v0 + 560);
        v142 = *(v0 + 552);
        v138 = *(v141 + 56);
        v138(v140, v137, 1, v142);
        sub_21CE53750(v140, v139);
        if ((*(v141 + 48))(v139, 1, v142) == 1)
        {
LABEL_59:
          *(v0 + 864) = v138;
          sub_21CDE5494(*(v0 + 656), &unk_27CE40310, &qword_21CE71470);
          v143 = [v124 exportedContent];
          if (!v143)
          {
            goto LABEL_76;
          }

          v144 = v143;
          v145 = [v143 content];

          v146 = [v145 data];
          v147 = sub_21CE6BA90();
          v149 = v148;

          v150 = v149 >> 62;
          if ((v149 >> 62) > 1)
          {
            if (v150 != 2)
            {
              sub_21CDF32E8(v147, v149);
              goto LABEL_76;
            }

            v155 = *(v147 + 16);
            v156 = *(v147 + 24);
            sub_21CDF32E8(v147, v149);
          }

          else
          {
            if (!v150)
            {
              sub_21CDF32E8(v147, v149);
              if ((v149 & 0xFF000000000000) == 0)
              {
LABEL_76:
                v173 = *(v0 + 776);
                v174 = *(v0 + 632);
                *(v0 + 80) = v0;
                *(v0 + 120) = v174;
                *(v0 + 88) = sub_21CE5098C;
                v175 = swift_continuation_init();
                *(v0 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40D18, &qword_21CE735C8);
                *(v0 + 208) = MEMORY[0x277D85DD0];
                *(v0 + 216) = 1107296256;
                *(v0 + 224) = sub_21CE4E508;
                *(v0 + 232) = &block_descriptor_11;
                *(v0 + 240) = v175;
                [v173 fetchEntityURL:v132 completionHandler:v0 + 208];

                return MEMORY[0x282200938](v0 + 80);
              }

LABEL_69:
              v157 = [v124 exportedContent];
              if (!v157)
              {
                goto LABEL_76;
              }

              v158 = v157;
              v159 = *(v0 + 640);
              v160 = *(v0 + 552);
              v161 = [v157 content];

              v162 = [v161 data];
              v163 = sub_21CE6BA90();
              v165 = v164;

              v181 = v138;
              v138(v159, 1, 1, v160);
              sub_21CE6B9A0();
              sub_21CDF32E8(v163, v165);
              sub_21CDE5494(v159, &unk_27CE40310, &qword_21CE71470);
LABEL_71:
              v11 = &unk_281213000;
              goto LABEL_5;
            }

            sub_21CDF32E8(v147, v149);
            v155 = v147;
            v156 = v147 >> 32;
          }

          if (v155 == v156)
          {
            goto LABEL_76;
          }

          goto LABEL_69;
        }

        v151 = *(v0 + 664);
        v152 = *(v0 + 592);
        v153 = *(v0 + 552);
        v154 = *(*(v0 + 560) + 32);
        v154(v152, *(v0 + 656), v153);
        v154(v151, v152, v153);
        v181 = v138;
        v138(v151, 0, 1, v153);
        goto LABEL_71;
      }
    }

    else
    {
    }
  }

  v166 = *(v0 + 792);
  v167 = *(v0 + 776);
  v168 = *(v0 + 768);
  v169 = *(v0 + 760);
  v170 = *(v0 + 752);

  v171 = *(v0 + 8);

  return v171(v40);
}

uint64_t sub_21CE51DD0()
{
  v29 = v0;
  v28[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 776);
  swift_willThrow();

  v2 = *(v0 + 784);
  *(v0 + 480) = v2;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE406C0, &qword_21CE70E30);
  sub_21CDE40C8(0, &unk_2812119D0, 0x277CCA9B8);
  if (swift_dynamicCast())
  {

    v4 = *(v0 + 488);
    if (qword_281213298 != -1)
    {
      swift_once();
    }

    v5 = sub_21CE6BDA0();
    __swift_project_value_buffer(v5, qword_2812165F0);
    v6 = v4;
    v7 = sub_21CE6BD80();
    v8 = sub_21CE6CF20();

    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 768);
    v11 = *(v0 + 760);
    v12 = *(v0 + 752);
    if (v9)
    {
      v27 = *(v0 + 752);
      v13 = swift_slowAlloc();
      v26 = v10;
      v14 = swift_slowAlloc();
      v28[0] = v14;
      *v13 = 136315138;
      v15 = [v6 localizedDescription];
      v16 = sub_21CE6CC50();
      v18 = v17;

      v19 = sub_21CDF2CC8(v16, v18, v28);

      *(v13 + 4) = v19;
      _os_log_impl(&dword_21CDE1000, v7, v8, "Error performing entity query %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x21CF1BD50](v14, -1, -1);
      MEMORY[0x21CF1BD50](v13, -1, -1);
    }

    else
    {
    }

    v24 = *(v0 + 8);
    v25 = MEMORY[0x277D84F90];

    return v24(v25);
  }

  else
  {
    v20 = *(v0 + 768);
    v21 = *(v0 + 752);

    v22 = *(v0 + 8);

    return v22();
  }
}

uint64_t sub_21CE522B8()
{
  v198 = v0;
  v197[1] = *MEMORY[0x277D85DE8];
  swift_willThrow();
  v1 = &unk_281213000;
  if (qword_281213298 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 872);
  v3 = *(v0 + 856);
  v196 = sub_21CE6BDA0();
  __swift_project_value_buffer(v196, qword_2812165F0);
  v4 = v3;
  v5 = v2;
  v6 = sub_21CE6BD80();
  v7 = sub_21CE6CF20();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 872);
  v10 = *(v0 + 856);
  v11 = *(v0 + 848);
  v12 = *(v0 + 840);
  v13 = *(v0 + 832);
  if (v8)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412546;
    v16 = [v10 identifier];
    *(v14 + 4) = v16;
    *v15 = v16;
    *(v14 + 12) = 2112;
    v17 = v9;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v18;
    v15[1] = v18;
    _os_log_impl(&dword_21CDE1000, v6, v7, "LNEntity<%@> url fetch error: %@", v14, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40D20, &qword_21CE70EA0);
    swift_arrayDestroy();
    MEMORY[0x21CF1BD50](v15, -1, -1);
    v19 = v14;
    v1 = &unk_281213000;
    MEMORY[0x21CF1BD50](v19, -1, -1);
  }

  else
  {
  }

  v20 = *(v0 + 824);
  v21 = *(v0 + 816) + 1;
  if (v21 == *(v0 + 808))
  {
LABEL_7:
    v22 = *(v0 + 792);
    v23 = *(v0 + 776);
    v24 = *(v0 + 768);
    v25 = *(v0 + 760);
    v26 = *(v0 + 752);

    v27 = *(v0 + 8);

    return v27(v20);
  }

  v29 = &off_278323000;
  while (1)
  {
    *(v0 + 824) = v20;
    *(v0 + 816) = v21;
    v30 = *(v0 + 800);
    v31 = (v30 & 0xC000000000000001) != 0 ? MEMORY[0x21CF1B2A0]() : *(v30 + 8 * v21 + 32);
    v32 = v31;
    *(v0 + 832) = v31;
    v33 = [v31 v29[491]];
    *(v0 + 840) = v33;
    if (v33)
    {
      break;
    }

LABEL_12:
    v21 = *(v0 + 816) + 1;
    if (v21 == *(v0 + 808))
    {
      goto LABEL_7;
    }
  }

  v34 = v33;
  v35 = *(v0 + 544);
  sub_21CDE40C8(0, &qword_281211A20, 0x277CC34B8);
  v36 = v34;
  v37 = sub_21CE4BFC0(v36);
  *(v0 + 848) = v37;
  v38 = [v35 identifier];
  if (!v38)
  {
    sub_21CE6CC50();
    v38 = sub_21CE6CC20();
  }

  [v37 setIdentifier_];

  v39 = [v32 value];
  sub_21CE6D190();
  swift_unknownObjectRelease();
  sub_21CDE40C8(0, &qword_2812119C0, 0x277D237F0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_12;
  }

  log = *(v0 + 512);
  *(v0 + 856) = log;
  v40 = [v32 exportedContent];
  if (!v40)
  {
    v44 = v1;
    v46 = *(*(v0 + 560) + 56);
    v46(*(v0 + 656), 1, 1, *(v0 + 552));
    goto LABEL_27;
  }

  v41 = v40;
  v42 = [v40 content];

  v43 = [v42 fileURL];
  v44 = v1;
  if (v43)
  {
    sub_21CE6B9F0();

    v45 = 0;
  }

  else
  {
    v45 = 1;
  }

  v47 = *(v0 + 656);
  v48 = *(v0 + 648);
  v49 = *(v0 + 560);
  v50 = *(v0 + 552);
  v46 = *(v49 + 56);
  v46(v48, v45, 1, v50);
  sub_21CE53750(v48, v47);
  if ((*(v49 + 48))(v47, 1, v50) != 1)
  {
    v59 = *(v0 + 664);
    v60 = *(v0 + 592);
    v61 = *(v0 + 552);
    v62 = *(*(v0 + 560) + 32);
    v62(v60, *(v0 + 656), v61);
    v62(v59, v60, v61);
    v46(v59, 0, 1, v61);
    v63 = v46;
    v1 = v44;
    v64 = v63;
    goto LABEL_39;
  }

LABEL_27:
  v193 = v46;
  *(v0 + 864) = v46;
  sub_21CDE5494(*(v0 + 656), &unk_27CE40310, &qword_21CE71470);
  v51 = [v32 exportedContent];
  if (!v51)
  {
    goto LABEL_78;
  }

  v52 = v51;
  v1 = v44;
  v53 = [v51 content];

  v54 = [v53 data];
  v55 = sub_21CE6BA90();
  v57 = v56;

  v58 = v57 >> 62;
  if ((v57 >> 62) <= 1)
  {
    if (!v58)
    {
      sub_21CDF32E8(v55, v57);
      if ((v57 & 0xFF000000000000) == 0)
      {
        goto LABEL_78;
      }

      goto LABEL_37;
    }

    sub_21CDF32E8(v55, v57);
    v65 = v55;
    v66 = v55 >> 32;
LABEL_36:
    if (v65 == v66)
    {
      goto LABEL_78;
    }

LABEL_37:
    v67 = [v32 exportedContent];
    if (!v67)
    {
      goto LABEL_78;
    }

    v68 = v67;
    v69 = *(v0 + 640);
    v70 = *(v0 + 552);
    v71 = [v67 content];

    v72 = [v71 data];
    v73 = sub_21CE6BA90();
    v75 = v74;

    v193(v69, 1, 1, v70);
    v64 = v193;
    sub_21CE6B9A0();
    sub_21CDF32E8(v73, v75);
    sub_21CDE5494(v69, &unk_27CE40310, &qword_21CE71470);
LABEL_39:
    v76 = *(v0 + 672);
    v77 = *(v0 + 616);
    v78 = *(v0 + 560);
    v79 = *(v0 + 552);
    sub_21CE53750(*(v0 + 664), v76);
    sub_21CE0D9E4(v76, v77);
    v80 = *(v78 + 48);
    if (v80(v77, 1, v79) == 1)
    {
      sub_21CDE5494(*(v0 + 616), &unk_27CE40310, &qword_21CE71470);
      if (v1[83] != -1)
      {
        swift_once();
      }

      v81 = *(v0 + 544);
      __swift_project_value_buffer(v196, qword_2812165F0);
      v82 = v81;
      v83 = sub_21CE6BD80();
      v84 = sub_21CE6CF20();

      v85 = os_log_type_enabled(v83, v84);
      v86 = *(v0 + 856);
      v87 = *(v0 + 848);
      v88 = *(v0 + 840);
      v89 = *(v0 + 672);
      if (v85)
      {
        v194 = *(v0 + 672);
        v90 = *(v0 + 544);
        v188 = *(v0 + 832);
        v91 = swift_slowAlloc();
        logb = v86;
        v92 = swift_slowAlloc();
        v197[0] = v92;
        *v91 = 136315138;
        v93 = [v90 description];
        v185 = v87;
        v186 = v88;
        v94 = sub_21CE6CC50();
        v96 = v95;

        v97 = sub_21CDF2CC8(v94, v96, v197);

        *(v91 + 4) = v97;
        _os_log_impl(&dword_21CDE1000, v83, v84, "Unable to export or fetch entity URL for %s", v91, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v92);
        MEMORY[0x21CF1BD50](v92, -1, -1);
        MEMORY[0x21CF1BD50](v91, -1, -1);

        v98 = v194;
      }

      else
      {

        v98 = v89;
      }

      sub_21CDE5494(v98, &unk_27CE40310, &qword_21CE71470);
      v20 = *(v0 + 824);
      v29 = &off_278323000;
    }

    else
    {
      v99 = *(v0 + 848);
      (*(*(v0 + 560) + 32))(*(v0 + 576), *(v0 + 616), *(v0 + 552));
      v100 = sub_21CE6B9B0();
      [v99 setURL_];

      if (URL.relatedAppBundleIdentifier()().value._object)
      {
        v101 = sub_21CE6CC20();
      }

      else
      {
        v101 = 0;
      }

      v102 = MEMORY[0x277D837D0];
      v103 = *(v0 + 848);
      [v103 setRelatedAppBundleIdentifier_];

      v104 = sub_21CE4BBC4();
      [v103 setRankingHint_];

      if (v1[83] != -1)
      {
        swift_once();
      }

      v105 = *(v0 + 848);
      __swift_project_value_buffer(v196, qword_2812165F0);
      v106 = v105;
      v107 = sub_21CE6BD80();
      v108 = sub_21CE6CF00();

      if (os_log_type_enabled(v107, v108))
      {
        v189 = v108;
        v195 = v80;
        v109 = *(v0 + 848);
        v110 = swift_slowAlloc();
        v187 = swift_slowAlloc();
        *(v0 + 520) = v187;
        *v110 = 141559811;
        *(v110 + 4) = 1752392040;
        *(v110 + 12) = 2081;
        v111 = [v109 title];
        loga = v107;
        if (v111)
        {
          v112 = v111;
          v113 = sub_21CE6CC50();
          v115 = v114;
        }

        else
        {
          v115 = 0xE200000000000000;
          v113 = 10023;
        }

        v116 = *(v0 + 848);
        v117 = sub_21CDF2CC8(v113, v115, (v0 + 520));

        *(v110 + 14) = v117;
        *(v110 + 22) = 2160;
        *(v110 + 24) = 1752392040;
        *(v110 + 32) = 2081;
        v118 = [v116 subtitle];
        if (v118)
        {
          v119 = v118;
          v120 = sub_21CE6CC50();
          v122 = v121;
        }

        else
        {
          v122 = 0xE200000000000000;
          v120 = 10023;
        }

        v123 = *(v0 + 848);
        v124 = sub_21CDF2CC8(v120, v122, (v0 + 520));

        *(v110 + 34) = v124;
        *(v110 + 42) = 2160;
        *(v110 + 44) = 1752392040;
        *(v110 + 52) = 2081;
        v125 = [v123 keywords];
        if (v125)
        {
          v126 = v125;
          v127 = sub_21CE6CD40();
        }

        else
        {
          v127 = MEMORY[0x277D84F90];
        }

        v128 = *(v0 + 848);
        v129 = MEMORY[0x21CF1AD30](v127, v102);
        v131 = v130;

        v132 = sub_21CDF2CC8(v129, v131, (v0 + 520));

        *(v110 + 54) = v132;
        *(v110 + 62) = 2160;
        *(v110 + 64) = 1752392040;
        *(v110 + 72) = 2081;
        v133 = [v128 URL];
        if (v133)
        {
          v134 = v133;
          sub_21CE6B9F0();

          v135 = 0;
        }

        else
        {
          v135 = 1;
        }

        v136 = *(v0 + 608);
        v137 = *(v0 + 600);
        v138 = *(v0 + 552);
        v64(v137, v135, 1, v138);
        sub_21CE53750(v137, v136);
        v139 = v195(v136, 1, v138);
        v140 = *(v0 + 608);
        if (v139)
        {
          sub_21CDE5494(*(v0 + 608), &unk_27CE40310, &qword_21CE71470);
          v141 = 0xE200000000000000;
          v142 = 10023;
        }

        else
        {
          v143 = *(v0 + 568);
          v144 = *(v0 + 560);
          v145 = *(v0 + 552);
          (*(v144 + 16))(v143, *(v0 + 608), v145);
          sub_21CDE5494(v140, &unk_27CE40310, &qword_21CE71470);
          v146 = sub_21CE6B980();
          v141 = v147;
          (*(v144 + 8))(v143, v145);
          v142 = v146;
        }

        v148 = sub_21CDF2CC8(v142, v141, (v0 + 520));

        *(v110 + 74) = v148;
        _os_log_impl(&dword_21CDE1000, loga, v189, "LNEntityMetadata: CSSearchableItem title: %{private,mask.hash}s, subtitle:%{private,mask.hash}s, keywords:%{private,mask.hash}s, url:%{private,mask.hash}s", v110, 0x52u);
        swift_arrayDestroy();
        MEMORY[0x21CF1BD50](v187, -1, -1);
        MEMORY[0x21CF1BD50](v110, -1, -1);
      }

      else
      {
      }

      v149 = *(v0 + 544);
      v150 = *(v0 + 536);
      *(v0 + 400) = *(v0 + 528);
      *(v0 + 408) = v150;

      v151 = [v149 mangledTypeNameByBundleIdentifier];
      v152 = sub_21CE6CB60();

      v153 = sub_21CE4B3D4(v152);
      v155 = v154;

      if (v155)
      {

        *(v0 + 416) = v153;
        *(v0 + 424) = v155;
        *(v0 + 432) = 0x6C7070612E6D6F63;
        *(v0 + 440) = 0xEA00000000002E65;
        sub_21CE537C0();
        sub_21CE6CED0();

        v156 = *(v0 + 352);
        v157 = *(v0 + 360);
        *(v0 + 448) = 46;
        *(v0 + 456) = 0xE100000000000000;
        *(v0 + 368) = *(v0 + 336);
        *(v0 + 384) = v156;
        *(v0 + 392) = v157;
        sub_21CE53814();
        sub_21CE6CCC0();

        MEMORY[0x21CF1ACB0](*(v0 + 448), *(v0 + 456));
      }

      else
      {
        v158 = *(v0 + 544);
        v159 = sub_21CE6BD80();
        v160 = sub_21CE6CF10();

        if (os_log_type_enabled(v159, v160))
        {
          v161 = *(v0 + 544);
          v162 = swift_slowAlloc();
          v163 = swift_slowAlloc();
          v197[0] = v163;
          *v162 = 136315138;
          v164 = [v161 description];
          v165 = sub_21CE6CC50();
          v167 = v166;

          v168 = sub_21CDF2CC8(v165, v167, v197);

          *(v162 + 4) = v168;
          _os_log_impl(&dword_21CDE1000, v159, v160, "Unknown bundle domain for %s", v162, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v163);
          MEMORY[0x21CF1BD50](v163, -1, -1);
          MEMORY[0x21CF1BD50](v162, -1, -1);
        }
      }

      v169 = *(v0 + 848);
      sub_21CE6B980();
      v170 = objc_allocWithZone(MEMORY[0x277CC34B0]);
      v171 = v169;
      v172 = sub_21CE6CC20();

      v173 = sub_21CE6CC20();

      [v170 initWithUniqueIdentifier:v172 domainIdentifier:v173 attributeSet:v171];

      MEMORY[0x21CF1AD00]();
      if (*((*(v0 + 464) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 464) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21CE6CD60();
      }

      v174 = *(v0 + 856);
      v175 = *(v0 + 848);
      v176 = *(v0 + 840);
      v177 = *(v0 + 832);
      v178 = *(v0 + 672);
      v179 = *(v0 + 576);
      v180 = *(v0 + 560);
      v181 = *(v0 + 552);
      sub_21CE6CD80();

      (*(v180 + 8))(v179, v181);
      sub_21CDE5494(v178, &unk_27CE40310, &qword_21CE71470);
      v20 = *(v0 + 464);
      v1 = &unk_281213000;
      v29 = &off_278323000;
    }

    goto LABEL_12;
  }

  if (v58 == 2)
  {
    v65 = *(v55 + 16);
    v66 = *(v55 + 24);
    sub_21CDF32E8(v55, v57);
    goto LABEL_36;
  }

  sub_21CDF32E8(v55, v57);
LABEL_78:
  v182 = *(v0 + 776);
  v183 = *(v0 + 632);
  *(v0 + 80) = v0;
  *(v0 + 120) = v183;
  *(v0 + 88) = sub_21CE5098C;
  v184 = swift_continuation_init();
  *(v0 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40D18, &qword_21CE735C8);
  *(v0 + 208) = MEMORY[0x277D85DD0];
  *(v0 + 216) = 1107296256;
  *(v0 + 224) = sub_21CE4E508;
  *(v0 + 232) = &block_descriptor_11;
  *(v0 + 240) = v184;
  [v182 fetchEntityURL:log completionHandler:v0 + 208];

  return MEMORY[0x282200938](v0 + 80);
}

void *sub_21CE536B4(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 16 * a2);
    v6 = (*(a5 + 56) + 16 * a2);
    v7 = v6[1];
    *result = *v6;
    result[1] = v7;

    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_21CE53750(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40310, &qword_21CE71470);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21CE537C0()
{
  result = qword_281211AE8[0];
  if (!qword_281211AE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281211AE8);
  }

  return result;
}

unint64_t sub_21CE53814()
{
  result = qword_281211AE0;
  if (!qword_281211AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281211AE0);
  }

  return result;
}

unint64_t sub_21CE53868()
{
  result = qword_281211A00;
  if (!qword_281211A00)
  {
    type metadata accessor for LNSystemEntityProtocolIdentifier(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281211A00);
  }

  return result;
}

uint64_t type metadata accessor for LeadingAlignedSettingsFeatureDescriptionView(uint64_t a1)
{
  result = qword_27CE40D40;
  if (!qword_27CE40D40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21CE53944(uint64_t a1)
{
  sub_21CE3B428(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

double sub_21CE539D4@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_21CE6C3E0();
  v4 = sub_21CE53C6C();
  v32 = 0;
  sub_21CE54090(v1, &v18);
  v44 = v28;
  v45 = v29;
  v40 = v24;
  v41 = v25;
  v42 = v26;
  v43 = v27;
  v36 = v20;
  v37 = v21;
  v38 = v22;
  v39 = v23;
  v34 = v18;
  v35 = v19;
  v47[10] = v28;
  v47[11] = v29;
  v47[6] = v24;
  v47[7] = v25;
  v47[9] = v27;
  v47[8] = v26;
  v47[1] = v19;
  v47[2] = v20;
  v47[3] = v21;
  v47[5] = v23;
  v47[4] = v22;
  v46 = v30;
  v48 = v30;
  v47[0] = v18;
  sub_21CDFAA5C(&v34, v17, &qword_27CE40D50, &qword_21CE73698);
  sub_21CDE5494(v47, &qword_27CE40D50, &qword_21CE73698);
  *&v31[151] = v43;
  *&v31[167] = v44;
  *&v31[183] = v45;
  *&v31[87] = v39;
  *&v31[103] = v40;
  *&v31[119] = v41;
  *&v31[135] = v42;
  *&v31[23] = v35;
  *&v31[39] = v36;
  *&v31[55] = v37;
  *&v31[71] = v38;
  *&v31[199] = v46;
  *&v31[7] = v34;
  v5 = v32;
  KeyPath = swift_getKeyPath();
  sub_21CE6CAE0();
  sub_21CE6C0E0();
  *&v33[55] = v21;
  *&v33[71] = v22;
  *&v33[87] = v23;
  *&v33[103] = v24;
  *&v33[7] = v18;
  *&v33[23] = v19;
  *&v33[39] = v20;
  *(a1 + 8) = v4;
  v7 = *&v31[128];
  *(a1 + 161) = *&v31[144];
  v8 = *&v31[176];
  *(a1 + 177) = *&v31[160];
  *(a1 + 193) = v8;
  *(a1 + 208) = *&v31[191];
  v9 = *&v31[64];
  *(a1 + 97) = *&v31[80];
  v10 = *&v31[112];
  *(a1 + 113) = *&v31[96];
  *(a1 + 129) = v10;
  *(a1 + 145) = v7;
  v11 = *v31;
  *(a1 + 33) = *&v31[16];
  v12 = *&v31[48];
  *(a1 + 49) = *&v31[32];
  *(a1 + 65) = v12;
  *a1 = v3;
  *(a1 + 16) = v5;
  *(a1 + 81) = v9;
  *(a1 + 17) = v11;
  *(a1 + 224) = KeyPath;
  *(a1 + 232) = 0;
  v13 = *&v33[80];
  *(a1 + 297) = *&v33[64];
  *(a1 + 313) = v13;
  *(a1 + 329) = *&v33[96];
  *(a1 + 344) = *&v33[111];
  v14 = *&v33[16];
  *(a1 + 233) = *v33;
  *(a1 + 249) = v14;
  result = *&v33[32];
  v16 = *&v33[48];
  *(a1 + 265) = *&v33[32];
  *(a1 + 281) = v16;
  return result;
}

double sub_21CE53C6C()
{
  v0 = sub_21CE6C4A0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v24 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40C58, &qword_21CE73390);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40C28, &qword_21CE73360);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v23 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v23 - v14;
  sub_21CE58778(&v23 - v14);
  (*(v1 + 104))(v13, *MEMORY[0x277CE0560], v0);
  (*(v1 + 56))(v13, 0, 1, v0);
  v16 = *(v4 + 56);
  sub_21CDFAA5C(v15, v6, &qword_27CE40C28, &qword_21CE73360);
  sub_21CDFAA5C(v13, &v6[v16], &qword_27CE40C28, &qword_21CE73360);
  v17 = *(v1 + 48);
  if (v17(v6, 1, v0) == 1)
  {
    sub_21CDE5494(v13, &qword_27CE40C28, &qword_21CE73360);
    sub_21CDE5494(v15, &qword_27CE40C28, &qword_21CE73360);
    if (v17(&v6[v16], 1, v0) == 1)
    {
      sub_21CDE5494(v6, &qword_27CE40C28, &qword_21CE73360);
      return 20.0;
    }

    goto LABEL_6;
  }

  sub_21CDFAA5C(v6, v10, &qword_27CE40C28, &qword_21CE73360);
  if (v17(&v6[v16], 1, v0) == 1)
  {
    sub_21CDE5494(v13, &qword_27CE40C28, &qword_21CE73360);
    sub_21CDE5494(v15, &qword_27CE40C28, &qword_21CE73360);
    (*(v1 + 8))(v10, v0);
LABEL_6:
    sub_21CDE5494(v6, &qword_27CE40C58, &qword_21CE73390);
    return 15.0;
  }

  v19 = &v6[v16];
  v20 = v24;
  (*(v1 + 32))(v24, v19, v0);
  sub_21CE54A68();
  v21 = sub_21CE6CBA0();
  v22 = *(v1 + 8);
  v22(v20, v0);
  sub_21CDE5494(v13, &qword_27CE40C28, &qword_21CE73360);
  sub_21CDE5494(v15, &qword_27CE40C28, &qword_21CE73360);
  v22(v10, v0);
  sub_21CDE5494(v6, &qword_27CE40C28, &qword_21CE73360);
  result = 15.0;
  if (v21)
  {
    return 20.0;
  }

  return result;
}

uint64_t sub_21CE54090@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1 + *(type metadata accessor for LeadingAlignedSettingsFeatureDescriptionView(0) + 20);
  v5 = *(v4 + 64);
  v6 = *(v4 + 72);
  v7 = *(v4 + 80);
  KeyPath = swift_getKeyPath();
  v22 = swift_getKeyPath();
  sub_21CDEFF74(v5, v6);
  v8 = sub_21CE6C3E0();
  v9 = sub_21CE543BC();
  v24[0] = 0;
  sub_21CE547E0(a1, &v42);
  v34 = *&v43[48];
  v35 = *&v43[64];
  v36 = *&v43[80];
  v37 = *&v43[96];
  v30 = v42;
  v31 = *v43;
  v32 = *&v43[16];
  v33 = *&v43[32];
  v38[0] = v42;
  v38[1] = *v43;
  v38[2] = *&v43[16];
  v38[3] = *&v43[32];
  v38[4] = *&v43[48];
  v38[5] = *&v43[64];
  v38[6] = *&v43[80];
  v39 = *&v43[96];
  sub_21CDFAA5C(&v30, &v40, &qword_27CE40D58, &qword_21CE73728);
  sub_21CDE5494(v38, &qword_27CE40D58, &qword_21CE73728);
  *&v29[71] = v34;
  *&v29[87] = v35;
  *&v29[103] = v36;
  *&v29[119] = v37;
  *&v29[7] = v30;
  *&v29[23] = v31;
  *&v29[39] = v32;
  *&v29[55] = v33;
  *&v40 = v8;
  *(&v40 + 1) = v9;
  v41[0] = 0;
  *&v41[1] = *v29;
  v10 = *v29;
  v11 = *&v29[16];
  *&v41[17] = *&v29[16];
  v12 = *&v29[48];
  *&v41[33] = *&v29[32];
  *&v41[112] = *&v29[111];
  *&v41[97] = *&v29[96];
  v14 = *&v29[80];
  v13 = *&v29[96];
  *&v41[81] = *&v29[80];
  v15 = *&v29[64];
  *&v41[65] = *&v29[64];
  v16 = *&v29[32];
  *&v41[49] = *&v29[48];
  *&v25[23] = *v41;
  *&v25[103] = *&v41[80];
  *&v25[87] = *&v41[64];
  *&v25[39] = *&v41[16];
  *&v25[119] = *&v41[96];
  *&v25[135] = *&v41[112];
  *&v25[55] = *&v41[32];
  *&v25[71] = *&v41[48];
  *&v25[7] = v40;
  v17 = *&v25[112];
  *(a2 + 145) = *&v25[96];
  *(a2 + 161) = v17;
  *(a2 + 177) = *&v25[128];
  v18 = *&v25[48];
  *(a2 + 81) = *&v25[32];
  *(a2 + 97) = v18;
  v19 = *&v25[80];
  *(a2 + 113) = *&v25[64];
  *(a2 + 129) = v19;
  v20 = *&v25[16];
  *(a2 + 49) = *v25;
  *(a2 + 65) = v20;
  *(&v42 + 1) = v9;
  *&v43[65] = v15;
  *&v43[81] = v14;
  *&v43[97] = v13;
  *&v43[112] = *&v29[111];
  *&v43[1] = v10;
  *&v43[17] = v11;
  v28 = 0;
  v27 = 0;
  v26 = v7;
  *a2 = KeyPath;
  *(a2 + 8) = 0;
  *(a2 + 16) = v22;
  *(a2 + 24) = 0;
  *(a2 + 32) = v5;
  *(a2 + 40) = v6;
  *(a2 + 48) = v7;
  *(a2 + 192) = *&v25[143];
  *&v42 = v8;
  v43[0] = 0;
  *&v43[33] = v16;
  *&v43[49] = v12;
  sub_21CDEC9F0(KeyPath, 0);
  sub_21CDEC9F0(v22, 0);
  sub_21CDEFF74(v5, v6);
  sub_21CDFAA5C(&v40, v24, &qword_27CE40D60, &unk_21CE73730);
  sub_21CDE5494(&v42, &qword_27CE40D60, &unk_21CE73730);
  sub_21CDEC9FC(KeyPath, 0);
  sub_21CDEC9FC(v22, 0);
  return sub_21CDEFF7C(v5, v6);
}

double sub_21CE543BC()
{
  v0 = sub_21CE6C4A0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v24 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40C58, &qword_21CE73390);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40C28, &qword_21CE73360);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v23 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v23 - v14;
  sub_21CE58778(&v23 - v14);
  (*(v1 + 104))(v13, *MEMORY[0x277CE0560], v0);
  (*(v1 + 56))(v13, 0, 1, v0);
  v16 = *(v4 + 56);
  sub_21CDFAA5C(v15, v6, &qword_27CE40C28, &qword_21CE73360);
  sub_21CDFAA5C(v13, &v6[v16], &qword_27CE40C28, &qword_21CE73360);
  v17 = *(v1 + 48);
  if (v17(v6, 1, v0) == 1)
  {
    sub_21CDE5494(v13, &qword_27CE40C28, &qword_21CE73360);
    sub_21CDE5494(v15, &qword_27CE40C28, &qword_21CE73360);
    if (v17(&v6[v16], 1, v0) == 1)
    {
      sub_21CDE5494(v6, &qword_27CE40C28, &qword_21CE73360);
      return 8.0;
    }

    goto LABEL_6;
  }

  sub_21CDFAA5C(v6, v10, &qword_27CE40C28, &qword_21CE73360);
  if (v17(&v6[v16], 1, v0) == 1)
  {
    sub_21CDE5494(v13, &qword_27CE40C28, &qword_21CE73360);
    sub_21CDE5494(v15, &qword_27CE40C28, &qword_21CE73360);
    (*(v1 + 8))(v10, v0);
LABEL_6:
    sub_21CDE5494(v6, &qword_27CE40C58, &qword_21CE73390);
    return 4.0;
  }

  v19 = &v6[v16];
  v20 = v24;
  (*(v1 + 32))(v24, v19, v0);
  sub_21CE54A68();
  v21 = sub_21CE6CBA0();
  v22 = *(v1 + 8);
  v22(v20, v0);
  sub_21CDE5494(v13, &qword_27CE40C28, &qword_21CE73360);
  sub_21CDE5494(v15, &qword_27CE40C28, &qword_21CE73360);
  v22(v10, v0);
  sub_21CDE5494(v6, &qword_27CE40C28, &qword_21CE73360);
  result = 4.0;
  if (v21)
  {
    return 8.0;
  }

  return result;
}

uint64_t sub_21CE547E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for LeadingAlignedSettingsFeatureDescriptionView(0) + 20);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 24);
  v20 = *(v3 + 16);
  *&v21 = v4;
  *(&v21 + 1) = v5;
  LOBYTE(v22) = v20;
  v23 = 0uLL;
  *(&v22 + 1) = v6;
  sub_21CE037E4(v4, v5, v20);

  sub_21CE037E4(v4, v5, v20);

  sub_21CE6C9B0();
  v18 = *(&v27 + 1);
  v19 = v27;
  v7 = v28;
  v8 = v30;
  v16 = v31;
  v17 = v29;
  LOBYTE(v21) = v28;
  v9 = *(v3 + 32);
  v10 = *(v3 + 40);
  v11 = *(v3 + 48);
  v12 = *(v3 + 56);
  v21 = v27;
  LOBYTE(v22) = v28;
  *(&v22 + 1) = v29;
  v23 = v30;
  *&v24 = v31;
  *(&v24 + 1) = v4;
  *&v25 = v5;
  BYTE8(v25) = v20;
  v26 = v6;
  v13 = v22;
  *a2 = v27;
  *(a2 + 16) = v13;
  v14 = v24;
  *(a2 + 32) = v23;
  *(a2 + 48) = v14;
  *(a2 + 64) = v25;
  *(a2 + 80) = v6;
  *(a2 + 88) = v9;
  *(a2 + 96) = v10;
  *(a2 + 104) = v11;
  *(a2 + 112) = v12;
  sub_21CE037E4(v9, v10, v11);

  sub_21CE549B8(&v21, &v27);
  sub_21CE037E4(v9, v10, v11);

  sub_21CE037F4(v9, v10, v11);

  *&v27 = v19;
  *(&v27 + 1) = v18;
  v28 = v7;
  v29 = v17;
  v30 = v8;
  v31 = v16;
  v32 = v4;
  v33 = v5;
  v34 = v20;
  v35 = v6;
  return sub_21CE54A14(&v27);
}

unint64_t sub_21CE54A68()
{
  result = qword_2812131C0;
  if (!qword_2812131C0)
  {
    sub_21CE6C4A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812131C0);
  }

  return result;
}

unint64_t sub_21CE54AC0()
{
  result = qword_27CE40D68;
  if (!qword_27CE40D68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE40D70, &qword_21CE73740);
    sub_21CE54B4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE40D68);
  }

  return result;
}

unint64_t sub_21CE54B4C()
{
  result = qword_27CE40D78;
  if (!qword_27CE40D78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE40D80, &qword_21CE73748);
    sub_21CDE4158(&qword_27CE40D88, &qword_27CE40D90, qword_21CE73750, MEMORY[0x277CE1198]);
    sub_21CDE4158(&qword_2812131A8, &qword_27CE40058, &qword_21CE70E60, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE40D78);
  }

  return result;
}

uint64_t sub_21CE54C50()
{
  sub_21CE54E08();
  sub_21CE6C2B0();
  return v1;
}

uint64_t sub_21CE54CC0(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 3);
  v5 = *(a1 + 48);
  v6 = *(a1 + 7);
  v7 = *(a3 + 24);
  v8 = *(a1 + 80);
  v10 = *a1;
  v11 = v3;
  v12 = v4;
  v13 = a1[2];
  v14 = v5;
  v15 = v6;
  v16 = a1[4];
  v17 = v8;
  return v7(&v10, a2);
}