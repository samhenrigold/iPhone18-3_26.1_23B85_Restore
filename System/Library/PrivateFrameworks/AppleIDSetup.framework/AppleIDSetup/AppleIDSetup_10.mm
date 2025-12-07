uint64_t sub_24066DB0C()
{
  *(*v1 + 1032) = v0;

  if (v0)
  {
    v2 = sub_24066E1D4;
  }

  else
  {
    v2 = sub_24066DC20;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24066DC20()
{
  v52 = v0;
  (*(v0 + 1008))(*(v0 + 968), *(v0 + 984), *(v0 + 936));
  v1 = sub_240759AC4();
  v2 = sub_24075A5D4();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 1008);
    v4 = *(v0 + 968);
    v5 = *(v0 + 960);
    v6 = *(v0 + 952);
    v7 = *(v0 + 936);
    v8 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v51[0] = v50;
    *v8 = 136315138;
    v3(v5, v4, v7);
    v9 = sub_24075A0E4();
    v11 = v10;
    v12 = *(v6 + 8);
    v12(v4, v7);
    v13 = sub_2405BBA7C(v9, v11, v51);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_240579000, v1, v2, "Processed and ready to pack outMessage: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v50);
    MEMORY[0x245CC76B0](v50, -1, -1);
    MEMORY[0x245CC76B0](v8, -1, -1);
  }

  else
  {
    v15 = *(v0 + 968);
    v16 = *(v0 + 952);
    v17 = *(v0 + 936);

    v12 = *(v16 + 8);
    v12(v15, v17);
  }

  v18 = *(v0 + 1032);
  v19 = *(v0 + 984);
  v20 = type metadata accessor for MessagePacker(0, *(v0 + 936), *(v0 + 944), v14);
  v21 = MessagePacker.pack(_:)(v19, v20);
  v22 = *(v0 + 992);
  v23 = *(v0 + 936);
  v12(*(v0 + 984), v23);
  v12(v22, v23);
  if (v18)
  {

    v24 = v18;
    v25 = sub_240759AC4();
    v26 = sub_24075A5E4();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v51[0] = v29;
      *v27 = 136315394;
      v30 = sub_240759F84();
      v32 = sub_2405BBA7C(v30, v31, v51);

      *(v27 + 4) = v32;
      *(v27 + 12) = 2112;
      v33 = v18;
      v34 = _swift_stdlib_bridgeErrorToNSError();
      *(v27 + 14) = v34;
      *v28 = v34;
      _os_log_impl(&dword_240579000, v25, v26, "Failed to handle incoming request: %s with error: %@", v27, 0x16u);
      sub_2405B8A50(v28, &qword_27E4B92A0, &qword_240762400);
      MEMORY[0x245CC76B0](v28, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x245CC76B0](v29, -1, -1);
      MEMORY[0x245CC76B0](v27, -1, -1);
    }

    v35 = v18;
    v21 = 0;
  }

  else
  {
  }

  v36 = v18;
  v37 = sub_240759AC4();
  v38 = sub_24075A5C4();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v51[0] = v41;
    *v39 = 136315394;
    *(v0 + 856) = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4BB810, &qword_2407747D0);
    v42 = sub_24075A0E4();
    v44 = sub_2405BBA7C(v42, v43, v51);

    *(v39 + 4) = v44;
    *(v39 + 12) = 2112;
    if (v18)
    {
      v45 = v18;
      v46 = _swift_stdlib_bridgeErrorToNSError();
      v47 = v46;
    }

    else
    {
      v46 = 0;
      v47 = 0;
    }

    *(v39 + 14) = v46;
    *v40 = v47;
    _os_log_impl(&dword_240579000, v37, v38, "Sending outResponse: %s, outError: %@", v39, 0x16u);
    sub_2405B8A50(v40, &qword_27E4B92A0, &qword_240762400);
    MEMORY[0x245CC76B0](v40, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v41);
    MEMORY[0x245CC76B0](v41, -1, -1);
    MEMORY[0x245CC76B0](v39, -1, -1);
  }

  else
  {
  }

  (*(v0 + 920))(v21, 0, v18);

  v48 = *(v0 + 8);

  return v48();
}

uint64_t sub_24066E1D4()
{
  v29 = v0;
  (*(*(v0 + 952) + 8))(*(v0 + 992), *(v0 + 936));
  v1 = *(v0 + 1032);

  v2 = v1;
  v3 = sub_240759AC4();
  v4 = sub_24075A5E4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v28 = v7;
    *v5 = 136315394;
    v8 = sub_240759F84();
    v10 = sub_2405BBA7C(v8, v9, &v28);

    *(v5 + 4) = v10;
    *(v5 + 12) = 2112;
    v11 = v1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 14) = v12;
    *v6 = v12;
    _os_log_impl(&dword_240579000, v3, v4, "Failed to handle incoming request: %s with error: %@", v5, 0x16u);
    sub_2405B8A50(v6, &qword_27E4B92A0, &qword_240762400);
    MEMORY[0x245CC76B0](v6, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x245CC76B0](v7, -1, -1);
    MEMORY[0x245CC76B0](v5, -1, -1);
  }

  v13 = v1;
  v14 = v1;
  v15 = sub_240759AC4();
  v16 = sub_24075A5C4();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v28 = v19;
    *v17 = 136315394;
    *(v0 + 856) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4BB810, &qword_2407747D0);
    v20 = sub_24075A0E4();
    v22 = sub_2405BBA7C(v20, v21, &v28);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2112;
    if (v1)
    {
      v23 = v1;
      v24 = _swift_stdlib_bridgeErrorToNSError();
      v25 = v24;
    }

    else
    {
      v24 = 0;
      v25 = 0;
    }

    *(v17 + 14) = v24;
    *v18 = v25;
    _os_log_impl(&dword_240579000, v15, v16, "Sending outResponse: %s, outError: %@", v17, 0x16u);
    sub_2405B8A50(v18, &qword_27E4B92A0, &qword_240762400);
    MEMORY[0x245CC76B0](v18, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x245CC76B0](v19, -1, -1);
    MEMORY[0x245CC76B0](v17, -1, -1);
  }

  else
  {
  }

  (*(v0 + 920))(0, 0, v1);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_24066E5C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v67 = sub_24075A0B4();
  v68 = v4;
  sub_24075A814();
  if (!*(a1 + 16) || (v5 = sub_2405BB338(v66), (v6 & 1) == 0))
  {
    sub_2405BD160(v66);
    goto LABEL_6;
  }

  sub_2405BD1CC(*(a1 + 56) + 32 * v5, &v67);
  sub_2405BD160(v66);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    v63 = 0;
    v7 = 1;
    goto LABEL_7;
  }

  v7 = 0;
  v63 = v64;
LABEL_7:
  v69 = v7;
  v67 = sub_24075A0B4();
  v68 = v8;
  sub_24075A814();
  if (*(a1 + 16) && (v9 = sub_2405BB338(v66), (v10 & 1) != 0))
  {
    sub_2405BD1CC(*(a1 + 56) + 32 * v9, &v67);
    sub_2405BD160(v66);
    v11 = swift_dynamicCast();
    if (v11)
    {
      v12 = v64;
    }

    else
    {
      v12 = 0;
    }

    if (v11)
    {
      v13 = v65;
    }

    else
    {
      v13 = 0;
    }

    v61 = v13;
    v62 = v12;
  }

  else
  {
    sub_2405BD160(v66);
    v61 = 0;
    v62 = 0;
  }

  v67 = sub_24075A0B4();
  v68 = v14;
  sub_24075A814();
  if (*(a1 + 16) && (v15 = sub_2405BB338(v66), (v16 & 1) != 0))
  {
    sub_2405BD1CC(*(a1 + 56) + 32 * v15, &v67);
    sub_2405BD160(v66);
    v17 = swift_dynamicCast();
    if (v17)
    {
      v18 = v64;
    }

    else
    {
      v18 = 0;
    }

    if (v17)
    {
      v19 = v65;
    }

    else
    {
      v19 = 0;
    }

    v59 = v19;
    v60 = v18;
  }

  else
  {
    sub_2405BD160(v66);
    v59 = 0;
    v60 = 0;
  }

  v67 = sub_24075A0B4();
  v68 = v20;
  sub_24075A814();
  if (*(a1 + 16) && (v21 = sub_2405BB338(v66), (v22 & 1) != 0))
  {
    sub_2405BD1CC(*(a1 + 56) + 32 * v21, &v67);
    sub_2405BD160(v66);
    v23 = swift_dynamicCast();
    if (v23)
    {
      v24 = v64;
    }

    else
    {
      v24 = 0;
    }

    if (v23)
    {
      v25 = v65;
    }

    else
    {
      v25 = 0;
    }

    v57 = v25;
    v58 = v24;
  }

  else
  {
    sub_2405BD160(v66);
    v57 = 0;
    v58 = 0;
  }

  v67 = sub_24075A0B4();
  v68 = v26;
  sub_24075A814();
  if (*(a1 + 16) && (v27 = sub_2405BB338(v66), (v28 & 1) != 0))
  {
    sub_2405BD1CC(*(a1 + 56) + 32 * v27, &v67);
    sub_2405BD160(v66);
    v29 = swift_dynamicCast();
    if (v29)
    {
      v30 = v64;
    }

    else
    {
      v30 = 0;
    }

    if (v29)
    {
      v31 = v65;
    }

    else
    {
      v31 = 0;
    }
  }

  else
  {
    sub_2405BD160(v66);
    v30 = 0;
    v31 = 0;
  }

  v67 = sub_24075A0B4();
  v68 = v32;
  sub_24075A814();
  if (*(a1 + 16) && (v33 = sub_2405BB338(v66), (v34 & 1) != 0))
  {
    sub_2405BD1CC(*(a1 + 56) + 32 * v33, &v67);
    sub_2405BD160(v66);
    v35 = swift_dynamicCast();
    if (v35)
    {
      v36 = v64;
    }

    else
    {
      v36 = 0;
    }

    if (v35)
    {
      v37 = v65;
    }

    else
    {
      v37 = 0;
    }
  }

  else
  {
    sub_2405BD160(v66);
    v36 = 0;
    v37 = 0;
  }

  v67 = sub_24075A0B4();
  v68 = v38;
  sub_24075A814();
  if (*(a1 + 16) && (v39 = sub_2405BB338(v66), (v40 & 1) != 0))
  {
    sub_2405BD1CC(*(a1 + 56) + 32 * v39, &v67);
    sub_2405BD160(v66);
    v41 = swift_dynamicCast();
    if (v41)
    {
      v42 = v64;
    }

    else
    {
      v42 = 0;
    }

    if (v41)
    {
      v43 = v65;
    }

    else
    {
      v43 = 0;
    }
  }

  else
  {
    sub_2405BD160(v66);
    v42 = 0;
    v43 = 0;
  }

  v67 = sub_24075A0B4();
  v68 = v44;
  sub_24075A814();
  if (*(a1 + 16) && (v45 = sub_2405BB338(v66), (v46 & 1) != 0))
  {
    sub_2405BD1CC(*(a1 + 56) + 32 * v45, &v67);
    sub_2405BD160(v66);
    v47 = swift_dynamicCast();
    if (v47)
    {
      v48 = v64;
    }

    else
    {
      v48 = 0;
    }

    if (v47)
    {
      v49 = v65;
    }

    else
    {
      v49 = 0;
    }
  }

  else
  {
    sub_2405BD160(v66);
    v48 = 0;
    v49 = 0;
  }

  v67 = sub_24075A0B4();
  v68 = v50;
  sub_24075A814();
  if (!*(a1 + 16) || (v51 = sub_2405BB338(v66), (v52 & 1) == 0))
  {

    result = sub_2405BD160(v66);
    goto LABEL_78;
  }

  sub_2405BD1CC(*(a1 + 56) + 32 * v51, &v67);
  sub_2405BD160(v66);

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_78:
    v55 = 0;
    v54 = 1;
    goto LABEL_79;
  }

  v54 = 0;
  v55 = v64;
LABEL_79:
  v56 = v69;
  *a2 = v63;
  *(a2 + 4) = v56;
  *(a2 + 8) = v62;
  *(a2 + 16) = v61;
  *(a2 + 24) = v60;
  *(a2 + 32) = v59;
  *(a2 + 40) = v58;
  *(a2 + 48) = v57;
  *(a2 + 56) = v30;
  *(a2 + 64) = v31;
  *(a2 + 72) = v36;
  *(a2 + 80) = v37;
  *(a2 + 88) = v42;
  *(a2 + 96) = v43;
  *(a2 + 104) = v48;
  *(a2 + 112) = v49;
  *(a2 + 120) = v55;
  *(a2 + 128) = v54;
  return result;
}

uint64_t sub_24066EC24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 328) = a7;
  *(v8 + 336) = a8;
  *(v8 + 145) = a6;
  *(v8 + 312) = a4;
  *(v8 + 320) = a5;
  *(v8 + 296) = a2;
  *(v8 + 304) = a3;
  *(v8 + 288) = a1;
  v9 = *(a3 + 112);
  *(v8 + 112) = *(a3 + 96);
  *(v8 + 128) = v9;
  *(v8 + 144) = *(a3 + 128);
  v10 = *(a3 + 48);
  *(v8 + 48) = *(a3 + 32);
  *(v8 + 64) = v10;
  v11 = *(a3 + 80);
  *(v8 + 80) = *(a3 + 64);
  *(v8 + 96) = v11;
  v12 = *(a3 + 16);
  *(v8 + 16) = *a3;
  *(v8 + 32) = v12;
  return MEMORY[0x2822009F8](sub_24066EC7C, 0, 0);
}

uint64_t sub_24066EC7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + 145))
  {
    v23 = (*(v4 + 312) + **(v4 + 312));
    v5 = swift_task_alloc();
    *(v4 + 360) = v5;
    *v5 = v4;
    v5[1] = sub_24066EFEC;
    v6 = *(v4 + 288);
    v7 = *(v4 + 296);

    return v23(v6, v7, v4 + 16);
  }

  else
  {
    v9 = *(v4 + 328);
    v10 = *(v4 + 336);
    v11 = *(v4 + 304);
    v12 = *(v4 + 312);
    *(v4 + 152) = *v11;
    v13 = *(v11 + 48);
    v14 = *(v11 + 64);
    v15 = *(v11 + 32);
    *(v4 + 168) = *(v11 + 16);
    *(v4 + 216) = v14;
    *(v4 + 200) = v13;
    *(v4 + 184) = v15;
    v17 = *(v11 + 96);
    v16 = *(v11 + 112);
    v18 = *(v11 + 128);
    *(v4 + 232) = *(v11 + 80);
    *(v4 + 280) = v18;
    *(v4 + 264) = v16;
    *(v4 + 248) = v17;
    type metadata accessor for RapportTransport.MessageInfo(255, v9, v10, a4);
    v19 = sub_24075A714();
    (*(*(v19 - 8) + 8))(v4 + 152, v19);
    v24 = (v12 + *v12);
    v20 = swift_task_alloc();
    *(v4 + 344) = v20;
    *v20 = v4;
    v20[1] = sub_24066EED8;
    v21 = *(v4 + 288);
    v22 = *(v4 + 296);

    return v24(v21, v22);
  }
}

uint64_t sub_24066EED8()
{
  *(*v1 + 352) = v0;

  if (v0)
  {
    v2 = sub_24066F118;
  }

  else
  {
    v2 = sub_24066F100;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24066EFEC()
{
  *(*v1 + 368) = v0;

  if (v0)
  {
    v2 = sub_24066F130;
  }

  else
  {
    v2 = sub_24066F100;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24066F148(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v6 = *(a1 + 32);
  v7 = sub_240759F74();
  if (a3)
  {
    a3 = sub_240759F74();
  }

  v8 = _Block_copy(a4);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;

  v6(v7, a3, sub_240672190, v9);
}

void sub_24066F254(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  if (a1)
  {
    v7 = sub_240759F54();
    if (!v6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = 0;
  if (a2)
  {
LABEL_3:
    v6 = sub_240759F54();
  }

LABEL_4:
  if (a3)
  {
    v8 = sub_2407595C4();
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  (*(a4 + 16))(a4, v7, v6);
}

uint64_t sub_24066F33C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = type metadata accessor for RapportTransport.Activated(0, a5, a6, a4);
  *(a7 + v14[11]) = 0;
  v15 = v14[12];
  v17 = type metadata accessor for RapportTransport(0, a5, a6, v16);
  (*(*(v17 - 8) + 32))(a7, a1, v17);
  *(a7 + v15) = a2;
  v18 = v14[9];
  v20 = type metadata accessor for MessagePacker(0, a5, a6, v19);
  (*(*(v20 - 8) + 32))(a7 + v18, a3, v20);
  v21 = v14[10];
  v23 = type metadata accessor for MessageUnpacker(0, a5, a6, v22);
  v24 = *(*(v23 - 8) + 32);

  return v24(a7 + v21, a4, v23);
}

void sub_24066F498(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, void *a7)
{
  v12 = sub_24075A084();
  if (a3)
  {
    a3 = sub_240759F54();
  }

  v13 = swift_allocObject();
  v13[2] = a4;
  v13[3] = a5;
  v13[4] = a7;
  v16[4] = sub_240672534;
  v16[5] = v13;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 1107296256;
  v16[2] = sub_24066F148;
  v16[3] = &block_descriptor_117;
  v14 = _Block_copy(v16);

  v15 = a7;

  [a6 registerRequestID:v12 options:a3 handler:v14];
  _Block_release(v14);
}

uint64_t sub_24066F5E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t (*)(), void *), uint64_t a6, void *a7)
{
  v13 = swift_allocObject();
  v13[2] = a7;
  v13[3] = a3;
  v13[4] = a4;
  v14 = a7;

  a5(a2, a1, sub_240672580, v13);
}

uint64_t sub_24066F698(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22 = a5;
  v24 = a4;
  v10 = sub_240759C94();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_240759CE4();
  v14 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v17 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CCA590] code:a1 userInfo:0];
  }

  else
  {
    v17 = 0;
  }

  v18 = swift_allocObject();
  v18[2] = v22;
  v18[3] = a6;
  v18[4] = a3;
  v18[5] = a2;
  v18[6] = v17;
  aBlock[4] = sub_24067258C;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_240644810;
  aBlock[3] = &block_descriptor_126_0;
  v19 = _Block_copy(aBlock);
  v20 = v17;

  sub_240759CC4();
  v25 = MEMORY[0x277D84F90];
  sub_240672478();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9B60, &unk_240770600);
  sub_2406724D0();
  sub_24075A794();
  MEMORY[0x245CC6370](0, v16, v13, v19);
  _Block_release(v19);

  (*(v11 + 8))(v13, v10);
  (*(v14 + 8))(v16, v23);
}

uint64_t sub_24066F988(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v6 = *(a1 + 32);
  v7 = sub_24075A0B4();
  v9 = v8;
  if (a3)
  {
    a3 = sub_240759F74();
  }

  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;

  v6(v7, v9, a3, sub_240672428, v11);
}

uint64_t sub_24066FA8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    v8 = sub_240759F54();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_240759F54();
  v13[4] = a3;
  v13[5] = a4;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_2406AE9F0;
  v13[3] = &block_descriptor_96;
  v10 = _Block_copy(v13);
  v11 = *(a5 + 16);

  v11(a5, v8, v9, v10);
  _Block_release(v10);
}

uint64_t sub_24066FBB8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = sub_24075A0B4();
  v5 = v4;

  v2(v3, v5);
}

void sub_24066FC24(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  v13 = sub_24075A084();
  v14 = sub_240759F54();
  if (a3)
  {
    a3 = sub_240759F54();
  }

  v15 = swift_allocObject();
  v15[2] = a8;
  v15[3] = a5;
  v15[4] = a6;
  v18[4] = sub_240672438;
  v18[5] = v15;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 1107296256;
  v18[2] = sub_240670094;
  v18[3] = &block_descriptor_105;
  v16 = _Block_copy(v18);
  v17 = a8;

  [a7 sendRequestID:v13 request:v14 options:a3 responseHandler:v16];
  _Block_release(v16);
}

uint64_t sub_24066FD98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v33 = a4;
  v11 = sub_240759C94();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_240759CE4();
  v15 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v18 = sub_2407595C4();
    v31 = v17;
    v19 = v14;
    v20 = v11;
    v21 = v15;
    v22 = a1;
    v23 = v12;
    v24 = a6;
    v25 = a2;
    v26 = a5;
    v27 = v18;
    LODWORD(a3) = NSErrorToOSStatus();

    a5 = v26;
    a2 = v25;
    a6 = v24;
    v12 = v23;
    a1 = v22;
    v15 = v21;
    v11 = v20;
    v14 = v19;
    v17 = v31;
  }

  v28 = swift_allocObject();
  *(v28 + 16) = a5;
  *(v28 + 24) = a6;
  *(v28 + 32) = a3;
  *(v28 + 40) = a2;
  *(v28 + 48) = a1;
  aBlock[4] = sub_240672444;
  aBlock[5] = v28;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_240644810;
  aBlock[3] = &block_descriptor_111;
  v29 = _Block_copy(aBlock);

  sub_240759CC4();
  v34 = MEMORY[0x277D84F90];
  sub_240672478();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9B60, &unk_240770600);
  sub_2406724D0();
  sub_24075A794();
  MEMORY[0x245CC6370](0, v17, v14, v29);
  _Block_release(v29);
  (*(v12 + 8))(v14, v11);
  (*(v15 + 8))(v17, v32);
}

uint64_t sub_240670094(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v6 = *(a1 + 32);
  if (a2)
  {
    v7 = sub_240759F74();
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = 0;
  if (a3)
  {
LABEL_3:
    v5 = sub_240759F74();
  }

LABEL_4:

  v8 = a4;
  v6(v7, v5, a4);
}

uint64_t sub_240670178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5)
{
  v7 = *(a1 + 32);
  v8 = sub_24075A0B4();
  v10 = v9;
  if (a3)
  {
    a3 = sub_240759F74();
  }

  v11 = sub_240759F74();
  v12 = _Block_copy(a5);
  v13 = swift_allocObject();
  *(v13 + 16) = v12;

  v7(v8, v10, a3, v11, sub_240672430, v13);
}

uint64_t RapportTransport.Activated.base.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v5 = type metadata accessor for RapportTransport(0, *(a1 + 16), *(a1 + 24), a2);
  v6 = *(*(v5 - 8) + 16);

  return v6(a3, v3, v5);
}

Swift::Void __swiftcall RapportTransport.Activated.invalidate()()
{
  v2 = v0;
  v3 = *(v0 + 48);
  *(v1 + *(v0 + 44)) = 1;
  v4 = *(v1 + v3);
  [v4 invalidate];
  [*v1 invalidate];

  *(v1 + v3) = 0;
  v5 = *(*(v2 - 8) + 8);

  v5(v1, v2);
}

uint64_t sub_2406703D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(a3 + 16);
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2406704B0, 0, 0);
}

uint64_t sub_2406704B0()
{
  v41 = v0;
  if (qword_27E4B5F48 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[3];
  v5 = sub_240759AE4();
  v0[11] = __swift_project_value_buffer(v5, qword_27E4BAB58);
  v6 = *(v3 + 16);
  v0[12] = v6;
  v0[13] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = sub_240759AC4();
  v8 = sub_24075A5D4();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[10];
  if (v9)
  {
    v11 = v0[9];
    v13 = v0[6];
    v12 = v0[7];
    v14 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v40[0] = v39;
    *v14 = 136315138;
    v6(v11, v10, v13);
    v15 = sub_24075A0E4();
    v17 = v16;
    v18 = *(v12 + 8);
    v18(v10, v13);
    v19 = sub_2405BBA7C(v15, v17, v40);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_240579000, v7, v8, "Performing unicast send of outMessage: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v39);
    MEMORY[0x245CC76B0](v39, -1, -1);
    MEMORY[0x245CC76B0](v14, -1, -1);
  }

  else
  {
    v21 = v0[6];
    v22 = v0[7];

    v18 = *(v22 + 8);
    v18(v10, v21);
  }

  v0[14] = v18;
  v23 = v0[6];
  v24 = v0[3];
  v25 = *(v0[4] + 24);
  v0[15] = v25;
  v26 = type metadata accessor for MessagePacker(0, v23, v25, v20);
  v27 = MessagePacker.pack(_:)(v24, v26);
  v0[16] = v27;
  v28 = v27;

  v29 = sub_240759AC4();
  v30 = sub_24075A5D4();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v40[0] = v32;
    *v31 = 136315138;
    v33 = sub_240759F84();
    v35 = sub_2405BBA7C(v33, v34, v40);

    *(v31 + 4) = v35;
    _os_log_impl(&dword_240579000, v29, v30, "Packed message into outRequest: %s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v32);
    MEMORY[0x245CC76B0](v32, -1, -1);
    MEMORY[0x245CC76B0](v31, -1, -1);
  }

  v36 = swift_task_alloc();
  v0[17] = v36;
  *v36 = v0;
  v36[1] = sub_2406708B8;
  v37 = v0[4];

  return sub_240670DB4(v28, v37);
}

uint64_t sub_2406708B8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 144) = a1;
  *(v3 + 152) = v1;

  if (v1)
  {
    v4 = sub_240670D2C;
  }

  else
  {

    v4 = sub_2406709D4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2406709D4()
{
  v32 = v0;

  v1 = sub_240759AC4();
  v2 = sub_24075A5D4();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v31[0] = v4;
    *v3 = 136315138;
    v5 = sub_240759F84();
    v7 = sub_2405BBA7C(v5, v6, v31);

    *(v3 + 4) = v7;
    _os_log_impl(&dword_240579000, v1, v2, "Sent message and received inResponse: %s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v4);
    MEMORY[0x245CC76B0](v4, -1, -1);
    MEMORY[0x245CC76B0](v3, -1, -1);
  }

  v8 = *(v0 + 144);
  v9 = *(v0 + 152);
  v10 = *(v0 + 16);
  v12 = type metadata accessor for MessageUnpacker(0, *(v0 + 48), *(v0 + 120), v11);
  MessageUnpacker.unpack(_:)(v8, v12, v10);

  if (!v9)
  {
    (*(v0 + 96))(*(v0 + 64), *(v0 + 16), *(v0 + 48));
    v13 = sub_240759AC4();
    v14 = sub_24075A5D4();
    v15 = os_log_type_enabled(v13, v14);
    v16 = *(v0 + 112);
    if (v15)
    {
      v17 = *(v0 + 96);
      v19 = *(v0 + 64);
      v18 = *(v0 + 72);
      v20 = *(v0 + 48);
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v31[0] = v22;
      *v21 = 136315138;
      v17(v18, v19, v20);
      v23 = sub_24075A0E4();
      v25 = v24;
      v16(v19, v20);
      v26 = sub_2405BBA7C(v23, v25, v31);

      *(v21 + 4) = v26;
      _os_log_impl(&dword_240579000, v13, v14, "Unpacked response into inMessage: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x245CC76B0](v22, -1, -1);
      MEMORY[0x245CC76B0](v21, -1, -1);
    }

    else
    {
      v27 = *(v0 + 64);
      v28 = *(v0 + 48);

      v16(v27, v28);
    }
  }

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_240670D2C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_240670DB4(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_240670DD8, 0, 0);
}

uint64_t sub_240670DD8()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = swift_task_alloc();
  v0[6] = v4;
  v4[2] = *(v2 + 16);
  v4[3] = *(v2 + 24);
  v4[4] = v1;
  v4[5] = v3;
  v5 = swift_task_alloc();
  v0[7] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BAD88, &qword_2407705E0);
  *v5 = v0;
  v5[1] = sub_240670EFC;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0x5374736163696E75, 0xEF293A5F28646E65, sub_240671E50, v4, v6);
}

