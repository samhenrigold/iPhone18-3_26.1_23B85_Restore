uint64_t sub_20BE67D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7)
{
  v41 = a6;
  v40 = a5;
  v38 = a3;
  v39 = a4;
  v10 = sub_20C1364E4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F8F8, &qword_20C1805B0);
  MEMORY[0x28223BE20](v44);
  v15 = (&v34 - v14);
  v16 = sub_20C13BB84();
  v42 = *(v16 - 8);
  v43 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B524();
  v19 = sub_20C13BB74();
  v20 = sub_20C13D1F4();
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
    v24 = sub_20C13DCA4();
    v26 = v15;
    v27 = a1;
    v28 = v11;
    v29 = v10;
    v30 = sub_20B51E694(v24, v25, &v45);

    *(v22 + 14) = v30;
    v10 = v29;
    v11 = v28;
    a1 = v27;
    v15 = v26;
    *(v22 + 22) = 2048;
    *(v22 + 24) = v41;
    _os_log_impl(&dword_20B517000, v19, v20, "Finished P->A conversion: %ld:%s:%lu", v22, 0x20u);
    v31 = v35;
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x20F2F6A40](v31, -1, -1);
    v32 = v22;
    v13 = v36;
    MEMORY[0x20F2F6A40](v32, -1, -1);
  }

  (*(v42 + 8))(v18, v43);
  sub_20B52F9E8(a1, v15, &qword_27C76F8F8, &qword_20C1805B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v45 = *v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F8F0, &unk_20C1805A0);
    return sub_20C13CD44();
  }

  else
  {
    (*(v11 + 32))(v13, v15, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F8F0, &unk_20C1805A0);
    return sub_20C13CD54();
  }
}

uint64_t sub_20BE68094(void *a1, unint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, uint64_t a8, uint64_t a9)
{
  v30 = a8;
  v29 = a7;
  v28[2] = a6;
  v31 = a3;
  v12 = sub_20C13BB84();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B524();
  v16 = sub_20C13BB74();
  v17 = sub_20C13D1F4();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v28[1] = a9;
    v19 = v18;
    v20 = swift_slowAlloc();
    v28[0] = a2;
    v21 = v20;
    v32[0] = v20;
    *v19 = 134218498;
    *(v19 + 4) = a4;
    *(v19 + 12) = 2080;
    v22 = sub_20C13DCA4();
    v24 = sub_20B51E694(v22, v23, v32);

    *(v19 + 14) = v24;
    *(v19 + 22) = 2048;
    *(v19 + 24) = v30;
    _os_log_impl(&dword_20B517000, v16, v17, "Finished P->A conversion: %ld:%s:%lu", v19, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v21);
    v25 = v21;
    a2 = v28[0];
    MEMORY[0x20F2F6A40](v25, -1, -1);
    MEMORY[0x20F2F6A40](v19, -1, -1);
  }

  (*(v13 + 8))(v15, v12);
  v32[0] = a1;
  if (v31)
  {
    v26 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F960, &unk_20C180660);
    return sub_20C13CD44();
  }

  else
  {
    v32[1] = a2;
    sub_20B719888(a1, a2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F960, &unk_20C180660);
    return sub_20C13CD54();
  }
}

uint64_t sub_20BE682FC(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, uint64_t a8)
{
  v29 = a7;
  v28 = a6;
  v30 = a2;
  v11 = sub_20C13BB84();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B524();
  v15 = sub_20C13BB74();
  v16 = sub_20C13D1F4();
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
    v21 = sub_20C13DCA4();
    v23 = sub_20B51E694(v21, v22, &v31);

    *(v18 + 14) = v23;
    *(v18 + 22) = 2048;
    *(v18 + 24) = v29;
    _os_log_impl(&dword_20B517000, v15, v16, "Finished P->A conversion: %ld:%s:%lu", v18, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v20);
    MEMORY[0x20F2F6A40](v20, -1, -1);
    v24 = v18;
    a1 = v27[0];
    MEMORY[0x20F2F6A40](v24, -1, -1);
  }

  (*(v12 + 8))(v14, v11);
  v31 = a1;
  if (v30)
  {
    v25 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F858, &qword_20C180498);
    return sub_20C13CD44();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F858, &qword_20C180498);
    return sub_20C13CD54();
  }
}

uint64_t sub_20BE68554(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, uint64_t a8, uint64_t a9)
{
  v29 = a8;
  v28 = a7;
  v30 = a3;
  v31 = a1;
  v11 = sub_20C13BB84();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B524();
  v15 = sub_20C13BB74();
  v16 = sub_20C13D1F4();
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
    v21 = sub_20C13DCA4();
    v23 = sub_20B51E694(v21, v22, v32);

    *(v18 + 14) = v23;
    *(v18 + 22) = 2048;
    *(v18 + 24) = v29;
    _os_log_impl(&dword_20B517000, v15, v16, "Finished P->A conversion: %ld:%s:%lu", v18, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v20);
    MEMORY[0x20F2F6A40](v20, -1, -1);
    v24 = v18;
    a2 = v27[0];
    MEMORY[0x20F2F6A40](v24, -1, -1);
  }

  (*(v12 + 8))(v14, v11);
  v32[0] = v31;
  if (v30)
  {
    v25 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F880, &unk_20C1804E0);
    return sub_20C13CD44();
  }

  else
  {
    v32[1] = a2;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F880, &unk_20C1804E0);
    return sub_20C13CD54();
  }
}

uint64_t sub_20BE687BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7)
{
  v41 = a6;
  v40 = a5;
  v38 = a3;
  v39 = a4;
  v10 = sub_20C135FB4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F878, &qword_20C1804D8);
  MEMORY[0x28223BE20](v44);
  v15 = (&v34 - v14);
  v16 = sub_20C13BB84();
  v42 = *(v16 - 8);
  v43 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B524();
  v19 = sub_20C13BB74();
  v20 = sub_20C13D1F4();
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
    v24 = sub_20C13DCA4();
    v26 = v15;
    v27 = a1;
    v28 = v11;
    v29 = v10;
    v30 = sub_20B51E694(v24, v25, &v45);

    *(v22 + 14) = v30;
    v10 = v29;
    v11 = v28;
    a1 = v27;
    v15 = v26;
    *(v22 + 22) = 2048;
    *(v22 + 24) = v41;
    _os_log_impl(&dword_20B517000, v19, v20, "Finished P->A conversion: %ld:%s:%lu", v22, 0x20u);
    v31 = v35;
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x20F2F6A40](v31, -1, -1);
    v32 = v22;
    v13 = v36;
    MEMORY[0x20F2F6A40](v32, -1, -1);
  }

  (*(v42 + 8))(v18, v43);
  sub_20B52F9E8(a1, v15, &qword_27C76F878, &qword_20C1804D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v45 = *v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F870, &qword_20C1804C8);
    return sub_20C13CD44();
  }

  else
  {
    (*(v11 + 32))(v13, v15, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F870, &qword_20C1804C8);
    return sub_20C13CD54();
  }
}

uint64_t sub_20BE68B30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7)
{
  v41 = a6;
  v40 = a5;
  v38 = a3;
  v39 = a4;
  v10 = sub_20C137794();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764E28, &qword_20C157990);
  MEMORY[0x28223BE20](v44);
  v15 = (&v34 - v14);
  v16 = sub_20C13BB84();
  v42 = *(v16 - 8);
  v43 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B524();
  v19 = sub_20C13BB74();
  v20 = sub_20C13D1F4();
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
    v24 = sub_20C13DCA4();
    v26 = v15;
    v27 = a1;
    v28 = v11;
    v29 = v10;
    v30 = sub_20B51E694(v24, v25, &v45);

    *(v22 + 14) = v30;
    v10 = v29;
    v11 = v28;
    a1 = v27;
    v15 = v26;
    *(v22 + 22) = 2048;
    *(v22 + 24) = v41;
    _os_log_impl(&dword_20B517000, v19, v20, "Finished P->A conversion: %ld:%s:%lu", v22, 0x20u);
    v31 = v35;
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x20F2F6A40](v31, -1, -1);
    v32 = v22;
    v13 = v36;
    MEMORY[0x20F2F6A40](v32, -1, -1);
  }

  (*(v42 + 8))(v18, v43);
  sub_20B52F9E8(a1, v15, &qword_27C764E28, &qword_20C157990);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v45 = *v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F8A0, &qword_20C180520);
    return sub_20C13CD44();
  }

  else
  {
    (*(v11 + 32))(v13, v15, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F8A0, &qword_20C180520);
    return sub_20C13CD54();
  }
}

uint64_t sub_20BE68EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7)
{
  v41 = a6;
  v40 = a5;
  v38 = a3;
  v39 = a4;
  v10 = sub_20C136724();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764E30, &qword_20C1579B8);
  MEMORY[0x28223BE20](v44);
  v15 = (&v34 - v14);
  v16 = sub_20C13BB84();
  v42 = *(v16 - 8);
  v43 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B524();
  v19 = sub_20C13BB74();
  v20 = sub_20C13D1F4();
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
    v24 = sub_20C13DCA4();
    v26 = v15;
    v27 = a1;
    v28 = v11;
    v29 = v10;
    v30 = sub_20B51E694(v24, v25, &v45);

    *(v22 + 14) = v30;
    v10 = v29;
    v11 = v28;
    a1 = v27;
    v15 = v26;
    *(v22 + 22) = 2048;
    *(v22 + 24) = v41;
    _os_log_impl(&dword_20B517000, v19, v20, "Finished P->A conversion: %ld:%s:%lu", v22, 0x20u);
    v31 = v35;
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x20F2F6A40](v31, -1, -1);
    v32 = v22;
    v13 = v36;
    MEMORY[0x20F2F6A40](v32, -1, -1);
  }

  (*(v42 + 8))(v18, v43);
  sub_20B52F9E8(a1, v15, &qword_27C764E30, &qword_20C1579B8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v45 = *v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F898, &qword_20C180508);
    return sub_20C13CD44();
  }

  else
  {
    (*(v11 + 32))(v13, v15, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F898, &qword_20C180508);
    return sub_20C13CD54();
  }
}

uint64_t sub_20BE69218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7)
{
  v41 = a6;
  v40 = a5;
  v38 = a3;
  v39 = a4;
  v10 = sub_20C135D34();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F890, &qword_20C180500);
  MEMORY[0x28223BE20](v44);
  v15 = (&v34 - v14);
  v16 = sub_20C13BB84();
  v42 = *(v16 - 8);
  v43 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B524();
  v19 = sub_20C13BB74();
  v20 = sub_20C13D1F4();
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
    v24 = sub_20C13DCA4();
    v26 = v15;
    v27 = a1;
    v28 = v11;
    v29 = v10;
    v30 = sub_20B51E694(v24, v25, &v45);

    *(v22 + 14) = v30;
    v10 = v29;
    v11 = v28;
    a1 = v27;
    v15 = v26;
    *(v22 + 22) = 2048;
    *(v22 + 24) = v41;
    _os_log_impl(&dword_20B517000, v19, v20, "Finished P->A conversion: %ld:%s:%lu", v22, 0x20u);
    v31 = v35;
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x20F2F6A40](v31, -1, -1);
    v32 = v22;
    v13 = v36;
    MEMORY[0x20F2F6A40](v32, -1, -1);
  }

  (*(v42 + 8))(v18, v43);
  sub_20B52F9E8(a1, v15, &qword_27C76F890, &qword_20C180500);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v45 = *v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F888, &unk_20C1804F0);
    return sub_20C13CD44();
  }

  else
  {
    (*(v11 + 32))(v13, v15, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F888, &unk_20C1804F0);
    return sub_20C13CD54();
  }
}

unint64_t sub_20BE69590()
{
  result = qword_27C762380;
  if (!qword_27C762380)
  {
    sub_20C13B8A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C762380);
  }

  return result;
}

uint64_t objectdestroy_9Tm_0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762350, &qword_20C16DB10);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20BE69694(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762350, &qword_20C16DB10) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_20B6E03A8(a1, a2, v2 + v6, v8, v9);
}

uint64_t sub_20BE69908(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622A0, &unk_20C14FCB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20BE69C98(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(v4 + 32);
  v10 = *(v4 + 48);
  v11 = *a1;
  v12 = *(a1 + 8);
  v13 = *(v4 + 40);
  v14 = v4 + ((*(v6 + 80) + 56) & ~*(v6 + 80));

  return a4(v11, v12, v7, v8, v9, v13, v10, v14);
}

uint64_t sub_20BE69F4C()
{
  sub_20B5D9BA8();
  v0 = swift_allocError();
  *v1 = 11;
  *(swift_allocObject() + 16) = v0;

  return sub_20C137CA4();
}

uint64_t NavigationRouter.__allocating_init(dependencies:interceptionPresenter:interceptionChain:viewControllerFactory:)(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v9 = a2[3];
  v10 = a2[4];
  v11 = __swift_mutable_project_boxed_opaque_existential_1(a2, v9);
  v12 = a4[3];
  v13 = a4[4];
  v14 = __swift_mutable_project_boxed_opaque_existential_1(a4, v12);
  v15 = sub_20BE7057C(a1, v11, a3, v14, v4, v9, v12, v10, v13);

  __swift_destroy_boxed_opaque_existential_1(a4);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v15;
}

uint64_t NavigationRouter.init(dependencies:interceptionPresenter:interceptionChain:viewControllerFactory:)(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v9 = a2[3];
  v8 = a2[4];
  v10 = __swift_mutable_project_boxed_opaque_existential_1(a2, v9);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v11);
  v16 = a4[3];
  v15 = a4[4];
  v17 = __swift_mutable_project_boxed_opaque_existential_1(a4, v16);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v18);
  v22 = sub_20BE70138(a1, v13, a3, v20, v24[1], v9, v16, v8, v15);

  __swift_destroy_boxed_opaque_existential_1(a4);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v22;
}

uint64_t sub_20BE6A278(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - v5;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    NavigationRouter.navigateToRequest(_:)(a1, v6);

    v8 = sub_20C137CB4();
    v9 = swift_allocObject();
    *(v9 + 16) = 0;
    *(v9 + 24) = 0;
    v8(sub_20B5DF6DC, v9);

    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

void NavigationRouter.navigateToRequest(_:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = type metadata accessor for NavigationRequest(0);
  v31 = *(v3 - 8);
  v4 = *(v31 + 64);
  MEMORY[0x28223BE20](v3);
  v5 = type metadata accessor for NavigationRouter.State(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for NavigationRouterRequest(0);
  MEMORY[0x28223BE20](v8 - 8);
  v30 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20C13BB84();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  sub_20C13BB64();
  v14 = *(v11 + 8);
  v14(v13, v10);
  v15 = *(v3 + 28);
  v32 = a1;
  v16 = *(a1 + v15);
  if (!v16)
  {
    sub_20C13B534();
    sub_20C13BB64();
    v14(v13, v10);
    v18 = swift_allocObject();
    swift_weakInit();
    sub_20BE70750(v32, &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NavigationRequest);
    v19 = (*(v31 + 80) + 24) & ~*(v31 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = v18;
    sub_20BE707B8(&v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for NavigationRequest);
    sub_20C137C94();
    return;
  }

  if (v16 == 1)
  {
    v17 = v34;
  }

  else
  {
    v21 = OBJC_IVAR____TtC9SeymourUI16NavigationRouter_state;
    v22 = v33;
    swift_beginAccess();
    sub_20BE70750(v22 + v21, v7, type metadata accessor for NavigationRouter.State);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F968, &qword_20C180670);
    if ((*(*(v23 - 8) + 48))(v7, 1, v23) == 1)
    {
      v24 = type metadata accessor for NavigationRouter.State;
      v25 = v7;
    }

    else
    {
      v26 = v30;
      sub_20BE707B8(v7, v30, type metadata accessor for NavigationRouterRequest);
      if (*(v26 + *(v3 + 28)) == 2)
      {
        sub_20B5D9BA8();
        v27 = swift_allocError();
        *v28 = 4;
        *(swift_allocObject() + 16) = v27;
        v29 = v27;
        sub_20C137CA4();
        sub_20BE70820(v26, type metadata accessor for NavigationRouterRequest);

        return;
      }

      v24 = type metadata accessor for NavigationRouterRequest;
      v25 = v26;
    }

    sub_20BE70820(v25, v24);
    v17 = v34;
  }

  sub_20BE6E034(v32, v17);
}

uint64_t sub_20BE6A95C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(void), void (*a5)(char *))
{
  v7 = a3(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v12 - v9;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a4();
    a5(v10);

    return (*(v8 + 8))(v10, v7);
  }

  return result;
}

uint64_t sub_20BE6AA80(uint64_t a1)
{
  v23 = a1;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v1 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v3 = &v21 - v2;
  v4 = type metadata accessor for NavigationRequest(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20C13BB84();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B4B4();
  v11 = sub_20C13BB74();
  v12 = sub_20C13D1F4();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v22 = v3;
    v14 = v13;
    *v13 = 0;
    _os_log_impl(&dword_20B517000, v11, v12, "NavigationRouter handling siri begin session", v13, 2u);
    v3 = v22;
    MEMORY[0x20F2F6A40](v14, -1, -1);
  }

  (*(v8 + 8))(v10, v7);
  type metadata accessor for NavigationResource(0);
  swift_storeEnumTagMultiPayload();
  v15 = v4[5];
  v16 = sub_20C139144();
  (*(*(v16 - 8) + 16))(&v6[v15], v23, v16);
  type metadata accessor for NavigationIntent(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for NavigationSource(0);
  swift_storeEnumTagMultiPayload();
  v6[v4[7]] = 0;
  v6[v4[8]] = 0;
  *&v6[v4[9]] = 0;
  NavigationRouter.navigateToRequest(_:)(v6, v3);
  v17 = v24;
  v18 = sub_20C137CB4();
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  v18(sub_20B5DF6DC, v19);

  (*(v1 + 8))(v3, v17);
  return sub_20BE70820(v6, type metadata accessor for NavigationRequest);
}

uint64_t sub_20BE6AE00(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v47 = &v37 - v4;
  v45 = type metadata accessor for NavigationRequest(0);
  MEMORY[0x28223BE20](v45);
  v6 = (&v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_20C135024();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C13BB84();
  v42 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B594();
  v14 = *(v8 + 16);
  v46 = a1;
  v48 = v7;
  v43 = v14;
  v44 = v8 + 16;
  v14(v10, a1, v7);
  v15 = sub_20C13BB74();
  v16 = sub_20C13D1F4();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v39 = v11;
    v18 = v17;
    v19 = swift_slowAlloc();
    v41 = v2;
    v38 = v19;
    v49 = v19;
    *v18 = 136315138;
    sub_20BE7178C(&qword_27C766E98, MEMORY[0x277D51510], MEMORY[0x277D51538]);
    v20 = v48;
    v21 = sub_20C13DFA4();
    v40 = v3;
    v23 = v22;
    (*(v8 + 8))(v10, v20);
    v24 = sub_20B51E694(v21, v23, &v49);
    v3 = v40;

    *(v18 + 4) = v24;
    _os_log_impl(&dword_20B517000, v15, v16, "NavigationRouter handling multi-user begin session for %s", v18, 0xCu);
    v25 = v38;
    __swift_destroy_boxed_opaque_existential_1(v38);
    v2 = v41;
    MEMORY[0x20F2F6A40](v25, -1, -1);
    MEMORY[0x20F2F6A40](v18, -1, -1);

    (*(v42 + 8))(v13, v39);
  }

  else
  {

    (*(v8 + 8))(v10, v48);
    (*(v42 + 8))(v13, v11);
  }

  v26 = v46;
  *v6 = sub_20C135004();
  v6[1] = v27;
  type metadata accessor for WorkoutNavigationResource(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for NavigationResource(0);
  swift_storeEnumTagMultiPayload();
  v28 = v45;
  v29 = v6 + *(v45 + 20);
  v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E4C0, "\b\b\t") + 80);
  *v29 = sub_20C134FD4();
  v29[8] = 0;
  *(v29 + 2) = sub_20C134FF4();
  *(v29 + 3) = v31;
  v32 = sub_20C1344C4();
  (*(*(v32 - 8) + 56))(&v29[v30], 1, 1, v32);
  *(v29 + 4) = 0;
  type metadata accessor for NavigationIntent(0);
  swift_storeEnumTagMultiPayload();
  v43(v6 + v28[6], v26, v48);
  type metadata accessor for NavigationSource(0);
  swift_storeEnumTagMultiPayload();
  *(v6 + v28[7]) = 0;
  *(v6 + v28[8]) = 0;
  *(v6 + v28[9]) = 0;
  v33 = v47;
  NavigationRouter.navigateToRequest(_:)(v6, v47);
  v34 = sub_20C137CB4();
  v35 = swift_allocObject();
  *(v35 + 16) = 0;
  *(v35 + 24) = 0;
  v34(sub_20B5DF6DC, v35);

  (*(v3 + 8))(v33, v2);
  return sub_20BE70820(v6, type metadata accessor for NavigationRequest);
}

uint64_t sub_20BE6B394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v90 = a1;
  v98 = a2;
  v4 = type metadata accessor for NavigationRequest(0);
  MEMORY[0x28223BE20](v4 - 8);
  v91 = &v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v86 = &v86 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v95 = *(v8 - 8);
  v96 = v8;
  v9 = *(v95 + 64);
  MEMORY[0x28223BE20](v8);
  v87 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v94 = &v86 - v11;
  MEMORY[0x28223BE20](v12);
  v97 = &v86 - v13;
  MEMORY[0x28223BE20](v14);
  v89 = &v86 - v15;
  v16 = sub_20C13C554();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = (&v86 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = sub_20C13BB84();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v86 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v88 = &v86 - v25;
  MEMORY[0x28223BE20](v26);
  v28 = &v86 - v27;
  sub_20C13B534();
  sub_20C13BB64();
  v29 = *(v21 + 8);
  v92 = v21 + 8;
  v93 = v20;
  v29(v28, v20);
  sub_20B5E2E18();
  *v19 = sub_20C13D374();
  (*(v17 + 104))(v19, *MEMORY[0x277D85200], v16);
  LOBYTE(v28) = sub_20C13C584();
  result = (*(v17 + 8))(v19, v16);
  if ((v28 & 1) == 0)
  {
    __break(1u);
    return result;
  }

  v31 = v3 + OBJC_IVAR____TtC9SeymourUI16NavigationRouter_navigationController;
  Strong = swift_unknownObjectWeakLoadStrong();
  v33 = v3;
  v35 = v90;
  v34 = v91;
  if (Strong)
  {
    v36 = Strong;
    v37 = *(v31 + 8);
    ObjectType = swift_getObjectType();
    if ((*(v37 + 40))(v35, ObjectType, v37))
    {
      v39 = *(v37 + 48);
      v91 = v36;
      v39(v35, v33 + OBJC_IVAR____TtC9SeymourUI16NavigationRouter_viewControllerFactory, ObjectType, v37);
      v40 = v88;
      sub_20C13B534();
      v41 = v86;
      sub_20BE70750(v35, v86, type metadata accessor for NavigationRequest);
      v42 = sub_20C13BB74();
      v43 = sub_20C13D1F4();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v99 = v45;
        *v44 = 136315138;
        v46 = NavigationRequest.description.getter();
        v48 = v47;
        sub_20BE70820(v41, type metadata accessor for NavigationRequest);
        v49 = sub_20B51E694(v46, v48, &v99);

        *(v44 + 4) = v49;
        _os_log_impl(&dword_20B517000, v42, v43, "Applying: %s", v44, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v45);
        MEMORY[0x20F2F6A40](v45, -1, -1);
        MEMORY[0x20F2F6A40](v44, -1, -1);

        v50 = v88;
      }

      else
      {

        sub_20BE70820(v41, type metadata accessor for NavigationRequest);
        v50 = v40;
      }

      v29(v50, v93);
      v73 = *(v33 + OBJC_IVAR____TtC9SeymourUI16NavigationRouter_interceptionPresenter + 24);
      v74 = *(v33 + OBJC_IVAR____TtC9SeymourUI16NavigationRouter_interceptionPresenter + 32);
      __swift_project_boxed_opaque_existential_1((v33 + OBJC_IVAR____TtC9SeymourUI16NavigationRouter_interceptionPresenter), v73);
      (*(v74 + 16))(v73, v74);
      v75 = v94;
      v76 = v95;
      v77 = *(v95 + 16);
      v78 = v96;
      v77(v94, v89, v96);
      v79 = (*(v76 + 80) + 16) & ~*(v76 + 80);
      v93 = swift_allocObject();
      v80 = *(v76 + 32);
      v80(v93 + v79, v75, v78);
      v81 = v87;
      v77(v87, v97, v78);
      v82 = swift_allocObject();
      v80(v82 + v79, v81, v78);
      v83 = (v82 + ((v79 + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
      v84 = v93;
      *v83 = sub_20BE71830;
      v83[1] = v84;
      sub_20C137C94();

      v85 = *(v76 + 8);
      v85(v97, v78);
      return (v85)(v89, v78);
    }
  }

  sub_20C13B534();
  sub_20BE70750(v35, v34, type metadata accessor for NavigationRequest);

  v51 = sub_20C13BB74();
  v52 = sub_20C13D1D4();
  v53 = v33;
  v54 = v52;
  v90 = v53;

  if (os_log_type_enabled(v51, v54))
  {
    v55 = swift_slowAlloc();
    v89 = v29;
    v56 = v55;
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v99 = v58;
    *v56 = 138543618;
    v59 = swift_unknownObjectWeakLoadStrong();
    *(v56 + 4) = v59;
    *v57 = v59;
    *(v56 + 12) = 2082;
    v60 = NavigationRequest.description.getter();
    v62 = v61;
    sub_20BE70820(v34, type metadata accessor for NavigationRequest);
    v63 = sub_20B51E694(v60, v62, &v99);

    *(v56 + 14) = v63;
    _os_log_impl(&dword_20B517000, v51, v54, "NavigationController %{public}@ denied request application: %{public}s", v56, 0x16u);
    sub_20B64F5CC(v57);
    MEMORY[0x20F2F6A40](v57, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v58);
    MEMORY[0x20F2F6A40](v58, -1, -1);
    MEMORY[0x20F2F6A40](v56, -1, -1);

    (v89)(v23, v93);
  }

  else
  {

    sub_20BE70820(v34, type metadata accessor for NavigationRequest);
    v29(v23, v93);
  }

  v64 = *(v90 + OBJC_IVAR____TtC9SeymourUI16NavigationRouter_interceptionPresenter + 24);
  v65 = *(v90 + OBJC_IVAR____TtC9SeymourUI16NavigationRouter_interceptionPresenter + 32);
  __swift_project_boxed_opaque_existential_1((v90 + OBJC_IVAR____TtC9SeymourUI16NavigationRouter_interceptionPresenter), v64);
  v66 = v97;
  (*(v65 + 16))(v64, v65);
  v68 = v94;
  v67 = v95;
  v69 = v96;
  (*(v95 + 16))(v94, v66, v96);
  v70 = (*(v67 + 80) + 16) & ~*(v67 + 80);
  v71 = swift_allocObject();
  (*(v67 + 32))(v71 + v70, v68, v69);
  v72 = (v71 + ((v9 + v70 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v72 = sub_20BE69F4C;
  v72[1] = 0;
  sub_20C137C94();
  return (*(v67 + 8))(v66, v69);
}

uint64_t sub_20BE6BD84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v132 = a2;
  v124 = type metadata accessor for NavigationRequest(0);
  v146 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v145 = &v113 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = v5;
  MEMORY[0x28223BE20](v6);
  v134 = &v113 - v7;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7641C0, &qword_20C161470);
  v125 = *(v126 - 8);
  v8 = *(v125 + 64);
  MEMORY[0x28223BE20](v126);
  v122 = &v113 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v135 = &v113 - v10;
  MEMORY[0x28223BE20](v11);
  v123 = &v113 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v14 = *(v13 - 8);
  v147 = v13;
  v148 = v14;
  v15 = *(v14 + 8);
  MEMORY[0x28223BE20](v13);
  v139 = &v113 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v130 = &v113 - v17;
  MEMORY[0x28223BE20](v18);
  v133 = &v113 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v113 - v21;
  MEMORY[0x28223BE20](v23);
  v136 = &v113 - v24;
  MEMORY[0x28223BE20](v25);
  v127 = &v113 - v26;
  MEMORY[0x28223BE20](v27);
  v128 = &v113 - v28;
  v29 = sub_20C13BB84();
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v32 = &v113 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v35 = &v113 - v34;
  sub_20C13B534();
  sub_20C13BB64();
  v36 = *(v30 + 8);
  v36(v35, v29);
  v37 = v3;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v39 = Strong;
    v120 = type metadata accessor for NavigationRequest;
    v40 = v134;
    sub_20BE70750(a1, v134, type metadata accessor for NavigationRequest);
    v119 = *(v146 + 80);
    v117 = ((v119 + 16) & ~v119) + v137;
    v41 = (v119 + 16) & ~v119;
    v118 = v41;
    v42 = swift_allocObject();
    v131 = type metadata accessor for NavigationRequest;
    sub_20BE707B8(v40, v42 + v41, type metadata accessor for NavigationRequest);
    v129 = v22;
    sub_20C137CA4();
    v138 = v37;
    v116 = (v37 + OBJC_IVAR____TtC9SeymourUI16NavigationRouter_interceptionPresenter);
    v43 = *(v37 + OBJC_IVAR____TtC9SeymourUI16NavigationRouter_interceptionPresenter + 32);
    __swift_project_boxed_opaque_existential_1((v37 + OBJC_IVAR____TtC9SeymourUI16NavigationRouter_interceptionPresenter), *(v37 + OBJC_IVAR____TtC9SeymourUI16NavigationRouter_interceptionPresenter + 24));
    v146 = a1;
    v44 = *(v43 + 8);
    v45 = v39;
    v121 = v45;
    v46 = v133;
    v44();

    v47 = v148;
    v48 = v148 + 16;
    v49 = *(v148 + 2);
    v50 = v130;
    v51 = v46;
    v52 = v147;
    v49(v130, v51, v147);
    v144 = v49;
    v145 = v48;
    v53 = *(v47 + 80);
    v54 = (v53 + 16) & ~v53;
    v115 = v8;
    v141 = v53;
    v114 = swift_allocObject();
    v55 = *(v47 + 4);
    v140 = v54;
    v142 = v55;
    v55(v114 + v54, v50, v52);
    v143 = (v47 + 32);
    v56 = v139;
    v49(v139, v129, v52);
    v130 = ((v54 + v15 + 7) & 0xFFFFFFFFFFFFFFF8);
    v57 = swift_allocObject();
    v55(v57 + v54, v56, v52);
    v58 = (v57 + ((v54 + v15 + 7) & 0xFFFFFFFFFFFFFFF8));
    v59 = v114;
    *v58 = sub_20BE70BB4;
    v58[1] = v59;
    v60 = v136;
    sub_20C137C94();
    v61 = *(v47 + 1);
    v148 = (v47 + 8);
    v139 = v61;
    (v61)(v133, v52);
    v62 = v129;
    (v61)(v129, v52);
    v63 = v116[3];
    v64 = v116[4];
    __swift_project_boxed_opaque_existential_1(v116, v63);
    v65 = v135;
    (*(v64 + 24))(v146, *(v138 + OBJC_IVAR____TtC9SeymourUI16NavigationRouter_interceptionChain), v63, v64);
    v66 = v125;
    v133 = *(v125 + 16);
    v67 = v122;
    v68 = v126;
    (v133)(v122, v65, v126);
    v69 = *(v66 + 80);
    v114 = v115 + ((v69 + 16) & ~v69);
    v116 = ((v69 + 16) & ~v69);
    v70 = swift_allocObject();
    v115 = *(v66 + 32);
    v115(v70 + ((v69 + 16) & ~v69), v67, v68);
    v71 = v147;
    v144(v62, v60, v147);
    v72 = v130;
    v73 = swift_allocObject();
    v142(v73 + v140, v62, v71);
    v74 = &v72[v73];
    *v74 = sub_20B8E868C;
    v74[1] = v70;
    v75 = v123;
    sub_20C137C94();
    v76 = *(v66 + 8);
    v77 = v135;
    v76(v135, v68);
    v78 = v136;
    (v139)(v136, v71);
    (v133)(v77, v75, v68);
    v79 = (v114 + 7) & 0xFFFFFFFFFFFFFFF8;
    v80 = swift_allocObject();
    v115(v116 + v80, v77, v68);
    v81 = (v80 + v79);
    v82 = v138;
    *v81 = sub_20BE70BE0;
    v81[1] = v82;

    v83 = v127;
    sub_20C137C94();
    v76(v75, v68);
    v84 = swift_allocObject();
    swift_weakInit();
    v85 = v134;
    v86 = v120;
    sub_20BE70750(v146, v134, v120);
    v87 = (v117 + 7) & 0xFFFFFFFFFFFFFFF8;
    v88 = v119;
    v89 = swift_allocObject();
    sub_20BE707B8(v85, v89 + v118, v131);
    *(v89 + v87) = v84;
    v90 = v78;
    v91 = v78;
    v92 = v147;
    v144(v91, v83, v147);
    v93 = v130;
    v94 = swift_allocObject();
    v142(v94 + v140, v90, v92);
    v95 = &v93[v94];
    *v95 = sub_20BE70C0C;
    v95[1] = v89;
    v96 = v128;
    sub_20C137C94();
    (v139)(v83, v92);
    v97 = swift_allocObject();
    swift_weakInit();
    sub_20BE70750(v146, v85, v86);
    v98 = swift_allocObject();
    *(v98 + 16) = v97;
    sub_20BE707B8(v85, v98 + ((v88 + 24) & ~v88), v131);
    v144(v83, v96, v92);
    v99 = swift_allocObject();
    v142(v99 + v140, v83, v92);
    v100 = &v93[v99];
    *v100 = sub_20BE70CB8;
    v100[1] = v98;
    sub_20C137C94();

    return (v139)(v96, v92);
  }

  else
  {
    v148 = v36;
    sub_20C13B534();
    v102 = v145;
    sub_20BE70750(a1, v145, type metadata accessor for NavigationRequest);
    v103 = sub_20C13BB74();
    v104 = sub_20C13D1D4();
    if (os_log_type_enabled(v103, v104))
    {
      v105 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      v149 = v106;
      *v105 = 136446210;
      v107 = NavigationRequest.description.getter();
      v109 = v108;
      sub_20BE70820(v102, type metadata accessor for NavigationRequest);
      v110 = sub_20B51E694(v107, v109, &v149);

      *(v105 + 4) = v110;
      _os_log_impl(&dword_20B517000, v103, v104, "Unable to create interception for %{public}s. Missing Navigation Controller", v105, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v106);
      MEMORY[0x20F2F6A40](v106, -1, -1);
      MEMORY[0x20F2F6A40](v105, -1, -1);
    }

    else
    {

      sub_20BE70820(v102, type metadata accessor for NavigationRequest);
    }

    v148(v32, v29);
    sub_20B5D9BA8();
    v111 = swift_allocError();
    *v112 = 11;
    *(swift_allocObject() + 16) = v111;
    return sub_20C137CA4();
  }
}

uint64_t sub_20BE6CB7C(uint64_t a1)
{
  v3 = type metadata accessor for NavigationRequest(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20C13BB84();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  sub_20BE70750(a1, v5, type metadata accessor for NavigationRequest);
  v10 = sub_20C13BB74();
  v11 = sub_20C13D1F4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v20[0] = v6;
    v13 = v12;
    v14 = swift_slowAlloc();
    v21 = v14;
    *v13 = 136446210;
    v15 = NavigationRequest.description.getter();
    v20[1] = v1;
    v17 = v16;
    sub_20BE70820(v5, type metadata accessor for NavigationRequest);
    v18 = sub_20B51E694(v15, v17, &v21);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_20B517000, v10, v11, "Starting interception for %{public}s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x20F2F6A40](v14, -1, -1);
    MEMORY[0x20F2F6A40](v13, -1, -1);

    return (*(v7 + 8))(v9, v20[0]);
  }

  else
  {

    sub_20BE70820(v5, type metadata accessor for NavigationRequest);
    return (*(v7 + 8))(v9, v6);
  }
}

uint64_t sub_20BE6CDF4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for NavigationRequest(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_20C13BB84();
  v11 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v13 = v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  sub_20BE70750(a2, v10, type metadata accessor for NavigationRequest);
  v14 = a1;
  v15 = sub_20C13BB74();
  v16 = sub_20C13D1D4();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v33[2] = a4;
    v18 = v17;
    v19 = swift_slowAlloc();
    v38[0] = v19;
    *v18 = 136446466;
    v20 = NavigationRequest.description.getter();
    v33[1] = a3;
    v22 = v21;
    sub_20BE70820(v10, type metadata accessor for NavigationRequest);
    v23 = sub_20B51E694(v20, v22, v38);

    *(v18 + 4) = v23;
    *(v18 + 12) = 2082;
    swift_getErrorValue();
    v24 = MEMORY[0x20F2F5850](v35, v36);
    v26 = sub_20B51E694(v24, v25, v38);

    *(v18 + 14) = v26;
    _os_log_impl(&dword_20B517000, v15, v16, "Unable to resolve handler chain for %{public}s: %{public}s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2F6A40](v19, -1, -1);
    MEMORY[0x20F2F6A40](v18, -1, -1);
  }

  else
  {

    sub_20BE70820(v10, type metadata accessor for NavigationRequest);
  }

  (*(v11 + 8))(v13, v34);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_20B51CC64(Strong + OBJC_IVAR____TtC9SeymourUI16NavigationRouter_interceptionPresenter, v37);

    sub_20B51C710(v37, v38);
    v28 = v39;
    v29 = v40;
    __swift_project_boxed_opaque_existential_1(v38, v39);
    (*(v29 + 16))(v28, v29);
    return __swift_destroy_boxed_opaque_existential_1(v38);
  }

  else
  {
    sub_20B5D9BA8();
    v31 = swift_allocError();
    *v32 = 11;
    *(swift_allocObject() + 16) = v31;
    return sub_20C137CA4();
  }
}

double sub_20BE6D1C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_20C13C4B4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_20C13C4F4();
  v9 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v48 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for NavigationRequest(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20C13BB84();
  v45 = *(v14 - 8);
  v46 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for NavigationRouter.State(0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v47 = a2;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F968, &qword_20C180670);
    (*(*(v22 - 8) + 56))(v19, 1, 1, v22);
    v23 = OBJC_IVAR____TtC9SeymourUI16NavigationRouter_state;
    swift_beginAccess();
    sub_20BE70A74(v19, v21 + v23);
    swift_endAccess();
  }

  sub_20C13B534();
  sub_20BE70750(a3, v13, type metadata accessor for NavigationRequest);
  v24 = v16;
  v25 = sub_20C13BB74();
  v26 = sub_20C13D1F4();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v41 = v24;
    v29 = v13;
    v30 = v28;
    aBlock[0] = v28;
    *v27 = 136446210;
    v31 = NavigationRequest.description.getter();
    v42 = v8;
    v43 = v9;
    v32 = v6;
    v33 = v5;
    v35 = v34;
    sub_20BE70820(v29, type metadata accessor for NavigationRequest);
    v36 = sub_20B51E694(v31, v35, aBlock);
    v5 = v33;
    v6 = v32;
    v8 = v42;
    v9 = v43;

    *(v27 + 4) = v36;
    _os_log_impl(&dword_20B517000, v25, v26, "Finished interception for %{public}s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v30);
    MEMORY[0x20F2F6A40](v30, -1, -1);
    MEMORY[0x20F2F6A40](v27, -1, -1);

    (*(v45 + 8))(v41, v46);
  }

  else
  {

    sub_20BE70820(v13, type metadata accessor for NavigationRequest);
    (*(v45 + 8))(v24, v46);
  }

  sub_20B5E2E18();
  v37 = sub_20C13D374();
  aBlock[4] = sub_20BE70D54;
  aBlock[5] = v47;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20B7B548C;
  aBlock[3] = &block_descriptor_141;
  v38 = _Block_copy(aBlock);

  v39 = v48;
  sub_20C13C4D4();
  v49 = MEMORY[0x277D84F90];
  sub_20BE7178C(&qword_281103AB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766280, &qword_20C15A2D0);
  sub_20B682EA8();
  sub_20C13DA94();
  MEMORY[0x20F2F4AF0](0, v39, v8, v38);
  _Block_release(v38);

  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v39, v44);

  return result;
}

