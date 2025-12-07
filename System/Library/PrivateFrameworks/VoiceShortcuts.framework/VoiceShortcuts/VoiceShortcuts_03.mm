uint64_t sub_2310874A8(uint64_t *a1, int8x16_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  switch(*(a1 + 32))
  {
    case 1:
      if (a2[2].i8[0] != 1)
      {
        return 0;
      }

      v12 = a2[1].i64[0];
      v11 = a2[1].i64[1];
      v13 = v4 == a2->i64[0] && v5 == a2->i64[1];
      if (v13 || (v14 = sub_231159818(), result = 0, (v14 & 1) != 0))
      {
        if (!v7)
        {
          return !v11;
        }

        if (!v11)
        {
          return 0;
        }

        v15 = v6 == v12 && v7 == v11;
        return v15 || (sub_231159818() & 1) != 0;
      }

      return result;
    case 2:
      if (a2[2].i8[0] != 2)
      {
        return 0;
      }

      goto LABEL_5;
    case 3:
      if (a2[2].i8[0] == 3)
      {
        v10 = vorrq_s8(*a2, a2[1]);
        if (!*&vorr_s8(*v10.i8, *&vextq_s8(v10, v10, 8uLL)))
        {
          return 1;
        }
      }

      return 0;
    default:
      if (a2[2].i8[0])
      {
        return 0;
      }

LABEL_5:
      if (v4 == a2->i64[0] && v5 == a2->i64[1])
      {
        return 1;
      }

      return sub_231159818();
  }
}

uint64_t *sub_2310875F4(void *a1)
{
  v3 = v1;
  v5 = sub_231157988();
  MEMORY[0x28223BE20](v5 - 8);
  OUTLINED_FUNCTION_5_0();
  v8 = v7 - v6;
  *(v3 + 64) = 0;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  *(v3 + 16) = 0u;
  *(v3 + 72) = 3;
  v9 = a1;
  sub_2311586E8();
  v10 = objc_allocWithZone(MEMORY[0x277CF94F0]);
  v11 = sub_23108C010(0xD000000000000017, 0x8000000231169410, v8, 3);

  if (v2)
  {

    sub_2310602F0(*(v3 + 16), *(v3 + 24), *(v3 + 32));
    sub_23108C7AC(*(v3 + 40), *(v3 + 48), *(v3 + 56), *(v3 + 64), *(v3 + 72));
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v3 + 80) = v9;
    *(v3 + 88) = v11;
  }

  return v3;
}

void sub_23108778C(uint64_t a1)
{
  v2 = v1;
  v20[1] = *MEMORY[0x277D85DE8];
  v4 = sub_231158258();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v2 + 80);
  sub_2311581C8();
  v9 = sub_231158238();
  v10 = sub_2311592F8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v19 = v2;
    v12 = a1;
    v13 = v11;
    *v11 = 0;
    _os_log_impl(&dword_23103C000, v9, v10, "pull: storing new bookmark", v11, 2u);
    v14 = v13;
    a1 = v12;
    v2 = v19;
    MEMORY[0x2319267C0](v14, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v15 = *(v2 + 88);
  v20[0] = 0;
  if ([v15 updateBookmark:a1 forSet:v8 error:v20])
  {
    v16 = v20[0];
  }

  else
  {
    v17 = v20[0];
    sub_231157938();

    swift_willThrow();
  }
}

id sub_2310879A0()
{
  v4[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 88);
  v4[0] = 0;
  if ([v1 commitAllBookmarkUpdates_])
  {
    return v4[0];
  }

  v3 = v4[0];
  sub_231157938();

  return swift_willThrow();
}

uint64_t sub_231087A48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (*(a1 + 16) || *(a2 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C340, &unk_231163830);
    v6 = sub_231157EB8();
    v7 = *(v6 - 8);
    v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_231161B80;
    (*(v7 + 104))(v9 + v8, *MEMORY[0x277D79C20], v6);
    sub_2310A0D38(v9);
    *a3 = a1;
    a3[1] = a2;
    a3[2] = v10;
    v11 = *MEMORY[0x277D79C58];
    v12 = sub_231157F18();
    (*(*(v12 - 8) + 104))(a3, v11, v12);
  }

  else
  {
    v14 = *MEMORY[0x277D79C50];
    v15 = sub_231157F18();
    v16 = *(*(v15 - 8) + 104);

    return v16(a3, v14, v15);
  }
}

uint64_t sub_231087C30()
{
  OUTLINED_FUNCTION_4_1();
  *(v1 + 56) = v0;
  *(v1 + 49) = v2;
  v3 = sub_231158258();
  *(v1 + 64) = v3;
  OUTLINED_FUNCTION_5(v3);
  *(v1 + 72) = v4;
  *(v1 + 80) = swift_task_alloc();
  *(v1 + 88) = swift_task_alloc();
  *(v1 + 96) = swift_task_alloc();
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_231087CFC()
{
  sub_2311581C8();

  v1 = sub_231158238();
  v2 = sub_2311592F8();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 56);
    v4 = *(v0 + 49);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412546;
    v7 = *(v3 + 80);
    *(v5 + 4) = v7;
    *v6 = v7;
    *(v5 + 12) = 1024;
    *(v5 + 14) = v4;
    v8 = v7;
    _os_log_impl(&dword_23103C000, v1, v2, "pull: starting for set %@, from bookmark: %{BOOL}d", v5, 0x12u);
    sub_231051B38(v6, &unk_27DD3CC40, &qword_231162750);
    OUTLINED_FUNCTION_40();
    MEMORY[0x2319267C0]();
    OUTLINED_FUNCTION_40();
    MEMORY[0x2319267C0]();
  }

  v9 = *(v0 + 96);
  v10 = *(v0 + 64);
  v11 = *(v0 + 72);

  v12 = *(v11 + 8);
  v12(v9, v10);
  *(v0 + 16) = xmmword_231163940;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  sub_231086BD4(v0 + 16);
  sub_231158888();
  *(v0 + 104) = sub_231158868();
  if (*(v0 + 49) == 1 && (v13 = sub_231087750()) != 0)
  {
    v14 = (v0 + 88);
    sub_2311581C8();
    v15 = sub_231158238();
    v16 = sub_2311592F8();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_23103C000, v15, v16, "pull: enumerating from bookmark", v17, 2u);
LABEL_9:
      v21 = *v14;
      OUTLINED_FUNCTION_40();
      MEMORY[0x2319267C0]();
      goto LABEL_12;
    }
  }

  else
  {
    v14 = (v0 + 80);
    sub_2311581C8();
    v15 = sub_231158238();
    v18 = sub_2311592F8();
    if (os_log_type_enabled(v15, v18))
    {
      v19 = *(v0 + 49);
      v20 = swift_slowAlloc();
      *v20 = 67109120;
      *(v20 + 4) = (v19 & 1) == 0;
      _os_log_impl(&dword_23103C000, v15, v18, "pull: not enumerating from bookmark (forced: %{BOOL}d)", v20, 8u);
      v13 = 0;
      goto LABEL_9;
    }

    v13 = 0;
  }

  v21 = *v14;
LABEL_12:
  *(v0 + 112) = v13;
  v23 = *(v0 + 56);
  v22 = *(v0 + 64);

  v12(v21, v22);
  v24 = swift_allocObject();
  *(v0 + 120) = v24;
  *(v24 + 16) = v23;
  *(v24 + 24) = v13;

  swift_unknownObjectRetain();
  v25 = swift_task_alloc();
  *(v0 + 128) = v25;
  *v25 = v0;
  v25[1] = sub_231088120;

  return MEMORY[0x2821DAC48]();
}

uint64_t sub_231088120()
{
  OUTLINED_FUNCTION_4_1();
  v7 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v2 = v7;
  *(v7 + 136) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_23108822C()
{
  OUTLINED_FUNCTION_21();

  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_1();

  return v0();
}

uint64_t sub_2310882B8()
{
  OUTLINED_FUNCTION_21();

  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_1();

  return v0();
}

uint64_t sub_23108834C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_231088370, 0, 0);
}

uint64_t sub_231088370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v27 = *(v16 + 32);
  v17 = *(v16 + 24);
  v18 = swift_task_alloc();
  *(v16 + 48) = v18;
  *(v18 + 16) = v27;
  *(v18 + 32) = v17;
  v19 = swift_task_alloc();
  *(v16 + 56) = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C2D0, &qword_231163AE8);
  *v19 = v16;
  v19[1] = sub_231088484;
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822008A0](v20, v21, v22, 0xD000000000000017, v23, v24, v18, v25, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_231088484()
{
  OUTLINED_FUNCTION_4_1();
  v7 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v2 = v7;
  *(v7 + 64) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_231088590()
{
  OUTLINED_FUNCTION_21();
  v1 = *(v0 + 64);
  sub_23108778C(*(v0 + 16));
  if (!v1)
  {
    sub_2310879A0();
    sub_231158658();
  }

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_1();

  return v2();
}

uint64_t sub_23108865C()
{
  OUTLINED_FUNCTION_4_1();

  OUTLINED_FUNCTION_1();

  return v0();
}

void sub_2310886B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a4;
  v39 = a3;
  v37 = sub_231158668();
  v35 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v34 = v6;
  v31[0] = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C2D8, &qword_231163AF0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v31 - v10;
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D84FA0];
  v38 = v13;
  *(v13 + 16) = MEMORY[0x277D84FA0];
  v15 = a2;
  v16 = *(a2 + 80);
  if (qword_280CCB9B8 != -1)
  {
    swift_once();
  }

  v33 = [v16 changePublisherWithUseCase_];
  (*(v8 + 16))(v11, a1, v7);
  v17 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v18 = (v9 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = v12;
  (*(v8 + 32))(v19 + v17, v11, v7);
  v20 = v38;
  *(v19 + v18) = v38;
  *(v19 + ((v18 + 15) & 0xFFFFFFFFFFFFFFF8)) = v14;
  v44 = sub_23108C320;
  v45 = v19;
  aBlock = MEMORY[0x277D85DD0];
  v41 = 1107296256;
  v31[1] = &v42;
  v42 = sub_231089144;
  v43 = &block_descriptor_8;
  v32 = _Block_copy(&aBlock);

  v21 = v35;
  v22 = v31[0];
  v23 = v37;
  (*(v35 + 16))(v31[0], v36, v37);
  v24 = (*(v21 + 80) + 24) & ~*(v21 + 80);
  v25 = (v34 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  *(v26 + 16) = v15;
  (*(v21 + 32))(v26 + v24, v22, v23);
  *(v26 + v25) = v20;
  *(v26 + ((v25 + 15) & 0xFFFFFFFFFFFFFFF8)) = v12;
  v44 = sub_23108C3D8;
  v45 = v26;
  aBlock = MEMORY[0x277D85DD0];
  v41 = 1107296256;
  v42 = sub_23108BDB0;
  v43 = &block_descriptor_30;
  v27 = _Block_copy(&aBlock);

  v29 = v32;
  v28 = v33;
  v30 = [v33 drivableSinkWithBookmark:v39 completion:v32 shouldContinue:v27];
  _Block_release(v27);
  _Block_release(v29);
}

uint64_t sub_231088B24(uint64_t a1, uint64_t a2, void *a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v48 = a6;
  v52 = a4;
  v47 = sub_2311586B8();
  v46 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v45 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_231157F18();
  v49 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v50 = (&v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_231158258();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2311581C8();

  v17 = sub_231158238();
  v18 = sub_2311592F8();
  v51 = a3;

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v44 = v11;
    v20 = v19;
    v21 = swift_slowAlloc();
    *v20 = 138412290;
    v22 = v51[10];
    *(v20 + 4) = v22;
    *v21 = v22;
    v23 = v22;
    _os_log_impl(&dword_23103C000, v17, v18, "pull: completed processing %@", v20, 0xCu);
    sub_231051B38(v21, &unk_27DD3CC40, &qword_231162750);
    MEMORY[0x2319267C0](v21, -1, -1);
    v24 = v20;
    v11 = v44;
    MEMORY[0x2319267C0](v24, -1, -1);
  }

  (*(v14 + 8))(v16, v13);
  v25 = v52;
  swift_beginAccess();
  v26 = v25[2];
  if (v26)
  {
    v55 = v25[2];
    v27 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C2D8, &qword_231163AF0);
    return sub_231159058();
  }

  else
  {
    swift_beginAccess();

    v30 = v50;
    sub_231087A48(v29, a7, v50);

    if ((sub_231157F08() & 1) == 0)
    {
      v31 = sub_231157EF8();
      v33 = v32;
      if (v32 >> 60 != 15)
      {
        v34 = v31;
        v52 = [objc_opt_self() defaultCenter];
        v51 = sub_231159368();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C338, &unk_231163B40);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_231163950;
        v53 = 0x657365676E616863;
        v54 = 0xE900000000000074;
        sub_231159528();
        *(inited + 96) = MEMORY[0x277CC9318];
        *(inited + 72) = v34;
        *(inited + 80) = v33;
        v53 = 0x656372756F73;
        v54 = 0xE600000000000000;
        sub_2310601EC(v34, v33);
        sub_231159528();
        v36 = v46;
        v37 = v45;
        v38 = v47;
        (*(v46 + 104))(v45, *MEMORY[0x277D72740], v47);
        v39 = sub_2311586A8();
        (*(v36 + 8))(v37, v38);
        *(inited + 168) = MEMORY[0x277D83B88];
        *(inited + 144) = v39;
        v30 = v50;
        v40 = sub_231158DB8();
        v41 = v51;
        v42 = v52;
        sub_23108C4A8(v51, 0, v40, v52);

        sub_231054A4C(v34, v33);
      }
    }

    v53 = a2;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C2D8, &qword_231163AF0);
    sub_231159068();
    return (*(v49 + 8))(v30, v11);
  }
}

void sub_231089144(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v6 = a2;
  swift_unknownObjectRetain();
  v5(v6, a3);

  swift_unknownObjectRelease();
}

void sub_2310891CC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v78[4] = a5;
  v80 = a2;
  v81 = a3;
  v7 = sub_231157BC8();
  v78[7] = *(v7 - 8);
  v78[8] = v7;
  MEMORY[0x28223BE20](v7);
  v78[6] = v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_231158258();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v79 = v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v78[5] = v78 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v78[3] = v78 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v78[2] = v78 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = v78 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = v78 - v22;
  v82 = *MEMORY[0x277D7A4F0];
  sub_2311581C8();
  v24 = a1;
  v25 = sub_231158238();
  v26 = sub_2311592F8();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = v21;
    v29 = a4;
    v30 = swift_slowAlloc();
    *v27 = 138412290;
    *(v27 + 4) = v24;
    *v30 = v24;
    v31 = v24;
    _os_log_impl(&dword_23103C000, v25, v26, "pull: received input: %@", v27, 0xCu);
    sub_231051B38(v30, &unk_27DD3CC40, &qword_231162750);
    v32 = v30;
    a4 = v29;
    v21 = v28;
    MEMORY[0x2319267C0](v32, -1, -1);
    MEMORY[0x2319267C0](v27, -1, -1);
  }

  v35 = *(v10 + 8);
  v34 = v10 + 8;
  v33 = v35;
  v83 = v9;
  v35(v23, v9);
  v36 = [v24 sharedItem];
  v37 = [v36 content];

  if (!v37)
  {
LABEL_6:
    if ([v24 sharedItemChangeType] == 2)
    {
      v38 = [v24 removedDevices];
      sub_231054A0C(0, &qword_27DD3C2E0, 0x277CF94B0);
      v39 = sub_231158F48();

      v40 = sub_23106FF58(v39);
      v41 = 0;
      while (1)
      {
        if (v40 == v41)
        {

          v55 = [v24 sharedItem];
          v56 = [v55 sharedIdentifier];

          v57 = [v56 stringValue];
          v58 = sub_231158E58();
          v60 = v59;

          v84 = v58;
          v85 = v60;
          v86 = 0;
          v87 = 0;
          v88 = 2;
          sub_231086BD4(&v84);

          MEMORY[0x28223BE20](v61);
          v78[-2] = v24;
          sub_231158658();
          return;
        }

        if ((v39 & 0xC000000000000001) != 0)
        {
          v42 = MEMORY[0x231925080](v41, v39);
        }

        else
        {
          if (v41 >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_36;
          }

          v42 = *(v39 + 8 * v41 + 32);
        }

        v43 = v42;
        if (__OFADD__(v41, 1))
        {
          break;
        }

        v44 = [v42 isLocal];

        ++v41;
        if (v44)
        {
          goto LABEL_30;
        }
      }

      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    else
    {
      sub_2311581C8();
      v45 = sub_231158238();
      v46 = sub_2311592D8();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        *v47 = 0;
        _os_log_impl(&dword_23103C000, v45, v46, "pull: Received unexpected change.", v47, 2u);
        MEMORY[0x2319267C0](v47, -1, -1);
      }

      v33(v21, v83);
    }

    return;
  }

  if ([v24 sharedItemChangeType])
  {

    goto LABEL_6;
  }

  v79 = (a4 + 16);
  v48 = [v24 addedDevices];
  sub_231054A0C(0, &qword_27DD3C2E0, 0x277CF94B0);
  v49 = sub_231158F48();

  v50 = sub_23106FF58(v49);
  v51 = 0;
  do
  {
    if (v50 == v51)
    {

      v62 = [v37 data];
      v63 = sub_2311579A8();
      v65 = v64;

      v66 = objc_allocWithZone(MEMORY[0x277D21150]);
      v67 = sub_23105F240(v63, v65);
      v68 = [v24 sharedItem];
      v69 = [v68 sharedIdentifier];

      v70 = [v69 stringValue];
      v71 = sub_231158E58();
      v73 = v72;

      v74 = [v37 toolDefinition];
      if (v74)
      {
        v74 = sub_23108C5B4(v74, &selRef_id);
        v76 = v75;
      }

      else
      {
        v76 = 0;
      }

      v84 = v71;
      v85 = v73;
      v86 = v74;
      v87 = v76;
      v88 = 1;
      sub_231086BD4(&v84);

      MEMORY[0x28223BE20](v77);
      v78[-4] = v67;
      v78[-3] = v24;
      v78[-2] = v79;
      sub_231158658();

      return;
    }

    if ((v49 & 0xC000000000000001) != 0)
    {
      v52 = MEMORY[0x231925080](v51, v49);
    }

    else
    {
      if (v51 >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_38;
      }

      v52 = *(v49 + 8 * v51 + 32);
    }

    v53 = v52;
    if (__OFADD__(v51, 1))
    {
      goto LABEL_37;
    }

    v54 = [v52 isLocal];

    ++v51;
  }

  while (!v54);

LABEL_30:
}

void sub_23108A0A8(uint64_t a1, void *a2, id a3, uint64_t a4)
{
  v7 = [a3 sharedItem];
  v8 = [v7 sharedIdentifier];

  v9 = [v8 stringValue];
  v10 = sub_231158E58();
  v12 = v11;

  sub_23108A220(a1, v10, v12);
  if (v4)
  {
    goto LABEL_2;
  }

  v13 = [a2 toolDefinition];
  if (v13)
  {
    v14 = v13;
    v15 = [v13 sourceContainer];

    if (v15)
    {
      v16 = sub_23108C5B4(v15, &selRef_containerId);
      if (v17)
      {
        v18 = v16;
        v19 = v17;
        swift_beginAccess();
        sub_2310DF3EC(&v20, v18, v19);
        swift_endAccess();
LABEL_2:
      }
    }
  }
}

void sub_23108A220(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v155 = a3;
  v154 = a2;
  v183 = a1;
  v4 = sub_231158AE8();
  OUTLINED_FUNCTION_4();
  v159 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_15_6();
  OUTLINED_FUNCTION_3_9(v8);
  v158 = sub_231158A28();
  OUTLINED_FUNCTION_4();
  v177 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_3_9(v12 - v11);
  v172 = sub_231158A78();
  OUTLINED_FUNCTION_4();
  v164 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_15_6();
  OUTLINED_FUNCTION_3_9(v16);
  v180 = sub_231158A68();
  OUTLINED_FUNCTION_4();
  v163 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_15_6();
  OUTLINED_FUNCTION_3_9(v20);
  v176 = sub_231158908();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_5_0();
  v175 = v23 - v22;
  v178 = sub_231158A58();
  OUTLINED_FUNCTION_4();
  v162 = v24;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_15_6();
  v186 = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C2E8, &qword_231163AF8);
  MEMORY[0x28223BE20](v28 - 8);
  OUTLINED_FUNCTION_3_9(&v146 - v29);
  sub_231157A38();
  OUTLINED_FUNCTION_4();
  v184 = v30;
  v185 = v31;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_1_9();
  v179 = v32;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_16_5();
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_16_5();
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_15_6();
  OUTLINED_FUNCTION_3_9(v36);
  v181 = sub_231158B08();
  OUTLINED_FUNCTION_4();
  v169 = v37;
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_16_5();
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_16_5();
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_16_5();
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_15_6();
  OUTLINED_FUNCTION_3_9(v43);
  v44 = sub_231158258();
  OUTLINED_FUNCTION_4();
  v187 = v45;
  v47 = MEMORY[0x28223BE20](v46);
  v49 = &v146 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_16_5();
  v182 = v50;
  MEMORY[0x28223BE20](v51);
  v53 = &v146 - v52;
  v54 = sub_231158218();
  MEMORY[0x28223BE20](v54 - 8);
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v55);
  sub_231158928();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_5_0();
  v174 = sub_231158418();
  OUTLINED_FUNCTION_4();
  v173 = v57;
  v59 = MEMORY[0x28223BE20](v58);
  v61 = &v146 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_15_6();
  v188 = v62;
  v165 = v3;
  v63 = [v3 toolDefinition];
  if (v63)
  {
    v153 = v44;
    v152 = v4;
    v64 = v63;
    v65 = [v63 data];
    v66 = sub_2311579A8();
    v68 = v67;

    v192 = v66;
    v193 = v68;
    v191 = 0;
    v189 = 0u;
    v190 = 0u;
    sub_231158208();
    sub_23108C674(&qword_27DD3BEB8, MEMORY[0x277D72898], MEMORY[0x277D72890]);
    v69 = v194;
    sub_231158228();
    if (v69)
    {
    }

    else
    {
      v194 = v64;
      v74 = v188;
      sub_231158408();
      v151 = *MEMORY[0x277D7A4F0];
      sub_2311581C8();
      OUTLINED_FUNCTION_31_2();
      (*(v75 + 16))(v61, v74, v174);
      v76 = sub_231158238();
      v77 = sub_2311592F8();
      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        v149 = v78;
        v150 = swift_slowAlloc();
        *&v189 = v150;
        *v78 = 136315138;
        v79 = sub_2311583E8();
        v81 = v80;
        v82 = OUTLINED_FUNCTION_22_4();
        v83(v82);
        v84 = sub_2310488F8(v79, v81, &v189);

        v85 = v149;
        *(v149 + 1) = v84;
        _os_log_impl(&dword_23103C000, v76, v77, "pull: ingesting tool %s", v85, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v150);
        OUTLINED_FUNCTION_40();
        MEMORY[0x2319267C0]();
        OUTLINED_FUNCTION_40();
        MEMORY[0x2319267C0]();
      }

      else
      {

        v86 = OUTLINED_FUNCTION_22_4();
        v87(v86);
      }

      v150 = *(v187 + 1);
      v150(v53, v153);
      v88 = v167;
      sub_2311583A8();
      OUTLINED_FUNCTION_24_2();
      sub_231157A28();
      sub_231158828();
      v89 = v181;
      v90 = v169;
      v91 = *(v185 + 8);
      v185 += 8;
      v149 = v91;
      (v91)(v53, v184);
      v93 = v90 + 1;
      v92 = v90[1];
      v92(v88, v89);
      v94 = v90;
      OUTLINED_FUNCTION_24_2();
      sub_2311583D8();
      v95 = v53;
      if (__swift_getEnumTagSinglePayload(v53, 1, v89) == 1)
      {
        v160 = v92;
        sub_231051B38(v53, &qword_27DD3C2E8, &qword_231163AF8);
      }

      else
      {
        v96 = v160;
        (v94[4])(v160, v95, v89);
        OUTLINED_FUNCTION_24_2();
        sub_231157A28();
        OUTLINED_FUNCTION_25_4();
        sub_231158828();
        OUTLINED_FUNCTION_4_7();
        v97();
        v160 = v92;
        v92(v96, v89);
      }

      v98 = sub_23108C544(v165);
      if (v98)
      {
        v99 = v98;
      }

      else
      {
        v99 = MEMORY[0x277D84F90];
      }

      v166 = sub_23106FF58(v99);
      v100 = 0;
      v165 = (v99 & 0xC000000000000001);
      v167 = v99;
      v161 = v99 & 0xFFFFFFFFFFFFFF8;
      v147 = (v162 + 16);
      v169 = (v162 + 8);
      v162 = v187 + 8;
      v164 += 8;
      ++v163;
      *&v101 = 136315138;
      v146 = v101;
      v102 = v178;
      v103 = v177;
      v148 = v93;
      while (1)
      {
        if (v166 == v100)
        {

          sub_231157A28();
          OUTLINED_FUNCTION_31_2();
          v129 = sub_2311583A8();
          MEMORY[0x2319245C0](v129);
          v130 = v102;
          v131 = v160;
          v160(v130, v89);
          v132 = sub_231158AC8();
          v134 = v133;
          v160 = v131;
          v135 = OUTLINED_FUNCTION_27_4();
          v187 = v136;
          (v136)(v135);
          v137 = v157;
          *v157 = v132;
          v137[1] = v134;
          v138 = v158;
          v139 = (*(v103 + 104))(v137, *MEMORY[0x277D72B40], v158);
          MEMORY[0x2319242B0](v139);
          OUTLINED_FUNCTION_25_4();
          v186 = sub_2311587D8();
          OUTLINED_FUNCTION_11_6();
          OUTLINED_FUNCTION_30_2();
          v140();
          (*(v103 + 8))(v137, v138);
          OUTLINED_FUNCTION_4_7();
          v141();
          v142 = v156;
          sub_2311583A8();
          OUTLINED_FUNCTION_31_2();
          MEMORY[0x2319245C0]();
          v160(v142, v181);
          sub_231158AC8();
          v143 = OUTLINED_FUNCTION_28_3();
          v144(v143);
          OUTLINED_FUNCTION_25_4();
          sub_231158728();
          OUTLINED_FUNCTION_5_8();
          OUTLINED_FUNCTION_10_7();
          v145();

          return;
        }

        if (v165)
        {
          v106 = MEMORY[0x231925080](v100, v167);
          v104 = v182;
          v105 = &selRef_initAndAllowRunRequests_;
        }

        else
        {
          v104 = v182;
          v105 = &selRef_initAndAllowRunRequests_;
          if (v100 >= *(v161 + 16))
          {
            goto LABEL_29;
          }

          v106 = *(v167 + 8 * v100 + 32);
        }

        if (__OFADD__(v100, 1))
        {
          break;
        }

        v107 = [v106 v105[410]];
        v108 = sub_2311579A8();
        v110 = v109;

        v192 = v108;
        v193 = v110;
        v191 = 0;
        v189 = 0u;
        v190 = 0u;
        sub_231158208();
        sub_23108C674(&unk_27DD3C300, MEMORY[0x277D72818], MEMORY[0x277D72810]);
        sub_231158228();
        v111 = v186;
        sub_231158A48();
        sub_2311581C8();
        v112 = v171;
        (*v147)(v171, v111, v102);
        v113 = sub_231158238();
        v114 = sub_2311592C8();
        v115 = os_log_type_enabled(v113, v114);
        v187 = v106;
        if (v115)
        {
          v116 = swift_slowAlloc();
          v117 = v112;
          v118 = swift_slowAlloc();
          *&v189 = v118;
          *v116 = v146;
          OUTLINED_FUNCTION_24_2();
          sub_231158A38();
          v119 = sub_231158E68();
          v120 = v102;
          v102 = v121;
          v168 = *v169;
          v168(v117, v120);
          v122 = sub_2310488F8(v119, v102, &v189);

          *(v116 + 4) = v122;
          _os_log_impl(&dword_23103C000, v113, v114, "pull: ingesting type %s", v116, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v118);
          OUTLINED_FUNCTION_40();
          MEMORY[0x2319267C0]();
          OUTLINED_FUNCTION_40();
          MEMORY[0x2319267C0]();

          v123 = v182;
        }

        else
        {

          v168 = *v169;
          v168(v112, v102);
          v123 = v104;
        }

        v150(v123, v153);
        v124 = v170;
        sub_2311583A8();
        v125 = sub_231157A28();
        MEMORY[0x2319242E0](v125);
        OUTLINED_FUNCTION_31_2();
        OUTLINED_FUNCTION_25_4();
        sub_2311587F8();
        v89 = v181;

        OUTLINED_FUNCTION_11_6();
        OUTLINED_FUNCTION_30_2();
        v126();
        OUTLINED_FUNCTION_4_7();
        v127();
        v160(v124, v89);
        (*v163)(v102, v180);
        v102 = v178;
        OUTLINED_FUNCTION_32_2();
        v128();
        ++v100;
        v103 = v177;
      }

      __break(1u);
LABEL_29:
      __break(1u);
    }
  }

  else
  {
    sub_2311581C8();
    v70 = sub_231158238();
    v71 = sub_2311592D8();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      *v72 = 0;
      _os_log_impl(&dword_23103C000, v70, v71, "no tool definition on the closure, malformed data", v72, 2u);
      OUTLINED_FUNCTION_40();
      MEMORY[0x2319267C0]();
    }

    (*(v187 + 1))(v49, v44);
    sub_23108C620();
    swift_allocError();
    *v73 = 1;
    swift_willThrow();
  }
}