uint64_t sub_240670EFC()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_240659960;
  }

  else
  {

    v2 = sub_240671018;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_240671034(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BAD90, &unk_240774ED0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = aBlock - v8;
  v10 = *v3;
  v11 = sub_24075A084();
  v12 = sub_240759F54();
  (*(v7 + 16))(v9, a2, v6);
  v13 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = *(a3 + 16);
  (*(v7 + 32))(v14 + v13, v9, v6);
  aBlock[4] = sub_240671E9C;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_240670094;
  aBlock[3] = &block_descriptor_11;
  v15 = _Block_copy(aBlock);

  [v10 sendRequestID:v11 request:v12 options:0 responseHandler:v15];
  _Block_release(v15);
}

uint64_t sub_240671244(uint64_t a1, int a2, id a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BAD90, &unk_240774ED0);
    return sub_24075A364();
  }

  else
  {
    if (!a3)
    {
      type metadata accessor for RapportTransport.Activated.Failure(0, a5, a6, a4);
      swift_getWitnessTable();
      swift_allocError();
      a3 = 0;
      *v7 = 1;
    }

    v8 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BAD90, &unk_240774ED0);
    return sub_24075A354();
  }
}

id RapportTransport.Activated.messageSessionTemplate.getter(uint64_t a1)
{
  v2 = [*(v1 + *(a1 + 48)) templateSession];

  return v2;
}

uint64_t RapportTransport.Activated.send(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_240671390, 0, 0);
}

uint64_t sub_240671390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[4];
  if (*(v4[5] + *(v5 + 44)))
  {
    type metadata accessor for RapportTransport.Activated.Failure(0, *(v5 + 16), *(v5 + 24), a4);
    swift_getWitnessTable();
    swift_allocError();
    *v6 = 2;
    swift_willThrow();
    v7 = v4[1];

    return v7();
  }

  else
  {
    v9 = swift_task_alloc();
    v4[6] = v9;
    *v9 = v4;
    v9[1] = sub_2405D3110;
    v10 = v4[4];
    v11 = v4[2];
    v12 = v4[3];

    return sub_2406703D8(v11, v12, v10);
  }
}

uint64_t sub_2406714CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2405CE450;

  return RapportTransport.Activated.send(_:)(a1, a2, a3);
}

void sub_24067157C(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  (*(v2 + 16))(&v3 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  RapportTransport.Activated.invalidate()();
}

uint64_t RapportTransport.MessageInfo.peerAddressString.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t RapportTransport.MessageInfo.verifiedIdentity.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t RapportTransport.MessageInfo.peerAltDsid.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t RapportTransport.MessageInfo.peerDsid.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t RapportTransport.MessageInfo.peerDeviceName.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t RapportTransport.MessageInfo.peerIdentifier.getter()
{
  v1 = *(v0 + 88);

  return v1;
}

uint64_t RapportTransport.MessageInfo.peerModel.getter()
{
  v1 = *(v0 + 104);

  return v1;
}

uint64_t sub_2406717AC()
{
  v0 = sub_240759AE4();
  __swift_allocate_value_buffer(v0, qword_280FADA28);
  __swift_project_value_buffer(v0, qword_280FADA28);
  return sub_240759AD4();
}

uint64_t static AISLogger.rpTransport.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_280FADA20 != -1)
  {
    swift_once();
  }

  v2 = sub_240759AE4();
  v3 = __swift_project_value_buffer(v2, qword_280FADA28);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2406718D4(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_2406718EC(result, a2);
  }

  return result;
}

uint64_t sub_240671928(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void sub_24067196C(uint64_t a1)
{
  sub_240590794(319, &qword_27E4BAB70, 0x277D44160);
  if (v1 <= 0x3F)
  {
    sub_240590794(319, &qword_280FAD6F0, 0x277D85C78);
    if (v2 <= 0x3F)
    {
      sub_240671AA8(319, &qword_27E4B6CC0, &qword_27E4B6CC8, &qword_24075EC18);
      if (v3 <= 0x3F)
      {
        sub_240671AA8(319, qword_27E4B7280, &qword_27E4B71D0, &unk_240770200);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_240671AA8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_24075A714();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_240671B04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  type metadata accessor for RapportTransport(319, v4, v5, a4);
  if (v7 <= 0x3F)
  {
    type metadata accessor for MessagePacker(319, v4, v5, v6);
    if (v9 <= 0x3F)
    {
      type metadata accessor for MessageUnpacker(319, v4, v5, v8);
      if (v10 <= 0x3F)
      {
        sub_240671C24(319);
        if (v11 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_240671C24(uint64_t a1)
{
  if (!qword_27E4BAB78)
  {
    sub_240590794(255, qword_27E4BAB80, 0x277D02888);
    v1 = sub_24075A714();
    if (!v2)
    {
      atomic_store(v1, &qword_27E4BAB78);
    }
  }
}

uint64_t sub_240671C8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy129_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_240671CFC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 129))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_240671D58(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 128) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 129) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 129) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_240671DD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_240671E50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4[2];
  v7 = v4[3];
  v8 = v4[5];
  v9 = type metadata accessor for RapportTransport.Activated(0, v6, v7, a4);
  sub_240671034(v8, a1, v9);
}

uint64_t sub_240671E9C(uint64_t a1, int a2, void *a3)
{
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BAD90, &unk_240774ED0) - 8);
  v10 = v3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));

  return sub_240671244(a1, a2, a3, v10, v7, v8);
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_240671F5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 16);
  v10 = *(v4 + 24);
  v11 = *(type metadata accessor for MessageUnpacker(0, v9, v10, a4) - 8);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = (*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = *(type metadata accessor for MessagePacker(0, v9, v10, v14) - 8);
  return sub_24066CD60(a1, a2, a3, a4, v4 + v12, *(v4 + v13), *(v4 + v13 + 8), *(v4 + v13 + 16), v4 + ((v13 + *(v15 + 80) + 17) & ~*(v15 + 80)), v9, v10);
}

uint64_t sub_240672098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for RapportTransport(0, *(v4 + 16), *(v4 + 24), a4);
  v7 = *(v5 - 8);
  result = v5 - 8;
  v8 = *(v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + 64);
  if (v8)
  {
    return v8();
  }

  return result;
}

id sub_240672108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(type metadata accessor for RapportTransport(0, *(v4 + 16), *(v4 + 24), a4) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  [*(v4 + 32) activate];
  v7 = *(v4 + v6);

  return [v7 activateWithCompletion_];
}

uint64_t sub_240672198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v7 = v4[4];
  v8 = v4[5];
  v9 = *(type metadata accessor for MessageUnpacker(0, v7, v8, a4) - 8);
  v10 = (*(v9 + 80) + 56) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  type metadata accessor for MessagePacker(0, v7, v8, v12);
  v20 = v4[3];
  v21 = v4[2];
  v18 = *(v4 + v11);
  v19 = v4[6];
  v13 = (v4 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8));
  v14 = *v13;
  v17 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_2405CE450;

  return sub_24066D0C0(a1, v21, v20, v19, v4 + v10, v18, v14, v17);
}

void sub_2406723C8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = sub_24075A084();
  [v3 deregisterRequestID_];
}

unint64_t sub_240672478()
{
  result = qword_27E4B9B58;
  if (!qword_27E4B9B58)
  {
    sub_240759C94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9B58);
  }

  return result;
}

unint64_t sub_2406724D0()
{
  result = qword_27E4B9B68;
  if (!qword_27E4B9B68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E4B9B60, &unk_240770600);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9B68);
  }

  return result;
}

uint64_t objectdestroy_101Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_240672618()
{
  v0 = sub_240759AE4();
  __swift_allocate_value_buffer(v0, qword_27E4BAD98);
  v1 = __swift_project_value_buffer(v0, qword_27E4BAD98);
  if (qword_280FAD9F0 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280FADA00);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t _s12AppleIDSetup31BiometricAuthenticationProviderV07attemptcD03for14localizedTitle0H6ReasonySo8LAPolicyV_S2StYaAA0cD5ErrorOYKF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  sub_24075A3A4();
  v5[7] = sub_24075A394();
  v7 = sub_24075A344();
  v5[8] = v7;
  v5[9] = v6;

  return MEMORY[0x2822009F8](sub_2406727AC, v7, v6);
}

uint64_t sub_2406727AC()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CD4790]) init];
  v0[10] = v1;
  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = sub_24067286C;
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[2];

  return sub_240672A78(v7, v1, v5, v6, v3, v4);
}

uint64_t sub_24067286C(uint64_t a1, char a2)
{
  v6 = *v3;

  if (v2)
  {
    *(v6 + 104) = a2;
    *(v6 + 96) = a1;
    v7 = *(v6 + 64);
    v8 = *(v6 + 72);
    v9 = sub_240672A00;
  }

  else
  {

    v7 = *(v6 + 64);
    v8 = *(v6 + 72);
    v9 = sub_24067299C;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_24067299C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_240672A00()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 80);

  v3 = *(v0 + 8);
  v4 = *(v0 + 96);

  return v3(v4, v1 & 1);
}

uint64_t sub_240672A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[50] = a5;
  v6[51] = a6;
  v6[48] = a3;
  v6[49] = a4;
  v6[46] = a1;
  v6[47] = a2;
  sub_24075A3A4();
  v6[52] = sub_24075A394();
  v7 = sub_24075A344();
  v6[53] = v7;
  v6[54] = v8;

  return MEMORY[0x2822009F8](sub_240672B4C, v7, v8);
}

uint64_t sub_240672B4C()
{
  v37 = v0;
  v36[1] = *MEMORY[0x277D85DE8];
  v2 = *(v0 + 368);
  v1 = *(v0 + 376);
  *(v0 + 352) = 0;
  v3 = [v1 canEvaluatePolicy:v2 error:v0 + 352];
  *(v0 + 329) = v3;
  v4 = *(v0 + 352);
  *(v0 + 440) = v4;
  if (v3)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v18 = *(v0 + 400);
    v17 = *(v0 + 408);
    v20 = *(v0 + 384);
    v19 = *(v0 + 392);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9FB0, &unk_24076DC50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_240762420;
    *(v0 + 332) = 1037;
    sub_24075A814();
    v22 = MEMORY[0x277D837D0];
    *(inited + 96) = MEMORY[0x277D837D0];
    *(inited + 72) = v20;
    *(inited + 80) = v19;
    *(v0 + 348) = 1031;

    sub_24075A814();
    *(inited + 168) = v22;
    *(inited + 144) = v18;
    *(inited + 152) = v17;

    sub_2405BD674(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B73D0, &qword_240770790);
    swift_arrayDestroy();
    if (qword_27E4B5F58 != -1)
    {
      swift_once();
    }

    v23 = sub_240759AE4();
    __swift_project_value_buffer(v23, qword_27E4BAD98);

    v24 = sub_240759AC4();
    v25 = sub_24075A5D4();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = *(v0 + 368);
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v36[0] = v28;
      *v27 = 134218242;
      *(v27 + 4) = v26;
      *(v27 + 12) = 2080;
      v29 = sub_240759F84();
      v31 = sub_2405BBA7C(v29, v30, v36);

      *(v27 + 14) = v31;
      _os_log_impl(&dword_240579000, v24, v25, "Evaluating policy %ld with options: %s", v27, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x245CC76B0](v28, -1, -1);
      MEMORY[0x245CC76B0](v27, -1, -1);
    }

    v32 = *(v0 + 368);
    v33 = *(v0 + 376);
    v34 = sub_240759F54();
    *(v0 + 448) = v34;

    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 360;
    *(v0 + 24) = sub_2406730D4;
    v35 = swift_continuation_init();
    *(v0 + 312) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BADB8, &qword_240770798);
    *(v0 + 256) = MEMORY[0x277D85DD0];
    *(v0 + 264) = 1107296256;
    *(v0 + 272) = sub_2406733BC;
    *(v0 + 280) = &block_descriptor_12;
    *(v0 + 288) = v35;
    [v33 evaluatePolicy:v32 options:v34 reply:v0 + 256];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    v6 = v4;

    if (qword_27E4B5F58 != -1)
    {
      swift_once();
    }

    v7 = sub_240759AE4();
    __swift_project_value_buffer(v7, qword_27E4BAD98);
    v8 = sub_240759AC4();
    v9 = sub_24075A5E4();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = *(v0 + 368);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 134218242;
      *(v11 + 4) = v10;
      *(v11 + 12) = 2112;
      *(v11 + 14) = v6;
      *v12 = v4;
      v13 = v6;
      _os_log_impl(&dword_240579000, v8, v9, "Cannot evaluate policy %ld due to error: %@", v11, 0x16u);
      sub_24061DD28(v12);
      MEMORY[0x245CC76B0](v12, -1, -1);
      MEMORY[0x245CC76B0](v11, -1, -1);
    }

    *(v0 + 320) = v4;
    *(v0 + 328) = 0;
    sub_240673D54();
    swift_willThrowTypedImpl();
    if (*(v0 + 440))
    {
      v14 = 0;
    }

    else
    {
      v14 = *(v0 + 329);
    }

    v15 = *(v0 + 8);

    return v15(v4, v14);
  }
}

uint64_t sub_2406730D4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 456) = v2;
  v3 = *(v1 + 432);
  v4 = *(v1 + 424);
  if (v2)
  {
    v5 = sub_2406732DC;
  }

  else
  {
    v5 = sub_240673230;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_240673230()
{
  v1 = *(v0 + 448);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2406732DC()
{
  v1 = *(v0 + 448);
  v2 = *(v0 + 456);

  swift_willThrow();

  *(v0 + 336) = v2;
  *(v0 + 344) = 1;
  sub_240673D54();
  swift_willThrowTypedImpl();
  if (*(v0 + 440))
  {
    v3 = 0;
  }

  else
  {
    v3 = *(v0 + 329);
  }

  v4 = *(v0 + 8);

  return v4(v2, v3);
}

uint64_t sub_2406733BC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BD0, &qword_24076BB70);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    if (a2)
    {
      v9 = sub_240759F74();
    }

    else
    {
      v9 = 0;
    }

    **(*(v5 + 64) + 40) = v9;

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_2406734B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  sub_24075A3A4();
  v5[7] = sub_24075A394();
  v7 = sub_24075A344();
  v5[8] = v7;
  v5[9] = v6;

  return MEMORY[0x2822009F8](sub_240673558, v7, v6);
}

uint64_t sub_240673558()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CD4790]) init];
  v0[10] = v1;
  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = sub_240673618;
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[2];

  return sub_240672A78(v7, v1, v5, v6, v3, v4);
}

uint64_t sub_240673618(uint64_t a1, char a2)
{
  v6 = *v3;

  if (v2)
  {
    *(v6 + 104) = a2;
    *(v6 + 96) = a1;
    v7 = *(v6 + 64);
    v8 = *(v6 + 72);
    v9 = sub_240673DC0;
  }

  else
  {

    v7 = *(v6 + 64);
    v8 = *(v6 + 72);
    v9 = sub_240673DC4;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

BOOL sub_240673748(void *a1, char a2, void *a3, char a4)
{
  if ((a2 & 1) == 0)
  {
    if ((a4 & 1) == 0)
    {
      if (!a1)
      {
        return a3 == 0;
      }

      if (a3)
      {
        sub_2405FE2C0(a1);
        sub_2405FE2C0(a3);
        v19 = a1;
        v20 = [a1 domain];
        v21 = sub_24075A0B4();
        v23 = v22;

        v24 = [a3 domain];
        v25 = sub_24075A0B4();
        v27 = v26;

        if (v21 == v25 && v23 == v27)
        {
        }

        else
        {
          v32 = sub_24075ACF4();

          if ((v32 & 1) == 0)
          {
            sub_2405FDED4(a3);
            sub_2405FDED4(v19);
            return 0;
          }
        }

        v29 = [v19 code];
        v30 = [a3 code];
        sub_2405FDED4(a3);
        sub_2405FDED4(v19);
        return v29 == v30;
      }
    }

    return 0;
  }

  if ((a4 & 1) == 0)
  {
    return 0;
  }

  v5 = sub_2407595C4();
  v6 = sub_2407595C4();
  v7 = v5;
  v8 = v6;
  v9 = [v7 domain];
  v10 = sub_24075A0B4();
  v12 = v11;

  v13 = [v8 domain];
  v14 = sub_24075A0B4();
  v16 = v15;

  if (v10 != v14 || v12 != v16)
  {
    v28 = sub_24075ACF4();

    if (v28)
    {
      goto LABEL_14;
    }

    return 0;
  }

LABEL_14:
  v29 = [v7 code];
  v30 = [v8 code];

  return v29 == v30;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_240673A00(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_240673A48(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t _s12AppleIDSetup32BiometricAuthenticationProvidingP07attemptcD03for14localizedTitle0H6ReasonySo8LAPolicyV_S2StYaAA0cD5ErrorOYKFTj(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = (*(a7 + 8) + **(a7 + 8));
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_240673C00;

  return v17(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_240673C00(uint64_t a1, char a2)
{
  v6 = *v3;

  if (v2)
  {
    v7 = *(v6 + 8);

    return v7(a1, a2 & 1);
  }

  else
  {
    v9 = *(v6 + 8);

    return v9();
  }
}

unint64_t sub_240673D54()
{
  result = qword_27E4BADB0;
  if (!qword_27E4BADB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BADB0);
  }

  return result;
}

uint64_t static FeatureManager.shared.getter(uint64_t a1)
{
  type metadata accessor for FeatureManager();

  return swift_initStaticObject();
}

uint64_t sub_240673E1C(char *a1)
{
  v1 = *a1;
  v4[3] = &type metadata for AppleIDSetupFeature;
  v4[4] = sub_240673E74();
  LOBYTE(v4[0]) = v1;
  v2 = sub_2407598A4();
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v2 & 1;
}

unint64_t sub_240673E74()
{
  result = qword_280FADF68;
  if (!qword_280FADF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FADF68);
  }

  return result;
}

uint64_t FeatureFlagsKey.isFeatureEnabled.getter(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v6[3] = a1;
  v6[4] = a2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v6);
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_1, v2, v3);
  LOBYTE(v3) = sub_2407598A4();
  __swift_destroy_boxed_opaque_existential_1(v6);
  return v3 & 1;
}

id sub_2406740CC(uint64_t a1, SEL *a2)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v7[0] = 0;
  v3 = [v2 *a2];
  if (v3)
  {
    v4 = v7[0];
  }

  else
  {
    v5 = v7[0];
    sub_2407595D4();

    swift_willThrow();
  }

  return v3;
}

uint64_t sub_240674184(uint64_t a1)
{
  sub_240674524(a1, &v20);
  if (v21)
  {
    sub_24058C9C0(&v20, v22);
  }

  else
  {
    v2 = [objc_allocWithZone(MEMORY[0x277D4BA08]) init];
    v23 = sub_240674594();
    v24 = &protocol witness table for STManagementState;
    v22[0] = v2;
    if (v21)
    {
      sub_2406745E0(&v20);
    }
  }

  v3 = v23;
  v4 = v24;
  __swift_project_boxed_opaque_existential_1(v22, v23);
  v5 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v6 = (v4[1])(v5, v3, v4);

  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v22);
  }

  else
  {
    if ([v6 BOOLValue])
    {
      v7 = v23;
      v8 = v24;
      __swift_project_boxed_opaque_existential_1(v22, v23);
      v9 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      v14 = (v8[2])(v9, v7, v8);

      if ([v14 webFilterState]== 1)
      {
        LOBYTE(v5) = 1;
      }

      else
      {
        if (qword_280FAD9F0 != -1)
        {
          swift_once();
        }

        v15 = sub_240759AE4();
        __swift_project_value_buffer(v15, qword_280FADA00);
        v16 = sub_240759AC4();
        v17 = sub_24075A5C4();
        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          *v18 = 0;
          _os_log_impl(&dword_240579000, v16, v17, "Current user does not have a web filter set to auto, which would be an expected default setting", v18, 2u);
          MEMORY[0x245CC76B0](v18, -1, -1);
        }

        LOBYTE(v5) = 0;
      }

      v11 = v6;
    }

    else
    {
      if (qword_280FAD9F0 != -1)
      {
        swift_once();
      }

      v10 = sub_240759AE4();
      __swift_project_value_buffer(v10, qword_280FADA00);
      v11 = sub_240759AC4();
      v12 = sub_24075A5C4();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_240579000, v11, v12, "Current user does not have communication safety enabled", v13, 2u);
        MEMORY[0x245CC76B0](v13, -1, -1);
      }

      LOBYTE(v5) = 0;
      v14 = v6;
    }

    __swift_destroy_boxed_opaque_existential_1(v22);
  }

  return v5 & 1;
}

uint64_t sub_240674524(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BAAD8, qword_24076FBF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_240674594()
{
  result = qword_27E4BADC0;
  if (!qword_27E4BADC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E4BADC0);
  }

  return result;
}

uint64_t sub_2406745E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BAAD8, qword_24076FBF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AppleIDSetupFeature.isFeatureEnabled.getter()
{
  v1 = *v0;
  v4[3] = &type metadata for AppleIDSetupFeature;
  v4[4] = sub_240673E74();
  LOBYTE(v4[0]) = v1;
  v2 = sub_2407598A4();
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v2 & 1;
}

const char *AppleIDSetupFeature.domain.getter()
{
  v1 = *v0;
  if (v1 > 0xE)
  {
    return "AppleIDSetup";
  }

  if (((1 << v1) & 0x4C40) == 0)
  {
    if (v1 == 7)
    {
      return "GameCenter";
    }

    if (v1 == 12)
    {
      return "SwiftUI";
    }

    return "AppleIDSetup";
  }

  return "AuthKit";
}

const char *AppleIDSetupFeature.feature.getter()
{
  result = "PersonalizedChildSetupBuddy";
  switch(*v0)
  {
    case 1:
      result = "PersonalizedChildSetupSpyglass";
      break;
    case 2:
      result = "ChildSetupSignIn";
      break;
    case 3:
      result = "ProxAdvertisementOverride";
      break;
    case 4:
      result = "Sandstone";
      break;
    case 5:
      result = "SandstoneRepair";
      break;
    case 6:
      result = "SimpleProfiles";
      break;
    case 7:
      result = "auth_plugin_modernization";
      break;
    case 8:
      result = "MacProxSpyglass";
      break;
    case 9:
      result = "AgeAttestationSettings";
      break;
    case 0xA:
      result = "AgeMigration";
      break;
    case 0xB:
      result = "AgeBasedAccountSupport";
      break;
    case 0xC:
      result = "Solarium";
      break;
    case 0xD:
      result = "AgeBasedAccountRestrictions";
      break;
    case 0xE:
      result = "AgeAssurance";
      break;
    default:
      return result;
  }

  return result;
}

uint64_t AppleIDSetupFeature.hashValue.getter()
{
  v1 = *v0;
  sub_24075AE64();
  MEMORY[0x245CC6BA0](v1);
  return sub_24075AED4();
}

unint64_t sub_2406748CC()
{
  result = qword_27E4BADC8;
  if (!qword_27E4BADC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BADC8);
  }

  return result;
}

const char *sub_240674920()
{
  v1 = *v0;
  if (v1 > 0xE)
  {
    return "AppleIDSetup";
  }

  if (((1 << v1) & 0x4C40) == 0)
  {
    if (v1 == 7)
    {
      return "GameCenter";
    }

    if (v1 == 12)
    {
      return "SwiftUI";
    }

    return "AppleIDSetup";
  }

  return "AuthKit";
}

uint64_t sub_2406749C4()
{
  v0 = sub_240759AE4();
  __swift_allocate_value_buffer(v0, qword_27E4BADD0);
  v1 = __swift_project_value_buffer(v0, qword_27E4BADD0);
  if (qword_280FAD9F0 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280FADA00);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t static AISFollowupManager.shared.getter()
{
  type metadata accessor for AISFollowupManager();

  return swift_allocObject();
}

uint64_t sub_240674AE0(uint64_t a1, void *a2)
{
  v3 = a2[1];
  *(v2 + 16) = *a2;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_240674B04, 0, 0);
}

