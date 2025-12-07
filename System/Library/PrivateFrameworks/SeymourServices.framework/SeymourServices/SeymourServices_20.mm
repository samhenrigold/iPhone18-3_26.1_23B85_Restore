uint64_t sub_2270A1948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA2F0, &qword_227678B58);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_22766B390();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_226E97A5C(0x65uLL);
  sub_22766A710();
  v17 = sub_22766B380();
  v40 = sub_22766C8B0();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_22766CE50();
    v38 = v8;
    v22 = sub_226E97AE8(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(v8) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_226E8E000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_0(v37);
    MEMORY[0x22AA9A450](v29, -1, -1);
    MEMORY[0x22AA9A450](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = v8;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9128, &unk_22767F4F0);
  v33 = sub_227669290();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_2270A743C;
  *(v34 + 24) = v32;

  v33(sub_226E93814, v34);
}

uint64_t sub_2270A1D24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA420, &qword_227678BF0);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_22766B390();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_226E97A5C(0x65uLL);
  sub_22766A710();
  v17 = sub_22766B380();
  v40 = sub_22766C8B0();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_22766CE50();
    v38 = v8;
    v22 = sub_226E97AE8(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(v8) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_226E8E000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_0(v37);
    MEMORY[0x22AA9A450](v29, -1, -1);
    MEMORY[0x22AA9A450](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = v8;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA068, &qword_2276775A8);
  v33 = sub_227669290();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_2270A7850;
  *(v34 + 24) = v32;

  v33(sub_226E93814, v34);
}

uint64_t sub_2270A2100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA258, &qword_227678B08);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_22766B390();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_226E97A5C(0x65uLL);
  sub_22766A710();
  v17 = sub_22766B380();
  v40 = sub_22766C8B0();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_22766CE50();
    v38 = v8;
    v22 = sub_226E97AE8(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(v8) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_226E8E000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_0(v37);
    MEMORY[0x22AA9A450](v29, -1, -1);
    MEMORY[0x22AA9A450](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = v8;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA260, &unk_227684B00);
  v33 = sub_227669290();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_2270A71C8;
  *(v34 + 24) = v32;

  v33(sub_2270A71F0, v34);
}

uint64_t sub_2270A24DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C8, &qword_227678BC8);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_22766B390();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_226E97A5C(0x65uLL);
  sub_22766A710();
  v17 = sub_22766B380();
  v40 = sub_22766C8B0();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_22766CE50();
    v38 = v8;
    v22 = sub_226E97AE8(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(v8) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_226E8E000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_0(v37);
    MEMORY[0x22AA9A450](v29, -1, -1);
    MEMORY[0x22AA9A450](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = v8;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA3D0, &unk_22767E500);
  v33 = sub_227669290();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_2270A772C;
  *(v34 + 24) = v32;

  v33(sub_226E93814, v34);
}

uint64_t sub_2270A28B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3E0, &qword_227678BD8);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_22766B390();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_226E97A5C(0x65uLL);
  sub_22766A710();
  v17 = sub_22766B380();
  v40 = sub_22766C8B0();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_22766CE50();
    v38 = v8;
    v22 = sub_226E97AE8(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(v8) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_226E8E000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_0(v37);
    MEMORY[0x22AA9A450](v29, -1, -1);
    MEMORY[0x22AA9A450](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = v8;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3E8, &unk_22767E4F0);
  v33 = sub_227669290();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_2270A7754;
  *(v34 + 24) = v32;

  v33(sub_2270A71F0, v34);
}

uint64_t sub_2270A2C94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA408, &qword_227678BE8);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_22766B390();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_226E97A5C(0x65uLL);
  sub_22766A710();
  v17 = sub_22766B380();
  v40 = sub_22766C8B0();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_22766CE50();
    v38 = v8;
    v22 = sub_226E97AE8(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(v8) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_226E8E000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_0(v37);
    MEMORY[0x22AA9A450](v29, -1, -1);
    MEMORY[0x22AA9A450](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = v8;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA410, &qword_227678AB0);
  v33 = sub_227669290();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_2270A7828;
  *(v34 + 24) = v32;

  v33(sub_226E93814, v34);
}

uint64_t sub_2270A3070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA380, &qword_227678B98);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_22766B390();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_226E97A5C(0x65uLL);
  sub_22766A710();
  v17 = sub_22766B380();
  v40 = sub_22766C8B0();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_22766CE50();
    v38 = v8;
    v22 = sub_226E97AE8(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(v8) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_226E8E000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_0(v37);
    MEMORY[0x22AA9A450](v29, -1, -1);
    MEMORY[0x22AA9A450](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = v8;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA388, &unk_22767E4A0);
  v33 = sub_227669290();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_2270A7640;
  *(v34 + 24) = v32;

  v33(sub_226E93814, v34);
}

uint64_t sub_2270A344C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7)
{
  v41 = a6;
  v40 = a5;
  v38 = a3;
  v39 = a4;
  v10 = sub_227665AD0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9B28, &unk_227684550);
  MEMORY[0x28223BE20](v44);
  v15 = (&v34 - v14);
  v16 = sub_22766B390();
  v42 = *(v16 - 8);
  v43 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A710();
  v19 = sub_22766B380();
  v20 = sub_22766C8B0();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v36 = v13;
    v22 = v21;
    v23 = swift_slowAlloc();
    v37 = a7;
    v35 = v23;
    v45 = v23;
    *v22 = 134218498;
    *(v22 + 4) = a2;
    *(v22 + 12) = 2080;
    v24 = sub_22766CE50();
    v26 = v15;
    v27 = a1;
    v28 = v11;
    v29 = v10;
    v30 = sub_226E97AE8(v24, v25, &v45);

    *(v22 + 14) = v30;
    v10 = v29;
    v11 = v28;
    a1 = v27;
    v15 = v26;
    *(v22 + 22) = 2048;
    *(v22 + 24) = v41;
    _os_log_impl(&dword_226E8E000, v19, v20, "Finished P->A conversion: %ld:%s:%lu", v22, 0x20u);
    v31 = v35;
    __swift_destroy_boxed_opaque_existential_0(v35);
    MEMORY[0x22AA9A450](v31, -1, -1);
    v32 = v22;
    v13 = v36;
    MEMORY[0x22AA9A450](v32, -1, -1);
  }

  (*(v42 + 8))(v18, v43);
  sub_226E93170(a1, v15, &qword_27D7B9B28, &unk_227684550);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v45 = *v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA268, &qword_227678B10);
    return sub_22766C440();
  }

  else
  {
    (*(v11 + 32))(v13, v15, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA268, &qword_227678B10);
    return sub_22766C450();
  }
}

uint64_t sub_2270A37C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7)
{
  v29 = a6;
  v28 = a5;
  v10 = sub_22766B390();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A710();
  v14 = sub_22766B380();
  v15 = sub_22766C8B0();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v27 = a7;
    v17 = v16;
    v18 = swift_slowAlloc();
    v26 = a1;
    v19 = v18;
    *&v31[0] = v18;
    *v17 = 134218498;
    *(v17 + 4) = a2;
    *(v17 + 12) = 2080;
    v20 = sub_22766CE50();
    v22 = sub_226E97AE8(v20, v21, v31);

    *(v17 + 14) = v22;
    *(v17 + 22) = 2048;
    *(v17 + 24) = v29;
    _os_log_impl(&dword_226E8E000, v14, v15, "Finished P->A conversion: %ld:%s:%lu", v17, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v19);
    v23 = v19;
    a1 = v26;
    MEMORY[0x22AA9A450](v23, -1, -1);
    MEMORY[0x22AA9A450](v17, -1, -1);
  }

  (*(v11 + 8))(v13, v10);
  sub_226E93170(a1, v31, &qword_27D7BA2B8, &qword_227678B38);
  if (v32)
  {
    v30[0] = *&v31[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2A8, &qword_227678B30);
    return sub_22766C440();
  }

  else
  {
    sub_226E92AB8(v31, v30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2A8, &qword_227678B30);
    return sub_22766C450();
  }
}

uint64_t sub_2270A3A34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7)
{
  v41 = a6;
  v40 = a5;
  v38 = a3;
  v39 = a4;
  v10 = sub_2276666A0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD560, &unk_227684C50);
  MEMORY[0x28223BE20](v44);
  v15 = (&v34 - v14);
  v16 = sub_22766B390();
  v42 = *(v16 - 8);
  v43 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A710();
  v19 = sub_22766B380();
  v20 = sub_22766C8B0();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v36 = v13;
    v22 = v21;
    v23 = swift_slowAlloc();
    v37 = a7;
    v35 = v23;
    v45 = v23;
    *v22 = 134218498;
    *(v22 + 4) = a2;
    *(v22 + 12) = 2080;
    v24 = sub_22766CE50();
    v26 = v15;
    v27 = a1;
    v28 = v11;
    v29 = v10;
    v30 = sub_226E97AE8(v24, v25, &v45);

    *(v22 + 14) = v30;
    v10 = v29;
    v11 = v28;
    a1 = v27;
    v15 = v26;
    *(v22 + 22) = 2048;
    *(v22 + 24) = v41;
    _os_log_impl(&dword_226E8E000, v19, v20, "Finished P->A conversion: %ld:%s:%lu", v22, 0x20u);
    v31 = v35;
    __swift_destroy_boxed_opaque_existential_0(v35);
    MEMORY[0x22AA9A450](v31, -1, -1);
    v32 = v22;
    v13 = v36;
    MEMORY[0x22AA9A450](v32, -1, -1);
  }

  (*(v42 + 8))(v18, v43);
  sub_226E93170(a1, v15, &qword_27D7BD560, &unk_227684C50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v45 = *v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2D8, &qword_227678B50);
    return sub_22766C440();
  }

  else
  {
    (*(v11 + 32))(v13, v15, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2D8, &qword_227678B50);
    return sub_22766C450();
  }
}

uint64_t sub_2270A3DA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7)
{
  v41 = a6;
  v40 = a5;
  v38 = a3;
  v39 = a4;
  v10 = sub_227664420();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA330, &qword_227678B70);
  MEMORY[0x28223BE20](v44);
  v15 = (&v34 - v14);
  v16 = sub_22766B390();
  v42 = *(v16 - 8);
  v43 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A710();
  v19 = sub_22766B380();
  v20 = sub_22766C8B0();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v36 = v13;
    v22 = v21;
    v23 = swift_slowAlloc();
    v37 = a7;
    v35 = v23;
    v45 = v23;
    *v22 = 134218498;
    *(v22 + 4) = a2;
    *(v22 + 12) = 2080;
    v24 = sub_22766CE50();
    v26 = v15;
    v27 = a1;
    v28 = v11;
    v29 = v10;
    v30 = sub_226E97AE8(v24, v25, &v45);

    *(v22 + 14) = v30;
    v10 = v29;
    v11 = v28;
    a1 = v27;
    v15 = v26;
    *(v22 + 22) = 2048;
    *(v22 + 24) = v41;
    _os_log_impl(&dword_226E8E000, v19, v20, "Finished P->A conversion: %ld:%s:%lu", v22, 0x20u);
    v31 = v35;
    __swift_destroy_boxed_opaque_existential_0(v35);
    MEMORY[0x22AA9A450](v31, -1, -1);
    v32 = v22;
    v13 = v36;
    MEMORY[0x22AA9A450](v32, -1, -1);
  }

  (*(v42 + 8))(v18, v43);
  sub_226E93170(a1, v15, &qword_27D7BA330, &qword_227678B70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v45 = *v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA320, &qword_227678B68);
    return sub_22766C440();
  }

  else
  {
    (*(v11 + 32))(v13, v15, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA320, &qword_227678B68);
    return sub_22766C450();
  }
}

uint64_t sub_2270A411C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7)
{
  v41 = a6;
  v40 = a5;
  v38 = a3;
  v39 = a4;
  v10 = sub_2276676E0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD6C0, &unk_22768B740);
  MEMORY[0x28223BE20](v44);
  v15 = (&v34 - v14);
  v16 = sub_22766B390();
  v42 = *(v16 - 8);
  v43 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A710();
  v19 = sub_22766B380();
  v20 = sub_22766C8B0();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v36 = v13;
    v22 = v21;
    v23 = swift_slowAlloc();
    v37 = a7;
    v35 = v23;
    v45 = v23;
    *v22 = 134218498;
    *(v22 + 4) = a2;
    *(v22 + 12) = 2080;
    v24 = sub_22766CE50();
    v26 = v15;
    v27 = a1;
    v28 = v11;
    v29 = v10;
    v30 = sub_226E97AE8(v24, v25, &v45);

    *(v22 + 14) = v30;
    v10 = v29;
    v11 = v28;
    a1 = v27;
    v15 = v26;
    *(v22 + 22) = 2048;
    *(v22 + 24) = v41;
    _os_log_impl(&dword_226E8E000, v19, v20, "Finished P->A conversion: %ld:%s:%lu", v22, 0x20u);
    v31 = v35;
    __swift_destroy_boxed_opaque_existential_0(v35);
    MEMORY[0x22AA9A450](v31, -1, -1);
    v32 = v22;
    v13 = v36;
    MEMORY[0x22AA9A450](v32, -1, -1);
  }

  (*(v42 + 8))(v18, v43);
  sub_226E93170(a1, v15, &qword_27D7BD6C0, &unk_22768B740);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v45 = *v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA308, &qword_227678B60);
    return sub_22766C440();
  }

  else
  {
    (*(v11 + 32))(v13, v15, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA308, &qword_227678B60);
    return sub_22766C450();
  }
}

uint64_t sub_2270A4490(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, uint64_t a8)
{
  v31 = a7;
  v30 = a6;
  v29 = a5;
  LODWORD(v10) = a2;
  v12 = sub_22766B390();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A710();
  v16 = sub_22766B380();
  v17 = sub_22766C8B0();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v28 = a8;
    v19 = v18;
    v20 = swift_slowAlloc();
    HIDWORD(v27) = v10;
    v10 = v20;
    v32 = v20;
    *v19 = 134218498;
    *(v19 + 4) = a3;
    *(v19 + 12) = 2080;
    v21 = sub_22766CE50();
    v23 = sub_226E97AE8(v21, v22, &v32);

    *(v19 + 14) = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = v31;
    _os_log_impl(&dword_226E8E000, v16, v17, "Finished P->A conversion: %ld:%s:%lu", v19, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v10);
    v24 = v10;
    LOBYTE(v10) = BYTE4(v27);
    MEMORY[0x22AA9A450](v24, -1, -1);
    MEMORY[0x22AA9A450](v19, -1, -1);
  }

  (*(v13 + 8))(v15, v12);
  v32 = a1;
  v25 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA370, &qword_227678B90);
  if (v10)
  {
    return sub_22766C440();
  }

  else
  {
    return sub_22766C450();
  }
}

uint64_t sub_2270A46E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7)
{
  v41 = a6;
  v40 = a5;
  v38 = a3;
  v39 = a4;
  v10 = sub_227667A70();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA400, &unk_227684C10);
  MEMORY[0x28223BE20](v44);
  v15 = (&v34 - v14);
  v16 = sub_22766B390();
  v42 = *(v16 - 8);
  v43 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A710();
  v19 = sub_22766B380();
  v20 = sub_22766C8B0();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v36 = v13;
    v22 = v21;
    v23 = swift_slowAlloc();
    v37 = a7;
    v35 = v23;
    v45 = v23;
    *v22 = 134218498;
    *(v22 + 4) = a2;
    *(v22 + 12) = 2080;
    v24 = sub_22766CE50();
    v26 = v15;
    v27 = a1;
    v28 = v11;
    v29 = v10;
    v30 = sub_226E97AE8(v24, v25, &v45);

    *(v22 + 14) = v30;
    v10 = v29;
    v11 = v28;
    a1 = v27;
    v15 = v26;
    *(v22 + 22) = 2048;
    *(v22 + 24) = v41;
    _os_log_impl(&dword_226E8E000, v19, v20, "Finished P->A conversion: %ld:%s:%lu", v22, 0x20u);
    v31 = v35;
    __swift_destroy_boxed_opaque_existential_0(v35);
    MEMORY[0x22AA9A450](v31, -1, -1);
    v32 = v22;
    v13 = v36;
    MEMORY[0x22AA9A450](v32, -1, -1);
  }

  (*(v42 + 8))(v18, v43);
  sub_226E93170(a1, v15, &qword_27D7BA400, &unk_227684C10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v45 = *v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA3F0, &qword_227678BE0);
    return sub_22766C440();
  }

  else
  {
    (*(v11 + 32))(v13, v15, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA3F0, &qword_227678BE0);
    return sub_22766C450();
  }
}

uint64_t sub_2270A4A5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7)
{
  v41 = a6;
  v40 = a5;
  v38 = a3;
  v39 = a4;
  v10 = sub_227666C80();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2D0, &qword_227678B48);
  MEMORY[0x28223BE20](v44);
  v15 = (&v34 - v14);
  v16 = sub_22766B390();
  v42 = *(v16 - 8);
  v43 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A710();
  v19 = sub_22766B380();
  v20 = sub_22766C8B0();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v36 = v13;
    v22 = v21;
    v23 = swift_slowAlloc();
    v37 = a7;
    v35 = v23;
    v45 = v23;
    *v22 = 134218498;
    *(v22 + 4) = a2;
    *(v22 + 12) = 2080;
    v24 = sub_22766CE50();
    v26 = v15;
    v27 = a1;
    v28 = v11;
    v29 = v10;
    v30 = sub_226E97AE8(v24, v25, &v45);

    *(v22 + 14) = v30;
    v10 = v29;
    v11 = v28;
    a1 = v27;
    v15 = v26;
    *(v22 + 22) = 2048;
    *(v22 + 24) = v41;
    _os_log_impl(&dword_226E8E000, v19, v20, "Finished P->A conversion: %ld:%s:%lu", v22, 0x20u);
    v31 = v35;
    __swift_destroy_boxed_opaque_existential_0(v35);
    MEMORY[0x22AA9A450](v31, -1, -1);
    v32 = v22;
    v13 = v36;
    MEMORY[0x22AA9A450](v32, -1, -1);
  }

  (*(v42 + 8))(v18, v43);
  sub_226E93170(a1, v15, &qword_27D7BA2D0, &qword_227678B48);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v45 = *v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA2C0, &qword_227678B40);
    return sub_22766C440();
  }

  else
  {
    (*(v11 + 32))(v13, v15, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA2C0, &qword_227678B40);
    return sub_22766C450();
  }
}

