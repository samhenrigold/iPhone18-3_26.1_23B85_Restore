uint64_t (*sub_1DD03AF6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1, a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  (*(v7 + 32))(&v11[v10], v9, a3);
  return sub_1DD040774;
}

uint64_t (*sub_1DD03B098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1, a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  (*(v7 + 32))(&v11[v10], v9, a3);
  return sub_1DD04071C;
}

void *sub_1DD03B1C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1, a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  (*(v7 + 32))(&v11[v10], v9, a3);
  return &unk_1DD10BFC0;
}

uint64_t sub_1DD03B2F0(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  memcpy((v7 + 16), a2, 0x50uLL);
  v14 = (*(a7 + 80) + **(a7 + 80));
  v12 = swift_task_alloc();
  *(v7 + 96) = v12;
  *v12 = v7;
  v12[1] = sub_1DD03B434;

  return v14(a1, v7 + 16, a3, a6, a7);
}

uint64_t sub_1DD03B434()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 104) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    v10 = OUTLINED_FUNCTION_130();

    return v11(v10);
  }
}

void *sub_1DD03B54C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1, a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  (*(v7 + 32))(&v11[v10], v9, a3);
  return &unk_1DD10BFB0;
}

uint64_t sub_1DD03B678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = *(a3 + 24);
  v13 = *(a3 + 32);
  *(v7 + 16) = *a3;
  v14 = *(a3 + 40);
  *(v7 + 24) = *(a3 + 8);
  *(v7 + 40) = v12;
  *(v7 + 48) = v13;
  *(v7 + 56) = v14;
  v17 = (*(a7 + 88) + **(a7 + 88));
  v15 = swift_task_alloc();
  *(v7 + 64) = v15;
  *v15 = v7;
  v15[1] = sub_1DCE7A888;

  return v17(a1, a2, v7 + 16, a6, a7);
}

void *sub_1DD03B7E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1, a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  (*(v7 + 32))(&v11[v10], v9, a3);
  return &unk_1DD10BFA0;
}

uint64_t sub_1DD03B914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a2 + 24);
  v11 = *(a2 + 32);
  *(v6 + 16) = *a2;
  v12 = *(a2 + 40);
  *(v6 + 24) = *(a2 + 8);
  *(v6 + 40) = v10;
  *(v6 + 48) = v11;
  *(v6 + 56) = v12;
  v15 = (*(a6 + 96) + **(a6 + 96));
  v13 = swift_task_alloc();
  *(v6 + 64) = v13;
  *v13 = v6;
  v13[1] = sub_1DCE7A888;

  return v15(a1, v6 + 16, a5, a6);
}

void *sub_1DD03BA74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1, a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  (*(v7 + 32))(&v11[v10], v9, a3);
  return &unk_1DD10BF90;
}

uint64_t sub_1DD03BBA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a2 + 24);
  v11 = *(a2 + 32);
  *(v6 + 16) = *a2;
  v12 = *(a2 + 40);
  *(v6 + 24) = *(a2 + 8);
  *(v6 + 40) = v10;
  *(v6 + 48) = v11;
  *(v6 + 56) = v12;
  v15 = (*(a6 + 104) + **(a6 + 104));
  v13 = swift_task_alloc();
  *(v6 + 64) = v13;
  *v13 = v6;
  v13[1] = sub_1DCE7A888;

  return v15(a1, v6 + 16, a5, a6);
}

void *sub_1DD03BD00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1, a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  (*(v7 + 32))(&v11[v10], v9, a3);
  return &unk_1DD10BF80;
}

uint64_t sub_1DD03BE2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a2 + 24);
  v11 = *(a2 + 32);
  *(v6 + 16) = *a2;
  v12 = *(a2 + 40);
  *(v6 + 24) = *(a2 + 8);
  *(v6 + 40) = v10;
  *(v6 + 48) = v11;
  *(v6 + 56) = v12;
  v15 = (*(a6 + 112) + **(a6 + 112));
  v13 = swift_task_alloc();
  *(v6 + 64) = v13;
  *v13 = v6;
  v13[1] = sub_1DCE7A888;

  return v15(a1, v6 + 16, a5, a6);
}

uint64_t (*sub_1DD03BF8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1, a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  (*(v7 + 32))(&v11[v10], v9, a3);
  return sub_1DD040340;
}

void *sub_1DD03C0B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1, a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  (*(v7 + 32))(&v11[v10], v9, a3);
  return &unk_1DD10BF70;
}

uint64_t sub_1DD03C1E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = (*(a6 + 128) + **(a6 + 128));
  v11 = swift_task_alloc();
  *(v6 + 16) = v11;
  *v11 = v6;
  v11[1] = sub_1DCB4AE1C;

  return v13(a1, a2, a5, a6);
}

void *sub_1DD03C31C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1, a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  (*(v7 + 32))(&v11[v10], v9, a3);
  return &unk_1DD10BF60;
}

uint64_t sub_1DD03C448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = (*(a7 + 136) + **(a7 + 136));
  v13 = swift_task_alloc();
  *(v7 + 16) = v13;
  *v13 = v7;
  v13[1] = sub_1DCB4AE1C;

  return v15(a1, a2, a3, a6, a7);
}

void *sub_1DD03C590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1, a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  (*(v7 + 32))(&v11[v10], v9, a3);
  return &unk_1DD10BF50;
}

uint64_t sub_1DD03C6BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = (*(a7 + 144) + **(a7 + 144));
  v13 = swift_task_alloc();
  *(v7 + 16) = v13;
  *v13 = v7;
  v13[1] = sub_1DCB4AE1C;

  return v15(a1, a2, a3, a6, a7);
}

void *sub_1DD03C804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1, a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  (*(v7 + 32))(&v11[v10], v9, a3);
  return &unk_1DD10BF40;
}

uint64_t sub_1DD03C930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = (*(a7 + 152) + **(a7 + 152));
  v13 = swift_task_alloc();
  *(v7 + 16) = v13;
  *v13 = v7;
  v13[1] = sub_1DCB4AE1C;

  return v15(a1, a2, a3, a6, a7);
}

void *sub_1DD03CA78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1, a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  (*(v7 + 32))(&v11[v10], v9, a3);
  return &unk_1DD10BF30;
}

uint64_t sub_1DD03CBA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = (*(a7 + 160) + **(a7 + 160));
  v13 = swift_task_alloc();
  *(v7 + 16) = v13;
  *v13 = v7;
  v13[1] = sub_1DCB4AE1C;

  return v15(a1, a2, a3, a6, a7);
}

void *sub_1DD03CCEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1, a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  (*(v7 + 32))(&v11[v10], v9, a3);
  return &unk_1DD10BF20;
}

uint64_t sub_1DD03CE18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = (*(a7 + 168) + **(a7 + 168));
  v13 = swift_task_alloc();
  *(v7 + 16) = v13;
  *v13 = v7;
  v13[1] = sub_1DCB4AE1C;

  return v15(a1, a2, a3, a6, a7);
}

void *sub_1DD03CF60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1, a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  (*(v7 + 32))(&v11[v10], v9, a3);
  return &unk_1DD10BF10;
}

uint64_t sub_1DD03D08C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = (*(a6 + 176) + **(a6 + 176));
  v11 = swift_task_alloc();
  *(v6 + 16) = v11;
  *v11 = v6;
  v11[1] = sub_1DCB4AE1C;

  return v13(a1, a2, a5, a6);
}

void *sub_1DD03D1C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1, a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  (*(v7 + 32))(&v11[v10], v9, a3);
  return &unk_1DD10BF00;
}

uint64_t sub_1DD03D2F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = (*(a6 + 184) + **(a6 + 184));
  v11 = swift_task_alloc();
  *(v6 + 16) = v11;
  *v11 = v6;
  v11[1] = sub_1DCB4AE1C;

  return v13(a1, a2, a5, a6);
}

void *sub_1DD03D428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1, a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  (*(v7 + 32))(&v11[v10], v9, a3);
  return &unk_1DD10BEF0;
}

uint64_t sub_1DD03D554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = (*(a5 + 192) + **(a5 + 192));
  v9 = swift_task_alloc();
  *(v5 + 16) = v9;
  *v9 = v5;
  v9[1] = sub_1DCB4AE1C;

  return v11(a1, a4, a5);
}

void *sub_1DD03D684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1, a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  (*(v7 + 32))(&v11[v10], v9, a3);
  return &unk_1DD10BEE0;
}

uint64_t sub_1DD03D7B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = (*(a6 + 200) + **(a6 + 200));
  v11 = swift_task_alloc();
  *(v6 + 16) = v11;
  *v11 = v6;
  v11[1] = sub_1DCB4AE1C;

  return v13(a1, a2, a5, a6);
}

uint64_t sub_1DD03D8E8()
{
  OUTLINED_FUNCTION_42();
  v1[12] = v2;
  v1[13] = v0;
  memcpy(v1 + 2, v3, 0x50uLL);
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1DD03D950()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_2_5();
  v6 = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 112) = v2;
  *v2 = v3;
  v2[1] = sub_1DD03DA14;
  v4 = *(v0 + 96);

  return v6(v4, v0 + 16);
}

uint64_t sub_1DD03DA14()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 120) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_29();

    return v10();
  }
}

uint64_t sub_1DD03DB54()
{
  OUTLINED_FUNCTION_42();
  v1[13] = v2;
  v1[14] = v0;
  v1[12] = v3;
  memcpy(v1 + 2, v4, 0x50uLL);
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DD03DBC0()
{
  OUTLINED_FUNCTION_42();
  v5 = (*(v0[14] + 144) + **(v0[14] + 144));
  v1 = swift_task_alloc();
  v0[15] = v1;
  *v1 = v0;
  v1[1] = sub_1DD03DCB4;
  v3 = v0[12];
  v2 = v0[13];

  return v5(v3, v0 + 2, v2);
}

uint64_t sub_1DD03DCB4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 128) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    v10 = OUTLINED_FUNCTION_130();

    return v11(v10);
  }
}

uint64_t sub_1DD03DDCC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  *(v4 + 64) = a1;
  *(v4 + 72) = a2;
  v5 = *a3;
  *(v4 + 80) = v3;
  *(v4 + 88) = v5;
  *(v4 + 96) = *(a3 + 1);
  *(v4 + 57) = *(a3 + 24);
  *(v4 + 112) = a3[4];
  *(v4 + 58) = *(a3 + 40);
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DD03DE08()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_95_9();
  *(v1 + 24) = *(v1 + 96);
  *(v1 + 40) = v2;
  *(v1 + 48) = v3;
  *(v1 + 56) = v4;
  v11 = (v5 + *v5);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v1 + 120) = v6;
  *v6 = v7;
  v6[1] = sub_1DCE7CB88;
  v8 = *(v1 + 64);
  v9 = *(v1 + 72);

  return v11(v8, v9, v0);
}

uint64_t sub_1DD03DF44()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_69_4();
  OUTLINED_FUNCTION_95_9();
  *(v0 + 24) = *(v0 + 88);
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;
  *(v0 + 56) = v3;
  OUTLINED_FUNCTION_2_5();
  v8 = v4;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 112) = v5;
  *v5 = v6;
  v5[1] = sub_1DD03DA14;
  OUTLINED_FUNCTION_62_1();

  return v8();
}

uint64_t sub_1DD03E044()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_69_4();
  OUTLINED_FUNCTION_95_9();
  *(v0 + 24) = *(v0 + 88);
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;
  *(v0 + 56) = v3;
  OUTLINED_FUNCTION_2_5();
  v8 = v4;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 112) = v5;
  *v5 = v6;
  v5[1] = sub_1DD03E120;
  OUTLINED_FUNCTION_62_1();

  return v8();
}

uint64_t sub_1DD03E120()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 120) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_29();

    return v10();
  }
}

uint64_t sub_1DD03E258()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_69_4();
  OUTLINED_FUNCTION_95_9();
  *(v0 + 24) = *(v0 + 88);
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;
  *(v0 + 56) = v3;
  OUTLINED_FUNCTION_2_5();
  v8 = v4;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 112) = v5;
  *v5 = v6;
  v5[1] = sub_1DD03E120;
  OUTLINED_FUNCTION_62_1();

  return v8();
}

uint64_t sub_1DD03E35C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DD03E374()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_2_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_39_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_46_1(v1);

  return v4(v3);
}

uint64_t sub_1DD03E424(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DD03E43C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_9_78();
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 48) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_28_38(v1);

  return v4(v3);
}

uint64_t sub_1DD03E4F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DD03E508()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_9_78();
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 48) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_28_38(v1);

  return v4(v3);
}

uint64_t sub_1DD03E5BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DD03E5D4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_9_78();
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 48) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_28_38(v1);

  return v4(v3);
}

uint64_t sub_1DD03E688(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DD03E6A0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_9_78();
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 48) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_28_38(v1);

  return v4(v3);
}

uint64_t sub_1DD03E754(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DD03E76C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_9_78();
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 48) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_28_38(v1);

  return v4(v3);
}

uint64_t sub_1DD03E820(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DD03E838()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_2_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_39_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_46_1(v1);

  return v4(v3);
}

uint64_t sub_1DD03E8E8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DD03E900()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_2_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_39_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_46_1(v1);

  return v4(v3);
}

uint64_t sub_1DD03E9B0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DD03E9C4()
{
  OUTLINED_FUNCTION_42();
  v5 = (*(v0[3] + 368) + **(v0[3] + 368));
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[4] = v1;
  *v1 = v2;
  v1[1] = sub_1DCB3F98C;
  v3 = v0[2];

  return v5(v3);
}

uint64_t sub_1DD03EAB0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DD03EAC8()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_39_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_46_1(v1);

  return v4(v3);
}

uint64_t sub_1DD03EBA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AnyUnsetRelationshipFlowStrategy(255, *(*v4 + 80), a3, a4);
  swift_getMetatypeMetadata();
  v5 = sub_1DD0DE02C();
  if (v4[50])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC360, &qword_1DD0FE290);
    v6 = sub_1DD0DE02C();
    v8 = v7;
  }

  else
  {
    v8 = 0xEB00000000656C62;
    v6 = 0x616C696176616E75;
  }

  sub_1DD0DEC1C();

  MEMORY[0x1E12A6780](0xD000000000000013, 0x80000001DD12A430);
  MEMORY[0x1E12A6780](v6, v8);

  MEMORY[0x1E12A6780](41, 0xE100000000000000);
  return v5;
}

uint64_t sub_1DD03ECF8()
{

  return v0;
}

uint64_t sub_1DD03EDD0()
{
  sub_1DD03ECF8();

  return swift_deallocClassInstance();
}

uint64_t sub_1DD03EE40(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB4AE1C;

  return sub_1DCE66CBC(a1, a2);
}

uint64_t sub_1DD03EEEC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB4AE1C;

  return sub_1DCE66CD4(a1, a2);
}

uint64_t sub_1DD03EF98(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB4AE1C;

  return sub_1DCE66D9C(a1, a2);
}

uint64_t sub_1DD03F044(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB4AE1C;

  return sub_1DCE66E64(a1, a2);
}

uint64_t sub_1DD03F0F0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return sub_1DD03D8E8();
}

uint64_t sub_1DD03F1C0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCBCF08C;

  return sub_1DD03DB54();
}

uint64_t sub_1DD03F270(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCB4AE1C;

  return sub_1DD03DDCC(a1, a2, a3);
}

uint64_t sub_1DD03F324(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB4AE1C;

  return sub_1DD03DF20(a1, a2);
}

uint64_t sub_1DD03F3D0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB4AE1C;

  return sub_1DD03E020(a1, a2);
}

uint64_t sub_1DD03F47C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB4AE1C;

  return sub_1DD03E234(a1, a2);
}

uint64_t sub_1DD03F54C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB4AE1C;

  return sub_1DD03E35C(a1, a2);
}

uint64_t sub_1DD03F5F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCB4AE1C;

  return sub_1DD03E424(a1, a2, a3);
}

uint64_t sub_1DD03F6AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCB4AE1C;

  return sub_1DD03E4F0(a1, a2, a3);
}

uint64_t sub_1DD03F760(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCB4AE1C;

  return sub_1DD03E5BC(a1, a2, a3);
}

uint64_t sub_1DD03F814(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCB4AE1C;

  return sub_1DD03E688(a1, a2, a3);
}

uint64_t sub_1DD03F8C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCB4AE1C;

  return sub_1DD03E754(a1, a2, a3);
}

uint64_t sub_1DD03F97C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB4AE1C;

  return sub_1DD03E820(a1, a2);
}

uint64_t sub_1DD03FA28(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB4AE1C;

  return sub_1DD03E8E8(a1, a2);
}

uint64_t sub_1DD03FAD4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return sub_1DD03E9B0(a1);
}

uint64_t sub_1DD03FB70(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB4AE1C;

  return sub_1DD03EAB0(a1, a2);
}

uint64_t sub_1DD03FC40()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_5_120();
  OUTLINED_FUNCTION_42_35();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2_117(v1);
  OUTLINED_FUNCTION_121();

  return sub_1DD03D7B0(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1DD03FCF0()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_83_14();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_11_0(v3);
  *v4 = v5;
  v4[1] = sub_1DCB4AE1C;
  v6 = OUTLINED_FUNCTION_44_34();

  return sub_1DD03D554(v6, v7, v0, v1, v2);
}

