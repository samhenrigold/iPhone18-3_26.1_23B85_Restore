UIEdgeInsets __swiftcall UIEdgeInsets.withLayoutDirection(_:)(UITraitEnvironmentLayoutDirection a1)
{
  if (a1 == UITraitEnvironmentLayoutDirectionRightToLeft)
  {
    v3 = v2;
  }

  else
  {
    v3 = v1;
  }

  if (a1 == UITraitEnvironmentLayoutDirectionRightToLeft)
  {
    v2 = v1;
  }

  v4 = v3;
  result.right = v2;
  result.left = v4;
  return result;
}

double UIEdgeInsets.withLayoutDirection(in:)(void *a1, double a2)
{
  v3 = [a1 traitCollection];
  [v3 layoutDirection];

  return a2;
}

uint64_t GameLibraryDataIntentImplementation.perform(_:objectGraph:)(uint64_t a1, uint64_t a2)
{
  v3[15] = a2;
  v3[16] = v2;
  v3[14] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DA18, &unk_24F9762F0);
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v4 = sub_24F920728();
  v3[19] = v4;
  v3[20] = *(v4 - 8);
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DA20, qword_24F95A020);
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = type metadata accessor for GameLibraryDataIntent(0);
  v3[28] = swift_task_alloc();
  v5 = type metadata accessor for NetworkConnectionMonitor(0);
  v6 = swift_task_alloc();
  v3[29] = v6;
  *v6 = v3;
  v6[1] = sub_24F73DEB0;

  return MEMORY[0x28217F228](v3 + 12, v5, v5);
}

uint64_t sub_24F73DEB0()
{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = sub_24F73EBB8;
  }

  else
  {
    v2 = sub_24F73DFC4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F73DFC4()
{
  v0[31] = v0[12];
  sub_24F92B7F8();
  v0[32] = sub_24F92B7E8();
  v2 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F73E060, v2, v1);
}

uint64_t sub_24F73E060()
{
  v1 = *(v0 + 248);

  swift_getKeyPath();
  *(v0 + 104) = v1;
  sub_24F73F770(&unk_27F24EEA0, type metadata accessor for NetworkConnectionMonitor, &protocol conformance descriptor for NetworkConnectionMonitor);
  sub_24F91FD88();

  *(v0 + 388) = *(v1 + 16);

  return MEMORY[0x2822009F8](sub_24F73E150, 0, 0);
}

uint64_t sub_24F73E150()
{
  v15 = v0;
  sub_24F73F56C(*(v0 + 112), *(v0 + 224));
  v1 = sub_24F9220B8();
  v2 = sub_24F92BD98();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 388);
    v4 = *(v0 + 224);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136315394;
    v7 = *v4;
    v8 = v4[1];

    sub_24F73F5D0(v4);
    v9 = sub_24E7620D4(v7, v8, &v14);

    *(v5 + 4) = v9;
    *(v5 + 12) = 1024;
    *(v5 + 14) = v3 == 2;
    _os_log_impl(&dword_24E5DD000, v1, v2, "Fetching game library for playerID: %s, isOffline: %{BOOL}d", v5, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x2530542D0](v6, -1, -1);
    MEMORY[0x2530542D0](v5, -1, -1);
  }

  else
  {
    v10 = *(v0 + 224);

    sub_24F73F5D0(v10);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2142C0, &unk_24F93C710);
  v12 = swift_task_alloc();
  *(v0 + 264) = v12;
  *v12 = v0;
  v12[1] = sub_24F73E340;

  return MEMORY[0x28217F228](v0 + 56, v11, v11);
}

uint64_t sub_24F73E340()
{
  *(*v1 + 272) = v0;

  if (v0)
  {
    v2 = sub_24F73E720;
  }

  else
  {
    v2 = sub_24F73E454;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F73E454()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 112);
  __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
  sub_24F920538();
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  v3 = *(v1 + 20);
  *(v0 + 384) = v3;
  LODWORD(v3) = *(v2 + v3);
  v4 = *(v0 + 200);
  v5 = *(v0 + 208);
  if (v3 == 3)
  {
    v7 = *(v0 + 152);
    v6 = *(v0 + 160);
    v8 = *(v6 + 56);
    v9 = (v6 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v8(*(v0 + 200), 1, 1, v7);
    sub_24F920718();
    if ((*(v6 + 48))(v4, 1, v7) != 1)
    {
      sub_24E601704(*(v0 + 200), &qword_27F21DA20, qword_24F95A020);
    }
  }

  else
  {
    v10 = *(v0 + 176);
    v11 = *(v0 + 152);
    v12 = *(v0 + 160);
    sub_24F920718();
    sub_24F9206E8();
    sub_24F9206D8();
    v13 = *(v12 + 32);
    v13(v4, v10, v11);
    v8 = *(v12 + 56);
    v9 = (v12 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v8(v4, 0, 1, v11);
    v13(v5, v4, v11);
  }

  v14 = *(v0 + 388);
  v15 = *(v0 + 208);
  v17 = *(v0 + 144);
  v16 = *(v0 + 152);
  v18 = *(v0 + 112);
  *(v0 + 280) = v8;
  *(v0 + 288) = v9;
  v8(v15, 0, 1, v16);
  v19 = sub_24F920398();
  *(v0 + 296) = v19;
  v20 = *(v19 - 8);
  v21 = *(v20 + 56);
  *(v0 + 304) = v21;
  *(v0 + 312) = (v20 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v21(v17, 1, 1, v19);
  v22 = *v18;
  *(v0 + 320) = *v18;
  v23 = v18[1];
  *(v0 + 328) = v23;
  v24 = swift_task_alloc();
  *(v0 + 336) = v24;
  *v24 = v0;
  v24[1] = sub_24F73E7F4;
  v25 = *(v0 + 208);
  v26 = *(v0 + 144);
  v27 = *(v0 + 120);

  return sub_24F6F826C(v25, v26, 0, 1, v22, v23, v14 > 1, v27);
}

uint64_t sub_24F73E720()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F73E7F4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 344) = a1;
  *(v4 + 352) = v1;

  v5 = *(v3 + 208);
  sub_24E601704(*(v3 + 144), &qword_27F21DA18, &unk_24F9762F0);
  sub_24E601704(v5, &qword_27F21DA20, qword_24F95A020);
  if (v1)
  {
    v6 = sub_24F73EC8C;
  }

  else
  {
    v6 = sub_24F73E96C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_24F73E96C()
{
  v15 = v0;
  v1 = *(v0 + 388);
  if (v1 == 2)
  {
    v2 = 0xEB00000000656863;
  }

  else
  {
    v2 = 0xEE00656369767265;
  }

  v3 = sub_24F9220B8();
  v4 = sub_24F92BD98();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 344);
  if (v5)
  {
    if (v1 == 2)
    {
      v7 = 0x6163206C61636F6CLL;
    }

    else
    {
      v7 = 0x7320656E696C6E6FLL;
    }

    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 134218242;
    *(v8 + 4) = *(v6 + 16);

    *(v8 + 12) = 2080;
    v10 = sub_24E7620D4(v7, v2, &v14);

    *(v8 + 14) = v10;
    _os_log_impl(&dword_24E5DD000, v3, v4, "Fetched %ld games from %s", v8, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x2530542D0](v9, -1, -1);
    MEMORY[0x2530542D0](v8, -1, -1);
  }

  else
  {
  }

  v13 = *(v0 + 344);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v11 = *(v0 + 8);

  return v11(v13);
}

uint64_t sub_24F73EBB8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F73EC8C()
{
  v1 = *(v0 + 352);
  v2 = v1;
  v3 = sub_24F9220B8();
  v4 = sub_24F92BDB8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 352);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_24E5DD000, v3, v4, "Game Services failed to fetch games with error: %@", v6, 0xCu);
    sub_24E601704(v7, &qword_27F227B20, &qword_24F944D30);
    MEMORY[0x2530542D0](v7, -1, -1);
    MEMORY[0x2530542D0](v6, -1, -1);
  }

  v10 = *(v0 + 388);

  if (v10 == 2)
  {
    v11 = *(v0 + 352);
    sub_24F73F62C();
    swift_allocError();
    *v12 = v11;
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));

    v13 = *(v0 + 8);

    return v13();
  }

  else
  {
    v15 = sub_24F9220B8();
    v16 = sub_24F92BD98();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_24E5DD000, v15, v16, "Attempting local-only fallback...", v17, 2u);
      MEMORY[0x2530542D0](v17, -1, -1);
    }

    v18 = *(v0 + 384);
    v19 = *(v0 + 112);

    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    v20 = *(v19 + v18);
    v21 = *(v0 + 280);
    v22 = *(v0 + 184);
    v23 = *(v0 + 192);
    if (v20 == 3)
    {
      v25 = *(v0 + 152);
      v24 = *(v0 + 160);
      v21(*(v0 + 184), 1, 1, v25);
      sub_24F920718();
      if ((*(v24 + 48))(v22, 1, v25) != 1)
      {
        sub_24E601704(*(v0 + 184), &qword_27F21DA20, qword_24F95A020);
      }
    }

    else
    {
      v27 = *(v0 + 160);
      v26 = *(v0 + 168);
      v28 = *(v0 + 152);
      sub_24F920718();
      sub_24F9206E8();
      sub_24F9206D8();
      v29 = *(v27 + 32);
      v29(v22, v26, v28);
      v21(v22, 0, 1, v28);
      v29(v23, v22, v28);
    }

    v30 = *(v0 + 304);
    v31 = *(v0 + 296);
    v32 = *(v0 + 136);
    (*(v0 + 280))(*(v0 + 192), 0, 1, *(v0 + 152));
    v30(v32, 1, 1, v31);
    v33 = swift_task_alloc();
    *(v0 + 360) = v33;
    *v33 = v0;
    v33[1] = sub_24F73F0D0;
    v34 = *(v0 + 320);
    v35 = *(v0 + 328);
    v36 = *(v0 + 192);
    v37 = *(v0 + 136);
    v38 = *(v0 + 120);

    return sub_24F6F826C(v36, v37, 0, 1, v34, v35, 1, v38);
  }
}

uint64_t sub_24F73F0D0(uint64_t a1)
{
  v4 = *v2;
  v4[46] = v1;

  v5 = v4[24];
  v6 = v4[17];
  if (v1)
  {
    sub_24E601704(v6, &qword_27F21DA18, &unk_24F9762F0);
    sub_24E601704(v5, &qword_27F21DA20, qword_24F95A020);
    v7 = sub_24F73F370;
  }

  else
  {
    v4[47] = a1;
    sub_24E601704(v6, &qword_27F21DA18, &unk_24F9762F0);
    sub_24E601704(v5, &qword_27F21DA20, qword_24F95A020);
    v7 = sub_24F73F27C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_24F73F27C()
{
  v3 = *(v0 + 376);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v1 = *(v0 + 8);

  return v1(v3);
}

uint64_t sub_24F73F370()
{
  v1 = v0[46];
  v2 = v1;
  v3 = sub_24F9220B8();
  v4 = sub_24F92BDB8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[46];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_24E5DD000, v3, v4, "Local fallback also failed: %@", v6, 0xCu);
    sub_24E601704(v7, &qword_27F227B20, &qword_24F944D30);
    MEMORY[0x2530542D0](v7, -1, -1);
    MEMORY[0x2530542D0](v6, -1, -1);
  }

  v10 = v0[46];
  v11 = v0[44];

  sub_24F73F62C();
  swift_allocError();
  *v12 = v10;
  swift_willThrow();

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v13 = v0[1];

  return v13();
}

uint64_t sub_24F73F56C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GameLibraryDataIntent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F73F5D0(uint64_t a1)
{
  v2 = type metadata accessor for GameLibraryDataIntent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24F73F62C()
{
  result = qword_27F24E808;
  if (!qword_27F24E808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E808);
  }

  return result;
}

uint64_t sub_24F73F680(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_24E67D244;

  return GameLibraryDataIntentImplementation.perform(_:objectGraph:)(a2, a3);
}

