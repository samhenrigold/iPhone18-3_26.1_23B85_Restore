unint64_t sub_190938FD0()
{
  result = qword_1EAD574D8;
  if (!qword_1EAD574D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD574D8);
  }

  return result;
}

CFMutableDataRef sub_190939024(CGImage *a1)
{
  result = CFDataCreateMutable(0, 0);
  if (result)
  {
    v3 = result;
    sub_190D52DF0();
    v4 = sub_190D56ED0();

    v5 = CGImageDestinationCreateWithData(v3, v4, 1uLL, 0);

    if (v5)
    {
      CGImageDestinationAddImage(v5, a1, 0);
      if (CGImageDestinationFinalize(v5))
      {
        v6 = v3;
        v7 = sub_190D51670();

        return v7;
      }
    }

    else
    {
    }

    return 0;
  }

  return result;
}

unint64_t sub_190939114()
{
  result = qword_1EAD574E0;
  if (!qword_1EAD574E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD574E0);
  }

  return result;
}

unint64_t sub_19093916C()
{
  result = qword_1EAD574E8;
  if (!qword_1EAD574E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD574E8);
  }

  return result;
}

unint64_t sub_1909391C4()
{
  result = qword_1EAD574F0;
  if (!qword_1EAD574F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD574F0);
  }

  return result;
}

unint64_t sub_19093929C()
{
  result = qword_1EAD574F8;
  if (!qword_1EAD574F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD574F8);
  }

  return result;
}

uint64_t sub_1909392F0()
{
  v0 = sub_190D51460();
  __swift_allocate_value_buffer(v0, qword_1EAD9DB10);
  __swift_project_value_buffer(v0, qword_1EAD9DB10);
  return sub_190D51430();
}

uint64_t sub_190939354(uint64_t a1)
{
  v1[3] = a1;
  v2 = sub_190D52130();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_190939414, 0, 0);
}

uint64_t sub_190939414()
{
  sub_190D572A0();
  *(v0 + 56) = sub_190D57290();
  v2 = sub_190D57240();

  return MEMORY[0x1EEE6DFA0](sub_1909394A8, v2, v1);
}

uint64_t sub_1909394A8()
{

  v1 = [objc_opt_self() sharedList];
  v2 = [v1 mutedChatList];

  sub_19021DC70();
  *(v0 + 64) = sub_190D56D90();

  return MEMORY[0x1EEE6DFA0](sub_19093957C, 0, 0);
}

void sub_19093957C()
{
  v1 = 0;
  v2 = *(v0 + 64);
  v5 = *(v2 + 64);
  v4 = v2 + 64;
  v3 = v5;
  v6 = -1;
  v7 = -1 << *(*(v0 + 64) + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & v3;
  v9 = (63 - v7) >> 6;
  v18 = *(v0 + 40);
  v10 = MEMORY[0x1E69E7CC0];
  if ((v6 & v3) != 0)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v11 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
      return;
    }

    if (v11 >= v9)
    {
      break;
    }

    v8 = *(v4 + 8 * v11);
    ++v1;
    if (v8)
    {
      v1 = v11;
      do
      {
LABEL_8:
        v12 = *(*(v19 + 56) + 8 * (__clz(__rbit64(v8)) | (v1 << 6)));
        sub_190D52690();
        sub_190D52120();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_190836510(0, v10[2] + 1, 1, v10);
        }

        v14 = v10[2];
        v13 = v10[3];
        if (v14 >= v13 >> 1)
        {
          v10 = sub_190836510((v13 > 1), v14 + 1, 1, v10);
        }

        v8 &= v8 - 1;
        v15 = v20[6];
        v16 = v20[4];

        v10[2] = v14 + 1;
        (*(v18 + 32))(v10 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v14, v15, v16);
      }

      while (v8);
    }
  }

  v20[2] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57510, &qword_190DE0038);
  sub_1909399C8();
  sub_190D506A0();

  v17 = v20[1];

  v17();
}

uint64_t sub_1909397D8@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EAD51A28 != -1)
  {
    swift_once();
  }

  v2 = sub_190D51460();
  v3 = __swift_project_value_buffer(v2, qword_1EAD9DB10);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_190939880(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_190221DA4;

  return sub_190939354(a1);
}

uint64_t sub_190939918(uint64_t a1)
{
  v2 = sub_19093929C();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

unint64_t sub_190939964()
{
  result = qword_1EAD57500;
  if (!qword_1EAD57500)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD57508, &qword_190DE0028);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD57500);
  }

  return result;
}

unint64_t sub_1909399C8()
{
  result = qword_1EAD57518;
  if (!qword_1EAD57518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD57510, &qword_190DE0038);
    sub_190939A4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD57518);
  }

  return result;
}

unint64_t sub_190939A4C()
{
  result = qword_1EAD57520;
  if (!qword_1EAD57520)
  {
    sub_190D52130();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD57520);
  }

  return result;
}

void __swiftcall CKConversationListCollectionViewController.reportConcern(for:)(UIAction *__return_ptr retstr, IMChat *a2)
{
  v3 = CKFrameworkBundle(a2);
  if (v3)
  {
    v4 = v3;
    sub_1908D84D0();
    v5 = sub_190D56ED0();
    v6 = sub_190D56ED0();
    v7 = [v4 localizedStringForKey:v5 value:0 table:v6];

    sub_190D56F10();
    v8 = sub_190D56ED0();
    v9 = [objc_opt_self() systemImageNamed_];

    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    *(v11 + 24) = a2;
    v12 = a2;
    sub_190D57DC0();
  }

  else
  {
    __break(1u);
  }
}

double sub_190939C70(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BAF0, &qword_190DD7B00);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  v8 = sub_190D572E0();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_190D572A0();
  sub_190D50920();
  v9 = a3;
  v10 = sub_190D57290();
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E85E0];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = a2;
  v11[5] = v9;
  sub_190858700(0, 0, v7, &unk_190DE0048, v11);

  return result;
}

uint64_t sub_190939DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  sub_190D572A0();
  v5[8] = sub_190D57290();
  v7 = sub_190D57240();
  v5[9] = v7;
  v5[10] = v6;

  return MEMORY[0x1EEE6DFA0](sub_190939E50, v7, v6);
}

uint64_t sub_190939E50()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 88) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 96) = v2;
    *v2 = v0;
    v2[1] = sub_190939F5C;
    v3 = *(v0 + 56);

    return sub_19093A464(v3, 1);
  }

  else
  {

    **(v0 + 40) = *(v0 + 88) == 0;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_190939F5C()
{
  v1 = *v0;
  v2 = *(*v0 + 88);

  v3 = *(v1 + 80);
  v4 = *(v1 + 72);

  return MEMORY[0x1EEE6DFA0](sub_19093A09C, v4, v3);
}

uint64_t sub_19093A09C()
{

  **(v0 + 40) = *(v0 + 88) == 0;
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_19093A170(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_190221DA4;

  return sub_190939DB4(a1, v4, v5, v7, v6);
}

uint64_t sub_19093A230(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = sub_190D56ED0();
  v7 = [a3 messageForGUID_];

  if (v7 && (v8 = [v7 plainBody], v7, v8))
  {
    v9 = sub_190D56F10();

    return v9;
  }

  else
  {
    if (qword_1EAD51A30 != -1)
    {
      swift_once();
    }

    v11 = sub_190D53040();
    __swift_project_value_buffer(v11, qword_1EAD9DB28);
    sub_190D52690();
    v12 = sub_190D53020();
    v13 = sub_190D576A0();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v16 = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_19021D9F8(a1, a2, &v16);
      _os_log_impl(&dword_19020E000, v12, v13, "Message body is nil for %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x193AF7A40](v15, -1, -1);
      MEMORY[0x193AF7A40](v14, -1, -1);
    }

    return 0;
  }
}

uint64_t sub_19093A3F8()
{
  v0 = sub_190D53040();
  __swift_allocate_value_buffer(v0, qword_1EAD9DB28);
  __swift_project_value_buffer(v0, qword_1EAD9DB28);
  sub_190D53010();
  return sub_190D53030();
}

uint64_t sub_19093A464(uint64_t a1, char a2)
{
  *(v2 + 168) = a2;
  *(v2 + 16) = a1;
  v3 = sub_190D52ED0();
  *(v2 + 24) = v3;
  *(v2 + 32) = *(v3 - 8);
  *(v2 + 40) = swift_task_alloc();
  v4 = sub_190D52EE0();
  *(v2 + 48) = v4;
  *(v2 + 56) = *(v4 - 8);
  *(v2 + 64) = swift_task_alloc();
  v5 = sub_190D52F10();
  *(v2 + 72) = v5;
  *(v2 + 80) = *(v5 - 8);
  *(v2 + 88) = swift_task_alloc();
  v6 = sub_190D52F00();
  *(v2 + 96) = v6;
  *(v2 + 104) = *(v6 - 8);
  *(v2 + 112) = swift_task_alloc();
  *(v2 + 120) = swift_task_alloc();
  sub_190D572A0();
  *(v2 + 128) = sub_190D57290();
  v8 = sub_190D57240();
  *(v2 + 136) = v8;
  *(v2 + 144) = v7;

  return MEMORY[0x1EEE6DFA0](sub_19093A67C, v8, v7);
}

uint64_t sub_19093A67C()
{
  v42 = v0;
  v1 = [*(v0 + 16) chatSummaryMessageGUID];
  if (v1)
  {
    v2 = *(v0 + 104);
    v3 = *(v0 + 168);
    v4 = v1;
    v5 = sub_190D56F10();
    v7 = v6;

    v8 = *(v2 + 104);
    v9 = *(v0 + 120);
    v10 = *(v0 + 96);
    v38 = v7;
    v39 = v5;
    if (v3)
    {
      v8(v9, *MEMORY[0x1E69C5C60], v10);
      if (qword_1EAD51A30 != -1)
      {
        swift_once();
      }

      v11 = sub_190D53040();
      __swift_project_value_buffer(v11, qword_1EAD9DB28);
      sub_190D52690();
      v12 = sub_190D53020();
      v13 = sub_190D57680();

      if (!os_log_type_enabled(v12, v13))
      {
        goto LABEL_19;
      }

      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v41 = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_19021D9F8(v5, v7, &v41);
      v16 = "Handling thumbs down for GUID %s";
    }

    else
    {
      v8(v9, *MEMORY[0x1E69C5C68], v10);
      if (qword_1EAD51A30 != -1)
      {
        swift_once();
      }

      v23 = sub_190D53040();
      __swift_project_value_buffer(v23, qword_1EAD9DB28);
      sub_190D52690();
      v12 = sub_190D53020();
      v13 = sub_190D57680();

      if (!os_log_type_enabled(v12, v13))
      {
        goto LABEL_19;
      }

      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v41 = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_19021D9F8(v5, v7, &v41);
      v16 = "Handling thumbs up for GUID %s";
    }

    _os_log_impl(&dword_19020E000, v12, v13, v16, v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x193AF7A40](v15, -1, -1);
    MEMORY[0x193AF7A40](v14, -1, -1);
LABEL_19:

    v24 = *(v0 + 112);
    v25 = *(v0 + 104);
    v35 = *(v0 + 96);
    v36 = *(v0 + 120);
    v26 = *(v0 + 56);
    v27 = *(v0 + 64);
    v29 = *(v0 + 40);
    v28 = *(v0 + 48);
    v30 = *(v0 + 32);
    v37 = *(v0 + 24);
    v31 = *(v0 + 16);
    sub_190D52F30();
    *(v0 + 152) = sub_190D52F20();
    (*(v26 + 104))(v27, *MEMORY[0x1E69C5C58], v28);
    (*(v25 + 16))(v24, v36, v35);
    *v29 = v39;
    v29[1] = v38;
    (*(v30 + 104))(v29, *MEMORY[0x1E69C5C50], v37);
    *(swift_allocObject() + 16) = v31;
    v32 = v31;
    sub_190D52EF0();
    v40 = (*MEMORY[0x1E69C5C70] + MEMORY[0x1E69C5C70]);
    v33 = swift_task_alloc();
    *(v0 + 160) = v33;
    *v33 = v0;
    v33[1] = sub_19093ABC0;
    v34 = *(v0 + 88);

    return v40(v34);
  }

  if (qword_1EAD51A30 != -1)
  {
    swift_once();
  }

  v17 = sub_190D53040();
  __swift_project_value_buffer(v17, qword_1EAD9DB28);
  v18 = sub_190D53020();
  v19 = sub_190D576A0();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_19020E000, v18, v19, "We didn't find any message that contains the summary. Unable to provide feedback.", v20, 2u);
    MEMORY[0x193AF7A40](v20, -1, -1);
  }

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_19093ABC0()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  v4 = *(*v0 + 72);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 144);
  v6 = *(v1 + 136);

  return MEMORY[0x1EEE6DFA0](sub_19093AD60, v6, v5);
}

uint64_t sub_19093AD60()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[13];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_19093AE20()
{
  swift_getKeyPath();
  sub_19093B898();
  sub_190D51C20();

  return *(v0 + 24);
}

uint64_t sub_19093AE94(uint64_t result, uint64_t a2, char a3)
{
  *(result + 24) = a2;
  *(result + 32) = a3 & 1;
  return result;
}

uint64_t sub_19093AEA4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_190221DA4;

  return sub_19093B314();
}

id sub_19093AF34()
{
  v1 = v0;
  swift_getKeyPath();
  sub_19093B898();
  sub_190D51C20();

  v2 = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53040, &unk_190DDF780);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_190DD1D90;
  v4 = [*(v1 + 16) chat];
  if (v2)
  {
    if (v4 && (v5 = v4, v6 = [v4 countOfAttachmentsNotCachedLocally], v5, v6))
    {
      v7 = [v6 integerValue];
    }

    else
    {
      v7 = 0;
    }

    v11 = MEMORY[0x1E69E65A8];
    *(v3 + 56) = MEMORY[0x1E69E6530];
    *(v3 + 64) = v11;
    *(v3 + 32) = v7;
    result = CKFrameworkBundle(v4);
    if (result)
    {
      v13 = result;
LABEL_14:
      v15 = sub_190D56ED0();
      v16 = sub_190D56ED0();
      v17 = [v13 localizedStringForKey:v15 value:0 table:v16];

      sub_190D56F10();
      v18 = sub_190D56EE0();

      return v18;
    }

    __break(1u);
  }

  else
  {
    if (v4 && (v8 = v4, v9 = [v4 countOfAttachmentsNotCachedLocally], v8, v9))
    {
      v10 = [v9 integerValue];
    }

    else
    {
      v10 = 0;
    }

    v14 = MEMORY[0x1E69E65A8];
    *(v3 + 56) = MEMORY[0x1E69E6530];
    *(v3 + 64) = v14;
    *(v3 + 32) = v10;
    result = CKFrameworkBundle(v4);
    if (result)
    {
      v13 = result;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

void sub_19093B1B8()
{
  v1 = *(v0 + 16);
  v2 = [v1 chat];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 countOfAttachmentsNotCachedLocally];

    if (v4)
    {
      [v4 integerValue];
    }
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_19093B898();
  sub_190D51C10();

  v6 = [v1 chat];
  [v6 downloadPurgedAttachments];
}

uint64_t sub_19093B334()
{
  v0[4] = *(v0[3] + 16);
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_19093B3CC;

  return sub_190B1EAA8();
}

uint64_t sub_19093B3CC(char a1)
{
  *(*v1 + 48) = a1;

  return MEMORY[0x1EEE6DFA0](sub_19093B4CC, 0, 0);
}

uint64_t sub_19093B4CC()
{
  if (*(v0 + 48) == 1 && (v1 = [*(v0 + 32) chat]) != 0 && (v2 = v1, v3 = objc_msgSend(v1, sel_countOfAttachmentsNotCachedLocally), v2, v3))
  {
    v4 = [v3 integerValue];
  }

  else
  {
    v4 = 0;
  }

  v5 = *(v0 + 48);
  v6 = *(v0 + 24);
  swift_getKeyPath();
  v7 = swift_task_alloc();
  *(v7 + 16) = v6;
  *(v7 + 24) = v4;
  *(v7 + 32) = (v5 & 1) == 0;
  *(v0 + 16) = v6;
  sub_19093B898();
  sub_190D51C10();

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_19093B634()
{
  v1 = OBJC_IVAR____TtCVV7ChatKit18DetailsInfoTabView29DownloadPurgedAttachmentsView9ViewModel___observationRegistrar;
  v2 = sub_190D51C60();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t _s14descr1F03EBF51O9ViewModelCMa(uint64_t a1)
{
  result = qword_1EAD57530;
  if (!qword_1EAD57530)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_19093B72C(uint64_t a1, __n128 a2)
{
  result = sub_190D51C60();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t _s14descr1F03EBF51O9ViewModelC13DownloadStateOwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s14descr1F03EBF51O9ViewModelC13DownloadStateOwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_19093B838(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_19093B854(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

void sub_19093B884()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v1 + 24) = *(v0 + 24);
  *(v1 + 32) = v2;
}

unint64_t sub_19093B898()
{
  result = qword_1EAD57540;
  if (!qword_1EAD57540)
  {
    _s14descr1F03EBF51O9ViewModelCMa(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD57540);
  }

  return result;
}

id sub_19093B908()
{
  v0 = sub_190D56ED0();
  v1 = [objc_opt_self() _systemImageNamed_];

  v2 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820, &unk_190DD76C0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_190DD55F0;
  *(v3 + 32) = [objc_opt_self() whiteColor];
  sub_1902495E8();
  v4 = sub_190D57160();

  v5 = [objc_opt_self() configurationWithPaletteColors_];

  [v2 setPreferredSymbolConfiguration_];
  [v2 setContentMode_];

  return v2;
}

char *sub_19093BA6C(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC7ChatKit22CKDownloadProgressView_circularProgressView;
  type metadata accessor for CircularProgressView();
  *&v4[v9] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v10 = OBJC_IVAR____TtC7ChatKit22CKDownloadProgressView_stopImageView;
  *&v4[v10] = sub_19093B908();
  v15.receiver = v4;
  v15.super_class = type metadata accessor for CKDownloadProgressView();
  v11 = objc_msgSendSuper2(&v15, sel_initWithFrame_, a1, a2, a3, a4);
  v12 = *&v11[OBJC_IVAR____TtC7ChatKit22CKDownloadProgressView_circularProgressView];
  v13 = v11;
  [v13 addSubview_];
  [v13 addSubview_];

  return v13;
}

id sub_19093BD80(uint64_t *a1, SEL *a2, double a3)
{
  v4 = *a1;
  v5 = *(v3 + *a1);
  if (v5)
  {
    v6 = *(v3 + *a1);
  }

  else
  {
    v7 = sub_19093C304(a2, a3);
    v8 = *(v3 + v4);
    *(v3 + v4) = v7;
    v6 = v7;

    v5 = 0;
  }

  v9 = v5;
  return v6;
}

id sub_19093BDE0(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  *&v7[OBJC_IVAR____TtC7ChatKit20CircularProgressView_lineWidth] = 0x4008000000000000;
  *&v7[OBJC_IVAR____TtC7ChatKit20CircularProgressView_progressValue] = 0;
  *&v7[OBJC_IVAR____TtC7ChatKit20CircularProgressView____lazy_storage___backgroundLayer] = 0;
  *&v7[OBJC_IVAR____TtC7ChatKit20CircularProgressView____lazy_storage___progressLayer] = 0;
  v18.receiver = v7;
  v18.super_class = type metadata accessor for CircularProgressView();
  v12 = objc_msgSendSuper2(&v18, sel_initWithFrame_, a4, a5, a6, a7);
  v13 = [v12 layer];
  v14 = sub_19093BD50();
  [v13 addSublayer_];

  v15 = [v12 layer];
  v16 = sub_19093BD68();
  [v15 addSublayer_];

  return v12;
}

void sub_19093BFDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24.receiver = v3;
  v24.super_class = type metadata accessor for CircularProgressView();
  objc_msgSendSuper2(&v24, sel_layoutSubviews);
  v4 = sub_19093BD50();
  [v3 bounds];
  x = v25.origin.x;
  y = v25.origin.y;
  width = v25.size.width;
  height = v25.size.height;
  MidX = CGRectGetMidX(v25);
  v26.origin.x = x;
  v26.origin.y = y;
  v26.size.width = width;
  v26.size.height = height;
  MidY = CGRectGetMidY(v26);
  [v3 bounds];
  v11 = CGRectGetWidth(v27) * 0.5 + -1.5;
  v12 = objc_opt_self();
  v13 = [v12 bezierPathWithArcCenter:1 radius:MidX startAngle:MidY endAngle:v11 clockwise:{-1.57079633, 4.71238898}];
  v14 = [v13 CGPath];

  [v4 setPath_];
  v15 = sub_19093BD68();
  [v3 bounds];
  v16 = v28.origin.x;
  v17 = v28.origin.y;
  v18 = v28.size.width;
  v19 = v28.size.height;
  v20 = CGRectGetMidX(v28);
  v29.origin.x = v16;
  v29.origin.y = v17;
  v29.size.width = v18;
  v29.size.height = v19;
  v21 = CGRectGetMidY(v29);
  [v3 bounds];
  v22 = [v12 bezierPathWithArcCenter:1 radius:v20 startAngle:v21 endAngle:CGRectGetWidth(v30) * 0.5 + -1.5 clockwise:{-1.57079633, 4.71238898}];
  v23 = [v22 CGPath];

  [v15 setPath_];
}

id sub_19093C25C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_19093C304(SEL *a1, double a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x1E69794A0]) init];
  [v4 setLineWidth_];
  [v4 setLineCap_];
  [v4 setStrokeStart_];
  [v4 setStrokeEnd_];
  [v4 setFillColor_];
  v5 = [objc_opt_self() *a1];
  v6 = [v5 CGColor];

  [v4 setStrokeColor_];
  return v4;
}

id CKPhotoStackBalloonView.currentAssetChatItem.getter()
{
  v1 = [v0 currentAssetReference];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 asset];

    if (v3)
    {
      objc_opt_self();
      v4 = swift_dynamicCastObjCClass();
      if (v4)
      {
        v5 = [v4 chatItem];
        swift_unknownObjectRelease();
        return v5;
      }

      swift_unknownObjectRelease();
    }
  }

  if (qword_1EAD51CD0 != -1)
  {
    swift_once();
  }

  v7 = sub_190D53040();
  __swift_project_value_buffer(v7, qword_1EAD9E0A0);
  v8 = sub_190D53020();
  v9 = sub_190D576A0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_19020E000, v8, v9, "Unexpected: currentAssetReference.asset not recognized as CKMediaObjectBackedAsset", v10, 2u);
    MEMORY[0x193AF7A40](v10, -1, -1);
  }

  return 0;
}

id CKPhotoStackBalloonView.currentAssetRegionOfInterest.getter()
{
  v1 = [v0 currentAssetReference];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 stackView];
    v4 = [v3 regionOfInterestForAssetReference_];
  }

  else
  {
    if (qword_1EAD51CD0 != -1)
    {
      swift_once();
    }

    v5 = sub_190D53040();
    __swift_project_value_buffer(v5, qword_1EAD9E0A0);
    v6 = sub_190D53020();
    v7 = sub_190D576A0();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_19020E000, v6, v7, "Unexpected: currentAssetReference is nil. Cannot generate region of interest", v8, 2u);
      MEMORY[0x193AF7A40](v8, -1, -1);
    }

    return 0;
  }

  return v4;
}

id CKPhotoStackBalloonView.currentAssetSnapshot.getter()
{
  v1 = [v0 currentAssetRegionOfInterest];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 placeholderViewFactory];
    if (v3)
    {
      v4 = v3;
      v5 = (*(v3 + 2))(v3, v2);
      _Block_release(v4);
      v6 = v5;
      swift_unknownObjectRelease();

      return v6;
    }

    if (qword_1EAD51CD0 != -1)
    {
      swift_once();
    }

    v11 = sub_190D53040();
    __swift_project_value_buffer(v11, qword_1EAD9E0A0);
    v12 = sub_190D53020();
    v13 = sub_190D576A0();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_19020E000, v12, v13, "Unexpected: placeholderViewFactory undefined", v14, 2u);
      MEMORY[0x193AF7A40](v14, -1, -1);
    }
  }

  else
  {
    if (qword_1EAD51CD0 != -1)
    {
      swift_once();
    }

    v8 = sub_190D53040();
    __swift_project_value_buffer(v8, qword_1EAD9E0A0);
    v2 = sub_190D53020();
    v9 = sub_190D576A0();
    if (os_log_type_enabled(v2, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_19020E000, v2, v9, "Unexpected: currentAssetRegionOfInterest is nil. Cannot generate snapshot", v10, 2u);
      MEMORY[0x193AF7A40](v10, -1, -1);
    }
  }

  return 0;
}

BOOL CKPhotoStackBalloonView.canPresentTapbackPicker.getter()
{
  v1 = [v0 currentAssetReference];
  v2 = v1;
  if (v1)
  {
  }

  return v2 != 0;
}

id CKTranscriptBackgroundEnvironment.__allocating_init(transcriptLayoutDelegate:)(uint64_t a1)
{
  v2 = objc_allocWithZone(v1);
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v5.receiver = v2;
  v5.super_class = v1;
  v3 = objc_msgSendSuper2(&v5, sel_init);
  swift_unknownObjectRelease();
  return v3;
}

id CKTranscriptBackgroundEnvironment.init(transcriptLayoutDelegate:)(uint64_t a1)
{
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v4.receiver = v1;
  v4.super_class = type metadata accessor for CKTranscriptBackgroundEnvironment();
  v2 = objc_msgSendSuper2(&v4, sel_init);
  swift_unknownObjectRelease();
  return v2;
}

double sub_19093CCF4(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return result;
}

void (*sub_19093CD54(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC7ChatKit33CKTranscriptBackgroundEnvironment_transcriptLayoutDelegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_190863E2C;
}

id CKTranscriptBackgroundEnvironment.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CKTranscriptBackgroundEnvironment.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKTranscriptBackgroundEnvironment();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_19093CF8C(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC7ChatKit25LegacyStoragePluginCounts_nonPurgableFileTypeToSizeMap;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (!*(v6 + 16))
  {
    return 0;
  }

  sub_190D52690();
  v7 = sub_19022DCEC(a1, a2);
  if (v8)
  {
    v9 = *(*(v6 + 56) + 8 * v7);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t sub_19093D024(char a1, uint64_t a2)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = v2;
  *(v3 + 88) = a1;
  v4 = sub_190D53040();
  *(v3 + 32) = v4;
  *(v3 + 40) = *(v4 - 8);
  *(v3 + 48) = swift_task_alloc();
  v5 = sub_190D521F0();
  *(v3 + 56) = v5;
  *(v3 + 64) = *(v5 - 8);
  *(v3 + 72) = swift_task_alloc();
  *(v3 + 80) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19093D150, 0, 0);
}

uint64_t sub_19093D150()
{
  v27 = v0;
  if (qword_1EAD51A38 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 88);
  v6 = __swift_project_value_buffer(v4, qword_1EAD9DB40);
  v7 = *(v2 + 16);
  v7(v1, v6, v4);
  sub_190D521A0();
  *(v3 + OBJC_IVAR____TtC7ChatKit25LegacyStoragePluginCounts_didCalculateForCloudKit) = v5;
  sub_19093D488(v5);
  v7(v1, v6, v4);
  sub_190D521A0();
  if ((v5 & 1) == 0)
  {
    v8 = *(v0 + 24);
    sub_19093E9A0();
    *(v8 + OBJC_IVAR____TtC7ChatKit25LegacyStoragePluginCounts_spaceSavedByDeletingNonSyncedAttachments) = IMDAttachmentRecordGetNonSyncedAttachmentDiskSpace();
  }

  v10 = *(v0 + 64);
  v9 = *(v0 + 72);
  v11 = *(v0 + 56);
  v13 = *(v0 + 16);
  v12 = *(v0 + 24);
  *(v12 + OBJC_IVAR____TtC7ChatKit25LegacyStoragePluginCounts_spaceTakenBySyncedConversations) = sub_190940928(2, v13);
  *(v12 + OBJC_IVAR____TtC7ChatKit25LegacyStoragePluginCounts_spaceTakenByUnsyncedConversations) = sub_190940928(1, v13);
  sub_190D521D0();
  v14 = *(v10 + 8);
  v14(v9, v11);
  sub_190D50920();
  v15 = sub_190D53020();
  v16 = sub_190D57680();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v26 = v18;
    *v17 = 136315138;
    v19 = sub_19093D74C();
    v21 = sub_19021D9F8(v19, v20, &v26);

    *(v17 + 4) = v21;
    _os_log_impl(&dword_19020E000, v15, v16, "Finished Loading: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x193AF7A40](v18, -1, -1);
    MEMORY[0x193AF7A40](v17, -1, -1);
  }

  v22 = *(v0 + 80);
  v23 = *(v0 + 56);
  sub_190D521D0();
  v14(v22, v23);

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_19093D488(char a1)
{
  v2 = v1;
  v4 = sub_190D53040();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_190D521F0();
  v21 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EAD51A38 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v4, qword_1EAD9DB40);
  v12 = sub_190D53020();
  v13 = sub_190D57680();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v20 = v8;
    v15 = v2;
    v16 = v14;
    *v14 = 67109120;
    *(v14 + 4) = a1 & 1;
    _os_log_impl(&dword_19020E000, v12, v13, "Starting to set counts, isCloudKitEnabled: %{BOOL}d...", v14, 8u);
    v17 = v16;
    v2 = v15;
    v8 = v20;
    MEMORY[0x193AF7A40](v17, -1, -1);
  }

  (*(v5 + 16))(v7, v11, v4);
  sub_190D521A0();
  if (a1)
  {
    sub_19093E320();
  }

  else
  {
    *(v2 + OBJC_IVAR____TtC7ChatKit25LegacyStoragePluginCounts_totalSpaceOfAttachments) = sub_1909401C0(v18);
  }

  sub_190D521D0();
  return (*(v21 + 8))(v10, v8);
}

uint64_t sub_19093D74C()
{
  sub_190D582B0();
  MEMORY[0x193AF28B0](0xD000000000000038, 0x8000000190E67AC0);
  v1 = sub_190D58720();
  MEMORY[0x193AF28B0](v1);

  MEMORY[0x193AF28B0](0xD00000000000002FLL, 0x8000000190E67B00);
  v2 = sub_190D58720();
  MEMORY[0x193AF28B0](v2);

  MEMORY[0x193AF28B0](0xD000000000000023, 0x8000000190E67B30);
  swift_beginAccess();
  sub_190D52690();
  v3 = sub_190D56DA0();
  v5 = v4;

  MEMORY[0x193AF28B0](v3, v5);

  MEMORY[0x193AF28B0](0xD000000000000027, 0x8000000190E67B60);
  v6 = sub_190D58720();
  MEMORY[0x193AF28B0](v6);

  MEMORY[0x193AF28B0](0xD000000000000026, 0x8000000190E67B90);
  v7 = OBJC_IVAR____TtC7ChatKit25LegacyStoragePluginCounts_spaceTakenBySyncedConversations;
  v8 = sub_190D58720();
  MEMORY[0x193AF28B0](v8);

  MEMORY[0x193AF28B0](0xD000000000000028, 0x8000000190E67BC0);
  v9 = OBJC_IVAR____TtC7ChatKit25LegacyStoragePluginCounts_spaceTakenByUnsyncedConversations;
  v10 = sub_190D58720();
  MEMORY[0x193AF28B0](v10);

  result = MEMORY[0x193AF28B0](0xD000000000000023, 0x8000000190E67BF0);
  if (__OFADD__(*(v0 + v7), *(v0 + v9)))
  {
    __break(1u);
  }

  else
  {
    v12 = sub_190D58720();
    MEMORY[0x193AF28B0](v12);

    MEMORY[0x193AF28B0](0xD000000000000027, 0x8000000190E67C20);
    v13 = sub_190D58720();
    MEMORY[0x193AF28B0](v13);

    MEMORY[0x193AF28B0](0xD00000000000001ELL, 0x8000000190E67C50);
    if (*(v0 + OBJC_IVAR____TtC7ChatKit25LegacyStoragePluginCounts_didCalculateForCloudKit))
    {
      v14 = 1702195828;
    }

    else
    {
      v14 = 0x65736C6166;
    }

    if (*(v0 + OBJC_IVAR____TtC7ChatKit25LegacyStoragePluginCounts_didCalculateForCloudKit))
    {
      v15 = 0xE400000000000000;
    }

    else
    {
      v15 = 0xE500000000000000;
    }

    MEMORY[0x193AF28B0](v14, v15);

    return 0;
  }

  return result;
}

