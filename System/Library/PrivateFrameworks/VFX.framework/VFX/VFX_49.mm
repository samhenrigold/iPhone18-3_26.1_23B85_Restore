uint64_t sub_1AF4D1FBC(uint64_t result)
{
  v2 = result;
  if (result >= 3u)
  {
    v2 = 3;
  }

  *(v1 + 29) = v2;
  return result;
}

uint64_t sub_1AF4D2090()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE551C0;
  KeyPath = swift_getKeyPath();
  v2 = &type metadata for Entity;
  sub_1AF5A9240(0, &unk_1EB6338D8, &type metadata for Entity, type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF58F084;
  v3[5] = KeyPath;
  v3[2] = sub_1AF58F0B8;
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
  *(v4 + 16) = 0x636143746E696F70;
  *(v4 + 24) = 0xEA00000000006568;
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
  *(v4 + 144) = xmmword_1AFE55250;
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

  *(v4 + 64) = sub_1AF58F114;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0, 0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  v7 = swift_getKeyPath();
  v8 = MEMORY[0x1E69E6370];
  sub_1AF5A9240(0, &qword_1ED722B80, MEMORY[0x1E69E6370], type metadata accessor for EntityGetSet);
  v9 = swift_allocObject();
  v9[4] = sub_1AF58F154;
  v9[5] = v7;
  v9[2] = sub_1AF58F180;
  v9[3] = v7;
  v9[6] = v7;
  v10 = swift_allocObject();
  *(v10 + 112) = 1;
  *(v10 + 128) = 0;
  *(v10 + 136) = 0;
  *(v10 + 120) = 0;
  *(v10 + 160) = MEMORY[0x1E69E7CC0];
  *(v10 + 168) = 0;
  *(v10 + 216) = 0;
  *(v10 + 176) = 0;
  *(v10 + 16) = 0xD000000000000013;
  *(v10 + 24) = 0x80000001AFF29580;
  *(v10 + 32) = v7;
  *(v10 + 40) = v8;
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
  *(v10 + 144) = xmmword_1AFE22A20;
  *(v10 + 80) = v9;
  *(v10 + 88) = &off_1F2535378;
  *(v10 + 210) = 0;
  v11 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v11)
  {
    v12 = (*(v11 + 8))();
  }

  else
  {
    v12 = v8;
  }

  v13 = swift_conformsToProtocol2();
  if (v13 && v12)
  {
    *(v10 + 160) = (*(v13 + 8))(v12, v13);
  }

  *(v10 + 64) = sub_1AF58F1DC;
  *(v10 + 72) = v7;
  sub_1AF0FB8EC(0, 0);
  *(v10 + 168) = 0;
  *(v10 + 176) = 0;

  *(v10 + 216) = 0;
  *(v0 + 40) = v10;
  v14 = swift_getKeyPath();
  v15 = swift_allocObject();
  v15[4] = sub_1AF5AA15C;
  v15[5] = v14;
  v15[2] = sub_1AF5A9CCC;
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
  strcpy((v16 + 16), "inheritColor");
  *(v16 + 29) = 0;
  *(v16 + 30) = -5120;
  *(v16 + 32) = v14;
  *(v16 + 40) = v8;
  *(v16 + 48) = 9;
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
  if (v11)
  {
    v17 = (*(v11 + 8))();
  }

  else
  {
    v17 = v8;
  }

  v18 = swift_conformsToProtocol2();
  if (v18 && v17)
  {
    *(v16 + 160) = (*(v18 + 8))(v17, v18);
  }

  *(v16 + 64) = sub_1AF5A97D8;
  *(v16 + 72) = v14;
  sub_1AF0FB8EC(0, 0);
  *(v16 + 168) = 0;
  *(v16 + 176) = 0;

  *(v16 + 216) = 0;
  *(v0 + 48) = v16;
  v19 = swift_getKeyPath();
  v20 = swift_allocObject();
  v20[4] = sub_1AF5AA15C;
  v20[5] = v19;
  v20[2] = sub_1AF5A9CCC;
  v20[3] = v19;
  v20[6] = v19;
  v21 = swift_allocObject();
  *(v21 + 112) = 1;
  *(v21 + 128) = 0;
  *(v21 + 136) = 0;
  *(v21 + 120) = 0;
  *(v21 + 160) = MEMORY[0x1E69E7CC0];
  *(v21 + 168) = 0;
  *(v21 + 216) = 0;
  *(v21 + 176) = 0;
  *(v21 + 16) = 0xD000000000000012;
  *(v21 + 24) = 0x80000001AFF23530;
  *(v21 + 32) = v19;
  *(v21 + 40) = v8;
  *(v21 + 48) = 10;
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
  swift_retain_n();
  if (v11)
  {
    v22 = (*(v11 + 8))();
  }

  else
  {
    v22 = v8;
  }

  v23 = swift_conformsToProtocol2();
  if (v23 && v22)
  {
    *(v21 + 160) = (*(v23 + 8))(v22, v23);
  }

  *(v21 + 64) = sub_1AF5A97D8;
  *(v21 + 72) = v19;
  sub_1AF0FB8EC(0, 0);
  *(v21 + 168) = 0;
  *(v21 + 176) = 0;

  *(v21 + 216) = 0;
  *(v0 + 56) = v21;
  v24 = swift_getKeyPath();
  v25 = swift_allocObject();
  v25[4] = sub_1AF5AA15C;
  v25[5] = v24;
  v25[2] = sub_1AF5A9CCC;
  v25[3] = v24;
  v25[6] = v24;
  v26 = swift_allocObject();
  *(v26 + 112) = 1;
  *(v26 + 128) = 0;
  *(v26 + 136) = 0;
  *(v26 + 120) = 0;
  *(v26 + 160) = MEMORY[0x1E69E7CC0];
  *(v26 + 168) = 0;
  *(v26 + 216) = 0;
  *(v26 + 176) = 0;
  *(v26 + 16) = 0x5374697265686E69;
  *(v26 + 24) = 0xEB00000000657A69;
  *(v26 + 32) = v24;
  *(v26 + 40) = v8;
  *(v26 + 48) = 11;
  *(v26 + 56) = 0;
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
  if (v11)
  {
    v8 = (*(v11 + 8))();
  }

  v27 = swift_conformsToProtocol2();
  if (v27 && v8)
  {
    *(v26 + 160) = (*(v27 + 8))(v8, v27);
  }

  *(v26 + 64) = sub_1AF5A97D8;
  *(v26 + 72) = v24;
  sub_1AF0FB8EC(0, 0);
  *(v26 + 168) = 0;
  *(v26 + 176) = 0;

  *(v26 + 216) = 0;
  *(v0 + 64) = v26;
  qword_1EB6C2EC0 = v0;
  return result;
}

uint64_t sub_1AF4D2B2C()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE55130;
  KeyPath = swift_getKeyPath();
  sub_1AF57F2F4(0);
  v2 = swift_allocObject();
  v2[4] = sub_1AF58F2DC;
  v2[5] = KeyPath;
  v2[2] = sub_1AF58F320;
  v2[3] = KeyPath;
  v2[6] = KeyPath;
  type metadata accessor for PropertyDescription();
  v3 = swift_allocObject();
  *(v3 + 104) = 0;
  *(v3 + 112) = 1;
  *(v3 + 128) = 0;
  *(v3 + 136) = 0;
  *(v3 + 120) = 0;
  *(v3 + 160) = MEMORY[0x1E69E7CC0];
  *(v3 + 216) = 0;
  sub_1AF589E74(0, &qword_1ED72F958, MEMORY[0x1E69E6448], MEMORY[0x1E69E6468], MEMORY[0x1E69E66A8]);
  v5 = v4;
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;
  *(v3 + 16) = 0x74657366664F78;
  *(v3 + 24) = 0xE700000000000000;
  *(v3 + 32) = KeyPath;
  *(v3 + 40) = v4;
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  *(v3 + 58) = 0;
  *(v3 + 184) = 0;
  *(v3 + 188) = 1;
  *(v3 + 192) = 0;
  *(v3 + 196) = 1;
  *(v3 + 200) = 0x1000100000000;
  *(v3 + 208) = 1;
  *(v3 + 96) = 0;
  *(v3 + 64) = 0;
  *(v3 + 72) = 0;
  *(v3 + 144) = xmmword_1AFE22A20;
  *(v3 + 80) = v2;
  *(v3 + 88) = &off_1F2535378;
  *(v3 + 210) = 0;
  v6 = swift_conformsToProtocol2();
  if (v6)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  swift_retain_n();
  v8 = v5;
  if (v7)
  {
    v8 = (*(v6 + 8))(v7, v6);
  }

  v9 = swift_conformsToProtocol2();
  if (v9 && v8)
  {
    *(v3 + 160) = (*(v9 + 8))(v8, v9);
  }

  v10 = *(v3 + 64);
  v11 = *(v3 + 72);
  *(v3 + 64) = sub_1AF58F37C;
  *(v3 + 72) = KeyPath;
  sub_1AF0FB8EC(v10, v11);
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;

  *(v3 + 216) = 0;

  *(v0 + 32) = v3;
  v12 = swift_getKeyPath();
  v13 = swift_allocObject();
  v13[4] = sub_1AF5AA368;
  v13[5] = v12;
  v13[2] = sub_1AF5AA4DC;
  v13[3] = v12;
  v13[6] = v12;
  v14 = swift_allocObject();
  *(v14 + 112) = 1;
  *(v14 + 128) = 0;
  *(v14 + 136) = 0;
  *(v14 + 120) = 0;
  *(v14 + 160) = MEMORY[0x1E69E7CC0];
  *(v14 + 168) = 0;
  *(v14 + 216) = 0;
  *(v14 + 176) = 0;
  *(v14 + 16) = 0x74657366664F79;
  *(v14 + 24) = 0xE700000000000000;
  *(v14 + 32) = v12;
  *(v14 + 40) = v5;
  *(v14 + 48) = 8;
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
  *(v14 + 96) = 0;
  *(v14 + 104) = 0;
  *(v14 + 144) = xmmword_1AFE22A20;
  *(v14 + 80) = v13;
  *(v14 + 88) = &off_1F2535378;
  *(v14 + 210) = 0;
  swift_retain_n();
  v15 = v5;
  if (v7)
  {
    v15 = (*(v6 + 8))(v7, v6);
  }

  v16 = swift_conformsToProtocol2();
  if (v16 && v15)
  {
    *(v14 + 160) = (*(v16 + 8))(v15, v16);
  }

  v17 = *(v14 + 64);
  v18 = *(v14 + 72);
  *(v14 + 64) = sub_1AF5A97DC;
  *(v14 + 72) = v12;
  sub_1AF0FB8EC(v17, v18);
  *(v14 + 168) = 0;
  *(v14 + 176) = 0;

  *(v14 + 216) = 0;

  *(v0 + 40) = v14;
  v19 = swift_getKeyPath();
  v20 = swift_allocObject();
  v20[4] = sub_1AF5AA368;
  v20[5] = v19;
  v20[2] = sub_1AF5AA4DC;
  v20[3] = v19;
  v20[6] = v19;
  v21 = swift_allocObject();
  *(v21 + 112) = 1;
  *(v21 + 128) = 0;
  *(v21 + 136) = 0;
  *(v21 + 120) = 0;
  *(v21 + 160) = MEMORY[0x1E69E7CC0];
  *(v21 + 168) = 0;
  *(v21 + 216) = 0;
  *(v21 + 176) = 0;
  *(v21 + 16) = 0x74657366664F7ALL;
  *(v21 + 24) = 0xE700000000000000;
  *(v21 + 32) = v19;
  *(v21 + 40) = v5;
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
  swift_retain_n();
  if (v7)
  {
    v5 = (*(v6 + 8))(v7, v6);
  }

  v22 = swift_conformsToProtocol2();
  if (v22 && v5)
  {
    *(v21 + 160) = (*(v22 + 8))(v5, v22);
  }

  v23 = *(v21 + 64);
  v24 = *(v21 + 72);
  *(v21 + 64) = sub_1AF5A97DC;
  *(v21 + 72) = v19;
  sub_1AF0FB8EC(v23, v24);
  *(v21 + 168) = 0;
  *(v21 + 176) = 0;

  *(v21 + 216) = 0;

  *(v0 + 48) = v21;
  qword_1EB6C2EC8 = v0;
  return result;
}

unint64_t sub_1AF4D3210(uint64_t a1)
{
  if (swift_dynamicCastMetatype())
  {
    return 0x61656E694C746553;
  }

  v1 = 0xD000000000000010;
  if (swift_dynamicCastMetatype())
  {
    return v1;
  }

  if (swift_dynamicCastMetatype())
  {
    return 0xD000000000000011;
  }

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF4D3310(uint64_t a1, uint64_t a2)
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AFE55130;
  type metadata accessor for PropertyDescription();
  KeyPath = swift_getKeyPath();
  type metadata accessor for ParticleFloat3Init(0, a1, a2, v6);
  sub_1AF589E74(0, &qword_1ED72F958, MEMORY[0x1E69E6448], MEMORY[0x1E69E6468], MEMORY[0x1E69E66A8]);
  v8 = v7;
  v9 = MEMORY[0x1E69E7CC0];
  v10 = sub_1AF6ACF1C(120, 0xE100000000000000, KeyPath, v7, 1, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, MEMORY[0x1E69E7CC0], 0, &off_1F254D3D8);

  *(v4 + 32) = v10;
  v11 = swift_getKeyPath();
  v12 = sub_1AF6ACF1C(121, 0xE100000000000000, v11, v8, 1, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, v9, 0, &off_1F254D3D8);

  *(v4 + 40) = v12;
  v13 = swift_getKeyPath();
  v14 = sub_1AF6ACF1C(122, 0xE100000000000000, v13, v8, 1, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, v9, 0, &off_1F254D3D8);

  *(v4 + 48) = v14;
  return v4;
}

uint64_t sub_1AF4D35CC()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE550F0;
  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  v3 = MEMORY[0x1E69E7360];
  sub_1AF5A9240(0, &unk_1EB634340, MEMORY[0x1E69E7360], type metadata accessor for EntityGetSet);
  v4 = swift_allocObject();
  v4[4] = sub_1AF58F454;
  v4[5] = v2;
  v4[2] = sub_1AF58F488;
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
  strcpy((v5 + 16), "operationIndex");
  *(v5 + 31) = -18;
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

  *(v5 + 64) = sub_1AF58F4E4;
  *(v5 + 72) = v2;
  sub_1AF0FB8EC(0, 0);
  *(v5 + 168) = 0;
  *(v5 + 176) = 0;

  *(v5 + 216) = 0;
  v9 = &type metadata for Composition.Operation;
  sub_1AF5A9240(0, &qword_1EB6338C8, &type metadata for Composition.Operation, type metadata accessor for EntityGetSet);
  v10 = swift_allocObject();
  v10[4] = sub_1AF58F524;
  v10[5] = KeyPath;
  v10[2] = sub_1AF58F550;
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
  *(v11 + 16) = 0x6F6974617265706FLL;
  *(v11 + 24) = 0xE90000000000006ELL;
  *(v11 + 32) = KeyPath;
  *(v11 + 40) = &type metadata for Composition.Operation;
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

  *(v11 + 64) = sub_1AF58F5AC;
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
  v16[4] = sub_1AF58F5EC;
  v16[5] = v14;
  v16[2] = sub_1AF58F620;
  v16[3] = v14;
  v16[6] = v14;
  v17 = swift_allocObject();
  *(v17 + 112) = 1;
  *(v17 + 128) = 0;
  *(v17 + 136) = 0;
  *(v17 + 120) = 0;
  v18 = MEMORY[0x1E69E7CC0];
  *(v17 + 160) = MEMORY[0x1E69E7CC0];
  *(v17 + 168) = 0;
  *(v17 + 216) = 0;
  *(v17 + 176) = 0;
  *(v17 + 16) = 0x726F74636166;
  *(v17 + 24) = 0xE600000000000000;
  *(v17 + 32) = v14;
  *(v17 + 40) = v15;
  *(v17 + 48) = 4;
  *(v17 + 56) = 0;
  *(v17 + 58) = 0;
  *(v17 + 184) = 0;
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
  v19 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v19)
  {
    v15 = (*(v19 + 8))();
  }

  v20 = swift_conformsToProtocol2();
  if (v20 && v15)
  {
    *(v17 + 160) = (*(v20 + 8))(v15, v20);
  }

  *(v17 + 64) = sub_1AF58F67C;
  *(v17 + 72) = v14;
  sub_1AF0FB8EC(0, 0);
  *(v17 + 168) = 0;
  *(v17 + 176) = 0;

  *(v17 + 216) = 0;
  *(v0 + 40) = v17;
  v21 = swift_getKeyPath();
  v22 = &type metadata for ColorRamp;
  sub_1AF5A9240(0, &qword_1ED722B88, &type metadata for ColorRamp, type metadata accessor for EntityGetSet);
  v23 = swift_allocObject();
  v23[4] = sub_1AF58F6BC;
  v23[5] = v21;
  v23[2] = sub_1AF58F6D4;
  v23[3] = v21;
  v23[6] = v21;
  v24 = swift_allocObject();
  *(v24 + 112) = 1;
  *(v24 + 128) = 0;
  *(v24 + 136) = 0;
  *(v24 + 120) = 0;
  *(v24 + 160) = v18;
  *(v24 + 168) = 0;
  *(v24 + 216) = 0;
  *(v24 + 176) = 0;
  *(v24 + 16) = 1886216562;
  *(v24 + 24) = 0xE400000000000000;
  *(v24 + 32) = v21;
  *(v24 + 40) = &type metadata for ColorRamp;
  *(v24 + 48) = 8;
  *(v24 + 56) = 0;
  *(v24 + 58) = 0;
  *(v24 + 184) = 0;
  *(v24 + 188) = 1;
  *(v24 + 192) = 0;
  *(v24 + 196) = 1;
  *(v24 + 200) = 0x1000100000000;
  *(v24 + 208) = 1;
  *(v24 + 64) = 0;
  *(v24 + 72) = 0;
  *(v24 + 96) = 0;
  *(v24 + 104) = 0;
  *(v24 + 144) = xmmword_1AFE22A20;
  *(v24 + 80) = v23;
  *(v24 + 88) = &off_1F2535378;
  *(v24 + 210) = 0;
  v25 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v25)
  {
    v22 = (*(v25 + 8))();
  }

  v26 = swift_conformsToProtocol2();
  if (v26 && v22)
  {
    *(v24 + 160) = (*(v26 + 8))(v22, v26);
  }

  *(v24 + 64) = sub_1AF58F704;
  *(v24 + 72) = v21;
  sub_1AF0FB8EC(0, 0);
  *(v24 + 168) = 0;
  *(v24 + 176) = 0;

  *(v24 + 216) = 0;
  *(v0 + 48) = v24;
  v27 = swift_getKeyPath();
  v28 = MEMORY[0x1E69E6370];
  sub_1AF5A9240(0, &qword_1ED722B80, MEMORY[0x1E69E6370], type metadata accessor for EntityGetSet);
  v29 = swift_allocObject();
  v29[4] = sub_1AF58F744;
  v29[5] = v27;
  v29[2] = sub_1AF58F770;
  v29[3] = v27;
  v29[6] = v27;
  v30 = swift_allocObject();
  *(v30 + 112) = 1;
  *(v30 + 128) = 0;
  *(v30 + 136) = 0;
  *(v30 + 120) = 0;
  *(v30 + 160) = v18;
  *(v30 + 168) = 0;
  *(v30 + 216) = 0;
  *(v30 + 176) = 0;
  strcpy((v30 + 16), "affectsAlpha");
  *(v30 + 29) = 0;
  *(v30 + 30) = -5120;
  *(v30 + 32) = v27;
  *(v30 + 40) = v28;
  *(v30 + 48) = 25;
  *(v30 + 56) = 0;
  *(v30 + 58) = 0;
  *(v30 + 184) = 0;
  *(v30 + 188) = 1;
  *(v30 + 192) = 0;
  *(v30 + 196) = 1;
  *(v30 + 200) = 0x1000100000000;
  *(v30 + 208) = 1;
  *(v30 + 64) = 0;
  *(v30 + 72) = 0;
  *(v30 + 96) = 0;
  *(v30 + 104) = 0;
  *(v30 + 144) = xmmword_1AFE22A20;
  *(v30 + 80) = v29;
  *(v30 + 88) = &off_1F2535378;
  *(v30 + 210) = 0;
  v31 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v31)
  {
    v28 = (*(v31 + 8))();
  }

  v32 = swift_conformsToProtocol2();
  if (v32 && v28)
  {
    *(v30 + 160) = (*(v32 + 8))(v28, v32);
  }

  *(v30 + 64) = sub_1AF58F7CC;
  *(v30 + 72) = v27;
  sub_1AF0FB8EC(0, 0);
  *(v30 + 168) = 0;
  *(v30 + 176) = 0;

  *(v30 + 216) = 0;
  *(v0 + 56) = v30;
  qword_1EB6C28E8 = v0;
  return result;
}

uint64_t sub_1AF4D40CC()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_1AFE55260;
  KeyPath = swift_getKeyPath();
  v1 = swift_getKeyPath();
  v2 = MEMORY[0x1E69E7360];
  sub_1AF5A9240(0, &unk_1EB634340, MEMORY[0x1E69E7360], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF58FA9C;
  v3[5] = v1;
  v3[2] = sub_1AF58FAD0;
  v3[3] = v1;
  v3[6] = v1;
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
  strcpy((v4 + 16), "operationIndex");
  *(v4 + 31) = -18;
  *(v4 + 32) = v1;
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

  *(v4 + 64) = sub_1AF58FB2C;
  *(v4 + 72) = v1;
  sub_1AF0FB8EC(0, 0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  v9 = &type metadata for Composition.Operation;
  sub_1AF5A9240(0, &qword_1EB6338C8, &type metadata for Composition.Operation, type metadata accessor for EntityGetSet);
  v10 = swift_allocObject();
  v10[4] = sub_1AF58FB6C;
  v10[5] = KeyPath;
  v10[2] = sub_1AF58FB98;
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
  *(v11 + 16) = 0x6F6974617265706FLL;
  *(v11 + 24) = 0xE90000000000006ELL;
  *(v11 + 32) = KeyPath;
  *(v11 + 40) = &type metadata for Composition.Operation;
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

  *(v11 + 64) = sub_1AF58FBF4;
  *(v11 + 72) = KeyPath;
  sub_1AF0FB8EC(0, 0);
  *(v11 + 168) = 0;
  *(v11 + 176) = 0;

  *(v11 + 216) = v4;
  *(v59 + 32) = v11;
  v14 = swift_getKeyPath();
  v15 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v16 = swift_allocObject();
  v16[4] = sub_1AF58FC34;
  v16[5] = v14;
  v16[2] = sub_1AF58FC68;
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
  *(v17 + 16) = 0x726F74636166;
  *(v17 + 24) = 0xE600000000000000;
  *(v17 + 32) = v14;
  *(v17 + 40) = v15;
  *(v17 + 48) = 4;
  *(v17 + 56) = 0;
  *(v17 + 58) = 0;
  *(v17 + 184) = 0;
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
    v15 = (*(v18 + 8))();
  }

  v19 = swift_conformsToProtocol2();
  if (v19 && v15)
  {
    *(v17 + 160) = (*(v19 + 8))(v15, v19);
  }

  *(v17 + 64) = sub_1AF58FCC4;
  *(v17 + 72) = v14;
  sub_1AF0FB8EC(0, 0);
  *(v17 + 168) = 0;
  *(v17 + 176) = 0;

  *(v17 + 216) = 0;
  *(v59 + 40) = v17;
  v20 = swift_getKeyPath();
  v21 = swift_getKeyPath();
  v22 = swift_allocObject();
  v22[4] = sub_1AF5AA370;
  v22[5] = v21;
  v22[2] = sub_1AF5A9CE4;
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
  *(v23 + 16) = 0x65646E4965646F6DLL;
  *(v23 + 24) = 0xE900000000000078;
  *(v23 + 32) = v21;
  *(v23 + 40) = v2;
  *(v23 + 48) = 0;
  *(v23 + 56) = 1;
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
  if (v6)
  {
    v2 = (*(v6 + 8))();
  }

  v24 = swift_conformsToProtocol2();
  if (v24 && v2)
  {
    *(v23 + 160) = (*(v24 + 8))(v2, v24);
  }

  *(v23 + 64) = sub_1AF5A97E8;
  *(v23 + 72) = v21;
  sub_1AF0FB8EC(0, 0);
  *(v23 + 168) = 0;
  *(v23 + 176) = 0;

  *(v23 + 216) = 0;
  v25 = &type metadata for ScaleMode;
  sub_1AF5A9240(0, &qword_1EB634360, &type metadata for ScaleMode, type metadata accessor for EntityGetSet);
  v26 = swift_allocObject();
  v26[4] = sub_1AF58FD04;
  v26[5] = v20;
  v26[2] = sub_1AF58FD30;
  v26[3] = v20;
  v26[6] = v20;
  v27 = swift_allocObject();
  *(v27 + 112) = 1;
  *(v27 + 128) = 0;
  *(v27 + 136) = 0;
  *(v27 + 120) = 0;
  *(v27 + 160) = MEMORY[0x1E69E7CC0];
  *(v27 + 168) = 0;
  *(v27 + 216) = 0;
  *(v27 + 176) = 0;
  *(v27 + 16) = 1701080941;
  *(v27 + 24) = 0xE400000000000000;
  *(v27 + 32) = v20;
  *(v27 + 40) = &type metadata for ScaleMode;
  *(v27 + 48) = 8;
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
    v25 = (*(v28 + 8))();
  }

  v29 = swift_conformsToProtocol2();
  if (v29 && v25)
  {
    *(v27 + 160) = (*(v29 + 8))(v25, v29);
  }

  *(v27 + 64) = sub_1AF58FD8C;
  *(v27 + 72) = v20;
  sub_1AF0FB8EC(0, 0);
  *(v27 + 168) = 0;
  *(v27 + 176) = 0;

  *(v27 + 216) = v23;
  *(v59 + 48) = v27;
  v30 = swift_getKeyPath();
  sub_1AF581BEC(0);
  v31 = swift_allocObject();
  v31[4] = sub_1AF58FDCC;
  v31[5] = v30;
  v31[2] = sub_1AF58FE20;
  v31[3] = v30;
  v31[6] = v30;
  v32 = swift_allocObject();
  *(v32 + 104) = 0;
  *(v32 + 112) = 1;
  *(v32 + 128) = 0;
  *(v32 + 136) = 0;
  *(v32 + 120) = 0;
  *(v32 + 160) = MEMORY[0x1E69E7CC0];
  *(v32 + 216) = 0;
  sub_1AF589E74(0, qword_1ED72F9E0, MEMORY[0x1E69E6448], &off_1F2532E98, type metadata accessor for Curve);
  v34 = v33;
  *(v32 + 168) = 0;
  *(v32 + 176) = 0;
  *(v32 + 16) = 120;
  *(v32 + 24) = 0xE100000000000000;
  *(v32 + 32) = v30;
  *(v32 + 40) = v33;
  *(v32 + 48) = 16;
  *(v32 + 56) = 0;
  *(v32 + 58) = 0;
  *(v32 + 184) = 0;
  *(v32 + 188) = 0;
  *(v32 + 192) = 0;
  *(v32 + 196) = 1;
  *(v32 + 200) = 0x1000100000000;
  *(v32 + 208) = 1;
  *(v32 + 64) = 0;
  *(v32 + 72) = 0;
  *(v32 + 96) = 0;
  *(v32 + 144) = xmmword_1AFE22A20;
  *(v32 + 80) = v31;
  *(v32 + 88) = &off_1F2535378;
  *(v32 + 210) = 0;
  v35 = swift_conformsToProtocol2();
  if (v35)
  {
    v36 = v34;
  }

  else
  {
    v36 = 0;
  }

  swift_retain_n();
  v37 = v34;
  if (v36)
  {
    v37 = (*(v35 + 8))(v36, v35);
  }

  v38 = swift_conformsToProtocol2();
  if (v38 && v37)
  {
    *(v32 + 160) = (*(v38 + 8))(v37, v38);
  }

  v39 = *(v32 + 64);
  v40 = *(v32 + 72);
  *(v32 + 64) = sub_1AF58FE50;
  *(v32 + 72) = v30;
  sub_1AF0FB8EC(v39, v40);
  *(v32 + 168) = 0;
  *(v32 + 176) = 0;

  *(v32 + 216) = 0;

  *(v59 + 56) = v32;
  v41 = swift_getKeyPath();
  v42 = swift_getKeyPath();
  v43 = swift_allocObject();
  v43[4] = sub_1AF5A97EC;
  v43[5] = v41;
  v43[2] = sub_1AF5A97F0;
  v43[3] = v41;
  v43[6] = v41;
  v44 = swift_allocObject();
  *(v44 + 112) = 1;
  *(v44 + 128) = 0;
  *(v44 + 136) = 0;
  *(v44 + 120) = 0;
  *(v44 + 160) = MEMORY[0x1E69E7CC0];
  *(v44 + 168) = 0;
  *(v44 + 216) = 0;
  *(v44 + 176) = 0;
  *(v44 + 16) = 121;
  *(v44 + 24) = 0xE100000000000000;
  *(v44 + 32) = v41;
  *(v44 + 40) = v34;
  *(v44 + 48) = 48;
  *(v44 + 56) = 0;
  *(v44 + 58) = 0;
  *(v44 + 184) = 0;
  *(v44 + 188) = 0;
  *(v44 + 192) = 0;
  *(v44 + 196) = 1;
  *(v44 + 200) = 0x1000100000000;
  *(v44 + 208) = 1;
  *(v44 + 64) = 0;
  *(v44 + 72) = 0;
  *(v44 + 96) = v42;
  *(v44 + 104) = 0;
  *(v44 + 144) = xmmword_1AFE22A20;
  *(v44 + 80) = v43;
  *(v44 + 88) = &off_1F2535378;
  *(v44 + 210) = 0;
  swift_retain_n();

  v45 = v34;
  if (v36)
  {
    v45 = (*(v35 + 8))(v36, v35);
  }

  v46 = swift_conformsToProtocol2();
  if (v46 && v45)
  {
    v47 = (*(v46 + 8))(v45, v46);

    *(v44 + 160) = v47;
  }

  else
  {
  }

  v48 = *(v44 + 64);
  v49 = *(v44 + 72);
  *(v44 + 64) = sub_1AF5A97F4;
  *(v44 + 72) = v41;
  sub_1AF0FB8EC(v48, v49);
  *(v44 + 168) = 0;
  *(v44 + 176) = 0;

  *(v44 + 216) = 0;

  *(v59 + 64) = v44;
  v50 = swift_getKeyPath();
  v51 = swift_getKeyPath();
  v52 = swift_allocObject();
  v52[4] = sub_1AF5A97EC;
  v52[5] = v50;
  v52[2] = sub_1AF5A97F0;
  v52[3] = v50;
  v52[6] = v50;
  v53 = swift_allocObject();
  *(v53 + 112) = 1;
  *(v53 + 128) = 0;
  *(v53 + 136) = 0;
  *(v53 + 120) = 0;
  *(v53 + 160) = MEMORY[0x1E69E7CC0];
  *(v53 + 168) = 0;
  *(v53 + 216) = 0;
  *(v53 + 176) = 0;
  *(v53 + 16) = 122;
  *(v53 + 24) = 0xE100000000000000;
  *(v53 + 32) = v50;
  *(v53 + 40) = v34;
  *(v53 + 48) = 80;
  *(v53 + 56) = 0;
  *(v53 + 58) = 0;
  *(v53 + 184) = 0;
  *(v53 + 188) = 0;
  *(v53 + 192) = 0;
  *(v53 + 196) = 1;
  *(v53 + 200) = 0x1000100000000;
  *(v53 + 208) = 1;
  *(v53 + 64) = 0;
  *(v53 + 72) = 0;
  *(v53 + 96) = v51;
  *(v53 + 104) = 0;
  *(v53 + 144) = xmmword_1AFE22A20;
  *(v53 + 80) = v52;
  *(v53 + 88) = &off_1F2535378;
  *(v53 + 210) = 0;
  swift_retain_n();

  if (v36)
  {
    v34 = (*(v35 + 8))(v36, v35);
  }

  v54 = swift_conformsToProtocol2();
  if (v54 && v34)
  {
    v55 = (*(v54 + 8))(v34, v54);

    *(v53 + 160) = v55;
  }

  else
  {
  }

  v56 = *(v53 + 64);
  v57 = *(v53 + 72);
  *(v53 + 64) = sub_1AF5A97F4;
  *(v53 + 72) = v50;
  sub_1AF0FB8EC(v56, v57);
  *(v53 + 168) = 0;
  *(v53 + 176) = 0;

  *(v53 + 216) = 0;

  *(v59 + 72) = v53;
  qword_1EB6C2ED0 = v59;
  return result;
}