uint64_t sub_24F73F770(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F73F7CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F9220D8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24F73F84C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F9220D8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for GameLibraryDataIntentImplementation(uint64_t a1)
{
  result = qword_27F24E810;
  if (!qword_27F24E810)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F73F908(uint64_t a1)
{
  result = sub_24F9220D8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_24F73F984()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (!v2)
  {
    if (*((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

    goto LABEL_10;
  }

  if (sub_24F92C738())
  {
    if (sub_24F92C738())
    {
LABEL_3:
      if ((v1 & 0xC000000000000001) == 0)
      {
        if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

        if (!v2)
        {
          goto LABEL_6;
        }

        goto LABEL_12;
      }

LABEL_11:
      MEMORY[0x253052270](0, v1);
      if (!v2)
      {
LABEL_6:
        v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_13;
      }

LABEL_12:
      v3 = sub_24F92C738();
LABEL_13:
      if (v3)
      {
        sub_24F14A15C(0, 1);
        return;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

LABEL_17:
  __break(1u);
}

void sub_24F73FA5C()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (!v2)
  {
    if (*((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

    goto LABEL_10;
  }

  if (sub_24F92C738())
  {
    if (sub_24F92C738())
    {
LABEL_3:
      if ((v1 & 0xC000000000000001) == 0)
      {
        if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

        *(v1 + 32);
        if (!v2)
        {
          goto LABEL_6;
        }

        goto LABEL_12;
      }

LABEL_11:
      MEMORY[0x253052270](0, v1);
      if (!v2)
      {
LABEL_6:
        v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_13;
      }

LABEL_12:
      v3 = sub_24F92C738();
LABEL_13:
      if (v3)
      {
        sub_24F14A1E0(0, 1);
        return;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

LABEL_17:
  __break(1u);
}

uint64_t sub_24F73FB34(uint64_t a1, int a2, uint64_t a3)
{
  v4 = v3;
  v24 = a2;
  v25 = a1;
  v5 = *v3;
  v6 = sub_24F91F6B8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_24F927E38();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v23[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_24E69A5C4(0, &qword_27F222300, 0x277D85C78);
  *v13 = sub_24F92BEF8();
  (*(v11 + 104))(v13, *MEMORY[0x277D85200], v10);
  v14 = sub_24F927E68();
  result = (*(v11 + 8))(v13, v10);
  if (v14)
  {
    sub_24F91F6A8();
    v16 = sub_24F91F668();
    v18 = v17;
    (*(v7 + 8))(v9, v6);
    v27 = sub_24F92AFE8();
    sub_24F92C7F8();
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = v4[6];
    v4[6] = 0x8000000000000000;
    sub_24E81DA0C(v16, v18, v28, isUniquelyReferenced_nonNull_native);
    sub_24E6585F8(v28);
    v4[6] = v26;
    swift_endAccess();
    v20 = swift_allocObject();
    swift_weakInit();
    v21 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v22 = swift_allocObject();
    v22[2] = v21;
    v22[3] = v20;
    v22[4] = v16;
    v22[5] = v18;
    v22[6] = v5;
    v27 = sub_24F92AFE8();
    sub_24F92C7F8();

    ArtworkLoader.fetchArtwork(using:closestMatch:handlerKey:completionHandler:)(v25, v24 & 1, v28, sub_24F7421E0, v22);

    return sub_24E601704(v28, &qword_27F235830, &qword_24F93B8C0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_24F73FEC4(char a1, char a2, char a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC12GameStoreKit14UpsellGridView_primaryIcon] = 0;
  v8 = MEMORY[0x277D84F90];
  *&v3[OBJC_IVAR____TtC12GameStoreKit14UpsellGridView_remainingIcons] = MEMORY[0x277D84F90];
  *&v3[OBJC_IVAR____TtC12GameStoreKit14UpsellGridView_artworkLoader] = 0;
  *&v3[OBJC_IVAR____TtC12GameStoreKit14UpsellGridView_impressionsCalculator] = 0;
  *&v3[OBJC_IVAR____TtC12GameStoreKit14UpsellGridView_iconViews] = v8;
  *&v3[OBJC_IVAR____TtC12GameStoreKit14UpsellGridView_iconScaleFactor] = 0x3FF4000000000000;
  *&v3[OBJC_IVAR____TtC12GameStoreKit14UpsellGridView_amsImpressionItems] = v8;
  v3[OBJC_IVAR____TtC12GameStoreKit14UpsellGridView_isCompactSheet] = a1;
  v3[OBJC_IVAR____TtC12GameStoreKit14UpsellGridView_wantsExtendedHeightAdjustment] = a2;
  v3[OBJC_IVAR____TtC12GameStoreKit14UpsellGridView_wantsScaledIcons] = a3;
  v16.receiver = v3;
  v16.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v16, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v10 = *MEMORY[0x277D768C8];
  v11 = *(MEMORY[0x277D768C8] + 8);
  v12 = *(MEMORY[0x277D768C8] + 16);
  v13 = *(MEMORY[0x277D768C8] + 24);
  v14 = v9;
  [v14 setLayoutMargins_];
  [v14 setClipsToBounds_];

  return v14;
}

void sub_24F740044(uint64_t a1@<X8>, double a2@<D0>)
{
  v3 = v2;
  v6 = [v2 traitCollection];
  v7 = sub_24F92BF68();

  if ((v7 & 1) != 0 && ((v8 = [v3 window]) == 0 || (v9 = v8, objc_msgSend(v8, sel_frame), Width = CGRectGetWidth(v16), v9, Width <= a2)) || v3[OBJC_IVAR____TtC12GameStoreKit14UpsellGridView_isCompactSheet] == 1)
  {
    v11 = 4;
  }

  else
  {
    v11 = 5;
  }

  v12 = 1.0;
  if (v3[OBJC_IVAR____TtC12GameStoreKit14UpsellGridView_wantsScaledIcons] == 1)
  {
    v13 = [v3 traitCollection];
    v14 = [v13 verticalSizeClass];

    if (v14 == 1)
    {
      v12 = *&v3[OBJC_IVAR____TtC12GameStoreKit14UpsellGridView_iconScaleFactor];
    }
  }

  v15 = v3[OBJC_IVAR____TtC12GameStoreKit14UpsellGridView_wantsExtendedHeightAdjustment];
  *a1 = v11;
  *(a1 + 8) = v15;
  *(a1 + 16) = v12;
}

uint64_t sub_24F740180()
{
  v1 = v0;
  v2 = sub_24F9221D8();
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x28223BE20](v2).n128_u64[0];
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v0[OBJC_IVAR____TtC12GameStoreKit14UpsellGridView_wantsExtendedHeightAdjustment] == 1)
  {
    [v0 frame];
    width = v35.size.width;
    height = v35.size.height;
    v9 = (fabs(CGRectGetMinY(v35)) - v35.size.height) * 0.56;
    v10 = height * 1.56;
    v11 = 0.0;
  }

  else
  {
    [v0 bounds];
    v11 = v12;
    v9 = v13;
    width = v14;
    v10 = v15;
  }

  v36.origin.x = v11;
  v36.origin.y = v9;
  v36.size.width = width;
  v36.size.height = v10;
  result = CGRectIsEmpty(v36);
  if ((result & 1) == 0)
  {
    v17 = OBJC_IVAR____TtC12GameStoreKit14UpsellGridView_iconViews;
    swift_beginAccess();
    v18 = *&v0[v17];
    if (!(v18 >> 62))
    {
      result = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        return result;
      }

LABEL_7:
      v19 = objc_opt_self();
      v20 = [v19 areAnimationsEnabled];
      [v19 setAnimationsEnabled_];
      sub_24F740044(&v31, width);
      v21 = v31;
      v22 = v32;
      v23 = v33;
      v28 = v31;
      v29 = v32;
      v30 = v33;
      sub_24F25F078(&v28, &v31, width, v10, 0.0, 0.0);
      v24 = *(v31 + 16);

      v25 = *(v1 + v17);
      if (v25 >> 62)
      {
        if (sub_24F92C738() == v24)
        {
          goto LABEL_10;
        }
      }

      else if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) == v24)
      {
LABEL_10:

        v27 = sub_24E8E966C(v26);

        v31 = v21;
        v32 = v22;
        v33 = v23;
        v34 = v27;
        UpsellGridLayout.placeChildren(relativeTo:in:)(v1, v11, v9, width, v10);
        (*(v3 + 8))(v6, v2);

        return [v19 setAnimationsEnabled_];
      }

      sub_24F7404E0(width, v10);
      goto LABEL_10;
    }

    result = sub_24F92C738();
    if (result)
    {
      goto LABEL_7;
    }
  }

  return result;
}

void sub_24F7404E0(double a1, CGFloat a2)
{
  if (!*&v2[OBJC_IVAR____TtC12GameStoreKit14UpsellGridView_artworkLoader])
  {
    return;
  }

  v8 = v2;

  sub_24F740044(&v81, a1);
  v11 = 7 * v81;
  if ((v81 * 7) >> 64 != (7 * v81) >> 63)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (a2 >= a1)
  {
    v12 = a1;
  }

  else
  {
    v12 = a2;
  }

  if (a1 > a2)
  {
    v13 = a1;
  }

  else
  {
    v13 = a2;
  }

  if (v82)
  {
    v7 = v12;
  }

  else
  {
    v7 = v13;
  }

  v6 = v83;
  if (v81 <= 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = v81;
  }

  v79 = MEMORY[0x277D84F90];
  v80 = MEMORY[0x277D84F90];
  v78 = MEMORY[0x277D84F90];
  v5 = OBJC_IVAR____TtC12GameStoreKit14UpsellGridView_iconViews;
  swift_beginAccess();
  v14 = *&v2[v5];
  if (v14 >> 62)
  {
LABEL_19:
    if (sub_24F92C738())
    {
      goto LABEL_17;
    }

    goto LABEL_20;
  }

  if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_17:
    sub_24F73FA5C();
    v16 = v15;
    goto LABEL_21;
  }

LABEL_20:
  v16 = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame_];
  v17 = OBJC_IVAR____TtC12GameStoreKit11ArtworkView_style;
  swift_beginAccess();
  v18 = v16[v17];
  v16[v17] = 1;
  LOBYTE(v77[0]) = v18;
  sub_24F359430(v77);
LABEL_21:
  swift_endAccess();
  v19 = v16;
  MEMORY[0x253050F00]();
  if (*((v78 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v78 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_109:
    sub_24F92B5E8();
  }

  sub_24F92B638();
  v20 = v78;
  v21 = *&v8[OBJC_IVAR____TtC12GameStoreKit14UpsellGridView_primaryIcon];
  if (!v21)
  {
    v27 = MEMORY[0x277D84F90];
    v25 = MEMORY[0x277D84F90];
    goto LABEL_31;
  }

  v22 = v7 / (v11 + (v3 - 1));
  v23 = v6 * (v22 * 7.0) + v6 * (v22 * 7.0);
  v24 = swift_retain_n();
  MEMORY[0x253050F00](v24);
  if (*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_24F92B5E8();
  }

  v6 = v22 + v23;
  sub_24F92B638();
  v25 = v80;
  v26 = sub_24F741CFC(v21 + OBJC_IVAR____TtC12GameStoreKit21ImpressionableArtwork_impressionMetrics);
  if (!v26)
  {
    v27 = MEMORY[0x277D84F90];
    goto LABEL_30;
  }

  v27 = v26;
  v4 = [objc_allocWithZone(MEMORY[0x277CEE8B0]) initWithFrame:v26 impressionMetrics:{0.0, 0.0, a1, a2}];
  MEMORY[0x253050F00](v4);
  if (*((v79 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v79 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_126;
  }

  while (1)
  {
    sub_24F92B638();

    v27 = v79;
LABEL_30:
    v81 = 0;
    v82 = 0;
    v28 = Artwork.config(using:cropCodeOverride:prefersLayeredImage:)(&v81, 0, v6, v6);
    sub_24F73FB34(v28, 1, v19);

LABEL_31:
    if (v8[OBJC_IVAR____TtC12GameStoreKit14UpsellGridView_wantsExtendedHeightAdjustment] == 1)
    {
      v29 = a1;
    }

    else
    {
      [v8 bounds];
      v29 = v30;
    }

    sub_24F740044(&v81, v29);
    v31 = sub_24F74192C(v81, v82, v8, a1, a2, v83);
    v32 = *(v31 + 16);
    v70 = v19;
    v71 = v31;
    if (v32 >= 2)
    {
      break;
    }

LABEL_92:
    sub_24F74124C(v25, a1, a2);

    *&v8[OBJC_IVAR____TtC12GameStoreKit14UpsellGridView_amsImpressionItems] = v27;

    if (v20 >> 62)
    {
      v61 = sub_24F92C738();
      if (!v61)
      {
        goto LABEL_111;
      }
    }

    else
    {
      v61 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v61)
      {
        goto LABEL_111;
      }
    }

    if (v61 < 1)
    {
      __break(1u);
      goto LABEL_125;
    }

    v62 = 0;
    v25 = v20 & 0xC000000000000001;
    do
    {
      if (v25)
      {
        v64 = MEMORY[0x253052270](v62, v20);
      }

      else
      {
        v64 = *(v20 + 8 * v62 + 32);
      }

      v27 = v64;
      v65 = [v64 superview];
      if (v65)
      {
        v63 = v65;

        v27 = v63;
      }

      else
      {
        [v8 addSubview_];
      }

      ++v62;
    }

    while (v61 != v62);
LABEL_111:
    v66 = *&v8[v5];
    if (v66 >> 62)
    {
      v19 = sub_24F92C738();
      v4 = v71;
      if (!v19)
      {
        goto LABEL_120;
      }
    }

    else
    {
      v19 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v4 = v71;
      if (!v19)
      {
        goto LABEL_120;
      }
    }

    if (v19 >= 1)
    {

      for (i = 0; i != v19; ++i)
      {
        if ((v66 & 0xC000000000000001) != 0)
        {
          v68 = MEMORY[0x253052270](i, v66);
        }

        else
        {
          v68 = *(v66 + 8 * i + 32);
        }

        v69 = v68;
        [v68 removeFromSuperview];
      }

LABEL_120:
      *&v8[v5] = v20;

      [v8 setNeedsLayout];

      return;
    }

LABEL_125:
    __break(1u);
LABEL_126:
    sub_24F92B5E8();
  }

  v33 = v31;
  v72 = v27;
  v75 = v25;
  v34 = OBJC_IVAR____TtC12GameStoreKit14UpsellGridView_remainingIcons;

  swift_beginAccess();
  v11 = 0;
  v76 = v32 - 1;
  v19 = v33 + 56;
  v73 = v34;
  v74 = v5;
  while (1)
  {
    v6 = *(v19 - 8);
    v7 = *v19;
    swift_beginAccess();
    v4 = *&v8[v5];
    v3 = v4 >> 62;
    if (v4 >> 62)
    {
      break;
    }

    if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_40;
    }

LABEL_62:
    v36 = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame_];
    v40 = OBJC_IVAR____TtC12GameStoreKit11ArtworkView_style;
    swift_beginAccess();
    v41 = v36[v40];
    v36[v40] = 1;
    if ((sub_24F0C97AC(1u, v41) & 1) == 0)
    {
      v42 = sub_24F3595CC();
      v43 = OBJC_IVAR____TtC12GameStoreKit17RoundedCornerView_borderWidth;
      if (v42)
      {
        swift_beginAccess();
        *&v36[v43] = 0x3FF0000000000000;
        sub_24E9F322C();
        if (qword_27F211130 != -1)
        {
          swift_once();
        }

        v44 = qword_27F23FFB8;
        v3 = OBJC_IVAR____TtC12GameStoreKit17RoundedCornerView_borderColor;
        swift_beginAccess();
        v45 = *&v36[v3];
        *&v36[v3] = v44;
        v46 = v44;

        sub_24E9F322C();
      }

      else
      {
        swift_beginAccess();
        *&v36[v43] = 0;
        sub_24E9F322C();
        v47 = [objc_opt_self() clearColor];
        v48 = OBJC_IVAR____TtC12GameStoreKit17RoundedCornerView_borderColor;
        swift_beginAccess();
        v49 = *&v36[v48];
        *&v36[v48] = v47;
        v3 = v47;

        sub_24E9F322C();
      }

      v36[OBJC_IVAR____TtC12GameStoreKit11ArtworkView_isStyleInvalid] = 1;
      [v36 setNeedsLayout];
      v34 = v73;
    }

LABEL_69:
    swift_endAccess();
    v4 = v36;
    MEMORY[0x253050F00]();
    if (*((v78 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v78 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v3 = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_24F92B5E8();
    }

    sub_24F92B638();
    v20 = v78;
    v50 = *&v8[v34];
    if (v50 >> 62)
    {
      if (!sub_24F92C738())
      {
LABEL_36:

        goto LABEL_37;
      }
    }

    else if (!*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_36;
    }

    v51 = *&v8[v34];
    if (v51 >> 62)
    {
      v52 = sub_24F92C738();
      if (!v52)
      {
        goto LABEL_104;
      }
    }

    else
    {
      v52 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v52)
      {
        goto LABEL_104;
      }
    }

    v53 = v11 % v52;
    swift_beginAccess();
    v54 = *&v8[v34];
    if ((v54 & 0xC000000000000001) != 0)
    {
      v55 = MEMORY[0x253052270](v53);
    }

    else
    {
      if (v53 >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_106;
      }

      v55 = *(v54 + 8 * v53 + 32);
    }

    swift_endAccess();

    MEMORY[0x253050F00](v56);
    if (*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24F92B5E8();
    }

    sub_24F92B638();
    v75 = v80;
    v57 = sub_24F741CFC(v55 + OBJC_IVAR____TtC12GameStoreKit21ImpressionableArtwork_impressionMetrics);
    if (v57)
    {
      v58 = v57;
      v59 = [objc_allocWithZone(MEMORY[0x277CEE8B0]) initWithFrame:v57 impressionMetrics:{0.0, 0.0, v6, v7}];
      MEMORY[0x253050F00]();
      if (*((v79 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v79 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24F92B5E8();
      }

      sub_24F92B638();

      v72 = v79;
      v34 = v73;
    }

    v77[0] = 0;
    v77[1] = 0;
    v60 = Artwork.config(using:cropCodeOverride:prefersLayeredImage:)(v77, 0, v6, v7);
    sub_24F73FB34(v60, 1, v4);

    v5 = v74;
LABEL_37:
    ++v11;
    v19 += 16;
    if (v76 == v11)
    {

      v25 = v75;
      v27 = v72;
      goto LABEL_92;
    }
  }

  if (!sub_24F92C738())
  {
    goto LABEL_62;
  }

  if (sub_24F92C738())
  {
    if (!sub_24F92C738())
    {
      goto LABEL_128;
    }

LABEL_40:
    if ((v4 & 0xC000000000000001) != 0)
    {
      v35 = MEMORY[0x253052270](0, v4);
    }

    else
    {
      if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
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
        goto LABEL_109;
      }

      v35 = *(v4 + 32);
    }

    v36 = v35;
    if (v3)
    {
      if (!sub_24F92C738())
      {
        goto LABEL_107;
      }

      if (sub_24F92C738() < 1)
      {
        goto LABEL_108;
      }

      v37 = sub_24F92C738();
    }

    else
    {
      v37 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v37)
      {
        goto LABEL_107;
      }
    }

    v38 = v37 - 1;
    if (__OFSUB__(v37, 1))
    {
      goto LABEL_105;
    }

    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    *&v8[v5] = v4;
    if (isUniquelyReferenced_nonNull_bridgeObject)
    {
      if (!v3)
      {
        if (v38 > *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
LABEL_56:
          v4 = sub_24F92C8F8();
          *&v8[v5] = v4;
        }

        sub_24EDAB38C(0, 1, 0);
        *&v8[v5] = v4;
        goto LABEL_69;
      }
    }

    else if (!v3)
    {
      goto LABEL_56;
    }

    sub_24F92C738();
    goto LABEL_56;
  }

  __break(1u);
LABEL_128:
  __break(1u);
}

void sub_24F741168(uint64_t a1, uint64_t a2, uint64_t a3, double a4, CGFloat a5)
{
  *(v5 + OBJC_IVAR____TtC12GameStoreKit14UpsellGridView_primaryIcon) = a1;

  v10 = OBJC_IVAR____TtC12GameStoreKit14UpsellGridView_remainingIcons;
  swift_beginAccess();
  *(v5 + v10) = a2;

  *(v5 + OBJC_IVAR____TtC12GameStoreKit14UpsellGridView_artworkLoader) = a3;

  if (*(v5 + OBJC_IVAR____TtC12GameStoreKit14UpsellGridView_wantsExtendedHeightAdjustment))
  {
    a5 = a5 * 1.56;
  }

  sub_24F7404E0(a4, a5);
}

void sub_24F74124C(unint64_t a1, double a2, double a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v20 - v6;
  v8 = sub_24F929608();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v3 + OBJC_IVAR____TtC12GameStoreKit14UpsellGridView_impressionsCalculator))
  {
    if (a1 >> 62)
    {
      v12 = sub_24F92C738();
      if (!v12)
      {
        return;
      }
    }

    else
    {
      v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v12)
      {
        return;
      }
    }

    if (v12 < 1)
    {
      __break(1u);
    }

    else
    {
      v13 = (v9 + 48);
      v20 = (v9 + 32);
      v21 = a1 & 0xC000000000000001;
      v14 = (v9 + 8);

      v15 = a1;
      v16 = 0;
      v17 = a1;
      do
      {
        v18 = v12;
        if (v21)
        {
          v19 = MEMORY[0x253052270](v16, v15);
        }

        else
        {
          v19 = *(v15 + 8 * v16 + 32);
        }

        sub_24E643844(v19 + OBJC_IVAR____TtC12GameStoreKit21ImpressionableArtwork_impressionMetrics, v7);
        if ((*v13)(v7, 1, v8) == 1)
        {

          sub_24E601704(v7, &qword_27F213E68, &unk_24F93BC80);
        }

        else
        {
          (*v20)(v11, v7, v8);
          sub_24F929AE8();

          (*v14)(v11, v8);
        }

        ++v16;
        v12 = v18;
        v15 = v17;
      }

      while (v18 != v16);
    }
  }
}

void sub_24F74163C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213078, &qword_24F93A830);
    v2 = sub_24F92CB58();
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

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v10 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v11 = v10 | (v9 << 6);
        v12 = (*(a1 + 48) + 16 * v11);
        v13 = *v12;
        v14 = v12[1];
        sub_24E643A9C(*(a1 + 56) + 32 * v11, v27);
        *&v26 = v13;
        *(&v26 + 1) = v14;
        v24 = v26;
        v25[0] = v27[0];
        v25[1] = v27[1];
        v15 = v26;
        sub_24E612B0C(v25, &v22);

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F24E870, &qword_24F967D90);
        swift_dynamicCast();
        v16 = v23;
        v17 = sub_24E76D644(v15, *(&v15 + 1));
        if (v18)
        {
          *(v2[6] + 16 * v17) = v15;
          v8 = v17;

          *(v2[7] + 8 * v8) = v16;
          swift_unknownObjectRelease();
          v7 = v9;
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

          *(v2 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v17;
          *(v2[6] + 16 * v17) = v15;
          *(v2[7] + 8 * v17) = v16;
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v7 = v9;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v9 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

uint64_t sub_24F74188C(uint64_t a1, char a2)
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

  sub_24F92C738();
LABEL_9:
  result = sub_24F92C8F8();
  *v2 = result;
  return result;
}

uint64_t sub_24F74192C(uint64_t a1, char a2, uint64_t a3, CGFloat a4, CGFloat a5, double a6)
{
  v15 = a1;
  v16 = a2;
  v17 = a6;
  sub_24F25F078(&v15, v18, a4, a5, 0.0, 0.0);
  v6 = v18[0];
  v7 = *(v18[0] + 16);
  if (v7)
  {
    v18[0] = MEMORY[0x277D84F90];
    sub_24F4587DC(0, v7, 0);
    v8 = v18[0];
    v9 = *(v18[0] + 16);
    v10 = 48;
    do
    {
      v11 = *(v6 + v10);
      v18[0] = v8;
      v12 = *(v8 + 24);
      if (v9 >= v12 >> 1)
      {
        v14 = v11;
        sub_24F4587DC((v12 > 1), v9 + 1, 1);
        v11 = v14;
        v8 = v18[0];
      }

      *(v8 + 16) = v9 + 1;
      *(v8 + 16 * v9 + 32) = v11;
      v10 += 32;
      ++v9;
      --v7;
    }

    while (v7);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v8;
}

void sub_24F741A3C(objc_class *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __n128 a7)
{
  v11 = sub_24F927E38();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = (v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0) + 8);
  sub_24E69A5C4(0, &qword_27F222300, 0x277D85C78);
  *v14 = sub_24F92BEF8();
  (*(v12 + 104))(v14, *MEMORY[0x277D85200], v11);
  v15 = sub_24F927E68();
  (*(v12 + 8))(v14, v11);
  if ((v15 & 1) == 0)
  {
    __break(1u);
    return;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    swift_beginAccess();
    v18 = swift_weakLoadStrong();
    if (v18)
    {
      v19 = v18;
      v31 = sub_24F92AFE8();
      sub_24F92C7F8();
      swift_beginAccess();
      v20 = *(v19 + 48);
      if (!*(v20 + 16) || (v21 = sub_24E76D934(v32), (v22 & 1) == 0))
      {
        swift_endAccess();

        sub_24E6585F8(v32);

        return;
      }

      v23 = (*(v20 + 56) + 16 * v21);
      v25 = *v23;
      v24 = v23[1];
      swift_endAccess();

      sub_24E6585F8(v32);

      if (v25 == a5 && v24 == a6)
      {

        if (a2)
        {
          goto LABEL_17;
        }

        goto LABEL_15;
      }

      v27 = sub_24F92CE08();

      if (v27)
      {
        if (a2)
        {
          goto LABEL_17;
        }

LABEL_15:
        v29 = [*&v17[OBJC_IVAR____TtC12GameStoreKit11ArtworkView_imageView] image];
        if (!v29)
        {
          v30.is_nil = 1;
          goto LABEL_18;
        }

LABEL_17:
        v30.is_nil = 0;
LABEL_18:
        v30.value.super.isa = a1;
        ArtworkView.setImage(image:animated:)(v30, v28);
      }
    }
  }
}

id sub_24F741CFC(uint64_t a1)
{
  v2 = sub_24F929598();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v34 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = v34 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v34 - v13;
  v15 = sub_24F929608();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E643844(a1, v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_24E601704(v14, &qword_27F213E68, &unk_24F93BC80);
    return 0;
  }

  else
  {
    v20 = *(v16 + 32);
    v35 = v15;
    v20(v18, v14, v15);
    sub_24F9295B8();
    v34[1] = sub_24F929578();
    v22 = v21;
    v23 = *(v3 + 8);
    v23(v11, v2);
    sub_24F9295B8();
    v34[2] = sub_24F929588();
    v23(v8, v2);
    sub_24F9295B8();
    v24 = sub_24F929558();
    v23(v5, v2);
    if (v22)
    {
      v25 = sub_24F92B098();
    }

    else
    {
      v25 = 0;
    }

    v26 = objc_allocWithZone(MEMORY[0x277CEE8C0]);
    v27 = sub_24F92B098();

    v28 = [v26 initWithParent:v25 element:v27 index:v24];

    v29 = sub_24F9295F8();
    sub_24F74163C(v29);

    sub_24E610F1C(MEMORY[0x277D84F90]);
    v30 = objc_allocWithZone(MEMORY[0x277CEE8B8]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F24E870, &qword_24F967D90);
    v31 = sub_24F92AE28();

    v32 = sub_24F92AE28();

    v33 = [v30 initWithIdentifier:v28 fields:v31 custom:v32];

    (*(v16 + 8))(v18, v35);
    return v33;
  }
}

uint64_t sub_24F742128()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_24F742160()
{
  MEMORY[0x2530543E0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_24F742198()
{

  return swift_deallocObject();
}

void sub_24F7421EC()
{
  *(v0 + OBJC_IVAR____TtC12GameStoreKit14UpsellGridView_primaryIcon) = 0;
  v1 = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC12GameStoreKit14UpsellGridView_remainingIcons) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC12GameStoreKit14UpsellGridView_artworkLoader) = 0;
  *(v0 + OBJC_IVAR____TtC12GameStoreKit14UpsellGridView_impressionsCalculator) = 0;
  *(v0 + OBJC_IVAR____TtC12GameStoreKit14UpsellGridView_iconViews) = v1;
  *(v0 + OBJC_IVAR____TtC12GameStoreKit14UpsellGridView_iconScaleFactor) = 0x3FF4000000000000;
  *(v0 + OBJC_IVAR____TtC12GameStoreKit14UpsellGridView_amsImpressionItems) = v1;
  sub_24F92CA88();
  __break(1u);
}

uint64_t sub_24F7422AC()
{
  v0 = sub_24F92AAB8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F210560 != -1)
  {
    swift_once();
  }

  v4 = __swift_project_value_buffer(v0, qword_27F39C380);
  (*(v1 + 16))(v3, v4, v0);
  qword_27F39F038 = sub_24F92AAE8();
  unk_27F39F040 = MEMORY[0x277D22508];
  __swift_allocate_boxed_opaque_existential_1(qword_27F39F020);
  return sub_24F92AAD8();
}

char *sub_24F7423F0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  ObjectType = swift_getObjectType();
  *&v7[OBJC_IVAR____TtC12GameStoreKit27MarketingItemViewController_dynamicDelegate] = 0;
  *&v7[OBJC_IVAR____TtC12GameStoreKit27MarketingItemViewController_gridPresenter] = 0;
  v15 = &v7[OBJC_IVAR____TtC12GameStoreKit27MarketingItemViewController_gridView];
  *v15 = 0;
  *(v15 + 1) = 0;
  *&v7[OBJC_IVAR____TtC12GameStoreKit27MarketingItemViewController_objectGraph] = a6;
  *&v7[OBJC_IVAR____TtC12GameStoreKit27MarketingItemViewController_requestInfo] = a1;
  v16 = &v7[OBJC_IVAR____TtC12GameStoreKit27MarketingItemViewController_referrer];
  *v16 = a2;
  *(v16 + 1) = a3;
  v17 = &v7[OBJC_IVAR____TtC12GameStoreKit27MarketingItemViewController_pageContext];
  *v17 = a4;
  *(v17 + 1) = a5;
  type metadata accessor for ArtworkLoader();

  sub_24F928F28();
  *&v7[OBJC_IVAR____TtC12GameStoreKit27MarketingItemViewController_artworkLoader] = v55;

  v18 = sub_24F92B098();

  v19 = sub_24F92B098();

  type metadata accessor for ASKBagContract(0);
  sub_24F928F28();
  v20 = sub_24F92A328();

  v54.receiver = v7;
  v54.super_class = ObjectType;
  v21 = objc_msgSendSuper2(&v54, sel_initWithServiceType_placement_bag_, v18, v19, v20);
  swift_unknownObjectRelease();

  if (a1[7])
  {
    v22 = v21;

    v23 = sub_24F92B098();
  }

  else
  {
    v24 = v21;
    v23 = 0;
  }

  [v21 setSeed_];

  if (a1[9])
  {

    v25 = sub_24F92B098();
  }

  else
  {
    v25 = 0;
  }

  [v21 setOfferHints_];

  v26 = a1[10];
  v27 = v21;
  if (v26)
  {

    sub_24E954078(v28);

    v26 = sub_24F92AE28();
  }

  [v21 setClientOptions_];

  if (a1[16])
  {

    v29 = sub_24F92AE28();
  }

  else
  {
    v29 = 0;
  }

  [v21 setMetricsOverlay_];

  [v21 setAnonymousMetrics_];
  v30 = sub_24F92B098();
  [v21 setMediaClientIdentifier_];

  sub_24F2D96B0();
  v31 = v21;
  sub_24F928F28();
  v32 = v55;
  v33 = [v55 ams_activeiTunesAccount];

  [v31 setAccount_];
  type metadata accessor for ArcadeSubscriptionManager();
  sub_24F928F28();
  v34 = v55;
  v35 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v36 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v37 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v38 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v39 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v40 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v41 = type metadata accessor for DynamicViewControllerDelegate();
  v42 = objc_allocWithZone(v41);
  *&v42[OBJC_IVAR____TtC12GameStoreKit29DynamicViewControllerDelegate_subscriptionManager] = v34;
  v43 = &v42[OBJC_IVAR____TtC12GameStoreKit29DynamicViewControllerDelegate_contentViewConstructor];
  *v43 = sub_24F7448E4;
  v43[1] = v40;
  v44 = &v42[OBJC_IVAR____TtC12GameStoreKit29DynamicViewControllerDelegate_purchaseSuccessHandler];
  *v44 = sub_24F74486C;
  v44[1] = v35;
  v45 = &v42[OBJC_IVAR____TtC12GameStoreKit29DynamicViewControllerDelegate_purchaseFailureHandler];
  *v45 = sub_24F74489C;
  v45[1] = v36;
  v46 = &v42[OBJC_IVAR____TtC12GameStoreKit29DynamicViewControllerDelegate_carrierLinkSuccessHandler];
  *v46 = sub_24F7448A4;
  v46[1] = v37;
  v47 = &v42[OBJC_IVAR____TtC12GameStoreKit29DynamicViewControllerDelegate_carrierLinkFailureHandler];
  *v47 = sub_24F7448D4;
  v47[1] = v38;
  v48 = &v42[OBJC_IVAR____TtC12GameStoreKit29DynamicViewControllerDelegate_didDismissHandler];
  *v48 = sub_24F7448DC;
  v48[1] = v39;
  v53.receiver = v42;
  v53.super_class = v41;
  v49 = objc_msgSendSuper2(&v53, sel_init);

  v50 = OBJC_IVAR____TtC12GameStoreKit27MarketingItemViewController_dynamicDelegate;
  *(v31 + OBJC_IVAR____TtC12GameStoreKit27MarketingItemViewController_dynamicDelegate) = v49;
  swift_unknownObjectRelease();
  v51 = *(v31 + v50);
  swift_unknownObjectRetain();
  [v31 setDelegate_];

  swift_unknownObjectRelease();

  return v31;
}

uint64_t sub_24F742A64()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E8D0, &qword_24F951650);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v17[-1] - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220FF0, &unk_24F9949F0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v17[-1] - v9;
  v11 = *(*(v0 + OBJC_IVAR____TtC12GameStoreKit27MarketingItemViewController_requestInfo) + 88);
  if (v11)
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B580, &unk_24F965710);

    sub_24F928EF8();
    sub_24E8E4574(v10, v7);
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v7, 1, v12) == 1)
    {
      sub_24E601704(v10, &qword_27F220FF0, &unk_24F9949F0);

      sub_24E601704(v7, &qword_27F220FF0, &unk_24F9949F0);
    }

    else
    {
      v17[3] = type metadata accessor for Action(0);
      v17[4] = sub_24F00D9C8();
      v17[0] = v11;
      (*(v2 + 104))(v4, *MEMORY[0x277D21E18], v1);

      sub_24F929288();

      (*(v2 + 8))(v4, v1);
      sub_24E601704(v10, &qword_27F220FF0, &unk_24F9949F0);
      __swift_destroy_boxed_opaque_existential_1(v17);
      (*(v13 + 8))(v7, v12);
    }
  }

  if (qword_27F210568 != -1)
  {
    swift_once();
  }

  v14 = sub_24F92AAE8();
  __swift_project_value_buffer(v14, qword_27F39C398);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  sub_24F9283A8();
  sub_24F92A588();
}

void sub_24F742E58(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E8D0, &qword_24F951650);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v16 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220FF0, &unk_24F9949F0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v16 - v9;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = *(*(Strong + OBJC_IVAR____TtC12GameStoreKit27MarketingItemViewController_requestInfo) + 96);
    if (v13)
    {
      v16[1] = OBJC_IVAR____TtC12GameStoreKit27MarketingItemViewController_objectGraph;
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B580, &unk_24F965710);

      sub_24F928EF8();
      sub_24E8E4574(v10, v7);
      v15 = *(v14 - 8);
      if ((*(v15 + 48))(v7, 1, v14) == 1)
      {
        sub_24E601704(v10, &qword_27F220FF0, &unk_24F9949F0);

        sub_24E601704(v7, &qword_27F220FF0, &unk_24F9949F0);
      }

      else
      {
        v17[3] = type metadata accessor for Action(0);
        v17[4] = sub_24F00D9C8();
        v17[0] = v13;
        (*(v2 + 104))(v4, *MEMORY[0x277D21E18], v1);

        sub_24F929288();

        (*(v2 + 8))(v4, v1);
        sub_24E601704(v10, &qword_27F220FF0, &unk_24F9949F0);
        __swift_destroy_boxed_opaque_existential_1(v17);
        (*(v15 + 8))(v7, v14);
      }
    }
  }
}

void sub_24F743170(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    a2();
  }
}

uint64_t sub_24F7431CC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E8D0, &qword_24F951650);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v17[-1] - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220FF0, &unk_24F9949F0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v17[-1] - v9;
  v11 = *(*(v0 + OBJC_IVAR____TtC12GameStoreKit27MarketingItemViewController_requestInfo) + 104);
  if (v11)
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B580, &unk_24F965710);

    sub_24F928EF8();
    sub_24E8E4574(v10, v7);
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v7, 1, v12) == 1)
    {
      sub_24E601704(v10, &qword_27F220FF0, &unk_24F9949F0);

      sub_24E601704(v7, &qword_27F220FF0, &unk_24F9949F0);
    }

    else
    {
      v17[3] = type metadata accessor for Action(0);
      v17[4] = sub_24F00D9C8();
      v17[0] = v11;
      (*(v2 + 104))(v4, *MEMORY[0x277D21E18], v1);

      sub_24F929288();

      (*(v2 + 8))(v4, v1);
      sub_24E601704(v10, &qword_27F220FF0, &unk_24F9949F0);
      __swift_destroy_boxed_opaque_existential_1(v17);
      (*(v13 + 8))(v7, v12);
    }
  }

  if (qword_27F210568 != -1)
  {
    swift_once();
  }

  v14 = sub_24F92AAE8();
  __swift_project_value_buffer(v14, qword_27F39C398);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  sub_24F9283A8();
  sub_24F92A588();
}

void sub_24F7435C0(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E8D0, &qword_24F951650);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v16 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220FF0, &unk_24F9949F0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v16 - v9;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = *(*(Strong + OBJC_IVAR____TtC12GameStoreKit27MarketingItemViewController_requestInfo) + 112);
    if (v13)
    {
      v16[1] = OBJC_IVAR____TtC12GameStoreKit27MarketingItemViewController_objectGraph;
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B580, &unk_24F965710);

      sub_24F928EF8();
      sub_24E8E4574(v10, v7);
      v15 = *(v14 - 8);
      if ((*(v15 + 48))(v7, 1, v14) == 1)
      {
        sub_24E601704(v10, &qword_27F220FF0, &unk_24F9949F0);

        sub_24E601704(v7, &qword_27F220FF0, &unk_24F9949F0);
      }

      else
      {
        v17[3] = type metadata accessor for Action(0);
        v17[4] = sub_24F00D9C8();
        v17[0] = v13;
        (*(v2 + 104))(v4, *MEMORY[0x277D21E18], v1);

        sub_24F929288();

        (*(v2 + 8))(v4, v1);
        sub_24E601704(v10, &qword_27F220FF0, &unk_24F9949F0);
        __swift_destroy_boxed_opaque_existential_1(v17);
        (*(v15 + 8))(v7, v14);
      }
    }
  }
}

void sub_24F7438D8(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E8D0, &qword_24F951650);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v16 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220FF0, &unk_24F9949F0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v16 - v9;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = *(*(Strong + OBJC_IVAR____TtC12GameStoreKit27MarketingItemViewController_requestInfo) + 120);
    if (v13)
    {
      v16[1] = OBJC_IVAR____TtC12GameStoreKit27MarketingItemViewController_objectGraph;
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B580, &unk_24F965710);

      sub_24F928EF8();
      sub_24E8E4574(v10, v7);
      v15 = *(v14 - 8);
      if ((*(v15 + 48))(v7, 1, v14) == 1)
      {
        sub_24E601704(v10, &qword_27F220FF0, &unk_24F9949F0);

        sub_24E601704(v7, &qword_27F220FF0, &unk_24F9949F0);
      }

      else
      {
        v17[3] = type metadata accessor for Action(0);
        v17[4] = sub_24F00D9C8();
        v17[0] = v13;
        (*(v2 + 104))(v4, *MEMORY[0x277D21E18], v1);

        sub_24F929288();

        (*(v2 + 8))(v4, v1);
        sub_24E601704(v10, &qword_27F220FF0, &unk_24F9949F0);
        __swift_destroy_boxed_opaque_existential_1(v17);
        (*(v15 + 8))(v7, v14);
      }
    }
  }
}

void *sub_24F743BF0(uint64_t a1, uint64_t a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v12 = Strong;
  v13 = sub_24F747C90(a1, a3, a4, a5, a6);
  v14 = v13;

  return v13;
}

