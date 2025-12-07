uint64_t sub_1AF4FA634()
{
  result = sub_1AF4F8054();
  qword_1EB6C3018 = result;
  return result;
}

uint64_t sub_1AF4FA704()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C3E0;
  KeyPath = swift_getKeyPath();
  v2 = &type metadata for Entity;
  sub_1AF5A9240(0, &unk_1EB6338D8, &type metadata for Entity, type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF59B944;
  v3[5] = KeyPath;
  v3[2] = sub_1AF59B988;
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
  *(v4 + 16) = 6710387;
  *(v4 + 24) = 0xE300000000000000;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = &type metadata for Entity;
  *(v4 + 48) = 24;
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
  *(v4 + 144) = xmmword_1AFE551B0;
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

  *(v4 + 64) = sub_1AF59B9E4;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0, 0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  v7 = sub_1AF4F5414();
  result = sub_1AF48F810(v7, sub_1AF56E184);
  qword_1EB6C3020 = v0;
  return result;
}

uint64_t sub_1AF4FAA68()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C3E0;
  KeyPath = swift_getKeyPath();
  v2 = &type metadata for Entity;
  sub_1AF5A9240(0, &unk_1EB6338D8, &type metadata for Entity, type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF59BCD4;
  v3[5] = KeyPath;
  v3[2] = sub_1AF59BD18;
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
  *(v4 + 48) = 24;
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
    v2 = (*(v5 + 8))();
  }

  v6 = swift_conformsToProtocol2();
  if (v6 && v2)
  {
    *(v4 + 160) = (*(v6 + 8))(v2, v6);
  }

  *(v4 + 64) = sub_1AF59BD74;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0, 0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  v7 = sub_1AF4F5F24();
  result = sub_1AF48F810(v7, sub_1AF56E184);
  qword_1EB6C3028 = v0;
  return result;
}

uint64_t sub_1AF4FADD4()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE550F0;
  KeyPath = swift_getKeyPath();
  v2 = &type metadata for AABB;
  sub_1AF5A9240(0, &qword_1EB632F68, &type metadata for AABB, type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF59C0BC;
  v3[5] = KeyPath;
  v3[2] = sub_1AF59C100;
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
  *(v4 + 16) = 7892834;
  *(v4 + 24) = 0xE300000000000000;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = &type metadata for AABB;
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
    v2 = (*(v6 + 8))();
  }

  v7 = swift_conformsToProtocol2();
  if (v7 && v2)
  {
    *(v4 + 160) = (*(v7 + 8))(v2, v7);
  }

  *(v4 + 64) = sub_1AF59C164;
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
  v10[4] = sub_1AF59C1A4;
  v10[5] = v8;
  v10[2] = sub_1AF59C1D0;
  v10[3] = v8;
  v10[6] = v8;
  v11 = swift_allocObject();
  *(v11 + 112) = 1;
  *(v11 + 128) = 0;
  *(v11 + 136) = 0;
  *(v11 + 120) = 0;
  *(v11 + 160) = v5;
  *(v11 + 168) = 0;
  *(v11 + 216) = 0;
  *(v11 + 176) = 0;
  strcpy((v11 + 16), "inwardNormal");
  *(v11 + 29) = 0;
  *(v11 + 30) = -5120;
  *(v11 + 32) = v8;
  *(v11 + 40) = v9;
  *(v11 + 48) = 40;
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

  *(v11 + 64) = sub_1AF59C22C;
  *(v11 + 72) = v8;
  sub_1AF0FB8EC(0, 0);
  *(v11 + 168) = 0;
  *(v11 + 176) = 0;

  *(v11 + 216) = 0;
  *(v0 + 40) = v11;
  v14 = swift_getKeyPath();
  v15 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v16 = swift_allocObject();
  v16[4] = sub_1AF59C26C;
  v16[5] = v14;
  v16[2] = sub_1AF59C2A0;
  v16[3] = v14;
  v16[6] = v14;
  v17 = swift_allocObject();
  *(v17 + 112) = 1;
  *(v17 + 128) = 0;
  *(v17 + 136) = 0;
  *(v17 + 120) = 0;
  *(v17 + 160) = v5;
  *(v17 + 168) = 0;
  *(v17 + 216) = 0;
  *(v17 + 176) = 0;
  *(v17 + 16) = 0x6963697473616C65;
  *(v17 + 24) = 0xEA00000000007974;
  *(v17 + 32) = v14;
  *(v17 + 40) = v15;
  *(v17 + 48) = 32;
  *(v17 + 56) = 0;
  *(v17 + 58) = 0;
  *(v17 + 184) = -1082130432;
  *(v17 + 188) = 0;
  *(v17 + 192) = 0;
  *(v17 + 196) = 1;
  *(v17 + 200) = 0x100003C23D70ALL;
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

  *(v17 + 64) = sub_1AF59C2FC;
  *(v17 + 72) = v14;
  sub_1AF0FB8EC(0, 0);
  *(v17 + 168) = 0;
  *(v17 + 176) = 0;

  *(v17 + 216) = 0;
  *(v0 + 48) = v17;
  v21 = swift_getKeyPath();
  v22 = swift_allocObject();
  v22[4] = sub_1AF5A9528;
  v22[5] = v21;
  v22[2] = sub_1AF5A9F0C;
  v22[3] = v21;
  v22[6] = v21;
  v23 = swift_allocObject();
  *(v23 + 112) = 1;
  *(v23 + 128) = 0;
  *(v23 + 136) = 0;
  *(v23 + 120) = 0;
  *(v23 + 168) = 0;
  *(v23 + 160) = MEMORY[0x1E69E7CC0];
  *(v23 + 216) = 0;
  *(v23 + 176) = 0;
  *(v23 + 16) = 0x6E6F697463697266;
  *(v23 + 24) = 0xE800000000000000;
  *(v23 + 32) = v21;
  *(v23 + 40) = v15;
  *(v23 + 48) = 36;
  *(v23 + 56) = 0;
  *(v23 + 58) = 0;
  *(v23 + 184) = -1082130432;
  *(v23 + 188) = 0;
  *(v23 + 192) = 1065353216;
  *(v23 + 196) = 0;
  *(v23 + 200) = 1008981770;
  *(v23 + 204) = 0x10000;
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
    v15 = (*(v18 + 8))();
  }

  v24 = swift_conformsToProtocol2();
  if (v24 && v15)
  {
    *(v23 + 160) = (*(v24 + 8))(v15, v24);
  }

  *(v23 + 64) = sub_1AF5A9928;
  *(v23 + 72) = v21;
  sub_1AF0FB8EC(0, 0);
  *(v23 + 168) = 0;
  *(v23 + 176) = 0;

  *(v23 + 216) = 0;
  *(v0 + 56) = v23;
  qword_1EB6C3030 = v0;
  return result;
}

uint64_t sub_1AF4FB6C8()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE550E0;
  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  v3 = MEMORY[0x1E69E7360];
  sub_1AF5A9240(0, &unk_1EB634340, MEMORY[0x1E69E7360], type metadata accessor for EntityGetSet);
  v4 = swift_allocObject();
  v4[4] = sub_1AF59C45C;
  v4[5] = v2;
  v4[2] = sub_1AF59C490;
  v4[3] = v2;
  v4[6] = v2;
  type metadata accessor for PropertyDescription();
  v5 = swift_allocObject();
  *(v5 + 112) = 1;
  *(v5 + 128) = 0;
  *(v5 + 136) = 0;
  *(v5 + 120) = 0;
  v6 = MEMORY[0x1E69E7CC0];
  *(v5 + 160) = MEMORY[0x1E69E7CC0];
  *(v5 + 168) = 0;
  *(v5 + 216) = 0;
  *(v5 + 176) = 0;
  *(v5 + 16) = 0x646E496570616873;
  *(v5 + 24) = 0xEA00000000007865;
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

  *(v5 + 64) = sub_1AF59C4EC;
  *(v5 + 72) = v2;
  sub_1AF0FB8EC(0, 0);
  *(v5 + 168) = 0;
  *(v5 + 176) = 0;

  *(v5 + 216) = 0;
  v9 = &type metadata for KillShape.Shape;
  sub_1AF5A9240(0, &qword_1EB63B3A8, &type metadata for KillShape.Shape, type metadata accessor for EntityGetSet);
  v10 = swift_allocObject();
  v10[4] = sub_1AF59C52C;
  v10[5] = KeyPath;
  v10[2] = sub_1AF59C558;
  v10[3] = KeyPath;
  v10[6] = KeyPath;
  v11 = swift_allocObject();
  *(v11 + 112) = 1;
  *(v11 + 128) = 0;
  *(v11 + 136) = 0;
  *(v11 + 120) = 0;
  *(v11 + 160) = v6;
  *(v11 + 168) = 0;
  *(v11 + 216) = 0;
  *(v11 + 176) = 0;
  *(v11 + 16) = 0x6570616873;
  *(v11 + 24) = 0xE500000000000000;
  *(v11 + 32) = KeyPath;
  *(v11 + 40) = &type metadata for KillShape.Shape;
  *(v11 + 48) = 0;
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

  *(v11 + 64) = sub_1AF59C5B4;
  *(v11 + 72) = KeyPath;
  sub_1AF0FB8EC(0, 0);
  *(v11 + 168) = 0;
  *(v11 + 176) = 0;

  *(v11 + 216) = v5;
  *(v0 + 32) = v11;
  v14 = swift_getKeyPath();
  v15 = MEMORY[0x1E69E6370];
  sub_1AF5A9240(0, &qword_1ED722B80, MEMORY[0x1E69E6370], type metadata accessor for EntityGetSet);
  v16 = swift_allocObject();
  v16[4] = sub_1AF59C5F4;
  v16[5] = v14;
  v16[2] = sub_1AF59C630;
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
  *(v17 + 16) = 0x6564697374756FLL;
  *(v17 + 24) = 0xE700000000000000;
  *(v17 + 32) = v14;
  *(v17 + 40) = v15;
  *(v17 + 48) = 1;
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
    v15 = (*(v18 + 8))();
  }

  v19 = swift_conformsToProtocol2();
  if (v19 && v15)
  {
    *(v17 + 160) = (*(v19 + 8))(v15, v19);
  }

  *(v17 + 64) = sub_1AF59C68C;
  *(v17 + 72) = v14;
  sub_1AF0FB8EC(0, 0);
  *(v17 + 168) = 0;
  *(v17 + 176) = 0;

  *(v17 + 216) = 0;
  *(v0 + 40) = v17;
  qword_1EB6C3038 = v0;
  return result;
}

uint64_t sub_1AF4FBE48()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE550E0;
  KeyPath = swift_getKeyPath();
  v2 = &type metadata for Language;
  sub_1AF5A9240(0, &qword_1EB63B3D8, &type metadata for Language, type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF59C81C;
  v3[5] = KeyPath;
  v3[2] = sub_1AF59C88C;
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

  *(v4 + 64) = sub_1AF59C8C0;
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
  v10[4] = sub_1AF59C900;
  v10[5] = v8;
  v10[2] = sub_1AF59C970;
  v10[3] = v8;
  v10[6] = v8;
  v11 = swift_allocObject();
  *(v11 + 112) = 1;
  *(v11 + 120) = 0;
  *(v11 + 128) = 0;
  *(v11 + 16) = 1701080931;
  *(v11 + 24) = 0xE400000000000000;
  *(v11 + 200) = 0x1000100000000;
  *(v11 + 168) = 0;
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
  *(v11 + 136) = 0;
  *(v11 + 144) = &type metadata for EmitterScript.Info;
  *(v11 + 96) = 0;
  *(v11 + 104) = 0;
  *(v11 + 152) = &off_1F255CAA8;
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

  *(v11 + 64) = sub_1AF59C9A0;
  *(v11 + 72) = v8;
  sub_1AF0FB8EC(0, 0);
  *(v11 + 168) = 0;
  *(v11 + 176) = 0;

  *(v11 + 216) = 0;
  *(v0 + 40) = v11;
  qword_1EB6C3040 = v0;
  return result;
}

uint64_t sub_1AF4FC36C()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE550E0;
  KeyPath = swift_getKeyPath();
  v2 = &type metadata for Language;
  sub_1AF5A9240(0, &qword_1EB63B3D8, &type metadata for Language, type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF59CA7C;
  v3[5] = KeyPath;
  v3[2] = sub_1AF59CAEC;
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

  *(v4 + 64) = sub_1AF59CB20;
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
  v10[4] = sub_1AF59CB60;
  v10[5] = v8;
  v10[2] = sub_1AF59CBD0;
  v10[3] = v8;
  v10[6] = v8;
  v11 = swift_allocObject();
  *(v11 + 112) = 1;
  *(v11 + 120) = 0;
  *(v11 + 128) = 0;
  *(v11 + 16) = 1701080931;
  *(v11 + 24) = 0xE400000000000000;
  *(v11 + 200) = 0x1000100000000;
  *(v11 + 168) = 0;
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
  *(v11 + 136) = 0;
  *(v11 + 144) = &type metadata for ParticleInitScript.Info;
  *(v11 + 96) = 0;
  *(v11 + 104) = 0;
  *(v11 + 152) = &off_1F255CA78;
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

  *(v11 + 64) = sub_1AF59CC00;
  *(v11 + 72) = v8;
  sub_1AF0FB8EC(0, 0);
  *(v11 + 168) = 0;
  *(v11 + 176) = 0;

  *(v11 + 216) = 0;
  *(v0 + 40) = v11;
  qword_1EB6C3048 = v0;
  return result;
}

uint64_t sub_1AF4FC874()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE550E0;
  KeyPath = swift_getKeyPath();
  v2 = &type metadata for Language;
  sub_1AF5A9240(0, &qword_1EB63B3D8, &type metadata for Language, type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF59CC84;
  v3[5] = KeyPath;
  v3[2] = sub_1AF59CCF4;
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

  *(v4 + 64) = sub_1AF59CD28;
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
  v10[4] = sub_1AF59CD68;
  v10[5] = v8;
  v10[2] = sub_1AF59CDD8;
  v10[3] = v8;
  v10[6] = v8;
  v11 = swift_allocObject();
  *(v11 + 112) = 1;
  *(v11 + 120) = 0;
  *(v11 + 128) = 0;
  *(v11 + 16) = 1701080931;
  *(v11 + 24) = 0xE400000000000000;
  *(v11 + 200) = 0x1000100000000;
  *(v11 + 168) = 0;
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
  *(v11 + 136) = 0;
  *(v11 + 144) = &type metadata for ParticleUpdateScript.Info;
  *(v11 + 96) = 0;
  *(v11 + 104) = 0;
  *(v11 + 152) = &off_1F255CA48;
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

  *(v11 + 64) = sub_1AF59CE08;
  *(v11 + 72) = v8;
  sub_1AF0FB8EC(0, 0);
  *(v11 + 168) = 0;
  *(v11 + 176) = 0;

  *(v11 + 216) = 0;
  *(v0 + 40) = v11;
  qword_1EB6C3050 = v0;
  return result;
}

uint64_t sub_1AF4FCD7C(uint64_t a1, uint64_t a2)
{
  if (!sub_1AF9FA388(a1, *(a2 + 8)))
  {
    return 0;
  }

  v4 = *(a2 + 56);

  return v4(a1, a2);
}

void *sub_1AF4FCDF0()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v132 = swift_allocObject();
  *(v132 + 16) = xmmword_1AFE55190;
  sub_1AF59F330();
  KeyPath = swift_getKeyPath();
  v1 = swift_getKeyPath();
  v2 = &type metadata for Entity;
  sub_1AF5A9240(0, &unk_1EB6338D8, &type metadata for Entity, type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF59F384;
  v3[5] = KeyPath;
  v3[2] = sub_1AF59F3C8;
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
  *(v4 + 176) = 0;
  *(v4 + 216) = 0;
  *(v4 + 16) = 0xD000000000000010;
  *(v4 + 24) = 0x80000001AFF22E00;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = &type metadata for Entity;
  *(v4 + 48) = 0;
  *(v4 + 56) = 1;
  *(v4 + 58) = 0;
  *(v4 + 184) = 0;
  *(v4 + 188) = 1;
  *(v4 + 192) = 0;
  *(v4 + 196) = 1;
  *(v4 + 200) = 0x1000100000000;
  *(v4 + 208) = 1;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  *(v4 + 96) = v1;
  *(v4 + 104) = 0;
  *(v4 + 144) = xmmword_1AFE551E0;
  *(v4 + 80) = v3;
  *(v4 + 88) = &off_1F2535378;
  *(v4 + 210) = 0;
  v5 = swift_conformsToProtocol2();
  v6 = v5;
  if (v5)
  {
    v7 = (*(v5 + 8))(&type metadata for Entity, v5);
  }

  else
  {
    v7 = &type metadata for Entity;
  }

  v8 = swift_conformsToProtocol2();
  if (v8 && v7)
  {
    v9 = *(v8 + 8);
    v10 = v8;
    swift_retain_n();
    v11 = v9(v7, v10);
    *(v4 + 160) = v11;
  }

  else
  {
    v11 = swift_retain_n();
  }

  *(v4 + 64) = sub_1AF59F424;
  *(v4 + 72) = KeyPath;
  *(v4 + 216) = 0;
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;
  v12 = v132;
  *(v132 + 32) = v4;
  MEMORY[0x1EEE9AC00](v11);
  v13 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v13);
  v14 = swift_getKeyPath();
  v15 = swift_allocObject();
  v15[4] = sub_1AF5AA3DC;
  v15[5] = v13;
  v15[2] = sub_1AF5A9F98;
  v15[3] = v13;
  v15[6] = v13;
  v16 = swift_allocObject();
  *(v16 + 112) = 1;
  *(v16 + 128) = 0;
  *(v16 + 136) = 0;
  *(v16 + 120) = 0;
  *(v16 + 160) = MEMORY[0x1E69E7CC0];
  *(v16 + 168) = 0;
  *(v16 + 176) = 0;
  *(v16 + 216) = 0;
  *(v16 + 16) = 0x65727574786574;
  *(v16 + 24) = 0xE700000000000000;
  *(v16 + 32) = v13;
  *(v16 + 40) = &type metadata for Entity;
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
  *(v16 + 96) = v14;
  *(v16 + 104) = 0;
  *(v16 + 144) = xmmword_1AFE551B0;
  *(v16 + 80) = v15;
  *(v16 + 88) = &off_1F2535378;
  *(v16 + 210) = 0;

  if (v6)
  {
    v2 = (*(v6 + 8))();
  }

  v17 = swift_conformsToProtocol2();
  if (v17 && v2)
  {
    v18 = *(v17 + 8);
    v19 = v17;
    swift_retain_n();
    v20 = v18(v2, v19);
    *(v16 + 160) = v20;
  }

  else
  {
    v20 = swift_retain_n();
  }

  *(v16 + 64) = sub_1AF5A997C;
  *(v16 + 72) = v13;
  *(v16 + 216) = 0;
  *(v16 + 168) = 0;
  *(v16 + 176) = 0;
  *(v132 + 40) = v16;
  MEMORY[0x1EEE9AC00](v20);
  v21 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v21);
  v133 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v133);
  v22 = swift_getKeyPath();
  v23 = MEMORY[0x1E69E7360];
  sub_1AF5A9240(0, &unk_1EB634340, MEMORY[0x1E69E7360], type metadata accessor for EntityGetSet);
  v24 = swift_allocObject();
  v24[4] = sub_1AF59F384;
  v24[5] = v22;
  v24[2] = sub_1AF59F464;
  v24[3] = v22;
  v24[6] = v22;
  v25 = swift_allocObject();
  *(v25 + 112) = 1;
  *(v25 + 128) = 0;
  *(v25 + 136) = 0;
  *(v25 + 120) = 0;
  *(v25 + 160) = MEMORY[0x1E69E7CC0];
  *(v25 + 168) = 0;
  *(v25 + 176) = 0;
  *(v25 + 216) = 0;
  strcpy((v25 + 16), "blendModeIndex");
  *(v25 + 31) = -18;
  *(v25 + 32) = v22;
  *(v25 + 40) = v23;
  *(v25 + 48) = 0;
  *(v25 + 56) = 1;
  *(v25 + 58) = 0;
  *(v25 + 184) = 0;
  *(v25 + 188) = 1;
  *(v25 + 192) = 0;
  *(v25 + 196) = 1;
  *(v25 + 200) = 0x1000100000000;
  *(v25 + 208) = 1;
  *(v25 + 96) = 0;
  *(v25 + 104) = 0;
  *(v25 + 64) = 0;
  *(v25 + 72) = 0;
  *(v25 + 144) = xmmword_1AFE22A20;
  *(v25 + 80) = v24;
  *(v25 + 88) = &off_1F2535378;
  *(v25 + 210) = 0;
  v26 = swift_conformsToProtocol2();

  if (v26)
  {
    v27 = (*(v26 + 8))();
  }

  else
  {
    v27 = v23;
  }

  v28 = swift_conformsToProtocol2();
  v135 = v26;
  if (v28 && v27)
  {
    v29 = *(v28 + 8);
    v30 = v28;
    swift_retain_n();
    *(v25 + 160) = v29(v27, v30);
  }

  else
  {
    swift_retain_n();
  }

  *(v25 + 64) = sub_1AF59F4C0;
  *(v25 + 72) = v22;
  *(v25 + 216) = 0;
  v31 = &type metadata for BlendMode;
  sub_1AF5A9240(0, &unk_1EB633878, &type metadata for BlendMode, type metadata accessor for EntityGetSet);
  *(v25 + 168) = 0;
  *(v25 + 176) = 0;
  v32 = swift_allocObject();
  v32[4] = sub_1AF59F500;
  v32[5] = v21;
  v32[2] = sub_1AF59F54C;
  v32[3] = v21;
  v32[6] = v21;
  v33 = swift_allocObject();
  *(v33 + 112) = 1;
  *(v33 + 128) = 0;
  *(v33 + 136) = 0;
  *(v33 + 120) = 0;
  *(v33 + 160) = MEMORY[0x1E69E7CC0];
  *(v33 + 168) = 0;
  *(v33 + 176) = 0;
  *(v33 + 216) = 0;
  *(v33 + 16) = 0x646F4D646E656C62;
  *(v33 + 24) = 0xE900000000000065;
  *(v33 + 32) = v21;
  *(v33 + 40) = &type metadata for BlendMode;
  *(v33 + 48) = 0;
  *(v33 + 56) = 1;
  *(v33 + 58) = 0;
  *(v33 + 184) = 0;
  *(v33 + 188) = 1;
  *(v33 + 192) = 0;
  *(v33 + 196) = 1;
  *(v33 + 200) = 0x1000100000000;
  *(v33 + 208) = 1;
  *(v33 + 64) = 0;
  *(v33 + 72) = 0;
  *(v33 + 96) = v133;
  *(v33 + 104) = 0;
  *(v33 + 144) = xmmword_1AFE22A20;
  *(v33 + 80) = v32;
  *(v33 + 88) = &off_1F2535378;
  *(v33 + 210) = 0;
  v34 = swift_conformsToProtocol2();

  if (v34)
  {
    v31 = (*(v34 + 8))();
  }

  v35 = swift_conformsToProtocol2();
  if (v35 && v31)
  {
    v36 = *(v35 + 8);
    v37 = v35;
    swift_retain_n();
    v38 = v36(v31, v37);
    *(v33 + 160) = v38;
  }

  else
  {
    v38 = swift_retain_n();
  }

  *(v33 + 64) = sub_1AF59F58C;
  *(v33 + 72) = v21;
  *(v33 + 168) = 0;
  *(v33 + 176) = 0;
  *(v33 + 216) = v25;
  *(v132 + 48) = v33;
  MEMORY[0x1EEE9AC00](v38);
  v39 = swift_getKeyPath();
  v40 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v41 = swift_allocObject();
  v41[4] = sub_1AF59F5CC;
  v41[5] = v39;
  v41[2] = sub_1AF59F610;
  v41[3] = v39;
  v41[6] = v39;
  v42 = swift_allocObject();
  *(v42 + 112) = 1;
  *(v42 + 128) = 0;
  *(v42 + 136) = 0;
  *(v42 + 120) = 0;
  *(v42 + 160) = MEMORY[0x1E69E7CC0];
  *(v42 + 168) = 0;
  *(v42 + 176) = 0;
  *(v42 + 216) = 0;
  *(v42 + 16) = 0x685466666F747563;
  *(v42 + 24) = 0xEF646C6F68736572;
  *(v42 + 32) = v39;
  *(v42 + 40) = v40;
  *(v42 + 48) = 0;
  *(v42 + 56) = 1;
  *(v42 + 58) = 0;
  *(v42 + 184) = -1082130432;
  *(v42 + 188) = 0;
  *(v42 + 192) = 1065353216;
  *(v42 + 196) = 0;
  *(v42 + 200) = 0x1000100000000;
  *(v42 + 208) = 1;
  *(v42 + 96) = 0;
  *(v42 + 104) = 0;
  *(v42 + 64) = 0;
  *(v42 + 72) = 0;
  *(v42 + 144) = xmmword_1AFE22A20;
  *(v42 + 80) = v41;
  *(v42 + 88) = &off_1F2535378;
  *(v42 + 210) = 0;
  v43 = swift_conformsToProtocol2();

  if (v43)
  {
    v44 = (*(v43 + 8))();
  }

  else
  {
    v44 = v40;
  }

  v45 = swift_conformsToProtocol2();
  v131 = v43;
  if (v45 && v44)
  {
    v46 = *(v45 + 8);
    v47 = v45;
    swift_retain_n();
    v48 = v46(v44, v47);
    *(v42 + 160) = v48;
  }

  else
  {
    v48 = swift_retain_n();
  }

  *(v42 + 64) = sub_1AF59F66C;
  *(v42 + 72) = v39;
  *(v42 + 216) = 0;
  *(v42 + 168) = 0;
  *(v42 + 176) = 0;
  *(v132 + 56) = v42;
  MEMORY[0x1EEE9AC00](v48);
  v49 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v49);
  v50 = swift_getKeyPath();
  v51 = MEMORY[0x1E69E6370];
  sub_1AF5A9240(0, &qword_1ED722B80, MEMORY[0x1E69E6370], type metadata accessor for EntityGetSet);
  v52 = swift_allocObject();
  v52[4] = sub_1AF59F6AC;
  v52[5] = v49;
  v52[2] = sub_1AF59F6E8;
  v52[3] = v49;
  v52[6] = v49;
  v53 = swift_allocObject();
  *(v53 + 112) = 1;
  *(v53 + 128) = 0;
  *(v53 + 136) = 0;
  *(v53 + 120) = 0;
  *(v53 + 160) = MEMORY[0x1E69E7CC0];
  *(v53 + 168) = 0;
  *(v53 + 176) = 0;
  *(v53 + 216) = 0;
  *(v53 + 16) = 0x676E69746867696CLL;
  *(v53 + 24) = 0xE800000000000000;
  *(v53 + 32) = v49;
  *(v53 + 40) = v51;
  *(v53 + 48) = 0;
  *(v53 + 56) = 1;
  *(v53 + 58) = 0;
  *(v53 + 184) = 0;
  *(v53 + 188) = 1;
  *(v53 + 192) = 0;
  *(v53 + 196) = 1;
  *(v53 + 200) = 0x1000100000000;
  *(v53 + 208) = 1;
  *(v53 + 64) = 0;
  *(v53 + 72) = 0;
  *(v53 + 96) = v50;
  *(v53 + 104) = 0;
  *(v53 + 144) = xmmword_1AFE22A20;
  *(v53 + 80) = v52;
  *(v53 + 88) = &off_1F2535378;
  *(v53 + 210) = 0;
  v54 = swift_conformsToProtocol2();

  if (v54)
  {
    v55 = (*(v54 + 8))();
  }

  else
  {
    v55 = v51;
  }

  v134 = v54;
  v56 = swift_conformsToProtocol2();
  if (v56 && v55)
  {
    v57 = *(v56 + 8);
    v58 = v56;
    swift_retain_n();
    v59 = v57(v55, v58);
    *(v53 + 160) = v59;
  }

  else
  {
    v59 = swift_retain_n();
  }

  *(v53 + 64) = sub_1AF59F744;
  *(v53 + 72) = v49;
  *(v53 + 216) = 0;
  *(v53 + 168) = 0;
  *(v53 + 176) = 0;
  *(v132 + 64) = v53;
  MEMORY[0x1EEE9AC00](v59);
  v60 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v60);
  v61 = swift_getKeyPath();
  v62 = swift_allocObject();
  v62[4] = sub_1AF5AA248;
  v62[5] = v60;
  v62[2] = sub_1AF5A9F9C;
  v62[3] = v60;
  v62[6] = v60;
  v63 = swift_allocObject();
  *(v63 + 112) = 1;
  *(v63 + 128) = 0;
  *(v63 + 136) = 0;
  *(v63 + 120) = 0;
  *(v63 + 160) = MEMORY[0x1E69E7CC0];
  *(v63 + 168) = 0;
  *(v63 + 176) = 0;
  *(v63 + 216) = 0;
  *(v63 + 16) = 0x72616C7563657073;
  *(v63 + 24) = 0xE800000000000000;
  *(v63 + 32) = v60;
  *(v63 + 40) = v51;
  *(v63 + 48) = 0;
  *(v63 + 56) = 1;
  *(v63 + 58) = 0;
  *(v63 + 184) = 0;
  *(v63 + 188) = 1;
  *(v63 + 192) = 0;
  *(v63 + 196) = 1;
  *(v63 + 200) = 0x1000100000000;
  *(v63 + 208) = 1;
  *(v63 + 64) = 0;
  *(v63 + 72) = 0;
  *(v63 + 96) = v61;
  *(v63 + 104) = 0;
  *(v63 + 144) = xmmword_1AFE22A20;
  *(v63 + 80) = v62;
  *(v63 + 88) = &off_1F2535378;
  *(v63 + 210) = 0;

  if (v54)
  {
    v64 = (*(v54 + 8))();
  }

  else
  {
    v64 = v51;
  }

  v65 = swift_conformsToProtocol2();
  if (v65 && v64)
  {
    v66 = *(v65 + 8);
    v67 = v65;
    swift_retain_n();
    v68 = v66(v64, v67);
    *(v63 + 160) = v68;
  }

  else
  {
    v68 = swift_retain_n();
  }

  v69 = MEMORY[0x1E69E7360];
  *(v63 + 64) = sub_1AF5A9980;
  *(v63 + 72) = v60;
  *(v63 + 216) = 0;
  *(v63 + 168) = 0;
  *(v63 + 176) = 0;
  *(v132 + 72) = v63;
  MEMORY[0x1EEE9AC00](v68);
  v70 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v70);
  v71 = swift_getKeyPath();
  v72 = swift_allocObject();
  v72[4] = sub_1AF5AA3DC;
  v72[5] = v71;
  v72[2] = sub_1AF5A9FA0;
  v72[3] = v71;
  v72[6] = v71;
  v73 = swift_allocObject();
  *(v73 + 112) = 1;
  *(v73 + 128) = 0;
  *(v73 + 136) = 0;
  *(v73 + 120) = 0;
  *(v73 + 160) = MEMORY[0x1E69E7CC0];
  *(v73 + 168) = 0;
  *(v73 + 176) = 0;
  *(v73 + 216) = 0;
  strcpy((v73 + 16), "sortModeIndex");
  *(v73 + 30) = -4864;
  *(v73 + 32) = v71;
  *(v73 + 40) = v69;
  *(v73 + 48) = 0;
  *(v73 + 56) = 1;
  *(v73 + 58) = 0;
  *(v73 + 184) = 0;
  *(v73 + 188) = 1;
  *(v73 + 192) = 0;
  *(v73 + 196) = 1;
  *(v73 + 200) = 0x1000100000000;
  *(v73 + 208) = 1;
  *(v73 + 96) = 0;
  *(v73 + 104) = 0;
  *(v73 + 64) = 0;
  *(v73 + 72) = 0;
  *(v73 + 144) = xmmword_1AFE22A20;
  *(v73 + 80) = v72;
  *(v73 + 88) = &off_1F2535378;
  *(v73 + 210) = 0;

  if (v135)
  {
    v74 = (*(v135 + 8))();
  }

  else
  {
    v74 = v69;
  }

  v75 = swift_conformsToProtocol2();
  v76 = MEMORY[0x1E69E6370];
  if (v75 && v74)
  {
    v77 = *(v75 + 8);
    v78 = v75;
    swift_retain_n();
    *(v73 + 160) = v77(v74, v78);
  }

  else
  {
    swift_retain_n();
  }

  *(v73 + 64) = sub_1AF5A9984;
  *(v73 + 72) = v71;
  *(v73 + 216) = 0;
  v79 = &type metadata for ParticleSortMode;
  sub_1AF5A9240(0, &qword_1EB632F98, &type metadata for ParticleSortMode, type metadata accessor for EntityGetSet);
  *(v73 + 168) = 0;
  *(v73 + 176) = 0;
  v80 = swift_allocObject();
  v80[4] = sub_1AF59F784;
  v80[5] = v70;
  v80[2] = sub_1AF59F7C0;
  v80[3] = v70;
  v80[6] = v70;
  v81 = swift_allocObject();
  *(v81 + 112) = 1;
  *(v81 + 128) = 0;
  *(v81 + 136) = 0;
  *(v81 + 120) = 0;
  *(v81 + 160) = MEMORY[0x1E69E7CC0];
  *(v81 + 168) = 0;
  *(v81 + 176) = 0;
  *(v81 + 216) = 0;
  *(v81 + 16) = 0x65646F4D74726F73;
  *(v81 + 24) = 0xE800000000000000;
  *(v81 + 32) = v70;
  *(v81 + 40) = &type metadata for ParticleSortMode;
  *(v81 + 48) = 0;
  *(v81 + 56) = 1;
  *(v81 + 58) = 0;
  *(v81 + 184) = 0;
  *(v81 + 188) = 1;
  *(v81 + 192) = 0;
  *(v81 + 196) = 1;
  *(v81 + 200) = 0x1000100000000;
  *(v81 + 208) = 1;
  *(v81 + 96) = 0;
  *(v81 + 104) = 0;
  *(v81 + 64) = 0;
  *(v81 + 72) = 0;
  *(v81 + 144) = xmmword_1AFE22A20;
  *(v81 + 80) = v80;
  *(v81 + 88) = &off_1F2535378;
  *(v81 + 210) = 0;
  v82 = swift_conformsToProtocol2();

  if (v82)
  {
    v79 = (*(v82 + 8))();
  }

  v83 = swift_conformsToProtocol2();
  if (v83 && v79)
  {
    v84 = *(v83 + 8);
    v85 = v83;
    swift_retain_n();
    v86 = v84(v79, v85);
    *(v81 + 160) = v86;
  }

  else
  {
    v86 = swift_retain_n();
  }

  *(v81 + 64) = sub_1AF59F81C;
  *(v81 + 72) = v70;
  *(v81 + 168) = 0;
  *(v81 + 176) = 0;
  *(v81 + 216) = v73;
  *(v132 + 80) = v81;
  MEMORY[0x1EEE9AC00](v86);
  v87 = swift_getKeyPath();
  v88 = MEMORY[0x1E69E7668];
  sub_1AF5A9240(0, &qword_1ED725C68, MEMORY[0x1E69E7668], type metadata accessor for EntityGetSet);
  v89 = swift_allocObject();
  v89[4] = sub_1AF59F5CC;
  v89[5] = v87;
  v89[2] = sub_1AF59F85C;
  v89[3] = v87;
  v89[6] = v87;
  v90 = swift_allocObject();
  *(v90 + 112) = 1;
  *(v90 + 128) = 0;
  *(v90 + 136) = 0;
  *(v90 + 120) = 0;
  *(v90 + 168) = 0;
  *(v90 + 160) = MEMORY[0x1E69E7CC0];
  *(v90 + 176) = 0;
  *(v90 + 216) = 0;
  *(v90 + 16) = 0x647265764F78616DLL;
  *(v90 + 24) = 0xEB00000000776172;
  *(v90 + 32) = v87;
  *(v90 + 40) = v88;
  *(v90 + 48) = 0;
  *(v90 + 56) = 1;
  *(v90 + 58) = 4;
  *(v90 + 184) = 1065353216;
  *(v90 + 188) = 0;
  *(v90 + 192) = 1132462080;
  *(v90 + 196) = 0;
  *(v90 + 200) = 0x1000100000000;
  *(v90 + 208) = 1;
  *(v90 + 96) = 0;
  *(v90 + 104) = 0;
  *(v90 + 64) = 0;
  *(v90 + 72) = 0;
  *(v90 + 144) = xmmword_1AFE22A20;
  *(v90 + 80) = v89;
  *(v90 + 88) = &off_1F2535378;
  *(v90 + 210) = 4;
  v91 = swift_conformsToProtocol2();

  if (v91)
  {
    v88 = (*(v91 + 8))();
  }

  v92 = swift_conformsToProtocol2();
  if (v92 && v88)
  {
    v93 = *(v92 + 8);
    v94 = v92;
    swift_retain_n();
    v95 = v93(v88, v94);
    *(v90 + 160) = v95;
  }

  else
  {
    v95 = swift_retain_n();
  }

  *(v90 + 64) = sub_1AF59F8CC;
  *(v90 + 72) = v87;
  *(v90 + 216) = 0;
  *(v90 + 168) = 0;
  *(v90 + 176) = 0;
  *(v132 + 88) = v90;
  MEMORY[0x1EEE9AC00](v95);
  v96 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v96);
  v97 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v97);
  v98 = swift_getKeyPath();
  v99 = swift_allocObject();
  v99[4] = sub_1AF5AA3DC;
  v99[5] = v98;
  v99[2] = sub_1AF5A9FA0;
  v99[3] = v98;
  v99[6] = v98;
  v100 = swift_allocObject();
  *(v100 + 112) = 1;
  *(v100 + 128) = 0;
  *(v100 + 136) = 0;
  *(v100 + 120) = 0;
  *(v100 + 160) = MEMORY[0x1E69E7CC0];
  *(v100 + 168) = 0;
  *(v100 + 176) = 0;
  *(v100 + 216) = 0;
  *(v100 + 16) = 0xD000000000000012;
  *(v100 + 24) = 0x80000001AFF2BB80;
  *(v100 + 32) = v98;
  v101 = MEMORY[0x1E69E7360];
  *(v100 + 40) = MEMORY[0x1E69E7360];
  *(v100 + 48) = 0;
  *(v100 + 56) = 1;
  *(v100 + 58) = 0;
  *(v100 + 184) = 0;
  *(v100 + 188) = 1;
  *(v100 + 192) = 0;
  *(v100 + 196) = 1;
  *(v100 + 200) = 0x1000100000000;
  *(v100 + 208) = 1;
  *(v100 + 96) = 0;
  *(v100 + 104) = 0;
  *(v100 + 64) = 0;
  *(v100 + 72) = 0;
  *(v100 + 144) = xmmword_1AFE22A20;
  *(v100 + 80) = v99;
  *(v100 + 88) = &off_1F2535378;
  *(v100 + 210) = 0;

  if (v135)
  {
    v101 = (*(v135 + 8))();
  }

  v102 = swift_conformsToProtocol2();
  if (v102 && v101)
  {
    v103 = v102;
    v104 = *(v102 + 8);
    swift_retain_n();
    v105 = v104(v101, v103);
    v12 = v132;
    *(v100 + 160) = v105;
  }

  else
  {
    swift_retain_n();
  }

  *(v100 + 64) = sub_1AF5A9984;
  *(v100 + 72) = v98;
  *(v100 + 216) = 0;
  v106 = &type metadata for ParticleAnimationMode;
  sub_1AF5A9240(0, &qword_1EB632F80, &type metadata for ParticleAnimationMode, type metadata accessor for EntityGetSet);
  *(v100 + 168) = 0;
  *(v100 + 176) = 0;
  v107 = swift_allocObject();
  v107[4] = sub_1AF59F90C;
  v107[5] = v96;
  v107[2] = sub_1AF59F948;
  v107[3] = v96;
  v107[6] = v96;
  v108 = swift_allocObject();
  *(v108 + 112) = 1;
  *(v108 + 128) = 0;
  *(v108 + 136) = 0;
  *(v108 + 120) = 0;
  *(v108 + 160) = MEMORY[0x1E69E7CC0];
  *(v108 + 168) = 0;
  *(v108 + 176) = 0;
  *(v108 + 216) = 0;
  strcpy((v108 + 16), "animationMode");
  *(v108 + 30) = -4864;
  *(v108 + 32) = v96;
  *(v108 + 40) = &type metadata for ParticleAnimationMode;
  *(v108 + 48) = 0;
  *(v108 + 56) = 1;
  *(v108 + 58) = 0;
  *(v108 + 184) = 0;
  *(v108 + 188) = 1;
  *(v108 + 192) = 0;
  *(v108 + 196) = 1;
  *(v108 + 200) = 0x1000100000000;
  *(v108 + 208) = 1;
  *(v108 + 64) = 0;
  *(v108 + 72) = 0;
  *(v108 + 96) = v97;
  *(v108 + 104) = 0;
  *(v108 + 144) = xmmword_1AFE22A20;
  *(v108 + 80) = v107;
  *(v108 + 88) = &off_1F2535378;
  *(v108 + 210) = 0;
  v109 = swift_conformsToProtocol2();

  if (v109)
  {
    v106 = (*(v109 + 8))();
  }

  v110 = swift_conformsToProtocol2();
  if (v110 && v106)
  {
    v111 = *(v110 + 8);
    v112 = v110;
    swift_retain_n();
    v113 = v111(v106, v112);
    *(v108 + 160) = v113;
  }

  else
  {
    v113 = swift_retain_n();
  }

  *(v108 + 64) = sub_1AF59F9A4;
  *(v108 + 72) = v96;
  *(v108 + 168) = 0;
  *(v108 + 176) = 0;
  *(v108 + 216) = v100;
  v12[12] = v108;
  MEMORY[0x1EEE9AC00](v113);
  v114 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v114);
  v115 = swift_getKeyPath();
  v116 = swift_allocObject();
  v116[4] = sub_1AF5AA248;
  v116[5] = v114;
  v116[2] = sub_1AF5A9F9C;
  v116[3] = v114;
  v116[6] = v114;
  v117 = swift_allocObject();
  *(v117 + 112) = 1;
  *(v117 + 128) = 0;
  *(v117 + 136) = 0;
  *(v117 + 120) = 0;
  *(v117 + 160) = MEMORY[0x1E69E7CC0];
  *(v117 + 168) = 0;
  *(v117 + 176) = 0;
  *(v117 + 216) = 0;
  *(v117 + 16) = 0xD000000000000017;
  *(v117 + 24) = 0x80000001AFF24730;
  *(v117 + 32) = v114;
  *(v117 + 40) = v76;
  *(v117 + 48) = 0;
  *(v117 + 56) = 1;
  *(v117 + 58) = 0;
  *(v117 + 184) = 0;
  *(v117 + 188) = 1;
  *(v117 + 192) = 0;
  *(v117 + 196) = 1;
  *(v117 + 200) = 0x1000100000000;
  *(v117 + 208) = 1;
  *(v117 + 64) = 0;
  *(v117 + 72) = 0;
  *(v117 + 96) = v115;
  *(v117 + 104) = 0;
  *(v117 + 144) = xmmword_1AFE22A20;
  *(v117 + 80) = v116;
  *(v117 + 88) = &off_1F2535378;
  *(v117 + 210) = 0;

  if (v134)
  {
    v76 = (*(v134 + 8))();
  }

  v118 = swift_conformsToProtocol2();
  if (v118 && v76)
  {
    v119 = *(v118 + 8);
    v120 = v118;
    swift_retain_n();
    v121 = v119(v76, v120);
    *(v117 + 160) = v121;
  }

  else
  {
    v121 = swift_retain_n();
  }

  *(v117 + 64) = sub_1AF5A9980;
  *(v117 + 72) = v114;
  *(v117 + 216) = 0;
  *(v117 + 168) = 0;
  *(v117 + 176) = 0;
  v12[13] = v117;
  MEMORY[0x1EEE9AC00](v121);
  v122 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v122);
  v123 = swift_getKeyPath();
  v124 = swift_allocObject();
  v124[4] = sub_1AF5A9544;
  v124[5] = v122;
  v124[2] = sub_1AF5A9FA4;
  v124[3] = v122;
  v124[6] = v122;
  v125 = swift_allocObject();
  *(v125 + 112) = 1;
  *(v125 + 128) = 0;
  *(v125 + 136) = 0;
  *(v125 + 120) = 0;
  *(v125 + 160) = MEMORY[0x1E69E7CC0];
  *(v125 + 168) = 0;
  *(v125 + 176) = 0;
  *(v125 + 216) = 0;
  strcpy((v125 + 16), "softDistance");
  *(v125 + 29) = 0;
  *(v125 + 30) = -5120;
  *(v125 + 32) = v122;
  v126 = MEMORY[0x1E69E6448];
  *(v125 + 40) = MEMORY[0x1E69E6448];
  *(v125 + 48) = 0;
  *(v125 + 56) = 1;
  *(v125 + 58) = 0;
  *(v125 + 184) = 0;
  *(v125 + 188) = 0;
  *(v125 + 192) = 0;
  *(v125 + 196) = 1;
  *(v125 + 200) = 0x1000100000000;
  *(v125 + 208) = 1;
  *(v125 + 64) = 0;
  *(v125 + 72) = 0;
  *(v125 + 96) = v123;
  *(v125 + 104) = 0;
  *(v125 + 144) = xmmword_1AFE22A20;
  *(v125 + 80) = v124;
  *(v125 + 88) = &off_1F2535378;
  *(v125 + 210) = 0;

  if (v131)
  {
    v126 = (*(v131 + 8))();
  }

  v127 = swift_conformsToProtocol2();
  if (v127 && v126)
  {
    v128 = *(v127 + 8);
    v129 = v127;
    swift_retain_n();
    *(v125 + 160) = v128(v126, v129);
  }

  else
  {
    swift_retain_n();
  }

  *(v125 + 64) = sub_1AF5A9988;
  *(v125 + 72) = v122;
  *(v125 + 216) = 0;
  *(v125 + 168) = 0;
  *(v125 + 176) = 0;
  v12[14] = v125;
  return v12;
}

void *sub_1AF4FECEC()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v132 = swift_allocObject();
  *(v132 + 16) = xmmword_1AFE55190;
  sub_1AF59DA84();
  KeyPath = swift_getKeyPath();
  v1 = swift_getKeyPath();
  v2 = &type metadata for Entity;
  sub_1AF5A9240(0, &unk_1EB6338D8, &type metadata for Entity, type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF59DAD8;
  v3[5] = KeyPath;
  v3[2] = sub_1AF59DB0C;
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
  *(v4 + 176) = 0;
  *(v4 + 216) = 0;
  *(v4 + 16) = 0xD000000000000010;
  *(v4 + 24) = 0x80000001AFF22E00;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = &type metadata for Entity;
  *(v4 + 48) = 0;
  *(v4 + 56) = 1;
  *(v4 + 58) = 0;
  *(v4 + 184) = 0;
  *(v4 + 188) = 1;
  *(v4 + 192) = 0;
  *(v4 + 196) = 1;
  *(v4 + 200) = 0x1000100000000;
  *(v4 + 208) = 1;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  *(v4 + 96) = v1;
  *(v4 + 104) = 0;
  *(v4 + 144) = xmmword_1AFE551E0;
  *(v4 + 80) = v3;
  *(v4 + 88) = &off_1F2535378;
  *(v4 + 210) = 0;
  v5 = swift_conformsToProtocol2();
  v6 = v5;
  if (v5)
  {
    v7 = (*(v5 + 8))(&type metadata for Entity, v5);
  }

  else
  {
    v7 = &type metadata for Entity;
  }

  v8 = swift_conformsToProtocol2();
  if (v8 && v7)
  {
    v9 = *(v8 + 8);
    v10 = v8;
    swift_retain_n();
    v11 = v9(v7, v10);
    *(v4 + 160) = v11;
  }

  else
  {
    v11 = swift_retain_n();
  }

  *(v4 + 64) = sub_1AF59DB68;
  *(v4 + 72) = KeyPath;
  *(v4 + 216) = 0;
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;
  v12 = v132;
  *(v132 + 32) = v4;
  MEMORY[0x1EEE9AC00](v11);
  v13 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v13);
  v14 = swift_getKeyPath();
  v15 = swift_allocObject();
  v15[4] = sub_1AF5AA3D4;
  v15[5] = v13;
  v15[2] = sub_1AF5A9F4C;
  v15[3] = v13;
  v15[6] = v13;
  v16 = swift_allocObject();
  *(v16 + 112) = 1;
  *(v16 + 128) = 0;
  *(v16 + 136) = 0;
  *(v16 + 120) = 0;
  *(v16 + 160) = MEMORY[0x1E69E7CC0];
  *(v16 + 168) = 0;
  *(v16 + 176) = 0;
  *(v16 + 216) = 0;
  *(v16 + 16) = 0x65727574786574;
  *(v16 + 24) = 0xE700000000000000;
  *(v16 + 32) = v13;
  *(v16 + 40) = &type metadata for Entity;
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
  *(v16 + 96) = v14;
  *(v16 + 104) = 0;
  *(v16 + 144) = xmmword_1AFE551B0;
  *(v16 + 80) = v15;
  *(v16 + 88) = &off_1F2535378;
  *(v16 + 210) = 0;

  if (v6)
  {
    v2 = (*(v6 + 8))();
  }

  v17 = swift_conformsToProtocol2();
  if (v17 && v2)
  {
    v18 = *(v17 + 8);
    v19 = v17;
    swift_retain_n();
    v20 = v18(v2, v19);
    *(v16 + 160) = v20;
  }

  else
  {
    v20 = swift_retain_n();
  }

  *(v16 + 64) = sub_1AF5A994C;
  *(v16 + 72) = v13;
  *(v16 + 216) = 0;
  *(v16 + 168) = 0;
  *(v16 + 176) = 0;
  *(v132 + 40) = v16;
  MEMORY[0x1EEE9AC00](v20);
  v21 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v21);
  v133 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v133);
  v22 = swift_getKeyPath();
  v23 = MEMORY[0x1E69E7360];
  sub_1AF5A9240(0, &unk_1EB634340, MEMORY[0x1E69E7360], type metadata accessor for EntityGetSet);
  v24 = swift_allocObject();
  v24[4] = sub_1AF59DAD8;
  v24[5] = v22;
  v24[2] = sub_1AF59DBA8;
  v24[3] = v22;
  v24[6] = v22;
  v25 = swift_allocObject();
  *(v25 + 112) = 1;
  *(v25 + 128) = 0;
  *(v25 + 136) = 0;
  *(v25 + 120) = 0;
  *(v25 + 160) = MEMORY[0x1E69E7CC0];
  *(v25 + 168) = 0;
  *(v25 + 176) = 0;
  *(v25 + 216) = 0;
  strcpy((v25 + 16), "blendModeIndex");
  *(v25 + 31) = -18;
  *(v25 + 32) = v22;
  *(v25 + 40) = v23;
  *(v25 + 48) = 0;
  *(v25 + 56) = 1;
  *(v25 + 58) = 0;
  *(v25 + 184) = 0;
  *(v25 + 188) = 1;
  *(v25 + 192) = 0;
  *(v25 + 196) = 1;
  *(v25 + 200) = 0x1000100000000;
  *(v25 + 208) = 1;
  *(v25 + 96) = 0;
  *(v25 + 104) = 0;
  *(v25 + 64) = 0;
  *(v25 + 72) = 0;
  *(v25 + 144) = xmmword_1AFE22A20;
  *(v25 + 80) = v24;
  *(v25 + 88) = &off_1F2535378;
  *(v25 + 210) = 0;
  v26 = swift_conformsToProtocol2();

  if (v26)
  {
    v27 = (*(v26 + 8))();
  }

  else
  {
    v27 = v23;
  }

  v28 = swift_conformsToProtocol2();
  v135 = v26;
  if (v28 && v27)
  {
    v29 = *(v28 + 8);
    v30 = v28;
    swift_retain_n();
    *(v25 + 160) = v29(v27, v30);
  }

  else
  {
    swift_retain_n();
  }

  *(v25 + 64) = sub_1AF59DC04;
  *(v25 + 72) = v22;
  *(v25 + 216) = 0;
  v31 = &type metadata for BlendMode;
  sub_1AF5A9240(0, &unk_1EB633878, &type metadata for BlendMode, type metadata accessor for EntityGetSet);
  *(v25 + 168) = 0;
  *(v25 + 176) = 0;
  v32 = swift_allocObject();
  v32[4] = sub_1AF59DC44;
  v32[5] = v21;
  v32[2] = sub_1AF59DC80;
  v32[3] = v21;
  v32[6] = v21;
  v33 = swift_allocObject();
  *(v33 + 112) = 1;
  *(v33 + 128) = 0;
  *(v33 + 136) = 0;
  *(v33 + 120) = 0;
  *(v33 + 160) = MEMORY[0x1E69E7CC0];
  *(v33 + 168) = 0;
  *(v33 + 176) = 0;
  *(v33 + 216) = 0;
  *(v33 + 16) = 0x646F4D646E656C62;
  *(v33 + 24) = 0xE900000000000065;
  *(v33 + 32) = v21;
  *(v33 + 40) = &type metadata for BlendMode;
  *(v33 + 48) = 0;
  *(v33 + 56) = 1;
  *(v33 + 58) = 0;
  *(v33 + 184) = 0;
  *(v33 + 188) = 1;
  *(v33 + 192) = 0;
  *(v33 + 196) = 1;
  *(v33 + 200) = 0x1000100000000;
  *(v33 + 208) = 1;
  *(v33 + 64) = 0;
  *(v33 + 72) = 0;
  *(v33 + 96) = v133;
  *(v33 + 104) = 0;
  *(v33 + 144) = xmmword_1AFE22A20;
  *(v33 + 80) = v32;
  *(v33 + 88) = &off_1F2535378;
  *(v33 + 210) = 0;
  v34 = swift_conformsToProtocol2();

  if (v34)
  {
    v31 = (*(v34 + 8))();
  }

  v35 = swift_conformsToProtocol2();
  if (v35 && v31)
  {
    v36 = *(v35 + 8);
    v37 = v35;
    swift_retain_n();
    v38 = v36(v31, v37);
    *(v33 + 160) = v38;
  }

  else
  {
    v38 = swift_retain_n();
  }

  *(v33 + 64) = sub_1AF59DCC0;
  *(v33 + 72) = v21;
  *(v33 + 168) = 0;
  *(v33 + 176) = 0;
  *(v33 + 216) = v25;
  *(v132 + 48) = v33;
  MEMORY[0x1EEE9AC00](v38);
  v39 = swift_getKeyPath();
  v40 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v41 = swift_allocObject();
  v41[4] = sub_1AF5A9534;
  v41[5] = v39;
  v41[2] = sub_1AF5A9F48;
  v41[3] = v39;
  v41[6] = v39;
  v42 = swift_allocObject();
  *(v42 + 112) = 1;
  *(v42 + 128) = 0;
  *(v42 + 136) = 0;
  *(v42 + 120) = 0;
  *(v42 + 160) = MEMORY[0x1E69E7CC0];
  *(v42 + 168) = 0;
  *(v42 + 176) = 0;
  *(v42 + 216) = 0;
  *(v42 + 16) = 0x685466666F747563;
  *(v42 + 24) = 0xEF646C6F68736572;
  *(v42 + 32) = v39;
  *(v42 + 40) = v40;
  *(v42 + 48) = 0;
  *(v42 + 56) = 1;
  *(v42 + 58) = 0;
  *(v42 + 184) = -1082130432;
  *(v42 + 188) = 0;
  *(v42 + 192) = 1065353216;
  *(v42 + 196) = 0;
  *(v42 + 200) = 0x1000100000000;
  *(v42 + 208) = 1;
  *(v42 + 96) = 0;
  *(v42 + 104) = 0;
  *(v42 + 64) = 0;
  *(v42 + 72) = 0;
  *(v42 + 144) = xmmword_1AFE22A20;
  *(v42 + 80) = v41;
  *(v42 + 88) = &off_1F2535378;
  *(v42 + 210) = 0;
  v43 = swift_conformsToProtocol2();

  if (v43)
  {
    v44 = (*(v43 + 8))();
  }

  else
  {
    v44 = v40;
  }

  v45 = swift_conformsToProtocol2();
  v131 = v43;
  if (v45 && v44)
  {
    v46 = *(v45 + 8);
    v47 = v45;
    swift_retain_n();
    v48 = v46(v44, v47);
    *(v42 + 160) = v48;
  }

  else
  {
    v48 = swift_retain_n();
  }

  *(v42 + 64) = sub_1AF5A9950;
  *(v42 + 72) = v39;
  *(v42 + 216) = 0;
  *(v42 + 168) = 0;
  *(v42 + 176) = 0;
  *(v132 + 56) = v42;
  MEMORY[0x1EEE9AC00](v48);
  v49 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v49);
  v50 = swift_getKeyPath();
  v51 = MEMORY[0x1E69E6370];
  sub_1AF5A9240(0, &qword_1ED722B80, MEMORY[0x1E69E6370], type metadata accessor for EntityGetSet);
  v52 = swift_allocObject();
  v52[4] = sub_1AF59DD00;
  v52[5] = v49;
  v52[2] = sub_1AF59DD2C;
  v52[3] = v49;
  v52[6] = v49;
  v53 = swift_allocObject();
  *(v53 + 112) = 1;
  *(v53 + 128) = 0;
  *(v53 + 136) = 0;
  *(v53 + 120) = 0;
  *(v53 + 160) = MEMORY[0x1E69E7CC0];
  *(v53 + 168) = 0;
  *(v53 + 176) = 0;
  *(v53 + 216) = 0;
  *(v53 + 16) = 0x676E69746867696CLL;
  *(v53 + 24) = 0xE800000000000000;
  *(v53 + 32) = v49;
  *(v53 + 40) = v51;
  *(v53 + 48) = 0;
  *(v53 + 56) = 1;
  *(v53 + 58) = 0;
  *(v53 + 184) = 0;
  *(v53 + 188) = 1;
  *(v53 + 192) = 0;
  *(v53 + 196) = 1;
  *(v53 + 200) = 0x1000100000000;
  *(v53 + 208) = 1;
  *(v53 + 64) = 0;
  *(v53 + 72) = 0;
  *(v53 + 96) = v50;
  *(v53 + 104) = 0;
  *(v53 + 144) = xmmword_1AFE22A20;
  *(v53 + 80) = v52;
  *(v53 + 88) = &off_1F2535378;
  *(v53 + 210) = 0;
  v54 = swift_conformsToProtocol2();

  if (v54)
  {
    v55 = (*(v54 + 8))();
  }

  else
  {
    v55 = v51;
  }

  v134 = v54;
  v56 = swift_conformsToProtocol2();
  if (v56 && v55)
  {
    v57 = *(v56 + 8);
    v58 = v56;
    swift_retain_n();
    v59 = v57(v55, v58);
    *(v53 + 160) = v59;
  }

  else
  {
    v59 = swift_retain_n();
  }

  *(v53 + 64) = sub_1AF59DD88;
  *(v53 + 72) = v49;
  *(v53 + 216) = 0;
  *(v53 + 168) = 0;
  *(v53 + 176) = 0;
  *(v132 + 64) = v53;
  MEMORY[0x1EEE9AC00](v59);
  v60 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v60);
  v61 = swift_getKeyPath();
  v62 = swift_allocObject();
  v62[4] = sub_1AF5AA22C;
  v62[5] = v60;
  v62[2] = sub_1AF5A9F50;
  v62[3] = v60;
  v62[6] = v60;
  v63 = swift_allocObject();
  *(v63 + 112) = 1;
  *(v63 + 128) = 0;
  *(v63 + 136) = 0;
  *(v63 + 120) = 0;
  *(v63 + 160) = MEMORY[0x1E69E7CC0];
  *(v63 + 168) = 0;
  *(v63 + 176) = 0;
  *(v63 + 216) = 0;
  *(v63 + 16) = 0x72616C7563657073;
  *(v63 + 24) = 0xE800000000000000;
  *(v63 + 32) = v60;
  *(v63 + 40) = v51;
  *(v63 + 48) = 0;
  *(v63 + 56) = 1;
  *(v63 + 58) = 0;
  *(v63 + 184) = 0;
  *(v63 + 188) = 1;
  *(v63 + 192) = 0;
  *(v63 + 196) = 1;
  *(v63 + 200) = 0x1000100000000;
  *(v63 + 208) = 1;
  *(v63 + 64) = 0;
  *(v63 + 72) = 0;
  *(v63 + 96) = v61;
  *(v63 + 104) = 0;
  *(v63 + 144) = xmmword_1AFE22A20;
  *(v63 + 80) = v62;
  *(v63 + 88) = &off_1F2535378;
  *(v63 + 210) = 0;

  if (v54)
  {
    v64 = (*(v54 + 8))();
  }

  else
  {
    v64 = v51;
  }

  v65 = swift_conformsToProtocol2();
  if (v65 && v64)
  {
    v66 = *(v65 + 8);
    v67 = v65;
    swift_retain_n();
    v68 = v66(v64, v67);
    *(v63 + 160) = v68;
  }

  else
  {
    v68 = swift_retain_n();
  }

  v69 = MEMORY[0x1E69E7360];
  *(v63 + 64) = sub_1AF5A9954;
  *(v63 + 72) = v60;
  *(v63 + 216) = 0;
  *(v63 + 168) = 0;
  *(v63 + 176) = 0;
  *(v132 + 72) = v63;
  MEMORY[0x1EEE9AC00](v68);
  v70 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v70);
  v71 = swift_getKeyPath();
  v72 = swift_allocObject();
  v72[4] = sub_1AF5AA3D4;
  v72[5] = v71;
  v72[2] = sub_1AF5A9F54;
  v72[3] = v71;
  v72[6] = v71;
  v73 = swift_allocObject();
  *(v73 + 112) = 1;
  *(v73 + 128) = 0;
  *(v73 + 136) = 0;
  *(v73 + 120) = 0;
  *(v73 + 160) = MEMORY[0x1E69E7CC0];
  *(v73 + 168) = 0;
  *(v73 + 176) = 0;
  *(v73 + 216) = 0;
  strcpy((v73 + 16), "sortModeIndex");
  *(v73 + 30) = -4864;
  *(v73 + 32) = v71;
  *(v73 + 40) = v69;
  *(v73 + 48) = 0;
  *(v73 + 56) = 1;
  *(v73 + 58) = 0;
  *(v73 + 184) = 0;
  *(v73 + 188) = 1;
  *(v73 + 192) = 0;
  *(v73 + 196) = 1;
  *(v73 + 200) = 0x1000100000000;
  *(v73 + 208) = 1;
  *(v73 + 96) = 0;
  *(v73 + 104) = 0;
  *(v73 + 64) = 0;
  *(v73 + 72) = 0;
  *(v73 + 144) = xmmword_1AFE22A20;
  *(v73 + 80) = v72;
  *(v73 + 88) = &off_1F2535378;
  *(v73 + 210) = 0;

  if (v135)
  {
    v74 = (*(v135 + 8))();
  }

  else
  {
    v74 = v69;
  }

  v75 = swift_conformsToProtocol2();
  v76 = MEMORY[0x1E69E6370];
  if (v75 && v74)
  {
    v77 = *(v75 + 8);
    v78 = v75;
    swift_retain_n();
    *(v73 + 160) = v77(v74, v78);
  }

  else
  {
    swift_retain_n();
  }

  *(v73 + 64) = sub_1AF5A9958;
  *(v73 + 72) = v71;
  *(v73 + 216) = 0;
  v79 = &type metadata for ParticleSortMode;
  sub_1AF5A9240(0, &qword_1EB632F98, &type metadata for ParticleSortMode, type metadata accessor for EntityGetSet);
  *(v73 + 168) = 0;
  *(v73 + 176) = 0;
  v80 = swift_allocObject();
  v80[4] = sub_1AF59DDC8;
  v80[5] = v70;
  v80[2] = sub_1AF59DDF4;
  v80[3] = v70;
  v80[6] = v70;
  v81 = swift_allocObject();
  *(v81 + 112) = 1;
  *(v81 + 128) = 0;
  *(v81 + 136) = 0;
  *(v81 + 120) = 0;
  *(v81 + 160) = MEMORY[0x1E69E7CC0];
  *(v81 + 168) = 0;
  *(v81 + 176) = 0;
  *(v81 + 216) = 0;
  *(v81 + 16) = 0x65646F4D74726F73;
  *(v81 + 24) = 0xE800000000000000;
  *(v81 + 32) = v70;
  *(v81 + 40) = &type metadata for ParticleSortMode;
  *(v81 + 48) = 0;
  *(v81 + 56) = 1;
  *(v81 + 58) = 0;
  *(v81 + 184) = 0;
  *(v81 + 188) = 1;
  *(v81 + 192) = 0;
  *(v81 + 196) = 1;
  *(v81 + 200) = 0x1000100000000;
  *(v81 + 208) = 1;
  *(v81 + 96) = 0;
  *(v81 + 104) = 0;
  *(v81 + 64) = 0;
  *(v81 + 72) = 0;
  *(v81 + 144) = xmmword_1AFE22A20;
  *(v81 + 80) = v80;
  *(v81 + 88) = &off_1F2535378;
  *(v81 + 210) = 0;
  v82 = swift_conformsToProtocol2();

  if (v82)
  {
    v79 = (*(v82 + 8))();
  }

  v83 = swift_conformsToProtocol2();
  if (v83 && v79)
  {
    v84 = *(v83 + 8);
    v85 = v83;
    swift_retain_n();
    v86 = v84(v79, v85);
    *(v81 + 160) = v86;
  }

  else
  {
    v86 = swift_retain_n();
  }

  *(v81 + 64) = sub_1AF59DE50;
  *(v81 + 72) = v70;
  *(v81 + 168) = 0;
  *(v81 + 176) = 0;
  *(v81 + 216) = v73;
  *(v132 + 80) = v81;
  MEMORY[0x1EEE9AC00](v86);
  v87 = swift_getKeyPath();
  v88 = MEMORY[0x1E69E7668];
  sub_1AF5A9240(0, &qword_1ED725C68, MEMORY[0x1E69E7668], type metadata accessor for EntityGetSet);
  v89 = swift_allocObject();
  v89[4] = sub_1AF59D954;
  v89[5] = v87;
  v89[2] = sub_1AF59DE90;
  v89[3] = v87;
  v89[6] = v87;
  v90 = swift_allocObject();
  *(v90 + 112) = 1;
  *(v90 + 128) = 0;
  *(v90 + 136) = 0;
  *(v90 + 120) = 0;
  *(v90 + 168) = 0;
  *(v90 + 160) = MEMORY[0x1E69E7CC0];
  *(v90 + 176) = 0;
  *(v90 + 216) = 0;
  *(v90 + 16) = 0x647265764F78616DLL;
  *(v90 + 24) = 0xEB00000000776172;
  *(v90 + 32) = v87;
  *(v90 + 40) = v88;
  *(v90 + 48) = 0;
  *(v90 + 56) = 1;
  *(v90 + 58) = 4;
  *(v90 + 184) = 1065353216;
  *(v90 + 188) = 0;
  *(v90 + 192) = 1132462080;
  *(v90 + 196) = 0;
  *(v90 + 200) = 0x1000100000000;
  *(v90 + 208) = 1;
  *(v90 + 96) = 0;
  *(v90 + 104) = 0;
  *(v90 + 64) = 0;
  *(v90 + 72) = 0;
  *(v90 + 144) = xmmword_1AFE22A20;
  *(v90 + 80) = v89;
  *(v90 + 88) = &off_1F2535378;
  *(v90 + 210) = 4;
  v91 = swift_conformsToProtocol2();

  if (v91)
  {
    v88 = (*(v91 + 8))();
  }

  v92 = swift_conformsToProtocol2();
  if (v92 && v88)
  {
    v93 = *(v92 + 8);
    v94 = v92;
    swift_retain_n();
    v95 = v93(v88, v94);
    *(v90 + 160) = v95;
  }

  else
  {
    v95 = swift_retain_n();
  }

  *(v90 + 64) = sub_1AF59DF00;
  *(v90 + 72) = v87;
  *(v90 + 216) = 0;
  *(v90 + 168) = 0;
  *(v90 + 176) = 0;
  *(v132 + 88) = v90;
  MEMORY[0x1EEE9AC00](v95);
  v96 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v96);
  v97 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v97);
  v98 = swift_getKeyPath();
  v99 = swift_allocObject();
  v99[4] = sub_1AF5AA3D4;
  v99[5] = v98;
  v99[2] = sub_1AF5A9F54;
  v99[3] = v98;
  v99[6] = v98;
  v100 = swift_allocObject();
  *(v100 + 112) = 1;
  *(v100 + 128) = 0;
  *(v100 + 136) = 0;
  *(v100 + 120) = 0;
  *(v100 + 160) = MEMORY[0x1E69E7CC0];
  *(v100 + 168) = 0;
  *(v100 + 176) = 0;
  *(v100 + 216) = 0;
  *(v100 + 16) = 0xD000000000000012;
  *(v100 + 24) = 0x80000001AFF2BB80;
  *(v100 + 32) = v98;
  v101 = MEMORY[0x1E69E7360];
  *(v100 + 40) = MEMORY[0x1E69E7360];
  *(v100 + 48) = 0;
  *(v100 + 56) = 1;
  *(v100 + 58) = 0;
  *(v100 + 184) = 0;
  *(v100 + 188) = 1;
  *(v100 + 192) = 0;
  *(v100 + 196) = 1;
  *(v100 + 200) = 0x1000100000000;
  *(v100 + 208) = 1;
  *(v100 + 96) = 0;
  *(v100 + 104) = 0;
  *(v100 + 64) = 0;
  *(v100 + 72) = 0;
  *(v100 + 144) = xmmword_1AFE22A20;
  *(v100 + 80) = v99;
  *(v100 + 88) = &off_1F2535378;
  *(v100 + 210) = 0;

  if (v135)
  {
    v101 = (*(v135 + 8))();
  }

  v102 = swift_conformsToProtocol2();
  if (v102 && v101)
  {
    v103 = v102;
    v104 = *(v102 + 8);
    swift_retain_n();
    v105 = v104(v101, v103);
    v12 = v132;
    *(v100 + 160) = v105;
  }

  else
  {
    swift_retain_n();
  }

  *(v100 + 64) = sub_1AF5A9958;
  *(v100 + 72) = v98;
  *(v100 + 216) = 0;
  v106 = &type metadata for ParticleAnimationMode;
  sub_1AF5A9240(0, &qword_1EB632F80, &type metadata for ParticleAnimationMode, type metadata accessor for EntityGetSet);
  *(v100 + 168) = 0;
  *(v100 + 176) = 0;
  v107 = swift_allocObject();
  v107[4] = sub_1AF59DF40;
  v107[5] = v96;
  v107[2] = sub_1AF59DF6C;
  v107[3] = v96;
  v107[6] = v96;
  v108 = swift_allocObject();
  *(v108 + 112) = 1;
  *(v108 + 128) = 0;
  *(v108 + 136) = 0;
  *(v108 + 120) = 0;
  *(v108 + 160) = MEMORY[0x1E69E7CC0];
  *(v108 + 168) = 0;
  *(v108 + 176) = 0;
  *(v108 + 216) = 0;
  strcpy((v108 + 16), "animationMode");
  *(v108 + 30) = -4864;
  *(v108 + 32) = v96;
  *(v108 + 40) = &type metadata for ParticleAnimationMode;
  *(v108 + 48) = 0;
  *(v108 + 56) = 1;
  *(v108 + 58) = 0;
  *(v108 + 184) = 0;
  *(v108 + 188) = 1;
  *(v108 + 192) = 0;
  *(v108 + 196) = 1;
  *(v108 + 200) = 0x1000100000000;
  *(v108 + 208) = 1;
  *(v108 + 64) = 0;
  *(v108 + 72) = 0;
  *(v108 + 96) = v97;
  *(v108 + 104) = 0;
  *(v108 + 144) = xmmword_1AFE22A20;
  *(v108 + 80) = v107;
  *(v108 + 88) = &off_1F2535378;
  *(v108 + 210) = 0;
  v109 = swift_conformsToProtocol2();

  if (v109)
  {
    v106 = (*(v109 + 8))();
  }

  v110 = swift_conformsToProtocol2();
  if (v110 && v106)
  {
    v111 = *(v110 + 8);
    v112 = v110;
    swift_retain_n();
    v113 = v111(v106, v112);
    *(v108 + 160) = v113;
  }

  else
  {
    v113 = swift_retain_n();
  }

  *(v108 + 64) = sub_1AF59DFC8;
  *(v108 + 72) = v96;
  *(v108 + 168) = 0;
  *(v108 + 176) = 0;
  *(v108 + 216) = v100;
  v12[12] = v108;
  MEMORY[0x1EEE9AC00](v113);
  v114 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v114);
  v115 = swift_getKeyPath();
  v116 = swift_allocObject();
  v116[4] = sub_1AF5AA22C;
  v116[5] = v114;
  v116[2] = sub_1AF5A9F50;
  v116[3] = v114;
  v116[6] = v114;
  v117 = swift_allocObject();
  *(v117 + 112) = 1;
  *(v117 + 128) = 0;
  *(v117 + 136) = 0;
  *(v117 + 120) = 0;
  *(v117 + 160) = MEMORY[0x1E69E7CC0];
  *(v117 + 168) = 0;
  *(v117 + 176) = 0;
  *(v117 + 216) = 0;
  *(v117 + 16) = 0xD000000000000017;
  *(v117 + 24) = 0x80000001AFF24730;
  *(v117 + 32) = v114;
  *(v117 + 40) = v76;
  *(v117 + 48) = 0;
  *(v117 + 56) = 1;
  *(v117 + 58) = 0;
  *(v117 + 184) = 0;
  *(v117 + 188) = 1;
  *(v117 + 192) = 0;
  *(v117 + 196) = 1;
  *(v117 + 200) = 0x1000100000000;
  *(v117 + 208) = 1;
  *(v117 + 64) = 0;
  *(v117 + 72) = 0;
  *(v117 + 96) = v115;
  *(v117 + 104) = 0;
  *(v117 + 144) = xmmword_1AFE22A20;
  *(v117 + 80) = v116;
  *(v117 + 88) = &off_1F2535378;
  *(v117 + 210) = 0;

  if (v134)
  {
    v76 = (*(v134 + 8))();
  }

  v118 = swift_conformsToProtocol2();
  if (v118 && v76)
  {
    v119 = *(v118 + 8);
    v120 = v118;
    swift_retain_n();
    v121 = v119(v76, v120);
    *(v117 + 160) = v121;
  }

  else
  {
    v121 = swift_retain_n();
  }

  *(v117 + 64) = sub_1AF5A9954;
  *(v117 + 72) = v114;
  *(v117 + 216) = 0;
  *(v117 + 168) = 0;
  *(v117 + 176) = 0;
  v12[13] = v117;
  MEMORY[0x1EEE9AC00](v121);
  v122 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v122);
  v123 = swift_getKeyPath();
  v124 = swift_allocObject();
  v124[4] = sub_1AF5A9534;
  v124[5] = v122;
  v124[2] = sub_1AF5A9F48;
  v124[3] = v122;
  v124[6] = v122;
  v125 = swift_allocObject();
  *(v125 + 112) = 1;
  *(v125 + 128) = 0;
  *(v125 + 136) = 0;
  *(v125 + 120) = 0;
  *(v125 + 160) = MEMORY[0x1E69E7CC0];
  *(v125 + 168) = 0;
  *(v125 + 176) = 0;
  *(v125 + 216) = 0;
  strcpy((v125 + 16), "softDistance");
  *(v125 + 29) = 0;
  *(v125 + 30) = -5120;
  *(v125 + 32) = v122;
  v126 = MEMORY[0x1E69E6448];
  *(v125 + 40) = MEMORY[0x1E69E6448];
  *(v125 + 48) = 0;
  *(v125 + 56) = 1;
  *(v125 + 58) = 0;
  *(v125 + 184) = 0;
  *(v125 + 188) = 0;
  *(v125 + 192) = 0;
  *(v125 + 196) = 1;
  *(v125 + 200) = 0x1000100000000;
  *(v125 + 208) = 1;
  *(v125 + 64) = 0;
  *(v125 + 72) = 0;
  *(v125 + 96) = v123;
  *(v125 + 104) = 0;
  *(v125 + 144) = xmmword_1AFE22A20;
  *(v125 + 80) = v124;
  *(v125 + 88) = &off_1F2535378;
  *(v125 + 210) = 0;

  if (v131)
  {
    v126 = (*(v131 + 8))();
  }

  v127 = swift_conformsToProtocol2();
  if (v127 && v126)
  {
    v128 = *(v127 + 8);
    v129 = v127;
    swift_retain_n();
    *(v125 + 160) = v128(v126, v129);
  }

  else
  {
    swift_retain_n();
  }

  *(v125 + 64) = sub_1AF5A9950;
  *(v125 + 72) = v122;
  *(v125 + 216) = 0;
  *(v125 + 168) = 0;
  *(v125 + 176) = 0;
  v12[14] = v125;
  return v12;
}

void *sub_1AF500BE8()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v132 = swift_allocObject();
  *(v132 + 16) = xmmword_1AFE55190;
  sub_1AF59EE8C();
  KeyPath = swift_getKeyPath();
  v1 = swift_getKeyPath();
  v2 = &type metadata for Entity;
  sub_1AF5A9240(0, &unk_1EB6338D8, &type metadata for Entity, type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF5AA3D8;
  v3[5] = KeyPath;
  v3[2] = sub_1AF5A9F74;
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
  *(v4 + 176) = 0;
  *(v4 + 216) = 0;
  *(v4 + 16) = 0xD000000000000010;
  *(v4 + 24) = 0x80000001AFF22E00;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = &type metadata for Entity;
  *(v4 + 48) = 0;
  *(v4 + 56) = 1;
  *(v4 + 58) = 0;
  *(v4 + 184) = 0;
  *(v4 + 188) = 1;
  *(v4 + 192) = 0;
  *(v4 + 196) = 1;
  *(v4 + 200) = 0x1000100000000;
  *(v4 + 208) = 1;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  *(v4 + 96) = v1;
  *(v4 + 104) = 0;
  *(v4 + 144) = xmmword_1AFE551E0;
  *(v4 + 80) = v3;
  *(v4 + 88) = &off_1F2535378;
  *(v4 + 210) = 0;
  v5 = swift_conformsToProtocol2();
  v6 = v5;
  if (v5)
  {
    v7 = (*(v5 + 8))(&type metadata for Entity, v5);
  }

  else
  {
    v7 = &type metadata for Entity;
  }

  v8 = swift_conformsToProtocol2();
  if (v8 && v7)
  {
    v9 = *(v8 + 8);
    v10 = v8;
    swift_retain_n();
    v11 = v9(v7, v10);
    *(v4 + 160) = v11;
  }

  else
  {
    v11 = swift_retain_n();
  }

  *(v4 + 64) = sub_1AF5A9970;
  *(v4 + 72) = KeyPath;
  *(v4 + 216) = 0;
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;
  v12 = v132;
  *(v132 + 32) = v4;
  MEMORY[0x1EEE9AC00](v11);
  v13 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v13);
  v14 = swift_getKeyPath();
  v15 = swift_allocObject();
  v15[4] = sub_1AF5AA3D8;
  v15[5] = v13;
  v15[2] = sub_1AF5A9F74;
  v15[3] = v13;
  v15[6] = v13;
  v16 = swift_allocObject();
  *(v16 + 112) = 1;
  *(v16 + 128) = 0;
  *(v16 + 136) = 0;
  *(v16 + 120) = 0;
  *(v16 + 160) = MEMORY[0x1E69E7CC0];
  *(v16 + 168) = 0;
  *(v16 + 176) = 0;
  *(v16 + 216) = 0;
  *(v16 + 16) = 0x65727574786574;
  *(v16 + 24) = 0xE700000000000000;
  *(v16 + 32) = v13;
  *(v16 + 40) = &type metadata for Entity;
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
  *(v16 + 96) = v14;
  *(v16 + 104) = 0;
  *(v16 + 144) = xmmword_1AFE551B0;
  *(v16 + 80) = v15;
  *(v16 + 88) = &off_1F2535378;
  *(v16 + 210) = 0;

  if (v6)
  {
    v2 = (*(v6 + 8))();
  }

  v17 = swift_conformsToProtocol2();
  if (v17 && v2)
  {
    v18 = *(v17 + 8);
    v19 = v17;
    swift_retain_n();
    v20 = v18(v2, v19);
    *(v16 + 160) = v20;
  }

  else
  {
    v20 = swift_retain_n();
  }

  *(v16 + 64) = sub_1AF5A9970;
  *(v16 + 72) = v13;
  *(v16 + 216) = 0;
  *(v16 + 168) = 0;
  *(v16 + 176) = 0;
  *(v132 + 40) = v16;
  MEMORY[0x1EEE9AC00](v20);
  v21 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v21);
  v133 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v133);
  v22 = swift_getKeyPath();
  v23 = MEMORY[0x1E69E7360];
  sub_1AF5A9240(0, &unk_1EB634340, MEMORY[0x1E69E7360], type metadata accessor for EntityGetSet);
  v24 = swift_allocObject();
  v24[4] = sub_1AF5AA3D8;
  v24[5] = v22;
  v24[2] = sub_1AF5A9F64;
  v24[3] = v22;
  v24[6] = v22;
  v25 = swift_allocObject();
  *(v25 + 112) = 1;
  *(v25 + 128) = 0;
  *(v25 + 136) = 0;
  *(v25 + 120) = 0;
  *(v25 + 160) = MEMORY[0x1E69E7CC0];
  *(v25 + 168) = 0;
  *(v25 + 176) = 0;
  *(v25 + 216) = 0;
  strcpy((v25 + 16), "blendModeIndex");
  *(v25 + 31) = -18;
  *(v25 + 32) = v22;
  *(v25 + 40) = v23;
  *(v25 + 48) = 0;
  *(v25 + 56) = 1;
  *(v25 + 58) = 0;
  *(v25 + 184) = 0;
  *(v25 + 188) = 1;
  *(v25 + 192) = 0;
  *(v25 + 196) = 1;
  *(v25 + 200) = 0x1000100000000;
  *(v25 + 208) = 1;
  *(v25 + 96) = 0;
  *(v25 + 104) = 0;
  *(v25 + 64) = 0;
  *(v25 + 72) = 0;
  *(v25 + 144) = xmmword_1AFE22A20;
  *(v25 + 80) = v24;
  *(v25 + 88) = &off_1F2535378;
  *(v25 + 210) = 0;
  v26 = swift_conformsToProtocol2();

  if (v26)
  {
    v27 = (*(v26 + 8))();
  }

  else
  {
    v27 = v23;
  }

  v28 = swift_conformsToProtocol2();
  v135 = v26;
  if (v28 && v27)
  {
    v29 = *(v28 + 8);
    v30 = v28;
    swift_retain_n();
    *(v25 + 160) = v29(v27, v30);
  }

  else
  {
    swift_retain_n();
  }

  *(v25 + 64) = sub_1AF5A9960;
  *(v25 + 72) = v22;
  *(v25 + 216) = 0;
  v31 = &type metadata for BlendMode;
  sub_1AF5A9240(0, &unk_1EB633878, &type metadata for BlendMode, type metadata accessor for EntityGetSet);
  *(v25 + 168) = 0;
  *(v25 + 176) = 0;
  v32 = swift_allocObject();
  v32[4] = sub_1AF59EEE0;
  v32[5] = v21;
  v32[2] = sub_1AF59EF1C;
  v32[3] = v21;
  v32[6] = v21;
  v33 = swift_allocObject();
  *(v33 + 112) = 1;
  *(v33 + 128) = 0;
  *(v33 + 136) = 0;
  *(v33 + 120) = 0;
  *(v33 + 160) = MEMORY[0x1E69E7CC0];
  *(v33 + 168) = 0;
  *(v33 + 176) = 0;
  *(v33 + 216) = 0;
  *(v33 + 16) = 0x646F4D646E656C62;
  *(v33 + 24) = 0xE900000000000065;
  *(v33 + 32) = v21;
  *(v33 + 40) = &type metadata for BlendMode;
  *(v33 + 48) = 0;
  *(v33 + 56) = 1;
  *(v33 + 58) = 0;
  *(v33 + 184) = 0;
  *(v33 + 188) = 1;
  *(v33 + 192) = 0;
  *(v33 + 196) = 1;
  *(v33 + 200) = 0x1000100000000;
  *(v33 + 208) = 1;
  *(v33 + 64) = 0;
  *(v33 + 72) = 0;
  *(v33 + 96) = v133;
  *(v33 + 104) = 0;
  *(v33 + 144) = xmmword_1AFE22A20;
  *(v33 + 80) = v32;
  *(v33 + 88) = &off_1F2535378;
  *(v33 + 210) = 0;
  v34 = swift_conformsToProtocol2();

  if (v34)
  {
    v31 = (*(v34 + 8))();
  }

  v35 = swift_conformsToProtocol2();
  if (v35 && v31)
  {
    v36 = *(v35 + 8);
    v37 = v35;
    swift_retain_n();
    v38 = v36(v31, v37);
    *(v33 + 160) = v38;
  }

  else
  {
    v38 = swift_retain_n();
  }

  *(v33 + 64) = sub_1AF59EF5C;
  *(v33 + 72) = v21;
  *(v33 + 168) = 0;
  *(v33 + 176) = 0;
  *(v33 + 216) = v25;
  *(v132 + 48) = v33;
  MEMORY[0x1EEE9AC00](v38);
  v39 = swift_getKeyPath();
  v40 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v41 = swift_allocObject();
  v41[4] = sub_1AF5A953C;
  v41[5] = v39;
  v41[2] = sub_1AF5A9F6C;
  v41[3] = v39;
  v41[6] = v39;
  v42 = swift_allocObject();
  *(v42 + 112) = 1;
  *(v42 + 128) = 0;
  *(v42 + 136) = 0;
  *(v42 + 120) = 0;
  *(v42 + 160) = MEMORY[0x1E69E7CC0];
  *(v42 + 168) = 0;
  *(v42 + 176) = 0;
  *(v42 + 216) = 0;
  *(v42 + 16) = 0x685466666F747563;
  *(v42 + 24) = 0xEF646C6F68736572;
  *(v42 + 32) = v39;
  *(v42 + 40) = v40;
  *(v42 + 48) = 0;
  *(v42 + 56) = 1;
  *(v42 + 58) = 0;
  *(v42 + 184) = -1082130432;
  *(v42 + 188) = 0;
  *(v42 + 192) = 1065353216;
  *(v42 + 196) = 0;
  *(v42 + 200) = 0x1000100000000;
  *(v42 + 208) = 1;
  *(v42 + 96) = 0;
  *(v42 + 104) = 0;
  *(v42 + 64) = 0;
  *(v42 + 72) = 0;
  *(v42 + 144) = xmmword_1AFE22A20;
  *(v42 + 80) = v41;
  *(v42 + 88) = &off_1F2535378;
  *(v42 + 210) = 0;
  v43 = swift_conformsToProtocol2();

  if (v43)
  {
    v44 = (*(v43 + 8))();
  }

  else
  {
    v44 = v40;
  }

  v45 = swift_conformsToProtocol2();
  v131 = v43;
  if (v45 && v44)
  {
    v46 = *(v45 + 8);
    v47 = v45;
    swift_retain_n();
    v48 = v46(v44, v47);
    *(v42 + 160) = v48;
  }

  else
  {
    v48 = swift_retain_n();
  }

  *(v42 + 64) = sub_1AF5A9968;
  *(v42 + 72) = v39;
  *(v42 + 216) = 0;
  *(v42 + 168) = 0;
  *(v42 + 176) = 0;
  *(v132 + 56) = v42;
  MEMORY[0x1EEE9AC00](v48);
  v49 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v49);
  v50 = swift_getKeyPath();
  v51 = MEMORY[0x1E69E6370];
  sub_1AF5A9240(0, &qword_1ED722B80, MEMORY[0x1E69E6370], type metadata accessor for EntityGetSet);
  v52 = swift_allocObject();
  v52[4] = sub_1AF5AA238;
  v52[5] = v49;
  v52[2] = sub_1AF5A9F68;
  v52[3] = v49;
  v52[6] = v49;
  v53 = swift_allocObject();
  *(v53 + 112) = 1;
  *(v53 + 128) = 0;
  *(v53 + 136) = 0;
  *(v53 + 120) = 0;
  *(v53 + 160) = MEMORY[0x1E69E7CC0];
  *(v53 + 168) = 0;
  *(v53 + 176) = 0;
  *(v53 + 216) = 0;
  *(v53 + 16) = 0x676E69746867696CLL;
  *(v53 + 24) = 0xE800000000000000;
  *(v53 + 32) = v49;
  *(v53 + 40) = v51;
  *(v53 + 48) = 0;
  *(v53 + 56) = 1;
  *(v53 + 58) = 0;
  *(v53 + 184) = 0;
  *(v53 + 188) = 1;
  *(v53 + 192) = 0;
  *(v53 + 196) = 1;
  *(v53 + 200) = 0x1000100000000;
  *(v53 + 208) = 1;
  *(v53 + 64) = 0;
  *(v53 + 72) = 0;
  *(v53 + 96) = v50;
  *(v53 + 104) = 0;
  *(v53 + 144) = xmmword_1AFE22A20;
  *(v53 + 80) = v52;
  *(v53 + 88) = &off_1F2535378;
  *(v53 + 210) = 0;
  v54 = swift_conformsToProtocol2();

  if (v54)
  {
    v55 = (*(v54 + 8))();
  }

  else
  {
    v55 = v51;
  }

  v134 = v54;
  v56 = swift_conformsToProtocol2();
  if (v56 && v55)
  {
    v57 = *(v56 + 8);
    v58 = v56;
    swift_retain_n();
    v59 = v57(v55, v58);
    *(v53 + 160) = v59;
  }

  else
  {
    v59 = swift_retain_n();
  }

  *(v53 + 64) = sub_1AF5A9964;
  *(v53 + 72) = v49;
  *(v53 + 216) = 0;
  *(v53 + 168) = 0;
  *(v53 + 176) = 0;
  *(v132 + 64) = v53;
  MEMORY[0x1EEE9AC00](v59);
  v60 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v60);
  v61 = swift_getKeyPath();
  v62 = swift_allocObject();
  v62[4] = sub_1AF5AA238;
  v62[5] = v60;
  v62[2] = sub_1AF5A9F68;
  v62[3] = v60;
  v62[6] = v60;
  v63 = swift_allocObject();
  *(v63 + 112) = 1;
  *(v63 + 128) = 0;
  *(v63 + 136) = 0;
  *(v63 + 120) = 0;
  *(v63 + 160) = MEMORY[0x1E69E7CC0];
  *(v63 + 168) = 0;
  *(v63 + 176) = 0;
  *(v63 + 216) = 0;
  *(v63 + 16) = 0x72616C7563657073;
  *(v63 + 24) = 0xE800000000000000;
  *(v63 + 32) = v60;
  *(v63 + 40) = v51;
  *(v63 + 48) = 0;
  *(v63 + 56) = 1;
  *(v63 + 58) = 0;
  *(v63 + 184) = 0;
  *(v63 + 188) = 1;
  *(v63 + 192) = 0;
  *(v63 + 196) = 1;
  *(v63 + 200) = 0x1000100000000;
  *(v63 + 208) = 1;
  *(v63 + 64) = 0;
  *(v63 + 72) = 0;
  *(v63 + 96) = v61;
  *(v63 + 104) = 0;
  *(v63 + 144) = xmmword_1AFE22A20;
  *(v63 + 80) = v62;
  *(v63 + 88) = &off_1F2535378;
  *(v63 + 210) = 0;

  if (v54)
  {
    v64 = (*(v54 + 8))();
  }

  else
  {
    v64 = v51;
  }

  v65 = swift_conformsToProtocol2();
  if (v65 && v64)
  {
    v66 = *(v65 + 8);
    v67 = v65;
    swift_retain_n();
    v68 = v66(v64, v67);
    *(v63 + 160) = v68;
  }

  else
  {
    v68 = swift_retain_n();
  }

  v69 = MEMORY[0x1E69E7360];
  *(v63 + 64) = sub_1AF5A9964;
  *(v63 + 72) = v60;
  *(v63 + 216) = 0;
  *(v63 + 168) = 0;
  *(v63 + 176) = 0;
  *(v132 + 72) = v63;
  MEMORY[0x1EEE9AC00](v68);
  v70 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v70);
  v71 = swift_getKeyPath();
  v72 = swift_allocObject();
  v72[4] = sub_1AF5AA3D8;
  v72[5] = v71;
  v72[2] = sub_1AF5A9F64;
  v72[3] = v71;
  v72[6] = v71;
  v73 = swift_allocObject();
  *(v73 + 112) = 1;
  *(v73 + 128) = 0;
  *(v73 + 136) = 0;
  *(v73 + 120) = 0;
  *(v73 + 160) = MEMORY[0x1E69E7CC0];
  *(v73 + 168) = 0;
  *(v73 + 176) = 0;
  *(v73 + 216) = 0;
  strcpy((v73 + 16), "sortModeIndex");
  *(v73 + 30) = -4864;
  *(v73 + 32) = v71;
  *(v73 + 40) = v69;
  *(v73 + 48) = 0;
  *(v73 + 56) = 1;
  *(v73 + 58) = 0;
  *(v73 + 184) = 0;
  *(v73 + 188) = 1;
  *(v73 + 192) = 0;
  *(v73 + 196) = 1;
  *(v73 + 200) = 0x1000100000000;
  *(v73 + 208) = 1;
  *(v73 + 96) = 0;
  *(v73 + 104) = 0;
  *(v73 + 64) = 0;
  *(v73 + 72) = 0;
  *(v73 + 144) = xmmword_1AFE22A20;
  *(v73 + 80) = v72;
  *(v73 + 88) = &off_1F2535378;
  *(v73 + 210) = 0;

  if (v135)
  {
    v74 = (*(v135 + 8))();
  }

  else
  {
    v74 = v69;
  }

  v75 = swift_conformsToProtocol2();
  v76 = MEMORY[0x1E69E6370];
  if (v75 && v74)
  {
    v77 = *(v75 + 8);
    v78 = v75;
    swift_retain_n();
    *(v73 + 160) = v77(v74, v78);
  }

  else
  {
    swift_retain_n();
  }

  *(v73 + 64) = sub_1AF5A9960;
  *(v73 + 72) = v71;
  *(v73 + 216) = 0;
  v79 = &type metadata for ParticleSortMode;
  sub_1AF5A9240(0, &qword_1EB632F98, &type metadata for ParticleSortMode, type metadata accessor for EntityGetSet);
  *(v73 + 168) = 0;
  *(v73 + 176) = 0;
  v80 = swift_allocObject();
  v80[4] = sub_1AF59EF9C;
  v80[5] = v70;
  v80[2] = sub_1AF59EFC8;
  v80[3] = v70;
  v80[6] = v70;
  v81 = swift_allocObject();
  *(v81 + 112) = 1;
  *(v81 + 128) = 0;
  *(v81 + 136) = 0;
  *(v81 + 120) = 0;
  *(v81 + 160) = MEMORY[0x1E69E7CC0];
  *(v81 + 168) = 0;
  *(v81 + 176) = 0;
  *(v81 + 216) = 0;
  *(v81 + 16) = 0x65646F4D74726F73;
  *(v81 + 24) = 0xE800000000000000;
  *(v81 + 32) = v70;
  *(v81 + 40) = &type metadata for ParticleSortMode;
  *(v81 + 48) = 0;
  *(v81 + 56) = 1;
  *(v81 + 58) = 0;
  *(v81 + 184) = 0;
  *(v81 + 188) = 1;
  *(v81 + 192) = 0;
  *(v81 + 196) = 1;
  *(v81 + 200) = 0x1000100000000;
  *(v81 + 208) = 1;
  *(v81 + 96) = 0;
  *(v81 + 104) = 0;
  *(v81 + 64) = 0;
  *(v81 + 72) = 0;
  *(v81 + 144) = xmmword_1AFE22A20;
  *(v81 + 80) = v80;
  *(v81 + 88) = &off_1F2535378;
  *(v81 + 210) = 0;
  v82 = swift_conformsToProtocol2();

  if (v82)
  {
    v79 = (*(v82 + 8))();
  }

  v83 = swift_conformsToProtocol2();
  if (v83 && v79)
  {
    v84 = *(v83 + 8);
    v85 = v83;
    swift_retain_n();
    v86 = v84(v79, v85);
    *(v81 + 160) = v86;
  }

  else
  {
    v86 = swift_retain_n();
  }

  *(v81 + 64) = sub_1AF59F024;
  *(v81 + 72) = v70;
  *(v81 + 168) = 0;
  *(v81 + 176) = 0;
  *(v81 + 216) = v73;
  *(v132 + 80) = v81;
  MEMORY[0x1EEE9AC00](v86);
  v87 = swift_getKeyPath();
  v88 = MEMORY[0x1E69E7668];
  sub_1AF5A9240(0, &qword_1ED725C68, MEMORY[0x1E69E7668], type metadata accessor for EntityGetSet);
  v89 = swift_allocObject();
  v89[4] = sub_1AF59E70C;
  v89[5] = v87;
  v89[2] = sub_1AF59F064;
  v89[3] = v87;
  v89[6] = v87;
  v90 = swift_allocObject();
  *(v90 + 112) = 1;
  *(v90 + 128) = 0;
  *(v90 + 136) = 0;
  *(v90 + 120) = 0;
  *(v90 + 168) = 0;
  *(v90 + 160) = MEMORY[0x1E69E7CC0];
  *(v90 + 176) = 0;
  *(v90 + 216) = 0;
  *(v90 + 16) = 0x647265764F78616DLL;
  *(v90 + 24) = 0xEB00000000776172;
  *(v90 + 32) = v87;
  *(v90 + 40) = v88;
  *(v90 + 48) = 0;
  *(v90 + 56) = 1;
  *(v90 + 58) = 4;
  *(v90 + 184) = 1065353216;
  *(v90 + 188) = 0;
  *(v90 + 192) = 1132462080;
  *(v90 + 196) = 0;
  *(v90 + 200) = 0x1000100000000;
  *(v90 + 208) = 1;
  *(v90 + 96) = 0;
  *(v90 + 104) = 0;
  *(v90 + 64) = 0;
  *(v90 + 72) = 0;
  *(v90 + 144) = xmmword_1AFE22A20;
  *(v90 + 80) = v89;
  *(v90 + 88) = &off_1F2535378;
  *(v90 + 210) = 4;
  v91 = swift_conformsToProtocol2();

  if (v91)
  {
    v88 = (*(v91 + 8))();
  }

  v92 = swift_conformsToProtocol2();
  if (v92 && v88)
  {
    v93 = *(v92 + 8);
    v94 = v92;
    swift_retain_n();
    v95 = v93(v88, v94);
    *(v90 + 160) = v95;
  }

  else
  {
    v95 = swift_retain_n();
  }

  *(v90 + 64) = sub_1AF59F0D4;
  *(v90 + 72) = v87;
  *(v90 + 216) = 0;
  *(v90 + 168) = 0;
  *(v90 + 176) = 0;
  *(v132 + 88) = v90;
  MEMORY[0x1EEE9AC00](v95);
  v96 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v96);
  v97 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v97);
  v98 = swift_getKeyPath();
  v99 = swift_allocObject();
  v99[4] = sub_1AF5AA3D8;
  v99[5] = v98;
  v99[2] = sub_1AF5A9F64;
  v99[3] = v98;
  v99[6] = v98;
  v100 = swift_allocObject();
  *(v100 + 112) = 1;
  *(v100 + 128) = 0;
  *(v100 + 136) = 0;
  *(v100 + 120) = 0;
  *(v100 + 160) = MEMORY[0x1E69E7CC0];
  *(v100 + 168) = 0;
  *(v100 + 176) = 0;
  *(v100 + 216) = 0;
  *(v100 + 16) = 0xD000000000000012;
  *(v100 + 24) = 0x80000001AFF2BB80;
  *(v100 + 32) = v98;
  v101 = MEMORY[0x1E69E7360];
  *(v100 + 40) = MEMORY[0x1E69E7360];
  *(v100 + 48) = 0;
  *(v100 + 56) = 1;
  *(v100 + 58) = 0;
  *(v100 + 184) = 0;
  *(v100 + 188) = 1;
  *(v100 + 192) = 0;
  *(v100 + 196) = 1;
  *(v100 + 200) = 0x1000100000000;
  *(v100 + 208) = 1;
  *(v100 + 96) = 0;
  *(v100 + 104) = 0;
  *(v100 + 64) = 0;
  *(v100 + 72) = 0;
  *(v100 + 144) = xmmword_1AFE22A20;
  *(v100 + 80) = v99;
  *(v100 + 88) = &off_1F2535378;
  *(v100 + 210) = 0;

  if (v135)
  {
    v101 = (*(v135 + 8))();
  }

  v102 = swift_conformsToProtocol2();
  if (v102 && v101)
  {
    v103 = v102;
    v104 = *(v102 + 8);
    swift_retain_n();
    v105 = v104(v101, v103);
    v12 = v132;
    *(v100 + 160) = v105;
  }

  else
  {
    swift_retain_n();
  }

  *(v100 + 64) = sub_1AF5A9960;
  *(v100 + 72) = v98;
  *(v100 + 216) = 0;
  v106 = &type metadata for ParticleAnimationMode;
  sub_1AF5A9240(0, &qword_1EB632F80, &type metadata for ParticleAnimationMode, type metadata accessor for EntityGetSet);
  *(v100 + 168) = 0;
  *(v100 + 176) = 0;
  v107 = swift_allocObject();
  v107[4] = sub_1AF5AA240;
  v107[5] = v96;
  v107[2] = sub_1AF59F114;
  v107[3] = v96;
  v107[6] = v96;
  v108 = swift_allocObject();
  *(v108 + 112) = 1;
  *(v108 + 128) = 0;
  *(v108 + 136) = 0;
  *(v108 + 120) = 0;
  *(v108 + 160) = MEMORY[0x1E69E7CC0];
  *(v108 + 168) = 0;
  *(v108 + 176) = 0;
  *(v108 + 216) = 0;
  strcpy((v108 + 16), "animationMode");
  *(v108 + 30) = -4864;
  *(v108 + 32) = v96;
  *(v108 + 40) = &type metadata for ParticleAnimationMode;
  *(v108 + 48) = 0;
  *(v108 + 56) = 1;
  *(v108 + 58) = 0;
  *(v108 + 184) = 0;
  *(v108 + 188) = 1;
  *(v108 + 192) = 0;
  *(v108 + 196) = 1;
  *(v108 + 200) = 0x1000100000000;
  *(v108 + 208) = 1;
  *(v108 + 64) = 0;
  *(v108 + 72) = 0;
  *(v108 + 96) = v97;
  *(v108 + 104) = 0;
  *(v108 + 144) = xmmword_1AFE22A20;
  *(v108 + 80) = v107;
  *(v108 + 88) = &off_1F2535378;
  *(v108 + 210) = 0;
  v109 = swift_conformsToProtocol2();

  if (v109)
  {
    v106 = (*(v109 + 8))();
  }

  v110 = swift_conformsToProtocol2();
  if (v110 && v106)
  {
    v111 = *(v110 + 8);
    v112 = v110;
    swift_retain_n();
    v113 = v111(v106, v112);
    *(v108 + 160) = v113;
  }

  else
  {
    v113 = swift_retain_n();
  }

  *(v108 + 64) = sub_1AF59F170;
  *(v108 + 72) = v96;
  *(v108 + 168) = 0;
  *(v108 + 176) = 0;
  *(v108 + 216) = v100;
  v12[12] = v108;
  MEMORY[0x1EEE9AC00](v113);
  v114 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v114);
  v115 = swift_getKeyPath();
  v116 = swift_allocObject();
  v116[4] = sub_1AF5AA238;
  v116[5] = v114;
  v116[2] = sub_1AF5A9F68;
  v116[3] = v114;
  v116[6] = v114;
  v117 = swift_allocObject();
  *(v117 + 112) = 1;
  *(v117 + 128) = 0;
  *(v117 + 136) = 0;
  *(v117 + 120) = 0;
  *(v117 + 160) = MEMORY[0x1E69E7CC0];
  *(v117 + 168) = 0;
  *(v117 + 176) = 0;
  *(v117 + 216) = 0;
  *(v117 + 16) = 0xD000000000000017;
  *(v117 + 24) = 0x80000001AFF24730;
  *(v117 + 32) = v114;
  *(v117 + 40) = v76;
  *(v117 + 48) = 0;
  *(v117 + 56) = 1;
  *(v117 + 58) = 0;
  *(v117 + 184) = 0;
  *(v117 + 188) = 1;
  *(v117 + 192) = 0;
  *(v117 + 196) = 1;
  *(v117 + 200) = 0x1000100000000;
  *(v117 + 208) = 1;
  *(v117 + 64) = 0;
  *(v117 + 72) = 0;
  *(v117 + 96) = v115;
  *(v117 + 104) = 0;
  *(v117 + 144) = xmmword_1AFE22A20;
  *(v117 + 80) = v116;
  *(v117 + 88) = &off_1F2535378;
  *(v117 + 210) = 0;

  if (v134)
  {
    v76 = (*(v134 + 8))();
  }

  v118 = swift_conformsToProtocol2();
  if (v118 && v76)
  {
    v119 = *(v118 + 8);
    v120 = v118;
    swift_retain_n();
    v121 = v119(v76, v120);
    *(v117 + 160) = v121;
  }

  else
  {
    v121 = swift_retain_n();
  }

  *(v117 + 64) = sub_1AF5A9964;
  *(v117 + 72) = v114;
  *(v117 + 216) = 0;
  *(v117 + 168) = 0;
  *(v117 + 176) = 0;
  v12[13] = v117;
  MEMORY[0x1EEE9AC00](v121);
  v122 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v122);
  v123 = swift_getKeyPath();
  v124 = swift_allocObject();
  v124[4] = sub_1AF5A953C;
  v124[5] = v122;
  v124[2] = sub_1AF5A9F6C;
  v124[3] = v122;
  v124[6] = v122;
  v125 = swift_allocObject();
  *(v125 + 112) = 1;
  *(v125 + 128) = 0;
  *(v125 + 136) = 0;
  *(v125 + 120) = 0;
  *(v125 + 160) = MEMORY[0x1E69E7CC0];
  *(v125 + 168) = 0;
  *(v125 + 176) = 0;
  *(v125 + 216) = 0;
  strcpy((v125 + 16), "softDistance");
  *(v125 + 29) = 0;
  *(v125 + 30) = -5120;
  *(v125 + 32) = v122;
  v126 = MEMORY[0x1E69E6448];
  *(v125 + 40) = MEMORY[0x1E69E6448];
  *(v125 + 48) = 0;
  *(v125 + 56) = 1;
  *(v125 + 58) = 0;
  *(v125 + 184) = 0;
  *(v125 + 188) = 0;
  *(v125 + 192) = 0;
  *(v125 + 196) = 1;
  *(v125 + 200) = 0x1000100000000;
  *(v125 + 208) = 1;
  *(v125 + 64) = 0;
  *(v125 + 72) = 0;
  *(v125 + 96) = v123;
  *(v125 + 104) = 0;
  *(v125 + 144) = xmmword_1AFE22A20;
  *(v125 + 80) = v124;
  *(v125 + 88) = &off_1F2535378;
  *(v125 + 210) = 0;

  if (v131)
  {
    v126 = (*(v131 + 8))();
  }

  v127 = swift_conformsToProtocol2();
  if (v127 && v126)
  {
    v128 = *(v127 + 8);
    v129 = v127;
    swift_retain_n();
    *(v125 + 160) = v128(v126, v129);
  }

  else
  {
    swift_retain_n();
  }

  *(v125 + 64) = sub_1AF5A9968;
  *(v125 + 72) = v122;
  *(v125 + 216) = 0;
  *(v125 + 168) = 0;
  *(v125 + 176) = 0;
  v12[14] = v125;
  return v12;
}

void *sub_1AF502AE4()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v132 = swift_allocObject();
  *(v132 + 16) = xmmword_1AFE55190;
  sub_1AF59D124();
  KeyPath = swift_getKeyPath();
  v1 = swift_getKeyPath();
  v2 = &type metadata for Entity;
  sub_1AF5A9240(0, &unk_1EB6338D8, &type metadata for Entity, type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF59CF5C;
  v3[5] = KeyPath;
  v3[2] = sub_1AF59D178;
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
  *(v4 + 176) = 0;
  *(v4 + 216) = 0;
  *(v4 + 16) = 0xD000000000000010;
  *(v4 + 24) = 0x80000001AFF22E00;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = &type metadata for Entity;
  *(v4 + 48) = 0;
  *(v4 + 56) = 1;
  *(v4 + 58) = 0;
  *(v4 + 184) = 0;
  *(v4 + 188) = 1;
  *(v4 + 192) = 0;
  *(v4 + 196) = 1;
  *(v4 + 200) = 0x1000100000000;
  *(v4 + 208) = 1;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  *(v4 + 96) = v1;
  *(v4 + 104) = 0;
  *(v4 + 144) = xmmword_1AFE551E0;
  *(v4 + 80) = v3;
  *(v4 + 88) = &off_1F2535378;
  *(v4 + 210) = 0;
  v5 = swift_conformsToProtocol2();
  v6 = v5;
  if (v5)
  {
    v7 = (*(v5 + 8))(&type metadata for Entity, v5);
  }

  else
  {
    v7 = &type metadata for Entity;
  }

  v8 = swift_conformsToProtocol2();
  if (v8 && v7)
  {
    v9 = *(v8 + 8);
    v10 = v8;
    swift_retain_n();
    v11 = v9(v7, v10);
    *(v4 + 160) = v11;
  }

  else
  {
    v11 = swift_retain_n();
  }

  *(v4 + 64) = sub_1AF59D1D4;
  *(v4 + 72) = KeyPath;
  *(v4 + 216) = 0;
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;
  v12 = v132;
  *(v132 + 32) = v4;
  MEMORY[0x1EEE9AC00](v11);
  v13 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v13);
  v14 = swift_getKeyPath();
  v15 = swift_allocObject();
  v15[4] = sub_1AF5AA3D0;
  v15[5] = v13;
  v15[2] = sub_1AF5A9F30;
  v15[3] = v13;
  v15[6] = v13;
  v16 = swift_allocObject();
  *(v16 + 112) = 1;
  *(v16 + 128) = 0;
  *(v16 + 136) = 0;
  *(v16 + 120) = 0;
  *(v16 + 160) = MEMORY[0x1E69E7CC0];
  *(v16 + 168) = 0;
  *(v16 + 176) = 0;
  *(v16 + 216) = 0;
  *(v16 + 16) = 0x65727574786574;
  *(v16 + 24) = 0xE700000000000000;
  *(v16 + 32) = v13;
  *(v16 + 40) = &type metadata for Entity;
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
  *(v16 + 96) = v14;
  *(v16 + 104) = 0;
  *(v16 + 144) = xmmword_1AFE551B0;
  *(v16 + 80) = v15;
  *(v16 + 88) = &off_1F2535378;
  *(v16 + 210) = 0;

  if (v6)
  {
    v2 = (*(v6 + 8))();
  }

  v17 = swift_conformsToProtocol2();
  if (v17 && v2)
  {
    v18 = *(v17 + 8);
    v19 = v17;
    swift_retain_n();
    v20 = v18(v2, v19);
    *(v16 + 160) = v20;
  }

  else
  {
    v20 = swift_retain_n();
  }

  *(v16 + 64) = sub_1AF5A9938;
  *(v16 + 72) = v13;
  *(v16 + 216) = 0;
  *(v16 + 168) = 0;
  *(v16 + 176) = 0;
  *(v132 + 40) = v16;
  MEMORY[0x1EEE9AC00](v20);
  v21 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v21);
  v133 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v133);
  v22 = swift_getKeyPath();
  v23 = MEMORY[0x1E69E7360];
  sub_1AF5A9240(0, &unk_1EB634340, MEMORY[0x1E69E7360], type metadata accessor for EntityGetSet);
  v24 = swift_allocObject();
  v24[4] = sub_1AF59CF5C;
  v24[5] = v22;
  v24[2] = sub_1AF59D214;
  v24[3] = v22;
  v24[6] = v22;
  v25 = swift_allocObject();
  *(v25 + 112) = 1;
  *(v25 + 128) = 0;
  *(v25 + 136) = 0;
  *(v25 + 120) = 0;
  *(v25 + 160) = MEMORY[0x1E69E7CC0];
  *(v25 + 168) = 0;
  *(v25 + 176) = 0;
  *(v25 + 216) = 0;
  strcpy((v25 + 16), "blendModeIndex");
  *(v25 + 31) = -18;
  *(v25 + 32) = v22;
  *(v25 + 40) = v23;
  *(v25 + 48) = 0;
  *(v25 + 56) = 1;
  *(v25 + 58) = 0;
  *(v25 + 184) = 0;
  *(v25 + 188) = 1;
  *(v25 + 192) = 0;
  *(v25 + 196) = 1;
  *(v25 + 200) = 0x1000100000000;
  *(v25 + 208) = 1;
  *(v25 + 96) = 0;
  *(v25 + 104) = 0;
  *(v25 + 64) = 0;
  *(v25 + 72) = 0;
  *(v25 + 144) = xmmword_1AFE22A20;
  *(v25 + 80) = v24;
  *(v25 + 88) = &off_1F2535378;
  *(v25 + 210) = 0;
  v26 = swift_conformsToProtocol2();

  if (v26)
  {
    v27 = (*(v26 + 8))();
  }

  else
  {
    v27 = v23;
  }

  v28 = swift_conformsToProtocol2();
  v135 = v26;
  if (v28 && v27)
  {
    v29 = *(v28 + 8);
    v30 = v28;
    swift_retain_n();
    *(v25 + 160) = v29(v27, v30);
  }

  else
  {
    swift_retain_n();
  }

  *(v25 + 64) = sub_1AF59D270;
  *(v25 + 72) = v22;
  *(v25 + 216) = 0;
  v31 = &type metadata for BlendMode;
  sub_1AF5A9240(0, &unk_1EB633878, &type metadata for BlendMode, type metadata accessor for EntityGetSet);
  *(v25 + 168) = 0;
  *(v25 + 176) = 0;
  v32 = swift_allocObject();
  v32[4] = sub_1AF59D2B0;
  v32[5] = v21;
  v32[2] = sub_1AF59D2EC;
  v32[3] = v21;
  v32[6] = v21;
  v33 = swift_allocObject();
  *(v33 + 112) = 1;
  *(v33 + 128) = 0;
  *(v33 + 136) = 0;
  *(v33 + 120) = 0;
  *(v33 + 160) = MEMORY[0x1E69E7CC0];
  *(v33 + 168) = 0;
  *(v33 + 176) = 0;
  *(v33 + 216) = 0;
  *(v33 + 16) = 0x646F4D646E656C62;
  *(v33 + 24) = 0xE900000000000065;
  *(v33 + 32) = v21;
  *(v33 + 40) = &type metadata for BlendMode;
  *(v33 + 48) = 0;
  *(v33 + 56) = 1;
  *(v33 + 58) = 0;
  *(v33 + 184) = 0;
  *(v33 + 188) = 1;
  *(v33 + 192) = 0;
  *(v33 + 196) = 1;
  *(v33 + 200) = 0x1000100000000;
  *(v33 + 208) = 1;
  *(v33 + 64) = 0;
  *(v33 + 72) = 0;
  *(v33 + 96) = v133;
  *(v33 + 104) = 0;
  *(v33 + 144) = xmmword_1AFE22A20;
  *(v33 + 80) = v32;
  *(v33 + 88) = &off_1F2535378;
  *(v33 + 210) = 0;
  v34 = swift_conformsToProtocol2();

  if (v34)
  {
    v31 = (*(v34 + 8))();
  }

  v35 = swift_conformsToProtocol2();
  if (v35 && v31)
  {
    v36 = *(v35 + 8);
    v37 = v35;
    swift_retain_n();
    v38 = v36(v31, v37);
    *(v33 + 160) = v38;
  }

  else
  {
    v38 = swift_retain_n();
  }

  *(v33 + 64) = sub_1AF59D32C;
  *(v33 + 72) = v21;
  *(v33 + 168) = 0;
  *(v33 + 176) = 0;
  *(v33 + 216) = v25;
  *(v132 + 48) = v33;
  MEMORY[0x1EEE9AC00](v38);
  v39 = swift_getKeyPath();
  v40 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v41 = swift_allocObject();
  v41[4] = sub_1AF5A952C;
  v41[5] = v39;
  v41[2] = sub_1AF5A9F2C;
  v41[3] = v39;
  v41[6] = v39;
  v42 = swift_allocObject();
  *(v42 + 112) = 1;
  *(v42 + 128) = 0;
  *(v42 + 136) = 0;
  *(v42 + 120) = 0;
  *(v42 + 160) = MEMORY[0x1E69E7CC0];
  *(v42 + 168) = 0;
  *(v42 + 176) = 0;
  *(v42 + 216) = 0;
  *(v42 + 16) = 0x685466666F747563;
  *(v42 + 24) = 0xEF646C6F68736572;
  *(v42 + 32) = v39;
  *(v42 + 40) = v40;
  *(v42 + 48) = 0;
  *(v42 + 56) = 1;
  *(v42 + 58) = 0;
  *(v42 + 184) = -1082130432;
  *(v42 + 188) = 0;
  *(v42 + 192) = 1065353216;
  *(v42 + 196) = 0;
  *(v42 + 200) = 0x1000100000000;
  *(v42 + 208) = 1;
  *(v42 + 96) = 0;
  *(v42 + 104) = 0;
  *(v42 + 64) = 0;
  *(v42 + 72) = 0;
  *(v42 + 144) = xmmword_1AFE22A20;
  *(v42 + 80) = v41;
  *(v42 + 88) = &off_1F2535378;
  *(v42 + 210) = 0;
  v43 = swift_conformsToProtocol2();

  if (v43)
  {
    v44 = (*(v43 + 8))();
  }

  else
  {
    v44 = v40;
  }

  v45 = swift_conformsToProtocol2();
  v131 = v43;
  if (v45 && v44)
  {
    v46 = *(v45 + 8);
    v47 = v45;
    swift_retain_n();
    v48 = v46(v44, v47);
    *(v42 + 160) = v48;
  }

  else
  {
    v48 = swift_retain_n();
  }

  *(v42 + 64) = sub_1AF5A993C;
  *(v42 + 72) = v39;
  *(v42 + 216) = 0;
  *(v42 + 168) = 0;
  *(v42 + 176) = 0;
  *(v132 + 56) = v42;
  MEMORY[0x1EEE9AC00](v48);
  v49 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v49);
  v50 = swift_getKeyPath();
  v51 = MEMORY[0x1E69E6370];
  sub_1AF5A9240(0, &qword_1ED722B80, MEMORY[0x1E69E6370], type metadata accessor for EntityGetSet);
  v52 = swift_allocObject();
  v52[4] = sub_1AF59D36C;
  v52[5] = v49;
  v52[2] = sub_1AF59D398;
  v52[3] = v49;
  v52[6] = v49;
  v53 = swift_allocObject();
  *(v53 + 112) = 1;
  *(v53 + 128) = 0;
  *(v53 + 136) = 0;
  *(v53 + 120) = 0;
  *(v53 + 160) = MEMORY[0x1E69E7CC0];
  *(v53 + 168) = 0;
  *(v53 + 176) = 0;
  *(v53 + 216) = 0;
  *(v53 + 16) = 0x676E69746867696CLL;
  *(v53 + 24) = 0xE800000000000000;
  *(v53 + 32) = v49;
  *(v53 + 40) = v51;
  *(v53 + 48) = 0;
  *(v53 + 56) = 1;
  *(v53 + 58) = 0;
  *(v53 + 184) = 0;
  *(v53 + 188) = 1;
  *(v53 + 192) = 0;
  *(v53 + 196) = 1;
  *(v53 + 200) = 0x1000100000000;
  *(v53 + 208) = 1;
  *(v53 + 64) = 0;
  *(v53 + 72) = 0;
  *(v53 + 96) = v50;
  *(v53 + 104) = 0;
  *(v53 + 144) = xmmword_1AFE22A20;
  *(v53 + 80) = v52;
  *(v53 + 88) = &off_1F2535378;
  *(v53 + 210) = 0;
  v54 = swift_conformsToProtocol2();

  if (v54)
  {
    v55 = (*(v54 + 8))();
  }

  else
  {
    v55 = v51;
  }

  v134 = v54;
  v56 = swift_conformsToProtocol2();
  if (v56 && v55)
  {
    v57 = *(v56 + 8);
    v58 = v56;
    swift_retain_n();
    v59 = v57(v55, v58);
    *(v53 + 160) = v59;
  }

  else
  {
    v59 = swift_retain_n();
  }

  *(v53 + 64) = sub_1AF59D3F4;
  *(v53 + 72) = v49;
  *(v53 + 216) = 0;
  *(v53 + 168) = 0;
  *(v53 + 176) = 0;
  *(v132 + 64) = v53;
  MEMORY[0x1EEE9AC00](v59);
  v60 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v60);
  v61 = swift_getKeyPath();
  v62 = swift_allocObject();
  v62[4] = sub_1AF5AA220;
  v62[5] = v60;
  v62[2] = sub_1AF5A9F34;
  v62[3] = v60;
  v62[6] = v60;
  v63 = swift_allocObject();
  *(v63 + 112) = 1;
  *(v63 + 128) = 0;
  *(v63 + 136) = 0;
  *(v63 + 120) = 0;
  *(v63 + 160) = MEMORY[0x1E69E7CC0];
  *(v63 + 168) = 0;
  *(v63 + 176) = 0;
  *(v63 + 216) = 0;
  *(v63 + 16) = 0x72616C7563657073;
  *(v63 + 24) = 0xE800000000000000;
  *(v63 + 32) = v60;
  *(v63 + 40) = v51;
  *(v63 + 48) = 0;
  *(v63 + 56) = 1;
  *(v63 + 58) = 0;
  *(v63 + 184) = 0;
  *(v63 + 188) = 1;
  *(v63 + 192) = 0;
  *(v63 + 196) = 1;
  *(v63 + 200) = 0x1000100000000;
  *(v63 + 208) = 1;
  *(v63 + 64) = 0;
  *(v63 + 72) = 0;
  *(v63 + 96) = v61;
  *(v63 + 104) = 0;
  *(v63 + 144) = xmmword_1AFE22A20;
  *(v63 + 80) = v62;
  *(v63 + 88) = &off_1F2535378;
  *(v63 + 210) = 0;

  if (v54)
  {
    v64 = (*(v54 + 8))();
  }

  else
  {
    v64 = v51;
  }

  v65 = swift_conformsToProtocol2();
  if (v65 && v64)
  {
    v66 = *(v65 + 8);
    v67 = v65;
    swift_retain_n();
    v68 = v66(v64, v67);
    *(v63 + 160) = v68;
  }

  else
  {
    v68 = swift_retain_n();
  }

  v69 = MEMORY[0x1E69E7360];
  *(v63 + 64) = sub_1AF5A9940;
  *(v63 + 72) = v60;
  *(v63 + 216) = 0;
  *(v63 + 168) = 0;
  *(v63 + 176) = 0;
  *(v132 + 72) = v63;
  MEMORY[0x1EEE9AC00](v68);
  v70 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v70);
  v71 = swift_getKeyPath();
  v72 = swift_allocObject();
  v72[4] = sub_1AF5AA3D0;
  v72[5] = v71;
  v72[2] = sub_1AF5A9F38;
  v72[3] = v71;
  v72[6] = v71;
  v73 = swift_allocObject();
  *(v73 + 112) = 1;
  *(v73 + 128) = 0;
  *(v73 + 136) = 0;
  *(v73 + 120) = 0;
  *(v73 + 160) = MEMORY[0x1E69E7CC0];
  *(v73 + 168) = 0;
  *(v73 + 176) = 0;
  *(v73 + 216) = 0;
  strcpy((v73 + 16), "sortModeIndex");
  *(v73 + 30) = -4864;
  *(v73 + 32) = v71;
  *(v73 + 40) = v69;
  *(v73 + 48) = 0;
  *(v73 + 56) = 1;
  *(v73 + 58) = 0;
  *(v73 + 184) = 0;
  *(v73 + 188) = 1;
  *(v73 + 192) = 0;
  *(v73 + 196) = 1;
  *(v73 + 200) = 0x1000100000000;
  *(v73 + 208) = 1;
  *(v73 + 96) = 0;
  *(v73 + 104) = 0;
  *(v73 + 64) = 0;
  *(v73 + 72) = 0;
  *(v73 + 144) = xmmword_1AFE22A20;
  *(v73 + 80) = v72;
  *(v73 + 88) = &off_1F2535378;
  *(v73 + 210) = 0;

  if (v135)
  {
    v74 = (*(v135 + 8))();
  }

  else
  {
    v74 = v69;
  }

  v75 = swift_conformsToProtocol2();
  v76 = MEMORY[0x1E69E6370];
  if (v75 && v74)
  {
    v77 = *(v75 + 8);
    v78 = v75;
    swift_retain_n();
    *(v73 + 160) = v77(v74, v78);
  }

  else
  {
    swift_retain_n();
  }

  *(v73 + 64) = sub_1AF5A9944;
  *(v73 + 72) = v71;
  *(v73 + 216) = 0;
  v79 = &type metadata for ParticleSortMode;
  sub_1AF5A9240(0, &qword_1EB632F98, &type metadata for ParticleSortMode, type metadata accessor for EntityGetSet);
  *(v73 + 168) = 0;
  *(v73 + 176) = 0;
  v80 = swift_allocObject();
  v80[4] = sub_1AF59D434;
  v80[5] = v70;
  v80[2] = sub_1AF59D460;
  v80[3] = v70;
  v80[6] = v70;
  v81 = swift_allocObject();
  *(v81 + 112) = 1;
  *(v81 + 128) = 0;
  *(v81 + 136) = 0;
  *(v81 + 120) = 0;
  *(v81 + 160) = MEMORY[0x1E69E7CC0];
  *(v81 + 168) = 0;
  *(v81 + 176) = 0;
  *(v81 + 216) = 0;
  *(v81 + 16) = 0x65646F4D74726F73;
  *(v81 + 24) = 0xE800000000000000;
  *(v81 + 32) = v70;
  *(v81 + 40) = &type metadata for ParticleSortMode;
  *(v81 + 48) = 0;
  *(v81 + 56) = 1;
  *(v81 + 58) = 0;
  *(v81 + 184) = 0;
  *(v81 + 188) = 1;
  *(v81 + 192) = 0;
  *(v81 + 196) = 1;
  *(v81 + 200) = 0x1000100000000;
  *(v81 + 208) = 1;
  *(v81 + 96) = 0;
  *(v81 + 104) = 0;
  *(v81 + 64) = 0;
  *(v81 + 72) = 0;
  *(v81 + 144) = xmmword_1AFE22A20;
  *(v81 + 80) = v80;
  *(v81 + 88) = &off_1F2535378;
  *(v81 + 210) = 0;
  v82 = swift_conformsToProtocol2();

  if (v82)
  {
    v79 = (*(v82 + 8))();
  }

  v83 = swift_conformsToProtocol2();
  if (v83 && v79)
  {
    v84 = *(v83 + 8);
    v85 = v83;
    swift_retain_n();
    v86 = v84(v79, v85);
    *(v81 + 160) = v86;
  }

  else
  {
    v86 = swift_retain_n();
  }

  *(v81 + 64) = sub_1AF59D4BC;
  *(v81 + 72) = v70;
  *(v81 + 168) = 0;
  *(v81 + 176) = 0;
  *(v81 + 216) = v73;
  *(v132 + 80) = v81;
  MEMORY[0x1EEE9AC00](v86);
  v87 = swift_getKeyPath();
  v88 = MEMORY[0x1E69E7668];
  sub_1AF5A9240(0, &qword_1ED725C68, MEMORY[0x1E69E7668], type metadata accessor for EntityGetSet);
  v89 = swift_allocObject();
  v89[4] = sub_1AF59CE8C;
  v89[5] = v87;
  v89[2] = sub_1AF59D4FC;
  v89[3] = v87;
  v89[6] = v87;
  v90 = swift_allocObject();
  *(v90 + 112) = 1;
  *(v90 + 128) = 0;
  *(v90 + 136) = 0;
  *(v90 + 120) = 0;
  *(v90 + 168) = 0;
  *(v90 + 160) = MEMORY[0x1E69E7CC0];
  *(v90 + 176) = 0;
  *(v90 + 216) = 0;
  *(v90 + 16) = 0x647265764F78616DLL;
  *(v90 + 24) = 0xEB00000000776172;
  *(v90 + 32) = v87;
  *(v90 + 40) = v88;
  *(v90 + 48) = 0;
  *(v90 + 56) = 1;
  *(v90 + 58) = 4;
  *(v90 + 184) = 1065353216;
  *(v90 + 188) = 0;
  *(v90 + 192) = 1132462080;
  *(v90 + 196) = 0;
  *(v90 + 200) = 0x1000100000000;
  *(v90 + 208) = 1;
  *(v90 + 96) = 0;
  *(v90 + 104) = 0;
  *(v90 + 64) = 0;
  *(v90 + 72) = 0;
  *(v90 + 144) = xmmword_1AFE22A20;
  *(v90 + 80) = v89;
  *(v90 + 88) = &off_1F2535378;
  *(v90 + 210) = 4;
  v91 = swift_conformsToProtocol2();

  if (v91)
  {
    v88 = (*(v91 + 8))();
  }

  v92 = swift_conformsToProtocol2();
  if (v92 && v88)
  {
    v93 = *(v92 + 8);
    v94 = v92;
    swift_retain_n();
    v95 = v93(v88, v94);
    *(v90 + 160) = v95;
  }

  else
  {
    v95 = swift_retain_n();
  }

  *(v90 + 64) = sub_1AF59D56C;
  *(v90 + 72) = v87;
  *(v90 + 216) = 0;
  *(v90 + 168) = 0;
  *(v90 + 176) = 0;
  *(v132 + 88) = v90;
  MEMORY[0x1EEE9AC00](v95);
  v96 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v96);
  v97 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v97);
  v98 = swift_getKeyPath();
  v99 = swift_allocObject();
  v99[4] = sub_1AF5AA3D0;
  v99[5] = v98;
  v99[2] = sub_1AF5A9F38;
  v99[3] = v98;
  v99[6] = v98;
  v100 = swift_allocObject();
  *(v100 + 112) = 1;
  *(v100 + 128) = 0;
  *(v100 + 136) = 0;
  *(v100 + 120) = 0;
  *(v100 + 160) = MEMORY[0x1E69E7CC0];
  *(v100 + 168) = 0;
  *(v100 + 176) = 0;
  *(v100 + 216) = 0;
  *(v100 + 16) = 0xD000000000000012;
  *(v100 + 24) = 0x80000001AFF2BB80;
  *(v100 + 32) = v98;
  v101 = MEMORY[0x1E69E7360];
  *(v100 + 40) = MEMORY[0x1E69E7360];
  *(v100 + 48) = 0;
  *(v100 + 56) = 1;
  *(v100 + 58) = 0;
  *(v100 + 184) = 0;
  *(v100 + 188) = 1;
  *(v100 + 192) = 0;
  *(v100 + 196) = 1;
  *(v100 + 200) = 0x1000100000000;
  *(v100 + 208) = 1;
  *(v100 + 96) = 0;
  *(v100 + 104) = 0;
  *(v100 + 64) = 0;
  *(v100 + 72) = 0;
  *(v100 + 144) = xmmword_1AFE22A20;
  *(v100 + 80) = v99;
  *(v100 + 88) = &off_1F2535378;
  *(v100 + 210) = 0;

  if (v135)
  {
    v101 = (*(v135 + 8))();
  }

  v102 = swift_conformsToProtocol2();
  if (v102 && v101)
  {
    v103 = v102;
    v104 = *(v102 + 8);
    swift_retain_n();
    v105 = v104(v101, v103);
    v12 = v132;
    *(v100 + 160) = v105;
  }

  else
  {
    swift_retain_n();
  }

  *(v100 + 64) = sub_1AF5A9944;
  *(v100 + 72) = v98;
  *(v100 + 216) = 0;
  v106 = &type metadata for ParticleAnimationMode;
  sub_1AF5A9240(0, &qword_1EB632F80, &type metadata for ParticleAnimationMode, type metadata accessor for EntityGetSet);
  *(v100 + 168) = 0;
  *(v100 + 176) = 0;
  v107 = swift_allocObject();
  v107[4] = sub_1AF59D5AC;
  v107[5] = v96;
  v107[2] = sub_1AF59D5D8;
  v107[3] = v96;
  v107[6] = v96;
  v108 = swift_allocObject();
  *(v108 + 112) = 1;
  *(v108 + 128) = 0;
  *(v108 + 136) = 0;
  *(v108 + 120) = 0;
  *(v108 + 160) = MEMORY[0x1E69E7CC0];
  *(v108 + 168) = 0;
  *(v108 + 176) = 0;
  *(v108 + 216) = 0;
  strcpy((v108 + 16), "animationMode");
  *(v108 + 30) = -4864;
  *(v108 + 32) = v96;
  *(v108 + 40) = &type metadata for ParticleAnimationMode;
  *(v108 + 48) = 0;
  *(v108 + 56) = 1;
  *(v108 + 58) = 0;
  *(v108 + 184) = 0;
  *(v108 + 188) = 1;
  *(v108 + 192) = 0;
  *(v108 + 196) = 1;
  *(v108 + 200) = 0x1000100000000;
  *(v108 + 208) = 1;
  *(v108 + 64) = 0;
  *(v108 + 72) = 0;
  *(v108 + 96) = v97;
  *(v108 + 104) = 0;
  *(v108 + 144) = xmmword_1AFE22A20;
  *(v108 + 80) = v107;
  *(v108 + 88) = &off_1F2535378;
  *(v108 + 210) = 0;
  v109 = swift_conformsToProtocol2();

  if (v109)
  {
    v106 = (*(v109 + 8))();
  }

  v110 = swift_conformsToProtocol2();
  if (v110 && v106)
  {
    v111 = *(v110 + 8);
    v112 = v110;
    swift_retain_n();
    v113 = v111(v106, v112);
    *(v108 + 160) = v113;
  }

  else
  {
    v113 = swift_retain_n();
  }

  *(v108 + 64) = sub_1AF59D634;
  *(v108 + 72) = v96;
  *(v108 + 168) = 0;
  *(v108 + 176) = 0;
  *(v108 + 216) = v100;
  v12[12] = v108;
  MEMORY[0x1EEE9AC00](v113);
  v114 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v114);
  v115 = swift_getKeyPath();
  v116 = swift_allocObject();
  v116[4] = sub_1AF5AA220;
  v116[5] = v114;
  v116[2] = sub_1AF5A9F34;
  v116[3] = v114;
  v116[6] = v114;
  v117 = swift_allocObject();
  *(v117 + 112) = 1;
  *(v117 + 128) = 0;
  *(v117 + 136) = 0;
  *(v117 + 120) = 0;
  *(v117 + 160) = MEMORY[0x1E69E7CC0];
  *(v117 + 168) = 0;
  *(v117 + 176) = 0;
  *(v117 + 216) = 0;
  *(v117 + 16) = 0xD000000000000017;
  *(v117 + 24) = 0x80000001AFF24730;
  *(v117 + 32) = v114;
  *(v117 + 40) = v76;
  *(v117 + 48) = 0;
  *(v117 + 56) = 1;
  *(v117 + 58) = 0;
  *(v117 + 184) = 0;
  *(v117 + 188) = 1;
  *(v117 + 192) = 0;
  *(v117 + 196) = 1;
  *(v117 + 200) = 0x1000100000000;
  *(v117 + 208) = 1;
  *(v117 + 64) = 0;
  *(v117 + 72) = 0;
  *(v117 + 96) = v115;
  *(v117 + 104) = 0;
  *(v117 + 144) = xmmword_1AFE22A20;
  *(v117 + 80) = v116;
  *(v117 + 88) = &off_1F2535378;
  *(v117 + 210) = 0;

  if (v134)
  {
    v76 = (*(v134 + 8))();
  }

  v118 = swift_conformsToProtocol2();
  if (v118 && v76)
  {
    v119 = *(v118 + 8);
    v120 = v118;
    swift_retain_n();
    v121 = v119(v76, v120);
    *(v117 + 160) = v121;
  }

  else
  {
    v121 = swift_retain_n();
  }

  *(v117 + 64) = sub_1AF5A9940;
  *(v117 + 72) = v114;
  *(v117 + 216) = 0;
  *(v117 + 168) = 0;
  *(v117 + 176) = 0;
  v12[13] = v117;
  MEMORY[0x1EEE9AC00](v121);
  v122 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v122);
  v123 = swift_getKeyPath();
  v124 = swift_allocObject();
  v124[4] = sub_1AF5A952C;
  v124[5] = v122;
  v124[2] = sub_1AF5A9F2C;
  v124[3] = v122;
  v124[6] = v122;
  v125 = swift_allocObject();
  *(v125 + 112) = 1;
  *(v125 + 128) = 0;
  *(v125 + 136) = 0;
  *(v125 + 120) = 0;
  *(v125 + 160) = MEMORY[0x1E69E7CC0];
  *(v125 + 168) = 0;
  *(v125 + 176) = 0;
  *(v125 + 216) = 0;
  strcpy((v125 + 16), "softDistance");
  *(v125 + 29) = 0;
  *(v125 + 30) = -5120;
  *(v125 + 32) = v122;
  v126 = MEMORY[0x1E69E6448];
  *(v125 + 40) = MEMORY[0x1E69E6448];
  *(v125 + 48) = 0;
  *(v125 + 56) = 1;
  *(v125 + 58) = 0;
  *(v125 + 184) = 0;
  *(v125 + 188) = 0;
  *(v125 + 192) = 0;
  *(v125 + 196) = 1;
  *(v125 + 200) = 0x1000100000000;
  *(v125 + 208) = 1;
  *(v125 + 64) = 0;
  *(v125 + 72) = 0;
  *(v125 + 96) = v123;
  *(v125 + 104) = 0;
  *(v125 + 144) = xmmword_1AFE22A20;
  *(v125 + 80) = v124;
  *(v125 + 88) = &off_1F2535378;
  *(v125 + 210) = 0;

  if (v131)
  {
    v126 = (*(v131 + 8))();
  }

  v127 = swift_conformsToProtocol2();
  if (v127 && v126)
  {
    v128 = *(v127 + 8);
    v129 = v127;
    swift_retain_n();
    *(v125 + 160) = v128(v126, v129);
  }

  else
  {
    swift_retain_n();
  }

  *(v125 + 64) = sub_1AF5A993C;
  *(v125 + 72) = v122;
  *(v125 + 216) = 0;
  *(v125 + 168) = 0;
  *(v125 + 176) = 0;
  v12[14] = v125;
  return v12;
}

void *sub_1AF5049E0()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v132 = swift_allocObject();
  *(v132 + 16) = xmmword_1AFE55190;
  sub_1AF59FD90();
  KeyPath = swift_getKeyPath();
  v1 = swift_getKeyPath();
  v2 = &type metadata for Entity;
  sub_1AF5A9240(0, &unk_1EB6338D8, &type metadata for Entity, type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF59FDE4;
  v3[5] = KeyPath;
  v3[2] = sub_1AF59FE28;
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
  *(v4 + 176) = 0;
  *(v4 + 216) = 0;
  *(v4 + 16) = 0xD000000000000010;
  *(v4 + 24) = 0x80000001AFF22E00;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = &type metadata for Entity;
  *(v4 + 48) = 0;
  *(v4 + 56) = 1;
  *(v4 + 58) = 0;
  *(v4 + 184) = 0;
  *(v4 + 188) = 1;
  *(v4 + 192) = 0;
  *(v4 + 196) = 1;
  *(v4 + 200) = 0x1000100000000;
  *(v4 + 208) = 1;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  *(v4 + 96) = v1;
  *(v4 + 104) = 0;
  *(v4 + 144) = xmmword_1AFE551E0;
  *(v4 + 80) = v3;
  *(v4 + 88) = &off_1F2535378;
  *(v4 + 210) = 0;
  v5 = swift_conformsToProtocol2();
  v6 = v5;
  if (v5)
  {
    v7 = (*(v5 + 8))(&type metadata for Entity, v5);
  }

  else
  {
    v7 = &type metadata for Entity;
  }

  v8 = swift_conformsToProtocol2();
  if (v8 && v7)
  {
    v9 = *(v8 + 8);
    v10 = v8;
    swift_retain_n();
    v11 = v9(v7, v10);
    *(v4 + 160) = v11;
  }

  else
  {
    v11 = swift_retain_n();
  }

  *(v4 + 64) = sub_1AF59FE84;
  *(v4 + 72) = KeyPath;
  *(v4 + 216) = 0;
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;
  v12 = v132;
  *(v132 + 32) = v4;
  MEMORY[0x1EEE9AC00](v11);
  v13 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v13);
  v14 = swift_getKeyPath();
  v15 = swift_allocObject();
  v15[4] = sub_1AF5AA3E0;
  v15[5] = v13;
  v15[2] = sub_1AF5A9FB4;
  v15[3] = v13;
  v15[6] = v13;
  v16 = swift_allocObject();
  *(v16 + 112) = 1;
  *(v16 + 128) = 0;
  *(v16 + 136) = 0;
  *(v16 + 120) = 0;
  *(v16 + 160) = MEMORY[0x1E69E7CC0];
  *(v16 + 168) = 0;
  *(v16 + 176) = 0;
  *(v16 + 216) = 0;
  *(v16 + 16) = 0x65727574786574;
  *(v16 + 24) = 0xE700000000000000;
  *(v16 + 32) = v13;
  *(v16 + 40) = &type metadata for Entity;
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
  *(v16 + 96) = v14;
  *(v16 + 104) = 0;
  *(v16 + 144) = xmmword_1AFE551B0;
  *(v16 + 80) = v15;
  *(v16 + 88) = &off_1F2535378;
  *(v16 + 210) = 0;

  if (v6)
  {
    v2 = (*(v6 + 8))();
  }

  v17 = swift_conformsToProtocol2();
  if (v17 && v2)
  {
    v18 = *(v17 + 8);
    v19 = v17;
    swift_retain_n();
    v20 = v18(v2, v19);
    *(v16 + 160) = v20;
  }

  else
  {
    v20 = swift_retain_n();
  }

  *(v16 + 64) = sub_1AF5A9990;
  *(v16 + 72) = v13;
  *(v16 + 216) = 0;
  *(v16 + 168) = 0;
  *(v16 + 176) = 0;
  *(v132 + 40) = v16;
  MEMORY[0x1EEE9AC00](v20);
  v21 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v21);
  v133 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v133);
  v22 = swift_getKeyPath();
  v23 = MEMORY[0x1E69E7360];
  sub_1AF5A9240(0, &unk_1EB634340, MEMORY[0x1E69E7360], type metadata accessor for EntityGetSet);
  v24 = swift_allocObject();
  v24[4] = sub_1AF59FDE4;
  v24[5] = v22;
  v24[2] = sub_1AF59FEC4;
  v24[3] = v22;
  v24[6] = v22;
  v25 = swift_allocObject();
  *(v25 + 112) = 1;
  *(v25 + 128) = 0;
  *(v25 + 136) = 0;
  *(v25 + 120) = 0;
  *(v25 + 160) = MEMORY[0x1E69E7CC0];
  *(v25 + 168) = 0;
  *(v25 + 176) = 0;
  *(v25 + 216) = 0;
  strcpy((v25 + 16), "blendModeIndex");
  *(v25 + 31) = -18;
  *(v25 + 32) = v22;
  *(v25 + 40) = v23;
  *(v25 + 48) = 0;
  *(v25 + 56) = 1;
  *(v25 + 58) = 0;
  *(v25 + 184) = 0;
  *(v25 + 188) = 1;
  *(v25 + 192) = 0;
  *(v25 + 196) = 1;
  *(v25 + 200) = 0x1000100000000;
  *(v25 + 208) = 1;
  *(v25 + 96) = 0;
  *(v25 + 104) = 0;
  *(v25 + 64) = 0;
  *(v25 + 72) = 0;
  *(v25 + 144) = xmmword_1AFE22A20;
  *(v25 + 80) = v24;
  *(v25 + 88) = &off_1F2535378;
  *(v25 + 210) = 0;
  v26 = swift_conformsToProtocol2();

  if (v26)
  {
    v27 = (*(v26 + 8))();
  }

  else
  {
    v27 = v23;
  }

  v28 = swift_conformsToProtocol2();
  v135 = v26;
  if (v28 && v27)
  {
    v29 = *(v28 + 8);
    v30 = v28;
    swift_retain_n();
    *(v25 + 160) = v29(v27, v30);
  }

  else
  {
    swift_retain_n();
  }

  *(v25 + 64) = sub_1AF59FF20;
  *(v25 + 72) = v22;
  *(v25 + 216) = 0;
  v31 = &type metadata for BlendMode;
  sub_1AF5A9240(0, &unk_1EB633878, &type metadata for BlendMode, type metadata accessor for EntityGetSet);
  *(v25 + 168) = 0;
  *(v25 + 176) = 0;
  v32 = swift_allocObject();
  v32[4] = sub_1AF59FF60;
  v32[5] = v21;
  v32[2] = sub_1AF59FFAC;
  v32[3] = v21;
  v32[6] = v21;
  v33 = swift_allocObject();
  *(v33 + 112) = 1;
  *(v33 + 128) = 0;
  *(v33 + 136) = 0;
  *(v33 + 120) = 0;
  *(v33 + 160) = MEMORY[0x1E69E7CC0];
  *(v33 + 168) = 0;
  *(v33 + 176) = 0;
  *(v33 + 216) = 0;
  *(v33 + 16) = 0x646F4D646E656C62;
  *(v33 + 24) = 0xE900000000000065;
  *(v33 + 32) = v21;
  *(v33 + 40) = &type metadata for BlendMode;
  *(v33 + 48) = 0;
  *(v33 + 56) = 1;
  *(v33 + 58) = 0;
  *(v33 + 184) = 0;
  *(v33 + 188) = 1;
  *(v33 + 192) = 0;
  *(v33 + 196) = 1;
  *(v33 + 200) = 0x1000100000000;
  *(v33 + 208) = 1;
  *(v33 + 64) = 0;
  *(v33 + 72) = 0;
  *(v33 + 96) = v133;
  *(v33 + 104) = 0;
  *(v33 + 144) = xmmword_1AFE22A20;
  *(v33 + 80) = v32;
  *(v33 + 88) = &off_1F2535378;
  *(v33 + 210) = 0;
  v34 = swift_conformsToProtocol2();

  if (v34)
  {
    v31 = (*(v34 + 8))();
  }

  v35 = swift_conformsToProtocol2();
  if (v35 && v31)
  {
    v36 = *(v35 + 8);
    v37 = v35;
    swift_retain_n();
    v38 = v36(v31, v37);
    *(v33 + 160) = v38;
  }

  else
  {
    v38 = swift_retain_n();
  }

  *(v33 + 64) = sub_1AF59FFEC;
  *(v33 + 72) = v21;
  *(v33 + 168) = 0;
  *(v33 + 176) = 0;
  *(v33 + 216) = v25;
  *(v132 + 48) = v33;
  MEMORY[0x1EEE9AC00](v38);
  v39 = swift_getKeyPath();
  v40 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v41 = swift_allocObject();
  v41[4] = sub_1AF5A002C;
  v41[5] = v39;
  v41[2] = sub_1AF5A0070;
  v41[3] = v39;
  v41[6] = v39;
  v42 = swift_allocObject();
  *(v42 + 112) = 1;
  *(v42 + 128) = 0;
  *(v42 + 136) = 0;
  *(v42 + 120) = 0;
  *(v42 + 160) = MEMORY[0x1E69E7CC0];
  *(v42 + 168) = 0;
  *(v42 + 176) = 0;
  *(v42 + 216) = 0;
  *(v42 + 16) = 0x685466666F747563;
  *(v42 + 24) = 0xEF646C6F68736572;
  *(v42 + 32) = v39;
  *(v42 + 40) = v40;
  *(v42 + 48) = 0;
  *(v42 + 56) = 1;
  *(v42 + 58) = 0;
  *(v42 + 184) = -1082130432;
  *(v42 + 188) = 0;
  *(v42 + 192) = 1065353216;
  *(v42 + 196) = 0;
  *(v42 + 200) = 0x1000100000000;
  *(v42 + 208) = 1;
  *(v42 + 96) = 0;
  *(v42 + 104) = 0;
  *(v42 + 64) = 0;
  *(v42 + 72) = 0;
  *(v42 + 144) = xmmword_1AFE22A20;
  *(v42 + 80) = v41;
  *(v42 + 88) = &off_1F2535378;
  *(v42 + 210) = 0;
  v43 = swift_conformsToProtocol2();

  if (v43)
  {
    v44 = (*(v43 + 8))();
  }

  else
  {
    v44 = v40;
  }

  v45 = swift_conformsToProtocol2();
  v131 = v43;
  if (v45 && v44)
  {
    v46 = *(v45 + 8);
    v47 = v45;
    swift_retain_n();
    v48 = v46(v44, v47);
    *(v42 + 160) = v48;
  }

  else
  {
    v48 = swift_retain_n();
  }

  *(v42 + 64) = sub_1AF5A00CC;
  *(v42 + 72) = v39;
  *(v42 + 216) = 0;
  *(v42 + 168) = 0;
  *(v42 + 176) = 0;
  *(v132 + 56) = v42;
  MEMORY[0x1EEE9AC00](v48);
  v49 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v49);
  v50 = swift_getKeyPath();
  v51 = MEMORY[0x1E69E6370];
  sub_1AF5A9240(0, &qword_1ED722B80, MEMORY[0x1E69E6370], type metadata accessor for EntityGetSet);
  v52 = swift_allocObject();
  v52[4] = sub_1AF5A010C;
  v52[5] = v49;
  v52[2] = sub_1AF5A0148;
  v52[3] = v49;
  v52[6] = v49;
  v53 = swift_allocObject();
  *(v53 + 112) = 1;
  *(v53 + 128) = 0;
  *(v53 + 136) = 0;
  *(v53 + 120) = 0;
  *(v53 + 160) = MEMORY[0x1E69E7CC0];
  *(v53 + 168) = 0;
  *(v53 + 176) = 0;
  *(v53 + 216) = 0;
  *(v53 + 16) = 0x676E69746867696CLL;
  *(v53 + 24) = 0xE800000000000000;
  *(v53 + 32) = v49;
  *(v53 + 40) = v51;
  *(v53 + 48) = 0;
  *(v53 + 56) = 1;
  *(v53 + 58) = 0;
  *(v53 + 184) = 0;
  *(v53 + 188) = 1;
  *(v53 + 192) = 0;
  *(v53 + 196) = 1;
  *(v53 + 200) = 0x1000100000000;
  *(v53 + 208) = 1;
  *(v53 + 64) = 0;
  *(v53 + 72) = 0;
  *(v53 + 96) = v50;
  *(v53 + 104) = 0;
  *(v53 + 144) = xmmword_1AFE22A20;
  *(v53 + 80) = v52;
  *(v53 + 88) = &off_1F2535378;
  *(v53 + 210) = 0;
  v54 = swift_conformsToProtocol2();

  if (v54)
  {
    v55 = (*(v54 + 8))();
  }

  else
  {
    v55 = v51;
  }

  v134 = v54;
  v56 = swift_conformsToProtocol2();
  if (v56 && v55)
  {
    v57 = *(v56 + 8);
    v58 = v56;
    swift_retain_n();
    v59 = v57(v55, v58);
    *(v53 + 160) = v59;
  }

  else
  {
    v59 = swift_retain_n();
  }

  *(v53 + 64) = sub_1AF5A01A4;
  *(v53 + 72) = v49;
  *(v53 + 216) = 0;
  *(v53 + 168) = 0;
  *(v53 + 176) = 0;
  *(v132 + 64) = v53;
  MEMORY[0x1EEE9AC00](v59);
  v60 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v60);
  v61 = swift_getKeyPath();
  v62 = swift_allocObject();
  v62[4] = sub_1AF5AA254;
  v62[5] = v60;
  v62[2] = sub_1AF5A9FB8;
  v62[3] = v60;
  v62[6] = v60;
  v63 = swift_allocObject();
  *(v63 + 112) = 1;
  *(v63 + 128) = 0;
  *(v63 + 136) = 0;
  *(v63 + 120) = 0;
  *(v63 + 160) = MEMORY[0x1E69E7CC0];
  *(v63 + 168) = 0;
  *(v63 + 176) = 0;
  *(v63 + 216) = 0;
  *(v63 + 16) = 0x72616C7563657073;
  *(v63 + 24) = 0xE800000000000000;
  *(v63 + 32) = v60;
  *(v63 + 40) = v51;
  *(v63 + 48) = 0;
  *(v63 + 56) = 1;
  *(v63 + 58) = 0;
  *(v63 + 184) = 0;
  *(v63 + 188) = 1;
  *(v63 + 192) = 0;
  *(v63 + 196) = 1;
  *(v63 + 200) = 0x1000100000000;
  *(v63 + 208) = 1;
  *(v63 + 64) = 0;
  *(v63 + 72) = 0;
  *(v63 + 96) = v61;
  *(v63 + 104) = 0;
  *(v63 + 144) = xmmword_1AFE22A20;
  *(v63 + 80) = v62;
  *(v63 + 88) = &off_1F2535378;
  *(v63 + 210) = 0;

  if (v54)
  {
    v64 = (*(v54 + 8))();
  }

  else
  {
    v64 = v51;
  }

  v65 = swift_conformsToProtocol2();
  if (v65 && v64)
  {
    v66 = *(v65 + 8);
    v67 = v65;
    swift_retain_n();
    v68 = v66(v64, v67);
    *(v63 + 160) = v68;
  }

  else
  {
    v68 = swift_retain_n();
  }

  v69 = MEMORY[0x1E69E7360];
  *(v63 + 64) = sub_1AF5A9994;
  *(v63 + 72) = v60;
  *(v63 + 216) = 0;
  *(v63 + 168) = 0;
  *(v63 + 176) = 0;
  *(v132 + 72) = v63;
  MEMORY[0x1EEE9AC00](v68);
  v70 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v70);
  v71 = swift_getKeyPath();
  v72 = swift_allocObject();
  v72[4] = sub_1AF5AA3E0;
  v72[5] = v71;
  v72[2] = sub_1AF5A9FBC;
  v72[3] = v71;
  v72[6] = v71;
  v73 = swift_allocObject();
  *(v73 + 112) = 1;
  *(v73 + 128) = 0;
  *(v73 + 136) = 0;
  *(v73 + 120) = 0;
  *(v73 + 160) = MEMORY[0x1E69E7CC0];
  *(v73 + 168) = 0;
  *(v73 + 176) = 0;
  *(v73 + 216) = 0;
  strcpy((v73 + 16), "sortModeIndex");
  *(v73 + 30) = -4864;
  *(v73 + 32) = v71;
  *(v73 + 40) = v69;
  *(v73 + 48) = 0;
  *(v73 + 56) = 1;
  *(v73 + 58) = 0;
  *(v73 + 184) = 0;
  *(v73 + 188) = 1;
  *(v73 + 192) = 0;
  *(v73 + 196) = 1;
  *(v73 + 200) = 0x1000100000000;
  *(v73 + 208) = 1;
  *(v73 + 96) = 0;
  *(v73 + 104) = 0;
  *(v73 + 64) = 0;
  *(v73 + 72) = 0;
  *(v73 + 144) = xmmword_1AFE22A20;
  *(v73 + 80) = v72;
  *(v73 + 88) = &off_1F2535378;
  *(v73 + 210) = 0;

  if (v135)
  {
    v74 = (*(v135 + 8))();
  }

  else
  {
    v74 = v69;
  }

  v75 = swift_conformsToProtocol2();
  v76 = MEMORY[0x1E69E6370];
  if (v75 && v74)
  {
    v77 = *(v75 + 8);
    v78 = v75;
    swift_retain_n();
    *(v73 + 160) = v77(v74, v78);
  }

  else
  {
    swift_retain_n();
  }

  *(v73 + 64) = sub_1AF5A9998;
  *(v73 + 72) = v71;
  *(v73 + 216) = 0;
  v79 = &type metadata for ParticleSortMode;
  sub_1AF5A9240(0, &qword_1EB632F98, &type metadata for ParticleSortMode, type metadata accessor for EntityGetSet);
  *(v73 + 168) = 0;
  *(v73 + 176) = 0;
  v80 = swift_allocObject();
  v80[4] = sub_1AF5A01E4;
  v80[5] = v70;
  v80[2] = sub_1AF5A0220;
  v80[3] = v70;
  v80[6] = v70;
  v81 = swift_allocObject();
  *(v81 + 112) = 1;
  *(v81 + 128) = 0;
  *(v81 + 136) = 0;
  *(v81 + 120) = 0;
  *(v81 + 160) = MEMORY[0x1E69E7CC0];
  *(v81 + 168) = 0;
  *(v81 + 176) = 0;
  *(v81 + 216) = 0;
  *(v81 + 16) = 0x65646F4D74726F73;
  *(v81 + 24) = 0xE800000000000000;
  *(v81 + 32) = v70;
  *(v81 + 40) = &type metadata for ParticleSortMode;
  *(v81 + 48) = 0;
  *(v81 + 56) = 1;
  *(v81 + 58) = 0;
  *(v81 + 184) = 0;
  *(v81 + 188) = 1;
  *(v81 + 192) = 0;
  *(v81 + 196) = 1;
  *(v81 + 200) = 0x1000100000000;
  *(v81 + 208) = 1;
  *(v81 + 96) = 0;
  *(v81 + 104) = 0;
  *(v81 + 64) = 0;
  *(v81 + 72) = 0;
  *(v81 + 144) = xmmword_1AFE22A20;
  *(v81 + 80) = v80;
  *(v81 + 88) = &off_1F2535378;
  *(v81 + 210) = 0;
  v82 = swift_conformsToProtocol2();

  if (v82)
  {
    v79 = (*(v82 + 8))();
  }

  v83 = swift_conformsToProtocol2();
  if (v83 && v79)
  {
    v84 = *(v83 + 8);
    v85 = v83;
    swift_retain_n();
    v86 = v84(v79, v85);
    *(v81 + 160) = v86;
  }

  else
  {
    v86 = swift_retain_n();
  }

  *(v81 + 64) = sub_1AF5A027C;
  *(v81 + 72) = v70;
  *(v81 + 168) = 0;
  *(v81 + 176) = 0;
  *(v81 + 216) = v73;
  *(v132 + 80) = v81;
  MEMORY[0x1EEE9AC00](v86);
  v87 = swift_getKeyPath();
  v88 = MEMORY[0x1E69E7668];
  sub_1AF5A9240(0, &qword_1ED725C68, MEMORY[0x1E69E7668], type metadata accessor for EntityGetSet);
  v89 = swift_allocObject();
  v89[4] = sub_1AF5A002C;
  v89[5] = v87;
  v89[2] = sub_1AF5A02BC;
  v89[3] = v87;
  v89[6] = v87;
  v90 = swift_allocObject();
  *(v90 + 112) = 1;
  *(v90 + 128) = 0;
  *(v90 + 136) = 0;
  *(v90 + 120) = 0;
  *(v90 + 168) = 0;
  *(v90 + 160) = MEMORY[0x1E69E7CC0];
  *(v90 + 176) = 0;
  *(v90 + 216) = 0;
  *(v90 + 16) = 0x647265764F78616DLL;
  *(v90 + 24) = 0xEB00000000776172;
  *(v90 + 32) = v87;
  *(v90 + 40) = v88;
  *(v90 + 48) = 0;
  *(v90 + 56) = 1;
  *(v90 + 58) = 4;
  *(v90 + 184) = 1065353216;
  *(v90 + 188) = 0;
  *(v90 + 192) = 1132462080;
  *(v90 + 196) = 0;
  *(v90 + 200) = 0x1000100000000;
  *(v90 + 208) = 1;
  *(v90 + 96) = 0;
  *(v90 + 104) = 0;
  *(v90 + 64) = 0;
  *(v90 + 72) = 0;
  *(v90 + 144) = xmmword_1AFE22A20;
  *(v90 + 80) = v89;
  *(v90 + 88) = &off_1F2535378;
  *(v90 + 210) = 4;
  v91 = swift_conformsToProtocol2();

  if (v91)
  {
    v88 = (*(v91 + 8))();
  }

  v92 = swift_conformsToProtocol2();
  if (v92 && v88)
  {
    v93 = *(v92 + 8);
    v94 = v92;
    swift_retain_n();
    v95 = v93(v88, v94);
    *(v90 + 160) = v95;
  }

  else
  {
    v95 = swift_retain_n();
  }

  *(v90 + 64) = sub_1AF5A032C;
  *(v90 + 72) = v87;
  *(v90 + 216) = 0;
  *(v90 + 168) = 0;
  *(v90 + 176) = 0;
  *(v132 + 88) = v90;
  MEMORY[0x1EEE9AC00](v95);
  v96 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v96);
  v97 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v97);
  v98 = swift_getKeyPath();
  v99 = swift_allocObject();
  v99[4] = sub_1AF5AA3E0;
  v99[5] = v98;
  v99[2] = sub_1AF5A9FBC;
  v99[3] = v98;
  v99[6] = v98;
  v100 = swift_allocObject();
  *(v100 + 112) = 1;
  *(v100 + 128) = 0;
  *(v100 + 136) = 0;
  *(v100 + 120) = 0;
  *(v100 + 160) = MEMORY[0x1E69E7CC0];
  *(v100 + 168) = 0;
  *(v100 + 176) = 0;
  *(v100 + 216) = 0;
  *(v100 + 16) = 0xD000000000000012;
  *(v100 + 24) = 0x80000001AFF2BB80;
  *(v100 + 32) = v98;
  v101 = MEMORY[0x1E69E7360];
  *(v100 + 40) = MEMORY[0x1E69E7360];
  *(v100 + 48) = 0;
  *(v100 + 56) = 1;
  *(v100 + 58) = 0;
  *(v100 + 184) = 0;
  *(v100 + 188) = 1;
  *(v100 + 192) = 0;
  *(v100 + 196) = 1;
  *(v100 + 200) = 0x1000100000000;
  *(v100 + 208) = 1;
  *(v100 + 96) = 0;
  *(v100 + 104) = 0;
  *(v100 + 64) = 0;
  *(v100 + 72) = 0;
  *(v100 + 144) = xmmword_1AFE22A20;
  *(v100 + 80) = v99;
  *(v100 + 88) = &off_1F2535378;
  *(v100 + 210) = 0;

  if (v135)
  {
    v101 = (*(v135 + 8))();
  }

  v102 = swift_conformsToProtocol2();
  if (v102 && v101)
  {
    v103 = v102;
    v104 = *(v102 + 8);
    swift_retain_n();
    v105 = v104(v101, v103);
    v12 = v132;
    *(v100 + 160) = v105;
  }

  else
  {
    swift_retain_n();
  }

  *(v100 + 64) = sub_1AF5A9998;
  *(v100 + 72) = v98;
  *(v100 + 216) = 0;
  v106 = &type metadata for ParticleAnimationMode;
  sub_1AF5A9240(0, &qword_1EB632F80, &type metadata for ParticleAnimationMode, type metadata accessor for EntityGetSet);
  *(v100 + 168) = 0;
  *(v100 + 176) = 0;
  v107 = swift_allocObject();
  v107[4] = sub_1AF5A036C;
  v107[5] = v96;
  v107[2] = sub_1AF5A03A8;
  v107[3] = v96;
  v107[6] = v96;
  v108 = swift_allocObject();
  *(v108 + 112) = 1;
  *(v108 + 128) = 0;
  *(v108 + 136) = 0;
  *(v108 + 120) = 0;
  *(v108 + 160) = MEMORY[0x1E69E7CC0];
  *(v108 + 168) = 0;
  *(v108 + 176) = 0;
  *(v108 + 216) = 0;
  strcpy((v108 + 16), "animationMode");
  *(v108 + 30) = -4864;
  *(v108 + 32) = v96;
  *(v108 + 40) = &type metadata for ParticleAnimationMode;
  *(v108 + 48) = 0;
  *(v108 + 56) = 1;
  *(v108 + 58) = 0;
  *(v108 + 184) = 0;
  *(v108 + 188) = 1;
  *(v108 + 192) = 0;
  *(v108 + 196) = 1;
  *(v108 + 200) = 0x1000100000000;
  *(v108 + 208) = 1;
  *(v108 + 64) = 0;
  *(v108 + 72) = 0;
  *(v108 + 96) = v97;
  *(v108 + 104) = 0;
  *(v108 + 144) = xmmword_1AFE22A20;
  *(v108 + 80) = v107;
  *(v108 + 88) = &off_1F2535378;
  *(v108 + 210) = 0;
  v109 = swift_conformsToProtocol2();

  if (v109)
  {
    v106 = (*(v109 + 8))();
  }

  v110 = swift_conformsToProtocol2();
  if (v110 && v106)
  {
    v111 = *(v110 + 8);
    v112 = v110;
    swift_retain_n();
    v113 = v111(v106, v112);
    *(v108 + 160) = v113;
  }

  else
  {
    v113 = swift_retain_n();
  }

  *(v108 + 64) = sub_1AF5A0404;
  *(v108 + 72) = v96;
  *(v108 + 168) = 0;
  *(v108 + 176) = 0;
  *(v108 + 216) = v100;
  v12[12] = v108;
  MEMORY[0x1EEE9AC00](v113);
  v114 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v114);
  v115 = swift_getKeyPath();
  v116 = swift_allocObject();
  v116[4] = sub_1AF5AA254;
  v116[5] = v114;
  v116[2] = sub_1AF5A9FB8;
  v116[3] = v114;
  v116[6] = v114;
  v117 = swift_allocObject();
  *(v117 + 112) = 1;
  *(v117 + 128) = 0;
  *(v117 + 136) = 0;
  *(v117 + 120) = 0;
  *(v117 + 160) = MEMORY[0x1E69E7CC0];
  *(v117 + 168) = 0;
  *(v117 + 176) = 0;
  *(v117 + 216) = 0;
  *(v117 + 16) = 0xD000000000000017;
  *(v117 + 24) = 0x80000001AFF24730;
  *(v117 + 32) = v114;
  *(v117 + 40) = v76;
  *(v117 + 48) = 0;
  *(v117 + 56) = 1;
  *(v117 + 58) = 0;
  *(v117 + 184) = 0;
  *(v117 + 188) = 1;
  *(v117 + 192) = 0;
  *(v117 + 196) = 1;
  *(v117 + 200) = 0x1000100000000;
  *(v117 + 208) = 1;
  *(v117 + 64) = 0;
  *(v117 + 72) = 0;
  *(v117 + 96) = v115;
  *(v117 + 104) = 0;
  *(v117 + 144) = xmmword_1AFE22A20;
  *(v117 + 80) = v116;
  *(v117 + 88) = &off_1F2535378;
  *(v117 + 210) = 0;

  if (v134)
  {
    v76 = (*(v134 + 8))();
  }

  v118 = swift_conformsToProtocol2();
  if (v118 && v76)
  {
    v119 = *(v118 + 8);
    v120 = v118;
    swift_retain_n();
    v121 = v119(v76, v120);
    *(v117 + 160) = v121;
  }

  else
  {
    v121 = swift_retain_n();
  }

  *(v117 + 64) = sub_1AF5A9994;
  *(v117 + 72) = v114;
  *(v117 + 216) = 0;
  *(v117 + 168) = 0;
  *(v117 + 176) = 0;
  v12[13] = v117;
  MEMORY[0x1EEE9AC00](v121);
  v122 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v122);
  v123 = swift_getKeyPath();
  v124 = swift_allocObject();
  v124[4] = sub_1AF5A954C;
  v124[5] = v122;
  v124[2] = sub_1AF5A9FC0;
  v124[3] = v122;
  v124[6] = v122;
  v125 = swift_allocObject();
  *(v125 + 112) = 1;
  *(v125 + 128) = 0;
  *(v125 + 136) = 0;
  *(v125 + 120) = 0;
  *(v125 + 160) = MEMORY[0x1E69E7CC0];
  *(v125 + 168) = 0;
  *(v125 + 176) = 0;
  *(v125 + 216) = 0;
  strcpy((v125 + 16), "softDistance");
  *(v125 + 29) = 0;
  *(v125 + 30) = -5120;
  *(v125 + 32) = v122;
  v126 = MEMORY[0x1E69E6448];
  *(v125 + 40) = MEMORY[0x1E69E6448];
  *(v125 + 48) = 0;
  *(v125 + 56) = 1;
  *(v125 + 58) = 0;
  *(v125 + 184) = 0;
  *(v125 + 188) = 0;
  *(v125 + 192) = 0;
  *(v125 + 196) = 1;
  *(v125 + 200) = 0x1000100000000;
  *(v125 + 208) = 1;
  *(v125 + 64) = 0;
  *(v125 + 72) = 0;
  *(v125 + 96) = v123;
  *(v125 + 104) = 0;
  *(v125 + 144) = xmmword_1AFE22A20;
  *(v125 + 80) = v124;
  *(v125 + 88) = &off_1F2535378;
  *(v125 + 210) = 0;

  if (v131)
  {
    v126 = (*(v131 + 8))();
  }

  v127 = swift_conformsToProtocol2();
  if (v127 && v126)
  {
    v128 = *(v127 + 8);
    v129 = v127;
    swift_retain_n();
    *(v125 + 160) = v128(v126, v129);
  }

  else
  {
    swift_retain_n();
  }

  *(v125 + 64) = sub_1AF5A999C;
  *(v125 + 72) = v122;
  *(v125 + 216) = 0;
  *(v125 + 168) = 0;
  *(v125 + 176) = 0;
  v12[14] = v125;
  return v12;
}

void *sub_1AF5068DC()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v132 = swift_allocObject();
  *(v132 + 16) = xmmword_1AFE55190;
  sub_1AF5A0C3C();
  KeyPath = swift_getKeyPath();
  v1 = swift_getKeyPath();
  v2 = &type metadata for Entity;
  sub_1AF5A9240(0, &unk_1EB6338D8, &type metadata for Entity, type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF5A09B4;
  v3[5] = KeyPath;
  v3[2] = sub_1AF5A0C90;
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
  *(v4 + 176) = 0;
  *(v4 + 216) = 0;
  *(v4 + 16) = 0xD000000000000010;
  *(v4 + 24) = 0x80000001AFF22E00;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = &type metadata for Entity;
  *(v4 + 48) = 0;
  *(v4 + 56) = 1;
  *(v4 + 58) = 0;
  *(v4 + 184) = 0;
  *(v4 + 188) = 1;
  *(v4 + 192) = 0;
  *(v4 + 196) = 1;
  *(v4 + 200) = 0x1000100000000;
  *(v4 + 208) = 1;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  *(v4 + 96) = v1;
  *(v4 + 104) = 0;
  *(v4 + 144) = xmmword_1AFE551E0;
  *(v4 + 80) = v3;
  *(v4 + 88) = &off_1F2535378;
  *(v4 + 210) = 0;
  v5 = swift_conformsToProtocol2();
  v6 = v5;
  if (v5)
  {
    v7 = (*(v5 + 8))(&type metadata for Entity, v5);
  }

  else
  {
    v7 = &type metadata for Entity;
  }

  v8 = swift_conformsToProtocol2();
  if (v8 && v7)
  {
    v9 = *(v8 + 8);
    v10 = v8;
    swift_retain_n();
    v11 = v9(v7, v10);
    *(v4 + 160) = v11;
  }

  else
  {
    v11 = swift_retain_n();
  }

  *(v4 + 64) = sub_1AF5A0CEC;
  *(v4 + 72) = KeyPath;
  *(v4 + 216) = 0;
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;
  v12 = v132;
  *(v132 + 32) = v4;
  MEMORY[0x1EEE9AC00](v11);
  v13 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v13);
  v14 = swift_getKeyPath();
  v15 = swift_allocObject();
  v15[4] = sub_1AF5AA3E4;
  v15[5] = v13;
  v15[2] = sub_1AF5A9FE0;
  v15[3] = v13;
  v15[6] = v13;
  v16 = swift_allocObject();
  *(v16 + 112) = 1;
  *(v16 + 128) = 0;
  *(v16 + 136) = 0;
  *(v16 + 120) = 0;
  *(v16 + 160) = MEMORY[0x1E69E7CC0];
  *(v16 + 168) = 0;
  *(v16 + 176) = 0;
  *(v16 + 216) = 0;
  *(v16 + 16) = 0x65727574786574;
  *(v16 + 24) = 0xE700000000000000;
  *(v16 + 32) = v13;
  *(v16 + 40) = &type metadata for Entity;
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
  *(v16 + 96) = v14;
  *(v16 + 104) = 0;
  *(v16 + 144) = xmmword_1AFE551B0;
  *(v16 + 80) = v15;
  *(v16 + 88) = &off_1F2535378;
  *(v16 + 210) = 0;

  if (v6)
  {
    v2 = (*(v6 + 8))();
  }

  v17 = swift_conformsToProtocol2();
  if (v17 && v2)
  {
    v18 = *(v17 + 8);
    v19 = v17;
    swift_retain_n();
    v20 = v18(v2, v19);
    *(v16 + 160) = v20;
  }

  else
  {
    v20 = swift_retain_n();
  }

  *(v16 + 64) = sub_1AF5A99AC;
  *(v16 + 72) = v13;
  *(v16 + 216) = 0;
  *(v16 + 168) = 0;
  *(v16 + 176) = 0;
  *(v132 + 40) = v16;
  MEMORY[0x1EEE9AC00](v20);
  v21 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v21);
  v133 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v133);
  v22 = swift_getKeyPath();
  v23 = MEMORY[0x1E69E7360];
  sub_1AF5A9240(0, &unk_1EB634340, MEMORY[0x1E69E7360], type metadata accessor for EntityGetSet);
  v24 = swift_allocObject();
  v24[4] = sub_1AF5AA3E4;
  v24[5] = v22;
  v24[2] = sub_1AF5A9FDC;
  v24[3] = v22;
  v24[6] = v22;
  v25 = swift_allocObject();
  *(v25 + 112) = 1;
  *(v25 + 128) = 0;
  *(v25 + 136) = 0;
  *(v25 + 120) = 0;
  *(v25 + 160) = MEMORY[0x1E69E7CC0];
  *(v25 + 168) = 0;
  *(v25 + 176) = 0;
  *(v25 + 216) = 0;
  strcpy((v25 + 16), "blendModeIndex");
  *(v25 + 31) = -18;
  *(v25 + 32) = v22;
  *(v25 + 40) = v23;
  *(v25 + 48) = 0;
  *(v25 + 56) = 1;
  *(v25 + 58) = 0;
  *(v25 + 184) = 0;
  *(v25 + 188) = 1;
  *(v25 + 192) = 0;
  *(v25 + 196) = 1;
  *(v25 + 200) = 0x1000100000000;
  *(v25 + 208) = 1;
  *(v25 + 96) = 0;
  *(v25 + 104) = 0;
  *(v25 + 64) = 0;
  *(v25 + 72) = 0;
  *(v25 + 144) = xmmword_1AFE22A20;
  *(v25 + 80) = v24;
  *(v25 + 88) = &off_1F2535378;
  *(v25 + 210) = 0;
  v26 = swift_conformsToProtocol2();

  if (v26)
  {
    v27 = (*(v26 + 8))();
  }

  else
  {
    v27 = v23;
  }

  v28 = swift_conformsToProtocol2();
  v135 = v26;
  if (v28 && v27)
  {
    v29 = *(v28 + 8);
    v30 = v28;
    swift_retain_n();
    *(v25 + 160) = v29(v27, v30);
  }

  else
  {
    swift_retain_n();
  }

  *(v25 + 64) = sub_1AF5A99B0;
  *(v25 + 72) = v22;
  *(v25 + 216) = 0;
  v31 = &type metadata for BlendMode;
  sub_1AF5A9240(0, &unk_1EB633878, &type metadata for BlendMode, type metadata accessor for EntityGetSet);
  *(v25 + 168) = 0;
  *(v25 + 176) = 0;
  v32 = swift_allocObject();
  v32[4] = sub_1AF5A0D2C;
  v32[5] = v21;
  v32[2] = sub_1AF5A0D68;
  v32[3] = v21;
  v32[6] = v21;
  v33 = swift_allocObject();
  *(v33 + 112) = 1;
  *(v33 + 128) = 0;
  *(v33 + 136) = 0;
  *(v33 + 120) = 0;
  *(v33 + 160) = MEMORY[0x1E69E7CC0];
  *(v33 + 168) = 0;
  *(v33 + 176) = 0;
  *(v33 + 216) = 0;
  *(v33 + 16) = 0x646F4D646E656C62;
  *(v33 + 24) = 0xE900000000000065;
  *(v33 + 32) = v21;
  *(v33 + 40) = &type metadata for BlendMode;
  *(v33 + 48) = 0;
  *(v33 + 56) = 1;
  *(v33 + 58) = 0;
  *(v33 + 184) = 0;
  *(v33 + 188) = 1;
  *(v33 + 192) = 0;
  *(v33 + 196) = 1;
  *(v33 + 200) = 0x1000100000000;
  *(v33 + 208) = 1;
  *(v33 + 64) = 0;
  *(v33 + 72) = 0;
  *(v33 + 96) = v133;
  *(v33 + 104) = 0;
  *(v33 + 144) = xmmword_1AFE22A20;
  *(v33 + 80) = v32;
  *(v33 + 88) = &off_1F2535378;
  *(v33 + 210) = 0;
  v34 = swift_conformsToProtocol2();

  if (v34)
  {
    v31 = (*(v34 + 8))();
  }

  v35 = swift_conformsToProtocol2();
  if (v35 && v31)
  {
    v36 = *(v35 + 8);
    v37 = v35;
    swift_retain_n();
    v38 = v36(v31, v37);
    *(v33 + 160) = v38;
  }

  else
  {
    v38 = swift_retain_n();
  }

  *(v33 + 64) = sub_1AF5A0DA8;
  *(v33 + 72) = v21;
  *(v33 + 168) = 0;
  *(v33 + 176) = 0;
  *(v33 + 216) = v25;
  *(v132 + 48) = v33;
  MEMORY[0x1EEE9AC00](v38);
  v39 = swift_getKeyPath();
  v40 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v41 = swift_allocObject();
  v41[4] = sub_1AF5A0DE8;
  v41[5] = v39;
  v41[2] = sub_1AF5A0E1C;
  v41[3] = v39;
  v41[6] = v39;
  v42 = swift_allocObject();
  *(v42 + 112) = 1;
  *(v42 + 128) = 0;
  *(v42 + 136) = 0;
  *(v42 + 120) = 0;
  *(v42 + 160) = MEMORY[0x1E69E7CC0];
  *(v42 + 168) = 0;
  *(v42 + 176) = 0;
  *(v42 + 216) = 0;
  *(v42 + 16) = 0x685466666F747563;
  *(v42 + 24) = 0xEF646C6F68736572;
  *(v42 + 32) = v39;
  *(v42 + 40) = v40;
  *(v42 + 48) = 0;
  *(v42 + 56) = 1;
  *(v42 + 58) = 0;
  *(v42 + 184) = -1082130432;
  *(v42 + 188) = 0;
  *(v42 + 192) = 1065353216;
  *(v42 + 196) = 0;
  *(v42 + 200) = 0x1000100000000;
  *(v42 + 208) = 1;
  *(v42 + 96) = 0;
  *(v42 + 104) = 0;
  *(v42 + 64) = 0;
  *(v42 + 72) = 0;
  *(v42 + 144) = xmmword_1AFE22A20;
  *(v42 + 80) = v41;
  *(v42 + 88) = &off_1F2535378;
  *(v42 + 210) = 0;
  v43 = swift_conformsToProtocol2();

  if (v43)
  {
    v44 = (*(v43 + 8))();
  }

  else
  {
    v44 = v40;
  }

  v45 = swift_conformsToProtocol2();
  v131 = v43;
  if (v45 && v44)
  {
    v46 = *(v45 + 8);
    v47 = v45;
    swift_retain_n();
    v48 = v46(v44, v47);
    *(v42 + 160) = v48;
  }

  else
  {
    v48 = swift_retain_n();
  }

  *(v42 + 64) = sub_1AF5A0E78;
  *(v42 + 72) = v39;
  *(v42 + 216) = 0;
  *(v42 + 168) = 0;
  *(v42 + 176) = 0;
  *(v132 + 56) = v42;
  MEMORY[0x1EEE9AC00](v48);
  v49 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v49);
  v50 = swift_getKeyPath();
  v51 = MEMORY[0x1E69E6370];
  sub_1AF5A9240(0, &qword_1ED722B80, MEMORY[0x1E69E6370], type metadata accessor for EntityGetSet);
  v52 = swift_allocObject();
  v52[4] = sub_1AF5A0EB8;
  v52[5] = v49;
  v52[2] = sub_1AF5A0EE4;
  v52[3] = v49;
  v52[6] = v49;
  v53 = swift_allocObject();
  *(v53 + 112) = 1;
  *(v53 + 128) = 0;
  *(v53 + 136) = 0;
  *(v53 + 120) = 0;
  *(v53 + 160) = MEMORY[0x1E69E7CC0];
  *(v53 + 168) = 0;
  *(v53 + 176) = 0;
  *(v53 + 216) = 0;
  *(v53 + 16) = 0x676E69746867696CLL;
  *(v53 + 24) = 0xE800000000000000;
  *(v53 + 32) = v49;
  *(v53 + 40) = v51;
  *(v53 + 48) = 0;
  *(v53 + 56) = 1;
  *(v53 + 58) = 0;
  *(v53 + 184) = 0;
  *(v53 + 188) = 1;
  *(v53 + 192) = 0;
  *(v53 + 196) = 1;
  *(v53 + 200) = 0x1000100000000;
  *(v53 + 208) = 1;
  *(v53 + 64) = 0;
  *(v53 + 72) = 0;
  *(v53 + 96) = v50;
  *(v53 + 104) = 0;
  *(v53 + 144) = xmmword_1AFE22A20;
  *(v53 + 80) = v52;
  *(v53 + 88) = &off_1F2535378;
  *(v53 + 210) = 0;
  v54 = swift_conformsToProtocol2();

  if (v54)
  {
    v55 = (*(v54 + 8))();
  }

  else
  {
    v55 = v51;
  }

  v134 = v54;
  v56 = swift_conformsToProtocol2();
  if (v56 && v55)
  {
    v57 = *(v56 + 8);
    v58 = v56;
    swift_retain_n();
    v59 = v57(v55, v58);
    *(v53 + 160) = v59;
  }

  else
  {
    v59 = swift_retain_n();
  }

  *(v53 + 64) = sub_1AF5A0F40;
  *(v53 + 72) = v49;
  *(v53 + 216) = 0;
  *(v53 + 168) = 0;
  *(v53 + 176) = 0;
  *(v132 + 64) = v53;
  MEMORY[0x1EEE9AC00](v59);
  v60 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v60);
  v61 = swift_getKeyPath();
  v62 = swift_allocObject();
  v62[4] = sub_1AF5AA264;
  v62[5] = v60;
  v62[2] = sub_1AF5A9FE4;
  v62[3] = v60;
  v62[6] = v60;
  v63 = swift_allocObject();
  *(v63 + 112) = 1;
  *(v63 + 128) = 0;
  *(v63 + 136) = 0;
  *(v63 + 120) = 0;
  *(v63 + 160) = MEMORY[0x1E69E7CC0];
  *(v63 + 168) = 0;
  *(v63 + 176) = 0;
  *(v63 + 216) = 0;
  *(v63 + 16) = 0x72616C7563657073;
  *(v63 + 24) = 0xE800000000000000;
  *(v63 + 32) = v60;
  *(v63 + 40) = v51;
  *(v63 + 48) = 0;
  *(v63 + 56) = 1;
  *(v63 + 58) = 0;
  *(v63 + 184) = 0;
  *(v63 + 188) = 1;
  *(v63 + 192) = 0;
  *(v63 + 196) = 1;
  *(v63 + 200) = 0x1000100000000;
  *(v63 + 208) = 1;
  *(v63 + 64) = 0;
  *(v63 + 72) = 0;
  *(v63 + 96) = v61;
  *(v63 + 104) = 0;
  *(v63 + 144) = xmmword_1AFE22A20;
  *(v63 + 80) = v62;
  *(v63 + 88) = &off_1F2535378;
  *(v63 + 210) = 0;

  if (v54)
  {
    v64 = (*(v54 + 8))();
  }

  else
  {
    v64 = v51;
  }

  v65 = swift_conformsToProtocol2();
  if (v65 && v64)
  {
    v66 = *(v65 + 8);
    v67 = v65;
    swift_retain_n();
    v68 = v66(v64, v67);
    *(v63 + 160) = v68;
  }

  else
  {
    v68 = swift_retain_n();
  }

  v69 = MEMORY[0x1E69E7360];
  *(v63 + 64) = sub_1AF5A99B4;
  *(v63 + 72) = v60;
  *(v63 + 216) = 0;
  *(v63 + 168) = 0;
  *(v63 + 176) = 0;
  *(v132 + 72) = v63;
  MEMORY[0x1EEE9AC00](v68);
  v70 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v70);
  v71 = swift_getKeyPath();
  v72 = swift_allocObject();
  v72[4] = sub_1AF5AA3E4;
  v72[5] = v71;
  v72[2] = sub_1AF5A9FDC;
  v72[3] = v71;
  v72[6] = v71;
  v73 = swift_allocObject();
  *(v73 + 112) = 1;
  *(v73 + 128) = 0;
  *(v73 + 136) = 0;
  *(v73 + 120) = 0;
  *(v73 + 160) = MEMORY[0x1E69E7CC0];
  *(v73 + 168) = 0;
  *(v73 + 176) = 0;
  *(v73 + 216) = 0;
  strcpy((v73 + 16), "sortModeIndex");
  *(v73 + 30) = -4864;
  *(v73 + 32) = v71;
  *(v73 + 40) = v69;
  *(v73 + 48) = 0;
  *(v73 + 56) = 1;
  *(v73 + 58) = 0;
  *(v73 + 184) = 0;
  *(v73 + 188) = 1;
  *(v73 + 192) = 0;
  *(v73 + 196) = 1;
  *(v73 + 200) = 0x1000100000000;
  *(v73 + 208) = 1;
  *(v73 + 96) = 0;
  *(v73 + 104) = 0;
  *(v73 + 64) = 0;
  *(v73 + 72) = 0;
  *(v73 + 144) = xmmword_1AFE22A20;
  *(v73 + 80) = v72;
  *(v73 + 88) = &off_1F2535378;
  *(v73 + 210) = 0;

  if (v135)
  {
    v74 = (*(v135 + 8))();
  }

  else
  {
    v74 = v69;
  }

  v75 = swift_conformsToProtocol2();
  v76 = MEMORY[0x1E69E6370];
  if (v75 && v74)
  {
    v77 = *(v75 + 8);
    v78 = v75;
    swift_retain_n();
    *(v73 + 160) = v77(v74, v78);
  }

  else
  {
    swift_retain_n();
  }

  *(v73 + 64) = sub_1AF5A99B0;
  *(v73 + 72) = v71;
  *(v73 + 216) = 0;
  v79 = &type metadata for ParticleSortMode;
  sub_1AF5A9240(0, &qword_1EB632F98, &type metadata for ParticleSortMode, type metadata accessor for EntityGetSet);
  *(v73 + 168) = 0;
  *(v73 + 176) = 0;
  v80 = swift_allocObject();
  v80[4] = sub_1AF5A0F80;
  v80[5] = v70;
  v80[2] = sub_1AF5A0FAC;
  v80[3] = v70;
  v80[6] = v70;
  v81 = swift_allocObject();
  *(v81 + 112) = 1;
  *(v81 + 128) = 0;
  *(v81 + 136) = 0;
  *(v81 + 120) = 0;
  *(v81 + 160) = MEMORY[0x1E69E7CC0];
  *(v81 + 168) = 0;
  *(v81 + 176) = 0;
  *(v81 + 216) = 0;
  *(v81 + 16) = 0x65646F4D74726F73;
  *(v81 + 24) = 0xE800000000000000;
  *(v81 + 32) = v70;
  *(v81 + 40) = &type metadata for ParticleSortMode;
  *(v81 + 48) = 0;
  *(v81 + 56) = 1;
  *(v81 + 58) = 0;
  *(v81 + 184) = 0;
  *(v81 + 188) = 1;
  *(v81 + 192) = 0;
  *(v81 + 196) = 1;
  *(v81 + 200) = 0x1000100000000;
  *(v81 + 208) = 1;
  *(v81 + 96) = 0;
  *(v81 + 104) = 0;
  *(v81 + 64) = 0;
  *(v81 + 72) = 0;
  *(v81 + 144) = xmmword_1AFE22A20;
  *(v81 + 80) = v80;
  *(v81 + 88) = &off_1F2535378;
  *(v81 + 210) = 0;
  v82 = swift_conformsToProtocol2();

  if (v82)
  {
    v79 = (*(v82 + 8))();
  }

  v83 = swift_conformsToProtocol2();
  if (v83 && v79)
  {
    v84 = *(v83 + 8);
    v85 = v83;
    swift_retain_n();
    v86 = v84(v79, v85);
    *(v81 + 160) = v86;
  }

  else
  {
    v86 = swift_retain_n();
  }

  *(v81 + 64) = sub_1AF5A1008;
  *(v81 + 72) = v70;
  *(v81 + 168) = 0;
  *(v81 + 176) = 0;
  *(v81 + 216) = v73;
  *(v132 + 80) = v81;
  MEMORY[0x1EEE9AC00](v86);
  v87 = swift_getKeyPath();
  v88 = MEMORY[0x1E69E7668];
  sub_1AF5A9240(0, &qword_1ED725C68, MEMORY[0x1E69E7668], type metadata accessor for EntityGetSet);
  v89 = swift_allocObject();
  v89[4] = sub_1AF5A0DE8;
  v89[5] = v87;
  v89[2] = sub_1AF5A1048;
  v89[3] = v87;
  v89[6] = v87;
  v90 = swift_allocObject();
  *(v90 + 112) = 1;
  *(v90 + 128) = 0;
  *(v90 + 136) = 0;
  *(v90 + 120) = 0;
  *(v90 + 168) = 0;
  *(v90 + 160) = MEMORY[0x1E69E7CC0];
  *(v90 + 176) = 0;
  *(v90 + 216) = 0;
  *(v90 + 16) = 0x647265764F78616DLL;
  *(v90 + 24) = 0xEB00000000776172;
  *(v90 + 32) = v87;
  *(v90 + 40) = v88;
  *(v90 + 48) = 0;
  *(v90 + 56) = 1;
  *(v90 + 58) = 4;
  *(v90 + 184) = 1065353216;
  *(v90 + 188) = 0;
  *(v90 + 192) = 1132462080;
  *(v90 + 196) = 0;
  *(v90 + 200) = 0x1000100000000;
  *(v90 + 208) = 1;
  *(v90 + 96) = 0;
  *(v90 + 104) = 0;
  *(v90 + 64) = 0;
  *(v90 + 72) = 0;
  *(v90 + 144) = xmmword_1AFE22A20;
  *(v90 + 80) = v89;
  *(v90 + 88) = &off_1F2535378;
  *(v90 + 210) = 4;
  v91 = swift_conformsToProtocol2();

  if (v91)
  {
    v88 = (*(v91 + 8))();
  }

  v92 = swift_conformsToProtocol2();
  if (v92 && v88)
  {
    v93 = *(v92 + 8);
    v94 = v92;
    swift_retain_n();
    v95 = v93(v88, v94);
    *(v90 + 160) = v95;
  }

  else
  {
    v95 = swift_retain_n();
  }

  *(v90 + 64) = sub_1AF5A10B8;
  *(v90 + 72) = v87;
  *(v90 + 216) = 0;
  *(v90 + 168) = 0;
  *(v90 + 176) = 0;
  *(v132 + 88) = v90;
  MEMORY[0x1EEE9AC00](v95);
  v96 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v96);
  v97 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v97);
  v98 = swift_getKeyPath();
  v99 = swift_allocObject();
  v99[4] = sub_1AF5AA3E4;
  v99[5] = v98;
  v99[2] = sub_1AF5A9FDC;
  v99[3] = v98;
  v99[6] = v98;
  v100 = swift_allocObject();
  *(v100 + 112) = 1;
  *(v100 + 128) = 0;
  *(v100 + 136) = 0;
  *(v100 + 120) = 0;
  *(v100 + 160) = MEMORY[0x1E69E7CC0];
  *(v100 + 168) = 0;
  *(v100 + 176) = 0;
  *(v100 + 216) = 0;
  *(v100 + 16) = 0xD000000000000012;
  *(v100 + 24) = 0x80000001AFF2BB80;
  *(v100 + 32) = v98;
  v101 = MEMORY[0x1E69E7360];
  *(v100 + 40) = MEMORY[0x1E69E7360];
  *(v100 + 48) = 0;
  *(v100 + 56) = 1;
  *(v100 + 58) = 0;
  *(v100 + 184) = 0;
  *(v100 + 188) = 1;
  *(v100 + 192) = 0;
  *(v100 + 196) = 1;
  *(v100 + 200) = 0x1000100000000;
  *(v100 + 208) = 1;
  *(v100 + 96) = 0;
  *(v100 + 104) = 0;
  *(v100 + 64) = 0;
  *(v100 + 72) = 0;
  *(v100 + 144) = xmmword_1AFE22A20;
  *(v100 + 80) = v99;
  *(v100 + 88) = &off_1F2535378;
  *(v100 + 210) = 0;

  if (v135)
  {
    v101 = (*(v135 + 8))();
  }

  v102 = swift_conformsToProtocol2();
  if (v102 && v101)
  {
    v103 = v102;
    v104 = *(v102 + 8);
    swift_retain_n();
    v105 = v104(v101, v103);
    v12 = v132;
    *(v100 + 160) = v105;
  }

  else
  {
    swift_retain_n();
  }

  *(v100 + 64) = sub_1AF5A99B0;
  *(v100 + 72) = v98;
  *(v100 + 216) = 0;
  v106 = &type metadata for ParticleAnimationMode;
  sub_1AF5A9240(0, &qword_1EB632F80, &type metadata for ParticleAnimationMode, type metadata accessor for EntityGetSet);
  *(v100 + 168) = 0;
  *(v100 + 176) = 0;
  v107 = swift_allocObject();
  v107[4] = sub_1AF5A10F8;
  v107[5] = v96;
  v107[2] = sub_1AF5A1124;
  v107[3] = v96;
  v107[6] = v96;
  v108 = swift_allocObject();
  *(v108 + 112) = 1;
  *(v108 + 128) = 0;
  *(v108 + 136) = 0;
  *(v108 + 120) = 0;
  *(v108 + 160) = MEMORY[0x1E69E7CC0];
  *(v108 + 168) = 0;
  *(v108 + 176) = 0;
  *(v108 + 216) = 0;
  strcpy((v108 + 16), "animationMode");
  *(v108 + 30) = -4864;
  *(v108 + 32) = v96;
  *(v108 + 40) = &type metadata for ParticleAnimationMode;
  *(v108 + 48) = 0;
  *(v108 + 56) = 1;
  *(v108 + 58) = 0;
  *(v108 + 184) = 0;
  *(v108 + 188) = 1;
  *(v108 + 192) = 0;
  *(v108 + 196) = 1;
  *(v108 + 200) = 0x1000100000000;
  *(v108 + 208) = 1;
  *(v108 + 64) = 0;
  *(v108 + 72) = 0;
  *(v108 + 96) = v97;
  *(v108 + 104) = 0;
  *(v108 + 144) = xmmword_1AFE22A20;
  *(v108 + 80) = v107;
  *(v108 + 88) = &off_1F2535378;
  *(v108 + 210) = 0;
  v109 = swift_conformsToProtocol2();

  if (v109)
  {
    v106 = (*(v109 + 8))();
  }

  v110 = swift_conformsToProtocol2();
  if (v110 && v106)
  {
    v111 = *(v110 + 8);
    v112 = v110;
    swift_retain_n();
    v113 = v111(v106, v112);
    *(v108 + 160) = v113;
  }

  else
  {
    v113 = swift_retain_n();
  }

  *(v108 + 64) = sub_1AF5A1180;
  *(v108 + 72) = v96;
  *(v108 + 168) = 0;
  *(v108 + 176) = 0;
  *(v108 + 216) = v100;
  v12[12] = v108;
  MEMORY[0x1EEE9AC00](v113);
  v114 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v114);
  v115 = swift_getKeyPath();
  v116 = swift_allocObject();
  v116[4] = sub_1AF5AA264;
  v116[5] = v114;
  v116[2] = sub_1AF5A9FE4;
  v116[3] = v114;
  v116[6] = v114;
  v117 = swift_allocObject();
  *(v117 + 112) = 1;
  *(v117 + 128) = 0;
  *(v117 + 136) = 0;
  *(v117 + 120) = 0;
  *(v117 + 160) = MEMORY[0x1E69E7CC0];
  *(v117 + 168) = 0;
  *(v117 + 176) = 0;
  *(v117 + 216) = 0;
  *(v117 + 16) = 0xD000000000000017;
  *(v117 + 24) = 0x80000001AFF24730;
  *(v117 + 32) = v114;
  *(v117 + 40) = v76;
  *(v117 + 48) = 0;
  *(v117 + 56) = 1;
  *(v117 + 58) = 0;
  *(v117 + 184) = 0;
  *(v117 + 188) = 1;
  *(v117 + 192) = 0;
  *(v117 + 196) = 1;
  *(v117 + 200) = 0x1000100000000;
  *(v117 + 208) = 1;
  *(v117 + 64) = 0;
  *(v117 + 72) = 0;
  *(v117 + 96) = v115;
  *(v117 + 104) = 0;
  *(v117 + 144) = xmmword_1AFE22A20;
  *(v117 + 80) = v116;
  *(v117 + 88) = &off_1F2535378;
  *(v117 + 210) = 0;

  if (v134)
  {
    v76 = (*(v134 + 8))();
  }

  v118 = swift_conformsToProtocol2();
  if (v118 && v76)
  {
    v119 = *(v118 + 8);
    v120 = v118;
    swift_retain_n();
    v121 = v119(v76, v120);
    *(v117 + 160) = v121;
  }

  else
  {
    v121 = swift_retain_n();
  }

  *(v117 + 64) = sub_1AF5A99B4;
  *(v117 + 72) = v114;
  *(v117 + 216) = 0;
  *(v117 + 168) = 0;
  *(v117 + 176) = 0;
  v12[13] = v117;
  MEMORY[0x1EEE9AC00](v121);
  v122 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v122);
  v123 = swift_getKeyPath();
  v124 = swift_allocObject();
  v124[4] = sub_1AF5A955C;
  v124[5] = v122;
  v124[2] = sub_1AF5A9FE8;
  v124[3] = v122;
  v124[6] = v122;
  v125 = swift_allocObject();
  *(v125 + 112) = 1;
  *(v125 + 128) = 0;
  *(v125 + 136) = 0;
  *(v125 + 120) = 0;
  *(v125 + 160) = MEMORY[0x1E69E7CC0];
  *(v125 + 168) = 0;
  *(v125 + 176) = 0;
  *(v125 + 216) = 0;
  strcpy((v125 + 16), "softDistance");
  *(v125 + 29) = 0;
  *(v125 + 30) = -5120;
  *(v125 + 32) = v122;
  v126 = MEMORY[0x1E69E6448];
  *(v125 + 40) = MEMORY[0x1E69E6448];
  *(v125 + 48) = 0;
  *(v125 + 56) = 1;
  *(v125 + 58) = 0;
  *(v125 + 184) = 0;
  *(v125 + 188) = 0;
  *(v125 + 192) = 0;
  *(v125 + 196) = 1;
  *(v125 + 200) = 0x1000100000000;
  *(v125 + 208) = 1;
  *(v125 + 64) = 0;
  *(v125 + 72) = 0;
  *(v125 + 96) = v123;
  *(v125 + 104) = 0;
  *(v125 + 144) = xmmword_1AFE22A20;
  *(v125 + 80) = v124;
  *(v125 + 88) = &off_1F2535378;
  *(v125 + 210) = 0;

  if (v131)
  {
    v126 = (*(v131 + 8))();
  }

  v127 = swift_conformsToProtocol2();
  if (v127 && v126)
  {
    v128 = *(v127 + 8);
    v129 = v127;
    swift_retain_n();
    *(v125 + 160) = v128(v126, v129);
  }

  else
  {
    swift_retain_n();
  }

  *(v125 + 64) = sub_1AF5A99B8;
  *(v125 + 72) = v122;
  *(v125 + 216) = 0;
  *(v125 + 168) = 0;
  *(v125 + 176) = 0;
  v12[14] = v125;
  return v12;
}

uint64_t sub_1AF5087D8(uint64_t a1, uint64_t a2)
{
  result = (*(*(a2 + 8) + 32))(a1);
  if ((result & 0x100000000) != 0)
  {
    return result;
  }

  else
  {
    return 3;
  }
}

uint64_t sub_1AF508814(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(a3 + 112))(v7, a2);
  if (a1 == 3)
  {
    if (*(v4 + 4))
    {
      *v4 = 1056964608;
      *(v4 + 4) = 0;
    }
  }

  else
  {
    if (a1 == 2)
    {
      *v4 = 2;
    }

    else
    {
      *v4 = a1 == 1;
    }

    *(v4 + 4) = 1;
  }

  return v5(v7, 0);
}

uint64_t sub_1AF5088F4(uint64_t result)
{
  v2 = result;
  if (result >= 7u)
  {
    v2 = 7;
  }

  *(v1 + 20) = v2;
  return result;
}

uint64_t sub_1AF50890C(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(a3 + 144))(v8, a2);
  v6 = a1;
  if (a1 >= 7u)
  {
    v6 = 7;
  }

  *v4 = v6;
  return v5(v8, 0);
}

uint64_t sub_1AF5089B0(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(a3 + 192))(v8, a2);
  v6 = a1;
  if (a1 >= 3u)
  {
    v6 = 3;
  }

  *v4 = v6;
  return v5(v8, 0);
}

uint64_t sub_1AF508A28()
{
  v18 = sub_1AF502AE4();
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE550E0;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF59CE8C;
  v3[5] = KeyPath;
  v3[2] = sub_1AF59CEC0;
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
  *(v4 + 16) = 0x616353746E696F70;
  *(v4 + 24) = 0xEA0000000000656CLL;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = v2;
  *(v4 + 48) = 36;
  *(v4 + 56) = 0;
  *(v4 + 58) = 0;
  *(v4 + 184) = 0;
  *(v4 + 188) = 0;
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

  *(v4 + 64) = sub_1AF59CF1C;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0, 0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(inited + 32) = v4;
  v8 = swift_getKeyPath();
  sub_1AF57F2F4(0);
  v9 = swift_allocObject();
  v9[4] = sub_1AF59CF5C;
  v9[5] = v8;
  v9[2] = sub_1AF59CF90;
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
  sub_1AF589E74(0, &qword_1ED72F958, MEMORY[0x1E69E6448], MEMORY[0x1E69E6468], MEMORY[0x1E69E66A8]);
  v12 = v11;
  *(v10 + 168) = 0;
  *(v10 + 176) = 0;
  *(v10 + 16) = 0x69536E6565726373;
  *(v10 + 24) = 0xEF65676E6152657ALL;
  *(v10 + 32) = v8;
  *(v10 + 40) = v11;
  *(v10 + 48) = 40;
  *(v10 + 56) = 0;
  *(v10 + 58) = 0;
  *(v10 + 184) = 0;
  *(v10 + 188) = 0;
  *(v10 + 192) = 0;
  *(v10 + 196) = 1;
  *(v10 + 200) = 0x10100003DCCCCCDLL;
  *(v10 + 208) = 0;
  *(v10 + 64) = 0;
  *(v10 + 72) = 0;
  *(v10 + 96) = 0;
  *(v10 + 144) = xmmword_1AFE22A20;
  *(v10 + 80) = v9;
  *(v10 + 88) = &off_1F2535378;
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
  *(v10 + 64) = sub_1AF59CFEC;
  *(v10 + 72) = v8;
  sub_1AF0FB8EC(v15, v16);
  *(v10 + 168) = 0;
  *(v10 + 176) = 0;

  *(v10 + 216) = 0;

  *(inited + 40) = v10;
  result = sub_1AF48F810(inited, sub_1AF56E184);
  qword_1EB6C3058 = v18;
  return result;
}

uint64_t sub_1AF508FC0()
{
  v0 = sub_1AF4FECEC();
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE4C3E0;
  KeyPath = swift_getKeyPath();
  v3 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v4 = swift_allocObject();
  v4[4] = sub_1AF59D954;
  v4[5] = KeyPath;
  v4[2] = sub_1AF59D988;
  v4[3] = KeyPath;
  v4[6] = KeyPath;
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
  *(v5 + 16) = 0x73656E6B63696874;
  *(v5 + 24) = 0xE900000000000073;
  *(v5 + 32) = KeyPath;
  *(v5 + 40) = v3;
  *(v5 + 48) = 28;
  *(v5 + 56) = 0;
  *(v5 + 58) = 0;
  *(v5 + 184) = 0;
  *(v5 + 188) = 0;
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

  *(v5 + 64) = sub_1AF59D9E4;
  *(v5 + 72) = KeyPath;
  sub_1AF0FB8EC(0, 0);
  *(v5 + 168) = 0;
  *(v5 + 176) = 0;

  *(v5 + 216) = 0;
  *(inited + 32) = v5;
  result = sub_1AF48F810(inited, sub_1AF56E184);
  qword_1EB6C3060 = v0;
  return result;
}

uint64_t sub_1AF509340()
{
  v173 = sub_1AF500BE8();
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE55110;
  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  v3 = swift_getKeyPath();
  v4 = MEMORY[0x1E69E7360];
  sub_1AF5A9240(0, &unk_1EB634340, MEMORY[0x1E69E7360], type metadata accessor for EntityGetSet);
  v5 = swift_allocObject();
  v5[4] = sub_1AF59E2A8;
  v5[5] = v3;
  v5[2] = sub_1AF59E2DC;
  v5[3] = v3;
  v5[6] = v3;
  type metadata accessor for PropertyDescription();
  v6 = swift_allocObject();
  *(v6 + 112) = 1;
  *(v6 + 136) = 0;
  v7 = MEMORY[0x1E69E7CC0];
  *(v6 + 120) = 0;
  *(v6 + 128) = 0;
  *(v6 + 160) = v7;
  *(v6 + 168) = 0;
  *(v6 + 216) = 0;
  *(v6 + 176) = 0;
  strcpy((v6 + 16), "cullModeIndex");
  *(v6 + 30) = -4864;
  *(v6 + 32) = v3;
  *(v6 + 40) = v4;
  *(v6 + 48) = 0;
  *(v6 + 56) = 1;
  *(v6 + 58) = 0;
  *(v6 + 184) = 0;
  *(v6 + 188) = 1;
  *(v6 + 192) = 0;
  *(v6 + 196) = 1;
  *(v6 + 200) = 0x1000100000000;
  *(v6 + 208) = 1;
  *(v6 + 96) = 0;
  *(v6 + 104) = 0;
  *(v6 + 64) = 0;
  *(v6 + 72) = 0;
  *(v6 + 144) = xmmword_1AFE22A20;
  *(v6 + 80) = v5;
  *(v6 + 88) = &off_1F2535378;
  *(v6 + 210) = 0;
  v8 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v8)
  {
    v9 = (*(v8 + 8))();
  }

  else
  {
    v9 = v4;
  }

  v175 = v8;
  v10 = swift_conformsToProtocol2();
  if (v10 && v9)
  {
    *(v6 + 160) = (*(v10 + 8))(v9, v10);
  }

  v11 = *(v6 + 64);
  v12 = *(v6 + 72);
  *(v6 + 64) = sub_1AF59E338;
  *(v6 + 72) = v3;
  sub_1AF0FB8EC(v11, v12);
  *(v6 + 168) = 0;
  *(v6 + 176) = 0;

  *(v6 + 216) = 0;

  sub_1AF51B13C(0, &unk_1EB632F50, type metadata accessor for MTLCullMode, type metadata accessor for EntityGetSet);
  v13 = swift_allocObject();
  v13[4] = sub_1AF59E2A8;
  v13[5] = KeyPath;
  v13[2] = sub_1AF59E378;
  v13[3] = KeyPath;
  v13[6] = KeyPath;
  v14 = swift_allocObject();
  *(v14 + 104) = 0;
  *(v14 + 112) = 1;
  *(v14 + 128) = 0;
  *(v14 + 136) = 0;
  *(v14 + 120) = 0;
  *(v14 + 160) = MEMORY[0x1E69E7CC0];
  *(v14 + 210) = 0;
  *(v14 + 216) = 0;
  type metadata accessor for MTLCullMode(0);
  v16 = v15;
  *(v14 + 168) = 0;
  *(v14 + 176) = 0;
  *(v14 + 16) = 0x65646F4D6C6C7563;
  *(v14 + 24) = 0xE800000000000000;
  *(v14 + 32) = KeyPath;
  *(v14 + 40) = v15;
  *(v14 + 48) = 16;
  *(v14 + 56) = 0;
  *(v14 + 58) = 0;
  *(v14 + 184) = 0;
  *(v14 + 188) = 1;
  *(v14 + 192) = 0;
  *(v14 + 196) = 1;
  *(v14 + 200) = 0x1000100000000;
  *(v14 + 208) = 1;
  *(v14 + 64) = 0;
  *(v14 + 72) = 0;
  *(v14 + 96) = v2;
  *(v14 + 144) = xmmword_1AFE22A20;
  *(v14 + 80) = v13;
  *(v14 + 88) = &off_1F2535378;
  *(v14 + 210) = 0;
  v17 = swift_conformsToProtocol2();
  swift_retain_n();

  v18 = MEMORY[0x1E69E7360];
  if (v17 && v16)
  {
    v16 = (*(v17 + 8))(v16, v17);
  }

  v19 = swift_conformsToProtocol2();
  if (v19 && v16)
  {
    v20 = (*(v19 + 8))(v16, v19);

    *(v14 + 160) = v20;
  }

  else
  {
  }

  v21 = *(v14 + 64);
  v22 = *(v14 + 72);
  *(v14 + 64) = sub_1AF59E3D4;
  *(v14 + 72) = KeyPath;
  sub_1AF0FB8EC(v21, v22);
  *(v14 + 168) = 0;
  *(v14 + 176) = 0;

  *(v14 + 216) = v6;

  *(inited + 32) = v14;
  v23 = swift_getKeyPath();
  v24 = swift_getKeyPath();
  v25 = swift_allocObject();
  v25[4] = sub_1AF5AA3D8;
  v25[5] = v24;
  v25[2] = sub_1AF5A9F64;
  v25[3] = v24;
  v25[6] = v24;
  v26 = swift_allocObject();
  *(v26 + 112) = 1;
  *(v26 + 128) = 0;
  *(v26 + 136) = 0;
  *(v26 + 120) = 0;
  *(v26 + 160) = MEMORY[0x1E69E7CC0];
  *(v26 + 168) = 0;
  *(v26 + 210) = 0;
  *(v26 + 216) = 0;
  *(v26 + 176) = 0;
  *(v26 + 16) = 0x646E496570616873;
  *(v26 + 24) = 0xEA00000000007865;
  *(v26 + 32) = v24;
  *(v26 + 40) = v18;
  *(v26 + 48) = 0;
  *(v26 + 56) = 1;
  *(v26 + 58) = 0;
  *(v26 + 184) = 0;
  *(v26 + 188) = 1;
  *(v26 + 192) = 0;
  *(v26 + 196) = 1;
  *(v26 + 200) = 0x1000100000000;
  *(v26 + 208) = 1;
  *(v26 + 64) = 0;
  *(v26 + 72) = 0;
  *(v26 + 96) = 0;
  *(v26 + 104) = 0;
  *(v26 + 144) = xmmword_1AFE22A20;
  *(v26 + 80) = v25;
  *(v26 + 88) = &off_1F2535378;
  *(v26 + 210) = 0;
  swift_retain_n();
  if (v8)
  {
    v27 = (*(v8 + 8))();
  }

  else
  {
    v27 = v18;
  }

  v28 = swift_conformsToProtocol2();
  if (v28 && v27)
  {
    *(v26 + 160) = (*(v28 + 8))(v27, v28);
  }

  v29 = *(v26 + 64);
  v30 = *(v26 + 72);
  *(v26 + 64) = sub_1AF5A9960;
  *(v26 + 72) = v24;
  sub_1AF0FB8EC(v29, v30);
  *(v26 + 168) = 0;
  *(v26 + 176) = 0;

  *(v26 + 216) = 0;

  v31 = &type metadata for ParticleQuadRenderer.Shape;
  sub_1AF5A9240(0, &qword_1EB632F88, &type metadata for ParticleQuadRenderer.Shape, type metadata accessor for EntityGetSet);
  v32 = swift_allocObject();
  v32[4] = sub_1AF59E420;
  v32[5] = v23;
  v32[2] = sub_1AF59E44C;
  v32[3] = v23;
  v32[6] = v23;
  v33 = swift_allocObject();
  *(v33 + 112) = 1;
  *(v33 + 128) = 0;
  *(v33 + 136) = 0;
  *(v33 + 120) = 0;
  *(v33 + 160) = MEMORY[0x1E69E7CC0];
  *(v33 + 168) = 0;
  *(v33 + 210) = 0;
  *(v33 + 216) = 0;
  *(v33 + 176) = 0;
  *(v33 + 16) = 0x6570616873;
  *(v33 + 24) = 0xE500000000000000;
  *(v33 + 32) = v23;
  *(v33 + 40) = &type metadata for ParticleQuadRenderer.Shape;
  *(v33 + 48) = 96;
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

  v36 = *(v33 + 64);
  v37 = *(v33 + 72);
  *(v33 + 64) = sub_1AF59E4A8;
  *(v33 + 72) = v23;
  sub_1AF0FB8EC(v36, v37);
  *(v33 + 168) = 0;
  *(v33 + 176) = 0;

  *(v33 + 216) = v26;

  *(inited + 40) = v33;
  v38 = swift_getKeyPath();
  v39 = swift_getKeyPath();
  v40 = swift_allocObject();
  v40[4] = sub_1AF5AA3D8;
  v40[5] = v39;
  v40[2] = sub_1AF5A9F64;
  v40[3] = v39;
  v40[6] = v39;
  v41 = swift_allocObject();
  *(v41 + 112) = 1;
  *(v41 + 128) = 0;
  *(v41 + 136) = 0;
  *(v41 + 120) = 0;
  *(v41 + 160) = MEMORY[0x1E69E7CC0];
  *(v41 + 168) = 0;
  *(v41 + 210) = 0;
  *(v41 + 216) = 0;
  *(v41 + 176) = 0;
  *(v41 + 16) = 0xD000000000000010;
  *(v41 + 24) = 0x80000001AFF2A2B0;
  *(v41 + 32) = v39;
  *(v41 + 40) = v18;
  *(v41 + 48) = 0;
  *(v41 + 56) = 1;
  *(v41 + 58) = 0;
  *(v41 + 184) = 0;
  *(v41 + 188) = 1;
  *(v41 + 192) = 0;
  *(v41 + 196) = 1;
  *(v41 + 200) = 0x1000100000000;
  *(v41 + 208) = 1;
  *(v41 + 64) = 0;
  *(v41 + 72) = 0;
  *(v41 + 96) = 0;
  *(v41 + 104) = 0;
  *(v41 + 144) = xmmword_1AFE22A20;
  *(v41 + 80) = v40;
  *(v41 + 88) = &off_1F2535378;
  *(v41 + 210) = 0;
  swift_retain_n();
  if (v8)
  {
    v42 = (*(v8 + 8))();
  }

  else
  {
    v42 = v18;
  }

  v43 = swift_conformsToProtocol2();
  if (v43 && v42)
  {
    *(v41 + 160) = (*(v43 + 8))(v42, v43);
  }

  v44 = *(v41 + 64);
  v45 = *(v41 + 72);
  *(v41 + 64) = sub_1AF5A9960;
  *(v41 + 72) = v39;
  sub_1AF0FB8EC(v44, v45);
  *(v41 + 168) = 0;
  *(v41 + 176) = 0;

  *(v41 + 216) = 0;

  v46 = &type metadata for ParticleOrientationMode;
  sub_1AF5A9240(0, &unk_1EB632F70, &type metadata for ParticleOrientationMode, type metadata accessor for EntityGetSet);
  v47 = swift_allocObject();
  v47[4] = sub_1AF5AA23C;
  v47[5] = v38;
  v47[2] = sub_1AF59E4E8;
  v47[3] = v38;
  v47[6] = v38;
  v48 = swift_allocObject();
  *(v48 + 112) = 1;
  *(v48 + 128) = 0;
  *(v48 + 136) = 0;
  *(v48 + 120) = 0;
  *(v48 + 160) = MEMORY[0x1E69E7CC0];
  *(v48 + 168) = 0;
  *(v48 + 210) = 0;
  *(v48 + 216) = 0;
  *(v48 + 176) = 0;
  *(v48 + 16) = 0x7461746E6569726FLL;
  *(v48 + 24) = 0xEB000000006E6F69;
  *(v48 + 32) = v38;
  *(v48 + 40) = &type metadata for ParticleOrientationMode;
  *(v48 + 48) = 76;
  *(v48 + 56) = 0;
  *(v48 + 58) = 0;
  *(v48 + 184) = 0;
  *(v48 + 188) = 1;
  *(v48 + 192) = 0;
  *(v48 + 196) = 1;
  *(v48 + 200) = 0x1000100000000;
  *(v48 + 208) = 1;
  *(v48 + 64) = 0;
  *(v48 + 72) = 0;
  *(v48 + 96) = 0;
  *(v48 + 104) = 0;
  *(v48 + 144) = xmmword_1AFE22A20;
  *(v48 + 80) = v47;
  *(v48 + 88) = &off_1F2535378;
  *(v48 + 210) = 0;
  v49 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v49)
  {
    v46 = (*(v49 + 8))();
  }

  v50 = swift_conformsToProtocol2();
  if (v50 && v46)
  {
    *(v48 + 160) = (*(v50 + 8))(v46, v50);
  }

  v51 = *(v48 + 64);
  v52 = *(v48 + 72);
  *(v48 + 64) = sub_1AF59E544;
  *(v48 + 72) = v38;
  sub_1AF0FB8EC(v51, v52);
  *(v48 + 168) = 0;
  *(v48 + 176) = 0;

  *(v48 + 216) = v41;

  *(inited + 48) = v48;
  v53 = swift_getKeyPath();
  v54 = swift_getKeyPath();
  sub_1AF57AAE8(0);
  v55 = swift_allocObject();
  v55[4] = sub_1AF59E584;
  v55[5] = v53;
  v55[2] = sub_1AF59E59C;
  v55[3] = v53;
  v55[6] = v53;
  v56 = swift_allocObject();
  *(v56 + 104) = 0;
  *(v56 + 112) = 1;
  *(v56 + 128) = 0;
  *(v56 + 136) = 0;
  *(v56 + 120) = 0;
  *(v56 + 160) = MEMORY[0x1E69E7CC0];
  *(v56 + 210) = 0;
  *(v56 + 216) = 0;
  v57 = MEMORY[0x1E69E6448];
  sub_1AF583D60(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
  v59 = v58;
  *(v56 + 168) = 0;
  *(v56 + 176) = 0;
  *(v56 + 16) = 0x736978417075;
  *(v56 + 24) = 0xE600000000000000;
  *(v56 + 32) = v53;
  *(v56 + 40) = v58;
  *(v56 + 48) = 80;
  *(v56 + 56) = 0;
  *(v56 + 58) = 0;
  *(v56 + 184) = 0;
  *(v56 + 188) = 1;
  *(v56 + 192) = 0;
  *(v56 + 196) = 1;
  *(v56 + 200) = 0x1000100000000;
  *(v56 + 208) = 1;
  *(v56 + 64) = 0;
  *(v56 + 72) = 0;
  *(v56 + 96) = v54;
  *(v56 + 144) = xmmword_1AFE22A20;
  *(v56 + 80) = v55;
  *(v56 + 88) = &off_1F2535378;
  *(v56 + 210) = 0;
  v60 = swift_conformsToProtocol2();
  swift_retain_n();

  if (v60 && v59)
  {
    v59 = (*(v60 + 8))(v59, v60);
  }

  v61 = swift_conformsToProtocol2();
  if (v61 && v59)
  {
    v62 = (*(v61 + 8))(v59, v61);

    *(v56 + 160) = v62;
  }

  else
  {
  }

  v63 = *(v56 + 64);
  v64 = *(v56 + 72);
  *(v56 + 64) = sub_1AF59E600;
  *(v56 + 72) = v53;
  sub_1AF0FB8EC(v63, v64);
  *(v56 + 168) = 0;
  *(v56 + 176) = 0;

  *(v56 + 216) = 0;

  *(inited + 56) = v56;
  v65 = swift_getKeyPath();
  v66 = MEMORY[0x1E69E6370];
  sub_1AF5A9240(0, &qword_1ED722B80, MEMORY[0x1E69E6370], type metadata accessor for EntityGetSet);
  v67 = swift_allocObject();
  v67[4] = sub_1AF59E644;
  v67[5] = v65;
  v67[2] = sub_1AF59E670;
  v67[3] = v65;
  v67[6] = v65;
  v68 = swift_allocObject();
  *(v68 + 112) = 1;
  *(v68 + 128) = 0;
  *(v68 + 136) = 0;
  *(v68 + 120) = 0;
  *(v68 + 160) = MEMORY[0x1E69E7CC0];
  *(v68 + 168) = 0;
  *(v68 + 210) = 0;
  *(v68 + 216) = 0;
  *(v68 + 176) = 0;
  *(v68 + 16) = 0xD00000000000001DLL;
  *(v68 + 24) = 0x80000001AFF2BBA0;
  *(v68 + 32) = v65;
  *(v68 + 40) = v66;
  *(v68 + 48) = 105;
  *(v68 + 56) = 0;
  *(v68 + 58) = 0;
  *(v68 + 184) = 0;
  *(v68 + 188) = 1;
  *(v68 + 192) = 0;
  *(v68 + 196) = 1;
  *(v68 + 200) = 0x1000100000000;
  *(v68 + 208) = 1;
  *(v68 + 64) = 0;
  *(v68 + 72) = 0;
  *(v68 + 96) = 0;
  *(v68 + 104) = 0;
  *(v68 + 144) = xmmword_1AFE22A20;
  *(v68 + 80) = v67;
  *(v68 + 88) = &off_1F2535378;
  *(v68 + 210) = 0;
  v69 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v69)
  {
    v70 = (*(v69 + 8))();
  }

  else
  {
    v70 = v66;
  }

  v71 = swift_conformsToProtocol2();
  if (v71 && v70)
  {
    *(v68 + 160) = (*(v71 + 8))(v70, v71);
  }

  v72 = *(v68 + 64);
  v73 = *(v68 + 72);
  *(v68 + 64) = sub_1AF59E6CC;
  *(v68 + 72) = v65;
  sub_1AF0FB8EC(v72, v73);
  *(v68 + 168) = 0;
  *(v68 + 176) = 0;

  *(v68 + 216) = 0;

  *(inited + 64) = v68;
  v74 = swift_getKeyPath();
  v75 = swift_allocObject();
  v75[4] = sub_1AF5AA238;
  v75[5] = v74;
  v75[2] = sub_1AF5A9F68;
  v75[3] = v74;
  v75[6] = v74;
  v76 = swift_allocObject();
  *(v76 + 112) = 1;
  *(v76 + 128) = 0;
  *(v76 + 136) = 0;
  *(v76 + 120) = 0;
  *(v76 + 160) = MEMORY[0x1E69E7CC0];
  *(v76 + 168) = 0;
  *(v76 + 210) = 0;
  *(v76 + 216) = 0;
  *(v76 + 176) = 0;
  *(v76 + 16) = 0xD000000000000013;
  *(v76 + 24) = 0x80000001AFF24830;
  *(v76 + 32) = v74;
  v77 = MEMORY[0x1E69E6370];
  *(v76 + 40) = MEMORY[0x1E69E6370];
  *(v76 + 48) = 104;
  *(v76 + 56) = 0;
  *(v76 + 58) = 0;
  *(v76 + 184) = 0;
  *(v76 + 188) = 1;
  *(v76 + 192) = 0;
  *(v76 + 196) = 1;
  *(v76 + 200) = 0x1000100000000;
  *(v76 + 208) = 1;
  *(v76 + 64) = 0;
  *(v76 + 72) = 0;
  *(v76 + 96) = 0;
  *(v76 + 104) = 0;
  *(v76 + 144) = xmmword_1AFE22A20;
  *(v76 + 80) = v75;
  *(v76 + 88) = &off_1F2535378;
  *(v76 + 210) = 0;
  swift_retain_n();
  if (v69)
  {
    v78 = (*(v69 + 8))();
  }

  else
  {
    v78 = v77;
  }

  v79 = swift_conformsToProtocol2();
  if (v79 && v78)
  {
    *(v76 + 160) = (*(v79 + 8))(v78, v79);
  }

  v80 = *(v76 + 64);
  v81 = *(v76 + 72);
  *(v76 + 64) = sub_1AF5A9964;
  *(v76 + 72) = v74;
  sub_1AF0FB8EC(v80, v81);
  *(v76 + 168) = 0;
  *(v76 + 176) = 0;

  *(v76 + 216) = 0;

  *(inited + 72) = v76;
  v82 = swift_getKeyPath();
  sub_1AF5A9240(0, &unk_1ED722B70, v57, type metadata accessor for EntityGetSet);
  v83 = swift_allocObject();
  v83[4] = sub_1AF59E70C;
  v83[5] = v82;
  v83[2] = sub_1AF59E740;
  v83[3] = v82;
  v83[6] = v82;
  v84 = swift_allocObject();
  *(v84 + 112) = 1;
  *(v84 + 128) = 0;
  *(v84 + 136) = 0;
  *(v84 + 120) = 0;
  *(v84 + 160) = MEMORY[0x1E69E7CC0];
  *(v84 + 168) = 0;
  *(v84 + 210) = 0;
  *(v84 + 216) = 0;
  *(v84 + 176) = 0;
  strcpy((v84 + 16), "stretchFactor");
  *(v84 + 30) = -4864;
  *(v84 + 32) = v82;
  *(v84 + 40) = v57;
  *(v84 + 48) = 100;
  *(v84 + 56) = 0;
  *(v84 + 58) = 0;
  *(v84 + 184) = 0;
  *(v84 + 188) = 0;
  *(v84 + 192) = 0;
  *(v84 + 196) = 1;
  *(v84 + 200) = 0x1000100000000;
  *(v84 + 208) = 1;
  *(v84 + 64) = 0;
  *(v84 + 72) = 0;
  *(v84 + 96) = 0;
  *(v84 + 104) = 0;
  *(v84 + 144) = xmmword_1AFE22A20;
  *(v84 + 80) = v83;
  *(v84 + 88) = &off_1F2535378;
  *(v84 + 210) = 0;
  v85 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v85)
  {
    v86 = (*(v85 + 8))();
  }

  else
  {
    v86 = v57;
  }

  v87 = swift_conformsToProtocol2();
  if (v87 && v86)
  {
    *(v84 + 160) = (*(v87 + 8))(v86, v87);
  }

  v88 = *(v84 + 64);
  v89 = *(v84 + 72);
  *(v84 + 64) = sub_1AF59E79C;
  *(v84 + 72) = v82;
  sub_1AF0FB8EC(v88, v89);
  *(v84 + 168) = 0;
  *(v84 + 176) = 0;

  *(v84 + 216) = 0;

  *(inited + 80) = v84;
  v90 = swift_getKeyPath();
  v91 = swift_allocObject();
  v91[4] = sub_1AF5A953C;
  v91[5] = v90;
  v91[2] = sub_1AF5A9F6C;
  v91[3] = v90;
  v91[6] = v90;
  v92 = swift_allocObject();
  *(v92 + 112) = 1;
  *(v92 + 128) = 0;
  *(v92 + 136) = 0;
  *(v92 + 120) = 0;
  *(v92 + 160) = MEMORY[0x1E69E7CC0];
  *(v92 + 168) = 0;
  *(v92 + 210) = 0;
  *(v92 + 216) = 0;
  *(v92 + 176) = 0;
  *(v92 + 16) = 0x7275746176727563;
  *(v92 + 24) = 0xE900000000000065;
  *(v92 + 32) = v90;
  *(v92 + 40) = v57;
  *(v92 + 48) = 108;
  *(v92 + 56) = 0;
  *(v92 + 58) = 0;
  *(v92 + 184) = 0;
  *(v92 + 188) = 0;
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
  if (v85)
  {
    v93 = (*(v85 + 8))();
  }

  else
  {
    v93 = v57;
  }

  v94 = swift_conformsToProtocol2();
  if (v94 && v93)
  {
    *(v92 + 160) = (*(v94 + 8))(v93, v94);
  }

  v95 = *(v92 + 64);
  v96 = *(v92 + 72);
  *(v92 + 64) = sub_1AF5A9968;
  *(v92 + 72) = v90;
  sub_1AF0FB8EC(v95, v96);
  *(v92 + 168) = 0;
  *(v92 + 176) = 0;

  *(v92 + 216) = 0;

  *(inited + 88) = v92;
  v97 = swift_getKeyPath();
  v98 = swift_getKeyPath();
  v99 = swift_allocObject();
  v99[4] = sub_1AF5A953C;
  v99[5] = v97;
  v99[2] = sub_1AF5A9F6C;
  v99[3] = v97;
  v99[6] = v97;
  v100 = swift_allocObject();
  *(v100 + 112) = 1;
  *(v100 + 128) = 0;
  *(v100 + 136) = 0;
  *(v100 + 120) = 0;
  *(v100 + 168) = 0;
  *(v100 + 160) = MEMORY[0x1E69E7CC0];
  *(v100 + 210) = 0;
  *(v100 + 216) = 0;
  *(v100 + 176) = 0;
  *(v100 + 16) = 0x73656E6B63696874;
  *(v100 + 24) = 0xE900000000000073;
  *(v100 + 32) = v97;
  *(v100 + 40) = v57;
  *(v100 + 48) = 116;
  *(v100 + 56) = 0;
  *(v100 + 58) = 0;
  *(v100 + 184) = 0;
  *(v100 + 188) = 0;
  *(v100 + 192) = 1065353216;
  *(v100 + 196) = 0;
  *(v100 + 200) = 0x1000100000000;
  *(v100 + 208) = 1;
  *(v100 + 64) = 0;
  *(v100 + 72) = 0;
  *(v100 + 96) = v98;
  *(v100 + 104) = 0;
  *(v100 + 144) = xmmword_1AFE22A20;
  *(v100 + 80) = v99;
  *(v100 + 88) = &off_1F2535378;
  *(v100 + 210) = 0;
  swift_retain_n();

  if (v85)
  {
    v57 = (*(v85 + 8))();
  }

  v101 = swift_conformsToProtocol2();
  if (v101 && v57)
  {
    v102 = (*(v101 + 8))(v57, v101);

    *(v100 + 160) = v102;
  }

  else
  {
  }

  v103 = *(v100 + 64);
  v104 = *(v100 + 72);
  *(v100 + 64) = sub_1AF5A9968;
  *(v100 + 72) = v97;
  sub_1AF0FB8EC(v103, v104);
  *(v100 + 168) = 0;
  *(v100 + 176) = 0;

  *(v100 + 216) = 0;

  *(inited + 96) = v100;
  v105 = swift_getKeyPath();
  sub_1AF57C8C8(0);
  v106 = swift_allocObject();
  v106[4] = sub_1AF59E2A8;
  v106[5] = v105;
  v106[2] = sub_1AF59E7DC;
  v106[3] = v105;
  v106[6] = v105;
  v107 = swift_allocObject();
  *(v107 + 104) = 0;
  *(v107 + 112) = 1;
  *(v107 + 128) = 0;
  *(v107 + 136) = 0;
  *(v107 + 120) = 0;
  *(v107 + 160) = MEMORY[0x1E69E7CC0];
  *(v107 + 210) = 0;
  *(v107 + 216) = 0;
  sub_1AF583D60(0, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
  v109 = v108;
  *(v107 + 168) = 0;
  *(v107 + 176) = 0;
  strcpy((v107 + 16), "textureScale");
  *(v107 + 29) = 0;
  *(v107 + 30) = -5120;
  *(v107 + 32) = v105;
  *(v107 + 40) = v108;
  *(v107 + 48) = 48;
  *(v107 + 56) = 0;
  *(v107 + 58) = 0;
  *(v107 + 184) = 0;
  *(v107 + 188) = 1;
  *(v107 + 192) = 0;
  *(v107 + 196) = 1;
  *(v107 + 200) = 0x1000100000000;
  *(v107 + 208) = 1;
  *(v107 + 64) = 0;
  *(v107 + 72) = 0;
  *(v107 + 96) = 0;
  *(v107 + 144) = xmmword_1AFE22A20;
  *(v107 + 80) = v106;
  *(v107 + 88) = &off_1F2535378;
  *(v107 + 210) = 0;
  v110 = swift_conformsToProtocol2();
  if (v110)
  {
    v111 = v109;
  }

  else
  {
    v111 = 0;
  }

  swift_retain_n();
  v112 = v109;
  if (v111)
  {
    v112 = (*(v110 + 8))(v111, v110);
  }

  v113 = swift_conformsToProtocol2();
  if (v113 && v112)
  {
    *(v107 + 160) = (*(v113 + 8))(v112, v113);
  }

  v114 = *(v107 + 64);
  v115 = *(v107 + 72);
  *(v107 + 64) = sub_1AF59E838;
  *(v107 + 72) = v105;
  sub_1AF0FB8EC(v114, v115);
  *(v107 + 168) = 0;
  *(v107 + 176) = 0;

  *(v107 + 216) = 0;

  v174 = inited;
  *(inited + 104) = v107;
  v116 = swift_getKeyPath();
  v117 = swift_allocObject();
  v117[4] = sub_1AF5AA3D8;
  v117[5] = v116;
  v117[2] = sub_1AF5A9F70;
  v117[3] = v116;
  v117[6] = v116;
  v118 = swift_allocObject();
  *(v118 + 112) = 1;
  *(v118 + 128) = 0;
  *(v118 + 136) = 0;
  *(v118 + 120) = 0;
  *(v118 + 160) = MEMORY[0x1E69E7CC0];
  *(v118 + 168) = 0;
  *(v118 + 210) = 0;
  *(v118 + 216) = 0;
  *(v118 + 176) = 0;
  *(v118 + 16) = 0x4265727574786574;
  *(v118 + 24) = 0xEB00000000736169;
  *(v118 + 32) = v116;
  *(v118 + 40) = v109;
  *(v118 + 48) = 56;
  *(v118 + 56) = 0;
  *(v118 + 58) = 0;
  *(v118 + 184) = 0;
  *(v118 + 188) = 1;
  *(v118 + 192) = 0;
  *(v118 + 196) = 1;
  *(v118 + 200) = 0x1000100000000;
  *(v118 + 208) = 1;
  *(v118 + 64) = 0;
  *(v118 + 72) = 0;
  *(v118 + 96) = 0;
  *(v118 + 104) = 0;
  *(v118 + 144) = xmmword_1AFE22A20;
  *(v118 + 80) = v117;
  *(v118 + 88) = &off_1F2535378;
  *(v118 + 210) = 0;
  swift_retain_n();
  if (v111)
  {
    v109 = (*(v110 + 8))(v111, v110);
  }

  v119 = swift_conformsToProtocol2();
  if (v119 && v109)
  {
    *(v118 + 160) = (*(v119 + 8))(v109, v119);
  }

  v120 = *(v118 + 64);
  v121 = *(v118 + 72);
  *(v118 + 64) = sub_1AF5A996C;
  *(v118 + 72) = v116;
  sub_1AF0FB8EC(v120, v121);
  *(v118 + 168) = 0;
  *(v118 + 176) = 0;

  *(v118 + 216) = 0;

  *(inited + 112) = v118;
  v122 = swift_getKeyPath();
  v123 = swift_getKeyPath();
  v124 = swift_allocObject();
  v124[4] = sub_1AF5AA238;
  v124[5] = v122;
  v124[2] = sub_1AF5A9F68;
  v124[3] = v122;
  v124[6] = v122;
  v125 = swift_allocObject();
  *(v125 + 112) = 1;
  *(v125 + 128) = 0;
  *(v125 + 136) = 0;
  *(v125 + 120) = 0;
  *(v125 + 160) = MEMORY[0x1E69E7CC0];
  *(v125 + 168) = 0;
  *(v125 + 216) = 0;
  *(v125 + 176) = 0;
  *(v125 + 16) = 0xD000000000000018;
  *(v125 + 24) = 0x80000001AFF24780;
  *(v125 + 32) = v122;
  v126 = MEMORY[0x1E69E6370];
  *(v125 + 40) = MEMORY[0x1E69E6370];
  *(v125 + 48) = 112;
  *(v125 + 56) = 0;
  *(v125 + 58) = 0;
  *(v125 + 184) = 0;
  *(v125 + 188) = 1;
  *(v125 + 192) = 0;
  *(v125 + 196) = 1;
  *(v125 + 200) = 0x1000100000000;
  *(v125 + 208) = 1;
  *(v125 + 64) = 0;
  *(v125 + 72) = 0;
  *(v125 + 96) = v123;
  *(v125 + 104) = 0;
  *(v125 + 144) = xmmword_1AFE22A20;
  *(v125 + 80) = v124;
  *(v125 + 88) = &off_1F2535378;
  *(v125 + 210) = 0;
  swift_retain_n();

  if (v69)
  {
    v127 = (*(v69 + 8))();
  }

  else
  {
    v127 = v126;
  }

  v128 = swift_conformsToProtocol2();
  if (v128 && v127)
  {
    v129 = (*(v128 + 8))(v127, v128);

    *(v125 + 160) = v129;
  }

  else
  {
  }

  *(v125 + 64) = sub_1AF5A9964;
  *(v125 + 72) = v122;
  sub_1AF0FB8EC(0, 0);
  *(v125 + 168) = 0;
  *(v125 + 176) = 0;

  *(v125 + 216) = 0;
  *(inited + 120) = v125;
  v130 = swift_getKeyPath();
  v131 = swift_getKeyPath();
  v132 = &type metadata for Entity;
  sub_1AF5A9240(0, &unk_1EB6338D8, &type metadata for Entity, type metadata accessor for EntityGetSet);
  v133 = swift_allocObject();
  v133[4] = sub_1AF59E2A8;
  v133[5] = v130;
  v133[2] = sub_1AF59E87C;
  v133[3] = v130;
  v133[6] = v130;
  v134 = swift_allocObject();
  *(v134 + 112) = 1;
  *(v134 + 128) = 0;
  *(v134 + 136) = 0;
  *(v134 + 120) = 0;
  *(v134 + 160) = MEMORY[0x1E69E7CC0];
  *(v134 + 168) = 0;
  *(v134 + 176) = 0;
  *(v134 + 216) = 0;
  *(v134 + 16) = 0xD000000000000014;
  *(v134 + 24) = 0x80000001AFF2BBC0;
  *(v134 + 32) = v130;
  *(v134 + 40) = &type metadata for Entity;
  *(v134 + 48) = 120;
  *(v134 + 56) = 0;
  *(v134 + 58) = 0;
  *(v134 + 184) = 0;
  *(v134 + 188) = 1;
  *(v134 + 192) = 0;
  *(v134 + 196) = 1;
  *(v134 + 200) = 0x1000100000000;
  *(v134 + 208) = 1;
  *(v134 + 64) = 0;
  *(v134 + 72) = 0;
  *(v134 + 96) = v131;
  *(v134 + 104) = 0;
  *(v134 + 144) = xmmword_1AFE551B0;
  *(v134 + 80) = v133;
  *(v134 + 88) = &off_1F2535378;
  *(v134 + 210) = 0;
  v135 = swift_conformsToProtocol2();
  swift_retain_n();

  if (v135)
  {
    v136 = (*(v135 + 8))();
  }

  else
  {
    v136 = &type metadata for Entity;
  }

  v137 = swift_conformsToProtocol2();
  if (v137 && v136)
  {
    v138 = (*(v137 + 8))(v136, v137);

    *(v134 + 160) = v138;
  }

  else
  {
  }

  *(v134 + 64) = sub_1AF59E8D8;
  *(v134 + 72) = v130;
  sub_1AF0FB8EC(0, 0);
  *(v134 + 168) = 0;
  *(v134 + 176) = 0;

  *(v134 + 216) = 0;
  *(inited + 128) = v134;
  v139 = swift_getKeyPath();
  v140 = swift_getKeyPath();
  v141 = swift_allocObject();
  v141[4] = sub_1AF5AA3D8;
  v141[5] = v139;
  v141[2] = sub_1AF5A9F74;
  v141[3] = v139;
  v141[6] = v139;
  v142 = swift_allocObject();
  *(v142 + 112) = 1;
  *(v142 + 128) = 0;
  *(v142 + 136) = 0;
  *(v142 + 120) = 0;
  *(v142 + 160) = MEMORY[0x1E69E7CC0];
  *(v142 + 168) = 0;
  *(v142 + 176) = 0;
  *(v142 + 216) = 0;
  *(v142 + 16) = 0xD000000000000014;
  *(v142 + 24) = 0x80000001AFF2BBE0;
  *(v142 + 32) = v139;
  *(v142 + 40) = &type metadata for Entity;
  *(v142 + 48) = 128;
  *(v142 + 56) = 0;
  *(v142 + 58) = 0;
  *(v142 + 184) = 0;
  *(v142 + 188) = 1;
  *(v142 + 192) = 0;
  *(v142 + 196) = 1;
  *(v142 + 200) = 0x1000100000000;
  *(v142 + 208) = 1;
  *(v142 + 64) = 0;
  *(v142 + 72) = 0;
  *(v142 + 96) = v140;
  *(v142 + 104) = 0;
  *(v142 + 144) = xmmword_1AFE551B0;
  *(v142 + 80) = v141;
  *(v142 + 88) = &off_1F2535378;
  *(v142 + 210) = 0;
  swift_retain_n();

  if (v135)
  {
    v132 = (*(v135 + 8))();
  }

  v143 = MEMORY[0x1E69E6370];
  v144 = swift_conformsToProtocol2();
  if (v144 && v132)
  {
    v145 = (*(v144 + 8))(v132, v144);

    *(v142 + 160) = v145;
  }

  else
  {
  }

  *(v142 + 64) = sub_1AF5A9970;
  *(v142 + 72) = v139;
  sub_1AF0FB8EC(0, 0);
  *(v142 + 168) = 0;
  *(v142 + 176) = 0;

  *(v142 + 216) = 0;
  v174[17] = v142;
  v146 = swift_getKeyPath();
  v147 = swift_getKeyPath();
  v148 = swift_allocObject();
  v148[4] = sub_1AF5AA238;
  v148[5] = v146;
  v148[2] = sub_1AF5A9F68;
  v148[3] = v146;
  v148[6] = v146;
  v149 = swift_allocObject();
  *(v149 + 112) = 1;
  *(v149 + 128) = 0;
  *(v149 + 136) = 0;
  *(v149 + 120) = 0;
  *(v149 + 160) = MEMORY[0x1E69E7CC0];
  *(v149 + 168) = 0;
  *(v149 + 176) = 0;
  *(v149 + 216) = 0;
  *(v149 + 16) = 0xD000000000000015;
  *(v149 + 24) = 0x80000001AFF247E0;
  *(v149 + 32) = v146;
  *(v149 + 40) = v143;
  *(v149 + 48) = 136;
  *(v149 + 56) = 0;
  *(v149 + 58) = 0;
  *(v149 + 184) = 0;
  *(v149 + 188) = 1;
  *(v149 + 192) = 0;
  *(v149 + 196) = 1;
  *(v149 + 200) = 0x1000100000000;
  *(v149 + 208) = 1;
  *(v149 + 64) = 0;
  *(v149 + 72) = 0;
  *(v149 + 96) = v147;
  *(v149 + 104) = 0;
  *(v149 + 144) = xmmword_1AFE22A20;
  *(v149 + 80) = v148;
  *(v149 + 88) = &off_1F2535378;
  *(v149 + 210) = 0;
  swift_retain_n();

  if (v69)
  {
    v150 = (*(v69 + 8))();
  }

  else
  {
    v150 = v143;
  }

  v151 = swift_conformsToProtocol2();
  if (v151 && v150)
  {
    v152 = (*(v151 + 8))(v150, v151);

    *(v149 + 160) = v152;
  }

  else
  {
  }

  *(v149 + 64) = sub_1AF5A9964;
  *(v149 + 72) = v146;
  sub_1AF0FB8EC(0, 0);
  *(v149 + 168) = 0;
  *(v149 + 176) = 0;

  *(v149 + 216) = 0;
  v174[18] = v149;
  v153 = swift_getKeyPath();
  v154 = swift_getKeyPath();
  v155 = swift_allocObject();
  v155[4] = sub_1AF5AA238;
  v155[5] = v153;
  v155[2] = sub_1AF5A9F68;
  v155[3] = v153;
  v155[6] = v153;
  v156 = swift_allocObject();
  *(v156 + 112) = 1;
  *(v156 + 128) = 0;
  *(v156 + 136) = 0;
  *(v156 + 120) = 0;
  *(v156 + 160) = MEMORY[0x1E69E7CC0];
  *(v156 + 168) = 0;
  *(v156 + 176) = 0;
  *(v156 + 216) = 0;
  *(v156 + 16) = 0xD000000000000019;
  *(v156 + 24) = 0x80000001AFF24800;
  *(v156 + 32) = v153;
  *(v156 + 40) = v143;
  *(v156 + 48) = 137;
  *(v156 + 56) = 0;
  *(v156 + 58) = 0;
  *(v156 + 184) = 0;
  *(v156 + 188) = 1;
  *(v156 + 192) = 0;
  *(v156 + 196) = 1;
  *(v156 + 200) = 0x1000100000000;
  *(v156 + 208) = 1;
  *(v156 + 64) = 0;
  *(v156 + 72) = 0;
  *(v156 + 96) = v154;
  *(v156 + 104) = 0;
  *(v156 + 144) = xmmword_1AFE22A20;
  *(v156 + 80) = v155;
  *(v156 + 88) = &off_1F2535378;
  *(v156 + 210) = 0;
  swift_retain_n();

  if (v69)
  {
    v143 = (*(v69 + 8))();
  }

  v157 = MEMORY[0x1E69E7360];
  v158 = swift_conformsToProtocol2();
  if (v158 && v143)
  {
    v159 = (*(v158 + 8))(v143, v158);

    *(v156 + 160) = v159;
  }

  else
  {
  }

  *(v156 + 64) = sub_1AF5A9964;
  *(v156 + 72) = v153;
  sub_1AF0FB8EC(0, 0);
  *(v156 + 168) = 0;
  *(v156 + 176) = 0;

  *(v156 + 216) = 0;
  v174[19] = v156;
  v160 = swift_getKeyPath();
  v161 = swift_getKeyPath();
  v162 = swift_getKeyPath();
  v163 = swift_allocObject();
  v163[4] = sub_1AF5AA3D8;
  v163[5] = v162;
  v163[2] = sub_1AF5A9F64;
  v163[3] = v162;
  v163[6] = v162;
  v164 = swift_allocObject();
  *(v164 + 112) = 1;
  *(v164 + 128) = 0;
  *(v164 + 136) = 0;
  *(v164 + 120) = 0;
  *(v164 + 160) = MEMORY[0x1E69E7CC0];
  *(v164 + 168) = 0;
  *(v164 + 176) = 0;
  *(v164 + 216) = 0;
  strcpy((v164 + 16), "channelIndex");
  *(v164 + 29) = 0;
  *(v164 + 30) = -5120;
  *(v164 + 32) = v162;
  *(v164 + 40) = v157;
  *(v164 + 48) = 0;
  *(v164 + 56) = 1;
  *(v164 + 58) = 0;
  *(v164 + 184) = 0;
  *(v164 + 188) = 1;
  *(v164 + 192) = 0;
  *(v164 + 196) = 1;
  *(v164 + 200) = 0x1000100000000;
  *(v164 + 208) = 1;
  *(v164 + 64) = 0;
  *(v164 + 72) = 0;
  *(v164 + 96) = 0;
  *(v164 + 104) = 0;
  *(v164 + 144) = xmmword_1AFE22A20;
  *(v164 + 80) = v163;
  *(v164 + 88) = &off_1F2535378;
  *(v164 + 210) = 0;
  swift_retain_n();
  if (v175)
  {
    v157 = (*(v175 + 8))();
  }

  v165 = swift_conformsToProtocol2();
  if (v165 && v157)
  {
    *(v164 + 160) = (*(v165 + 8))(v157, v165);
  }

  *(v164 + 64) = sub_1AF5A9960;
  *(v164 + 72) = v162;
  sub_1AF0FB8EC(0, 0);
  *(v164 + 168) = 0;
  *(v164 + 176) = 0;

  *(v164 + 216) = 0;
  v166 = &type metadata for TextureChannel;
  sub_1AF5A9240(0, &qword_1EB632FA0, &type metadata for TextureChannel, type metadata accessor for EntityGetSet);
  v167 = swift_allocObject();
  v167[4] = sub_1AF59E918;
  v167[5] = v160;
  v167[2] = sub_1AF59E944;
  v167[3] = v160;
  v167[6] = v160;
  v168 = swift_allocObject();
  *(v168 + 112) = 1;
  *(v168 + 128) = 0;
  *(v168 + 136) = 0;
  *(v168 + 120) = 0;
  *(v168 + 160) = MEMORY[0x1E69E7CC0];
  *(v168 + 168) = 0;
  *(v168 + 176) = 0;
  *(v168 + 216) = 0;
  *(v168 + 16) = 0x6C656E6E616863;
  *(v168 + 24) = 0xE700000000000000;
  *(v168 + 32) = v160;
  *(v168 + 40) = &type metadata for TextureChannel;
  *(v168 + 48) = 138;
  *(v168 + 56) = 0;
  *(v168 + 58) = 0;
  *(v168 + 184) = 0;
  *(v168 + 188) = 1;
  *(v168 + 192) = 0;
  *(v168 + 196) = 1;
  *(v168 + 200) = 0x1000100000000;
  *(v168 + 208) = 1;
  *(v168 + 64) = 0;
  *(v168 + 72) = 0;
  *(v168 + 96) = v161;
  *(v168 + 104) = 0;
  *(v168 + 144) = xmmword_1AFE22A20;
  *(v168 + 80) = v167;
  *(v168 + 88) = &off_1F2535378;
  *(v168 + 210) = 0;
  v169 = swift_conformsToProtocol2();
  swift_retain_n();

  if (v169)
  {
    v166 = (*(v169 + 8))();
  }

  v170 = swift_conformsToProtocol2();
  if (v170 && v166)
  {
    v171 = (*(v170 + 8))(v166, v170);

    *(v168 + 160) = v171;
  }

  else
  {
  }

  *(v168 + 64) = sub_1AF59E9A0;
  *(v168 + 72) = v160;
  sub_1AF0FB8EC(0, 0);
  *(v168 + 168) = 0;
  *(v168 + 176) = 0;

  *(v168 + 216) = v164;
  v174[20] = v168;
  result = sub_1AF48F810(v174, sub_1AF56E184);
  qword_1EB6C28F0 = v173;
  return result;
}

uint64_t sub_1AF50BD28(uint64_t result)
{
  v2 = result;
  if (result >= 3u)
  {
    v2 = 3;
  }

  *(v1 + 96) = v2;
  return result;
}

uint64_t sub_1AF50BD48(uint64_t result)
{
  v2 = result;
  if (result >= 5u)
  {
    v2 = 5;
  }

  *(v1 + 76) = v2;
  return result;
}

uint64_t sub_1AF50BD68(uint64_t result)
{
  v2 = result;
  if (result >= 5u)
  {
    v2 = 5;
  }

  *(v1 + 138) = v2;
  return result;
}

uint64_t sub_1AF50BD90()
{
  if (qword_1EB632D18 != -1)
  {
    swift_once();
  }
}

void *sub_1AF50BE80()
{
  result = sub_1AF4FCDF0();
  qword_1EB6C3068 = result;
  return result;
}

void *sub_1AF50BF44()
{
  result = sub_1AF5049E0();
  qword_1EB6C3070 = result;
  return result;
}

uint64_t sub_1AF50C00C()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE55260;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF5A0744;
  v3[5] = KeyPath;
  v3[2] = sub_1AF5A0788;
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
  *(v4 + 16) = 0x656E68746F6F6D73;
  *(v4 + 24) = 0xEA00000000007373;
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

  *(v4 + 64) = sub_1AF5A07E4;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0, 0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  v8 = swift_getKeyPath();
  v9 = swift_allocObject();
  v9[4] = sub_1AF5A9554;
  v9[5] = v8;
  v9[2] = sub_1AF5A9FD0;
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
  *(v10 + 16) = 0xD000000000000012;
  *(v10 + 24) = 0x80000001AFF29620;
  *(v10 + 32) = v8;
  *(v10 + 40) = v2;
  *(v10 + 48) = 4;
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
  swift_retain_n();
  if (v5)
  {
    v11 = (*(v5 + 8))();
  }

  else
  {
    v11 = v2;
  }

  v12 = swift_conformsToProtocol2();
  if (v12 && v11)
  {
    *(v10 + 160) = (*(v12 + 8))(v11, v12);
  }

  *(v10 + 64) = sub_1AF5A99A4;
  *(v10 + 72) = v8;
  sub_1AF0FB8EC(0, 0);
  *(v10 + 168) = 0;
  *(v10 + 176) = 0;

  *(v10 + 216) = 0;
  *(v0 + 40) = v10;
  v13 = swift_getKeyPath();
  v14 = swift_allocObject();
  v14[4] = sub_1AF5A9554;
  v14[5] = v13;
  v14[2] = sub_1AF5A9FD0;
  v14[3] = v13;
  v14[6] = v13;
  v15 = swift_allocObject();
  *(v15 + 112) = 1;
  *(v15 + 128) = 0;
  *(v15 + 136) = 0;
  *(v15 + 120) = 0;
  *(v15 + 160) = MEMORY[0x1E69E7CC0];
  *(v15 + 168) = 0;
  *(v15 + 216) = 0;
  *(v15 + 176) = 0;
  *(v15 + 16) = 0xD000000000000011;
  *(v15 + 24) = 0x80000001AFF29600;
  *(v15 + 32) = v13;
  *(v15 + 40) = v2;
  *(v15 + 48) = 8;
  *(v15 + 56) = 0;
  *(v15 + 58) = 0;
  *(v15 + 184) = 0;
  *(v15 + 188) = 1;
  *(v15 + 192) = 0;
  *(v15 + 196) = 1;
  *(v15 + 200) = 0x1000100000000;
  *(v15 + 208) = 1;
  *(v15 + 96) = 0;
  *(v15 + 104) = 0;
  *(v15 + 64) = 0;
  *(v15 + 72) = 0;
  *(v15 + 144) = xmmword_1AFE22A20;
  *(v15 + 80) = v14;
  *(v15 + 88) = &off_1F2535378;
  *(v15 + 210) = 0;
  swift_retain_n();
  if (v5)
  {
    v16 = (*(v5 + 8))();
  }

  else
  {
    v16 = v2;
  }

  v17 = swift_conformsToProtocol2();
  if (v17 && v16)
  {
    *(v15 + 160) = (*(v17 + 8))(v16, v17);
  }

  *(v15 + 64) = sub_1AF5A99A4;
  *(v15 + 72) = v13;
  sub_1AF0FB8EC(0, 0);
  *(v15 + 168) = 0;
  *(v15 + 176) = 0;

  *(v15 + 216) = 0;
  *(v0 + 48) = v15;
  v18 = swift_getKeyPath();
  v19 = swift_allocObject();
  v19[4] = sub_1AF5A9554;
  v19[5] = v18;
  v19[2] = sub_1AF5A9FD0;
  v19[3] = v18;
  v19[6] = v18;
  v20 = swift_allocObject();
  *(v20 + 112) = 1;
  *(v20 + 128) = 0;
  *(v20 + 136) = 0;
  *(v20 + 120) = 0;
  *(v20 + 160) = MEMORY[0x1E69E7CC0];
  *(v20 + 168) = 0;
  *(v20 + 216) = 0;
  *(v20 + 176) = 0;
  *(v20 + 16) = 0xD000000000000010;
  *(v20 + 24) = 0x80000001AFF295E0;
  *(v20 + 32) = v18;
  *(v20 + 40) = v2;
  *(v20 + 48) = 12;
  *(v20 + 56) = 0;
  *(v20 + 58) = 0;
  *(v20 + 184) = 0;
  *(v20 + 188) = 1;
  *(v20 + 192) = 0;
  *(v20 + 196) = 1;
  *(v20 + 200) = 0x1000100000000;
  *(v20 + 208) = 1;
  *(v20 + 96) = 0;
  *(v20 + 104) = 0;
  *(v20 + 64) = 0;
  *(v20 + 72) = 0;
  *(v20 + 144) = xmmword_1AFE22A20;
  *(v20 + 80) = v19;
  *(v20 + 88) = &off_1F2535378;
  *(v20 + 210) = 0;
  swift_retain_n();
  if (v5)
  {
    v21 = (*(v5 + 8))();
  }

  else
  {
    v21 = v2;
  }

  v22 = swift_conformsToProtocol2();
  if (v22 && v21)
  {
    *(v20 + 160) = (*(v22 + 8))(v21, v22);
  }

  *(v20 + 64) = sub_1AF5A99A4;
  *(v20 + 72) = v18;
  sub_1AF0FB8EC(0, 0);
  *(v20 + 168) = 0;
  *(v20 + 176) = 0;

  *(v20 + 216) = 0;
  *(v0 + 56) = v20;
  v23 = swift_getKeyPath();
  v24 = swift_allocObject();
  v24[4] = sub_1AF5A9554;
  v24[5] = v23;
  v24[2] = sub_1AF5A9FD0;
  v24[3] = v23;
  v24[6] = v23;
  v25 = swift_allocObject();
  *(v25 + 112) = 1;
  *(v25 + 128) = 0;
  *(v25 + 136) = 0;
  *(v25 + 120) = 0;
  *(v25 + 160) = MEMORY[0x1E69E7CC0];
  *(v25 + 168) = 0;
  *(v25 + 216) = 0;
  *(v25 + 176) = 0;
  *(v25 + 16) = 0xD000000000000015;
  *(v25 + 24) = 0x80000001AFF295C0;
  *(v25 + 32) = v23;
  *(v25 + 40) = v2;
  *(v25 + 48) = 16;
  *(v25 + 56) = 0;
  *(v25 + 58) = 0;
  *(v25 + 184) = 0;
  *(v25 + 188) = 1;
  *(v25 + 192) = 0;
  *(v25 + 196) = 1;
  *(v25 + 200) = 0x1000100000000;
  *(v25 + 208) = 1;
  *(v25 + 96) = 0;
  *(v25 + 104) = 0;
  *(v25 + 64) = 0;
  *(v25 + 72) = 0;
  *(v25 + 144) = xmmword_1AFE22A20;
  *(v25 + 80) = v24;
  *(v25 + 88) = &off_1F2535378;
  *(v25 + 210) = 0;
  swift_retain_n();
  if (v5)
  {
    v26 = (*(v5 + 8))();
  }

  else
  {
    v26 = v2;
  }

  v27 = swift_conformsToProtocol2();
  if (v27 && v26)
  {
    *(v25 + 160) = (*(v27 + 8))(v26, v27);
  }

  *(v25 + 64) = sub_1AF5A99A4;
  *(v25 + 72) = v23;
  sub_1AF0FB8EC(0, 0);
  *(v25 + 168) = 0;
  *(v25 + 176) = 0;

  *(v25 + 216) = 0;
  *(v0 + 64) = v25;
  v28 = swift_getKeyPath();
  v29 = swift_allocObject();
  v29[4] = sub_1AF5A9554;
  v29[5] = v28;
  v29[2] = sub_1AF5A9FD0;
  v29[3] = v28;
  v29[6] = v28;
  v30 = swift_allocObject();
  *(v30 + 112) = 1;
  *(v30 + 128) = 0;
  *(v30 + 136) = 0;
  *(v30 + 120) = 0;
  *(v30 + 160) = MEMORY[0x1E69E7CC0];
  *(v30 + 168) = 0;
  *(v30 + 216) = 0;
  *(v30 + 176) = 0;
  *(v30 + 16) = 0xD000000000000011;
  *(v30 + 24) = 0x80000001AFF295A0;
  *(v30 + 32) = v28;
  *(v30 + 40) = v2;
  *(v30 + 48) = 20;
  *(v30 + 56) = 0;
  *(v30 + 58) = 0;
  *(v30 + 184) = 0;
  *(v30 + 188) = 1;
  *(v30 + 192) = 0;
  *(v30 + 196) = 1;
  *(v30 + 200) = 0x1000100000000;
  *(v30 + 208) = 1;
  *(v30 + 96) = 0;
  *(v30 + 104) = 0;
  *(v30 + 64) = 0;
  *(v30 + 72) = 0;
  *(v30 + 144) = xmmword_1AFE22A20;
  *(v30 + 80) = v29;
  *(v30 + 88) = &off_1F2535378;
  *(v30 + 210) = 0;
  swift_retain_n();
  if (v5)
  {
    v2 = (*(v5 + 8))();
  }

  v31 = swift_conformsToProtocol2();
  if (v31 && v2)
  {
    *(v30 + 160) = (*(v31 + 8))(v2, v31);
  }

  *(v30 + 64) = sub_1AF5A99A4;
  *(v30 + 72) = v28;
  sub_1AF0FB8EC(0, 0);
  *(v30 + 168) = 0;
  *(v30 + 176) = 0;

  *(v30 + 216) = 0;
  *(v0 + 72) = v30;
  qword_1EB6C3078 = v0;
  return result;
}

uint64_t sub_1AF50CC14()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE55130;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF5A0884;
  v3[5] = KeyPath;
  v3[2] = sub_1AF5A08B8;
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
  *(v4 + 16) = 0x656E68746F6F6D73;
  *(v4 + 24) = 0xEA00000000007373;
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

  *(v4 + 64) = sub_1AF5A0914;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0, 0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  v8 = swift_getKeyPath();
  v9 = swift_allocObject();
  v9[4] = sub_1AF5A9558;
  v9[5] = v8;
  v9[2] = sub_1AF5A9FD4;
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
  *(v10 + 16) = 0xD000000000000015;
  *(v10 + 24) = 0x80000001AFF295C0;
  *(v10 + 32) = v8;
  *(v10 + 40) = v2;
  *(v10 + 48) = 4;
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
  swift_retain_n();
  if (v5)
  {
    v11 = (*(v5 + 8))();
  }

  else
  {
    v11 = v2;
  }

  v12 = swift_conformsToProtocol2();
  if (v12 && v11)
  {
    *(v10 + 160) = (*(v12 + 8))(v11, v12);
  }

  *(v10 + 64) = sub_1AF5A99A8;
  *(v10 + 72) = v8;
  sub_1AF0FB8EC(0, 0);
  *(v10 + 168) = 0;
  *(v10 + 176) = 0;

  *(v10 + 216) = 0;
  *(v0 + 40) = v10;
  v13 = swift_getKeyPath();
  v14 = swift_allocObject();
  v14[4] = sub_1AF5A9558;
  v14[5] = v13;
  v14[2] = sub_1AF5A9FD4;
  v14[3] = v13;
  v14[6] = v13;
  v15 = swift_allocObject();
  *(v15 + 112) = 1;
  *(v15 + 128) = 0;
  *(v15 + 136) = 0;
  *(v15 + 120) = 0;
  *(v15 + 160) = MEMORY[0x1E69E7CC0];
  *(v15 + 168) = 0;
  *(v15 + 216) = 0;
  *(v15 + 176) = 0;
  *(v15 + 16) = 0xD000000000000011;
  *(v15 + 24) = 0x80000001AFF295A0;
  *(v15 + 32) = v13;
  *(v15 + 40) = v2;
  *(v15 + 48) = 8;
  *(v15 + 56) = 0;
  *(v15 + 58) = 0;
  *(v15 + 184) = 0;
  *(v15 + 188) = 1;
  *(v15 + 192) = 0;
  *(v15 + 196) = 1;
  *(v15 + 200) = 0x1000100000000;
  *(v15 + 208) = 1;
  *(v15 + 96) = 0;
  *(v15 + 104) = 0;
  *(v15 + 64) = 0;
  *(v15 + 72) = 0;
  *(v15 + 144) = xmmword_1AFE22A20;
  *(v15 + 80) = v14;
  *(v15 + 88) = &off_1F2535378;
  *(v15 + 210) = 0;
  swift_retain_n();
  if (v5)
  {
    v2 = (*(v5 + 8))();
  }

  v16 = swift_conformsToProtocol2();
  if (v16 && v2)
  {
    *(v15 + 160) = (*(v16 + 8))(v2, v16);
  }

  *(v15 + 64) = sub_1AF5A99A8;
  *(v15 + 72) = v13;
  sub_1AF0FB8EC(0, 0);
  *(v15 + 168) = 0;
  *(v15 + 176) = 0;

  *(v15 + 216) = 0;
  *(v0 + 48) = v15;
  qword_1EB6C3080 = v0;
  return result;
}

uint64_t sub_1AF50D2F0()
{
  v14 = sub_1AF5068DC();
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE4C3E0;
  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  v3 = MEMORY[0x1E69E7360];
  sub_1AF5A9240(0, &unk_1EB634340, MEMORY[0x1E69E7360], type metadata accessor for EntityGetSet);
  v4 = swift_allocObject();
  v4[4] = sub_1AF5A09B4;
  v4[5] = v2;
  v4[2] = sub_1AF5A09E8;
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
  *(v5 + 16) = 0x646E496570616873;
  *(v5 + 24) = 0xEA00000000007865;
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

  *(v5 + 64) = sub_1AF5A0A44;
  *(v5 + 72) = v2;
  sub_1AF0FB8EC(0, 0);
  *(v5 + 168) = 0;
  *(v5 + 176) = 0;

  *(v5 + 216) = 0;
  v8 = &type metadata for ParticlePrimitiveRenderer.Shape;
  sub_1AF5A9240(0, &qword_1EB63B610, &type metadata for ParticlePrimitiveRenderer.Shape, type metadata accessor for EntityGetSet);
  v9 = swift_allocObject();
  v9[4] = sub_1AF5A0A84;
  v9[5] = KeyPath;
  v9[2] = sub_1AF5A0AB0;
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
  *(v10 + 16) = 0x6570616873;
  *(v10 + 24) = 0xE500000000000000;
  *(v10 + 32) = KeyPath;
  *(v10 + 40) = &type metadata for ParticlePrimitiveRenderer.Shape;
  *(v10 + 48) = 36;
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

  *(v10 + 64) = sub_1AF5A0B0C;
  *(v10 + 72) = KeyPath;
  sub_1AF0FB8EC(0, 0);
  *(v10 + 168) = 0;
  *(v10 + 176) = 0;

  *(v10 + 216) = v5;
  *(inited + 32) = v10;
  result = sub_1AF48F810(inited, sub_1AF56E184);
  qword_1EB6C3088 = v14;
  return result;
}

uint64_t sub_1AF50D7A8(uint64_t result)
{
  v2 = result;
  if (result >= 5u)
  {
    v2 = 5;
  }

  *(v1 + 36) = v2;
  return result;
}

uint64_t sub_1AF50D870()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE550E0;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF5A1460;
  v3[5] = KeyPath;
  v3[2] = sub_1AF5A14A4;
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
  *(v4 + 16) = 0x656C616373;
  *(v4 + 24) = 0xE500000000000000;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = v2;
  *(v4 + 48) = 0;
  *(v4 + 56) = 0;
  *(v4 + 58) = 0;
  *(v4 + 184) = 0;
  *(v4 + 188) = 0;
  *(v4 + 192) = 0;
  *(v4 + 196) = 1;
  *(v4 + 200) = 0x100003C23D70ALL;
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

  *(v4 + 64) = sub_1AF5A1500;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0, 0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  v8 = swift_getKeyPath();
  v9 = swift_allocObject();
  v9[4] = sub_1AF5A9564;
  v9[5] = v8;
  v9[2] = sub_1AF5A9FF8;
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
  *(v10 + 16) = 0x7469736E65746E69;
  *(v10 + 24) = 0xE900000000000079;
  *(v10 + 32) = v8;
  *(v10 + 40) = v2;
  *(v10 + 48) = 4;
  *(v10 + 56) = 0;
  *(v10 + 58) = 0;
  *(v10 + 184) = 0;
  *(v10 + 188) = 0;
  *(v10 + 192) = 0;
  *(v10 + 196) = 1;
  *(v10 + 200) = 1008981770;
  *(v10 + 204) = 0x10000;
  *(v10 + 208) = 1;
  *(v10 + 64) = 0;
  *(v10 + 72) = 0;
  *(v10 + 96) = 0;
  *(v10 + 104) = 0;
  *(v10 + 144) = xmmword_1AFE22A20;
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

  *(v10 + 64) = sub_1AF5A99C0;
  *(v10 + 72) = v8;
  sub_1AF0FB8EC(0, 0);
  *(v10 + 168) = 0;
  *(v10 + 176) = 0;

  *(v10 + 216) = 0;
  *(v0 + 40) = v10;
  qword_1EB6C3090 = v0;
  return result;
}

uint64_t sub_1AF50DD90()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE550E0;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF5A15A0;
  v3[5] = KeyPath;
  v3[2] = sub_1AF5A15E4;
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
  *(v4 + 16) = 0x656C616373;
  *(v4 + 24) = 0xE500000000000000;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = v2;
  *(v4 + 48) = 0;
  *(v4 + 56) = 0;
  *(v4 + 58) = 0;
  *(v4 + 184) = 0;
  *(v4 + 188) = 0;
  *(v4 + 192) = 0;
  *(v4 + 196) = 1;
  *(v4 + 200) = 0x100003C23D70ALL;
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

  *(v4 + 64) = sub_1AF5A1640;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0, 0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  v8 = swift_getKeyPath();
  v9 = swift_allocObject();
  v9[4] = sub_1AF5A9568;
  v9[5] = v8;
  v9[2] = sub_1AF5A9FFC;
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
  *(v10 + 16) = 0x7469736E65746E69;
  *(v10 + 24) = 0xE900000000000079;
  *(v10 + 32) = v8;
  *(v10 + 40) = v2;
  *(v10 + 48) = 4;
  *(v10 + 56) = 0;
  *(v10 + 58) = 0;
  *(v10 + 184) = 0;
  *(v10 + 188) = 0;
  *(v10 + 192) = 0;
  *(v10 + 196) = 1;
  *(v10 + 200) = 1008981770;
  *(v10 + 204) = 0x10000;
  *(v10 + 208) = 1;
  *(v10 + 64) = 0;
  *(v10 + 72) = 0;
  *(v10 + 96) = 0;
  *(v10 + 104) = 0;
  *(v10 + 144) = xmmword_1AFE22A20;
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

  *(v10 + 64) = sub_1AF5A99C4;
  *(v10 + 72) = v8;
  sub_1AF0FB8EC(0, 0);
  *(v10 + 168) = 0;
  *(v10 + 176) = 0;

  *(v10 + 216) = 0;
  *(v0 + 40) = v10;
  qword_1EB6C3098 = v0;
  return result;
}

uint64_t sub_1AF50E2B0()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C3E0;
  KeyPath = swift_getKeyPath();
  v2 = &type metadata for Entity;
  sub_1AF5A9240(0, &unk_1EB6338D8, &type metadata for Entity, type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF5A16E0;
  v3[5] = KeyPath;
  v3[2] = sub_1AF5A1724;
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
  *(v4 + 16) = 0x65727574786574;
  *(v4 + 24) = 0xE700000000000000;
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
  *(v4 + 144) = xmmword_1AFE551B0;
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

  *(v4 + 64) = sub_1AF5A1780;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0, 0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  qword_1EB6C30A0 = v0;
  return result;
}

uint64_t sub_1AF50E5E0()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v206 = swift_allocObject();
  *(v206 + 16) = xmmword_1AFE55280;
  KeyPath = swift_getKeyPath();
  sub_1AF5A9240(0, &unk_1EB6338D8, &type metadata for Entity, type metadata accessor for EntityGetSet);
  v1 = swift_allocObject();
  v1[4] = sub_1AF5A1820;
  v1[5] = KeyPath;
  v1[2] = sub_1AF5A1854;
  v1[3] = KeyPath;
  v1[6] = KeyPath;
  type metadata accessor for PropertyDescription();
  v2 = swift_allocObject();
  *(v2 + 112) = 1;
  *(v2 + 128) = 0;
  *(v2 + 136) = 0;
  *(v2 + 120) = 0;
  *(v2 + 160) = MEMORY[0x1E69E7CC0];
  *(v2 + 168) = 0;
  *(v2 + 216) = 0;
  *(v2 + 176) = 0;
  *(v2 + 16) = 0x65727574786574;
  *(v2 + 24) = 0xE700000000000000;
  *(v2 + 32) = KeyPath;
  *(v2 + 40) = &type metadata for Entity;
  *(v2 + 48) = 0;
  *(v2 + 56) = 0;
  *(v2 + 58) = 0;
  *(v2 + 184) = 0;
  *(v2 + 188) = 1;
  *(v2 + 192) = 0;
  *(v2 + 196) = 1;
  *(v2 + 200) = 0x1000100000000;
  *(v2 + 208) = 1;
  *(v2 + 96) = 0;
  *(v2 + 104) = 0;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
  *(v2 + 144) = xmmword_1AFE551B0;
  *(v2 + 80) = v1;
  *(v2 + 88) = &off_1F2535378;
  *(v2 + 210) = 0;
  v3 = swift_conformsToProtocol2();
  swift_retain_n();
  v204 = v3;
  if (v3)
  {
    v4 = (*(v3 + 8))();
  }

  else
  {
    v4 = &type metadata for Entity;
  }

  v5 = swift_conformsToProtocol2();
  if (v5 && v4)
  {
    *(v2 + 160) = (*(v5 + 8))(v4, v5);
  }

  v6 = *(v2 + 64);
  v7 = *(v2 + 72);
  *(v2 + 64) = sub_1AF5A18B0;
  *(v2 + 72) = KeyPath;
  sub_1AF0FB8EC(v6, v7);
  *(v2 + 168) = 0;
  *(v2 + 176) = 0;

  *(v2 + 216) = 0;

  *(v206 + 32) = v2;
  v8 = swift_getKeyPath();
  v9 = swift_getKeyPath();
  v10 = MEMORY[0x1E69E7360];
  sub_1AF5A9240(0, &unk_1EB634340, MEMORY[0x1E69E7360], type metadata accessor for EntityGetSet);
  v11 = swift_allocObject();
  v11[4] = sub_1AF5AA3EC;
  v11[5] = v9;
  v11[2] = sub_1AF5A18F0;
  v11[3] = v9;
  v11[6] = v9;
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
  *(v12 + 16) = 0xD000000000000010;
  *(v12 + 24) = 0x80000001AFF2A2B0;
  *(v12 + 32) = v9;
  *(v12 + 40) = v10;
  *(v12 + 48) = 0;
  *(v12 + 56) = 1;
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
  v13 = swift_conformsToProtocol2();
  swift_retain_n();
  v205 = v13;
  if (v13)
  {
    v14 = (*(v13 + 8))();
  }

  else
  {
    v14 = v10;
  }

  v15 = swift_conformsToProtocol2();
  if (v15 && v14)
  {
    *(v12 + 160) = (*(v15 + 8))(v14, v15);
  }

  v16 = *(v12 + 64);
  v17 = *(v12 + 72);
  *(v12 + 64) = sub_1AF5A194C;
  *(v12 + 72) = v9;
  sub_1AF0FB8EC(v16, v17);
  *(v12 + 168) = 0;
  *(v12 + 176) = 0;

  *(v12 + 216) = 0;

  v18 = &type metadata for ParticleOrientationMode;
  sub_1AF5A9240(0, &unk_1EB632F70, &type metadata for ParticleOrientationMode, type metadata accessor for EntityGetSet);
  v19 = swift_allocObject();
  v19[4] = sub_1AF5AA274;
  v19[5] = v8;
  v19[2] = sub_1AF5A198C;
  v19[3] = v8;
  v19[6] = v8;
  v20 = swift_allocObject();
  *(v20 + 112) = 1;
  *(v20 + 128) = 0;
  *(v20 + 136) = 0;
  *(v20 + 120) = 0;
  *(v20 + 160) = MEMORY[0x1E69E7CC0];
  *(v20 + 168) = 0;
  *(v20 + 210) = 0;
  *(v20 + 216) = 0;
  *(v20 + 176) = 0;
  *(v20 + 16) = 0x7461746E6569726FLL;
  *(v20 + 24) = 0xEB000000006E6F69;
  *(v20 + 32) = v8;
  *(v20 + 40) = &type metadata for ParticleOrientationMode;
  *(v20 + 48) = 36;
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
  *(v20 + 104) = 0;
  *(v20 + 144) = xmmword_1AFE22A20;
  *(v20 + 80) = v19;
  *(v20 + 88) = &off_1F2535378;
  *(v20 + 210) = 0;
  v21 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v21)
  {
    v18 = (*(v21 + 8))();
  }

  v22 = swift_conformsToProtocol2();
  if (v22 && v18)
  {
    *(v20 + 160) = (*(v22 + 8))(v18, v22);
  }

  v23 = *(v20 + 64);
  v24 = *(v20 + 72);
  *(v20 + 64) = sub_1AF5A19E8;
  *(v20 + 72) = v8;
  sub_1AF0FB8EC(v23, v24);
  *(v20 + 168) = 0;
  *(v20 + 176) = 0;

  *(v20 + 216) = v12;

  *(v206 + 40) = v20;
  v25 = swift_getKeyPath();
  v26 = swift_getKeyPath();
  v27 = swift_allocObject();
  v27[4] = sub_1AF5AA3EC;
  v27[5] = v26;
  v27[2] = sub_1AF5AA004;
  v27[3] = v26;
  v27[6] = v26;
  v28 = swift_allocObject();
  *(v28 + 112) = 1;
  *(v28 + 128) = 0;
  *(v28 + 136) = 0;
  *(v28 + 120) = 0;
  *(v28 + 160) = MEMORY[0x1E69E7CC0];
  *(v28 + 168) = 0;
  *(v28 + 210) = 0;
  *(v28 + 216) = 0;
  *(v28 + 176) = 0;
  strcpy((v28 + 16), "blendModeIndex");
  *(v28 + 31) = -18;
  *(v28 + 32) = v26;
  v29 = MEMORY[0x1E69E7360];
  *(v28 + 40) = MEMORY[0x1E69E7360];
  *(v28 + 48) = 0;
  *(v28 + 56) = 1;
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
  if (v205)
  {
    v30 = (*(v205 + 8))();
  }

  else
  {
    v30 = v29;
  }

  v31 = swift_conformsToProtocol2();
  if (v31 && v30)
  {
    *(v28 + 160) = (*(v31 + 8))(v30, v31);
  }

  v32 = *(v28 + 64);
  v33 = *(v28 + 72);
  *(v28 + 64) = sub_1AF5A99C8;
  *(v28 + 72) = v26;
  sub_1AF0FB8EC(v32, v33);
  *(v28 + 168) = 0;
  *(v28 + 176) = 0;

  *(v28 + 216) = 0;

  v34 = &type metadata for BlendMode;
  sub_1AF5A9240(0, &unk_1EB633878, &type metadata for BlendMode, type metadata accessor for EntityGetSet);
  v35 = swift_allocObject();
  v35[4] = sub_1AF5A1A28;
  v35[5] = v25;
  v35[2] = sub_1AF5A1A64;
  v35[3] = v25;
  v35[6] = v25;
  v36 = swift_allocObject();
  *(v36 + 112) = 1;
  *(v36 + 128) = 0;
  *(v36 + 136) = 0;
  *(v36 + 120) = 0;
  *(v36 + 160) = MEMORY[0x1E69E7CC0];
  *(v36 + 168) = 0;
  *(v36 + 210) = 0;
  *(v36 + 216) = 0;
  *(v36 + 176) = 0;
  *(v36 + 16) = 0x646F4D646E656C62;
  *(v36 + 24) = 0xE900000000000065;
  *(v36 + 32) = v25;
  *(v36 + 40) = &type metadata for BlendMode;
  *(v36 + 48) = 8;
  *(v36 + 56) = 0;
  *(v36 + 58) = 0;
  *(v36 + 184) = 0;
  *(v36 + 188) = 1;
  *(v36 + 192) = 0;
  *(v36 + 196) = 1;
  *(v36 + 200) = 0x1000100000000;
  *(v36 + 208) = 1;
  *(v36 + 64) = 0;
  *(v36 + 72) = 0;
  *(v36 + 96) = 0;
  *(v36 + 104) = 0;
  *(v36 + 144) = xmmword_1AFE22A20;
  *(v36 + 80) = v35;
  *(v36 + 88) = &off_1F2535378;
  *(v36 + 210) = 0;
  v37 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v37)
  {
    v34 = (*(v37 + 8))();
  }

  v38 = swift_conformsToProtocol2();
  if (v38 && v34)
  {
    *(v36 + 160) = (*(v38 + 8))(v34, v38);
  }

  v39 = *(v36 + 64);
  v40 = *(v36 + 72);
  *(v36 + 64) = sub_1AF5A1AA4;
  *(v36 + 72) = v25;
  sub_1AF0FB8EC(v39, v40);
  *(v36 + 168) = 0;
  *(v36 + 176) = 0;

  *(v36 + 216) = v28;

  *(v206 + 48) = v36;
  v41 = swift_getKeyPath();
  v42 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v43 = swift_allocObject();
  v43[4] = sub_1AF5A1AE4;
  v43[5] = v41;
  v43[2] = sub_1AF5A1B18;
  v43[3] = v41;
  v43[6] = v41;
  v44 = swift_allocObject();
  *(v44 + 112) = 1;
  *(v44 + 128) = 0;
  *(v44 + 136) = 0;
  *(v44 + 120) = 0;
  *(v44 + 160) = MEMORY[0x1E69E7CC0];
  *(v44 + 168) = 0;
  *(v44 + 210) = 0;
  *(v44 + 216) = 0;
  *(v44 + 176) = 0;
  *(v44 + 16) = 0x685466666F747563;
  *(v44 + 24) = 0xEF646C6F68736572;
  *(v44 + 32) = v41;
  *(v44 + 40) = v42;
  *(v44 + 48) = 16;
  *(v44 + 56) = 0;
  *(v44 + 58) = 0;
  *(v44 + 184) = -1082130432;
  *(v44 + 188) = 0;
  *(v44 + 192) = 1065353216;
  *(v44 + 196) = 0;
  *(v44 + 200) = 0x1000100000000;
  *(v44 + 208) = 1;
  *(v44 + 64) = 0;
  *(v44 + 72) = 0;
  *(v44 + 96) = 0;
  *(v44 + 104) = 0;
  *(v44 + 144) = xmmword_1AFE22A20;
  *(v44 + 80) = v43;
  *(v44 + 88) = &off_1F2535378;
  *(v44 + 210) = 0;
  v45 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v45)
  {
    v46 = (*(v45 + 8))();
  }

  else
  {
    v46 = v42;
  }

  v202 = v45;
  v47 = swift_conformsToProtocol2();
  if (v47 && v46)
  {
    *(v44 + 160) = (*(v47 + 8))(v46, v47);
  }

  v48 = *(v44 + 64);
  v49 = *(v44 + 72);
  *(v44 + 64) = sub_1AF5A1B74;
  *(v44 + 72) = v41;
  sub_1AF0FB8EC(v48, v49);
  *(v44 + 168) = 0;
  *(v44 + 176) = 0;

  *(v44 + 216) = 0;

  *(v206 + 56) = v44;
  v50 = swift_getKeyPath();
  v51 = MEMORY[0x1E69E6370];
  sub_1AF5A9240(0, &qword_1ED722B80, MEMORY[0x1E69E6370], type metadata accessor for EntityGetSet);
  v52 = swift_allocObject();
  v52[4] = sub_1AF5A1BB4;
  v52[5] = v50;
  v52[2] = sub_1AF5A1BE0;
  v52[3] = v50;
  v52[6] = v50;
  v53 = swift_allocObject();
  *(v53 + 112) = 1;
  *(v53 + 128) = 0;
  *(v53 + 136) = 0;
  *(v53 + 120) = 0;
  *(v53 + 160) = MEMORY[0x1E69E7CC0];
  *(v53 + 168) = 0;
  *(v53 + 210) = 0;
  *(v53 + 216) = 0;
  *(v53 + 176) = 0;
  *(v53 + 16) = 0x676E69746867696CLL;
  *(v53 + 24) = 0xE800000000000000;
  *(v53 + 32) = v50;
  *(v53 + 40) = v51;
  *(v53 + 48) = 37;
  *(v53 + 56) = 0;
  *(v53 + 58) = 0;
  *(v53 + 184) = 0;
  *(v53 + 188) = 1;
  *(v53 + 192) = 0;
  *(v53 + 196) = 1;
  *(v53 + 200) = 0x1000100000000;
  *(v53 + 208) = 1;
  *(v53 + 64) = 0;
  *(v53 + 72) = 0;
  *(v53 + 96) = 0;
  *(v53 + 104) = 0;
  *(v53 + 144) = xmmword_1AFE22A20;
  *(v53 + 80) = v52;
  *(v53 + 88) = &off_1F2535378;
  *(v53 + 210) = 0;
  v54 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v54)
  {
    v55 = (*(v54 + 8))();
  }

  else
  {
    v55 = v51;
  }

  v56 = swift_conformsToProtocol2();
  if (v56 && v55)
  {
    *(v53 + 160) = (*(v56 + 8))(v55, v56);
  }

  v57 = *(v53 + 64);
  v58 = *(v53 + 72);
  *(v53 + 64) = sub_1AF5A1C3C;
  *(v53 + 72) = v50;
  sub_1AF0FB8EC(v57, v58);
  *(v53 + 168) = 0;
  *(v53 + 176) = 0;

  *(v53 + 216) = 0;

  *(v206 + 64) = v53;
  v59 = swift_getKeyPath();
  v60 = swift_allocObject();
  v60[4] = sub_1AF5AA270;
  v60[5] = v59;
  v60[2] = sub_1AF5AA008;
  v60[3] = v59;
  v60[6] = v59;
  v61 = swift_allocObject();
  *(v61 + 112) = 1;
  *(v61 + 128) = 0;
  *(v61 + 136) = 0;
  *(v61 + 120) = 0;
  *(v61 + 160) = MEMORY[0x1E69E7CC0];
  *(v61 + 168) = 0;
  *(v61 + 210) = 0;
  *(v61 + 216) = 0;
  *(v61 + 176) = 0;
  *(v61 + 16) = 0x72616C7563657073;
  *(v61 + 24) = 0xE800000000000000;
  *(v61 + 32) = v59;
  *(v61 + 40) = v51;
  *(v61 + 48) = 38;
  *(v61 + 56) = 0;
  *(v61 + 58) = 0;
  *(v61 + 184) = 0;
  *(v61 + 188) = 1;
  *(v61 + 192) = 0;
  *(v61 + 196) = 1;
  *(v61 + 200) = 0x1000100000000;
  *(v61 + 208) = 1;
  *(v61 + 64) = 0;
  *(v61 + 72) = 0;
  *(v61 + 96) = 0;
  *(v61 + 104) = 0;
  *(v61 + 144) = xmmword_1AFE22A20;
  *(v61 + 80) = v60;
  *(v61 + 88) = &off_1F2535378;
  *(v61 + 210) = 0;
  swift_retain_n();
  if (v54)
  {
    v62 = (*(v54 + 8))();
  }

  else
  {
    v62 = v51;
  }

  v203 = v54;
  v63 = swift_conformsToProtocol2();
  if (v63 && v62)
  {
    *(v61 + 160) = (*(v63 + 8))(v62, v63);
  }

  v64 = *(v61 + 64);
  v65 = *(v61 + 72);
  *(v61 + 64) = sub_1AF5A99CC;
  *(v61 + 72) = v59;
  sub_1AF0FB8EC(v64, v65);
  *(v61 + 168) = 0;
  *(v61 + 176) = 0;

  *(v61 + 216) = 0;

  *(v206 + 72) = v61;
  v66 = swift_getKeyPath();
  v67 = swift_getKeyPath();
  v68 = swift_allocObject();
  v68[4] = sub_1AF5AA3EC;
  v68[5] = v67;
  v68[2] = sub_1AF5AA004;
  v68[3] = v67;
  v68[6] = v67;
  v69 = swift_allocObject();
  *(v69 + 112) = 1;
  *(v69 + 128) = 0;
  *(v69 + 136) = 0;
  *(v69 + 120) = 0;
  *(v69 + 160) = MEMORY[0x1E69E7CC0];
  *(v69 + 168) = 0;
  *(v69 + 210) = 0;
  *(v69 + 216) = 0;
  *(v69 + 176) = 0;
  strcpy((v69 + 16), "sortModeIndex");
  *(v69 + 30) = -4864;
  *(v69 + 32) = v67;
  v70 = MEMORY[0x1E69E7360];
  *(v69 + 40) = MEMORY[0x1E69E7360];
  *(v69 + 48) = 0;
  *(v69 + 56) = 1;
  *(v69 + 58) = 0;
  *(v69 + 184) = 0;
  *(v69 + 188) = 1;
  *(v69 + 192) = 0;
  *(v69 + 196) = 1;
  *(v69 + 200) = 0x1000100000000;
  *(v69 + 208) = 1;
  *(v69 + 64) = 0;
  *(v69 + 72) = 0;
  *(v69 + 96) = 0;
  *(v69 + 104) = 0;
  *(v69 + 144) = xmmword_1AFE22A20;
  *(v69 + 80) = v68;
  *(v69 + 88) = &off_1F2535378;
  *(v69 + 210) = 0;
  swift_retain_n();
  if (v205)
  {
    v71 = (*(v205 + 8))();
  }

  else
  {
    v71 = v70;
  }

  v72 = swift_conformsToProtocol2();
  if (v72 && v71)
  {
    *(v69 + 160) = (*(v72 + 8))(v71, v72);
  }

  v73 = *(v69 + 64);
  v74 = *(v69 + 72);
  *(v69 + 64) = sub_1AF5A99C8;
  *(v69 + 72) = v67;
  sub_1AF0FB8EC(v73, v74);
  *(v69 + 168) = 0;
  *(v69 + 176) = 0;

  *(v69 + 216) = 0;

  v75 = &type metadata for ParticleSortMode;
  sub_1AF5A9240(0, &qword_1EB632F98, &type metadata for ParticleSortMode, type metadata accessor for EntityGetSet);
  v76 = swift_allocObject();
  v76[4] = sub_1AF5A1C7C;
  v76[5] = v66;
  v76[2] = sub_1AF5A1CA8;
  v76[3] = v66;
  v76[6] = v66;
  v77 = swift_allocObject();
  *(v77 + 112) = 1;
  *(v77 + 128) = 0;
  *(v77 + 136) = 0;
  *(v77 + 120) = 0;
  *(v77 + 160) = MEMORY[0x1E69E7CC0];
  *(v77 + 168) = 0;
  *(v77 + 210) = 0;
  *(v77 + 216) = 0;
  *(v77 + 176) = 0;
  *(v77 + 16) = 0x65646F4D74726F73;
  *(v77 + 24) = 0xE800000000000000;
  *(v77 + 32) = v66;
  *(v77 + 40) = &type metadata for ParticleSortMode;
  *(v77 + 48) = 0;
  *(v77 + 56) = 1;
  *(v77 + 58) = 0;
  *(v77 + 184) = 0;
  *(v77 + 188) = 1;
  *(v77 + 192) = 0;
  *(v77 + 196) = 1;
  *(v77 + 200) = 0x1000100000000;
  *(v77 + 208) = 1;
  *(v77 + 64) = 0;
  *(v77 + 72) = 0;
  *(v77 + 96) = 0;
  *(v77 + 104) = 0;
  *(v77 + 144) = xmmword_1AFE22A20;
  *(v77 + 80) = v76;
  *(v77 + 88) = &off_1F2535378;
  *(v77 + 210) = 0;
  v78 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v78)
  {
    v75 = (*(v78 + 8))();
  }

  v79 = swift_conformsToProtocol2();
  if (v79 && v75)
  {
    *(v77 + 160) = (*(v79 + 8))(v75, v79);
  }

  v80 = *(v77 + 64);
  v81 = *(v77 + 72);
  *(v77 + 64) = sub_1AF5A1D04;
  *(v77 + 72) = v66;
  sub_1AF0FB8EC(v80, v81);
  *(v77 + 168) = 0;
  *(v77 + 176) = 0;

  *(v77 + 216) = v69;

  *(v206 + 80) = v77;
  v82 = swift_getKeyPath();
  v83 = MEMORY[0x1E69E7668];
  sub_1AF5A9240(0, &qword_1ED725C68, MEMORY[0x1E69E7668], type metadata accessor for EntityGetSet);
  v84 = swift_allocObject();
  v84[4] = sub_1AF5A1AE4;
  v84[5] = v82;
  v84[2] = sub_1AF5A1D44;
  v84[3] = v82;
  v84[6] = v82;
  v85 = swift_allocObject();
  *(v85 + 112) = 1;
  *(v85 + 128) = 0;
  *(v85 + 136) = 0;
  *(v85 + 120) = 0;
  *(v85 + 160) = MEMORY[0x1E69E7CC0];
  *(v85 + 168) = 0;
  *(v85 + 210) = 0;
  *(v85 + 216) = 0;
  *(v85 + 176) = 0;
  *(v85 + 16) = 0x647265764F78616DLL;
  *(v85 + 24) = 0xEB00000000776172;
  *(v85 + 32) = v82;
  *(v85 + 40) = v83;
  *(v85 + 48) = 24;
  *(v85 + 56) = 0;
  *(v85 + 58) = 0;
  *(v85 + 184) = 1065353216;
  *(v85 + 188) = 0;
  *(v85 + 192) = 1132462080;
  *(v85 + 196) = 0;
  *(v85 + 200) = 0x1000100000000;
  *(v85 + 208) = 1;
  *(v85 + 64) = 0;
  *(v85 + 72) = 0;
  *(v85 + 96) = 0;
  *(v85 + 104) = 0;
  *(v85 + 144) = xmmword_1AFE22A20;
  *(v85 + 80) = v84;
  *(v85 + 88) = &off_1F2535378;
  *(v85 + 210) = 0;
  v86 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v86)
  {
    v83 = (*(v86 + 8))();
  }

  v87 = swift_conformsToProtocol2();
  if (v87 && v83)
  {
    *(v85 + 160) = (*(v87 + 8))(v83, v87);
  }

  v88 = *(v85 + 64);
  v89 = *(v85 + 72);
  *(v85 + 64) = sub_1AF5A1DB4;
  *(v85 + 72) = v82;
  sub_1AF0FB8EC(v88, v89);
  *(v85 + 168) = 0;
  *(v85 + 176) = 0;

  *(v85 + 216) = 0;

  *(v206 + 88) = v85;
  v90 = swift_getKeyPath();
  v91 = swift_getKeyPath();
  v92 = swift_allocObject();
  v92[4] = sub_1AF5AA3EC;
  v92[5] = v91;
  v92[2] = sub_1AF5AA004;
  v92[3] = v91;
  v92[6] = v91;
  v93 = swift_allocObject();
  *(v93 + 112) = 1;
  *(v93 + 128) = 0;
  *(v93 + 136) = 0;
  *(v93 + 120) = 0;
  *(v93 + 160) = MEMORY[0x1E69E7CC0];
  *(v93 + 168) = 0;
  *(v93 + 210) = 0;
  *(v93 + 216) = 0;
  *(v93 + 176) = 0;
  *(v93 + 16) = 0xD000000000000012;
  *(v93 + 24) = 0x80000001AFF2BB80;
  *(v93 + 32) = v91;
  v94 = MEMORY[0x1E69E7360];
  *(v93 + 40) = MEMORY[0x1E69E7360];
  *(v93 + 48) = 0;
  *(v93 + 56) = 1;
  *(v93 + 58) = 0;
  *(v93 + 184) = 0;
  *(v93 + 188) = 1;
  *(v93 + 192) = 0;
  *(v93 + 196) = 1;
  *(v93 + 200) = 0x1000100000000;
  *(v93 + 208) = 1;
  *(v93 + 64) = 0;
  *(v93 + 72) = 0;
  *(v93 + 96) = 0;
  *(v93 + 104) = 0;
  *(v93 + 144) = xmmword_1AFE22A20;
  *(v93 + 80) = v92;
  *(v93 + 88) = &off_1F2535378;
  *(v93 + 210) = 0;
  swift_retain_n();
  if (v205)
  {
    v95 = (*(v205 + 8))();
  }

  else
  {
    v95 = v94;
  }

  v96 = swift_conformsToProtocol2();
  if (v96 && v95)
  {
    *(v93 + 160) = (*(v96 + 8))(v95, v96);
  }

  v97 = *(v93 + 64);
  v98 = *(v93 + 72);
  *(v93 + 64) = sub_1AF5A99C8;
  *(v93 + 72) = v91;
  sub_1AF0FB8EC(v97, v98);
  *(v93 + 168) = 0;
  *(v93 + 176) = 0;

  *(v93 + 216) = 0;

  v99 = &type metadata for ParticleAnimationMode;
  sub_1AF5A9240(0, &qword_1EB632F80, &type metadata for ParticleAnimationMode, type metadata accessor for EntityGetSet);
  v100 = swift_allocObject();
  v100[4] = sub_1AF5A1DF4;
  v100[5] = v90;
  v100[2] = sub_1AF5A1E20;
  v100[3] = v90;
  v100[6] = v90;
  v101 = swift_allocObject();
  *(v101 + 112) = 1;
  *(v101 + 128) = 0;
  *(v101 + 136) = 0;
  *(v101 + 120) = 0;
  *(v101 + 160) = MEMORY[0x1E69E7CC0];
  *(v101 + 168) = 0;
  *(v101 + 210) = 0;
  *(v101 + 216) = 0;
  *(v101 + 176) = 0;
  strcpy((v101 + 16), "animationMode");
  *(v101 + 30) = -4864;
  *(v101 + 32) = v90;
  *(v101 + 40) = &type metadata for ParticleAnimationMode;
  *(v101 + 48) = 28;
  *(v101 + 56) = 0;
  *(v101 + 58) = 0;
  *(v101 + 184) = 0;
  *(v101 + 188) = 1;
  *(v101 + 192) = 0;
  *(v101 + 196) = 1;
  *(v101 + 200) = 0x1000100000000;
  *(v101 + 208) = 1;
  *(v101 + 64) = 0;
  *(v101 + 72) = 0;
  *(v101 + 96) = 0;
  *(v101 + 104) = 0;
  *(v101 + 144) = xmmword_1AFE22A20;
  *(v101 + 80) = v100;
  *(v101 + 88) = &off_1F2535378;
  *(v101 + 210) = 0;
  v102 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v102)
  {
    v99 = (*(v102 + 8))();
  }

  v103 = swift_conformsToProtocol2();
  if (v103 && v99)
  {
    *(v101 + 160) = (*(v103 + 8))(v99, v103);
  }

  v104 = *(v101 + 64);
  v105 = *(v101 + 72);
  *(v101 + 64) = sub_1AF5A1E7C;
  *(v101 + 72) = v90;
  sub_1AF0FB8EC(v104, v105);
  *(v101 + 168) = 0;
  *(v101 + 176) = 0;

  *(v101 + 216) = v93;

  *(v206 + 96) = v101;
  v106 = swift_getKeyPath();
  v107 = swift_allocObject();
  v107[4] = sub_1AF5A956C;
  v107[5] = v106;
  v107[2] = sub_1AF5AA00C;
  v107[3] = v106;
  v107[6] = v106;
  v108 = swift_allocObject();
  *(v108 + 112) = 1;
  *(v108 + 128) = 0;
  *(v108 + 136) = 0;
  *(v108 + 120) = 0;
  *(v108 + 160) = MEMORY[0x1E69E7CC0];
  *(v108 + 168) = 0;
  *(v108 + 210) = 0;
  *(v108 + 216) = 0;
  *(v108 + 176) = 0;
  strcpy((v108 + 16), "softDistance");
  *(v108 + 29) = 0;
  *(v108 + 30) = -5120;
  *(v108 + 32) = v106;
  *(v108 + 40) = v42;
  *(v108 + 48) = 32;
  *(v108 + 56) = 0;
  *(v108 + 58) = 0;
  *(v108 + 184) = 0;
  *(v108 + 188) = 0;
  *(v108 + 192) = 0;
  *(v108 + 196) = 1;
  *(v108 + 200) = 0x1000100000000;
  *(v108 + 208) = 1;
  *(v108 + 64) = 0;
  *(v108 + 72) = 0;
  *(v108 + 96) = 0;
  *(v108 + 104) = 0;
  *(v108 + 144) = xmmword_1AFE22A20;
  *(v108 + 80) = v107;
  *(v108 + 88) = &off_1F2535378;
  *(v108 + 210) = 0;
  swift_retain_n();
  if (v202)
  {
    v42 = (*(v202 + 8))();
  }

  v109 = swift_conformsToProtocol2();
  if (v109 && v42)
  {
    *(v108 + 160) = (*(v109 + 8))(v42, v109);
  }

  v110 = *(v108 + 64);
  v111 = *(v108 + 72);
  *(v108 + 64) = sub_1AF5A99D0;
  *(v108 + 72) = v106;
  sub_1AF0FB8EC(v110, v111);
  *(v108 + 168) = 0;
  *(v108 + 176) = 0;

  *(v108 + 216) = 0;

  *(v206 + 104) = v108;
  v112 = swift_getKeyPath();
  sub_1AF5795B0(0);
  v113 = swift_allocObject();
  *(v113 + 16) = xmmword_1AFE431C0;
  *(v113 + 32) = 0;
  *(v113 + 40) = 0xE000000000000000;
  v114 = MEMORY[0x1E69E6530];
  *(v113 + 72) = MEMORY[0x1E69E6530];
  *(v113 + 48) = 16;
  sub_1AF5A9240(0, &qword_1ED722B68, v114, type metadata accessor for EntityGetSet);
  v115 = swift_allocObject();
  v115[4] = sub_1AF5A1820;
  v115[5] = v112;
  v115[2] = sub_1AF5A1EBC;
  v115[3] = v112;
  v115[6] = v112;
  v116 = swift_allocObject();
  *(v116 + 112) = 1;
  *(v116 + 128) = 0;
  *(v116 + 136) = 0;
  *(v116 + 120) = 0;
  *(v116 + 160) = MEMORY[0x1E69E7CC0];
  *(v116 + 168) = 0;
  *(v116 + 210) = 0;
  *(v116 + 216) = 0;
  *(v116 + 176) = 0;
  *(v116 + 16) = 0xD000000000000011;
  *(v116 + 24) = 0x80000001AFF24870;
  *(v116 + 32) = v112;
  *(v116 + 40) = v114;
  *(v116 + 48) = 88;
  *(v116 + 56) = 0;
  *(v116 + 58) = 0;
  *(v116 + 184) = 0;
  *(v116 + 188) = 0;
  *(v116 + 192) = 0;
  *(v116 + 196) = 1;
  *(v116 + 200) = 0x1000100000000;
  *(v116 + 208) = 1;
  *(v116 + 64) = 0;
  *(v116 + 72) = 0;
  *(v116 + 96) = 0;
  *(v116 + 104) = 0;
  *(v116 + 144) = xmmword_1AFE22A20;
  *(v116 + 80) = v115;
  *(v116 + 88) = &off_1F2535378;
  *(v116 + 210) = 0;
  v117 = *(v113 + 16);
  swift_retain_n();
  if (v117)
  {
    goto LABEL_85;
  }

  v118 = MEMORY[0x1E69E6530];
  v119 = swift_conformsToProtocol2();
  if (v119)
  {
    v118 = (*(v119 + 8))(MEMORY[0x1E69E6530], v119);
  }

  v120 = swift_conformsToProtocol2();
  if (v120 && v118)
  {
    v113 = (*(v120 + 8))(v118, v120);
LABEL_85:
    *(v116 + 160) = v113;
  }

  v121 = *(v116 + 64);
  v122 = *(v116 + 72);
  *(v116 + 64) = sub_1AF5A1F18;
  *(v116 + 72) = v112;
  sub_1AF0FB8EC(v121, v122);
  *(v116 + 168) = 0;
  *(v116 + 176) = 0;

  *(v116 + 216) = 0;

  *(v206 + 112) = v116;
  v123 = swift_getKeyPath();
  v124 = swift_allocObject();
  *(v124 + 16) = xmmword_1AFE431C0;
  *(v124 + 32) = 0;
  *(v124 + 40) = 0xE000000000000000;
  *(v124 + 72) = v114;
  *(v124 + 48) = 2;
  v125 = swift_allocObject();
  v125[4] = sub_1AF5AA3EC;
  v125[5] = v123;
  v125[2] = sub_1AF5AA010;
  v125[3] = v123;
  v125[6] = v123;
  v126 = swift_allocObject();
  *(v126 + 112) = 1;
  *(v126 + 128) = 0;
  *(v126 + 136) = 0;
  *(v126 + 120) = 0;
  *(v126 + 160) = MEMORY[0x1E69E7CC0];
  *(v126 + 168) = 0;
  *(v126 + 176) = 0;
  *(v126 + 210) = 0;
  *(v126 + 216) = 0;
  *(v126 + 16) = 0x6F436E6F62626972;
  *(v126 + 24) = 0xEB00000000746E75;
  *(v126 + 32) = v123;
  *(v126 + 40) = v114;
  *(v126 + 48) = 96;
  *(v126 + 56) = 0;
  *(v126 + 58) = 0;
  *(v126 + 184) = 1065353216;
  *(v126 + 188) = 0;
  *(v126 + 192) = 0;
  *(v126 + 196) = 1;
  *(v126 + 200) = 0x1000100000000;
  *(v126 + 208) = 1;
  *(v126 + 64) = 0;
  *(v126 + 72) = 0;
  *(v126 + 96) = 0;
  *(v126 + 104) = 0;
  *(v126 + 144) = xmmword_1AFE22A20;
  *(v126 + 80) = v125;
  *(v126 + 88) = &off_1F2535378;
  *(v126 + 210) = 0;
  v127 = *(v124 + 16);
  swift_retain_n();
  if (v127)
  {
LABEL_92:
    *(v126 + 160) = v124;

    goto LABEL_93;
  }

  v128 = MEMORY[0x1E69E6530];
  v129 = swift_conformsToProtocol2();
  if (v129)
  {
    v128 = (*(v129 + 8))(MEMORY[0x1E69E6530], v129);
  }

  v130 = swift_conformsToProtocol2();
  if (v130 && v128)
  {
    v124 = (*(v130 + 8))(v128, v130);
    goto LABEL_92;
  }

LABEL_93:
  v131 = *(v126 + 64);
  v132 = *(v126 + 72);
  *(v126 + 64) = sub_1AF5A99D4;
  *(v126 + 72) = v123;
  sub_1AF0FB8EC(v131, v132);
  *(v126 + 168) = 0;
  *(v126 + 176) = 0;

  *(v126 + 216) = 0;

  *(v206 + 120) = v126;
  v133 = swift_getKeyPath();
  v134 = swift_allocObject();
  v134[4] = sub_1AF5AA3EC;
  v134[5] = v133;
  v134[2] = sub_1AF5AA010;
  v134[3] = v133;
  v134[6] = v133;
  v135 = swift_allocObject();
  *(v135 + 112) = 1;
  *(v135 + 128) = 0;
  *(v135 + 136) = 0;
  *(v135 + 120) = 0;
  *(v135 + 160) = MEMORY[0x1E69E7CC0];
  *(v135 + 168) = 0;
  *(v135 + 176) = 0;
  *(v135 + 210) = 0;
  *(v135 + 216) = 0;
  *(v135 + 16) = 0xD000000000000010;
  *(v135 + 24) = 0x80000001AFF24890;
  *(v135 + 32) = v133;
  *(v135 + 40) = v114;
  *(v135 + 48) = 56;
  *(v135 + 56) = 0;
  *(v135 + 58) = 0;
  *(v135 + 184) = 0;
  *(v135 + 188) = 0;
  *(v135 + 192) = 1107296256;
  *(v135 + 196) = 0;
  *(v135 + 200) = 0x1000100000000;
  *(v135 + 208) = 1;
  *(v135 + 64) = 0;
  *(v135 + 72) = 0;
  *(v135 + 96) = 0;
  *(v135 + 104) = 0;
  *(v135 + 144) = xmmword_1AFE22A20;
  *(v135 + 80) = v134;
  *(v135 + 88) = &off_1F2535378;
  *(v135 + 210) = 0;
  v136 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v136)
  {
    v114 = (*(v136 + 8))();
  }

  v137 = MEMORY[0x1E69E7360];
  v138 = swift_conformsToProtocol2();
  if (v138 && v114)
  {
    *(v135 + 160) = (*(v138 + 8))(v114, v138);
  }

  v139 = *(v135 + 64);
  v140 = *(v135 + 72);
  *(v135 + 64) = sub_1AF5A99D4;
  *(v135 + 72) = v133;
  sub_1AF0FB8EC(v139, v140);
  *(v135 + 168) = 0;
  *(v135 + 176) = 0;

  *(v135 + 216) = 0;

  *(v206 + 128) = v135;
  v141 = swift_getKeyPath();
  v142 = swift_getKeyPath();
  v143 = swift_allocObject();
  v143[4] = sub_1AF5AA3EC;
  v143[5] = v142;
  v143[2] = sub_1AF5AA004;
  v143[3] = v142;
  v143[6] = v142;
  v144 = swift_allocObject();
  *(v144 + 112) = 1;
  *(v144 + 128) = 0;
  *(v144 + 136) = 0;
  *(v144 + 120) = 0;
  *(v144 + 160) = MEMORY[0x1E69E7CC0];
  *(v144 + 168) = 0;
  *(v144 + 176) = 0;
  *(v144 + 210) = 0;
  *(v144 + 216) = 0;
  strcpy((v144 + 16), "profileIndex");
  *(v144 + 29) = 0;
  *(v144 + 30) = -5120;
  *(v144 + 32) = v142;
  *(v144 + 40) = v137;
  *(v144 + 48) = 0;
  *(v144 + 56) = 1;
  *(v144 + 58) = 0;
  *(v144 + 184) = 0;
  *(v144 + 188) = 1;
  *(v144 + 192) = 0;
  *(v144 + 196) = 1;
  *(v144 + 200) = 0x1000100000000;
  *(v144 + 208) = 1;
  *(v144 + 64) = 0;
  *(v144 + 72) = 0;
  *(v144 + 96) = 0;
  *(v144 + 104) = 0;
  *(v144 + 144) = xmmword_1AFE22A20;
  *(v144 + 80) = v143;
  *(v144 + 88) = &off_1F2535378;
  *(v144 + 210) = 0;
  swift_retain_n();
  if (v205)
  {
    v145 = (*(v205 + 8))();
  }

  else
  {
    v145 = v137;
  }

  v146 = swift_conformsToProtocol2();
  if (v146 && v145)
  {
    *(v144 + 160) = (*(v146 + 8))(v145, v146);
  }

  v147 = *(v144 + 64);
  v148 = *(v144 + 72);
  *(v144 + 64) = sub_1AF5A99C8;
  *(v144 + 72) = v142;
  sub_1AF0FB8EC(v147, v148);
  *(v144 + 168) = 0;
  *(v144 + 176) = 0;

  *(v144 + 216) = 0;

  v149 = &type metadata for ParticleRibbonProfile;
  sub_1AF5A9240(0, &qword_1EB63B690, &type metadata for ParticleRibbonProfile, type metadata accessor for EntityGetSet);
  v150 = swift_allocObject();
  v150[4] = sub_1AF5A1F58;
  v150[5] = v141;
  v150[2] = sub_1AF5A1F84;
  v150[3] = v141;
  v150[6] = v141;
  v151 = swift_allocObject();
  *(v151 + 112) = 1;
  *(v151 + 128) = 0;
  *(v151 + 136) = 0;
  *(v151 + 120) = 0;
  *(v151 + 160) = MEMORY[0x1E69E7CC0];
  *(v151 + 168) = 0;
  *(v151 + 176) = 0;
  *(v151 + 216) = 0;
  *(v151 + 16) = 0x656C69666F7270;
  *(v151 + 24) = 0xE700000000000000;
  *(v151 + 32) = v141;
  *(v151 + 40) = &type metadata for ParticleRibbonProfile;
  *(v151 + 48) = 64;
  *(v151 + 56) = 0;
  *(v151 + 58) = 0;
  *(v151 + 184) = 0;
  *(v151 + 188) = 1;
  *(v151 + 192) = 0;
  *(v151 + 196) = 1;
  *(v151 + 200) = 0x1000100000000;
  *(v151 + 208) = 1;
  *(v151 + 64) = 0;
  *(v151 + 72) = 0;
  *(v151 + 96) = 0;
  *(v151 + 104) = 0;
  *(v151 + 144) = xmmword_1AFE22A20;
  *(v151 + 80) = v150;
  *(v151 + 88) = &off_1F2535378;
  *(v151 + 210) = 0;
  v152 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v152)
  {
    v149 = (*(v152 + 8))();
  }

  v153 = &type metadata for Entity;
  v154 = swift_conformsToProtocol2();
  if (v154 && v149)
  {
    *(v151 + 160) = (*(v154 + 8))(v149, v154);
  }

  *(v151 + 64) = sub_1AF5A1FE0;
  *(v151 + 72) = v141;
  sub_1AF0FB8EC(0, 0);
  *(v151 + 168) = 0;
  *(v151 + 176) = 0;

  *(v151 + 216) = v144;
  *(v206 + 136) = v151;
  v155 = swift_getKeyPath();
  v156 = swift_getKeyPath();
  v157 = swift_allocObject();
  v157[4] = sub_1AF5AA3EC;
  v157[5] = v155;
  v157[2] = sub_1AF5AA014;
  v157[3] = v155;
  v157[6] = v155;
  v158 = swift_allocObject();
  *(v158 + 112) = 1;
  *(v158 + 128) = 0;
  *(v158 + 136) = 0;
  *(v158 + 120) = 0;
  *(v158 + 160) = MEMORY[0x1E69E7CC0];
  *(v158 + 168) = 0;
  *(v158 + 176) = 0;
  *(v158 + 216) = 0;
  *(v158 + 16) = 0x7061436E69676562;
  *(v158 + 24) = 0xEF65727574786554;
  *(v158 + 32) = v155;
  *(v158 + 40) = &type metadata for Entity;
  *(v158 + 48) = 68;
  *(v158 + 56) = 0;
  *(v158 + 58) = 0;
  *(v158 + 184) = 0;
  *(v158 + 188) = 1;
  *(v158 + 192) = 0;
  *(v158 + 196) = 1;
  *(v158 + 200) = 0x1000100000000;
  *(v158 + 208) = 1;
  *(v158 + 64) = 0;
  *(v158 + 72) = 0;
  *(v158 + 96) = v156;
  *(v158 + 104) = 0;
  *(v158 + 144) = xmmword_1AFE551B0;
  *(v158 + 80) = v157;
  *(v158 + 88) = &off_1F2535378;
  *(v158 + 210) = 0;
  swift_retain_n();

  if (v204)
  {
    v159 = (*(v204 + 8))();
  }

  else
  {
    v159 = &type metadata for Entity;
  }

  v160 = swift_conformsToProtocol2();
  if (v160 && v159)
  {
    v161 = (*(v160 + 8))(v159, v160);

    *(v158 + 160) = v161;
  }

  else
  {
  }

  *(v158 + 64) = sub_1AF5A99D8;
  *(v158 + 72) = v155;
  sub_1AF0FB8EC(0, 0);
  *(v158 + 168) = 0;
  *(v158 + 176) = 0;

  *(v158 + 216) = 0;
  *(v206 + 144) = v158;
  v162 = swift_getKeyPath();
  v163 = swift_getKeyPath();
  v164 = swift_allocObject();
  v164[4] = sub_1AF5AA3EC;
  v164[5] = v162;
  v164[2] = sub_1AF5AA014;
  v164[3] = v162;
  v164[6] = v162;
  v165 = swift_allocObject();
  *(v165 + 112) = 1;
  *(v165 + 128) = 0;
  *(v165 + 136) = 0;
  *(v165 + 120) = 0;
  *(v165 + 160) = MEMORY[0x1E69E7CC0];
  *(v165 + 168) = 0;
  *(v165 + 176) = 0;
  *(v165 + 216) = 0;
  strcpy((v165 + 16), "endCapTexture");
  *(v165 + 30) = -4864;
  *(v165 + 32) = v162;
  *(v165 + 40) = &type metadata for Entity;
  *(v165 + 48) = 76;
  *(v165 + 56) = 0;
  *(v165 + 58) = 0;
  *(v165 + 184) = 0;
  *(v165 + 188) = 1;
  *(v165 + 192) = 0;
  *(v165 + 196) = 1;
  *(v165 + 200) = 0x1000100000000;
  *(v165 + 208) = 1;
  *(v165 + 64) = 0;
  *(v165 + 72) = 0;
  *(v165 + 96) = v163;
  *(v165 + 104) = 0;
  *(v165 + 144) = xmmword_1AFE551B0;
  *(v165 + 80) = v164;
  *(v165 + 88) = &off_1F2535378;
  *(v165 + 210) = 0;
  swift_retain_n();

  if (v204)
  {
    v153 = (*(v204 + 8))();
  }

  v166 = swift_conformsToProtocol2();
  if (v166 && v153)
  {
    v167 = (*(v166 + 8))(v153, v166);

    *(v165 + 160) = v167;
  }

  else
  {
  }

  *(v165 + 64) = sub_1AF5A99D8;
  *(v165 + 72) = v162;
  sub_1AF0FB8EC(0, 0);
  *(v165 + 168) = 0;
  *(v165 + 176) = 0;

  *(v165 + 216) = 0;
  *(v206 + 152) = v165;
  v168 = swift_getKeyPath();
  v169 = swift_getKeyPath();
  v170 = swift_allocObject();
  v170[4] = sub_1AF5AA3EC;
  v170[5] = v169;
  v170[2] = sub_1AF5AA004;
  v170[3] = v169;
  v170[6] = v169;
  v171 = swift_allocObject();
  *(v171 + 112) = 1;
  *(v171 + 128) = 0;
  *(v171 + 136) = 0;
  *(v171 + 120) = 0;
  *(v171 + 160) = MEMORY[0x1E69E7CC0];
  *(v171 + 168) = 0;
  *(v171 + 176) = 0;
  *(v171 + 216) = 0;
  *(v171 + 16) = 0xD000000000000010;
  *(v171 + 24) = 0x80000001AFF2BC40;
  *(v171 + 32) = v169;
  v172 = MEMORY[0x1E69E7360];
  *(v171 + 40) = MEMORY[0x1E69E7360];
  *(v171 + 48) = 0;
  *(v171 + 56) = 1;
  *(v171 + 58) = 0;
  *(v171 + 184) = 0;
  *(v171 + 188) = 1;
  *(v171 + 192) = 0;
  *(v171 + 196) = 1;
  *(v171 + 200) = 0x1000100000000;
  *(v171 + 208) = 1;
  *(v171 + 64) = 0;
  *(v171 + 72) = 0;
  *(v171 + 96) = 0;
  *(v171 + 104) = 0;
  *(v171 + 144) = xmmword_1AFE22A20;
  *(v171 + 80) = v170;
  *(v171 + 88) = &off_1F2535378;
  *(v171 + 210) = 0;
  swift_retain_n();
  if (v205)
  {
    v172 = (*(v205 + 8))();
  }

  v173 = swift_conformsToProtocol2();
  if (v173 && v172)
  {
    *(v171 + 160) = (*(v173 + 8))(v172, v173);
  }

  *(v171 + 64) = sub_1AF5A99C8;
  *(v171 + 72) = v169;
  sub_1AF0FB8EC(0, 0);
  *(v171 + 168) = 0;
  *(v171 + 176) = 0;

  *(v171 + 216) = 0;
  v174 = &type metadata for ParticleRibbonTextureMode;
  sub_1AF5A9240(0, &qword_1EB63B698, &type metadata for ParticleRibbonTextureMode, type metadata accessor for EntityGetSet);
  v175 = swift_allocObject();
  v175[4] = sub_1AF5AA278;
  v175[5] = v168;
  v175[2] = sub_1AF5A2020;
  v175[3] = v168;
  v175[6] = v168;
  v176 = swift_allocObject();
  *(v176 + 112) = 1;
  *(v176 + 128) = 0;
  *(v176 + 136) = 0;
  *(v176 + 120) = 0;
  *(v176 + 160) = MEMORY[0x1E69E7CC0];
  *(v176 + 168) = 0;
  *(v176 + 176) = 0;
  *(v176 + 216) = 0;
  *(v176 + 16) = 0x4D65727574786574;
  *(v176 + 24) = 0xEB0000000065646FLL;
  *(v176 + 32) = v168;
  *(v176 + 40) = &type metadata for ParticleRibbonTextureMode;
  *(v176 + 48) = 39;
  *(v176 + 56) = 0;
  *(v176 + 58) = 0;
  *(v176 + 184) = 0;
  *(v176 + 188) = 1;
  *(v176 + 192) = 0;
  *(v176 + 196) = 1;
  *(v176 + 200) = 0x1000100000000;
  *(v176 + 208) = 1;
  *(v176 + 64) = 0;
  *(v176 + 72) = 0;
  *(v176 + 96) = 0;
  *(v176 + 104) = 0;
  *(v176 + 144) = xmmword_1AFE22A20;
  *(v176 + 80) = v175;
  *(v176 + 88) = &off_1F2535378;
  *(v176 + 210) = 0;
  v177 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v177)
  {
    v174 = (*(v177 + 8))();
  }

  v178 = swift_conformsToProtocol2();
  if (v178 && v174)
  {
    *(v176 + 160) = (*(v178 + 8))(v174, v178);
  }

  *(v176 + 64) = sub_1AF5A207C;
  *(v176 + 72) = v168;
  sub_1AF0FB8EC(0, 0);
  *(v176 + 168) = 0;
  *(v176 + 176) = 0;

  *(v176 + 216) = v171;
  *(v206 + 160) = v176;
  v179 = swift_getKeyPath();
  sub_1AF57C8C8(0);
  v180 = swift_allocObject();
  v180[4] = sub_1AF5A1820;
  v180[5] = v179;
  v180[2] = sub_1AF5A20BC;
  v180[3] = v179;
  v180[6] = v179;
  v181 = swift_allocObject();
  *(v181 + 104) = 0;
  *(v181 + 112) = 1;
  *(v181 + 128) = 0;
  *(v181 + 136) = 0;
  *(v181 + 120) = 0;
  *(v181 + 160) = MEMORY[0x1E69E7CC0];
  *(v181 + 168) = 0;
  *(v181 + 176) = 0;
  *(v181 + 216) = 0;
  sub_1AF583D60(0, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
  v183 = v182;
  strcpy((v181 + 16), "textureScale");
  *(v181 + 29) = 0;
  *(v181 + 30) = -5120;
  *(v181 + 32) = v179;
  *(v181 + 40) = v182;
  *(v181 + 48) = 40;
  *(v181 + 56) = 0;
  *(v181 + 58) = 0;
  *(v181 + 184) = 0;
  *(v181 + 188) = 1;
  *(v181 + 192) = 0;
  *(v181 + 196) = 1;
  *(v181 + 200) = 0x1000100000000;
  *(v181 + 208) = 1;
  *(v181 + 64) = 0;
  *(v181 + 72) = 0;
  *(v181 + 96) = 0;
  *(v181 + 144) = xmmword_1AFE22A20;
  *(v181 + 80) = v180;
  *(v181 + 88) = &off_1F2535378;
  *(v181 + 210) = 0;
  v184 = swift_conformsToProtocol2();
  if (v184)
  {
    v185 = v183;
  }

  else
  {
    v185 = 0;
  }

  swift_retain_n();
  v186 = v183;
  if (v185)
  {
    v186 = (*(v184 + 8))(v185, v184);
  }

  v187 = swift_conformsToProtocol2();
  if (v187 && v186)
  {
    *(v181 + 160) = (*(v187 + 8))(v186, v187);
  }

  v188 = *(v181 + 64);
  v189 = *(v181 + 72);
  *(v181 + 64) = sub_1AF5A2118;
  *(v181 + 72) = v179;
  sub_1AF0FB8EC(v188, v189);
  *(v181 + 168) = 0;
  *(v181 + 176) = 0;

  *(v181 + 216) = 0;

  *(v206 + 168) = v181;
  v190 = swift_getKeyPath();
  v191 = swift_allocObject();
  v191[4] = sub_1AF5AA3EC;
  v191[5] = v190;
  v191[2] = sub_1AF5AA018;
  v191[3] = v190;
  v191[6] = v190;
  v192 = swift_allocObject();
  *(v192 + 112) = 1;
  *(v192 + 128) = 0;
  *(v192 + 136) = 0;
  *(v192 + 120) = 0;
  *(v192 + 160) = MEMORY[0x1E69E7CC0];
  *(v192 + 168) = 0;
  *(v192 + 176) = 0;
  *(v192 + 216) = 0;
  *(v192 + 16) = 0x4265727574786574;
  *(v192 + 24) = 0xEB00000000736169;
  *(v192 + 32) = v190;
  *(v192 + 40) = v183;
  *(v192 + 48) = 48;
  *(v192 + 56) = 0;
  *(v192 + 58) = 0;
  *(v192 + 184) = 0;
  *(v192 + 188) = 1;
  *(v192 + 192) = 0;
  *(v192 + 196) = 1;
  *(v192 + 200) = 0x1000100000000;
  *(v192 + 208) = 1;
  *(v192 + 64) = 0;
  *(v192 + 72) = 0;
  *(v192 + 96) = 0;
  *(v192 + 104) = 0;
  *(v192 + 144) = xmmword_1AFE22A20;
  *(v192 + 80) = v191;
  *(v192 + 88) = &off_1F2535378;
  *(v192 + 210) = 0;
  swift_retain_n();
  if (v185)
  {
    v183 = (*(v184 + 8))(v185, v184);
  }

  v193 = swift_conformsToProtocol2();
  if (v193 && v183)
  {
    *(v192 + 160) = (*(v193 + 8))(v183, v193);
  }

  v194 = *(v192 + 64);
  v195 = *(v192 + 72);
  *(v192 + 64) = sub_1AF5A99DC;
  *(v192 + 72) = v190;
  sub_1AF0FB8EC(v194, v195);
  *(v192 + 168) = 0;
  *(v192 + 176) = 0;

  *(v192 + 216) = 0;

  *(v206 + 176) = v192;
  v196 = swift_getKeyPath();
  v197 = swift_allocObject();
  v197[4] = sub_1AF5AA270;
  v197[5] = v196;
  v197[2] = sub_1AF5AA008;
  v197[3] = v196;
  v197[6] = v196;
  v198 = swift_allocObject();
  *(v198 + 112) = 1;
  *(v198 + 128) = 0;
  *(v198 + 136) = 0;
  *(v198 + 120) = 0;
  *(v198 + 160) = MEMORY[0x1E69E7CC0];
  *(v198 + 168) = 0;
  *(v198 + 176) = 0;
  *(v198 + 216) = 0;
  strcpy((v198 + 16), "avoidOverdraw");
  *(v198 + 30) = -4864;
  *(v198 + 32) = v196;
  v199 = MEMORY[0x1E69E6370];
  *(v198 + 40) = MEMORY[0x1E69E6370];
  *(v198 + 48) = 104;
  *(v198 + 56) = 0;
  *(v198 + 58) = 0;
  *(v198 + 184) = 0;
  *(v198 + 188) = 1;
  *(v198 + 192) = 0;
  *(v198 + 196) = 1;
  *(v198 + 200) = 0x1000100000000;
  *(v198 + 208) = 1;
  *(v198 + 64) = 0;
  *(v198 + 72) = 0;
  *(v198 + 96) = 0;
  *(v198 + 104) = 0;
  *(v198 + 144) = xmmword_1AFE22A20;
  *(v198 + 80) = v197;
  *(v198 + 88) = &off_1F2535378;
  *(v198 + 210) = 0;
  swift_retain_n();
  if (v203)
  {
    v199 = (*(v203 + 8))();
  }

  v200 = swift_conformsToProtocol2();
  if (v200 && v199)
  {
    *(v198 + 160) = (*(v200 + 8))(v199, v200);
  }

  *(v198 + 64) = sub_1AF5A99CC;
  *(v198 + 72) = v196;
  sub_1AF0FB8EC(0, 0);
  *(v198 + 168) = 0;
  *(v198 + 176) = 0;

  *(v198 + 216) = 0;
  *(v206 + 184) = v198;
  qword_1EB6C30A8 = v206;
  return result;
}