uint64_t sub_19093DAF4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_190D53040();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_190D521F0();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19093DC10, 0, 0);
}

uint64_t sub_19093DC10()
{
  if (qword_1EAD51F80 != -1)
  {
    swift_once();
  }

  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = __swift_project_value_buffer(v3, qword_1EAD9E510);
  (*(v2 + 16))(v1, v4, v3);
  sub_190D521A0();
  result = IMDAttachmentRecordEstimateSpaceTakenByAttachmentsOlderThanDays();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = v0[8];
    v6 = v0[9];
    v8 = v0[7];
    *(v0[3] + OBJC_IVAR____TtC7ChatKit25LegacyStoragePluginCounts_spaceSavedByAutoDeletingMessages) = result;
    sub_190D521D0();
    (*(v7 + 8))(v6, v8);

    v9 = v0[1];

    return v9();
  }

  return result;
}

void sub_19093DD8C()
{
  if (qword_1EAD51A38 != -1)
  {
    swift_once();
  }

  v0 = sub_190D53040();
  __swift_project_value_buffer(v0, qword_1EAD9DB40);
  sub_190D50920();
  oslog = sub_190D53020();
  v1 = sub_190D57680();

  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v8 = v3;
    *v2 = 136315138;
    v4 = sub_19093D74C();
    v6 = sub_19021D9F8(v4, v5, &v8);

    *(v2 + 4) = v6;
    _os_log_impl(&dword_19020E000, oslog, v1, "Finished Loading: %s", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v3);
    MEMORY[0x193AF7A40](v3, -1, -1);
    MEMORY[0x193AF7A40](v2, -1, -1);
  }
}

uint64_t sub_19093DEF0()
{
  sub_19022EEA4(v0 + OBJC_IVAR____TtC7ChatKit25LegacyStoragePluginCounts_cachedDate, &unk_1EAD5E5D0, &unk_190DE0210);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LegacyStoragePluginCounts(uint64_t a1)
{
  result = qword_1EAD57590;
  if (!qword_1EAD57590)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_19093DFD8(uint64_t a1)
{
  sub_1908808B4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_19093E154()
{
  v1 = *(*v0 + OBJC_IVAR____TtC7ChatKit25LegacyStoragePluginCounts_spaceTakenBySyncedConversations);
  v2 = *(*v0 + OBJC_IVAR____TtC7ChatKit25LegacyStoragePluginCounts_spaceTakenByUnsyncedConversations);
  result = v1 + v2;
  if (__OFADD__(v1, v2))
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_19093E1BC(char a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_190221DA4;

  return sub_19093D024(a1, a2);
}

uint64_t sub_19093E264(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_190221DA0;

  return sub_19093DAF4(a1);
}

uint64_t sub_19093E320()
{
  v0 = sub_190D53040();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_190D521F0();
  v39 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v37 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v34 - v6;
  if (qword_1EAD51A38 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v0, qword_1EAD9DB40);
  v9 = *(v1 + 16);
  v9(v3, v8, v0);
  v32 = 133;
  v36 = "gMessages(withThresholdDays:)";
  v38 = v7;
  sub_190D521A0();
  v10 = sub_190D53020();
  v11 = sub_190D57680();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_19020E000, v10, v11, "Setting counts for CloudKit enabled storage.", v12, 2u);
    MEMORY[0x193AF7A40](v12, -1, -1);
  }

  v45 = 0;
  v46 = 0;
  v43 = 0;
  v44 = 0;
  v42 = 0;
  v9(v3, v8, v0);
  v35 = v9;
  v13 = v40;
  v32 = sub_190940E58;
  v33 = v40;
  v14 = v37;
  sub_190D521B0();
  v15 = v39[1];
  v16 = v41;
  v15(v14, v41);
  v17 = [*(v13 + OBJC_IVAR____TtC7ChatKit25LegacyStoragePluginCounts_messageDirectoryContents) allDirectoryContents];
  v18 = v0;
  v19 = v17;
  v20 = v35(v3, v8, v18);
  MEMORY[0x1EEE9AC00](v20);
  v39 = v19;
  *(&v34 - 8) = v19;
  *(&v34 - 7) = v13;
  *(&v34 - 6) = &v44;
  *(&v34 - 5) = &v46;
  *(&v34 - 4) = &v42;
  *(&v34 - 3) = &v45;
  v32 = sub_190940E70;
  v33 = &v34 - 10;
  sub_190D521B0();
  v15(v14, v16);
  v21 = sub_190D53020();
  v22 = sub_190D57680();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 134217984;
    swift_beginAccess();
    *(v23 + 4) = v42;
    _os_log_impl(&dword_19020E000, v21, v22, "Total size of live photo videos attributed to photos section: %lld", v23, 0xCu);
    MEMORY[0x193AF7A40](v23, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD575A0, &qword_190DE0220);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_190DDD0E0;
  *(inited + 32) = 0x6F746F6850;
  v25 = v46;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = v25;
  *(inited + 56) = 0x6F65646956;
  *(inited + 64) = 0xE500000000000000;
  *(inited + 72) = v45;
  strcpy((inited + 80), "GIFOrSticker");
  v26 = v44;
  *(inited + 93) = 0;
  *(inited + 94) = -5120;
  *(inited + 96) = v26;
  *(inited + 104) = 0x726568744FLL;
  *(inited + 112) = 0xE500000000000000;
  *(inited + 120) = v43;
  v27 = sub_190822234(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD575A8, &qword_190DE0228);
  swift_arrayDestroy();

  v28 = OBJC_IVAR____TtC7ChatKit25LegacyStoragePluginCounts_nonPurgableFileTypeToSizeMap;
  v29 = v40;
  swift_beginAccess();
  *(v29 + v28) = v27;

  *(v29 + OBJC_IVAR____TtC7ChatKit25LegacyStoragePluginCounts_spaceSavedByDeletingNonSyncedAttachments) = *(v29 + OBJC_IVAR____TtC7ChatKit25LegacyStoragePluginCounts_totalSpaceOfNonPurgeableAttachments);
  v30 = v38;
  sub_190D521D0();
  return (v15)(v30, v41);
}

uint64_t sub_19093E9A0()
{
  v1 = v0;
  v2 = sub_190D53040();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  isUniquelyReferenced_nonNull_native = sub_190D521F0();
  v7 = *(isUniquelyReferenced_nonNull_native - 8);
  MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EAD51A38 != -1)
  {
LABEL_31:
    swift_once();
  }

  v10 = __swift_project_value_buffer(v2, qword_1EAD9DB40);
  (*(v3 + 16))(v5, v10, v2);
  sub_190D521A0();
  v11 = sub_190822234(MEMORY[0x1E69E7CC0]);
  v12 = OBJC_IVAR____TtC7ChatKit25LegacyStoragePluginCounts_nonPurgableFileTypeToSizeMap;
  swift_beginAccess();
  v49 = v12;
  *(v1 + v12) = v11;

  v2 = OBJC_IVAR____TtC7ChatKit25LegacyStoragePluginCounts_totalSpaceOfAttachments;
  *(v1 + OBJC_IVAR____TtC7ChatKit25LegacyStoragePluginCounts_totalSpaceOfAttachments) = 0;
  v13 = IMDAttachmentSpaceTakenByAttachmentClass();
  if (!v13)
  {
LABEL_26:
    sub_190D521D0();
    return (*(v7 + 8))(v9, isUniquelyReferenced_nonNull_native);
  }

  v5 = v13;
  v41 = v9;
  v42 = v7;
  v43 = isUniquelyReferenced_nonNull_native;
  sub_1902188FC(0, &qword_1EAD46510, 0x1E696AD98);
  v14 = sub_190D56D90();

  v7 = 0;
  v16 = v14 + 64;
  v15 = *(v14 + 64);
  v46 = v14;
  v17 = 1 << *(v14 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v15;
  v3 = (v17 + 63) >> 6;
  v44 = v1;
  v45 = v3;
  while (1)
  {
    if (!v19)
    {
      while (1)
      {
        v21 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        if (v21 >= v3)
        {

          v7 = v42;
          isUniquelyReferenced_nonNull_native = v43;
          v9 = v41;
          goto LABEL_26;
        }

        v19 = *(v16 + 8 * v21);
        ++v7;
        if (v19)
        {
          v7 = v21;
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

LABEL_13:
    v22 = __clz(__rbit64(v19)) | (v7 << 6);
    v23 = (*(v46 + 48) + 16 * v22);
    v24 = *v23;
    v9 = v23[1];
    v25 = *(*(v46 + 56) + 8 * v22);
    sub_190D52690();
    v5 = v25;
    v26 = [v5 longLongValue];
    v27 = *(v1 + v2);
    v28 = __OFADD__(v27, v26);
    v29 = &v26[v27];
    if (v28)
    {
      goto LABEL_28;
    }

    v47 = v5;
    v48 = v26;
    v3 = v2;
    *(v1 + v2) = v29;
    v2 = v49;
    swift_beginAccess();
    sub_190D52690();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v50 = *(v1 + v2);
    v5 = v50;
    *(v1 + v2) = 0x8000000000000000;
    v30 = sub_19022DCEC(v24, v9);
    v32 = *(v5 + 16);
    v33 = (v31 & 1) == 0;
    v28 = __OFADD__(v32, v33);
    v34 = v32 + v33;
    if (v28)
    {
      goto LABEL_29;
    }

    v1 = v31;
    if (*(v5 + 24) < v34)
    {
      break;
    }

    v2 = v24;
    v36 = v3;
    if (isUniquelyReferenced_nonNull_native)
    {
      v3 = v45;
      if (v31)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v5 = &v50;
      isUniquelyReferenced_nonNull_native = v30;
      sub_190B6893C();
      v30 = isUniquelyReferenced_nonNull_native;
      v3 = v45;
      if (v1)
      {
LABEL_6:
        v5 = v30;

        v20 = v50;
        *(v50[7] + 8 * v5) = v48;
        goto LABEL_7;
      }
    }

LABEL_21:
    v20 = v50;
    v50[(v30 >> 6) + 8] |= 1 << v30;
    v37 = (v20[6] + 16 * v30);
    *v37 = v2;
    v37[1] = v9;
    *(v20[7] + 8 * v30) = v48;
    v38 = v20[2];
    v28 = __OFADD__(v38, 1);
    v39 = v38 + 1;
    if (v28)
    {
      goto LABEL_30;
    }

    v20[2] = v39;
LABEL_7:
    v19 &= v19 - 1;
    v1 = v44;
    *(v44 + v49) = v20;
    swift_endAccess();

    v2 = v36;
  }

  sub_190B63ED8(v34, isUniquelyReferenced_nonNull_native);
  v5 = v50;
  v2 = v24;
  v30 = sub_19022DCEC(v24, v9);
  if ((v1 & 1) == (v35 & 1))
  {
    v36 = v3;
    v3 = v45;
    if (v1)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

  result = sub_190D587C0();
  __break(1u);
  return result;
}

void sub_19093EEB0(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v149 = a7;
  v152 = a6;
  v148 = a5;
  v153 = a4;
  v156 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55088, &qword_190DE0230);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v168 = &v147 - v10;
  v177 = sub_190D52E90();
  v11 = *(v177 - 8);
  MEMORY[0x1EEE9AC00](v177);
  v165 = &v147 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v160 = &v147 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v166 = &v147 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD575B0, &qword_190DE0238);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v182 = &v147 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v187 = &v147 - v20;
  v180 = sub_190D515F0();
  v21 = *(v180 - 8);
  MEMORY[0x1EEE9AC00](v180 - 8);
  v172 = &v147 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v24 = MEMORY[0x1EEE9AC00](v23).n128_u64[0];
  v186 = &v147 - v25;
  v151 = a1;
  v26 = [a1 fileInfoMap];
  v150 = sub_1902188FC(0, &qword_1EAD575B8, 0x1E69A8038);
  v27 = sub_190D56D90();

  v29 = a2;
  v30 = 0;
  v181 = 0;
  v32 = v27 + 64;
  v31 = *(v27 + 64);
  v185 = v27;
  v33 = 1 << *(v27 + 32);
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v35 = v34 & v31;
  v173 = OBJC_IVAR____TtC7ChatKit25LegacyStoragePluginCounts_totalSpaceOfAttachments;
  v164 = OBJC_IVAR____TtC7ChatKit25LegacyStoragePluginCounts_totalSpaceOfNonPurgeableAttachments;
  v36 = (v33 + 63) >> 6;
  v171 = (v21 + 16);
  v179 = (v21 + 8);
  v170 = *MEMORY[0x1E695DAA0];
  v163 = (v11 + 48);
  v159 = (v11 + 32);
  v157 = (v11 + 16);
  v158 = v11 + 8;
  v162 = (v11 + 56);
  *&v28 = 136315138;
  v174 = v28;
  *&v28 = 136315394;
  v161 = v28;
  *(&v37 + 1) = 2;
  v169 = xmmword_190DD1D90;
  *&v37 = 136315650;
  v155 = v37;
  v167 = a2;
  v183 = v36;
  v184 = v27 + 64;
  while (v35)
  {
    v38 = v30;
LABEL_10:
    v39 = __clz(__rbit64(v35)) | (v38 << 6);
    v40 = (*(v185 + 48) + 16 * v39);
    v42 = *v40;
    v41 = v40[1];
    v43 = *(*(v185 + 56) + 8 * v39);
    v44 = qword_1EAD51A38;
    sub_190D52690();
    v45 = v43;
    if (v44 != -1)
    {
      swift_once();
    }

    v46 = sub_190D53040();
    v47 = __swift_project_value_buffer(v46, qword_1EAD9DB40);
    sub_190D52690();
    v188 = v47;
    v48 = sub_190D53020();
    v49 = sub_190D57690();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = v42;
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v189[0] = v52;
      *v51 = v174;
      *(v51 + 4) = sub_19021D9F8(v50, v41, v189);
      _os_log_impl(&dword_19020E000, v48, v49, "checking: %s", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v52);
      v53 = v52;
      v32 = v184;
      MEMORY[0x193AF7A40](v53, -1, -1);
      v54 = v51;
      v42 = v50;
      MEMORY[0x193AF7A40](v54, -1, -1);
    }

    v55 = v45;
    if ([v55 isAttachment])
    {
      [v55 fileSize];
      if (v56 < 0)
      {
        goto LABEL_74;
      }

      v57 = *(v29 + v173);
      v58 = __OFADD__(v57, v56);
      v59 = v57 + v56;
      if (v58)
      {
        goto LABEL_75;
      }

      *(v29 + v173) = v59;
    }

    v35 &= v35 - 1;
    if ([v55 isPurgableOnDisk])
    {
      if ([v55 isAttachment])
      {
        [v55 fileSize];
        if (v60 < 0)
        {
          goto LABEL_76;
        }

        v61 = *(v29 + v164);
        v58 = __OFADD__(v61, v60);
        v62 = v61 + v60;
        if (v58)
        {
          goto LABEL_77;
        }

        *(v29 + v164) = v62;
      }

      v63 = v186;
      sub_190D51540();
      v64 = v172;
      v65 = v180;
      (*v171)(v172, v63, v180);
      sub_190D52690();
      v66 = sub_190D53020();
      v67 = sub_190D57690();

      v68 = os_log_type_enabled(v66, v67);
      v178 = v55;
      v176 = v42;
      if (v68)
      {
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v189[0] = v70;
        *v69 = v161;
        sub_190940EE0();
        v71 = sub_190D58720();
        v72 = v64;
        v74 = v73;
        v175 = *v179;
        v175(v72, v65);
        v75 = sub_19021D9F8(v71, v74, v189);

        *(v69 + 4) = v75;
        *(v69 + 12) = 2080;
        *(v69 + 14) = sub_19021D9F8(v176, v41, v189);
        _os_log_impl(&dword_19020E000, v66, v67, "url: %s, attachmentPath: %s", v69, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x193AF7A40](v70, -1, -1);
        MEMORY[0x193AF7A40](v69, -1, -1);
      }

      else
      {

        v175 = *v179;
        v175(v64, v65);
      }

      v76 = v168;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD575C0, &unk_190DE0240);
      inited = swift_initStackObject();
      *(inited + 16) = v169;
      v78 = v170;
      *(inited + 32) = v170;
      v79 = v78;
      sub_1908AFE58(inited);
      swift_setDeallocating();
      sub_190940E84(inited + 32);
      v80 = v181;
      sub_190D51530();
      if (v80)
      {

        v181 = 0;
        v81 = 1;
      }

      else
      {
        v181 = 0;
        v81 = 0;
      }

      v82 = sub_190D51270();
      v83 = *(v82 - 8);
      v84 = v187;
      (*(v83 + 56))(v187, v81, 1, v82);
      v85 = v182;
      sub_19022FD14(v84, v182, &qword_1EAD575B0, &qword_190DE0238);
      if ((*(v83 + 48))(v85, 1, v82) == 1)
      {
        v86 = v178;

        sub_19022EEA4(v85, &qword_1EAD575B0, &qword_190DE0238);
        (*v162)(v76, 1, 1, v177);
        goto LABEL_33;
      }

      sub_190D51240();
      (*(v83 + 8))(v182, v82);
      v87 = v177;
      if ((*v163)(v76, 1, v177) == 1)
      {
        v86 = v178;

LABEL_33:
        sub_19022EEA4(v76, &qword_1EAD55088, &qword_190DE0230);
        sub_190D52690();
        v88 = sub_190D53020();
        v89 = sub_190D576A0();

        if (os_log_type_enabled(v88, v89))
        {
          v90 = v86;
          v91 = swift_slowAlloc();
          v92 = swift_slowAlloc();
          v189[0] = v92;
          *v91 = v174;
          v93 = sub_19021D9F8(v176, v41, v189);

          *(v91 + 4) = v93;
          _os_log_impl(&dword_19020E000, v88, v89, "Failed to get UTI type for file at path: %s", v91, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v92);
          MEMORY[0x193AF7A40](v92, -1, -1);
          MEMORY[0x193AF7A40](v91, -1, -1);
        }

        else
        {
        }

        sub_19022EEA4(v187, &qword_1EAD575B0, &qword_190DE0238);
        v175(v186, v180);
        v30 = v38;
        v29 = v167;
        v36 = v183;
        v32 = v184;
      }

      else
      {
        v94 = v166;
        (*v159)(v166, v76, v87);
        [v178 fileSize];
        v95 = v160;
        v154 = v96;
        if (v96 < 0)
        {
          goto LABEL_78;
        }

        (*v157)(v160, v94, v87);
        sub_190D52690();
        v97 = sub_190D53020();
        v98 = sub_190D57690();

        if (os_log_type_enabled(v97, v98))
        {
          v99 = swift_slowAlloc();
          v188 = swift_slowAlloc();
          v189[0] = v188;
          *v99 = v155;
          v100 = sub_19021D9F8(v176, v41, v189);

          *(v99 + 4) = v100;
          *(v99 + 12) = 2080;
          v101 = sub_190D52DF0();
          v103 = v102;
          v104 = *v158;
          v105 = v158 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          (*v158)(v95, v177);
          v106 = sub_19021D9F8(v101, v103, v189);

          *(v99 + 14) = v106;
          *(v99 + 22) = 2048;
          v107 = v154;
          *(v99 + 24) = v154;
          v108 = v105;
          _os_log_impl(&dword_19020E000, v97, v98, "%s, utitype: %s, size: %lld", v99, 0x20u);
          v109 = v188;
          swift_arrayDestroy();
          MEMORY[0x193AF7A40](v109, -1, -1);
          MEMORY[0x193AF7A40](v99, -1, -1);

          v110 = v107;
        }

        else
        {

          v104 = *v158;
          v111 = v95;
          v108 = v158 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          (*v158)(v111, v177);
          v110 = v154;
        }

        sub_190D52E20();
        v112 = sub_190D52E70();
        v113 = v165;
        v114 = v112;
        v115 = v177;
        v188 = v104;
        v176 = v108;
        v104(v165, v177);
        v116 = v178;
        if ((v114 & 1) != 0 || [v178 isSticker])
        {

          v188(v166, v115);
          sub_19022EEA4(v187, &qword_1EAD575B0, &qword_190DE0238);
          v175(v186, v180);
          v117 = v156;
          v118 = *v156 + v110;
          if (__OFADD__(*v156, v110))
          {
            goto LABEL_79;
          }

LABEL_44:
          *v117 = v118;
          v30 = v38;
          v36 = v183;
          v32 = v184;
          v29 = v167;
        }

        else
        {
          sub_190D52E40();
          v119 = v113;
          v120 = v166;
          v121 = sub_190D52E70();
          v122 = v177;
          v123 = v121;
          v124 = v188;
          v188(v119, v177);
          if (v123)
          {

            v124(v120, v122);
            sub_19022EEA4(v187, &qword_1EAD575B0, &qword_190DE0238);
            v175(v186, v180);
            v117 = v153;
            v118 = *v153 + v154;
            if (__OFADD__(*v153, v154))
            {
              goto LABEL_80;
            }

            goto LABEL_44;
          }

          sub_190D52E60();
          v125 = sub_190D52E70();
          v124(v119, v177);
          if ((v125 & 1) == 0)
          {
            v126 = v165;
            sub_190D52E50();
            v127 = sub_190D52E70();
            v128 = v177;
            v129 = v127;
            v124(v126, v177);
            if ((v129 & 1) == 0)
            {

              v124(v120, v128);
              sub_19022EEA4(v187, &qword_1EAD575B0, &qword_190DE0238);
              v175(v186, v180);
              v117 = v149;
              v118 = *v149 + v154;
              if (__OFADD__(*v149, v154))
              {
                goto LABEL_82;
              }

              goto LABEL_44;
            }
          }

          v130 = [v116 path];
          if (!v130)
          {
            sub_190D56F10();
            v130 = sub_190D56ED0();
          }

          v131 = [v130 im_livePhotoImagePath];

          v132 = v116;
          if (!v131)
          {
            goto LABEL_69;
          }

          v133 = sub_190D56F10();
          v135 = v134;

          v136 = [v151 fileInfoMap];
          v137 = sub_190D56D90();

          if (!*(v137 + 16))
          {

LABEL_68:

            v116 = v178;
            v132 = v178;
LABEL_69:

            v188(v166, v177);
            sub_19022EEA4(v187, &qword_1EAD575B0, &qword_190DE0238);
            v175(v186, v180);
            goto LABEL_70;
          }

          v138 = sub_19022DCEC(v133, v135);
          v140 = v139;

          if ((v140 & 1) == 0)
          {
            goto LABEL_68;
          }

          v132 = *(*(v137 + 56) + 8 * v138);

          v116 = v178;
          v141 = [v178 path];

          if (!v141)
          {
            sub_190D56F10();
            v141 = sub_190D56ED0();
          }

          v142 = [v141 im_isLivePhoto];

          if (!v142)
          {
            goto LABEL_69;
          }

          v143 = [v132 isPurgableOnDisk];

          v188(v166, v177);
          sub_19022EEA4(v187, &qword_1EAD575B0, &qword_190DE0238);
          v175(v186, v180);
          if ((v143 & 1) == 0)
          {
            v144 = v154;
            v36 = v183;
            v32 = v184;
            v29 = v167;
            if (__OFADD__(*v148, v154))
            {
              goto LABEL_83;
            }

            *v148 += v154;
            v145 = v153;
            v146 = *v153 + v144;
            if (__OFADD__(*v153, v144))
            {
              goto LABEL_84;
            }

            goto LABEL_71;
          }

LABEL_70:
          v145 = v152;
          v146 = *v152 + v154;
          v36 = v183;
          v32 = v184;
          v29 = v167;
          if (__OFADD__(*v152, v154))
          {
            goto LABEL_81;
          }

LABEL_71:
          *v145 = v146;
          v30 = v38;
        }
      }
    }

    else
    {

      v30 = v38;
      v36 = v183;
    }
  }

  while (1)
  {
    v38 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v38 >= v36)
    {

      return;
    }

    v35 = *(v32 + 8 * v38);
    ++v30;
    if (v35)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
}

uint64_t sub_190940154()
{
  v0 = sub_190D53040();
  __swift_allocate_value_buffer(v0, qword_1EAD9DB40);
  __swift_project_value_buffer(v0, qword_1EAD9DB40);
  sub_190D53010();
  return sub_190D53030();
}

id sub_1909401C0(__n128 a1)
{
  v45 = sub_190D51270();
  v44 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v2 = &v40 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F20, &unk_190DD75D0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v40 - v4;
  v6 = sub_190D515F0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v52 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v40 - v10;
  v12 = sub_190D53040();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_190D521F0();
  v16 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EAD51A38 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v12, qword_1EAD9DB40);
  (*(v13 + 16))(v15, v19, v12);
  v42 = v18;
  sub_190D521A0();
  v20 = [objc_opt_self() defaultManager];
  result = CKAttachmentsDirectoryURL(v20);
  if (result)
  {
    v22 = result;
    sub_190D515B0();

    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD575C0, &unk_190DE0240);
    v23 = swift_allocObject();
    v50 = xmmword_190DD1D90;
    *(v23 + 16) = xmmword_190DD1D90;
    v24 = *MEMORY[0x1E695DC58];
    *(v23 + 32) = *MEMORY[0x1E695DC58];
    v49 = v24;
    v25 = sub_190D57660();

    v26 = *(v7 + 8);
    v48 = v7 + 8;
    v47 = v26;
    v26(v11, v6);
    v27 = v52;
    v53 = v25;
    if (v25)
    {
      v41 = v16;
      v46 = 0;
      v28 = (v7 + 56);
      v16 = v7 + 48;
      v40 = v7;
      v7 += 32;
      ++v44;
      while (1)
      {
        if ([v53 nextObject])
        {
          sub_190D58140();
          swift_unknownObjectRelease();
        }

        else
        {
          v54 = 0u;
          v55 = 0u;
        }

        v56 = v54;
        v57 = v55;
        if (!*(&v55 + 1))
        {

          v7 = v40;
          v38 = v43;
          v16 = v41;
          v37 = v46;
          goto LABEL_17;
        }

        v29 = swift_dynamicCast();
        (*v28)(v5, v29 ^ 1u, 1, v6);
        if ((*v16)(v5, 1, v6) == 1)
        {
          break;
        }

        (*v7)(v27, v5, v6);
        inited = swift_initStackObject();
        *(inited + 16) = v50;
        v31 = v49;
        *(inited + 32) = v49;
        v32 = v31;
        sub_1908AFE58(inited);
        swift_setDeallocating();
        v27 = v52;
        sub_190940E84(inited + 32);
        sub_190D51530();

        v33 = sub_190D51260();
        v35 = v34;
        (*v44)(v2, v45);
        v47(v27, v6);
        if ((v35 & 1) == 0)
        {
          v36 = __OFADD__(v46, v33);
          v46 += v33;
          if (v36)
          {
            __break(1u);
            goto LABEL_15;
          }
        }
      }

      v38 = v43;
      v16 = v41;
      v39 = v42;
      v37 = v46;
    }

    else
    {
LABEL_15:
      v37 = 0;
      v56 = 0u;
      v57 = 0u;
      v38 = v43;
LABEL_17:
      sub_19022EEA4(&v56, &unk_1EAD551C0, &unk_190DD9790);
      (*(v7 + 56))(v5, 1, 1, v6);
      v39 = v42;
    }

    sub_19022EEA4(v5, &unk_1EAD55F20, &unk_190DD75D0);
    sub_190D521D0();
    (*(v16 + 8))(v39, v38);
    return v37;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_190940928(uint64_t a1, uint64_t a2)
{
  v4 = sub_190D53040();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_190D521F0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EAD51A38 != -1)
  {
    goto LABEL_23;
  }

  while (1)
  {
    v12 = __swift_project_value_buffer(v4, qword_1EAD9DB40);
    (*(v5 + 16))(v7, v12, v4);
    result = sub_190D521A0();
    if (a1 < 0)
    {
      __break(1u);
      return result;
    }

    v14 = IMDAttachmentFindLargestConversations();
    if (!v14)
    {
      break;
    }

    v15 = v14;
    v38 = v11;
    v39 = v9;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5C270, &qword_190DFD960);
    v9 = sub_190D57180();

    sub_190D52690();
    v17 = sub_190D53020();
    v18 = sub_190D57680();

    v19 = os_log_type_enabled(v17, v18);
    v40 = v8;
    v41 = a1;
    v37 = v12;
    if (v19)
    {
      v20 = a2;
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v44[0] = v22;
      *v21 = 136315138;
      v23 = MEMORY[0x193AF2A20](v9, v16);
      v25 = sub_19021D9F8(v23, v24, v44);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_19020E000, v17, v18, "Found dbLargestConversations: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x193AF7A40](v22, -1, -1);
      v26 = v21;
      a2 = v20;
      MEMORY[0x193AF7A40](v26, -1, -1);
    }

    v36 = objc_autoreleasePoolPush();
    v8 = 0;
    v7 = 0;
    a1 = *(v9 + 16);
    v4 = (a2 & ~(a2 >> 63)) + 1;
    v5 = 1702521203;
    v11 = MEMORY[0x1E69E6158];
    a2 = 0xE400000000000000;
    while (1)
    {
      if (a1 == v8)
      {
LABEL_16:

        objc_autoreleasePoolPop(v36);
        v8 = v40;
        a1 = v41;
        v11 = v38;
        v9 = v39;
        goto LABEL_18;
      }

      if (v8 >= *(v9 + 16))
      {
        break;
      }

      v27 = *(v9 + 8 * v8 + 32);
      v42 = 1702521203;
      v43 = 0xE400000000000000;
      sub_190D52690();
      sub_190D58230();
      if (*(v27 + 16) && (v28 = sub_190875C84(v44), (v29 & 1) != 0))
      {
        sub_19021834C(*(v27 + 56) + 32 * v28, v45);
        sub_19084CFD0(v44);

        sub_1902188FC(0, &qword_1EAD46510, 0x1E696AD98);
        if (swift_dynamicCast())
        {
          v30 = v42;
          v5 = [v42 longLongValue];

          v31 = __OFADD__(v7, v5);
          v7 += v5;
          if (v31)
          {
            goto LABEL_22;
          }

          v5 = 1702521203;
        }
      }

      else
      {

        sub_19084CFD0(v44);
      }

      if (v4 == ++v8)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    swift_once();
  }

  v7 = 0;
LABEL_18:
  v32 = sub_190D53020();
  v33 = sub_190D57680();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 134218240;
    *(v34 + 4) = v7;
    *(v34 + 12) = 2048;
    *(v34 + 14) = a1;
    _os_log_impl(&dword_19020E000, v32, v33, "Fetched cached space used for conversations: %lld with option: %lu", v34, 0x16u);
    MEMORY[0x193AF7A40](v34, -1, -1);
  }

  sub_190D521D0();
  (*(v9 + 8))(v11, v8);
  return v7;
}

uint64_t sub_190940E84(uint64_t a1)
{
  type metadata accessor for URLResourceKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_190940EE0()
{
  result = qword_1EAD55F30;
  if (!qword_1EAD55F30)
  {
    sub_190D515F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD55F30);
  }

  return result;
}