uint64_t sub_1AF4D50B0(uint64_t result)
{
  v2 = result;
  if (result >= 3u)
  {
    v2 = 3;
  }

  *(v1 + 8) = v2;
  return result;
}

uint64_t sub_1AF4D517C()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C3E0;
  KeyPath = swift_getKeyPath();
  sub_1AF581BEC(0);
  v2 = swift_allocObject();
  v2[4] = sub_1AF590158;
  v2[5] = KeyPath;
  v2[2] = sub_1AF590180;
  v2[3] = KeyPath;
  v2[6] = KeyPath;
  type metadata accessor for PropertyDescription();
  v3 = swift_allocObject();
  *(v3 + 104) = 0;
  *(v3 + 112) = 1;
  *(v3 + 128) = 0;
  *(v3 + 136) = 0;
  *(v3 + 120) = 0;
  *(v3 + 160) = MEMORY[0x1E69E7CC0];
  *(v3 + 216) = 0;
  sub_1AF589E74(0, qword_1ED72F9E0, MEMORY[0x1E69E6448], &off_1F2532E98, type metadata accessor for Curve);
  v5 = v4;
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;
  *(v3 + 16) = 0x7974696361706FLL;
  *(v3 + 24) = 0xE700000000000000;
  *(v3 + 32) = KeyPath;
  *(v3 + 40) = v4;
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  *(v3 + 58) = 0;
  *(v3 + 184) = 0;
  *(v3 + 188) = 0;
  *(v3 + 192) = 1065353216;
  *(v3 + 196) = 0;
  *(v3 + 200) = 0x100003C23D70ALL;
  *(v3 + 208) = 1;
  *(v3 + 96) = 0;
  *(v3 + 64) = 0;
  *(v3 + 72) = 0;
  *(v3 + 144) = xmmword_1AFE22A20;
  *(v3 + 80) = v2;
  *(v3 + 88) = &off_1F2535378;
  *(v3 + 210) = 0;
  v6 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v6 && v5)
  {
    v5 = (*(v6 + 8))(v5, v6);
  }

  v7 = swift_conformsToProtocol2();
  if (v7 && v5)
  {
    *(v3 + 160) = (*(v7 + 8))(v5, v7);
  }

  v8 = *(v3 + 64);
  v9 = *(v3 + 72);
  *(v3 + 64) = sub_1AF5901B0;
  *(v3 + 72) = KeyPath;
  sub_1AF0FB8EC(v8, v9);
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;

  *(v3 + 216) = 0;

  *(v0 + 32) = v3;
  qword_1EB6C2ED8 = v0;
  return result;
}

uint64_t sub_1AF4D54DC()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE550F0;
  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  v3 = MEMORY[0x1E69E7360];
  sub_1AF5A9240(0, &unk_1EB634340, MEMORY[0x1E69E7360], type metadata accessor for EntityGetSet);
  v4 = swift_allocObject();
  v4[4] = sub_1AF5902E4;
  v4[5] = v2;
  v4[2] = sub_1AF590318;
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
  strcpy((v5 + 16), "operationIndex");
  *(v5 + 31) = -18;
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

  *(v5 + 64) = sub_1AF590374;
  *(v5 + 72) = v2;
  sub_1AF0FB8EC(0, 0);
  *(v5 + 168) = 0;
  *(v5 + 176) = 0;

  *(v5 + 216) = 0;
  v9 = &type metadata for Composition.Operation;
  sub_1AF5A9240(0, &qword_1EB6338C8, &type metadata for Composition.Operation, type metadata accessor for EntityGetSet);
  v10 = swift_allocObject();
  v10[4] = sub_1AF5903B4;
  v10[5] = KeyPath;
  v10[2] = sub_1AF5903E0;
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
  *(v11 + 16) = 0x6F6974617265706FLL;
  *(v11 + 24) = 0xE90000000000006ELL;
  *(v11 + 32) = KeyPath;
  *(v11 + 40) = &type metadata for Composition.Operation;
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

  *(v11 + 64) = sub_1AF59043C;
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
  v16[4] = sub_1AF59047C;
  v16[5] = v14;
  v16[2] = sub_1AF5904B0;
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
  *(v17 + 16) = 0x726F74636166;
  *(v17 + 24) = 0xE600000000000000;
  *(v17 + 32) = v14;
  *(v17 + 40) = v15;
  *(v17 + 48) = 4;
  *(v17 + 56) = 0;
  *(v17 + 58) = 0;
  *(v17 + 184) = 0;
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
    v15 = (*(v18 + 8))();
  }

  v19 = swift_conformsToProtocol2();
  if (v19 && v15)
  {
    *(v17 + 160) = (*(v19 + 8))(v15, v19);
  }

  *(v17 + 64) = sub_1AF59050C;
  *(v17 + 72) = v14;
  sub_1AF0FB8EC(0, 0);
  *(v17 + 168) = 0;
  *(v17 + 176) = 0;

  *(v17 + 216) = 0;
  *(v0 + 40) = v17;
  v20 = swift_getKeyPath();
  sub_1AF57F2F4(0);
  v21 = swift_allocObject();
  v21[4] = sub_1AF5902E4;
  v21[5] = v20;
  v21[2] = sub_1AF59054C;
  v21[3] = v20;
  v21[6] = v20;
  v22 = swift_allocObject();
  *(v22 + 104) = 0;
  *(v22 + 112) = 1;
  *(v22 + 128) = 0;
  *(v22 + 136) = 0;
  *(v22 + 120) = 0;
  *(v22 + 160) = MEMORY[0x1E69E7CC0];
  *(v22 + 216) = 0;
  sub_1AF589E74(0, &qword_1ED72F958, MEMORY[0x1E69E6448], MEMORY[0x1E69E6468], MEMORY[0x1E69E66A8]);
  v24 = v23;
  *(v22 + 168) = 0;
  *(v22 + 176) = 0;
  *(v22 + 16) = 0x65676E6172;
  *(v22 + 24) = 0xE500000000000000;
  *(v22 + 32) = v20;
  *(v22 + 40) = v23;
  *(v22 + 48) = 8;
  *(v22 + 56) = 0;
  *(v22 + 58) = 0;
  *(v22 + 184) = 0;
  *(v22 + 188) = 1;
  *(v22 + 192) = 0;
  *(v22 + 196) = 1;
  *(v22 + 200) = 0x1000100000000;
  *(v22 + 208) = 1;
  *(v22 + 64) = 0;
  *(v22 + 72) = 0;
  *(v22 + 96) = 0;
  *(v22 + 144) = xmmword_1AFE22A20;
  *(v22 + 80) = v21;
  *(v22 + 88) = &off_1F2535378;
  *(v22 + 210) = 0;
  v25 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v25 && v24)
  {
    v24 = (*(v25 + 8))(v24, v25);
  }

  v26 = swift_conformsToProtocol2();
  if (v26 && v24)
  {
    *(v22 + 160) = (*(v26 + 8))(v24, v26);
  }

  v27 = *(v22 + 64);
  v28 = *(v22 + 72);
  *(v22 + 64) = sub_1AF5905A8;
  *(v22 + 72) = v20;
  sub_1AF0FB8EC(v27, v28);
  *(v22 + 168) = 0;
  *(v22 + 176) = 0;

  *(v22 + 216) = 0;

  *(v0 + 48) = v22;
  v29 = swift_getKeyPath();
  v30 = &type metadata for ColorRamp;
  sub_1AF5A9240(0, &qword_1ED722B88, &type metadata for ColorRamp, type metadata accessor for EntityGetSet);
  v31 = swift_allocObject();
  v31[4] = sub_1AF5905EC;
  v31[5] = v29;
  v31[2] = sub_1AF590604;
  v31[3] = v29;
  v31[6] = v29;
  v32 = swift_allocObject();
  *(v32 + 112) = 1;
  *(v32 + 128) = 0;
  *(v32 + 136) = 0;
  *(v32 + 120) = 0;
  *(v32 + 160) = MEMORY[0x1E69E7CC0];
  *(v32 + 168) = 0;
  *(v32 + 216) = 0;
  *(v32 + 176) = 0;
  *(v32 + 16) = 1886216562;
  *(v32 + 24) = 0xE400000000000000;
  *(v32 + 32) = v29;
  *(v32 + 40) = &type metadata for ColorRamp;
  *(v32 + 48) = 16;
  *(v32 + 56) = 0;
  *(v32 + 58) = 0;
  *(v32 + 184) = 0;
  *(v32 + 188) = 1;
  *(v32 + 192) = 0;
  *(v32 + 196) = 1;
  *(v32 + 200) = 0x1000100000000;
  *(v32 + 208) = 1;
  *(v32 + 64) = 0;
  *(v32 + 72) = 0;
  *(v32 + 96) = 0;
  *(v32 + 104) = 0;
  *(v32 + 144) = xmmword_1AFE22A20;
  *(v32 + 80) = v31;
  *(v32 + 88) = &off_1F2535378;
  *(v32 + 210) = 0;
  v33 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v33)
  {
    v30 = (*(v33 + 8))();
  }

  v34 = swift_conformsToProtocol2();
  if (v34 && v30)
  {
    *(v32 + 160) = (*(v34 + 8))(v30, v34);
  }

  *(v32 + 64) = sub_1AF590634;
  *(v32 + 72) = v29;
  sub_1AF0FB8EC(0, 0);
  *(v32 + 168) = 0;
  *(v32 + 176) = 0;

  *(v32 + 216) = 0;
  *(v0 + 56) = v32;
  qword_1EB6C2EE0 = v0;
  return result;
}

uint64_t sub_1AF4D5FE8()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE550E0;
  KeyPath = swift_getKeyPath();
  sub_1AF57F2F4(0);
  v2 = swift_allocObject();
  v2[4] = sub_1AF5908E4;
  v2[5] = KeyPath;
  v2[2] = sub_1AF590918;
  v2[3] = KeyPath;
  v2[6] = KeyPath;
  type metadata accessor for PropertyDescription();
  v3 = swift_allocObject();
  *(v3 + 104) = 0;
  *(v3 + 112) = 1;
  *(v3 + 128) = 0;
  *(v3 + 136) = 0;
  *(v3 + 120) = 0;
  v4 = MEMORY[0x1E69E7CC0];
  *(v3 + 160) = MEMORY[0x1E69E7CC0];
  *(v3 + 216) = 0;
  sub_1AF589E74(0, &qword_1ED72F958, MEMORY[0x1E69E6448], MEMORY[0x1E69E6468], MEMORY[0x1E69E66A8]);
  v6 = v5;
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;
  *(v3 + 16) = 0x65676E6172;
  *(v3 + 24) = 0xE500000000000000;
  *(v3 + 32) = KeyPath;
  *(v3 + 40) = v5;
  *(v3 + 48) = 28;
  *(v3 + 56) = 0;
  *(v3 + 58) = 0;
  *(v3 + 184) = 0;
  *(v3 + 188) = 1;
  *(v3 + 192) = 0;
  *(v3 + 196) = 1;
  *(v3 + 200) = 0x1000100000000;
  *(v3 + 208) = 1;
  *(v3 + 96) = 0;
  *(v3 + 64) = 0;
  *(v3 + 72) = 0;
  *(v3 + 144) = xmmword_1AFE22A20;
  *(v3 + 80) = v2;
  *(v3 + 88) = &off_1F2535378;
  *(v3 + 210) = 0;
  v7 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v7 && v6)
  {
    v6 = (*(v7 + 8))(v6, v7);
  }

  v8 = swift_conformsToProtocol2();
  if (v8 && v6)
  {
    *(v3 + 160) = (*(v8 + 8))(v6, v8);
  }

  v9 = *(v3 + 64);
  v10 = *(v3 + 72);
  *(v3 + 64) = sub_1AF590974;
  *(v3 + 72) = KeyPath;
  sub_1AF0FB8EC(v9, v10);
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;

  *(v3 + 216) = 0;

  *(v0 + 32) = v3;
  v11 = swift_getKeyPath();
  sub_1AF581BEC(0);
  v12 = swift_allocObject();
  v12[4] = sub_1AF5909B8;
  v12[5] = v11;
  v12[2] = sub_1AF5909D0;
  v12[3] = v11;
  v12[6] = v11;
  v13 = swift_allocObject();
  *(v13 + 104) = 0;
  *(v13 + 112) = 1;
  *(v13 + 128) = 0;
  *(v13 + 136) = 0;
  *(v13 + 120) = 0;
  *(v13 + 160) = v4;
  *(v13 + 216) = 0;
  sub_1AF589E74(0, qword_1ED72F9E0, MEMORY[0x1E69E6448], &off_1F2532E98, type metadata accessor for Curve);
  v15 = v14;
  *(v13 + 168) = 0;
  *(v13 + 176) = 0;
  *(v13 + 16) = 0x6576727563;
  *(v13 + 24) = 0xE500000000000000;
  *(v13 + 32) = v11;
  *(v13 + 40) = v14;
  *(v13 + 48) = 0;
  *(v13 + 56) = 0;
  *(v13 + 58) = 0;
  *(v13 + 184) = 0;
  *(v13 + 188) = 0;
  *(v13 + 192) = 1065353216;
  *(v13 + 196) = 0;
  *(v13 + 200) = 0x100003C23D70ALL;
  *(v13 + 208) = 1;
  *(v13 + 64) = 0;
  *(v13 + 72) = 0;
  *(v13 + 88) = &off_1F2535378;
  *(v13 + 96) = 0;
  *(v13 + 144) = xmmword_1AFE22A20;
  *(v13 + 80) = v12;
  *(v13 + 210) = 0;
  v16 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v16 && v15)
  {
    v15 = (*(v16 + 8))(v15, v16);
  }

  v17 = swift_conformsToProtocol2();
  if (v17 && v15)
  {
    *(v13 + 160) = (*(v17 + 8))(v15, v17);
  }

  v18 = *(v13 + 64);
  v19 = *(v13 + 72);
  *(v13 + 64) = sub_1AF590A00;
  *(v13 + 72) = v11;
  sub_1AF0FB8EC(v18, v19);
  *(v13 + 168) = 0;
  *(v13 + 176) = 0;

  *(v13 + 216) = 0;

  *(v0 + 40) = v13;
  qword_1EB6C2EE8 = v0;
  return result;
}

uint64_t sub_1AF4D653C()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE550E0;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF590BC8;
  v3[5] = KeyPath;
  v3[2] = sub_1AF590C0C;
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
  *(v4 + 16) = 0x726F74636166;
  *(v4 + 24) = 0xE600000000000000;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = v2;
  *(v4 + 48) = 0;
  *(v4 + 56) = 0;
  *(v4 + 58) = 0;
  *(v4 + 184) = 0;
  *(v4 + 188) = 0;
  *(v4 + 192) = 1065353216;
  *(v4 + 196) = 0;
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
    v2 = (*(v5 + 8))();
  }

  v6 = swift_conformsToProtocol2();
  if (v6 && v2)
  {
    *(v4 + 160) = (*(v6 + 8))(v2, v6);
  }

  *(v4 + 64) = sub_1AF590C68;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0, 0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  v7 = swift_getKeyPath();
  v8 = swift_getKeyPath();
  v9 = MEMORY[0x1E69E7360];
  sub_1AF5A9240(0, &unk_1EB634340, MEMORY[0x1E69E7360], type metadata accessor for EntityGetSet);
  v10 = swift_allocObject();
  v10[4] = sub_1AF590CA8;
  v10[5] = v8;
  v10[2] = sub_1AF590CDC;
  v10[3] = v8;
  v10[6] = v8;
  v11 = swift_allocObject();
  *(v11 + 112) = 1;
  *(v11 + 128) = 0;
  *(v11 + 136) = 0;
  *(v11 + 120) = 0;
  *(v11 + 160) = MEMORY[0x1E69E7CC0];
  *(v11 + 168) = 0;
  *(v11 + 216) = 0;
  *(v11 + 176) = 0;
  *(v11 + 16) = 0xD000000000000012;
  *(v11 + 24) = 0x80000001AFF2AA90;
  *(v11 + 32) = v8;
  *(v11 + 40) = v9;
  *(v11 + 48) = 0;
  *(v11 + 56) = 1;
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

  *(v11 + 64) = sub_1AF590D38;
  *(v11 + 72) = v8;
  sub_1AF0FB8EC(0, 0);
  *(v11 + 168) = 0;
  *(v11 + 176) = 0;

  *(v11 + 216) = 0;
  v14 = &type metadata for OrientationOverVelocity.DirectionAxis;
  sub_1AF5A9240(0, &qword_1EB63AD58, &type metadata for OrientationOverVelocity.DirectionAxis, type metadata accessor for EntityGetSet);
  v15 = swift_allocObject();
  v15[4] = sub_1AF590D78;
  v15[5] = v7;
  v15[2] = sub_1AF590DB4;
  v15[3] = v7;
  v15[6] = v7;
  v16 = swift_allocObject();
  *(v16 + 112) = 1;
  *(v16 + 128) = 0;
  *(v16 + 136) = 0;
  *(v16 + 120) = 0;
  *(v16 + 160) = MEMORY[0x1E69E7CC0];
  *(v16 + 168) = 0;
  *(v16 + 216) = 0;
  *(v16 + 176) = 0;
  strcpy((v16 + 16), "directionAxis");
  *(v16 + 30) = -4864;
  *(v16 + 32) = v7;
  *(v16 + 40) = &type metadata for OrientationOverVelocity.DirectionAxis;
  *(v16 + 48) = 4;
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

  *(v16 + 64) = sub_1AF590E10;
  *(v16 + 72) = v7;
  sub_1AF0FB8EC(0, 0);
  *(v16 + 168) = 0;
  *(v16 + 176) = 0;

  *(v16 + 216) = v11;
  *(v0 + 40) = v16;
  qword_1EB6C2EF0 = v0;
  return result;
}

uint64_t sub_1AF4D6C84()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v68 = swift_allocObject();
  *(v68 + 16) = xmmword_1AFE551A0;
  KeyPath = swift_getKeyPath();
  v1 = swift_getKeyPath();
  v2 = MEMORY[0x1E69E7360];
  sub_1AF5A9240(0, &unk_1EB634340, MEMORY[0x1E69E7360], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF590FA0;
  v3[5] = v1;
  v3[2] = sub_1AF590FD4;
  v3[3] = v1;
  v3[6] = v1;
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
  strcpy((v4 + 16), "operationIndex");
  *(v4 + 31) = -18;
  *(v4 + 32) = v1;
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

  v9 = *(v4 + 64);
  v10 = *(v4 + 72);
  *(v4 + 64) = sub_1AF591030;
  *(v4 + 72) = v1;
  sub_1AF0FB8EC(v9, v10);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;

  v11 = &type metadata for Composition.Operation;
  sub_1AF5A9240(0, &qword_1EB6338C8, &type metadata for Composition.Operation, type metadata accessor for EntityGetSet);
  v12 = swift_allocObject();
  v12[4] = sub_1AF591070;
  v12[5] = KeyPath;
  v12[2] = sub_1AF59109C;
  v12[3] = KeyPath;
  v12[6] = KeyPath;
  v13 = swift_allocObject();
  *(v13 + 112) = 1;
  *(v13 + 128) = 0;
  *(v13 + 136) = 0;
  *(v13 + 120) = 0;
  *(v13 + 160) = MEMORY[0x1E69E7CC0];
  *(v13 + 168) = 0;
  *(v13 + 216) = 0;
  *(v13 + 176) = 0;
  *(v13 + 16) = 0x6F6974617265706FLL;
  *(v13 + 24) = 0xE90000000000006ELL;
  *(v13 + 32) = KeyPath;
  *(v13 + 40) = &type metadata for Composition.Operation;
  *(v13 + 48) = 0;
  *(v13 + 56) = 0;
  *(v13 + 58) = 0;
  *(v13 + 184) = 0;
  *(v13 + 188) = 1;
  *(v13 + 192) = 0;
  *(v13 + 196) = 1;
  *(v13 + 200) = 0x1000100000000;
  *(v13 + 208) = 1;
  *(v13 + 96) = 0;
  *(v13 + 104) = 0;
  *(v13 + 64) = 0;
  *(v13 + 72) = 0;
  *(v13 + 144) = xmmword_1AFE22A20;
  *(v13 + 80) = v12;
  *(v13 + 88) = &off_1F2535378;
  *(v13 + 210) = 0;
  v14 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v14)
  {
    v11 = (*(v14 + 8))();
  }

  v15 = swift_conformsToProtocol2();
  if (v15 && v11)
  {
    *(v13 + 160) = (*(v15 + 8))(v11, v15);
  }

  *(v13 + 64) = sub_1AF5910F8;
  *(v13 + 72) = KeyPath;
  sub_1AF0FB8EC(0, 0);
  *(v13 + 168) = 0;
  *(v13 + 176) = 0;

  *(v13 + 216) = v4;
  *(v68 + 32) = v13;
  v16 = swift_getKeyPath();
  v17 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v18 = swift_allocObject();
  v18[4] = sub_1AF591138;
  v18[5] = v16;
  v18[2] = sub_1AF59116C;
  v18[3] = v16;
  v18[6] = v16;
  v19 = swift_allocObject();
  *(v19 + 112) = 1;
  *(v19 + 128) = 0;
  *(v19 + 136) = 0;
  *(v19 + 120) = 0;
  *(v19 + 160) = MEMORY[0x1E69E7CC0];
  *(v19 + 168) = 0;
  *(v19 + 216) = 0;
  *(v19 + 176) = 0;
  *(v19 + 16) = 0x726F74636166;
  *(v19 + 24) = 0xE600000000000000;
  *(v19 + 32) = v16;
  *(v19 + 40) = v17;
  *(v19 + 48) = 4;
  *(v19 + 56) = 0;
  *(v19 + 58) = 0;
  *(v19 + 184) = 0;
  *(v19 + 188) = 0;
  *(v19 + 192) = 0;
  *(v19 + 196) = 1;
  *(v19 + 200) = 0x100003C23D70ALL;
  *(v19 + 208) = 1;
  *(v19 + 64) = 0;
  *(v19 + 72) = 0;
  *(v19 + 96) = 0;
  *(v19 + 104) = 0;
  *(v19 + 144) = xmmword_1AFE22A20;
  *(v19 + 80) = v18;
  *(v19 + 88) = &off_1F2535378;
  *(v19 + 210) = 0;
  v20 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v20)
  {
    v17 = (*(v20 + 8))();
  }

  v21 = swift_conformsToProtocol2();
  if (v21 && v17)
  {
    *(v19 + 160) = (*(v21 + 8))(v17, v21);
  }

  *(v19 + 64) = sub_1AF5911C8;
  *(v19 + 72) = v16;
  sub_1AF0FB8EC(0, 0);
  *(v19 + 168) = 0;
  *(v19 + 176) = 0;

  *(v19 + 216) = 0;
  *(v68 + 40) = v19;
  v22 = swift_getKeyPath();
  v23 = swift_getKeyPath();
  v24 = swift_allocObject();
  v24[4] = sub_1AF5AA380;
  v24[5] = v23;
  v24[2] = sub_1AF5A9D08;
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
  *(v25 + 16) = 0x65646E4965646F6DLL;
  *(v25 + 24) = 0xE900000000000078;
  *(v25 + 32) = v23;
  *(v25 + 40) = v2;
  *(v25 + 48) = 0;
  *(v25 + 56) = 1;
  *(v25 + 58) = 0;
  *(v25 + 184) = 0;
  *(v25 + 188) = 1;
  *(v25 + 192) = 0;
  *(v25 + 196) = 1;
  *(v25 + 200) = 0x1000100000000;
  *(v25 + 208) = 1;
  *(v25 + 64) = 0;
  *(v25 + 72) = 0;
  *(v25 + 96) = 0;
  *(v25 + 104) = 0;
  *(v25 + 144) = xmmword_1AFE22A20;
  *(v25 + 80) = v24;
  *(v25 + 88) = &off_1F2535378;
  *(v25 + 210) = 0;
  swift_retain_n();
  if (v6)
  {
    v2 = (*(v6 + 8))();
  }

  v26 = swift_conformsToProtocol2();
  if (v26 && v2)
  {
    *(v25 + 160) = (*(v26 + 8))(v2, v26);
  }

  *(v25 + 64) = sub_1AF5A9810;
  *(v25 + 72) = v23;
  sub_1AF0FB8EC(0, 0);
  *(v25 + 168) = 0;
  *(v25 + 176) = 0;

  *(v25 + 216) = 0;
  v27 = &type metadata for ScaleMode;
  sub_1AF5A9240(0, &qword_1EB634360, &type metadata for ScaleMode, type metadata accessor for EntityGetSet);
  v28 = swift_allocObject();
  v28[4] = sub_1AF591208;
  v28[5] = v22;
  v28[2] = sub_1AF591234;
  v28[3] = v22;
  v28[6] = v22;
  v29 = swift_allocObject();
  *(v29 + 112) = 1;
  *(v29 + 128) = 0;
  *(v29 + 136) = 0;
  *(v29 + 120) = 0;
  *(v29 + 160) = MEMORY[0x1E69E7CC0];
  *(v29 + 168) = 0;
  *(v29 + 216) = 0;
  *(v29 + 176) = 0;
  *(v29 + 16) = 1701080941;
  *(v29 + 24) = 0xE400000000000000;
  *(v29 + 32) = v22;
  *(v29 + 40) = &type metadata for ScaleMode;
  *(v29 + 48) = 8;
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

  *(v29 + 64) = sub_1AF591290;
  *(v29 + 72) = v22;
  sub_1AF0FB8EC(0, 0);
  *(v29 + 168) = 0;
  *(v29 + 176) = 0;

  *(v29 + 216) = v25;
  *(v68 + 48) = v29;
  v32 = swift_getKeyPath();
  sub_1AF57F2F4(0);
  v33 = swift_allocObject();
  v33[4] = sub_1AF590FA0;
  v33[5] = v32;
  v33[2] = sub_1AF5912D0;
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
  sub_1AF589E74(0, &qword_1ED72F958, MEMORY[0x1E69E6448], MEMORY[0x1E69E6468], MEMORY[0x1E69E66A8]);
  v36 = v35;
  *(v34 + 168) = 0;
  *(v34 + 176) = 0;
  strcpy((v34 + 16), "velocityRange");
  *(v34 + 30) = -4864;
  *(v34 + 32) = v32;
  *(v34 + 40) = v35;
  *(v34 + 48) = 12;
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
  if (v37)
  {
    v38 = v36;
  }

  else
  {
    v38 = 0;
  }

  swift_retain_n();
  v39 = v36;
  if (v38)
  {
    v39 = (*(v37 + 8))(v38, v37);
  }

  v40 = swift_conformsToProtocol2();
  if (v40 && v39)
  {
    *(v34 + 160) = (*(v40 + 8))(v39, v40);
  }

  v41 = *(v34 + 64);
  v42 = *(v34 + 72);
  *(v34 + 64) = sub_1AF59132C;
  *(v34 + 72) = v32;
  sub_1AF0FB8EC(v41, v42);
  *(v34 + 168) = 0;
  *(v34 + 176) = 0;

  *(v34 + 216) = 0;

  *(v68 + 56) = v34;
  v43 = swift_getKeyPath();
  v44 = swift_allocObject();
  v44[4] = sub_1AF5AA380;
  v44[5] = v43;
  v44[2] = sub_1AF5AA4E8;
  v44[3] = v43;
  v44[6] = v43;
  v45 = swift_allocObject();
  *(v45 + 112) = 1;
  *(v45 + 128) = 0;
  *(v45 + 136) = 0;
  *(v45 + 120) = 0;
  *(v45 + 160) = MEMORY[0x1E69E7CC0];
  *(v45 + 168) = 0;
  *(v45 + 216) = 0;
  *(v45 + 176) = 0;
  *(v45 + 16) = 120;
  *(v45 + 24) = 0xE100000000000000;
  *(v45 + 32) = v43;
  *(v45 + 40) = v36;
  *(v45 + 48) = 20;
  *(v45 + 56) = 0;
  *(v45 + 58) = 0;
  *(v45 + 184) = 0;
  *(v45 + 188) = 1;
  *(v45 + 192) = 0;
  *(v45 + 196) = 1;
  *(v45 + 200) = 0x1000100000000;
  *(v45 + 208) = 1;
  *(v45 + 64) = 0;
  *(v45 + 72) = 0;
  *(v45 + 96) = 0;
  *(v45 + 104) = 0;
  *(v45 + 144) = xmmword_1AFE22A20;
  *(v45 + 80) = v44;
  *(v45 + 88) = &off_1F2535378;
  *(v45 + 210) = 0;
  swift_retain_n();
  v46 = v36;
  if (v38)
  {
    v46 = (*(v37 + 8))(v38, v37);
  }

  v47 = swift_conformsToProtocol2();
  if (v47 && v46)
  {
    *(v45 + 160) = (*(v47 + 8))(v46, v47);
  }

  v48 = *(v45 + 64);
  v49 = *(v45 + 72);
  *(v45 + 64) = sub_1AF5A9814;
  *(v45 + 72) = v43;
  sub_1AF0FB8EC(v48, v49);
  *(v45 + 168) = 0;
  *(v45 + 176) = 0;

  *(v45 + 216) = 0;

  *(v68 + 64) = v45;
  v50 = swift_getKeyPath();
  v51 = swift_getKeyPath();
  v52 = swift_allocObject();
  v52[4] = sub_1AF5AA380;
  v52[5] = v50;
  v52[2] = sub_1AF5AA4E8;
  v52[3] = v50;
  v52[6] = v50;
  v53 = swift_allocObject();
  *(v53 + 112) = 1;
  *(v53 + 128) = 0;
  *(v53 + 136) = 0;
  *(v53 + 120) = 0;
  *(v53 + 160) = MEMORY[0x1E69E7CC0];
  *(v53 + 168) = 0;
  *(v53 + 216) = 0;
  *(v53 + 176) = 0;
  *(v53 + 16) = 121;
  *(v53 + 24) = 0xE100000000000000;
  *(v53 + 32) = v50;
  *(v53 + 40) = v36;
  *(v53 + 48) = 28;
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
  *(v53 + 96) = v51;
  *(v53 + 104) = 0;
  *(v53 + 144) = xmmword_1AFE22A20;
  *(v53 + 80) = v52;
  *(v53 + 88) = &off_1F2535378;
  *(v53 + 210) = 0;
  swift_retain_n();

  v54 = v36;
  if (v38)
  {
    v54 = (*(v37 + 8))(v38, v37);
  }

  v55 = swift_conformsToProtocol2();
  if (v55 && v54)
  {
    v56 = (*(v55 + 8))(v54, v55);

    *(v53 + 160) = v56;
  }

  else
  {
  }

  v57 = *(v53 + 64);
  v58 = *(v53 + 72);
  *(v53 + 64) = sub_1AF5A9814;
  *(v53 + 72) = v50;
  sub_1AF0FB8EC(v57, v58);
  *(v53 + 168) = 0;
  *(v53 + 176) = 0;

  *(v53 + 216) = 0;

  *(v68 + 72) = v53;
  v59 = swift_getKeyPath();
  v60 = swift_getKeyPath();
  v61 = swift_allocObject();
  v61[4] = sub_1AF5AA380;
  v61[5] = v59;
  v61[2] = sub_1AF5AA4E8;
  v61[3] = v59;
  v61[6] = v59;
  v62 = swift_allocObject();
  *(v62 + 112) = 1;
  *(v62 + 128) = 0;
  *(v62 + 136) = 0;
  *(v62 + 120) = 0;
  *(v62 + 160) = MEMORY[0x1E69E7CC0];
  *(v62 + 168) = 0;
  *(v62 + 216) = 0;
  *(v62 + 176) = 0;
  *(v62 + 16) = 122;
  *(v62 + 24) = 0xE100000000000000;
  *(v62 + 32) = v59;
  *(v62 + 40) = v36;
  *(v62 + 48) = 36;
  *(v62 + 56) = 0;
  *(v62 + 58) = 0;
  *(v62 + 184) = 0;
  *(v62 + 188) = 1;
  *(v62 + 192) = 0;
  *(v62 + 196) = 1;
  *(v62 + 200) = 0x1000100000000;
  *(v62 + 208) = 1;
  *(v62 + 64) = 0;
  *(v62 + 72) = 0;
  *(v62 + 96) = v60;
  *(v62 + 104) = 0;
  *(v62 + 144) = xmmword_1AFE22A20;
  *(v62 + 80) = v61;
  *(v62 + 88) = &off_1F2535378;
  *(v62 + 210) = 0;
  swift_retain_n();

  if (v38)
  {
    v36 = (*(v37 + 8))(v38, v37);
  }

  v63 = swift_conformsToProtocol2();
  if (v63 && v36)
  {
    v64 = (*(v63 + 8))(v36, v63);

    *(v62 + 160) = v64;
  }

  else
  {
  }

  v65 = *(v62 + 64);
  v66 = *(v62 + 72);
  *(v62 + 64) = sub_1AF5A9814;
  *(v62 + 72) = v59;
  sub_1AF0FB8EC(v65, v66);
  *(v62 + 168) = 0;
  *(v62 + 176) = 0;

  *(v62 + 216) = 0;

  *(v68 + 80) = v62;
  qword_1EB6C2EF8 = v68;
  return result;
}