uint64_t sub_2270A4DD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7)
{
  v37 = a5;
  v35 = a3;
  v36 = a4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3A8, &qword_22767B360);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v31 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3B0, &qword_227678BB0);
  MEMORY[0x28223BE20](v14);
  v16 = (&v31 - v15);
  v17 = sub_22766B390();
  v38 = *(v17 - 8);
  v39 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A710();
  v20 = sub_22766B380();
  v21 = sub_22766C8B0();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v32 = a6;
    v23 = v22;
    v33 = swift_slowAlloc();
    v34 = a7;
    v40 = v33;
    *v23 = 134218498;
    *(v23 + 4) = a2;
    *(v23 + 12) = 2080;
    v24 = sub_22766CE50();
    v26 = a1;
    v27 = v13;
    v28 = sub_226E97AE8(v24, v25, &v40);

    *(v23 + 14) = v28;
    v13 = v27;
    a1 = v26;
    *(v23 + 22) = 2048;
    *(v23 + 24) = v32;
    _os_log_impl(&dword_226E8E000, v20, v21, "Finished P->A conversion: %ld:%s:%lu", v23, 0x20u);
    v29 = v33;
    __swift_destroy_boxed_opaque_existential_0(v33);
    MEMORY[0x22AA9A450](v29, -1, -1);
    MEMORY[0x22AA9A450](v23, -1, -1);
  }

  (*(v38 + 8))(v19, v39);
  sub_226E93170(a1, v16, &qword_27D7BA3B0, &qword_227678BB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v40 = *v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA398, &qword_227678BA8);
    return sub_22766C440();
  }

  else
  {
    sub_2270A7690(v16, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA398, &qword_227678BA8);
    return sub_22766C450();
  }
}

uint64_t sub_2270A5100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7)
{
  v41 = a6;
  v40 = a5;
  v38 = a3;
  v39 = a4;
  v10 = sub_2276655F0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA290, &qword_227678B20);
  MEMORY[0x28223BE20](v44);
  v15 = (&v34 - v14);
  v16 = sub_22766B390();
  v42 = *(v16 - 8);
  v43 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A710();
  v19 = sub_22766B380();
  v20 = sub_22766C8B0();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v36 = v13;
    v22 = v21;
    v23 = swift_slowAlloc();
    v37 = a7;
    v35 = v23;
    v45 = v23;
    *v22 = 134218498;
    *(v22 + 4) = a2;
    *(v22 + 12) = 2080;
    v24 = sub_22766CE50();
    v26 = v15;
    v27 = a1;
    v28 = v11;
    v29 = v10;
    v30 = sub_226E97AE8(v24, v25, &v45);

    *(v22 + 14) = v30;
    v10 = v29;
    v11 = v28;
    a1 = v27;
    v15 = v26;
    *(v22 + 22) = 2048;
    *(v22 + 24) = v41;
    _os_log_impl(&dword_226E8E000, v19, v20, "Finished P->A conversion: %ld:%s:%lu", v22, 0x20u);
    v31 = v35;
    __swift_destroy_boxed_opaque_existential_0(v35);
    MEMORY[0x22AA9A450](v31, -1, -1);
    v32 = v22;
    v13 = v36;
    MEMORY[0x22AA9A450](v32, -1, -1);
  }

  (*(v42 + 8))(v18, v43);
  sub_226E93170(a1, v15, &qword_27D7BA290, &qword_227678B20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v45 = *v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA280, &qword_227678B18);
    return sub_22766C440();
  }

  else
  {
    (*(v11 + 32))(v13, v15, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA280, &qword_227678B18);
    return sub_22766C450();
  }
}

uint64_t sub_2270A5474(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, uint64_t a9, uint64_t a10)
{
  v33 = a8;
  v32 = a7;
  v35 = a4;
  v34 = a2;
  v13 = sub_22766B390();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A710();
  v17 = sub_22766B380();
  v18 = sub_22766C8B0();
  if (os_log_type_enabled(v17, v18))
  {
    v29 = a9;
    v19 = swift_slowAlloc();
    v31 = a10;
    v20 = v19;
    v21 = swift_slowAlloc();
    v30 = a3;
    v22 = v21;
    v36[0] = v21;
    *v20 = 134218498;
    *(v20 + 4) = a5;
    *(v20 + 12) = 2080;
    v23 = sub_22766CE50();
    v25 = sub_226E97AE8(v23, v24, v36);

    *(v20 + 14) = v25;
    *(v20 + 22) = 2048;
    *(v20 + 24) = v29;
    _os_log_impl(&dword_226E8E000, v17, v18, "Finished P->A conversion: %ld:%s:%lu", v20, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v22);
    v26 = v22;
    a3 = v30;
    MEMORY[0x22AA9A450](v26, -1, -1);
    MEMORY[0x22AA9A450](v20, -1, -1);
  }

  (*(v14 + 8))(v16, v13);
  v36[0] = a1;
  if (v35)
  {
    v27 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA298, &qword_227678B28);
    return sub_22766C440();
  }

  else
  {
    v36[1] = v34;
    v36[2] = a3;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA298, &qword_227678B28);
    return sub_22766C450();
  }
}

uint64_t sub_2270A56E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7)
{
  v41 = a6;
  v40 = a5;
  v38 = a3;
  v39 = a4;
  v10 = sub_227666190();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD740, &unk_22768B770);
  MEMORY[0x28223BE20](v44);
  v15 = (&v34 - v14);
  v16 = sub_22766B390();
  v42 = *(v16 - 8);
  v43 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A710();
  v19 = sub_22766B380();
  v20 = sub_22766C8B0();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v36 = v13;
    v22 = v21;
    v23 = swift_slowAlloc();
    v37 = a7;
    v35 = v23;
    v45 = v23;
    *v22 = 134218498;
    *(v22 + 4) = a2;
    *(v22 + 12) = 2080;
    v24 = sub_22766CE50();
    v26 = v15;
    v27 = a1;
    v28 = v11;
    v29 = v10;
    v30 = sub_226E97AE8(v24, v25, &v45);

    *(v22 + 14) = v30;
    v10 = v29;
    v11 = v28;
    a1 = v27;
    v15 = v26;
    *(v22 + 22) = 2048;
    *(v22 + 24) = v41;
    _os_log_impl(&dword_226E8E000, v19, v20, "Finished P->A conversion: %ld:%s:%lu", v22, 0x20u);
    v31 = v35;
    __swift_destroy_boxed_opaque_existential_0(v35);
    MEMORY[0x22AA9A450](v31, -1, -1);
    v32 = v22;
    v13 = v36;
    MEMORY[0x22AA9A450](v32, -1, -1);
  }

  (*(v42 + 8))(v18, v43);
  sub_226E93170(a1, v15, &unk_27D7BD740, &unk_22768B770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v45 = *v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA358, &qword_227678B88);
    return sub_22766C440();
  }

  else
  {
    (*(v11 + 32))(v13, v15, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA358, &qword_227678B88);
    return sub_22766C450();
  }
}

uint64_t sub_2270A5A5C(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, uint64_t a8, uint64_t a9)
{
  v29 = a8;
  v28 = a7;
  v30 = a3;
  v31 = a1;
  v11 = sub_22766B390();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A710();
  v15 = sub_22766B380();
  v16 = sub_22766C8B0();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v27[0] = a2;
    v18 = v17;
    v19 = swift_slowAlloc();
    v27[1] = a9;
    v20 = v19;
    v32[0] = v19;
    *v18 = 134218498;
    *(v18 + 4) = a4;
    *(v18 + 12) = 2080;
    v21 = sub_22766CE50();
    v23 = sub_226E97AE8(v21, v22, v32);

    *(v18 + 14) = v23;
    *(v18 + 22) = 2048;
    *(v18 + 24) = v29;
    _os_log_impl(&dword_226E8E000, v15, v16, "Finished P->A conversion: %ld:%s:%lu", v18, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x22AA9A450](v20, -1, -1);
    v24 = v18;
    a2 = v27[0];
    MEMORY[0x22AA9A450](v24, -1, -1);
  }

  (*(v12 + 8))(v14, v11);
  v32[0] = v31;
  if (v30)
  {
    v25 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA348, &qword_227678B80);
    return sub_22766C440();
  }

  else
  {
    v32[1] = a2;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA348, &qword_227678B80);
    return sub_22766C450();
  }
}

uint64_t sub_2270A5CC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7)
{
  v29 = a6;
  v28 = a5;
  v10 = sub_22766B390();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A710();
  v14 = sub_22766B380();
  v15 = sub_22766C8B0();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v27 = a7;
    v17 = v16;
    v18 = swift_slowAlloc();
    v26 = a1;
    v19 = v18;
    *&v31[0] = v18;
    *v17 = 134218498;
    *(v17 + 4) = a2;
    *(v17 + 12) = 2080;
    v20 = sub_22766CE50();
    v22 = sub_226E97AE8(v20, v21, v31);

    *(v17 + 14) = v22;
    *(v17 + 22) = 2048;
    *(v17 + 24) = v29;
    _os_log_impl(&dword_226E8E000, v14, v15, "Finished P->A conversion: %ld:%s:%lu", v17, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v19);
    v23 = v19;
    a1 = v26;
    MEMORY[0x22AA9A450](v23, -1, -1);
    MEMORY[0x22AA9A450](v17, -1, -1);
  }

  (*(v11 + 8))(v13, v10);
  sub_226E93170(a1, v31, &qword_27D7BA300, &unk_227684C90);
  if (v32)
  {
    v30[0] = *&v31[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA2F0, &qword_227678B58);
    return sub_22766C440();
  }

  else
  {
    sub_226E92AB8(v31, v30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA2F0, &qword_227678B58);
    return sub_22766C450();
  }
}

uint64_t sub_2270A5F38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7)
{
  v41 = a6;
  v40 = a5;
  v38 = a3;
  v39 = a4;
  v10 = sub_227664900();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA430, &qword_227678BF8);
  MEMORY[0x28223BE20](v44);
  v15 = (&v34 - v14);
  v16 = sub_22766B390();
  v42 = *(v16 - 8);
  v43 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A710();
  v19 = sub_22766B380();
  v20 = sub_22766C8B0();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v36 = v13;
    v22 = v21;
    v23 = swift_slowAlloc();
    v37 = a7;
    v35 = v23;
    v45 = v23;
    *v22 = 134218498;
    *(v22 + 4) = a2;
    *(v22 + 12) = 2080;
    v24 = sub_22766CE50();
    v26 = v15;
    v27 = a1;
    v28 = v11;
    v29 = v10;
    v30 = sub_226E97AE8(v24, v25, &v45);

    *(v22 + 14) = v30;
    v10 = v29;
    v11 = v28;
    a1 = v27;
    v15 = v26;
    *(v22 + 22) = 2048;
    *(v22 + 24) = v41;
    _os_log_impl(&dword_226E8E000, v19, v20, "Finished P->A conversion: %ld:%s:%lu", v22, 0x20u);
    v31 = v35;
    __swift_destroy_boxed_opaque_existential_0(v35);
    MEMORY[0x22AA9A450](v31, -1, -1);
    v32 = v22;
    v13 = v36;
    MEMORY[0x22AA9A450](v32, -1, -1);
  }

  (*(v42 + 8))(v18, v43);
  sub_226E93170(a1, v15, &unk_27D7BA430, &qword_227678BF8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v45 = *v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA420, &qword_227678BF0);
    return sub_22766C440();
  }

  else
  {
    (*(v11 + 32))(v13, v15, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA420, &qword_227678BF0);
    return sub_22766C450();
  }
}

uint64_t sub_2270A62AC(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, uint64_t a8)
{
  v29 = a7;
  v28 = a6;
  v30 = a2;
  v11 = sub_22766B390();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A710();
  v15 = sub_22766B380();
  v16 = sub_22766C8B0();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v27[0] = a1;
    v18 = v17;
    v19 = swift_slowAlloc();
    v27[1] = a8;
    v20 = v19;
    v31 = v19;
    *v18 = 134218498;
    *(v18 + 4) = a3;
    *(v18 + 12) = 2080;
    v21 = sub_22766CE50();
    v23 = sub_226E97AE8(v21, v22, &v31);

    *(v18 + 14) = v23;
    *(v18 + 22) = 2048;
    *(v18 + 24) = v29;
    _os_log_impl(&dword_226E8E000, v15, v16, "Finished P->A conversion: %ld:%s:%lu", v18, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x22AA9A450](v20, -1, -1);
    v24 = v18;
    a1 = v27[0];
    MEMORY[0x22AA9A450](v24, -1, -1);
  }

  (*(v12 + 8))(v14, v11);
  if (v30)
  {
    v31 = a1;
    v25 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA258, &qword_227678B08);
    return sub_22766C440();
  }

  else
  {
    LOBYTE(v31) = a1 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA258, &qword_227678B08);
    return sub_22766C450();
  }
}

uint64_t sub_2270A6508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7)
{
  v41 = a6;
  v40 = a5;
  v38 = a3;
  v39 = a4;
  v10 = sub_2276685B0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD800, &qword_227678BD0);
  MEMORY[0x28223BE20](v44);
  v15 = (&v34 - v14);
  v16 = sub_22766B390();
  v42 = *(v16 - 8);
  v43 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A710();
  v19 = sub_22766B380();
  v20 = sub_22766C8B0();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v36 = v13;
    v22 = v21;
    v23 = swift_slowAlloc();
    v37 = a7;
    v35 = v23;
    v45 = v23;
    *v22 = 134218498;
    *(v22 + 4) = a2;
    *(v22 + 12) = 2080;
    v24 = sub_22766CE50();
    v26 = v15;
    v27 = a1;
    v28 = v11;
    v29 = v10;
    v30 = sub_226E97AE8(v24, v25, &v45);

    *(v22 + 14) = v30;
    v10 = v29;
    v11 = v28;
    a1 = v27;
    v15 = v26;
    *(v22 + 22) = 2048;
    *(v22 + 24) = v41;
    _os_log_impl(&dword_226E8E000, v19, v20, "Finished P->A conversion: %ld:%s:%lu", v22, 0x20u);
    v31 = v35;
    __swift_destroy_boxed_opaque_existential_0(v35);
    MEMORY[0x22AA9A450](v31, -1, -1);
    v32 = v22;
    v13 = v36;
    MEMORY[0x22AA9A450](v32, -1, -1);
  }

  (*(v42 + 8))(v18, v43);
  sub_226E93170(a1, v15, &unk_27D7BD800, &qword_227678BD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v45 = *v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C8, &qword_227678BC8);
    return sub_22766C440();
  }

  else
  {
    (*(v11 + 32))(v13, v15, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C8, &qword_227678BC8);
    return sub_22766C450();
  }
}

uint64_t sub_2270A687C(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t *a10)
{
  v32 = a7;
  v31 = a6;
  v30[2] = a5;
  v33 = a2;
  v13 = a10;
  v34 = a9;
  v14 = sub_22766B390();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A710();
  v18 = sub_22766B380();
  v19 = sub_22766C8B0();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v30[1] = a8;
    v21 = v20;
    v22 = swift_slowAlloc();
    v30[0] = a10;
    v23 = v22;
    v35 = v22;
    *v21 = 134218498;
    *(v21 + 4) = a3;
    *(v21 + 12) = 2080;
    v24 = sub_22766CE50();
    v26 = sub_226E97AE8(v24, v25, &v35);

    *(v21 + 14) = v26;
    *(v21 + 22) = 2048;
    *(v21 + 24) = v32;
    _os_log_impl(&dword_226E8E000, v18, v19, "Finished P->A conversion: %ld:%s:%lu", v21, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v23);
    v27 = v23;
    v13 = v30[0];
    MEMORY[0x22AA9A450](v27, -1, -1);
    MEMORY[0x22AA9A450](v21, -1, -1);
  }

  (*(v15 + 8))(v17, v14);
  v35 = a1;
  if (v33)
  {
    v28 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(v34, v13);
    return sub_22766C440();
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(v34, v13);
    return sub_22766C450();
  }
}

uint64_t sub_2270A6AD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7)
{
  v41 = a6;
  v40 = a5;
  v38 = a3;
  v39 = a4;
  v10 = sub_227668CE0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BEB60, &unk_227684DD0);
  MEMORY[0x28223BE20](v44);
  v15 = (&v34 - v14);
  v16 = sub_22766B390();
  v42 = *(v16 - 8);
  v43 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A710();
  v19 = sub_22766B380();
  v20 = sub_22766C8B0();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v36 = v13;
    v22 = v21;
    v23 = swift_slowAlloc();
    v37 = a7;
    v35 = v23;
    v45 = v23;
    *v22 = 134218498;
    *(v22 + 4) = a2;
    *(v22 + 12) = 2080;
    v24 = sub_22766CE50();
    v26 = v15;
    v27 = a1;
    v28 = v11;
    v29 = v10;
    v30 = sub_226E97AE8(v24, v25, &v45);

    *(v22 + 14) = v30;
    v10 = v29;
    v11 = v28;
    a1 = v27;
    v15 = v26;
    *(v22 + 22) = 2048;
    *(v22 + 24) = v41;
    _os_log_impl(&dword_226E8E000, v19, v20, "Finished P->A conversion: %ld:%s:%lu", v22, 0x20u);
    v31 = v35;
    __swift_destroy_boxed_opaque_existential_0(v35);
    MEMORY[0x22AA9A450](v31, -1, -1);
    v32 = v22;
    v13 = v36;
    MEMORY[0x22AA9A450](v32, -1, -1);
  }

  (*(v42 + 8))(v18, v43);
  sub_226E93170(a1, v15, &unk_27D7BEB60, &unk_227684DD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v45 = *v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA408, &qword_227678BE8);
    return sub_22766C440();
  }

  else
  {
    (*(v11 + 32))(v13, v15, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA408, &qword_227678BE8);
    return sub_22766C450();
  }
}

