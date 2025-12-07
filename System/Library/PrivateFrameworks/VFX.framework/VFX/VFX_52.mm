uint64_t sub_1AF5117EC()
{
  if (*(v0 + 12))
  {
    return *(v0 + 8);
  }

  else
  {
    return 3;
  }
}

uint64_t sub_1AF511804(uint64_t result)
{
  if (result == 3)
  {
    if (*(v1 + 12))
    {
      *(v1 + 8) = 1056964608;
      *(v1 + 12) = 0;
    }
  }

  else
  {
    if (result == 2)
    {
      *(v1 + 8) = 2;
    }

    else
    {
      *(v1 + 8) = result == 1;
    }

    *(v1 + 12) = 1;
  }

  return result;
}

uint64_t sub_1AF511864(uint64_t result)
{
  v2 = result;
  if (result >= 3u)
  {
    v2 = 3;
  }

  *(v1 + 28) = v2;
  return result;
}

uint64_t sub_1AF511924()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE551C0;
  KeyPath = swift_getKeyPath();
  v2 = &type metadata for Entity;
  sub_1AF5A9240(0, &unk_1EB6338D8, &type metadata for Entity, type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF5A27D8;
  v3[5] = KeyPath;
  v3[2] = sub_1AF5A280C;
  v3[3] = KeyPath;
  v3[6] = KeyPath;
  type metadata accessor for PropertyDescription();
  v4 = swift_allocObject();
  *(v4 + 112) = 1;
  *(v4 + 128) = 0;
  *(v4 + 136) = 0;
  *(v4 + 120) = 0;
  *(v4 + 160) = MEMORY[0x1E69E7CC0];
  *(v4 + 168) = 0;
  *(v4 + 216) = 0;
  *(v4 + 176) = 0;
  *(v4 + 16) = 1752393069;
  *(v4 + 24) = 0xE400000000000000;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = &type metadata for Entity;
  *(v4 + 48) = 0;
  *(v4 + 56) = 0;
  *(v4 + 58) = 0;
  *(v4 + 184) = 0;
  *(v4 + 188) = 1;
  *(v4 + 192) = 0;
  *(v4 + 196) = 1;
  *(v4 + 200) = 0x1000100000000;
  *(v4 + 208) = 1;
  *(v4 + 96) = 0;
  *(v4 + 104) = 0;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  *(v4 + 144) = xmmword_1AFE551D0;
  *(v4 + 80) = v3;
  *(v4 + 88) = &off_1F2535378;
  *(v4 + 210) = 0;
  v5 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v5)
  {
    v6 = (*(v5 + 8))();
  }

  else
  {
    v6 = &type metadata for Entity;
  }

  v7 = swift_conformsToProtocol2();
  if (v7 && v6)
  {
    *(v4 + 160) = (*(v7 + 8))(v6, v7);
  }

  *(v4 + 64) = sub_1AF5A2868;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0, 0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  v8 = swift_getKeyPath();
  v9 = swift_allocObject();
  v9[4] = sub_1AF5AA3F0;
  v9[5] = v8;
  v9[2] = sub_1AF5AA034;
  v9[3] = v8;
  v9[6] = v8;
  v10 = swift_allocObject();
  *(v10 + 112) = 1;
  *(v10 + 128) = 0;
  *(v10 + 136) = 0;
  *(v10 + 120) = 0;
  *(v10 + 160) = MEMORY[0x1E69E7CC0];
  *(v10 + 168) = 0;
  *(v10 + 216) = 0;
  *(v10 + 176) = 0;
  *(v10 + 16) = 0xD000000000000010;
  *(v10 + 24) = 0x80000001AFF22E00;
  *(v10 + 32) = v8;
  *(v10 + 40) = &type metadata for Entity;
  *(v10 + 48) = 8;
  *(v10 + 56) = 0;
  *(v10 + 58) = 0;
  *(v10 + 184) = 0;
  *(v10 + 188) = 1;
  *(v10 + 192) = 0;
  *(v10 + 196) = 1;
  *(v10 + 200) = 0x1000100000000;
  *(v10 + 208) = 1;
  *(v10 + 96) = 0;
  *(v10 + 104) = 0;
  *(v10 + 64) = 0;
  *(v10 + 72) = 0;
  *(v10 + 144) = xmmword_1AFE551E0;
  *(v10 + 80) = v9;
  *(v10 + 88) = &off_1F2535378;
  *(v10 + 210) = 0;
  swift_retain_n();
  if (v5)
  {
    v2 = (*(v5 + 8))();
  }

  v11 = swift_conformsToProtocol2();
  if (v11 && v2)
  {
    *(v10 + 160) = (*(v11 + 8))(v2, v11);
  }

  *(v10 + 64) = sub_1AF5A99E4;
  *(v10 + 72) = v8;
  sub_1AF0FB8EC(0, 0);
  *(v10 + 168) = 0;
  *(v10 + 176) = 0;

  *(v10 + 216) = 0;
  *(v0 + 40) = v10;
  v12 = swift_getKeyPath();
  v13 = swift_getKeyPath();
  v14 = MEMORY[0x1E69E7360];
  sub_1AF5A9240(0, &unk_1EB634340, MEMORY[0x1E69E7360], type metadata accessor for EntityGetSet);
  v15 = swift_allocObject();
  v15[4] = sub_1AF5AA3F0;
  v15[5] = v13;
  v15[2] = sub_1AF5A28A8;
  v15[3] = v13;
  v15[6] = v13;
  v16 = swift_allocObject();
  *(v16 + 112) = 1;
  *(v16 + 128) = 0;
  *(v16 + 136) = 0;
  *(v16 + 120) = 0;
  *(v16 + 160) = MEMORY[0x1E69E7CC0];
  *(v16 + 168) = 0;
  *(v16 + 216) = 0;
  *(v16 + 176) = 0;
  strcpy((v16 + 16), "sortModeIndex");
  *(v16 + 30) = -4864;
  *(v16 + 32) = v13;
  *(v16 + 40) = v14;
  *(v16 + 48) = 0;
  *(v16 + 56) = 1;
  *(v16 + 58) = 0;
  *(v16 + 184) = 0;
  *(v16 + 188) = 1;
  *(v16 + 192) = 0;
  *(v16 + 196) = 1;
  *(v16 + 200) = 0x1000100000000;
  *(v16 + 208) = 1;
  *(v16 + 64) = 0;
  *(v16 + 72) = 0;
  *(v16 + 96) = 0;
  *(v16 + 104) = 0;
  *(v16 + 144) = xmmword_1AFE22A20;
  *(v16 + 80) = v15;
  *(v16 + 88) = &off_1F2535378;
  *(v16 + 210) = 0;
  v17 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v17)
  {
    v14 = (*(v17 + 8))();
  }

  v18 = swift_conformsToProtocol2();
  if (v18 && v14)
  {
    *(v16 + 160) = (*(v18 + 8))(v14, v18);
  }

  *(v16 + 64) = sub_1AF5A2904;
  *(v16 + 72) = v13;
  sub_1AF0FB8EC(0, 0);
  *(v16 + 168) = 0;
  *(v16 + 176) = 0;

  *(v16 + 216) = 0;
  v19 = &type metadata for ParticleSortMode;
  sub_1AF5A9240(0, &qword_1EB632F98, &type metadata for ParticleSortMode, type metadata accessor for EntityGetSet);
  v20 = swift_allocObject();
  v20[4] = sub_1AF5A2944;
  v20[5] = v12;
  v20[2] = sub_1AF5A2970;
  v20[3] = v12;
  v20[6] = v12;
  v21 = swift_allocObject();
  *(v21 + 112) = 1;
  *(v21 + 128) = 0;
  *(v21 + 136) = 0;
  *(v21 + 120) = 0;
  *(v21 + 160) = MEMORY[0x1E69E7CC0];
  *(v21 + 168) = 0;
  *(v21 + 216) = 0;
  *(v21 + 176) = 0;
  *(v21 + 16) = 0x65646F4D74726F73;
  *(v21 + 24) = 0xE800000000000000;
  *(v21 + 32) = v12;
  *(v21 + 40) = &type metadata for ParticleSortMode;
  *(v21 + 48) = 16;
  *(v21 + 56) = 0;
  *(v21 + 58) = 0;
  *(v21 + 184) = 0;
  *(v21 + 188) = 1;
  *(v21 + 192) = 0;
  *(v21 + 196) = 1;
  *(v21 + 200) = 0x1000100000000;
  *(v21 + 208) = 1;
  *(v21 + 64) = 0;
  *(v21 + 72) = 0;
  *(v21 + 96) = 0;
  *(v21 + 104) = 0;
  *(v21 + 144) = xmmword_1AFE22A20;
  *(v21 + 80) = v20;
  *(v21 + 88) = &off_1F2535378;
  *(v21 + 210) = 0;
  v22 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v22)
  {
    v19 = (*(v22 + 8))();
  }

  v23 = swift_conformsToProtocol2();
  if (v23 && v19)
  {
    *(v21 + 160) = (*(v23 + 8))(v19, v23);
  }

  *(v21 + 64) = sub_1AF5A29CC;
  *(v21 + 72) = v12;
  sub_1AF0FB8EC(0, 0);
  *(v21 + 168) = 0;
  *(v21 + 176) = 0;

  *(v21 + 216) = v16;
  *(v0 + 48) = v21;
  v24 = swift_getKeyPath();
  v25 = MEMORY[0x1E69E6530];
  sub_1AF5A9240(0, &qword_1ED722B68, MEMORY[0x1E69E6530], type metadata accessor for EntityGetSet);
  v26 = swift_allocObject();
  v26[4] = sub_1AF5A27D8;
  v26[5] = v24;
  v26[2] = sub_1AF5A2A0C;
  v26[3] = v24;
  v26[6] = v24;
  v27 = swift_allocObject();
  *(v27 + 112) = 1;
  *(v27 + 128) = 0;
  *(v27 + 136) = 0;
  *(v27 + 120) = 0;
  *(v27 + 160) = MEMORY[0x1E69E7CC0];
  *(v27 + 168) = 0;
  *(v27 + 216) = 0;
  *(v27 + 176) = 0;
  *(v27 + 16) = 0x65646E4974726170;
  *(v27 + 24) = 0xE900000000000078;
  *(v27 + 32) = v24;
  *(v27 + 40) = v25;
  *(v27 + 48) = 24;
  *(v27 + 56) = 0;
  *(v27 + 58) = 0;
  *(v27 + 184) = 0;
  *(v27 + 188) = 1;
  *(v27 + 192) = 0;
  *(v27 + 196) = 1;
  *(v27 + 200) = 0x1000100000000;
  *(v27 + 208) = 1;
  *(v27 + 64) = 0;
  *(v27 + 72) = 0;
  *(v27 + 96) = 0;
  *(v27 + 104) = 0;
  *(v27 + 144) = xmmword_1AFE22A20;
  *(v27 + 80) = v26;
  *(v27 + 88) = &off_1F2535378;
  *(v27 + 210) = 0;
  v28 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v28)
  {
    v29 = (*(v28 + 8))();
  }

  else
  {
    v29 = v25;
  }

  v30 = swift_conformsToProtocol2();
  if (v30 && v29)
  {
    *(v27 + 160) = (*(v30 + 8))(v29, v30);
  }

  *(v27 + 64) = sub_1AF5A2A68;
  *(v27 + 72) = v24;
  sub_1AF0FB8EC(0, 0);
  *(v27 + 168) = 0;
  *(v27 + 176) = 0;

  *(v27 + 216) = 0;
  *(v0 + 56) = v27;
  v31 = swift_getKeyPath();
  v32 = swift_allocObject();
  v32[4] = sub_1AF5AA3F0;
  v32[5] = v31;
  v32[2] = sub_1AF5AA038;
  v32[3] = v31;
  v32[6] = v31;
  v33 = swift_allocObject();
  *(v33 + 112) = 1;
  *(v33 + 128) = 0;
  *(v33 + 136) = 0;
  *(v33 + 120) = 0;
  *(v33 + 160) = MEMORY[0x1E69E7CC0];
  *(v33 + 168) = 0;
  *(v33 + 216) = 0;
  *(v33 + 176) = 0;
  *(v33 + 16) = 0x7865646E49646F6CLL;
  *(v33 + 24) = 0xE800000000000000;
  *(v33 + 32) = v31;
  *(v33 + 40) = v25;
  *(v33 + 48) = 32;
  *(v33 + 56) = 0;
  *(v33 + 58) = 0;
  *(v33 + 184) = 0;
  *(v33 + 188) = 1;
  *(v33 + 192) = 0;
  *(v33 + 196) = 1;
  *(v33 + 200) = 0x1000100000000;
  *(v33 + 208) = 1;
  *(v33 + 64) = 0;
  *(v33 + 72) = 0;
  *(v33 + 96) = 0;
  *(v33 + 104) = 0;
  *(v33 + 144) = xmmword_1AFE22A20;
  *(v33 + 80) = v32;
  *(v33 + 88) = &off_1F2535378;
  *(v33 + 210) = 0;
  swift_retain_n();
  if (v28)
  {
    v25 = (*(v28 + 8))();
  }

  v34 = swift_conformsToProtocol2();
  if (v34 && v25)
  {
    *(v33 + 160) = (*(v34 + 8))(v25, v34);
  }

  *(v33 + 64) = sub_1AF5A99E8;
  *(v33 + 72) = v31;
  sub_1AF0FB8EC(0, 0);
  *(v33 + 168) = 0;
  *(v33 + 176) = 0;

  *(v33 + 216) = 0;
  *(v0 + 64) = v33;
  qword_1EB6C30B0 = v0;
  return result;
}

uint64_t sub_1AF512500(uint64_t result)
{
  v2 = result;
  if (result >= 7u)
  {
    v2 = 7;
  }

  *(v1 + 16) = v2;
  return result;
}

uint64_t sub_1AF5125BC()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE551C0;
  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  v3 = MEMORY[0x1E69E7360];
  sub_1AF5A9240(0, &unk_1EB634340, MEMORY[0x1E69E7360], type metadata accessor for EntityGetSet);
  v4 = swift_allocObject();
  v4[4] = sub_1AF5A2C28;
  v4[5] = v2;
  v4[2] = sub_1AF5A2C5C;
  v4[3] = v2;
  v4[6] = v2;
  type metadata accessor for PropertyDescription();
  v5 = swift_allocObject();
  *(v5 + 112) = 1;
  *(v5 + 136) = 0;
  v6 = MEMORY[0x1E69E7CC0];
  *(v5 + 120) = 0;
  *(v5 + 128) = 0;
  *(v5 + 160) = v6;
  *(v5 + 168) = 0;
  *(v5 + 216) = 0;
  *(v5 + 176) = 0;
  strcpy((v5 + 16), "sortModeIndex");
  *(v5 + 30) = -4864;
  *(v5 + 32) = v2;
  *(v5 + 40) = v3;
  *(v5 + 48) = 0;
  *(v5 + 56) = 1;
  *(v5 + 58) = 0;
  *(v5 + 184) = 0;
  *(v5 + 188) = 1;
  *(v5 + 192) = 0;
  *(v5 + 196) = 1;
  *(v5 + 200) = 0x1000100000000;
  *(v5 + 208) = 1;
  *(v5 + 96) = 0;
  *(v5 + 104) = 0;
  *(v5 + 64) = 0;
  *(v5 + 72) = 0;
  *(v5 + 144) = xmmword_1AFE22A20;
  *(v5 + 80) = v4;
  *(v5 + 88) = &off_1F2535378;
  *(v5 + 210) = 0;
  v7 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v7)
  {
    v3 = (*(v7 + 8))();
  }

  v8 = swift_conformsToProtocol2();
  if (v8 && v3)
  {
    *(v5 + 160) = (*(v8 + 8))(v3, v8);
  }

  *(v5 + 64) = sub_1AF5A2CB8;
  *(v5 + 72) = v2;
  sub_1AF0FB8EC(0, 0);
  *(v5 + 168) = 0;
  *(v5 + 176) = 0;

  *(v5 + 216) = 0;
  v9 = &type metadata for ParticleSortMode;
  sub_1AF5A9240(0, &qword_1EB632F98, &type metadata for ParticleSortMode, type metadata accessor for EntityGetSet);
  v10 = swift_allocObject();
  v10[4] = sub_1AF5A2CF8;
  v10[5] = KeyPath;
  v10[2] = sub_1AF5A2D24;
  v10[3] = KeyPath;
  v10[6] = KeyPath;
  v11 = swift_allocObject();
  *(v11 + 112) = 1;
  *(v11 + 128) = 0;
  *(v11 + 136) = 0;
  *(v11 + 120) = 0;
  *(v11 + 160) = MEMORY[0x1E69E7CC0];
  *(v11 + 168) = 0;
  *(v11 + 216) = 0;
  *(v11 + 176) = 0;
  *(v11 + 16) = 0x65646F4D74726F73;
  *(v11 + 24) = 0xE800000000000000;
  *(v11 + 32) = KeyPath;
  *(v11 + 40) = &type metadata for ParticleSortMode;
  *(v11 + 48) = 8;
  *(v11 + 56) = 0;
  *(v11 + 58) = 0;
  *(v11 + 184) = 0;
  *(v11 + 188) = 1;
  *(v11 + 192) = 0;
  *(v11 + 196) = 1;
  *(v11 + 200) = 0x1000100000000;
  *(v11 + 208) = 1;
  *(v11 + 96) = 0;
  *(v11 + 104) = 0;
  *(v11 + 64) = 0;
  *(v11 + 72) = 0;
  *(v11 + 144) = xmmword_1AFE22A20;
  *(v11 + 80) = v10;
  *(v11 + 88) = &off_1F2535378;
  *(v11 + 210) = 0;
  v12 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v12)
  {
    v9 = (*(v12 + 8))();
  }

  v13 = swift_conformsToProtocol2();
  if (v13 && v9)
  {
    *(v11 + 160) = (*(v13 + 8))(v9, v13);
  }

  *(v11 + 64) = sub_1AF5A2D80;
  *(v11 + 72) = KeyPath;
  sub_1AF0FB8EC(0, 0);
  *(v11 + 168) = 0;
  *(v11 + 176) = 0;

  *(v11 + 216) = v5;
  *(v0 + 32) = v11;
  v14 = swift_getKeyPath();
  v15 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v16 = swift_allocObject();
  v16[4] = sub_1AF5A2DC0;
  v16[5] = v14;
  v16[2] = sub_1AF5A2DF4;
  v16[3] = v14;
  v16[6] = v14;
  v17 = swift_allocObject();
  *(v17 + 112) = 1;
  *(v17 + 128) = 0;
  *(v17 + 136) = 0;
  *(v17 + 120) = 0;
  *(v17 + 160) = MEMORY[0x1E69E7CC0];
  *(v17 + 168) = 0;
  *(v17 + 216) = 0;
  *(v17 + 176) = 0;
  strcpy((v17 + 16), "triangleScale");
  *(v17 + 30) = -4864;
  *(v17 + 32) = v14;
  *(v17 + 40) = v15;
  *(v17 + 48) = 12;
  *(v17 + 56) = 0;
  *(v17 + 58) = 0;
  *(v17 + 184) = 0;
  *(v17 + 188) = 1;
  *(v17 + 192) = 0;
  *(v17 + 196) = 1;
  *(v17 + 200) = 0x1000100000000;
  *(v17 + 208) = 1;
  *(v17 + 64) = 0;
  *(v17 + 72) = 0;
  *(v17 + 96) = 0;
  *(v17 + 104) = 0;
  *(v17 + 144) = xmmword_1AFE22A20;
  *(v17 + 80) = v16;
  *(v17 + 88) = &off_1F2535378;
  *(v17 + 210) = 0;
  v18 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v18)
  {
    v19 = (*(v18 + 8))();
  }

  else
  {
    v19 = v15;
  }

  v20 = swift_conformsToProtocol2();
  if (v20 && v19)
  {
    *(v17 + 160) = (*(v20 + 8))(v19, v20);
  }

  *(v17 + 64) = sub_1AF5A2E50;
  *(v17 + 72) = v14;
  sub_1AF0FB8EC(0, 0);
  *(v17 + 168) = 0;
  *(v17 + 176) = 0;

  *(v17 + 216) = 0;
  *(v0 + 40) = v17;
  v21 = swift_getKeyPath();
  v22 = swift_allocObject();
  v22[4] = sub_1AF5A9574;
  v22[5] = v21;
  v22[2] = sub_1AF5AA044;
  v22[3] = v21;
  v22[6] = v21;
  v23 = swift_allocObject();
  *(v23 + 112) = 1;
  *(v23 + 128) = 0;
  *(v23 + 136) = 0;
  *(v23 + 120) = 0;
  *(v23 + 160) = MEMORY[0x1E69E7CC0];
  *(v23 + 168) = 0;
  *(v23 + 216) = 0;
  *(v23 + 176) = 0;
  *(v23 + 16) = 0x6168706C61;
  *(v23 + 24) = 0xE500000000000000;
  *(v23 + 32) = v21;
  *(v23 + 40) = v15;
  *(v23 + 48) = 16;
  *(v23 + 56) = 0;
  *(v23 + 58) = 0;
  *(v23 + 184) = 0;
  *(v23 + 188) = 1;
  *(v23 + 192) = 0;
  *(v23 + 196) = 1;
  *(v23 + 200) = 0x1000100000000;
  *(v23 + 208) = 1;
  *(v23 + 64) = 0;
  *(v23 + 72) = 0;
  *(v23 + 96) = 0;
  *(v23 + 104) = 0;
  *(v23 + 144) = xmmword_1AFE22A20;
  *(v23 + 80) = v22;
  *(v23 + 88) = &off_1F2535378;
  *(v23 + 210) = 0;
  swift_retain_n();
  if (v18)
  {
    v24 = (*(v18 + 8))();
  }

  else
  {
    v24 = v15;
  }

  v25 = swift_conformsToProtocol2();
  if (v25 && v24)
  {
    *(v23 + 160) = (*(v25 + 8))(v24, v25);
  }

  *(v23 + 64) = sub_1AF5A99EC;
  *(v23 + 72) = v21;
  sub_1AF0FB8EC(0, 0);
  *(v23 + 168) = 0;
  *(v23 + 176) = 0;

  *(v23 + 216) = 0;
  *(v0 + 48) = v23;
  v26 = swift_getKeyPath();
  v27 = swift_allocObject();
  v27[4] = sub_1AF5A9574;
  v27[5] = v26;
  v27[2] = sub_1AF5AA044;
  v27[3] = v26;
  v27[6] = v26;
  v28 = swift_allocObject();
  *(v28 + 112) = 1;
  *(v28 + 128) = 0;
  *(v28 + 136) = 0;
  *(v28 + 120) = 0;
  *(v28 + 160) = MEMORY[0x1E69E7CC0];
  *(v28 + 168) = 0;
  *(v28 + 216) = 0;
  *(v28 + 176) = 0;
  *(v28 + 16) = 0x7265776F70;
  *(v28 + 24) = 0xE500000000000000;
  *(v28 + 32) = v26;
  *(v28 + 40) = v15;
  *(v28 + 48) = 20;
  *(v28 + 56) = 0;
  *(v28 + 58) = 0;
  *(v28 + 184) = 0;
  *(v28 + 188) = 1;
  *(v28 + 192) = 0;
  *(v28 + 196) = 1;
  *(v28 + 200) = 0x1000100000000;
  *(v28 + 208) = 1;
  *(v28 + 64) = 0;
  *(v28 + 72) = 0;
  *(v28 + 96) = 0;
  *(v28 + 104) = 0;
  *(v28 + 144) = xmmword_1AFE22A20;
  *(v28 + 80) = v27;
  *(v28 + 88) = &off_1F2535378;
  *(v28 + 210) = 0;
  swift_retain_n();
  if (v18)
  {
    v15 = (*(v18 + 8))();
  }

  v29 = swift_conformsToProtocol2();
  if (v29 && v15)
  {
    *(v28 + 160) = (*(v29 + 8))(v15, v29);
  }

  *(v28 + 64) = sub_1AF5A99EC;
  *(v28 + 72) = v26;
  sub_1AF0FB8EC(0, 0);
  *(v28 + 168) = 0;
  *(v28 + 176) = 0;

  *(v28 + 216) = 0;
  *(v0 + 56) = v28;
  v30 = swift_getKeyPath();
  v31 = MEMORY[0x1E69E6370];
  sub_1AF5A9240(0, &qword_1ED722B80, MEMORY[0x1E69E6370], type metadata accessor for EntityGetSet);
  v32 = swift_allocObject();
  v32[4] = sub_1AF5A2E90;
  v32[5] = v30;
  v32[2] = sub_1AF5A2EBC;
  v32[3] = v30;
  v32[6] = v30;
  v33 = swift_allocObject();
  *(v33 + 112) = 1;
  *(v33 + 128) = 0;
  *(v33 + 136) = 0;
  *(v33 + 120) = 0;
  *(v33 + 160) = MEMORY[0x1E69E7CC0];
  *(v33 + 168) = 0;
  *(v33 + 216) = 0;
  *(v33 + 176) = 0;
  strcpy((v33 + 16), "useMeshShader");
  *(v33 + 30) = -4864;
  *(v33 + 32) = v30;
  *(v33 + 40) = v31;
  *(v33 + 48) = 24;
  *(v33 + 56) = 0;
  *(v33 + 58) = 0;
  *(v33 + 184) = 0;
  *(v33 + 188) = 1;
  *(v33 + 192) = 0;
  *(v33 + 196) = 1;
  *(v33 + 200) = 0x1000100000000;
  *(v33 + 208) = 1;
  *(v33 + 64) = 0;
  *(v33 + 72) = 0;
  *(v33 + 96) = 0;
  *(v33 + 104) = 0;
  *(v33 + 144) = xmmword_1AFE22A20;
  *(v33 + 80) = v32;
  *(v33 + 88) = &off_1F2535378;
  *(v33 + 210) = 0;
  v34 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v34)
  {
    v31 = (*(v34 + 8))();
  }

  v35 = swift_conformsToProtocol2();
  if (v35 && v31)
  {
    *(v33 + 160) = (*(v35 + 8))(v31, v35);
  }

  *(v33 + 64) = sub_1AF5A2F18;
  *(v33 + 72) = v30;
  sub_1AF0FB8EC(0, 0);
  *(v33 + 168) = 0;
  *(v33 + 176) = 0;

  *(v33 + 216) = 0;
  *(v0 + 64) = v33;
  qword_1EB6C30B8 = v0;
  return result;
}

uint64_t sub_1AF51319C(uint64_t result)
{
  v2 = result;
  if (result >= 7u)
  {
    v2 = 7;
  }

  *(v1 + 8) = v2;
  return result;
}

uint64_t sub_1AF513288()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE550E0;
  KeyPath = swift_getKeyPath();
  v2 = &type metadata for Entity;
  sub_1AF5A9240(0, &unk_1EB6338D8, &type metadata for Entity, type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF5A30D8;
  v3[5] = KeyPath;
  v3[2] = sub_1AF5A310C;
  v3[3] = KeyPath;
  v3[6] = KeyPath;
  type metadata accessor for PropertyDescription();
  v4 = swift_allocObject();
  *(v4 + 112) = 1;
  *(v4 + 128) = 0;
  *(v4 + 136) = 0;
  *(v4 + 120) = 0;
  v5 = MEMORY[0x1E69E7CC0];
  *(v4 + 160) = MEMORY[0x1E69E7CC0];
  *(v4 + 168) = 0;
  *(v4 + 216) = 0;
  *(v4 + 176) = 0;
  *(v4 + 16) = 0x656E656373;
  *(v4 + 24) = 0xE500000000000000;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = &type metadata for Entity;
  *(v4 + 48) = 0;
  *(v4 + 56) = 0;
  *(v4 + 58) = 0;
  *(v4 + 184) = 0;
  *(v4 + 188) = 1;
  *(v4 + 192) = 0;
  *(v4 + 196) = 1;
  *(v4 + 200) = 0x1000100000000;
  *(v4 + 208) = 1;
  *(v4 + 96) = 0;
  *(v4 + 104) = 0;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  *(v4 + 144) = xmmword_1AFE55290;
  *(v4 + 80) = v3;
  *(v4 + 88) = &off_1F2535378;
  *(v4 + 210) = 0;
  v6 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v6)
  {
    v2 = (*(v6 + 8))();
  }

  v7 = swift_conformsToProtocol2();
  if (v7 && v2)
  {
    *(v4 + 160) = (*(v7 + 8))(v2, v7);
  }

  *(v4 + 64) = sub_1AF5A3168;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0, 0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  v8 = swift_getKeyPath();
  v9 = MEMORY[0x1E69E6370];
  sub_1AF5A9240(0, &qword_1ED722B80, MEMORY[0x1E69E6370], type metadata accessor for EntityGetSet);
  v10 = swift_allocObject();
  v10[4] = sub_1AF5A31A8;
  v10[5] = v8;
  v10[2] = sub_1AF5A31D4;
  v10[3] = v8;
  v10[6] = v8;
  v11 = swift_allocObject();
  *(v11 + 112) = 1;
  *(v11 + 128) = 0;
  *(v11 + 136) = 0;
  *(v11 + 120) = 0;
  *(v11 + 168) = 0;
  *(v11 + 160) = v5;
  *(v11 + 216) = 0;
  *(v11 + 176) = 0;
  *(v11 + 16) = 2036427888;
  *(v11 + 24) = 0xE400000000000000;
  *(v11 + 32) = v8;
  *(v11 + 40) = v9;
  *(v11 + 48) = 8;
  *(v11 + 56) = 0;
  *(v11 + 58) = 0;
  *(v11 + 184) = 0;
  *(v11 + 188) = 1;
  *(v11 + 192) = 0;
  *(v11 + 196) = 1;
  *(v11 + 200) = 0x1000100000000;
  *(v11 + 208) = 1;
  *(v11 + 64) = 0;
  *(v11 + 72) = 0;
  *(v11 + 96) = 0;
  *(v11 + 104) = 0;
  *(v11 + 144) = xmmword_1AFE55120;
  *(v11 + 80) = v10;
  *(v11 + 88) = &off_1F2535378;
  *(v11 + 210) = 0;
  v12 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v12)
  {
    v9 = (*(v12 + 8))();
  }

  v13 = swift_conformsToProtocol2();
  if (v13 && v9)
  {
    *(v11 + 160) = (*(v13 + 8))(v9, v13);
  }

  *(v11 + 64) = sub_1AF5A3230;
  *(v11 + 72) = v8;
  sub_1AF0FB8EC(0, 0);
  *(v11 + 168) = 0;
  *(v11 + 176) = 0;

  *(v11 + 216) = 0;
  *(v0 + 40) = v11;
  qword_1EB6C30C0 = v0;
  return result;
}

uint64_t sub_1AF5137B0()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C3E0;
  KeyPath = swift_getKeyPath();
  v2 = &type metadata for Asset;
  sub_1AF5A9240(0, &qword_1EB63A428, &type metadata for Asset, type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF5A33D8;
  v3[5] = KeyPath;
  v3[2] = sub_1AF5A341C;
  v3[3] = KeyPath;
  v3[6] = KeyPath;
  type metadata accessor for PropertyDescription();
  v4 = swift_allocObject();
  *(v4 + 112) = 1;
  *(v4 + 128) = 0;
  *(v4 + 136) = 0;
  *(v4 + 120) = 0;
  *(v4 + 160) = MEMORY[0x1E69E7CC0];
  *(v4 + 168) = 0;
  *(v4 + 216) = 0;
  *(v4 + 176) = 0;
  *(v4 + 16) = 0x7465737361;
  *(v4 + 24) = 0xE500000000000000;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = &type metadata for Asset;
  *(v4 + 48) = 0;
  *(v4 + 56) = 0;
  *(v4 + 58) = 4;
  *(v4 + 184) = 0;
  *(v4 + 188) = 1;
  *(v4 + 192) = 0;
  *(v4 + 196) = 1;
  *(v4 + 200) = 0x1000100000000;
  *(v4 + 208) = 1;
  *(v4 + 96) = 0;
  *(v4 + 104) = 0;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  *(v4 + 144) = xmmword_1AFE22A20;
  *(v4 + 80) = v3;
  *(v4 + 88) = &off_1F2535378;
  *(v4 + 210) = 4;
  v5 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v5)
  {
    v2 = (*(v5 + 8))();
  }

  v6 = swift_conformsToProtocol2();
  if (v6 && v2)
  {
    *(v4 + 160) = (*(v6 + 8))(v2, v6);
  }

  *(v4 + 64) = sub_1AF5A344C;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0, 0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  qword_1EB6C30C8 = v0;
  return result;
}