uint64_t sub_1AF4D7ED4()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE55180;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF591584;
  v3[5] = KeyPath;
  v3[2] = sub_1AF5915B8;
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
  *(v4 + 16) = 0x7366664F7466656CLL;
  *(v4 + 24) = 0xEA00000000007465;
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

  *(v4 + 64) = sub_1AF591614;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0, 0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  v8 = swift_getKeyPath();
  v9 = swift_allocObject();
  v9[4] = sub_1AF5A9488;
  v9[5] = v8;
  v9[2] = sub_1AF5A9D18;
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
  *(v10 + 16) = 0x66664F7468676972;
  *(v10 + 24) = 0xEB00000000746573;
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

  *(v10 + 64) = sub_1AF5A9818;
  *(v10 + 72) = v8;
  sub_1AF0FB8EC(0, 0);
  *(v10 + 168) = 0;
  *(v10 + 176) = 0;

  *(v10 + 216) = 0;
  *(v0 + 40) = v10;
  v13 = swift_getKeyPath();
  v14 = swift_allocObject();
  v14[4] = sub_1AF5A9488;
  v14[5] = v13;
  v14[2] = sub_1AF5A9D18;
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
  *(v15 + 16) = 0x657366664F706F74;
  *(v15 + 24) = 0xE900000000000074;
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
  *(v15 + 64) = 0;
  *(v15 + 72) = 0;
  *(v15 + 96) = 0;
  *(v15 + 104) = 0;
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

  *(v15 + 64) = sub_1AF5A9818;
  *(v15 + 72) = v13;
  sub_1AF0FB8EC(0, 0);
  *(v15 + 168) = 0;
  *(v15 + 176) = 0;

  *(v15 + 216) = 0;
  *(v0 + 48) = v15;
  v18 = swift_getKeyPath();
  v19 = swift_allocObject();
  v19[4] = sub_1AF5A9488;
  v19[5] = v18;
  v19[2] = sub_1AF5A9D18;
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
  strcpy((v20 + 16), "bottomOffset");
  *(v20 + 29) = 0;
  *(v20 + 30) = -5120;
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
  *(v20 + 64) = 0;
  *(v20 + 72) = 0;
  *(v20 + 96) = 0;
  *(v20 + 104) = 0;
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

  *(v20 + 64) = sub_1AF5A9818;
  *(v20 + 72) = v18;
  sub_1AF0FB8EC(0, 0);
  *(v20 + 168) = 0;
  *(v20 + 176) = 0;

  *(v20 + 216) = 0;
  *(v0 + 56) = v20;
  v23 = swift_getKeyPath();
  v24 = swift_allocObject();
  v24[4] = sub_1AF5A9488;
  v24[5] = v23;
  v24[2] = sub_1AF5A9D18;
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
  *(v25 + 16) = 1918985582;
  *(v25 + 24) = 0xE400000000000000;
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
  *(v25 + 64) = 0;
  *(v25 + 72) = 0;
  *(v25 + 96) = 0;
  *(v25 + 104) = 0;
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

  *(v25 + 64) = sub_1AF5A9818;
  *(v25 + 72) = v23;
  sub_1AF0FB8EC(0, 0);
  *(v25 + 168) = 0;
  *(v25 + 176) = 0;

  *(v25 + 216) = 0;
  *(v0 + 64) = v25;
  v28 = swift_getKeyPath();
  v29 = swift_allocObject();
  v29[4] = sub_1AF5A9488;
  v29[5] = v28;
  v29[2] = sub_1AF5A9D18;
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
  *(v30 + 16) = 7496038;
  *(v30 + 24) = 0xE300000000000000;
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
  *(v30 + 64) = 0;
  *(v30 + 72) = 0;
  *(v30 + 96) = 0;
  *(v30 + 104) = 0;
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

  *(v30 + 64) = sub_1AF5A9818;
  *(v30 + 72) = v28;
  sub_1AF0FB8EC(0, 0);
  *(v30 + 168) = 0;
  *(v30 + 176) = 0;

  *(v30 + 216) = 0;
  *(v0 + 72) = v30;
  v32 = swift_getKeyPath();
  v33 = MEMORY[0x1E69E6370];
  sub_1AF5A9240(0, &qword_1ED722B80, MEMORY[0x1E69E6370], type metadata accessor for EntityGetSet);
  v34 = swift_allocObject();
  v34[4] = sub_1AF591654;
  v34[5] = v32;
  v34[2] = sub_1AF591680;
  v34[3] = v32;
  v34[6] = v32;
  v35 = swift_allocObject();
  *(v35 + 112) = 1;
  *(v35 + 128) = 0;
  *(v35 + 136) = 0;
  *(v35 + 120) = 0;
  *(v35 + 160) = MEMORY[0x1E69E7CC0];
  *(v35 + 168) = 0;
  *(v35 + 216) = 0;
  *(v35 + 176) = 0;
  strcpy((v35 + 16), "usePerspective");
  *(v35 + 31) = -18;
  *(v35 + 32) = v32;
  *(v35 + 40) = v33;
  *(v35 + 48) = 24;
  *(v35 + 56) = 0;
  *(v35 + 58) = 0;
  *(v35 + 184) = 0;
  *(v35 + 188) = 1;
  *(v35 + 192) = 0;
  *(v35 + 196) = 1;
  *(v35 + 200) = 0x1000100000000;
  *(v35 + 208) = 1;
  *(v35 + 64) = 0;
  *(v35 + 72) = 0;
  *(v35 + 96) = 0;
  *(v35 + 104) = 0;
  *(v35 + 144) = xmmword_1AFE22A20;
  *(v35 + 80) = v34;
  *(v35 + 88) = &off_1F2535378;
  *(v35 + 210) = 0;
  v36 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v36)
  {
    v37 = (*(v36 + 8))();
  }

  else
  {
    v37 = v33;
  }

  v38 = swift_conformsToProtocol2();
  if (v38 && v37)
  {
    *(v35 + 160) = (*(v38 + 8))(v37, v38);
  }

  *(v35 + 64) = sub_1AF5916DC;
  *(v35 + 72) = v32;
  sub_1AF0FB8EC(0, 0);
  *(v35 + 168) = 0;
  *(v35 + 176) = 0;

  *(v35 + 216) = 0;
  *(v0 + 80) = v35;
  v39 = swift_getKeyPath();
  v40 = swift_allocObject();
  v40[4] = sub_1AF5AA180;
  v40[5] = v39;
  v40[2] = sub_1AF5A9D1C;
  v40[3] = v39;
  v40[6] = v39;
  v41 = swift_allocObject();
  *(v41 + 112) = 1;
  *(v41 + 128) = 0;
  *(v41 + 136) = 0;
  *(v41 + 120) = 0;
  *(v41 + 160) = MEMORY[0x1E69E7CC0];
  *(v41 + 168) = 0;
  *(v41 + 216) = 0;
  *(v41 + 176) = 0;
  *(v41 + 16) = 0x756C6F56776F6873;
  *(v41 + 24) = 0xEA0000000000656DLL;
  *(v41 + 32) = v39;
  *(v41 + 40) = v33;
  *(v41 + 48) = 25;
  *(v41 + 56) = 0;
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
  if (v36)
  {
    v33 = (*(v36 + 8))();
  }

  v42 = swift_conformsToProtocol2();
  if (v42 && v33)
  {
    *(v41 + 160) = (*(v42 + 8))(v33, v42);
  }

  *(v41 + 64) = sub_1AF5A981C;
  *(v41 + 72) = v39;
  sub_1AF0FB8EC(0, 0);
  *(v41 + 168) = 0;
  *(v41 + 176) = 0;

  *(v41 + 216) = 0;
  *(v0 + 88) = v41;
  qword_1EB6C2F00 = v0;
  return result;
}

uint64_t sub_1AF4D8E80()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v62 = swift_allocObject();
  *(v62 + 16) = xmmword_1AFE551A0;
  KeyPath = swift_getKeyPath();
  v1 = swift_getKeyPath();
  v2 = MEMORY[0x1E69E7360];
  sub_1AF5A9240(0, &unk_1EB634340, MEMORY[0x1E69E7360], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF5917DC;
  v3[5] = v1;
  v3[2] = sub_1AF591810;
  v3[3] = v1;
  v3[6] = v1;
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
  strcpy((v4 + 16), "operationIndex");
  *(v4 + 31) = -18;
  *(v4 + 32) = v1;
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

  v9 = *(v4 + 64);
  v10 = *(v4 + 72);
  *(v4 + 64) = sub_1AF59186C;
  *(v4 + 72) = v1;
  sub_1AF0FB8EC(v9, v10);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;

  v11 = &type metadata for Composition.Operation;
  sub_1AF5A9240(0, &qword_1EB6338C8, &type metadata for Composition.Operation, type metadata accessor for EntityGetSet);
  v12 = swift_allocObject();
  v12[4] = sub_1AF5AA184;
  v12[5] = KeyPath;
  v12[2] = sub_1AF5918AC;
  v12[3] = KeyPath;
  v12[6] = KeyPath;
  v13 = swift_allocObject();
  *(v13 + 112) = 1;
  *(v13 + 128) = 0;
  *(v13 + 136) = 0;
  *(v13 + 120) = 0;
  *(v13 + 160) = MEMORY[0x1E69E7CC0];
  *(v13 + 168) = 0;
  *(v13 + 216) = 0;
  *(v13 + 176) = 0;
  *(v13 + 16) = 0x6F6974617265706FLL;
  *(v13 + 24) = 0xE90000000000006ELL;
  *(v13 + 32) = KeyPath;
  *(v13 + 40) = &type metadata for Composition.Operation;
  *(v13 + 48) = 0;
  *(v13 + 56) = 0;
  *(v13 + 58) = 0;
  *(v13 + 184) = 0;
  *(v13 + 188) = 1;
  *(v13 + 192) = 0;
  *(v13 + 196) = 1;
  *(v13 + 200) = 0x1000100000000;
  *(v13 + 208) = 1;
  *(v13 + 96) = 0;
  *(v13 + 104) = 0;
  *(v13 + 64) = 0;
  *(v13 + 72) = 0;
  *(v13 + 144) = xmmword_1AFE22A20;
  *(v13 + 80) = v12;
  *(v13 + 88) = &off_1F2535378;
  *(v13 + 210) = 0;
  v14 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v14)
  {
    v11 = (*(v14 + 8))();
  }

  v15 = swift_conformsToProtocol2();
  if (v15 && v11)
  {
    *(v13 + 160) = (*(v15 + 8))(v11, v15);
  }

  *(v13 + 64) = sub_1AF591908;
  *(v13 + 72) = KeyPath;
  sub_1AF0FB8EC(0, 0);
  *(v13 + 168) = 0;
  *(v13 + 176) = 0;

  *(v13 + 216) = v4;
  *(v62 + 32) = v13;
  v16 = swift_getKeyPath();
  v17 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v18 = swift_allocObject();
  v18[4] = sub_1AF591948;
  v18[5] = v16;
  v18[2] = sub_1AF59197C;
  v18[3] = v16;
  v18[6] = v16;
  v19 = swift_allocObject();
  *(v19 + 112) = 1;
  *(v19 + 128) = 0;
  *(v19 + 136) = 0;
  *(v19 + 120) = 0;
  *(v19 + 160) = MEMORY[0x1E69E7CC0];
  *(v19 + 168) = 0;
  *(v19 + 216) = 0;
  *(v19 + 176) = 0;
  *(v19 + 16) = 0x726F74636166;
  *(v19 + 24) = 0xE600000000000000;
  *(v19 + 32) = v16;
  *(v19 + 40) = v17;
  *(v19 + 48) = 4;
  *(v19 + 56) = 0;
  *(v19 + 58) = 0;
  *(v19 + 184) = 0;
  *(v19 + 188) = 0;
  *(v19 + 192) = 0;
  *(v19 + 196) = 1;
  *(v19 + 200) = 0x100003C23D70ALL;
  *(v19 + 208) = 1;
  *(v19 + 64) = 0;
  *(v19 + 72) = 0;
  *(v19 + 96) = 0;
  *(v19 + 104) = 0;
  *(v19 + 144) = xmmword_1AFE22A20;
  *(v19 + 80) = v18;
  *(v19 + 88) = &off_1F2535378;
  *(v19 + 210) = 0;
  v20 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v20)
  {
    v17 = (*(v20 + 8))();
  }

  v61 = v20;
  v21 = swift_conformsToProtocol2();
  if (v21 && v17)
  {
    *(v19 + 160) = (*(v21 + 8))(v17, v21);
  }

  *(v19 + 64) = sub_1AF5919D8;
  *(v19 + 72) = v16;
  sub_1AF0FB8EC(0, 0);
  *(v19 + 168) = 0;
  *(v19 + 176) = 0;

  *(v19 + 216) = 0;
  *(v62 + 40) = v19;
  v22 = swift_getKeyPath();
  v23 = &type metadata for Entity;
  sub_1AF5A9240(0, &unk_1EB6338D8, &type metadata for Entity, type metadata accessor for EntityGetSet);
  v24 = swift_allocObject();
  v24[4] = sub_1AF5917DC;
  v24[5] = v22;
  v24[2] = sub_1AF591A18;
  v24[3] = v22;
  v24[6] = v22;
  v25 = swift_allocObject();
  *(v25 + 112) = 1;
  *(v25 + 128) = 0;
  *(v25 + 136) = 0;
  *(v25 + 120) = 0;
  *(v25 + 168) = 0;
  *(v25 + 160) = MEMORY[0x1E69E7CC0];
  *(v25 + 216) = 0;
  *(v25 + 176) = 0;
  *(v25 + 16) = 0x65727574786574;
  *(v25 + 24) = 0xE700000000000000;
  *(v25 + 32) = v22;
  *(v25 + 40) = &type metadata for Entity;
  *(v25 + 48) = 8;
  *(v25 + 56) = 0;
  *(v25 + 58) = 0;
  *(v25 + 184) = 0;
  *(v25 + 188) = 1;
  *(v25 + 192) = 0;
  *(v25 + 196) = 1;
  *(v25 + 200) = 0x1000100000000;
  *(v25 + 208) = 1;
  *(v25 + 64) = 0;
  *(v25 + 72) = 0;
  *(v25 + 96) = 0;
  *(v25 + 104) = 0;
  *(v25 + 144) = xmmword_1AFE551B0;
  *(v25 + 80) = v24;
  *(v25 + 88) = &off_1F2535378;
  *(v25 + 210) = 0;
  v26 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v26)
  {
    v23 = (*(v26 + 8))();
  }

  v27 = swift_conformsToProtocol2();
  if (v27 && v23)
  {
    *(v25 + 160) = (*(v27 + 8))(v23, v27);
  }

  *(v25 + 64) = sub_1AF591A74;
  *(v25 + 72) = v22;
  sub_1AF0FB8EC(0, 0);
  *(v25 + 168) = 0;
  *(v25 + 176) = 0;

  *(v25 + 216) = 0;
  *(v62 + 48) = v25;
  v28 = swift_getKeyPath();
  v29 = swift_getKeyPath();
  v30 = swift_allocObject();
  v30[4] = sub_1AF5AA384;
  v30[5] = v29;
  v30[2] = sub_1AF5A9D20;
  v30[3] = v29;
  v30[6] = v29;
  v31 = swift_allocObject();
  *(v31 + 112) = 1;
  *(v31 + 128) = 0;
  *(v31 + 136) = 0;
  *(v31 + 120) = 0;
  *(v31 + 160) = MEMORY[0x1E69E7CC0];
  *(v31 + 168) = 0;
  *(v31 + 216) = 0;
  *(v31 + 176) = 0;
  *(v31 + 16) = 0xD000000000000010;
  *(v31 + 24) = 0x80000001AFF2A940;
  *(v31 + 32) = v29;
  *(v31 + 40) = v2;
  *(v31 + 48) = 0;
  *(v31 + 56) = 1;
  *(v31 + 58) = 0;
  *(v31 + 184) = 0;
  *(v31 + 188) = 1;
  *(v31 + 192) = 0;
  *(v31 + 196) = 1;
  *(v31 + 200) = 0x1000100000000;
  *(v31 + 208) = 1;
  *(v31 + 64) = 0;
  *(v31 + 72) = 0;
  *(v31 + 96) = 0;
  *(v31 + 104) = 0;
  *(v31 + 144) = xmmword_1AFE22A20;
  *(v31 + 80) = v30;
  *(v31 + 88) = &off_1F2535378;
  *(v31 + 210) = 0;
  swift_retain_n();
  if (v6)
  {
    v2 = (*(v6 + 8))();
  }

  v32 = swift_conformsToProtocol2();
  if (v32 && v2)
  {
    *(v31 + 160) = (*(v32 + 8))(v2, v32);
  }

  *(v31 + 64) = sub_1AF5A9820;
  *(v31 + 72) = v29;
  sub_1AF0FB8EC(0, 0);
  *(v31 + 168) = 0;
  *(v31 + 176) = 0;

  *(v31 + 216) = 0;
  v33 = &type metadata for AddressMode;
  sub_1AF5A9240(0, &qword_1EB6338D0, &type metadata for AddressMode, type metadata accessor for EntityGetSet);
  v34 = swift_allocObject();
  v34[4] = sub_1AF591AB4;
  v34[5] = v28;
  v34[2] = sub_1AF591AE0;
  v34[3] = v28;
  v34[6] = v28;
  v35 = swift_allocObject();
  *(v35 + 112) = 1;
  *(v35 + 128) = 0;
  *(v35 + 136) = 0;
  *(v35 + 120) = 0;
  *(v35 + 160) = MEMORY[0x1E69E7CC0];
  *(v35 + 168) = 0;
  *(v35 + 216) = 0;
  *(v35 + 176) = 0;
  *(v35 + 16) = 0x4D73736572646461;
  *(v35 + 24) = 0xEB0000000065646FLL;
  *(v35 + 32) = v28;
  *(v35 + 40) = &type metadata for AddressMode;
  *(v35 + 48) = 16;
  *(v35 + 56) = 0;
  *(v35 + 58) = 0;
  *(v35 + 184) = 0;
  *(v35 + 188) = 1;
  *(v35 + 192) = 0;
  *(v35 + 196) = 1;
  *(v35 + 200) = 0x1000100000000;
  *(v35 + 208) = 1;
  *(v35 + 64) = 0;
  *(v35 + 72) = 0;
  *(v35 + 96) = 0;
  *(v35 + 104) = 0;
  *(v35 + 144) = xmmword_1AFE22A20;
  *(v35 + 80) = v34;
  *(v35 + 88) = &off_1F2535378;
  *(v35 + 210) = 0;
  v36 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v36)
  {
    v33 = (*(v36 + 8))();
  }

  v37 = swift_conformsToProtocol2();
  if (v37 && v33)
  {
    *(v35 + 160) = (*(v37 + 8))(v33, v37);
  }

  *(v35 + 64) = sub_1AF591B3C;
  *(v35 + 72) = v28;
  sub_1AF0FB8EC(0, 0);
  *(v35 + 168) = 0;
  *(v35 + 176) = 0;

  *(v35 + 216) = v31;
  *(v62 + 56) = v35;
  v38 = swift_getKeyPath();
  sub_1AF57C8C8(0);
  v39 = swift_allocObject();
  v39[4] = sub_1AF5917DC;
  v39[5] = v38;
  v39[2] = sub_1AF591B7C;
  v39[3] = v38;
  v39[6] = v38;
  v40 = swift_allocObject();
  *(v40 + 104) = 0;
  *(v40 + 112) = 1;
  *(v40 + 128) = 0;
  *(v40 + 136) = 0;
  *(v40 + 120) = 0;
  *(v40 + 160) = MEMORY[0x1E69E7CC0];
  *(v40 + 216) = 0;
  v41 = MEMORY[0x1E69E6448];
  sub_1AF583D60(0, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
  v43 = v42;
  *(v40 + 168) = 0;
  *(v40 + 176) = 0;
  *(v40 + 16) = 0x656C616373;
  *(v40 + 24) = 0xE500000000000000;
  *(v40 + 32) = v38;
  *(v40 + 40) = v42;
  *(v40 + 48) = 24;
  *(v40 + 56) = 0;
  *(v40 + 58) = 0;
  *(v40 + 184) = 0;
  *(v40 + 188) = 1;
  *(v40 + 192) = 0;
  *(v40 + 196) = 1;
  *(v40 + 200) = 0x1000100000000;
  *(v40 + 208) = 1;
  *(v40 + 64) = 0;
  *(v40 + 72) = 0;
  *(v40 + 96) = 0;
  *(v40 + 144) = xmmword_1AFE22A20;
  *(v40 + 80) = v39;
  *(v40 + 88) = &off_1F2535378;
  *(v40 + 210) = 0;
  v44 = swift_conformsToProtocol2();
  if (v44)
  {
    v45 = v43;
  }

  else
  {
    v45 = 0;
  }

  swift_retain_n();
  v46 = v43;
  if (v45)
  {
    v46 = (*(v44 + 8))(v45, v44);
  }

  v47 = swift_conformsToProtocol2();
  if (v47 && v46)
  {
    *(v40 + 160) = (*(v47 + 8))(v46, v47);
  }

  v48 = *(v40 + 64);
  v49 = *(v40 + 72);
  *(v40 + 64) = sub_1AF591BD8;
  *(v40 + 72) = v38;
  sub_1AF0FB8EC(v48, v49);
  *(v40 + 168) = 0;
  *(v40 + 176) = 0;

  *(v40 + 216) = 0;

  *(v62 + 64) = v40;
  v50 = swift_getKeyPath();
  v51 = swift_allocObject();
  v51[4] = sub_1AF5AA384;
  v51[5] = v50;
  v51[2] = sub_1AF5A9D24;
  v51[3] = v50;
  v51[6] = v50;
  v52 = swift_allocObject();
  *(v52 + 112) = 1;
  *(v52 + 128) = 0;
  *(v52 + 136) = 0;
  *(v52 + 120) = 0;
  *(v52 + 160) = MEMORY[0x1E69E7CC0];
  *(v52 + 168) = 0;
  *(v52 + 216) = 0;
  *(v52 + 176) = 0;
  *(v52 + 16) = 1935763810;
  *(v52 + 24) = 0xE400000000000000;
  *(v52 + 32) = v50;
  *(v52 + 40) = v43;
  *(v52 + 48) = 32;
  *(v52 + 56) = 0;
  *(v52 + 58) = 0;
  *(v52 + 184) = 0;
  *(v52 + 188) = 1;
  *(v52 + 192) = 0;
  *(v52 + 196) = 1;
  *(v52 + 200) = 0x1000100000000;
  *(v52 + 208) = 1;
  *(v52 + 64) = 0;
  *(v52 + 72) = 0;
  *(v52 + 96) = 0;
  *(v52 + 104) = 0;
  *(v52 + 144) = xmmword_1AFE22A20;
  *(v52 + 80) = v51;
  *(v52 + 88) = &off_1F2535378;
  *(v52 + 210) = 0;
  swift_retain_n();
  if (v45)
  {
    v43 = (*(v44 + 8))(v45, v44);
  }

  v53 = swift_conformsToProtocol2();
  if (v53 && v43)
  {
    *(v52 + 160) = (*(v53 + 8))(v43, v53);
  }

  v54 = *(v52 + 64);
  v55 = *(v52 + 72);
  *(v52 + 64) = sub_1AF5A9824;
  *(v52 + 72) = v50;
  sub_1AF0FB8EC(v54, v55);
  *(v52 + 168) = 0;
  *(v52 + 176) = 0;

  *(v52 + 216) = 0;

  *(v62 + 72) = v52;
  v56 = swift_getKeyPath();
  v57 = swift_allocObject();
  v57[4] = sub_1AF5A948C;
  v57[5] = v56;
  v57[2] = sub_1AF5A9D28;
  v57[3] = v56;
  v57[6] = v56;
  v58 = swift_allocObject();
  *(v58 + 112) = 1;
  *(v58 + 128) = 0;
  *(v58 + 136) = 0;
  *(v58 + 120) = 0;
  *(v58 + 160) = MEMORY[0x1E69E7CC0];
  *(v58 + 168) = 0;
  *(v58 + 216) = 0;
  *(v58 + 176) = 0;
  *(v58 + 16) = 0x656C676E61;
  *(v58 + 24) = 0xE500000000000000;
  *(v58 + 32) = v56;
  *(v58 + 40) = v41;
  *(v58 + 48) = 40;
  *(v58 + 56) = 0;
  *(v58 + 58) = 0;
  *(v58 + 184) = 0;
  *(v58 + 188) = 1;
  *(v58 + 192) = 0;
  *(v58 + 196) = 1;
  *(v58 + 200) = 0x1000100000000;
  *(v58 + 208) = 1;
  *(v58 + 64) = 0;
  *(v58 + 72) = 0;
  *(v58 + 96) = 0;
  *(v58 + 104) = 0;
  *(v58 + 144) = xmmword_1AFE22A20;
  *(v58 + 80) = v57;
  *(v58 + 88) = &off_1F2535378;
  *(v58 + 210) = 0;
  swift_retain_n();
  if (v61)
  {
    v41 = (*(v61 + 8))();
  }

  v59 = swift_conformsToProtocol2();
  if (v59 && v41)
  {
    *(v58 + 160) = (*(v59 + 8))(v41, v59);
  }

  *(v58 + 64) = sub_1AF5A9828;
  *(v58 + 72) = v56;
  sub_1AF0FB8EC(0, 0);
  *(v58 + 168) = 0;
  *(v58 + 176) = 0;

  *(v58 + 216) = 0;
  *(v62 + 80) = v58;
  qword_1EB6C2F08 = v62;
  return result;
}