Swift::Void __swiftcall CKTranscriptBalloonCell.configureContactImageStrokeView()()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = [v2 isTranscriptBackgroundActive];

  if (v3)
  {
    v36 = [v1 contactImageView];
    if (v36)
    {
      v4 = [v1 avatarStrokeView];
      if (!v4)
      {
        type metadata accessor for VibrancyCircleBackgroundView();
        v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
        [v1 setAvatarStrokeView_];
        v4 = v5;
      }

      v6 = [v1 avatarStrokeView];
      if (!v6)
      {
        goto LABEL_20;
      }

      v7 = v6;
      v8 = [v1 traitCollection];
      [v8 displayScale];
      v10 = v9;

      [v36 frame];
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v18 = v17;
      v19 = [objc_opt_self() sharedBehaviors];
      if (!v19)
      {
        __break(1u);
        return;
      }

      v20 = v19;
      [v19 balloonOutlineWidthForScreenScale_];
      v22 = v21;

      v23 = UIEdgeInsetsOutsetRect(v12, v14, v16, v18, v22, v22);
      v25 = v24;
      v27 = v26;
      v29 = v28;
      v30 = [v7 superview];
      v31 = [v1 contentView];
      v32 = v31;
      if (v30)
      {
        if (v31)
        {
          sub_190861700();
          v33 = sub_190D57D90();

          if (v33)
          {
            goto LABEL_19;
          }

          goto LABEL_18;
        }

        v32 = v30;
      }

      else if (!v31)
      {
        goto LABEL_19;
      }

LABEL_18:
      v35 = [v1 contentView];
      [v35 insertSubview:v7 belowSubview:v36];

LABEL_19:
      [v7 setHidden_];
      [v7 setFrame_];

LABEL_20:

      return;
    }
  }

  v34 = [v1 avatarStrokeView];
  [v34 removeFromSuperview];

  [v1 setAvatarStrokeView_];
}

id sub_19094135C(void *a1, void *a2, double a3, double a4)
{
  v8 = [objc_opt_self() blackColor];
  [v8 set];

  [a1 fillRect_];
  [a2 size];
  v10 = (a3 - v9) * 0.5;
  [a2 size];
  v12 = (a4 - v11) * 0.5;

  return [a2 drawAtPoint_];
}

id CKAudioMessageImageUtilities.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CKAudioMessageImageUtilities.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKAudioMessageImageUtilities();
  return objc_msgSendSuper2(&v2, sel_init);
}

id CKAudioMessageImageUtilities.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for CKAudioMessageImageUtilities();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_190941520(void *a1, double a2)
{
  [a1 size];
  v5 = v4 * a2;
  [a1 size];
  v7 = v6 * a2;
  v8 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize_];
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  *(v9 + 24) = v7;
  *(v9 + 32) = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_190941DFC;
  *(v10 + 24) = v9;
  v13[4] = sub_1908986D0;
  v13[5] = v10;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_190233A24;
  v13[3] = &block_descriptor_14_0;
  v11 = _Block_copy(v13);
  v12 = a1;
  sub_190D50920();

  [v8 imageWithActions_];

  _Block_release(v11);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }
}

void sub_1909416DC(void *a1)
{
  [a1 size];
  v3 = v2;
  v5 = v4;
  sub_190941520(a1, 0.85);
  v7 = v6;
  v8 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize_];
  v9 = swift_allocObject();
  v9[2] = v3;
  v9[3] = v5;
  *(v9 + 4) = v7;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_190941DF0;
  *(v10 + 24) = v9;
  v13[4] = sub_190233AFC;
  v13[5] = v10;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_190233A24;
  v13[3] = &block_descriptor_40;
  v11 = _Block_copy(v13);
  v12 = v7;
  sub_190D50920();

  [v8 imageWithActions_];

  _Block_release(v11);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }
}

void sub_1909418B0()
{
  v0 = [objc_opt_self() whiteColor];
  v1 = objc_opt_self();
  v2 = [v1 configurationWithHierarchicalColor_];

  v3 = [objc_opt_self() systemFontOfSize_];
  v4 = [v1 configurationWithFont:v3 scale:3];
  v5 = [v2 configurationByApplyingConfiguration_];
  v6 = sub_190D56ED0();
  v7 = [objc_opt_self() systemImageNamed:v6 withConfiguration:v5];

  if (v7)
  {
  }

  else
  {
    __break(1u);
  }
}

uint64_t _s7ChatKit28CKAudioMessageImageUtilitiesC05audiodE03for4withSo7UIImageCSo9IMMessageCSg_So6CGSizeVtFZ_0(void *a1, double a2, double a3)
{
  v34[1] = *MEMORY[0x1E69E9840];
  v5 = [a1 sender];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820, &unk_190DD76C0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_190DD55F0;
  *(v6 + 32) = [objc_opt_self() descriptorForRequiredKeys];
  if (v5)
  {
    v7 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53E20, &unk_190DDBB80);
    v8 = sub_190D57160();

    v9 = [v7 cnContactWithKeys_];

    if (!v9)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v10 = [objc_allocWithZone(MEMORY[0x1E695CE28]) init];
    v11 = [objc_allocWithZone(MEMORY[0x1E695CE18]) initWithConfiguration_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53E20, &unk_190DDBB80);
    v12 = sub_190D57160();

    v34[0] = 0;
    v9 = [v11 _crossPlatformUnifiedMeContactWithKeysToFetch_error_];

    if (!v9)
    {
      v29 = v34[0];
      v30 = sub_190D51420();

      swift_willThrow();
LABEL_8:
      sub_1909418B0();
      v24 = v31;
      sub_1909416DC(v31);
      v28 = v32;
      goto LABEL_9;
    }

    v13 = v34[0];
  }

  v14 = objc_opt_self();
  v15 = objc_opt_self();
  v16 = v9;
  v17 = [v15 mainScreen];
  [v17 scale];
  v19 = v18;

  v20 = [v14 scopeWithPointSize:0 scale:0 rightToLeft:a2 style:{a3, v19}];
  v21 = [objc_opt_self() defaultSettings];
  v22 = [objc_allocWithZone(MEMORY[0x1E695D098]) initWithSettings_];

  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_190DD55F0;
  *(v23 + 32) = v16;
  sub_1908C9E7C();
  v24 = v16;
  v25 = sub_190D57160();

  v26 = [v22 avatarImageForContacts:v25 scope:v20];

  sub_1909416DC(v26);
  v28 = v27;
  swift_unknownObjectRelease();

  v5 = v24;
LABEL_9:

  return v28;
}

id sub_190941E20(void *a1, void *a2)
{
  [a1 transcriptTypingIndicatorSmallBubbleFrame];
  [a1 transcriptTypingIndicatorMediumBubbleSize];
  [a1 transcriptTypingIndicatorMediumBubbleOffset];
  [a1 transcriptTypingIndicatorLargeBubbleSize];
  [a1 transcriptTypingIndicatorLargeBubbleOffset];
  result = [a2 transcriptTypingIndicatorBubbleColor];
  if (result)
  {
    v5 = objc_opt_self();
    v6 = [v5 tertiaryLabelColor];
    v7 = [v5 quaternaryLabelColor];
    v8 = objc_allocWithZone(sub_190D51F30());
    return sub_190D51F20();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id CKDownloadingPendingMessagesViewBuilder.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CKDownloadingPendingMessagesViewBuilder.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKDownloadingPendingMessagesViewBuilder();
  return objc_msgSendSuper2(&v2, sel_init);
}

id CKDownloadingPendingMessagesViewBuilder.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for CKDownloadingPendingMessagesViewBuilder();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id _s7ChatKit39CKDownloadingPendingMessagesViewBuilderC017createDownloadingdef11InstanceForaB0So6UIViewCyFZ_0()
{
  v0 = [objc_opt_self() sharedBehaviors];
  if (!v0)
  {
    goto LABEL_5;
  }

  v1 = v0;
  v2 = [v0 theme];
  if (!v2)
  {

LABEL_5:
    v5 = objc_opt_self();
    v6 = [v5 grayColor];
    v7 = [v5 tertiaryLabelColor];
    v8 = [v5 quaternaryLabelColor];
    v9 = objc_allocWithZone(sub_190D51F30());
    v4 = sub_190D51F20();
    goto LABEL_6;
  }

  v3 = v2;
  v4 = sub_190941E20(v1, v2);

LABEL_6:
  v10 = [objc_allocWithZone(MEMORY[0x1E69B1800]) initWithConfiguration_];

  return v10;
}

id SendMenuParentView.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SendMenuParentView.init()()
{
  v0[OBJC_IVAR____TtC7ChatKit18SendMenuParentView_allowsHitTesting] = 1;
  v6.receiver = v0;
  v6.super_class = type metadata accessor for SendMenuParentView();
  v1 = objc_msgSendSuper2(&v6, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v2 = objc_opt_self();
  v3 = v1;
  v4 = [v2 clearColor];
  [v3 setBackgroundColor_];

  [v3 setAccessibilityViewIsModal_];
  return v3;
}

uint64_t sub_1909424A0()
{
  v1 = OBJC_IVAR____TtC7ChatKit18SendMenuParentView_allowsHitTesting;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1909424E4(char a1)
{
  v3 = OBJC_IVAR____TtC7ChatKit18SendMenuParentView_allowsHitTesting;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id SendMenuParentView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id SendMenuParentView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SendMenuParentView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_190942870(void *a1, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t (*a7)(void *, uint64_t))
{
  v12.receiver = a1;
  v12.super_class = a7(a1, a6);
  return objc_msgSendSuper2(&v12, sel_initWithFrame_, a2, a3, a4, a5);
}

id sub_1909428FC(void *a1, uint64_t a2, void *a3, uint64_t (*a4)(void *, uint64_t))
{
  v8.receiver = a1;
  v8.super_class = a4(a1, a2);
  v5 = a3;
  v6 = objc_msgSendSuper2(&v8, sel_initWithCoder_, v5);

  if (v6)
  {
  }

  return v6;
}

void *sub_1909429B4(void *a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(type metadata accessor for TapbackPickerPickerPillView());
  *&v4[OBJC_IVAR____TtC7ChatKit27TapbackPickerPickerPillView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v4[OBJC_IVAR____TtC7ChatKit27TapbackPickerPickerPillView_showsContent] = 1;
  v5 = sub_190C7EC20(0.0, 0.0, 0.0, 0.0);
  *(v5 + OBJC_IVAR____TtC7ChatKit27TapbackPickerPickerPillView_delegate + 8) = 0;
  swift_unknownObjectWeakAssign();
  v6 = OBJC_IVAR____TtC7ChatKit27TapbackPickerPickerPillView_showsContent;
  *(v5 + OBJC_IVAR____TtC7ChatKit27TapbackPickerPickerPillView_showsContent) = 1;
  v7 = v5;

  if (*(v5 + v6) == 1)
  {
    if (qword_1EAD51FD8 != -1)
    {
      swift_once();
    }

    v8 = qword_1EAD9E5A0;
    v9 = [objc_opt_self() systemFillColor];
    sub_190C7E8A8(v8, v9, 0.6);
  }

  *(v2 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_pickerPill) = v7;
  v10 = OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_emojiTail;
  v11 = objc_allocWithZone(type metadata accessor for TapbackPickerEmojiTailView());
  *&v11[OBJC_IVAR____TtC7ChatKit26TapbackPickerEmojiTailView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v11[OBJC_IVAR____TtC7ChatKit26TapbackPickerEmojiTailView_showsContent] = 1;
  v12 = sub_190C7EC20(0.0, 0.0, 0.0, 0.0);
  *(v12 + OBJC_IVAR____TtC7ChatKit26TapbackPickerEmojiTailView_delegate + 8) = 0;
  swift_unknownObjectWeakAssign();
  *(v12 + OBJC_IVAR____TtC7ChatKit26TapbackPickerEmojiTailView_showsContent) = 1;
  v13 = v12;
  v14 = [v13 traitCollection];
  sub_190C7F178(v14);

  *(v2 + v10) = v13;
  v15 = OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_mediumTail;
  type metadata accessor for TapbackMediumTail();
  *(v2 + v15) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v16 = OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_smallTail;
  type metadata accessor for TapbackSmallTail();
  *(v2 + v16) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v17 = OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_platterContentContainer;
  v18 = type metadata accessor for TapbackBlurView();
  v19 = objc_allocWithZone(v18);
  v19[OBJC_IVAR____TtC7ChatKit15TapbackBlurView_isBlurEnabled] = 0;
  v33.receiver = v19;
  v33.super_class = v18;
  v20 = objc_msgSendSuper2(&v33, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v20[OBJC_IVAR____TtC7ChatKit15TapbackBlurView_isBlurEnabled] = 1;
  v21 = *MEMORY[0x1E6979928];
  v22 = objc_allocWithZone(MEMORY[0x1E6979378]);
  v23 = v20;
  v24 = [v22 initWithType_];
  sub_190A86CA4(v24);

  *(v2 + v17) = v23;
  *(v2 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_activeLayout) = 0;
  v25 = OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_gyroSpring;
  *(v2 + v25) = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:3.5 stiffness:197.72094 damping:26.0 initialVelocity:{0.0, 0.0}];
  *(v2 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_hasPresented) = 0;
  v26 = a1;
  v27 = sub_190C76818(v26);
  v28 = [v27 layer];
  [v28 setAllowsEdgeAntialiasing_];

  v29 = MEMORY[0x1E69E7D40];
  v30 = (*((*MEMORY[0x1E69E7D40] & *v27) + 0x298))();
  (*((*v29 & *v27) + 0x2A0))(v30);
  v31 = sub_190D56ED0();
  [v27 setAccessibilityIdentifier_];

  return v27;
}

id sub_190942E1C()
{
  [v0 addSubview_];
  [v0 addSubview_];
  [v0 addSubview_];
  v1 = *&v0[OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_pickerPill];

  return [v0 addSubview_];
}

id sub_190942EA8()
{
  v1 = *(v0 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_pickerPill);
  v2 = objc_opt_self();
  v3 = [v2 whiteColor];
  [v1 setBackgroundColor_];

  v4 = *(v0 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_emojiTail);
  v5 = [v2 whiteColor];
  [v4 setBackgroundColor_];

  v6 = *(v0 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_mediumTail);
  v7 = [v2 whiteColor];
  [v6 setBackgroundColor_];

  v8 = *(v0 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_smallTail);
  v9 = [v2 whiteColor];
  [v8 setBackgroundColor_];

  v4[OBJC_IVAR____TtC7ChatKit26TapbackPickerEmojiTailView_showsContent] = 0;
  result = *&v4[OBJC_IVAR____TtC7ChatKit27TapbackPickerImageShapeView_imageView];
  if (result)
  {

    return [result setImage_];
  }

  return result;
}

void sub_190943028(__n128 a1)
{
  if ((v1[OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_hasPresented] & 1) == 0)
  {
    v1[OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_hasPresented] = 1;
    v2 = *&v1[OBJC_IVAR____TtC7ChatKit26TapbackPickerContainerView_displayConfiguration];
    type metadata accessor for TapbackPickerMessageOriginLayout();
    swift_initStackObject();
    v3 = v2;
    v4 = v1;
    v5 = sub_1909DB588(v3);
    v6 = [v1 layer];
    v7 = sub_190D51C70();
    v8 = sub_190D56ED0();
    [v6 setValue:v7 forKeyPath:v8];

    v9 = *&v4[OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_pickerPill];
    swift_beginAccess();
    v10 = *(v5 + 16);
    v11 = *(v5 + 24);
    v12 = *(v5 + 32);
    v13 = *(v5 + 40);
    sub_190D50920();
    [v9 setBounds_];
    [v9 setCenter_];
    v14 = [v9 layer];
    [v14 setCornerRadius_];

    v15 = *&v4[OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_emojiTail];
    swift_beginAccess();
    v16 = *(v5 + 80);
    v17 = *(v5 + 88);
    v18 = *(v5 + 104);
    [v15 setBounds_];
    [v15 setCenter_];
    v19 = [v15 layer];
    [v19 setCornerRadius_];

    v20 = *&v4[OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_mediumTail];
    swift_beginAccess();
    v21 = *(v5 + 144);
    v22 = *(v5 + 152);
    v23 = *(v5 + 168);
    [v20 setBounds_];
    [v20 setCenter_];
    v24 = [v20 layer];
    [v24 setCornerRadius_];

    v25 = *&v4[OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_smallTail];
    swift_beginAccess();
    v26 = *(v5 + 208);
    v27 = *(v5 + 216);
    v28 = *(v5 + 224);
    v29 = *(v5 + 232);

    [v25 setBounds_];
    [v25 setCenter_];
    v30 = [v25 layer];
    [v30 setCornerRadius_];
  }
}

void sub_19094335C()
{
  v1 = *&v0[OBJC_IVAR____TtC7ChatKit26TapbackPickerContainerView_displayConfiguration];
  type metadata accessor for TapbackPickerStagingLayout();
  swift_allocObject();
  v2 = sub_1909DB754(v1);
  v17 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:240.915 damping:38.1725 initialVelocity:{6.0, 6.0}];
  v3 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v17 timingParameters:0.0];
  v4 = swift_allocObject();
  *(v4 + 16) = v0;
  *(v4 + 24) = v2;
  v22 = sub_190950A4C;
  v23 = v4;
  aBlock = MEMORY[0x1E69E9820];
  v19 = 1107296256;
  v20 = sub_190840E6C;
  v21 = &block_descriptor_742;
  v5 = _Block_copy(&aBlock);
  v6 = v0;
  sub_190D50920();

  [v3 addAnimations_];
  _Block_release(v5);
  [v3 startAnimationAfterDelay_];
  v7 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:290.915 damping:33.1725 initialVelocity:{0.0, 0.0}];
  v8 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v7 timingParameters:0.0];
  v9 = swift_allocObject();
  *(v9 + 16) = v6;
  *(v9 + 24) = v2;
  v22 = sub_190950820;
  v23 = v9;
  aBlock = MEMORY[0x1E69E9820];
  v19 = 1107296256;
  v20 = sub_190840E6C;
  v21 = &block_descriptor_748;
  v10 = _Block_copy(&aBlock);
  v11 = v6;
  sub_190D50920();

  [v8 addAnimations_];
  _Block_release(v10);
  [v8 startAnimationAfterDelay_];
  v12 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:305.855 damping:20.0938 initialVelocity:{0.0, 0.0}];
  v13 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v12 timingParameters:0.0];
  v14 = swift_allocObject();
  *(v14 + 16) = v11;
  *(v14 + 24) = v2;
  v22 = sub_190950874;
  v23 = v14;
  aBlock = MEMORY[0x1E69E9820];
  v19 = 1107296256;
  v20 = sub_190840E6C;
  v21 = &block_descriptor_754;
  v15 = _Block_copy(&aBlock);
  v16 = v11;
  sub_190D50920();

  [v13 addAnimations_];
  _Block_release(v15);
  [v13 startAnimationAfterDelay_];
}

void sub_19094374C(uint64_t a1, double *a2)
{
  type metadata accessor for TapbackPickerBalloonAccessoryView();
  if (!swift_dynamicCastClass())
  {
    v4 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_emojiTail);
    swift_beginAccess();
    v5 = a2[13] * 0.5;
    [v4 setBounds_];
    v6 = [v4 layer];
    [v6 setCornerRadius_];
  }

  v7 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_mediumTail);
  swift_beginAccess();
  v8 = a2[21] * 0.5;
  [v7 setBounds_];
  v9 = [v7 layer];
  [v9 setCornerRadius_];

  v10 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_smallTail);
  swift_beginAccess();
  v11 = a2[29] * 0.5;
  [v10 setBounds_];
  v12 = [v10 layer];
  [v12 setCornerRadius_];
}

id sub_190943900(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_pickerPill);
  swift_beginAccess();
  [v3 center];
  [v3 setCenter_];
  v4 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_emojiTail);
  swift_beginAccess();
  [v4 center];
  [v4 setCenter_];
  v5 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_mediumTail);
  swift_beginAccess();
  [v5 center];
  [v5 setCenter_];
  v6 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_smallTail);
  swift_beginAccess();
  [v6 center];
  return [v6 setCenter_];
}

void sub_190943A4C(uint64_t a1)
{
  v2 = v1;
  sub_190C76C8C();
  if (a1)
  {
    v5 = *(a1 + OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_tapbackPlatters);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820, &unk_190DD76C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_190DD55F0;
    v7 = *(a1 + OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_bottomPeekPlatter);
    *(inited + 32) = v7;
    sub_190D52690();
    v8 = v7;
    sub_190CAA054(inited);
    if (v5 >> 62)
    {
      goto LABEL_16;
    }

    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      while (1)
      {
        v10 = 0;
        while ((v5 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x193AF3B90](v10, v5);
          v12 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:
            v13 = v11;

            (*((*MEMORY[0x1E69E7D40] & *v2) + 0x2C8))(v13);

            return;
          }

LABEL_8:
          if (*(v11 + OBJC_IVAR___CKTapbackPlatterView_isSent))
          {
            goto LABEL_14;
          }

          ++v10;
          if (v12 == v9)
          {
            goto LABEL_17;
          }
        }

        if (v10 < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          break;
        }

        __break(1u);
LABEL_16:
        v9 = sub_190D581C0();
        if (!v9)
        {
          goto LABEL_17;
        }
      }

      v11 = *(v5 + 8 * v10 + 32);
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_13;
      }

      goto LABEL_8;
    }

LABEL_17:
  }

  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x2B8))(v4);
}

void sub_190943C40(__n128 a1)
{
  sub_190943028(a1);
  sub_19094335C();
  v2 = *&v1[OBJC_IVAR____TtC7ChatKit26TapbackPickerContainerView_displayConfiguration];
  type metadata accessor for TapbackPickerSelectionLayout();
  swift_allocObject();
  v3 = sub_1909DBC0C(v2);
  *&v1[OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_activeLayout] = v3;
  sub_190D50920();

  v54 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:4898.18 damping:116.588 initialVelocity:{0.0, 0.0}];
  v4 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v54 timingParameters:0.0];
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  v59 = sub_19095071C;
  v60 = v5;
  aBlock = MEMORY[0x1E69E9820];
  v56 = 1107296256;
  v57 = sub_190840E6C;
  v58 = &block_descriptor_688;
  v6 = _Block_copy(&aBlock);
  v7 = v1;

  v53 = v4;
  [v4 addAnimations_];
  _Block_release(v6);
  [v4 startAnimationAfterDelay_];
  v52 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:320.0 damping:28.0217 initialVelocity:{0.0, 0.0}];
  v8 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v52 timingParameters:0.0];
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v9 + 24) = v3;
  v59 = sub_19095074C;
  v60 = v9;
  aBlock = MEMORY[0x1E69E9820];
  v56 = 1107296256;
  v57 = sub_190840E6C;
  v58 = &block_descriptor_694;
  v10 = _Block_copy(&aBlock);
  sub_190D50920();
  v11 = v7;

  v51 = v8;
  [v8 &selRef_animatingIn];
  _Block_release(v10);
  [v8 startAnimationAfterDelay_];
  v50 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:400.0 damping:35.3217 initialVelocity:{1.75, 1.75}];
  v12 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v50 timingParameters:0.0];
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v13 + 24) = v3;
  v59 = sub_190950768;
  v60 = v13;
  aBlock = MEMORY[0x1E69E9820];
  v56 = 1107296256;
  v57 = sub_190840E6C;
  v58 = &block_descriptor_700;
  v14 = _Block_copy(&aBlock);
  sub_190D50920();
  v15 = v11;

  [v12 &selRef_animatingIn];
  _Block_release(v14);
  [v12 startAnimationAfterDelay_];
  v49 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:165.025 damping:18.1227 initialVelocity:{0.2, 0.2}];
  v16 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v49 timingParameters:0.0];
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  *(v17 + 24) = v3;
  v59 = sub_190950770;
  v60 = v17;
  aBlock = MEMORY[0x1E69E9820];
  v56 = 1107296256;
  v57 = sub_190840E6C;
  v58 = &block_descriptor_706;
  v18 = _Block_copy(&aBlock);
  sub_190D50920();
  v19 = v15;

  v48 = v16;
  [v16 addAnimations_];
  _Block_release(v18);
  [v16 startAnimationAfterDelay_];
  v47 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:149.639 damping:18.5413 initialVelocity:{4.0, 4.0}];
  v20 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v47 timingParameters:0.0];
  v21 = swift_allocObject();
  *(v21 + 16) = v19;
  *(v21 + 24) = v3;
  v59 = sub_19095078C;
  v60 = v21;
  aBlock = MEMORY[0x1E69E9820];
  v56 = 1107296256;
  v57 = sub_190840E6C;
  v58 = &block_descriptor_712;
  v22 = _Block_copy(&aBlock);
  sub_190D50920();
  v23 = v19;

  v46 = v20;
  [v20 addAnimations_];
  _Block_release(v22);
  [v20 startAnimationAfterDelay_];
  v45 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:144.639 damping:17.6413 initialVelocity:{4.0, 4.0}];
  v24 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v45 timingParameters:0.0];
  v25 = swift_allocObject();
  *(v25 + 16) = v23;
  *(v25 + 24) = v3;
  v59 = sub_1909507A8;
  v60 = v25;
  aBlock = MEMORY[0x1E69E9820];
  v56 = 1107296256;
  v57 = sub_190840E6C;
  v58 = &block_descriptor_718;
  v26 = _Block_copy(&aBlock);
  sub_190D50920();
  v27 = v23;

  v44 = v24;
  [v24 addAnimations_];
  _Block_release(v26);
  [v24 startAnimationAfterDelay_];
  v43 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:147.639 damping:18.5413 initialVelocity:{3.0, 3.0}];
  v28 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v43 timingParameters:0.0];
  v29 = swift_allocObject();
  *(v29 + 16) = v27;
  *(v29 + 24) = v3;
  v59 = sub_1909507C4;
  v60 = v29;
  aBlock = MEMORY[0x1E69E9820];
  v56 = 1107296256;
  v57 = sub_190840E6C;
  v58 = &block_descriptor_724;
  v30 = _Block_copy(&aBlock);
  sub_190D50920();
  v31 = v27;

  v42 = v28;
  [v28 addAnimations_];
  _Block_release(v30);
  [v28 startAnimationAfterDelay_];
  v32 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:142.639 damping:17.6413 initialVelocity:{3.0, 3.0}];
  v33 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v32 timingParameters:0.0];
  v34 = swift_allocObject();
  *(v34 + 16) = v31;
  *(v34 + 24) = v3;
  v59 = sub_1909507E0;
  v60 = v34;
  aBlock = MEMORY[0x1E69E9820];
  v56 = 1107296256;
  v57 = sub_190840E6C;
  v58 = &block_descriptor_730;
  v35 = _Block_copy(&aBlock);
  sub_190D50920();
  v36 = v31;

  [v33 addAnimations_];
  _Block_release(v35);
  [v33 startAnimationAfterDelay_];
  v37 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:2798.18 damping:116.588 initialVelocity:{0.0, 0.0}];
  v38 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v37 timingParameters:0.0];
  v39 = swift_allocObject();
  *(v39 + 16) = v36;
  v59 = sub_1909507FC;
  v60 = v39;
  aBlock = MEMORY[0x1E69E9820];
  v56 = 1107296256;
  v57 = sub_190840E6C;
  v58 = &block_descriptor_736;
  v40 = _Block_copy(&aBlock);
  v41 = v36;

  [v38 addAnimations_];
  _Block_release(v40);
  [v38 startAnimationAfterDelay_];
}

id sub_190944774(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_pickerPill);
  swift_beginAccess();
  [v3 bounds];
  [v3 setBounds_];
  return [v3 setCenter_];
}

void sub_190944804(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC7ChatKit26TapbackPickerContainerView_displayConfiguration);
  v4 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x198))();
  type metadata accessor for TapbackPickerPlatterLayout();
  swift_initStackObject();
  v5 = v3;
  v6 = v1;
  v7 = sub_1909DCA94(v5, a1, v4 & 1, v6);
  v8 = [v6 layer];
  v9 = sub_190D51C70();
  v10 = sub_190D56ED0();
  [v8 setValue:v9 forKeyPath:v10];

  v11 = *(v6 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_pickerPill);
  swift_beginAccess();
  v12 = *(v7 + 16);
  v13 = *(v7 + 24);
  v14 = *(v7 + 32);
  v15 = *(v7 + 40);
  sub_190D50920();
  [v11 setBounds_];
  [v11 setCenter_];
  v16 = [v11 layer];
  [v16 setCornerRadius_];

  v17 = *(v6 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_emojiTail);
  swift_beginAccess();
  v18 = *(v7 + 80);
  v19 = *(v7 + 88);
  v20 = *(v7 + 104);
  [v17 setBounds_];
  [v17 setCenter_];
  v21 = [v17 layer];
  [v21 setCornerRadius_];

  v22 = *(v6 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_mediumTail);
  swift_beginAccess();
  v23 = *(v7 + 144);
  v24 = *(v7 + 152);
  v25 = *(v7 + 168);
  [v22 setBounds_];
  [v22 setCenter_];
  v26 = [v22 layer];
  [v26 setCornerRadius_];

  v27 = *(v6 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_smallTail);
  swift_beginAccess();
  v28 = *(v7 + 208);
  v29 = *(v7 + 216);
  v30 = *(v7 + 224);
  v31 = *(v7 + 232);

  [v27 setBounds_];
  [v27 setCenter_];
  v32 = [v27 layer];
  [v32 setCornerRadius_];
}