uint64_t sub_1AF513AEC()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE550E0;
  KeyPath = swift_getKeyPath();
  v2 = &type metadata for Asset;
  sub_1AF5A9240(0, &qword_1EB63A428, &type metadata for Asset, type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF5A35B8;
  v3[5] = KeyPath;
  v3[2] = sub_1AF5A35FC;
  v3[3] = KeyPath;
  v3[6] = KeyPath;
  type metadata accessor for PropertyDescription();
  v4 = swift_allocObject();
  *(v4 + 112) = 1;
  *(v4 + 128) = 0;
  *(v4 + 136) = 0;
  *(v4 + 120) = 0;
  v5 = MEMORY[0x1E69E7CC0];
  *(v4 + 160) = MEMORY[0x1E69E7CC0];
  *(v4 + 168) = 0;
  *(v4 + 216) = 0;
  *(v4 + 176) = 0;
  *(v4 + 16) = 0x7465737361;
  *(v4 + 24) = 0xE500000000000000;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = &type metadata for Asset;
  *(v4 + 48) = 0;
  *(v4 + 56) = 1;
  *(v4 + 58) = 4;
  *(v4 + 184) = 0;
  *(v4 + 188) = 1;
  *(v4 + 192) = 0;
  *(v4 + 196) = 1;
  *(v4 + 200) = 0x1000100000000;
  *(v4 + 208) = 1;
  *(v4 + 96) = 0;
  *(v4 + 104) = 0;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  *(v4 + 144) = xmmword_1AFE22A20;
  *(v4 + 80) = v3;
  *(v4 + 88) = &off_1F2535378;
  *(v4 + 210) = 4;
  v6 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v6)
  {
    v2 = (*(v6 + 8))();
  }

  v7 = swift_conformsToProtocol2();
  if (v7 && v2)
  {
    *(v4 + 160) = (*(v7 + 8))(v2, v7);
  }

  *(v4 + 64) = sub_1AF5A362C;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0, 0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  v8 = swift_getKeyPath();
  sub_1AF586F6C(0);
  v9 = swift_allocObject();
  v9[4] = sub_1AF5A366C;
  v9[5] = v8;
  v9[2] = sub_1AF5A3698;
  v9[3] = v8;
  v9[6] = v8;
  v10 = swift_allocObject();
  *(v10 + 104) = 0;
  *(v10 + 112) = 1;
  *(v10 + 128) = 0;
  *(v10 + 136) = 0;
  *(v10 + 120) = 0;
  *(v10 + 160) = v5;
  *(v10 + 216) = 0;
  sub_1AF5A9240(0, &qword_1ED723210, MEMORY[0x1E69E6448], MEMORY[0x1E69E62F8]);
  v12 = v11;
  *(v10 + 168) = 0;
  *(v10 + 176) = 0;
  *(v10 + 16) = 0x72724174616F6C66;
  *(v10 + 24) = 0xEA00000000007961;
  *(v10 + 32) = v8;
  *(v10 + 40) = v11;
  *(v10 + 48) = 48;
  *(v10 + 56) = 0;
  *(v10 + 58) = 0;
  *(v10 + 184) = 0;
  *(v10 + 188) = 1;
  *(v10 + 192) = 0;
  *(v10 + 196) = 1;
  *(v10 + 200) = 0x1000100000000;
  *(v10 + 208) = 1;
  *(v10 + 64) = 0;
  *(v10 + 72) = 0;
  *(v10 + 88) = &off_1F2535378;
  *(v10 + 96) = 0;
  *(v10 + 144) = xmmword_1AFE22A20;
  *(v10 + 80) = v9;
  *(v10 + 210) = 0;
  v13 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v13 && v12)
  {
    v12 = (*(v13 + 8))(v12, v13);
  }

  v14 = swift_conformsToProtocol2();
  if (v14 && v12)
  {
    *(v10 + 160) = (*(v14 + 8))(v12, v14);
  }

  v15 = *(v10 + 64);
  v16 = *(v10 + 72);
  *(v10 + 64) = sub_1AF5A36C8;
  *(v10 + 72) = v8;
  sub_1AF0FB8EC(v15, v16);
  *(v10 + 168) = 0;
  *(v10 + 176) = 0;

  *(v10 + 216) = 0;

  *(v0 + 40) = v10;
  qword_1EB6C30D0 = v0;
  return result;
}

uint64_t sub_1AF513F7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  v5 = *(a1 + 32);
  *(a2 + 32) = v5;
  v6 = v5;
}

uint64_t sub_1AF513FD4(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  v7 = a1[4];
  v8 = a1[5];
  v9 = v7;

  *a2 = v4;
  *(a2 + 8) = v3;
  *(a2 + 16) = v6;
  *(a2 + 24) = v5;
  *(a2 + 32) = v7;
  *(a2 + 40) = v8;
  return sub_1AF8CBBC8();
}

uint64_t sub_1AF514108()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C3E0;
  KeyPath = swift_getKeyPath();
  v2 = &type metadata for Asset;
  sub_1AF5A9240(0, &qword_1EB63A428, &type metadata for Asset, type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF5A3900;
  v3[5] = KeyPath;
  v3[2] = sub_1AF5A3954;
  v3[3] = KeyPath;
  v3[6] = KeyPath;
  type metadata accessor for PropertyDescription();
  v4 = swift_allocObject();
  *(v4 + 112) = 1;
  *(v4 + 128) = 0;
  *(v4 + 136) = 0;
  *(v4 + 120) = 0;
  *(v4 + 160) = MEMORY[0x1E69E7CC0];
  *(v4 + 168) = 0;
  *(v4 + 216) = 0;
  *(v4 + 176) = 0;
  *(v4 + 16) = 0x7465737361;
  *(v4 + 24) = 0xE500000000000000;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = &type metadata for Asset;
  *(v4 + 48) = 0;
  *(v4 + 56) = 0;
  *(v4 + 58) = 4;
  *(v4 + 184) = 0;
  *(v4 + 188) = 1;
  *(v4 + 192) = 0;
  *(v4 + 196) = 1;
  *(v4 + 200) = 0x1000100000000;
  *(v4 + 208) = 1;
  *(v4 + 96) = 0;
  *(v4 + 104) = 0;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  *(v4 + 144) = xmmword_1AFE22A20;
  *(v4 + 80) = v3;
  *(v4 + 88) = &off_1F2535378;
  *(v4 + 210) = 4;
  v5 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v5)
  {
    v2 = (*(v5 + 8))();
  }

  v6 = swift_conformsToProtocol2();
  if (v6 && v2)
  {
    *(v4 + 160) = (*(v6 + 8))(v2, v6);
  }

  *(v4 + 64) = sub_1AF5A3984;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0, 0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  qword_1EB6C30D8 = v0;
  return result;
}

uint64_t sub_1AF514444()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE550E0;
  KeyPath = swift_getKeyPath();
  v2 = &type metadata for Language;
  sub_1AF5A9240(0, &qword_1EB63B3D8, &type metadata for Language, type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF5A3B74;
  v3[5] = KeyPath;
  v3[2] = sub_1AF5A3BE4;
  v3[3] = KeyPath;
  v3[6] = KeyPath;
  type metadata accessor for PropertyDescription();
  v4 = swift_allocObject();
  *(v4 + 112) = 1;
  *(v4 + 128) = 0;
  *(v4 + 136) = 0;
  *(v4 + 120) = 0;
  v5 = MEMORY[0x1E69E7CC0];
  *(v4 + 160) = MEMORY[0x1E69E7CC0];
  *(v4 + 168) = 0;
  *(v4 + 216) = 0;
  *(v4 + 176) = 0;
  *(v4 + 16) = 0x65676175676E616CLL;
  *(v4 + 24) = 0xE800000000000000;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = &type metadata for Language;
  *(v4 + 48) = 0;
  *(v4 + 56) = 1;
  *(v4 + 58) = 0;
  *(v4 + 184) = 0;
  *(v4 + 188) = 1;
  *(v4 + 192) = 0;
  *(v4 + 196) = 1;
  *(v4 + 200) = 0x1000100000000;
  *(v4 + 208) = 1;
  *(v4 + 96) = 0;
  *(v4 + 104) = 0;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  *(v4 + 144) = xmmword_1AFE22A20;
  *(v4 + 80) = v3;
  *(v4 + 88) = &off_1F2535378;
  *(v4 + 210) = 0;
  v6 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v6)
  {
    v2 = (*(v6 + 8))();
  }

  v7 = swift_conformsToProtocol2();
  if (v7 && v2)
  {
    *(v4 + 160) = (*(v7 + 8))(v2, v7);
  }

  *(v4 + 64) = sub_1AF5A3C18;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0, 0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  v8 = swift_getKeyPath();
  v9 = MEMORY[0x1E69E6158];
  sub_1AF5A9240(0, &qword_1EB634358, MEMORY[0x1E69E6158], type metadata accessor for EntityGetSet);
  v10 = swift_allocObject();
  v10[4] = sub_1AF5A3C9C;
  v10[5] = v8;
  v10[2] = sub_1AF5A3D0C;
  v10[3] = v8;
  v10[6] = v8;
  v11 = swift_allocObject();
  *(v11 + 112) = 1;
  *(v11 + 16) = 1701080931;
  *(v11 + 24) = 0xE400000000000000;
  *(v11 + 200) = 0x1000100000000;
  *(v11 + 168) = 0;
  *(v11 + 120) = 0;
  *(v11 + 128) = 0;
  *(v11 + 216) = 0;
  *(v11 + 176) = 0;
  *(v11 + 32) = v8;
  *(v11 + 40) = v9;
  *(v11 + 48) = 0;
  *(v11 + 56) = 1;
  *(v11 + 58) = 0;
  *(v11 + 184) = 0;
  *(v11 + 188) = 1;
  *(v11 + 192) = 0;
  *(v11 + 196) = 1;
  *(v11 + 208) = 1;
  *(v11 + 64) = 0;
  *(v11 + 72) = 0;
  *(v11 + 96) = 0;
  *(v11 + 104) = 0;
  *(v11 + 136) = 0;
  *(v11 + 144) = 0;
  *(v11 + 152) = 0;
  *(v11 + 160) = v5;
  *(v11 + 80) = v10;
  *(v11 + 88) = &off_1F2535378;
  *(v11 + 210) = 0;
  v12 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v12)
  {
    v9 = (*(v12 + 8))();
  }

  v13 = swift_conformsToProtocol2();
  if (v13 && v9)
  {
    *(v11 + 160) = (*(v13 + 8))(v9, v13);
  }

  *(v11 + 64) = sub_1AF5A3D3C;
  *(v11 + 72) = v8;
  sub_1AF0FB8EC(0, 0);
  *(v11 + 168) = 0;
  *(v11 + 176) = 0;

  *(v11 + 216) = 0;
  *(v0 + 40) = v11;
  qword_1EB6C30E0 = v0;
  return result;
}

uint64_t sub_1AF514960()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C3E0;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6370];
  sub_1AF5A9240(0, &qword_1ED722B80, MEMORY[0x1E69E6370], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF5A3F50;
  v3[5] = KeyPath;
  v3[2] = sub_1AF5A3F7C;
  v3[3] = KeyPath;
  v3[6] = KeyPath;
  type metadata accessor for PropertyDescription();
  v4 = swift_allocObject();
  *(v4 + 112) = 1;
  *(v4 + 128) = 0;
  *(v4 + 136) = 0;
  *(v4 + 120) = 0;
  *(v4 + 160) = MEMORY[0x1E69E7CC0];
  *(v4 + 168) = 0;
  *(v4 + 216) = 0;
  *(v4 + 176) = 0;
  *(v4 + 16) = 0x64656C62616E65;
  *(v4 + 24) = 0xE700000000000000;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = v2;
  *(v4 + 48) = 0;
  *(v4 + 56) = 0;
  *(v4 + 58) = 0;
  *(v4 + 184) = 0;
  *(v4 + 188) = 1;
  *(v4 + 192) = 0;
  *(v4 + 196) = 1;
  *(v4 + 200) = 0x1000100000000;
  *(v4 + 208) = 1;
  *(v4 + 96) = 0;
  *(v4 + 104) = 0;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  *(v4 + 144) = xmmword_1AFE22A20;
  *(v4 + 80) = v3;
  *(v4 + 88) = &off_1F2535378;
  *(v4 + 210) = 0;
  v5 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v5)
  {
    v2 = (*(v5 + 8))();
  }

  v6 = swift_conformsToProtocol2();
  if (v6 && v2)
  {
    *(v4 + 160) = (*(v6 + 8))(v2, v6);
  }

  *(v4 + 64) = sub_1AF5A3FD8;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0, 0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  qword_1EB6C30E8 = v0;
  return result;
}

uint64_t sub_1AF514CA0()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE550F0;
  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  v3 = MEMORY[0x1E69E7360];
  sub_1AF5A9240(0, &unk_1EB634340, MEMORY[0x1E69E7360], type metadata accessor for EntityGetSet);
  v4 = swift_allocObject();
  v4[4] = sub_1AF5A4078;
  v4[5] = v2;
  v4[2] = sub_1AF5A40AC;
  v4[3] = v2;
  v4[6] = v2;
  type metadata accessor for PropertyDescription();
  v5 = swift_allocObject();
  *(v5 + 112) = 1;
  *(v5 + 128) = 0;
  *(v5 + 136) = 0;
  *(v5 + 120) = 0;
  *(v5 + 160) = MEMORY[0x1E69E7CC0];
  *(v5 + 168) = 0;
  *(v5 + 216) = 0;
  *(v5 + 176) = 0;
  *(v5 + 16) = 0x65646E4965646F6DLL;
  *(v5 + 24) = 0xE900000000000078;
  *(v5 + 32) = v2;
  *(v5 + 40) = v3;
  *(v5 + 48) = 0;
  *(v5 + 56) = 1;
  *(v5 + 58) = 0;
  *(v5 + 184) = 0;
  *(v5 + 188) = 1;
  *(v5 + 192) = 0;
  *(v5 + 196) = 1;
  *(v5 + 200) = 0x1000100000000;
  *(v5 + 208) = 1;
  *(v5 + 96) = 0;
  *(v5 + 104) = 0;
  *(v5 + 64) = 0;
  *(v5 + 72) = 0;
  *(v5 + 144) = xmmword_1AFE22A20;
  *(v5 + 80) = v4;
  *(v5 + 88) = &off_1F2535378;
  *(v5 + 210) = 0;
  v6 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v6)
  {
    v3 = (*(v6 + 8))();
  }

  v7 = swift_conformsToProtocol2();
  if (v7 && v3)
  {
    *(v5 + 160) = (*(v7 + 8))(v3, v7);
  }

  *(v5 + 64) = sub_1AF5A4108;
  *(v5 + 72) = v2;
  sub_1AF0FB8EC(0, 0);
  *(v5 + 168) = 0;
  *(v5 + 176) = 0;

  *(v5 + 216) = 0;
  v8 = &type metadata for EvolutionMode;
  sub_1AF5A9240(0, &qword_1EB63B7B0, &type metadata for EvolutionMode, type metadata accessor for EntityGetSet);
  v9 = swift_allocObject();
  v9[4] = sub_1AF5A4148;
  v9[5] = KeyPath;
  v9[2] = sub_1AF5A4178;
  v9[3] = KeyPath;
  v9[6] = KeyPath;
  v10 = swift_allocObject();
  *(v10 + 112) = 1;
  *(v10 + 128) = 0;
  *(v10 + 136) = 0;
  *(v10 + 120) = 0;
  *(v10 + 160) = MEMORY[0x1E69E7CC0];
  *(v10 + 168) = 0;
  *(v10 + 216) = 0;
  *(v10 + 176) = 0;
  *(v10 + 16) = 1701080941;
  *(v10 + 24) = 0xE400000000000000;
  *(v10 + 32) = KeyPath;
  *(v10 + 40) = &type metadata for EvolutionMode;
  *(v10 + 48) = 0;
  *(v10 + 56) = 0;
  *(v10 + 58) = 0;
  *(v10 + 184) = 0;
  *(v10 + 188) = 1;
  *(v10 + 192) = 0;
  *(v10 + 196) = 1;
  *(v10 + 200) = 0x1000100000000;
  *(v10 + 208) = 1;
  *(v10 + 96) = 0;
  *(v10 + 104) = 0;
  *(v10 + 64) = 0;
  *(v10 + 72) = 0;
  *(v10 + 144) = xmmword_1AFE22A20;
  *(v10 + 80) = v9;
  *(v10 + 88) = &off_1F2535378;
  *(v10 + 210) = 0;
  v11 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v11)
  {
    v8 = (*(v11 + 8))();
  }

  v12 = swift_conformsToProtocol2();
  if (v12 && v8)
  {
    *(v10 + 160) = (*(v12 + 8))(v8, v12);
  }

  *(v10 + 64) = sub_1AF5A418C;
  *(v10 + 72) = KeyPath;
  sub_1AF0FB8EC(0, 0);
  *(v10 + 168) = 0;
  *(v10 + 176) = 0;

  *(v10 + 216) = v5;
  *(v0 + 32) = v10;
  v13 = swift_getKeyPath();
  v14 = swift_getKeyPath();
  v15 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v16 = swift_allocObject();
  v16[4] = sub_1AF5A41CC;
  v16[5] = v13;
  v16[2] = sub_1AF5A4200;
  v16[3] = v13;
  v16[6] = v13;
  v17 = swift_allocObject();
  *(v17 + 112) = 1;
  *(v17 + 128) = 0;
  *(v17 + 136) = 0;
  *(v17 + 120) = 0;
  *(v17 + 160) = MEMORY[0x1E69E7CC0];
  *(v17 + 168) = 0;
  *(v17 + 216) = 0;
  *(v17 + 176) = 0;
  *(v17 + 16) = 0x6C616353656D6974;
  *(v17 + 24) = 0xE900000000000065;
  *(v17 + 32) = v13;
  *(v17 + 40) = v15;
  *(v17 + 48) = 0;
  *(v17 + 56) = 1;
  *(v17 + 58) = 0;
  *(v17 + 184) = 0;
  *(v17 + 188) = 1;
  *(v17 + 192) = 0;
  *(v17 + 196) = 1;
  *(v17 + 200) = 0x1000100000000;
  *(v17 + 208) = 1;
  *(v17 + 64) = 0;
  *(v17 + 72) = 0;
  *(v17 + 96) = v14;
  *(v17 + 104) = 0;
  *(v17 + 144) = xmmword_1AFE22A20;
  *(v17 + 80) = v16;
  *(v17 + 88) = &off_1F2535378;
  *(v17 + 210) = 0;
  v18 = swift_conformsToProtocol2();
  swift_retain_n();

  if (v18)
  {
    v15 = (*(v18 + 8))();
  }

  v19 = swift_conformsToProtocol2();
  if (v19 && v15)
  {
    v20 = (*(v19 + 8))(v15, v19);

    *(v17 + 160) = v20;
  }

  else
  {
  }

  *(v17 + 64) = sub_1AF5A425C;
  *(v17 + 72) = v13;
  sub_1AF0FB8EC(0, 0);
  *(v17 + 168) = 0;
  *(v17 + 176) = 0;

  *(v17 + 216) = 0;
  *(v0 + 40) = v17;
  v21 = swift_getKeyPath();
  v22 = swift_getKeyPath();
  sub_1AF57F2F4(0);
  v23 = swift_allocObject();
  v23[4] = sub_1AF5A4078;
  v23[5] = v21;
  v23[2] = sub_1AF5A429C;
  v23[3] = v21;
  v23[6] = v21;
  v24 = swift_allocObject();
  *(v24 + 104) = 0;
  *(v24 + 112) = 1;
  *(v24 + 128) = 0;
  *(v24 + 136) = 0;
  *(v24 + 120) = 0;
  *(v24 + 160) = MEMORY[0x1E69E7CC0];
  *(v24 + 216) = 0;
  sub_1AF589E74(0, &qword_1ED72F958, MEMORY[0x1E69E6448], MEMORY[0x1E69E6468], MEMORY[0x1E69E66A8]);
  v26 = v25;
  *(v24 + 168) = 0;
  *(v24 + 176) = 0;
  strcpy((v24 + 16), "velocityRange");
  *(v24 + 30) = -4864;
  *(v24 + 32) = v21;
  *(v24 + 40) = v25;
  *(v24 + 48) = 0;
  *(v24 + 56) = 1;
  *(v24 + 58) = 0;
  *(v24 + 184) = 0;
  *(v24 + 188) = 1;
  *(v24 + 192) = 0;
  *(v24 + 196) = 1;
  *(v24 + 200) = 0x1000100000000;
  *(v24 + 208) = 1;
  *(v24 + 64) = 0;
  *(v24 + 72) = 0;
  *(v24 + 96) = v22;
  *(v24 + 144) = xmmword_1AFE22A20;
  *(v24 + 80) = v23;
  *(v24 + 88) = &off_1F2535378;
  *(v24 + 210) = 0;
  v27 = swift_conformsToProtocol2();
  swift_retain_n();

  if (v27 && v26)
  {
    v26 = (*(v27 + 8))(v26, v27);
  }

  v28 = swift_conformsToProtocol2();
  if (v28 && v26)
  {
    v29 = (*(v28 + 8))(v26, v28);

    *(v24 + 160) = v29;
  }

  else
  {
  }

  v30 = *(v24 + 64);
  v31 = *(v24 + 72);
  *(v24 + 64) = sub_1AF5A42F8;
  *(v24 + 72) = v21;
  sub_1AF0FB8EC(v30, v31);
  *(v24 + 168) = 0;
  *(v24 + 176) = 0;

  *(v24 + 216) = 0;

  *(v0 + 48) = v24;
  v32 = swift_getKeyPath();
  sub_1AF581BEC(0);
  v33 = swift_allocObject();
  v33[4] = sub_1AF5A433C;
  v33[5] = v32;
  v33[2] = sub_1AF5A4354;
  v33[3] = v32;
  v33[6] = v32;
  v34 = swift_allocObject();
  *(v34 + 104) = 0;
  *(v34 + 112) = 1;
  *(v34 + 128) = 0;
  *(v34 + 136) = 0;
  *(v34 + 120) = 0;
  *(v34 + 160) = MEMORY[0x1E69E7CC0];
  *(v34 + 216) = 0;
  sub_1AF589E74(0, qword_1ED72F9E0, MEMORY[0x1E69E6448], &off_1F2532E98, type metadata accessor for Curve);
  v36 = v35;
  *(v34 + 168) = 0;
  *(v34 + 176) = 0;
  *(v34 + 16) = 0x6576727563;
  *(v34 + 24) = 0xE500000000000000;
  *(v34 + 32) = v32;
  *(v34 + 40) = v35;
  *(v34 + 48) = 16;
  *(v34 + 56) = 0;
  *(v34 + 58) = 0;
  *(v34 + 184) = 0;
  *(v34 + 188) = 1;
  *(v34 + 192) = 0;
  *(v34 + 196) = 1;
  *(v34 + 200) = 0x1000100000000;
  *(v34 + 208) = 1;
  *(v34 + 64) = 0;
  *(v34 + 72) = 0;
  *(v34 + 96) = 0;
  *(v34 + 144) = xmmword_1AFE22A20;
  *(v34 + 80) = v33;
  *(v34 + 88) = &off_1F2535378;
  *(v34 + 210) = 0;
  v37 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v37 && v36)
  {
    v36 = (*(v37 + 8))(v36, v37);
  }

  v38 = swift_conformsToProtocol2();
  if (v38 && v36)
  {
    *(v34 + 160) = (*(v38 + 8))(v36, v38);
  }

  v39 = *(v34 + 64);
  v40 = *(v34 + 72);
  *(v34 + 64) = sub_1AF5A4384;
  *(v34 + 72) = v32;
  sub_1AF0FB8EC(v39, v40);
  *(v34 + 168) = 0;
  *(v34 + 176) = 0;

  *(v34 + 216) = 0;

  *(v0 + 56) = v34;
  qword_1EB6C30F0 = v0;
  return result;
}

float sub_1AF515788()
{
  result = *v0;
  if (*(v0 + 8))
  {
    return 0.0;
  }

  return result;
}

float sub_1AF5157B0()
{
  result = *v0;
  if (*(v0 + 8) != 1)
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_1AF5158AC()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE550F0;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF5A4788;
  v3[5] = KeyPath;
  v3[2] = sub_1AF5A47BC;
  v3[3] = KeyPath;
  v3[6] = KeyPath;
  type metadata accessor for PropertyDescription();
  v4 = swift_allocObject();
  *(v4 + 112) = 1;
  *(v4 + 136) = 0;
  v5 = MEMORY[0x1E69E7CC0];
  *(v4 + 120) = 0;
  *(v4 + 128) = 0;
  *(v4 + 160) = v5;
  *(v4 + 168) = 0;
  *(v4 + 216) = 0;
  *(v4 + 176) = 0;
  *(v4 + 16) = 0x647574696C706D61;
  *(v4 + 24) = 0xE900000000000065;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = v2;
  *(v4 + 48) = 0;
  *(v4 + 56) = 0;
  *(v4 + 58) = 0;
  *(v4 + 184) = 0;
  *(v4 + 188) = 1;
  *(v4 + 192) = 0;
  *(v4 + 196) = 1;
  *(v4 + 200) = 0x1000100000000;
  *(v4 + 208) = 1;
  *(v4 + 96) = 0;
  *(v4 + 104) = 0;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  *(v4 + 144) = xmmword_1AFE22A20;
  *(v4 + 80) = v3;
  *(v4 + 88) = &off_1F2535378;
  *(v4 + 210) = 0;
  v6 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v6)
  {
    v7 = (*(v6 + 8))();
  }

  else
  {
    v7 = v2;
  }

  v8 = swift_conformsToProtocol2();
  if (v8 && v7)
  {
    *(v4 + 160) = (*(v8 + 8))(v7, v8);
  }

  *(v4 + 64) = sub_1AF5A4818;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0, 0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  v9 = swift_getKeyPath();
  v10 = swift_allocObject();
  v10[4] = sub_1AF5A957C;
  v10[5] = v9;
  v10[2] = sub_1AF5AA06C;
  v10[3] = v9;
  v10[6] = v9;
  v11 = swift_allocObject();
  *(v11 + 112) = 1;
  *(v11 + 128) = 0;
  *(v11 + 136) = 0;
  *(v11 + 120) = 0;
  *(v11 + 160) = MEMORY[0x1E69E7CC0];
  *(v11 + 168) = 0;
  *(v11 + 216) = 0;
  *(v11 + 176) = 0;
  *(v11 + 16) = 0x636E657571657266;
  *(v11 + 24) = 0xE900000000000079;
  *(v11 + 32) = v9;
  *(v11 + 40) = v2;
  *(v11 + 48) = 4;
  *(v11 + 56) = 0;
  *(v11 + 58) = 0;
  *(v11 + 184) = 0;
  *(v11 + 188) = 1;
  *(v11 + 192) = 0;
  *(v11 + 196) = 1;
  *(v11 + 200) = 0x1000100000000;
  *(v11 + 208) = 1;
  *(v11 + 64) = 0;
  *(v11 + 72) = 0;
  *(v11 + 96) = 0;
  *(v11 + 104) = 0;
  *(v11 + 144) = xmmword_1AFE22A20;
  *(v11 + 80) = v10;
  *(v11 + 88) = &off_1F2535378;
  *(v11 + 210) = 0;
  swift_retain_n();
  if (v6)
  {
    v12 = (*(v6 + 8))();
  }

  else
  {
    v12 = v2;
  }

  v13 = swift_conformsToProtocol2();
  if (v13 && v12)
  {
    *(v11 + 160) = (*(v13 + 8))(v12, v13);
  }

  *(v11 + 64) = sub_1AF5A9A0C;
  *(v11 + 72) = v9;
  sub_1AF0FB8EC(0, 0);
  *(v11 + 168) = 0;
  *(v11 + 176) = 0;

  *(v11 + 216) = 0;
  *(v0 + 40) = v11;
  v14 = swift_getKeyPath();
  v15 = swift_allocObject();
  v15[4] = sub_1AF5A957C;
  v15[5] = v14;
  v15[2] = sub_1AF5AA06C;
  v15[3] = v14;
  v15[6] = v14;
  v16 = swift_allocObject();
  *(v16 + 112) = 1;
  *(v16 + 128) = 0;
  *(v16 + 136) = 0;
  *(v16 + 120) = 0;
  *(v16 + 160) = MEMORY[0x1E69E7CC0];
  *(v16 + 168) = 0;
  *(v16 + 216) = 0;
  *(v16 + 176) = 0;
  *(v16 + 16) = 0x6968536573616870;
  *(v16 + 24) = 0xEA00000000007466;
  *(v16 + 32) = v14;
  *(v16 + 40) = v2;
  *(v16 + 48) = 8;
  *(v16 + 56) = 0;
  *(v16 + 58) = 0;
  *(v16 + 184) = 0;
  *(v16 + 188) = 1;
  *(v16 + 192) = 0;
  *(v16 + 196) = 1;
  *(v16 + 200) = 0x1000100000000;
  *(v16 + 208) = 1;
  *(v16 + 64) = 0;
  *(v16 + 72) = 0;
  *(v16 + 96) = 0;
  *(v16 + 104) = 0;
  *(v16 + 144) = xmmword_1AFE22A20;
  *(v16 + 80) = v15;
  *(v16 + 88) = &off_1F2535378;
  *(v16 + 210) = 0;
  swift_retain_n();
  if (v6)
  {
    v2 = (*(v6 + 8))();
  }

  v17 = swift_conformsToProtocol2();
  if (v17 && v2)
  {
    *(v16 + 160) = (*(v17 + 8))(v2, v17);
  }

  *(v16 + 64) = sub_1AF5A9A0C;
  *(v16 + 72) = v14;
  sub_1AF0FB8EC(0, 0);
  *(v16 + 168) = 0;
  *(v16 + 176) = 0;

  *(v16 + 216) = 0;
  *(v0 + 48) = v16;
  v18 = swift_getKeyPath();
  sub_1AF57AAE8(0);
  v19 = swift_allocObject();
  v19[4] = sub_1AF5A4858;
  v19[5] = v18;
  v19[2] = sub_1AF5A4870;
  v19[3] = v18;
  v19[6] = v18;
  v20 = swift_allocObject();
  *(v20 + 104) = 0;
  *(v20 + 112) = 1;
  *(v20 + 128) = 0;
  *(v20 + 136) = 0;
  *(v20 + 120) = 0;
  *(v20 + 160) = MEMORY[0x1E69E7CC0];
  *(v20 + 216) = 0;
  sub_1AF583D60(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
  v22 = v21;
  *(v20 + 168) = 0;
  *(v20 + 176) = 0;
  *(v20 + 16) = 0x61746C6564;
  *(v20 + 24) = 0xE500000000000000;
  *(v20 + 32) = v18;
  *(v20 + 40) = v21;
  *(v20 + 48) = 16;
  *(v20 + 56) = 0;
  *(v20 + 58) = 0;
  *(v20 + 184) = 0;
  *(v20 + 188) = 1;
  *(v20 + 192) = 0;
  *(v20 + 196) = 1;
  *(v20 + 200) = 0x1000100000000;
  *(v20 + 208) = 1;
  *(v20 + 64) = 0;
  *(v20 + 72) = 0;
  *(v20 + 96) = 0;
  *(v20 + 144) = xmmword_1AFE22A20;
  *(v20 + 80) = v19;
  *(v20 + 88) = &off_1F2535378;
  *(v20 + 210) = 0;
  v23 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v23 && v22)
  {
    v22 = (*(v23 + 8))(v22, v23);
  }

  v24 = swift_conformsToProtocol2();
  if (v24 && v22)
  {
    *(v20 + 160) = (*(v24 + 8))(v22, v24);
  }

  v25 = *(v20 + 64);
  v26 = *(v20 + 72);
  *(v20 + 64) = sub_1AF5A48D4;
  *(v20 + 72) = v18;
  sub_1AF0FB8EC(v25, v26);
  *(v20 + 168) = 0;
  *(v20 + 176) = 0;

  *(v20 + 216) = 0;

  *(v0 + 56) = v20;
  qword_1EB6C30F8 = v0;
  return result;
}