uint64_t sub_1AF4DA0DC()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v126 = swift_allocObject();
  *(v126 + 16) = xmmword_1AFE55270;
  KeyPath = swift_getKeyPath();
  v1 = swift_getKeyPath();
  v2 = MEMORY[0x1E69E7360];
  sub_1AF5A9240(0, &unk_1EB634340, MEMORY[0x1E69E7360], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF591E9C;
  v3[5] = v1;
  v3[2] = sub_1AF591ED0;
  v3[3] = v1;
  v3[6] = v1;
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
  strcpy((v4 + 16), "operationIndex");
  *(v4 + 31) = -18;
  *(v4 + 32) = v1;
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

  v8 = *(v4 + 64);
  v9 = *(v4 + 72);
  *(v4 + 64) = sub_1AF591F2C;
  *(v4 + 72) = v1;
  sub_1AF0FB8EC(v8, v9);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;

  v10 = &type metadata for Composition.Operation;
  sub_1AF5A9240(0, &qword_1EB6338C8, &type metadata for Composition.Operation, type metadata accessor for EntityGetSet);
  v11 = swift_allocObject();
  v11[4] = sub_1AF5AA188;
  v11[5] = KeyPath;
  v11[2] = sub_1AF591F6C;
  v11[3] = KeyPath;
  v11[6] = KeyPath;
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
  *(v12 + 16) = 0x6F6974617265706FLL;
  *(v12 + 24) = 0xE90000000000006ELL;
  *(v12 + 32) = KeyPath;
  *(v12 + 40) = &type metadata for Composition.Operation;
  *(v12 + 48) = 12;
  *(v12 + 56) = 0;
  *(v12 + 58) = 0;
  *(v12 + 184) = 0;
  *(v12 + 188) = 1;
  *(v12 + 192) = 0;
  *(v12 + 196) = 1;
  *(v12 + 200) = 0x1000100000000;
  *(v12 + 208) = 1;
  *(v12 + 96) = 0;
  *(v12 + 104) = 0;
  *(v12 + 64) = 0;
  *(v12 + 72) = 0;
  *(v12 + 144) = xmmword_1AFE22A20;
  *(v12 + 80) = v11;
  *(v12 + 88) = &off_1F2535378;
  *(v12 + 210) = 0;
  v13 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v13)
  {
    v10 = (*(v13 + 8))();
  }

  v14 = swift_conformsToProtocol2();
  v15 = MEMORY[0x1E69E7360];
  if (v14 && v10)
  {
    *(v12 + 160) = (*(v14 + 8))(v10, v14);
  }

  v16 = *(v12 + 64);
  v17 = *(v12 + 72);
  *(v12 + 64) = sub_1AF591FC8;
  *(v12 + 72) = KeyPath;
  sub_1AF0FB8EC(v16, v17);
  *(v12 + 168) = 0;
  *(v12 + 176) = 0;

  *(v12 + 216) = v4;

  *(v126 + 32) = v12;
  v18 = swift_getKeyPath();
  v19 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v20 = swift_allocObject();
  v20[4] = sub_1AF592008;
  v20[5] = v18;
  v20[2] = sub_1AF59203C;
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
  *(v21 + 16) = 0x726F74636166;
  *(v21 + 24) = 0xE600000000000000;
  *(v21 + 32) = v18;
  *(v21 + 40) = v19;
  *(v21 + 48) = 16;
  *(v21 + 56) = 0;
  *(v21 + 58) = 0;
  *(v21 + 184) = 0;
  *(v21 + 188) = 0;
  *(v21 + 192) = 0;
  *(v21 + 196) = 1;
  *(v21 + 200) = 0x100003C23D70ALL;
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

  v24 = *(v21 + 64);
  v25 = *(v21 + 72);
  *(v21 + 64) = sub_1AF592098;
  *(v21 + 72) = v18;
  sub_1AF0FB8EC(v24, v25);
  *(v21 + 168) = 0;
  *(v21 + 176) = 0;

  *(v21 + 216) = 0;

  *(v126 + 40) = v21;
  v26 = swift_getKeyPath();
  v27 = &type metadata for Entity;
  sub_1AF5A9240(0, &unk_1EB6338D8, &type metadata for Entity, type metadata accessor for EntityGetSet);
  v28 = swift_allocObject();
  v28[4] = sub_1AF591E9C;
  v28[5] = v26;
  v28[2] = sub_1AF5920D8;
  v28[3] = v26;
  v28[6] = v26;
  v29 = swift_allocObject();
  *(v29 + 112) = 1;
  *(v29 + 128) = 0;
  *(v29 + 136) = 0;
  *(v29 + 120) = 0;
  *(v29 + 168) = 0;
  *(v29 + 160) = MEMORY[0x1E69E7CC0];
  *(v29 + 210) = 0;
  *(v29 + 216) = 0;
  *(v29 + 176) = 0;
  *(v29 + 16) = 0x65727574786574;
  *(v29 + 24) = 0xE700000000000000;
  *(v29 + 32) = v26;
  *(v29 + 40) = &type metadata for Entity;
  *(v29 + 48) = 0;
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
  *(v29 + 144) = xmmword_1AFE551B0;
  *(v29 + 80) = v28;
  *(v29 + 88) = &off_1F2535378;
  *(v29 + 210) = 0;
  v30 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v30)
  {
    v27 = (*(v30 + 8))();
  }

  v125 = v22;
  v31 = swift_conformsToProtocol2();
  if (v31 && v27)
  {
    *(v29 + 160) = (*(v31 + 8))(v27, v31);
  }

  v32 = *(v29 + 64);
  v33 = *(v29 + 72);
  *(v29 + 64) = sub_1AF592134;
  *(v29 + 72) = v26;
  sub_1AF0FB8EC(v32, v33);
  *(v29 + 168) = 0;
  *(v29 + 176) = 0;

  *(v29 + 216) = 0;

  *(v126 + 48) = v29;
  v34 = swift_getKeyPath();
  v35 = swift_getKeyPath();
  v36 = swift_allocObject();
  v36[4] = sub_1AF5AA388;
  v36[5] = v35;
  v36[2] = sub_1AF5A9D38;
  v36[3] = v35;
  v36[6] = v35;
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
  strcpy((v37 + 16), "channelIndex");
  *(v37 + 29) = 0;
  *(v37 + 30) = -5120;
  *(v37 + 32) = v35;
  *(v37 + 40) = v15;
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
  *(v37 + 96) = 0;
  *(v37 + 104) = 0;
  *(v37 + 144) = xmmword_1AFE22A20;
  *(v37 + 80) = v36;
  *(v37 + 88) = &off_1F2535378;
  *(v37 + 210) = 0;
  swift_retain_n();
  if (v6)
  {
    v38 = (*(v6 + 8))();
  }

  else
  {
    v38 = v15;
  }

  v39 = swift_conformsToProtocol2();
  if (v39 && v38)
  {
    *(v37 + 160) = (*(v39 + 8))(v38, v39);
  }

  v40 = *(v37 + 64);
  v41 = *(v37 + 72);
  *(v37 + 64) = sub_1AF5A982C;
  *(v37 + 72) = v35;
  sub_1AF0FB8EC(v40, v41);
  *(v37 + 168) = 0;
  *(v37 + 176) = 0;

  *(v37 + 216) = 0;

  v42 = &type metadata for TextureChannel;
  sub_1AF5A9240(0, &qword_1EB632FA0, &type metadata for TextureChannel, type metadata accessor for EntityGetSet);
  v43 = swift_allocObject();
  v43[4] = sub_1AF592174;
  v43[5] = v34;
  v43[2] = sub_1AF5921A0;
  v43[3] = v34;
  v43[6] = v34;
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
  *(v44 + 16) = 0x6C656E6E616863;
  *(v44 + 24) = 0xE700000000000000;
  *(v44 + 32) = v34;
  *(v44 + 40) = &type metadata for TextureChannel;
  *(v44 + 48) = 8;
  *(v44 + 56) = 0;
  *(v44 + 58) = 0;
  *(v44 + 184) = 0;
  *(v44 + 188) = 1;
  *(v44 + 192) = 0;
  *(v44 + 196) = 1;
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
    v42 = (*(v45 + 8))();
  }

  v46 = swift_conformsToProtocol2();
  if (v46 && v42)
  {
    *(v44 + 160) = (*(v46 + 8))(v42, v46);
  }

  v47 = *(v44 + 64);
  v48 = *(v44 + 72);
  *(v44 + 64) = sub_1AF5921FC;
  *(v44 + 72) = v34;
  sub_1AF0FB8EC(v47, v48);
  *(v44 + 168) = 0;
  *(v44 + 176) = 0;

  *(v44 + 216) = v37;

  *(v126 + 56) = v44;
  v49 = swift_getKeyPath();
  v50 = swift_getKeyPath();
  v51 = swift_allocObject();
  v51[4] = sub_1AF5AA388;
  v51[5] = v50;
  v51[2] = sub_1AF5A9D38;
  v51[3] = v50;
  v51[6] = v50;
  v52 = swift_allocObject();
  *(v52 + 112) = 1;
  *(v52 + 128) = 0;
  *(v52 + 136) = 0;
  *(v52 + 120) = 0;
  *(v52 + 160) = MEMORY[0x1E69E7CC0];
  *(v52 + 168) = 0;
  *(v52 + 210) = 0;
  *(v52 + 216) = 0;
  *(v52 + 176) = 0;
  *(v52 + 16) = 0xD000000000000010;
  *(v52 + 24) = 0x80000001AFF2A940;
  *(v52 + 32) = v50;
  *(v52 + 40) = v15;
  *(v52 + 48) = 0;
  *(v52 + 56) = 1;
  *(v52 + 58) = 0;
  *(v52 + 184) = 0;
  *(v52 + 188) = 1;
  *(v52 + 192) = 0;
  *(v52 + 196) = 1;
  *(v52 + 200) = 0x1000100000000;
  *(v52 + 208) = 1;
  *(v52 + 64) = 0;
  *(v52 + 72) = 0;
  *(v52 + 96) = 0;
  *(v52 + 104) = 0;
  *(v52 + 144) = xmmword_1AFE22A20;
  *(v52 + 80) = v51;
  *(v52 + 88) = &off_1F2535378;
  *(v52 + 210) = 0;
  swift_retain_n();
  if (v6)
  {
    v53 = (*(v6 + 8))();
  }

  else
  {
    v53 = v15;
  }

  v54 = swift_conformsToProtocol2();
  if (v54 && v53)
  {
    *(v52 + 160) = (*(v54 + 8))(v53, v54);
  }

  v55 = *(v52 + 64);
  v56 = *(v52 + 72);
  *(v52 + 64) = sub_1AF5A982C;
  *(v52 + 72) = v50;
  sub_1AF0FB8EC(v55, v56);
  *(v52 + 168) = 0;
  *(v52 + 176) = 0;

  *(v52 + 216) = 0;

  v57 = &type metadata for AddressMode;
  sub_1AF5A9240(0, &qword_1EB6338D0, &type metadata for AddressMode, type metadata accessor for EntityGetSet);
  v58 = swift_allocObject();
  v58[4] = sub_1AF59223C;
  v58[5] = v49;
  v58[2] = sub_1AF592268;
  v58[3] = v49;
  v58[6] = v49;
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
  *(v59 + 16) = 0x4D73736572646461;
  *(v59 + 24) = 0xEB0000000065646FLL;
  *(v59 + 32) = v49;
  *(v59 + 40) = &type metadata for AddressMode;
  *(v59 + 48) = 9;
  *(v59 + 56) = 0;
  *(v59 + 58) = 0;
  *(v59 + 184) = 0;
  *(v59 + 188) = 1;
  *(v59 + 192) = 0;
  *(v59 + 196) = 1;
  *(v59 + 200) = 0x1000100000000;
  *(v59 + 208) = 1;
  *(v59 + 64) = 0;
  *(v59 + 72) = 0;
  *(v59 + 96) = 0;
  *(v59 + 104) = 0;
  *(v59 + 144) = xmmword_1AFE22A20;
  *(v59 + 80) = v58;
  *(v59 + 88) = &off_1F2535378;
  *(v59 + 210) = 0;
  v60 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v60)
  {
    v57 = (*(v60 + 8))();
  }

  v61 = swift_conformsToProtocol2();
  if (v61 && v57)
  {
    *(v59 + 160) = (*(v61 + 8))(v57, v61);
  }

  v62 = *(v59 + 64);
  v63 = *(v59 + 72);
  *(v59 + 64) = sub_1AF5922C4;
  *(v59 + 72) = v49;
  sub_1AF0FB8EC(v62, v63);
  *(v59 + 168) = 0;
  *(v59 + 176) = 0;

  *(v59 + 216) = v52;

  *(v126 + 64) = v59;
  v64 = swift_getKeyPath();
  v65 = swift_getKeyPath();
  v66 = swift_allocObject();
  v66[4] = sub_1AF5AA388;
  v66[5] = v65;
  v66[2] = sub_1AF5A9D38;
  v66[3] = v65;
  v66[6] = v65;
  v67 = swift_allocObject();
  *(v67 + 112) = 1;
  *(v67 + 128) = 0;
  *(v67 + 136) = 0;
  *(v67 + 120) = 0;
  *(v67 + 160) = MEMORY[0x1E69E7CC0];
  *(v67 + 168) = 0;
  *(v67 + 216) = 0;
  *(v67 + 176) = 0;
  *(v67 + 16) = 0x65646E4965646F6DLL;
  *(v67 + 24) = 0xE900000000000078;
  *(v67 + 32) = v65;
  *(v67 + 40) = v15;
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
  *(v67 + 96) = 0;
  *(v67 + 104) = 0;
  *(v67 + 144) = xmmword_1AFE22A20;
  *(v67 + 80) = v66;
  *(v67 + 88) = &off_1F2535378;
  *(v67 + 210) = 0;
  swift_retain_n();
  if (v6)
  {
    v15 = (*(v6 + 8))();
  }

  v68 = swift_conformsToProtocol2();
  if (v68 && v15)
  {
    *(v67 + 160) = (*(v68 + 8))(v15, v68);
  }

  *(v67 + 64) = sub_1AF5A982C;
  *(v67 + 72) = v65;
  sub_1AF0FB8EC(0, 0);
  *(v67 + 168) = 0;
  *(v67 + 176) = 0;

  *(v67 + 216) = 0;
  v69 = &type metadata for ScaleMode;
  sub_1AF5A9240(0, &qword_1EB634360, &type metadata for ScaleMode, type metadata accessor for EntityGetSet);
  v70 = swift_allocObject();
  v70[4] = sub_1AF592304;
  v70[5] = v64;
  v70[2] = sub_1AF592330;
  v70[3] = v64;
  v70[6] = v64;
  v71 = swift_allocObject();
  *(v71 + 112) = 1;
  *(v71 + 128) = 0;
  *(v71 + 136) = 0;
  *(v71 + 120) = 0;
  *(v71 + 160) = MEMORY[0x1E69E7CC0];
  *(v71 + 168) = 0;
  *(v71 + 216) = 0;
  *(v71 + 176) = 0;
  *(v71 + 16) = 1701080941;
  *(v71 + 24) = 0xE400000000000000;
  *(v71 + 32) = v64;
  *(v71 + 40) = &type metadata for ScaleMode;
  *(v71 + 48) = 20;
  *(v71 + 56) = 0;
  *(v71 + 58) = 0;
  *(v71 + 184) = 0;
  *(v71 + 188) = 1;
  *(v71 + 192) = 0;
  *(v71 + 196) = 1;
  *(v71 + 200) = 0x1000100000000;
  *(v71 + 208) = 1;
  *(v71 + 64) = 0;
  *(v71 + 72) = 0;
  *(v71 + 96) = 0;
  *(v71 + 104) = 0;
  *(v71 + 144) = xmmword_1AFE22A20;
  *(v71 + 80) = v70;
  *(v71 + 88) = &off_1F2535378;
  *(v71 + 210) = 0;
  v72 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v72)
  {
    v69 = (*(v72 + 8))();
  }

  v73 = swift_conformsToProtocol2();
  if (v73 && v69)
  {
    *(v71 + 160) = (*(v73 + 8))(v69, v73);
  }

  *(v71 + 64) = sub_1AF59238C;
  *(v71 + 72) = v64;
  sub_1AF0FB8EC(0, 0);
  *(v71 + 168) = 0;
  *(v71 + 176) = 0;

  *(v71 + 216) = v67;
  *(v126 + 72) = v71;
  v74 = swift_getKeyPath();
  sub_1AF57F2F4(0);
  v75 = swift_allocObject();
  v75[4] = sub_1AF591E9C;
  v75[5] = v74;
  v75[2] = sub_1AF5923CC;
  v75[3] = v74;
  v75[6] = v74;
  v76 = swift_allocObject();
  *(v76 + 104) = 0;
  *(v76 + 112) = 1;
  *(v76 + 128) = 0;
  *(v76 + 136) = 0;
  *(v76 + 120) = 0;
  *(v76 + 160) = MEMORY[0x1E69E7CC0];
  *(v76 + 216) = 0;
  sub_1AF589E74(0, &qword_1ED72F958, MEMORY[0x1E69E6448], MEMORY[0x1E69E6468], MEMORY[0x1E69E66A8]);
  v78 = v77;
  *(v76 + 168) = 0;
  *(v76 + 176) = 0;
  *(v76 + 16) = 120;
  *(v76 + 24) = 0xE100000000000000;
  *(v76 + 32) = v74;
  *(v76 + 40) = v77;
  *(v76 + 48) = 24;
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
  *(v76 + 144) = xmmword_1AFE22A20;
  *(v76 + 80) = v75;
  *(v76 + 88) = &off_1F2535378;
  *(v76 + 210) = 0;
  v79 = swift_conformsToProtocol2();
  if (v79)
  {
    v80 = v78;
  }

  else
  {
    v80 = 0;
  }

  swift_retain_n();
  v81 = v78;
  if (v80)
  {
    v81 = (*(v79 + 8))(v80, v79);
  }

  v82 = swift_conformsToProtocol2();
  if (v82 && v81)
  {
    *(v76 + 160) = (*(v82 + 8))(v81, v82);
  }

  v83 = *(v76 + 64);
  v84 = *(v76 + 72);
  *(v76 + 64) = sub_1AF592428;
  *(v76 + 72) = v74;
  sub_1AF0FB8EC(v83, v84);
  *(v76 + 168) = 0;
  *(v76 + 176) = 0;

  *(v76 + 216) = 0;

  *(v126 + 80) = v76;
  v85 = swift_getKeyPath();
  v86 = swift_getKeyPath();
  v87 = swift_allocObject();
  v87[4] = sub_1AF5AA388;
  v87[5] = v85;
  v87[2] = sub_1AF5AA4EC;
  v87[3] = v85;
  v87[6] = v85;
  v88 = swift_allocObject();
  *(v88 + 112) = 1;
  *(v88 + 128) = 0;
  *(v88 + 136) = 0;
  *(v88 + 120) = 0;
  *(v88 + 160) = MEMORY[0x1E69E7CC0];
  *(v88 + 168) = 0;
  *(v88 + 216) = 0;
  *(v88 + 176) = 0;
  *(v88 + 16) = 121;
  *(v88 + 24) = 0xE100000000000000;
  *(v88 + 32) = v85;
  *(v88 + 40) = v78;
  *(v88 + 48) = 32;
  *(v88 + 56) = 0;
  *(v88 + 58) = 0;
  *(v88 + 184) = 0;
  *(v88 + 188) = 1;
  *(v88 + 192) = 0;
  *(v88 + 196) = 1;
  *(v88 + 200) = 0x1000100000000;
  *(v88 + 208) = 1;
  *(v88 + 64) = 0;
  *(v88 + 72) = 0;
  *(v88 + 96) = v86;
  *(v88 + 104) = 0;
  *(v88 + 144) = xmmword_1AFE22A20;
  *(v88 + 80) = v87;
  *(v88 + 88) = &off_1F2535378;
  *(v88 + 210) = 0;
  swift_retain_n();

  v89 = v78;
  if (v80)
  {
    v89 = (*(v79 + 8))(v80, v79);
  }

  v90 = swift_conformsToProtocol2();
  if (v90 && v89)
  {
    v91 = (*(v90 + 8))(v89, v90);

    *(v88 + 160) = v91;
  }

  else
  {
  }

  v92 = *(v88 + 64);
  v93 = *(v88 + 72);
  *(v88 + 64) = sub_1AF5A9830;
  *(v88 + 72) = v85;
  sub_1AF0FB8EC(v92, v93);
  *(v88 + 168) = 0;
  *(v88 + 176) = 0;

  *(v88 + 216) = 0;

  *(v126 + 88) = v88;
  v94 = swift_getKeyPath();
  v95 = swift_getKeyPath();
  v96 = swift_allocObject();
  v96[4] = sub_1AF5AA388;
  v96[5] = v94;
  v96[2] = sub_1AF5AA4EC;
  v96[3] = v94;
  v96[6] = v94;
  v97 = swift_allocObject();
  *(v97 + 112) = 1;
  *(v97 + 128) = 0;
  *(v97 + 136) = 0;
  *(v97 + 120) = 0;
  *(v97 + 160) = MEMORY[0x1E69E7CC0];
  *(v97 + 168) = 0;
  *(v97 + 216) = 0;
  *(v97 + 176) = 0;
  *(v97 + 16) = 122;
  *(v97 + 24) = 0xE100000000000000;
  *(v97 + 32) = v94;
  *(v97 + 40) = v78;
  *(v97 + 48) = 40;
  *(v97 + 56) = 0;
  *(v97 + 58) = 0;
  *(v97 + 184) = 0;
  *(v97 + 188) = 1;
  *(v97 + 192) = 0;
  *(v97 + 196) = 1;
  *(v97 + 200) = 0x1000100000000;
  *(v97 + 208) = 1;
  *(v97 + 64) = 0;
  *(v97 + 72) = 0;
  *(v97 + 96) = v95;
  *(v97 + 104) = 0;
  *(v97 + 144) = xmmword_1AFE22A20;
  *(v97 + 80) = v96;
  *(v97 + 88) = &off_1F2535378;
  *(v97 + 210) = 0;
  swift_retain_n();

  if (v80)
  {
    v78 = (*(v79 + 8))(v80, v79);
  }

  v98 = swift_conformsToProtocol2();
  if (v98 && v78)
  {
    v99 = (*(v98 + 8))(v78, v98);

    *(v97 + 160) = v99;
  }

  else
  {
  }

  v100 = *(v97 + 64);
  v101 = *(v97 + 72);
  *(v97 + 64) = sub_1AF5A9830;
  *(v97 + 72) = v94;
  sub_1AF0FB8EC(v100, v101);
  *(v97 + 168) = 0;
  *(v97 + 176) = 0;

  *(v97 + 216) = 0;

  *(v126 + 96) = v97;
  v102 = swift_getKeyPath();
  sub_1AF57C8C8(0);
  v103 = swift_allocObject();
  v103[4] = sub_1AF591E9C;
  v103[5] = v102;
  v103[2] = sub_1AF59246C;
  v103[3] = v102;
  v103[6] = v102;
  v104 = swift_allocObject();
  *(v104 + 104) = 0;
  *(v104 + 112) = 1;
  *(v104 + 128) = 0;
  *(v104 + 136) = 0;
  *(v104 + 120) = 0;
  *(v104 + 160) = MEMORY[0x1E69E7CC0];
  *(v104 + 216) = 0;
  v105 = MEMORY[0x1E69E6448];
  sub_1AF583D60(0, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
  v107 = v106;
  *(v104 + 168) = 0;
  *(v104 + 176) = 0;
  *(v104 + 16) = 0x656C616373;
  *(v104 + 24) = 0xE500000000000000;
  *(v104 + 32) = v102;
  *(v104 + 40) = v106;
  *(v104 + 48) = 48;
  *(v104 + 56) = 0;
  *(v104 + 58) = 0;
  *(v104 + 184) = 0;
  *(v104 + 188) = 1;
  *(v104 + 192) = 0;
  *(v104 + 196) = 1;
  *(v104 + 200) = 0x1000100000000;
  *(v104 + 208) = 1;
  *(v104 + 64) = 0;
  *(v104 + 72) = 0;
  *(v104 + 96) = 0;
  *(v104 + 144) = xmmword_1AFE22A20;
  *(v104 + 80) = v103;
  *(v104 + 88) = &off_1F2535378;
  *(v104 + 210) = 0;
  v108 = swift_conformsToProtocol2();
  if (v108)
  {
    v109 = v107;
  }

  else
  {
    v109 = 0;
  }

  swift_retain_n();
  v110 = v107;
  if (v109)
  {
    v110 = (*(v108 + 8))(v109, v108);
  }

  v111 = swift_conformsToProtocol2();
  if (v111 && v110)
  {
    *(v104 + 160) = (*(v111 + 8))(v110, v111);
  }

  v112 = *(v104 + 64);
  v113 = *(v104 + 72);
  *(v104 + 64) = sub_1AF5924C8;
  *(v104 + 72) = v102;
  sub_1AF0FB8EC(v112, v113);
  *(v104 + 168) = 0;
  *(v104 + 176) = 0;

  *(v104 + 216) = 0;

  *(v126 + 104) = v104;
  v114 = swift_getKeyPath();
  v115 = swift_allocObject();
  v115[4] = sub_1AF5AA388;
  v115[5] = v114;
  v115[2] = sub_1AF5A9D3C;
  v115[3] = v114;
  v115[6] = v114;
  v116 = swift_allocObject();
  *(v116 + 112) = 1;
  *(v116 + 128) = 0;
  *(v116 + 136) = 0;
  *(v116 + 120) = 0;
  *(v116 + 160) = MEMORY[0x1E69E7CC0];
  *(v116 + 168) = 0;
  *(v116 + 216) = 0;
  *(v116 + 176) = 0;
  *(v116 + 16) = 1935763810;
  *(v116 + 24) = 0xE400000000000000;
  *(v116 + 32) = v114;
  *(v116 + 40) = v107;
  *(v116 + 48) = 56;
  *(v116 + 56) = 0;
  *(v116 + 58) = 0;
  *(v116 + 184) = 0;
  *(v116 + 188) = 1;
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
  swift_retain_n();
  if (v109)
  {
    v107 = (*(v108 + 8))(v109, v108);
  }

  v117 = swift_conformsToProtocol2();
  if (v117 && v107)
  {
    *(v116 + 160) = (*(v117 + 8))(v107, v117);
  }

  v118 = *(v116 + 64);
  v119 = *(v116 + 72);
  *(v116 + 64) = sub_1AF5A9834;
  *(v116 + 72) = v114;
  sub_1AF0FB8EC(v118, v119);
  *(v116 + 168) = 0;
  *(v116 + 176) = 0;

  *(v116 + 216) = 0;

  *(v126 + 112) = v116;
  v120 = swift_getKeyPath();
  v121 = swift_allocObject();
  v121[4] = sub_1AF5A9490;
  v121[5] = v120;
  v121[2] = sub_1AF5A9D40;
  v121[3] = v120;
  v121[6] = v120;
  v122 = swift_allocObject();
  *(v122 + 112) = 1;
  *(v122 + 128) = 0;
  *(v122 + 136) = 0;
  *(v122 + 120) = 0;
  *(v122 + 160) = MEMORY[0x1E69E7CC0];
  *(v122 + 168) = 0;
  *(v122 + 176) = 0;
  *(v122 + 216) = 0;
  *(v122 + 16) = 0x656C676E61;
  *(v122 + 24) = 0xE500000000000000;
  *(v122 + 32) = v120;
  *(v122 + 40) = v105;
  *(v122 + 48) = 64;
  *(v122 + 56) = 0;
  *(v122 + 58) = 0;
  *(v122 + 184) = 0;
  *(v122 + 188) = 1;
  *(v122 + 192) = 0;
  *(v122 + 196) = 1;
  *(v122 + 200) = 0x1000100000000;
  *(v122 + 208) = 1;
  *(v122 + 64) = 0;
  *(v122 + 72) = 0;
  *(v122 + 96) = 0;
  *(v122 + 104) = 0;
  *(v122 + 144) = xmmword_1AFE22A20;
  *(v122 + 80) = v121;
  *(v122 + 88) = &off_1F2535378;
  *(v122 + 210) = 0;
  swift_retain_n();
  if (v125)
  {
    v105 = (*(v125 + 8))();
  }

  v123 = swift_conformsToProtocol2();
  if (v123 && v105)
  {
    *(v122 + 160) = (*(v123 + 8))(v105, v123);
  }

  *(v122 + 64) = sub_1AF5A9838;
  *(v122 + 72) = v120;
  sub_1AF0FB8EC(0, 0);
  *(v122 + 168) = 0;
  *(v122 + 176) = 0;

  *(v122 + 216) = 0;
  *(v126 + 120) = v122;
  qword_1EB6C2F10 = v126;
  return result;
}

uint64_t sub_1AF4DBF90(uint64_t result)
{
  v2 = result;
  if ((result & 0xFC) != 0)
  {
    v2 = 4;
  }

  *(v1 + 12) = v2;
  return result;
}

uint64_t sub_1AF4DBFA8(uint64_t result)
{
  v2 = result;
  if (result >= 5u)
  {
    v2 = 5;
  }

  *(v1 + 8) = v2;
  return result;
}

uint64_t sub_1AF4DBFC8(uint64_t result)
{
  v2 = result;
  if ((result & 0xFC) != 0)
  {
    v2 = 4;
  }

  *(v1 + 9) = v2;
  return result;
}

uint64_t sub_1AF4DBFE0(uint64_t result)
{
  v2 = result;
  if (result >= 3u)
  {
    v2 = 3;
  }

  *(v1 + 20) = v2;
  return result;
}