void sub_190944B80(void *a1)
{
  v2 = v1;
  sub_190944804(a1);
  v4 = OBJC_IVAR____TtC7ChatKit26TapbackPickerContainerView_displayConfiguration;
  v5 = *&v1[OBJC_IVAR____TtC7ChatKit26TapbackPickerContainerView_displayConfiguration];
  v6 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x198))();
  type metadata accessor for TapbackPickerPlatterLayout();
  swift_allocObject();
  v7 = v5;
  v8 = v2;
  v9 = a1;
  v115 = sub_1909DCA94(v7, v9, v6 & 1, v8);
  v10 = *&v2[v4];
  type metadata accessor for TapbackPickerStagingLayout();
  swift_allocObject();
  v11 = sub_1909DB754(v10);
  v12 = *&v2[v4];
  type metadata accessor for TapbackPickerSelectionLayout();
  swift_allocObject();
  v13 = sub_1909DBC0C(v12);
  *&v8[OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_activeLayout] = v13;
  v114 = v13;
  sub_190D50920();

  v14 = *&v8[OBJC_IVAR____TtC7ChatKit26TapbackPickerContainerView_backingBalloon];
  if (v14)
  {
    [v14 setAlpha_];
  }

  v15 = [v8 layer];
  v16 = sub_190D51C70();
  v17 = sub_190D56ED0();
  [v15 setValue:v16 forKeyPath:v17];

  swift_beginAccess();
  v18 = *(v115 + 24);
  swift_beginAccess();
  v104 = v8;
  if (v9[OBJC_IVAR___CKTapbackPlatterView_showTail] == 1)
  {
    v19 = (v18 - *(v11 + 24)) * 0.5;
    v98 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:305.855 damping:20.0938 initialVelocity:{0.0, 0.0}];
    v20 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v98 timingParameters:0.0];
    v21 = swift_allocObject();
    *(v21 + 16) = v8;
    *(v21 + 24) = v11;
    *(v21 + 32) = v115;
    *(v21 + 40) = v19;
    v120 = sub_1909506EC;
    v121 = v21;
    aBlock = MEMORY[0x1E69E9820];
    v117 = 1107296256;
    v118 = sub_190840E6C;
    v119 = &block_descriptor_640;
    v22 = _Block_copy(&aBlock);
    v23 = v8;
    sub_190D50920();
    sub_190D50920();

    v100 = v20;
    [v20 addAnimations_];
    _Block_release(v22);
    [v20 startAnimationAfterDelay_];
    v24 = [objc_allocWithZone(MEMORY[0x1E69DD278]) &selRef:v98 initWithConversation:0.0 tapHandler:?];
    v25 = swift_allocObject();
    *(v25 + 16) = v23;
    *(v25 + 24) = v114;
    v120 = sub_1909506FC;
    v121 = v25;
    aBlock = MEMORY[0x1E69E9820];
    v117 = 1107296256;
    v118 = sub_190840E6C;
    v119 = &block_descriptor_646;
    v26 = _Block_copy(&aBlock);
    v27 = v23;
    sub_190D50920();

    v97 = v24;
    [v24 addAnimations_];
    _Block_release(v26);
    [v24 startAnimationAfterDelay_];
    v96 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:280.915 damping:38.1725 initialVelocity:{9.0, 9.0}];
    v28 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v96 timingParameters:0.0];
    v29 = swift_allocObject();
    *(v29 + 16) = v27;
    *(v29 + 24) = v11;
    v120 = sub_190950A4C;
    v121 = v29;
    aBlock = MEMORY[0x1E69E9820];
    v117 = 1107296256;
    v118 = sub_190840E6C;
    v119 = &block_descriptor_652;
    v30 = _Block_copy(&aBlock);
    v31 = v27;
    sub_190D50920();

    [v28 addAnimations_];
    _Block_release(v30);
    v112 = v28;
    [v28 startAnimationAfterDelay_];
    v110 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:260.915 damping:38.1725 initialVelocity:{9.0, 9.0}];
    v32 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v110 timingParameters:0.0];
    v33 = swift_allocObject();
    *(v33 + 16) = v31;
    *(v33 + 24) = v11;
    v120 = sub_190950704;
    v121 = v33;
    aBlock = MEMORY[0x1E69E9820];
    v117 = 1107296256;
    v118 = sub_190840E6C;
    v119 = &block_descriptor_658;
    v34 = _Block_copy(&aBlock);
    v35 = v31;
    sub_190D50920();

    [v32 addAnimations_];
    _Block_release(v34);
    v108 = v32;
    [v32 startAnimationAfterDelay_];
    v106 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:180.915 damping:33.1725 initialVelocity:{0.0, 0.0}];
    v102 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v106 timingParameters:0.0];
    v36 = swift_allocObject();
    *(v36 + 16) = v35;
    *(v36 + 24) = v11;
    v120 = sub_19095070C;
    v121 = v36;
    aBlock = MEMORY[0x1E69E9820];
    v117 = 1107296256;
    v118 = sub_190840E6C;
    v119 = &block_descriptor_664;
    v37 = _Block_copy(&aBlock);
    v38 = v35;
    sub_190D50920();

    [v102 addAnimations_];
    _Block_release(v37);
    [v102 startAnimationAfterDelay_];
    v39 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:320.0 damping:28.0217 initialVelocity:{0.0, 0.0}];
    v40 = [objc_allocWithZone(MEMORY[0x1E69DD278]) &selRef:v39 initWithConversation:0.0 tapHandler:?];
    v41 = swift_allocObject();
    *(v41 + 16) = v38;
    *(v41 + 24) = v114;
    v120 = sub_190950714;
    v121 = v41;
    aBlock = MEMORY[0x1E69E9820];
    v117 = 1107296256;
    v118 = sub_190840E6C;
    v119 = &block_descriptor_670;
    v42 = _Block_copy(&aBlock);
    v43 = v38;
    sub_190D50920();

    [v40 addAnimations_];
    _Block_release(v42);
    [v40 startAnimationAfterDelay_];
    v44 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:165.025 damping:19.5227 initialVelocity:{0.2, 0.2}];
    v45 = [objc_allocWithZone(MEMORY[0x1E69DD278]) &selRef:v44 initWithConversation:0.0 tapHandler:?];
    v46 = swift_allocObject();
    *(v46 + 16) = v43;
    *(v46 + 24) = v114;
    v120 = sub_190950A64;
    v121 = v46;
    aBlock = MEMORY[0x1E69E9820];
    v117 = 1107296256;
    v118 = sub_190840E6C;
    v119 = &block_descriptor_676;
    v47 = _Block_copy(&aBlock);
    v48 = v43;
    sub_190D50920();

    [v45 addAnimations_];
    _Block_release(v47);
    [v45 startAnimationAfterDelay_];
    v49 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v39 timingParameters:0.0];
    v50 = swift_allocObject();
    *(v50 + 16) = v48;
    *(v50 + 24) = v114;
    v120 = sub_190950A30;
    v121 = v50;
    aBlock = MEMORY[0x1E69E9820];
    v117 = 1107296256;
    v118 = sub_190840E6C;
    v119 = &block_descriptor_682;
    v51 = _Block_copy(&aBlock);
    v52 = v48;
    sub_190D50920();

    [v49 addAnimations_];
    _Block_release(v51);
    [v49 startAnimationAfterDelay_];
  }

  else
  {
    v112 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:280.915 damping:38.1725 initialVelocity:{9.0, 9.0}];
    v53 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v112 timingParameters:0.0];
    v54 = swift_allocObject();
    *(v54 + 16) = v8;
    *(v54 + 24) = v11;
    v120 = sub_190950A4C;
    v121 = v54;
    aBlock = MEMORY[0x1E69E9820];
    v117 = 1107296256;
    v118 = sub_190840E6C;
    v119 = &block_descriptor_574;
    v55 = _Block_copy(&aBlock);
    v56 = v8;
    sub_190D50920();

    [v53 addAnimations_];
    _Block_release(v55);
    v110 = v53;
    [v53 startAnimationAfterDelay_];
    v108 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) &selRef:1.0 initWithActivityItems:180.915 applicationActivities:{33.1725, 0.0, 0.0} + 3];
    v57 = [objc_allocWithZone(MEMORY[0x1E69DD278]) &selRef:v108 initWithConversation:0.0 tapHandler:?];
    v58 = swift_allocObject();
    *(v58 + 16) = v56;
    *(v58 + 24) = v11;
    v120 = sub_1909506CC;
    v121 = v58;
    aBlock = MEMORY[0x1E69E9820];
    v117 = 1107296256;
    v118 = sub_190840E6C;
    v119 = &block_descriptor_580;
    v59 = _Block_copy(&aBlock);
    v60 = v56;
    sub_190D50920();

    [v57 addAnimations_];
    _Block_release(v59);
    v106 = v57;
    [v57 startAnimationAfterDelay_];
    v102 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:305.855 damping:20.0938 initialVelocity:{0.0, 0.0}];
    v39 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v102 timingParameters:0.0];
    v61 = swift_allocObject();
    *(v61 + 16) = v60;
    *(v61 + 24) = v11;
    v120 = sub_1909506D4;
    v121 = v61;
    aBlock = MEMORY[0x1E69E9820];
    v117 = 1107296256;
    v118 = sub_190840E6C;
    v119 = &block_descriptor_586;
    v62 = _Block_copy(&aBlock);
    v63 = v60;
    sub_190D50920();

    [v39 addAnimations_];
    _Block_release(v62);
    [v39 startAnimationAfterDelay_];
    v40 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:320.0 damping:28.0217 initialVelocity:{0.0, 0.0}];
    v44 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v40 timingParameters:0.0];
    v64 = swift_allocObject();
    *(v64 + 16) = v63;
    *(v64 + 24) = v114;
    v120 = sub_190950A60;
    v121 = v64;
    aBlock = MEMORY[0x1E69E9820];
    v117 = 1107296256;
    v118 = sub_190840E6C;
    v119 = &block_descriptor_592;
    v65 = _Block_copy(&aBlock);
    v66 = v63;
    sub_190D50920();

    [v44 addAnimations_];
    _Block_release(v65);
    [v44 startAnimationAfterDelay_];
    v45 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:165.025 damping:19.5227 initialVelocity:{0.2, 0.2}];
    v49 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v45 timingParameters:0.0];
    v67 = swift_allocObject();
    *(v67 + 16) = v66;
    *(v67 + 24) = v114;
    v120 = sub_1909506DC;
    v121 = v67;
    aBlock = MEMORY[0x1E69E9820];
    v117 = 1107296256;
    v118 = sub_190840E6C;
    v119 = &block_descriptor_598;
    v68 = _Block_copy(&aBlock);
    v69 = v66;
    sub_190D50920();

    [v49 addAnimations_];
    _Block_release(v68);
    [v49 startAnimationAfterDelay_];
  }

  v113 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:430.0 damping:35.3217 initialVelocity:{2.75, 2.75}];
  v70 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v113 timingParameters:0.0];
  v71 = swift_allocObject();
  *(v71 + 16) = v104;
  *(v71 + 24) = v114;
  v120 = sub_1909506E4;
  v121 = v71;
  aBlock = MEMORY[0x1E69E9820];
  v117 = 1107296256;
  v118 = sub_190840E6C;
  v119 = &block_descriptor_604;
  v72 = _Block_copy(&aBlock);
  v73 = v104;
  sub_190D50920();

  v111 = v70;
  [v70 addAnimations_];
  _Block_release(v72);
  [v70 startAnimationAfterDelay_];
  v109 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) &selRef:1.0 initWithActivityItems:149.639 applicationActivities:{18.5413, 4.0, 4.0} + 3];
  v74 = [objc_allocWithZone(MEMORY[0x1E69DD278]) &selRef:v109 initWithConversation:0.0 tapHandler:?];
  v75 = swift_allocObject();
  *(v75 + 16) = v73;
  *(v75 + 24) = v114;
  v120 = sub_190950A3C;
  v121 = v75;
  aBlock = MEMORY[0x1E69E9820];
  v117 = 1107296256;
  v118 = sub_190840E6C;
  v119 = &block_descriptor_610;
  v76 = _Block_copy(&aBlock);
  v77 = v73;
  sub_190D50920();

  v107 = v74;
  [v74 addAnimations_];
  _Block_release(v76);
  [v74 startAnimationAfterDelay_];
  v105 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) &selRef:1.0 initWithActivityItems:144.639 applicationActivities:{17.6413, 4.0, 4.0} + 3];
  v78 = [objc_allocWithZone(MEMORY[0x1E69DD278]) &selRef:v105 initWithConversation:0.0 tapHandler:?];
  v79 = swift_allocObject();
  *(v79 + 16) = v77;
  *(v79 + 24) = v114;
  v120 = sub_190950A54;
  v121 = v79;
  aBlock = MEMORY[0x1E69E9820];
  v117 = 1107296256;
  v118 = sub_190840E6C;
  v119 = &block_descriptor_616;
  v80 = _Block_copy(&aBlock);
  v81 = v77;
  sub_190D50920();

  v103 = v78;
  [v78 addAnimations_];
  _Block_release(v80);
  [v78 startAnimationAfterDelay_];
  v101 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) &selRef:1.0 initWithActivityItems:147.639 applicationActivities:{18.5413, 3.0, 3.0} + 3];
  v82 = [objc_allocWithZone(MEMORY[0x1E69DD278]) &selRef:v101 initWithConversation:0.0 tapHandler:?];
  v83 = swift_allocObject();
  *(v83 + 16) = v81;
  *(v83 + 24) = v114;
  v120 = sub_190950A34;
  v121 = v83;
  aBlock = MEMORY[0x1E69E9820];
  v117 = 1107296256;
  v118 = sub_190840E6C;
  v119 = &block_descriptor_622;
  v84 = _Block_copy(&aBlock);
  v85 = v81;
  sub_190D50920();

  v99 = v82;
  [v82 addAnimations_];
  _Block_release(v84);
  [v82 startAnimationAfterDelay_];
  v86 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:142.639 damping:17.6413 initialVelocity:{3.0, 3.0}];
  v87 = [objc_allocWithZone(MEMORY[0x1E69DD278]) &selRef:v86 initWithConversation:0.0 tapHandler:?];
  v88 = swift_allocObject();
  *(v88 + 16) = v85;
  *(v88 + 24) = v114;
  v120 = sub_190950A5C;
  v121 = v88;
  aBlock = MEMORY[0x1E69E9820];
  v117 = 1107296256;
  v118 = sub_190840E6C;
  v119 = &block_descriptor_628;
  v89 = _Block_copy(&aBlock);
  v90 = v85;
  sub_190D50920();

  [v87 addAnimations_];
  _Block_release(v89);
  [v87 startAnimationAfterDelay_];
  v91 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:758.18 damping:60.588 initialVelocity:{0.0, 0.0}];
  v92 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v91 timingParameters:0.0];
  v93 = swift_allocObject();
  *(v93 + 16) = v90;
  v120 = sub_190950B64;
  v121 = v93;
  aBlock = MEMORY[0x1E69E9820];
  v117 = 1107296256;
  v118 = sub_190840E6C;
  v119 = &block_descriptor_634;
  v94 = _Block_copy(&aBlock);
  v95 = v90;

  [v92 addAnimations_];
  _Block_release(v94);
  [v92 startAnimationAfterDelay_];
}

id sub_19094636C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_pickerPill);
  swift_beginAccess();
  [v4 center];
  [v4 setCenter_];
  v5 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_platterContentContainer);
  [v4 center];
  [v5 center];
  [v5 setCenter_];
  v6 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_emojiTail);
  swift_beginAccess();
  [v6 center];
  [v6 setCenter_];
  v7 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_mediumTail);
  swift_beginAccess();
  [v7 center];
  [v7 setCenter_];
  v8 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_smallTail);
  swift_beginAccess();
  [v8 center];
  return [v8 setCenter_];
}

id sub_190946504(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_pickerPill);
  swift_beginAccess();
  [v3 center];
  [v3 setCenter_];
  v4 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_platterContentContainer);
  [v3 center];
  [v4 center];
  return [v4 setCenter_];
}

void sub_1909465C8(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() sharedBehaviors];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 usesTapbackRefreshStyling];

    if (v6 || (type metadata accessor for TapbackPickerBalloonAccessoryView(), !swift_dynamicCastClass()))
    {
      v7 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_emojiTail);
      swift_beginAccess();
      v8 = *(a2 + 104) * 0.5;
      [v7 setBounds_];
      v9 = [v7 layer];
      [v9 setCornerRadius_];
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1909466DC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_mediumTail);
  swift_beginAccess();
  v5 = *(a2 + 168) * 0.5;
  [v4 setBounds_];
  v6 = [v4 layer];
  [v6 setCornerRadius_];

  v7 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_smallTail);
  swift_beginAccess();
  v8 = *(a2 + 232) * 0.5;
  [v7 setBounds_];
  v9 = [v7 layer];
  [v9 setCornerRadius_];
}

id sub_190946808(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_mediumTail);
  swift_beginAccess();
  v5 = *(a2 + 80);
  [v4 center];
  [v4 setCenter_];
  v6 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_smallTail);
  v7 = *(a2 + 80);
  [v6 center];
  return [v6 setCenter_];
}

id sub_1909468C0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_emojiTail);
  swift_beginAccess();
  [v3 center];
  [v3 setCenter_];
  v4 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_mediumTail);
  [v4 center];
  [v4 setCenter_];
  v5 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_smallTail);
  [v5 center];
  return [v5 setCenter_];
}

void sub_1909469A4(uint64_t a1, double *a2)
{
  v4 = [objc_opt_self() sharedBehaviors];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 usesTapbackRefreshStyling];

    if (v6 || (type metadata accessor for TapbackPickerBalloonAccessoryView(), !swift_dynamicCastClass()))
    {
      v7 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_emojiTail);
      swift_beginAccess();
      v8 = a2[13] * 0.5;
      [v7 setBounds_];
      v9 = [v7 layer];
      [v9 setCornerRadius_];
    }

    v10 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_mediumTail);
    swift_beginAccess();
    v11 = a2[21] * 0.5;
    [v10 setBounds_];
    v12 = [v10 layer];
    [v12 setCornerRadius_];

    v13 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_smallTail);
    swift_beginAccess();
    v14 = a2[29] * 0.5;
    [v13 setBounds_];
    v15 = [v13 layer];
    [v15 setCornerRadius_];
  }

  else
  {
    __break(1u);
  }
}

id sub_190946BA4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_pickerPill);
  swift_beginAccess();
  [v3 center];
  [v3 setCenter_];
  v4 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_platterContentContainer);
  [v3 center];
  [v4 center];
  [v4 setCenter_];
  v5 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_emojiTail);
  [v3 center];
  [v5 center];
  [v5 setCenter_];
  v6 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_mediumTail);
  [v3 center];
  [v6 center];
  [v6 setCenter_];
  v7 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_smallTail);
  [v3 center];
  [v7 center];
  return [v7 setCenter_];
}

id sub_190946D10(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_emojiTail);
  swift_beginAccess();
  v5 = *(a2 + 80);
  [v4 center];
  [v4 setCenter_];
  v6 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_mediumTail);
  [v4 center];
  v8 = v7;
  [v6 center];
  [v6 setCenter_];
  v9 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_smallTail);
  [v4 center];
  v11 = v10;
  [v9 center];
  return [v9 setCenter_];
}

id sub_190946E0C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_pickerPill);
  swift_beginAccess();
  [v3 center];
  [v3 setCenter_];
  v4 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_platterContentContainer);
  [v3 center];
  [v4 center];
  [v4 setCenter_];
  v5 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_emojiTail);
  swift_beginAccess();
  [v5 center];
  return [v5 setCenter_];
}

id sub_190946F10(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_pickerPill);
  swift_beginAccess();
  [v4 bounds];
  [v4 setBounds_];
  v5 = *(a2 + 16);
  [v4 center];
  [v4 setCenter_];
  v6 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_platterContentContainer);
  [v4 center];
  v8 = v7;
  [v6 center];
  return [v6 setCenter_];
}

void sub_190947000(uint64_t a1)
{
  v2 = v1;
  sub_190C76C8C();
  if (a1)
  {
    v5 = *(a1 + OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_tapbackPlatters);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820, &unk_190DD76C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_190DD55F0;
    v7 = *(a1 + OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_bottomPeekPlatter);
    *(inited + 32) = v7;
    sub_190D52690();
    v8 = v7;
    sub_190CAA054(inited);
    if (v5 >> 62)
    {
      goto LABEL_16;
    }

    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      while (1)
      {
        v10 = 0;
        while ((v5 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x193AF3B90](v10, v5);
          v12 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:
            v13 = v11;

            (*((*MEMORY[0x1E69E7D40] & *v2) + 0x2D0))(v13);

            return;
          }

LABEL_8:
          if (*(v11 + OBJC_IVAR___CKTapbackPlatterView_isSent))
          {
            goto LABEL_14;
          }

          ++v10;
          if (v12 == v9)
          {
            goto LABEL_17;
          }
        }

        if (v10 < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          break;
        }

        __break(1u);
LABEL_16:
        v9 = sub_190D581C0();
        if (!v9)
        {
          goto LABEL_17;
        }
      }

      v11 = *(v5 + 8 * v10 + 32);
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_13;
      }

      goto LABEL_8;
    }

LABEL_17:
  }

  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x2D8))(v4);
}

void sub_1909471F4(void *a1)
{
  v2 = v1;
  sub_190944804(a1);
  v3 = OBJC_IVAR____TtC7ChatKit26TapbackPickerContainerView_displayConfiguration;
  v4 = *&v1[OBJC_IVAR____TtC7ChatKit26TapbackPickerContainerView_displayConfiguration];
  type metadata accessor for TapbackPickerEmojiInputLayout();
  swift_allocObject();
  v5 = sub_1909DC4F8(v4);
  *&v1[OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_activeLayout] = v5;
  sub_190D50920();

  v6 = *&v1[OBJC_IVAR____TtC7ChatKit26TapbackPickerContainerView_backingBalloon];
  if (v6)
  {
    [v6 setAlpha_];
  }

  v7 = [v1 layer];
  v8 = sub_190D51C70();
  v9 = sub_190D56ED0();
  [v7 setValue:v8 forKeyPath:v9];

  v77 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:2.0 stiffness:300.0 damping:50.0 initialVelocity:{0.0, 0.0}];
  v10 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v77 timingParameters:0.0];
  v11 = swift_allocObject();
  *(v11 + 16) = v2;
  v82 = sub_190950B64;
  v83 = v11;
  aBlock = MEMORY[0x1E69E9820];
  v79 = 1107296256;
  v80 = sub_190840E6C;
  v81 = &block_descriptor_502;
  v12 = _Block_copy(&aBlock);
  v13 = v2;

  [v10 addAnimations_];
  _Block_release(v12);
  [v10 startAnimation];
  v14 = *&v2[v3];
  v15 = OBJC_IVAR___CKTapbackPickerBalloonDisplayConfiguration_wantsBottomTail;
  swift_beginAccess();
  if (*(v14 + v15))
  {
    v16 = 15.0;
  }

  else
  {
    v16 = -15.0;
  }

  v76 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) &selRef:1.0 initWithActivityItems:300.0 applicationActivities:{45.0, 0.0, 0.0} + 3];
  v17 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v76 timingParameters:0.0];
  v18 = swift_allocObject();
  *(v18 + 16) = v13;
  *(v18 + 24) = v5;
  *(v18 + 32) = v16;
  v82 = sub_190950694;
  v83 = v18;
  aBlock = MEMORY[0x1E69E9820];
  v79 = 1107296256;
  v80 = sub_190840E6C;
  v81 = &block_descriptor_508;
  v19 = _Block_copy(&aBlock);
  sub_190D50920();
  v20 = v13;

  [v17 addAnimations_];
  _Block_release(v19);
  [v17 startAnimationAfterDelay_];
  v75 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) &selRef:1.0 initWithActivityItems:280.0 applicationActivities:{45.0, 0.0, 0.0} + 3];
  v21 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v75 timingParameters:0.0];
  v22 = swift_allocObject();
  *(v22 + 16) = v20;
  *(v22 + 24) = v5;
  v82 = sub_1909506A0;
  v83 = v22;
  aBlock = MEMORY[0x1E69E9820];
  v79 = 1107296256;
  v80 = sub_190840E6C;
  v81 = &block_descriptor_514;
  v23 = _Block_copy(&aBlock);
  sub_190D50920();
  v24 = v20;

  v74 = v21;
  [v21 addAnimations_];
  _Block_release(v23);
  [v21 startAnimationAfterDelay_];
  v73 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) &selRef:1.0 initWithActivityItems:280.0 applicationActivities:{14.6197, 0.0, 0.0} + 3];
  v25 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v73 timingParameters:0.0];
  v26 = swift_allocObject();
  *(v26 + 16) = v24;
  *(v26 + 24) = v5;
  v82 = sub_190950A30;
  v83 = v26;
  aBlock = MEMORY[0x1E69E9820];
  v79 = 1107296256;
  v80 = sub_190840E6C;
  v81 = &block_descriptor_520;
  v27 = _Block_copy(&aBlock);
  sub_190D50920();
  v28 = v24;

  v72 = v25;
  [v25 addAnimations_];
  _Block_release(v27);
  [v25 startAnimationAfterDelay_];
  v70 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) &selRef:1.0 initWithActivityItems:260.0 applicationActivities:{29.0, 0.0, 0.0} + 3];
  v29 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v70 timingParameters:0.0];
  v30 = swift_allocObject();
  *(v30 + 16) = v28;
  *(v30 + 24) = v5;
  *(v30 + 32) = v16;
  v82 = sub_1909506A8;
  v83 = v30;
  aBlock = MEMORY[0x1E69E9820];
  v79 = 1107296256;
  v80 = sub_190840E6C;
  v81 = &block_descriptor_526;
  v31 = _Block_copy(&aBlock);
  sub_190D50920();
  v32 = v28;

  v71 = v29;
  [v29 addAnimations_];
  _Block_release(v31);
  [v29 startAnimationAfterDelay_];
  v33 = [objc_allocWithZone(MEMORY[0x1E69DD278]) &selRef:v70 initWithConversation:0.0 tapHandler:?];
  v34 = swift_allocObject();
  *(v34 + 16) = v32;
  *(v34 + 24) = v5;
  v82 = sub_190950A58;
  v83 = v34;
  aBlock = MEMORY[0x1E69E9820];
  v79 = 1107296256;
  v80 = sub_190840E6C;
  v81 = &block_descriptor_532;
  v35 = _Block_copy(&aBlock);
  sub_190D50920();
  v36 = v32;

  v69 = v33;
  [v33 addAnimations_];
  _Block_release(v35);
  [v33 startAnimationAfterDelay_];
  v68 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:260.0 damping:29.0 initialVelocity:{0.0, 0.0}];
  v37 = [objc_allocWithZone(MEMORY[0x1E69DD278]) &selRef:v68 initWithConversation:0.0 tapHandler:?];
  v38 = swift_allocObject();
  *(v38 + 16) = v36;
  *(v38 + 24) = v5;
  v82 = sub_190950A34;
  v83 = v38;
  aBlock = MEMORY[0x1E69E9820];
  v79 = 1107296256;
  v80 = sub_190840E6C;
  v81 = &block_descriptor_538;
  v39 = _Block_copy(&aBlock);
  sub_190D50920();
  v40 = v36;

  v67 = v37;
  [v37 &selRef_animatingIn];
  _Block_release(v39);
  [v37 startAnimationAfterDelay_];
  v41 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:260.0 damping:29.0 initialVelocity:{0.0, 0.0}];
  v42 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v41 timingParameters:0.0];
  v43 = swift_allocObject();
  *(v43 + 16) = v40;
  *(v43 + 24) = v5;
  *(v43 + 32) = v16;
  v82 = sub_1909506B4;
  v83 = v43;
  aBlock = MEMORY[0x1E69E9820];
  v79 = 1107296256;
  v80 = sub_190840E6C;
  v81 = &block_descriptor_544;
  v44 = _Block_copy(&aBlock);
  sub_190D50920();
  v45 = v40;

  v66 = v42;
  [v42 &selRef_animatingIn];
  _Block_release(v44);
  [v42 startAnimationAfterDelay_];
  v46 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v41 timingParameters:0.0];
  v47 = swift_allocObject();
  *(v47 + 16) = v45;
  *(v47 + 24) = v5;
  v82 = sub_190950A5C;
  v83 = v47;
  aBlock = MEMORY[0x1E69E9820];
  v79 = 1107296256;
  v80 = sub_190840E6C;
  v81 = &block_descriptor_550;
  v48 = _Block_copy(&aBlock);
  sub_190D50920();
  v49 = v45;

  [v46 &selRef_animatingIn];
  _Block_release(v48);
  [v46 startAnimationAfterDelay_];
  v65 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:240.0 damping:29.0 initialVelocity:{0.0, 0.0}];
  v50 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v65 timingParameters:0.0];
  v51 = swift_allocObject();
  *(v51 + 16) = v49;
  *(v51 + 24) = v5;
  v82 = sub_190950A3C;
  v83 = v51;
  aBlock = MEMORY[0x1E69E9820];
  v79 = 1107296256;
  v80 = sub_190840E6C;
  v81 = &block_descriptor_556;
  v52 = _Block_copy(&aBlock);
  sub_190D50920();
  v53 = v49;

  v64 = v50;
  [v50 &selRef_animatingIn];
  _Block_release(v52);
  [v50 startAnimationAfterDelay_];
  v63 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:240.0 damping:29.0 initialVelocity:{0.0, 0.0}];
  v54 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v63 timingParameters:0.0];
  v55 = swift_allocObject();
  *(v55 + 16) = v53;
  *(v55 + 24) = v5;
  *(v55 + 32) = v16;
  v82 = sub_1909506C0;
  v83 = v55;
  aBlock = MEMORY[0x1E69E9820];
  v79 = 1107296256;
  v80 = sub_190840E6C;
  v81 = &block_descriptor_562;
  v56 = _Block_copy(&aBlock);
  sub_190D50920();
  v57 = v53;

  [v54 addAnimations_];
  _Block_release(v56);
  [v54 startAnimationAfterDelay_];
  v58 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:240.0 damping:29.0 initialVelocity:{0.0, 0.0}];
  v59 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v58 timingParameters:0.0];
  v60 = swift_allocObject();
  *(v60 + 16) = v57;
  *(v60 + 24) = v5;
  v82 = sub_190950A54;
  v83 = v60;
  aBlock = MEMORY[0x1E69E9820];
  v79 = 1107296256;
  v80 = sub_190840E6C;
  v81 = &block_descriptor_568;
  v61 = _Block_copy(&aBlock);
  sub_190D50920();
  v62 = v57;

  [v59 addAnimations_];
  _Block_release(v61);
  [v59 startAnimationAfterDelay_];
}

id sub_1909480CC(uint64_t a1, double *a2)
{
  v4 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_pickerPill);
  swift_beginAccess();
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[5];
  [v4 setBounds_];
  [v4 setCenter_];
  v8 = [v4 layer];
  [v8 setCornerRadius_];

  [v4 center];
  [v4 setCenter_];
  v9 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_platterContentContainer);
  [v4 center];
  return [v9 setCenter_];
}

id sub_1909481F8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_pickerPill);
  swift_beginAccess();
  [v4 setCenter_];
  v5 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_platterContentContainer);
  [v4 center];
  return [v5 setCenter_];
}

void sub_190948288(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_emojiTail);
  swift_beginAccess();
  [v3 center];
  [v3 setCenter_];
  v4 = *(a2 + 104) * 0.5;
  [v3 setBounds_];
  v5 = [v3 layer];
  [v5 setCornerRadius_];
}

void sub_190948364(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_mediumTail);
  swift_beginAccess();
  [v3 center];
  [v3 setCenter_];
  v4 = *(a2 + 168) * 0.5;
  [v3 setBounds_];
  v5 = [v3 layer];
  [v5 setCornerRadius_];
}

void sub_190948440(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_smallTail);
  swift_beginAccess();
  [v3 center];
  [v3 setCenter_];
  v4 = *(a2 + 232) * 0.5;
  [v3 setBounds_];
  v5 = [v3 layer];
  [v5 setCornerRadius_];
}