uint64_t sub_240674B04()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CB8F48]) init];
  v2 = sub_24075A084();
  v3 = [v1 aa:v2 appleAccountWithAltDSID:?];
  *(v0 + 32) = v3;

  if (v3)
  {
    v4 = [v3 identifier];
    if (v4)
    {
      v5 = v4;
      sub_24075A0A4();
    }

    if (qword_27E4B5F60 != -1)
    {
      swift_once();
    }

    v6 = sub_240759AE4();
    __swift_project_value_buffer(v6, qword_27E4BADD0);
    v7 = sub_240759AC4();
    v8 = sub_24075A5E4();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_240579000, v7, v8, "Unable to get account identifier, not dismissing repair followup", v9, 2u);
      MEMORY[0x245CC76B0](v9, -1, -1);
    }
  }

  else
  {
    if (qword_27E4B5F60 != -1)
    {
      swift_once();
    }

    v10 = sub_240759AE4();
    __swift_project_value_buffer(v10, qword_27E4BADD0);
    v3 = sub_240759AC4();
    v11 = sub_24075A5E4();
    if (os_log_type_enabled(v3, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_240579000, v3, v11, "Unable to get account, not dismissing repair followup", v12, 2u);
      MEMORY[0x245CC76B0](v12, -1, -1);
    }
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_240674E0C()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_240674FA0;
  }

  else
  {
    v2 = sub_240674F3C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_240674F3C()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_240674FA0()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_240675004(uint64_t a1, uint64_t a2)
{
  sub_24075A0B4();
  MEMORY[0x245CC5E60](a1, a2);
  v5 = sub_24075A1B4();
  sub_24075A134();

  return v5;
}

uint64_t AISFollowupManager.AISFollowupIdentifier.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_24075AA34();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_240675140()
{
  sub_24075AE64();
  sub_24075A114();
  return sub_24075AED4();
}

uint64_t sub_2406751B4(uint64_t a1)
{
  sub_24075AE64();
  sub_24075A114();
  return sub_24075AED4();
}

uint64_t sub_240675208@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_24075AA34();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_240675294(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[19] = a2;
  v3[20] = a3;
  v3[18] = a1;
  return MEMORY[0x2822009F8](sub_2406752B8, 0, 0);
}

uint64_t sub_2406752B8()
{
  v17 = v0;
  if (qword_27E4B5F60 != -1)
  {
    swift_once();
  }

  v1 = sub_240759AE4();
  v0[21] = __swift_project_value_buffer(v1, qword_27E4BADD0);

  v2 = sub_240759AC4();
  v3 = sub_24075A5C4();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[18];
    v4 = v0[19];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_2405BBA7C(v5, v4, &v16);
    _os_log_impl(&dword_240579000, v2, v3, "Attempting to tear down CFU with identifier: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x245CC76B0](v7, -1, -1);
    MEMORY[0x245CC76B0](v6, -1, -1);
  }

  v9 = v0[19];
  v8 = v0[20];
  v10 = v0[18];
  v11 = [objc_allocWithZone(MEMORY[0x277CEC7F8]) init];
  v0[22] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9288, &unk_240770AD0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_240765570;
  *(v12 + 32) = v10;
  *(v12 + 40) = v9;

  v13 = sub_24075A2B4();
  v0[23] = v13;

  v0[2] = v0;
  v0[7] = v0 + 25;
  v0[3] = sub_240675588;
  v14 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BE0, &unk_24077D170);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_24063BA7C;
  v0[13] = &block_descriptor_13;
  v0[14] = v14;
  [v11 dismissFollowUpsForAccount:v8 identifiers:v13 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_240675588()
{
  v1 = *(*v0 + 48);
  *(*v0 + 192) = v1;
  if (v1)
  {
    v2 = sub_240675700;
  }

  else
  {
    v2 = sub_240675698;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_240675698()
{
  v1 = *(v0 + 184);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_240675700(uint64_t a1)
{
  v3 = v1[23];
  v2 = v1[24];
  v4 = v1[22];
  swift_willThrow();

  v5 = v2;
  v6 = sub_240759AC4();
  v7 = sub_24075A5E4();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v1[24];
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v9;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_240579000, v6, v7, "Failed to tear down CFU %@", v10, 0xCu);
    sub_24061DD28(v11);
    MEMORY[0x245CC76B0](v11, -1, -1);
    MEMORY[0x245CC76B0](v10, -1, -1);
  }

  else
  {
  }

  v14 = v1[1];

  return v14();
}

unint64_t sub_240675868()
{
  result = qword_27E4BADE8;
  if (!qword_27E4BADE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BADE8);
  }

  return result;
}

uint64_t dispatch thunk of AISFollowupManager.dismissFollowup(with:for:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 88) + **(*v2 + 88));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_2405CE450;

  return v8(a1, a2);
}

__n128 DiscoveryModel.Discovering.init(allowsManual:selectedManual:pairingState:)@<Q0>(char a1@<W0>, char a2@<W1>, __n128 *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a3[1].n128_u64[0];
  v5 = a3[1].n128_u8[8];
  *(a4 + 2) = 0;
  *a4 = a1;
  *(a4 + 1) = a2;
  result = *a3;
  *(a4 + 8) = *a3;
  *(a4 + 24) = v4;
  *(a4 + 32) = v5;
  return result;
}

__n128 DiscoveryModel.init(role:flowKind:state:fixedPin:targetAuthTag:codeType:altDSID:symptomReport:shouldSkipConfirmation:name:serverDeviceModel:currentDeviceAgeRange:peerDeviceAgeRange:peerDeviceClass:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, _OWORD *a12, char a13, __int128 a14, __n128 a15, uint64_t a16, uint64_t a17, char *a18)
{
  v19 = *a3;
  v20 = a3[1];
  v21 = a3[2];
  v22 = a3[3];
  v23 = a3[4];
  v24 = a3[5];
  v25 = *a8;
  v26 = *(a8 + 8);
  v34 = *a18;
  *(a9 + 304) = 0;
  *(a9 + 224) = 0u;
  *(a9 + 240) = 0u;
  *(a9 + 1) = a1 & 1;
  *a9 = a2;
  *(a9 + 8) = a6;
  *(a9 + 16) = a7;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = v25;
  *(a9 + 48) = v26;
  v27 = *(a3 + 48);
  sub_240676624(v35);
  sub_2406768E0(v19, v20, v21, v22, v23, v24, v27);
  v28 = v35[5];
  *(a9 + 168) = v35[6];
  v29 = v35[8];
  *(a9 + 184) = v35[7];
  *(a9 + 200) = v29;
  v30 = v35[3];
  *(a9 + 104) = v35[2];
  *(a9 + 120) = v30;
  *(a9 + 136) = v35[4];
  *(a9 + 152) = v28;
  v31 = v35[1];
  *(a9 + 72) = v35[0];
  *(a9 + 216) = v36;
  *(a9 + 88) = v31;
  *(a9 + 56) = a10;
  *(a9 + 64) = a11;
  sub_240609C34(0, 0, 0, 0);
  v32 = a12[1];
  *(a9 + 224) = *a12;
  *(a9 + 240) = v32;
  *(a9 + 49) = a13;
  result = a15;
  *(a9 + 256) = a14;
  *(a9 + 272) = a15;
  *(a9 + 304) = v34;
  *(a9 + 288) = a16;
  *(a9 + 296) = a17;
  return result;
}

void DiscoveryModel.updated(withPeer:)(__int128 *a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 2);
  v5 = *(a1 + 6);
  v6 = *(a1 + 14);
  v7 = *(a1 + 30);
  memcpy(a2, v2, 0x131uLL);
  v8 = *a1;
  v9 = v4;
  v12 = v7;
  v11 = v6;
  v10 = v5;
  DiscoveryModel.update(withPeer:)(&v8);
}

uint64_t DiscoveryModel.targetAuthTag.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t DiscoveryModel.fixedPin.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

void DiscoveryModel.codeType.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = *(v1 + 40);
  *(a1 + 8) = v2;
}

uint64_t DiscoveryModel.altDSID.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t DiscoveryModel.altDSID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t DiscoveryModel.bindableState.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 184);
  v12[6] = *(v1 + 168);
  v12[7] = v2;
  v12[8] = *(v1 + 200);
  v13 = *(v1 + 216);
  v3 = *(v1 + 120);
  v12[2] = *(v1 + 104);
  v12[3] = v3;
  v4 = *(v1 + 152);
  v12[4] = *(v1 + 136);
  v12[5] = v4;
  v5 = *(v1 + 88);
  v12[0] = *(v1 + 72);
  v12[1] = v5;
  v6 = *(v1 + 184);
  *(a1 + 96) = *(v1 + 168);
  *(a1 + 112) = v6;
  *(a1 + 128) = *(v1 + 200);
  *(a1 + 144) = *(v1 + 216);
  v7 = *(v1 + 120);
  *(a1 + 32) = *(v1 + 104);
  *(a1 + 48) = v7;
  v8 = *(v1 + 152);
  *(a1 + 64) = *(v1 + 136);
  *(a1 + 80) = v8;
  v9 = *(v1 + 88);
  *a1 = *(v1 + 72);
  *(a1 + 16) = v9;
  return sub_2406770F4(v12, v11);
}

__n128 DiscoveryModel.bindableState.setter(uint64_t a1)
{
  v3 = *(v1 + 184);
  v12[6] = *(v1 + 168);
  v12[7] = v3;
  v12[8] = *(v1 + 200);
  v13 = *(v1 + 216);
  v4 = *(v1 + 120);
  v12[2] = *(v1 + 104);
  v12[3] = v4;
  v5 = *(v1 + 152);
  v12[4] = *(v1 + 136);
  v12[5] = v5;
  v6 = *(v1 + 88);
  v12[0] = *(v1 + 72);
  v12[1] = v6;
  sub_24067712C(v12);
  v7 = *(a1 + 112);
  *(v1 + 168) = *(a1 + 96);
  *(v1 + 184) = v7;
  *(v1 + 200) = *(a1 + 128);
  v8 = *(a1 + 48);
  *(v1 + 104) = *(a1 + 32);
  *(v1 + 120) = v8;
  v9 = *(a1 + 80);
  *(v1 + 136) = *(a1 + 64);
  *(v1 + 152) = v9;
  result = *a1;
  v11 = *(a1 + 16);
  *(v1 + 72) = *a1;
  *(v1 + 216) = *(a1 + 144);
  *(v1 + 88) = v11;
  return result;
}

uint64_t DiscoveryModel.symptomReport.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[28];
  v3 = v1[29];
  v4 = v1[30];
  v5 = v1[31];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_2406424AC(v2, v3, v4, v5);
}

__n128 DiscoveryModel.symptomReport.setter(uint64_t a1)
{
  sub_240609C34(v1[28], v1[29], v1[30], v1[31]);
  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 14) = *a1;
  *(v1 + 15) = v4;
  return result;
}

uint64_t DiscoveryModel.name.getter()
{
  v1 = *(v0 + 256);

  return v1;
}

uint64_t DiscoveryModel.name.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 256) = a1;
  *(v2 + 264) = a2;
  return result;
}

uint64_t DiscoveryModel.serverDeviceModel.getter()
{
  v1 = *(v0 + 272);

  return v1;
}

uint64_t DiscoveryModel.serverDeviceModel.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 272) = a1;
  *(v2 + 280) = a2;
  return result;
}

uint64_t DiscoveryModel.state.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 72);
  v4 = *(v1 + 80);
  v5 = *(v1 + 81);
  v6 = *(v1 + 82);
  v8 = *(v1 + 88);
  v7 = *(v1 + 96);
  v9 = *(v1 + 104);
  v10 = *(v1 + 112);
  v11 = *(v1 + 136);
  v20 = *(v1 + 120);
  v21 = v11;
  v22 = *(v1 + 152);
  v23 = *(v1 + 168);
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v14 = 0;
      v8 = 0;
      v7 = 0;
      v9 = 0;
      v10 = 0;
      v16 = 0;
      v17 = 24;
    }

    else
    {
      v9 = *(v1 + 200);
      v10 = *(v1 + 208);
      v7 = *(v1 + 192);
      v8 = *(v1 + 184);
      v14 = *(v1 + 176);
      v18 = 256;
      if (!*(v1 + 217))
      {
        v18 = 0;
      }

      v16 = v18 | *(v1 + 216);

      result = sub_24067715C(v7, v9, v10);
      v17 = 16;
    }
  }

  else if (v3)
  {
    v8 = *(&v20 + 1);
    v14 = v20;
    v9 = *(&v21 + 1);
    v7 = v21;
    v16 = *(&v22 + 1);
    v10 = v22;
    v17 = v23 & 0xE3 | 8;
    result = sub_2406771A8(&v20, v19);
  }

  else
  {
    v12 = v4 | (v5 << 8);
    v13 = 0x10000;
    if (!v6)
    {
      v13 = 0;
    }

    v14 = v12 | v13;
    result = sub_2406771E0(v8, v7, v9, v10);
    v16 = 0;
    v17 = 0;
  }

  *a1 = v14;
  *(a1 + 8) = v8;
  *(a1 + 16) = v7;
  *(a1 + 24) = v9;
  *(a1 + 32) = v10;
  *(a1 + 40) = v16;
  *(a1 + 48) = v17;
  return result;
}

uint64_t sub_2406762A8@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 72);
  v4 = *(result + 80);
  v5 = *(result + 81);
  v6 = *(result + 82);
  v7 = *(result + 88);
  v8 = *(result + 96);
  v9 = *(result + 104);
  v10 = *(result + 112);
  v11 = *(result + 136);
  v19 = *(result + 120);
  v20 = v11;
  v21 = *(result + 152);
  v22 = *(result + 168);
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v14 = 0;
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v15 = 0;
      v16 = 24;
    }

    else
    {
      v9 = *(result + 200);
      v10 = *(result + 208);
      v8 = *(result + 192);
      v7 = *(result + 184);
      v14 = *(result + 176);
      v17 = 256;
      if (!*(result + 217))
      {
        v17 = 0;
      }

      v15 = v17 | *(result + 216);

      result = sub_24067715C(v8, v9, v10);
      v16 = 16;
    }
  }

  else if (v3)
  {
    v7 = *(&v19 + 1);
    v14 = v19;
    v9 = *(&v20 + 1);
    v8 = v20;
    v15 = *(&v21 + 1);
    v10 = v21;
    v16 = v22 & 0xE3 | 8;
    result = sub_2406771A8(&v19, v18);
  }

  else
  {
    v12 = v4 | (v5 << 8);
    v13 = 0x10000;
    if (!v6)
    {
      v13 = 0;
    }

    v14 = v12 | v13;
    result = sub_2406771E0(v7, v8, v9, v10);
    v15 = 0;
    v16 = 0;
  }

  *a2 = v14;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  *(a2 + 24) = v9;
  *(a2 + 32) = v10;
  *(a2 + 40) = v15;
  *(a2 + 48) = v16;
  return result;
}

double sub_240676404(__int128 *a1, uint64_t a2)
{
  v3 = *(a1 + 48);
  v4 = a1[1];
  v16 = *a1;
  v17 = v4;
  v18 = a1[2];
  LOBYTE(v19) = v3;
  sub_240676624(v14);
  v5 = *(a2 + 184);
  v22 = *(a2 + 168);
  v23 = v5;
  v24 = *(a2 + 200);
  v25 = *(a2 + 216);
  v6 = *(a2 + 120);
  v18 = *(a2 + 104);
  v19 = v6;
  v7 = *(a2 + 152);
  v20 = *(a2 + 136);
  v21 = v7;
  v8 = *(a2 + 88);
  v16 = *(a2 + 72);
  v17 = v8;
  sub_24067712C(&v16);
  v9 = v14[7];
  *(a2 + 168) = v14[6];
  *(a2 + 184) = v9;
  *(a2 + 200) = v14[8];
  v10 = v14[3];
  *(a2 + 104) = v14[2];
  *(a2 + 120) = v10;
  v11 = v14[5];
  *(a2 + 136) = v14[4];
  *(a2 + 152) = v11;
  result = *v14;
  v13 = v14[1];
  *(a2 + 72) = v14[0];
  *(a2 + 216) = v15;
  *(a2 + 88) = v13;
  return result;
}

double DiscoveryModel.state.setter(uint64_t a1)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  *&v20 = *a1;
  v2 = v20;
  *(&v20 + 1) = v3;
  *&v21 = v4;
  *(&v21 + 1) = v5;
  *&v22 = v6;
  *(&v22 + 1) = v7;
  LOBYTE(v23) = v8;
  sub_240676624(v18);
  sub_2406768E0(v2, v3, v4, v5, v6, v7, v8);
  v9 = *(v1 + 184);
  v26 = *(v1 + 168);
  v27 = v9;
  v28 = *(v1 + 200);
  v29 = *(v1 + 216);
  v10 = *(v1 + 120);
  v22 = *(v1 + 104);
  v23 = v10;
  v11 = *(v1 + 152);
  v24 = *(v1 + 136);
  v25 = v11;
  v12 = *(v1 + 88);
  v20 = *(v1 + 72);
  v21 = v12;
  sub_24067712C(&v20);
  v13 = v18[7];
  *(v1 + 168) = v18[6];
  *(v1 + 184) = v13;
  *(v1 + 200) = v18[8];
  v14 = v18[3];
  *(v1 + 104) = v18[2];
  *(v1 + 120) = v14;
  v15 = v18[5];
  *(v1 + 136) = v18[4];
  *(v1 + 152) = v15;
  result = *v18;
  v17 = v18[1];
  *(v1 + 72) = v18[0];
  *(v1 + 216) = v19;
  *(v1 + 88) = v17;
  return result;
}

uint64_t sub_240676624@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = *(v1 + 48);
  v10 = (v9 >> 3) & 3;
  if (v10 > 1)
  {
    if (v10 == 2)
    {

      sub_24067715C(v5, v6, v7);
      v20 = v3;
      result = (v8 >> 8) & 1;
      v17 = v8 & 1;
      v16 = v4 & 1;
      v19 = 0;
      LOBYTE(v21) = 0;
      v4 = 0;
      v24 = 0;
      v25 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v8 = 0;
      v3 = MEMORY[0x277D84FA0];
      v26 = -96;
      LOBYTE(v11) = 2;
      v12 = 3;
    }

    else
    {
      v5 = 1;
      sub_2406769C4(1, 0, 0);
      v19 = 0;
      LOBYTE(v21) = 0;
      v4 = 0;
      v24 = 0;
      v25 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v8 = 0;
      v16 = 0;
      v6 = 0;
      v7 = 0;
      v17 = 0;
      result = 0;
      v20 = MEMORY[0x277D84F90];
      v3 = MEMORY[0x277D84FA0];
      v26 = -96;
      v12 = 2;
      LOBYTE(v11) = 2;
    }

    v27 = MEMORY[0x277D84FA0];
    LOBYTE(v23) = 2;
    v22 = -96;
  }

  else
  {
    if (v10)
    {
      v22 = v9 & 0xE7;
      v27 = v1[1];
      v29[0] = v3;
      v29[1] = v4;
      v29[2] = v5;
      v29[3] = v6;
      v29[4] = v7;
      v29[5] = v8;
      v30 = v9 & 0xE7;
      sub_2406771A8(v29, v28);
      v12 = 1;
      sub_2406769C4(1, 0, 0);
      v23 = v5 >> 8;
      v13 = v5 & 1;
      v19 = 0;
      LOBYTE(v21) = 0;
      v4 = 0;
      v24 = 0;
      v25 = 0;
      v16 = 0;
      v17 = 0;
      result = 0;
      v20 = MEMORY[0x277D84F90];
      v26 = -96;
      LOBYTE(v11) = 2;
      v14 = v6;
      v15 = v7;
    }

    else
    {
      sub_2406771E0(v1[1], v1[2], v1[3], v1[4]);
      sub_2406769C4(1, 0, 0);
      v11 = v3 >> 8;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v8 = 0;
      v16 = 0;
      v17 = 0;
      result = 0;
      v19 = v3 & 1;
      v20 = MEMORY[0x277D84F90];
      v21 = WORD1(v3) & 1;
      v22 = -96;
      LOBYTE(v23) = 2;
      v3 = MEMORY[0x277D84FA0];
      v24 = v5;
      v25 = v6;
      v26 = v7;
      v27 = MEMORY[0x277D84FA0];
    }

    v5 = 1;
    v6 = 0;
    v7 = 0;
  }

  *a1 = v12;
  *(a1 + 8) = v19;
  *(a1 + 9) = v11;
  *(a1 + 10) = v21;
  *(a1 + 16) = v4;
  *(a1 + 24) = v24;
  *(a1 + 32) = v25;
  *(a1 + 40) = v26;
  *(a1 + 48) = v3;
  *(a1 + 56) = v27;
  *(a1 + 64) = v13;
  *(a1 + 65) = v23;
  *(a1 + 72) = v14;
  *(a1 + 80) = v15;
  *(a1 + 88) = v8;
  *(a1 + 96) = v22;
  *(a1 + 104) = v20;
  *(a1 + 112) = v16;
  *(a1 + 120) = v5;
  *(a1 + 128) = v6;
  *(a1 + 136) = v7;
  *(a1 + 144) = v17;
  *(a1 + 145) = result;
  return result;
}

void sub_2406768E0(uint64_t result, uint64_t a2, void *a3, uint64_t a4, unint64_t a5, uint64_t a6, unsigned int a7)
{
  v9 = (a7 >> 3) & 3;
  if (v9 > 1)
  {
    if (v9 == 2)
    {

      sub_2406769C4(a3, a4, a5);
    }
  }

  else
  {
    if (v9)
    {
      v16 = a7;

      v13 = v16 & 0xE7;
      a2 = a4;
      v11 = a5;
      v12 = a6;
    }

    else
    {
      v11 = a3;
      v12 = a4;
      v13 = a5;
    }

    sub_240604AE0(a2, v11, v12, v13);
  }
}

void *sub_2406769C4(void *result, uint64_t a2, unint64_t a3)
{
  if (result != 1)
  {

    return sub_24058C9E4(a2, a3);
  }

  return result;
}

void (*DiscoveryModel.state.modify(uint64_t *a1))(unsigned __int8 **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x110uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 264) = v1;
  v5 = *(v1 + 72);
  v6 = *(v1 + 80);
  v7 = *(v1 + 81);
  v8 = *(v1 + 82);
  v9 = *(v1 + 88);
  v10 = *(v1 + 96);
  v11 = *(v1 + 104);
  v12 = *(v1 + 112);
  v13 = *(v1 + 120);
  v14 = *(v1 + 136);
  v15 = *(v1 + 152);
  *(v3 + 200) = *(v1 + 168);
  *(v3 + 184) = v15;
  *(v3 + 168) = v14;
  *(v3 + 152) = v13;
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      v18 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v19 = 0;
      v20 = 24;
    }

    else
    {
      v11 = *(v1 + 200);
      v12 = *(v1 + 208);
      v10 = *(v1 + 192);
      v9 = *(v1 + 184);
      v18 = *(v1 + 176);
      v21 = 256;
      if (!*(v1 + 217))
      {
        v21 = 0;
      }

      v19 = v21 | *(v1 + 216);

      sub_24067715C(v10, v11, v12);
      v20 = 16;
    }
  }

  else if (v5)
  {
    v18 = *(v3 + 152);
    v9 = *(v3 + 160);
    v10 = *(v3 + 168);
    v11 = *(v3 + 176);
    v12 = *(v3 + 184);
    v19 = *(v3 + 192);
    v20 = *(v3 + 200) & 0xE3 | 8;
    sub_2406771A8(v3 + 152, v3);
  }

  else
  {
    v16 = v6 | (v7 << 8);
    v17 = 0x10000;
    if (!v8)
    {
      v17 = 0;
    }

    v18 = v16 | v17;
    sub_2406771E0(v9, v10, v11, v12);
    v19 = 0;
    v20 = 0;
  }

  *(v4 + 208) = v18;
  *(v4 + 216) = v9;
  *(v4 + 224) = v10;
  *(v4 + 232) = v11;
  *(v4 + 240) = v12;
  *(v4 + 248) = v19;
  *(v4 + 256) = v20;
  return sub_240676BB8;
}

void sub_240676BB8(unsigned __int8 **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 33);
  if (a2)
  {
    v4 = *(v2 + 256);
    v5 = *(v2 + 14);
    v45 = *(v2 + 13);
    v46 = v5;
    v47 = *(v2 + 15);
    v48 = v4;
    sub_240676624(&v35);
    v6 = *(v3 + 88);
    *v2 = *(v3 + 72);
    *(v2 + 1) = v6;
    v7 = *(v3 + 104);
    v8 = *(v3 + 120);
    v9 = *(v3 + 152);
    *(v2 + 4) = *(v3 + 136);
    *(v2 + 5) = v9;
    *(v2 + 2) = v7;
    *(v2 + 3) = v8;
    v10 = *(v3 + 168);
    v11 = *(v3 + 184);
    v12 = *(v3 + 200);
    *(v2 + 72) = *(v3 + 216);
    *(v2 + 7) = v11;
    *(v2 + 8) = v12;
    *(v2 + 6) = v10;
    sub_24067712C(v2);
    v13 = v42;
    *(v3 + 168) = v41;
    *(v3 + 184) = v13;
    *(v3 + 200) = v43;
    v14 = v38;
    *(v3 + 104) = v37;
    *(v3 + 120) = v14;
    v15 = v40;
    *(v3 + 136) = v39;
    *(v3 + 152) = v15;
    v16 = v36;
    *(v3 + 72) = v35;
    *(v3 + 216) = v44;
    *(v3 + 88) = v16;
    sub_2406768E0(v2[26], v2[27], v2[28], v2[29], v2[30], v2[31], *(v2 + 256));
  }

  else
  {
    v18 = v2[27];
    v19 = v2[28];
    v20 = v2[29];
    v21 = v2[30];
    v22 = v2[31];
    v23 = *(v2 + 256);
    *&v45 = v2[26];
    v17 = v45;
    *(&v45 + 1) = v18;
    *&v46 = v19;
    *(&v46 + 1) = v20;
    *&v47 = v21;
    *(&v47 + 1) = v22;
    v48 = v23;
    sub_240676624(&v35);
    sub_2406768E0(v17, v18, v19, v20, v21, v22, v23);
    v24 = *(v3 + 88);
    *v2 = *(v3 + 72);
    *(v2 + 1) = v24;
    v25 = *(v3 + 104);
    v26 = *(v3 + 120);
    v27 = *(v3 + 152);
    *(v2 + 4) = *(v3 + 136);
    *(v2 + 5) = v27;
    *(v2 + 2) = v25;
    *(v2 + 3) = v26;
    v28 = *(v3 + 168);
    v29 = *(v3 + 184);
    v30 = *(v3 + 200);
    *(v2 + 72) = *(v3 + 216);
    *(v2 + 7) = v29;
    *(v2 + 8) = v30;
    *(v2 + 6) = v28;
    sub_24067712C(v2);
    v31 = v42;
    *(v3 + 168) = v41;
    *(v3 + 184) = v31;
    *(v3 + 200) = v43;
    v32 = v38;
    *(v3 + 104) = v37;
    *(v3 + 120) = v32;
    v33 = v40;
    *(v3 + 136) = v39;
    *(v3 + 152) = v33;
    v34 = v36;
    *(v3 + 72) = v35;
    *(v3 + 216) = v44;
    *(v3 + 88) = v34;
  }

  free(v2);
}