uint64_t sub_1AF4DC014()
{
  if (qword_1EB636F00 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1AF4DC104()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE551A0;
  KeyPath = swift_getKeyPath();
  v2 = &type metadata for Entity;
  sub_1AF5A9240(0, &unk_1EB6338D8, &type metadata for Entity, type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF592910;
  v3[5] = KeyPath;
  v3[2] = sub_1AF592944;
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

  v7 = *(v4 + 64);
  v8 = *(v4 + 72);
  *(v4 + 64) = sub_1AF5929A0;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(v7, v8);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;

  v65 = v0;
  *(v0 + 32) = v4;
  v9 = swift_getKeyPath();
  v10 = swift_getKeyPath();
  v11 = MEMORY[0x1E69E7360];
  sub_1AF5A9240(0, &unk_1EB634340, MEMORY[0x1E69E7360], type metadata accessor for EntityGetSet);
  v12 = swift_allocObject();
  v12[4] = sub_1AF592910;
  v12[5] = v10;
  v12[2] = sub_1AF5929E0;
  v12[3] = v10;
  v12[6] = v10;
  v13 = swift_allocObject();
  *(v13 + 112) = 1;
  *(v13 + 128) = 0;
  *(v13 + 136) = 0;
  *(v13 + 120) = 0;
  *(v13 + 160) = MEMORY[0x1E69E7CC0];
  *(v13 + 168) = 0;
  *(v13 + 216) = 0;
  *(v13 + 176) = 0;
  strcpy((v13 + 16), "channelIndex");
  *(v13 + 29) = 0;
  *(v13 + 30) = -5120;
  *(v13 + 32) = v10;
  *(v13 + 40) = v11;
  *(v13 + 48) = 0;
  *(v13 + 56) = 1;
  *(v13 + 58) = 0;
  *(v13 + 184) = 0;
  *(v13 + 188) = 1;
  *(v13 + 192) = 0;
  *(v13 + 196) = 1;
  *(v13 + 200) = 0x1000100000000;
  *(v13 + 208) = 1;
  *(v13 + 64) = 0;
  *(v13 + 72) = 0;
  *(v13 + 96) = 0;
  *(v13 + 104) = 0;
  *(v13 + 144) = xmmword_1AFE22A20;
  *(v13 + 80) = v12;
  *(v13 + 88) = &off_1F2535378;
  *(v13 + 210) = 0;
  v14 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v14)
  {
    v15 = (*(v14 + 8))();
  }

  else
  {
    v15 = v11;
  }

  v16 = swift_conformsToProtocol2();
  if (v16 && v15)
  {
    *(v13 + 160) = (*(v16 + 8))(v15, v16);
  }

  *(v13 + 64) = sub_1AF592A3C;
  *(v13 + 72) = v10;
  sub_1AF0FB8EC(0, 0);
  *(v13 + 168) = 0;
  *(v13 + 176) = 0;

  *(v13 + 216) = 0;
  v17 = &type metadata for TextureChannel;
  sub_1AF5A9240(0, &qword_1EB632FA0, &type metadata for TextureChannel, type metadata accessor for EntityGetSet);
  v18 = swift_allocObject();
  v18[4] = sub_1AF592A7C;
  v18[5] = v9;
  v18[2] = sub_1AF592AA8;
  v18[3] = v9;
  v18[6] = v9;
  v19 = swift_allocObject();
  *(v19 + 112) = 1;
  *(v19 + 128) = 0;
  *(v19 + 136) = 0;
  *(v19 + 120) = 0;
  *(v19 + 160) = MEMORY[0x1E69E7CC0];
  *(v19 + 168) = 0;
  *(v19 + 216) = 0;
  *(v19 + 176) = 0;
  *(v19 + 16) = 0x6C656E6E616863;
  *(v19 + 24) = 0xE700000000000000;
  *(v19 + 32) = v9;
  *(v19 + 40) = &type metadata for TextureChannel;
  *(v19 + 48) = 8;
  *(v19 + 56) = 0;
  *(v19 + 58) = 0;
  *(v19 + 184) = 0;
  *(v19 + 188) = 1;
  *(v19 + 192) = 0;
  *(v19 + 196) = 1;
  *(v19 + 200) = 0x1000100000000;
  *(v19 + 208) = 1;
  *(v19 + 64) = 0;
  *(v19 + 72) = 0;
  *(v19 + 96) = 0;
  *(v19 + 104) = 0;
  *(v19 + 144) = xmmword_1AFE22A20;
  *(v19 + 80) = v18;
  *(v19 + 88) = &off_1F2535378;
  *(v19 + 210) = 0;
  v20 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v20)
  {
    v17 = (*(v20 + 8))();
  }

  v21 = swift_conformsToProtocol2();
  if (v21 && v17)
  {
    *(v19 + 160) = (*(v21 + 8))(v17, v21);
  }

  *(v19 + 64) = sub_1AF592B04;
  *(v19 + 72) = v9;
  sub_1AF0FB8EC(0, 0);
  *(v19 + 168) = 0;
  *(v19 + 176) = 0;

  *(v19 + 216) = v13;
  *(v0 + 40) = v19;
  v22 = swift_getKeyPath();
  v23 = swift_getKeyPath();
  v24 = swift_allocObject();
  v24[4] = sub_1AF5AA38C;
  v24[5] = v23;
  v24[2] = sub_1AF5A9D58;
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
  *(v25 + 16) = 0xD000000000000010;
  *(v25 + 24) = 0x80000001AFF2A940;
  *(v25 + 32) = v23;
  *(v25 + 40) = v11;
  *(v25 + 48) = 0;
  *(v25 + 56) = 1;
  *(v25 + 58) = 0;
  *(v25 + 184) = 0;
  *(v25 + 188) = 1;
  *(v25 + 192) = 0;
  *(v25 + 196) = 1;
  *(v25 + 200) = 0x1000100000000;
  *(v25 + 208) = 1;
  *(v25 + 64) = 0;
  *(v25 + 72) = 0;
  *(v25 + 96) = 0;
  *(v25 + 104) = 0;
  *(v25 + 144) = xmmword_1AFE22A20;
  *(v25 + 80) = v24;
  *(v25 + 88) = &off_1F2535378;
  *(v25 + 210) = 0;
  swift_retain_n();
  if (v14)
  {
    v11 = (*(v14 + 8))();
  }

  v26 = swift_conformsToProtocol2();
  if (v26 && v11)
  {
    *(v25 + 160) = (*(v26 + 8))(v11, v26);
  }

  *(v25 + 64) = sub_1AF5A983C;
  *(v25 + 72) = v23;
  sub_1AF0FB8EC(0, 0);
  *(v25 + 168) = 0;
  *(v25 + 176) = 0;

  *(v25 + 216) = 0;
  v27 = &type metadata for AddressMode;
  sub_1AF5A9240(0, &qword_1EB6338D0, &type metadata for AddressMode, type metadata accessor for EntityGetSet);
  v28 = swift_allocObject();
  v28[4] = sub_1AF592B44;
  v28[5] = v22;
  v28[2] = sub_1AF592B70;
  v28[3] = v22;
  v28[6] = v22;
  v29 = swift_allocObject();
  *(v29 + 112) = 1;
  *(v29 + 128) = 0;
  *(v29 + 136) = 0;
  *(v29 + 120) = 0;
  *(v29 + 160) = MEMORY[0x1E69E7CC0];
  *(v29 + 168) = 0;
  *(v29 + 216) = 0;
  *(v29 + 176) = 0;
  *(v29 + 16) = 0x4D73736572646461;
  *(v29 + 24) = 0xEB0000000065646FLL;
  *(v29 + 32) = v22;
  *(v29 + 40) = &type metadata for AddressMode;
  *(v29 + 48) = 9;
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

  *(v29 + 64) = sub_1AF592BCC;
  *(v29 + 72) = v22;
  sub_1AF0FB8EC(0, 0);
  *(v29 + 168) = 0;
  *(v29 + 176) = 0;

  *(v29 + 216) = v25;
  *(v0 + 48) = v29;
  v32 = swift_getKeyPath();
  sub_1AF57F2F4(0);
  v33 = swift_allocObject();
  v33[4] = sub_1AF592910;
  v33[5] = v32;
  v33[2] = sub_1AF592C0C;
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
  sub_1AF589E74(0, &qword_1ED72F958, MEMORY[0x1E69E6448], MEMORY[0x1E69E6468], MEMORY[0x1E69E66A8]);
  v36 = v35;
  *(v34 + 168) = 0;
  *(v34 + 176) = 0;
  *(v34 + 16) = 0x65676E6172;
  *(v34 + 24) = 0xE500000000000000;
  *(v34 + 32) = v32;
  *(v34 + 40) = v35;
  *(v34 + 48) = 12;
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
  *(v34 + 64) = sub_1AF592C68;
  *(v34 + 72) = v32;
  sub_1AF0FB8EC(v39, v40);
  *(v34 + 168) = 0;
  *(v34 + 176) = 0;

  *(v34 + 216) = 0;

  *(v0 + 56) = v34;
  v41 = swift_getKeyPath();
  sub_1AF57C8C8(0);
  v42 = swift_allocObject();
  v42[4] = sub_1AF592910;
  v42[5] = v41;
  v42[2] = sub_1AF592CAC;
  v42[3] = v41;
  v42[6] = v41;
  v43 = swift_allocObject();
  *(v43 + 104) = 0;
  *(v43 + 112) = 1;
  *(v43 + 128) = 0;
  *(v43 + 136) = 0;
  *(v43 + 120) = 0;
  *(v43 + 160) = MEMORY[0x1E69E7CC0];
  *(v43 + 216) = 0;
  v44 = MEMORY[0x1E69E6448];
  sub_1AF583D60(0, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
  v46 = v45;
  *(v43 + 168) = 0;
  *(v43 + 176) = 0;
  *(v43 + 16) = 0x656C616373;
  *(v43 + 24) = 0xE500000000000000;
  *(v43 + 32) = v41;
  *(v43 + 40) = v45;
  *(v43 + 48) = 24;
  *(v43 + 56) = 0;
  *(v43 + 58) = 0;
  *(v43 + 184) = 0;
  *(v43 + 188) = 1;
  *(v43 + 192) = 0;
  *(v43 + 196) = 1;
  *(v43 + 200) = 0x1000100000000;
  *(v43 + 208) = 1;
  *(v43 + 64) = 0;
  *(v43 + 72) = 0;
  *(v43 + 96) = 0;
  *(v43 + 144) = xmmword_1AFE22A20;
  *(v43 + 80) = v42;
  *(v43 + 88) = &off_1F2535378;
  *(v43 + 210) = 0;
  v47 = swift_conformsToProtocol2();
  if (v47)
  {
    v48 = v46;
  }

  else
  {
    v48 = 0;
  }

  swift_retain_n();
  v49 = v46;
  if (v48)
  {
    v49 = (*(v47 + 8))(v48, v47);
  }

  v50 = swift_conformsToProtocol2();
  if (v50 && v49)
  {
    *(v43 + 160) = (*(v50 + 8))(v49, v50);
  }

  v51 = *(v43 + 64);
  v52 = *(v43 + 72);
  *(v43 + 64) = sub_1AF592D08;
  *(v43 + 72) = v41;
  sub_1AF0FB8EC(v51, v52);
  *(v43 + 168) = 0;
  *(v43 + 176) = 0;

  *(v43 + 216) = 0;

  *(v0 + 64) = v43;
  v53 = swift_getKeyPath();
  v54 = swift_allocObject();
  v54[4] = sub_1AF5AA38C;
  v54[5] = v53;
  v54[2] = sub_1AF5A9D5C;
  v54[3] = v53;
  v54[6] = v53;
  v55 = swift_allocObject();
  *(v55 + 112) = 1;
  *(v55 + 128) = 0;
  *(v55 + 136) = 0;
  *(v55 + 120) = 0;
  *(v55 + 160) = MEMORY[0x1E69E7CC0];
  *(v55 + 168) = 0;
  *(v55 + 216) = 0;
  *(v55 + 176) = 0;
  *(v55 + 16) = 1935763810;
  *(v55 + 24) = 0xE400000000000000;
  *(v55 + 32) = v53;
  *(v55 + 40) = v46;
  *(v55 + 48) = 32;
  *(v55 + 56) = 0;
  *(v55 + 58) = 0;
  *(v55 + 184) = 0;
  *(v55 + 188) = 1;
  *(v55 + 192) = 0;
  *(v55 + 196) = 1;
  *(v55 + 200) = 0x1000100000000;
  *(v55 + 208) = 1;
  *(v55 + 64) = 0;
  *(v55 + 72) = 0;
  *(v55 + 96) = 0;
  *(v55 + 104) = 0;
  *(v55 + 144) = xmmword_1AFE22A20;
  *(v55 + 80) = v54;
  *(v55 + 88) = &off_1F2535378;
  *(v55 + 210) = 0;
  swift_retain_n();
  if (v48)
  {
    v46 = (*(v47 + 8))(v48, v47);
  }

  v56 = swift_conformsToProtocol2();
  if (v56 && v46)
  {
    *(v55 + 160) = (*(v56 + 8))(v46, v56);
  }

  v57 = *(v55 + 64);
  v58 = *(v55 + 72);
  *(v55 + 64) = sub_1AF5A9840;
  *(v55 + 72) = v53;
  sub_1AF0FB8EC(v57, v58);
  *(v55 + 168) = 0;
  *(v55 + 176) = 0;

  *(v55 + 216) = 0;

  *(v0 + 72) = v55;
  v59 = swift_getKeyPath();
  sub_1AF5A9240(0, &unk_1ED722B70, v44, type metadata accessor for EntityGetSet);
  v60 = swift_allocObject();
  v60[4] = sub_1AF592D4C;
  v60[5] = v59;
  v60[2] = sub_1AF592D80;
  v60[3] = v59;
  v60[6] = v59;
  v61 = swift_allocObject();
  *(v61 + 112) = 1;
  *(v61 + 128) = 0;
  *(v61 + 136) = 0;
  *(v61 + 120) = 0;
  *(v61 + 160) = MEMORY[0x1E69E7CC0];
  *(v61 + 168) = 0;
  *(v61 + 216) = 0;
  *(v61 + 176) = 0;
  *(v61 + 16) = 0x656C676E61;
  *(v61 + 24) = 0xE500000000000000;
  *(v61 + 32) = v59;
  *(v61 + 40) = v44;
  *(v61 + 48) = 40;
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
  v62 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v62)
  {
    v44 = (*(v62 + 8))();
  }

  v63 = swift_conformsToProtocol2();
  if (v63 && v44)
  {
    *(v61 + 160) = (*(v63 + 8))(v44, v63);
  }

  *(v61 + 64) = sub_1AF592DDC;
  *(v61 + 72) = v59;
  sub_1AF0FB8EC(0, 0);
  *(v61 + 168) = 0;
  *(v61 + 176) = 0;

  *(v61 + 216) = 0;
  *(v65 + 80) = v61;
  qword_1EB6C2F18 = v65;
  return result;
}

uint64_t sub_1AF4DD384()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_1AFE551C0;
  KeyPath = swift_getKeyPath();
  v1 = swift_getKeyPath();
  v2 = MEMORY[0x1E69E7360];
  sub_1AF5A9240(0, &unk_1EB634340, MEMORY[0x1E69E7360], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF593130;
  v3[5] = v1;
  v3[2] = sub_1AF593164;
  v3[3] = v1;
  v3[6] = v1;
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
  strcpy((v4 + 16), "operationIndex");
  *(v4 + 31) = -18;
  *(v4 + 32) = v1;
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

  *(v4 + 64) = sub_1AF5931C0;
  *(v4 + 72) = v1;
  sub_1AF0FB8EC(0, 0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  v9 = &type metadata for Composition.Operation;
  sub_1AF5A9240(0, &qword_1EB6338C8, &type metadata for Composition.Operation, type metadata accessor for EntityGetSet);
  v10 = swift_allocObject();
  v10[4] = sub_1AF5AA19C;
  v10[5] = KeyPath;
  v10[2] = sub_1AF593200;
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
  *(v11 + 16) = 0x6F6974617265706FLL;
  *(v11 + 24) = 0xE90000000000006ELL;
  *(v11 + 32) = KeyPath;
  *(v11 + 40) = &type metadata for Composition.Operation;
  *(v11 + 48) = 4;
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

  *(v11 + 64) = sub_1AF59325C;
  *(v11 + 72) = KeyPath;
  sub_1AF0FB8EC(0, 0);
  *(v11 + 168) = 0;
  *(v11 + 176) = 0;

  *(v11 + 216) = v4;
  *(v48 + 32) = v11;
  v14 = swift_getKeyPath();
  v15 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v16 = swift_allocObject();
  v16[4] = sub_1AF59329C;
  v16[5] = v14;
  v16[2] = sub_1AF5932D0;
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
  *(v17 + 16) = 0x726F74636166;
  *(v17 + 24) = 0xE600000000000000;
  *(v17 + 32) = v14;
  *(v17 + 40) = v15;
  *(v17 + 48) = 8;
  *(v17 + 56) = 0;
  *(v17 + 58) = 0;
  *(v17 + 184) = 0;
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
    v15 = (*(v18 + 8))();
  }

  v19 = swift_conformsToProtocol2();
  if (v19 && v15)
  {
    *(v17 + 160) = (*(v19 + 8))(v15, v19);
  }

  *(v17 + 64) = sub_1AF59332C;
  *(v17 + 72) = v14;
  sub_1AF0FB8EC(0, 0);
  *(v17 + 168) = 0;
  *(v17 + 176) = 0;

  *(v17 + 216) = 0;
  *(v48 + 40) = v17;
  v20 = swift_getKeyPath();
  v21 = swift_getKeyPath();
  v22 = swift_allocObject();
  v22[4] = sub_1AF5AA390;
  v22[5] = v21;
  v22[2] = sub_1AF5A9D70;
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
  *(v23 + 16) = 0x65646E4965646F6DLL;
  *(v23 + 24) = 0xE900000000000078;
  *(v23 + 32) = v21;
  *(v23 + 40) = v2;
  *(v23 + 48) = 0;
  *(v23 + 56) = 1;
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
  if (v6)
  {
    v24 = (*(v6 + 8))();
  }

  else
  {
    v24 = v2;
  }

  v25 = swift_conformsToProtocol2();
  if (v25 && v24)
  {
    *(v23 + 160) = (*(v25 + 8))(v24, v25);
  }

  *(v23 + 64) = sub_1AF5A9844;
  *(v23 + 72) = v21;
  sub_1AF0FB8EC(0, 0);
  *(v23 + 168) = 0;
  *(v23 + 176) = 0;

  *(v23 + 216) = 0;
  v26 = &type metadata for ParticleColorOverPosition.GradientMode;
  sub_1AF5A9240(0, &qword_1EB63AE70, &type metadata for ParticleColorOverPosition.GradientMode, type metadata accessor for EntityGetSet);
  v27 = swift_allocObject();
  v27[4] = sub_1AF5AA19C;
  v27[5] = v20;
  v27[2] = sub_1AF59336C;
  v27[3] = v20;
  v27[6] = v20;
  v28 = swift_allocObject();
  *(v28 + 112) = 1;
  *(v28 + 128) = 0;
  *(v28 + 136) = 0;
  *(v28 + 120) = 0;
  *(v28 + 160) = MEMORY[0x1E69E7CC0];
  *(v28 + 168) = 0;
  *(v28 + 216) = 0;
  *(v28 + 176) = 0;
  *(v28 + 16) = 1701080941;
  *(v28 + 24) = 0xE400000000000000;
  *(v28 + 32) = v20;
  *(v28 + 40) = &type metadata for ParticleColorOverPosition.GradientMode;
  *(v28 + 48) = 0;
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
  v29 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v29)
  {
    v26 = (*(v29 + 8))();
  }

  v30 = swift_conformsToProtocol2();
  if (v30 && v26)
  {
    *(v28 + 160) = (*(v30 + 8))(v26, v30);
  }

  *(v28 + 64) = sub_1AF5933C8;
  *(v28 + 72) = v20;
  sub_1AF0FB8EC(0, 0);
  *(v28 + 168) = 0;
  *(v28 + 176) = 0;

  *(v28 + 216) = v23;
  *(v48 + 48) = v28;
  v31 = swift_getKeyPath();
  v32 = swift_getKeyPath();
  v33 = swift_allocObject();
  v33[4] = sub_1AF5AA390;
  v33[5] = v32;
  v33[2] = sub_1AF5A9D70;
  v33[3] = v32;
  v33[6] = v32;
  v34 = swift_allocObject();
  *(v34 + 112) = 1;
  *(v34 + 128) = 0;
  *(v34 + 136) = 0;
  *(v34 + 120) = 0;
  *(v34 + 160) = MEMORY[0x1E69E7CC0];
  *(v34 + 168) = 0;
  *(v34 + 216) = 0;
  *(v34 + 176) = 0;
  *(v34 + 16) = 0xD000000000000010;
  *(v34 + 24) = 0x80000001AFF2A940;
  *(v34 + 32) = v32;
  *(v34 + 40) = v2;
  *(v34 + 48) = 0;
  *(v34 + 56) = 1;
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
  *(v34 + 104) = 0;
  *(v34 + 144) = xmmword_1AFE22A20;
  *(v34 + 80) = v33;
  *(v34 + 88) = &off_1F2535378;
  *(v34 + 210) = 0;
  swift_retain_n();
  if (v6)
  {
    v2 = (*(v6 + 8))();
  }

  v35 = swift_conformsToProtocol2();
  if (v35 && v2)
  {
    *(v34 + 160) = (*(v35 + 8))(v2, v35);
  }

  *(v34 + 64) = sub_1AF5A9844;
  *(v34 + 72) = v32;
  sub_1AF0FB8EC(0, 0);
  *(v34 + 168) = 0;
  *(v34 + 176) = 0;

  *(v34 + 216) = 0;
  v36 = &type metadata for AddressMode;
  sub_1AF5A9240(0, &qword_1EB6338D0, &type metadata for AddressMode, type metadata accessor for EntityGetSet);
  v37 = swift_allocObject();
  v37[4] = sub_1AF593408;
  v37[5] = v31;
  v37[2] = sub_1AF593434;
  v37[3] = v31;
  v37[6] = v31;
  v38 = swift_allocObject();
  *(v38 + 112) = 1;
  *(v38 + 128) = 0;
  *(v38 + 136) = 0;
  *(v38 + 120) = 0;
  *(v38 + 160) = MEMORY[0x1E69E7CC0];
  *(v38 + 168) = 0;
  *(v38 + 216) = 0;
  *(v38 + 176) = 0;
  *(v38 + 16) = 0x4D73736572646461;
  *(v38 + 24) = 0xEB0000000065646FLL;
  *(v38 + 32) = v31;
  *(v38 + 40) = &type metadata for AddressMode;
  *(v38 + 48) = 1;
  *(v38 + 56) = 0;
  *(v38 + 58) = 0;
  *(v38 + 184) = 0;
  *(v38 + 188) = 1;
  *(v38 + 192) = 0;
  *(v38 + 196) = 1;
  *(v38 + 200) = 0x1000100000000;
  *(v38 + 208) = 1;
  *(v38 + 64) = 0;
  *(v38 + 72) = 0;
  *(v38 + 96) = 0;
  *(v38 + 104) = 0;
  *(v38 + 144) = xmmword_1AFE22A20;
  *(v38 + 80) = v37;
  *(v38 + 88) = &off_1F2535378;
  *(v38 + 210) = 0;
  v39 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v39)
  {
    v36 = (*(v39 + 8))();
  }

  v40 = swift_conformsToProtocol2();
  if (v40 && v36)
  {
    *(v38 + 160) = (*(v40 + 8))(v36, v40);
  }

  *(v38 + 64) = sub_1AF593490;
  *(v38 + 72) = v31;
  sub_1AF0FB8EC(0, 0);
  *(v38 + 168) = 0;
  *(v38 + 176) = 0;

  *(v38 + 216) = v34;
  *(v48 + 56) = v38;
  v41 = swift_getKeyPath();
  v42 = &type metadata for ColorRamp;
  sub_1AF5A9240(0, &qword_1ED722B88, &type metadata for ColorRamp, type metadata accessor for EntityGetSet);
  v43 = swift_allocObject();
  v43[4] = sub_1AF5934D0;
  v43[5] = v41;
  v43[2] = sub_1AF5934E8;
  v43[3] = v41;
  v43[6] = v41;
  v44 = swift_allocObject();
  *(v44 + 112) = 1;
  *(v44 + 128) = 0;
  *(v44 + 136) = 0;
  *(v44 + 120) = 0;
  *(v44 + 160) = MEMORY[0x1E69E7CC0];
  *(v44 + 168) = 0;
  *(v44 + 216) = 0;
  *(v44 + 176) = 0;
  *(v44 + 16) = 1886216562;
  *(v44 + 24) = 0xE400000000000000;
  *(v44 + 32) = v41;
  *(v44 + 40) = &type metadata for ColorRamp;
  *(v44 + 48) = 16;
  *(v44 + 56) = 0;
  *(v44 + 58) = 0;
  *(v44 + 184) = 0;
  *(v44 + 188) = 1;
  *(v44 + 192) = 0;
  *(v44 + 196) = 1;
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
    v42 = (*(v45 + 8))();
  }

  v46 = swift_conformsToProtocol2();
  if (v46 && v42)
  {
    *(v44 + 160) = (*(v46 + 8))(v42, v46);
  }

  *(v44 + 64) = sub_1AF593518;
  *(v44 + 72) = v41;
  sub_1AF0FB8EC(0, 0);
  *(v44 + 168) = 0;
  *(v44 + 176) = 0;

  *(v44 + 216) = 0;
  *(v48 + 64) = v44;
  qword_1EB6C2F20 = v48;
  return result;
}

uint64_t sub_1AF4DE348(uint64_t result)
{
  v2 = result;
  if ((result & 0xFC) != 0)
  {
    v2 = 4;
  }

  *(v1 + 4) = v2;
  return result;
}

uint64_t sub_1AF4DE368(uint64_t result)
{
  v2 = result;
  if ((result & 0xFC) != 0)
  {
    v2 = 4;
  }

  *(v1 + 1) = v2;
  return result;
}

uint64_t sub_1AF4DE43C()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE550E0;
  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  v3 = MEMORY[0x1E69E7360];
  sub_1AF5A9240(0, &unk_1EB634340, MEMORY[0x1E69E7360], type metadata accessor for EntityGetSet);
  v4 = swift_allocObject();
  v4[4] = sub_1AF5938E4;
  v4[5] = v2;
  v4[2] = sub_1AF593918;
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

  *(v5 + 64) = sub_1AF593974;
  *(v5 + 72) = v2;
  sub_1AF0FB8EC(0, 0);
  *(v5 + 168) = 0;
  *(v5 + 176) = 0;

  *(v5 + 216) = 0;
  v9 = &type metadata for OrientationConstraint.Mode;
  sub_1AF5A9240(0, &qword_1EB63AEB8, &type metadata for OrientationConstraint.Mode, type metadata accessor for EntityGetSet);
  v10 = swift_allocObject();
  v10[4] = sub_1AF5939B4;
  v10[5] = KeyPath;
  v10[2] = sub_1AF5939E0;
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
  *(v11 + 16) = 1701080941;
  *(v11 + 24) = 0xE400000000000000;
  *(v11 + 32) = KeyPath;
  *(v11 + 40) = &type metadata for OrientationConstraint.Mode;
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

  *(v11 + 64) = sub_1AF593A3C;
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
  v16[4] = sub_1AF593A7C;
  v16[5] = v14;
  v16[2] = sub_1AF593AB0;
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
  *(v17 + 16) = 0x726F74636166;
  *(v17 + 24) = 0xE600000000000000;
  *(v17 + 32) = v14;
  *(v17 + 40) = v15;
  *(v17 + 48) = 4;
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

  *(v17 + 64) = sub_1AF593B0C;
  *(v17 + 72) = v14;
  sub_1AF0FB8EC(0, 0);
  *(v17 + 168) = 0;
  *(v17 + 176) = 0;

  *(v17 + 216) = 0;
  *(v0 + 40) = v17;
  qword_1EB6C2F28 = v0;
  return result;
}

uint64_t sub_1AF4DEB54()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE550E0;
  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  v3 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v4 = swift_allocObject();
  v4[4] = sub_1AF593C9C;
  v4[5] = KeyPath;
  v4[2] = sub_1AF593CE0;
  v4[3] = KeyPath;
  v4[6] = KeyPath;
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
  *(v5 + 16) = 0x797469636F6C6576;
  *(v5 + 24) = 0xE800000000000000;
  *(v5 + 32) = KeyPath;
  *(v5 + 40) = v3;
  *(v5 + 48) = 0;
  *(v5 + 56) = 0;
  *(v5 + 58) = 0;
  *(v5 + 184) = 0;
  *(v5 + 188) = 1;
  *(v5 + 192) = 0;
  *(v5 + 196) = 1;
  *(v5 + 200) = 0x1000100000000;
  *(v5 + 208) = 1;
  *(v5 + 64) = 0;
  *(v5 + 72) = 0;
  *(v5 + 96) = v2;
  *(v5 + 104) = 0;
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
    v9 = (*(v8 + 8))(v3, v8);

    *(v5 + 160) = v9;
  }

  else
  {
  }

  *(v5 + 64) = sub_1AF593D3C;
  *(v5 + 72) = KeyPath;
  sub_1AF0FB8EC(0, 0);
  *(v5 + 168) = 0;
  *(v5 + 176) = 0;

  *(v5 + 216) = 0;
  *(v0 + 32) = v5;
  v10 = swift_getKeyPath();
  if (qword_1EB636F28 != -1)
  {
    swift_once();
  }

  v12 = sub_1AF3C3E84(v11);

  sub_1AF51B13C(0, &qword_1EB63AEE8, sub_1AF593DD4, type metadata accessor for EntityGetSet);
  v13 = swift_allocObject();
  v13[4] = sub_1AF593D7C;
  v13[5] = v10;
  v13[2] = sub_1AF593DA4;
  v13[3] = v10;
  v13[6] = v10;
  v14 = swift_allocObject();
  *(v14 + 104) = 0;
  *(v14 + 112) = 1;
  *(v14 + 128) = 0;
  *(v14 + 136) = 0;
  *(v14 + 120) = 0;
  *(v14 + 160) = v6;
  *(v14 + 216) = 0;
  sub_1AF593DD4(0);
  *(v14 + 168) = 0;
  *(v14 + 176) = 0;
  *(v14 + 16) = 0x6576727563;
  *(v14 + 24) = 0xE500000000000000;
  *(v14 + 32) = v10;
  *(v14 + 40) = v15;
  *(v14 + 48) = 8;
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
  *(v14 + 88) = &off_1F2535378;
  *(v14 + 96) = 0;
  *(v14 + 144) = xmmword_1AFE22A20;
  *(v14 + 80) = v13;
  *(v14 + 210) = 0;
  v16 = *(v12 + 16);
  swift_retain_n();
  if (v16)
  {
    *(v14 + 160) = v12;

    v17 = 0;
    v18 = 0;
  }

  else
  {

    sub_1AF589E74(0, qword_1ED72F9E0, MEMORY[0x1E69E6448], &off_1F2532E98, type metadata accessor for Curve);
    v20 = v19;
    v21 = swift_conformsToProtocol2();
    v17 = 0;
    if (v21)
    {
      v22 = v21;
      v18 = 0;
      if (v20)
      {
        *(v14 + 160) = (*(v22 + 8))(v20, v22);

        v18 = *(v14 + 64);
        v17 = *(v14 + 72);
      }
    }

    else
    {
      v18 = 0;
    }
  }

  *(v14 + 64) = sub_1AF593E58;
  *(v14 + 72) = v10;
  sub_1AF0FB8EC(v18, v17);
  *(v14 + 168) = 0;
  *(v14 + 176) = 0;

  *(v14 + 216) = 0;

  *(v0 + 40) = v14;
  qword_1EB6C2F30 = v0;
  return result;
}

char *sub_1AF4DF164()
{
  sub_1AF51B13C(0, &unk_1EB63AF10, sub_1AF43A260, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C620;
  *(v0 + 32) = 0x75207261656E694CLL;
  *(v0 + 40) = 0xE900000000000070;
  *(v0 + 48) = sub_1AF9D3914(&unk_1F24F4FD0);
  *(v0 + 56) = v1;
  *(v0 + 64) = 0;
  *(v0 + 72) = 1;
  *(v0 + 80) = 0x64207261656E694CLL;
  *(v0 + 88) = 0xEB000000006E776FLL;
  result = sub_1AF9D3914(&unk_1F24F5000);
  *(v0 + 96) = result;
  *(v0 + 104) = v3;
  *(v0 + 112) = 0;
  *(v0 + 120) = 1;
  qword_1EB6C2F38 = v0;
  return result;
}

uint64_t sub_1AF4DF24C()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE550E0;
  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  v3 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v4 = swift_allocObject();
  v4[4] = sub_1AF594048;
  v4[5] = KeyPath;
  v4[2] = sub_1AF59408C;
  v4[3] = KeyPath;
  v4[6] = KeyPath;
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
  *(v5 + 16) = 0x6E6F697461727564;
  *(v5 + 24) = 0xE800000000000000;
  *(v5 + 32) = KeyPath;
  *(v5 + 40) = v3;
  *(v5 + 48) = 0;
  *(v5 + 56) = 0;
  *(v5 + 58) = 0;
  *(v5 + 184) = 0;
  *(v5 + 188) = 0;
  *(v5 + 192) = 0;
  *(v5 + 196) = 1;
  *(v5 + 200) = 0x1000100000000;
  *(v5 + 208) = 1;
  *(v5 + 64) = 0;
  *(v5 + 72) = 0;
  *(v5 + 96) = v2;
  *(v5 + 104) = 0;
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
    v9 = (*(v8 + 8))(v3, v8);

    *(v5 + 160) = v9;
  }

  else
  {
  }

  *(v5 + 64) = sub_1AF5940E8;
  *(v5 + 72) = KeyPath;
  sub_1AF0FB8EC(0, 0);
  *(v5 + 168) = 0;
  *(v5 + 176) = 0;

  *(v5 + 216) = 0;
  *(v0 + 32) = v5;
  v10 = swift_getKeyPath();
  if (qword_1EB636F28 != -1)
  {
    swift_once();
  }

  v12 = sub_1AF3C3E84(v11);

  sub_1AF51B13C(0, &qword_1EB63AEE8, sub_1AF593DD4, type metadata accessor for EntityGetSet);
  v13 = swift_allocObject();
  v13[4] = sub_1AF594128;
  v13[5] = v10;
  v13[2] = sub_1AF594150;
  v13[3] = v10;
  v13[6] = v10;
  v14 = swift_allocObject();
  *(v14 + 104) = 0;
  *(v14 + 112) = 1;
  *(v14 + 128) = 0;
  *(v14 + 136) = 0;
  *(v14 + 120) = 0;
  *(v14 + 160) = v6;
  *(v14 + 216) = 0;
  sub_1AF593DD4(0);
  *(v14 + 168) = 0;
  *(v14 + 176) = 0;
  *(v14 + 16) = 0x6576727563;
  *(v14 + 24) = 0xE500000000000000;
  *(v14 + 32) = v10;
  *(v14 + 40) = v15;
  *(v14 + 48) = 8;
  *(v14 + 56) = 0;
  *(v14 + 58) = 0;
  *(v14 + 184) = 0;
  *(v14 + 188) = 0;
  *(v14 + 192) = 1065353216;
  *(v14 + 196) = 0;
  *(v14 + 200) = 0x1000100000000;
  *(v14 + 208) = 1;
  *(v14 + 64) = 0;
  *(v14 + 72) = 0;
  *(v14 + 88) = &off_1F2535378;
  *(v14 + 96) = 0;
  *(v14 + 144) = xmmword_1AFE22A20;
  *(v14 + 80) = v13;
  *(v14 + 210) = 0;
  v16 = *(v12 + 16);
  swift_retain_n();
  if (v16)
  {
    *(v14 + 160) = v12;

    v17 = 0;
    v18 = 0;
  }

  else
  {

    sub_1AF589E74(0, qword_1ED72F9E0, MEMORY[0x1E69E6448], &off_1F2532E98, type metadata accessor for Curve);
    v20 = v19;
    v21 = swift_conformsToProtocol2();
    v17 = 0;
    if (v21)
    {
      v22 = v21;
      v18 = 0;
      if (v20)
      {
        *(v14 + 160) = (*(v22 + 8))(v20, v22);

        v18 = *(v14 + 64);
        v17 = *(v14 + 72);
      }
    }

    else
    {
      v18 = 0;
    }
  }

  *(v14 + 64) = sub_1AF594180;
  *(v14 + 72) = v10;
  sub_1AF0FB8EC(v18, v17);
  *(v14 + 168) = 0;
  *(v14 + 176) = 0;

  *(v14 + 216) = 0;

  *(v0 + 40) = v14;
  qword_1EB6C2F40 = v0;
  return result;
}

