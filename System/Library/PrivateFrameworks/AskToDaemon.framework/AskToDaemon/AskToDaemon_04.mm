uint64_t sub_241157CB4()
{
  if (qword_27E5305C8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 200);
  v2 = sub_241165288();
  __swift_project_value_buffer(v2, qword_27E533AC8);
  v3 = v1;
  v4 = sub_241165268();
  v5 = sub_241166048();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 200);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_2410F8000, v4, v5, "Failed to get the new Messages payload from the extension. error: %@", v7, 0xCu);
    sub_2410FB29C(v8, &qword_27E530E30, &qword_2411676F0);
    MEMORY[0x245CDC5E0](v8, -1, -1);
    MEMORY[0x245CDC5E0](v7, -1, -1);
  }

  swift_willThrow();

  v11 = *(v0 + 8);

  return v11();
}

unint64_t sub_241157E5C()
{
  result = qword_27E5312C8;
  if (!qword_27E5312C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5312C8);
  }

  return result;
}

unint64_t sub_241157EC8()
{
  result = qword_27E5312D0;
  if (!qword_27E5312D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5312D0);
  }

  return result;
}

unint64_t sub_241157F1C()
{
  result = qword_27E5312D8;
  if (!qword_27E5312D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5312D8);
  }

  return result;
}

unint64_t sub_241157F70()
{
  result = qword_27E5312E0;
  if (!qword_27E5312E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5312E0);
  }

  return result;
}

id sub_241157FC8(int a1, uint64_t a2, uint64_t a3)
{
  v23 = a1;
  v22 = sub_2411660A8();
  MEMORY[0x28223BE20](v22);
  v5 = sub_241165618();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_2411660B8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v10(a2, a3);
  v21 = sub_241158370();
  v10(a2, a3);
  (*(v7 + 104))(v9, *MEMORY[0x277D85268], v6);
  sub_2411655F8();
  v24 = MEMORY[0x277D84F90];
  sub_24114CD08();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5310E0, &qword_241169588);
  sub_24114CD60();
  sub_2411661B8();
  v11 = sub_2411660D8();
  if (qword_27E5305B0 != -1)
  {
    swift_once();
  }

  v12 = sub_241165288();
  __swift_project_value_buffer(v12, qword_27E533A80);
  v13 = sub_241165268();
  v14 = sub_241166068();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v24 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_241156B38(0xD000000000000022, 0x800000024116C980, &v24);
    _os_log_impl(&dword_2410F8000, v13, v14, "Creating listening scheduler for %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x245CDC5E0](v16, -1, -1);
    MEMORY[0x245CDC5E0](v15, -1, -1);
  }

  v17 = objc_allocWithZone(MEMORY[0x277CF1918]);
  v18 = sub_241165DA8();
  v19 = [v17 initWithIdentifier:v18 targetQueue:v11 waking:v23 & 1];

  return v19;
}

unint64_t sub_241158370()
{
  result = qword_27E5310D0;
  if (!qword_27E5310D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E5310D0);
  }

  return result;
}

uint64_t sub_2411583DC()
{
  v10 = v0;
  if (*(v0[2] + 56))
  {
    if (qword_27E5305A0 != -1)
    {
      swift_once();
    }

    v1 = sub_241165288();
    __swift_project_value_buffer(v1, qword_27E533A50);
    v2 = sub_241165268();
    v3 = sub_241166048();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v9 = v5;
      *v4 = 136315138;
      *(v4 + 4) = sub_241156B38(0xD00000000000001ALL, 0x800000024116CAA0, &v9);
      _os_log_impl(&dword_2410F8000, v2, v3, "%s Unhandled transport", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v5);
      MEMORY[0x245CDC5E0](v5, -1, -1);
      MEMORY[0x245CDC5E0](v4, -1, -1);
    }

    v6 = v0[1];

    return v6(0);
  }

  else
  {
    v8 = swift_task_alloc();
    v0[3] = v8;
    *v8 = v0;
    v8[1] = sub_2411585D0;

    return sub_2411586CC();
  }
}

uint64_t sub_2411585D0(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_2411586EC()
{
  v33 = v0;
  v2 = *(*(v0 + 24) + 80);
  v3 = MEMORY[0x277D84F90];
  v31 = MEMORY[0x277D84F90];
  v4 = *(v2 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = -v4;
    v7 = v2 + 40;
    v8 = 0x27E530000uLL;
    v30 = v2;
    do
    {
      v28 = v3;
      v9 = (v7 + 16 * v5++);
      while (1)
      {
        if ((v5 - 1) >= *(v2 + 16))
        {
          __break(1u);
          goto LABEL_21;
        }

        v1 = *(v9 - 1);
        v10 = *v9;
        v11 = sub_241165DA8();
        v12 = IDSCopyBestGuessIDForID();

        if (v12)
        {
          break;
        }

        if (*(v8 + 1440) != -1)
        {
          swift_once();
        }

        v13 = sub_241165288();
        __swift_project_value_buffer(v13, qword_27E533A50);

        v14 = sub_241165268();
        v15 = sub_241166048();

        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          v17 = v6;
          v18 = v7;
          v19 = swift_slowAlloc();
          v32 = v19;
          *v16 = 136315138;
          *(v16 + 4) = sub_241156B38(v1, v10, &v32);
          _os_log_impl(&dword_2410F8000, v14, v15, "Best guess ID for %s was nil. Skipping destination.", v16, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v19);
          v20 = v19;
          v7 = v18;
          v6 = v17;
          v2 = v30;
          MEMORY[0x245CDC5E0](v20, -1, -1);
          v21 = v16;
          v8 = 0x27E530000;
          MEMORY[0x245CDC5E0](v21, -1, -1);
        }

        ++v5;
        v9 += 2;
        if (v6 + v5 == 1)
        {
          v3 = v28;
          goto LABEL_16;
        }
      }

      MEMORY[0x245CDB820]();
      if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_241165F18();
      }

      sub_241165F28();
      v3 = v31;
    }

    while (v6 + v5);
  }

LABEL_16:
  v1 = v29;
  v29[4] = v3;
  v7 = v3;
  if (qword_27E530638 != -1)
  {
LABEL_21:
    swift_once();
  }

  v22 = qword_27E533BE8;
  v23 = *(v1[3] + 64);
  v24 = swift_task_alloc();
  v1[5] = v24;
  v24[2] = v22;
  v24[3] = v7;
  v24[4] = 0xD000000000000010;
  v24[5] = 0x800000024116C6E0;
  v24[6] = v23;
  v25 = swift_task_alloc();
  v1[6] = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E5312E8, &qword_241169CD0);
  *v25 = v1;
  v25[1] = sub_241158A90;

  return MEMORY[0x2822007B8](v1 + 2, 0, 0, 0xD00000000000004CLL, 0x800000024116CAC0, sub_241158E6C, v24, v26);
}

uint64_t sub_241158A90()
{

  return MEMORY[0x2822009F8](sub_241158BC4, 0, 0);
}

uint64_t sub_241158BC4()
{
  v1 = *(v0 + 16);
  if (qword_27E5305A0 != -1)
  {
    swift_once();
  }

  v2 = sub_241165288();
  __swift_project_value_buffer(v2, qword_27E533A50);

  v3 = sub_241165268();
  v4 = sub_241166068();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = *(v1 + 16);

    _os_log_impl(&dword_2410F8000, v3, v4, "Found %ld valid IDS destinations", v5, 0xCu);
    MEMORY[0x245CDC5E0](v5, -1, -1);
  }

  else
  {
  }

  v6 = *(v1 + 16);

  v7 = *(v0 + 8);

  return v7(v6 != 0);
}

uint64_t sub_241158D1C()
{
  sub_241132558(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1((v0 + 88));
  __swift_destroy_boxed_opaque_existential_1((v0 + 128));

  return swift_deallocClassInstance();
}

uint64_t get_enum_tag_for_layout_string_9AskToCore22ClientMetadataProtocol_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_241158DC4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_241158E0C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_241158E7C(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  *(v4 + 202) = a4;
  *(v4 + 384) = a2;
  *(v4 + 392) = a3;
  *(v4 + 376) = a1;
  return MEMORY[0x2822009F8](sub_241158EA4, 0, 0);
}

uint64_t sub_241158EA4()
{
  if (*(v0 + 202))
  {
    if (qword_27E5305A0 != -1)
    {
      swift_once();
    }

    v1 = sub_241165288();
    __swift_project_value_buffer(v1, qword_27E533A50);
    v2 = sub_241165268();
    v3 = sub_241166058();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 33554688;
      *(v4 + 4) = sub_241165488();
      _os_log_impl(&dword_2410F8000, v2, v3, "Error inflating recipient group. Recipient group was unknown. %hd", v4, 6u);
      MEMORY[0x245CDC5E0](v4, -1, -1);
    }

    v5 = *(v0 + 392);
    v6 = *(v0 + 376);

    v7 = 2;
    goto LABEL_12;
  }

  v8 = sub_241165CF8();
  if (v8 != sub_241165CF8())
  {
    v5 = *(v0 + 392);
    v6 = *(v0 + 376);
    v7 = 1;
LABEL_12:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530D20, &qword_241168528);
    sub_2411351DC();
    swift_allocError();
    *v11 = v7;
    swift_willThrow();
    sub_241132558(v5);
    __swift_destroy_boxed_opaque_existential_1(v6);
    __swift_destroy_boxed_opaque_existential_1(*(v0 + 384));
    v12 = *(v0 + 8);

    return v12();
  }

  v9 = [objc_allocWithZone(MEMORY[0x277D08280]) init];
  *(v0 + 400) = v9;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 368;
  *(v0 + 24) = sub_241159180;
  v10 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E530F60, &qword_241168050);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_241142CF4;
  *(v0 + 104) = &block_descriptor_12;
  *(v0 + 112) = v10;
  [v9 startRequestWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_241159180()
{
  v1 = *(*v0 + 48);
  *(*v0 + 408) = v1;
  if (v1)
  {
    v2 = sub_24115A13C;
  }

  else
  {
    v2 = sub_241159290;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

id sub_241159290()
{
  v1 = *(v0 + 368);
  *(v0 + 416) = v1;
  v2 = [v1 childBotAllowlistedParents];
  if (v2)
  {
    v3 = v2;
    v4 = sub_241165EF8();

    if (*(v4 + 16))
    {
      result = [v1 childBotAllowlistedParents];
      if (result)
      {
        v6 = result;
        v7 = *(v0 + 400);

        v64 = sub_241165EF8();

LABEL_28:
        v26 = *(v0 + 384);
        v25 = *(v0 + 392);
        v63 = v26;
        v59 = v25;
        v61 = *(v0 + 376);
        sub_241135730(v61, v0 + 208);
        sub_241135730(v26, v0 + 248);
        sub_2411324FC(v25, v0 + 144);
        v27 = *(v0 + 232);
        __swift_mutable_project_boxed_opaque_existential_1(v0 + 208, v27);
        v28 = *(v27 - 8);
        v58 = swift_task_alloc();
        (*(v28 + 16))();
        v29 = *(v0 + 272);
        v30 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 248, v29);
        v31 = *(v29 - 8);
        v32 = swift_task_alloc();
        (*(v31 + 16))(v32, v30, v29);
        v33 = *v58;
        v34 = type metadata accessor for AskToIDSController();
        *(v0 + 312) = v34;
        *(v0 + 320) = &off_2852EBEC8;
        *(v0 + 288) = v33;
        v35 = type metadata accessor for IDSLookupController(0);
        *(v0 + 352) = v35;
        *(v0 + 360) = &off_2852EC2E0;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 328));
        sub_24115A610(v32, boxed_opaque_existential_1);
        type metadata accessor for PrivledgedRecipientGroup();
        v37 = swift_allocObject();
        v38 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 288, v34);
        v39 = *(v34 - 8);
        v40 = swift_task_alloc();
        (*(v39 + 16))(v40, v38, v34);
        v41 = *(v0 + 352);
        v42 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 328, v41);
        v43 = *(v41 - 8);
        v44 = swift_task_alloc();
        (*(v43 + 16))(v44, v42, v41);
        v45 = *v40;
        *(v37 + 112) = v34;
        *(v37 + 120) = &off_2852EBEC8;
        *(v37 + 88) = v45;
        *(v37 + 152) = v35;
        *(v37 + 160) = &off_2852EC2E0;
        v46 = __swift_allocate_boxed_opaque_existential_1((v37 + 128));
        sub_24115A610(v44, v46);
        sub_241132558(v59);
        __swift_destroy_boxed_opaque_existential_1(v61);
        v47 = *(v0 + 160);
        *(v37 + 16) = *(v0 + 144);
        *(v37 + 32) = v47;
        *(v37 + 48) = *(v0 + 176);
        *(v37 + 57) = *(v0 + 185);
        *(v37 + 74) = 0;
        *(v37 + 80) = v64;
        __swift_destroy_boxed_opaque_existential_1((v0 + 328));

        __swift_destroy_boxed_opaque_existential_1((v0 + 288));

        __swift_destroy_boxed_opaque_existential_1((v0 + 248));

        __swift_destroy_boxed_opaque_existential_1((v0 + 208));

        __swift_destroy_boxed_opaque_existential_1(v63);
        v48 = *(v0 + 8);

        return v48(v37);
      }

      else
      {
        __break(1u);
      }

      return result;
    }
  }

  v8 = sub_241166078();
  v9 = v8;
  *(v0 + 424) = v8;
  if (v8 >> 62)
  {
    goto LABEL_33;
  }

  v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v10)
  {
    while ((*(*(v0 + 392) + 56) & 1) == 0)
    {
      v64 = MEMORY[0x277D84F90];
      v12 = 0;
      while (1)
      {
        if ((v9 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x245CDBC20](v12, v9);
        }

        else
        {
          if (v12 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_32;
          }

          v13 = *(v9 + 8 * v12 + 32);
        }

        v14 = v13;
        v15 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        v16 = [v13 appleID];
        if (v16)
        {
          v62 = v1;
          v17 = v16;
          v18 = sub_241165DD8();
          v60 = v19;

          v20 = v64;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v20 = sub_2411608BC(0, *(v64 + 16) + 1, 1, v64);
          }

          v22 = *(v20 + 2);
          v21 = *(v20 + 3);
          v64 = v20;
          if (v22 >= v21 >> 1)
          {
            v64 = sub_2411608BC((v21 > 1), v22 + 1, 1, v20);
          }

          *(v64 + 16) = v22 + 1;
          v23 = v64 + 16 * v22;
          v1 = v62;
          *(v23 + 32) = v18;
          *(v23 + 40) = v60;
          if (v15 == v10)
          {
LABEL_27:
            v24 = *(v0 + 400);

            goto LABEL_28;
          }

          v12 = v15;
        }

        else
        {

          ++v12;
          if (v15 == v10)
          {
            goto LABEL_27;
          }
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      v10 = sub_2411661F8();
      if (!v10)
      {
        goto LABEL_34;
      }
    }

    __swift_project_boxed_opaque_existential_1(*(v0 + 384), *(*(v0 + 384) + 24));
    v11 = swift_task_alloc();
    *(v0 + 432) = v11;
    *v11 = v0;
    v11[1] = sub_241159A6C;

    return sub_24114CE10(v9);
  }

  else
  {
LABEL_34:

    if (qword_27E5305A0 != -1)
    {
      swift_once();
    }

    v49 = sub_241165288();
    __swift_project_value_buffer(v49, qword_27E533A50);
    v50 = sub_241165268();
    v51 = sub_241166058();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_2410F8000, v50, v51, "There were no parents and guardians. This shouldn't ever happen. Please file a radar to Family Frameworks - AskTo | All.", v52, 2u);
      MEMORY[0x245CDC5E0](v52, -1, -1);
    }

    v54 = *(v0 + 392);
    v53 = *(v0 + 400);
    v55 = *(v0 + 376);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530D20, &qword_241168528);
    sub_2411351DC();
    swift_allocError();
    *v56 = 3;
    swift_willThrow();

    sub_241132558(v54);
    __swift_destroy_boxed_opaque_existential_1(v55);
    __swift_destroy_boxed_opaque_existential_1(*(v0 + 384));
    v57 = *(v0 + 8);

    return v57();
  }
}