uint64_t sub_23108B66C(uint64_t a1, void *a2)
{
  v55 = a1;
  v3 = sub_231158258();
  v46 = *(v3 - 8);
  v47 = v3;
  MEMORY[0x28223BE20](v3);
  v45 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_231157A38();
  v56 = *(v5 - 8);
  v57 = v5;
  MEMORY[0x28223BE20](v5);
  v54 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C310, &unk_231163B00);
  v7 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v9 = (&v44 - v8);
  v10 = sub_231158538();
  v53 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v50 = &v44 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BCE0, &qword_231161D10);
  MEMORY[0x28223BE20](v15 - 8);
  v51 = &v44 - v16;
  v17 = sub_231158418();
  v48 = *(v17 - 8);
  v49 = v17;
  MEMORY[0x28223BE20](v17);
  v44 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2311584F8();
  swift_getKeyPath();
  v19 = swift_allocObject();
  v20 = [a2 sharedItem];
  v21 = [v20 sharedIdentifier];

  v22 = [v21 stringValue];
  v23 = sub_231158E58();
  v25 = v24;

  *(v19 + 16) = v23;
  *(v19 + 24) = v25;
  *v9 = v19;
  v26 = v52;
  (*(v7 + 104))(v9, *MEMORY[0x277D721C8], v52);
  sub_23108C674(&qword_27DD3C320, MEMORY[0x277D724B8], MEMORY[0x277D724A0]);
  sub_23108C6BC();
  v27 = v50;
  sub_2311588F8();
  v28 = v53;

  (*(v7 + 8))(v9, v26);
  v29 = v54;
  v30 = *(v28 + 8);
  v31 = v13;
  v32 = v27;
  v30(v31, v10);
  sub_231157A28();
  v33 = v51;
  v34 = v58;
  sub_231158798();
  if (v34)
  {
    (*(v56 + 8))(v29, v57);
    return (v30)(v32, v10);
  }

  else
  {
    v36 = v48;
    (*(v56 + 8))(v29, v57);
    v30(v32, v10);
    v37 = v33;
    v38 = v49;
    if (__swift_getEnumTagSinglePayload(v33, 1, v49) == 1)
    {
      sub_231051B38(v33, &qword_27DD3BCE0, &qword_231161D10);
      v39 = v45;
      sub_2311581C8();
      v40 = sub_231158238();
      v41 = sub_2311592D8();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&dword_23103C000, v40, v41, "pull: cascade told us to delete already removed tool", v42, 2u);
        MEMORY[0x2319267C0](v42, -1, -1);
      }

      (*(v46 + 8))(v39, v47);
      sub_23108C720();
      swift_allocError();
      return swift_willThrow();
    }

    else
    {
      v43 = v44;
      (*(v36 + 32))(v44, v37, v38);
      sub_2311587B8();
      return (*(v36 + 8))(v43, v38);
    }
  }
}

uint64_t sub_23108BCE0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C310, &unk_231163B00);
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - v3, a1);
  return sub_2311584E8();
}

uint64_t sub_23108BDB0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  LOBYTE(v3) = v3();

  return v3 & 1;
}

uint64_t sub_23108BE2C()
{
  sub_2310602F0(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  sub_23108C7AC(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72));

  return v0;
}

uint64_t sub_23108BE70()
{
  sub_23108BE2C();

  return MEMORY[0x2821FE8D8](v0, 96, 7);
}

uint64_t get_enum_tag_for_layout_string_14VoiceShortcuts24ToolKitCascadeSyncEngineC16PullStateMachineC011TransactionI0O(uint64_t a1)
{
  if ((*(a1 + 32) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_23108BEF8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 33))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 3)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23108BF38(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_23108BF80(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

unint64_t sub_23108BFB0()
{
  result = qword_27DD3C2C8;
  if (!qword_27DD3C2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3C2C8);
  }

  return result;
}

id sub_23108C010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v18[1] = *MEMORY[0x277D85DE8];
  v8 = sub_231158E28();

  v9 = sub_231157958();
  v18[0] = 0;
  v10 = [v5 initWithFilename:v8 directory:v9 protectionClass:a4 error:v18];

  v11 = v18[0];
  if (v10)
  {
    v12 = sub_231157988();
    v13 = *(*(v12 - 8) + 8);
    v14 = v11;
    v13(a3, v12);
  }

  else
  {
    v15 = v18[0];
    sub_231157938();

    swift_willThrow();
    v16 = sub_231157988();
    (*(*(v16 - 8) + 8))(a3, v16);
  }

  return v10;
}

uint64_t sub_23108C180()
{
  OUTLINED_FUNCTION_21();
  v3 = v2;
  v5 = v4;
  v7 = *(v0 + 16);
  v6 = *(v0 + 24);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_23108C230;

  return sub_23108834C(v5, v3, v7, v6);
}

uint64_t sub_23108C230()
{
  OUTLINED_FUNCTION_4_1();
  v1 = *v0;
  OUTLINED_FUNCTION_3_2();
  *v2 = v1;

  OUTLINED_FUNCTION_1();

  return v3();
}

uint64_t sub_23108C320(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C2D8, &qword_231163AF0);
  OUTLINED_FUNCTION_5(v5);
  OUTLINED_FUNCTION_21_6();
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v10 = *(v2 + v9);
  v12 = *(v2 + v11);

  return sub_231088B24(a1, a2, v7, v8, v2 + v6, v10, v12);
}

void sub_23108C3D8(void *a1)
{
  v3 = sub_231158668();
  OUTLINED_FUNCTION_5(v3);
  OUTLINED_FUNCTION_21_6();
  v6 = *(v1 + v5);
  v8 = *(v1 + v7);
  v9 = *(v1 + 16);

  sub_2310891CC(a1, v9, v1 + v4, v6, v8);
}

void sub_23108C4A8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_231158D88();

  [a4 postNotificationName:a1 object:a2 userInfo:v7];
}

uint64_t sub_23108C544(void *a1)
{
  v1 = [a1 typeDefinitions];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_231054A0C(0, &qword_27DD3BED0, 0x277D21170);
  v3 = sub_231158F48();

  return v3;
}

uint64_t sub_23108C5B4(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_231158E58();

  return v4;
}

unint64_t sub_23108C620()
{
  result = qword_27DD3C2F0;
  if (!qword_27DD3C2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3C2F0);
  }

  return result;
}

uint64_t sub_23108C674(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_23108C6BC()
{
  result = qword_27DD3BCE8;
  if (!qword_27DD3BCE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DD3C310, &unk_231163B00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3BCE8);
  }

  return result;
}

unint64_t sub_23108C720()
{
  result = qword_27DD3C330;
  if (!qword_27DD3C330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3C330);
  }

  return result;
}

uint64_t sub_23108C7AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 && a5 != 2)
  {
    if (a5 != 1)
    {
      return result;
    }
  }
}

uint64_t sub_23108C814(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    swift_unknownObjectRetain();
  }

  return result;
}

uint64_t sub_23108C884(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

_BYTE *_s16PullStateMachineC12RemovalErrorOwst(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *_s16PullStateMachineC5ErrorOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_23108CA28()
{
  result = qword_27DD3C348;
  if (!qword_27DD3C348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3C348);
  }

  return result;
}

unint64_t sub_23108CA80()
{
  result = qword_27DD3C350;
  if (!qword_27DD3C350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3C350);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_20_5()
{
}

uint64_t OUTLINED_FUNCTION_22_4()
{
  result = v0;
  *(v2 - 560) = *(v1 + 8);
  return result;
}

uint64_t static EventNodeBuilder.buildBlock(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_231159038();
  sub_231159038();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_231158F08();
}

_BYTE *sub_23108CD40(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t EventNode.erased()(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = sub_2310643C8();
  v6 = EventNode.map<A>(_:)(OUTLINED_FUNCTION_34_3, v4, a1, &type metadata for EmptyEvent, a2, v5);

  return v6;
}

VoiceShortcuts::EmptyEventDescriptor __swiftcall EmptyEventDescriptor.init()()
{
  *v0 = 0x7974706D45;
  v0[1] = 0xE500000000000000;
  return result;
}

uint64_t EventNode.map<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for EventMap(0, a4, a6, a4);

  swift_unknownObjectRetain();
  return sub_23108CF50(a1, a2, v6, a3, a5);
}

uint64_t sub_23108CF50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_0_4();
  v10 = swift_allocObject();
  sub_23108D170(a1, a2, a3, a4, a5);
  return v10;
}

uint64_t sub_23108CFDC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t (**a3)()@<X8>)
{
  v9 = *(a1 + a2 - 16);
  result = sub_23108D104();
  if (result)
  {
    v6 = result;
    v7 = v5;
    result = swift_allocObject();
    *(result + 16) = v9;
    *(result + 32) = v6;
    *(result + 40) = v7;
    v8 = sub_231067678;
  }

  else
  {
    v8 = 0;
  }

  *a3 = v8;
  a3[1] = result;
  return result;
}

uint64_t sub_23108D068(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  if (*a1)
  {
    v6 = a3 + a4;
    v7 = swift_allocObject();
    *(v7 + 16) = *(v6 - 16);
    *(v7 + 32) = v4;
    *(v7 + 40) = v5;
    v8 = sub_231067650;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  sub_231042684(v4, v5);
  return sub_23108D11C(v8, v7);
}

void *sub_23108D170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = 0;
  v5[5] = 0;
  v5[2] = a3;
  v5[3] = a5;
  v10 = swift_allocObject();
  v10[2] = a4;
  v10[3] = a5;
  v10[4] = v5;
  v10[5] = a1;
  v10[6] = a2;
  v11 = *(a5 + 32);
  swift_unknownObjectRetain();

  v11(sub_23108DB38, v10, a4, a5);

  swift_unknownObjectRelease();
  return v5;
}

void (*sub_23108D248(uint64_t a1, uint64_t a2, void (*a3)(uint64_t)))(char *)
{
  v5 = *(*a2 + 80);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v13 - v7;
  result = sub_23108D104();
  if (result)
  {
    v11 = result;
    v12 = v10;
    a3(a1);
    v11(v8);
    sub_231046164(v11, v12);
    return (*(v6 + 8))(v8, v5);
  }

  return result;
}

uint64_t EventMap.__deallocating_deinit()
{
  EventMap.deinit();
  v0 = OUTLINED_FUNCTION_0_4();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void (*sub_23108D3B8(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_23108D134(v2);
  return sub_231056514;
}

uint64_t EmptyEvent.description.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t static EmptyEventDescriptor.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_231159818();
  }
}

uint64_t EmptyEventDescriptor.hashValue.getter()
{
  sub_231159918();
  sub_231158EA8();
  return sub_231159948();
}

uint64_t sub_23108D4D8@<X0>(uint64_t (**a1)()@<X8>)
{
  result = sub_23108D104();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    v6 = sub_231066790;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

uint64_t sub_23108D548(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_231066768;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_231042684(v1, v2);
  return sub_23108D11C(v4, v3);
}

uint64_t sub_23108D5D8(void (*a1)(uint64_t, void))
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  a1(v3, *(v1 + 40));
  return v3;
}

uint64_t sub_23108D638(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  swift_beginAccess();
  v7 = *(v3 + 32);
  v8 = *(v3 + 40);
  *(v3 + 32) = a1;
  *(v3 + 40) = a2;
  return a3(v7, v8);
}

void *sub_23108D6E8(void (*a1)(void, void))
{
  swift_unknownObjectRelease();
  a1(*(v1 + 32), *(v1 + 40));
  return v1;
}

uint64_t ErasedEvent.__deallocating_deinit()
{
  ErasedEvent.deinit();
  v0 = OUTLINED_FUNCTION_0_4();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

unint64_t sub_23108D754(uint64_t a1)
{
  result = sub_23108D77C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23108D77C()
{
  result = qword_27DD3C440;
  if (!qword_27DD3C440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3C440);
  }

  return result;
}

unint64_t sub_23108D7D0(uint64_t a1)
{
  result = sub_23108D7F8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23108D7F8()
{
  result = qword_27DD3C448;
  if (!qword_27DD3C448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3C448);
  }

  return result;
}

unint64_t sub_23108D850()
{
  result = qword_27DD3C450[0];
  if (!qword_27DD3C450[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD3C450);
  }

  return result;
}

uint64_t sub_23108D8C4(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    a2 = 0;
  }

  return sub_23108D11C(a1, a2);
}

void (*sub_23108D8D0(void *a1))(uint64_t a1)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  swift_beginAccess();
  v4 = *(v1 + 32);
  if (v4)
  {
    v5 = *(v1 + 40);
  }

  else
  {
    v5 = 0;
  }

  v3[3] = v4;
  v3[4] = v5;
  return sub_23108D950;
}

void sub_23108D950(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 32);
  v2 = *(*a1 + 40);
  v4 = *(*a1 + 24);
  if (!v4)
  {
    v3 = 0;
  }

  *(v2 + 32) = v4;
  *(v2 + 40) = v3;
  swift_endAccess();

  free(v1);
}

uint64_t OUTLINED_FUNCTION_1_10(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t static DiskArbitrationEventDescriptor.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_231159818();
  }
}

uint64_t DiskArbitrationEventDescriptor.hashValue.getter()
{
  sub_231159918();
  sub_231158EA8();
  return sub_231159948();
}

uint64_t XPCDiskArbitrationNotificationEventStream.descriptor(for:)@<X0>(uint64_t *a1@<X8>)
{
  result = sub_231158148();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_23108DC2C(uint64_t a1)
{
  result = sub_23108DC54();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23108DC54()
{
  result = qword_27DD3C4D8;
  if (!qword_27DD3C4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3C4D8);
  }

  return result;
}

unint64_t sub_23108DCAC()
{
  result = qword_27DD3C4E0;
  if (!qword_27DD3C4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3C4E0);
  }

  return result;
}

uint64_t sub_23108DD00(uint64_t a1)
{
  result = sub_23108DE4C(&qword_27DD3C4E8, MEMORY[0x277D79D38], MEMORY[0x277D79D48]);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23108DD5C()
{
  result = qword_27DD3C4F0;
  if (!qword_27DD3C4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3C4F0);
  }

  return result;
}

uint64_t sub_23108DDC8(uint64_t a1)
{
  v2 = MEMORY[0x277D79D58];
  *(a1 + 8) = sub_23108DE4C(&unk_280CCB0A0, MEMORY[0x277D79D58], MEMORY[0x277D79D50]);
  result = sub_23108DE4C(&unk_280CCB0B0, v2, &protocol conformance descriptor for XPCDiskArbitrationNotificationEventStream);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_23108DE4C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23108DEA8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    if (a3 == 1)
    {
      OUTLINED_FUNCTION_7_8();
      sub_231159588();

      OUTLINED_FUNCTION_48();
    }

    else
    {
      OUTLINED_FUNCTION_7_8();
      sub_231159588();

      OUTLINED_FUNCTION_48();
      v3 = v5 + 6;
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_8();
    sub_231159588();

    OUTLINED_FUNCTION_48();
    v3 = v4 + 2;
  }

  v8 = v3;
  v6 = OUTLINED_FUNCTION_16_0();
  MEMORY[0x231924980](v6);
  return v8;
}

unint64_t sub_23108DF88()
{
  OUTLINED_FUNCTION_7_8();
  sub_231159588();

  v0 = OUTLINED_FUNCTION_16_0();
  MEMORY[0x231924980](v0);
  MEMORY[0x231924980](62, 0xE100000000000000);
  return 0xD00000000000001FLL;
}

uint64_t sub_23108E00C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_231159818();
  }
}

uint64_t sub_23108E02C(uint64_t a1, uint64_t a2)
{
  sub_231159918();
  sub_231158EA8();
  return sub_231159948();
}

uint64_t sub_23108E07C()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_23108E0D8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_231158A88();
  v3[5] = v4;
  OUTLINED_FUNCTION_5(v4);
  v3[6] = v5;
  v3[7] = OUTLINED_FUNCTION_21_0();
  v6 = sub_231158AA8();
  v3[8] = v6;
  OUTLINED_FUNCTION_5(v6);
  v3[9] = v7;
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v8 = sub_2311584A8();
  v3[12] = v8;
  OUTLINED_FUNCTION_5(v8);
  v3[13] = v9;
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v10 = sub_231157A38();
  v3[16] = v10;
  OUTLINED_FUNCTION_5(v10);
  v3[17] = v11;
  v3[18] = OUTLINED_FUNCTION_21_0();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C310, &unk_231163B00);
  v3[19] = v12;
  OUTLINED_FUNCTION_5(v12);
  v3[20] = v13;
  v3[21] = OUTLINED_FUNCTION_21_0();
  v14 = sub_231158538();
  v3[22] = v14;
  OUTLINED_FUNCTION_5(v14);
  v3[23] = v15;
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BCE0, &qword_231161D10);
  v3[26] = OUTLINED_FUNCTION_21_0();
  v16 = sub_231158418();
  v3[27] = v16;
  OUTLINED_FUNCTION_5(v16);
  v3[28] = v17;
  v3[29] = OUTLINED_FUNCTION_21_0();

  return MEMORY[0x2822009F8](sub_23108E3CC, 0, 0);
}

uint64_t sub_23108E3CC(uint64_t a1)
{
  v2 = v1[24];
  v62 = v1[23];
  v3 = v1[21];
  v63 = v1[22];
  v5 = v1[19];
  v4 = v1[20];
  v6 = v1[3];
  v7 = v1[2];
  sub_231158508();
  swift_getKeyPath();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  *v3 = v8;
  (*(v4 + 104))(v3, *MEMORY[0x277D721C8], v5);
  sub_23108FC88(&qword_27DD3C320, MEMORY[0x277D724B8], MEMORY[0x277D724A0]);
  sub_23108C6BC();
  swift_bridgeObjectRetain_n();
  sub_2311588F8();

  (*(v4 + 8))(v3, v5);
  v9 = *(v62 + 8);
  v9(v2, v63);
  sub_231157A28();
  sub_2311586D8();
  v10 = v1[26];
  v11 = v1[27];
  v12 = v1[25];
  v13 = v1[22];
  (*(v1[17] + 8))(v1[18], v1[16]);
  v9(v12, v13);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    v14 = v1[2];
    v15 = v1[3];
    sub_23108FBCC(v1[26]);
    sub_23108FC34();
    swift_allocError();
    *v16 = v14;
    *(v16 + 8) = v15;
    *(v16 + 16) = 0;
    swift_willThrow();
LABEL_16:
    OUTLINED_FUNCTION_1_11();

    OUTLINED_FUNCTION_1();

    return v51();
  }

  v18 = v1[28];
  v17 = v1[29];
  v20 = v1[26];
  v19 = v1[27];
  v22 = v1[14];
  v21 = v1[15];
  v23 = v1[12];
  v24 = v1[13];

  (*(v18 + 32))(v17, v20, v19);
  sub_2311583B8();
  sub_231158498();
  sub_23108FC88(&qword_27DD3C520, MEMORY[0x277D72418], MEMORY[0x277D72420]);
  LOBYTE(v19) = sub_231159478();
  v25 = *(v24 + 8);
  v25(v22, v23);
  v25(v21, v23);
  v26 = v1[29];
  if ((v19 & 1) == 0)
  {
    v46 = v1[27];
    v45 = v1[28];
    v47 = sub_2311583E8();
    v49 = v48;
    sub_23108FC34();
    swift_allocError();
    *v50 = v47;
    *(v50 + 8) = v49;
    *(v50 + 16) = 1;
    swift_willThrow();
    (*(v45 + 8))(v26, v46);
    goto LABEL_16;
  }

  result = sub_231158398();
  v65 = *(result + 16);
  v66 = result;
  if (v65)
  {
    v28 = 0;
    v29 = v1[9];
    v30 = v1[6];
    v64 = result + ((*(v29 + 80) + 32) & ~*(v29 + 80));
    v61 = *MEMORY[0x277D72FC8];
    v31 = (v29 + 8);
    v60 = (v30 + 32);
    v32 = (v30 + 8);
    while (v28 < *(v66 + 16))
    {
      v34 = v1[10];
      v33 = v1[11];
      v35 = v1[8];
      v36 = *(v29 + 16);
      v36(v33, v64 + *(v29 + 72) * v28, v35);
      v36(v34, v33, v35);
      if ((*(v29 + 88))(v34, v35) == v61)
      {
        v37 = v1[10];
        v38 = v1[7];
        v39 = v1[5];
        (*(v29 + 96))(v37, v1[8]);
        (*v60)(v38, v37, v39);
        sub_231157B38();
        LOBYTE(v37) = sub_231157B18();
        (*v32)(v38, v39);
        if ((v37 & 1) == 0)
        {
          v53 = v1[28];
          v52 = v1[29];
          v54 = v1[27];
          v55 = v1[11];
          v56 = v1[8];

          v67 = sub_2311583E8();
          v68 = v57;
          MEMORY[0x231924980](8250, 0xE200000000000000);
          v58 = sub_231158A98();
          MEMORY[0x231924980](v58);

          sub_23108FC34();
          swift_allocError();
          *v59 = v67;
          *(v59 + 8) = v68;
          *(v59 + 16) = 2;
          swift_willThrow();
          (*v31)(v55, v56);
          (*(v53 + 8))(v52, v54);
          goto LABEL_16;
        }

        result = (*v31)(v1[11], v1[8]);
      }

      else
      {
        v40 = v1[10];
        v41 = v1[8];
        v42 = *v31;
        (*v31)(v1[11], v41);
        result = (v42)(v40, v41);
      }

      if (v65 == ++v28)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:

    v43 = swift_task_alloc();
    v1[30] = v43;
    *v43 = v1;
    v43[1] = sub_23108EAF4;
    v44 = v1[29];

    return sub_23108F1D4(v44);
  }

  return result;
}

uint64_t sub_23108EAF4()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_9_8();
  v4 = v3;
  OUTLINED_FUNCTION_2_4();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_3_2();
  *v7 = v6;
  *(v4 + 248) = v0;

  if (!v0)
  {
    *(v4 + 256) = v1;
  }

  OUTLINED_FUNCTION_10_8();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_23108EBF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_17_2();
  if (v15[32])
  {
    OUTLINED_FUNCTION_8_8();
    v35 = v15[11];
    v36 = v15[10];
    v37 = v15[7];
    (*(v16 + 8))(v14);

    OUTLINED_FUNCTION_14_7();
    OUTLINED_FUNCTION_10();

    return v19(v17, v18, v19, v20, v21, v22, v23, v24, v35, v36, v37, a12, a13, a14);
  }

  else
  {
    v26 = swift_task_alloc();
    v15[33] = v26;
    *v26 = v15;
    v26[1] = sub_23108ED5C;
    OUTLINED_FUNCTION_16_0();
    OUTLINED_FUNCTION_10();

    return MEMORY[0x2821DA708](v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_23108ED5C()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_9_8();
  v4 = v3;
  OUTLINED_FUNCTION_2_4();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_3_2();
  *v7 = v6;
  *(v4 + 272) = v0;

  if (!v0)
  {
    *(v4 + 280) = v1;
  }

  OUTLINED_FUNCTION_10_8();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_23108EE60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_17_2();
  OUTLINED_FUNCTION_8_8();
  v27 = *(v15 + 80);
  v28 = *(v15 + 56);
  v29 = v16;
  (*(v17 + 8))(v14);

  OUTLINED_FUNCTION_14_7();
  OUTLINED_FUNCTION_10();

  return v20(v18, v19, v20, v21, v22, v23, v24, v25, v27, v28, v29, a12, a13, a14);
}

uint64_t sub_23108EF44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_17_2();
  (*(v14[28] + 8))(v14[29], v14[27]);
  OUTLINED_FUNCTION_1_11();
  v25 = v14[7];
  v26 = v15;

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_10();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, v25, v26, a12, a13, a14);
}