double sub_20BE6D79C(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_20BE6D7F4();
  }

  return result;
}

uint64_t sub_20BE6D7F4()
{
  v1 = v0;
  v65 = type metadata accessor for NavigationRouterRequest(0);
  v63 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v3 = &v57[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v66 = v2;
  MEMORY[0x28223BE20](v4);
  v70 = &v57[-v5];
  v6 = type metadata accessor for NavigationRouter.State(0);
  MEMORY[0x28223BE20](v6 - 8);
  v64 = &v57[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v10 = &v57[-v9];
  v11 = sub_20C13C554();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v57[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_20C13BB84();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v57[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v19);
  v67 = &v57[-v20];
  MEMORY[0x28223BE20](v21);
  v23 = &v57[-v22];
  sub_20C13B534();
  sub_20C13BB64();
  v68 = *(v16 + 8);
  v69 = v15;
  v68(v23, v15);
  sub_20B5E2E18();
  *v14 = sub_20C13D374();
  (*(v12 + 104))(v14, *MEMORY[0x277D85200], v11);
  LOBYTE(v23) = sub_20C13C584();
  result = (*(v12 + 8))(v14, v11);
  if (v23)
  {
    v62 = v3;
    v25 = OBJC_IVAR____TtC9SeymourUI16NavigationRouter_state;
    swift_beginAccess();
    sub_20BE70750(v1 + v25, v10, type metadata accessor for NavigationRouter.State);
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F968, &qword_20C180670);
    v27 = *(v26 - 8);
    v28 = (*(v27 + 48))(v10, 1, v26);
    result = sub_20BE70820(v10, type metadata accessor for NavigationRouter.State);
    if (v28 == 1)
    {
      v29 = OBJC_IVAR____TtC9SeymourUI16NavigationRouter_pendingRequests;
      swift_beginAccess();
      v30 = *(v1 + v29);
      if (*(v30 + 16))
      {
        swift_beginAccess();
        v31 = *(v63 + 80);
        v61 = ~v31;
        v63 = v31;
        sub_20BE70750(v30 + ((v31 + 32) & ~v31), v70, type metadata accessor for NavigationRouterRequest);
        sub_20B7A3A70(0, 1);
        swift_endAccess();
        v32 = v67;
        sub_20C13B534();

        v33 = sub_20C13BB74();
        v34 = sub_20C13D1F4();

        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          v59 = v35;
          v60 = swift_slowAlloc();
          v71[0] = v60;
          *v35 = 136315138;

          v37 = MEMORY[0x20F2F43F0](v36, v65);
          v58 = v34;
          v38 = v37;
          v40 = v39;

          v41 = sub_20B51E694(v38, v40, v71);

          v42 = v59;
          *(v59 + 1) = v41;
          _os_log_impl(&dword_20B517000, v33, v58, "Pending requests to intercept: %s", v42, 0xCu);
          v43 = v60;
          __swift_destroy_boxed_opaque_existential_1(v60);
          MEMORY[0x20F2F6A40](v43, -1, -1);
          MEMORY[0x20F2F6A40](v42, -1, -1);

          v68(v67, v69);
        }

        else
        {

          v68(v32, v69);
        }

        v50 = v70;
        v51 = v64;
        sub_20BE70750(v70, v64, type metadata accessor for NavigationRouterRequest);
        (*(v27 + 56))(v51, 0, 1, v26);
        swift_beginAccess();
        sub_20BE70A74(v51, v1 + v25);
        swift_endAccess();
        v52 = v62;
        sub_20BE70750(v50, v62, type metadata accessor for NavigationRouterRequest);
        v53 = (v63 + 16) & v61;
        v54 = swift_allocObject();
        sub_20BE707B8(v52, v54 + v53, type metadata accessor for NavigationRouterRequest);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
        v55 = sub_20C137CB4();
        v56 = swift_allocObject();
        *(v56 + 16) = sub_20BE70AD8;
        *(v56 + 24) = v54;

        v55(sub_20B52347C, v56);

        return sub_20BE70820(v50, type metadata accessor for NavigationRouterRequest);
      }

      else
      {
        sub_20C13B534();
        v44 = sub_20C13BB74();
        v45 = sub_20C13D1F4();
        if (os_log_type_enabled(v44, v45))
        {
          v46 = swift_slowAlloc();
          *v46 = 0;
          _os_log_impl(&dword_20B517000, v44, v45, "No pending requests to intercept", v46, 2u);
          MEMORY[0x20F2F6A40](v46, -1, -1);
        }

        result = (v68)(v18, v69);
        v47 = *(v1 + OBJC_IVAR____TtC9SeymourUI16NavigationRouter_onNavigationRouterIdle);
        if (v47)
        {
          v48 = *(v1 + OBJC_IVAR____TtC9SeymourUI16NavigationRouter_onNavigationRouterIdle + 8);

          v47(v49);
          return sub_20B583ECC(v47, v48);
        }
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20BE6E034@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a1;
  v31 = a2;
  v2 = type metadata accessor for NavigationRequest(0);
  v27 = *(v2 - 8);
  v3 = *(v27 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v26 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764770, &unk_20C180710);
  v4 = *(v30 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v30);
  v28 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v25 - v7;
  v9 = sub_20C13BB84();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  sub_20C13BB64();
  v13 = *(v10 + 8);
  v13(v12, v9);
  sub_20C13B534();
  sub_20C13BB64();
  v13(v12, v9);
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F970, &qword_20C180678);
  sub_20C137C94();
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = v26;
  sub_20BE70750(v29, v26, type metadata accessor for NavigationRequest);
  v16 = (*(v27 + 80) + 24) & ~*(v27 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v14;
  sub_20BE707B8(v15, v17 + v16, type metadata accessor for NavigationRequest);
  v18 = swift_allocObject();
  *(v18 + 16) = sub_20BE70D5C;
  *(v18 + 24) = v17;
  v19 = v28;
  v20 = v30;
  (*(v4 + 16))(v28, v8, v30);
  v21 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v22 = swift_allocObject();
  (*(v4 + 32))(v22 + v21, v19, v20);
  v23 = (v22 + ((v5 + v21 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v23 = sub_20BE70DDC;
  v23[1] = v18;
  sub_20C137C94();
  return (*(v4 + 8))(v8, v20);
}

uint64_t NavigationRouter.cancelAllRequests()()
{
  v0 = sub_20C13BB84();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  sub_20C13BB64();
  (*(v1 + 8))(v3, v0);
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F970, &qword_20C180678);
  return sub_20C137C94();
}

uint64_t sub_20BE6E608(char **a1, uint64_t a2, uint64_t a3)
{
  v53 = a3;
  v5 = type metadata accessor for NavigationRequest(0);
  v56 = *(v5 - 8);
  v6 = *(v56 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v55 = &v44 - v9;
  v54 = sub_20C13BB84();
  v49 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v45 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v50 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v52 = &v44 - v15;
  v48 = *a1;
  swift_beginAccess();
  v57 = a2;
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20C13B534();
    sub_20C13BB64();
    (*(v49 + 8))(v11, v54);
    v17 = swift_allocObject();
    swift_weakInit();
    v18 = v55;
    sub_20BE70750(v53, v55, type metadata accessor for NavigationRequest);
    v19 = (*(v56 + 80) + 24) & ~*(v56 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = v17;
    sub_20BE707B8(v18, v20 + v19, type metadata accessor for NavigationRequest);
    v21 = v52;
    sub_20C137C94();

    v22 = sub_20C137CB4();
    v23 = swift_allocObject();
    *(v23 + 16) = 0;
    *(v23 + 24) = 0;
    v22(sub_20B5DF6DC, v23);

    result = (*(v45 + 8))(v21, v12);
  }

  v24 = v45;
  v25 = v49;
  v51 = v12;
  v52 = v11;
  v53 = v6;
  v26 = *(v48 + 2);
  if (v26)
  {
    v27 = v56;
    v28 = *(v56 + 80);
    v29 = &v48[(v28 + 32) & ~v28];
    swift_beginAccess();
    v47 = (v25 + 8);
    v48 = "ocalSubscriberAccount()";
    v56 = *(v27 + 72);
    v49 = v28;
    v46 = (v28 + 24) & ~v28;
    v30 = (v24 + 8);
    do
    {
      sub_20BE70750(v29, v7, type metadata accessor for NavigationRequest);
      if (swift_weakLoadStrong())
      {
        v31 = v52;
        sub_20C13B534();
        sub_20C13BB64();
        (*v47)(v31, v54);
        v32 = swift_allocObject();
        swift_weakInit();
        v33 = v7;
        v34 = v7;
        v35 = v55;
        sub_20BE70750(v33, v55, type metadata accessor for NavigationRequest);
        v36 = v46;
        v37 = swift_allocObject();
        *(v37 + 16) = v32;
        v38 = v37 + v36;
        v39 = v35;
        v7 = v34;
        sub_20BE707B8(v39, v38, type metadata accessor for NavigationRequest);
        v40 = v50;
        sub_20C137C94();

        v41 = v51;
        v42 = sub_20C137CB4();
        v43 = swift_allocObject();
        *(v43 + 16) = 0;
        *(v43 + 24) = 0;
        v42(sub_20B5DF6DC, v43);

        (*v30)(v40, v41);
      }

      result = sub_20BE70820(v7, type metadata accessor for NavigationRequest);
      v29 += v56;
      --v26;
    }

    while (v26);
  }

  return result;
}

void sub_20BE6EC88(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v62 = a4;
  v65 = type metadata accessor for NavigationRouterRequest(0);
  v61 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v66 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v69 = &v58 - v9;
  v10 = type metadata accessor for NavigationRequest(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_20C13BB84();
  v63 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v14 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v58 - v20;
  v22 = swift_allocObject();
  *(v22 + 16) = a1;
  *(v22 + 24) = a2;
  swift_beginAccess();
  v68 = a3;
  Strong = swift_weakLoadStrong();

  if (Strong)
  {
    v24 = v62;
    sub_20BE6BD84(v62, v18);

    v60 = v16;
    v25 = *(v16 + 32);
    v67 = v15;
    v25(v21, v18, v15);
    sub_20C13B534();
    sub_20BE70750(v24, v12, type metadata accessor for NavigationRequest);
    v26 = sub_20C13BB74();
    v27 = sub_20C13D1F4();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v59 = v21;
      v30 = v29;
      v70 = v29;
      *v28 = 136446210;
      v31 = NavigationRequest.description.getter();
      v32 = v24;
      v34 = v33;
      sub_20BE70820(v12, type metadata accessor for NavigationRequest);
      v35 = sub_20B51E694(v31, v34, &v70);
      v24 = v32;

      *(v28 + 4) = v35;
      _os_log_impl(&dword_20B517000, v26, v27, "Adding %{public}s to processing queue...", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);
      v36 = v30;
      v21 = v59;
      MEMORY[0x20F2F6A40](v36, -1, -1);
      MEMORY[0x20F2F6A40](v28, -1, -1);
    }

    else
    {

      sub_20BE70820(v12, type metadata accessor for NavigationRequest);
    }

    (*(v63 + 8))(v14, v64);
    v39 = v66;
    v40 = v69;
    sub_20BE70750(v24, v69, type metadata accessor for NavigationRequest);
    v41 = v65;
    v42 = v60;
    v43 = v67;
    (*(v60 + 16))(v40 + *(v65 + 20), v21, v67);
    v44 = (v40 + *(v41 + 24));
    *v44 = sub_20B5D9B44;
    v44[1] = v22;
    swift_beginAccess();
    v45 = swift_weakLoadStrong();
    if (v45)
    {
      v46 = OBJC_IVAR____TtC9SeymourUI16NavigationRouter_pendingRequests;
      v47 = v45;
      swift_beginAccess();
      v48 = *(v47 + v46);

      v49 = *(v48 + 16);

      v50 = v49 == 0;
    }

    else
    {
      v50 = 0;
    }

    swift_beginAccess();
    v51 = swift_weakLoadStrong();
    if (v51)
    {
      v52 = v51;
      sub_20BE70750(v69, v39, type metadata accessor for NavigationRouterRequest);
      v53 = OBJC_IVAR____TtC9SeymourUI16NavigationRouter_pendingRequests;
      swift_beginAccess();
      v54 = *(v52 + v53);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v52 + v53) = v54;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v54 = sub_20BC08540(0, v54[2] + 1, 1, v54);
        *(v52 + v53) = v54;
      }

      v57 = v54[2];
      v56 = v54[3];
      if (v57 >= v56 >> 1)
      {
        v54 = sub_20BC08540((v56 > 1), v57 + 1, 1, v54);
      }

      v54[2] = v57 + 1;
      sub_20BE707B8(v39, v54 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v57, type metadata accessor for NavigationRouterRequest);
      *(v52 + v53) = v54;
      swift_endAccess();

      v43 = v67;
    }

    if (v50)
    {
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        sub_20BE6D7F4();
      }
    }

    sub_20BE70820(v69, type metadata accessor for NavigationRouterRequest);
    (*(v42 + 8))(v21, v43);
  }

  else
  {

    sub_20B5D9BA8();
    v37 = swift_allocError();
    *v38 = 11;
    v70 = v37;
    v71 = 1;
    a1(&v70);
  }
}

uint64_t NavigationRouter.deinit()
{
  sub_20BE70820(v0 + OBJC_IVAR____TtC9SeymourUI16NavigationRouter_state, type metadata accessor for NavigationRouter.State);
  sub_20B583E6C(v0 + OBJC_IVAR____TtC9SeymourUI16NavigationRouter_navigationController);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI16NavigationRouter_interceptionPresenter));

  sub_20B583ECC(*(v0 + OBJC_IVAR____TtC9SeymourUI16NavigationRouter_onNavigationRouterIdle), *(v0 + OBJC_IVAR____TtC9SeymourUI16NavigationRouter_onNavigationRouterIdle + 8));

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI16NavigationRouter_viewControllerFactory));
  return v0;
}

uint64_t NavigationRouter.__deallocating_deinit()
{
  NavigationRouter.deinit();

  return swift_deallocClassInstance();
}

double sub_20BE6F4D4(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v93 = *(v6 - 8);
  v94 = v6;
  MEMORY[0x28223BE20](v6);
  v90 = v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v91 = v87 - v9;
  v89 = v10;
  MEMORY[0x28223BE20](v11);
  v92 = v87 - v12;
  v13 = type metadata accessor for NavigationRouter.State(0);
  MEMORY[0x28223BE20](v13 - 8);
  v100 = v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for NavigationRouterRequest(0);
  v101 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v95 = v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = v87 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = v87 - v20;
  v22 = type metadata accessor for NavigationRequest(0);
  v99 = *(v22 - 8);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = v87 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = swift_allocObject();
  *(v25 + 16) = a1;
  *(v25 + 24) = a2;
  v102 = v25;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v27 = MEMORY[0x277D84F90];
  v103 = a3;
  if (Strong)
  {
    v28 = OBJC_IVAR____TtC9SeymourUI16NavigationRouter_pendingRequests;
    v29 = Strong;
    swift_beginAccess();
    v30 = *(v29 + v28);

    v31 = *(v30 + 16);
    if (v31)
    {
      v88 = v18;
      v97 = a2;
      v98 = a1;
      v105 = v27;
      sub_20BB5E930(0, v31, 0);
      v32 = v30;
      v33 = v105;
      v34 = *(v101 + 80);
      v87[1] = v32;
      v35 = v32 + ((v34 + 32) & ~v34);
      v36 = *(v101 + 72);
      v37 = v99;
      do
      {
        sub_20BE70750(v35, v21, type metadata accessor for NavigationRouterRequest);
        sub_20BE70750(v21, v24, type metadata accessor for NavigationRequest);
        sub_20BE70820(v21, type metadata accessor for NavigationRouterRequest);
        v105 = v33;
        v39 = *(v33 + 16);
        v38 = *(v33 + 24);
        if (v39 >= v38 >> 1)
        {
          sub_20BB5E930((v38 > 1), v39 + 1, 1);
          v37 = v99;
          v33 = v105;
        }

        *(v33 + 16) = v39 + 1;
        sub_20BE707B8(v24, v33 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v39, type metadata accessor for NavigationRequest);
        v35 += v36;
        --v31;
      }

      while (v31);

      a2 = v97;
      a1 = v98;
      v27 = MEMORY[0x277D84F90];
      v18 = v88;
    }

    else
    {

      v33 = MEMORY[0x277D84F90];
    }
  }

  else
  {

    v33 = 0;
  }

  swift_beginAccess();
  v40 = swift_weakLoadStrong();
  if (v40)
  {
    v41 = OBJC_IVAR____TtC9SeymourUI16NavigationRouter_pendingRequests;
    v42 = v40;
    swift_beginAccess();
    v43 = *(v42 + v41);

    v44 = *(v43 + 16);
    if (v44)
    {
      v97 = a2;
      v98 = a1;
      v45 = &v18[*(v96 + 24)];
      v46 = *(v101 + 80);
      v96 = v43;
      v47 = v43 + ((v46 + 32) & ~v46);
      v48 = *(v101 + 72);
      do
      {
        sub_20BE70750(v47, v18, type metadata accessor for NavigationRouterRequest);
        v49 = *v45;
        sub_20B5D9BA8();
        v50 = swift_allocError();
        *v51 = 2;
        v49(v50, 1);

        sub_20BE70820(v18, type metadata accessor for NavigationRouterRequest);
        v47 += v48;
        --v44;
      }

      while (v44);

      a1 = v98;
    }

    else
    {
    }

    v27 = MEMORY[0x277D84F90];
  }

  swift_beginAccess();
  v52 = swift_weakLoadStrong();
  if (v52)
  {
    v53 = OBJC_IVAR____TtC9SeymourUI16NavigationRouter_pendingRequests;
    v54 = v52;
    swift_beginAccess();
    *(v54 + v53) = v27;
  }

  swift_beginAccess();
  v55 = swift_weakLoadStrong();
  if (!v55)
  {

    goto LABEL_29;
  }

  v56 = OBJC_IVAR____TtC9SeymourUI16NavigationRouter_state;
  v57 = v55;
  swift_beginAccess();
  v58 = v57 + v56;
  v59 = v100;
  sub_20BE70750(v58, v100, type metadata accessor for NavigationRouter.State);

  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F968, &qword_20C180670);
  if ((*(*(v60 - 8) + 48))(v59, 1, v60) == 1)
  {

    sub_20BE70820(v59, type metadata accessor for NavigationRouter.State);
LABEL_29:
    if (!v33)
    {
      v33 = v27;
    }

    v105 = v33;
    v106 = 0;
    a1(&v105);

    return result;
  }

  v61 = v27;
  v62 = v95;
  sub_20BE707B8(v59, v95, type metadata accessor for NavigationRouterRequest);
  swift_beginAccess();
  v63 = swift_weakLoadStrong();
  if (!v63)
  {

    sub_20BE70820(v62, type metadata accessor for NavigationRouterRequest);
    v27 = v61;
    goto LABEL_29;
  }

  sub_20B51CC64(v63 + OBJC_IVAR____TtC9SeymourUI16NavigationRouter_interceptionPresenter, v104);

  sub_20B51C710(v104, &v105);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76AF88, &qword_20C16F2A0);
  v64 = (*(v99 + 80) + 32) & ~*(v99 + 80);
  v65 = swift_allocObject();
  *(v65 + 16) = xmmword_20C14F980;
  sub_20BE70750(v62, v65 + v64, type metadata accessor for NavigationRequest);
  if (v33)
  {
    v66 = v33;
  }

  else
  {
    v66 = v61;
  }

  *&v104[0] = v65;
  sub_20B8DBA98(v66);
  v67 = *&v104[0];
  v68 = v107;
  v69 = v108;
  __swift_project_boxed_opaque_existential_1(&v105, v107);
  v70 = v91;
  (*(v69 + 32))(v68, v69);
  v71 = swift_allocObject();
  v72 = v102;
  v71[2] = sub_20B7E9034;
  v71[3] = v72;
  v71[4] = v67;
  v73 = swift_allocObject();
  *(v73 + 16) = sub_20B6A4BF4;
  *(v73 + 24) = v71;
  v74 = swift_allocObject();
  *(v74 + 16) = sub_20B5DF3B8;
  *(v74 + 24) = v73;
  v76 = v93;
  v75 = v94;
  v77 = v90;
  (*(v93 + 16))(v90, v70, v94);
  v78 = (*(v76 + 80) + 16) & ~*(v76 + 80);
  v79 = (v89 + v78 + 7) & 0xFFFFFFFFFFFFFFF8;
  v80 = swift_allocObject();
  (*(v76 + 32))(v80 + v78, v77, v75);
  v81 = (v80 + v79);
  *v81 = sub_20B5DF3D4;
  v81[1] = v74;
  v82 = v92;
  sub_20C137C94();
  v83 = *(v76 + 8);
  v83(v70, v75);
  v84 = sub_20C137CB4();
  v85 = swift_allocObject();
  *(v85 + 16) = 0;
  *(v85 + 24) = 0;
  v84(sub_20B5DF6DC, v85);

  v83(v82, v75);
  sub_20BE70820(v62, type metadata accessor for NavigationRouterRequest);
  __swift_destroy_boxed_opaque_existential_1(&v105);
  return result;
}