uint64_t sub_241159A6C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 440) = a1;
  *(v3 + 448) = v1;

  if (v1)
  {
    v4 = sub_241159BA8;
  }

  else
  {
    v4 = sub_241159C38;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_241159BA8()
{
  v1 = *(v0 + 392);
  v2 = *(v0 + 400);
  v3 = *(v0 + 376);

  sub_241132558(v1);
  __swift_destroy_boxed_opaque_existential_1(v3);
  __swift_destroy_boxed_opaque_existential_1(*(v0 + 384));
  v4 = *(v0 + 8);

  return v4();
}

void sub_241159C38()
{
  v1 = 0;
  v2 = *(v0 + 440);
  v3 = *(v2 + 64);
  v4 = -1;
  v5 = -1 << *(v2 + 32);
  if (-v5 < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & v3;
  v7 = (63 - v5) >> 6;
  v8 = MEMORY[0x277D84F90];
  if ((v4 & v3) == 0)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = *(*(v2 + 56) + ((v1 << 9) | (8 * v9)));
      if (v10[2])
      {
        break;
      }

      if (!v6)
      {
        goto LABEL_6;
      }
    }

    v13 = v10[4];
    v12 = v10[5];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_2411608BC(0, *(v8 + 2) + 1, 1, v8);
    }

    v15 = *(v8 + 2);
    v14 = *(v8 + 3);
    v16 = v8;
    if (v15 >= v14 >> 1)
    {
      v16 = sub_2411608BC((v14 > 1), v15 + 1, 1, v8);
    }

    *(v16 + 2) = v15 + 1;
    v8 = v16;
    v17 = &v16[16 * v15];
    *(v17 + 4) = v13;
    *(v17 + 5) = v12;
  }

  while (v6);
  while (1)
  {
LABEL_6:
    v11 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
      return;
    }

    if (v11 >= v7)
    {
      break;
    }

    v6 = *(v2 + 64 + 8 * v11);
    ++v1;
    if (v6)
    {
      v1 = v11;
      goto LABEL_4;
    }
  }

  v46 = v8;
  v18 = *(v0 + 400);

  v20 = *(v0 + 384);
  v19 = *(v0 + 392);
  v47 = v20;
  v44 = v19;
  v45 = *(v0 + 376);
  sub_241135730(v45, v0 + 208);
  sub_241135730(v20, v0 + 248);
  sub_2411324FC(v19, v0 + 144);
  v21 = *(v0 + 232);
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 208, v21);
  v22 = *(v21 - 8);
  v43 = swift_task_alloc();
  (*(v22 + 16))();
  v23 = *(v0 + 272);
  v24 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 248, v23);
  v25 = *(v23 - 8);
  v26 = swift_task_alloc();
  (*(v25 + 16))(v26, v24, v23);
  v27 = *v43;
  v28 = type metadata accessor for AskToIDSController();
  *(v0 + 312) = v28;
  *(v0 + 320) = &off_2852EBEC8;
  *(v0 + 288) = v27;
  v29 = type metadata accessor for IDSLookupController(0);
  *(v0 + 352) = v29;
  *(v0 + 360) = &off_2852EC2E0;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 328));
  sub_24115A610(v26, boxed_opaque_existential_1);
  type metadata accessor for PrivledgedRecipientGroup();
  v31 = swift_allocObject();
  v32 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 288, v28);
  v33 = *(v28 - 8);
  v34 = swift_task_alloc();
  (*(v33 + 16))(v34, v32, v28);
  v35 = *(v0 + 352);
  v36 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 328, v35);
  v37 = *(v35 - 8);
  v38 = swift_task_alloc();
  (*(v37 + 16))(v38, v36, v35);
  v39 = *v34;
  *(v31 + 112) = v28;
  *(v31 + 120) = &off_2852EBEC8;
  *(v31 + 88) = v39;
  *(v31 + 152) = v29;
  *(v31 + 160) = &off_2852EC2E0;
  v40 = __swift_allocate_boxed_opaque_existential_1((v31 + 128));
  sub_24115A610(v38, v40);
  sub_241132558(v44);
  __swift_destroy_boxed_opaque_existential_1(v45);
  v41 = *(v0 + 160);
  *(v31 + 16) = *(v0 + 144);
  *(v31 + 32) = v41;
  *(v31 + 48) = *(v0 + 176);
  *(v31 + 57) = *(v0 + 185);
  *(v31 + 74) = 0;
  *(v31 + 80) = v46;
  __swift_destroy_boxed_opaque_existential_1((v0 + 328));

  __swift_destroy_boxed_opaque_existential_1((v0 + 288));

  __swift_destroy_boxed_opaque_existential_1((v0 + 248));

  __swift_destroy_boxed_opaque_existential_1((v0 + 208));

  __swift_destroy_boxed_opaque_existential_1(v47);
  v42 = *(v0 + 8);

  v42(v31);
}

uint64_t sub_24115A13C(uint64_t a1)
{
  v2 = *(v1 + 400);
  v3 = *(v1 + 392);
  v4 = *(v1 + 376);
  swift_willThrow();

  sub_241132558(v3);
  __swift_destroy_boxed_opaque_existential_1(v4);
  __swift_destroy_boxed_opaque_existential_1(*(v1 + 384));
  v5 = *(v1 + 8);

  return v5();
}

uint64_t sub_24115A1D4(uint64_t a1, __int16 a2)
{
  *(v2 + 74) = a2;
  *(v2 + 160) = a1;
  *(v2 + 168) = type metadata accessor for IDSLookupController(0);
  *(v2 + 176) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24115A26C, 0, 0);
}

uint64_t sub_24115A26C()
{
  if (qword_27E530638 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 168);
  v1 = *(v0 + 176);
  v3 = *(v0 + 160);
  v4 = qword_27E533BE8;
  sub_24114C9EC(v1);
  *(v0 + 104) = type metadata accessor for AskToIDSController();
  *(v0 + 112) = &off_2852EBEC8;
  *(v0 + 80) = v4;
  *(v0 + 144) = v2;
  *(v0 + 152) = &off_2852EC2E0;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 120));
  sub_241131B28(v1, boxed_opaque_existential_1);
  sub_2411324FC(v3, v0 + 16);

  v6 = swift_task_alloc();
  *(v0 + 184) = v6;
  *v6 = v0;
  v6[1] = sub_24115A3C8;
  v7 = *(v0 + 74);

  return sub_241158E7C(v0 + 80, v0 + 120, v0 + 16, v7);
}