uint64_t sub_23108F028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_17_2();
  (*(v14[28] + 8))(v14[29], v14[27]);
  OUTLINED_FUNCTION_1_11();
  v25 = v14[7];
  v26 = v15;

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_10();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, v25, v26, a12, a13, a14);
}

void *sub_23108F10C()
{
  if (*(v0 + 24))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_231158548();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_23108F17C()
{
  sub_23108F10C();

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_23108F1D4(uint64_t a1)
{
  v2[13] = a1;
  v2[14] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BCB0, &qword_231164120);
  v2[15] = OUTLINED_FUNCTION_21_0();
  v3 = sub_231158418();
  v2[16] = v3;
  OUTLINED_FUNCTION_5(v3);
  v2[17] = v4;
  v2[18] = OUTLINED_FUNCTION_21_0();
  v5 = sub_231158488();
  v2[19] = v5;
  OUTLINED_FUNCTION_5(v5);
  v2[20] = v6;
  v2[21] = OUTLINED_FUNCTION_21_0();

  return MEMORY[0x2822009F8](sub_23108F300, 0, 0);
}

uint64_t sub_23108F300(uint64_t a1)
{
  if (sub_2311583E8() == 0xD00000000000001ALL && 0x80000002311694F0 == v2)
  {
  }

  else
  {
    v4 = sub_231159818();

    if ((v4 & 1) == 0)
    {

      OUTLINED_FUNCTION_14_7();

      return v5(0);
    }
  }

  v7 = v1[15];
  (*(v1[17] + 16))(v1[18], v1[13], v1[16]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BCD0, &qword_231161CF8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231161B80;
  *(inited + 32) = 0xD000000000000016;
  *(inited + 40) = 0x8000000231169510;
  v9 = sub_231158968();
  v10 = swift_allocBox();
  *v11 = 0x6974616D6F747541;
  v11[1] = 0xE900000000000063;
  (*(*(v9 - 8) + 104))(v11, *MEMORY[0x277D729B8], v9);
  v12 = sub_231158978();
  v13 = MEMORY[0x277D72A68];
  *(inited + 72) = v12;
  *(inited + 80) = v13;
  *__swift_allocate_boxed_opaque_existential_1((inited + 48)) = v10;
  (*(*(v12 - 8) + 104))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BCD8, &unk_231161D00);
  sub_231158DB8();
  v14 = sub_2311585A8();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v14);
  sub_231158448();
  v15 = swift_task_alloc();
  v1[22] = v15;
  *v15 = v1;
  v15[1] = sub_23108F670;
  v16 = OUTLINED_FUNCTION_16_0();

  return MEMORY[0x2821DA7E8](v16);
}

uint64_t sub_23108F670()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_9_8();
  v4 = v3;
  OUTLINED_FUNCTION_2_4();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_3_2();
  *v7 = v6;
  *(v4 + 184) = v0;

  if (!v0)
  {
    *(v4 + 192) = v1;
  }

  OUTLINED_FUNCTION_10_8();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_23108F774()
{
  OUTLINED_FUNCTION_21();
  v1 = v0[24];
  (*(v0[20] + 8))(v0[21], v0[19]);

  OUTLINED_FUNCTION_14_7();

  return v2(v1);
}

uint64_t sub_23108F810()
{
  OUTLINED_FUNCTION_21();
  (*(v0[20] + 8))(v0[21], v0[19]);

  OUTLINED_FUNCTION_1();

  return v1();
}

unint64_t sub_23108F8A8()
{
  result = qword_27DD3C4F8;
  if (!qword_27DD3C4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3C4F8);
  }

  return result;
}

uint64_t sub_23108F8FC()
{
  OUTLINED_FUNCTION_21();
  *(v0 + 16) = v1;
  v3 = *v2;
  v4 = v2[1];
  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_23108F9A0;

  return sub_23108E0D8(v3, v4);
}

uint64_t sub_23108F9A0()
{
  OUTLINED_FUNCTION_21();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2_4();
  *v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v7 = v6;

  if (!v0)
  {
    **(v4 + 16) = v3;
  }

  v8 = *(v6 + 8);

  return v8();
}

unint64_t sub_23108FA9C(uint64_t a1)
{
  *(a1 + 8) = sub_23108FACC();
  result = sub_23108FB20();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_23108FACC()
{
  result = qword_27DD3C500;
  if (!qword_27DD3C500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3C500);
  }

  return result;
}

unint64_t sub_23108FB20()
{
  result = qword_27DD3C508;
  if (!qword_27DD3C508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3C508);
  }

  return result;
}

unint64_t sub_23108FB78()
{
  result = qword_27DD3C510;
  if (!qword_27DD3C510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3C510);
  }

  return result;
}

uint64_t sub_23108FBCC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BCE0, &qword_231161D10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23108FC34()
{
  result = qword_27DD3C518;
  if (!qword_27DD3C518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3C518);
  }

  return result;
}

uint64_t sub_23108FC88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23108FCDC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23108FD1C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_23108FDF0(uint64_t a1)
{
  result = sub_2311590F8();
  if (v2 <= 0x3F)
  {
    result = sub_231157BE8();
    if (v3 <= 0x3F)
    {
      sub_2311590E8();
      result = sub_231159448();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t static AppProtectionEventDescriptor.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_231159818();
  }
}

uint64_t AppProtectionEventDescriptor.hashValue.getter()
{
  sub_231159918();
  sub_231158EA8();
  return sub_231159948();
}

uint64_t XPCAppProtectionEventStream.Event.description.getter()
{
  sub_231159588();
  MEMORY[0x231924980](0xD000000000000015, 0x8000000231169590);
  v0 = sub_231158068();
  MEMORY[0x231924980](v0);

  MEMORY[0x231924980](0x506E656464696820, 0xEF3D64616F6C7961);
  sub_231158048();
  v1 = MEMORY[0x231924A30]();
  v3 = v2;

  MEMORY[0x231924980](v1, v3);

  MEMORY[0x231924980](0xD000000000000011, 0x80000002311695B0);
  sub_231158058();
  v4 = MEMORY[0x231924A30]();
  v6 = v5;

  MEMORY[0x231924980](v4, v6);

  MEMORY[0x231924980](62, 0xE100000000000000);
  return 0;
}

uint64_t XPCAppProtectionEventStream.descriptor(for:)@<X0>(uint64_t *a2@<X8>)
{
  result = sub_231158068();
  *a2 = result;
  a2[1] = v4;
  return result;
}

unint64_t sub_23109011C(uint64_t a1)
{
  result = sub_231090144();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_231090144()
{
  result = qword_27DD3C528;
  if (!qword_27DD3C528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3C528);
  }

  return result;
}

unint64_t sub_23109019C()
{
  result = qword_27DD3C530;
  if (!qword_27DD3C530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3C530);
  }

  return result;
}

uint64_t sub_2310901F0(uint64_t a1)
{
  result = sub_23109033C(&qword_27DD3C538, MEMORY[0x277D79CC0], &protocol conformance descriptor for XPCAppProtectionEventStream.Event);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23109024C()
{
  result = qword_27DD3C540;
  if (!qword_27DD3C540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3C540);
  }

  return result;
}

uint64_t sub_2310902B8(uint64_t a1)
{
  v2 = MEMORY[0x277D79CD8];
  *(a1 + 8) = sub_23109033C(&unk_280CCB128, MEMORY[0x277D79CD8], MEMORY[0x277D79CD0]);
  result = sub_23109033C(&qword_280CCB138, v2, &protocol conformance descriptor for XPCAppProtectionEventStream);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_23109033C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *SpotlightIndexDiffer.__allocating_init(index:)(uint64_t a1)
{
  OUTLINED_FUNCTION_5_9();
  result = swift_allocObject();
  result[5] = &type metadata for SpotlightIndexDiffer.DataSource;
  result[6] = &off_2845DAE28;
  result[2] = a1;
  return result;
}

void sub_2310903D8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

BOOL sub_231090444(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = (*(a3 + 16))(a2, a3);
  v8 = v7;
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v9);
  v11 = (*(v10 + 16))(v9, v10);
  if (v8 & 1) != 0 || (v12)
  {
    return 0;
  }

  v14 = v11;
  v15 = (*(a3 + 8))(a2, a3);
  v17 = v16;
  v18 = a1[3];
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v18);
  if (v15 == (*(v19 + 8))(v18, v19) && v17 == v20)
  {
  }

  else
  {
    v22 = sub_231159818();

    if ((v22 & 1) == 0)
    {
      return 0;
    }
  }

  return v6 == v14;
}

uint64_t sub_2310905AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_2310905D0, 0, 0);
}

uint64_t sub_2310905D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v17 = *(v16 + 24);
  v18 = swift_task_alloc();
  *(v16 + 48) = v18;
  v19 = *(v16 + 32);
  *(v18 + 16) = v17;
  *(v18 + 24) = v19;
  v20 = swift_task_alloc();
  *(v16 + 56) = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C5F0, &qword_2311645D0);
  *v20 = v16;
  v20[1] = sub_2310906DC;
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822008A0](v21, v22, v23, 0xD000000000000022, v24, v25, v18, v26, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_2310906DC()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v5 = v4;
  *(v3 + 64) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_231090800()
{
  OUTLINED_FUNCTION_4_1();

  v1 = *(v0 + 8);

  return v1();
}

void sub_231090860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v44 = a1;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C5F8, &unk_2311645D8);
  v40 = *(v45 - 8);
  v42 = *(v40 + 64);
  MEMORY[0x28223BE20](v45);
  v43 = &v36 - v7;
  v8 = sub_231158368();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v39 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  aBlock = 0;
  v47 = 0xE000000000000000;
  sub_231159588();

  aBlock = 0xD00000000000001ALL;
  v47 = 0x8000000231169640;
  MEMORY[0x231924980](a2, a3);
  MEMORY[0x231924980](34, 0xE100000000000000);
  v14 = aBlock;
  v37 = v47;
  v15 = [objc_allocWithZone(MEMORY[0x277CC34A0]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C600, &qword_231161B60);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_231161B80;
  *(v16 + 32) = sub_231158C98();
  *(v16 + 40) = v17;
  sub_231092F10(v16, v15);
  v18 = *(v9 + 16);
  v41 = a4;
  v18(v13, a4, v8);
  v19 = (*(v9 + 88))(v13, v8);
  if (v19 == *MEMORY[0x277D721F8])
  {
    v20 = v14;
LABEL_5:
    v21 = sub_231158F38();

    [v15 setFetchAttributes_];

    v22 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DD3C560, &qword_231164438);
    *(v22 + 16) = sub_231158DB8();
    v23 = objc_allocWithZone(MEMORY[0x277CC3498]);
    v38 = v15;
    v24 = sub_231092B74(v20, v37, v15);
    v25 = v39;
    v18(v39, v41, v8);
    v26 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v27 = swift_allocObject();
    (*(v9 + 32))(v27 + v26, v25, v8);
    *(v27 + ((v10 + v26 + 7) & 0xFFFFFFFFFFFFFFF8)) = v22;
    v50 = sub_2310935B8;
    v51 = v27;
    aBlock = MEMORY[0x277D85DD0];
    v47 = 1107296256;
    v48 = sub_2310915C4;
    v49 = &block_descriptor_9;
    v28 = _Block_copy(&aBlock);

    [v24 setFoundItemsHandler_];
    _Block_release(v28);
    v29 = v40;
    v30 = v43;
    v31 = v45;
    (*(v40 + 16))(v43, v44, v45);
    v32 = (*(v29 + 80) + 16) & ~*(v29 + 80);
    v33 = (v42 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
    v34 = swift_allocObject();
    (*(v29 + 32))(v34 + v32, v30, v31);
    *(v34 + v33) = v22;
    v50 = sub_231093640;
    v51 = v34;
    aBlock = MEMORY[0x277D85DD0];
    v47 = 1107296256;
    v48 = sub_2310903D8;
    v49 = &block_descriptor_20;
    v35 = _Block_copy(&aBlock);

    [v24 setCompletionHandler_];
    _Block_release(v35);
    [v24 start];

    return;
  }

  if (v19 == *MEMORY[0x277D72200])
  {
    v20 = v14;
    goto LABEL_5;
  }

  sub_231159808();
  __break(1u);
}

void sub_231090E00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v64 = a3;
  v55 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C610, &unk_2311645E8);
  MEMORY[0x28223BE20](v4 - 8);
  v51 = &v49 - v5;
  v6 = sub_231158368();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v50 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v49 - v10;
  v59 = sub_23106FF58(a1);
  v12 = 0;
  v58 = a1 & 0xC000000000000001;
  v57 = a1;
  v56 = a1 & 0xFFFFFFFFFFFFFF8;
  v61 = *MEMORY[0x277D721F8];
  v60 = (v7 + 104);
  v62 = (v7 + 8);
  v52 = (v7 + 32);
  v54 = v6;
  v53 = v11;
  while (v59 != v12)
  {
    if (v58)
    {
      v13 = MEMORY[0x231925080](v12, v57);
    }

    else
    {
      if (v12 >= *(v56 + 16))
      {
        goto LABEL_34;
      }

      v13 = *(v57 + 8 * v12 + 32);
    }

    v14 = v13;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      sub_231159888();
      __break(1u);
      return;
    }

    v15 = *v60;
    (*v60)(v11, v61, v6);
    v16 = [v14 attributeSet];
    v17 = sub_231158438();
    if (!v17)
    {
      goto LABEL_36;
    }

    v18 = v17;
    v19 = [v16 valueForCustomKey_];

    if (v19)
    {
      v69[0] = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C620, &qword_2311645F8);
      if (swift_dynamicCast())
      {
        v20 = v51;
        sub_231158348();
        (*v62)(v11, v6);
        if (__swift_getEnumTagSinglePayload(v20, 1, v6) == 1)
        {
          v21 = v50;
          v15(v50, v61, v6);
          if (__swift_getEnumTagSinglePayload(v20, 1, v6) != 1)
          {
            sub_231093B90(v20, &qword_27DD3C610, &unk_2311645E8);
          }
        }

        else
        {
          v21 = v50;
          (*v52)(v50, v20, v6);
        }

        (*v52)(v11, v21, v6);
      }
    }

    sub_2310936CC();
    sub_231158F18();
    sub_231158F18();
    if (v70 == v69[0] && *(&v70 + 1) == v69[1])
    {
    }

    else
    {
      v23 = sub_231159818();

      if ((v23 & 1) == 0)
      {
        (*v62)(v11, v6);

        goto LABEL_30;
      }
    }

    v63 = v12;
    v24 = [v14 uniqueIdentifier];
    v25 = sub_231158E58();
    v27 = v26;

    v28 = sub_231054A0C(0, &qword_280CCAF38, 0x277CC34B0);
    v71 = v28;
    v72 = &protocol witness table for CSSearchableItem;
    *&v70 = v14;
    v29 = v64;
    swift_beginAccess();
    sub_23104613C(&v70, v69);
    v30 = __swift_mutable_project_boxed_opaque_existential_1(v69, v69[3]);
    MEMORY[0x28223BE20](v30);
    v32 = (&v49 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v33 + 16))(v32);
    v34 = *v32;
    v35 = v14;
    swift_isUniquelyReferenced_nonNull_native();
    v36 = *(v29 + 16);
    *(v29 + 16) = 0x8000000000000000;
    v67 = &protocol witness table for CSSearchableItem;
    v68 = v36;
    v66 = v28;
    *&v65 = v34;
    v37 = sub_23105FECC(v25, v27);
    if (__OFADD__(v36[2], (v38 & 1) == 0))
    {
      goto LABEL_35;
    }

    v39 = v37;
    v40 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C558, &qword_231164430);
    if (sub_231159698())
    {
      v41 = sub_23105FECC(v25, v27);
      if ((v40 & 1) != (v42 & 1))
      {
        goto LABEL_37;
      }

      v39 = v41;
    }

    v43 = v68;
    if (v40)
    {
      v44 = (v68[7] + 40 * v39);
      __swift_destroy_boxed_opaque_existential_0(v44);
      sub_23104613C(&v65, v44);
    }

    else
    {
      v45 = __swift_mutable_project_boxed_opaque_existential_1(&v65, v66);
      MEMORY[0x28223BE20](v45);
      v47 = (&v49 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v48 + 16))(v47);
      sub_231093AD0(v39, v25, v27, *v47, v43);
      __swift_destroy_boxed_opaque_existential_0(&v65);
    }

    *(v64 + 16) = v43;

    __swift_destroy_boxed_opaque_existential_0(v69);
    swift_endAccess();

    v11 = v53;
    v6 = v54;
    (*v62)(v53, v54);
    v12 = v63;
LABEL_30:
    ++v12;
  }
}

uint64_t sub_2310915C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_231054A0C(0, &qword_280CCAF38, 0x277CC34B0);
  v3 = sub_231158F48();

  v2(v3);
}

uint64_t sub_231091648(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v3 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C5F8, &unk_2311645D8);
    return sub_231159058();
  }

  else
  {
    swift_beginAccess();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C5F8, &unk_2311645D8);
    return sub_231159068();
  }
}

uint64_t sub_2310916E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_231091798;

  return sub_2310905AC(a1, a2, a3);
}

uint64_t sub_231091798()
{
  OUTLINED_FUNCTION_4_1();
  v3 = v2;
  OUTLINED_FUNCTION_26();
  v4 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

void *SpotlightIndexDiffer.init(index:)(uint64_t a1)
{
  v1[5] = &type metadata for SpotlightIndexDiffer.DataSource;
  v1[6] = &off_2845DAE28;
  v1[2] = a1;
  return v1;
}

uint64_t SpotlightIndexDiffer.__allocating_init(dataSource:)(__int128 *a1)
{
  OUTLINED_FUNCTION_5_9();
  v2 = swift_allocObject();
  sub_23104613C(a1, v2 + 16);
  return v2;
}

uint64_t sub_231091904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 352) = a4;
  *(v5 + 360) = v4;
  *(v5 + 336) = a2;
  *(v5 + 344) = a3;
  v8 = sub_231158C58();
  *(v5 + 368) = v8;
  OUTLINED_FUNCTION_5(v8);
  *(v5 + 376) = v9;
  *(v5 + 384) = swift_task_alloc();
  v10 = *(a3 - 8);
  *(v5 + 392) = v10;
  *(v5 + 400) = *(v10 + 64);
  *(v5 + 408) = swift_task_alloc();
  *(v5 + 416) = swift_task_alloc();
  *(v5 + 424) = swift_task_alloc();
  *(v5 + 432) = swift_task_alloc();
  *(v5 + 440) = swift_task_alloc();
  *(v5 + 448) = *a1;
  *(v5 + 496) = *(a1 + 16);
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_231091A64()
{
  v1 = v0[45];
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_0(v1 + 2, v2);
  v4 = sub_231158CA8();
  v6 = v5;
  v0[58] = v5;
  v10 = (*(v3 + 8) + **(v3 + 8));
  v7 = swift_task_alloc();
  v0[59] = v7;
  *v7 = v0;
  v7[1] = sub_231091BB0;
  v8 = v0[42];

  return v10(v4, v6, v8, v2, v3);
}

uint64_t sub_231091BB0()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  *(v2 + 480) = v1;
  *(v2 + 488) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_231091CC0()
{
  v1 = (v0 + 344);
  v2 = *(v0 + 496);
  v3 = *(v0 + 448);
  v93 = sub_231158FB8();
  v94 = sub_231158FB8();
  sub_231158FB8();
  if ((v2 & 1) == 0)
  {

    v6 = sub_231158F58();
    v95 = v6;
    if (v6 == sub_231158FF8())
    {
LABEL_5:
      sub_231092F7C(*(v0 + 448), *(v0 + 456), 0);

      v79 = 0xE400000000000000;
      v80 = sub_2310927B4(v63);
      v62 = 1819047270;
      goto LABEL_33;
    }

    v89 = *(*(v0 + 352) + 8);
    v29 = *(v0 + 392);
    v78 = *(v0 + 400);
    v92 = (v29 + 16);
    v86 = (v29 + 32);
    v82 = v29;
    v84 = (v29 + 8);
    v30 = *(v0 + 480);
    while (1)
    {
      v31 = sub_231158FD8();
      sub_231158F88();
      if (v31)
      {
        v32 = *(v82 + 16);
        v32(*(v0 + 440), v3 + ((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v6, *(v0 + 344));
      }

      else
      {
        result = sub_2311595A8();
        if (v78 != 8)
        {
          goto LABEL_37;
        }

        v59 = result;
        v60 = *(v0 + 440);
        v61 = *(v0 + 344);
        *(v0 + 328) = v59;
        v32 = *v92;
        (*v92)(v60, v0 + 328, v61);
        swift_unknownObjectRelease();
      }

      v34 = *(v0 + 432);
      v33 = *(v0 + 440);
      v36 = *(v0 + 344);
      v35 = *(v0 + 352);
      sub_231159028();
      (*v86)(v34, v33, v36);
      v37 = v89(v36, v35);
      if (*(v30 + 16))
      {
        v39 = sub_23105FECC(v37, v38);
        v41 = v40;

        if (v41)
        {
          v87 = v30;
          v43 = *(v0 + 424);
          v42 = *(v0 + 432);
          v45 = *(v0 + 344);
          v44 = *(v0 + 352);
          sub_2310548A0(*(v87 + 56) + 40 * v39, v0 + 176);
          sub_23104613C((v0 + 176), v0 + 136);
          v46 = *(v0 + 160);
          v47 = *(v0 + 168);
          __swift_project_boxed_opaque_existential_0((v0 + 136), v46);
          *(v0 + 240) = v45;
          *(v0 + 248) = v44;
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 216));
          v32(boxed_opaque_existential_1, v42, v45);
          sub_231090444((v0 + 216), v46, v47);
          __swift_destroy_boxed_opaque_existential_0((v0 + 216));
          v32(v43, v42, v45);
          sub_231159038();
          v30 = v87;
          sub_231159008();
          v49 = v89(v45, v44);
          v51 = sub_23105FECC(v49, v50);
          LOBYTE(v46) = v52;

          if (v46)
          {
            swift_isUniquelyReferenced_nonNull_native();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C558, &qword_231164430);
            sub_231159698();

            sub_23104613C((*(v87 + 56) + 40 * v51), v0 + 256);
            __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DD3C560, &qword_231164438);
            sub_2311596B8();
            v53 = OUTLINED_FUNCTION_11_7();
            v54(v53);
          }

          else
          {
            v57 = OUTLINED_FUNCTION_11_7();
            v58(v57);
            *(v0 + 288) = 0;
            *(v0 + 256) = 0u;
            *(v0 + 272) = 0u;
          }

          sub_231093B90(v0 + 256, &qword_27DD3C550, &qword_231164428);
          __swift_destroy_boxed_opaque_existential_0((v0 + 136));
          goto LABEL_29;
        }
      }

      else
      {
      }

      v55 = *(v0 + 432);
      v56 = *(v0 + 344);
      v32(*(v0 + 424), v55, v56);
      sub_231159038();
      sub_231159008();
      (*v84)(v55, v56);
LABEL_29:
      v6 = v95;
      if (v95 == sub_231158FF8())
      {
        goto LABEL_5;
      }
    }
  }

  v4 = *(v0 + 456);

  v5 = sub_231158F58();
  v96 = v5;
  v80 = v4;
  if (v5 == sub_231158FF8())
  {
LABEL_3:

    v79 = 0xE700000000000000;
    v62 = 0x6C616974726170;
LABEL_33:
    v77 = v62;
    v65 = *(v0 + 376);
    v64 = *(v0 + 384);
    v75 = *(v0 + 368);
    sub_231158B68();
    sub_231158B58();
    *(v0 + 304) = sub_231158FF8();
    v66 = sub_2311597C8();
    v68 = v67;
    *(v0 + 312) = sub_231158FF8();
    v69 = sub_2311597C8();
    v71 = v70;
    *(v0 + 320) = *(v80 + 16);
    v72 = sub_2311597C8();
    *v64 = v77;
    v64[1] = v79;
    v64[2] = v66;
    v64[3] = v68;
    v64[4] = v69;
    v64[5] = v71;
    v64[6] = v72;
    v64[7] = v73;
    (*(v65 + 104))(v64, *MEMORY[0x277D73270], v75);
    sub_231158B48();

    (*(v65 + 8))(v64, v75);

    v74 = *(v0 + 8);

    return v74(v93, v94, v80);
  }

  v7 = *(v0 + 392);
  v91 = (v7 + 16);
  v88 = *(*(v0 + 352) + 8);
  v90 = *(v0 + 480);
  v85 = (v7 + 8);
  v76 = *(v0 + 400);
  while (1)
  {
    v8 = sub_231158FD8();
    sub_231158F88();
    if (v8)
    {
      v9 = *(v7 + 16);
      v9(*(v0 + 416), v3 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v5, *(v0 + 344));
      goto LABEL_9;
    }

    result = sub_2311595A8();
    if (v76 != 8)
    {
      break;
    }

    v26 = result;
    v27 = *(v0 + 416);
    v28 = *(v0 + 344);
    *(v0 + 296) = v26;
    v9 = *v91;
    (*v91)(v27, v0 + 296, v28);
    swift_unknownObjectRelease();
LABEL_9:
    v11 = *(v0 + 408);
    v10 = *(v0 + 416);
    v13 = *(v0 + 344);
    v12 = *(v0 + 352);
    sub_231159028();
    (*(v7 + 32))(v11, v10, v13);
    v14 = v88(v13, v12);
    if (!*(v90 + 16))
    {

LABEL_13:
      v23 = *(v0 + 408);
      v24 = *(v0 + 344);
      v9(*(v0 + 424), v23, v24);
      sub_231159038();
      sub_231159008();
      (*v85)(v23, v24);
      goto LABEL_14;
    }

    v16 = sub_23105FECC(v14, v15);
    v18 = v17;

    if ((v18 & 1) == 0)
    {
      goto LABEL_13;
    }

    v81 = *(v0 + 424);
    v19 = *(v0 + 408);
    v83 = *v1;
    sub_2310548A0(*(v90 + 56) + 40 * v16, v0 + 56);
    sub_23104613C((v0 + 56), v0 + 16);
    v20 = *(v0 + 40);
    v21 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_0((v0 + 16), v20);
    *(v0 + 120) = v83;
    v22 = __swift_allocate_boxed_opaque_existential_1((v0 + 96));
    v9(v22, v19, v83);
    v1 = (v0 + 344);
    sub_231090444((v0 + 96), v20, v21);
    __swift_destroy_boxed_opaque_existential_0((v0 + 96));
    v9(v81, v19, v83);
    sub_231159038();
    sub_231159008();
    (*v85)(v19, v83);
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
LABEL_14:
    v5 = v96;
    if (v96 == sub_231158FF8())
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_231092700()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2310927B4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  sub_2310CC9AC(*(a1 + 16), 0);
  OUTLINED_FUNCTION_9_9();
  v7 = sub_231093724(v3, v4, v5, v6);
  sub_231043ED0(v9);
  if (v7 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v1;
}

uint64_t sub_231092834(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  sub_2310CC9AC(*(a1 + 16), 0);
  OUTLINED_FUNCTION_9_9();
  v7 = sub_231093974(v3, v4, v5, v6);
  sub_231043ED0(v9);
  if (v7 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v1;
}

uint64_t SpotlightIndexDiffer.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = OUTLINED_FUNCTION_5_9();

  return MEMORY[0x2821FE8D8](v1, v2, v3);
}

uint64_t CSSearchableItem.diffingIdentifier.getter()
{
  v1 = [v0 uniqueIdentifier];
  v2 = sub_231158E58();

  return v2;
}

id CSSearchableItem.diffingHash.getter()
{
  sub_231054A0C(0, &qword_27DD3C8E0, 0x277CC33B0);
  v1 = sub_231092AD0(0xD000000000000021, 0x80000002311673A0, 0, 0, 1, 0);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v0 attributeSet];
  v4 = [v3 valueForCustomKey_];

  if (!v4)
  {

    return 0;
  }

  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (!v5)
  {

    swift_unknownObjectRelease();
    return 0;
  }

  v6 = [v5 longLongValue];

  swift_unknownObjectRelease();
  return v6;
}