id sub_24F743D14()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  sub_24F1F3AE0();
  v3 = [v0 metricsOverlay];
  if (v3)
  {
    v4 = v3;
    v5 = sub_24F92AE38();

    v17 = v5;
    *&v13 = 0x746E6F4365676170;
    *(&v13 + 1) = 0xEB00000000747865;
    v6 = MEMORY[0x277D837D0];
    sub_24F92C7F8();
    v7 = *&v1[OBJC_IVAR____TtC12GameStoreKit27MarketingItemViewController_pageContext + 8];
    if (v7)
    {
      v8 = *&v1[OBJC_IVAR____TtC12GameStoreKit27MarketingItemViewController_pageContext];
      v14 = v6;
      *&v13 = v8;
      *(&v13 + 1) = v7;
      sub_24E612B0C(&v13, v12);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_24E81DC98(v12, v15, isUniquelyReferenced_nonNull_native);
      sub_24E6585F8(v15);
      if (v5)
      {
LABEL_4:
        v10 = sub_24F92AE28();

LABEL_8:
        [v1 setMetricsOverlay_];

        goto LABEL_9;
      }
    }

    else
    {
      sub_24E98F760(v15, &v13);
      sub_24E601704(&v13, &qword_27F2129B0, &unk_24F945320);
      sub_24E6585F8(v15);
      if (v17)
      {
        goto LABEL_4;
      }
    }

    v10 = 0;
    goto LABEL_8;
  }

  [v0 setMetricsOverlay_];
LABEL_9:
  v16.receiver = v1;
  v16.super_class = ObjectType;
  return objc_msgSendSuper2(&v16, sel_viewDidLoad);
}

uint64_t sub_24F74419C()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit27MarketingItemViewController_referrer);

  return v1;
}

id sub_24F74424C()
{
  v1 = (v0 + OBJC_IVAR____TtC12GameStoreKit27MarketingItemViewController_gridView);
  swift_beginAccess();
  v2 = *v1;
  v3 = *v1;
  return v2;
}

void sub_24F7442A0(uint64_t a1, uint64_t a2)
{
  v5 = v2 + OBJC_IVAR____TtC12GameStoreKit27MarketingItemViewController_gridView;
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  *(v5 + 8) = a2;
}

uint64_t sub_24F744360()
{
  v1 = [v0 metricsOverlay];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_24F92AE38();

  return v3;
}

void sub_24F7443D0(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_24F92AE28();
  }

  else
  {
    v2 = 0;
  }

  [v1 setMetricsOverlay_];
}

void (*sub_24F744458(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_24F7444C8(v2);
  return sub_24E622878;
}

void (*sub_24F7444C8(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  v3 = [v1 metricsOverlay];
  if (v3)
  {
    v4 = v3;
    v5 = sub_24F92AE38();
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
  return sub_24F744564;
}

void sub_24F744564(uint64_t *a1, char a2)
{
  v3 = *a1;
  if (a2)
  {
    if (v3)
    {

      v4 = sub_24F92AE28();
    }

    else
    {
      v4 = 0;
    }

    [a1[1] setMetricsOverlay_];
  }

  else if (v3)
  {
    v4 = sub_24F92AE28();

    [a1[1] setMetricsOverlay_];
  }

  else
  {
    v4 = 0;
    [a1[1] setMetricsOverlay_];
  }
}

uint64_t sub_24F74466C(uint64_t a1)
{
  if (qword_27F211810 != -1)
  {
    swift_once();
  }

  __swift_project_boxed_opaque_existential_1(qword_27F39F020, qword_27F39F038);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A400;
  sub_24F9283A8();
  swift_getErrorValue();
  v4[3] = v3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v4);
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_1);
  sub_24F928438();
  sub_24E601704(v4, &qword_27F2129B0, &unk_24F945320);
  sub_24F92A5A8();
}

uint64_t sub_24F744834()
{
  MEMORY[0x2530543E0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_24F744918@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E8D8, &qword_24FA24278);
  MEMORY[0x28223BE20](v8);
  v10 = &v67 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E8E0, &qword_24FA24280);
  v74 = *(v11 - 8);
  v75 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v67 - v12;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E8E8, &qword_24FA24288);
  MEMORY[0x28223BE20](v76);
  v77 = &v67 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E8F0, &qword_24FA24290);
  MEMORY[0x28223BE20](v15);
  v17 = &v67 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E8F8, &qword_24FA24298);
  MEMORY[0x28223BE20](v18);
  v21 = &v67 - v20;
  if (a2 == 1 && a3 == 1)
  {
    swift_storeEnumTagMultiPayload();
    v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24E918, &qword_24FA242E8);
    v23 = sub_24F7456A8();
    v78._countAndFlagsBits = v22;
    v78._object = v23;
    swift_getOpaqueTypeConformance2();
    sub_24F924E28();
    sub_24F745A98(v21, v77);
    swift_storeEnumTagMultiPayload();
    sub_24F7455E0();
    sub_24F745894();
    sub_24F924E28();
    sub_24F745B08(v21);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E900, &qword_24FA242A0);
    return (*(*(v24 - 8) + 56))(a4, 0, 1, v24);
  }

  else
  {
    v73 = a4;
    if (a2 < 1 || a3 < 1)
    {
      if (a1)
      {
        v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E900, &qword_24FA242A0);
        v38 = *(*(v37 - 8) + 56);
        v39 = v37;
        v40 = v73;

        return v38(v40, 1, 1, v39);
      }

      else
      {
        v41._object = 0x800000024FA7CFF0;
        v72 = v19;
        v41._countAndFlagsBits = 0xD00000000000001CLL;
        v42._countAndFlagsBits = 0;
        v42._object = 0xE000000000000000;
        v78 = localizedString(_:comment:)(v41, v42);
        sub_24E600AEC();
        v43 = sub_24F925E18();
        v71 = v8;
        v45 = v44;
        v47 = v46;
        sub_24F925A18();
        v48 = sub_24F925C98();
        v50 = v49;
        v52 = v51;
        v54 = v53;

        sub_24E600B40(v43, v45, v47 & 1);

        KeyPath = swift_getKeyPath();
        LODWORD(v45) = sub_24F9251C8();
        v56 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E908, &unk_24FA242D8) + 36)];
        v57 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10, &unk_24F93BE10) + 36);
        v58 = *MEMORY[0x277CE13B8];
        v59 = sub_24F927748();
        (*(*(v59 - 8) + 104))(&v56[v57], v58, v59);
        *v56 = v45;
        *v10 = v48;
        *(v10 + 1) = v50;
        v10[16] = v52 & 1;
        *(v10 + 3) = v54;
        *(v10 + 4) = KeyPath;
        *(v10 + 5) = 2;
        v10[48] = 0;
        LOBYTE(v54) = sub_24F925828();
        sub_24F923318();
        v60 = &v10[*(v71 + 36)];
        *v60 = v54;
        *(v60 + 1) = v61;
        *(v60 + 2) = v62;
        *(v60 + 3) = v63;
        *(v60 + 4) = v64;
        v60[40] = 0;
        sub_24F745570(v10, v77);
        swift_storeEnumTagMultiPayload();
        sub_24F7455E0();
        sub_24F745894();
        v65 = v73;
        sub_24F924E28();
        sub_24E601704(v10, &qword_27F24E8D8, &qword_24FA24278);
        v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E900, &qword_24FA242A0);
        return (*(*(v66 - 8) + 56))(v65, 0, 1, v66);
      }
    }

    else
    {
      v72 = v19;
      sub_24F7450E8(a2, a3, &v78._countAndFlagsBits);
      countAndFlagsBits = v78._countAndFlagsBits;
      object = v78._object;
      v68 = v78._countAndFlagsBits;
      v28 = v79;
      v29 = v80;
      v70 = v80;
      v30 = sub_24F9258F8();
      v31 = swift_getKeyPath();
      v71 = v8;
      v78._countAndFlagsBits = countAndFlagsBits;
      v78._object = object;
      v79 = v28;
      v80 = v29;
      v81 = v31;
      v82 = v30;
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E918, &qword_24FA242E8);
      v69 = sub_24F7456A8();
      sub_24F9268B8();
      sub_24E600B40(v68, object, v28);

      v34 = v74;
      v33 = v75;
      (*(v74 + 16))(v17, v13, v75);
      swift_storeEnumTagMultiPayload();
      v78._countAndFlagsBits = v32;
      v78._object = v69;
      swift_getOpaqueTypeConformance2();
      sub_24F924E28();
      sub_24F745A98(v21, v77);
      swift_storeEnumTagMultiPayload();
      sub_24F7455E0();
      sub_24F745894();
      v35 = v73;
      sub_24F924E28();
      sub_24F745B08(v21);
      (*(v34 + 8))(v13, v33);
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E900, &qword_24FA242A0);
      return (*(*(v36 - 8) + 56))(v35, 0, 1, v36);
    }
  }
}

uint64_t sub_24F7450E8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v52 = a3;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10, &unk_24F93BE10);
  MEMORY[0x28223BE20](v51);
  v6 = &v44[-v5];
  v7 = sub_24F925CB8();
  v49 = *(v7 - 8);
  v50 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v44[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_24F924A78();
  MEMORY[0x28223BE20](v10 - 8);
  sub_24F924A68();
  sub_24F924A58();
  v53 = a1;
  sub_24F924A08();
  sub_24F924A58();
  sub_24F924A98();
  v11 = sub_24F925DE8();
  v13 = v12;
  v15 = v14;
  v53 = _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  v16 = sub_24F925C58();
  v47 = v17;
  v48 = v16;
  v45 = v18;
  v46 = v19;
  sub_24E600B40(v11, v13, v15 & 1);

  v53 = _s12GameStoreKit24localizedStringWithCount_5count7commentS2S_SiSStF_0(0xD000000000000025, 0x800000024FA7D010, a2);
  v54 = v20;
  sub_24E600AEC();
  v21 = sub_24F925E18();
  v23 = v22;
  LOBYTE(a2) = v24;
  sub_24F925CA8();
  v25 = sub_24F925DA8();
  v27 = v26;
  LOBYTE(v13) = v28;
  sub_24E600B40(v21, v23, a2 & 1);

  (*(v49 + 8))(v9, v50);
  LODWORD(v21) = sub_24F9251C8();
  v29 = *(v51 + 36);
  v30 = *MEMORY[0x277CE13B8];
  v31 = sub_24F927748();
  (*(*(v31 - 8) + 104))(v6 + v29, v30, v31);
  *v6 = v21;
  sub_24E602068(&qword_27F214428, &qword_27F213F10, &unk_24F93BE10, MEMORY[0x277CE03C0]);
  v32 = sub_24F925C58();
  v34 = v33;
  LOBYTE(v29) = v35;
  sub_24E600B40(v25, v27, v13 & 1);

  sub_24E601704(v6, &qword_27F213F10, &unk_24F93BE10);
  LOBYTE(v27) = v45;
  v36 = v47;
  v37 = v48;
  v50 = sub_24F925C78();
  v51 = v38;
  v40 = v39;
  LOBYTE(v6) = v41;
  sub_24E600B40(v32, v34, v29 & 1);

  sub_24E600B40(v37, v36, v27 & 1);

  v43 = v52;
  *v52 = v50;
  v43[1] = v40;
  *(v43 + 16) = v6 & 1;
  v43[3] = v51;
  return result;
}

uint64_t sub_24F745570(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E8D8, &qword_24FA24278);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24F7455E0()
{
  result = qword_27F24E910;
  if (!qword_27F24E910)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24E8F8, &qword_24FA24298);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24E918, &qword_24FA242E8);
    sub_24F7456A8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E910);
  }

  return result;
}

unint64_t sub_24F7456A8()
{
  result = qword_27F24E920;
  if (!qword_27F24E920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24E918, &qword_24FA242E8);
    sub_24F745760();
    sub_24E602068(&unk_27F2129E0, &unk_27F22E040, &unk_24F940690, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E920);
  }

  return result;
}

unint64_t sub_24F745760()
{
  result = qword_27F24E928;
  if (!qword_27F24E928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24E930, &qword_24FA242F0);
    sub_24F745818();
    sub_24E602068(&unk_27F212AB0, &qword_27F236350, &qword_24F939870, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E928);
  }

  return result;
}

unint64_t sub_24F745818()
{
  result = qword_27F24E938;
  if (!qword_27F24E938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24E940, &qword_24FA242F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E938);
  }

  return result;
}

unint64_t sub_24F745894()
{
  result = qword_27F24E948;
  if (!qword_27F24E948)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24E8D8, &qword_24FA24278);
    sub_24F745920();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E948);
  }

  return result;
}

unint64_t sub_24F745920()
{
  result = qword_27F24E950;
  if (!qword_27F24E950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24E958, &unk_24FA24300);
    sub_24F7459D8();
    sub_24E602068(&unk_27F2129E0, &unk_27F22E040, &unk_24F940690, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E950);
  }

  return result;
}

unint64_t sub_24F7459D8()
{
  result = qword_27F24E960;
  if (!qword_27F24E960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24E908, &unk_24FA242D8);
    sub_24E67283C();
    sub_24E602068(&qword_27F213F88, &qword_27F213F90, &qword_24F93BE60, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E960);
  }

  return result;
}

uint64_t sub_24F745A98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E8F8, &qword_24FA24298);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F745B08(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E8F8, &qword_24FA24298);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24F745B74()
{
  result = qword_27F24E968;
  if (!qword_27F24E968)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24E970, &unk_24FA24340);
    sub_24F745BF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E968);
  }

  return result;
}

unint64_t sub_24F745BF8()
{
  result = qword_27F24E978;
  if (!qword_27F24E978)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24E900, &qword_24FA242A0);
    sub_24F7455E0();
    sub_24F745894();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E978);
  }

  return result;
}

uint64_t sub_24F745C84()
{
  v0 = sub_24F92AAB8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F210560 != -1)
  {
    swift_once();
  }

  v4 = __swift_project_value_buffer(v0, qword_27F39C380);
  (*(v1 + 16))(v3, v4, v0);
  qword_27F39F060 = sub_24F92AAE8();
  unk_27F39F068 = MEMORY[0x277D22508];
  __swift_allocate_boxed_opaque_existential_1(qword_27F39F048);
  return sub_24F92AAD8();
}

id sub_24F745E4C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  sub_24F1F3EA8();
  v3 = [v0 metricsOverlay];
  if (v3)
  {
    v4 = v3;
    v5 = sub_24F92AE38();

    v17 = v5;
    *&v13 = 0x746E6F4365676170;
    *(&v13 + 1) = 0xEB00000000747865;
    v6 = MEMORY[0x277D837D0];
    sub_24F92C7F8();
    v7 = *&v1[OBJC_IVAR____TtC12GameStoreKit21DynamicViewController_pageContext + 8];
    if (v7)
    {
      v8 = *&v1[OBJC_IVAR____TtC12GameStoreKit21DynamicViewController_pageContext];
      v14 = v6;
      *&v13 = v8;
      *(&v13 + 1) = v7;
      sub_24E612B0C(&v13, v12);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_24E81DC98(v12, v15, isUniquelyReferenced_nonNull_native);
      sub_24E6585F8(v15);
      if (v5)
      {
LABEL_4:
        v10 = sub_24F92AE28();

LABEL_8:
        [v1 setMetricsOverlay_];

        goto LABEL_9;
      }
    }

    else
    {
      sub_24E98F760(v15, &v13);
      sub_24E857CC8(&v13);
      sub_24E6585F8(v15);
      if (v17)
      {
        goto LABEL_4;
      }
    }

    v10 = 0;
    goto LABEL_8;
  }

  [v0 setMetricsOverlay_];
LABEL_9:
  v16.receiver = v1;
  v16.super_class = ObjectType;
  return objc_msgSendSuper2(&v16, sel_viewDidLoad);
}

void sub_24F7460E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = sub_24F91F4A8();
  MEMORY[0x28223BE20](v6 - 8);
  sub_24F91F428();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t sub_24F74628C()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit21DynamicViewController_referrer);

  return v1;
}

id sub_24F74633C()
{
  v1 = (v0 + OBJC_IVAR____TtC12GameStoreKit21DynamicViewController_gridView);
  swift_beginAccess();
  v2 = *v1;
  v3 = *v1;
  return v2;
}

void sub_24F746390(uint64_t a1, uint64_t a2)
{
  v5 = v2 + OBJC_IVAR____TtC12GameStoreKit21DynamicViewController_gridView;
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  *(v5 + 8) = a2;
}

void (*sub_24F746450(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_24F7444C8(v2);
  return sub_24E622878;
}

uint64_t sub_24F7464C4(uint64_t a1)
{
  if (qword_27F211818 != -1)
  {
    swift_once();
  }

  __swift_project_boxed_opaque_existential_1(qword_27F39F048, qword_27F39F060);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A400;
  sub_24F9283A8();
  swift_getErrorValue();
  v4[3] = v3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v4);
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_1);
  sub_24F928438();
  sub_24E857CC8(v4);
  sub_24F92A5A8();
}

uint64_t static GameObjectGraphBuilder.playerDependentMetricsPipelineDependencies(player:bootstrapResult:metricsPipelineTransformer:)(void *a1, uint64_t *a2, uint64_t a3)
{
  v6 = type metadata accessor for Player(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  sub_24F74689C(*a2, a2[1], a2[2], a1);
  sub_24F747B30(a1, &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Player);
  v9 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v10 = swift_allocObject();
  sub_24E61C0A8(&v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  v11 = swift_allocObject();
  *(v11 + 16) = sub_24F747994;
  *(v11 + 24) = v10;
  v12 = OBJC_IVAR____TtC12GameStoreKit26MetricsPipelineTransformer_transforms;
  swift_beginAccess();
  v13 = *(a3 + v12);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a3 + v12) = v13;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = sub_24E619A88(0, v13[2] + 1, 1, v13);
    *(a3 + v12) = v13;
  }

  v16 = v13[2];
  v15 = v13[3];
  if (v16 >= v15 >> 1)
  {
    v13 = sub_24E619A88((v15 > 1), v16 + 1, 1, v13);
  }

  v13[2] = v16 + 1;
  v17 = &v13[2 * v16];
  v17[4] = sub_24F747A4C;
  v17[5] = v11;
  *(a3 + v12) = v13;
  swift_endAccess();

  sub_24F928FD8();
  return sub_24F928F68();
}

uint64_t sub_24F74689C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_24F928F28();
  v5 = *(v10[1] + OBJC_IVAR____TtC12GameStoreKit9ASKGlobal_player);
  v6 = a4[1];
  v7 = &v5[OBJC_IVAR____TtC12GameStoreKit20JSPlayerBridgeObject_playerID];
  *v7 = *a4;
  *(v7 + 1) = v6;
  v8 = v5;

  v8[OBJC_IVAR____TtC12GameStoreKit20JSPlayerBridgeObject_isUnderThirteen] = *(a4 + *(type metadata accessor for Player(0) + 88)) & 1;

  return sub_24ED44774(v10);
}

uint64_t sub_24F74695C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v71 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v5 - 8);
  v57 = &v52 - v6;
  v58 = type metadata accessor for FriendCountFieldsProvider(0);
  MEMORY[0x28223BE20](v58);
  v59 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v8 - 8);
  v63 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v62 = &v52 - v11;
  v55 = type metadata accessor for GameCountFieldsProvider(0);
  MEMORY[0x28223BE20](v55);
  v56 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2249B8, &qword_24F9730D8);
  v70 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v52 - v14;
  v16 = sub_24F92A498();
  v67 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_24F92A2F8();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = a3;
  v24 = *a3;
  v23 = a3[1];
  v73 = &type metadata for PlayerPrivateIdentifierProvider;
  v74 = sub_24F747A54();
  v72[0] = v24;
  v72[1] = v23;

  sub_24F92A2E8();
  v73 = v19;
  v74 = MEMORY[0x277D22350];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v72);
  v64 = v22;
  v65 = v20;
  v26 = *(v20 + 16);
  v66 = v19;
  v26(boxed_opaque_existential_1, v22, v19);
  if (qword_27F210368 != -1)
  {
    swift_once();
  }

  v60 = sub_24F92A278();
  __swift_project_value_buffer(v60, qword_27F229E90);
  sub_24F929F08();
  __swift_destroy_boxed_opaque_existential_1(v72);
  v68 = v16;
  v69 = a2;
  sub_24F928F28();
  v27 = v18;
  if (qword_27F211870 != -1)
  {
    swift_once();
  }

  sub_24F92A428();
  sub_24F92A3F8();
  v28 = v70 + 8;
  v29 = *(v70 + 8);
  v29(v15, v13);
  if (v72[0])
  {
    v30 = sub_24E9E270C(v72[0]);

    if (v30)
    {
      v53 = v29;
      v70 = v28;
      v54 = v18;
      v31 = v62;
      sub_24F747B30(v61, v62, type metadata accessor for Player);
      v32 = v56;
      sub_24F747B30(v31, v56, type metadata accessor for Player);
      v33 = v55;
      v34 = v69;
      *(v32 + *(v55 + 20)) = v69;
      v35 = v63;
      sub_24F747B30(v31, v63, type metadata accessor for Player);
      type metadata accessor for GameCountFieldsProvider.GameLibraryObserver(0);
      v36 = swift_allocObject();

      swift_defaultActor_initialize();
      sub_24F747B98(v31, type metadata accessor for Player);
      *(v36 + OBJC_IVAR____TtCV12GameStoreKit23GameCountFieldsProviderP33_33BAE3CE4A1F483C0FF792C77C53877119GameLibraryObserver_gameRefs) = 0;
      sub_24E61C0A8(v35, v36 + OBJC_IVAR____TtCV12GameStoreKit23GameCountFieldsProviderP33_33BAE3CE4A1F483C0FF792C77C53877119GameLibraryObserver_player);
      *(v36 + OBJC_IVAR____TtCV12GameStoreKit23GameCountFieldsProviderP33_33BAE3CE4A1F483C0FF792C77C53877119GameLibraryObserver_objectGraph) = v34;
      *(v32 + *(v33 + 24)) = v36;
      *(v32 + *(v33 + 28)) = v30;
      v73 = v33;
      v74 = sub_24F747AE8(&qword_27F24E9D0, type metadata accessor for GameCountFieldsProvider, &protocol conformance descriptor for GameCountFieldsProvider);
      v37 = __swift_allocate_boxed_opaque_existential_1(v72);
      sub_24F747B30(v32, v37, type metadata accessor for GameCountFieldsProvider);
      v38 = qword_27F210360;

      if (v38 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v60, qword_27F229E78);
      sub_24F929F08();
      sub_24F747B98(v32, type metadata accessor for GameCountFieldsProvider);
      __swift_destroy_boxed_opaque_existential_1(v72);
      v27 = v54;
      v29 = v53;
    }
  }

  if (qword_27F211868 != -1)
  {
    swift_once();
  }

  sub_24F92A428();
  sub_24F92A3F8();
  v29(v15, v13);
  v39 = v69;
  if (!v72[0])
  {
    v41 = v68;
    goto LABEL_18;
  }

  v40 = sub_24E9E270C(v72[0]);

  v41 = v68;
  if (!v40)
  {
LABEL_18:
    (*(v67 + 8))(v27, v41);
    return (*(v65 + 8))(v64, v66);
  }

  v42 = v62;
  sub_24F747B30(v61, v62, type metadata accessor for Player);
  v43 = v59;
  sub_24F747B30(v42, v59, type metadata accessor for Player);
  v70 = v40;
  v44 = v58;
  *(v43 + *(v58 + 20)) = v39;
  v45 = v63;
  sub_24F747B30(v42, v63, type metadata accessor for Player);
  type metadata accessor for FriendCountFieldsProvider.FriendListObserver(0);
  v46 = swift_allocObject();
  swift_retain_n();
  swift_defaultActor_initialize();
  *(v46 + OBJC_IVAR____TtCV12GameStoreKit25FriendCountFieldsProviderP33_DFBD3B45E0FB58D64D15DCF07008CE5E18FriendListObserver_friends) = 0;
  sub_24F747B30(v45, v46 + OBJC_IVAR____TtCV12GameStoreKit25FriendCountFieldsProviderP33_DFBD3B45E0FB58D64D15DCF07008CE5E18FriendListObserver_player, type metadata accessor for Player);
  *(v46 + OBJC_IVAR____TtCV12GameStoreKit25FriendCountFieldsProviderP33_DFBD3B45E0FB58D64D15DCF07008CE5E18FriendListObserver_objectGraph) = v39;
  v47 = sub_24F92B858();
  v48 = v57;
  (*(*(v47 - 8) + 56))(v57, 1, 1, v47);
  v49 = swift_allocObject();
  v49[2] = 0;
  v49[3] = 0;
  v49[4] = v46;

  sub_24F1D3DA4(0, 0, v48, &unk_24FA061F0, v49);

  sub_24F747B98(v45, type metadata accessor for Player);
  sub_24F747B98(v42, type metadata accessor for Player);
  *(v43 + *(v44 + 24)) = v46;
  *(v43 + *(v44 + 28)) = v70;
  v73 = v44;
  v74 = sub_24F747AE8(&qword_27F24E9C8, type metadata accessor for FriendCountFieldsProvider, &protocol conformance descriptor for FriendCountFieldsProvider);
  v50 = __swift_allocate_boxed_opaque_existential_1(v72);
  sub_24F747B30(v43, v50, type metadata accessor for FriendCountFieldsProvider);
  if (qword_27F210358 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v60, qword_27F229E60);
  sub_24F929F08();
  sub_24F747B98(v43, type metadata accessor for FriendCountFieldsProvider);
  (*(v67 + 8))(v27, v68);
  (*(v65 + 8))(v64, v66);
  return __swift_destroy_boxed_opaque_existential_1(v72);
}