uint64_t sub_1DD03FDC0()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_5_120();
  OUTLINED_FUNCTION_42_35();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2_117(v1);
  OUTLINED_FUNCTION_121();

  return sub_1DD03D2F0(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1DD03FE70()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_5_120();
  OUTLINED_FUNCTION_42_35();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2_117(v1);
  OUTLINED_FUNCTION_121();

  return sub_1DD03D08C(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1DD03FF20()
{
  OUTLINED_FUNCTION_131_0();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_7_84();
  OUTLINED_FUNCTION_50_26();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_4_118(v1);
  OUTLINED_FUNCTION_125_0();

  return sub_1DD03CE18(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1DD03FFD0()
{
  OUTLINED_FUNCTION_131_0();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_7_84();
  OUTLINED_FUNCTION_50_26();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_4_118(v1);
  OUTLINED_FUNCTION_125_0();

  return sub_1DD03CBA4(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1DD040080()
{
  OUTLINED_FUNCTION_131_0();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_7_84();
  OUTLINED_FUNCTION_50_26();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_4_118(v1);
  OUTLINED_FUNCTION_125_0();

  return sub_1DD03C930(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1DD040130()
{
  OUTLINED_FUNCTION_131_0();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_7_84();
  OUTLINED_FUNCTION_50_26();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_4_118(v1);
  OUTLINED_FUNCTION_125_0();

  return sub_1DD03C6BC(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1DD0401E0()
{
  OUTLINED_FUNCTION_131_0();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_7_84();
  OUTLINED_FUNCTION_50_26();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_4_118(v1);
  OUTLINED_FUNCTION_125_0();

  return sub_1DD03C448(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1DD040290()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_5_120();
  OUTLINED_FUNCTION_42_35();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2_117(v1);
  OUTLINED_FUNCTION_121();

  return sub_1DD03C1E4(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1DD040340()
{
  OUTLINED_FUNCTION_41_34();
  OUTLINED_FUNCTION_40_37();
  return (*(v0 + 120))();
}

uint64_t sub_1DD040398()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_5_120();
  OUTLINED_FUNCTION_42_35();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2_117(v1);
  OUTLINED_FUNCTION_121();

  return sub_1DD03BE2C(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1DD040448()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_5_120();
  OUTLINED_FUNCTION_42_35();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2_117(v1);
  OUTLINED_FUNCTION_121();

  return sub_1DD03BBA0(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1DD0404F8()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_5_120();
  OUTLINED_FUNCTION_42_35();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2_117(v1);
  OUTLINED_FUNCTION_121();

  return sub_1DD03B914(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1DD0405A8()
{
  OUTLINED_FUNCTION_131_0();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_7_84();
  OUTLINED_FUNCTION_50_26();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_4_118(v1);
  OUTLINED_FUNCTION_125_0();

  return sub_1DD03B678(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1DD040658()
{
  OUTLINED_FUNCTION_131_0();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_7_84();
  OUTLINED_FUNCTION_50_26();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCBF9BCC;
  OUTLINED_FUNCTION_11_75();
  OUTLINED_FUNCTION_125_0();

  return sub_1DD03B2F0(v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1DD04071C()
{
  OUTLINED_FUNCTION_41_34();
  OUTLINED_FUNCTION_40_37();
  return (*(v0 + 72))();
}

uint64_t sub_1DD0407CC()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_5_120();
  OUTLINED_FUNCTION_42_35();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2_117(v1);
  OUTLINED_FUNCTION_121();

  return sub_1DD03AE2C(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1DD04087C()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_5_120();
  OUTLINED_FUNCTION_42_35();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2_117(v1);
  OUTLINED_FUNCTION_121();

  return sub_1DD03ABC8(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1DD04092C()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_5_120();
  OUTLINED_FUNCTION_42_35();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2_117(v1);
  OUTLINED_FUNCTION_121();

  return sub_1DD03A964(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1DD0409DC()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_5_120();
  OUTLINED_FUNCTION_42_35();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2_117(v1);
  OUTLINED_FUNCTION_121();

  return sub_1DD03A700(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1DD040A8C()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_5_120();
  OUTLINED_FUNCTION_42_35();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2_117(v1);
  OUTLINED_FUNCTION_121();

  return sub_1DD03A49C(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1DD040B3C()
{
  OUTLINED_FUNCTION_41_34();
  OUTLINED_FUNCTION_40_37();
  return (*(v0 + 16))();
}

uint64_t sub_1DD040B94()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_5_120();
  OUTLINED_FUNCTION_42_35();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2_117(v1);
  OUTLINED_FUNCTION_121();

  return sub_1DD0367C8(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1DD040C44()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_5_120();
  OUTLINED_FUNCTION_42_35();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2_117(v1);
  OUTLINED_FUNCTION_121();

  return sub_1DD036AF0(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1DD040CF4()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_5_120();
  OUTLINED_FUNCTION_42_35();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2_117(v1);
  OUTLINED_FUNCTION_121();

  return sub_1DD036D44(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1DD040DA4()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_5_120();
  OUTLINED_FUNCTION_42_35();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2_117(v1);
  OUTLINED_FUNCTION_121();

  return sub_1DD037038(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1DD040E54()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_5_120();
  OUTLINED_FUNCTION_42_35();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2_117(v1);
  OUTLINED_FUNCTION_121();

  return sub_1DD03728C(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1DD040F04()
{
  OUTLINED_FUNCTION_131_0();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_7_84();
  OUTLINED_FUNCTION_50_26();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCBF9BCC;
  OUTLINED_FUNCTION_11_75();
  OUTLINED_FUNCTION_125_0();

  return sub_1DD0377D0(v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1DD040FC8()
{
  OUTLINED_FUNCTION_131_0();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_7_84();
  OUTLINED_FUNCTION_50_26();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_4_118(v1);
  OUTLINED_FUNCTION_125_0();

  return sub_1DD037CA8(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1DD041078()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_5_120();
  OUTLINED_FUNCTION_42_35();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2_117(v1);
  OUTLINED_FUNCTION_121();

  return sub_1DD037FFC(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1DD041128()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_5_120();
  OUTLINED_FUNCTION_42_35();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2_117(v1);
  OUTLINED_FUNCTION_121();

  return sub_1DD038280(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1DD0411D8()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_5_120();
  OUTLINED_FUNCTION_42_35();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2_117(v1);
  OUTLINED_FUNCTION_121();

  return sub_1DD038620(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1DD041288()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_5_120();
  OUTLINED_FUNCTION_42_35();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2_117(v1);
  OUTLINED_FUNCTION_121();

  return sub_1DD0389D0(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1DD041338()
{
  OUTLINED_FUNCTION_131_0();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_7_84();
  OUTLINED_FUNCTION_50_26();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_4_118(v1);
  OUTLINED_FUNCTION_125_0();

  return sub_1DD038CB8(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1DD0413E8()
{
  OUTLINED_FUNCTION_131_0();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_7_84();
  OUTLINED_FUNCTION_50_26();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_4_118(v1);
  OUTLINED_FUNCTION_125_0();

  return sub_1DD038F24(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1DD041498()
{
  OUTLINED_FUNCTION_131_0();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_7_84();
  OUTLINED_FUNCTION_50_26();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_4_118(v1);
  OUTLINED_FUNCTION_125_0();

  return sub_1DD039190(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1DD041548()
{
  OUTLINED_FUNCTION_131_0();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_7_84();
  OUTLINED_FUNCTION_50_26();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_4_118(v1);
  OUTLINED_FUNCTION_125_0();

  return sub_1DD0393FC(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1DD0415F8()
{
  OUTLINED_FUNCTION_131_0();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_7_84();
  OUTLINED_FUNCTION_50_26();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_4_118(v1);
  OUTLINED_FUNCTION_125_0();

  return sub_1DD039668(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1DD0416A8()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_5_120();
  OUTLINED_FUNCTION_42_35();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2_117(v1);
  OUTLINED_FUNCTION_121();

  return sub_1DD0398D4(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1DD041758()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_5_120();
  OUTLINED_FUNCTION_42_35();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2_117(v1);
  OUTLINED_FUNCTION_121();

  return sub_1DD039B28(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1DD041808()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_83_14();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_11_0(v3);
  *v4 = v5;
  v4[1] = sub_1DCB4AE1C;
  v6 = OUTLINED_FUNCTION_44_34();

  return sub_1DD039D7C(v6, v7, v0, v1, v2);
}

uint64_t sub_1DD0418D8()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_5_120();
  OUTLINED_FUNCTION_42_35();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2_117(v1);
  OUTLINED_FUNCTION_121();

  return sub_1DD039FF0(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1DD041A7C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC810, &qword_1DD10C160);
  OUTLINED_FUNCTION_20_0(v0);
  v1 = OUTLINED_FUNCTION_79_1();

  return sub_1DD038C2C(v1);
}

uint64_t sub_1DD041AE8()
{
  OUTLINED_FUNCTION_41_34();
  OUTLINED_FUNCTION_40_37();
  return (*(v0 + 120))();
}

uint64_t sub_1DD041BB0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC820, &qword_1DD10C170);
  OUTLINED_FUNCTION_20_0(v0);
  v1 = OUTLINED_FUNCTION_79_1();

  return sub_1DD037F60(v1);
}

id sub_1DD041C1C(id result, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    return result;
  }

  return result;
}

uint64_t sub_1DD041C3C(uint64_t a1, char a2)
{
  v5 = *(v2 + 16);
  sub_1DD0DE40C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v6 = sub_1DD0DE47C();
  OUTLINED_FUNCTION_20_0(v6);
  v8 = v2 + ((*(v7 + 80) + 40) & ~*(v7 + 80));

  return sub_1DD037C2C(a1, a2 & 1, v8, v5);
}

uint64_t sub_1DD041D10()
{
  OUTLINED_FUNCTION_41_34();
  OUTLINED_FUNCTION_40_37();
  return (*(v0 + 72))();
}

uint64_t sub_1DD041E1C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  OUTLINED_FUNCTION_20_0(v0);
  v1 = OUTLINED_FUNCTION_79_1();
  return sub_1DD036F98(v1);
}

uint64_t objectdestroy_450Tm(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));
  OUTLINED_FUNCTION_56_4();

  return swift_deallocObject();
}

uint64_t sub_1DD041F20()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC828, &qword_1DD10C178);
  OUTLINED_FUNCTION_20_0(v0);
  v1 = OUTLINED_FUNCTION_79_1();

  return sub_1DD036A1C(v1);
}

uint64_t objectdestroy_236Tm()
{
  (*(*(*(v0 + 24) - 8) + 8))(v0 + ((*(*(*(v0 + 24) - 8) + 80) + 40) & ~*(*(*(v0 + 24) - 8) + 80)));
  OUTLINED_FUNCTION_56_4();

  return swift_deallocObject();
}

uint64_t sub_1DD042004()
{
  OUTLINED_FUNCTION_41_34();
  OUTLINED_FUNCTION_40_37();
  return (*(v0 + 16))();
}

uint64_t sub_1DD042078()
{
  OUTLINED_FUNCTION_42();
  *(v0 + 64) = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 72) = v2;
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_11_26(v2);

  return v5(v4);
}

uint64_t sub_1DD042158()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 80) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DD042250()
{
  v1 = *(v0 + 64);
  *(v0 + 56) = 0;
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  *(v1 + 25) = *(v0 + 41);
  *v1 = v2;
  v1[1] = v3;
  return OUTLINED_FUNCTION_15_7();
}

uint64_t sub_1DD04226C()
{
  v1 = *(v0 + 64);
  *v1 = *(v0 + 80);
  *(v1 + 40) = 1;
  return OUTLINED_FUNCTION_15_7();
}

uint64_t sub_1DD042284()
{
  OUTLINED_FUNCTION_42();
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 40) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_11_26(v1);

  return v4(v3);
}

uint64_t sub_1DD042360()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 48) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t static UnsetRelationshipOutputFactory.makeMeCardNotFoundResponse(requestedRelationship:)()
{
  OUTLINED_FUNCTION_42();
  v2 = v1;
  v4 = OUTLINED_FUNCTION_79_13(v3);
  v0[3] = v4;
  OUTLINED_FUNCTION_99(v4);
  v0[4] = v5;
  v6 = OUTLINED_FUNCTION_38();
  v7 = OUTLINED_FUNCTION_78_1(v6);
  OUTLINED_FUNCTION_26_39(v7);
  v0[7] = OUTLINED_FUNCTION_38();
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_97(v8);
  *v9 = v10;
  OUTLINED_FUNCTION_31_0(v9);

  return sub_1DD045488(v2);
}

uint64_t sub_1DD042588()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  *v4 = *v1;
  OUTLINED_FUNCTION_77_0(v5);
  if (v0)
  {
    OUTLINED_FUNCTION_81();

    OUTLINED_FUNCTION_32_3();

    return v6();
  }

  else
  {
    OUTLINED_FUNCTION_101();

    return MEMORY[0x1EEE6DFA0](v8, v9, v10);
  }
}

uint64_t sub_1DD042834()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 88) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t static UnsetRelationshipOutputFactory.makeContactNotFoundResponse(requestedPerson:)()
{
  OUTLINED_FUNCTION_42();
  v2 = OUTLINED_FUNCTION_79_13(v1);
  v0[3] = v2;
  OUTLINED_FUNCTION_99(v2);
  v0[4] = v3;
  v4 = OUTLINED_FUNCTION_38();
  v5 = OUTLINED_FUNCTION_78_1(v4);
  OUTLINED_FUNCTION_26_39(v5);
  v0[7] = OUTLINED_FUNCTION_38();
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_97(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_31_0(v7);

  return sub_1DD045714();
}

uint64_t sub_1DD042A0C()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  *v4 = *v1;
  OUTLINED_FUNCTION_77_0(v5);
  if (v0)
  {
    OUTLINED_FUNCTION_81();

    OUTLINED_FUNCTION_32_3();

    return v6();
  }

  else
  {
    OUTLINED_FUNCTION_101();

    return MEMORY[0x1EEE6DFA0](v8, v9, v10);
  }
}

uint64_t static UnsetRelationshipOutputFactory.makeSaveRelationshipCompletedResponse(person:requestedRelationship:)()
{
  OUTLINED_FUNCTION_42();
  v2 = OUTLINED_FUNCTION_79_13(v1);
  v0[3] = v2;
  OUTLINED_FUNCTION_99(v2);
  v0[4] = v3;
  v4 = OUTLINED_FUNCTION_38();
  v5 = OUTLINED_FUNCTION_78_1(v4);
  OUTLINED_FUNCTION_26_39(v5);
  v0[7] = OUTLINED_FUNCTION_38();
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_97(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_31_0(v7);

  return sub_1DD045930();
}

uint64_t sub_1DD042DBC()
{
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 56);
  v2 = type metadata accessor for AceOutput(0);
  v1[3] = v2;
  v1[4] = &protocol witness table for AceOutput;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v1);
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  type metadata accessor for NLContextUpdate(0);
  OUTLINED_FUNCTION_31();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  sub_1DD0DD10C();
  OUTLINED_FUNCTION_31();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  v12 = *(v2 + 32);
  v13 = *MEMORY[0x1E69D0678];
  sub_1DD0DD15C();
  OUTLINED_FUNCTION_1_3();
  (*(v14 + 104))(boxed_opaque_existential_1Tm + v12, v13);
  boxed_opaque_existential_1Tm[15] = 0;
  *(boxed_opaque_existential_1Tm + 13) = 0u;
  *(boxed_opaque_existential_1Tm + 11) = 0u;
  sub_1DCB6C5E8(v0 + 16, (boxed_opaque_existential_1Tm + 11));
  *(boxed_opaque_existential_1Tm + *(v2 + 40)) = 0;
  *boxed_opaque_existential_1Tm = MEMORY[0x1E69E7CC0];
  *(boxed_opaque_existential_1Tm + 1) = 0u;
  *(boxed_opaque_existential_1Tm + 3) = 0u;
  *(boxed_opaque_existential_1Tm + 5) = 0u;
  *(boxed_opaque_existential_1Tm + 7) = 0u;
  boxed_opaque_existential_1Tm[9] = 0;
  *(boxed_opaque_existential_1Tm + 80) = 3;
  OUTLINED_FUNCTION_29();

  return v15();
}

uint64_t static UnsetRelationshipOutputFactory.makeUnsupportedPlatformResponse(requestedRelationship:)()
{
  OUTLINED_FUNCTION_42();
  v2 = v1;
  v4 = OUTLINED_FUNCTION_79_13(v3);
  v0[3] = v4;
  OUTLINED_FUNCTION_99(v4);
  v0[4] = v5;
  v6 = OUTLINED_FUNCTION_38();
  v7 = OUTLINED_FUNCTION_78_1(v6);
  OUTLINED_FUNCTION_26_39(v7);
  v0[7] = OUTLINED_FUNCTION_38();
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_97(v8);
  *v9 = v10;
  OUTLINED_FUNCTION_31_0(v9);

  return sub_1DD046074(v2);
}

uint64_t static UnsetRelationshipOutputFactory.makeFlowCancelledResponse()()
{
  OUTLINED_FUNCTION_42();
  v2 = OUTLINED_FUNCTION_79_13(v1);
  v0[3] = v2;
  OUTLINED_FUNCTION_99(v2);
  v0[4] = v3;
  v4 = OUTLINED_FUNCTION_38();
  v5 = OUTLINED_FUNCTION_78_1(v4);
  OUTLINED_FUNCTION_26_39(v5);
  v0[7] = OUTLINED_FUNCTION_38();
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_97(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_31_0(v7);

  return sub_1DCF65754();
}

uint64_t sub_1DD0430EC()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  *v4 = *v1;
  OUTLINED_FUNCTION_77_0(v5);
  if (v0)
  {
    OUTLINED_FUNCTION_81();

    OUTLINED_FUNCTION_32_3();

    return v6();
  }

  else
  {
    OUTLINED_FUNCTION_101();

    return MEMORY[0x1EEE6DFA0](v8, v9, v10);
  }
}

uint64_t sub_1DD0433A8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 88) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t static UnsetRelationshipOutputFactory.makeErrorResponse(_:)()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v1[1] = sub_1DCB4AE1C;

  return sub_1DCCDC444();
}

uint64_t static UnsetRelationshipOutputFactory.makeRepromptOnLowConfidence()()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v1[1] = sub_1DCB4AE1C;

  return sub_1DCCDBBA0();
}

void *sub_1DD0435B8()
{
  type metadata accessor for ResponseFactory();
  swift_allocObject();
  result = ResponseFactory.init()();
  qword_1ECCD27E8 = result;
  return result;
}

uint64_t sub_1DD043618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1DD04363C, 0, 0);
}

uint64_t sub_1DD04363C()
{
  OUTLINED_FUNCTION_39();
  v1 = v0[8];
  v2 = swift_task_alloc();
  v0[11] = v2;
  *(v2 + 16) = v1;
  OUTLINED_FUNCTION_32_2(&unk_1DD10C288);
  v8 = v3;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[12] = v4;
  *v4 = v5;
  v4[1] = sub_1DD043700;
  v6 = OUTLINED_FUNCTION_41_35();

  return v8(v6);
}

uint64_t sub_1DD043700()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DD043804()
{
  OUTLINED_FUNCTION_42();
  (*(v0 + 72))(v0 + 16);
  sub_1DCB0E9D8(v0 + 16, &qword_1ECCA1F70, &qword_1DD0E2BD0);
  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1DD04387C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return static UnsetRelationshipOutputFactory.makeMeCardNotFoundResponse(requestedRelationship:)();
}

void static UnsetRelationshipOutputFactory.makeContactNotFoundResponse(requestedPerson:_:)(const void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  OUTLINED_FUNCTION_20_0(v6);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v7, v8);
  memcpy(__dst, a1, sizeof(__dst));
  sub_1DD0DE4BC();
  OUTLINED_FUNCTION_31();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  memcpy(v13 + 4, __dst, 0x50uLL);
  v13[14] = a2;
  v13[15] = a3;
  sub_1DD02AB7C(__dst, v14);
  sub_1DD0DCF8C();
}

uint64_t sub_1DD043A28()
{
  OUTLINED_FUNCTION_42();
  v0[28] = v1;
  v0[29] = v2;
  memcpy(v0 + 2, v3, 0x50uLL);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[30] = v4;
  *v4 = v5;
  v4[1] = sub_1DD043AC8;

  return static UnsetRelationshipOutputFactory.makeContactNotFoundResponse(requestedPerson:)();
}

uint64_t sub_1DD043AC8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 248) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DD043BC0()
{
  OUTLINED_FUNCTION_42();
  *(v0 + 184) = 0;
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  v3 = *(v0 + 168);
  *(v0 + 192) = v2;
  *(v0 + 208) = v3;
  v4 = *(v0 + 224);
  *(v0 + 96) = v1;
  *(v0 + 104) = v2;
  *(v0 + 120) = v3;
  *(v0 + 136) = 0;
  v4(v0 + 96);
  sub_1DCB0E9D8(v0 + 96, &qword_1ECCA1F70, &qword_1DD0E2BD0);
  OUTLINED_FUNCTION_29();

  return v5();
}

uint64_t sub_1DD043C60()
{
  OUTLINED_FUNCTION_42();
  *(v0 + 256) = 1;
  *(v0 + 96) = *(v0 + 248);
  v1 = *(v0 + 224);
  v2 = *(v0 + 208);
  *(v0 + 104) = *(v0 + 192);
  *(v0 + 120) = v2;
  *(v0 + 136) = 1;
  v1(v0 + 96);
  sub_1DCB0E9D8(v0 + 96, &qword_1ECCA1F70, &qword_1DD0E2BD0);
  OUTLINED_FUNCTION_29();

  return v3();
}

void static UnsetRelationshipOutputFactory.makeSaveRelationshipCompletedResponse(person:requestedRelationship:_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for RelationshipLabel(0);
  v9 = OUTLINED_FUNCTION_99(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9, v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  OUTLINED_FUNCTION_20_0(v15);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v16, v17);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_31();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
  sub_1DCC08BCC(a2, &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = a1;
  sub_1DCCC3844(&v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22);
  v24 = (v23 + ((v13 + v22 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v24 = a3;
  v24[1] = a4;
  v25 = a1;
  sub_1DD0DCF8C();
}

uint64_t sub_1DD043E80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[10] = a6;
  v7[11] = a7;
  v7[8] = a4;
  v7[9] = a5;
  return MEMORY[0x1EEE6DFA0](sub_1DD043EA4, 0, 0);
}

uint64_t sub_1DD043EA4()
{
  OUTLINED_FUNCTION_42();
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *(v1 + 16) = *(v0 + 64);
  OUTLINED_FUNCTION_32_2(&unk_1DD10C288);
  v7 = v2;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 104) = v3;
  *v3 = v4;
  v3[1] = sub_1DD043F64;
  v5 = OUTLINED_FUNCTION_41_35();

  return v7(v5);
}

uint64_t sub_1DD043F64()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DD044068()
{
  OUTLINED_FUNCTION_42();
  (*(v0 + 80))(v0 + 16);
  sub_1DCB0E9D8(v0 + 16, &qword_1ECCA1F70, &qword_1DD0E2BD0);
  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1DD0440E0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AD3C;

  return static UnsetRelationshipOutputFactory.makeSaveRelationshipCompletedResponse(person:requestedRelationship:)();
}

uint64_t sub_1DD0441B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 64) = a4;
  *(v5 + 72) = a5;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DD0441C4()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 64);
  *(v0 + 40) = type metadata accessor for AceOutput(0);
  *(v0 + 48) = &protocol witness table for AceOutput;
  __swift_allocate_boxed_opaque_existential_1Tm((v0 + 16));
  v2 = sub_1DCBB665C();
  *(v0 + 56) = 0;
  v1(v0 + 16, v2);
  sub_1DCB0E9D8(v0 + 16, &qword_1ECCA1F70, &qword_1DD0E2BD0);
  OUTLINED_FUNCTION_29();

  return v3();
}

void sub_1DD044284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for RelationshipLabel(0);
  v8 = OUTLINED_FUNCTION_99(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8, v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  OUTLINED_FUNCTION_20_0(v14);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v15, v16);
  sub_1DD0DE4BC();
  OUTLINED_FUNCTION_31();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  sub_1DCC08BCC(a1, &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  sub_1DCCC3844(&v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21);
  v23 = (v22 + ((v12 + v21 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v23 = a2;
  v23[1] = a3;
  sub_1DD0DCF8C();
}

uint64_t sub_1DD044410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1DD044434, 0, 0);
}

uint64_t sub_1DD044434()
{
  OUTLINED_FUNCTION_39();
  v1 = v0[8];
  v2 = swift_task_alloc();
  v0[11] = v2;
  *(v2 + 16) = v1;
  OUTLINED_FUNCTION_32_2(&unk_1DD10C288);
  v8 = v3;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[12] = v4;
  *v4 = v5;
  v4[1] = sub_1DD0444F8;
  v6 = OUTLINED_FUNCTION_41_35();

  return v8(v6);
}

uint64_t sub_1DD0444F8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DD0445FC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return static UnsetRelationshipOutputFactory.makeUnsupportedPlatformResponse(requestedRelationship:)();
}

uint64_t sub_1DD04469C()
{
  v2 = type metadata accessor for RelationshipLabel(0);
  OUTLINED_FUNCTION_99(v2);
  OUTLINED_FUNCTION_37_3();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_11_0(v3);
  *v4 = v5;
  v4[1] = sub_1DCB4AE1C;
  v6 = OUTLINED_FUNCTION_8_1();

  return sub_1DD043618(v6, v7, v8, v9, v0, v1);
}

uint64_t sub_1DD04479C()
{
  OUTLINED_FUNCTION_33();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v1[1] = sub_1DCB4AE1C;
  OUTLINED_FUNCTION_8_1();

  return sub_1DD043A28();
}

uint64_t sub_1DD044848(uint64_t a1)
{
  v3 = v2;
  v5 = type metadata accessor for RelationshipLabel(0);
  OUTLINED_FUNCTION_99(v5);
  v7 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[4];
  v12 = (v1 + ((*(v8 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = *v12;
  v14 = v12[1];
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_1DCB4AE1C;

  return sub_1DD043E80(a1, v9, v10, v11, v1 + v7, v13, v14);
}

uint64_t sub_1DD04497C()
{
  v2 = type metadata accessor for RelationshipLabel(0);
  OUTLINED_FUNCTION_99(v2);
  OUTLINED_FUNCTION_37_3();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_11_0(v3);
  *v4 = v5;
  v4[1] = sub_1DCB4AE1C;
  v6 = OUTLINED_FUNCTION_8_1();

  return sub_1DD044410(v6, v7, v8, v9, v0, v1);
}

uint64_t sub_1DD044A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a4;
  v5[19] = a5;
  v6 = swift_task_alloc();
  v5[20] = v6;
  *v6 = v5;
  v6[1] = sub_1DD044B34;

  return static UnsetRelationshipOutputFactory.makeFlowCancelledResponse()();
}

uint64_t sub_1DD044B34()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 168) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DD044C2C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_3_5();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_11_0(v2);
  *v3 = v4;
  v3[1] = sub_1DCB4AD3C;
  v5 = OUTLINED_FUNCTION_8_1();

  return sub_1DD044A9C(v5, v6, v7, v1, v0);
}

void static UnsetRelationshipOutputFactory.makeErrorResponse(_:_:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  OUTLINED_FUNCTION_20_0(v6);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v7, v8);
  sub_1DD0DE4BC();
  OUTLINED_FUNCTION_31();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = a1;
  v13[5] = a2;
  v13[6] = a3;
  v14 = a1;
  sub_1DD0DCF8C();
}

uint64_t sub_1DD044DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[18] = a5;
  v6[19] = a6;
  v7 = swift_task_alloc();
  v6[20] = v7;
  *v7 = v6;
  v7[1] = sub_1DD044E54;

  return sub_1DCCDC444();
}

uint64_t sub_1DD044E54()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 168) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DD044F4C()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_11_0(v4);
  *v5 = v6;
  v5[1] = sub_1DCB4AE1C;
  v7 = OUTLINED_FUNCTION_8_1();

  return sub_1DD044DBC(v7, v8, v9, v1, v2, v3);
}

void sub_1DD04501C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  OUTLINED_FUNCTION_20_0(v5);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v6, v7);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_31();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a1;
  v12[5] = a2;
  sub_1DD0DCF8C();
}

uint64_t sub_1DD0450E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a4;
  v5[19] = a5;
  v6 = swift_task_alloc();
  v5[20] = v6;
  *v6 = v5;
  v6[1] = sub_1DD044E54;

  return sub_1DCCDBBA0();
}

uint64_t sub_1DD045180()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_3_5();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_11_0(v2);
  *v3 = v4;
  v3[1] = sub_1DCB4AE1C;
  v5 = OUTLINED_FUNCTION_8_1();

  return sub_1DD0450E8(v5, v6, v7, v1, v0);
}

_BYTE *storeEnumTagSinglePayload for UnsetRelationshipOutputFactory(_BYTE *result, int a2, int a3)
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

uint64_t sub_1DD0452CC()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_13_17(v1);

  return sub_1DD0445FC();
}

uint64_t sub_1DD045358()
{
  OUTLINED_FUNCTION_39();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_13_17(v1);

  return sub_1DD0440E0();
}

uint64_t sub_1DD0453F0()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_13_17(v1);

  return sub_1DD04387C();
}

void sub_1DD0454A0()
{
  OUTLINED_FUNCTION_39();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7948, &qword_1DD0F9840);
  inited = swift_initStackObject();
  inited[3].n128_u64[0] = OUTLINED_FUNCTION_2_12(inited, xmmword_1DD0E07C0);
  inited[3].n128_u64[1] = v1;
  sub_1DD0DDE9C();
  if (qword_1EDE48CE8 != -1)
  {
    OUTLINED_FUNCTION_1_7(&qword_1EDE48CE8);
  }

  v2 = type metadata accessor for CATTemplateExecutor();
  OUTLINED_FUNCTION_10_82(v2, v2, &off_1F58563F0);
}

uint64_t sub_1DD0455E8()
{
  OUTLINED_FUNCTION_44();
  v4 = v3;
  OUTLINED_FUNCTION_12_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v4 + 144) = v0;

  if (!v0)
  {
    *(v4 + 152) = v1;
  }

  OUTLINED_FUNCTION_101();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

void sub_1DD045728()
{
  OUTLINED_FUNCTION_39();
  if (qword_1EDE48CE8 != -1)
  {
    OUTLINED_FUNCTION_1_7(&qword_1EDE48CE8);
  }

  v1 = qword_1EDE57D40;
  v2 = type metadata accessor for CATTemplateExecutor();
  v0[5] = v2;
  v0[6] = &off_1F58563F0;
  v0[2] = v1;
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  sub_1DD0DCF8C();
}

uint64_t sub_1DD04582C()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_44();
  v4 = v3;
  OUTLINED_FUNCTION_12_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v4 + 64) = v0;

  if (!v0)
  {
    *(v4 + 72) = v1;
  }

  OUTLINED_FUNCTION_101();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1DD045930()
{
  OUTLINED_FUNCTION_42();
  *(v0 + 392) = v1;
  *(v0 + 400) = v2;

  return MEMORY[0x1EEE6DFA0](sub_1DD0459BC, 0, 0);
}

uint64_t sub_1DD0459BC()
{
  v1 = v0[49];
  v2 = sub_1DCC6E534(v1);
  v39 = v3;
  v40 = v2;
  v4 = sub_1DCC6E54C(v1);
  v6 = v5;
  v7 = sub_1DCC6E540(v1);
  v9 = v8;
  v10 = sub_1DCC6E558(v1);
  v12 = v11;
  v13 = [v1 fullName];
  if (v13)
  {
    v14 = v13;
    v15 = sub_1DD0DDFBC();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0;
  }

  v0[18] = v7;
  v0[19] = v9;
  v0[20] = v4;
  v0[21] = v6;
  v0[22] = v40;
  v0[23] = v39;
  v0[24] = v10;
  v0[25] = v12;
  v0[26] = v15;
  v0[27] = v17;
  memcpy(v0 + 28, v0 + 18, 0x50uLL);
  if (qword_1ECCA1250 != -1)
  {
    swift_once();
  }

  sub_1DCCE6BD4();
  v18 = sub_1DD0DAADC();
  v20 = v19;
  sub_1DCCE6C28((v0 + 18));
  v23 = objc_opt_self();
  v24 = sub_1DD0DAEFC();
  v0[47] = 0;
  v25 = [v23 JSONObjectWithData:v24 options:0 error:v0 + 47];

  v26 = v0[47];
  if (v25)
  {
    v27 = v26;
    sub_1DD0DEA6C();
    swift_unknownObjectRelease();
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAABA0, &unk_1DD0E3FC0);
    v29 = swift_dynamicCast();
    sub_1DCB21A14(v18, v20);
    if (v29)
    {
      v30 = v0[48];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1BD8, &unk_1DD0E6A20);
      inited = swift_initStackObject();
      v32 = OUTLINED_FUNCTION_2_12(inited, xmmword_1DD0E32B0);
      v33 = MEMORY[0x1E69E6158];
      inited[3].n128_u64[0] = v32;
      inited[3].n128_u64[1] = v34;
      inited[4].n128_u64[1] = v33;
      inited[5].n128_u64[0] = 0x6E6F73726570;
      inited[7].n128_u64[1] = v28;
      inited[5].n128_u64[1] = 0xE600000000000000;
      inited[6].n128_u64[0] = v30;
      v0[51] = sub_1DD0DDE9C();
      if (qword_1EDE48CE8 != -1)
      {
        OUTLINED_FUNCTION_1_7(&qword_1EDE48CE8);
      }

      v35 = qword_1EDE57D40;
      v36 = type metadata accessor for CATTemplateExecutor();
      v0[41] = v36;
      v0[42] = &off_1F58563F0;
      v0[38] = v35;
      __swift_project_boxed_opaque_existential_1(v0 + 38, v36);
      sub_1DD0DCF8C();
    }
  }

  else
  {
    v37 = v26;
    v38 = sub_1DD0DAE0C();

    swift_willThrow();
    sub_1DCB21A14(v18, v20);
  }

  sub_1DD0463C0();
  swift_allocError();
  swift_willThrow();
  OUTLINED_FUNCTION_29();

  return v21();
}

uint64_t sub_1DD045DF4(uint64_t a1)
{
  v4 = *v2;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *v5 = *v2;
  *(v4 + 424) = v1;

  if (v1)
  {
    v6 = sub_1DD045FEC;
  }

  else
  {
    *(v4 + 432) = a1;
    v6 = sub_1DD045F5C;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1DD045F5C()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 38);
  v1 = v0[1];
  v2 = v0[54];

  return v1(v2);
}

uint64_t sub_1DD045FEC()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 304));
  OUTLINED_FUNCTION_29();

  return v1();
}

void sub_1DD04608C()
{
  OUTLINED_FUNCTION_39();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7948, &qword_1DD0F9840);
  inited = swift_initStackObject();
  inited[3].n128_u64[0] = OUTLINED_FUNCTION_2_12(inited, xmmword_1DD0E07C0);
  inited[3].n128_u64[1] = v1;
  sub_1DD0DDE9C();
  if (qword_1EDE48CE8 != -1)
  {
    OUTLINED_FUNCTION_1_7(&qword_1EDE48CE8);
  }

  v2 = type metadata accessor for CATTemplateExecutor();
  OUTLINED_FUNCTION_10_82(v2, v2, &off_1F58563F0);
}

uint64_t sub_1DD0461D4()
{
  OUTLINED_FUNCTION_44();
  v4 = v3;
  OUTLINED_FUNCTION_12_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v4 + 144) = v0;

  if (!v0)
  {
    *(v4 + 152) = v1;
  }

  OUTLINED_FUNCTION_101();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1DD046300()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 10);
  v1 = v0[1];
  v2 = v0[19];

  return v1(v2);
}

uint64_t sub_1DD046364()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 80));
  OUTLINED_FUNCTION_29();

  return v1();
}

unint64_t sub_1DD0463C0()
{
  result = qword_1ECCAC830;
  if (!qword_1ECCAC830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCAC830);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for UnsetRelationshipPatterns.TemplatingError(_BYTE *result, int a2, int a3)
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

unint64_t sub_1DD0464C4()
{
  result = qword_1ECCAC838[0];
  if (!qword_1ECCAC838[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECCAC838);
  }

  return result;
}

void __swiftcall UnsetRelationshipPerson.init(firstName:lastName:middleName:fullName:nickname:)(SiriKitFlow::UnsetRelationshipPerson *__return_ptr retstr, Swift::String_optional firstName, Swift::String_optional lastName, Swift::String_optional middleName, Swift::String_optional fullName, Swift::String_optional nickname)
{
  retstr->firstName = firstName;
  retstr->lastName = lastName;
  retstr->middleName = middleName;
  retstr->fullName = fullName;
  retstr->nickname = nickname;
}

uint64_t static UnsetRelationshipPerson.from(personNode:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v3 = sub_1DD0DBE8C();
  v16 = v4;
  v17 = v3;
  OUTLINED_FUNCTION_0_129();
  v5 = sub_1DD0DBE6C();
  v7 = v6;
  OUTLINED_FUNCTION_0_129();
  v8 = sub_1DD0DBE4C();
  v10 = v9;
  OUTLINED_FUNCTION_0_129();
  v11 = sub_1DD0DBE5C();
  v13 = v12;
  OUTLINED_FUNCTION_0_129();
  result = sub_1DD0DBE7C();
  *a2 = v17;
  a2[1] = v16;
  a2[2] = v5;
  a2[3] = v7;
  a2[4] = v8;
  a2[5] = v10;
  a2[6] = v11;
  a2[7] = v13;
  a2[8] = result;
  a2[9] = v15;
  return result;
}

uint64_t sub_1DD046718(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1DD0467F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  swift_allocObject();
  OUTLINED_FUNCTION_77_12();
  sub_1DD046888(v13, v14, v15, a4, a5, a6, a7, a8);
}

void sub_1DD046888(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  (*(*(*(*v8 + 80) - 8) + 32))(v8 + *(*v8 + 96), a1, *(*v8 + 80));
  OUTLINED_FUNCTION_66();
  *(v8 + *(v16 + 104)) = a3;
  OUTLINED_FUNCTION_66();
  *(v8 + *(v17 + 112)) = a4;
  OUTLINED_FUNCTION_66();
  v19 = (v8 + *(v18 + 120));
  *v19 = a5;
  v19[1] = a6;
  OUTLINED_FUNCTION_66();
  *(v8 + *(v20 + 128)) = a7;
  OUTLINED_FUNCTION_66();
  *(v8 + *(v21 + 136)) = a8;
  swift_getAssociatedTypeWitness();
  ParameterResolutionRecord.init(app:intent:parameterName:parameterMulticardinalIndex:result:)(a3, a4, a5, a6, a7, a8, v27);
  v23[0] = v27[0];
  v23[1] = v27[1];
  v24 = v28;
  v25 = v29;
  v26 = v30;
  sub_1DD046A7C(v23, a2, __src);
  OUTLINED_FUNCTION_66();
  memcpy((v8 + *(v22 + 144)), __src, 0x60uLL);
  sub_1DD0DCF8C();
}

uint64_t sub_1DD046A7C@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v6;
  *(a3 + 32) = v3;
  *(a3 + 40) = v4;
  *(a3 + 48) = v5;
  return sub_1DCB18FF0(a2, a3 + 56);
}

uint64_t sub_1DD046AAC()
{
  OUTLINED_FUNCTION_74_1();
  OUTLINED_FUNCTION_41_36();
  OUTLINED_FUNCTION_74_1();
  OUTLINED_FUNCTION_74_1();
  OUTLINED_FUNCTION_74_1();
  return v1(v0);
}

uint64_t sub_1DD046B90()
{
  OUTLINED_FUNCTION_27_39();
  OUTLINED_FUNCTION_8_2();
  OUTLINED_FUNCTION_8_2();
  OUTLINED_FUNCTION_8_2();
  OUTLINED_FUNCTION_8_2();
  OUTLINED_FUNCTION_78_20();
  return v0();
}

void sub_1DD046DA0(char *a1, char *a2)
{
  v5 = type metadata accessor for SiriKitEventPayload(0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = *a2;
  v18[1] = __swift_project_boxed_opaque_existential_1(v2 + 7, v2[10]);
  v18[0] = type metadata accessor for SiriKitEvent(0);
  v11 = [v2[1] typeName];
  v12 = sub_1DD0DDFBC();
  v14 = v13;

  v15 = *v2;
  v16 = v2[2];
  v17 = v2[3];
  *v8 = v9;
  *(v8 + 1) = v12;
  *(v8 + 2) = v14;
  *(v8 + 3) = v15;
  *(v8 + 4) = 0;
  *(v8 + 5) = 0;
  *(v8 + 6) = v16;
  *(v8 + 7) = v17;
  *(v8 + 4) = 0u;
  *(v8 + 5) = 0u;
  v8[96] = v10;
  swift_storeEnumTagMultiPayload();
  sub_1DD0DCF8C();
}

uint64_t sub_1DD047040()
{
  OUTLINED_FUNCTION_27_39();
  OUTLINED_FUNCTION_8_2();
  OUTLINED_FUNCTION_8_2();
  OUTLINED_FUNCTION_8_2();
  OUTLINED_FUNCTION_8_2();
  return v2(v0, v1);
}

void sub_1DD0474B4(void *__src, uint64_t a2, uint64_t a3)
{
  memcpy(__dst, __src, sizeof(__dst));
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_92_2();
  v6 = swift_allocObject();
  v6[2] = v3;
  v6[3] = a2;
  v6[4] = a3;
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_96();
  sub_1DD0DCF8C();
}

uint64_t sub_1DD047640()
{
  OUTLINED_FUNCTION_74_1();
  OUTLINED_FUNCTION_41_36();
  OUTLINED_FUNCTION_74_1();
  OUTLINED_FUNCTION_74_1();
  return v0();
}

void sub_1DD04785C(uint64_t a1, void (*a2)(id, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v9);
  v11 = &v20 - v10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v12 = sub_1DD0DF22C();
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = (&v20 - v14);
  (*(v16 + 16))(&v20 - v14, a1, v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *v15;
    v18 = *v15;
    a2(v17, 1);
  }

  else
  {
    (*(v8 + 32))(v11, v15, AssociatedTypeWitness);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 16))(AssociatedTypeWitness, AssociatedConformanceWitness);
    (a2)();

    (*(v8 + 8))(v11, AssociatedTypeWitness);
  }
}

uint64_t sub_1DD047ACC()
{
  OUTLINED_FUNCTION_74_1();
  OUTLINED_FUNCTION_41_36();
  OUTLINED_FUNCTION_74_1();
  OUTLINED_FUNCTION_74_1();
  OUTLINED_FUNCTION_74_1();
  return v1(v0);
}

uint64_t sub_1DD047BB0()
{
  OUTLINED_FUNCTION_8_2();
  OUTLINED_FUNCTION_8_2();
  OUTLINED_FUNCTION_8_2();
  OUTLINED_FUNCTION_8_2();
  OUTLINED_FUNCTION_8_2();
  v16 = v0;
  v17 = *(v1 + 8);
  v18 = v2;
  v19 = v3;
  v20 = v4;
  OUTLINED_FUNCTION_8_2();
  OUTLINED_FUNCTION_8_2();
  return v14(v5, v11, v12, v13, v8, v9, v10, &v16, v6, v7);
}

uint64_t sub_1DD0480A8()
{
  OUTLINED_FUNCTION_74_1();
  OUTLINED_FUNCTION_41_36();
  OUTLINED_FUNCTION_74_1();
  OUTLINED_FUNCTION_74_1();
  OUTLINED_FUNCTION_74_1();
  return v1(v0);
}

uint64_t sub_1DD04818C()
{
  OUTLINED_FUNCTION_27_39();
  OUTLINED_FUNCTION_8_2();
  OUTLINED_FUNCTION_8_2();
  OUTLINED_FUNCTION_8_2();
  OUTLINED_FUNCTION_8_2();
  OUTLINED_FUNCTION_78_20();
  return v0();
}

void sub_1DD04872C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, char a5, char a6)
{
  v11 = a5;
  v10 = a6;
  OUTLINED_FUNCTION_8_2();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_25_38(AssociatedTypeWitness, v7, v8, v9);
  sub_1DD046DA0(&v11, &v10);
}

uint64_t sub_1DD0487F4()
{
  OUTLINED_FUNCTION_27_39();
  OUTLINED_FUNCTION_8_2();
  OUTLINED_FUNCTION_8_2();
  OUTLINED_FUNCTION_8_2();
  OUTLINED_FUNCTION_8_2();
  return v4(v0, v1, v2, v3);
}

uint64_t sub_1DD0488E4()
{
  OUTLINED_FUNCTION_8_2();
  OUTLINED_FUNCTION_8_2();
  OUTLINED_FUNCTION_8_2();
  OUTLINED_FUNCTION_8_2();
  return v0();
}

uint64_t *sub_1DD048988()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96), *(*v0 + 80));
  OUTLINED_FUNCTION_66();

  OUTLINED_FUNCTION_66();

  OUTLINED_FUNCTION_66();

  OUTLINED_FUNCTION_66();

  OUTLINED_FUNCTION_66();
  v4 = *(v3 + 144);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for UnsetRelationshipActivityLogger(0, AssociatedTypeWitness, v6, v7);
  OUTLINED_FUNCTION_112();
  (*(v8 + 8))(v0 + v4);
  return v0;
}