uint64_t sub_20BE6FF58()
{
  v0 = sub_20C13BB84();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  sub_20C13BB64();
  (*(v1 + 8))(v3, v0);
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F970, &qword_20C180678);
  return sub_20C137C94();
}

uint64_t sub_20BE700C0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_20BE70138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v24[3] = a6;
  v24[4] = a8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a2, a6);
  v23[3] = a7;
  v23[4] = a9;
  v17 = __swift_allocate_boxed_opaque_existential_1(v23);
  (*(*(a7 - 8) + 32))(v17, a4, a7);
  *(a5 + OBJC_IVAR____TtC9SeymourUI16NavigationRouter_navigationController + 8) = 0;
  swift_unknownObjectWeakInit();
  v18 = (a5 + OBJC_IVAR____TtC9SeymourUI16NavigationRouter_onNavigationRouterIdle);
  *v18 = 0;
  v18[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00, &unk_20C14FB50);
  sub_20C133AA4();
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(a5 + OBJC_IVAR____TtC9SeymourUI16NavigationRouter_subscriptionToken) = sub_20C13A914();
  v19 = OBJC_IVAR____TtC9SeymourUI16NavigationRouter_state;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F968, &qword_20C180670);
  (*(*(v20 - 8) + 56))(a5 + v19, 1, 1, v20);
  sub_20B51CC64(v23, a5 + OBJC_IVAR____TtC9SeymourUI16NavigationRouter_viewControllerFactory);
  *(a5 + OBJC_IVAR____TtC9SeymourUI16NavigationRouter_dependencies) = a1;
  sub_20B51CC64(v24, a5 + OBJC_IVAR____TtC9SeymourUI16NavigationRouter_interceptionPresenter);
  *(a5 + OBJC_IVAR____TtC9SeymourUI16NavigationRouter_interceptionChain) = a3;
  *(a5 + OBJC_IVAR____TtC9SeymourUI16NavigationRouter_pendingRequests) = MEMORY[0x277D84F90];
  swift_getObjectType();
  type metadata accessor for NavigationRequested(0);
  swift_allocObject();
  swift_weakInit();
  sub_20BE7178C(&unk_27C7706F0, type metadata accessor for NavigationRequested, &protocol conformance descriptor for NavigationRequested);

  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(&v22);
  sub_20C139244();
  swift_allocObject();
  swift_weakInit();
  sub_20BE7178C(qword_27C76F9B8, MEMORY[0x277D542E8], MEMORY[0x277D542D8]);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(&v22);
  sub_20C13B324();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A784();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(&v22);
  __swift_destroy_boxed_opaque_existential_1(v23);
  __swift_destroy_boxed_opaque_existential_1(v24);
  return a5;
}

uint64_t sub_20BE7057C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v25 = a3;
  v26 = a8;
  v24 = a1;
  v13 = *(a7 - 8);
  MEMORY[0x28223BE20](a1);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v23 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NavigationRouter(0);
  v21 = swift_allocObject();
  (*(v17 + 16))(v20, a2, a6);
  (*(v13 + 16))(v15, a4, a7);
  return sub_20BE70138(v24, v20, v25, v15, v21, a6, a7, v26, a9);
}

uint64_t sub_20BE70750(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20BE707B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20BE70820(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20BE708B0(uint64_t a1)
{
  result = type metadata accessor for NavigationRouter.State(319);
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

uint64_t sub_20BE709D4(uint64_t a1)
{
  sub_20BE70A2C();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_20BE70A2C()
{
  if (!qword_27C76F9B0)
  {
    v0 = type metadata accessor for NavigationRouterRequest(0);
    if (!v1)
    {
      atomic_store(v0, &qword_27C76F9B0);
    }
  }
}

uint64_t sub_20BE70A74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NavigationRouter.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_20BE70AD8(uint64_t *a1)
{
  v3 = *(type metadata accessor for NavigationRouterRequest(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_20BD957A0(a1, v4);
}

uint64_t sub_20BE70C0C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for NavigationRequest(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_20BE6CDF4(a1, v2 + v6, v7, a2);
}

double sub_20BE70CB8(uint64_t a1)
{
  v3 = *(type metadata accessor for NavigationRequest(0) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_20BE6D1C0(a1, v4, v5);
}

uint64_t sub_20BE70E0C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t objectdestroy_2Tm_5()
{
  v1 = type metadata accessor for NavigationRequest(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = (v0 + v3);
  type metadata accessor for NavigationResource(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 7u:
    case 8u:
    case 0xBu:
    case 0xDu:
      goto LABEL_2;
    case 1u:
      v9 = sub_20C132C14();
      (*(*(v9 - 8) + 8))(v0 + v3, v9);
      v7 = &unk_27C763FC0;
      v8 = &unk_20C155B00;
      goto LABEL_17;
    case 2u:
      v10 = sub_20C138894();
      goto LABEL_11;
    case 3u:

      goto LABEL_2;
    case 4u:
      v17 = sub_20C1387E4();
      (*(*(v17 - 8) + 8))(v0 + v3, v17);
      v7 = &qword_27C7710E0;
      v8 = &unk_20C15F290;
      goto LABEL_17;
    case 5u:

      break;
    case 6u:
      v6 = sub_20C138894();
      (*(*(v6 - 8) + 8))(v0 + v3, v6);
      v7 = &qword_27C763FD0;
      v8 = &unk_20C155B10;
LABEL_17:
      v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v7, v8) + 48);
      v19 = sub_20C1388F4();
      (*(*(v19 - 8) + 8))(v5 + v18, v19);
      break;
    case 9u:
      v10 = sub_20C132C14();
      goto LABEL_11;
    case 0xCu:

      break;
    case 0xEu:

      goto LABEL_2;
    case 0xFu:
      v10 = sub_20C138204();
LABEL_11:
      (*(*(v10 - 8) + 8))(v0 + v3, v10);
      break;
    case 0x10u:
      type metadata accessor for WorkoutNavigationResource(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v11 = sub_20C1344C4();
        (*(*(v11 - 8) + 8))(v0 + v3, v11);
        v12 = type metadata accessor for WorkoutSessionConfiguration(0);
        v13 = v12[5];
        v14 = sub_20C137254();
        (*(*(v14 - 8) + 8))(v5 + v13, v14);
        v15 = v12[7];
        sub_20C13A484();
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v16 = sub_20C137EA4();
          (*(*(v16 - 8) + 8))(v5 + v15, v16);
        }

        else
        {
        }

        v36 = v12[9];
        v37 = sub_20C13BA24();
        v38 = *(v37 - 8);
        if (!(*(v38 + 48))(v5 + v36, 1, v37))
        {
          (*(v38 + 8))(v5 + v36, v37);
        }

        v39 = v12[10];
        v40 = sub_20C134A44();
        v41 = *(v40 - 8);
        if (!(*(v41 + 48))(v5 + v39, 1, v40))
        {
          (*(v41 + 8))(v5 + v39, v40);
        }

        if (*(v5 + v12[11] + 8) >= 0xC)
        {
        }

        v42 = v12[12];
        v43 = sub_20C135C54();
        v44 = *(v43 - 8);
        if (!(*(v44 + 48))(v5 + v42, 1, v43))
        {
          (*(v44 + 8))(v5 + v42, v43);
        }
      }

LABEL_2:

      break;
    default:
      break;
  }

  v20 = v5 + *(v1 + 20);
  type metadata accessor for NavigationIntent(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 5:

      v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E4C0, "\b\b\t") + 80);
      v24 = sub_20C1344C4();
      v25 = *(v24 - 8);
      if (!(*(v25 + 48))(&v20[v23], 1, v24))
      {
        (*(v25 + 8))(&v20[v23], v24);
      }

      break;
    case 4:

      break;
    case 3:
      v22 = sub_20C139144();
      (*(*(v22 - 8) + 8))(v20, v22);
      break;
  }

  v26 = v5 + *(v1 + 24);
  type metadata accessor for NavigationSource(0);
  v27 = swift_getEnumCaseMultiPayload();
  if (v27 == 1)
  {
    v35 = sub_20C135024();
    (*(*(v35 - 8) + 8))(v26, v35);
  }

  else if (!v27)
  {
    v46 = v2;
    v28 = v0;
    v29 = v3;
    v30 = v4;
    v31 = sub_20C132C14();
    v32 = *(v31 - 8);
    v33 = *(v32 + 8);
    v33(v26, v31);
    v34 = *(type metadata accessor for NavigationSharingURLInfo(0) + 20);
    if (!(*(v32 + 48))(&v26[v34], 1, v31))
    {
      v33(&v26[v34], v31);
    }

    v4 = v30;
    v3 = v29;
    v0 = v28;
    v2 = v46;
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

void sub_20BE716A8(void (*a1)(uint64_t *), uint64_t a2)
{
  v5 = *(type metadata accessor for NavigationRequest(0) - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  sub_20BE6EC88(a1, a2, v6, v7);
}

uint64_t sub_20BE7178C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20BE7183C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_20C13D914();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_20BE718C8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = v8;
  v10 = *(v8 + 84);
  if (v10)
  {
    v11 = v10 - 1;
  }

  else
  {
    v11 = 0;
  }

  if (v11 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = v11;
  }

  v13 = *(v8 + 80);
  if (v10)
  {
    v14 = *(*(v7 - 8) + 64);
  }

  else
  {
    v14 = *(*(v7 - 8) + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v15 = *(*(*(a3 + 16) - 8) + 64) + v13;
  v16 = a2 - v12;
  if (a2 <= v12)
  {
    goto LABEL_34;
  }

  v17 = ((v14 + v13 + (v15 & ~v13)) & ~v13) + v14;
  v18 = 8 * v17;
  if (v17 <= 3)
  {
    v20 = ((v16 + ~(-1 << v18)) >> v18) + 1;
    if (HIWORD(v20))
    {
      v19 = *(a1 + v17);
      if (!v19)
      {
        goto LABEL_33;
      }

      goto LABEL_20;
    }

    if (v20 > 0xFF)
    {
      v19 = *(a1 + v17);
      if (!*(a1 + v17))
      {
        goto LABEL_33;
      }

      goto LABEL_20;
    }

    if (v20 < 2)
    {
LABEL_33:
      if (v12)
      {
LABEL_34:
        if (v6 >= v11)
        {
          v26 = *(v5 + 48);

          return v26();
        }

        else
        {
          v24 = (*(v9 + 48))((a1 + v15) & ~v13, v10, v7, v5);
          if (v24 >= 2)
          {
            return v24 - 1;
          }

          else
          {
            return 0;
          }
        }
      }

      return 0;
    }
  }

  v19 = *(a1 + v17);
  if (!*(a1 + v17))
  {
    goto LABEL_33;
  }

LABEL_20:
  v21 = (v19 - 1) << v18;
  if (v17 > 3)
  {
    v21 = 0;
  }

  if (v17)
  {
    if (v17 <= 3)
    {
      v22 = v17;
    }

    else
    {
      v22 = 4;
    }

    if (v22 > 2)
    {
      if (v22 == 3)
      {
        v23 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v23 = *a1;
      }
    }

    else if (v22 == 1)
    {
      v23 = *a1;
    }

    else
    {
      v23 = *a1;
    }
  }

  else
  {
    v23 = 0;
  }

  return v12 + (v23 | v21) + 1;
}

void sub_20BE71AF0(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(*(a4 + 24) - 8);
  v9 = *(v8 + 84);
  v10 = *(v6 + 64);
  v11 = *(v8 + 80);
  v12 = v9 - 1;
  if (!v9)
  {
    v12 = 0;
  }

  if (v12 <= v7)
  {
    v13 = *(v6 + 84);
  }

  else
  {
    v13 = v12;
  }

  v14 = v10 + v11;
  v15 = (v10 + v11) & ~v11;
  if (v9)
  {
    v16 = *(v8 + 64);
  }

  else
  {
    v16 = *(v8 + 64) + 1;
  }

  v17 = ((v16 + v11 + v15) & ~v11) + v16;
  v18 = a3 >= v13;
  v19 = a3 - v13;
  if (v19 == 0 || !v18)
  {
LABEL_21:
    if (v13 < a2)
    {
      goto LABEL_22;
    }

    goto LABEL_31;
  }

  if (v17 > 3)
  {
    v5 = 1;
    if (v13 < a2)
    {
      goto LABEL_22;
    }

    goto LABEL_31;
  }

  v20 = ((v19 + ~(-1 << (8 * v17))) >> (8 * v17)) + 1;
  if (!HIWORD(v20))
  {
    if (v20 < 0x100)
    {
      v21 = 1;
    }

    else
    {
      v21 = 2;
    }

    if (v20 >= 2)
    {
      v5 = v21;
    }

    else
    {
      v5 = 0;
    }

    goto LABEL_21;
  }

  v5 = 4;
  if (v13 < a2)
  {
LABEL_22:
    v22 = ~v13 + a2;
    if (v17 < 4)
    {
      v24 = (v22 >> (8 * v17)) + 1;
      if (v17)
      {
        v25 = v22 & ~(-1 << (8 * v17));
        v26 = a1;
        bzero(a1, v17);
        a1 = v26;
        if (v17 != 3)
        {
          if (v17 == 2)
          {
            *v26 = v25;
            if (v5 > 1)
            {
LABEL_63:
              if (v5 == 2)
              {
                *&a1[v17] = v24;
              }

              else
              {
                *&a1[v17] = v24;
              }

              return;
            }
          }

          else
          {
            *v26 = v22;
            if (v5 > 1)
            {
              goto LABEL_63;
            }
          }

          goto LABEL_60;
        }

        *v26 = v25;
        v26[2] = BYTE2(v25);
      }

      if (v5 > 1)
      {
        goto LABEL_63;
      }
    }

    else
    {
      v23 = a1;
      bzero(a1, v17);
      a1 = v23;
      *v23 = v22;
      v24 = 1;
      if (v5 > 1)
      {
        goto LABEL_63;
      }
    }

LABEL_60:
    if (v5)
    {
      a1[v17] = v24;
    }

    return;
  }

LABEL_31:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&a1[v17] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *&a1[v17] = 0;
LABEL_37:
    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (!v5)
  {
    goto LABEL_37;
  }

  a1[v17] = 0;
  if (!a2)
  {
    return;
  }

LABEL_38:
  if (v7 >= v12)
  {
    v31 = *(v6 + 56);

    v31();
  }

  else
  {
    v27 = &a1[v14] & ~v11;
    if (v12 >= a2)
    {
      v32 = *(v8 + 56);
      v33 = a2 + 1;
      v34 = &a1[v14] & ~v11;

      v32(v34, v33);
    }

    else
    {
      if (v16 <= 3)
      {
        v28 = ~(-1 << (8 * v16));
      }

      else
      {
        v28 = -1;
      }

      if (v16)
      {
        v29 = v28 & (~v12 + a2);
        if (v16 <= 3)
        {
          v30 = v16;
        }

        else
        {
          v30 = 4;
        }

        bzero((&a1[v14] & ~v11), v16);
        if (v30 > 2)
        {
          if (v30 == 3)
          {
            *v27 = v29;
            *(v27 + 2) = BYTE2(v29);
          }

          else
          {
            *v27 = v29;
          }
        }

        else if (v30 == 1)
        {
          *v27 = v29;
        }

        else
        {
          *v27 = v29;
        }
      }
    }
  }
}

void sub_20BE71E6C()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI30UpNextQueueGalleryDataProvider_page);
  v2 = OBJC_IVAR____TtC9SeymourUI11CatalogPage_dataSource;
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_dataSource);
  if (v3)
  {
    v4 = v3;

    v5 = sub_20C13BF64();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76FA50, &qword_20C180868);
    sub_20C13BF54();
    v5(v9, 0);

    v6 = *(v1 + v2);
    if (v6)
    {

      v7 = v6;
      v8 = sub_20C13BF64();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76FA50, &qword_20C180868);
      sub_20C13BF44();
      v8(v9, 0);
    }
  }
}

uint64_t sub_20BE71FB8(unint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762550, &unk_20C1505A0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v14 - v3;
  v5 = type metadata accessor for ShelfCellItemInfo(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C0C4A10(a1, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_20B520158(v4, &qword_27C762550, &unk_20C1505A0);
    v9 = 0;
  }

  else
  {
    sub_20BE77260(v4, v8, type metadata accessor for ShelfCellItemInfo);
    v10 = *(v8 + 4);
    ObjectType = swift_getObjectType();
    v12 = sub_20C133224();
    v9 = (*(v10 + 56))(v12, ObjectType, v10);
    sub_20BE77330(v8, type metadata accessor for ShelfCellItemInfo);
  }

  return v9 & 1;
}

void sub_20BE7218C(unint64_t a1, unint64_t a2)
{
  v8 = type metadata accessor for ShelfIndexedLazyLockup(0) - 8;
  MEMORY[0x28223BE20](v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v17 - v13;
  if (a1 != a2)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v3 = *v2;
      v5 = *(*v2 + 16);
      if (v5 > a1)
      {
        v4 = (*(v12 + 80) + 32) & ~*(v12 + 80);
        v15 = *(v12 + 72);
        a1 *= v15;
        sub_20BE772C8(v3 + v4 + a1, &v17 - v13, type metadata accessor for ShelfIndexedLazyLockup);
        if (v5 > a2)
        {
          v5 = v15 * a2;
          sub_20BE772C8(v3 + v4 + v15 * a2, v10, type metadata accessor for ShelfIndexedLazyLockup);
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            goto LABEL_6;
          }

          goto LABEL_12;
        }

LABEL_11:
        __break(1u);
LABEL_12:
        v3 = sub_20BF90954(v3);
LABEL_6:
        v16 = v3 + v4;
        sub_20BE771FC(v10, &v16[a1]);
        if (v3[2] <= a2)
        {
          __break(1u);
        }

        else
        {
          sub_20BE771FC(v14, &v16[v5]);
          *v2 = v3;
        }

        return;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_20BE7233C()
{
  v0 = sub_20C1391E4();
  v1 = *(v0 - 8);
  v88 = v0;
  v89 = v1;
  MEMORY[0x28223BE20](v0);
  v87 = &v66 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_20C134C44();
  MEMORY[0x28223BE20](v3 - 8);
  v86 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C70, &unk_20C153C40);
  MEMORY[0x28223BE20](v5 - 8);
  v85 = &v66 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7678F0, &unk_20C157210);
  MEMORY[0x28223BE20](v7 - 8);
  v83 = &v66 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C80, &unk_20C153C50);
  MEMORY[0x28223BE20](v9 - 8);
  v80 = &v66 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767900, &unk_20C157220);
  MEMORY[0x28223BE20](v11 - 8);
  v77 = &v66 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C90, &unk_20C153C60);
  MEMORY[0x28223BE20](v13 - 8);
  v76 = &v66 - v14;
  v15 = sub_20C135D24();
  v74 = *(v15 - 8);
  v75 = v15;
  MEMORY[0x28223BE20](v15);
  v73 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_20C134F74();
  v81 = *(v17 - 8);
  v82 = v17;
  MEMORY[0x28223BE20](v17);
  v79 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v78 = &v66 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC90, &unk_20C1586D0);
  MEMORY[0x28223BE20](v21 - 8);
  v72 = &v66 - v22;
  v71 = sub_20C1352E4();
  v69 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v68 = &v66 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0, &unk_20C14D9B0);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v66 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0, &unk_20C151A10);
  MEMORY[0x28223BE20](v27 - 8);
  v29 = &v66 - v28;
  v30 = sub_20C134F24();
  v31 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v33 = &v66 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622E0, &unk_20C14FCF0);
  MEMORY[0x28223BE20](v34 - 8);
  v36 = &v66 - v35;
  v67 = sub_20C133654();
  v70 = *(v67 - 8);
  v37 = v70;
  MEMORY[0x28223BE20](v67);
  v90 = &v66 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_20C136664();
  (*(*(v39 - 8) + 56))(v36, 1, 1, v39);
  (*(v31 + 104))(v33, *MEMORY[0x277D513F8], v30);
  v40 = sub_20C132C14();
  (*(*(v40 - 8) + 56))(v29, 1, 1, v40);
  sub_20C134D74();
  v41 = *MEMORY[0x277D52408];
  v42 = sub_20C135ED4();
  v43 = *(v42 - 8);
  (*(v43 + 104))(v26, v41, v42);
  (*(v43 + 56))(v26, 0, 1, v42);
  (*(v69 + 104))(v68, *MEMORY[0x277D51768], v71);
  v44 = sub_20C136E94();
  (*(*(v44 - 8) + 56))(v72, 1, 1, v44);
  v45 = v90;
  sub_20C133644();
  v46 = *(v37 + 16);
  v47 = v73;
  v48 = v67;
  v46(v73, v45, v67);
  (*(v74 + 104))(v47, *MEMORY[0x277D52120], v75);
  v49 = OBJC_IVAR____TtC9SeymourUI30UpNextQueueGalleryDataProvider_metricPage;
  v50 = sub_20C1333A4();
  v51 = *(v50 - 8);
  v52 = v76;
  (*(v51 + 16))(v76, v84 + v49, v50);
  (*(v51 + 56))(v52, 0, 1, v50);
  v53 = sub_20C135664();
  (*(*(v53 - 8) + 56))(v77, 1, 1, v53);
  v54 = sub_20C135674();
  (*(*(v54 - 8) + 56))(v80, 1, 1, v54);
  v55 = v83;
  sub_20C134F94();
  v56 = sub_20C134FB4();
  (*(*(v56 - 8) + 56))(v55, 0, 1, v56);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766CA0, &qword_20C157230);
  (*(*(v57 - 8) + 56))(v85, 1, 1, v57);
  v58 = sub_20C135F14();
  (*(*(v58 - 8) + 56))(v86, 1, 1, v58);
  v59 = v78;
  sub_20C134F54();
  v61 = v81;
  v60 = v82;
  (*(v81 + 16))(v79, v59, v82);
  v62 = v87;
  sub_20C1391F4();
  swift_getObjectType();
  sub_20BC5D0C8(&qword_281103B30, MEMORY[0x277D542C0], MEMORY[0x277D542B8]);
  v63 = v62;
  v64 = v88;
  sub_20C13A764();
  (*(v89 + 8))(v63, v64);
  (*(v61 + 8))(v59, v60);
  return (*(v70 + 8))(v90, v48);
}

uint64_t sub_20BE72EFC()
{
  v1[13] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768680, &unk_20C155C90);
  v1[14] = v2;
  v3 = *(v2 - 8);
  v1[15] = v3;
  v1[16] = *(v3 + 64);
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BE72FE8, 0, 0);
}

uint64_t sub_20BE72FE8()
{
  v1 = *(v0 + 144);
  v19 = *(v0 + 152);
  v3 = *(v0 + 128);
  v2 = *(v0 + 136);
  v4 = *(v0 + 112);
  v5 = *(v0 + 120);
  v6 = *(v0 + 104);
  __swift_project_boxed_opaque_existential_1((v6 + OBJC_IVAR____TtC9SeymourUI30UpNextQueueGalleryDataProvider_upNextQueueClient), *(v6 + OBJC_IVAR____TtC9SeymourUI30UpNextQueueGalleryDataProvider_upNextQueueClient + 24));
  sub_20C139724();
  v7 = *__swift_project_boxed_opaque_existential_1((v6 + 56), *(v6 + 80));
  *(v0 + 40) = type metadata accessor for ContentAvailabilityFilter();
  *(v0 + 48) = &off_2822C8E88;
  *(v0 + 16) = v7;
  sub_20B51CC64(v0 + 16, v0 + 56);
  v8 = swift_allocObject();
  sub_20B51C710((v0 + 56), v8 + 16);

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v9 = swift_allocObject();
  *(v9 + 16) = sub_20BE77390;
  *(v9 + 24) = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_20B8404CC;
  *(v10 + 24) = v9;
  (*(v5 + 16))(v2, v1, v4);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  (*(v5 + 32))(v12 + v11, v2, v4);
  v13 = (v12 + ((v3 + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v13 = sub_20B8404D4;
  v13[1] = v10;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766750, &unk_20C15EF50);
  sub_20C137C94();
  v15 = *(v5 + 8);
  *(v0 + 160) = v15;
  *(v0 + 168) = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v15(v1, v4);
  v16 = swift_task_alloc();
  *(v0 + 176) = v16;
  *(v16 + 16) = "SeymourUI/UpNextQueueGalleryDataProvider.swift";
  *(v16 + 24) = 46;
  *(v16 + 32) = 2;
  *(v16 + 40) = 93;
  *(v16 + 48) = v19;
  v17 = swift_task_alloc();
  *(v0 + 184) = v17;
  *v17 = v0;
  v17[1] = sub_20BE732FC;

  return MEMORY[0x2822008A0](v0 + 96, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20BE77398, v16, v14);
}

uint64_t sub_20BE732FC()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_20BE734B4, 0, 0);
  }

  else
  {
    v4 = v2[20];
    v5 = v2[19];
    v6 = v2[14];
    v7 = v2[12];

    v4(v5, v6);

    v8 = v3[1];

    return v8(v7);
  }
}

uint64_t sub_20BE734B4()
{
  (*(v0 + 160))(*(v0 + 152), *(v0 + 112));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20BE73548(uint64_t a1, void *a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_20B51CC64(a1, v7);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  sub_20B51C710(v7, v4 + 24);
  v5 = swift_allocObject();
  *(v5 + 16) = "SeymourUI/ContentAvailabilityFilter.swift";
  *(v5 + 24) = 41;
  *(v5 + 32) = 2;
  *(v5 + 40) = 25;
  *(v5 + 48) = &unk_20C15D270;
  *(v5 + 56) = v4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766750, &unk_20C15EF50);
  return sub_20C137C94();
}