uint64_t sub_24115A3C8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 192) = v1;

  if (v1)
  {
    v5 = sub_24115A56C;
  }

  else
  {
    *(v4 + 200) = a1;
    v5 = sub_24115A4F0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24115A4F0()
{
  v1 = v0[22];
  sub_241132558(v0[20]);
  sub_241131B8C(v1);

  v2 = v0[1];
  v3 = v0[25];

  return v2(v3);
}

uint64_t sub_24115A56C()
{
  v1 = v0[22];
  sub_241132558(v0[20]);
  sub_241131B8C(v1);

  v2 = v0[1];

  return v2();
}

uint64_t sub_24115A610(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IDSLookupController(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24115A674(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_11AskToDaemon24PrivledgedRecipientGroupC5ErrorOy_xG(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_24115A6D4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 8))
  {
    return (*a1 + 2147483643);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 4;
  if (v4 >= 6)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24115A72C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

uint64_t sub_24115A794(uint64_t a1)
{
  v2 = sub_241165BD8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == *MEMORY[0x277CEED68] || v6 == *MEMORY[0x277CEED70] || v6 == *MEMORY[0x277CEED88] || v6 == *MEMORY[0x277CEEDA0] || v6 == *MEMORY[0x277CEED90])
  {
    goto LABEL_15;
  }

  if (v6 != *MEMORY[0x277CEED80])
  {
    if (v6 == *MEMORY[0x277CEED98])
    {
      if (qword_27E530580 != -1)
      {
        swift_once();
      }

      v24 = sub_241165288();
      __swift_project_value_buffer(v24, qword_27E5339F0);
      v12 = sub_241165268();
      v13 = sub_241166068();
      if (!os_log_type_enabled(v12, v13))
      {
        goto LABEL_19;
      }

      v14 = swift_slowAlloc();
      *v14 = 0;
      v15 = "Client is Contacts. No custom response tasks.";
      goto LABEL_18;
    }

    if (v6 != *MEMORY[0x277CEED78])
    {
      sub_2411663D8();
      __break(1u);
      goto LABEL_33;
    }

LABEL_15:
    if (qword_27E530580 == -1)
    {
LABEL_16:
      v11 = sub_241165288();
      __swift_project_value_buffer(v11, qword_27E5339F0);
      v12 = sub_241165268();
      v13 = sub_241166068();
      if (!os_log_type_enabled(v12, v13))
      {
LABEL_19:

        return MEMORY[0x277D84F90];
      }

      v14 = swift_slowAlloc();
      *v14 = 0;
      v15 = "Client is an AskTo-owned process. Returning no response tasks.";
LABEL_18:
      _os_log_impl(&dword_2410F8000, v12, v13, v15, v14, 2u);
      MEMORY[0x245CDC5E0](v14, -1, -1);
      goto LABEL_19;
    }

LABEL_33:
    swift_once();
    goto LABEL_16;
  }

  v17 = v6;
  if (qword_27E530580 != -1)
  {
    swift_once();
  }

  v18 = sub_241165288();
  __swift_project_value_buffer(v18, qword_27E5339F0);
  v19 = sub_241165268();
  v20 = sub_241166068();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_2410F8000, v19, v20, "Client is ScreenTime. Returning ScreenTime response tasks.", v21, 2u);
    MEMORY[0x245CDC5E0](v21, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E531370, &unk_241169DC0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_2411673F0;
  *(v22 + 56) = type metadata accessor for ScreenTimeResponseTask(0);
  *(v22 + 64) = &off_2852EBDE8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v22 + 32));
  (*(v3 + 104))(boxed_opaque_existential_1, v17, v2);
  return v22;
}

void sub_24115AB9C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530E38, &unk_241168EF0);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v34 - v6;
  MEMORY[0x28223BE20](v5);
  v9 = &v34 - v8;
  sub_241164FE8();
  if (v10)
  {
    v11 = sub_241165DA8();

    [v0 setNamePrefix_];
  }

  sub_241164FB8();
  if (v12)
  {
    v13 = sub_241165DA8();

    [v0 setGivenName_];
  }

  sub_241164FD8();
  if (v14)
  {
    v15 = sub_241165DA8();

    [v0 setMiddleName_];
  }

  sub_241164FC8();
  if (v16)
  {
    v17 = sub_241165DA8();

    [v0 setFamilyName_];
  }

  sub_241164FF8();
  if (v18)
  {
    v19 = sub_241165DA8();

    [v0 setNameSuffix_];
  }

  sub_241165018();
  if (v20)
  {
    v21 = sub_241165DA8();

    [v0 setNickname_];
  }

  v35 = v0;
  sub_241165008();
  v22 = sub_241165028();
  v23 = *(v22 - 8);
  v24 = *(v23 + 48);
  if (v24(v9, 1, v22) == 1)
  {
    sub_24115AFCC(v9);
  }

  else
  {
    sub_241164FB8();
    v26 = v25;
    (*(v23 + 8))(v9, v22);
    if (v26)
    {
      v27 = sub_241165DA8();

      [v35 setPhoneticGivenName_];
    }
  }

  sub_241165008();
  if (v24(v7, 1, v22) == 1)
  {
    sub_24115AFCC(v7);
  }

  else
  {
    sub_241164FD8();
    v29 = v28;
    (*(v23 + 8))(v7, v22);
    if (v29)
    {
      v30 = sub_241165DA8();

      [v35 setPhoneticMiddleName_];
    }
  }

  sub_241165008();
  if (v24(v4, 1, v22) == 1)
  {
    sub_24115AFCC(v4);
  }

  else
  {
    sub_241164FC8();
    v32 = v31;
    (*(v23 + 8))(v4, v22);
    if (v32)
    {
      v33 = sub_241165DA8();

      [v35 setPhoneticFamilyName_];
    }
  }
}

uint64_t sub_24115AFCC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530E38, &unk_241168EF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24115B034(uint64_t a1, void *a2, uint64_t a3)
{
  if (qword_27E5305E8 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v6 = sub_241165288();
    __swift_project_value_buffer(v6, qword_27E533B28);

    v7 = sub_241165268();
    v8 = sub_241166068();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v98[0] = v10;
      *v9 = 136315394;
      *(v9 + 4) = sub_241156B38(a2, a3, v98);
      *(v9 + 12) = 2080;
      sub_241165928();
      sub_24115DFC4();
      v11 = sub_241165FE8();
      v13 = sub_241156B38(v11, v12, v98);

      *(v9 + 14) = v13;
      _os_log_impl(&dword_2410F8000, v7, v8, "Looking up known handles for %s in set %s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245CDC5E0](v10, -1, -1);
      MEMORY[0x245CDC5E0](v9, -1, -1);
    }

    v14 = sub_24115BAD4(a1, a2, a3);
    v15 = sub_241165268();
    v16 = sub_241166068();
    v92 = v14 >> 62;
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      a2 = swift_slowAlloc();
      v98[0] = a2;
      *v17 = 134218242;
      if (v14 >> 62)
      {
        v18 = sub_2411661F8();
      }

      else
      {
        v18 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v17 + 4) = v18;
      *(v17 + 12) = 2080;
      v19 = sub_2410FCF28(0, &unk_27E530E70, 0x277CBDA58);
      v20 = MEMORY[0x245CDB850](v14, v19);
      v22 = sub_241156B38(v20, v21, v98);

      *(v17 + 14) = v22;
      _os_log_impl(&dword_2410F8000, v15, v16, "Found %ld contacts: %s", v17, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(a2);
      MEMORY[0x245CDC5E0](a2, -1, -1);
      MEMORY[0x245CDC5E0](v17, -1, -1);
    }

    v88 = v14;
    v97 = MEMORY[0x277D84FA0];
    v91 = sub_2410FBDF0(MEMORY[0x277D84F90]);
    if ((a1 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      sub_2411661E8();
      sub_241165928();
      sub_24115DFC4();
      sub_241165FF8();
      a1 = v98[0];
      v23 = v98[1];
      v24 = v98[2];
      v25 = v98[3];
      v26 = v98[4];
    }

    else
    {
      v27 = -1 << *(a1 + 32);
      v23 = a1 + 56;
      v24 = ~v27;
      v28 = -v27;
      v29 = v28 < 64 ? ~(-1 << v28) : -1;
      v26 = (v29 & *(a1 + 56));

      v25 = 0;
    }

    a3 = (v24 + 64) >> 6;
    if (a1 < 0)
    {
      break;
    }

LABEL_15:
    v30 = v25;
    v31 = v26;
    v32 = v25;
    if (v26)
    {
LABEL_19:
      a2 = ((v31 - 1) & v31);
      v33 = *(*(a1 + 48) + ((v32 << 9) | (8 * __clz(__rbit64(v31)))));
      if (v33)
      {
        goto LABEL_23;
      }

      goto LABEL_25;
    }

    while (1)
    {
      v32 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v32 >= a3)
      {
        goto LABEL_25;
      }

      v31 = *(v23 + 8 * v32);
      ++v30;
      if (v31)
      {
        goto LABEL_19;
      }
    }

LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
  }

  while (1)
  {
    v34 = sub_241166218();
    if (!v34)
    {
      break;
    }

    v96 = v34;
    sub_241165928();
    swift_dynamicCast();
    v33 = v94;
    v32 = v25;
    a2 = v26;
    if (!v94)
    {
      break;
    }

LABEL_23:
    v35 = MEMORY[0x245CDB260]();
    v37 = v36;
    v38 = v33;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v94 = v91;
    sub_241153CE8(v38, v35, v37, isUniquelyReferenced_nonNull_native);
    v91 = v94;
    sub_24115C55C(&v94, v35, v37);

    v25 = v32;
    v26 = a2;
    if ((a1 & 0x8000000000000000) == 0)
    {
      goto LABEL_15;
    }
  }

LABEL_25:
  sub_24111606C(a1);
  v40 = MEMORY[0x277D84FA0];
  v41 = v88;
  if (MEMORY[0x277D84F90] >> 62)
  {
    if (sub_2411661F8())
    {
      sub_2410FCC14(MEMORY[0x277D84F90]);
      v40 = v79;
    }

    v41 = v88;
  }

  v96 = v40;
  if (v92)
  {
    v80 = v41;
    v81 = sub_2411661F8();
    v41 = v80;
    v42 = v81;
    if (!v81)
    {
LABEL_78:

      goto LABEL_79;
    }
  }

  else
  {
    v42 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v42)
    {
      goto LABEL_78;
    }
  }

  v43 = 0;
  v86 = v97;
  v87 = v41 & 0xC000000000000001;
  v83 = v41 + 32;
  v84 = v41 & 0xFFFFFFFFFFFFFF8;
  v85 = v42;
  do
  {
    if (v87)
    {
      v44 = MEMORY[0x245CDBC20](v43);
      v45 = __OFADD__(v43, 1);
      v46 = v43 + 1;
      if (v45)
      {
        goto LABEL_71;
      }
    }

    else
    {
      if (v43 >= *(v84 + 16))
      {
        goto LABEL_72;
      }

      v44 = *(v83 + 8 * v43);
      v45 = __OFADD__(v43, 1);
      v46 = v43 + 1;
      if (v45)
      {
        goto LABEL_71;
      }
    }

    v89 = v44;
    v90 = v46;
    v47 = [v44 socialProfiles];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530E50, qword_241168F00);
    v48 = sub_241165EF8();

    v95 = MEMORY[0x277D84FA0];
    if (v48 >> 62)
    {
      a3 = sub_2411661F8();
      if (a3)
      {
LABEL_38:
        v49 = 0;
        a2 = (v48 & 0xFFFFFFFFFFFFFF8);
        while (1)
        {
          if ((v48 & 0xC000000000000001) != 0)
          {
            v50 = MEMORY[0x245CDBC20](v49, v48);
          }

          else
          {
            if (v49 >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_69;
            }

            v50 = *(v48 + 8 * v49 + 32);
          }

          v51 = v50;
          v52 = v49 + 1;
          if (__OFADD__(v49, 1))
          {
            break;
          }

          v53 = [v50 value];
          a1 = [v53 username];

          v54 = sub_241165DD8();
          v56 = v55;

          sub_24115C55C(&v94, v54, v56);

          ++v49;
          if (v52 == a3)
          {
            v57 = v95;
            goto LABEL_48;
          }
        }

LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
        goto LABEL_70;
      }
    }

    else
    {
      a3 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (a3)
      {
        goto LABEL_38;
      }
    }

    v57 = MEMORY[0x277D84FA0];
LABEL_48:

    v58 = sub_24115CD98(v86, v57);
    a1 = v58;
    v59 = 0;
    v60 = v58 + 7;
    v61 = 1 << *(v58 + 32);
    if (v61 < 64)
    {
      v62 = ~(-1 << v61);
    }

    else
    {
      v62 = -1;
    }

    a3 = v62 & v58[7];
    a2 = ((v61 + 63) >> 6);
    for (i = v58; a3; v59 = v63)
    {
      while (1)
      {
        v63 = v59;
        v64 = v91;
LABEL_60:
        v65 = __clz(__rbit64(a3));
        a3 &= a3 - 1;
        v66 = (*(a1 + 48) + ((v63 << 10) | (16 * v65)));
        v68 = *v66;
        v67 = v66[1];
        v69 = v64[2];

        if (!v69)
        {
          break;
        }

        v70 = sub_2410FAD78(v68, v67);
        if ((v71 & 1) == 0)
        {
          break;
        }

        v72 = v70;

        sub_24115C344(&v94, *(v64[7] + 8 * v72));

        v59 = v63;
        if (!a3)
        {
          goto LABEL_56;
        }
      }

      v73 = sub_241165268();
      v74 = sub_241166048();

      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        v94 = v76;
        *v75 = 136315138;
        v77 = sub_241156B38(v68, v67, &v94);

        *(v75 + 4) = v77;
        _os_log_impl(&dword_2410F8000, v73, v74, "Handle string could not be found in handle map. Skipping %s", v75, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v76);
        v78 = v76;
        a1 = i;
        MEMORY[0x245CDC5E0](v78, -1, -1);
        MEMORY[0x245CDC5E0](v75, -1, -1);
      }

      else
      {
      }
    }

LABEL_56:
    v64 = v91;
    while (1)
    {
      v63 = v59 + 1;
      if (__OFADD__(v59, 1))
      {
        __break(1u);
        goto LABEL_68;
      }

      if (v63 >= a2)
      {
        break;
      }

      a3 = v60[v63];
      ++v59;
      if (a3)
      {
        goto LABEL_60;
      }
    }

    v43 = v90;
  }

  while (v90 != v85);

  v40 = v96;
LABEL_79:

  return v40;
}