id sub_231092AD0(uint64_t a1, uint64_t a2, char a3, char a4, char a5, char a6)
{
  v10 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v11 = sub_231158E28();

  v12 = [v10 initWithKeyName:v11 searchable:a3 & 1 searchableByDefault:a4 & 1 unique:a5 & 1 multiValued:a6 & 1];

  return v12;
}

id sub_231092B74(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_231158E28();

  v6 = [v3 initWithQueryString:v5 queryContext:a3];

  return v6;
}

unint64_t sub_231092BD8(uint64_t a1)
{
  sub_231158E58();
  sub_231159918();
  sub_231158EA8();
  v2 = sub_231159948();

  return sub_231092CF4(a1, v2);
}

unint64_t sub_231092C6C(uint64_t a1)
{
  v2 = sub_231159508();

  return sub_231092DEC(a1, v2);
}

unint64_t sub_231092CB0(uint64_t a1)
{
  v2 = sub_231159908();

  return sub_231092EB0(a1, v2);
}

unint64_t sub_231092CF4(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    v5 = sub_231158E58();
    v7 = v6;
    if (v5 == sub_231158E58() && v7 == v8)
    {

      return i;
    }

    v10 = sub_231159818();

    if (v10)
    {
      return i;
    }
  }

  return i;
}

unint64_t sub_231092DEC(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_231093BE4(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x231924FE0](v8, a1);
    sub_231086718(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_231092EB0(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

void sub_231092F10(uint64_t a1, void *a2)
{
  v3 = sub_231158F38();

  [a2 setBundleIDs_];
}

uint64_t sub_231092F7C(uint64_t a1, uint64_t a2, char a3)
{

  if (a3)
  {
  }

  return result;
}

uint64_t dispatch thunk of SpotlightDifferDataSource.getIndexItemIdentifiers(for:type:)()
{
  OUTLINED_FUNCTION_7_9();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_2_10(v1);

  return v3(v2);
}

uint64_t sub_2310930DC()
{
  OUTLINED_FUNCTION_4_1();
  v2 = v1;
  OUTLINED_FUNCTION_26();
  v3 = *v0;
  OUTLINED_FUNCTION_3_2();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

uint64_t dispatch thunk of SpotlightIndexDiffer.calculateDifference<A>(withChangeset:toolType:)()
{
  OUTLINED_FUNCTION_7_9();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_2_10(v1);

  return v3(v2);
}

uint64_t sub_231093398(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_26();
  v7 = *v3;
  OUTLINED_FUNCTION_3_2();
  *v8 = v7;

  v9 = *(v7 + 8);

  return v9(a1, a2, a3);
}

uint64_t sub_2310934A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2310934F4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_231093534(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

void sub_2310935B8()
{
  v0 = sub_231158368();
  OUTLINED_FUNCTION_5(v0);
  v1 = OUTLINED_FUNCTION_3_10();

  sub_231090E00(v1, v2, v3);
}

uint64_t sub_231093640()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C5F8, &unk_2311645D8);
  OUTLINED_FUNCTION_5(v0);
  v1 = OUTLINED_FUNCTION_3_10();

  return sub_231091648(v1, v2, v3);
}

unint64_t sub_2310936CC()
{
  result = qword_27DD3C618;
  if (!qword_27DD3C618)
  {
    sub_231158368();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3C618);
  }

  return result;
}

void *sub_231093724(void *result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_231093880(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = *(a4 + 16);
  if (!a2)
  {
    v12 = *(a4 + 16);
    v6 = 0;
LABEL_13:
    *v5 = a4;
    v5[1] = v12;
    return v6;
  }

  if (!a3)
  {
    v12 = *(a4 + 16);
LABEL_12:
    v6 = a3;
    goto LABEL_13;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = a2;
    v9 = 0;
    v10 = a3 - 1;
    for (i = (a4 + 40 * v6 + 25); ; i -= 40)
    {
      v12 = v6 + v9;
      if (!(v6 + v9))
      {
        break;
      }

      if (v12 > *(a4 + 16))
      {
        __break(1u);
        goto LABEL_15;
      }

      v13 = *(i - 33);
      v14 = *(i - 25);
      v15 = *(i - 17);
      v16 = *(i - 9);
      v17 = *(i - 1);
      v18 = *i;
      *v8 = v13;
      *(v8 + 8) = v14;
      *(v8 + 16) = v15;
      *(v8 + 24) = v16;
      *(v8 + 32) = v17;
      *(v8 + 33) = v18;
      if (!(v10 + v9))
      {
        sub_231079464(v13, v14, v15);
        v12 = v6 + v9 - 1;
        goto LABEL_12;
      }

      v8 += 40;
      result = sub_231079464(v13, v14, v15);
      --v9;
    }

    goto LABEL_13;
  }

LABEL_15:
  __break(1u);
  return result;
}

void *sub_231093974(void *result, void *a2, unint64_t a3, uint64_t a4)
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
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_231093AD0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v16 = sub_231054A0C(0, &qword_280CCAF38, 0x277CC34B0);
  v17 = &protocol witness table for CSSearchableItem;
  *&v15 = a4;
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = (a5[6] + 16 * a1);
  *v10 = a2;
  v10[1] = a3;
  result = sub_23104613C(&v15, a5[7] + 40 * a1);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t sub_231093B90(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_0_13();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_231093D08(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));

  return sub_231093D4C(v3, v2);
}

uint64_t VCDaemonXPCServer.DaemonError.errorDescription.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  if (!*(v0 + 16))
  {

    sub_231159588();

    OUTLINED_FUNCTION_51_2();
    v11 = v9 | 2;
    v12 = v8;
    if (!v1)
    {
      v5 = OUTLINED_FUNCTION_35_1();
      v7 = 0;
      goto LABEL_7;
    }

LABEL_8:
    MEMORY[0x231924980](v2, v1);

    return v11;
  }

  if (*(v0 + 16) == 1)
  {

    sub_231159588();

    OUTLINED_FUNCTION_51_2();
    v11 = v4 | 1;
    v12 = v3;
    if (!v1)
    {
      v5 = OUTLINED_FUNCTION_35_1();
      v7 = 1;
LABEL_7:
      sub_231093EB0(v5, v6, v7);
      v1 = 0xEE002E6465696669;
      v2 = &v11;
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  if (v2 | v1)
  {
    return 0xD000000000000018;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t sub_231093EB0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_231093ECC()
{
  if (*(v0 + 64))
  {
    v1 = *(v0 + 64);
  }

  else
  {
    v2 = *(v0 + 24);
    type metadata accessor for TriggerService();
    v1 = swift_allocObject();
    *(v1 + 16) = v2;
    *(v1 + 24) = 1;
    *(v0 + 64) = v1;
    v3 = v2;
  }

  return v1;
}

id sub_231093F3C()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    v2 = *(v0 + 72);
  }

  else
  {
    if (qword_280CCBC80 == -1)
    {
      v3 = 0;
    }

    else
    {
      swift_once();
      v3 = *(v0 + 72);
    }

    v4 = qword_280CCDFA0;
    *(v0 + 72) = qword_280CCDFA0;
    v2 = v4;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

void *sub_231093FD0(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v12 = sub_231158288();
  v13 = OUTLINED_FUNCTION_19(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_5_0();
  v14 = sub_2311593C8();
  OUTLINED_FUNCTION_4();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_5_0();
  v20 = v19 - v18;
  v6[8] = 0;
  v6[9] = 0;
  v6[2] = 0;
  v6[3] = a1;
  v6[4] = a2;
  v6[5] = a3;
  v6[6] = a4;
  v6[7] = a5;
  (*(v16 + 104))(v19 - v18, *MEMORY[0x277D79D78], v14);
  v21 = a5;
  v25 = a1;

  v24 = a3;

  sub_2311593B8();
  (*(v16 + 8))(v20, v14);

  sub_231158278();
  sub_2311582B8();
  swift_allocObject();
  v22 = sub_2311582A8();

  v6[2] = v22;

  return v6;
}

uint64_t sub_231094204(uint64_t a1, uint64_t a2)
{

  sub_231158298();
}

double sub_231094288@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_231158308();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C1D0, &qword_231162D50);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v16 - v10;
  v12 = sub_2311590C8();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v12);
  (*(v7 + 16))(&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  v13 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = 0;
  *(v14 + 3) = 0;
  *(v14 + 4) = a2;
  (*(v7 + 32))(&v14[v13], &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);

  sub_23105ED1C(0, 0, v11, &unk_2311647E0, v14);

  *(a3 + 32) = 0;
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

uint64_t sub_23109445C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = swift_task_alloc();
  *(v5 + 16) = v6;
  *v6 = v5;
  v6[1] = sub_2310721C0;

  return sub_2310947EC();
}

uint64_t sub_2310944F8(uint64_t a1)
{
  v2 = sub_2311582C8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_231158258();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2311581C8();
  v10 = *(v3 + 16);
  v10(v5, a1, v2);
  v11 = sub_231158238();
  v12 = sub_2311592F8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v23 = v6;
    v14 = v13;
    v21 = swift_slowAlloc();
    *v14 = 138412290;
    sub_23109997C(&qword_27DD3C6A8, MEMORY[0x277D855E8], MEMORY[0x277D855F0]);
    swift_allocError();
    v22 = v7;
    v10(v15, v5, v2);
    v16 = _swift_stdlib_bridgeErrorToNSError();
    (*(v3 + 8))(v5, v2);
    *(v14 + 4) = v16;
    v17 = v21;
    *v21 = v16;
    v7 = v22;
    _os_log_impl(&dword_23103C000, v11, v12, "Cancellation handler called %@", v14, 0xCu);
    sub_231064568(v17, &unk_27DD3CC40, &qword_231162750);
    MEMORY[0x2319267C0](v17, -1, -1);
    v18 = v14;
    v6 = v23;
    MEMORY[0x2319267C0](v18, -1, -1);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_2310947EC()
{
  OUTLINED_FUNCTION_4_1();
  v1[50] = v2;
  v1[51] = v0;
  v3 = sub_231157C48();
  v1[52] = v3;
  OUTLINED_FUNCTION_5(v3);
  v1[53] = v4;
  v1[54] = OUTLINED_FUNCTION_48_2();
  v1[55] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C638, &qword_2311647A0);
  v1[56] = v5;
  OUTLINED_FUNCTION_5(v5);
  v1[57] = v6;
  v1[58] = OUTLINED_FUNCTION_21_0();
  v7 = sub_231157C18();
  v1[59] = v7;
  OUTLINED_FUNCTION_5(v7);
  v1[60] = v8;
  v1[61] = OUTLINED_FUNCTION_21_0();
  v9 = sub_231157F18();
  v1[62] = v9;
  OUTLINED_FUNCTION_5(v9);
  v1[63] = v10;
  v1[64] = OUTLINED_FUNCTION_21_0();
  v11 = sub_231157C28();
  v1[65] = v11;
  OUTLINED_FUNCTION_5(v11);
  v1[66] = v12;
  v1[67] = OUTLINED_FUNCTION_48_2();
  v1[68] = swift_task_alloc();
  v13 = sub_231157C38();
  v1[69] = v13;
  OUTLINED_FUNCTION_5(v13);
  v1[70] = v14;
  v1[71] = OUTLINED_FUNCTION_48_2();
  v1[72] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C640, &qword_2311647A8);
  v1[73] = v15;
  OUTLINED_FUNCTION_5(v15);
  v1[74] = v16;
  v1[75] = OUTLINED_FUNCTION_21_0();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C648, &qword_2311647B0);
  OUTLINED_FUNCTION_19(v17);
  v1[76] = OUTLINED_FUNCTION_21_0();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C650, &qword_2311647B8);
  v1[77] = v18;
  OUTLINED_FUNCTION_5(v18);
  v1[78] = v19;
  v1[79] = OUTLINED_FUNCTION_21_0();
  v20 = sub_231157BF8();
  v1[80] = v20;
  OUTLINED_FUNCTION_5(v20);
  v1[81] = v21;
  v1[82] = OUTLINED_FUNCTION_21_0();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C658, &qword_2311647C0);
  v1[83] = v22;
  OUTLINED_FUNCTION_5(v22);
  v1[84] = v23;
  v1[85] = OUTLINED_FUNCTION_21_0();
  v24 = sub_231157DA8();
  v1[86] = v24;
  OUTLINED_FUNCTION_5(v24);
  v1[87] = v25;
  v1[88] = OUTLINED_FUNCTION_21_0();
  v26 = sub_231157E38();
  v1[89] = v26;
  OUTLINED_FUNCTION_5(v26);
  v1[90] = v27;
  v1[91] = OUTLINED_FUNCTION_21_0();
  v28 = sub_231157C78();
  v1[92] = v28;
  OUTLINED_FUNCTION_5(v28);
  v1[93] = v29;
  v1[94] = OUTLINED_FUNCTION_21_0();
  v30 = sub_231157C08();
  v1[95] = v30;
  OUTLINED_FUNCTION_5(v30);
  v1[96] = v31;
  v1[97] = OUTLINED_FUNCTION_48_2();
  v1[98] = swift_task_alloc();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C660, &qword_2311647C8);
  OUTLINED_FUNCTION_19(v32);
  v1[99] = OUTLINED_FUNCTION_21_0();
  v33 = sub_231157C58();
  v1[100] = v33;
  OUTLINED_FUNCTION_5(v33);
  v1[101] = v34;
  v1[102] = OUTLINED_FUNCTION_48_2();
  v1[103] = swift_task_alloc();
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v35, v36, v37);
}

uint64_t sub_231094D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_14_8();
  OUTLINED_FUNCTION_17_6();
  v25 = v24;
  sub_23109997C(&qword_27DD3C668, MEMORY[0x277D79AF0], MEMORY[0x277D79AF8]);
  sub_2311582F8();
  __swift_storeEnumTagSinglePayload(v25[99], 0, 1, v25[100]);
  v26 = OUTLINED_FUNCTION_51();
  v27(v26);
  v28 = sub_2310991E0();
  v30 = v29;
  v32 = v31;

  sub_231099504(v28, v30, v32 & 1);
  v42 = v25[102];
  v43 = v25[101];
  v44 = v25[100];

  v45 = OUTLINED_FUNCTION_36_3();
  v46(v45);
  v47 = (*(v43 + 88))(v42, v44);
  if (v47 == *MEMORY[0x277D79A90])
  {
    v48 = v25[102];
    v49 = v25[98];
    v50 = v25[97];
    v51 = v25[96];
    v52 = v25[95];

    v53 = OUTLINED_FUNCTION_34_4();
    v54(v53);
    (*(v51 + 32))(v49, v48, v52);
    (*(v51 + 16))(v50, v49, v52);
    v55 = OUTLINED_FUNCTION_31();
    v57 = v56(v55);
    if (v57 == *MEMORY[0x277D79A70])
    {
      v58 = v25[97];
      OUTLINED_FUNCTION_45_2();
      v59 = v25[91];
      v60 = v25[90];
      v61 = v25[89];
      (*(v62 + 96))(v58);
      v63 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C690, &qword_2311647D0) + 48);
      v64 = OUTLINED_FUNCTION_46_2();
      v65(v64);
      (*(v60 + 32))(v59, v58 + v63, v61);
      v25[104] = sub_231093ECC();
      v66 = swift_task_alloc();
      v25[105] = v66;
      *v66 = v25;
      v66[1] = sub_231096780;
      OUTLINED_FUNCTION_28();

      return sub_2310522A0();
    }

    if (v57 == *MEMORY[0x277D79A78])
    {
      v84 = v25[97];
      OUTLINED_FUNCTION_45_2();
      v85 = OUTLINED_FUNCTION_40_2();
      v86(v85);
      v25[107] = *(v84 + 8);
      v25[108] = sub_231093ECC();
      v87 = swift_task_alloc();
      v25[109] = v87;
      *v87 = v25;
      OUTLINED_FUNCTION_49_0(v87);
      OUTLINED_FUNCTION_28();

      return sub_231053EFC(v88, v89);
    }

    if (v57 == *MEMORY[0x277D79A80])
    {
      OUTLINED_FUNCTION_45_2();
      v121 = v25[76];
      v122 = OUTLINED_FUNCTION_40_2();
      v123(v122);
      sub_231093ECC();
      sub_23105463C(v121);
      v210 = v25[101];
      OUTLINED_FUNCTION_47_2();
      v211 = v25[96];
      a17 = v25[95];
      a18 = v25[98];
      v212 = v25[76];

      v213 = OUTLINED_FUNCTION_51_1();
      sub_2310998A8(v213, v214);
      v215 = OUTLINED_FUNCTION_42_2();
      v216(v215);
      sub_231099918(&qword_27DD3C680, &qword_27DD3C640, &qword_2311647A8);
      OUTLINED_FUNCTION_37_2();
      sub_2311582E8();
      v217 = OUTLINED_FUNCTION_37_2();
      v218(v217);
      sub_231064568(v212, &qword_27DD3C648, &qword_2311647B0);
      (*(v211 + 8))(a18, a17);
      v219 = *(v210 + 8);
      v221 = a19;
      v220 = a20;
LABEL_48:
      v219(v220, v221);
      goto LABEL_2;
    }

    if (v57 == *MEMORY[0x277D79A88])
    {
      sub_231093ECC();
      v241 = sub_23105427C();
      v147 = v25[101];
      OUTLINED_FUNCTION_47_2();
      a18 = v25[98];
      v242 = v25[96];
      v243 = v25[95];
      v244 = v25[79];

      *v244 = v241;
      v245 = OUTLINED_FUNCTION_31_3();
      v246(v245);
      sub_231099918(&qword_27DD3C688, &qword_27DD3C650, &qword_2311647B8);
      OUTLINED_FUNCTION_51_1();
      sub_2311582E8();
      v247 = OUTLINED_FUNCTION_51_1();
      v248(v247);
      (*(v242 + 8))(a18, v243);
      goto LABEL_62;
    }

    v178 = v25[101];
    v179 = v25[100];
    a19 = v25[103];
    a20 = v25[97];
    v180 = v25[96];
    v127 = v25[95];
    sub_2310997CC();
    OUTLINED_FUNCTION_28_4();
    v181 = swift_allocError();
    OUTLINED_FUNCTION_23_5(v181, v182);
    sub_231157C88();
    v183 = OUTLINED_FUNCTION_42_2();
    v184(v183);
    OUTLINED_FUNCTION_1_12();
    sub_23109997C(v185, v186, MEMORY[0x277D79A68]);
    OUTLINED_FUNCTION_37_2();
    sub_2311582E8();
    v187 = OUTLINED_FUNCTION_37_2();
    v188(v187);
    v136 = *(v180 + 8);
    v189 = OUTLINED_FUNCTION_38_1();
    v136(v189);
    (*(v178 + 8))(a19, v179);
    v137 = a20;
    goto LABEL_33;
  }

  if (v47 == *MEMORY[0x277D79AC0])
  {
    v68 = v25[102];
    v69 = v25[72];
    v70 = v25[71];
    v71 = v25[70];
    v72 = v25[69];

    v73 = OUTLINED_FUNCTION_34_4();
    v74(v73);
    (*(v71 + 32))(v69, v68, v72);
    (*(v71 + 16))(v70, v69, v72);
    v75 = OUTLINED_FUNCTION_21_2();
    v77 = v76(v75);
    if (v77 == *MEMORY[0x277D79AB8])
    {
      v78 = v25[71];
      v79 = OUTLINED_FUNCTION_40_2();
      v80(v79);
      v25[111] = *v78;
      v25[112] = sub_231093F3C();
      v81 = swift_task_alloc();
      v25[113] = v81;
      *v81 = v25;
      OUTLINED_FUNCTION_49_0(v81);
      OUTLINED_FUNCTION_28();

      return sub_2310D08E8(v82);
    }

    else
    {
      if (v77 != *MEMORY[0x277D79AB0])
      {
        v147 = v25[101];
        a19 = v25[100];
        a20 = v25[103];
        if (v77 == *MEMORY[0x277D79A98])
        {
          v148 = v25[71];
          v149 = v25[70];
          a17 = v25[69];
          a18 = v25[72];
          v150 = v25[60];
          v151 = v25[61];
          v153 = v25[58];
          v152 = v25[59];
          v154 = v25;
          v157 = v25 + 56;
          v156 = v25[56];
          v155 = v157[1];
          a16 = v154[50];
          v158 = OUTLINED_FUNCTION_50_2();
          v159(v158);
          (*(v150 + 32))(v151, v148, v152);
          sub_231157B38();
          *v153 = sub_231157B28() & 1;
          (*(v155 + 104))(v153, *MEMORY[0x277D79A40], v156);
          sub_231099918(&qword_27DD3C678, &qword_27DD3C638, &qword_2311647A0);
          sub_2311582E8();
          (*(v155 + 8))(v153, v156);
          v160 = OUTLINED_FUNCTION_51_1();
          v161(v160);
          (*(v149 + 8))(a18, a17);
LABEL_62:
          (*(v147 + 8))(a20, a19);
          goto LABEL_2;
        }

        v165 = v25[72];
        v166 = v25[70];
        v167 = v25[69];
        sub_2310997CC();
        OUTLINED_FUNCTION_28_4();
        v168 = swift_allocError();
        OUTLINED_FUNCTION_23_5(v168, v169);
        sub_231157C88();
        v170 = OUTLINED_FUNCTION_42_2();
        v171(v170);
        OUTLINED_FUNCTION_1_12();
        sub_23109997C(v172, v173, MEMORY[0x277D79A68]);
        OUTLINED_FUNCTION_37_2();
        sub_2311582E8();
        v174 = OUTLINED_FUNCTION_37_2();
        v175(v174);
        v176 = *(v166 + 8);
        v176(v165, v167);
        (*(v147 + 8))(a20, a19);
        v177 = OUTLINED_FUNCTION_46_2();
        (v176)(v177);
LABEL_2:
        OUTLINED_FUNCTION_7_10();

        OUTLINED_FUNCTION_46_0();
        OUTLINED_FUNCTION_28();

        return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
      }

      v108 = v25[51];
      v109 = OUTLINED_FUNCTION_50_2();
      v110(v109);
      v111 = OUTLINED_FUNCTION_36_3();
      v112(v111);
      v113 = *(v108 + 32);
      v25[115] = v113;
      if (!v113)
      {
        v199 = v25[101];
        OUTLINED_FUNCTION_47_2();
        v200 = v25[82];
        v201 = v25[81];
        v202 = v25[80];
        v203 = v25[70];
        a17 = v25[69];
        a18 = v25[72];
        v204 = v25[68];
        v205 = v25[66];
        v206 = v25[65];
        sub_2310997CC();
        OUTLINED_FUNCTION_28_4();
        swift_allocError();
        *v207 = 0;
        *(v207 + 8) = 0;
        *(v207 + 16) = 0;
        sub_231157C88();
        (*(v201 + 104))(v200, *MEMORY[0x277D79A50], v202);
        OUTLINED_FUNCTION_1_12();
        sub_23109997C(v208, v209, MEMORY[0x277D79A68]);
        sub_2311582E8();
        (*(v201 + 8))(v200, v202);
        (*(v205 + 8))(v204, v206);
        (*(v203 + 8))(a18, a17);
        (*(v199 + 8))(a20, a19);
        goto LABEL_2;
      }

      (*(v25[66] + 16))(v25[67], v25[68], v25[65]);
      v114 = OUTLINED_FUNCTION_34_4();
      v116 = v115(v114);
      if (v116 == *MEMORY[0x277D79AA0])
      {
        v117 = v25[67];
        (*(v25[66] + 96))(v117, v25[65]);
        v118 = *(v117 + 8);

        if (v118)
        {

          v119 = swift_task_alloc();
          v25[116] = v119;
          *v119 = v25;
          v120 = sub_2310970F0;
        }

        else
        {
          v119 = swift_task_alloc();
          v25[118] = v119;
          *v119 = v25;
          v120 = sub_231097394;
        }

        v119[1] = v120;
        OUTLINED_FUNCTION_28();

        return sub_2310D5C80();
      }

      else
      {
        if (v116 != *MEMORY[0x277D79AA8])
        {
          v249 = v25[101];
          OUTLINED_FUNCTION_47_2();
          v250 = v25[70];
          a16 = v25[69];
          a17 = v25[72];
          a18 = v25[67];
          v251 = v25[66];
          a14 = v25[65];
          a15 = v25[68];
          sub_2310997CC();
          OUTLINED_FUNCTION_28_4();
          v252 = swift_allocError();
          OUTLINED_FUNCTION_23_5(v252, v253);

          sub_231157C88();
          v254 = OUTLINED_FUNCTION_43_1();
          v255(v254);
          OUTLINED_FUNCTION_1_12();
          sub_23109997C(v256, v257, MEMORY[0x277D79A68]);
          OUTLINED_FUNCTION_45();
          sub_2311582E8();

          v258 = OUTLINED_FUNCTION_22_5();
          v259(v258);
          v260 = *(v251 + 8);
          v260(a15, a14);
          (*(v250 + 8))(a17, a16);
          (*(v249 + 8))(a20, a19);
          v260(a18, a14);
          goto LABEL_2;
        }

        v223 = v25[63];
        v222 = v25[64];
        v224 = v25[62];
        v225 = OUTLINED_FUNCTION_50_2();
        v226(v225);
        (*(v223 + 104))(v222, *MEMORY[0x277D79C48], v224);

        v227 = swift_task_alloc();
        v25[120] = v227;
        *v227 = v25;
        v227[1] = sub_231097830;
        OUTLINED_FUNCTION_28();

        return sub_2310D645C();
      }
    }
  }

  else
  {
    if (v47 != *MEMORY[0x277D79AE8])
    {
      v124 = v25[103];
      v125 = v25[102];
      v126 = v25[101];
      v127 = v25[100];

      sub_2310997CC();
      OUTLINED_FUNCTION_28_4();
      v128 = swift_allocError();
      OUTLINED_FUNCTION_23_5(v128, v129);
      sub_231157C88();
      v130 = OUTLINED_FUNCTION_31_3();
      v131(v130);
      OUTLINED_FUNCTION_1_12();
      sub_23109997C(v132, v133, MEMORY[0x277D79A68]);
      OUTLINED_FUNCTION_51_1();
      sub_2311582E8();
      v134 = OUTLINED_FUNCTION_51_1();
      v135(v134);
      v136 = *(v126 + 8);
      (v136)(v124, v127);
      v137 = v125;
LABEL_33:
      (v136)(v137, v127);
      goto LABEL_2;
    }

    v91 = v25[54];
    v92 = v25[55];
    v93 = v25[52];
    v94 = v25[53];
    v95 = OUTLINED_FUNCTION_50_2();
    v96(v95);
    v97 = OUTLINED_FUNCTION_36_3();
    v98(v97);
    (*(v94 + 16))(v91, v92, v93);
    v99 = OUTLINED_FUNCTION_45();
    v101 = v100(v99);
    if (v101 != *MEMORY[0x277D79AD8])
    {
      if (v101 == *MEMORY[0x277D79AC8])
      {
        v138 = v25[54];

        v139 = OUTLINED_FUNCTION_34_4();
        v140(v139);
        if (*(v138 + 8))
        {
          v141 = sub_231158C98();
          v142 = objc_allocWithZone(MEMORY[0x277CC34A8]);
          v143 = OUTLINED_FUNCTION_36_3();
          v145 = sub_2310C0D80(v143, v144, v141);
          v25[127] = v145;
          v25[18] = v25;
          v25[19] = sub_231097EBC;
          v146 = swift_continuation_init();
          v25[49] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C0B0, &qword_231162E00);
          v25[42] = MEMORY[0x277D85DD0];
          v25[43] = 1107296256;
          v25[44] = sub_23106FF5C;
          v25[45] = &block_descriptor_15;
          v25[46] = v146;
          [v145 deleteAllSearchableItemsWithCompletionHandler_];
        }

        else
        {
          sub_231158CB8();
          v232 = sub_231158C98();
          v233 = objc_allocWithZone(MEMORY[0x277CC34A8]);
          v234 = OUTLINED_FUNCTION_34_4();
          v236 = sub_2310C0D80(v234, v235, v232);
          v25[129] = v236;
          sub_231158C98();
          v237 = sub_231158E28();
          v25[130] = v237;

          v25[10] = v25;
          v25[11] = sub_23109815C;
          v238 = swift_continuation_init();
          v25[41] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C0B0, &qword_231162E00);
          v25[34] = MEMORY[0x277D85DD0];
          v25[35] = 1107296256;
          v25[36] = sub_23106FF5C;
          v25[37] = &block_descriptor_12_0;
          v25[38] = v238;
          [v236 deleteAllSearchableItemsForBundleID:v237 completionHandler:v25 + 34];
        }
      }

      else
      {
        if (v101 != *MEMORY[0x277D79AE0])
        {
          if (v101 == *MEMORY[0x277D79AD0])
          {
            v229 = v25[51];

            if (!*(v229 + 40))
            {
              a20 = v25[103];
              v263 = v25[101];
              v264 = v25[100];
              v265 = OUTLINED_FUNCTION_43_1();
              v266(v265);
              OUTLINED_FUNCTION_1_12();
              sub_23109997C(v267, v268, MEMORY[0x277D79A68]);
              OUTLINED_FUNCTION_45();
              sub_2311582E8();
              v269 = OUTLINED_FUNCTION_45();
              v270(v269);
              v271 = OUTLINED_FUNCTION_31();
              v272(v271);
              (*(v263 + 8))(a20, v264);
              goto LABEL_2;
            }

            v230 = swift_task_alloc();
            v25[126] = v230;
            *v230 = v25;
            OUTLINED_FUNCTION_49_0(v230);
            OUTLINED_FUNCTION_28();

            return sub_2310AAEC8();
          }

          else
          {
            OUTLINED_FUNCTION_28();

            return sub_231159808();
          }
        }

        v162 = v25[51];

        v163 = *(v162 + 56);
        if (!v163)
        {
          (*(v25[53] + 8))(v25[55], v25[52]);
          v220 = OUTLINED_FUNCTION_34_4();
          goto LABEL_48;
        }

        v25[2] = v25;
        v25[7] = v25 + 132;
        v25[3] = sub_231098404;
        v164 = swift_continuation_init();
        v25[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C0C8, &qword_231162FA0);
        v25[26] = MEMORY[0x277D85DD0];
        v25[27] = 1107296256;
        v25[28] = sub_231093D08;
        v25[29] = &block_descriptor_10;
        v25[30] = v164;
        [v163 reindexAllSearchableItemsWithCompletion_];
      }

      OUTLINED_FUNCTION_28();

      return MEMORY[0x282200938](v239);
    }

    v102 = v25[53];
    v103 = v25[51];

    v25[122] = *(v102 + 8);
    v25[123] = (v102 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v104 = OUTLINED_FUNCTION_34_4();
    v105(v104);
    if (!*(v103 + 48))
    {
      v190 = v25[122];
      v191 = v25[101];
      OUTLINED_FUNCTION_47_2();
      v192 = OUTLINED_FUNCTION_43_1();
      v193(v192);
      OUTLINED_FUNCTION_1_12();
      sub_23109997C(v194, v195, MEMORY[0x277D79A68]);
      OUTLINED_FUNCTION_45();
      sub_2311582E8();
      v196 = OUTLINED_FUNCTION_45();
      v197(v196);
      v198 = OUTLINED_FUNCTION_31();
      v190(v198);
      (*(v191 + 8))(a20, a19);
      goto LABEL_2;
    }

    v106 = swift_task_alloc();
    v25[124] = v106;
    *v106 = v25;
    OUTLINED_FUNCTION_49_0(v106);
    OUTLINED_FUNCTION_28();

    return sub_2310676E8();
  }
}