double sub_1AF51618C(uint64_t a1)
{
  sub_1AF5795B0(0);
  v2 = swift_allocObject();
  *&result = 1;
  *(v2 + 16) = xmmword_1AFE431C0;
  *(v2 + 32) = 48;
  *(v2 + 40) = 0xE100000000000000;
  *(v2 + 72) = a1;
  *(v2 + 48) = 0;
  return result;
}

uint64_t sub_1AF5161E0()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE55270;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF5A4A18;
  v3[5] = KeyPath;
  v3[2] = sub_1AF5A4A4C;
  v3[3] = KeyPath;
  v3[6] = KeyPath;
  type metadata accessor for PropertyDescription();
  v4 = swift_allocObject();
  *(v4 + 112) = 1;
  *(v4 + 128) = 0;
  *(v4 + 136) = 0;
  *(v4 + 120) = 0;
  *(v4 + 160) = MEMORY[0x1E69E7CC0];
  *(v4 + 168) = 0;
  *(v4 + 216) = 0;
  *(v4 + 176) = 0;
  *(v4 + 16) = 0x6D69546E69676562;
  *(v4 + 24) = 0xE900000000000065;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = v2;
  *(v4 + 48) = 8;
  *(v4 + 56) = 0;
  *(v4 + 58) = 0;
  *(v4 + 184) = 0;
  *(v4 + 188) = 1;
  *(v4 + 192) = 0;
  *(v4 + 196) = 1;
  *(v4 + 200) = 0x1000100000000;
  *(v4 + 208) = 1;
  *(v4 + 96) = 0;
  *(v4 + 104) = 0;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  *(v4 + 144) = xmmword_1AFE22A20;
  *(v4 + 80) = v3;
  *(v4 + 88) = &off_1F2535378;
  *(v4 + 210) = 0;
  v5 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v5)
  {
    v6 = (*(v5 + 8))();
  }

  else
  {
    v6 = v2;
  }

  v7 = swift_conformsToProtocol2();
  if (v7 && v6)
  {
    *(v4 + 160) = (*(v7 + 8))(v6, v7);
  }

  v8 = *(v4 + 64);
  v9 = *(v4 + 72);
  *(v4 + 64) = sub_1AF5A4AA8;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(v8, v9);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;

  *(v0 + 32) = v4;
  v10 = swift_getKeyPath();
  v11 = swift_allocObject();
  v11[4] = sub_1AF5A9580;
  v11[5] = v10;
  v11[2] = sub_1AF5AA074;
  v11[3] = v10;
  v11[6] = v10;
  v12 = swift_allocObject();
  *(v12 + 112) = 1;
  *(v12 + 128) = 0;
  *(v12 + 136) = 0;
  *(v12 + 120) = 0;
  *(v12 + 160) = MEMORY[0x1E69E7CC0];
  *(v12 + 168) = 0;
  *(v12 + 210) = 0;
  *(v12 + 216) = 0;
  *(v12 + 176) = 0;
  *(v12 + 16) = 0x6E6F697461727564;
  *(v12 + 24) = 0xE800000000000000;
  *(v12 + 32) = v10;
  *(v12 + 40) = v2;
  *(v12 + 48) = 0;
  *(v12 + 56) = 0;
  *(v12 + 58) = 0;
  *(v12 + 184) = 0;
  *(v12 + 188) = 1;
  *(v12 + 192) = 0;
  *(v12 + 196) = 1;
  *(v12 + 200) = 0x1000100000000;
  *(v12 + 208) = 1;
  *(v12 + 64) = 0;
  *(v12 + 72) = 0;
  *(v12 + 96) = 0;
  *(v12 + 104) = 0;
  *(v12 + 144) = xmmword_1AFE22A20;
  *(v12 + 80) = v11;
  *(v12 + 88) = &off_1F2535378;
  *(v12 + 210) = 0;
  swift_retain_n();
  if (v5)
  {
    v13 = (*(v5 + 8))();
  }

  else
  {
    v13 = v2;
  }

  v114 = v5;
  v14 = swift_conformsToProtocol2();
  if (v14 && v13)
  {
    *(v12 + 160) = (*(v14 + 8))(v13, v14);
  }

  v15 = *(v12 + 64);
  v16 = *(v12 + 72);
  *(v12 + 64) = sub_1AF5A9A14;
  *(v12 + 72) = v10;
  sub_1AF0FB8EC(v15, v16);
  *(v12 + 168) = 0;
  *(v12 + 176) = 0;

  *(v12 + 216) = 0;

  *(v0 + 40) = v12;
  v17 = swift_getKeyPath();
  v18 = swift_getKeyPath();
  v19 = MEMORY[0x1E69E7360];
  sub_1AF5A9240(0, &unk_1EB634340, MEMORY[0x1E69E7360], type metadata accessor for EntityGetSet);
  v20 = swift_allocObject();
  v20[4] = sub_1AF5A4AE8;
  v20[5] = v18;
  v20[2] = sub_1AF5A4B1C;
  v20[3] = v18;
  v20[6] = v18;
  v21 = swift_allocObject();
  *(v21 + 112) = 1;
  *(v21 + 128) = 0;
  *(v21 + 136) = 0;
  *(v21 + 120) = 0;
  *(v21 + 160) = MEMORY[0x1E69E7CC0];
  *(v21 + 168) = 0;
  *(v21 + 210) = 0;
  *(v21 + 216) = 0;
  *(v21 + 176) = 0;
  *(v21 + 16) = 0x6E49676E69736165;
  *(v21 + 24) = 0xEB00000000786564;
  *(v21 + 32) = v18;
  *(v21 + 40) = v19;
  *(v21 + 48) = 0;
  *(v21 + 56) = 1;
  *(v21 + 58) = 0;
  *(v21 + 184) = 0;
  *(v21 + 188) = 1;
  *(v21 + 192) = 0;
  *(v21 + 196) = 1;
  *(v21 + 200) = 0x1000100000000;
  *(v21 + 208) = 1;
  *(v21 + 64) = 0;
  *(v21 + 72) = 0;
  *(v21 + 96) = 0;
  *(v21 + 104) = 0;
  *(v21 + 144) = xmmword_1AFE22A20;
  *(v21 + 80) = v20;
  *(v21 + 88) = &off_1F2535378;
  *(v21 + 210) = 0;
  v22 = swift_conformsToProtocol2();
  swift_retain_n();
  v112 = v22;
  if (v22)
  {
    v23 = (*(v22 + 8))();
  }

  else
  {
    v23 = v19;
  }

  v24 = swift_conformsToProtocol2();
  if (v24 && v23)
  {
    *(v21 + 160) = (*(v24 + 8))(v23, v24);
  }

  v25 = *(v21 + 64);
  v26 = *(v21 + 72);
  *(v21 + 64) = sub_1AF5A4B78;
  *(v21 + 72) = v18;
  sub_1AF0FB8EC(v25, v26);
  *(v21 + 168) = 0;
  *(v21 + 176) = 0;

  *(v21 + 216) = 0;

  v27 = &type metadata for EasingFunction;
  sub_1AF5A9240(0, &qword_1EB63B800, &type metadata for EasingFunction, type metadata accessor for EntityGetSet);
  v28 = swift_allocObject();
  v28[4] = sub_1AF5A4BB8;
  v28[5] = v17;
  v28[2] = sub_1AF5A4BF0;
  v28[3] = v17;
  v28[6] = v17;
  v29 = swift_allocObject();
  *(v29 + 112) = 1;
  *(v29 + 128) = 0;
  *(v29 + 136) = 0;
  *(v29 + 120) = 0;
  *(v29 + 160) = MEMORY[0x1E69E7CC0];
  *(v29 + 168) = 0;
  *(v29 + 210) = 0;
  *(v29 + 216) = 0;
  *(v29 + 176) = 0;
  *(v29 + 16) = 0x676E69736165;
  *(v29 + 24) = 0xE600000000000000;
  *(v29 + 32) = v17;
  *(v29 + 40) = &type metadata for EasingFunction;
  *(v29 + 48) = 24;
  *(v29 + 56) = 0;
  *(v29 + 58) = 0;
  *(v29 + 184) = 0;
  *(v29 + 188) = 1;
  *(v29 + 192) = 0;
  *(v29 + 196) = 1;
  *(v29 + 200) = 0x1000100000000;
  *(v29 + 208) = 1;
  *(v29 + 64) = 0;
  *(v29 + 72) = 0;
  *(v29 + 96) = 0;
  *(v29 + 104) = 0;
  *(v29 + 144) = xmmword_1AFE22A20;
  *(v29 + 80) = v28;
  *(v29 + 88) = &off_1F2535378;
  *(v29 + 210) = 0;
  v30 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v30)
  {
    v27 = (*(v30 + 8))();
  }

  v31 = swift_conformsToProtocol2();
  if (v31 && v27)
  {
    *(v29 + 160) = (*(v31 + 8))(v27, v31);
  }

  v32 = *(v29 + 64);
  v33 = *(v29 + 72);
  *(v29 + 64) = sub_1AF5A4BF4;
  *(v29 + 72) = v17;
  sub_1AF0FB8EC(v32, v33);
  *(v29 + 168) = 0;
  *(v29 + 176) = 0;

  *(v29 + 216) = v21;

  *(v0 + 48) = v29;
  v34 = swift_getKeyPath();
  v35 = swift_getKeyPath();
  v36 = swift_allocObject();
  v36[4] = sub_1AF5A9580;
  v36[5] = v34;
  v36[2] = sub_1AF5AA074;
  v36[3] = v34;
  v36[6] = v34;
  v37 = swift_allocObject();
  *(v37 + 112) = 1;
  *(v37 + 128) = 0;
  *(v37 + 136) = 0;
  *(v37 + 120) = 0;
  *(v37 + 160) = MEMORY[0x1E69E7CC0];
  *(v37 + 168) = 0;
  *(v37 + 210) = 0;
  *(v37 + 216) = 0;
  *(v37 + 176) = 0;
  strcpy((v37 + 16), "backAmplitude");
  *(v37 + 30) = -4864;
  *(v37 + 32) = v34;
  *(v37 + 40) = v2;
  *(v37 + 48) = 0;
  *(v37 + 56) = 1;
  *(v37 + 58) = 0;
  *(v37 + 184) = 0;
  *(v37 + 188) = 1;
  *(v37 + 192) = 0;
  *(v37 + 196) = 1;
  *(v37 + 200) = 0x1000100000000;
  *(v37 + 208) = 1;
  *(v37 + 64) = 0;
  *(v37 + 72) = 0;
  *(v37 + 96) = v35;
  *(v37 + 104) = 0;
  *(v37 + 144) = xmmword_1AFE22A20;
  *(v37 + 80) = v36;
  *(v37 + 88) = &off_1F2535378;
  *(v37 + 210) = 0;
  swift_retain_n();

  if (v114)
  {
    v2 = (*(v114 + 8))();
  }

  v38 = swift_conformsToProtocol2();
  if (v38 && v2)
  {
    v39 = (*(v38 + 8))(v2, v38);

    *(v37 + 160) = v39;
  }

  else
  {
  }

  v40 = *(v37 + 64);
  v41 = *(v37 + 72);
  *(v37 + 64) = sub_1AF5A9A14;
  *(v37 + 72) = v34;
  sub_1AF0FB8EC(v40, v41);
  *(v37 + 168) = 0;
  *(v37 + 176) = 0;

  *(v37 + 216) = 0;

  v113 = v0;
  *(v0 + 56) = v37;
  v42 = swift_getKeyPath();
  v43 = swift_getKeyPath();
  sub_1AF57C8C8(0);
  v44 = swift_allocObject();
  v44[4] = sub_1AF5A4AE8;
  v44[5] = v42;
  v44[2] = sub_1AF5A4C34;
  v44[3] = v42;
  v44[6] = v42;
  v45 = swift_allocObject();
  *(v45 + 104) = 0;
  *(v45 + 112) = 1;
  *(v45 + 128) = 0;
  *(v45 + 136) = 0;
  *(v45 + 120) = 0;
  *(v45 + 160) = MEMORY[0x1E69E7CC0];
  *(v45 + 210) = 0;
  *(v45 + 216) = 0;
  v46 = MEMORY[0x1E69E6448];
  sub_1AF583D60(0, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
  v48 = v47;
  *(v45 + 168) = 0;
  *(v45 + 176) = 0;
  strcpy((v45 + 16), "bounceParams");
  *(v45 + 29) = 0;
  *(v45 + 30) = -5120;
  *(v45 + 32) = v42;
  *(v45 + 40) = v47;
  *(v45 + 48) = 0;
  *(v45 + 56) = 1;
  *(v45 + 58) = 0;
  *(v45 + 184) = 0;
  *(v45 + 188) = 1;
  *(v45 + 192) = 0;
  *(v45 + 196) = 1;
  *(v45 + 200) = 0x1000100000000;
  *(v45 + 208) = 1;
  *(v45 + 64) = 0;
  *(v45 + 72) = 0;
  *(v45 + 96) = v43;
  *(v45 + 144) = xmmword_1AFE22A20;
  *(v45 + 80) = v44;
  *(v45 + 88) = &off_1F2535378;
  *(v45 + 210) = 0;
  v49 = swift_conformsToProtocol2();
  if (v49)
  {
    v50 = v48;
  }

  else
  {
    v50 = 0;
  }

  swift_retain_n();

  v51 = v48;
  if (v50)
  {
    v51 = (*(v49 + 8))(v50, v49);
  }

  v52 = swift_conformsToProtocol2();
  if (v52 && v51)
  {
    v53 = (*(v52 + 8))(v51, v52);

    *(v45 + 160) = v53;
  }

  else
  {
  }

  v54 = *(v45 + 64);
  v55 = *(v45 + 72);
  *(v45 + 64) = sub_1AF5A4C90;
  *(v45 + 72) = v42;
  sub_1AF0FB8EC(v54, v55);
  *(v45 + 168) = 0;
  *(v45 + 176) = 0;

  *(v45 + 216) = 0;

  v113[8] = v45;
  v56 = swift_getKeyPath();
  v57 = swift_getKeyPath();
  v58 = swift_allocObject();
  v58[4] = sub_1AF5AA400;
  v58[5] = v56;
  v58[2] = sub_1AF5AA078;
  v58[3] = v56;
  v58[6] = v56;
  v59 = swift_allocObject();
  *(v59 + 112) = 1;
  *(v59 + 128) = 0;
  *(v59 + 136) = 0;
  *(v59 + 120) = 0;
  *(v59 + 160) = MEMORY[0x1E69E7CC0];
  *(v59 + 168) = 0;
  *(v59 + 210) = 0;
  *(v59 + 216) = 0;
  *(v59 + 176) = 0;
  strcpy((v59 + 16), "elasticParams");
  *(v59 + 30) = -4864;
  *(v59 + 32) = v56;
  *(v59 + 40) = v48;
  *(v59 + 48) = 0;
  *(v59 + 56) = 1;
  *(v59 + 58) = 0;
  *(v59 + 184) = 0;
  *(v59 + 188) = 1;
  *(v59 + 192) = 0;
  *(v59 + 196) = 1;
  *(v59 + 200) = 0x1000100000000;
  *(v59 + 208) = 1;
  *(v59 + 64) = 0;
  *(v59 + 72) = 0;
  *(v59 + 96) = v57;
  *(v59 + 104) = 0;
  *(v59 + 144) = xmmword_1AFE22A20;
  *(v59 + 80) = v58;
  *(v59 + 88) = &off_1F2535378;
  *(v59 + 210) = 0;
  swift_retain_n();

  if (v50)
  {
    v48 = (*(v49 + 8))(v50, v49);
  }

  v60 = swift_conformsToProtocol2();
  if (v60 && v48)
  {
    v61 = (*(v60 + 8))(v48, v60);

    *(v59 + 160) = v61;
  }

  else
  {
  }

  v62 = *(v59 + 64);
  v63 = *(v59 + 72);
  *(v59 + 64) = sub_1AF5A9A18;
  *(v59 + 72) = v56;
  sub_1AF0FB8EC(v62, v63);
  *(v59 + 168) = 0;
  *(v59 + 176) = 0;

  *(v59 + 216) = 0;

  v113[9] = v59;
  v64 = swift_getKeyPath();
  v65 = swift_getKeyPath();
  v66 = swift_allocObject();
  v66[4] = sub_1AF5A9580;
  v66[5] = v64;
  v66[2] = sub_1AF5AA074;
  v66[3] = v64;
  v66[6] = v64;
  v67 = swift_allocObject();
  *(v67 + 112) = 1;
  *(v67 + 128) = 0;
  *(v67 + 136) = 0;
  *(v67 + 120) = 0;
  *(v67 + 160) = MEMORY[0x1E69E7CC0];
  *(v67 + 168) = 0;
  *(v67 + 216) = 0;
  *(v67 + 176) = 0;
  *(v67 + 16) = 0xD000000000000013;
  *(v67 + 24) = 0x80000001AFF2BCE0;
  *(v67 + 32) = v64;
  *(v67 + 40) = v46;
  *(v67 + 48) = 0;
  *(v67 + 56) = 1;
  *(v67 + 58) = 0;
  *(v67 + 184) = 0;
  *(v67 + 188) = 1;
  *(v67 + 192) = 0;
  *(v67 + 196) = 1;
  *(v67 + 200) = 0x1000100000000;
  *(v67 + 208) = 1;
  *(v67 + 64) = 0;
  *(v67 + 72) = 0;
  *(v67 + 96) = v65;
  *(v67 + 104) = 0;
  *(v67 + 144) = xmmword_1AFE22A20;
  *(v67 + 80) = v66;
  *(v67 + 88) = &off_1F2535378;
  *(v67 + 210) = 0;
  swift_retain_n();

  if (v114)
  {
    v68 = (*(v114 + 8))();
  }

  else
  {
    v68 = v46;
  }

  v69 = swift_conformsToProtocol2();
  if (v69 && v68)
  {
    v70 = (*(v69 + 8))(v68, v69);

    *(v67 + 160) = v70;
  }

  else
  {
  }

  *(v67 + 64) = sub_1AF5A9A14;
  *(v67 + 72) = v64;
  sub_1AF0FB8EC(0, 0);
  *(v67 + 168) = 0;
  *(v67 + 176) = 0;

  *(v67 + 216) = 0;
  v113[10] = v67;
  v71 = swift_getKeyPath();
  v72 = swift_getKeyPath();
  v73 = swift_allocObject();
  v73[4] = sub_1AF5A9580;
  v73[5] = v71;
  v73[2] = sub_1AF5AA074;
  v73[3] = v71;
  v73[6] = v71;
  v74 = swift_allocObject();
  *(v74 + 112) = 1;
  *(v74 + 128) = 0;
  *(v74 + 136) = 0;
  *(v74 + 120) = 0;
  *(v74 + 160) = MEMORY[0x1E69E7CC0];
  *(v74 + 168) = 0;
  *(v74 + 216) = 0;
  *(v74 + 176) = 0;
  *(v74 + 16) = 0x6874697261676F6CLL;
  *(v74 + 24) = 0xEF6573614263696DLL;
  *(v74 + 32) = v71;
  *(v74 + 40) = v46;
  *(v74 + 48) = 0;
  *(v74 + 56) = 1;
  *(v74 + 58) = 0;
  *(v74 + 184) = 0;
  *(v74 + 188) = 1;
  *(v74 + 192) = 0;
  *(v74 + 196) = 1;
  *(v74 + 200) = 0x1000100000000;
  *(v74 + 208) = 1;
  *(v74 + 64) = 0;
  *(v74 + 72) = 0;
  *(v74 + 96) = v72;
  *(v74 + 104) = 0;
  *(v74 + 144) = xmmword_1AFE22A20;
  *(v74 + 80) = v73;
  *(v74 + 88) = &off_1F2535378;
  *(v74 + 210) = 0;
  swift_retain_n();

  if (v114)
  {
    v75 = (*(v114 + 8))();
  }

  else
  {
    v75 = v46;
  }

  v76 = swift_conformsToProtocol2();
  if (v76 && v75)
  {
    v77 = (*(v76 + 8))(v75, v76);

    *(v74 + 160) = v77;
  }

  else
  {
  }

  *(v74 + 64) = sub_1AF5A9A14;
  *(v74 + 72) = v71;
  sub_1AF0FB8EC(0, 0);
  *(v74 + 168) = 0;
  *(v74 + 176) = 0;

  *(v74 + 216) = 0;
  v113[11] = v74;
  v78 = swift_getKeyPath();
  v79 = swift_getKeyPath();
  v80 = swift_allocObject();
  v80[4] = sub_1AF5A9580;
  v80[5] = v78;
  v80[2] = sub_1AF5AA074;
  v80[3] = v78;
  v80[6] = v78;
  v81 = swift_allocObject();
  *(v81 + 112) = 1;
  *(v81 + 128) = 0;
  *(v81 + 136) = 0;
  *(v81 + 120) = 0;
  *(v81 + 160) = MEMORY[0x1E69E7CC0];
  *(v81 + 168) = 0;
  *(v81 + 216) = 0;
  *(v81 + 176) = 0;
  *(v81 + 16) = 0x6C61567265776F70;
  *(v81 + 24) = 0xEA00000000006575;
  *(v81 + 32) = v78;
  *(v81 + 40) = v46;
  *(v81 + 48) = 0;
  *(v81 + 56) = 1;
  *(v81 + 58) = 0;
  *(v81 + 184) = 0;
  *(v81 + 188) = 1;
  *(v81 + 192) = 0;
  *(v81 + 196) = 1;
  *(v81 + 200) = 0x1000100000000;
  *(v81 + 208) = 1;
  *(v81 + 64) = 0;
  *(v81 + 72) = 0;
  *(v81 + 96) = v79;
  *(v81 + 104) = 0;
  *(v81 + 144) = xmmword_1AFE22A20;
  *(v81 + 80) = v80;
  *(v81 + 88) = &off_1F2535378;
  *(v81 + 210) = 0;
  swift_retain_n();

  if (v114)
  {
    v82 = (*(v114 + 8))();
  }

  else
  {
    v82 = v46;
  }

  v83 = swift_conformsToProtocol2();
  if (v83 && v82)
  {
    v84 = (*(v83 + 8))(v82, v83);

    *(v81 + 160) = v84;
  }

  else
  {
  }

  *(v81 + 64) = sub_1AF5A9A14;
  *(v81 + 72) = v78;
  sub_1AF0FB8EC(0, 0);
  *(v81 + 168) = 0;
  *(v81 + 176) = 0;

  *(v81 + 216) = 0;
  v113[12] = v81;
  v85 = swift_getKeyPath();
  v86 = swift_allocObject();
  v86[4] = sub_1AF5A9580;
  v86[5] = v85;
  v86[2] = sub_1AF5AA074;
  v86[3] = v85;
  v86[6] = v85;
  v87 = swift_allocObject();
  *(v87 + 112) = 1;
  *(v87 + 128) = 0;
  *(v87 + 136) = 0;
  *(v87 + 120) = 0;
  *(v87 + 160) = MEMORY[0x1E69E7CC0];
  *(v87 + 168) = 0;
  *(v87 + 216) = 0;
  *(v87 + 176) = 0;
  *(v87 + 16) = 0x6F43746165706572;
  *(v87 + 24) = 0xEB00000000746E75;
  *(v87 + 32) = v85;
  *(v87 + 40) = v46;
  *(v87 + 48) = 16;
  *(v87 + 56) = 0;
  *(v87 + 58) = 0;
  *(v87 + 184) = 0;
  *(v87 + 188) = 1;
  *(v87 + 192) = 0;
  *(v87 + 196) = 1;
  *(v87 + 200) = 0x1000100000000;
  *(v87 + 208) = 1;
  *(v87 + 64) = 0;
  *(v87 + 72) = 0;
  *(v87 + 96) = 0;
  *(v87 + 104) = 0;
  *(v87 + 144) = xmmword_1AFE22A20;
  *(v87 + 80) = v86;
  *(v87 + 88) = &off_1F2535378;
  *(v87 + 210) = 0;
  swift_retain_n();
  if (v114)
  {
    v46 = (*(v114 + 8))();
  }

  v88 = swift_conformsToProtocol2();
  if (v88 && v46)
  {
    *(v87 + 160) = (*(v88 + 8))(v46, v88);
  }

  *(v87 + 64) = sub_1AF5A9A14;
  *(v87 + 72) = v85;
  sub_1AF0FB8EC(0, 0);
  *(v87 + 168) = 0;
  *(v87 + 176) = 0;

  *(v87 + 216) = 0;
  v113[13] = v87;
  v89 = swift_getKeyPath();
  v90 = swift_getKeyPath();
  v91 = swift_allocObject();
  v91[4] = sub_1AF5AA400;
  v91[5] = v90;
  v91[2] = sub_1AF5AA07C;
  v91[3] = v90;
  v91[6] = v90;
  v92 = swift_allocObject();
  *(v92 + 112) = 1;
  *(v92 + 128) = 0;
  *(v92 + 136) = 0;
  *(v92 + 120) = 0;
  *(v92 + 160) = MEMORY[0x1E69E7CC0];
  *(v92 + 168) = 0;
  *(v92 + 216) = 0;
  *(v92 + 176) = 0;
  *(v92 + 16) = 0xD000000000000010;
  *(v92 + 24) = 0x80000001AFF2BD00;
  *(v92 + 32) = v90;
  v93 = MEMORY[0x1E69E7360];
  *(v92 + 40) = MEMORY[0x1E69E7360];
  *(v92 + 48) = 0;
  *(v92 + 56) = 1;
  *(v92 + 58) = 0;
  *(v92 + 184) = 0;
  *(v92 + 188) = 1;
  *(v92 + 192) = 0;
  *(v92 + 196) = 1;
  *(v92 + 200) = 0x1000100000000;
  *(v92 + 208) = 1;
  *(v92 + 64) = 0;
  *(v92 + 72) = 0;
  *(v92 + 96) = 0;
  *(v92 + 104) = 0;
  *(v92 + 144) = xmmword_1AFE22A20;
  *(v92 + 80) = v91;
  *(v92 + 88) = &off_1F2535378;
  *(v92 + 210) = 0;
  swift_retain_n();
  if (v112)
  {
    v94 = (*(v112 + 8))();
  }

  else
  {
    v94 = v93;
  }

  v95 = swift_conformsToProtocol2();
  if (v95 && v94)
  {
    *(v92 + 160) = (*(v95 + 8))(v94, v95);
  }

  *(v92 + 64) = sub_1AF5A9A1C;
  *(v92 + 72) = v90;
  sub_1AF0FB8EC(0, 0);
  *(v92 + 168) = 0;
  *(v92 + 176) = 0;

  *(v92 + 216) = 0;
  v96 = &type metadata for FillMode;
  sub_1AF5A9240(0, &qword_1EB63B808, &type metadata for FillMode, type metadata accessor for EntityGetSet);
  v97 = swift_allocObject();
  v97[4] = sub_1AF5A4CD4;
  v97[5] = v89;
  v97[2] = sub_1AF5A4D00;
  v97[3] = v89;
  v97[6] = v89;
  v98 = swift_allocObject();
  *(v98 + 112) = 1;
  *(v98 + 128) = 0;
  *(v98 + 136) = 0;
  *(v98 + 120) = 0;
  *(v98 + 160) = MEMORY[0x1E69E7CC0];
  *(v98 + 168) = 0;
  *(v98 + 216) = 0;
  *(v98 + 176) = 0;
  *(v98 + 16) = 0x77726F466C6C6966;
  *(v98 + 24) = 0xEB00000000647261;
  *(v98 + 32) = v89;
  *(v98 + 40) = &type metadata for FillMode;
  *(v98 + 48) = 21;
  *(v98 + 56) = 0;
  *(v98 + 58) = 0;
  *(v98 + 184) = 0;
  *(v98 + 188) = 1;
  *(v98 + 192) = 0;
  *(v98 + 196) = 1;
  *(v98 + 200) = 0x1000100000000;
  *(v98 + 208) = 1;
  *(v98 + 64) = 0;
  *(v98 + 72) = 0;
  *(v98 + 96) = 0;
  *(v98 + 104) = 0;
  *(v98 + 144) = xmmword_1AFE22A20;
  *(v98 + 80) = v97;
  *(v98 + 88) = &off_1F2535378;
  *(v98 + 210) = 0;
  v99 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v99)
  {
    v100 = (*(v99 + 8))();
  }

  else
  {
    v100 = &type metadata for FillMode;
  }

  v101 = swift_conformsToProtocol2();
  if (v101 && v100)
  {
    *(v98 + 160) = (*(v101 + 8))(v100, v101);
  }

  *(v98 + 64) = sub_1AF5A4D5C;
  *(v98 + 72) = v89;
  sub_1AF0FB8EC(0, 0);
  *(v98 + 168) = 0;
  *(v98 + 176) = 0;

  *(v98 + 216) = v92;
  v113[14] = v98;
  v102 = swift_getKeyPath();
  v103 = swift_getKeyPath();
  v104 = swift_allocObject();
  v104[4] = sub_1AF5AA400;
  v104[5] = v103;
  v104[2] = sub_1AF5AA07C;
  v104[3] = v103;
  v104[6] = v103;
  v105 = swift_allocObject();
  *(v105 + 112) = 1;
  *(v105 + 128) = 0;
  *(v105 + 136) = 0;
  *(v105 + 120) = 0;
  *(v105 + 160) = MEMORY[0x1E69E7CC0];
  *(v105 + 168) = 0;
  *(v105 + 216) = 0;
  *(v105 + 176) = 0;
  *(v105 + 16) = 0xD000000000000011;
  *(v105 + 24) = 0x80000001AFF2BD20;
  *(v105 + 32) = v103;
  v106 = MEMORY[0x1E69E7360];
  *(v105 + 40) = MEMORY[0x1E69E7360];
  *(v105 + 48) = 0;
  *(v105 + 56) = 1;
  *(v105 + 58) = 0;
  *(v105 + 184) = 0;
  *(v105 + 188) = 1;
  *(v105 + 192) = 0;
  *(v105 + 196) = 1;
  *(v105 + 200) = 0x1000100000000;
  *(v105 + 208) = 1;
  *(v105 + 64) = 0;
  *(v105 + 72) = 0;
  *(v105 + 96) = 0;
  *(v105 + 104) = 0;
  *(v105 + 144) = xmmword_1AFE22A20;
  *(v105 + 80) = v104;
  *(v105 + 88) = &off_1F2535378;
  *(v105 + 210) = 0;
  swift_retain_n();
  if (v112)
  {
    v106 = (*(v112 + 8))();
  }

  v107 = swift_conformsToProtocol2();
  if (v107 && v106)
  {
    *(v105 + 160) = (*(v107 + 8))(v106, v107);
  }

  *(v105 + 64) = sub_1AF5A9A1C;
  *(v105 + 72) = v103;
  sub_1AF0FB8EC(0, 0);
  *(v105 + 168) = 0;
  *(v105 + 176) = 0;

  *(v105 + 216) = 0;
  v108 = swift_allocObject();
  v108[4] = sub_1AF5AA29C;
  v108[5] = v102;
  v108[2] = sub_1AF5AA080;
  v108[3] = v102;
  v108[6] = v102;
  v109 = swift_allocObject();
  *(v109 + 112) = 1;
  *(v109 + 128) = 0;
  *(v109 + 136) = 0;
  *(v109 + 120) = 0;
  *(v109 + 160) = MEMORY[0x1E69E7CC0];
  *(v109 + 168) = 0;
  *(v109 + 216) = 0;
  *(v109 + 176) = 0;
  strcpy((v109 + 16), "fillBackward");
  *(v109 + 29) = 0;
  *(v109 + 30) = -5120;
  *(v109 + 32) = v102;
  *(v109 + 40) = &type metadata for FillMode;
  *(v109 + 48) = 22;
  *(v109 + 56) = 0;
  *(v109 + 58) = 0;
  *(v109 + 184) = 0;
  *(v109 + 188) = 1;
  *(v109 + 192) = 0;
  *(v109 + 196) = 1;
  *(v109 + 200) = 0x1000100000000;
  *(v109 + 208) = 1;
  *(v109 + 64) = 0;
  *(v109 + 72) = 0;
  *(v109 + 96) = 0;
  *(v109 + 104) = 0;
  *(v109 + 144) = xmmword_1AFE22A20;
  *(v109 + 80) = v108;
  *(v109 + 88) = &off_1F2535378;
  *(v109 + 210) = 0;
  swift_retain_n();
  if (v99)
  {
    v96 = (*(v99 + 8))();
  }

  v110 = swift_conformsToProtocol2();
  if (v110 && v96)
  {
    *(v109 + 160) = (*(v110 + 8))(v96, v110);
  }

  *(v109 + 64) = sub_1AF5A9A20;
  *(v109 + 72) = v102;
  sub_1AF0FB8EC(0, 0);
  *(v109 + 168) = 0;
  *(v109 + 176) = 0;

  *(v109 + 216) = v105;
  v113[15] = v109;
  qword_1EB6C3100 = v113;
  return result;
}