void *sub_24115B9AC()
{
  type metadata accessor for CommunicationPolicyController();
  swift_allocObject();
  result = sub_24115B9E8();
  qword_27E533BF8 = result;
  return result;
}

void *sub_24115B9E8()
{
  v0[4] = 0;
  v1 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  v0[2] = v1;
  v2 = objc_opt_self();
  v3 = v1;
  result = [v2 defaultStore];
  if (result)
  {
    v5 = result;
    v6 = [objc_opt_self() defaultCenter];
    v7 = [objc_allocWithZone(MEMORY[0x277CBDAF0]) initWithContactStore:v3 accountStore:v5 notificationCenter:v6];

    v0[3] = v7;
    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24115BAD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v60[6] = *MEMORY[0x277D85DE8];
  v58 = MEMORY[0x277D84F90];
  v59 = MEMORY[0x277D84F90];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_2411661E8();
    sub_241165928();
    sub_24115DFC4();
    sub_241165FF8();
    v4 = v60[1];
    v3 = v60[2];
    v6 = v60[3];
    v5 = v60[4];
    v7 = v60[5];
  }

  else
  {
    v8 = -1 << *(a1 + 32);
    v3 = (a1 + 56);
    v6 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = (v10 & *(a1 + 56));
    v5 = 0;
  }

  v11 = (v6 + 64) >> 6;
  v55 = v4;
  if (v4 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v12 = v5;
    v13 = v7;
    v14 = v5;
    if (!v7)
    {
      while (1)
      {
        v14 = (v12 + 1);
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v14 >= v11)
        {
          goto LABEL_20;
        }

        v13 = v3[v14];
        ++v12;
        if (v13)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
      goto LABEL_33;
    }

LABEL_12:
    v15 = (v13 - 1) & v13;
    v16 = *(*(v4 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v16)
    {
      break;
    }

    while (1)
    {
      MEMORY[0x245CDB260]();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530668, &unk_2411677A0);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_2411673F0;
      *(v17 + 32) = a2;
      *(v17 + 40) = a3;
      v18 = objc_allocWithZone(MEMORY[0x277CBDBB0]);

      v19 = sub_241165DA8();

      v20 = sub_241165EE8();

      v21 = [v18 initWithUrlString:0 username:v19 userIdentifier:0 service:0 displayname:0 teamIdentifier:0 bundleIdentifiers:v20];

      v22 = [objc_opt_self() predicateForContactsMatchingSocialProfile_];
      MEMORY[0x245CDB820]();
      if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_241165F18();
      }

      sub_241165F28();

      v5 = v14;
      v7 = v15;
      v4 = v55;
      if ((v55 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_241166218())
      {
        sub_241165928();
        swift_dynamicCast();
        v16 = v60[0];
        v14 = v5;
        v15 = v7;
        if (v60[0])
        {
          continue;
        }
      }

      goto LABEL_20;
    }
  }

LABEL_20:
  sub_24111606C(v4);
  sub_2410FCF28(0, &qword_27E531388, 0x277CCAC30);
  v23 = sub_241165EE8();
  v24 = [objc_opt_self() orPredicateWithSubpredicates_];

  v5 = v24;
  MEMORY[0x245CDB820]();
  if (*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_21;
  }

LABEL_33:
  sub_241165F18();
LABEL_21:
  sub_241165F28();
  if (qword_27E5305E8 != -1)
  {
    swift_once();
  }

  v25 = sub_241165288();
  __swift_project_value_buffer(v25, qword_27E533B28);
  v26 = v5;
  v27 = sub_241165268();
  v28 = sub_241166068();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v29 = 138412290;
    *(v29 + 4) = v26;
    *v30 = v26;
    v31 = v26;
    _os_log_impl(&dword_2410F8000, v27, v28, "fetchPredicate: %@", v29, 0xCu);
    sub_2410FDEB8(v30);
    MEMORY[0x245CDC5E0](v30, -1, -1);
    MEMORY[0x245CDC5E0](v29, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530E60, &qword_241167790);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_241167630;
  v33 = *MEMORY[0x277CBD138];
  *(v32 + 32) = *MEMORY[0x277CBD138];
  v34 = *(v54 + 16);
  v35 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530E68, &qword_241168F18);
  v36 = sub_241165EE8();

  v60[0] = 0;
  v37 = [v34 unifiedContactsMatchingPredicate:v26 keysToFetch:v36 error:v60];

  v38 = v60[0];
  if (v37)
  {

    sub_2410FCF28(0, &unk_27E530E70, 0x277CBDA58);
    v39 = sub_241165EF8();
  }

  else
  {
    v40 = v38;
    v41 = sub_241165058();

    swift_willThrow();

    v42 = v41;
    v43 = sub_241165268();
    v44 = sub_241166048();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v60[0] = v47;
      *v45 = 136315394;
      sub_241165928();
      sub_24115DFC4();
      v48 = sub_241165FE8();
      v50 = sub_241156B38(v48, v49, v60);

      *(v45 + 4) = v50;
      *(v45 + 12) = 2112;
      v51 = v41;
      v52 = _swift_stdlib_bridgeErrorToNSError();
      *(v45 + 14) = v52;
      *v46 = v52;

      _os_log_impl(&dword_2410F8000, v43, v44, "Error fetching contacts for handles %s: %@", v45, 0x16u);
      sub_2410FDEB8(v46);
      MEMORY[0x245CDC5E0](v46, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v47);
      MEMORY[0x245CDC5E0](v47, -1, -1);
      MEMORY[0x245CDC5E0](v45, -1, -1);
    }

    else
    {
    }

    return MEMORY[0x277D84F90];
  }

  return v39;
}

uint64_t CommunicationPolicyController.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_24115C344(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_241166208();

    if (v9)
    {

      sub_241165928();
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_2411661F8();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_24115C6AC(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_24115C88C(v20 + 1);
    }

    v18 = v8;
    sub_24115CD14(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_241165928();
  v11 = sub_241166138();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_24115D5EC(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_241166148();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_24115C55C(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_2411664A8();
  sub_241165E28();
  v8 = sub_2411664C8();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_2411663E8() & 1) != 0)
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

    sub_24115D74C(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_24115C6AC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5307B8, &qword_2411674A0);
    v2 = sub_241166288();
    v15 = v2;
    sub_2411661E8();
    if (sub_241166218())
    {
      sub_241165928();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_24115C88C(v9 + 1);
        }

        v2 = v15;
        result = sub_241166138();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_241166218());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_24115C88C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5307B8, &qword_2411674A0);
  result = sub_241166278();
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = sub_241166138();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_24115CAB4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5307F0, &qword_2411674C0);
  result = sub_241166278();
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
      sub_2411664A8();
      sub_241165E28();
      result = sub_2411664C8();
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

unint64_t sub_24115CD14(uint64_t a1, uint64_t a2)
{
  sub_241166138();
  result = sub_2411661D8();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t *sub_24115CD98(uint64_t a1, uint64_t a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    bzero(v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v9 = sub_24115CFEC((v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0)), v6, a2, a1);
  }

  else
  {
    v11 = swift_slowAlloc();

    v9 = sub_24115CF5C(v11, v6, a2, a1);

    MEMORY[0x245CDC5E0](v11, -1, -1);
  }

  return v9;
}

unint64_t *sub_24115CF5C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

    v8 = sub_24115CFEC(result, a2, a3, a4);

    return v8;
  }

  return result;
}

unint64_t *sub_24115CFEC(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v50 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v53 = 0;
    v13 = 0;
    v14 = a3 + 56;
    v15 = 1 << *(a3 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(a3 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = a4 + 56;
    while (v17)
    {
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_18:
      v51 = v20 | (v13 << 6);
      v23 = (*(a3 + 48) + 16 * v51);
      v25 = *v23;
      v24 = v23[1];
      sub_2411664A8();

      sub_241165E28();
      v26 = sub_2411664C8();
      v27 = -1 << *(v4 + 32);
      v28 = v26 & ~v27;
      if ((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28))
      {
        v29 = ~v27;
        while (1)
        {
          v30 = (*(a4 + 48) + 16 * v28);
          v31 = *v30 == v25 && v30[1] == v24;
          if (v31 || (sub_2411663E8() & 1) != 0)
          {
            break;
          }

          v28 = (v28 + 1) & v29;
          if (((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        *(v50 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v51;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        if (v32)
        {
          __break(1u);
LABEL_30:
          v5 = a3;
LABEL_31:

          return sub_24115D3C8(v50, a2, v53, v5);
        }
      }

      else
      {
LABEL_10:

        v4 = a4;
      }
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_30;
      }

      v22 = *(v14 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_18;
      }
    }

LABEL_54:
    __break(1u);
  }

  else
  {
    v53 = 0;
    v6 = 0;
    v7 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(a4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = a3 + 56;
    v49 = v11;
    while (v10)
    {
      v33 = __clz(__rbit64(v10));
      v52 = (v10 - 1) & v10;
LABEL_41:
      v36 = (*(v4 + 48) + 16 * (v33 | (v6 << 6)));
      v38 = *v36;
      v37 = v36[1];
      sub_2411664A8();

      sub_241165E28();
      v39 = sub_2411664C8();
      v40 = -1 << *(v5 + 32);
      v41 = v39 & ~v40;
      v42 = v41 >> 6;
      v43 = 1 << v41;
      if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) != 0)
      {
        v44 = (*(v5 + 48) + 16 * v41);
        if (*v44 != v38 || v44[1] != v37)
        {
          v46 = ~v40;
          while ((sub_2411663E8() & 1) == 0)
          {
            v41 = (v41 + 1) & v46;
            v42 = v41 >> 6;
            v43 = 1 << v41;
            if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) == 0)
            {
              v5 = a3;
              goto LABEL_33;
            }

            v47 = (*(a3 + 48) + 16 * v41);
            if (*v47 == v38 && v47[1] == v37)
            {
              break;
            }
          }
        }

        v11 = v49;
        v50[v42] |= v43;
        v5 = a3;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        v10 = v52;
        if (v32)
        {
          __break(1u);
          goto LABEL_54;
        }
      }

      else
      {
LABEL_33:

        v4 = a4;
        v11 = v49;
        v10 = v52;
      }
    }

    v34 = v6;
    while (1)
    {
      v6 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_31;
      }

      v35 = *(v7 + 8 * v6);
      ++v34;
      if (v35)
      {
        v33 = __clz(__rbit64(v35));
        v52 = (v35 - 1) & v35;
        goto LABEL_41;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24115D3C8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5307F0, &qword_2411674C0);
  result = sub_241166298();
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
    sub_2411664A8();

    sub_241165E28();
    result = sub_2411664C8();
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

void sub_24115D5EC(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_24115C88C(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_24115D8CC();
      goto LABEL_12;
    }

    sub_24115DB78(v6 + 1);
  }

  v8 = *v3;
  v9 = sub_241166138();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_241165928();
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_241166148();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_241166418();
  __break(1u);
}

void sub_24115D74C(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_24115CAB4(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_24115DA1C();
      goto LABEL_16;
    }

    sub_24115DD8C(v8 + 1);
  }

  v10 = *v4;
  sub_2411664A8();
  sub_241165E28();
  v11 = sub_2411664C8();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (sub_2411663E8() & 1) != 0)
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
  sub_241166418();
  __break(1u);
}

id sub_24115D8CC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5307B8, &qword_2411674A0);
  v2 = *v0;
  v3 = sub_241166268();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
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

  return result;
}

void sub_24115DA1C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5307F0, &qword_2411674C0);
  v2 = *v0;
  v3 = sub_241166268();
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

uint64_t sub_24115DB78(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5307B8, &qword_2411674A0);
  result = sub_241166278();
  v5 = result;
  if (*(v3 + 16))
  {
    v24 = v1;
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
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = sub_241166138();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
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
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v24;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
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

uint64_t sub_24115DD8C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5307F0, &qword_2411674C0);
  result = sub_241166278();
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
      sub_2411664A8();

      sub_241165E28();
      result = sub_2411664C8();
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

unint64_t sub_24115DFC4()
{
  result = qword_27E531380;
  if (!qword_27E531380)
  {
    sub_241165928();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E531380);
  }

  return result;
}

uint64_t sub_24115E01C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  return MEMORY[0x2822009F8](sub_24115E044, 0, 0);
}