uint64_t sub_231096780()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_19_5();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 848) = v0;

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2310968A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_14_8();
  OUTLINED_FUNCTION_17_6();
  v52 = v24[103];
  v50 = v24[101];
  v51 = v24[100];
  v48 = v24[95];
  v49 = v24[98];
  v46 = v24[94];
  v47 = v24[96];
  v25 = v24[93];
  v44 = v24[91];
  v45 = v24[92];
  v26 = v24[90];
  v43 = v24[89];
  v27 = v24[88];
  v28 = v24[87];
  v29 = v24[86];
  (*(v28 + 16))(v24[85], v27, v29);
  v30 = OUTLINED_FUNCTION_13_9();
  v31(v30);
  sub_231099918(&qword_27DD3C698, &qword_27DD3C658, &qword_2311647C0);
  OUTLINED_FUNCTION_21_2();
  sub_2311582E8();
  v32 = OUTLINED_FUNCTION_21_2();
  v33(v32);
  (*(v28 + 8))(v27, v29);
  (*(v26 + 8))(v44, v43);
  (*(v25 + 8))(v46, v45);
  (*(v47 + 8))(v49, v48);
  (*(v50 + 8))(v52, v51);
  OUTLINED_FUNCTION_0_14();

  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_28();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, a22, a23, a24);
}

uint64_t sub_231096AFC()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_19_5();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 880) = v0;

  if (v0)
  {
  }

  else
  {
  }

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_231096C54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_14_8();
  OUTLINED_FUNCTION_17_6();
  OUTLINED_FUNCTION_32_3();
  v24 = OUTLINED_FUNCTION_31_3();
  v25(v24);
  OUTLINED_FUNCTION_1_12();
  sub_23109997C(v26, v27, MEMORY[0x277D79A68]);
  OUTLINED_FUNCTION_51_1();
  sub_2311582E8();
  v28 = OUTLINED_FUNCTION_51_1();
  v29(v28);
  v30 = OUTLINED_FUNCTION_21_2();
  v31(v30);
  v32 = OUTLINED_FUNCTION_30_3();
  v33(v32);
  OUTLINED_FUNCTION_0_14();

  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_28();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_231096E04()
{
  OUTLINED_FUNCTION_21();
  v2 = *v1;
  OUTLINED_FUNCTION_19_5();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 912) = v0;

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_231096F2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_14_8();
  OUTLINED_FUNCTION_17_6();
  v26 = *(v24 + 888);
  OUTLINED_FUNCTION_32_3();
  v44 = *(v24 + 800);
  v27 = OUTLINED_FUNCTION_13_9();
  v28(v27);
  OUTLINED_FUNCTION_1_12();
  sub_23109997C(v29, v30, MEMORY[0x277D79A68]);
  OUTLINED_FUNCTION_21_2();
  sub_2311582E8();

  v31 = OUTLINED_FUNCTION_21_2();
  v32(v31);
  v33 = OUTLINED_FUNCTION_51_1();
  v34(v33);
  (*(v25 + 8))(a21, v44);
  OUTLINED_FUNCTION_0_14();

  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_28();

  return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, v44, a21, a22, a23, a24);
}

uint64_t sub_2310970F0()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_19_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v5 = v4;
  *(v6 + 936) = v0;

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2310971EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_14_8();
  OUTLINED_FUNCTION_17_6();
  OUTLINED_FUNCTION_18_4();
  v25 = OUTLINED_FUNCTION_22_5();
  v26(v25);
  v27 = OUTLINED_FUNCTION_21_7();
  v28(v27);
  v29 = *(v24 + 936);
  OUTLINED_FUNCTION_3_11();
  OUTLINED_FUNCTION_41_3();
  v30 = OUTLINED_FUNCTION_4_8();
  v31(v30);
  OUTLINED_FUNCTION_1_12();
  sub_23109997C(v32, v33, MEMORY[0x277D79A68]);
  OUTLINED_FUNCTION_31();
  sub_2311582E8();

  v34 = OUTLINED_FUNCTION_9_10();
  v35(v34);
  v36 = OUTLINED_FUNCTION_8_9();
  v37(v36);
  OUTLINED_FUNCTION_0_14();

  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_28();

  return v39(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_231097394()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_19_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v5 = v4;
  *(v6 + 952) = v0;

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_231097490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_14_8();
  OUTLINED_FUNCTION_17_6();
  v48 = v24[103];
  v25 = v24[101];
  v46 = v24[72];
  v47 = v24[100];
  v26 = v24[70];
  v44 = v24[68];
  v45 = v24[69];
  v27 = v24[66];
  v28 = v24[65];
  v29 = OUTLINED_FUNCTION_31_3();
  v30(v29);
  OUTLINED_FUNCTION_1_12();
  sub_23109997C(v31, v32, MEMORY[0x277D79A68]);
  OUTLINED_FUNCTION_51_1();
  sub_2311582E8();

  v33 = OUTLINED_FUNCTION_51_1();
  v34(v33);
  (*(v27 + 8))(v44, v28);
  (*(v26 + 8))(v46, v45);
  (*(v25 + 8))(v48, v47);
  OUTLINED_FUNCTION_0_14();

  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_28();

  return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14, a15, a16, v44, v45, v46, v47, v48, a22, a23, a24);
}

uint64_t sub_231097688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_14_8();
  OUTLINED_FUNCTION_17_6();
  OUTLINED_FUNCTION_18_4();
  v25 = OUTLINED_FUNCTION_22_5();
  v26(v25);
  v27 = OUTLINED_FUNCTION_21_7();
  v28(v27);
  v29 = *(v24 + 952);
  OUTLINED_FUNCTION_3_11();
  OUTLINED_FUNCTION_41_3();
  v30 = OUTLINED_FUNCTION_4_8();
  v31(v30);
  OUTLINED_FUNCTION_1_12();
  sub_23109997C(v32, v33, MEMORY[0x277D79A68]);
  OUTLINED_FUNCTION_31();
  sub_2311582E8();

  v34 = OUTLINED_FUNCTION_9_10();
  v35(v34);
  v36 = OUTLINED_FUNCTION_8_9();
  v37(v36);
  OUTLINED_FUNCTION_0_14();

  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_28();

  return v39(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_231097830()
{
  OUTLINED_FUNCTION_21();
  v2 = *v1;
  OUTLINED_FUNCTION_19_5();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 968) = v0;

  (*(v2[63] + 8))(v2[64], v2[62]);
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_23109798C()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_19_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v5 = v4;
  *(v6 + 1000) = v0;

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_231097A88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_14_8();
  OUTLINED_FUNCTION_17_6();
  v26 = *(v24 + 976);
  OUTLINED_FUNCTION_32_3();
  v43 = *(v24 + 800);
  v27 = OUTLINED_FUNCTION_13_9();
  v28(v27);
  OUTLINED_FUNCTION_1_12();
  sub_23109997C(v29, v30, MEMORY[0x277D79A68]);
  OUTLINED_FUNCTION_21_2();
  sub_2311582E8();
  v31 = OUTLINED_FUNCTION_21_2();
  v32(v31);
  v33 = OUTLINED_FUNCTION_51_1();
  v26(v33);
  (*(v25 + 8))(a21, v43);
  OUTLINED_FUNCTION_0_14();

  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_28();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, v43, a21, a22, a23, a24);
}

uint64_t sub_231097C3C()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  v1 = *v0;
  OUTLINED_FUNCTION_3_2();
  *v2 = v1;

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_231097D24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_14_8();
  OUTLINED_FUNCTION_17_6();
  v44 = *(v24 + 824);
  OUTLINED_FUNCTION_10_10();
  v25 = OUTLINED_FUNCTION_13_9();
  v26(v25);
  OUTLINED_FUNCTION_1_12();
  sub_23109997C(v27, v28, MEMORY[0x277D79A68]);
  OUTLINED_FUNCTION_21_2();
  sub_2311582E8();
  v29 = OUTLINED_FUNCTION_21_2();
  v30(v29);
  v31 = OUTLINED_FUNCTION_51_1();
  v32(v31);
  v33 = OUTLINED_FUNCTION_30_3();
  v34(v33);
  OUTLINED_FUNCTION_0_14();

  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_28();

  return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, v44, a22, a23, a24);
}

uint64_t sub_231097EBC()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_19_5();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 1024) = *(v3 + 176);
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_231097FBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_14_8();
  OUTLINED_FUNCTION_17_6();
  v45 = *(v24 + 824);
  OUTLINED_FUNCTION_10_10();

  v26 = OUTLINED_FUNCTION_13_9();
  v27(v26);
  OUTLINED_FUNCTION_1_12();
  sub_23109997C(v28, v29, MEMORY[0x277D79A68]);
  OUTLINED_FUNCTION_21_2();
  sub_2311582E8();
  v30 = OUTLINED_FUNCTION_21_2();
  v31(v30);
  v32 = OUTLINED_FUNCTION_51_1();
  v33(v32);
  v34 = OUTLINED_FUNCTION_30_3();
  v35(v34);
  OUTLINED_FUNCTION_0_14();

  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_28();

  return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, v45, a22, a23, a24);
}

uint64_t sub_23109815C()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_19_5();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 1048) = *(v3 + 112);
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_23109825C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_14_8();
  OUTLINED_FUNCTION_17_6();

  v45 = *(v24 + 824);
  OUTLINED_FUNCTION_10_10();

  v26 = OUTLINED_FUNCTION_13_9();
  v27(v26);
  OUTLINED_FUNCTION_1_12();
  sub_23109997C(v28, v29, MEMORY[0x277D79A68]);
  OUTLINED_FUNCTION_21_2();
  sub_2311582E8();
  v30 = OUTLINED_FUNCTION_21_2();
  v31(v30);
  v32 = OUTLINED_FUNCTION_51_1();
  v33(v32);
  v34 = OUTLINED_FUNCTION_30_3();
  v35(v34);
  OUTLINED_FUNCTION_0_14();

  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_28();

  return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, v45, a22, a23, a24);
}