uint64_t sub_2270A6E48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7)
{
  v41 = a6;
  v40 = a5;
  v38 = a3;
  v39 = a4;
  v10 = sub_227665030();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA390, &qword_227678BA0);
  MEMORY[0x28223BE20](v44);
  v15 = (&v34 - v14);
  v16 = sub_22766B390();
  v42 = *(v16 - 8);
  v43 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A710();
  v19 = sub_22766B380();
  v20 = sub_22766C8B0();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v36 = v13;
    v22 = v21;
    v23 = swift_slowAlloc();
    v37 = a7;
    v35 = v23;
    v45 = v23;
    *v22 = 134218498;
    *(v22 + 4) = a2;
    *(v22 + 12) = 2080;
    v24 = sub_22766CE50();
    v26 = v15;
    v27 = a1;
    v28 = v11;
    v29 = v10;
    v30 = sub_226E97AE8(v24, v25, &v45);

    *(v22 + 14) = v30;
    v10 = v29;
    v11 = v28;
    a1 = v27;
    v15 = v26;
    *(v22 + 22) = 2048;
    *(v22 + 24) = v41;
    _os_log_impl(&dword_226E8E000, v19, v20, "Finished P->A conversion: %ld:%s:%lu", v22, 0x20u);
    v31 = v35;
    __swift_destroy_boxed_opaque_existential_0(v35);
    MEMORY[0x22AA9A450](v31, -1, -1);
    v32 = v22;
    v13 = v36;
    MEMORY[0x22AA9A450](v32, -1, -1);
  }

  (*(v42 + 8))(v18, v43);
  sub_226E93170(a1, v15, &qword_27D7BA390, &qword_227678BA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v45 = *v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA380, &qword_227678B98);
    return sub_22766C440();
  }

  else
  {
    (*(v11 + 32))(v13, v15, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA380, &qword_227678B98);
    return sub_22766C450();
  }
}

uint64_t sub_2270A7248(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(v4 + 32);
  v10 = *(v4 + 48);
  v11 = *(v4 + 40);
  v12 = v4 + ((*(v6 + 80) + 56) & ~*(v6 + 80));

  return a4(a1, v7, v8, v9, v11, v10, v12);
}

__int128 *sub_2270A7374(__int128 *result)
{
  v2 = *(v1 + 16);
  v3 = *(result + 2);
  v4 = *(result + 24);
  v5 = *result;
  v6 = v3;
  v7 = v4;
  if (v2)
  {
    return v2(&v5);
  }

  return result;
}

uint64_t sub_2270A7464(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(v4 + 32);
  v10 = *(v4 + 48);
  v11 = *(v4 + 40);
  v12 = v4 + ((*(v6 + 80) + 56) & ~*(v6 + 80));

  return a4(a1, v7, v8, v9, v11, v10, v12);
}

uint64_t sub_2270A7690(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3A8, &qword_22767B360);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2270A7880(void *a1)
{
  v2 = a1;
  v3 = [a1 identifier];
  if (!v3)
  {
    goto LABEL_10;
  }

  v4 = v3;
  sub_22766C000();

  v5 = [v2 name];
  if (!v5)
  {
LABEL_9:

LABEL_10:
    v13 = sub_227664DD0();
    sub_2270A83AC(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v13 - 8) + 104))(v14, *MEMORY[0x277D51028], v13);
    swift_willThrow();
LABEL_11:

    return;
  }

  v6 = v5;
  sub_22766C000();

  v7 = [v2 role];
  if (!v7)
  {

    goto LABEL_9;
  }

  v8 = v7;
  sub_22766C000();

  v9 = [v2 socialMediaHandles];
  if (!v9)
  {
    v15 = sub_227664DD0();
    sub_2270A83AC(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v15 - 8) + 104))(v16, *MEMORY[0x277D51028], v15);
    swift_willThrow();

    goto LABEL_13;
  }

  v10 = v9;
  v11 = MEMORY[0x22AA99A00]();
  v12 = sub_227154CD0(v10);
  if (!v1)
  {
    v17 = v12;
    objc_autoreleasePoolPop(v11);
    sub_226F3EB50(v17);

    v18 = [v2 bio];
    if (v18)
    {
      v19 = v18;
      sub_22766C000();
    }

    sub_2270A82C0();
    sub_227663AE0();
    sub_2276635C0();
    goto LABEL_11;
  }

  objc_autoreleasePoolPop(v11);

  v2 = v10;
LABEL_13:
}

void sub_2270A7BF0(void *a1, uint64_t a2)
{
  sub_2276635A0();
  v5 = sub_22766BFD0();

  [a1 setIdentifier_];

  sub_2276635E0();
  v6 = sub_22766BFD0();

  [a1 setName_];

  v7 = sub_2276635F0();
  v9 = v8;
  v11 = v10 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA480, &qword_227678C58);
  sub_227663AD0();
  v12 = sub_22766BFD0();
  sub_226EB2DFC(v7, v9, v11);

  [a1 setRole_];

  sub_2276635D0();
  if (v13)
  {
    v14 = sub_22766BFD0();
  }

  else
  {
    v14 = 0;
  }

  [a1 setBio_];

  v15 = sub_2276635B0();
  sub_227646F00(a2, v15);
  v17 = v16;

  if (!v2)
  {
    [a1 setSocialMediaHandles_];
  }
}

void *static Contributor.representativeSamples()()
{
  v26 = sub_227663610();
  v0 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v25 = v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_22766CB70();
  v3 = sub_22766C090();
  v4 = sub_22766C090();
  sub_2270A826C();
  sub_2270A82C0();
  v5 = sub_227663B50();
  sub_2276653A0();
  v6 = MEMORY[0x277D51610];
  sub_2270A83AC(&qword_27D7B9450, MEMORY[0x277D51610], &protocol conformance descriptor for SocialMediaHandle);
  sub_2270A83AC(&qword_27D7B88B8, v6, MEMORY[0x277D51618]);
  v7 = sub_22766C590();
  v44 = v3;
  v45[0] = v2;
  v45[1] = v45;
  v45[2] = &v44;
  v42 = v5;
  v43 = v4;
  v45[3] = &v43;
  v45[4] = &v42;
  v41 = v7;
  v45[5] = &v41;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8470, qword_227677CA0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v38 = v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA450, &qword_227678C00);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA458, &qword_227678C08);
  v31 = sub_226F5BF60(&qword_27D7BA460, &qword_27D7B8470, qword_227677CA0);
  v32 = sub_226F5BF60(&qword_27D7B8500, &qword_27D7B84E0, &qword_22767C6B0);
  v33 = v32;
  v34 = sub_226F5BF60(&qword_27D7BA468, &qword_27D7BA450, &qword_227678C00);
  v35 = sub_226F5BF60(&qword_27D7BA470, &qword_27D7BA458, &qword_227678C08);
  v8 = sub_2276638E0();

  v9 = *(v8 + 16);
  if (v9)
  {
    v30 = MEMORY[0x277D84F90];
    result = sub_226F1F3C8(0, v9, 0);
    v11 = 0;
    v12 = 0;
    v13 = v30;
    v21[1] = v0 + 32;
    v24 = v0;
    v23 = v8;
    v22 = v9;
    while (v12 < *(v8 + 16))
    {
      v14 = v8 + v11;
      v29 = *(v8 + v11 + 32);
      v28 = *(v8 + v11 + 48);
      v27 = *(v8 + v11 + 64);
      v16 = *(v8 + v11 + 80);
      v15 = *(v8 + v11 + 88);
      v17 = *(v14 + 96);

      sub_226EB396C(v16, v15, v17);

      v18 = v25;
      sub_2276635C0();
      v30 = v13;
      v20 = *(v13 + 16);
      v19 = *(v13 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_226F1F3C8((v19 > 1), v20 + 1, 1);
        v13 = v30;
      }

      ++v12;
      *(v13 + 16) = v20 + 1;
      result = (*(v24 + 32))(v13 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v20, v18, v26);
      v11 += 80;
      v8 = v23;
      if (v22 == v12)
      {

        return v13;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

unint64_t sub_2270A826C()
{
  result = qword_27D7BA440;
  if (!qword_27D7BA440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BA440);
  }

  return result;
}

unint64_t sub_2270A82C0()
{
  result = qword_27D7BA448;
  if (!qword_27D7BA448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BA448);
  }

  return result;
}

uint64_t sub_2270A8354(uint64_t a1)
{
  result = sub_2270A83AC(&qword_27D7BA478, MEMORY[0x277D4FFF0], &protocol conformance descriptor for Contributor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2270A83AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_2270A83F4(void (*a1)(double *__return_ptr, double *, uint64_t *), double a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = *(a4 + 16);
  if (v7)
  {
    for (i = (a4 + 64); ; i += 40)
    {
      v10 = *i;
      v12 = *(i - 2);
      v11 = *(i - 1);
      v13 = *(i - 3);
      v22[0] = *(i - 4);
      v22[1] = v13;
      v23 = v12;
      v24 = v11;
      v25 = v10;

      sub_226EB396C(v12, v11, v10);
      a1(&v21, &v26, v22);
      if (v5)
      {
        break;
      }

      v14 = v23;
      v15 = v24;
      v16 = v25;

      sub_226EB2DFC(v14, v15, v16);
      a2 = v21;
      v26 = v21;
      if (!--v7)
      {
        return a2;
      }
    }

    v17 = v23;
    v18 = v24;
    v19 = v25;

    sub_226EB2DFC(v17, v18, v19);
  }

  return a2;
}

uint64_t sub_2270A8500(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, char *), uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = a1;
  v15 = a1;
  v9 = *(a4 + 16);

  if (v9)
  {
    v10 = (a4 + 32);
    while (1)
    {
      v11 = *v10++;
      v14 = v11;
      a2(&v13, &v15, &v14);
      if (v5)
      {
        break;
      }

      v8 = v13;
      v15 = v13;
      if (!--v9)
      {
        return v8;
      }
    }
  }

  return v8;
}

uint64_t sub_2270A85DC(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, uint64_t), uint64_t a3, uint64_t a4, uint64_t (*a5)(void, __n128))
{
  v16 = a1;
  v9 = a1;
  v10 = *(a4 + 16);

  if (v10)
  {
    v11 = *((a5)(0) - 8);
    v12 = a4 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v13 = *(v11 + 72);
    while (1)
    {
      a2(&v15, &v16, v12);
      if (v5)
      {
        break;
      }

      v9 = v15;
      v16 = v15;
      v12 += v13;
      if (!--v10)
      {
        return v9;
      }
    }
  }

  return v9;
}

uint64_t sub_2270A86E8(uint64_t a1)
{
  v43 = sub_2276639B0();
  v3 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v42 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_2276624A0();
  v5 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v8)
  {
    v39 = v7;
    v31 = v1;
    v47 = MEMORY[0x277D84F90];
    v33 = a1;
    sub_226F1F548(0, v8, 0);
    v10 = v5;
    v11 = v33;
    v45 = v33 + 56;
    v46 = v47;
    result = sub_22766CC90();
    v12 = result;
    v13 = 0;
    v37 = v3 + 8;
    v38 = v3 + 16;
    v40 = v10;
    v35 = v3;
    v36 = v10 + 32;
    v32 = v11 + 64;
    v34 = v8;
    while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(v11 + 32))
    {
      v16 = v12 >> 6;
      if ((*(v45 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
      {
        goto LABEL_23;
      }

      v44 = *(v11 + 36);
      v18 = v42;
      v17 = v43;
      (*(v3 + 16))(v42, *(v11 + 48) + *(v3 + 72) * v12, v43);
      v19 = v39;
      sub_2276639A0();
      (*(v3 + 8))(v18, v17);
      v20 = v46;
      v47 = v46;
      v22 = *(v46 + 16);
      v21 = *(v46 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_226F1F548((v21 > 1), v22 + 1, 1);
        v20 = v47;
      }

      *(v20 + 16) = v22 + 1;
      v23 = (*(v40 + 80) + 32) & ~*(v40 + 80);
      v46 = v20;
      result = (*(v40 + 32))(v20 + v23 + *(v40 + 72) * v22, v19, v41);
      v14 = 1 << *(v11 + 32);
      if (v12 >= v14)
      {
        goto LABEL_24;
      }

      v24 = *(v45 + 8 * v16);
      if ((v24 & (1 << v12)) == 0)
      {
        goto LABEL_25;
      }

      if (v44 != *(v11 + 36))
      {
        goto LABEL_26;
      }

      v25 = v24 & (-2 << (v12 & 0x3F));
      if (v25)
      {
        v14 = __clz(__rbit64(v25)) | v12 & 0x7FFFFFFFFFFFFFC0;
        v15 = v34;
        v3 = v35;
      }

      else
      {
        v26 = v16 << 6;
        v27 = v16 + 1;
        v28 = (v32 + 8 * v16);
        v15 = v34;
        v3 = v35;
        while (v27 < (v14 + 63) >> 6)
        {
          v30 = *v28++;
          v29 = v30;
          v26 += 64;
          ++v27;
          if (v30)
          {
            result = sub_226EB526C(v12, v44, 0);
            v14 = __clz(__rbit64(v29)) + v26;
            goto LABEL_19;
          }
        }

        result = sub_226EB526C(v12, v44, 0);
LABEL_19:
        v11 = v33;
      }

      ++v13;
      v12 = v14;
      if (v13 == v15)
      {
        return v46;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  return result;
}

uint64_t sub_2270A8AAC()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2270A8B30@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v75 = a3;
  v81 = sub_22766B390();
  v79 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v7 = v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v67 - v9;
  v11 = sub_227663CD0();
  v12 = *(v11 - 8);
  v72 = v11;
  v73 = v12;
  MEMORY[0x28223BE20](v11);
  v71 = v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v70 = v67 - v15;
  v16 = sub_2276624A0();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_227665780();
  v80 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v82 = v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v74 = v67 - v23;
  MEMORY[0x28223BE20](v24);
  v69 = v67 - v25;
  sub_227669690();
  swift_beginAccess();
  v83 = v3;
  v26 = *(v3 + 40);
  if (!*(v26 + 16))
  {
    goto LABEL_15;
  }

  v27 = sub_226E92000(a1, a2);
  if ((v28 & 1) == 0)
  {

LABEL_15:
    v55 = v20;
    sub_22766A6C0();

    v56 = sub_22766B380();
    v57 = sub_22766C890();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v85[0] = v59;
      *v58 = 141558274;
      *(v58 + 4) = 1752392040;
      *(v58 + 12) = 2080;
      *(v58 + 14) = sub_226E97AE8(a1, a2, v85);
      _os_log_impl(&dword_226E8E000, v56, v57, "Expected progress update for bundle %{mask.hash}s, but bundle is not associated with URLs", v58, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v59);
      MEMORY[0x22AA9A450](v59, -1, -1);
      MEMORY[0x22AA9A450](v58, -1, -1);
    }

    v79[1](v7, v81);
    return (*(v80 + 56))(v75, 1, 1, v55);
  }

  v68 = *(*(v26 + 56) + 8 * v27);

  v29 = v83;
  swift_beginAccess();
  if (!*(*(v29 + 32) + 16))
  {
LABEL_19:
    v61 = v20;

    sub_22766A6C0();

    v62 = sub_22766B380();
    v63 = sub_22766C890();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v84[0] = v65;
      *v64 = 141558274;
      *(v64 + 4) = 1752392040;
      *(v64 + 12) = 2080;
      *(v64 + 14) = sub_226E97AE8(a1, a2, v84);
      _os_log_impl(&dword_226E8E000, v62, v63, "Progress tracker has no item identifier for bundle %{mask.hash}s", v64, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v65);
      MEMORY[0x22AA9A450](v65, -1, -1);
      MEMORY[0x22AA9A450](v64, -1, -1);
    }

    v79[1](v10, v81);
    return (*(v80 + 56))(v75, 1, 1, v61);
  }

  sub_226E92000(a1, a2);
  if ((v30 & 1) == 0)
  {

    goto LABEL_19;
  }

  sub_2276697B0();
  v31 = v69;
  sub_227665770();
  v32 = v80;
  v33 = v74;
  (*(v80 + 16))(v74, v31, v20);
  v34 = *(v68 + 16);
  if (v34)
  {
    v81 = v20;
    v35 = v68 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
    swift_beginAccess();
    v37 = *(v17 + 16);
    v36 = v17 + 16;
    v78 = *(v36 + 56);
    v79 = v37;
    v67[3] = v73 + 16;
    v67[2] = v73 + 32;
    v67[1] = v73 + 8;
    v38 = (v36 - 8);
    v67[0] = v32 + 8;
    v77 = (v32 + 32);
    v76 = (v32 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v39 = v82;
    (v37)(v19, v35, v16);
    while (1)
    {
      v42 = *(v83 + 56);
      if (!*(v42 + 16))
      {
        goto LABEL_8;
      }

      v43 = sub_226F3B058(v19);
      if ((v44 & 1) == 0)
      {
        break;
      }

      v45 = v72;
      v46 = v73;
      v47 = v19;
      v48 = v36;
      v49 = v16;
      v50 = v71;
      (*(v73 + 16))(v71, *(v42 + 56) + *(v73 + 72) * v43, v72);

      v51 = v70;
      v52 = v50;
      v16 = v49;
      v36 = v48;
      v19 = v47;
      v33 = v74;
      (*(v46 + 32))(v70, v52, v45);
      sub_227665760();
      v53 = *(v46 + 8);
      v39 = v82;
      v53(v51, v45);
      (*v38)(v19, v16);
      v54 = v81;
      (*v67[0])(v33, v81);
      (*v77)(v33, v39, v54);
LABEL_9:
      v35 += v78;
      if (!--v34)
      {

        v66 = v75;
        v32 = v80;
        v20 = v81;
        goto LABEL_24;
      }

      (v79)(v19, v35, v16);
    }

LABEL_8:
    (*v38)(v19, v16);
    v40 = *v77;
    v41 = v81;
    (*v77)(v39, v33, v81);
    v40(v33, v39, v41);
    goto LABEL_9;
  }

  v66 = v75;
LABEL_24:
  (*(v32 + 8))(v69, v20);
  (*(v32 + 32))(v66, v74, v20);
  return (*(v32 + 56))(v66, 0, 1, v20);
}

uint64_t sub_2270A944C(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v7 = a1[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9480, &unk_227678CF0);
  inited = swift_initStackObject();
  v23 = xmmword_227670CD0;
  *(inited + 16) = xmmword_227670CD0;

  *(inited + 32) = sub_2276633E0();
  *(inited + 40) = v9;
  *(inited + 48) = sub_227663410();
  *(inited + 56) = v10;
  v11 = sub_227148E68(inited);
  swift_setDeallocating();
  sub_226E97D1C(inited + 32, &unk_27D7BE670, &unk_227674260);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25[0] = v7;
  sub_226FC91B0(v11, sub_2270ABE5C, 0, isUniquelyReferenced_nonNull_native, v25);

  if (v3)
  {

    __break(1u);

    __break(1u);
  }

  else
  {
    a1[4] = v25[0];

    swift_beginAccess();
    v13 = a1[5];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA490, &qword_227678D00);
    v14 = swift_initStackObject();
    *(v14 + 16) = v23;

    *(v14 + 32) = sub_2276633E0();
    *(v14 + 40) = v15;
    *(v14 + 48) = a3;

    v16 = sub_227149DB0(v14);
    swift_setDeallocating();
    sub_226E97D1C(v14 + 32, &qword_27D7BA498, &unk_227678D08);
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v24[0] = v13;
    sub_2270ABEEC(v16, sub_2270ABEA4, 0, v17, v24);

    a1[5] = v24[0];

    v18 = swift_beginAccess();
    MEMORY[0x28223BE20](v18);
    v22[2] = a2;

    v20 = sub_2270A85DC(v19, sub_2270AC178, v22, a3, MEMORY[0x277CC9260]);

    a1[6] = v20;
  }

  return result;
}

uint64_t sub_2270A9750@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  if (*(*a1 + 16) && (v6 = sub_226F3B058(a2), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 8 * v6);
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_227670CD0;
  *(inited + 32) = sub_2276633E0();
  *(inited + 40) = v10;
  v22 = v8;
  sub_22745F204(inited);
  v11 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA4A0, &qword_227678D18);
  v12 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA4A8, &qword_227678D20) - 8);
  v13 = (*(*v12 + 80) + 32) & ~*(*v12 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_227670CD0;
  v15 = v14 + v13;
  v16 = v12[14];
  v17 = sub_2276624A0();
  (*(*(v17 - 8) + 16))(v15, a2, v17);
  *(v15 + v16) = v11;

  v18 = sub_227149DC4(v14);
  swift_setDeallocating();
  sub_226E97D1C(v15, &qword_27D7BA4A8, &qword_227678D20);
  swift_deallocClassInstance();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = v5;
  sub_2270AC194(v18, sub_2270ABDA8, 0, isUniquelyReferenced_nonNull_native, &v22);
  if (v3)
  {

    __break(1u);
  }

  else
  {

    *a3 = v22;
  }

  return result;
}