uint64_t sub_24115E044(uint64_t a1)
{
  v2 = *(sub_241165A18() + 16);

  v3 = *(sub_241165A18() + 16);

  if (v2 == v3)
  {
    v4 = v1[3];
    sub_241164E68();
    swift_allocObject();
    sub_241164E58();
    v1[2] = v4;
    sub_241165A58();
    sub_241161FAC(&qword_27E5313A8, MEMORY[0x277CEECD8], MEMORY[0x277CEECE0]);
    v5 = sub_241164E48();
    v7 = v6;
    v1[8] = v5;
    v1[9] = v6;

    v23 = swift_task_alloc();
    v1[10] = v23;
    *v23 = v1;
    v23[1] = sub_24115E430;
    v24 = v1[6];
    v25 = v1[5];

    return sub_24113AAC8(v5, v7, v25, v24);
  }

  else
  {
    if (qword_27E530618 != -1)
    {
      swift_once();
    }

    v9 = v1[3];
    v8 = v1[4];
    v10 = sub_241165288();
    __swift_project_value_buffer(v10, qword_27E533BB8);
    v11 = v9;
    v12 = v8;
    v13 = sub_241165268();
    v14 = sub_241166048();
    v15 = os_log_type_enabled(v13, v14);
    v16 = v1[3];
    v17 = v1[4];
    if (v15)
    {
      v18 = swift_slowAlloc();
      *v18 = 134218240;
      v19 = *(sub_241165A18() + 16);

      *(v18 + 4) = v19;
      *(v18 + 12) = 2048;
      v20 = *(sub_241165A18() + 16);

      *(v18 + 14) = v20;

      _os_log_impl(&dword_2410F8000, v13, v14, "Person information count mismatch - original: %ld, previewing: %ld", v18, 0x16u);
      MEMORY[0x245CDC5E0](v18, -1, -1);
    }

    else
    {
    }

    v21 = v1[1];

    return v21();
  }
}

uint64_t sub_24115E430()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_24115E6E0;
  }

  else
  {
    v2 = sub_24115E544;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24115E544()
{
  v14 = v0;
  if (qword_27E530618 != -1)
  {
    swift_once();
  }

  v1 = sub_241165288();
  __swift_project_value_buffer(v1, qword_27E533BB8);

  v2 = sub_241165268();
  v3 = sub_241166038();

  v4 = os_log_type_enabled(v2, v3);
  v6 = v0[8];
  v5 = v0[9];
  if (v4)
  {
    v8 = v0[5];
    v7 = v0[6];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v13 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_241156B38(v8, v7, &v13);
    _os_log_impl(&dword_2410F8000, v2, v3, "Cached metadata for question identifier %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x245CDC5E0](v10, -1, -1);
    MEMORY[0x245CDC5E0](v9, -1, -1);
  }

  sub_2410FB5B8(v6, v5);
  v11 = v0[1];

  return v11();
}

uint64_t sub_24115E6E0()
{
  v12 = v0;
  sub_2410FB5B8(v0[8], v0[9]);
  v1 = v0[11];
  if (qword_27E530618 != -1)
  {
    swift_once();
  }

  v2 = sub_241165288();
  __swift_project_value_buffer(v2, qword_27E533BB8);

  v3 = sub_241165268();
  v4 = sub_241166048();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[5];
    v5 = v0[6];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_241156B38(v6, v5, &v11);
    _os_log_impl(&dword_2410F8000, v3, v4, "Failed to cache metadata for question identifier %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x245CDC5E0](v8, -1, -1);
    MEMORY[0x245CDC5E0](v7, -1, -1);
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_24115E878(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530CE8, &qword_241168400);
  v2[4] = swift_task_alloc();
  v3 = sub_2411652E8();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24115E97C, 0, 0);
}

uint64_t sub_24115E97C()
{
  v51 = v0;
  if (qword_27E530618 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = sub_241165288();
  *(v0 + 72) = __swift_project_value_buffer(v2, qword_27E533BB8);
  v3 = v1;
  v4 = sub_241165268();
  v5 = sub_241166038();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v50 = v7;
    *v6 = 136315138;
    v8 = sub_241165328();
    v10 = sub_241156B38(v8, v9, &v50);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_2410F8000, v4, v5, "Moving cached metadata to final path for question %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x245CDC5E0](v7, -1, -1);
    MEMORY[0x245CDC5E0](v6, -1, -1);
  }

  v11 = *(v0 + 40);
  v12 = *(v0 + 48);
  v13 = *(v0 + 32);
  sub_241165298();
  if ((*(v12 + 48))(v13, 1, v11) == 1)
  {
    v14 = *(v0 + 16);
    sub_2411610E4(*(v0 + 32));
    v15 = v14;
    v16 = sub_241165268();
    v17 = sub_241166038();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v50 = v19;
      *v18 = 136315138;
      v20 = sub_241165328();
      v22 = sub_241156B38(v20, v21, &v50);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_2410F8000, v16, v17, "No topic metadata found for question %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x245CDC5E0](v19, -1, -1);
      MEMORY[0x245CDC5E0](v18, -1, -1);
    }

LABEL_16:

    v49 = *(v0 + 8);

    return v49();
  }

  v24 = *(v0 + 56);
  v23 = *(v0 + 64);
  v25 = *(v0 + 40);
  v26 = *(v0 + 48);
  (*(v26 + 32))(v23, *(v0 + 32), v25);
  (*(v26 + 16))(v24, v23, v25);
  if ((*(v26 + 88))(v24, v25) != *MEMORY[0x277CEEAD0])
  {
    v36 = *(v0 + 16);
    v37 = sub_241165268();
    v38 = sub_241166038();

    v39 = os_log_type_enabled(v37, v38);
    v40 = *(v0 + 64);
    v41 = *(v0 + 40);
    v42 = *(v0 + 48);
    if (v39)
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v50 = v44;
      *v43 = 136315138;
      v45 = sub_241165328();
      v47 = sub_241156B38(v45, v46, &v50);

      *(v43 + 4) = v47;
      _os_log_impl(&dword_2410F8000, v37, v38, "Unknown topic metadata type for question %s", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v44);
      MEMORY[0x245CDC5E0](v44, -1, -1);
      MEMORY[0x245CDC5E0](v43, -1, -1);
    }

    v48 = *(v42 + 8);
    v48(v40, v41);
    v48(*(v0 + 56), *(v0 + 40));
    goto LABEL_16;
  }

  v28 = *(v0 + 48);
  v27 = *(v0 + 56);
  v29 = *(v0 + 40);
  v30 = *(v28 + 8);
  *(v0 + 80) = v30;
  *(v0 + 88) = (v28 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v30(v27, v29);
  v31 = sub_241165328();
  v33 = v32;
  *(v0 + 96) = v32;
  v34 = swift_task_alloc();
  *(v0 + 104) = v34;
  *v34 = v0;
  v34[1] = sub_24115EE88;

  return sub_24113AFD8(v31, v33);
}

uint64_t sub_24115EE88()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_24115F144;
  }

  else
  {

    v2 = sub_24115EFA4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24115EFA4()
{
  v16 = v0;
  v1 = *(v0 + 16);
  v2 = sub_241165268();
  v3 = sub_241166038();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 80);
  v6 = *(v0 + 64);
  v7 = *(v0 + 40);
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315138;
    v10 = sub_241165328();
    v12 = sub_241156B38(v10, v11, &v15);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_2410F8000, v2, v3, "Moved cached metadata for question identifier %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x245CDC5E0](v9, -1, -1);
    MEMORY[0x245CDC5E0](v8, -1, -1);

    v5(v6, v7);
  }

  else
  {

    v5(v6, v7);
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_24115F144()
{
  v19 = v0;
  v1 = v0[2];

  v2 = v1;
  v3 = sub_241165268();
  v4 = sub_241166048();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[14];
  v7 = v0[10];
  v8 = v0[8];
  v9 = v0[5];
  if (v5)
  {
    v17 = v0[10];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136315138;
    v12 = sub_241165328();
    v14 = sub_241156B38(v12, v13, &v18);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_2410F8000, v3, v4, "Failed to move cached metadata for question identifier %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x245CDC5E0](v11, -1, -1);
    MEMORY[0x245CDC5E0](v10, -1, -1);

    v17(v8, v9);
  }

  else
  {

    v7(v8, v9);
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_24115F304(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530CE8, &qword_241168400);
  v2[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24115F3A0, 0, 0);
}

uint64_t sub_24115F3A0()
{
  v26 = v0;
  if (qword_27E530618 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = sub_241165288();
  __swift_project_value_buffer(v2, qword_27E533BB8);
  v3 = v1;
  v4 = sub_241165268();
  v5 = sub_241166028();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v25 = v7;
    *v6 = 136315138;
    v8 = sub_241165328();
    v10 = sub_241156B38(v8, v9, &v25);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_2410F8000, v4, v5, "Preparing question %s for sending", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x245CDC5E0](v7, -1, -1);
    MEMORY[0x245CDC5E0](v6, -1, -1);
  }

  v11 = sub_24116114C(*(v0 + 16));
  *(v0 + 40) = v11;
  if (v11)
  {
    v12 = v11;
    v13 = sub_241165268();
    v14 = sub_241166038();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 134217984;
      v16 = *(sub_241165A18() + 16);

      *(v15 + 4) = v16;

      _os_log_impl(&dword_2410F8000, v13, v14, "Processing communication metadata with %ld person(s)", v15, 0xCu);
      MEMORY[0x245CDC5E0](v15, -1, -1);
    }

    else
    {
    }

    v19 = sub_241165A28();
    *(v0 + 48) = v19;
    v20 = sub_241165328();
    v22 = v21;
    *(v0 + 56) = v21;
    v23 = swift_task_alloc();
    *(v0 + 64) = v23;
    *v23 = v0;
    v23[1] = sub_24115F694;
    v24 = *(v0 + 24);

    return sub_24115E01C(v12, v19, v20, v22, v24);
  }

  else
  {

    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_24115F694()
{

  return MEMORY[0x2822009F8](sub_24115F7AC, 0, 0);
}

uint64_t sub_24115F7AC()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  *v3 = v1;
  v4 = *MEMORY[0x277CEEAD0];
  v5 = sub_2411652E8();
  v6 = *(v5 - 8);
  (*(v6 + 104))(v3, v4, v5);
  (*(v6 + 56))(v3, 0, 1, v5);
  v7 = v1;
  sub_2411652A8();

  v8 = v0[1];

  return v8();
}

uint64_t sub_24115F8CC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_24115F8EC, 0, 0);
}

uint64_t sub_24115F8EC()
{
  v16 = v0;
  if (qword_27E530618 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = sub_241165288();
  v0[4] = __swift_project_value_buffer(v2, qword_27E533BB8);
  v3 = v1;
  v4 = sub_241165268();
  v5 = sub_241166028();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136315138;
    v8 = sub_241165328();
    v10 = sub_241156B38(v8, v9, &v15);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_2410F8000, v4, v5, "Question %s was sent, performing post-send operations", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x245CDC5E0](v7, -1, -1);
    MEMORY[0x245CDC5E0](v6, -1, -1);
  }

  v11 = swift_task_alloc();
  v0[5] = v11;
  *v11 = v0;
  v11[1] = sub_24115FAB8;
  v13 = v0[2];
  v12 = v0[3];

  return sub_24115E878(v13, v12);
}

uint64_t sub_24115FAB8()
{

  return MEMORY[0x2822009F8](sub_24115FBB4, 0, 0);
}

uint64_t sub_24115FBB4()
{
  v12 = v0;
  v1 = *(v0 + 16);
  v2 = sub_241165268();
  v3 = sub_241166038();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    v6 = sub_241165328();
    v8 = sub_241156B38(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_2410F8000, v2, v3, "Completed post-send operations for question %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x245CDC5E0](v5, -1, -1);
    MEMORY[0x245CDC5E0](v4, -1, -1);
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_24115FCFC(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_2411650D8();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530CE8, &qword_241168400);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24115FE00, 0, 0);
}