__n128 sub_1AF4DF848()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE55240;
  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  v3 = MEMORY[0x1E69E7360];
  sub_1AF5A9240(0, &unk_1EB634340, MEMORY[0x1E69E7360], type metadata accessor for EntityGetSet);
  v4 = swift_allocObject();
  v4[4] = sub_1AF59436C;
  v4[5] = v2;
  v4[2] = sub_1AF5943A0;
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
  *(v5 + 16) = 0x65646E49646E696BLL;
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
    v7 = (*(v6 + 8))();
  }

  else
  {
    v7 = v3;
  }

  v178 = v6;
  v8 = swift_conformsToProtocol2();
  if (v8 && v7)
  {
    *(v5 + 160) = (*(v8 + 8))(v7, v8);
  }

  v9 = *(v5 + 64);
  v10 = *(v5 + 72);
  *(v5 + 64) = sub_1AF5943FC;
  *(v5 + 72) = v2;
  sub_1AF0FB8EC(v9, v10);
  *(v5 + 168) = 0;
  *(v5 + 176) = 0;

  *(v5 + 216) = 0;

  sub_1AF51B13C(0, &qword_1EB63AF38, type metadata accessor for ForceFieldType, type metadata accessor for EntityGetSet);
  v11 = swift_allocObject();
  v11[4] = sub_1AF59436C;
  v11[5] = KeyPath;
  v11[2] = sub_1AF59443C;
  v11[3] = KeyPath;
  v11[6] = KeyPath;
  v12 = swift_allocObject();
  *(v12 + 104) = 0;
  *(v12 + 112) = 1;
  *(v12 + 128) = 0;
  *(v12 + 136) = 0;
  *(v12 + 120) = 0;
  *(v12 + 160) = MEMORY[0x1E69E7CC0];
  *(v12 + 210) = 0;
  *(v12 + 216) = 0;
  type metadata accessor for ForceFieldType(0);
  v14 = v13;
  *(v12 + 168) = 0;
  *(v12 + 176) = 0;
  *(v12 + 16) = 1684957547;
  *(v12 + 24) = 0xE400000000000000;
  *(v12 + 32) = KeyPath;
  *(v12 + 40) = v13;
  *(v12 + 48) = 0;
  *(v12 + 56) = 0;
  *(v12 + 58) = 0;
  *(v12 + 184) = 0;
  *(v12 + 188) = 1;
  *(v12 + 192) = 0;
  *(v12 + 196) = 1;
  *(v12 + 200) = 0x1000100000000;
  *(v12 + 208) = 1;
  *(v12 + 96) = 0;
  *(v12 + 64) = 0;
  *(v12 + 72) = 0;
  *(v12 + 144) = xmmword_1AFE22A20;
  *(v12 + 80) = v11;
  *(v12 + 88) = &off_1F2535378;
  *(v12 + 210) = 0;
  v15 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v15 && v14)
  {
    v14 = (*(v15 + 8))(v14, v15);
  }

  v16 = swift_conformsToProtocol2();
  if (v16 && v14)
  {
    *(v12 + 160) = (*(v16 + 8))(v14, v16);
  }

  v17 = *(v12 + 64);
  v18 = *(v12 + 72);
  *(v12 + 64) = sub_1AF594498;
  *(v12 + 72) = KeyPath;
  sub_1AF0FB8EC(v17, v18);
  *(v12 + 168) = 0;
  *(v12 + 176) = 0;

  *(v12 + 216) = v5;

  *(v0 + 32) = v12;
  v19 = swift_getKeyPath();
  v20 = MEMORY[0x1E69E6370];
  sub_1AF5A9240(0, &qword_1ED722B80, MEMORY[0x1E69E6370], type metadata accessor for EntityGetSet);
  v21 = swift_allocObject();
  v21[4] = sub_1AF5944E4;
  v21[5] = v19;
  v21[2] = sub_1AF594510;
  v21[3] = v19;
  v21[6] = v19;
  v22 = swift_allocObject();
  *(v22 + 112) = 1;
  *(v22 + 128) = 0;
  *(v22 + 136) = 0;
  *(v22 + 120) = 0;
  *(v22 + 160) = MEMORY[0x1E69E7CC0];
  *(v22 + 168) = 0;
  *(v22 + 210) = 0;
  *(v22 + 216) = 0;
  *(v22 + 176) = 0;
  *(v22 + 16) = 0x657669746361;
  *(v22 + 24) = 0xE600000000000000;
  *(v22 + 32) = v19;
  *(v22 + 40) = v20;
  *(v22 + 48) = 8;
  *(v22 + 56) = 0;
  *(v22 + 58) = 0;
  *(v22 + 184) = 0;
  *(v22 + 188) = 1;
  *(v22 + 192) = 0;
  *(v22 + 196) = 1;
  *(v22 + 200) = 0x1000100000000;
  *(v22 + 208) = 1;
  *(v22 + 64) = 0;
  *(v22 + 72) = 0;
  *(v22 + 96) = 0;
  *(v22 + 104) = 0;
  *(v22 + 144) = xmmword_1AFE22A20;
  *(v22 + 80) = v21;
  *(v22 + 88) = &off_1F2535378;
  *(v22 + 210) = 0;
  v23 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v23)
  {
    v24 = (*(v23 + 8))();
  }

  else
  {
    v24 = v20;
  }

  v25 = swift_conformsToProtocol2();
  if (v25 && v24)
  {
    *(v22 + 160) = (*(v25 + 8))(v24, v25);
  }

  v26 = *(v22 + 64);
  v27 = *(v22 + 72);
  *(v22 + 64) = sub_1AF59456C;
  *(v22 + 72) = v19;
  sub_1AF0FB8EC(v26, v27);
  *(v22 + 168) = 0;
  *(v22 + 176) = 0;

  *(v22 + 216) = 0;

  *(v0 + 40) = v22;
  v28 = swift_getKeyPath();
  v29 = swift_allocObject();
  v29[4] = sub_1AF5AA1A4;
  v29[5] = v28;
  v29[2] = sub_1AF5A9D94;
  v29[3] = v28;
  v29[6] = v28;
  v30 = swift_allocObject();
  *(v30 + 112) = 1;
  *(v30 + 128) = 0;
  *(v30 + 136) = 0;
  *(v30 + 120) = 0;
  *(v30 + 160) = MEMORY[0x1E69E7CC0];
  *(v30 + 168) = 0;
  *(v30 + 210) = 0;
  *(v30 + 216) = 0;
  *(v30 + 176) = 0;
  *(v30 + 16) = 0x6C61636F6CLL;
  *(v30 + 24) = 0xE500000000000000;
  *(v30 + 32) = v28;
  *(v30 + 40) = v20;
  *(v30 + 48) = 9;
  *(v30 + 56) = 0;
  *(v30 + 58) = 0;
  *(v30 + 184) = 0;
  *(v30 + 188) = 1;
  *(v30 + 192) = 0;
  *(v30 + 196) = 1;
  *(v30 + 200) = 0x1000100000000;
  *(v30 + 208) = 1;
  *(v30 + 64) = 0;
  *(v30 + 72) = 0;
  *(v30 + 96) = 0;
  *(v30 + 104) = 0;
  *(v30 + 144) = xmmword_1AFE22A20;
  *(v30 + 80) = v29;
  *(v30 + 88) = &off_1F2535378;
  *(v30 + 210) = 0;
  swift_retain_n();
  if (v23)
  {
    v20 = (*(v23 + 8))();
  }

  v31 = swift_conformsToProtocol2();
  if (v31 && v20)
  {
    *(v30 + 160) = (*(v31 + 8))(v20, v31);
  }

  v32 = *(v30 + 64);
  v33 = *(v30 + 72);
  *(v30 + 64) = sub_1AF5A9860;
  *(v30 + 72) = v28;
  sub_1AF0FB8EC(v32, v33);
  *(v30 + 168) = 0;
  *(v30 + 176) = 0;

  *(v30 + 216) = 0;

  *(v0 + 48) = v30;
  v34 = swift_getKeyPath();
  v35 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v36 = swift_allocObject();
  v36[4] = sub_1AF5945AC;
  v36[5] = v34;
  v36[2] = sub_1AF5945E0;
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
  *(v37 + 16) = 0x6874676E65727473;
  *(v37 + 24) = 0xE800000000000000;
  *(v37 + 32) = v34;
  *(v37 + 40) = v35;
  *(v37 + 48) = 12;
  *(v37 + 56) = 0;
  *(v37 + 58) = 0;
  *(v37 + 184) = 0;
  *(v37 + 188) = 1;
  *(v37 + 192) = 0;
  *(v37 + 196) = 1;
  *(v37 + 200) = 0x1000100000000;
  *(v37 + 208) = 1;
  *(v37 + 64) = 0;
  *(v37 + 72) = 0;
  *(v37 + 96) = 0;
  *(v37 + 104) = 0;
  *(v37 + 144) = xmmword_1AFE22A20;
  *(v37 + 80) = v36;
  *(v37 + 88) = &off_1F2535378;
  *(v37 + 210) = 0;
  v38 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v38)
  {
    v39 = (*(v38 + 8))();
  }

  else
  {
    v39 = v35;
  }

  v40 = swift_conformsToProtocol2();
  if (v40 && v39)
  {
    *(v37 + 160) = (*(v40 + 8))(v39, v40);
  }

  v41 = *(v37 + 64);
  v42 = *(v37 + 72);
  *(v37 + 64) = sub_1AF59463C;
  *(v37 + 72) = v34;
  sub_1AF0FB8EC(v41, v42);
  *(v37 + 168) = 0;
  *(v37 + 176) = 0;

  *(v37 + 216) = 0;

  *(v0 + 56) = v37;
  v43 = swift_getKeyPath();
  v44 = swift_getKeyPath();
  v45 = swift_allocObject();
  v45[4] = sub_1AF5A94A8;
  v45[5] = v43;
  v45[2] = sub_1AF5A9D98;
  v45[3] = v43;
  v45[6] = v43;
  v46 = swift_allocObject();
  *(v46 + 112) = 1;
  *(v46 + 128) = 0;
  *(v46 + 136) = 0;
  *(v46 + 120) = 0;
  *(v46 + 160) = MEMORY[0x1E69E7CC0];
  *(v46 + 168) = 0;
  *(v46 + 210) = 0;
  *(v46 + 216) = 0;
  *(v46 + 176) = 0;
  *(v46 + 16) = 0x6E696E65706D6164;
  *(v46 + 24) = 0xE900000000000067;
  *(v46 + 32) = v43;
  *(v46 + 40) = v35;
  *(v46 + 48) = 16;
  *(v46 + 56) = 0;
  *(v46 + 58) = 0;
  *(v46 + 184) = 0;
  *(v46 + 188) = 1;
  *(v46 + 192) = 0;
  *(v46 + 196) = 1;
  *(v46 + 200) = 0x1000100000000;
  *(v46 + 208) = 1;
  *(v46 + 64) = 0;
  *(v46 + 72) = 0;
  *(v46 + 96) = v44;
  *(v46 + 104) = 0;
  *(v46 + 144) = xmmword_1AFE22A20;
  *(v46 + 80) = v45;
  *(v46 + 88) = &off_1F2535378;
  *(v46 + 210) = 0;
  swift_retain_n();

  if (v38)
  {
    v47 = (*(v38 + 8))();
  }

  else
  {
    v47 = v35;
  }

  v48 = swift_conformsToProtocol2();
  if (v48 && v47)
  {
    v49 = (*(v48 + 8))(v47, v48);

    *(v46 + 160) = v49;
  }

  else
  {
  }

  v50 = *(v46 + 64);
  v51 = *(v46 + 72);
  *(v46 + 64) = sub_1AF5A9864;
  *(v46 + 72) = v43;
  sub_1AF0FB8EC(v50, v51);
  *(v46 + 168) = 0;
  *(v46 + 176) = 0;

  *(v46 + 216) = 0;

  *(v0 + 64) = v46;
  v52 = swift_getKeyPath();
  v53 = swift_getKeyPath();
  v54 = swift_allocObject();
  v54[4] = sub_1AF5A94A8;
  v54[5] = v52;
  v54[2] = sub_1AF5A9D98;
  v54[3] = v52;
  v54[6] = v52;
  v55 = swift_allocObject();
  *(v55 + 112) = 1;
  *(v55 + 128) = 0;
  *(v55 + 136) = 0;
  *(v55 + 120) = 0;
  *(v55 + 160) = MEMORY[0x1E69E7CC0];
  *(v55 + 168) = 0;
  *(v55 + 210) = 0;
  *(v55 + 216) = 0;
  *(v55 + 176) = 0;
  *(v55 + 16) = 0x6F6D416573696F6ELL;
  *(v55 + 24) = 0xEB00000000746E75;
  *(v55 + 32) = v52;
  *(v55 + 40) = v35;
  *(v55 + 48) = 20;
  *(v55 + 56) = 0;
  *(v55 + 58) = 0;
  *(v55 + 184) = 0;
  *(v55 + 188) = 1;
  *(v55 + 192) = 0;
  *(v55 + 196) = 1;
  *(v55 + 200) = 0x1000100000000;
  *(v55 + 208) = 1;
  *(v55 + 64) = 0;
  *(v55 + 72) = 0;
  *(v55 + 96) = v53;
  *(v55 + 104) = 0;
  *(v55 + 144) = xmmword_1AFE22A20;
  *(v55 + 80) = v54;
  *(v55 + 88) = &off_1F2535378;
  *(v55 + 210) = 0;
  swift_retain_n();

  if (v38)
  {
    v56 = (*(v38 + 8))();
  }

  else
  {
    v56 = v35;
  }

  v57 = swift_conformsToProtocol2();
  v179 = v38;
  if (v57 && v56)
  {
    v58 = (*(v57 + 8))(v56, v57);

    *(v55 + 160) = v58;
  }

  else
  {
  }

  v59 = *(v55 + 64);
  v60 = *(v55 + 72);
  *(v55 + 64) = sub_1AF5A9864;
  *(v55 + 72) = v52;
  sub_1AF0FB8EC(v59, v60);
  *(v55 + 168) = 0;
  *(v55 + 176) = 0;

  *(v55 + 216) = 0;

  *(v0 + 72) = v55;
  v61 = swift_getKeyPath();
  v62 = swift_getKeyPath();
  v63 = MEMORY[0x1E69E76D8];
  sub_1AF5A9240(0, &unk_1EB643A50, MEMORY[0x1E69E76D8], type metadata accessor for EntityGetSet);
  v64 = swift_allocObject();
  v64[4] = sub_1AF5AA398;
  v64[5] = v61;
  v64[2] = sub_1AF59467C;
  v64[3] = v61;
  v64[6] = v61;
  v65 = swift_allocObject();
  *(v65 + 112) = 1;
  *(v65 + 128) = 0;
  *(v65 + 136) = 0;
  *(v65 + 120) = 0;
  *(v65 + 160) = MEMORY[0x1E69E7CC0];
  *(v65 + 168) = 0;
  *(v65 + 210) = 0;
  *(v65 + 216) = 0;
  *(v65 + 176) = 0;
  *(v65 + 16) = 0x6565536573696F6ELL;
  *(v65 + 24) = 0xE900000000000064;
  *(v65 + 32) = v61;
  *(v65 + 40) = v63;
  *(v65 + 48) = 24;
  *(v65 + 56) = 0;
  *(v65 + 58) = 0;
  *(v65 + 184) = 0;
  *(v65 + 188) = 1;
  *(v65 + 192) = 0;
  *(v65 + 196) = 1;
  *(v65 + 200) = 0x1000100000000;
  *(v65 + 208) = 1;
  *(v65 + 64) = 0;
  *(v65 + 72) = 0;
  *(v65 + 96) = v62;
  *(v65 + 104) = 0;
  *(v65 + 144) = xmmword_1AFE22A20;
  *(v65 + 80) = v64;
  *(v65 + 88) = &off_1F2535378;
  *(v65 + 210) = 0;
  v66 = swift_conformsToProtocol2();
  swift_retain_n();

  if (v66)
  {
    v63 = (*(v66 + 8))();
  }

  v67 = swift_conformsToProtocol2();
  if (v67 && v63)
  {
    v68 = (*(v67 + 8))(v63, v67);

    *(v65 + 160) = v68;
  }

  else
  {
  }

  v69 = *(v65 + 64);
  v70 = *(v65 + 72);
  *(v65 + 64) = sub_1AF5946D8;
  *(v65 + 72) = v61;
  sub_1AF0FB8EC(v69, v70);
  *(v65 + 168) = 0;
  *(v65 + 176) = 0;

  *(v65 + 216) = 0;

  *(v0 + 80) = v65;
  v71 = swift_getKeyPath();
  v72 = swift_getKeyPath();
  v73 = swift_allocObject();
  v73[4] = sub_1AF5AA398;
  v73[5] = v72;
  v73[2] = sub_1AF5A9D9C;
  v73[3] = v72;
  v73[6] = v72;
  v74 = swift_allocObject();
  *(v74 + 112) = 1;
  *(v74 + 128) = 0;
  *(v74 + 136) = 0;
  *(v74 + 120) = 0;
  *(v74 + 160) = MEMORY[0x1E69E7CC0];
  *(v74 + 168) = 0;
  *(v74 + 210) = 0;
  *(v74 + 216) = 0;
  *(v74 + 176) = 0;
  *(v74 + 16) = 0x6570616873;
  *(v74 + 24) = 0xE500000000000000;
  *(v74 + 32) = v72;
  *(v74 + 40) = v3;
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
  *(v74 + 96) = 0;
  *(v74 + 104) = 0;
  *(v74 + 144) = xmmword_1AFE22A20;
  *(v74 + 80) = v73;
  *(v74 + 88) = &off_1F2535378;
  *(v74 + 210) = 0;
  swift_retain_n();
  if (v178)
  {
    v75 = (*(v178 + 8))();
  }

  else
  {
    v75 = v3;
  }

  v180 = v0;
  v76 = swift_conformsToProtocol2();
  if (v76 && v75)
  {
    *(v74 + 160) = (*(v76 + 8))(v75, v76);
  }

  v77 = *(v74 + 64);
  v78 = *(v74 + 72);
  *(v74 + 64) = sub_1AF5A9868;
  *(v74 + 72) = v72;
  sub_1AF0FB8EC(v77, v78);
  *(v74 + 168) = 0;
  *(v74 + 176) = 0;

  *(v74 + 216) = 0;

  sub_1AF51B13C(0, &qword_1EB63AF40, type metadata accessor for ForceFieldShape, type metadata accessor for EntityGetSet);
  v79 = swift_allocObject();
  v79[4] = sub_1AF5AA398;
  v79[5] = v71;
  v79[2] = sub_1AF594718;
  v79[3] = v71;
  v79[6] = v71;
  v80 = swift_allocObject();
  *(v80 + 104) = 0;
  *(v80 + 112) = 1;
  *(v80 + 128) = 0;
  *(v80 + 136) = 0;
  *(v80 + 120) = 0;
  *(v80 + 160) = MEMORY[0x1E69E7CC0];
  *(v80 + 210) = 0;
  *(v80 + 216) = 0;
  type metadata accessor for ForceFieldShape(0);
  v82 = v81;
  *(v80 + 168) = 0;
  *(v80 + 176) = 0;
  *(v80 + 16) = 0x6570616873;
  *(v80 + 24) = 0xE500000000000000;
  *(v80 + 32) = v71;
  *(v80 + 40) = v81;
  *(v80 + 48) = 40;
  *(v80 + 56) = 0;
  *(v80 + 58) = 0;
  *(v80 + 184) = 0;
  *(v80 + 188) = 1;
  *(v80 + 192) = 0;
  *(v80 + 196) = 1;
  *(v80 + 200) = 0x1000100000000;
  *(v80 + 208) = 1;
  *(v80 + 64) = 0;
  *(v80 + 72) = 0;
  *(v80 + 96) = 0;
  *(v80 + 144) = xmmword_1AFE22A20;
  *(v80 + 80) = v79;
  *(v80 + 88) = &off_1F2535378;
  *(v80 + 210) = 0;
  v83 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v83 && v82)
  {
    v82 = (*(v83 + 8))(v82, v83);
  }

  v84 = swift_conformsToProtocol2();
  if (v84 && v82)
  {
    *(v80 + 160) = (*(v84 + 8))(v82, v84);
  }

  v85 = *(v80 + 64);
  v86 = *(v80 + 72);
  *(v80 + 64) = sub_1AF594774;
  *(v80 + 72) = v71;
  sub_1AF0FB8EC(v85, v86);
  *(v80 + 168) = 0;
  *(v80 + 176) = 0;

  *(v80 + 216) = v74;

  *(v0 + 88) = v80;
  v87 = swift_getKeyPath();
  v88 = swift_getKeyPath();
  v89 = swift_allocObject();
  v89[4] = sub_1AF5AA398;
  v89[5] = v88;
  v89[2] = sub_1AF5A9D9C;
  v89[3] = v88;
  v89[6] = v88;
  v90 = swift_allocObject();
  *(v90 + 112) = 1;
  *(v90 + 128) = 0;
  *(v90 + 136) = 0;
  *(v90 + 120) = 0;
  *(v90 + 160) = MEMORY[0x1E69E7CC0];
  *(v90 + 168) = 0;
  *(v90 + 210) = 0;
  *(v90 + 216) = 0;
  *(v90 + 176) = 0;
  *(v90 + 16) = 0x65646F4D6C6C7563;
  *(v90 + 24) = 0xE800000000000000;
  *(v90 + 32) = v88;
  *(v90 + 40) = v3;
  *(v90 + 48) = 0;
  *(v90 + 56) = 1;
  *(v90 + 58) = 0;
  *(v90 + 184) = 0;
  *(v90 + 188) = 1;
  *(v90 + 192) = 0;
  *(v90 + 196) = 1;
  *(v90 + 200) = 0x1000100000000;
  *(v90 + 208) = 1;
  *(v90 + 64) = 0;
  *(v90 + 72) = 0;
  *(v90 + 96) = 0;
  *(v90 + 104) = 0;
  *(v90 + 144) = xmmword_1AFE22A20;
  *(v90 + 80) = v89;
  *(v90 + 88) = &off_1F2535378;
  *(v90 + 210) = 0;
  swift_retain_n();
  if (v178)
  {
    v3 = (*(v178 + 8))();
  }

  v91 = swift_conformsToProtocol2();
  if (v91 && v3)
  {
    *(v90 + 160) = (*(v91 + 8))(v3, v91);
  }

  v92 = *(v90 + 64);
  v93 = *(v90 + 72);
  *(v90 + 64) = sub_1AF5A9868;
  *(v90 + 72) = v88;
  sub_1AF0FB8EC(v92, v93);
  *(v90 + 168) = 0;
  *(v90 + 176) = 0;

  *(v90 + 216) = 0;

  sub_1AF51B13C(0, &qword_1EB63AF48, type metadata accessor for ForceFieldCullMode, type metadata accessor for EntityGetSet);
  v94 = swift_allocObject();
  v94[4] = sub_1AF5AA398;
  v94[5] = v87;
  v94[2] = sub_1AF5947C0;
  v94[3] = v87;
  v94[6] = v87;
  v95 = swift_allocObject();
  *(v95 + 104) = 0;
  *(v95 + 112) = 1;
  *(v95 + 128) = 0;
  *(v95 + 136) = 0;
  *(v95 + 120) = 0;
  *(v95 + 160) = MEMORY[0x1E69E7CC0];
  *(v95 + 210) = 0;
  *(v95 + 216) = 0;
  type metadata accessor for ForceFieldCullMode(0);
  v97 = v96;
  *(v95 + 168) = 0;
  *(v95 + 176) = 0;
  *(v95 + 16) = 0x65646F4D6C6C7563;
  *(v95 + 24) = 0xE800000000000000;
  *(v95 + 32) = v87;
  *(v95 + 40) = v96;
  *(v95 + 48) = 56;
  *(v95 + 56) = 0;
  *(v95 + 58) = 0;
  *(v95 + 184) = 0;
  *(v95 + 188) = 1;
  *(v95 + 192) = 0;
  *(v95 + 196) = 1;
  *(v95 + 200) = 0x1000100000000;
  *(v95 + 208) = 1;
  *(v95 + 64) = 0;
  *(v95 + 72) = 0;
  *(v95 + 96) = 0;
  *(v95 + 144) = xmmword_1AFE22A20;
  *(v95 + 80) = v94;
  *(v95 + 88) = &off_1F2535378;
  *(v95 + 210) = 0;
  v98 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v98)
  {
    v99 = v0;
    if (v97)
    {
      v97 = (*(v98 + 8))(v97, v98);
    }
  }

  else
  {
    v99 = v0;
  }

  v100 = swift_conformsToProtocol2();
  if (v100 && v97)
  {
    *(v95 + 160) = (*(v100 + 8))(v97, v100);
  }

  v101 = *(v95 + 64);
  v102 = *(v95 + 72);
  *(v95 + 64) = sub_1AF59481C;
  *(v95 + 72) = v87;
  sub_1AF0FB8EC(v101, v102);
  *(v95 + 168) = 0;
  *(v95 + 176) = 0;

  *(v95 + 216) = v90;

  *(v99 + 96) = v95;
  v103 = swift_getKeyPath();
  v104 = swift_getKeyPath();
  v105 = swift_allocObject();
  v105[4] = sub_1AF5A94A8;
  v105[5] = v103;
  v105[2] = sub_1AF5A9D98;
  v105[3] = v103;
  v105[6] = v103;
  v106 = swift_allocObject();
  *(v106 + 112) = 1;
  *(v106 + 128) = 0;
  *(v106 + 136) = 0;
  *(v106 + 120) = 0;
  *(v106 + 160) = MEMORY[0x1E69E7CC0];
  *(v106 + 168) = 0;
  *(v106 + 216) = 0;
  *(v106 + 176) = 0;
  *(v106 + 16) = 0x4566664F6C6C6166;
  *(v106 + 24) = 0xEF746E656E6F7078;
  *(v106 + 32) = v103;
  *(v106 + 40) = v35;
  *(v106 + 48) = 64;
  *(v106 + 56) = 0;
  *(v106 + 58) = 0;
  *(v106 + 184) = 0;
  *(v106 + 188) = 1;
  *(v106 + 192) = 0;
  *(v106 + 196) = 1;
  *(v106 + 200) = 0x1000100000000;
  *(v106 + 208) = 1;
  *(v106 + 64) = 0;
  *(v106 + 72) = 0;
  *(v106 + 96) = v104;
  *(v106 + 104) = 0;
  *(v106 + 144) = xmmword_1AFE22A20;
  *(v106 + 80) = v105;
  *(v106 + 88) = &off_1F2535378;
  *(v106 + 210) = 0;
  swift_retain_n();

  if (v179)
  {
    v35 = (*(v179 + 8))();
  }

  v107 = swift_conformsToProtocol2();
  if (v107 && v35)
  {
    v108 = (*(v107 + 8))(v35, v107);

    *(v106 + 160) = v108;
  }

  else
  {
  }

  *(v106 + 64) = sub_1AF5A9864;
  *(v106 + 72) = v103;
  sub_1AF0FB8EC(0, 0);
  *(v106 + 168) = 0;
  *(v106 + 176) = 0;

  *(v106 + 216) = 0;
  *(v99 + 104) = v106;
  v109 = swift_getKeyPath();
  v110 = swift_getKeyPath();
  sub_1AF57AAE8(0);
  v111 = swift_allocObject();
  v111[4] = sub_1AF594868;
  v111[5] = v109;
  v111[2] = sub_1AF594880;
  v111[3] = v109;
  v111[6] = v109;
  v112 = swift_allocObject();
  *(v112 + 104) = 0;
  *(v112 + 112) = 1;
  *(v112 + 128) = 0;
  *(v112 + 136) = 0;
  *(v112 + 120) = 0;
  *(v112 + 160) = MEMORY[0x1E69E7CC0];
  *(v112 + 216) = 0;
  v113 = MEMORY[0x1E69E6448];
  sub_1AF583D60(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
  v115 = v114;
  *(v112 + 168) = 0;
  *(v112 + 176) = 0;
  *(v112 + 16) = 0x65747845666C6168;
  *(v112 + 24) = 0xEB0000000073746ELL;
  *(v112 + 32) = v109;
  *(v112 + 40) = v114;
  *(v112 + 48) = 80;
  *(v112 + 56) = 0;
  *(v112 + 58) = 0;
  *(v112 + 184) = 0;
  *(v112 + 188) = 0;
  *(v112 + 192) = 0;
  *(v112 + 196) = 1;
  *(v112 + 200) = 0x1000100000000;
  *(v112 + 208) = 1;
  *(v112 + 64) = 0;
  *(v112 + 72) = 0;
  *(v112 + 96) = v110;
  *(v112 + 144) = xmmword_1AFE22A20;
  *(v112 + 80) = v111;
  *(v112 + 88) = &off_1F2535378;
  *(v112 + 210) = 0;
  v116 = swift_conformsToProtocol2();
  if (v116)
  {
    v117 = v115;
  }

  else
  {
    v117 = 0;
  }

  swift_retain_n();

  v118 = v115;
  if (v117)
  {
    v118 = (*(v116 + 8))(v117, v116);
  }

  v119 = swift_conformsToProtocol2();
  if (v119 && v118)
  {
    v120 = (*(v119 + 8))(v118, v119);

    *(v112 + 160) = v120;
  }

  else
  {
  }

  v121 = *(v112 + 64);
  v122 = *(v112 + 72);
  *(v112 + 64) = sub_1AF5948E4;
  *(v112 + 72) = v109;
  sub_1AF0FB8EC(v121, v122);
  *(v112 + 168) = 0;
  *(v112 + 176) = 0;

  *(v112 + 216) = 0;

  v180[14] = v112;
  v123 = swift_getKeyPath();
  v124 = swift_getKeyPath();
  v125 = swift_allocObject();
  v125[4] = sub_1AF5A986C;
  v125[5] = v123;
  v125[2] = sub_1AF5A9DA0;
  v125[3] = v123;
  v125[6] = v123;
  v126 = swift_allocObject();
  *(v126 + 112) = 1;
  *(v126 + 128) = 0;
  *(v126 + 136) = 0;
  *(v126 + 120) = 0;
  *(v126 + 160) = MEMORY[0x1E69E7CC0];
  *(v126 + 168) = 0;
  *(v126 + 216) = 0;
  *(v126 + 176) = 0;
  *(v126 + 16) = 0x74657366666FLL;
  *(v126 + 24) = 0xE600000000000000;
  *(v126 + 32) = v123;
  *(v126 + 40) = v115;
  *(v126 + 48) = 96;
  *(v126 + 56) = 0;
  *(v126 + 58) = 0;
  *(v126 + 184) = 0;
  *(v126 + 188) = 1;
  *(v126 + 192) = 0;
  *(v126 + 196) = 1;
  *(v126 + 200) = 0x1000100000000;
  *(v126 + 208) = 1;
  *(v126 + 64) = 0;
  *(v126 + 72) = 0;
  *(v126 + 96) = v124;
  *(v126 + 104) = 0;
  *(v126 + 144) = xmmword_1AFE22A20;
  *(v126 + 80) = v125;
  *(v126 + 88) = &off_1F2535378;
  *(v126 + 210) = 0;
  swift_retain_n();

  if (v117)
  {
    v115 = (*(v116 + 8))(v117, v116);
  }

  v127 = swift_conformsToProtocol2();
  if (v127 && v115)
  {
    v128 = (*(v127 + 8))(v115, v127);

    *(v126 + 160) = v128;
  }

  else
  {
  }

  v129 = *(v126 + 64);
  v130 = *(v126 + 72);
  *(v126 + 64) = sub_1AF5A9870;
  *(v126 + 72) = v123;
  sub_1AF0FB8EC(v129, v130);
  *(v126 + 168) = 0;
  *(v126 + 176) = 0;

  *(v126 + 216) = 0;

  v180[15] = v126;
  v131 = swift_getKeyPath();
  v132 = swift_getKeyPath();
  v133 = swift_allocObject();
  v133[4] = sub_1AF5A94A8;
  v133[5] = v131;
  v133[2] = sub_1AF5A9D98;
  v133[3] = v131;
  v133[6] = v131;
  v134 = swift_allocObject();
  *(v134 + 112) = 1;
  *(v134 + 128) = 0;
  *(v134 + 136) = 0;
  *(v134 + 120) = 0;
  *(v134 + 160) = MEMORY[0x1E69E7CC0];
  *(v134 + 168) = 0;
  *(v134 + 176) = 0;
  *(v134 + 216) = 0;
  *(v134 + 16) = 0x656E68746F6F6D73;
  *(v134 + 24) = 0xEA00000000007373;
  *(v134 + 32) = v131;
  *(v134 + 40) = v113;
  *(v134 + 48) = 112;
  *(v134 + 56) = 0;
  *(v134 + 58) = 0;
  *(v134 + 184) = 0;
  *(v134 + 188) = 0;
  *(v134 + 192) = 0;
  *(v134 + 196) = 1;
  *(v134 + 200) = 0x1000100000000;
  *(v134 + 208) = 1;
  *(v134 + 64) = 0;
  *(v134 + 72) = 0;
  *(v134 + 96) = v132;
  *(v134 + 104) = 0;
  *(v134 + 144) = xmmword_1AFE22A20;
  *(v134 + 80) = v133;
  *(v134 + 88) = &off_1F2535378;
  *(v134 + 210) = 0;
  swift_retain_n();

  if (v179)
  {
    v135 = (*(v179 + 8))();
  }

  else
  {
    v135 = v113;
  }

  v136 = swift_conformsToProtocol2();
  if (v136 && v135)
  {
    v137 = (*(v136 + 8))(v135, v136);

    *(v134 + 160) = v137;
  }

  else
  {
  }

  *(v134 + 64) = sub_1AF5A9864;
  *(v134 + 72) = v131;
  sub_1AF0FB8EC(0, 0);
  *(v134 + 168) = 0;
  *(v134 + 176) = 0;

  *(v134 + 216) = 0;
  v180[16] = v134;
  v138 = swift_getKeyPath();
  v139 = swift_getKeyPath();
  v140 = swift_allocObject();
  v140[4] = sub_1AF5A94A8;
  v140[5] = v138;
  v140[2] = sub_1AF5A9D98;
  v140[3] = v138;
  v140[6] = v138;
  v141 = swift_allocObject();
  *(v141 + 112) = 1;
  *(v141 + 128) = 0;
  *(v141 + 136) = 0;
  *(v141 + 120) = 0;
  *(v141 + 160) = MEMORY[0x1E69E7CC0];
  *(v141 + 168) = 0;
  *(v141 + 176) = 0;
  *(v141 + 216) = 0;
  *(v141 + 16) = 0x6465657073;
  *(v141 + 24) = 0xE500000000000000;
  *(v141 + 32) = v138;
  *(v141 + 40) = v113;
  *(v141 + 48) = 116;
  *(v141 + 56) = 0;
  *(v141 + 58) = 0;
  *(v141 + 184) = 0;
  *(v141 + 188) = 0;
  *(v141 + 192) = 0;
  *(v141 + 196) = 1;
  *(v141 + 200) = 0x1000100000000;
  *(v141 + 208) = 1;
  *(v141 + 64) = 0;
  *(v141 + 72) = 0;
  *(v141 + 96) = v139;
  *(v141 + 104) = 0;
  *(v141 + 144) = xmmword_1AFE22A20;
  *(v141 + 80) = v140;
  *(v141 + 88) = &off_1F2535378;
  *(v141 + 210) = 0;
  swift_retain_n();

  if (v179)
  {
    v113 = (*(v179 + 8))();
  }

  v142 = swift_conformsToProtocol2();
  if (v142 && v113)
  {
    v143 = (*(v142 + 8))(v113, v142);

    *(v141 + 160) = v143;
  }

  else
  {
  }

  *(v141 + 64) = sub_1AF5A9864;
  *(v141 + 72) = v138;
  sub_1AF0FB8EC(0, 0);
  *(v141 + 168) = 0;
  *(v141 + 176) = 0;

  *(v141 + 216) = 0;
  v180[17] = v141;
  v144 = swift_getKeyPath();
  v145 = swift_getKeyPath();
  v146 = &type metadata for Entity;
  sub_1AF5A9240(0, &unk_1EB6338D8, &type metadata for Entity, type metadata accessor for EntityGetSet);
  v147 = swift_allocObject();
  v147[4] = sub_1AF59436C;
  v147[5] = v144;
  v147[2] = sub_1AF594928;
  v147[3] = v144;
  v147[6] = v144;
  v148 = swift_allocObject();
  *(v148 + 112) = 1;
  *(v148 + 128) = 0;
  *(v148 + 136) = 0;
  *(v148 + 120) = 0;
  *(v148 + 168) = 0;
  *(v148 + 160) = MEMORY[0x1E69E7CC0];
  *(v148 + 176) = 0;
  *(v148 + 216) = 0;
  *(v148 + 16) = 0x65727574786574;
  *(v148 + 24) = 0xE700000000000000;
  *(v148 + 32) = v144;
  *(v148 + 40) = &type metadata for Entity;
  *(v148 + 48) = 132;
  *(v148 + 56) = 0;
  *(v148 + 58) = 0;
  *(v148 + 184) = 0;
  *(v148 + 188) = 1;
  *(v148 + 192) = 0;
  *(v148 + 196) = 1;
  *(v148 + 200) = 0x1000100000000;
  *(v148 + 208) = 1;
  *(v148 + 64) = 0;
  *(v148 + 72) = 0;
  *(v148 + 96) = v145;
  *(v148 + 104) = 0;
  *(v148 + 144) = xmmword_1AFE551B0;
  *(v148 + 80) = v147;
  *(v148 + 88) = &off_1F2535378;
  *(v148 + 210) = 0;
  v149 = swift_conformsToProtocol2();
  swift_retain_n();

  if (v149)
  {
    v146 = (*(v149 + 8))();
  }

  v150 = swift_conformsToProtocol2();
  if (v150 && v146)
  {
    v151 = (*(v150 + 8))(v146, v150);

    *(v148 + 160) = v151;
  }

  else
  {
  }

  *(v148 + 64) = sub_1AF594984;
  *(v148 + 72) = v144;
  sub_1AF0FB8EC(0, 0);
  *(v148 + 168) = 0;
  *(v148 + 176) = 0;

  *(v148 + 216) = 0;
  v180[18] = v148;
  v152 = swift_getKeyPath();
  v153 = &type metadata for CollisionLayerSet;
  sub_1AF5A9240(0, &qword_1EB63AF50, &type metadata for CollisionLayerSet, type metadata accessor for EntityGetSet);
  v154 = swift_allocObject();
  v154[4] = sub_1AF5945AC;
  v154[5] = v152;
  v154[2] = sub_1AF5949C4;
  v154[3] = v152;
  v154[6] = v152;
  v155 = swift_allocObject();
  *(v155 + 112) = 1;
  *(v155 + 128) = 0;
  *(v155 + 136) = 0;
  *(v155 + 120) = 0;
  *(v155 + 160) = MEMORY[0x1E69E7CC0];
  *(v155 + 168) = 0;
  *(v155 + 176) = 0;
  *(v155 + 216) = 0;
  *(v155 + 16) = 0x73726579616CLL;
  *(v155 + 24) = 0xE600000000000000;
  *(v155 + 32) = v152;
  *(v155 + 40) = &type metadata for CollisionLayerSet;
  *(v155 + 48) = 0;
  *(v155 + 56) = 1;
  *(v155 + 58) = 0;
  *(v155 + 184) = 0;
  *(v155 + 188) = 1;
  *(v155 + 192) = 0;
  *(v155 + 196) = 1;
  *(v155 + 200) = 0x1000100000000;
  *(v155 + 208) = 1;
  *(v155 + 64) = 0;
  *(v155 + 72) = 0;
  *(v155 + 96) = 0;
  *(v155 + 104) = 0;
  *(v155 + 144) = xmmword_1AFE22A20;
  *(v155 + 80) = v154;
  *(v155 + 88) = &off_1F2535378;
  *(v155 + 210) = 0;
  v156 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v156)
  {
    v153 = (*(v156 + 8))();
  }

  v157 = swift_conformsToProtocol2();
  if (v157 && v153)
  {
    *(v155 + 160) = (*(v157 + 8))(v153, v157);
  }

  *(v155 + 64) = sub_1AF594A34;
  *(v155 + 72) = v152;
  sub_1AF0FB8EC(0, 0);
  *(v155 + 168) = 0;
  *(v155 + 176) = 0;

  *(v155 + 216) = 0;
  v180[19] = v155;
  v158 = swift_getKeyPath();
  v159 = swift_allocObject();
  *(v159 + 216) = 0;
  *(v159 + 80) = 0;
  *(v159 + 88) = 0;
  *(v159 + 128) = 0;
  *(v159 + 136) = 0;
  *(v159 + 120) = 0;
  *(v159 + 16) = 0xD000000000000011;
  *(v159 + 24) = 0x80000001AFF236A0;
  v160 = MEMORY[0x1E69E73E0];
  *(v159 + 32) = v158;
  *(v159 + 40) = v160;
  v161 = v160;
  *(v159 + 48) = 0;
  *(v159 + 56) = 1;
  *(v159 + 58) = 4;
  *(v159 + 184) = 0;
  *(v159 + 188) = 1;
  *(v159 + 192) = 0;
  *(v159 + 196) = 1;
  *(v159 + 200) = 0x1000100000000;
  *(v159 + 208) = 1;
  *(v159 + 64) = 0;
  *(v159 + 72) = 0;
  *(v159 + 210) = 4;
  *(v159 + 144) = xmmword_1AFE22A20;
  *(v159 + 168) = 0;
  *(v159 + 176) = 0;
  v162 = MEMORY[0x1E69E7CC0];
  *(v159 + 160) = MEMORY[0x1E69E7CC0];
  *(v159 + 96) = 0;
  *(v159 + 104) = 2025;
  *(v159 + 112) = 0;
  v180[20] = v159;
  v163 = swift_getKeyPath();
  v164 = swift_allocObject();
  *(v164 + 216) = 0;
  *(v164 + 80) = 0;
  *(v164 + 88) = 0;
  *(v164 + 128) = 0;
  *(v164 + 136) = 0;
  *(v164 + 120) = 0;
  strcpy((v164 + 16), "fallOffShape");
  *(v164 + 29) = 0;
  *(v164 + 30) = -5120;
  *(v164 + 32) = v163;
  *(v164 + 40) = v161;
  *(v164 + 48) = 0;
  *(v164 + 56) = 1;
  *(v164 + 58) = 4;
  *(v164 + 184) = 0;
  *(v164 + 188) = 1;
  *(v164 + 192) = 0;
  *(v164 + 196) = 1;
  *(v164 + 200) = 0x1000100000000;
  *(v164 + 208) = 1;
  *(v164 + 64) = 0;
  *(v164 + 72) = 0;
  *(v164 + 210) = 4;
  *(v164 + 144) = xmmword_1AFE22A20;
  *(v164 + 168) = 0;
  *(v164 + 176) = 0;
  *(v164 + 160) = v162;
  *(v164 + 96) = 0;
  *(v164 + 104) = 2025;
  *(v164 + 112) = 0;
  v180[21] = v164;
  v165 = swift_getKeyPath();
  v166 = swift_allocObject();
  *(v166 + 216) = 0;
  *(v166 + 80) = 0;
  *(v166 + 88) = 0;
  *(v166 + 128) = 0;
  *(v166 + 136) = 0;
  *(v166 + 120) = 0;
  *(v166 + 16) = 0xD000000000000010;
  *(v166 + 24) = 0x80000001AFF2AB90;
  *(v166 + 32) = v165;
  *(v166 + 40) = v161;
  *(v166 + 48) = 0;
  *(v166 + 56) = 1;
  *(v166 + 58) = 4;
  *(v166 + 184) = 0;
  *(v166 + 188) = 1;
  *(v166 + 192) = 0;
  *(v166 + 196) = 1;
  *(v166 + 200) = 0x1000100000000;
  *(v166 + 208) = 1;
  *(v166 + 64) = 0;
  *(v166 + 72) = 0;
  *(v166 + 210) = 4;
  *(v166 + 144) = xmmword_1AFE22A20;
  *(v166 + 168) = 0;
  *(v166 + 176) = 0;
  *(v166 + 160) = v162;
  *(v166 + 96) = 0;
  *(v166 + 104) = 2025;
  *(v166 + 112) = 0;
  v180[22] = v166;
  v167 = swift_getKeyPath();
  v168 = swift_allocObject();
  *(v168 + 216) = 0;
  *(v168 + 80) = 0;
  *(v168 + 88) = 0;
  *(v168 + 128) = 0;
  *(v168 + 136) = 0;
  *(v168 + 120) = 0;
  strcpy((v168 + 16), "fallOffRadius");
  *(v168 + 30) = -4864;
  *(v168 + 32) = v167;
  *(v168 + 40) = v161;
  *(v168 + 48) = 0;
  *(v168 + 56) = 1;
  *(v168 + 58) = 4;
  *(v168 + 184) = 0;
  *(v168 + 188) = 1;
  *(v168 + 192) = 0;
  *(v168 + 196) = 1;
  *(v168 + 200) = 0x1000100000000;
  *(v168 + 208) = 1;
  *(v168 + 64) = 0;
  *(v168 + 72) = 0;
  *(v168 + 210) = 4;
  *(v168 + 144) = xmmword_1AFE22A20;
  *(v168 + 168) = 0;
  *(v168 + 176) = 0;
  *(v168 + 160) = v162;
  *(v168 + 96) = 0;
  *(v168 + 104) = 2025;
  *(v168 + 112) = 0;
  v180[23] = v168;
  v169 = swift_getKeyPath();
  v170 = swift_allocObject();
  *(v170 + 216) = 0;
  *(v170 + 80) = 0;
  *(v170 + 88) = 0;
  *(v170 + 128) = 0;
  *(v170 + 136) = 0;
  *(v170 + 120) = 0;
  *(v170 + 16) = 0xD000000000000012;
  *(v170 + 24) = 0x80000001AFF23650;
  *(v170 + 32) = v169;
  *(v170 + 40) = v161;
  *(v170 + 48) = 0;
  *(v170 + 56) = 1;
  *(v170 + 58) = 4;
  *(v170 + 184) = 0;
  *(v170 + 188) = 1;
  *(v170 + 192) = 0;
  *(v170 + 196) = 1;
  *(v170 + 200) = 0x1000100000000;
  *(v170 + 208) = 1;
  *(v170 + 64) = 0;
  *(v170 + 72) = 0;
  *(v170 + 210) = 4;
  *(v170 + 144) = xmmword_1AFE22A20;
  *(v170 + 168) = 0;
  *(v170 + 176) = 0;
  *(v170 + 160) = v162;
  *(v170 + 96) = 0;
  *(v170 + 104) = 2025;
  *(v170 + 112) = 0;
  v180[24] = v170;
  v171 = swift_getKeyPath();
  v172 = swift_allocObject();
  *(v172 + 216) = 0;
  *(v172 + 80) = 0;
  *(v172 + 88) = 0;
  *(v172 + 128) = 0;
  *(v172 + 136) = 0;
  *(v172 + 120) = 0;
  strcpy((v172 + 16), "fallOffRange");
  *(v172 + 29) = 0;
  *(v172 + 30) = -5120;
  *(v172 + 32) = v171;
  *(v172 + 40) = v161;
  *(v172 + 48) = 0;
  *(v172 + 56) = 1;
  *(v172 + 58) = 4;
  *(v172 + 184) = 0;
  *(v172 + 188) = 1;
  *(v172 + 192) = 0;
  *(v172 + 196) = 1;
  *(v172 + 200) = 0x1000100000000;
  *(v172 + 208) = 1;
  *(v172 + 64) = 0;
  *(v172 + 72) = 0;
  *(v172 + 210) = 4;
  *(v172 + 144) = xmmword_1AFE22A20;
  *(v172 + 168) = 0;
  *(v172 + 176) = 0;
  *(v172 + 160) = v162;
  *(v172 + 96) = 0;
  *(v172 + 104) = 2025;
  *(v172 + 112) = 0;
  v180[25] = v172;
  v173 = swift_getKeyPath();
  v174 = swift_allocObject();
  *(v174 + 216) = 0;
  *(v174 + 80) = 0;
  *(v174 + 88) = 0;
  *(v174 + 128) = 0;
  *(v174 + 136) = 0;
  *(v174 + 120) = 0;
  strcpy((v174 + 16), "fallOffPower");
  *(v174 + 29) = 0;
  *(v174 + 30) = -5120;
  *(v174 + 32) = v173;
  *(v174 + 40) = v161;
  *(v174 + 48) = 0;
  *(v174 + 56) = 1;
  *(v174 + 58) = 4;
  *(v174 + 184) = 0;
  *(v174 + 188) = 1;
  *(v174 + 192) = 0;
  *(v174 + 196) = 1;
  *(v174 + 200) = 0x1000100000000;
  *(v174 + 208) = 1;
  *(v174 + 64) = 0;
  *(v174 + 72) = 0;
  *(v174 + 210) = 4;
  *(v174 + 144) = xmmword_1AFE22A20;
  *(v174 + 168) = 0;
  *(v174 + 176) = 0;
  *(v174 + 160) = v162;
  *(v174 + 96) = 0;
  *(v174 + 104) = 2025;
  *(v174 + 112) = 0;
  v180[26] = v174;
  v175 = swift_getKeyPath();
  v176 = swift_allocObject();
  *(v176 + 216) = 0;
  *(v176 + 80) = 0;
  *(v176 + 88) = 0;
  *(v176 + 128) = 0;
  *(v176 + 136) = 0;
  *(v176 + 120) = 0;
  *(v176 + 16) = 0x5073746365666661;
  *(v176 + 24) = 0xEF6E6F697469736FLL;
  *(v176 + 32) = v175;
  *(v176 + 40) = v161;
  *(v176 + 48) = 0;
  *(v176 + 56) = 1;
  *(v176 + 58) = 4;
  *(v176 + 184) = 0;
  *(v176 + 188) = 1;
  *(v176 + 192) = 0;
  *(v176 + 196) = 1;
  *(v176 + 200) = 0x1000100000000;
  *(v176 + 208) = 1;
  *(v176 + 64) = 0;
  *(v176 + 72) = 0;
  *(v176 + 210) = 4;
  result = xmmword_1AFE22A20;
  *(v176 + 144) = xmmword_1AFE22A20;
  *(v176 + 168) = 0;
  *(v176 + 176) = 0;
  *(v176 + 160) = v162;
  *(v176 + 96) = 0;
  *(v176 + 104) = 2025;
  *(v176 + 112) = 0;
  v180[27] = v176;
  qword_1EB6C2F48 = v180;
  return result;
}