uint64_t sub_20BE73650(char a1)
{
  v44 = type metadata accessor for PageMetricAction(0) - 8;
  MEMORY[0x28223BE20](v44);
  v43 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0, &unk_20C151A10);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v40 - v4;
  v41 = &v40 - v4;
  v6 = sub_20C134F24();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622E0, &unk_20C14FCF0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v40 - v11;
  v13 = type metadata accessor for ShelfMetricAction(0);
  v14 = (v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_20C136664();
  (*(*(v17 - 8) + 56))(v12, 1, 1, v17);
  (*(v7 + 104))(v9, **(&unk_277D98178 + a1), v6);
  v18 = sub_20C132C14();
  (*(*(v18 - 8) + 56))(v5, 1, 1, v18);
  v42 = *&aSavestacclears[8 * a1];
  v40 = *&aSavestacclears[8 * a1 + 24];
  v19 = v14[10];
  v20 = *MEMORY[0x277D523D8];
  v21 = sub_20C135ED4();
  v22 = *(v21 - 8);
  (*(v22 + 104))(&v16[v19], v20, v21);
  (*(v22 + 56))(&v16[v19], 0, 1, v21);
  v23 = v14[12];
  v24 = *MEMORY[0x277D51768];
  v25 = sub_20C1352E4();
  (*(*(v25 - 8) + 104))(&v16[v23], v24, v25);
  v26 = v14[13];
  v27 = sub_20C136E94();
  v28 = &v16[v26];
  v29 = v43;
  (*(*(v27 - 8) + 56))(v28, 1, 1, v27);
  v30 = MEMORY[0x277D84F90];
  v31 = sub_20B6B29D4(MEMORY[0x277D84F90]);
  sub_20B5DF134(v12, v16, &unk_27C7622E0, &unk_20C14FCF0);
  (*(v7 + 32))(&v16[v14[7]], v9, v6);
  sub_20B5DF134(v41, &v16[v14[8]], &unk_27C7617F0, &unk_20C151A10);
  v32 = &v16[v14[9]];
  v33 = v40;
  *v32 = v42;
  *(v32 + 1) = v33;
  v34 = &v16[v14[11]];
  *v34 = 0;
  *(v34 + 1) = 0;
  *&v16[v14[14]] = v31;
  sub_20BE772C8(v16, v29 + *(v44 + 28), type metadata accessor for ShelfMetricAction);
  *v29 = v30;
  v35 = *(v45 + OBJC_IVAR____TtC9SeymourUI30UpNextQueueGalleryDataProvider_page);
  v36 = v35 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v37 = *(v36 + 8);
    ObjectType = swift_getObjectType();
    (*(v37 + 160))(v35, v29, ObjectType, v37);
    swift_unknownObjectRelease();
  }

  sub_20BE77330(v29, type metadata accessor for PageMetricAction);
  return sub_20BE77330(v16, type metadata accessor for ShelfMetricAction);
}

char *sub_20BE73B90()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtC9SeymourUI30UpNextQueueGalleryDataProvider_metricPage;
  v2 = sub_20C1333A4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI30UpNextQueueGalleryDataProvider_storefrontLocalizer));

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI30UpNextQueueGalleryDataProvider_upNextQueueClient));
  return v0;
}

uint64_t sub_20BE73C50()
{
  sub_20BE73B90();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for UpNextQueueGalleryDataProvider(uint64_t a1)
{
  result = qword_27C76FA40;
  if (!qword_27C76FA40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20BE73CFC(uint64_t a1)
{
  result = sub_20C1333A4();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

void sub_20BE73DF0()
{
  if ((*(*v0 + OBJC_IVAR____TtC9SeymourUI30UpNextQueueGalleryDataProvider_activationState) & 1) == 0)
  {
    *(*v0 + OBJC_IVAR____TtC9SeymourUI30UpNextQueueGalleryDataProvider_activationState) = 1;
  }
}

uint64_t sub_20BE73E10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[33] = a4;
  v5[34] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v5[35] = v6;
  v5[36] = *(v6 - 8);
  v5[37] = swift_task_alloc();
  v7 = sub_20C1351C4();
  v5[38] = v7;
  v5[39] = *(v7 - 8);
  v5[40] = swift_task_alloc();
  v5[41] = swift_task_alloc();
  v5[42] = *(type metadata accessor for ShelfIndexedLazyLockup(0) - 8);
  v5[43] = swift_task_alloc();
  v5[44] = swift_task_alloc();
  v5[45] = swift_task_alloc();
  v5[46] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762AC0, &qword_20C14FC90);
  v5[47] = swift_task_alloc();
  v5[48] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766758, &unk_20C15D280);
  v5[49] = swift_task_alloc();
  v5[50] = swift_task_alloc();
  v5[51] = swift_task_alloc();
  v5[52] = swift_task_alloc();
  v5[53] = swift_task_alloc();
  v5[54] = swift_task_alloc();
  v8 = sub_20C134B14();
  v5[55] = v8;
  v5[56] = *(v8 - 8);
  v5[57] = swift_task_alloc();
  v5[58] = swift_task_alloc();
  v5[59] = swift_task_alloc();
  v5[60] = swift_task_alloc();
  v5[61] = swift_task_alloc();
  v5[62] = swift_task_alloc();
  v5[63] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76FA60, &qword_20C180898);
  v5[64] = swift_task_alloc();
  v5[65] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76FA68, &qword_20C1808A0);
  v5[66] = v9;
  v5[67] = *(v9 - 8);
  v5[68] = swift_task_alloc();
  v5[69] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76FA70, &qword_20C1808A8);
  v5[70] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BE741F4, 0, 0);
}

uint64_t sub_20BE741F4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[71] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[72] = v2;
    *v2 = v0;
    v2[1] = sub_20BE74424;

    return sub_20BE72EFC();
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_20BE74424(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 584) = a1;
  *(v3 + 592) = v1;

  if (v1)
  {
    v4 = sub_20BE76038;
  }

  else
  {

    v4 = sub_20BE74544;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_20BE74544()
{
  v1 = v0[70];
  v2 = v0[69];
  v3 = v0[68];
  v4 = v0[67];
  v5 = v0[66];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76FA58, &unk_20C180870);
  MEMORY[0x20F2F3670](v6);
  (*(v4 + 16))(v1, v3, v5);
  v7 = *(v2 + 36);
  sub_20BE77128();
  sub_20C13D024();
  (*(v4 + 8))(v3, v5);
  v8 = v0;
  sub_20C13D074();
  v155 = v1;
  v158 = v0;
  if (*(v1 + v7) == v0[32])
  {
    v144 = 0;
    v9 = 0;
  }

  else
  {
    v9 = 0;
    v144 = 0;
    do
    {
      while (1)
      {
        v156 = v9;
        v10 = v8[65];
        v11 = v0[64];
        v12 = sub_20C13D0A4();
        sub_20BE7718C(v13, v10);
        v12(v0 + 7, 0);
        sub_20C13D084();
        sub_20B5DF134(v10, v11, &qword_27C76FA60, &qword_20C180898);
        LODWORD(v10) = swift_getEnumCaseMultiPayload();
        v14 = v0[64];
        v15 = *v14;
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76FA80, &unk_20C1808B0);
        sub_20BE77330(v14 + *(v16 + 48), type metadata accessor for ShelfDiffableItemIdentifier);
        v8 = v0;
        sub_20C13D074();
        v17 = *(v155 + v7);
        v18 = v0[32];
        if (v10 == 1)
        {
          break;
        }

        v144 = v15;
        v9 = v156;
        if (v17 == v18)
        {
          goto LABEL_8;
        }
      }

      v9 = v15;
    }

    while (v17 != v18);
    v9 = v15;
  }

LABEL_8:
  v157 = v9;
  v19 = v8[73];
  sub_20B520158(v8[70], &qword_27C76FA70, &qword_20C1808A8);
  v20 = *(v19 + 16);
  v154 = v19;

  v149 = v20;
  if (!v20)
  {
LABEL_13:
    swift_bridgeObjectRelease_n();
LABEL_14:

    v44 = v8[1];

    return v44();
  }

  v29 = 0;
  v152 = v8[48];
  v147 = v8[56];
  v30 = &qword_27C766758;
  while (1)
  {
    if (v29 >= *(v154 + 16))
    {
      __break(1u);
LABEL_94:
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
      __break(1u);
LABEL_107:
      __break(1u);
LABEL_108:
      __break(1u);
LABEL_109:
      __break(1u);
LABEL_110:
      __break(1u);
LABEL_111:
      __break(1u);
LABEL_112:
      __break(1u);
LABEL_113:
      __break(1u);
LABEL_114:
      __break(1u);
LABEL_115:
      __break(1u);
LABEL_116:
      __break(1u);
LABEL_117:
      __break(1u);
LABEL_118:
      __break(1u);
      goto LABEL_119;
    }

    v145 = *(v154 + 16);
    v31 = v8[73];
    v32 = v8[55];
    v33 = v30;
    v34 = v8;
    v37 = v8 + 52;
    v36 = v8[52];
    v35 = v37[1];
    v38 = (*(v147 + 80) + 32) & ~*(v147 + 80);
    v39 = v31 + v38;
    v40 = *(v147 + 72);
    v41 = *(v152 + 48);
    *v35 = v29;
    v42 = *(v147 + 16);
    v42(v35 + v41, v31 + v38 + v40 * v29, v32);
    v43 = v35;
    v30 = v33;
    sub_20B5DF134(v43, v36, v33, &unk_20C15D280);
    if (*v36 == v157)
    {
      break;
    }

    ++v29;
    Strong = sub_20B520158(v34[52], v33, &unk_20C15D280);
    v8 = v34;
    if (v149 == v29)
    {
      goto LABEL_13;
    }
  }

  v134 = v31;
  v135 = v38;
  v46 = v34[61];
  v150 = v34[62];
  v48 = v34[55];
  v47 = v34[56];
  v49 = v34[54];
  sub_20B5DF134(v34[52], v49, &qword_27C766758, &unk_20C15D280);
  v50 = *(v47 + 32);
  v50(v46, v49 + *(v152 + 48), v48);
  v51 = v48;
  v52 = &qword_27C766758;
  v141 = v50;
  Strong = (v50)(v150, v46, v51);
  v53 = 0;
  v8 = v34;
  v151 = v40;
  while (1)
  {
    if (v53 >= *(v154 + 16))
    {
      goto LABEL_94;
    }

    v54 = v8[55];
    v55 = v52;
    v56 = v8;
    v59 = v8 + 49;
    v58 = v8[49];
    v57 = v59[1];
    v60 = *(v152 + 48);
    *v57 = v53;
    v42(v57 + v60, v39, v54);
    v61 = v57;
    v52 = v55;
    sub_20B5DF134(v61, v58, v55, &unk_20C15D280);
    if (*v58 == v144)
    {
      break;
    }

    ++v53;
    Strong = sub_20B520158(v56[49], v55, &unk_20C15D280);
    v39 += v40;
    v8 = v56;
    if (v145 == v53)
    {
      v62 = v56[62];
      v63 = v56[55];
      v64 = v56[56];
      swift_bridgeObjectRelease_n();
      (*(v64 + 8))(v62, v63);
      goto LABEL_14;
    }
  }

  v148 = v42;
  v65 = v56[59];
  v66 = v56[60];
  v67 = v56[55];
  v68 = v56[51];
  v69 = v56[49];
  v70 = v56[47];
  v71 = v56[39];

  sub_20B5DF134(v69, v68, &qword_27C766758, &unk_20C15D280);
  v141(v65, v68 + *(v152 + 48), v67);
  v141(v66, v65, v67);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76CDA0, &qword_20C162E60);
  v72 = (*(v71 + 80) + 32) & ~*(v71 + 80);
  v143 = *(v71 + 72);
  v73 = swift_allocObject();
  *(v73 + 16) = xmmword_20C14F980;
  sub_20C134AD4();
  v74 = sub_20C132E94();
  v139 = *(*(v74 - 8) + 56);
  v140 = v74;
  v139(v70, 1, 1);
  sub_20C134AE4();
  sub_20B520158(v70, &qword_27C762AC0, &qword_20C14FC90);
  v153 = v73;
  v142 = v72;
  Strong = swift_storeEnumTagMultiPayload();
  v75 = v157;
  if (v144 <= v157)
  {
    v89 = v157 - v144;
    if (__OFSUB__(v157, v144))
    {
      goto LABEL_109;
    }

    v8 = v158;
    v90 = v148;
    if (v89 < 0)
    {
      goto LABEL_110;
    }

    if (v89)
    {
      v137 = v158[42];
      swift_beginAccess();
      v91 = 0;
      v92 = &OBJC_IVAR____TtC9SeymourUI19PageActionPresenter_fetchMarketingOfferTask;
      do
      {
        Strong = swift_weakLoadStrong();
        if (Strong)
        {
          v93 = *(Strong + 112);

          v94 = v75 - v91;
          if (__OFSUB__(v75, v91))
          {
            goto LABEL_102;
          }

          v95 = v94 - 1;
          if (__OFSUB__(v94, 1))
          {
            goto LABEL_103;
          }

          v96 = *(v93 + v92[384]);
          Strong = swift_beginAccess();
          if (v94 != v95)
          {
            if ((v94 & 0x8000000000000000) != 0)
            {
              goto LABEL_104;
            }

            v97 = *(v96 + 168);
            v98 = v97[2];
            if (v94 >= v98)
            {
              goto LABEL_105;
            }

            v146 = (*(v137 + 80) + 32) & ~*(v137 + 80);
            v99 = *(v137 + 72);
            Strong = sub_20BE772C8(v97 + v146 + v99 * v94, v8[44], type metadata accessor for ShelfIndexedLazyLockup);
            if (v95 >= v98)
            {
              goto LABEL_106;
            }

            sub_20BE772C8(v97 + v146 + v99 * v95, v8[43], type metadata accessor for ShelfIndexedLazyLockup);
            Strong = swift_isUniquelyReferenced_nonNull_native();
            *(v96 + 168) = v97;
            if ((Strong & 1) == 0)
            {
              Strong = sub_20BF90954(v97);
              v97 = Strong;
              *(v96 + 168) = Strong;
            }

            v8 = v158;
            if (v94 >= v97[2])
            {
              goto LABEL_107;
            }

            Strong = sub_20BE771FC(v158[43], v97 + v146 + v99 * v94);
            *(v96 + 168) = v97;
            if (v95 >= v97[2])
            {
              goto LABEL_108;
            }

            sub_20BE771FC(v158[44], v97 + v146 + v99 * v95);
            *(v96 + 168) = v97;
            v89 = v157 - v144;
            v92 = &OBJC_IVAR____TtC9SeymourUI19PageActionPresenter_fetchMarketingOfferTask;
          }

          swift_endAccess();

          v90 = v148;
          v75 = v157;
        }

        ++v91;
      }

      while (v89 != v91);
    }

    v100 = v75 - 1;
    if (__OFSUB__(v75, 1))
    {
      goto LABEL_111;
    }

    if (v100 < v144)
    {
      goto LABEL_112;
    }

    if (!__OFADD__(v100, 1))
    {
      if (v144 < 0)
      {
        goto LABEL_114;
      }

      v101 = *(v154 + 16);
      if (v101 < v144 || v101 < v75)
      {
        goto LABEL_115;
      }

      if ((v75 & 0x8000000000000000) != 0)
      {
        goto LABEL_116;
      }

      if (v144 != v75)
      {
        if (v144 >= v75)
        {
          goto LABEL_122;
        }

        v159 = (v8[56] + 8);
        v102 = v134 + v135 + v144 * v151;
        do
        {
          v90(v8[57], v102, v8[55]);
          Strong = sub_20C134AD4();
          if (Strong == -1)
          {
            goto LABEL_100;
          }

          v103 = v89;
          v104 = v8[57];
          v105 = v8[55];
          v106 = v8[47];
          (v139)(v106, 1, 1, v140);
          sub_20C134AE4();
          (*v159)(v104, v105);
          sub_20B520158(v106, &qword_27C762AC0, &qword_20C14FC90);
          swift_storeEnumTagMultiPayload();
          v107 = v153;
          v109 = v153[2];
          v108 = v153[3];
          if (v109 >= v108 >> 1)
          {
            v107 = sub_20BC075A0((v108 > 1), v109 + 1, 1, v153);
          }

          v110 = v8[40];
          v107[2] = v109 + 1;
          v153 = v107;
          sub_20BE77260(v110, v107 + v142 + v109 * v143, MEMORY[0x277D51638]);
          v102 += v151;
          --v89;
          v90 = v148;
        }

        while (v103 != 1);
      }

LABEL_76:

      v8[75] = v153;
      swift_beginAccess();
      v114 = swift_weakLoadStrong();
      if (v114)
      {
        v8[76] = *(v114 + 112);

        v115 = swift_task_alloc();
        v8[77] = v115;
        *v115 = v8;
        v115[1] = sub_20BE756E0;

        return sub_20B9223F4();
      }

      swift_beginAccess();
      v116 = swift_weakLoadStrong();
      if (!v116)
      {
        v129 = v8[62];
        v130 = v8[60];
        v131 = v8[55];
        v132 = v8[56];

        v133 = *(v132 + 8);
        v133(v130, v131);
        v133(v129, v131);
        goto LABEL_14;
      }

      v117 = v8[37];
      sub_20B51CC64(v116 + OBJC_IVAR____TtC9SeymourUI30UpNextQueueGalleryDataProvider_upNextQueueClient, (v8 + 2));

      __swift_project_boxed_opaque_existential_1(v8 + 2, v8[5]);
      sub_20C139734();

      v118 = swift_task_alloc();
      v8[78] = v118;
      *(v118 + 16) = "SeymourUI/UpNextQueueGalleryDataProvider.swift";
      *(v118 + 24) = 46;
      *(v118 + 32) = 2;
      *(v118 + 40) = 170;
      *(v118 + 48) = v117;
      Strong = swift_task_alloc();
      v8[79] = Strong;
      *Strong = v8;
      *(Strong + 8) = sub_20BE75B30;
      v26 = sub_20B526A90;
      v25 = 0x800000020C192D10;
      v28 = MEMORY[0x277D84F78] + 8;
      v22 = 0;
      v23 = 0;
      v24 = 0xD000000000000013;
      v27 = v118;

      return MEMORY[0x2822008A0](Strong, v22, v23, v24, v25, v26, v27, v28);
    }

    goto LABEL_113;
  }

  v138 = v144 - v157;
  v136 = v56[42];
  swift_beginAccess();
  v76 = v157;
  v8 = v56;
  v77 = v148;
  do
  {
    v78 = v76 + 1;
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v79 = *(Strong + 112);

      v80 = *(v79 + OBJC_IVAR____TtC9SeymourUI23UpNextQueueGalleryShelf_lazyLockupFetcher);
      Strong = swift_beginAccess();
      if ((v76 & 0x8000000000000000) != 0)
      {
        goto LABEL_95;
      }

      v81 = *(v80 + 168);
      v82 = v81[2];
      if (v76 >= v82)
      {
        goto LABEL_96;
      }

      v83 = v8[46];
      v84 = (*(v136 + 80) + 32) & ~*(v136 + 80);
      v85 = v8;
      v86 = *(v136 + 72);
      v87 = v86 * v76;
      Strong = sub_20BE772C8(v81 + v84 + v86 * v76, v83, type metadata accessor for ShelfIndexedLazyLockup);
      if (v78 >= v82)
      {
        goto LABEL_97;
      }

      v88 = v86 * v78;
      sub_20BE772C8(v81 + v84 + v86 * v78, v85[45], type metadata accessor for ShelfIndexedLazyLockup);
      Strong = swift_isUniquelyReferenced_nonNull_native();
      *(v80 + 168) = v81;
      if ((Strong & 1) == 0)
      {
        Strong = sub_20BF90954(v81);
        v81 = Strong;
        *(v80 + 168) = Strong;
      }

      v8 = v158;
      if (v76 >= v81[2])
      {
        goto LABEL_98;
      }

      Strong = sub_20BE771FC(v158[45], v81 + v84 + v87);
      *(v80 + 168) = v81;
      if (v78 >= v81[2])
      {
        goto LABEL_99;
      }

      sub_20BE771FC(v158[46], v81 + v84 + v88);
      *(v80 + 168) = v81;
      swift_endAccess();

      v77 = v148;
    }

    ++v76;
  }

  while (v144 != v78);
  v111 = v157 + 1;
  if (v144 < v157 + 1)
  {
    goto LABEL_117;
  }

  v112 = v144 + 1;
  if (__OFADD__(v144, 1))
  {
    goto LABEL_118;
  }

  if ((v111 & 0x8000000000000000) == 0)
  {
    v113 = *(v154 + 16);
    if (v113 < v111 || v113 < v112)
    {
      goto LABEL_120;
    }

    if ((v112 & 0x8000000000000000) != 0)
    {
      goto LABEL_121;
    }

    if (v111 != v112)
    {
      if (v111 >= v112)
      {
        goto LABEL_123;
      }

      v119 = (v8[56] + 8);
      v120 = v134 + v135 + v111 * v151;
      while (1)
      {
        v77(v8[58], v120, v8[55]);
        Strong = sub_20C134AD4();
        if (!Strong)
        {
          goto LABEL_101;
        }

        v121 = v8[58];
        v122 = v8[55];
        v123 = v8[47];
        (v139)(v123, 1, 1, v140);
        sub_20C134AE4();
        (*v119)(v121, v122);
        sub_20B520158(v123, &qword_27C762AC0, &qword_20C14FC90);
        swift_storeEnumTagMultiPayload();
        v124 = v153;
        v126 = v153[2];
        v125 = v153[3];
        if (v126 >= v125 >> 1)
        {
          v124 = sub_20BC075A0((v125 > 1), v126 + 1, 1, v153);
        }

        v127 = v8[41];
        v124[2] = v126 + 1;
        v153 = v124;
        sub_20BE77260(v127, v124 + v142 + v126 * v143, MEMORY[0x277D51638]);
        v120 += v151;
        v128 = v138-- == 1;
        v77 = v148;
        if (v128)
        {
          goto LABEL_76;
        }
      }
    }

    goto LABEL_76;
  }

LABEL_119:
  __break(1u);
LABEL_120:
  __break(1u);
LABEL_121:
  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
  return MEMORY[0x2822008A0](Strong, v22, v23, v24, v25, v26, v27, v28);
}

uint64_t sub_20BE756E0()
{

  return MEMORY[0x2822009F8](sub_20BE757F8, 0, 0);
}

uint64_t sub_20BE757F8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = v0[37];
    sub_20B51CC64(Strong + OBJC_IVAR____TtC9SeymourUI30UpNextQueueGalleryDataProvider_upNextQueueClient, (v0 + 2));

    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    sub_20C139734();

    v3 = swift_task_alloc();
    v0[78] = v3;
    *(v3 + 16) = "SeymourUI/UpNextQueueGalleryDataProvider.swift";
    *(v3 + 24) = 46;
    *(v3 + 32) = 2;
    *(v3 + 40) = 170;
    *(v3 + 48) = v2;
    v4 = swift_task_alloc();
    v0[79] = v4;
    *v4 = v0;
    v4[1] = sub_20BE75B30;
    v5 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822008A0](v4, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20B526A90, v3, v5);
  }

  else
  {
    v6 = v0[62];
    v7 = v0[60];
    v8 = v0[55];
    v9 = v0[56];

    v10 = *(v9 + 8);
    v10(v7, v8);
    v10(v6, v8);

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_20BE75B30()
{
  v2 = *v1;

  if (v0)
  {

    v3 = sub_20BE75E50;
  }

  else
  {
    v5 = v2[36];
    v4 = v2[37];
    v6 = v2[35];

    (*(v5 + 8))(v4, v6);
    __swift_destroy_boxed_opaque_existential_1(v2 + 2);
    v3 = sub_20BE75C8C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20BE75C8C()
{
  v1 = v0[62];
  v2 = v0[55];
  v3 = *(v0[56] + 8);
  v3(v0[60], v2);
  v3(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_20BE75E50()
{
  v1 = v0[62];
  v2 = v0[60];
  v3 = v0[55];
  v4 = v0[56];
  (*(v0[36] + 8))(v0[37], v0[35]);
  v5 = *(v4 + 8);
  v5(v2, v3);
  v5(v1, v3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v6 = v0[1];

  return v6();
}

uint64_t sub_20BE76038()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20BE761D8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC9SeymourUI30UpNextQueueGalleryDataProvider_metricPage;
  v5 = sub_20C1333A4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

double sub_20BE76254(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76FA58, &unk_20C180870);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220, &qword_20C151250);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - v7;
  sub_20C13CDC4();
  v9 = sub_20C13CDF4();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = swift_allocObject();
  swift_weakInit();
  (*(v3 + 16))(v5, a1, v2);
  v11 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v12 = swift_allocObject();
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 4) = v10;
  (*(v3 + 32))(&v12[v11], v5, v2);
  sub_20B614F94(0, 0, v8, &unk_20C180888, v12);

  return result;
}

uint64_t sub_20BE76468(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v82 = a3;
  v83 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617E0, &unk_20C151A00);
  MEMORY[0x28223BE20](v7 - 8);
  v81 = &v72 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0, &unk_20C14D9B0);
  MEMORY[0x28223BE20](v9 - 8);
  v80 = &v72 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0, &unk_20C151A10);
  MEMORY[0x28223BE20](v11 - 8);
  v79 = &v72 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7669F0, &unk_20C14D9C0);
  MEMORY[0x28223BE20](v13 - 8);
  v77 = &v72 - v14;
  v78 = sub_20C1333A4();
  v76 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v75 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_20C13C6C4();
  MEMORY[0x28223BE20](v16 - 8);
  *(v4 + OBJC_IVAR____TtC9SeymourUI30UpNextQueueGalleryDataProvider_activationState) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A50, &unk_20C14D9F0);
  sub_20C133AA4();
  sub_20B51C710(&v94, v4 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A980, &qword_20C153E20);
  sub_20C133AA4();
  sub_20B51C710(&v94, v4 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00, &unk_20C14FB50);
  sub_20C133AA4();
  *(v4 + 96) = v94;
  sub_20C133AA4();
  *(v4 + OBJC_IVAR____TtC9SeymourUI30UpNextQueueGalleryDataProvider_platform) = v94;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A80, &unk_20C14DA20);
  sub_20C133AA4();
  sub_20B51C710(&v94, v4 + OBJC_IVAR____TtC9SeymourUI30UpNextQueueGalleryDataProvider_upNextQueueClient);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10, &unk_20C14FB60);
  sub_20C133AA4();
  sub_20B51C710(&v94, v4 + OBJC_IVAR____TtC9SeymourUI30UpNextQueueGalleryDataProvider_storefrontLocalizer);
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v4 + OBJC_IVAR____TtC9SeymourUI30UpNextQueueGalleryDataProvider_subscriptionToken) = sub_20C13A914();
  type metadata accessor for UpNextQueueGalleryShelf(0);
  swift_allocObject();

  v18 = sub_20B926BEC(v17, a2);

  *(v4 + 112) = v18;

  v74 = sub_20C1380F4();
  v19 = [objc_allocWithZone(MEMORY[0x277D75300]) init];
  v73 = [objc_allocWithZone(type metadata accessor for CollectionView()) initWithFrame:v19 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

  sub_20C13C734();
  v20 = sub_20C13C724();
  v21 = type metadata accessor for CatalogPageImpressionTracker();
  v22 = swift_allocObject();
  sub_20C13C714();

  sub_20C13C6B4();
  v23 = MEMORY[0x277D221C0];
  v22[2] = sub_20C13C6D4();
  v22[3] = v20;
  v22[4] = v23;
  v95 = v21;
  v24 = sub_20BC5D0C8(&qword_27C761A90, type metadata accessor for CatalogPageImpressionTracker, &unk_20C167088);
  v96 = v24;
  *&v94 = v22;
  v25 = type metadata accessor for MetricLocationStore();
  v26 = swift_allocObject();
  v27 = MEMORY[0x277D84F90];
  v28 = MEMORY[0x277D84F98];
  *(v26 + 16) = MEMORY[0x277D84F90];
  *(v26 + 24) = v28;
  v29 = __swift_mutable_project_boxed_opaque_existential_1(&v94, v21);
  v30 = MEMORY[0x28223BE20](v29);
  v32 = (&v72 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v33 + 16))(v32, v30);
  v34 = *v32;
  v93[3] = v21;
  v93[4] = v24;
  v93[0] = v34;
  v92[3] = v25;
  v92[4] = &off_2822B6968;
  v92[0] = v26;
  v91[0] = v27;
  sub_20BB5D394(0, 1, 0);
  v35 = v91[0];
  v37 = *(v91[0] + 16);
  v36 = *(v91[0] + 24);
  if (v37 >= v36 >> 1)
  {
    sub_20BB5D394((v36 > 1), v37 + 1, 1);
    v35 = v91[0];
  }

  *(v35 + 16) = v37 + 1;
  v38 = v35 + 24 * v37;
  *(v38 + 32) = v18;
  *(v38 + 40) = &off_2822B6710;
  *(v38 + 48) = 0;
  sub_20B51CC64(v93, v91);
  sub_20B51CC64(v92, v90);
  v39 = __swift_mutable_project_boxed_opaque_existential_1(v91, v91[3]);
  v72 = &v72;
  v40 = MEMORY[0x28223BE20](v39);
  v42 = (&v72 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v43 + 16))(v42, v40);
  v44 = __swift_mutable_project_boxed_opaque_existential_1(v90, v90[3]);
  v45 = MEMORY[0x28223BE20](v44);
  v47 = (&v72 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v48 + 16))(v47, v45);
  v49 = *v42;
  v50 = *v47;
  v88 = v21;
  v89 = v24;
  v87[0] = v49;
  v85 = v25;
  v86 = &off_2822B6968;
  v84[0] = v50;
  v51 = objc_allocWithZone(type metadata accessor for CatalogPage());
  v52 = __swift_mutable_project_boxed_opaque_existential_1(v87, v88);
  v53 = MEMORY[0x28223BE20](v52);
  v55 = (&v72 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v56 + 16))(v55, v53);
  v57 = __swift_mutable_project_boxed_opaque_existential_1(v84, v85);
  v58 = MEMORY[0x28223BE20](v57);
  v60 = (&v72 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v61 + 16))(v60, v58);
  v62 = sub_20BE3AA74(0x7478654E7055, 0xE600000000000000, v35, v74, v73, *v55, *v60, 2, v51);
  __swift_destroy_boxed_opaque_existential_1(v92);
  __swift_destroy_boxed_opaque_existential_1(v93);
  __swift_destroy_boxed_opaque_existential_1(v84);
  __swift_destroy_boxed_opaque_existential_1(v87);
  __swift_destroy_boxed_opaque_existential_1(v90);
  __swift_destroy_boxed_opaque_existential_1(v91);
  __swift_destroy_boxed_opaque_existential_1(&v94);
  *(v5 + OBJC_IVAR____TtC9SeymourUI30UpNextQueueGalleryDataProvider_page) = v62;
  v63 = *MEMORY[0x277D51820];
  v64 = sub_20C1352F4();
  v65 = *(v64 - 8);
  v66 = v77;
  (*(v65 + 104))(v77, v63, v64);
  (*(v65 + 56))(v66, 0, 1, v64);
  v67 = sub_20C132C14();
  (*(*(v67 - 8) + 56))(v79, 1, 1, v67);
  v68 = sub_20C135ED4();
  (*(*(v68 - 8) + 56))(v80, 1, 1, v68);
  v69 = sub_20C136914();
  (*(*(v69 - 8) + 56))(v81, 1, 1, v69);

  v70 = v75;
  sub_20C133384();
  (*(v76 + 32))(v5 + OBJC_IVAR____TtC9SeymourUI30UpNextQueueGalleryDataProvider_metricPage, v70, v78);
  sub_20BE71E6C();
  return v5;
}