uint64_t sub_24115FE00(uint64_t a1)
{
  v69 = v1;
  v2 = sub_2411656C8();
  v3 = sub_241160DD4(v2);

  if (qword_27E530618 != -1)
  {
    swift_once();
  }

  v4 = v1[3];
  v5 = sub_241165288();
  __swift_project_value_buffer(v5, qword_27E533BB8);
  v6 = v4;
  v7 = sub_241165268();
  v8 = sub_241166038();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v68[0] = v10;
    *v9 = 136315394;
    v11 = sub_2411656C8();
    v12 = sub_241165328();
    v14 = v13;

    v15 = sub_241156B38(v12, v14, v68);

    *(v9 + 4) = v15;
    *(v9 + 12) = 1024;
    *(v9 + 14) = v3;
    _os_log_impl(&dword_2410F8000, v7, v8, "Can process response for question %s: %{BOOL}d", v9, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x245CDC5E0](v10, -1, -1);
    MEMORY[0x245CDC5E0](v9, -1, -1);
  }

  if (!v3)
  {
    goto LABEL_16;
  }

  v16 = v1[9];
  v17 = sub_2411656C8();
  v1[10] = v17;
  v18 = sub_2411656C8();
  sub_241165298();

  v19 = sub_2411652E8();
  v20 = *(v19 - 8);
  v21 = (*(v20 + 48))(v16, 1, v19);
  v22 = v1[9];
  if (v21 == 1)
  {
    sub_2411610E4(v22);
    goto LABEL_13;
  }

  v23 = (*(v20 + 88))(v22, v19);
  v24 = v1[9];
  if (v23 != *MEMORY[0x277CEEAD0])
  {
    (*(v20 + 8))(v1[9], v19);
LABEL_13:
    v36 = v17;
    v37 = sub_241165268();
    v38 = sub_241166028();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v68[0] = v40;
      *v39 = 136315138;
      v41 = sub_241165328();
      v43 = sub_241156B38(v41, v42, v68);

      *(v39 + 4) = v43;
      _os_log_impl(&dword_2410F8000, v37, v38, "CommunicationMetadata nil for question %s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v40);
      MEMORY[0x245CDC5E0](v40, -1, -1);
      MEMORY[0x245CDC5E0](v39, -1, -1);
    }

    else
    {
    }

LABEL_16:

    v45 = v1[1];

    return v45();
  }

  v65 = v23;
  (*(v20 + 96))(v24, v19);
  v67 = *v24;
  v1[11] = *v24;
  v25 = v17;
  v26 = sub_241165268();
  v27 = sub_241166028();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v66 = v25;
    v29 = swift_slowAlloc();
    v68[0] = v29;
    *v28 = 136315138;
    v30 = sub_241165328();
    v32 = sub_241156B38(v30, v31, v68);

    *(v28 + 4) = v32;
    _os_log_impl(&dword_2410F8000, v26, v27, "Processing received response for question %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v29);
    v33 = v29;
    v25 = v66;
    MEMORY[0x245CDC5E0](v33, -1, -1);
    MEMORY[0x245CDC5E0](v28, -1, -1);
  }

  v34 = v1[4];
  v35 = sub_241165328();
  (*(v34 + 24))(v35);

  v1[12] = sub_2411650E8();
  v1[13] = v44;
  (*(v1[6] + 8))(v1[7], v1[5]);
  sub_241164E38();
  swift_allocObject();
  sub_241164E28();
  sub_241165A58();
  sub_241161FAC(&qword_27E531390, MEMORY[0x277CEECD8], MEMORY[0x277CEECE8]);
  sub_241164E18();
  v47 = v1[8];

  v48 = v1[2];
  v1[14] = v48;
  v49 = sub_2411615C8(v48, v67);
  v1[15] = v49;
  v50 = sub_2411656C8();
  *v47 = v49;
  (*(v20 + 104))(v47, v65, v19);
  (*(v20 + 56))(v47, 0, 1, v19);
  v51 = v49;
  sub_2411652A8();

  v52 = v25;
  v53 = sub_241165268();
  v54 = sub_241166038();

  if (os_log_type_enabled(v53, v54))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v68[0] = v57;
    *v56 = 136315138;
    v58 = sub_241165328();
    v60 = sub_241156B38(v58, v59, v68);

    *(v56 + 4) = v60;
    _os_log_impl(&dword_2410F8000, v53, v54, "Successfully loaded existing metadata for question %s ", v56, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v57);
    MEMORY[0x245CDC5E0](v57, -1, -1);
    MEMORY[0x245CDC5E0](v56, -1, -1);
  }

  v61 = sub_241165328();
  v63 = v62;
  v1[16] = v62;
  v64 = swift_task_alloc();
  v1[17] = v64;
  *v64 = v1;
  v64[1] = sub_2411606D0;

  return sub_24113BB20(v61, v63);
}

uint64_t sub_2411606D0()
{

  return MEMORY[0x2822009F8](sub_2411607E8, 0, 0);
}

uint64_t sub_2411607E8()
{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v3 = *(v0 + 96);
  v4 = *(v0 + 104);
  v5 = *(v0 + 88);

  sub_2410FB5B8(v3, v4);

  v6 = *(v0 + 8);

  return v6();
}

char *sub_2411608BC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530668, &unk_2411677A0);
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

void *sub_2411609EC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

void *sub_241160BEC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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

BOOL sub_241160DD4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530CE8, &qword_241168400);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v24 - v3;
  v5 = sub_2411652E8();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v24 - v10;
  sub_241165298();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_2411610E4(v4);
    v12 = 0;
  }

  else
  {
    v13 = *(v6 + 32);
    v13(v11, v4, v5);
    v13(v9, v11, v5);
    v12 = (*(v6 + 88))(v9, v5) == *MEMORY[0x277CEEAD0];
    (*(v6 + 8))(v9, v5);
  }

  if (qword_27E530618 != -1)
  {
    swift_once();
  }

  v14 = sub_241165288();
  __swift_project_value_buffer(v14, qword_27E533BB8);
  v15 = a1;
  v16 = sub_241165268();
  v17 = sub_241166038();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v25 = v19;
    *v18 = 136315394;
    v20 = sub_241165328();
    v22 = sub_241156B38(v20, v21, &v25);

    *(v18 + 4) = v22;
    *(v18 + 12) = 1024;
    *(v18 + 14) = v12;
    _os_log_impl(&dword_2410F8000, v16, v17, "Can process question %s: %{BOOL}d", v18, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x245CDC5E0](v19, -1, -1);
    MEMORY[0x245CDC5E0](v18, -1, -1);
  }

  return v12;
}

uint64_t sub_2411610E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530CE8, &qword_241168400);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24116114C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530CE8, &qword_241168400);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v32 - v3;
  v5 = sub_2411652E8();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v32 - v10;
  sub_241165298();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_2411610E4(v4);
    if (qword_27E530618 != -1)
    {
      swift_once();
    }

    v12 = sub_241165288();
    __swift_project_value_buffer(v12, qword_27E533BB8);
    v13 = a1;
    v14 = sub_241165268();
    v15 = sub_241166038();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v33 = v17;
      *v16 = 136315138;
      v18 = sub_241165328();
      v20 = sub_241156B38(v18, v19, &v33);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_2410F8000, v14, v15, "No topic metadata found for question %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x245CDC5E0](v17, -1, -1);
      MEMORY[0x245CDC5E0](v16, -1, -1);
    }
  }

  else
  {
    (*(v6 + 32))(v11, v4, v5);
    (*(v6 + 16))(v9, v11, v5);
    if ((*(v6 + 88))(v9, v5) == *MEMORY[0x277CEEAD0])
    {
      (*(v6 + 8))(v11, v5);
      (*(v6 + 96))(v9, v5);
      return *v9;
    }

    if (qword_27E530618 != -1)
    {
      swift_once();
    }

    v22 = sub_241165288();
    __swift_project_value_buffer(v22, qword_27E533BB8);
    v23 = a1;
    v24 = sub_241165268();
    v25 = sub_241166038();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v33 = v27;
      *v26 = 136315138;
      v28 = sub_241165328();
      v30 = sub_241156B38(v28, v29, &v33);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_2410F8000, v24, v25, "Unknown topic metadata type for question %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x245CDC5E0](v27, -1, -1);
      MEMORY[0x245CDC5E0](v26, -1, -1);
    }

    v31 = *(v6 + 8);
    v31(v11, v5);
    v31(v9, v5);
  }

  return 0;
}

uint64_t sub_2411615C8(uint64_t a1, uint64_t a2)
{
  v87 = a2;
  ObjectType = swift_getObjectType();
  v106 = sub_2411651A8();
  v2 = *(v106 - 8);
  v3 = MEMORY[0x28223BE20](v106);
  v90 = &v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v91 = &v86 - v6;
  MEMORY[0x28223BE20](v5);
  v108 = (&v86 - v7);
  v8 = sub_2411659F8();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v105 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v86 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v89 = &v86 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v86 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v86 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v107 = &v86 - v24;
  MEMORY[0x28223BE20](v23);
  v103 = &v86 - v25;
  v26 = sub_2410FBF00(MEMORY[0x277D84F90]);
  v27 = sub_241165A18();
  v28 = *(v27 + 16);
  v98 = v14;
  v99 = v19;
  v101 = v22;
  v94 = v2;
  if (v28)
  {
    v29 = 0;
    v102 = v27 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v104 = (v9 + 32);
    v93 = (v2 + 16);
    v96 = (v2 + 8);
    v97 = (v9 + 16);
    *&v92 = v9 + 40;
    v95 = v27;
    v100 = v9;
    while (v29 < *(v27 + 16))
    {
      v30 = *(v9 + 72);
      v31 = v103;
      (*(v9 + 16))(v103, v102 + v30 * v29, v8);
      v32 = v108;
      sub_2411659C8();
      v33 = *(v9 + 32);
      v33(v107, v31, v8);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v109 = v26;
      v35 = sub_2410FAE34(v32);
      v37 = v26[2];
      v38 = (v36 & 1) == 0;
      v39 = __OFADD__(v37, v38);
      v40 = v37 + v38;
      if (v39)
      {
        goto LABEL_35;
      }

      v41 = v36;
      if (v26[3] >= v40)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v50 = v35;
          sub_24115459C();
          v35 = v50;
        }
      }

      else
      {
        sub_2411527B8(v40, isUniquelyReferenced_nonNull_native);
        v35 = sub_2410FAE34(v108);
        if ((v41 & 1) != (v42 & 1))
        {
          goto LABEL_37;
        }
      }

      v22 = v101;
      v26 = v109;
      if (v41)
      {
        (*v92)(v109[7] + v35 * v30, v107, v8);
        (*v96)(v108, v106);
      }

      else
      {
        v43 = v28;
        v109[(v35 >> 6) + 8] |= 1 << v35;
        v44 = v94;
        v45 = v35;
        v46 = v108;
        v47 = v106;
        (*(v94 + 16))(v26[6] + *(v94 + 72) * v35, v108, v106);
        v33((v26[7] + v45 * v30), v107, v8);
        (*(v44 + 8))(v46, v47);
        v48 = v26[2];
        v39 = __OFADD__(v48, 1);
        v49 = v48 + 1;
        if (v39)
        {
          goto LABEL_36;
        }

        v26[2] = v49;
        v22 = v101;
        v28 = v43;
      }

      ++v29;
      v19 = v99;
      v9 = v100;
      v27 = v95;
      if (v28 == v29)
      {

        v14 = v98;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    result = sub_241166428();
    __break(1u);
  }

  else
  {

LABEL_17:
    v51 = sub_241165A18();
    v53 = *(v51 + 16);
    v54 = v91;
    if (v53)
    {
      v56 = *(v9 + 16);
      v55 = v9 + 16;
      v107 = v56;
      v57 = (*(v55 + 64) + 32) & ~*(v55 + 64);
      v87 = v51;
      v95 = v57;
      v58 = v51 + v57;
      v96 = *(v55 + 56);
      v97 = (v94 + 8);
      v104 = (v55 - 8);
      v108 = MEMORY[0x277D84F90];
      v94 = v55 + 16;
      *&v52 = 136315138;
      v92 = v52;
      v100 = v55;
      do
      {
        v102 = v58;
        v103 = v53;
        v59 = v107;
        (v107)(v22);
        v59(v19, v22, v8);
        sub_2411659C8();
        if (v26[2] && (v60 = sub_2410FAE34(v54), (v61 & 1) != 0))
        {
          v62 = v89;
          (v107)(v89, v26[7] + v60 * v96, v8);
          (*v97)(v54, v106);
          sub_241165998();
          sub_2411659A8();
          v63 = *v104;
          (*v104)(v62, v8);
        }

        else
        {
          v64 = *v97;
          (*v97)(v54, v106);
          if (qword_27E530618 != -1)
          {
            swift_once();
          }

          v65 = sub_241165288();
          __swift_project_value_buffer(v65, qword_27E533BB8);
          (v107)(v14, v22, v8);
          v66 = sub_241165268();
          v67 = sub_241166048();
          if (os_log_type_enabled(v66, v67))
          {
            v68 = swift_slowAlloc();
            v93 = swift_slowAlloc();
            v109 = v93;
            *v68 = v92;
            v69 = v90;
            sub_2411659C8();
            sub_241161FAC(&qword_27E530C38, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
            v70 = v106;
            v71 = sub_2411663B8();
            v73 = v72;
            v74 = v69;
            v22 = v101;
            v64(v74, v70);
            v63 = *v104;
            (*v104)(v98, v8);
            v75 = sub_241156B38(v71, v73, &v109);

            *(v68 + 4) = v75;
            _os_log_impl(&dword_2410F8000, v66, v67, "Could not find original person info for received person info with id %s", v68, 0xCu);
            v76 = v93;
            __swift_destroy_boxed_opaque_existential_1(v93);
            MEMORY[0x245CDC5E0](v76, -1, -1);
            v77 = v68;
            v54 = v91;
            MEMORY[0x245CDC5E0](v77, -1, -1);
          }

          else
          {

            v63 = *v104;
            (*v104)(v14, v8);
          }

          v19 = v99;
        }

        v78 = v108;
        (v107)(v105, v19, v8);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v78 = sub_2411609EC(0, v78[2] + 1, 1, v78, &qword_27E531398, &qword_241169EF0, MEMORY[0x277CEEC68]);
        }

        v80 = v78[2];
        v79 = v78[3];
        v108 = v78;
        if (v80 >= v79 >> 1)
        {
          v108 = sub_2411609EC((v79 > 1), v80 + 1, 1, v108, &qword_27E531398, &qword_241169EF0, MEMORY[0x277CEEC68]);
        }

        v63(v19, v8);
        v63(v22, v8);
        v81 = v108;
        v108[2] = v80 + 1;
        v82 = v96;
        (*v94)(&v81[v95 + v80 * v96], v105, v8);
        v58 = v82 + v102;
        v53 = v103 - 1;
        v14 = v98;
      }

      while (v103 != 1);
    }

    v83 = objc_allocWithZone(ObjectType);
    v84 = sub_241165A08();

    return v84;
  }

  return result;
}