uint64_t sub_1AF4E23B8()
{
  if (qword_1EB636F38 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1AF4E24A8()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE55190;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF594F90;
  v3[5] = KeyPath;
  v3[2] = sub_1AF594FC4;
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
  *(v4 + 16) = 0x6C6169646172;
  *(v4 + 24) = 0xE600000000000000;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = v2;
  *(v4 + 48) = 4;
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
  *(v4 + 64) = sub_1AF595020;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(v8, v9);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;

  *(v0 + 32) = v4;
  v10 = swift_getKeyPath();
  v11 = swift_allocObject();
  v11[4] = sub_1AF5A94AC;
  v11[5] = v10;
  v11[2] = sub_1AF5A9DBC;
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
  *(v12 + 16) = 0x7261656E696CLL;
  *(v12 + 24) = 0xE600000000000000;
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

  v14 = swift_conformsToProtocol2();
  if (v14 && v13)
  {
    *(v12 + 160) = (*(v14 + 8))(v13, v14);
  }

  v15 = *(v12 + 64);
  v16 = *(v12 + 72);
  *(v12 + 64) = sub_1AF5A9874;
  *(v12 + 72) = v10;
  sub_1AF0FB8EC(v15, v16);
  *(v12 + 168) = 0;
  *(v12 + 176) = 0;

  *(v12 + 216) = 0;

  *(v0 + 40) = v12;
  *(v0 + 48) = sub_1AF577370(2025, 1684957559, 0xE400000000000000, &type metadata for ParticleForceField, &off_1F2561400, 0x7261656E696CLL, 0xE600000000000000);
  v17 = swift_getKeyPath();
  v18 = swift_allocObject();
  v18[4] = sub_1AF5A94AC;
  v18[5] = v17;
  v18[2] = sub_1AF5A9DBC;
  v18[3] = v17;
  v18[6] = v17;
  v19 = swift_allocObject();
  *(v19 + 112) = 1;
  *(v19 + 128) = 0;
  *(v19 + 136) = 0;
  *(v19 + 120) = 0;
  *(v19 + 160) = MEMORY[0x1E69E7CC0];
  *(v19 + 168) = 0;
  *(v19 + 216) = 0;
  *(v19 + 176) = 0;
  *(v19 + 16) = 0x786574726F76;
  *(v19 + 24) = 0xE600000000000000;
  *(v19 + 32) = v17;
  *(v19 + 40) = v2;
  *(v19 + 48) = 8;
  *(v19 + 56) = 0;
  *(v19 + 58) = 0;
  *(v19 + 184) = 0;
  *(v19 + 188) = 1;
  *(v19 + 192) = 0;
  *(v19 + 196) = 1;
  *(v19 + 200) = 0x1000100000000;
  *(v19 + 208) = 1;
  *(v19 + 64) = 0;
  *(v19 + 72) = 0;
  *(v19 + 96) = 0;
  *(v19 + 104) = 0;
  *(v19 + 144) = xmmword_1AFE22A20;
  *(v19 + 80) = v18;
  *(v19 + 88) = &off_1F2535378;
  *(v19 + 210) = 0;
  swift_retain_n();
  if (v5)
  {
    v20 = (*(v5 + 8))();
  }

  else
  {
    v20 = v2;
  }

  v21 = swift_conformsToProtocol2();
  v22 = MEMORY[0x1E69E7CC0];
  if (v21 && v20)
  {
    *(v19 + 160) = (*(v21 + 8))(v20, v21);
  }

  *(v19 + 64) = sub_1AF5A9874;
  *(v19 + 72) = v17;
  sub_1AF0FB8EC(0, 0);
  *(v19 + 168) = 0;
  *(v19 + 176) = 0;

  *(v19 + 216) = 0;
  *(v0 + 56) = v19;
  v23 = swift_getKeyPath();
  v24 = swift_allocObject();
  v24[4] = sub_1AF5A94AC;
  v24[5] = v23;
  v24[2] = sub_1AF5A9DBC;
  v24[3] = v23;
  v24[6] = v23;
  v25 = swift_allocObject();
  *(v25 + 112) = 1;
  *(v25 + 128) = 0;
  *(v25 + 136) = 0;
  *(v25 + 120) = 0;
  *(v25 + 160) = v22;
  *(v25 + 168) = 0;
  *(v25 + 216) = 0;
  *(v25 + 176) = 0;
  *(v25 + 16) = 0x636974656E67616DLL;
  *(v25 + 24) = 0xE800000000000000;
  *(v25 + 32) = v23;
  *(v25 + 40) = v2;
  *(v25 + 48) = 12;
  *(v25 + 56) = 0;
  *(v25 + 58) = 0;
  *(v25 + 184) = 0;
  *(v25 + 188) = 1;
  *(v25 + 192) = 0;
  *(v25 + 196) = 1;
  *(v25 + 200) = 0x1000100000000;
  *(v25 + 208) = 1;
  *(v25 + 64) = 0;
  *(v25 + 72) = 0;
  *(v25 + 96) = 0;
  *(v25 + 104) = 0;
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

  *(v25 + 64) = sub_1AF5A9874;
  *(v25 + 72) = v23;
  sub_1AF0FB8EC(0, 0);
  *(v25 + 168) = 0;
  *(v25 + 176) = 0;

  *(v25 + 216) = 0;
  *(v0 + 64) = v25;
  v28 = swift_getKeyPath();
  v29 = swift_allocObject();
  v29[4] = sub_1AF5A94AC;
  v29[5] = v28;
  v29[2] = sub_1AF5A9DBC;
  v29[3] = v28;
  v29[6] = v28;
  v30 = swift_allocObject();
  *(v30 + 112) = 1;
  *(v30 + 128) = 0;
  *(v30 + 136) = 0;
  *(v30 + 120) = 0;
  *(v30 + 160) = v22;
  *(v30 + 168) = 0;
  *(v30 + 216) = 0;
  *(v30 + 176) = 0;
  *(v30 + 16) = 0x63696E6F6D726168;
  *(v30 + 24) = 0xE800000000000000;
  *(v30 + 32) = v28;
  *(v30 + 40) = v2;
  *(v30 + 48) = 16;
  *(v30 + 56) = 0;
  *(v30 + 58) = 0;
  *(v30 + 184) = 0;
  *(v30 + 188) = 1;
  *(v30 + 192) = 0;
  *(v30 + 196) = 1;
  *(v30 + 200) = 0x1000100000000;
  *(v30 + 208) = 1;
  *(v30 + 64) = 0;
  *(v30 + 72) = 0;
  *(v30 + 96) = 0;
  *(v30 + 104) = 0;
  *(v30 + 144) = xmmword_1AFE22A20;
  *(v30 + 80) = v29;
  *(v30 + 88) = &off_1F2535378;
  *(v30 + 210) = 0;
  swift_retain_n();
  if (v5)
  {
    v31 = (*(v5 + 8))();
  }

  else
  {
    v31 = v2;
  }

  v32 = swift_conformsToProtocol2();
  if (v32 && v31)
  {
    *(v30 + 160) = (*(v32 + 8))(v31, v32);
  }

  *(v30 + 64) = sub_1AF5A9874;
  *(v30 + 72) = v28;
  sub_1AF0FB8EC(0, 0);
  *(v30 + 168) = 0;
  *(v30 + 176) = 0;

  *(v30 + 216) = 0;
  *(v0 + 72) = v30;
  v33 = swift_getKeyPath();
  v34 = swift_allocObject();
  v34[4] = sub_1AF5A94AC;
  v34[5] = v33;
  v34[2] = sub_1AF5A9DBC;
  v34[3] = v33;
  v34[6] = v33;
  v35 = swift_allocObject();
  *(v35 + 112) = 1;
  *(v35 + 128) = 0;
  *(v35 + 136) = 0;
  *(v35 + 120) = 0;
  *(v35 + 160) = v22;
  *(v35 + 168) = 0;
  *(v35 + 216) = 0;
  *(v35 + 176) = 0;
  *(v35 + 16) = 1734439524;
  *(v35 + 24) = 0xE400000000000000;
  *(v35 + 32) = v33;
  *(v35 + 40) = v2;
  *(v35 + 48) = 20;
  *(v35 + 56) = 0;
  *(v35 + 58) = 0;
  *(v35 + 184) = 0;
  *(v35 + 188) = 1;
  *(v35 + 192) = 0;
  *(v35 + 196) = 1;
  *(v35 + 200) = 0x1000100000000;
  *(v35 + 208) = 1;
  *(v35 + 64) = 0;
  *(v35 + 72) = 0;
  *(v35 + 96) = 0;
  *(v35 + 104) = 0;
  *(v35 + 144) = xmmword_1AFE22A20;
  *(v35 + 80) = v34;
  *(v35 + 88) = &off_1F2535378;
  *(v35 + 210) = 0;
  swift_retain_n();
  if (v5)
  {
    v36 = (*(v5 + 8))();
  }

  else
  {
    v36 = v2;
  }

  v37 = swift_conformsToProtocol2();
  if (v37 && v36)
  {
    *(v35 + 160) = (*(v37 + 8))(v36, v37);
  }

  *(v35 + 64) = sub_1AF5A9874;
  *(v35 + 72) = v33;
  sub_1AF0FB8EC(0, 0);
  *(v35 + 168) = 0;
  *(v35 + 176) = 0;

  *(v35 + 216) = 0;
  *(v0 + 80) = v35;
  v38 = swift_getKeyPath();
  v39 = swift_allocObject();
  v39[4] = sub_1AF5A94AC;
  v39[5] = v38;
  v39[2] = sub_1AF5A9DBC;
  v39[3] = v38;
  v39[6] = v38;
  v40 = swift_allocObject();
  *(v40 + 112) = 1;
  *(v40 + 128) = 0;
  *(v40 + 136) = 0;
  *(v40 + 120) = 0;
  *(v40 + 160) = v22;
  *(v40 + 168) = 0;
  *(v40 + 216) = 0;
  *(v40 + 176) = 0;
  *(v40 + 16) = 0x6573696F6ELL;
  *(v40 + 24) = 0xE500000000000000;
  *(v40 + 32) = v38;
  *(v40 + 40) = v2;
  *(v40 + 48) = 28;
  *(v40 + 56) = 0;
  *(v40 + 58) = 0;
  *(v40 + 184) = 0;
  *(v40 + 188) = 1;
  *(v40 + 192) = 0;
  *(v40 + 196) = 1;
  *(v40 + 200) = 0x1000100000000;
  *(v40 + 208) = 1;
  *(v40 + 64) = 0;
  *(v40 + 72) = 0;
  *(v40 + 96) = 0;
  *(v40 + 104) = 0;
  *(v40 + 144) = xmmword_1AFE22A20;
  *(v40 + 80) = v39;
  *(v40 + 88) = &off_1F2535378;
  *(v40 + 210) = 0;
  swift_retain_n();
  if (v5)
  {
    v41 = (*(v5 + 8))();
  }

  else
  {
    v41 = v2;
  }

  v42 = swift_conformsToProtocol2();
  if (v42 && v41)
  {
    *(v40 + 160) = (*(v42 + 8))(v41, v42);
  }

  *(v40 + 64) = sub_1AF5A9874;
  *(v40 + 72) = v38;
  sub_1AF0FB8EC(0, 0);
  *(v40 + 168) = 0;
  *(v40 + 176) = 0;

  *(v40 + 216) = 0;
  *(v0 + 88) = v40;
  v43 = swift_getKeyPath();
  v44 = swift_allocObject();
  v44[4] = sub_1AF5A94AC;
  v44[5] = v43;
  v44[2] = sub_1AF5A9DBC;
  v44[3] = v43;
  v44[6] = v43;
  v45 = swift_allocObject();
  *(v45 + 112) = 1;
  *(v45 + 128) = 0;
  *(v45 + 136) = 0;
  *(v45 + 120) = 0;
  *(v45 + 160) = v22;
  *(v45 + 168) = 0;
  *(v45 + 216) = 0;
  *(v45 + 176) = 0;
  *(v45 + 16) = 0x6E656C7562727574;
  *(v45 + 24) = 0xEA00000000006563;
  *(v45 + 32) = v43;
  *(v45 + 40) = v2;
  *(v45 + 48) = 32;
  *(v45 + 56) = 0;
  *(v45 + 58) = 0;
  *(v45 + 184) = 0;
  *(v45 + 188) = 1;
  *(v45 + 192) = 0;
  *(v45 + 196) = 1;
  *(v45 + 200) = 0x1000100000000;
  *(v45 + 208) = 1;
  *(v45 + 64) = 0;
  *(v45 + 72) = 0;
  *(v45 + 96) = 0;
  *(v45 + 104) = 0;
  *(v45 + 144) = xmmword_1AFE22A20;
  *(v45 + 80) = v44;
  *(v45 + 88) = &off_1F2535378;
  *(v45 + 210) = 0;
  swift_retain_n();
  if (v5)
  {
    v46 = (*(v5 + 8))();
  }

  else
  {
    v46 = v2;
  }

  v47 = swift_conformsToProtocol2();
  if (v47 && v46)
  {
    *(v45 + 160) = (*(v47 + 8))(v46, v47);
  }

  *(v45 + 64) = sub_1AF5A9874;
  *(v45 + 72) = v43;
  sub_1AF0FB8EC(0, 0);
  *(v45 + 168) = 0;
  *(v45 + 176) = 0;

  *(v45 + 216) = 0;
  *(v0 + 96) = v45;
  v48 = swift_getKeyPath();
  v49 = swift_allocObject();
  v49[4] = sub_1AF5A94AC;
  v49[5] = v48;
  v49[2] = sub_1AF5A9DBC;
  v49[3] = v48;
  v49[6] = v48;
  v50 = swift_allocObject();
  *(v50 + 112) = 1;
  *(v50 + 128) = 0;
  *(v50 + 136) = 0;
  *(v50 + 120) = 0;
  *(v50 + 160) = v22;
  *(v50 + 168) = 0;
  *(v50 + 216) = 0;
  *(v50 + 176) = 0;
  *(v50 + 16) = 0x676E69727073;
  *(v50 + 24) = 0xE600000000000000;
  *(v50 + 32) = v48;
  *(v50 + 40) = v2;
  *(v50 + 48) = 36;
  *(v50 + 56) = 0;
  *(v50 + 58) = 0;
  *(v50 + 184) = 0;
  *(v50 + 188) = 1;
  *(v50 + 192) = 0;
  *(v50 + 196) = 1;
  *(v50 + 200) = 0x1000100000000;
  *(v50 + 208) = 1;
  *(v50 + 64) = 0;
  *(v50 + 72) = 0;
  *(v50 + 96) = 0;
  *(v50 + 104) = 0;
  *(v50 + 144) = xmmword_1AFE22A20;
  *(v50 + 80) = v49;
  *(v50 + 88) = &off_1F2535378;
  *(v50 + 210) = 0;
  swift_retain_n();
  if (v5)
  {
    v2 = (*(v5 + 8))();
  }

  v51 = swift_conformsToProtocol2();
  if (v51 && v2)
  {
    *(v50 + 160) = (*(v51 + 8))(v2, v51);
  }

  *(v50 + 64) = sub_1AF5A9874;
  *(v50 + 72) = v48;
  sub_1AF0FB8EC(0, 0);
  *(v50 + 168) = 0;
  *(v50 + 176) = 0;

  *(v50 + 216) = 0;
  *(v0 + 104) = v50;
  v52 = swift_getKeyPath();
  v53 = &type metadata for CollisionLayerSet;
  sub_1AF5A9240(0, &qword_1EB63AF50, &type metadata for CollisionLayerSet, type metadata accessor for EntityGetSet);
  v54 = swift_allocObject();
  v54[4] = sub_1AF594F90;
  v54[5] = v52;
  v54[2] = sub_1AF595060;
  v54[3] = v52;
  v54[6] = v52;
  v55 = swift_allocObject();
  *(v55 + 112) = 1;
  *(v55 + 128) = 0;
  *(v55 + 136) = 0;
  *(v55 + 120) = 0;
  *(v55 + 160) = v22;
  *(v55 + 168) = 0;
  *(v55 + 216) = 0;
  *(v55 + 176) = 0;
  *(v55 + 16) = 0x73726579616CLL;
  *(v55 + 24) = 0xE600000000000000;
  *(v55 + 32) = v52;
  *(v55 + 40) = &type metadata for CollisionLayerSet;
  *(v55 + 48) = 40;
  *(v55 + 56) = 0;
  *(v55 + 58) = 0;
  *(v55 + 184) = 0;
  *(v55 + 188) = 1;
  *(v55 + 192) = 0;
  *(v55 + 196) = 1;
  *(v55 + 200) = 0x1000100000000;
  *(v55 + 208) = 1;
  *(v55 + 64) = 0;
  *(v55 + 72) = 0;
  *(v55 + 96) = 0;
  *(v55 + 104) = 0;
  *(v55 + 144) = xmmword_1AFE22A20;
  *(v55 + 80) = v54;
  *(v55 + 88) = &off_1F2535378;
  *(v55 + 210) = 0;
  v56 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v56)
  {
    v53 = (*(v56 + 8))();
  }

  v57 = swift_conformsToProtocol2();
  if (v57 && v53)
  {
    *(v55 + 160) = (*(v57 + 8))(v53, v57);
  }

  *(v55 + 64) = sub_1AF5950D0;
  *(v55 + 72) = v52;
  sub_1AF0FB8EC(0, 0);
  *(v55 + 168) = 0;
  *(v55 + 176) = 0;

  *(v55 + 216) = 0;
  *(v0 + 112) = v55;
  qword_1EB6C2F50 = v0;
  return result;
}