uint64_t sub_231098404()
{
  OUTLINED_FUNCTION_4_1();
  v1 = *v0;
  OUTLINED_FUNCTION_3_2();
  *v2 = v1;
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2310984D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_14_8();
  OUTLINED_FUNCTION_17_6();
  (*(v24[53] + 8))(v24[55], v24[52]);
  v25 = OUTLINED_FUNCTION_51();
  v26(v25);
  OUTLINED_FUNCTION_0_14();

  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_28();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_231098610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_14_8();
  OUTLINED_FUNCTION_17_6();
  (*(v24[90] + 8))(v24[91], v24[89]);
  v25 = OUTLINED_FUNCTION_22_5();
  v26(v25);
  v27 = OUTLINED_FUNCTION_21_7();
  v28(v27);
  v29 = v24[106];
  OUTLINED_FUNCTION_3_11();
  OUTLINED_FUNCTION_41_3();
  v30 = OUTLINED_FUNCTION_4_8();
  v31(v30);
  OUTLINED_FUNCTION_1_12();
  sub_23109997C(v32, v33, MEMORY[0x277D79A68]);
  OUTLINED_FUNCTION_31();
  sub_2311582E8();

  v34 = OUTLINED_FUNCTION_9_10();
  v35(v34);
  v36 = OUTLINED_FUNCTION_8_9();
  v37(v36);
  OUTLINED_FUNCTION_0_14();

  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_28();

  return v39(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_2310987E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_14_8();
  OUTLINED_FUNCTION_17_6();
  (*(v24[96] + 8))(v24[98], v24[95]);
  v25 = v24[110];
  OUTLINED_FUNCTION_3_11();
  OUTLINED_FUNCTION_41_3();
  v26 = OUTLINED_FUNCTION_4_8();
  v27(v26);
  OUTLINED_FUNCTION_1_12();
  sub_23109997C(v28, v29, MEMORY[0x277D79A68]);
  OUTLINED_FUNCTION_31();
  sub_2311582E8();

  v30 = OUTLINED_FUNCTION_9_10();
  v31(v30);
  v32 = OUTLINED_FUNCTION_8_9();
  v33(v32);
  OUTLINED_FUNCTION_0_14();

  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_28();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_231098988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_14_8();
  OUTLINED_FUNCTION_17_6();

  v25 = OUTLINED_FUNCTION_51();
  v26(v25);
  v27 = *(v24 + 912);
  OUTLINED_FUNCTION_3_11();
  OUTLINED_FUNCTION_41_3();
  v28 = OUTLINED_FUNCTION_4_8();
  v29(v28);
  OUTLINED_FUNCTION_1_12();
  sub_23109997C(v30, v31, MEMORY[0x277D79A68]);
  OUTLINED_FUNCTION_31();
  sub_2311582E8();

  v32 = OUTLINED_FUNCTION_9_10();
  v33(v32);
  v34 = OUTLINED_FUNCTION_8_9();
  v35(v34);
  OUTLINED_FUNCTION_0_14();

  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_28();

  return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_231098B34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_14_8();
  OUTLINED_FUNCTION_17_6();
  OUTLINED_FUNCTION_18_4();
  v25 = OUTLINED_FUNCTION_22_5();
  v26(v25);
  v27 = OUTLINED_FUNCTION_21_7();
  v28(v27);
  v29 = *(v24 + 968);
  OUTLINED_FUNCTION_3_11();
  OUTLINED_FUNCTION_41_3();
  v30 = OUTLINED_FUNCTION_4_8();
  v31(v30);
  OUTLINED_FUNCTION_1_12();
  sub_23109997C(v32, v33, MEMORY[0x277D79A68]);
  OUTLINED_FUNCTION_31();
  sub_2311582E8();

  v34 = OUTLINED_FUNCTION_9_10();
  v35(v34);
  v36 = OUTLINED_FUNCTION_8_9();
  v37(v36);
  OUTLINED_FUNCTION_0_14();

  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_28();

  return v39(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_231098CDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_14_8();
  OUTLINED_FUNCTION_17_6();
  (*(v24 + 976))(*(v24 + 440), *(v24 + 416));
  v25 = *(v24 + 1000);
  OUTLINED_FUNCTION_3_11();
  OUTLINED_FUNCTION_41_3();
  v26 = OUTLINED_FUNCTION_4_8();
  v27(v26);
  OUTLINED_FUNCTION_1_12();
  sub_23109997C(v28, v29, MEMORY[0x277D79A68]);
  OUTLINED_FUNCTION_31();
  sub_2311582E8();

  v30 = OUTLINED_FUNCTION_9_10();
  v31(v30);
  v32 = OUTLINED_FUNCTION_8_9();
  v33(v32);
  OUTLINED_FUNCTION_0_14();

  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_28();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_231098E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_14_8();
  OUTLINED_FUNCTION_17_6();
  v25 = *(v24 + 1016);
  swift_willThrow();

  v26 = OUTLINED_FUNCTION_21_7();
  v27(v26);
  v28 = *(v24 + 1024);
  OUTLINED_FUNCTION_3_11();
  OUTLINED_FUNCTION_41_3();
  v29 = OUTLINED_FUNCTION_4_8();
  v30(v29);
  OUTLINED_FUNCTION_1_12();
  sub_23109997C(v31, v32, MEMORY[0x277D79A68]);
  OUTLINED_FUNCTION_31();
  sub_2311582E8();

  v33 = OUTLINED_FUNCTION_9_10();
  v34(v33);
  v35 = OUTLINED_FUNCTION_8_9();
  v36(v35);
  OUTLINED_FUNCTION_2_11();
  OUTLINED_FUNCTION_7_10();

  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_28();

  return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_231099024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_14_8();
  OUTLINED_FUNCTION_17_6();
  v25 = v24[130];
  v26 = v24[129];
  swift_willThrow();

  v27 = OUTLINED_FUNCTION_51();
  v28(v27);

  v29 = v24[131];
  OUTLINED_FUNCTION_3_11();
  OUTLINED_FUNCTION_41_3();
  v30 = OUTLINED_FUNCTION_4_8();
  v31(v30);
  OUTLINED_FUNCTION_1_12();
  sub_23109997C(v32, v33, MEMORY[0x277D79A68]);
  OUTLINED_FUNCTION_31();
  sub_2311582E8();

  v34 = OUTLINED_FUNCTION_9_10();
  v35(v34);
  v36 = OUTLINED_FUNCTION_8_9();
  v37(v36);
  OUTLINED_FUNCTION_2_11();
  OUTLINED_FUNCTION_7_10();

  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_28();

  return v39(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_2310991E0()
{
  v0 = sub_231157C38();
  OUTLINED_FUNCTION_4();
  v2 = v1;
  v4 = MEMORY[0x28223BE20](v3);
  MEMORY[0x28223BE20](v4);
  v6 = &v34 - v5;
  sub_231157C58();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5_0();
  v8 = OUTLINED_FUNCTION_51_1();
  v9(v8);
  v10 = OUTLINED_FUNCTION_38_1();
  v12 = v11(v10);
  if (v12 == *MEMORY[0x277D79A90])
  {
    v13 = OUTLINED_FUNCTION_38_1();
    v14(v13);
    return 0xD000000000000023;
  }

  else if (v12 == *MEMORY[0x277D79AC0])
  {
    v16 = OUTLINED_FUNCTION_38_1();
    v17(v16);
    v18 = OUTLINED_FUNCTION_31();
    v19(v18);
    v20 = OUTLINED_FUNCTION_46_2();
    v21(v20);
    v22 = OUTLINED_FUNCTION_36_3();
    v24 = v23(v22);
    v25 = *MEMORY[0x277D79A98];
    v26 = *(v2 + 8);
    v26(v6, v0);
    v27 = OUTLINED_FUNCTION_36_3();
    (v26)(v27);
    if (v24 == v25)
    {
      return 0xD000000000000021;
    }

    else
    {
      return 0xD000000000000027;
    }
  }

  else if (v12 == *MEMORY[0x277D79AE8])
  {
    v28 = OUTLINED_FUNCTION_38_1();
    v29(v28);
    return 0xD000000000000025;
  }

  else
  {
    sub_2310997CC();
    OUTLINED_FUNCTION_28_4();
    v30 = swift_allocError();
    OUTLINED_FUNCTION_23_5(v30, v31);
    swift_willThrow();
    v32 = OUTLINED_FUNCTION_38_1();
    return v33(v32);
  }
}

void sub_231099504(uint64_t a1, uint64_t a2, char a3)
{
  v22 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    sub_2310997CC();
    OUTLINED_FUNCTION_28_4();
    swift_allocError();
    *v18 = 0;
    *(v18 + 8) = 0;
    *(v18 + 16) = 1;
    swift_willThrow();
    return;
  }

  *token.val = sub_2311582D8();
  token.val[2] = v6;
  token.val[3] = v7;
  token.val[4] = v8;
  token.val[5] = v9;
  token.val[6] = v10;
  token.val[7] = v11;
  v12 = SecTaskCreateWithAuditToken(0, &token);
  if (v12)
  {
    v13 = v12;
    *token.val = 0;

    v14 = sub_231158E28();

    v15 = SecTaskCopyValueForEntitlement(v13, v14, &token);

    v16 = *token.val;
    if (*token.val)
    {

      type metadata accessor for CFError(0);
      sub_23109997C(&qword_27DD3C6A0, type metadata accessor for CFError, MEMORY[0x277CC9CB8]);
      OUTLINED_FUNCTION_28_4();
      swift_allocError();
      *v17 = v16;
    }

    else
    {
      if (v15)
      {
        swift_unknownObjectRetain();
        if ((swift_dynamicCast() & 1) != 0 && v20 == (a3 & 1))
        {
          swift_unknownObjectRelease();

          goto LABEL_11;
        }
      }

      sub_2310997CC();
      OUTLINED_FUNCTION_28_4();
      swift_allocError();
      *v19 = a1;
      *(v19 + 8) = a2;
      *(v19 + 16) = 1;
    }

    swift_willThrow();
    swift_unknownObjectRelease();
LABEL_11:

    return;
  }

  __break(1u);
}

id *VCDaemonXPCServer.deinit()
{

  return v0;
}

uint64_t VCDaemonXPCServer.__deallocating_deinit()
{
  VCDaemonXPCServer.deinit();

  return MEMORY[0x2821FE8D8](v0, 80, 7);
}

unint64_t sub_2310997CC()
{
  result = qword_27DD3C630;
  if (!qword_27DD3C630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3C630);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_14VoiceShortcuts17VCDaemonXPCServerC11DaemonErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_231099878(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_2310998A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C648, &qword_2311647B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_231099918(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23109997C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2310999C4(uint64_t a1)
{
  v4 = sub_231158308();
  OUTLINED_FUNCTION_19(v4);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_2310721C0;

  return sub_23109445C(a1, v7, v8, v9, v1 + v6);
}

uint64_t OUTLINED_FUNCTION_0_14()
{
  *(v1 - 80) = *(v0 + 432);
}

id OUTLINED_FUNCTION_3_11()
{

  return v0;
}

uint64_t OUTLINED_FUNCTION_7_10()
{
}

uint64_t OUTLINED_FUNCTION_18_4()
{
}

void OUTLINED_FUNCTION_23_5(uint64_t a1, uint64_t a2)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 2;
}

uint64_t OUTLINED_FUNCTION_41_3()
{

  return sub_231157C88();
}

uint64_t OUTLINED_FUNCTION_48_2()
{

  return swift_task_alloc();
}

uint64_t ShortcutTransformer.init(shortcutToolDefinition:database:drawerContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_231158418();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for ShortcutTransformer(0);
  *(a4 + *(result + 20)) = a2;
  *(a4 + *(result + 24)) = a3;
  return result;
}

uint64_t type metadata accessor for ShortcutTransformer(uint64_t a1)
{
  result = qword_27DD3C6F8;
  if (!qword_27DD3C6F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ShortcutTransformer.transform(item:)(uint64_t a1)
{
  v2[13] = a1;
  v2[14] = v1;
  v3 = sub_231158338();
  v2[15] = v3;
  OUTLINED_FUNCTION_5(v3);
  v2[16] = v4;
  v2[17] = OUTLINED_FUNCTION_21_0();
  v5 = sub_231157A08();
  v2[18] = v5;
  OUTLINED_FUNCTION_5(v5);
  v2[19] = v6;
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v7 = sub_231158368();
  v2[22] = v7;
  OUTLINED_FUNCTION_5(v7);
  v2[23] = v8;
  v2[24] = OUTLINED_FUNCTION_21_0();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C6B0, &qword_2311647F8);
  OUTLINED_FUNCTION_19(v9);
  v2[25] = OUTLINED_FUNCTION_21_0();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C6B8, &qword_231164800);
  OUTLINED_FUNCTION_19(v10);
  v2[26] = OUTLINED_FUNCTION_21_0();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C6C0, &unk_231164808);
  OUTLINED_FUNCTION_19(v11);
  v2[27] = OUTLINED_FUNCTION_21_0();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BCB0, &qword_231164120);
  OUTLINED_FUNCTION_19(v12);
  v2[28] = OUTLINED_FUNCTION_21_0();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BCB8, &unk_231161CE0);
  OUTLINED_FUNCTION_19(v13);
  v2[29] = OUTLINED_FUNCTION_21_0();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BCC0, &qword_231162760);
  OUTLINED_FUNCTION_19(v14);
  v2[30] = OUTLINED_FUNCTION_21_0();
  v15 = sub_231158418();
  v2[31] = v15;
  OUTLINED_FUNCTION_5(v15);
  v2[32] = v16;
  v2[33] = OUTLINED_FUNCTION_21_0();
  v17 = sub_231158488();
  v2[34] = v17;
  OUTLINED_FUNCTION_5(v17);
  v2[35] = v18;
  v2[36] = OUTLINED_FUNCTION_21_0();

  return MEMORY[0x2822009F8](sub_23109A208, 0, 0);
}

uint64_t sub_23109A208()
{
  v1 = v0[14];
  v2 = type metadata accessor for ShortcutTransformer(0);
  v0[37] = v2;
  v3 = *(v1 + *(v2 + 20));
  _sSo10WFDatabaseC11WorkflowKitE017SpotlightSyncableB0V14VoiceShortcutsE17diffingIdentifierSSvg_0();
  v4 = sub_231158E28();

  v5 = [v3 referenceForWorkflowID_];
  v0[38] = v5;

  if (!v5)
  {

    OUTLINED_FUNCTION_21_4();

    __asm { BRAA            X2, X16 }
  }

  v6 = v0[29];
  v7 = v0[30];
  v33 = v0[27];
  v34 = v0[26];
  v35 = v0[28];
  (*(v0[32] + 16))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BCD0, &qword_231161CF8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231161B80;
  *(inited + 32) = 0x6C666B726F574657;
  *(inited + 40) = 0xEA0000000000776FLL;
  v9 = sub_231158968();
  v32 = swift_allocBox();
  v11 = v10;
  _sSo10WFDatabaseC11WorkflowKitE017SpotlightSyncableB0V14VoiceShortcutsE17diffingIdentifierSSvg_0();
  v12 = v5;
  v13 = [v12 name];
  sub_231158E58();

  v14 = sub_231158B88();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v14);
  sub_231158B98();
  v15 = sub_231158BF8();
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v15);
  sub_231158958();
  (*(*(v9 - 8) + 104))(v11, *MEMORY[0x277D729C8], v9);
  v16 = sub_231158978();
  v17 = MEMORY[0x277D72A68];
  *(inited + 72) = v16;
  *(inited + 80) = v17;
  *__swift_allocate_boxed_opaque_existential_1((inited + 48)) = v32;
  (*(*(v16 - 8) + 104))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BCD8, &unk_231161D00);
  sub_231158DB8();
  v18 = sub_231158588();
  __swift_storeEnumTagSinglePayload(v33, 1, 1, v18);
  v19 = sub_231158578();
  __swift_storeEnumTagSinglePayload(v34, 1, 1, v19);
  [v12 hasOutputAction];
  sub_231158598();
  v20 = sub_2311585A8();
  __swift_storeEnumTagSinglePayload(v35, 0, 1, v20);
  sub_231158448();
  v23 = v0[25];
  _sSo10WFDatabaseC11WorkflowKitE017SpotlightSyncableB0V14VoiceShortcutsE17diffingIdentifierSSvg_0();
  v0[39] = v24;
  v25 = [v12 name];
  sub_231158E58();
  v27 = v26;

  v0[40] = v27;
  sub_2311593A8();
  v28 = sub_2311585B8();
  __swift_storeEnumTagSinglePayload(v23, 0, 1, v28);
  v29 = swift_task_alloc();
  v0[41] = v29;
  *v29 = v0;
  v29[1] = sub_23109A7BC;
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_21_4();

  return MEMORY[0x2821DA7D8]();
}

uint64_t sub_23109A7BC()
{
  v2 = *v1;
  OUTLINED_FUNCTION_19_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_19_5();
  *v5 = v4;
  v2[42] = v6;
  v2[43] = v0;

  if (v0)
  {
    v7 = v2[38];
    v8 = v2[25];

    sub_23109B604(v8);
    v9 = sub_23109B4EC;
  }

  else
  {
    sub_23109B604(v2[25]);

    v9 = sub_23109A944;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

void *sub_23109A944(uint64_t a1)
{
  v2 = *(v1 + 336);
  v3 = *(v1 + 304);
  v4 = *(v1 + 184);
  v137 = *(v1 + 176);
  v138 = *(v1 + 192);
  _sSo10WFDatabaseC11WorkflowKitE017SpotlightSyncableB0V14VoiceShortcutsE17diffingIdentifierSSvg_0();
  v5 = sub_231158E28();

  [v2 setUniqueIdentifier_];

  v6 = OUTLINED_FUNCTION_4_9();
  v7 = _sSo10WFDatabaseC11WorkflowKitE017SpotlightSyncableB0V14VoiceShortcutsE17diffingIdentifierSSvg_0();
  sub_231055EDC(v7, v8, v6, &selRef_setIdentifier_);

  v9 = OUTLINED_FUNCTION_4_9();
  v10 = [v3 name];
  v11 = sub_231158E58();
  v13 = v12;

  sub_231055EDC(v11, v13, v9, &selRef_setTitle_);
  v14 = OUTLINED_FUNCTION_4_9();
  v15 = [v3 name];
  v16 = sub_231158E58();
  v18 = v17;

  sub_231055EDC(v16, v18, v14, &selRef_setDisplayName_);
  v19 = OUTLINED_FUNCTION_4_9();
  [v19 setContentDescription_];

  v20 = OUTLINED_FUNCTION_4_9();
  sub_231054A0C(0, &qword_280CCAE60, 0x277CCABB0);
  v21 = sub_2311593F8();
  v22 = OUTLINED_FUNCTION_5_10();
  [v22 v23];

  v24 = OUTLINED_FUNCTION_4_9();
  v25 = sub_2311593F8();
  v26 = OUTLINED_FUNCTION_5_10();
  [v26 v27];

  v28 = OUTLINED_FUNCTION_4_9();
  v29 = sub_2311593F8();
  [v28 setUserCreated_];

  v30 = OUTLINED_FUNCTION_4_9();
  (*(v4 + 104))(v138, *MEMORY[0x277D72200], v137);
  sub_231158358();
  v31 = OUTLINED_FUNCTION_17();
  v32(v31);
  v33 = sub_231158E28();
  result = sub_231158438();
  if (!result)
  {
    __break(1u);
    goto LABEL_23;
  }

  v35 = result;
  v36 = *(v1 + 336);
  v37 = *(v1 + 304);
  v38 = *(v1 + 168);
  v39 = *(v1 + 144);
  v40 = *(v1 + 152);

  v41 = OUTLINED_FUNCTION_5_10();
  [v41 v42];

  v43 = [v36 attributeSet];
  v44 = [v37 creationDate];
  sub_2311579D8();

  v45 = sub_2311579B8();
  v46 = *(v40 + 8);
  v46(v38, v39);
  v47 = OUTLINED_FUNCTION_5_10();
  [v47 v48];

  v49 = [v36 attributeSet];
  v50 = [v37 modificationDate];
  sub_2311579D8();

  v51 = sub_2311579B8();
  v46(v38, v39);
  v52 = OUTLINED_FUNCTION_5_10();
  [v52 v53];

  v54 = [v36 attributeSet];
  v55 = [v37 lastRunDate];
  if (v55)
  {
    v56 = v55;
    v57 = *(v1 + 160);
    v58 = *(v1 + 144);
    sub_2311579D8();

    v59 = sub_2311579B8();
    v46(v57, v58);
  }

  else
  {
    v59 = 0;
  }

  v60 = *(v1 + 336);
  v61 = *(v1 + 304);
  [v54 setLastUsedDate_];

  v62 = [v60 attributeSet];
  v63 = [v61 runEventsCount];
  [v62 setPlayCount_];

  v64 = [v60 attributeSet];
  v65 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithLongLong_];
  sub_231054A0C(0, &qword_27DD3C8E0, 0x277CC33B0);
  v66 = sub_231092AD0(0xD000000000000021, 0x80000002311673A0, 0, 0, 1, 0);
  if (v66)
  {
    v67 = v66;
    v68 = *(v1 + 304);
    [v64 setValue:v65 forCustomKey:v66];

    sub_23108C5B4(v68, &selRef_associatedAppBundleIdentifier);
    if (v69)
    {
      v70 = [*(v1 + 336) attributeSet];
      v71 = OUTLINED_FUNCTION_17();
LABEL_13:
      sub_231055EDC(v71, v72, v70, v73);
LABEL_14:

      v88 = *(v1 + 336);
      v90 = *(v1 + 296);
      v89 = *(v1 + 304);
      v91 = *(v1 + 112);
      v139 = v88;
      sub_231054A0C(0, &qword_27DD3C6D8, 0x277CD3FE8);
      v92 = *(v91 + *(v90 + 24));
      v93 = v89;
      v94 = v92;
      v95 = sub_23109B66C(v93, 1, v92);
      v96 = [v88 attributeSet];
      [v95 configureAttributeSet:v96 includingData:0];

      v97 = _sSo10WFDatabaseC11WorkflowKitE017SpotlightSyncableB0V14VoiceShortcutsE17diffingIdentifierSSvg_0();
      v135 = v98;
      v136 = v97;
      v99 = [v93 name];
      v100 = sub_231158E58();
      v102 = v101;

      v103 = [v93 color];
      LOWORD(v90) = [v93 glyphCharacter];
      v104 = v93;
      v105 = sub_23108C5B4(v104, &selRef_associatedAppBundleIdentifier);
      v107 = v106;
      v108 = sub_23108C5B4(v104, &selRef_searchAttributionAppBundleIdentifier);
      v110 = v109;
      v111 = objc_allocWithZone(MEMORY[0x277D7A1D0]);
      v112 = sub_23109B870(v136, v135, v100, v102, v103, v90, v105, v107, v108, v110);
      v113 = [v139 attributeSet];
      v114 = _sSo10WFDatabaseC11WorkflowKitE017SpotlightSyncableB0V14VoiceShortcutsE17diffingIdentifierSSvg_0();
      sub_231055EDC(v114, v115, v113, &selRef_setUniqueIdentifier_);

      v116 = [v139 attributeSet];
      [v116 setWorkflowReferenceForDisplayRepresentation_];

      v117 = [v104 icon];
      [v117 glyphCharacter];

      v118 = WFSystemImageNameForGlyphCharacter();
      if (v118)
      {
        v119 = v118;
        v120 = *(v1 + 304);
        v122 = *(v1 + 280);
        v121 = *(v1 + 288);
        v123 = *(v1 + 272);
        v124 = [*(v1 + 336) attributeSet];
        v125 = v119;
        v126 = WFSpotlightResultRunnableAccessorySystemImageNameKey();
        [v124 setValue:v125 forCustomKey:v126];

        (*(v122 + 8))(v121, v123);
      }

      else
      {
        v127 = *(v1 + 304);
        (*(*(v1 + 280) + 8))(*(v1 + 288), *(v1 + 272));
      }

      OUTLINED_FUNCTION_0_15();
      v140 = v128;

      v129 = *(v1 + 8);

      return v129(v140);
    }

    v82 = *(v1 + 128);
    v81 = *(v1 + 136);
    v83 = *(v1 + 120);
    v84 = [*(v1 + 304) icon];
    sub_231054A0C(0, &qword_27DD3C6D0, 0x277D7A1E0);
    sub_231158A18();
    (*(v82 + 104))(v81, *MEMORY[0x277D721F0], v83);
    sub_231158328();
    v86 = v85;
    (*(v82 + 8))(v81, v83);
    v87 = *(v1 + 336);
    if (v86 >> 60 == 15)
    {
      v70 = [*(v1 + 336) attributeSet];
      v71 = sub_231158E58();
      v73 = &selRef_setThumbnailBundleID_;
      goto LABEL_13;
    }

    OUTLINED_FUNCTION_17();
    v130 = sub_231157998();
    v131 = OUTLINED_FUNCTION_17();
    sub_231054A4C(v131, v132);
    v70 = [v87 attributeSet];
    v133 = v130;
    result = sub_231158428();
    if (result)
    {
      v134 = result;
      [v70 setValue:v133 forCustomKey:result];

      goto LABEL_14;
    }

LABEL_23:
    __break(1u);
    return result;
  }

  v74 = *(v1 + 336);
  v75 = *(v1 + 304);
  v77 = *(v1 + 280);
  v76 = *(v1 + 288);
  v78 = *(v1 + 272);

  sub_23109B97C();
  swift_allocError();
  *v79 = 1;
  swift_willThrow();

  (*(v77 + 8))(v76, v78);
  OUTLINED_FUNCTION_0_15();

  v80 = *(v1 + 8);

  return v80();
}

uint64_t sub_23109B4EC()
{
  v2 = *(v0 + 280);
  v1 = *(v0 + 288);
  v3 = *(v0 + 272);

  (*(v2 + 8))(v1, v3);
  OUTLINED_FUNCTION_0_15();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_23109B604(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C6B0, &qword_2311647F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_23109B66C(void *a1, char a2, void *a3)
{
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithWorkflowReference:a1 includeIcon:a2 & 1 iconDrawerContext:a3];

  return v5;
}

uint64_t sub_23109B6D0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_23109B768;

  return ShortcutTransformer.transform(item:)(a2);
}

uint64_t sub_23109B768(uint64_t a1)
{
  v4 = *v2;
  OUTLINED_FUNCTION_19_5();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_19_5();
  *v7 = v6;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v8 = *(v6 + 8);

  return v8();
}

id sub_23109B870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int16 a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v14 = sub_231158E28();

  v15 = sub_231158E28();

  if (!a8)
  {
    v16 = 0;
    if (a10)
    {
      goto LABEL_3;
    }

LABEL_5:
    v17 = 0;
    goto LABEL_6;
  }

  v16 = sub_231158E28();

  if (!a10)
  {
    goto LABEL_5;
  }

LABEL_3:
  v17 = sub_231158E28();

LABEL_6:
  v18 = [v10 initWithIdentifier:v14 name:v15 color:a5 glyphCharacter:a6 associatedAppBundleIdentifier:v16 searchAttributionAppBundleIdentifier:v17];

  return v18;
}

unint64_t sub_23109B97C()
{
  result = qword_27DD3C6C8;
  if (!qword_27DD3C6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3C6C8);
  }

  return result;
}

uint64_t sub_23109B9D0(uint64_t a1)
{
  *(a1 + 8) = sub_23109BA6C(&qword_27DD3C6E0, MEMORY[0x277D7C028]);
  result = sub_23109BA6C(&qword_27DD3C6E8, MEMORY[0x277D7C020]);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_23109BA6C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_231159228();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23109BAD8(uint64_t a1)
{
  result = sub_231158418();
  if (v2 <= 0x3F)
  {
    result = sub_231054A0C(319, &qword_27DD3C708, 0x277D7C2F0);
    if (v3 <= 0x3F)
    {
      result = sub_231054A0C(319, &qword_27DD3C710, 0x277D7A1F0);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ShortcutTransformer.Error(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_23109BC74()
{
  result = qword_27DD3C718;
  if (!qword_27DD3C718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3C718);
  }

  return result;
}

id OUTLINED_FUNCTION_4_9()
{

  return [v1 (v0 + 116)];
}

void sub_23109BD08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_55_2();
  OUTLINED_FUNCTION_12();
  v5 = OUTLINED_FUNCTION_35_2(&qword_27DD3C7F0, &qword_27DD3D020, &qword_2311649D0);
  OUTLINED_FUNCTION_19_6(v5);
  OUTLINED_FUNCTION_8();
  v6 = swift_allocObject();
  v7 = OUTLINED_FUNCTION_11_8(v6);
  OUTLINED_FUNCTION_10_11(v7);
  *(v3 + 32) = sub_2310A2258;
  *(v3 + 40) = v4;

  OUTLINED_FUNCTION_9_11();
  OUTLINED_FUNCTION_54_2();
}

void sub_23109BDA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_55_2();
  OUTLINED_FUNCTION_12();
  v5 = OUTLINED_FUNCTION_3_12(&qword_27DD3C800, &unk_27DD3D010, &qword_231162AA0);
  OUTLINED_FUNCTION_19_6(v5);
  OUTLINED_FUNCTION_8();
  v6 = swift_allocObject();
  OUTLINED_FUNCTION_11_8(v6);
  OUTLINED_FUNCTION_28_1(v3 + 16, v7);
  *(v3 + 16) = sub_2310A1F94;
  *(v3 + 24) = v4;

  OUTLINED_FUNCTION_9_11();
  OUTLINED_FUNCTION_54_2();
}

void sub_23109BE3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_55_2();
  OUTLINED_FUNCTION_12();
  v5 = OUTLINED_FUNCTION_35_2(&qword_27DD3C8D0, &qword_27DD3C8D8, &unk_231166700);
  OUTLINED_FUNCTION_19_6(v5);
  OUTLINED_FUNCTION_8();
  v6 = swift_allocObject();
  v7 = OUTLINED_FUNCTION_11_8(v6);
  OUTLINED_FUNCTION_10_11(v7);
  *(v3 + 32) = sub_2310A2058;
  *(v3 + 40) = v4;

  OUTLINED_FUNCTION_9_11();
  OUTLINED_FUNCTION_54_2();
}

void sub_23109BED4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_55_2();
  OUTLINED_FUNCTION_12();
  v5 = OUTLINED_FUNCTION_33_2(&unk_27DD3C860, &qword_27DD3C970, &qword_231164A00);
  OUTLINED_FUNCTION_19_6(v5);
  OUTLINED_FUNCTION_8();
  v6 = swift_allocObject();
  OUTLINED_FUNCTION_11_8(v6);
  OUTLINED_FUNCTION_28_1(v3 + 24, v7);
  *(v3 + 24) = sub_2310A2058;
  *(v3 + 32) = v4;

  OUTLINED_FUNCTION_9_11();
  OUTLINED_FUNCTION_54_2();
}

void sub_23109BF70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_55_2();
  OUTLINED_FUNCTION_12();
  v5 = OUTLINED_FUNCTION_0_16(&qword_27DD3BF68, &unk_27DD3C770, qword_2311649B0);
  OUTLINED_FUNCTION_19_6(v5);
  OUTLINED_FUNCTION_8();
  v6 = swift_allocObject();
  v7 = OUTLINED_FUNCTION_11_8(v6);
  OUTLINED_FUNCTION_10_11(v7);
  *(v3 + 32) = sub_2310A2258;
  *(v3 + 40) = v4;

  OUTLINED_FUNCTION_9_11();
  OUTLINED_FUNCTION_54_2();
}

void sub_23109C008(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_55_2();
  OUTLINED_FUNCTION_12();
  v5 = OUTLINED_FUNCTION_0_16(&unk_27DD3C8C0, &qword_27DD3BF50, &qword_231162A80);
  OUTLINED_FUNCTION_19_6(v5);
  OUTLINED_FUNCTION_8();
  v6 = swift_allocObject();
  v7 = OUTLINED_FUNCTION_11_8(v6);
  OUTLINED_FUNCTION_10_11(v7);
  *(v3 + 32) = sub_2310A2258;
  *(v3 + 40) = v4;

  OUTLINED_FUNCTION_9_11();
  OUTLINED_FUNCTION_54_2();
}

void sub_23109C0A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_55_2();
  OUTLINED_FUNCTION_12();
  v5 = OUTLINED_FUNCTION_3_12(&qword_27DD3BF70, &qword_27DD3C840, &qword_2311649F0);
  OUTLINED_FUNCTION_19_6(v5);
  OUTLINED_FUNCTION_8();
  v6 = swift_allocObject();
  OUTLINED_FUNCTION_11_8(v6);
  OUTLINED_FUNCTION_28_1(v3 + 16, v7);
  *(v3 + 16) = sub_2310A2030;
  *(v3 + 24) = v4;

  OUTLINED_FUNCTION_9_11();
  OUTLINED_FUNCTION_54_2();
}

uint64_t sub_23109C13C(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = a2();
  if (result)
  {
    result = swift_beginAccess();
    v7 = *(a4 + 32);
    if (v7)
    {
      v8 = *(a4 + 40);

      v7(a1);
      return sub_231046164(v7, v8);
    }
  }

  return result;
}

uint64_t sub_23109C1C0(uint64_t a1, uint64_t (*a2)(uint64_t *), uint64_t a3, uint64_t a4, uint64_t (*a5)(void (*)(void), uint64_t))
{
  v11 = a1;
  result = a2(&v11);
  if (result)
  {
    result = OUTLINED_FUNCTION_81(a4 + 32, &v10);
    v8 = *(a4 + 32);
    if (v8)
    {
      v9 = *(a4 + 40);

      v8(&v11);
      return a5(v8, v9);
    }
  }

  return result;
}

uint64_t sub_23109C248(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *), uint64_t a4, uint64_t a5)
{
  v9[0] = a1;
  v9[1] = a2;
  result = a3(v9);
  if (result)
  {
    result = swift_beginAccess();
    v7 = *(a5 + 32);
    if (v7)
    {
      v8 = *(a5 + 40);

      v7(v9);
      return sub_231046164(v7, v8);
    }
  }

  return result;
}

uint64_t sub_23109C364(uint64_t a1, void (*a2)(void))
{
  a2(0);
  v2 = OUTLINED_FUNCTION_51();

  return v3(v2);
}