uint64_t sub_1DD048AEC()
{
  sub_1DD048988();

  return swift_deallocClassInstance();
}

uint64_t sub_1DD048B5C(uint64_t a1)
{

  return __swift_destroy_boxed_opaque_existential_1Tm((a1 + 56));
}

void sub_1DD048BB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v2;
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v3;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 80) = *(a2 + 80);
  sub_1DD0DCF8C();
}

uint64_t sub_1DD048D18(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  v4 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);

  v5 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v5;

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  v6 = *(a1 + 48);
  *(a1 + 48) = *(a2 + 48);

  __swift_destroy_boxed_opaque_existential_1Tm((a1 + 56));
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  return a1;
}

uint64_t sub_1DD049230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_58_6();
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11, v12);
  v341 = &v316 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_42_36();
  MEMORY[0x1EEE9AC00](v13, v14);
  OUTLINED_FUNCTION_33_2();
  v340 = v15;
  OUTLINED_FUNCTION_42_36();
  MEMORY[0x1EEE9AC00](v16, v17);
  OUTLINED_FUNCTION_33_2();
  v337 = v18;
  OUTLINED_FUNCTION_42_36();
  MEMORY[0x1EEE9AC00](v19, v20);
  OUTLINED_FUNCTION_33_2();
  v335 = v21;
  OUTLINED_FUNCTION_42_36();
  MEMORY[0x1EEE9AC00](v22, v23);
  OUTLINED_FUNCTION_33_2();
  v333 = v24;
  OUTLINED_FUNCTION_42_36();
  MEMORY[0x1EEE9AC00](v25, v26);
  OUTLINED_FUNCTION_33_2();
  v331 = v27;
  OUTLINED_FUNCTION_42_36();
  MEMORY[0x1EEE9AC00](v28, v29);
  OUTLINED_FUNCTION_33_2();
  v330 = v30;
  OUTLINED_FUNCTION_42_36();
  MEMORY[0x1EEE9AC00](v31, v32);
  OUTLINED_FUNCTION_33_2();
  v328 = v33;
  OUTLINED_FUNCTION_42_36();
  MEMORY[0x1EEE9AC00](v34, v35);
  OUTLINED_FUNCTION_33_2();
  v325 = v36;
  OUTLINED_FUNCTION_42_36();
  MEMORY[0x1EEE9AC00](v37, v38);
  OUTLINED_FUNCTION_33_2();
  v323 = v39;
  OUTLINED_FUNCTION_42_36();
  MEMORY[0x1EEE9AC00](v40, v41);
  OUTLINED_FUNCTION_33_2();
  v321 = v42;
  OUTLINED_FUNCTION_42_36();
  MEMORY[0x1EEE9AC00](v43, v44);
  OUTLINED_FUNCTION_33_2();
  v319 = v45;
  OUTLINED_FUNCTION_42_36();
  MEMORY[0x1EEE9AC00](v46, v47);
  OUTLINED_FUNCTION_33_2();
  v317 = v48;
  OUTLINED_FUNCTION_42_36();
  MEMORY[0x1EEE9AC00](v49, v50);
  OUTLINED_FUNCTION_33_2();
  v316 = v51;
  OUTLINED_FUNCTION_42_36();
  MEMORY[0x1EEE9AC00](v52, v53);
  OUTLINED_FUNCTION_33_2();
  v318 = v54;
  OUTLINED_FUNCTION_42_36();
  MEMORY[0x1EEE9AC00](v55, v56);
  OUTLINED_FUNCTION_33_2();
  v320 = v57;
  OUTLINED_FUNCTION_42_36();
  MEMORY[0x1EEE9AC00](v58, v59);
  OUTLINED_FUNCTION_33_2();
  v322 = v60;
  OUTLINED_FUNCTION_42_36();
  MEMORY[0x1EEE9AC00](v61, v62);
  OUTLINED_FUNCTION_33_2();
  v324 = v63;
  OUTLINED_FUNCTION_42_36();
  MEMORY[0x1EEE9AC00](v64, v65);
  OUTLINED_FUNCTION_33_2();
  v326 = v66;
  OUTLINED_FUNCTION_42_36();
  MEMORY[0x1EEE9AC00](v67, v68);
  OUTLINED_FUNCTION_33_2();
  v327 = v69;
  OUTLINED_FUNCTION_42_36();
  MEMORY[0x1EEE9AC00](v70, v71);
  OUTLINED_FUNCTION_33_2();
  v329 = v72;
  OUTLINED_FUNCTION_42_36();
  MEMORY[0x1EEE9AC00](v73, v74);
  OUTLINED_FUNCTION_33_2();
  v350 = v75;
  OUTLINED_FUNCTION_42_36();
  MEMORY[0x1EEE9AC00](v76, v77);
  OUTLINED_FUNCTION_33_2();
  v348 = v78;
  OUTLINED_FUNCTION_42_36();
  v81 = MEMORY[0x1EEE9AC00](v79, v80);
  v83 = &v316 - v82;
  v84 = *(v81 + 16);
  v374[0] = *v81;
  v374[1] = v84;
  v86 = *v81;
  v85 = *(v81 + 16);
  v374[2] = *(v81 + 32);
  v375 = *(v81 + 48);
  v372[0] = v86;
  v372[1] = v85;
  v372[2] = *(v81 + 32);
  *&v372[3] = *(v81 + 48);
  sub_1DCB17CA0(v87, v371);
  v358 = a4;
  OUTLINED_FUNCTION_77_12();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1DD046A7C(v372, v371, __src);
  OUTLINED_FUNCTION_77_12();
  v88 = swift_getAssociatedTypeWitness();
  v339 = type metadata accessor for AnyUnsetRelationshipFlowStrategy(0, v88, v89, v90);
  v357 = *(v8 + 16);
  v352 = v8 + 16;
  v91 = v83;
  v92 = v83;
  v93 = v4;
  v94 = a3;
  v357(v91, v4, a3);
  v95 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v356 = *(v8 + 80);
  v353 = v95;
  v96 = (v10 + v95 + 7) & 0xFFFFFFFFFFFFFFF8;
  v97 = swift_allocObject();
  v338 = v97;
  v98 = v358;
  *(v97 + 16) = v94;
  *(v97 + 24) = v98;
  v99 = *(v8 + 32);
  v355 = v8 + 32;
  v100 = v97 + v95;
  v101 = v94;
  v99(v100, v92, v94);
  v102 = OUTLINED_FUNCTION_2_119(v97 + v96);
  v103 = v348;
  v104 = v93;
  v351 = v93;
  v105 = v93;
  v106 = v101;
  v107 = v357;
  (v357)(v348, v105, v101, v102);
  v108 = OUTLINED_FUNCTION_57_22(&unk_1F5878C18);
  v336 = v108;
  *(v108 + 16) = v106;
  *(v108 + 24) = v98;
  v109 = v103;
  v110 = v106;
  v99(v108 + v353, v109, v106);
  v349 = v99;
  v111 = OUTLINED_FUNCTION_0_130(v108 + v96);
  v107(v350, v104, v106, v111);
  v345 = type metadata accessor for UnsetRelationshipActivityLogger(0, AssociatedTypeWitness, v112, v113);
  OUTLINED_FUNCTION_112();
  v115 = *(v114 + 16);
  v346 = v114 + 16;
  v115(v372, __src);
  v344 = v115;
  v347 = v96;
  v116 = OUTLINED_FUNCTION_60_21(&unk_1F5878C40, ((v96 + 63) & 0xFFFFFFFFFFFFFFF8) + 96);
  OUTLINED_FUNCTION_70_16(v116);
  OUTLINED_FUNCTION_79_19();
  (v99)();
  v334 = v116;
  OUTLINED_FUNCTION_2_119(v116 + v96);
  v117 = (v96 + 63) & 0xFFFFFFFFFFFFFFF8;
  memcpy((v116 + v117), v372, 0x60uLL);
  v357(v329, v351, v106);
  AssociatedTypeWitness = type metadata accessor for ParameterResolutionRecord(0, AssociatedTypeWitness, v118, v119);
  OUTLINED_FUNCTION_112();
  v348 = *(v120 + 16);
  v121 = v120 + 16;
  (v348)(v371, v374);
  v122 = v345;
  (v115)(v371, __src, v345);
  v123 = swift_allocObject();
  v124 = OUTLINED_FUNCTION_70_16(v123);
  OUTLINED_FUNCTION_59_27(v124);
  v125 = v110;
  OUTLINED_FUNCTION_76_18();
  v126();
  v127 = v347;
  v332 = v123;
  OUTLINED_FUNCTION_0_130(v123 + v347);
  v128 = (v123 + v117);
  v129 = v117;
  memcpy(v128, v371, 0x60uLL);
  v130 = v327;
  v131 = v125;
  v357(v327, v351, v125);
  OUTLINED_FUNCTION_51_34();
  v350 = v121;
  v348();
  v132 = v344;
  v344(v370, __src, v122);
  v133 = v129;
  v134 = swift_allocObject();
  v135 = v131;
  v136 = v358;
  *(v134 + 16) = v131;
  *(v134 + 24) = v136;
  v137 = v353;
  v138 = v130;
  v343 = v135;
  v139 = v355;
  v140 = v349;
  (v349)(v134 + v353, v138, v135);
  v329 = v134;
  OUTLINED_FUNCTION_2_119(v134 + v127);
  v141 = (v134 + v133);
  v142 = v133;
  memcpy(v141, v370, 0x60uLL);
  v143 = v326;
  v144 = v135;
  v145 = v357;
  v357(v326, v351, v144);
  OUTLINED_FUNCTION_51_34();
  v348();
  v132(v369, __src, v345);
  v146 = v142;
  v342 = v142;
  v147 = swift_allocObject();
  v148 = v343;
  v149 = v358;
  *(v147 + 16) = v343;
  *(v147 + 24) = v149;
  v150 = v147 + v137;
  v151 = v148;
  v140(v150, v143);
  v152 = v347;
  v327 = v147;
  OUTLINED_FUNCTION_0_130(v147 + v347);
  memcpy((v147 + v146), v369, 0x60uLL);
  v153 = v351;
  v145(v324, v351, v151);
  v154 = OUTLINED_FUNCTION_73_18();
  (v348)(v154);
  v155 = swift_allocObject();
  v326 = v155;
  *(v155 + 16) = v151;
  v156 = v358;
  *(v155 + 24) = v358;
  OUTLINED_FUNCTION_59_27(v155);
  v158 = v157;
  OUTLINED_FUNCTION_76_18();
  v159();
  OUTLINED_FUNCTION_2_119(v155 + v152);
  v160 = v153;
  OUTLINED_FUNCTION_77_12();
  (v357)();
  v161 = v348;
  (v348)(v368, v374, v139);
  v162 = swift_allocObject();
  v324 = v162;
  v163 = v158;
  *(v162 + 16) = v158;
  *(v162 + 24) = v156;
  v164 = v353;
  v165 = v163;
  OUTLINED_FUNCTION_76_18();
  v166();
  v167 = OUTLINED_FUNCTION_0_130(v162 + v152);
  v168 = v320;
  (v357)(v320, v160, v165, v167);
  OUTLINED_FUNCTION_51_34();
  v161();
  v169 = v161;
  v170 = swift_allocObject();
  v322 = v170;
  v171 = v358;
  *(v170 + 16) = v165;
  *(v170 + 24) = v171;
  v172 = v170 + v164;
  v173 = v165;
  v174 = v165;
  v175 = v349;
  (v349)(v172, v168, v173);
  v176 = OUTLINED_FUNCTION_2_119(v170 + v152);
  v177 = v318;
  v178 = v357;
  (v357)(v318, v160, v174, v176);
  OUTLINED_FUNCTION_51_34();
  v179 = v169;
  v169();
  v180 = v347;
  v181 = OUTLINED_FUNCTION_60_21(&unk_1F5878D58, v347 + 56);
  v182 = v343;
  *(v181 + 16) = v343;
  *(v181 + 24) = v171;
  v183 = v181;
  v320 = v181;
  v184 = v177;
  v185 = v182;
  v175(v181 + v353, v184);
  v186 = OUTLINED_FUNCTION_0_130(v183 + v180);
  v178(v316, v160, v185, v186);
  v187 = OUTLINED_FUNCTION_73_18();
  (v179)(v187);
  v188 = v345;
  v189 = v344;
  v344(v368, __src, v345);
  v190 = v342;
  v191 = OUTLINED_FUNCTION_60_21(&unk_1F5878D80, v342 + 96);
  OUTLINED_FUNCTION_70_16(v191);
  v192 = v353;
  v194 = v193;
  OUTLINED_FUNCTION_76_18();
  v195();
  v318 = v191;
  OUTLINED_FUNCTION_2_119(v191 + v347);
  memcpy((v191 + v190), v368, 0x60uLL);
  v196 = v317;
  v197 = v194;
  v357(v317, v351, v194);
  v198 = v348;
  (v348)(v367, v374, v178);
  v189(v367, __src, v188);
  v199 = v342;
  v200 = OUTLINED_FUNCTION_60_21(&unk_1F5878DA8, v342 + 96);
  v201 = v358;
  *(v200 + 16) = v197;
  *(v200 + 24) = v201;
  v202 = v200 + v192;
  v203 = v349;
  (v349)(v202, v196, v197);
  v316 = v200;
  OUTLINED_FUNCTION_0_130(v200 + v347);
  memcpy((v200 + v199), v367, 0x60uLL);
  v204 = v319;
  v357(v319, v351, v197);
  OUTLINED_FUNCTION_51_34();
  v198();
  v189(v366, __src, v345);
  v205 = swift_allocObject();
  *(v205 + 16) = v197;
  *(v205 + 24) = v201;
  v206 = v353;
  v207 = v197;
  v203(v205 + v353, v204);
  v208 = v347;
  v317 = v205;
  OUTLINED_FUNCTION_2_119(v205 + v347);
  memcpy((v205 + v199), v366, 0x60uLL);
  v209 = v321;
  v210 = v351;
  v211 = v207;
  v212 = v207;
  v213 = v357;
  v357(v321, v351, v211);
  OUTLINED_FUNCTION_51_34();
  v348();
  v214 = v208;
  v215 = swift_allocObject();
  v319 = v215;
  v216 = v212;
  v217 = v358;
  *(v215 + 16) = v212;
  *(v215 + 24) = v217;
  v218 = v212;
  v219 = v349;
  (v349)(v215 + v206, v209, v218);
  v220 = OUTLINED_FUNCTION_0_130(v215 + v214);
  v221 = v323;
  v213(v323, v210, v216, v220);
  OUTLINED_FUNCTION_62_18();
  v222 = v348;
  v348();
  v223 = swift_allocObject();
  v321 = v223;
  v224 = v358;
  *(v223 + 16) = v343;
  *(v223 + 24) = v224;
  v225 = OUTLINED_FUNCTION_59_27(v223);
  v219(v225, v221);
  v226 = OUTLINED_FUNCTION_2_119(v223 + v214);
  v227 = v343;
  (v357)(v325, v351, v343, v226);
  (v222)(v365, v374, v210);
  v228 = v345;
  v229 = v344;
  v344(v365, __src, v345);
  v230 = v342;
  v231 = OUTLINED_FUNCTION_60_21(&unk_1F5878E48, v342 + 96);
  v232 = v227;
  *(v231 + 16) = v227;
  v233 = v358;
  *(v231 + 24) = v358;
  OUTLINED_FUNCTION_59_27(v231);
  OUTLINED_FUNCTION_74_21();
  v234();
  v235 = v347;
  v323 = v231;
  OUTLINED_FUNCTION_0_130(v231 + v347);
  memcpy((v231 + v230), v365, 0x60uLL);
  OUTLINED_FUNCTION_79_19();
  (v357)();
  OUTLINED_FUNCTION_51_34();
  v236 = v348;
  v348();
  v229(v364, __src, v228);
  v237 = v342;
  v238 = OUTLINED_FUNCTION_60_21(&unk_1F5878E70, v342 + 96);
  *(v238 + 16) = v232;
  *(v238 + 24) = v233;
  OUTLINED_FUNCTION_74_21();
  v239();
  v325 = v238;
  OUTLINED_FUNCTION_2_119(v238 + v235);
  memcpy((v238 + v237), v364, 0x60uLL);
  OUTLINED_FUNCTION_79_19();
  (v357)();
  v240 = AssociatedTypeWitness;
  (v236)(v363, v374, AssociatedTypeWitness);
  v241 = v345;
  v344(v363, __src, v345);
  v242 = swift_allocObject();
  OUTLINED_FUNCTION_70_16(v242);
  OUTLINED_FUNCTION_6_13();
  v243 = v349;
  (v349)();
  v328 = v242;
  OUTLINED_FUNCTION_0_130(v242 + v347);
  memcpy((v242 + v237), v363, 0x60uLL);
  v357(v331, v351, v232);
  (v348)(v362, v374, v240);
  v344(v362, __src, v241);
  v244 = swift_allocObject();
  OUTLINED_FUNCTION_70_16(v244);
  v245 = v353;
  OUTLINED_FUNCTION_79_19();
  v243();
  v246 = v347;
  v330 = v244;
  OUTLINED_FUNCTION_2_119(v244 + v347);
  memcpy((v244 + v237), v362, 0x60uLL);
  v247 = v333;
  OUTLINED_FUNCTION_6_13();
  v248 = v357;
  (v357)();
  v249 = AssociatedTypeWitness;
  (v348)(v361, v374, AssociatedTypeWitness);
  v250 = OUTLINED_FUNCTION_57_22(&unk_1F5878EE8);
  v251 = v358;
  *(v250 + 16) = v232;
  *(v250 + 24) = v251;
  v252 = v250 + v245;
  v253 = v250;
  v331 = v250;
  v254 = v349;
  (v349)(v252, v247, v232);
  OUTLINED_FUNCTION_0_130(v253 + v246);
  v255 = v335;
  OUTLINED_FUNCTION_6_13();
  v248();
  v256 = v348;
  (v348)(v361, v374, v249);
  v344(v361, __src, v345);
  v257 = v342;
  v258 = swift_allocObject();
  v259 = v232;
  v260 = v358;
  *(v258 + 16) = v232;
  *(v258 + 24) = v260;
  v261 = v353;
  v262 = v258;
  v254(v258 + v353, v255, v259);
  v346 = v262;
  OUTLINED_FUNCTION_2_119(v262 + v347);
  v263 = (v262 + v257);
  v264 = v257;
  memcpy(v263, v361, 0x60uLL);
  v265 = v337;
  v266 = v343;
  v267 = v357;
  v357(v337, v351, v343);
  OUTLINED_FUNCTION_51_34();
  v256();
  memcpy(v360, __src, sizeof(v360));
  v268 = v264;
  v269 = swift_allocObject();
  v270 = v266;
  v271 = v358;
  *(v269 + 16) = v266;
  *(v269 + 24) = v271;
  v272 = v269 + v261;
  v273 = v349;
  (v349)(v272, v265, v266);
  v274 = v347;
  v345 = v269;
  OUTLINED_FUNCTION_0_130(v269 + v347);
  memcpy((v269 + v268), v360, 0x60uLL);
  v275 = v340;
  v276 = v351;
  OUTLINED_FUNCTION_6_13();
  v267();
  OUTLINED_FUNCTION_62_18();
  v277 = v348;
  v348();
  v278 = OUTLINED_FUNCTION_57_22(&unk_1F5878F60);
  *(v278 + 16) = v343;
  *(v278 + 24) = v271;
  v279 = OUTLINED_FUNCTION_59_27(v278);
  v281 = v280;
  v273(v279, v275);
  v282 = OUTLINED_FUNCTION_2_119(v278 + v274);
  v283 = v341;
  v284 = v276;
  v285 = v281;
  (v357)(v341, v284, v281, v282);
  (v277)(&v359, v374, v270);
  v286 = OUTLINED_FUNCTION_57_22(&unk_1F5878F88);
  v287 = v358;
  *(v286 + 16) = v285;
  *(v286 + 24) = v287;
  v288 = OUTLINED_FUNCTION_59_27(v286);
  (v273)(v288, v283, v285);
  OUTLINED_FUNCTION_0_130(v286 + v274);
  swift_getDynamicType();
  *(&v315 + 1) = v278;
  *&v315 = &unk_1DD10C658;
  *&v314 = &unk_1DD10C648;
  *(&v314 + 1) = v345;
  *&v313 = &unk_1DD10C638;
  *(&v313 + 1) = v346;
  *&v312 = &unk_1DD10C628;
  *(&v312 + 1) = v331;
  *&v311 = &unk_1DD10C618;
  *(&v311 + 1) = v330;
  *&v310 = &unk_1DD10C608;
  *(&v310 + 1) = v328;
  *&v309 = &unk_1DD10C5F8;
  *(&v309 + 1) = v325;
  *&v308 = &unk_1DD10C5E8;
  *(&v308 + 1) = v323;
  *&v307 = &unk_1DD10C5D8;
  *(&v307 + 1) = v321;
  *&v306 = sub_1DD04CB48;
  *(&v306 + 1) = v319;
  *&v305 = &unk_1DD10C5C8;
  *(&v305 + 1) = v317;
  *&v304 = &unk_1DD10C5B8;
  *(&v304 + 1) = v316;
  *&v303 = &unk_1DD10C5A8;
  *(&v303 + 1) = v318;
  *&v302 = &unk_1DD10C598;
  *(&v302 + 1) = v320;
  *&v301 = &unk_1DD10C588;
  *(&v301 + 1) = v322;
  *&v300 = sub_1DD04B900;
  *(&v300 + 1) = v324;
  *&v299 = sub_1DD04B878;
  *(&v299 + 1) = v326;
  *&v298 = &unk_1DD10C578;
  *(&v298 + 1) = v327;
  *&v297 = &unk_1DD10C568;
  *(&v297 + 1) = v329;
  sub_1DD036538(sub_1DD04A834, v338, &unk_1DD10C538, v336, &unk_1DD10C548, v334, &unk_1DD10C558, v332, v289, v297, v298, v299, v300, v301, v302, v303, v304, v305, v306, v307, v308, v309, v310, v311, v312, v313, v314, v315, v290, &unk_1DD10C668);
  v292 = v291;
  OUTLINED_FUNCTION_62_18();
  v277();
  v293 = OUTLINED_FUNCTION_63_18();
  (v277)(v293);
  v294 = OUTLINED_FUNCTION_63_18();
  (v277)(v294);
  v295 = OUTLINED_FUNCTION_63_18();
  (v277)(v295);
  return v292;
}