uint64_t sub_241161FAC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_241162014(uint64_t a1, void *a2, void *a3)
{
  v21 = a1;
  v22 = a3;
  v20 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530F70, &unk_241169240);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - v6;
  v8 = *(v5 + 16);
  v8(&v20 - v6, a1, v4);
  v9 = *(v5 + 80);
  v10 = swift_allocObject();
  v11 = *(v5 + 32);
  v11(v10 + ((v9 + 16) & ~v9), v7, v4);
  v28 = sub_241163474;
  v29 = v10;
  aBlock = MEMORY[0x277D85DD0];
  v25 = 1107296256;
  v26 = sub_241100228;
  v27 = &block_descriptor_14;
  v12 = _Block_copy(&aBlock);

  v13 = [v20 remoteObjectProxyWithErrorHandler_];
  _Block_release(v12);
  sub_2411661A8();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5313C0, &unk_241169FD0);
  swift_dynamicCast();
  v14 = v23;
  v8(v7, v21, v4);
  v15 = swift_allocObject();
  v16 = v22;
  *(v15 + 16) = v14;
  *(v15 + 24) = v16;
  v11(v15 + ((v9 + 32) & ~v9), v7, v4);
  v28 = sub_241163564;
  v29 = v15;
  aBlock = MEMORY[0x277D85DD0];
  v25 = 1107296256;
  v26 = sub_2410FF7EC;
  v27 = &block_descriptor_20;
  v17 = _Block_copy(&aBlock);
  swift_unknownObjectRetain();
  v18 = v16;

  [v14 wakeUpWithReply_];
  _Block_release(v17);
  return swift_unknownObjectRelease();
}

uint64_t sub_241162320(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530F70, &unk_241169240);
  return sub_241165F68();
}

void sub_241162370(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530F70, &unk_241169240);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = aBlock - v8;
  if (qword_27E5305D8 != -1)
  {
    swift_once();
  }

  v10 = sub_241165288();
  __swift_project_value_buffer(v10, qword_27E533AF8);
  v11 = sub_241165268();
  v12 = sub_241166068();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_2410F8000, v11, v12, "Client process woke up!", v13, 2u);
    MEMORY[0x245CDC5E0](v13, -1, -1);
  }

  (*(v7 + 16))(v9, a3, v6);
  v14 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v15 = swift_allocObject();
  (*(v7 + 32))(v15 + v14, v9, v6);
  aBlock[4] = sub_241163668;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_241162658;
  aBlock[3] = &block_descriptor_26_0;
  v16 = _Block_copy(aBlock);

  [a1 didReceiveResponse:a2 reply:v16];
  _Block_release(v16);
}

uint64_t sub_2411625E4(void *a1)
{
  if (a1)
  {
    v1 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530F70, &unk_241169240);
    return sub_241165F68();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530F70, &unk_241169240);
    return sub_241165F78();
  }
}

void sub_241162658(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void sub_2411626C4(uint64_t a1, unint64_t a2, const char *a3)
{
  if (qword_27E5305D8 != -1)
  {
    swift_once();
  }

  v6 = sub_241165288();
  __swift_project_value_buffer(v6, qword_27E533AF8);

  oslog = sub_241165268();
  v7 = sub_241166048();

  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v11 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_241156B38(a1, a2, &v11);
    _os_log_impl(&dword_2410F8000, oslog, v7, a3, v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x245CDC5E0](v9, -1, -1);
    MEMORY[0x245CDC5E0](v8, -1, -1);
  }
}

uint64_t sub_24116281C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_241106740;

  return sub_2411628C4(a3);
}

uint64_t sub_2411628E4(uint64_t a1)
{
  v53 = v1;
  v2 = v1 + 2;
  v3 = v1 + 8;
  v4 = sub_2411656C8();
  v5 = sub_2411653A8();
  v1[15] = v5;

  v6 = sub_241165A68();
  v8 = v7;
  v9 = sub_241165368();
  v11 = v10;
  v51 = v6;
  v52 = v8;

  MEMORY[0x245CDB790](v9, v11);

  v13 = v6;
  v12 = v52;
  if (qword_27E5305D8 != -1)
  {
    swift_once();
  }

  v14 = sub_241165288();
  v1[16] = __swift_project_value_buffer(v14, qword_27E533AF8);

  v15 = sub_241165268();
  v16 = sub_241166068();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v51 = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_241156B38(v13, v12, &v51);
    _os_log_impl(&dword_2410F8000, v15, v16, "Attempting to create connection with mach service name %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x245CDC5E0](v18, -1, -1);
    v19 = v17;
    v3 = v1 + 8;
    v2 = v1 + 2;
    MEMORY[0x245CDC5E0](v19, -1, -1);
  }

  v20 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v21 = sub_241165DA8();
  v22 = [v20 initWithMachServiceName:v21 options:0];
  v1[17] = v22;

  v23 = [objc_opt_self() interfaceWithProtocol_];
  [v22 setRemoteObjectInterface_];
  v24 = swift_allocObject();
  *(v24 + 16) = v13;
  *(v24 + 24) = v12;
  v1[6] = sub_241163408;
  v1[7] = v24;
  v1[2] = MEMORY[0x277D85DD0];
  v1[3] = 1107296256;
  v1[4] = sub_2410FF7EC;
  v1[5] = &block_descriptor_13;
  v25 = _Block_copy(v2);

  [v22 setInterruptionHandler_];
  _Block_release(v25);
  v26 = swift_allocObject();
  *(v26 + 16) = v13;
  *(v26 + 24) = v12;
  v1[12] = sub_241163444;
  v1[13] = v26;
  v1[8] = MEMORY[0x277D85DD0];
  v1[9] = 1107296256;
  v1[10] = sub_2410FF7EC;
  v1[11] = &block_descriptor_7_0;
  v27 = _Block_copy(v3);

  [v22 setInvalidationHandler_];
  _Block_release(v27);

  v28 = v5;
  v29 = sub_241165268();
  v30 = sub_241166068();

  v50 = v13;
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v49 = v22;
    v33 = swift_slowAlloc();
    v51 = v33;
    *v31 = 138412546;
    *(v31 + 4) = v28;
    *v32 = v28;
    *(v31 + 12) = 2080;
    v34 = v28;
    *(v31 + 14) = sub_241156B38(v13, v12, &v51);
    _os_log_impl(&dword_2410F8000, v29, v30, "Created connection for topic %@ with mach service name %s", v31, 0x16u);
    sub_2410FDEB8(v32);
    MEMORY[0x245CDC5E0](v32, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v33);
    v35 = v33;
    v22 = v49;
    MEMORY[0x245CDC5E0](v35, -1, -1);
    MEMORY[0x245CDC5E0](v31, -1, -1);
  }

  [v22 activate];

  v36 = v28;
  v37 = sub_241165268();
  v38 = sub_241166068();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v51 = v41;
    *v39 = 138412546;
    *(v39 + 4) = v36;
    *v40 = v36;
    *(v39 + 12) = 2080;
    v42 = v36;
    v43 = sub_241156B38(v50, v12, &v51);

    *(v39 + 14) = v43;
    _os_log_impl(&dword_2410F8000, v37, v38, "Activated connection for topic %@ with mach service name %s", v39, 0x16u);
    sub_2410FDEB8(v40);
    MEMORY[0x245CDC5E0](v40, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v41);
    MEMORY[0x245CDC5E0](v41, -1, -1);
    MEMORY[0x245CDC5E0](v39, -1, -1);
  }

  else
  {
  }

  v44 = v1[14];
  v45 = swift_task_alloc();
  v1[18] = v45;
  *(v45 + 16) = v22;
  *(v45 + 24) = v44;
  v46 = swift_task_alloc();
  v1[19] = v46;
  *v46 = v1;
  v46[1] = sub_241162FB4;
  v47 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v46, 0, 0, 0xD00000000000002ALL, 0x800000024116CBB0, sub_241163468, v45, v47);
}

uint64_t sub_241162FB4()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_241163218;
  }

  else
  {

    v2 = sub_2411630D0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2411630D0()
{
  v1 = *(v0 + 112);
  v2 = sub_241165268();
  v3 = sub_241166068();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 112);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v4;
    *v6 = v4;
    v7 = v4;
    _os_log_impl(&dword_2410F8000, v2, v3, "Successfully notified client of received response! response: %@", v5, 0xCu);
    sub_2410FDEB8(v6);
    MEMORY[0x245CDC5E0](v6, -1, -1);
    MEMORY[0x245CDC5E0](v5, -1, -1);
  }

  v8 = *(v0 + 136);
  v9 = *(v0 + 120);
  [v8 invalidate];

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_241163218()
{
  v1 = v0[20];
  v2 = v0[14];

  v3 = v2;
  v4 = v1;
  v5 = sub_241165268();
  v6 = sub_241166048();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[20];
  if (v7)
  {
    v9 = v0[14];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412546;
    v12 = v8;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *(v10 + 12) = 2112;
    *(v10 + 14) = v9;
    *v11 = v13;
    v11[1] = v9;
    v14 = v9;
    _os_log_impl(&dword_2410F8000, v5, v6, "Failed to notified client of received response. error: %@, response: %@", v10, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530E30, &qword_2411676F0);
    swift_arrayDestroy();
    MEMORY[0x245CDC5E0](v11, -1, -1);
    MEMORY[0x245CDC5E0](v10, -1, -1);
  }

  else
  {
  }

  v15 = v0[17];
  v16 = v0[15];
  [v15 invalidate];

  v17 = v0[1];

  return v17();
}

uint64_t sub_2411633D0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24116348C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530F70, &unk_241169240);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

void sub_241163564()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530F70, &unk_241169240) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  sub_241162370(v2, v3, v4);
}

uint64_t objectdestroy_10Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530F70, &unk_241169240);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_241163680(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530F70, &unk_241169240) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