void sub_19094851C(__n128 a1)
{
  v2 = v1;
  sub_190943028(a1);
  v3 = OBJC_IVAR____TtC7ChatKit26TapbackPickerContainerView_displayConfiguration;
  v4 = *&v1[OBJC_IVAR____TtC7ChatKit26TapbackPickerContainerView_displayConfiguration];
  type metadata accessor for TapbackPickerEmojiInputLayout();
  swift_allocObject();
  v38 = sub_1909DC4F8(v4);
  *&v1[OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_activeLayout] = v38;
  sub_190D50920();

  v46 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:4898.18 damping:116.588 initialVelocity:{0.0, 0.0}];
  v5 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v46 timingParameters:0.0];
  v6 = swift_allocObject();
  *(v6 + 16) = v1;
  v51 = sub_190950A28;
  v52 = v6;
  aBlock = MEMORY[0x1E69E9820];
  v48 = 1107296256;
  v49 = sub_190840E6C;
  v50 = &block_descriptor_460;
  v7 = _Block_copy(&aBlock);
  v8 = v1;

  v45 = v5;
  [v5 addAnimations_];
  _Block_release(v7);
  [v5 startAnimationAfterDelay_];
  v44 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) &selRef:2.0 initWithActivityItems:650.0 applicationActivities:{50.0, 0.0, 0.0} + 3];
  v9 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v44 timingParameters:0.0];
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  v51 = sub_190950B64;
  v52 = v10;
  aBlock = MEMORY[0x1E69E9820];
  v48 = 1107296256;
  v49 = sub_190840E6C;
  v50 = &block_descriptor_466;
  v11 = _Block_copy(&aBlock);
  v12 = v8;

  [v9 addAnimations_];
  _Block_release(v11);
  [v9 &selRef:0.05 ck:? applyGlassBackgroundWithFlexible:?];
  v13 = *&v2[v3];
  v14 = OBJC_IVAR___CKTapbackPickerBalloonDisplayConfiguration_wantsBottomTail;
  swift_beginAccess();
  if (*(v13 + v14))
  {
    v15 = 35.0;
  }

  else
  {
    v15 = -35.0;
  }

  v43 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:350.0 damping:45.0 initialVelocity:{0.0, 0.0}];
  v16 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v43 timingParameters:0.0];
  v17 = swift_allocObject();
  *(v17 + 16) = v12;
  *(v17 + 24) = v38;
  *(v17 + 32) = v15;
  v51 = sub_1909505FC;
  v52 = v17;
  aBlock = MEMORY[0x1E69E9820];
  v48 = 1107296256;
  v49 = sub_190840E6C;
  v50 = &block_descriptor_472;
  v18 = _Block_copy(&aBlock);
  sub_190D50920();
  v19 = v12;

  [v16 addAnimations_];
  _Block_release(v18);
  [v16 startAnimationAfterDelay_];
  v42 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:300.0 damping:45.0 initialVelocity:{1.0, 1.0}];
  v20 = [objc_allocWithZone(MEMORY[0x1E69DD278]) &selRef:v42 initWithConversation:0.0 tapHandler:?];
  v21 = swift_allocObject();
  *(v21 + 16) = v19;
  *(v21 + 24) = v38;
  v51 = sub_190950608;
  v52 = v21;
  aBlock = MEMORY[0x1E69E9820];
  v48 = 1107296256;
  v49 = sub_190840E6C;
  v50 = &block_descriptor_478;
  v22 = _Block_copy(&aBlock);
  sub_190D50920();
  v23 = v19;

  v41 = v20;
  [v20 addAnimations_];
  _Block_release(v22);
  [v20 startAnimationAfterDelay_];
  v40 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:1080.0 damping:45.0 initialVelocity:{0.0, 0.0}];
  v24 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v40 timingParameters:0.0];
  v25 = swift_allocObject();
  *(v25 + 16) = v23;
  *(v25 + 24) = v38;
  v51 = sub_190950624;
  v52 = v25;
  aBlock = MEMORY[0x1E69E9820];
  v48 = 1107296256;
  v49 = sub_190840E6C;
  v50 = &block_descriptor_484;
  v26 = _Block_copy(&aBlock);
  sub_190D50920();
  v27 = v23;

  v39 = v24;
  [v24 addAnimations_];
  _Block_release(v26);
  [v24 startAnimationAfterDelay_];
  v28 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:260.0 damping:25.0 initialVelocity:{0.0, 0.0}];
  v29 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v28 timingParameters:0.0];
  v30 = swift_allocObject();
  *(v30 + 16) = v27;
  *(v30 + 24) = v38;
  v51 = sub_19095062C;
  v52 = v30;
  aBlock = MEMORY[0x1E69E9820];
  v48 = 1107296256;
  v49 = sub_190840E6C;
  v50 = &block_descriptor_490;
  v31 = _Block_copy(&aBlock);
  sub_190D50920();
  v32 = v27;

  [v29 addAnimations_];
  _Block_release(v31);
  [v29 startAnimationAfterDelay_];
  v33 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:260.0 damping:25.0 initialVelocity:{0.0, 0.0}];
  v34 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v33 timingParameters:0.0];
  v35 = swift_allocObject();
  *(v35 + 16) = v32;
  *(v35 + 24) = v38;
  v51 = sub_19095068C;
  v52 = v35;
  aBlock = MEMORY[0x1E69E9820];
  v48 = 1107296256;
  v49 = sub_190840E6C;
  v50 = &block_descriptor_496;
  v36 = _Block_copy(&aBlock);
  sub_190D50920();
  v37 = v32;

  [v34 addAnimations_];
  _Block_release(v36);
  [v34 startAnimationAfterDelay_];
}

id sub_190948E44(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_pickerPill);
  swift_beginAccess();
  [v4 setCenter_];
  [v4 center];
  [v4 setCenter_];
  v5 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_emojiTail);
  [v4 center];
  [v5 setCenter_];
  v6 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_mediumTail);
  [v4 center];
  [v6 setCenter_];
  v7 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_smallTail);
  [v4 center];
  return [v7 setCenter_];
}

void sub_190948F4C(uint64_t a1, double *a2)
{
  v4 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_emojiTail);
  swift_beginAccess();
  v5 = a2[13] * 0.5;
  [v4 setBounds_];
  v6 = [v4 layer];
  [v6 setCornerRadius_];

  v7 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_mediumTail);
  swift_beginAccess();
  v8 = a2[21] * 0.5;
  [v7 setBounds_];
  v9 = [v7 layer];
  [v9 setCornerRadius_];

  v10 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_smallTail);
  swift_beginAccess();
  v11 = a2[29] * 0.5;
  [v10 setBounds_];
  v12 = [v10 layer];
  [v12 setCornerRadius_];
}

id sub_1909490E4(uint64_t a1, double *a2)
{
  v4 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_emojiTail);
  swift_beginAccess();
  [v4 setCenter_];
  v5 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_mediumTail);
  swift_beginAccess();
  [v5 setCenter_];
  v6 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_smallTail);
  swift_beginAccess();
  return [v6 setCenter_];
}

void sub_1909491AC(uint64_t a1)
{
  v2 = v1;
  if (!a1)
  {
    goto LABEL_21;
  }

  v3 = *(a1 + OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_tapbackPlatters);
  v4 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820, &unk_190DD76C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_190DD55F0;
  v6 = *(v4 + OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_bottomPeekPlatter);
  *(inited + 32) = v6;
  sub_190D52690();
  v7 = v6;
  sub_190CAA054(inited);
  if (v3 >> 62)
  {
LABEL_19:
    v8 = sub_190D581C0();
    if (v8)
    {
      goto LABEL_4;
    }

    goto LABEL_20;
  }

  v8 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v8)
  {
LABEL_20:

LABEL_21:
    (*((*MEMORY[0x1E69E7D40] & *v2) + 0x2E8))(a1);
    sub_190C76A0C(0.2);
    return;
  }

LABEL_4:
  v9 = 0;
  while ((v3 & 0xC000000000000001) != 0)
  {
    v10 = MEMORY[0x193AF3B90](v9, v3);
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      goto LABEL_13;
    }

LABEL_8:
    if (v10[OBJC_IVAR___CKTapbackPlatterView_isSent])
    {
      goto LABEL_14;
    }

    ++v9;
    if (v11 == v8)
    {
      goto LABEL_20;
    }
  }

  if (v9 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_19;
  }

  v10 = *(v3 + 8 * v9 + 32);
  v11 = v9 + 1;
  if (!__OFADD__(v9, 1))
  {
    goto LABEL_8;
  }

LABEL_13:
  __break(1u);
LABEL_14:
  v12 = v10;

  v13 = [v2 tintColor];
  v14 = *(v2 + OBJC_IVAR____TtC7ChatKit26TapbackPickerContainerView_presentationTintColor);
  *(v2 + OBJC_IVAR____TtC7ChatKit26TapbackPickerContainerView_presentationTintColor) = v13;

  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x2E0))(v12);
  type metadata accessor for TapbackPickerPrimaryContainer();
  if (swift_dynamicCastClass())
  {
    v15 = 0.4;
  }

  else
  {
    v15 = 0.2;
  }

  sub_190C76A0C(v15);
}

void sub_19094941C(void *a1)
{
  v2 = v1;
  v103 = OBJC_IVAR____TtC7ChatKit26TapbackPickerContainerView_displayConfiguration;
  v4 = *&v1[OBJC_IVAR____TtC7ChatKit26TapbackPickerContainerView_displayConfiguration];
  v5 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x198))();
  type metadata accessor for TapbackPickerPlatterLayout();
  swift_allocObject();
  v6 = v4;
  v7 = v2;
  v8 = a1;
  v9 = sub_1909DCA94(v6, v8, v5 & 1, v7);
  v10 = [*&v8[OBJC_IVAR___CKTapbackPlatterView_backgroundSolidStroke] backgroundColor];
  v11 = *&v7[OBJC_IVAR____TtC7ChatKit26TapbackPickerContainerView_presentationTintColor];
  *&v7[OBJC_IVAR____TtC7ChatKit26TapbackPickerContainerView_presentationTintColor] = v10;

  v12 = *&v7[OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_pickerPill];
  v13 = *&v7[OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_platterContentContainer];
  v14 = *&v7[OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_emojiTail];
  v15 = *&v7[OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_mediumTail];
  v16 = *&v7[OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_smallTail];
  v108 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:375.0 damping:50.0 initialVelocity:{0.0, 0.0}];
  v17 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v108 timingParameters:0.0];
  v18 = swift_allocObject();
  v18[2] = v7;
  v18[3] = v12;
  v18[4] = v9;
  v18[5] = v13;
  v18[6] = v14;
  v18[7] = v15;
  v18[8] = v16;
  v124 = sub_1909504CC;
  v125 = v18;
  aBlock = MEMORY[0x1E69E9820];
  v121 = 1107296256;
  v122 = sub_190840E6C;
  v123 = &block_descriptor_376;
  v19 = _Block_copy(&aBlock);
  v20 = v7;
  v110 = v12;
  sub_190D50920();
  v21 = v13;
  v118 = v14;
  v116 = v15;
  v114 = v16;

  [v17 addAnimations_];
  _Block_release(v19);
  v107 = v17;
  [v17 startAnimationAfterDelay_];
  v119 = v20;
  v112 = OBJC_IVAR____TtC7ChatKit26TapbackPickerContainerView_currentDisplayMode;
  v22 = *&v2[v103];
  if (*&v20[OBJC_IVAR____TtC7ChatKit26TapbackPickerContainerView_currentDisplayMode] == 2)
  {
    type metadata accessor for TapbackPickerEmojiInputLayout();
    swift_allocObject();
    v23 = sub_1909DC4F8(v22);
    v104 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:375.0 damping:50.0 initialVelocity:{0.0, 0.0}];
    v24 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v104 timingParameters:0.0];
    v25 = swift_allocObject();
    v25[2] = v110;
    v25[3] = v23;
    v25[4] = v21;
    v124 = sub_190950594;
    v125 = v25;
    aBlock = MEMORY[0x1E69E9820];
    v121 = 1107296256;
    v122 = sub_190840E6C;
    v123 = &block_descriptor_448;
    v26 = _Block_copy(&aBlock);
    v27 = v110;
    v28 = v21;
    sub_190D50920();

    [v24 addAnimations_];
    _Block_release(v26);
    v100 = v24;
    [v24 startAnimationAfterDelay_];
    v29 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:375.0 damping:50.0 initialVelocity:{0.0, 0.0}];
    v30 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v29 timingParameters:0.0];
    v31 = swift_allocObject();
    v31[2] = v118;
    v31[3] = v23;
    v31[4] = v116;
    v31[5] = v114;
    v124 = sub_1909505F0;
    v125 = v31;
    aBlock = MEMORY[0x1E69E9820];
    v121 = 1107296256;
    v122 = sub_190840E6C;
    v123 = &block_descriptor_454;
    v32 = _Block_copy(&aBlock);
    v33 = v118;
    v34 = v116;
    v35 = v114;
    sub_190D50920();

    [v30 addAnimations_];
    v36 = 0x1E69DC000;
  }

  else
  {
    type metadata accessor for TapbackPickerSelectionLayout();
    swift_allocObject();
    v37 = sub_1909DBC0C(v22);
    v104 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:375.0 damping:50.0 initialVelocity:{0.0, 0.0}];
    v38 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v104 timingParameters:0.0];
    v39 = swift_allocObject();
    v39[2] = v110;
    v39[3] = v37;
    v39[4] = v21;
    v124 = sub_1909504E0;
    v125 = v39;
    aBlock = MEMORY[0x1E69E9820];
    v121 = 1107296256;
    v122 = sub_190840E6C;
    v123 = &block_descriptor_382;
    v40 = _Block_copy(&aBlock);
    v41 = v110;
    v42 = v21;
    sub_190D50920();

    [v38 addAnimations_];
    _Block_release(v40);
    v100 = v38;
    [v38 startAnimationAfterDelay_];
    v29 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:375.0 damping:50.0 initialVelocity:{0.0, 0.0}];
    v30 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v29 timingParameters:0.0];
    v43 = swift_allocObject();
    v43[2] = v118;
    v43[3] = v37;
    v43[4] = v116;
    v43[5] = v114;
    v124 = sub_1909504EC;
    v125 = v43;
    aBlock = MEMORY[0x1E69E9820];
    v121 = 1107296256;
    v122 = sub_190840E6C;
    v123 = &block_descriptor_388;
    v32 = _Block_copy(&aBlock);
    v44 = v118;
    v45 = v116;
    v46 = v114;
    sub_190D50920();

    [v30 addAnimations_];
    v36 = 0x1E69DC000uLL;
  }

  _Block_release(v32);
  [v30 startAnimationAfterDelay_];

  v47 = *&v119[v112];
  v48 = objc_allocWithZone(*(v36 + 3976));
  if (v47 == 2)
  {
    v49 = 220.255;
    v50 = 45.4281;
  }

  else
  {
    v49 = 400.255;
    v50 = 48.4281;
  }

  v51 = v110;
  v111 = [v48 initWithMass:1.0 stiffness:v49 damping:v50 initialVelocity:{1.4, 1.4}];
  v52 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v111 timingParameters:0.0];
  v53 = swift_allocObject();
  *(v53 + 16) = v51;
  *(v53 + 24) = v9;
  v124 = sub_1909504F8;
  v125 = v53;
  aBlock = MEMORY[0x1E69E9820];
  v121 = 1107296256;
  v122 = sub_190840E6C;
  v123 = &block_descriptor_394;
  v54 = _Block_copy(&aBlock);
  v97 = v51;
  sub_190D50920();

  [v52 addAnimations_];
  _Block_release(v54);
  v109 = v52;
  [v52 startAnimationAfterDelay_];
  v106 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:375.255 damping:55.5281 initialVelocity:{0.0, 0.0}];
  v55 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v106 timingParameters:0.0];
  v56 = swift_allocObject();
  v56[2] = v118;
  v56[3] = v9;
  v56[4] = v116;
  v56[5] = v114;
  v124 = sub_190950500;
  v125 = v56;
  aBlock = MEMORY[0x1E69E9820];
  v121 = 1107296256;
  v122 = sub_190840E6C;
  v123 = &block_descriptor_400;
  v57 = _Block_copy(&aBlock);
  sub_190D50920();
  v94 = v118;
  v101 = v116;
  v99 = v114;

  [v55 addAnimations_];
  _Block_release(v57);
  v117 = v55;
  [v55 startAnimationAfterDelay_];
  if (*&v119[v112] == 2)
  {
    v58 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:2.0 stiffness:375.0 damping:50.0 initialVelocity:{0.0, 0.0}];
  }

  else
  {
    v58 = v111;
  }

  v115 = v58;
  v59 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v58 timingParameters:0.0];
  v60 = swift_allocObject();
  v60[2] = v97;
  v60[3] = v9;
  v60[4] = v21;
  v124 = sub_19095050C;
  v125 = v60;
  aBlock = MEMORY[0x1E69E9820];
  v121 = 1107296256;
  v122 = sub_190840E6C;
  v123 = &block_descriptor_406;
  v61 = _Block_copy(&aBlock);
  v62 = v97;
  sub_190D50920();
  v63 = v21;

  v105 = v59;
  [v59 addAnimations_];
  _Block_release(v61);
  [v59 startAnimationAfterDelay_];
  v113 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) &selRef:1.3 initWithActivityItems:450.0 applicationActivities:{39.0, 0.0, 0.0} + 3];
  v64 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v113 timingParameters:0.0];
  v65 = swift_allocObject();
  v65[2] = v62;
  v65[3] = v9;
  v65[4] = v63;
  v124 = sub_190950518;
  v125 = v65;
  aBlock = MEMORY[0x1E69E9820];
  v121 = 1107296256;
  v122 = sub_190840E6C;
  v123 = &block_descriptor_412;
  v66 = _Block_copy(&aBlock);
  v67 = v62;
  sub_190D50920();
  v68 = v63;

  [v64 addAnimations_];
  _Block_release(v66);
  [v64 startAnimationAfterDelay_];
  v98 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) &selRef:1.3 initWithActivityItems:275.0 applicationActivities:{36.0, 0.0, 0.0} + 3];
  v69 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v98 timingParameters:0.0];
  v70 = swift_allocObject();
  *(v70 + 16) = v94;
  *(v70 + 24) = v9;
  v124 = sub_190950524;
  v125 = v70;
  aBlock = MEMORY[0x1E69E9820];
  v121 = 1107296256;
  v122 = sub_190840E6C;
  v123 = &block_descriptor_418;
  v71 = _Block_copy(&aBlock);
  sub_190D50920();
  v72 = v94;

  v96 = v69;
  [v69 addAnimations_];
  _Block_release(v71);
  [v69 startAnimationAfterDelay_];
  v95 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.3 stiffness:375.0 damping:36.0 initialVelocity:{0.0, 0.0}];
  v73 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v95 timingParameters:0.0];
  v74 = swift_allocObject();
  *(v74 + 16) = v72;
  *(v74 + 24) = v9;
  v124 = sub_19095052C;
  v125 = v74;
  aBlock = MEMORY[0x1E69E9820];
  v121 = 1107296256;
  v122 = sub_190840E6C;
  v123 = &block_descriptor_424;
  v75 = _Block_copy(&aBlock);
  sub_190D50920();
  v76 = v72;

  v93 = v73;
  [v73 addAnimations_];
  _Block_release(v75);
  [v73 startAnimationAfterDelay_];
  v92 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.3 stiffness:275.0 damping:35.0 initialVelocity:{0.0, 0.0}];
  v77 = [objc_allocWithZone(MEMORY[0x1E69DD278]) &selRef:v92 initWithConversation:0.0 tapHandler:?];
  v78 = swift_allocObject();
  v78[2] = v101;
  v78[3] = v9;
  v78[4] = v99;
  v124 = sub_190950534;
  v125 = v78;
  aBlock = MEMORY[0x1E69E9820];
  v121 = 1107296256;
  v122 = sub_190840E6C;
  v123 = &block_descriptor_430;
  v79 = _Block_copy(&aBlock);
  sub_190D50920();
  v80 = v101;
  v81 = v99;

  [v77 addAnimations_];
  _Block_release(v79);
  [v77 startAnimationAfterDelay_];
  v102 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) &selRef:1.3 initWithActivityItems:325.0 applicationActivities:{35.0, 0.0, 0.0} + 3];
  v82 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v102 timingParameters:0.0];
  v83 = swift_allocObject();
  v83[2] = v80;
  v83[3] = v9;
  v83[4] = v81;
  v124 = sub_190950540;
  v125 = v83;
  aBlock = MEMORY[0x1E69E9820];
  v121 = 1107296256;
  v122 = sub_190840E6C;
  v123 = &block_descriptor_436;
  v84 = _Block_copy(&aBlock);
  sub_190D50920();
  v85 = v80;
  v86 = v81;

  [v82 addAnimations_];
  _Block_release(v84);
  [v82 startAnimationAfterDelay_];
  v87 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) &selRef:1.0 initWithActivityItems:300.0 applicationActivities:{50.0, 0.0, 0.0} + 3];
  v88 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v87 timingParameters:0.0];
  v89 = swift_allocObject();
  *(v89 + 16) = v119;
  v124 = sub_19085EA38;
  v125 = v89;
  aBlock = MEMORY[0x1E69E9820];
  v121 = 1107296256;
  v122 = sub_190840E6C;
  v123 = &block_descriptor_442;
  v90 = _Block_copy(&aBlock);
  v91 = v119;

  [v88 addAnimations_];
  _Block_release(v90);
  [v88 startAnimationAfterDelay_];
}

id sub_19094A7A0(uint64_t a1, void *a2, double *a3, void *a4, void *a5, void *a6, void *a7)
{
  if (*(a1 + OBJC_IVAR____TtC7ChatKit26TapbackPickerContainerView_currentDisplayMode) == 2)
  {
    swift_beginAccess();
    v13 = a3[2];
    [a2 center];
    [a2 setCenter_];
    [a2 center];
    v15 = v14;
    [a4 center];
    [a4 setCenter_];
  }

  swift_beginAccess();
  v16 = a3[10];
  [a5 center];
  [a5 setCenter_];
  swift_beginAccess();
  v17 = a3[18];
  [a6 center];
  [a6 setCenter_];
  [a6 center];
  v19 = v18;
  [a7 center];
  return [a7 setCenter_];
}

id sub_19094A910(void *a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  [a1 center];
  [a1 setCenter_];
  [a1 center];
  [a3 center];
  return [a3 setCenter_];
}

id sub_19094A9C0(void *a1, uint64_t a2, void *a3, void *a4)
{
  swift_beginAccess();
  [a1 center];
  [a1 setCenter_];
  swift_beginAccess();
  [a3 center];
  [a3 setCenter_];
  [a3 center];
  [a4 center];
  return [a4 setCenter_];
}

id sub_19094AAB8(void *a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  [a1 center];
  [a1 setCenter_];
  [a1 center];
  [a3 center];
  return [a3 setCenter_];
}

id sub_19094AB68(void *a1, uint64_t a2, void *a3, void *a4)
{
  swift_beginAccess();
  [a1 center];
  [a1 setCenter_];
  swift_beginAccess();
  [a3 center];
  [a3 setCenter_];
  [a3 center];
  [a4 center];
  return [a4 setCenter_];
}

void sub_19094AC70(void *a1, uint64_t a2)
{
  swift_beginAccess();
  [a1 bounds];
  [a1 setBounds_];
  v4 = [a1 layer];
  [v4 setCornerRadius_];
}

void sub_19094AD1C(void *a1, uint64_t a2, void *a3, void *a4)
{
  swift_beginAccess();
  [a1 bounds];
  [a1 setBounds_];
  v8 = [a1 layer];
  [v8 setCornerRadius_];

  swift_beginAccess();
  [a3 bounds];
  [a3 setBounds_];
  v9 = [a3 layer];
  [v9 setCornerRadius_];

  [a3 bounds];
  [a4 bounds];
  [a4 setBounds_];
  v10 = [a4 layer];
  v11 = [a3 layer];
  [v11 cornerRadius];
  v13 = v12;

  [v10 setCornerRadius_];
}

id sub_19094AEE0(void *a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  v6 = *(a2 + 16);
  [a1 center];
  [a1 setCenter_];
  [a1 center];
  v8 = v7;
  [a3 center];
  return [a3 setCenter_];
}

id sub_19094AF88(void *a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  [a1 center];
  [a1 setCenter_];
  [a1 center];
  [a3 center];
  return [a3 setCenter_];
}

id sub_19094B030(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a2 + 80);
  [a1 center];
  return [a1 setCenter_];
}

id sub_19094B0A0(void *a1, uint64_t a2)
{
  swift_beginAccess();
  [a1 center];
  return [a1 setCenter_];
}

id sub_19094B110(void *a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  v6 = *(a2 + 144);
  [a1 center];
  [a1 setCenter_];
  [a1 center];
  v8 = v7;
  [a3 center];
  return [a3 setCenter_];
}

id sub_19094B1B8(void *a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  [a1 center];
  [a1 setCenter_];
  [a1 center];
  [a3 center];
  return [a3 setCenter_];
}

void sub_19094B260()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC7ChatKit26TapbackPickerContainerView_displayConfiguration;
  v3 = *&v0[OBJC_IVAR____TtC7ChatKit26TapbackPickerContainerView_displayConfiguration];
  type metadata accessor for TapbackPickerStagingLayout();
  swift_allocObject();
  v100 = sub_1909DB754(v3);
  v4 = *&v0[v2];
  type metadata accessor for TapbackPickerMessageOriginLayout();
  swift_allocObject();
  v5 = sub_1909DB588(v4);
  *&v1[OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_activeLayout] = v5;
  sub_190D50920();

  v99 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:500.0 damping:40.0365 initialVelocity:{0.0, 0.0}];
  v6 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v99 timingParameters:0.0];
  v7 = swift_allocObject();
  *(v7 + 16) = v1;
  *(v7 + 24) = v5;
  v105 = sub_19095032C;
  v106 = v7;
  aBlock = MEMORY[0x1E69E9820];
  v102 = 1107296256;
  v103 = sub_190840E6C;
  v104 = &block_descriptor_268;
  v8 = _Block_copy(&aBlock);
  sub_190D50920();
  v9 = v1;

  [v6 addAnimations_];
  _Block_release(v8);
  v98 = v6;
  [v6 startAnimationAfterDelay_];
  v97 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) &selRef:1.0 initWithActivityItems:600.0 applicationActivities:{50.0, 0.0, 0.0} + 3];
  v10 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v97 timingParameters:0.0];
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  v105 = sub_190950334;
  v106 = v11;
  aBlock = MEMORY[0x1E69E9820];
  v102 = 1107296256;
  v103 = sub_190840E6C;
  v104 = &block_descriptor_274;
  v12 = _Block_copy(&aBlock);
  v13 = v9;

  [v10 addAnimations_];
  _Block_release(v12);
  v96 = v10;
  [v10 startAnimationAfterDelay_];
  v95 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) &selRef:1.0 initWithActivityItems:350.0 applicationActivities:{29.5469, 0.0, 0.0} + 3];
  v14 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v95 timingParameters:0.4];
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  *(v15 + 24) = v5;
  v105 = sub_190950354;
  v106 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v102 = 1107296256;
  v103 = sub_190840E6C;
  v104 = &block_descriptor_280;
  v16 = _Block_copy(&aBlock);
  sub_190D50920();
  v17 = v13;

  [v14 addAnimations_];
  _Block_release(v16);
  v94 = v14;
  [v14 startAnimationAfterDelay_];
  if (*&v17[OBJC_IVAR____TtC7ChatKit26TapbackPickerContainerView_currentDisplayMode] == 1)
  {
    v89 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:600.0 damping:50.0 initialVelocity:{0.0, 0.0}];
    v18 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v89 timingParameters:0.0];
    v19 = swift_allocObject();
    *(v19 + 16) = v17;
    v105 = sub_190950370;
    v106 = v19;
    aBlock = MEMORY[0x1E69E9820];
    v102 = 1107296256;
    v103 = sub_190840E6C;
    v104 = &block_descriptor_310;
    v20 = _Block_copy(&aBlock);
    v21 = v17;

    v88 = v18;
    [v18 addAnimations_];
    _Block_release(v20);
    [v18 startAnimationAfterDelay_];
    v87 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:375.0 damping:40.0365 initialVelocity:{0.0, 0.0}];
    v22 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v87 timingParameters:0.0];
    v23 = swift_allocObject();
    *(v23 + 16) = v21;
    *(v23 + 24) = v5;
    v105 = sub_190950378;
    v106 = v23;
    aBlock = MEMORY[0x1E69E9820];
    v102 = 1107296256;
    v103 = sub_190840E6C;
    v104 = &block_descriptor_316;
    v24 = _Block_copy(&aBlock);
    sub_190D50920();
    v25 = v21;

    v86 = v22;
    [v22 addAnimations_];
    _Block_release(v24);
    [v22 startAnimationAfterDelay_];
    v85 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:800.0 damping:40.0365 initialVelocity:{0.0, 0.0}];
    v26 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v85 timingParameters:0.0];
    v27 = swift_allocObject();
    *(v27 + 16) = v25;
    *(v27 + 24) = v100;
    v105 = sub_190950380;
    v106 = v27;
    aBlock = MEMORY[0x1E69E9820];
    v102 = 1107296256;
    v103 = sub_190840E6C;
    v104 = &block_descriptor_322;
    v28 = _Block_copy(&aBlock);
    v29 = v25;
    sub_190D50920();

    v84 = v26;
    [v26 addAnimations_];
    _Block_release(v28);
    [v26 startAnimationAfterDelay_];
    v83 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:180.0 damping:29.5469 initialVelocity:{0.0, 0.0}];
    v30 = [objc_allocWithZone(MEMORY[0x1E69DD278]) &selRef:v83 initWithConversation:0.4 tapHandler:?];
    v31 = swift_allocObject();
    *(v31 + 16) = v29;
    *(v31 + 24) = v5;
    v105 = sub_190950A4C;
    v106 = v31;
    aBlock = MEMORY[0x1E69E9820];
    v102 = 1107296256;
    v103 = sub_190840E6C;
    v104 = &block_descriptor_328;
    v32 = _Block_copy(&aBlock);
    sub_190D50920();
    v33 = v29;

    v82 = v30;
    [v30 addAnimations_];
    _Block_release(v32);
    [v30 startAnimationAfterDelay_];
    v81 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:358.255 damping:29.5469 initialVelocity:{0.0, 0.0}];
    v34 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v81 timingParameters:0.0];
    v35 = swift_allocObject();
    *(v35 + 16) = v33;
    *(v35 + 24) = v5;
    v105 = sub_190950A50;
    v106 = v35;
    aBlock = MEMORY[0x1E69E9820];
    v102 = 1107296256;
    v103 = sub_190840E6C;
    v104 = &block_descriptor_334;
    v36 = _Block_copy(&aBlock);
    sub_190D50920();
    v37 = v33;

    v80 = v34;
    [v34 addAnimations_];
    _Block_release(v36);
    [v34 startAnimationAfterDelay_];
    v79 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) &selRef:1.0 initWithActivityItems:288.255 applicationActivities:{25.5469, 0.0, 0.0} + 3];
    v38 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v79 timingParameters:0.0];
    v39 = swift_allocObject();
    *(v39 + 16) = v37;
    *(v39 + 24) = v100;
    v105 = sub_19095039C;
    v106 = v39;
    aBlock = MEMORY[0x1E69E9820];
    v102 = 1107296256;
    v103 = sub_190840E6C;
    v104 = &block_descriptor_340;
    v40 = _Block_copy(&aBlock);
    v41 = v37;
    sub_190D50920();

    [v38 addAnimations_];
    _Block_release(v40);
    [v38 startAnimationAfterDelay_];
    v78 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:298.255 damping:29.5469 initialVelocity:{0.0, 0.0}];
    v42 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v78 timingParameters:0.0];
    v43 = swift_allocObject();
    *(v43 + 16) = v41;
    *(v43 + 24) = v5;
    v105 = sub_190950A54;
    v106 = v43;
    aBlock = MEMORY[0x1E69E9820];
    v102 = 1107296256;
    v103 = sub_190840E6C;
    v104 = &block_descriptor_346;
    v44 = _Block_copy(&aBlock);
    sub_190D50920();
    v45 = v41;

    v77 = v42;
    [v42 addAnimations_];
    _Block_release(v44);
    [v42 startAnimationAfterDelay_];
    v93 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:230.255 damping:25.5469 initialVelocity:{0.0, 0.0}];
    v46 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v93 timingParameters:0.0];
    v47 = swift_allocObject();
    *(v47 + 16) = v45;
    *(v47 + 24) = v100;
    v105 = sub_1909503F8;
    v106 = v47;
    aBlock = MEMORY[0x1E69E9820];
    v102 = 1107296256;
    v103 = sub_190840E6C;
    v104 = &block_descriptor_352;
    v48 = _Block_copy(&aBlock);
    v49 = v45;
    sub_190D50920();

    [v46 addAnimations_];
    _Block_release(v48);
    v92 = v46;
    [v46 startAnimationAfterDelay_];
    v91 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:240.255 damping:29.5469 initialVelocity:{0.0, 0.0}];
    v90 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v91 timingParameters:0.0];
    v50 = swift_allocObject();
    *(v50 + 16) = v49;
    *(v50 + 24) = v5;
    v105 = sub_190950A5C;
    v106 = v50;
    aBlock = MEMORY[0x1E69E9820];
    v102 = 1107296256;
    v103 = sub_190840E6C;
    v104 = &block_descriptor_358;
    v51 = _Block_copy(&aBlock);
    sub_190D50920();
    v52 = v49;

    [v90 addAnimations_];
    _Block_release(v51);
    [v90 startAnimationAfterDelay_];
    v53 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:220.255 damping:25.5469 initialVelocity:{0.0, 0.0}];
    v54 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v53 timingParameters:0.0];
    v55 = swift_allocObject();
    *(v55 + 16) = v52;
    *(v55 + 24) = v100;
    v105 = sub_190950454;
    v106 = v55;
    aBlock = MEMORY[0x1E69E9820];
    v102 = 1107296256;
    v103 = sub_190840E6C;
    v104 = &block_descriptor_364;
    v56 = _Block_copy(&aBlock);
    v57 = v52;
    sub_190D50920();

    [v54 addAnimations_];
    _Block_release(v56);
    [v54 startAnimationAfterDelay_];
    v58 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:150.255 damping:29.5469 initialVelocity:{0.0, 0.0}];
    v59 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v58 timingParameters:0.0];
    v60 = swift_allocObject();
    *(v60 + 16) = v57;
    *(v60 + 24) = v5;
    v105 = sub_1909504B0;
    v106 = v60;
    aBlock = MEMORY[0x1E69E9820];
    v102 = 1107296256;
    v103 = sub_190840E6C;
    v104 = &block_descriptor_370;
    v61 = _Block_copy(&aBlock);
    sub_190D50920();
    v62 = v57;

    [v59 addAnimations_];
    _Block_release(v61);
    [v59 startAnimationAfterDelay_];
  }

  else
  {
    [*&v17[OBJC_IVAR____TtC7ChatKit26TapbackPickerContainerView_backingBalloon] setAlpha_];
    v93 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:180.0 damping:85.5469 initialVelocity:{0.0, 0.0}];
    v63 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v93 timingParameters:0.0];
    v64 = swift_allocObject();
    v64[2] = v17;
    v64[3] = v100;
    v64[4] = 0x4034000000000000;
    v105 = sub_19095035C;
    v106 = v64;
    aBlock = MEMORY[0x1E69E9820];
    v102 = 1107296256;
    v103 = sub_190840E6C;
    v104 = &block_descriptor_286;
    v65 = _Block_copy(&aBlock);
    v66 = v17;
    sub_190D50920();

    [v63 addAnimations_];
    _Block_release(v65);
    v92 = v63;
    [v63 startAnimationAfterDelay_];
    v91 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) &selRef:1.0 initWithActivityItems:180.255 applicationActivities:{85.5469, 0.0, 0.0} + 3];
    v67 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v91 timingParameters:0.0];
    v68 = swift_allocObject();
    *(v68 + 16) = v66;
    *(v68 + 24) = v5;
    v105 = sub_190950A4C;
    v106 = v68;
    aBlock = MEMORY[0x1E69E9820];
    v102 = 1107296256;
    v103 = sub_190840E6C;
    v104 = &block_descriptor_292;
    v69 = _Block_copy(&aBlock);
    sub_190D50920();
    v70 = v66;

    [v67 addAnimations_];
    _Block_release(v69);
    v90 = v67;
    [v67 startAnimationAfterDelay_];
    v53 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) &selRef:1.0 initWithActivityItems:350.255 applicationActivities:{85.5469, 0.0, 0.0} + 3];
    v54 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v53 timingParameters:0.0];
    v71 = swift_allocObject();
    *(v71 + 16) = v70;
    *(v71 + 24) = v5;
    v105 = sub_190950A24;
    v106 = v71;
    aBlock = MEMORY[0x1E69E9820];
    v102 = 1107296256;
    v103 = sub_190840E6C;
    v104 = &block_descriptor_298;
    v72 = _Block_copy(&aBlock);
    sub_190D50920();
    v73 = v70;

    [v54 &selRef_animatingIn];
    _Block_release(v72);
    [v54 startAnimationAfterDelay_];
    v58 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) &selRef:1.0 initWithActivityItems:275.255 applicationActivities:{29.5469, 0.0, 0.0} + 3];
    v59 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v58 timingParameters:0.0];
    v74 = swift_allocObject();
    *(v74 + 16) = v73;
    *(v74 + 24) = v5;
    v105 = sub_190950368;
    v106 = v74;
    aBlock = MEMORY[0x1E69E9820];
    v102 = 1107296256;
    v103 = sub_190840E6C;
    v104 = &block_descriptor_304;
    v75 = _Block_copy(&aBlock);
    sub_190D50920();
    v76 = v73;

    [v59 &selRef_animatingIn];
    _Block_release(v75);
    [v59 startAnimationAfterDelay_];
  }
}