uint64_t sub_1DD04A834()
{
  OUTLINED_FUNCTION_58_6();
  OUTLINED_FUNCTION_40_38();
  v0 = OUTLINED_FUNCTION_9_79();
  return (*(v1 + 80))(v0);
}

uint64_t sub_1DD04A8B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a4 + 16);
  *(v6 + 16) = *a4;
  *(v6 + 32) = v11;
  *(v6 + 48) = *(a4 + 32);
  *(v6 + 64) = *(a4 + 48);
  v14 = (*(a6 + 88) + **(a6 + 88));
  v12 = swift_task_alloc();
  *(v6 + 72) = v12;
  *v12 = v6;
  v12[1] = sub_1DD04AA04;

  return v14(a1, a2, v6 + 16, a5, a6);
}

uint64_t sub_1DD04AA04()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 80) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    v10 = *(v4 + 8);

    return v10();
  }
}

uint64_t sub_1DD04AB1C()
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_3_127();
  OUTLINED_FUNCTION_7_85();
  OUTLINED_FUNCTION_20_40();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_11_0(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_19_51(v3);
  v5 = OUTLINED_FUNCTION_18_52();

  return sub_1DD04A8B0(v5, v6, v7, v8, v0, v1);
}

uint64_t sub_1DD04ABF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 80) = a6;
  *(v7 + 88) = a7;
  v12 = *(a4 + 16);
  *(v7 + 16) = *a4;
  *(v7 + 32) = v12;
  *(v7 + 48) = *(a4 + 32);
  *(v7 + 64) = *(a4 + 48);
  *(v7 + 72) = a5;
  v15 = (*(a7 + 96) + **(a7 + 96));
  v13 = swift_task_alloc();
  *(v7 + 96) = v13;
  *v13 = v7;
  v13[1] = sub_1DD04AD50;

  return v15(a1, a2, v7 + 16, a6, a7);
}

uint64_t sub_1DD04AD50()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 104) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1DD04AE48()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_69_9();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = OUTLINED_FUNCTION_25_38(AssociatedTypeWitness, v1, v2, v3);
  OUTLINED_FUNCTION_71_19(v4, v5, v6, v7, v8, v9, v10, v11, *v12, *&v12[4], 21, 54);
}

uint64_t sub_1DD04AECC()
{
  OUTLINED_FUNCTION_131_0();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_3_127();
  OUTLINED_FUNCTION_7_85();
  OUTLINED_FUNCTION_6_87();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_1_141(v1);
  OUTLINED_FUNCTION_125_0();

  return sub_1DD04ABF8(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1DD04AF8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 80) = a6;
  *(v7 + 88) = a7;
  v12 = *(a4 + 16);
  *(v7 + 16) = *a4;
  *(v7 + 32) = v12;
  *(v7 + 48) = *(a4 + 32);
  *(v7 + 64) = *(a4 + 48);
  *(v7 + 72) = a5;
  v15 = (*(a7 + 104) + **(a7 + 104));
  v13 = swift_task_alloc();
  *(v7 + 96) = v13;
  *v13 = v7;
  v13[1] = sub_1DD04B0E4;

  return v15(a1, a2, v7 + 16, a6, a7);
}

uint64_t sub_1DD04B0E4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 104) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DD04B1DC()
{
  OUTLINED_FUNCTION_131_0();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_3_127();
  OUTLINED_FUNCTION_7_85();
  OUTLINED_FUNCTION_6_87();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_1_141(v1);
  OUTLINED_FUNCTION_125_0();

  return sub_1DD04AF8C(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1DD04B29C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 80) = a6;
  *(v7 + 88) = a7;
  v12 = *(a4 + 16);
  *(v7 + 16) = *a4;
  *(v7 + 32) = v12;
  *(v7 + 48) = *(a4 + 32);
  *(v7 + 64) = *(a4 + 48);
  *(v7 + 72) = a5;
  v15 = (*(a7 + 112) + **(a7 + 112));
  v13 = swift_task_alloc();
  *(v7 + 96) = v13;
  *v13 = v7;
  v13[1] = sub_1DD04B0E4;

  return v15(a1, a2, v7 + 16, a6, a7);
}

uint64_t sub_1DD04B3F4()
{
  OUTLINED_FUNCTION_131_0();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_3_127();
  OUTLINED_FUNCTION_7_85();
  OUTLINED_FUNCTION_6_87();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_1_141(v1);
  OUTLINED_FUNCTION_125_0();

  return sub_1DD04B29C(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1DD04B4B4(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = v7;
  *(v11 + 160) = a6;
  *(v11 + 168) = a7;
  *(v11 + 152) = a5;
  memcpy((v11 + 16), a2, 0x50uLL);
  *(v11 + 144) = *(a4 + 48);
  v13 = *(a4 + 32);
  *(v11 + 112) = *(a4 + 16);
  *(v11 + 128) = v13;
  *(v11 + 96) = *a4;
  v16 = (*(a7 + 120) + **(a7 + 120));
  v14 = swift_task_alloc();
  *(v11 + 176) = v14;
  *v14 = v11;
  v14[1] = sub_1DD04B620;

  return v16(a1, v11 + 16, v11 + 96, a6, a7);
}

uint64_t sub_1DD04B620()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 184) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1DD04B718()
{
  OUTLINED_FUNCTION_42();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = OUTLINED_FUNCTION_25_38(AssociatedTypeWitness, v1, v2, v3);
  OUTLINED_FUNCTION_71_19(v4, v5, v6, v7, v8, v9, v10, v11, *v12, *&v12[4], 6, 56);
}

uint64_t sub_1DD04B7B8()
{
  OUTLINED_FUNCTION_131_0();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_3_127();
  OUTLINED_FUNCTION_7_85();
  OUTLINED_FUNCTION_6_87();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_1_141(v1);
  OUTLINED_FUNCTION_125_0();

  return sub_1DD04B4B4(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1DD04B878()
{
  OUTLINED_FUNCTION_40_38();
  v0 = OUTLINED_FUNCTION_9_79();
  return (*(v1 + 128))(&v3, v0);
}

uint64_t sub_1DD04B900()
{
  OUTLINED_FUNCTION_58_6();
  OUTLINED_FUNCTION_40_38();
  v0 = OUTLINED_FUNCTION_9_79();
  return (*(v1 + 136))(v0);
}

uint64_t sub_1DD04B97C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 72) = a6;
  *(v7 + 80) = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v7 + 88) = AssociatedTypeWitness;
  *(v7 + 96) = *(AssociatedTypeWitness - 8);
  v13 = swift_task_alloc();
  *(v7 + 104) = v13;
  *(v7 + 64) = *(a5 + 48);
  v14 = *(a5 + 32);
  *(v7 + 32) = *(a5 + 16);
  *(v7 + 48) = v14;
  *(v7 + 16) = *a5;
  v17 = (*(a7 + 144) + **(a7 + 144));
  v15 = swift_task_alloc();
  *(v7 + 112) = v15;
  *v15 = v7;
  v15[1] = sub_1DD04BB54;

  return v17(v13, a3, v7 + 16, a6, a7);
}

uint64_t sub_1DD04BB54()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 120) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DD04BC4C()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = (*(AssociatedConformanceWitness + 16))(v3, AssociatedConformanceWitness);
  (*(v2 + 8))(v1, v3);

  v6 = v0[1];

  return v6(v5);
}

uint64_t sub_1DD04BD18()
{
  OUTLINED_FUNCTION_42();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DD04BD78()
{
  OUTLINED_FUNCTION_131_0();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_4_119();
  OUTLINED_FUNCTION_15_67();
  OUTLINED_FUNCTION_33_29();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_31_32(v1);
  OUTLINED_FUNCTION_125_0();

  return sub_1DD04B97C(v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1DD04BE54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = v7;
  v13 = *(a3 + 24);
  v14 = *(a3 + 32);
  v15 = *(a3 + 40);
  *(v11 + 72) = *a3;
  *(v11 + 80) = *(a3 + 8);
  *(v11 + 96) = v13;
  *(v11 + 104) = v14;
  *(v11 + 112) = v15;
  v16 = *(a5 + 16);
  *(v11 + 16) = *a5;
  *(v11 + 32) = v16;
  *(v11 + 48) = *(a5 + 32);
  *(v11 + 64) = *(a5 + 48);
  v19 = (*(a7 + 152) + **(a7 + 152));
  v17 = swift_task_alloc();
  *(v11 + 120) = v17;
  *v17 = v11;
  v17[1] = sub_1DD04BFE4;

  return v19(a1, a2, v11 + 72, v11 + 16, a6, a7);
}

uint64_t sub_1DD04BFE4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 128) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    v10 = *(v4 + 8);

    return v10();
  }
}

uint64_t sub_1DD04C114()
{
  OUTLINED_FUNCTION_131_0();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_4_119();
  OUTLINED_FUNCTION_15_67();
  OUTLINED_FUNCTION_33_29();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_31_32(v1);
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_125_0();

  return sub_1DD04BE54(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1DD04C1E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = v7;
  *(v10 + 128) = a6;
  *(v10 + 136) = a7;
  *(v10 + 120) = a5;
  v12 = *(a2 + 24);
  v13 = *(a2 + 32);
  v14 = *(a2 + 40);
  *(v10 + 72) = *a2;
  *(v10 + 80) = *(a2 + 8);
  *(v10 + 96) = v12;
  *(v10 + 104) = v13;
  *(v10 + 112) = v14;
  v15 = *(a4 + 16);
  *(v10 + 16) = *a4;
  *(v10 + 32) = v15;
  *(v10 + 48) = *(a4 + 32);
  *(v10 + 64) = *(a4 + 48);
  v18 = (*(a7 + 160) + **(a7 + 160));
  v16 = swift_task_alloc();
  *(v10 + 144) = v16;
  *v16 = v10;
  v16[1] = sub_1DD04C368;

  return v18(a1, v10 + 72, v10 + 16, a6, a7);
}

uint64_t sub_1DD04C368()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 152) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DD04C460()
{
  OUTLINED_FUNCTION_131_0();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_3_127();
  OUTLINED_FUNCTION_7_85();
  OUTLINED_FUNCTION_6_87();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_1_141(v1);
  OUTLINED_FUNCTION_125_0();

  return sub_1DD04C1E0(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1DD04C520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = v7;
  *(v10 + 128) = a6;
  *(v10 + 136) = a7;
  *(v10 + 120) = a5;
  v12 = *(a2 + 24);
  v13 = *(a2 + 32);
  v14 = *(a2 + 40);
  *(v10 + 72) = *a2;
  *(v10 + 80) = *(a2 + 8);
  *(v10 + 96) = v12;
  *(v10 + 104) = v13;
  *(v10 + 112) = v14;
  v15 = *(a4 + 16);
  *(v10 + 16) = *a4;
  *(v10 + 32) = v15;
  *(v10 + 48) = *(a4 + 32);
  *(v10 + 64) = *(a4 + 48);
  v18 = (*(a7 + 168) + **(a7 + 168));
  v16 = swift_task_alloc();
  *(v10 + 144) = v16;
  *v16 = v10;
  v16[1] = sub_1DD04C6A8;

  return v18(a1, v10 + 72, v10 + 16, a6, a7);
}

uint64_t sub_1DD04C6A8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 152) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1DD04C7A0()
{
  OUTLINED_FUNCTION_42();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = OUTLINED_FUNCTION_25_38(AssociatedTypeWitness, v1, v2, v3);
  OUTLINED_FUNCTION_71_19(v4, v5, v6, v7, v8, v9, v10, v11, *v12, *&v12[4], 20, 54);
}

uint64_t sub_1DD04C840()
{
  OUTLINED_FUNCTION_131_0();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_3_127();
  OUTLINED_FUNCTION_7_85();
  OUTLINED_FUNCTION_6_87();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_1_141(v1);
  OUTLINED_FUNCTION_125_0();

  return sub_1DD04C520(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1DD04C900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = v7;
  *(v10 + 128) = a6;
  *(v10 + 136) = a7;
  *(v10 + 120) = a5;
  v12 = *(a2 + 24);
  v13 = *(a2 + 32);
  v14 = *(a2 + 40);
  *(v10 + 72) = *a2;
  *(v10 + 80) = *(a2 + 8);
  *(v10 + 96) = v12;
  *(v10 + 104) = v13;
  *(v10 + 112) = v14;
  v15 = *(a4 + 16);
  *(v10 + 16) = *a4;
  *(v10 + 32) = v15;
  *(v10 + 48) = *(a4 + 32);
  *(v10 + 64) = *(a4 + 48);
  v18 = (*(a7 + 176) + **(a7 + 176));
  v16 = swift_task_alloc();
  *(v10 + 144) = v16;
  *v16 = v10;
  v16[1] = sub_1DD04C368;

  return v18(a1, v10 + 72, v10 + 16, a6, a7);
}

uint64_t sub_1DD04CA88()
{
  OUTLINED_FUNCTION_131_0();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_3_127();
  OUTLINED_FUNCTION_7_85();
  OUTLINED_FUNCTION_6_87();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_1_141(v1);
  OUTLINED_FUNCTION_125_0();

  return sub_1DD04C900(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1DD04CB48()
{
  OUTLINED_FUNCTION_58_6();
  OUTLINED_FUNCTION_40_38();
  v0 = OUTLINED_FUNCTION_9_79();
  return (*(v1 + 184))(v0);
}

uint64_t sub_1DD04CBC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a4 + 16);
  *(v6 + 16) = *a4;
  *(v6 + 32) = v11;
  *(v6 + 48) = *(a4 + 32);
  *(v6 + 64) = *(a4 + 48);
  v14 = (*(a6 + 192) + **(a6 + 192));
  v12 = swift_task_alloc();
  *(v6 + 72) = v12;
  *v12 = v6;
  v12[1] = sub_1DD04CD18;

  return v14(a1, a2, v6 + 16, a5, a6);
}

uint64_t sub_1DD04CD18()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 80) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    v10 = *(v4 + 8);

    return v10();
  }
}

uint64_t sub_1DD04CE30()
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_3_127();
  OUTLINED_FUNCTION_7_85();
  OUTLINED_FUNCTION_20_40();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_11_0(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_19_51(v3);
  v5 = OUTLINED_FUNCTION_18_52();

  return sub_1DD04CBC4(v5, v6, v7, v8, v0, v1);
}

uint64_t sub_1DD04CF0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 80) = a7;
  *(v8 + 88) = a8;
  v14 = *(a5 + 16);
  *(v8 + 16) = *a5;
  *(v8 + 32) = v14;
  *(v8 + 48) = *(a5 + 32);
  *(v8 + 64) = *(a5 + 48);
  *(v8 + 72) = a6;
  v17 = (*(a8 + 200) + **(a8 + 200));
  v15 = swift_task_alloc();
  *(v8 + 96) = v15;
  *v15 = v8;
  v15[1] = sub_1DD04D074;

  return v17(a1, a2, a3, v8 + 16, a7, a8);
}

uint64_t sub_1DD04D074()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 104) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1DD04D16C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_69_9();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = OUTLINED_FUNCTION_25_38(AssociatedTypeWitness, v1, v2, v3);
  OUTLINED_FUNCTION_71_19(v4, v5, v6, v7, v8, v9, v10, v11, *v12, *&v12[4], 22, 57);
}

uint64_t sub_1DD04D1F0()
{
  OUTLINED_FUNCTION_230();
  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_4_119();
  OUTLINED_FUNCTION_15_67();
  OUTLINED_FUNCTION_29_36();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_8_82(v1);
  OUTLINED_FUNCTION_117();

  return sub_1DD04CF0C(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1DD04D2B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 80) = a7;
  *(v8 + 88) = a8;
  v14 = *(a5 + 16);
  *(v8 + 16) = *a5;
  *(v8 + 32) = v14;
  *(v8 + 48) = *(a5 + 32);
  *(v8 + 64) = *(a5 + 48);
  *(v8 + 72) = a6;
  v17 = (*(a8 + 208) + **(a8 + 208));
  v15 = swift_task_alloc();
  *(v8 + 96) = v15;
  *v15 = v8;
  v15[1] = sub_1DD04D418;

  return v17(a1, a2, a3, v8 + 16, a7, a8);
}

uint64_t sub_1DD04D418()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 104) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DD04D510()
{
  OUTLINED_FUNCTION_230();
  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_4_119();
  OUTLINED_FUNCTION_15_67();
  OUTLINED_FUNCTION_29_36();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_8_82(v1);
  OUTLINED_FUNCTION_117();

  return sub_1DD04D2B0(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1DD04D5D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 80) = a7;
  *(v8 + 88) = a8;
  v14 = *(a5 + 16);
  *(v8 + 16) = *a5;
  *(v8 + 32) = v14;
  *(v8 + 48) = *(a5 + 32);
  *(v8 + 64) = *(a5 + 48);
  *(v8 + 72) = a6;
  v17 = (*(a8 + 216) + **(a8 + 216));
  v15 = swift_task_alloc();
  *(v8 + 96) = v15;
  *v15 = v8;
  v15[1] = sub_1DD04D418;

  return v17(a1, a2, a3, v8 + 16, a7, a8);
}

uint64_t sub_1DD04D738()
{
  OUTLINED_FUNCTION_230();
  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_4_119();
  OUTLINED_FUNCTION_15_67();
  OUTLINED_FUNCTION_29_36();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_8_82(v1);
  OUTLINED_FUNCTION_117();

  return sub_1DD04D5D0(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1DD04D7F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 80) = a7;
  *(v8 + 88) = a8;
  v14 = *(a5 + 16);
  *(v8 + 16) = *a5;
  *(v8 + 32) = v14;
  *(v8 + 48) = *(a5 + 32);
  *(v8 + 64) = *(a5 + 48);
  *(v8 + 72) = a6;
  v17 = (*(a8 + 224) + **(a8 + 224));
  v15 = swift_task_alloc();
  *(v8 + 96) = v15;
  *v15 = v8;
  v15[1] = sub_1DD04D960;

  return v17(a1, a2, a3, v8 + 16, a7, a8);
}

uint64_t sub_1DD04D960()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 104) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1DD04DA58()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_69_9();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = OUTLINED_FUNCTION_25_38(AssociatedTypeWitness, v1, v2, v3);
  OUTLINED_FUNCTION_71_19(v4, v5, v6, v7, v8, v9, v10, v11, *v12, *&v12[4], 12, 57);
}

uint64_t sub_1DD04DADC()
{
  OUTLINED_FUNCTION_230();
  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_4_119();
  OUTLINED_FUNCTION_15_67();
  OUTLINED_FUNCTION_29_36();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_8_82(v1);
  OUTLINED_FUNCTION_117();

  return sub_1DD04D7F8(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1DD04DB9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *(a5 + 16);
  *(v7 + 16) = *a5;
  *(v7 + 32) = v13;
  *(v7 + 48) = *(a5 + 32);
  *(v7 + 64) = *(a5 + 48);
  v16 = (*(a7 + 232) + **(a7 + 232));
  v14 = swift_task_alloc();
  *(v7 + 72) = v14;
  *v14 = v7;
  v14[1] = sub_1DD04CD18;

  return v16(a1, a2, a3, v7 + 16, a6, a7);
}

uint64_t sub_1DD04DD00()
{
  OUTLINED_FUNCTION_131_0();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_4_119();
  OUTLINED_FUNCTION_15_67();
  OUTLINED_FUNCTION_33_29();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_31_32(v1);
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_125_0();

  return sub_1DD04DB9C(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1DD04DDCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 80) = a6;
  *(v7 + 88) = a7;
  v12 = *(a4 + 16);
  *(v7 + 16) = *a4;
  *(v7 + 32) = v12;
  *(v7 + 48) = *(a4 + 32);
  *(v7 + 64) = *(a4 + 48);
  *(v7 + 72) = a5;
  v15 = (*(a7 + 56) + **(a7 + 56));
  v13 = swift_task_alloc();
  *(v7 + 96) = v13;
  *v13 = v7;
  v13[1] = sub_1DD04DF24;

  return v15(a1, a2, v7 + 16, a6, a7);
}

uint64_t sub_1DD04DF24()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 104) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1DD04E01C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_69_9();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = OUTLINED_FUNCTION_25_38(AssociatedTypeWitness, v1, v2, v3);
  OUTLINED_FUNCTION_71_19(v4, v5, v6, v7, v8, v9, v10, v11, *v12, *&v12[4], 6, 64);
}

uint64_t sub_1DD04E0B8()
{
  OUTLINED_FUNCTION_131_0();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_3_127();
  OUTLINED_FUNCTION_7_85();
  OUTLINED_FUNCTION_6_87();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_1_141(v1);
  OUTLINED_FUNCTION_125_0();

  return sub_1DD04DDCC(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1DD04E178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 80) = a6;
  *(v7 + 88) = a7;
  v12 = *(a4 + 16);
  *(v7 + 16) = *a4;
  *(v7 + 32) = v12;
  *(v7 + 48) = *(a4 + 32);
  *(v7 + 64) = *(a4 + 48);
  *(v7 + 72) = a5;
  v15 = (*(a7 + 64) + **(a7 + 64));
  v13 = swift_task_alloc();
  *(v7 + 96) = v13;
  *v13 = v7;
  v13[1] = sub_1DD04E2D0;

  return v15(a1, a2, v7 + 16, a6, a7);
}

uint64_t sub_1DD04E2D0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 104) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1DD04E3C8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_69_9();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = OUTLINED_FUNCTION_25_38(AssociatedTypeWitness, v1, v2, v3);
  OUTLINED_FUNCTION_71_19(v4, v5, v6, v7, v8, v9, v10, v11, *v12, *&v12[4], 6, 55);
}

uint64_t objectdestroy_48Tm()
{
  OUTLINED_FUNCTION_112();
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 63) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v2);
  v5 = v0 + v3;

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + v4 + 56));

  return swift_deallocObject();
}

uint64_t sub_1DD04E52C()
{
  OUTLINED_FUNCTION_131_0();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_3_127();
  OUTLINED_FUNCTION_7_85();
  OUTLINED_FUNCTION_6_87();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_1_141(v1);
  OUTLINED_FUNCTION_125_0();

  return sub_1DD04E178(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1DD04E5EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a3 + 16);
  *(v5 + 16) = *a3;
  *(v5 + 32) = v9;
  *(v5 + 48) = *(a3 + 32);
  *(v5 + 64) = *(a3 + 48);
  v12 = (*(a5 + 72) + **(a5 + 72));
  v10 = swift_task_alloc();
  *(v5 + 72) = v10;
  *v10 = v5;
  v10[1] = sub_1DD04CD18;

  return v12(a1, v5 + 16, a4, a5);
}

uint64_t sub_1DD04E738(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = (*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80);
  v6 = (*(*(v3 - 8) + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_11_0(v7);
  *v8 = v9;
  v8[1] = sub_1DCF9464C;

  return sub_1DD04E5EC(a1, v1 + v5, v1 + v6, v3, v4);
}

uint64_t sub_1DD04E844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v11 = *a4;
  v12 = a4[1];
  v15 = (*(a6 + 240) + **(a6 + 240));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1DCC467A0;

  return v15(a1, a2, v11, v12, a5, a6);
}

uint64_t objectdestroy_41Tm_0()
{
  OUTLINED_FUNCTION_112();
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v2);

  return swift_deallocObject();
}

uint64_t sub_1DD04EA3C()
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_3_127();
  OUTLINED_FUNCTION_7_85();
  OUTLINED_FUNCTION_20_40();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_11_0(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_19_51(v3);
  v5 = OUTLINED_FUNCTION_18_52();

  return sub_1DD04E844(v5, v6, v7, v8, v0, v1);
}

uint64_t sub_1DD04EB54()
{
  v15 = *MEMORY[0x1E69E9840];
  memcpy(__dst, v0, sizeof(__dst));
  if (qword_1ECCA1250 != -1)
  {
    OUTLINED_FUNCTION_2_14(&qword_1ECCA1250);
  }

  sub_1DCCE6BD4();
  v1 = sub_1DD0DAADC();
  v3 = v2;
  v4 = objc_opt_self();
  v5 = sub_1DD0DAEFC();
  v13[0] = 0;
  v6 = [v4 JSONObjectWithData:v5 options:0 error:v13];

  if (!v6)
  {
    v9 = v13[0];
    v8 = sub_1DD0DAE0C();

    swift_willThrow();
LABEL_8:
    sub_1DCB21A14(v1, v3);
    return v8;
  }

  v7 = v13[0];
  sub_1DD0DEA6C();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAABA0, &unk_1DD0E3FC0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1DCC6D7A0();
    v8 = swift_allocError();
    *v10 = 0xD00000000000002ALL;
    v10[1] = 0x80000001DD115E40;
    goto LABEL_8;
  }

  sub_1DCB21A14(v1, v3);
  return v12;
}

void UnsetRelationshipResponses.init()(uint64_t *a1@<X8>)
{
  if (qword_1EDE48CE8 != -1)
  {
    swift_once();
  }

  v2 = qword_1EDE57D40;
  a1[3] = type metadata accessor for CATTemplateExecutor();
  a1[4] = &off_1F58563F0;
  *a1 = v2;

  sub_1DD0DCF8C();
}

uint64_t UnsetRelationshipResponses.noMeCard(relationship:catGlobalOverrides:)(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  return OUTLINED_FUNCTION_0_2();
}

void sub_1DD04EDE4()
{
  OUTLINED_FUNCTION_39();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7948, &qword_1DD0F9840);
  inited = swift_initStackObject();
  inited[3].n128_u64[0] = OUTLINED_FUNCTION_2_12(inited, xmmword_1DD0E07C0);
  inited[3].n128_u64[1] = v1;
  v2 = sub_1DD0DDE9C();
  OUTLINED_FUNCTION_5_122(v2);
}