void DiscoveryModel.update(withPeer:)(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 == 1)
  {
    *(v1 + 304) = 0;
    *(v1 + 296) = 0;
    if (qword_280FAD9F0 != -1)
    {
      swift_once();
    }

    v3 = sub_240759AE4();
    __swift_project_value_buffer(v3, qword_280FADA00);
    oslog = sub_240759AC4();
    v4 = sub_24075A5D4();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_240579000, oslog, v4, "Updated discovery model to unknown peer device, nil passed in", v5, 2u);
      MEMORY[0x245CC76B0](v5, -1, -1);
    }
  }

  else
  {
    v6 = *a1;
    v7 = *(a1 + 16);
    v8 = *(a1 + 24) | ((*(a1 + 28) | (*(a1 + 30) << 16)) << 32);
    *(v1 + 304) = *(a1 + 28);
    if ((v8 & 0x1000000000000) != 0)
    {
      v9 = 1;
    }

    else
    {
      v9 = BYTE6(v8) & 2;
    }

    *(v1 + 296) = v9;
    if (qword_280FAD9F0 != -1)
    {
      swift_once();
    }

    v10 = sub_240759AE4();
    __swift_project_value_buffer(v10, qword_280FADA00);
    v33[0] = v6;
    v33[1] = v2;
    v33[2] = v7;
    v36 = BYTE6(v8);
    v35 = WORD2(v8);
    v34 = v8;
    sub_240607D50(v33, v29);
    v11 = sub_240759AC4();
    v12 = sub_24075A5D4();
    sub_240609C84(v6, v2);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v28 = v17;
      v29[0] = v6;
      *v13 = 136315138;
      v20 = v6;
      v21 = v2;
      v22 = v7;
      v23 = BYTE4(v7);
      v24 = v8;
      v25 = BYTE4(v8);
      v26 = BYTE5(v8);
      v27 = BYTE6(v8);
      v29[1] = v2;
      v29[2] = v7;
      v32 = BYTE6(v8);
      v31 = WORD2(v8);
      v30 = v8;
      sub_240607D50(v29, v19);
      v14 = sub_24075A0E4();
      v16 = sub_2405BBA7C(v14, v15, &v28);

      *(v13 + 4) = v16;
      _os_log_impl(&dword_240579000, v11, v12, "Updated discovery model with peer device: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x245CC76B0](v17, -1, -1);
      MEMORY[0x245CC76B0](v13, -1, -1);
    }
  }
}

void *sub_24067715C(void *result, uint64_t a2, unint64_t a3)
{
  if (result != 1)
  {
    v6 = result;

    return sub_240618C78(a2, a3);
  }

  return result;
}

uint64_t sub_2406771E0(uint64_t result, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v4 = a4 >> 5;
  if (v4 == 4)
  {
  }

  if (v4 == 3 || !(a4 >> 5))
  {
  }

  return v5;
}

unint64_t sub_240677234(char a1)
{
  result = 0x646E694B776F6C66;
  switch(a1)
  {
    case 1:
      result = 1701605234;
      break;
    case 2:
      result = 0x7541746567726174;
      break;
    case 3:
      result = 0x6E69506465786966;
      break;
    case 4:
      result = 0x6570795465646F63;
      break;
    case 5:
      result = 0xD000000000000016;
      break;
    case 6:
      result = 0x44495344746C61;
      break;
    case 7:
      result = 0x656C6261646E6962;
      break;
    case 8:
      result = 0x526D6F74706D7973;
      break;
    case 9:
      result = 1701667182;
      break;
    case 10:
      result = 0xD000000000000011;
      break;
    case 11:
      result = 0xD000000000000015;
      break;
    case 12:
      result = 0xD000000000000012;
      break;
    case 13:
      result = 0x6976654472656570;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2406773E4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_240684E38(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24067740C(uint64_t a1)
{
  v2 = sub_240684938();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_240677448(uint64_t a1)
{
  v2 = sub_240684938();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DiscoveryModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BADF0, &qword_240770AE0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v27 - v5;
  v7 = *v1;
  v46 = v1[1];
  v8 = *(v1 + 1);
  v44 = *(v1 + 2);
  v45 = v8;
  v9 = *(v1 + 4);
  v42 = *(v1 + 3);
  v43 = v9;
  v40 = *(v1 + 5);
  v41 = v1[48];
  v39 = v1[49];
  v10 = *(v1 + 8);
  v37 = *(v1 + 7);
  v38 = v10;
  v11 = *(v1 + 184);
  v71 = *(v1 + 168);
  v72 = v11;
  v73 = *(v1 + 200);
  v74 = *(v1 + 108);
  v12 = *(v1 + 120);
  v67 = *(v1 + 104);
  v68 = v12;
  v13 = *(v1 + 152);
  v69 = *(v1 + 136);
  v70 = v13;
  v14 = *(v1 + 88);
  v65 = *(v1 + 72);
  v66 = v14;
  v15 = *(v1 + 28);
  v35 = *(v1 + 29);
  v36 = v15;
  v16 = *(v1 + 30);
  v33 = *(v1 + 31);
  v34 = v16;
  v17 = *(v1 + 32);
  v31 = *(v1 + 33);
  v32 = v17;
  v18 = *(v1 + 34);
  v29 = *(v1 + 35);
  v30 = v18;
  v19 = *(v1 + 36);
  v27 = *(v1 + 37);
  v28 = v19;
  v20 = v1[304];
  v21 = a1[3];
  v22 = a1;
  v24 = v23;
  __swift_project_boxed_opaque_existential_1(v22, v21);
  sub_240684938();
  sub_24075AF74();
  LOBYTE(v55) = v7;
  LOBYTE(v52[0]) = 0;
  sub_24068498C();
  v25 = v75;
  sub_24075ABE4();
  if (v25)
  {
    return (*(v4 + 8))(v6, v24);
  }

  LODWORD(v75) = v20;
  LOBYTE(v55) = v46;
  LOBYTE(v52[0]) = 1;
  sub_2406849E0();
  sub_24075ABE4();
  LOBYTE(v55) = 2;
  sub_24075AB64();
  LOBYTE(v55) = 3;
  sub_24075AB64();
  *&v55 = v40;
  BYTE8(v55) = v41;
  LOBYTE(v52[0]) = 4;
  sub_240684A34();
  sub_24075ABE4();
  LOBYTE(v55) = 5;
  sub_24075ABC4();
  LOBYTE(v55) = 6;
  sub_24075AB64();
  v61 = v71;
  v62 = v72;
  v63 = v73;
  v64 = v74;
  v57 = v67;
  v58 = v68;
  v59 = v69;
  v60 = v70;
  v55 = v65;
  v56 = v66;
  v54 = 7;
  sub_2406770F4(&v65, v52);
  sub_240684A88();
  sub_24075ABE4();
  v52[6] = v61;
  v52[7] = v62;
  v52[8] = v63;
  v53 = v64;
  v52[2] = v57;
  v52[3] = v58;
  v52[4] = v59;
  v52[5] = v60;
  v52[0] = v55;
  v52[1] = v56;
  sub_24067712C(v52);
  v48 = v36;
  v49 = v35;
  v50 = v34;
  v51 = v33;
  v47 = 8;
  sub_2406424AC(v36, v35, v34, v33);
  sub_2405EE9C8();
  sub_24075AB94();
  sub_240609C34(v48, v49, v50, v51);
  LOBYTE(v48) = 9;
  sub_24075AB64();
  LOBYTE(v48) = 10;
  sub_24075AB64();
  v48 = v28;
  v47 = 11;
  type metadata accessor for AKUserAgeRange(0);
  sub_240686A38(&qword_27E4B8E00, type metadata accessor for AKUserAgeRange, &protocol conformance descriptor for AKUserAgeRange);
  sub_24075ABE4();
  v48 = v27;
  v47 = 12;
  sub_24075ABE4();
  LOBYTE(v48) = v75;
  v47 = 13;
  sub_240684ADC();
  sub_24075ABE4();
  return (*(v4 + 8))(0, v24);
}

uint64_t DiscoveryModel.hash(into:)(__int128 *a1)
{
  v3 = v1[1];
  v4 = *(v1 + 2);
  v5 = *(v1 + 4);
  v6 = v1[48];
  v7 = *(v1 + 8);
  v16 = *(v1 + 31);
  v18 = *(v1 + 33);
  v19 = *(v1 + 29);
  v8 = *(v1 + 35);
  v17 = *(v1 + 5);
  v20 = *(v1 + 36);
  v21 = *(v1 + 37);
  v22 = v1[304];
  MEMORY[0x245CC6BA0](*v1);
  MEMORY[0x245CC6BA0](v3);
  if (v4)
  {
    sub_24075AE94();
    sub_24075A114();
    v9 = v8;
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_24075AE94();
    v9 = v8;
    if (v5)
    {
LABEL_3:
      sub_24075AE94();
      sub_24075A114();
      v10 = v18;
      if (v6)
      {
        goto LABEL_4;
      }

LABEL_8:
      v11 = 1;
      goto LABEL_9;
    }
  }

  sub_24075AE94();
  v10 = v18;
  if (!v6)
  {
    goto LABEL_8;
  }

LABEL_4:
  if (v6 == 1)
  {
    v11 = 2;
LABEL_9:
    MEMORY[0x245CC6BA0](v11);
    v12 = v22;
    v13 = v21;
    v14 = v17;
    goto LABEL_11;
  }

  v14 = qword_240774388[v17];
  v12 = v22;
  v13 = v21;
LABEL_11:
  MEMORY[0x245CC6BA0](v14);
  sub_24075AE94();
  sub_24075AE94();
  if (v7)
  {
    sub_24075A114();
  }

  DiscoveryModel.BindableState.hash(into:)(a1);
  if (v19)
  {
    sub_24075AE94();
    sub_24075A114();
    sub_2405ED470(a1, v16);
    if (v10)
    {
      goto LABEL_15;
    }

LABEL_18:
    sub_24075AE94();
    if (v9)
    {
      goto LABEL_16;
    }

LABEL_19:
    sub_24075AE94();
    goto LABEL_20;
  }

  sub_24075AE94();
  if (!v10)
  {
    goto LABEL_18;
  }

LABEL_15:
  sub_24075AE94();
  sub_24075A114();
  if (!v9)
  {
    goto LABEL_19;
  }

LABEL_16:
  sub_24075AE94();
  sub_24075A114();
LABEL_20:
  MEMORY[0x245CC6BA0](v20);
  MEMORY[0x245CC6BA0](v13);
  return MEMORY[0x245CC6BA0](qword_2407743A0[v12]);
}

uint64_t DiscoveryModel.hashValue.getter()
{
  sub_24075AE64();
  DiscoveryModel.hash(into:)(v1);
  return sub_24075AED4();
}

uint64_t DiscoveryModel.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BAE28, &qword_240770AE8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v29 - v7;
  v9 = a1[3];
  v117 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_240684938();
  sub_24075AF34();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v117);

    sub_240609C34(0, 0, 0, 0);
  }

  else
  {
    v10 = v6;
    v51 = a2;
    LOBYTE(v52[0]) = 0;
    sub_240684B30();
    sub_24075AAF4();
    v11 = v53;
    LOBYTE(v52[0]) = 1;
    sub_240684B84();
    sub_24075AAF4();
    v12 = v53;
    LOBYTE(v53) = 2;
    v44 = sub_24075AA74();
    v42 = v12;
    v43 = v11;
    v47 = v13;
    LOBYTE(v53) = 3;
    v14 = sub_24075AA74();
    v45 = v15;
    v40 = v14;
    LOBYTE(v52[0]) = 4;
    sub_240684BD8();
    v41 = 0;
    sub_24075AAF4();
    v16 = v53;
    v17 = v54;
    LOBYTE(v53) = 5;
    v37 = sub_24075AAD4();
    v38 = v17;
    v39 = v16;
    LOBYTE(v53) = 6;
    v18 = sub_24075AA74();
    v36 = v19;
    v90 = 7;
    sub_240684C2C();
    sub_24075AAF4();
    v109 = v97;
    v110 = v98;
    v111 = v99;
    v105 = v93;
    v106 = v94;
    v107 = v95;
    v108 = v96;
    v103 = v91;
    v112 = v100;
    v104 = v92;
    LOBYTE(v52[0]) = 8;
    sub_2405EEDE4();
    sub_24075AAA4();
    v20 = v40;
    v49 = v54;
    v50 = v53;
    v46 = v55;
    v48 = v56;
    sub_240609C34(0, 0, 0, 0);
    LOBYTE(v53) = 9;
    v35 = v5;
    v34 = sub_24075AA74();
    v22 = v21;
    LOBYTE(v53) = 10;
    v33 = sub_24075AA74();
    v24 = v23;
    type metadata accessor for AKUserAgeRange(0);
    v26 = v25;
    LOBYTE(v52[0]) = 11;
    v31 = sub_240686A38(&qword_27E4B8E30, type metadata accessor for AKUserAgeRange, &protocol conformance descriptor for AKUserAgeRange);
    v32 = v26;
    sub_24075AAF4();
    v30 = v53;
    LOBYTE(v52[0]) = 12;
    sub_24075AAF4();
    v41 = v53;
    v88 = 13;
    sub_240684C80();
    sub_24075AAF4();
    LOBYTE(v26) = v37 & 1;
    LODWORD(v32) = v37 & 1;
    (*(v10 + 8))(v8, v35);
    v37 = v89;
    LOBYTE(v10) = v42;
    LOBYTE(v52[0]) = v43;
    BYTE1(v52[0]) = v42;
    *(v52 + 2) = v115;
    HIWORD(v52[0]) = v116;
    v52[1] = v44;
    v52[2] = v47;
    v52[3] = v20;
    v52[4] = v45;
    v52[5] = v39;
    LOBYTE(v52[6]) = v38;
    BYTE1(v52[6]) = v26;
    *(&v52[6] + 2) = v113;
    HIWORD(v52[6]) = v114;
    v52[7] = v18;
    v52[8] = v36;
    *&v52[21] = v109;
    *&v52[23] = v110;
    *&v52[25] = v111;
    LOWORD(v52[27]) = v112;
    *&v52[13] = v105;
    *&v52[15] = v106;
    *&v52[17] = v107;
    *&v52[19] = v108;
    *&v52[9] = v103;
    *&v52[11] = v104;
    *(&v52[27] + 2) = v101;
    HIWORD(v52[27]) = v102;
    v52[28] = v50;
    v52[29] = v49;
    v27 = v46;
    v52[30] = v46;
    v52[31] = v48;
    v52[32] = v34;
    v52[33] = v22;
    v52[34] = v33;
    v52[35] = v24;
    v52[36] = v30;
    v52[37] = v41;
    LOBYTE(v52[38]) = v89;
    memcpy(v51, v52, 0x131uLL);
    sub_240684CD4(v52, &v53);
    __swift_destroy_boxed_opaque_existential_1(v117);
    LOBYTE(v53) = v43;
    BYTE1(v53) = v10;
    *(&v53 + 2) = v115;
    HIWORD(v53) = v116;
    v54 = v44;
    v55 = v47;
    v56 = v20;
    v57 = v45;
    v58 = v39;
    v59 = v38;
    v60 = v32;
    v61 = v113;
    v62 = v114;
    v63 = v18;
    v64 = v36;
    v71 = v109;
    v72 = v110;
    v73 = v111;
    v74 = v112;
    v67 = v105;
    v68 = v106;
    v69 = v107;
    v70 = v108;
    v65 = v103;
    v66 = v104;
    v75 = v101;
    v76 = v102;
    v77 = v50;
    v78 = v49;
    v79 = v27;
    v80 = v48;
    v81 = v34;
    v82 = v22;
    v83 = v33;
    v84 = v24;
    v85 = v30;
    v86 = v41;
    v87 = v37;
    return sub_240684D0C(&v53);
  }
}

uint64_t sub_2406787A0()
{
  sub_24075AE64();
  DiscoveryModel.hash(into:)(v1);
  return sub_24075AED4();
}

uint64_t sub_2406787E4(uint64_t a1)
{
  sub_24075AE64();
  DiscoveryModel.hash(into:)(v2);
  return sub_24075AED4();
}

uint64_t sub_240678820(uint64_t a1)
{
  v2 = sub_240684DE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24067885C(uint64_t a1)
{
  v2 = sub_240684DE4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_240678898()
{
  if (*v0)
  {
    return 0x726576726573;
  }

  else
  {
    return 0x746E65696C63;
  }
}

uint64_t sub_2406788C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746E65696C63 && a2 == 0xE600000000000000;
  if (v6 || (sub_24075ACF4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x726576726573 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24075ACF4();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_240678998(uint64_t a1)
{
  v2 = sub_240684D3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2406789D4(uint64_t a1)
{
  v2 = sub_240684D3C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_240678A10(uint64_t a1)
{
  v2 = sub_240684D90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_240678A4C(uint64_t a1)
{
  v2 = sub_240684D90();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DiscoveryModel.Role.encode(to:)(void *a1, int a2)
{
  v18 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BAE58, &qword_240770AF0);
  v16 = *(v3 - 8);
  v17 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v15 - v4;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BAE60, &qword_240770AF8);
  v6 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v8 = &v15 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BAE68, &qword_240770B00);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v15 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_240684D3C();
  sub_24075AF74();
  v13 = (v10 + 8);
  if (v18)
  {
    v20 = 1;
    sub_240684D90();
    sub_24075AB54();
    (*(v16 + 8))(v5, v17);
  }

  else
  {
    v19 = 0;
    sub_240684DE4();
    sub_24075AB54();
    (*(v6 + 8))(v8, v15);
  }

  return (*v13)(v12, v9);
}

uint64_t DiscoveryModel.Role.hashValue.getter(char a1)
{
  sub_24075AE64();
  MEMORY[0x245CC6BA0](a1 & 1);
  return sub_24075AED4();
}

uint64_t sub_240678DD0@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_2406852B8(a2);
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

uint64_t sub_240678E1C(uint64_t a1)
{
  v2 = sub_24068581C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_240678E58(uint64_t a1)
{
  v2 = sub_24068581C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_240678E94()
{
  v1 = 0x7075746573;
  v2 = 0x617267694D656761;
  if (*v0 != 2)
  {
    v2 = 0x646578696DLL;
  }

  if (*v0)
  {
    v1 = 0x726961706572;
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

uint64_t sub_240678F0C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_240685918(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_240678F34(uint64_t a1)
{
  v2 = sub_240685774();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_240678F70(uint64_t a1)
{
  v2 = sub_240685774();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_240678FAC(uint64_t a1)
{
  v2 = sub_2406857C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_240678FE8(uint64_t a1)
{
  v2 = sub_2406857C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_240679024(uint64_t a1)
{
  v2 = sub_240685870();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_240679060(uint64_t a1)
{
  v2 = sub_240685870();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24067909C(uint64_t a1)
{
  v2 = sub_2406858C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2406790D8(uint64_t a1)
{
  v2 = sub_2406858C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DiscoveryModel.FlowKind.encode(to:)(void *a1, int a2)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BAE88, &qword_240770B08);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x28223BE20](v3);
  v26 = &v20 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BAE90, &qword_240770B10);
  v24 = *(v5 - 8);
  v25 = v5;
  MEMORY[0x28223BE20](v5);
  v23 = &v20 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BAE98, &qword_240770B18);
  v21 = *(v7 - 8);
  v22 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BAEA0, &qword_240770B20);
  v20 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v20 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BAEA8, &qword_240770B28);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v20 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_240685774();
  sub_24075AF74();
  if (v29 > 1u)
  {
    if (v29 == 2)
    {
      v32 = 2;
      sub_24068581C();
      v9 = v23;
      sub_24075AB54();
      v18 = v24;
      v17 = v25;
    }

    else
    {
      v33 = 3;
      sub_2406857C8();
      v9 = v26;
      sub_24075AB54();
      v18 = v27;
      v17 = v28;
    }

    goto LABEL_8;
  }

  if (v29)
  {
    v31 = 1;
    sub_240685870();
    sub_24075AB54();
    v18 = v21;
    v17 = v22;
LABEL_8:
    (*(v18 + 8))(v9, v17);
    return (*(v14 + 8))(v16, v13);
  }

  v30 = 0;
  sub_2406858C4();
  sub_24075AB54();
  (*(v20 + 8))(v12, v10);
  return (*(v14 + 8))(v16, v13);
}

uint64_t DiscoveryModel.FlowKind.hashValue.getter(unsigned __int8 a1)
{
  sub_24075AE64();
  MEMORY[0x245CC6BA0](a1);
  return sub_24075AED4();
}

void *sub_2406795D8@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_240685A74(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_240679634(uint64_t a1)
{
  v2 = sub_240686108();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_240679670(uint64_t a1)
{
  v2 = sub_240686108();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2406796AC(uint64_t a1)
{
  v2 = sub_2406860B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2406796E8(uint64_t a1)
{
  v2 = sub_2406860B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_240679724(uint64_t a1)
{
  v2 = sub_2406861B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_240679760(uint64_t a1)
{
  v2 = sub_2406861B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24067979C(uint64_t a1)
{
  v2 = sub_240686204();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2406797D8(uint64_t a1)
{
  v2 = sub_240686204();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_240679814(uint64_t a1)
{
  v2 = sub_24068615C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_240679850(uint64_t a1)
{
  v2 = sub_24068615C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DiscoveryModel.BindableState.Substate.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BAED8, &qword_240770B30);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x28223BE20](v3);
  v30 = &v22 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BAEE0, &qword_240770B38);
  v28 = *(v5 - 8);
  v29 = v5;
  MEMORY[0x28223BE20](v5);
  v27 = &v22 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BAEE8, &qword_240770B40);
  v25 = *(v7 - 8);
  v26 = v7;
  MEMORY[0x28223BE20](v7);
  v24 = &v22 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BAEF0, &qword_240770B48);
  v22 = *(v9 - 8);
  v23 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BAEF8, &qword_240770B50);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v22 - v14;
  v16 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2406860B4();
  sub_24075AF74();
  v17 = (v13 + 8);
  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v35 = 2;
      sub_24068615C();
      v18 = v27;
      sub_24075AB54();
      v20 = v28;
      v19 = v29;
    }

    else
    {
      v36 = 3;
      sub_240686108();
      v18 = v30;
      sub_24075AB54();
      v20 = v31;
      v19 = v32;
    }

    goto LABEL_8;
  }

  if (v16)
  {
    v34 = 1;
    sub_2406861B0();
    v18 = v24;
    sub_24075AB54();
    v20 = v25;
    v19 = v26;
LABEL_8:
    (*(v20 + 8))(v18, v19);
    return (*v17)(v15, v12);
  }

  v33 = 0;
  sub_240686204();
  sub_24075AB54();
  (*(v22 + 8))(v11, v23);
  return (*v17)(v15, v12);
}

uint64_t DiscoveryModel.BindableState.Substate.hashValue.getter()
{
  v1 = *v0;
  sub_24075AE64();
  MEMORY[0x245CC6BA0](v1);
  return sub_24075AED4();
}

uint64_t DiscoveryModel.BindableState.Substate.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v45 = a2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BAF28, &qword_240770B58);
  v39 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v44 = &v34 - v3;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BAF30, &qword_240770B60);
  v38 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v43 = &v34 - v4;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BAF38, &qword_240770B68);
  v36 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v6 = &v34 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BAF40, &qword_240770B70);
  v37 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BAF48, &unk_240770B78);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - v12;
  v14 = a1[3];
  v47 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_2406860B4();
  v15 = v46;
  sub_24075AF34();
  if (!v15)
  {
    v16 = v9;
    v34 = v7;
    v35 = 0;
    v17 = v6;
    v18 = v43;
    v19 = v44;
    v46 = v11;
    v20 = v45;
    v21 = v13;
    v22 = sub_24075AB34();
    v23 = (2 * *(v22 + 16)) | 1;
    v48 = v22;
    v49 = v22 + 32;
    v50 = 0;
    v51 = v23;
    v24 = sub_2405B8AF8();
    if (v24 == 4 || v50 != v51 >> 1)
    {
      v26 = sub_24075A8C4();
      swift_allocError();
      v28 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6620, &qword_24075DA40);
      *v28 = &type metadata for DiscoveryModel.BindableState.Substate;
      sub_24075AA64();
      sub_24075A8A4();
      (*(*(v26 - 8) + 104))(v28, *MEMORY[0x277D84160], v26);
      swift_willThrow();
LABEL_9:
      (*(v46 + 8))(v13, v10);
LABEL_10:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v47);
    }

    v52 = v24;
    if (v24 <= 1u)
    {
      if (v24)
      {
        v53 = 1;
        sub_2406861B0();
        v32 = v35;
        sub_24075AA54();
        if (!v32)
        {
          (*(v36 + 8))(v17, v40);
          goto LABEL_17;
        }
      }

      else
      {
        v53 = 0;
        sub_240686204();
        v25 = v35;
        sub_24075AA54();
        if (!v25)
        {
          (*(v37 + 8))(v16, v34);
LABEL_17:
          (*(v46 + 8))(v13, v10);
LABEL_22:
          swift_unknownObjectRelease();
          *v20 = v52;
          return __swift_destroy_boxed_opaque_existential_1(v47);
        }
      }

      goto LABEL_9;
    }

    v30 = v46;
    if (v24 == 2)
    {
      v53 = 2;
      sub_24068615C();
      v31 = v35;
      sub_24075AA54();
      if (!v31)
      {
        (*(v38 + 8))(v18, v42);
LABEL_21:
        (*(v30 + 8))(v21, v10);
        goto LABEL_22;
      }
    }

    else
    {
      v53 = 3;
      sub_240686108();
      v33 = v35;
      sub_24075AA54();
      if (!v33)
      {
        (*(v39 + 8))(v19, v41);
        goto LABEL_21;
      }
    }

    (*(v30 + 8))(v21, v10);
    goto LABEL_10;
  }

  return __swift_destroy_boxed_opaque_existential_1(v47);
}

uint64_t DiscoveryModel.BindableState.discovering.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 9);
  v3 = *(v1 + 10);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  *a1 = *(v1 + 8);
  *(a1 + 1) = v2;
  *(a1 + 2) = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  v7 = *(v1 + 40);
  *(a1 + 32) = v7;
  return sub_2406771E0(v4, v5, v6, v7);
}

__n128 DiscoveryModel.BindableState.discovering.setter(char *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v8 = *(a1 + 8);
  v5 = *(a1 + 3);
  v6 = a1[32];
  sub_240604AE0(*(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40));
  *(v1 + 8) = v2;
  *(v1 + 9) = v3;
  *(v1 + 10) = v4;
  result = v8;
  *(v1 + 16) = v8;
  *(v1 + 32) = v5;
  *(v1 + 40) = v6;
  return result;
}

__n128 DiscoveryModel.Discovered.init(accounts:services:connectionDecision:pairingState:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, __n128 *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = a4[1].n128_u64[0];
  v6 = a4[1].n128_u8[8];
  *(a5 + 16) = 0;
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 17) = a3;
  result = *a4;
  *(a5 + 24) = *a4;
  *(a5 + 40) = v5;
  *(a5 + 48) = v6;
  return result;
}

uint64_t DiscoveryModel.BindableState.discovered.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v7[0] = *(v1 + 48);
  v7[1] = v2;
  v8 = *(v1 + 80);
  v3 = v8;
  v9 = *(v1 + 96);
  v4 = v9;
  *a1 = v7[0];
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  return sub_2406771A8(v7, v6);
}

__n128 DiscoveryModel.BindableState.discovered.setter(uint64_t a1)
{
  v3 = *(v1 + 64);
  v6[0] = *(v1 + 48);
  v6[1] = v3;
  v6[2] = *(v1 + 80);
  v7 = *(v1 + 96);
  sub_240686258(v6);
  v4 = *(a1 + 16);
  *(v1 + 48) = *a1;
  *(v1 + 64) = v4;
  result = *(a1 + 32);
  *(v1 + 80) = result;
  *(v1 + 96) = *(a1 + 48);
  return result;
}

__n128 DiscoveryModel.ChooseFamilyMember.init(members:canCreateNewMembers:selectedMember:shouldProceed:shouldCreateNewMember:)@<Q0>(unint64_t a1@<X0>, unsigned __int8 a2@<W1>, __n128 *a3@<X2>, unsigned __int8 a4@<W3>, unsigned __int8 a5@<W4>, __n128 *a6@<X8>)
{
  v11 = *a3;
  v9 = a3[1].n128_u64[0];
  a6->n128_u64[0] = a1;
  a6->n128_u8[8] = a2;
  sub_2406769C4(1, 0, 0);
  result = v11;
  a6[1] = v11;
  a6[2].n128_u64[0] = v9;
  a6[2].n128_u8[8] = a4;
  a6[2].n128_u8[9] = a5;
  return result;
}

void *DiscoveryModel.BindableState.choosing.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 112);
  v3 = *(v1 + 120);
  v4 = *(v1 + 128);
  v5 = *(v1 + 136);
  v6 = *(v1 + 144);
  v7 = *(v1 + 145);
  *a1 = *(v1 + 104);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  *(a1 + 41) = v7;

  return sub_24067715C(v3, v4, v5);
}