uint64_t sub_2270A99BC(void *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9648, &unk_227674880);
  MEMORY[0x28223BE20](v5 - 8);
  v50 = v48 - v6;
  v54 = sub_2276624A0();
  v7 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v49 = v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2276633E0();
  v11 = v10;
  swift_beginAccess();
  v12 = a1[5];
  if (*(v12 + 16))
  {

    v13 = sub_226E92000(v9, v11);
    v15 = v14;

    if (v15)
    {
      v16 = *(*(v12 + 56) + 8 * v13);

      v17 = *(v16 + 16);
      if (v17)
      {
        v48[2] = a2;
        v48[3] = v2;
        v18 = v7 + 16;
        v52 = *(v7 + 16);
        v53 = v7 + 16;
        v19 = *(v7 + 80);
        v48[1] = v16;
        v20 = v16 + ((v19 + 32) & ~v19);
        v21 = *(v18 + 56);
        v22 = (v18 - 8);
        v23 = v49;
        v24 = v50;
        v52(v49, v20, v54);
        while (1)
        {
          swift_beginAccess();
          v26 = sub_226F3B058(v23);
          if (v27)
          {
            v28 = v26;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v30 = a1[6];
            v55 = v30;
            a1[6] = 0x8000000000000000;
            if (!isUniquelyReferenced_nonNull_native)
            {
              sub_226FF3618();
              v30 = v55;
            }

            (*v22)(*(v30 + 48) + v28 * v21, v54);

            sub_227368558(v28, v30);
            a1[6] = v30;
          }

          swift_endAccess();
          swift_beginAccess();
          v31 = sub_226F3B058(v23);
          if (v32)
          {
            v33 = v31;
            v51 = v17;
            v34 = swift_isUniquelyReferenced_nonNull_native();
            v35 = a1[7];
            v55 = v35;
            a1[7] = 0x8000000000000000;
            v36 = a1;
            if (!v34)
            {
              sub_226FF3640();
              v35 = v55;
            }

            (*v22)(*(v35 + 48) + v33 * v21, v54);
            v37 = *(v35 + 56);
            v38 = sub_227663CD0();
            v39 = *(v38 - 8);
            v40 = v37 + *(v39 + 72) * v33;
            v24 = v50;
            (*(v39 + 32))(v50, v40, v38);
            sub_227368214(v33, v35);
            v36[7] = v35;

            (*(v39 + 56))(v24, 0, 1, v38);
            v23 = v49;
            a1 = v36;
            v17 = v51;
          }

          else
          {
            v25 = sub_227663CD0();
            (*(*(v25 - 8) + 56))(v24, 1, 1, v25);
          }

          sub_226E97D1C(v24, &qword_27D7B9648, &unk_227674880);
          swift_endAccess();
          (*v22)(v23, v54);
          v20 += v21;
          if (!--v17)
          {
            break;
          }

          v52(v23, v20, v54);
        }
      }
    }
  }

  v41 = sub_2276633E0();
  v43 = v42;
  swift_beginAccess();
  sub_22736380C(0, v41, v43);
  swift_endAccess();
  v44 = sub_2276633E0();
  v46 = v45;
  swift_beginAccess();
  sub_22736384C(0, 0, v44, v46);
  return swift_endAccess();
}

uint64_t sub_2270A9EA8(uint64_t a1, uint64_t a2, void (**a3)(char *, uint64_t))
{
  v256 = a3;
  v5 = sub_22766A240();
  v235 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v225 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA488, &unk_227678CE0);
  MEMORY[0x28223BE20](v8 - 8);
  v247 = &v225 - v9;
  v245 = sub_227665780();
  v246 = *(v245 - 8);
  MEMORY[0x28223BE20](v245);
  v11 = &v225 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v234 = &v225 - v13;
  MEMORY[0x28223BE20](v14);
  v242 = &v225 - v15;
  v259 = sub_227663CD0();
  v251 = *(v259 - 1);
  MEMORY[0x28223BE20](v259);
  v241 = &v225 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v240 = &v225 - v18;
  v19 = sub_2276624A0();
  v239 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v253 = &v225 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v243 = &v225 - v22;
  MEMORY[0x28223BE20](v23);
  v236 = &v225 - v24;
  MEMORY[0x28223BE20](v25);
  v27 = &v225 - v26;
  MEMORY[0x28223BE20](v28);
  v252 = (&v225 - v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9648, &unk_227674880);
  MEMORY[0x28223BE20](v30 - 8);
  v254 = &v225 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v248 = &v225 - v33;
  MEMORY[0x28223BE20](v34);
  v36 = &v225 - v35;
  MEMORY[0x28223BE20](v37);
  v244 = &v225 - v38;
  MEMORY[0x28223BE20](v39);
  v41 = &v225 - v40;
  result = swift_beginAccess();
  v260 = a1;
  if (!*(*(a1 + 48) + 16))
  {
    return result;
  }

  v227 = v11;
  v228 = v7;

  sub_226F3B058(a2);
  v44 = v43;

  if ((v44 & 1) == 0)
  {
    return result;
  }

  v45 = v260;
  swift_beginAccess();
  v46 = *(v45 + 56);
  v47 = *(v46 + 16);
  v233 = a2;
  v238 = v5;
  if (v47)
  {

    v48 = sub_226F3B058(a2);
    v50 = v49;
    if (v49)
    {
      (*(v251 + 16))(v41, *(v46 + 56) + *(v251 + 72) * v48, v259);
      v51 = 0;
    }

    else
    {
      v51 = 1;
    }

    LODWORD(v237) = v50 ^ 1;
  }

  else
  {
    v51 = 1;
    LODWORD(v237) = 1;
  }

  v52 = v251;
  v53 = (v251 + 56);
  v54 = *(v251 + 56);
  v55 = v259;
  v54(v41, v51, 1, v259);
  sub_226E97D1C(v41, &qword_27D7B9648, &unk_227674880);
  v56 = *(v239 + 16);
  v57 = v252;
  v258 = v239 + 16;
  v257 = v56;
  (v56)(v252, v233, v19);
  v58 = *(v52 + 16);
  v59 = v244;
  v250 = v52 + 16;
  v249 = v58;
  v58(v244, v256, v55);
  v256 = v53;
  v255 = v54;
  v54(v59, 0, 1, v55);
  v60 = v260;
  swift_beginAccess();
  sub_227363954(v59, v57);
  result = swift_endAccess();
  if ((v237 & 1) == 0)
  {
    v62 = v60;
    goto LABEL_110;
  }

  v61 = *(v60 + 48);
  v62 = v60;
  if (!*(v61 + 16))
  {
    v63 = v233;
LABEL_51:
    v65 = v243;
    goto LABEL_52;
  }

  v63 = v233;
  v64 = sub_226F3B058(v233);
  v65 = v243;
  if (v66)
  {
    v67 = *(*(v61 + 56) + 8 * v64);

    v68 = *(v67 + 2);
    result = swift_beginAccess();
    v237 = v68;
    if (v68)
    {
      v69 = 0;
      v232 = v67 + 32;
      v70 = (v239 + 8);
      v244 = MEMORY[0x277D84F90];
      v226 = v67;
      v225 = v36;
      while (1)
      {
        if (v69 >= *(v67 + 2))
        {
          goto LABEL_174;
        }

        v71 = v67;
        v72 = &v232[16 * v69];
        v73 = *v72;
        v74 = v72[1];
        ++v69;

        sub_227669690();
        v75 = *(v62 + 40);
        if (!*(v75 + 16))
        {
          v67 = v71;
          goto LABEL_15;
        }

        v231 = v73;
        v252 = v74;
        v76 = sub_226E92000(v73, v74);
        if ((v77 & 1) == 0)
        {
          v67 = v71;
          goto LABEL_33;
        }

        v78 = *(*(v75 + 56) + 8 * v76);

        v79 = *(v78 + 16);
        if (!v79)
        {
          v67 = v226;
LABEL_33:

LABEL_15:
          v62 = v260;
          goto LABEL_16;
        }

        v230 = v69;
        v80 = 0;
        v81 = (*(v239 + 80) + 32) & ~*(v239 + 80);
        v229 = v78;
        v82 = v78 + v81;
        v83 = *(v239 + 72);
        v84 = v225;
        do
        {
          (v257)(v27, v82, v19);
          v85 = *(v260 + 56);
          if (*(v85 + 16))
          {

            v86 = sub_226F3B058(v27);
            if (v87)
            {
              v249(v84, *(v85 + 56) + *(v251 + 72) * v86, v259);
              (*v70)(v27, v19);

              v88 = 0;
              v89 = 1;
              goto LABEL_27;
            }
          }

          (*v70)(v27, v19);
          v89 = 0;
          v88 = 1;
LABEL_27:
          v255(v84, v88, 1, v259);
          result = sub_226E97D1C(v84, &qword_27D7B9648, &unk_227674880);
          v90 = __OFADD__(v80, v89);
          v80 += v89;
          if (v90)
          {
            goto LABEL_168;
          }

          v82 += v83;
          --v79;
        }

        while (v79);

        if (v80 == 1)
        {
          v91 = v244;
          result = swift_isUniquelyReferenced_nonNull_native();
          v92 = v91;
          v261 = v91;
          v67 = v226;
          if ((result & 1) == 0)
          {
            result = sub_226F1EF90();
            v92 = v261;
          }

          v93 = v252;
          v94 = v231;
          v95 = *(v92 + 2);
          if (v95 >= *(v92 + 3) >> 1)
          {
            result = sub_226F1EF90();
            v93 = v252;
            v92 = v261;
          }

          *(v92 + 2) = v95 + 1;
          v244 = v92;
          v96 = &v92[16 * v95];
          *(v96 + 4) = v94;
          *(v96 + 5) = v93;
          v69 = v230;
          v62 = v260;
          if (v230 == v237)
          {
            goto LABEL_44;
          }
        }

        else
        {
          v62 = v260;
          v67 = v226;
          v69 = v230;
LABEL_16:

          if (v69 == v237)
          {
            goto LABEL_44;
          }
        }
      }
    }

    v244 = MEMORY[0x277D84F90];
LABEL_44:

    result = v244;
    v97 = *(v244 + 2);
    if (v97)
    {
      v98 = 0;
      v99 = (v244 + 40);
      v63 = v233;
      do
      {
        if (v98 >= *(result + 16))
        {
          goto LABEL_173;
        }

        ++v98;
        v100 = *v99;
        v261 = *(v99 - 1);
        v262 = v100;
        sub_2270ABD18();

        sub_22766A8C0();

        v99 += 2;
        result = v244;
      }

      while (v97 != v98);
    }

    else
    {
      v63 = v233;
    }

    v62 = v260;
    goto LABEL_51;
  }

LABEL_52:
  v101 = *(v62 + 48);
  v102 = v236;
  if (!*(v101 + 16))
  {
    goto LABEL_111;
  }

  v103 = sub_226F3B058(v63);
  if ((v104 & 1) == 0)
  {

    goto LABEL_111;
  }

  v105 = *(*(v101 + 56) + 8 * v103);

  v106 = *(v105 + 2);
  result = swift_beginAccess();
  v252 = (v239 + 8);
  v231 = v106;
  if (v106)
  {
    v107 = 0;
    v230 = v105 + 32;
    v232 = MEMORY[0x277D84F90];
    v229 = v105;
    while (1)
    {
      if (v107 >= *(v105 + 2))
      {
        goto LABEL_175;
      }

      v244 = v107;
      v108 = &v230[16 * v107];
      v109 = *v108;
      v110 = v108[1];

      sub_227669690();
      v111 = *(v62 + 40);
      v112 = *(v111 + 16);
      v237 = v109;
      if (v112)
      {

        v113 = sub_226E92000(v109, v110);
        if (v114)
        {
          v115 = *(*(v111 + 56) + 8 * v113);

          v116 = *(v115 + 2);
          if (v116)
          {
            v117 = 0;
            v118 = (*(v239 + 80) + 32) & ~*(v239 + 80);
            v226 = v115;
            v119 = &v115[v118];
            v120 = *(v239 + 72);
            while (1)
            {
              (v257)(v102, v119, v19);
              v121 = *(v260 + 56);
              if (!*(v121 + 16))
              {
                goto LABEL_67;
              }

              v122 = sub_226F3B058(v102);
              if ((v123 & 1) == 0)
              {
                break;
              }

              v249(v248, *(v121 + 56) + *(v251 + 72) * v122, v259);
              (*v252)(v102, v19);

              v124 = 0;
              v125 = 1;
LABEL_68:
              v126 = v248;
              v255(v248, v124, 1, v259);
              result = sub_226E97D1C(v126, &qword_27D7B9648, &unk_227674880);
              v90 = __OFADD__(v117, v125);
              v117 += v125;
              if (v90)
              {
                goto LABEL_169;
              }

              v119 += v120;
              if (!--v116)
              {

                goto LABEL_74;
              }
            }

LABEL_67:
            (*v252)(v102, v19);
            v125 = 0;
            v124 = 1;
            goto LABEL_68;
          }

          v117 = 0;
LABEL_74:
          v62 = v260;
          v65 = v243;
          goto LABEL_75;
        }
      }

      v117 = 0;
LABEL_75:
      ++v244;
      v127 = *(v62 + 40);
      if (*(v127 + 16))
      {

        v128 = sub_226E92000(v237, v110);
        if ((v129 & 1) == 0)
        {

          goto LABEL_56;
        }

        v130 = *(*(v127 + 56) + 8 * v128);

        v131 = *(v130 + 16);

        if (v117 != v131)
        {

          v62 = v260;
          v65 = v243;
          goto LABEL_57;
        }

        v132 = v232;
        result = swift_isUniquelyReferenced_nonNull_native();
        v261 = v132;
        v105 = v229;
        if ((result & 1) == 0)
        {
          result = sub_226F1EF90();
          v132 = v261;
        }

        v133 = *(v132 + 2);
        if (v133 >= *(v132 + 3) >> 1)
        {
          result = sub_226F1EF90();
          v132 = v261;
        }

        *(v132 + 2) = v133 + 1;
        v232 = v132;
        v134 = &v132[16 * v133];
        *(v134 + 4) = v237;
        *(v134 + 5) = v110;
        v107 = v244;
        v62 = v260;
        v65 = v243;
        if (v244 == v231)
        {
          goto LABEL_88;
        }
      }

      else
      {
LABEL_56:

LABEL_57:
        v105 = v229;
        v107 = v244;
        if (v244 == v231)
        {
          goto LABEL_88;
        }
      }
    }
  }

  v232 = MEMORY[0x277D84F90];