uint64_t UnsetRelationshipResponses.contactNotFound(catGlobalOverrides:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DD04EEF0()
{
  OUTLINED_FUNCTION_42();
  __swift_project_boxed_opaque_existential_1(*(v0 + 24), *(*(v0 + 24) + 24));
  *(v0 + 32) = sub_1DD0DDE9C();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_1DD04EFC8;
  OUTLINED_FUNCTION_8_3();

  return sub_1DCC6FD30(v2, v3, v4, v5);
}

uint64_t sub_1DD04EFC8()
{
  OUTLINED_FUNCTION_39();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t UnsetRelationshipResponses.savedRelationship(person:relationship:catGlobalOverrides:)()
{
  OUTLINED_FUNCTION_42();
  v1[47] = v2;
  v1[48] = v0;
  v1[45] = v3;
  v1[46] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1DD04F170, 0, 0);
}

uint64_t sub_1DD04F170()
{
  v1 = v0[45];
  v2 = sub_1DCC6E534(v1);
  v43 = v3;
  v44 = v2;
  sub_1DCC6E54C(v1);
  sub_1DCC6E540(v1);
  sub_1DCC6E558(v1);
  v4 = [v1 fullName];
  if (v4)
  {
    v12 = v4;
    sub_1DD0DDFBC();
  }

  OUTLINED_FUNCTION_3_128(v4, v5, v6, v7, v8, v9, v10, v11, v42, v43, v44);
  if (qword_1ECCA1250 != -1)
  {
    OUTLINED_FUNCTION_2_14(&qword_1ECCA1250);
  }

  sub_1DCCE6BD4();
  sub_1DD0DAADC();
  OUTLINED_FUNCTION_17_54();
  objc_opt_self();
  OUTLINED_FUNCTION_14_2();
  v13 = sub_1DD0DAEFC();
  v0[43] = 0;
  v14 = OUTLINED_FUNCTION_16_68(v13, sel_JSONObjectWithData_options_error_);

  v15 = v0[43];
  if (!v14)
  {
    v35 = v15;
    v18 = sub_1DD0DAE0C();

    swift_willThrow();
    goto LABEL_12;
  }

  v16 = v15;
  sub_1DD0DEA6C();
  swift_unknownObjectRelease();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAABA0, &unk_1DD0E3FC0);
  v18 = MEMORY[0x1E69E7CA0];
  if ((OUTLINED_FUNCTION_15_68(v17, v19, v20, v17) & 1) == 0)
  {
    sub_1DCC6D7A0();
    v36 = swift_allocError();
    OUTLINED_FUNCTION_14_63(v36, v37);
LABEL_12:
    v38 = OUTLINED_FUNCTION_14_2();
    sub_1DCB21A14(v38, v39);
    v0[42] = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
    swift_willThrowTypedImpl();
    OUTLINED_FUNCTION_73();

    __asm { BRAA            X1, X16 }
  }

  v21 = v0[48];
  v22 = OUTLINED_FUNCTION_14_2();
  sub_1DCB21A14(v22, v23);
  v24 = v0[44];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1BD8, &unk_1DD0E6A20);
  inited = swift_initStackObject();
  v26 = OUTLINED_FUNCTION_2_12(inited, xmmword_1DD0E32B0);
  OUTLINED_FUNCTION_4_120(v26, v27);
  inited[7].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAABA0, &unk_1DD0E3FC0);
  inited[6].n128_u64[0] = v24;
  v0[49] = sub_1DD0DDE9C();
  __swift_project_boxed_opaque_existential_1(v21, v21[3]);
  v28 = swift_task_alloc();
  v0[50] = v28;
  *v28 = v0;
  v28[1] = sub_1DD04F508;
  OUTLINED_FUNCTION_8_3();
  OUTLINED_FUNCTION_73();

  return sub_1DCC6FD30(v29, v30, v31, v32);
}

uint64_t sub_1DD04F508(uint64_t a1)
{
  v4 = *v2;
  OUTLINED_FUNCTION_27();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v1)
  {
    v6 = a1;
  }

  return v7(v6);
}

uint64_t UnsetRelationshipResponses.unsupportedPlatform(relationship:catGlobalOverrides:)(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  return OUTLINED_FUNCTION_0_2();
}

void sub_1DD04F694()
{
  OUTLINED_FUNCTION_39();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7948, &qword_1DD0F9840);
  inited = swift_initStackObject();
  inited[3].n128_u64[0] = OUTLINED_FUNCTION_2_12(inited, xmmword_1DD0E07C0);
  inited[3].n128_u64[1] = v1;
  v2 = sub_1DD0DDE9C();
  OUTLINED_FUNCTION_5_122(v2);
}

uint64_t UnsetRelationshipResponses.promptForPerson(relationship:catGlobalOverrides:)(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  return OUTLINED_FUNCTION_0_2();
}

void sub_1DD04F7A4()
{
  OUTLINED_FUNCTION_39();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7948, &qword_1DD0F9840);
  inited = swift_initStackObject();
  inited[3].n128_u64[0] = OUTLINED_FUNCTION_2_12(inited, xmmword_1DD0E07C0);
  inited[3].n128_u64[1] = v1;
  v2 = sub_1DD0DDE9C();
  OUTLINED_FUNCTION_5_122(v2);
}

uint64_t sub_1DD04F89C()
{
  OUTLINED_FUNCTION_39();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t UnsetRelationshipResponses.promptToDisambiguationContacts(catGlobalOverrides:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DD04F9C8()
{
  OUTLINED_FUNCTION_42();
  __swift_project_boxed_opaque_existential_1(*(v0 + 24), *(*(v0 + 24) + 24));
  *(v0 + 32) = sub_1DD0DDE9C();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_1DD04FF4C;
  OUTLINED_FUNCTION_8_3();

  return sub_1DCC6FD30(v2, v3, v4, v5);
}

uint64_t UnsetRelationshipResponses.processConfirmToSave(relationship:contact:catGlobalOverrides:)()
{
  OUTLINED_FUNCTION_42();
  v1[47] = v2;
  v1[48] = v0;
  v1[45] = v3;
  v1[46] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1DD04FB30, 0, 0);
}

uint64_t sub_1DD04FB30()
{
  v1 = v0[46];
  v2 = sub_1DCC6E534(v1);
  v43 = v3;
  v44 = v2;
  sub_1DCC6E54C(v1);
  sub_1DCC6E540(v1);
  sub_1DCC6E558(v1);
  v4 = [v1 fullName];
  if (v4)
  {
    v12 = v4;
    sub_1DD0DDFBC();
  }

  OUTLINED_FUNCTION_3_128(v4, v5, v6, v7, v8, v9, v10, v11, v42, v43, v44);
  if (qword_1ECCA1250 != -1)
  {
    OUTLINED_FUNCTION_2_14(&qword_1ECCA1250);
  }

  sub_1DCCE6BD4();
  sub_1DD0DAADC();
  OUTLINED_FUNCTION_17_54();
  objc_opt_self();
  OUTLINED_FUNCTION_14_2();
  v13 = sub_1DD0DAEFC();
  v0[43] = 0;
  v14 = OUTLINED_FUNCTION_16_68(v13, sel_JSONObjectWithData_options_error_);

  v15 = v0[43];
  if (!v14)
  {
    v35 = v15;
    v18 = sub_1DD0DAE0C();

    swift_willThrow();
    goto LABEL_12;
  }

  v16 = v15;
  sub_1DD0DEA6C();
  swift_unknownObjectRelease();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAABA0, &unk_1DD0E3FC0);
  v18 = MEMORY[0x1E69E7CA0];
  if ((OUTLINED_FUNCTION_15_68(v17, v19, v20, v17) & 1) == 0)
  {
    sub_1DCC6D7A0();
    v36 = swift_allocError();
    OUTLINED_FUNCTION_14_63(v36, v37);
LABEL_12:
    v38 = OUTLINED_FUNCTION_14_2();
    sub_1DCB21A14(v38, v39);
    v0[42] = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
    swift_willThrowTypedImpl();
    OUTLINED_FUNCTION_73();

    __asm { BRAA            X1, X16 }
  }

  v21 = v0[48];
  v22 = OUTLINED_FUNCTION_14_2();
  sub_1DCB21A14(v22, v23);
  v24 = v0[44];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1BD8, &unk_1DD0E6A20);
  inited = swift_initStackObject();
  v26 = OUTLINED_FUNCTION_2_12(inited, xmmword_1DD0E32B0);
  OUTLINED_FUNCTION_4_120(v26, v27);
  inited[7].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAABA0, &unk_1DD0E3FC0);
  inited[6].n128_u64[0] = v24;
  v0[49] = sub_1DD0DDE9C();
  __swift_project_boxed_opaque_existential_1(v21, v21[3]);
  v28 = swift_task_alloc();
  v0[50] = v28;
  *v28 = v0;
  v28[1] = sub_1DD04FED8;
  OUTLINED_FUNCTION_8_3();
  OUTLINED_FUNCTION_73();

  return sub_1DCC6FD30(v29, v30, v31, v32);
}

uint64_t sub_1DD04FED8()
{
  OUTLINED_FUNCTION_42();

  return sub_1DD04F508(v0);
}

void static UnsetRelationshipTemplates.processConfirmToSave(relationship:contact:_:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for RelationshipLabel(0);
  v9 = OUTLINED_FUNCTION_99(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9, v14);
  OUTLINED_FUNCTION_28_40();
  v17 = v15 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  OUTLINED_FUNCTION_20_0(v18);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v19, v20);
  v21 = OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_24_42(v21);
  sub_1DCC08BCC(a1, v17);
  OUTLINED_FUNCTION_43_28();
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  sub_1DCCC3844(v17, v22 + v11);
  *(v22 + v13) = a2;
  v23 = (v22 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v23 = a3;
  v23[1] = a4;
  v24 = a2;
  sub_1DD0DCF8C();
}

uint64_t sub_1DD050104()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1BD8, &unk_1DD0E6A20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD0E07C0;
  strcpy((inited + 32), "responseMode");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = 0;
  *(inited + 56) = 0xE000000000000000;
  result = sub_1DD0DDE9C();
  qword_1ECCAC940 = result;
  return result;
}

uint64_t sub_1DD0501BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[22] = a5;
  v6[23] = a6;
  v8 = swift_task_alloc();
  v6[24] = v8;
  *v8 = v6;
  v8[1] = sub_1DD05025C;

  return static UnsetRelationshipTemplates.noMeCard(relationship:)((v6 + 12), a4);
}

uint64_t sub_1DD05025C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 200) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t static UnsetRelationshipTemplates.noMeCard(relationship:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 120) = a1;
  *(v2 + 128) = a2;
  return OUTLINED_FUNCTION_0_2();
}

void sub_1DD050368()
{
  OUTLINED_FUNCTION_39();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7948, &qword_1DD0F9840);
  inited = swift_initStackObject();
  inited[3].n128_u64[0] = OUTLINED_FUNCTION_2_12(inited, xmmword_1DD0E07C0);
  inited[3].n128_u64[1] = v1;
  sub_1DD0DDE9C();
  if (qword_1EDE48CE8 != -1)
  {
    OUTLINED_FUNCTION_1_7(&qword_1EDE48CE8);
  }

  v2 = type metadata accessor for CATTemplateExecutor();
  OUTLINED_FUNCTION_23_39(v2, v2, &off_1F58563F0);
}

uint64_t sub_1DD0504DC()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 160) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1DD050634(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  OUTLINED_FUNCTION_20_0(v5);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v6, v7);
  v8 = OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_24_42(v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a1;
  v9[5] = a2;
  sub_1DD0DCF8C();
}

uint64_t sub_1DD0506EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 216) = a4;
  *(v5 + 224) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1DD05070C, 0, 0);
}

void sub_1DD05070C()
{
  OUTLINED_FUNCTION_39();
  if (qword_1EDE48CE8 != -1)
  {
    OUTLINED_FUNCTION_1_7(&qword_1EDE48CE8);
  }

  v1 = qword_1EDE57D40;
  v2 = type metadata accessor for CATTemplateExecutor();
  v0[25] = v2;
  v0[26] = &off_1F58563F0;
  v0[22] = v1;
  OUTLINED_FUNCTION_42_37(v0 + 22, v2);
}

uint64_t sub_1DD050864()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 256) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DD050980()
{
  v5 = v0;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 22);
  OUTLINED_FUNCTION_34_4();
  v1 = v0[27];
  memcpy(v4, v0 + 2, 0x49uLL);
  v1(v4);
  sub_1DD01FB4C((v0 + 2));
  OUTLINED_FUNCTION_29();

  return v2();
}

uint64_t sub_1DD050A10()
{
  OUTLINED_FUNCTION_51_4();
  v6 = v0;
  v1 = *(v0 + 256);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 176));
  *(v0 + 264) = 1;
  *(v0 + 16) = v1;
  *(v0 + 88) = 1;
  v2 = *(v0 + 216);
  memcpy(__dst, (v0 + 16), 0x49uLL);
  v2(__dst);
  sub_1DD01FB4C(v0 + 16);
  OUTLINED_FUNCTION_29();

  return v3();
}

void sub_1DD050AC4()
{
  OUTLINED_FUNCTION_39();
  if (qword_1EDE48CE8 != -1)
  {
    OUTLINED_FUNCTION_1_7(&qword_1EDE48CE8);
  }

  v1 = qword_1EDE57D40;
  v2 = type metadata accessor for CATTemplateExecutor();
  v0[5] = v2;
  v0[6] = &off_1F58563F0;
  v0[2] = v1;
  OUTLINED_FUNCTION_42_37(v0 + 2, v2);
}

uint64_t sub_1DD050C1C()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 88) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void static UnsetRelationshipTemplates.savedRelationship(person:relationship:_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for RelationshipLabel(0);
  v9 = OUTLINED_FUNCTION_99(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9, v14);
  OUTLINED_FUNCTION_28_40();
  v17 = v15 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  OUTLINED_FUNCTION_20_0(v18);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v19, v20);
  v21 = OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_24_42(v21);
  sub_1DCC08BCC(a2, v17);
  OUTLINED_FUNCTION_43_28();
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = a1;
  sub_1DCCC3844(v17, v22 + v11);
  v23 = (v22 + v13);
  *v23 = a3;
  v23[1] = a4;
  v24 = a1;
  sub_1DD0DCF8C();
}

uint64_t sub_1DD050EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[22] = a6;
  v7[23] = a7;
  v8 = swift_task_alloc();
  v7[24] = v8;
  *v8 = v7;
  v8[1] = sub_1DD050F60;

  return static UnsetRelationshipTemplates.savedRelationship(person:relationship:)();
}

uint64_t sub_1DD050F60()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 200) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DD051058()
{
  v5 = v0;
  OUTLINED_FUNCTION_34_4();
  v1 = *(v0 + 176);
  memcpy(v4, (v0 + 16), 0x49uLL);
  v1(v4);
  sub_1DD01FB4C(v0 + 16);
  OUTLINED_FUNCTION_29();

  return v2();
}

uint64_t sub_1DD0510E0()
{
  OUTLINED_FUNCTION_51_4();
  v6 = v0;
  v1 = *(v0 + 200);
  *(v0 + 208) = 1;
  *(v0 + 16) = v1;
  *(v0 + 88) = 1;
  v2 = *(v0 + 176);
  memcpy(__dst, (v0 + 16), 0x49uLL);
  v2(__dst);
  sub_1DD01FB4C(v0 + 16);
  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t static UnsetRelationshipTemplates.savedRelationship(person:relationship:)()
{
  OUTLINED_FUNCTION_42();
  v0[50] = v1;
  v0[51] = v2;
  v0[49] = v3;
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

void sub_1DD051204()
{
  OUTLINED_FUNCTION_51_4();
  v1 = v0[50];
  v2 = sub_1DCC6E534(v1);
  v34 = v3;
  v35 = v2;
  sub_1DCC6E54C(v1);
  sub_1DCC6E540(v1);
  sub_1DCC6E558(v1);
  v4 = [v1 fullName];
  if (v4)
  {
    v12 = v4;
    sub_1DD0DDFBC();
  }

  OUTLINED_FUNCTION_3_128(v4, v5, v6, v7, v8, v9, v10, v11, v33, v34, v35);
  if (qword_1ECCA1250 != -1)
  {
    OUTLINED_FUNCTION_2_14(&qword_1ECCA1250);
  }

  sub_1DCCE6BD4();
  sub_1DD0DAADC();
  sub_1DCCE6C28((v0 + 18));
  objc_opt_self();
  OUTLINED_FUNCTION_33_1();
  v15 = sub_1DD0DAEFC();
  v0[47] = 0;
  OUTLINED_FUNCTION_19_52();
  v18 = [v16 v17];

  v19 = v0[47];
  if (v18)
  {
    v20 = v19;
    sub_1DD0DEA6C();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAABA0, &unk_1DD0E3FC0);
    v21 = OUTLINED_FUNCTION_33_30();
    v22 = OUTLINED_FUNCTION_33_1();
    sub_1DCB21A14(v22, v23);
    if (v21)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1BD8, &unk_1DD0E6A20);
      inited = swift_initStackObject();
      v25 = OUTLINED_FUNCTION_2_12(inited, xmmword_1DD0E32B0);
      OUTLINED_FUNCTION_21_54(v25, v26, MEMORY[0x1E69E6158]);
      v0[52] = sub_1DD0DDE9C();
      if (qword_1EDE48CE8 != -1)
      {
        OUTLINED_FUNCTION_1_7(&qword_1EDE48CE8);
      }

      v27 = qword_1EDE57D40;
      v28 = type metadata accessor for CATTemplateExecutor();
      v0[41] = v28;
      v0[42] = &off_1F58563F0;
      v0[38] = v27;
      __swift_project_boxed_opaque_existential_1(v0 + 38, v28);
      sub_1DD0DCF8C();
    }
  }

  else
  {
    v29 = v19;
    v30 = sub_1DD0DAE0C();

    swift_willThrow();
    v31 = OUTLINED_FUNCTION_33_1();
    sub_1DCB21A14(v31, v32);
  }

  sub_1DD053134();
  swift_allocError();
  swift_willThrow();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_73();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1DD0515F0()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 440) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1DD05177C()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 304));
  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1DD051804()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 304));
  OUTLINED_FUNCTION_29();

  return v1();
}

void sub_1DD0518AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for RelationshipLabel(0);
  v8 = OUTLINED_FUNCTION_99(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8, v13);
  OUTLINED_FUNCTION_28_40();
  v16 = v14 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  OUTLINED_FUNCTION_20_0(v17);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v26 - v20;
  v22 = sub_1DD0DE4BC();
  __swift_storeEnumTagSinglePayload(v21, 1, 1, v22);
  sub_1DCC08BCC(a1, v16);
  v23 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  sub_1DCCC3844(v16, v24 + v23);
  v25 = (v24 + ((v12 + v23 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v25 = a2;
  v25[1] = a3;
  sub_1DD0DCF8C();
}

uint64_t sub_1DD051A34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[22] = a5;
  v6[23] = a6;
  v8 = swift_task_alloc();
  v6[24] = v8;
  *v8 = v6;
  v8[1] = sub_1DD05025C;

  return static UnsetRelationshipTemplates.unsupportedPlatform(relationship:)((v6 + 12), a4);
}

uint64_t static UnsetRelationshipTemplates.unsupportedPlatform(relationship:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 120) = a1;
  *(v2 + 128) = a2;
  return OUTLINED_FUNCTION_0_2();
}

void sub_1DD051AE8()
{
  OUTLINED_FUNCTION_39();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7948, &qword_1DD0F9840);
  inited = swift_initStackObject();
  inited[3].n128_u64[0] = OUTLINED_FUNCTION_2_12(inited, xmmword_1DD0E07C0);
  inited[3].n128_u64[1] = v1;
  sub_1DD0DDE9C();
  if (qword_1EDE48CE8 != -1)
  {
    OUTLINED_FUNCTION_1_7(&qword_1EDE48CE8);
  }

  v2 = type metadata accessor for CATTemplateExecutor();
  OUTLINED_FUNCTION_23_39(v2, v2, &off_1F58563F0);
}

uint64_t sub_1DD051C5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[22] = a5;
  v6[23] = a6;
  v8 = swift_task_alloc();
  v6[24] = v8;
  *v8 = v6;
  v8[1] = sub_1DD05025C;

  return static UnsetRelationshipTemplates.promptForPerson(relationship:)((v6 + 12), a4);
}

uint64_t sub_1DD051CFC()
{
  OUTLINED_FUNCTION_41();
  v0 = type metadata accessor for RelationshipLabel(0);
  OUTLINED_FUNCTION_99(v0);
  OUTLINED_FUNCTION_37_3();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_11_0(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_6_88(v2);

  return sub_1DD051C5C(v4, v5, v6, v7, v8, v9);
}

uint64_t static UnsetRelationshipTemplates.promptForPerson(relationship:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 120) = a1;
  *(v2 + 128) = a2;
  return OUTLINED_FUNCTION_0_2();
}

void sub_1DD051DFC()
{
  OUTLINED_FUNCTION_39();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7948, &qword_1DD0F9840);
  inited = swift_initStackObject();
  inited[3].n128_u64[0] = OUTLINED_FUNCTION_2_12(inited, xmmword_1DD0E07C0);
  inited[3].n128_u64[1] = v1;
  sub_1DD0DDE9C();
  if (qword_1EDE48CE8 != -1)
  {
    OUTLINED_FUNCTION_1_7(&qword_1EDE48CE8);
  }

  v2 = type metadata accessor for CATTemplateExecutor();
  OUTLINED_FUNCTION_23_39(v2, v2, &off_1F58563F0);
}

uint64_t sub_1DD051F70()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 160) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DD0520A8()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 80));
  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1DD052104()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 80));
  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1DD052160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 216) = a4;
  *(v5 + 224) = a5;
  return OUTLINED_FUNCTION_0_2();
}

void sub_1DD052174()
{
  OUTLINED_FUNCTION_39();
  if (qword_1EDE48CE8 != -1)
  {
    OUTLINED_FUNCTION_1_7(&qword_1EDE48CE8);
  }

  v1 = qword_1EDE57D40;
  v2 = type metadata accessor for CATTemplateExecutor();
  v0[25] = v2;
  v0[26] = &off_1F58563F0;
  v0[22] = v1;
  OUTLINED_FUNCTION_42_37(v0 + 22, v2);
}

uint64_t sub_1DD0522CC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 256) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1DD0523FC()
{
  OUTLINED_FUNCTION_39();
  if (qword_1EDE48CE8 != -1)
  {
    OUTLINED_FUNCTION_1_7(&qword_1EDE48CE8);
  }

  v1 = qword_1EDE57D40;
  v2 = type metadata accessor for CATTemplateExecutor();
  v0[5] = v2;
  v0[6] = &off_1F58563F0;
  v0[2] = v1;
  OUTLINED_FUNCTION_42_37(v0 + 2, v2);
}

uint64_t sub_1DD052554()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 88) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DD05268C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[22] = a6;
  v7[23] = a7;
  v8 = swift_task_alloc();
  v7[24] = v8;
  *v8 = v7;
  v8[1] = sub_1DD05025C;

  return static UnsetRelationshipTemplates.processConfirmToSave(relationship:contact:)();
}

uint64_t sub_1DD052734()
{
  OUTLINED_FUNCTION_41();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for RelationshipLabel(0);
  OUTLINED_FUNCTION_99(v5);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = (*(v8 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v0 + v9);
  v12 = *(v0 + 16);
  v13 = *(v0 + 24);
  v14 = *(v0 + v10);
  v15 = *(v0 + v10 + 8);
  v16 = swift_task_alloc();
  *(v2 + 16) = v16;
  *v16 = v2;
  v16[1] = sub_1DCB4AE1C;

  return sub_1DD05268C(v4, v12, v13, v0 + v7, v11, v14, v15);
}

uint64_t sub_1DD05286C()
{
  OUTLINED_FUNCTION_41();
  v0 = type metadata accessor for RelationshipLabel(0);
  OUTLINED_FUNCTION_99(v0);
  OUTLINED_FUNCTION_37_3();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_11_0(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_6_88(v2);

  return sub_1DD0501BC(v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1DD052958()
{
  OUTLINED_FUNCTION_33();
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_11_0(v3);
  *v4 = v5;
  v4[1] = sub_1DCB4AE1C;
  v6 = OUTLINED_FUNCTION_8_1();

  return sub_1DD0506EC(v6, v7, v8, v2, v1);
}

uint64_t sub_1DD052A00()
{
  OUTLINED_FUNCTION_41();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for RelationshipLabel(0);
  OUTLINED_FUNCTION_99(v5);
  v7 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v9 = v0[2];
  v10 = v0[3];
  v11 = v0[4];
  v12 = (v0 + ((*(v8 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = *v12;
  v14 = v12[1];
  v15 = swift_task_alloc();
  *(v2 + 16) = v15;
  *v15 = v2;
  v15[1] = sub_1DCB4AD3C;

  return sub_1DD050EB8(v4, v9, v10, v11, v0 + v7, v13, v14);
}

uint64_t static UnsetRelationshipTemplates.processConfirmToSave(relationship:contact:)()
{
  OUTLINED_FUNCTION_42();
  v0[50] = v1;
  v0[51] = v2;
  v0[49] = v3;
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

void sub_1DD052BBC()
{
  OUTLINED_FUNCTION_51_4();
  v1 = v0[51];
  v2 = sub_1DCC6E534(v1);
  v34 = v3;
  v35 = v2;
  sub_1DCC6E54C(v1);
  sub_1DCC6E540(v1);
  sub_1DCC6E558(v1);
  v4 = [v1 fullName];
  if (v4)
  {
    v12 = v4;
    sub_1DD0DDFBC();
  }

  OUTLINED_FUNCTION_3_128(v4, v5, v6, v7, v8, v9, v10, v11, v33, v34, v35);
  if (qword_1ECCA1250 != -1)
  {
    OUTLINED_FUNCTION_2_14(&qword_1ECCA1250);
  }

  sub_1DCCE6BD4();
  sub_1DD0DAADC();
  sub_1DCCE6C28((v0 + 18));
  objc_opt_self();
  OUTLINED_FUNCTION_33_1();
  v15 = sub_1DD0DAEFC();
  v0[47] = 0;
  OUTLINED_FUNCTION_19_52();
  v18 = [v16 v17];

  v19 = v0[47];
  if (v18)
  {
    v20 = v19;
    sub_1DD0DEA6C();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAABA0, &unk_1DD0E3FC0);
    v21 = OUTLINED_FUNCTION_33_30();
    v22 = OUTLINED_FUNCTION_33_1();
    sub_1DCB21A14(v22, v23);
    if (v21)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1BD8, &unk_1DD0E6A20);
      inited = swift_initStackObject();
      v25 = OUTLINED_FUNCTION_2_12(inited, xmmword_1DD0E32B0);
      OUTLINED_FUNCTION_21_54(v25, v26, MEMORY[0x1E69E6158]);
      v0[52] = sub_1DD0DDE9C();
      if (qword_1EDE48CE8 != -1)
      {
        OUTLINED_FUNCTION_1_7(&qword_1EDE48CE8);
      }

      v27 = qword_1EDE57D40;
      v28 = type metadata accessor for CATTemplateExecutor();
      v0[41] = v28;
      v0[42] = &off_1F58563F0;
      v0[38] = v27;
      __swift_project_boxed_opaque_existential_1(v0 + 38, v28);
      sub_1DD0DCF8C();
    }
  }

  else
  {
    v29 = v19;
    v30 = sub_1DD0DAE0C();

    swift_willThrow();
    v31 = OUTLINED_FUNCTION_33_1();
    sub_1DCB21A14(v31, v32);
  }

  sub_1DD053134();
  swift_allocError();
  swift_willThrow();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_73();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1DD052FA8()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 440) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

unint64_t sub_1DD053134()
{
  result = qword_1ECCAC948;
  if (!qword_1ECCAC948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCAC948);
  }

  return result;
}

uint64_t sub_1DD053188()
{
  OUTLINED_FUNCTION_41();
  v0 = type metadata accessor for RelationshipLabel(0);
  OUTLINED_FUNCTION_99(v0);
  OUTLINED_FUNCTION_37_3();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_11_0(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_6_88(v2);

  return sub_1DD051A34(v4, v5, v6, v7, v8, v9);
}

_BYTE *sub_1DD053284(_BYTE *result, int a2, int a3)
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

unint64_t sub_1DD053334()
{
  result = qword_1ECCAC950[0];
  if (!qword_1ECCAC950[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECCAC950);
  }

  return result;
}

uint64_t sub_1DD053394()
{
  OUTLINED_FUNCTION_42();

  return sub_1DD05177C();
}

uint64_t sub_1DD053404()
{
  OUTLINED_FUNCTION_42();

  return sub_1DD051804();
}

uint64_t sub_1DD053488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for SiriKitUnsupportedUnsetRelationshipFlow.State(319, *(a1 + 80), *(a1 + 88), a4);
  if (v5 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1DD05353C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  OUTLINED_FUNCTION_18_53();
  swift_allocObject();
  v13 = OUTLINED_FUNCTION_16_69();
  sub_1DD053C40(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10, a11, a12, a13, v21, a11, a12, a9, a10, v22, v23, v24, v25, v26, v27, v28);
}

void sub_1DD0535C4()
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_18_53();
  swift_allocObject();
  OUTLINED_FUNCTION_16_69();
  sub_1DD054024();
}

void sub_1DD053614()
{
  OUTLINED_FUNCTION_50();
  v1 = v0;
  v3 = v2;
  v4 = *v0;
  v5 = v4[10];
  v32 = v4[11];
  v7 = type metadata accessor for SiriKitUnsupportedUnsetRelationshipFlow.State(0, v5, v32, v6);
  OUTLINED_FUNCTION_0_1();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v30 - v12;
  v14 = v4[17];
  swift_beginAccess();
  v15 = *(v9 + 16);
  v15(v13, &v1[v14], v7);
  OUTLINED_FUNCTION_90_0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 5:
      *(v3 + 32) = 0;
      *v3 = 0u;
      *(v3 + 16) = 0u;
      v19 = 2;
      goto LABEL_7;
    case 4:
      v18 = v13[8];
      *v3 = *v13;
      *(v3 + 8) = v18;
      v19 = 1;
LABEL_7:
      *(v3 + 40) = v19;
      break;
    case 3:
      v17 = *(v13 + 1);
      *v3 = *v13;
      *(v3 + 16) = v17;
      *(v3 + 25) = *(v13 + 25);
      break;
    default:
      v31 = v5;
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v20 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v20, qword_1EDE57E00);
      v21 = sub_1DD0DD8EC();
      v22 = sub_1DD0DE6EC();
      if (OUTLINED_FUNCTION_75(v22))
      {
        v23 = OUTLINED_FUNCTION_50_0();
        *v23 = 0;
        _os_log_impl(&dword_1DCAFC000, v21, v22, "UnsupportedUnsetRelationshipFlow exitValue called in unexpected state.", v23, 2u);
        OUTLINED_FUNCTION_80();
      }

      type metadata accessor for SiriKitUnsupportedUnsetRelationshipFlow.UnsupportedUnsetRelationshipFlowError(0, v31, v32, v24);
      OUTLINED_FUNCTION_2_120();
      WitnessTable = swift_getWitnessTable();
      v26 = OUTLINED_FUNCTION_10_5(WitnessTable);
      v15(v27, &v1[v14], v7);
      *v3 = v26;
      *(v3 + 8) = 0;
      *(v3 + 40) = 1;
      v28 = OUTLINED_FUNCTION_90_0();
      v29(v28);
      break;
  }

  OUTLINED_FUNCTION_49();
}

void sub_1DD053888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for SiriKitUnsupportedUnsetRelationshipFlow.State(0, *(*v4 + 80), *(*v4 + 88), a4);
  MEMORY[0x1EEE9AC00](v5, v6);
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v7 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v7, qword_1EDE57E00);
  sub_1DD0DCF8C();
}

void sub_1DD053B3C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 136);
  swift_beginAccess();
  v6 = type metadata accessor for SiriKitUnsupportedUnsetRelationshipFlow.State(0, *(v3 + 80), *(v3 + 88), v5);
  (*(*(v6 - 8) + 24))(v1 + v4, a1, v6);
  v7 = swift_endAccess();
  sub_1DD053888(v7, v8, v9, v10);
}