__n128 DiscoveryModel.BindableState.choosing.setter(__n128 *a1)
{
  v2 = a1->n128_u64[0];
  v3 = a1->n128_u8[8];
  v11 = a1[1];
  v4 = a1[2].n128_u64[0];
  v5 = a1[2].n128_u8[8];
  v6 = a1[2].n128_u8[9];
  v7 = *(v1 + 120);
  v8 = *(v1 + 128);
  v9 = *(v1 + 136);

  sub_2406769C4(v7, v8, v9);
  *(v1 + 104) = v2;
  *(v1 + 112) = v3;
  result = v11;
  *(v1 + 120) = v11;
  *(v1 + 136) = v4;
  *(v1 + 144) = v5;
  *(v1 + 145) = v6;
  return result;
}

uint64_t sub_24067A76C()
{
  v1 = 0x6574617473627573;
  v2 = 0x7265766F63736964;
  if (*v0 != 2)
  {
    v2 = 0x676E69736F6F6863;
  }

  if (*v0)
  {
    v1 = 0x7265766F63736964;
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

uint64_t sub_24067A7F4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24068A560(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24067A81C(uint64_t a1)
{
  v2 = sub_240686288();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24067A858(uint64_t a1)
{
  v2 = sub_240686288();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DiscoveryModel.BindableState.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BAF50, &qword_240770B88);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v25 - v5;
  v7 = *v1;
  v34 = v1[8];
  v33 = v1[9];
  v32 = v1[10];
  v8 = *(v1 + 3);
  v38 = *(v1 + 2);
  v37 = v8;
  v36 = *(v1 + 4);
  v35 = v1[40];
  v9 = *(v1 + 4);
  v54 = *(v1 + 3);
  v55 = v9;
  v56 = *(v1 + 5);
  v57 = v1[96];
  v28 = *(v1 + 13);
  v27 = v1[112];
  v10 = *(v1 + 16);
  v31 = *(v1 + 15);
  v30 = v10;
  v29 = *(v1 + 17);
  v11 = v1[144];
  v12 = v1[145];
  v13 = a1[3];
  v14 = a1;
  v16 = v15;
  __swift_project_boxed_opaque_existential_1(v14, v13);
  sub_240686288();
  sub_24075AF74();
  LOBYTE(v50) = v7;
  LOBYTE(v47[0]) = 0;
  sub_2406862DC();
  v17 = v58;
  sub_24075ABE4();
  if (!v17)
  {
    v26 = v12;
    LODWORD(v58) = v11;
    LOBYTE(v50) = v34;
    BYTE1(v50) = v33;
    BYTE2(v50) = v32;
    *(&v50 + 1) = v38;
    *&v51 = v37;
    *(&v51 + 1) = v36;
    LOBYTE(v52) = v35;
    LOBYTE(v47[0]) = 1;
    sub_2406771E0(v38, v37, v36, v35);
    sub_240686330();
    sub_24075ABE4();
    sub_240604AE0(*(&v50 + 1), v51, *(&v51 + 1), v52);
    v50 = v54;
    v51 = v55;
    v52 = v56;
    v53 = v57;
    v49 = 2;
    sub_2406771A8(&v54, v47);
    sub_240686384();
    sub_24075ABE4();
    v47[0] = v50;
    v47[1] = v51;
    v47[2] = v52;
    v48 = v53;
    sub_240686258(v47);
    v40 = v28;
    v41 = v27;
    v18 = v31;
    v42 = v31;
    v19 = v30;
    v43 = v30;
    v20 = v29;
    v44 = v29;
    v45 = v58;
    v46 = v26;
    v39 = 3;

    sub_24067715C(v18, v19, v20);
    sub_2406863D8();
    sub_24075ABE4();
    v21 = v42;
    v22 = v43;
    v23 = v44;

    sub_2406769C4(v21, v22, v23);
  }

  return (*(v4 + 8))(v6, v16);
}

uint64_t DiscoveryModel.BindableState.hash(into:)(__int128 *a1)
{
  v3 = v1[9];
  v6 = *(v1 + 6);
  v4 = v1[65];
  MEMORY[0x245CC6BA0](*v1);
  sub_24075AE94();
  if (v3 != 2)
  {
    sub_24075AE94();
  }

  sub_24075AE94();
  sub_24075AE94();
  DiscoveryModel.PairingState.hash(into:)(a1);
  sub_2405ED0F0(a1, v6);
  sub_2405F115C();
  sub_24075AE94();
  if (v4 != 2)
  {
    sub_24075AE94();
  }

  sub_24075AE94();
  DiscoveryModel.PairingState.hash(into:)(a1);
  return DiscoveryModel.ChooseFamilyMember.hash(into:)(a1);
}

uint64_t DiscoveryModel.BindableState.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[9];
  v5 = *(v0 + 6);
  v3 = v0[65];
  sub_24075AE64();
  MEMORY[0x245CC6BA0](v1);
  sub_24075AE94();
  if (v2 != 2)
  {
    sub_24075AE94();
  }

  sub_24075AE94();
  sub_24075AE94();
  DiscoveryModel.PairingState.hash(into:)(v6);
  sub_2405ED0F0(v6, v5);
  sub_2405F115C();
  sub_24075AE94();
  if (v3 != 2)
  {
    sub_24075AE94();
  }

  sub_24075AE94();
  DiscoveryModel.PairingState.hash(into:)(v6);
  DiscoveryModel.ChooseFamilyMember.hash(into:)(v6);
  return sub_24075AED4();
}

void *DiscoveryModel.BindableState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BAF80, &qword_240770B90);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v29 - v7;
  sub_2406769C4(1, 0, 0);
  v9 = a1[3];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_240686288();
  sub_24075AF34();
  if (v2)
  {
    v106 = 0;
    v48 = 0;
    v47 = 0;
    v12 = MEMORY[0x277D84FA0];
    v45 = 160;
    v46 = 2;
    v13 = MEMORY[0x277D84FA0];
    __swift_destroy_boxed_opaque_existential_1(v44);
    sub_240604AE0(0, 0, 0, 0xA0u);
    v58 = v13;
    *v59 = v12;
    v59[8] = v47;
    v59[9] = v46;
    *&v59[10] = v104;
    *&v59[14] = v105;
    *&v59[16] = v48;
    v60 = v106;
    v61 = 0;
    LOBYTE(v62) = v45;
    sub_240686258(&v58);

    return sub_2406769C4(1, 0, 0);
  }

  else
  {
    v10 = v6;
    LOBYTE(v49[0]) = 0;
    sub_24068642C();
    sub_24075AAF4();
    v11 = v58;
    LOBYTE(v49[0]) = 1;
    sub_240686480();
    sub_24075AAF4();
    v39 = BYTE1(v58);
    v40 = v58;
    v38 = BYTE2(v58);
    v42 = *v59;
    v43 = *&v59[16];
    v41 = v60;
    sub_240604AE0(0, 0, 0, 0xA0u);
    v93 = 2;
    sub_2406864D4();
    sub_24075AAF4();
    v36 = v11;
    v14 = v94;
    v15 = v95;
    v46 = v97;
    v47 = v96;
    v104 = v98;
    v105 = v99;
    v48 = v100;
    v106 = v101;
    v37 = v102;
    v45 = v103;
    v87[0] = MEMORY[0x277D84FA0];
    v87[1] = MEMORY[0x277D84FA0];
    v88 = 512;
    v90 = 0;
    v91 = 0;
    v89 = 0;
    v92 = -96;
    sub_240686258(v87);
    v79 = 3;
    sub_240686528();
    sub_24075AAF4();
    (*(v10 + 8))(v8, v5);
    v16 = v80;
    v32 = v81;
    v17 = v82;
    v34 = v82;
    v35 = v80;
    v31 = v83;
    v18 = v84;
    v33 = v84;
    v30 = v85;
    v19 = v86;

    sub_2406769C4(1, 0, 0);
    LOBYTE(v49[0]) = v36;
    BYTE8(v49[0]) = v40;
    BYTE9(v49[0]) = v39;
    BYTE10(v49[0]) = v38;
    v49[1] = v42;
    *&v50 = v43;
    BYTE8(v50) = v41;
    *&v51 = v14;
    *(&v51 + 1) = v15;
    LOBYTE(v52) = v47;
    BYTE1(v52) = v46;
    *(&v52 + 2) = v104;
    WORD3(v52) = v105;
    *(&v52 + 1) = v48;
    *&v53 = v106;
    *(&v53 + 1) = v37;
    LOBYTE(v54) = v45;
    *(&v54 + 1) = v16;
    LOBYTE(v16) = v32;
    LOBYTE(v55) = v32;
    *(&v55 + 1) = v17;
    v20 = v31;
    *&v56 = v31;
    *(&v56 + 1) = v18;
    LOBYTE(v18) = v30;
    LOBYTE(v57) = v30;
    HIBYTE(v57) = v19;
    v21 = v42;
    *a2 = v49[0];
    *(a2 + 16) = v21;
    v22 = v50;
    v23 = v51;
    v24 = v53;
    *(a2 + 64) = v52;
    *(a2 + 80) = v24;
    *(a2 + 32) = v22;
    *(a2 + 48) = v23;
    v25 = v54;
    v26 = v55;
    v27 = v56;
    *(a2 + 144) = v57;
    *(a2 + 112) = v26;
    *(a2 + 128) = v27;
    *(a2 + 96) = v25;
    sub_2406770F4(v49, &v58);
    __swift_destroy_boxed_opaque_existential_1(v44);
    LOBYTE(v58) = v36;
    v59[0] = v40;
    v59[1] = v39;
    v59[2] = v38;
    *&v59[8] = v42;
    v60 = v43;
    LOBYTE(v61) = v41;
    v62 = v14;
    v63 = v15;
    v64 = v47;
    v65 = v46;
    v66 = v104;
    v67 = v105;
    v68 = v48;
    v69 = v106;
    v70 = v37;
    v71 = v45;
    v72 = v35;
    v73 = v16;
    v74 = v34;
    v75 = v20;
    v76 = v33;
    v77 = v18;
    v78 = v19;
    return sub_24067712C(&v58);
  }
}

uint64_t sub_24067B6E4(__int128 *a1)
{
  MEMORY[0x245CC6BA0](*v1);
  DiscoveryModel.Discovering.hash(into:)(a1);
  DiscoveryModel.Discovered.hash(into:)(a1);
  return DiscoveryModel.ChooseFamilyMember.hash(into:)(a1);
}

uint64_t sub_24067B7E0(uint64_t a1)
{
  v2 = *v1;
  sub_24075AE64();
  MEMORY[0x245CC6BA0](v2);
  DiscoveryModel.Discovering.hash(into:)(v4);
  DiscoveryModel.Discovered.hash(into:)(v4);
  DiscoveryModel.ChooseFamilyMember.hash(into:)(v4);
  return sub_24075AED4();
}

uint64_t sub_24067B8F0(uint64_t a1)
{
  v2 = sub_2406865D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24067B92C(uint64_t a1)
{
  v2 = sub_2406865D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24067B968(uint64_t a1)
{
  v2 = sub_24068657C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24067B9A4(uint64_t a1)
{
  v2 = sub_24068657C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24067B9E0(uint64_t a1)
{
  v2 = sub_240686678();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24067BA1C(uint64_t a1)
{
  v2 = sub_240686678();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24067BA58(uint64_t a1)
{
  v2 = sub_2406866CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24067BA94(uint64_t a1)
{
  v2 = sub_2406866CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24067BAD0(uint64_t a1)
{
  v2 = sub_240686624();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24067BB0C(uint64_t a1)
{
  v2 = sub_240686624();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DiscoveryModel.State.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BAFA8, &qword_240770B98);
  v39 = *(v3 - 8);
  v40 = v3;
  MEMORY[0x28223BE20](v3);
  v38 = &v31 - v4;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BAFB0, &qword_240770BA0);
  v34 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v33 = &v31 - v5;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BAFB8, &qword_240770BA8);
  v35 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v7 = &v31 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BAFC0, &qword_240770BB0);
  v32 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BAFC8, &qword_240770BB8);
  v47 = *(v11 - 8);
  v48 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v31 - v12;
  v14 = v1[1];
  v43 = *v1;
  v44 = v14;
  v15 = v1[2];
  v17 = v1[4];
  v16 = v1[5];
  v45 = v1[3];
  v46 = v17;
  v41 = v16;
  v42 = v15;
  v18 = *(v1 + 48);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24068657C();
  sub_24075AF74();
  v19 = (v18 >> 3) & 3;
  if (v19 > 1)
  {
    if (v19 == 2)
    {
      LOBYTE(v49) = 3;
      sub_2406865D0();
      v10 = v38;
      v22 = v48;
      sub_24075AB54();
      v49 = v43;
      LOBYTE(v50) = v44 & 1;
      v51 = v42;
      v52 = v45;
      v53 = v46;
      LOWORD(v54) = v41 & 0x101;
      sub_2406863D8();
      v8 = v40;
      sub_24075ABE4();
      v23 = v39;
      goto LABEL_6;
    }

    LOBYTE(v49) = 2;
    sub_240686624();
    v29 = v33;
    v30 = v48;
    sub_24075AB54();
    (*(v34 + 8))(v29, v36);
    return (*(v47 + 8))(v13, v30);
  }

  else
  {
    if (!v19)
    {
      v20 = v43;
      v21 = v43 >> 8;
      LOBYTE(v49) = 0;
      sub_2406866CC();
      v22 = v48;
      sub_24075AB54();
      LOBYTE(v49) = v20 & 1;
      BYTE1(v49) = v21;
      BYTE2(v49) = BYTE2(v20) & 1;
      v50 = v44;
      v51 = v42;
      v52 = v45;
      LOBYTE(v53) = v46;
      sub_240686330();
      sub_24075ABE4();
      v23 = v32;
LABEL_6:
      (*(v23 + 8))(v10, v8);
      return (*(v47 + 8))(v13, v22);
    }

    v25 = v42 >> 8;
    v26 = v42 & 1;
    LOBYTE(v49) = 1;
    sub_240686678();
    v27 = v48;
    sub_24075AB54();
    v49 = v43;
    v50 = v44;
    LOBYTE(v51) = v26;
    BYTE1(v51) = v25;
    v52 = v45;
    v53 = v46;
    v54 = v41;
    v55 = v18 & 0xE7;
    sub_240686384();
    v28 = v37;
    sub_24075ABE4();
    (*(v35 + 8))(v7, v28);
    return (*(v47 + 8))(v13, v27);
  }
}

uint64_t DiscoveryModel.State.hash(into:)(__int128 *a1)
{
  v3 = *v1;
  v4 = *(v1 + 16);
  v5 = (*(v1 + 48) >> 3) & 3;
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      MEMORY[0x245CC6BA0](3);
      return DiscoveryModel.ChooseFamilyMember.hash(into:)(a1);
    }

    else
    {
      return MEMORY[0x245CC6BA0](2);
    }
  }

  else
  {
    if (v5)
    {
      MEMORY[0x245CC6BA0](1);
      sub_2405ED0F0(a1, v3);
      sub_2405F115C();
      sub_24075AE94();
      if ((v4 & 0xFF00) != 0x200)
      {
        sub_24075AE94();
      }

      sub_24075AE94();
    }

    else
    {
      MEMORY[0x245CC6BA0](0);
      sub_24075AE94();
      if ((v3 & 0xFF00) != 0x200)
      {
        sub_24075AE94();
      }

      sub_24075AE94();
      sub_24075AE94();
    }

    return DiscoveryModel.PairingState.hash(into:)(a1);
  }
}

uint64_t DiscoveryModel.State.hashValue.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);
  *&v4[9] = *v0;
  *&v4[11] = v2;
  *&v4[13] = *(v0 + 32);
  v5 = v1;
  sub_24075AE64();
  DiscoveryModel.State.hash(into:)(v4);
  return sub_24075AED4();
}

uint64_t DiscoveryModel.State.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BAFF8, &qword_240770BC0);
  v52 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v56 = &v46 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB000, &qword_240770BC8);
  v50 = *(v4 - 8);
  v51 = v4;
  MEMORY[0x28223BE20](v4);
  v54 = &v46 - v5;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB008, &qword_240770BD0);
  v53 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v7 = &v46 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB010, &qword_240770BD8);
  v49 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v46 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB018, &qword_240770BE0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v46 - v13;
  v15 = a1[3];
  v70 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_24068657C();
  v16 = v59;
  sub_24075AF34();
  if (!v16)
  {
    v17 = v10;
    v47 = v8;
    v18 = v55;
    v48 = 0;
    v20 = v56;
    v19 = v57;
    v59 = v12;
    v21 = v58;
    v22 = sub_24075AB34();
    v23 = (2 * *(v22 + 16)) | 1;
    v66 = v22;
    v67 = v22 + 32;
    v68 = 0;
    v69 = v23;
    v24 = sub_2405B8AF8();
    if (v24 == 4 || v68 != v69 >> 1)
    {
      v34 = v14;
      v35 = sub_24075A8C4();
      swift_allocError();
      v37 = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6620, &qword_24075DA40);
      *v37 = &type metadata for DiscoveryModel.State;
      sub_24075AA64();
      sub_24075A8A4();
      (*(*(v35 - 8) + 104))(v37, *MEMORY[0x277D84160], v35);
      swift_willThrow();
      (*(v59 + 8))(v34, v11);
LABEL_11:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v70);
    }

    if (v24 <= 1u)
    {
      if (!v24)
      {
        LOBYTE(v60) = 0;
        sub_2406866CC();
        v25 = v48;
        sub_24075AA54();
        if (!v25)
        {
          sub_240686480();
          v26 = v47;
          sub_24075AAF4();
          (*(v49 + 8))(v17, v26);
          (*(v59 + 8))(v14, v11);
          swift_unknownObjectRelease();
          v27 = 0;
          v28 = 0;
          v29 = v61;
          v30 = v62;
          v31 = v63;
          v32 = 0x10000;
          if (!BYTE2(v60))
          {
            v32 = 0;
          }

          v33 = v60 | (BYTE1(v60) << 8) | v32;
          goto LABEL_25;
        }

        goto LABEL_15;
      }

      LOBYTE(v60) = 1;
      sub_240686678();
      v42 = v48;
      sub_24075AA54();
      if (!v42)
      {
        sub_2406864D4();
        sub_24075AAF4();
        (*(v53 + 8))(v7, v18);
        (*(v59 + 8))(v14, v11);
        swift_unknownObjectRelease();
        v33 = v60;
        v29 = v61;
        v30 = v62;
        v31 = v63;
        v27 = v64;
        v28 = v65 & 0xE3 | 8;
LABEL_25:
        *v21 = v33;
        *(v21 + 8) = v29;
        *(v21 + 16) = v30;
        *(v21 + 32) = v31;
        *(v21 + 40) = v27;
        *(v21 + 48) = v28;
        return __swift_destroy_boxed_opaque_existential_1(v70);
      }

      goto LABEL_15;
    }

    if (v24 == 2)
    {
      LOBYTE(v60) = 2;
      sub_240686624();
      v39 = v54;
      v40 = v48;
      sub_24075AA54();
      v41 = v59;
      if (!v40)
      {
        (*(v50 + 8))(v39, v51);
        (*(v41 + 8))(v14, v11);
        swift_unknownObjectRelease();
        v33 = 0;
        v29 = 0;
        v31 = 0;
        v27 = 0;
        v30 = 0uLL;
        v28 = 24;
        goto LABEL_25;
      }

LABEL_15:
      (*(v59 + 8))(v14, v11);
      goto LABEL_11;
    }

    LOBYTE(v60) = 3;
    sub_2406865D0();
    v43 = v48;
    sub_24075AA54();
    v44 = v59;
    if (!v43)
    {
      sub_240686528();
      sub_24075AAF4();
      (*(v52 + 8))(v20, v19);
      (*(v44 + 8))(v14, v11);
      swift_unknownObjectRelease();
      v33 = v60;
      v29 = v61;
      v30 = v62;
      v31 = v63;
      v45 = 256;
      if (!BYTE1(v64))
      {
        v45 = 0;
      }

      v27 = v45 | v64;
      v28 = 16;
      goto LABEL_25;
    }

    (*(v59 + 8))(v14, v11);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v70);
}

uint64_t sub_24067CBF0()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);
  *&v4[9] = *v0;
  *&v4[11] = v2;
  *&v4[13] = *(v0 + 32);
  v5 = v1;
  sub_24075AE64();
  DiscoveryModel.State.hash(into:)(v4);
  return sub_24075AED4();
}

uint64_t sub_24067CC50(uint64_t a1)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 16);
  *&v5[9] = *v1;
  *&v5[11] = v3;
  *&v5[13] = *(v1 + 32);
  v6 = v2;
  sub_24075AE64();
  DiscoveryModel.State.hash(into:)(v5);
  return sub_24075AED4();
}

uint64_t DiscoveryModel.Discovering.pairingState.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  v5 = *(v1 + 32);
  *(a1 + 24) = v5;
  return sub_2406771E0(v2, v3, v4, v5);
}

__n128 DiscoveryModel.Discovering.pairingState.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u8[8];
  sub_240604AE0(*(v1 + 8), *(v1 + 16), *(v1 + 24), *(v1 + 32));
  result = v5;
  *(v1 + 8) = v5;
  *(v1 + 24) = v2;
  *(v1 + 32) = v3;
  return result;
}