id sub_19094C84C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_pickerPill);
  swift_beginAccess();
  v4 = *(a2 + 16);
  [v3 center];
  return [v3 setCenter_];
}

void sub_19094C8C4(uint64_t a1, double *a2)
{
  v4 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_mediumTail);
  swift_beginAccess();
  v5 = a2[21] * 0.5;
  [v4 setBounds_];
  v6 = [v4 layer];
  [v6 setCornerRadius_];

  v7 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_smallTail);
  swift_beginAccess();
  v8 = a2[29] * 0.5;
  [v7 setBounds_];
  v9 = [v7 layer];
  [v9 setCornerRadius_];

  v10 = [objc_opt_self() sharedBehaviors];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 usesTapbackRefreshStyling];

    if (v12 || (type metadata accessor for TapbackPickerBalloonAccessoryView(), !swift_dynamicCastClass()))
    {
      v13 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_emojiTail);
      swift_beginAccess();
      v14 = a2[13] * 0.5;
      [v13 setBounds_];
      v15 = [v13 layer];
      [v15 setCornerRadius_];
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_19094CAC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_pickerPill);
  swift_beginAccess();
  [v2 bounds];
  return [v2 setBounds_];
}

id sub_19094CB3C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_pickerPill);
  swift_beginAccess();
  [v2 center];
  return [v2 setCenter_];
}

id sub_19094CBB4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_mediumTail);
  swift_beginAccess();
  [v2 center];
  return [v2 setCenter_];
}

id sub_19094CC2C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_pickerPill);
  swift_beginAccess();
  v5 = *(a2 + 16);
  [v4 center];
  [v4 setCenter_];
  [v4 center];
  [v4 setCenter_];
  v6 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_smallTail);
  [v4 center];
  [v6 setCenter_];
  v7 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_mediumTail);
  [v4 center];
  [v7 setCenter_];
  v8 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_emojiTail);
  [v4 center];
  return [v8 setCenter_];
}

void sub_19094CD4C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_pickerPill);
  swift_beginAccess();
  v4 = *(a2 + 40) * 0.5;
  [v3 setBounds_];
  v5 = [v3 layer];
  [v5 setCornerRadius_];
}

id sub_19094CDF8(uint64_t a1, double *a2)
{
  v4 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_smallTail);
  swift_beginAccess();
  [v4 setCenter_];
  v5 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_mediumTail);
  swift_beginAccess();
  [v5 setCenter_];
  v6 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_emojiTail);
  swift_beginAccess();
  return [v6 setCenter_];
}

void sub_19094CEC0()
{
  v1 = *&v0[OBJC_IVAR____TtC7ChatKit26TapbackPickerContainerView_displayConfiguration];
  type metadata accessor for TapbackPickerEmojiTailTouchedDownLayout();
  swift_allocObject();
  v2 = v1;
  v3 = sub_1909DDE08(v2);

  *&v0[OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_activeLayout] = v3;
  sub_190D50920();

  v18 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:2.0 stiffness:350.0 damping:31.749 initialVelocity:{0.0, 0.0}];
  v4 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v18 timingParameters:0.0];
  v5 = swift_allocObject();
  *(v5 + 16) = v0;
  *(v5 + 24) = v3;
  v23 = sub_1909502D8;
  v24 = v5;
  aBlock = MEMORY[0x1E69E9820];
  v20 = 1107296256;
  v21 = sub_190840E6C;
  v22 = &block_descriptor_250;
  v6 = _Block_copy(&aBlock);
  sub_190D50920();
  v7 = v0;

  [v4 addAnimations_];
  _Block_release(v6);
  [v4 startAnimationAfterDelay_];
  v8 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:2.0 stiffness:300.0 damping:39.0 initialVelocity:{0.0, 0.0}];
  v9 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v8 timingParameters:0.0];
  v10 = swift_allocObject();
  *(v10 + 16) = v7;
  *(v10 + 24) = v3;
  v23 = sub_1909502F4;
  v24 = v10;
  aBlock = MEMORY[0x1E69E9820];
  v20 = 1107296256;
  v21 = sub_190840E6C;
  v22 = &block_descriptor_256;
  v11 = _Block_copy(&aBlock);
  sub_190D50920();
  v12 = v7;

  [v9 addAnimations_];
  _Block_release(v11);
  [v9 startAnimationAfterDelay_];
  v13 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:2.0 stiffness:300.0 damping:50.0 initialVelocity:{0.0, 0.0}];
  v14 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v13 timingParameters:0.0];
  v15 = swift_allocObject();
  *(v15 + 16) = v12;
  *(v15 + 24) = v3;
  v23 = sub_190950310;
  v24 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v20 = 1107296256;
  v21 = sub_190840E6C;
  v22 = &block_descriptor_262;
  v16 = _Block_copy(&aBlock);
  sub_190D50920();
  v17 = v12;

  [v14 addAnimations_];
  _Block_release(v16);
  [v14 startAnimationAfterDelay_];
}

void sub_19094D2E4()
{
  v1 = *&v0[OBJC_IVAR____TtC7ChatKit26TapbackPickerContainerView_displayConfiguration];
  type metadata accessor for TapbackPickerSelectionLayout();
  swift_allocObject();
  v2 = sub_1909DBC0C(v1);
  *&v0[OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_activeLayout] = v2;
  sub_190D50920();

  v17 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:2.0 stiffness:350.0 damping:31.749 initialVelocity:{0.0, 0.0}];
  v3 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v17 timingParameters:0.0];
  v4 = swift_allocObject();
  *(v4 + 16) = v0;
  *(v4 + 24) = v2;
  v22 = sub_190950A40;
  v23 = v4;
  aBlock = MEMORY[0x1E69E9820];
  v19 = 1107296256;
  v20 = sub_190840E6C;
  v21 = &block_descriptor_232_0;
  v5 = _Block_copy(&aBlock);
  sub_190D50920();
  v6 = v0;

  [v3 addAnimations_];
  _Block_release(v5);
  [v3 startAnimationAfterDelay_];
  v7 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:2.0 stiffness:300.0 damping:39.0 initialVelocity:{0.0, 0.0}];
  v8 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v7 timingParameters:0.0];
  v9 = swift_allocObject();
  *(v9 + 16) = v6;
  *(v9 + 24) = v2;
  v22 = sub_190950A44;
  v23 = v9;
  aBlock = MEMORY[0x1E69E9820];
  v19 = 1107296256;
  v20 = sub_190840E6C;
  v21 = &block_descriptor_238;
  v10 = _Block_copy(&aBlock);
  sub_190D50920();
  v11 = v6;

  [v8 addAnimations_];
  _Block_release(v10);
  [v8 startAnimationAfterDelay_];
  v12 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:2.0 stiffness:300.0 damping:50.0 initialVelocity:{0.0, 0.0}];
  v13 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v12 timingParameters:0.0];
  v14 = swift_allocObject();
  *(v14 + 16) = v11;
  *(v14 + 24) = v2;
  v22 = sub_190950A48;
  v23 = v14;
  aBlock = MEMORY[0x1E69E9820];
  v19 = 1107296256;
  v20 = sub_190840E6C;
  v21 = &block_descriptor_244;
  v15 = _Block_copy(&aBlock);
  sub_190D50920();
  v16 = v11;

  [v13 addAnimations_];
  _Block_release(v15);
  [v13 startAnimationAfterDelay_];
  sub_19094FFB0(*&v16[OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_pickerPill], 0.05, 1.07);
}

void sub_19094D724(uint64_t a1, double *a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_emojiTail);
  swift_beginAccess();
  v4 = a2[10];
  v5 = a2[11];
  v6 = a2[13];
  [v3 setBounds_];
  [v3 setCenter_];
  v7 = [v3 layer];
  [v7 setCornerRadius_];
}

void sub_19094D7EC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_mediumTail);
  swift_beginAccess();
  [v3 bounds];
  [v3 setBounds_];
  v4 = [v3 layer];
  [v4 setCornerRadius_];
}

void sub_19094D8A0(uint64_t a1, double *a2)
{
  v4 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_mediumTail);
  swift_beginAccess();
  [v4 setCenter_];
  v5 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_smallTail);
  swift_beginAccess();
  v6 = a2[26];
  v7 = a2[27];
  v8 = a2[29];
  [v5 setBounds_];
  [v5 setCenter_];
  v9 = [v5 layer];
  [v9 setCornerRadius_];
}

void sub_19094D9A4(double *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_pickerPill);
  v4 = [v3 layer];
  v5 = sub_190D51C70();
  v6 = sub_190D56ED0();
  [v4 setValue:v5 forKeyPath:v6];

  v34 = *(v1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_emojiTail);
  v7 = [v34 &selRef_lastContentSizeInterfaceOrientation];
  v8 = sub_190D51C70();
  v9 = sub_190D56ED0();
  [v7 &selRef:v8 setViewControllers:v9 direction:? animated:? completion:?];

  v10 = *(v1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_mediumTail);
  v11 = [v10 &selRef_lastContentSizeInterfaceOrientation];
  v12 = sub_190D51C70();
  v13 = sub_190D56ED0();
  [v11 &selRef:v12 setViewControllers:v13 direction:? animated:? completion:?];

  v14 = *(v1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_smallTail);
  v15 = [v14 &selRef_lastContentSizeInterfaceOrientation];
  v16 = sub_190D51C70();
  v17 = sub_190D56ED0();
  [v15 &selRef:v16 setViewControllers:v17 direction:? animated:? completion:?];

  swift_beginAccess();
  v18 = a1[2];
  v19 = a1[3];
  v20 = a1[5];
  [v3 setBounds_];
  [v3 setCenter_];
  v21 = [v3 &selRef_lastContentSizeInterfaceOrientation];
  [v21 setCornerRadius_];

  swift_beginAccess();
  v22 = a1[10];
  v23 = a1[11];
  v24 = a1[13];
  [v34 setBounds_];
  [v34 setCenter_];
  v25 = [v34 &selRef_lastContentSizeInterfaceOrientation];
  [v25 setCornerRadius_];

  swift_beginAccess();
  v26 = a1[18];
  v27 = a1[19];
  v28 = a1[21];
  [v10 setBounds_];
  [v10 setCenter_];
  v29 = [v10 &selRef_lastContentSizeInterfaceOrientation];
  [v29 setCornerRadius_];

  swift_beginAccess();
  v30 = a1[26];
  v31 = a1[27];
  v32 = a1[29];
  [v14 setBounds_];
  [v14 setCenter_];
  v33 = [v14 &selRef_lastContentSizeInterfaceOrientation];
  [v33 setCornerRadius_];
}

double sub_19094DD88(char a1)
{
  v3 = *&v1[OBJC_IVAR____TtC7ChatKit26TapbackPickerContainerView_displayConfiguration];
  type metadata accessor for TapbackPickerEmojiInputLayout();
  swift_allocObject();
  v4 = sub_1909DC4F8(v3);
  *&v1[OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_activeLayout] = v4;
  sub_190D50920();

  if (a1)
  {
    v49 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:2.0 stiffness:360.0 damping:45.0 initialVelocity:{0.0, 0.0}];
    v5 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v49 timingParameters:0.0];
    v6 = swift_allocObject();
    *(v6 + 16) = v1;
    *(v6 + 24) = v4;
    v54 = sub_190950A2C;
    v55 = v6;
    aBlock = MEMORY[0x1E69E9820];
    v51 = 1107296256;
    v52 = sub_190840E6C;
    v53 = &block_descriptor_184;
    v7 = _Block_copy(&aBlock);
    sub_190D50920();
    v8 = v1;

    v48 = v5;
    [v5 addAnimations_];
    _Block_release(v7);
    [v5 startAnimationAfterDelay_];
    v47 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) &selRef:1.0 initWithActivityItems:84.3138 applicationActivities:{14.6197, 0.0, 0.0} + 3];
    v9 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v47 timingParameters:0.0];
    v10 = swift_allocObject();
    *(v10 + 16) = v8;
    *(v10 + 24) = v4;
    v54 = sub_190950A30;
    v55 = v10;
    aBlock = MEMORY[0x1E69E9820];
    v51 = 1107296256;
    v52 = sub_190840E6C;
    v53 = &block_descriptor_190;
    v11 = _Block_copy(&aBlock);
    sub_190D50920();
    v12 = v8;

    v46 = v9;
    [v9 addAnimations_];
    _Block_release(v11);
    [v9 startAnimationAfterDelay_];
    v45 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:2.0 stiffness:300.0 damping:39.0 initialVelocity:{0.0, 0.0}];
    v13 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v45 timingParameters:0.0];
    v14 = swift_allocObject();
    *(v14 + 16) = v12;
    *(v14 + 24) = v4;
    v54 = sub_1909502C8;
    v55 = v14;
    aBlock = MEMORY[0x1E69E9820];
    v51 = 1107296256;
    v52 = sub_190840E6C;
    v53 = &block_descriptor_196;
    v15 = _Block_copy(&aBlock);
    sub_190D50920();
    v16 = v12;

    v44 = v13;
    [v13 addAnimations_];
    _Block_release(v15);
    [v13 startAnimationAfterDelay_];
    v43 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:2.0 stiffness:300.0 damping:39.0 initialVelocity:{0.0, 0.0}];
    v17 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v43 timingParameters:0.0];
    v18 = swift_allocObject();
    *(v18 + 16) = v16;
    *(v18 + 24) = v4;
    v54 = sub_190950A34;
    v55 = v18;
    aBlock = MEMORY[0x1E69E9820];
    v51 = 1107296256;
    v52 = sub_190840E6C;
    v53 = &block_descriptor_202;
    v19 = _Block_copy(&aBlock);
    sub_190D50920();
    v20 = v16;

    v42 = v17;
    [v17 addAnimations_];
    _Block_release(v19);
    [v17 startAnimationAfterDelay_];
    v41 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:2.0 stiffness:300.0 damping:39.0 initialVelocity:{0.0, 0.0}];
    v21 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v41 timingParameters:0.0];
    v22 = swift_allocObject();
    *(v22 + 16) = v20;
    *(v22 + 24) = v4;
    v54 = sub_190950A38;
    v55 = v22;
    aBlock = MEMORY[0x1E69E9820];
    v51 = 1107296256;
    v52 = sub_190840E6C;
    v53 = &block_descriptor_208;
    v23 = _Block_copy(&aBlock);
    sub_190D50920();
    v24 = v20;

    [v21 addAnimations_];
    _Block_release(v23);
    [v21 startAnimationAfterDelay_];
    v40 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:2.0 stiffness:300.0 damping:39.0 initialVelocity:{0.0, 0.0}];
    v25 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v40 timingParameters:0.0];
    v26 = swift_allocObject();
    *(v26 + 16) = v24;
    *(v26 + 24) = v4;
    v54 = sub_190950A3C;
    v55 = v26;
    aBlock = MEMORY[0x1E69E9820];
    v51 = 1107296256;
    v52 = sub_190840E6C;
    v53 = &block_descriptor_214;
    v27 = _Block_copy(&aBlock);
    sub_190D50920();
    v28 = v24;

    [v25 addAnimations_];
    _Block_release(v27);
    [v25 startAnimationAfterDelay_];
    v39 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) &selRef:2.0 initWithActivityItems:300.0 applicationActivities:{39.0, 0.0, 0.0} + 3];
    v29 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v39 timingParameters:0.0];
    v30 = swift_allocObject();
    *(v30 + 16) = v28;
    *(v30 + 24) = v4;
    v54 = sub_190950A54;
    v55 = v30;
    aBlock = MEMORY[0x1E69E9820];
    v51 = 1107296256;
    v52 = sub_190840E6C;
    v53 = &block_descriptor_220;
    v31 = _Block_copy(&aBlock);
    sub_190D50920();
    v32 = v28;

    [v29 addAnimations_];
    _Block_release(v31);
    [v29 startAnimationAfterDelay_];
    v33 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:2.0 stiffness:300.0 damping:39.0 initialVelocity:{0.0, 0.0}];
    v34 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v33 timingParameters:0.0];
    v35 = swift_allocObject();
    *(v35 + 16) = v32;
    *(v35 + 24) = v4;
    v54 = sub_1909502D0;
    v55 = v35;
    aBlock = MEMORY[0x1E69E9820];
    v51 = 1107296256;
    v52 = sub_190840E6C;
    v53 = &block_descriptor_226_0;
    v36 = _Block_copy(&aBlock);
    sub_190D50920();
    v37 = v32;

    [v34 addAnimations_];
    _Block_release(v36);
    [v34 startAnimationAfterDelay_];
  }

  else
  {
    sub_19094D9A4(v4);
  }

  return result;
}

void sub_19094E7BC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_emojiTail);
  swift_beginAccess();
  [v3 center];
  [v3 setCenter_];
  [v3 bounds];
  [v3 setBounds_];
  v4 = [v3 layer];
  [v4 setCornerRadius_];
}

id sub_19094E898(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_smallTail);
  swift_beginAccess();
  [v2 center];
  return [v2 setCenter_];
}

void sub_19094E910(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_smallTail);
  swift_beginAccess();
  [v3 bounds];
  [v3 setBounds_];
  v4 = [v3 layer];
  [v4 setCornerRadius_];
}

void sub_19094E9C4(char a1)
{
  v2 = v1;
  v3 = *&v1[OBJC_IVAR____TtC7ChatKit26TapbackPickerContainerView_displayConfiguration];
  if (a1)
  {
    type metadata accessor for TapbackPickerSelectionLayout();
    swift_allocObject();
    v4 = sub_1909DBC0C(v3);
  }

  else
  {
    type metadata accessor for TapbackPickerSuggestionsScrolledLayout();
    swift_allocObject();
    v4 = sub_1909DD19C(v3);
  }

  v5 = v4;
  *&v1[OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_activeLayout] = v4;
  sub_190D50920();

  v6 = *&v1[OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_smallTail];
  swift_beginAccess();
  [v6 bounds];
  [v6 setBounds_];
  v7 = [v6 layer];
  [v7 setCornerRadius_];

  v8 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:2.0 stiffness:300.0 damping:39.0 initialVelocity:{0.0, 0.0}];
  v9 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v8 timingParameters:0.0];
  v10 = swift_allocObject();
  *(v10 + 16) = v2;
  *(v10 + 24) = v5;
  v49 = sub_190950264;
  v50 = v10;
  aBlock = MEMORY[0x1E69E9820];
  v46 = 1107296256;
  v47 = sub_190840E6C;
  v48 = &block_descriptor_136;
  v11 = _Block_copy(&aBlock);
  sub_190D50920();
  v12 = v2;

  v44 = v9;
  [v9 addAnimations_];
  _Block_release(v11);
  [v9 startAnimationAfterDelay_];
  v13 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v8 timingParameters:0.0];
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v14 + 24) = v5;
  v49 = sub_190950280;
  v50 = v14;
  aBlock = MEMORY[0x1E69E9820];
  v46 = 1107296256;
  v47 = sub_190840E6C;
  v48 = &block_descriptor_142_0;
  v15 = _Block_copy(&aBlock);
  sub_190D50920();
  v16 = v12;

  v43 = v13;
  [v13 addAnimations_];
  _Block_release(v15);
  [v13 startAnimationAfterDelay_];
  v17 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v8 timingParameters:0.0];
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  *(v18 + 24) = v5;
  v49 = sub_190950A58;
  v50 = v18;
  aBlock = MEMORY[0x1E69E9820];
  v46 = 1107296256;
  v47 = sub_190840E6C;
  v48 = &block_descriptor_148;
  v19 = _Block_copy(&aBlock);
  sub_190D50920();
  v20 = v16;

  v42 = v17;
  [v17 addAnimations_];
  _Block_release(v19);
  [v17 startAnimationAfterDelay_];
  v21 = v8;
  v22 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v8 timingParameters:0.0];
  v23 = swift_allocObject();
  *(v23 + 16) = v20;
  *(v23 + 24) = v5;
  v49 = sub_19095029C;
  v50 = v23;
  aBlock = MEMORY[0x1E69E9820];
  v46 = 1107296256;
  v47 = sub_190840E6C;
  v48 = &block_descriptor_154;
  v24 = _Block_copy(&aBlock);
  sub_190D50920();
  v25 = v20;

  [v22 addAnimations_];
  _Block_release(v24);
  [v22 startAnimationAfterDelay_];
  v26 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v21 timingParameters:0.0];
  v27 = swift_allocObject();
  *(v27 + 16) = v25;
  *(v27 + 24) = v5;
  v49 = sub_190950A34;
  v50 = v27;
  aBlock = MEMORY[0x1E69E9820];
  v46 = 1107296256;
  v47 = sub_190840E6C;
  v48 = &block_descriptor_160;
  v28 = _Block_copy(&aBlock);
  sub_190D50920();
  v29 = v25;

  [v26 addAnimations_];
  _Block_release(v28);
  [v26 startAnimationAfterDelay_];
  v30 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v21 timingParameters:0.0];
  v31 = swift_allocObject();
  *(v31 + 16) = v29;
  *(v31 + 24) = v5;
  v49 = sub_1909502A4;
  v50 = v31;
  aBlock = MEMORY[0x1E69E9820];
  v46 = 1107296256;
  v47 = sub_190840E6C;
  v48 = &block_descriptor_166;
  v32 = _Block_copy(&aBlock);
  sub_190D50920();
  v33 = v29;

  [v30 addAnimations_];
  _Block_release(v32);
  [v30 startAnimationAfterDelay_];
  v34 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v21 timingParameters:0.0];
  v35 = swift_allocObject();
  *(v35 + 16) = v33;
  *(v35 + 24) = v5;
  v49 = sub_190950A3C;
  v50 = v35;
  aBlock = MEMORY[0x1E69E9820];
  v46 = 1107296256;
  v47 = sub_190840E6C;
  v48 = &block_descriptor_172_0;
  v36 = _Block_copy(&aBlock);
  sub_190D50920();
  v37 = v33;

  [v34 addAnimations_];
  _Block_release(v36);
  [v34 startAnimationAfterDelay_];
  v38 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v21 timingParameters:0.0];
  v39 = swift_allocObject();
  *(v39 + 16) = v37;
  *(v39 + 24) = v5;
  v49 = sub_1909502C0;
  v50 = v39;
  aBlock = MEMORY[0x1E69E9820];
  v46 = 1107296256;
  v47 = sub_190840E6C;
  v48 = &block_descriptor_178;
  v40 = _Block_copy(&aBlock);
  sub_190D50920();
  v41 = v37;

  [v38 addAnimations_];
  _Block_release(v40);
  [v38 startAnimationAfterDelay_];
}

void sub_19094F2BC(uint64_t a1, double *a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_pickerPill);
  swift_beginAccess();
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[5];
  [v3 setBounds_];
  [v3 setCenter_];
  v7 = [v3 layer];
  [v7 setCornerRadius_];
}

id sub_19094F384(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_emojiTail);
  swift_beginAccess();
  v4 = *(a2 + 80);
  [v3 center];
  return [v3 setCenter_];
}

id sub_19094F3FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_emojiTail);
  swift_beginAccess();
  [v2 center];
  return [v2 setCenter_];
}

void sub_19094F474(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_emojiTail);
  swift_beginAccess();
  [v3 bounds];
  [v3 setBounds_];
  v4 = [v3 layer];
  [v4 setCornerRadius_];
}

id sub_19094F528(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_mediumTail);
  swift_beginAccess();
  v4 = *(a2 + 144);
  [v3 center];
  return [v3 setCenter_];
}

void sub_19094F5A0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_mediumTail);
  swift_beginAccess();
  [v3 center];
  [v3 setCenter_];
  [v3 bounds];
  [v3 setBounds_];
  v4 = [v3 layer];
  [v4 setCornerRadius_];
}

id sub_19094F67C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_smallTail);
  swift_beginAccess();
  v4 = *(a2 + 208);
  [v3 center];
  return [v3 setCenter_];
}

void sub_19094F6F4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_smallTail);
  swift_beginAccess();
  [v4 center];
  [v4 setCenter_];
  v5 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_emojiTail);
  swift_beginAccess();
  v6 = *(a2 + 104) * 0.5;
  [v5 setBounds_];
  v7 = [v5 layer];
  [v7 setCornerRadius_];
}

void sub_19094F7F4(void *a1, double a2)
{
  v2 = [a1 layer];
  v3 = sub_190D51C70();
  v4 = sub_190D56ED0();
  [v2 setValue:v3 forKeyPath:v4];
}

void sub_19094F89C(void *a1)
{
  v1 = [a1 layer];
  v2 = sub_190D51C70();
  v3 = sub_190D56ED0();
  [v1 setValue:v2 forKeyPath:v3];
}

double sub_19094F938()
{
  sub_19094FFB0(*(v0 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_pickerPill), 0.15, 1.25);
  sub_19094FFB0(*(v0 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_emojiTail), 0.2, 1.35);
  sub_19094FFB0(*(v0 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_mediumTail), 0.25, 1.45);
  v1 = *(v0 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_smallTail);

  sub_19094FFB0(v1, 0.3, 1.55);
  return result;
}

void sub_19094F9DC()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC7ChatKit26TapbackPickerContainerView_displayConfiguration];
  type metadata accessor for TapbackPickerSuggestionsScrolledLayout();
  swift_allocObject();
  v3 = sub_1909DD19C(v2);
  v4 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:275.0 damping:25.0217 initialVelocity:{0.0, 0.0}];
  v5 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v4 timingParameters:0.0];
  v6 = swift_allocObject();
  *(v6 + 16) = v1;
  *(v6 + 24) = v3;
  v9[4] = sub_19095025C;
  v9[5] = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_190840E6C;
  v9[3] = &block_descriptor_130;
  v7 = _Block_copy(v9);
  v8 = v1;
  sub_190D50920();

  [v5 addAnimations_];
  _Block_release(v7);
  [v5 startAnimationAfterDelay_];
}

void sub_19094FB7C(uint64_t a1, double *a2)
{
  v4 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_pickerPill);
  swift_beginAccess();
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[5];
  [v4 setBounds_];
  [v4 setCenter_];
  v8 = [v4 layer];
  [v8 setCornerRadius_];

  v9 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_emojiTail);
  swift_beginAccess();
  v10 = a2[10];
  v11 = a2[11];
  v12 = a2[13];
  [v9 setBounds_];
  [v9 setCenter_];
  v13 = [v9 layer];
  [v13 setCornerRadius_];

  v14 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_mediumTail);
  swift_beginAccess();
  v15 = a2[18];
  v16 = a2[19];
  v17 = a2[21];
  [v14 setBounds_];
  [v14 setCenter_];
  v18 = [v14 layer];
  [v18 setCornerRadius_];

  v19 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_smallTail);
  swift_beginAccess();
  v20 = a2[26];
  v21 = a2[27];
  v22 = a2[29];
  [v19 setBounds_];
  [v19 setCenter_];
  v23 = [v19 layer];
  [v23 setCornerRadius_];
}

void sub_19094FDD4()
{

  v1 = *(v0 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_gyroSpring);
}

id sub_19094FF54(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_19094FFB0(void *a1, double a2, double a3)
{
  v6 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:5.0 stiffness:300.0 damping:50.0 initialVelocity:{0.0, 0.0}];
  v7 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v6 timingParameters:0.0];
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a3;
  v20 = sub_190950248;
  v21 = v8;
  v16 = MEMORY[0x1E69E9820];
  v17 = 1107296256;
  v18 = sub_190840E6C;
  v19 = &block_descriptor_41;
  v9 = _Block_copy(&v16);
  v10 = a1;

  [v7 addAnimations_];
  _Block_release(v9);
  [v7 startAnimationAfterDelay_];
  v11 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:5.0 stiffness:300.0 damping:50.0 initialVelocity:{0.0, 0.0}];
  v12 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v11 timingParameters:0.0];
  v13 = swift_allocObject();
  *(v13 + 16) = v10;
  v20 = sub_190950254;
  v21 = v13;
  v16 = MEMORY[0x1E69E9820];
  v17 = 1107296256;
  v18 = sub_190840E6C;
  v19 = &block_descriptor_124;
  v14 = _Block_copy(&v16);
  v15 = v10;

  [v12 addAnimations_];
  _Block_release(v14);
  [v12 startAnimationAfterDelay_];
}