uint64_t sub_24F74732C()
{
  v1 = type metadata accessor for Player(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = v0 + ((v2 + 16) & ~v2);

  v4 = v1[6];
  v5 = sub_24F9289E8();
  v28 = *(*(v5 - 8) + 8);
  v29 = *(v5 - 8);
  v28(v3 + v4, v5);

  if (*(v3 + v1[9] + 8) != 1)
  {
  }

  v6 = v3 + v1[13];
  v7 = type metadata accessor for CallProviderConversationHandleSet(0);
  if (!(*(*(v7 - 8) + 48))(v6, 1, v7))
  {
    v8 = type metadata accessor for CallProviderConversationHandle(0);
    v9 = *(*(v8 - 8) + 48);
    if (!v9(v6, 1, v8))
    {

      v10 = *(type metadata accessor for CallProvider(0) + 24);
      if (!(*(v29 + 48))(v6 + v10, 1, v5))
      {
        v28(v6 + v10, v5);
      }
    }

    v11 = v6 + *(v7 + 20);
    if (!v9(v11, 1, v8))
    {

      v12 = *(type metadata accessor for CallProvider(0) + 24);
      if (!(*(v29 + 48))(v11 + v12, 1, v5))
      {
        v28(v11 + v12, v5);
      }
    }
  }

  if (*(v3 + v1[15] + 8))
  {
  }

  v13 = v3 + v1[16];
  PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
  if (!(*(*(PlayedTogetherInfo - 8) + 48))(v13, 1, PlayedTogetherInfo))
  {

    v15 = type metadata accessor for Game(0);
    v28(v13 + v15[18], v5);
    v16 = v15[19];
    if (!(*(v29 + 48))(v13 + v16, 1, v5))
    {
      v28(v13 + v16, v5);
    }

    v17 = v15[21];
    v18 = sub_24F920818();
    v19 = *(v18 - 8);
    if (!(*(v19 + 48))(v13 + v17, 1, v18))
    {
      (*(v19 + 8))(v13 + v17, v18);
    }
  }

  v20 = v3 + v1[17];
  ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
  if (!(*(*(ChallengeInfo - 8) + 48))(v20, 1, ChallengeInfo))
  {

    v22 = type metadata accessor for Game(0);
    v28(v20 + v22[18], v5);
    v23 = v22[19];
    if (!(*(v29 + 48))(v20 + v23, 1, v5))
    {
      v28(v20 + v23, v5);
    }

    v24 = v22[21];
    v25 = sub_24F920818();
    v26 = *(v25 - 8);
    if (!(*(v26 + 48))(v20 + v24, 1, v25))
    {
      (*(v26 + 8))(v20 + v24, v25);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_24F747994(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for Player(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_24F74695C(a1, a2, v6);
}

uint64_t sub_24F747A14()
{

  return swift_deallocObject();
}

unint64_t sub_24F747A54()
{
  result = qword_27F24E9C0;
  if (!qword_27F24E9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E9C0);
  }

  return result;
}

uint64_t sub_24F747AA8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24F747AE8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F747B30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F747B98(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_24F747C08(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v5 = sub_24F747CBC(a1, &OBJC_IVAR____TtC12GameStoreKit27MarketingItemViewController_objectGraph, &OBJC_IVAR____TtC12GameStoreKit27MarketingItemViewController_gridView, &off_286233DD8, a2, a3, a4, a5);
  v6 = v5;
  return v5;
}

void *sub_24F747C4C(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v5 = sub_24F747CBC(a1, &OBJC_IVAR____TtC12GameStoreKit21DynamicViewController_objectGraph, &OBJC_IVAR____TtC12GameStoreKit21DynamicViewController_gridView, &off_286233F80, a2, a3, a4, a5);
  v6 = v5;
  return v5;
}

void *sub_24F747CBC(uint64_t a1, void *a2, void *a3, uint64_t a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v11 = v8;
  v17 = *(v8 + *a2);
  type metadata accessor for UpsellGridPresenter(0);
  v18 = swift_allocObject();
  *(v18 + OBJC_IVAR____TtC12GameStoreKit19UpsellGridPresenter_view + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v18 + OBJC_IVAR____TtC12GameStoreKit19UpsellGridPresenter_contentDictionary) = a1;

  v19 = sub_24EC8415C(v17, 0, 0, 0);

  v20 = objc_allocWithZone(type metadata accessor for UpsellGridView());
  v21 = sub_24F73FEC4(0, 1, 1);
  [v21 setFrame_];
  v22 = (v11 + *a3);
  swift_beginAccess();
  v23 = *v22;
  *v22 = v21;
  v22[1] = &off_286233D20;
  v29 = v21;

  v24 = v19 + OBJC_IVAR____TtC12GameStoreKit19UpsellGridPresenter_view;
  swift_beginAccess();
  *(v24 + 8) = a4;
  swift_unknownObjectWeakAssign();
  _s12GameStoreKit19UpsellGridPresenterC6update13ignoringCacheySb_tF_0();
  if (qword_27F210568 != -1)
  {
    swift_once();
  }

  v25 = sub_24F92AAE8();
  __swift_project_value_buffer(v25, qword_27F39C398);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A400;
  sub_24F9283A8();
  type metadata accessor for CGRect(0);
  v30[3] = v26;
  v27 = swift_allocObject();
  v30[0] = v27;
  v27[2] = a5;
  v27[3] = a6;
  v27[4] = a7;
  v27[5] = a8;
  sub_24F928438();
  sub_24E857CC8(v30);
  sub_24F92A588();

  v31.origin.x = a5;
  v31.origin.y = a6;
  v31.size.width = a7;
  v31.size.height = a8;
  if (CGRectIsEmpty(v31))
  {
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F9283A8();
    sub_24F92A5A8();
  }

  return *v22;
}

uint64_t sub_24F74805C(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_24F9289E8();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[12];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[13];

  return v15(v16, a2, v14);
}

uint64_t sub_24F7481F4(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = sub_24F9289E8();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[12];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[13];

  return v15(v16, a2, a2, v14);
}

uint64_t type metadata accessor for ChallengesHistoryChallengeLockup(uint64_t a1)
{
  result = qword_27F24E9D8;
  if (!qword_27F24E9D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F7483C4(uint64_t a1)
{
  sub_24E61C7D0(319);
  if (v1 <= 0x3F)
  {
    sub_24F9289E8();
    if (v2 <= 0x3F)
    {
      sub_24F748568(319, &qword_27F214D28, type metadata accessor for PlayerAvatar, MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        sub_24E659BE8();
        if (v4 <= 0x3F)
        {
          sub_24E65B038(319, &qword_27F213EA0, &qword_27F213EA8, &unk_24F93D030);
          if (v5 <= 0x3F)
          {
            sub_24E65B038(319, &qword_27F215458, &qword_27F215460, &qword_24F942C00);
            if (v6 <= 0x3F)
            {
              sub_24F748568(319, &qword_27F213EB0, MEMORY[0x277D21F70], MEMORY[0x277D83D88]);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_24F748568(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_24F7485CC(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x6575676573;
    v6 = 0x4D747865746E6F63;
    if (a1 != 8)
    {
      v6 = 0xD000000000000011;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 1802396018;
    if (a1 != 5)
    {
      v7 = 0xD000000000000010;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 25705;
    v2 = 0x7641726579616C70;
    v3 = 0x656D614E656D6167;
    if (a1 != 3)
    {
      v3 = 0x6D617473656D6974;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x6E6F6349656D6167;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_24F74871C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24EA70, &qword_24FA246D8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F74B4C4();
  sub_24F92D128();
  LOBYTE(v12) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
  sub_24E602068(&qword_27F214040, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DB8]);
  sub_24F92CD48();
  if (!v2)
  {
    v9 = type metadata accessor for ChallengesHistoryChallengeLockup(0);
    LOBYTE(v12) = 1;
    sub_24F9289E8();
    sub_24F74B674(&qword_27F214060, MEMORY[0x277D21C48], MEMORY[0x277D21C50]);
    sub_24F92CD48();
    v12 = *(v3 + *(v9 + 24));
    v11[7] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218590, &qword_24F9D7B90);
    sub_24F74B5D8(&qword_27F218A30, &qword_27F218A38, &protocol conformance descriptor for PlayerAvatar, MEMORY[0x277D83948]);
    sub_24F92CD48();
    LOBYTE(v12) = 3;
    sub_24F92CD08();
    LOBYTE(v12) = 4;
    sub_24F92CD08();
    LOBYTE(v12) = 5;
    sub_24F92CCE8();
    LOBYTE(v12) = 6;
    sub_24F92CD18();
    LOBYTE(v12) = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    sub_24E620EE4(&qword_27F214048, &qword_27F214050, MEMORY[0x277D21FD8], MEMORY[0x277D21D30]);
    sub_24F92CD48();
    LOBYTE(v12) = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
    sub_24E65CD0C();
    sub_24F92CD48();
    LOBYTE(v12) = 9;
    sub_24F929608();
    sub_24F74B674(&qword_27F214058, MEMORY[0x277D21F70], MEMORY[0x277D21F78]);
    sub_24F92CCF8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24F748BC4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v3 - 8);
  v42 = &v39 - v4;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v43);
  v6 = &v39 - v5;
  v7 = sub_24F9289E8();
  v44 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24EA60, &qword_24FA246D0);
  v45 = *(v10 - 8);
  v46 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v39 - v11;
  v13 = type metadata accessor for ChallengesHistoryChallengeLockup(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = &v15[*(v16 + 44)];
  v55 = 0;
  v53 = 0u;
  v54 = 0u;
  *v17 = 0u;
  *(v17 + 16) = 0u;
  *(v17 + 32) = 0;
  v52 = v17;
  sub_24E61DA68(&v53, v17, qword_27F21B590, &unk_24F93BE30);
  v18 = *(v13 + 48);
  v19 = sub_24F92A6D8();
  v20 = *(*(v19 - 8) + 56);
  v50 = v18;
  v51 = v15;
  v20(&v15[v18], 1, 1, v19);
  v21 = a1[3];
  v49 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_24F74B4C4();
  v47 = v12;
  v22 = v48;
  sub_24F92D108();
  if (v22)
  {
    v23 = v51;
    __swift_destroy_boxed_opaque_existential_1(v49);
    sub_24E601704(v52, qword_27F24EC90, &unk_24F93C1D0);
    return sub_24E601704(v23 + v50, &qword_27F215440, &unk_24F942BD0);
  }

  else
  {
    v40 = v6;
    v48 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
    v56 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DC0]);
    sub_24F92CC68();
    v24 = v54;
    v25 = v51;
    *v51 = v53;
    v25[1] = v24;
    *(v25 + 4) = v55;
    LOBYTE(v53) = 1;
    sub_24F74B674(&qword_27F214018, MEMORY[0x277D21C48], MEMORY[0x277D21C60]);
    sub_24F92CC68();
    (*(v44 + 32))(v25 + v48[5], v9, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218590, &qword_24F9D7B90);
    v56 = 2;
    sub_24F74B5D8(&qword_27F218598, &qword_27F2185A0, &protocol conformance descriptor for PlayerAvatar, MEMORY[0x277D83978]);
    sub_24F92CC68();
    v26 = v48;
    *(v25 + v48[6]) = v53;
    LOBYTE(v53) = 3;
    v27 = sub_24F92CC28();
    v28 = (v25 + v26[7]);
    *v28 = v27;
    v28[1] = v29;
    LOBYTE(v53) = 4;
    v30 = sub_24F92CC28();
    v31 = (v25 + v26[8]);
    *v31 = v30;
    v31[1] = v32;
    LOBYTE(v53) = 5;
    v33 = sub_24F92CC08();
    v34 = v25 + v26[9];
    *v34 = v33;
    v34[8] = v35 & 1;
    LOBYTE(v53) = 6;
    *(v25 + v26[10]) = sub_24F92CC38() & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    v56 = 7;
    sub_24E620EE4(&qword_27F213F38, &qword_27F213F40, MEMORY[0x277D21FD0], MEMORY[0x277D21D38]);
    sub_24F92CC68();
    sub_24E61DA68(&v53, v52, qword_27F24EC90, &unk_24F93C1D0);
    LOBYTE(v53) = 8;
    sub_24E65CAA0();
    v36 = v40;
    sub_24F92CC68();
    sub_24E61DA68(v36, v25 + v50, &qword_27F215440, &unk_24F942BD0);
    sub_24F929608();
    LOBYTE(v53) = 9;
    sub_24F74B674(&qword_27F213F48, MEMORY[0x277D21F70], MEMORY[0x277D21F88]);
    sub_24F92CC18();
    (*(v45 + 8))(v47, v46);
    v37 = v51;
    sub_24E6009C8(v42, v51 + v48[13], &qword_27F213E68, &unk_24F93BC80);
    sub_24F74B518(v37, v41);
    __swift_destroy_boxed_opaque_existential_1(v49);
    return sub_24F74B57C(v37);
  }
}

uint64_t sub_24F7494FC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F74B83C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F749524(uint64_t a1)
{
  v2 = sub_24F74B4C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F749560(uint64_t a1)
{
  v2 = sub_24F74B4C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F74959C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_24E60169C(v2 + *(a1 + 48), &v9 - v6, &qword_27F215440, &unk_24F942BD0);
  return sub_24E6009C8(v7, a2, &qword_27F215460, &qword_24F942C00);
}

uint64_t sub_24F7496DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v38 = a3;
  v39 = sub_24F9248C8();
  v7 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E9F8, &qword_24FA24648);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v38 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24EA00, &qword_24FA24650);
  v15 = v14 - 8;
  MEMORY[0x28223BE20](v14);
  v17 = &v38 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24EA08, &qword_24FA24658);
  MEMORY[0x28223BE20](v18);
  v20 = &v38 - v19;
  *v13 = sub_24F9249A8();
  *(v13 + 1) = 0x4030000000000000;
  v13[16] = 0;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24EA10, &unk_24FA24660);
  sub_24F749AA0(a1, a2, &v13[*(v21 + 44)]);
  LOBYTE(a2) = sub_24F925858();
  sub_24F923318();
  v22 = &v13[*(v11 + 44)];
  *v22 = a2;
  *(v22 + 1) = v23;
  *(v22 + 2) = v24;
  *(v22 + 3) = v25;
  *(v22 + 4) = v26;
  v22[40] = 0;
  sub_24F927618();
  sub_24F9242E8();
  sub_24E6009C8(v13, v17, &qword_27F24E9F8, &qword_24FA24648);
  v27 = &v17[*(v15 + 44)];
  v28 = v45;
  *(v27 + 4) = v44;
  *(v27 + 5) = v28;
  *(v27 + 6) = v46;
  v29 = v41;
  *v27 = v40;
  *(v27 + 1) = v29;
  v30 = v43;
  *(v27 + 2) = v42;
  *(v27 + 3) = v30;
  v31 = &v20[*(v18 + 36)];
  sub_24F927468();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FC48, &qword_24F9EE8E0);
  v33 = &v31[*(v32 + 52)];
  v34 = *(sub_24F924258() + 20);
  v35 = *MEMORY[0x277CE0118];
  v36 = sub_24F924B38();
  (*(*(v36 - 8) + 104))(v33 + v34, v35, v36);
  *v33 = a4;
  v33[1] = a4;
  *&v31[*(v32 + 56)] = 256;
  sub_24E6009C8(v17, v20, &qword_27F24EA00, &qword_24FA24650);
  sub_24F9248B8();
  sub_24F74B108();
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  (*(v7 + 8))(v9, v39);
  return sub_24E601704(v20, &qword_27F24EA08, &qword_24FA24658);
}

uint64_t sub_24F749AA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v148 = a2;
  v150 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F233180, &qword_24F9FDB90);
  MEMORY[0x28223BE20](v5 - 8);
  v138 = &v134 - v6;
  v7 = sub_24F924A78();
  MEMORY[0x28223BE20](v7 - 8);
  v136 = &v134 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24EA40, &qword_24FA24680);
  v151 = *(v152 - 8);
  MEMORY[0x28223BE20](v152);
  v137 = &v134 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24EA48, &qword_24FA24688);
  MEMORY[0x28223BE20](v10 - 8);
  v149 = &v134 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v153 = &v134 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215340, &qword_24F943530);
  MEMORY[0x28223BE20](v14 - 8);
  v144 = &v134 - v15;
  v146 = sub_24F91F008();
  v145 = *(v146 - 8);
  MEMORY[0x28223BE20](v146);
  v134 = &v134 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v135 = &v134 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
  v139 = *(v19 - 8);
  v20 = *(v139 + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v140 = &v134 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v134 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214A50, &qword_24F949E80);
  MEMORY[0x28223BE20](v24);
  v26 = &v134 - v25;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D60, &qword_24F93E898);
  MEMORY[0x28223BE20](v142);
  v154 = &v134 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v141 = &v134 - v29;
  MEMORY[0x28223BE20](v30);
  v155 = &v134 - v31;
  v32 = type metadata accessor for ChallengesHistoryChallengeLockup(0);
  v34 = *(v32 + 20);
  v33 = *(v32 + 24);
  v143 = v32;
  v35 = *(a1 + v33);
  v36 = sub_24F9289E8();
  v37 = *(v36 - 8);
  v38 = *(v37 + 16);
  v147 = a1;
  v38(v23, a1 + v34, v36);
  (*(v37 + 56))(v23, 0, 1, v36);
  v39 = qword_27F2118C8;

  if (v39 != -1)
  {
    swift_once();
  }

  v170 = xmmword_27F2520F0;
  v171 = unk_27F252100;
  v172 = xmmword_27F252110;
  v173 = *&byte_27F252120;
  *v26 = swift_getKeyPath();
  v26[8] = 0;
  LOBYTE(v156) = 0;
  sub_24E63D388(&v170, &v160);
  sub_24F926F28();
  v40 = v161;
  v26[16] = v160;
  *(v26 + 3) = v40;
  v41 = sub_24E6B7C48(*(&v173 + 1), v35);
  v43 = v42;
  v45 = v44;
  v47 = v46;
  if ((v46 & 1) == 0)
  {
    goto LABEL_4;
  }

  sub_24F92CEF8();
  swift_unknownObjectRetain_n();
  v51 = swift_dynamicCastClass();
  if (!v51)
  {
    swift_unknownObjectRelease();
    v51 = MEMORY[0x277D84F90];
  }

  v52 = *(v51 + 16);

  if (__OFSUB__(v47 >> 1, v45))
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v52 != (v47 >> 1) - v45)
  {
LABEL_19:
    swift_unknownObjectRelease();
LABEL_4:
    sub_24E6B8064(v41, v43, v45, v47);
    v49 = v48;
    v50 = v139;
    goto LABEL_11;
  }

  v49 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  v50 = v139;
  if (v49)
  {
    goto LABEL_12;
  }

  v49 = MEMORY[0x277D84F90];
LABEL_11:
  swift_unknownObjectRelease();
LABEL_12:
  *(v26 + 4) = v49;
  sub_24E60169C(v23, &v26[v24[11]], &qword_27F213FB0, &qword_24F93E6B0);
  v53 = &v26[v24[13]];
  v54 = v171;
  *v53 = v170;
  v53[1] = v54;
  v55 = v173;
  v53[2] = v172;
  v53[3] = v55;
  *&v26[v24[12]] = 0xBFC657184AE74487;
  *&v26[v24[14]] = 0x3FF0000000000000;
  v56 = v140;
  sub_24E6009C8(v23, v140, &qword_27F213FB0, &qword_24F93E6B0);
  v57 = (*(v50 + 80) + 16) & ~*(v50 + 80);
  v58 = (v20 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
  v59 = (v58 + 15) & 0xFFFFFFFFFFFFFFF8;
  v60 = swift_allocObject();
  sub_24E6009C8(v56, v60 + v57, &qword_27F213FB0, &qword_24F93E6B0);
  *(v60 + v58) = 0xBFC657184AE74487;
  v61 = (v60 + v59);
  v62 = v173;
  v61[2] = v172;
  v61[3] = v62;
  v63 = v171;
  *v61 = v170;
  v61[1] = v63;
  *(v60 + ((v59 + 71) & 0xFFFFFFFFFFFFFFF8)) = 0x3FF0000000000000;
  v64 = &v26[v24[15]];
  *v64 = sub_24E63DE54;
  v64[1] = v60;
  sub_24E63D388(&v170, &v160);
  v65 = sub_24F925838();
  sub_24F923318();
  v67 = v66;
  v69 = v68;
  v71 = v70;
  v73 = v72;
  v74 = v141;
  sub_24E6009C8(v26, v141, &qword_27F214A50, &qword_24F949E80);
  v75 = v74 + *(v142 + 36);
  *v75 = v65;
  *(v75 + 8) = v67;
  *(v75 + 16) = v69;
  *(v75 + 24) = v71;
  *(v75 + 32) = v73;
  *(v75 + 40) = 0;
  sub_24E6009C8(v74, v155, &qword_27F214D60, &qword_24F93E898);
  v76 = v143;
  v77 = v147;
  v78 = v147 + v143[9];
  v79 = *v78;
  v80 = *(v78 + 8);
  v81 = v144;
  sub_24F74A990(v80, *(v147 + v143[7]), *(v147 + v143[7] + 8), *(v147 + v143[8]), *(v147 + v143[8] + 8), v144);
  v82 = v145;
  v83 = v146;
  if ((*(v145 + 48))(v81, 1, v146) == 1)
  {
    sub_24E601704(v81, &qword_27F215340, &qword_24F943530);
    v144 = 0;
    v142 = 0;
    v141 = 0;
    v145 = 0;
    v146 = 0;
    v84 = 0;
    v85 = 0;
    v86 = 0;
    v87 = 0;
  }

  else
  {
    v88 = v135;
    (*(v82 + 32))(v135, v81, v83);
    (*(v82 + 16))(v134, v88, v83);
    v144 = sub_24F925DF8();
    v142 = v89;
    v91 = v90;
    v141 = v92;
    v93 = sub_24F925838();
    sub_24F923318();
    v84 = v94;
    v85 = v95;
    v86 = v96;
    v87 = v97;
    (*(v82 + 8))(v88, v83);
    LOBYTE(v160) = v91 & 1;
    LOBYTE(v156) = 0;
    v146 = v91 & 1;
    v145 = v93;
  }

  v98 = 1;
  if (!(v80 & 1 | ((*(v77 + v76[10]) & 1) == 0)))
  {
    sub_24F924A68();
    sub_24F924A58();
    v160 = v79;
    sub_24F924A08();
    sub_24F924A58();
    sub_24F924A98();
    v99 = sub_24F925DE8();
    v101 = v100;
    v103 = v102;
    v104 = sub_24F925C98();
    v106 = v105;
    v108 = v107;
    sub_24E600B40(v99, v101, v103 & 1);

    sub_24E72FF4C();
    v109 = sub_24F925C58();
    v111 = v110;
    LOBYTE(v99) = v112;
    v114 = v113;
    sub_24E600B40(v104, v106, v108 & 1);

    v160 = v109;
    v161 = v111;
    LOBYTE(v162) = v99 & 1;
    v163 = v114;
    v115 = v138;
    sub_24F91EF98();
    v116 = sub_24F91EFA8();
    (*(*(v116 - 8) + 56))(v115, 0, 1, v116);
    v117 = v137;
    sub_24F9260F8();
    sub_24E601704(v115, &qword_27F233180, &qword_24F9FDB90);
    sub_24E600B40(v109, v111, v99 & 1);

    (*(v151 + 32))(v153, v117, v152);
    v98 = 0;
  }

  v118 = v153;
  (*(v151 + 56))(v153, v98, 1, v152);
  v119 = v154;
  sub_24E60169C(v155, v154, &qword_27F214D60, &qword_24F93E898);
  v120 = v149;
  sub_24F74B454(v118, v149);
  v121 = v119;
  v122 = v150;
  sub_24E60169C(v121, v150, &qword_27F214D60, &qword_24F93E898);
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24EA50, &qword_24FA246C0);
  v124 = (v122 + v123[12]);
  v125 = v144;
  *&v156 = v144;
  v126 = v142;
  *(&v156 + 1) = v142;
  v127 = v146;
  *&v157 = v146;
  v128 = v141;
  *(&v157 + 1) = v141;
  v129 = v145;
  *&v158 = v145;
  *(&v158 + 1) = v84;
  *v159 = v85;
  *&v159[8] = v86;
  *&v159[16] = v87;
  v159[24] = 0;
  v130 = v157;
  *v124 = v156;
  v124[1] = v130;
  v131 = *v159;
  v124[2] = v158;
  v124[3] = v131;
  *(v124 + 57) = *&v159[9];
  v132 = v122 + v123[16];
  *v132 = 0;
  *(v132 + 8) = 1;
  sub_24F74B454(v120, v122 + v123[20]);
  sub_24E60169C(&v156, &v160, &qword_27F24EA58, &qword_24FA246C8);
  sub_24E601704(v118, &qword_27F24EA48, &qword_24FA24688);
  sub_24E601704(v155, &qword_27F214D60, &qword_24F93E898);
  sub_24E601704(v120, &qword_27F24EA48, &qword_24FA24688);
  v160 = v125;
  v161 = v126;
  v162 = v127;
  v163 = v128;
  v164 = v129;
  v165 = v84;
  v166 = v85;
  v167 = v86;
  v168 = v87;
  v169 = 0;
  sub_24E601704(&v160, &qword_27F24EA58, &qword_24FA246C8);
  return sub_24E601704(v154, &qword_27F214D60, &qword_24F93E898);
}

uint64_t sub_24F74A990@<X0>(char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v39 = a5;
  v40 = a6;
  v38 = a4;
  v10 = sub_24F91F0C8();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = sub_24F91F008();
  MEMORY[0x28223BE20](v11);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v37 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v37 - v18;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v37 - v23;
  if (a2)
  {
    goto LABEL_9;
  }

  v41 = v21;
  if (qword_27F2117F8 != -1)
  {
    swift_once();
  }

  v25 = qword_27F39F008;
  v26 = sub_24F92BB08();
  v27 = [v25 stringForObjectValue_];

  v21 = v41;
  if (!v27)
  {
LABEL_9:
    v33 = *(v21 + 56);

    return v33(a7, 1, 1, v11, v22);
  }

  else
  {
    v37 = a7;
    v28 = sub_24F92B0D8();
    v30 = v29;

    sub_24F69B344(v28, v30, a3, v38);

    sub_24F91F0B8();
    sub_24F91F018();
    sub_24F925A18();
    v31 = sub_24F9258E8();

    v42 = v31;
    sub_24E6584A4();
    sub_24F91F038();
    if (qword_27F210D28 != -1)
    {
      swift_once();
    }

    if (byte_27F39D1B1 == 1)
    {
      v32 = _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
    }

    else
    {
      v32 = sub_24F926D18();
    }

    v42 = v32;
    sub_24E876600();
    sub_24F91F038();

    sub_24F91F0B8();
    sub_24F91F018();
    v42 = sub_24F925A08();
    sub_24F91F038();
    v42 = sub_24F926D38();
    sub_24F91F038();
    sub_24F91EE58();
    sub_24F91EE78();
    v35 = *(v41 + 8);
    v35(v13, v11);
    v36 = v37;
    sub_24F91EE78();
    v35(v16, v11);
    v35(v19, v11);
    v35(v24, v11);
    return (*(v41 + 56))(v36, 0, 1, v11);
  }
}

uint64_t sub_24F74AE00@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F924B38();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 8);
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  (*(v4 + 104))(v6, *MEMORY[0x277CE0118], v3);
  v8 = sub_24F924258();
  *(a1 + 64) = v8;
  *(a1 + 72) = sub_24F74B674(&qword_27F212868, MEMORY[0x277CDFC08], MEMORY[0x277CDFBE0]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((a1 + 40));
  (*(v4 + 16))(boxed_opaque_existential_1 + *(v8 + 20), v6, v3);
  *boxed_opaque_existential_1 = v7;
  boxed_opaque_existential_1[1] = v7;
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24F74AF80(uint64_t a1)
{
  sub_24F47DA30();

  return sub_24F9218E8();
}

unint64_t sub_24F74B034()
{
  result = qword_27F24E9F0;
  if (!qword_27F24E9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E9F0);
  }

  return result;
}