void sub_1DD053C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  OUTLINED_FUNCTION_50();
  v26 = v25;
  v28 = v27;
  v68 = v29;
  v69 = v30;
  v32 = v31;
  v62 = v33;
  v63 = v31;
  v35 = v34;
  v37 = v36;
  v67 = v36;
  v64 = a25;
  v65 = v34;
  v70 = a23;
  v71 = v38;
  v61 = a24;
  v72 = *(a24 - 8);
  v58 = a21;
  v60 = a22;
  MEMORY[0x1EEE9AC00](v33, v36);
  v59 = &v57 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_8_2();
  v41 = *(v40 + 80);
  OUTLINED_FUNCTION_8_2();
  v66 = *(v42 + 88);
  v44 = type metadata accessor for SiriKitUnsupportedUnsetRelationshipFlow.State(0, v41, v66, v43);
  OUTLINED_FUNCTION_0_1();
  v46 = v45;
  MEMORY[0x1EEE9AC00](v47, v48);
  v50 = &v57 - v49;
  sub_1DCB17D04(v37, v26 + 32);
  sub_1DCB17D04(v35, v26 + 72);
  sub_1DCB17D04(v32, v26 + 112);
  ParameterResolutionRecord.init(app:intent:parameterName:parameterMulticardinalIndex:result:)(v69, v28, v71, v58, a22, v70, v73);
  v51 = v74;
  v52 = v75;
  v53 = v76;
  v54 = v73[1];
  *v50 = v73[0];
  *(v50 + 1) = v54;
  *(v50 + 4) = v51;
  v50[40] = v52;
  *(v50 + 6) = v53;
  swift_storeEnumTagMultiPayload();
  (*(v46 + 32))(v26 + *(*v26 + 136), v50, v44);
  type metadata accessor for UnsupportedUnsetRelationshipPromptProcessingStrategy(0, v41, v55, v56);
  (*(v72 + 16))(v59, v62, v61);
  sub_1DD0DCF8C();
}

uint64_t sub_1DD053FE0()
{
  OUTLINED_FUNCTION_58_1();
  OUTLINED_FUNCTION_18_3();
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_19();
  sub_1DD056D30();
  return v0;
}

void sub_1DD054024()
{
  OUTLINED_FUNCTION_50();
  v1 = v0;
  v40 = v3;
  v41 = v2;
  v35 = v5;
  v36 = v4;
  v7 = v6;
  v37 = v6;
  v38 = v8;
  v9 = v8;
  v39 = v10;
  v30 = *v0;
  OUTLINED_FUNCTION_0_1();
  v42 = v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v31 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v15;
  v17 = v15[1];
  v19 = v15[2];
  v18 = v15[3];
  v33 = v15[4];
  v20 = v33;
  v34 = v19;
  v21 = *(v15 + 40);
  v32 = v21;
  v29 = v15[6];
  v22 = v29;
  sub_1DCB17D04(v23, (v1 + 4));
  sub_1DCB17D04(v9, (v1 + 9));
  sub_1DCB17D04(v7, (v1 + 14));
  v24 = v1 + *(*v1 + 136);
  *v24 = v16;
  *(v24 + 1) = v17;
  *(v24 + 2) = v19;
  *(v24 + 3) = v18;
  *(v24 + 4) = v20;
  v24[40] = v21;
  *(v24 + 6) = v22;
  v25 = *(v30 + 80);
  type metadata accessor for SiriKitUnsupportedUnsetRelationshipFlow.State(0, v25, *(v30 + 88), v26);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for UnsupportedUnsetRelationshipPromptProcessingStrategy(0, v25, v27, v28);
  (*(v42 + 16))(v31, v36, v35);
  sub_1DD0DCF8C();
}

uint64_t sub_1DD0542BC()
{
  OUTLINED_FUNCTION_58_1();
  OUTLINED_FUNCTION_18_3();
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_19();
  sub_1DD056764();
  return v0;
}

uint64_t sub_1DD054394()
{
  OUTLINED_FUNCTION_39();
  v1[40] = v2;
  v1[41] = v0;
  v3 = *v0;
  v4 = type metadata accessor for RelationshipLabel(0);
  v1[42] = v4;
  OUTLINED_FUNCTION_20_0(v4);
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v5 = *(v3 + 80);
  v1[47] = v5;
  v6 = *(v3 + 88);
  v1[48] = v6;
  v8 = type metadata accessor for SiriKitUnsupportedUnsetRelationshipFlow.State(0, v5, v6, v7);
  v1[49] = v8;
  v1[50] = *(v8 - 8);
  v1[51] = swift_task_alloc();
  v1[52] = swift_task_alloc();
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DD0544E4()
{
  v1 = *(v0 + 416);
  v2 = *(v0 + 392);
  v3 = *(v0 + 400);
  v4 = *(v0 + 328);
  v5 = *(*v4 + 136);
  swift_beginAccess();
  v6 = *(v3 + 16);
  v6(v1, v4 + v5, v2);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v59 = *(v0 + 416);
      v60 = *(v59 + 8);
      v61 = *(v59 + 48);

      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v62 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v62, qword_1EDE57E00);
      v63 = sub_1DD0DD8EC();
      v64 = sub_1DD0DE6EC();
      if (os_log_type_enabled(v63, v64))
      {
        v65 = OUTLINED_FUNCTION_50_0();
        *v65 = 0;
        _os_log_impl(&dword_1DCAFC000, v63, v64, "UnsupportedUnsetRelationshipFlow execute called in unexpected state.", v65, 2u);
        OUTLINED_FUNCTION_80();
      }

      v66 = *(v0 + 408);
      v67 = *(v0 + 384);
      v68 = *(v0 + 376);
      v84 = *(v0 + 392);

      type metadata accessor for ParameterResolutionRecord(255, v68, v69, v70);
      OUTLINED_FUNCTION_76_1();
      swift_getTupleTypeMetadata2();
      type metadata accessor for SiriKitUnsupportedUnsetRelationshipFlow.UnsupportedUnsetRelationshipFlowError(0, v68, v67, v71);
      OUTLINED_FUNCTION_2_120();
      swift_getWitnessTable();
      v72 = swift_allocError();
      v6(v73, v4 + v5, v84);
      *v66 = v72;
      *(v66 + 8) = 0;
      swift_storeEnumTagMultiPayload();
      sub_1DD053B3C(v66);
    case 2u:
      v35 = *(v0 + 416);
      v36 = *(v0 + 376);
      v37 = *(v0 + 344);
      v38 = *v35;
      *(v0 + 496) = *v35;
      v39 = v35[1];
      *(v0 + 504) = v39;
      v40 = v35[3];
      v85 = v35[2];
      v86 = v37;
      *(v0 + 512) = v40;
      v41 = v35[4];
      v42 = *(v35 + 40);
      v43 = v35[6];
      *(v0 + 520) = v43;
      type metadata accessor for ParameterResolutionRecord(255, v36, v7, v8);
      sub_1DD031750();
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      v45 = *(TupleTypeMetadata3 + 48);
      *(v0 + 528) = *(v35 + *(TupleTypeMetadata3 + 64));
      sub_1DCCC3844(v35 + v45, v86);
      *(v0 + 16) = v38;
      *(v0 + 24) = v39;
      *(v0 + 32) = v85;
      *(v0 + 40) = v40;
      *(v0 + 48) = v41;
      *(v0 + 56) = v42;
      *(v0 + 64) = v43;
      v46 = swift_task_alloc();
      *(v0 + 536) = v46;
      *v46 = v0;
      v46[1] = sub_1DD055004;
      OUTLINED_FUNCTION_73();

      return sub_1DD055B70();
    case 3u:
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v48 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v48, qword_1EDE57E00);
      v49 = sub_1DD0DD8EC();
      sub_1DD0DE6DC();
      OUTLINED_FUNCTION_8_5();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v51);
        OUTLINED_FUNCTION_36_0();
        _os_log_impl(v52, v53, v54, v55, v56, 2u);
        OUTLINED_FUNCTION_62();
      }

      static ExecuteResponse.complete()();
      v57 = OUTLINED_FUNCTION_20();
      v58(v57);
      goto LABEL_31;
    case 4u:
      (*(*(v0 + 400) + 8))(*(v0 + 416), *(v0 + 392));
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v32 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v32, qword_1EDE57E00);
      v33 = sub_1DD0DD8EC();
      sub_1DD0DE6DC();
      OUTLINED_FUNCTION_8_5();
      if (os_log_type_enabled(v33, v34))
      {
        goto LABEL_29;
      }

      goto LABEL_30;
    case 5u:
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v74 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v74, qword_1EDE57E00);
      v33 = sub_1DD0DD8EC();
      sub_1DD0DE6DC();
      OUTLINED_FUNCTION_8_5();
      if (os_log_type_enabled(v33, v75))
      {
LABEL_29:
        v76 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v76);
        OUTLINED_FUNCTION_36_0();
        _os_log_impl(v77, v78, v79, v80, v81, 2u);
        OUTLINED_FUNCTION_62();
      }

LABEL_30:

      static ExecuteResponse.complete()();
LABEL_31:
      OUTLINED_FUNCTION_26_41();

      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_73();

      __asm { BRAA            X1, X16 }

      return result;
    default:
      v9 = *(v0 + 416);
      v10 = *v9;
      *(v0 + 424) = *v9;
      v11 = v9[1];
      *(v0 + 432) = v11;
      v12 = v9[2];
      *(v0 + 440) = v12;
      v13 = v9[3];
      *(v0 + 448) = v13;
      v14 = v9[4];
      *(v0 + 456) = v14;
      v15 = *(v9 + 40);
      *(v0 + 544) = v15;
      v16 = v9[6];
      *(v0 + 464) = v16;
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v17 = sub_1DD0DD8FC();
      *(v0 + 472) = __swift_project_value_buffer(v17, qword_1EDE57E00);
      v18 = sub_1DD0DD8EC();
      sub_1DD0DE6DC();
      OUTLINED_FUNCTION_8_5();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v20);
        OUTLINED_FUNCTION_36_0();
        _os_log_impl(v21, v22, v23, v24, v25, 2u);
        OUTLINED_FUNCTION_80();
      }

      *(v0 + 72) = v10;
      *(v0 + 80) = v11;
      *(v0 + 88) = v12;
      *(v0 + 96) = v13;
      *(v0 + 104) = v14;
      *(v0 + 112) = v15;
      *(v0 + 120) = v16;
      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      *(v0 + 480) = v26;
      *v26 = v27;
      v26[1] = sub_1DD054BC4;
      OUTLINED_FUNCTION_73();

      return sub_1DD057910(v28, v29);
  }
}

uint64_t sub_1DD054BC4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 488) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1DD054CBC()
{
  v23 = v0;
  sub_1DCCC3844(v0[45], v0[46]);
  v2 = OUTLINED_FUNCTION_20();
  sub_1DCC08BCC(v2, v3);
  v4 = sub_1DD0DD8EC();
  v5 = sub_1DD0DE6DC();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[44];
  if (v6)
  {
    OUTLINED_FUNCTION_151();
    v22 = OUTLINED_FUNCTION_52_0();
    *v1 = 136315138;
    v8 = RelationshipLabel.asUnboundedSemanticValue.getter();
    v10 = v9;
    sub_1DCF13094(v7);
    v11 = sub_1DCB10E9C(v8, v10, &v22);

    *(v1 + 4) = v11;
    OUTLINED_FUNCTION_88(&dword_1DCAFC000, v12, v13, "UnsupportedUnsetRelationshipFlow extracted requested relationship '%s'. Pushing UnsetRelationshipFlow.");
    OUTLINED_FUNCTION_60_0();
    OUTLINED_FUNCTION_80();
  }

  else
  {

    sub_1DCF13094(v7);
  }

  v16 = v0[48];
  v17 = v0[46];
  v18 = v0[43];
  v19 = v0[41];
  type metadata accessor for UnsetRelationshipFlowAsync(0, v16, v14, v15);
  v0[38] = *(v19 + 24);
  sub_1DCC08BCC(v17, v18);
  sub_1DCB17D04(v19 + 32, (v0 + 16));
  sub_1DCB17D04(v19 + 72, (v0 + 21));
  sub_1DCB17D04(v19 + 112, (v0 + 26));
  type metadata accessor for AnyUnsetRelationshipFlowStrategy(0, v16, v20, v21);
  sub_1DD0DCF8C();
}

uint64_t sub_1DD055004()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DD0550EC()
{
  v1 = *(v0 + 520);
  v2 = *(v0 + 504);
  v3 = *(v0 + 344);

  sub_1DCF13094(v3);
  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_26_41();

  OUTLINED_FUNCTION_29();

  return v4();
}

void sub_1DD0551C0()
{
  v14 = v0;
  v1 = *(v0 + 488);
  v2 = v1;
  v3 = sub_1DD0DD8EC();
  v4 = sub_1DD0DE6EC();

  if (os_log_type_enabled(v3, v4))
  {
    OUTLINED_FUNCTION_151();
    v13 = OUTLINED_FUNCTION_52_0();
    *v1 = 136315138;
    swift_getErrorValue();
    v5 = sub_1DD0DF18C();
    v7 = sub_1DCB10E9C(v5, v6, &v13);

    *(v1 + 1) = v7;
    OUTLINED_FUNCTION_88(&dword_1DCAFC000, v8, v9, "UnsupportedUnsetRelationshipFlow unable to extract requested relationship: %s");
    OUTLINED_FUNCTION_60_0();
    OUTLINED_FUNCTION_80();
  }

  v10 = *(v0 + 488);
  v11 = *(v0 + 408);
  *v11 = v10;
  *(v11 + 8) = 0;
  swift_storeEnumTagMultiPayload();
  v12 = v10;
  sub_1DD053B3C(v11);
}

void sub_1DD0553FC()
{
  OUTLINED_FUNCTION_50();
  v2 = v1;
  v3 = *v0;
  v4 = *(*v0 + 80);
  v82 = *(*v0 + 88);
  v6 = type metadata accessor for SiriKitUnsupportedUnsetRelationshipFlow.State(0, v4, v82, v5);
  OUTLINED_FUNCTION_0_1();
  v8 = v7;
  v11 = MEMORY[0x1EEE9AC00](v9, v10);
  v84 = (&v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v78 - v14;
  type metadata accessor for RelationshipLabel(0);
  OUTLINED_FUNCTION_112();
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v2 + 8);
  *&v83 = *v2;
  *(&v83 + 1) = v20;
  v81 = *(v2 + 9);
  v21 = *(v3 + 136);
  swift_beginAccess();
  v22 = *(v8 + 16);
  v85 = v0;
  v22(v15, &v0[v21], v6);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v43 = v22;
    (*(v8 + 8))(v15, v6);
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v44 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v44, qword_1EDE57E00);
    v45 = sub_1DD0DD8EC();
    v46 = sub_1DD0DE6EC();
    if (OUTLINED_FUNCTION_75(v46))
    {
      v47 = OUTLINED_FUNCTION_50_0();
      *v47 = 0;
      _os_log_impl(&dword_1DCAFC000, v45, v46, "UnsupportedUnsetRelationshipFlow UnsetRelationshipFlow callback called in unexpected state.", v47, 2u);
      OUTLINED_FUNCTION_80();
    }

    type metadata accessor for SiriKitUnsupportedUnsetRelationshipFlow.UnsupportedUnsetRelationshipFlowError(0, v4, v82, v48);
    OUTLINED_FUNCTION_2_120();
    WitnessTable = swift_getWitnessTable();
    v50 = OUTLINED_FUNCTION_10_5(WitnessTable);
    v43(v51, &v85[v21], v6);
    v52 = v84;
    *v84 = v50;
    *(v52 + 8) = 0;
    swift_storeEnumTagMultiPayload();
    sub_1DD053B3C(v52);
  }

  v25 = *(v15 + 1);
  v82 = *v15;
  v27 = *(v15 + 2);
  v26 = *(v15 + 3);
  v79 = v25;
  v80 = v26;
  v28 = *(v15 + 4);
  v29 = v15[40];
  v78 = *(v15 + 6);
  type metadata accessor for ParameterResolutionRecord(255, v4, v23, v24);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_1DCCC3844(&v15[*(TupleTypeMetadata2 + 48)], v19);
  v31 = v19;
  if (!v81)
  {
    sub_1DD031750();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v54 = *(TupleTypeMetadata3 + 48);
    v55 = *(TupleTypeMetadata3 + 64);
    v56 = v84;
    v57 = v79;
    *v84 = v82;
    v56[1] = v57;
    v56[2] = v27;
    v56[3] = v80;
    v56[4] = v28;
    *(v56 + 40) = v29;
    v56[6] = v78;
    sub_1DCC08BCC(v31, v56 + v54);
    v58 = v83;
    *(v56 + v55) = v83;
    swift_storeEnumTagMultiPayload();
    sub_1DD02BEE4(v58, *(&v83 + 1), 0);
    sub_1DD0DCF8C();
  }

  if (v81 != 1)
  {
    if (v83 == 0)
    {
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v73 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v73, qword_1EDE57E00);
      v74 = sub_1DD0DD8EC();
      v75 = sub_1DD0DE6EC();
      if (OUTLINED_FUNCTION_75(v75))
      {
        *OUTLINED_FUNCTION_50_0() = 0;
        OUTLINED_FUNCTION_2_3(&dword_1DCAFC000, v76, v77, "UnsupportedUnsetRelationshipFlow user cancelled request. Transitioning to cancelled.");
        OUTLINED_FUNCTION_80();
      }

      v64 = v84;
      OUTLINED_FUNCTION_20();
    }

    else
    {
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v59 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v59, qword_1EDE57E00);
      v60 = sub_1DD0DD8EC();
      v61 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_75(v61))
      {
        *OUTLINED_FUNCTION_50_0() = 0;
        OUTLINED_FUNCTION_2_3(&dword_1DCAFC000, v62, v63, "UnsupportedUnsetRelationshipFlow UnsetRelationshipFlow exited without providing an answer");
        OUTLINED_FUNCTION_80();
      }

      v64 = v84;
      OUTLINED_FUNCTION_11_77(1);
    }

    swift_storeEnumTagMultiPayload();
    sub_1DD053B3C(v64);
  }

  v32 = v83;
  if (BYTE8(v83))
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v33 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v33, qword_1EDE57E00);
    v34 = v32;
    v35 = sub_1DD0DD8EC();
    v36 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_44_35(v36))
    {
      v37 = OUTLINED_FUNCTION_151();
      v38 = swift_slowAlloc();
      v86[0] = v38;
      *v37 = 136315138;
      swift_getErrorValue();
      v39 = sub_1DD0DF18C();
      v41 = sub_1DCB10E9C(v39, v40, v86);

      *(v37 + 4) = v41;
      v42 = "UnsupportedUnsetRelationshipFlow UnsetRelationshipFlow exited with a handled error: %s";
LABEL_25:
      _os_log_impl(&dword_1DCAFC000, v35, v15, v42, v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v38);
      OUTLINED_FUNCTION_80();
      v32 = v83;
      OUTLINED_FUNCTION_80();
    }
  }

  else
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v65 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v65, qword_1EDE57E00);
    v66 = v32;
    v35 = sub_1DD0DD8EC();
    v67 = sub_1DD0DE6EC();
    if (OUTLINED_FUNCTION_44_35(v67))
    {
      v37 = OUTLINED_FUNCTION_151();
      v38 = swift_slowAlloc();
      v86[0] = v38;
      *v37 = 136315138;
      swift_getErrorValue();
      v68 = sub_1DD0DF18C();
      v70 = sub_1DCB10E9C(v68, v69, v86);

      *(v37 + 4) = v70;
      v42 = "UnsupportedUnsetRelationshipFlow UnsetRelationshipFlow exited with an unhandled error: %s";
      goto LABEL_25;
    }
  }

  v71 = v84;
  *v84 = v32;
  *(v71 + 8) = BYTE8(v83) & 1;
  swift_storeEnumTagMultiPayload();
  v72 = v32;
  sub_1DD053B3C(v71);
}

uint64_t sub_1DD055B70()
{
  OUTLINED_FUNCTION_42();
  v3 = v2;
  *(v1 + 192) = v4;
  *(v1 + 200) = v0;
  *(v1 + 184) = v5;
  OUTLINED_FUNCTION_8_2();
  *(v1 + 208) = *(v6 + 80);
  OUTLINED_FUNCTION_8_2();
  v10 = type metadata accessor for SiriKitUnsupportedUnsetRelationshipFlow.State(0, v8, *(v7 + 88), v9);
  *(v1 + 216) = v10;
  OUTLINED_FUNCTION_20_0(v10);
  *(v1 + 224) = swift_task_alloc();
  *(v1 + 232) = *v3;
  *(v1 + 248) = *(v3 + 16);
  *(v1 + 256) = *(v3 + 24);
  *(v1 + 304) = *(v3 + 40);
  *(v1 + 272) = *(v3 + 48);
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1DD055C50()
{
  OUTLINED_FUNCTION_41();
  v26 = v0;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v1 = *(v0 + 184);
  v2 = sub_1DD0DD8FC();
  *(v0 + 280) = OUTLINED_FUNCTION_92(v2, qword_1EDE57E00);
  v3 = v1;
  v4 = sub_1DD0DD8EC();
  LOBYTE(v1) = sub_1DD0DE6DC();

  if (os_log_type_enabled(v4, v1))
  {
    v5 = *(v0 + 184);
    v6 = OUTLINED_FUNCTION_151();
    v25 = swift_slowAlloc();
    *v6 = 136315138;
    v7 = sub_1DCCC331C(v5);
    if (v8)
    {
      v9 = v8;
    }

    else
    {
      v7 = 0;
      v9 = 0xE000000000000000;
    }

    v10 = sub_1DCB10E9C(v7, v9, &v25);

    *(v6 + 4) = v10;
    OUTLINED_FUNCTION_36_0();
    _os_log_impl(v11, v12, v13, v14, v15, 0xCu);
    OUTLINED_FUNCTION_60_0();
    OUTLINED_FUNCTION_62();
  }

  v16 = *(v0 + 304);
  v18 = *(v0 + 264);
  v17 = *(v0 + 272);
  v19 = *(v0 + 248);
  *(v0 + 16) = *(v0 + 232);
  *(v0 + 32) = v19;
  *(v0 + 48) = v18;
  *(v0 + 56) = v16;
  *(v0 + 64) = v17;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 288) = v20;
  *v20 = v21;
  v20[1] = sub_1DD055E1C;
  v22 = *(v0 + 184);
  v23 = *(v0 + 192);

  return sub_1DD057B90(v0 + 112, v22, v23, v0 + 16);
}

uint64_t sub_1DD055E1C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 296) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1DD055F14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(v6 + 144))
  {
    v7 = *(v6 + 128);
    *(v6 + 72) = *(v6 + 112);
    *(v6 + 88) = v7;
    *(v6 + 104) = *(v6 + 144);
    v8 = sub_1DD0DD8EC();
    sub_1DD0DE6DC();
    OUTLINED_FUNCTION_8_5();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_46(v10);
      _os_log_impl(&dword_1DCAFC000, v8, v4, "UnsupportedUnsetRelationshipFlow received an intent prompt answer. Transitioning to complete.", v5, 2u);
      OUTLINED_FUNCTION_62();
    }

    v11 = *(v6 + 224);
    v12 = *(v6 + 208);

    v15 = type metadata accessor for IntentPromptAnswer(0, v12, v13, v14);
    (*(*(v15 - 8) + 16))(v11, v6 + 72, v15);
    *(v11 + 40) = 0;
    OUTLINED_FUNCTION_20();
    swift_storeEnumTagMultiPayload();
    sub_1DD053B3C(v11);
  }

  type metadata accessor for IntentPromptAnswer(255, *(v6 + 208), a3, a4);
  OUTLINED_FUNCTION_76_1();
  sub_1DD0DE97C();
  OUTLINED_FUNCTION_13_1();
  (*(v16 + 8))(v6 + 112);
  v17 = sub_1DD0DD8EC();
  sub_1DD0DE6DC();
  OUTLINED_FUNCTION_8_5();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v19);
    _os_log_impl(&dword_1DCAFC000, v17, v4, "UnsupportedUnsetRelationshipFlow no intent prompt answer present. Transitioning to unanswered.", v5, 2u);
    OUTLINED_FUNCTION_62();
  }

  v20 = *(v6 + 224);

  OUTLINED_FUNCTION_11_77(1);
  swift_storeEnumTagMultiPayload();
  sub_1DD053B3C(v20);
}