id sub_19095039C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_smallTail);
  swift_beginAccess();
  return [v3 setCenter_];
}

id sub_1909503F8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_mediumTail);
  swift_beginAccess();
  return [v3 setCenter_];
}

id sub_190950454()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_emojiTail);
  swift_beginAccess();
  return [v3 setCenter_];
}

uint64_t objectdestroy_378Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t objectdestroy_384Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

id sub_190950630()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_pickerPill);
  swift_beginAccess();
  return [v3 setCenter_];
}

id sub_190950724()
{
  result = *(*(v0 + 16) + OBJC_IVAR____TtC7ChatKit26TapbackPickerContainerView_backingBalloon);
  if (result)
  {
    return [result setAlpha_];
  }

  return result;
}

uint64_t objectdestroy_126Tm(uint64_t a1)
{

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

void sub_190950C14(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD57940, &unk_190DDF3F0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19 - v8;
  v10 = sub_190D57FB0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v12(v9, 1, 1, v10);
  sub_19022EEA4(v9, &unk_1EAD57940, &unk_190DDF3F0);
  v12(v9, 1, 1, v10);
  sub_1908DD2DC(v9, v6);
  if ((*(v11 + 48))(v6, 1, v10) == 1)
  {
    sub_19022EEA4(v6, &unk_1EAD57940, &unk_190DDF3F0);
    sub_190D57F70();
    sub_19022EEA4(v9, &unk_1EAD57940, &unk_190DDF3F0);
  }

  else
  {
    sub_19022EEA4(v9, &unk_1EAD57940, &unk_190DDF3F0);
    (*(v11 + 32))(a1, v6, v10);
  }

  v13 = [objc_opt_self() configurationWithPointSize:5 weight:2 scale:16.0];
  v14 = sub_190D56ED0();
  v15 = [objc_opt_self() systemImageNamed_];

  if (v15)
  {
    v16 = [v15 imageWithConfiguration_];

    v17 = v16;
    sub_190D57F60();
    v18 = *(v2 + OBJC_IVAR___CKGlassCancelAudioRecordingButton_foregroundColor);
    sub_190D57F00();
  }

  else
  {
    __break(1u);
  }
}

id GlassCancelAudioRecordingButton.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id GlassCancelAudioRecordingButton.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD57940, &unk_190DDF3F0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = aBlock - v10;
  v12 = OBJC_IVAR___CKGlassCancelAudioRecordingButton_foregroundColor;
  *&v4[v12] = [objc_opt_self() labelColor];
  v13 = type metadata accessor for GlassCancelAudioRecordingButton();
  v25.receiver = v4;
  v25.super_class = v13;
  v14 = objc_msgSendSuper2(&v25, sel_initWithFrame_, a1, a2, a3, a4);
  [v14 ck_applyGlassBackground];
  aBlock[4] = sub_190951248;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_19084156C;
  aBlock[3] = &block_descriptor_42;
  v15 = _Block_copy(aBlock);
  [v14 setConfigurationUpdateHandler_];
  _Block_release(v15);
  sub_190950C14(v11);
  v16 = sub_190D57FB0();
  (*(*(v16 - 8) + 56))(v11, 0, 1, v16);
  sub_190D57FE0();

  v17 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
  v18 = sub_190D574E0();
  [v17 setValue:v18 forKey:*MEMORY[0x1E6979BA8]];

  v19 = [v14 layer];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53C90, &qword_190DD63C0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_190DD1D90;
  *(v20 + 56) = sub_1909515A4();
  *(v20 + 32) = v17;
  v21 = v17;
  v22 = sub_190D57160();

  [v19 setFilters_];

  return v14;
}

char *sub_190951248(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD57940, &unk_190DDF3F0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v20 - v6;
  v8 = sub_190D57FB0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for GlassCancelAudioRecordingButton();
  result = swift_dynamicCastClass();
  if (result)
  {
    v13 = result;
    v14 = a1;
    sub_190D57FD0();
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {

      return sub_19022EEA4(v7, &unk_1EAD57940, &unk_190DDF3F0);
    }

    (*(v9 + 32))(v11, v7, v8);
    v15 = [v13 layer];
    v16 = sub_190D56ED0();
    v17 = [v15 valueForKeyPath_];

    if (v17)
    {
      sub_190D58140();
      swift_unknownObjectRelease();
    }

    else
    {
      v21 = 0u;
      v22 = 0u;
    }

    v23[0] = v21;
    v23[1] = v22;
    if (*(&v22 + 1))
    {
      if ((swift_dynamicCast() & 1) != 0 && v20[1] == 0.0)
      {
        v18 = *&v13[OBJC_IVAR___CKGlassCancelAudioRecordingButton_foregroundColor];
LABEL_13:
        sub_190D57F00();
        (*(v9 + 16))(v4, v11, v8);
        (*(v9 + 56))(v4, 0, 1, v8);
        sub_190D57FE0();

        return (*(v9 + 8))(v11, v8);
      }
    }

    else
    {
      sub_19022EEA4(v23, &unk_1EAD551C0, &unk_190DD9790);
    }

    v19 = [objc_opt_self() clearColor];
    goto LABEL_13;
  }

  return result;
}

unint64_t sub_1909515A4()
{
  result = qword_1ED7769D0;
  if (!qword_1ED7769D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED7769D0);
  }

  return result;
}

uint64_t sub_1909517A4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (a1 == 0xD000000000000020 && 0x8000000190E5F000 == a2 || (sub_190D58760() & 1) != 0)
    {
      return 1;
    }

    v4 = sub_190D56ED0();
  }

  else
  {
    v4 = 0;
  }

  v6.receiver = v2;
  v6.super_class = type metadata accessor for GlassCancelAudioRecordingButton();
  v5 = objc_msgSendSuper2(&v6, sel__shouldAnimatePropertyWithKey_, v4);

  return v5;
}

id sub_1909518D0(double a1)
{
  v2 = [v1 layer];
  v3 = sub_190D51C70();
  v4 = sub_190D56ED0();
  [v2 setValue:v3 forKeyPath:v4];

  return [v1 setNeedsUpdateConfiguration];
}

id GlassCancelAudioRecordingButton.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GlassCancelAudioRecordingButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for DetailsLinksTabView(uint64_t a1)
{
  result = qword_1EAD57628;
  if (!qword_1EAD57628)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_190951B5C(uint64_t a1)
{
  sub_190D52850();
  if (v1 <= 0x3F)
  {
    sub_190951D10(319, &qword_1EAD57638, _s9ViewModelCMa_3, MEMORY[0x1E6981790]);
    if (v2 <= 0x3F)
    {
      sub_190951D10(319, &qword_1EAD52C10, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
      if (v3 <= 0x3F)
      {
        sub_190951D10(319, &qword_1EAD5F6C0, MEMORY[0x1E697E7E0], MEMORY[0x1E697DCC0]);
        if (v4 <= 0x3F)
        {
          sub_190951D10(319, &qword_1EAD57640, MEMORY[0x1E697E178], MEMORY[0x1E697DCC0]);
          if (v5 <= 0x3F)
          {
            sub_190951D74(319);
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

void sub_190951D10(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_190951D74(uint64_t a1)
{
  if (!qword_1EAD57648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EAD55F20, &unk_190DD75D0);
    v1 = sub_190D56000();
    if (!v2)
    {
      atomic_store(v1, &qword_1EAD57648);
    }
  }
}

uint64_t sub_190951E20@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_190D54800();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F690, &unk_190DDE260);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for DetailsLinksTabView(0);
  sub_19022FD14(v1 + *(v10 + 32), v9, &qword_1EAD5F690, &unk_190DDE260);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_190D54190();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_190D576B0();
    v13 = sub_190D55260();
    sub_190D52F50();

    sub_190D547F0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_190952028@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_190D54800();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57650, &unk_190DE3E50);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for DetailsLinksTabView(0);
  sub_19022FD14(v1 + *(v10 + 36), v9, &qword_1EAD57650, &unk_190DE3E50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_190D53DF0();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_190D576B0();
    v13 = sub_190D55260();
    sub_190D52F50();

    sub_190D547F0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_190952230@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v15[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57658, &qword_190DE0660);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v15 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57660, &qword_190DE0668);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - v11;
  v15[4] = a2;
  v15[5] = a1;
  sub_190D50920();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57668, &qword_190DE0670);
  sub_190233640(&qword_1EAD57670, &qword_1EAD57668, &qword_190DE0670, MEMORY[0x1E6981880]);
  sub_190D52590();
  v13 = sub_190233640(&qword_1EAD57678, &qword_1EAD57658, &qword_190DE0660, MEMORY[0x1E6995710]);
  sub_190D557E0();
  (*(v6 + 8))(v8, v5);
  v15[6] = v5;
  v15[7] = v13;
  swift_getOpaqueTypeConformance2();
  sub_190D55AA0();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1909524EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = sub_190D56500();
  a3[1] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57680, &qword_190DE0678);
  return sub_19095254C(a1, a2, (a3 + *(v7 + 44)));
}

uint64_t sub_19095254C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  *&v56 = a2;
  v5 = sub_190D54DF0();
  MEMORY[0x1EEE9AC00](v5);
  *&v64 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57688, &qword_190DE0680);
  v59 = *(v7 - 8);
  *&v60 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v55 - v8;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57690, &qword_190DE0688);
  MEMORY[0x1EEE9AC00](v57);
  v58 = &v55 - v10;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57698, &unk_190DE0690);
  MEMORY[0x1EEE9AC00](v61);
  v63 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v55 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v62 = &v55 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD576A0, &qword_190DEA330);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v55 - v18;
  type metadata accessor for DetailsLinksTabView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57620, &qword_190DE0598);
  sub_190D55FF0();
  sub_190A50638(v56, v19, &v68);
  sub_19022EEA4(v19, &qword_1EAD576A0, &qword_190DEA330);
  sub_190D54AD0();
  v65 = a1;
  LODWORD(v67[0]) = 0;
  sub_190956370(&qword_1EAD5AB40, MEMORY[0x1E697FCB0], MEMORY[0x1E697FCC8]);
  sub_190D58970();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD576A8, &qword_190DE06A0);
  sub_190233640(&qword_1EAD576B0, &qword_1EAD576A8, &qword_190DE06A0, MEMORY[0x1E6981F48]);
  sub_190D53A10();
  v20 = sub_190D552A0();
  sub_190D525F0();
  v22 = v21;
  v23 = 0uLL;
  v64 = 0u;
  v24 = 0uLL;
  if ((v21 & 1) == 0)
  {
    sub_190D539C0();
    *(&v24 + 1) = v25;
    *(&v23 + 1) = v26;
  }

  v55 = v24;
  v56 = v23;
  v27 = v58;
  (*(v59 + 32))(v58, v9, v60);
  v28 = v27 + *(v57 + 36);
  *v28 = v20;
  v29 = v56;
  *(v28 + 24) = v55;
  *(v28 + 8) = v29;
  *(v28 + 40) = v22 & 1;
  v30 = sub_190D552D0();
  sub_190D525E0();
  v32 = v31;
  v33 = 0uLL;
  if ((v31 & 1) == 0)
  {
    sub_190D539C0();
    *(&v33 + 1) = v34;
    *(&v36 + 1) = v35;
    v64 = v36;
  }

  v60 = v33;
  sub_19081E40C(v27, v14, &qword_1EAD57690, &qword_190DE0688);
  v37 = v62;
  v38 = &v14[*(v61 + 36)];
  *v38 = v30;
  *(v38 + 24) = v60;
  *(v38 + 8) = v64;
  v38[40] = v32 & 1;
  sub_19081E40C(v14, v37, &qword_1EAD57698, &unk_190DE0690);
  v39 = v63;
  sub_19022FD14(v37, v63, &qword_1EAD57698, &unk_190DE0690);
  v40 = v79;
  v66[10] = v78;
  v66[11] = v79;
  v41 = v80;
  v42 = v81;
  v66[12] = v80;
  v66[13] = v81;
  v43 = v74;
  v44 = v75;
  v66[6] = v74;
  v66[7] = v75;
  v45 = v76;
  v46 = v77;
  v66[8] = v76;
  v66[9] = v77;
  v47 = v70;
  v48 = v71;
  v66[2] = v70;
  v66[3] = v71;
  v49 = v72;
  v50 = v73;
  v66[4] = v72;
  v66[5] = v73;
  v51 = v68;
  v52 = v69;
  v66[0] = v68;
  v66[1] = v69;
  a3[10] = v78;
  a3[11] = v40;
  a3[12] = v41;
  a3[13] = v42;
  a3[6] = v43;
  a3[7] = v44;
  a3[8] = v45;
  a3[9] = v46;
  a3[2] = v47;
  a3[3] = v48;
  a3[4] = v49;
  a3[5] = v50;
  *a3 = v51;
  a3[1] = v52;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD576B8, &qword_190DE06A8);
  sub_19022FD14(v39, a3 + *(v53 + 48), &qword_1EAD57698, &unk_190DE0690);
  sub_19022FD14(v66, v67, &qword_1EAD576C0, &qword_190DE06B0);
  sub_19022EEA4(v37, &qword_1EAD57698, &unk_190DE0690);
  sub_19022EEA4(v39, &qword_1EAD57698, &unk_190DE0690);
  v67[10] = v78;
  v67[11] = v79;
  v67[12] = v80;
  v67[13] = v81;
  v67[6] = v74;
  v67[7] = v75;
  v67[8] = v76;
  v67[9] = v77;
  v67[2] = v70;
  v67[3] = v71;
  v67[4] = v72;
  v67[5] = v73;
  v67[0] = v68;
  v67[1] = v69;
  return sub_19022EEA4(v67, &qword_1EAD576C0, &qword_190DE06B0);
}

id sub_190952C3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v145 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD576C8, &qword_190DE06B8);
  v141 = *(v3 - 8);
  v142 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v133 = v125 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD576D0, &qword_190DE06C0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v144 = v125 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v143 = v125 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD576D8, &qword_190DE06C8);
  v146 = *(v9 - 8);
  v147 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v134 = v125 - v10;
  v11 = type metadata accessor for DetailsLinksTabView(0);
  v149 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v150 = v12;
  v151 = v125 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD576E0, &qword_190DE06D0);
  v154 = *(v13 - 8);
  v155 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v153 = v125 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v152 = v125 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD576E8, &qword_190DE06D8);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v140 = v125 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v125 - v20;
  v22 = *(a1 + 8);
  v23 = *(a1 + 16);
  v156 = a1;
  v164 = v22;
  v165 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD576F0, &qword_190DE06E0);
  sub_190D55FD0();
  v24 = v160;
  swift_getKeyPath();
  v164 = v24;
  sub_190956370(&qword_1EAD576F8, _s9ViewModelCMa_3, &unk_190E038D8);
  sub_190D51C20();

  v25 = qword_1EAD5D3B8;
  swift_beginAccess();
  v26 = *&v24[v25];
  sub_190D52690();

  v164 = v22;
  v165 = v23;
  sub_190D55FD0();
  v27 = v160;
  swift_getKeyPath();
  v164 = v27;
  sub_190D51C20();

  v28 = qword_1EAD5D3C0;
  swift_beginAccess();
  v29 = *&v27[v28];
  sub_190D52690();

  if (!*(v26 + 2))
  {

    (*(v146 + 56))(v21, 1, 1, v147);
    if (*(v29 + 2))
    {
      v147 = 0;
      v148 = v21;
      v137 = 0;
      v138 = 0;
      v146 = 0;
      v139 = 0;
      v99 = 0;
      v101 = 0;
      v103 = 0;
      v105 = 0;
      v89 = v156;
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  v135 = v29;
  v148 = v21;
  result = CKFrameworkBundle(v30);
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  v32 = result;
  v33 = sub_190D56ED0();
  v125[2] = "AB_FILTER_SCREENSHOTS";
  v34 = sub_190D56ED0();
  v35 = [v32 localizedStringForKey:v33 value:0 table:v34];

  v36 = sub_190D56F10();
  v38 = v37;

  v164 = v36;
  v165 = v38;
  v125[1] = sub_19081E484();
  v39 = sub_190D555F0();
  v41 = v40;
  LOBYTE(v34) = v42;
  v43 = sub_190D555B0();
  v45 = v44;
  v47 = v46;
  sub_19081E474(v39, v41, v34 & 1);

  sub_190D55E00();
  v48 = sub_190D55570();
  v137 = v49;
  v138 = v48;
  LOBYTE(v34) = v50;
  v139 = v51;

  sub_19081E474(v43, v45, v47 & 1);

  v136 = sub_190D552E0();
  v52 = v156;
  sub_190D539C0();
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v60 = v59;
  LOBYTE(v39) = v34 & 1;
  v177 = v34 & 1;
  v132 = v34 & 1;
  v174 = 0;
  v164 = v26;
  v61 = v151;
  sub_190956178(v52, v151, type metadata accessor for DetailsLinksTabView);
  v62 = (*(v149 + 80) + 16) & ~*(v149 + 80);
  v63 = swift_allocObject();
  sub_1909561E0(v61, v63 + v62, type metadata accessor for DetailsLinksTabView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57700, &qword_190DE0738);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57708, &qword_190DE0740);
  sub_190233640(&qword_1EAD57710, &qword_1EAD57700, &qword_190DE0738, MEMORY[0x1E69E6338]);
  sub_190955B54();
  sub_190956370(&qword_1EAD45BF0, _s4LinkVMa, &unk_190DF17C8);
  v64 = v152;
  sub_190D56290();
  sub_190D56500();
  sub_190D53C60();
  v130 = v180;
  v131 = v178;
  v128 = v183;
  v129 = v182;
  v159 = 1;
  v158 = v179;
  v157 = v181;
  v65 = v153;
  v66 = v154;
  v67 = *(v154 + 16);
  v68 = v155;
  v67(v153, v64, v155);
  LOBYTE(v61) = v159;
  v126 = v158;
  v127 = v157;
  *&v160 = v138;
  *(&v160 + 1) = v137;
  LOBYTE(v161) = v39;
  *(&v161 + 1) = *v176;
  DWORD1(v161) = *&v176[3];
  *(&v161 + 1) = v139;
  LOBYTE(v162) = v136;
  *(&v162 + 1) = *v175;
  DWORD1(v162) = *&v175[3];
  *(&v162 + 1) = v54;
  *&v163[0] = v56;
  *(&v163[0] + 1) = v58;
  *&v163[1] = v60;
  BYTE8(v163[1]) = 0;
  v69 = v160;
  v70 = v161;
  v71 = v134;
  *(v134 + 57) = *(v163 + 9);
  v72 = v163[0];
  *(v71 + 2) = v162;
  *(v71 + 3) = v72;
  *v71 = v69;
  *(v71 + 1) = v70;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57758, &unk_190DE0760);
  v67(&v71[*(v73 + 48)], v65, v68);
  v74 = &v71[*(v73 + 64)];
  *v74 = 0;
  v74[8] = v61;
  *(v74 + 2) = v131;
  v74[24] = v126;
  *(v74 + 4) = v130;
  v74[40] = v127;
  v75 = v128;
  *(v74 + 6) = v129;
  *(v74 + 7) = v75;
  sub_19022FD14(&v160, &v164, &qword_1EAD596C0, &unk_190DDAEA0);
  v76 = *(v66 + 8);
  v76(v64, v68);
  v76(v65, v68);
  v164 = v138;
  v165 = v137;
  LOBYTE(v166) = v132;
  *(&v166 + 1) = *v176;
  HIDWORD(v166) = *&v176[3];
  v167 = v139;
  LOBYTE(v168) = v136;
  *(&v168 + 1) = *v175;
  HIDWORD(v168) = *&v175[3];
  v169 = v54;
  v170 = v56;
  v171 = v58;
  v172 = v60;
  v173 = 0;
  sub_19022EEA4(&v164, &qword_1EAD596C0, &unk_190DDAEA0);
  v21 = v148;
  sub_19081E40C(v71, v148, &qword_1EAD576D8, &qword_190DE06C8);
  v77 = (*(v146 + 56))(v21, 0, 1, v147);
  if (!*(v135 + 2))
  {
LABEL_9:

    v120 = v143;
    (*(v141 + 56))(v143, 1, 1, v142);
    goto LABEL_10;
  }

  result = CKFrameworkBundle(v77);
  if (result)
  {
    v78 = result;
    v79 = sub_190D56ED0();
    v80 = sub_190D56ED0();
    v81 = [v78 localizedStringForKey:v79 value:0 table:v80];

    v82 = sub_190D56F10();
    v84 = v83;

    v164 = v82;
    v165 = v84;
    v85 = sub_190D555F0();
    v87 = v86;
    LOBYTE(v80) = v88;
    v89 = v156;
    v90 = sub_190D555B0();
    v92 = v91;
    v94 = v93;
    sub_19081E474(v85, v87, v80 & 1);

    sub_190D55E00();
    v137 = sub_190D55570();
    v146 = v96;
    v147 = v95;
    LOBYTE(v80) = v97;

    sub_19081E474(v90, v92, v94 & 1);

    LOBYTE(v85) = sub_190D552E0();
    sub_190D539C0();
    v99 = v98;
    v101 = v100;
    v103 = v102;
    v105 = v104;
    LOBYTE(v164) = v80 & 1;
    LOBYTE(v160) = 0;
    v139 = v80 & 1;
    v138 = v85;
    v29 = v135;
LABEL_8:
    v164 = v29;
    v106 = v151;
    sub_190956178(v89, v151, type metadata accessor for DetailsLinksTabView);
    v107 = (*(v149 + 80) + 16) & ~*(v149 + 80);
    v108 = swift_allocObject();
    sub_1909561E0(v106, v108 + v107, type metadata accessor for DetailsLinksTabView);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57700, &qword_190DE0738);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57708, &qword_190DE0740);
    sub_190233640(&qword_1EAD57710, &qword_1EAD57700, &qword_190DE0738, MEMORY[0x1E69E6338]);
    sub_190955B54();
    sub_190956370(&qword_1EAD45BF0, _s4LinkVMa, &unk_190DF17C8);
    v109 = v152;
    sub_190D56290();
    v111 = v153;
    v110 = v154;
    v112 = *(v154 + 16);
    v113 = v155;
    v112(v153, v109, v155);
    v114 = v137;
    *&v160 = v137;
    *(&v160 + 1) = v147;
    *&v161 = v139;
    *(&v161 + 1) = v146;
    *&v162 = v138;
    *(&v162 + 1) = v99;
    *&v163[0] = v101;
    *(&v163[0] + 1) = v103;
    *&v163[1] = v105;
    BYTE8(v163[1]) = 0;
    v115 = v163[0];
    v116 = v133;
    *(v133 + 2) = v162;
    v116[3] = v115;
    *(v116 + 57) = *(v163 + 9);
    v117 = v161;
    *v116 = v160;
    v116[1] = v117;
    v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57760, &qword_190DE0770);
    v112(v116 + *(v118 + 48), v111, v113);
    sub_19022FD14(&v160, &v164, &qword_1EAD57768, &qword_190DE0778);
    v119 = *(v110 + 8);
    v119(v109, v113);
    v119(v111, v113);
    v164 = v114;
    v165 = v147;
    v166 = v139;
    v167 = v146;
    v168 = v138;
    v169 = v99;
    v170 = v101;
    v171 = v103;
    v172 = v105;
    v173 = 0;
    sub_19022EEA4(&v164, &qword_1EAD57768, &qword_190DE0778);
    v120 = v143;
    sub_19081E40C(v116, v143, &qword_1EAD576C8, &qword_190DE06B8);
    (*(v141 + 56))(v120, 0, 1, v142);
    v21 = v148;
LABEL_10:
    v121 = v140;
    sub_19022FD14(v21, v140, &qword_1EAD576E8, &qword_190DE06D8);
    v122 = v144;
    sub_19022FD14(v120, v144, &qword_1EAD576D0, &qword_190DE06C0);
    v123 = v145;
    sub_19022FD14(v121, v145, &qword_1EAD576E8, &qword_190DE06D8);
    v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57770, &qword_190DE0780);
    sub_19022FD14(v122, v123 + *(v124 + 48), &qword_1EAD576D0, &qword_190DE06C0);
    sub_19022EEA4(v120, &qword_1EAD576D0, &qword_190DE06C0);
    sub_19022EEA4(v21, &qword_1EAD576E8, &qword_190DE06D8);
    sub_19022EEA4(v122, &qword_1EAD576D0, &qword_190DE06C0);
    return sub_19022EEA4(v121, &qword_1EAD576E8, &qword_190DE06D8);
  }

LABEL_12:
  __break(1u);
  return result;
}

char *sub_190953BE4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v77 = a3;
  v5 = _s4LinkVMa(0);
  v91 = *(v5 - 8);
  v90 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v94 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v88 = &v77 - v8;
  v9 = type metadata accessor for DetailsLinksTabView(0);
  v87 = *(v9 - 8);
  v86 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v85 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57730, &unk_190DE0750);
  MEMORY[0x1EEE9AC00](v84);
  v12 = &v77 - v11;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57728, &qword_190DE0748) - 8;
  MEMORY[0x1EEE9AC00](v89);
  v92 = &v77 - v13;
  v97 = _s4LinkVMa;
  v79 = a1;
  sub_190956178(a1, v12, _s4LinkVMa);
  v83 = a2;
  v14 = *(a2 + 16);
  *&v110 = *(a2 + 8);
  *(&v110 + 1) = v14;
  v15 = v110;
  v16 = v14;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD576F0, &qword_190DE06E0);
  sub_190D55FD0();
  v17 = v107;
  v80 = *&v107[qword_1EAD629A0];
  v18 = v80;

  *&v110 = v15;
  *(&v110 + 1) = v16;
  sub_190D55FD0();
  v19 = v107;
  v105 = v5;
  v96 = v5;
  v20 = sub_190956370(&qword_1EAD555A8, _s4LinkVMa, &unk_190DF1828);
  v106 = v20;
  v82 = v20;
  swift_getKeyPath();
  *&v110 = v19;
  v81 = sub_190233640(&qword_1EAD566C0, &qword_1EAD566C8, &unk_190DDCF50, &unk_190E038D8);
  sub_190D51C20();

  v21 = *&v19[qword_1EAD629B8];
  sub_190D52690();

  v78 = sub_190A4FBAC(a1, v21, v22);

  v95 = v15;
  *&v110 = v15;
  *(&v110 + 1) = v16;
  v23 = v16;
  v93 = v16;
  sub_190D55FD0();
  v24 = v107;
  v103 = v5;
  v104 = v20;
  swift_getKeyPath();
  *&v110 = v24;
  sub_190D51C20();

  LOBYTE(v5) = v24[qword_1EAD629B0];

  *&v110 = v15;
  *(&v110 + 1) = v23;
  sub_190D55FD0();
  LOBYTE(v21) = v107[qword_1EAD62980];

  v25 = _s8CellViewVMa_0(0);
  v26 = v25[9];
  v107 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57778, &qword_190DE0800);
  sub_190D55FC0();
  *&v12[v26] = v110;
  *&v12[v25[8]] = v80;
  v12[v25[5]] = v78;
  v12[v25[6]] = v5;
  v12[v25[7]] = v21;
  v12[*(v84 + 36)] = 0;
  v27 = v85;
  sub_190956178(v83, v85, type metadata accessor for DetailsLinksTabView);
  v28 = v79;
  v29 = v88;
  v30 = v97;
  sub_190956178(v79, v88, v97);
  v31 = (*(v87 + 80) + 16) & ~*(v87 + 80);
  v32 = (v86 + *(v91 + 80) + v31) & ~*(v91 + 80);
  v33 = swift_allocObject();
  sub_1909561E0(v27, v33 + v31, type metadata accessor for DetailsLinksTabView);
  sub_1909561E0(v29, v33 + v32, v30);
  sub_190955CD8();
  v34 = v92;
  sub_190D557E0();

  sub_19022EEA4(v12, &qword_1EAD57730, &unk_190DE0750);
  v35 = v96;
  v36 = v34 + *(v89 + 44);
  v37 = v28;
  sub_19022FD14(v28 + *(v96 + 28), v36, &unk_1EAD55F20, &unk_190DD75D0);
  KeyPath = swift_getKeyPath();
  *(v36 + *(type metadata accessor for DetailsDoubleTapGestureModifier(0) + 20)) = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57650, &unk_190DE3E50);
  swift_storeEnumTagMultiPayload();
  v39 = v95;
  v40 = v93;
  *&v110 = v95;
  *(&v110 + 1) = v93;
  sub_190D55FD0();
  v41 = v107;
  v101 = v35;
  v42 = v35;
  v43 = v82;
  v102 = v82;
  swift_getKeyPath();
  *&v110 = v41;
  sub_190D51C20();

  v44 = *&v41[qword_1EAD629B8];
  sub_190D52690();

  v45 = sub_1908A203C(v44);

  sub_190956178(v37, v94, v97);
  *&v110 = v39;
  *(&v110 + 1) = v40;
  sub_190D55FD0();
  v46 = v107;
  v99 = v42;
  v100 = v43;
  swift_getKeyPath();
  *&v110 = v46;
  sub_190D51C20();

  v47 = qword_1EAD62988;
  swift_beginAccess();
  v48 = *&v46[v47];
  sub_190D52690();

  v49 = sub_190A504A0(v37, v48);
  v51 = v50;

  result = CKFrameworkBundle(v52);
  if (result)
  {
    v54 = result;
    v55 = sub_190D56ED0();
    v56 = sub_190D56ED0();
    v57 = [v54 localizedStringForKey:v55 value:0 table:v56];

    v90 = sub_190D56F10();
    v89 = v58;

    *&v110 = v95;
    *(&v110 + 1) = v93;
    sub_190D55FD0();
    v59 = v107;
    v60 = *&v107[qword_1EAD629A0];
    v61 = v60;

    v111 = v96;
    v112 = v43;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v110);
    v63 = v94;
    sub_190956178(v94, boxed_opaque_existential_1, _s4LinkVMa);
    v64 = *(v45 + 16);
    v97 = v49;
    LODWORD(v91) = v51;
    if (!v64)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53C30, &qword_190DE0870);
      v45 = swift_allocObject();
      *(v45 + 16) = xmmword_190DD1D90;
      sub_19083B854(&v110, v45 + 32);
      v64 = *(v45 + 16);
    }

    sub_190D52690();
    result = (v45 + 32);
    v65 = -v64;
    v66 = -1;
    do
    {
      v67 = v65 + v66;
      if (v65 + v66 == -1)
      {
        break;
      }

      if (++v66 >= *(v45 + 16))
      {
        __break(1u);
        goto LABEL_13;
      }

      v68 = result + 40;
      sub_19083B854(result, &v107);
      v69 = v108;
      v70 = v109;
      __swift_project_boxed_opaque_existential_1(&v107, v108);
      v71 = (*(v70 + 64))(v69, v70);
      __swift_destroy_boxed_opaque_existential_0(&v107);
      result = v68;
    }

    while ((v71 & 1) == 0);
    v72 = v67 == -1;

    if (v91)
    {
      v73 = 0;
    }

    else
    {
      v73 = v97;
    }

    sub_190956314(v63);
    __swift_destroy_boxed_opaque_existential_0(&v110);
    v74 = v77;
    sub_19081E40C(v92, v77, &qword_1EAD57728, &qword_190DE0748);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57708, &qword_190DE0740);
    v75 = v74 + *(result + 9);
    *v75 = v45;
    *(v75 + 8) = v73;
    v76 = v89;
    *(v75 + 16) = v90;
    *(v75 + 24) = v76;
    *(v75 + 32) = v60;
    *(v75 + 40) = v72;
  }

  else
  {
LABEL_13:
    __break(1u);
  }

  return result;
}