unint64_t sub_23109C428(unint64_t result, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  v6 = result;
  v3[3] = 0;
  v3[4] = 0;
  v3[2] = result;
  if (!(result >> 62))
  {
    v7 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_3;
    }

    return v3;
  }

  result = sub_2311594D8();
  v7 = result;
  if (!result)
  {
    return v3;
  }

LABEL_3:
  if (v7 >= 1)
  {

    v8 = 0;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x231925080](v8, v6);
      }

      else
      {
        v10 = *(v6 + 8 * v8 + 32);
      }

      ++v8;
      OUTLINED_FUNCTION_28_1(v10 + 32, v9);
      v11 = *(v10 + 32);
      v12 = *(v10 + 40);
      *(v10 + 32) = a2;
      *(v10 + 40) = v3;

      a3(v11, v12);
    }

    while (v7 != v8);

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_23109C53C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[0] = a1;
  v7[1] = a2;
  result = swift_beginAccess();
  v5 = *(a3 + 24);
  if (v5)
  {
    v6 = *(a3 + 32);

    v5(v7);
    return sub_231046164(v5, v6);
  }

  return result;
}

uint64_t sub_23109C5B0(uint64_t a1, uint64_t a2)
{
  v6 = a1;
  result = swift_beginAccess();
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a2 + 32);

    v4(&v6);
    return sub_231046164(v4, v5);
  }

  return result;
}

void sub_23109C61C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_55_2();
  OUTLINED_FUNCTION_12();
  v5 = OUTLINED_FUNCTION_0_16(&qword_27DD3C7F8, &unk_27DD3C7E0, &unk_231166790);
  OUTLINED_FUNCTION_19_6(v5);
  OUTLINED_FUNCTION_8();
  v6 = swift_allocObject();
  OUTLINED_FUNCTION_4_10(v6, v7);
  *(v3 + 32) = sub_2310A1F60;
  *(v3 + 40) = v4;

  OUTLINED_FUNCTION_9_11();
  OUTLINED_FUNCTION_54_2();
}

void sub_23109C6B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_55_2();
  OUTLINED_FUNCTION_12();
  v5 = OUTLINED_FUNCTION_0_16(&qword_27DD3BF68, &unk_27DD3C770, qword_2311649B0);
  OUTLINED_FUNCTION_19_6(v5);
  OUTLINED_FUNCTION_8();
  v6 = swift_allocObject();
  OUTLINED_FUNCTION_4_10(v6, v7);
  *(v3 + 32) = sub_2310A1F44;
  *(v3 + 40) = v4;

  OUTLINED_FUNCTION_9_11();
  OUTLINED_FUNCTION_54_2();
}

void sub_23109C744(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_55_2();
  OUTLINED_FUNCTION_12();
  v5 = OUTLINED_FUNCTION_33_2(&unk_27DD3C810, &unk_27DD3C730, &unk_2311649A0);
  OUTLINED_FUNCTION_19_6(v5);
  OUTLINED_FUNCTION_8();
  v6 = swift_allocObject();
  OUTLINED_FUNCTION_8_10(v6);
  OUTLINED_FUNCTION_28_1(v3 + 24, v7);
  *(v3 + 24) = sub_2310A1FA0;
  *(v3 + 32) = v4;

  OUTLINED_FUNCTION_9_11();
  OUTLINED_FUNCTION_54_2();
}

void sub_23109C7E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_55_2();
  OUTLINED_FUNCTION_12();
  v5 = OUTLINED_FUNCTION_3_12(&qword_27DD3C800, &unk_27DD3D010, &qword_231162AA0);
  OUTLINED_FUNCTION_19_6(v5);
  OUTLINED_FUNCTION_8();
  v6 = swift_allocObject();
  OUTLINED_FUNCTION_8_10(v6);
  OUTLINED_FUNCTION_28_1(v3 + 16, v7);
  *(v3 + 16) = sub_2310A1F60;
  *(v3 + 24) = v4;

  OUTLINED_FUNCTION_9_11();
  OUTLINED_FUNCTION_54_2();
}

void sub_23109C87C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_55_2();
  OUTLINED_FUNCTION_12();
  v5 = OUTLINED_FUNCTION_0_16(&qword_27DD3C8F0, &qword_27DD3C8F8, &qword_231164A40);
  OUTLINED_FUNCTION_19_6(v5);
  OUTLINED_FUNCTION_8();
  v6 = swift_allocObject();
  OUTLINED_FUNCTION_4_10(v6, v7);
  *(v3 + 32) = sub_2310A225C;
  *(v3 + 40) = v4;

  OUTLINED_FUNCTION_9_11();
  OUTLINED_FUNCTION_54_2();
}

void sub_23109C910(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_55_2();
  OUTLINED_FUNCTION_12();
  v5 = OUTLINED_FUNCTION_0_16(&qword_27DD3C900, &qword_27DD3C908, &qword_231164A48);
  OUTLINED_FUNCTION_19_6(v5);
  OUTLINED_FUNCTION_8();
  v6 = swift_allocObject();
  OUTLINED_FUNCTION_4_10(v6, v7);
  *(v3 + 32) = sub_2310A225C;
  *(v3 + 40) = v4;

  OUTLINED_FUNCTION_9_11();
  OUTLINED_FUNCTION_54_2();
}

void sub_23109C9A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_55_2();
  OUTLINED_FUNCTION_12();
  v5 = OUTLINED_FUNCTION_3_12(&qword_27DD3BF48, &qword_27DD3C820, &unk_2311649E0);
  OUTLINED_FUNCTION_19_6(v5);
  OUTLINED_FUNCTION_8();
  v6 = swift_allocObject();
  OUTLINED_FUNCTION_8_10(v6);
  OUTLINED_FUNCTION_28_1(v3 + 16, v7);
  *(v3 + 16) = sub_2310A1FAC;
  *(v3 + 24) = v4;

  OUTLINED_FUNCTION_9_11();
  OUTLINED_FUNCTION_54_2();
}

void sub_23109CA40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_55_2();
  OUTLINED_FUNCTION_12();
  v5 = OUTLINED_FUNCTION_0_16(&unk_27DD3C8C0, &qword_27DD3BF50, &qword_231162A80);
  OUTLINED_FUNCTION_19_6(v5);
  OUTLINED_FUNCTION_8();
  v6 = swift_allocObject();
  OUTLINED_FUNCTION_4_10(v6, v7);
  *(v3 + 32) = sub_2310A225C;
  *(v3 + 40) = v4;

  OUTLINED_FUNCTION_9_11();
  OUTLINED_FUNCTION_54_2();
}

void sub_23109CAD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_55_2();
  OUTLINED_FUNCTION_12();
  v5 = OUTLINED_FUNCTION_0_16(&qword_27DD3C828, &unk_27DD3C830, &unk_231166780);
  OUTLINED_FUNCTION_19_6(v5);
  OUTLINED_FUNCTION_8();
  v6 = swift_allocObject();
  OUTLINED_FUNCTION_4_10(v6, v7);
  *(v3 + 32) = sub_2310A1FA0;
  *(v3 + 40) = v4;

  OUTLINED_FUNCTION_9_11();
  OUTLINED_FUNCTION_54_2();
}

uint64_t sub_23109CB68(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, void *))
{
  v10[0] = a1;
  v10[1] = a2;
  result = swift_beginAccess();
  v7 = *(a3 + 32);
  if (v7)
  {
    v8 = *(a3 + 40);

    a4(&v9, v10);
    v7(&v9);
    sub_231046164(v7, v8);
  }

  return result;
}

void sub_23109CC00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_55_2();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  OUTLINED_FUNCTION_81(v26 + 32, &a10);
  v30 = *(v27 + 32);
  if (v30)
  {
    v31 = *(v27 + 40);

    v25(&a9, v29);
    v30(&a9);
    v23(v30, v31);
  }

  OUTLINED_FUNCTION_54_2();
}

uint64_t sub_23109CC98(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t))
{
  result = swift_beginAccess();
  v7 = *(a2 + 32);
  if (v7)
  {
    v8 = *(a2 + 40);

    a3(&v9, a1);
    v7(&v9);
    sub_231046164(v7, v8);
  }

  return result;
}

uint64_t sub_23109CD38(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t *))
{
  v10 = a1;
  result = OUTLINED_FUNCTION_81(a2 + 32, v9);
  v6 = *(a2 + 32);
  if (v6)
  {
    v7 = *(a2 + 40);

    a3(&v8, &v10);
    v6(&v8);
    sub_231046164(v6, v7);
  }

  return result;
}

void sub_23109CDC8(uint64_t a1)
{
  OUTLINED_FUNCTION_77();
  v2 = v1;
  v4 = v3;
  v42[2] = *MEMORY[0x277D85DE8];
  v5 = sub_231157948();
  OUTLINED_FUNCTION_4();
  v40 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5_0();
  v10 = v9 - v8;
  v11 = sub_231157988();
  OUTLINED_FUNCTION_4();
  v13 = v12;
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v41 = &v38 - v18;
  if ([objc_opt_self() isIndexingAvailable] && (sub_231054A0C(0, &qword_27DD3C8E0, 0x277CC33B0), (v19 = sub_231092AD0(0xD000000000000022, 0x80000002311673D0, 0, 0, 0, 0)) != 0))
  {
    v20 = v19;
    v39 = v13;
    v21 = sub_231158E58();
    v38 = v5;
    v22 = objc_allocWithZone(MEMORY[0x277CC34A8]);
    v2[2] = sub_2310C0D80(0xD000000000000023, 0x8000000231169A20, v21);
    v2[3] = v4;
    v2[4] = v20;
    v23 = objc_opt_self();
    v24 = v4;
    v25 = v20;
    v26 = [v23 wf_realLibraryDirectoryURL];
    sub_231157968();

    v42[0] = 0xD000000000000017;
    v42[1] = 0x8000000231169A50;
    v27 = v40;
    v28 = v38;
    (*(v40 + 104))(v10, *MEMORY[0x277CC91D0], v38);
    sub_2310A2170();
    v29 = v41;
    sub_231157978();
    (*(v27 + 8))(v10, v28);
    v30 = *(v39 + 8);
    v30(v17, v11);
    v31 = sub_231157958();
    LODWORD(v27) = [v31 wf_fileExists];

    if (v27)
    {
      v32 = [objc_opt_self() defaultManager];
      v33 = sub_231157958();
      v42[0] = 0;
      v34 = [v32 removeItemAtURL:v33 error:v42];

      if (!v34)
      {
        v36 = v42[0];
        v37 = sub_231157938();

        swift_willThrow();
        v30(v29, v11);
        goto LABEL_8;
      }

      v35 = v42[0];
    }

    v30(v29, v11);
  }

  else
  {

    type metadata accessor for WFSpotlightSyncService();
    swift_deallocPartialClassInstance();
  }

LABEL_8:
  OUTLINED_FUNCTION_78();
}

uint64_t sub_23109D204()
{
  OUTLINED_FUNCTION_4_1();
  v1[19] = v0;
  v2 = sub_231158258();
  v1[20] = v2;
  OUTLINED_FUNCTION_5(v2);
  v1[21] = v3;
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v4 = sub_231159228();
  v1[24] = v4;
  OUTLINED_FUNCTION_5(v4);
  v1[25] = v5;
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_23109D358()
{
  OUTLINED_FUNCTION_28_0();
  v1 = *(v0[19] + 24);
  v0[18] = 0;
  v2 = [v1 databaseWithError_];
  v0[29] = v2;
  v3 = v0[18];
  if (v2)
  {
    v4 = v3;
    v5 = swift_task_alloc();
    v0[30] = v5;
    *v5 = v0;
    v5[1] = sub_23109D4EC;

    return sub_23109ECB0();
  }

  else
  {
    v7 = v3;
    sub_231157938();

    swift_willThrow();
    OUTLINED_FUNCTION_45_3();

    OUTLINED_FUNCTION_1();

    return v8();
  }
}

uint64_t sub_23109D4EC()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_19_5();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 248) = v4;
  *(v2 + 256) = v0;

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_23109D620()
{
  v1 = v0[32];
  v2 = sub_231159248();
  v3 = v0[31];
  if (v1)
  {
    v4 = v0[29];

    OUTLINED_FUNCTION_1();
    goto LABEL_3;
  }

  v7 = v2;
  v8 = *(v3 + 16);
  v9 = MEMORY[0x277D84F90];
  v151 = v0;
  v141 = v2;
  v138 = v8;
  if (v8)
  {
    v10 = v0[25];
    v152 = MEMORY[0x277D84F90];
    v11 = OUTLINED_FUNCTION_44_1();
    sub_23104CA0C(v11, v8, 0);
    v9 = v152;
    v10 += 16;
    OUTLINED_FUNCTION_71_0();
    v13 = v3 + v12;
    v143 = *(v10 + 56);
    v146 = v14;
    v15 = (v10 - 8);
    do
    {
      v16 = v0[28];
      v17 = v0[24];
      v146(v16, v13, v17);
      v18 = _sSo10WFDatabaseC11WorkflowKitE017SpotlightSyncableB0V14VoiceShortcutsE17diffingIdentifierSSvg_0();
      v20 = v19;
      (*v15)(v16, v17);
      v22 = *(v152 + 16);
      v21 = *(v152 + 24);
      if (v22 >= v21 >> 1)
      {
        v24 = OUTLINED_FUNCTION_13_10(v21);
        sub_23104CA0C(v24, v22 + 1, 1);
      }

      *(v152 + 16) = v22 + 1;
      v23 = v152 + 16 * v22;
      *(v23 + 32) = v18;
      *(v23 + 40) = v20;
      v13 += v143;
      --v8;
      v0 = v151;
    }

    while (v8);
    v7 = v141;
    v8 = v138;
  }

  v25 = sub_2310BE194(v9);
  v26 = v25;
  v27 = *(v7 + 16);
  v28 = MEMORY[0x277D84F90];
  if (v27)
  {
    v144 = v25;
    v29 = v0[25];
    v153 = MEMORY[0x277D84F90];
    v30 = OUTLINED_FUNCTION_44_1();
    sub_23104CA0C(v30, v27, 0);
    v31 = v153;
    OUTLINED_FUNCTION_71_0();
    v33 = v7 + v32;
    v147 = *(v29 + 72);
    v149 = v34;
    do
    {
      v149(v151[28], v33, v151[24]);
      v35 = _sSo10WFDatabaseC11WorkflowKitE017SpotlightSyncableB0V14VoiceShortcutsE17diffingIdentifierSSvg_0();
      v37 = v36;
      v38 = OUTLINED_FUNCTION_51();
      v39(v38);
      v41 = *(v153 + 16);
      v40 = *(v153 + 24);
      if (v41 >= v40 >> 1)
      {
        v43 = OUTLINED_FUNCTION_13_10(v40);
        sub_23104CA0C(v43, v41 + 1, 1);
      }

      *(v153 + 16) = v41 + 1;
      v42 = v153 + 16 * v41;
      *(v42 + 32) = v35;
      *(v42 + 40) = v37;
      v33 += v147;
      --v27;
    }

    while (v27);
    v0 = v151;
    v7 = v141;
    v26 = v144;
    v8 = v138;
    v28 = MEMORY[0x277D84F90];
  }

  else
  {
    v31 = MEMORY[0x277D84F90];
  }

  v137 = sub_2310A11C4(v31, v26);

  v44 = v0[31];
  if (v8)
  {
    v45 = v0[25];
    v46 = OUTLINED_FUNCTION_44_1();
    sub_23104CDD4(v46, v8, 0);
    v47 = v28;
    OUTLINED_FUNCTION_71_0();
    v49 = v44 + v48;
    v145 = *(v45 + 72);
    v148 = v50;
    do
    {
      v51 = v8;
      v148(v0[28], v49, v0[24]);
      v52 = _sSo10WFDatabaseC11WorkflowKitE017SpotlightSyncableB0V14VoiceShortcutsE17diffingIdentifierSSvg_0();
      v54 = v53;
      v55 = sub_231159218();
      v56 = OUTLINED_FUNCTION_51();
      v57(v56);
      v59 = *(v28 + 16);
      v58 = *(v28 + 24);
      if (v59 >= v58 >> 1)
      {
        v61 = OUTLINED_FUNCTION_13_10(v58);
        sub_23104CDD4(v61, v59 + 1, 1);
      }

      *(v28 + 16) = v59 + 1;
      v60 = (v28 + 24 * v59);
      v60[4] = v52;
      v60[5] = v54;
      v60[6] = v55;
      v49 += v145;
      v8 = v51 - 1;
      v0 = v151;
    }

    while (v51 != 1);

    v7 = v141;
  }

  else
  {

    v47 = MEMORY[0x277D84F90];
  }

  v62 = v0[25];
  v63 = 0;
  v150 = sub_23109EA94(v47);
  v139 = (v62 + 32);
  v140 = *(v7 + 16);
  v64 = MEMORY[0x277D84F90];
  v65 = MEMORY[0x277D84F90];
  while (1)
  {
    v0[33] = v65;
    if (v140 == v63)
    {
      break;
    }

    if (v63 >= *(v7 + 16))
    {
      __break(1u);
LABEL_79:
      __break(1u);
    }

    v66 = (*(v62 + 80) + 32) & ~*(v62 + 80);
    v67 = *(v62 + 72);
    (*(v62 + 16))(v0[27], v7 + v66 + v67 * v63, v0[24]);
    v68 = _sSo10WFDatabaseC11WorkflowKitE017SpotlightSyncableB0V14VoiceShortcutsE17diffingIdentifierSSvg_0();
    if (*(v150 + 16))
    {
      v70 = sub_23105FECC(v68, v69);
      v72 = v71;

      if (v72)
      {
        v73 = *(*(v150 + 56) + 8 * v70);
        v74 = 1;
      }

      else
      {
        v73 = 0;
        v74 = 0;
      }

      v0 = v151;
    }

    else
    {

      v73 = 0;
      v74 = 0;
    }

    v75 = sub_231159218();
    if (v74 && v73 == v75)
    {
      (*(v62 + 8))(v0[27], v0[24]);
      ++v63;
      v7 = v141;
    }

    else
    {
      v136 = *v139;
      (*v139)(v0[26], v0[27], v0[24]);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v76 = OUTLINED_FUNCTION_44_1();
        sub_23104CD7C(v76, v77, 1);
      }

      v79 = *(v65 + 16);
      v78 = *(v65 + 24);
      if (v79 >= v78 >> 1)
      {
        v82 = OUTLINED_FUNCTION_13_10(v78);
        sub_23104CD7C(v82, v79 + 1, 1);
      }

      ++v63;
      v0 = v151;
      v80 = v151[26];
      v81 = v151[24];
      *(v65 + 16) = v79 + 1;
      v136(v65 + v66 + v79 * v67, v80, v81);
      v7 = v141;
    }
  }

  v83 = *(v65 + 16);
  if (v83)
  {
    v84 = OUTLINED_FUNCTION_44_1();
    sub_23104CA0C(v84, v83, 0);
    OUTLINED_FUNCTION_71_0();
    v86 = v65 + v85;
    v87 = *(v62 + 72);
    v142 = *(v62 + 16);
    do
    {
      v142(v151[28], v86, v151[24]);
      v88 = _sSo10WFDatabaseC11WorkflowKitE017SpotlightSyncableB0V14VoiceShortcutsE17diffingIdentifierSSvg_0();
      v90 = v89;
      v91 = OUTLINED_FUNCTION_51();
      v92(v91);
      v94 = *(v64 + 16);
      v93 = *(v64 + 24);
      v95 = v94 + 1;
      if (v94 >= v93 >> 1)
      {
        v97 = OUTLINED_FUNCTION_13_10(v93);
        sub_23104CA0C(v97, v94 + 1, 1);
      }

      *(v64 + 16) = v95;
      v96 = v64 + 16 * v94;
      *(v96 + 32) = v88;
      *(v96 + 40) = v90;
      v86 += v87;
      --v83;
    }

    while (v83);
  }

  else
  {
    v95 = *(v64 + 16);
  }

  v98 = 0;
  v99 = MEMORY[0x277D84F90];
LABEL_51:
  v100 = v151;
  v101 = (v64 + 40 + 16 * v98);
  while (v95 != v98)
  {
    if (v98 >= *(v64 + 16))
    {
      goto LABEL_79;
    }

    if (*(v150 + 16))
    {
      v103 = *(v101 - 1);
      v102 = *v101;

      sub_23105FECC(v103, v102);
      if (v104)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v105 = OUTLINED_FUNCTION_44_1();
          sub_23104CA0C(v105, v106, 1);
        }

        v108 = *(v99 + 16);
        v107 = *(v99 + 24);
        if (v108 >= v107 >> 1)
        {
          v110 = OUTLINED_FUNCTION_13_10(v107);
          sub_23104CA0C(v110, v108 + 1, 1);
        }

        ++v98;
        *(v99 + 16) = v108 + 1;
        v109 = v99 + 16 * v108;
        *(v109 + 32) = v103;
        *(v109 + 40) = v102;
        goto LABEL_51;
      }

      v100 = v151;
    }

    v101 += 2;
    ++v98;
  }

  v100[34] = sub_2310BE194(v99);
  if (!v137[2])
  {

    if (*(v100[33] + 16))
    {
      sub_2311581C8();

      v114 = sub_231158238();
      v115 = sub_2311592F8();
      if (os_log_type_enabled(v114, v115))
      {
        v116 = swift_slowAlloc();
        OUTLINED_FUNCTION_80(v116, 3.852e-34);
        OUTLINED_FUNCTION_17_3(&dword_23103C000, v117, v118, "Indexing %ld shortcuts into spotlight index");
        MEMORY[0x2319267C0](v116, -1, -1);
      }

      else
      {
      }

      v126 = v100[29];
      v127 = v100[19];
      (*(v100[21] + 8))(v100[22], v100[20]);
      v128 = [objc_allocWithZone(MEMORY[0x277D7A1F0]) init];
      v100[37] = v128;
      OUTLINED_FUNCTION_8();
      v129 = swift_allocObject();
      v100[38] = v129;
      v129[2] = v126;
      v129[3] = v128;
      v129[4] = v127;
      v130 = v126;
      v131 = v128;

      v132 = swift_task_alloc();
      v100[39] = v132;
      *v132 = v100;
      OUTLINED_FUNCTION_23_6(v132);
      OUTLINED_FUNCTION_18_5(v100[33]);
      OUTLINED_FUNCTION_28();

      __asm { BR              X5 }
    }

    v125 = v100[29];
    [objc_opt_self() _resetCache];

LABEL_3:
    OUTLINED_FUNCTION_28();

    __asm { BRAA            X1, X16 }
  }

  sub_2311581C8();

  v111 = sub_231158238();
  v112 = sub_2311592F8();
  if (os_log_type_enabled(v111, v112))
  {
    v113 = swift_slowAlloc();
    *v113 = 134217984;
    *(v113 + 4) = v137[2];

    _os_log_impl(&dword_23103C000, v111, v112, "Removing %ld shortcuts from spotlight index", v113, 0xCu);
    MEMORY[0x2319267C0](v113, -1, -1);
  }

  else
  {
  }

  v119 = v100[19];
  (*(v100[21] + 8))(v100[23], v100[20]);
  v120 = *(v119 + 16);
  sub_231092834(v137);
  v121 = sub_231158F38();
  v100[35] = v121;

  v100[2] = v100;
  v100[3] = sub_23109E210;
  v122 = swift_continuation_init();
  v100[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C0B0, &qword_231162E00);
  v100[10] = MEMORY[0x277D85DD0];
  v100[11] = 1107296256;
  v100[12] = sub_23106FF5C;
  v100[13] = &block_descriptor_72;
  v100[14] = v122;
  [v120 deleteSearchableItemsWithIdentifiers:v121 completionHandler:v100 + 10];
  OUTLINED_FUNCTION_28();

  return MEMORY[0x282200938](v123);
}

uint64_t sub_23109E210()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_19_5();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 288) = v4;
  if (v4)
  {
  }

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

void sub_23109E350()
{
  if (*(*(v0 + 264) + 16))
  {
    sub_2311581C8();

    v1 = sub_231158238();
    v2 = sub_2311592F8();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      OUTLINED_FUNCTION_80(v3, 3.852e-34);
      OUTLINED_FUNCTION_17_3(&dword_23103C000, v4, v5, "Indexing %ld shortcuts into spotlight index");
      MEMORY[0x2319267C0](v3, -1, -1);
    }

    else
    {
    }

    v9 = *(v0 + 232);
    v10 = *(v0 + 152);
    (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));
    v11 = [objc_allocWithZone(MEMORY[0x277D7A1F0]) init];
    *(v0 + 296) = v11;
    OUTLINED_FUNCTION_8();
    v12 = swift_allocObject();
    *(v0 + 304) = v12;
    v12[2] = v9;
    v12[3] = v11;
    v12[4] = v10;
    v13 = v9;
    v14 = v11;

    v15 = swift_task_alloc();
    *(v0 + 312) = v15;
    *v15 = v0;
    OUTLINED_FUNCTION_23_6(v15);
    OUTLINED_FUNCTION_18_5(*(v0 + 264));
    OUTLINED_FUNCTION_39_1();

    __asm { BR              X5 }
  }

  v6 = *(v0 + 232);
  [objc_opt_self() _resetCache];

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_39_1();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_23109E5E8()
{
  v2 = *v1;
  OUTLINED_FUNCTION_19_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v5 = v4;
  *(v2 + 320) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_23109E73C()
{
  OUTLINED_FUNCTION_28_0();

  v1 = *(v0 + 232);
  [objc_opt_self() _resetCache];

  OUTLINED_FUNCTION_1();

  return v2();
}

uint64_t sub_23109E82C()
{
  OUTLINED_FUNCTION_45_3();

  OUTLINED_FUNCTION_1();

  return v1();
}

uint64_t sub_23109E8EC()
{
  OUTLINED_FUNCTION_28_0();
  v1 = *(v0 + 280);
  v2 = *(v0 + 232);
  swift_willThrow();

  OUTLINED_FUNCTION_45_3();

  OUTLINED_FUNCTION_1();

  return v3();
}

uint64_t sub_23109E9B4()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 232);

  OUTLINED_FUNCTION_45_3();

  OUTLINED_FUNCTION_1();

  return v3();
}