LABEL_88:

  v135 = v232;
  v136 = *(v232 + 2);
  result = swift_beginAccess();
  if (v136)
  {
    v137 = 0;
    v138 = v135 + 32;
    v237 = v251 + 32;
    v236 = (v251 + 8);
    v226 = v136;
    v229 = v135 + 32;
    while (1)
    {
      if (v137 >= *(v232 + 2))
      {
        goto LABEL_176;
      }

      v140 = &v138[16 * v137];
      v142 = *v140;
      v141 = v140[1];

      sub_227669690();
      v143 = *(v62 + 40);
      v144 = *(v143 + 16);
      v248 = v141;
      v244 = v142;
      if (!v144)
      {
        goto LABEL_91;
      }

      v145 = sub_226E92000(v142, v141);
      if ((v146 & 1) == 0)
      {
        break;
      }

      v147 = *(*(v143 + 56) + 8 * v145);

      v148 = *(v147 + 2);
      if (v148)
      {
        v231 = v137;
        v139 = 0;
        v149 = (*(v239 + 80) + 32) & ~*(v239 + 80);
        v230 = v147;
        v150 = &v147[v149];
        v151 = *(v239 + 72);
        while (1)
        {
          (v257)(v65, v150, v19);
          v152 = *(v260 + 56);
          if (*(v152 + 16))
          {

            v153 = sub_226F3B058(v65);
            if (v154)
            {
              v155 = v251;
              v156 = v19;
              v157 = v241;
              v158 = v259;
              v249(v241, *(v152 + 56) + *(v251 + 72) * v153, v259);

              v159 = v240;
              v160 = v157;
              v19 = v156;
              (*(v155 + 32))(v240, v160, v158);
              v161 = sub_227663CC0();
              v162 = v158;
              v65 = v243;
              (*(v155 + 8))(v159, v162);
              result = (*v252)(v65, v19);
              v90 = __OFADD__(v139, v161);
              v139 += v161;
              if (v90)
              {
                goto LABEL_172;
              }

              goto LABEL_100;
            }
          }

          (*v252)(v65, v19);
LABEL_100:
          v150 += v151;
          if (!--v148)
          {

            v136 = v226;
            v137 = v231;
            goto LABEL_108;
          }
        }
      }

      v139 = 0;
LABEL_108:
      v138 = v229;
LABEL_92:
      ++v137;
      v261 = v244;
      v262 = v248;
      v263 = v139;
      v62 = v260;
      sub_2270ABCC4();

      sub_22766A8C0();
      result = swift_bridgeObjectRelease_n();
      if (v137 == v136)
      {
        goto LABEL_109;
      }
    }

LABEL_91:
    v139 = 0;
    goto LABEL_92;
  }

LABEL_109:

LABEL_110:
  v63 = v233;
LABEL_111:
  v163 = *(v62 + 48);
  if (!*(v163 + 16))
  {
    return result;
  }

  v164 = sub_226F3B058(v63);
  if ((v165 & 1) == 0)
  {
  }

  v166 = *(*(v163 + 56) + 8 * v164);

  v167 = *(v166 + 16);
  result = swift_beginAccess();
  v244 = v167;
  if (!v167)
  {
    v248 = MEMORY[0x277D84F90];
    v198 = v247;
    v200 = v245;
LABEL_149:

    v205 = *(v248 + 2);
    if (v205)
    {
      v206 = 0;
      v207 = (v246 + 48);
      v208 = (v246 + 32);
      result = v248;
      v209 = (v248 + 40);
      v259 = MEMORY[0x277D84F90];
      while (v206 < *(result + 16))
      {
        v210 = *(v209 - 1);
        v211 = *v209;

        sub_2270A8B30(v210, v211, v198);
        v198 = v247;

        if ((*v207)(v198, 1, v200) == 1)
        {
          sub_226E97D1C(v198, &qword_27D7BA488, &unk_227678CE0);
        }

        else
        {
          v212 = *v208;
          (*v208)(v242, v198, v200);
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v213 = v259;
          }

          else
          {
            v213 = sub_2273A6624(0, v259[2] + 1, 1, v259);
          }

          v215 = v213[2];
          v214 = v213[3];
          if (v215 >= v214 >> 1)
          {
            v213 = sub_2273A6624((v214 > 1), v215 + 1, 1, v213);
          }

          v213[2] = v215 + 1;
          v216 = (*(v246 + 80) + 32) & ~*(v246 + 80);
          v259 = v213;
          v217 = v213 + v216 + *(v246 + 72) * v215;
          v200 = v245;
          v212(v217, v242, v245);
          v198 = v247;
        }

        ++v206;
        v209 += 2;
        result = v248;
        if (v205 == v206)
        {
          goto LABEL_162;
        }
      }

      goto LABEL_170;
    }

    v259 = MEMORY[0x277D84F90];
LABEL_162:

    v218 = v259[2];
    if (v218)
    {
      v260 = *(v246 + 16);
      v219 = v259 + ((*(v246 + 80) + 32) & ~*(v246 + 80));
      v258 = *(v246 + 72);
      v257 = (v235 + 8);
      v246 += 16;
      v256 = (v246 - 8);
      v220 = v228;
      v221 = v227;
      v222 = v234;
      do
      {
        v223 = v260;
        (v260)(v222, v219, v200);
        v223(v221, v222, v200);
        sub_22766A230();
        v224 = v238;
        sub_22766A8C0();
        (*v257)(v220, v224);
        (*v256)(v222, v200);
        v219 += v258;
        --v218;
      }

      while (v218);
    }
  }

  v168 = 0;
  v169 = (v239 + 8);
  v248 = MEMORY[0x277D84F90];
  v170 = (v166 + 32);
  v241 = (v166 + 32);
  v237 = v166;
  while (1)
  {
    if (v168 >= *(v166 + 16))
    {
      goto LABEL_171;
    }

    v171 = v166;
    v172 = &v170[16 * v168];
    v174 = *v172;
    v173 = *(v172 + 1);

    sub_227669690();
    v175 = *(v62 + 40);
    v176 = *(v175 + 16);
    v252 = v174;
    if (!v176)
    {
      goto LABEL_129;
    }

    v177 = sub_226E92000(v174, v173);
    if ((v178 & 1) == 0)
    {

LABEL_129:
      v181 = 0;
      goto LABEL_130;
    }

    v243 = v168;
    v179 = *(*(v175 + 56) + 8 * v177);

    v180 = *(v179 + 2);
    if (v180)
    {
      break;
    }

    v181 = 0;
    v168 = v243;
LABEL_130:
    ++v168;
    v192 = *(v260 + 40);
    if (!*(v192 + 16))
    {
      goto LABEL_136;
    }

    v193 = sub_226E92000(v252, v173);
    if ((v194 & 1) == 0)
    {

LABEL_136:

      v62 = v260;
      v198 = v247;
      goto LABEL_137;
    }

    v195 = v168;
    v196 = *(*(v192 + 56) + 8 * v193);

    v197 = *(v196 + 16);

    if (v181 == v197)
    {
      v201 = v248;
      result = swift_isUniquelyReferenced_nonNull_native();
      v202 = v201;
      v264 = v201;
      if ((result & 1) == 0)
      {
        result = sub_226F1EF90();
        v202 = v264;
      }

      v198 = v247;
      v203 = *(v202 + 2);
      if (v203 >= *(v202 + 3) >> 1)
      {
        result = sub_226F1EF90();
        v198 = v247;
        v202 = v264;
      }

      *(v202 + 2) = v203 + 1;
      v248 = v202;
      v204 = &v202[16 * v203];
      *(v204 + 4) = v252;
      *(v204 + 5) = v173;
      v168 = v195;
      v199 = v195 == v244;
      v62 = v260;
      v170 = v241;
      goto LABEL_138;
    }

    v62 = v260;
    v198 = v247;
    v168 = v195;
    v170 = v241;
LABEL_137:
    v199 = v168 == v244;
LABEL_138:
    v166 = v171;
    v200 = v245;
    if (v199)
    {
      goto LABEL_149;
    }
  }

  v181 = 0;
  v182 = (*(v239 + 80) + 32) & ~*(v239 + 80);
  v240 = v179;
  v183 = &v179[v182];
  v184 = *(v239 + 72);
  while (1)
  {
    v185 = v253;
    (v257)(v253, v183, v19);
    v186 = *(v260 + 56);
    if (*(v186 + 16))
    {

      v187 = sub_226F3B058(v185);
      if (v188)
      {
        v249(v254, *(v186 + 56) + *(v251 + 72) * v187, v259);
        (*v169)(v185, v19);

        v189 = 0;
        v190 = 1;
        goto LABEL_125;
      }
    }

    (*v169)(v185, v19);
    v190 = 0;
    v189 = 1;
LABEL_125:
    v191 = v254;
    v255(v254, v189, 1, v259);
    result = sub_226E97D1C(v191, &qword_27D7B9648, &unk_227674880);
    v90 = __OFADD__(v181, v190);
    v181 += v190;
    if (v90)
    {
      break;
    }

    v183 += v184;
    if (!--v180)
    {

      v171 = v237;
      v168 = v243;
      v170 = v241;
      goto LABEL_130;
    }
  }

  __break(1u);
LABEL_168:
  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  __break(1u);
LABEL_173:
  __break(1u);
LABEL_174:
  __break(1u);
LABEL_175:
  __break(1u);
LABEL_176:
  __break(1u);
  return result;
}

uint64_t sub_2270AB990(uint64_t a1, uint64_t a2)
{
  v5 = sub_22766B390();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *v2;
  sub_22766A6C0();
  sub_22766B370();
  (*(v6 + 8))(v8, v5);
  v10 = sub_2270A86E8(a1);
  v13 = v9;
  v14 = a2;
  v15 = v10;
  sub_2276696A0();
}

void *sub_2270ABAF8(uint64_t a1)
{
  v3 = sub_22766B390();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *v1;
  sub_22766A6C0();
  sub_22766B370();
  (*(v4 + 8))(v6, v3);
  v10 = v7;
  v11 = a1;
  return sub_2276696A0();
}

unint64_t sub_2270ABCC4()
{
  result = qword_2813A0180;
  if (!qword_2813A0180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813A0180);
  }

  return result;
}

unint64_t sub_2270ABD18()
{
  result = qword_2813A5490;
  if (!qword_2813A5490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813A5490);
  }

  return result;
}

double sub_2270ABDA8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA4B8, &unk_227678D30) + 48);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA4A8, &qword_227678D20) + 48);
  v6 = *(a1 + v4);
  v7 = sub_2276624A0();
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  *(a2 + v5) = v6;

  return result;
}

double sub_2270ABE5C@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
  a2[3] = v4;

  return result;
}

double sub_2270ABEA4@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;

  return result;
}

uint64_t sub_2270ABEEC(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *, __n128), uint64_t a3, char a4, void *a5)
{
  v44 = a5;
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
  v36 = v6;
  while (v9)
  {
    v39 = a4;
    v12 = v11;
LABEL_14:
    v14 = __clz(__rbit64(v9)) | (v12 << 6);
    v15 = (*(a1 + 48) + 16 * v14);
    v16 = v15[1];
    v17 = *(*(a1 + 56) + 8 * v14);
    v43[0] = *v15;
    v43[1] = v16;
    v43[2] = v17;

    (a2)(&v40, v43);

    v18 = v40;
    v19 = v41;
    v20 = v42;
    v21 = *v44;
    v23 = sub_226E92000(v40, v41);
    v24 = v21[2];
    v25 = (v22 & 1) == 0;
    v26 = v24 + v25;
    if (__OFADD__(v24, v25))
    {
      goto LABEL_25;
    }

    v27 = v22;
    if (v21[3] >= v26)
    {
      if ((v39 & 1) == 0)
      {
        sub_226FF3604();
      }
    }

    else
    {
      sub_226FE8F60(v26, v39 & 1);
      v28 = sub_226E92000(v18, v19);
      if ((v27 & 1) != (v29 & 1))
      {
        goto LABEL_27;
      }

      v23 = v28;
    }

    v9 &= v9 - 1;
    v30 = *v44;
    if (v27)
    {

      *(v30[7] + 8 * v23) = v20;
    }

    else
    {
      v30[(v23 >> 6) + 8] |= 1 << v23;
      v31 = (v30[6] + 16 * v23);
      *v31 = v18;
      v31[1] = v19;
      *(v30[7] + 8 * v23) = v20;
      v32 = v30[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_26;
      }

      v30[2] = v34;
    }

    a4 = 1;
    v11 = v12;
    v6 = v36;
  }

  v13 = v11;
  while (1)
  {
    v12 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v12 >= v10)
    {
      sub_226EBB21C(a1);
    }

    v9 = *(v6 + 8 * v12);
    ++v13;
    if (v9)
    {
      v39 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_22766D220();
  __break(1u);
  return result;
}

uint64_t sub_2270AC194(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v50 = a5;
  v42 = sub_2276624A0();
  v9 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA4B0, &qword_227678D28);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v39 - v13;
  v15 = -1 << *(a1 + 32);
  v16 = ~v15;
  v17 = *(a1 + 64);
  v18 = -v15;
  v43 = a1;
  v44 = a1 + 64;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  else
  {
    v19 = -1;
  }

  v45 = v16;
  v46 = 0;
  v47 = v19 & v17;
  v48 = a2;
  v49 = a3;
  v20 = (v9 + 32);
  v40 = (v9 + 8);
  v41 = v9;

  v39 = a3;

  while (1)
  {
    sub_2274E86FC(v14);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA4A8, &qword_227678D20);
    if ((*(*(v21 - 8) + 48))(v14, 1, v21) == 1)
    {
      sub_226EBB21C(v43);
    }

    v22 = *(v21 + 48);
    v23 = *v20;
    (*v20)(v11, v14, v42);
    v24 = *&v14[v22];
    v25 = *v50;
    v27 = sub_226F3B058(v11);
    v28 = v25[2];
    v29 = (v26 & 1) == 0;
    v30 = v28 + v29;
    if (__OFADD__(v28, v29))
    {
      break;
    }

    v31 = v26;
    if (v25[3] >= v30)
    {
      if ((a4 & 1) == 0)
      {
        sub_226FF3618();
      }
    }

    else
    {
      sub_226FE8F74(v30, a4 & 1);
      v32 = sub_226F3B058(v11);
      if ((v31 & 1) != (v33 & 1))
      {
        goto LABEL_19;
      }

      v27 = v32;
    }

    v34 = *v50;
    if (v31)
    {
      (*v40)(v11, v42);
      *(v34[7] + 8 * v27) = v24;

      a4 = 1;
    }

    else
    {
      v34[(v27 >> 6) + 8] |= 1 << v27;
      v23((v34[6] + *(v41 + 72) * v27), v11, v42);
      *(v34[7] + 8 * v27) = v24;
      v35 = v34[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_18;
      }

      v34[2] = v37;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_22766D220();
  __break(1u);
  return result;
}

void sub_2270AC50C(void *a1)
{
  v3 = [a1 sessionIdentifier];
  if (!v3)
  {
    goto LABEL_6;
  }

  v4 = v3;
  sub_22766C000();

  v5 = [a1 workoutIdentifier];
  if (!v5)
  {

LABEL_6:
    v9 = sub_227664DD0();
    sub_226EB99C8(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v9 - 8) + 104))(v10, *MEMORY[0x277D51028], v9);
    swift_willThrow();
LABEL_7:

    return;
  }

  v6 = v5;
  sub_22766C000();

  v7 = [a1 scores];
  if (v7)
  {
    v8 = v7;
    sub_227662590();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA928, &qword_22767A150);
  sub_2271058F4();
  sub_2276683D0();
  if (!v1)
  {
    [a1 workoutDuration];
    [a1 activityType];
    sub_227664060();
    goto LABEL_7;
  }
}