uint64_t sub_1AF517F18()
{
  v1 = *(v0 + 36);
  if (v1 > 3)
  {
    if (*(v0 + 36) > 5u)
    {
      if (v1 == 6)
      {
        return 22;
      }

      else
      {
        return *(v0 + 24);
      }
    }

    else if (v1 == 4)
    {
      return 20;
    }

    else
    {
      return 21;
    }
  }

  else
  {
    v2 = 16;
    v3 = 18;
    if (v1 != 2)
    {
      v3 = 19;
    }

    if (*(v0 + 36))
    {
      v2 = 17;
    }

    if (*(v0 + 36) <= 1u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t sub_1AF517F84@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  v2 = *(result + 36);
  if (v2 > 3)
  {
    if (*(result + 36) > 5u)
    {
      if (v2 == 6)
      {
        *a2 = 22;
      }

      else
      {
        *a2 = *(result + 24);
      }
    }

    else
    {
      v6 = v2 == 4;
      v7 = 20;
      if (!v6)
      {
        v7 = 21;
      }

      *a2 = v7;
    }
  }

  else
  {
    v3 = 16;
    v4 = 18;
    if (v2 != 2)
    {
      v4 = 19;
    }

    if (*(result + 36))
    {
      v3 = 17;
    }

    if (*(result + 36) <= 1u)
    {
      v5 = v3;
    }

    else
    {
      v5 = v4;
    }

    *a2 = v5;
  }

  return result;
}

float sub_1AF518000()
{
  result = *(v0 + 24);
  if (*(v0 + 36))
  {
    return 0.0;
  }

  return result;
}

__n64 sub_1AF518028()
{
  result.n64_u64[0] = 0;
  if (*(v0 + 36) == 1)
  {
    result.n64_f32[0] = *(v0 + 24);
    result.n64_u32[1] = *(v0 + 28);
  }

  return result;
}

__n64 sub_1AF51805C()
{
  result.n64_u64[0] = 0;
  if (*(v0 + 36) == 2)
  {
    result.n64_f32[0] = *(v0 + 24);
    result.n64_u32[1] = *(v0 + 28);
  }

  return result;
}

float sub_1AF518090()
{
  result = *(v0 + 24);
  if (*(v0 + 36) != 3)
  {
    return 0.0;
  }

  return result;
}

float sub_1AF5180B8()
{
  result = *(v0 + 24);
  if (*(v0 + 36) != 4)
  {
    return 0.0;
  }

  return result;
}

float sub_1AF5180E0()
{
  result = *(v0 + 24);
  if (*(v0 + 36) != 5)
  {
    return 0.0;
  }

  return result;
}

unint64_t sub_1AF518110(unint64_t result)
{
  v2 = 4;
  if (result < 4)
  {
    v2 = result;
  }

  *(v1 + 21) = v2;
  return result;
}

unint64_t sub_1AF51812C(unint64_t result)
{
  v2 = 4;
  if (result < 4)
  {
    v2 = result;
  }

  *(v1 + 22) = v2;
  return result;
}

uint64_t sub_1AF518140(uint64_t result)
{
  v2 = result - 1;
  if ((result - 1) > 0x15)
  {
    v3 = 0;
    v4 = 0;
    v5 = 7;
  }

  else
  {
    v3 = qword_1AFE61440[v2];
    v4 = dword_1AFE614F0[v2];
    v5 = asc_1AFE61548[v2];
  }

  *v1 = v3;
  *(v1 + 8) = v4;
  *(v1 + 12) = v5;
  return result;
}

uint64_t sub_1AF51825C(uint64_t a1, uint64_t a2)
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AFE551C0;
  type metadata accessor for PropertyDescription();
  KeyPath = swift_getKeyPath();
  type metadata accessor for KeyframeAnimation(0, a1, a2, v6);
  v7 = MEMORY[0x1E69E7CC0];
  v8 = sub_1AF6ACF1C(0x656E696C656D6974, 0xE900000000000058, KeyPath, &type metadata for KeyframeTimeline, 1, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, MEMORY[0x1E69E7CC0], 0, &off_1F2510F68);

  *(v4 + 32) = v8;
  v9 = swift_getKeyPath();
  v10 = sub_1AF6ACF1C(0x656E696C656D6974, 0xE900000000000059, v9, &type metadata for KeyframeTimeline, 1, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, v7, 0, &off_1F2510F68);

  *(v4 + 40) = v10;
  v11 = swift_getKeyPath();
  v12 = sub_1AF6ACF1C(0x656E696C656D6974, 0xE90000000000005ALL, v11, &type metadata for KeyframeTimeline, 1, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, v7, 0, &off_1F2510F68);

  *(v4 + 48) = v12;
  v13 = swift_getKeyPath();
  v14 = sub_1AF6ACF1C(0x656E696C656D6974, 0xE900000000000057, v13, &type metadata for KeyframeTimeline, 1, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, v7, 0, &off_1F2510F68);

  *(v4 + 56) = v14;
  v15 = swift_getKeyPath();
  sub_1AF5A9240(0, &qword_1EB63B858, &type metadata for EntityComponentProperty, MEMORY[0x1E69E6720]);
  v17 = sub_1AF6ACF1C(0x746567726174, 0xE600000000000000, v15, v16, 1, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, v7, 0, &off_1F2510F68);

  *(v4 + 64) = v17;
  return v4;
}

uint64_t sub_1AF518678()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C3E0;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6158];
  sub_1AF5A9240(0, &qword_1EB634358, MEMORY[0x1E69E6158], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF5A516C;
  v3[5] = KeyPath;
  v3[2] = sub_1AF5A51DC;
  v3[3] = KeyPath;
  v3[6] = KeyPath;
  type metadata accessor for PropertyDescription();
  v4 = swift_allocObject();
  *(v4 + 112) = 1;
  *(v4 + 120) = 0;
  *(v4 + 128) = 0;
  v5 = MEMORY[0x1E69E7CC0];
  *(v4 + 168) = 0;
  *(v4 + 216) = 0;
  *(v4 + 176) = 0;
  *(v4 + 16) = 1701080931;
  *(v4 + 24) = 0xE400000000000000;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = v2;
  *(v4 + 48) = 0;
  *(v4 + 56) = 1;
  *(v4 + 58) = 0;
  *(v4 + 184) = 0;
  *(v4 + 188) = 1;
  *(v4 + 192) = 0;
  *(v4 + 196) = 1;
  *(v4 + 200) = 0x1000100000000;
  *(v4 + 208) = 1;
  *(v4 + 96) = 0;
  *(v4 + 104) = 0;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  *(v4 + 136) = 0;
  *(v4 + 144) = &type metadata for MetalFunctionScript.Info;
  *(v4 + 152) = &off_1F255CA18;
  *(v4 + 160) = v5;
  *(v4 + 80) = v3;
  *(v4 + 88) = &off_1F2535378;
  *(v4 + 210) = 0;
  v6 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v6)
  {
    v2 = (*(v6 + 8))();
  }

  v7 = swift_conformsToProtocol2();
  if (v7 && v2)
  {
    *(v4 + 160) = (*(v7 + 8))(v2, v7);
  }

  *(v4 + 64) = sub_1AF5A520C;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0, 0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  qword_1EB6C3108 = v0;
  return result;
}

uint64_t sub_1AF5189E4(uint64_t result)
{
  if (result == 2)
  {
    *v1 = xmmword_1AFE552A0;
    *(v1 + 16) = 1;
  }

  else if (result == 1)
  {
    *v1 = xmmword_1AFE552B0;
    *(v1 + 16) = 0;
  }

  else
  {
    *v1 = 0;
    *(v1 + 8) = 0;
    *(v1 + 16) = 2;
  }

  return result;
}

uint64_t sub_1AF518A80()
{
  result = *(v0 + 16);
  if (*(v0 + 16))
  {
    if (result == 1)
    {
      return 1;
    }

    else
    {
      return *v0 + 2;
    }
  }

  return result;
}

uint64_t sub_1AF518B3C()
{
  v1 = v0[12];
  if (v1 > 3)
  {
    if (v0[12] > 5u)
    {
      if (v1 == 6)
      {
        return 22;
      }

      else
      {
        return *v0;
      }
    }

    else if (v1 == 4)
    {
      return 20;
    }

    else
    {
      return 21;
    }
  }

  else
  {
    v2 = 16;
    v3 = 18;
    if (v1 != 2)
    {
      v3 = 19;
    }

    if (v0[12])
    {
      v2 = 17;
    }

    if (v0[12] <= 1u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t sub_1AF518C94(uint64_t result)
{
  if (result == 2)
  {
    if (*(v1 + 8) != 1)
    {
      *v1 = 0x3F80000000000000;
      *(v1 + 8) = 1;
    }
  }

  else if (result == 1)
  {
    if (*(v1 + 8))
    {
      *v1 = 1065353216;
      *(v1 + 8) = 0;
    }
  }

  else
  {
    *v1 = 0;
    *(v1 + 8) = 2;
  }

  return result;
}

uint64_t sub_1AF518D08(uint64_t result)
{
  v2 = 2 * (result == 2);
  if (result == 1)
  {
    v2 = 1;
  }

  *v1 = v2;
  return result;
}

uint64_t sub_1AF51972C(uint64_t a1)
{
  result = sub_1AFB9A0D4(a1);
  *v1 = result;
  return result;
}

uint64_t sub_1AF519CAC(uint64_t a1)
{
  if (a1 <= 3)
  {
    if (a1 <= 1)
    {
      if (!a1)
      {
        return 0x7261656E694CLL;
      }

      if (a1 == 1)
      {
        return 0x6C6169646152;
      }

      return 0x6E776F6E6B6E75;
    }

    if (a1 == 2)
    {
      return 0x786574726F56;
    }

    else
    {
      return 0x6573696F4ELL;
    }
  }

  else
  {
    if (a1 > 5)
    {
      switch(a1)
      {
        case 6:
          return 0x636974656E67614DLL;
        case 7:
          return 0x63696E6F6D726148;
        case 8:
          return 1734439492;
      }

      return 0x6E776F6E6B6E75;
    }

    if (a1 == 4)
    {
      return 0x6E656C7562727554;
    }

    else
    {
      return 0x676E69727053;
    }
  }
}

uint64_t VFXCameraProjectionDirection.description.getter(uint64_t a1)
{
  v1 = 0x6E776F6E6B6E55;
  if (!a1)
  {
    v1 = 0x6C61636974726556;
  }

  if (a1 == 1)
  {
    return 0x746E6F7A69726F48;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1AF519FF8()
{
  v1 = 0x6E776F6E6B6E55;
  if (!*v0)
  {
    v1 = 0x6C61636974726556;
  }

  if (*v0 == 1)
  {
    return 0x746E6F7A69726F48;
  }

  else
  {
    return v1;
  }
}

uint64_t VFXCameraFillMode.description.getter(uint64_t a1)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      return 7629126;
    }

    if (a1 == 1)
    {
      return 1819044166;
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        return 0x7472655620746946;
      case 3:
        return 0xD000000000000010;
      case 4:
        return 0x68637465727453;
    }
  }

  return 0x6E776F6E6B6E55;
}

uint64_t sub_1AF51A27C()
{
  v1 = *v0;
  if (*v0 <= 1)
  {
    if (!v1)
    {
      return 7629126;
    }

    if (v1 == 1)
    {
      return 1819044166;
    }
  }

  else
  {
    switch(v1)
    {
      case 2:
        return 0x7472655620746946;
      case 3:
        return 0xD000000000000010;
      case 4:
        return 0x68637465727453;
    }
  }

  return 0x6E776F6E6B6E55;
}

unint64_t VFXCameraDepthOfFieldMode.description.getter(uint64_t a1)
{
  v1 = 0x6E776F6E6B6E55;
  if (!a1)
  {
    v1 = 0xD000000000000010;
  }

  if (a1 == 1)
  {
    return 0x6C61756E614DLL;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_1AF51A6DC()
{
  v1 = 0x6E776F6E6B6E55;
  if (!*v0)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0 == 1)
  {
    return 0x6C61756E614DLL;
  }

  else
  {
    return v1;
  }
}

uint64_t VFXSSRQuality.description.getter(uint64_t a1)
{
  v1 = 1751607624;
  v2 = 0x6E776F6E6B6E55;
  if (a1 == 1)
  {
    v2 = 0x6D756964654DLL;
  }

  if (a1 != 2)
  {
    v1 = v2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 7827276;
  }
}

uint64_t VFXSSRThicknessMode.description.getter(uint64_t a1)
{
  v1 = 1818322258;
  v2 = 0x6E776F6E6B6E55;
  if (a1 == 1)
  {
    v2 = 0x746E6174736E6F43;
  }

  if (a1 != 2)
  {
    v1 = v2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 1701736270;
  }
}

uint64_t sub_1AF51AE68()
{
  v1 = *v0;
  v2 = 1818322258;
  v3 = 0x6E776F6E6B6E55;
  if (*v0 == 1)
  {
    v3 = 0x746E6174736E6F43;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 1701736270;
  }
}

uint64_t VFXCameraToneMappingMode.description.getter(uint64_t a1)
{
  v1 = 0x6E776F6E6B6E55;
  if (a1 == 1)
  {
    v1 = 1936024385;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0x632063696D6C6946;
  }
}

void sub_1AF51B13C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1AF51B260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1AF51BCF0()
{
  v1 = 0x6E776F6E6B6E55;
  if (*v0 == 1)
  {
    v1 = 1936024385;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x632063696D6C6946;
  }
}

uint64_t destroy for BindingPropertyDescription.BindingInfo(void *a1)
{

  result = a1[4];
  if (result)
  {
  }

  return result;
}

uint64_t initializeWithCopy for BindingPropertyDescription.BindingInfo(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  v5 = *(a2 + 32);

  if (v5)
  {
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 32) = v5;
    *(a1 + 40) = *(a2 + 40);
  }

  else
  {
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
  }

  return a1;
}

uint64_t assignWithCopy for BindingPropertyDescription.BindingInfo(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  v4 = *(a2 + 32);
  if (*(a1 + 32))
  {
    if (v4)
    {
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 32) = *(a2 + 32);

      *(a1 + 40) = *(a2 + 40);
    }

    else
    {
      sub_1AF51C104(a1 + 24);
      v5 = *(a2 + 40);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 40) = v5;
    }
  }

  else if (v4)
  {
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 40) = *(a2 + 40);
  }

  else
  {
    v6 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 24) = v6;
  }

  return a1;
}

uint64_t assignWithTake for BindingPropertyDescription.BindingInfo(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  *(a1 + 16) = *(a2 + 16);
  if (!*(a1 + 32))
  {
    goto LABEL_5;
  }

  v5 = *(a2 + 32);
  if (!v5)
  {
    sub_1AF51C104(a1 + 24);
LABEL_5:
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    return a1;
  }

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v5;

  *(a1 + 40) = *(a2 + 40);

  return a1;
}

uint64_t getEnumTagSinglePayload for ComputePipelineDescriptor(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ComputePipelineDescriptor(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1AF51C338()
{
  result = qword_1EB639C18;
  if (!qword_1EB639C18)
  {
    result = swift_getWitnessTable(byte_1AFEA5DDC, &type metadata for VFXHandTracker.HandChirality, v0, v1);
    atomic_store(result, &qword_1EB639C18);
  }

  return result;
}

unint64_t sub_1AF51C38C()
{
  result = qword_1EB639C20;
  if (!qword_1EB639C20)
  {
    result = swift_getWitnessTable(byte_1AFEA5DB4, &type metadata for VFXHandTracker.HandChirality, v0, v1);
    atomic_store(result, &qword_1EB639C20);
  }

  return result;
}

unint64_t sub_1AF51C40C()
{
  result = qword_1EB639C28;
  if (!qword_1EB639C28)
  {
    result = swift_getWitnessTable(a1_19, &type metadata for VFXHandTracker.Joint, v0, v1);
    atomic_store(result, &qword_1EB639C28);
  }

  return result;
}

unint64_t sub_1AF51C460()
{
  result = qword_1EB639C30;
  if (!qword_1EB639C30)
  {
    result = swift_getWitnessTable(aU_14, &type metadata for VFXHandTracker.Joint, v0, v1);
    atomic_store(result, &qword_1EB639C30);
  }

  return result;
}

unint64_t sub_1AF51C4E0()
{
  result = qword_1EB639C38;
  if (!qword_1EB639C38)
  {
    result = swift_getWitnessTable(byte_1AFE9F9A8, &type metadata for Composition.Operation, v0, v1);
    atomic_store(result, &qword_1EB639C38);
  }

  return result;
}

unint64_t sub_1AF51C534()
{
  result = qword_1EB639C40;
  if (!qword_1EB639C40)
  {
    result = swift_getWitnessTable(aW_2, &type metadata for Composition.Operation, v0, v1);
    atomic_store(result, &qword_1EB639C40);
  }

  return result;
}

unint64_t sub_1AF51C5B4()
{
  result = qword_1EB639C48;
  if (!qword_1EB639C48)
  {
    result = swift_getWitnessTable(byte_1AFEAA5E4, &type metadata for VideoCapture.OrientationMode, v0, v1);
    atomic_store(result, &qword_1EB639C48);
  }

  return result;
}

unint64_t sub_1AF51C608()
{
  result = qword_1EB639C50;
  if (!qword_1EB639C50)
  {
    result = swift_getWitnessTable(byte_1AFEAA5BC, &type metadata for VideoCapture.OrientationMode, v0, v1);
    atomic_store(result, &qword_1EB639C50);
  }

  return result;
}

unint64_t sub_1AF51C688()
{
  result = qword_1EB639C58;
  if (!qword_1EB639C58)
  {
    result = swift_getWitnessTable(asc_1AFE9CE0C, &type metadata for KillShape.Shape, v0, v1);
    atomic_store(result, &qword_1EB639C58);
  }

  return result;
}

unint64_t sub_1AF51C6DC()
{
  result = qword_1EB639C60;
  if (!qword_1EB639C60)
  {
    result = swift_getWitnessTable(aU_15, &type metadata for KillShape.Shape, v0, v1);
    atomic_store(result, &qword_1EB639C60);
  }

  return result;
}

unint64_t sub_1AF51C75C()
{
  result = qword_1EB639C68;
  if (!qword_1EB639C68)
  {
    result = swift_getWitnessTable(byte_1AFE92800, &type metadata for OrientationConstraint.Mode, v0, v1);
    atomic_store(result, &qword_1EB639C68);
  }

  return result;
}

unint64_t sub_1AF51C7B0()
{
  result = qword_1EB639C70;
  if (!qword_1EB639C70)
  {
    result = swift_getWitnessTable(byte_1AFE927D8, &type metadata for OrientationConstraint.Mode, v0, v1);
    atomic_store(result, &qword_1EB639C70);
  }

  return result;
}

unint64_t sub_1AF51C830()
{
  result = qword_1ED7220C8;
  if (!qword_1ED7220C8)
  {
    result = swift_getWitnessTable(aY_33, &type metadata for Material.Kind, v0, v1);
    atomic_store(result, &qword_1ED7220C8);
  }

  return result;
}

unint64_t sub_1AF51C884()
{
  result = qword_1EB639C80;
  if (!qword_1EB639C80)
  {
    result = swift_getWitnessTable(aQ_38, &type metadata for Material.Kind, v0, v1);
    atomic_store(result, &qword_1EB639C80);
  }

  return result;
}

unint64_t sub_1AF51C930()
{
  result = qword_1EB639C98;
  if (!qword_1EB639C98)
  {
    result = swift_getWitnessTable(aMm, &type metadata for PointCache.Distribution, v0, v1);
    atomic_store(result, &qword_1EB639C98);
  }

  return result;
}

unint64_t sub_1AF51C984()
{
  result = qword_1EB639CA0;
  if (!qword_1EB639CA0)
  {
    result = swift_getWitnessTable(aEi_0, &type metadata for PointCache.Distribution, v0, v1);
    atomic_store(result, &qword_1EB639CA0);
  }

  return result;
}

unint64_t sub_1AF51CA04()
{
  result = qword_1ED7255F8;
  if (!qword_1ED7255F8)
  {
    result = swift_getWitnessTable(byte_1AFE9F9F8, &type metadata for TextureChannel, v0, v1);
    atomic_store(result, &qword_1ED7255F8);
  }

  return result;
}

unint64_t sub_1AF51CA58()
{
  result = qword_1EB639CB0;
  if (!qword_1EB639CB0)
  {
    result = swift_getWitnessTable(byte_1AFE9F9D0, &type metadata for TextureChannel, v0, v1);
    atomic_store(result, &qword_1EB639CB0);
  }

  return result;
}

unint64_t sub_1AF51CAD8()
{
  result = qword_1EB639CB8;
  if (!qword_1EB639CB8)
  {
    result = swift_getWitnessTable("eX", &type metadata for ParticleColorOverPosition.GradientMode, v0, v1);
    atomic_store(result, &qword_1EB639CB8);
  }

  return result;
}

unint64_t sub_1AF51CB2C()
{
  result = qword_1EB639CC0;
  if (!qword_1EB639CC0)
  {
    result = swift_getWitnessTable("]T", &type metadata for ParticleColorOverPosition.GradientMode, v0, v1);
    atomic_store(result, &qword_1EB639CC0);
  }

  return result;
}

unint64_t sub_1AF51CBAC()
{
  result = qword_1EB6341B8;
  if (!qword_1EB6341B8)
  {
    result = swift_getWitnessTable(byte_1AFEA2BD4, &type metadata for ParticleSubSpawn.Mode, v0, v1);
    atomic_store(result, &qword_1EB6341B8);
  }

  return result;
}

unint64_t sub_1AF51CC00()
{
  result = qword_1EB639CD0;
  if (!qword_1EB639CD0)
  {
    result = swift_getWitnessTable(byte_1AFEA2BAC, &type metadata for ParticleSubSpawn.Mode, v0, v1);
    atomic_store(result, &qword_1EB639CD0);
  }

  return result;
}

unint64_t sub_1AF51CCD8()
{
  result = qword_1EB639CF8;
  if (!qword_1EB639CF8)
  {
    result = swift_getWitnessTable(aA_28, &type metadata for FluidSolver2DSolverBorderType, v0, v1);
    atomic_store(result, &qword_1EB639CF8);
  }

  return result;
}

unint64_t sub_1AF51CD2C()
{
  result = qword_1EB639D00;
  if (!qword_1EB639D00)
  {
    result = swift_getWitnessTable(a9_12, &type metadata for FluidSolver2DSolverBorderType, v0, v1);
    atomic_store(result, &qword_1EB639D00);
  }

  return result;
}

unint64_t sub_1AF51CDAC()
{
  result = qword_1EB639D08;
  if (!qword_1EB639D08)
  {
    result = swift_getWitnessTable(byte_1AFE9FA98, &type metadata for FluidSolver2DSolverSetupType, v0, v1);
    atomic_store(result, &qword_1EB639D08);
  }

  return result;
}

unint64_t sub_1AF51CE00()
{
  result = qword_1EB639D10;
  if (!qword_1EB639D10)
  {
    result = swift_getWitnessTable(byte_1AFE9FA70, &type metadata for FluidSolver2DSolverSetupType, v0, v1);
    atomic_store(result, &qword_1EB639D10);
  }

  return result;
}

unint64_t sub_1AF51CE80()
{
  result = qword_1EB639D18;
  if (!qword_1EB639D18)
  {
    result = swift_getWitnessTable(byte_1AFE9FAE8, &type metadata for FlockingSizeMode, v0, v1);
    atomic_store(result, &qword_1EB639D18);
  }

  return result;
}

unint64_t sub_1AF51CED4()
{
  result = qword_1EB639D20;
  if (!qword_1EB639D20)
  {
    result = swift_getWitnessTable(byte_1AFE9FAC0, &type metadata for FlockingSizeMode, v0, v1);
    atomic_store(result, &qword_1EB639D20);
  }

  return result;
}

unint64_t sub_1AF51CF54()
{
  result = qword_1EB639D28;
  if (!qword_1EB639D28)
  {
    result = swift_getWitnessTable(aQ_39, &type metadata for FlockingLocalAxis, v0, v1);
    atomic_store(result, &qword_1EB639D28);
  }

  return result;
}

unint64_t sub_1AF51CFA8()
{
  result = qword_1EB639D30;
  if (!qword_1EB639D30)
  {
    result = swift_getWitnessTable(aI_17, &type metadata for FlockingLocalAxis, v0, v1);
    atomic_store(result, &qword_1EB639D30);
  }

  return result;
}

unint64_t sub_1AF51D028()
{
  result = qword_1EB633378;
  if (!qword_1EB633378)
  {
    result = swift_getWitnessTable(byte_1AFE9FB88, &type metadata for NoiseKind, v0, v1);
    atomic_store(result, &qword_1EB633378);
  }

  return result;
}

unint64_t sub_1AF51D07C()
{
  result = qword_1EB639D40;
  if (!qword_1EB639D40)
  {
    result = swift_getWitnessTable(byte_1AFE9FB60, &type metadata for NoiseKind, v0, v1);
    atomic_store(result, &qword_1EB639D40);
  }

  return result;
}

unint64_t sub_1AF51D0FC()
{
  result = qword_1EB633448;
  if (!qword_1EB633448)
  {
    result = swift_getWitnessTable(byte_1AFE901C8, &type metadata for ParticleRibbonTextureMode, v0, v1);
    atomic_store(result, &qword_1EB633448);
  }

  return result;
}

unint64_t sub_1AF51D150()
{
  result = qword_1EB639D50;
  if (!qword_1EB639D50)
  {
    result = swift_getWitnessTable(byte_1AFE901A0, &type metadata for ParticleRibbonTextureMode, v0, v1);
    atomic_store(result, &qword_1EB639D50);
  }

  return result;
}

unint64_t sub_1AF51D1D0()
{
  result = qword_1EB633598;
  if (!qword_1EB633598)
  {
    result = swift_getWitnessTable(aQ_40, &type metadata for ParticleRibbonProfile, v0, v1);
    atomic_store(result, &qword_1EB633598);
  }

  return result;
}

unint64_t sub_1AF51D224()
{
  result = qword_1EB639D60;
  if (!qword_1EB639D60)
  {
    result = swift_getWitnessTable(aI_18, &type metadata for ParticleRibbonProfile, v0, v1);
    atomic_store(result, &qword_1EB639D60);
  }

  return result;
}

unint64_t sub_1AF51D2A4()
{
  result = qword_1ED724A88;
  if (!qword_1ED724A88)
  {
    result = swift_getWitnessTable(aU_16, &type metadata for ParticleOrientationMode, v0, v1);
    atomic_store(result, &qword_1ED724A88);
  }

  return result;
}

unint64_t sub_1AF51D2F8()
{
  result = qword_1EB639D70;
  if (!qword_1EB639D70)
  {
    result = swift_getWitnessTable(aM_15, &type metadata for ParticleOrientationMode, v0, v1);
    atomic_store(result, &qword_1EB639D70);
  }

  return result;
}

unint64_t sub_1AF51D378()
{
  result = qword_1ED724EC8;
  if (!qword_1ED724EC8)
  {
    result = swift_getWitnessTable(byte_1AFE90C84, &type metadata for ParticleAnimationMode, v0, v1);
    atomic_store(result, &qword_1ED724EC8);
  }

  return result;
}

unint64_t sub_1AF51D3CC()
{
  result = qword_1EB639D80;
  if (!qword_1EB639D80)
  {
    result = swift_getWitnessTable(byte_1AFE90C5C, &type metadata for ParticleAnimationMode, v0, v1);
    atomic_store(result, &qword_1EB639D80);
  }

  return result;
}

unint64_t sub_1AF51D44C()
{
  result = qword_1EB639D88;
  if (!qword_1EB639D88)
  {
    result = swift_getWitnessTable(aA_29, &type metadata for ParticlePrimitiveRenderer.Shape, v0, v1);
    atomic_store(result, &qword_1EB639D88);
  }

  return result;
}

unint64_t sub_1AF51D4A0()
{
  result = qword_1EB639D90;
  if (!qword_1EB639D90)
  {
    result = swift_getWitnessTable(a9_13, &type metadata for ParticlePrimitiveRenderer.Shape, v0, v1);
    atomic_store(result, &qword_1EB639D90);
  }

  return result;
}

unint64_t sub_1AF51D520()
{
  result = qword_1ED724FC8;
  if (!qword_1ED724FC8)
  {
    result = swift_getWitnessTable(byte_1AFE8FFEC, &type metadata for ParticleQuadRenderer.Shape, v0, v1);
    atomic_store(result, &qword_1ED724FC8);
  }

  return result;
}

unint64_t sub_1AF51D574()
{
  result = qword_1EB639DA0;
  if (!qword_1EB639DA0)
  {
    result = swift_getWitnessTable(byte_1AFE8FFC4, &type metadata for ParticleQuadRenderer.Shape, v0, v1);
    atomic_store(result, &qword_1EB639DA0);
  }

  return result;
}

unint64_t sub_1AF51D5F4()
{
  result = qword_1EB633678;
  if (!qword_1EB633678)
  {
    result = swift_getWitnessTable(aY_34, &type metadata for MotionDistribution, v0, v1);
    atomic_store(result, &qword_1EB633678);
  }

  return result;
}

unint64_t sub_1AF51D648()
{
  result = qword_1EB639DB0;
  if (!qword_1EB639DB0)
  {
    result = swift_getWitnessTable(aQ_41, &type metadata for MotionDistribution, v0, v1);
    atomic_store(result, &qword_1EB639DB0);
  }

  return result;
}

unint64_t sub_1AF51D6C8()
{
  result = qword_1EB633838;
  if (!qword_1EB633838)
  {
    result = swift_getWitnessTable(asc_1AFE8BA60, &type metadata for EmissionOrder, v0, v1);
    atomic_store(result, &qword_1EB633838);
  }

  return result;
}

unint64_t sub_1AF51D71C()
{
  result = qword_1EB639DC0;
  if (!qword_1EB639DC0)
  {
    result = swift_getWitnessTable(asc_1AFE8BA38, &type metadata for EmissionOrder, v0, v1);
    atomic_store(result, &qword_1EB639DC0);
  }

  return result;
}

unint64_t sub_1AF51D79C()
{
  result = qword_1ED725458;
  if (!qword_1ED725458)
  {
    result = swift_getWitnessTable(byte_1AFE9E0DC, &type metadata for ParticleSortMode, v0, v1);
    atomic_store(result, &qword_1ED725458);
  }

  return result;
}

unint64_t sub_1AF51D7F0()
{
  result = qword_1EB639DD0;
  if (!qword_1EB639DD0)
  {
    result = swift_getWitnessTable(byte_1AFE9E0B4, &type metadata for ParticleSortMode, v0, v1);
    atomic_store(result, &qword_1EB639DD0);
  }

  return result;
}

unint64_t sub_1AF51D870()
{
  result = qword_1EB639DD8;
  if (!qword_1EB639DD8)
  {
    result = swift_getWitnessTable(byte_1AFE92BA0, &type metadata for OrientationOverVelocity.DirectionAxis, v0, v1);
    atomic_store(result, &qword_1EB639DD8);
  }

  return result;
}

unint64_t sub_1AF51D8C4()
{
  result = qword_1EB639DE0;
  if (!qword_1EB639DE0)
  {
    result = swift_getWitnessTable(byte_1AFE92B78, &type metadata for OrientationOverVelocity.DirectionAxis, v0, v1);
    atomic_store(result, &qword_1EB639DE0);
  }

  return result;
}

unint64_t sub_1AF51D944()
{
  result = qword_1ED7232D8;
  if (!qword_1ED7232D8)
  {
    result = swift_getWitnessTable(byte_1AFE9FBD8, &type metadata for ScaleMode, v0, v1);
    atomic_store(result, &qword_1ED7232D8);
  }

  return result;
}

unint64_t sub_1AF51D998()
{
  result = qword_1EB639DF0;
  if (!qword_1EB639DF0)
  {
    result = swift_getWitnessTable(byte_1AFE9FBB0, &type metadata for ScaleMode, v0, v1);
    atomic_store(result, &qword_1EB639DF0);
  }

  return result;
}

unint64_t sub_1AF51DA44()
{
  result = qword_1EB6317C8;
  if (!qword_1EB6317C8)
  {
    result = swift_getWitnessTable(byte_1AFE7D9A8, &type metadata for TextureMipFilterMode, v0, v1);
    atomic_store(result, &qword_1EB6317C8);
  }

  return result;
}

unint64_t sub_1AF51DA98()
{
  result = qword_1EB639E10;
  if (!qword_1EB639E10)
  {
    result = swift_getWitnessTable(asc_1AFE7D980, &type metadata for TextureMipFilterMode, v0, v1);
    atomic_store(result, &qword_1EB639E10);
  }

  return result;
}

unint64_t sub_1AF51DB18()
{
  result = qword_1EB6339F0;
  if (!qword_1EB6339F0)
  {
    result = swift_getWitnessTable(byte_1AFE9F908, &type metadata for FilterMode, v0, v1);
    atomic_store(result, &qword_1EB6339F0);
  }

  return result;
}

unint64_t sub_1AF51DB6C()
{
  result = qword_1EB639E20;
  if (!qword_1EB639E20)
  {
    result = swift_getWitnessTable(aY_35, &type metadata for FilterMode, v0, v1);
    atomic_store(result, &qword_1EB639E20);
  }

  return result;
}

unint64_t sub_1AF51DBEC()
{
  result = qword_1ED722BB0;
  if (!qword_1ED722BB0)
  {
    result = swift_getWitnessTable(a1_20, &type metadata for AddressMode, v0, v1);
    atomic_store(result, &qword_1ED722BB0);
  }

  return result;
}

unint64_t sub_1AF51DC40()
{
  result = qword_1EB639E30;
  if (!qword_1EB639E30)
  {
    result = swift_getWitnessTable(asc_1AFE9F930, &type metadata for AddressMode, v0, v1);
    atomic_store(result, &qword_1EB639E30);
  }

  return result;
}

unint64_t sub_1AF51DCC0()
{
  result = qword_1EB6339C8;
  if (!qword_1EB6339C8)
  {
    result = swift_getWitnessTable(aN_1, &type metadata for EntitySpace, v0, v1);
    atomic_store(result, &qword_1EB6339C8);
  }

  return result;
}

unint64_t sub_1AF51DD14()
{
  result = qword_1EB639E40;
  if (!qword_1EB639E40)
  {
    result = swift_getWitnessTable(aUj, &type metadata for EntitySpace, v0, v1);
    atomic_store(result, &qword_1EB639E40);
  }

  return result;
}

unint64_t sub_1AF51DD94()
{
  result = qword_1EB639E48;
  if (!qword_1EB639E48)
  {
    result = swift_getWitnessTable(byte_1AFE94C88, &type metadata for EvolutionMode, v0, v1);
    atomic_store(result, &qword_1EB639E48);
  }

  return result;
}

unint64_t sub_1AF51DDE8()
{
  result = qword_1EB639E50;
  if (!qword_1EB639E50)
  {
    result = swift_getWitnessTable(byte_1AFE94C60, &type metadata for EvolutionMode, v0, v1);
    atomic_store(result, &qword_1EB639E50);
  }

  return result;
}

unint64_t sub_1AF51DE68()
{
  result = qword_1EB633938;
  if (!qword_1EB633938)
  {
    result = swift_getWitnessTable(byte_1AFE8BAB0, &type metadata for EmitterShape.Shape, v0, v1);
    atomic_store(result, &qword_1EB633938);
  }

  return result;
}

unint64_t sub_1AF51DEBC()
{
  result = qword_1EB639E60;
  if (!qword_1EB639E60)
  {
    result = swift_getWitnessTable(byte_1AFE8BA88, &type metadata for EmitterShape.Shape, v0, v1);
    atomic_store(result, &qword_1EB639E60);
  }

  return result;
}

unint64_t sub_1AF51DF3C()
{
  result = qword_1EB634198;
  if (!qword_1EB634198)
  {
    result = swift_getWitnessTable(asc_1AFE8C84C, &type metadata for ParticleColorInit.Mode, v0, v1);
    atomic_store(result, &qword_1EB634198);
  }

  return result;
}

unint64_t sub_1AF51DF90()
{
  result = qword_1EB639E70;
  if (!qword_1EB639E70)
  {
    result = swift_getWitnessTable(a5_11, &type metadata for ParticleColorInit.Mode, v0, v1);
    atomic_store(result, &qword_1EB639E70);
  }

  return result;
}

unint64_t sub_1AF51E03C()
{
  result = qword_1ED7270D8;
  if (!qword_1ED7270D8)
  {
    result = swift_getWitnessTable(byte_1AFE7BF78, &type metadata for BlendMode, v0, v1);
    atomic_store(result, &qword_1ED7270D8);
  }

  return result;
}

unint64_t sub_1AF51E090()
{
  result = qword_1EB630F40;
  if (!qword_1EB630F40)
  {
    result = swift_getWitnessTable(asc_1AFE7BF50, &type metadata for BlendMode, v0, v1);
    atomic_store(result, &qword_1EB630F40);
  }

  return result;
}

unint64_t sub_1AF51E110()
{
  result = qword_1EB633908;
  if (!qword_1EB633908)
  {
    result = swift_getWitnessTable(byte_1AFE8BB00, &type metadata for EmitterShape.Direction, v0, v1);
    atomic_store(result, &qword_1EB633908);
  }

  return result;
}

unint64_t sub_1AF51E164()
{
  result = qword_1EB639E90;
  if (!qword_1EB639E90)
  {
    result = swift_getWitnessTable(byte_1AFE8BAD8, &type metadata for EmitterShape.Direction, v0, v1);
    atomic_store(result, &qword_1EB639E90);
  }

  return result;
}

unint64_t sub_1AF51E1E4()
{
  result = qword_1EB633688;
  if (!qword_1EB633688)
  {
    result = swift_getWitnessTable(a9_14, &type metadata for ShapeDistribution, v0, v1);
    atomic_store(result, &qword_1EB633688);
  }

  return result;
}

unint64_t sub_1AF51E238()
{
  result = qword_1EB639EA0;
  if (!qword_1EB639EA0)
  {
    result = swift_getWitnessTable(a1_21, &type metadata for ShapeDistribution, v0, v1);
    atomic_store(result, &qword_1EB639EA0);
  }

  return result;
}

unint64_t sub_1AF51E2B8()
{
  result = qword_1EB639EA8;
  if (!qword_1EB639EA8)
  {
    result = swift_getWitnessTable(a5_12, &_s15CaptureDeviceIDVN, v0, v1);
    atomic_store(result, &qword_1EB639EA8);
  }

  return result;
}

unint64_t sub_1AF51E30C()
{
  result = qword_1EB639EB0;
  if (!qword_1EB639EB0)
  {
    result = swift_getWitnessTable(asc_1AFE5802C, &_s15CaptureDeviceIDVN, v0, v1);
    atomic_store(result, &qword_1EB639EB0);
  }

  return result;
}

uint64_t sub_1AF51E378()
{
  if (qword_1EB637128 != -1)
  {
    swift_once();
  }
}

unint64_t sub_1AF51E444(unint64_t a1)
{
  result = sub_1AF5F04C4(a1);
  *v1 = result;
  return result;
}

unint64_t sub_1AF51E494(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return 0;
  }

  v7 = 4 * v4;
  v8 = 15;
  while (sub_1AFDFD1C8() != a1 || v9 != a2)
  {
    v10 = sub_1AFDFEE28();

    if (v10)
    {
      return v8;
    }

    v8 = sub_1AFDFD058();
    if (v7 == v8 >> 14)
    {
      return 0;
    }
  }

  return v8;
}

uint64_t sub_1AF51E584(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    v6 = 0;
    if (v5 == 2)
    {
      v6 = *(a2 + 16);
    }
  }

  else if (v5)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v7 = a1;
  v23 = a3 >> 40;
  v24 = a2 >> 32;
  v21 = a3 >> 24;
  v22 = HIDWORD(a3);
  v19 = a3 >> 8;
  v20 = a3 >> 16;
  v17 = HIWORD(a2);
  v18 = HIBYTE(a2);
  v15 = HIDWORD(a2);
  v16 = a2 >> 40;
  v13 = a2 >> 16;
  v14 = a2 >> 24;
  v8 = a2 >> 8;
  if (v5 > 1)
  {
    goto LABEL_10;
  }

LABEL_8:
  v9 = BYTE6(a3);
  if (v5)
  {
    v9 = v24;
  }

  while (1)
  {
    if (v6 == v9)
    {
      return 0;
    }

    if (v5)
    {
      v10 = sub_1AFDFBDB8();
      v11 = (v10 - sub_1AFDFBDE8());
    }

    else
    {
      v25[0] = a2;
      v25[1] = v8;
      v25[2] = v13;
      v25[3] = v14;
      v25[4] = v15;
      v25[5] = v16;
      v25[6] = v17;
      v25[7] = v18;
      v25[8] = a3;
      v25[9] = v19;
      v25[10] = v20;
      v25[11] = v21;
      v25[12] = v22;
      v25[13] = v23;
      v11 = v25;
    }

    if (v11[v6] == v7)
    {
      return v6;
    }

    ++v6;
    if (v5 <= 1)
    {
      goto LABEL_8;
    }

LABEL_10:
    if (v5 != 2)
    {
      return 0;
    }

    v9 = *(a2 + 24);
  }
}