void sub_1DD056128()
{
  OUTLINED_FUNCTION_41();
  v14 = v0;
  v1 = *(v0 + 296);
  v2 = v1;
  v3 = sub_1DD0DD8EC();
  v4 = sub_1DD0DE6EC();

  if (os_log_type_enabled(v3, v4))
  {
    OUTLINED_FUNCTION_151();
    v13 = OUTLINED_FUNCTION_52_0();
    *v1 = 136315138;
    swift_getErrorValue();
    v5 = sub_1DD0DF18C();
    v7 = sub_1DCB10E9C(v5, v6, &v13);

    *(v1 + 1) = v7;
    OUTLINED_FUNCTION_88(&dword_1DCAFC000, v8, v9, "UnsupportedUnsetRelationshipFlow received an error while trying to apply the resolved person to the intent: %s");
    OUTLINED_FUNCTION_60_0();
    OUTLINED_FUNCTION_80();
  }

  v10 = *(v0 + 296);
  v11 = *(v0 + 224);
  *v11 = v10;
  *(v11 + 8) = 0;
  swift_storeEnumTagMultiPayload();
  v12 = v10;
  sub_1DD053B3C(v11);
}

unint64_t sub_1DD056284(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1, v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6);
  v7 = 0x6C6C65636E61632ELL;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v7 = 0xD000000000000011;
      v8 = *(v6 + 1);

      type metadata accessor for ParameterResolutionRecord(255, *(a1 + 16), v9, v10);
      type metadata accessor for RelationshipLabel(255);
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      sub_1DCF13094(&v6[*(TupleTypeMetadata2 + 48)]);
      break;
    case 2u:
      v12 = *(v6 + 1);

      type metadata accessor for ParameterResolutionRecord(255, *(a1 + 16), v13, v14);
      type metadata accessor for RelationshipLabel(255);
      sub_1DD031750();
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      v16 = *(TupleTypeMetadata3 + 48);

      sub_1DCF13094(&v6[v16]);
      v7 = 0xD000000000000015;
      break;
    case 3u:
      (*(v4 + 8))(v6, a1);
      v7 = 0x74656C706D6F632ELL;
      break;
    case 4u:
      (*(v4 + 8))(v6, a1);
      v7 = 0x726F7272652ELL;
      break;
    case 5u:
      return v7;
    default:
      (*(v4 + 8))(v6, a1);
      v7 = 0x646574726174732ELL;
      break;
  }

  return v7;
}

char *sub_1DD05653C()
{
  v1 = *v0;

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 4);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 9);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 14);
  v2 = *(*v0 + 136);
  type metadata accessor for SiriKitUnsupportedUnsetRelationshipFlow.State(0, *(v1 + 80), *(v1 + 88), v3);
  OUTLINED_FUNCTION_13_1();
  (*(v4 + 8))(&v0[v2]);
  return v0;
}

uint64_t sub_1DD0565F8()
{
  sub_1DD05653C();

  return swift_deallocClassInstance();
}

uint64_t sub_1DD0566A4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AD3C;

  return sub_1DD054394();
}

void *sub_1DD056764()
{
  OUTLINED_FUNCTION_58_1();
  v4 = *(*v1 + 80);
  v1[2] = sub_1DD056808(v5, v4, v2, v0);
  v1[3] = v6;
  v7 = sub_1DD056A90(v3, v4, v2, v0);
  v9 = v8;
  OUTLINED_FUNCTION_112();
  v10 = OUTLINED_FUNCTION_19();
  v11(v10);
  v1[4] = v7;
  v1[5] = v9;
  return v1;
}

void *sub_1DD056808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1, a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  (*(v7 + 32))(&v11[v10], v9, a3);
  return &unk_1DD10CAD0;
}

uint64_t sub_1DD056934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a2 + 32);
  v11 = *(a2 + 40);
  v12 = *(a2 + 48);
  v13 = *(a2 + 16);
  *(v6 + 16) = *a2;
  *(v6 + 32) = v13;
  *(v6 + 48) = v10;
  *(v6 + 56) = v11;
  *(v6 + 64) = v12;
  v16 = (*(a6 + 40) + **(a6 + 40));
  v14 = swift_task_alloc();
  *(v6 + 72) = v14;
  *v14 = v6;
  v14[1] = sub_1DCDBA750;

  return v16(a1, v6 + 16, a5, a6);
}

void *sub_1DD056A90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1, a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  (*(v7 + 32))(&v11[v10], v9, a3);
  return &unk_1DD10CAC0;
}

uint64_t sub_1DD056BBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = *(a4 + 32);
  v15 = *(a4 + 40);
  v16 = *(a4 + 48);
  v17 = *(a4 + 16);
  *(v8 + 16) = *a4;
  *(v8 + 32) = v17;
  *(v8 + 48) = v14;
  *(v8 + 56) = v15;
  *(v8 + 64) = v16;
  v20 = (*(a8 + 48) + **(a8 + 48));
  v18 = swift_task_alloc();
  *(v8 + 72) = v18;
  *v18 = v8;
  v18[1] = sub_1DCDBA4C4;

  return v20(a1, a2, a3, v8 + 16, a7, a8);
}

void sub_1DD056D30()
{
  OUTLINED_FUNCTION_50();
  v2 = v1;
  v4 = v3;
  v5 = *v0;
  v20 = v1;
  v21 = v5;
  OUTLINED_FUNCTION_0_1();
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v10, v11);
  v12 = OUTLINED_FUNCTION_90_0();
  v13(v12);
  v14 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v15 = swift_allocObject();
  v21 = *(v21 + 80);
  *(v15 + 2) = v21;
  *(v15 + 3) = v4;
  *(v15 + 4) = v2;
  v16 = *(v7 + 32);
  v16(&v15[v14], &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  v0[2] = &unk_1DD10CA88;
  v0[3] = v15;
  v17 = OUTLINED_FUNCTION_90_0();
  (v16)(v17);
  v18 = swift_allocObject();
  v19 = v20;
  *(v18 + 2) = v21;
  *(v18 + 3) = v4;
  *(v18 + 4) = v19;
  v16(&v18[v14], &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  v0[4] = &unk_1DD10CA98;
  v0[5] = v18;
  OUTLINED_FUNCTION_49();
}

uint64_t sub_1DD056ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 96) = a5;
  *(v6 + 104) = a6;
  *(v6 + 80) = a3;
  *(v6 + 88) = a4;
  v7 = *(a2 + 16);
  *(v6 + 16) = *a2;
  *(v6 + 32) = v7;
  *(v6 + 48) = *(a2 + 32);
  *(v6 + 64) = *(a2 + 48);
  *(v6 + 72) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DD056F10, 0, 0);
}

uint64_t sub_1DD056F10()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 104);
  v2 = *(v0 + 80);
  v3 = swift_task_alloc();
  *(v0 + 112) = v3;
  *(v3 + 16) = *(v0 + 88);
  *(v3 + 32) = v1;
  *(v3 + 40) = v2;
  *(v3 + 48) = v0 + 16;
  v4 = swift_task_alloc();
  *(v0 + 120) = v4;
  type metadata accessor for RelationshipLabel(0);
  *v4 = v0;
  v4[1] = sub_1DD056FF4;
  OUTLINED_FUNCTION_7_87();

  return MEMORY[0x1EEE6DE38](v5);
}

uint64_t sub_1DD056FF4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v3 + 128) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v6, v7, v8);
  }

  else
  {

    OUTLINED_FUNCTION_29();

    return v9();
  }
}

uint64_t sub_1DD057118(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26 = a5;
  v27 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCACAD8, &qword_1DD10CAA8);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v22 - v12;
  v14 = a3[2];
  v24 = a3[3];
  v25 = v14;
  v15 = a3[4];
  if (a3[5])
  {
    v15 = 0;
  }

  v23 = v15;
  v16 = *a3;
  v17 = a3[1];
  v18 = a3[6];
  (*(v10 + 16))(v13, a1, v9);
  v19 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v20 = swift_allocObject();
  (*(v10 + 32))(v20 + v19, v13, v9);
  (*(a6 + 40))(v16, v17, v25, v24, v23, v18, sub_1DD059884, v20, v26, a6);
}

uint64_t sub_1DD0572D4(uint64_t a1)
{
  v2 = type metadata accessor for RelationshipLabel(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCA33E8, &qword_1DD10CAB0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = (v11 - v8);
  sub_1DD0598FC(a1, v11 - v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11[1] = *v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCACAD8, &qword_1DD10CAA8);
    return sub_1DD0DE45C();
  }

  else
  {
    sub_1DCCC3844(v9, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCACAD8, &qword_1DD10CAA8);
    return sub_1DD0DE46C();
  }
}

uint64_t sub_1DD057420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 112) = a7;
  *(v8 + 120) = a8;
  *(v8 + 96) = a5;
  *(v8 + 104) = a6;
  *(v8 + 80) = a2;
  *(v8 + 88) = a3;
  v9 = *(a4 + 16);
  *(v8 + 16) = *a4;
  *(v8 + 32) = v9;
  *(v8 + 48) = *(a4 + 32);
  *(v8 + 64) = *(a4 + 48);
  *(v8 + 72) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DD057460, 0, 0);
}

uint64_t sub_1DD057460()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 96);
  v3 = swift_task_alloc();
  *(v0 + 128) = v3;
  v10 = *(v0 + 104);
  v4 = *(v0 + 80);
  *(v3 + 16) = v10;
  *(v3 + 32) = v1;
  *(v3 + 40) = v2;
  *(v3 + 48) = v0 + 16;
  *(v3 + 56) = vextq_s8(v4, v4, 8uLL);
  v5 = swift_task_alloc();
  *(v0 + 136) = v5;
  type metadata accessor for IntentPromptAnswer(255, v10, v6, v7);
  OUTLINED_FUNCTION_76_1();
  sub_1DD0DE97C();
  *v5 = v0;
  v5[1] = sub_1DD057570;
  OUTLINED_FUNCTION_7_87();

  return MEMORY[0x1EEE6DE38](v8);
}

uint64_t sub_1DD057570()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v3 + 144) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v6, v7, v8);
  }

  else
  {

    OUTLINED_FUNCTION_29();

    return v9();
  }
}

uint64_t sub_1DD057694(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v30 = a7;
  v31 = a4;
  v32 = a2;
  v33 = a5;
  type metadata accessor for IntentPromptAnswer(255, a6, a3, a4);
  sub_1DD0DE97C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v12 = sub_1DD0DE47C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v26 - v15;
  v17 = a3[2];
  v28 = a3[3];
  v29 = v17;
  v18 = a3[4];
  if (a3[5])
  {
    v18 = 0;
  }

  v27 = v18;
  v20 = *a3;
  v19 = a3[1];
  v21 = a3[6];
  (*(v13 + 16))(v16, a1, v12);
  v22 = (*(v13 + 80) + 40) & ~*(v13 + 80);
  v23 = swift_allocObject();
  *(v23 + 2) = a6;
  v24 = v30;
  *(v23 + 3) = v30;
  *(v23 + 4) = a8;
  (*(v13 + 32))(&v23[v22], v16, v12);
  (*(a8 + 48))(v20, v19, v29, v28, v27, v21, v31, v33, sub_1DD0597A4, v23, v24, a8);
}

uint64_t sub_1DD057890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for IntentPromptAnswer(255, a3, a3, a4);
  sub_1DD0DE97C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v5 = sub_1DD0DE47C();
  return sub_1DD05EBE4(a1, v5);
}

uint64_t sub_1DD057910(uint64_t a1, uint64_t a2)
{
  *(v3 + 72) = a1;
  *(v3 + 80) = v2;
  *(v3 + 88) = *a2;
  *(v3 + 104) = *(a2 + 16);
  *(v3 + 112) = *(a2 + 24);
  *(v3 + 152) = *(a2 + 40);
  *(v3 + 128) = *(a2 + 48);
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DD05794C()
{
  OUTLINED_FUNCTION_39();
  *(v0 + 16) = *(v0 + 88);
  OUTLINED_FUNCTION_37_38(*(v0 + 104));
  v6 = (v1 + *v1);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 136) = v2;
  *v2 = v3;
  v2[1] = sub_1DD057A58;
  v4 = *(v0 + 72);

  return v6(v4, v0 + 16);
}

uint64_t sub_1DD057A58()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 144) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_29();

    return v10();
  }
}

uint64_t sub_1DD057B90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 88) = a3;
  *(v5 + 96) = v4;
  *(v5 + 72) = a1;
  *(v5 + 80) = a2;
  *(v5 + 104) = *a4;
  *(v5 + 120) = *(a4 + 16);
  *(v5 + 128) = *(a4 + 24);
  *(v5 + 168) = *(a4 + 40);
  *(v5 + 144) = *(a4 + 48);
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DD057BD0()
{
  OUTLINED_FUNCTION_39();
  *(v0 + 16) = *(v0 + 104);
  OUTLINED_FUNCTION_37_38(*(v0 + 120));
  v8 = (v1 + *v1);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 152) = v2;
  *v2 = v3;
  v2[1] = sub_1DD057CE0;
  v4 = *(v0 + 80);
  v5 = *(v0 + 88);
  v6 = *(v0 + 72);

  return v8(v6, v4, v5, v0 + 16);
}

uint64_t sub_1DD057CE0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 160) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_29();

    return v10();
  }
}

uint64_t sub_1DD057DF4()
{
  sub_1DCDDAD28();
  OUTLINED_FUNCTION_18_3();

  return swift_deallocClassInstance();
}

uint64_t sub_1DD057E38(uint64_t a1)
{
  v5 = "8";
  result = type metadata accessor for RelationshipLabel(319);
  if (v2 <= 0x3F)
  {
    swift_getTupleTypeLayout2();
    v6 = &v4;
    swift_getTupleTypeLayout3();
    v7 = &v3;
    v8 = &unk_1DD10C9C8;
    v9 = &unk_1DD10C9E0;
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

char *sub_1DD057F28(char *a1, char **a2, uint64_t a3)
{
  if ((*(*(a3 - 8) + 80) & 0x20000) != 0)
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  v6 = *(a3 - 8);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v9 = a2[1];
      *a1 = *a2;
      *(a1 + 1) = v9;
      v10 = a2[3];
      *(a1 + 2) = a2[2];
      *(a1 + 3) = v10;
      *(a1 + 4) = a2[4];
      a1[40] = *(a2 + 40);
      *(a1 + 6) = a2[6];
      sub_1DD0DCF8C();
    case 1u:
      v16 = a2[1];
      *a1 = *a2;
      *(a1 + 1) = v16;
      v17 = a2[3];
      *(a1 + 2) = a2[2];
      *(a1 + 3) = v17;
      *(a1 + 4) = a2[4];
      a1[40] = *(a2 + 40);
      *(a1 + 6) = a2[6];
      type metadata accessor for ParameterResolutionRecord(255, *(a3 + 16), v7, v8);
      type metadata accessor for RelationshipLabel(255);
      sub_1DD0DCF8C();
    case 2u:
      v13 = a2[1];
      *a1 = *a2;
      *(a1 + 1) = v13;
      v14 = a2[3];
      *(a1 + 2) = a2[2];
      *(a1 + 3) = v14;
      *(a1 + 4) = a2[4];
      a1[40] = *(a2 + 40);
      *(a1 + 6) = a2[6];
      type metadata accessor for ParameterResolutionRecord(255, *(a3 + 16), v7, v8);
      type metadata accessor for RelationshipLabel(255);
      sub_1DD031750();
      sub_1DD0DCF8C();
    case 3u:
      if (*(a2 + 40) == 1)
      {
        v20 = *a2;
        v21 = *a2;
        *a1 = v20;
        a1[8] = *(a2 + 8);
        a1[40] = 1;
      }

      else if (*(a2 + 40))
      {
        v22 = *(a2 + 1);
        *a1 = *a2;
        *(a1 + 1) = v22;
        *(a1 + 25) = *(a2 + 25);
      }

      else
      {
        v15 = a2[3];
        if (v15)
        {
          *(a1 + 3) = v15;
          (**(v15 - 1))(a1, a2);
        }

        else
        {
          v23 = *(a2 + 1);
          *a1 = *a2;
          *(a1 + 1) = v23;
        }

        v24 = a2[4];
        *(a1 + 4) = v24;
        a1[40] = 0;
        v25 = v24;
      }

      goto LABEL_19;
    case 4u:
      v11 = *a2;
      v12 = *a2;
      *a1 = v11;
      a1[8] = *(a2 + 8);
LABEL_19:
      swift_storeEnumTagMultiPayload();
      result = a1;
      break;
    default:
      v18 = *(v6 + 64);

      result = memcpy(a1, a2, v18);
      break;
  }

  return result;
}

void sub_1DD0583BC(uint64_t a1, uint64_t a2)
{
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:

      v4 = *(a1 + 48);
      goto LABEL_14;
    case 1u:

      type metadata accessor for ParameterResolutionRecord(255, *(a2 + 16), v12, v13);
      type metadata accessor for RelationshipLabel(255);
      v14 = a1 + *(swift_getTupleTypeMetadata2() + 48);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

      if (EnumCaseMultiPayload != 1)
      {
        v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
        v17 = sub_1DD0DB0FC();
        v18 = *(*(v17 - 8) + 8);

        v18(v14 + v16, v17);
      }

      return;
    case 2u:

      type metadata accessor for ParameterResolutionRecord(255, *(a2 + 16), v5, v6);
      type metadata accessor for RelationshipLabel(255);
      sub_1DD031750();
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      v8 = a1 + *(TupleTypeMetadata3 + 48);
      v9 = swift_getEnumCaseMultiPayload();

      if (v9 != 1)
      {
        v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
        v11 = sub_1DD0DB0FC();
        (*(*(v11 - 8) + 8))(v8 + v10, v11);
      }

      v4 = *(a1 + *(TupleTypeMetadata3 + 64));
      goto LABEL_14;
    case 3u:
      if (*(a1 + 40) == 1)
      {
        goto LABEL_8;
      }

      if (*(a1 + 40))
      {
        return;
      }

      if (*(a1 + 24))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(a1);
      }

      v4 = *(a1 + 32);
LABEL_14:

LABEL_10:

      return;
    case 4u:
LABEL_8:
      v4 = *a1;

      goto LABEL_10;
    default:
      return;
  }
}

void *sub_1DD058670(char *a1, uint64_t *a2, uint64_t a3)
{
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v8 = a2[1];
      *a1 = *a2;
      *(a1 + 1) = v8;
      v9 = a2[3];
      *(a1 + 2) = a2[2];
      *(a1 + 3) = v9;
      *(a1 + 4) = a2[4];
      a1[40] = *(a2 + 40);
      *(a1 + 6) = a2[6];
      sub_1DD0DCF8C();
    case 1u:
      v15 = a2[1];
      *a1 = *a2;
      *(a1 + 1) = v15;
      v16 = a2[3];
      *(a1 + 2) = a2[2];
      *(a1 + 3) = v16;
      *(a1 + 4) = a2[4];
      a1[40] = *(a2 + 40);
      *(a1 + 6) = a2[6];
      type metadata accessor for ParameterResolutionRecord(255, *(a3 + 16), v6, v7);
      type metadata accessor for RelationshipLabel(255);
      sub_1DD0DCF8C();
    case 2u:
      v12 = a2[1];
      *a1 = *a2;
      *(a1 + 1) = v12;
      v13 = a2[3];
      *(a1 + 2) = a2[2];
      *(a1 + 3) = v13;
      *(a1 + 4) = a2[4];
      a1[40] = *(a2 + 40);
      *(a1 + 6) = a2[6];
      type metadata accessor for ParameterResolutionRecord(255, *(a3 + 16), v6, v7);
      type metadata accessor for RelationshipLabel(255);
      sub_1DD031750();
      sub_1DD0DCF8C();
    case 3u:
      if (*(a2 + 40) == 1)
      {
        v19 = *a2;
        v20 = *a2;
        *a1 = v19;
        a1[8] = *(a2 + 8);
        a1[40] = 1;
      }

      else if (*(a2 + 40))
      {
        v21 = *(a2 + 1);
        *a1 = *a2;
        *(a1 + 1) = v21;
        *(a1 + 25) = *(a2 + 25);
      }

      else
      {
        v14 = a2[3];
        if (v14)
        {
          *(a1 + 3) = v14;
          (**(v14 - 8))(a1, a2);
        }

        else
        {
          v22 = *(a2 + 1);
          *a1 = *a2;
          *(a1 + 1) = v22;
        }

        v23 = a2[4];
        *(a1 + 4) = v23;
        a1[40] = 0;
        v24 = v23;
      }

      goto LABEL_17;
    case 4u:
      v10 = *a2;
      v11 = *a2;
      *a1 = v10;
      a1[8] = *(a2 + 8);
LABEL_17:
      swift_storeEnumTagMultiPayload();
      result = a1;
      break;
    default:
      v17 = *(*(a3 - 8) + 64);

      result = memcpy(a1, a2, v17);
      break;
  }

  return result;
}

char *sub_1DD058AC4(char *a1, char *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v6 = *(a3 - 8);
    (*(v6 + 8))(a1, a3);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        *a1 = *a2;
        *(a1 + 1) = *(a2 + 1);
        *(a1 + 2) = *(a2 + 2);
        *(a1 + 3) = *(a2 + 3);
        v9 = *(a2 + 4);
        a1[40] = a2[40];
        *(a1 + 4) = v9;
        *(a1 + 6) = *(a2 + 6);
        sub_1DD0DCF8C();
      case 1u:
        *a1 = *a2;
        *(a1 + 1) = *(a2 + 1);
        *(a1 + 2) = *(a2 + 2);
        *(a1 + 3) = *(a2 + 3);
        v14 = *(a2 + 4);
        a1[40] = a2[40];
        *(a1 + 4) = v14;
        *(a1 + 6) = *(a2 + 6);
        type metadata accessor for ParameterResolutionRecord(255, *(a3 + 16), v7, v8);
        type metadata accessor for RelationshipLabel(255);
        sub_1DD0DCF8C();
      case 2u:
        *a1 = *a2;
        *(a1 + 1) = *(a2 + 1);
        *(a1 + 2) = *(a2 + 2);
        *(a1 + 3) = *(a2 + 3);
        v12 = *(a2 + 4);
        a1[40] = a2[40];
        *(a1 + 4) = v12;
        *(a1 + 6) = *(a2 + 6);
        type metadata accessor for ParameterResolutionRecord(255, *(a3 + 16), v7, v8);
        type metadata accessor for RelationshipLabel(255);
        sub_1DD031750();
        sub_1DD0DCF8C();
      case 3u:
        if (a2[40] == 1)
        {
          v17 = *a2;
          v18 = *a2;
          *a1 = v17;
          a1[8] = a2[8];
          a1[40] = 1;
        }

        else if (a2[40])
        {
          v19 = *a2;
          v20 = *(a2 + 1);
          *(a1 + 25) = *(a2 + 25);
          *a1 = v19;
          *(a1 + 1) = v20;
        }

        else
        {
          v13 = *(a2 + 3);
          if (v13)
          {
            *(a1 + 3) = v13;
            (**(v13 - 8))(a1, a2);
          }

          else
          {
            v21 = *(a2 + 1);
            *a1 = *a2;
            *(a1 + 1) = v21;
          }

          v22 = *(a2 + 4);
          *(a1 + 4) = v22;
          a1[40] = 0;
          v23 = v22;
        }

        goto LABEL_18;
      case 4u:
        v10 = *a2;
        v11 = *a2;
        *a1 = v10;
        a1[8] = a2[8];
LABEL_18:
        swift_storeEnumTagMultiPayload();
        return a1;
      default:
        v15 = *(v6 + 64);

        return memcpy(a1, a2, v15);
    }
  }

  return a1;
}

_OWORD *sub_1DD058FAC(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v14 = a2[1];
    *a1 = *a2;
    a1[1] = v14;
    a1[2] = a2[2];
    *(a1 + 6) = *(a2 + 6);
    type metadata accessor for ParameterResolutionRecord(255, *(a3 + 16), v7, v8);
    v15 = type metadata accessor for RelationshipLabel(255);
    sub_1DD031750();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v17 = *(TupleTypeMetadata3 + 48);
    v18 = (a1 + v17);
    v19 = (a2 + v17);
    if (swift_getEnumCaseMultiPayload())
    {
      memcpy(v18, v19, *(*(v15 - 8) + 64));
    }

    else
    {
      *v18 = *v19;
      v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
      v25 = sub_1DD0DB0FC();
      (*(*(v25 - 8) + 32))(v18 + v24, v19 + v24, v25);
      swift_storeEnumTagMultiPayload();
    }

    *(a1 + *(TupleTypeMetadata3 + 64)) = *(a2 + *(TupleTypeMetadata3 + 64));
    goto LABEL_14;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v9 = a2[1];
    *a1 = *a2;
    a1[1] = v9;
    a1[2] = a2[2];
    *(a1 + 6) = *(a2 + 6);
    type metadata accessor for ParameterResolutionRecord(255, *(a3 + 16), v7, v8);
    v10 = type metadata accessor for RelationshipLabel(255);
    v11 = *(swift_getTupleTypeMetadata2() + 48);
    v12 = (a1 + v11);
    v13 = (a2 + v11);
    if (swift_getEnumCaseMultiPayload())
    {
      memcpy(v12, v13, *(*(v10 - 8) + 64));
    }

    else
    {
      *v12 = *v13;
      v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
      v23 = sub_1DD0DB0FC();
      (*(*(v23 - 8) + 32))(v12 + v22, v13 + v22, v23);
      swift_storeEnumTagMultiPayload();
    }

LABEL_14:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v20 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v20);
}