BOOL static DiscoveryModel.PairingState.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v43[0] = *a1;
  v43[1] = v3;
  v43[2] = v4;
  v44 = v5;
  v45 = v6;
  v46 = v7;
  v47 = v8;
  v10 = v5 >> 5;
  v48 = v9;
  if (v5 >> 5 > 2)
  {
    if (v10 != 3)
    {
      if (v10 == 4)
      {
        if ((v9 & 0xE0) == 0x80)
        {
          v35 = *(v2 + 16);
          v36 = *(v2 + 24);
          v37 = *(v2 + 32);
          v12 = *(v6 + 24);
          v13 = *(v6 + 32);
          v38 = *(v6 + 40);
          v34 = *(v2 + 40);
          v33 = *(v6 + 16);
          if (v34 <= 0xFB)
          {
            v41[0] = *(v2 + 16);
            v41[1] = v36;
            v41[2] = v37;
            v42 = v34;
            if (v38 <= 0xFB)
            {
              v39[0] = v33;
              v39[1] = v12;
              v39[2] = v13;
              v40 = v38;
              sub_2406771E0(v6, v7, v8, v9);
              sub_2406771E0(v2, v3, v4, v5);
              sub_240686788(v33, v12, v13, v38);
              sub_240686788(v35, v36, v37, v34);
              sub_240686788(v35, v36, v37, v34);
              v26 = static DiscoveryModel.PairingState.== infix(_:_:)(v41, v39);
              sub_240604AE0(v33, v12, v13, v38);
              sub_240604AE0(v35, v36, v37, v34);
              sub_24068679C(v35, v36, v37, v34);
              sub_240686720(v43);
              return (v26 & 1) != 0;
            }

            sub_2406771E0(v6, v7, v8, v9);
            sub_2406771E0(v2, v3, v4, v5);
            v14 = v33;
            sub_240686788(v33, v12, v13, v38);
            v16 = v35;
            v15 = v36;
            v17 = v37;
            v18 = v34;
            sub_240686788(v35, v36, v37, v34);
            sub_240686788(v35, v36, v37, v34);
            sub_240604AE0(v35, v36, v37, v34);
          }

          else
          {
            sub_2406771E0(v6, v7, v8, v9);
            sub_2406771E0(v2, v3, v4, v5);
            v14 = v33;
            sub_240686788(v33, v12, v13, v38);
            v16 = v35;
            v15 = v36;
            v17 = v37;
            v18 = v34;
            sub_240686788(v35, v36, v37, v34);
            if (v38 > 0xFB)
            {
              sub_24068679C(v35, v36, v37, v34);
              goto LABEL_44;
            }
          }

          sub_24068679C(v16, v15, v17, v18);
          sub_24068679C(v14, v12, v13, v38);
          goto LABEL_48;
        }
      }

      else if ((v9 & 0xE0) == 0xA0 && !(v7 | v6 | v8) && v9 == 160)
      {
        goto LABEL_44;
      }

LABEL_46:
      v21 = v6;
      v22 = v7;
      v23 = v8;
      v24 = v9;
LABEL_47:
      sub_2406771E0(v21, v22, v23, v24);
LABEL_48:
      sub_240686720(v43);
      return 0;
    }

    if ((v9 & 0xE0) != 0x60)
    {
LABEL_32:

      goto LABEL_46;
    }

    if ((v2 != v6 || v3 != v7) && (sub_24075ACF4() & 1) == 0)
    {
      goto LABEL_97;
    }

    v20 = v9 & 0x1F;
    if ((v5 & 0x1F) == 0)
    {
      sub_2406771E0(v6, v7, v8, v9);
      sub_2406771E0(v2, v3, v4, v5);
      sub_240686720(v43);
      if ((v9 & 0x1F) != 0)
      {
        return 0;
      }

      return v4 == v8;
    }

    if ((v5 & 0x1F) == 1)
    {
      sub_2406771E0(v6, v7, v8, v9);
      sub_2406771E0(v2, v3, v4, v5);
      sub_240686720(v43);
      if (v20 != 1)
      {
        return 0;
      }

      return v4 == v8;
    }

    if (v4)
    {
      if (v4 == 1)
      {
        if (v20 == 2 && v8 == 1)
        {
          sub_2406771E0(v6, v7, 1, v9);
          sub_2406771E0(v2, v3, 1, v5);
          sub_240686720(v43);
          return 1;
        }

        goto LABEL_97;
      }

      if (v20 == 2 && v8 == 2)
      {
        sub_2406771E0(v6, v7, 2, v9);
        v30 = v2;
        v31 = v3;
        v32 = 2;
        goto LABEL_96;
      }
    }

    else if (v20 == 2 && !v8)
    {
      sub_2406771E0(v6, v7, 0, v9);
      v30 = v2;
      v31 = v3;
      v32 = 0;
LABEL_96:
      sub_2406771E0(v30, v31, v32, v5);
      goto LABEL_44;
    }

LABEL_97:
    sub_2406771E0(v6, v7, v8, v9);
    v21 = v2;
    v22 = v3;
    v23 = v4;
    v24 = v5;
    goto LABEL_47;
  }

  if (v10)
  {
    if (v10 == 1)
    {
      if ((v9 & 0xE0) == 0x20)
      {
        v11 = v7;
        if (v3)
        {
          if (v3 == 1)
          {
            goto LABEL_7;
          }

          goto LABEL_36;
        }

LABEL_51:
        sub_240686720(v43);
        if (!v11)
        {
          return v2 == v6;
        }

        return 0;
      }
    }

    else if ((v9 & 0xE0) == 0x40)
    {
      v11 = v7;
      if (v3)
      {
        if (v3 == 1)
        {
LABEL_7:
          sub_240686720(v43);
          if (v11 != 1)
          {
            return 0;
          }

          return v2 == v6;
        }

LABEL_36:
        if (v2)
        {
          if (v2 == 1)
          {
            sub_240686720(v43);
            if (v11 != 2 || v6 != 1)
            {
              return 0;
            }
          }

          else
          {
            sub_240686720(v43);
            if (v11 != 2 || v6 != 2)
            {
              return 0;
            }
          }
        }

        else
        {
          sub_240686720(v43);
          if (v11 != 2 || v6)
          {
            return 0;
          }
        }

        return 1;
      }

      goto LABEL_51;
    }

    goto LABEL_46;
  }

  if (v9 >= 0x20)
  {
    goto LABEL_32;
  }

  if ((v2 != v6 || v3 != v7) && (sub_24075ACF4() & 1) == 0)
  {
    goto LABEL_97;
  }

  if (!v5)
  {
    if (!v9)
    {
      sub_2406771E0(v6, v7, v8, 0);
      sub_2406771E0(v2, v3, v4, 0);
      sub_240686720(v43);
      return v4 == v8;
    }

    sub_2406771E0(v6, v7, v8, v9);
    v21 = v2;
    v22 = v3;
    v23 = v4;
    v24 = 0;
    goto LABEL_47;
  }

  if (v5 == 1)
  {
    if (v9 == 1)
    {
      v19 = 1;
      sub_2406771E0(v6, v7, v8, 1u);
      sub_2406771E0(v2, v3, v4, 1u);
      sub_240686720(v43);
      if (v4 == v8)
      {
        return v19;
      }

      return 0;
    }

    sub_2406771E0(v6, v7, v8, v9);
    v21 = v2;
    v22 = v3;
    v23 = v4;
    v24 = 1;
    goto LABEL_47;
  }

  if (v4)
  {
    if (v4 == 1)
    {
      if (v9 == 2 && v8 == 1)
      {
        v19 = 1;
        sub_2406771E0(v6, v7, 1, 2u);
        sub_2406771E0(v2, v3, 1, 2u);
        sub_240686720(v43);
        return v19;
      }

      sub_2406771E0(v6, v7, v8, v9);
      v21 = v2;
      v22 = v3;
      v23 = 1;
      v24 = 2;
      goto LABEL_47;
    }

    if (v9 != 2 || v8 != 2)
    {
      sub_2406771E0(v6, v7, v8, v9);
      v21 = v2;
      v22 = v3;
      v23 = 2;
      v24 = 2;
      goto LABEL_47;
    }

    sub_2406771E0(v6, v7, 2, 2u);
    v27 = v2;
    v28 = v3;
    v29 = 2;
  }

  else
  {
    if (v9 != 2 || v8)
    {
      sub_2406771E0(v6, v7, v8, v9);
      v21 = v2;
      v22 = v3;
      v23 = 0;
      v24 = 2;
      goto LABEL_47;
    }

    sub_2406771E0(v6, v7, 0, 2u);
    v27 = v2;
    v28 = v3;
    v29 = 0;
  }

  sub_2406771E0(v27, v28, v29, 2u);
LABEL_44:
  sub_240686720(v43);
  return 1;
}

unint64_t sub_24067D5E8()
{
  v1 = 0x614D73776F6C6C61;
  v2 = 0xD000000000000013;
  if (*v0 != 2)
  {
    v2 = 0x53676E6972696170;
  }

  if (*v0)
  {
    v1 = 0x64657463656C6573;
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

uint64_t sub_24067D684@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24068A83C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24067D6AC(uint64_t a1)
{
  v2 = sub_2406867B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24067D6E8(uint64_t a1)
{
  v2 = sub_2406867B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DiscoveryModel.Discovering.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB028, &qword_240770BF0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - v5;
  v25 = *(v1 + 1);
  v19 = *(v1 + 2);
  v7 = *(v1 + 8);
  v17 = *(v1 + 16);
  v18 = v7;
  v16 = *(v1 + 24);
  v8 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2406867B0();
  sub_24075AF74();
  LOBYTE(v21) = 0;
  v9 = v20;
  sub_24075ABC4();
  if (!v9)
  {
    v10 = v8;
    v12 = v16;
    v11 = v17;
    v13 = v18;
    LOBYTE(v21) = 1;
    sub_24075AB74();
    LOBYTE(v21) = 2;
    sub_24075ABC4();
    v20 = 0;
    v21 = v13;
    v22 = v11;
    v23 = v12;
    v24 = v10;
    v26 = 3;
    sub_2406771E0(v13, v11, v12, v10);
    sub_240686804();
    sub_24075ABE4();
    sub_240604AE0(v21, v22, v23, v24);
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t DiscoveryModel.Discovering.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 1);
  sub_24075AE94();
  if (v3 != 2)
  {
    sub_24075AE94();
  }

  sub_24075AE94();
  sub_24075AE94();
  return DiscoveryModel.PairingState.hash(into:)(a1);
}

uint64_t DiscoveryModel.Discovering.hashValue.getter()
{
  v1 = *(v0 + 1);
  sub_24075AE64();
  sub_24075AE94();
  if (v1 != 2)
  {
    sub_24075AE94();
  }

  sub_24075AE94();
  sub_24075AE94();
  DiscoveryModel.PairingState.hash(into:)(v3);
  return sub_24075AED4();
}

uint64_t DiscoveryModel.Discovering.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB040, &qword_240770BF8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2406867B0();
  sub_24075AF34();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v18) = 0;
  v9 = sub_24075AAD4();
  LOBYTE(v18) = 1;
  v10 = sub_24075AA84();
  LOBYTE(v18) = 2;
  v22 = sub_24075AAD4();
  v23 = 3;
  sub_240686858();
  sub_24075AAF4();
  v17 = v9 & 1;
  v22 &= 1u;
  (*(v6 + 8))(v8, v5);
  v11 = v18;
  v12 = v19;
  v13 = v20;
  v14 = v21;
  *a2 = v17;
  *(a2 + 1) = v10;
  *(a2 + 2) = v22;
  *(a2 + 8) = v11;
  *(a2 + 16) = v12;
  *(a2 + 24) = v13;
  *(a2 + 32) = v14;
  sub_2406771E0(v11, v12, v13, v14);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_240604AE0(v11, v12, v13, v14);
}

uint64_t sub_24067DD98()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 2);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6[72] = *v0;
  v6[73] = v1;
  v6[74] = v2;
  v7 = *(v0 + 8);
  v8 = v3;
  v9 = v4;
  sub_24075AE64();
  DiscoveryModel.Discovering.hash(into:)(v6);
  return sub_24075AED4();
}

uint64_t sub_24067DE10(uint64_t a1)
{
  v2 = *(v1 + 1);
  v3 = *(v1 + 2);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v7[72] = *v1;
  v7[73] = v2;
  v7[74] = v3;
  v8 = *(v1 + 8);
  v9 = v4;
  v10 = v5;
  sub_24075AE64();
  DiscoveryModel.Discovering.hash(into:)(v7);
  return sub_24075AED4();
}

uint64_t DiscoveryModel.Discovered.pairingState.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  v5 = *(v1 + 48);
  *(a1 + 24) = v5;
  return sub_2406771E0(v2, v3, v4, v5);
}

__n128 DiscoveryModel.Discovered.pairingState.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u8[8];
  sub_240604AE0(*(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48));
  result = v5;
  *(v1 + 24) = v5;
  *(v1 + 40) = v2;
  *(v1 + 48) = v3;
  return result;
}

uint64_t DiscoveryModel.Discovered.account(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a1;
  v32 = a2;
  v3 = type metadata accessor for IdMSAccount(0);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v34 = &v31 - v8;
  v9 = *v2 + 56;
  v10 = 1 << *(*v2 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(*v2 + 56);
  v13 = (v10 + 63) >> 6;

  v15 = 0;
  v33 = v13;
  v37 = v4;
  v38 = v3;
  v35 = result;
  v36 = v7;
  while (v12)
  {
LABEL_11:
    v17 = v34;
    sub_240618544(*(result + 48) + *(v4 + 72) * (__clz(__rbit64(v12)) | (v15 << 6)), v34);
    sub_24061A408(v17, v7);
    v18 = *&v7[*(v3 + 28)];
    if (*(v18 + 16))
    {
      sub_24075A0B4();
      sub_24075AE64();
      sub_24075A114();
      v19 = sub_24075AED4();

      v20 = -1 << *(v18 + 32);
      v21 = v19 & ~v20;
      if ((*(v18 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
      {
        v22 = ~v20;
        while (1)
        {
          v23 = sub_24075A0B4();
          v25 = v24;
          if (v23 == sub_24075A0B4() && v25 == v26)
          {

            goto LABEL_24;
          }

          v28 = sub_24075ACF4();

          if (v28)
          {
            break;
          }

          v21 = (v21 + 1) & v22;
          if (((*(v18 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
          {
            goto LABEL_5;
          }
        }

LABEL_24:
        v30 = v32;
        sub_24061A408(v36, v32);
        v29 = 0;
        v4 = v37;
        v3 = v38;
        return (*(v4 + 56))(v30, v29, 1, v3);
      }
    }

LABEL_5:
    v12 &= v12 - 1;
    v7 = v36;
    sub_240618890(v36);
    v4 = v37;
    v3 = v38;
    result = v35;
    v13 = v33;
  }

  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v16 >= v13)
    {

      v29 = 1;
      v30 = v32;
      return (*(v4 + 56))(v30, v29, 1, v3);
    }

    v12 = *(v9 + 8 * v16);
    ++v15;
    if (v12)
    {
      v15 = v16;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_24067E298()
{
  v1 = *v0;
  v2 = 0x73746E756F636361;
  v3 = 0xD000000000000027;
  v4 = 0xD000000000000012;
  if (v1 != 3)
  {
    v4 = 0x53676E6972696170;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x7365636976726573;
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

uint64_t sub_24067E348@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24068A9B8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24067E370(uint64_t a1)
{
  v2 = sub_2406868AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24067E3AC(uint64_t a1)
{
  v2 = sub_2406868AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DiscoveryModel.Discovered.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB050, &qword_240770C00);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  v8 = *v1;
  v18 = *(v1 + 8);
  v23 = *(v1 + 16);
  v17 = *(v1 + 17);
  v9 = *(v1 + 32);
  v16 = *(v1 + 24);
  v10 = *(v1 + 40);
  v13 = v9;
  v14 = v10;
  v15 = *(v1 + 48);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2406868AC();

  sub_24075AF74();
  v19 = v8;
  v24 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB060, &unk_240770C08);
  sub_240686900(&qword_27E4BB068, &qword_27E4B6438, &protocol conformance descriptor for IdMSAccount, MEMORY[0x277D83B50]);
  sub_24075ABE4();
  if (v2)
  {
  }

  else
  {
    v11 = v16;

    v19 = v18;
    v24 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8278, &qword_240765670);
    sub_24068699C(&qword_27E4B8280, &qword_27E4B6470, &protocol conformance descriptor for AIDAServiceType, MEMORY[0x277D83B50]);
    sub_24075ABE4();
    LOBYTE(v19) = 2;
    sub_24075ABC4();
    LOBYTE(v19) = 3;
    sub_24075AB74();
    v19 = v11;
    v20 = v13;
    v21 = v14;
    v22 = v15;
    v24 = 4;
    sub_2406771E0(v11, v13, v14, v15);
    sub_240686804();
    sub_24075ABE4();
    sub_240604AE0(v19, v20, v21, v22);
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t DiscoveryModel.Discovered.hash(into:)(__int128 *a1)
{
  v3 = *(v1 + 17);
  sub_2405ED0F0(a1, *v1);
  sub_2405F115C();
  sub_24075AE94();
  if (v3 != 2)
  {
    sub_24075AE94();
  }

  sub_24075AE94();
  return DiscoveryModel.PairingState.hash(into:)(a1);
}

uint64_t DiscoveryModel.Discovered.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 17);
  sub_24075AE64();
  sub_2405ED0F0(v4, v1);
  sub_2405F115C();
  sub_24075AE94();
  if (v2 != 2)
  {
    sub_24075AE94();
  }

  sub_24075AE94();
  DiscoveryModel.PairingState.hash(into:)(v4);
  return sub_24075AED4();
}

uint64_t DiscoveryModel.Discovered.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB070, &qword_240770C18);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2406868AC();
  sub_24075AF34();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB060, &unk_240770C08);
  LOBYTE(v21) = 0;
  sub_240686900(&qword_27E4BB078, &qword_27E4B6480, &protocol conformance descriptor for IdMSAccount, MEMORY[0x277D83B70]);
  sub_24075AAF4();
  v9 = v25[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8278, &qword_240765670);
  LOBYTE(v21) = 1;
  sub_24068699C(&qword_27E4B82F8, &qword_27E4B64A0, &protocol conformance descriptor for AIDAServiceType, MEMORY[0x277D83B70]);
  sub_24075AAF4();
  v20 = v25[0];
  LOBYTE(v25[0]) = 2;
  v35 = sub_24075AAD4();
  LOBYTE(v25[0]) = 3;
  v19 = sub_24075AA84();
  v36 = 4;
  sub_240686858();
  sub_24075AAF4();
  v35 &= 1u;
  v10 = v35;
  (*(v6 + 8))(v8, v5);
  v18 = *(&v33 + 1);
  v11 = v33;
  v12 = v20;
  *&v21 = v9;
  *(&v21 + 1) = v20;
  LOBYTE(v22) = v10;
  v13 = v19;
  BYTE1(v22) = v19;
  *(&v22 + 1) = v32;
  v23 = v33;
  v14 = v32;
  v15 = v34;
  v24 = v34;
  *(a2 + 48) = v34;
  v16 = v22;
  *a2 = v21;
  *(a2 + 16) = v16;
  *(a2 + 32) = v23;
  sub_2406771A8(&v21, v25);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v25[0] = v9;
  v25[1] = v12;
  v26 = v35;
  v27 = v13;
  v28 = v14;
  v29 = v11;
  v30 = v18;
  v31 = v15;
  return sub_240686258(v25);
}

uint64_t sub_24067ECD0()
{
  sub_24075AE64();
  DiscoveryModel.Discovered.hash(into:)(v1);
  return sub_24075AED4();
}

uint64_t sub_24067ED14(uint64_t a1)
{
  sub_24075AE64();
  DiscoveryModel.Discovered.hash(into:)(v2);
  return sub_24075AED4();
}

void *DiscoveryModel.ChooseFamilyMember.selectedMember.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  return sub_24067715C(v2, v3, v4);
}

__n128 DiscoveryModel.ChooseFamilyMember.selectedMember.setter(__n128 *a1)
{
  v4 = *a1;
  v2 = a1[1].n128_u64[0];
  sub_2406769C4(*(v1 + 16), *(v1 + 24), *(v1 + 32));
  result = v4;
  *(v1 + 16) = v4;
  *(v1 + 32) = v2;
  return result;
}

unint64_t sub_24067EE3C()
{
  v1 = *v0;
  v2 = 0x737265626D656DLL;
  v3 = 0x64657463656C6573;
  v4 = 0x7250646C756F6873;
  if (v1 != 3)
  {
    v4 = 0xD000000000000015;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000013;
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

uint64_t sub_24067EEFC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24068AB78(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24067EF24(uint64_t a1)
{
  v2 = sub_240686A80();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24067EF60(uint64_t a1)
{
  v2 = sub_240686A80();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DiscoveryModel.ChooseFamilyMember.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB080, &qword_240770C20);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v14 - v6;
  v8 = *v1;
  v21 = *(v1 + 8);
  v9 = *(v1 + 16);
  v16 = *(v1 + 24);
  v17 = v9;
  v15 = *(v1 + 32);
  LODWORD(v9) = *(v1 + 40);
  v14[2] = *(v1 + 41);
  v14[3] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_240686A80();

  sub_24075AF74();
  v18 = v8;
  v22 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB090, &qword_240770C28);
  sub_240686AD4(&qword_27E4BB098, sub_24061AF78, MEMORY[0x277D83948]);
  sub_24075ABE4();
  if (v2)
  {
  }

  else
  {
    v11 = v15;
    v10 = v16;
    v12 = v17;

    LOBYTE(v18) = 1;
    sub_24075ABC4();
    v18 = v12;
    v19 = v10;
    v20 = v11;
    v22 = 2;
    sub_24067715C(v12, v10, v11);
    sub_24061AF78();
    sub_24075AB94();
    sub_2406769C4(v18, v19, v20);
    LOBYTE(v18) = 3;
    sub_24075ABC4();
    LOBYTE(v18) = 4;
    sub_24075ABC4();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t DiscoveryModel.ChooseFamilyMember.hash(into:)(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[4];
  sub_240682EF0(a1, *v1);
  sub_24075AE94();
  if (v2 == 1)
  {
    goto LABEL_5;
  }

  sub_24075AE94();
  sub_24075AE94();
  if (v2)
  {
    v4 = v2;
    sub_24075A6E4();
  }

  if (v3 >> 60 == 15)
  {
LABEL_5:
    sub_24075AE94();
  }

  else
  {
    sub_24075AE94();
    sub_2407596D4();
  }

  sub_24075AE94();
  return sub_24075AE94();
}

uint64_t DiscoveryModel.ChooseFamilyMember.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = v0[4];
  v3 = *(v0 + 40);
  v4 = *(v0 + 41);
  v7 = *v0;
  v8 = v1;
  v9 = *(v0 + 1);
  v10 = v2;
  v11 = v3;
  v12 = v4;
  sub_24075AE64();
  DiscoveryModel.ChooseFamilyMember.hash(into:)(v6);
  return sub_24075AED4();
}

void *DiscoveryModel.ChooseFamilyMember.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB0A0, &qword_240770C30);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_240686A80();
  sub_24075AF34();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    v15 = 0;
    v16 = 0;
    v14 = 1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB090, &qword_240770C28);
    v25 = 0;
    sub_240686AD4(&qword_27E4BB0A8, sub_24061AF24, MEMORY[0x277D83978]);
    sub_24075AAF4();
    v19 = v21;
    LOBYTE(v21) = 1;
    v24 = sub_24075AAD4();
    v25 = 2;
    sub_24061AF24();
    sub_24075AAA4();
    v10 = v21;
    v20 = v22;
    v11 = v23;
    sub_2406769C4(1, 0, 0);
    LOBYTE(v21) = 3;
    v18 = sub_24075AAD4();
    LOBYTE(v21) = 4;
    v12 = sub_24075AAD4();
    v17 = v24 & 1;
    v24 = v18 & 1;
    (*(v6 + 8))(v8, v5);
    v13 = v20;
    *a2 = v19;
    *(a2 + 8) = v17;
    *(a2 + 16) = v10;
    *(a2 + 24) = v13;
    *(a2 + 32) = v11;
    *(a2 + 40) = v24;
    *(a2 + 41) = v12 & 1;

    sub_24067715C(v10, v13, v11);
    __swift_destroy_boxed_opaque_existential_1(a1);

    v14 = v10;
    v15 = v13;
    v16 = v11;
  }

  return sub_2406769C4(v14, v15, v16);
}

uint64_t sub_24067F780()
{
  v1 = *(v0 + 8);
  v2 = v0[4];
  v3 = *(v0 + 40);
  v4 = *(v0 + 41);
  v7 = *v0;
  v8 = v1;
  v9 = *(v0 + 1);
  v10 = v2;
  v11 = v3;
  v12 = v4;
  sub_24075AE64();
  DiscoveryModel.ChooseFamilyMember.hash(into:)(v6);
  return sub_24075AED4();
}

uint64_t sub_24067F7F8(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = v1[4];
  v4 = *(v1 + 40);
  v5 = *(v1 + 41);
  v8 = *v1;
  v9 = v2;
  v10 = *(v1 + 1);
  v11 = v3;
  v12 = v4;
  v13 = v5;
  sub_24075AE64();
  DiscoveryModel.ChooseFamilyMember.hash(into:)(v7);
  return sub_24075AED4();
}

uint64_t sub_24067F868(uint64_t a1)
{
  v2 = sub_240686BF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24067F8A4(uint64_t a1)
{
  v2 = sub_240686BF4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24067F8E0(uint64_t a1)
{
  v2 = sub_240686C9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24067F91C(uint64_t a1)
{
  v2 = sub_240686C9C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24067F958(uint64_t a1)
{
  v2 = sub_240686BA0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24067F994(uint64_t a1)
{
  v2 = sub_240686BA0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24067F9D0(uint64_t a1)
{
  v2 = sub_240686C48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24067FA0C(uint64_t a1)
{
  v2 = sub_240686C48();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24067FA48()
{
  v1 = *v0;
  v2 = 0x7472617453746F6ELL;
  v3 = 0x65676E616863;
  v4 = 0x6465726577736E61;
  if (v1 != 4)
  {
    v4 = 0x656C6C65636E6163;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 2003789939;
  if (v1 != 1)
  {
    v5 = 7041889;
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
    return v3;
  }
}

uint64_t sub_24067FAF8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24068AD44(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24067FB20(uint64_t a1)
{
  v2 = sub_240686B4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24067FB5C(uint64_t a1)
{
  v2 = sub_240686B4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24067FB98(uint64_t a1)
{
  v2 = sub_240686D44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24067FBD4(uint64_t a1)
{
  v2 = sub_240686D44();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24067FC10(uint64_t a1)
{
  v2 = sub_240686CF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24067FC4C(uint64_t a1)
{
  v2 = sub_240686CF0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DiscoveryModel.PairingState.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB0B0, &qword_240770C38);
  v54 = *(v3 - 8);
  v55 = v3;
  MEMORY[0x28223BE20](v3);
  v52 = &v40 - v4;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB0B8, &qword_240770C40);
  v51 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v50 = &v40 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB0C0, &qword_240770C48);
  v48 = *(v6 - 8);
  v49 = v6;
  MEMORY[0x28223BE20](v6);
  v47 = &v40 - v7;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB0C8, &qword_240770C50);
  v43 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v42 = &v40 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB0D0, &qword_240770C58);
  v44 = *(v9 - 8);
  v45 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v40 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB0D8, &qword_240770C60);
  v41 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v40 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB0E0, &qword_240770C68);
  v58 = *(v15 - 8);
  v59 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v40 - v16;
  v18 = *v1;
  v56 = *(v1 + 8);
  v57 = v18;
  v40 = *(v1 + 16);
  v19 = *(v1 + 24);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_240686B4C();
  sub_24075AF74();
  v20 = v19 >> 5;
  if (v19 >> 5 > 2)
  {
    if (v20 == 3)
    {
      LOBYTE(v61) = 4;
      sub_240686BF4();
      v36 = v50;
      v37 = v59;
      sub_24075AB54();
      LOBYTE(v61) = 0;
      v38 = v53;
      v39 = v60;
      sub_24075ABB4();
      if (!v39)
      {
        v61 = v40;
        LOBYTE(v62) = v19 & 0x1F;
        v65 = 1;
        sub_240684A34();
        sub_24075ABE4();
      }

      (*(v51 + 8))(v36, v38);
      return (*(v58 + 8))(v17, v37);
    }

    else
    {
      v26 = v59;
      if (v20 == 4)
      {
        v28 = *(v57 + 16);
        v27 = *(v57 + 24);
        v29 = *(v57 + 32);
        v30 = *(v57 + 40);
        LOBYTE(v61) = 5;
        sub_240686788(v28, v27, v29, v30);
        sub_240686BA0();
        v31 = v52;
        sub_24075AB54();
        v57 = v28;
        v61 = v28;
        v62 = v27;
        v63 = v29;
        v64 = v30;
        sub_240686804();
        v32 = v55;
        sub_24075AB94();
        (*(v54 + 8))(v31, v32);
        (*(v58 + 8))(v17, v26);
        return sub_24068679C(v57, v27, v29, v30);
      }

      else
      {
        LOBYTE(v61) = 0;
        sub_240686D44();
        sub_24075AB54();
        (*(v41 + 8))(v14, v12);
        return (*(v58 + 8))(v17, v26);
      }
    }
  }

  else
  {
    if (v20)
    {
      if (v20 == 1)
      {
        LOBYTE(v61) = 2;
        sub_240686C9C();
        v21 = v42;
        v22 = v59;
        v23 = v17;
        sub_24075AB54();
        v61 = v57;
        LOBYTE(v62) = v56;
        sub_240684A34();
        v24 = v46;
        sub_24075ABE4();
        v25 = v43;
      }

      else
      {
        LOBYTE(v61) = 3;
        sub_240686C48();
        v21 = v47;
        v22 = v59;
        v23 = v17;
        sub_24075AB54();
        v61 = v57;
        LOBYTE(v62) = v56;
        sub_240684A34();
        v24 = v49;
        sub_24075ABE4();
        v25 = v48;
      }

      (*(v25 + 8))(v21, v24);
    }

    else
    {
      LOBYTE(v61) = 1;
      sub_240686CF0();
      v22 = v59;
      v23 = v17;
      sub_24075AB54();
      LOBYTE(v61) = 0;
      v34 = v45;
      v35 = v60;
      sub_24075ABB4();
      if (!v35)
      {
        v61 = v40;
        LOBYTE(v62) = v19;
        v65 = 1;
        sub_240684A34();
        sub_24075ABE4();
      }

      (*(v44 + 8))(v11, v34);
    }

    return (*(v58 + 8))(v23, v22);
  }
}

uint64_t DiscoveryModel.PairingState.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = v6 >> 5;
  if (v6 >> 5 <= 2)
  {
    if (v7)
    {
      if (v7 == 1)
      {
        MEMORY[0x245CC6BA0](2);
        if (v4)
        {
          if (v4 == 1)
          {
LABEL_6:
            v8 = 2;
LABEL_28:
            MEMORY[0x245CC6BA0](v8);
            v15 = v3;
            return MEMORY[0x245CC6BA0](v15);
          }

LABEL_21:
          if (v3)
          {
            if (v3 != 1)
            {
              goto LABEL_23;
            }

            goto LABEL_18;
          }

          goto LABEL_24;
        }
      }

      else
      {
        MEMORY[0x245CC6BA0](3);
        if (v4)
        {
          if (v4 == 1)
          {
            goto LABEL_6;
          }

          goto LABEL_21;
        }
      }

      v8 = 1;
      goto LABEL_28;
    }

    MEMORY[0x245CC6BA0](1);
    sub_24075A114();
    if (v6)
    {
      if (v6 == 1)
      {
LABEL_13:
        v14 = 2;
LABEL_26:
        MEMORY[0x245CC6BA0](v14);
        v15 = v5;
        return MEMORY[0x245CC6BA0](v15);
      }

LABEL_16:
      if (v5)
      {
        if (v5 != 1)
        {
LABEL_23:
          v15 = 4;
          return MEMORY[0x245CC6BA0](v15);
        }

LABEL_18:
        v15 = 3;
        return MEMORY[0x245CC6BA0](v15);
      }

LABEL_24:
      v15 = 0;
      return MEMORY[0x245CC6BA0](v15);
    }

    goto LABEL_25;
  }

  if (v7 == 3)
  {
    MEMORY[0x245CC6BA0](4);
    sub_24075A114();
    if ((v6 & 0x1F) != 0)
    {
      if ((v6 & 0x1F) == 1)
      {
        goto LABEL_13;
      }

      goto LABEL_16;
    }

LABEL_25:
    v14 = 1;
    goto LABEL_26;
  }

  if (v7 != 4)
  {
    goto LABEL_24;
  }

  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v11 = *(v3 + 32);
  v12 = *(v3 + 40);
  MEMORY[0x245CC6BA0](5);
  if (v12 > 0xFB)
  {
    return sub_24075AE94();
  }

  sub_24075AE94();
  sub_2406771E0(v9, v10, v11, v12);
  DiscoveryModel.PairingState.hash(into:)(a1);

  return sub_240604AE0(v9, v10, v11, v12);
}

uint64_t DiscoveryModel.PairingState.hashValue.getter()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 24);
  v5 = *v0;
  v6 = v1;
  v7 = v2;
  sub_24075AE64();
  DiscoveryModel.PairingState.hash(into:)(v4);
  return sub_24075AED4();
}

uint64_t DiscoveryModel.PairingState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB120, &qword_240770C70);
  v61 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v66 = &v50 - v3;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB128, &qword_240770C78);
  v60 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v65 = &v50 - v4;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB130, &qword_240770C80);
  v57 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v64 = &v50 - v5;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB138, &qword_240770C88);
  v53 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v62 = &v50 - v6;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB140, &qword_240770C90);
  v56 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v8 = &v50 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB148, &qword_240770C98);
  v52 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v50 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB150, &qword_240770CA0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v50 - v14;
  v16 = a1[3];
  v68 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_240686B4C();
  v17 = v67;
  sub_24075AF34();
  if (!v17)
  {
    v18 = v11;
    v50 = v9;
    v67 = 0;
    v19 = v8;
    v21 = v64;
    v20 = v65;
    v22 = v66;
    v23 = sub_24075AB34();
    v24 = (2 * *(v23 + 16)) | 1;
    v71 = v23;
    v72 = v23 + 32;
    v73 = 0;
    v74 = v24;
    v25 = sub_2405B8B00();
    if (v25 == 6 || v73 != v74 >> 1)
    {
      v28 = sub_24075A8C4();
      swift_allocError();
      v30 = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6620, &qword_24075DA40);
      *v30 = &type metadata for DiscoveryModel.PairingState;
      sub_24075AA64();
      sub_24075A8A4();
      (*(*(v28 - 8) + 104))(v30, *MEMORY[0x277D84160], v28);
      swift_willThrow();
    }

    else if (v25 > 2u)
    {
      if (v25 == 3)
      {
        LOBYTE(v69) = 3;
        sub_240686C48();
        v36 = v67;
        sub_24075AA54();
        v37 = v63;
        if (!v36)
        {
          sub_240684BD8();
          v38 = v55;
          sub_24075AAF4();
          (*(v57 + 8))(v21, v38);
          (*(v13 + 8))(v15, v12);
          swift_unknownObjectRelease();
          v48 = 0;
          v44 = v69;
          v46 = v70;
          v49 = 64;
LABEL_25:
          *v37 = v44;
          *(v37 + 8) = v46;
          *(v37 + 16) = v48;
          *(v37 + 24) = v49;
          return __swift_destroy_boxed_opaque_existential_1(v68);
        }
      }

      else
      {
        v32 = v67;
        if (v25 == 4)
        {
          LOBYTE(v69) = 4;
          sub_240686BF4();
          v33 = v20;
          sub_24075AA54();
          if (!v32)
          {
            LOBYTE(v69) = 0;
            v34 = v58;
            v44 = sub_24075AAC4();
            v46 = v47;
            v75 = 1;
            sub_240684BD8();
            sub_24075AAF4();
            (*(v60 + 8))(v33, v34);
            (*(v13 + 8))(v15, v12);
            swift_unknownObjectRelease();
            v48 = v69;
            v49 = v70 | 0x60;
            goto LABEL_24;
          }
        }

        else
        {
          LOBYTE(v69) = 5;
          sub_240686BA0();
          v42 = v22;
          sub_24075AA54();
          if (!v32)
          {
            v44 = swift_allocObject();
            sub_240686858();
            v43 = v59;
            sub_24075AAA4();
            (*(v61 + 8))(v42, v43);
            (*(v13 + 8))(v15, v12);
            swift_unknownObjectRelease();
            v46 = 0;
            v48 = 0;
            v49 = 0x80;
            goto LABEL_24;
          }
        }
      }
    }

    else if (v25)
    {
      if (v25 == 1)
      {
        LOBYTE(v69) = 1;
        sub_240686CF0();
        v26 = v67;
        sub_24075AA54();
        if (!v26)
        {
          LOBYTE(v69) = 0;
          v27 = v51;
          v44 = sub_24075AAC4();
          v46 = v45;
          v75 = 1;
          sub_240684BD8();
          sub_24075AAF4();
          (*(v56 + 8))(v19, v27);
          (*(v13 + 8))(v15, v12);
          swift_unknownObjectRelease();
          v48 = v69;
          v49 = v70;
LABEL_24:
          v37 = v63;
          goto LABEL_25;
        }
      }

      else
      {
        LOBYTE(v69) = 2;
        sub_240686C9C();
        v39 = v62;
        v40 = v67;
        sub_24075AA54();
        if (!v40)
        {
          sub_240684BD8();
          v41 = v54;
          sub_24075AAF4();
          (*(v53 + 8))(v39, v41);
          (*(v13 + 8))(v15, v12);
          swift_unknownObjectRelease();
          v48 = 0;
          v44 = v69;
          v46 = v70;
          v49 = 32;
          goto LABEL_24;
        }
      }
    }

    else
    {
      LOBYTE(v69) = 0;
      sub_240686D44();
      v35 = v67;
      sub_24075AA54();
      if (!v35)
      {
        (*(v52 + 8))(v18, v50);
        (*(v13 + 8))(v15, v12);
        swift_unknownObjectRelease();
        v44 = 0;
        v46 = 0;
        v48 = 0;
        v49 = -96;
        goto LABEL_24;
      }
    }

    (*(v13 + 8))(v15, v12);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v68);
}

uint64_t sub_240681310()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 24);
  v5 = *v0;
  v6 = v1;
  v7 = v2;
  sub_24075AE64();
  DiscoveryModel.PairingState.hash(into:)(v4);
  return sub_24075AED4();
}