uint64_t sub_20BE77024(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76FA58, &unk_20C180870) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_20B52AC14;

  return sub_20BE73E10(a1, v6, v7, v8, v1 + v5);
}

unint64_t sub_20BE77128()
{
  result = qword_27C76FA78;
  if (!qword_27C76FA78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C76FA68, &qword_20C1808A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76FA78);
  }

  return result;
}

uint64_t sub_20BE7718C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76FA60, &qword_20C180898);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20BE771FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShelfIndexedLazyLockup(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_20BE77260(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20BE772C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20BE77330(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t CatalogMediaType.startWorkoutButtonTitleLocalizationKey(activityType:)(uint64_t a1, unsigned __int8 a2)
{
  if (a2 < 2u)
  {
    return 0xD00000000000001BLL;
  }

  v3 = 0x55525F5452415453;
  v4 = 0xD00000000000001BLL;
  if (a1 == 52)
  {
    v4 = 0xD000000000000010;
  }

  if (a1 != 37)
  {
    v3 = v4;
  }

  if (a2 == 2)
  {
    return 0xD00000000000001ELL;
  }

  else
  {
    return v3;
  }
}

uint64_t AccountUpgradeInterceptor.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  return v0;
}

uint64_t AccountUpgradeInterceptor.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t AccountUpgradeInterceptor.interceptRequest(_:display:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v49 = a2;
  v50 = a3;
  v44 = a1;
  v55 = a4;
  v54 = type metadata accessor for NavigationRequest(0);
  v45 = *(v54 - 8);
  v6 = *(v45 + 64);
  MEMORY[0x28223BE20](v54);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BCB0, &unk_20C14FD40);
  v8 = *(v47 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v47);
  v43 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v40 - v11;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7641C0, &qword_20C161470);
  v48 = *(v53 - 8);
  v52 = *(v48 + 64);
  MEMORY[0x28223BE20](v53);
  v51 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v46 = &v40 - v15;
  v16 = *(v4 + 40);
  v40 = v4;
  __swift_project_boxed_opaque_existential_1((v4 + 16), v16);
  v41 = v12;
  sub_20C139DC4();
  v42 = v7;
  sub_20B65FE58(a1, v7);
  v17 = (*(v45 + 80) + 16) & ~*(v45 + 80);
  v45 = v17 + v6;
  v18 = (v17 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  sub_20B75B150(v7, v19 + v17);
  *(v19 + v18) = v4;
  v20 = (v19 + ((v18 + 15) & 0xFFFFFFFFFFFFFFF8));
  v21 = v50;
  *v20 = v49;
  v20[1] = v21;
  v22 = v43;
  v23 = v12;
  v24 = v47;
  (*(v8 + 16))(v43, v23, v47);
  v25 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v26 = swift_allocObject();
  (*(v8 + 32))(v26 + v25, v22, v24);
  v27 = (v26 + ((v9 + v25 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v27 = sub_20BE77D18;
  v27[1] = v19;

  swift_unknownObjectRetain();
  v28 = v46;
  sub_20C137C94();
  (*(v8 + 8))(v41, v24);
  v29 = v42;
  sub_20B65FE58(v44, v42);
  v30 = swift_allocObject();
  sub_20B75B150(v29, v30 + v17);
  v31 = v48;
  v32 = v51;
  v33 = v53;
  (*(v48 + 16))(v51, v28, v53);
  v34 = v31;
  v35 = (*(v31 + 80) + 16) & ~*(v31 + 80);
  v36 = (v52 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = swift_allocObject();
  (*(v34 + 32))(v37 + v35, v32, v33);
  v38 = (v37 + v36);
  *v38 = sub_20BE789E4;
  v38[1] = v30;
  sub_20C137C94();
  return (*(v34 + 8))(v28, v33);
}

uint64_t sub_20BE77998@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v36 = a5;
  v37 = a3;
  v38 = a4;
  v9 = type metadata accessor for NavigationRequest(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = sub_20C13BB84();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 1)
  {
    v34 = a2;
    v35 = a6;
    v16 = [objc_opt_self() sharedInstance];
    if (v16)
    {
      v17 = v16;
      v18 = [v16 primaryAccountAltDSID];

      if (v18)
      {
        v19 = sub_20C13C954();
        v21 = v20;

        sub_20B65FE58(v34, &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
        v22 = (*(v10 + 80) + 56) & ~*(v10 + 80);
        v23 = swift_allocObject();
        v23[2] = v19;
        v23[3] = v21;
        v24 = v38;
        v23[4] = v37;
        v23[5] = v24;
        v23[6] = v36;
        sub_20B75B150(&v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22);

        swift_unknownObjectRetain();
        return sub_20C137C94();
      }
    }

    sub_20C13B4C4();
    v28 = sub_20C13BB74();
    v29 = sub_20C13D1D4();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_20B517000, v28, v29, "Couldn't load altDSID to show UpgradeUI.", v30, 2u);
      MEMORY[0x20F2F6A40](v30, -1, -1);
    }

    (*(v13 + 8))(v15, v12);
    sub_20B65FE58(v34, &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    v31 = (*(v10 + 80) + 16) & ~*(v10 + 80);
    v32 = swift_allocObject();
    sub_20B75B150(&v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v32 + v31);
  }

  else
  {
    sub_20B65FE58(a2, &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    v26 = (*(v10 + 80) + 16) & ~*(v10 + 80);
    v27 = swift_allocObject();
    sub_20B75B150(&v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v26);
  }

  return sub_20C137CA4();
}

uint64_t sub_20BE77D18@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for NavigationRequest(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + v7);
  v9 = (v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];

  return sub_20BE77998(a1, v2 + v6, v8, v10, v11, a2);
}

void sub_20BE77DD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v25 = a8;
  v26 = a1;
  v12 = type metadata accessor for NavigationRequest(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = objc_allocWithZone(MEMORY[0x277CFDAE8]);
  v16 = sub_20C13C914();
  v17 = [v15 initWithAltDSID_];

  [v17 setDeviceToDeviceEncryptionUpgradeUIStyle_];
  [v17 setDeviceToDeviceEncryptionUpgradeType_];
  __swift_project_boxed_opaque_existential_1(a5 + 7, a5[10]);
  sub_20C138D34();
  v18 = sub_20C13C914();

  [v17 setFeatureName_];

  ObjectType = swift_getObjectType();
  v20 = (*(a7 + 104))(ObjectType, a7);
  [v17 setPresentingViewController_];

  v21 = [objc_allocWithZone(MEMORY[0x277CFDAF0]) initWithContext_];
  sub_20B65FE58(v25, &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = (*(v13 + 80) + 48) & ~*(v13 + 80);
  v23 = swift_allocObject();
  v23[2] = a6;
  v23[3] = a7;
  v23[4] = v26;
  v23[5] = a2;
  sub_20B75B150(&v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22);
  aBlock[4] = sub_20BE79464;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20B906664;
  aBlock[3] = &block_descriptor_142;
  v24 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  [v21 performDeviceToDeviceEncryptionStateRepairWithCompletion_];
  _Block_release(v24);
}

uint64_t sub_20BE780BC(int a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(char *), uint64_t a6, uint64_t a7)
{
  v43 = a7;
  v44 = a6;
  v45 = a5;
  v39 = a3;
  v38 = a1;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76D250, &unk_20C155D00);
  MEMORY[0x28223BE20](v42);
  v10 = &v35 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v40 = *(v11 - 8);
  v41 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v35 - v12;
  v14 = sub_20C13BB84();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B4C4();
  v18 = a2;
  v19 = sub_20C13BB74();
  v20 = sub_20C13D1F4();

  if (os_log_type_enabled(v19, v20))
  {
    v36 = v14;
    v21 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v50 = v35;
    *v21 = 67109378;
    *(v21 + 4) = v38 & 1;
    *(v21 + 8) = 2082;
    v37 = a4;
    if (a2)
    {
      swift_getErrorValue();
      v22 = MEMORY[0x20F2F5850](v46, v47);
      a2 = v23;
    }

    else
    {
      v22 = 0;
    }

    v48 = v22;
    v49 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767830, &qword_20C15CA20);
    v25 = sub_20C13D8F4();
    v27 = v26;

    v28 = sub_20B51E694(v25, v27, &v50);

    *(v21 + 10) = v28;
    _os_log_impl(&dword_20B517000, v19, v20, "Card Presented: %{BOOL}d, %{public}s", v21, 0x12u);
    v29 = v35;
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x20F2F6A40](v29, -1, -1);
    MEMORY[0x20F2F6A40](v21, -1, -1);

    (*(v15 + 8))(v17, v36);
    v24 = v45;
    a4 = v37;
  }

  else
  {

    (*(v15 + 8))(v17, v14);
    v24 = v45;
  }

  ObjectType = swift_getObjectType();
  (*(a4 + 48))(1, ObjectType, a4);
  v31 = v41;
  v32 = sub_20C137CB4();
  v33 = swift_allocObject();
  *(v33 + 16) = 0;
  *(v33 + 24) = 0;
  v32(sub_20B52347C, v33);

  (*(v40 + 8))(v13, v31);
  sub_20B65FE58(v43, v10);
  swift_storeEnumTagMultiPayload();
  v24(v10);
  return sub_20BE794EC(v10);
}

uint64_t sub_20BE784E0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a2;
  v5 = type metadata accessor for NavigationRequest(0);
  v25 = *(v5 - 8);
  v6 = *(v25 + 64);
  MEMORY[0x28223BE20](v5);
  v24 = sub_20C13BB84();
  v7 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B4C4();
  v10 = a1;
  v11 = sub_20C13BB74();
  v12 = sub_20C13D1D4();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v23[0] = v5;
    v14 = v13;
    v15 = swift_slowAlloc();
    v23[1] = a3;
    v16 = v15;
    v29 = v15;
    *v14 = 136446210;
    swift_getErrorValue();
    v17 = MEMORY[0x20F2F5850](v27, v28);
    v19 = sub_20B51E694(v17, v18, &v29);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_20B517000, v11, v12, "Error checking if Upgrade UI should be shown: %{public}s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x20F2F6A40](v16, -1, -1);
    MEMORY[0x20F2F6A40](v14, -1, -1);
  }

  (*(v7 + 8))(v9, v24);
  sub_20B65FE58(v26, v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = (*(v25 + 80) + 16) & ~*(v25 + 80);
  v21 = swift_allocObject();
  sub_20B75B150(v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20);
  return sub_20C137CA4();
}

uint64_t AccountUpgradeInterceptor.cancel()()
{
  v0 = sub_20C13BB84();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  sub_20C13BB64();
  (*(v1 + 8))(v3, v0);
  return _s9SeymourUI41RemoteBrowsingSiriBeginSessionInterceptorC6cancel0A4Core7PromiseVyytGyF_0();
}

uint64_t sub_20BE788C0()
{
  v0 = sub_20C13BB84();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  sub_20C13BB64();
  (*(v1 + 8))(v3, v0);
  return _s9SeymourUI41RemoteBrowsingSiriBeginSessionInterceptorC6cancel0A4Core7PromiseVyytGyF_0();
}

uint64_t sub_20BE789E4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for NavigationRequest(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_20BE784E0(a1, v6, a2);
}

uint64_t sub_20BE78A8C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

unint64_t sub_20BE78B54(uint64_t a1, uint64_t a2)
{
  result = sub_20BE78B7C(a1, a2);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_20BE78B7C(uint64_t a1, uint64_t a2)
{
  result = qword_27C76FA88;
  if (!qword_27C76FA88)
  {
    type metadata accessor for AccountUpgradeInterceptor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76FA88);
  }

  return result;
}

uint64_t objectdestroy_5Tm()
{
  v1 = type metadata accessor for NavigationRequest(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  type metadata accessor for NavigationResource(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 7u:
    case 8u:
    case 0xBu:
    case 0xDu:
      goto LABEL_2;
    case 1u:
      v9 = sub_20C132C14();
      (*(*(v9 - 8) + 8))(v0 + v3, v9);
      v7 = &unk_27C763FC0;
      v8 = &unk_20C155B00;
      goto LABEL_17;
    case 2u:
      v10 = sub_20C138894();
      goto LABEL_11;
    case 3u:

      goto LABEL_2;
    case 4u:
      v17 = sub_20C1387E4();
      (*(*(v17 - 8) + 8))(v0 + v3, v17);
      v7 = &qword_27C7710E0;
      v8 = &unk_20C15F290;
      goto LABEL_17;
    case 5u:

      break;
    case 6u:
      v6 = sub_20C138894();
      (*(*(v6 - 8) + 8))(v0 + v3, v6);
      v7 = &qword_27C763FD0;
      v8 = &unk_20C155B10;
LABEL_17:
      v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v7, v8) + 48);
      v19 = sub_20C1388F4();
      (*(*(v19 - 8) + 8))(v5 + v18, v19);
      break;
    case 9u:
      v10 = sub_20C132C14();
      goto LABEL_11;
    case 0xCu:

      break;
    case 0xEu:

      goto LABEL_2;
    case 0xFu:
      v10 = sub_20C138204();
LABEL_11:
      (*(*(v10 - 8) + 8))(v0 + v3, v10);
      break;
    case 0x10u:
      type metadata accessor for WorkoutNavigationResource(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v11 = sub_20C1344C4();
        (*(*(v11 - 8) + 8))(v0 + v3, v11);
        v12 = type metadata accessor for WorkoutSessionConfiguration(0);
        v13 = v12[5];
        v14 = sub_20C137254();
        (*(*(v14 - 8) + 8))(v5 + v13, v14);
        v15 = v12[7];
        sub_20C13A484();
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v16 = sub_20C137EA4();
          (*(*(v16 - 8) + 8))(v5 + v15, v16);
        }

        else
        {
        }

        v36 = v12[9];
        v37 = sub_20C13BA24();
        v38 = *(v37 - 8);
        if (!(*(v38 + 48))(v5 + v36, 1, v37))
        {
          (*(v38 + 8))(v5 + v36, v37);
        }

        v39 = v12[10];
        v40 = sub_20C134A44();
        v41 = *(v40 - 8);
        if (!(*(v41 + 48))(v5 + v39, 1, v40))
        {
          (*(v41 + 8))(v5 + v39, v40);
        }

        if (*(v5 + v12[11] + 8) >= 0xC)
        {
        }

        v42 = v12[12];
        v43 = sub_20C135C54();
        v44 = *(v43 - 8);
        if (!(*(v44 + 48))(v5 + v42, 1, v43))
        {
          (*(v44 + 8))(v5 + v42, v43);
        }
      }

LABEL_2:

      break;
    default:
      break;
  }

  v20 = v5 + *(v1 + 20);
  type metadata accessor for NavigationIntent(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 5:

      v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E4C0, "\b\b\t") + 80);
      v24 = sub_20C1344C4();
      v25 = *(v24 - 8);
      if (!(*(v25 + 48))(&v20[v23], 1, v24))
      {
        (*(v25 + 8))(&v20[v23], v24);
      }

      break;
    case 4:

      break;
    case 3:
      v22 = sub_20C139144();
      (*(*(v22 - 8) + 8))(v20, v22);
      break;
  }

  v26 = v5 + *(v1 + 24);
  type metadata accessor for NavigationSource(0);
  v27 = swift_getEnumCaseMultiPayload();
  if (v27 == 1)
  {
    v35 = sub_20C135024();
    (*(*(v35 - 8) + 8))(v26, v35);
  }

  else if (!v27)
  {
    v46 = v2;
    v28 = (v2 + 16) & ~v2;
    v29 = v0;
    v30 = v4;
    v31 = sub_20C132C14();
    v32 = *(v31 - 8);
    v33 = *(v32 + 8);
    v33(v26, v31);
    v34 = *(type metadata accessor for NavigationSharingURLInfo(0) + 20);
    if (!(*(v32 + 48))(&v26[v34], 1, v31))
    {
      v33(&v26[v34], v31);
    }

    v4 = v30;
    v0 = v29;
    v3 = v28;
    v2 = v46;
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

void sub_20BE793D8(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for NavigationRequest(0) - 8);
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = v2 + ((*(v5 + 80) + 56) & ~*(v5 + 80));

  sub_20BE77DD4(a1, a2, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_20BE79464(int a1, void *a2)
{
  v5 = *(type metadata accessor for NavigationRequest(0) - 8);
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2 + ((*(v5 + 80) + 48) & ~*(v5 + 80));

  return sub_20BE780BC(a1, a2, v6, v7, v8, v9, v10);
}

uint64_t sub_20BE794EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76D250, &unk_20C155D00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

int *SummaryBurnBarMetricViewModel.init(scoreSummary:showBurnBar:titleText:subtitleText:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_20BE795B0(a1, a5);
  result = type metadata accessor for SummaryBurnBarMetricViewModel(0);
  *(a5 + result[5]) = a2;
  *(a5 + result[6]) = a3;
  *(a5 + result[7]) = a4;
  return result;
}

uint64_t sub_20BE795B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769748, qword_20C168F00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for SummaryBurnBarMetricViewModel(uint64_t a1)
{
  result = qword_281100B68;
  if (!qword_281100B68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BE79694(uint64_t a1)
{
  sub_20BE79758(319, &qword_281103BF8, MEMORY[0x277D50330]);
  if (v1 <= 0x3F)
  {
    sub_20BE79758(319, &qword_281100510, sub_20B76EC8C);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_20BE79758(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_20C13D914();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void MetricClickStream.applyingRemoteBrowsingEnvironment(_:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v158 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C70, &unk_20C153C40);
  MEMORY[0x28223BE20](v5 - 8);
  v157 = &v133 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C80, &unk_20C153C50);
  MEMORY[0x28223BE20](v7 - 8);
  v156 = &v133 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767900, &unk_20C157220);
  MEMORY[0x28223BE20](v9 - 8);
  v155 = &v133 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76B9D0, &qword_20C171B68);
  MEMORY[0x28223BE20](v11 - 8);
  v154 = &v133 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C90, &unk_20C153C60);
  MEMORY[0x28223BE20](v13 - 8);
  v153 = &v133 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769C80, L" \t\a");
  MEMORY[0x28223BE20](v15 - 8);
  v152 = &v133 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7678F0, &unk_20C157210);
  MEMORY[0x28223BE20](v17 - 8);
  v149 = &v133 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v159 = &v133 - v20;
  v21 = sub_20C136014();
  MEMORY[0x28223BE20](v21 - 8);
  v148 = &v133 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = sub_20C135F14();
  v150 = *(v151 - 8);
  MEMORY[0x28223BE20](v151);
  v166 = &v133 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76B9D8, &qword_20C171B70);
  MEMORY[0x28223BE20](v24 - 8);
  v146 = &v133 - v25;
  v26 = sub_20C135F84();
  v27 = *(v26 - 8);
  v168 = v26;
  v169 = v27;
  MEMORY[0x28223BE20](v26);
  v170 = &v133 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v165 = &v133 - v30;
  MEMORY[0x28223BE20](v31);
  v141 = &v133 - v32;
  v135 = sub_20C136F14();
  v134 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v133 = &v133 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = sub_20C137B04();
  v137 = *(v138 - 8);
  MEMORY[0x28223BE20](v138);
  v136 = &v133 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = sub_20C1369B4();
  MEMORY[0x28223BE20](v140);
  v139 = &v133 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v163 = &v133 - v37;
  v145 = sub_20C135334();
  v144 = *(v145 - 8);
  MEMORY[0x28223BE20](v145);
  v142 = &v133 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v164 = &v133 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762370, &qword_20C153BB0);
  MEMORY[0x28223BE20](v41 - 8);
  v143 = &v133 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v167 = &v133 - v44;
  v45 = sub_20C136354();
  v46 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v162 = &v133 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_20C132E94();
  v49 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v51 = &v133 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762390, &unk_20C15EC90);
  MEMORY[0x28223BE20](v52 - 8);
  v147 = &v133 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v54);
  v56 = &v133 - v55;
  v160 = a1;
  sub_20C136AF4();
  v57 = sub_20C135734();
  v58 = *(v57 - 8);
  if ((*(v58 + 48))(v56, 1, v57) == 1)
  {
    sub_20B520158(v56, &unk_27C762390, &unk_20C15EC90);
    v59 = 0;
  }

  else
  {
    sub_20C132E84();
    v60 = sub_20C135704();
    (*(v49 + 8))(v51, v48);
    (*(v58 + 8))(v56, v57);
    v59 = v60;
  }

  v61 = v162;
  sub_20C136A34();
  v62 = sub_20C136324();
  v64 = v63;
  (*(v46 + 8))(v61, v45);
  v172 = v62;
  v173 = v64 & 1;
  v171 = 1;
  sub_20BD2F6BC();
  sub_20BD2F710();
  v65 = sub_20C133C04();
  v66 = sub_20C134F44();
  v161 = v3;
  if (v66 > 1)
  {
    v67 = v168;
    if (v66 == 2)
    {
      v68 = sub_20C1336A4();
    }

    else
    {
      v68 = sub_20C133694();
    }
  }

  else
  {
    v67 = v168;
    if (v66)
    {
      v68 = sub_20C133684();
    }

    else
    {
      if (!(v59 & 1 | ((v65 & 1) == 0)))
      {
        sub_20C133674();
        v89 = v164;
        sub_20C136C24();
        v90 = v167;
        sub_20C135314();
        (*(v144 + 8))(v89, v145);
        v91 = sub_20C135D54();
        v92 = *(v91 - 8);
        if ((*(v92 + 48))(v90, 1, v91) == 1)
        {
          sub_20B520158(v90, &unk_27C762370, &qword_20C153BB0);
          v169 = 0;
          v170 = 0;
          v165 = 0;
        }

        else
        {
          v126 = v163;
          sub_20C135D44();
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v127 = v134;
            v128 = v133;
            v129 = v126;
            v130 = v135;
            (*(v134 + 32))(v133, v129, v135);
            v131 = sub_20C136F04();
          }

          else
          {
            v127 = v137;
            v128 = v136;
            v132 = v126;
            v130 = v138;
            (*(v137 + 32))(v136, v132, v138);
            v131 = sub_20C137AD4();
          }

          (*(v127 + 8))(v128, v130);
          v165 = v131;
          (*(v92 + 8))(v167, v91);
          v169 = 0;
          v170 = 0;
        }

        v167 = 0;
        v168 = 0;
LABEL_33:
        sub_20C136BD4();
        sub_20C136A34();
        sub_20C136A04();
        sub_20C136AF4();
        sub_20C135F04();
        v97 = v149;
        sub_20C134F34();
        v98 = sub_20C134FB4();
        v99 = *(v98 - 8);
        if ((*(v99 + 48))(v97, 1, v98) == 1)
        {
          sub_20B520158(v97, &unk_27C7678F0, &unk_20C157210);
          v100 = 1;
          v101 = v159;
        }

        else
        {
          v102 = v142;
          sub_20C136C24();
          v103 = v143;
          sub_20C135314();
          (*(v144 + 8))(v102, v145);
          v104 = sub_20C135D54();
          v105 = *(v104 - 8);
          v106 = (*(v105 + 48))(v103, 1, v104);
          v101 = v159;
          if (v106 == 1)
          {
            sub_20B520158(v103, &unk_27C762370, &qword_20C153BB0);
          }

          else
          {
            v107 = v139;
            sub_20C135D44();
            if (swift_getEnumCaseMultiPayload() == 1)
            {
              sub_20BBC2094(v107);
            }

            else
            {
              v108 = v137;
              v109 = v136;
              v110 = v138;
              (*(v137 + 32))(v136, v107, v138);
              sub_20C137AF4();
              v111 = v110;
              v103 = v143;
              (*(v108 + 8))(v109, v111);
              v101 = v159;
            }

            (*(v105 + 8))(v103, v104);
          }

          sub_20C134FA4();

          (*(v99 + 8))(v97, v98);
          v100 = 0;
        }

        (*(v99 + 56))(v101, v100, 1, v98);
        v112 = sub_20C135D24();
        v113 = v152;
        (*(*(v112 - 8) + 56))(v152, 1, 1, v112);
        v114 = sub_20C1333A4();
        v115 = v153;
        (*(*(v114 - 8) + 56))(v153, 1, 1, v114);
        v116 = v150;
        v117 = v154;
        v118 = v151;
        (*(v150 + 16))(v154, v166, v151);
        (*(v116 + 56))(v117, 0, 1, v118);
        v119 = sub_20C134C44();
        (*(*(v119 - 8) + 56))(v117, 0, 1, v119);
        v120 = sub_20C135664();
        v121 = v155;
        (*(*(v120 - 8) + 56))(v155, 1, 1, v120);
        v122 = sub_20C135674();
        v123 = v156;
        (*(*(v122 - 8) + 56))(v156, 1, 1, v122);
        v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766CA0, &qword_20C157230);
        v125 = v157;
        (*(*(v124 - 8) + 56))(v157, 1, 1, v124);
        sub_20C134F64();
        sub_20B520158(v125, &unk_27C766C70, &unk_20C153C40);
        sub_20B520158(v123, &unk_27C766C80, &unk_20C153C50);
        sub_20B520158(v121, &qword_27C767900, &unk_20C157220);
        sub_20B520158(v117, &qword_27C76B9D0, &qword_20C171B68);
        sub_20B520158(v115, &unk_27C766C90, &unk_20C153C60);
        sub_20B520158(v113, &qword_27C769C80, L" \t\a");
        sub_20B520158(v101, &unk_27C7678F0, &unk_20C157210);
        (*(v116 + 8))(v166, v118);
        return;
      }

      v68 = sub_20C1336B4();
    }
  }

  LODWORD(v164) = v68;
  v69 = sub_20C136A64();
  v70 = v69;
  v71 = v69 + 56;
  v72 = 1 << *(v69 + 32);
  v73 = -1;
  if (v72 < 64)
  {
    v73 = ~(-1 << v72);
  }

  v74 = v73 & *(v69 + 56);
  v75 = (v72 + 63) >> 6;
  v163 = (v169 + 16);
  v167 = (v169 + 32);
  v76 = (v169 + 8);

  v77 = 0;
  if (v74)
  {
    while (1)
    {
      v78 = v77;
LABEL_19:
      v79 = v169;
      v80 = v165;
      (*(v169 + 16))(v165, *(v70 + 48) + *(v169 + 72) * (__clz(__rbit64(v74)) | (v78 << 6)), v67);
      v81 = *(v79 + 32);
      v81(v170, v80, v67);
      v82 = sub_20C135F74();
      v84 = v83;
      if (v82 == sub_20C1336F4() && v84 == v85)
      {

        goto LABEL_29;
      }

      v86 = sub_20C13DFF4();

      if (v86)
      {
        break;
      }

      v74 &= v74 - 1;
      v67 = v168;
      (*v76)(v170, v168);
      v77 = v78;
      if (!v74)
      {
        goto LABEL_16;
      }
    }

    v67 = v168;
LABEL_29:
    v88 = v146;
    v81(v146, v170, v67);
    v87 = 0;
LABEL_30:
    v93 = v169;
    (*(v169 + 56))(v88, v87, 1, v67);

    if ((*(v93 + 48))(v88, 1, v67) == 1)
    {
      sub_20B520158(v88, &qword_27C76B9D8, &qword_20C171B70);
      v169 = 0;
      v170 = 0;
      v165 = 0;
      v167 = 0;
      v168 = 0;
    }

    else
    {
      v94 = v141;
      (*v167)(v141, v88, v67);
      v95 = sub_20C135F34();
      v167 = v96;
      v168 = v95;
      v165 = sub_20C135F24();
      v169 = sub_20C135F64();
      v170 = sub_20C135F54();
      sub_20C135F44();
      (*v76)(v94, v67);
    }

    goto LABEL_33;
  }