uint64_t sub_1AF51E760(uint64_t *a1, uint64_t a2)
{
  v21 = *(a2 + 16);
  if (!v21)
  {
    return 0;
  }

  v2 = 0;
  v3 = *a1;
  v4 = a1[1];
  v22 = a1[3];
  v23 = a1[2];
  v19 = a1[5];
  v20 = a1[4];
  v5 = (a2 + 48);
  v17 = a1[7];
  v18 = a1[6];
  while (1)
  {
    v7 = *v5;
    v6 = v5[1];
    v8 = v5[2];
    v9 = v5[3];
    v11 = v5[4];
    v10 = v5[5];
    v12 = *(v5 - 2) == v3 && *(v5 - 1) == v4;
    if (v12 || (sub_1AFDFEE28() & 1) != 0)
    {
      v13 = v7 == v23 && v6 == v22;
      if (v13 || (sub_1AFDFEE28() & 1) != 0)
      {
        v14 = v8 == v20 && v9 == v19;
        if (v14 || (sub_1AFDFEE28() & 1) != 0)
        {
          v15 = v11 == v18 && v10 == v17;
          if (v15 || (sub_1AFDFEE28() & 1) != 0)
          {
            break;
          }
        }
      }
    }

    ++v2;
    v5 += 8;
    if (v21 == v2)
    {
      return 0;
    }
  }

  return v2;
}

uint64_t sub_1AF51E8A4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v4 = sub_1AFDFE108();
    v5 = 0;
    if (v4)
    {
      while (1)
      {
LABEL_3:
        if ((a2 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x1B2719C70](v5, a2);
        }

        else
        {
          v6 = *(a2 + 8 * v5 + 32);
        }

        if (*(v6 + 40) == *(a1 + 40) && *(v6 + 48) == *(a1 + 48))
        {
          break;
        }

        v8 = sub_1AFDFEE28();

        if (v8)
        {
          return v5;
        }

        if (v4 == ++v5)
        {
          return 0;
        }
      }
    }
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = 0;
    if (v4)
    {
      goto LABEL_3;
    }
  }

  return v5;
}

void *sub_1AF51E9A4(void *result, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, void (*a6)(uint64_t, unint64_t, uint64_t), uint64_t (*a7)(void))
{
  v11 = result;
  v12 = HIDWORD(a4);
  if (HIDWORD(a4) || a4 != -1)
  {
    v21 = a7;
    v13 = *result;
    swift_unownedRetainStrong();

    if (swift_unknownObjectUnownedLoadStrong())
    {
      swift_unknownObjectRelease();
    }

    swift_unownedRetainStrong();
    a6(a2, a4, a3);

    result = swift_unknownObjectUnownedLoadStrong();
    if (result)
    {
      result = swift_unknownObjectRelease();
    }

    if (*(v11 + 24) == 1)
    {
      swift_unownedRetainStrong();
      v18[0] = __PAIR64__(v12, a4);
      v18[1] = v13;
      v14 = v21(0);
      v19[3] = v14;
      v19[4] = &off_1F2536190;
      v15 = sub_1AF585714(v19);
      v16 = *(v14 + 44);
      v17 = sub_1AFDFC128();
      (*(*(v17 - 8) + 16))(v15 + v16, a2, v17);
      *v15 = a3;
      v20 = 11;

      sub_1AF6C67D0(v18);

      return sub_1AF57955C(v18);
    }
  }

  return result;
}

void *sub_1AF51EB28(void *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = result;
  v8 = HIDWORD(a4);
  if (HIDWORD(a4) || a4 != -1)
  {
    v9 = *result;
    swift_unownedRetainStrong();

    if (swift_unknownObjectUnownedLoadStrong())
    {
      swift_unknownObjectRelease();
    }

    swift_unownedRetainStrong();
    sub_1AF52566C(a2, a4, a3);

    result = swift_unknownObjectUnownedLoadStrong();
    if (result)
    {
      result = swift_unknownObjectRelease();
    }

    if (*(v7 + 24) == 1)
    {
      swift_unownedRetainStrong();
      v11[0] = __PAIR64__(v8, a4);
      v11[1] = v9;
      sub_1AF5A8A0C();
      v13 = v10;
      v14 = &off_1F2536190;
      v12 = swift_allocObject();
      sub_1AF0D5A54(a2, v12 + 24);
      *(v12 + 16) = a3;
      v15 = 11;

      sub_1AF6C67D0(v11);

      return sub_1AF57955C(v11);
    }
  }

  return result;
}

uint64_t sub_1AF51EC64(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, void (*a5)(unint64_t, uint64_t, double), uint64_t (*a6)(void))
{
  v9 = v6;
  v12 = result;
  v13 = HIDWORD(a3);
  if (HIDWORD(a3) || a3 != -1)
  {
    v20 = a6;
    v14 = *v6;
    swift_unownedRetainStrong();

    if (swift_unknownObjectUnownedLoadStrong())
    {
      swift_unknownObjectRelease();
    }

    v15 = swift_unownedRetainStrong();
    v21[0] = v12;
    v16 = MEMORY[0x1EEE9AC00](v15);
    v18 = a2;
    v19 = v21;
    a5(a3, a4, v16);

    result = swift_unknownObjectUnownedLoadStrong();
    if (result)
    {
      result = swift_unknownObjectRelease();
    }

    v17 = v20;
    if (*(v9 + 24) == 1)
    {
      swift_unownedRetainStrong();
      v21[0] = __PAIR64__(v13, a3);
      v21[1] = v14;
      v21[5] = v17(0);
      v21[6] = &off_1F2536190;
      v21[2] = a2;
      v21[3] = v12;
      v22 = 11;

      sub_1AF6C67D0(v21);

      return sub_1AF57955C(v21);
    }
  }

  return result;
}

uint64_t sub_1AF51EDC4(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, void (*a5)(unint64_t, uint64_t, double), uint64_t (*a6)(void))
{
  v9 = v6;
  v12 = result;
  v13 = HIDWORD(a3);
  if (HIDWORD(a3) || a3 != -1)
  {
    v20 = a6;
    v14 = *v6;
    swift_unownedRetainStrong();

    if (swift_unknownObjectUnownedLoadStrong())
    {
      swift_unknownObjectRelease();
    }

    v15 = swift_unownedRetainStrong();
    v21[0] = v12;
    v16 = MEMORY[0x1EEE9AC00](v15);
    v18 = a2;
    v19 = v21;
    a5(a3, a4, v16);

    result = swift_unknownObjectUnownedLoadStrong();
    if (result)
    {
      result = swift_unknownObjectRelease();
    }

    v17 = v20;
    if (*(v9 + 24) == 1)
    {
      swift_unownedRetainStrong();
      v21[0] = __PAIR64__(v13, a3);
      v21[1] = v14;
      v21[5] = v17(0);
      v21[6] = &off_1F2536190;
      v21[2] = a2;
      v21[3] = v12;
      v22 = 11;

      sub_1AF6C67D0(v21);

      return sub_1AF57955C(v21);
    }
  }

  return result;
}

uint64_t sub_1AF51EF24(uint64_t result, unint64_t a2, uint64_t a3, void (*a4)(unint64_t, uint64_t, double), uint64_t (*a5)(void), float a6)
{
  v10 = v6;
  v12 = result;
  v14 = HIDWORD(a2);
  if (HIDWORD(a2) || a2 != -1)
  {
    v15 = *v6;
    swift_unownedRetainStrong();

    if (swift_unknownObjectUnownedLoadStrong())
    {
      swift_unknownObjectRelease();
    }

    v16 = swift_unownedRetainStrong();
    *v18 = a6;
    v17 = MEMORY[0x1EEE9AC00](v16);
    a4(a2, a3, v17);

    result = swift_unknownObjectUnownedLoadStrong();
    if (result)
    {
      result = swift_unknownObjectRelease();
    }

    if (*(v10 + 24) == 1)
    {
      swift_unownedRetainStrong();
      v18[0] = __PAIR64__(v14, a2);
      v18[1] = v15;
      v20 = a5(0);
      v21 = &off_1F2536190;
      v18[2] = v12;
      v19 = a6;
      v22 = 11;

      sub_1AF6C67D0(v18);

      return sub_1AF57955C(v18);
    }
  }

  return result;
}

uint64_t sub_1AF51F08C(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, void (*a5)(unint64_t, uint64_t, double), uint64_t (*a6)(void))
{
  v9 = v6;
  v12 = result;
  v13 = HIDWORD(a3);
  if (HIDWORD(a3) || a3 != -1)
  {
    v21 = a6;
    v14 = *v6;
    swift_unownedRetainStrong();

    if (swift_unknownObjectUnownedLoadStrong())
    {
      swift_unknownObjectRelease();
    }

    v15 = swift_unownedRetainStrong();
    v16 = v12 & 1;
    LOBYTE(v22[0]) = v16;
    v17 = MEMORY[0x1EEE9AC00](v15);
    v19 = a2;
    v20 = v22;
    a5(a3, a4, v17);

    result = swift_unknownObjectUnownedLoadStrong();
    if (result)
    {
      result = swift_unknownObjectRelease();
    }

    v18 = v21;
    if (*(v9 + 24) == 1)
    {
      swift_unownedRetainStrong();
      v22[0] = __PAIR64__(v13, a3);
      v22[1] = v14;
      v24 = v18(0);
      v25 = &off_1F2536190;
      v22[2] = a2;
      v23 = v16;
      v26 = 11;

      sub_1AF6C67D0(v22);

      return sub_1AF57955C(v22);
    }
  }

  return result;
}

uint64_t sub_1AF51F1F4(uint64_t result, unint64_t a2, uint64_t a3, void (*a4)(unint64_t, uint64_t, double), uint64_t (*a5)(void), uint64_t a6, __n128 a7)
{
  v10 = v7;
  v12 = result;
  v22 = a7;
  v13 = HIDWORD(a2);
  if (HIDWORD(a2) || a2 != -1)
  {
    v21 = a5;
    v14 = *v7;
    swift_unownedRetainStrong();

    if (swift_unknownObjectUnownedLoadStrong())
    {
      swift_unknownObjectRelease();
    }

    v15 = swift_unownedRetainStrong();
    v23 = v22;
    v16 = MEMORY[0x1EEE9AC00](v15);
    v19 = v12;
    v20 = &v23;
    a4(a2, a3, v16);

    result = swift_unknownObjectUnownedLoadStrong();
    if (result)
    {
      result = swift_unknownObjectRelease();
    }

    v17 = v21;
    if (*(v10 + 24) == 1)
    {
      swift_unownedRetainStrong();
      v23.n128_u64[0] = __PAIR64__(v13, a2);
      v23.n128_u64[1] = v14;
      v25 = v17(0);
      v26 = &off_1F2536190;
      v18 = swift_allocObject();
      v24 = v18;
      *(v18 + 16) = v12;
      *(v18 + 32) = v22;
      v27 = 11;

      sub_1AF6C67D0(&v23);

      return sub_1AF57955C(&v23);
    }
  }

  return result;
}

uint64_t sub_1AF51F378(uint64_t result, unint64_t a2, __n128 a3)
{
  v4 = v3;
  v6 = result;
  v7 = HIDWORD(a2);
  if (HIDWORD(a2) || a2 != -1)
  {
    v8 = *v3;
    swift_unownedRetainStrong();

    if (swift_unknownObjectUnownedLoadStrong())
    {
      swift_unknownObjectRelease();
    }

    v9 = swift_unownedRetainStrong();
    v13 = a3;
    MEMORY[0x1EEE9AC00](v9);
    sub_1AFC2A4E8(a2, sub_1AF579E6C);

    result = swift_unknownObjectUnownedLoadStrong();
    if (result)
    {
      result = swift_unknownObjectRelease();
    }

    if (*(v4 + 24) == 1)
    {
      swift_unownedRetainStrong();
      v13.n128_u64[0] = __PAIR64__(v7, a2);
      v13.n128_u64[1] = v8;
      sub_1AF57B250(0, &unk_1EB63A070, type metadata accessor for simd_quatf, &type metadata for Orientation, &off_1F252C8A8);
      v15 = v10;
      v16 = &off_1F2536190;
      v11 = swift_allocObject();
      v14 = v11;
      v11[1].n128_u64[0] = v6;
      v11[2] = a3;
      v17 = 11;

      sub_1AF6C67D0(&v13);

      return sub_1AF57955C(&v13);
    }
  }

  return result;
}

uint64_t sub_1AF51F518(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, void (*a5)(unint64_t, uint64_t, double), uint64_t (*a6)(void))
{
  v9 = v6;
  v12 = result;
  v13 = HIDWORD(a3);
  if (HIDWORD(a3) || a3 != -1)
  {
    v20 = a6;
    v14 = *v6;
    swift_unownedRetainStrong();

    if (swift_unknownObjectUnownedLoadStrong())
    {
      swift_unknownObjectRelease();
    }

    v15 = swift_unownedRetainStrong();
    LOBYTE(v21[0]) = v12;
    v16 = MEMORY[0x1EEE9AC00](v15);
    v18 = a2;
    v19 = v21;
    a5(a3, a4, v16);

    result = swift_unknownObjectUnownedLoadStrong();
    if (result)
    {
      result = swift_unknownObjectRelease();
    }

    v17 = v20;
    if (*(v9 + 24) == 1)
    {
      swift_unownedRetainStrong();
      v21[0] = __PAIR64__(v13, a3);
      v21[1] = v14;
      v23 = v17(0);
      v24 = &off_1F2536190;
      v21[2] = a2;
      v22 = v12;
      v25 = 11;

      sub_1AF6C67D0(v21);

      return sub_1AF57955C(v21);
    }
  }

  return result;
}

unint64_t sub_1AF51F67C(unint64_t result, uint64_t a2, char a3, uint64_t a4, unint64_t a5)
{
  v6 = v5;
  v10 = result;
  v11 = HIDWORD(a5);
  if (HIDWORD(a5) || a5 != -1)
  {
    v12 = *v5;
    swift_unownedRetainStrong();

    if (swift_unknownObjectUnownedLoadStrong())
    {
      swift_unknownObjectRelease();
    }

    v13 = swift_unownedRetainStrong();
    v17 = v10;
    v18 = a2;
    LOBYTE(v19) = a3;
    MEMORY[0x1EEE9AC00](v13);
    sub_1AFC2A88C(a5, sub_1AF582E74);

    result = swift_unknownObjectUnownedLoadStrong();
    if (result)
    {
      result = swift_unknownObjectRelease();
    }

    if (*(v6 + 24) == 1)
    {
      swift_unownedRetainStrong();
      v17 = __PAIR64__(v11, a5);
      v18 = v12;
      sub_1AF58E254(0);
      v20 = v14;
      v21 = &off_1F2536190;
      v15 = swift_allocObject();
      v19 = v15;
      *(v15 + 16) = a4;
      *(v15 + 32) = v10;
      *(v15 + 40) = a2;
      *(v15 + 48) = a3;
      v22 = 11;

      sub_1AF6C67D0(&v17);

      return sub_1AF57955C(&v17);
    }
  }

  return result;
}

uint64_t sub_1AF51F80C(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, void (*a5)(unint64_t, uint64_t, double), uint64_t (*a6)(void))
{
  v9 = v6;
  v12 = result;
  v13 = HIDWORD(a3);
  if (HIDWORD(a3) || a3 != -1)
  {
    v20 = a6;
    v14 = *v6;
    swift_unownedRetainStrong();

    if (swift_unknownObjectUnownedLoadStrong())
    {
      swift_unknownObjectRelease();
    }

    v15 = swift_unownedRetainStrong();
    LODWORD(v21[0]) = v12;
    v16 = MEMORY[0x1EEE9AC00](v15);
    v18 = a2;
    v19 = v21;
    a5(a3, a4, v16);

    result = swift_unknownObjectUnownedLoadStrong();
    if (result)
    {
      result = swift_unknownObjectRelease();
    }

    v17 = v20;
    if (*(v9 + 24) == 1)
    {
      swift_unownedRetainStrong();
      v21[0] = __PAIR64__(v13, a3);
      v21[1] = v14;
      v23 = v17(0);
      v24 = &off_1F2536190;
      v21[2] = a2;
      v22 = v12;
      v25 = 11;

      sub_1AF6C67D0(v21);

      return sub_1AF57955C(v21);
    }
  }

  return result;
}

unint64_t sub_1AF51F970(unint64_t result, uint64_t a2, char a3, uint64_t a4, unint64_t a5, void (*a6)(__int128 *), uint64_t (*a7)(void), uint64_t a8)
{
  v10 = v8;
  v14 = result;
  v15 = HIDWORD(a5);
  if (HIDWORD(a5) || a5 != -1)
  {
    v16 = *v8;
    swift_unownedRetainStrong();

    if (swift_unknownObjectUnownedLoadStrong())
    {
      swift_unknownObjectRelease();
    }

    v17 = swift_unownedRetainStrong();
    v21 = v14;
    v22 = a2;
    LOBYTE(v23) = a3;
    MEMORY[0x1EEE9AC00](v17);
    sub_1AFC2A88C(a5, a6);

    result = swift_unknownObjectUnownedLoadStrong();
    if (result)
    {
      result = swift_unknownObjectRelease();
    }

    if (*(v10 + 24) == 1)
    {
      swift_unownedRetainStrong();
      v21 = __PAIR64__(v15, a5);
      v22 = v16;
      v24 = a7(0);
      v25 = &off_1F2536190;
      v18 = swift_allocObject();
      v23 = v18;
      *(v18 + 16) = a4;
      *(v18 + 32) = v14;
      *(v18 + 40) = a2;
      *(v18 + 48) = a3;
      v26 = 11;

      sub_1AF6C67D0(&v21);

      return sub_1AF57955C(&v21);
    }
  }

  return result;
}

unint64_t sub_1AF51FAF8(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v9 = result;
  v10 = HIDWORD(a4);
  if (HIDWORD(a4) || a4 != -1)
  {
    v11 = *v4;
    swift_unownedRetainStrong();

    if (swift_unknownObjectUnownedLoadStrong())
    {
      swift_unknownObjectRelease();
    }

    v12 = swift_unownedRetainStrong();
    v14 = v9;
    v15 = a2;
    MEMORY[0x1EEE9AC00](v12);
    sub_1AFC2AAD0(a4, sub_1AF586C48);

    result = swift_unknownObjectUnownedLoadStrong();
    if (result)
    {
      result = swift_unknownObjectRelease();
    }

    if (*(v5 + 24) == 1)
    {
      swift_unownedRetainStrong();
      v14 = __PAIR64__(v10, a4);
      v15 = v11;
      sub_1AF5A52BC(0, &qword_1EB63B798, type metadata accessor for HeaderScript, MEMORY[0x1E69E6158], &off_1F2542220);
      v19 = v13;
      v20 = &off_1F2536190;
      v16 = a3;
      v17 = v9;
      v18 = a2;
      v21 = 11;

      sub_1AF6C67D0(&v14);

      return sub_1AF57955C(&v14);
    }
  }

  return result;
}

uint64_t sub_1AF51FC8C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v7 = result;
  v8 = HIDWORD(a3);
  if (HIDWORD(a3) || a3 != -1)
  {
    v9 = *v3;
    swift_unownedRetainStrong();

    if (swift_unknownObjectUnownedLoadStrong())
    {
      swift_unknownObjectRelease();
    }

    v10 = swift_unownedRetainStrong();
    LOBYTE(v12[0]) = v7;
    MEMORY[0x1EEE9AC00](v10);
    sub_1AFC2AAD0(a3, sub_1AF57A7A0);

    result = swift_unknownObjectUnownedLoadStrong();
    if (result)
    {
      result = swift_unknownObjectRelease();
    }

    if (*(v4 + 24) == 1)
    {
      swift_unownedRetainStrong();
      v12[0] = __PAIR64__(v8, a3);
      v12[1] = v9;
      sub_1AF5A52BC(0, &qword_1EB63B7A0, type metadata accessor for HeaderScript, &type metadata for Language, &off_1F2542220);
      v14 = v11;
      v15 = &off_1F2536190;
      v12[2] = a2;
      v13 = v7;
      v16 = 11;

      sub_1AF6C67D0(v12);

      return sub_1AF57955C(v12);
    }
  }

  return result;
}