_OWORD *sub_1DD05927C(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  v6 = *(a3 - 8);
  (*(v6 + 8))(a1, a3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v15 = a2[1];
    *a1 = *a2;
    a1[1] = v15;
    a1[2] = a2[2];
    *(a1 + 6) = *(a2 + 6);
    type metadata accessor for ParameterResolutionRecord(255, *(a3 + 16), v8, v9);
    v16 = type metadata accessor for RelationshipLabel(255);
    sub_1DD031750();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v18 = *(TupleTypeMetadata3 + 48);
    v19 = (a1 + v18);
    v20 = (a2 + v18);
    if (swift_getEnumCaseMultiPayload())
    {
      memcpy(v19, v20, *(*(v16 - 8) + 64));
    }

    else
    {
      *v19 = *v20;
      v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
      v26 = sub_1DD0DB0FC();
      (*(*(v26 - 8) + 32))(v19 + v25, v20 + v25, v26);
      swift_storeEnumTagMultiPayload();
    }

    *(a1 + *(TupleTypeMetadata3 + 64)) = *(a2 + *(TupleTypeMetadata3 + 64));
    goto LABEL_15;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v10 = a2[1];
    *a1 = *a2;
    a1[1] = v10;
    a1[2] = a2[2];
    *(a1 + 6) = *(a2 + 6);
    type metadata accessor for ParameterResolutionRecord(255, *(a3 + 16), v8, v9);
    v11 = type metadata accessor for RelationshipLabel(255);
    v12 = *(swift_getTupleTypeMetadata2() + 48);
    v13 = (a1 + v12);
    v14 = (a2 + v12);
    if (swift_getEnumCaseMultiPayload())
    {
      memcpy(v13, v14, *(*(v11 - 8) + 64));
    }

    else
    {
      *v13 = *v14;
      v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
      v24 = sub_1DD0DB0FC();
      (*(*(v24 - 8) + 32))(v13 + v23, v14 + v23, v24);
      swift_storeEnumTagMultiPayload();
    }

LABEL_15:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v21 = *(v6 + 64);

  return memcpy(a1, a2, v21);
}

uint64_t sub_1DD0595A0(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1DD0595FC()
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_5_120();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2_117(v1);

  return sub_1DD056ED4(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1DD0596C0()
{
  OUTLINED_FUNCTION_15_69();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_10_83(v1);

  return sub_1DD057420(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1DD0597A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  type metadata accessor for IntentPromptAnswer(255, v6, a3, a4);
  sub_1DD0DE97C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v8 = sub_1DD0DE47C();
  OUTLINED_FUNCTION_20_0(v8);
  v10 = v4 + ((*(v9 + 80) + 40) & ~*(v9 + 80));

  return sub_1DD057890(a1, v10, v6, v7);
}

uint64_t sub_1DD059884(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCACAD8, &qword_1DD10CAA8);
  OUTLINED_FUNCTION_20_0(v2);

  return sub_1DD0572D4(a1);
}

uint64_t sub_1DD0598FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCA33E8, &qword_1DD10CAB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD05996C()
{
  OUTLINED_FUNCTION_15_69();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_10_83(v1);

  return sub_1DD056BBC(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1DD059A3C()
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_5_120();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2_117(v1);

  return sub_1DD056934(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1DD059B00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for SiriKitUnsupportedUnsetRelationshipFlow.State(319, *(a1 + 16), *(a1 + 24), a4);
  if (v6 <= 0x3F)
  {
    v7 = *(result - 8);
    swift_initEnumMetadataSingleCase();
    result = 0;
    *(*(a1 - 8) + 84) = *(v7 + 84);
  }

  return result;
}

char *sub_1DD059BA8(char *a1, char **a2, uint64_t a3, uint64_t a4)
{
  if ((*(*(a3 - 8) + 80) & 0x20000) != 0)
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  v6 = *(a3 + 16);
  v7 = type metadata accessor for SiriKitUnsupportedUnsetRelationshipFlow.State(0, v6, *(a3 + 24), a4);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v10 = a2[1];
      *a1 = *a2;
      *(a1 + 1) = v10;
      v11 = a2[3];
      *(a1 + 2) = a2[2];
      *(a1 + 3) = v11;
      *(a1 + 4) = a2[4];
      a1[40] = *(a2 + 40);
      *(a1 + 6) = a2[6];
      sub_1DD0DCF8C();
    case 1u:
      v17 = a2[1];
      *a1 = *a2;
      *(a1 + 1) = v17;
      v18 = a2[3];
      *(a1 + 2) = a2[2];
      *(a1 + 3) = v18;
      *(a1 + 4) = a2[4];
      a1[40] = *(a2 + 40);
      *(a1 + 6) = a2[6];
      type metadata accessor for ParameterResolutionRecord(255, v6, v8, v9);
      type metadata accessor for RelationshipLabel(255);
      sub_1DD0DCF8C();
    case 2u:
      v14 = a2[1];
      *a1 = *a2;
      *(a1 + 1) = v14;
      v15 = a2[3];
      *(a1 + 2) = a2[2];
      *(a1 + 3) = v15;
      *(a1 + 4) = a2[4];
      a1[40] = *(a2 + 40);
      *(a1 + 6) = a2[6];
      type metadata accessor for ParameterResolutionRecord(255, v6, v8, v9);
      type metadata accessor for RelationshipLabel(255);
      sub_1DD031750();
      sub_1DD0DCF8C();
    case 3u:
      if (*(a2 + 40) == 1)
      {
        v21 = *a2;
        v22 = *a2;
        *a1 = v21;
        a1[8] = *(a2 + 8);
        a1[40] = 1;
      }

      else if (*(a2 + 40))
      {
        v23 = *(a2 + 1);
        *a1 = *a2;
        *(a1 + 1) = v23;
        *(a1 + 25) = *(a2 + 25);
      }

      else
      {
        v16 = a2[3];
        if (v16)
        {
          *(a1 + 3) = v16;
          (**(v16 - 1))(a1, a2);
        }

        else
        {
          v24 = *(a2 + 1);
          *a1 = *a2;
          *(a1 + 1) = v24;
        }

        v25 = a2[4];
        *(a1 + 4) = v25;
        a1[40] = 0;
        v26 = v25;
      }

      goto LABEL_19;
    case 4u:
      v12 = *a2;
      v13 = *a2;
      *a1 = v12;
      a1[8] = *(a2 + 8);
LABEL_19:
      swift_storeEnumTagMultiPayload();
      result = a1;
      break;
    default:
      v19 = *(*(v7 - 8) + 64);

      result = memcpy(a1, a2, v19);
      break;
  }

  return result;
}

void sub_1DD05A058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a2 + 16);
  type metadata accessor for SiriKitUnsupportedUnsetRelationshipFlow.State(0, v5, *(a2 + 24), a4);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:

      v6 = *(a1 + 48);
      goto LABEL_14;
    case 1u:

      type metadata accessor for ParameterResolutionRecord(255, v5, v14, v15);
      type metadata accessor for RelationshipLabel(255);
      v16 = a1 + *(swift_getTupleTypeMetadata2() + 48);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

      if (EnumCaseMultiPayload != 1)
      {
        v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
        v19 = sub_1DD0DB0FC();
        v20 = *(*(v19 - 8) + 8);

        v20(v16 + v18, v19);
      }

      return;
    case 2u:

      type metadata accessor for ParameterResolutionRecord(255, v5, v7, v8);
      type metadata accessor for RelationshipLabel(255);
      sub_1DD031750();
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      v10 = a1 + *(TupleTypeMetadata3 + 48);
      v11 = swift_getEnumCaseMultiPayload();

      if (v11 != 1)
      {
        v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
        v13 = sub_1DD0DB0FC();
        (*(*(v13 - 8) + 8))(v10 + v12, v13);
      }

      v6 = *(a1 + *(TupleTypeMetadata3 + 64));
      goto LABEL_14;
    case 3u:
      if (*(a1 + 40) == 1)
      {
        goto LABEL_8;
      }

      if (*(a1 + 40))
      {
        return;
      }

      if (*(a1 + 24))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(a1);
      }

      v6 = *(a1 + 32);
LABEL_14:

LABEL_10:

      return;
    case 4u:
LABEL_8:
      v6 = *a1;

      goto LABEL_10;
    default:
      return;
  }
}

void *sub_1DD05A320(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + 16);
  v7 = type metadata accessor for SiriKitUnsupportedUnsetRelationshipFlow.State(0, v6, *(a3 + 24), a4);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v10 = a2[1];
      *a1 = *a2;
      *(a1 + 1) = v10;
      v11 = a2[3];
      *(a1 + 2) = a2[2];
      *(a1 + 3) = v11;
      *(a1 + 4) = a2[4];
      a1[40] = *(a2 + 40);
      *(a1 + 6) = a2[6];
      sub_1DD0DCF8C();
    case 1u:
      v17 = a2[1];
      *a1 = *a2;
      *(a1 + 1) = v17;
      v18 = a2[3];
      *(a1 + 2) = a2[2];
      *(a1 + 3) = v18;
      *(a1 + 4) = a2[4];
      a1[40] = *(a2 + 40);
      *(a1 + 6) = a2[6];
      type metadata accessor for ParameterResolutionRecord(255, v6, v8, v9);
      type metadata accessor for RelationshipLabel(255);
      sub_1DD0DCF8C();
    case 2u:
      v14 = a2[1];
      *a1 = *a2;
      *(a1 + 1) = v14;
      v15 = a2[3];
      *(a1 + 2) = a2[2];
      *(a1 + 3) = v15;
      *(a1 + 4) = a2[4];
      a1[40] = *(a2 + 40);
      *(a1 + 6) = a2[6];
      type metadata accessor for ParameterResolutionRecord(255, v6, v8, v9);
      type metadata accessor for RelationshipLabel(255);
      sub_1DD031750();
      sub_1DD0DCF8C();
    case 3u:
      if (*(a2 + 40) == 1)
      {
        v21 = *a2;
        v22 = *a2;
        *a1 = v21;
        a1[8] = *(a2 + 8);
        a1[40] = 1;
      }

      else if (*(a2 + 40))
      {
        v23 = *(a2 + 1);
        *a1 = *a2;
        *(a1 + 1) = v23;
        *(a1 + 25) = *(a2 + 25);
      }

      else
      {
        v16 = a2[3];
        if (v16)
        {
          *(a1 + 3) = v16;
          (**(v16 - 8))(a1, a2);
        }

        else
        {
          v24 = *(a2 + 1);
          *a1 = *a2;
          *(a1 + 1) = v24;
        }

        v25 = a2[4];
        *(a1 + 4) = v25;
        a1[40] = 0;
        v26 = v25;
      }

      goto LABEL_17;
    case 4u:
      v12 = *a2;
      v13 = *a2;
      *a1 = v12;
      a1[8] = *(a2 + 8);
LABEL_17:
      swift_storeEnumTagMultiPayload();
      result = a1;
      break;
    default:
      v19 = *(*(v7 - 8) + 64);

      result = memcpy(a1, a2, v19);
      break;
  }

  return result;
}

char *sub_1DD05A784(char *a1, char *a2, uint64_t a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = *(a3 + 16);
    v7 = type metadata accessor for SiriKitUnsupportedUnsetRelationshipFlow.State(0, v6, *(a3 + 24), a4);
    v8 = *(v7 - 8);
    (*(v8 + 8))(a1, v7);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        *a1 = *a2;
        *(a1 + 1) = *(a2 + 1);
        *(a1 + 2) = *(a2 + 2);
        *(a1 + 3) = *(a2 + 3);
        v11 = *(a2 + 4);
        a1[40] = a2[40];
        *(a1 + 4) = v11;
        *(a1 + 6) = *(a2 + 6);
        sub_1DD0DCF8C();
      case 1u:
        *a1 = *a2;
        *(a1 + 1) = *(a2 + 1);
        *(a1 + 2) = *(a2 + 2);
        *(a1 + 3) = *(a2 + 3);
        v16 = *(a2 + 4);
        a1[40] = a2[40];
        *(a1 + 4) = v16;
        *(a1 + 6) = *(a2 + 6);
        type metadata accessor for ParameterResolutionRecord(255, v6, v9, v10);
        type metadata accessor for RelationshipLabel(255);
        sub_1DD0DCF8C();
      case 2u:
        *a1 = *a2;
        *(a1 + 1) = *(a2 + 1);
        *(a1 + 2) = *(a2 + 2);
        *(a1 + 3) = *(a2 + 3);
        v14 = *(a2 + 4);
        a1[40] = a2[40];
        *(a1 + 4) = v14;
        *(a1 + 6) = *(a2 + 6);
        type metadata accessor for ParameterResolutionRecord(255, v6, v9, v10);
        type metadata accessor for RelationshipLabel(255);
        sub_1DD031750();
        sub_1DD0DCF8C();
      case 3u:
        if (a2[40] == 1)
        {
          v19 = *a2;
          v20 = *a2;
          *a1 = v19;
          a1[8] = a2[8];
          a1[40] = 1;
        }

        else if (a2[40])
        {
          v21 = *a2;
          v22 = *(a2 + 1);
          *(a1 + 25) = *(a2 + 25);
          *a1 = v21;
          *(a1 + 1) = v22;
        }

        else
        {
          v15 = *(a2 + 3);
          if (v15)
          {
            *(a1 + 3) = v15;
            (**(v15 - 8))(a1, a2);
          }

          else
          {
            v23 = *(a2 + 1);
            *a1 = *a2;
            *(a1 + 1) = v23;
          }

          v24 = *(a2 + 4);
          *(a1 + 4) = v24;
          a1[40] = 0;
          v25 = v24;
        }

        goto LABEL_18;
      case 4u:
        v12 = *a2;
        v13 = *a2;
        *a1 = v12;
        a1[8] = a2[8];
LABEL_18:
        swift_storeEnumTagMultiPayload();
        return a1;
      default:
        v17 = *(v8 + 64);

        return memcpy(a1, a2, v17);
    }
  }

  return a1;
}

_OWORD *sub_1DD05AC64(_OWORD *a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + 16);
  v7 = type metadata accessor for SiriKitUnsupportedUnsetRelationshipFlow.State(0, v6, *(a3 + 24), a4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v16 = a2[1];
    *a1 = *a2;
    a1[1] = v16;
    a1[2] = a2[2];
    *(a1 + 6) = *(a2 + 6);
    type metadata accessor for ParameterResolutionRecord(255, v6, v9, v10);
    v17 = type metadata accessor for RelationshipLabel(255);
    sub_1DD031750();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v19 = *(TupleTypeMetadata3 + 48);
    v20 = (a1 + v19);
    v21 = (a2 + v19);
    if (swift_getEnumCaseMultiPayload())
    {
      memcpy(v20, v21, *(*(v17 - 8) + 64));
    }

    else
    {
      *v20 = *v21;
      v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
      v27 = sub_1DD0DB0FC();
      (*(*(v27 - 8) + 32))(v20 + v26, v21 + v26, v27);
      swift_storeEnumTagMultiPayload();
    }

    *(a1 + *(TupleTypeMetadata3 + 64)) = *(a2 + *(TupleTypeMetadata3 + 64));
    goto LABEL_14;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v11 = a2[1];
    *a1 = *a2;
    a1[1] = v11;
    a1[2] = a2[2];
    *(a1 + 6) = *(a2 + 6);
    type metadata accessor for ParameterResolutionRecord(255, v6, v9, v10);
    v12 = type metadata accessor for RelationshipLabel(255);
    v13 = *(swift_getTupleTypeMetadata2() + 48);
    v14 = (a1 + v13);
    v15 = (a2 + v13);
    if (swift_getEnumCaseMultiPayload())
    {
      memcpy(v14, v15, *(*(v12 - 8) + 64));
    }

    else
    {
      *v14 = *v15;
      v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
      v25 = sub_1DD0DB0FC();
      (*(*(v25 - 8) + 32))(v14 + v24, v15 + v24, v25);
      swift_storeEnumTagMultiPayload();
    }

LABEL_14:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v22 = *(*(v7 - 8) + 64);

  return memcpy(a1, a2, v22);
}

_OWORD *sub_1DD05AF44(_OWORD *a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a2)
  {
    return a1;
  }

  v6 = *(a3 + 16);
  v7 = type metadata accessor for SiriKitUnsupportedUnsetRelationshipFlow.State(0, v6, *(a3 + 24), a4);
  v8 = *(v7 - 8);
  (*(v8 + 8))(a1, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v17 = a2[1];
    *a1 = *a2;
    a1[1] = v17;
    a1[2] = a2[2];
    *(a1 + 6) = *(a2 + 6);
    type metadata accessor for ParameterResolutionRecord(255, v6, v10, v11);
    v18 = type metadata accessor for RelationshipLabel(255);
    sub_1DD031750();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v20 = *(TupleTypeMetadata3 + 48);
    v21 = (a1 + v20);
    v22 = (a2 + v20);
    if (swift_getEnumCaseMultiPayload())
    {
      memcpy(v21, v22, *(*(v18 - 8) + 64));
    }

    else
    {
      *v21 = *v22;
      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
      v28 = sub_1DD0DB0FC();
      (*(*(v28 - 8) + 32))(v21 + v27, v22 + v27, v28);
      swift_storeEnumTagMultiPayload();
    }

    *(a1 + *(TupleTypeMetadata3 + 64)) = *(a2 + *(TupleTypeMetadata3 + 64));
    goto LABEL_15;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v12 = a2[1];
    *a1 = *a2;
    a1[1] = v12;
    a1[2] = a2[2];
    *(a1 + 6) = *(a2 + 6);
    type metadata accessor for ParameterResolutionRecord(255, v6, v10, v11);
    v13 = type metadata accessor for RelationshipLabel(255);
    v14 = *(swift_getTupleTypeMetadata2() + 48);
    v15 = (a1 + v14);
    v16 = (a2 + v14);
    if (swift_getEnumCaseMultiPayload())
    {
      memcpy(v15, v16, *(*(v13 - 8) + 64));
    }

    else
    {
      *v15 = *v16;
      v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
      v26 = sub_1DD0DB0FC();
      (*(*(v26 - 8) + 32))(v15 + v25, v16 + v25, v26);
      swift_storeEnumTagMultiPayload();
    }

LABEL_15:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v23 = *(v8 + 64);

  return memcpy(a1, a2, v23);
}

uint64_t sub_1DD05B260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for SiriKitUnsupportedUnsetRelationshipFlow.State(0, *(a3 + 16), *(a3 + 24), a4);

  return __swift_getEnumTagSinglePayload(a1, a2, v6);
}

uint64_t sub_1DD05B2AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for SiriKitUnsupportedUnsetRelationshipFlow.State(0, *(a4 + 16), *(a4 + 24), a4);

  return __swift_storeEnumTagSinglePayload(a1, a2, a3, v7);
}

void sub_1DD05B308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_21_55(a1, a2, a3, a4);
  OUTLINED_FUNCTION_29_38();
  UnsupportedUnsetRelationshipFlowStrategy.makeMeCardNotFoundResponse(app:intent:parameterName:multicardinalValueIndex:intentResolutionResult:requestedRelationship:_:)(v4, v5, v6, v7, v8, v9, v10, v11, v12);
}

void sub_1DD05B350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_21_55(a1, a2, a3, a4);
  OUTLINED_FUNCTION_29_38();
  UnsupportedUnsetRelationshipFlowStrategy.makeUnsupportedPlatformResponse(app:intent:parameterName:multicardinalValueIndex:intentResolutionResult:requestedRelationship:_:)(v4, v5, v6, v7, v8, v9, v10, v11, v12);
}

void UnsupportedUnsetRelationshipFlowStrategy.makeIntentCancelledResponse(app:intent:parameterName:multicardinalValueIndex:intentResolutionResult:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  OUTLINED_FUNCTION_20_0(v10);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v19 - v13;
  v15 = sub_1DD0DE4BC();
  OUTLINED_FUNCTION_7_5(v14, v16, v17, v15);
  OUTLINED_FUNCTION_41_4();
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_1DD10CB58;
  v18[5] = 0;
  v18[6] = a7;
  v18[7] = a8;
  sub_1DD0DCF8C();
}

uint64_t sub_1DD05B4BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_30_46(a24, v25, v26);
  OUTLINED_FUNCTION_22_2();
  OUTLINED_FUNCTION_12_1();

  return UnsupportedUnsetRelationshipFlowStrategy.makeRepromptForPersonNameOnEmptyParse(app:intent:parameterName:multicardinalValueIndex:intentResolutionResult:requestedRelationship:_:)(v27, v28, v29, v30, v31, v32, v33, v34, a9, v24, a11, a12, a13, a14, a15, a16, a17);
}

void sub_1DD05B528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_21_55(a1, a2, a3, a4);
  OUTLINED_FUNCTION_29_38();
  UnsupportedUnsetRelationshipFlowStrategy.makeContactNotFoundResponse(app:intent:parameterName:multicardinalValueIndex:intentResolutionResult:requestedPerson:_:)(v4, v5, v6, v7, v8, v9, v10, v11, v12);
}

void UnsupportedUnsetRelationshipFlowStrategy.makeContactNotFoundResponse(app:intent:parameterName:multicardinalValueIndex:intentResolutionResult:requestedPerson:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const void *a7, uint64_t a8, uint64_t a9)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  OUTLINED_FUNCTION_20_0(v11);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v20[-v14];
  memcpy(__dst, a7, sizeof(__dst));
  v16 = sub_1DD0DE4BC();
  OUTLINED_FUNCTION_7_5(v15, v17, v18, v16);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  memcpy(v19 + 4, __dst, 0x50uLL);
  v19[14] = a8;
  v19[15] = a9;
  sub_1DD02AB7C(__dst, v20);
  sub_1DD0DCF8C();
}

uint64_t sub_1DD05B6A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_30_46(a24, v25, v26);
  OUTLINED_FUNCTION_22_2();
  OUTLINED_FUNCTION_12_1();

  return UnsupportedUnsetRelationshipFlowStrategy.makeRepromptForContactDisambiguationOnEmptyParse(app:intent:parameterName:multicardinalValueIndex:intentResolutionResult:paginatedItems:_:)(v27, v28, v29, v30, v31, v32, v33, v34, a9, v24, a11);
}

uint64_t UnsupportedUnsetRelationshipFlowStrategy.makeRepromptForContactDisambiguationOnEmptyParse(app:intent:parameterName:multicardinalValueIndex:intentResolutionResult:paginatedItems:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = *(a7 + 24);
  v12 = a7[4];
  v13 = *(a7 + 40);
  v15 = *a7;
  v16 = *(a7 + 1);
  v17 = v11;
  v18 = v12;
  v19 = v13;
  return (*(a11 + 160))(a1, a2, a3, a4, a5, a6, &v15, a8, a9, a10, a11);
}

uint64_t sub_1DD05B774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  OUTLINED_FUNCTION_7();
  v39 = v26;
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_30_46(a25, v27, v28);
  OUTLINED_FUNCTION_22_2();
  OUTLINED_FUNCTION_12_1();

  return UnsupportedUnsetRelationshipFlowStrategy.makeRepromptToSaveRelationshipOnEmptyParse(app:intent:parameterName:multicardinalValueIndex:intentResolutionResult:person:requestedRelationship:_:)(v29, v30, v31, v32, v33, v34, v35, v36, v39, v25, a11, a12, a13, a14, a15, a16, a17, a18);
}

void UnsupportedUnsetRelationshipFlowStrategy.makeSaveRelationshipRejectedResponse(app:intent:parameterName:multicardinalValueIndex:intentResolutionResult:person:requestedRelationship:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  OUTLINED_FUNCTION_20_0(v11);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v12, v13);
  v14 = OUTLINED_FUNCTION_41_37();
  OUTLINED_FUNCTION_7_5(v10, v15, v16, v14);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = a9;
  v17[5] = a10;
  sub_1DD0DCF8C();
}

void sub_1DD05BB18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  OUTLINED_FUNCTION_20_0(v14);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v23 - v17;
  v19 = sub_1DD0DE4BC();
  OUTLINED_FUNCTION_7_5(v18, v20, v21, v19);
  OUTLINED_FUNCTION_41_4();
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = a13;
  v22[5] = 0;
  v22[6] = a8;
  v22[7] = a9;
  sub_1DD0DCF8C();
}

void UnsupportedUnsetRelationshipFlowStrategy.makeRepromptToSaveRelationshipOnLowConfidence(app:intent:parameterName:multicardinalValueIndex:intentResolutionResult:person:requestedRelationship:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  OUTLINED_FUNCTION_20_0(v11);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v12, v13);
  v14 = OUTLINED_FUNCTION_41_37();
  OUTLINED_FUNCTION_7_5(v10, v15, v16, v14);
  OUTLINED_FUNCTION_41_4();
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1DD10CB88;
  v17[5] = 0;
  v17[6] = a9;
  v17[7] = a10;
  sub_1DD0DCF8C();
}

uint64_t sub_1DD05BD4C()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_11_0(v3);
  *v4 = v5;
  v4[1] = sub_1DCB4AD3C;
  v6 = OUTLINED_FUNCTION_8_1();

  return sub_1DD0441B0(v6, v7, v8, v2, v1);
}

uint64_t sub_1DD05BDF8(uint64_t a1, uint64_t a2)
{
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_1DCB4AE1C;

  return UnsupportedUnsetRelationshipFlowStrategyAsync.makeMeCardNotFoundResponse(requestedRelationship:resolveRecord:)();
}

uint64_t UnsupportedUnsetRelationshipFlowStrategyAsync.makeMeCardNotFoundResponse(requestedRelationship:resolveRecord:)()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_18_4(v1);

  return static UnsetRelationshipOutputFactory.makeMeCardNotFoundResponse(requestedRelationship:)();
}

uint64_t sub_1DD05BF24(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1DCB4AE1C;

  return UnsupportedUnsetRelationshipFlowStrategyAsync.makeIntentCancelledResponse(resolveRecord:)();
}

uint64_t UnsupportedUnsetRelationshipFlowStrategyAsync.makeIntentCancelledResponse(resolveRecord:)()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_40(v1);

  return sub_1DCEAA8F4();
}

uint64_t sub_1DD05C040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v18 = swift_task_alloc();
  *(v9 + 16) = v18;
  *v18 = v9;
  v18[1] = sub_1DCB4AE1C;

  return UnsupportedUnsetRelationshipFlowStrategyAsync.makeRepromptForPersonNameOnEmptyParse(requestedRelationship:resolveRecord:)(a1, a2, a3, a4, a5, v15, v16, v17, a9);
}

uint64_t UnsupportedUnsetRelationshipFlowStrategyAsync.makeRepromptForPersonNameOnEmptyParse(requestedRelationship:resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_41();
  v11 = *(v10 + 32);
  v12 = *(v10 + 16);
  *(v9 + 16) = *v10;
  OUTLINED_FUNCTION_37_39(v11, v12);
  OUTLINED_FUNCTION_25_1();
  v24 = v13 + *v13;
  v14 = swift_task_alloc();
  *(v9 + 72) = v14;
  *v14 = v9;
  OUTLINED_FUNCTION_19_53(v14);
  OUTLINED_FUNCTION_36_43();
  OUTLINED_FUNCTION_48();

  return v20(v15, v16, v17, v18, v19, v20, v21, v22, a9, v24);
}

uint64_t sub_1DD05C230()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DCBF9BB4, 0, 0);
  }

  else
  {
    OUTLINED_FUNCTION_29();

    return v7();
  }
}

uint64_t sub_1DD05C34C(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1DCB4AE1C;

  return UnsupportedUnsetRelationshipFlowStrategyAsync.makeRepromptForPersonNameOnLowConfidence(requestedRelationship:resolveRecord:)();
}

uint64_t UnsupportedUnsetRelationshipFlowStrategyAsync.makeRepromptForPersonNameOnLowConfidence(requestedRelationship:resolveRecord:)()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_40(v1);

  return sub_1DCCDBBA0();
}

uint64_t sub_1DD05C468(uint64_t a1, uint64_t a2)
{
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_1DCB4AE1C;

  return UnsupportedUnsetRelationshipFlowStrategyAsync.makeContactNotFoundResponse(requestedPerson:resolveRecord:)();
}

uint64_t UnsupportedUnsetRelationshipFlowStrategyAsync.makeContactNotFoundResponse(requestedPerson:resolveRecord:)()
{
  OUTLINED_FUNCTION_42();
  memcpy((v0 + 16), v1, 0x50uLL);
  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  *v2 = v0;
  v2[1] = sub_1DD05C5B0;

  return static UnsetRelationshipOutputFactory.makeContactNotFoundResponse(requestedPerson:)();
}

uint64_t sub_1DD05C5B0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 104) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DCBE46EC, 0, 0);
  }

  else
  {
    OUTLINED_FUNCTION_29();

    return v7();
  }
}

uint64_t sub_1DD05C6E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v18 = swift_task_alloc();
  *(v9 + 16) = v18;
  *v18 = v9;
  v18[1] = sub_1DCB4AE1C;

  return UnsupportedUnsetRelationshipFlowStrategyAsync.makeRepromptForContactDisambiguationOnEmptyParse(paginatedItems:resolveRecord:)(a1, a2, a3, a4, a5, v15, v16, v17, a9);
}

uint64_t UnsupportedUnsetRelationshipFlowStrategyAsync.makeRepromptForContactDisambiguationOnEmptyParse(paginatedItems:resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_41();
  v11 = *(v10 + 24);
  v12 = *(v10 + 32);
  v13 = *(v10 + 40);
  v15 = *(v14 + 32);
  v16 = *(v14 + 40);
  v17 = *(v14 + 48);
  *(v9 + 72) = *v10;
  *(v9 + 80) = *(v10 + 8);
  *(v9 + 96) = v11;
  *(v9 + 104) = v12;
  *(v9 + 112) = v13;
  v18 = *(v14 + 16);
  *(v9 + 16) = *v14;
  *(v9 + 32) = v18;
  *(v9 + 48) = v15;
  *(v9 + 56) = v16;
  *(v9 + 64) = v17;
  OUTLINED_FUNCTION_25_1();
  v30 = v19 + *v19;
  v20 = swift_task_alloc();
  *(v9 + 120) = v20;
  *v20 = v9;
  v20[1] = sub_1DD05C91C;
  OUTLINED_FUNCTION_36_43();
  OUTLINED_FUNCTION_48();

  return v26(v21, v22, v23, v24, v25, v26, v27, v28, a9, v30);
}

uint64_t sub_1DD05C91C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 128) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DCD3A35C, 0, 0);
  }

  else
  {
    OUTLINED_FUNCTION_29();

    return v7();
  }
}