LABEL_16:
  while (1)
  {
    v78 = v77 + 1;
    if (__OFADD__(v77, 1))
    {
      break;
    }

    if (v78 >= v75)
    {

      v87 = 1;
      v88 = v146;
      goto LABEL_30;
    }

    v74 = *(v71 + 8 * v78);
    ++v77;
    if (v74)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
}

uint64_t MetricClickStream.applyingRemoteParticipant(_:)@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C70, &unk_20C153C40);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v34 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7678F0, &unk_20C157210);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v34 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C80, &unk_20C153C50);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v34 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767900, &unk_20C157220);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v34 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76B9D0, &qword_20C171B68);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = v34 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C90, &unk_20C153C60);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = v34 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769C80, L" \t\a");
  MEMORY[0x28223BE20](v21 - 8);
  v23 = v34 - v22;
  if (sub_20C1350F4() == 4)
  {
    v24 = sub_20C134F74();
    v25 = *(*(v24 - 8) + 16);

    return v25(a1, v1, v24);
  }

  else
  {
    v27 = sub_20C135D24();
    (*(*(v27 - 8) + 56))(v23, 1, 1, v27);
    v28 = sub_20C1333A4();
    (*(*(v28 - 8) + 56))(v20, 1, 1, v28);
    v29 = sub_20C134C44();
    (*(*(v29 - 8) + 56))(v17, 1, 1, v29);
    v30 = sub_20C135664();
    (*(*(v30 - 8) + 56))(v14, 1, 1, v30);
    v31 = sub_20C135674();
    (*(*(v31 - 8) + 56))(v11, 1, 1, v31);
    v32 = sub_20C134FB4();
    (*(*(v32 - 8) + 56))(v8, 1, 1, v32);
    v34[1] = sub_20C137194();
    sub_20C134C24();
    sub_20BBC2540();
    sub_20C133BC4();
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766CA0, &qword_20C157230);
    (*(*(v33 - 8) + 56))(v5, 0, 1, v33);
    sub_20C134F64();
    sub_20B520158(v5, &unk_27C766C70, &unk_20C153C40);
    sub_20B520158(v8, &unk_27C7678F0, &unk_20C157210);
    sub_20B520158(v11, &unk_27C766C80, &unk_20C153C50);
    sub_20B520158(v14, &qword_27C767900, &unk_20C157220);
    sub_20B520158(v17, &qword_27C76B9D0, &qword_20C171B68);
    sub_20B520158(v20, &unk_27C766C90, &unk_20C153C60);
    return sub_20B520158(v23, &qword_27C769C80, L" \t\a");
  }
}

void sub_20BE7B2B0()
{
  sub_20C132444();
  dword_27C79C900 = v0;
  *algn_27C79C904 = v1;
  dword_27C79C908 = v2;
  unk_27C79C90C = v3;
}

void sub_20BE7B2EC()
{
  v1 = v0;
  v2 = sub_20C132EE4();
  v87 = *(v2 - 8);
  v88 = v2;
  MEMORY[0x28223BE20](v2);
  v85 = &v80 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761FB8, &unk_20C14F3F0);
  v86 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v84 = &v80 - v5;
  v6 = sub_20C132254();
  v91 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v90 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for ContainerNodeBuilder(0);
  MEMORY[0x28223BE20](v89);
  v9 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20C132364();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v80 - v14;
  *(v0 + OBJC_IVAR____TtC9SeymourUI26ActivityMetricsNodeBuilder_parent + 8) = 0;
  swift_unknownObjectWeakInit();
  v16 = objc_opt_self();
  v17 = [v16 energyColors];
  if (!v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v18 = v17;
  v19 = [v17 nonGradientTextColor];

  if (!v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v20 = [v16 energyColors];
  if (!v20)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v21 = v20;
  v83 = v6;
  v22 = [v20 nonGradientTextColor];

  if (!v22)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  sub_20BA6D744(3);
  sub_20C132374();
  sub_20BA6BBA4(3);
  sub_20C132374();
  type metadata accessor for SingleMetricNodeBuilder(0);
  swift_allocObject();
  v23 = sub_20B6B5B40(v15, v19, v12, v22);

  v82 = OBJC_IVAR____TtC9SeymourUI26ActivityMetricsNodeBuilder_moveNodeBuilder;
  *(v1 + OBJC_IVAR____TtC9SeymourUI26ActivityMetricsNodeBuilder_moveNodeBuilder) = v23;
  v24 = OBJC_IVAR____TtC9SeymourUI23SingleMetricNodeBuilder_containerBuilder;
  swift_beginAccess();
  *(v23 + v24) = 0;
  v25 = [v16 briskColors];
  if (!v25)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v26 = v25;
  v27 = [v25 nonGradientTextColor];

  if (!v27)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v28 = [v16 briskColors];
  if (!v28)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v29 = v28;
  v81 = v4;
  v30 = [v28 nonGradientTextColor];

  if (!v30)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  sub_20BA6D744(3);
  sub_20C132374();
  sub_20BA6BBA4(3);
  sub_20C132374();
  swift_allocObject();
  v31 = sub_20B6B5B40(v15, v27, v12, v30);

  v32 = OBJC_IVAR____TtC9SeymourUI26ActivityMetricsNodeBuilder_exerciseNodebuilder;
  *(v1 + OBJC_IVAR____TtC9SeymourUI26ActivityMetricsNodeBuilder_exerciseNodebuilder) = v31;
  v33 = OBJC_IVAR____TtC9SeymourUI23SingleMetricNodeBuilder_containerBuilder;
  swift_beginAccess();
  *(v31 + v33) = 0;
  v34 = [v16 sedentaryColors];
  if (!v34)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v35 = v34;
  v36 = [v34 nonGradientTextColor];

  if (!v36)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v37 = [v16 sedentaryColors];
  if (!v37)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v38 = v37;
  v39 = [v37 nonGradientTextColor];

  v40 = v81;
  if (!v39)
  {
LABEL_27:
    __break(1u);
    return;
  }

  sub_20BA6D744(3);
  sub_20C132374();
  sub_20BA6BBA4(3);
  sub_20C132374();
  swift_allocObject();
  v41 = sub_20B6B5B40(v15, v36, v12, v39);

  *(v1 + OBJC_IVAR____TtC9SeymourUI26ActivityMetricsNodeBuilder_standNodebuilder) = v41;
  v42 = OBJC_IVAR____TtC9SeymourUI23SingleMetricNodeBuilder_containerBuilder;
  swift_beginAccess();
  *(v41 + v42) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v43 = swift_allocObject();
  v44 = *(v1 + v82);
  *(v43 + 16) = xmmword_20C150040;
  v45 = *(v1 + v32);
  *(v43 + 32) = v44;
  *(v43 + 40) = v45;
  *(v43 + 48) = v41;
  *(v1 + OBJC_IVAR____TtC9SeymourUI26ActivityMetricsNodeBuilder_arrangedBuilders) = v43;
  v46 = qword_27C760C48;

  v82 = v1;
  if (v46 != -1)
  {
    swift_once();
  }

  v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76EBB0, &unk_20C17FEF0) + 48);
  v48 = *MEMORY[0x277CE9CA8];
  v49 = sub_20C132244();
  v50 = v90;
  (*(*(v49 - 8) + 104))(v90, v48, v49);
  *&v50[v47] = 1101004800;
  v51 = v91;
  v52 = v83;
  (*(v91 + 104))(v50, *MEMORY[0x277CE9CC8], v83);
  v9[1] = 0;
  v53 = v85;
  sub_20C132ED4();
  v54 = v84;
  sub_20C132104();
  (*(v87 + 8))(v53, v88);
  v55 = v89;
  sub_20C131F24();
  (*(v86 + 8))(v54, v40);
  *v9 = 1;
  v56 = sub_20C131F44();
  v57 = &v9[v55[7]];
  *v57 = v56;
  v57[8] = v58;
  v59 = sub_20C131FD4();
  v60 = &v9[v55[8]];
  *v60 = v59;
  v60[8] = v61;
  v62 = sub_20C131FE4();
  v63 = &v9[v55[9]];
  *v63 = v62;
  *(v63 + 1) = v64;
  v63[20] = v65;
  *(v63 + 4) = v66;
  v63[21] = v67;
  v68 = sub_20C132384();
  v69 = &v9[v55[10]];
  *v69 = v68 & 0xFFFFFFFFFFLL;
  v69[12] = v70;
  *(v69 + 2) = v71;
  v69[13] = 0;
  v72 = sub_20C132004();
  v74 = v73;
  v76 = v75;
  v78 = v77;
  (*(v51 + 8))(v50, v52);
  v79 = &v9[v55[11]];
  *v79 = v72;
  *(v79 + 1) = v74;
  *(v79 + 2) = v76;
  v79[24] = v78;
  sub_20B7F53C0(v9, v82 + OBJC_IVAR____TtC9SeymourUI26ActivityMetricsNodeBuilder_containerBuilder);
}

uint64_t sub_20BE7BBB4()
{
  sub_20B593250(v0 + OBJC_IVAR____TtC9SeymourUI26ActivityMetricsNodeBuilder_containerBuilder);
  sub_20B583E6C(v0 + OBJC_IVAR____TtC9SeymourUI26ActivityMetricsNodeBuilder_parent);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ActivityMetricsNodeBuilder(uint64_t a1)
{
  result = qword_27C76FA90;
  if (!qword_27C76FA90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20BE7BCBC(uint64_t a1)
{
  result = type metadata accessor for ContainerNodeBuilder(319);
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

uint64_t sub_20BE7BD74@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v2 = type metadata accessor for ContainerNodeBuilder(0);
  MEMORY[0x28223BE20](v2 - 8);
  v43 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761FB8, &unk_20C14F3F0);
  v4 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v58 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v57 = &v42 - v7;
  MEMORY[0x28223BE20](v8);
  v61 = &v42 - v9;
  v10 = sub_20C132264();
  v59 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v56 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13.n128_f64[0] = MEMORY[0x28223BE20](v12);
  v15 = &v42 - v14;
  v44 = v1;
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI26ActivityMetricsNodeBuilder_arrangedBuilders);
  if (v16 >> 62)
  {
    goto LABEL_22;
  }

  v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v45 = v4;
  if (v17)
  {
    v18 = 0;
    v19 = v16 & 0xC000000000000001;
    v64 = v16 & 0xFFFFFFFFFFFFFF8;
    v51 = (v4 + 8);
    v49 = (v4 + 32);
    v48 = *MEMORY[0x277CE9CE8];
    v47 = (v59 + 104);
    v63 = (v59 + 32);
    v20 = MEMORY[0x277D84F90];
    v54 = v17;
    v55 = v16;
    v52 = v16 & 0xC000000000000001;
    v53 = v15;
    v50 = v10;
    do
    {
      if (v19)
      {
        v21 = MEMORY[0x20F2F5430](v18, v16, v13);
        v22 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v18 >= *(v64 + 16))
        {
          goto LABEL_21;
        }

        v21 = *(v16 + 8 * v18 + 32);

        v22 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
LABEL_20:
          __break(1u);
LABEL_21:
          __break(1u);
LABEL_22:
          v17 = sub_20C13DB34();
          goto LABEL_3;
        }
      }

      v4 = OBJC_IVAR____TtC9SeymourUI23SingleMetricNodeBuilder_containerBuilder;
      swift_beginAccess();
      if (*(v21 + v4))
      {
      }

      else
      {
        v23 = v58;
        sub_20B6B543C(v58);
        sub_20C1323A4();
        v25 = v20;
        v26 = v57;
        v62 = v62 & 0xFFFF000000000000 | v24 & 0xFFFFFFFFFFLL;
        v27 = v60;
        sub_20C131FF4();
        v28 = *v51;
        (*v51)(v23, v27);
        sub_20C132424();
        v29 = v61;
        sub_20C131F74();

        v30 = v26;
        v20 = v25;
        v28(v30, v27);
        v31 = v56;
        v32 = v29;
        v10 = v50;
        v15 = v53;
        (*v49)(v56, v32, v27);
        (*v47)(v31, v48, v10);
        v33 = *v63;
        (*v63)(v15, v31, v10);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_20BC07444(0, v25[2] + 1, 1, v25);
        }

        v4 = v20[2];
        v34 = v20[3];
        v17 = v54;
        v19 = v52;
        if (v4 >= v34 >> 1)
        {
          v20 = sub_20BC07444((v34 > 1), v4 + 1, 1, v20);
        }

        v20[2] = v4 + 1;
        v33(v20 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v4, v15, v10);
        v16 = v55;
      }

      ++v18;
    }

    while (v22 != v17);
  }

  v35 = OBJC_IVAR____TtC9SeymourUI26ActivityMetricsNodeBuilder_containerBuilder;
  v36 = v44;
  swift_beginAccess();
  v37 = v36 + v35;
  v38 = v43;
  sub_20B6B5ADC(v37, v43);
  v39 = v61;
  sub_20B7E27F8(v61);

  sub_20B593250(v38);
  sub_20C1323A4();
  v40 = v60;
  sub_20C131FF4();
  return (*(v45 + 8))(v39, v40);
}

double sub_20BE7C338(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI26ActivityMetricsNodeBuilder_parent + 8) = a2;
  swift_unknownObjectWeakAssign();

  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_20BE7C398(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v3 = a1[4];
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  v9[4] = a2[4];
  v6 = *a2;
  v9[1] = a2[1];
  v8[4] = v3;
  v9[0] = v6;
  return sub_20BE7C3F4(v8, v9) & 1;
}

uint64_t sub_20BE7C3F4(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 8), *(a2 + 8)), vceqq_f64(*(a1 + 24), *(a2 + 24))))) & 1) == 0)
  {
    return 0;
  }

  v2 = *(a1 + 40) != *(a2 + 40) || *(a1 + 48) != *(a2 + 48);
  if (v2 || *(a1 + 56) != *(a2 + 56))
  {
    return 0;
  }

  v4 = *(a1 + 64);
  v5 = *(a2 + 64);
  if (v5 > 2)
  {
    if (v5 != 3)
    {
      if (v5 == 4)
      {
        if (v4 == 4)
        {
          goto LABEL_23;
        }
      }

      else if (v4 == 5)
      {
        goto LABEL_23;
      }

      return 0;
    }

    if (v4 != 3)
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + 64))
    {
      if (v5 == 1)
      {
        if (v4 == 1)
        {
          goto LABEL_23;
        }
      }

      else if (v4 == 2)
      {
        goto LABEL_23;
      }

      return 0;
    }

    if (*(a1 + 64))
    {
      return 0;
    }
  }

LABEL_23:
  sub_20B63C198();
  return sub_20C13D5F4() & 1;
}

uint64_t sub_20BE7C518@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>, double a7@<D4>, double a8@<D5>)
{
  if (a3 > 1194.0)
  {
    v8 = 5;
  }

  else
  {
    v8 = 4;
  }

  if (a3 > 981.0)
  {
    v9 = v8;
  }

  else
  {
    v9 = 3;
  }

  if (a3 > 726.0)
  {
    v10 = v9;
  }

  else
  {
    v10 = 2;
  }

  if (a3 <= 460.0)
  {
    v11 = 1;
  }

  else
  {
    v11 = v10;
  }

  *a2 = a3;
  *(a2 + 8) = a4;
  *(a2 + 16) = a3 - a6 - a8;
  *(a2 + 24) = a4 - a5 - a7;
  *(a2 + 32) = a5;
  *(a2 + 40) = a6;
  *(a2 + 48) = a7;
  *(a2 + 56) = a8;
  if (a3 <= 374.0)
  {
    v11 = 0;
  }

  *(a2 + 64) = v11;
  *(a2 + 72) = result;
  return result;
}

uint64_t sub_20BE7C5BC(uint64_t a1, void *a2, double a3)
{
  v5 = sub_20C136674();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a2 responseDictionary];
  if (!v10 || (v11 = v10, v12 = sub_20C13C754(), v11, !v12))
  {
    v27 = 0u;
    v28 = 0u;
    sub_20B8006F4(&v27);
    v27 = 0u;
    v28 = 0u;
    sub_20B8006F4(&v27);
LABEL_21:
    v27 = 0u;
    v28 = 0u;
    goto LABEL_22;
  }

  v24 = sub_20C1349C4();
  v25 = v13;
  sub_20C13DC04();
  if (!*(v12 + 16) || (v14 = sub_20B65B190(v26), (v15 & 1) == 0))
  {

    sub_20B51D9C4(v26);
    v27 = 0u;
    v28 = 0u;
    goto LABEL_9;
  }

  sub_20B51F1D8(*(v12 + 56) + 32 * v14, &v27);
  sub_20B51D9C4(v26);

  if (!*(&v28 + 1))
  {
LABEL_9:
    sub_20B8006F4(&v27);
    goto LABEL_10;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765218, &qword_20C15F3D0);
  swift_dynamicCast();
LABEL_10:

  v24 = sub_20C1349A4();
  v25 = v16;
  sub_20C13DC04();
  if (!*(v12 + 16) || (v17 = sub_20B65B190(v26), (v18 & 1) == 0))
  {

    sub_20B51D9C4(v26);
    v27 = 0u;
    v28 = 0u;
    goto LABEL_15;
  }

  sub_20B51F1D8(*(v12 + 56) + 32 * v17, &v27);
  sub_20B51D9C4(v26);

  if (!*(&v28 + 1))
  {
LABEL_15:
    sub_20B8006F4(&v27);
    goto LABEL_16;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765218, &qword_20C15F3D0);
  swift_dynamicCast();
LABEL_16:
  v24 = sub_20C134964();
  v25 = v19;
  sub_20C13DC04();
  if (!*(v12 + 16) || (v20 = sub_20B65B190(v26), (v21 & 1) == 0))
  {

    sub_20B51D9C4(v26);
    goto LABEL_21;
  }

  sub_20B51F1D8(*(v12 + 56) + 32 * v20, &v27);
  sub_20B51D9C4(v26);

  if (!*(&v28 + 1))
  {
LABEL_22:
    sub_20B8006F4(&v27);
    goto LABEL_23;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765218, &qword_20C15F3D0);
  swift_dynamicCast();
LABEL_23:
  (*(v6 + 16))(v9, a1, v5);
  sub_20C135B34();

  return (*(v6 + 8))(a1, v5);
}

double sub_20BE7CB40()
{
  v8.receiver = v0;
  v8.super_class = type metadata accessor for TVPlaylistListViewController(0);
  objc_msgSendSuper2(&v8, sel_viewDidLoad);
  v1 = *&v0[OBJC_IVAR____TtC9SeymourUI28TVPlaylistListViewController_dataProvider];
  sub_20B915D5C();
  swift_getObjectType();
  sub_20C13A714();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v7);

  sub_20B7959E8(0);
  v2 = *(*(v1 + 32) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 clearColor];
  [v4 setBackgroundColor_];

  [*(*(v1 + 32) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) setContentInset_];
  [*(*(v1 + 32) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) setContentInsetAdjustmentBehavior_];
  [*(*(v1 + 32) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) setClipsToBounds_];
  return sub_20B7964A0();
}

id sub_20BE7D190()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TVPlaylistListViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for TVPlaylistListViewController(uint64_t a1)
{
  result = qword_27C76FAD8;
  if (!qword_27C76FAD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BE7D2C8(uint64_t a1)
{
  sub_20B595A38(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_20BE7D39C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI28TVPlaylistListViewController_lastFocusedIndexPath;
  swift_beginAccess();
  return sub_20B800360(v1 + v3, a1);
}

uint64_t sub_20BE7D3F4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI28TVPlaylistListViewController_lastFocusedIndexPath;
  swift_beginAccess();
  sub_20B59784C(a1, v1 + v3);
  return swift_endAccess();
}

double sub_20BE7D464(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC9SeymourUI28TVPlaylistListViewController_settlingTimer) = a1;
  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_20BE7D4A4(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC9SeymourUI28TVPlaylistListViewController_dataProvider);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = result;
    v5 = *(v2 + 24);

    v3(v4);

    return sub_20B5E0F50(v3, v5);
  }

  return result;
}

double sub_20BE7D520@<D0>(void *a1@<X8>)
{
  *a1 = *(*v1 + OBJC_IVAR____TtC9SeymourUI28TVPlaylistListViewController_dataProvider);

  return result;
}

double sub_20BE7D57C()
{
  swift_beginAccess();
  swift_unknownObjectRetain();
  return result;
}

double sub_20BE7D5C4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI28TVPlaylistListViewController_resignActiveObserver;
  swift_beginAccess();
  *(v1 + v3) = a1;
  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_20BE7D67C(uint64_t a1, uint64_t a2)
{
  swift_getWitnessTable();

  return sub_20C139364();
}

uint64_t sub_20BE7D6E0(uint64_t a1, uint64_t a2)
{
  swift_getWitnessTable();

  return sub_20C139374();
}

uint64_t sub_20BE7D750(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TVPlaylistListViewController(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_20BE7D794(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6)
{
  v18[3] = a5;
  v18[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a3, a5);
  a4[OBJC_IVAR____TtC9SeymourUI28TVPlaylistListViewController_visibility] = 1;
  *&a4[OBJC_IVAR____TtC9SeymourUI28TVPlaylistListViewController_resignActiveObserver] = 0;
  v12 = OBJC_IVAR____TtC9SeymourUI28TVPlaylistListViewController_lastFocusedIndexPath;
  v13 = sub_20C133244();
  (*(*(v13 - 8) + 56))(&a4[v12], 1, 1, v13);
  *&a4[OBJC_IVAR____TtC9SeymourUI28TVPlaylistListViewController_settlingTimer] = 0;
  *&a4[OBJC_IVAR____TtC9SeymourUI28TVPlaylistListViewController_dependencies] = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7620A0, &unk_20C14F950);
  sub_20C133AA4();
  sub_20B51C710(&v17, &a4[OBJC_IVAR____TtC9SeymourUI28TVPlaylistListViewController_timerProvider]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00, &unk_20C14FB50);
  sub_20C133AA4();
  *&a4[OBJC_IVAR____TtC9SeymourUI28TVPlaylistListViewController_eventHub] = v17;
  *&a4[OBJC_IVAR____TtC9SeymourUI28TVPlaylistListViewController_dataProvider] = a2;
  sub_20B51CC64(v18, &a4[OBJC_IVAR____TtC9SeymourUI28TVPlaylistListViewController_pageNavigator]);
  v16.receiver = a4;
  v16.super_class = type metadata accessor for TVPlaylistListViewController(0);
  v14 = objc_msgSendSuper2(&v16, sel_initWithNibName_bundle_, 0, 0);
  __swift_destroy_boxed_opaque_existential_1(v18);
  return v14;
}

uint64_t SampleContentSessionViewController.supportedInterfaceOrientations.getter()
{
  v1 = sub_20C1344C4();
  v2 = *(v1 - 8);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v0 + OBJC_IVAR____TtC9SeymourUI34SampleContentSessionViewController_overrideSupportedInterfaceOrientations) & 1) != 0 || *(v0 + OBJC_IVAR____TtC9SeymourUI34SampleContentSessionViewController_platform) == 1)
  {
    return 30;
  }

  if (*(v0 + OBJC_IVAR____TtC9SeymourUI34SampleContentSessionViewController_platform))
  {
    return 24;
  }

  v7 = v3;
  (*(v2 + 16))(v6, *(v0 + OBJC_IVAR____TtC9SeymourUI34SampleContentSessionViewController_presenter) + OBJC_IVAR____TtC9SeymourUI29SampleContentSessionPresenter_workoutSessionConfiguration, v3, v4);
  v8 = sub_20C1344B4();
  v10 = v9;
  v12 = v11;
  (*(v2 + 8))(v6, v7);
  if ((v12 & 1) == 0)
  {
    sub_20B583F4C(v8, v10, 0);
    return 24;
  }

  if ((v8 & 0xFE) != 0)
  {
    return 24;
  }

  else
  {
    return 2;
  }
}

id SampleContentSessionViewController.__allocating_init(dependencies:configuration:marketingItem:)(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = sub_20BE7F6E0(a1, a2, a3);

  return v8;
}

id SampleContentSessionViewController.init(dependencies:configuration:marketingItem:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_20BE7F6E0(a1, a2, a3);

  return v4;
}

Swift::Void __swiftcall SampleContentSessionViewController.viewDidLoad()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, sel_viewDidLoad);
  sub_20BDDA648();
}

void sub_20BE7DCC4(void *a1)
{
  [v1 addChildViewController_];
  v3 = [v1 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v3;
  v5 = [a1 view];
  if (!v5)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v6 = v5;
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  [v4 addSubview_];

  [a1 didMoveToParentViewController_];
  v7 = [a1 view];
  if (!v7)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = v7;
  v9 = [v1 view];
  if (!v9)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v10 = v9;
  v11 = objc_opt_self();
  v13 = *MEMORY[0x277D768C8];
  v12 = *(MEMORY[0x277D768C8] + 8);
  v14 = *(MEMORY[0x277D768C8] + 16);
  v15 = *(MEMORY[0x277D768C8] + 24);
  v16 = [v8 leadingAnchor];
  v17 = [v10 leadingAnchor];
  v18 = [v16 constraintEqualToAnchor:v17 constant:v12];

  LODWORD(v19) = 1148846080;
  [v18 setPriority_];
  v20 = v18;
  v21 = [v8 trailingAnchor];
  v22 = [v10 trailingAnchor];
  v23 = [v21 constraintEqualToAnchor:v22 constant:-v15];

  LODWORD(v24) = 1148846080;
  [v23 setPriority_];
  v25 = v23;
  v26 = [v8 topAnchor];
  v27 = [v10 topAnchor];
  v28 = [v26 constraintEqualToAnchor:v27 constant:v13];

  LODWORD(v29) = 1148846080;
  [v28 setPriority_];
  v30 = [v8 bottomAnchor];
  v31 = [v10 bottomAnchor];
  v32 = [v30 constraintEqualToAnchor:v31 constant:-v14];

  LODWORD(v33) = 1148846080;
  [v32 setPriority_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_20C14FE90;
  *(v34 + 32) = v20;
  *(v34 + 40) = v25;
  *(v34 + 48) = v28;
  *(v34 + 56) = v32;
  v35 = v28;

  sub_20B51C88C(0, &qword_281100500, 0x277CCAAD0);
  v36 = sub_20C13CC54();

  [v11 activateConstraints_];
}

void sub_20BE7E094()
{
  v1 = v0;
  v2 = sub_20C13BB84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B564();
  sub_20C13BB64();
  (*(v3 + 8))(v5, v2);
  v6 = [v1 presentedViewController];
  if (v6)
  {
    v7 = v6;
    [v6 dismissViewControllerAnimated:1 completion:0];
  }

  v8 = [v1 childViewControllers];
  sub_20B51C88C(0, &qword_281100550, 0x277D75D28);
  v9 = sub_20C13CC74();

  if (!(v9 >> 62))
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_5;
    }

LABEL_15:

    return;
  }

  v10 = sub_20C13DB34();
  if (!v10)
  {
    goto LABEL_15;
  }

LABEL_5:
  if (v10 >= 1)
  {
    for (i = 0; i != v10; ++i)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x20F2F5430](i, v9);
      }

      else
      {
        v12 = *(v9 + 8 * i + 32);
      }

      v13 = v12;
      type metadata accessor for SessionViewController(0);
      if (swift_dynamicCastClass())
      {
        sub_20BFE0BFC(0, 0);
      }

      else
      {
        [v13 dismissViewControllerAnimated:1 completion:0];
      }
    }

    goto LABEL_15;
  }

  __break(1u);
}