uint64_t sub_1AF51FE14(uint64_t result, unint64_t a2, uint64_t a3, void (*a4)(unint64_t, uint64_t, double), uint64_t (*a5)(void), uint64_t a6, __n128 a7)
{
  v10 = v7;
  v12 = result;
  v22 = a7;
  v13 = HIDWORD(a2);
  if (HIDWORD(a2) || a2 != -1)
  {
    v21 = a5;
    v14 = *v7;
    swift_unownedRetainStrong();

    if (swift_unknownObjectUnownedLoadStrong())
    {
      swift_unknownObjectRelease();
    }

    v15 = swift_unownedRetainStrong();
    v23 = v22;
    v16 = MEMORY[0x1EEE9AC00](v15);
    v19 = v12;
    v20 = &v23;
    a4(a2, a3, v16);

    result = swift_unknownObjectUnownedLoadStrong();
    if (result)
    {
      result = swift_unknownObjectRelease();
    }

    v17 = v21;
    if (*(v10 + 24) == 1)
    {
      swift_unownedRetainStrong();
      v23.n128_u64[0] = __PAIR64__(v13, a2);
      v23.n128_u64[1] = v14;
      v25 = v17(0);
      v26 = &off_1F2536190;
      v18 = swift_allocObject();
      v24 = v18;
      *(v18 + 16) = v12;
      *(v18 + 32) = v22;
      v27 = 11;

      sub_1AF6C67D0(&v23);

      return sub_1AF57955C(&v23);
    }
  }

  return result;
}

unint64_t sub_1AF51FF98(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, void (*a6)(unint64_t, uint64_t, double), uint64_t (*a7)(void))
{
  v10 = v7;
  v22 = result;
  v14 = HIDWORD(a4);
  if (HIDWORD(a4) || a4 != -1)
  {
    v21 = a7;
    v15 = *v7;
    swift_unownedRetainStrong();

    if (swift_unknownObjectUnownedLoadStrong())
    {
      swift_unknownObjectRelease();
    }

    v16 = swift_unownedRetainStrong();
    v23 = v22;
    v24 = a2;
    v17 = MEMORY[0x1EEE9AC00](v16);
    v19 = a3;
    v20 = &v23;
    a6(a4, a5, v17);

    result = swift_unknownObjectUnownedLoadStrong();
    if (result)
    {
      result = swift_unknownObjectRelease();
    }

    v18 = v21;
    if (*(v10 + 24) == 1)
    {
      swift_unownedRetainStrong();
      v23 = __PAIR64__(v14, a4);
      v24 = v15;
      v28 = v18(0);
      v29 = &off_1F2536190;
      v25 = a3;
      v26 = v22;
      v27 = a2;
      v30 = 11;

      sub_1AF6C67D0(&v23);

      return sub_1AF57955C(&v23);
    }
  }

  return result;
}

unint64_t sub_1AF520110(unint64_t result, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v7 = v6;
  v17 = result;
  v12 = HIDWORD(a6);
  if (HIDWORD(a6) || a6 != -1)
  {
    v13 = *v6;
    swift_unownedRetainStrong();

    if (swift_unknownObjectUnownedLoadStrong())
    {
      swift_unknownObjectRelease();
    }

    v14 = swift_unownedRetainStrong();
    v19 = v17;
    v20 = a2;
    v21 = a3;
    v22 = a4;
    MEMORY[0x1EEE9AC00](v14);
    sub_1AFC2B494(a6, sub_1AF5837F8);

    result = swift_unknownObjectUnownedLoadStrong();
    if (result)
    {
      result = swift_unknownObjectRelease();
    }

    if (*(v7 + 24) == 1)
    {
      swift_unownedRetainStrong();
      v19 = __PAIR64__(v12, a6);
      v20 = v13;
      sub_1AF583814();
      v23 = v15;
      v24 = &off_1F2536190;
      v16 = swift_allocObject();
      v21 = v16;
      v16[2] = a5;
      v16[3] = v17;
      v16[4] = a2;
      v16[5] = a3;
      v16[6] = a4;
      v25 = 11;

      sub_1AF6C67D0(&v19);

      return sub_1AF57955C(&v19);
    }
  }

  return result;
}

uint64_t sub_1AF5202B0(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, void (*a5)(unint64_t, uint64_t, double), uint64_t (*a6)(void))
{
  v9 = v6;
  v12 = result;
  v13 = HIDWORD(a3);
  if (HIDWORD(a3) || a3 != -1)
  {
    v20 = a6;
    v14 = *v6;
    swift_unownedRetainStrong();

    if (swift_unknownObjectUnownedLoadStrong())
    {
      swift_unknownObjectRelease();
    }

    v15 = swift_unownedRetainStrong();
    v21[0] = v12;
    v16 = MEMORY[0x1EEE9AC00](v15);
    v18 = a2;
    v19 = v21;
    a5(a3, a4, v16);

    result = swift_unknownObjectUnownedLoadStrong();
    if (result)
    {
      result = swift_unknownObjectRelease();
    }

    v17 = v20;
    if (*(v9 + 24) == 1)
    {
      swift_unownedRetainStrong();
      v21[0] = __PAIR64__(v13, a3);
      v21[1] = v14;
      v21[5] = v17(0);
      v21[6] = &off_1F2536190;
      v21[2] = a2;
      v21[3] = v12;
      v22 = 11;

      sub_1AF6C67D0(v21);

      return sub_1AF57955C(v21);
    }
  }

  return result;
}

unint64_t sub_1AF520418(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v9 = result;
  v10 = HIDWORD(a4);
  if (HIDWORD(a4) || a4 != -1)
  {
    v11 = *v4;
    swift_unownedRetainStrong();

    if (swift_unknownObjectUnownedLoadStrong())
    {
      swift_unknownObjectRelease();
    }

    v12 = swift_unownedRetainStrong();
    v14 = v9;
    v15 = a2;
    MEMORY[0x1EEE9AC00](v12);
    sub_1AFC2B984(a4, sub_1AF5AA66C);

    result = swift_unknownObjectUnownedLoadStrong();
    if (result)
    {
      result = swift_unknownObjectRelease();
    }

    if (*(v5 + 24) == 1)
    {
      swift_unownedRetainStrong();
      v14 = __PAIR64__(v10, a4);
      v15 = v11;
      sub_1AF5A52BC(0, &qword_1EB63B3E0, type metadata accessor for EmitterScript, MEMORY[0x1E69E6158], &off_1F255B720);
      v19 = v13;
      v20 = &off_1F2536190;
      v16 = a3;
      v17 = v9;
      v18 = a2;
      v21 = 11;

      sub_1AF6C67D0(&v14);

      return sub_1AF57955C(&v14);
    }
  }

  return result;
}

uint64_t sub_1AF5205AC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v7 = result;
  v8 = HIDWORD(a3);
  if (HIDWORD(a3) || a3 != -1)
  {
    v9 = *v3;
    swift_unownedRetainStrong();

    if (swift_unknownObjectUnownedLoadStrong())
    {
      swift_unknownObjectRelease();
    }

    v10 = swift_unownedRetainStrong();
    LOBYTE(v12[0]) = v7;
    MEMORY[0x1EEE9AC00](v10);
    sub_1AFC2B984(a3, sub_1AF5AA5AC);

    result = swift_unknownObjectUnownedLoadStrong();
    if (result)
    {
      result = swift_unknownObjectRelease();
    }

    if (*(v4 + 24) == 1)
    {
      swift_unownedRetainStrong();
      v12[0] = __PAIR64__(v8, a3);
      v12[1] = v9;
      sub_1AF5A52BC(0, &qword_1EB63B3F8, type metadata accessor for EmitterScript, &type metadata for Language, &off_1F255B720);
      v14 = v11;
      v15 = &off_1F2536190;
      v12[2] = a2;
      v13 = v7;
      v16 = 11;

      sub_1AF6C67D0(v12);

      return sub_1AF57955C(v12);
    }
  }

  return result;
}

uint64_t sub_1AF520734(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v7 = result;
  v8 = HIDWORD(a3);
  if (HIDWORD(a3) || a3 != -1)
  {
    v9 = *v3;
    swift_unownedRetainStrong();

    if (swift_unknownObjectUnownedLoadStrong())
    {
      swift_unknownObjectRelease();
    }

    v10 = swift_unownedRetainStrong();
    v12[0] = v7;
    MEMORY[0x1EEE9AC00](v10);
    sub_1AFC2BC98(a3, sub_1AF58240C);

    result = swift_unknownObjectUnownedLoadStrong();
    if (result)
    {
      result = swift_unknownObjectRelease();
    }

    if (*(v4 + 24) == 1)
    {
      swift_unownedRetainStrong();
      v12[0] = __PAIR64__(v8, a3);
      v12[1] = v9;
      sub_1AF57B250(0, &qword_1EB63A458, sub_1AF5822B0, &type metadata for MeshFileAsset, &off_1F252BCD0);
      v12[5] = v11;
      v12[6] = &off_1F2536190;
      v12[2] = a2;
      v12[3] = v7;
      v13 = 11;

      sub_1AF6C67D0(v12);

      return sub_1AF57955C(v12);
    }
  }

  return result;
}

__int128 *sub_1AF5208C0(__int128 *result, uint64_t a2, unint64_t a3, uint64_t a4, void (*a5)(unint64_t, uint64_t, double), uint64_t (*a6)(void), uint64_t a7)
{
  v37 = a6;
  v9 = v7;
  v11 = result;
  v12 = HIDWORD(a3);
  v14 = result + 1;
  v13 = *(result + 2);
  v15 = *result;
  v40 = *(result + 1);
  v41 = a2;
  v16 = *(result + 3);
  v39 = *(result + 5);
  v17 = result + 2;
  v38 = *(result + 4);
  if (HIDWORD(a3) || a3 != -1)
  {
    v32 = a5;
    v33 = v15;
    v34 = a7;
    v35 = v16;
    v36 = v13;
    v18 = *v7;
    swift_unownedRetainStrong();

    if (swift_unknownObjectUnownedLoadStrong())
    {
      swift_unknownObjectRelease();
    }

    v19 = swift_unownedRetainStrong();
    v20 = v11[1];
    v43 = *v11;
    v44 = v20;
    v45 = v11[2];
    v21 = MEMORY[0x1EEE9AC00](v19);
    v30 = v41;
    v31 = &v43;
    v32(a3, a4, v21);

    result = swift_unknownObjectUnownedLoadStrong();
    if (result)
    {
      result = swift_unknownObjectRelease();
    }

    v22 = *(v9 + 24) == 1;
    v23 = v36;
    v24 = v35;
    v25 = v33;
    if (v22)
    {
      swift_unownedRetainStrong();
      *&v43 = __PAIR64__(v12, a3);
      *(&v43 + 1) = v18;
      *(&v45 + 1) = v37(0);
      v46 = &off_1F2536190;
      v26 = swift_allocObject();
      *&v44 = v26;
      v27 = *v11;
      v49 = *v14;
      v50 = v27;
      v48 = *v17;
      v28 = v40;
      v26[2] = v41;
      v26[3] = v25;
      v26[4] = v28;
      v26[5] = v23;
      v29 = v38;
      v26[6] = v24;
      v26[7] = v29;
      v26[8] = v39;
      v47 = 11;

      sub_1AF450FE0(&v50, v42);
      sub_1AF450FE0(&v49, v42);
      sub_1AF584E94(&v48, v42, &qword_1EB632E50, &qword_1EB632E60, &protocol descriptor for AssetPathResolver, sub_1AF582518);
      sub_1AF6C67D0(&v43);

      return sub_1AF57955C(&v43);
    }
  }

  return result;
}

uint64_t sub_1AF520B48(uint64_t result, unint64_t a2, double a3, double a4)
{
  v5 = v4;
  v7 = result;
  v10 = HIDWORD(a2);
  if (HIDWORD(a2) || a2 != -1)
  {
    v11 = *v4;
    swift_unownedRetainStrong();

    if (swift_unknownObjectUnownedLoadStrong())
    {
      swift_unknownObjectRelease();
    }

    v12 = swift_unownedRetainStrong();
    v14 = *&a3;
    v15 = a4;
    MEMORY[0x1EEE9AC00](v12);
    sub_1AFC2D4E8(a2, sub_1AF579E6C);

    result = swift_unknownObjectUnownedLoadStrong();
    if (result)
    {
      result = swift_unknownObjectRelease();
    }

    if (*(v5 + 24) == 1)
    {
      swift_unownedRetainStrong();
      v14 = __PAIR64__(v10, a2);
      v15 = v11;
      sub_1AF57B250(0, &qword_1EB63A350, type metadata accessor for CGSize, &type metadata for RenderSettings, &off_1F2569248);
      v19 = v13;
      v20 = &off_1F2536190;
      v16 = v7;
      v17 = a3;
      v18 = a4;
      v21 = 11;

      sub_1AF6C67D0(&v14);

      return sub_1AF57955C(&v14);
    }
  }

  return result;
}

uint64_t sub_1AF520CD4(uint64_t result, unint64_t a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v7 = v6;
  v9 = result;
  v10 = HIDWORD(a2);
  if (HIDWORD(a2) || a2 != -1)
  {
    v11 = *v6;
    swift_unownedRetainStrong();

    if (swift_unknownObjectUnownedLoadStrong())
    {
      swift_unknownObjectRelease();
    }

    v12 = swift_unownedRetainStrong();
    v19 = a3;
    v20 = a4;
    v21 = a5;
    v22 = a6;
    MEMORY[0x1EEE9AC00](v12);
    sub_1AFC2D9E4(a2, sub_1AF57B238);

    result = swift_unknownObjectUnownedLoadStrong();
    if (result)
    {
      result = swift_unknownObjectRelease();
    }

    if (*(v7 + 24) == 1)
    {
      swift_unownedRetainStrong();
      v19.n128_u64[0] = __PAIR64__(v10, a2);
      v19.n128_u64[1] = v11;
      sub_1AF57B250(0, &qword_1EB63A010, type metadata accessor for simd_float4x4, &type metadata for WorldTransform, &off_1F2529FC0);
      v21.n128_u64[1] = v13;
      v22.n128_u64[0] = &off_1F2536190;
      v14 = swift_allocObject();
      v20.n128_u64[0] = v14;
      v14[1].n128_u64[0] = v9;
      v14[2] = a3;
      v14[3] = a4;
      v14[4] = a5;
      v14[5] = a6;
      v22.n128_u8[8] = 11;

      sub_1AF6C67D0(&v19);

      return sub_1AF57955C(&v19);
    }
  }

  return result;
}

uint64_t sub_1AF520E88(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, void (*a5)(unint64_t, uint64_t, double), uint64_t (*a6)(void))
{
  v9 = v6;
  v12 = result;
  v13 = HIDWORD(a3);
  if (HIDWORD(a3) || a3 != -1)
  {
    v20 = a6;
    v14 = *v6;
    swift_unownedRetainStrong();

    if (swift_unknownObjectUnownedLoadStrong())
    {
      swift_unknownObjectRelease();
    }

    v15 = swift_unownedRetainStrong();
    LODWORD(v21[0]) = v12;
    v16 = MEMORY[0x1EEE9AC00](v15);
    v18 = a2;
    v19 = v21;
    a5(a3, a4, v16);

    result = swift_unknownObjectUnownedLoadStrong();
    if (result)
    {
      result = swift_unknownObjectRelease();
    }

    v17 = v20;
    if (*(v9 + 24) == 1)
    {
      swift_unownedRetainStrong();
      v21[0] = __PAIR64__(v13, a3);
      v21[1] = v14;
      v23 = v17(0);
      v24 = &off_1F2536190;
      v21[2] = a2;
      v22 = v12;
      v25 = 11;

      sub_1AF6C67D0(v21);

      return sub_1AF57955C(v21);
    }
  }

  return result;
}

uint64_t sub_1AF520FEC(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v9 = result;
  v10 = HIDWORD(a4);
  if (HIDWORD(a4) || a4 != -1)
  {
    v11 = *v4;
    swift_unownedRetainStrong();

    if (swift_unknownObjectUnownedLoadStrong())
    {
      swift_unknownObjectRelease();
    }

    v12 = swift_unownedRetainStrong();
    v14 = v9;
    v15 = a2;
    MEMORY[0x1EEE9AC00](v12);
    sub_1AFC2E888(a4, sub_1AF587F38);

    result = swift_unknownObjectUnownedLoadStrong();
    if (result)
    {
      result = swift_unknownObjectRelease();
    }

    if (*(v5 + 24) == 1)
    {
      swift_unownedRetainStrong();
      v14 = __PAIR64__(v10, a4);
      v15 = v11;
      sub_1AF587F90(0);
      v19 = v13;
      v20 = &off_1F2536190;
      v16 = a3;
      v17 = v9;
      v18 = a2;
      v21 = 11;

      sub_1AF587E54(v9, a2);
      sub_1AF6C67D0(&v14);

      return sub_1AF57955C(&v14);
    }
  }

  return result;
}

uint64_t sub_1AF521158(uint64_t result, unint64_t a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v7 = v6;
  v9 = result;
  v10 = HIDWORD(a2);
  if (HIDWORD(a2) || a2 != -1)
  {
    v11 = *v6;
    swift_unownedRetainStrong();

    if (swift_unknownObjectUnownedLoadStrong())
    {
      swift_unknownObjectRelease();
    }

    v12 = swift_unownedRetainStrong();
    v19 = a3;
    v20 = a4;
    v21 = a5;
    v22 = a6;
    MEMORY[0x1EEE9AC00](v12);
    sub_1AFC2EB78(a2, sub_1AF57F14C);

    result = swift_unknownObjectUnownedLoadStrong();
    if (result)
    {
      result = swift_unknownObjectRelease();
    }

    if (*(v7 + 24) == 1)
    {
      swift_unownedRetainStrong();
      v19.n128_u64[0] = __PAIR64__(v10, a2);
      v19.n128_u64[1] = v11;
      sub_1AF57B250(0, &qword_1EB63BA38, type metadata accessor for simd_float4x4, &type metadata for CameraController, &off_1F256D2B8);
      v21.n128_u64[1] = v13;
      v22.n128_u64[0] = &off_1F2536190;
      v14 = swift_allocObject();
      v20.n128_u64[0] = v14;
      v14[1].n128_u64[0] = v9;
      v14[2] = a3;
      v14[3] = a4;
      v14[4] = a5;
      v14[5] = a6;
      v22.n128_u8[8] = 11;

      sub_1AF6C67D0(&v19);

      return sub_1AF57955C(&v19);
    }
  }

  return result;
}

uint64_t sub_1AF52130C(uint64_t result, unint64_t a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v7 = v6;
  v9 = result;
  v10 = HIDWORD(a2);
  if (HIDWORD(a2) || a2 != -1)
  {
    v11 = *v6;
    swift_unownedRetainStrong();

    if (swift_unknownObjectUnownedLoadStrong())
    {
      swift_unknownObjectRelease();
    }

    v12 = swift_unownedRetainStrong();
    v19 = a3;
    v20 = a4;
    v21 = a5;
    v22 = a6;
    MEMORY[0x1EEE9AC00](v12);
    sub_1AFC2F874(a2, sub_1AF5AA5F4);

    result = swift_unknownObjectUnownedLoadStrong();
    if (result)
    {
      result = swift_unknownObjectRelease();
    }

    if (*(v7 + 24) == 1)
    {
      swift_unownedRetainStrong();
      v19.n128_u64[0] = __PAIR64__(v10, a2);
      v19.n128_u64[1] = v11;
      sub_1AF57B250(0, &unk_1EB63A218, type metadata accessor for simd_float4x4, &type metadata for ProjectionMatrix, &off_1F2511DA0);
      v21.n128_u64[1] = v13;
      v22.n128_u64[0] = &off_1F2536190;
      v14 = swift_allocObject();
      v20.n128_u64[0] = v14;
      v14[1].n128_u64[0] = v9;
      v14[2] = a3;
      v14[3] = a4;
      v14[4] = a5;
      v14[5] = a6;
      v22.n128_u8[8] = 11;

      sub_1AF6C67D0(&v19);

      return sub_1AF57955C(&v19);
    }
  }

  return result;
}

unint64_t sub_1AF5214C0(unint64_t result, int a2, uint64_t a3, unint64_t a4, uint64_t a5, void (*a6)(unint64_t, uint64_t, double), uint64_t (*a7)(void))
{
  v10 = v7;
  v22 = a2;
  v13 = result;
  v14 = HIDWORD(a4);
  if (HIDWORD(a4) || a4 != -1)
  {
    v21 = a7;
    v15 = *v7;
    swift_unownedRetainStrong();

    if (swift_unknownObjectUnownedLoadStrong())
    {
      swift_unknownObjectRelease();
    }

    v16 = swift_unownedRetainStrong();
    v23 = v13;
    LOBYTE(v24) = v22 & 1;
    v17 = MEMORY[0x1EEE9AC00](v16);
    v19 = a3;
    v20 = &v23;
    a6(a4, a5, v17);

    result = swift_unknownObjectUnownedLoadStrong();
    if (result)
    {
      result = swift_unknownObjectRelease();
    }

    v18 = v21;
    if (*(v10 + 24) == 1)
    {
      swift_unownedRetainStrong();
      v23 = __PAIR64__(v14, a4);
      v24 = v15;
      v28 = v18(0);
      v29 = &off_1F2536190;
      v25 = a3;
      v26 = v13;
      v27 = v22 & 1;
      v30 = 11;

      sub_1AF6C67D0(&v23);

      return sub_1AF57955C(&v23);
    }
  }

  return result;
}

unint64_t sub_1AF52163C(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v9 = result;
  v10 = HIDWORD(a4);
  if (HIDWORD(a4) || a4 != -1)
  {
    v11 = *v4;
    swift_unownedRetainStrong();

    if (swift_unknownObjectUnownedLoadStrong())
    {
      swift_unknownObjectRelease();
    }

    v12 = swift_unownedRetainStrong();
    v14 = v9;
    v15 = a2;
    MEMORY[0x1EEE9AC00](v12);
    sub_1AFC31F7C(a4, sub_1AF5AA66C);

    result = swift_unknownObjectUnownedLoadStrong();
    if (result)
    {
      result = swift_unknownObjectRelease();
    }

    if (*(v5 + 24) == 1)
    {
      swift_unownedRetainStrong();
      v14 = __PAIR64__(v10, a4);
      v15 = v11;
      sub_1AF5A52BC(0, &qword_1EB63B400, type metadata accessor for ParticleInitScript, MEMORY[0x1E69E6158], &off_1F255B9C0);
      v19 = v13;
      v20 = &off_1F2536190;
      v16 = a3;
      v17 = v9;
      v18 = a2;
      v21 = 11;

      sub_1AF6C67D0(&v14);

      return sub_1AF57955C(&v14);
    }
  }

  return result;
}

uint64_t sub_1AF5217D0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v7 = result;
  v8 = HIDWORD(a3);
  if (HIDWORD(a3) || a3 != -1)
  {
    v9 = *v3;
    swift_unownedRetainStrong();

    if (swift_unknownObjectUnownedLoadStrong())
    {
      swift_unknownObjectRelease();
    }

    v10 = swift_unownedRetainStrong();
    LOBYTE(v12[0]) = v7;
    MEMORY[0x1EEE9AC00](v10);
    sub_1AFC31F7C(a3, sub_1AF5AA5AC);

    result = swift_unknownObjectUnownedLoadStrong();
    if (result)
    {
      result = swift_unknownObjectRelease();
    }

    if (*(v4 + 24) == 1)
    {
      swift_unownedRetainStrong();
      v12[0] = __PAIR64__(v8, a3);
      v12[1] = v9;
      sub_1AF5A52BC(0, &qword_1EB63B408, type metadata accessor for ParticleInitScript, &type metadata for Language, &off_1F255B9C0);
      v14 = v11;
      v15 = &off_1F2536190;
      v12[2] = a2;
      v13 = v7;
      v16 = 11;

      sub_1AF6C67D0(v12);

      return sub_1AF57955C(v12);
    }
  }

  return result;
}

void *sub_1AF521958(void *result, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v7 = result;
  v8 = HIDWORD(a3);
  if (HIDWORD(a3) || a3 != -1)
  {
    v9 = *v3;
    swift_unownedRetainStrong();

    if (swift_unknownObjectUnownedLoadStrong())
    {
      swift_unknownObjectRelease();
    }

    v10 = swift_unownedRetainStrong();
    v13[0] = v7;
    MEMORY[0x1EEE9AC00](v10);
    sub_1AFC32458(a3, sub_1AF58321C);

    result = swift_unknownObjectUnownedLoadStrong();
    if (result)
    {
      result = swift_unknownObjectRelease();
    }

    if (*(v4 + 24) == 1)
    {
      swift_unownedRetainStrong();
      v13[0] = __PAIR64__(v8, a3);
      v13[1] = v9;
      sub_1AF57B250(0, &qword_1EB63B898, sub_1AF58298C, &type metadata for PrimitiveGenerator, &off_1F252F1F0);
      v13[5] = v11;
      v13[6] = &off_1F2536190;
      v13[2] = a2;
      v13[3] = v7;
      v14 = 11;
      v12 = v7;

      sub_1AF6C67D0(v13);

      return sub_1AF57955C(v13);
    }
  }

  return result;
}

unint64_t sub_1AF521B60(unint64_t result, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v7 = v6;
  v18 = result;
  v13 = HIDWORD(a6);
  if (HIDWORD(a6) || a6 != -1)
  {
    v14 = *v6;
    swift_unownedRetainStrong();

    if (swift_unknownObjectUnownedLoadStrong())
    {
      swift_unknownObjectRelease();
    }

    v15 = swift_unownedRetainStrong();
    v19 = v18;
    v20 = a2;
    v21 = a3;
    v22 = a4;
    MEMORY[0x1EEE9AC00](v15);
    sub_1AFC32A34(a6, sub_1AF5A592C);

    result = swift_unknownObjectUnownedLoadStrong();
    if (result)
    {
      result = swift_unknownObjectRelease();
    }

    if (*(v7 + 24) == 1)
    {
      swift_unownedRetainStrong();
      v19 = __PAIR64__(v13, a6);
      v20 = v14;
      sub_1AF5A5948();
      v23 = v16;
      v24 = &off_1F2536190;
      v17 = swift_allocObject();
      v21 = v17;
      v17[2] = a5;
      v17[3] = v18;
      v17[4] = a2;
      v17[5] = a3;
      v17[6] = a4;
      v25 = 11;

      sub_1AF6C67D0(&v19);

      return sub_1AF57955C(&v19);
    }
  }

  return result;
}

uint64_t sub_1AF521D68(uint64_t result, uint64_t a2, char a3, uint64_t a4, unint64_t a5)
{
  v6 = v5;
  v10 = result;
  v11 = HIDWORD(a5);
  if (HIDWORD(a5) || a5 != -1)
  {
    v12 = *v5;
    swift_unownedRetainStrong();

    if (swift_unknownObjectUnownedLoadStrong())
    {
      swift_unknownObjectRelease();
    }

    v13 = swift_unownedRetainStrong();
    v17 = v10;
    v18 = a2;
    LOBYTE(v19) = a3 & 1;
    MEMORY[0x1EEE9AC00](v13);
    sub_1AFC32A34(a5, sub_1AF5A5B20);

    result = swift_unknownObjectUnownedLoadStrong();
    if (result)
    {
      result = swift_unknownObjectRelease();
    }

    if (*(v6 + 24) == 1)
    {
      swift_unownedRetainStrong();
      v17 = __PAIR64__(v11, a5);
      v18 = v12;
      sub_1AF5A5B80();
      v20 = v14;
      v21 = &off_1F2536190;
      v15 = swift_allocObject();
      v19 = v15;
      *(v15 + 16) = a4;
      *(v15 + 24) = v10;
      *(v15 + 32) = a2;
      *(v15 + 40) = a3 & 1;
      v22 = 11;
      sub_1AF5A5AE8(v10, a2, a3 & 1);

      sub_1AF6C67D0(&v17);

      return sub_1AF57955C(&v17);
    }
  }

  return result;
}

uint64_t sub_1AF521F0C(uint64_t result, unint64_t a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v7 = v6;
  v9 = result;
  v10 = HIDWORD(a2);
  if (HIDWORD(a2) || a2 != -1)
  {
    v11 = *v6;
    swift_unownedRetainStrong();

    if (swift_unknownObjectUnownedLoadStrong())
    {
      swift_unknownObjectRelease();
    }

    v12 = swift_unownedRetainStrong();
    v19 = a3;
    v20 = a4;
    v21 = a5;
    v22 = a6;
    MEMORY[0x1EEE9AC00](v12);
    sub_1AFC32DB4(a2, sub_1AF57B238);

    result = swift_unknownObjectUnownedLoadStrong();
    if (result)
    {
      result = swift_unknownObjectRelease();
    }

    if (*(v7 + 24) == 1)
    {
      swift_unownedRetainStrong();
      v19.n128_u64[0] = __PAIR64__(v10, a2);
      v19.n128_u64[1] = v11;
      sub_1AF57B250(0, &qword_1EB63BC38, type metadata accessor for simd_float4x4, &type metadata for WorldIBLController, &off_1F256C9F8);
      v21.n128_u64[1] = v13;
      v22.n128_u64[0] = &off_1F2536190;
      v14 = swift_allocObject();
      v20.n128_u64[0] = v14;
      v14[1].n128_u64[0] = v9;
      v14[2] = a3;
      v14[3] = a4;
      v14[4] = a5;
      v14[5] = a6;
      v22.n128_u8[8] = 11;

      sub_1AF6C67D0(&v19);

      return sub_1AF57955C(&v19);
    }
  }

  return result;
}

unint64_t sub_1AF5220C0(unint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v9 = result;
  v10 = HIDWORD(a4);
  if (HIDWORD(a4) || a4 != -1)
  {
    v11 = *v4;
    swift_unownedRetainStrong();

    if (swift_unknownObjectUnownedLoadStrong())
    {
      swift_unknownObjectRelease();
    }

    v12 = swift_unownedRetainStrong();
    v14 = v9;
    LODWORD(v15) = a2;
    BYTE4(v15) = BYTE4(a2);
    MEMORY[0x1EEE9AC00](v12);
    sub_1AFC32E9C(a4, sub_1AF5A4FB8);

    result = swift_unknownObjectUnownedLoadStrong();
    if (result)
    {
      result = swift_unknownObjectRelease();
    }

    if (*(v5 + 24) == 1)
    {
      swift_unownedRetainStrong();
      v14 = __PAIR64__(v10, a4);
      v15 = v11;
      sub_1AF5A5008();
      v20 = v13;
      v21 = &off_1F2536190;
      v16 = a3;
      v17 = v9;
      v18 = a2;
      v19 = BYTE4(a2);
      v22 = 11;

      sub_1AF6C67D0(&v14);

      return sub_1AF57955C(&v14);
    }
  }

  return result;
}