uint64_t sub_240681370(uint64_t a1)
{
  v2 = *(v1 + 2);
  v3 = *(v1 + 24);
  v6 = *v1;
  v7 = v2;
  v8 = v3;
  sub_24075AE64();
  DiscoveryModel.PairingState.hash(into:)(v5);
  return sub_24075AED4();
}

uint64_t DiscoveryModel.CodeType.description.getter()
{
  v1 = *v0;
  if (*(v0 + 8) && *(v0 + 8) != 1)
  {
    v4 = 0x6F436C6175736976;
    if (v1 != 1)
    {
      v4 = 0x65646F437271;
    }

    if (v1)
    {
      return v4;
    }

    else
    {
      return 0x6E776F6E6B6E75;
    }
  }

  else
  {
    sub_24075A864();

    v2 = sub_24075AC34();
    MEMORY[0x245CC5E60](v2);

    return 0xD000000000000015;
  }
}

uint64_t sub_240681500(uint64_t a1)
{
  v2 = sub_240686EE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24068153C(uint64_t a1)
{
  v2 = sub_240686EE8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_240681578()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x646F437469676964;
  v4 = 0x6F436C6175736976;
  if (v1 != 3)
  {
    v4 = 0x65646F437271;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x646F436168706C61;
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

uint64_t sub_24068161C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24068AF4C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_240681644(uint64_t a1)
{
  v2 = sub_240686D98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_240681680(uint64_t a1)
{
  v2 = sub_240686D98();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2406816BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6874676E656CLL && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24075ACF4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_240681740(uint64_t a1)
{
  v2 = sub_240686E94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24068177C(uint64_t a1)
{
  v2 = sub_240686E94();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2406817B8(uint64_t a1)
{
  v2 = sub_240686DEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2406817F4(uint64_t a1)
{
  v2 = sub_240686DEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_240681830(uint64_t a1)
{
  v2 = sub_240686F3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24068186C(uint64_t a1)
{
  v2 = sub_240686F3C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2406818A8(uint64_t a1)
{
  v2 = sub_240686E40();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2406818E4(uint64_t a1)
{
  v2 = sub_240686E40();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DiscoveryModel.CodeType.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB158, &qword_240770CA8);
  v38 = *(v4 - 8);
  v39 = v4;
  MEMORY[0x28223BE20](v4);
  v37 = &v31 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB160, &qword_240770CB0);
  v35 = *(v6 - 8);
  v36 = v6;
  MEMORY[0x28223BE20](v6);
  v34 = &v31 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB168, &qword_240770CB8);
  v42 = *(v8 - 8);
  v43 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB170, &qword_240770CC0);
  v40 = *(v11 - 8);
  v41 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v31 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB178, &qword_240770CC8);
  v32 = *(v14 - 8);
  v33 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v31 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB180, &qword_240770CD0);
  v44 = *(v17 - 8);
  v45 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v31 - v18;
  v20 = *v2;
  v21 = *(v2 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_240686D98();
  sub_24075AF74();
  if (v21)
  {
    if (v21 == 1)
    {
      v48 = 2;
      sub_240686E94();
      v22 = v45;
      sub_24075AB54();
      v23 = v43;
      sub_24075ABD4();
      (*(v42 + 8))(v10, v23);
      return (*(v44 + 8))(v19, v22);
    }

    else
    {
      if (v20)
      {
        if (v20 == 1)
        {
          v49 = 3;
          sub_240686E40();
          v27 = v34;
          v28 = v45;
          sub_24075AB54();
          v30 = v35;
          v29 = v36;
        }

        else
        {
          v50 = 4;
          sub_240686DEC();
          v27 = v37;
          v28 = v45;
          sub_24075AB54();
          v30 = v38;
          v29 = v39;
        }

        (*(v30 + 8))(v27, v29);
      }

      else
      {
        v46 = 0;
        sub_240686F3C();
        v28 = v45;
        sub_24075AB54();
        (*(v32 + 8))(v16, v33);
      }

      return (*(v44 + 8))(v19, v28);
    }
  }

  else
  {
    v47 = 1;
    sub_240686EE8();
    v25 = v45;
    sub_24075AB54();
    v26 = v41;
    sub_24075ABD4();
    (*(v40 + 8))(v13, v26);
    return (*(v44 + 8))(v19, v25);
  }
}

uint64_t DiscoveryModel.CodeType.hash(into:)()
{
  v1 = *v0;
  if (*(v0 + 8))
  {
    if (*(v0 + 8) == 1)
    {
      MEMORY[0x245CC6BA0](2);
    }

    else
    {
      v1 = qword_240774388[v1];
    }
  }

  else
  {
    MEMORY[0x245CC6BA0](1);
  }

  return MEMORY[0x245CC6BA0](v1);
}

uint64_t DiscoveryModel.CodeType.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_24075AE64();
  if (v2)
  {
    if (v2 == 1)
    {
      MEMORY[0x245CC6BA0](2);
    }

    else
    {
      v1 = qword_240774388[v1];
    }
  }

  else
  {
    MEMORY[0x245CC6BA0](1);
  }

  MEMORY[0x245CC6BA0](v1);
  return sub_24075AED4();
}

uint64_t DiscoveryModel.CodeType.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB1B8, &qword_240770CD8);
  v43 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v48 = &v37 - v3;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB1C0, &qword_240770CE0);
  v46 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v50 = &v37 - v4;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB1C8, &qword_240770CE8);
  v45 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v49 = &v37 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB1D0, &qword_240770CF0);
  v41 = *(v6 - 8);
  v42 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v37 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB1D8, &qword_240770CF8);
  v39 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v37 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB1E0, &qword_240770D00);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v37 - v14;
  v16 = a1[3];
  v52 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_240686D98();
  v17 = v53;
  sub_24075AF34();
  if (!v17)
  {
    v18 = v11;
    v38 = v9;
    v20 = v49;
    v19 = v50;
    v53 = v13;
    v21 = v51;
    v22 = sub_24075AB34();
    v23 = (2 * *(v22 + 16)) | 1;
    v54 = v22;
    v55 = v22 + 32;
    v56 = 0;
    v57 = v23;
    v24 = sub_2405B8AFC();
    if (v24 != 5 && v56 == v57 >> 1)
    {
      if (v24 <= 1u)
      {
        if (v24)
        {
          v58 = 1;
          sub_240686EE8();
          sub_24075AA54();
          v36 = v42;
          v27 = sub_24075AAE4();
          (*(v41 + 8))(v8, v36);
          (*(v53 + 8))(v15, v12);
          swift_unknownObjectRelease();
          v26 = 0;
          goto LABEL_17;
        }

        v58 = 0;
        sub_240686F3C();
        sub_24075AA54();
        (*(v39 + 8))(v18, v38);
        (*(v53 + 8))(v15, v12);
        swift_unknownObjectRelease();
        v27 = 0;
      }

      else
      {
        if (v24 == 2)
        {
          v58 = 2;
          sub_240686E94();
          sub_24075AA54();
          v33 = v53;
          v34 = v40;
          v27 = sub_24075AAE4();
          (*(v45 + 8))(v20, v34);
          (*(v33 + 8))(v15, v12);
          swift_unknownObjectRelease();
          v26 = 1;
          goto LABEL_17;
        }

        v25 = v53;
        if (v24 == 3)
        {
          v58 = 3;
          sub_240686E40();
          sub_24075AA54();
          (*(v46 + 8))(v19, v44);
          (*(v25 + 8))(v15, v12);
          swift_unknownObjectRelease();
          v26 = 2;
          v27 = 1;
LABEL_17:
          v31 = v52;
          *v21 = v27;
          *(v21 + 8) = v26;
          return __swift_destroy_boxed_opaque_existential_1(v31);
        }

        v58 = 4;
        sub_240686DEC();
        v35 = v48;
        sub_24075AA54();
        (*(v43 + 8))(v35, v47);
        (*(v25 + 8))(v15, v12);
        swift_unknownObjectRelease();
        v27 = 2;
      }

      v26 = 2;
      goto LABEL_17;
    }

    v28 = sub_24075A8C4();
    swift_allocError();
    v30 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6620, &qword_24075DA40);
    *v30 = &type metadata for DiscoveryModel.CodeType;
    sub_24075AA64();
    sub_24075A8A4();
    (*(*(v28 - 8) + 104))(v30, *MEMORY[0x277D84160], v28);
    swift_willThrow();
    (*(v53 + 8))(v15, v12);
    swift_unknownObjectRelease();
  }

  v31 = v52;
  return __swift_destroy_boxed_opaque_existential_1(v31);
}

uint64_t sub_240682820()
{
  v1 = *v0;
  if (*(v0 + 8))
  {
    if (*(v0 + 8) == 1)
    {
      MEMORY[0x245CC6BA0](2);
    }

    else
    {
      v1 = qword_240774388[v1];
    }
  }

  else
  {
    MEMORY[0x245CC6BA0](1);
  }

  return MEMORY[0x245CC6BA0](v1);
}

uint64_t sub_240682884(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_24075AE64();
  if (v3)
  {
    if (v3 == 1)
    {
      MEMORY[0x245CC6BA0](2);
    }

    else
    {
      v2 = qword_240774388[v2];
    }
  }

  else
  {
    MEMORY[0x245CC6BA0](1);
  }

  MEMORY[0x245CC6BA0](v2);
  return sub_24075AED4();
}

uint64_t DiscoveryModel.description.getter()
{
  v24 = *v0;
  v25 = v0[1];
  v26 = *(v0 + 2);
  v27 = *(v0 + 1);
  v28 = *(v0 + 4);
  v29 = *(v0 + 3);
  v31 = *(v0 + 5);
  v30 = v0[48];
  v32 = v0[49];
  v37 = *(v0 + 8);
  v38 = *(v0 + 7);
  v1 = v0[72];
  v20 = v0[80];
  v19 = v0[81];
  v18 = v0[82];
  v3 = *(v0 + 11);
  v2 = *(v0 + 12);
  v4 = *(v0 + 13);
  v5 = v0[112];
  v6 = *(v0 + 136);
  v55 = *(v0 + 120);
  v56 = v6;
  v57 = *(v0 + 152);
  v58 = v0[168];
  v7 = *(v0 + 22);
  v23 = v0[184];
  v8 = *(v0 + 25);
  v21 = *(v0 + 26);
  v22 = *(v0 + 24);
  v17 = v0[216];
  v9 = v0[217];
  v35 = *(v0 + 29);
  v36 = *(v0 + 28);
  v46 = 0;
  v47 = 0xE000000000000000;
  v33 = *(v0 + 31);
  v34 = *(v0 + 30);
  v39 = *(v0 + 33);
  v40 = *(v0 + 32);
  v41 = *(v0 + 35);
  v42 = *(v0 + 34);
  v43 = *(v0 + 36);
  v44 = *(v0 + 37);
  v45 = v0[304];
  sub_24075A864();
  v53 = 0;
  v54 = 0xE000000000000000;
  MEMORY[0x245CC5E60](0x7461747320202020, 0xEB00000000203A65);
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      v7 = 0;
      v3 = 0;
      v2 = 0;
      v4 = 0;
      v5 = 0;
      v11 = 0;
      v1 = 24;
    }

    else
    {
      v12 = 256;
      if (!v9)
      {
        v12 = 0;
      }

      v11 = v12 | v17;

      v5 = v21;
      v2 = v22;
      sub_24067715C(v22, v8, v21);
      v1 = 16;
      v3 = v23;
      v4 = v8;
    }
  }

  else if (v1)
  {
    v3 = *(&v55 + 1);
    v7 = v55;
    v4 = *(&v56 + 1);
    v2 = v56;
    v11 = *(&v57 + 1);
    v5 = v57;
    v1 = v58 & 0xE3 | 8;
    sub_2406771A8(&v55, &v46);
  }

  else
  {
    v10 = 0x10000;
    if (!v18)
    {
      v10 = 0;
    }

    v7 = v20 | (v19 << 8) | v10;
    sub_2406771E0(v3, v2, v4, v5);
    v11 = 0;
  }

  v46 = v7;
  v47 = v3;
  v48 = v2;
  v49 = v4;
  v50 = v5;
  v51 = v11;
  v52 = v1;
  sub_24075A994();
  sub_2406768E0(v7, v3, v2, v4, v5, v11, v1);
  MEMORY[0x245CC5E60](0xD000000000000010, 0x80000002407885B0);
  LOBYTE(v46) = v24;
  sub_24075A994();
  MEMORY[0x245CC5E60](0x6C6F72202020200ALL, 0xEB00000000203A65);
  LOBYTE(v46) = v25;
  sub_24075A994();
  MEMORY[0x245CC5E60](0xD000000000000014, 0x80000002407885D0);
  v46 = v27;
  v47 = v26;
  sub_24075ACD4();
  MEMORY[0x245CC5E60](0x786966202020200ALL, 0xEF203A6E69506465);
  v46 = v29;
  v47 = v28;
  sub_24075ACD4();
  MEMORY[0x245CC5E60](0x646F63202020200ALL, 0xEF203A6570795465);
  v46 = v31;
  LOBYTE(v47) = v30;
  v13 = DiscoveryModel.CodeType.description.getter();
  MEMORY[0x245CC5E60](v13);

  MEMORY[0x245CC5E60](0xD00000000000001DLL, 0x80000002407885F0);
  if (v32)
  {
    v14 = 1702195828;
  }

  else
  {
    v14 = 0x65736C6166;
  }

  if (v32)
  {
    v15 = 0xE400000000000000;
  }

  else
  {
    v15 = 0xE500000000000000;
  }

  MEMORY[0x245CC5E60](v14, v15);

  MEMORY[0x245CC5E60](0x746C61202020200ALL, 0xEE00203A44495344);
  v46 = v38;
  v47 = v37;
  sub_24075ACD4();
  MEMORY[0x245CC5E60](0xD000000000000014, 0x8000000240788610);
  v46 = v36;
  v47 = v35;
  v48 = v34;
  v49 = v33;
  sub_2406424AC(v36, v35, v34, v33);
  sub_240686F90();
  sub_24075ACD4();
  sub_240609C34(v46, v47, v48, v49);
  MEMORY[0x245CC5E60](0x6D616E202020200ALL, 0xEB00000000203A65);
  v46 = v40;
  v47 = v39;
  sub_24075ACD4();
  MEMORY[0x245CC5E60](0xD000000000000018, 0x8000000240788630);
  v46 = v42;
  v47 = v41;
  sub_24075ACD4();
  MEMORY[0x245CC5E60](0xD00000000000001CLL, 0x8000000240788650);
  v46 = v43;
  type metadata accessor for AKUserAgeRange(0);
  sub_24075A994();
  MEMORY[0x245CC5E60](0xD000000000000019, 0x8000000240788670);
  v46 = v44;
  sub_24075A994();
  MEMORY[0x245CC5E60](0xD000000000000016, 0x8000000240788690);
  LOBYTE(v46) = v45;
  sub_24075A994();
  return v53;
}

uint64_t sub_240682EF0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x245CC6BA0](v3);
  if (v3)
  {
    v5 = (a2 + 48);
    do
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v8 = *v5;
      sub_24075AE94();
      if (v7)
      {
        v9 = v7;
        sub_240618C78(v6, v8);
        v10 = v9;
        sub_24075A6E4();
      }

      else
      {
        sub_240618C78(v6, v8);
      }

      sub_24075AE94();
      if (v8 >> 60 != 15)
      {
        sub_2407596D4();
      }

      v5 += 3;

      result = sub_24058C9E4(v6, v8);
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_240682FF8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  result = MEMORY[0x245CC6BA0](v4);
  v21 = v4;
  if (v4)
  {
    v6 = 0;
    v20 = a2 + 32;
    do
    {
      v7 = (v20 + 80 * v6);
      v8 = *v7;
      v9 = v7[2];
      v10 = v7[5];
      v12 = v7[6];
      v11 = v7[7];
      v14 = v7[8];
      v13 = v7[9];
      v15 = v7[4];

      sub_240618FD8(v10, v12);
      v23 = v13;

      sub_240620D20(a1, v8);
      if (v9)
      {
        sub_24075AE94();
        sub_24075A114();
        if (v15)
        {
          goto LABEL_7;
        }
      }

      else
      {
        sub_24075AE94();
        if (v15)
        {
LABEL_7:
          sub_24075AE94();
          sub_24075A114();
          v22 = v12;
          if (v12)
          {
            goto LABEL_11;
          }

          goto LABEL_3;
        }
      }

      sub_24075AE94();
      v22 = v12;
      if (v12)
      {
LABEL_11:
        sub_24075AE94();
        sub_24075A114();
        MEMORY[0x245CC6BA0](*(v11 + 16));
        v16 = *(v11 + 16);
        if (v16)
        {
          v17 = v11 + 40;
          do
          {

            sub_24075A114();

            v17 += 16;
            --v16;
          }

          while (v16);
        }

        MEMORY[0x245CC6BA0](*(v14 + 16));
        v18 = *(v14 + 16);
        if (v18)
        {
          v19 = v14 + 40;
          do
          {

            sub_24075A114();

            v19 += 16;
            --v18;
          }

          while (v18);
        }

        goto LABEL_4;
      }

LABEL_3:
      sub_24075AE94();
LABEL_4:
      ++v6;
      sub_240682FF8(a1, v23);

      sub_240604C2C(v10, v22, v11, v14);
    }

    while (v6 != v21);
  }

  return result;
}