void sub_20BE7E2E0()
{
  v1 = v0;
  v2 = sub_20C13BB84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v24[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v8 = &v24[-v7];
  sub_20C13B564();
  sub_20C13BB64();
  v9 = *(v3 + 8);
  v9(v8, v2);
  v1[OBJC_IVAR____TtC9SeymourUI34SampleContentSessionViewController_overrideSupportedInterfaceOrientations] = 0;
  [v1 setNeedsUpdateOfSupportedInterfaceOrientations];
  v10 = [v1 presentedViewController];
  if (v10)
  {
    v11 = v10;
    sub_20C13B564();
    v12 = v11;
    v13 = sub_20C13BB74();
    v14 = sub_20C13D1F4();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v27 = v9;
      v16 = v15;
      v26 = swift_slowAlloc();
      v28 = v26;
      *v16 = 136315138;
      v17 = v12;
      v18 = [v17 description];
      v19 = sub_20C13C954();
      v25 = v14;
      v21 = v20;

      v22 = sub_20B51E694(v19, v21, &v28);

      *(v16 + 4) = v22;
      _os_log_impl(&dword_20B517000, v13, v25, "Dismissing upsell controller %s", v16, 0xCu);
      v23 = v26;
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x20F2F6A40](v23, -1, -1);
      MEMORY[0x20F2F6A40](v16, -1, -1);

      v27(v5, v2);
    }

    else
    {

      v9(v5, v2);
    }

    [v12 dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_20BE7E5C0()
{
  v1 = v0;
  v2 = sub_20C13BB84();
  v45 = *(v2 - 8);
  v46 = v2;
  MEMORY[0x28223BE20](v2);
  v43 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v42 - v6;
  v8 = [v0 childViewControllers];
  v9 = sub_20B51C88C(0, &qword_281100550, 0x277D75D28);
  v10 = sub_20C13CC74();

  v47 = v9;
  v48 = v1;
  v44 = v7;
  if (!(v10 >> 62))
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_20:

    goto LABEL_21;
  }

LABEL_19:
  v11 = sub_20C13DB34();
  if (!v11)
  {
    goto LABEL_20;
  }

LABEL_3:
  v12 = 0;
  while (1)
  {
    if ((v10 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x20F2F5430](v12, v10);
    }

    else
    {
      if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_18;
      }

      v13 = *(v10 + 8 * v12 + 32);
    }

    v14 = v13;
    v15 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    type metadata accessor for SessionViewController(0);
    v16 = swift_dynamicCastClass();
    if (!v16)
    {
      break;
    }

    v17 = v16;
    v18 = v14;
    [v17 willMoveToParentViewController_];
    v19 = [v17 view];
    if (!v19)
    {
      __break(1u);
      return;
    }

    v20 = v19;
    [v19 removeFromSuperview];

    [v17 removeFromParentViewController];
    sub_20BFE0BFC(0, 0);

    ++v12;
    if (v15 == v11)
    {
      goto LABEL_20;
    }
  }

  v21 = v44;
  sub_20C13B564();
  v22 = v14;
  v23 = sub_20C13BB74();
  v24 = sub_20C13D1F4();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v49 = v26;
    *v25 = 136315138;
    v27 = v22;
    v28 = [v27 description];
    v29 = sub_20C13C954();
    v31 = v30;

    v32 = sub_20B51E694(v29, v31, &v49);

    *(v25 + 4) = v32;
    _os_log_impl(&dword_20B517000, v23, v24, "Skipping removal of non-session child view controller %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    MEMORY[0x20F2F6A40](v26, -1, -1);
    MEMORY[0x20F2F6A40](v25, -1, -1);
  }

  else
  {
  }

  (*(v45 + 8))(v21, v46);
LABEL_21:
  v33 = v48;
  v34 = [v48 childViewControllers];
  v35 = sub_20C13CC74();

  if (v35 >> 62)
  {
    v41 = sub_20C13DB34();

    if (v41)
    {
      return;
    }
  }

  else
  {
    v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v36)
    {
      return;
    }
  }

  v37 = [v33 presentedViewController];
  if (v37)
  {
  }

  else
  {
    sub_20C13B564();
    v38 = sub_20C13BB74();
    v39 = sub_20C13D1F4();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_20B517000, v38, v39, "No remaining children on session controller dismissal, dismissing SampleContentSessionViewController", v40, 2u);
      MEMORY[0x20F2F6A40](v40, -1, -1);
    }

    (*(v45 + 8))(v43, v46);
    [v33 dismissViewControllerAnimated:1 completion:0];
  }
}

id SampleContentSessionViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_20C13C914();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id SampleContentSessionViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_20BE7EC08(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_20C13BB84();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B564();
  sub_20C13BB64();
  (*(v7 + 8))(v9, v6);
  v10 = [objc_allocWithZone(MEMORY[0x277CEE8E8]) initWithMarketingItem:a1 bag:*&v3[OBJC_IVAR____TtC9SeymourUI34SampleContentSessionViewController_bag]];
  [v10 setAccount_];
  [v10 setDelegate_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769EF0, &qword_20C16B4B8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C152DF0;
  v18 = 0xD000000000000014;
  v19 = 0x800000020C1B5150;
  v12 = MEMORY[0x277D837D0];
  sub_20C13DC04();
  v13 = sub_20B6B4F68(&unk_28228E1A0);
  sub_20BE7F974(&unk_28228E1C0);
  *(inited + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76FB38, qword_20C180E48);
  *(inited + 72) = v13;
  v18 = 0x6D656C7469746E65;
  v19 = 0xEF72657355746E65;
  sub_20C13DC04();
  *(inited + 168) = v12;
  *(inited + 144) = 1701147238;
  *(inited + 152) = 0xE400000000000000;
  v18 = 0xD000000000000013;
  v19 = 0x800000020C1B5170;
  sub_20C13DC04();
  *(inited + 240) = v12;
  *(inited + 216) = 1701147238;
  *(inited + 224) = 0xE400000000000000;
  v18 = 0x6369706F74;
  v19 = 0xE500000000000000;
  sub_20C13DC04();
  v14 = sub_20C135EF4();
  *(inited + 312) = v12;
  *(inited + 288) = v14;
  *(inited + 296) = v15;
  sub_20B529B54(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76FB40, qword_20C16B4C0);
  swift_arrayDestroy();
  v16 = sub_20C13C744();

  [v10 setMetricsOverlay_];

  v3[OBJC_IVAR____TtC9SeymourUI34SampleContentSessionViewController_overrideSupportedInterfaceOrientations] = 1;
  v17 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];
  [v17 setModalPresentationStyle_];
  [v17 setTransitioningDelegate_];
  [v17 setModalInPresentation_];
  [v3 presentViewController:v17 animated:1 completion:0];
}

void sub_20BE7EFF0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_20C13BB84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B564();
  sub_20C13BB64();
  (*(v5 + 8))(v7, v4);
  v8 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];
  [v8 setModalPresentationStyle_];
  [v8 setTransitioningDelegate_];
  [v8 setModalInPresentation_];
  [v2 presentViewController:v8 animated:1 completion:0];
}

void sub_20BE7F170(uint64_t a1)
{
  v2 = v1;
  v4 = sub_20C13BB84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B564();
  sub_20C13BB64();
  (*(v5 + 8))(v7, v4);
  v8 = *&v2[OBJC_IVAR____TtC9SeymourUI34SampleContentSessionViewController_dependencies];
  v9 = swift_allocObject();
  *(v9 + 16) = v2;
  v10 = swift_allocObject();
  *(v10 + 16) = v2;
  objc_allocWithZone(type metadata accessor for SessionViewController(0));
  v2;

  v11 = sub_20BFE1644(v8, a1, sub_20BE7F9DC, v9, sub_20BE7F9E4, v10);
  sub_20BE7DCC4(v11);
}

void sub_20BE7F338()
{
  v0 = sub_20C13BB84();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v4 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B564();
  sub_20C13BB64();
  (*(v1 + 8))(v3, v0);
  sub_20BDDAD5C();
}

void sub_20BE7F444(void *a1)
{
  v2 = sub_20C13BB84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B564();
  sub_20C13BB64();
  (*(v3 + 8))(v5, v2);
  sub_20BDDAB6C(a1);
}

void __swiftcall SampleContentSessionViewController.presentationController(forPresented:presenting:source:)(UIPresentationController_optional *__return_ptr retstr, UIViewController *forPresented, UIViewController_optional *presenting, UIViewController *source)
{
  v4 = [objc_opt_self() sheetPresentationControllerForPresentedController:forPresented presentingController:presenting];
  [v4 setPrefersPageSizing_];
  v5 = [objc_opt_self() smu:5.0 effectWithBlurRadius:?];
  [v4 setBackgroundBlurEffect_];
}

id sub_20BE7F6E0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = type metadata accessor for WorkoutSessionConfiguration(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3[OBJC_IVAR____TtC9SeymourUI34SampleContentSessionViewController_overrideSupportedInterfaceOrientations] = 0;
  *&v3[OBJC_IVAR____TtC9SeymourUI34SampleContentSessionViewController_dependencies] = a1;

  sub_20C133AA4();
  v3[OBJC_IVAR____TtC9SeymourUI34SampleContentSessionViewController_platform] = v23;
  sub_20BDDD2B4(a2, v11);
  v12 = objc_allocWithZone(type metadata accessor for SampleContentSessionPresenter(0));

  v13 = a3;
  v14 = sub_20BDDD460(a1, v11, v13);

  *&v4[OBJC_IVAR____TtC9SeymourUI34SampleContentSessionViewController_presenter] = v14;
  v15 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762080, &unk_20C14F930);
  sub_20C133AA4();
  *&v4[OBJC_IVAR____TtC9SeymourUI34SampleContentSessionViewController_bag] = v23;
  v22.receiver = v4;
  v22.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v22, sel_initWithNibName_bundle_, 0, 0);
  *&v15[OBJC_IVAR____TtC9SeymourUI29SampleContentSessionPresenter_display + 8] = &off_2822F0CE0;
  swift_unknownObjectWeakAssign();
  v17 = v16;
  result = [v17 view];
  if (result)
  {
    v19 = result;
    v20 = [objc_opt_self() systemBackgroundColor];
    [v19 setBackgroundColor_];

    sub_20BDDD350(a2);
    return v17;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20BE7F974(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76FB30, &qword_20C180E40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_20BE7F9EC(uint64_t a1)
{
  result = sub_20BE7FA14();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_20BE7FA14()
{
  result = qword_27C764AD0;
  if (!qword_27C764AD0)
  {
    sub_20C138244();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C764AD0);
  }

  return result;
}

uint64_t sub_20BE7FA7C(uint64_t a1, double a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76FB48, "(\n\b");
  MEMORY[0x28223BE20](v4 - 8);
  v61 = v52 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76FB50, "(\n\b");
  MEMORY[0x28223BE20](v6 - 8);
  v65 = v52 - v7;
  v8 = sub_20C135094();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v59 = v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v66 = v52 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = v52 - v14;
  v16 = sub_20C135BB4();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v62 = v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v63 = v52 - v20;
  MEMORY[0x28223BE20](v21);
  v23 = v52 - v22;
  v24 = sub_20C13B224();
  v68 = *(v24 - 8);
  v69 = v24;
  MEMORY[0x28223BE20](v24);
  v67 = v52 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = a1;
  sub_20C13B204();
  sub_20C135BA4();
  v64 = v17;
  v71 = *(v17 + 8);
  v72 = v16;
  v71(v23, v16);
  sub_20C135044();
  v27 = v26;
  v60 = v9;
  v28 = *(v9 + 8);
  v28(v15, v8);
  if (v27)
  {
    v29 = v73;
    __swift_project_boxed_opaque_existential_1((v73 + 32), *(v73 + 56));
    v56 = v28;
    v55 = sub_20C13ADF4();
    v54 = v30;
    __swift_project_boxed_opaque_existential_1((v29 + 32), *(v29 + 56));
    v52[1] = sub_20C13ADE4();
    v53 = v8;
    __swift_project_boxed_opaque_existential_1((v29 + 32), *(v29 + 56));
    v57 = sub_20C13ADD4();
    v58 = v31;

    v32 = v63;
    sub_20C13B204();
    v33 = v59;
    sub_20C135BA4();
    v71(v32, v72);
    v34 = v66;
    sub_20C135054();

    v35 = v33;
    v36 = v53;
    v37 = v56;
    v56(v35, v53);
    v38 = v62;
    sub_20C13B204();
    v39 = v60;
    v40 = v65;
    (*(v60 + 16))(v65, v34, v36);
    (*(v39 + 56))(v40, 0, 1, v36);
    v41 = sub_20C1366E4();
    v42 = v61;
    (*(*(v41 - 8) + 56))(v61, 1, 1, v41);
    sub_20C135B94();
    sub_20B520158(v42, &qword_27C76FB48, "(\n\b");
    sub_20B520158(v40, &unk_27C76FB50, "(\n\b");
    v43 = v71;
    v44 = v72;
    v71(v38, v72);
    (*(v64 + 16))(v38, v32, v44);
    v45 = v67;
    sub_20C13B214();
    v46 = sub_20B94ACA8(v57, v58);
    v43(v32, v44, v46);
    v37(v34, v36);
    v48 = v68;
    v47 = v69;
    v49 = v45;
  }

  else
  {
    v49 = v67;
    v48 = v68;
    v47 = v69;
    (*(v68 + 16))(v67, v70, v69);
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_20BDF5558(v49);
    swift_unknownObjectRelease();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong presentWithDuration_];
    swift_unknownObjectRelease();
  }

  return (*(v48 + 8))(v49, v47);
}

uint64_t sub_20BE80138()
{
  sub_20B583E6C(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t sub_20BE8019C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v26 = a1;
  v3 = sub_20C135974();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763090, &qword_20C153510);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v26 - v8;
  v10 = sub_20C134314();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v26 - v15;
  v17 = OBJC_IVAR____TtC9SeymourUI30CatalogProgramPageDataProvider_programDetail;
  swift_beginAccess();
  sub_20BE804BC(v2 + v17, v9);
  if ((*(v4 + 48))(v9, 1, v3))
  {
    sub_20BE8052C(v9);
    v18 = swift_allocObject();
    v19 = MEMORY[0x277D84F90];
    *(v18 + 16) = MEMORY[0x277D84F90];
    *(v18 + 24) = v19;
    return sub_20C137CA4();
  }

  else
  {
    (*(v4 + 16))(v6, v9, v3);
    sub_20BE8052C(v9);
    sub_20C135954();
    (*(v4 + 8))(v6, v3);
    (*(v11 + 32))(v16, v13, v10);
    sub_20BC301B8(*(v2 + 248));
    v22 = v21;
    v24 = v23;
    v25 = swift_allocObject();
    *(v25 + 16) = v22;
    *(v25 + 24) = v24;
    sub_20C137CA4();
    return (*(v11 + 8))(v16, v10);
  }
}

uint64_t sub_20BE804BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763090, &qword_20C153510);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20BE8052C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763090, &qword_20C153510);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_20BE80594@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;

  return result;
}

double sub_20BE805E0@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;

  return result;
}

double sub_20BE80628()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220, &qword_20C151250);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v11 - v2;
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI18RootViewController_upNextQueueButtonPresenter);
  v5 = sub_20C13CDF4();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v4;

  sub_20B6383D0(0, 0, v3, &unk_20C1814B0, v6);

  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = *(v4 + 48);
  v9 = *(v4 + 56);
  *(v4 + 48) = sub_20BE8F24C;
  *(v4 + 56) = v7;

  sub_20B583ECC(v8, v9);

  return result;
}

double sub_20BE80794()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220, &qword_20C151250);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v11 - v2;
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_upNextQueueButtonPresenter);
  v5 = sub_20C13CDF4();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v4;

  sub_20B6383D0(0, 0, v3, &unk_20C181440, v6);

  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = *(v4 + 48);
  v9 = *(v4 + 56);
  *(v4 + 48) = sub_20BE8EAC8;
  *(v4 + 56) = v7;

  sub_20B583ECC(v8, v9);

  return result;
}

double sub_20BE80904()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220, &qword_20C151250);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v11 - v2;
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI35CatalogModalityDetailViewController_upNextQueueButtonPresenter);
  v5 = sub_20C13CDF4();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v4;

  sub_20B6383D0(0, 0, v3, &unk_20C181438, v6);

  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = *(v4 + 48);
  v9 = *(v4 + 56);
  *(v4 + 48) = sub_20BE8EA38;
  *(v4 + 56) = v7;

  sub_20B583ECC(v8, v9);

  return result;
}

double sub_20BE80A74(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = swift_allocObject();
    *(v12 + 16) = a2;
    *(v12 + 24) = a1;

    v13 = a1;
    a5(a4, v12);
  }

  return result;
}

void sub_20BE80B24(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), void (*a4)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    a3(a2);
  }

  swift_beginAccess();
  v9 = swift_unknownObjectWeakLoadStrong();
  if (v9)
  {
    v10 = v9;
    a4();
  }
}

void sub_20BE80BD0(unsigned __int8 a1, uint64_t a2)
{
  v3 = v2;
  if (a1 <= 1u)
  {
    if (!a1)
    {
      v4 = sub_20C132BA4();
      if (v5)
      {
        v6 = v4;
        v7 = v5;
        v8 = *(*(v3 + OBJC_IVAR____TtC9SeymourUI18RootViewController_dataProvider) + 48);
        sub_20C0C16EC(v6, v7, 1);
      }

      return;
    }

    v11 = [objc_opt_self() defaultWorkspace];
    if (!v11)
    {
      __break(1u);
      return;
    }

    v9 = v11;
    v10 = sub_20C132B64();
    sub_20B6B1778(MEMORY[0x277D84F90]);
    v12 = sub_20C13C744();

    [v9 openSensitiveURL:v10 withOptions:v12];
    goto LABEL_11;
  }

  if (a1 == 2)
  {
    v9 = [objc_opt_self() sharedApplication];
    v10 = sub_20C132B64();
    sub_20B6B3B84(MEMORY[0x277D84F90]);
    type metadata accessor for OpenExternalURLOptionsKey(0);
    sub_20BE8F2DC(&qword_27C761D60, type metadata accessor for OpenExternalURLOptionsKey, &unk_20C14F080);
    v12 = sub_20C13C744();

    [v9 openURL:v10 options:v12 completionHandler:0];
LABEL_11:

    return;
  }

  sub_20BE844CC(a2);
}