unint64_t sub_24F74B108()
{
  result = qword_27F24EA18;
  if (!qword_27F24EA18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24EA08, &qword_24FA24658);
    sub_24F74B1C0();
    sub_24E602068(&qword_27F2419D0, &qword_27F21FC48, &qword_24F9EE8E0, MEMORY[0x277CE08B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24EA18);
  }

  return result;
}

unint64_t sub_24F74B1C0()
{
  result = qword_27F24EA20;
  if (!qword_27F24EA20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24EA00, &qword_24FA24650);
    sub_24F74B24C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24EA20);
  }

  return result;
}

unint64_t sub_24F74B24C()
{
  result = qword_27F24EA28;
  if (!qword_27F24EA28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24E9F8, &qword_24FA24648);
    sub_24E602068(&qword_27F24EA30, &qword_27F24EA38, &unk_24FA24670, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24EA28);
  }

  return result;
}

uint64_t sub_24F74B30C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = sub_24F9289E8();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t sub_24F74B454(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24EA48, &qword_24FA24688);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24F74B4C4()
{
  result = qword_27F24EA68;
  if (!qword_27F24EA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24EA68);
  }

  return result;
}

uint64_t sub_24F74B518(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChallengesHistoryChallengeLockup(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F74B57C(uint64_t a1)
{
  v2 = type metadata accessor for ChallengesHistoryChallengeLockup(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F74B5D8(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F218590, &qword_24F9D7B90);
    sub_24F74B674(a2, type metadata accessor for PlayerAvatar, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24F74B674(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F74B6D0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24EA08, &qword_24FA24658);
  sub_24F74B108();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_24F74B738()
{
  result = qword_27F24EA78;
  if (!qword_27F24EA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24EA78);
  }

  return result;
}

unint64_t sub_24F74B790()
{
  result = qword_27F24EA80;
  if (!qword_27F24EA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24EA80);
  }

  return result;
}

unint64_t sub_24F74B7E8()
{
  result = qword_27F24EA88;
  if (!qword_27F24EA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24EA88);
  }

  return result;
}

uint64_t sub_24F74B83C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F6349656D6167 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7641726579616C70 && a2 == 0xED00007372617461 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656D614E656D6167 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xEF676E6972745370 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 1802396018 && a2 == 0xE400000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024FA7D1A0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x4D747865746E6F63 && a2 == 0xEB00000000756E65 || (sub_24F92CE08() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2)
  {

    return 9;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

BOOL ArcadeSubscription.isActive.getter()
{
  swift_getKeyPath();
  sub_24F74D33C();
  sub_24F91FD88();

  return *(v0 + 16) < 2u;
}

uint64_t ArcadeSubscription.updateStateFromEntitlements(policy:)(_BYTE *a1)
{
  *(v2 + 208) = v1;
  v4 = sub_24F91F648();
  *(v2 + 216) = v4;
  *(v2 + 224) = *(v4 - 8);
  *(v2 + 232) = swift_task_alloc();
  *(v2 + 240) = swift_task_alloc();
  *(v2 + 73) = *a1;

  return MEMORY[0x2822009F8](sub_24F74BCCC, 0, 0);
}

uint64_t sub_24F74BCCC()
{
  v16 = v0;
  sub_24F74D6CC(&v15);
  v1 = v15;
  if (v15 != 7)
  {
    if (os_variant_has_internal_content())
    {
      v2 = sub_24F92CE08();

      if ((v2 & 1) == 0)
      {
        v3 = *(v0 + 208);
        if (sub_24F0CCA98(*(v3 + 16), v1))
        {
          *(v3 + 16) = v1;
        }

        else
        {
          v10 = *(v0 + 208);
          swift_getKeyPath();
          v11 = swift_task_alloc();
          *(v11 + 16) = v10;
          *(v11 + 24) = v1;
          *(v0 + 192) = v10;
          sub_24F74D33C();
          sub_24F91FD78();
        }

        v12 = *(v0 + 208);
        if (*(v12 + 24))
        {
          swift_getKeyPath();
          v13 = swift_task_alloc();
          *(v13 + 16) = v12;
          *(v13 + 24) = 0;
          *(v0 + 200) = v12;
          sub_24F74D33C();
          sub_24F91FD78();
        }

        v14 = *(v0 + 8);

        return v14();
      }
    }

    else
    {
    }
  }

  v4 = *(v0 + 73);
  v5 = *(v0 + 208);
  v6 = *(v5 + 32);
  *(v0 + 248) = v6;
  v7 = *(v5 + 40);
  *(v0 + 256) = v7;
  sub_24E615E00(v5 + 48, v0 + 32);
  *(v0 + 16) = v6;
  *(v0 + 24) = v7;
  *(v0 + 72) = v4;

  v8 = swift_task_alloc();
  *(v0 + 264) = v8;
  *v8 = v0;
  v8[1] = sub_24F74BF90;

  return sub_24F635110();
}

uint64_t sub_24F74BF90(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 272) = a1;
  *(v3 + 280) = v1;

  if (v1)
  {
    v4 = sub_24F74CCE4;
  }

  else
  {
    v4 = sub_24F74C0A4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24F74C0A4()
{
  sub_24E615E00(v0[26] + 48, (v0 + 10));
  v1 = swift_task_alloc();
  v0[36] = v1;
  *(v1 + 16) = v0 + 10;
  v2 = swift_task_alloc();
  v0[37] = v2;
  *v2 = v0;
  v2[1] = sub_24F74C1A0;

  return MEMORY[0x2822008A0](v0 + 21, 0, 0, 0x29286863746566, 0xE700000000000000, sub_24F74DEB8, v1, &type metadata for ArcadeSubscriptionMetadataRequest.MetadataResponse);
}

uint64_t sub_24F74C1A0()
{
  *(*v1 + 304) = v0;

  if (v0)
  {

    v2 = sub_24F74C6CC;
  }

  else
  {

    v2 = sub_24F74C2E8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F74C2E8()
{
  v0[39] = v0[21];
  if (qword_27F2113A8 != -1)
  {
LABEL_30:
    swift_once();
  }

  v1 = sub_24F9220D8();
  __swift_project_value_buffer(v1, qword_27F39E748);
  v2 = sub_24F9220B8();
  v3 = sub_24F92BD98();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24E5DD000, v2, v3, "Got entitlements/offerIDs", v4, 2u);
    MEMORY[0x2530542D0](v4, -1, -1);
  }

  v5 = v0[34];

  if (v5)
  {
    v6 = v0[34];
    if (v6 >> 62)
    {
      v7 = sub_24F92C738();
      if (v7)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7)
      {
LABEL_7:
        v8 = 0;
        v9 = v0[34];
        v38 = v9 & 0xFFFFFFFFFFFFFF8;
        v39 = v9 & 0xC000000000000001;
        v10 = (v0[28] + 8);
        v36 = v6;
        v37 = v0[32];
        do
        {
          if (v39)
          {
            v11 = MEMORY[0x253052270](v8, v6);
            v12 = v8 + 1;
            if (__OFADD__(v8, 1))
            {
LABEL_26:
              __break(1u);
LABEL_23:

              v32 = v40;
              goto LABEL_34;
            }
          }

          else
          {
            if (v8 >= *(v38 + 16))
            {
              __break(1u);
              goto LABEL_30;
            }

            v11 = *(v6 + 8 * v8 + 32);
            v12 = v8 + 1;
            if (__OFADD__(v8, 1))
            {
              goto LABEL_26;
            }
          }

          v41 = v12;
          if (v37)
          {
            v13 = v10;
            v15 = v0[31];
            v14 = v0[32];
            v40 = v11;
            v16 = [v11 familyID];
            v17 = [v16 stringValue];

            v18 = sub_24F92B0D8();
            v20 = v19;

            if (v18 == v15 && v14 == v20)
            {

              v10 = v13;
              v11 = v40;
            }

            else
            {
              v22 = sub_24F92CE08();

              v10 = v13;
              v11 = v40;
              if ((v22 & 1) == 0)
              {
                goto LABEL_8;
              }
            }

            v23 = [v11 expiryDate];
            if (!v23)
            {
              goto LABEL_23;
            }

            v24 = v23;
            v25 = v0[29];
            v26 = v0[27];
            sub_24F91F608();

            sub_24F91F638();
            v27 = sub_24F91F588();
            v28 = *v10;
            (*v10)(v25, v26);
            v29 = v0[30];
            v30 = v0[27];
            if (v27)
            {

              v28(v29, v30);
              v32 = v40;
              goto LABEL_34;
            }

            v31 = [v40 isInGracePeriod];
            v28(v29, v30);
            v11 = v40;
            v6 = v36;
            if (v31)
            {
              goto LABEL_23;
            }
          }

LABEL_8:

          ++v8;
        }

        while (v41 != v7);
      }
    }
  }

  v32 = 0;
LABEL_34:
  sub_24F74D57C(v32);
  sub_24F92B7F8();
  v0[40] = sub_24F92B7E8();
  v34 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F74CADC, v34, v33);
}

uint64_t sub_24F74C6CC()
{
  v19 = v0;
  sub_24F74D7F8((v0 + 2));
  sub_24F74DEC0((v0 + 10));
  v1 = v0[38];
  if (qword_27F2113A8 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E748);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = sub_24F92CFE8();
    v10 = sub_24E7620D4(v8, v9, &v18);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_24E5DD000, v4, v5, "%s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x2530542D0](v7, -1, -1);
    MEMORY[0x2530542D0](v6, -1, -1);
  }

  v11 = v0[26];
  if (*(v11 + 24))
  {
    swift_getKeyPath();
    v12 = swift_task_alloc();
    *(v12 + 16) = v11;
    *(v12 + 24) = 0;
    v0[19] = v11;
    sub_24F74D33C();
    sub_24F91FD78();

    v11 = v0[26];
  }

  if (*(v11 + 16) > 5u)
  {
  }

  else
  {
    v13 = sub_24F92CE08();

    if ((v13 & 1) == 0)
    {
      v14 = v0[26];
      swift_getKeyPath();
      v15 = swift_task_alloc();
      *(v15 + 16) = v14;
      *(v15 + 24) = 6;
      v0[18] = v14;
      sub_24F74D33C();
      sub_24F91FD78();

      goto LABEL_12;
    }
  }

  *(v11 + 16) = 6;
LABEL_12:

  v16 = v0[1];

  return v16();
}

uint64_t sub_24F74CADC()
{
  v12 = v0;
  v1 = v0[39];
  v3 = v0[31];
  v2 = v0[32];
  v4 = v0[26];

  swift_getKeyPath();
  v0[22] = v4;
  sub_24F74D33C();
  sub_24F91FD88();

  v5 = *(v4 + 24);
  v6 = v5;

  ArcadeSubscriptionState.init(arcadeEntitlement:consumedIntroOfferFamilyIds:arcadeSubscriptionFamilyId:)(v5, v1, v3, v2, v11);
  v7 = v11[0];
  if (sub_24F0CCA98(*(v4 + 16), v11[0]))
  {
    *(v4 + 16) = v7;
  }

  else
  {
    v8 = v0[26];
    swift_getKeyPath();
    v9 = swift_task_alloc();
    *(v9 + 16) = v8;
    *(v9 + 24) = v7;
    v0[23] = v8;
    sub_24F91FD78();
  }

  return MEMORY[0x2822009F8](sub_24F74CC6C, 0, 0);
}

uint64_t sub_24F74CC6C()
{
  sub_24F74D7F8(v0 + 16);
  sub_24F74DEC0(v0 + 80);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F74CCE4()
{
  v19 = v0;
  sub_24F74D7F8((v0 + 2));
  v1 = v0[35];
  if (qword_27F2113A8 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E748);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = sub_24F92CFE8();
    v10 = sub_24E7620D4(v8, v9, &v18);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_24E5DD000, v4, v5, "%s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x2530542D0](v7, -1, -1);
    MEMORY[0x2530542D0](v6, -1, -1);
  }

  v11 = v0[26];
  if (*(v11 + 24))
  {
    swift_getKeyPath();
    v12 = swift_task_alloc();
    *(v12 + 16) = v11;
    *(v12 + 24) = 0;
    v0[19] = v11;
    sub_24F74D33C();
    sub_24F91FD78();

    v11 = v0[26];
  }

  if (*(v11 + 16) > 5u)
  {
  }

  else
  {
    v13 = sub_24F92CE08();

    if ((v13 & 1) == 0)
    {
      v14 = v0[26];
      swift_getKeyPath();
      v15 = swift_task_alloc();
      *(v15 + 16) = v14;
      *(v15 + 24) = 6;
      v0[18] = v14;
      sub_24F74D33C();
      sub_24F91FD78();

      goto LABEL_12;
    }
  }

  *(v11 + 16) = 6;
LABEL_12:

  v16 = v0[1];

  return v16();
}

void ArcadeSubscription.state.getter(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_24F74D33C();
  sub_24F91FD88();

  *a1 = *(v1 + 16);
}

uint64_t ArcadeSubscription.__allocating_init(arcadeSubscriptionFamilyId:subscriptionEntitlements:)(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3[3];
  v8 = a3[4];
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a3, v7);
  v10 = sub_24F74E124(a1, a2, v9, v3, v7, v8);
  __swift_destroy_boxed_opaque_existential_1(a3);
  return v10;
}

void *ArcadeSubscription.entitlement.getter()
{
  swift_getKeyPath();
  sub_24F74D33C();
  sub_24F91FD88();

  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

void sub_24F74D250(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24F74D33C();
  sub_24F91FD88();

  *a2 = *(v3 + 16);
}

unint64_t sub_24F74D33C()
{
  result = qword_27F21FE50;
  if (!qword_27F21FE50)
  {
    type metadata accessor for ArcadeSubscription(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21FE50);
  }

  return result;
}

uint64_t type metadata accessor for ArcadeSubscription(uint64_t a1)
{
  result = qword_27F24EA98;
  if (!qword_27F24EA98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_24F74D3E0(unsigned __int8 *a1)
{
  v2 = *a1;
  if (sub_24F0CCA98(*(v1 + 16), *a1))
  {
    *(v1 + 16) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24F74D33C();
    sub_24F91FD78();
  }

  return result;
}

id sub_24F74D4C4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24F74D33C();
  sub_24F91FD88();

  v4 = *(v3 + 24);
  *a2 = v4;

  return v4;
}

void sub_24F74D54C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_24F74D57C(v1);
}

void sub_24F74D57C(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 24);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24F74D33C();
    sub_24F91FD78();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_24F74E3CC();
  v5 = v4;
  v6 = a1;
  v7 = sub_24F92C408();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 24);
LABEL_8:
  *(v2 + 24) = a1;
}

void sub_24F74D6CC(_BYTE *a1@<X8>)
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_24F92B098();
  v4 = [v2 arrayForKey_];

  if (!v4)
  {

    goto LABEL_9;
  }

  v5 = sub_24F92B5A8();

  v6 = sub_24E9E2340(v5);

  if (!v6)
  {
LABEL_9:
    *a1 = 7;
    return;
  }

  if (!v6[2])
  {

    goto LABEL_9;
  }

  v7 = v6[4];
  v8 = v6[5];

  v9 = v7;
  v10 = v8;

  ArcadeSubscriptionState.init(rawValue:)(*&v9);
}

void sub_24F74D850(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_24F74D57C(v1);
}

void sub_24F74D880()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 24);
  *(v1 + 24) = v2;
  v4 = v2;
}

uint64_t ArcadeSubscription.init(arcadeSubscriptionFamilyId:subscriptionEntitlements:)(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3[3];
  v8 = a3[4];
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a3, v7);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v10);
  v14 = sub_24F74DF14(a1, a2, v12, v3, v7, v8);
  __swift_destroy_boxed_opaque_existential_1(a3);
  return v14;
}

uint64_t sub_24F74D9C0()
{
  *(v0 + 16) = sub_24F92B7F8();
  *(v0 + 24) = sub_24F92B7E8();
  *(v0 + 40) = 1;
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_24E8FAC50;

  return ArcadeSubscription.updateStateFromEntitlements(policy:)((v0 + 40));
}

double sub_24F74DA7C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v16 - v3;
  if (qword_27F2113A8 != -1)
  {
    swift_once();
  }

  v5 = sub_24F9220D8();
  __swift_project_value_buffer(v5, qword_27F39E748);
  v6 = sub_24F9220B8();
  v7 = sub_24F92BD98();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315138;
    v10 = sub_24F92B0D8();
    v12 = sub_24E7620D4(v10, v11, &v17);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_24E5DD000, v6, v7, "Received %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x2530542D0](v9, -1, -1);
    MEMORY[0x2530542D0](v8, -1, -1);
  }

  v13 = sub_24F92B858();
  (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v1;

  sub_24EA998B8(0, 0, v4, &unk_24FA24938, v14);

  return result;
}

uint64_t sub_24F74DCB0()
{
  *(v0 + 24) = 1;
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24E614970;

  return ArcadeSubscription.updateStateFromEntitlements(policy:)((v0 + 24));
}

uint64_t ArcadeSubscription.deinit()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 48));
  v1 = OBJC_IVAR____TtC12GameStoreKit18ArcadeSubscription___observationRegistrar;
  v2 = sub_24F91FDC8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

double ArcadeSubscription.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 48));
  v1 = OBJC_IVAR____TtC12GameStoreKit18ArcadeSubscription___observationRegistrar;
  v2 = sub_24F91FDC8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_deallocClassInstance();
  return result;
}

uint64_t sub_24F74DF14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v23[-1] - v13;
  v23[3] = a5;
  v23[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v23);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a3, a5);
  *(a4 + 24) = 0;
  sub_24F91FDB8();
  *(a4 + 32) = a1;
  *(a4 + 40) = a2;
  sub_24E615E00(v23, a4 + 48);
  *(a4 + 16) = 5;
  v16 = [objc_opt_self() defaultCenter];
  [v16 addObserver:a4 selector:sel_entitlementsDidChange name:*MEMORY[0x277CEC318] object:0];

  v17 = sub_24F92B858();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  sub_24F92B7F8();

  v18 = sub_24F92B7E8();
  v19 = swift_allocObject();
  v20 = MEMORY[0x277D85700];
  v19[2] = v18;
  v19[3] = v20;
  v19[4] = a4;
  sub_24EA998B8(0, 0, v14, &unk_24FA20410, v19);

  __swift_destroy_boxed_opaque_existential_1(v23);
  return a4;
}

uint64_t sub_24F74E124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  (*(v11 + 16))(v13, a3, a5);
  return sub_24F74DF14(a1, a2, v13, v14, a5, a6);
}

uint64_t sub_24F74E230(uint64_t a1)
{
  result = sub_24F91FDC8();
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

uint64_t sub_24F74E318()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24E6541E4;

  return sub_24F74DCB0();
}

unint64_t sub_24F74E3CC()
{
  result = qword_27F23C840;
  if (!qword_27F23C840)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F23C840);
  }

  return result;
}