void sub_1909546DC(uint64_t a1, void *a2)
{
  v27 = a2;
  v2 = sub_190D53DF0();
  v23 = *(v2 - 8);
  v24 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v22 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F20, &unk_190DD75D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v20 - v5;
  v7 = sub_190D515F0();
  v25 = *(v7 - 8);
  v26 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v21 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_190956370(&qword_1EAD57780, type metadata accessor for DetailsLinksTabView, &unk_190DE05C0);
  v10 = *(v9 + 56);
  v11 = type metadata accessor for DetailsLinksTabView(0);
  v12 = v10(v11, v9);
  v13 = _s4LinkVMa(0);
  v28 = v13;
  v29 = sub_190956370(&qword_1EAD555A8, _s4LinkVMa, &unk_190DF1828);
  swift_getKeyPath();
  v30 = v12;
  sub_190233640(&qword_1EAD566C0, &qword_1EAD566C8, &unk_190DDCF50, &unk_190E038D8);
  sub_190D51C20();

  v14 = v12[qword_1EAD629B0];

  if (v14 == 1)
  {
    v15 = v10(v11, v9);
    sub_190A4D760(v27);
  }

  else
  {
    sub_19022FD14(v27 + *(v13 + 28), v6, &unk_1EAD55F20, &unk_190DD75D0);
    v17 = v25;
    v16 = v26;
    if ((*(v25 + 48))(v6, 1, v26) == 1)
    {
      sub_19022EEA4(v6, &unk_1EAD55F20, &unk_190DD75D0);
    }

    else
    {
      v18 = v21;
      (*(v17 + 32))(v21, v6, v16);
      v19 = v22;
      sub_190952028(v22);
      sub_190D53DE0();
      (*(v23 + 8))(v19, v24);
      (*(v17 + 8))(v18, v16);
    }
  }
}

uint64_t sub_190954A9C@<X0>(uint64_t a1@<X0>, uint64_t (**a2)(uint64_t a1)@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1 - 8);
  sub_190956178(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DetailsLinksTabView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_1909561E0(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for DetailsLinksTabView);
  *a2 = sub_190954C18;
  a2[1] = v7;
  return result;
}

uint64_t sub_190954BAC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD576F0, &qword_190DE06E0);
  sub_190D55FD0();
  return v1;
}

void sub_190954C40(unsigned int a1, uint64_t a2)
{
  v105 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57788, &qword_190DE0878);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v106 = v96 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v103 = v96 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v96 - v9;
  v111 = _s4LinkVMa(0);
  v113 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v104 = v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v100 = v96 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v99 = v96 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v102 = v96 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v101 = v96 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = (v96 - v21);
  MEMORY[0x1EEE9AC00](v23);
  v107 = v96 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = (v96 - v26);
  v28 = sub_190D54190();
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v31 = v96 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v34 = v96 - v33;
  v112 = v2;
  sub_190951E20(v96 - v33);
  (*(v29 + 104))(v31, *MEMORY[0x1E697E7D8], v28);
  v35 = sub_190D54180();
  v36 = *(v29 + 8);
  v36(v31, v28);
  v36(v34, v28);
  v109 = v10;
  v114 = v27;
  if ((v35 & 1) == 0)
  {
LABEL_5:
    v108 = a1;
    goto LABEL_6;
  }

  if (a1 != 2)
  {
    if (a1 == 3)
    {
      v108 = 2;
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v108 = 3;
LABEL_6:
  v38 = *(v112 + 8);
  v37 = *(v112 + 16);
  v122 = v38;
  v123 = v37;
  v110 = v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD576F0, &qword_190DE06E0);
  v40 = sub_190D55FD0();
  v41 = v120;
  MEMORY[0x1EEE9AC00](v40);
  v42 = v111;
  v96[-2] = v111;
  v43 = sub_190956370(&qword_1EAD555A8, _s4LinkVMa, &unk_190DF1828);
  v96[-1] = v43;
  swift_getKeyPath();
  v122 = v41;
  sub_190233640(&qword_1EAD566C0, &qword_1EAD566C8, &unk_190DDCF50, &unk_190E038D8);
  sub_190D51C20();

  v44 = *&v41[qword_1EAD629B8];
  sub_190D52690();

  v45 = *(v44 + 16);

  if (v45 != 1)
  {
    return;
  }

  v122 = v38;
  v123 = v110;
  v46 = sub_190D55FD0();
  v47 = v120;
  MEMORY[0x1EEE9AC00](v46);
  v96[-2] = v42;
  v96[-1] = v43;
  swift_getKeyPath();
  v122 = v47;
  sub_190D51C20();

  v48 = *&v47[qword_1EAD629B8];
  sub_190D52690();

  if (!*(v48 + 16))
  {
    goto LABEL_23;
  }

  v49 = *(v113 + 80);
  v96[1] = v49;
  v50 = (v49 + 32) & ~v49;
  v51 = v107;
  sub_190956178(v48 + v50, v107, _s4LinkVMa);

  sub_1909561E0(v51, v114, _s4LinkVMa);
  v107 = v38;
  v122 = v38;
  v52 = v110;
  v123 = v110;
  v98 = v39;
  sub_190D55FD0();
  v53 = v120;
  swift_getKeyPath();
  v122 = v53;
  sub_190956370(&qword_1EAD576F8, _s9ViewModelCMa_3, &unk_190E038D8);
  sub_190D51C20();

  v54 = qword_1EAD5D3B8;
  swift_beginAccess();
  v55 = *&v53[v54];
  sub_190D52690();

  v56 = 0;
  v57 = *(v55 + 16);
  v97 = v50;
  v58 = v55 + v50;
  v59 = v108;
  while (1)
  {
    v60 = v56;
    if (v57 == v56)
    {

      v120 = v107;
      v121 = v52;
      sub_190D55FD0();
      v63 = v115;
      swift_getKeyPath();
      v120 = v63;
      sub_190D51C20();

      v64 = qword_1EAD5D3C0;
      goto LABEL_21;
    }

    sub_190956178(v58 + *(v113 + 9) * v56, v22, _s4LinkVMa);
    v61 = *v22 == *v114 && v22[1] == v114[1];
    if (v61)
    {
      break;
    }

    ++v56;
    v62 = sub_190D58760();
    sub_190956314(v22);
    if (v62)
    {
      goto LABEL_20;
    }
  }

  sub_190956314(v22);
LABEL_20:

  v120 = v107;
  v121 = v52;
  sub_190D55FD0();
  v63 = v115;
  swift_getKeyPath();
  v120 = v63;
  sub_190D51C20();

  v64 = qword_1EAD5D3B8;
LABEL_21:
  v65 = &v63[v64];
  swift_beginAccess();
  v66 = v113;
  v67 = *v65;
  sub_190D52690();

  v68 = v114;
  v69 = sub_190A52F08(v59, v67, v114);
  if (v70)
  {
    sub_190956314(v68);
LABEL_23:

    return;
  }

  v71 = v69;
  v72 = *(v66 + 7);
  v73 = v111;
  v72(v109, 1, 1, v111);
  if ((v71 & 0x8000000000000000) == 0 && v71 < *(v67 + 16))
  {
    v74 = v97;
    v75 = v67 + v97 + *(v66 + 9) * v71;
    v76 = v103;
    sub_190956178(v75, v103, _s4LinkVMa);

    v77 = v109;
    sub_19022EEA4(v109, &qword_1EAD57788, &qword_190DE0878);
    v72(v76, 0, 1, v73);
    sub_190956418(v76, v77);
    v78 = v107;
    goto LABEL_39;
  }

  v113 = v72;
  if (v57 == v60)
  {
    v61 = v59 == 0;
    v78 = v107;
    v74 = v97;
    v77 = v109;
    if (!v61)
    {
      goto LABEL_39;
    }

    v115 = v107;
    v116 = v110;
    sub_190D55FD0();
    v79 = v118;
    swift_getKeyPath();
    v115 = v79;
    sub_190D51C20();

    v80 = qword_1EAD5D3B8;
    swift_beginAccess();
    v81 = *&v79[v80];
    sub_190D52690();

    v82 = *(v81 + 16);
    if (v82)
    {
      v83 = v100;
      sub_190956178(v81 + v74 + *(v66 + 9) * (v82 - 1), v100, _s4LinkVMa);

      sub_19022EEA4(v77, &qword_1EAD57788, &qword_190DE0878);
      v84 = v83;
      v85 = &v124;
LABEL_37:
      v90 = *(v85 - 32);
      sub_1909561E0(v84, v90, _s4LinkVMa);
      sub_1909561E0(v90, v77, _s4LinkVMa);
      v73 = v111;
      v113(v77, 0, 1, v111);
      goto LABEL_39;
    }

    goto LABEL_38;
  }

  v61 = v59 == 1;
  v78 = v107;
  v74 = v97;
  v77 = v109;
  if (v61)
  {
    v115 = v107;
    v116 = v110;
    sub_190D55FD0();
    v86 = v118;
    swift_getKeyPath();
    v115 = v86;
    sub_190D51C20();

    v87 = qword_1EAD5D3C0;
    swift_beginAccess();
    v88 = *&v86[v87];
    sub_190D52690();

    if (*(v88 + 16))
    {
      v89 = v102;
      sub_190956178(v88 + v74, v102, _s4LinkVMa);

      sub_19022EEA4(v77, &qword_1EAD57788, &qword_190DE0878);
      v84 = v89;
      v85 = &v125;
      goto LABEL_37;
    }

LABEL_38:

    v73 = v111;
  }

LABEL_39:
  v91 = v106;
  sub_19022FD14(v77, v106, &qword_1EAD57788, &qword_190DE0878);
  if ((*(v66 + 6))(v91, 1, v73) == 1)
  {
    sub_19022EEA4(v77, &qword_1EAD57788, &qword_190DE0878);
    sub_190956314(v114);
    sub_19022EEA4(v91, &qword_1EAD57788, &qword_190DE0878);
  }

  else
  {
    v92 = v104;
    sub_1909561E0(v91, v104, _s4LinkVMa);
    v118 = v78;
    v119 = v110;
    sub_190D55FD0();
    v93 = v117;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53EF8, &qword_190DE0880);
    v94 = swift_allocObject();
    *(v94 + 16) = xmmword_190DD1D90;
    sub_190956178(v92, v94 + v74, _s4LinkVMa);
    sub_1908EAF94(v94);

    MEMORY[0x1EEE9AC00](v95);
    v96[-2] = v105;
    v96[-1] = v92;
    sub_190D565A0();
    sub_190D53E40();

    sub_19022EEA4(v77, &qword_1EAD57788, &qword_190DE0878);
    sub_190956314(v114);
    sub_190956314(v92);
  }
}

double sub_190955A10@<D0>(uint64_t *a1@<X0>, uint64_t *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_190956370(&qword_1EAD576F8, _s9ViewModelCMa_3, &unk_190E038D8);
  sub_190D51C20();

  v7 = *a3;
  swift_beginAccess();
  *a4 = *(v6 + v7);
  sub_190D52690();
  return result;
}

unint64_t sub_190955B54()
{
  result = qword_1EAD57718;
  if (!qword_1EAD57718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD57708, &qword_190DE0740);
    sub_190955BE0();
    sub_190955DC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD57718);
  }

  return result;
}

unint64_t sub_190955BE0()
{
  result = qword_1EAD57720;
  if (!qword_1EAD57720)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD57728, &qword_190DE0748);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD57730, &unk_190DE0750);
    sub_190955CD8();
    swift_getOpaqueTypeConformance2();
    sub_190956370(&qword_1EAD57748, type metadata accessor for DetailsDoubleTapGestureModifier, &unk_190E01580);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD57720);
  }

  return result;
}

unint64_t sub_190955CD8()
{
  result = qword_1EAD57738;
  if (!qword_1EAD57738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD57730, &unk_190DE0750);
    sub_190956370(&qword_1EAD57740, _s8CellViewVMa_0, &unk_190E04428);
    sub_190233640(&qword_1EAD557A0, &qword_1EAD557A8, &qword_190DDA3A0, MEMORY[0x1E697FD58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD57738);
  }

  return result;
}

unint64_t sub_190955DC0()
{
  result = qword_1EAD57750;
  if (!qword_1EAD57750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD57750);
  }

  return result;
}

uint64_t objectdestroyTm_10()
{
  v1 = type metadata accessor for DetailsLinksTabView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52E60, &qword_190DDDDD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_190D540E0();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F690, &unk_190DDE260);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_190D54190();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
  }

  v10 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57650, &unk_190DE3E50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_190D53DF0();
    (*(*(v11 - 8) + 8))(v5 + v10, v11);
  }

  else
  {
  }

  v12 = v5 + v1[11];
  v13 = sub_190D515F0();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(v12, 1, v13))
  {
    (*(v14 + 8))(v12, v13);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57620, &qword_190DE0598);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1909560E4(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for DetailsLinksTabView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_190956178(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1909561E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_190956248()
{
  v1 = *(type metadata accessor for DetailsLinksTabView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(_s4LinkVMa(0) - 8);
  v5 = (v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80)));

  sub_1909546DC(v0 + v2, v5);
}

uint64_t sub_190956314(uint64_t a1)
{
  v2 = _s4LinkVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_190956370(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_190956418(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57788, &qword_190DE0878);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

Swift::Void __swiftcall CKTranscriptMessageCell.configureMessageDeliveryFailureButton(failed:)(Swift::Bool failed)
{
  v3 = [v1 failureButton];
  if (v3)
  {
    v4 = v3;
    [v3 removeFromSuperview];
  }

  [v1 setFailureButton_];
  if (failed)
  {
    sub_190956574();
    v6 = v5;
    v7 = [v1 contentView];
    [v7 addSubview_];

    [v6 sizeToFit];
    [v1 setFailureButton_];
  }

  [v1 setNeedsLayout];
}

void sub_190956574()
{
  v28 = sub_190D57E10();
  v1 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v3 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_190D57E40();
  v4 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_190D57FB0();
  v7 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v11 = MEMORY[0x1EEE9AC00](v10).n128_u64[0];
  v13 = &v27 - v12;
  v29 = v0;
  v14 = [v0 traitCollection];
  v15 = [v14 isTranscriptBackgroundActive];

  if (v15)
  {
    v16 = [objc_opt_self() configurationPreferringMulticolor];
    v17 = sub_190D56ED0();
    v18 = [objc_opt_self() systemImageNamed_];

    v19 = [v18 imageByApplyingSymbolConfiguration_];
  }

  else
  {
    v16 = sub_190D56ED0();
    v19 = [objc_opt_self() systemImageNamed_];
  }

  v20 = v19;
  sub_190D57F70();
  sub_190D57F60();
  (*(v4 + 104))(v6, *MEMORY[0x1E69DC528], v27);
  sub_190D57E70();
  sub_190D57E60();
  (*(v1 + 104))(v3, *MEMORY[0x1E69DC508], v28);
  sub_190D57E20();
  sub_190956C24();
  v21 = v30;
  (*(v7 + 16))(v9, v13, v30);
  v22 = sub_190D57FC0();
  [v22 addTarget:v29 action:sel_didTapFailureButtonWithSender_ forControlEvents:64];
  v23 = [objc_opt_self() sharedBehaviors];
  if (v23)
  {
    v24 = v23;
    v25 = [v23 theme];

    if (v25)
    {
      v26 = [v25 statusFailureTextColor];

      [v22 setTintColor_];
      (*(v7 + 8))(v13, v21);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

double CKTranscriptMessageCell.didTapFailureButton(sender:)(uint64_t a1)
{
  v3 = [v1 failureButtonDelegate];
  if (v3)
  {
    v5 = v3;
    sub_19023C414(a1, v13);
    v6 = v14;
    if (v14)
    {
      v7 = __swift_project_boxed_opaque_existential_1(v13, v14);
      v8 = *(v6 - 8);
      v9 = MEMORY[0x1EEE9AC00](v7);
      v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v8 + 16))(v11, v9);
      v12 = sub_190D58740();
      (*(v8 + 8))(v11, v6);
      __swift_destroy_boxed_opaque_existential_0(v13);
    }

    else
    {
      v12 = 0;
    }

    [v5 transcriptMessageCell:v1 didTapMessageDeliveryFailureButton:v12];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  return result;
}

unint64_t sub_190956C24()
{
  result = qword_1EAD464E0;
  if (!qword_1EAD464E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAD464E0);
  }

  return result;
}

void sub_190956C80()
{
  v0 = [objc_opt_self() sharedBehaviors];
  if (v0)
  {
    v1 = v0;
    v2 = [v0 usesTapbackRefreshStyling];

    v3 = 1.0;
    if (v2)
    {
      v3 = 0.5;
    }

    qword_1EAD9DB98 = *&v3;
  }

  else
  {
    __break(1u);
  }
}

uint64_t static TapbackPileTemplate.topTapbackCenterXOffsetFromSourcePoint.getter()
{
  if (qword_1EAD51A48 != -1)
  {
    result = swift_once();
  }

  if (qword_1EAD51A40 != -1)
  {
    return swift_once();
  }

  return result;
}

id TapbackPileTemplate.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TapbackPileTemplate.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TapbackPileTemplate();
  return objc_msgSendSuper2(&v2, sel_init);
}

id TapbackPileTemplate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TapbackPileTemplate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _s21DatePickerButtonStyleVMa(uint64_t a1)
{
  result = qword_1EAD577A0;
  if (!qword_1EAD577A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_190956FF4(uint64_t a1)
{
  sub_1909570C0(319, &qword_1EAD55988, MEMORY[0x1E697DBD0]);
  if (v1 <= 0x3F)
  {
    sub_1909570C0(319, &qword_1EAD5F6C0, MEMORY[0x1E697E7E0]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1909570C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_190D53A80();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_190957130@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_190D54800();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55AC8, &qword_190DDADF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  sub_19022FD14(v2, &v14 - v9, &qword_1EAD55AC8, &qword_190DDADF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_190D53A60();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_190D576B0();
    v13 = sub_190D55260();
    sub_190D52F50();

    sub_190D547F0();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_190957330@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_190D54800();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F690, &unk_190DDE260);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = _s21DatePickerButtonStyleVMa(0);
  sub_19022FD14(v1 + *(v10 + 20), v9, &qword_1EAD5F690, &unk_190DDE260);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_190D54190();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_190D576B0();
    v13 = sub_190D55260();
    sub_190D52F50();

    sub_190D547F0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

id sub_190957538()
{
  v0 = sub_190D543E0();
  MEMORY[0x1EEE9AC00](v0);
  v2 = (&v24 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD577E0, &qword_190DE0968);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v24 - v7);
  v9 = [objc_opt_self() sharedFeatureFlags];
  v10 = [v9 isEntryViewRefreshEnabled];

  if (v10)
  {
    *v8 = sub_1909578E4;
    v8[1] = 0;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD577E8, &unk_190DE0970);
    sub_190233640(&qword_1EAD577F0, &qword_1EAD577E8, &unk_190DE0970, MEMORY[0x1E697E378]);
    sub_190958994(&qword_1EAD577F8, MEMORY[0x1E697EAF0], MEMORY[0x1E697EAD8]);
    return sub_190D54C50();
  }

  v12 = objc_opt_self();
  result = [v12 sharedBehaviors];
  if (result)
  {
    v13 = result;
    [result entryViewCoverMinHeight];
    v15 = v14;

    result = [v12 sharedBehaviors];
    if (result)
    {
      v16 = result;
      v17 = v15 * 0.5;
      [result messageEntryContentViewSendLaterInsets];
      v19 = v18;

      v20 = v17 - v19;
      v21 = *(v0 + 20);
      v22 = *MEMORY[0x1E697F468];
      v23 = sub_190D54A20();
      (*(*(v23 - 8) + 104))(v2 + v21, v22, v23);
      *v2 = v20;
      v2[1] = v20;
      sub_1909585F0(v2, v5);
      sub_190958654(v5, v8);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD577E8, &unk_190DE0970);
      sub_190233640(&qword_1EAD577F0, &qword_1EAD577E8, &unk_190DE0970, MEMORY[0x1E697E378]);
      sub_190958994(&qword_1EAD577F8, MEMORY[0x1E697EAF0], MEMORY[0x1E697EAD8]);
      sub_190D54C50();
      return sub_1909586B8(v5);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

int *sub_1909578E4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_190D543E0();
  MEMORY[0x1EEE9AC00](v2);
  v4 = (&v34[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_190AE89C8(v34);
  sub_190958714(v34);
  v5 = v34[0];
  result = [objc_opt_self() sharedBehaviors];
  if (result)
  {
    v7 = result;
    [result messageEntryContentViewSendLaterDateInsets];
    v9 = v8;
    v11 = v10;

    sub_190AE89C8(v35);
    sub_190958714(v35);
    v12 = v11 + v5 + v9 + v36 + v37;
    sub_190D53D30();
    if (v13 >= v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = v13;
    }

    v15 = (v14 + 2.0) * 0.5;
    sub_190D53D30();
    v17 = v16 + -2.0;
    sub_190D53D30();
    v19 = v15 * 6.28318531 + v17 + v18 + -2.0 + v15 * -4.0 + v17 + v18 + -2.0 + v15 * -4.0;
    v20 = v19 / floor(v19 / 11.0) * 0.5;
    v21 = *(v2 + 20);
    v22 = *MEMORY[0x1E697F468];
    v23 = sub_190D54A20();
    (*(*(v23 - 8) + 104))(v4 + v21, v22, v23);
    *v4 = v15;
    v4[1] = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53CA8, &qword_190DD5EF0);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_190DD1DA0;
    *(v24 + 32) = v20;
    *(v24 + 40) = v20;
    sub_190D53AD0();
    sub_190958654(v4, a1);
    v25 = *&v38 * 0.5;
    v26 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57800, &qword_190DE0980) + 68);
    sub_190958654(v4, v26);
    *(v26 + *(sub_190D543D0() + 20)) = v25;
    v27 = v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57808, &qword_190DE0988) + 36);
    v28 = v39;
    *v27 = v38;
    *(v27 + 16) = v28;
    *(v27 + 32) = v40;
    *(v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57810, &qword_190DE0990) + 56)) = 256;
    v29 = sub_190D56500();
    v31 = v30;
    sub_1909586B8(v4);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57818, &qword_190DE0998);
    v32 = (v26 + result[9]);
    *v32 = v29;
    v32[1] = v31;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_190957BD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v60 = sub_190D53A60();
  v3 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v58 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v57 = &v54 - v6;
  v7 = sub_190D565E0();
  v61 = *(v7 - 8);
  v62 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v59 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_190D54190();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v54 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD577B0, &qword_190DE0930);
  v17 = v16 - 8;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v54 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD577B8, &qword_190DE0938);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v54 - v21;
  v56 = a1;
  sub_190D54F60();
  sub_190958130(&v64);
  *&v19[*(v17 + 44)] = v64;
  result = [objc_opt_self() sharedBehaviors];
  if (result)
  {
    v24 = result;
    [result messageEntryContentViewSendLaterDateInsets];
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;

    sub_190957330(v15);
    (*(v10 + 104))(v12, *MEMORY[0x1E697E7D8], v9);
    sub_190D54180();
    v33 = *(v10 + 8);
    v33(v12, v9);
    v33(v15, v9);
    v34 = sub_190D552B0();
    sub_19081E40C(v19, v22, &qword_1EAD577B0, &qword_190DE0930);
    v35 = &v22[*(v20 + 36)];
    *v35 = v34;
    *(v35 + 1) = v26;
    *(v35 + 2) = v28;
    *(v35 + 3) = v30;
    *(v35 + 4) = v32;
    v35[40] = 0;
    v36 = sub_190D56500();
    v54 = v37;
    v55 = v36;
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD577C0, &qword_190DE0940);
    v39 = v63;
    v40 = v63 + *(v38 + 36);
    sub_190957538();
    sub_190958240(&v64);
    v41 = v64;
    v42 = v57;
    sub_190957130(v57);
    v43 = v58;
    v44 = v60;
    (*(v3 + 104))(v58, *MEMORY[0x1E697DBB8], v60);
    LOBYTE(v24) = sub_190D53A50();
    v45 = *(v3 + 8);
    v45(v43, v44);
    v45(v42, v44);
    v47 = v61;
    v46 = v62;
    v48 = MEMORY[0x1E6981DA0];
    if ((v24 & 1) == 0)
    {
      v48 = MEMORY[0x1E6981DB8];
    }

    v49 = v59;
    (*(v61 + 104))(v59, *v48, v62);
    v50 = (v40 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD577C8, &qword_190DE0948) + 36));
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD577D0, &qword_190DE0950);
    (*(v47 + 32))(v50 + *(v51 + 36), v49, v46);
    *v50 = v41;
    v52 = (v40 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD577D8, &unk_190DE0958) + 36));
    v53 = v54;
    *v52 = v55;
    v52[1] = v53;
    return sub_19081E40C(v22, v39, &qword_1EAD577B8, &qword_190DE0938);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_190958130(uint64_t *a1@<X8>)
{
  v2 = [objc_opt_self() sharedFeatureFlags];
  v3 = [v2 isEntryViewRefreshEnabled];

  if (v3)
  {
    sub_190D55D50();
    v4 = sub_190D55DF0();

LABEL_7:
    *a1 = v4;
    return;
  }

  v5 = [objc_opt_self() sharedBehaviors];
  if (!v5)
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = v5;
  v7 = [v5 theme];

  if (!v7)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v8 = [v7 balloonTextColorForColorType_];

  if (v8)
  {
    v4 = sub_190D55CE0();
    goto LABEL_7;
  }

LABEL_10:
  __break(1u);
}

void sub_190958240(uint64_t *a1@<X8>)
{
  v3 = sub_190D53A60();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v25 - v8;
  v10 = [objc_opt_self() sharedFeatureFlags];
  v11 = [v10 isEntryViewRefreshEnabled];

  if (v11)
  {
    sub_190D55D50();
    v12 = _s21DatePickerButtonStyleVMa(0);
    if (*(v1 + *(v12 + 28)) & 1) != 0 || (*(v1 + *(v12 + 24)) & 1) != 0 || (sub_190D54F70())
    {
      sub_190957130(v9);
      (*(v4 + 104))(v6, *MEMORY[0x1E697DBA8], v3);
      sub_190D53A50();
      v13 = *(v4 + 8);
      v13(v6, v3);
      v13(v9, v3);
    }

    else
    {
      sub_190957130(v9);
      (*(v4 + 104))(v6, *MEMORY[0x1E697DBA8], v3);
      sub_190D53A50();
      v20 = *(v4 + 8);
      v20(v6, v3);
      v20(v9, v3);
    }

    v14 = sub_190D55DF0();

    goto LABEL_14;
  }

  v15 = _s21DatePickerButtonStyleVMa(0);
  if (*(v1 + *(v15 + 28)) & 1) != 0 || (*(v1 + *(v15 + 24)) & 1) != 0 || (sub_190D54F70())
  {
    v16 = [objc_opt_self() sharedBehaviors];
    if (v16)
    {
      v17 = v16;
      v18 = [v16 theme];

      if (v18)
      {
        v19 = [v18 entryFieldSendLaterPressedBalloonColor];

        if (v19)
        {
LABEL_13:
          v14 = sub_190D55CE0();
LABEL_14:
          *a1 = v14;
          return;
        }

        goto LABEL_22;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v21 = [objc_opt_self() sharedBehaviors];
  if (!v21)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v22 = v21;
  v23 = [v21 theme];

  if (v23)
  {
    v24 = [v23 entryFieldSendLaterBalloonColor];

    if (v24)
    {
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_20;
  }

LABEL_24:
  __break(1u);
}

uint64_t sub_1909585F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_190D543E0();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_190958654(uint64_t a1, uint64_t a2)
{
  v4 = sub_190D543E0();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1909586B8(uint64_t a1)
{
  v2 = sub_190D543E0();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_190958768()
{
  result = qword_1EAD57820;
  if (!qword_1EAD57820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD577C0, &qword_190DE0940);
    sub_190958820();
    sub_190233640(&qword_1EAD57838, &qword_1EAD577D8, &unk_190DE0958, MEMORY[0x1E697F940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD57820);
  }

  return result;
}

unint64_t sub_190958820()
{
  result = qword_1EAD57828;
  if (!qword_1EAD57828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD577B8, &qword_190DE0938);
    sub_1909588AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD57828);
  }

  return result;
}

unint64_t sub_1909588AC()
{
  result = qword_1EAD57830;
  if (!qword_1EAD57830)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD577B0, &qword_190DE0930);
    sub_190958994(&qword_1EAD45210, MEMORY[0x1E697C8D0], MEMORY[0x1E697C8C8]);
    sub_190233640(&qword_1EAD53008, &qword_1EAD53010, &qword_190DD3E70, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD57830);
  }

  return result;
}

uint64_t sub_190958994(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_190958FBC()
{
  v1 = v0;
  v2 = [v0 containerView];
  v3 = [v0 titleLabel];
  [v2 addSubview_];

  v4 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820, &unk_190DD76C0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_190DD86A0;
  v6 = [v1 containerView];
  v7 = [v6 leadingAnchor];

  v8 = [v1 titleLabel];
  v9 = [v8 leadingAnchor];

  v10 = [v7 constraintEqualToAnchor_];
  *(v5 + 32) = v10;
  v11 = [v1 containerView];
  v12 = [v11 trailingAnchor];

  v13 = [v1 titleLabel];
  v14 = [v13 trailingAnchor];

  v15 = [v12 constraintEqualToAnchor_];
  *(v5 + 40) = v15;
  v16 = [v1 containerView];
  v17 = [v16 topAnchor];

  v18 = [v1 titleLabel];
  v19 = [v18 topAnchor];

  v20 = [v17 constraintEqualToAnchor_];
  *(v5 + 48) = v20;
  v21 = [v1 containerView];
  v22 = [v21 bottomAnchor];

  v23 = [v1 titleLabel];
  v24 = [v23 bottomAnchor];

  v25 = [v22 constraintEqualToAnchor_];
  *(v5 + 56) = v25;
  sub_1902188FC(0, &qword_1EAD45040, 0x1E696ACD8);
  v26 = sub_190D57160();

  [v4 activateConstraints_];
}

void sub_19095936C()
{
  v1 = v0;
  v2 = [v0 containerView];
  v3 = [v0 toggleButton];
  [v2 addSubview_];

  v4 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820, &unk_190DD76C0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_190DD86A0;
  v6 = [v1 containerView];
  v7 = [v6 centerXAnchor];

  v8 = [v1 toggleButton];
  v9 = [v8 centerXAnchor];

  v10 = [v7 constraintEqualToAnchor_];
  *(v5 + 32) = v10;
  v11 = [v1 containerView];
  v12 = [v11 leadingAnchor];

  v13 = [v1 toggleButton];
  v14 = [v13 leadingAnchor];

  v15 = [v12 constraintLessThanOrEqualToAnchor_];
  *(v5 + 40) = v15;
  v16 = [v1 containerView];
  v17 = [v16 trailingAnchor];

  v18 = [v1 toggleButton];
  v19 = [v18 trailingAnchor];

  v20 = [v17 constraintGreaterThanOrEqualToAnchor_];
  *(v5 + 48) = v20;
  v21 = [v1 containerView];
  v22 = [v21 bottomAnchor];

  v23 = [v1 toggleButton];
  v24 = [v23 bottomAnchor];

  v25 = [v22 constraintEqualToAnchor_];
  *(v5 + 56) = v25;
  sub_1902188FC(0, &qword_1EAD45040, 0x1E696ACD8);
  v26 = sub_190D57160();

  [v4 activateConstraints_];
}