void *static SessionScores.representativeSamples()()
{
  v52 = sub_2276640A0();
  v61 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v60 = &v48 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA4C0, &qword_227678D60);
  v71 = *(v1 - 8);
  v3 = v71;
  v2 = v71;
  MEMORY[0x28223BE20](v1);
  v5 = &v48 - v4;
  v70 = sub_227669140();
  v73 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v59 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v62 = &v48 - v8;
  MEMORY[0x28223BE20](v9);
  v58 = &v48 - v10;
  v51 = sub_22766C090();
  v50 = sub_22766C090();
  sub_226F05E24();
  v49 = sub_22766CFA0();
  v63 = v91;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA4C8, &qword_227678D68);
  v11 = *(v2 + 72);
  v12 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v68 = (2 * v11);
  *(swift_allocObject() + 16) = xmmword_2276728D0;
  v86 = 0;
  LODWORD(v76) = 0;
  sub_2270AD31C();
  sub_227669100();
  v86 = 60;
  LODWORD(v76) = 1120403456;
  sub_227669100();
  v86 = 1;
  v72 = sub_2270AD370();
  v13 = sub_2276638F0();

  v91[0] = v13;
  *(swift_allocObject() + 16) = xmmword_227675BD0;
  v56 = v12;
  v86 = 0;
  LODWORD(v76) = 0;
  sub_227669100();
  v86 = 20;
  LODWORD(v76) = 1128792064;
  v69 = v11;
  sub_227669100();
  v86 = 60;
  LODWORD(v76) = 1101004800;
  sub_227669100();
  v86 = 1;
  v14 = sub_2276638F0();

  v91[1] = v14;
  v86 = MEMORY[0x277D84F90];
  sub_226F1FFC8(0, 2, 0);
  v15 = 0;
  v16 = 0;
  v17 = v86;
  v72 = (v71 + 16);
  v68 = (v71 + 8);
  v67 = v73 + 32;
  v18 = (v73 + 8);
  v19 = v62;
  v57 = v1;
  v55 = v73 + 16;
  v54 = v5;
  v53 = (v73 + 8);
  do
  {
    v65 = v15;
    v20 = v63[v16];
    v21 = *(v20 + 16);
    v66 = v17;
    v64 = v20;
    if (v21)
    {
      v76 = MEMORY[0x277D84F90];

      sub_226F1FFE8(0, v21, 0);
      v22 = v76;
      v23 = v20 + v56;
      v24 = *v72;
      do
      {
        v24(v5, v23, v1);
        sub_227669110();
        sub_227669120();
        sub_227669130();
        (*v68)(v5, v1);
        v76 = v22;
        v26 = *(v22 + 16);
        v25 = *(v22 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_226F1FFE8((v25 > 1), v26 + 1, 1);
          v22 = v76;
        }

        *(v22 + 16) = v26 + 1;
        v27 = v22 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v26;
        v28 = v70;
        (*(v73 + 32))(v27, v19, v70);
        v23 += v69;
        --v21;
      }

      while (v21);
      v18 = v53;
    }

    else
    {

      v22 = MEMORY[0x277D84F90];
      v28 = v70;
    }

    v29 = *(v22 + 16);
    v30 = sub_226EB99C8(&qword_27D7BA4D8, MEMORY[0x277D53A28], MEMORY[0x277D53A30]);
    v76 = MEMORY[0x22AA98980](v29, v28, v30);
    v31 = *(v22 + 16);
    if (v31)
    {
      v32 = v22 + ((*(v73 + 80) + 32) & ~*(v73 + 80));
      v71 = *(v73 + 72);
      v33 = *(v73 + 16);
      v34 = v59;
      v35 = v58;
      do
      {
        v33(v35, v32, v28);
        sub_2270BA524(v34, v35);
        (*v18)(v34, v28);
        v32 += v71;
        --v31;
      }

      while (v31);

      v19 = v62;
      v1 = v57;
      v5 = v54;
    }

    else
    {
    }

    v36 = v76;
    v17 = v66;
    v86 = v66;
    v38 = *(v66 + 16);
    v37 = *(v66 + 24);
    if (v38 >= v37 >> 1)
    {
      sub_226F1FFC8((v37 > 1), v38 + 1, 1);
      v17 = v86;
    }

    *(v17 + 16) = v38 + 1;
    *(v17 + 8 * v38 + 32) = v36;
    v15 = 1;
    v16 = 1;
  }

  while ((v65 & 1) == 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA4E0, &qword_227678D70);
  swift_arrayDestroy();
  sub_226F5D220();
  v39 = sub_22766CFA0();
  v84 = v50;
  v85 = v51;
  v86 = &v85;
  v87 = &v84;
  v82 = v17;
  v83 = v49;
  v88 = &v83;
  v89 = &v82;
  v81 = v39;
  v90 = &v81;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v77 = v76;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B96F0, qword_227674920);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA4E8, &qword_227678D78);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CE8, &qword_227671E40);
  v75[0] = sub_226F5BF60(&qword_27D7B8500, &qword_27D7B84E0, &qword_22767C6B0);
  v75[1] = v75[0];
  v75[2] = sub_226F5BF60(&qword_27D7B8510, &qword_27D7B96F0, qword_227674920);
  v75[3] = sub_226F5BF60(&qword_27D7BA4F0, &qword_27D7BA4E8, &qword_227678D78);
  v75[4] = sub_226F5BF60(&qword_27D7B8D08, &qword_27D7B8CE8, &qword_227671E40);
  v40 = sub_2276638E0();

  v41 = *(v40 + 16);
  if (v41)
  {
    v74 = MEMORY[0x277D84F90];
    result = sub_226F1F7C8(0, v41, 0);
    v43 = 0;
    v44 = v74;
    v70 = v61 + 32;
    v45 = v40 + 80;
    v72 = v40;
    v71 = v41;
    while (v43 < *(v40 + 16))
    {
      v73 = v44;

      v44 = v73;
      sub_227664060();
      v74 = v44;
      v47 = *(v44 + 16);
      v46 = *(v44 + 24);
      if (v47 >= v46 >> 1)
      {
        sub_226F1F7C8((v46 > 1), v47 + 1, 1);
        v44 = v74;
      }

      ++v43;
      *(v44 + 16) = v47 + 1;
      result = (*(v61 + 32))(v44 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v47, v60, v52);
      v45 += 56;
      v40 = v72;
      if (v71 == v43)
      {

        return v44;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

unint64_t sub_2270AD31C()
{
  result = qword_27D7BA4D0;
  if (!qword_27D7BA4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BA4D0);
  }

  return result;
}

unint64_t sub_2270AD370()
{
  result = qword_281399190;
  if (!qword_281399190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281399190);
  }

  return result;
}

uint64_t sub_2270AD7F8(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6)
{
  v12 = *v6;
  sub_22766D370();
  sub_22766C100();
  v13 = sub_22766D3F0();
  v14 = -1 << *(v12 + 32);
  v15 = v13 & ~v14;
  if ((*(v12 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v16 = ~v14;
    while (1)
    {
      v17 = (*(v12 + 48) + 16 * v15);
      v18 = *v17 == a2 && v17[1] == a3;
      if (v18 || (sub_22766D190() & 1) != 0)
      {
        break;
      }

      v15 = (v15 + 1) & v16;
      if (((*(v12 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v21 = (*(v12 + 48) + 16 * v15);
    v22 = v21[1];
    *a1 = *v21;
    a1[1] = v22;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v6;

    sub_2270D9DCC(a2, a3, v15, isUniquelyReferenced_nonNull_native, a4, a5, a6);
    *v6 = v24;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_2270ADB0C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_2276694E0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_226EB99C8(&qword_2813A54D0, MEMORY[0x277D53DA0], MEMORY[0x277D53DA8]);
  v33 = a2;
  v11 = sub_22766BF50();
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
      sub_226EB99C8(&qword_2813A54C8, MEMORY[0x277D53DA0], MEMORY[0x277D53DB0]);
      v21 = sub_22766BFB0();
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
    sub_2270D9F68(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_2270ADDEC(uint64_t a1, uint64_t a2)
{
  v49 = a1;
  v61 = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for SyncZoneChangeWindow(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v47 = &v47 - v9;
  v48 = v2;
  v10 = *v2;
  sub_22766D370();
  v11 = sub_2276694E0();
  sub_226EB99C8(&qword_2813A54D0, MEMORY[0x277D53DA0], MEMORY[0x277D53DA8]);
  v57 = v11;
  sub_22766BF60();
  v53 = (a2 + *(v4 + 20));
  sub_2276625A0();
  v12 = sub_22766D3F0();
  v58 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v12 & ~v13;
  v56 = v10 + 56;
  if ((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v52 = 0;
    v54 = ~v13;
    v55 = *(v5 + 72);
    v50 = a2;
    v51 = v4;
    while (1)
    {
      v15 = v55 * v14;
      sub_226F48E08(*(v58 + 48) + v55 * v14, v7, type metadata accessor for SyncZoneChangeWindow);
      sub_226EB99C8(&qword_28139B260, MEMORY[0x277D53DA0], MEMORY[0x277D53DB8]);
      sub_22766C290();
      sub_22766C290();
      if (*&v60[0] == v59[0] && *(&v60[0] + 1) == v59[1])
      {
      }

      else
      {
        v17 = sub_22766D190();

        if ((v17 & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      v18 = &v7[*(v4 + 20)];
      v19 = *v18;
      v20 = v18[1];
      v21 = *v53;
      v22 = v53[1];
      v23 = v20 >> 62;
      v24 = v22 >> 62;
      if (v20 >> 62 == 3)
      {
        break;
      }

      if (v23 <= 1)
      {
        if (!v23)
        {
          v26 = BYTE6(v20);
          if (v24 <= 1)
          {
            goto LABEL_35;
          }

          goto LABEL_40;
        }

        LODWORD(v26) = HIDWORD(v19) - v19;
        if (__OFSUB__(HIDWORD(v19), v19))
        {
          goto LABEL_66;
        }

        v26 = v26;
        goto LABEL_34;
      }

      if (v23 == 2)
      {
        v29 = *(v19 + 16);
        v28 = *(v19 + 24);
        v30 = __OFSUB__(v28, v29);
        v26 = v28 - v29;
        if (v30)
        {
          goto LABEL_65;
        }

        goto LABEL_34;
      }

      v26 = 0;
      if (v24 <= 1)
      {
LABEL_35:
        if (v24)
        {
          LODWORD(v31) = HIDWORD(v21) - v21;
          if (__OFSUB__(HIDWORD(v21), v21))
          {
            __break(1u);
LABEL_64:
            __break(1u);
LABEL_65:
            __break(1u);
LABEL_66:
            __break(1u);
LABEL_67:
            __break(1u);
LABEL_68:
            __break(1u);
LABEL_69:
            __break(1u);
LABEL_70:
            __break(1u);
          }

          v31 = v31;
        }

        else
        {
          v31 = BYTE6(v22);
        }

        goto LABEL_42;
      }

LABEL_40:
      if (v24 != 2)
      {
        if (!v26)
        {
          goto LABEL_61;
        }

        goto LABEL_4;
      }

      v33 = *(v21 + 16);
      v32 = *(v21 + 24);
      v30 = __OFSUB__(v32, v33);
      v31 = v32 - v33;
      if (v30)
      {
        goto LABEL_64;
      }

LABEL_42:
      if (v26 != v31)
      {
        goto LABEL_4;
      }

      if (v26 < 1)
      {
        goto LABEL_61;
      }

      if (v23 > 1)
      {
        if (v23 == 2)
        {
          v35 = *(v19 + 16);
          v34 = *(v19 + 24);
          v36 = sub_227662060();
          if (v36)
          {
            v37 = sub_227662090();
            if (__OFSUB__(v35, v37))
            {
              goto LABEL_69;
            }

            v36 += v35 - v37;
          }

          if (__OFSUB__(v34, v35))
          {
            goto LABEL_68;
          }

          goto LABEL_57;
        }

        *(v60 + 6) = 0;
        *&v60[0] = 0;
      }

      else
      {
        if (v23)
        {
          v38 = v19;
          if (v19 >> 32 < v19)
          {
            goto LABEL_67;
          }

          v36 = sub_227662060();
          if (v36)
          {
            v39 = sub_227662090();
            if (__OFSUB__(v38, v39))
            {
              goto LABEL_70;
            }

            v36 += v38 - v39;
          }

LABEL_57:
          sub_227662080();
          v40 = v52;
          sub_2275BA344(v36, v21, v22, v60);
          v52 = v40;
          v41 = v60[0];
          a2 = v50;
          goto LABEL_60;
        }

        *&v60[0] = v19;
        WORD4(v60[0]) = v20;
        BYTE10(v60[0]) = BYTE2(v20);
        BYTE11(v60[0]) = BYTE3(v20);
        BYTE12(v60[0]) = BYTE4(v20);
        BYTE13(v60[0]) = BYTE5(v20);
      }

      v42 = v52;
      sub_2275BA344(v60, v21, v22, v59);
      v52 = v42;
      v41 = v59[0];
LABEL_60:
      v4 = v51;
      if (v41)
      {
        goto LABEL_61;
      }

LABEL_4:
      sub_226F48E70(v7, type metadata accessor for SyncZoneChangeWindow);
      v14 = (v14 + 1) & v54;
      if (((*(v56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_62;
      }
    }

    if (v19)
    {
      v25 = 0;
    }

    else
    {
      v25 = v20 == 0xC000000000000000;
    }

    v26 = 0;
    v27 = v25 && v22 >> 62 == 3;
    if (v27 && !v21 && v22 == 0xC000000000000000)
    {
LABEL_61:
      sub_226F48E70(v7, type metadata accessor for SyncZoneChangeWindow);
      sub_226F48E70(a2, type metadata accessor for SyncZoneChangeWindow);
      sub_226F48E08(*(v58 + 48) + v15, v49, type metadata accessor for SyncZoneChangeWindow);
      return 0;
    }

LABEL_34:
    if (v24 <= 1)
    {
      goto LABEL_35;
    }

    goto LABEL_40;
  }

LABEL_62:
  v44 = v48;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v46 = v47;
  sub_226F48E08(a2, v47, type metadata accessor for SyncZoneChangeWindow);
  *&v60[0] = *v44;
  sub_2270DA608(v46, v14, isUniquelyReferenced_nonNull_native);
  *v44 = *&v60[0];
  sub_2271059DC(a2, v49, type metadata accessor for SyncZoneChangeWindow);
  return 1;
}

uint64_t sub_2270AE4A0(uint64_t a1, uint64_t a2)
{
  v26 = a1;
  v4 = type metadata accessor for DirtySyncZone(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v24 = &v24 - v9;
  v25 = v2;
  v10 = *v2;
  sub_22766D370();
  sub_2276694E0();
  sub_226EB99C8(&qword_2813A54D0, MEMORY[0x277D53DA0], MEMORY[0x277D53DA8]);
  sub_22766BF60();
  v28 = v4;
  v11 = *(v4 + 20);
  sub_227662750();
  sub_226EB99C8(&qword_2813A5820, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  v27 = v11;
  sub_22766BF60();
  v12 = sub_22766D3F0();
  v29 = v10 + 56;
  v30 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v12 & ~v13;
  if ((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v16 = *(v5 + 72);
    do
    {
      sub_226F48E08(*(v30 + 48) + v16 * v14, v7, type metadata accessor for DirtySyncZone);
      sub_226EB99C8(&qword_28139B260, MEMORY[0x277D53DA0], MEMORY[0x277D53DB8]);
      sub_22766C290();
      sub_22766C290();
      if (v33 == v31 && v34 == v32)
      {
      }

      else
      {
        v18 = sub_22766D190();

        if ((v18 & 1) == 0)
        {
          sub_226F48E70(v7, type metadata accessor for DirtySyncZone);
          goto LABEL_4;
        }
      }

      v19 = sub_227662700();
      sub_226F48E70(v7, type metadata accessor for DirtySyncZone);
      if (v19)
      {
        sub_226F48E70(a2, type metadata accessor for DirtySyncZone);
        sub_226F48E08(*(v30 + 48) + v16 * v14, v26, type metadata accessor for DirtySyncZone);
        return 0;
      }

LABEL_4:
      v14 = (v14 + 1) & v15;
    }

    while (((*(v29 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  v21 = v25;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = v24;
  sub_226F48E08(a2, v24, type metadata accessor for DirtySyncZone);
  v33 = *v21;
  sub_2270DAE50(v23, v14, isUniquelyReferenced_nonNull_native);
  *v21 = v33;
  sub_2271059DC(a2, v26, type metadata accessor for DirtySyncZone);
  return 1;
}

uint64_t sub_2270AE890(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_22766D370();
  sub_22766C100();
  v8 = sub_22766D3F0();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_22766D190() & 1) != 0)
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

    sub_2270DB254(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_2270AEA04(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_227664140();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_226EB99C8(&unk_28139B9C0, MEMORY[0x277D506C0], MEMORY[0x277D506C8]);
  v33 = a2;
  v11 = sub_22766BF50();
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
      sub_226EB99C8(&qword_28139B9B8, MEMORY[0x277D506C0], MEMORY[0x277D506D0]);
      v21 = sub_22766BFB0();
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
    sub_2270DB3D4(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_2270AECE4(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_227668480();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_226EB99C8(&qword_27D7B84C8, MEMORY[0x277D534C8], MEMORY[0x277D534D0]);
  v33 = a2;
  v11 = sub_22766BF50();
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
      sub_226EB99C8(&qword_27D7BA730, MEMORY[0x277D534C8], MEMORY[0x277D534D8]);
      v21 = sub_22766BFB0();
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
    sub_2270DB69C(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_2270AEFC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  v8 = *v4;
  sub_22766D370();
  v26 = a3;
  sub_227668BD0();
  v9 = sub_22766D3F0();
  v10 = -1 << *(v8 + 32);
  v11 = v9 & ~v10;
  if ((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = *(v8 + 48) + 24 * v11;
      v14 = *v13;
      v15 = *(v13 + 8);
      v16 = *(v13 + 16);
      sub_226EE2880(*v13, v15, *(v13 + 16));
      v17 = MEMORY[0x22AA94EE0](v14, v15, v16, a2, v26, v5);
      sub_226EE2898(v14, v15, v16);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_226EE2898(a2, v26, v5);
    v20 = *(v8 + 48) + 24 * v11;
    v21 = *v20;
    v22 = *(v20 + 8);
    *a1 = *v20;
    *(a1 + 8) = v22;
    v23 = *(v20 + 16);
    *(a1 + 16) = v23;
    sub_226EE2880(v21, v22, v23);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v24;
    sub_226EE2880(a2, v26, v5);
    sub_2270DB964(a2, v26, v5, v11, isUniquelyReferenced_nonNull_native);
    *v24 = v27;
    *a1 = a2;
    *(a1 + 8) = v26;
    *(a1 + 16) = v5;
    return 1;
  }
}

uint64_t sub_2270AF194(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_2276653A0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_226EB99C8(&qword_27D7B88B8, MEMORY[0x277D51610], MEMORY[0x277D51618]);
  v33 = a2;
  v11 = sub_22766BF50();
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
      sub_226EB99C8(&qword_27D7BA940, MEMORY[0x277D51610], MEMORY[0x277D51620]);
      v21 = sub_22766BFB0();
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
    sub_2270DBBA4(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_2270AF474(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = *v4;
  v18 = a4 & 1;
  sub_22766D370();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B88E8, &qword_2276715D0);
  sub_226F488B4();
  sub_227663B10();
  v8 = sub_22766D3F0();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    sub_226F517D0();
    sub_226F51824();
    while ((sub_227663B20() & 1) == 0)
    {
      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_226EB2DFC(a2, a3, a4 & 1);
    v14 = *(v7 + 48) + 24 * v10;
    v15 = *v14;
    v16 = *(v14 + 8);
    v17 = *(v14 + 16);
    *a1 = *v14;
    *(a1 + 8) = v16;
    *(a1 + 16) = v17;
    sub_226EB396C(v15, v16, v17);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v19;
    sub_226EB396C(a2, a3, v18);
    sub_2270DBE6C(a2, a3, v18, v10, isUniquelyReferenced_nonNull_native);
    *v19 = v22;
    *a1 = a2;
    *(a1 + 8) = a3;
    *(a1 + 16) = v18;
    return 1;
  }
}

uint64_t sub_2270AF674(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_227663A30();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_226EB99C8(&qword_28139BC90, MEMORY[0x277D50278], MEMORY[0x277D50280]);
  v33 = a2;
  v11 = sub_22766BF50();
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
      sub_226EB99C8(&qword_28139BC88, MEMORY[0x277D50278], MEMORY[0x277D50288]);
      v21 = sub_22766BFB0();
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
    sub_2270DC0A4(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_2270AF954(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = *v4;
  v18 = a4 & 1;
  sub_22766D370();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BEF50, &qword_227671540);
  sub_226F4364C();
  sub_227663B10();
  v8 = sub_22766D3F0();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    sub_226F50DC8();
    sub_226F50E1C();
    while ((sub_227663B20() & 1) == 0)
    {
      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_226EB2DFC(a2, a3, a4 & 1);
    v14 = *(v7 + 48) + 24 * v10;
    v15 = *v14;
    v16 = *(v14 + 8);
    v17 = *(v14 + 16);
    *a1 = *v14;
    *(a1 + 8) = v16;
    *(a1 + 16) = v17;
    sub_226EB396C(v15, v16, v17);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v19;
    sub_226EB396C(a2, a3, v18);
    sub_2270DC36C(a2, a3, v18, v10, isUniquelyReferenced_nonNull_native);
    *v19 = v22;
    *a1 = a2;
    *(a1 + 8) = a3;
    *(a1 + 16) = v18;
    return 1;
  }
}

uint64_t sub_2270AFB54(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_227666BF0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_226EB99C8(&qword_2813A5660, MEMORY[0x277D528B8], MEMORY[0x277D528C0]);
  v33 = a2;
  v11 = sub_22766BF50();
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
      sub_226EB99C8(&qword_27D7B8AF8, MEMORY[0x277D528B8], MEMORY[0x277D528C8]);
      v21 = sub_22766BFB0();
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
    sub_2270DC5A4(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_2270AFE34(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_227663AB0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_226EB99C8(&qword_27D7B89F0, MEMORY[0x277D502D0], MEMORY[0x277D502D8]);
  v33 = a2;
  v11 = sub_22766BF50();
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
      sub_226EB99C8(&qword_27D7BAB20, MEMORY[0x277D502D0], MEMORY[0x277D502E0]);
      v21 = sub_22766BFB0();
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
    sub_2270DC86C(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_2270B0114(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_227663E50();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_226EB99C8(&qword_27D7B8688, MEMORY[0x277D50520], MEMORY[0x277D50528]);
  v33 = a2;
  v11 = sub_22766BF50();
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
      sub_226EB99C8(&qword_27D7B8BC8, MEMORY[0x277D50520], MEMORY[0x277D50530]);
      v21 = sub_22766BFB0();
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
    sub_2270DCB34(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_2270B03F4(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_2276655A0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_226EB99C8(&qword_27D7B8690, MEMORY[0x277D51730], MEMORY[0x277D51738]);
  v33 = a2;
  v11 = sub_22766BF50();
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
      sub_226EB99C8(&qword_27D7B8B98, MEMORY[0x277D51730], MEMORY[0x277D51740]);
      v21 = sub_22766BFB0();
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
    sub_2270DCDFC(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_2270B06D4(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_227664650();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_226EB99C8(&qword_27D7B8698, MEMORY[0x277D50A68], MEMORY[0x277D50A70]);
  v33 = a2;
  v11 = sub_22766BF50();
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
      sub_226EB99C8(&qword_27D7B8BB8, MEMORY[0x277D50A68], MEMORY[0x277D50A78]);
      v21 = sub_22766BFB0();
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
    sub_2270DD0C4(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_2270B09B4(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_227663610();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_226EB99C8(&qword_27D7B86A0, MEMORY[0x277D4FFF0], MEMORY[0x277D4FFF8]);
  v33 = a2;
  v11 = sub_22766BF50();
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
      sub_226EB99C8(&qword_27D7B8BA8, MEMORY[0x277D4FFF0], MEMORY[0x277D50000]);
      v21 = sub_22766BFB0();
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
    sub_2270DD38C(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_2270B0C94(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_227663680();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_226EB99C8(&qword_27D7B86A8, MEMORY[0x277D50018], MEMORY[0x277D50020]);
  v33 = a2;
  v11 = sub_22766BF50();
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
      sub_226EB99C8(&qword_27D7B8B88, MEMORY[0x277D50018], MEMORY[0x277D50028]);
      v21 = sub_22766BFB0();
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
    sub_2270DD654(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_2270B0F74(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_227663350();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_226EB99C8(&qword_27D7B86B0, MEMORY[0x277D4FEC8], MEMORY[0x277D4FED0]);
  v33 = a2;
  v11 = sub_22766BF50();
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
      sub_226EB99C8(&qword_27D7B8B78, MEMORY[0x277D4FEC8], MEMORY[0x277D4FED8]);
      v21 = sub_22766BFB0();
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
    sub_2270DD91C(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_2270B1254(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_227663C90();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_226EB99C8(&qword_27D7B86B8, MEMORY[0x277D503E8], MEMORY[0x277D503F0]);
  v33 = a2;
  v11 = sub_22766BF50();
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
      sub_226EB99C8(&qword_27D7B8B68, MEMORY[0x277D503E8], MEMORY[0x277D503F8]);
      v21 = sub_22766BFB0();
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
    sub_2270DDBE4(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_2270B1534(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_227664E20();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_226EB99C8(&unk_2813A5750, MEMORY[0x277D51068], MEMORY[0x277D51070]);
  v33 = a2;
  v11 = sub_22766BF50();
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
      sub_226EB99C8(&qword_27D7B8AE0, MEMORY[0x277D51068], MEMORY[0x277D51078]);
      v21 = sub_22766BFB0();
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
    sub_2270DDEAC(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_2270B1814(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_2276639B0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_226EB99C8(&qword_28139BCA8, MEMORY[0x277D501C8], MEMORY[0x277D501D0]);
  v33 = a2;
  v11 = sub_22766BF50();
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
      sub_226EB99C8(&qword_27D7B8678, MEMORY[0x277D501C8], MEMORY[0x277D501D8]);
      v21 = sub_22766BFB0();
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
    sub_2270DE174(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_2270B1AF4(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_2276687D0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_226EB99C8(&unk_28139B498, MEMORY[0x277D535A0], MEMORY[0x277D535A8]);
  v33 = a2;
  v11 = sub_22766BF50();
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
      sub_226EB99C8(&qword_27D7BA518, MEMORY[0x277D535A0], MEMORY[0x277D535B0]);
      v21 = sub_22766BFB0();
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
    sub_2270DE43C(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_2270B1DD4(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_2276668A0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_226EB99C8(&unk_28139B620, MEMORY[0x277D526D0], MEMORY[0x277D526D8]);
  v33 = a2;
  v11 = sub_22766BF50();
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
      sub_226EB99C8(&qword_27D7BA528, MEMORY[0x277D526D0], MEMORY[0x277D526E0]);
      v21 = sub_22766BFB0();
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
    sub_2270DE704(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_2270B20B4(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_227666070();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_226EB99C8(&qword_28139B6D0, MEMORY[0x277D52038], MEMORY[0x277D52040]);
  v33 = a2;
  v11 = sub_22766BF50();
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
      sub_226EB99C8(&qword_27D7BA538, MEMORY[0x277D52038], MEMORY[0x277D52048]);
      v21 = sub_22766BFB0();
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
    sub_2270DE9CC(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_2270B2394(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_227663180();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_226EB99C8(&qword_28139BD58, MEMORY[0x277D4FCA8], MEMORY[0x277D4FCB0]);
  v33 = a2;
  v11 = sub_22766BF50();
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
      sub_226EB99C8(&qword_28139BD50, MEMORY[0x277D4FCA8], MEMORY[0x277D4FCB8]);
      v21 = sub_22766BFB0();
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
    sub_2270DEC94(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_2270B2674(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_2276624A0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_226EB99C8(&qword_28139BDE0, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  v33 = a2;
  v11 = sub_22766BF50();
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
      sub_226EB99C8(&qword_28139BDD8, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
      v21 = sub_22766BFB0();
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
    sub_2270DEF5C(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_2270B2954(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_227663480();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_226EB99C8(&unk_2813A5800, MEMORY[0x277D4FF88], MEMORY[0x277D4FF90]);
  v33 = a2;
  v11 = sub_22766BF50();
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
      sub_226EB99C8(&qword_27D7B89E0, MEMORY[0x277D4FF88], MEMORY[0x277D4FF98]);
      v21 = sub_22766BFB0();
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
    sub_2270DF224(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_2270B2C34(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_227665490();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_226EB99C8(&qword_27D7B8628, MEMORY[0x277D51680], MEMORY[0x277D51688]);
  v33 = a2;
  v11 = sub_22766BF50();
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
      sub_226EB99C8(&qword_27D7BAAD0, MEMORY[0x277D51680], MEMORY[0x277D51690]);
      v21 = sub_22766BFB0();
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
    sub_2270DF4EC(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_2270B2F14(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_227665680();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_226EB99C8(&unk_28139B7E8, MEMORY[0x277D51898], MEMORY[0x277D518A0]);
  v33 = a2;
  v11 = sub_22766BF50();
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
      sub_226EB99C8(&qword_27D7B8900, MEMORY[0x277D51898], MEMORY[0x277D518A8]);
      v21 = sub_22766BFB0();
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
    sub_2270DF7B4(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_2270B31F4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = a4;
  v9 = *v4;
  sub_22766D370();
  v32 = v4;
  if (v5)
  {
    if (v5 != 1)
    {
      MEMORY[0x22AA996B0](2);
      sub_22766C100();
      goto LABEL_7;
    }

    MEMORY[0x22AA996B0](1);
    sub_227664C10();
  }

  else
  {
    MEMORY[0x22AA996B0](0);
    sub_227663FB0();
  }

  sub_22766C100();

LABEL_7:
  v33 = a3;
  v10 = sub_22766D3F0();
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_29:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = *v32;
    sub_226F04958(a2, v33, v5);
    sub_2270E5920(a2, v33, v5, v12, isUniquelyReferenced_nonNull_native, &qword_27D7BAA90, &qword_227679170, &type metadata for BookmarkCatalogFilterProperty, sub_226F04958);
    *v32 = v34;
    *a1 = a2;
    *(a1 + 8) = v33;
    *(a1 + 16) = v5;
    return 1;
  }

  v13 = ~v11;
  while (1)
  {
    v14 = *(v9 + 48) + 24 * v12;
    if (!*(v14 + 16))
    {
      if (v5)
      {
        goto LABEL_10;
      }

      v15 = sub_227663FB0();
      v17 = v21;
      v18 = sub_227663FB0();
      goto LABEL_23;
    }

    if (*(v14 + 16) == 1)
    {
      if (v5 != 1)
      {
        goto LABEL_10;
      }

      v15 = sub_227664C10();
      v17 = v16;
      v18 = sub_227664C10();
LABEL_23:
      if (v15 == v18 && v17 == v19)
      {

        goto LABEL_33;
      }

      v23 = sub_22766D190();

      if (v23)
      {
        goto LABEL_33;
      }

      goto LABEL_10;
    }

    if (v5 != 2)
    {
      goto LABEL_10;
    }

    if (*v14 == a2 && *(v14 + 8) == v33)
    {
      break;
    }

    if (sub_22766D190())
    {
      v26 = a2;
      v27 = v33;
      goto LABEL_32;
    }

LABEL_10:
    v12 = (v12 + 1) & v13;
    if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  v26 = a2;
  v27 = v33;
LABEL_32:
  sub_226EE28B0(v26, v27, 2);
LABEL_33:
  v28 = *(v9 + 48) + 24 * v12;
  v29 = *v28;
  v30 = *(v28 + 8);
  *a1 = *v28;
  *(a1 + 8) = v30;
  v31 = *(v28 + 16);
  *(a1 + 16) = v31;
  sub_226F04958(v29, v30, v31);
  return 0;
}

uint64_t sub_2270B34E8(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_2276638D0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_226EB99C8(&qword_2813A57E8, MEMORY[0x277D50180], MEMORY[0x277D50188]);
  v33 = a2;
  v11 = sub_22766BF50();
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
      sub_226EB99C8(&qword_27D7B8920, MEMORY[0x277D50180], MEMORY[0x277D50190]);
      v21 = sub_22766BFB0();
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
    sub_2270DFA7C(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_2270B37C8(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_227667780();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_226EB99C8(&unk_2813A55D0, MEMORY[0x277D52F78], MEMORY[0x277D52F80]);
  v33 = a2;
  v11 = sub_22766BF50();
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
      sub_226EB99C8(&qword_27D7BA630, MEMORY[0x277D52F78], MEMORY[0x277D52F88]);
      v21 = sub_22766BFB0();
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
    sub_2270DFD44(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_2270B3AA8(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_227664530();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_226EB99C8(&qword_2813A57C0, MEMORY[0x277D50978], MEMORY[0x277D50980]);
  v33 = a2;
  v11 = sub_22766BF50();
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
      sub_226EB99C8(&qword_27D7B8AC8, MEMORY[0x277D50978], MEMORY[0x277D50988]);
      v21 = sub_22766BFB0();
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
    sub_2270E000C(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_2270B3D88(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_227665F20();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_226EB99C8(&unk_27D7BBD10, MEMORY[0x277D51FE0], MEMORY[0x277D51FE8]);
  v33 = a2;
  v11 = sub_22766BF50();
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
      sub_226EB99C8(&qword_27D7B8700, MEMORY[0x277D51FE0], MEMORY[0x277D51FF8]);
      v21 = sub_22766BFB0();
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
    sub_2270E02D4(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_2270B4068(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_227667C20();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_226EB99C8(&qword_28139B4E0, MEMORY[0x277D531E0], MEMORY[0x277D531E8]);
  v33 = a2;
  v11 = sub_22766BF50();
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
      sub_226EB99C8(&qword_28139B4D8, MEMORY[0x277D531E0], MEMORY[0x277D531F0]);
      v21 = sub_22766BFB0();
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
    sub_2270E059C(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_2270B4348(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_227666170();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_226EB99C8(&qword_2813A56C0, MEMORY[0x277D520D0], MEMORY[0x277D520D8]);
  v33 = a2;
  v11 = sub_22766BF50();
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
      sub_226EB99C8(&qword_27D7BAA10, MEMORY[0x277D520D0], MEMORY[0x277D520E0]);
      v21 = sub_22766BFB0();
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
    sub_2270E0864(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_2270B4628(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_227669040();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_226EB99C8(&qword_2813A5518, MEMORY[0x277D539C0], MEMORY[0x277D539C8]);
  v33 = a2;
  v11 = sub_22766BF50();
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
      sub_226EB99C8(&qword_27D7BA620, MEMORY[0x277D539C0], MEMORY[0x277D539D0]);
      v21 = sub_22766BFB0();
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
    sub_2270E0B2C(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_2270B4908(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_2276646D0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_226EB99C8(&qword_27D7B8980, MEMORY[0x277D50B18], MEMORY[0x277D50B20]);
  v33 = a2;
  v11 = sub_22766BF50();
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
      sub_226EB99C8(&qword_27D7BAA20, MEMORY[0x277D50B18], MEMORY[0x277D50B28]);
      v21 = sub_22766BFB0();
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
    sub_2270E0DF4(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_2270B4BE8(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_2276632A0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_226EB99C8(&qword_28139BD28, MEMORY[0x277D4FE80], MEMORY[0x277D4FE88]);
  v33 = a2;
  v11 = sub_22766BF50();
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
      sub_226EB99C8(&qword_28139BD20, MEMORY[0x277D4FE80], MEMORY[0x277D4FE90]);
      v21 = sub_22766BFB0();
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
    sub_2270E10BC(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_2270B4EC8(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_227664EB0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_226EB99C8(&qword_28139B8B8, MEMORY[0x277D51130], MEMORY[0x277D51138]);
  v33 = a2;
  v11 = sub_22766BF50();
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
      sub_226EB99C8(&qword_28139B8B0, MEMORY[0x277D51130], MEMORY[0x277D51140]);
      v21 = sub_22766BFB0();
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
    sub_2270E1384(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_2270B51F8(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_2276640A0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_226EB99C8(&unk_28139B9E0, MEMORY[0x277D50678], MEMORY[0x277D50680]);
  v33 = a2;
  v11 = sub_22766BF50();
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
      sub_226EB99C8(&qword_27D7BA990, MEMORY[0x277D50678], MEMORY[0x277D50688]);
      v21 = sub_22766BFB0();
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
    sub_2270E187C(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_2270B54D8(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_227664AA0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_226EB99C8(&qword_2813A5788, MEMORY[0x277D50CD0], MEMORY[0x277D50CD8]);
  v33 = a2;
  v11 = sub_22766BF50();
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
      sub_226EB99C8(&qword_27D7BA670, MEMORY[0x277D50CD0], MEMORY[0x277D50CE0]);
      v21 = sub_22766BFB0();
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
    sub_2270E1B44(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_2270B57B8(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_2276650A0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_226EB99C8(&qword_2813A5738, MEMORY[0x277D51330], MEMORY[0x277D51338]);
  v33 = a2;
  v11 = sub_22766BF50();
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
      sub_226EB99C8(&qword_27D7B8B10, MEMORY[0x277D51330], MEMORY[0x277D51340]);
      v21 = sub_22766BFB0();
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
    sub_2270E1E0C(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_2270B5A98(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_227669580();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_226EB99C8(&unk_28139B208, MEMORY[0x277D53E88], MEMORY[0x277D53E90]);
  v33 = a2;
  v11 = sub_22766BF50();
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
      sub_226EB99C8(&qword_28139B200, MEMORY[0x277D53E88], MEMORY[0x277D53E98]);
      v21 = sub_22766BFB0();
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
    sub_2270E20D4(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_2270B5D78(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_227666330();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_226EB99C8(&qword_28139B698, MEMORY[0x277D522A0], MEMORY[0x277D522A8]);
  v33 = a2;
  v11 = sub_22766BF50();
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
      sub_226EB99C8(&qword_27D7BA5D8, MEMORY[0x277D522A0], MEMORY[0x277D522B0]);
      v21 = sub_22766BFB0();
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
    sub_2270E239C(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_2270B6058(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_227666980();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_226EB99C8(&qword_27D7B86C8, MEMORY[0x277D52758], MEMORY[0x277D52760]);
  v33 = a2;
  v11 = sub_22766BF50();
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
      sub_226EB99C8(&qword_27D7BA590, MEMORY[0x277D52758], MEMORY[0x277D52768]);
      v21 = sub_22766BFB0();
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
    sub_2270E2664(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_2270B6338(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_227664A10();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_226EB99C8(&qword_27D7B86C0, MEMORY[0x277D50C78], MEMORY[0x277D50C80]);
  v33 = a2;
  v11 = sub_22766BF50();
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
      sub_226EB99C8(&qword_27D7BA568, MEMORY[0x277D50C78], MEMORY[0x277D50C88]);
      v21 = sub_22766BFB0();
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
    sub_2270E292C(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_2270B6618(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_2276633A0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_226EB99C8(&unk_28139BCF8, MEMORY[0x277D4FF18], MEMORY[0x277D4FF20]);
  v33 = a2;
  v11 = sub_22766BF50();
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
      sub_226EB99C8(&qword_28139BCF0, MEMORY[0x277D4FF18], MEMORY[0x277D4FF28]);
      v21 = sub_22766BFB0();
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
    sub_2270E2BF4(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_2270B68F8(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_2276664D0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_226EB99C8(&qword_27D7B8680, MEMORY[0x277D52300], MEMORY[0x277D52308]);
  v33 = a2;
  v11 = sub_22766BF50();
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
      sub_226EB99C8(&qword_27D7BA548, MEMORY[0x277D52300], MEMORY[0x277D52310]);
      v21 = sub_22766BFB0();
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
    sub_2270E2EBC(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_2270B6BD8(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_227665D70();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_226EB99C8(&qword_28139B708, MEMORY[0x277D51E30], MEMORY[0x277D51E38]);
  v33 = a2;
  v11 = sub_22766BF50();
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
      sub_226EB99C8(&qword_27D7BAA30, MEMORY[0x277D51E30], MEMORY[0x277D51E40]);
      v21 = sub_22766BFB0();
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
    sub_2270E3184(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_2270B6EB8(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_227667B30();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_226EB99C8(&unk_28139B4F8, MEMORY[0x277D53128], MEMORY[0x277D53130]);
  v33 = a2;
  v11 = sub_22766BF50();
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
      sub_226EB99C8(&qword_27D7BAA40, MEMORY[0x277D53128], MEMORY[0x277D53138]);
      v21 = sub_22766BFB0();
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
    sub_2270E344C(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_2270B7198(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_2276645D0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_226EB99C8(&qword_27D7B8990, MEMORY[0x277D50A30], MEMORY[0x277D50A38]);
  v33 = a2;
  v11 = sub_22766BF50();
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
      sub_226EB99C8(&qword_27D7BAA70, MEMORY[0x277D50A30], MEMORY[0x277D50A40]);
      v21 = sub_22766BFB0();
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
    sub_2270E3714(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_2270B7478(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_2276692D0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_226EB99C8(&qword_27D7B8998, MEMORY[0x277D53B20], MEMORY[0x277D53B28]);
  v33 = a2;
  v11 = sub_22766BF50();
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
      sub_226EB99C8(&qword_27D7BAA80, MEMORY[0x277D53B20], MEMORY[0x277D53B30]);
      v21 = sub_22766BFB0();
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
    sub_2270E39DC(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_2270B7758(_BYTE *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  sub_22766D370();
  sub_2276637A0();
  sub_22766C100();

  v7 = sub_22766D3F0();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = sub_2276637A0();
      v13 = v12;
      if (v11 == sub_2276637A0() && v13 == v14)
      {
        break;
      }

      v16 = sub_22766D190();

      if (v16)
      {
        goto LABEL_11;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_11:
    result = 0;
    LOBYTE(a2) = *(*(v6 + 48) + v9);
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_2270E3CA4(a2, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v19;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_2270B78E0(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_227664E40();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_226EB99C8(&qword_27D7B8710, MEMORY[0x277D51098], MEMORY[0x277D510A0]);
  v33 = a2;
  v11 = sub_22766BF50();
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
      sub_226EB99C8(&qword_27D7BA6B0, MEMORY[0x277D51098], MEMORY[0x277D510A8]);
      v21 = sub_22766BFB0();
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
    sub_2270E3E7C(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_2270B7BC0(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_227666F60();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_226EB99C8(&qword_28139B5A0, MEMORY[0x277D52AB0], MEMORY[0x277D52AB8]);
  v33 = a2;
  v11 = sub_22766BF50();
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
      sub_226EB99C8(&qword_28139B598, MEMORY[0x277D52AB0], MEMORY[0x277D52AC0]);
      v21 = sub_22766BFB0();
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
    sub_2270E4144(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_2270B7EA0(uint64_t a1, uint64_t a2)
{
  v24 = a1;
  v4 = sub_2276682D0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v2;
  v8 = *v2;
  sub_22766D370();
  sub_2276682C0();
  v9 = sub_22766D3F0();
  v10 = -1 << *(v8 + 32);
  v11 = v9 & ~v10;
  if ((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = *(v5 + 72);
    while (1)
    {
      v14 = MEMORY[0x277D53468];
      sub_226F48E08(*(v8 + 48) + v13 * v11, v7, MEMORY[0x277D53468]);
      v15 = MEMORY[0x22AA945D0](v7, a2);
      sub_226F48E70(v7, v14);
      if (v15)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v21 = MEMORY[0x277D53468];
    sub_226F48E70(a2, MEMORY[0x277D53468]);
    sub_226F48E08(*(v8 + 48) + v13 * v11, v24, v21);
    return 0;
  }

  else
  {
LABEL_5:
    v16 = v23;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = MEMORY[0x277D53468];
    sub_226F48E08(a2, v7, MEMORY[0x277D53468]);
    v25 = *v16;
    sub_2270E440C(v7, v11, isUniquelyReferenced_nonNull_native);
    v19 = v24;
    *v16 = v25;
    sub_2271059DC(a2, v19, v18);
    return 1;
  }
}

uint64_t sub_2270B80EC(_BYTE *a1, uint64_t a2, uint64_t (*a3)(uint64_t), void (*a4)(uint64_t, unint64_t, uint64_t))
{
  v7 = v4;
  v10 = *v4;
  sub_22766D370();
  v11 = a3(a2);
  MEMORY[0x22AA996B0](v11);
  v12 = sub_22766D3F0();
  v13 = -1 << *(v10 + 32);
  v14 = v12 & ~v13;
  if ((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    while (1)
    {
      v16 = a3(*(*(v10 + 48) + v14));
      if (v16 == a3(a2))
      {
        break;
      }

      v14 = (v14 + 1) & v15;
      if (((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    LOBYTE(a2) = *(*(v10 + 48) + v14);
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v7;
    a4(a2, v14, isUniquelyReferenced_nonNull_native);
    *v7 = v19;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_2270B8228(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_227668A00();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_226EB99C8(&qword_2813A5558, MEMORY[0x277D53708], MEMORY[0x277D53710]);
  v33 = a2;
  v11 = sub_22766BF50();
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
      sub_226EB99C8(&qword_27D7BAAF0, MEMORY[0x277D53708], MEMORY[0x277D53718]);
      v21 = sub_22766BFB0();
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
    sub_2270E4848(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_2270B8508(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_2276668F0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_226EB99C8(&qword_2813A5678, MEMORY[0x277D52700], MEMORY[0x277D52708]);
  v33 = a2;
  v11 = sub_22766BF50();
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
      sub_226EB99C8(&qword_27D7BA508, MEMORY[0x277D52700], MEMORY[0x277D52710]);
      v21 = sub_22766BFB0();
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
    sub_2270E4B10(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_2270B87E8(uint64_t a1, uint64_t a2, char a3)
{
  v7 = *v3;
  sub_22766D370();
  sub_227664970();
  v8 = sub_22766D3F0();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while ((sub_227664960() & 1) == 0)
    {
      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    v14 = *(v7 + 48) + 16 * v10;
    a2 = *v14;
    a3 = *(v14 + 8);
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_2270E4DD8(a2, a3 & 1, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v15;
    result = 1;
  }

  *a1 = a2;
  *(a1 + 8) = a3 & 1;
  return result;
}

uint64_t sub_2270B8954(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_227662750();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_226EB99C8(&qword_2813A5820, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  v33 = a2;
  v11 = sub_22766BF50();
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
      sub_226EB99C8(&qword_28139BDB8, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
      v21 = sub_22766BFB0();
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
    sub_2270E5118(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_2270B8C34(uint64_t a1, uint64_t a2)
{
  v24 = a1;
  v4 = sub_2276660A0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v2;
  v8 = *v2;
  sub_22766D370();
  sub_227666090();
  v9 = sub_22766D3F0();
  v10 = -1 << *(v8 + 32);
  v11 = v9 & ~v10;
  if ((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = *(v5 + 72);
    while (1)
    {
      v14 = MEMORY[0x277D52060];
      sub_226F48E08(*(v8 + 48) + v13 * v11, v7, MEMORY[0x277D52060]);
      v15 = MEMORY[0x22AA923A0](v7, a2);
      sub_226F48E70(v7, v14);
      if (v15)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v21 = MEMORY[0x277D52060];
    sub_226F48E70(a2, MEMORY[0x277D52060]);
    sub_226F48E08(*(v8 + 48) + v13 * v11, v24, v21);
    return 0;
  }

  else
  {
LABEL_5:
    v16 = v23;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = MEMORY[0x277D52060];
    sub_226F48E08(a2, v7, MEMORY[0x277D52060]);
    v25 = *v16;
    sub_2270E53E0(v7, v11, isUniquelyReferenced_nonNull_native);
    v19 = v24;
    *v16 = v25;
    sub_2271059DC(a2, v19, v18);
    return 1;
  }
}

uint64_t sub_2270B8E54(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_227667E50();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_226EB99C8(&qword_2813A55A8, MEMORY[0x277D533B8], MEMORY[0x277D533C0]);
  v33 = a2;
  v11 = sub_22766BF50();
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
      sub_226EB99C8(&qword_27D7B8B50, MEMORY[0x277D533B8], MEMORY[0x277D533C8]);
      v21 = sub_22766BFB0();
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
    sub_2270E5658(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_2270B9134(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = a4;
  v9 = *v4;
  sub_22766D370();
  v32 = v4;
  if (v5)
  {
    if (v5 != 1)
    {
      MEMORY[0x22AA996B0](2);
      sub_22766C100();
      goto LABEL_7;
    }

    MEMORY[0x22AA996B0](1);
    sub_227664C10();
  }

  else
  {
    MEMORY[0x22AA996B0](0);
    sub_227663FB0();
  }

  sub_22766C100();

LABEL_7:
  v33 = a3;
  v10 = sub_22766D3F0();
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_29:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = *v32;
    sub_226F04958(a2, v33, v5);
    sub_2270E5920(a2, v33, v5, v12, isUniquelyReferenced_nonNull_native, &qword_27D7BAAC0, &qword_227679198, &type metadata for AssetCatalogFilterProperty, sub_226F491F4);
    *v32 = v34;
    *a1 = a2;
    *(a1 + 8) = v33;
    *(a1 + 16) = v5;
    return 1;
  }

  v13 = ~v11;
  while (1)
  {
    v14 = *(v9 + 48) + 24 * v12;
    if (!*(v14 + 16))
    {
      if (v5)
      {
        goto LABEL_10;
      }

      v15 = sub_227663FB0();
      v17 = v21;
      v18 = sub_227663FB0();
      goto LABEL_23;
    }

    if (*(v14 + 16) == 1)
    {
      if (v5 != 1)
      {
        goto LABEL_10;
      }

      v15 = sub_227664C10();
      v17 = v16;
      v18 = sub_227664C10();
LABEL_23:
      if (v15 == v18 && v17 == v19)
      {

        goto LABEL_33;
      }

      v23 = sub_22766D190();

      if (v23)
      {
        goto LABEL_33;
      }

      goto LABEL_10;
    }

    if (v5 != 2)
    {
      goto LABEL_10;
    }

    if (*v14 == a2 && *(v14 + 8) == v33)
    {
      break;
    }

    if (sub_22766D190())
    {
      v26 = a2;
      v27 = v33;
      goto LABEL_32;
    }

LABEL_10:
    v12 = (v12 + 1) & v13;
    if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  v26 = a2;
  v27 = v33;
LABEL_32:
  sub_226EE28B0(v26, v27, 2);
LABEL_33:
  v28 = *(v9 + 48) + 24 * v12;
  v29 = *v28;
  v30 = *(v28 + 8);
  *a1 = *v28;
  *(a1 + 8) = v30;
  v31 = *(v28 + 16);
  *(a1 + 16) = v31;
  sub_226F04958(v29, v30, v31);
  return 0;
}

void sub_2270B9444(void *a1, uint64_t a2)
{
  v4 = *v2;
  sub_22766D370();
  v5 = *(a2 + 16);
  MEMORY[0x22AA996B0](v5);
  v6 = *(a2 + 16);
  if (v6)
  {
    v7 = (a2 + 56);
    do
    {
      v8 = *(v7 - 2);
      v9 = *(v7 - 1);
      v10 = *v7;
      v7 += 32;
      v24 = v8;
      v25 = v9;
      sub_226EB396C(v8, v9, v10);
      sub_226F48228();
      sub_22766BF60();
      sub_226EB2DFC(v24, v25, v10);
      --v6;
    }

    while (v6);
  }

  v11 = sub_22766D3F0();
  v12 = v4 + 56;
  v13 = -1 << *(v4 + 32);
  v14 = v11 & ~v13;
  if ((*(v4 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v22 = ~v13;
    while (1)
    {
      v16 = *(*(v4 + 48) + 8 * v14);
      if (*(v16 + 16) == v5)
      {
        break;
      }

LABEL_7:
      v14 = (v14 + 1) & v15;
      if (((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    if (!v5 || v16 == a2)
    {
LABEL_18:

      *a1 = *(*(v4 + 48) + 8 * v14);
    }

    else
    {

      v17 = 0;
      v18 = 0;
      while (v18 < *(v16 + 16))
      {
        if (v18 >= *(a2 + 16))
        {
          goto LABEL_21;
        }

        if (*(v16 + v17 + 32) != *(a2 + v17 + 32) || (sub_226F48150(), sub_226EC1E18(), (sub_227663B20() & 1) == 0))
        {

          v15 = v22;
          v12 = v4 + 56;
          goto LABEL_7;
        }

        ++v18;
        v17 += 32;
        if (v5 == v18)
        {

          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
    }
  }

  else
  {
LABEL_19:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v21;

    sub_2270E5BF8(v20, v14, isUniquelyReferenced_nonNull_native);
    *v21 = v26;
    *a1 = a2;
  }
}

uint64_t sub_2270B96B8(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_227664CA0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_226EB99C8(&qword_2813A5770, MEMORY[0x277D50E98], MEMORY[0x277D50EA0]);
  v33 = a2;
  v11 = sub_22766BF50();
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
      sub_226EB99C8(&qword_28139B8F8, MEMORY[0x277D50E98], MEMORY[0x277D50EA8]);
      v21 = sub_22766BFB0();
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
    sub_2270E5EA4(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_2270B9998(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_227668E30();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_226EB99C8(&unk_2813A5530, MEMORY[0x277D538B8], MEMORY[0x277D538C0]);
  v33 = a2;
  v11 = sub_22766BF50();
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
      sub_226EB99C8(&qword_27D7BA850, MEMORY[0x277D538B8], MEMORY[0x277D538C8]);
      v21 = sub_22766BFB0();
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
    sub_2270E616C(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_2270B9C78(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_227665100();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_226EB99C8(&qword_2813A5720, MEMORY[0x277D51360], MEMORY[0x277D51368]);
  v33 = a2;
  v11 = sub_22766BF50();
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
      sub_226EB99C8(&qword_28139B860, MEMORY[0x277D51360], MEMORY[0x277D51370]);
      v21 = sub_22766BFB0();
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
    sub_2270E6434(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}