uint64_t sub_24F74E458(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = type metadata accessor for PlayerAvatar(0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[10];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[11];

  return v15(v16, a2, v14);
}

uint64_t sub_24F74E5F0(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for PlayerAvatar(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[10];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[11];

  return v15(v16, a2, a2, v14);
}

uint64_t type metadata accessor for ChallengesFriendComparisonChart(uint64_t a1)
{
  result = qword_27F24EAA8;
  if (!qword_27F24EAA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F74E7C0(uint64_t a1)
{
  sub_24E61C7D0(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for PlayerAvatar(319);
    if (v2 <= 0x3F)
    {
      sub_24F74E93C(319, &qword_27F24EAB8, type metadata accessor for ChallengesFriendComparisonData.WinComparison, MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        sub_24E65B038(319, &qword_27F213EA0, &qword_27F213EA8, &unk_24F93D030);
        if (v4 <= 0x3F)
        {
          sub_24E65B038(319, &qword_27F215458, &qword_27F215460, &qword_24F942C00);
          if (v5 <= 0x3F)
          {
            sub_24F74E93C(319, &qword_27F213EB0, MEMORY[0x277D21F70], MEMORY[0x277D83D88]);
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

void sub_24F74E93C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_24F74E9A0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24EB90, &qword_24FA24CB8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F752340();
  sub_24F92D128();
  LOBYTE(v12) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
  sub_24E602068(&qword_27F214040, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DB8]);
  sub_24F92CD48();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    sub_24F92CD08();
    v10 = type metadata accessor for ChallengesFriendComparisonChart(0);
    LOBYTE(v12) = 2;
    type metadata accessor for PlayerAvatar(0);
    sub_24F752560(&qword_27F218A38, type metadata accessor for PlayerAvatar, &protocol conformance descriptor for PlayerAvatar);
    sub_24F92CD48();
    LOBYTE(v12) = 3;
    sub_24F92CD48();
    v12 = *(v3 + *(v10 + 32));
    v11[15] = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24CCE8, &qword_24FA1CAF8);
    sub_24F7524C4(&qword_27F24CD10, &qword_27F24CD18, &protocol conformance descriptor for ChallengesFriendComparisonData.WinComparison, MEMORY[0x277D83948]);
    sub_24F92CD48();
    LOBYTE(v12) = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    sub_24E620EE4(&qword_27F214048, &qword_27F214050, MEMORY[0x277D21FD8], MEMORY[0x277D21D30]);
    sub_24F92CD48();
    LOBYTE(v12) = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
    sub_24E65CD0C();
    sub_24F92CD48();
    LOBYTE(v12) = 7;
    sub_24F929608();
    sub_24F752560(&qword_27F214058, MEMORY[0x277D21F70], MEMORY[0x277D21F78]);
    sub_24F92CCF8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24F74EE24@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v3 - 8);
  v40 = &v36 - v4;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v41);
  v42 = &v36 - v5;
  v6 = type metadata accessor for PlayerAvatar(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v36 - v10;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24EB80, &unk_24FA24CA8);
  v43 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v13 = &v36 - v12;
  v14 = type metadata accessor for ChallengesFriendComparisonChart(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = &v16[*(v17 + 36)];
  v52 = 0;
  v50 = 0u;
  v51 = 0u;
  *v18 = 0u;
  *(v18 + 16) = 0u;
  *(v18 + 32) = 0;
  v49 = v18;
  sub_24E61DA68(&v50, v18, qword_27F21B590, &unk_24F93BE30);
  v19 = v14[10];
  v20 = sub_24F92A6D8();
  v21 = *(*(v20 - 8) + 56);
  v47 = v19;
  v22 = v16;
  v21(&v16[v19], 1, 1, v20);
  v23 = a1[3];
  v48 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_24F752340();
  v44 = v13;
  v24 = v46;
  sub_24F92D108();
  if (v24)
  {
    v29 = v47;
    __swift_destroy_boxed_opaque_existential_1(v48);
    v27 = v22;
LABEL_4:
    sub_24E601704(v49, qword_27F24EC90, &unk_24F93C1D0);
    return sub_24E601704(v27 + v29, &qword_27F215440, &unk_24F942BD0);
  }

  v46 = v11;
  v38 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
  v53 = 0;
  sub_24E602068(&qword_27F213F30, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DC0]);
  sub_24F92CC68();
  v26 = v51;
  v27 = v22;
  *v22 = v50;
  *(v22 + 16) = v26;
  *(v22 + 32) = v52;
  LOBYTE(v50) = 1;
  v28 = sub_24F92CC28();
  v29 = v47;
  *(v22 + 40) = v28;
  *(v22 + 48) = v30;
  LOBYTE(v50) = 2;
  sub_24F752560(&qword_27F2185A0, type metadata accessor for PlayerAvatar, &protocol conformance descriptor for PlayerAvatar);
  v31 = v46;
  sub_24F92CC68();
  v37 = 0;
  sub_24F752394(v31, v22 + v14[6], type metadata accessor for PlayerAvatar);
  LOBYTE(v50) = 3;
  v33 = v37;
  v32 = v38;
  sub_24F92CC68();
  if (v33)
  {
    (*(v43 + 8))(v44, v45);
    __swift_destroy_boxed_opaque_existential_1(v48);
    sub_24E601704(v22, &qword_27F213F18, &qword_24F93BE20);

    if (!v37)
    {
      sub_24F752464(v22 + v14[6], type metadata accessor for PlayerAvatar);
    }

    goto LABEL_4;
  }

  sub_24F752394(v32, v22 + v14[7], type metadata accessor for PlayerAvatar);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24CCE8, &qword_24FA1CAF8);
  v53 = 4;
  sub_24F7524C4(&qword_27F24CD28, &qword_27F24CD30, &protocol conformance descriptor for ChallengesFriendComparisonData.WinComparison, MEMORY[0x277D83978]);
  sub_24F92CC68();
  *(v22 + v14[8]) = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
  v53 = 5;
  sub_24E620EE4(&qword_27F213F38, &qword_27F213F40, MEMORY[0x277D21FD0], MEMORY[0x277D21D38]);
  sub_24F92CC68();
  sub_24E61DA68(&v50, v49, qword_27F24EC90, &unk_24F93C1D0);
  LOBYTE(v50) = 6;
  sub_24E65CAA0();
  v34 = v42;
  sub_24F92CC68();
  sub_24E61DA68(v34, v22 + v29, &qword_27F215440, &unk_24F942BD0);
  sub_24F929608();
  LOBYTE(v50) = 7;
  sub_24F752560(&qword_27F213F48, MEMORY[0x277D21F70], MEMORY[0x277D21F88]);
  v35 = v40;
  sub_24F92CC18();
  (*(v43 + 8))(v44, v45);
  sub_24E6009C8(v35, v22 + v14[11], &qword_27F213E68, &unk_24F93BC80);
  sub_24F7523FC(v22, v39, type metadata accessor for ChallengesFriendComparisonChart);
  __swift_destroy_boxed_opaque_existential_1(v48);
  return sub_24F752464(v22, type metadata accessor for ChallengesFriendComparisonChart);
}

unint64_t sub_24F74F6EC()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x4D747865746E6F63;
  if (v1 != 6)
  {
    v3 = 0xD000000000000011;
  }

  v4 = 0x61706D6F436E6977;
  if (v1 != 4)
  {
    v4 = 0x6575676573;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000011;
  if (v1 != 2)
  {
    v5 = 0x7641646E65697266;
  }

  if (*v0)
  {
    v2 = 0x656C746974;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24F74F7F8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F752704(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F74F820(uint64_t a1)
{
  v2 = sub_24F752340();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F74F85C(uint64_t a1)
{
  v2 = sub_24F752340();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F74F898@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_24E60169C(v2 + *(a1 + 40), &v9 - v6, &qword_27F215440, &unk_24F942BD0);
  return sub_24E6009C8(v7, a2, &qword_27F215460, &qword_24F942C00);
}

uint64_t sub_24F74F9D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v30 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24EAD8, &qword_24FA24B88);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v29 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24EAE0, &unk_24FA24B90);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v28 - v17;
  *v18 = 0;
  v18[8] = 1;
  v20 = a3 & 1;
  sub_24F74FD80(a1, *&a2, v20, &v28 + *(v19 + 44) - v17);
  v31 = *(a1 + *(type metadata accessor for ChallengesFriendComparisonChart(0) + 32));
  v21 = swift_allocObject();
  *(v21 + 16) = a2;
  *(v21 + 24) = v20;

  sub_24E62AB1C(a2, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24CCE8, &qword_24FA1CAF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24EAE8, &qword_24FA24BA0);
  sub_24E602068(&qword_27F24EAF0, &qword_27F24CCE8, &qword_24FA1CAF8, MEMORY[0x277D83980]);
  sub_24F75224C();
  sub_24F752560(&qword_27F24EB10, type metadata accessor for ChallengesFriendComparisonData.WinComparison, &protocol conformance descriptor for ChallengesFriendComparisonData.WinComparison);
  sub_24F927238();
  v28 = v15;
  sub_24E60169C(v18, v15, &qword_27F24EAE0, &unk_24FA24B90);
  v22 = *(v8 + 16);
  v23 = v29;
  v22(v29, v12, v7);
  v24 = v30;
  sub_24E60169C(v15, v30, &qword_27F24EAE0, &unk_24FA24B90);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24EB18, &unk_24FA24BB8);
  v22((v24 + *(v25 + 48)), v23, v7);
  v26 = *(v8 + 8);
  v26(v12, v7);
  sub_24E601704(v18, &qword_27F24EAE0, &unk_24FA24B90);
  v26(v23, v7);
  return sub_24E601704(v28, &qword_27F24EAE0, &unk_24FA24B90);
}

uint64_t sub_24F74FD80@<X0>(uint64_t a1@<X0>, double a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v78 = a4;
  v7 = sub_24F924848();
  v73 = *(v7 - 8);
  v74 = v7;
  MEMORY[0x28223BE20](v7);
  v67 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PlayerAvatar(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = (&v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for PlayerAvatarView(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v63 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2233D0, &qword_24F958810);
  MEMORY[0x28223BE20](v18);
  v77 = &v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v71 = &v63 - v21;
  MEMORY[0x28223BE20](v22);
  v75 = &v63 - v23;
  MEMORY[0x28223BE20](v24);
  v26 = &v63 - v25;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2233C8, &unk_24F96E510);
  MEMORY[0x28223BE20](v65);
  v76 = &v63 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = &v63 - v29;
  MEMORY[0x28223BE20](v31);
  v79 = &v63 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24EB60, &qword_24FA24C80);
  MEMORY[0x28223BE20](v33 - 8);
  v72 = &v63 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v37 = &v63 - v36;
  *v37 = sub_24F9249A8();
  *(v37 + 1) = 0;
  v37[16] = 1;
  v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24EB68, &qword_24FA24C88) + 44);
  v70 = v37;
  sub_24F7505E0(a1, a2, a3 & 1, &v37[v38]);
  v39 = type metadata accessor for ChallengesFriendComparisonChart(0);
  v40 = *(v39 + 24);
  v68 = a1;
  sub_24F7523FC(a1 + v40, v11, type metadata accessor for PlayerAvatar);
  LOBYTE(v83[0]) = 7;
  v66 = v17;
  sub_24F8319B8(v11, v83, v17);
  v69 = a3;
  if (a3)
  {
    v41 = a2;
    v42 = v67;
  }

  else
  {

    sub_24F92BDC8();
    v43 = sub_24F9257A8();
    v64 = v18;
    v44 = v43;
    sub_24F921FD8();

    v42 = v67;
    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E62A5EC(*&a2, 0);
    v18 = v64;
    (*(v73 + 8))(v42, v74);
    v41 = *v83;
  }

  sub_24E6B00B4(v41);
  sub_24F927618();
  sub_24F9238C8();
  sub_24F752394(v66, v26, type metadata accessor for PlayerAvatarView);
  v45 = &v26[*(v18 + 36)];
  v46 = v81;
  *v45 = v80;
  *(v45 + 1) = v46;
  *(v45 + 2) = v82;
  v47 = sub_24F9257F8();
  sub_24E6009C8(v26, v30, &qword_27F2233D0, &qword_24F958810);
  v48 = &v30[*(v65 + 36)];
  *v48 = v47;
  *(v48 + 8) = 0u;
  *(v48 + 24) = 0u;
  v48[40] = 1;
  sub_24E6009C8(v30, v79, &qword_27F2233C8, &unk_24F96E510);
  sub_24F7523FC(v68 + *(v39 + 28), v11, type metadata accessor for PlayerAvatar);
  LOBYTE(v83[0]) = 7;
  sub_24F8319B8(v11, v83, v14);
  if (v69)
  {
    v49 = a2;
  }

  else
  {

    sub_24F92BDC8();
    v50 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E62A5EC(*&a2, 0);
    (*(v73 + 8))(v42, v74);
    v49 = *v83;
  }

  sub_24E6B00B4(v49);
  sub_24F927618();
  sub_24F9238C8();
  v51 = v71;
  sub_24F752394(v14, v71, type metadata accessor for PlayerAvatarView);
  v52 = (v51 + *(v18 + 36));
  v53 = v83[1];
  *v52 = v83[0];
  v52[1] = v53;
  v52[2] = v83[2];
  v54 = v75;
  sub_24E6009C8(v51, v75, &qword_27F2233D0, &qword_24F958810);
  v55 = v70;
  v56 = v72;
  sub_24E60169C(v70, v72, &qword_27F24EB60, &qword_24FA24C80);
  v57 = v79;
  v58 = v76;
  sub_24E60169C(v79, v76, &qword_27F2233C8, &unk_24F96E510);
  v59 = v77;
  sub_24E60169C(v54, v77, &qword_27F2233D0, &qword_24F958810);
  v60 = v78;
  sub_24E60169C(v56, v78, &qword_27F24EB60, &qword_24FA24C80);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24EB70, &unk_24FA24C90);
  sub_24E60169C(v58, v60 + *(v61 + 48), &qword_27F2233C8, &unk_24F96E510);
  sub_24E60169C(v59, v60 + *(v61 + 64), &qword_27F2233D0, &qword_24F958810);
  sub_24E601704(v54, &qword_27F2233D0, &qword_24F958810);
  sub_24E601704(v57, &qword_27F2233C8, &unk_24F96E510);
  sub_24E601704(v55, &qword_27F24EB60, &qword_24FA24C80);
  sub_24E601704(v59, &qword_27F2233D0, &qword_24F958810);
  sub_24E601704(v58, &qword_27F2233C8, &unk_24F96E510);
  return sub_24E601704(v56, &qword_27F24EB60, &qword_24FA24C80);
}

uint64_t sub_24F7505E0@<X0>(uint64_t a1@<X0>, double a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v50 = a4;
  v7 = sub_24F924848();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2128D0, &qword_24F941F30);
  v47 = *(v11 - 8);
  v48 = v11;
  MEMORY[0x28223BE20](v11);
  v46 = &v44 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245CD0, &unk_24FA01420);
  MEMORY[0x28223BE20](v13 - 8);
  v49 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v45 = &v44 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v44 - v18;
  v20 = *(a1 + 40);
  v21 = *(a1 + 48);
  v51 = v20;
  v52 = v21;
  sub_24E600AEC();

  v22 = sub_24F925E18();
  v24 = v23;
  v26 = v25;
  if (a3)
  {
    v27 = a2;
  }

  else
  {

    sub_24F92BDC8();
    v28 = sub_24F9257A8();
    v44 = v7;
    v29 = v28;
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E62A5EC(*&a2, 0);
    (*(v8 + 8))(v10, v44);
    v27 = v51;
  }

  if (sub_24E6B00B4(v27) > 3u)
  {
    sub_24F925988();
  }

  else
  {
    sub_24F9258D8();
  }

  *&v30 = COERCE_DOUBLE(sub_24F925C98());
  v32 = v31;
  v34 = v33;
  v36 = v35;

  sub_24E600B40(v22, v24, v26 & 1);

  v51 = *&v30;
  v52 = v32;
  v37 = v34 & 1;
  v53 = v34 & 1;
  v54 = v36;
  v38 = v46;
  sub_24F9268B8();
  sub_24E600B40(v30, v32, v37);

  v39 = v45;
  (*(v47 + 32))(v45, v38, v48);
  sub_24E6009C8(v39, v19, &qword_27F245CD0, &unk_24FA01420);
  v40 = v49;
  sub_24E60169C(v19, v49, &qword_27F245CD0, &unk_24FA01420);
  v41 = v50;
  sub_24E60169C(v40, v50, &qword_27F245CD0, &unk_24FA01420);
  v42 = v41 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24EB78, &qword_24FA24CA0) + 48);
  *v42 = 0;
  *(v42 + 8) = 1;
  sub_24E601704(v19, &qword_27F245CD0, &unk_24FA01420);
  return sub_24E601704(v40, &qword_27F245CD0, &unk_24FA01420);
}

uint64_t sub_24F750A04@<X0>(uint64_t a1@<X0>, double a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v84 = a4;
  v77 = sub_24F924848();
  v7 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v9 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24F924A78();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2128D0, &qword_24F941F30);
  v82 = *(v11 - 8);
  v83 = v11;
  MEMORY[0x28223BE20](v11);
  v81 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v80 = &v77 - v14;
  MEMORY[0x28223BE20](v15);
  v89 = &v77 - v16;
  MEMORY[0x28223BE20](v17);
  v88 = &v77 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24EB20, &qword_24FA24BC8);
  MEMORY[0x28223BE20](v19 - 8);
  v87 = &v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v77 - v22;
  *v23 = sub_24F9249A8();
  *(v23 + 1) = 0;
  v23[16] = 1;
  v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24EB28, &qword_24FA24BD0) + 44);
  v86 = v23;
  sub_24F751218(a1, a2, a3 & 1, &v23[v24]);
  sub_24F924A68();
  sub_24F924A58();
  v78 = type metadata accessor for ChallengesFriendComparisonData.WinComparison(0);
  v79 = a1;
  v85 = *(a1 + *(v78 + 20));
  v90 = v85;
  sub_24F924A08();
  sub_24F924A58();
  sub_24F924A98();
  v25 = sub_24F925DE8();
  v27 = v26;
  v29 = v28;
  if (a3)
  {
    v30 = a2;
  }

  else
  {

    sub_24F92BDC8();
    v31 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E62A5EC(*&a2, 0);
    (*(v7 + 8))(v9, v77);
    v30 = v90;
  }

  if (sub_24E6B00B4(v30) > 3u)
  {
    sub_24F925888();
  }

  else
  {
    sub_24F9258F8();
  }

  v32 = sub_24F925C98();
  v34 = v33;
  v36 = v35;

  sub_24E600B40(v25, v27, v29 & 1);

  v37 = *(v79 + *(v78 + 24));
  if (*&v85 >= *&v37)
  {
    v38 = sub_24F925198();
  }

  else
  {
    v38 = sub_24F9251C8();
  }

  LODWORD(v90) = v38;
  *&v39 = COERCE_DOUBLE(sub_24F925C58());
  v41 = v40;
  v43 = v42;
  v45 = v44;
  sub_24E600B40(v32, v34, v36 & 1);

  v90 = *&v39;
  v91 = v41;
  v92 = v43 & 1;
  v93 = v45;
  sub_24F9268B8();
  sub_24E600B40(v39, v41, v43 & 1);

  sub_24F924A68();
  sub_24F924A58();
  v90 = v37;
  sub_24F924A08();
  sub_24F924A58();
  sub_24F924A98();
  v46 = sub_24F925DE8();
  v48 = v47;
  v49 = v37;
  v51 = v50;
  sub_24F9258F8();
  v52 = sub_24F925C98();
  v54 = v53;
  v56 = v55;

  sub_24E600B40(v46, v48, v51 & 1);

  if (*&v49 >= *&v85)
  {
    v57 = sub_24F925198();
  }

  else
  {
    v57 = sub_24F9251C8();
  }

  LODWORD(v90) = v57;
  *&v58 = COERCE_DOUBLE(sub_24F925C58());
  v60 = v59;
  v62 = v61;
  v64 = v63;
  sub_24E600B40(v52, v54, v56 & 1);

  v90 = *&v58;
  v91 = v60;
  v92 = v62 & 1;
  v93 = v64;
  sub_24F9268B8();
  sub_24E600B40(v58, v60, v62 & 1);

  v65 = v87;
  sub_24E60169C(v86, v87, &qword_27F24EB20, &qword_24FA24BC8);
  v67 = v82;
  v66 = v83;
  v68 = *(v82 + 16);
  v69 = v80;
  v70 = v88;
  v68(v80, v88, v83);
  v71 = v81;
  v72 = v89;
  v68(v81, v89, v66);
  v73 = v84;
  sub_24E60169C(v65, v84, &qword_27F24EB20, &qword_24FA24BC8);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24EB30, &qword_24FA24BD8);
  v68((v73 + *(v74 + 48)), v69, v66);
  v68((v73 + *(v74 + 64)), v71, v66);
  v75 = *(v67 + 8);
  v75(v72, v66);
  v75(v70, v66);
  sub_24E601704(v86, &qword_27F24EB20, &qword_24FA24BC8);
  v75(v71, v66);
  v75(v69, v66);
  return sub_24E601704(v87, &qword_27F24EB20, &qword_24FA24BC8);
}

uint64_t sub_24F751218@<X0>(uint64_t a1@<X0>, double a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v58 = a2;
  v62 = a4;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24EB38, &unk_24FA24BE0);
  MEMORY[0x28223BE20](v60);
  v61 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v50 - v8;
  v10 = sub_24F924848();
  v52 = *(v10 - 8);
  v53 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for GameIcon(0);
  v14 = (v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216760, &qword_24F945460);
  MEMORY[0x28223BE20](v54);
  v56 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v50 - v19;
  MEMORY[0x28223BE20](v21);
  v55 = &v50 - v22;
  v23 = *(type metadata accessor for Game(0) + 72);
  v24 = sub_24F9289E8();
  v25 = *(v24 - 8);
  v26 = *(v25 + 16);
  v57 = a1;
  v26(v16, a1 + v23, v24);
  (*(v25 + 56))(v16, 0, 1, v24);
  v27 = v14[10];
  *&v16[v27] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2167A0, &unk_24F942EF0);
  swift_storeEnumTagMultiPayload();
  v16[v14[7]] = 1;
  v16[v14[8]] = 1;
  v16[v14[9]] = 0;
  v59 = a3;
  if (a3)
  {
    v28 = *&v58;
    v29 = v58;
    sub_24E6B00B4(v58);
  }

  else
  {
    v28 = *&v58;

    sub_24F92BDC8();
    v30 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E62A5EC(v28, 0);
    v51 = v20;
    v31 = v53;
    v32 = *(v52 + 8);
    v32(v12, v53);
    sub_24E6B00B4(*&v63);

    sub_24F92BDC8();
    v33 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E62A5EC(v28, 0);
    v32(v12, v31);
    v20 = v51;
    v29 = *&v63;
  }

  sub_24E6B00B4(v29);
  sub_24F927618();
  sub_24F9238C8();
  sub_24F752394(v16, v20, type metadata accessor for GameIcon);
  v34 = v55;
  v35 = &v20[*(v54 + 36)];
  v36 = v64;
  *v35 = v63;
  *(v35 + 1) = v36;
  *(v35 + 2) = v65;
  sub_24E6009C8(v20, v34, &qword_27F216760, &qword_24F945460);
  *v9 = sub_24F924C98();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24EB40, &qword_24FA24C28);
  sub_24F751858(v57, *&v28, v59 & 1, &v9[*(v37 + 44)]);
  v38 = sub_24F925838();
  sub_24F923318();
  v39 = &v9[*(v60 + 36)];
  *v39 = v38;
  *(v39 + 1) = v40;
  *(v39 + 2) = v41;
  *(v39 + 3) = v42;
  *(v39 + 4) = v43;
  v39[40] = 0;
  v44 = v56;
  sub_24E60169C(v34, v56, &qword_27F216760, &qword_24F945460);
  v45 = v61;
  sub_24E60169C(v9, v61, &qword_27F24EB38, &unk_24FA24BE0);
  v46 = v62;
  sub_24E60169C(v44, v62, &qword_27F216760, &qword_24F945460);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24EB48, &unk_24FA24C30);
  sub_24E60169C(v45, v46 + *(v47 + 48), &qword_27F24EB38, &unk_24FA24BE0);
  v48 = v46 + *(v47 + 64);
  *v48 = 0;
  *(v48 + 8) = 1;
  sub_24E601704(v9, &qword_27F24EB38, &unk_24FA24BE0);
  sub_24E601704(v34, &qword_27F216760, &qword_24F945460);
  sub_24E601704(v45, &qword_27F24EB38, &unk_24FA24BE0);
  return sub_24E601704(v44, &qword_27F216760, &qword_24F945460);
}

uint64_t sub_24F751858@<X0>(uint64_t a1@<X0>, double a2@<X1>, int a3@<W2>, uint64_t *a4@<X8>)
{
  LODWORD(v4) = a3;
  v85 = a4;
  v7 = sub_24F924848();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v74 = &v70[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2128D0, &qword_24F941F30);
  v81 = *(v10 - 8);
  v82 = v10;
  MEMORY[0x28223BE20](v10);
  v80 = &v70[-v11];
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217358, &qword_24F9D1F60);
  MEMORY[0x28223BE20](v79);
  v78 = &v70[-v12];
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24EB50, &qword_24FA24C40);
  MEMORY[0x28223BE20](v77);
  v84 = &v70[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v76 = &v70[-v15];
  MEMORY[0x28223BE20](v16);
  v83 = &v70[-v17];
  v18 = 0;
  v86 = 0;
  v87 = 0;
  v19 = 0;
  if (*(a1 + 105) == 1)
  {
    v71 = v4;
    v72 = v8;
    v73 = v7;
    v75 = *&a2;
    if (qword_27F211498 != -1)
    {
      swift_once();
    }

    v88 = xmmword_27F39E9F8;
    sub_24E600AEC();

    v20 = sub_24F925E18();
    v22 = v21;
    v24 = v23;
    sub_24F925A08();
    v25 = sub_24F925C98();
    v4 = v26;
    v28 = v27;

    sub_24E600B40(v20, v22, v24 & 1);

    sub_24F925938();
    v29 = sub_24F925B78();
    v31 = v30;
    v33 = v32;
    sub_24E600B40(v25, v4, v28 & 1);

    LODWORD(v88) = sub_24F9251C8();
    v18 = sub_24F925C58();
    v35 = v34;
    LOBYTE(v4) = v36;
    v38 = v37;
    sub_24E600B40(v29, v31, v33 & 1);

    v19 = v4 & 1;
    v87 = v35;
    sub_24E5FD138(v18, v35, v4 & 1);
    v86 = v38;

    a2 = *&v75;
    v7 = v73;
    v8 = v72;
    LOBYTE(v4) = v71;
  }

  if (*(a1 + 56))
  {
    v39 = *(a1 + 48);
    v40 = *(a1 + 56);
  }

  else
  {
    v39 = *(a1 + 32);
  }

  *&v88 = v39;
  *(&v88 + 1) = v40;
  sub_24E600AEC();

  v41 = sub_24F925E18();
  v43 = v42;
  v45 = v44;
  v75 = v18;
  if (v4)
  {
    v46 = a2;
  }

  else
  {

    sub_24F92BDC8();
    v47 = sub_24F9257A8();
    sub_24F921FD8();

    v48 = v74;
    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E62A5EC(*&a2, 0);
    (*(v8 + 8))(v48, v7);
    v46 = *&v88;
  }

  if (sub_24E6B00B4(v46) > 3u)
  {
    sub_24F9258D8();
  }

  else
  {
    sub_24F925898();
  }

  v49 = sub_24F925C98();
  v51 = v50;
  v53 = v52;
  v55 = v54;

  sub_24E600B40(v41, v43, v45 & 1);

  *&v88 = v49;
  *(&v88 + 1) = v51;
  v89 = v53 & 1;
  v90 = v55;
  v56 = v80;
  sub_24F9268B8();
  sub_24E600B40(v49, v51, v53 & 1);

  v57 = sub_24F925198();
  v58 = v78;
  (*(v81 + 32))(v78, v56, v82);
  *(v58 + *(v79 + 36)) = v57;
  KeyPath = swift_getKeyPath();
  v60 = v76;
  sub_24E6009C8(v58, v76, &qword_27F217358, &qword_24F9D1F60);
  v61 = &v60[*(v77 + 36)];
  *v61 = KeyPath;
  *(v61 + 1) = 2;
  v61[16] = 0;
  v62 = v83;
  sub_24E6009C8(v60, v83, &qword_27F24EB50, &qword_24FA24C40);
  v63 = v84;
  sub_24E60169C(v62, v84, &qword_27F24EB50, &qword_24FA24C40);
  v64 = v85;
  v65 = v86;
  v66 = v75;
  v67 = v87;
  *v85 = v75;
  v64[1] = v67;
  v64[2] = v19;
  v64[3] = v65;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24EB58, &qword_24FA24C78);
  sub_24E60169C(v63, v64 + *(v68 + 48), &qword_27F24EB50, &qword_24FA24C40);
  sub_24E65D2B4(v66, v67, v19, v65);
  sub_24E65D2F8(v66, v67, v19, v65);
  sub_24E601704(v62, &qword_27F24EB50, &qword_24FA24C40);
  sub_24E601704(v63, &qword_27F24EB50, &qword_24FA24C40);
  return sub_24E65D2F8(v66, v67, v19, v65);
}

uint64_t sub_24F751F78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = *(v2 + 8);
  *a2 = sub_24F927618();
  *(a2 + 8) = v7;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  *(a2 + 32) = 0x4038000000000000;
  *(a2 + 40) = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24EAD0, &qword_24FA24B80);
  return sub_24F74F9D8(a1, v5, v6, a2 + *(v8 + 44));
}

uint64_t sub_24F751FF8(uint64_t a1)
{
  sub_24E62AB1C(*v1, *(v1 + 8));
  sub_24F47DB80();
  return sub_24F9218E8();
}

unint64_t sub_24F7520A4()
{
  result = qword_27F24EAC8;
  if (!qword_27F24EAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24EAC8);
  }

  return result;
}

uint64_t sub_24F7521A4()
{
  sub_24E62A5EC(*(v0 + 16), *(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_24F7521E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  *a2 = 0;
  *(a2 + 8) = 1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24EB08, &unk_24FA24BA8);
  return sub_24F750A04(a1, v5, v6, a2 + *(v7 + 36));
}

unint64_t sub_24F75224C()
{
  result = qword_27F24EAF8;
  if (!qword_27F24EAF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24EAE8, &qword_24FA24BA0);
    sub_24E602068(&qword_27F24EB00, &qword_27F24EB08, &unk_24FA24BA8, MEMORY[0x277CDF0A0]);
    sub_24E602068(&unk_27F2129E0, &unk_27F22E040, &unk_24F940690, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24EAF8);
  }

  return result;
}

unint64_t sub_24F752340()
{
  result = qword_27F24EB88;
  if (!qword_27F24EB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24EB88);
  }

  return result;
}

uint64_t sub_24F752394(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F7523FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F752464(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F7524C4(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24CCE8, &qword_24FA1CAF8);
    sub_24F752560(a2, type metadata accessor for ChallengesFriendComparisonData.WinComparison, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24F752560(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24F752600()
{
  result = qword_27F24EBA8;
  if (!qword_27F24EBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24EBA8);
  }

  return result;
}

unint64_t sub_24F752658()
{
  result = qword_27F24EBB0;
  if (!qword_27F24EBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24EBB0);
  }

  return result;
}

unint64_t sub_24F7526B0()
{
  result = qword_27F24EBB8;
  if (!qword_27F24EBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24EBB8);
  }

  return result;
}

uint64_t sub_24F752704(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA464C0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7641646E65697266 && a2 == 0xEC00000072617461 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x61706D6F436E6977 && a2 == 0xEE00736E6F736972 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x4D747865746E6F63 && a2 == 0xEB00000000756E65 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_24F7529BC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Player(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FE0, &unk_24F959350);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 44);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_24F752B00(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for Player(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FE0, &unk_24F959350);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 44);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for ActiveChallengesShelfConstructionIntent(uint64_t a1)
{
  result = qword_27F24EBC0;
  if (!qword_27F24EBC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F752C7C(uint64_t a1)
{
  sub_24F37A0E4(319, &qword_27F240838, type metadata accessor for Challenge, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_24E8EF898(319, &qword_27F240840, &qword_27F231BE8, &qword_24F9A7620);
    if (v2 <= 0x3F)
    {
      sub_24E8EF898(319, &qword_27F240848, &qword_27F231BF8, qword_24FA24E10);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Player(319);
        if (v4 <= 0x3F)
        {
          sub_24F37A0E4(319, &qword_27F21ADC8, type metadata accessor for Game, MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_24F752DF4@<X0>(unint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88, &unk_24F93A430);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F979FB0;
  *(inited + 32) = 0x676E656C6C616863;
  *(inited + 40) = 0xEA00000000007365;
  v3 = *v1;
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AEE0, &qword_24F9598D0);
  v4 = sub_24F753218();
  *(inited + 48) = v3;
  *(inited + 80) = v4;
  *(inited + 88) = 0xD000000000000013;
  *(inited + 96) = 0x800000024FA465A0;
  v5 = v1[1];
  *(inited + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24EBD0, &qword_24FA24EA0);
  v6 = sub_24F7532CC(&qword_27F24EBD8, &qword_27F24EBD0, &qword_24FA24EA0, sub_24EE56FD0);
  *(inited + 104) = v5;
  *(inited + 136) = v6;
  *(inited + 144) = 0xD00000000000001BLL;
  *(inited + 152) = 0x800000024FA5FBA0;
  v7 = v1[2];
  *(inited + 184) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24EBE0, &qword_24FA24EA8);
  v8 = sub_24F7532CC(&qword_27F24EBE8, &qword_27F24EBE0, &qword_24FA24EA8, sub_24EE57084);
  *(inited + 160) = v7;
  *(inited + 192) = v8;
  *(inited + 200) = 0x616C506C61636F6CLL;
  *(inited + 208) = 0xEB00000000726579;
  active = type metadata accessor for ActiveChallengesShelfConstructionIntent(0);
  v10 = active[7];
  *(inited + 240) = type metadata accessor for Player(0);
  *(inited + 248) = sub_24F753348(&qword_27F215388, type metadata accessor for Player, &protocol conformance descriptor for Player);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 216));
  sub_24E70D960(v1 + v10, boxed_opaque_existential_1);
  *(inited + 256) = 0x444965676170;
  *(inited + 264) = 0xE600000000000000;
  v12 = (v1 + active[8]);
  v13 = *v12;
  v14 = v12[1];
  v15 = MEMORY[0x277D837D0];
  v16 = MEMORY[0x277D22580];
  *(inited + 296) = MEMORY[0x277D837D0];
  *(inited + 304) = v16;
  *(inited + 272) = v13;
  *(inited + 280) = v14;
  *(inited + 312) = 0x5479616C70736964;
  *(inited + 320) = 0xEB00000000657079;
  v17 = *(v1 + active[9]);
  *(inited + 352) = &type metadata for ChallengesShelfDisplayType;
  v18 = sub_24E7C96C0();
  *(inited + 328) = v17;
  *(inited + 360) = v18;
  strcpy((inited + 368), "displayContext");
  *(inited + 383) = -18;
  v19 = 0x65676F5479616C70;
  if (!*(v1 + active[10]))
  {
    v19 = 0x676E656C6C616863;
  }

  v20 = 0xEC00000062754865;
  if (*(v1 + active[10]))
  {
    v20 = 0xEC00000072656874;
  }

  *(inited + 408) = v15;
  *(inited + 416) = v16;
  *(inited + 384) = v19;
  *(inited + 392) = v20;
  *(inited + 424) = 1701667175;
  *(inited + 432) = 0xE400000000000000;
  v21 = active[11];
  *(inited + 464) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FE0, &unk_24F959350);
  *(inited + 472) = sub_24E736C00();
  v22 = __swift_allocate_boxed_opaque_existential_1((inited + 440));
  sub_24E736938(v1 + v21, v22);

  v23 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0, &unk_24F93A440);
  swift_arrayDestroy();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v23;
  return result;
}

unint64_t sub_24F753218()
{
  result = qword_27F21AEE8;
  if (!qword_27F21AEE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21AEE0, &qword_24F9598D0);
    sub_24F753348(&qword_27F21AEF0, type metadata accessor for Challenge, &protocol conformance descriptor for Challenge);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21AEE8);
  }

  return result;
}