void sub_241163738(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v161 = a5;
  v156 = a4;
  v165 = a2;
  v166 = a3;
  v169 = sub_2411651A8();
  v171 = *(v169 - 8);
  MEMORY[0x28223BE20](v169);
  v170 = &v155 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2411658F8();
  v159 = *(v7 - 8);
  v160 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v158 = &v155 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v157 = &v155 - v10;
  v11 = sub_2411659F8();
  v163 = *(v11 - 8);
  v164 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v155 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530CE8, &qword_241168400);
  MEMORY[0x28223BE20](v14 - 8);
  v167 = (&v155 - v15);
  if (qword_27E5305F8 != -1)
  {
    swift_once();
  }

  v16 = sub_241165288();
  __swift_project_value_buffer(v16, qword_27E533B58);
  v17 = a1;
  v18 = sub_241165268();
  v19 = sub_241166068();

  v20 = os_log_type_enabled(v18, v19);
  v162 = v13;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v173[0] = v22;
    *v21 = 136315650;
    *(v21 + 4) = sub_241156B38(0xD000000000000039, 0x800000024116CE80, v173);
    *(v21 + 12) = 2080;
    v23 = sub_2411656C8();
    v24 = sub_2411652B8();
    v26 = v25;

    v27 = sub_241156B38(v24, v26, v173);

    *(v21 + 14) = v27;
    *(v21 + 22) = 2080;
    v28 = sub_2411656A8();
    v29 = sub_2411653F8();
    v31 = v30;

    v32 = sub_241156B38(v29, v31, v173);

    *(v21 + 24) = v32;
    _os_log_impl(&dword_2410F8000, v18, v19, "%s called. Question:%s answer: %s", v21, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x245CDC5E0](v22, -1, -1);
    MEMORY[0x245CDC5E0](v21, -1, -1);
  }

  v33 = sub_2411656C8();
  v34 = sub_2411652C8();

  if (v34)
  {
    if (sub_241165688())
    {
      v35 = [objc_allocWithZone(MEMORY[0x277CE1F60]) init];
      v36 = sub_2411656C8();
      v37 = sub_2411652D8();

      if (v37)
      {
        v38 = sub_241165DA8();
        v39 = [objc_opt_self() iconForApplicationIdentifier_];

        [v35 setIcon_];
      }

      else
      {
        v57 = sub_241165DA8();
        v58 = [objc_opt_self() iconForApplicationIdentifier_];

        [v35 setIcon_];
      }

      v59 = sub_241165DA8();
      v60 = v35;
      [v35 setDefaultActionBundleIdentifier_];

      v61 = sub_2411656C8();
      v62 = v167;
      sub_241165298();

      v63 = sub_2411652E8();
      v64 = *(v63 - 8);
      v65 = (*(v64 + 48))(v62, 1, v63);
      v155 = v17;
      if (v65 == 1)
      {
        sub_2411610E4(v62);
LABEL_25:
        type metadata accessor for Localization();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v77 = objc_opt_self();
        v78 = [v77 bundleForClass_];
        sub_241164FA8();

        v79 = sub_241165DA8();

        [v35 setTitle_];

        v60 = v35;
        v80 = [v77 bundleForClass_];
        sub_241164FA8();

        v66 = sub_241165DA8();

        [v60 setBody_];
LABEL_50:

        v140 = v170;
        sub_241165198();
        sub_241165188();
        (v171[1].isa)(v140, v169);
        v141 = v60;
        v142 = sub_241165DA8();

        v143 = [objc_opt_self() requestWithIdentifier:v142 content:v141 trigger:0];

        v144 = v155;
        v145 = sub_241165268();
        v146 = sub_241166068();

        if (os_log_type_enabled(v145, v146))
        {
          v147 = swift_slowAlloc();
          v148 = swift_slowAlloc();
          v173[0] = v148;
          *v147 = 136315138;
          v149 = sub_2411656C8();
          v150 = sub_241165328();
          v152 = v151;

          v153 = sub_241156B38(v150, v152, v173);

          *(v147 + 4) = v153;
          _os_log_impl(&dword_2410F8000, v145, v146, "Question %s posted approval notification.", v147, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v148);
          MEMORY[0x245CDC5E0](v148, -1, -1);
          MEMORY[0x245CDC5E0](v147, -1, -1);
        }

        [*(v168 + OBJC_IVAR____TtC11AskToDaemon23NotificationsController_userNotificationCenter) addNotificationRequest:v143 withCompletionHandler:0];
        return;
      }

      if ((*(v64 + 88))(v62, v63) != *MEMORY[0x277CEEAD0])
      {
        (*(v64 + 8))(v62, v63);
        goto LABEL_25;
      }

      (*(v64 + 96))(v62, v63);
      v66 = *v62;
      type metadata accessor for Localization();
      v67 = swift_getObjCClassFromMetadata();
      v68 = objc_opt_self();
      v69 = [v68 bundleForClass_];
      sub_241164FA8();

      v70 = sub_241165DA8();

      [v60 setTitle_];

      v71 = sub_241165A18();
      if (!*(v71 + 16))
      {

        v81 = sub_241165268();
        v82 = sub_241166048();
        if (os_log_type_enabled(v81, v82))
        {
          v83 = swift_slowAlloc();
          *v83 = 0;
          _os_log_impl(&dword_2410F8000, v81, v82, "Original question had no person information. Using default notification text.", v83, 2u);
          MEMORY[0x245CDC5E0](v83, -1, -1);
        }

        v84 = [v68 bundleForClass_];
        sub_241164FA8();

        goto LABEL_49;
      }

      (*(v163 + 16))(v162, v71 + ((*(v163 + 80) + 32) & ~*(v163 + 80)), v164);

      v72 = sub_2411659D8();
      if (v73)
      {
        v74 = v72;
        v75 = v73;
      }

      else
      {
        v166 = v67;
        v167 = v68;
        v85 = sub_2411659E8();
        v165 = MEMORY[0x245CDB260]();
        v75 = v86;

        v87 = sub_2411659E8();
        v88 = v157;
        sub_241165908();

        v90 = v158;
        v89 = v159;
        v91 = v160;
        (*(v159 + 104))(v158, *MEMORY[0x277CEEC30], v160);
        sub_241164D6C();
        sub_241165EC8();
        sub_241165EC8();
        v92 = *(v89 + 8);
        v92(v90, v91);
        v92(v88, v91);
        if (v173[0] == v172)
        {
          v93 = objc_allocWithZone(MEMORY[0x277CBDB70]);
          v74 = v165;
          v94 = sub_241165DA8();
          v95 = [v93 initWithStringValue_];

          v96 = [v95 formattedStringValue];
          if (v96)
          {
            v74 = sub_241165DD8();
            v98 = v97;

            v75 = v98;
          }

          v67 = v166;
          v68 = v167;
        }

        else
        {
          v67 = v166;
          v68 = v167;
          v74 = v165;
        }
      }

      v99 = sub_2411656C8();
      v100 = sub_2411652D8();

      if (v100)
      {
        if (!v161)
        {
          v124 = *(sub_241165A18() + 16);

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5313D8, &unk_24116A030);
          if (v124 < 2)
          {
            v154 = swift_allocObject();
            *(v154 + 16) = xmmword_2411673F0;
            *(v154 + 56) = MEMORY[0x277D837D0];
            *(v154 + 64) = sub_241164DC4();
            *(v154 + 32) = v74;
            *(v154 + 40) = v75;
          }

          else
          {
            v125 = swift_allocObject();
            *(v125 + 16) = xmmword_241167EC0;
            v126 = v74;
            v127 = v66;
            v128 = v60;
            v129 = MEMORY[0x277D837D0];
            *(v125 + 56) = MEMORY[0x277D837D0];
            v130 = sub_241164DC4();
            *(v125 + 64) = v130;
            *(v125 + 32) = v126;
            *(v125 + 40) = v75;
            v131 = *(sub_241165A18() + 16);

            v173[0] = v131 - 1;
            v132 = sub_2411663B8();
            *(v125 + 96) = v129;
            *(v125 + 104) = v130;
            v60 = v128;
            v66 = v127;
            *(v125 + 72) = v132;
            *(v125 + 80) = v133;
          }

          v134 = [v68 bundleForClass_];
          goto LABEL_48;
        }

        v167 = v68;
        v101 = v161;

        v102 = *(sub_241165A18() + 16);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5313D8, &unk_24116A030);
        if (v102 < 2)
        {
          v135 = swift_allocObject();
          *(v135 + 16) = xmmword_241167EC0;
          v136 = MEMORY[0x277D837D0];
          *(v135 + 56) = MEMORY[0x277D837D0];
          v137 = sub_241164DC4();
          *(v135 + 32) = v74;
          *(v135 + 40) = v75;
          *(v135 + 96) = v136;
          *(v135 + 104) = v137;
          v138 = v156;
          *(v135 + 64) = v137;
          *(v135 + 72) = v138;
          *(v135 + 80) = v101;
        }

        else
        {
          v103 = swift_allocObject();
          *(v103 + 16) = xmmword_241169FE0;
          v104 = v74;
          v105 = v60;
          v106 = MEMORY[0x277D837D0];
          *(v103 + 56) = MEMORY[0x277D837D0];
          v107 = sub_241164DC4();
          *(v103 + 64) = v107;
          *(v103 + 32) = v104;
          *(v103 + 40) = v75;
          v108 = *(sub_241165A18() + 16);

          v173[0] = v108 - 1;
          v109 = sub_2411663B8();
          *(v103 + 96) = v106;
          *(v103 + 104) = v107;
          *(v103 + 72) = v109;
          *(v103 + 80) = v110;
          *(v103 + 136) = v106;
          *(v103 + 144) = v107;
          v60 = v105;
          *(v103 + 112) = v156;
          *(v103 + 120) = v101;
        }

        v111 = v167;

        v112 = [v111 bundleForClass_];
      }

      else
      {
        v113 = *(sub_241165A18() + 16);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5313D8, &unk_24116A030);
        if (v113 < 2)
        {
          v123 = swift_allocObject();
          *(v123 + 16) = xmmword_2411673F0;
          *(v123 + 56) = MEMORY[0x277D837D0];
          *(v123 + 64) = sub_241164DC4();
          *(v123 + 32) = v74;
          *(v123 + 40) = v75;
        }

        else
        {
          v114 = swift_allocObject();
          *(v114 + 16) = xmmword_241167EC0;
          v115 = v74;
          v116 = v66;
          v117 = v60;
          v118 = MEMORY[0x277D837D0];
          *(v114 + 56) = MEMORY[0x277D837D0];
          v119 = sub_241164DC4();
          *(v114 + 64) = v119;
          *(v114 + 32) = v115;
          *(v114 + 40) = v75;
          v120 = *(sub_241165A18() + 16);

          v173[0] = v120 - 1;
          v121 = sub_2411663B8();
          *(v114 + 96) = v118;
          *(v114 + 104) = v119;
          v60 = v117;
          v66 = v116;
          *(v114 + 72) = v121;
          *(v114 + 80) = v122;
        }

        v112 = [v68 bundleForClass_];
      }

      v134 = v112;
LABEL_48:
      sub_241164FA8();

      sub_241165DB8();

      (*(v163 + 8))(v162, v164);
LABEL_49:
      v139 = sub_241165DA8();

      [v60 setBody_];

      goto LABEL_50;
    }

    v50 = v17;
    v171 = sub_241165268();
    v41 = sub_241166068();

    if (os_log_type_enabled(v171, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v173[0] = v43;
      *v42 = 136315138;
      v51 = sub_2411656C8();
      v52 = sub_241165328();
      v54 = v53;

      v55 = sub_241156B38(v52, v54, v173);

      *(v42 + 4) = v55;
      v49 = "Question %s not an approval, no notification.";
      goto LABEL_13;
    }
  }

  else
  {
    v40 = v17;
    v171 = sub_241165268();
    v41 = sub_241166048();

    if (os_log_type_enabled(v171, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v173[0] = v43;
      *v42 = 136315138;
      v44 = sub_2411656C8();
      v45 = sub_241165328();
      v47 = v46;

      v48 = sub_241156B38(v45, v47, v173);

      *(v42 + 4) = v48;
      v49 = "Question %s was not a communication question";
LABEL_13:
      _os_log_impl(&dword_2410F8000, v171, v41, v49, v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v43);
      MEMORY[0x245CDC5E0](v43, -1, -1);
      MEMORY[0x245CDC5E0](v42, -1, -1);

      return;
    }
  }

  v56 = v171;
}

id sub_241164C00()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Localization();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_241164C5C()
{
  result = [objc_allocWithZone(type metadata accessor for NotificationsController()) init];
  qword_27E533C00 = result;
  return result;
}

unint64_t sub_241164D6C()
{
  result = qword_27E5313D0;
  if (!qword_27E5313D0)
  {
    sub_2411658F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5313D0);
  }

  return result;
}

unint64_t sub_241164DC4()
{
  result = qword_27E5313E0;
  if (!qword_27E5313E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5313E0);
  }

  return result;
}