unint64_t sub_1AF522234(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v9 = result;
  v10 = HIDWORD(a4);
  if (HIDWORD(a4) || a4 != -1)
  {
    v11 = *v4;
    swift_unownedRetainStrong();

    if (swift_unknownObjectUnownedLoadStrong())
    {
      swift_unknownObjectRelease();
    }

    v12 = swift_unownedRetainStrong();
    v14 = v9;
    v15 = a2;
    MEMORY[0x1EEE9AC00](v12);
    sub_1AFC32F88(a4, sub_1AF5AA66C);

    result = swift_unknownObjectUnownedLoadStrong();
    if (result)
    {
      result = swift_unknownObjectRelease();
    }

    if (*(v5 + 24) == 1)
    {
      swift_unownedRetainStrong();
      v14 = __PAIR64__(v10, a4);
      v15 = v11;
      sub_1AF5A52BC(0, &unk_1EB63B860, type metadata accessor for MetalFunctionScript, MEMORY[0x1E69E6158], &off_1F255B630);
      v19 = v13;
      v20 = &off_1F2536190;
      v16 = a3;
      v17 = v9;
      v18 = a2;
      v21 = 11;

      sub_1AF6C67D0(&v14);

      return sub_1AF57955C(&v14);
    }
  }

  return result;
}

void *sub_1AF5223C8(void *result, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v7 = result;
  v8 = HIDWORD(a3);
  if (HIDWORD(a3) || a3 != -1)
  {
    v9 = *v3;
    swift_unownedRetainStrong();

    if (swift_unknownObjectUnownedLoadStrong())
    {
      swift_unknownObjectRelease();
    }

    v10 = swift_unownedRetainStrong();
    v13[0] = v7;
    MEMORY[0x1EEE9AC00](v10);
    sub_1AFC33AFC(a3, sub_1AF58321C);

    result = swift_unknownObjectUnownedLoadStrong();
    if (result)
    {
      result = swift_unknownObjectRelease();
    }

    if (*(v4 + 24) == 1)
    {
      swift_unownedRetainStrong();
      v13[0] = __PAIR64__(v8, a3);
      v13[1] = v9;
      sub_1AF57B250(0, &qword_1EB63A760, sub_1AF58593C, &type metadata for PointCacheFromModel, &off_1F2568160);
      v13[5] = v11;
      v13[6] = &off_1F2536190;
      v13[2] = a2;
      v13[3] = v7;
      v14 = 11;
      v12 = v7;

      sub_1AF6C67D0(v13);

      return sub_1AF57955C(v13);
    }
  }

  return result;
}

uint64_t sub_1AF522550(uint64_t result, unint64_t a2, float a3)
{
  v4 = v3;
  v6 = result;
  v8 = HIDWORD(a2);
  if (HIDWORD(a2) || a2 != -1)
  {
    v9 = *v3;
    swift_unownedRetainStrong();

    if (swift_unknownObjectUnownedLoadStrong())
    {
      swift_unknownObjectRelease();
    }

    v10 = swift_unownedRetainStrong();
    *v12 = a3;
    MEMORY[0x1EEE9AC00](v10);
    sub_1AFC33DF8(a2, sub_1AF57A6D8);

    result = swift_unknownObjectUnownedLoadStrong();
    if (result)
    {
      result = swift_unknownObjectRelease();
    }

    if (*(v4 + 24) == 1)
    {
      swift_unownedRetainStrong();
      v12[0] = __PAIR64__(v8, a2);
      v12[1] = v9;
      sub_1AF59A024();
      v14 = v11;
      v15 = &off_1F2536190;
      v12[2] = v6;
      v13 = a3;
      v16 = 11;

      sub_1AF6C67D0(v12);

      return sub_1AF57955C(v12);
    }
  }

  return result;
}

unint64_t sub_1AF5226AC(unint64_t result, uint64_t a2, uint64_t a3, int a4, uint64_t a5, unint64_t a6, uint64_t a7, void (*a8)(unint64_t, uint64_t, double), uint64_t (*a9)(void), uint64_t a10)
{
  v13 = v10;
  v26 = a4;
  v27 = result;
  v28 = a2;
  v17 = HIDWORD(a6);
  if (HIDWORD(a6) || a6 != -1)
  {
    v18 = *v10;
    swift_unownedRetainStrong();

    if (swift_unknownObjectUnownedLoadStrong())
    {
      swift_unknownObjectRelease();
    }

    v19 = swift_unownedRetainStrong();
    v29 = v27;
    v30 = v28;
    v31 = a3;
    v32 = v26;
    v20 = MEMORY[0x1EEE9AC00](v19);
    v24 = a5;
    v25 = &v29;
    a8(a6, a7, v20);

    result = swift_unknownObjectUnownedLoadStrong();
    if (result)
    {
      result = swift_unknownObjectRelease();
    }

    if (*(v13 + 24) == 1)
    {
      swift_unownedRetainStrong();
      v29 = __PAIR64__(v17, a6);
      v30 = v18;
      v33 = a9(0);
      v34 = &off_1F2536190;
      v21 = swift_allocObject();
      v31 = v21;
      v23 = v27;
      v22 = v28;
      *(v21 + 16) = a5;
      *(v21 + 24) = v23;
      *(v21 + 32) = v22;
      *(v21 + 40) = a3;
      *(v21 + 48) = v26;
      v35 = 11;

      sub_1AF6C67D0(&v29);

      return sub_1AF57955C(&v29);
    }
  }

  return result;
}

unint64_t sub_1AF52285C(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v9 = result;
  v10 = HIDWORD(a4);
  if (HIDWORD(a4) || a4 != -1)
  {
    v11 = *v4;
    swift_unownedRetainStrong();

    if (swift_unknownObjectUnownedLoadStrong())
    {
      swift_unknownObjectRelease();
    }

    v12 = swift_unownedRetainStrong();
    v14 = v9;
    v15 = a2;
    MEMORY[0x1EEE9AC00](v12);
    sub_1AFC34E00(a4, sub_1AF5AA66C);

    result = swift_unknownObjectUnownedLoadStrong();
    if (result)
    {
      result = swift_unknownObjectRelease();
    }

    if (*(v5 + 24) == 1)
    {
      swift_unownedRetainStrong();
      v14 = __PAIR64__(v10, a4);
      v15 = v11;
      sub_1AF5A52BC(0, &qword_1EB63B410, type metadata accessor for ParticleUpdateScript, MEMORY[0x1E69E6158], &off_1F255BAD0);
      v19 = v13;
      v20 = &off_1F2536190;
      v16 = a3;
      v17 = v9;
      v18 = a2;
      v21 = 11;

      sub_1AF6C67D0(&v14);

      return sub_1AF57955C(&v14);
    }
  }

  return result;
}

uint64_t sub_1AF5229F0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v7 = result;
  v8 = HIDWORD(a3);
  if (HIDWORD(a3) || a3 != -1)
  {
    v9 = *v3;
    swift_unownedRetainStrong();

    if (swift_unknownObjectUnownedLoadStrong())
    {
      swift_unknownObjectRelease();
    }

    v10 = swift_unownedRetainStrong();
    LOBYTE(v12[0]) = v7;
    MEMORY[0x1EEE9AC00](v10);
    sub_1AFC34E00(a3, sub_1AF5AA5AC);

    result = swift_unknownObjectUnownedLoadStrong();
    if (result)
    {
      result = swift_unknownObjectRelease();
    }

    if (*(v4 + 24) == 1)
    {
      swift_unownedRetainStrong();
      v12[0] = __PAIR64__(v8, a3);
      v12[1] = v9;
      sub_1AF5A52BC(0, &qword_1EB63B418, type metadata accessor for ParticleUpdateScript, &type metadata for Language, &off_1F255BAD0);
      v14 = v11;
      v15 = &off_1F2536190;
      v12[2] = a2;
      v13 = v7;
      v16 = 11;

      sub_1AF6C67D0(v12);

      return sub_1AF57955C(v12);
    }
  }

  return result;
}

unint64_t sub_1AF522B78(unint64_t result, uint64_t a2, char a3, uint64_t a4, unint64_t a5)
{
  v6 = v5;
  v10 = result;
  v11 = HIDWORD(a5);
  if (HIDWORD(a5) || a5 != -1)
  {
    v12 = *v5;
    swift_unownedRetainStrong();

    if (swift_unknownObjectUnownedLoadStrong())
    {
      swift_unknownObjectRelease();
    }

    v13 = swift_unownedRetainStrong();
    v17 = v10;
    v18 = a2;
    LOBYTE(v19) = a3 & 1;
    MEMORY[0x1EEE9AC00](v13);
    sub_1AFC35308(a5, sub_1AF582E74);

    result = swift_unknownObjectUnownedLoadStrong();
    if (result)
    {
      result = swift_unknownObjectRelease();
    }

    if (*(v6 + 24) == 1)
    {
      swift_unownedRetainStrong();
      v17 = __PAIR64__(v11, a5);
      v18 = v12;
      sub_1AF57B250(0, &qword_1EB63A4D0, sub_1AF582D5C, &type metadata for TextToImageGenerator, &off_1F2530868);
      v20 = v14;
      v21 = &off_1F2536190;
      v15 = swift_allocObject();
      v19 = v15;
      *(v15 + 16) = a4;
      *(v15 + 32) = v10;
      *(v15 + 40) = a2;
      *(v15 + 48) = a3 & 1;
      v22 = 11;

      sub_1AF6C67D0(&v17);

      return sub_1AF57955C(&v17);
    }
  }

  return result;
}

uint64_t sub_1AF522D94(uint64_t result, uint64_t a2, unint64_t a3, void (*a4)(__int128 *), uint64_t (*a5)(void))
{
  v8 = v5;
  v11 = result;
  v12 = HIDWORD(a3);
  if (HIDWORD(a3) || a3 != -1)
  {
    v13 = *v5;
    swift_unownedRetainStrong();

    if (swift_unknownObjectUnownedLoadStrong())
    {
      swift_unknownObjectRelease();
    }

    v14 = swift_unownedRetainStrong();
    LOBYTE(v15[0]) = v11;
    MEMORY[0x1EEE9AC00](v14);
    sub_1AFC35308(a3, a4);

    result = swift_unknownObjectUnownedLoadStrong();
    if (result)
    {
      result = swift_unknownObjectRelease();
    }

    if (*(v8 + 24) == 1)
    {
      swift_unownedRetainStrong();
      v15[0] = __PAIR64__(v12, a3);
      v15[1] = v13;
      v17 = a5(0);
      v18 = &off_1F2536190;
      v15[2] = a2;
      v16 = v11;
      v19 = 11;

      sub_1AF6C67D0(v15);

      return sub_1AF57955C(v15);
    }
  }

  return result;
}

void *sub_1AF522EEC(void *result, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v7 = result;
  v8 = HIDWORD(a3);
  if (HIDWORD(a3) || a3 != -1)
  {
    v9 = *v3;
    swift_unownedRetainStrong();

    if (swift_unknownObjectUnownedLoadStrong())
    {
      swift_unknownObjectRelease();
    }

    v10 = swift_unownedRetainStrong();
    v13[0] = v7;
    MEMORY[0x1EEE9AC00](v10);
    sub_1AFC35308(a3, sub_1AF58321C);

    result = swift_unknownObjectUnownedLoadStrong();
    if (result)
    {
      result = swift_unknownObjectRelease();
    }

    if (*(v4 + 24) == 1)
    {
      swift_unownedRetainStrong();
      v13[0] = __PAIR64__(v8, a3);
      v13[1] = v9;
      sub_1AF57B250(0, &qword_1EB63A528, sub_1AF58298C, &type metadata for TextToImageGenerator, &off_1F2530868);
      v13[5] = v11;
      v13[6] = &off_1F2536190;
      v13[2] = a2;
      v13[3] = v7;
      v14 = 11;
      v12 = v7;

      sub_1AF6C67D0(v13);

      return sub_1AF57955C(v13);
    }
  }

  return result;
}

unint64_t sub_1AF523074(unint64_t result, uint64_t a2, char a3, uint64_t a4, unint64_t a5)
{
  v6 = v5;
  v10 = result;
  v11 = HIDWORD(a5);
  if (HIDWORD(a5) || a5 != -1)
  {
    v12 = *v5;
    swift_unownedRetainStrong();

    if (swift_unknownObjectUnownedLoadStrong())
    {
      swift_unknownObjectRelease();
    }

    v13 = swift_unownedRetainStrong();
    v17 = v10;
    v18 = a2;
    LOBYTE(v19) = a3 & 1;
    MEMORY[0x1EEE9AC00](v13);
    sub_1AFC3746C(a5, sub_1AF582E74);

    result = swift_unknownObjectUnownedLoadStrong();
    if (result)
    {
      result = swift_unknownObjectRelease();
    }

    if (*(v6 + 24) == 1)
    {
      swift_unownedRetainStrong();
      v17 = __PAIR64__(v11, a5);
      v18 = v12;
      sub_1AF57B250(0, &qword_1EB63B100, sub_1AF5972FC, &type metadata for ParticleFlockingSolver, &off_1F2565268);
      v20 = v14;
      v21 = &off_1F2536190;
      v15 = swift_allocObject();
      v19 = v15;
      *(v15 + 16) = a4;
      *(v15 + 32) = v10;
      *(v15 + 40) = a2;
      *(v15 + 48) = a3 & 1;
      v22 = 11;

      sub_1AF6C67D0(&v17);

      return sub_1AF57955C(&v17);
    }
  }

  return result;
}

uint64_t sub_1AF523238(uint64_t result, unint64_t a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v7 = v6;
  v9 = result;
  v10 = HIDWORD(a2);
  if (HIDWORD(a2) || a2 != -1)
  {
    v11 = *v6;
    swift_unownedRetainStrong();

    if (swift_unknownObjectUnownedLoadStrong())
    {
      swift_unknownObjectRelease();
    }

    v12 = swift_unownedRetainStrong();
    v19 = a3;
    v20 = a4;
    v21 = a5;
    v22 = a6;
    MEMORY[0x1EEE9AC00](v12);
    sub_1AFC37CB0(a2, sub_1AF5AA5F4);

    result = swift_unknownObjectUnownedLoadStrong();
    if (result)
    {
      result = swift_unknownObjectRelease();
    }

    if (*(v7 + 24) == 1)
    {
      swift_unownedRetainStrong();
      v19.n128_u64[0] = __PAIR64__(v10, a2);
      v19.n128_u64[1] = v11;
      sub_1AF57B250(0, &qword_1EB63A018, type metadata accessor for simd_float4x4, &type metadata for LastFrameWorldTransform, &off_1F2529EB0);
      v21.n128_u64[1] = v13;
      v22.n128_u64[0] = &off_1F2536190;
      v14 = swift_allocObject();
      v20.n128_u64[0] = v14;
      v14[1].n128_u64[0] = v9;
      v14[2] = a3;
      v14[3] = a4;
      v14[4] = a5;
      v14[5] = a6;
      v22.n128_u8[8] = 11;

      sub_1AF6C67D0(&v19);

      return sub_1AF57955C(&v19);
    }
  }

  return result;
}

uint64_t sub_1AF5233EC(uint64_t result, unint64_t a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v7 = v6;
  v9 = result;
  v10 = HIDWORD(a2);
  if (HIDWORD(a2) || a2 != -1)
  {
    v11 = *v6;
    swift_unownedRetainStrong();

    if (swift_unknownObjectUnownedLoadStrong())
    {
      swift_unknownObjectRelease();
    }

    v12 = swift_unownedRetainStrong();
    v19 = a3;
    v20 = a4;
    v21 = a5;
    v22 = a6;
    MEMORY[0x1EEE9AC00](v12);
    sub_1AFC37D98(a2, sub_1AF57F14C);

    result = swift_unknownObjectUnownedLoadStrong();
    if (result)
    {
      result = swift_unknownObjectRelease();
    }

    if (*(v7 + 24) == 1)
    {
      swift_unownedRetainStrong();
      v19.n128_u64[0] = __PAIR64__(v10, a2);
      v19.n128_u64[1] = v11;
      sub_1AF57B250(0, &qword_1EB63B9C0, type metadata accessor for simd_float4x4, &type metadata for NodeTransformController, &off_1F256D418);
      v21.n128_u64[1] = v13;
      v22.n128_u64[0] = &off_1F2536190;
      v14 = swift_allocObject();
      v20.n128_u64[0] = v14;
      v14[1].n128_u64[0] = v9;
      v14[2] = a3;
      v14[3] = a4;
      v14[4] = a5;
      v14[5] = a6;
      v22.n128_u8[8] = 11;

      sub_1AF6C67D0(&v19);

      return sub_1AF57955C(&v19);
    }
  }

  return result;
}

uint64_t sub_1AF5235A0(uint64_t result, unint64_t a2, __n128 a3)
{
  v4 = v3;
  v6 = result;
  v7 = HIDWORD(a2);
  if (HIDWORD(a2) || a2 != -1)
  {
    v8 = *v3;
    swift_unownedRetainStrong();

    if (swift_unknownObjectUnownedLoadStrong())
    {
      swift_unknownObjectRelease();
    }

    v9 = swift_unownedRetainStrong();
    v13 = a3;
    MEMORY[0x1EEE9AC00](v9);
    sub_1AFC37D98(a2, sub_1AF579E6C);

    result = swift_unknownObjectUnownedLoadStrong();
    if (result)
    {
      result = swift_unknownObjectRelease();
    }

    if (*(v4 + 24) == 1)
    {
      swift_unownedRetainStrong();
      v13.n128_u64[0] = __PAIR64__(v7, a2);
      v13.n128_u64[1] = v8;
      sub_1AF57B250(0, &qword_1EB63B9C8, type metadata accessor for simd_quatf, &type metadata for NodeTransformController, &off_1F256D418);
      v15 = v10;
      v16 = &off_1F2536190;
      v11 = swift_allocObject();
      v14 = v11;
      v11[1].n128_u64[0] = v6;
      v11[2] = a3;
      v17 = 11;

      sub_1AF6C67D0(&v13);

      return sub_1AF57955C(&v13);
    }
  }

  return result;
}

unint64_t sub_1AF523740(unint64_t result, char a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v9 = result;
  v10 = HIDWORD(a4);
  if (HIDWORD(a4) || a4 != -1)
  {
    v11 = *v4;
    swift_unownedRetainStrong();

    if (swift_unknownObjectUnownedLoadStrong())
    {
      swift_unknownObjectRelease();
    }

    v12 = swift_unownedRetainStrong();
    v14 = v9;
    LOBYTE(v15) = a2;
    MEMORY[0x1EEE9AC00](v12);
    sub_1AFC39570(a4, sub_1AF57A5B0);

    result = swift_unknownObjectUnownedLoadStrong();
    if (result)
    {
      result = swift_unknownObjectRelease();
    }

    if (*(v5 + 24) == 1)
    {
      swift_unownedRetainStrong();
      v14 = __PAIR64__(v10, a4);
      v15 = v11;
      sub_1AF5A46C8();
      v19 = v13;
      v20 = &off_1F2536190;
      v16 = a3;
      v17 = v9;
      v18 = a2;
      v21 = 11;

      sub_1AF6C67D0(&v14);

      return sub_1AF57955C(&v14);
    }
  }

  return result;
}

unint64_t sub_1AF5238A4(unint64_t result, uint64_t a2, char a3, uint64_t a4, unint64_t a5, uint64_t a6, void (*a7)(unint64_t, uint64_t, double), uint64_t (*a8)(void), uint64_t a9)
{
  v12 = v9;
  v15 = result;
  v16 = HIDWORD(a5);
  if (HIDWORD(a5) || a5 != -1)
  {
    v17 = *v9;
    swift_unownedRetainStrong();

    if (swift_unknownObjectUnownedLoadStrong())
    {
      swift_unknownObjectRelease();
    }

    v18 = swift_unownedRetainStrong();
    v24 = v15;
    v25 = a2;
    LOBYTE(v26) = a3;
    v19 = MEMORY[0x1EEE9AC00](v18);
    a7(a5, a6, v19);

    result = swift_unknownObjectUnownedLoadStrong();
    if (result)
    {
      result = swift_unknownObjectRelease();
    }

    if (*(v12 + 24) == 1)
    {
      swift_unownedRetainStrong();
      v24 = __PAIR64__(v16, a5);
      v25 = v17;
      v27 = a8(0);
      v28 = &off_1F2536190;
      v20 = swift_allocObject();
      v26 = v20;
      *(v20 + 16) = a4;
      *(v20 + 24) = v15;
      *(v20 + 32) = a2;
      *(v20 + 40) = a3;
      v29 = 11;

      sub_1AF6C67D0(&v24);

      return sub_1AF57955C(&v24);
    }
  }

  return result;
}

uint64_t sub_1AF523A50(uint64_t result, unint64_t a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v7 = v6;
  v9 = result;
  v10 = HIDWORD(a2);
  if (HIDWORD(a2) || a2 != -1)
  {
    v11 = *v6;
    swift_unownedRetainStrong();

    if (swift_unknownObjectUnownedLoadStrong())
    {
      swift_unknownObjectRelease();
    }

    v12 = swift_unownedRetainStrong();
    v19 = a3;
    v20 = a4;
    v21 = a5;
    v22 = a6;
    MEMORY[0x1EEE9AC00](v12);
    sub_1AFC3A7C8(a2, sub_1AF5AA5F4);

    result = swift_unknownObjectUnownedLoadStrong();
    if (result)
    {
      result = swift_unknownObjectRelease();
    }

    if (*(v7 + 24) == 1)
    {
      swift_unownedRetainStrong();
      v19.n128_u64[0] = __PAIR64__(v10, a2);
      v19.n128_u64[1] = v11;
      sub_1AF57B250(0, &qword_1EB63BC28, type metadata accessor for simd_float4x4, &type metadata for WorldBackgroundController, &off_1F256CA98);
      v21.n128_u64[1] = v13;
      v22.n128_u64[0] = &off_1F2536190;
      v14 = swift_allocObject();
      v20.n128_u64[0] = v14;
      v14[1].n128_u64[0] = v9;
      v14[2] = a3;
      v14[3] = a4;
      v14[4] = a5;
      v14[5] = a6;
      v22.n128_u8[8] = 11;

      sub_1AF6C67D0(&v19);

      return sub_1AF57955C(&v19);
    }
  }

  return result;
}

unint64_t sub_1AF523C04(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, void (*a6)(unint64_t, uint64_t, double), uint64_t (*a7)(void))
{
  v10 = v7;
  v22 = a2;
  v13 = result;
  v14 = HIDWORD(a4);
  if (HIDWORD(a4) || a4 != -1)
  {
    v21 = a7;
    v15 = *v7;
    swift_unownedRetainStrong();

    if (swift_unknownObjectUnownedLoadStrong())
    {
      swift_unknownObjectRelease();
    }

    v16 = swift_unownedRetainStrong();
    v23 = v13;
    v24 = v22;
    v17 = MEMORY[0x1EEE9AC00](v16);
    v19 = a3;
    v20 = &v23;
    a6(a4, a5, v17);

    result = swift_unknownObjectUnownedLoadStrong();
    if (result)
    {
      result = swift_unknownObjectRelease();
    }

    v18 = v21;
    if (*(v10 + 24) == 1)
    {
      swift_unownedRetainStrong();
      v23 = __PAIR64__(v14, a4);
      v24 = v15;
      v28 = v18(0);
      v29 = &off_1F2536190;
      v25 = a3;
      v26 = v13;
      v27 = v22;
      v30 = 11;

      sub_1AF6C67D0(&v23);

      return sub_1AF57955C(&v23);
    }
  }

  return result;
}

uint64_t sub_1AF523D74(uint64_t result, uint64_t a2, uint64_t a3, char a4, uint64_t a5, unint64_t a6, uint64_t a7, void (*a8)(unint64_t, uint64_t, double), uint64_t (*a9)(void), uint64_t a10)
{
  v13 = v10;
  v16 = result;
  v17 = HIDWORD(a6);
  if (HIDWORD(a6) || a6 != -1)
  {
    v18 = *v10;
    swift_unownedRetainStrong();

    if (swift_unknownObjectUnownedLoadStrong())
    {
      swift_unknownObjectRelease();
    }

    v19 = swift_unownedRetainStrong();
    v25 = v16;
    v26 = a2;
    v27 = a3;
    v28 = a4;
    v20 = MEMORY[0x1EEE9AC00](v19);
    a8(a6, a7, v20);

    result = swift_unknownObjectUnownedLoadStrong();
    if (result)
    {
      result = swift_unknownObjectRelease();
    }

    if (*(v13 + 24) == 1)
    {
      swift_unownedRetainStrong();
      v25 = __PAIR64__(v17, a6);
      v26 = v18;
      v29 = a9(0);
      v30 = &off_1F2536190;
      v21 = swift_allocObject();
      v27 = v21;
      *(v21 + 16) = a5;
      *(v21 + 24) = v16;
      *(v21 + 32) = a2;
      *(v21 + 40) = a3;
      *(v21 + 48) = a4;
      v31 = 11;
      sub_1AF442550(v16, a2, a3);

      sub_1AF6C67D0(&v25);

      return sub_1AF57955C(&v25);
    }
  }

  return result;
}

uint64_t sub_1AF523F24(uint64_t result, unint64_t a2, uint64_t a3, void (*a4)(unint64_t, uint64_t, double), uint64_t (*a5)(void), float a6, float a7)
{
  v11 = v7;
  v13 = result;
  v16 = HIDWORD(a2);
  if (HIDWORD(a2) || a2 != -1)
  {
    v17 = *v7;
    swift_unownedRetainStrong();

    if (swift_unknownObjectUnownedLoadStrong())
    {
      swift_unknownObjectRelease();
    }

    v18 = swift_unownedRetainStrong();
    v20[0] = __PAIR64__(LODWORD(a7), LODWORD(a6));
    v19 = MEMORY[0x1EEE9AC00](v18);
    a4(a2, a3, v19);

    result = swift_unknownObjectUnownedLoadStrong();
    if (result)
    {
      result = swift_unknownObjectRelease();
    }

    if (*(v11 + 24) == 1)
    {
      swift_unownedRetainStrong();
      v20[0] = __PAIR64__(v16, a2);
      v20[1] = v17;
      v23 = a5(0);
      v24 = &off_1F2536190;
      v20[2] = v13;
      v21 = a6;
      v22 = a7;
      v25 = 11;

      sub_1AF6C67D0(v20);

      return sub_1AF57955C(v20);
    }
  }

  return result;
}

uint64_t sub_1AF524090(uint64_t result, unint64_t a2, uint64_t a3, void (*a4)(unint64_t, uint64_t, double), uint64_t (*a5)(void), double a6)
{
  v10 = v6;
  v12 = result;
  v14 = HIDWORD(a2);
  if (HIDWORD(a2) || a2 != -1)
  {
    v15 = *v6;
    swift_unownedRetainStrong();

    if (swift_unknownObjectUnownedLoadStrong())
    {
      swift_unknownObjectRelease();
    }

    v16 = swift_unownedRetainStrong();
    *v18 = a6;
    v17 = MEMORY[0x1EEE9AC00](v16);
    a4(a2, a3, v17);

    result = swift_unknownObjectUnownedLoadStrong();
    if (result)
    {
      result = swift_unknownObjectRelease();
    }

    if (*(v10 + 24) == 1)
    {
      swift_unownedRetainStrong();
      v18[0] = __PAIR64__(v14, a2);
      v18[1] = v15;
      v18[5] = a5(0);
      v18[6] = &off_1F2536190;
      v18[2] = v12;
      *&v18[3] = a6;
      v19 = 11;

      sub_1AF6C67D0(v18);

      return sub_1AF57955C(v18);
    }
  }

  return result;
}

unint64_t sub_1AF5241F8(unint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, void (*a5)(unint64_t, uint64_t, double), uint64_t (*a6)(void))
{
  v9 = v6;
  v12 = result;
  v13 = HIDWORD(a3);
  if (HIDWORD(a3) || a3 != -1)
  {
    v21 = a6;
    v14 = *v6;
    swift_unownedRetainStrong();

    if (swift_unknownObjectUnownedLoadStrong())
    {
      swift_unknownObjectRelease();
    }

    v15 = swift_unownedRetainStrong();
    LODWORD(v22[0]) = v12;
    v20 = HIDWORD(v12) & 1;
    BYTE4(v22[0]) = BYTE4(v12) & 1;
    v16 = MEMORY[0x1EEE9AC00](v15);
    v18 = a2;
    v19 = v22;
    a5(a3, a4, v16);

    result = swift_unknownObjectUnownedLoadStrong();
    if (result)
    {
      result = swift_unknownObjectRelease();
    }

    v17 = v21;
    if (*(v9 + 24) == 1)
    {
      swift_unownedRetainStrong();
      v22[0] = __PAIR64__(v13, a3);
      v22[1] = v14;
      v25 = v17(0);
      v26 = &off_1F2536190;
      v22[2] = a2;
      v23 = v12;
      v24 = v20;
      v27 = 11;

      sub_1AF6C67D0(v22);

      return sub_1AF57955C(v22);
    }
  }

  return result;
}

unint64_t sub_1AF524370(unint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, void (*a5)(unint64_t, uint64_t, double), uint64_t (*a6)(void))
{
  v9 = v6;
  v12 = result;
  v13 = HIDWORD(a3);
  if (HIDWORD(a3) || a3 != -1)
  {
    v20 = a6;
    v21 = HIDWORD(result);
    v14 = *v6;
    swift_unownedRetainStrong();

    if (swift_unknownObjectUnownedLoadStrong())
    {
      swift_unknownObjectRelease();
    }

    v15 = swift_unownedRetainStrong();
    v22[0] = __PAIR64__(v21, v12);
    v16 = MEMORY[0x1EEE9AC00](v15);
    v18 = a2;
    v19 = v22;
    a5(a3, a4, v16);

    result = swift_unknownObjectUnownedLoadStrong();
    if (result)
    {
      result = swift_unknownObjectRelease();
    }

    v17 = v20;
    if (*(v9 + 24) == 1)
    {
      swift_unownedRetainStrong();
      v22[0] = __PAIR64__(v13, a3);
      v22[1] = v14;
      v25 = v17(0);
      v26 = &off_1F2536190;
      v22[2] = a2;
      v23 = v12;
      v24 = v21;
      v27 = 11;

      sub_1AF6C67D0(v22);

      return sub_1AF57955C(v22);
    }
  }

  return result;
}

uint64_t sub_1AF5244E0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v7 = result;
  v8 = HIDWORD(a3);
  if (HIDWORD(a3) || a3 != -1)
  {
    v9 = *v3;
    swift_unownedRetainStrong();

    if (swift_unknownObjectUnownedLoadStrong())
    {
      swift_unknownObjectRelease();
    }

    v10 = swift_unownedRetainStrong();
    v12[0] = v7;
    MEMORY[0x1EEE9AC00](v10);
    sub_1AFC3E988(a3, sub_1AF584504);

    result = swift_unknownObjectUnownedLoadStrong();
    if (result)
    {
      result = swift_unknownObjectRelease();
    }

    if (*(v4 + 24) == 1)
    {
      swift_unownedRetainStrong();
      v12[0] = __PAIR64__(v8, a3);
      v12[1] = v9;
      sub_1AF57B250(0, &unk_1EB63A5E8, sub_1AF58425C, &type metadata for MeshModel, &off_1F2562500);
      v12[5] = v11;
      v12[6] = &off_1F2536190;
      v12[2] = a2;
      v12[3] = v7;
      v13 = 11;

      sub_1AF6C67D0(v12);

      return sub_1AF57955C(v12);
    }
  }

  return result;
}