uint64_t sub_24F7532CC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24F753348(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t LeaderboardsCountDataIntent.gameBundleID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t LeaderboardsCountDataIntent.leaderboardSetID.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t LeaderboardsCountDataIntent.playerID.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

unint64_t sub_24F75343C()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0x4449726579616C70;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x646E7542656D6167;
  }
}

uint64_t sub_24F7534A4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F753B4C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F7534CC(uint64_t a1)
{
  v2 = sub_24F753708();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F753508(uint64_t a1)
{
  v2 = sub_24F753708();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LeaderboardsCountDataIntent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24EBF0, &qword_24FA24ED0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v11 - v5;
  v7 = v1[2];
  v11[3] = v1[3];
  v11[4] = v7;
  v8 = v1[4];
  v11[1] = v1[5];
  v11[2] = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F753708();
  sub_24F92D128();
  v14 = 0;
  v9 = v11[5];
  sub_24F92CD08();
  if (v9)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v13 = 1;
  sub_24F92CCA8();
  v12 = 2;
  sub_24F92CD08();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_24F753708()
{
  result = qword_27F24EBF8;
  if (!qword_27F24EBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24EBF8);
  }

  return result;
}

uint64_t LeaderboardsCountDataIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24EC00, &qword_24FA24ED8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F753708();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = 0;
  v9 = sub_24F92CC28();
  v11 = v10;
  v22 = v9;
  v24 = 1;
  v20 = sub_24F92CBC8();
  v21 = v12;
  v23 = 2;
  v13 = sub_24F92CC28();
  v15 = v14;
  v16 = v13;
  (*(v6 + 8))(v8, v5);
  v17 = v21;
  *a2 = v22;
  a2[1] = v11;
  a2[2] = v20;
  a2[3] = v17;
  a2[4] = v16;
  a2[5] = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_24F753A48()
{
  result = qword_27F24EC08;
  if (!qword_27F24EC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24EC08);
  }

  return result;
}

unint64_t sub_24F753AA0()
{
  result = qword_27F24EC10;
  if (!qword_27F24EC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24EC10);
  }

  return result;
}

unint64_t sub_24F753AF8()
{
  result = qword_27F24EC18;
  if (!qword_27F24EC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24EC18);
  }

  return result;
}

uint64_t sub_24F753B4C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x646E7542656D6167 && a2 == 0xEC0000004449656CLL;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024FA4D4E0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4449726579616C70 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_24F753C94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24F753DE4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for ComponentGrid(uint64_t a1)
{
  result = qword_27F24EC20;
  if (!qword_27F24EC20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F753F6C(uint64_t a1)
{
  sub_24E61C7D0(319);
  if (v1 <= 0x3F)
  {
    sub_24E65B038(319, &qword_27F213EA0, &qword_27F213EA8, &unk_24F93D030);
    if (v2 <= 0x3F)
    {
      sub_24E65B038(319, &qword_27F215458, &qword_27F215460, &qword_24F942C00);
      if (v3 <= 0x3F)
      {
        sub_24E61C938(319);
        if (v4 <= 0x3F)
        {
          sub_24E65B038(319, &qword_27F21F938, &qword_27F21BE90, &qword_24F9538B0);
          if (v5 <= 0x3F)
          {
            sub_24F7540A8();
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

void sub_24F7540A8()
{
  if (!qword_27F24EC30)
  {
    v0 = sub_24F92C4A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F24EC30);
    }
  }
}

uint64_t sub_24F7540F8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24EC60, &qword_24FA253D0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F7553FC();
  sub_24F92D128();
  LOBYTE(v12) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
  sub_24E602068(&qword_27F214040, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DB8]);
  sub_24F92CD48();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    sub_24E620EE4(&qword_27F214048, &qword_27F214050, MEMORY[0x277D21FD8], MEMORY[0x277D21D30]);
    sub_24F92CD48();
    v9 = type metadata accessor for ComponentGrid(0);
    LOBYTE(v12) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
    sub_24E65CD0C();
    sub_24F92CD48();
    LOBYTE(v12) = 3;
    sub_24F929608();
    sub_24F7555B4(&qword_27F214058, MEMORY[0x277D21F70], MEMORY[0x277D21F78]);
    sub_24F92CCF8();
    v12 = *(v3 + *(v9 + 32));
    HIBYTE(v11) = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F8A0, &unk_24F9608F0);
    sub_24ECF153C(&qword_27F21F8A8, &qword_27F21F8B0, MEMORY[0x277D21F20], MEMORY[0x277D21D30]);
    sub_24F92CD48();
    LOBYTE(v12) = *(v3 + *(v9 + 36));
    HIBYTE(v11) = 5;
    sub_24F755508();
    sub_24F92CCF8();
    LOBYTE(v12) = 6;
    sub_24F92CD18();
    LOBYTE(v12) = 7;
    sub_24F92CD18();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24F754504@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v3 - 8);
  v37 = &v35 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v5);
  v7 = &v35 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24EC48, &qword_24FA253C8);
  v9 = *(v8 - 8);
  v38 = v8;
  v39 = v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v35 - v10;
  v12 = type metadata accessor for ComponentGrid(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v14 + 40) = 0u;
  v49 = 0;
  v47 = 0u;
  v48 = 0u;
  *(v14 + 56) = 0u;
  *(v14 + 9) = 0;
  v44 = v14 + 40;
  sub_24E61DA68(&v47, (v14 + 40), qword_27F21B590, &unk_24F93BE30);
  v15 = v12[6];
  v16 = sub_24F92A6D8();
  v17 = *(*(v16 - 8) + 56);
  v43 = v15;
  v17(&v14[v15], 1, 1, v16);
  v18 = v12[7];
  v19 = sub_24F929608();
  v20 = *(*(v19 - 8) + 56);
  v45 = v18;
  v20(&v14[v18], 1, 1, v19);
  v40 = v12;
  v21 = v12[9];
  v14[v21] = 10;
  v22 = a1[3];
  v46 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_24F7553FC();
  v41 = v11;
  v23 = v42;
  sub_24F92D108();
  if (v23)
  {
    v26 = v43;
    v25 = v44;
    __swift_destroy_boxed_opaque_existential_1(v46);
    v27 = v45;
    sub_24E601704(v25, qword_27F24EC90, &unk_24F93C1D0);
    sub_24E601704(&v14[v26], &qword_27F215440, &unk_24F942BD0);
    return sub_24E601704(&v14[v27], &qword_27F213E68, &unk_24F93BC80);
  }

  else
  {
    v42 = v19;
    v35 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
    v50 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DC0]);
    v24 = v38;
    sub_24F92CC68();
    v28 = v48;
    *v14 = v47;
    *(v14 + 1) = v28;
    *(v14 + 4) = v49;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    v50 = 1;
    sub_24E620EE4(&qword_27F213F38, &qword_27F213F40, MEMORY[0x277D21FD0], MEMORY[0x277D21D38]);
    sub_24F92CC68();
    v29 = v43;
    sub_24E61DA68(&v47, v44, qword_27F24EC90, &unk_24F93C1D0);
    LOBYTE(v47) = 2;
    sub_24E65CAA0();
    v30 = v7;
    sub_24F92CC68();
    v31 = v39;
    sub_24E61DA68(v30, &v14[v29], &qword_27F215440, &unk_24F942BD0);
    LOBYTE(v47) = 3;
    sub_24F7555B4(&qword_27F213F48, MEMORY[0x277D21F70], MEMORY[0x277D21F88]);
    v32 = v37;
    sub_24F92CC18();
    sub_24E61DA68(v32, &v14[v45], &qword_27F213E68, &unk_24F93BC80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F8A0, &unk_24F9608F0);
    v50 = 4;
    sub_24ECF153C(&qword_27F21F8D0, &qword_27F21F8D8, MEMORY[0x277D21F18], MEMORY[0x277D21D38]);
    v33 = v41;
    sub_24F92CC68();
    *&v14[v40[8]] = v47;
    v50 = 5;
    sub_24F755450();
    sub_24F92CC18();
    v14[v35] = v47;
    LOBYTE(v47) = 6;
    v14[v40[10]] = sub_24F92CC38() & 1;
    LOBYTE(v47) = 7;
    LOBYTE(v32) = sub_24F92CC38();
    (*(v31 + 8))(v33, v24);
    v14[v40[11]] = v32 & 1;
    sub_24F7554A4(v14, v36);
    __swift_destroy_boxed_opaque_existential_1(v46);
    return sub_24F18AAAC(v14);
  }
}

uint64_t sub_24F754CB0()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0xD000000000000013;
    if (v1 != 6)
    {
      v5 = 0xD000000000000012;
    }

    v6 = 0xD000000000000017;
    if (v1 == 4)
    {
      v6 = 0x736D657469;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 25705;
    v3 = 0x4D747865746E6F63;
    if (v1 != 2)
    {
      v3 = 0xD000000000000011;
    }

    if (*v0)
    {
      v2 = 0x6575676573;
    }

    if (*v0 <= 1u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t sub_24F754DA8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F755704(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F754DD0(uint64_t a1)
{
  v2 = sub_24F7553FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F754E0C(uint64_t a1)
{
  v2 = sub_24F7553FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F754E48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_24E60169C(v2 + *(a1 + 24), &v9 - v6, &qword_27F215440, &unk_24F942BD0);
  return sub_24E68039C(v7, a2);
}

double sub_24F754F78@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = type metadata accessor for ComponentGridView(0);
  MEMORY[0x28223BE20](v3);
  v5 = (&v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for ComponentGrid(0);
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = *(a1 + v6[8]);
  if (*(a1 + v6[9]) != 10)
  {
    v27 = *(a1 + v6[9]);
    sub_24E846150(v28);
    v7 = v28[0];
    v8 = v28[1];
    v9 = v28[2];
    v10 = v28[3];
    v11 = v28[4];
  }

  v13 = *(a1 + v6[11]);
  v24 = *(a1 + v6[10]);
  v25 = v13;
  v14 = v3[6];
  v15 = v8;
  *(v5 + v14) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221988, &qword_24FA3CD60);
  swift_storeEnumTagMultiPayload();
  v16 = v5 + v3[7];
  *v16 = swift_getKeyPath();
  v16[8] = 0;
  v17 = v5 + v3[8];
  *v17 = swift_getKeyPath();
  v17[8] = 0;
  v18 = v5 + v3[9];
  *v18 = swift_getKeyPath();
  *(v18 + 4) = 0;
  v19 = v3[10];
  *(v5 + v19) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0, &qword_24F9407C0);
  swift_storeEnumTagMultiPayload();
  v20 = v3[11];
  *(v5 + v20) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v21 = v3[12];
  *(v5 + v21) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
  swift_storeEnumTagMultiPayload();
  *v5 = v12;
  v5[1] = v7;
  v5[2] = v15;
  v5[3] = v9;
  v5[4] = v10;
  v5[5] = v11;
  v22 = v25;
  *(v5 + v3[13]) = v24;
  *(v5 + v3[14]) = v22;
  sub_24F755398(v5, v26);

  return result;
}

uint64_t sub_24F7551D0(uint64_t a1)
{
  sub_24F47D694();

  return sub_24F9218E8();
}

unint64_t sub_24F755260()
{
  result = qword_27F24EC40;
  if (!qword_27F24EC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24EC40);
  }

  return result;
}

uint64_t sub_24F755398(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ComponentGridView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24F7553FC()
{
  result = qword_27F24EC50;
  if (!qword_27F24EC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24EC50);
  }

  return result;
}

unint64_t sub_24F755450()
{
  result = qword_27F24EC58;
  if (!qword_27F24EC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24EC58);
  }

  return result;
}

uint64_t sub_24F7554A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ComponentGrid(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24F755508()
{
  result = qword_27F24EC68;
  if (!qword_27F24EC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24EC68);
  }

  return result;
}

uint64_t sub_24F7555B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24F755600()
{
  result = qword_27F24EC78;
  if (!qword_27F24EC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24EC78);
  }

  return result;
}

unint64_t sub_24F755658()
{
  result = qword_27F24EC80;
  if (!qword_27F24EC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24EC80);
  }

  return result;
}

unint64_t sub_24F7556B0()
{
  result = qword_27F24EC88;
  if (!qword_27F24EC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24EC88);
  }

  return result;
}

uint64_t sub_24F755704(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4D747865746E6F63 && a2 == 0xEB00000000756E65 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x736D657469 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000017 && 0x800000024FA7D200 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000013 && 0x800000024FA7D220 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024FA7D240 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

void GamesSignInActionImplementation.init(hostViewController:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  swift_unknownObjectWeakInit();
  *(a3 + 8) = [objc_allocWithZone(type metadata accessor for GamesSignInActionImplementation.Coordinator(0 a2];
  swift_unknownObjectWeakAssign();
}

uint64_t GamesSignInActionImplementation.perform(_:asPartOf:)(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v32 - v9;
  Strong = swift_unknownObjectWeakLoadStrong();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510, &unk_24F93C690);
  if (Strong)
  {
    v35 = Strong;
    v36 = v10;
    v14 = sub_24F92A9E8();
    v15 = *(v3 + 8);
    v16 = *(a3 - 8);
    v34 = *(v16 + 16);
    v34(v37, v4, a3);
    sub_24F757A70(v37);
    *(v15 + qword_27F24ED28) = v14;

    *(v15 + qword_27F24ED30) = a2;

    sub_24E60169C((a1 + 8), v37, qword_27F24EC90, &unk_24F93C1D0);
    sub_24F757BD0(v37);
    if (*a1 == 1)
    {
      v33 = a2;
      v17 = *MEMORY[0x277CED1C0];
      v18 = sub_24E61AA84(0, 1, 1, MEMORY[0x277D84F90]);
      v20 = v18[2];
      v19 = v18[3];
      if (v20 >= v19 >> 1)
      {
        v18 = sub_24E61AA84((v19 > 1), v20 + 1, 1, v18);
      }

      v18[2] = v20 + 1;
      v18[v20 + 4] = v17;
      a2 = v33;
    }

    else
    {
      v18 = MEMORY[0x277D84F90];
    }

    if (a1[1] == 1)
    {
      v23 = *MEMORY[0x277CED1B0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_24E61AA84(0, v18[2] + 1, 1, v18);
      }

      v25 = v18[2];
      v24 = v18[3];
      if (v25 >= v24 >> 1)
      {
        v18 = sub_24E61AA84((v24 > 1), v25 + 1, 1, v18);
      }

      v18[2] = v25 + 1;
      v18[v25 + 4] = v23;
    }

    v26 = sub_24F92B858();
    v27 = v36;
    (*(*(v26 - 8) + 56))(v36, 1, 1, v26);
    v34(v37, v4, a3);
    sub_24F92B7F8();

    v28 = v35;
    v29 = sub_24F92B7E8();
    v30 = swift_allocObject();
    v31 = MEMORY[0x277D85700];
    v30[2] = v29;
    v30[3] = v31;
    v30[4] = *(a3 + 16);
    v30[5] = a2;
    v30[6] = v14;
    v30[7] = v18;
    (*(v16 + 32))(v30 + 8, v37, a3);
    v30[10] = v28;
    sub_24F1D3DA4(0, 0, v27, &unk_24FA25500, v30);

    return v14;
  }

  else
  {
    type metadata accessor for GamesSignInActionImplementation.SignInError(0, *(a3 + 16), v12, v13);
    swift_getWitnessTable();
    swift_allocError();
    *v21 = 1;
    *(v21 + 8) = 2;
    return sub_24F92A978();
  }
}

uint64_t sub_24F755E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[24] = a8;
  v8[25] = v13;
  v8[22] = a6;
  v8[23] = a7;
  v8[20] = a4;
  v8[21] = a5;
  v8[26] = sub_24F92B7F8();
  v8[27] = sub_24F92B7E8();
  v9 = type metadata accessor for NetworkConnectionMonitor(0);
  v10 = swift_task_alloc();
  v8[28] = v10;
  *v10 = v8;
  v10[1] = sub_24F755F2C;

  return MEMORY[0x28217F228](v8 + 18, v9, v9);
}

uint64_t sub_24F755F2C()
{
  v2 = *v1;
  *(*v1 + 232) = v0;

  v3 = sub_24F92B778();
  if (v0)
  {
    v5 = sub_24F75636C;
  }

  else
  {
    *(v2 + 240) = v3;
    *(v2 + 248) = v4;
    v5 = sub_24F756090;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_24F756090()
{
  v1 = v0[18];
  swift_getKeyPath();
  v0[19] = v1;
  sub_24F758C24(&unk_27F24EEA0, type metadata accessor for NetworkConnectionMonitor, &protocol conformance descriptor for NetworkConnectionMonitor);
  sub_24F91FD88();

  v2 = *(v1 + 16);

  if (v2 == 2)
  {
    v3 = v0[25];

    type metadata accessor for GamesSignInActionImplementation.SignInError(0, v3, v4, v5);
    swift_getWitnessTable();
    v6 = swift_allocError();
    *v7 = 0;
    *(v7 + 8) = 2;
    sub_24F92A9A8();

    v8 = v0[1];

    return v8();
  }

  else
  {
    v11 = v0[23];
    v10 = v0[24];
    v12 = [objc_allocWithZone(MEMORY[0x277CECAC8]) init];
    v0[32] = v12;
    type metadata accessor for AIDAServiceType(0);
    v13 = sub_24F92B588();
    [v12 setServiceTypes_];

    [v12 setDelegate_];
    [v12 _setShouldForceOperation_];
    v0[2] = v0;
    v0[7] = v0 + 34;
    v0[3] = sub_24F7563D0;
    v14 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B628, &qword_24F9516F8);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_24F7567B4;
    v0[13] = &block_descriptor_21_1;
    v0[14] = v14;
    [v12 prepareInViewController:v10 completion:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }
}

uint64_t sub_24F75636C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F7563D0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 264) = v2;
  v3 = *(v1 + 248);
  v4 = *(v1 + 240);
  if (v2)
  {
    v5 = sub_24F7565C0;
  }

  else
  {
    v5 = sub_24F756500;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24F756500()
{

  v1 = *(v0 + 272);
  v2 = *(v0 + 256);
  v4 = *(v0 + 160);
  v3 = *(v0 + 168);
  v7 = type metadata accessor for GamesSignInActionImplementation(0, *(v0 + 200), v5, v6);
  sub_24F75688C(v2, v1, v4, 0, v3, v7);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_24F7565C0()
{

  swift_willThrow();
  if (qword_27F211430 != -1)
  {
    swift_once();
  }

  v1 = v0[33];
  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E8E0);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[33];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_24E5DD000, v4, v5, "Sign in UI preparation failed: %@", v7, 0xCu);
    sub_24E601704(v8, &qword_27F227B20, &qword_24F944D30);
    MEMORY[0x2530542D0](v8, -1, -1);
    MEMORY[0x2530542D0](v7, -1, -1);
  }

  v11 = v0[33];

  v12 = v11;
  v13 = v0[32];
  v15 = v0[20];
  v14 = v0[21];
  v18 = type metadata accessor for GamesSignInActionImplementation(0, v0[25], v16, v17);
  sub_24F75688C(v13, 0, v15, v11, v14, v18);

  v19 = v0[1];

  return v19();
}

uint64_t sub_24F7567B4(uint64_t a1, char a2, void *a3)
{
  sub_24F928FD8();
  v6 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F228600, &qword_24F93B7C0);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x282200958](v6, v7);
  }

  else
  {
    **(*(v6 + 64) + 40) = a2;

    return MEMORY[0x282200950](v6);
  }
}

void sub_24F75688C(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    type metadata accessor for GamesSignInActionImplementation.SignInError(0, *(a6 + 16), v13, v14);
    swift_getWitnessTable();
    v16 = swift_allocError();
    *v17 = 1;
    *(v17 + 8) = 2;
    sub_24F92A9A8();
    v15 = v16;

    goto LABEL_5;
  }

  v28 = Strong;
  if (a2)
  {
    [Strong presentViewController:a1 animated:1 completion:0];
    v15 = v28;

LABEL_5:

    return;
  }

  if (a4)
  {
    *&v30[0] = a4;
    v18 = a4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F228600, &qword_24F93B7C0);
    sub_24EC51A9C();
    if (swift_dynamicCast())
    {
      a4 = v29;
      if (sub_24F756BE4())
      {
        if (qword_27F211430 != -1)
        {
          swift_once();
        }

        v19 = sub_24F9220D8();
        __swift_project_value_buffer(v19, qword_27F39E8E0);
        v20 = v29;
        v21 = sub_24F9220B8();
        v22 = sub_24F92BDB8();

        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          v24 = swift_slowAlloc();
          *v23 = 138412290;
          *(v23 + 4) = v20;
          *v24 = v20;
          v25 = v20;
          _os_log_impl(&dword_24E5DD000, v21, v22, "handleSignInPreparationComplete: User cancelled sign in, reason: %@", v23, 0xCu);
          sub_24E601704(v24, &qword_27F227B20, &qword_24F944D30);
          MEMORY[0x2530542D0](v24, -1, -1);
          MEMORY[0x2530542D0](v23, -1, -1);
        }

        else
        {
        }

        a4 = 2;
        v26 = 2;
      }

      else
      {
        v27 = v29;
        v26 = 0;
      }
    }

    else
    {
      a4 = 0;
      v26 = 255;
    }
  }

  else
  {
    v26 = 255;
  }

  v31 = 0;
  memset(v30, 0, sizeof(v30));
  sub_24F756D8C(a1, a3, a4, v26, a5, v30, a6);

  sub_24F758C08(a4, v26);
  sub_24F758C08(a4, v26);
  sub_24E601704(v30, qword_27F21B590, &unk_24F93BE30);
}

