uint64_t sub_2193F6D84()
{
  v1 = v0[75];
  swift_unknownObjectRelease();
  v2 = v1;
  v3 = sub_219BE5414();
  v4 = sub_219BF61F4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[75];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_2186C1000, v3, v4, "PuzzlePrewarmer: Error in downloading small thumbnails when prewarming error=%@", v6, 0xCu);
    sub_218962D30(v7);
    MEMORY[0x21CECF960](v7, -1, -1);
    MEMORY[0x21CECF960](v6, -1, -1);
  }

  v10 = v0[75];
  v11 = v0[67];

  v11(v10);
  v12 = v0[1];

  return v12();
}

void sub_2193F6EE4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v49 = a3;
  v51 = a5;
  v45 = a4;
  v47 = sub_219BDAF64();
  v50 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2193F7D74(0, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v42 - v10;
  v12 = sub_219BDB954();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v46 = &v42 - v17;
  if (qword_280EE5F80 != -1)
  {
    swift_once();
  }

  v18 = sub_219BE5434();
  __swift_project_value_buffer(v18, qword_280F625E0);

  v19 = sub_219BE5414();
  v20 = sub_219BF6214();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v43 = v13;
    v44 = v8;
    v22 = v21;
    v23 = v12;
    v24 = swift_slowAlloc();
    aBlock[0] = v24;
    *v22 = 136315138;
    *(v22 + 4) = sub_2186D1058(a1, a2, aBlock);
    _os_log_impl(&dword_2186C1000, v19, v20, "PuzzlePrewarmer: Downloading thumbnail %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    v25 = v24;
    v12 = v23;
    MEMORY[0x21CECF960](v25, -1, -1);
    v26 = v22;
    v13 = v43;
    v8 = v44;
    MEMORY[0x21CECF960](v26, -1, -1);
  }

  sub_219BDB914();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_21874582C(v11, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88], sub_2193F7D74);

    v27 = sub_219BE5414();
    v28 = sub_219BF61F4();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      aBlock[0] = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_2186D1058(a1, a2, aBlock);
      _os_log_impl(&dword_2186C1000, v27, v28, "PuzzlePrewarmer: Error in downloading small thumbnails when prewarming: Invalid URL %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x21CECF960](v30, -1, -1);
      MEMORY[0x21CECF960](v29, -1, -1);
    }
  }

  else
  {
    v31 = v46;
    (*(v13 + 32))(v46, v11, v12);
    (*(v13 + 16))(v15, v31, v12);
    sub_219BDAF44();
    v32 = [objc_opt_self() sharedSession];
    v33 = sub_219BDAF24();
    v34 = swift_allocObject();
    v35 = v13;
    v37 = v48;
    v36 = v49;
    v34[2] = v48;
    v34[3] = v36;
    v38 = v51;
    v34[4] = v45;
    v34[5] = v38;
    aBlock[4] = sub_2193F7DD8;
    aBlock[5] = v34;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2193F78E4;
    aBlock[3] = &block_descriptor_124;
    v39 = _Block_copy(aBlock);
    v45 = v12;
    v40 = v37;
    swift_unknownObjectRetain();

    v41 = [v32 dataTaskWithRequest:v33 completionHandler:v39];
    _Block_release(v39);

    [v41 resume];
    (*(v50 + 8))(v8, v47);
    (*(v35 + 8))(v31, v45);
  }
}

void sub_2193F74E4(uint64_t a1, unint64_t a2, void *a3, NSObject *a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  if (!a4)
  {
    if (a3)
    {
      objc_opt_self();
      v23 = swift_dynamicCastObjCClass();
      if (v23)
      {
        v24 = v23;
        oslog = a3;
        if ([v24 statusCode] <= 399)
        {
          if (a2 >> 60 == 15)
          {
            if (qword_280EE5F80 != -1)
            {
              swift_once();
            }

            v25 = sub_219BE5434();
            __swift_project_value_buffer(v25, qword_280F625E0);
            v26 = sub_219BE5414();
            v27 = sub_219BF61F4();
            if (os_log_type_enabled(v26, v27))
            {
              v28 = swift_slowAlloc();
              *v28 = 0;
              _os_log_impl(&dword_2186C1000, v26, v27, "PuzzlePrewarmer: Error in downloading small thumbnails when prewarming: No data", v28, 2u);
              MEMORY[0x21CECF960](v28, -1, -1);
            }
          }

          else
          {
            sub_218E1CD90(a1, a2);
            sub_2193F7DE4(a1, a2, a6, a7, a8);
            sub_218822A58(a1, a2);
          }

          goto LABEL_23;
        }
      }
    }

    if (qword_280EE5F80 != -1)
    {
      swift_once();
    }

    v30 = sub_219BE5434();
    __swift_project_value_buffer(v30, qword_280F625E0);
    v31 = a3;
    oslog = sub_219BE5414();
    v32 = sub_219BF61F4();

    if (os_log_type_enabled(oslog, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v33 = 138412290;
      *(v33 + 4) = v31;
      *v34 = a3;
      v35 = v31;
      _os_log_impl(&dword_2186C1000, oslog, v32, "PuzzlePrewarmer: Error in downloading small thumbnails when prewarming response=%@", v33, 0xCu);
      sub_218962D30(v34);
      MEMORY[0x21CECF960](v34, -1, -1);
      MEMORY[0x21CECF960](v33, -1, -1);
    }

    goto LABEL_23;
  }

  v9 = a4;
  if (qword_280EE5F80 != -1)
  {
    swift_once();
  }

  v10 = sub_219BE5434();
  __swift_project_value_buffer(v10, qword_280F625E0);
  v11 = a4;
  oslog = sub_219BE5414();
  v12 = sub_219BF61F4();

  if (os_log_type_enabled(oslog, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    v15 = a4;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 4) = v16;
    *v14 = v16;
    _os_log_impl(&dword_2186C1000, oslog, v12, "PuzzlePrewarmer: Error in downloading small thumbnails when prewarming error=%@", v13, 0xCu);
    sub_218962D30(v14);
    MEMORY[0x21CECF960](v14, -1, -1);
    MEMORY[0x21CECF960](v13, -1, -1);

LABEL_23:
    v29 = oslog;

    goto LABEL_17;
  }

  v29 = a4;

LABEL_17:
}

double sub_2193F78E4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  if (a2)
  {

    v8 = v6;
    v6 = sub_219BDBA04();
    v10 = v9;
  }

  else
  {

    v10 = 0xF000000000000000;
  }

  v11 = a3;
  v12 = a4;
  v7(v6, v10, a3, a4);

  sub_218822A58(v6, v10);

  return result;
}

void sub_2193F7B78(uint64_t a1)
{
  if (!qword_280E8EBA0)
  {
    sub_2186D6710(255, &qword_280E8E130, &protocolRef_FCPuzzleTypeProviding);
    v1 = sub_219BF5B14();
    if (!v2)
    {
      atomic_store(v1, &qword_280E8EBA0);
    }
  }
}

uint64_t sub_2193F7BE0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2187608D4;

  return sub_2193F38F0(a1, v4);
}

uint64_t sub_2193F7C88(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_2187608D4;

  return sub_2193F63C4(a1, v4, v5, v6, v7, v8, v9, v10);
}

void sub_2193F7D74(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2193F7DE4(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v65 = a4;
  v66 = a5;
  v67 = a1;
  v68 = a2;
  v72[2] = *MEMORY[0x277D85DE8];
  v6 = sub_219BDB7E4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BDB954();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v69 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v62 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v62 - v17;
  v71 = [objc_opt_self() defaultManager];
  v19 = [v71 URLsForDirectory:9 inDomains:1];
  v20 = sub_219BF5924();

  if (*(v20 + 16))
  {
    v63 = v10;
    v64 = v11;
    (*(v11 + 16))(v18, v20 + ((*(v11 + 80) + 32) & ~*(v11 + 80)), v10);

    sub_21870F514(0, &qword_280E8B750, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_219C0B8C0;
    v70 = v18;
    *(v21 + 32) = 0x7954656C7A7A7570;
    *(v21 + 40) = 0xEA00000000006570;
    v22 = [a3 identifier];
    v23 = sub_219BF5414();
    v25 = v24;

    *(v21 + 48) = v23;
    *(v21 + 56) = v25;
    v26 = v70;
    *(v21 + 64) = 0x69616E626D756874;
    *(v21 + 72) = 0xEA0000000000736CLL;
    (*(v7 + 104))(v9, *MEMORY[0x277CC91D8], v6);
    sub_2187F3BD4();
    sub_219BDB944();

    (*(v7 + 8))(v9, v6);
    sub_219BDB8F4();
    v27 = sub_219BF53D4();

    LOBYTE(v22) = [v71 fileExistsAtPath_];

    v28 = v69;
    if ((v22 & 1) == 0)
    {
      v29 = sub_219BDB854();
      v72[0] = 0;
      v30 = [v71 createDirectoryAtURL:v29 withIntermediateDirectories:1 attributes:0 error:v72];

      if (!v30)
      {
        v52 = v72[0];
        v53 = sub_219BDB724();

        swift_willThrow();
        if (qword_280EE5F80 != -1)
        {
          swift_once();
        }

        v54 = sub_219BE5434();
        __swift_project_value_buffer(v54, qword_280F625E0);
        v55 = v53;
        v56 = sub_219BE5414();
        v57 = sub_219BF61F4();

        if (os_log_type_enabled(v56, v57))
        {
          v58 = swift_slowAlloc();
          v59 = swift_slowAlloc();
          *v58 = 138412290;
          v60 = v53;
          v61 = _swift_stdlib_bridgeErrorToNSError();
          *(v58 + 4) = v61;
          *v59 = v61;
          _os_log_impl(&dword_2186C1000, v56, v57, "PuzzlePrewarmer: Error in creating small thumbnails documents directory error=%@", v58, 0xCu);
          sub_218962D30(v59);
          MEMORY[0x21CECF960](v59, -1, -1);
          MEMORY[0x21CECF960](v58, -1, -1);
        }

        v50 = v63;
        v48 = *(v64 + 8);
        v48(v15, v63);
        v51 = v26;
        goto LABEL_25;
      }

      v31 = v72[0];
    }

    v72[0] = v65;
    v72[1] = v66;

    MEMORY[0x21CECC330](1735290926, 0xE400000000000000);
    sub_219BDB864();

    v32 = sub_219BDB8E4();
    v34 = v33;
    v35 = sub_219BF53D4();
    v36 = sub_219BDB9E4();
    v37 = [v71 createFileAtPath:v35 contents:v36 attributes:0];

    if (v37)
    {
      if (qword_280EE5F80 != -1)
      {
        swift_once();
      }

      v38 = sub_219BE5434();
      __swift_project_value_buffer(v38, qword_280F625E0);

      v39 = sub_219BE5414();
      v40 = sub_219BF6214();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v72[0] = v42;
        *v41 = 136315138;
        v43 = sub_2186D1058(v32, v34, v72);

        *(v41 + 4) = v43;
        v44 = "PuzzlePrewarmer: puzzle thumbnail saved to %s";
LABEL_17:
        _os_log_impl(&dword_2186C1000, v39, v40, v44, v41, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v42);
        MEMORY[0x21CECF960](v42, -1, -1);
        MEMORY[0x21CECF960](v41, -1, -1);
LABEL_19:

        v48 = *(v64 + 8);
        v49 = v28;
        v50 = v63;
        v48(v49, v63);
        v48(v15, v50);
        v51 = v70;
LABEL_25:
        v48(v51, v50);
        return;
      }
    }

    else
    {
      if (qword_280EE5F80 != -1)
      {
        swift_once();
      }

      v46 = sub_219BE5434();
      __swift_project_value_buffer(v46, qword_280F625E0);

      v39 = sub_219BE5414();
      v40 = sub_219BF61F4();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v72[0] = v42;
        *v41 = 136315138;
        v47 = sub_2186D1058(v32, v34, v72);

        *(v41 + 4) = v47;
        v44 = "PuzzlePrewarmer: Error in saving puzzle thumbnail to %s";
        goto LABEL_17;
      }
    }

    goto LABEL_19;
  }

  v45 = v71;
}

uint64_t sub_2193F8658(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2187609C8;

  return sub_2193F5278(a1, v4);
}

uint64_t sub_2193F86F8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2187609C8;

  return sub_2193F4124(a1, v4);
}

uint64_t sub_2193F8798(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2187609C8;

  return sub_2193F3C80(a1, v4);
}

uint64_t sub_2193F8838(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  if (a2)
  {
    sub_219BF7314();

    v8 = 0x3D7972657571;
    MEMORY[0x21CECC330](a1, a2);
    MEMORY[0x21CECC330](0x3D73444967617420, 0xE800000000000000);
  }

  else
  {
    v8 = 0x3D734449676174;
  }

  v6 = sub_219BF5D54();
  MEMORY[0x21CECC330](v6);

  return v8;
}

uint64_t sub_2193F891C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = a1 & 0xFFFFFFFFFFFFLL;
  if (a2)
  {
    v7 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = 0;
  }

  if (a2)
  {
    v8 = a2;
  }

  else
  {
    v8 = 0xE000000000000000;
  }

  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = v7;
  }

  if (v9 || *(a3 + 16))
  {
    if (!a2)
    {
      goto LABEL_15;
    }

    v10 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v10 = v6;
    }

    if (!v10)
    {
      return 0;
    }

    else
    {
LABEL_15:
    }
  }

  else
  {

    return 0;
  }

  return v5;
}

id sub_2193F89DC()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 24);
  }

  else
  {
    v3 = sub_2193F8A38(v0);
    v4 = *(v0 + 24);
    *(v0 + 24) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t sub_2193F8A38(uint64_t a1)
{
  v2 = sub_219BEA3D4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BED0C4();
  v7 = [*(a1 + 80) feedConfiguration];
  if (v6)
  {
    v8 = *(a1 + 16);
    v9 = *(v3 + 104);
    if (v7 == 13)
    {
      v10 = *MEMORY[0x277D6EA78];
    }

    else
    {
      v10 = *MEMORY[0x277D6EA70];
    }
  }

  else
  {
    v11 = v7 > 0xC || ((1 << v7) & 0x1208) == 0;
    v8 = *(a1 + 16);
    if (v11)
    {
      v12 = MEMORY[0x277D6EA78];
    }

    else
    {
      v12 = MEMORY[0x277D6EA70];
    }

    v10 = *v12;
    v9 = *(v3 + 104);
  }

  v9(v5, v10, v2);
  v13 = objc_allocWithZone(sub_219BE9C84());
  v14 = v8;
  return sub_219BE9C64();
}

void sub_2193F8BA0(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    __swift_project_boxed_opaque_existential_1((Strong + 32), *(Strong + 56));
    v6 = *(v5 + 16);
    sub_219596134(v6, 2, a3);
  }
}

double sub_2193F8C2C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = __swift_project_boxed_opaque_existential_1((Strong + 32), *(Strong + 56));
    v6 = *v5;
    v7 = *(*v5 + 120);
    if (v7)
    {
      v8 = *(v6 + 128);
      v9 = *(v6 + 112);
      v10 = *(v4 + 16);
      sub_2193F8E54(v9, v7, v8);
      sub_219596CE8(v10, v9, v7, v8, 2);
    }

    else
    {
    }
  }

  return result;
}

void sub_2193F8CF4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(v1 + 4, v1[7]);
  v3 = v1[2];
  v4 = v1[10];
  sub_219595198(v3, a1, v4);
  sub_219BE1EA4();
  if (v5 == 2)
  {
    __swift_project_boxed_opaque_existential_1(v1 + 4, v1[7]);
    sub_219596134(v3, 3, v4);
  }
}

uint64_t sub_2193F8D90()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return swift_deallocClassInstance();
}

double sub_2193F8E54(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v3 = a3;
  }

  return result;
}