uint64_t sub_1AF52466C(uint64_t result, unint64_t a2, uint64_t a3, void (*a4)(unint64_t, uint64_t, double), uint64_t (*a5)(void), uint64_t a6, __n128 a7, __n128 a8)
{
  v11 = v8;
  v13 = result;
  v24 = a7;
  v25 = a8;
  v14 = HIDWORD(a2);
  if (HIDWORD(a2) || a2 != -1)
  {
    v23 = a5;
    v15 = *v8;
    swift_unownedRetainStrong();

    if (swift_unknownObjectUnownedLoadStrong())
    {
      swift_unknownObjectRelease();
    }

    v16 = swift_unownedRetainStrong();
    v26 = v24;
    v27 = v25;
    v17 = MEMORY[0x1EEE9AC00](v16);
    v21 = v13;
    v22 = &v26;
    a4(a2, a3, v17);

    result = swift_unknownObjectUnownedLoadStrong();
    if (result)
    {
      result = swift_unknownObjectRelease();
    }

    v18 = v23;
    if (*(v11 + 24) == 1)
    {
      swift_unownedRetainStrong();
      v26.n128_u64[0] = __PAIR64__(v14, a2);
      v26.n128_u64[1] = v15;
      v28 = v18(0);
      v29 = &off_1F2536190;
      v19 = swift_allocObject();
      v27.n128_u64[0] = v19;
      *(v19 + 16) = v13;
      v20 = v25;
      *(v19 + 32) = v24;
      *(v19 + 48) = v20;
      v30 = 11;

      sub_1AF6C67D0(&v26);

      return sub_1AF57955C(&v26);
    }
  }

  return result;
}

uint64_t sub_1AF5247F0(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, void (*a5)(unint64_t, uint64_t, double), uint64_t (*a6)(void))
{
  v9 = v6;
  v12 = result;
  v13 = HIDWORD(a3);
  if (HIDWORD(a3) || a3 != -1)
  {
    v21 = a6;
    v14 = *v6;
    swift_unownedRetainStrong();

    if (swift_unknownObjectUnownedLoadStrong())
    {
      swift_unknownObjectRelease();
    }

    v15 = swift_unownedRetainStrong();
    v16 = v12 & 1;
    LOBYTE(v22[0]) = v16;
    v17 = MEMORY[0x1EEE9AC00](v15);
    v19 = a2;
    v20 = v22;
    a5(a3, a4, v17);

    result = swift_unknownObjectUnownedLoadStrong();
    if (result)
    {
      result = swift_unknownObjectRelease();
    }

    v18 = v21;
    if (*(v9 + 24) == 1)
    {
      swift_unownedRetainStrong();
      v22[0] = __PAIR64__(v13, a3);
      v22[1] = v14;
      v24 = v18(0);
      v25 = &off_1F2536190;
      v22[2] = a2;
      v23 = v16;
      v26 = 11;

      sub_1AF6C67D0(v22);

      return sub_1AF57955C(v22);
    }
  }

  return result;
}

void sub_1AF524958(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_1AFDFC128();
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 != 0xFFFFFFFF && (a2 & 0x80000000) == 0 && a2 < *(v3 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v10 = (*(v3 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a2);
    v11 = *(v10 + 2);
    if (HIDWORD(a2) == 0xFFFFFFFF || v10[2] == HIDWORD(a2))
    {
      v12 = *(*(v3 + 144) + 8 * *v10 + 32);
      v13 = *(v12 + 48);
      v14 = (v13 + 32);
      v15 = *(v13 + 16) + 1;
      while (--v15)
      {
        v16 = v14 + 5;
        v17 = *v14;
        v14 += 5;
        if (v17 == &type metadata for AudioFileAsset)
        {
          v18 = &(*(v16 - 2))[3 * v11] + *(v12 + 128);
          v19 = *v18;
          v20 = *(v18 + 8);
          v21 = *(v18 + 16);
          v22 = *(v18 + 24);
          v27 = *(v18 + 32);
          *&v28 = v19;
          *(&v28 + 1) = v20;
          *&v29 = v21;
          *(&v29 + 1) = v22;
          v30 = v27;
          (*(v7 + 16))(v9, a1);
          v23 = v27;

          swift_setAtWritableKeyPath();
          v24 = sub_1AF65ADEC(a2);
          if ((v25 & 0x100000000) != 0)
          {
            sub_1AFDFE518();
            __break(1u);
          }

          else
          {
            v26 = v24 << 16 >> 48;
            v31[0] = v28;
            v31[1] = v29;
            v33 = v29;
            v34 = v28;
            v31[2] = v30;
            v32 = v30;

            sub_1AFC4252C(v26, v31);

            sub_1AF585778(&v34);
            sub_1AF585778(&v33);
            sub_1AF5857CC(&v32, &qword_1EB632E50, &qword_1EB632E60, &protocol descriptor for AssetPathResolver, sub_1AF582518);
          }

          return;
        }
      }
    }
  }
}

void sub_1AF524C38(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_1AFDFC128();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 != 0xFFFFFFFF && (a2 & 0x80000000) == 0 && a2 < *(v3 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v11 = (*(v3 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a2);
    v12 = *(v11 + 2);
    if (HIDWORD(a2) == 0xFFFFFFFF || v11[2] == HIDWORD(a2))
    {
      v13 = *(*(v3 + 144) + 8 * *v11 + 32);
      v14 = *(v13 + 48);
      v15 = (v14 + 32);
      v16 = *(v14 + 16) + 1;
      while (--v16)
      {
        v17 = v15 + 5;
        v18 = *v15;
        v15 += 5;
        if (v18 == &type metadata for MovieFileAsset)
        {
          v19 = *(v17 - 2) + 56 * v12 + *(v13 + 128);
          v21 = *(v19 + 1);
          v20 = *(v19 + 2);
          v22 = *v19;
          *(v33 + 15) = *(v19 + 47);
          v32[1] = v21;
          v33[0] = v20;
          v32[0] = v22;
          v23 = v8;
          memmove(&__dst, v19, 0x33uLL);
          (*(v7 + 16))(v10, a1, v23);
          sub_1AF58680C(v32, v34);
          swift_setAtWritableKeyPath();
          v24 = sub_1AF65ADEC(a2);
          if ((v25 & 0x100000000) != 0)
          {
            sub_1AFDFE518();
            __break(1u);
          }

          else
          {
            v26 = v24 << 16 >> 48;
            v34[0] = __dst;
            v34[1] = v30;
            v35[0] = *v31;
            *(v35 + 15) = *&v31[15];

            sub_1AFC427E8(v26, v34);

            v27[0] = __dst;
            v27[1] = v30;
            *v28 = *v31;
            *&v28[15] = *&v31[15];
            sub_1AF586868(v27);
          }

          return;
        }
      }
    }
  }
}

void sub_1AF524F1C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_1AFDFC128();
  v9.n128_f64[0] = MEMORY[0x1EEE9AC00](v6);
  if (a2 != 0xFFFFFFFF && (a2 & 0x80000000) == 0 && a2 < *(v3 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v10 = (*(v3 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a2);
    if (HIDWORD(a2) == 0xFFFFFFFF || v10[2] == HIDWORD(a2))
    {
      v11 = *(*(*(v3 + 144) + 8 * *v10 + 32) + 48);
      v12 = (v11 + 32);
      v13 = *(v11 + 16) + 1;
      while (--v13)
      {
        v14 = *v12;
        v12 += 5;
        if (v14 == &type metadata for CALayerFileAsset)
        {
          (*(v8 + 16))(&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9);
          swift_setAtWritableKeyPath();
          return;
        }
      }
    }
  }
}

void sub_1AF5250AC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_1AFDFC128();
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 != 0xFFFFFFFF && (a2 & 0x80000000) == 0 && a2 < *(v3 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v10 = (*(v3 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a2);
    v11 = *(v10 + 2);
    if (HIDWORD(a2) == 0xFFFFFFFF || v10[2] == HIDWORD(a2))
    {
      v12 = *(*(v3 + 144) + 8 * *v10 + 32);
      v13 = *(v12 + 48);
      v14 = (v13 + 32);
      v15 = *(v13 + 16) + 1;
      while (--v15)
      {
        v16 = v14 + 5;
        v17 = *v14;
        v14 += 5;
        if (v17 == &type metadata for TextureFileAsset)
        {
          v18 = &(*(v16 - 2))[3 * v11] + *(v12 + 128);
          v19 = *v18;
          v20 = *(v18 + 8);
          v21 = *(v18 + 16);
          v22 = *(v18 + 24);
          v27 = *(v18 + 32);
          *&v28 = v19;
          *(&v28 + 1) = v20;
          *&v29 = v21;
          *(&v29 + 1) = v22;
          v30 = v27;
          (*(v7 + 16))(v9, a1);
          v23 = v27;

          swift_setAtWritableKeyPath();
          v24 = sub_1AF65ADEC(a2);
          if ((v25 & 0x100000000) != 0)
          {
            sub_1AFDFE518();
            __break(1u);
          }

          else
          {
            v26 = v24 << 16 >> 48;
            v31[0] = v28;
            v31[1] = v29;
            v33 = v29;
            v34 = v28;
            v31[2] = v30;
            v32 = v30;

            sub_1AFC43204(v26, v31);

            sub_1AF585778(&v34);
            sub_1AF585778(&v33);
            sub_1AF5857CC(&v32, &qword_1EB632E50, &qword_1EB632E60, &protocol descriptor for AssetPathResolver, sub_1AF582518);
          }

          return;
        }
      }
    }
  }
}

void sub_1AF52538C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_1AFDFC128();
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 != 0xFFFFFFFF && (a2 & 0x80000000) == 0 && a2 < *(v3 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v10 = (*(v3 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a2);
    v11 = *(v10 + 2);
    if (HIDWORD(a2) == 0xFFFFFFFF || v10[2] == HIDWORD(a2))
    {
      v12 = *(*(v3 + 144) + 8 * *v10 + 32);
      v13 = *(v12 + 48);
      v14 = (v13 + 32);
      v15 = *(v13 + 16) + 1;
      while (--v15)
      {
        v16 = v14 + 5;
        v17 = *v14;
        v14 += 5;
        if (v17 == &type metadata for PointCacheFileAsset)
        {
          v18 = &(*(v16 - 2))[3 * v11] + *(v12 + 128);
          v19 = *v18;
          v20 = *(v18 + 8);
          v21 = *(v18 + 16);
          v22 = *(v18 + 24);
          v27 = *(v18 + 32);
          *&v28 = v19;
          *(&v28 + 1) = v20;
          *&v29 = v21;
          *(&v29 + 1) = v22;
          v30 = v27;
          (*(v7 + 16))(v9, a1);
          v23 = v27;

          swift_setAtWritableKeyPath();
          v24 = sub_1AF65ADEC(a2);
          if ((v25 & 0x100000000) != 0)
          {
            sub_1AFDFE518();
            __break(1u);
          }

          else
          {
            v26 = v24 << 16 >> 48;
            v31[0] = v28;
            v31[1] = v29;
            v33 = v29;
            v34 = v28;
            v31[2] = v30;
            v32 = v30;

            sub_1AFC440DC(v26, v31);

            sub_1AF585778(&v34);
            sub_1AF585778(&v33);
            sub_1AF5857CC(&v32, &qword_1EB632E50, &qword_1EB632E60, &protocol descriptor for AssetPathResolver, sub_1AF582518);
          }

          return;
        }
      }
    }
  }
}

uint64_t sub_1AF52566C(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (a2 != 0xFFFFFFFF && (a2 & 0x80000000) == 0 && a2 < *(v3 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = (*(v3 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a2);
    if (HIDWORD(a2) == 0xFFFFFFFF || v4[2] == HIDWORD(a2))
    {
      v5 = *(*(*(v3 + 144) + 8 * *v4 + 32) + 48);
      v6 = (v5 + 32);
      v7 = *(v5 + 16) + 1;
      while (--v7)
      {
        v8 = *v6;
        v6 += 5;
        if (v8 == &type metadata for MorpherController)
        {
          sub_1AF0D5A54(result, &v9);
          return swift_setAtWritableKeyPath();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1AF525774(uint64_t a1)
{
  result = sub_1AF6A64B4(a1);
  *v1 = result;
  return result;
}

uint64_t sub_1AF5257D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(uint64_t, uint64_t, uint64_t)@<X5>, uint64_t *a7@<X8>)
{
  sub_1AF5A9240(0, a4, a5, type metadata accessor for EntityValueAccessors);
  v13 = v12;
  swift_allocObject();

  result = a6(a1, a2, a3);
  a7[3] = v13;
  a7[4] = &off_1F2535390;
  *a7 = result;
  return result;
}

uint64_t sub_1AF5265D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X3>, uint64_t (*a5)(uint64_t)@<X4>, uint64_t (*a6)(uint64_t, uint64_t, uint64_t)@<X5>, uint64_t *a7@<X8>)
{
  sub_1AF51B13C(0, a4, a5, type metadata accessor for EntityValueAccessors);
  v13 = v12;
  swift_allocObject();

  result = a6(a1, a2, a3);
  a7[3] = v13;
  a7[4] = &off_1F2535390;
  *a7 = result;
  return result;
}

uint64_t sub_1AF526680@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t (*a5)(uint64_t, uint64_t, uint64_t)@<X4>, uint64_t *a6@<X8>)
{
  v11 = a4(0);
  swift_allocObject();

  result = a5(a1, a2, a3);
  a6[3] = v11;
  a6[4] = &off_1F2535390;
  *a6 = result;
  return result;
}

unint64_t sub_1AF526718(unint64_t a1, uint64_t a2, uint64_t a3)
{

  v4 = sub_1AF6824B0(&type metadata for ForceField, &off_1F2560F10, a1);
  if (v4)
  {
    memmove(v7, v4, 0x8CuLL);
    swift_getAtKeyPath();

    v5 = v8;
  }

  else
  {

    v5 = 0;
  }

  return v5 | ((v4 == 0) << 32);
}

uint64_t sub_1AF5267C8(unint64_t a1, uint64_t a2, uint64_t a3)
{

  v4 = sub_1AF6824B0(&type metadata for ForceField, &off_1F2560F10, a1);
  if (v4)
  {
    memmove(v6, v4, 0x8CuLL);
    swift_getAtKeyPath();

    return v6[19];
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1AF52686C(unint64_t a1, uint64_t a2, uint64_t a3)
{

  v4 = sub_1AF6824B0(&type metadata for ForceField, &off_1F2560F10, a1);
  if (v4)
  {
    memmove(v6, v4, 0x8CuLL);
    swift_getAtKeyPath();

    return v6[18];
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1AF526914(unint64_t a1, uint64_t a2, uint64_t a3)
{

  v4 = sub_1AF6824B0(&type metadata for ForceField, &off_1F2560F10, a1);
  if (v4)
  {
    memmove(v6, v4, 0x8CuLL);
    swift_getAtKeyPath();

    return v6[143];
  }

  else
  {

    return 2;
  }
}

uint64_t sub_1AF5269AC(unint64_t a1, uint64_t a2, uint64_t a3)
{

  v4 = sub_1AF6824B0(&type metadata for CameraBloom, &off_1F25127A0, a1);
  if (v4)
  {
    memmove(v6, v4, 0x39uLL);
    swift_getAtKeyPath();

    return v6[63];
  }

  else
  {

    return 2;
  }
}

uint64_t sub_1AF526A44(unint64_t a1, uint64_t a2, uint64_t a3)
{

  v4 = sub_1AF6824B0(&type metadata for CameraBloom, &off_1F25127A0, a1);
  if (v4)
  {
    memmove(v6, v4, 0x39uLL);
    swift_getAtKeyPath();

    return v6[8];
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1AF526AEC(unint64_t a1, uint64_t a2, uint64_t a3)
{

  v4 = sub_1AF6824B0(&type metadata for CameraBloom, &off_1F25127A0, a1);
  if (v4)
  {
    memmove(v6, v4, 0x39uLL);
    swift_getAtKeyPath();

    return v6[9];
  }

  else
  {

    return 0;
  }
}

unint64_t sub_1AF526B90(unint64_t a1, uint64_t a2, uint64_t a3)
{

  v4 = sub_1AF6824B0(&type metadata for CameraBloom, &off_1F25127A0, a1);
  if (v4)
  {
    memmove(v7, v4, 0x39uLL);
    swift_getAtKeyPath();

    v5 = v8;
  }

  else
  {

    v5 = 0;
  }

  return v5 | ((v4 == 0) << 32);
}

uint64_t sub_1AF526C40(unint64_t a1, uint64_t a2, uint64_t a3)
{

  if (sub_1AF6824B0(&type metadata for Orientation, &off_1F252C8A8, a1))
  {
    swift_getAtKeyPath();

    return v5;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1AF526CE0(unint64_t a1, uint64_t a2, uint64_t a3)
{

  v4 = sub_1AF6824B0(&type metadata for CSVFileAsset, &off_1F2542D80, a1);
  if (v4)
  {
    v5 = *(v4 + 32);

    swift_getAtKeyPath();

    return v7;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1AF526DD0@<X0>(unint64_t a1@<X0>, uint64_t a4@<X8>)
{

  v6 = sub_1AF6824B0(&type metadata for CSVFileAsset, &off_1F2542D80, a1);
  if (v6)
  {
    v7 = *(v6 + 32);

    swift_getAtKeyPath();

    v9 = v14;
    v10 = v15;
    v11 = v16;
    v12 = v17;
    v13 = v18;
  }

  else
  {

    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0uLL;
  }

  *a4 = v9;
  *(a4 + 8) = v10;
  *(a4 + 16) = v11;
  *(a4 + 24) = v12;
  *(a4 + 32) = v13;
  return result;
}

uint64_t sub_1AF526EF0(unint64_t a1, uint64_t a2, uint64_t a3)
{

  v4 = sub_1AF6824B0(&type metadata for EmitterShape, &off_1F254C2E8, a1);
  if (v4)
  {
    memmove(v6, v4, 0xD1uLL);
    swift_getAtKeyPath();

    return v6[27];
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1AF526F94(unint64_t a1, uint64_t a2, uint64_t a3)
{

  v4 = sub_1AF6824B0(&type metadata for EmitterShape, &off_1F254C2E8, a1);
  if (v4)
  {
    memmove(v6, v4, 0xD1uLL);
    swift_getAtKeyPath();

    return v6[223];
  }

  else
  {

    return 3;
  }
}

uint64_t sub_1AF52702C(unint64_t a1, uint64_t a2, uint64_t a3)
{

  v4 = sub_1AF6824B0(&type metadata for EmitterShape, &off_1F254C2E8, a1);
  if (v4)
  {
    memmove(v6, v4, 0xD1uLL);
    swift_getAtKeyPath();

    return v6[28];
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1AF5270D0(unint64_t a1, uint64_t a2, uint64_t a3)
{

  v4 = sub_1AF6824B0(&type metadata for EmitterShape, &off_1F254C2E8, a1);
  if (v4)
  {
    memmove(v6, v4, 0xD1uLL);
    swift_getAtKeyPath();

    return v6[28];
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1AF527178(unint64_t a1, uint64_t a2, uint64_t a3)
{

  v4 = sub_1AF6824B0(&type metadata for EmitterShape, &off_1F254C2E8, a1);
  if (v4)
  {
    memmove(v6, v4, 0xD1uLL);
    swift_getAtKeyPath();

    return v6[223];
  }

  else
  {

    return 2;
  }
}

unint64_t sub_1AF527210(unint64_t a1, uint64_t a2, uint64_t a3)
{

  v4 = sub_1AF6824B0(&type metadata for EmitterShape, &off_1F254C2E8, a1);
  if (v4)
  {
    memmove(v7, v4, 0xD1uLL);
    swift_getAtKeyPath();

    v5 = v8;
  }

  else
  {

    v5 = 0;
  }

  return v5 | ((v4 == 0) << 32);
}

uint64_t sub_1AF5272C0(unint64_t a1, uint64_t a2, uint64_t a3)
{

  v4 = sub_1AF6824B0(&type metadata for EmitterShape, &off_1F254C2E8, a1);
  if (v4)
  {
    memmove(v6, v4, 0xD1uLL);
    swift_getAtKeyPath();

    return v6[223];
  }

  else
  {

    return 4;
  }
}

uint64_t sub_1AF527358(unint64_t a1, uint64_t a2, uint64_t a3)
{

  v4 = sub_1AF6824B0(&type metadata for EmitterShape, &off_1F254C2E8, a1);
  if (v4)
  {
    memmove(v6, v4, 0xD1uLL);
    swift_getAtKeyPath();

    return v6[28];
  }

  else
  {

    return 0;
  }
}

unint64_t sub_1AF5273FC(unint64_t a1, uint64_t a2, uint64_t a3)
{

  v4 = sub_1AF6824B0(&type metadata for EmitterShape, &off_1F254C2E8, a1);
  if (v4)
  {
    memmove(v8, v4, 0xD1uLL);
    swift_getAtKeyPath();

    v5 = 0x100000000;
    if (!v10)
    {
      v5 = 0;
    }

    v6 = v5 | v9;
  }

  else
  {

    v6 = 0;
  }

  return v6 | ((v4 == 0) << 40);
}

uint64_t sub_1AF5274C0(unint64_t a1, uint64_t a2, uint64_t a3)
{

  if (sub_1AF6824B0(&type metadata for NeighborGrid, &off_1F2563DC0, a1))
  {
    swift_getAtKeyPath();

    return v5;
  }

  else
  {

    return 2;
  }
}

uint64_t sub_1AF527568(unint64_t a1, uint64_t a2, uint64_t a3)
{

  if (sub_1AF6824B0(&type metadata for NeighborGrid, &off_1F2563DC0, a1))
  {
    swift_getAtKeyPath();

    return v5;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1AF527620(unint64_t a1, uint64_t a2, uint64_t a3)
{

  if (sub_1AF6824B0(&type metadata for NeighborGrid, &off_1F2563DC0, a1))
  {
    swift_getAtKeyPath();

    return v5;
  }

  else
  {

    return 0;
  }
}

unint64_t sub_1AF5276D4(unint64_t a1, uint64_t a2, uint64_t a3)
{

  v4 = sub_1AF6824B0(&type metadata for NeighborGrid, &off_1F2563DC0, a1);
  if (v4)
  {
    swift_getAtKeyPath();

    v5 = v7;
  }

  else
  {

    v5 = 0;
  }

  return v5 | ((v4 == 0) << 32);
}

uint64_t sub_1AF527794(unint64_t a1, uint64_t a2, uint64_t a3)
{

  if (sub_1AF6824B0(&type metadata for VideoCapture, &off_1F256EB00, a1))
  {

    swift_getAtKeyPath();

    return v5;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1AF527868(unint64_t a1, uint64_t a2, uint64_t a3)
{

  if (sub_1AF6824B0(&type metadata for VideoCapture, &off_1F256EB00, a1))
  {

    swift_getAtKeyPath();

    return v5;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1AF527948(unint64_t a1, uint64_t a2, uint64_t a3)
{

  if (sub_1AF6824B0(&type metadata for VideoCapture, &off_1F256EB00, a1))
  {

    swift_getAtKeyPath();

    return v5;
  }

  else
  {

    return 4;
  }
}

uint64_t sub_1AF527A18(unint64_t a1, uint64_t a2, uint64_t a3)
{

  if (sub_1AF6824B0(&type metadata for VideoCapture, &off_1F256EB00, a1))
  {

    swift_getAtKeyPath();

    return v5;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1AF527AF4(unint64_t a1, uint64_t a2, uint64_t a3)
{

  if (sub_1AF6824B0(&type metadata for VideoCapture, &off_1F256EB00, a1))
  {

    swift_getAtKeyPath();

    return v5;
  }

  else
  {

    return 2;
  }
}

uint64_t sub_1AF527BC4(unint64_t a1, uint64_t a2, uint64_t a3)
{

  if (sub_1AF6824B0(&type metadata for AudioAnalyzer, &off_1F256F038, a1))
  {
    swift_getAtKeyPath();

    return v5;
  }

  else
  {

    return 2;
  }
}

unint64_t sub_1AF527C6C(unint64_t a1, uint64_t a2, uint64_t a3)
{

  v4 = sub_1AF6824B0(&type metadata for AudioSpectrum, &off_1F256F878, a1);
  v5 = v4;
  if (v4)
  {
    v6 = *v4;
    v7 = v4[1];
    v8 = v4[2];
    *&v15[9] = *(v4 + 41);
    v14[1] = v7;
    *v15 = v8;
    v14[0] = v6;
    memmove(v11, v4, 0x39uLL);
    sub_1AF58715C(v14, v16);
    swift_getAtKeyPath();

    v16[0] = v11[0];
    v16[1] = v11[1];
    v17[0] = *v12;
    *(v17 + 9) = *&v12[9];
    sub_1AF5871B8(v16);
    v9 = v13;
  }

  else
  {

    v9 = 0;
  }

  return v9 | ((v5 == 0) << 32);
}

uint64_t sub_1AF527D60(unint64_t a1, uint64_t a2, uint64_t a3)
{

  v4 = sub_1AF6824B0(&type metadata for AudioSpectrum, &off_1F256F878, a1);
  if (v4)
  {
    v5 = *v4;
    v6 = v4[1];
    v7 = v4[2];
    *&v13[9] = *(v4 + 41);
    v12[1] = v6;
    *v13 = v7;
    v12[0] = v5;
    memmove(__dst, v4, 0x39uLL);
    sub_1AF58715C(v12, v14);
    swift_getAtKeyPath();

    v14[0] = __dst[0];
    v14[1] = __dst[1];
    v15[0] = v10[0];
    *(v15 + 9) = *(v10 + 9);
    sub_1AF5871B8(v14);
    return v11;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1AF527E44(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, uint64_t (*a6)(void), void (*a7)(char *))
{
  v11 = a4(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v16 - v12;

  v14 = sub_1AF6824B0(v11, a5, a1);
  if (v14)
  {
    sub_1AF5A3DE8(v14, v13, a6);
    swift_getAtKeyPath();

    a7(v13);
    return v16;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1AF527F48(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, uint64_t (*a6)(void), void (*a7)(char *))
{
  v11 = a4(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v16[-v12];

  v14 = sub_1AF6824B0(v11, a5, a1);
  if (v14)
  {
    sub_1AF5A3DE8(v14, v13, a6);
    swift_getAtKeyPath();

    a7(v13);
    return v16[15];
  }

  else
  {

    return 5;
  }
}

uint64_t sub_1AF528048(unint64_t a1, uint64_t a2, uint64_t a3)
{

  v4 = sub_1AF6824B0(&type metadata for MeshFileAsset, &off_1F252BCD0, a1);
  if (v4)
  {
    v5 = *(v4 + 32);

    v6 = v5;
    swift_getAtKeyPath();

    return v8;
  }

  else
  {

    return 1;
  }
}

uint64_t sub_1AF528138@<X0>(unint64_t a1@<X0>, uint64_t a4@<X8>)
{

  v6 = sub_1AF6824B0(&type metadata for MeshFileAsset, &off_1F252BCD0, a1);
  if (v6)
  {
    v7 = *(v6 + 32);

    v8 = v7;
    swift_getAtKeyPath();

    v10 = v15;
    v11 = v16;
    v12 = v17;
    v13 = v18;
    v14 = v19;
  }

  else
  {

    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0uLL;
  }

  *a4 = v10;
  *(a4 + 8) = v11;
  *(a4 + 16) = v12;
  *(a4 + 24) = v13;
  *(a4 + 32) = v14;
  return result;
}

uint64_t sub_1AF528258(unint64_t a1, uint64_t a2, uint64_t a3)
{

  if (sub_1AF6824B0(&type metadata for ModelRenderer, &off_1F2562450, a1))
  {
    swift_getAtKeyPath();

    return v5;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1AF5282F4(unint64_t a1, uint64_t a2, uint64_t a3)
{

  if (sub_1AF6824B0(&type metadata for ParticleForce, &off_1F2555DA0, a1))
  {
    swift_getAtKeyPath();

    return v5;
  }

  else
  {

    return 5;
  }
}

uint64_t sub_1AF52838C(unint64_t a1, uint64_t a2, uint64_t a3)
{

  if (sub_1AF6824B0(&type metadata for ParticleForce, &off_1F2555DA0, a1))
  {
    swift_getAtKeyPath();

    return v5;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1AF528430(unint64_t a1, uint64_t a2, uint64_t a3)
{

  if (sub_1AF6824B0(&type metadata for ParticleForce, &off_1F2555DA0, a1))
  {
    swift_getAtKeyPath();

    return v5;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1AF5284D8(unint64_t a1, uint64_t a2, uint64_t a3)
{

  if (sub_1AF6824B0(&type metadata for ParticleNoise, &off_1F2556AA0, a1))
  {
    swift_getAtKeyPath();

    return v5;
  }

  else
  {

    return 2;
  }
}

unint64_t sub_1AF528590(unint64_t a1, uint64_t a2, uint64_t a3)
{

  v4 = sub_1AF6824B0(&type metadata for ParticleNoise, &off_1F2556AA0, a1);
  if (v4)
  {
    swift_getAtKeyPath();

    v5 = v7;
  }

  else
  {

    v5 = 0;
  }

  return v5 | ((v4 == 0) << 32);
}

uint64_t sub_1AF528660(unint64_t a1, uint64_t a2, uint64_t a3)
{

  if (sub_1AF6824B0(&type metadata for ParticleNoise, &off_1F2556AA0, a1))
  {
    swift_getAtKeyPath();

    return v5;
  }

  else
  {

    return 3;
  }
}

uint64_t sub_1AF528718(unint64_t a1, uint64_t a2, uint64_t a3)
{

  if (sub_1AF6824B0(&type metadata for ParticleNoise, &off_1F2556AA0, a1))
  {
    swift_getAtKeyPath();

    return v5;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1AF5287DC(unint64_t a1, uint64_t a2, uint64_t a3)
{

  if (sub_1AF6824B0(&type metadata for ParticlePivot, &off_1F252D968, a1))
  {
    swift_getAtKeyPath();

    return v5;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1AF52887C(unint64_t a1, uint64_t a2, uint64_t a3)
{

  if (sub_1AF6824B0(&type metadata for SpaceOverride, &off_1F2529D48, a1))
  {
    swift_getAtKeyPath();

    return v5;
  }

  else
  {

    return 5;
  }
}

uint64_t sub_1AF52890C(unint64_t a1, uint64_t a2, uint64_t a3)
{

  if (sub_1AF6824B0(&type metadata for CameraLensBlur, &off_1F2512700, a1))
  {
    swift_getAtKeyPath();

    return v5;
  }

  else
  {

    return 3;
  }
}

uint64_t sub_1AF5289AC(unint64_t a1, uint64_t a2, uint64_t a3)
{

  if (sub_1AF6824B0(&type metadata for CameraLensBlur, &off_1F2512700, a1))
  {
    swift_getAtKeyPath();

    return v5;
  }

  else
  {

    return 0;
  }
}

unint64_t sub_1AF528A58(unint64_t a1, uint64_t a2, uint64_t a3)
{

  v4 = sub_1AF6824B0(&type metadata for CameraLensBlur, &off_1F2512700, a1);
  if (v4)
  {
    swift_getAtKeyPath();

    v5 = v7;
  }

  else
  {

    v5 = 0;
  }

  return v5 | ((v4 == 0) << 32);
}

uint64_t sub_1AF528B10(unint64_t a1, uint64_t a2, uint64_t a3)
{

  v4 = sub_1AF6824B0(&type metadata for EmitterRuntime, &off_1F2563418, a1);
  if (v4)
  {
    sub_1AF442324(v4, v6);
    swift_getAtKeyPath();

    sub_1AF58D38C(v6);
    return v6[105];
  }

  else
  {

    return 0;
  }
}

unint64_t sub_1AF528BB8(unint64_t a1, uint64_t a2, uint64_t a3)
{

  v4 = sub_1AF6824B0(&type metadata for EmitterRuntime, &off_1F2563418, a1);
  v5 = v4;
  if (v4)
  {
    sub_1AF442324(v4, v8);
    swift_getAtKeyPath();

    sub_1AF58D38C(v8);
    v6 = v9;
  }

  else
  {

    v6 = 0;
  }

  return v6 | ((v5 == 0) << 32);
}