BOOL _s12AppleIDSetup14DiscoveryModelV11DiscoveringV2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = a1[1];
  v4 = *(a1 + 1);
  v5 = *(a1 + 2);
  v6 = *(a1 + 3);
  v7 = a1[32];
  v8 = a2[1];
  v9 = *(a2 + 1);
  v10 = *(a2 + 2);
  v11 = *(a2 + 3);
  v12 = a2[32];
  if (v3 == 2)
  {
    v2 = 0;
    if (v8 != 2)
    {
      return v2;
    }
  }

  else
  {
    v2 = 0;
    if (v8 == 2 || ((v8 ^ v3) & 1) != 0)
    {
      return v2;
    }
  }

  if (((a1[2] ^ a2[2]) & 1) == 0)
  {
    v16[0] = *(a1 + 1);
    v16[1] = v5;
    v16[2] = v6;
    v17 = v7;
    v14[0] = v9;
    v14[1] = v10;
    v14[2] = v11;
    v15 = v12;
    sub_2406771E0(v4, v5, v6, v7);
    sub_2406771E0(v9, v10, v11, v12);
    v2 = static DiscoveryModel.PairingState.== infix(_:_:)(v16, v14);
    sub_240604AE0(v9, v10, v11, v12);
    sub_240604AE0(v4, v5, v6, v7);
  }

  return v2;
}

BOOL _s12AppleIDSetup14DiscoveryModelV10DiscoveredV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 17);
  v14 = *(a1 + 32);
  v15 = *(a1 + 24);
  v13 = *(a1 + 40);
  v12 = *(a1 + 48);
  v4 = *(a2 + 16);
  v5 = *(a2 + 17);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  if ((sub_240745F04(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v10 = 0;
  if ((sub_240753B98() & 1) != 0 && ((v2 ^ v4) & 1) == 0)
  {
    if (v3 == 2)
    {
      if (v5 != 2)
      {
        return 0;
      }

LABEL_10:
      v18[0] = v15;
      v18[1] = v14;
      v18[2] = v13;
      v19 = v12;
      v16[0] = v6;
      v16[1] = v7;
      v16[2] = v8;
      v17 = v9;
      sub_2406771E0(v15, v14, v13, v12);
      sub_2406771E0(v6, v7, v8, v9);
      v10 = static DiscoveryModel.PairingState.== infix(_:_:)(v18, v16);
      sub_240604AE0(v6, v7, v8, v9);
      sub_240604AE0(v15, v14, v13, v12);
      return v10;
    }

    v10 = 0;
    if (v5 != 2 && ((v5 ^ v3) & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  return v10;
}

uint64_t _s12AppleIDSetup14DiscoveryModelV18ChooseFamilyMemberV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a2 + 8);
  v9 = *(a2 + 16);
  v8 = *(a2 + 24);
  v10 = *(a2 + 32);
  v11 = *(a2 + 40);
  v19 = *(a2 + 41);
  v20 = *(a1 + 41);
  v12 = sub_2406E47A8(*a1, *a2);
  result = 0;
  if ((v12 & 1) != 0 && ((v2 ^ v7) & 1) == 0)
  {
    if (v4 == 1)
    {
      sub_24067715C(1, v3, v5);
      if (v9 == 1)
      {
        sub_24067715C(1, v8, v10);
        sub_2406769C4(1, v3, v5);
        if (v6 == v11)
        {
          return v20 ^ v19 ^ 1u;
        }

        return 0;
      }

      sub_24067715C(v9, v8, v10);
LABEL_10:
      sub_2406769C4(v4, v3, v5);
      sub_2406769C4(v9, v8, v10);
      return 0;
    }

    v24 = v4;
    v25 = v3;
    v26 = v5;
    if (v9 == 1)
    {
      sub_24067715C(v4, v3, v5);
      sub_24067715C(1, v8, v10);
      sub_24067715C(v4, v3, v5);

      sub_24058C9E4(v3, v5);
      goto LABEL_10;
    }

    v21 = v9;
    v22 = v8;
    v23 = v10;
    sub_24067715C(v4, v3, v5);
    sub_24067715C(v9, v8, v10);
    sub_24067715C(v4, v3, v5);
    v14 = _s12AppleIDSetup11IdMSAccountV12FamilyMemberV2eeoiySbAE_AEtFZ_0(&v24, &v21);
    v15 = v22;
    v16 = v23;

    sub_24058C9E4(v15, v16);
    v17 = v25;
    v18 = v26;

    sub_24058C9E4(v17, v18);
    sub_2406769C4(v4, v3, v5);
    result = 0;
    if (v14 && ((v6 ^ v11) & 1) == 0)
    {
      return v20 ^ v19 ^ 1u;
    }
  }

  return result;
}

uint64_t _s12AppleIDSetup14DiscoveryModelV13BindableStateV2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = *a1;
  v5 = a1[8];
  v6 = a1[9];
  v7 = a1[10];
  v8 = *(a1 + 2);
  v9 = *(a1 + 3);
  v10 = *(a1 + 4);
  v11 = a1[40];
  v12 = *(a1 + 4);
  v63 = *(a1 + 3);
  v64 = v12;
  v65 = *(a1 + 5);
  v66 = a1[96];
  v13 = *(a1 + 13);
  v14 = a1[112];
  v15 = *(a1 + 15);
  v16 = *(a1 + 16);
  v17 = *(a1 + 17);
  v18 = a1[144];
  v19 = a1[145];
  v20 = *a2;
  v21 = a2[8];
  v22 = a2[9];
  v23 = a2[10];
  v24 = *(a2 + 2);
  v25 = *(a2 + 3);
  v26 = *(a2 + 4);
  v27 = a2[40];
  v28 = *(a2 + 4);
  v67 = *(a2 + 3);
  v68 = v28;
  v69 = *(a2 + 5);
  v70 = a2[96];
  if (v4 == v20 && (v44 = v19, v45 = v18, v40 = *(a2 + 13), v39 = a2[112], v43 = *(a2 + 15), v42 = *(a2 + 16), v41 = *(a2 + 17), v37 = a2[145], v38 = a2[144], LOBYTE(v59) = v5, BYTE1(v59) = v6, BYTE2(v59) = v7, *(&v59 + 1) = v8, *&v60 = v9, *(&v60 + 1) = v10, LOBYTE(v61) = v11, LOBYTE(v55) = v21, BYTE1(v55) = v22, BYTE2(v55) = v23, *(&v55 + 1) = v24, *&v56 = v25, *(&v56 + 1) = v26, LOBYTE(v57) = v27, sub_2406771E0(v8, v9, v10, v11), sub_2406771E0(v24, v25, v26, v27), v29 = _s12AppleIDSetup14DiscoveryModelV11DiscoveringV2eeoiySbAE_AEtFZ_0(&v59, &v55), sub_240604AE0(*(&v55 + 1), v56, *(&v56 + 1), v57), sub_240604AE0(*(&v59 + 1), v60, *(&v60 + 1), v61), v29) && (v51 = v63, v52 = v64, v53 = v65, v54 = v66, v47 = v67, v48 = v68, v49 = v69, v50 = v70, sub_2406771A8(&v63, v46), sub_2406771A8(&v67, v46), v30 = _s12AppleIDSetup14DiscoveryModelV10DiscoveredV2eeoiySbAE_AEtFZ_0(&v51, &v47), v55 = v47, v56 = v48, v57 = v49, v58 = v50, sub_240686258(&v55), v59 = v51, v60 = v52, v61 = v53, v62 = v54, sub_240686258(&v59), v30))
  {
    *&v51 = v13;
    BYTE8(v51) = v14;
    *&v52 = v15;
    *(&v52 + 1) = v16;
    *&v53 = v17;
    BYTE8(v53) = v45;
    BYTE9(v53) = v44;
    *&v47 = v40;
    BYTE8(v47) = v39;
    *&v48 = v43;
    *(&v48 + 1) = v42;
    *&v49 = v41;
    BYTE8(v49) = v38;
    BYTE9(v49) = v37;

    sub_24067715C(v15, v16, v17);

    sub_24067715C(v43, v42, v41);
    v31 = _s12AppleIDSetup14DiscoveryModelV18ChooseFamilyMemberV2eeoiySbAE_AEtFZ_0(&v51, &v47);
    v32 = v48;
    v33 = v49;

    sub_2406769C4(v32, *(&v32 + 1), v33);
    v34 = v52;
    v35 = v53;

    sub_2406769C4(v34, *(&v34 + 1), v35);
  }

  else
  {
    v31 = 0;
  }

  return v31 & 1;
}

BOOL _s12AppleIDSetup14DiscoveryModelV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  result = 0;
  v5 = *a1;
  v6 = a1[1];
  v8 = *(a1 + 1);
  v7 = *(a1 + 2);
  v126 = *(a1 + 3);
  v131 = *(a1 + 4);
  v125 = *(a1 + 5);
  v129 = a1[48];
  v9 = a1[49];
  v10 = *(a1 + 7);
  v11 = *(a1 + 8);
  v12 = *(a1 + 200);
  v158[7] = *(a1 + 184);
  v158[8] = v12;
  v159 = *(a1 + 108);
  v158[3] = *(a1 + 120);
  v158[5] = *(a1 + 152);
  v158[1] = *(a1 + 88);
  v14 = *(a1 + 28);
  v13 = *(a1 + 29);
  v16 = *(a1 + 30);
  v15 = *(a1 + 31);
  v17 = *(a1 + 32);
  v18 = *(a1 + 33);
  v20 = *(a1 + 34);
  v19 = *(a1 + 35);
  v22 = *(a1 + 36);
  v21 = *(a1 + 37);
  v23 = a1[304];
  v24 = *a2;
  v25 = a2[1];
  v26 = *(a2 + 1);
  v27 = *(a2 + 2);
  v28 = *(a2 + 200);
  v160[7] = *(a2 + 184);
  v160[8] = v28;
  v161 = *(a2 + 108);
  v160[3] = *(a2 + 120);
  v160[5] = *(a2 + 152);
  v160[1] = *(a2 + 88);
  v30 = *(a2 + 3);
  v29 = *(a2 + 4);
  v124 = *(a2 + 5);
  v127 = a2[48];
  v123 = a2[49];
  v122 = *(a2 + 7);
  v31 = *(a2 + 8);
  v158[6] = *(a1 + 168);
  v158[2] = *(a1 + 104);
  v158[4] = *(a1 + 136);
  v158[0] = *(a1 + 72);
  v160[6] = *(a2 + 168);
  v160[2] = *(a2 + 104);
  v160[4] = *(a2 + 136);
  v160[0] = *(a2 + 72);
  if (v5 == v24)
  {
    v120 = v31;
    v121 = v11;
    v119 = v10;
    if (((v6 ^ v25) & 1) == 0)
    {
      v118 = v9;
      v32 = *(a2 + 28);
      v33 = *(a2 + 30);
      v34 = *(a2 + 31);
      v116 = *(a2 + 32);
      v117 = *(a2 + 33);
      v36 = *(a2 + 34);
      v35 = *(a2 + 35);
      v38 = *(a2 + 36);
      v37 = *(a2 + 37);
      v39 = a2[304];
      if (v7)
      {
        if (!v27)
        {
          return 0;
        }

        v115 = *(a2 + 29);
        if (v8 != v26 || v7 != v27)
        {
          v103 = v20;
          v106 = v19;
          v92 = v23;
          v87 = v15;
          v89 = v16;
          v109 = v18;
          v112 = *(a2 + 30);
          v40 = v13;
          v81 = v21;
          v83 = v17;
          v94 = *(a2 + 37);
          v97 = *(a2 + 36);
          v100 = *(a2 + 34);
          v85 = *(a2 + 31);
          v41 = v22;
          v42 = a2[304];
          v43 = *(a2 + 35);
          v44 = sub_24075ACF4();
          v35 = v43;
          v39 = v42;
          v19 = v106;
          v18 = v109;
          v22 = v41;
          v17 = v83;
          v34 = v85;
          v38 = v97;
          v36 = v100;
          v23 = v92;
          v37 = v94;
          v20 = v103;
          v21 = v81;
          v13 = v40;
          v33 = v112;
          v15 = v87;
          v16 = v89;
          if ((v44 & 1) == 0)
          {
            return 0;
          }
        }
      }

      else
      {
        v115 = *(a2 + 29);
        if (v27)
        {
          return 0;
        }
      }

      if (v131)
      {
        if (!v29)
        {
          return 0;
        }

        if (v126 != v30 || v131 != v29)
        {
          v104 = v20;
          v107 = v19;
          v91 = v14;
          v88 = v15;
          v90 = v16;
          v110 = v18;
          v113 = v33;
          v45 = v13;
          v46 = v21;
          v47 = v22;
          v95 = v37;
          v98 = v38;
          v101 = v36;
          v86 = v34;
          v48 = v17;
          v49 = v39;
          v50 = v35;
          v51 = sub_24075ACF4();
          v35 = v50;
          v39 = v49;
          v19 = v107;
          v18 = v110;
          v17 = v48;
          v34 = v86;
          v15 = v88;
          v38 = v98;
          v36 = v101;
          v37 = v95;
          v22 = v47;
          v21 = v46;
          v13 = v45;
          v33 = v113;
          v16 = v90;
          v14 = v91;
          v20 = v104;
          if ((v51 & 1) == 0)
          {
            return 0;
          }
        }
      }

      else if (v29)
      {
        return 0;
      }

      if (!v129)
      {
        if (v127)
        {
          return 0;
        }

        goto LABEL_22;
      }

      if (v129 == 1)
      {
        if (v127 != 1)
        {
          return 0;
        }

LABEL_22:
        result = 0;
        if (v125 != v124)
        {
          return result;
        }

LABEL_34:
        if ((v118 ^ v123))
        {
          return result;
        }

        if (v121)
        {
          if (!v120)
          {
            return 0;
          }

          v52 = v32;
          v111 = v18;
          v114 = v33;
          v99 = v38;
          v102 = v36;
          v128 = v39;
          v130 = v35;
          v96 = v37;
          v82 = v21;
          v84 = v17;
          v105 = v20;
          v108 = v19;
          v132 = v22;
          v53 = v13;
          v54 = v15;
          if ((v119 != v122 || v121 != v120) && (sub_24075ACF4() & 1) == 0)
          {
            return 0;
          }
        }

        else
        {
          v52 = v32;
          v111 = v18;
          v114 = v33;
          v99 = v38;
          v102 = v36;
          v128 = v39;
          v130 = v35;
          v96 = v37;
          v82 = v21;
          v84 = v17;
          v105 = v20;
          v108 = v19;
          v132 = v22;
          v53 = v13;
          v54 = v15;
          if (v120)
          {
            return 0;
          }
        }

        v93 = v23;
        v55 = v14;
        v56 = *(a1 + 184);
        v150 = *(a1 + 168);
        v151 = v56;
        v152 = *(a1 + 200);
        v153 = *(a1 + 108);
        v57 = *(a1 + 120);
        v146 = *(a1 + 104);
        v147 = v57;
        v58 = *(a1 + 152);
        v148 = *(a1 + 136);
        v149 = v58;
        v59 = *(a1 + 88);
        v144 = *(a1 + 72);
        v145 = v59;
        v60 = *(a2 + 184);
        v140 = *(a2 + 168);
        v141 = v60;
        v142 = *(a2 + 200);
        v143 = *(a2 + 108);
        v61 = *(a2 + 120);
        v136 = *(a2 + 104);
        v137 = v61;
        v62 = *(a2 + 152);
        v138 = *(a2 + 136);
        v139 = v62;
        v63 = *(a2 + 88);
        v134 = *(a2 + 72);
        v135 = v63;
        sub_2406770F4(v158, v133);
        sub_2406770F4(v160, v133);
        v64 = _s12AppleIDSetup14DiscoveryModelV13BindableStateV2eeoiySbAE_AEtFZ_0(&v144, &v134);
        v154[6] = v140;
        v154[7] = v141;
        v154[8] = v142;
        v155 = v143;
        v154[2] = v136;
        v154[3] = v137;
        v154[4] = v138;
        v154[5] = v139;
        v154[0] = v134;
        v154[1] = v135;
        sub_24067712C(v154);
        v156[6] = v150;
        v156[7] = v151;
        v156[8] = v152;
        v157 = v153;
        v156[2] = v146;
        v156[3] = v147;
        v156[4] = v148;
        v156[5] = v149;
        v156[0] = v144;
        v156[1] = v145;
        sub_24067712C(v156);
        if ((v64 & 1) == 0)
        {
          return 0;
        }

        v65 = v53;
        if (v53)
        {
          v66 = v54;
          v67 = v55;
          if (v115)
          {
            if (v55 == v52 && v53 == v115 || (v68 = sub_24075ACF4(), v65 = v53, (v68 & 1) != 0))
            {
              v69 = v55;
              v70 = v55;
              v71 = v66;
              v72 = v65;
              sub_2406424AC(v69, v65, v16, v66);
              sub_2406424AC(v52, v115, v114, v34);
              sub_2406424AC(v70, v72, v16, v66);
              v73 = sub_2406B7F50(v66, v34);
              sub_240609C34(v52, v115, v114, v34);

              sub_240609C34(v70, v72, v16, v71);
              if ((v73 & 1) == 0)
              {
                return 0;
              }

              goto LABEL_58;
            }

            sub_2406424AC(v55, v53, v16, v54);
            sub_2406424AC(v52, v115, v114, v34);
            sub_2406424AC(v55, v53, v16, v54);
            sub_240609C34(v52, v115, v114, v34);

            v77 = v55;
            v78 = v53;
            v79 = v16;
            v80 = v54;
LABEL_54:
            sub_240609C34(v77, v78, v79, v80);
            return 0;
          }

          sub_2406424AC(v55, v53, v16, v54);
          sub_2406424AC(v52, 0, v114, v34);
          sub_2406424AC(v55, v53, v16, v54);

          v76 = v53;
          v75 = v114;
          v74 = 0;
        }

        else
        {
          v67 = v55;
          v66 = v54;
          sub_2406424AC(v55, 0, v16, v54);
          v74 = v115;
          if (!v115)
          {
            sub_2406424AC(v52, 0, v114, v34);
            sub_240609C34(v67, 0, v16, v54);
LABEL_58:
            if (v111)
            {
              if (!v117 || (v84 != v116 || v111 != v117) && (sub_24075ACF4() & 1) == 0)
              {
                return 0;
              }
            }

            else if (v117)
            {
              return 0;
            }

            if (v108)
            {
              if (!v130 || (v105 != v102 || v108 != v130) && (sub_24075ACF4() & 1) == 0)
              {
                return 0;
              }

LABEL_73:
              if (v132 == v99 && v82 == v96)
              {
                return qword_2407743A0[v93] == qword_2407743A0[v128];
              }

              return 0;
            }

            if (!v130)
            {
              goto LABEL_73;
            }

            return 0;
          }

          v75 = v114;
          sub_2406424AC(v52, v115, v114, v34);
          v76 = 0;
        }

        sub_240609C34(v67, v76, v16, v66);
        v77 = v52;
        v78 = v74;
        v79 = v75;
        v80 = v34;
        goto LABEL_54;
      }

      if (v125)
      {
        if (v125 == 1)
        {
          result = 0;
          if (v127 == 2 && v124 == 1)
          {
            goto LABEL_34;
          }
        }

        else
        {
          result = 0;
          if (v127 == 2 && v124 == 2)
          {
            goto LABEL_34;
          }
        }
      }

      else
      {
        result = 0;
        if (v127 == 2 && !v124)
        {
          goto LABEL_34;
        }
      }
    }
  }

  return result;
}

BOOL _s12AppleIDSetup14DiscoveryModelV5StateO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v8 = *(a1 + 48);
  v10 = *a2;
  v9 = *(a2 + 8);
  v11 = *(a2 + 16);
  v12 = *(a2 + 24);
  v13 = *(a2 + 32);
  v14 = *(a2 + 40);
  v15 = *(a2 + 48);
  v16 = (v8 >> 3) & 3;
  v17 = v15 & 0x18;
  if (v16 > 1)
  {
    if (v16 == 2)
    {
      if (v17 == 16)
      {
        v76 = *a1;
        LOBYTE(v77) = v3 & 1;
        v78 = v5;
        v79 = v4;
        v28 = v4;
        v80 = v6;
        LOWORD(v81) = v7 & 0x101;
        v69 = v10;
        LOBYTE(v70) = v9 & 1;
        v71 = v11;
        v72 = v12;
        v59 = v6;
        v61 = v12;
        v73 = v13;
        v52 = v13;
        LOWORD(v74) = v14 & 0x101;
        v57 = v10;
        v29 = v10;
        v30 = v12;
        v31 = v6;
        v32 = v13;
        v33 = v8;
        v63 = v15;
        v34 = v9;
        sub_24068B110(v29, v9, v11, v30, v32, v14, v15);
        sub_24068B110(v2, v3, v5, v28, v31, v7, v33);
        v55 = v33;
        sub_24068B110(v2, v3, v5, v28, v31, v7, v33);
        sub_24068B110(v57, v34, v11, v61, v52, v14, v63);
        v35 = _s12AppleIDSetup14DiscoveryModelV18ChooseFamilyMemberV2eeoiySbAE_AEtFZ_0(&v76, &v69);
        v36 = v7;
        v54 = v7;
        v23 = v35;
        sub_2406768E0(v2, v3, v5, v28, v59, v36, v33);
        sub_2406768E0(v57, v34, v11, v61, v52, v14, v63);
        sub_2406768E0(v57, v34, v11, v61, v52, v14, v63);
        v24 = v2;
        v25 = v3;
        v26 = v5;
        v27 = v28;
        goto LABEL_10;
      }
    }

    else if (v17 == 24 && !(v9 | v10 | v11 | v12 | v13 | v14) && v15 == 24)
    {
      sub_2406768E0(*a1, v3, v5, v4, v6, v7, v8);
      sub_2406768E0(0, 0, v11, v12, v13, v14, 0x18u);
      return 1;
    }

LABEL_16:
    v67 = a1[2];
    v68 = a1[3];
    v65 = *a1;
    v66 = a1[1];
    v45 = a1[4];
    v46 = *(a2 + 24);
    v47 = *(a1 + 48);
    v48 = *(a2 + 48);
    v49 = *(a2 + 8);
    sub_24068B110(*a1, v66, v67, v4, v6, v7, v8);
    sub_24068B110(v10, v49, v11, v46, v13, v14, v48);
    sub_2406768E0(v65, v66, v67, v68, v45, v7, v47);
    sub_2406768E0(v10, v49, v11, v46, v13, v14, v48);
    return 0;
  }

  if (v16)
  {
    if (v17 == 8)
    {
      v76 = *a1;
      v77 = v3;
      v64 = v15;
      LOWORD(v78) = v5 & 0xFF01;
      v37 = v4;
      v79 = v4;
      v80 = v6;
      v53 = v13;
      v54 = v7;
      v81 = v7;
      v82 = v8 & 0xE7;
      v69 = v10;
      v70 = v9;
      LOWORD(v71) = v11 & 0xFF01;
      v59 = v6;
      v72 = v12;
      v73 = v13;
      v74 = v14;
      v75 = v15 & 0xE7;
      v58 = v10;
      v38 = v10;
      v39 = v6;
      v40 = v13;
      v41 = v8;
      v42 = v9;
      sub_24068B110(v38, v9, v11, v12, v40, v14, v15);
      sub_24068B110(v2, v3, v5, v37, v39, v54, v41);
      v43 = v39;
      LODWORD(v39) = v41;
      v55 = v41;
      sub_24068B110(v2, v3, v5, v37, v43, v54, v41);
      sub_24068B110(v58, v42, v11, v12, v53, v14, v64);
      v23 = _s12AppleIDSetup14DiscoveryModelV10DiscoveredV2eeoiySbAE_AEtFZ_0(&v76, &v69);
      sub_2406768E0(v2, v3, v5, v37, v59, v54, v39);
      sub_2406768E0(v58, v42, v11, v12, v53, v14, v64);
      sub_2406768E0(v58, v42, v11, v12, v53, v14, v64);
      v24 = v2;
      v25 = v3;
      v26 = v5;
      v27 = v37;
      goto LABEL_10;
    }

    goto LABEL_16;
  }

  if ((v15 & 0x18) != 0)
  {
    goto LABEL_16;
  }

  LOWORD(v76) = v2 & 0xFF01;
  BYTE2(v76) = BYTE2(v2) & 1;
  v77 = v3;
  v78 = v5;
  v18 = v4;
  v79 = v4;
  LOBYTE(v80) = v6;
  LOWORD(v69) = v10 & 0xFF01;
  BYTE2(v69) = BYTE2(v10) & 1;
  v70 = v9;
  v71 = v11;
  v19 = v12;
  v60 = v12;
  v72 = v12;
  LOBYTE(v73) = v13;
  v20 = v10;
  v21 = v10;
  v56 = v10;
  v22 = v6;
  v51 = v9;
  v55 = v8;
  v62 = v15;
  sub_24068B110(v21, v9, v11, v19, v13, v14, v15);
  sub_24068B110(v2, v3, v5, v18, v22, v7, v55);
  v59 = v22;
  sub_24068B110(v2, v3, v5, v18, v22, v7, v55);
  sub_24068B110(v20, v51, v11, v60, v13, v14, v62);
  v54 = v7;
  v23 = _s12AppleIDSetup14DiscoveryModelV11DiscoveringV2eeoiySbAE_AEtFZ_0(&v76, &v69);
  sub_2406768E0(v2, v3, v5, v18, v22, v54, v55);
  sub_2406768E0(v56, v51, v11, v60, v13, v14, v62);
  sub_2406768E0(v56, v51, v11, v60, v13, v14, v62);
  v24 = v2;
  v25 = v3;
  v26 = v5;
  v27 = v18;
LABEL_10:
  sub_2406768E0(v24, v25, v26, v27, v59, v54, v55);
  return v23;
}