uint64_t sub_1AF4E3790()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE550F0;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF5951D0;
  v3[5] = KeyPath;
  v3[2] = sub_1AF595214;
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
  *(v4 + 16) = 0x737569646172;
  *(v4 + 24) = 0xE600000000000000;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = v2;
  *(v4 + 48) = 0;
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

  *(v4 + 64) = sub_1AF595270;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0, 0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  v8 = swift_getKeyPath();
  v9 = swift_allocObject();
  v9[4] = sub_1AF5A94B0;
  v9[5] = v8;
  v9[2] = sub_1AF5A9DC4;
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
  *(v10 + 16) = 0x7053646E756F7261;
  *(v10 + 24) = 0xEB00000000646565;
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

  *(v10 + 64) = sub_1AF5A9878;
  *(v10 + 72) = v8;
  sub_1AF0FB8EC(0, 0);
  *(v10 + 168) = 0;
  *(v10 + 176) = 0;

  *(v10 + 216) = 0;
  *(v0 + 40) = v10;
  v13 = swift_getKeyPath();
  v14 = swift_allocObject();
  v14[4] = sub_1AF5A94B0;
  v14[5] = v13;
  v14[2] = sub_1AF5A9DC4;
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
  *(v15 + 16) = 0x64656570536E69;
  *(v15 + 24) = 0xE700000000000000;
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
  *(v15 + 64) = 0;
  *(v15 + 72) = 0;
  *(v15 + 96) = 0;
  *(v15 + 104) = 0;
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

  *(v15 + 64) = sub_1AF5A9878;
  *(v15 + 72) = v13;
  sub_1AF0FB8EC(0, 0);
  *(v15 + 168) = 0;
  *(v15 + 176) = 0;

  *(v15 + 216) = 0;
  *(v0 + 48) = v15;
  v18 = swift_getKeyPath();
  v19 = swift_allocObject();
  v19[4] = sub_1AF5A94B0;
  v19[5] = v18;
  v19[2] = sub_1AF5A9DC4;
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
  *(v20 + 16) = 0x73656E7468676974;
  *(v20 + 24) = 0xE900000000000073;
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
  *(v20 + 64) = 0;
  *(v20 + 72) = 0;
  *(v20 + 96) = 0;
  *(v20 + 104) = 0;
  *(v20 + 144) = xmmword_1AFE22A20;
  *(v20 + 80) = v19;
  *(v20 + 88) = &off_1F2535378;
  *(v20 + 210) = 0;
  swift_retain_n();
  if (v5)
  {
    v2 = (*(v5 + 8))();
  }

  v21 = swift_conformsToProtocol2();
  if (v21 && v2)
  {
    *(v20 + 160) = (*(v21 + 8))(v2, v21);
  }

  *(v20 + 64) = sub_1AF5A9878;
  *(v20 + 72) = v18;
  sub_1AF0FB8EC(0, 0);
  *(v20 + 168) = 0;
  *(v20 + 176) = 0;

  *(v20 + 216) = 0;
  *(v0 + 56) = v20;
  qword_1EB6C2F58 = v0;
  return result;
}

uint64_t sub_1AF4E4064()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE550E0;
  KeyPath = swift_getKeyPath();
  sub_1AF57AAE8(0);
  v2 = swift_allocObject();
  v2[4] = sub_1AF595310;
  v2[5] = KeyPath;
  v2[2] = sub_1AF595328;
  v2[3] = KeyPath;
  v2[6] = KeyPath;
  type metadata accessor for PropertyDescription();
  v3 = swift_allocObject();
  *(v3 + 104) = 0;
  *(v3 + 112) = 1;
  *(v3 + 128) = 0;
  *(v3 + 136) = 0;
  *(v3 + 120) = 0;
  v4 = MEMORY[0x1E69E7CC0];
  *(v3 + 160) = MEMORY[0x1E69E7CC0];
  *(v3 + 216) = 0;
  sub_1AF583D60(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
  v6 = v5;
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;
  *(v3 + 16) = 0x6563726F66;
  *(v3 + 24) = 0xE500000000000000;
  *(v3 + 32) = KeyPath;
  *(v3 + 40) = v5;
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  *(v3 + 58) = 0;
  *(v3 + 184) = 0;
  *(v3 + 188) = 1;
  *(v3 + 192) = 0;
  *(v3 + 196) = 1;
  *(v3 + 200) = 0x1000100000000;
  *(v3 + 208) = 1;
  *(v3 + 96) = 0;
  *(v3 + 64) = 0;
  *(v3 + 72) = 0;
  *(v3 + 144) = xmmword_1AFE22A20;
  *(v3 + 80) = v2;
  *(v3 + 88) = &off_1F2535378;
  *(v3 + 210) = 0;
  v7 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v7 && v6)
  {
    v6 = (*(v7 + 8))(v6, v7);
  }

  v8 = swift_conformsToProtocol2();
  if (v8 && v6)
  {
    *(v3 + 160) = (*(v8 + 8))(v6, v8);
  }

  v9 = *(v3 + 64);
  v10 = *(v3 + 72);
  *(v3 + 64) = sub_1AF59538C;
  *(v3 + 72) = KeyPath;
  sub_1AF0FB8EC(v9, v10);
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;

  *(v3 + 216) = 0;

  *(v0 + 32) = v3;
  v11 = swift_getKeyPath();
  v12 = swift_getKeyPath();
  v13 = MEMORY[0x1E69E7360];
  sub_1AF5A9240(0, &unk_1EB634340, MEMORY[0x1E69E7360], type metadata accessor for EntityGetSet);
  v14 = swift_allocObject();
  v14[4] = sub_1AF5953D0;
  v14[5] = v12;
  v14[2] = sub_1AF595404;
  v14[3] = v12;
  v14[6] = v12;
  v15 = swift_allocObject();
  *(v15 + 112) = 1;
  *(v15 + 128) = 0;
  *(v15 + 136) = 0;
  *(v15 + 120) = 0;
  *(v15 + 160) = v4;
  *(v15 + 168) = 0;
  *(v15 + 216) = 0;
  *(v15 + 176) = 0;
  *(v15 + 16) = 0x646E496563617073;
  *(v15 + 24) = 0xEA00000000007865;
  *(v15 + 32) = v12;
  *(v15 + 40) = v13;
  *(v15 + 48) = 0;
  *(v15 + 56) = 1;
  *(v15 + 58) = 0;
  *(v15 + 184) = 0;
  *(v15 + 188) = 1;
  *(v15 + 192) = 0;
  *(v15 + 196) = 1;
  *(v15 + 200) = 0x1000100000000;
  *(v15 + 208) = 1;
  *(v15 + 64) = 0;
  *(v15 + 72) = 0;
  *(v15 + 96) = 0;
  *(v15 + 104) = 0;
  *(v15 + 144) = xmmword_1AFE22A20;
  *(v15 + 80) = v14;
  *(v15 + 88) = &off_1F2535378;
  *(v15 + 210) = 0;
  v16 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v16)
  {
    v13 = (*(v16 + 8))();
  }

  v17 = swift_conformsToProtocol2();
  if (v17 && v13)
  {
    *(v15 + 160) = (*(v17 + 8))(v13, v17);
  }

  *(v15 + 64) = sub_1AF595460;
  *(v15 + 72) = v12;
  sub_1AF0FB8EC(0, 0);
  *(v15 + 168) = 0;
  *(v15 + 176) = 0;

  *(v15 + 216) = 0;
  v18 = &type metadata for EntitySpace;
  sub_1AF5A9240(0, &qword_1EB63A130, &type metadata for EntitySpace, type metadata accessor for EntityGetSet);
  v19 = swift_allocObject();
  v19[4] = sub_1AF5954A0;
  v19[5] = v11;
  v19[2] = sub_1AF5954CC;
  v19[3] = v11;
  v19[6] = v11;
  v20 = swift_allocObject();
  *(v20 + 112) = 1;
  *(v20 + 128) = 0;
  *(v20 + 136) = 0;
  *(v20 + 120) = 0;
  *(v20 + 160) = MEMORY[0x1E69E7CC0];
  *(v20 + 168) = 0;
  *(v20 + 216) = 0;
  *(v20 + 176) = 0;
  *(v20 + 16) = 0x6563617073;
  *(v20 + 24) = 0xE500000000000000;
  *(v20 + 32) = v11;
  *(v20 + 40) = &type metadata for EntitySpace;
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

  *(v20 + 64) = sub_1AF595528;
  *(v20 + 72) = v11;
  sub_1AF0FB8EC(0, 0);
  *(v20 + 168) = 0;
  *(v20 + 176) = 0;

  *(v20 + 216) = v15;
  *(v0 + 40) = v20;
  qword_1EB6C2F60 = v0;
  return result;
}

uint64_t sub_1AF4E4794()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE550F0;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF5956C8;
  v3[5] = KeyPath;
  v3[2] = sub_1AF59570C;
  v3[3] = KeyPath;
  v3[6] = KeyPath;
  type metadata accessor for PropertyDescription();
  v4 = swift_allocObject();
  *(v4 + 112) = 1;
  *(v4 + 128) = 0;
  *(v4 + 136) = 0;
  *(v4 + 120) = 0;
  v5 = MEMORY[0x1E69E7CC0];
  *(v4 + 216) = 0;
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;
  *(v4 + 160) = v5;
  *(v4 + 16) = 0x6E6968746F6F6D73;
  *(v4 + 24) = 0xEF73756964615267;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = v2;
  *(v4 + 48) = 0;
  *(v4 + 56) = 0;
  *(v4 + 58) = 0;
  *(v4 + 184) = 1036831949;
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

  *(v4 + 64) = sub_1AF595768;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0, 0);
  *(v4 + 168) = 0xD000000000000072;
  *(v4 + 176) = 0x80000001AFF2AC50;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  v9 = swift_getKeyPath();
  v10 = swift_allocObject();
  v10[4] = sub_1AF5A94B4;
  v10[5] = v9;
  v10[2] = sub_1AF5A9DD4;
  v10[3] = v9;
  v10[6] = v9;
  v11 = swift_allocObject();
  *(v11 + 112) = 1;
  *(v11 + 128) = 0;
  *(v11 + 136) = 0;
  *(v11 + 120) = 0;
  *(v11 + 216) = 0;
  *(v11 + 176) = 0;
  *(v11 + 160) = MEMORY[0x1E69E7CC0];
  *(v11 + 168) = 0;
  *(v11 + 16) = 0x736E654474736572;
  *(v11 + 24) = 0xEB00000000797469;
  *(v11 + 32) = v9;
  *(v11 + 40) = v2;
  *(v11 + 48) = 4;
  *(v11 + 56) = 0;
  *(v11 + 58) = 0;
  *(v11 + 184) = 1084227584;
  *(v11 + 188) = 0;
  *(v11 + 192) = 1101004800;
  *(v11 + 196) = 0;
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

  *(v11 + 64) = sub_1AF5A9880;
  *(v11 + 72) = v9;
  sub_1AF0FB8EC(0, 0);
  *(v11 + 168) = 0xD00000000000009CLL;
  *(v11 + 176) = 0x80000001AFF2ACD0;

  *(v11 + 216) = 0;
  *(v0 + 40) = v11;
  v14 = swift_getKeyPath();
  v15 = swift_allocObject();
  v15[4] = sub_1AF5A94B4;
  v15[5] = v14;
  v15[2] = sub_1AF5A9DD4;
  v15[3] = v14;
  v15[6] = v14;
  v16 = swift_allocObject();
  *(v16 + 112) = 1;
  *(v16 + 128) = 0;
  *(v16 + 136) = 0;
  *(v16 + 120) = 0;
  *(v16 + 216) = 0;
  *(v16 + 176) = 0;
  *(v16 + 160) = MEMORY[0x1E69E7CC0];
  *(v16 + 168) = 0;
  *(v16 + 16) = 0x73656E6666697473;
  *(v16 + 24) = 0xE900000000000073;
  *(v16 + 32) = v14;
  *(v16 + 40) = v2;
  *(v16 + 48) = 8;
  *(v16 + 56) = 0;
  *(v16 + 58) = 0;
  *(v16 + 184) = 0;
  *(v16 + 188) = 0;
  *(v16 + 192) = 1036831949;
  *(v16 + 196) = 0;
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
    v17 = (*(v6 + 8))();
  }

  else
  {
    v17 = v2;
  }

  v18 = swift_conformsToProtocol2();
  if (v18 && v17)
  {
    *(v16 + 160) = (*(v18 + 8))(v17, v18);
  }

  *(v16 + 64) = sub_1AF5A9880;
  *(v16 + 72) = v14;
  sub_1AF0FB8EC(0, 0);
  *(v16 + 168) = 0xD000000000000088;
  *(v16 + 176) = 0x80000001AFF2AD70;

  *(v16 + 216) = 0;
  *(v0 + 48) = v16;
  v19 = swift_getKeyPath();
  v20 = swift_allocObject();
  v20[4] = sub_1AF5A94B4;
  v20[5] = v19;
  v20[2] = sub_1AF5A9DD4;
  v20[3] = v19;
  v20[6] = v19;
  v21 = swift_allocObject();
  *(v21 + 112) = 1;
  *(v21 + 128) = 0;
  *(v21 + 136) = 0;
  *(v21 + 120) = 0;
  *(v21 + 216) = 0;
  *(v21 + 176) = 0;
  *(v21 + 160) = MEMORY[0x1E69E7CC0];
  *(v21 + 168) = 0;
  *(v21 + 16) = 0x7469736F63736976;
  *(v21 + 24) = 0xE900000000000079;
  *(v21 + 32) = v19;
  *(v21 + 40) = v2;
  *(v21 + 48) = 12;
  *(v21 + 56) = 0;
  *(v21 + 58) = 0;
  *(v21 + 184) = 0;
  *(v21 + 188) = 0;
  *(v21 + 192) = 1075838976;
  *(v21 + 196) = 0;
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
  swift_retain_n();
  if (v6)
  {
    v2 = (*(v6 + 8))();
  }

  v22 = swift_conformsToProtocol2();
  if (v22 && v2)
  {
    *(v21 + 160) = (*(v22 + 8))(v2, v22);
  }

  *(v21 + 64) = sub_1AF5A9880;
  *(v21 + 72) = v19;
  sub_1AF0FB8EC(0, 0);
  *(v21 + 168) = 0xD00000000000003BLL;
  *(v21 + 176) = 0x80000001AFF2AE00;

  *(v21 + 216) = 0;
  *(v0 + 56) = v21;
  qword_1EB6C2F68 = v0;
  return result;
}

uint64_t sub_1AF4E5094()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE551A0;
  KeyPath = swift_getKeyPath();
  v2 = &type metadata for Entity;
  sub_1AF5A9240(0, &unk_1EB6338D8, &type metadata for Entity, type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF595808;
  v3[5] = KeyPath;
  v3[2] = sub_1AF59583C;
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
  *(v4 + 16) = 0x656372756F73;
  *(v4 + 24) = 0xE600000000000000;
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
  *(v4 + 144) = xmmword_1AFE55230;
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

  *(v4 + 64) = sub_1AF595898;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0, 0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  v7 = swift_getKeyPath();
  sub_1AF5795B0(0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1AFE431C0;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0xE000000000000000;
  v9 = MEMORY[0x1E69E6530];
  *(v8 + 72) = MEMORY[0x1E69E6530];
  *(v8 + 48) = 10;
  sub_1AF57A3F8(0);
  v10 = swift_allocObject();
  v10[4] = sub_1AF5958D8;
  v10[5] = v7;
  v10[2] = sub_1AF5958F0;
  v10[3] = v7;
  v10[6] = v7;
  v11 = swift_allocObject();
  *(v11 + 104) = 0;
  *(v11 + 112) = 1;
  *(v11 + 128) = 0;
  *(v11 + 136) = 0;
  *(v11 + 120) = 0;
  *(v11 + 160) = MEMORY[0x1E69E7CC0];
  *(v11 + 216) = 0;
  sub_1AF5A9240(0, &unk_1ED72F970, v9, MEMORY[0x1E69E6720]);
  *(v11 + 168) = 0;
  *(v11 + 176) = 0;
  *(v11 + 16) = 0xD000000000000012;
  *(v11 + 24) = 0x80000001AFF23CF0;
  *(v11 + 32) = v7;
  *(v11 + 40) = v12;
  *(v11 + 48) = 8;
  *(v11 + 56) = 0;
  *(v11 + 58) = 0;
  *(v11 + 184) = 0x40000000;
  *(v11 + 188) = 0;
  *(v11 + 192) = 0;
  *(v11 + 196) = 1;
  *(v11 + 200) = 0x1000100000000;
  *(v11 + 208) = 1;
  *(v11 + 96) = 0;
  *(v11 + 64) = 0;
  *(v11 + 72) = 0;
  *(v11 + 144) = xmmword_1AFE22A20;
  *(v11 + 80) = v10;
  *(v11 + 88) = &off_1F2535378;
  *(v11 + 210) = 0;
  v13 = *(v8 + 16);
  swift_retain_n();
  if (!v13)
  {

    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1AFE431C0;
    *(v8 + 32) = 48;
    *(v8 + 40) = 0xE100000000000000;
    *(v8 + 72) = v9;
    *(v8 + 48) = 0;
  }

  *(v11 + 160) = v8;
  v14 = MEMORY[0x1E69E7CC0];

  *(v11 + 64) = sub_1AF595954;
  *(v11 + 72) = v7;
  sub_1AF0FB8EC(0, 0);
  *(v11 + 168) = 0;
  *(v11 + 176) = 0;

  *(v11 + 216) = 0;
  *(v0 + 40) = v11;
  v15 = swift_getKeyPath();
  v16 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v17 = swift_allocObject();
  v17[4] = sub_1AF595998;
  v17[5] = v15;
  v17[2] = sub_1AF5959CC;
  v17[3] = v15;
  v17[6] = v15;
  v18 = swift_allocObject();
  *(v18 + 112) = 1;
  *(v18 + 128) = 0;
  *(v18 + 136) = 0;
  *(v18 + 120) = 0;
  *(v18 + 160) = v14;
  *(v18 + 168) = 0;
  *(v18 + 216) = 0;
  *(v18 + 176) = 0;
  strcpy((v18 + 16), "ribbonLength");
  *(v18 + 29) = 0;
  *(v18 + 30) = -5120;
  *(v18 + 32) = v15;
  *(v18 + 40) = v16;
  *(v18 + 48) = 20;
  *(v18 + 56) = 0;
  *(v18 + 58) = 0;
  *(v18 + 184) = 0;
  *(v18 + 188) = 0;
  *(v18 + 192) = 0;
  *(v18 + 196) = 1;
  *(v18 + 200) = 0x1000100000000;
  *(v18 + 208) = 1;
  *(v18 + 64) = 0;
  *(v18 + 72) = 0;
  *(v18 + 96) = 0;
  *(v18 + 104) = 0;
  *(v18 + 144) = xmmword_1AFE22A20;
  *(v18 + 80) = v17;
  *(v18 + 88) = &off_1F2535378;
  *(v18 + 210) = 0;
  v19 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v19)
  {
    v20 = (*(v19 + 8))();
  }

  else
  {
    v20 = v16;
  }

  v21 = swift_conformsToProtocol2();
  if (v21 && v20)
  {
    *(v18 + 160) = (*(v21 + 8))(v20, v21);
  }

  *(v18 + 64) = sub_1AF595A28;
  *(v18 + 72) = v15;
  sub_1AF0FB8EC(0, 0);
  *(v18 + 168) = 0;
  *(v18 + 176) = 0;

  *(v18 + 216) = 0;
  *(v0 + 48) = v18;
  v22 = swift_getKeyPath();
  v23 = swift_allocObject();
  v23[4] = sub_1AF5A94B8;
  v23[5] = v22;
  v23[2] = sub_1AF5A9DD8;
  v23[3] = v22;
  v23[6] = v22;
  v24 = swift_allocObject();
  *(v24 + 112) = 1;
  *(v24 + 128) = 0;
  *(v24 + 136) = 0;
  *(v24 + 120) = 0;
  *(v24 + 160) = MEMORY[0x1E69E7CC0];
  *(v24 + 168) = 0;
  *(v24 + 216) = 0;
  *(v24 + 176) = 0;
  *(v24 + 16) = 0x6963697473616C65;
  *(v24 + 24) = 0xEA00000000007974;
  *(v24 + 32) = v22;
  *(v24 + 40) = v16;
  *(v24 + 48) = 28;
  *(v24 + 56) = 0;
  *(v24 + 58) = 0;
  *(v24 + 184) = 0;
  *(v24 + 188) = 0;
  *(v24 + 192) = 1065353216;
  *(v24 + 196) = 0;
  *(v24 + 200) = 0x1000100000000;
  *(v24 + 208) = 1;
  *(v24 + 64) = 0;
  *(v24 + 72) = 0;
  *(v24 + 96) = 0;
  *(v24 + 104) = 0;
  *(v24 + 144) = xmmword_1AFE22A20;
  *(v24 + 80) = v23;
  *(v24 + 88) = &off_1F2535378;
  *(v24 + 210) = 0;
  swift_retain_n();
  if (v19)
  {
    v16 = (*(v19 + 8))();
  }

  v25 = swift_conformsToProtocol2();
  if (v25 && v16)
  {
    *(v24 + 160) = (*(v25 + 8))(v16, v25);
  }

  *(v24 + 64) = sub_1AF5A9884;
  *(v24 + 72) = v22;
  sub_1AF0FB8EC(0, 0);
  *(v24 + 168) = 0;
  *(v24 + 176) = 0;

  *(v24 + 216) = 0;
  *(v0 + 56) = v24;
  v26 = swift_getKeyPath();
  v27 = MEMORY[0x1E69E6370];
  sub_1AF5A9240(0, &qword_1ED722B80, MEMORY[0x1E69E6370], type metadata accessor for EntityGetSet);
  v28 = swift_allocObject();
  v28[4] = sub_1AF595A68;
  v28[5] = v26;
  v28[2] = sub_1AF595A94;
  v28[3] = v26;
  v28[6] = v26;
  v29 = swift_allocObject();
  *(v29 + 112) = 1;
  *(v29 + 128) = 0;
  *(v29 + 136) = 0;
  *(v29 + 120) = 0;
  *(v29 + 160) = MEMORY[0x1E69E7CC0];
  *(v29 + 168) = 0;
  *(v29 + 216) = 0;
  *(v29 + 176) = 0;
  *(v29 + 16) = 0xD000000000000012;
  *(v29 + 24) = 0x80000001AFF23D10;
  *(v29 + 32) = v26;
  *(v29 + 40) = v27;
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
    v31 = (*(v30 + 8))();
  }

  else
  {
    v31 = v27;
  }

  v32 = swift_conformsToProtocol2();
  if (v32 && v31)
  {
    *(v29 + 160) = (*(v32 + 8))(v31, v32);
  }

  *(v29 + 64) = sub_1AF595AF0;
  *(v29 + 72) = v26;
  sub_1AF0FB8EC(0, 0);
  *(v29 + 168) = 0;
  *(v29 + 176) = 0;

  *(v29 + 216) = 0;
  *(v0 + 64) = v29;
  v33 = swift_getKeyPath();
  v34 = swift_allocObject();
  v34[4] = sub_1AF5AA1AC;
  v34[5] = v33;
  v34[2] = sub_1AF5A9DDC;
  v34[3] = v33;
  v34[6] = v33;
  v35 = swift_allocObject();
  *(v35 + 112) = 1;
  *(v35 + 128) = 0;
  *(v35 + 136) = 0;
  *(v35 + 120) = 0;
  *(v35 + 160) = MEMORY[0x1E69E7CC0];
  *(v35 + 168) = 0;
  *(v35 + 216) = 0;
  *(v35 + 176) = 0;
  *(v35 + 16) = 0xD000000000000014;
  *(v35 + 24) = 0x80000001AFF23D30;
  *(v35 + 32) = v33;
  *(v35 + 40) = v27;
  *(v35 + 48) = 25;
  *(v35 + 56) = 0;
  *(v35 + 58) = 0;
  *(v35 + 184) = 0;
  *(v35 + 188) = 1;
  *(v35 + 192) = 0;
  *(v35 + 196) = 1;
  *(v35 + 200) = 0x1000100000000;
  *(v35 + 208) = 1;
  *(v35 + 64) = 0;
  *(v35 + 72) = 0;
  *(v35 + 96) = 0;
  *(v35 + 104) = 0;
  *(v35 + 144) = xmmword_1AFE22A20;
  *(v35 + 80) = v34;
  *(v35 + 88) = &off_1F2535378;
  *(v35 + 210) = 0;
  swift_retain_n();
  if (v30)
  {
    v36 = (*(v30 + 8))();
  }

  else
  {
    v36 = v27;
  }

  v37 = swift_conformsToProtocol2();
  if (v37 && v36)
  {
    *(v35 + 160) = (*(v37 + 8))(v36, v37);
  }

  *(v35 + 64) = sub_1AF5A9888;
  *(v35 + 72) = v33;
  sub_1AF0FB8EC(0, 0);
  *(v35 + 168) = 0;
  *(v35 + 176) = 0;

  *(v35 + 216) = 0;
  *(v0 + 72) = v35;
  v38 = swift_getKeyPath();
  v39 = swift_allocObject();
  v39[4] = sub_1AF5AA1AC;
  v39[5] = v38;
  v39[2] = sub_1AF5A9DDC;
  v39[3] = v38;
  v39[6] = v38;
  v40 = swift_allocObject();
  *(v40 + 112) = 1;
  *(v40 + 128) = 0;
  *(v40 + 136) = 0;
  *(v40 + 120) = 0;
  *(v40 + 160) = MEMORY[0x1E69E7CC0];
  *(v40 + 168) = 0;
  *(v40 + 216) = 0;
  *(v40 + 176) = 0;
  *(v40 + 16) = 0x6F666E49676F6CLL;
  *(v40 + 24) = 0xE700000000000000;
  *(v40 + 32) = v38;
  *(v40 + 40) = v27;
  *(v40 + 48) = 26;
  *(v40 + 56) = 0;
  *(v40 + 58) = 0;
  *(v40 + 184) = 0;
  *(v40 + 188) = 1;
  *(v40 + 192) = 0;
  *(v40 + 196) = 1;
  *(v40 + 200) = 0x1000100000000;
  *(v40 + 208) = 1;
  *(v40 + 64) = 0;
  *(v40 + 72) = 0;
  *(v40 + 96) = 0;
  *(v40 + 104) = 0;
  *(v40 + 144) = xmmword_1AFE22A20;
  *(v40 + 80) = v39;
  *(v40 + 88) = &off_1F2535378;
  *(v40 + 210) = 0;
  swift_retain_n();
  if (v30)
  {
    v27 = (*(v30 + 8))();
  }

  v41 = swift_conformsToProtocol2();
  if (v41 && v27)
  {
    *(v40 + 160) = (*(v41 + 8))(v27, v41);
  }

  *(v40 + 64) = sub_1AF5A9888;
  *(v40 + 72) = v38;
  sub_1AF0FB8EC(0, 0);
  *(v40 + 168) = 0;
  *(v40 + 176) = 0;

  *(v40 + 216) = 0;
  *(v0 + 80) = v40;
  qword_1EB6C2F70 = v0;
  return result;
}