void sub_20BE80E2C(double a1, double a2)
{
  ObjectType = swift_getObjectType();
  v6 = v2[OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_currentContentInsetBehavior + 16];
  if (v6 > 0xFB || (v2[OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_isTransitioningContentInset] & 1) != 0)
  {
    return;
  }

  if (v6 >> 6)
  {
    if (v6 >> 6 != 1)
    {
      return;
    }

    v7 = ObjectType;
    goto LABEL_8;
  }

  v7 = ObjectType;
  if (!v2[OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_currentContentInsetBehavior + 16])
  {
LABEL_8:
    [*(*(*&v2[OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_dataProvider] + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailDataProvider_page) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) adjustedContentInset];
    v8 = v9 + a2 >= 4.0;
    goto LABEL_9;
  }

  v8 = sub_20BE8B400(&OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_dataProvider, &OBJC_IVAR____TtC9SeymourUI26PlaylistDetailDataProvider_page, a1, a2);
LABEL_9:
  v10 = [v2 navigationItem];
  v11 = [v10 leftBarButtonItems];

  if (v11)
  {
    sub_20B51C88C(0, &qword_27C770510, 0x277D751E0);
    v12 = sub_20C13CC74();
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v13 = [v2 navigationItem];
  v14 = [v13 rightBarButtonItems];

  if (v14)
  {
    sub_20B51C88C(0, &qword_27C770510, 0x277D751E0);
    v15 = sub_20C13CC74();
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  v16 = sub_20BEF6C10(v12);

  v48 = v16;
  v17 = sub_20BEF6C10(v15);

  v49 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768250, &unk_20C16EFA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  *(inited + 56) = v7;
  *(inited + 32) = v2;
  v50 = inited;
  v19 = v2;
  v20 = MEMORY[0x277D84F90];
  for (i = 32; i != 56; i += 8)
  {
    v22 = *(&v47[6] + i);
    v23 = *(v22 + 16);
    v24 = *(v20 + 2);
    v25 = v24 + v23;
    if (__OFADD__(v24, v23))
    {
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v25 <= *(v20 + 3) >> 1)
    {
      if (!*(v22 + 16))
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (v24 <= v25)
      {
        v27 = v24 + v23;
      }

      else
      {
        v27 = v24;
      }

      v20 = sub_20BC067B0(isUniquelyReferenced_nonNull_native, v27, 1, v20);
      if (!*(v22 + 16))
      {
LABEL_16:

        if (v23)
        {
          goto LABEL_50;
        }

        continue;
      }
    }

    if ((*(v20 + 3) >> 1) - *(v20 + 2) < v23)
    {
      goto LABEL_51;
    }

    swift_arrayInitWithCopy();

    if (v23)
    {
      v28 = *(v20 + 2);
      v29 = __OFADD__(v28, v23);
      v30 = v28 + v23;
      if (v29)
      {
        goto LABEL_53;
      }

      *(v20 + 2) = v30;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76FD68, &qword_20C181418);
  swift_arrayDestroy();
  v31 = *(v20 + 2);
  if (v31)
  {
    v32 = (v20 + 32);
    v33 = MEMORY[0x277D84F90];
    do
    {
      sub_20B51F1D8(v32, v47);
      sub_20B6B3B74(v47, &v45);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76FD70, &unk_20C181420);
      if (swift_dynamicCast() && v46)
      {
        v44 = v46;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v33 = sub_20BC073DC(0, v33[2] + 1, 1, v33);
        }

        v35 = v33[2];
        v34 = v33[3];
        v36 = v44;
        if (v35 >= v34 >> 1)
        {
          v37 = sub_20BC073DC((v34 > 1), v35 + 1, 1, v33);
          v36 = v44;
          v33 = v37;
        }

        v33[2] = v35 + 1;
        *&v33[2 * v35 + 4] = v36;
      }

      v32 += 32;
      --v31;
    }

    while (v31);

    v38 = v33[2];
    if (!v38)
    {
      goto LABEL_47;
    }
  }

  else
  {

    v33 = MEMORY[0x277D84F90];
    v38 = *(MEMORY[0x277D84F90] + 16);
    if (!v38)
    {
LABEL_47:

      return;
    }
  }

  v39 = 0;
  v40 = v33 + 5;
  while (v39 < v33[2])
  {
    ++v39;
    v41 = *v40;
    v42 = swift_getObjectType();
    v43 = *(v41 + 8);
    swift_unknownObjectRetain();
    v43(v8 & 1, v42, v41);
    swift_unknownObjectRelease();
    v40 += 2;
    if (v38 == v39)
    {
      goto LABEL_47;
    }
  }

LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
}

void sub_20BE81338(double a1, double a2)
{
  v3 = v2[OBJC_IVAR____TtC9SeymourUI34GuidedWorkoutGalleryViewController_currentContentInsetBehavior + 16];
  if (v3 > 0xFB || (v2[OBJC_IVAR____TtC9SeymourUI34GuidedWorkoutGalleryViewController_isTransitioningContentInset] & 1) != 0)
  {
    return;
  }

  if (v3 >> 6)
  {
    if (v3 >> 6 != 1)
    {
      return;
    }

    goto LABEL_8;
  }

  if (!v2[OBJC_IVAR____TtC9SeymourUI34GuidedWorkoutGalleryViewController_currentContentInsetBehavior + 16])
  {
LABEL_8:
    [*(*(*&v2[OBJC_IVAR____TtC9SeymourUI34GuidedWorkoutGalleryViewController_dataProvider] + OBJC_IVAR____TtC9SeymourUI32GuidedWorkoutGalleryDataProvider_page) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) adjustedContentInset];
    v4 = v6 + a2 >= 4.0;
    goto LABEL_9;
  }

  v4 = sub_20BE8B400(&OBJC_IVAR____TtC9SeymourUI34GuidedWorkoutGalleryViewController_dataProvider, &OBJC_IVAR____TtC9SeymourUI32GuidedWorkoutGalleryDataProvider_page, a1, a2);
LABEL_9:
  v7 = [v2 navigationItem];
  v8 = [v7 leftBarButtonItems];

  if (v8)
  {
    sub_20B51C88C(0, &qword_27C770510, 0x277D751E0);
    v9 = sub_20C13CC74();
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v10 = [v2 navigationItem];
  v11 = [v10 rightBarButtonItems];

  if (v11)
  {
    sub_20B51C88C(0, &qword_27C770510, 0x277D751E0);
    v12 = sub_20C13CC74();
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v13 = sub_20BEF6C10(v9);

  v45 = v13;
  v14 = sub_20BEF6C10(v12);

  v46 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768250, &unk_20C16EFA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  *(inited + 56) = type metadata accessor for GuidedWorkoutGalleryViewController(0);
  *(inited + 32) = v2;
  v47 = inited;
  v16 = v2;
  v17 = MEMORY[0x277D84F90];
  for (i = 32; i != 56; i += 8)
  {
    v19 = *(&v44[6] + i);
    v20 = *(v19 + 16);
    v21 = *(v17 + 2);
    v22 = v21 + v20;
    if (__OFADD__(v21, v20))
    {
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v22 <= *(v17 + 3) >> 1)
    {
      if (!*(v19 + 16))
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (v21 <= v22)
      {
        v24 = v21 + v20;
      }

      else
      {
        v24 = v21;
      }

      v17 = sub_20BC067B0(isUniquelyReferenced_nonNull_native, v24, 1, v17);
      if (!*(v19 + 16))
      {
LABEL_16:

        if (v20)
        {
          goto LABEL_50;
        }

        continue;
      }
    }

    if ((*(v17 + 3) >> 1) - *(v17 + 2) < v20)
    {
      goto LABEL_51;
    }

    swift_arrayInitWithCopy();

    if (v20)
    {
      v25 = *(v17 + 2);
      v26 = __OFADD__(v25, v20);
      v27 = v25 + v20;
      if (v26)
      {
        goto LABEL_53;
      }

      *(v17 + 2) = v27;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76FD68, &qword_20C181418);
  swift_arrayDestroy();
  v28 = *(v17 + 2);
  if (v28)
  {
    v29 = (v17 + 32);
    v30 = MEMORY[0x277D84F90];
    do
    {
      sub_20B51F1D8(v29, v44);
      sub_20B6B3B74(v44, &v42);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76FD70, &unk_20C181420);
      if (swift_dynamicCast() && v43)
      {
        v41 = v43;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v30 = sub_20BC073DC(0, v30[2] + 1, 1, v30);
        }

        v32 = v30[2];
        v31 = v30[3];
        v33 = v41;
        if (v32 >= v31 >> 1)
        {
          v34 = sub_20BC073DC((v31 > 1), v32 + 1, 1, v30);
          v33 = v41;
          v30 = v34;
        }

        v30[2] = v32 + 1;
        *&v30[2 * v32 + 4] = v33;
      }

      v29 += 32;
      --v28;
    }

    while (v28);

    v35 = v30[2];
    if (!v35)
    {
      goto LABEL_47;
    }
  }

  else
  {

    v30 = MEMORY[0x277D84F90];
    v35 = *(MEMORY[0x277D84F90] + 16);
    if (!v35)
    {
LABEL_47:

      return;
    }
  }

  v36 = 0;
  v37 = v30 + 5;
  while (v36 < v30[2])
  {
    ++v36;
    v38 = *v37;
    ObjectType = swift_getObjectType();
    v40 = *(v38 + 8);
    swift_unknownObjectRetain();
    v40(v4 & 1, ObjectType, v38);
    swift_unknownObjectRelease();
    v37 += 2;
    if (v35 == v36)
    {
      goto LABEL_47;
    }
  }

LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
}

void sub_20BE81834(double a1, double a2)
{
  v3 = v2[OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_currentContentInsetBehavior + 16];
  if (v3 > 0xFB || (v2[OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_isTransitioningContentInset] & 1) != 0)
  {
    return;
  }

  if (v3 >> 6)
  {
    if (v3 >> 6 != 1)
    {
      return;
    }

    goto LABEL_8;
  }

  if (!v2[OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_currentContentInsetBehavior + 16])
  {
LABEL_8:
    [*(*(*&v2[OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_dataProvider] + OBJC_IVAR____TtC9SeymourUI23TrainerPageDataProvider_page) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) adjustedContentInset];
    v4 = v6 + a2 >= 4.0;
    goto LABEL_9;
  }

  v4 = sub_20BE8B400(&OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_dataProvider, &OBJC_IVAR____TtC9SeymourUI23TrainerPageDataProvider_page, a1, a2);
LABEL_9:
  v7 = [v2 navigationItem];
  v8 = [v7 leftBarButtonItems];

  if (v8)
  {
    sub_20B51C88C(0, &qword_27C770510, 0x277D751E0);
    v9 = sub_20C13CC74();
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v10 = [v2 navigationItem];
  v11 = [v10 rightBarButtonItems];

  if (v11)
  {
    sub_20B51C88C(0, &qword_27C770510, 0x277D751E0);
    v12 = sub_20C13CC74();
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v13 = sub_20BEF6C10(v9);

  v45 = v13;
  v14 = sub_20BEF6C10(v12);

  v46 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768250, &unk_20C16EFA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  *(inited + 56) = type metadata accessor for TrainerDetailViewController();
  *(inited + 32) = v2;
  v47 = inited;
  v16 = v2;
  v17 = MEMORY[0x277D84F90];
  for (i = 32; i != 56; i += 8)
  {
    v19 = *(&v44[6] + i);
    v20 = *(v19 + 16);
    v21 = *(v17 + 2);
    v22 = v21 + v20;
    if (__OFADD__(v21, v20))
    {
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v22 <= *(v17 + 3) >> 1)
    {
      if (!*(v19 + 16))
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (v21 <= v22)
      {
        v24 = v21 + v20;
      }

      else
      {
        v24 = v21;
      }

      v17 = sub_20BC067B0(isUniquelyReferenced_nonNull_native, v24, 1, v17);
      if (!*(v19 + 16))
      {
LABEL_16:

        if (v20)
        {
          goto LABEL_50;
        }

        continue;
      }
    }

    if ((*(v17 + 3) >> 1) - *(v17 + 2) < v20)
    {
      goto LABEL_51;
    }

    swift_arrayInitWithCopy();

    if (v20)
    {
      v25 = *(v17 + 2);
      v26 = __OFADD__(v25, v20);
      v27 = v25 + v20;
      if (v26)
      {
        goto LABEL_53;
      }

      *(v17 + 2) = v27;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76FD68, &qword_20C181418);
  swift_arrayDestroy();
  v28 = *(v17 + 2);
  if (v28)
  {
    v29 = (v17 + 32);
    v30 = MEMORY[0x277D84F90];
    do
    {
      sub_20B51F1D8(v29, v44);
      sub_20B6B3B74(v44, &v42);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76FD70, &unk_20C181420);
      if (swift_dynamicCast() && v43)
      {
        v41 = v43;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v30 = sub_20BC073DC(0, v30[2] + 1, 1, v30);
        }

        v32 = v30[2];
        v31 = v30[3];
        v33 = v41;
        if (v32 >= v31 >> 1)
        {
          v34 = sub_20BC073DC((v31 > 1), v32 + 1, 1, v30);
          v33 = v41;
          v30 = v34;
        }

        v30[2] = v32 + 1;
        *&v30[2 * v32 + 4] = v33;
      }

      v29 += 32;
      --v28;
    }

    while (v28);

    v35 = v30[2];
    if (!v35)
    {
      goto LABEL_47;
    }
  }

  else
  {

    v30 = MEMORY[0x277D84F90];
    v35 = *(MEMORY[0x277D84F90] + 16);
    if (!v35)
    {
LABEL_47:

      return;
    }
  }

  v36 = 0;
  v37 = v30 + 5;
  while (v36 < v30[2])
  {
    ++v36;
    v38 = *v37;
    ObjectType = swift_getObjectType();
    v40 = *(v38 + 8);
    swift_unknownObjectRetain();
    v40(v4 & 1, ObjectType, v38);
    swift_unknownObjectRelease();
    v37 += 2;
    if (v35 == v36)
    {
      goto LABEL_47;
    }
  }

LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
}

void sub_20BE81D30(double a1, double a2)
{
  v3 = v2[OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_currentContentInsetBehavior + 16];
  if (v3 > 0xFB || (v2[OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_isTransitioningContentInset] & 1) != 0)
  {
    return;
  }

  if (v3 >> 6)
  {
    if (v3 >> 6 != 1)
    {
      return;
    }

    goto LABEL_8;
  }

  if (!v2[OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_currentContentInsetBehavior + 16])
  {
LABEL_8:
    [*(*(*&v2[OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_dataProvider] + OBJC_IVAR____TtC9SeymourUI26LibraryGalleryDataProvider_page) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) adjustedContentInset];
    v4 = v6 + a2 >= 4.0;
    goto LABEL_9;
  }

  v4 = sub_20BE8B400(&OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_dataProvider, &OBJC_IVAR____TtC9SeymourUI26LibraryGalleryDataProvider_page, a1, a2);
LABEL_9:
  v7 = [v2 navigationItem];
  v8 = [v7 leftBarButtonItems];

  if (v8)
  {
    sub_20B51C88C(0, &qword_27C770510, 0x277D751E0);
    v9 = sub_20C13CC74();
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v10 = [v2 navigationItem];
  v11 = [v10 rightBarButtonItems];

  if (v11)
  {
    sub_20B51C88C(0, &qword_27C770510, 0x277D751E0);
    v12 = sub_20C13CC74();
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v13 = sub_20BEF6C10(v9);

  v45 = v13;
  v14 = sub_20BEF6C10(v12);

  v46 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768250, &unk_20C16EFA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  *(inited + 56) = type metadata accessor for LibraryGalleryViewController(0);
  *(inited + 32) = v2;
  v47 = inited;
  v16 = v2;
  v17 = MEMORY[0x277D84F90];
  for (i = 32; i != 56; i += 8)
  {
    v19 = *(&v44[6] + i);
    v20 = *(v19 + 16);
    v21 = *(v17 + 2);
    v22 = v21 + v20;
    if (__OFADD__(v21, v20))
    {
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v22 <= *(v17 + 3) >> 1)
    {
      if (!*(v19 + 16))
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (v21 <= v22)
      {
        v24 = v21 + v20;
      }

      else
      {
        v24 = v21;
      }

      v17 = sub_20BC067B0(isUniquelyReferenced_nonNull_native, v24, 1, v17);
      if (!*(v19 + 16))
      {
LABEL_16:

        if (v20)
        {
          goto LABEL_50;
        }

        continue;
      }
    }

    if ((*(v17 + 3) >> 1) - *(v17 + 2) < v20)
    {
      goto LABEL_51;
    }

    swift_arrayInitWithCopy();

    if (v20)
    {
      v25 = *(v17 + 2);
      v26 = __OFADD__(v25, v20);
      v27 = v25 + v20;
      if (v26)
      {
        goto LABEL_53;
      }

      *(v17 + 2) = v27;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76FD68, &qword_20C181418);
  swift_arrayDestroy();
  v28 = *(v17 + 2);
  if (v28)
  {
    v29 = (v17 + 32);
    v30 = MEMORY[0x277D84F90];
    do
    {
      sub_20B51F1D8(v29, v44);
      sub_20B6B3B74(v44, &v42);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76FD70, &unk_20C181420);
      if (swift_dynamicCast() && v43)
      {
        v41 = v43;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v30 = sub_20BC073DC(0, v30[2] + 1, 1, v30);
        }

        v32 = v30[2];
        v31 = v30[3];
        v33 = v41;
        if (v32 >= v31 >> 1)
        {
          v34 = sub_20BC073DC((v31 > 1), v32 + 1, 1, v30);
          v33 = v41;
          v30 = v34;
        }

        v30[2] = v32 + 1;
        *&v30[2 * v32 + 4] = v33;
      }

      v29 += 32;
      --v28;
    }

    while (v28);

    v35 = v30[2];
    if (!v35)
    {
      goto LABEL_47;
    }
  }

  else
  {

    v30 = MEMORY[0x277D84F90];
    v35 = *(MEMORY[0x277D84F90] + 16);
    if (!v35)
    {
LABEL_47:

      return;
    }
  }

  v36 = 0;
  v37 = v30 + 5;
  while (v36 < v30[2])
  {
    ++v36;
    v38 = *v37;
    ObjectType = swift_getObjectType();
    v40 = *(v38 + 8);
    swift_unknownObjectRetain();
    v40(v4 & 1, ObjectType, v38);
    swift_unknownObjectRelease();
    v37 += 2;
    if (v35 == v36)
    {
      goto LABEL_47;
    }
  }

LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
}

void sub_20BE8222C(double a1, double a2)
{
  v3 = v2[OBJC_IVAR____TtC9SeymourUI26ChartGalleryViewController_currentContentInsetBehavior + 16];
  if (v3 > 0xFB || (v2[OBJC_IVAR____TtC9SeymourUI26ChartGalleryViewController_isTransitioningContentInset] & 1) != 0)
  {
    return;
  }

  if (v3 >> 6)
  {
    if (v3 >> 6 != 1)
    {
      return;
    }

    goto LABEL_8;
  }

  if (!v2[OBJC_IVAR____TtC9SeymourUI26ChartGalleryViewController_currentContentInsetBehavior + 16])
  {
LABEL_8:
    [*(*(*&v2[OBJC_IVAR____TtC9SeymourUI26ChartGalleryViewController_dataProvider] + OBJC_IVAR____TtC9SeymourUI24ChartGalleryDataProvider_page) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) adjustedContentInset];
    v4 = v6 + a2 >= 4.0;
    goto LABEL_9;
  }

  v4 = sub_20BE8B400(&OBJC_IVAR____TtC9SeymourUI26ChartGalleryViewController_dataProvider, &OBJC_IVAR____TtC9SeymourUI24ChartGalleryDataProvider_page, a1, a2);
LABEL_9:
  v7 = [v2 navigationItem];
  v8 = [v7 leftBarButtonItems];

  if (v8)
  {
    sub_20B51C88C(0, &qword_27C770510, 0x277D751E0);
    v9 = sub_20C13CC74();
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v10 = [v2 navigationItem];
  v11 = [v10 rightBarButtonItems];

  if (v11)
  {
    sub_20B51C88C(0, &qword_27C770510, 0x277D751E0);
    v12 = sub_20C13CC74();
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v13 = sub_20BEF6C10(v9);

  v45 = v13;
  v14 = sub_20BEF6C10(v12);

  v46 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768250, &unk_20C16EFA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  *(inited + 56) = type metadata accessor for ChartGalleryViewController(0);
  *(inited + 32) = v2;
  v47 = inited;
  v16 = v2;
  v17 = MEMORY[0x277D84F90];
  for (i = 32; i != 56; i += 8)
  {
    v19 = *(&v44[6] + i);
    v20 = *(v19 + 16);
    v21 = *(v17 + 2);
    v22 = v21 + v20;
    if (__OFADD__(v21, v20))
    {
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v22 <= *(v17 + 3) >> 1)
    {
      if (!*(v19 + 16))
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (v21 <= v22)
      {
        v24 = v21 + v20;
      }

      else
      {
        v24 = v21;
      }

      v17 = sub_20BC067B0(isUniquelyReferenced_nonNull_native, v24, 1, v17);
      if (!*(v19 + 16))
      {
LABEL_16:

        if (v20)
        {
          goto LABEL_50;
        }

        continue;
      }
    }

    if ((*(v17 + 3) >> 1) - *(v17 + 2) < v20)
    {
      goto LABEL_51;
    }

    swift_arrayInitWithCopy();

    if (v20)
    {
      v25 = *(v17 + 2);
      v26 = __OFADD__(v25, v20);
      v27 = v25 + v20;
      if (v26)
      {
        goto LABEL_53;
      }

      *(v17 + 2) = v27;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76FD68, &qword_20C181418);
  swift_arrayDestroy();
  v28 = *(v17 + 2);
  if (v28)
  {
    v29 = (v17 + 32);
    v30 = MEMORY[0x277D84F90];
    do
    {
      sub_20B51F1D8(v29, v44);
      sub_20B6B3B74(v44, &v42);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76FD70, &unk_20C181420);
      if (swift_dynamicCast() && v43)
      {
        v41 = v43;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v30 = sub_20BC073DC(0, v30[2] + 1, 1, v30);
        }

        v32 = v30[2];
        v31 = v30[3];
        v33 = v41;
        if (v32 >= v31 >> 1)
        {
          v34 = sub_20BC073DC((v31 > 1), v32 + 1, 1, v30);
          v33 = v41;
          v30 = v34;
        }

        v30[2] = v32 + 1;
        *&v30[2 * v32 + 4] = v33;
      }

      v29 += 32;
      --v28;
    }

    while (v28);

    v35 = v30[2];
    if (!v35)
    {
      goto LABEL_47;
    }
  }

  else
  {

    v30 = MEMORY[0x277D84F90];
    v35 = *(MEMORY[0x277D84F90] + 16);
    if (!v35)
    {
LABEL_47:

      return;
    }
  }

  v36 = 0;
  v37 = v30 + 5;
  while (v36 < v30[2])
  {
    ++v36;
    v38 = *v37;
    ObjectType = swift_getObjectType();
    v40 = *(v38 + 8);
    swift_unknownObjectRetain();
    v40(v4 & 1, ObjectType, v38);
    swift_unknownObjectRelease();
    v37 += 2;
    if (v35 == v36)
    {
      goto LABEL_47;
    }
  }

LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
}

void sub_20BE82728(double a1, double a2)
{
  v3 = v2[OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_currentContentInsetBehavior + 16];
  if (v3 > 0xFB || (v2[OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_isTransitioningContentInset] & 1) != 0)
  {
    return;
  }

  if (v3 >> 6)
  {
    if (v3 >> 6 != 1)
    {
      return;
    }

    goto LABEL_8;
  }

  if (!v2[OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_currentContentInsetBehavior + 16])
  {
LABEL_8:
    [*(*(*&v2[OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_dataProvider] + 32) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) adjustedContentInset];
    v4 = v6 + a2 >= 4.0;
    goto LABEL_9;
  }

  v4 = sub_20BE8B6B0(a1, a2);
LABEL_9:
  v7 = [v2 navigationItem];
  v8 = [v7 leftBarButtonItems];

  if (v8)
  {
    sub_20B51C88C(0, &qword_27C770510, 0x277D751E0);
    v9 = sub_20C13CC74();
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v10 = [v2 navigationItem];
  v11 = [v10 rightBarButtonItems];

  if (v11)
  {
    sub_20B51C88C(0, &qword_27C770510, 0x277D751E0);
    v12 = sub_20C13CC74();
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v13 = sub_20BEF6C10(v9);

  v45 = v13;
  v14 = sub_20BEF6C10(v12);

  v46 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768250, &unk_20C16EFA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  *(inited + 56) = type metadata accessor for CatalogEditorialCollectionDetailViewController();
  *(inited + 32) = v2;
  v47 = inited;
  v16 = v2;
  v17 = MEMORY[0x277D84F90];
  for (i = 32; i != 56; i += 8)
  {
    v19 = *(&v44[6] + i);
    v20 = *(v19 + 16);
    v21 = *(v17 + 2);
    v22 = v21 + v20;
    if (__OFADD__(v21, v20))
    {
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v22 <= *(v17 + 3) >> 1)
    {
      if (!*(v19 + 16))
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (v21 <= v22)
      {
        v24 = v21 + v20;
      }

      else
      {
        v24 = v21;
      }

      v17 = sub_20BC067B0(isUniquelyReferenced_nonNull_native, v24, 1, v17);
      if (!*(v19 + 16))
      {
LABEL_16:

        if (v20)
        {
          goto LABEL_50;
        }

        continue;
      }
    }

    if ((*(v17 + 3) >> 1) - *(v17 + 2) < v20)
    {
      goto LABEL_51;
    }

    swift_arrayInitWithCopy();

    if (v20)
    {
      v25 = *(v17 + 2);
      v26 = __OFADD__(v25, v20);
      v27 = v25 + v20;
      if (v26)
      {
        goto LABEL_53;
      }

      *(v17 + 2) = v27;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76FD68, &qword_20C181418);
  swift_arrayDestroy();
  v28 = *(v17 + 2);
  if (v28)
  {
    v29 = (v17 + 32);
    v30 = MEMORY[0x277D84F90];
    do
    {
      sub_20B51F1D8(v29, v44);
      sub_20B6B3B74(v44, &v42);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76FD70, &unk_20C181420);
      if (swift_dynamicCast() && v43)
      {
        v41 = v43;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v30 = sub_20BC073DC(0, v30[2] + 1, 1, v30);
        }

        v32 = v30[2];
        v31 = v30[3];
        v33 = v41;
        if (v32 >= v31 >> 1)
        {
          v34 = sub_20BC073DC((v31 > 1), v32 + 1, 1, v30);
          v33 = v41;
          v30 = v34;
        }

        v30[2] = v32 + 1;
        *&v30[2 * v32 + 4] = v33;
      }

      v29 += 32;
      --v28;
    }

    while (v28);

    v35 = v30[2];
    if (!v35)
    {
      goto LABEL_47;
    }
  }

  else
  {

    v30 = MEMORY[0x277D84F90];
    v35 = *(MEMORY[0x277D84F90] + 16);
    if (!v35)
    {
LABEL_47:

      return;
    }
  }

  v36 = 0;
  v37 = v30 + 5;
  while (v36 < v30[2])
  {
    ++v36;
    v38 = *v37;
    ObjectType = swift_getObjectType();
    v40 = *(v38 + 8);
    swift_unknownObjectRetain();
    v40(v4 & 1, ObjectType, v38);
    swift_unknownObjectRelease();
    v37 += 2;
    if (v35 == v36)
    {
      goto LABEL_47;
    }
  }

LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
}

void sub_20BE82C08(double a1, double a2)
{
  v3 = v2[OBJC_IVAR____TtC9SeymourUI30EditorialGalleryViewController_currentContentInsetBehavior + 16];
  if (v3 > 0xFB || (v2[OBJC_IVAR____TtC9SeymourUI30EditorialGalleryViewController_isTransitioningContentInset] & 1) != 0)
  {
    return;
  }

  if (v3 >> 6)
  {
    if (v3 >> 6 != 1)
    {
      return;
    }

    goto LABEL_8;
  }

  if (!v2[OBJC_IVAR____TtC9SeymourUI30EditorialGalleryViewController_currentContentInsetBehavior + 16])
  {
LABEL_8:
    [*(*(*&v2[OBJC_IVAR____TtC9SeymourUI30EditorialGalleryViewController_dataProvider] + OBJC_IVAR____TtC9SeymourUI28EditorialGalleryDataProvider_page) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) adjustedContentInset];
    v4 = v6 + a2 >= 4.0;
    goto LABEL_9;
  }

  v4 = sub_20BE8B400(&OBJC_IVAR____TtC9SeymourUI30EditorialGalleryViewController_dataProvider, &OBJC_IVAR____TtC9SeymourUI28EditorialGalleryDataProvider_page, a1, a2);
LABEL_9:
  v7 = [v2 navigationItem];
  v8 = [v7 leftBarButtonItems];

  if (v8)
  {
    sub_20B51C88C(0, &qword_27C770510, 0x277D751E0);
    v9 = sub_20C13CC74();
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v10 = [v2 navigationItem];
  v11 = [v10 rightBarButtonItems];

  if (v11)
  {
    sub_20B51C88C(0, &qword_27C770510, 0x277D751E0);
    v12 = sub_20C13CC74();
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v13 = sub_20BEF6C10(v9);

  v45 = v13;
  v14 = sub_20BEF6C10(v12);

  v46 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768250, &unk_20C16EFA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  *(inited + 56) = type metadata accessor for EditorialGalleryViewController(0);
  *(inited + 32) = v2;
  v47 = inited;
  v16 = v2;
  v17 = MEMORY[0x277D84F90];
  for (i = 32; i != 56; i += 8)
  {
    v19 = *(&v44[6] + i);
    v20 = *(v19 + 16);
    v21 = *(v17 + 2);
    v22 = v21 + v20;
    if (__OFADD__(v21, v20))
    {
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v22 <= *(v17 + 3) >> 1)
    {
      if (!*(v19 + 16))
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (v21 <= v22)
      {
        v24 = v21 + v20;
      }

      else
      {
        v24 = v21;
      }

      v17 = sub_20BC067B0(isUniquelyReferenced_nonNull_native, v24, 1, v17);
      if (!*(v19 + 16))
      {
LABEL_16:

        if (v20)
        {
          goto LABEL_50;
        }

        continue;
      }
    }

    if ((*(v17 + 3) >> 1) - *(v17 + 2) < v20)
    {
      goto LABEL_51;
    }

    swift_arrayInitWithCopy();

    if (v20)
    {
      v25 = *(v17 + 2);
      v26 = __OFADD__(v25, v20);
      v27 = v25 + v20;
      if (v26)
      {
        goto LABEL_53;
      }

      *(v17 + 2) = v27;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76FD68, &qword_20C181418);
  swift_arrayDestroy();
  v28 = *(v17 + 2);
  if (v28)
  {
    v29 = (v17 + 32);
    v30 = MEMORY[0x277D84F90];
    do
    {
      sub_20B51F1D8(v29, v44);
      sub_20B6B3B74(v44, &v42);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76FD70, &unk_20C181420);
      if (swift_dynamicCast() && v43)
      {
        v41 = v43;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v30 = sub_20BC073DC(0, v30[2] + 1, 1, v30);
        }

        v32 = v30[2];
        v31 = v30[3];
        v33 = v41;
        if (v32 >= v31 >> 1)
        {
          v34 = sub_20BC073DC((v31 > 1), v32 + 1, 1, v30);
          v33 = v41;
          v30 = v34;
        }

        v30[2] = v32 + 1;
        *&v30[2 * v32 + 4] = v33;
      }

      v29 += 32;
      --v28;
    }

    while (v28);

    v35 = v30[2];
    if (!v35)
    {
      goto LABEL_47;
    }
  }

  else
  {

    v30 = MEMORY[0x277D84F90];
    v35 = *(MEMORY[0x277D84F90] + 16);
    if (!v35)
    {
LABEL_47:

      return;
    }
  }

  v36 = 0;
  v37 = v30 + 5;
  while (v36 < v30[2])
  {
    ++v36;
    v38 = *v37;
    ObjectType = swift_getObjectType();
    v40 = *(v38 + 8);
    swift_unknownObjectRetain();
    v40(v4 & 1, ObjectType, v38);
    swift_unknownObjectRelease();
    v37 += 2;
    if (v35 == v36)
    {
      goto LABEL_47;
    }
  }

LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
}

void sub_20BE83104(double a1, double a2)
{
  v3 = v2[OBJC_IVAR____TtC9SeymourUI18RootViewController_currentContentInsetBehavior + 16];
  if (v3 > 0xFB || (v2[OBJC_IVAR____TtC9SeymourUI18RootViewController_isTransitioningContentInset] & 1) != 0)
  {
    return;
  }

  if (v3 >> 6)
  {
    if (v3 >> 6 != 1)
    {
      return;
    }

    goto LABEL_8;
  }

  if (!v2[OBJC_IVAR____TtC9SeymourUI18RootViewController_currentContentInsetBehavior + 16])
  {
LABEL_8:
    [*(*(*&v2[OBJC_IVAR____TtC9SeymourUI18RootViewController_dataProvider] + 48) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) adjustedContentInset];
    v4 = v6 + a2 >= 4.0;
    goto LABEL_9;
  }

  v4 = sub_20BE8B954(a1, a2);
LABEL_9:
  v7 = [v2 navigationItem];
  v8 = [v7 leftBarButtonItems];

  if (v8)
  {
    sub_20B51C88C(0, &qword_27C770510, 0x277D751E0);
    v9 = sub_20C13CC74();
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v10 = [v2 navigationItem];
  v11 = [v10 rightBarButtonItems];

  if (v11)
  {
    sub_20B51C88C(0, &qword_27C770510, 0x277D751E0);
    v12 = sub_20C13CC74();
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v13 = sub_20BEF6C10(v9);

  v45 = v13;
  v14 = sub_20BEF6C10(v12);

  v46 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768250, &unk_20C16EFA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  *(inited + 56) = type metadata accessor for RootViewController(0);
  *(inited + 32) = v2;
  v47 = inited;
  v16 = v2;
  v17 = MEMORY[0x277D84F90];
  for (i = 32; i != 56; i += 8)
  {
    v19 = *(&v44[6] + i);
    v20 = *(v19 + 16);
    v21 = *(v17 + 2);
    v22 = v21 + v20;
    if (__OFADD__(v21, v20))
    {
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v22 <= *(v17 + 3) >> 1)
    {
      if (!*(v19 + 16))
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (v21 <= v22)
      {
        v24 = v21 + v20;
      }

      else
      {
        v24 = v21;
      }

      v17 = sub_20BC067B0(isUniquelyReferenced_nonNull_native, v24, 1, v17);
      if (!*(v19 + 16))
      {
LABEL_16:

        if (v20)
        {
          goto LABEL_50;
        }

        continue;
      }
    }

    if ((*(v17 + 3) >> 1) - *(v17 + 2) < v20)
    {
      goto LABEL_51;
    }

    swift_arrayInitWithCopy();

    if (v20)
    {
      v25 = *(v17 + 2);
      v26 = __OFADD__(v25, v20);
      v27 = v25 + v20;
      if (v26)
      {
        goto LABEL_53;
      }

      *(v17 + 2) = v27;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76FD68, &qword_20C181418);
  swift_arrayDestroy();
  v28 = *(v17 + 2);
  if (v28)
  {
    v29 = (v17 + 32);
    v30 = MEMORY[0x277D84F90];
    do
    {
      sub_20B51F1D8(v29, v44);
      sub_20B6B3B74(v44, &v42);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76FD70, &unk_20C181420);
      if (swift_dynamicCast() && v43)
      {
        v41 = v43;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v30 = sub_20BC073DC(0, v30[2] + 1, 1, v30);
        }

        v32 = v30[2];
        v31 = v30[3];
        v33 = v41;
        if (v32 >= v31 >> 1)
        {
          v34 = sub_20BC073DC((v31 > 1), v32 + 1, 1, v30);
          v33 = v41;
          v30 = v34;
        }

        v30[2] = v32 + 1;
        *&v30[2 * v32 + 4] = v33;
      }

      v29 += 32;
      --v28;
    }

    while (v28);

    v35 = v30[2];
    if (!v35)
    {
      goto LABEL_47;
    }
  }

  else
  {

    v30 = MEMORY[0x277D84F90];
    v35 = *(MEMORY[0x277D84F90] + 16);
    if (!v35)
    {
LABEL_47:

      return;
    }
  }

  v36 = 0;
  v37 = v30 + 5;
  while (v36 < v30[2])
  {
    ++v36;
    v38 = *v37;
    ObjectType = swift_getObjectType();
    v40 = *(v38 + 8);
    swift_unknownObjectRetain();
    v40(v4 & 1, ObjectType, v38);
    swift_unknownObjectRelease();
    v37 += 2;
    if (v35 == v36)
    {
      goto LABEL_47;
    }
  }

LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
}

void sub_20BE835D8(double a1, double a2)
{
  v3 = v2[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_currentContentInsetBehavior + 16];
  if (v3 > 0xFB || (v2[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_isTransitioningContentInset] & 1) != 0)
  {
    return;
  }

  if (v3 >> 6)
  {
    if (v3 >> 6 != 1)
    {
      return;
    }

    goto LABEL_8;
  }

  if (!v2[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_currentContentInsetBehavior + 16])
  {
LABEL_8:
    [*(*(*&v2[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_dataProvider] + OBJC_IVAR____TtC9SeymourUI30CatalogWorkoutPageDataProvider_page) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) adjustedContentInset];
    v4 = v6 + a2 >= 4.0;
    goto LABEL_9;
  }

  v4 = sub_20BE8B400(&OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_dataProvider, &OBJC_IVAR____TtC9SeymourUI30CatalogWorkoutPageDataProvider_page, a1, a2);
LABEL_9:
  v7 = [v2 navigationItem];
  v8 = [v7 leftBarButtonItems];

  if (v8)
  {
    sub_20B51C88C(0, &qword_27C770510, 0x277D751E0);
    v9 = sub_20C13CC74();
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v10 = [v2 navigationItem];
  v11 = [v10 rightBarButtonItems];

  if (v11)
  {
    sub_20B51C88C(0, &qword_27C770510, 0x277D751E0);
    v12 = sub_20C13CC74();
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v13 = sub_20BEF6C10(v9);

  v45 = v13;
  v14 = sub_20BEF6C10(v12);

  v46 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768250, &unk_20C16EFA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  *(inited + 56) = type metadata accessor for CatalogWorkoutDetailViewController();
  *(inited + 32) = v2;
  v47 = inited;
  v16 = v2;
  v17 = MEMORY[0x277D84F90];
  for (i = 32; i != 56; i += 8)
  {
    v19 = *(&v44[6] + i);
    v20 = *(v19 + 16);
    v21 = *(v17 + 2);
    v22 = v21 + v20;
    if (__OFADD__(v21, v20))
    {
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v22 <= *(v17 + 3) >> 1)
    {
      if (!*(v19 + 16))
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (v21 <= v22)
      {
        v24 = v21 + v20;
      }

      else
      {
        v24 = v21;
      }

      v17 = sub_20BC067B0(isUniquelyReferenced_nonNull_native, v24, 1, v17);
      if (!*(v19 + 16))
      {
LABEL_16:

        if (v20)
        {
          goto LABEL_50;
        }

        continue;
      }
    }

    if ((*(v17 + 3) >> 1) - *(v17 + 2) < v20)
    {
      goto LABEL_51;
    }

    swift_arrayInitWithCopy();

    if (v20)
    {
      v25 = *(v17 + 2);
      v26 = __OFADD__(v25, v20);
      v27 = v25 + v20;
      if (v26)
      {
        goto LABEL_53;
      }

      *(v17 + 2) = v27;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76FD68, &qword_20C181418);
  swift_arrayDestroy();
  v28 = *(v17 + 2);
  if (v28)
  {
    v29 = (v17 + 32);
    v30 = MEMORY[0x277D84F90];
    do
    {
      sub_20B51F1D8(v29, v44);
      sub_20B6B3B74(v44, &v42);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76FD70, &unk_20C181420);
      if (swift_dynamicCast() && v43)
      {
        v41 = v43;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v30 = sub_20BC073DC(0, v30[2] + 1, 1, v30);
        }

        v32 = v30[2];
        v31 = v30[3];
        v33 = v41;
        if (v32 >= v31 >> 1)
        {
          v34 = sub_20BC073DC((v31 > 1), v32 + 1, 1, v30);
          v33 = v41;
          v30 = v34;
        }

        v30[2] = v32 + 1;
        *&v30[2 * v32 + 4] = v33;
      }

      v29 += 32;
      --v28;
    }

    while (v28);

    v35 = v30[2];
    if (!v35)
    {
      goto LABEL_47;
    }
  }

  else
  {

    v30 = MEMORY[0x277D84F90];
    v35 = *(MEMORY[0x277D84F90] + 16);
    if (!v35)
    {
LABEL_47:

      return;
    }
  }

  v36 = 0;
  v37 = v30 + 5;
  while (v36 < v30[2])
  {
    ++v36;
    v38 = *v37;
    ObjectType = swift_getObjectType();
    v40 = *(v38 + 8);
    swift_unknownObjectRetain();
    v40(v4 & 1, ObjectType, v38);
    swift_unknownObjectRelease();
    v37 += 2;
    if (v35 == v36)
    {
      goto LABEL_47;
    }
  }

LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
}