uint64_t sub_24F756BE4()
{
  v1 = [v0 domain];
  v2 = sub_24F92B0D8();
  v4 = v3;

  v5 = [v0 code];
  if (sub_24F92B0D8() == v2 && v6 == v4)
  {

    if (v5 == 2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v8 = sub_24F92CE08();

    if ((v8 & 1) != 0 && v5 == 2)
    {
      goto LABEL_17;
    }
  }

  if (sub_24F92B0D8() == v2 && v9 == v4)
  {
  }

  else
  {
    v11 = sub_24F92CE08();

    if ((v11 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  if (v5 == -7003)
  {
LABEL_17:

    return 1;
  }

LABEL_19:
  if (sub_24F92B0D8() == v2 && v13 == v4)
  {

    if (v5 == -1)
    {
      return 1;
    }
  }

  else
  {
    v14 = sub_24F92CE08();

    if ((v14 & 1) != 0 && v5 == -1)
    {
      return 1;
    }
  }

  return 0;
}

void sub_24F756D8C(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a1)
  {
    v10 = a4;
    sub_24E60169C(a6, v21, qword_27F21B590, &unk_24F93BE30);
    v14 = *(a7 - 8);
    (*(v14 + 16))(v20, v7, a7);
    v15 = swift_allocObject();
    *(v15 + 16) = *(a7 + 16);
    *(v15 + 24) = a3;
    *(v15 + 32) = v10;
    *(v15 + 40) = a5;
    v16 = v21[1];
    *(v15 + 48) = v21[0];
    *(v15 + 64) = v16;
    *(v15 + 80) = v22;
    *(v15 + 88) = a2;
    (*(v14 + 32))(v15 + 96, v20, a7);
    aBlock[4] = sub_24F758A88;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24EAF8248;
    aBlock[3] = &block_descriptor_175;
    v17 = _Block_copy(aBlock);
    sub_24F758ABC(a3, v10, v18);

    [a1 dismissViewControllerAnimated:1 completion:v17];
    _Block_release(v17);
  }
}

void sub_24F756F4C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v69 = a7;
  v11 = a2;
  v13 = ~a2;
  v14 = sub_24F928AE8();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v63 - v19;
  if (v13)
  {
    sub_24F758AD0(a1, v11);
    if (qword_27F211430 != -1)
    {
      swift_once();
    }

    v21 = sub_24F9220D8();
    __swift_project_value_buffer(v21, qword_27F39E8E0);
    sub_24F758AD0(a1, v11);
    v22 = sub_24F9220B8();
    v23 = sub_24F92BDB8();
    sub_24F758C08(a1, v11);
    v24 = os_log_type_enabled(v22, v23);
    v25 = v69;
    if (v24)
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      type metadata accessor for GamesSignInActionImplementation.SignInError(0, v25, v28, v29);
      swift_getWitnessTable();
      swift_allocError();
      *v30 = a1;
      *(v30 + 8) = v11;
      sub_24F758AD0(a1, v11);
      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v26 + 4) = v31;
      *v27 = v31;
      _os_log_impl(&dword_24E5DD000, v22, v23, "Sign in failed, reason: %@", v26, 0xCu);
      sub_24E601704(v27, &qword_27F227B20, &qword_24F944D30);
      MEMORY[0x2530542D0](v27, -1, -1);
      MEMORY[0x2530542D0](v26, -1, -1);
    }

    if (a3)
    {
      type metadata accessor for GamesSignInActionImplementation.SignInError(0, v25, v32, v33);
      swift_getWitnessTable();
      v34 = swift_allocError();
      *v35 = a1;
      *(v35 + 8) = v11;
      sub_24F758AD0(a1, v11);
      sub_24F92A9A8();
      sub_24F758C08(a1, v11);
    }

    else
    {

      sub_24F758C08(a1, v11);
    }

    return;
  }

  v64 = v20;
  v65 = a6;
  v66 = v17;
  v67 = v15;
  if (qword_27F211430 != -1)
  {
    swift_once();
  }

  v36 = sub_24F9220D8();
  __swift_project_value_buffer(v36, qword_27F39E8E0);
  v37 = sub_24F9220B8();
  v38 = sub_24F92BD98();
  v39 = os_log_type_enabled(v37, v38);
  v68 = a3;
  v40 = a4;
  if (v39)
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&dword_24E5DD000, v37, v38, "Sign in succeeded.", v41, 2u);
    v42 = v41;
    a3 = v68;
    MEMORY[0x2530542D0](v42, -1, -1);
  }

  v43 = [objc_opt_self() standardUserDefaults];
  v74 = 0;
  memset(v73, 0, sizeof(v73));
  sub_24ED0F474(v73);

  v44 = sub_24F9220B8();
  v45 = sub_24F92BD98();
  v46 = v14;
  if (os_log_type_enabled(v44, v45))
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&dword_24E5DD000, v44, v45, "Most recent tab selection has been reset.", v47, 2u);
    v48 = v47;
    a3 = v68;
    MEMORY[0x2530542D0](v48, -1, -1);
  }

  sub_24E60169C(v40, &v71, qword_27F21B590, &unk_24F93BE30);
  v49 = v66;
  if (!v72)
  {
    sub_24E601704(&v71, qword_27F21B590, &unk_24F93BE30);
    v51 = v67;
    if (!a3)
    {
      return;
    }

    goto LABEL_20;
  }

  v50 = a5;
  sub_24E612C80(&v71, v73);
  v51 = v67;
  if (v50)
  {
    v52 = sub_24F92B858();
    v53 = v64;
    (*(*(v52 - 8) + 56))(v64, 1, 1, v52);
    v54 = v69;
    v57 = type metadata accessor for GamesSignInActionImplementation(0, v69, v55, v56);
    v58 = *(v57 - 8);
    (*(v58 + 16))(v70, v65, v57);
    sub_24E615E00(v73, &v71);
    sub_24F92B7F8();
    swift_retain_n();
    v59 = sub_24F92B7E8();
    v60 = swift_allocObject();
    v61 = MEMORY[0x277D85700];
    v60[2] = v59;
    v60[3] = v61;
    v60[4] = v54;
    (*(v58 + 32))(v60 + 5, v70, v57);
    sub_24E612C80(&v71, (v60 + 7));
    v60[12] = v50;
    v62 = v60;
    a3 = v68;
    sub_24F1D4600(0, 0, v53, &unk_24FA25718, v62);
  }

  __swift_destroy_boxed_opaque_existential_1(v73);
  if (a3)
  {
LABEL_20:
    (*(v51 + 104))(v49, *MEMORY[0x277D21CA8], v46);
    sub_24F92A9C8();
    (*(v51 + 8))(v49, v46);
  }
}

uint64_t sub_24F75767C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = sub_24F92B7F8();
  v7[3] = sub_24F92B7E8();
  v12 = swift_task_alloc();
  v7[4] = v12;
  v15 = type metadata accessor for GamesSignInActionImplementation(0, a7, v13, v14);
  WitnessTable = swift_getWitnessTable();
  *v12 = v7;
  v12[1] = sub_24F75778C;

  return sub_24F1487B0(a1, a5, a6, v15, WitnessTable);
}

uint64_t sub_24F75778C()
{
  *(*v1 + 40) = v0;

  v3 = sub_24F92B778();
  if (v0)
  {
    v4 = sub_24F75794C;
  }

  else
  {
    v4 = sub_24F7578E8;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_24F7578E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F75794C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F7579B0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *MEMORY[0x277D85000];
  v5 = qword_27F24ED20;
  swift_beginAccess();
  type metadata accessor for GamesSignInActionImplementation(255, *((v4 & v3) + 0x50), v6, v7);
  v8 = sub_24F92C4A8();
  return (*(*(v8 - 8) + 16))(a1, &v1[v5], v8);
}

uint64_t sub_24F757A70(uint64_t a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x277D85000];
  v5 = qword_27F24ED20;
  swift_beginAccess();
  type metadata accessor for GamesSignInActionImplementation(255, *((v4 & v3) + 0x50), v6, v7);
  v8 = sub_24F92C4A8();
  (*(*(v8 - 8) + 40))(&v1[v5], a1, v8);
  return swift_endAccess();
}

double sub_24F757B38(uint64_t a1)
{
  *(v1 + qword_27F24ED28) = a1;

  return result;
}

double sub_24F757B50(uint64_t a1)
{
  *(v1 + qword_27F24ED30) = a1;

  return result;
}

uint64_t sub_24F757B68@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_27F24ED38;
  swift_beginAccess();
  return sub_24E60169C(v1 + v3, a1, qword_27F21B590, &unk_24F93BE30);
}

uint64_t sub_24F757BD0(uint64_t a1)
{
  v3 = qword_27F24ED38;
  swift_beginAccess();
  sub_24E7D5870(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_24F757C30()
{
  swift_unknownObjectRelease();

  MEMORY[0x2530543E0](v0 + 64);

  return swift_deallocObject();
}

uint64_t sub_24F757C98(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[10];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_24E6541E4;

  return sub_24F755E4C(a1, v4, v5, v6, v7, v8, (v1 + 8), v9);
}

void sub_24F757D84(void *a1, char a2, id a3)
{
  v4 = v3;
  v6 = *MEMORY[0x277D85000] & *v3;
  if (a2)
  {
    sub_24F7579B0(v33);
    if (v34)
    {
      v9 = type metadata accessor for GamesSignInActionImplementation(0, *(v6 + 80), v7, v8);
      v10 = *(v9 - 8);
      (*(v10 + 16))(v32, v33, v9);
      v11 = sub_24F92C4A8();
      (*(*(v11 - 8) + 8))(v33, v11);
      v12 = *(v3 + qword_27F24ED30);
      v13 = *(v3 + qword_27F24ED28);
      v14 = qword_27F24ED38;
      swift_beginAccess();
      sub_24E60169C(v4 + v14, v31, qword_27F21B590, &unk_24F93BE30);

      sub_24F756D8C(a1, v12, 0, 255, v13, v31, v9);

      sub_24E601704(v31, qword_27F21B590, &unk_24F93BE30);
      (*(v10 + 8))(v32, v9);
      return;
    }
  }

  else
  {
    if (a3)
    {
      v31[0] = a3;
      v16 = a3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F228600, &qword_24F93B7C0);
      sub_24EC51A9C();
      if (swift_dynamicCast())
      {
        if (qword_27F211430 != -1)
        {
          swift_once();
        }

        v17 = sub_24F9220D8();
        __swift_project_value_buffer(v17, qword_27F39E8E0);
        v18 = v35;
        v19 = sub_24F9220B8();
        v20 = sub_24F92BDB8();

        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          v22 = swift_slowAlloc();
          *v21 = 138412290;
          *(v21 + 4) = v18;
          *v22 = v18;
          v23 = v18;
          _os_log_impl(&dword_24E5DD000, v19, v20, "AAUISignInControllerDelegate: Sign in failed, reason: %@", v21, 0xCu);
          sub_24E601704(v22, &qword_27F227B20, &qword_24F944D30);
          MEMORY[0x2530542D0](v22, -1, -1);
          MEMORY[0x2530542D0](v21, -1, -1);
        }

        if (sub_24F756BE4())
        {
          sub_24F758368(a1);

          return;
        }
      }
    }

    sub_24F7579B0(v33);
    if (v34)
    {
      v24 = type metadata accessor for GamesSignInActionImplementation(0, *(v6 + 80), v7, v8);
      v25 = *(v24 - 8);
      (*(v25 + 16))(v32, v33, v24);
      v26 = sub_24F92C4A8();
      (*(*(v26 - 8) + 8))(v33, v26);
      v27 = *(v4 + qword_27F24ED30);
      v28 = *(v4 + qword_27F24ED28);
      v29 = qword_27F24ED38;
      swift_beginAccess();
      sub_24E60169C(v4 + v29, v31, qword_27F21B590, &unk_24F93BE30);

      sub_24F756D8C(a1, v27, a3, 1, v28, v31, v24);

      sub_24E601704(v31, qword_27F21B590, &unk_24F93BE30);
      (*(v25 + 8))(v32, v24);
      return;
    }
  }

  type metadata accessor for GamesSignInActionImplementation(255, *(v6 + 80), v7, v8);
  v30 = sub_24F92C4A8();
  (*(*(v30 - 8) + 8))(v33, v30);
}

void sub_24F7582E8(void *a1, uint64_t a2, void *a3, char a4, void *a5)
{
  v8 = a3;
  v9 = a1;
  v10 = a5;
  sub_24F757D84(v8, a4, a5);
}

uint64_t sub_24F758368(void *a1)
{
  v2 = v1;
  v4 = *MEMORY[0x277D85000] & *v1;
  if (qword_27F211430 != -1)
  {
    swift_once();
  }

  v5 = sub_24F9220D8();
  __swift_project_value_buffer(v5, qword_27F39E8E0);
  v6 = sub_24F9220B8();
  v7 = sub_24F92BDB8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_24E5DD000, v6, v7, "AAUISignInControllerDelegate: User cancelled sign in.", v8, 2u);
    MEMORY[0x2530542D0](v8, -1, -1);
  }

  sub_24F7579B0(v21);
  if (v22)
  {
    v11 = type metadata accessor for GamesSignInActionImplementation(0, *(v4 + 80), v9, v10);
    v12 = *(v11 - 8);
    (*(v12 + 16))(v20, v21, v11);
    v13 = sub_24F92C4A8();
    (*(*(v13 - 8) + 8))(v21, v13);
    v14 = *(v2 + qword_27F24ED30);
    v15 = *(v2 + qword_27F24ED28);
    v16 = qword_27F24ED38;
    swift_beginAccess();
    sub_24E60169C(v2 + v16, v19, qword_27F21B590, &unk_24F93BE30);

    sub_24F756D8C(a1, v14, 2, 2, v15, v19, v11);

    sub_24E601704(v19, qword_27F21B590, &unk_24F93BE30);
    return (*(v12 + 8))(v20, v11);
  }

  else
  {
    type metadata accessor for GamesSignInActionImplementation(255, *(v4 + 80), v9, v10);
    v18 = sub_24F92C4A8();
    return (*(*(v18 - 8) + 8))(v21, v18);
  }
}

void sub_24F758670(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_24F758368(v4);
}

id sub_24F7586D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = *MEMORY[0x277D85000];
  v7 = (v4 + qword_27F24ED20);
  *v7 = 0;
  v7[1] = 0;
  *(v4 + qword_27F24ED28) = 0;
  *(v4 + qword_27F24ED30) = 0;
  v8 = v4 + qword_27F24ED38;
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  v9 = type metadata accessor for GamesSignInActionImplementation.Coordinator(0, *((v6 & v5) + 0x50), a3, a4);
  v11.receiver = v4;
  v11.super_class = v9;
  return objc_msgSendSuper2(&v11, sel_init);
}

id sub_24F758798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for GamesSignInActionImplementation.Coordinator(0, *((*MEMORY[0x277D85000] & *v4) + 0x50), a3, a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t sub_24F7587F4(char *a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = qword_27F24ED20;
  type metadata accessor for GamesSignInActionImplementation(255, *((*MEMORY[0x277D85000] & *a1) + 0x50), a4, a5);
  v7 = sub_24F92C4A8();
  (*(*(v7 - 8) + 8))(&a1[v6], v7);

  return sub_24E601704(&a1[qword_27F24ED38], qword_27F21B590, &unk_24F93BE30);
}

uint64_t sub_24F758910(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_24F7589BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_12GameStoreKit31GamesSignInActionImplementationV0eF5ErrorOyx_G(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_24F758A14()
{
  v1 = *(v0 + 32);
  if (v1 != 255)
  {
    sub_24E8E0E18(*(v0 + 24), v1);
  }

  if (*(v0 + 72))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 48));
  }

  MEMORY[0x2530543E0](v0 + 96);

  return swift_deallocObject();
}

uint64_t block_copy_helper_175(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_24F758ABC(id result, unsigned __int8 a2, __n128 a3)
{
  if (a2 != 0xFF)
  {
    return sub_24F758AD0(result, a2);
  }

  return result;
}

id sub_24F758AD0(id result, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    return result;
  }

  return result;
}

uint64_t sub_24F758AE4()
{
  swift_unknownObjectRelease();
  MEMORY[0x2530543E0](v0 + 40);

  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return swift_deallocObject();
}

uint64_t sub_24F758B3C(uint64_t a1)
{
  v5 = v1[3];
  v4 = v1[4];
  v6 = v1[2];
  v7 = v1[12];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24E614970;

  return sub_24F75767C(a1, v6, v5, (v1 + 5), (v1 + 7), v7, v4);
}

void sub_24F758C08(id a1, unsigned __int8 a2)
{
  if (a2 != 0xFF)
  {
    sub_24E8E0E18(a1, a2);
  }
}

uint64_t sub_24F758C24(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F758CAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F928AD8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24F758D2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F928AD8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for RequestReviewAction(uint64_t a1)
{
  result = qword_27F24EF10;
  if (!qword_27F24EF10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F758DE8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v3 = sub_24F928AD8();
  v17 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v18 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24EF20, &qword_24FA257E0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  v9 = type metadata accessor for RequestReviewAction(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F759248();
  v12 = v19;
  sub_24F92D108();
  if (!v12)
  {
    v13 = v17;
    sub_24E674184(&qword_27F254CB0, MEMORY[0x277D21C98]);
    sub_24F92CC68();
    (*(v6 + 8))(v8, v5);
    (*(v13 + 32))(v11, v18, v3);
    sub_24F75929C(v11, v16);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_24F759054(uint64_t a1)
{
  v2 = sub_24F759248();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F759090(uint64_t a1)
{
  v2 = sub_24F759248();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F7590E4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24EF30, &qword_24FA257E8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F759248();
  sub_24F92D128();
  sub_24F928AD8();
  sub_24E674184(&qword_27F216080, MEMORY[0x277D21C90]);
  sub_24F92CD48();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_24F759248()
{
  result = qword_27F24EF28;
  if (!qword_27F24EF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24EF28);
  }

  return result;
}

uint64_t sub_24F75929C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RequestReviewAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24F759314()
{
  result = qword_27F24EF38;
  if (!qword_27F24EF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24EF38);
  }

  return result;
}

unint64_t sub_24F75936C()
{
  result = qword_27F24EF40;
  if (!qword_27F24EF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24EF40);
  }

  return result;
}

unint64_t sub_24F7593C4()
{
  result = qword_27F24EF48;
  if (!qword_27F24EF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24EF48);
  }

  return result;
}

uint64_t ChallengesSuggestedLeaderboardsShelfIntentImplementation.perform(_:objectGraph:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a3;
  *(v3 + 32) = type metadata accessor for GSKShelf(0);
  *(v3 + 40) = swift_task_alloc();
  *(v3 + 48) = swift_task_alloc();
  *(v3 + 56) = *a2;
  v5 = *(a2 + 24);
  *(v3 + 72) = *(a2 + 16);
  *(v3 + 80) = v5;
  v6 = *(a2 + 32);
  v7 = *(a2 + 40);
  *(v3 + 88) = v6;
  *(v3 + 96) = v7;

  return MEMORY[0x2822009F8](sub_24F7594E4, 0, 0);
}

uint64_t sub_24F7594E4()
{
  v1 = swift_task_alloc();
  v0[13] = v1;
  *v1 = v0;
  v1[1] = sub_24F759594;
  v2 = v0[11];
  v3 = v0[12];
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[3];

  return sub_24E64C7B4(v5, v4, v2, v3, v6);
}

uint64_t sub_24F759594(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 112) = a1;
  *(v3 + 120) = v1;

  if (v1)
  {
    v4 = sub_24E73814C;
  }

  else
  {

    v4 = sub_24F7596BC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24F7596BC()
{

  v1 = swift_task_alloc();
  v0[16] = v1;
  *v1 = v0;
  v1[1] = sub_24E737F34;
  v2 = v0[14];
  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[6];
  v6 = v0[3];

  return sub_24E64CA64(v5, v2, v3, v4, v6);
}

uint64_t sub_24F759780(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24E614970;

  return ChallengesSuggestedLeaderboardsShelfIntentImplementation.perform(_:objectGraph:)(a1, a2, a3);
}

uint64_t sub_24F7598B4@<X0>(void (*a1)(char *, uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v76 = a4;
  v77 = a5;
  v91 = a3;
  v92 = a2;
  v93 = a6;
  v7 = a1;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214A20, &unk_24F94D670);
  MEMORY[0x28223BE20](v82);
  v78 = &v68 - v8;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24EF58, &qword_24FA25A10);
  MEMORY[0x28223BE20](v80);
  v81 = &v68 - v9;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24EF60, &unk_24FA25A18);
  MEMORY[0x28223BE20](v90);
  v83 = &v68 - v10;
  v71 = type metadata accessor for DescriptionLabel(0);
  v70 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v12 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216968, &unk_24F9EDA20);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v68 - v14;
  v16 = type metadata accessor for DescriptionLabelConfig(0);
  v69 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24EF68, &qword_24FA25A28);
  MEMORY[0x28223BE20](v79);
  v72 = &v68 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v68 - v21;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214A10, &unk_24F94BD90);
  MEMORY[0x28223BE20](v74);
  v68 = (&v68 - v23);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24EF70, &qword_24FA25A30);
  MEMORY[0x28223BE20](v84);
  v87 = &v68 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24EF78, &qword_24FA25A38);
  MEMORY[0x28223BE20](v25);
  v73 = &v68 - v26;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24EF80, &qword_24FA25A40);
  MEMORY[0x28223BE20](v85);
  v75 = &v68 - v27;
  v28 = type metadata accessor for ChartCardConfiguration.ChartRankingView(0);
  MEMORY[0x28223BE20](v28);
  v30 = &v68 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24EF88, &qword_24FA25A48);
  MEMORY[0x28223BE20](v31);
  v86 = &v68 - v34;
  v35 = v7 == 3;
  v36 = v92;
  if (!v35)
  {
    v88 = v33;
    v89 = v32;
    v37 = sub_24E92D030(a1, v92, v91);
    v33 = v88;
    v32 = v89;
    if (v37)
    {
      if (a1 == 12)
      {
        v39 = v91;
        if (v91 > 2u)
        {
          v38 = v86;
        }

        else
        {
          v38 = v86;
          if (!v91)
          {

            goto LABEL_21;
          }
        }

        v55 = sub_24F92CE08();

        if ((v55 & 1) == 0)
        {
          v56 = sub_24F926C98();
          v57 = v39;
          v58 = v36;
          v59 = *(type metadata accessor for ChartCard(0) + 36);
          v60 = sub_24F9289E8();
          v61 = *(v60 - 8);
          (*(v61 + 16))(v22, v58 + v59, v60);
          (*(v61 + 56))(v22, 0, 1, v60);
          v62 = v57 != 5;
          v63 = v68;
          sub_24F6C4E24(v22, v62, v56, v68);

          sub_24E601704(v22, &qword_27F213FB0, &qword_24F93E6B0);
          sub_24E60169C(v63, v73, &qword_27F214A10, &unk_24F94BD90);
          swift_storeEnumTagMultiPayload();
          sub_24F75B5D4(&qword_27F24EFA8, type metadata accessor for ChartCardConfiguration.ChartRankingView, &unk_24FA25A70);
          sub_24E63D150();
          v64 = v75;
          sub_24F924E28();
          sub_24E60169C(v64, v87, &qword_27F24EF80, &qword_24FA25A40);
          swift_storeEnumTagMultiPayload();
          sub_24F75B518();
          sub_24F75B61C();
          sub_24F924E28();
          sub_24E601704(v64, &qword_27F24EF80, &qword_24FA25A40);
          sub_24E601704(v63, &qword_27F214A10, &unk_24F94BD90);
          goto LABEL_22;
        }
      }

      else
      {
        if (a1 == 10)
        {
          v51 = type metadata accessor for ChartCard(0);
          sub_24E60169C(v36 + *(v51 + 44), v15, &qword_27F216968, &unk_24F9EDA20);
          if ((*(v69 + 48))(v15, 1, v16) == 1)
          {
            sub_24E601704(v15, &qword_27F216968, &unk_24F9EDA20);
            v52 = 1;
            v53 = v72;
          }

          else
          {
            sub_24F75BC80(v15, v18, type metadata accessor for DescriptionLabelConfig);
            sub_24F75BC80(v18, v12, type metadata accessor for DescriptionLabelConfig);
            v53 = v72;
            sub_24F75BC80(v12, v72, type metadata accessor for DescriptionLabel);
            v52 = 0;
          }

          (*(v70 + 56))(v53, v52, 1, v71);
          sub_24E60169C(v53, v81, &qword_27F24EF68, &qword_24FA25A28);
          swift_storeEnumTagMultiPayload();
          sub_24F75B3E8();
          sub_24F75B49C(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
          v54 = v83;
          sub_24F924E28();
          sub_24E60169C(v54, v87, &qword_27F24EF60, &unk_24FA25A18);
          swift_storeEnumTagMultiPayload();
          sub_24F75B518();
          sub_24F75B61C();
          v38 = v86;
          sub_24F924E28();
          sub_24E601704(v54, &qword_27F24EF60, &unk_24FA25A18);
          sub_24E601704(v53, &qword_27F24EF68, &qword_24FA25A28);
          goto LABEL_22;
        }

        v38 = v86;
        v39 = v91;
        if (a1 == 2)
        {
          v40 = type metadata accessor for ChartCard(0);
          v41 = v36;
          v42 = v40[9];
          v43 = *(v41 + v40[10]);
          v44 = *(v28 + 20);
          v45 = sub_24F9289E8();
          (*(*(v45 - 8) + 16))(&v30[v44], v41 + v42, v45);
          v46 = *(v41 + v40[12]);
          *v30 = v43;
          *&v30[*(v28 + 24)] = v46;
          v94 = 0x405C000000000000;
          sub_24E66ED98();
          sub_24F9237C8();
          sub_24F75B6D4(v30, v73);
          swift_storeEnumTagMultiPayload();
          sub_24F75B5D4(&qword_27F24EFA8, type metadata accessor for ChartCardConfiguration.ChartRankingView, &unk_24FA25A70);
          sub_24E63D150();
          v47 = v75;
          sub_24F924E28();
          sub_24E60169C(v47, v87, &qword_27F24EF80, &qword_24FA25A40);
          swift_storeEnumTagMultiPayload();
          sub_24F75B518();
          sub_24F75B61C();
          sub_24F924E28();
          sub_24E601704(v47, &qword_27F24EF80, &qword_24FA25A40);
          sub_24F75B738(v30);
LABEL_22:
          v67 = v93;
          sub_24E6009C8(v38, v93, &qword_27F24EF88, &qword_24FA25A48);
          return (*(v88 + 56))(v67, 0, 1, v89);
        }
      }

LABEL_21:
      v65 = v78;
      sub_24E918D70(a1, v36, v39, v76, v77, v78);
      sub_24E60169C(v65, v81, &qword_27F214A20, &unk_24F94D670);
      swift_storeEnumTagMultiPayload();
      sub_24F75B3E8();
      sub_24F75B49C(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
      v66 = v83;
      sub_24F924E28();
      sub_24E60169C(v66, v87, &qword_27F24EF60, &unk_24FA25A18);
      swift_storeEnumTagMultiPayload();
      sub_24F75B518();
      sub_24F75B61C();
      sub_24F924E28();
      sub_24E601704(v66, &qword_27F24EF60, &unk_24FA25A18);
      sub_24E601704(v65, &qword_27F214A20, &unk_24F94D670);
      goto LABEL_22;
    }
  }

  v48 = *(v33 + 56);
  v49 = v93;

  return v48(v49, 1, 1, v32);
}

void sub_24F75A694(uint64_t a1@<X8>)
{
  v4 = type metadata accessor for ChartCardConfiguration.ChartRankingView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  sub_24F75B6D4(v2, &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_24F75BC80(&v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for ChartCardConfiguration.ChartRankingView);
  LOBYTE(v6) = sub_24F925868();
  sub_24F923318();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v33 = 0;
  v17 = sub_24F9257F8();
  sub_24F923318();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = v33;
  v32 = 0;
  LOBYTE(v7) = sub_24F925828();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215DE0, &qword_24F9847E0);
  sub_24F9237D8();
  sub_24F923318();
  *a1 = sub_24F75BCE8;
  *(a1 + 8) = v8;
  *(a1 + 16) = v6;
  *(a1 + 24) = v10;
  *(a1 + 32) = v12;
  *(a1 + 40) = v14;
  *(a1 + 48) = v16;
  *(a1 + 56) = v26;
  *(a1 + 64) = v17;
  *(a1 + 72) = v19;
  *(a1 + 80) = v21;
  *(a1 + 88) = v23;
  *(a1 + 96) = v25;
  *(a1 + 104) = 0;
  *(a1 + 112) = v7;
  *(a1 + 120) = v27;
  *(a1 + 128) = v28;
  *(a1 + 136) = v29;
  *(a1 + 144) = v30;
  *(a1 + 152) = 0;
}

__n128 sub_24F75A87C@<Q0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24EFE0, &qword_24FA25AC0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (v15 - v5);
  sub_24F923998();
  v8 = v7 / 130.0;
  *v6 = sub_24F927638();
  v6[1] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24EFE8, &qword_24FA25AC8);
  sub_24F75A9FC(a1, v6 + *(v10 + 44), v8);
  sub_24F927618();
  sub_24F9242E8();
  sub_24E6009C8(v6, a2, &qword_27F24EFE0, &qword_24FA25AC0);
  v11 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24EFF0, &qword_24FA25AD0) + 36);
  v12 = v15[5];
  *(v11 + 64) = v15[4];
  *(v11 + 80) = v12;
  *(v11 + 96) = v15[6];
  v13 = v15[1];
  *v11 = v15[0];
  *(v11 + 16) = v13;
  result = v15[3];
  *(v11 + 32) = v15[2];
  *(v11 + 48) = result;
  return result;
}