uint64_t sub_23109EA94(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C890, &qword_231164A20);
    v1 = sub_2311596F8();
  }

  else
  {
    v1 = MEMORY[0x277D84F98];
  }

  v4 = v1;

  sub_2310A15CC(v2, 1, &v4);

  return v4;
}

uint64_t sub_23109EB48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_23109EB6C, 0, 0);
}

uint64_t sub_23109EB6C(uint64_t a1)
{
  v2 = v1[3];
  _sSo10WFDatabaseC11WorkflowKitE017SpotlightSyncableB0V14VoiceShortcutsE17diffingIdentifierSSvg_0();
  v3 = sub_231158E28();

  v4 = [v2 referenceForWorkflowID_];

  if (v4)
  {
    v5 = v1[5];
    v6 = [v4 searchableItemRepresentationWithIconDrawerContext_];
    v7 = [v6 attributeSet];
    v8 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithLongLong_];
    [v7 setValue:v8 forCustomKey:*(v5 + 32)];
  }

  else
  {
    v6 = 0;
  }

  v9 = v1[1];

  return v9(v6);
}

uint64_t sub_23109ECB0()
{
  OUTLINED_FUNCTION_4_1();
  v1[3] = v0;
  v2 = sub_231159228();
  v1[4] = v2;
  OUTLINED_FUNCTION_5(v2);
  v1[5] = v3;
  v1[6] = OUTLINED_FUNCTION_21_0();
  v4 = sub_231159278();
  v1[7] = v4;
  OUTLINED_FUNCTION_5(v4);
  v1[8] = v5;
  v1[9] = OUTLINED_FUNCTION_21_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C870, &qword_231164A08);
  OUTLINED_FUNCTION_19(v6);
  v1[10] = OUTLINED_FUNCTION_21_0();
  v7 = sub_231159298();
  v1[11] = v7;
  OUTLINED_FUNCTION_5(v7);
  v1[12] = v8;
  v1[13] = OUTLINED_FUNCTION_21_0();
  v9 = sub_231159288();
  v1[14] = v9;
  OUTLINED_FUNCTION_5(v9);
  v1[15] = v10;
  v1[16] = OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_23109EE68()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  sub_231159588();

  v4 = sub_231158E58();
  MEMORY[0x231924980](v4);

  MEMORY[0x231924980](34, 0xE100000000000000);
  v5 = [objc_allocWithZone(MEMORY[0x277CC34A0]) init];
  v0[17] = v5;
  v6 = sub_231158F38();
  [v5 setFetchAttributes_];

  objc_allocWithZone(MEMORY[0x277CC3498]);
  v7 = v5;
  v0[18] = sub_231092B74(0xD00000000000001ALL, 0x8000000231169640, v5);
  sub_2311592A8();
  sub_231159258();
  (*(v2 + 8))(v1, v3);
  v0[19] = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_27_5();
  sub_2310A212C(v8, v9);
  v10 = swift_task_alloc();
  v0[20] = v10;
  *v10 = v0;
  v11 = OUTLINED_FUNCTION_17_7(v10);

  return MEMORY[0x282200308](v11);
}

uint64_t sub_23109F05C()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_19_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v5 = v4;
  *(v6 + 168) = v0;

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_23109F158()
{
  v1 = v0[10];
  v2 = v0[7];
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    v4 = v0[17];
    v3 = v0[18];
    (*(v0[15] + 8))(v0[16], v0[14]);

    OUTLINED_FUNCTION_39_1();

    __asm { BRAA            X2, X16 }
  }

  v7 = v0[3];
  (*(v0[8] + 32))(v0[9], v1, v2);
  v8 = sub_231159268();
  v9 = [v8 attributeSet];
  v10 = [v9 valueForCustomKey_];

  if (v10)
  {
    objc_opt_self();
    v11 = swift_dynamicCastObjCClass();
    if (v11)
    {
      [v11 longLongValue];
    }

    swift_unknownObjectRelease();
  }

  v12 = [v8 uniqueIdentifier];
  sub_231158E58();

  sub_2311591F8();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = v0[19];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_2310CC5C8();
    v14 = v28;
  }

  v15 = *(v14 + 16);
  v16 = v8;
  if (v15 >= *(v14 + 24) >> 1)
  {
    sub_2310CC5C8();
    v14 = v29;
  }

  v18 = v0[8];
  v17 = v0[9];
  v20 = v0[6];
  v19 = v0[7];
  v22 = v0[4];
  v21 = v0[5];

  (*(v18 + 8))(v17, v19);
  *(v14 + 16) = v15 + 1;
  (*(v21 + 32))(v14 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v15, v20, v22);
  v0[19] = v14;
  OUTLINED_FUNCTION_27_5();
  sub_2310A212C(v23, v24);
  v25 = swift_task_alloc();
  v0[20] = v25;
  *v25 = v0;
  OUTLINED_FUNCTION_17_7(v25);
  OUTLINED_FUNCTION_39_1();

  return MEMORY[0x282200308](v26);
}

uint64_t sub_23109F480()
{
  OUTLINED_FUNCTION_4_1();
  *(v0 + 16) = *(v0 + 168);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C880, &qword_231162D80);
  swift_willThrowTypedImpl();

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_23109F518()
{
  OUTLINED_FUNCTION_28_0();
  v1 = *(v0 + 136);

  v2 = OUTLINED_FUNCTION_51();
  v3(v2);

  OUTLINED_FUNCTION_1();

  return v4();
}

uint64_t sub_23109F60C()
{
  sub_23109F5DC();
  OUTLINED_FUNCTION_8();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_23109F660()
{
  OUTLINED_FUNCTION_26_1();
  v1 = swift_allocObject();
  *(v1 + 16) = sub_23109FAFC;
  *(v1 + 24) = v0;
  OUTLINED_FUNCTION_26_1();
  v2 = swift_allocObject();
  *(v2 + 16) = &unk_231164990;
  *(v2 + 24) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C720, &unk_231162980);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231161B80;
  *(inited + 32) = 0xD000000000000022;
  *(inited + 40) = 0x8000000231169960;
  *(inited + 48) = sub_231061688;
  *(inited + 56) = v1;
  *(inited + 64) = 0;
  *(inited + 72) = &unk_231164C00;
  *(inited + 80) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BED8, &unk_2311637D0);
  v4 = swift_initStackObject();
  *(v4 + 16) = xmmword_231161B80;
  *(v4 + 32) = inited;
  swift_retain_n();
  static TaskBuilder.buildBlock(_:)();
  OUTLINED_FUNCTION_66_1();
  swift_setDeallocating();
  sub_2310639FC();
  return v2;
}

double sub_23109F7B0(uint64_t *a1, uint64_t a2)
{
  v2 = sub_23109F898(*a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C730, &unk_2311649A0);
  swift_allocObject();
  v3 = sub_23109C428(v2, sub_2310A1D64, sub_2310646D4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BF88, &qword_231162AE0);
  swift_allocObject();
  sub_23109FB90(v3);
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C740, &qword_231161EE0);
  v6 = swift_allocObject();
  *&result = 1;
  *(v6 + 16) = xmmword_231161E80;
  *(v6 + 32) = v5;
  return result;
}

uint64_t sub_23109F898(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  v4 = sub_2310DF1AC(a1, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C730, &unk_2311649A0);
  swift_allocObject();
  v5 = sub_23109C428(v4, sub_2310A1D64, sub_2310646D4);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C760, &unk_231164C50);
  swift_allocObject();
  sub_23109C744(sub_2310A1D74, 0, v5);
  v7 = v6;

  v8 = sub_2310A0BF0(&unk_2845D7900);
  v9 = v3;
  sub_2310A1D98(v8, v9, a1);
  v11 = v10;

  swift_allocObject();
  sub_23109C6B0(sub_2310A1D6C, 0, v11);
  v13 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C740, &qword_231161EE0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_231162950;
  *(v14 + 32) = v7;
  *(v14 + 40) = v13;

  return v14;
}

uint64_t sub_23109FA48()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23105FDEC;

  return sub_23109D204();
}

uint64_t sub_23109FB04()
{
  OUTLINED_FUNCTION_4_1();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_19_3(v1);

  return sub_23109FA48();
}

void sub_23109FB90(uint64_t a1)
{
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_32_4();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_63_1();
  OUTLINED_FUNCTION_30_4();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_5_0();
  v4 = OUTLINED_FUNCTION_62_2();
  v5 = OUTLINED_FUNCTION_19(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_41_4();
  v6 = sub_231054A0C(0, &qword_280CCAF08, 0x277D85C78);
  OUTLINED_FUNCTION_57_1(v6, "com.apple.shortcuts.debounced-event-queue");
  sub_231158D08();
  OUTLINED_FUNCTION_7_11();
  sub_2310A212C(v7, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BC00, &unk_231161AB0);
  OUTLINED_FUNCTION_1_13();
  v10 = sub_231040CB0(v9, &qword_27DD3BC00, &unk_231161AB0);
  OUTLINED_FUNCTION_22_6(v10);
  v11 = OUTLINED_FUNCTION_47_3();
  v12(v11);
  v1[4] = OUTLINED_FUNCTION_14_9();
  v13 = OUTLINED_FUNCTION_59_2(objc_allocWithZone(MEMORY[0x277D79F00]), sel_initWithDelay_maximumDelay_queue_);
  v1[2] = v13;
  v14 = v13;
  OUTLINED_FUNCTION_66_1();

  OUTLINED_FUNCTION_60_1(v15, sel_addTarget_action_);

  v16 = v1[3];
  OUTLINED_FUNCTION_9_0();
  v17 = swift_allocObject();
  OUTLINED_FUNCTION_56_1(v17);
  OUTLINED_FUNCTION_58_2(v16 + 24);
  *(v16 + 24) = sub_2310A1D38;
  *(v16 + 32) = &unk_231161AB0;

  OUTLINED_FUNCTION_64_0();

  OUTLINED_FUNCTION_73();
}

void sub_23109FDE4(uint64_t a1)
{
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_32_4();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_63_1();
  OUTLINED_FUNCTION_30_4();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5_0();
  v5 = OUTLINED_FUNCTION_62_2();
  v6 = OUTLINED_FUNCTION_19(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5_0();
  v1[5] = 0;
  v1[6] = 0;
  v1[7] = 0;
  v1[3] = v2;
  v7 = sub_231054A0C(0, &qword_280CCAF08, 0x277D85C78);
  OUTLINED_FUNCTION_57_1(v7, "com.apple.shortcuts.debounced-event-queue");
  sub_231158D08();
  OUTLINED_FUNCTION_7_11();
  sub_2310A212C(v8, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BC00, &unk_231161AB0);
  OUTLINED_FUNCTION_1_13();
  v11 = sub_231040CB0(v10, &qword_27DD3BC00, &unk_231161AB0);
  OUTLINED_FUNCTION_22_6(v11);
  v12 = OUTLINED_FUNCTION_47_3();
  v13(v12);
  v1[4] = OUTLINED_FUNCTION_14_9();
  v14 = OUTLINED_FUNCTION_59_2(objc_allocWithZone(MEMORY[0x277D79F00]), sel_initWithDelay_maximumDelay_queue_);
  v1[2] = v14;
  v15 = v14;
  OUTLINED_FUNCTION_66_1();

  OUTLINED_FUNCTION_60_1(v16, sel_addTarget_action_);

  v17 = v1[3];
  OUTLINED_FUNCTION_9_0();
  v18 = swift_allocObject();
  OUTLINED_FUNCTION_56_1(v18);
  OUTLINED_FUNCTION_58_2(v17 + 32);
  *(v17 + 32) = sub_2310A2044;
  *(v17 + 40) = &unk_231161AB0;

  OUTLINED_FUNCTION_64_0();

  OUTLINED_FUNCTION_73();
}

void sub_2310A004C(uint64_t a1)
{
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_32_4();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_63_1();
  OUTLINED_FUNCTION_30_4();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_5_0();
  v4 = OUTLINED_FUNCTION_62_2();
  v5 = OUTLINED_FUNCTION_19(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_41_4();
  v6 = sub_231054A0C(0, &qword_280CCAF08, 0x277D85C78);
  OUTLINED_FUNCTION_57_1(v6, "com.apple.shortcuts.debounced-event-queue");
  sub_231158D08();
  OUTLINED_FUNCTION_7_11();
  sub_2310A212C(v7, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BC00, &unk_231161AB0);
  OUTLINED_FUNCTION_1_13();
  v10 = sub_231040CB0(v9, &qword_27DD3BC00, &unk_231161AB0);
  OUTLINED_FUNCTION_22_6(v10);
  v11 = OUTLINED_FUNCTION_47_3();
  v12(v11);
  v1[4] = OUTLINED_FUNCTION_14_9();
  v13 = OUTLINED_FUNCTION_59_2(objc_allocWithZone(MEMORY[0x277D79F00]), sel_initWithDelay_maximumDelay_queue_);
  v1[2] = v13;
  v14 = v13;
  OUTLINED_FUNCTION_66_1();

  OUTLINED_FUNCTION_60_1(v15, sel_addTarget_action_);

  v16 = v1[3];
  OUTLINED_FUNCTION_9_0();
  v17 = swift_allocObject();
  OUTLINED_FUNCTION_56_1(v17);
  OUTLINED_FUNCTION_58_2(v16 + 32);
  *(v16 + 32) = sub_2310A203C;
  *(v16 + 40) = &unk_231161AB0;

  OUTLINED_FUNCTION_64_0();

  OUTLINED_FUNCTION_73();
}

uint64_t sub_2310A02A0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2310A0384(a1);
  }

  return result;
}

void sub_2310A0300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_55_2();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  OUTLINED_FUNCTION_81(v24 + 16, &a10);
  if (swift_weakLoadStrong())
  {
    sub_2310A0660(v23);
  }

  OUTLINED_FUNCTION_54_2();
}

uint64_t sub_2310A0384(uint64_t a1)
{
  v2 = v1;
  v4 = sub_231158CF8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_231158D48();
  v8 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[1] = *(v2 + 32);
  v11 = swift_allocObject();
  *(v11 + 16) = v2;
  *(v11 + 24) = a1;
  aBlock[4] = sub_2310A204C;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_231040F30;
  aBlock[3] = &block_descriptor_62;
  v12 = _Block_copy(aBlock);

  sub_231158D08();
  v16 = MEMORY[0x277D84F90];
  sub_2310A212C(&qword_280CCB090, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C750, &qword_231161B50);
  sub_231040CB0(qword_280CCAFD0, &unk_27DD3C750, &qword_231161B50);
  sub_231159498();
  MEMORY[0x231924E10](0, v10, v7, v12);
  _Block_release(v12);
  (*(v5 + 8))(v7, v4);
  (*(v8 + 8))(v10, v15);
}

void sub_2310A0660(uint64_t a1)
{
  OUTLINED_FUNCTION_77();
  v3 = v2;
  v5 = v4;
  v6 = v1;
  v8 = v7;
  v10 = v9;
  v11 = sub_231158CF8();
  OUTLINED_FUNCTION_4();
  v27 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_5_0();
  v16 = v15 - v14;
  v26 = sub_231158D48();
  OUTLINED_FUNCTION_4();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_5_0();
  v22 = v21 - v20;
  OUTLINED_FUNCTION_8();
  v23 = swift_allocObject();
  v23[2] = v6;
  v23[3] = v10;
  v23[4] = v8;
  v28[4] = v5;
  v28[5] = v23;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 1107296256;
  v28[2] = sub_231040F30;
  v28[3] = v3;
  v24 = _Block_copy(v28);

  sub_231158D08();
  sub_2310A212C(&qword_280CCB090, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C750, &qword_231161B50);
  OUTLINED_FUNCTION_1_13();
  sub_231040CB0(v25, &unk_27DD3C750, &qword_231161B50);
  sub_231159498();
  MEMORY[0x231924E10](0, v22, v16, v24);
  _Block_release(v24);
  (*(v27 + 8))(v16, v11);
  (*(v18 + 8))(v22, v26);

  OUTLINED_FUNCTION_78();
}

id sub_2310A08EC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 56);
  if (v4)
  {

    v5 = sub_2310DEDCC(a2, v4);

    *(a1 + 56) = v5;
  }

  else
  {
    *(a1 + 56) = a2;
  }

  return [*(a1 + 16) poke];
}

id sub_2310A0988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_28_1(a1 + 56, a2);
  *(a1 + 56) = a2;
  *(a1 + 64) = a3;

  return [*(a1 + 16) poke];
}

void sub_2310A0A00(uint64_t a1)
{
  OUTLINED_FUNCTION_77();
  v4 = v3;
  v5 = sub_231157A78();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_43_2();
  v8 = MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_52_2(v8, v9, v10, v11, v12, v13, v14, v15, v33);
  if (v1 && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C8A8, &qword_231164A38), OUTLINED_FUNCTION_51_3(), v16 = sub_231159568(), *(v4 + 16)))
  {
    OUTLINED_FUNCTION_21_8();
    while (v17 < *(v4 + 16))
    {
      v18 = OUTLINED_FUNCTION_25_5(v17);
      (v4)(v18);
      v19 = *(v16 + 40);
      OUTLINED_FUNCTION_24_3();
      v21 = sub_2310A212C(&qword_27DD3C8B0, v20);
      OUTLINED_FUNCTION_76(v21);
      OUTLINED_FUNCTION_72();
      while (1)
      {
        OUTLINED_FUNCTION_40_3();
        if (v23)
        {
          break;
        }

        v24 = OUTLINED_FUNCTION_42_3();
        (v4)(v24);
        OUTLINED_FUNCTION_24_3();
        v26 = sub_2310A212C(&qword_27DD3C8B8, v25);
        OUTLINED_FUNCTION_61_2(v26);
        v27 = OUTLINED_FUNCTION_70_0();
        (v16)(v27);
        if (v19)
        {
          (v16)(v34, v5);
          v16 = v2;
          goto LABEL_12;
        }

        v16 = v2;
      }

      v28 = OUTLINED_FUNCTION_37_3(v22);
      v29(v28);
      v30 = *(v16 + 16);
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        goto LABEL_16;
      }

      *(v16 + 16) = v32;
LABEL_12:
      OUTLINED_FUNCTION_50_3();
      if (v23)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  else
  {
LABEL_14:

    OUTLINED_FUNCTION_78();
  }
}

uint64_t sub_2310A0BF0(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x277D84FA0];
    goto LABEL_14;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C808, &qword_2311649D8);
  OUTLINED_FUNCTION_51_3();
  result = sub_231159568();
  v3 = result;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_14:

    return v3;
  }

  v5 = 0;
  v6 = result + 56;
  while (v5 < *(a1 + 16))
  {
    v7 = *(a1 + 32 + 8 * v5++);
    sub_231159918();
    MEMORY[0x2319253F0](v7);
    result = sub_231159948();
    v8 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v9 = result & v8;
      v10 = (result & v8) >> 6;
      v11 = *(v6 + 8 * v10);
      v12 = 1 << (result & v8);
      if ((v12 & v11) == 0)
      {
        break;
      }

      if (*(*(v3 + 48) + 8 * v9) == v7)
      {
        goto LABEL_11;
      }

      result = v9 + 1;
    }

    *(v6 + 8 * v10) = v12 | v11;
    *(*(v3 + 48) + 8 * v9) = v7;
    v13 = *(v3 + 16);
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      goto LABEL_16;
    }

    *(v3 + 16) = v15;
LABEL_11:
    if (v5 == v4)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

void sub_2310A0D38(uint64_t a1)
{
  OUTLINED_FUNCTION_77();
  v4 = v3;
  v5 = sub_231157EB8();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_43_2();
  v8 = MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_52_2(v8, v9, v10, v11, v12, v13, v14, v15, v33);
  if (v1 && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C848, &qword_2311649F8), OUTLINED_FUNCTION_51_3(), v16 = sub_231159568(), *(v4 + 16)))
  {
    OUTLINED_FUNCTION_21_8();
    while (v17 < *(v4 + 16))
    {
      v18 = OUTLINED_FUNCTION_25_5(v17);
      (v4)(v18);
      v19 = *(v16 + 40);
      OUTLINED_FUNCTION_26_5();
      v21 = sub_2310A212C(&qword_27DD3C850, v20);
      OUTLINED_FUNCTION_76(v21);
      OUTLINED_FUNCTION_72();
      while (1)
      {
        OUTLINED_FUNCTION_40_3();
        if (v23)
        {
          break;
        }

        v24 = OUTLINED_FUNCTION_42_3();
        (v4)(v24);
        OUTLINED_FUNCTION_26_5();
        v26 = sub_2310A212C(&qword_27DD3C858, v25);
        OUTLINED_FUNCTION_61_2(v26);
        v27 = OUTLINED_FUNCTION_70_0();
        (v16)(v27);
        if (v19)
        {
          (v16)(v34, v5);
          v16 = v2;
          goto LABEL_12;
        }

        v16 = v2;
      }

      v28 = OUTLINED_FUNCTION_37_3(v22);
      v29(v28);
      v30 = *(v16 + 16);
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        goto LABEL_16;
      }

      *(v16 + 16) = v32;
LABEL_12:
      OUTLINED_FUNCTION_50_3();
      if (v23)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  else
  {
LABEL_14:

    OUTLINED_FUNCTION_78();
  }
}

uint64_t sub_2310A0F28(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C890, &qword_231164A20);
  v34 = v4;
  result = sub_2311596E8();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_31:

LABEL_32:
    *v3 = v7;
    return result;
  }

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
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_32;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      sub_2310DF388(0, (v32 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = (*(v5 + 48) + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    v22 = *(*(v5 + 56) + 8 * v18);
    if ((v34 & 1) == 0)
    {
    }

    sub_231159918();
    sub_231158EA8();
    result = sub_231159948();
    v23 = -1 << *(v7 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
    {
      break;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v14 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v7 + 48) + 16 * v26);
    *v31 = v20;
    v31[1] = v21;
    *(*(v7 + 56) + 8 * v26) = v22;
    ++*(v7 + 16);
    v5 = v33;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v27 = 0;
  v28 = (63 - v23) >> 6;
  while (++v25 != v28 || (v27 & 1) == 0)
  {
    v29 = v25 == v28;
    if (v25 == v28)
    {
      v25 = 0;
    }

    v27 |= v29;
    v30 = *(v14 + 8 * v25);
    if (v30 != -1)
    {
      v26 = __clz(__rbit64(~v30)) + (v25 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

unint64_t *sub_2310A11C4(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v43[2] = *MEMORY[0x277D85DE8];
  if (*(a2 + 16))
  {
    v43[0] = a1;
    v3 = *(a1 + 16);
    v41 = a1 + 32;
    v4 = a2 + 56;
    v5 = 0;

    v40 = v3;
LABEL_3:
    if (v5 != v3)
    {
      v6 = (v41 + 16 * v5);
      v8 = *v6;
      v7 = v6[1];
      ++v5;
      sub_231159918();

      sub_231158EA8();
      v9 = sub_231159948();
      v10 = ~(-1 << *(v2 + 32));
      while (1)
      {
        v11 = v9 & v10;
        v12 = (v9 & v10) >> 6;
        v13 = 1 << (v9 & v10);
        if ((v13 & *(v4 + 8 * v12)) == 0)
        {

          v3 = v40;
          goto LABEL_3;
        }

        v14 = (*(v2 + 48) + 16 * v11);
        v15 = *v14 == v8 && v14[1] == v7;
        if (v15 || (sub_231159818() & 1) != 0)
        {
          break;
        }

        v9 = v11 + 1;
      }

      v16 = v5;
      v43[1] = v5;

      v18 = *(v2 + 32);
      v19 = ((1 << v18) + 63) >> 6;
      v20 = 8 * v19;
      if ((v18 & 0x3Fu) > 0xD)
      {
LABEL_38:

        if (!swift_stdlib_isStackAllocationSafe())
        {
LABEL_41:
          v34 = swift_slowAlloc();
          v35 = sub_2310A1A4C(v34, v19, (v2 + 56), v19, v2, v11, v43);

          MEMORY[0x2319267C0](v34, -1, -1);

          return v35;
        }
      }

      v36[0] = v19;
      v36[1] = v36;
      MEMORY[0x28223BE20](v17);
      v21 = v36 - ((v20 + 15) & 0x3FFFFFFFFFFFFFF0);
      memcpy(v21, (v2 + 56), v20);
      v22 = *&v21[8 * v12] & ~v13;
      v38 = v21;
      *&v21[8 * v12] = v22;
      v23 = *(v2 + 16) - 1;
      v11 = v42;
      v40 = *(v42 + 16);
      v19 = v16;
      while (1)
      {
        v37 = v23;
        v39 = v16;
LABEL_16:
        while (2)
        {
          if (v19 == v40)
          {
            v2 = sub_2310A1AD4(v38, v36[0], v37, v2);
            goto LABEL_33;
          }

          if ((v16 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_37:
            __break(1u);
            goto LABEL_38;
          }

          if (v19 >= *(v11 + 16))
          {
            goto LABEL_37;
          }

          v24 = (v41 + 16 * v19);
          v13 = *v24;
          v12 = v24[1];
          ++v19;
          sub_231159918();

          sub_231158EA8();
          v25 = sub_231159948();
          v20 = ~(-1 << *(v2 + 32));
          do
          {
            v26 = v25 & v20;
            v27 = (v25 & v20) >> 6;
            v28 = 1 << (v25 & v20);
            if ((v28 & *(v4 + 8 * v27)) == 0)
            {

              v11 = v42;
              v16 = v39;
              goto LABEL_16;
            }

            v29 = (*(v2 + 48) + 16 * v26);
            if (*v29 == v13 && v29[1] == v12)
            {
              break;
            }

            v31 = sub_231159818();
            v25 = v26 + 1;
          }

          while ((v31 & 1) == 0);

          v32 = v38[v27];
          v38[v27] = v32 & ~v28;
          v15 = (v32 & v28) == 0;
          v11 = v42;
          v16 = v39;
          if (v15)
          {
            continue;
          }

          break;
        }

        v23 = v37 - 1;
        if (__OFSUB__(v37, 1))
        {
          break;
        }

        v16 = v19;
        if (v37 == 1)
        {

          v2 = MEMORY[0x277D84FA0];
          goto LABEL_33;
        }
      }

      __break(1u);
      goto LABEL_41;
    }

LABEL_33:
  }

  else
  {

    return MEMORY[0x277D84FA0];
  }

  return v2;
}