uint64_t sub_2193F8EA4(unint64_t a1, unint64_t a2, unint64_t a3)
{
  v5 = a2;
  if (a2 >> 62)
  {
    v7 = sub_219BF7214();
  }

  else
  {
    v7 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = qword_280E8D818;
  if (v7)
  {
    swift_bridgeObjectRetain_n();
    if (v8 != -1)
    {
      swift_once();
    }

    v9 = qword_280F61718;
    sub_2186E8200(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_219C09BA0;
    sub_2186E8200(0, &qword_280E8EFD0, type metadata accessor for TagModel, MEMORY[0x277D83940]);
    *(v10 + 56) = v11;
    *(v10 + 64) = sub_2193F9600();
    *(v10 + 32) = v5;
    v12 = sub_219BF6214();
    sub_219BE5314("Sports Management Recommendations returned clustered recommendations %@", 71, 2, &dword_2186C1000, v9, v12, v10);

    return v5;
  }

  if (qword_280E8D818 != -1)
  {
    swift_once();
  }

  v13 = qword_280F61718;
  v14 = sub_219BF6214();
  sub_219BE5314("Sports Management Recommendations did get any clustered recommendations, switching to ranked candidates", 103, 2, &dword_2186C1000, v13, v14, MEMORY[0x277D84F90]);
  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v15 = a1 & 0xFFFFFFFFFFFFFF8;
    v3 = a1 >> 62;
    if (!(a1 >> 62))
    {
      v16 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v16 >= a3)
      {
        v17 = a3;
      }

      else
      {
        v17 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (a3)
      {
        v18 = v17;
      }

      else
      {
        v18 = 0;
      }

      if (v16 >= v18)
      {
        goto LABEL_18;
      }

      goto LABEL_50;
    }
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    v13 = a1;
  }

  else
  {
    v13 = v15;
  }

  v28 = sub_219BF7214();
  result = sub_219BF7214();
  if ((result & 0x8000000000000000) == 0)
  {
    if (v28 >= a3)
    {
      v29 = a3;
    }

    else
    {
      v29 = v28;
    }

    if (v28 < 0)
    {
      v29 = a3;
    }

    if (a3)
    {
      v18 = v29;
    }

    else
    {
      v18 = 0;
    }

    if (sub_219BF7214() >= v18)
    {
LABEL_18:
      if ((a1 & 0xC000000000000001) != 0 && v18)
      {
        type metadata accessor for TagModel();

        v19 = 0;
        do
        {
          v20 = v19 + 1;
          sub_219BF7334();
          v19 = v20;
        }

        while (v18 != v20);
        if (!v3)
        {
LABEL_23:
          v13 = 0;
          a1 &= 0xFFFFFFFFFFFFFF8uLL;
          v21 = a1 + 32;
          v18 = (2 * v18) | 1;
          if (v18)
          {
LABEL_28:
            v3 = v21;
            sub_219BF7934();
            swift_unknownObjectRetain_n();
            v25 = swift_dynamicCastClass();
            if (!v25)
            {
              swift_unknownObjectRelease();
              v25 = MEMORY[0x277D84F90];
            }

            v26 = *(v25 + 16);

            if (!__OFSUB__(v18 >> 1, v13))
            {
              if (v26 == (v18 >> 1) - v13)
              {
                v5 = swift_dynamicCastClass();
                swift_unknownObjectRelease();
                if (!v5)
                {
                  swift_unknownObjectRelease();
                  return MEMORY[0x277D84F90];
                }

                return v5;
              }

              goto LABEL_52;
            }

LABEL_51:
            __break(1u);
LABEL_52:
            swift_unknownObjectRelease();
            v21 = v3;
          }

LABEL_27:
          sub_218B66A58(a1, v21, v13, v18);
          v5 = v24;
          swift_unknownObjectRelease();
          return v5;
        }
      }

      else
      {

        if (!v3)
        {
          goto LABEL_23;
        }
      }

      a1 = sub_219BF7564();
      v13 = v22;
      v18 = v23;
      if (v23)
      {
        goto LABEL_28;
      }

      goto LABEL_27;
    }

LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  __break(1u);
  return result;
}

char *sub_2193F9258(unint64_t a1, unint64_t a2)
{
  if (a1 >> 62)
  {
    v30 = a2;
    v31 = sub_219BF7214();
    a2 = v30;
    v3 = v31;
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = MEMORY[0x277D84F90];
  v34 = a2;
  if (v3)
  {
    v35 = MEMORY[0x277D84F90];
    result = sub_21870B65C(0, v3 & ~(v3 >> 63), 0);
    if (v3 < 0)
    {
      __break(1u);
      goto LABEL_28;
    }

    v6 = 0;
    v4 = v35;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x21CECE0F0](v6, a1);
      }

      else
      {
        v7 = *(a1 + 8 * v6 + 32);
      }

      v8 = [*(v7 + 16) identifier];
      v9 = sub_219BF5414();
      v11 = v10;

      v13 = *(v35 + 16);
      v12 = *(v35 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_21870B65C((v12 > 1), v13 + 1, 1);
      }

      ++v6;
      *(v35 + 16) = v13 + 1;
      v14 = v35 + 16 * v13;
      *(v14 + 32) = v9;
      *(v14 + 40) = v11;
    }

    while (v3 != v6);
    a2 = v34;
  }

  if (a2 >> 62)
  {
    v32 = a2;
    v33 = sub_219BF7214();
    a2 = v32;
    v15 = v33;
  }

  else
  {
    v15 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v16 = MEMORY[0x277D84F90];
  if (!v15)
  {
LABEL_24:
    v29 = sub_219417FCC(v4, v16);

    return (v29 & 1);
  }

  v17 = a2;
  v36 = MEMORY[0x277D84F90];
  result = sub_21870B65C(0, v15 & ~(v15 >> 63), 0);
  if ((v15 & 0x8000000000000000) == 0)
  {
    v18 = 0;
    v16 = v36;
    v19 = v17;
    v20 = v17 & 0xC000000000000001;
    do
    {
      if (v20)
      {
        v21 = MEMORY[0x21CECE0F0](v18, v19);
      }

      else
      {
        v21 = *(v19 + 8 * v18 + 32);
      }

      v22 = [*(v21 + 16) identifier];
      v23 = sub_219BF5414();
      v25 = v24;

      v27 = *(v36 + 16);
      v26 = *(v36 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_21870B65C((v26 > 1), v27 + 1, 1);
      }

      ++v18;
      *(v36 + 16) = v27 + 1;
      v28 = v36 + 16 * v27;
      *(v28 + 32) = v23;
      *(v28 + 40) = v25;
      v19 = v34;
    }

    while (v15 != v18);
    goto LABEL_24;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_2193F94FC(unint64_t a1, uint64_t a2)
{
  if (a1 >> 62)
  {
    if (sub_219BF7214() > a2)
    {
      goto LABEL_3;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
LABEL_3:
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v3 = [objc_opt_self() bundleForClass_];
    v4 = sub_219BDB5E4();

    return v4;
  }

  return 0;
}

unint64_t sub_2193F9600()
{
  result = qword_27CC177E8;
  if (!qword_27CC177E8)
  {
    sub_2186E8200(255, &qword_280E8EFD0, type metadata accessor for TagModel, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC177E8);
  }

  return result;
}

uint64_t sub_2193F9688()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

double sub_2193F974C(uint64_t a1)
{
  sub_219BF5524();

  return result;
}

uint64_t sub_2193F97FC(uint64_t a1)
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

unint64_t sub_2193F98BC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2193FAB90(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_2193F98EC(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x746C7561666564;
  v4 = 0x6863746566657270;
  if (*v1 != 2)
  {
    v4 = 0x6E6F697461727563;
  }

  if (*v1)
  {
    v3 = 0x68736572666572;
    v2 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = 0xE800000000000000;
  }

  *a1 = v5;
  a1[1] = v2;
}

uint64_t sub_2193F9A28(uint64_t a1)
{
  v56 = *v1;
  v3 = sub_219BDBD64();
  v4 = *(v3 - 8);
  v54 = v3;
  v55 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BEE754();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BEEAF4();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v15, a1, v11, v13);
  v16 = (*(v12 + 88))(v15, v11);
  if (v16 == *MEMORY[0x277D32288] || v16 == *MEMORY[0x277D32270] || v16 == *MEMORY[0x277D32280])
  {
    sub_219BF0944();
    v19 = *(v57 + 16);

    v21 = v19[2];
    v20 = v19[3];
    v22 = v19[4];
    v23 = v19[5];
    v24 = v19[6];
    (*(v8 + 16))(v10, v19 + OBJC_IVAR____TtC7NewsUI221TagFeedServiceContext_serviceOptions, v7);
    v25 = swift_allocObject();
    *(v25 + 16) = v21;
    *(v25 + 24) = v20;
    *(v25 + 32) = v22;
    *(v25 + 40) = v23;
    *(v25 + 48) = v24;
    *(v25 + 56) = 1;
    (*(v8 + 32))(v25 + OBJC_IVAR____TtC7NewsUI221TagFeedServiceContext_serviceOptions, v10, v7);

    v26 = v22;
    v27 = v23;
    v28 = v24;
  }

  else if (v16 == *MEMORY[0x277D32278])
  {
    v29 = v1[4];
    (*(v8 + 16))(v10, v1 + OBJC_IVAR____TtC7NewsUI221TagFeedServiceContext_serviceOptions, v7);
    v30 = v29;
    sub_219BDBD54();
    v31 = sub_219BDBD44();
    v33 = v32;
    (*(v55 + 8))(v6, v54);
    v34 = qword_280E8D7F8;
    v35 = *MEMORY[0x277D30BC0];
    if (v34 != -1)
    {
      swift_once();
    }

    v36 = qword_280F61708;
    v25 = swift_allocObject();
    *(v25 + 16) = v31;
    *(v25 + 24) = v33;
    *(v25 + 32) = v30;
    *(v25 + 40) = v35;
    *(v25 + 48) = v36;
    *(v25 + 56) = 1;
    (*(v8 + 32))(v25 + OBJC_IVAR____TtC7NewsUI221TagFeedServiceContext_serviceOptions, v10, v7);
    v37 = v36;
  }

  else
  {
    sub_219BF0944();
    v38 = *(v57 + 16);

    v39 = *(v38 + 2);
    v52 = *(v38 + 3);
    v53 = v10;
    v40 = *(v38 + 5);
    v54 = *(v38 + 4);
    v55 = v39;
    v41 = *(v38 + 6);
    v42 = *(v8 + 16);
    v51 = v7;
    v42(v10, &v38[OBJC_IVAR____TtC7NewsUI221TagFeedServiceContext_serviceOptions], v7);
    v25 = swift_allocObject();
    v43 = v54;
    v45 = v52;
    v44 = v53;
    *(v25 + 16) = v55;
    *(v25 + 24) = v45;
    *(v25 + 32) = v43;
    *(v25 + 40) = v40;
    *(v25 + 48) = v41;
    *(v25 + 56) = 1;
    (*(v8 + 32))(v25 + OBJC_IVAR____TtC7NewsUI221TagFeedServiceContext_serviceOptions, v44, v51);

    v46 = v43;
    v47 = v40;
    v48 = v41;

    (*(v12 + 8))(v15, v11);
  }

  return v25;
}

uint64_t sub_2193F9F38()
{

  v1 = OBJC_IVAR____TtC7NewsUI221TagFeedServiceContext_serviceOptions;
  v2 = sub_219BEE754();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

unint64_t sub_2193FA010()
{
  result = qword_27CC19E58;
  if (!qword_27CC19E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC19E58);
  }

  return result;
}

uint64_t sub_2193FA064@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC7NewsUI221TagFeedServiceContext_serviceOptions;
  v5 = sub_219BEE754();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_2193FA0E0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a1 + 16) == *(*a2 + 16) && *(*a1 + 24) == *(v3 + 24);
  if (!v4 && (sub_219BF78F4() & 1) == 0)
  {
    return 0;
  }

  v5 = *(v3 + 56);
  v6 = *(v2 + 56);

  return sub_21908B8AC(v6, v5);
}

uint64_t sub_2193FA14C()
{
  sub_219BF7AA4();
  sub_219BF5524();
  return sub_219BF7AE4();
}

uint64_t sub_2193FA1A0(uint64_t a1)
{
  sub_219BF7AA4();
  sub_219BF5524();
  return sub_219BF7AE4();
}

uint64_t sub_2193FA1E4(void *a1)
{
  v2 = sub_219BE1EF4();
  v26 = *(v2 - 8);
  v27 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2193FB098(0);
  v6 = v5;
  v28 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2193FB198(0, &qword_27CC19E80, MEMORY[0x277D84538]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v13 = &v25 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2193FB0F0();
  sub_219BF7B44();
  LOBYTE(v35) = 0;
  v14 = v29;
  sub_219BF77F4();
  if (v14)
  {
    return (*(v11 + 8))(v13, v10);
  }

  v25 = v6;
  v29 = v11;
  v16 = *(v30 + 32);
  sub_218C8CC74(v16, v32);
  v35 = v16;
  v17 = qword_280EE7C68;
  v18 = v16;
  if (v17 != -1)
  {
    swift_once();
  }

  v19 = v27;
  v20 = __swift_project_value_buffer(v27, qword_280EE7C70);
  (*(v26 + 16))(v4, v20, v19);
  sub_218C8B8B4();
  v34 = v32[0];
  sub_2189AD3D8(&v34);
  v33 = *(&v32[1] + 8);
  sub_2189D2CDC(&v33);
  sub_2186FAF08();
  v21 = v8;
  sub_219BE3364();
  LOBYTE(v35) = 1;
  sub_2193FB250(&qword_27CC19E88, sub_2193FB098, MEMORY[0x277D6CF90]);
  v22 = v10;
  v23 = v25;
  sub_219BF7834();
  v24 = v29;
  (*(v28 + 8))(v21, v23);
  LOBYTE(v35) = *(v30 + 56);
  v31 = 2;
  sub_2193FB1FC();
  sub_219BF7834();
  LOBYTE(v35) = 3;
  sub_219BEE754();
  sub_2193FB250(&qword_280E91B28, MEMORY[0x277D32158], MEMORY[0x277D32160]);
  sub_219BF7834();
  return (*(v24 + 8))(v13, v22);
}

uint64_t sub_2193FA694()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

double sub_2193FA76C(uint64_t a1)
{
  sub_219BF5524();

  return result;
}

uint64_t sub_2193FA830(uint64_t a1)
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

unint64_t sub_2193FA904@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2193FB404(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_2193FA934(uint64_t *a1@<X8>)
{
  v2 = 0xEA00000000007265;
  v3 = 0x696669746E656469;
  v4 = 0xE400000000000000;
  v5 = 1684957547;
  if (*v1 != 2)
  {
    v5 = 0x4F65636976726573;
    v4 = 0xEE00736E6F697470;
  }

  if (*v1)
  {
    v3 = 0x6373654464656566;
    v2 = 0xEE00726F74706972;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_2193FA9C8()
{
  v1 = 0x696669746E656469;
  v2 = 1684957547;
  if (*v0 != 2)
  {
    v2 = 0x4F65636976726573;
  }

  if (*v0)
  {
    v1 = 0x6373654464656566;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_2193FAA58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2193FB404(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2193FAA80(uint64_t a1)
{
  v2 = sub_2193FB0F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2193FAABC(uint64_t a1)
{
  v2 = sub_2193FB0F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2193FAAF8@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_2193FABDC(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_2193FAB90(uint64_t a1, uint64_t a2)
{
  v2 = sub_219BF7614();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2193FABDC(void *a1)
{
  v2 = sub_219BEE754();
  v30 = *(v2 - 8);
  v31 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2193FB098(0);
  v6 = v5;
  v32 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2193FB198(0, &qword_27CC19E60, MEMORY[0x277D844C8]);
  v10 = v9;
  v33 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2193FB0F0();
  v13 = v34;
  sub_219BF7B34();
  if (v13)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v14 = v33;
    v34 = a1;
    v29 = v4;
    v40 = 0;
    v27 = sub_219BF76F4();
    v28 = v15;
    v39 = 1;
    sub_2193FB250(&qword_27CC19E70, sub_2193FB098, MEMORY[0x277D6CF98]);
    sub_219BF7734();
    v16 = v14;
    sub_219BE3384();
    v32[1](v8, v6);
    v17 = v35;
    v37 = 2;
    sub_2193FB144();
    sub_219BF7734();
    v18 = v38;
    v36 = 3;
    sub_2193FB250(&qword_280E91B20, MEMORY[0x277D32158], MEMORY[0x277D32168]);
    sub_219BF7734();
    v20 = qword_280E8D7F8;
    v32 = *MEMORY[0x277D30BC0];
    if (v20 != -1)
    {
      swift_once();
    }

    v21 = *(v16 + 8);
    v22 = qword_280F61708;
    v21(v12, v10);
    type metadata accessor for TagFeedServiceContext(0);
    v10 = swift_allocObject();
    v23 = v28;
    *(v10 + 16) = v27;
    *(v10 + 24) = v23;
    v24 = v31;
    v25 = v32;
    *(v10 + 32) = v17;
    *(v10 + 40) = v25;
    *(v10 + 48) = v22;
    *(v10 + 56) = v18;
    (*(v30 + 32))(v10 + OBJC_IVAR____TtC7NewsUI221TagFeedServiceContext_serviceOptions, v29, v24);
    __swift_destroy_boxed_opaque_existential_1(v34);
  }

  return v10;
}

void sub_2193FB098(uint64_t a1)
{
  if (!qword_27CC10528)
  {
    sub_2186FAF08();
    v1 = sub_219BE3474();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC10528);
    }
  }
}

unint64_t sub_2193FB0F0()
{
  result = qword_27CC19E68;
  if (!qword_27CC19E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC19E68);
  }

  return result;
}

unint64_t sub_2193FB144()
{
  result = qword_27CC19E78;
  if (!qword_27CC19E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC19E78);
  }

  return result;
}

void sub_2193FB198(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2193FB0F0();
    v7 = a3(a1, &type metadata for TagFeedServiceContext.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2193FB1FC()
{
  result = qword_27CC19E90;
  if (!qword_27CC19E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC19E90);
  }

  return result;
}

uint64_t sub_2193FB250(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2193FB298()
{
  result = qword_27CC19E98;
  if (!qword_27CC19E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC19E98);
  }

  return result;
}

unint64_t sub_2193FB300()
{
  result = qword_27CC19EA0;
  if (!qword_27CC19EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC19EA0);
  }

  return result;
}

unint64_t sub_2193FB358()
{
  result = qword_27CC19EA8;
  if (!qword_27CC19EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC19EA8);
  }

  return result;
}

unint64_t sub_2193FB3B0()
{
  result = qword_27CC19EB0;
  if (!qword_27CC19EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC19EB0);
  }

  return result;
}

unint64_t sub_2193FB404(uint64_t a1, uint64_t a2)
{
  v2 = sub_219BF7614();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t type metadata accessor for MagazineFeedRefreshResult(uint64_t a1)
{
  result = qword_280EBE038;
  if (!qword_280EBE038)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2193FB4C4(uint64_t a1)
{
  v1 = type metadata accessor for MagazineFeedExpandResult(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t type metadata accessor for HistoryFeedSectionDescriptor(uint64_t a1)
{
  result = qword_280EB41C8;
  if (!qword_280EB41C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2193FB590(uint64_t a1)
{
  v1 = type metadata accessor for ArticleListHistoryFeedGroup(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_2193FB5E8()
{
  v1 = v0;
  v2 = type metadata accessor for ArticleListHistoryFeedGroup(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2193FBB08(v1, v8);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    return 7364967;
  }

  sub_218B73F4C(v8, v5);
  v9 = *v5;

  sub_2193FBEAC(v5, type metadata accessor for ArticleListHistoryFeedGroup);
  return v9;
}

uint64_t sub_2193FB754@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  MEMORY[0x28223BE20](a1 - 8);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2193FBB08(v5, v4);
  v6 = type metadata accessor for ArticleListHistoryFeedGroup(0);
  if ((*(*(v6 - 8) + 48))(v4, 1, v6) != 1)
  {
    sub_2193FBEAC(v4, type metadata accessor for HistoryFeedSectionDescriptor);
  }

  v7 = *MEMORY[0x277D31EA0];
  v8 = sub_219BEDDC4();
  return (*(*(v8 - 8) + 104))(a2, v7, v8);
}

uint64_t sub_2193FB86C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  MEMORY[0x28223BE20](a1 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2193FBB08(v5, v4);
  v6 = type metadata accessor for ArticleListHistoryFeedGroup(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6);
  v8 = sub_219BF10E4();
  v9 = *(*(v8 - 8) + 104);
  if (v7 == 1)
  {
    return v9(a2, *MEMORY[0x277D33180], v8);
  }

  v9(a2, *MEMORY[0x277D33190], v8);
  return sub_2193FBEAC(v4, type metadata accessor for HistoryFeedSectionDescriptor);
}

uint64_t sub_2193FB9AC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ArticleListHistoryFeedGroup(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2193FBB08(v2, v10);
  result = (*(v5 + 48))(v10, 1, v4);
  if (result == 1)
  {
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  else
  {
    sub_218B73F4C(v10, v7);
    *(a1 + 24) = v4;
    *(a1 + 32) = sub_2193FBB6C();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
    return sub_218B73F4C(v7, boxed_opaque_existential_1);
  }

  return result;
}

uint64_t sub_2193FBB08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HistoryFeedSectionDescriptor(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2193FBB6C()
{
  result = qword_27CC111A0;
  if (!qword_27CC111A0)
  {
    type metadata accessor for ArticleListHistoryFeedGroup(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC111A0);
  }

  return result;
}

uint64_t sub_2193FBBC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArticleListHistoryFeedGroup(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for HistoryFeedSectionDescriptor(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2193FBE48(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 56);
  sub_2193FBB08(a1, v13);
  sub_2193FBB08(a2, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    v17 = 1;
    v18 = v16(&v13[v15], 1, v4);
    v19 = type metadata accessor for HistoryFeedSectionDescriptor;
    if (v18 == 1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    sub_2193FBB08(v13, v10);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      sub_218B73F4C(&v13[v15], v7);
      v17 = sub_219BED814();
      sub_2193FBEAC(v7, type metadata accessor for ArticleListHistoryFeedGroup);
      sub_2193FBEAC(v10, type metadata accessor for ArticleListHistoryFeedGroup);
      v19 = type metadata accessor for HistoryFeedSectionDescriptor;
      goto LABEL_8;
    }

    sub_2193FBEAC(v10, type metadata accessor for ArticleListHistoryFeedGroup);
  }

  v17 = 0;
  v19 = sub_2193FBE48;
LABEL_8:
  sub_2193FBEAC(v13, v19);
  return v17 & 1;
}

void sub_2193FBE48(uint64_t a1)
{
  if (!qword_27CC19EB8)
  {
    type metadata accessor for HistoryFeedSectionDescriptor(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC19EB8);
    }
  }
}

uint64_t sub_2193FBEAC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t get_enum_tag_for_layout_string_7NewsUI232SavedFeedLayoutSectionDescriptorO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2193FBF34()
{
  if (*v0 < 3)
  {
    return 0;
  }

  v2 = v0[1];
  v3 = sub_2193FC800(*v0, type metadata accessor for SavedFeedLayoutSectionDescriptor.Header, type metadata accessor for SavedFeedLayoutSectionDescriptor.Header);
  v4 = sub_2193FC800(v2, type metadata accessor for SavedFeedLayoutSectionDescriptor.Footer, type metadata accessor for SavedFeedLayoutSectionDescriptor.Footer);
  sub_2191ED57C(v4);
  return v3;
}

uint64_t sub_2193FBFE0(uint64_t a1)
{
  v2 = sub_2193FCAA8();

  return MEMORY[0x2821D5BC0](a1, v2);
}

uint64_t sub_2193FC01C(uint64_t a1)
{
  v2 = sub_218C2FCAC();

  return MEMORY[0x2821D5688](a1, v2);
}

uint64_t sub_2193FC05C(uint64_t a1)
{
  v2 = type metadata accessor for SavedFeedLayoutSectionDescriptor.Decoration(0);
  v68 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SavedFeedLayoutSectionDescriptor.Footer(0);
  v59 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SavedFeedLayoutSectionDescriptor.Header(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BE9834();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *MEMORY[0x277D6E758];
  v61 = *(v13 + 104);
  v62 = v13 + 104;
  v61(v16, v17, v12, v14);
  v18 = sub_219BEE054();
  v20 = *(v13 + 8);
  v19 = v13 + 8;
  v63 = v16;
  v60 = v20;
  v20(v16, v12);
  v21 = *(v18 + 16);
  v22 = MEMORY[0x277D84F90];
  v64 = v4;
  v65 = a1;
  if (v21)
  {
    v56 = v19;
    v57 = v12;
    v58 = v7;
    v69 = MEMORY[0x277D84F90];
    sub_218C36FB0(0, v21, 0);
    v23 = v18;
    v24 = v69;
    v67 = sub_219BF00D4();
    v25 = *(v67 - 8);
    v66 = *(v25 + 16);
    v26 = v23 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
    v27 = *(v25 + 72);
    do
    {
      v66(v11, v26, v67);
      v69 = v24;
      v29 = *(v24 + 16);
      v28 = *(v24 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_218C36FB0((v28 > 1), v29 + 1, 1);
        v24 = v69;
      }

      *(v24 + 16) = v29 + 1;
      sub_2193FC798(v11, v24 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v29, type metadata accessor for SavedFeedLayoutSectionDescriptor.Header);
      v26 += v27;
      --v21;
    }

    while (v21);

    v4 = v64;
    a1 = v65;
    v12 = v57;
    v7 = v58;
    v22 = MEMORY[0x277D84F90];
  }

  else
  {

    v24 = MEMORY[0x277D84F90];
  }

  v30 = v63;
  (v61)(v63, *MEMORY[0x277D6E750], v12);
  v31 = sub_219BEE054();
  v32 = v30;
  v33 = v31;
  v60(v32, v12);
  v34 = *(v33 + 16);
  if (v34)
  {
    v69 = v22;
    sub_218C36F60(0, v34, 0);
    v35 = v69;
    v67 = sub_219BF00D4();
    v36 = *(v67 - 8);
    v66 = *(v36 + 16);
    v37 = *(v36 + 80);
    v63 = v33;
    v38 = v33 + ((v37 + 32) & ~v37);
    v39 = *(v36 + 72);
    v40 = v59;
    do
    {
      v66(v7, v38, v67);
      v69 = v35;
      v41 = v7;
      v43 = *(v35 + 16);
      v42 = *(v35 + 24);
      if (v43 >= v42 >> 1)
      {
        sub_218C36F60((v42 > 1), v43 + 1, 1);
        v40 = v59;
        v35 = v69;
      }

      *(v35 + 16) = v43 + 1;
      sub_2193FC798(v41, v35 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v43, type metadata accessor for SavedFeedLayoutSectionDescriptor.Footer);
      v38 += v39;
      --v34;
      v7 = v41;
    }

    while (v34);

    v4 = v64;
    a1 = v65;
    v22 = MEMORY[0x277D84F90];
  }

  else
  {
  }

  v44 = sub_219BEE044();
  v45 = *(v44 + 16);
  if (v45)
  {
    v69 = v22;
    sub_218C36F10(0, v45, 0);
    v46 = v69;
    v67 = sub_219BEE914();
    v47 = *(v67 - 8);
    v66 = *(v47 + 16);
    v48 = *(v47 + 80);
    v63 = v44;
    v49 = v44 + ((v48 + 32) & ~v48);
    v50 = *(v47 + 72);
    do
    {
      v66(v4, v49, v67);
      v69 = v46;
      v52 = *(v46 + 16);
      v51 = *(v46 + 24);
      if (v52 >= v51 >> 1)
      {
        sub_218C36F10((v51 > 1), v52 + 1, 1);
        v46 = v69;
      }

      *(v46 + 16) = v52 + 1;
      sub_2193FC798(v4, v46 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v52, type metadata accessor for SavedFeedLayoutSectionDescriptor.Decoration);
      v49 += v50;
      --v45;
    }

    while (v45);
    v53 = sub_219BEE074();
    (*(*(v53 - 8) + 8))(v65, v53);
  }

  else
  {

    v54 = sub_219BEE074();
    (*(*(v54 - 8) + 8))(a1, v54);
  }

  return v24;
}

uint64_t sub_2193FC798(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2193FC800(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v29 = a3;
  v4 = a2(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v28 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v26 - v8;
  v10 = sub_219BF00D4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 16);
  v15 = MEMORY[0x277D84F90];
  if (v14)
  {
    v33 = MEMORY[0x277D84F90];
    sub_218C34270(0, v14, 0);
    v15 = v33;
    v16 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v17 = *(v5 + 72);
    v26 = (v11 + 32);
    v27 = v17;
    v18 = (v11 + 16);
    v19 = (v11 + 8);
    do
    {
      v20 = v29;
      sub_218A5B020(v16, v9, v29);
      v21 = v28;
      sub_218A5B020(v9, v28, v20);
      (*v26)(v13, v21, v10);
      sub_218A5B088(v9, v20);
      v33 = v15;
      v23 = *(v15 + 16);
      v22 = *(v15 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_218C34270((v22 > 1), v23 + 1, 1);
      }

      v31 = v10;
      v32 = sub_21897FB18();
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v30);
      (*v18)(boxed_opaque_existential_1, v13, v10);
      v15 = v33;
      *(v33 + 16) = v23 + 1;
      sub_2186CB1F0(&v30, v15 + 40 * v23 + 32);
      (*v19)(v13, v10);
      v16 += v27;
      --v14;
    }

    while (v14);
  }

  return v15;
}

unint64_t sub_2193FCAA8()
{
  result = qword_27CC19EC0;
  if (!qword_27CC19EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC19EC0);
  }

  return result;
}

uint64_t sub_2193FCB0C()
{
  v1 = v0;
  v2 = type metadata accessor for FollowingSectionLayoutDescriptor(0);
  MEMORY[0x28223BE20](v2);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TitleViewLayoutAttributes(0);
  MEMORY[0x28223BE20](v5);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2193FCDEC(v1, v4);
  swift_getEnumCaseMultiPayload();
  v8 = *(v4 + 3);
  v14[2] = *(v4 + 2);
  v14[3] = v8;
  v15 = *(v4 + 8);
  v9 = *(v4 + 1);
  v14[0] = *v4;
  v14[1] = v9;
  sub_218967CDC(v14);
  sub_218749C1C(0);
  sub_218A52EFC(&v4[*(v10 + 48)], v7);
  sub_2189334B8(0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_219C09BA0;
  *(v11 + 56) = v5;
  *(v11 + 64) = sub_218748CF8(&qword_280EBCC28, type metadata accessor for TitleViewLayoutAttributes, &unk_219C7FA94);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v11 + 32));
  sub_218A52EFC(v7, boxed_opaque_existential_1);
  return v11;
}

uint64_t sub_2193FCCCC(uint64_t a1)
{
  v2 = sub_218748CF8(&qword_27CC19EC8, type metadata accessor for FollowingSectionLayoutDescriptor, &unk_219C7A82C);

  return MEMORY[0x2821D5BC0](a1, v2);
}

uint64_t sub_2193FCD38(uint64_t a1)
{
  v2 = sub_218748CF8(&qword_280EA6928, type metadata accessor for FollowingSectionLayoutDescriptor, &unk_219C7A7DC);

  return MEMORY[0x2821D5688](a1, v2);
}

uint64_t sub_2193FCDEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FollowingSectionLayoutDescriptor(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2193FCE50()
{
  v1 = sub_219BDBD34();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v10 - v6;
  __swift_project_boxed_opaque_existential_1((v0 + 88), *(v0 + 112));
  sub_219BE00E4();
  sub_219BE6CB4();
  sub_2193FD01C();
  sub_219BDD174();
  v8 = *(v2 + 8);
  v8(v7, v1);
  sub_219BE6CB4();
  sub_219BE6CC4();
  sub_219BDBBF4();
  v8(v4, v1);
  sub_219BDD194();
  return (v8)(v7, v1);
}

unint64_t sub_2193FD01C()
{
  result = qword_27CC19ED0;
  if (!qword_27CC19ED0)
  {
    sub_219BE00E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC19ED0);
  }

  return result;
}

void sub_2193FD074(uint64_t a1, uint64_t a2, unint64_t a3, __int128 *a4)
{
  v5 = v4;
  v59 = a2;
  v60 = a3;
  sub_218748D40(0);
  v57 = *(v7 - 8);
  v58 = v7;
  MEMORY[0x28223BE20](v7);
  v56 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BDB954();
  v51 = *(v9 - 8);
  v52 = v9;
  MEMORY[0x28223BE20](v9);
  v50 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2193FE62C(0, qword_280ED17E0, type metadata accessor for EditorialModelRoute);
  MEMORY[0x28223BE20](v11 - 8);
  v55 = &v49 - v12;
  v13 = type metadata accessor for FollowingModel(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a4;
  v53 = a4[1];
  v54 = v16;
  __swift_project_boxed_opaque_existential_1(v5 + 11, v5[14]);
  sub_218FF42AC();
  v17 = v5[5];
  ObjectType = swift_getObjectType();
  sub_218950B84(0);
  v19 = sub_219BE5F84();
  (*(v17 + 144))(v19);

  sub_219BE5FC4();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_2193FE804(v15, type metadata accessor for FollowingModel);
      __swift_project_boxed_opaque_existential_1(v5 + 6, v5[9]);
      sub_218BF741C();
      return;
    case 2u:
      __swift_project_boxed_opaque_existential_1(v5 + 6, v5[9]);
      sub_218BF73A8();
      v27 = type metadata accessor for FollowingAudioModel;
      goto LABEL_25;
    case 3u:
      v28 = *v15;
      v29 = *(v28 + 16);
      v30 = *(v29 + 16);
      v31 = *(v29 + 24);
      v32 = *(v17 + 128);

      v32(v30, v31, ObjectType, v17);

      v33 = v55;
      sub_2193FE680(*(v28 + 16) + OBJC_IVAR____TtC7NewsUI214EditorialModel_route, v55, qword_280ED17E0, type metadata accessor for EditorialModelRoute);
      v34 = type metadata accessor for EditorialModelRoute(0);
      if ((*(*(v34 - 8) + 48))(v33, 1, v34) != 1)
      {
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload > 1)
        {
          if (EnumCaseMultiPayload == 2)
          {
            v41 = *v33;
            v40 = *(v33 + 8);
            __swift_project_boxed_opaque_existential_1(v5 + 6, v5[9]);
            sub_218BF122C(v41, v40);
          }

          else
          {
            v47 = v50;
            v46 = v51;
            v48 = v52;
            (*(v51 + 32))(v50, v33, v52);
            (*(v17 + 120))(v47, ObjectType, v17);
            (*(v46 + 8))(v47, v48);
          }
        }

        else
        {
          v38 = *v33;
          if (EnumCaseMultiPayload)
          {
            __swift_project_boxed_opaque_existential_1(v5 + 6, v5[9]);
            v42 = [v38 identifier];
            v43 = sub_219BF5414();
            v45 = v44;

            sub_218BF122C(v43, v45);
            swift_unknownObjectRelease();
          }

          else
          {
            __swift_project_boxed_opaque_existential_1(v5 + 6, v5[9]);

            sub_218BF1BEC(v39, v59, v60, 0);
          }
        }
      }

      goto LABEL_4;
    case 4u:
      sub_2193FE804(v15, type metadata accessor for FollowingModel);
      __swift_project_boxed_opaque_existential_1(v5 + 6, v5[9]);
      sub_218BF7380();
      (*(v17 + 136))(ObjectType, v17);
      return;
    case 5u:
      sub_2193FE804(v15, type metadata accessor for FollowingModel);
      __swift_project_boxed_opaque_existential_1(v5 + 6, v5[9]);
      sub_218BF73CC();
      return;
    case 6u:
    case 7u:
      if (*(*v15 + 32) == 1)
      {
        __swift_project_boxed_opaque_existential_1(v5 + 6, v5[9]);

        sub_218BF1BEC(v20, v59, v60, 0);
      }

LABEL_4:

      return;
    case 8u:
      sub_2193FE804(v15, type metadata accessor for FollowingModel);
      __swift_project_boxed_opaque_existential_1(v5 + 6, v5[9]);
      sub_218BF4F3C();
      return;
    case 9u:
      sub_2193FE804(v15, type metadata accessor for FollowingModel);
      __swift_project_boxed_opaque_existential_1(v5 + 6, v5[9]);
      sub_218BF55B8();
      return;
    case 0xAu:
      sub_2193FE804(v15, type metadata accessor for FollowingModel);
      (*(v17 + 72))(ObjectType, v17);
      return;
    case 0xBu:

      sub_218748BF4(0);
      v23 = v57;
      v22 = v58;
      v24 = &v15[*(v21 + 48)];
      v25 = v56;
      (*(v57 + 32))(v56, v24, v58);
      __swift_project_boxed_opaque_existential_1(v5 + 6, v5[9]);
      v26 = sub_219BE23E4();
      sub_218BF31EC(v26);

      (*(v23 + 8))(v25, v22);
      return;
    case 0xCu:
      sub_2193FE804(v15, type metadata accessor for FollowingModel);
      __swift_project_boxed_opaque_existential_1(v5 + 6, v5[9]);
      sub_218BF55E0();
      return;
    case 0xDu:
      sub_2193FE804(v15, type metadata accessor for FollowingModel);
      __swift_project_boxed_opaque_existential_1(v5 + 6, v5[9]);
      sub_218BF5C30();
      return;
    case 0xEu:
      sub_2193FE804(v15, type metadata accessor for FollowingModel);
      __swift_project_boxed_opaque_existential_1(v5 + 6, v5[9]);
      sub_218BF73F4();
      return;
    case 0xFu:
      v27 = type metadata accessor for FollowingModel;
      goto LABEL_25;
    case 0x10u:
      __swift_project_boxed_opaque_existential_1(v5 + 6, v5[9]);
      sub_218BF402C(v60);
      v27 = type metadata accessor for FollowingMySportsModel;
      goto LABEL_25;
    case 0x11u:
      __swift_project_boxed_opaque_existential_1(v5 + 6, v5[9]);
      v35 = sub_219BE5F84();
      sub_218BF3874(v60, v35, v36);

      v27 = type metadata accessor for FollowingPuzzleHubModel;
LABEL_25:
      sub_2193FE804(v15, v27);
      break;
    case 0x12u:
      sub_2193FE804(v15, type metadata accessor for FollowingModel);
      __swift_project_boxed_opaque_existential_1(v5 + 6, v5[9]);
      sub_218BF47B4(v60);
      break;
    case 0x13u:
      sub_2193FE804(v15, type metadata accessor for FollowingModel);
      __swift_project_boxed_opaque_existential_1(v5 + 6, v5[9]);
      sub_218BF7AEC();
      break;
    default:
      sub_2193FE804(v15, type metadata accessor for FollowingModel);
      __swift_project_boxed_opaque_existential_1(v5 + 6, v5[9]);
      v61[0] = v54;
      v61[1] = v53;
      sub_218BF6BB0(v61);
      break;
  }
}

uint64_t sub_2193FD990(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2193FE62C(0, qword_280ED17E0, type metadata accessor for EditorialModelRoute);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (&v32 - v7);
  v9 = type metadata accessor for FollowingModel(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218950B84(0);
  sub_219BE5FC4();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 2u:
      v12 = type metadata accessor for FollowingAudioModel;
      goto LABEL_3;
    case 3u:
      sub_2193FE680(*(*v11 + 16) + OBJC_IVAR____TtC7NewsUI214EditorialModel_route, v8, qword_280ED17E0, type metadata accessor for EditorialModelRoute);
      v18 = type metadata accessor for EditorialModelRoute(0);
      if ((*(*(v18 - 8) + 48))(v8, 1, v18) == 1)
      {

        return 0;
      }

      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload != 2)
        {

          v13 = type metadata accessor for EditorialModelRoute;
          v14 = v8;
LABEL_4:
          sub_2193FE804(v14, v13);
          return 0;
        }

        v26 = *v8;
        v25 = v8[1];
        __swift_project_boxed_opaque_existential_1((v3 + 48), *(v3 + 72));
        v17 = sub_218BF8CB8(v26, v25);
      }

      else
      {
        if (!EnumCaseMultiPayload)
        {
          v24 = *v8;
          __swift_project_boxed_opaque_existential_1((v3 + 48), *(v3 + 72));
          v17 = sub_218BF5C58(v24, a2, a3);

          goto LABEL_8;
        }

        v27 = *v8;
        __swift_project_boxed_opaque_existential_1((v3 + 48), *(v3 + 72));
        v28 = [v27 identifier];
        v29 = sub_219BF5414();
        v31 = v30;

        v17 = sub_218BF8CB8(v29, v31);
        swift_unknownObjectRelease();
      }

LABEL_8:

      return v17;
    case 4u:
      sub_2193FE804(v11, type metadata accessor for FollowingModel);
      __swift_project_boxed_opaque_existential_1((v3 + 48), *(v3 + 72));
      return sub_218BF8498();
    case 5u:
      sub_2193FE804(v11, type metadata accessor for FollowingModel);
      __swift_project_boxed_opaque_existential_1((v3 + 48), *(v3 + 72));
      return sub_218BF8884();
    case 6u:
    case 7u:
      v16 = *v11;
      __swift_project_boxed_opaque_existential_1((v3 + 48), *(v3 + 72));
      v17 = sub_218BF5C58(v16, a2, a3);
      goto LABEL_8;
    case 0xBu:

      sub_218748BF4(0);
      v21 = *(v20 + 48);
      sub_218748D40(0);
      (*(*(v22 - 8) + 8))(&v11[v21], v22);
      return 0;
    case 0xEu:
      sub_2193FE804(v11, type metadata accessor for FollowingModel);
      __swift_project_boxed_opaque_existential_1((v3 + 48), *(v3 + 72));
      return sub_218BF8470();
    case 0x10u:
      v12 = type metadata accessor for FollowingMySportsModel;
      goto LABEL_3;
    case 0x11u:
      __swift_project_boxed_opaque_existential_1((v3 + 48), *(v3 + 72));
      v19 = sub_218BF6688(a3);
      sub_2193FE804(v11, type metadata accessor for FollowingPuzzleHubModel);
      return v19;
    case 0x12u:
      sub_2193FE804(v11, type metadata accessor for FollowingModel);
      __swift_project_boxed_opaque_existential_1((v3 + 48), *(v3 + 72));
      return sub_218BF61E8(a3);
    case 0x13u:
      sub_2193FE804(v11, type metadata accessor for FollowingModel);
      __swift_project_boxed_opaque_existential_1((v3 + 48), *(v3 + 72));
      return sub_218BF88AC();
    default:
      v12 = type metadata accessor for FollowingModel;
LABEL_3:
      v13 = v12;
      v14 = v11;
      goto LABEL_4;
  }
}

char *sub_2193FDE98()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    sub_21910B120(0);
    v2 = sub_219BF1B44();
    sub_2193FE048(v2 & 1, v1);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2193FDF10(uint64_t a1, uint64_t a2)
{
  sub_2193FE62C(0, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = result;
    swift_getObjectType();
    sub_2193FE680(a1, v5, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
    sub_219BEA2C4();
    v8 = OBJC_IVAR____TtC7NewsUI223FollowingViewController_previousSelectedIndexPath;
    swift_beginAccess();
    sub_2191783F0(a1, v7 + v8);
    swift_endAccess();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2193FE048(uint64_t a1, char *a2)
{
  v3 = a1;
  v4 = sub_219BF65B4();
  v5 = [v4 searchController];

  if (v3)
  {
    if (v5)
    {
      v6 = [v5 searchBar];

      v7 = [v6 searchTextField];
      [v7 setEnabled_];
    }
  }

  else
  {
    if (v5)
    {
      v8 = [v5 searchBar];

      v9 = [v8 searchTextField];
      [v9 setEnabled_];
    }

    if ([a2 isEditing])
    {
      v10 = [a2 editButtonItem];
      v11 = [v10 target];

      if (v11)
      {
        v12 = [a2 editButtonItem];
        v13 = [v12 action];

        [v11 performSelector:v13 withObject:0];
        v14 = v11;
      }
    }

    sub_219BE8654();
  }

  v15 = [a2 editButtonItem];
  [v15 setEnabled_];

  v16 = *(*&a2[OBJC_IVAR____TtC7NewsUI223FollowingViewController_eventHandler] + 40);
  ObjectType = swift_getObjectType();
  return (*(v16 + 112))(ObjectType, v16);
}

double sub_2193FE334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void), uint64_t a8, uint64_t a9)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    a7();
    sub_219BEA744();
    swift_allocObject();

    sub_219BEA6C4();
    v13 = swift_allocObject();
    v13[2] = a3;
    v13[3] = &off_282A6FE78;
    v13[4] = a2;

    sub_219BEA6E4();

    sub_219BEA6D4();
    swift_unknownObjectRelease();
  }

  return result;
}

void *sub_2193FE478(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for EngagementAction(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  __swift_project_boxed_opaque_existential_1(a2 + 11, a2[14]);
  sub_218D2F4F4(a1, &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_219194CCC(&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  sub_219BDD154();

  v9 = __swift_project_boxed_opaque_existential_1(a2 + 6, a2[9]);
  __swift_project_boxed_opaque_existential_1((*v9 + 16), *(*v9 + 40));
  sub_218D2F5C8();
  result = sub_219BE1E34();
  if (v12)
  {
    sub_21875F93C(&v11, v13);
    __swift_project_boxed_opaque_existential_1(v13, v13[3]);
    sub_219BE6DC4();
    return __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2193FE62C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2193FE680(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2193FE62C(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_2193FE6EC()
{
  result = qword_27CC19ED8;
  if (!qword_27CC19ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC19ED8);
  }

  return result;
}

unint64_t sub_2193FE740()
{
  result = qword_27CC19EE0;
  if (!qword_27CC19EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC19EE0);
  }

  return result;
}

uint64_t sub_2193FE794(uint64_t a1)
{
  v3 = *(type metadata accessor for EngagementAction(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_218FF2358(a1, v4);
}

uint64_t sub_2193FE804(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2193FE88C(uint64_t a1)
{
  v2 = sub_2193FEB3C(&qword_280EC0D60, &unk_219C7AAA4);

  return MEMORY[0x282191938](a1, v2);
}

uint64_t sub_2193FE8E4(uint64_t a1)
{
  v3 = type metadata accessor for FeedPaywallType(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BE4034();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v1 + *(a1 + 36);
  v11 = type metadata accessor for FeedPaywallConfig(0);
  sub_218D1A978(v10 + *(v11 + 28), v5);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v7 + 104))(v9, *MEMORY[0x277D34EF0], v6);
  }

  else
  {
    sub_2186F6684(0);
    (*(v7 + 32))(v9, &v5[*(v12 + 48)], v6);
  }

  v13 = sub_219BE4014();
  (*(v7 + 8))(v9, v6);
  return v13;
}

uint64_t sub_2193FEB3C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PaywallMagazineFeedGroup(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2193FEB80@<X0>(uint64_t a1@<X8>)
{
  sub_2186E5960(0, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v22 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v22 - v9;
  v11 = sub_219BED9B4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BDC594();
  sub_219404DFC();
  sub_219BDC7D4();

  v15 = (*(v12 + 88))(v14, v11);
  if (v15 == *MEMORY[0x277D31C90])
  {
    sub_219BDB914();
    v16 = sub_219BDB954();
    v17 = *(v16 - 8);
    result = (*(v17 + 48))(v4, 1, v16);
    if (result != 1)
    {
      (*(v17 + 32))(a1, v4, v16);
      return (*(v17 + 56))(a1, 0, 1, v16);
    }

    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v15 == *MEMORY[0x277D31CD0])
  {
    sub_219BDB914();
    v16 = sub_219BDB954();
    v17 = *(v16 - 8);
    result = (*(v17 + 48))(v7, 1, v16);
    if (result != 1)
    {
      (*(v17 + 32))(a1, v7, v16);
      return (*(v17 + 56))(a1, 0, 1, v16);
    }

    goto LABEL_19;
  }

  if (v15 == *MEMORY[0x277D31CA0])
  {
    sub_219BDB914();
    v16 = sub_219BDB954();
    v17 = *(v16 - 8);
    result = (*(v17 + 48))(v10, 1, v16);
    if (result != 1)
    {
      (*(v17 + 32))(a1, v10, v16);
      return (*(v17 + 56))(a1, 0, 1, v16);
    }

LABEL_20:
    __break(1u);
    return result;
  }

  v19 = *MEMORY[0x277D31CA8];
  v20 = v15;
  v21 = sub_219BDB954();
  result = (*(*(v21 - 8) + 56))(a1, 1, 1, v21);
  if (v20 != v19 && v20 != *MEMORY[0x277D31CC0] && v20 != *MEMORY[0x277D31CC8] && v20 != *MEMORY[0x277D31CB0] && v20 != *MEMORY[0x277D31CB8])
  {
    return (*(v12 + 8))(v14, v11);
  }

  return result;
}

uint64_t sub_2193FF050(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  return MEMORY[0x2822009F8](sub_2193FF074, 0, 0);
}

uint64_t sub_2193FF074()
{
  if (qword_27CC08650 != -1)
  {
    swift_once();
  }

  v1 = sub_219BE5434();
  __swift_project_value_buffer(v1, qword_27CCD8C00);
  v2 = sub_219BE5414();
  v3 = sub_219BF6214();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2186C1000, v2, v3, "UserSegmentationDetailsService fetching details...", v4, 2u);
    MEMORY[0x21CECF960](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_2193FF1C8;
  v6 = v0[6];
  v7 = v0[5];

  return sub_2193FF400(v7, v6);
}

uint64_t sub_2193FF1C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[9] = a1;
  v5[10] = a2;
  v5[11] = a3;
  v5[12] = v3;

  if (v3)
  {
    v6 = v5[1];

    return v6();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_2193FF300, 0, 0);
  }
}

uint64_t sub_2193FF300()
{
  v1 = *(v0 + 96);
  sub_219BDAFF4();
  swift_allocObject();
  sub_219BDAFE4();
  sub_219404BC8();
  sub_219BDAFC4();
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);
  v4 = *(v0 + 72);
  if (v1)
  {
    sub_2186C6190(v4, v2);
  }

  else
  {
    v6 = *(v0 + 32);
    sub_2186C6190(v4, v2);

    *v6 = *(v0 + 16);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_2193FF400(uint64_t a1, uint64_t a2)
{
  v3[24] = a2;
  v3[25] = v2;
  v3[23] = a1;
  v4 = sub_219BED184();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  sub_219BDB024();
  v3[29] = swift_task_alloc();
  sub_2186E5960(0, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  v3[30] = swift_task_alloc();
  v5 = sub_219BDB954();
  v3[31] = v5;
  v3[32] = *(v5 - 8);
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2193FF5B4, 0, 0);
}

uint64_t sub_2193FF5B4()
{
  v1 = v0[31];
  v2 = v0[32];
  v3 = v0[30];
  sub_2193FEB80(v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_218838478(v0[30]);
    if (qword_27CC08650 != -1)
    {
      swift_once();
    }

    v4 = sub_219BE5434();
    __swift_project_value_buffer(v4, qword_27CCD8C00);
    v5 = sub_219BE5414();
    v6 = sub_219BF61F4();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_2186C1000, v5, v6, "UserSegmentationDetailsService fetchUserSegmentationDetails error: Invalid URL", v7, 2u);
      MEMORY[0x21CECF960](v7, -1, -1);
    }

    sub_219404C1C();
    swift_allocError();
    *v8 = 0;
    swift_willThrow();

    v18 = v0[1];

    return v18();
  }

  else
  {
    v10 = v0[33];
    v9 = v0[34];
    v11 = v0[31];
    v12 = v0[32];
    v13 = v0[30];
    v15 = v0[23];
    v14 = v0[24];
    sub_219BDB874();
    v16 = *(v12 + 8);
    v0[35] = v16;
    v0[36] = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v16(v13, v11);
    (*(v12 + 32))(v9, v10, v11);
    v0[21] = v15;
    v0[22] = v14;
    sub_219BDB084();
    swift_allocObject();

    sub_219BDB074();
    sub_219BDB014();
    sub_219BDB034();
    sub_219404C70();
    v0[37] = sub_219BDB064();
    v0[38] = v17;
    v21 = v0[27];
    v20 = v0[28];
    v22 = v0[25];
    v23 = v0[26];

    v36 = *(v22 + 16);
    v24 = sub_219BDB854();
    v0[39] = v24;
    sub_219404190();
    sub_219404DAC(0, &qword_280E8EE20, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    v25 = sub_219BF5204();
    v0[40] = v25;

    v26 = *MEMORY[0x277D313C0];
    v0[41] = *MEMORY[0x277D313C0];
    v35 = v26;
    v27 = sub_219BDB9E4();
    v28 = *MEMORY[0x277D313A8];
    v0[42] = v27;
    v0[43] = v28;
    v29 = *MEMORY[0x277CCA798];
    sub_2186C6148(0, &qword_280E8E3B0, 0x277D85C78);
    (*(v21 + 104))(v20, *MEMORY[0x277D851B8], v23);
    v30 = v28;
    v31 = sub_219BF66E4();
    v0[44] = v31;
    (*(v21 + 8))(v20, v23);
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_2193FFC08;
    v32 = swift_continuation_init();
    sub_219404CC4(0);
    v0[17] = v33;
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_2193FFFE4;
    v0[13] = &block_descriptor_125;
    v0[14] = v32;
    LODWORD(v34) = 0;
    [v36 performAuthenticatedHTTPRequestWithURL:v24 valuesByHTTPHeaderField:v25 method:v35 data:v27 contentType:v30 priority:1 reauthenticateIfNeeded:COERCE_DOUBLE(v29) networkEventType:v34 callbackQueue:v31 completion:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }
}

uint64_t sub_2193FFC08()
{
  v1 = *(*v0 + 48);
  *(*v0 + 360) = v1;
  if (v1)
  {
    v2 = sub_2193FFED0;
  }

  else
  {
    v2 = sub_2193FFD18;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2193FFD18()
{
  v1 = *(v0 + 344);
  v3 = *(v0 + 328);
  v2 = *(v0 + 336);
  v5 = *(v0 + 312);
  v4 = *(v0 + 320);
  v16 = *(v0 + 152);
  v17 = *(v0 + 144);
  v15 = *(v0 + 160);

  if (qword_27CC08650 != -1)
  {
    swift_once();
  }

  v6 = sub_219BE5434();
  __swift_project_value_buffer(v6, qword_27CCD8C00);
  v7 = sub_219BE5414();
  v8 = sub_219BF6214();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_2186C1000, v7, v8, "UserSegmentationDetailsService received details response...", v9, 2u);
    MEMORY[0x21CECF960](v9, -1, -1);
  }

  v10 = *(v0 + 280);
  v11 = *(v0 + 272);
  v12 = *(v0 + 248);
  sub_2186C6190(*(v0 + 296), *(v0 + 304));

  v10(v11, v12);

  v13 = *(v0 + 8);

  return v13(v17, v16, v15);
}

uint64_t sub_2193FFED0(uint64_t a1)
{
  v2 = v1[44];
  v3 = v1[43];
  v11 = v1[42];
  v12 = v1[41];
  v4 = v1[38];
  v13 = v1[40];
  v14 = v1[39];
  v5 = v1[37];
  v6 = v1[34];
  v7 = v1[35];
  v8 = v1[31];
  swift_willThrow();
  sub_2186C6190(v5, v4);
  v7(v6, v8);

  v9 = v1[1];

  return v9();
}

uint64_t sub_2193FFFE4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a4)
  {
    sub_218A450F0();
    v8 = swift_allocError();
    *v9 = a4;
    v10 = a4;

    return MEMORY[0x282200958](v7, v8);
  }

  else
  {
    v11 = a2;
    v12 = a3;
    v13 = sub_219BDBA04();
    v15 = v14;

    if (v12)
    {
      v17 = *(*(v7 + 64) + 40);
      *v17 = v13;
      v17[1] = v15;
      v17[2] = v12;
      v16 = v7;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200950](v16);
  }
}

uint64_t sub_2194000E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2187608D4;

  return sub_2193FF050(a1, a2, a3);
}

uint64_t sub_219400198(uint64_t a1)
{
  v2 = sub_219400444();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2194001D4(uint64_t a1)
{
  v2 = sub_219400444();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UserSegmentationDetails.Request.encode(to:)(void *a1)
{
  sub_2194036D4(0, &qword_27CC19EF0, sub_219400444, &type metadata for UserSegmentationDetails.Request.CodingKeys, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v12 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219400444();

  sub_219BF7B44();
  v15 = v8;
  v14 = 0;
  sub_219404DAC(0, &unk_280E8ED80, MEMORY[0x277D83B88], MEMORY[0x277D83940]);
  sub_219400748(&qword_27CC19F08, MEMORY[0x277D83B90], MEMORY[0x277D83948]);
  v9 = v13;
  sub_219BF7834();

  if (!v9)
  {
    v15 = v12;
    v14 = 1;
    sub_219BF7834();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_219400444()
{
  result = qword_27CC19EF8;
  if (!qword_27CC19EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC19EF8);
  }

  return result;
}

void UserSegmentationDetails.Request.init(from:)(void *a1@<X0>, void *a2@<X8>)
{
  v14 = a2;
  sub_2194036D4(0, &qword_27CC19F10, sub_219400444, &type metadata for UserSegmentationDetails.Request.CodingKeys, MEMORY[0x277D844C8]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219400444();
  sub_219BF7B34();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v9 = v6;
    v10 = v14;
    sub_219404DAC(0, &unk_280E8ED80, MEMORY[0x277D83B88], MEMORY[0x277D83940]);
    v15 = 0;
    sub_219400748(&qword_27CC19F18, MEMORY[0x277D83BB8], MEMORY[0x277D83978]);
    sub_219BF7734();
    v13 = v16;
    v15 = 1;
    sub_219BF7734();
    (*(v9 + 8))(v8, v5);
    v11 = v16;
    *v10 = v13;
    v10[1] = v11;

    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

uint64_t sub_219400748(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_219404DAC(255, &unk_280E8ED80, MEMORY[0x277D83B88], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_21940080C(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x8000000219D1F950 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    v6 = 0;
  }

  else if (a1 == 0x6E656D7461657274 && a2 == 0xEC00000073644974)
  {

    v6 = 1;
  }

  else
  {
    v7 = sub_219BF78F4();

    if (v7)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }
  }

  *a3 = v6;
}

uint64_t sub_2194008F8(uint64_t a1)
{
  v2 = sub_219400BF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219400934(uint64_t a1)
{
  v2 = sub_219400BF4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UserSegmentationDetails.Response.encode(to:)(void *a1)
{
  sub_2194036D4(0, &qword_27CC19F20, sub_219400BF4, &type metadata for UserSegmentationDetails.Response.CodingKeys, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v12 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219400BF4();

  sub_219BF7B44();
  v15 = v8;
  v14 = 0;
  sub_219400C9C(0, &qword_27CC19F30, &type metadata for UserSegmentationDetails.UserSegmentSet);
  sub_219401040(&qword_27CC19F38, sub_219400C48, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
  v9 = v13;
  sub_219BF77E4();

  if (!v9)
  {
    v15 = v12;
    v14 = 1;
    sub_219400C9C(0, &qword_27CC19F48, &type metadata for UserSegmentationDetails.Treatment);
    sub_21940111C(&qword_27CC19F50, sub_219400CF4, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    sub_219BF77E4();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_219400BF4()
{
  result = qword_27CC19F28;
  if (!qword_27CC19F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC19F28);
  }

  return result;
}

unint64_t sub_219400C48()
{
  result = qword_27CC19F40;
  if (!qword_27CC19F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC19F40);
  }

  return result;
}

void sub_219400C9C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_219BF52A4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_219400CF4()
{
  result = qword_27CC19F58;
  if (!qword_27CC19F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC19F58);
  }

  return result;
}

void UserSegmentationDetails.Response.init(from:)(void *a1@<X0>, void *a2@<X8>)
{
  v13 = a2;
  sub_2194036D4(0, &qword_27CC19F60, sub_219400BF4, &type metadata for UserSegmentationDetails.Response.CodingKeys, MEMORY[0x277D844C8]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219400BF4();
  sub_219BF7B34();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v9 = v6;
    v10 = v13;
    sub_219400C9C(0, &qword_27CC19F30, &type metadata for UserSegmentationDetails.UserSegmentSet);
    v14 = 0;
    sub_219401040(&qword_27CC19F68, sub_2194010C8, MEMORY[0x277D83808], MEMORY[0x277D83528]);
    sub_219BF76E4();
    v11 = v15;
    sub_219400C9C(0, &qword_27CC19F48, &type metadata for UserSegmentationDetails.Treatment);
    v14 = 1;
    sub_21940111C(&qword_27CC19F78, sub_2194011A4, MEMORY[0x277D83808], MEMORY[0x277D83528]);
    sub_219BF76E4();
    (*(v9 + 8))(v8, v5);
    v12 = v15;
    *v10 = v11;
    v10[1] = v12;

    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

uint64_t sub_219401040(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_219400C9C(255, &qword_27CC19F30, &type metadata for UserSegmentationDetails.UserSegmentSet);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2194010C8()
{
  result = qword_27CC19F70;
  if (!qword_27CC19F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC19F70);
  }

  return result;
}

uint64_t sub_21940111C(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_219400C9C(255, &qword_27CC19F48, &type metadata for UserSegmentationDetails.Treatment);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2194011A4()
{
  result = qword_27CC19F80;
  if (!qword_27CC19F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC19F80);
  }

  return result;
}

uint64_t UserSegmentationDetails.UserSegmentSet.app.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t UserSegmentationDetails.UserSegmentSet.description.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t UserSegmentationDetails.UserSegmentSet.error.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_2194012C8()
{
  v1 = *v0;
  v2 = 7368801;
  v3 = 0x54746E656D676573;
  v4 = 0x7470697263736564;
  if (v1 != 3)
  {
    v4 = 0x726F727265;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x726F746972726574;
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

uint64_t sub_219401374@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2194045A0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21940139C(uint64_t a1)
{
  v2 = sub_219401728();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2194013D8(uint64_t a1)
{
  v2 = sub_219401728();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UserSegmentationDetails.UserSegmentSet.encode(to:)(void *a1)
{
  sub_2194036D4(0, &qword_27CC19F88, sub_219401728, &type metadata for UserSegmentationDetails.UserSegmentSet.CodingKeys, MEMORY[0x277D84538]);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v17 - v5;
  v7 = v1[2];
  v18 = v1[3];
  v19 = v7;
  v8 = v1[4];
  v17[2] = v1[5];
  v17[3] = v8;
  v9 = v1[7];
  v17[0] = v1[6];
  v17[1] = v9;
  v10 = a1[3];
  v11 = a1;
  v13 = v12;
  __swift_project_boxed_opaque_existential_1(v11, v10);
  sub_219401728();
  sub_219BF7B44();
  LOBYTE(v22) = 0;
  v14 = v20;
  sub_219BF7794();
  if (!v14)
  {
    v15 = v18;
    v22 = v19;
    v21 = 1;
    sub_219404DAC(0, &qword_280E8EE20, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    sub_2187C532C(&unk_280E8EE00, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    sub_219BF77E4();
    v22 = v15;
    v21 = 2;
    sub_219404DAC(0, &qword_27CC19F98, &type metadata for UserSegmentationDetails.SegmentTarget, MEMORY[0x277D83940]);
    sub_219401C50(&qword_27CC19FA0, sub_21940177C, MEMORY[0x277D83948]);
    sub_219BF77E4();
    LOBYTE(v22) = 3;
    sub_219BF7794();
    LOBYTE(v22) = 4;
    sub_219BF7794();
  }

  return (*(v4 + 8))(v6, v13);
}

unint64_t sub_219401728()
{
  result = qword_27CC19F90;
  if (!qword_27CC19F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC19F90);
  }

  return result;
}

unint64_t sub_21940177C()
{
  result = qword_27CC19FA8;
  if (!qword_27CC19FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC19FA8);
  }

  return result;
}

void UserSegmentationDetails.UserSegmentSet.init(from:)(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_2194036D4(0, &unk_27CC19FB0, sub_219401728, &type metadata for UserSegmentationDetails.UserSegmentSet.CodingKeys, MEMORY[0x277D844C8]);
  v26 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219401728();
  sub_219BF7B34();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v9 = v6;
    LOBYTE(v31[0]) = 0;
    v10 = sub_219BF7694();
    v12 = v11;
    sub_219404DAC(0, &qword_280E8EE20, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    LOBYTE(v27) = 1;
    sub_2187C532C(&qword_280E8EDD0, MEMORY[0x277D83808], MEMORY[0x277D83978]);
    sub_219BF76E4();
    v25 = v31[0];
    sub_219404DAC(0, &qword_27CC19F98, &type metadata for UserSegmentationDetails.SegmentTarget, MEMORY[0x277D83940]);
    LOBYTE(v27) = 2;
    sub_219401C50(&qword_27CC19FC0, sub_219401CE0, MEMORY[0x277D83978]);
    sub_219BF76E4();
    v23 = v31[0];
    LOBYTE(v31[0]) = 3;
    v22 = sub_219BF7694();
    v24 = v13;
    v32 = 4;
    v14 = sub_219BF7694();
    v15 = v8;
    v17 = v16;
    (*(v9 + 8))(v15, v26);
    *&v27 = v10;
    *(&v27 + 1) = v12;
    v19 = v24;
    v18 = v25;
    *&v28 = v25;
    *(&v28 + 1) = v23;
    *&v29 = v22;
    *(&v29 + 1) = v24;
    *&v30 = v14;
    *(&v30 + 1) = v17;
    v20 = v28;
    *a2 = v27;
    a2[1] = v20;
    v21 = v30;
    a2[2] = v29;
    a2[3] = v21;
    sub_219401D34(&v27, v31);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v31[0] = v10;
    v31[1] = v12;
    v31[2] = v18;
    v31[3] = v23;
    v31[4] = v22;
    v31[5] = v19;
    v31[6] = v14;
    v31[7] = v17;
    sub_219401D6C(v31);
  }
}

uint64_t sub_219401C50(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_219404DAC(255, &qword_27CC19F98, &type metadata for UserSegmentationDetails.SegmentTarget, MEMORY[0x277D83940]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_219401CE0()
{
  result = qword_27CC19FC8;
  if (!qword_27CC19FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC19FC8);
  }

  return result;
}

uint64_t UserSegmentationDetails.SegmentTarget.name.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t UserSegmentationDetails.SegmentTarget.description.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t static UserSegmentationDetails.SegmentTarget.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[3];
  v3 = a1[4];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a1[1] == a2[1] && a1[2] == a2[2];
  if (!v6 && (sub_219BF78F4() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  return sub_219BF78F4();
}

uint64_t sub_219401EE8()
{
  v1 = 1701667182;
  if (*v0 != 1)
  {
    v1 = 0x7470697263736564;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_219401F38@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21940475C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_219401F60(uint64_t a1)
{
  v2 = sub_2194021A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219401F9C(uint64_t a1)
{
  v2 = sub_2194021A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UserSegmentationDetails.SegmentTarget.encode(to:)(void *a1)
{
  sub_2194036D4(0, &qword_27CC19FD0, sub_2194021A0, &type metadata for UserSegmentationDetails.SegmentTarget.CodingKeys, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v12 - v6;
  v8 = v1[1];
  v9 = v1[3];
  v12[3] = v1[2];
  v12[4] = v8;
  v12[1] = v1[4];
  v12[2] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2194021A0();
  sub_219BF7B44();
  v15 = 0;
  v10 = v12[5];
  sub_219BF7824();
  if (!v10)
  {
    v14 = 1;
    sub_219BF77F4();
    v13 = 2;
    sub_219BF77F4();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_2194021A0()
{
  result = qword_27CC19FD8;
  if (!qword_27CC19FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC19FD8);
  }

  return result;
}

uint64_t UserSegmentationDetails.SegmentTarget.hash(into:)(uint64_t a1)
{
  MEMORY[0x21CECE850](*v1);
  sub_219BF5524();

  return sub_219BF5524();
}

uint64_t UserSegmentationDetails.SegmentTarget.hashValue.getter()
{
  v1 = *v0;
  sub_219BF7AA4();
  MEMORY[0x21CECE850](v1);
  sub_219BF5524();
  sub_219BF5524();
  return sub_219BF7AE4();
}

void UserSegmentationDetails.SegmentTarget.init(from:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v24 = a2;
  sub_2194036D4(0, &qword_27CC19FE0, sub_2194021A0, &type metadata for UserSegmentationDetails.SegmentTarget.CodingKeys, MEMORY[0x277D844C8]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v21 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2194021A0();
  sub_219BF7B34();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v9 = v6;
    v10 = v24;
    v27 = 0;
    v11 = sub_219BF7724();
    v26 = 1;
    v12 = sub_219BF76F4();
    v14 = v13;
    v23 = v12;
    v25 = 2;
    v15 = sub_219BF76F4();
    v17 = v16;
    v18 = *(v9 + 8);
    v22 = v15;
    v18(v8, v5);
    v19 = v22;
    v20 = v23;
    *v10 = v11;
    v10[1] = v20;
    v10[2] = v14;
    v10[3] = v19;
    v10[4] = v17;

    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

uint64_t sub_219402598()
{
  v1 = *v0;
  sub_219BF7AA4();
  MEMORY[0x21CECE850](v1);
  sub_219BF5524();
  sub_219BF5524();
  return sub_219BF7AE4();
}

uint64_t sub_219402618(uint64_t a1)
{
  MEMORY[0x21CECE850](*v1);
  sub_219BF5524();

  return sub_219BF5524();
}

uint64_t sub_219402688(uint64_t a1)
{
  v2 = *v1;
  sub_219BF7AA4();
  MEMORY[0x21CECE850](v2);
  sub_219BF5524();
  sub_219BF5524();
  return sub_219BF7AE4();
}

uint64_t sub_219402704(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[3];
  v3 = a1[4];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a1[1] == a2[1] && a1[2] == a2[2];
  if (!v6 && (sub_219BF78F4() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  return sub_219BF78F4();
}

uint64_t UserSegmentationDetails.Treatment.treatmentName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t UserSegmentationDetails.Treatment.experimentId.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t UserSegmentationDetails.Treatment.experimentName.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t UserSegmentationDetails.Treatment.experimentDescription.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t UserSegmentationDetails.Treatment.experimentGroupingId.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t UserSegmentationDetails.Treatment.app.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t UserSegmentationDetails.Treatment.error.getter()
{
  v1 = *(v0 + 128);

  return v1;
}

uint64_t sub_219402924(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x53746E656D676573;
    v6 = 0x54746E656D676573;
    if (a1 != 8)
    {
      v6 = 0x726F727265;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 7368801;
    if (a1 != 5)
    {
      v7 = 0x726F746972726574;
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
    v1 = 0x6E656D7461657274;
    v2 = 0x656D697265707865;
    v3 = 0xD000000000000015;
    if (a1 != 3)
    {
      v3 = 0xD000000000000014;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x656D697265707865;
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

uint64_t sub_219402AA0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_219404870(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_219402AC8(uint64_t a1)
{
  v2 = sub_219402F28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219402B04(uint64_t a1)
{
  v2 = sub_219402F28();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UserSegmentationDetails.Treatment.encode(to:)(void *a1)
{
  sub_2194036D4(0, &qword_27CC19FE8, sub_219402F28, &type metadata for UserSegmentationDetails.Treatment.CodingKeys, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v18 - v6;
  v8 = *(v1 + 16);
  v31 = *(v1 + 24);
  v32 = v8;
  v9 = *(v1 + 32);
  v29 = *(v1 + 40);
  v30 = v9;
  v10 = *(v1 + 48);
  v27 = *(v1 + 56);
  v28 = v10;
  v11 = *(v1 + 64);
  v25 = *(v1 + 72);
  v26 = v11;
  v12 = *(v1 + 88);
  v23 = *(v1 + 80);
  v24 = v12;
  v13 = *(v1 + 104);
  v22 = *(v1 + 96);
  v21 = *(v1 + 112);
  v14 = *(v1 + 128);
  v19 = *(v1 + 120);
  v20 = v13;
  v15 = *(v1 + 136);
  v18[0] = v14;
  v18[1] = v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219402F28();
  sub_219BF7B44();
  LOBYTE(v35) = 0;
  v16 = v33;
  sub_219BF7794();
  if (!v16)
  {
    LOBYTE(v35) = 1;
    sub_219BF7794();
    LOBYTE(v35) = 2;
    sub_219BF7794();
    LOBYTE(v35) = 3;
    sub_219BF7794();
    LOBYTE(v35) = 4;
    sub_219BF7794();
    LOBYTE(v35) = 5;
    sub_219BF7794();
    v35 = v22;
    v34 = 6;
    sub_219404DAC(0, &qword_280E8EE20, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    sub_2187C532C(&unk_280E8EE00, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    sub_219BF77E4();
    LOBYTE(v35) = 7;
    sub_219BF77C4();
    v35 = v19;
    v34 = 8;
    sub_219404DAC(0, &qword_27CC19F98, &type metadata for UserSegmentationDetails.SegmentTarget, MEMORY[0x277D83940]);
    sub_219401C50(&qword_27CC19FA0, sub_21940177C, MEMORY[0x277D83948]);
    sub_219BF77E4();
    LOBYTE(v35) = 9;
    sub_219BF7794();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_219402F28()
{
  result = qword_27CC19FF0;
  if (!qword_27CC19FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC19FF0);
  }

  return result;
}

void UserSegmentationDetails.Treatment.init(from:)(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_2194036D4(0, &qword_27CC19FF8, sub_219402F28, &type metadata for UserSegmentationDetails.Treatment.CodingKeys, MEMORY[0x277D844C8]);
  v60 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v42 - v7;
  v9 = a1[3];
  v79 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_219402F28();
  sub_219BF7B34();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v79);
  }

  else
  {
    v10 = v6;
    LOBYTE(v70[0]) = 0;
    v11 = v60;
    v12 = sub_219BF7694();
    v14 = v13;
    v58 = v12;
    LOBYTE(v70[0]) = 1;
    v15 = sub_219BF7694();
    v59 = v16;
    v54 = v15;
    LOBYTE(v70[0]) = 2;
    v53 = sub_219BF7694();
    v57 = v17;
    LOBYTE(v70[0]) = 3;
    v52 = sub_219BF7694();
    v56 = v18;
    LOBYTE(v70[0]) = 4;
    v51 = sub_219BF7694();
    v55 = v19;
    LOBYTE(v70[0]) = 5;
    v49 = sub_219BF7694();
    v21 = v20;
    sub_219404DAC(0, &qword_280E8EE20, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    LOBYTE(v61) = 6;
    sub_2187C532C(&qword_280E8EDD0, MEMORY[0x277D83808], MEMORY[0x277D83978]);
    sub_219BF76E4();
    v47 = 0;
    v48 = v70[0];
    LOBYTE(v70[0]) = 7;
    v22 = sub_219BF76C4();
    v50 = 0;
    v46 = v22;
    v78 = v23 & 1;
    sub_219404DAC(0, &qword_27CC19F98, &type metadata for UserSegmentationDetails.SegmentTarget, MEMORY[0x277D83940]);
    LOBYTE(v61) = 8;
    sub_219401C50(&qword_27CC19FC0, sub_219401CE0, MEMORY[0x277D83978]);
    v24 = v50;
    sub_219BF76E4();
    v50 = v24;
    if (v24)
    {
      (*(v10 + 8))(v8, v11);
      __swift_destroy_boxed_opaque_existential_1(v79);
      v25 = v47;

      if (!v25)
      {
      }
    }

    else
    {
      v45 = v70[0];
      v76 = 9;
      v26 = sub_219BF7694();
      v50 = 0;
      v27 = v26;
      v29 = v28;
      (*(v10 + 8))(v8, v60);
      v30 = v58;
      v31 = v59;
      *&v61 = v58;
      *(&v61 + 1) = v14;
      v43 = v21;
      v44 = v14;
      *&v62 = v54;
      *(&v62 + 1) = v59;
      *&v63 = v53;
      *(&v63 + 1) = v57;
      *&v64 = v52;
      *(&v64 + 1) = v56;
      *&v65 = v51;
      *(&v65 + 1) = v55;
      *&v66 = v49;
      *(&v66 + 1) = v21;
      v32 = v48;
      v33 = v46;
      *&v67 = v48;
      *(&v67 + 1) = v46;
      LODWORD(v60) = v78;
      LOBYTE(v68) = v78;
      *(&v68 + 1) = *v77;
      DWORD1(v68) = *&v77[3];
      v34 = v45;
      *(&v68 + 1) = v45;
      *&v69 = v27;
      *(&v69 + 1) = v29;
      v35 = v61;
      v36 = v62;
      v37 = v64;
      a2[2] = v63;
      a2[3] = v37;
      *a2 = v35;
      a2[1] = v36;
      v38 = v65;
      v39 = v66;
      v40 = v69;
      v41 = v67;
      a2[7] = v68;
      a2[8] = v40;
      a2[5] = v39;
      a2[6] = v41;
      a2[4] = v38;
      sub_21940373C(&v61, v70);
      __swift_destroy_boxed_opaque_existential_1(v79);
      v70[0] = v30;
      v70[1] = v44;
      v70[2] = v54;
      v70[3] = v31;
      v70[4] = v53;
      v70[5] = v57;
      v70[6] = v52;
      v70[7] = v56;
      v70[8] = v51;
      v70[9] = v55;
      v70[10] = v49;
      v70[11] = v43;
      v70[12] = v32;
      v70[13] = v33;
      v71 = v60;
      *v72 = *v77;
      *&v72[3] = *&v77[3];
      v73 = v34;
      v74 = v27;
      v75 = v29;
      sub_219403774(v70);
    }
  }
}

void sub_2194036D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_2194037A8()
{
  result = qword_27CC1A000;
  if (!qword_27CC1A000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1A000);
  }

  return result;
}

uint64_t dispatch thunk of UserSegmentationDetailsServiceType.fetchUserSegmentationDetails(userSegmentSetIds:treatmentIds:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 8) + **(a5 + 8));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_2187608D4;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t sub_2194039C4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_219403A20(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_219403A94(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_219403ADC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_219403B34(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 144))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_219403B90(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 144) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 144) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_219403C6C()
{
  result = qword_27CC1A010;
  if (!qword_27CC1A010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1A010);
  }

  return result;
}

unint64_t sub_219403CC4()
{
  result = qword_27CC1A018;
  if (!qword_27CC1A018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1A018);
  }

  return result;
}

unint64_t sub_219403D1C()
{
  result = qword_27CC1A020;
  if (!qword_27CC1A020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1A020);
  }

  return result;
}

unint64_t sub_219403D74()
{
  result = qword_27CC1A028;
  if (!qword_27CC1A028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1A028);
  }

  return result;
}

unint64_t sub_219403DCC()
{
  result = qword_27CC1A030;
  if (!qword_27CC1A030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1A030);
  }

  return result;
}

unint64_t sub_219403E24()
{
  result = qword_27CC1A038;
  if (!qword_27CC1A038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1A038);
  }

  return result;
}

unint64_t sub_219403E7C()
{
  result = qword_27CC1A040;
  if (!qword_27CC1A040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1A040);
  }

  return result;
}

unint64_t sub_219403ED4()
{
  result = qword_27CC1A048;
  if (!qword_27CC1A048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1A048);
  }

  return result;
}

unint64_t sub_219403F2C()
{
  result = qword_27CC1A050;
  if (!qword_27CC1A050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1A050);
  }

  return result;
}

unint64_t sub_219403F84()
{
  result = qword_27CC1A058;
  if (!qword_27CC1A058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1A058);
  }

  return result;
}

unint64_t sub_219403FDC()
{
  result = qword_27CC1A060;
  if (!qword_27CC1A060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1A060);
  }

  return result;
}

unint64_t sub_219404034()
{
  result = qword_27CC1A068;
  if (!qword_27CC1A068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1A068);
  }

  return result;
}

unint64_t sub_21940408C()
{
  result = qword_27CC1A070;
  if (!qword_27CC1A070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1A070);
  }

  return result;
}

unint64_t sub_2194040E4()
{
  result = qword_27CC1A078;
  if (!qword_27CC1A078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1A078);
  }

  return result;
}

unint64_t sub_21940413C()
{
  result = qword_27CC1A080;
  if (!qword_27CC1A080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1A080);
  }

  return result;
}

unint64_t sub_219404190()
{
  v32[0] = sub_219BDBD64();
  v0 = *(v32[0] - 8);
  MEMORY[0x28223BE20](v32[0]);
  v2 = v32 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E5960(0, &qword_280E8B6D0, sub_2191CD3C4, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C0D560;
  *(inited + 32) = 0x414E2D5050412D58;
  v32[1] = inited + 32;
  *(inited + 40) = 0xEA0000000000454DLL;
  sub_219404DAC(0, &qword_280E8B750, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  v33 = xmmword_219C09BA0;
  *(v4 + 16) = xmmword_219C09BA0;
  v5 = [objc_opt_self() mainBundle];
  v6 = [v5 bundleIdentifier];

  if (v6)
  {
    v7 = sub_219BF5414();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 32) = v7;
  *(v4 + 40) = v9;
  *(inited + 48) = v4;
  strcpy((inited + 56), "X-DEVICE-NAME");
  *(inited + 70) = -4864;
  v10 = swift_allocObject();
  *(v10 + 16) = v33;
  v11 = objc_opt_self();
  v12 = [v11 currentDevice];
  v13 = [v12 model];

  v14 = sub_219BF5414();
  v16 = v15;

  *(v10 + 32) = v14;
  *(v10 + 40) = v16;
  *(inited + 72) = v10;
  *(inited + 80) = 0xD000000000000010;
  *(inited + 88) = 0x8000000219D10770;
  v17 = swift_allocObject();
  *(v17 + 16) = v33;
  v18 = [v11 currentDevice];
  v19 = [v18 systemVersion];

  v20 = sub_219BF5414();
  v22 = v21;

  *(v17 + 32) = v20;
  *(v17 + 40) = v22;
  *(inited + 96) = v17;
  strcpy((inited + 104), "X-REQUEST-ID");
  *(inited + 117) = 0;
  *(inited + 118) = -5120;
  v23 = swift_allocObject();
  *(v23 + 16) = v33;
  sub_219BDBD54();
  v24 = sub_219BDBD44();
  v26 = v25;
  (*(v0 + 8))(v2, v32[0]);
  *(v23 + 32) = v24;
  *(v23 + 40) = v26;
  *(inited + 120) = v23;
  *(inited + 128) = sub_219BF5414();
  *(inited + 136) = v27;
  v28 = swift_allocObject();
  *(v28 + 16) = v33;
  *(v28 + 32) = sub_219BF5414();
  *(v28 + 40) = v29;
  *(inited + 144) = v28;
  v30 = sub_2194B11A4(inited);
  swift_setDeallocating();
  sub_2191CD3C4(0);
  swift_arrayDestroy();
  return v30;
}

uint64_t sub_2194045A0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7368801 && a2 == 0xE300000000000000;
  if (v3 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726F746972726574 && a2 == 0xEB00000000736569 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x54746E656D676573 && a2 == 0xED00007465677261 || (sub_219BF78F4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69 || (sub_219BF78F4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x726F727265 && a2 == 0xE500000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_219BF78F4();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_21940475C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69)
  {

    return 2;
  }

  else
  {
    v6 = sub_219BF78F4();

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

uint64_t sub_219404870(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E656D7461657274 && a2 == 0xED0000656D614E74;
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D697265707865 && a2 == 0xEC0000006449746ELL || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656D697265707865 && a2 == 0xEE00656D614E746ELL || (sub_219BF78F4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000219D1F970 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000219D1F990 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 7368801 && a2 == 0xE300000000000000 || (sub_219BF78F4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x726F746972726574 && a2 == 0xEB00000000736569 || (sub_219BF78F4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x53746E656D676573 && a2 == 0xEA00000000007465 || (sub_219BF78F4() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x54746E656D676573 && a2 == 0xED00007465677261 || (sub_219BF78F4() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x726F727265 && a2 == 0xE500000000000000)
  {

    return 9;
  }

  else
  {
    v6 = sub_219BF78F4();

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

unint64_t sub_219404BC8()
{
  result = qword_27CC1A088;
  if (!qword_27CC1A088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1A088);
  }

  return result;
}

unint64_t sub_219404C1C()
{
  result = qword_27CC1A098;
  if (!qword_27CC1A098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1A098);
  }

  return result;
}

unint64_t sub_219404C70()
{
  result = qword_27CC1A0A0;
  if (!qword_27CC1A0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1A0A0);
  }

  return result;
}

void sub_219404CC4(uint64_t a1)
{
  if (!qword_27CC1A0B0)
  {
    sub_219404D34(255);
    sub_218A450F0();
    v1 = sub_219BF5C44();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1A0B0);
    }
  }
}

void sub_219404D34(uint64_t a1)
{
  if (!qword_27CC1A0B8)
  {
    sub_2186C6148(255, &qword_27CC1A0C0, 0x277CCAA40);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC1A0B8);
    }
  }
}

void sub_219404DAC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_219404DFC()
{
  result = qword_27CC1A0C8;
  if (!qword_27CC1A0C8)
  {
    type metadata accessor for UserSegmentationDetailsService();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1A0C8);
  }

  return result;
}

unint64_t sub_219404E64()
{
  result = qword_27CC1A0D0;
  if (!qword_27CC1A0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1A0D0);
  }

  return result;
}

uint64_t sub_219404EC0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_218718690(a1, v9);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for TagFeedViewerViewControllerFactory();
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_219404FB0(0);
    result = sub_219BE1E24();
    if (result)
    {
      v6 = result;
      v7 = type metadata accessor for TagFeedAsyncModule();
      v8 = swift_allocObject();
      result = sub_21875F93C(v9, v8 + 16);
      *(v8 + 56) = v5;
      *(v8 + 64) = v6;
      a2[3] = v7;
      a2[4] = &off_282A70690;
      *a2 = v8;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_219404FB0(uint64_t a1)
{
  if (!qword_280E90710)
  {
    sub_2186F7720();
    v1 = sub_219BF1B94();
    if (!v2)
    {
      atomic_store(v1, &qword_280E90710);
    }
  }
}

void *sub_21940500C(_BYTE *a1)
{
  v3 = type metadata accessor for TagFeedAsyncConfig(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2194052A8(a1, v5);
  v6 = v1[7];
  v7 = v1[8];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  sub_21940530C();
  result = sub_219BE1E34();
  v9 = v23;
  if (v23)
  {
    v10 = v24;
    __swift_project_boxed_opaque_existential_1(v22, v23);
    v11 = (*(v10 + 16))(v9, v10);
    v12 = type metadata accessor for TagFeedAsyncViewController(0);
    v13 = objc_allocWithZone(v12);
    *&v13[OBJC_IVAR____TtC7NewsUI226TagFeedAsyncViewController_promiseViewController] = 0;
    v14 = OBJC_IVAR____TtC7NewsUI226TagFeedAsyncViewController_coverViewManager;
    sub_219BE6C14();
    swift_allocObject();
    *&v13[v14] = sub_219BE6C04();
    sub_2194052A8(v5, &v13[OBJC_IVAR____TtC7NewsUI226TagFeedAsyncViewController_config]);
    *&v13[OBJC_IVAR____TtC7NewsUI226TagFeedAsyncViewController_viewControllerFactory] = v6;
    *&v13[OBJC_IVAR____TtC7NewsUI226TagFeedAsyncViewController_offlineManager] = v7;
    v15 = *(v3 + 36);
    v16 = OBJC_IVAR____TtC7NewsUI226TagFeedAsyncViewController_logger;
    v17 = sub_219BE5434();
    (*(*(v17 - 8) + 16))(&v13[v16], &v5[v15], v17);
    *&v13[OBJC_IVAR____TtC7NewsUI226TagFeedAsyncViewController_offlineBannerCoordinator] = v11;
    v21.receiver = v13;
    v21.super_class = v12;

    v18 = v7;
    v19 = objc_msgSendSuper2(&v21, sel_initWithNibName_bundle_, 0, 0);
    sub_219405370(v5);
    __swift_destroy_boxed_opaque_existential_1(v22);
    if (*a1 == 1)
    {
      sub_219BED0C4();
    }

    return v19;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21940523C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_2194052A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TagFeedAsyncConfig(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21940530C()
{
  result = qword_280EAF980;
  if (!qword_280EAF980)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280EAF980);
  }

  return result;
}

uint64_t sub_219405370(uint64_t a1)
{
  v2 = type metadata accessor for TagFeedAsyncConfig(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2194053CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = sub_219BE5414();
    v6 = sub_219BF6214();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v12 = v8;
      *v7 = 136446210;
      if (*(v4 + OBJC_IVAR____TtC7NewsUI226TagFeedAsyncViewController_config))
      {
        if (*(v4 + OBJC_IVAR____TtC7NewsUI226TagFeedAsyncViewController_config) == 1)
        {
          v9 = 0xE800000000000000;
          v10 = 0x7374726F7053794DLL;
        }

        else
        {
          v9 = 0xE700000000000000;
          v10 = 0x627548646F6F46;
        }
      }

      else
      {
        v9 = 0xE900000000000062;
        v10 = 0x7548656C7A7A7550;
      }

      v11 = sub_2186D1058(v10, v9, &v12);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_2186C1000, v5, v6, "%{public}s parenting completed successfully", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x21CECF960](v8, -1, -1);
      MEMORY[0x21CECF960](v7, -1, -1);
    }
  }
}

void sub_219405568(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = sub_219BEB384();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BEB394();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (&v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218B0847C(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_219BF1584();
  v68 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v67 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v61 = v11;
    v62 = v9;
    v63 = v7;
    v64 = v8;
    v18 = OBJC_IVAR____TtC7NewsUI226TagFeedAsyncViewController_logger;
    v19 = Strong;
    v20 = a2;
    v60 = v18;
    v21 = sub_219BE5414();
    v22 = sub_219BF61F4();

    v23 = os_log_type_enabled(v21, v22);
    v66 = v19;
    if (v23)
    {
      v65 = v15;
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v69 = v26;
      *v24 = 136446466;
      v27 = v19[OBJC_IVAR____TtC7NewsUI226TagFeedAsyncViewController_config];
      v58 = v5;
      v59 = v4;
      v28 = v26;
      if (v27)
      {
        if (v27 == 1)
        {
          v29 = 0xE800000000000000;
          v30 = 0x7374726F7053794DLL;
        }

        else
        {
          v29 = 0xE700000000000000;
          v30 = 0x627548646F6F46;
        }
      }

      else
      {
        v30 = 0x7548656C7A7A7550;
        v29 = 0xE900000000000062;
      }

      v31 = sub_2186D1058(v30, v29, &v69);

      *(v24 + 4) = v31;
      *(v24 + 12) = 2112;
      v32 = a2;
      v33 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 14) = v33;
      *v25 = v33;
      _os_log_impl(&dword_2186C1000, v21, v22, "%{public}s parenting completed with error: %@", v24, 0x16u);
      sub_219406EDC(v25, sub_2189B3F3C);
      MEMORY[0x21CECF960](v25, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x21CECF960](v28, -1, -1);
      MEMORY[0x21CECF960](v24, -1, -1);

      v5 = v58;
      v4 = v59;
      v15 = v65;
      v19 = v66;
    }

    else
    {
    }

    v34 = OBJC_IVAR____TtC7NewsUI226TagFeedAsyncViewController_offlineManager;
    sub_219BF1B74();
    v35 = v68;
    if ((*(v68 + 48))(v14, 1, v15) == 1)
    {

      sub_219406EDC(v14, sub_218B0847C);
    }

    else
    {
      (*(v35 + 32))(v67, v14, v15);
      v36 = v19;
      v37 = sub_219BE5414();
      v38 = sub_219BF6214();

      v39 = os_log_type_enabled(v37, v38);
      v57 = v34;
      if (v39)
      {
        v65 = v15;
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v69 = v41;
        *v40 = 136315138;
        if (v36[OBJC_IVAR____TtC7NewsUI226TagFeedAsyncViewController_config])
        {
          v42 = v5;
          if (v36[OBJC_IVAR____TtC7NewsUI226TagFeedAsyncViewController_config] == 1)
          {
            v43 = 0xE800000000000000;
            v44 = 0x7374726F7053794DLL;
          }

          else
          {
            v43 = 0xE700000000000000;
            v44 = 0x627548646F6F46;
          }
        }

        else
        {
          v42 = v5;
          v44 = 0x7548656C7A7A7550;
          v43 = 0xE900000000000062;
        }

        v45 = sub_2186D1058(v44, v43, &v69);

        *(v40 + 4) = v45;
        _os_log_impl(&dword_2186C1000, v37, v38, "%s, displaying offline", v40, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v41);
        MEMORY[0x21CECF960](v41, -1, -1);
        MEMORY[0x21CECF960](v40, -1, -1);

        v5 = v42;
        v15 = v65;
      }

      else
      {
      }

      v46 = v67;
      v47 = sub_219BF1554();
      v65 = v36;
      v48 = v61;
      *v61 = v47;
      v48[1] = v49;
      v50 = sub_219BE5AA4();
      v51 = MEMORY[0x277D6D2E8];
      v48[5] = v50;
      v48[6] = v51;
      __swift_allocate_boxed_opaque_existential_1(v48 + 2);
      sub_219BE5A94();
      v48[7] = sub_219BF1534();
      v48[8] = v52;
      v53 = v62;
      v54 = v64;
      (*(v62 + 104))(v48, *MEMORY[0x277D6EC98], v64);
      v55 = v63;
      (*(v5 + 104))(v63, *MEMORY[0x277D6ECB0], v4);
      sub_219BE6BD4();
      (*(v5 + 8))(v55, v4);
      (*(v53 + 8))(v48, v54);
      swift_allocObject();
      v56 = v65;
      swift_unknownObjectWeakInit();

      (*(v68 + 8))(v46, v15);
    }
  }
}

void sub_219405C94(uint64_t a1, uint64_t a2)
{
  v3 = sub_219BEB384();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BEB394();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B0847C(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219406E78(a1, v13);
  v14 = sub_219BF1584();
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    sub_219406EDC(v13, sub_218B0847C);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v16 = Strong;
      v17 = sub_219BE5414();
      v18 = sub_219BF6214();

      if (os_log_type_enabled(v17, v18))
      {
        v29 = v18;
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        *v19 = 136446210;
        v21 = v16[OBJC_IVAR____TtC7NewsUI226TagFeedAsyncViewController_config];
        v30 = v4;
        v31 = v20;
        v28 = v20;
        if (v21)
        {
          if (v21 == 1)
          {
            v22 = 0xE800000000000000;
            v23 = 0x7374726F7053794DLL;
          }

          else
          {
            v22 = 0xE700000000000000;
            v23 = 0x627548646F6F46;
          }
        }

        else
        {
          v22 = 0xE900000000000062;
          v23 = 0x7548656C7A7A7550;
        }

        v24 = sub_2186D1058(v23, v22, &v31);

        *(v19 + 4) = v24;
        _os_log_impl(&dword_2186C1000, v17, v29, "%{public}s creating new promise view controller after coming back online", v19, 0xCu);
        v25 = v28;
        __swift_destroy_boxed_opaque_existential_1(v28);
        MEMORY[0x21CECF960](v25, -1, -1);
        MEMORY[0x21CECF960](v19, -1, -1);

        v4 = v30;
      }

      else
      {
      }

      v26 = *&v16[OBJC_IVAR____TtC7NewsUI226TagFeedAsyncViewController_offlineManager];

      (*(v8 + 104))(v10, *MEMORY[0x277D6EC88], v7);
      (*(v4 + 104))(v6, *MEMORY[0x277D6ECA8], v3);
      sub_219BE6BD4();
      (*(v4 + 8))(v6, v3);
      (*(v8 + 8))(v10, v7);
      sub_2194060E0();
      sub_2194061B0();
    }
  }

  else
  {
    sub_219406EDC(v13, sub_218B0847C);
  }
}

void sub_2194060E0()
{
  v1 = OBJC_IVAR____TtC7NewsUI226TagFeedAsyncViewController_promiseViewController;
  v2 = *(v0 + OBJC_IVAR____TtC7NewsUI226TagFeedAsyncViewController_promiseViewController);
  if (v2)
  {
    v3 = v2;
    [v3 willMoveToParentViewController_];
    [v3 removeFromParentViewController];
    v4 = [v3 view];
    if (v4)
    {
      v5 = v4;
      [v4 removeFromSuperview];

      [v3 didMoveToParentViewController_];
      v6 = *(v0 + v1);
      *(v0 + v1) = 0;
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_2194061B0()
{
  v1 = v0;
  v2 = sub_219BE7784();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = OBJC_IVAR____TtC7NewsUI226TagFeedAsyncViewController_promiseViewController;
  if (!*&v0[OBJC_IVAR____TtC7NewsUI226TagFeedAsyncViewController_promiseViewController])
  {
    swift_allocObject();
    swift_unknownObjectWeakInit();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_219BE7DC4();
    v4 = qword_280E92A48;

    if (v4 != -1)
    {
      swift_once();
    }

    v5 = sub_219BF01B4();
    v6 = __swift_project_value_buffer(v5, qword_280F61940);
    v28[3] = v5;
    v28[4] = sub_219406E20(&qword_280E91000, MEMORY[0x277D32BC8], MEMORY[0x277D32BC0]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v28);
    v8 = (*(*(v5 - 8) + 16))(boxed_opaque_existential_1, v6, v5);
    MEMORY[0x28223BE20](v8);
    sub_219BE7774();
    v9 = sub_219BE7D84();
    v10 = *&v0[v3];
    *&v0[v3] = v9;
    v11 = v9;

    v12 = v11;
    [v1 addChildViewController_];
    v13 = [v12 view];
    if (v13)
    {
      v14 = v13;
      v15 = [v1 view];
      if (v15)
      {
        v16 = v15;
        [v15 bounds];
        v18 = v17;
        v20 = v19;
        v22 = v21;
        v24 = v23;

        [v14 setFrame_];
        v25 = [v1 view];
        if (v25)
        {
          v26 = v25;
          v27 = [v12 view];

          if (v27)
          {
            [v26 addSubview_];

            [v12 didMoveToParentViewController_];
            return;
          }

LABEL_13:
          __break(1u);
          return;
        }

LABEL_12:
        __break(1u);
        goto LABEL_13;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_2194065FC()
{
  v1 = v0;
  v6.receiver = v0;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, sel_viewDidLoad);
  sub_219BE6BF4();
  sub_2194061B0();
  if ((sub_219BED0C4() & 1) != 0 && *(v0 + OBJC_IVAR____TtC7NewsUI226TagFeedAsyncViewController_config) == 1)
  {
    sub_219BE2CF4();
    v2 = sub_219406E20(&qword_280EB9E68, type metadata accessor for TagFeedAsyncViewController, &unk_219C7B668);
    sub_219BE8894();
    v3 = sub_219BE88A4();
    v3(v1, v2);
    sub_2188050C0();
    v4 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:v5 action:sel_bannerTapped];
    [*(v5 + qword_280EABEF0) addGestureRecognizer_];
  }
}

void sub_2194067B8()
{
  v14.receiver = v0;
  v14.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v14, sel_viewDidLayoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC7NewsUI226TagFeedAsyncViewController_promiseViewController];
  if (v1)
  {
    v2 = [v1 view];
    if (v2)
    {
      v3 = v2;
      v4 = [v0 view];
      if (v4)
      {
        v5 = v4;
        [v4 bounds];
        v7 = v6;
        v9 = v8;
        v11 = v10;
        v13 = v12;

        [v3 setFrame_];
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

uint64_t type metadata accessor for TagFeedAsyncViewController(uint64_t a1)
{
  result = qword_280EB9E58;
  if (!qword_280EB9E58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_219406A98(uint64_t a1)
{
  result = type metadata accessor for TagFeedAsyncConfig(319);
  if (v2 <= 0x3F)
  {
    result = sub_219BE5434();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

void sub_219406B8C(uint64_t a1@<X8>)
{
  v3 = *(*v1 + OBJC_IVAR____TtC7NewsUI226TagFeedAsyncViewController_promiseViewController);
  if (v3)
  {
    v7 = v3;
    sub_219BE7D64();
  }

  else
  {
    v4 = *MEMORY[0x277D6D230];
    v5 = sub_219BE57E4();
    v6 = *(*(v5 - 8) + 104);

    v6(a1, v4, v5);
  }
}

uint64_t sub_219406C54()
{
  v1 = *(*v0 + OBJC_IVAR____TtC7NewsUI226TagFeedAsyncViewController_config + 24);

  return v1;
}

uint64_t sub_219406CAC(uint64_t a1)
{
  sub_219BE2CF4();
  v1 = sub_219BE8854();

  return v1 & 1;
}

double sub_219406CFC(uint64_t a1)
{
  sub_219BE2CF4();
  sub_219BE8864();
  v2 = v1;

  return v2;
}

void sub_219406D54(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC7NewsUI226TagFeedAsyncViewController_promiseViewController);
  if (v2)
  {
    v3 = v2;
    sub_219BE7DA4();
  }
}

uint64_t sub_219406E20(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_219406E78(uint64_t a1, uint64_t a2)
{
  sub_218B0847C(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_219406EDC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 __swift_memcpy73_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_219406F84(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 73))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_219406FE0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void sub_21940708C(uint64_t a1@<X8>)
{
  v2 = v1;
  v34 = a1;
  v3 = type metadata accessor for LegacyAudioFeedGroupConfig(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = (&v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = MEMORY[0x277D32028];
  v7 = MEMORY[0x277D83D88];
  sub_2186DDD50(0, &qword_280E91B80, MEMORY[0x277D32028], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v31 - v9;
  v11 = MEMORY[0x277CC9578];
  sub_2186DDD50(0, &qword_280EE9C40, MEMORY[0x277CC9578], v7);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v31 - v13;
  sub_21872AEC8(v2, &v31 - v13, &qword_280EE9C40, v11);
  v15 = type metadata accessor for LegacyAudioFeedConfiguration(0);
  v16 = v15[6];
  v17 = (v2 + v15[5]);
  v18 = v17[1];
  v32 = *v17;
  v35 = *(v2 + v16);

  sub_2191EE1E4(v19);
  v20 = v35;
  v21 = *(v2 + v15[8]);
  v22 = v2 + v15[7];
  v23 = v33;
  sub_21872AEC8(v22, v10, &qword_280E91B80, v33);
  v31 = v14;
  v24 = v14;
  v25 = v34;
  sub_21872AEC8(v24, v34, &qword_280EE9C40, v11);
  v26 = (v25 + v15[5]);
  *v26 = v32;
  v26[1] = v18;
  *(v25 + v15[6]) = v20;
  *(v25 + v15[8]) = v21;
  v27 = v25 + v15[7];
  v32 = v10;
  sub_21872AEC8(v10, v27, &qword_280E91B80, v23);
  v28 = MEMORY[0x277D84F98];
  v35 = MEMORY[0x277D84F98];
  v29 = *(v20 + 16);

  if (v29)
  {
    v30 = 0;
    while (v30 < *(v20 + 16))
    {
      sub_21940AD20(v20 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v30, v6, type metadata accessor for LegacyAudioFeedGroupConfig);
      sub_219408F00(&v35, v6, v21);
      ++v30;
      sub_21940AD8C(v6, type metadata accessor for LegacyAudioFeedGroupConfig);
      if (v29 == v30)
      {
        v28 = v35;
        goto LABEL_6;
      }
    }

    __break(1u);

    sub_21940AD8C(v6, type metadata accessor for LegacyAudioFeedGroupConfig);

    __break(1u);
  }

  else
  {
LABEL_6:

    sub_2187109B4(v32, &qword_280E91B80, MEMORY[0x277D32028]);
    sub_2187109B4(v31, &qword_280EE9C40, MEMORY[0x277CC9578]);
    *(v25 + v15[9]) = v28;
  }
}

double sub_21940743C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = type metadata accessor for AudioFeedTrack.Configurables(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v4 + *(type metadata accessor for LegacyAudioFeedConfiguration(0) + 36));
  if (*(v12 + 16) && (v13 = sub_21870F700(a1, a2), (v14 & 1) != 0))
  {
    v15 = *(*(v12 + 56) + 16 * v13);

    v15(a3);

    sub_21940B2A4(v11, a4, type metadata accessor for AudioFeedTrack.Configurables);
  }

  else
  {
    *(a4 + 64) = 0;
    *(a4 + 32) = 0u;
    *(a4 + 48) = 0u;
    v17 = v9[7];
    v18 = sub_219BDBD34();
    (*(*(v18 - 8) + 56))(a4 + v17, 1, 1, v18);
    v19 = v9[9];
    v20 = sub_219BE7434();
    (*(*(v20 - 8) + 56))(a4 + v19, 1, 1, v20);
    *a4 = 0u;
    *(a4 + 16) = 0u;
    v21 = (a4 + v9[8]);
    result = 0.0;
    *v21 = xmmword_219C14A10;
    v21[1] = 0u;
    v21[2] = 0u;
    v21[3] = 0u;
    *(v21 + 57) = 0u;
  }

  return result;
}

uint64_t sub_219407600(void *a1)
{
  sub_21940B360(0, &qword_27CC1A120, sub_21940AC10, &type metadata for LegacyAudioFeedConfiguration.NotificationConfig.CodingKeys, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21940AC10();
  sub_219BF7B44();
  v14 = 0;
  sub_219BF7794();
  if (!v1)
  {
    v13 = 1;
    sub_219BF7794();
    v12 = 2;
    sub_219BF7794();
    v11 = 3;
    sub_219BF77B4();
    v10 = 4;
    sub_219BF77B4();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_2194077F4(uint64_t a1)
{
  if (*(v1 + 8))
  {
    sub_219BF7AC4();
    sub_219BF5524();
    if (*(v1 + 24))
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_219BF7AC4();
    if (*(v1 + 40))
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  sub_219BF7AC4();
  if (!*(v1 + 24))
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_219BF7AC4();
  sub_219BF5524();
  if (*(v1 + 40))
  {
LABEL_4:
    sub_219BF7AC4();
    sub_219BF5524();
    goto LABEL_8;
  }

LABEL_7:
  sub_219BF7AC4();
LABEL_8:
  if (*(v1 + 56) == 1)
  {
    sub_219BF7AC4();
  }

  else
  {
    v2 = *(v1 + 48);
    sub_219BF7AC4();
    if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }

    MEMORY[0x21CECE870](v3);
  }

  if (*(v1 + 72) == 1)
  {
    return sub_219BF7AC4();
  }

  v5 = *(v1 + 64);
  sub_219BF7AC4();
  if ((v5 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return MEMORY[0x21CECE870](v6);
}

uint64_t sub_219407924()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

double sub_2194079F4(uint64_t a1)
{
  sub_219BF5524();

  return result;
}

uint64_t sub_219407AB0(uint64_t a1)
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

unint64_t sub_219407B7C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21940A5FC(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_219407BAC(uint64_t *a1@<X8>)
{
  v2 = 0xEB00000000657461;
  v3 = 0x446873696C627570;
  v4 = 0xE600000000000000;
  v5 = 0x7370756F7267;
  if (*v1 != 2)
  {
    v5 = 0x617461646174656DLL;
    v4 = 0xE800000000000000;
  }

  if (*v1)
  {
    v3 = 0x63416F546C6C6163;
    v2 = 0xEC0000006E6F6974;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_219407C38()
{
  v1 = 0x446873696C627570;
  v2 = 0x7370756F7267;
  if (*v0 != 2)
  {
    v2 = 0x617461646174656DLL;
  }

  if (*v0)
  {
    v1 = 0x63416F546C6C6163;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_219407CC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21940A5FC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_219407CE8(uint64_t a1)
{
  v2 = sub_21940ACCC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219407D24(uint64_t a1)
{
  v2 = sub_21940ACCC();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_219407D74(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656C746974 && a2 == 0xE500000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_219BF78F4();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_219407DF8(uint64_t a1)
{
  v2 = sub_21940B30C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219407E34(uint64_t a1)
{
  v2 = sub_21940B30C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_219407E70@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v15 = a2;
  sub_21940B360(0, &qword_280E8CC20, sub_21940B30C, &type metadata for LegacyAudioFeedConfiguration.CallToAction.CodingKeys, MEMORY[0x277D844C8]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21940B30C();
  sub_219BF7B34();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = v15;
  v10 = sub_219BF7694();
  v12 = v11;
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *v9 = v10;
  v9[1] = v12;
  return result;
}

uint64_t sub_219408020(void *a1)
{
  sub_21940B360(0, &qword_27CC1A138, sub_21940B30C, &type metadata for LegacyAudioFeedConfiguration.CallToAction.CodingKeys, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21940B30C();
  sub_219BF7B44();
  sub_219BF7794();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_21940818C()
{
  result = qword_27CC1A108;
  if (!qword_27CC1A108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1A108);
  }

  return result;
}

unint64_t sub_21940822C()
{
  result = qword_27CC1A110;
  if (!qword_27CC1A110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1A110);
  }

  return result;
}

uint64_t sub_219408280()
{
  v1 = *v0;
  v2 = 0x656C746974;
  v3 = 2036625250;
  v4 = 0xD000000000000022;
  if (v1 != 3)
  {
    v4 = 0x65536F54656D6974;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x656C746974627573;
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

uint64_t sub_219408318@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21940A648(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_219408340(uint64_t a1)
{
  v2 = sub_21940AC10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21940837C(uint64_t a1)
{
  v2 = sub_21940AC10();

  return MEMORY[0x2821FE720](a1, v2);
}

__n128 sub_2194083B8@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_21940A804(a2, v6);
  if (!v2)
  {
    v5 = v7[0];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 57) = *(v7 + 9);
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

BOOL sub_21940841C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v7[2] = a1[2];
  v8[0] = v2;
  *(v8 + 9) = *(a1 + 57);
  v3 = a1[1];
  v7[0] = *a1;
  v7[1] = v3;
  v4 = a2[3];
  v9[2] = a2[2];
  v10[0] = v4;
  *(v10 + 9) = *(a2 + 57);
  v5 = a2[1];
  v9[0] = *a2;
  v9[1] = v5;
  return sub_21940A484(v7, v9);
}

uint64_t sub_219408478()
{
  sub_219BF7AA4();
  sub_2194077F4(v1);
  return sub_219BF7AE4();
}

uint64_t sub_2194084BC(uint64_t a1)
{
  sub_219BF7AA4();
  sub_2194077F4(v2);
  return sub_219BF7AE4();
}

void sub_2194084F8(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v39 = type metadata accessor for LegacyAudioFeedGroupConfig(0);
  v34 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v37 = (&v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = type metadata accessor for LegacyAudioFeedConfiguration(0);
  MEMORY[0x28223BE20](v38);
  v36 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x277D83D88];
  sub_2186DDD50(0, &qword_280E91B80, MEMORY[0x277D32028], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v32 - v7;
  sub_2186DDD50(0, &qword_280EE9C40, MEMORY[0x277CC9578], v5);
  MEMORY[0x28223BE20](v9 - 8);
  v40 = &v32 - v10;
  sub_21940B360(0, &qword_280E8CC28, sub_21940ACCC, &type metadata for LegacyAudioFeedConfiguration.CodingKeys, MEMORY[0x277D844C8]);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v15 = &v32 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21940ACCC();
  v16 = v41;
  sub_219BF7B34();
  if (v16)
  {
    goto LABEL_3;
  }

  v41 = v8;
  v17 = v13;
  v18 = v38;
  sub_219BDBD34();
  LOBYTE(v42) = 0;
  sub_21940AF38(&unk_280EE9C70, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  v19 = v15;
  sub_219BF76E4();
  v44 = 1;
  sub_218D63934();
  sub_219BF76E4();
  v20 = v42;
  if (v43 == 1)
  {
    v20 = 0;
  }

  v33 = v20;
  if (v43 == 1)
  {
    v21 = 0;
  }

  else
  {
    v21 = v43;
  }

  LOBYTE(v42) = 2;
  sub_21940AF38(&qword_280EBB4E8, type metadata accessor for LegacyAudioFeedGroupConfig, "ufXh(!\r");
  v22 = sub_219BF7654();
  sub_219BEE5B4();
  LOBYTE(v42) = 3;
  sub_21940AF38(&qword_280E91B88, MEMORY[0x277D32028], MEMORY[0x277D32038]);
  sub_219BF76E4();
  v32 = v19;
  v39 = v12;
  v23 = v36;
  sub_21872AEC8(v40, v36, &qword_280EE9C40, MEMORY[0x277CC9578]);
  v24 = v18;
  v25 = (v23 + v18[5]);
  *v25 = v33;
  v25[1] = v21;
  *(v23 + v18[6]) = v22;
  *(v23 + v18[8]) = 0;
  sub_21872AEC8(v41, v23 + v18[7], &qword_280E91B80, MEMORY[0x277D32028]);
  v42 = MEMORY[0x277D84F98];
  v26 = *(v22 + 16);

  if (!v26)
  {
LABEL_13:

    sub_2187109B4(v41, &qword_280E91B80, MEMORY[0x277D32028]);
    sub_2187109B4(v40, &qword_280EE9C40, MEMORY[0x277CC9578]);
    (*(v17 + 8))(v32, v39);
    v31 = v35;
    v30 = v36;
    *(v36 + v24[9]) = v42;
    sub_21940B2A4(v30, v31, type metadata accessor for LegacyAudioFeedConfiguration);
LABEL_3:
    __swift_destroy_boxed_opaque_existential_1(a1);
    return;
  }

  v27 = 0;
  v28 = v34;
  while (1)
  {
    v29 = v37;
    if (v27 >= *(v22 + 16))
    {
      break;
    }

    sub_21940AD20(v22 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v27, v37, type metadata accessor for LegacyAudioFeedGroupConfig);
    sub_219408F00(&v42, v29, 0);
    ++v27;
    sub_21940AD8C(v29, type metadata accessor for LegacyAudioFeedGroupConfig);
    if (v26 == v27)
    {
      goto LABEL_13;
    }
  }

  __break(1u);

  sub_21940AD8C(v29, type metadata accessor for LegacyAudioFeedGroupConfig);

  __break(1u);
}

uint64_t sub_219408C08(void *a1)
{
  v3 = v1;
  sub_21940B360(0, &qword_27CC1A128, sub_21940ACCC, &type metadata for LegacyAudioFeedConfiguration.CodingKeys, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21940ACCC();
  sub_219BF7B44();
  LOBYTE(v12) = 0;
  sub_219BDBD34();
  sub_21940AF38(&qword_280EE9CA0, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
  sub_219BF77E4();
  if (!v2)
  {
    v10 = type metadata accessor for LegacyAudioFeedConfiguration(0);
    v12 = *(v3 + *(v10 + 20));
    v13 = 1;
    sub_218D63B70();
    sub_219BF7834();
    *&v12 = *(v3 + *(v10 + 24));
    v13 = 2;
    sub_2186DDD50(0, &qword_280E8F0B0, type metadata accessor for LegacyAudioFeedGroupConfig, MEMORY[0x277D83940]);
    sub_21940AE60();
    sub_219BF7834();
    LOBYTE(v12) = 3;
    sub_2186DDD50(0, &qword_280E91B80, MEMORY[0x277D32028], MEMORY[0x277D83D88]);
    sub_2193636A0();
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

void sub_219408F00(void *a1, void *a2, int a3)
{
  LODWORD(v165) = a3;
  v172 = a2;
  v5 = type metadata accessor for LegacyAudioEditorialHeroFeedGroupConfig(0);
  MEMORY[0x28223BE20](v5 - 8);
  v164 = &v162 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LegacyAudioDailyBriefingInTodayFeedGroupConfig(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v162 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for LegacyAudioConfigArticle(0);
  v173 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v167 = &v162 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  *&v168 = &v162 - v13;
  MEMORY[0x28223BE20](v14);
  v170 = (&v162 - v15);
  MEMORY[0x28223BE20](v16);
  *&v169 = &v162 - v17;
  MEMORY[0x28223BE20](v18);
  *&v166 = &v162 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = (&v162 - v21);
  MEMORY[0x28223BE20](v23);
  v25 = &v162 - v24;
  v171 = v26;
  MEMORY[0x28223BE20](v27);
  v29 = (&v162 - v28);
  v30 = type metadata accessor for LegacyAudioDailyBriefingFeedGroupConfig(0);
  MEMORY[0x28223BE20](v30 - 8);
  v32 = &v162 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for LegacyAudioFeedGroupConfig(0);
  MEMORY[0x28223BE20](v33);
  v35 = (&v162 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21940AD20(v172, v35, type metadata accessor for LegacyAudioFeedGroupConfig);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v172 = a1;
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload != 3)
    {
      sub_21940AD8C(v35, type metadata accessor for LegacyAudioFeedGroupConfig);
      return;
    }

    v37 = v35[2];
    v164 = v35[1];
    v165 = v37;
    v38 = v35[4];
    v162 = v3;
    v163 = v38;
    v39 = v35[7];
    *&v166 = v35[6];
    v40 = v168;
    v170 = *(v39 + 16);
    if (!v170)
    {
LABEL_90:

      return;
    }

    v41 = 0;
    v169 = xmmword_219C09BA0;
    while (1)
    {
      if (v41 >= *(v39 + 16))
      {
        goto LABEL_95;
      }

      v43 = *(v173 + 80);
      sub_21940AD20(v39 + ((v43 + 32) & ~v43) + *(v173 + 72) * v41, v40, type metadata accessor for LegacyAudioConfigArticle);
      v44 = *v40;
      v45 = v40[1];
      if (*(*a1 + 16))
      {
        sub_21870F700(*v40, v40[1]);
        if (v46)
        {
          sub_2186C66AC();
          v47 = sub_219BF6F74();
          v48 = sub_219BF61F4();
          sub_2186E7BB0(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
          v49 = swift_allocObject();
          *(v49 + 16) = v169;
          *(v49 + 56) = MEMORY[0x277D837D0];
          *(v49 + 64) = sub_2186FC3BC();
          *(v49 + 32) = v44;
          *(v49 + 40) = v45;

          sub_219BE5314("AudioFeedConfiguration: Found duplicate articleID in AudioConfig %{public}@", 75, 2, &dword_2186C1000, v47, v48, v49);

          a1 = v172;

          goto LABEL_7;
        }
      }

      v50 = v40;
      v51 = v167;
      sub_21940AD20(v50, v167, type metadata accessor for LegacyAudioConfigArticle);
      v52 = swift_allocObject();
      sub_21940B2A4(v51, v52 + ((v43 + 16) & ~v43), type metadata accessor for LegacyAudioConfigArticle);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v174 = *a1;
      v54 = v174;
      v56 = sub_21870F700(v44, v45);
      v57 = v54[2];
      v58 = (v55 & 1) == 0;
      v59 = v57 + v58;
      if (__OFADD__(v57, v58))
      {
        goto LABEL_97;
      }

      v60 = v55;
      if (v54[3] >= v59)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v63 = v174;
          if ((v55 & 1) == 0)
          {
            goto LABEL_19;
          }
        }

        else
        {
          sub_219495C44();
          v63 = v174;
          if ((v60 & 1) == 0)
          {
            goto LABEL_19;
          }
        }
      }

      else
      {
        sub_219486C94(v59, isUniquelyReferenced_nonNull_native);
        v61 = sub_21870F700(v44, v45);
        if ((v60 & 1) != (v62 & 1))
        {
          goto LABEL_106;
        }

        v56 = v61;
        v63 = v174;
        if ((v60 & 1) == 0)
        {
LABEL_19:
          v63[(v56 >> 6) + 8] |= 1 << v56;
          v64 = (v63[6] + 16 * v56);
          *v64 = v44;
          v64[1] = v45;
          v65 = (v63[7] + 16 * v56);
          *v65 = sub_21940AD88;
          v65[1] = v52;
          v66 = v63[2];
          v67 = __OFADD__(v66, 1);
          v68 = v66 + 1;
          if (v67)
          {
            goto LABEL_103;
          }

          v63[2] = v68;
          goto LABEL_6;
        }
      }

      v42 = (v63[7] + 16 * v56);
      *v42 = sub_21940AD88;
      v42[1] = v52;

LABEL_6:
      a1 = v172;
      *v172 = v63;
      v40 = v168;
LABEL_7:
      v41 = (v41 + 1);
      sub_21940AD8C(v40, type metadata accessor for LegacyAudioConfigArticle);
      if (v170 == v41)
      {
        goto LABEL_90;
      }
    }
  }

  v162 = v3;
  v69 = v165;
  v167 = v32;
  *&v168 = v25;
  if (!EnumCaseMultiPayload)
  {
    v99 = v167;
    sub_21940B2A4(v35, v167, type metadata accessor for LegacyAudioDailyBriefingFeedGroupConfig);
    if (v69)
    {
      v160 = type metadata accessor for LegacyAudioDailyBriefingFeedGroupConfig;
      v161 = v99;
      goto LABEL_93;
    }

    v100 = *v99;
    v101 = *(*v99 + 16);
    v102 = v168;
    v170 = v29;
    *&v169 = v101;
    if (!v101)
    {
LABEL_92:
      v160 = type metadata accessor for LegacyAudioDailyBriefingFeedGroupConfig;
      v161 = v167;
      goto LABEL_93;
    }

    v103 = 0;
    v166 = xmmword_219C09BA0;
    while (1)
    {
      if (v103 >= *(v100 + 16))
      {
        goto LABEL_98;
      }

      v105 = *(v173 + 80);
      v106 = v170;
      sub_21940AD20(v100 + ((v105 + 32) & ~v105) + *(v173 + 72) * v103, v170, type metadata accessor for LegacyAudioConfigArticle);
      v108 = *v106;
      v107 = v106[1];
      if (*(*a1 + 16))
      {
        sub_21870F700(v108, v107);
        if (v109)
        {
          sub_2186C66AC();
          v110 = sub_219BF6F74();
          v111 = sub_219BF61F4();
          sub_2186E7BB0(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
          v112 = swift_allocObject();
          *(v112 + 16) = v166;
          *(v112 + 56) = MEMORY[0x277D837D0];
          *(v112 + 64) = sub_2186FC3BC();
          *(v112 + 32) = v108;
          *(v112 + 40) = v107;

          sub_219BE5314("AudioFeedConfiguration: Found duplicate articleID in AudioConfig %{public}@", 75, 2, &dword_2186C1000, v110, v111, v112);

          a1 = v172;

          goto LABEL_52;
        }
      }

      sub_21940AD20(v170, v102, type metadata accessor for LegacyAudioConfigArticle);
      v113 = swift_allocObject();
      sub_21940B2A4(v102, v113 + ((v105 + 16) & ~v105), type metadata accessor for LegacyAudioConfigArticle);

      v114 = swift_isUniquelyReferenced_nonNull_native();
      v174 = *a1;
      v115 = v174;
      v117 = sub_21870F700(v108, v107);
      v118 = v115[2];
      v119 = (v116 & 1) == 0;
      v120 = v118 + v119;
      if (__OFADD__(v118, v119))
      {
        goto LABEL_100;
      }

      v121 = v116;
      if (v115[3] >= v120)
      {
        if (v114)
        {
          v124 = v174;
          if ((v116 & 1) == 0)
          {
            goto LABEL_64;
          }
        }

        else
        {
          sub_219495C44();
          v124 = v174;
          if ((v121 & 1) == 0)
          {
            goto LABEL_64;
          }
        }
      }

      else
      {
        sub_219486C94(v120, v114);
        v122 = sub_21870F700(v108, v107);
        if ((v121 & 1) != (v123 & 1))
        {
          goto LABEL_106;
        }

        v117 = v122;
        v124 = v174;
        if ((v121 & 1) == 0)
        {
LABEL_64:
          v124[(v117 >> 6) + 8] |= 1 << v117;
          v125 = (v124[6] + 16 * v117);
          *v125 = v108;
          v125[1] = v107;
          v126 = (v124[7] + 16 * v117);
          *v126 = sub_21940B710;
          v126[1] = v113;
          v127 = v124[2];
          v67 = __OFADD__(v127, 1);
          v128 = v127 + 1;
          if (v67)
          {
            goto LABEL_104;
          }

          v124[2] = v128;
          goto LABEL_51;
        }
      }

      v104 = (v124[7] + 16 * v117);
      *v104 = sub_21940B710;
      v104[1] = v113;

LABEL_51:
      a1 = v172;
      *v172 = v124;
      v102 = v168;
LABEL_52:
      ++v103;
      sub_21940AD8C(v170, type metadata accessor for LegacyAudioConfigArticle);
      if (v169 == v103)
      {
        goto LABEL_92;
      }
    }
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_21940B2A4(v35, v9, type metadata accessor for LegacyAudioDailyBriefingInTodayFeedGroupConfig);
    if (v69)
    {
      v70 = *(v9 + 3);
      v71 = *(v70 + 16);
      v72 = v166;
      v170 = v22;
      *&v169 = v71;
      if (v71)
      {
        v73 = 0;
        v168 = xmmword_219C09BA0;
        v163 = v9;
        do
        {
          if (v73 >= *(v70 + 16))
          {
            goto LABEL_99;
          }

          v75 = *(v173 + 80);
          v76 = v170;
          sub_21940AD20(v70 + ((v75 + 32) & ~v75) + *(v173 + 72) * v73, v170, type metadata accessor for LegacyAudioConfigArticle);
          v78 = *v76;
          v77 = v76[1];
          if (*(*a1 + 16))
          {
            sub_21870F700(v78, v77);
            if (v79)
            {
              sub_2186C66AC();
              v80 = sub_219BF6F74();
              v81 = sub_219BF61F4();
              sub_2186E7BB0(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
              v82 = swift_allocObject();
              *(v82 + 16) = v168;
              *(v82 + 56) = MEMORY[0x277D837D0];
              *(v82 + 64) = sub_2186FC3BC();
              *(v82 + 32) = v78;
              *(v82 + 40) = v77;

              sub_219BE5314("AudioFeedConfiguration: Found duplicate articleID in AudioConfig %{public}@", 75, 2, &dword_2186C1000, v80, v81, v82);

              a1 = v172;

              goto LABEL_30;
            }
          }

          sub_21940AD20(v170, v72, type metadata accessor for LegacyAudioConfigArticle);
          v83 = swift_allocObject();
          sub_21940B2A4(v72, v83 + ((v75 + 16) & ~v75), type metadata accessor for LegacyAudioConfigArticle);

          v84 = swift_isUniquelyReferenced_nonNull_native();
          v174 = *a1;
          v85 = v174;
          v87 = sub_21870F700(v78, v77);
          v88 = v85[2];
          v89 = (v86 & 1) == 0;
          v90 = v88 + v89;
          if (__OFADD__(v88, v89))
          {
            goto LABEL_101;
          }

          v91 = v86;
          if (v85[3] >= v90)
          {
            if (v84)
            {
              v94 = v174;
              if ((v86 & 1) == 0)
              {
                goto LABEL_42;
              }
            }

            else
            {
              sub_219495C44();
              v94 = v174;
              if ((v91 & 1) == 0)
              {
                goto LABEL_42;
              }
            }
          }

          else
          {
            sub_219486C94(v90, v84);
            v92 = sub_21870F700(v78, v77);
            if ((v91 & 1) != (v93 & 1))
            {
              goto LABEL_106;
            }

            v87 = v92;
            v94 = v174;
            if ((v91 & 1) == 0)
            {
LABEL_42:
              v94[(v87 >> 6) + 8] |= 1 << v87;
              v95 = (v94[6] + 16 * v87);
              *v95 = v78;
              v95[1] = v77;
              v96 = (v94[7] + 16 * v87);
              *v96 = sub_21940B710;
              v96[1] = v83;
              v97 = v94[2];
              v67 = __OFADD__(v97, 1);
              v98 = v97 + 1;
              if (v67)
              {
                goto LABEL_105;
              }

              v94[2] = v98;
              goto LABEL_29;
            }
          }

          v74 = (v94[7] + 16 * v87);
          *v74 = sub_21940B710;
          v74[1] = v83;

LABEL_29:
          a1 = v172;
          *v172 = v94;
          v72 = v166;
LABEL_30:
          ++v73;
          sub_21940AD8C(v170, type metadata accessor for LegacyAudioConfigArticle);
          v9 = v163;
        }

        while (v169 != v73);
      }
    }

    v160 = type metadata accessor for LegacyAudioDailyBriefingInTodayFeedGroupConfig;
    v161 = v9;
LABEL_93:
    sub_21940AD8C(v161, v160);
    return;
  }

  v129 = v164;
  sub_21940B2A4(v35, v164, type metadata accessor for LegacyAudioEditorialHeroFeedGroupConfig);
  v130 = *(v129 + 24);
  v131 = v170;
  v132 = v169;
  *&v168 = *(v130 + 16);
  if (!v168)
  {
LABEL_89:
    v160 = type metadata accessor for LegacyAudioEditorialHeroFeedGroupConfig;
    v161 = v129;
    goto LABEL_93;
  }

  v133 = 0;
  v166 = xmmword_219C09BA0;
  v167 = v130;
  while (v133 < *(v130 + 16))
  {
    v135 = *(v173 + 80);
    sub_21940AD20(v130 + ((v135 + 32) & ~v135) + *(v173 + 72) * v133, v132, type metadata accessor for LegacyAudioConfigArticle);
    v136 = *v132;
    v137 = v132[1];
    if (*(*a1 + 16))
    {
      sub_21870F700(*v132, v132[1]);
      if (v138)
      {
        sub_2186C66AC();
        v139 = sub_219BF6F74();
        v140 = sub_219BF61F4();
        sub_2186E7BB0(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
        v141 = swift_allocObject();
        *(v141 + 16) = v166;
        *(v141 + 56) = MEMORY[0x277D837D0];
        *(v141 + 64) = sub_2186FC3BC();
        *(v141 + 32) = v136;
        *(v141 + 40) = v137;

        sub_219BE5314("AudioFeedConfiguration: Found duplicate articleID in AudioConfig %{public}@", 75, 2, &dword_2186C1000, v139, v140, v141);

        a1 = v172;

        goto LABEL_72;
      }
    }

    v142 = v132;
    v143 = v129;
    sub_21940AD20(v142, v131, type metadata accessor for LegacyAudioConfigArticle);
    v144 = swift_allocObject();
    sub_21940B2A4(v131, v144 + ((v135 + 16) & ~v135), type metadata accessor for LegacyAudioConfigArticle);

    v145 = swift_isUniquelyReferenced_nonNull_native();
    v174 = *a1;
    v146 = v174;
    v148 = sub_21870F700(v136, v137);
    v149 = v146[2];
    v150 = (v147 & 1) == 0;
    v151 = v149 + v150;
    if (__OFADD__(v149, v150))
    {
      goto LABEL_96;
    }

    v152 = v147;
    if (v146[3] >= v151)
    {
      if (v145)
      {
        v155 = v174;
        if ((v147 & 1) == 0)
        {
          goto LABEL_84;
        }
      }

      else
      {
        sub_219495C44();
        v155 = v174;
        if ((v152 & 1) == 0)
        {
          goto LABEL_84;
        }
      }
    }

    else
    {
      sub_219486C94(v151, v145);
      v153 = sub_21870F700(v136, v137);
      if ((v152 & 1) != (v154 & 1))
      {
        goto LABEL_106;
      }

      v148 = v153;
      v155 = v174;
      if ((v152 & 1) == 0)
      {
LABEL_84:
        v155[(v148 >> 6) + 8] |= 1 << v148;
        v156 = (v155[6] + 16 * v148);
        *v156 = v136;
        v156[1] = v137;
        v157 = (v155[7] + 16 * v148);
        *v157 = sub_21940B710;
        v157[1] = v144;
        v158 = v155[2];
        v67 = __OFADD__(v158, 1);
        v159 = v158 + 1;
        if (v67)
        {
          goto LABEL_102;
        }

        v155[2] = v159;
        goto LABEL_71;
      }
    }

    v134 = (v155[7] + 16 * v148);
    *v134 = sub_21940B710;
    v134[1] = v144;

LABEL_71:
    a1 = v172;
    *v172 = v155;
    v129 = v143;
    v131 = v170;
    v132 = v169;
LABEL_72:
    ++v133;
    sub_21940AD8C(v132, type metadata accessor for LegacyAudioConfigArticle);
    v130 = v167;
    if (v168 == v133)
    {
      goto LABEL_89;
    }
  }

  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
LABEL_106:
  sub_219BF79A4();
  __break(1u);
}

uint64_t sub_21940A098@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v27 = MEMORY[0x277D32028];
  v6 = MEMORY[0x277D83D88];
  sub_2186DDD50(0, &qword_280E91B80, MEMORY[0x277D32028], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v27 - v8;
  v10 = MEMORY[0x277CC9578];
  sub_2186DDD50(0, &qword_280EE9C40, MEMORY[0x277CC9578], v6);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v27 - v12;
  sub_21872AEC8(v3, &v27 - v12, &qword_280EE9C40, v10);
  v14 = type metadata accessor for LegacyAudioFeedConfiguration(0);
  v15 = (v3 + v14[5]);
  v16 = *v15;
  v17 = v15[1];
  v18 = *(v3 + v14[8]);
  v19 = v3 + v14[7];
  v20 = v27;
  sub_21872AEC8(v19, v9, &qword_280E91B80, v27);
  sub_21872AEC8(v13, a2, &qword_280EE9C40, v10);
  v21 = (a2 + v14[5]);
  *v21 = v16;
  v21[1] = v17;
  *(a2 + v14[6]) = a1;
  *(a2 + v14[8]) = v18;
  v22 = a2 + v14[7];
  v28 = v9;
  sub_21872AEC8(v9, v22, &qword_280E91B80, v20);
  v29 = MEMORY[0x277D84F98];
  v23 = *(a1 + 16);

  for (i = 0; v23 != i; ++i)
  {
    v25 = *(type metadata accessor for LegacyAudioFeedGroupConfig(0) - 8);
    sub_219408F00(&v29, (a1 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * i), v18);
  }

  sub_2187109B4(v28, &qword_280E91B80, MEMORY[0x277D32028]);
  result = sub_2187109B4(v13, &qword_280EE9C40, MEMORY[0x277CC9578]);
  *(a2 + v14[9]) = v29;
  return result;
}

unint64_t sub_21940A430()
{
  result = qword_27CC1A118;
  if (!qword_27CC1A118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1A118);
  }

  return result;
}

BOOL sub_21940A484(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    if (*a1 != *a2 || v2 != v3)
    {
      v5 = a1;
      v6 = a2;
      v7 = sub_219BF78F4();
      a2 = v6;
      v8 = v7;
      a1 = v5;
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v3)
  {
    return 0;
  }

  v9 = *(a1 + 24);
  v10 = *(a2 + 24);
  if (v9)
  {
    if (!v10)
    {
      return 0;
    }

    if (*(a1 + 16) != *(a2 + 16) || v9 != v10)
    {
      v11 = a1;
      v12 = a2;
      v13 = sub_219BF78F4();
      a2 = v12;
      v14 = v13;
      a1 = v11;
      if ((v14 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v10)
  {
    return 0;
  }

  v15 = *(a1 + 40);
  v16 = *(a2 + 40);
  if (v15)
  {
    if (!v16)
    {
      return 0;
    }

    if (*(a1 + 32) != *(a2 + 32) || v15 != v16)
    {
      v17 = a1;
      v18 = a2;
      v19 = sub_219BF78F4();
      a2 = v18;
      v20 = v19;
      a1 = v17;
      if ((v20 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v16)
  {
    return 0;
  }

  v21 = *(a2 + 56);
  if (*(a1 + 56))
  {
    if (!*(a2 + 56))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 48) != *(a2 + 48))
    {
      v21 = 1;
    }

    if (v21)
    {
      return 0;
    }
  }

  v22 = *(a2 + 72);
  if ((*(a1 + 72) & 1) == 0)
  {
    if (*(a1 + 64) != *(a2 + 64))
    {
      v22 = 1;
    }

    return (v22 & 1) == 0;
  }

  return (*(a2 + 72) & 1) != 0;
}

unint64_t sub_21940A5FC(uint64_t a1, uint64_t a2)
{
  v2 = sub_219BF7614();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_21940A648(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 2036625250 && a2 == 0xE400000000000000 || (sub_219BF78F4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000022 && 0x8000000219D1FC60 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65536F54656D6974 && a2 == 0xEA0000000000646ELL)
  {

    return 4;
  }

  else
  {
    v6 = sub_219BF78F4();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_21940A804@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v49 = a2;
  sub_21940B360(0, &qword_280E8CC18, sub_21940AC10, &type metadata for LegacyAudioFeedConfiguration.NotificationConfig.CodingKeys, MEMORY[0x277D844C8]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v29 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21940AC10();
  sub_219BF7B34();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = v6;
  LOBYTE(v40[0]) = 0;
  v10 = v5;
  v11 = sub_219BF7694();
  v13 = v12;
  LOBYTE(v40[0]) = 1;
  v14 = sub_219BF7694();
  v35 = v15;
  v33 = v14;
  LOBYTE(v40[0]) = 2;
  v32 = sub_219BF7694();
  v34 = v16;
  LOBYTE(v40[0]) = 3;
  v31 = sub_219BF76B4();
  v48 = v17 & 1;
  v45 = 4;
  v18 = sub_219BF76B4();
  v20 = v19;
  v21 = v18;
  (*(v9 + 8))(v8, v10);
  v20 &= 1u;
  v46 = v20;
  *&v36 = v11;
  *(&v36 + 1) = v13;
  *&v37 = v33;
  v22 = v35;
  v23 = v32;
  *(&v37 + 1) = v35;
  *&v38 = v32;
  v24 = v34;
  *(&v38 + 1) = v34;
  *v39 = v31;
  v30 = v48;
  v39[8] = v48;
  *&v39[9] = *v47;
  *&v39[12] = *&v47[3];
  *&v39[16] = v21;
  v39[24] = v20;
  sub_21940AC64(&v36, v40);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v40[0] = v11;
  v40[1] = v13;
  v40[2] = v33;
  v40[3] = v22;
  v40[4] = v23;
  v40[5] = v24;
  v40[6] = v31;
  v41 = v30;
  *v42 = *v47;
  *&v42[3] = *&v47[3];
  v43 = v21;
  v44 = v20;
  result = sub_21940AC9C(v40);
  v26 = *v39;
  v27 = v49;
  v49[2] = v38;
  v27[3] = v26;
  *(v27 + 57) = *&v39[9];
  v28 = v37;
  *v27 = v36;
  v27[1] = v28;
  return result;
}

unint64_t sub_21940AC10()
{
  result = qword_280EB4110;
  if (!qword_280EB4110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB4110);
  }

  return result;
}

unint64_t sub_21940ACCC()
{
  result = qword_280EB4150;
  if (!qword_280EB4150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB4150);
  }

  return result;
}

uint64_t sub_21940AD20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21940AD8C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21940AE60()
{
  result = qword_27CC1A130;
  if (!qword_27CC1A130)
  {
    sub_2186DDD50(255, &qword_280E8F0B0, type metadata accessor for LegacyAudioFeedGroupConfig, MEMORY[0x277D83940]);
    sub_21940AF38(&qword_280EBB4F8, type metadata accessor for LegacyAudioFeedGroupConfig, "mbXhP!\r");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1A130);
  }

  return result;
}

uint64_t sub_21940AF38(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21940AF80(int a1)
{
  v23 = a1;
  v26 = type metadata accessor for LegacyAudioFeedGroupConfig(0);
  v2 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v4 = &v22[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v7 = &v22[-v6];
  MEMORY[0x28223BE20](v8);
  v10 = &v22[-v9];
  result = type metadata accessor for LegacyAudioFeedConfiguration(0);
  v12 = *(v1 + *(result + 24));
  v25 = *(v12 + 16);
  if (v25)
  {
    v13 = 0;
    v14 = MEMORY[0x277D84F90];
    v24 = v4;
    while (1)
    {
      if (v13 >= *(v12 + 16))
      {
        __break(1u);
        return result;
      }

      v15 = (*(v2 + 80) + 32) & ~*(v2 + 80);
      v16 = *(v2 + 72);
      sub_21940AD20(v12 + v15 + v16 * v13, v10, type metadata accessor for LegacyAudioFeedGroupConfig);
      sub_21940AD20(v10, v7, type metadata accessor for LegacyAudioFeedGroupConfig);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 3)
      {
        if ((EnumCaseMultiPayload - 4) >= 2)
        {
          sub_21940AD8C(v7, type metadata accessor for LegacyAudioFeedGroupConfig);
          if ((v23 & 1) == 0)
          {
            goto LABEL_15;
          }
        }

        else
        {
          sub_21940AD8C(v7, type metadata accessor for LegacyAudioFeedGroupConfig);
          if (v23)
          {
            goto LABEL_15;
          }
        }
      }

      else
      {
        if ((EnumCaseMultiPayload - 2) < 2 || !EnumCaseMultiPayload)
        {
          sub_21940AD8C(v7, type metadata accessor for LegacyAudioFeedGroupConfig);
LABEL_15:
          sub_21940B2A4(v10, v4, type metadata accessor for LegacyAudioFeedGroupConfig);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v27 = v14;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_218C37400(0, *(v14 + 16) + 1, 1);
            v14 = v27;
          }

          v20 = *(v14 + 16);
          v19 = *(v14 + 24);
          if (v20 >= v19 >> 1)
          {
            sub_218C37400((v19 > 1), v20 + 1, 1);
            v14 = v27;
          }

          *(v14 + 16) = v20 + 1;
          v21 = v14 + v15 + v20 * v16;
          v4 = v24;
          result = sub_21940B2A4(v24, v21, type metadata accessor for LegacyAudioFeedGroupConfig);
          goto LABEL_5;
        }

        sub_21940AD8C(v7, type metadata accessor for LegacyAudioFeedGroupConfig);
      }

      result = sub_21940AD8C(v10, type metadata accessor for LegacyAudioFeedGroupConfig);
LABEL_5:
      if (v25 == ++v13)
      {
        return v14;
      }
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_21940B2A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_21940B30C()
{
  result = qword_280EB4138;
  if (!qword_280EB4138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB4138);
  }

  return result;
}

void sub_21940B360(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_21940B3FC()
{
  result = qword_27CC1A140;
  if (!qword_27CC1A140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1A140);
  }

  return result;
}

unint64_t sub_21940B454()
{
  result = qword_27CC1A148;
  if (!qword_27CC1A148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1A148);
  }

  return result;
}

unint64_t sub_21940B4AC()
{
  result = qword_27CC1A150;
  if (!qword_27CC1A150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1A150);
  }

  return result;
}

unint64_t sub_21940B504()
{
  result = qword_280EB4128;
  if (!qword_280EB4128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB4128);
  }

  return result;
}

unint64_t sub_21940B55C()
{
  result = qword_280EB4130;
  if (!qword_280EB4130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB4130);
  }

  return result;
}

unint64_t sub_21940B5B4()
{
  result = qword_280EB4140;
  if (!qword_280EB4140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB4140);
  }

  return result;
}

unint64_t sub_21940B60C()
{
  result = qword_280EB4148;
  if (!qword_280EB4148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB4148);
  }

  return result;
}

unint64_t sub_21940B664()
{
  result = qword_280EB4100;
  if (!qword_280EB4100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB4100);
  }

  return result;
}

unint64_t sub_21940B6BC()
{
  result = qword_280EB4108;
  if (!qword_280EB4108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB4108);
  }

  return result;
}

uint64_t sub_21940B714(uint64_t a1)
{
  sub_218B803C4(0, &qword_280E8C0B0, MEMORY[0x277D6CCA0], MEMORY[0x277D84560]);
  v3 = sub_219BE2644();
  v4 = *(v3 - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_219C09EC0;
  v8 = (v7 + v6);
  *v8 = 0x6C656E6E616863;
  v8[1] = 0xE700000000000000;
  v9 = *(v4 + 104);
  (v9)(v8, *MEMORY[0x277D6CC80], v3);
  v10 = (v8 + v5);
  *v10 = 0x657573734977656ELL;
  v10[1] = 0xE900000000000073;
  v9();
  sub_219897824(MEMORY[0x277D84F90]);
  v11 = sub_219BE2684();

  *(v1 + 16) = v11;
  *(v1 + 24) = a1;
  return v1;
}

uint64_t sub_21940B8C4(uint64_t a1)
{
  sub_218B803C4(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
  v109 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v101 = &v100 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v100 = &v100 - v5;
  MEMORY[0x28223BE20](v6);
  v102 = &v100 - v7;
  MEMORY[0x28223BE20](v8);
  v105 = &v100 - v9;
  MEMORY[0x28223BE20](v10);
  v107 = &v100 - v11;
  v110 = v12;
  MEMORY[0x28223BE20](v13);
  v111 = &v100 - v14;
  v15 = sub_219BE22B4();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v104 = &v100 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v100 - v19;
  v21 = sub_219BE22F4();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v100 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v100 - v26;
  sub_218B803C4(0, &qword_280EE7430, MEMORY[0x277D6D3E0], MEMORY[0x277D6CC70]);
  v106 = a1;
  sub_219BE2594();
  sub_219BE22D4();
  v28 = *(v22 + 8);
  v103 = v21;
  v28(v27, v21);
  v29 = sub_219BE22C4();
  v31 = v30;
  v32 = *(v16 + 8);
  v32(v20, v15);
  if (v31)
  {
    v33 = *(v108 + 24);
    v34 = swift_allocObject();
    *(v34 + 16) = v29;
    *(v34 + 24) = v31;
    *(v34 + 32) = 0;
    v35 = v34 | 0xA000000000000004;
    v36 = sub_219BDFA44();
    v37 = v111;
    (*(*(v36 - 8) + 56))(v111, 1, 1, v36);
    v124 = 0;
    v122 = 0u;
    v123 = 0u;
    v121 = 0;
    v119 = 0u;
    v120 = 0u;
    v118 = v33;
    sub_2187B16A8(&v119, &v113, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    if (*(&v114 + 1))
    {
      sub_21875F93C(&v113, &v115);
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v39 = qword_280ED32D8;
      v38 = qword_280ED32E0;
      v40 = qword_280ED32E8;

      sub_2188202A8(v38);
      __swift_destroy_boxed_opaque_existential_1(&v115);
    }

    else
    {
      sub_218744C30(&v113, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v39 = qword_280ED32D8;
      v38 = qword_280ED32E0;
      v40 = qword_280ED32E8;

      sub_2188202A8(v38);
    }

    v112 = v35;
    v114 = 0u;
    v113 = 0u;
    v49 = v107;
    sub_2187B16A8(v37, v107, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_218B803C4);
    sub_2187B16A8(&v122, &v115, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
    v50 = (*(v109 + 80) + 24) & ~*(v109 + 80);
    v51 = (v110 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
    v52 = (v51 + 47) & 0xFFFFFFFFFFFFFFF8;
    v53 = swift_allocObject();
    *(v53 + 16) = 0;
    sub_2189B4EAC(v49, v53 + v50);
    v54 = v53 + v51;
    v55 = v116;
    *v54 = v115;
    *(v54 + 16) = v55;
    *(v54 + 32) = v117;
    v56 = (v53 + v52);
    v57 = (v53 + ((v52 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v56 = 0;
    v56[1] = 0;
    *v57 = v39;
    v57[1] = v38;
    v57[2] = v40;

    sub_2188202A8(v38);
    sub_2186CF94C(0);
    sub_21940CF30(&qword_280EE5A90, 255, sub_2186CF94C, MEMORY[0x277D6D5F8]);
    sub_219BEB464();

    sub_2187FABEC(v38, v40);
    sub_218744C30(&v119, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    sub_218744C30(&v122, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
    v58 = MEMORY[0x277D2DED0];
    v59 = MEMORY[0x277D83D88];
    v60 = v111;
LABEL_14:
    sub_218744C30(v60, &qword_280EE8610, v58, v59, sub_218B803C4);
    sub_218744C30(&v113, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8278);

    return 1;
  }

  v41 = v108;
  v42 = v105;
  sub_219BE2594();
  v43 = v104;
  sub_219BE22D4();
  v28(v24, v103);
  v44 = sub_219BE22C4();
  v46 = v45;
  v32(v43, v15);
  if (!v46)
  {
    v61 = *(v41 + 24);
    v62 = swift_allocObject();
    *(v62 + 16) = 0;
    *(v62 + 24) = 0;
    *(v62 + 32) = 2;
    v63 = v62 | 0xA000000000000004;
    v64 = sub_219BDFA44();
    v65 = v100;
    (*(*(v64 - 8) + 56))(v100, 1, 1, v64);
    v124 = 0;
    v122 = 0u;
    v123 = 0u;
    v121 = 0;
    v119 = 0u;
    v120 = 0u;
    v118 = v61;
    sub_2187B16A8(&v119, &v113, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    if (*(&v114 + 1))
    {
      sub_21875F93C(&v113, &v115);
      v66 = v101;
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v68 = qword_280ED32D8;
      v67 = qword_280ED32E0;
      v69 = qword_280ED32E8;

      sub_2188202A8(v67);
      __swift_destroy_boxed_opaque_existential_1(&v115);
    }

    else
    {
      sub_218744C30(&v113, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
      v66 = v101;
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v68 = qword_280ED32D8;
      v67 = qword_280ED32E0;
      v69 = qword_280ED32E8;

      sub_2188202A8(v67);
    }

    v112 = v63;
    v114 = 0u;
    v113 = 0u;
    sub_2187B16A8(v65, v66, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_218B803C4);
    sub_2187B16A8(&v122, &v115, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
    v89 = (*(v109 + 80) + 24) & ~*(v109 + 80);
    v90 = (v110 + v89 + 7) & 0xFFFFFFFFFFFFFFF8;
    v91 = (v90 + 47) & 0xFFFFFFFFFFFFFFF8;
    v92 = swift_allocObject();
    v93 = v66;
    v94 = v92;
    *(v92 + 16) = 0;
    sub_2189B4EAC(v93, v92 + v89);
    v95 = v94 + v90;
    v96 = v116;
    *v95 = v115;
    *(v95 + 16) = v96;
    *(v95 + 32) = v117;
    v97 = (v94 + v91);
    v98 = (v94 + ((v91 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v97 = 0;
    v97[1] = 0;
    *v98 = v68;
    v98[1] = v67;
    v98[2] = v69;

    sub_2188202A8(v67);
    sub_2186CF94C(0);
    sub_21940CF30(&qword_280EE5A90, 255, sub_2186CF94C, MEMORY[0x277D6D5F8]);
    sub_219BEB464();

    sub_2187FABEC(v67, v69);
    sub_218744C30(&v119, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    sub_218744C30(&v122, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
    v58 = MEMORY[0x277D2DED0];
    v59 = MEMORY[0x277D83D88];
    v60 = v65;
    goto LABEL_14;
  }

  v47 = *(v41 + 24);
  if (v44 == 49 && v46 == 0xE100000000000000)
  {

    v48 = 1;
  }

  else
  {
    v70 = sub_219BF78F4();

    v48 = v70 & 1;
  }

  v71 = v42;
  v72 = swift_allocObject();
  *(v72 + 16) = v48;
  *(v72 + 24) = 0;
  *(v72 + 32) = 1;
  v73 = v72 | 0xA000000000000004;
  v74 = sub_219BDFA44();
  (*(*(v74 - 8) + 56))(v42, 1, 1, v74);
  v124 = 0;
  v122 = 0u;
  v123 = 0u;
  v121 = 0;
  v119 = 0u;
  v120 = 0u;
  v118 = v47;
  sub_2187B16A8(&v119, &v113, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
  if (*(&v114 + 1))
  {
    sub_21875F93C(&v113, &v115);
    v75 = v102;
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v77 = qword_280ED32D8;
    v76 = qword_280ED32E0;
    v78 = qword_280ED32E8;

    sub_2188202A8(v76);
    __swift_destroy_boxed_opaque_existential_1(&v115);
  }

  else
  {
    sub_218744C30(&v113, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    v75 = v102;
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v77 = qword_280ED32D8;
    v76 = qword_280ED32E0;
    v78 = qword_280ED32E8;

    sub_2188202A8(v76);
  }

  v112 = v73;
  v114 = 0u;
  v113 = 0u;
  sub_2187B16A8(v71, v75, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_218B803C4);
  sub_2187B16A8(&v122, &v115, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
  v79 = (*(v109 + 80) + 24) & ~*(v109 + 80);
  v80 = (v110 + v79 + 7) & 0xFFFFFFFFFFFFFFF8;
  v81 = (v80 + 47) & 0xFFFFFFFFFFFFFFF8;
  v82 = swift_allocObject();
  v83 = v75;
  v84 = v82;
  *(v82 + 16) = 0;
  sub_2189B4EAC(v83, v82 + v79);
  v85 = v84 + v80;
  v86 = v116;
  *v85 = v115;
  *(v85 + 16) = v86;
  *(v85 + 32) = v117;
  v87 = (v84 + v81);
  v88 = (v84 + ((v81 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v87 = 0;
  v87[1] = 0;
  *v88 = v77;
  v88[1] = v76;
  v88[2] = v78;

  sub_2188202A8(v76);
  sub_2186CF94C(0);
  sub_21940CF30(&qword_280EE5A90, 255, sub_2186CF94C, MEMORY[0x277D6D5F8]);
  sub_219BEB464();

  sub_2187FABEC(v76, v78);
  sub_218744C30(&v119, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
  sub_218744C30(&v122, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
  sub_218744C30(v71, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_218B803C4);
  sub_218744C30(&v113, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8278);

  return 1;
}

uint64_t sub_21940CF30(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t objectdestroy_3Tm_11()
{
  sub_218B803C4(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);
  v3 = (*(*(v1 - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = sub_219BDFA44();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  if (*(v0 + v3 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + v3));
  }

  swift_unknownObjectRelease();

  if (*(v0 + ((((v3 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21940D118(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 57))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 40);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_21940D160(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_21940D1C4()
{
  v1 = OBJC_IVAR____TtC7NewsUI233FormatGroupFeedGroupEmitterCursor_formatGroup;
  v2 = sub_219BED8D4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FormatGroupFeedGroupEmitterCursor(uint64_t a1)
{
  result = qword_280EE2AF8;
  if (!qword_280EE2AF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21940D33C(void *a1, uint64_t a2)
{
  sub_21940D89C(0, &qword_27CC1A170, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21940D7F4();
  sub_219BF7B44();
  v10[15] = 0;
  sub_21940D900();
  sub_219BF7834();
  if (!v2)
  {
    v10[14] = 1;
    sub_219BF7824();
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_21940D4B4(char *a2@<X8>)
{
  v3 = sub_219BF7614();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_21940D514(char *a3@<X8>)
{
  v4 = sub_219BF7614();

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v4)
  {
    v5 = 0;
  }

  *a3 = v5;
}

uint64_t sub_21940D578(uint64_t a1)
{
  v2 = sub_21940D7F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21940D5B4(uint64_t a1)
{
  v2 = sub_21940D7F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21940D5F0@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_21940D638(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_21940D638(void *a1)
{
  sub_21940D89C(0, &qword_27CC1A158, MEMORY[0x277D844C8]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v10[-v6];
  v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21940D7F4();
  sub_219BF7B34();
  if (!v1)
  {
    v13 = 0;
    sub_21940D848();
    sub_219BF7674();
    v10[15] = 1;
    sub_219BF7674();
    (*(v5 + 8))(v7, v4);
    if (v12)
    {
      v8 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = v11 & ~(v11 >> 63);
    }
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

unint64_t sub_21940D7F4()
{
  result = qword_27CC1A160;
  if (!qword_27CC1A160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1A160);
  }

  return result;
}

unint64_t sub_21940D848()
{
  result = qword_27CC1A168;
  if (!qword_27CC1A168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1A168);
  }

  return result;
}

void sub_21940D89C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_21940D7F4();
    v7 = a3(a1, &type metadata for SearchMoreFeedKnobsConfig.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_21940D900()
{
  result = qword_27CC1A178;
  if (!qword_27CC1A178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1A178);
  }

  return result;
}

unint64_t sub_21940D968()
{
  result = qword_27CC1A180;
  if (!qword_27CC1A180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1A180);
  }

  return result;
}

unint64_t sub_21940D9C0()
{
  result = qword_27CC1A188;
  if (!qword_27CC1A188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1A188);
  }

  return result;
}

unint64_t sub_21940DA18()
{
  result = qword_27CC1A190;
  if (!qword_27CC1A190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1A190);
  }

  return result;
}

void sub_21940DA80(uint64_t a1)
{
  if (!qword_280E92370)
  {
    type metadata accessor for ArticleListTagFeedGroupConfigData(255);
    sub_21940DB4C(&qword_280EA3F58, type metadata accessor for ArticleListTagFeedGroupConfigData, &unk_219CB04BC);
    sub_21940DB4C(&qword_280EA3F60, type metadata accessor for ArticleListTagFeedGroupConfigData, &unk_219CB0494);
    v1 = sub_219BEDD94();
    if (!v2)
    {
      atomic_store(v1, &qword_280E92370);
    }
  }
}

uint64_t sub_21940DB4C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for ArticleListTagFeedGroupEmitter(uint64_t a1)
{
  result = qword_280EADA20;
  if (!qword_280EADA20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21940DBF4(uint64_t a1)
{
  sub_21940DA80(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ArticleListTagFeedGroupKnobs(319);
    if (v2 <= 0x3F)
    {
      sub_2186CFDE4(319, &qword_280E90510, MEMORY[0x277D33778]);
      if (v3 <= 0x3F)
      {
        sub_2186CFDE4(319, &qword_280E910C0, MEMORY[0x277D32B88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_21940DCC8(uint64_t a1)
{
  type metadata accessor for ArticleListTagFeedGroupEmitter(0);
  sub_2189AD5C8(0);
  v1 = sub_219BEE964();
  sub_219413250(0, &qword_280E8B8E0, sub_218A59E00, MEMORY[0x277D84560]);
  sub_218A59E00(0);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_219C09BA0;
  *(swift_allocObject() + 16) = 1;
  sub_2194131D0(0, &qword_280E91240, type metadata accessor for TagFeedServiceConfig, sub_2186F7CA4, MEMORY[0x277D328E0]);
  swift_allocObject();
  *(v6 + v5) = sub_219BEFB94();
  (*(v4 + 104))(v6 + v5, *MEMORY[0x277D32308], v3);
  sub_2191EDA0C(v6);
  return v1;
}

uint64_t sub_21940DEE0(uint64_t a1)
{
  v3 = type metadata accessor for ArticleListTagFeedGroupEmitter(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE3204();
  v7 = sub_219BE2E54();
  sub_218831BDC(0, &unk_280EDF3B0, &_s4FeedVN_0, &type metadata for TagFeedPool);
  sub_219BE2F64();

  v24 = type metadata accessor for ArticleListTagFeedGroupEmitter;
  sub_2194127B4(v1, v6, type metadata accessor for ArticleListTagFeedGroupEmitter);
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v23 = v8 + v5;
  v9 = (v8 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  sub_21941274C(v6, v10 + v8, type metadata accessor for ArticleListTagFeedGroupEmitter);
  *(v10 + v9) = a1;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_219411530;
  *(v11 + 24) = v10;

  v12 = sub_219BE2E54();
  sub_2194115D8(0);
  sub_219BE2F64();

  v13 = v22;
  sub_2194127B4(v22, v6, v24);
  v14 = swift_allocObject();
  sub_21941274C(v6, v14 + v8, type metadata accessor for ArticleListTagFeedGroupEmitter);
  *(v14 + v9) = a1;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_219411670;
  *(v15 + 24) = v14;

  v16 = sub_219BE2E54();
  sub_218A59C84(0);
  sub_219BE2F64();

  sub_2194127B4(v13, v6, v24);
  v17 = swift_allocObject();
  sub_21941274C(v6, v17 + v8, type metadata accessor for ArticleListTagFeedGroupEmitter);
  v18 = sub_219BE2E54();
  v19 = sub_219BE3064();

  return v19;
}

uint64_t sub_21940E264(_OWORD *a1)
{
  v2 = a1[5];
  v15[4] = a1[4];
  v15[5] = v2;
  v3 = a1[7];
  v15[6] = a1[6];
  v15[7] = v3;
  v4 = a1[1];
  v15[0] = *a1;
  v15[1] = v4;
  v5 = a1[3];
  v15[2] = a1[2];
  v15[3] = v5;
  v6 = swift_allocObject();
  v7 = a1[5];
  v6[5] = a1[4];
  v6[6] = v7;
  v8 = a1[7];
  v6[7] = a1[6];
  v6[8] = v8;
  v9 = a1[1];
  v6[1] = *a1;
  v6[2] = v9;
  v10 = a1[3];
  v6[3] = a1[2];
  v6[4] = v10;
  sub_218A80CA4(v15, &v14);
  v11 = sub_219BE2E54();
  sub_218831BDC(0, &unk_280EDF3B0, &_s4FeedVN_0, &type metadata for TagFeedPool);
  v12 = sub_219BE2F74();

  return v12;
}

void sub_21940E36C(unint64_t *a1, char *a2, uint64_t a3, unint64_t a4)
{
  v37 = a2;
  sub_2194115D8(0);
  v8 = v7;
  MEMORY[0x28223BE20](v7);
  v10 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219413250(0, qword_280EDE900, type metadata accessor for TagFeedGroup, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v36 - v12;
  v14 = type metadata accessor for ArticleListTagFeedGroupEmitter(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = v38;
  v18 = sub_219412B4C(a4, v37, *a1, a1[3]);
  if (!v17)
  {
    v21 = v20;
    v37 = v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    v38 = v8;
    if (v20 > 2u)
    {
      v26 = v18;
      v27 = v19;
      v28 = type metadata accessor for TagFeedGroup(0);
      (*(*(v28 - 8) + 56))(v13, 1, 1, v28);
      v29 = &v10[*(v38 + 48)];
      sub_219412FF4(v13, v10);
      *v29 = v26;
      *(v29 + 1) = v27;
      v29[16] = v21;
      sub_219413250(0, &qword_27CC1A198, sub_2194115D8, MEMORY[0x277D6CF30]);
      swift_allocObject();
      sub_219BE3014();
    }

    else
    {
      v22 = a4;
      v23 = v18;
      v24 = v19;
      v25 = sub_21940E72C(a4, v18, v19);
      v36[2] = 0;
      v36[1] = v25;
      sub_2194127B4(a3, v37, type metadata accessor for ArticleListTagFeedGroupEmitter);
      v30 = (*(v15 + 80) + 16) & ~*(v15 + 80);
      v31 = (v16 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
      v32 = swift_allocObject();
      sub_21941274C(v37, v32 + v30, type metadata accessor for ArticleListTagFeedGroupEmitter);
      *(v32 + v31) = v22;
      v33 = v32 + ((v31 + 15) & 0xFFFFFFFFFFFFFFF8);
      *v33 = v23;
      *(v33 + 8) = v24;
      *(v33 + 16) = v21;

      v34 = v24;
      v35 = sub_219BE2E54();
      sub_219BE2F74();
    }
  }
}

void *sub_21940E72C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v78 = a3;
  v90 = a1;
  v4 = MEMORY[0x277D83D88];
  sub_219413250(0, &qword_280E90380, MEMORY[0x277D339F0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v94 = &v75 - v6;
  sub_219413250(0, &qword_280E90150, MEMORY[0x277D33EC8], v4);
  MEMORY[0x28223BE20](v7 - 8);
  v86 = &v75 - v8;
  sub_219413250(0, &qword_280E91A70, sub_2189AD5C8, v4);
  MEMORY[0x28223BE20](v9 - 8);
  v85 = &v75 - v10;
  v11 = sub_219BF2AB4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v91 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219413250(0, &unk_280E8FF30, sub_218A42400, v4);
  MEMORY[0x28223BE20](v14 - 8);
  v83 = &v75 - v15;
  v81 = sub_219BDBD64();
  v80 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v79 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ArticleListTagFeedGroupConfigData(0);
  MEMORY[0x28223BE20](v17 - 8);
  v82 = &v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_219BF1934();
  v89 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v100 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219413250(0, &qword_280EE33F0, MEMORY[0x277D2D4E0], v4);
  MEMORY[0x28223BE20](v20 - 8);
  v95 = &v75 - v21;
  v22 = sub_219BF2034();
  v87 = *(v22 - 8);
  v88 = v22;
  MEMORY[0x28223BE20](v22);
  v99 = &v75 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_219BF3C84();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = (&v75 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v28);
  v30 = (&v75 - v29);
  v31 = sub_219BF3E84();
  v97 = *(v31 - 8);
  v98 = v31;
  MEMORY[0x28223BE20](v31);
  v96 = &v75 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = a2;
  if (a2 >> 62)
  {
    v33 = sub_219BF7214();
  }

  else
  {
    v33 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v92 = v12;
  v93 = v11;
  if (v33)
  {
    v107 = MEMORY[0x277D84F90];
    result = sub_218C34A88(0, v33 & ~(v33 >> 63), 0);
    if (v33 < 0)
    {
      __break(1u);
      return result;
    }

    v35 = v107;
    if ((v105 & 0xC000000000000001) != 0)
    {
      v36 = 0;
      LODWORD(v104) = *MEMORY[0x277D34128];
      v103 = (v25 + 32);
      do
      {
        *v30 = MEMORY[0x21CECE0F0](v36);
        (*(v25 + 104))(v30, v104, v24);
        v107 = v35;
        v38 = *(v35 + 16);
        v37 = *(v35 + 24);
        if (v38 >= v37 >> 1)
        {
          sub_218C34A88((v37 > 1), v38 + 1, 1);
          v35 = v107;
        }

        ++v36;
        *(v35 + 16) = v38 + 1;
        (*(v25 + 32))(v35 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v38, v30, v24);
      }

      while (v33 != v36);
    }

    else
    {
      v40 = (v105 + 32);
      LODWORD(v105) = *MEMORY[0x277D34128];
      v103 = *(v25 + 104);
      v104 = v25 + 104;
      v102 = (v25 + 32);
      do
      {
        *v27 = *v40;
        v103(v27, v105, v24);
        v107 = v35;
        v41 = *(v35 + 16);
        v42 = *(v35 + 24);
        swift_unknownObjectRetain();
        if (v41 >= v42 >> 1)
        {
          sub_218C34A88((v42 > 1), v41 + 1, 1);
          v35 = v107;
        }

        *(v35 + 16) = v41 + 1;
        (*(v25 + 32))(v35 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v41, v27, v24);
        ++v40;
        --v33;
      }

      while (v33);
    }

    v39 = MEMORY[0x277D84F90];
  }

  else
  {
    v39 = MEMORY[0x277D84F90];
  }

  sub_218F0B984(v39);
  sub_218F0BA7C(v39);
  sub_218F0BB90(v39);
  v43 = v96;
  sub_219BF3E74();
  v44 = sub_219BF6394();
  sub_2186DEF40(0, &qword_280E8B5A0, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v45 = swift_allocObject();
  v104 = v45;
  v105 = v44;
  *(v45 + 16) = xmmword_219C146A0;
  *(v45 + 32) = v44;
  sub_219413250(0, &unk_280E8B790, MEMORY[0x277D34258], MEMORY[0x277D84560]);
  v46 = v97;
  v47 = (*(v97 + 80) + 32) & ~*(v97 + 80);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_219C09BA0;
  (*(v46 + 16))(v48 + v47, v43, v98);
  v76 = sub_219BEC004();
  v49 = *(v76 - 8);
  v75 = *(v49 + 56);
  v77 = v49 + 56;
  v75(v95, 1, 1, v76);
  swift_unknownObjectRetain();
  sub_219A95188(v39);
  sub_219A95188(v39);
  sub_219A951A0(v39);
  sub_219A951B8(v39);
  sub_219A952CC(v39);
  sub_219A952E4(v39);
  sub_219A953F8(v39);
  sub_219BF2024();
  v78 = type metadata accessor for ArticleListTagFeedGroupEmitter(0);
  v50 = v84;
  v51 = (v84 + *(v78 + 24));
  v52 = v51[3];
  v103 = v51[4];
  v104 = v52;
  v102 = __swift_project_boxed_opaque_existential_1(v51, v52);
  sub_21940DA80(0);
  v53 = v82;
  sub_219BEDD14();
  v54 = v79;
  sub_219BDBD54();
  sub_219BDBD44();
  (*(v80 + 8))(v54, v81);
  v55 = [v105 identifier];
  sub_219BF5414();

  v56 = v95;
  v75(v95, 1, 1, v76);
  sub_218A42400(0);
  v58 = v83;
  (*(*(v57 - 8) + 56))(v83, 1, 1, v57);
  sub_219BF1764();

  v59 = MEMORY[0x277D83D88];
  sub_219413144(v58, &unk_280E8FF30, sub_218A42400, MEMORY[0x277D83D88], sub_219413250);
  sub_219413144(v56, &qword_280EE33F0, MEMORY[0x277D2D4E0], v59, sub_219413250);
  v95 = *(v89 + 8);
  (v95)(v53, v101);
  v60 = *(v78 + 20);
  sub_2189AD5C8(0);
  v62 = v61;
  v63 = *(v61 - 8);
  v64 = v50 + v60;
  v65 = v85;
  (*(v63 + 16))(v85, v64, v61);
  (*(v63 + 56))(v65, 0, 1, v62);
  sub_219BEF0B4();
  v66 = *(v107 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  v67 = sub_219BF35D4();
  (*(*(v67 - 8) + 56))(v86, 1, 1, v67);
  LOBYTE(v106) = 1;
  sub_2194131D0(0, &qword_280E90090, type metadata accessor for TagFeedServiceConfig, sub_2186F7CA4, MEMORY[0x277D33F88]);
  swift_allocObject();

  sub_219BF38D4();
  sub_219BEF0B4();
  sub_218CB8CBC();

  sub_219BEF0B4();
  v68 = *(v106 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  sub_219BF3914();
  swift_allocObject();
  sub_219BF3904();
  v69 = sub_219BF2774();
  (*(*(v69 - 8) + 56))(v94, 1, 1, v69);
  v70 = qword_280E8D7F8;
  *MEMORY[0x277D30BC0];
  if (v70 != -1)
  {
    swift_once();
  }

  qword_280F61708;
  v71 = v91;
  sub_219BF2A84();
  v72 = v99;
  v73 = v100;
  v74 = sub_219BF2194();
  swift_unknownObjectRelease();
  (*(v92 + 8))(v71, v93);
  (v95)(v73, v101);
  (*(v87 + 8))(v72, v88);
  (*(v97 + 8))(v96, v98);
  return v74;
}

id sub_21940F6F8@<X0>(uint64_t a1@<X0>, uint64_t a3@<X3>, void *a4@<X4>, char a5@<W5>, uint64_t a6@<X8>)
{
  sub_2194115D8(0);
  v12 = a6 + *(v11 + 48);
  sub_21940F7D0(a1, a6);
  v13 = type metadata accessor for TagFeedGroup(0);
  (*(*(v13 - 8) + 56))(a6, 0, 1, v13);
  *v12 = a3;
  *(v12 + 8) = a4;
  *(v12 + 16) = a5;

  return a4;
}

uint64_t sub_21940F7D0@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v24 = a3;
  sub_219413250(0, &unk_280E91B60, MEMORY[0x277D32040], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v23 = v21 - v5;
  v6 = sub_219BEF554();
  MEMORY[0x28223BE20](v6 - 8);
  v21[0] = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v9 = sub_219BF1904();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_219BED8D4();
  v13 = *(v22 - 8);
  v14 = MEMORY[0x28223BE20](v22);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v12, a2, v9, v14);
  sub_21940DA80(0);
  v17 = sub_219BEDCB4();
  v21[1] = v18;
  v21[2] = v17;
  sub_219BEDCC4();
  sub_219BEDCC4();
  type metadata accessor for ArticleListTagFeedGroupEmitter(0);
  sub_2189AD5C8(0);
  sub_219BEE9B4();
  sub_219BEE984();
  sub_219BEE9D4();
  v19 = sub_219BEE5D4();
  (*(*(v19 - 8) + 56))(v23, 1, 1, v19);
  sub_219BED854();
  (*(v13 + 32))(v24, v16, v22);
  type metadata accessor for TagFeedGroup(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_21940FB74(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, uint64_t a5, uint64_t a6)
{
  v55 = a1;
  v51 = a6;
  v49[1] = a5;
  v52 = sub_219BF0BD4();
  v50 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v49[0] = v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A59C84(0);
  v53 = v8;
  MEMORY[0x28223BE20](v8);
  v54 = (v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_219413250(0, qword_280EDE900, type metadata accessor for TagFeedGroup, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v49 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = v49 - v17;
  v19 = type metadata accessor for TagFeedGroup(0);
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = v49 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = v49 - v27;
  if (a4 <= 1u)
  {
    if (a4)
    {
      sub_2194126B8(v55, v18);
      if ((*(v20 + 48))(v18, 1, v19) == 1)
      {
        sub_219413144(v18, qword_280EDE900, type metadata accessor for TagFeedGroup, MEMORY[0x277D83D88], sub_219413250);
        v34 = sub_219BEEDD4();
        sub_21940DB4C(&qword_280E917E0, MEMORY[0x277D32430], MEMORY[0x277D32438]);
        swift_allocError();
        v36 = v35;
        v37 = "batch did not create nextBatch group";
        goto LABEL_13;
      }

      sub_21941274C(v18, v28, type metadata accessor for TagFeedGroup);
      sub_218ACC140(0);
      v48 = (v54 + *(v47 + 48));
      sub_2194127B4(v28, v54, type metadata accessor for TagFeedGroup);
      *v48 = 0u;
      v48[1] = 0u;
      swift_storeEnumTagMultiPayload();
      sub_219413250(0, &qword_280EE6C80, sub_218A59C84, MEMORY[0x277D6CF30]);
      swift_allocObject();
      v45 = sub_219BE3014();
      v46 = v28;
    }

    else
    {
      sub_2194126B8(v55, v15);
      if ((*(v20 + 48))(v15, 1, v19) == 1)
      {
        sub_219413144(v15, qword_280EDE900, type metadata accessor for TagFeedGroup, MEMORY[0x277D83D88], sub_219413250);
        v34 = sub_219BEEDD4();
        sub_21940DB4C(&qword_280E917E0, MEMORY[0x277D32430], MEMORY[0x277D32438]);
        swift_allocError();
        v36 = v35;
        v37 = "batch did not create lastBatch group";
LABEL_13:
        v38 = (v37 - 32) | 0x8000000000000000;
        v39 = 0xD000000000000024;
        goto LABEL_14;
      }

      sub_21941274C(v15, v25, type metadata accessor for TagFeedGroup);
      sub_2194127B4(v25, v54, type metadata accessor for TagFeedGroup);
      swift_storeEnumTagMultiPayload();
      sub_219413250(0, &qword_280EE6C80, sub_218A59C84, MEMORY[0x277D6CF30]);
      swift_allocObject();
      v45 = sub_219BE3014();
      v46 = v25;
    }

    sub_21932BA54(v46);
    return v45;
  }

  if (a4 != 2)
  {
    if (a4 == 3)
    {
      v57 = 0;
      v58 = 0xE000000000000000;
      sub_219BF7314();

      v57 = 0xD000000000000014;
      v58 = 0x8000000219D1FD30;
      type metadata accessor for ArticleListTagFeedGroupEmitter(0);
      type metadata accessor for ArticleListTagFeedGroupKnobs(0);
      v29 = v49[0];
      sub_219BEF134();
      sub_219BEF524();
      (*(v50 + 8))(v29, v52);
      v56 = v59;
      v30 = sub_219BF7894();
      MEMORY[0x21CECC330](v30);

      MEMORY[0x21CECC330](0x6E696C6461656820, 0xEB000000002E7365);
      v31 = v58;
      v32 = v54;
      *v54 = v57;
      v32[1] = v31;
      swift_storeEnumTagMultiPayload();
      sub_219413250(0, &qword_280EE6C80, sub_218A59C84, MEMORY[0x277D6CF30]);
      swift_allocObject();
      return sub_219BE3014();
    }

    v34 = sub_219BEEDD4();
    sub_21940DB4C(&qword_280E917E0, MEMORY[0x277D32430], MEMORY[0x277D32438]);
    swift_allocError();
    v36 = v40;
    v41 = MEMORY[0x277D323A8];
    goto LABEL_15;
  }

  sub_2194126B8(v55, v12);
  if ((*(v20 + 48))(v12, 1, v19) == 1)
  {
    sub_219413144(v12, qword_280EDE900, type metadata accessor for TagFeedGroup, MEMORY[0x277D83D88], sub_219413250);
    v34 = sub_219BEEDD4();
    sub_21940DB4C(&qword_280E917E0, MEMORY[0x277D32430], MEMORY[0x277D32438]);
    swift_allocError();
    v36 = v35;
    v38 = 0x8000000219D1FD50;
    v39 = 0xD000000000000026;
LABEL_14:
    *v35 = v39;
    v35[1] = v38;
    v41 = MEMORY[0x277D323D8];
LABEL_15:
    (*(*(v34 - 8) + 104))(v36, *v41, v34);
    return swift_willThrow();
  }

  sub_21941274C(v12, v22, type metadata accessor for TagFeedGroup);
  sub_218ACC140(0);
  v43 = (v54 + *(v42 + 48));
  sub_2194127B4(v22, v54, type metadata accessor for TagFeedGroup);
  *v43 = 0u;
  v43[1] = 0u;
  swift_storeEnumTagMultiPayload();
  sub_219413250(0, &qword_280EE6C80, sub_218A59C84, MEMORY[0x277D6CF30]);
  swift_allocObject();
  v44 = sub_219BE3014();
  sub_21932BA54(v22);
  return v44;
}

double sub_21941054C(uint64_t a1)
{
  type metadata accessor for ArticleListTagFeedGroupEmitter(0);
  sub_21940DB4C(qword_280EADA60, type metadata accessor for ArticleListTagFeedGroupEmitter, &unk_219C7C2A0);
  sub_219BED704();
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  type metadata accessor for TagFeedGroup(0);
  sub_21877D2B0();
  sub_219BEF194();

  return result;
}

unint64_t sub_219410658(unint64_t a1, unint64_t a2, uint64_t a3)
{
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  sub_2186F20D4(0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_219C09BA0;
  if (a1 >> 62)
  {
    v7 = sub_219BF7214();
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = MEMORY[0x277D83C10];
  *(v6 + 56) = MEMORY[0x277D83B88];
  *(v6 + 64) = v8;
  *(v6 + 32) = v7;
  sub_219BF6214();
  sub_219BE5314("ArticleList emitter starting with %ld items available", v14);

  v9 = sub_21941281C(a1, a3);
  v10 = sub_219411804(v9);

  v11 = sub_219411CC8(v10);

  v12 = sub_21941203C(v11, a2, a3);
  if (a1 >> 62)
  {
    if (!sub_219BF7214())
    {
      goto LABEL_10;
    }
  }

  else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_10;
  }

  if (v11 >> 62)
  {
    sub_219BF7214();
  }

LABEL_10:

  return v12;
}

uint64_t sub_219410824(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v61 = a4;
  v62 = sub_219BEE6E4();
  v6 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_219BEFBD4();
  v58 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BF0BD4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ArticleListTagFeedGroupEmitter(0);
  v16 = *(v15 + 20);
  v59 = a1;
  v17 = *(a1 + v16 + *(type metadata accessor for ArticleListTagFeedGroupKnobs(0) + 24));
  sub_219BEF134();
  v18 = v17;
  sub_219BEF524();
  (*(v12 + 8))(v14, v11);
  if (v64)
  {
    v19 = (v59 + *(v15 + 28));
    v14 = v19[4];
    v18 = __swift_project_boxed_opaque_existential_1(v19, v19[3]);
    v20 = v58;
    v21 = v60;
    (*(v58 + 104))(v10, *MEMORY[0x277D32900], v60);
    a3 = sub_219BF0034();
    v22 = *(v20 + 8);
    v17 = v20 + 8;
    v22(v10, v21);
    v23 = sub_219A78188(v61, a3);
    v60 = v25;
    v61 = v26 >> 1;
    v10 = (v26 >> 1) - v24;
    if (__OFSUB__(v26 >> 1, v24))
    {
LABEL_92:
      __break(1u);
      goto LABEL_93;
    }

    v21 = v23;
    if (v10)
    {
      v17 = v24;
      v63 = MEMORY[0x277D84F90];

      v18 = &v63;
      sub_219BF73F4();
      if (v10 < 0)
      {
LABEL_115:
        __break(1u);
LABEL_116:
        __break(1u);
        goto LABEL_117;
      }

      v58 = v21;
      v59 = a3;
      v14 = v6 + 16;
      if (v17 <= v61)
      {
        a3 = v61;
      }

      else
      {
        a3 = v17;
      }

      do
      {
        if (a3 == v17)
        {
          __break(1u);
          goto LABEL_91;
        }

        v21 = v62;
        (*(v6 + 16))(v8, v60 + *(v6 + 72) * v17, v62);
        v10 = sub_219BEE6D4();
        (*(v6 + 8))(v8, v21);
        v18 = &v63;
        sub_219BF73D4();
        sub_219BF7414();
        sub_219BF7424();
        sub_219BF73E4();
        ++v17;
      }

      while (v61 != v17);
      swift_unknownObjectRelease();
      v27 = v63;
      a3 = v59;
      if (v63 >> 62)
      {
        goto LABEL_77;
      }
    }

    else
    {

      swift_unknownObjectRelease();
      v27 = MEMORY[0x277D84F90];
      if (MEMORY[0x277D84F90] >> 62)
      {
LABEL_77:
        v28 = sub_219BF7214();
        goto LABEL_12;
      }
    }

    v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_12:
    v29 = sub_219BC7A7C(v28, a3);
    v61 = v31;
    v17 = v32 >> 1;
    v10 = (v32 >> 1) - v30;
    if (__OFSUB__(v32 >> 1, v30))
    {
LABEL_114:
      __break(1u);
      goto LABEL_115;
    }

    if (!v10)
    {
      goto LABEL_88;
    }

    v14 = v30;
    v60 = v29;
    v63 = MEMORY[0x277D84F90];
    v18 = &v63;
    sub_219BF73F4();
    if (v10 < 0)
    {
      goto LABEL_116;
    }

    v59 = v27;
    a3 = v6 + 16;
    if (v14 <= v17)
    {
      v21 = v17;
    }

    else
    {
      v21 = v14;
    }

    while (v21 != v14)
    {
      v33 = v62;
      (*(v6 + 16))(v8, v61 + *(v6 + 72) * v14, v62);
      v10 = sub_219BEE6D4();
      (*(v6 + 8))(v8, v33);
      sub_219BF73D4();
      sub_219BF7414();
      sub_219BF7424();
      sub_219BF73E4();
      if (v17 == ++v14)
      {
        swift_unknownObjectRelease();
        return v59;
      }
    }

LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v21 = v61;
  if (v61 < 0)
  {
LABEL_93:
    __break(1u);
LABEL_94:
    if ((a3 & 0x8000000000000000) != 0)
    {
      v18 = a3;
    }

    else
    {
      v18 = (a3 & 0xFFFFFFFFFFFFFF8);
    }

    v6 = sub_219BF7214();
    result = sub_219BF7214();
    if (result < 0)
    {
      __break(1u);
      return result;
    }

    v34 = v6 >> 63;
    if (v6 >= v21)
    {
      v56 = v21;
    }

    else
    {
      v56 = v6;
    }

    if (v6 < 0)
    {
      v56 = v21;
    }

    if (v21)
    {
      v21 = v56;
    }

    else
    {
      v21 = 0;
    }

    if (sub_219BF7214() < v21)
    {
      goto LABEL_107;
    }

    goto LABEL_30;
  }

  v10 = a3 >> 62;
  if (a3 >> 62)
  {
    goto LABEL_94;
  }

  LODWORD(v34) = 0;
  v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v6 >= v61)
  {
    v35 = v61;
  }

  else
  {
    v35 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v61)
  {
    v21 = v35;
  }

  else
  {
    v21 = 0;
  }

  if (v6 < v21)
  {
LABEL_107:
    __break(1u);
    goto LABEL_108;
  }

LABEL_30:
  if ((a3 & 0xC000000000000001) != 0 && v21)
  {
    sub_218731D50();

    v36 = 0;
    do
    {
      v37 = v36 + 1;
      sub_219BF7334();
      v36 = v37;
    }

    while (v21 != v37);
    if (!v10)
    {
      goto LABEL_35;
    }
  }

  else
  {

    if (!v10)
    {
LABEL_35:
      v38 = 0;
      v18 = (a3 & 0xFFFFFFFFFFFFFF8);
      v39 = (a3 & 0xFFFFFFFFFFFFFF8) + 32;
      v14 = (2 * v21) | 1;
      goto LABEL_38;
    }
  }

  v18 = sub_219BF7564();
  v14 = v40;
LABEL_38:
  v41 = (v14 >> 1) - v38;
  if (__OFSUB__(v14 >> 1, v38))
  {
LABEL_108:
    __break(1u);
    goto LABEL_109;
  }

  if (v41 < 0)
  {
LABEL_109:
    __break(1u);
LABEL_110:
    __break(1u);
LABEL_111:
    __break(1u);
    goto LABEL_112;
  }

  if (v6 >= v41)
  {
    v42 = (v14 >> 1) - v38;
  }

  else
  {
    v42 = v6;
  }

  if (v34)
  {
    v42 = (v14 >> 1) - v38;
  }

  if (v41)
  {
    v21 = v42;
  }

  else
  {
    v21 = 0;
  }

  if (v6 < v21)
  {
    goto LABEL_110;
  }

  v61 = v39;
  v62 = v38;
  if (v10)
  {
    if ((a3 & 0x8000000000000000) != 0)
    {
      v17 = a3;
    }

    else
    {
      v17 = a3 & 0xFFFFFFFFFFFFFF8;
    }

    if (sub_219BF7214() < v21)
    {
      goto LABEL_111;
    }

    v43 = sub_219BF7214();
  }

  else
  {
    v43 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v43 < v21)
    {
      goto LABEL_111;
    }
  }

  if (v43 < v6)
  {
LABEL_112:
    __break(1u);
    goto LABEL_113;
  }

  if (v34)
  {
LABEL_113:
    __break(1u);
    goto LABEL_114;
  }

  if ((a3 & 0xC000000000000001) == 0 || v21 == v6)
  {

    if (!v10)
    {
      goto LABEL_65;
    }
  }

  else
  {
    if (v21 >= v6)
    {
LABEL_117:
      __break(1u);
LABEL_118:
      swift_unknownObjectRelease();
      goto LABEL_75;
    }

    sub_218731D50();

    v44 = v21;
    do
    {
      v45 = v44 + 1;
      sub_219BF7334();
      v44 = v45;
    }

    while (v6 != v45);
    if (!v10)
    {
LABEL_65:
      v17 = a3 & 0xFFFFFFFFFFFFFF8;
      v10 = (a3 & 0xFFFFFFFFFFFFFF8) + 32;
      v6 = (2 * v6) | 1;
      if (v14)
      {
        goto LABEL_66;
      }

LABEL_74:
      swift_unknownObjectRetain();
LABEL_75:
      sub_218B667DC(v18, v61, v62, v14);
      v27 = v51;
      goto LABEL_80;
    }
  }

  v17 = sub_219BF7564();
  v10 = v48;
  v21 = v49;
  v6 = v50;
  if ((v14 & 1) == 0)
  {
    goto LABEL_74;
  }

LABEL_66:
  sub_219BF7934();
  swift_unknownObjectRetain_n();
  v46 = swift_dynamicCastClass();
  if (!v46)
  {
    swift_unknownObjectRelease();
    v46 = MEMORY[0x277D84F90];
  }

  v47 = *(v46 + 16);

  if (v47 != v41)
  {
    goto LABEL_118;
  }

  v27 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v27)
  {
    v27 = MEMORY[0x277D84F90];
LABEL_80:
    swift_unknownObjectRelease();
    if ((v6 & 1) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_82;
  }

  if ((v6 & 1) == 0)
  {
LABEL_81:
    sub_218B667DC(v17, v10, v21, v6);
    swift_unknownObjectRelease();
    goto LABEL_88;
  }

LABEL_82:
  sub_219BF7934();
  swift_unknownObjectRetain_n();
  v52 = swift_dynamicCastClass();
  if (!v52)
  {
    swift_unknownObjectRelease();
    v52 = MEMORY[0x277D84F90];
  }

  v53 = *(v52 + 16);

  if (__OFSUB__(v6 >> 1, v21))
  {
    __break(1u);
    goto LABEL_120;
  }

  if (v53 != (v6 >> 1) - v21)
  {
LABEL_120:
    swift_unknownObjectRelease_n();
    goto LABEL_81;
  }

  v54 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (!v54)
  {
    swift_unknownObjectRelease();
  }

LABEL_88:
  swift_unknownObjectRelease();
  return v27;
}