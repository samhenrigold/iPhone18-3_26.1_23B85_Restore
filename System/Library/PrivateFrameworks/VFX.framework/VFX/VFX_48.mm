uint64_t sub_1AF4BD194()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C3E0;
  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  sub_1AF5876B8(0);
  v3 = swift_allocObject();
  v3[4] = sub_1AF5AA0FC;
  v3[5] = v2;
  v3[2] = sub_1AF587688;
  v3[3] = v2;
  v3[6] = v2;
  type metadata accessor for PropertyDescription();
  v4 = swift_allocObject();
  *(v4 + 104) = 0;
  *(v4 + 112) = 1;
  *(v4 + 128) = 0;
  *(v4 + 136) = 0;
  *(v4 + 120) = 0;
  *(v4 + 160) = MEMORY[0x1E69E7CC0];
  *(v4 + 216) = 0;
  sub_1AF5A9240(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  v6 = v5;
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;
  *(v4 + 16) = 0x7461507465737361;
  *(v4 + 24) = 0xEA00000000007368;
  *(v4 + 32) = v2;
  *(v4 + 40) = v5;
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
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  *(v4 + 144) = xmmword_1AFE22A20;
  *(v4 + 80) = v3;
  *(v4 + 88) = &off_1F2535378;
  *(v4 + 210) = 0;
  v7 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v7 && v6)
  {
    v6 = (*(v7 + 8))(v6, v7);
  }

  v8 = swift_conformsToProtocol2();
  if (v8 && v6)
  {
    *(v4 + 160) = (*(v8 + 8))(v6, v8);
  }

  v9 = *(v4 + 64);
  v10 = *(v4 + 72);
  *(v4 + 64) = sub_1AF587734;
  *(v4 + 72) = v2;
  sub_1AF0FB8EC(v9, v10);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;

  sub_1AF51B13C(0, &qword_1EB63A868, sub_1AF5877E4, type metadata accessor for EntityGetSet);
  v11 = swift_allocObject();
  v11[4] = sub_1AF587778;
  v11[5] = KeyPath;
  v11[2] = sub_1AF5877B4;
  v11[3] = KeyPath;
  v11[6] = KeyPath;
  v12 = swift_allocObject();
  *(v12 + 104) = 0;
  *(v12 + 112) = 1;
  *(v12 + 128) = 0;
  *(v12 + 136) = 0;
  *(v12 + 120) = 0;
  *(v12 + 160) = MEMORY[0x1E69E7CC0];
  *(v12 + 216) = 0;
  sub_1AF5877E4(0);
  v14 = v13;
  *(v12 + 168) = 0;
  *(v12 + 176) = 0;
  *(v12 + 16) = 0x737465737361;
  *(v12 + 24) = 0xE600000000000000;
  *(v12 + 32) = KeyPath;
  *(v12 + 40) = v13;
  *(v12 + 48) = 0;
  *(v12 + 56) = 1;
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
  *(v12 + 64) = sub_1AF587818;
  *(v12 + 72) = KeyPath;
  sub_1AF0FB8EC(v17, v18);
  *(v12 + 168) = 0;
  *(v12 + 176) = 0;

  *(v12 + 216) = v4;

  *(v0 + 32) = v12;
  qword_1EB6C2E08 = v0;
  return result;
}

uint64_t sub_1AF4BD6F0()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C3E0;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6158];
  sub_1AF5A9240(0, &qword_1EB634358, MEMORY[0x1E69E6158], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF587B90;
  v3[5] = KeyPath;
  v3[2] = sub_1AF587BCC;
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
  *(v4 + 16) = 1701667182;
  *(v4 + 24) = 0xE400000000000000;
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

  *(v4 + 64) = sub_1AF587BFC;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0, 0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  qword_1EB6C2E10 = v0;
  return result;
}

uint64_t sub_1AF4BDA20()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C3E0;
  KeyPath = swift_getKeyPath();
  sub_1AF587D00(0);
  v2 = swift_allocObject();
  v2[4] = sub_1AF587CF0;
  v2[5] = KeyPath;
  v2[2] = sub_1AF587CF8;
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
  sub_1AF5A9240(0, &qword_1EB63A8B8, MEMORY[0x1E6969080], MEMORY[0x1E69E6720]);
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;
  *(v3 + 16) = 1635017060;
  *(v3 + 24) = 0xE400000000000000;
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
  v5 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v5)
  {
    *(v3 + 160) = (*(v5 + 8))();
  }

  *(v3 + 64) = sub_1AF587D7C;
  *(v3 + 72) = KeyPath;
  sub_1AF0FB8EC(0, 0);
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;

  *(v3 + 216) = 0;
  *(v0 + 32) = v3;
  qword_1EB6C2E18 = v0;
  return result;
}

uint64_t sub_1AF4BDD28()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C3E0;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6158];
  sub_1AF5A9240(0, &qword_1EB634358, MEMORY[0x1E69E6158], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF58801C;
  v3[5] = KeyPath;
  v3[2] = sub_1AF588058;
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
  *(v4 + 16) = 0x696669746E656469;
  *(v4 + 24) = 0xEA00000000007265;
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

  *(v4 + 64) = sub_1AF588088;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0, 0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  qword_1EB6C2E20 = v0;
  return result;
}

uint64_t sub_1AF4BE06C()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C3E0;
  KeyPath = swift_getKeyPath();
  v2 = &type metadata for Entity;
  sub_1AF5A9240(0, &unk_1EB6338D8, &type metadata for Entity, type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF5881C4;
  v3[5] = KeyPath;
  v3[2] = sub_1AF5881F8;
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

  *(v4 + 64) = sub_1AF588254;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0, 0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  qword_1EB6C2E28 = v0;
  return result;
}

uint64_t sub_1AF4BE3A8()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE55130;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6530];
  sub_1AF5A9240(0, &qword_1ED722B68, MEMORY[0x1E69E6530], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF5882F4;
  v3[5] = KeyPath;
  v3[2] = sub_1AF588328;
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
  *(v4 + 16) = 0x687464695778616DLL;
  *(v4 + 24) = 0xE800000000000000;
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

  *(v4 + 64) = sub_1AF588384;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0, 0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  v8 = swift_getKeyPath();
  v9 = swift_allocObject();
  v9[4] = sub_1AF5AA304;
  v9[5] = v8;
  v9[2] = sub_1AF5A9BDC;
  v9[3] = v8;
  v9[6] = v8;
  v10 = swift_allocObject();
  *(v10 + 112) = 1;
  *(v10 + 128) = 0;
  *(v10 + 136) = 0;
  *(v10 + 120) = 0;
  v11 = MEMORY[0x1E69E7CC0];
  *(v10 + 160) = MEMORY[0x1E69E7CC0];
  *(v10 + 168) = 0;
  *(v10 + 216) = 0;
  *(v10 + 176) = 0;
  *(v10 + 16) = 0x686769654878616DLL;
  *(v10 + 24) = 0xE900000000000074;
  *(v10 + 32) = v8;
  *(v10 + 40) = v2;
  *(v10 + 48) = 8;
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
    v2 = (*(v5 + 8))();
  }

  v12 = swift_conformsToProtocol2();
  if (v12 && v2)
  {
    *(v10 + 160) = (*(v12 + 8))(v2, v12);
  }

  *(v10 + 64) = sub_1AF5A9748;
  *(v10 + 72) = v8;
  sub_1AF0FB8EC(0, 0);
  *(v10 + 168) = 0;
  *(v10 + 176) = 0;

  *(v10 + 216) = 0;
  *(v0 + 40) = v10;
  v13 = swift_getKeyPath();
  v14 = MEMORY[0x1E69E6370];
  sub_1AF5A9240(0, &qword_1ED722B80, MEMORY[0x1E69E6370], type metadata accessor for EntityGetSet);
  v15 = swift_allocObject();
  v15[4] = sub_1AF5883C4;
  v15[5] = v13;
  v15[2] = sub_1AF5883F0;
  v15[3] = v13;
  v15[6] = v13;
  v16 = swift_allocObject();
  *(v16 + 112) = 1;
  *(v16 + 128) = 0;
  *(v16 + 136) = 0;
  *(v16 + 120) = 0;
  *(v16 + 160) = v11;
  *(v16 + 168) = 0;
  *(v16 + 216) = 0;
  *(v16 + 176) = 0;
  *(v16 + 16) = 0x657073417065656BLL;
  *(v16 + 24) = 0xEF6F697461527463;
  *(v16 + 32) = v13;
  *(v16 + 40) = v14;
  *(v16 + 48) = 16;
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

  *(v16 + 64) = sub_1AF58844C;
  *(v16 + 72) = v13;
  sub_1AF0FB8EC(0, 0);
  *(v16 + 168) = 0;
  *(v16 + 176) = 0;

  *(v16 + 216) = 0;
  *(v0 + 48) = v16;
  qword_1EB6C2E30 = v0;
  return result;
}

uint64_t sub_1AF4BEAB4()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C3E0;
  KeyPath = swift_getKeyPath();
  sub_1AF57A3F8(0);
  v2 = swift_allocObject();
  v2[4] = sub_1AF58854C;
  v2[5] = KeyPath;
  v2[2] = sub_1AF588564;
  v2[3] = KeyPath;
  v2[6] = KeyPath;
  type metadata accessor for PropertyDescription();
  v3 = swift_allocObject();
  *(v3 + 104) = 0;
  *(v3 + 112) = 1;
  *(v3 + 128) = 0;
  *(v3 + 136) = 0;
  *(v3 + 120) = 0;
  v4 = MEMORY[0x1E69E6530];
  sub_1AF5A9240(0, &unk_1ED72F970, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
  *(v3 + 16) = 0x6F4370616D70696DLL;
  *(v3 + 24) = 0xEB00000000746E75;
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
  *(v3 + 144) = xmmword_1AFE22A20;
  *(v3 + 80) = v2;
  *(v3 + 88) = &off_1F2535378;
  *(v3 + 210) = 0;
  sub_1AF5795B0(0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1AFE431C0;
  *(v6 + 32) = 48;
  *(v6 + 40) = 0xE100000000000000;
  *(v6 + 72) = v4;
  *(v6 + 48) = 0;
  *(v3 + 160) = v6;
  swift_retain_n();

  *(v3 + 64) = sub_1AF5885C8;
  *(v3 + 72) = KeyPath;
  sub_1AF0FB8EC(0, 0);
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;

  *(v3 + 216) = 0;
  *(v0 + 32) = v3;
  qword_1EB6C2E38 = v0;
  return result;
}

uint64_t sub_1AF4BED88()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE550E0;
  KeyPath = swift_getKeyPath();
  v2 = &type metadata for TextureFallback;
  sub_1AF5A9240(0, &qword_1EB63A900, &type metadata for TextureFallback, type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF588698;
  v3[5] = KeyPath;
  v3[2] = sub_1AF5886C4;
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
  *(v4 + 16) = 0x6B6361626C6C6166;
  *(v4 + 24) = 0xE800000000000000;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = &type metadata for TextureFallback;
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

  *(v4 + 64) = sub_1AF588720;
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
  v10[4] = sub_1AF588760;
  v10[5] = v8;
  v10[2] = sub_1AF58879C;
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
  *(v11 + 16) = 0x726F706D65547369;
  *(v11 + 24) = 0xEA00000000006C61;
  *(v11 + 32) = v8;
  *(v11 + 40) = v9;
  *(v11 + 48) = 1;
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

  *(v11 + 64) = sub_1AF5887F8;
  *(v11 + 72) = v8;
  sub_1AF0FB8EC(0, 0);
  *(v11 + 168) = 0;
  *(v11 + 176) = 0;

  *(v11 + 216) = 0;
  *(v0 + 40) = v11;
  qword_1EB6C2E40 = v0;
  return result;
}

uint64_t sub_1AF4BF2C4()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE551A0;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6370];
  sub_1AF5A9240(0, &qword_1ED722B80, MEMORY[0x1E69E6370], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF588928;
  v3[5] = KeyPath;
  v3[2] = sub_1AF588954;
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
  *(v4 + 16) = 0x65746172656E6567;
  *(v4 + 24) = 0xEF7370616D70694DLL;
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

  *(v4 + 64) = sub_1AF5889B0;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0, 0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  v8 = swift_getKeyPath();
  v9 = swift_allocObject();
  v9[4] = sub_1AF5AA10C;
  v9[5] = v8;
  v9[2] = sub_1AF5A9BEC;
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
  *(v10 + 16) = 0x70616D65627563;
  *(v10 + 24) = 0xE700000000000000;
  *(v10 + 32) = v8;
  *(v10 + 40) = v2;
  *(v10 + 48) = 0;
  *(v10 + 56) = 1;
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

  *(v10 + 64) = sub_1AF5A9750;
  *(v10 + 72) = v8;
  sub_1AF0FB8EC(0, 0);
  *(v10 + 168) = 0;
  *(v10 + 176) = 0;

  *(v10 + 216) = 0;
  *(v0 + 40) = v10;
  v13 = swift_getKeyPath();
  v14 = swift_allocObject();
  v14[4] = sub_1AF5AA10C;
  v14[5] = v13;
  v14[2] = sub_1AF5A9BEC;
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
  *(v15 + 16) = 1111970419;
  *(v15 + 24) = 0xE400000000000000;
  *(v15 + 32) = v13;
  *(v15 + 40) = v2;
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

  *(v15 + 64) = sub_1AF5A9750;
  *(v15 + 72) = v13;
  sub_1AF0FB8EC(0, 0);
  *(v15 + 168) = 0;
  *(v15 + 176) = 0;

  *(v15 + 216) = 0;
  *(v0 + 48) = v15;
  v18 = swift_getKeyPath();
  v19 = swift_allocObject();
  v19[4] = sub_1AF5AA10C;
  v19[5] = v18;
  v19[2] = sub_1AF5A9BEC;
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
  strcpy((v20 + 16), "unpremultiply");
  *(v20 + 30) = -4864;
  *(v20 + 32) = v18;
  *(v20 + 40) = v2;
  *(v20 + 48) = 0;
  *(v20 + 56) = 1;
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

  *(v20 + 64) = sub_1AF5A9750;
  *(v20 + 72) = v18;
  sub_1AF0FB8EC(0, 0);
  *(v20 + 168) = 0;
  *(v20 + 176) = 0;

  *(v20 + 216) = 0;
  *(v0 + 56) = v20;
  v23 = swift_getKeyPath();
  v24 = swift_allocObject();
  v24[4] = sub_1AF5AA10C;
  v24[5] = v23;
  v24[2] = sub_1AF5A9BEC;
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
  *(v25 + 16) = 0x6C417261656E696CLL;
  *(v25 + 24) = 0xEB00000000616870;
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

  *(v25 + 64) = sub_1AF5A9750;
  *(v25 + 72) = v23;
  sub_1AF0FB8EC(0, 0);
  *(v25 + 168) = 0;
  *(v25 + 176) = 0;

  *(v25 + 216) = 0;
  *(v0 + 64) = v25;
  v28 = swift_getKeyPath();
  v29 = swift_allocObject();
  *(v29 + 216) = 0;
  *(v29 + 80) = 0;
  *(v29 + 88) = 0;
  *(v29 + 128) = 0;
  *(v29 + 136) = 0;
  *(v29 + 120) = 0;
  strcpy((v29 + 16), "CPU sampling");
  *(v29 + 29) = 0;
  *(v29 + 30) = -5120;
  v30 = MEMORY[0x1E69E73E0];
  *(v29 + 32) = v28;
  *(v29 + 40) = v30;
  *(v29 + 48) = 0;
  *(v29 + 56) = 1;
  *(v29 + 58) = 4;
  *(v29 + 184) = 0;
  *(v29 + 188) = 1;
  *(v29 + 192) = 0;
  *(v29 + 196) = 1;
  *(v29 + 200) = 0x1000100000000;
  *(v29 + 208) = 1;
  *(v29 + 64) = 0;
  *(v29 + 72) = 0;
  *(v29 + 210) = 4;
  *(v29 + 144) = xmmword_1AFE22A20;
  *(v29 + 168) = 0;
  *(v29 + 176) = 0;
  v31 = MEMORY[0x1E69E7CC0];
  *(v29 + 160) = MEMORY[0x1E69E7CC0];
  *(v29 + 96) = 0;
  *(v29 + 104) = 2040;
  *(v29 + 112) = 0;
  *(v0 + 72) = v29;
  v32 = swift_getKeyPath();
  v33 = swift_allocObject();
  v33[4] = sub_1AF5AA10C;
  v33[5] = v32;
  v33[2] = sub_1AF5A9BEC;
  v33[3] = v32;
  v33[6] = v32;
  v34 = swift_allocObject();
  *(v34 + 112) = 1;
  *(v34 + 128) = 0;
  *(v34 + 136) = 0;
  *(v34 + 120) = 0;
  *(v34 + 160) = v31;
  *(v34 + 168) = 0;
  *(v34 + 216) = 0;
  *(v34 + 176) = 0;
  *(v34 + 16) = 0x6361667275534F49;
  *(v34 + 24) = 0xE900000000000065;
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
  if (v5)
  {
    v2 = (*(v5 + 8))();
  }

  v35 = swift_conformsToProtocol2();
  if (v35 && v2)
  {
    *(v34 + 160) = (*(v35 + 8))(v2, v35);
  }

  *(v34 + 64) = sub_1AF5A9750;
  *(v34 + 72) = v32;
  sub_1AF0FB8EC(0, 0);
  *(v34 + 168) = 0;
  *(v34 + 176) = 0;

  *(v34 + 216) = 0;
  *(v0 + 80) = v34;
  qword_1EB6C2E48 = v0;
  return result;
}

uint64_t sub_1AF4BFE8C(uint64_t result)
{
  v2 = *v1;
  v3 = *v1 & 0x60;
  if (result)
  {
    if (v3 == 96)
    {
      return result;
    }

    v4 = v2 | 0x60;
  }

  else
  {
    if (!v3)
    {
      return result;
    }

    v4 = v2 & 0xFFFFFFFFFFFFFF9FLL;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AF4BFFB0(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF3C8();
  sub_1AF448018(v8, v9);
  if (a4)
  {
    sub_1AFDFEC28();
    if (!v4)
    {
      v10 = a2;
      sub_1AF448018(v8, v9);
      sub_1AF480018();
      sub_1AFDFEC38();
    }
  }

  else
  {
    sub_1AFDFEC28();
    if (!v4)
    {
      sub_1AF448018(v8, v9);
      sub_1AFDFEBE8();
    }
  }

  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v8);
}

uint64_t sub_1AF4C00E8@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1AF598B0C(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6 & 1;
  }

  return result;
}

uint64_t sub_1AF4C013C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  if (a1[2])
  {
    if (v3 == v4)
    {
      return *(a2 + 16);
    }

    else
    {
      return 0;
    }
  }

  else if (a2[2])
  {
    return 0;
  }

  else
  {
    v6 = a1[1];
    if (v3 == v4 && v6 == a2[1])
    {
      return 1;
    }

    else
    {
      return sub_1AFDFEE28();
    }
  }
}

uint64_t sub_1AF4C0194@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 16);
  if (v4 == 1)
  {
    v9[3] = &type metadata for Entity;
    v9[4] = &off_1F2535EA8;
    v9[0] = v3;
    v5 = sub_1AF441150(v9, &type metadata for Entity);
    v8[3] = &type metadata for Entity;
    v8[4] = &off_1F2535EA8;
    v6 = sub_1AF585714(v8);
    *v6 = sub_1AF6C97E0(*v5);
    sub_1AF4498F4(0, &qword_1ED722510, &protocol descriptor for ReplicationRemappable, 1);
    swift_dynamicCast();
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v9);
    result = 0;
    v3 = v9[5];
  }

  else
  {
  }

  *a1 = v3;
  *(a1 + 8) = result;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_1AF4C028C()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE551C0;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6530];
  sub_1AF5A9240(0, &qword_1ED722B68, MEMORY[0x1E69E6530], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF588A50;
  v3[5] = KeyPath;
  v3[2] = sub_1AF588A84;
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
  *(v4 + 16) = 0x726550656D617266;
  *(v4 + 24) = 0xEB00000000776F52;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = v2;
  *(v4 + 48) = 0;
  *(v4 + 56) = 0;
  *(v4 + 58) = 0;
  *(v4 + 184) = 1065353216;
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

  *(v4 + 64) = sub_1AF588AE0;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0, 0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  v9 = swift_getKeyPath();
  v10 = swift_allocObject();
  v10[4] = sub_1AF5AA308;
  v10[5] = v9;
  v10[2] = sub_1AF5A9BF0;
  v10[3] = v9;
  v10[6] = v9;
  v11 = swift_allocObject();
  *(v11 + 112) = 1;
  *(v11 + 128) = 0;
  *(v11 + 136) = 0;
  *(v11 + 120) = 0;
  *(v11 + 160) = v5;
  *(v11 + 168) = 0;
  *(v11 + 216) = 0;
  *(v11 + 176) = 0;
  strcpy((v11 + 16), "framePerColumn");
  *(v11 + 31) = -18;
  *(v11 + 32) = v9;
  *(v11 + 40) = v2;
  *(v11 + 48) = 8;
  *(v11 + 56) = 0;
  *(v11 + 58) = 0;
  *(v11 + 184) = 1065353216;
  *(v11 + 188) = 0;
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

  *(v11 + 64) = sub_1AF5A9754;
  *(v11 + 72) = v9;
  sub_1AF0FB8EC(0, 0);
  *(v11 + 168) = 0;
  *(v11 + 176) = 0;

  *(v11 + 216) = 0;
  *(v0 + 40) = v11;
  v14 = swift_getKeyPath();
  sub_1AF5795B0(0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1AFE431C0;
  *(v15 + 32) = 13366;
  *(v15 + 40) = 0xE200000000000000;
  *(v15 + 72) = v2;
  *(v15 + 48) = 64;
  sub_1AF57A3F8(0);
  v16 = swift_allocObject();
  v16[4] = sub_1AF588B20;
  v16[5] = v14;
  v16[2] = sub_1AF588B38;
  v16[3] = v14;
  v16[6] = v14;
  v17 = swift_allocObject();
  *(v17 + 104) = 0;
  *(v17 + 112) = 1;
  *(v17 + 128) = 0;
  *(v17 + 136) = 0;
  *(v17 + 120) = 0;
  *(v17 + 160) = v5;
  *(v17 + 216) = 0;
  sub_1AF5A9240(0, &unk_1ED72F970, v2, MEMORY[0x1E69E6720]);
  *(v17 + 168) = 0;
  *(v17 + 176) = 0;
  *(v17 + 16) = 0x756F43656D617266;
  *(v17 + 24) = 0xEA0000000000746ELL;
  *(v17 + 32) = v14;
  *(v17 + 40) = v18;
  *(v17 + 48) = 16;
  *(v17 + 56) = 0;
  *(v17 + 58) = 0;
  *(v17 + 184) = 1065353216;
  *(v17 + 188) = 0;
  *(v17 + 192) = 0;
  *(v17 + 196) = 1;
  *(v17 + 200) = 0x1000100000000;
  *(v17 + 208) = 1;
  *(v17 + 64) = 0;
  *(v17 + 72) = 0;
  *(v17 + 96) = 0;
  *(v17 + 144) = xmmword_1AFE22A20;
  *(v17 + 80) = v16;
  *(v17 + 88) = &off_1F2535378;
  *(v17 + 210) = 0;
  v19 = *(v15 + 16);
  swift_retain_n();
  if (!v19)
  {

    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1AFE431C0;
    *(v15 + 32) = 48;
    *(v15 + 40) = 0xE100000000000000;
    *(v15 + 72) = v2;
    *(v15 + 48) = 0;
  }

  *(v17 + 160) = v15;
  v20 = MEMORY[0x1E69E7CC0];

  *(v17 + 64) = sub_1AF588B9C;
  *(v17 + 72) = v14;
  sub_1AF0FB8EC(0, 0);
  *(v17 + 168) = 0;
  *(v17 + 176) = 0;

  *(v17 + 216) = 0;
  *(v0 + 48) = v17;
  v21 = swift_getKeyPath();
  v22 = MEMORY[0x1E69E6370];
  sub_1AF5A9240(0, &qword_1ED722B80, MEMORY[0x1E69E6370], type metadata accessor for EntityGetSet);
  v23 = swift_allocObject();
  v23[4] = sub_1AF588BE0;
  v23[5] = v21;
  v23[2] = sub_1AF588C0C;
  v23[3] = v21;
  v23[6] = v21;
  v24 = swift_allocObject();
  *(v24 + 112) = 1;
  *(v24 + 128) = 0;
  *(v24 + 136) = 0;
  *(v24 + 120) = 0;
  *(v24 + 160) = v20;
  *(v24 + 168) = 0;
  *(v24 + 216) = 0;
  *(v24 + 176) = 0;
  strcpy((v24 + 16), "useTexture3D");
  *(v24 + 29) = 0;
  *(v24 + 30) = -5120;
  *(v24 + 32) = v21;
  *(v24 + 40) = v22;
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
    v26 = (*(v25 + 8))();
  }

  else
  {
    v26 = v22;
  }

  v27 = swift_conformsToProtocol2();
  if (v27 && v26)
  {
    *(v24 + 160) = (*(v27 + 8))(v26, v27);
  }

  *(v24 + 64) = sub_1AF588C68;
  *(v24 + 72) = v21;
  sub_1AF0FB8EC(0, 0);
  *(v24 + 168) = 0;
  *(v24 + 176) = 0;

  *(v24 + 216) = 0;
  *(v0 + 56) = v24;
  v28 = swift_getKeyPath();
  v29 = swift_allocObject();
  v29[4] = sub_1AF5AA110;
  v29[5] = v28;
  v29[2] = sub_1AF5A9BF4;
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
  *(v30 + 16) = 0x7574786554657375;
  *(v30 + 24) = 0xEF79617272416572;
  *(v30 + 32) = v28;
  *(v30 + 40) = v22;
  *(v30 + 48) = 0;
  *(v30 + 56) = 1;
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
  if (v25)
  {
    v22 = (*(v25 + 8))();
  }

  v31 = swift_conformsToProtocol2();
  if (v31 && v22)
  {
    *(v30 + 160) = (*(v31 + 8))(v22, v31);
  }

  *(v30 + 64) = sub_1AF5A9758;
  *(v30 + 72) = v28;
  sub_1AF0FB8EC(0, 0);
  *(v30 + 168) = 0;
  *(v30 + 176) = 0;

  *(v30 + 216) = 0;
  *(v0 + 64) = v30;
  qword_1EB6C2E50 = v0;
  return result;
}

uint64_t sub_1AF4C0D78()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE550E0;
  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  v3 = MEMORY[0x1E69E7360];
  sub_1AF5A9240(0, &unk_1EB634340, MEMORY[0x1E69E7360], type metadata accessor for EntityGetSet);
  v4 = swift_allocObject();
  v4[4] = sub_1AF588DF4;
  v4[5] = v2;
  v4[2] = sub_1AF588E28;
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
  strcpy((v5 + 16), "channelIndex");
  *(v5 + 29) = 0;
  *(v5 + 30) = -5120;
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

  *(v5 + 64) = sub_1AF588E84;
  *(v5 + 72) = v2;
  sub_1AF0FB8EC(0, 0);
  *(v5 + 168) = 0;
  *(v5 + 176) = 0;

  *(v5 + 216) = 0;
  v9 = &type metadata for TextureChannel;
  sub_1AF5A9240(0, &qword_1EB632FA0, &type metadata for TextureChannel, type metadata accessor for EntityGetSet);
  v10 = swift_allocObject();
  v10[4] = sub_1AF588EC4;
  v10[5] = KeyPath;
  v10[2] = sub_1AF588EF0;
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
  *(v11 + 16) = 0x6C656E6E616863;
  *(v11 + 24) = 0xE700000000000000;
  *(v11 + 32) = KeyPath;
  *(v11 + 40) = &type metadata for TextureChannel;
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

  *(v11 + 64) = sub_1AF588F4C;
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
  v16[4] = sub_1AF588F8C;
  v16[5] = v14;
  v16[2] = sub_1AF588FC0;
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
  *(v17 + 16) = 0x6C6F687365726874;
  *(v17 + 24) = 0xE900000000000064;
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

  *(v17 + 64) = sub_1AF58901C;
  *(v17 + 72) = v14;
  sub_1AF0FB8EC(0, 0);
  *(v17 + 168) = 0;
  *(v17 + 176) = 0;

  *(v17 + 216) = 0;
  *(v0 + 40) = v17;
  qword_1EB6C2E58 = v0;
  return result;
}

uint64_t sub_1AF4C14CC()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE551C0;
  KeyPath = swift_getKeyPath();
  type metadata accessor for PropertyDescription();
  v2 = swift_allocObject();
  *(v2 + 216) = 0;
  *(v2 + 80) = 0;
  *(v2 + 88) = 0;
  *(v2 + 128) = 0;
  *(v2 + 136) = 0;
  *(v2 + 120) = 0;
  *(v2 + 16) = 1701080941;
  *(v2 + 24) = 0xE400000000000000;
  v3 = MEMORY[0x1E69E73E0];
  *(v2 + 32) = KeyPath;
  *(v2 + 40) = v3;
  *(v2 + 48) = 0;
  *(v2 + 56) = 1;
  *(v2 + 58) = 4;
  *(v2 + 184) = 0;
  *(v2 + 188) = 1;
  *(v2 + 192) = 0;
  *(v2 + 196) = 1;
  *(v2 + 200) = 0x1000100000000;
  *(v2 + 208) = 1;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
  *(v2 + 210) = 4;
  *(v2 + 144) = xmmword_1AFE22A20;
  *(v2 + 176) = 0;
  v4 = MEMORY[0x1E69E7CC0];
  *(v2 + 160) = MEMORY[0x1E69E7CC0];
  *(v2 + 168) = 0;
  *(v2 + 96) = 0;
  *(v2 + 104) = 2040;
  *(v2 + 112) = 0;
  *(v0 + 32) = v2;
  v5 = swift_getKeyPath();
  v6 = MEMORY[0x1E69E6370];
  sub_1AF5A9240(0, &qword_1ED722B80, MEMORY[0x1E69E6370], type metadata accessor for EntityGetSet);
  v7 = swift_allocObject();
  v7[4] = sub_1AF58917C;
  v7[5] = v5;
  v7[2] = sub_1AF5891A8;
  v7[3] = v5;
  v7[6] = v5;
  v8 = swift_allocObject();
  *(v8 + 112) = 1;
  *(v8 + 128) = 0;
  *(v8 + 136) = 0;
  *(v8 + 120) = 0;
  *(v8 + 160) = v4;
  *(v8 + 168) = 0;
  *(v8 + 216) = 0;
  *(v8 + 176) = 0;
  *(v8 + 16) = 0x2064616F6C657270;
  *(v8 + 24) = 0xEB00000000555043;
  *(v8 + 32) = v5;
  *(v8 + 40) = v6;
  *(v8 + 48) = 0;
  *(v8 + 56) = 1;
  *(v8 + 58) = 0;
  *(v8 + 184) = 0;
  *(v8 + 188) = 1;
  *(v8 + 192) = 0;
  *(v8 + 196) = 1;
  *(v8 + 200) = 0x1000100000000;
  *(v8 + 208) = 1;
  *(v8 + 96) = 0;
  *(v8 + 104) = 0;
  *(v8 + 64) = 0;
  *(v8 + 72) = 0;
  *(v8 + 144) = xmmword_1AFE22A20;
  *(v8 + 80) = v7;
  *(v8 + 88) = &off_1F2535378;
  *(v8 + 210) = 0;
  v9 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v9)
  {
    v10 = (*(v9 + 8))();
  }

  else
  {
    v10 = v6;
  }

  v11 = swift_conformsToProtocol2();
  if (v11 && v10)
  {
    *(v8 + 160) = (*(v11 + 8))(v10, v11);
  }

  *(v8 + 64) = sub_1AF589204;
  *(v8 + 72) = v5;
  sub_1AF0FB8EC(0, 0);
  *(v8 + 168) = 0;
  *(v8 + 176) = 0;

  *(v8 + 216) = 0;
  *(v0 + 40) = v8;
  v12 = swift_getKeyPath();
  v13 = swift_allocObject();
  v13[4] = sub_1AF5AA118;
  v13[5] = v12;
  v13[2] = sub_1AF5A9C04;
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
  *(v14 + 16) = 0x2064616F6C657270;
  *(v14 + 24) = 0xEB00000000555047;
  *(v14 + 32) = v12;
  *(v14 + 40) = v6;
  *(v14 + 48) = 0;
  *(v14 + 56) = 1;
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
  if (v9)
  {
    v15 = (*(v9 + 8))();
  }

  else
  {
    v15 = v6;
  }

  v16 = swift_conformsToProtocol2();
  if (v16 && v15)
  {
    *(v14 + 160) = (*(v16 + 8))(v15, v16);
  }

  *(v14 + 64) = sub_1AF5A9760;
  *(v14 + 72) = v12;
  sub_1AF0FB8EC(0, 0);
  *(v14 + 168) = 0;
  *(v14 + 176) = 0;

  *(v14 + 216) = 0;
  *(v0 + 48) = v14;
  v17 = swift_getKeyPath();
  v18 = &type metadata for TextureFallback;
  sub_1AF5A9240(0, &qword_1EB63A900, &type metadata for TextureFallback, type metadata accessor for EntityGetSet);
  v19 = swift_allocObject();
  v19[4] = sub_1AF589244;
  v19[5] = v17;
  v19[2] = sub_1AF589270;
  v19[3] = v17;
  v19[6] = v17;
  v20 = swift_allocObject();
  *(v20 + 112) = 1;
  *(v20 + 128) = 0;
  *(v20 + 136) = 0;
  *(v20 + 120) = 0;
  *(v20 + 160) = MEMORY[0x1E69E7CC0];
  *(v20 + 168) = 0;
  *(v20 + 216) = 0;
  *(v20 + 176) = 0;
  *(v20 + 16) = 0x6B6361626C6C6166;
  *(v20 + 24) = 0xE800000000000000;
  *(v20 + 32) = v17;
  *(v20 + 40) = &type metadata for TextureFallback;
  *(v20 + 48) = 2;
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

  *(v20 + 64) = sub_1AF5892CC;
  *(v20 + 72) = v17;
  sub_1AF0FB8EC(0, 0);
  *(v20 + 168) = 0;
  *(v20 + 176) = 0;

  *(v20 + 216) = 0;
  *(v0 + 56) = v20;
  v23 = swift_getKeyPath();
  v24 = swift_allocObject();
  v24[4] = sub_1AF5AA118;
  v24[5] = v23;
  v24[2] = sub_1AF5A9C04;
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
  strcpy((v25 + 16), "asynchronous");
  *(v25 + 29) = 0;
  *(v25 + 30) = -5120;
  *(v25 + 32) = v23;
  *(v25 + 40) = v6;
  *(v25 + 48) = 3;
  *(v25 + 56) = 0;
  *(v25 + 58) = 4;
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
  *(v25 + 210) = 4;
  swift_retain_n();
  if (v9)
  {
    v6 = (*(v9 + 8))();
  }

  v26 = swift_conformsToProtocol2();
  if (v26 && v6)
  {
    *(v25 + 160) = (*(v26 + 8))(v6, v26);
  }

  *(v25 + 64) = sub_1AF5A9760;
  *(v25 + 72) = v23;
  sub_1AF0FB8EC(0, 0);
  *(v25 + 168) = 0;
  *(v25 + 176) = 0;

  *(v25 + 216) = 0;
  *(v0 + 64) = v25;
  qword_1EB6C2E60 = v0;
  return result;
}

uint64_t sub_1AF4C1E58()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE55130;
  KeyPath = swift_getKeyPath();
  v2 = &type metadata for Entity;
  sub_1AF5A9240(0, &unk_1EB6338D8, &type metadata for Entity, type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF5893CC;
  v3[5] = KeyPath;
  v3[2] = sub_1AF589400;
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

  *(v4 + 64) = sub_1AF58945C;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0, 0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  v7 = swift_getKeyPath();
  v8 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v9 = swift_allocObject();
  v9[4] = sub_1AF58949C;
  v9[5] = v7;
  v9[2] = sub_1AF5894D0;
  v9[3] = v7;
  v9[6] = v7;
  v10 = swift_allocObject();
  *(v10 + 112) = 1;
  *(v10 + 128) = 0;
  *(v10 + 136) = 0;
  *(v10 + 120) = 0;
  *(v10 + 168) = 0;
  *(v10 + 160) = MEMORY[0x1E69E7CC0];
  *(v10 + 216) = 0;
  *(v10 + 176) = 0;
  *(v10 + 16) = 0x6C6F687365726874;
  *(v10 + 24) = 0xE900000000000064;
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
  *(v10 + 64) = 0;
  *(v10 + 72) = 0;
  *(v10 + 96) = 0;
  *(v10 + 104) = 0;
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

  *(v10 + 64) = sub_1AF58952C;
  *(v10 + 72) = v7;
  sub_1AF0FB8EC(0, 0);
  *(v10 + 168) = 0;
  *(v10 + 176) = 0;

  *(v10 + 216) = 0;
  *(v0 + 40) = v10;
  v13 = swift_getKeyPath();
  v14 = MEMORY[0x1E69E6530];
  sub_1AF5A9240(0, &qword_1ED722B68, MEMORY[0x1E69E6530], type metadata accessor for EntityGetSet);
  v15 = swift_allocObject();
  v15[4] = sub_1AF5893CC;
  v15[5] = v13;
  v15[2] = sub_1AF58956C;
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
  strcpy((v16 + 16), "downsampling");
  *(v16 + 29) = 0;
  *(v16 + 30) = -5120;
  *(v16 + 32) = v13;
  *(v16 + 40) = v14;
  *(v16 + 48) = 16;
  *(v16 + 56) = 0;
  *(v16 + 58) = 0;
  *(v16 + 184) = 1065353216;
  *(v16 + 188) = 0;
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

  *(v16 + 64) = sub_1AF5895C8;
  *(v16 + 72) = v13;
  sub_1AF0FB8EC(0, 0);
  *(v16 + 168) = 0;
  *(v16 + 176) = 0;

  *(v16 + 216) = 0;
  *(v0 + 48) = v16;
  qword_1EB6C2E68 = v0;
  return result;
}

uint64_t sub_1AF4C2580()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C3E0;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6530];
  sub_1AF5A9240(0, &qword_1ED722B68, MEMORY[0x1E69E6530], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF589728;
  v3[5] = KeyPath;
  v3[2] = sub_1AF58976C;
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
  *(v4 + 16) = 0x44496E77617073;
  *(v4 + 24) = 0xE700000000000000;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = v2;
  *(v4 + 48) = 0;
  *(v4 + 56) = 0;
  *(v4 + 58) = 0;
  *(v4 + 184) = 0;
  *(v4 + 188) = 0;
  *(v4 + 192) = 1096810496;
  *(v4 + 196) = 0;
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

  *(v4 + 64) = sub_1AF5897C8;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0, 0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  qword_1EB6C2940 = v0;
  return result;
}

uint64_t sub_1AF4C28B8()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE550E0;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF589868;
  v3[5] = KeyPath;
  v3[2] = sub_1AF5898AC;
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
  strcpy((v4 + 16), "rateOverTime");
  *(v4 + 29) = 0;
  *(v4 + 30) = -5120;
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
    v2 = (*(v5 + 8))();
  }

  v6 = swift_conformsToProtocol2();
  if (v6 && v2)
  {
    *(v4 + 160) = (*(v6 + 8))(v2, v6);
  }

  *(v4 + 64) = sub_1AF589908;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0, 0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  result = sub_1AF577370(1016, 0x6E6F697461727564, 0xE800000000000000, &type metadata for ParticleSpawnDuration, &off_1F2567780, 0x6E6F697461727564, 0xE800000000000000);
  *(v0 + 40) = result;
  qword_1EB6C2A60 = v0;
  return result;
}

uint64_t sub_1AF4C2C38()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE550F0;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF5899A8;
  v3[5] = KeyPath;
  v3[2] = sub_1AF5899DC;
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
  *(v4 + 16) = 0xD000000000000010;
  *(v4 + 24) = 0x80000001AFF24410;
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

  *(v4 + 64) = sub_1AF589A38;
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
  v10[4] = sub_1AF589A78;
  v10[5] = v8;
  v10[2] = sub_1AF589AA4;
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
  *(v11 + 16) = 0x776F6C6C6F66;
  *(v11 + 24) = 0xE600000000000000;
  *(v11 + 32) = v8;
  *(v11 + 40) = v9;
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
  v12 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v12)
  {
    v13 = (*(v12 + 8))();
  }

  else
  {
    v13 = v9;
  }

  v14 = swift_conformsToProtocol2();
  if (v14 && v13)
  {
    *(v11 + 160) = (*(v14 + 8))(v13, v14);
  }

  *(v11 + 64) = sub_1AF589B00;
  *(v11 + 72) = v8;
  sub_1AF0FB8EC(0, 0);
  *(v11 + 168) = 0;
  *(v11 + 176) = 0;

  *(v11 + 216) = 0;
  *(v0 + 40) = v11;
  v15 = swift_getKeyPath();
  v16 = swift_allocObject();
  v16[4] = sub_1AF5AA120;
  v16[5] = v15;
  v16[2] = sub_1AF5A9C20;
  v16[3] = v15;
  v16[6] = v15;
  v17 = swift_allocObject();
  *(v17 + 112) = 1;
  *(v17 + 128) = 0;
  *(v17 + 136) = 0;
  *(v17 + 120) = 0;
  *(v17 + 160) = MEMORY[0x1E69E7CC0];
  *(v17 + 168) = 0;
  *(v17 + 216) = 0;
  *(v17 + 176) = 0;
  *(v17 + 16) = 0x7261656E696CLL;
  *(v17 + 24) = 0xE600000000000000;
  *(v17 + 32) = v15;
  *(v17 + 40) = v9;
  *(v17 + 48) = 5;
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
  swift_retain_n();
  if (v12)
  {
    v9 = (*(v12 + 8))();
  }

  v18 = swift_conformsToProtocol2();
  if (v18 && v9)
  {
    *(v17 + 160) = (*(v18 + 8))(v9, v18);
  }

  *(v17 + 64) = sub_1AF5A9764;
  *(v17 + 72) = v15;
  sub_1AF0FB8EC(0, 0);
  *(v17 + 168) = 0;
  *(v17 + 176) = 0;

  *(v17 + 216) = 0;
  *(v0 + 48) = v17;
  result = sub_1AF577370(1016, 0x6E6F697461727564, 0xE800000000000000, &type metadata for ParticleSpawnDuration, &off_1F2567780, 0x6E6F697461727564, 0xE800000000000000);
  *(v0 + 56) = result;
  qword_1EB6C28D0 = v0;
  return result;
}

uint64_t sub_1AF4C32D4()
{
  if (qword_1EB632C68 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1AF4C33C4()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE55130;
  KeyPath = swift_getKeyPath();
  sub_1AF57F2F4(0);
  v2 = swift_allocObject();
  v2[4] = sub_1AF589C00;
  v2[5] = KeyPath;
  v2[2] = sub_1AF589C44;
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
  strcpy((v3 + 16), "rateOverTime");
  *(v3 + 29) = 0;
  *(v3 + 30) = -5120;
  *(v3 + 32) = KeyPath;
  *(v3 + 40) = v4;
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  *(v3 + 58) = 0;
  *(v3 + 184) = 0;
  *(v3 + 188) = 0;
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
  *(v3 + 64) = sub_1AF589CA0;
  *(v3 + 72) = KeyPath;
  sub_1AF0FB8EC(v10, v11);
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;

  *(v3 + 216) = 0;

  *(v0 + 32) = v3;
  v12 = swift_getKeyPath();
  v13 = swift_allocObject();
  v13[4] = sub_1AF5AA318;
  v13[5] = v12;
  v13[2] = sub_1AF5AA49C;
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
  strcpy((v14 + 16), "repeatDuration");
  *(v14 + 31) = -18;
  *(v14 + 32) = v12;
  *(v14 + 40) = v5;
  *(v14 + 48) = 8;
  *(v14 + 56) = 0;
  *(v14 + 58) = 0;
  *(v14 + 184) = 0;
  *(v14 + 188) = 0;
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
  *(v14 + 64) = sub_1AF5A9768;
  *(v14 + 72) = v12;
  sub_1AF0FB8EC(v17, v18);
  *(v14 + 168) = 0;
  *(v14 + 176) = 0;

  *(v14 + 216) = 0;

  *(v0 + 40) = v14;
  v19 = swift_getKeyPath();
  v20 = swift_allocObject();
  v20[4] = sub_1AF5AA318;
  v20[5] = v19;
  v20[2] = sub_1AF5AA49C;
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
  *(v21 + 16) = 0x6954746165706572;
  *(v21 + 24) = 0xEA0000000000656DLL;
  *(v21 + 32) = v19;
  *(v21 + 40) = v5;
  *(v21 + 48) = 16;
  *(v21 + 56) = 0;
  *(v21 + 58) = 0;
  *(v21 + 184) = 0;
  *(v21 + 188) = 0;
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
  *(v21 + 64) = sub_1AF5A9768;
  *(v21 + 72) = v19;
  sub_1AF0FB8EC(v23, v24);
  *(v21 + 168) = 0;
  *(v21 + 176) = 0;

  *(v21 + 216) = 0;

  *(v0 + 48) = v21;
  qword_1EB6C2E70 = v0;
  return result;
}

uint64_t sub_1AF4C3AB4()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C3E0;
  KeyPath = swift_getKeyPath();
  sub_1AF589DF0(0);
  v2 = swift_allocObject();
  v2[4] = sub_1AF589D78;
  v2[5] = KeyPath;
  v2[2] = sub_1AF589D90;
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
  sub_1AF589E74(0, &qword_1ED72F950, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
  v5 = v4;
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;
  *(v3 + 16) = 0x746E756F63;
  *(v3 + 24) = 0xE500000000000000;
  *(v3 + 32) = KeyPath;
  *(v3 + 40) = v4;
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  *(v3 + 58) = 512;
  *(v3 + 184) = 0;
  *(v3 + 188) = 0;
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
  *(v3 + 210) = 512;
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
  *(v3 + 64) = sub_1AF589EC8;
  *(v3 + 72) = KeyPath;
  sub_1AF0FB8EC(v8, v9);
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;

  *(v3 + 216) = 0;

  *(v0 + 32) = v3;
  qword_1EB6C2A70 = v0;
  return result;
}

uint64_t sub_1AF4C3DFC()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE550E0;
  KeyPath = swift_getKeyPath();
  sub_1AF589DF0(0);
  v2 = swift_allocObject();
  v2[4] = sub_1AF58A048;
  v2[5] = KeyPath;
  v2[2] = sub_1AF58A060;
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
  sub_1AF589E74(0, &qword_1ED72F950, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
  v6 = v5;
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;
  *(v3 + 16) = 0x746E756F63;
  *(v3 + 24) = 0xE500000000000000;
  *(v3 + 32) = KeyPath;
  *(v3 + 40) = v5;
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  *(v3 + 58) = 0;
  *(v3 + 184) = 0;
  *(v3 + 188) = 0;
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
  *(v3 + 64) = sub_1AF58A0C0;
  *(v3 + 72) = KeyPath;
  sub_1AF0FB8EC(v9, v10);
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;

  *(v3 + 216) = 0;

  *(v0 + 32) = v3;
  v11 = swift_getKeyPath();
  sub_1AF57F2F4(0);
  v12 = swift_allocObject();
  v12[4] = sub_1AF58A104;
  v12[5] = v11;
  v12[2] = sub_1AF58A138;
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
  sub_1AF589E74(0, &qword_1ED72F958, MEMORY[0x1E69E6448], MEMORY[0x1E69E6468], MEMORY[0x1E69E66A8]);
  v15 = v14;
  *(v13 + 168) = 0;
  *(v13 + 176) = 0;
  *(v13 + 16) = 0x6954746165706572;
  *(v13 + 24) = 0xEA0000000000656DLL;
  *(v13 + 32) = v11;
  *(v13 + 40) = v14;
  *(v13 + 48) = 16;
  *(v13 + 56) = 0;
  *(v13 + 58) = 0;
  *(v13 + 184) = 0;
  *(v13 + 188) = 0;
  *(v13 + 192) = 0;
  *(v13 + 196) = 1;
  *(v13 + 200) = 0x1000100000000;
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
  *(v13 + 64) = sub_1AF58A194;
  *(v13 + 72) = v11;
  sub_1AF0FB8EC(v18, v19);
  *(v13 + 168) = 0;
  *(v13 + 176) = 0;

  *(v13 + 216) = 0;

  *(v0 + 40) = v13;
  qword_1EB6C2A58 = v0;
  return result;
}

uint64_t sub_1AF4C4350()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C3E0;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF58A33C;
  v3[5] = KeyPath;
  v3[2] = sub_1AF58A380;
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
  *(v4 + 16) = 0x6E6F697461727564;
  *(v4 + 24) = 0xE800000000000000;
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
    v2 = (*(v5 + 8))();
  }

  v6 = swift_conformsToProtocol2();
  if (v6 && v2)
  {
    *(v4 + 160) = (*(v6 + 8))(v2, v6);
  }

  *(v4 + 64) = sub_1AF58A3DC;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0, 0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  qword_1EB6C2738 = v0;
  return result;
}

uint64_t sub_1AF4C4690()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C3E0;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF58A47C;
  v3[5] = KeyPath;
  v3[2] = sub_1AF58A4C0;
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
  *(v4 + 16) = 0x79616C6564;
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

  *(v4 + 64) = sub_1AF58A51C;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0, 0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  qword_1EB6C2768 = v0;
  return result;
}

uint64_t sub_1AF4C49C8()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C3E0;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6530];
  sub_1AF5A9240(0, &qword_1ED722B68, MEMORY[0x1E69E6530], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF58A5BC;
  v3[5] = KeyPath;
  v3[2] = sub_1AF58A600;
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
  *(v4 + 16) = 0x65756C6176;
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

  *(v4 + 64) = sub_1AF58A65C;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0, 0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  qword_1EB6C2A78 = v0;
  return result;
}

uint64_t sub_1AF4C4CFC()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE55180;
  KeyPath = swift_getKeyPath();
  v2 = &type metadata for Entity;
  sub_1AF5A9240(0, &unk_1EB6338D8, &type metadata for Entity, type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF58A6FC;
  v3[5] = KeyPath;
  v3[2] = sub_1AF58A730;
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
  *(v4 + 16) = 0x746E65726170;
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
  *(v4 + 64) = sub_1AF58A78C;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(v8, v9);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;

  *(v0 + 32) = v4;
  v10 = swift_getKeyPath();
  v11 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v12 = swift_allocObject();
  v12[4] = sub_1AF58A7CC;
  v12[5] = v10;
  v12[2] = sub_1AF58A800;
  v12[3] = v10;
  v12[6] = v10;
  v13 = swift_allocObject();
  *(v13 + 112) = 1;
  *(v13 + 128) = 0;
  *(v13 + 136) = 0;
  *(v13 + 120) = 0;
  *(v13 + 160) = v5;
  *(v13 + 168) = 0;
  *(v13 + 216) = 0;
  *(v13 + 176) = 0;
  *(v13 + 16) = 0x6C696261626F7270;
  *(v13 + 24) = 0xEB00000000797469;
  *(v13 + 32) = v10;
  *(v13 + 40) = v11;
  *(v13 + 48) = 8;
  *(v13 + 56) = 0;
  *(v13 + 58) = 0;
  *(v13 + 184) = 0;
  *(v13 + 188) = 0;
  *(v13 + 192) = 1065353216;
  *(v13 + 196) = 0;
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
  v56 = v14;
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

  *(v13 + 64) = sub_1AF58A85C;
  *(v13 + 72) = v10;
  sub_1AF0FB8EC(0, 0);
  *(v13 + 168) = 0;
  *(v13 + 176) = 0;

  *(v13 + 216) = 0;
  *(v0 + 40) = v13;
  v17 = swift_getKeyPath();
  v18 = MEMORY[0x1E69E6370];
  sub_1AF5A9240(0, &qword_1ED722B80, MEMORY[0x1E69E6370], type metadata accessor for EntityGetSet);
  v19 = swift_allocObject();
  v19[4] = sub_1AF58A89C;
  v19[5] = v17;
  v19[2] = sub_1AF58A8C8;
  v19[3] = v17;
  v19[6] = v17;
  v20 = swift_allocObject();
  *(v20 + 112) = 1;
  *(v20 + 128) = 0;
  *(v20 + 136) = 0;
  *(v20 + 120) = 0;
  *(v20 + 160) = v5;
  *(v20 + 168) = 0;
  *(v20 + 216) = 0;
  *(v20 + 176) = 0;
  strcpy((v20 + 16), "inheritColor");
  *(v20 + 29) = 0;
  *(v20 + 30) = -5120;
  *(v20 + 32) = v17;
  *(v20 + 40) = v18;
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
  v21 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v21)
  {
    v22 = (*(v21 + 8))();
  }

  else
  {
    v22 = v18;
  }

  v23 = swift_conformsToProtocol2();
  if (v23 && v22)
  {
    *(v20 + 160) = (*(v23 + 8))(v22, v23);
  }

  *(v20 + 64) = sub_1AF58A924;
  *(v20 + 72) = v17;
  sub_1AF0FB8EC(0, 0);
  *(v20 + 168) = 0;
  *(v20 + 176) = 0;

  *(v20 + 216) = 0;
  *(v0 + 48) = v20;
  v24 = swift_getKeyPath();
  v25 = swift_allocObject();
  v25[4] = sub_1AF5AA124;
  v25[5] = v24;
  v25[2] = sub_1AF5A9C34;
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
  *(v26 + 16) = 0x5674697265686E69;
  *(v26 + 24) = 0xEF797469636F6C65;
  *(v26 + 32) = v24;
  *(v26 + 40) = v18;
  *(v26 + 48) = 13;
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
  if (v21)
  {
    v27 = (*(v21 + 8))();
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

  *(v26 + 64) = sub_1AF5A9774;
  *(v26 + 72) = v24;
  sub_1AF0FB8EC(0, 0);
  *(v26 + 168) = 0;
  *(v26 + 176) = 0;

  *(v26 + 216) = 0;
  v57 = v0;
  *(v0 + 56) = v26;
  v29 = swift_getKeyPath();
  v30 = swift_allocObject();
  v30[4] = sub_1AF5AA124;
  v30[5] = v29;
  v30[2] = sub_1AF5A9C34;
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
  *(v31 + 16) = 0xD000000000000012;
  *(v31 + 24) = 0x80000001AFF23530;
  *(v31 + 32) = v29;
  *(v31 + 40) = v18;
  *(v31 + 48) = 14;
  *(v31 + 56) = 0;
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
  if (v21)
  {
    v32 = (*(v21 + 8))();
  }

  else
  {
    v32 = v18;
  }

  v33 = swift_conformsToProtocol2();
  if (v33 && v32)
  {
    *(v31 + 160) = (*(v33 + 8))(v32, v33);
  }

  *(v31 + 64) = sub_1AF5A9774;
  *(v31 + 72) = v29;
  sub_1AF0FB8EC(0, 0);
  *(v31 + 168) = 0;
  *(v31 + 176) = 0;

  *(v31 + 216) = 0;
  *(v0 + 64) = v31;
  v34 = swift_getKeyPath();
  v35 = swift_allocObject();
  v35[4] = sub_1AF5AA124;
  v35[5] = v34;
  v35[2] = sub_1AF5A9C34;
  v35[3] = v34;
  v35[6] = v34;
  v36 = swift_allocObject();
  *(v36 + 112) = 1;
  *(v36 + 128) = 0;
  *(v36 + 136) = 0;
  *(v36 + 120) = 0;
  *(v36 + 160) = MEMORY[0x1E69E7CC0];
  *(v36 + 168) = 0;
  *(v36 + 216) = 0;
  *(v36 + 176) = 0;
  strcpy((v36 + 16), "inheritScale");
  *(v36 + 29) = 0;
  *(v36 + 30) = -5120;
  *(v36 + 32) = v34;
  *(v36 + 40) = v18;
  *(v36 + 48) = 15;
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
  swift_retain_n();
  if (v21)
  {
    v18 = (*(v21 + 8))();
  }

  v37 = swift_conformsToProtocol2();
  v38 = MEMORY[0x1E69E7CC0];
  if (v37 && v18)
  {
    *(v36 + 160) = (*(v37 + 8))(v18, v37);
  }

  *(v36 + 64) = sub_1AF5A9774;
  *(v36 + 72) = v34;
  sub_1AF0FB8EC(0, 0);
  *(v36 + 168) = 0;
  *(v36 + 176) = 0;

  *(v36 + 216) = 0;
  *(v0 + 72) = v36;
  v39 = swift_getKeyPath();
  v40 = swift_allocObject();
  v40[4] = sub_1AF5A9450;
  v40[5] = v39;
  v40[2] = sub_1AF5A9C38;
  v40[3] = v39;
  v40[6] = v39;
  v41 = swift_allocObject();
  *(v41 + 112) = 1;
  *(v41 + 128) = 0;
  *(v41 + 136) = 0;
  *(v41 + 120) = 0;
  *(v41 + 160) = v38;
  *(v41 + 168) = 0;
  *(v41 + 216) = 0;
  *(v41 + 176) = 0;
  strcpy((v41 + 16), "velocityFactor");
  *(v41 + 31) = -18;
  *(v41 + 32) = v39;
  *(v41 + 40) = v11;
  *(v41 + 48) = 16;
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
  if (v56)
  {
    v11 = (*(v56 + 8))();
  }

  v42 = swift_conformsToProtocol2();
  if (v42 && v11)
  {
    *(v41 + 160) = (*(v42 + 8))(v11, v42);
  }

  *(v41 + 64) = sub_1AF5A9778;
  *(v41 + 72) = v39;
  sub_1AF0FB8EC(0, 0);
  *(v41 + 168) = 0;
  *(v41 + 176) = 0;

  *(v41 + 216) = 0;
  *(v0 + 80) = v41;
  v43 = swift_getKeyPath();
  v44 = swift_getKeyPath();
  v45 = MEMORY[0x1E69E7360];
  sub_1AF5A9240(0, &unk_1EB634340, MEMORY[0x1E69E7360], type metadata accessor for EntityGetSet);
  v46 = swift_allocObject();
  v46[4] = sub_1AF58A6FC;
  v46[5] = v44;
  v46[2] = sub_1AF58A964;
  v46[3] = v44;
  v46[6] = v44;
  v47 = swift_allocObject();
  *(v47 + 112) = 1;
  *(v47 + 128) = 0;
  *(v47 + 136) = 0;
  *(v47 + 120) = 0;
  *(v47 + 160) = v38;
  *(v47 + 168) = 0;
  *(v47 + 216) = 0;
  *(v47 + 176) = 0;
  *(v47 + 16) = 0x65646E4965646F6DLL;
  *(v47 + 24) = 0xE900000000000078;
  *(v47 + 32) = v44;
  *(v47 + 40) = v45;
  *(v47 + 48) = 0;
  *(v47 + 56) = 1;
  *(v47 + 58) = 0;
  *(v47 + 184) = 0;
  *(v47 + 188) = 1;
  *(v47 + 192) = 0;
  *(v47 + 196) = 1;
  *(v47 + 200) = 0x1000100000000;
  *(v47 + 208) = 1;
  *(v47 + 64) = 0;
  *(v47 + 72) = 0;
  *(v47 + 96) = 0;
  *(v47 + 104) = 0;
  *(v47 + 144) = xmmword_1AFE22A20;
  *(v47 + 80) = v46;
  *(v47 + 88) = &off_1F2535378;
  *(v47 + 210) = 0;
  v48 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v48)
  {
    v45 = (*(v48 + 8))();
  }

  v49 = swift_conformsToProtocol2();
  if (v49 && v45)
  {
    *(v47 + 160) = (*(v49 + 8))(v45, v49);
  }

  *(v47 + 64) = sub_1AF58A9C0;
  *(v47 + 72) = v44;
  sub_1AF0FB8EC(0, 0);
  *(v47 + 168) = 0;
  *(v47 + 176) = 0;

  *(v47 + 216) = 0;
  v50 = &type metadata for ParticleSubSpawn.Mode;
  sub_1AF5A9240(0, &qword_1EB63AA10, &type metadata for ParticleSubSpawn.Mode, type metadata accessor for EntityGetSet);
  v51 = swift_allocObject();
  v51[4] = sub_1AF58AA00;
  v51[5] = v43;
  v51[2] = sub_1AF58AA2C;
  v51[3] = v43;
  v51[6] = v43;
  v52 = swift_allocObject();
  *(v52 + 112) = 1;
  *(v52 + 128) = 0;
  *(v52 + 136) = 0;
  *(v52 + 120) = 0;
  *(v52 + 160) = v38;
  *(v52 + 168) = 0;
  *(v52 + 216) = 0;
  *(v52 + 176) = 0;
  *(v52 + 16) = 1701080941;
  *(v52 + 24) = 0xE400000000000000;
  *(v52 + 32) = v43;
  *(v52 + 40) = &type metadata for ParticleSubSpawn.Mode;
  *(v52 + 48) = 20;
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
  v53 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v53)
  {
    v50 = (*(v53 + 8))();
  }

  v54 = swift_conformsToProtocol2();
  if (v54 && v50)
  {
    *(v52 + 160) = (*(v54 + 8))(v50, v54);
  }

  *(v52 + 64) = sub_1AF58AA88;
  *(v52 + 72) = v43;
  sub_1AF0FB8EC(0, 0);
  *(v52 + 168) = 0;
  *(v52 + 176) = 0;

  *(v52 + 216) = v47;
  *(v57 + 88) = v52;
  qword_1EB6C2E78 = v57;
  return result;
}

uint64_t sub_1AF4C5E60(uint64_t result)
{
  v2 = result;
  if ((result & 0xFC) != 0)
  {
    v2 = 4;
  }

  *(v1 + 20) = v2;
  return result;
}

uint64_t sub_1AF4C5E9C()
{
  if (qword_1EB636E50 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1AF4C5F8C()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE551A0;
  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  v3 = MEMORY[0x1E69E7360];
  sub_1AF5A9240(0, &unk_1EB634340, MEMORY[0x1E69E7360], type metadata accessor for EntityGetSet);
  v4 = swift_allocObject();
  v4[4] = sub_1AF5AA328;
  v4[5] = v2;
  v4[2] = sub_1AF58ACD8;
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
  *(v5 + 16) = 0x646E496573696F6ELL;
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

  *(v5 + 64) = sub_1AF58AD34;
  *(v5 + 72) = v2;
  sub_1AF0FB8EC(0, 0);
  *(v5 + 168) = 0;
  *(v5 + 176) = 0;

  *(v5 + 216) = 0;
  v8 = &type metadata for NoiseKind;
  sub_1AF5A9240(0, &qword_1EB632F60, &type metadata for NoiseKind, type metadata accessor for EntityGetSet);
  v9 = swift_allocObject();
  v9[4] = sub_1AF58AD74;
  v9[5] = KeyPath;
  v9[2] = sub_1AF58ADA0;
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
  *(v10 + 16) = 0x6573696F6ELL;
  *(v10 + 24) = 0xE500000000000000;
  *(v10 + 32) = KeyPath;
  *(v10 + 40) = &type metadata for NoiseKind;
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

  *(v10 + 64) = sub_1AF58ADFC;
  *(v10 + 72) = KeyPath;
  sub_1AF0FB8EC(0, 0);
  *(v10 + 168) = 0;
  *(v10 + 176) = 0;

  *(v10 + 216) = v5;
  *(v0 + 32) = v10;
  v13 = swift_getKeyPath();
  sub_1AF57AAE8(0);
  v14 = swift_allocObject();
  v14[4] = sub_1AF58AE3C;
  v14[5] = v13;
  v14[2] = sub_1AF58AE54;
  v14[3] = v13;
  v14[6] = v13;
  v15 = swift_allocObject();
  *(v15 + 104) = 0;
  *(v15 + 112) = 1;
  *(v15 + 128) = 0;
  *(v15 + 136) = 0;
  *(v15 + 120) = 0;
  *(v15 + 160) = MEMORY[0x1E69E7CC0];
  *(v15 + 216) = 0;
  v16 = MEMORY[0x1E69E6448];
  sub_1AF583D60(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
  v18 = v17;
  *(v15 + 168) = 0;
  *(v15 + 176) = 0;
  *(v15 + 16) = 0x7269446E69616DLL;
  *(v15 + 24) = 0xE700000000000000;
  *(v15 + 32) = v13;
  *(v15 + 40) = v17;
  *(v15 + 48) = 16;
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
  *(v15 + 144) = xmmword_1AFE22A20;
  *(v15 + 80) = v14;
  *(v15 + 88) = &off_1F2535378;
  *(v15 + 210) = 0;
  v19 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v19 && v18)
  {
    v18 = (*(v19 + 8))(v18, v19);
  }

  v20 = swift_conformsToProtocol2();
  if (v20 && v18)
  {
    *(v15 + 160) = (*(v20 + 8))(v18, v20);
  }

  v21 = *(v15 + 64);
  v22 = *(v15 + 72);
  *(v15 + 64) = sub_1AF58AEB8;
  *(v15 + 72) = v13;
  sub_1AF0FB8EC(v21, v22);
  *(v15 + 168) = 0;
  *(v15 + 176) = 0;

  *(v15 + 216) = 0;

  *(v0 + 40) = v15;
  v23 = swift_getKeyPath();
  sub_1AF5A9240(0, &unk_1ED722B70, v16, type metadata accessor for EntityGetSet);
  v24 = swift_allocObject();
  v24[4] = sub_1AF58AEFC;
  v24[5] = v23;
  v24[2] = sub_1AF58AF30;
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
  strcpy((v25 + 16), "mainDirSpread");
  *(v25 + 30) = -4864;
  *(v25 + 32) = v23;
  *(v25 + 40) = v16;
  *(v25 + 48) = 32;
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
  v26 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v26)
  {
    v27 = (*(v26 + 8))();
  }

  else
  {
    v27 = v16;
  }

  v28 = swift_conformsToProtocol2();
  if (v28 && v27)
  {
    *(v25 + 160) = (*(v28 + 8))(v27, v28);
  }

  *(v25 + 64) = sub_1AF58AF8C;
  *(v25 + 72) = v23;
  sub_1AF0FB8EC(0, 0);
  *(v25 + 168) = 0;
  *(v25 + 176) = 0;

  *(v25 + 216) = 0;
  *(v0 + 48) = v25;
  v29 = swift_getKeyPath();
  v30 = swift_allocObject();
  v30[4] = sub_1AF5A9454;
  v30[5] = v29;
  v30[2] = sub_1AF5A9C48;
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
  strcpy((v31 + 16), "noiseIntensity");
  *(v31 + 31) = -18;
  *(v31 + 32) = v29;
  *(v31 + 40) = v16;
  *(v31 + 48) = 36;
  *(v31 + 56) = 0;
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
  if (v26)
  {
    v32 = (*(v26 + 8))();
  }

  else
  {
    v32 = v16;
  }

  v33 = swift_conformsToProtocol2();
  if (v33 && v32)
  {
    *(v31 + 160) = (*(v33 + 8))(v32, v33);
  }

  *(v31 + 64) = sub_1AF5A977C;
  *(v31 + 72) = v29;
  sub_1AF0FB8EC(0, 0);
  *(v31 + 168) = 0;
  *(v31 + 176) = 0;

  *(v31 + 216) = 0;
  *(v0 + 56) = v31;
  v34 = swift_getKeyPath();
  v35 = swift_allocObject();
  v35[4] = sub_1AF5A9454;
  v35[5] = v34;
  v35[2] = sub_1AF5A9C48;
  v35[3] = v34;
  v35[6] = v34;
  v36 = swift_allocObject();
  *(v36 + 112) = 1;
  *(v36 + 128) = 0;
  *(v36 + 136) = 0;
  *(v36 + 120) = 0;
  *(v36 + 160) = MEMORY[0x1E69E7CC0];
  *(v36 + 168) = 0;
  *(v36 + 216) = 0;
  *(v36 + 176) = 0;
  *(v36 + 16) = 0x6163536573696F6ELL;
  *(v36 + 24) = 0xEA0000000000656CLL;
  *(v36 + 32) = v34;
  *(v36 + 40) = v16;
  *(v36 + 48) = 40;
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
  swift_retain_n();
  if (v26)
  {
    v37 = (*(v26 + 8))();
  }

  else
  {
    v37 = v16;
  }

  v38 = swift_conformsToProtocol2();
  if (v38 && v37)
  {
    *(v36 + 160) = (*(v38 + 8))(v37, v38);
  }

  *(v36 + 64) = sub_1AF5A977C;
  *(v36 + 72) = v34;
  sub_1AF0FB8EC(0, 0);
  *(v36 + 168) = 0;
  *(v36 + 176) = 0;

  *(v36 + 216) = 0;
  v39 = v0;
  *(v0 + 64) = v36;
  v40 = swift_getKeyPath();
  v41 = MEMORY[0x1E69E6530];
  sub_1AF5A9240(0, &qword_1ED722B68, MEMORY[0x1E69E6530], type metadata accessor for EntityGetSet);
  v42 = swift_allocObject();
  v42[4] = sub_1AF58AFCC;
  v42[5] = v40;
  v42[2] = sub_1AF58B000;
  v42[3] = v40;
  v42[6] = v40;
  v43 = swift_allocObject();
  *(v43 + 112) = 1;
  *(v43 + 128) = 0;
  *(v43 + 136) = 0;
  *(v43 + 120) = 0;
  *(v43 + 160) = MEMORY[0x1E69E7CC0];
  *(v43 + 168) = 0;
  *(v43 + 216) = 0;
  *(v43 + 176) = 0;
  *(v43 + 16) = 0xD000000000000010;
  *(v43 + 24) = 0x80000001AFF29640;
  *(v43 + 32) = v40;
  *(v43 + 40) = v41;
  *(v43 + 48) = 48;
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
  *(v43 + 104) = 0;
  *(v43 + 144) = xmmword_1AFE22A20;
  *(v43 + 80) = v42;
  *(v43 + 88) = &off_1F2535378;
  *(v43 + 210) = 0;
  v44 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v44)
  {
    v41 = (*(v44 + 8))();
  }

  v45 = swift_conformsToProtocol2();
  if (v45 && v41)
  {
    *(v43 + 160) = (*(v45 + 8))(v41, v45);
  }

  *(v43 + 64) = sub_1AF58B05C;
  *(v43 + 72) = v40;
  sub_1AF0FB8EC(0, 0);
  *(v43 + 168) = 0;
  *(v43 + 176) = 0;

  *(v43 + 216) = 0;
  *(v0 + 72) = v43;
  v46 = swift_getKeyPath();
  v47 = swift_allocObject();
  v47[4] = sub_1AF5A9454;
  v47[5] = v46;
  v47[2] = sub_1AF5A9C48;
  v47[3] = v46;
  v47[6] = v46;
  v48 = swift_allocObject();
  *(v48 + 112) = 1;
  *(v48 + 128) = 0;
  *(v48 + 136) = 0;
  *(v48 + 120) = 0;
  *(v48 + 160) = MEMORY[0x1E69E7CC0];
  *(v48 + 168) = 0;
  *(v48 + 216) = 0;
  *(v48 + 176) = 0;
  *(v48 + 16) = 0x676E654C70657473;
  *(v48 + 24) = 0xEA00000000006874;
  *(v48 + 32) = v46;
  *(v48 + 40) = v16;
  *(v48 + 48) = 56;
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
  swift_retain_n();
  if (v26)
  {
    v16 = (*(v26 + 8))();
  }

  v49 = swift_conformsToProtocol2();
  if (v49 && v16)
  {
    *(v48 + 160) = (*(v49 + 8))(v16, v49);
  }

  *(v48 + 64) = sub_1AF5A977C;
  *(v48 + 72) = v46;
  sub_1AF0FB8EC(0, 0);
  *(v48 + 168) = 0;
  *(v48 + 176) = 0;

  *(v48 + 216) = 0;
  *(v39 + 80) = v48;
  qword_1EB6C2E80 = v39;
  return result;
}

uint64_t sub_1AF4C6F70()
{
  if (qword_1EB636E58 != -1)
  {
    swift_once();
  }
}

double sub_1AF4C7060()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C3E0;
  KeyPath = swift_getKeyPath();
  type metadata accessor for PropertyDescription();
  v2 = swift_allocObject();
  *(v2 + 216) = 0;
  *(v2 + 80) = 0;
  *(v2 + 88) = 0;
  *(v2 + 128) = 0;
  *(v2 + 136) = 0;
  *(v2 + 120) = 0;
  *(v2 + 16) = 0x6D6F646E6172;
  *(v2 + 24) = 0xE600000000000000;
  v3 = MEMORY[0x1E69E73E0];
  *(v2 + 32) = KeyPath;
  *(v2 + 40) = v3;
  *(v2 + 48) = 0;
  *(v2 + 56) = 1;
  *(v2 + 58) = 4;
  *(v2 + 184) = 0;
  *(v2 + 188) = 1;
  *(v2 + 192) = 0;
  *(v2 + 196) = 1;
  *(v2 + 200) = 0x1000100000000;
  *(v2 + 208) = 1;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
  *(v2 + 210) = 4;
  *&result = 1;
  *(v2 + 144) = xmmword_1AFE22A20;
  *(v2 + 176) = 0;
  *(v2 + 160) = MEMORY[0x1E69E7CC0];
  *(v2 + 168) = 0;
  *(v2 + 96) = 0;
  *(v2 + 104) = 1101;
  *(v2 + 112) = 0;
  *(v0 + 32) = v2;
  qword_1EB6C2E88 = v0;
  return result;
}

uint64_t sub_1AF4C71A0()
{
  if (qword_1EB636E60 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1AF4C7290()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C3E0;
  KeyPath = swift_getKeyPath();
  sub_1AF57F2F4(0);
  v2 = swift_allocObject();
  v2[4] = sub_1AF58B2BC;
  v2[5] = KeyPath;
  v2[2] = sub_1AF58B300;
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
  *(v3 + 16) = 0x65676E6172;
  *(v3 + 24) = 0xE500000000000000;
  *(v3 + 32) = KeyPath;
  *(v3 + 40) = v4;
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  *(v3 + 58) = 0;
  *(v3 + 184) = 0;
  *(v3 + 188) = 0;
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
  *(v3 + 64) = sub_1AF58B35C;
  *(v3 + 72) = KeyPath;
  sub_1AF0FB8EC(v8, v9);
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;

  *(v3 + 216) = 0;

  *(v0 + 32) = v3;
  qword_1EB6C2E90 = v0;
  return result;
}

uint64_t sub_1AF4C75D8()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE550E0;
  KeyPath = swift_getKeyPath();
  sub_1AF57F2F4(0);
  v2 = swift_allocObject();
  v2[4] = sub_1AF58B434;
  v2[5] = KeyPath;
  v2[2] = sub_1AF58B468;
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
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  *(v3 + 58) = 0;
  *(v3 + 184) = 0;
  *(v3 + 188) = 0;
  *(v3 + 192) = 0;
  *(v3 + 196) = 1;
  *(v3 + 200) = 0x100003C23D70ALL;
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
  *(v3 + 64) = sub_1AF58B4C4;
  *(v3 + 72) = KeyPath;
  sub_1AF0FB8EC(v9, v10);
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;

  *(v3 + 216) = 0;

  *(v0 + 32) = v3;
  v11 = swift_getKeyPath();
  v12 = MEMORY[0x1E69E6370];
  sub_1AF5A9240(0, &qword_1ED722B80, MEMORY[0x1E69E6370], type metadata accessor for EntityGetSet);
  v13 = swift_allocObject();
  v13[4] = sub_1AF58B508;
  v13[5] = v11;
  v13[2] = sub_1AF58B534;
  v13[3] = v11;
  v13[6] = v11;
  v14 = swift_allocObject();
  *(v14 + 112) = 1;
  *(v14 + 128) = 0;
  *(v14 + 136) = 0;
  *(v14 + 120) = 0;
  *(v14 + 160) = v4;
  *(v14 + 168) = 0;
  *(v14 + 216) = 0;
  *(v14 + 176) = 0;
  *(v14 + 16) = 0xD000000000000011;
  *(v14 + 24) = 0x80000001AFF234C0;
  *(v14 + 32) = v11;
  *(v14 + 40) = v12;
  *(v14 + 48) = 8;
  *(v14 + 56) = 0;
  *(v14 + 58) = 0;
  *(v14 + 184) = 0;
  *(v14 + 188) = 1;
  *(v14 + 192) = 0;
  *(v14 + 196) = 1;
  *(v14 + 200) = 0x1000100000000;
  *(v14 + 208) = 1;
  *(v14 + 96) = 0;
  *(v14 + 104) = 0;
  *(v14 + 64) = 0;
  *(v14 + 72) = 0;
  *(v14 + 144) = xmmword_1AFE22A20;
  *(v14 + 80) = v13;
  *(v14 + 88) = &off_1F2535378;
  *(v14 + 210) = 0;
  v15 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v15)
  {
    v12 = (*(v15 + 8))();
  }

  v16 = swift_conformsToProtocol2();
  if (v16 && v12)
  {
    *(v14 + 160) = (*(v16 + 8))(v12, v16);
  }

  *(v14 + 64) = sub_1AF58B590;
  *(v14 + 72) = v11;
  sub_1AF0FB8EC(0, 0);
  *(v14 + 168) = 0;
  *(v14 + 176) = 0;

  *(v14 + 216) = 0;
  *(v0 + 40) = v14;
  qword_1EB6C2B00 = v0;
  return result;
}

uint64_t sub_1AF4C7B1C()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1AFE550F0;
  KeyPath = swift_getKeyPath();
  v1 = swift_getKeyPath();
  v2 = MEMORY[0x1E69E7360];
  sub_1AF5A9240(0, &unk_1EB634340, MEMORY[0x1E69E7360], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF58B6C4;
  v3[5] = v1;
  v3[2] = sub_1AF58B6F8;
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

  *(v4 + 64) = sub_1AF58B754;
  *(v4 + 72) = v1;
  sub_1AF0FB8EC(0, 0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  v8 = &type metadata for Composition.Operation;
  sub_1AF5A9240(0, &qword_1EB6338C8, &type metadata for Composition.Operation, type metadata accessor for EntityGetSet);
  v9 = swift_allocObject();
  v9[4] = sub_1AF58B794;
  v9[5] = KeyPath;
  v9[2] = sub_1AF58B7C0;
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
  *(v10 + 16) = 0x6F6974617265706FLL;
  *(v10 + 24) = 0xE90000000000006ELL;
  *(v10 + 32) = KeyPath;
  *(v10 + 40) = &type metadata for Composition.Operation;
  *(v10 + 48) = 16;
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

  *(v10 + 64) = sub_1AF58B81C;
  *(v10 + 72) = KeyPath;
  sub_1AF0FB8EC(0, 0);
  *(v10 + 168) = 0;
  *(v10 + 176) = 0;

  *(v10 + 216) = v4;
  *(v37 + 32) = v10;
  v13 = swift_getKeyPath();
  v14 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v15 = swift_allocObject();
  v15[4] = sub_1AF58B85C;
  v15[5] = v13;
  v15[2] = sub_1AF58B890;
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
  *(v16 + 16) = 0x726F74636166;
  *(v16 + 24) = 0xE600000000000000;
  *(v16 + 32) = v13;
  *(v16 + 40) = v14;
  *(v16 + 48) = 20;
  *(v16 + 56) = 0;
  *(v16 + 58) = 0;
  *(v16 + 184) = 0;
  *(v16 + 188) = 0;
  *(v16 + 192) = 0;
  *(v16 + 196) = 1;
  *(v16 + 200) = 0x100003C23D70ALL;
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

  *(v16 + 64) = sub_1AF58B8EC;
  *(v16 + 72) = v13;
  sub_1AF0FB8EC(0, 0);
  *(v16 + 168) = 0;
  *(v16 + 176) = 0;

  *(v16 + 216) = 0;
  *(v37 + 40) = v16;
  v19 = swift_getKeyPath();
  sub_1AF57F2F4(0);
  v20 = swift_allocObject();
  v20[4] = sub_1AF58B6C4;
  v20[5] = v19;
  v20[2] = sub_1AF58B92C;
  v20[3] = v19;
  v20[6] = v19;
  v21 = swift_allocObject();
  *(v21 + 104) = 0;
  *(v21 + 112) = 1;
  *(v21 + 128) = 0;
  *(v21 + 136) = 0;
  *(v21 + 120) = 0;
  *(v21 + 160) = MEMORY[0x1E69E7CC0];
  *(v21 + 216) = 0;
  sub_1AF589E74(0, &qword_1ED72F958, MEMORY[0x1E69E6448], MEMORY[0x1E69E6468], MEMORY[0x1E69E66A8]);
  v23 = v22;
  *(v21 + 168) = 0;
  *(v21 + 176) = 0;
  *(v21 + 16) = 0x65676E6172;
  *(v21 + 24) = 0xE500000000000000;
  *(v21 + 32) = v19;
  *(v21 + 40) = v22;
  *(v21 + 48) = 0;
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
  *(v21 + 144) = xmmword_1AFE22A20;
  *(v21 + 80) = v20;
  *(v21 + 88) = &off_1F2535378;
  *(v21 + 210) = 0;
  v24 = swift_conformsToProtocol2();
  if (v24)
  {
    v25 = v23;
  }

  else
  {
    v25 = 0;
  }

  swift_retain_n();
  v26 = v23;
  if (v25)
  {
    v26 = (*(v24 + 8))(v25, v24);
  }

  v27 = swift_conformsToProtocol2();
  if (v27 && v26)
  {
    *(v21 + 160) = (*(v27 + 8))(v26, v27);
  }

  v28 = *(v21 + 64);
  v29 = *(v21 + 72);
  *(v21 + 64) = sub_1AF58B988;
  *(v21 + 72) = v19;
  sub_1AF0FB8EC(v28, v29);
  *(v21 + 168) = 0;
  *(v21 + 176) = 0;

  *(v21 + 216) = 0;

  *(v37 + 48) = v21;
  v30 = swift_getKeyPath();
  v31 = swift_allocObject();
  v31[4] = sub_1AF5AA334;
  v31[5] = v30;
  v31[2] = sub_1AF5AA4B4;
  v31[3] = v30;
  v31[6] = v30;
  v32 = swift_allocObject();
  *(v32 + 112) = 1;
  *(v32 + 128) = 0;
  *(v32 + 136) = 0;
  *(v32 + 120) = 0;
  *(v32 + 168) = 0;
  *(v32 + 160) = MEMORY[0x1E69E7CC0];
  *(v32 + 216) = 0;
  *(v32 + 176) = 0;
  *(v32 + 16) = 0x6E69646165727073;
  *(v32 + 24) = 0xE900000000000067;
  *(v32 + 32) = v30;
  *(v32 + 40) = v23;
  *(v32 + 48) = 8;
  *(v32 + 56) = 0;
  *(v32 + 58) = 0;
  *(v32 + 184) = 0;
  *(v32 + 188) = 0;
  *(v32 + 192) = 1078530011;
  *(v32 + 196) = 0;
  *(v32 + 200) = 0x1000100000000;
  *(v32 + 208) = 1;
  *(v32 + 64) = 0;
  *(v32 + 72) = 0;
  *(v32 + 96) = 0;
  *(v32 + 104) = 0;
  *(v32 + 144) = xmmword_1AFE55150;
  *(v32 + 80) = v31;
  *(v32 + 88) = &off_1F2535378;
  *(v32 + 210) = 0;
  swift_retain_n();
  if (v25)
  {
    v23 = (*(v24 + 8))(v25, v24);
  }

  v33 = swift_conformsToProtocol2();
  if (v33 && v23)
  {
    *(v32 + 160) = (*(v33 + 8))(v23, v33);
  }

  v34 = *(v32 + 64);
  v35 = *(v32 + 72);
  *(v32 + 64) = sub_1AF5A9784;
  *(v32 + 72) = v30;
  sub_1AF0FB8EC(v34, v35);
  *(v32 + 168) = 0;
  *(v32 + 176) = 0;

  *(v32 + 216) = 0;

  *(v37 + 56) = v32;
  qword_1EB6C2E98 = v37;
  return result;
}

uint64_t sub_1AF4C8580(uint64_t result)
{
  v2 = result;
  if ((result & 0xFC) != 0)
  {
    v2 = 4;
  }

  *(v1 + 16) = v2;
  return result;
}

uint64_t sub_1AF4C864C()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE55130;
  KeyPath = swift_getKeyPath();
  sub_1AF57F2F4(0);
  v2 = swift_allocObject();
  v2[4] = sub_1AF58BB80;
  v2[5] = KeyPath;
  v2[2] = sub_1AF58BBC4;
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
  *(v3 + 16) = 120;
  *(v3 + 24) = 0xE100000000000000;
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
  *(v3 + 144) = xmmword_1AFE55150;
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
  *(v3 + 64) = sub_1AF58BC20;
  *(v3 + 72) = KeyPath;
  sub_1AF0FB8EC(v10, v11);
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;

  *(v3 + 216) = 0;

  *(v0 + 32) = v3;
  v12 = swift_getKeyPath();
  v13 = swift_allocObject();
  v13[4] = sub_1AF5AA338;
  v13[5] = v12;
  v13[2] = sub_1AF5AA4B8;
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
  *(v14 + 16) = 121;
  *(v14 + 24) = 0xE100000000000000;
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
  *(v14 + 144) = xmmword_1AFE55150;
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
  *(v14 + 64) = sub_1AF5A9788;
  *(v14 + 72) = v12;
  sub_1AF0FB8EC(v17, v18);
  *(v14 + 168) = 0;
  *(v14 + 176) = 0;

  *(v14 + 216) = 0;

  *(v0 + 40) = v14;
  v19 = swift_getKeyPath();
  v20 = swift_allocObject();
  v20[4] = sub_1AF5AA338;
  v20[5] = v19;
  v20[2] = sub_1AF5AA4B8;
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
  *(v21 + 16) = 122;
  *(v21 + 24) = 0xE100000000000000;
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
  *(v21 + 144) = xmmword_1AFE55150;
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
  *(v21 + 64) = sub_1AF5A9788;
  *(v21 + 72) = v19;
  sub_1AF0FB8EC(v23, v24);
  *(v21 + 168) = 0;
  *(v21 + 176) = 0;

  *(v21 + 216) = 0;

  *(v0 + 48) = v21;
  qword_1EB6C2EA0 = v0;
  return result;
}

uint64_t sub_1AF4C8D0C()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE55130;
  KeyPath = swift_getKeyPath();
  sub_1AF57F2F4(0);
  v2 = swift_allocObject();
  v2[4] = sub_1AF58BCF8;
  v2[5] = KeyPath;
  v2[2] = sub_1AF58BD3C;
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
  *(v3 + 16) = 120;
  *(v3 + 24) = 0xE100000000000000;
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
  *(v3 + 144) = xmmword_1AFE55150;
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
  *(v3 + 64) = sub_1AF58BD98;
  *(v3 + 72) = KeyPath;
  sub_1AF0FB8EC(v10, v11);
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;

  *(v3 + 216) = 0;

  *(v0 + 32) = v3;
  v12 = swift_getKeyPath();
  v13 = swift_allocObject();
  v13[4] = sub_1AF5AA33C;
  v13[5] = v12;
  v13[2] = sub_1AF5AA4BC;
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
  *(v14 + 16) = 121;
  *(v14 + 24) = 0xE100000000000000;
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
  *(v14 + 144) = xmmword_1AFE55150;
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
  *(v14 + 64) = sub_1AF5A978C;
  *(v14 + 72) = v12;
  sub_1AF0FB8EC(v17, v18);
  *(v14 + 168) = 0;
  *(v14 + 176) = 0;

  *(v14 + 216) = 0;

  *(v0 + 40) = v14;
  v19 = swift_getKeyPath();
  v20 = swift_allocObject();
  v20[4] = sub_1AF5AA33C;
  v20[5] = v19;
  v20[2] = sub_1AF5AA4BC;
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
  *(v21 + 16) = 122;
  *(v21 + 24) = 0xE100000000000000;
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
  *(v21 + 144) = xmmword_1AFE55150;
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
  *(v21 + 64) = sub_1AF5A978C;
  *(v21 + 72) = v19;
  sub_1AF0FB8EC(v23, v24);
  *(v21 + 168) = 0;
  *(v21 + 176) = 0;

  *(v21 + 216) = 0;

  *(v0 + 48) = v21;
  qword_1EB6C2718 = v0;
  return result;
}

uint64_t sub_1AF4C93C4()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE550F0;
  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  v3 = MEMORY[0x1E69E7360];
  sub_1AF5A9240(0, &unk_1EB634340, MEMORY[0x1E69E7360], type metadata accessor for EntityGetSet);
  v4 = swift_allocObject();
  v4[4] = sub_1AF58BE70;
  v4[5] = v2;
  v4[2] = sub_1AF58BEA4;
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

  *(v5 + 64) = sub_1AF58BF00;
  *(v5 + 72) = v2;
  sub_1AF0FB8EC(0, 0);
  *(v5 + 168) = 0;
  *(v5 + 176) = 0;

  *(v5 + 216) = 0;
  v8 = &type metadata for ScaleMode;
  sub_1AF5A9240(0, &qword_1EB634360, &type metadata for ScaleMode, type metadata accessor for EntityGetSet);
  v9 = swift_allocObject();
  v9[4] = sub_1AF58BF40;
  v9[5] = KeyPath;
  v9[2] = sub_1AF58BF6C;
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
  *(v10 + 40) = &type metadata for ScaleMode;
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

  *(v10 + 64) = sub_1AF58BFC8;
  *(v10 + 72) = KeyPath;
  sub_1AF0FB8EC(0, 0);
  *(v10 + 168) = 0;
  *(v10 + 176) = 0;

  *(v10 + 216) = v5;
  v42 = v0;
  *(v0 + 32) = v10;
  v13 = swift_getKeyPath();
  sub_1AF57F2F4(0);
  v14 = swift_allocObject();
  v14[4] = sub_1AF58BE70;
  v14[5] = v13;
  v14[2] = sub_1AF58C008;
  v14[3] = v13;
  v14[6] = v13;
  v15 = swift_allocObject();
  *(v15 + 104) = 0;
  *(v15 + 112) = 1;
  *(v15 + 128) = 0;
  *(v15 + 136) = 0;
  *(v15 + 120) = 0;
  *(v15 + 160) = MEMORY[0x1E69E7CC0];
  *(v15 + 216) = 0;
  sub_1AF589E74(0, &qword_1ED72F958, MEMORY[0x1E69E6448], MEMORY[0x1E69E6468], MEMORY[0x1E69E66A8]);
  v17 = v16;
  *(v15 + 168) = 0;
  *(v15 + 176) = 0;
  *(v15 + 16) = 120;
  *(v15 + 24) = 0xE100000000000000;
  *(v15 + 32) = v13;
  *(v15 + 40) = v16;
  *(v15 + 48) = 4;
  *(v15 + 56) = 0;
  *(v15 + 58) = 512;
  *(v15 + 184) = 0;
  *(v15 + 188) = 0;
  *(v15 + 192) = 0;
  *(v15 + 196) = 1;
  *(v15 + 200) = 0x30100003C23D70ALL;
  *(v15 + 208) = 0;
  *(v15 + 64) = 0;
  *(v15 + 72) = 0;
  *(v15 + 96) = 0;
  *(v15 + 144) = xmmword_1AFE55140;
  *(v15 + 80) = v14;
  *(v15 + 88) = &off_1F2535378;
  *(v15 + 210) = 512;
  v18 = swift_conformsToProtocol2();
  if (v18)
  {
    v19 = v17;
  }

  else
  {
    v19 = 0;
  }

  swift_retain_n();
  v20 = v17;
  if (v19)
  {
    v20 = (*(v18 + 8))(v19, v18);
  }

  v21 = swift_conformsToProtocol2();
  if (v21 && v20)
  {
    *(v15 + 160) = (*(v21 + 8))(v20, v21);
  }

  v22 = *(v15 + 64);
  v23 = *(v15 + 72);
  *(v15 + 64) = sub_1AF58C064;
  *(v15 + 72) = v13;
  sub_1AF0FB8EC(v22, v23);
  *(v15 + 168) = 0;
  *(v15 + 176) = 0;

  *(v15 + 216) = 0;

  v42[5] = v15;
  v24 = swift_getKeyPath();
  v25 = swift_getKeyPath();
  v26 = swift_allocObject();
  v26[4] = sub_1AF5AA340;
  v26[5] = v24;
  v26[2] = sub_1AF5AA4C0;
  v26[3] = v24;
  v26[6] = v24;
  v27 = swift_allocObject();
  *(v27 + 112) = 1;
  *(v27 + 128) = 0;
  *(v27 + 136) = 0;
  *(v27 + 120) = 0;
  *(v27 + 168) = 0;
  *(v27 + 160) = MEMORY[0x1E69E7CC0];
  *(v27 + 216) = 0;
  *(v27 + 176) = 0;
  *(v27 + 16) = 121;
  *(v27 + 24) = 0xE100000000000000;
  *(v27 + 32) = v24;
  *(v27 + 40) = v17;
  *(v27 + 48) = 12;
  *(v27 + 56) = 0;
  *(v27 + 58) = 512;
  *(v27 + 184) = 0;
  *(v27 + 188) = 0;
  *(v27 + 192) = 0;
  *(v27 + 196) = 1;
  *(v27 + 200) = 1008981770;
  *(v27 + 204) = 50397184;
  *(v27 + 208) = 0;
  *(v27 + 64) = 0;
  *(v27 + 72) = 0;
  *(v27 + 96) = v25;
  *(v27 + 104) = 0;
  *(v27 + 144) = xmmword_1AFE55140;
  *(v27 + 80) = v26;
  *(v27 + 88) = &off_1F2535378;
  *(v27 + 210) = 512;
  swift_retain_n();

  v28 = v17;
  if (v19)
  {
    v28 = (*(v18 + 8))(v19, v18);
  }

  v29 = swift_conformsToProtocol2();
  if (v29 && v28)
  {
    v30 = (*(v29 + 8))(v28, v29);

    *(v27 + 160) = v30;
  }

  else
  {
  }

  v31 = *(v27 + 64);
  v32 = *(v27 + 72);
  *(v27 + 64) = sub_1AF5A9790;
  *(v27 + 72) = v24;
  sub_1AF0FB8EC(v31, v32);
  *(v27 + 168) = 0;
  *(v27 + 176) = 0;

  *(v27 + 216) = 0;

  v42[6] = v27;
  v33 = swift_getKeyPath();
  v34 = swift_getKeyPath();
  v35 = swift_allocObject();
  v35[4] = sub_1AF5AA340;
  v35[5] = v33;
  v35[2] = sub_1AF5AA4C0;
  v35[3] = v33;
  v35[6] = v33;
  v36 = swift_allocObject();
  *(v36 + 112) = 1;
  *(v36 + 128) = 0;
  *(v36 + 136) = 0;
  *(v36 + 120) = 0;
  *(v36 + 168) = 0;
  *(v36 + 160) = MEMORY[0x1E69E7CC0];
  *(v36 + 216) = 0;
  *(v36 + 176) = 0;
  *(v36 + 16) = 122;
  *(v36 + 24) = 0xE100000000000000;
  *(v36 + 32) = v33;
  *(v36 + 40) = v17;
  *(v36 + 48) = 20;
  *(v36 + 56) = 0;
  *(v36 + 58) = 512;
  *(v36 + 184) = 0;
  *(v36 + 188) = 0;
  *(v36 + 192) = 0;
  *(v36 + 196) = 1;
  *(v36 + 200) = 1008981770;
  *(v36 + 204) = 50397184;
  *(v36 + 208) = 0;
  *(v36 + 64) = 0;
  *(v36 + 72) = 0;
  *(v36 + 96) = v34;
  *(v36 + 104) = 0;
  *(v36 + 144) = xmmword_1AFE55140;
  *(v36 + 80) = v35;
  *(v36 + 88) = &off_1F2535378;
  *(v36 + 210) = 512;
  swift_retain_n();

  if (v19)
  {
    v17 = (*(v18 + 8))(v19, v18);
  }

  v37 = swift_conformsToProtocol2();
  if (v37 && v17)
  {
    v38 = (*(v37 + 8))(v17, v37);

    *(v36 + 160) = v38;
  }

  else
  {
  }

  v39 = *(v36 + 64);
  v40 = *(v36 + 72);
  *(v36 + 64) = sub_1AF5A9790;
  *(v36 + 72) = v33;
  sub_1AF0FB8EC(v39, v40);
  *(v36 + 168) = 0;
  *(v36 + 176) = 0;

  *(v36 + 216) = 0;

  v42[7] = v36;
  qword_1EB6C2AF8 = v42;
  return result;
}

uint64_t sub_1AF4C9EF4()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE55130;
  KeyPath = swift_getKeyPath();
  sub_1AF57F2F4(0);
  v2 = swift_allocObject();
  v2[4] = sub_1AF58C22C;
  v2[5] = KeyPath;
  v2[2] = sub_1AF58C270;
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
  *(v3 + 16) = 120;
  *(v3 + 24) = 0xE100000000000000;
  *(v3 + 32) = KeyPath;
  *(v3 + 40) = v4;
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  *(v3 + 58) = 0;
  *(v3 + 184) = 0;
  *(v3 + 188) = 0;
  *(v3 + 192) = 1065353216;
  *(v3 + 196) = 0;
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
  *(v3 + 64) = sub_1AF58C2CC;
  *(v3 + 72) = KeyPath;
  sub_1AF0FB8EC(v10, v11);
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;

  *(v3 + 216) = 0;

  *(v0 + 32) = v3;
  v12 = swift_getKeyPath();
  v13 = swift_allocObject();
  v13[4] = sub_1AF5AA344;
  v13[5] = v12;
  v13[2] = sub_1AF5AA4C4;
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
  *(v14 + 16) = 121;
  *(v14 + 24) = 0xE100000000000000;
  *(v14 + 32) = v12;
  *(v14 + 40) = v5;
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
  *(v14 + 64) = sub_1AF5A9794;
  *(v14 + 72) = v12;
  sub_1AF0FB8EC(v17, v18);
  *(v14 + 168) = 0;
  *(v14 + 176) = 0;

  *(v14 + 216) = 0;

  *(v0 + 40) = v14;
  v19 = swift_getKeyPath();
  v20 = swift_allocObject();
  v20[4] = sub_1AF5AA344;
  v20[5] = v19;
  v20[2] = sub_1AF5AA4C4;
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
  *(v21 + 16) = 122;
  *(v21 + 24) = 0xE100000000000000;
  *(v21 + 32) = v19;
  *(v21 + 40) = v5;
  *(v21 + 48) = 16;
  *(v21 + 56) = 0;
  *(v21 + 58) = 0;
  *(v21 + 184) = 0;
  *(v21 + 188) = 0;
  *(v21 + 192) = 1065353216;
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
  *(v21 + 64) = sub_1AF5A9794;
  *(v21 + 72) = v19;
  sub_1AF0FB8EC(v23, v24);
  *(v21 + 168) = 0;
  *(v21 + 176) = 0;

  *(v21 + 216) = 0;

  *(v0 + 48) = v21;
  qword_1EB6C2EA8 = v0;
  return result;
}

uint64_t sub_1AF4CA5B4()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C3E0;
  KeyPath = swift_getKeyPath();
  sub_1AF57F2F4(0);
  v2 = swift_allocObject();
  v2[4] = sub_1AF58C3A4;
  v2[5] = KeyPath;
  v2[2] = sub_1AF58C3E8;
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
  *(v3 + 16) = 0x65676E6172;
  *(v3 + 24) = 0xE500000000000000;
  *(v3 + 32) = KeyPath;
  *(v3 + 40) = v4;
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  *(v3 + 58) = 0;
  *(v3 + 184) = -1068953637;
  *(v3 + 188) = 0;
  *(v3 + 192) = 1078530011;
  *(v3 + 196) = 0;
  *(v3 + 200) = 0x1000100000000;
  *(v3 + 208) = 1;
  *(v3 + 96) = 0;
  *(v3 + 64) = 0;
  *(v3 + 72) = 0;
  *(v3 + 144) = xmmword_1AFE55150;
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
  *(v3 + 64) = sub_1AF58C444;
  *(v3 + 72) = KeyPath;
  sub_1AF0FB8EC(v8, v9);
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;

  *(v3 + 216) = 0;

  *(v0 + 32) = v3;
  qword_1EB6C2920 = v0;
  return result;
}

uint64_t sub_1AF4CA90C()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C3E0;
  KeyPath = swift_getKeyPath();
  sub_1AF57F2F4(0);
  v2 = swift_allocObject();
  v2[4] = sub_1AF58C51C;
  v2[5] = KeyPath;
  v2[2] = sub_1AF58C560;
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
  *(v3 + 16) = 0x65676E6172;
  *(v3 + 24) = 0xE500000000000000;
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
  *(v3 + 144) = xmmword_1AFE55150;
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
  *(v3 + 64) = sub_1AF58C5BC;
  *(v3 + 72) = KeyPath;
  sub_1AF0FB8EC(v8, v9);
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;

  *(v3 + 216) = 0;

  *(v0 + 32) = v3;
  qword_1EB6C28D8 = v0;
  return result;
}

uint64_t sub_1AF4CAC58()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C3E0;
  KeyPath = swift_getKeyPath();
  sub_1AF57F2F4(0);
  v2 = swift_allocObject();
  v2[4] = sub_1AF58C694;
  v2[5] = KeyPath;
  v2[2] = sub_1AF58C6D8;
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
  *(v3 + 16) = 0x65676E6172;
  *(v3 + 24) = 0xE500000000000000;
  *(v3 + 32) = KeyPath;
  *(v3 + 40) = v4;
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  *(v3 + 58) = 0;
  *(v3 + 184) = 0;
  *(v3 + 188) = 0;
  *(v3 + 192) = 1065353216;
  *(v3 + 196) = 0;
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
  *(v3 + 64) = sub_1AF58C734;
  *(v3 + 72) = KeyPath;
  sub_1AF0FB8EC(v8, v9);
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;

  *(v3 + 216) = 0;

  *(v0 + 32) = v3;
  qword_1EB6C2EB0 = v0;
  return result;
}

uint64_t sub_1AF4CAFB0()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v74 = swift_allocObject();
  *(v74 + 16) = xmmword_1AFE55180;
  KeyPath = swift_getKeyPath();
  v1 = swift_getKeyPath();
  v2 = MEMORY[0x1E69E7360];
  sub_1AF5A9240(0, &unk_1EB634340, MEMORY[0x1E69E7360], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF58C80C;
  v3[5] = v1;
  v3[2] = sub_1AF58C840;
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
  *(v4 + 64) = sub_1AF58C89C;
  *(v4 + 72) = v1;
  sub_1AF0FB8EC(v9, v10);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;

  v11 = &type metadata for Composition.Operation;
  sub_1AF5A9240(0, &qword_1EB6338C8, &type metadata for Composition.Operation, type metadata accessor for EntityGetSet);
  v12 = swift_allocObject();
  v12[4] = sub_1AF58C8DC;
  v12[5] = KeyPath;
  v12[2] = sub_1AF58C908;
  v12[3] = KeyPath;
  v12[6] = KeyPath;
  v13 = swift_allocObject();
  *(v13 + 112) = 1;
  *(v13 + 128) = 0;
  *(v13 + 136) = 0;
  *(v13 + 120) = 0;
  *(v13 + 160) = MEMORY[0x1E69E7CC0];
  *(v13 + 168) = 0;
  *(v13 + 210) = 0;
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

  v16 = *(v13 + 64);
  v17 = *(v13 + 72);
  *(v13 + 64) = sub_1AF58C964;
  *(v13 + 72) = KeyPath;
  sub_1AF0FB8EC(v16, v17);
  *(v13 + 168) = 0;
  *(v13 + 176) = 0;

  *(v13 + 216) = v4;

  *(v74 + 32) = v13;
  v18 = swift_getKeyPath();
  v19 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v20 = swift_allocObject();
  v20[4] = sub_1AF58C9A4;
  v20[5] = v18;
  v20[2] = sub_1AF58C9D8;
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
  *(v21 + 48) = 4;
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
  *(v21 + 64) = sub_1AF58CA34;
  *(v21 + 72) = v18;
  sub_1AF0FB8EC(v25, v26);
  *(v21 + 168) = 0;
  *(v21 + 176) = 0;

  *(v21 + 216) = 0;

  *(v74 + 40) = v21;
  v27 = swift_getKeyPath();
  v28 = swift_getKeyPath();
  v29 = swift_allocObject();
  v29[4] = sub_1AF5AA354;
  v29[5] = v28;
  v29[2] = sub_1AF5A9C74;
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
  *(v30 + 16) = 0x65646E4965646F6DLL;
  *(v30 + 24) = 0xE900000000000078;
  *(v30 + 32) = v28;
  *(v30 + 40) = v2;
  *(v30 + 48) = 0;
  *(v30 + 56) = 1;
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
  if (v6)
  {
    v2 = (*(v6 + 8))();
  }

  v31 = swift_conformsToProtocol2();
  if (v31 && v2)
  {
    *(v30 + 160) = (*(v31 + 8))(v2, v31);
  }

  *(v30 + 64) = sub_1AF5A9798;
  *(v30 + 72) = v28;
  sub_1AF0FB8EC(0, 0);
  *(v30 + 168) = 0;
  *(v30 + 176) = 0;

  *(v30 + 216) = 0;
  v32 = &type metadata for ParticleColorInit.Mode;
  sub_1AF5A9240(0, &unk_1EB632550, &type metadata for ParticleColorInit.Mode, type metadata accessor for EntityGetSet);
  v33 = swift_allocObject();
  v33[4] = sub_1AF58CA74;
  v33[5] = v27;
  v33[2] = sub_1AF58CAB0;
  v33[3] = v27;
  v33[6] = v27;
  v34 = swift_allocObject();
  *(v34 + 112) = 1;
  *(v34 + 128) = 0;
  *(v34 + 136) = 0;
  *(v34 + 120) = 0;
  *(v34 + 160) = MEMORY[0x1E69E7CC0];
  *(v34 + 168) = 0;
  *(v34 + 216) = 0;
  *(v34 + 176) = 0;
  *(v34 + 16) = 1701080941;
  *(v34 + 24) = 0xE400000000000000;
  *(v34 + 32) = v27;
  *(v34 + 40) = &type metadata for ParticleColorInit.Mode;
  *(v34 + 48) = 8;
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
  *(v34 + 104) = 0;
  *(v34 + 144) = xmmword_1AFE22A20;
  *(v34 + 80) = v33;
  *(v34 + 88) = &off_1F2535378;
  *(v34 + 210) = 0;
  v35 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v35)
  {
    v32 = (*(v35 + 8))();
  }

  v36 = swift_conformsToProtocol2();
  if (v36 && v32)
  {
    *(v34 + 160) = (*(v36 + 8))(v32, v36);
  }

  *(v34 + 64) = sub_1AF58CAF0;
  *(v34 + 72) = v27;
  sub_1AF0FB8EC(0, 0);
  *(v34 + 168) = 0;
  *(v34 + 176) = 0;

  *(v34 + 216) = v30;
  *(v74 + 48) = v34;
  v37 = swift_getKeyPath();
  v38 = swift_getKeyPath();
  v39 = swift_allocObject();
  v39[4] = sub_1AF5A945C;
  v39[5] = v37;
  v39[2] = sub_1AF5A9C78;
  v39[3] = v37;
  v39[6] = v37;
  v40 = swift_allocObject();
  *(v40 + 112) = 1;
  *(v40 + 128) = 0;
  *(v40 + 136) = 0;
  *(v40 + 120) = 0;
  *(v40 + 160) = MEMORY[0x1E69E7CC0];
  *(v40 + 168) = 0;
  *(v40 + 216) = 0;
  *(v40 + 176) = 0;
  *(v40 + 16) = 0x6C616353656D6974;
  *(v40 + 24) = 0xE900000000000065;
  *(v40 + 32) = v37;
  *(v40 + 40) = v19;
  *(v40 + 48) = 0;
  *(v40 + 56) = 1;
  *(v40 + 58) = 0;
  *(v40 + 184) = 0;
  *(v40 + 188) = 1;
  *(v40 + 192) = 0;
  *(v40 + 196) = 1;
  *(v40 + 200) = 0x1000100000000;
  *(v40 + 208) = 1;
  *(v40 + 64) = 0;
  *(v40 + 72) = 0;
  *(v40 + 96) = v38;
  *(v40 + 104) = 0;
  *(v40 + 144) = xmmword_1AFE22A20;
  *(v40 + 80) = v39;
  *(v40 + 88) = &off_1F2535378;
  *(v40 + 210) = 0;
  swift_retain_n();

  if (v22)
  {
    v19 = (*(v22 + 8))();
  }

  v41 = swift_conformsToProtocol2();
  if (v41 && v19)
  {
    v42 = (*(v41 + 8))(v19, v41);

    *(v40 + 160) = v42;
  }

  else
  {
  }

  *(v40 + 64) = sub_1AF5A979C;
  *(v40 + 72) = v37;
  sub_1AF0FB8EC(0, 0);
  *(v40 + 168) = 0;
  *(v40 + 176) = 0;

  *(v40 + 216) = 0;
  *(v74 + 56) = v40;
  v43 = swift_getKeyPath();
  v44 = swift_getKeyPath();
  v45 = &type metadata for ColorRamp;
  sub_1AF5A9240(0, &qword_1ED722B88, &type metadata for ColorRamp, type metadata accessor for EntityGetSet);
  v46 = swift_allocObject();
  v46[4] = sub_1AF58CB30;
  v46[5] = v43;
  v46[2] = sub_1AF58CB48;
  v46[3] = v43;
  v46[6] = v43;
  v47 = swift_allocObject();
  *(v47 + 112) = 1;
  *(v47 + 128) = 0;
  *(v47 + 136) = 0;
  *(v47 + 120) = 0;
  *(v47 + 160) = MEMORY[0x1E69E7CC0];
  *(v47 + 168) = 0;
  *(v47 + 216) = 0;
  *(v47 + 176) = 0;
  *(v47 + 16) = 1886216562;
  *(v47 + 24) = 0xE400000000000000;
  *(v47 + 32) = v43;
  *(v47 + 40) = &type metadata for ColorRamp;
  *(v47 + 48) = 48;
  *(v47 + 56) = 0;
  *(v47 + 58) = 0;
  *(v47 + 184) = 0;
  *(v47 + 188) = 1;
  *(v47 + 192) = 0;
  *(v47 + 196) = 1;
  *(v47 + 200) = 0x1000100000000;
  *(v47 + 208) = 1;
  *(v47 + 64) = 0;
  *(v47 + 72) = 0;
  *(v47 + 96) = v44;
  *(v47 + 104) = 0;
  *(v47 + 144) = xmmword_1AFE22A20;
  *(v47 + 80) = v46;
  *(v47 + 88) = &off_1F2535378;
  *(v47 + 210) = 0;
  v48 = swift_conformsToProtocol2();
  swift_retain_n();

  if (v48)
  {
    v45 = (*(v48 + 8))();
  }

  v49 = swift_conformsToProtocol2();
  if (v49 && v45)
  {
    v50 = (*(v49 + 8))(v45, v49);

    *(v47 + 160) = v50;
  }

  else
  {
  }

  *(v47 + 64) = sub_1AF58CB78;
  *(v47 + 72) = v43;
  sub_1AF0FB8EC(0, 0);
  *(v47 + 168) = 0;
  *(v47 + 176) = 0;

  *(v47 + 216) = 0;
  *(v74 + 64) = v47;
  v51 = swift_getKeyPath();
  v52 = swift_getKeyPath();
  sub_1AF57B9C0(0);
  v53 = swift_allocObject();
  v53[4] = sub_1AF58CBB8;
  v53[5] = v51;
  v53[2] = sub_1AF58CBD0;
  v53[3] = v51;
  v53[6] = v51;
  v54 = swift_allocObject();
  *(v54 + 104) = 0;
  *(v54 + 112) = 1;
  *(v54 + 128) = 0;
  *(v54 + 136) = 0;
  *(v54 + 120) = 0;
  *(v54 + 160) = MEMORY[0x1E69E7CC0];
  *(v54 + 216) = 0;
  v55 = MEMORY[0x1E69E6448];
  sub_1AF583D60(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
  v57 = v56;
  *(v54 + 168) = 0;
  *(v54 + 176) = 0;
  *(v54 + 16) = 0x726F6C6F63;
  *(v54 + 24) = 0xE500000000000000;
  *(v54 + 32) = v51;
  *(v54 + 40) = v56;
  *(v54 + 48) = 32;
  *(v54 + 56) = 0;
  *(v54 + 58) = 0;
  *(v54 + 184) = 0;
  *(v54 + 188) = 1;
  *(v54 + 192) = 0;
  *(v54 + 196) = 1;
  *(v54 + 200) = 0x1000100000000;
  *(v54 + 208) = 1;
  *(v54 + 64) = 0;
  *(v54 + 72) = 0;
  *(v54 + 96) = v52;
  *(v54 + 144) = xmmword_1AFE55160;
  *(v54 + 80) = v53;
  *(v54 + 88) = &off_1F2535378;
  *(v54 + 210) = 0;
  v58 = swift_conformsToProtocol2();
  swift_retain_n();

  if (v58 && v57)
  {
    v57 = (*(v58 + 8))(v57, v58);
  }

  v59 = swift_conformsToProtocol2();
  if (v59 && v57)
  {
    v60 = (*(v59 + 8))(v57, v59);

    *(v54 + 160) = v60;
  }

  else
  {
  }

  v61 = *(v54 + 64);
  v62 = *(v54 + 72);
  *(v54 + 64) = sub_1AF58CC34;
  *(v54 + 72) = v51;
  sub_1AF0FB8EC(v61, v62);
  *(v54 + 168) = 0;
  *(v54 + 176) = 0;

  *(v54 + 216) = 0;

  *(v74 + 72) = v54;
  v63 = swift_getKeyPath();
  v64 = swift_allocObject();
  v64[4] = sub_1AF5A945C;
  v64[5] = v63;
  v64[2] = sub_1AF5A9C78;
  v64[3] = v63;
  v64[6] = v63;
  v65 = swift_allocObject();
  *(v65 + 112) = 1;
  *(v65 + 128) = 0;
  *(v65 + 136) = 0;
  *(v65 + 120) = 0;
  *(v65 + 160) = MEMORY[0x1E69E7CC0];
  *(v65 + 168) = 0;
  *(v65 + 216) = 0;
  *(v65 + 176) = 0;
  *(v65 + 16) = 0x7469736E65746E69;
  *(v65 + 24) = 0xE900000000000079;
  *(v65 + 32) = v63;
  *(v65 + 40) = v55;
  *(v65 + 48) = 16;
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
  *(v65 + 96) = 0;
  *(v65 + 104) = 0;
  *(v65 + 144) = xmmword_1AFE22A20;
  *(v65 + 80) = v64;
  *(v65 + 88) = &off_1F2535378;
  *(v65 + 210) = 0;
  swift_retain_n();
  if (v22)
  {
    v55 = (*(v22 + 8))();
  }

  v66 = swift_conformsToProtocol2();
  if (v66 && v55)
  {
    *(v65 + 160) = (*(v66 + 8))(v55, v66);
  }

  *(v65 + 64) = sub_1AF5A979C;
  *(v65 + 72) = v63;
  sub_1AF0FB8EC(0, 0);
  *(v65 + 168) = 0;
  *(v65 + 176) = 0;

  *(v65 + 216) = 0;
  *(v74 + 80) = v65;
  v67 = swift_getKeyPath();
  v68 = MEMORY[0x1E69E6370];
  sub_1AF5A9240(0, &qword_1ED722B80, MEMORY[0x1E69E6370], type metadata accessor for EntityGetSet);
  v69 = swift_allocObject();
  v69[4] = sub_1AF58CC78;
  v69[5] = v67;
  v69[2] = sub_1AF58CCA4;
  v69[3] = v67;
  v69[6] = v67;
  v70 = swift_allocObject();
  *(v70 + 112) = 1;
  *(v70 + 128) = 0;
  *(v70 + 136) = 0;
  *(v70 + 120) = 0;
  *(v70 + 160) = MEMORY[0x1E69E7CC0];
  *(v70 + 168) = 0;
  *(v70 + 216) = 0;
  *(v70 + 176) = 0;
  strcpy((v70 + 16), "affectsAlpha");
  *(v70 + 29) = 0;
  *(v70 + 30) = -5120;
  *(v70 + 32) = v67;
  *(v70 + 40) = v68;
  *(v70 + 48) = 20;
  *(v70 + 56) = 0;
  *(v70 + 58) = 0;
  *(v70 + 184) = 0;
  *(v70 + 188) = 1;
  *(v70 + 192) = 0;
  *(v70 + 196) = 1;
  *(v70 + 200) = 0x1000100000000;
  *(v70 + 208) = 1;
  *(v70 + 64) = 0;
  *(v70 + 72) = 0;
  *(v70 + 96) = 0;
  *(v70 + 104) = 0;
  *(v70 + 144) = xmmword_1AFE22A20;
  *(v70 + 80) = v69;
  *(v70 + 88) = &off_1F2535378;
  *(v70 + 210) = 0;
  v71 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v71)
  {
    v68 = (*(v71 + 8))();
  }

  v72 = swift_conformsToProtocol2();
  if (v72 && v68)
  {
    *(v70 + 160) = (*(v72 + 8))(v68, v72);
  }

  *(v70 + 64) = sub_1AF58CD00;
  *(v70 + 72) = v67;
  sub_1AF0FB8EC(0, 0);
  *(v70 + 168) = 0;
  *(v70 + 176) = 0;

  *(v70 + 216) = 0;
  *(v74 + 88) = v70;
  qword_1EB6C27A8 = v74;
  return result;
}

uint64_t sub_1AF4CC3D4()
{
  if (*(v0 + 12) == 1)
  {
    return *(v0 + 8);
  }

  else
  {
    return 3;
  }
}

uint64_t sub_1AF4CC3F0(uint64_t result)
{
  if (result == 3)
  {
    if (*(v1 + 12))
    {
      *(v1 + 8) = 1065353216;
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

float sub_1AF4CC448()
{
  result = *(v0 + 8);
  if (*(v0 + 12))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_1AF4CC48C()
{
  if (*(v0 + 8))
  {
    return 0;
  }

  else
  {
    return *(v0 + 12);
  }
}

uint64_t sub_1AF4CC4A0(uint64_t result, int a2)
{
  if (result == 3)
  {
    if (*(v2 + 4) == 1)
    {
      *v2 = a2;
      *(v2 + 4) = 0;
    }
  }

  else
  {
    if (result == 2)
    {
      *v2 = 2;
    }

    else
    {
      *v2 = result == 1;
    }

    *(v2 + 4) = 1;
  }

  return result;
}

uint64_t sub_1AF4CC510()
{
  if (qword_1EB631C08 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1AF4CC600()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE55130;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF58D18C;
  v3[5] = KeyPath;
  v3[2] = sub_1AF58D1C0;
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
  *(v4 + 16) = 0x5464657370616C65;
  *(v4 + 24) = 0xEB00000000656D69;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = v2;
  *(v4 + 48) = 96;
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

  *(v4 + 64) = sub_1AF58D21C;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0, 0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  v8 = swift_getKeyPath();
  v9 = MEMORY[0x1E69E6530];
  sub_1AF5A9240(0, &qword_1ED722B68, MEMORY[0x1E69E6530], type metadata accessor for EntityGetSet);
  v10 = swift_allocObject();
  v10[4] = sub_1AF58D25C;
  v10[5] = v8;
  v10[2] = sub_1AF58D290;
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
  strcpy((v11 + 16), "generatedCount");
  *(v11 + 31) = -18;
  *(v11 + 32) = v8;
  *(v11 + 40) = v9;
  *(v11 + 48) = 104;
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
    v13 = (*(v12 + 8))();
  }

  else
  {
    v13 = v9;
  }

  v14 = swift_conformsToProtocol2();
  if (v14 && v13)
  {
    *(v11 + 160) = (*(v14 + 8))(v13, v14);
  }

  *(v11 + 64) = sub_1AF58D2EC;
  *(v11 + 72) = v8;
  sub_1AF0FB8EC(0, 0);
  *(v11 + 168) = 0;
  *(v11 + 176) = 0;

  *(v11 + 216) = 0;
  *(v0 + 40) = v11;
  v15 = swift_getKeyPath();
  v16 = swift_allocObject();
  v16[4] = sub_1AF5AA358;
  v16[5] = v15;
  v16[2] = sub_1AF5A9C88;
  v16[3] = v15;
  v16[6] = v15;
  v17 = swift_allocObject();
  *(v17 + 112) = 1;
  *(v17 + 128) = 0;
  *(v17 + 136) = 0;
  *(v17 + 120) = 0;
  *(v17 + 160) = MEMORY[0x1E69E7CC0];
  *(v17 + 168) = 0;
  *(v17 + 216) = 0;
  *(v17 + 176) = 0;
  *(v17 + 16) = 0xD000000000000013;
  *(v17 + 24) = 0x80000001AFF2A8C0;
  *(v17 + 32) = v15;
  *(v17 + 40) = v9;
  *(v17 + 48) = 112;
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
  swift_retain_n();
  if (v12)
  {
    v9 = (*(v12 + 8))();
  }

  v18 = swift_conformsToProtocol2();
  if (v18 && v9)
  {
    *(v17 + 160) = (*(v18 + 8))(v9, v18);
  }

  *(v17 + 64) = sub_1AF5A97B0;
  *(v17 + 72) = v15;
  sub_1AF0FB8EC(0, 0);
  *(v17 + 168) = 0;
  *(v17 + 176) = 0;

  *(v17 + 216) = 0;
  *(v0 + 48) = v17;
  qword_1EB6C2A80 = v0;
  return result;
}

uint64_t sub_1AF4CCC8C()
{
  if (qword_1EB6337D0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1AF4CCD14()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE55240;
  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  v3 = MEMORY[0x1E69E7360];
  sub_1AF5A9240(0, &unk_1EB634340, MEMORY[0x1E69E7360], type metadata accessor for EntityGetSet);
  v4 = swift_allocObject();
  v4[4] = sub_1AF58D440;
  v4[5] = v2;
  v4[2] = sub_1AF58D474;
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
  v258 = v6;
  if (v6)
  {
    v7 = (*(v6 + 8))();
  }

  else
  {
    v7 = v3;
  }

  v260 = v0;
  v8 = swift_conformsToProtocol2();
  if (v8 && v7)
  {
    *(v5 + 160) = (*(v8 + 8))(v7, v8);
  }

  v9 = *(v5 + 64);
  v10 = *(v5 + 72);
  *(v5 + 64) = sub_1AF58D4D0;
  *(v5 + 72) = v2;
  sub_1AF0FB8EC(v9, v10);
  *(v5 + 168) = 0;
  *(v5 + 176) = 0;

  *(v5 + 216) = 0;

  v11 = &type metadata for EmitterShape.Shape;
  sub_1AF5A9240(0, &qword_1EB6338C0, &type metadata for EmitterShape.Shape, type metadata accessor for EntityGetSet);
  v12 = swift_allocObject();
  v12[4] = sub_1AF58D510;
  v12[5] = KeyPath;
  v12[2] = sub_1AF58D54C;
  v12[3] = KeyPath;
  v12[6] = KeyPath;
  v13 = swift_allocObject();
  *(v13 + 112) = 1;
  *(v13 + 128) = 0;
  *(v13 + 136) = 0;
  *(v13 + 120) = 0;
  *(v13 + 160) = MEMORY[0x1E69E7CC0];
  *(v13 + 168) = 0;
  *(v13 + 210) = 0;
  *(v13 + 216) = 0;
  *(v13 + 176) = 0;
  *(v13 + 16) = 0x6570616873;
  *(v13 + 24) = 0xE500000000000000;
  *(v13 + 32) = KeyPath;
  *(v13 + 40) = &type metadata for EmitterShape.Shape;
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

  v16 = *(v13 + 64);
  v17 = *(v13 + 72);
  *(v13 + 64) = sub_1AF58D58C;
  *(v13 + 72) = KeyPath;
  sub_1AF0FB8EC(v16, v17);
  *(v13 + 168) = 0;
  *(v13 + 176) = 0;

  *(v13 + 216) = v5;

  *(v0 + 32) = v13;
  v18 = swift_getKeyPath();
  v19 = swift_getKeyPath();
  v20 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v21 = swift_allocObject();
  v21[4] = sub_1AF58D5CC;
  v21[5] = v18;
  v21[2] = sub_1AF58D600;
  v21[3] = v18;
  v21[6] = v18;
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
  *(v22 + 16) = 0xD000000000000010;
  *(v22 + 24) = 0x80000001AFF2A8E0;
  *(v22 + 32) = v18;
  *(v22 + 40) = v20;
  *(v22 + 48) = 0;
  *(v22 + 56) = 1;
  *(v22 + 58) = 0;
  *(v22 + 184) = 0;
  *(v22 + 188) = 1;
  *(v22 + 192) = 0;
  *(v22 + 196) = 1;
  *(v22 + 200) = 0x1000100000000;
  *(v22 + 208) = 1;
  *(v22 + 64) = 0;
  *(v22 + 72) = 0;
  *(v22 + 96) = v19;
  *(v22 + 104) = 0;
  *(v22 + 144) = xmmword_1AFE22A20;
  *(v22 + 80) = v21;
  *(v22 + 88) = &off_1F2535378;
  *(v22 + 210) = 0;
  v23 = swift_conformsToProtocol2();
  swift_retain_n();

  if (v23)
  {
    v20 = (*(v23 + 8))();
  }

  v24 = swift_conformsToProtocol2();
  if (v24 && v20)
  {
    v25 = (*(v24 + 8))(v20, v24);

    *(v22 + 160) = v25;
  }

  else
  {
  }

  v26 = *(v22 + 64);
  v27 = *(v22 + 72);
  *(v22 + 64) = sub_1AF58D65C;
  *(v22 + 72) = v18;
  sub_1AF0FB8EC(v26, v27);
  *(v22 + 168) = 0;
  *(v22 + 176) = 0;

  *(v22 + 216) = 0;

  *(v0 + 40) = v22;
  v28 = swift_getKeyPath();
  v29 = swift_getKeyPath();
  sub_1AF57F2F4(0);
  v30 = swift_allocObject();
  v30[4] = sub_1AF58D440;
  v30[5] = v28;
  v30[2] = sub_1AF58D69C;
  v30[3] = v28;
  v30[6] = v28;
  v31 = swift_allocObject();
  *(v31 + 104) = 0;
  *(v31 + 112) = 1;
  *(v31 + 128) = 0;
  *(v31 + 136) = 0;
  *(v31 + 120) = 0;
  *(v31 + 160) = MEMORY[0x1E69E7CC0];
  *(v31 + 210) = 0;
  *(v31 + 216) = 0;
  sub_1AF589E74(0, &qword_1ED72F958, MEMORY[0x1E69E6448], MEMORY[0x1E69E6468], MEMORY[0x1E69E66A8]);
  v33 = v32;
  *(v31 + 168) = 0;
  *(v31 + 176) = 0;
  strcpy((v31 + 16), "angularLimits");
  *(v31 + 30) = -4864;
  *(v31 + 32) = v28;
  *(v31 + 40) = v32;
  *(v31 + 48) = 8;
  *(v31 + 56) = 0;
  *(v31 + 58) = 0;
  *(v31 + 184) = -1060565029;
  *(v31 + 188) = 0;
  *(v31 + 192) = 1086918619;
  *(v31 + 196) = 0;
  *(v31 + 200) = 0x1000100000000;
  *(v31 + 208) = 1;
  *(v31 + 64) = 0;
  *(v31 + 72) = 0;
  *(v31 + 88) = &off_1F2535378;
  *(v31 + 96) = v29;
  *(v31 + 144) = xmmword_1AFE55150;
  *(v31 + 80) = v30;
  *(v31 + 210) = 0;
  v34 = swift_conformsToProtocol2();
  if (v34)
  {
    v35 = v33;
  }

  else
  {
    v35 = 0;
  }

  swift_retain_n();

  v254 = v33;
  if (v35)
  {
    v33 = (*(v34 + 8))(v35, v34);
  }

  v256 = v35;
  v36 = swift_conformsToProtocol2();
  v255 = v34;
  if (v36 && v33)
  {
    v37 = (*(v36 + 8))(v33, v36);

    *(v31 + 160) = v37;
  }

  else
  {
  }

  v38 = *(v31 + 64);
  v39 = *(v31 + 72);
  *(v31 + 64) = sub_1AF58D6F8;
  *(v31 + 72) = v28;
  sub_1AF0FB8EC(v38, v39);
  *(v31 + 168) = 0;
  *(v31 + 176) = 0;

  *(v31 + 216) = 0;

  v260[6] = v31;
  v40 = swift_getKeyPath();
  v41 = swift_getKeyPath();
  v42 = swift_getKeyPath();
  v43 = swift_allocObject();
  v43[4] = sub_1AF5AA35C;
  v43[5] = v42;
  v43[2] = sub_1AF5A9C90;
  v43[3] = v42;
  v43[6] = v42;
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
  *(v44 + 16) = 0xD000000000000011;
  *(v44 + 24) = 0x80000001AFF2A6E0;
  *(v44 + 32) = v42;
  v45 = MEMORY[0x1E69E7360];
  *(v44 + 40) = MEMORY[0x1E69E7360];
  *(v44 + 48) = 0;
  *(v44 + 56) = 1;
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
  swift_retain_n();
  if (v258)
  {
    v45 = (*(v258 + 8))();
  }

  v46 = swift_conformsToProtocol2();
  if (v46 && v45)
  {
    *(v44 + 160) = (*(v46 + 8))(v45, v46);
  }

  v47 = *(v44 + 64);
  v48 = *(v44 + 72);
  *(v44 + 64) = sub_1AF5A97B4;
  *(v44 + 72) = v42;
  sub_1AF0FB8EC(v47, v48);
  *(v44 + 168) = 0;
  *(v44 + 176) = 0;

  *(v44 + 216) = 0;

  v49 = &type metadata for ShapeDistribution;
  sub_1AF5A9240(0, &qword_1EB633898, &type metadata for ShapeDistribution, type metadata accessor for EntityGetSet);
  v50 = swift_allocObject();
  v50[4] = sub_1AF5A97B8;
  v50[5] = v40;
  v50[2] = sub_1AF58D73C;
  v50[3] = v40;
  v50[6] = v40;
  v51 = swift_allocObject();
  *(v51 + 112) = 1;
  *(v51 + 128) = 0;
  *(v51 + 136) = 0;
  *(v51 + 120) = 0;
  *(v51 + 160) = MEMORY[0x1E69E7CC0];
  *(v51 + 168) = 0;
  *(v51 + 210) = 0;
  *(v51 + 216) = 0;
  *(v51 + 176) = 0;
  strcpy((v51 + 16), "distribution");
  *(v51 + 29) = 0;
  *(v51 + 30) = -5120;
  *(v51 + 32) = v40;
  *(v51 + 40) = &type metadata for ShapeDistribution;
  *(v51 + 48) = 16;
  *(v51 + 56) = 0;
  *(v51 + 58) = 0;
  *(v51 + 184) = 0;
  *(v51 + 188) = 1;
  *(v51 + 192) = 0;
  *(v51 + 196) = 1;
  *(v51 + 200) = 0x1000100000000;
  *(v51 + 208) = 1;
  *(v51 + 64) = 0;
  *(v51 + 72) = 0;
  *(v51 + 96) = v41;
  *(v51 + 104) = 0;
  *(v51 + 144) = xmmword_1AFE22A20;
  *(v51 + 80) = v50;
  *(v51 + 88) = &off_1F2535378;
  *(v51 + 210) = 0;
  v52 = swift_conformsToProtocol2();
  swift_retain_n();

  if (v52)
  {
    v49 = (*(v52 + 8))();
  }

  v53 = swift_conformsToProtocol2();
  if (v53 && v49)
  {
    v54 = (*(v53 + 8))(v49, v53);

    *(v51 + 160) = v54;
  }

  else
  {
  }

  v55 = *(v51 + 64);
  v56 = *(v51 + 72);
  *(v51 + 64) = sub_1AF58D7A0;
  *(v51 + 72) = v40;
  sub_1AF0FB8EC(v55, v56);
  *(v51 + 168) = 0;
  *(v51 + 176) = 0;

  *(v51 + 216) = v44;

  v260[7] = v51;
  v57 = swift_getKeyPath();
  v58 = swift_getKeyPath();
  v59 = swift_getKeyPath();
  v60 = swift_allocObject();
  v60[4] = sub_1AF5AA35C;
  v60[5] = v59;
  v60[2] = sub_1AF5A9C90;
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
  *(v61 + 16) = 0xD000000000000012;
  *(v61 + 24) = 0x80000001AFF2A900;
  *(v61 + 32) = v59;
  v62 = MEMORY[0x1E69E7360];
  *(v61 + 40) = MEMORY[0x1E69E7360];
  *(v61 + 48) = 0;
  *(v61 + 56) = 1;
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
  if (v258)
  {
    v62 = (*(v258 + 8))();
  }

  v63 = swift_conformsToProtocol2();
  if (v63 && v62)
  {
    *(v61 + 160) = (*(v63 + 8))(v62, v63);
  }

  v64 = *(v61 + 64);
  v65 = *(v61 + 72);
  *(v61 + 64) = sub_1AF5A97B4;
  *(v61 + 72) = v59;
  sub_1AF0FB8EC(v64, v65);
  *(v61 + 168) = 0;
  *(v61 + 176) = 0;

  *(v61 + 216) = 0;

  v66 = &type metadata for EmissionOrder;
  sub_1AF5A9240(0, &unk_1EB6338A0, &type metadata for EmissionOrder, type metadata accessor for EntityGetSet);
  v67 = swift_allocObject();
  v67[4] = sub_1AF5AA144;
  v67[5] = v57;
  v67[2] = sub_1AF58D7E0;
  v67[3] = v57;
  v67[6] = v57;
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
  strcpy((v68 + 16), "emissionOrder");
  *(v68 + 30) = -4864;
  *(v68 + 32) = v57;
  *(v68 + 40) = &type metadata for EmissionOrder;
  *(v68 + 48) = 33;
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
  *(v68 + 96) = v58;
  *(v68 + 104) = 0;
  *(v68 + 144) = xmmword_1AFE22A20;
  *(v68 + 80) = v67;
  *(v68 + 88) = &off_1F2535378;
  *(v68 + 210) = 0;
  v69 = swift_conformsToProtocol2();
  swift_retain_n();

  if (v69)
  {
    v66 = (*(v69 + 8))();
  }

  v70 = swift_conformsToProtocol2();
  if (v70 && v66)
  {
    v71 = (*(v70 + 8))(v66, v70);

    *(v68 + 160) = v71;
  }

  else
  {
  }

  v72 = *(v68 + 64);
  v73 = *(v68 + 72);
  *(v68 + 64) = sub_1AF58D83C;
  *(v68 + 72) = v57;
  sub_1AF0FB8EC(v72, v73);
  *(v68 + 168) = 0;
  *(v68 + 176) = 0;

  *(v68 + 216) = v61;

  v260[8] = v68;
  v74 = swift_getKeyPath();
  v75 = swift_getKeyPath();
  sub_1AF579ADC(0);
  v76 = swift_allocObject();
  v76[4] = sub_1AF58D87C;
  v76[5] = v74;
  v76[2] = sub_1AF58D894;
  v76[3] = v74;
  v76[6] = v74;
  v77 = swift_allocObject();
  *(v77 + 104) = 0;
  *(v77 + 112) = 1;
  *(v77 + 128) = 0;
  *(v77 + 136) = 0;
  *(v77 + 120) = 0;
  *(v77 + 160) = MEMORY[0x1E69E7CC0];
  *(v77 + 210) = 0;
  *(v77 + 216) = 0;
  v78 = MEMORY[0x1E69E7668];
  sub_1AF583D60(0, &qword_1ED72F730, sub_1AF477BB4, MEMORY[0x1E69E7668], MEMORY[0x1E69E7450]);
  v80 = v79;
  *(v77 + 168) = 0;
  *(v77 + 176) = 0;
  strcpy((v77 + 16), "gridDimensions");
  *(v77 + 31) = -18;
  *(v77 + 32) = v74;
  *(v77 + 40) = v79;
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
  *(v77 + 96) = v75;
  *(v77 + 144) = xmmword_1AFE22A20;
  *(v77 + 80) = v76;
  *(v77 + 88) = &off_1F2535378;
  *(v77 + 210) = 0;
  v81 = swift_conformsToProtocol2();
  swift_retain_n();

  if (v81 && v80)
  {
    v80 = (*(v81 + 8))(v80, v81);
  }

  v82 = swift_conformsToProtocol2();
  if (v82 && v80)
  {
    v83 = (*(v82 + 8))(v80, v82);

    *(v77 + 160) = v83;
  }

  else
  {
  }

  v84 = *(v77 + 64);
  v85 = *(v77 + 72);
  *(v77 + 64) = sub_1AF58D8F8;
  *(v77 + 72) = v74;
  sub_1AF0FB8EC(v84, v85);
  *(v77 + 168) = 0;
  *(v77 + 176) = 0;

  *(v77 + 216) = 0;

  v260[9] = v77;
  v86 = swift_getKeyPath();
  v87 = swift_getKeyPath();
  sub_1AF5A9240(0, &qword_1ED725C68, v78, type metadata accessor for EntityGetSet);
  v88 = swift_allocObject();
  v88[4] = sub_1AF58D5CC;
  v88[5] = v86;
  v88[2] = sub_1AF58D93C;
  v88[3] = v86;
  v88[6] = v86;
  v89 = swift_allocObject();
  *(v89 + 112) = 1;
  *(v89 + 128) = 0;
  *(v89 + 136) = 0;
  *(v89 + 120) = 0;
  *(v89 + 160) = MEMORY[0x1E69E7CC0];
  *(v89 + 168) = 0;
  *(v89 + 210) = 0;
  *(v89 + 216) = 0;
  *(v89 + 176) = 0;
  strcpy((v89 + 16), "uniformCount");
  *(v89 + 29) = 0;
  *(v89 + 30) = -5120;
  *(v89 + 32) = v86;
  *(v89 + 40) = v78;
  *(v89 + 48) = 0;
  *(v89 + 56) = 1;
  *(v89 + 58) = 0;
  *(v89 + 184) = 0;
  *(v89 + 188) = 1;
  *(v89 + 192) = 0;
  *(v89 + 196) = 1;
  *(v89 + 200) = 0x1000100000000;
  *(v89 + 208) = 1;
  *(v89 + 64) = 0;
  *(v89 + 72) = 0;
  *(v89 + 96) = v87;
  *(v89 + 104) = 0;
  *(v89 + 144) = xmmword_1AFE22A20;
  *(v89 + 80) = v88;
  *(v89 + 88) = &off_1F2535378;
  *(v89 + 210) = 0;
  v90 = swift_conformsToProtocol2();
  swift_retain_n();

  if (v90)
  {
    v78 = (*(v90 + 8))();
  }

  v91 = swift_conformsToProtocol2();
  if (v91 && v78)
  {
    v92 = (*(v91 + 8))(v78, v91);

    *(v89 + 160) = v92;
  }

  else
  {
  }

  v93 = *(v89 + 64);
  v94 = *(v89 + 72);
  *(v89 + 64) = sub_1AF58D9AC;
  *(v89 + 72) = v86;
  sub_1AF0FB8EC(v93, v94);
  *(v89 + 168) = 0;
  *(v89 + 176) = 0;

  *(v89 + 216) = 0;

  v260[10] = v89;
  v95 = swift_getKeyPath();
  v96 = swift_getKeyPath();
  v97 = MEMORY[0x1E69E6370];
  sub_1AF5A9240(0, &qword_1ED722B80, MEMORY[0x1E69E6370], type metadata accessor for EntityGetSet);
  v98 = swift_allocObject();
  v98[4] = sub_1AF58D9EC;
  v98[5] = v95;
  v98[2] = sub_1AF58DA18;
  v98[3] = v95;
  v98[6] = v95;
  v99 = swift_allocObject();
  *(v99 + 112) = 1;
  *(v99 + 128) = 0;
  *(v99 + 136) = 0;
  *(v99 + 120) = 0;
  *(v99 + 160) = MEMORY[0x1E69E7CC0];
  *(v99 + 168) = 0;
  *(v99 + 210) = 0;
  *(v99 + 216) = 0;
  *(v99 + 176) = 0;
  strcpy((v99 + 16), "emitOnSurface");
  *(v99 + 30) = -4864;
  *(v99 + 32) = v95;
  *(v99 + 40) = v97;
  *(v99 + 48) = 34;
  *(v99 + 56) = 0;
  *(v99 + 58) = 0;
  *(v99 + 184) = 0;
  *(v99 + 188) = 1;
  *(v99 + 192) = 0;
  *(v99 + 196) = 1;
  *(v99 + 200) = 0x1000100000000;
  *(v99 + 208) = 1;
  *(v99 + 64) = 0;
  *(v99 + 72) = 0;
  *(v99 + 96) = v96;
  *(v99 + 104) = 0;
  *(v99 + 144) = xmmword_1AFE22A20;
  *(v99 + 80) = v98;
  *(v99 + 88) = &off_1F2535378;
  *(v99 + 210) = 0;
  v100 = swift_conformsToProtocol2();
  swift_retain_n();

  if (v100)
  {
    v97 = (*(v100 + 8))();
  }

  v101 = swift_conformsToProtocol2();
  v253 = v100;
  if (v101 && v97)
  {
    v102 = (*(v101 + 8))(v97, v101);

    *(v99 + 160) = v102;
  }

  else
  {
  }

  v103 = *(v99 + 64);
  v104 = *(v99 + 72);
  *(v99 + 64) = sub_1AF58DA74;
  *(v99 + 72) = v95;
  sub_1AF0FB8EC(v103, v104);
  *(v99 + 168) = 0;
  *(v99 + 176) = 0;

  *(v99 + 216) = 0;

  v260[11] = v99;
  v105 = swift_getKeyPath();
  v106 = swift_getKeyPath();
  v107 = swift_allocObject();
  v107[4] = sub_1AF5AA35C;
  v107[5] = v106;
  v107[2] = sub_1AF5A9C90;
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
  strcpy((v108 + 16), "directionIndex");
  *(v108 + 31) = -18;
  *(v108 + 32) = v106;
  v109 = MEMORY[0x1E69E7360];
  *(v108 + 40) = MEMORY[0x1E69E7360];
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
  *(v108 + 96) = 0;
  *(v108 + 104) = 0;
  *(v108 + 144) = xmmword_1AFE22A20;
  *(v108 + 80) = v107;
  *(v108 + 88) = &off_1F2535378;
  *(v108 + 210) = 0;
  swift_retain_n();
  if (v258)
  {
    v109 = (*(v258 + 8))();
  }

  v110 = swift_conformsToProtocol2();
  if (v110 && v109)
  {
    *(v108 + 160) = (*(v110 + 8))(v109, v110);
  }

  v111 = *(v108 + 64);
  v112 = *(v108 + 72);
  *(v108 + 64) = sub_1AF5A97B4;
  *(v108 + 72) = v106;
  sub_1AF0FB8EC(v111, v112);
  *(v108 + 168) = 0;
  *(v108 + 176) = 0;

  *(v108 + 216) = 0;

  v113 = &type metadata for EmitterShape.Direction;
  sub_1AF5A9240(0, &qword_1EB6338B8, &type metadata for EmitterShape.Direction, type metadata accessor for EntityGetSet);
  v114 = swift_allocObject();
  v114[4] = sub_1AF58DAB4;
  v114[5] = v105;
  v114[2] = sub_1AF58DAE8;
  v114[3] = v105;
  v114[6] = v105;
  v115 = swift_allocObject();
  *(v115 + 112) = 1;
  *(v115 + 128) = 0;
  *(v115 + 136) = 0;
  *(v115 + 120) = 0;
  *(v115 + 160) = MEMORY[0x1E69E7CC0];
  *(v115 + 168) = 0;
  *(v115 + 210) = 0;
  *(v115 + 216) = 0;
  *(v115 + 176) = 0;
  *(v115 + 16) = 0x6F69746365726964;
  *(v115 + 24) = 0xE90000000000006ELL;
  *(v115 + 32) = v105;
  *(v115 + 40) = &type metadata for EmitterShape.Direction;
  *(v115 + 48) = 48;
  *(v115 + 56) = 0;
  *(v115 + 58) = 0;
  *(v115 + 184) = 0;
  *(v115 + 188) = 1;
  *(v115 + 192) = 0;
  *(v115 + 196) = 1;
  *(v115 + 200) = 0x1000100000000;
  *(v115 + 208) = 1;
  *(v115 + 64) = 0;
  *(v115 + 72) = 0;
  *(v115 + 96) = 0;
  *(v115 + 104) = 0;
  *(v115 + 144) = xmmword_1AFE22A20;
  *(v115 + 80) = v114;
  *(v115 + 88) = &off_1F2535378;
  *(v115 + 210) = 0;
  v116 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v116)
  {
    v113 = (*(v116 + 8))();
  }

  v117 = swift_conformsToProtocol2();
  if (v117 && v113)
  {
    *(v115 + 160) = (*(v117 + 8))(v113, v117);
  }

  v118 = *(v115 + 64);
  v119 = *(v115 + 72);
  *(v115 + 64) = sub_1AF58DB4C;
  *(v115 + 72) = v105;
  sub_1AF0FB8EC(v118, v119);
  *(v115 + 168) = 0;
  *(v115 + 176) = 0;

  *(v115 + 216) = v108;

  v260[12] = v115;
  v120 = swift_getKeyPath();
  v121 = swift_getKeyPath();
  sub_1AF57AAE8(0);
  v122 = swift_allocObject();
  v122[4] = sub_1AF58D87C;
  v122[5] = v120;
  v122[2] = sub_1AF58DB8C;
  v122[3] = v120;
  v122[6] = v120;
  v123 = swift_allocObject();
  *(v123 + 104) = 0;
  *(v123 + 112) = 1;
  *(v123 + 128) = 0;
  *(v123 + 136) = 0;
  *(v123 + 120) = 0;
  *(v123 + 160) = MEMORY[0x1E69E7CC0];
  *(v123 + 210) = 0;
  *(v123 + 216) = 0;
  sub_1AF583D60(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
  v125 = v124;
  *(v123 + 168) = 0;
  *(v123 + 176) = 0;
  strcpy((v123 + 16), "worldConstant");
  *(v123 + 30) = -4864;
  *(v123 + 32) = v120;
  *(v123 + 40) = v124;
  *(v123 + 48) = 0;
  *(v123 + 56) = 1;
  *(v123 + 58) = 0;
  *(v123 + 184) = 0;
  *(v123 + 188) = 1;
  *(v123 + 192) = 0;
  *(v123 + 196) = 1;
  *(v123 + 200) = 0x1000100000000;
  *(v123 + 208) = 1;
  *(v123 + 64) = 0;
  *(v123 + 72) = 0;
  *(v123 + 96) = v121;
  *(v123 + 144) = xmmword_1AFE22A20;
  *(v123 + 80) = v122;
  *(v123 + 88) = &off_1F2535378;
  *(v123 + 210) = 0;
  v126 = swift_conformsToProtocol2();
  if (v126)
  {
    v127 = v125;
  }

  else
  {
    v127 = 0;
  }

  swift_retain_n();

  v257 = v125;
  if (v127)
  {
    v125 = (*(v126 + 8))(v127, v126);
  }

  v259 = v127;
  v128 = swift_conformsToProtocol2();
  if (v128 && v125)
  {
    v129 = (*(v128 + 8))(v125, v128);

    *(v123 + 160) = v129;
  }

  else
  {
  }

  v130 = *(v123 + 64);
  v131 = *(v123 + 72);
  *(v123 + 64) = sub_1AF58DBF0;
  *(v123 + 72) = v120;
  sub_1AF0FB8EC(v130, v131);
  *(v123 + 168) = 0;
  *(v123 + 176) = 0;

  *(v123 + 216) = 0;

  v260[13] = v123;
  v132 = swift_getKeyPath();
  v133 = swift_getKeyPath();
  v134 = swift_allocObject();
  v134[4] = sub_1AF5A97BC;
  v134[5] = v132;
  v134[2] = sub_1AF5A9C94;
  v134[3] = v132;
  v134[6] = v132;
  v135 = swift_allocObject();
  *(v135 + 112) = 1;
  *(v135 + 128) = 0;
  *(v135 + 136) = 0;
  *(v135 + 120) = 0;
  *(v135 + 160) = MEMORY[0x1E69E7CC0];
  *(v135 + 168) = 0;
  *(v135 + 210) = 0;
  *(v135 + 216) = 0;
  *(v135 + 176) = 0;
  strcpy((v135 + 16), "localConstant");
  *(v135 + 30) = -4864;
  v136 = v257;
  *(v135 + 32) = v132;
  *(v135 + 40) = v257;
  *(v135 + 48) = 0;
  *(v135 + 56) = 1;
  *(v135 + 58) = 0;
  *(v135 + 184) = 0;
  *(v135 + 188) = 1;
  *(v135 + 192) = 0;
  *(v135 + 196) = 1;
  *(v135 + 200) = 0x1000100000000;
  *(v135 + 208) = 1;
  *(v135 + 64) = 0;
  *(v135 + 72) = 0;
  *(v135 + 96) = v133;
  *(v135 + 104) = 0;
  *(v135 + 144) = xmmword_1AFE22A20;
  *(v135 + 80) = v134;
  *(v135 + 88) = &off_1F2535378;
  *(v135 + 210) = 0;
  swift_retain_n();

  if (v259)
  {
    v136 = (*(v126 + 8))();
  }

  v137 = swift_conformsToProtocol2();
  if (v137 && v136)
  {
    v138 = (*(v137 + 8))(v136, v137);

    *(v135 + 160) = v138;
  }

  else
  {
  }

  v139 = *(v135 + 64);
  v140 = *(v135 + 72);
  *(v135 + 64) = sub_1AF5A97C0;
  *(v135 + 72) = v132;
  sub_1AF0FB8EC(v139, v140);
  *(v135 + 168) = 0;
  *(v135 + 176) = 0;

  *(v135 + 216) = 0;

  v260[14] = v135;
  v141 = swift_getKeyPath();
  sub_1AF58DC7C(0);
  v142 = swift_allocObject();
  v142[4] = sub_1AF58DC34;
  v142[5] = v141;
  v142[2] = sub_1AF58DC68;
  v142[3] = v141;
  v142[6] = v141;
  v143 = swift_allocObject();
  *(v143 + 104) = 0;
  *(v143 + 112) = 1;
  *(v143 + 128) = 0;
  *(v143 + 136) = 0;
  *(v143 + 120) = 0;
  *(v143 + 160) = MEMORY[0x1E69E7CC0];
  *(v143 + 210) = 0;
  *(v143 + 216) = 0;
  sub_1AF5A9240(0, &unk_1EB6338F8, &type metadata for EmitterShape.Direction, MEMORY[0x1E69E6720]);
  *(v143 + 168) = 0;
  *(v143 + 176) = 0;
  *(v143 + 16) = 0x7461746E6569726FLL;
  *(v143 + 24) = 0xEB000000006E6F69;
  *(v143 + 32) = v141;
  *(v143 + 40) = v144;
  *(v143 + 48) = 80;
  *(v143 + 56) = 0;
  *(v143 + 58) = 0;
  *(v143 + 184) = 0;
  *(v143 + 188) = 1;
  *(v143 + 192) = 0;
  *(v143 + 196) = 1;
  *(v143 + 200) = 0x1000100000000;
  *(v143 + 208) = 1;
  *(v143 + 64) = 0;
  *(v143 + 72) = 0;
  *(v143 + 96) = 0;
  *(v143 + 144) = xmmword_1AFE22A20;
  *(v143 + 80) = v142;
  *(v143 + 88) = &off_1F2535378;
  *(v143 + 210) = 0;
  swift_retain_n();
  *(v143 + 160) = sub_1AF5722EC(sub_1AF570020, &type metadata for EmitterShape.Direction);

  v145 = *(v143 + 64);
  v146 = *(v143 + 72);
  *(v143 + 64) = sub_1AF58DCF8;
  *(v143 + 72) = v141;
  sub_1AF0FB8EC(v145, v146);
  *(v143 + 168) = 0;
  *(v143 + 176) = 0;

  *(v143 + 216) = 0;

  v260[15] = v143;
  v147 = swift_getKeyPath();
  v148 = swift_getKeyPath();
  v149 = swift_allocObject();
  v149[4] = sub_1AF5A97BC;
  v149[5] = v147;
  v149[2] = sub_1AF5A9C94;
  v149[3] = v147;
  v149[6] = v147;
  v150 = swift_allocObject();
  *(v150 + 112) = 1;
  *(v150 + 128) = 0;
  *(v150 + 136) = 0;
  *(v150 + 120) = 0;
  *(v150 + 160) = MEMORY[0x1E69E7CC0];
  *(v150 + 168) = 0;
  *(v150 + 176) = 0;
  *(v150 + 210) = 0;
  *(v150 + 216) = 0;
  strcpy((v150 + 16), "worldConstant");
  *(v150 + 30) = -4864;
  *(v150 + 32) = v147;
  *(v150 + 40) = v257;
  *(v150 + 48) = 0;
  *(v150 + 56) = 1;
  *(v150 + 58) = 0;
  *(v150 + 184) = 0;
  *(v150 + 188) = 1;
  *(v150 + 192) = 0;
  *(v150 + 196) = 1;
  *(v150 + 200) = 0x1000100000000;
  *(v150 + 208) = 1;
  *(v150 + 64) = 0;
  *(v150 + 72) = 0;
  *(v150 + 96) = v148;
  *(v150 + 104) = 0;
  *(v150 + 144) = xmmword_1AFE22A20;
  *(v150 + 80) = v149;
  *(v150 + 88) = &off_1F2535378;
  *(v150 + 210) = 0;
  swift_retain_n();

  v151 = v257;
  if (v259)
  {
    v151 = (*(v126 + 8))();
  }

  v152 = swift_conformsToProtocol2();
  if (v152 && v151)
  {
    v153 = (*(v152 + 8))(v151, v152);

    *(v150 + 160) = v153;
  }

  else
  {
  }

  v154 = *(v150 + 64);
  v155 = *(v150 + 72);
  *(v150 + 64) = sub_1AF5A97C0;
  *(v150 + 72) = v147;
  sub_1AF0FB8EC(v154, v155);
  *(v150 + 168) = 0;
  *(v150 + 176) = 0;

  *(v150 + 216) = 0;

  v260[16] = v150;
  v156 = swift_getKeyPath();
  v157 = swift_getKeyPath();
  v158 = swift_allocObject();
  v158[4] = sub_1AF5A97BC;
  v158[5] = v156;
  v158[2] = sub_1AF5A9C94;
  v158[3] = v156;
  v158[6] = v156;
  v159 = swift_allocObject();
  *(v159 + 112) = 1;
  *(v159 + 128) = 0;
  *(v159 + 136) = 0;
  *(v159 + 120) = 0;
  *(v159 + 160) = MEMORY[0x1E69E7CC0];
  *(v159 + 168) = 0;
  *(v159 + 176) = 0;
  *(v159 + 210) = 0;
  *(v159 + 216) = 0;
  strcpy((v159 + 16), "localConstant");
  *(v159 + 30) = -4864;
  *(v159 + 32) = v156;
  *(v159 + 40) = v257;
  *(v159 + 48) = 0;
  *(v159 + 56) = 1;
  *(v159 + 58) = 0;
  *(v159 + 184) = 0;
  *(v159 + 188) = 1;
  *(v159 + 192) = 0;
  *(v159 + 196) = 1;
  *(v159 + 200) = 0x1000100000000;
  *(v159 + 208) = 1;
  *(v159 + 64) = 0;
  *(v159 + 72) = 0;
  *(v159 + 96) = v157;
  *(v159 + 104) = 0;
  *(v159 + 144) = xmmword_1AFE22A20;
  *(v159 + 80) = v158;
  *(v159 + 88) = &off_1F2535378;
  *(v159 + 210) = 0;
  swift_retain_n();

  v160 = v257;
  if (v259)
  {
    v160 = (*(v126 + 8))();
  }

  v161 = swift_conformsToProtocol2();
  if (v161 && v160)
  {
    v162 = (*(v161 + 8))(v160, v161);

    *(v159 + 160) = v162;
  }

  else
  {
  }

  v163 = *(v159 + 64);
  v164 = *(v159 + 72);
  *(v159 + 64) = sub_1AF5A97C0;
  *(v159 + 72) = v156;
  sub_1AF0FB8EC(v163, v164);
  *(v159 + 168) = 0;
  *(v159 + 176) = 0;

  *(v159 + 216) = 0;

  v260[17] = v159;
  v165 = swift_getKeyPath();
  v166 = swift_getKeyPath();
  v167 = swift_allocObject();
  v167[4] = sub_1AF5AA35C;
  v167[5] = v166;
  v167[2] = sub_1AF5A9C90;
  v167[3] = v166;
  v167[6] = v166;
  v168 = swift_allocObject();
  *(v168 + 112) = 1;
  *(v168 + 128) = 0;
  *(v168 + 136) = 0;
  *(v168 + 120) = 0;
  *(v168 + 160) = MEMORY[0x1E69E7CC0];
  *(v168 + 168) = 0;
  *(v168 + 176) = 0;
  *(v168 + 210) = 0;
  *(v168 + 216) = 0;
  *(v168 + 16) = 0xD000000000000017;
  *(v168 + 24) = 0x80000001AFF2A920;
  *(v168 + 32) = v166;
  v169 = MEMORY[0x1E69E7360];
  *(v168 + 40) = MEMORY[0x1E69E7360];
  *(v168 + 48) = 0;
  *(v168 + 56) = 1;
  *(v168 + 58) = 0;
  *(v168 + 184) = 0;
  *(v168 + 188) = 1;
  *(v168 + 192) = 0;
  *(v168 + 196) = 1;
  *(v168 + 200) = 0x1000100000000;
  *(v168 + 208) = 1;
  *(v168 + 64) = 0;
  *(v168 + 72) = 0;
  *(v168 + 96) = 0;
  *(v168 + 104) = 0;
  *(v168 + 144) = xmmword_1AFE22A20;
  *(v168 + 80) = v167;
  *(v168 + 88) = &off_1F2535378;
  *(v168 + 210) = 0;
  swift_retain_n();
  if (v258)
  {
    v169 = (*(v258 + 8))();
  }

  v170 = swift_conformsToProtocol2();
  if (v170 && v169)
  {
    *(v168 + 160) = (*(v170 + 8))(v169, v170);
  }

  v171 = *(v168 + 64);
  v172 = *(v168 + 72);
  *(v168 + 64) = sub_1AF5A97B4;
  *(v168 + 72) = v166;
  sub_1AF0FB8EC(v171, v172);
  *(v168 + 168) = 0;
  *(v168 + 176) = 0;

  *(v168 + 216) = 0;

  v173 = &type metadata for MotionDistribution;
  sub_1AF5A9240(0, &qword_1EB633890, &type metadata for MotionDistribution, type metadata accessor for EntityGetSet);
  v174 = swift_allocObject();
  v174[4] = sub_1AF58DD3C;
  v174[5] = v165;
  v174[2] = sub_1AF58DD68;
  v174[3] = v165;
  v174[6] = v165;
  v175 = swift_allocObject();
  *(v175 + 112) = 1;
  *(v175 + 128) = 0;
  *(v175 + 136) = 0;
  *(v175 + 120) = 0;
  *(v175 + 160) = MEMORY[0x1E69E7CC0];
  *(v175 + 168) = 0;
  *(v175 + 176) = 0;
  *(v175 + 210) = 0;
  *(v175 + 216) = 0;
  *(v175 + 16) = 0xD000000000000012;
  *(v175 + 24) = 0x80000001AFF22CB0;
  *(v175 + 32) = v165;
  *(v175 + 40) = &type metadata for MotionDistribution;
  *(v175 + 48) = 97;
  *(v175 + 56) = 0;
  *(v175 + 58) = 0;
  *(v175 + 184) = 0;
  *(v175 + 188) = 1;
  *(v175 + 192) = 0;
  *(v175 + 196) = 1;
  *(v175 + 200) = 0x1000100000000;
  *(v175 + 208) = 1;
  *(v175 + 64) = 0;
  *(v175 + 72) = 0;
  *(v175 + 96) = 0;
  *(v175 + 104) = 0;
  *(v175 + 144) = xmmword_1AFE22A20;
  *(v175 + 80) = v174;
  *(v175 + 88) = &off_1F2535378;
  *(v175 + 210) = 0;
  v176 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v176)
  {
    v173 = (*(v176 + 8))();
  }

  v177 = swift_conformsToProtocol2();
  if (v177 && v173)
  {
    *(v175 + 160) = (*(v177 + 8))(v173, v177);
  }

  v178 = *(v175 + 64);
  v179 = *(v175 + 72);
  *(v175 + 64) = sub_1AF58DDC4;
  *(v175 + 72) = v165;
  sub_1AF0FB8EC(v178, v179);
  *(v175 + 168) = 0;
  *(v175 + 176) = 0;

  *(v175 + 216) = v168;

  v260[18] = v175;
  v180 = swift_getKeyPath();
  v181 = swift_allocObject();
  v181[4] = sub_1AF5AA35C;
  v181[5] = v180;
  v181[2] = sub_1AF5AA4D4;
  v181[3] = v180;
  v181[6] = v180;
  v182 = swift_allocObject();
  *(v182 + 112) = 1;
  *(v182 + 128) = 0;
  *(v182 + 136) = 0;
  *(v182 + 120) = 0;
  *(v182 + 160) = MEMORY[0x1E69E7CC0];
  *(v182 + 168) = 0;
  *(v182 + 176) = 0;
  *(v182 + 210) = 0;
  *(v182 + 216) = 0;
  *(v182 + 16) = 0x797469636F6C6576;
  *(v182 + 24) = 0xE800000000000000;
  v183 = v254;
  *(v182 + 32) = v180;
  *(v182 + 40) = v254;
  *(v182 + 48) = 104;
  *(v182 + 56) = 0;
  *(v182 + 58) = 0;
  *(v182 + 184) = 0;
  *(v182 + 188) = 1;
  *(v182 + 192) = 0;
  *(v182 + 196) = 1;
  *(v182 + 200) = 0x1000100000000;
  *(v182 + 208) = 1;
  *(v182 + 64) = 0;
  *(v182 + 72) = 0;
  *(v182 + 96) = 0;
  *(v182 + 104) = 0;
  *(v182 + 144) = xmmword_1AFE22A20;
  *(v182 + 80) = v181;
  *(v182 + 88) = &off_1F2535378;
  *(v182 + 210) = 0;
  swift_retain_n();
  v184 = v254;
  if (v256)
  {
    v184 = (*(v255 + 8))();
  }

  v185 = swift_conformsToProtocol2();
  if (v185 && v184)
  {
    *(v182 + 160) = (*(v185 + 8))(v184, v185);
  }

  v186 = *(v182 + 64);
  v187 = *(v182 + 72);
  *(v182 + 64) = sub_1AF5A97C4;
  *(v182 + 72) = v180;
  sub_1AF0FB8EC(v186, v187);
  *(v182 + 168) = 0;
  *(v182 + 176) = 0;

  *(v182 + 216) = 0;

  v260[19] = v182;
  v188 = swift_getKeyPath();
  v189 = swift_allocObject();
  v189[4] = sub_1AF5AA35C;
  v189[5] = v188;
  v189[2] = sub_1AF5AA4D4;
  v189[3] = v188;
  v189[6] = v188;
  v190 = swift_allocObject();
  *(v190 + 112) = 1;
  *(v190 + 128) = 0;
  *(v190 + 136) = 0;
  *(v190 + 120) = 0;
  *(v190 + 160) = MEMORY[0x1E69E7CC0];
  *(v190 + 168) = 0;
  *(v190 + 176) = 0;
  *(v190 + 210) = 0;
  *(v190 + 216) = 0;
  *(v190 + 16) = 0x6E69646165727073;
  *(v190 + 24) = 0xE900000000000067;
  *(v190 + 32) = v188;
  *(v190 + 40) = v254;
  *(v190 + 48) = 112;
  *(v190 + 56) = 0;
  *(v190 + 58) = 0;
  *(v190 + 184) = 0;
  *(v190 + 188) = 0;
  *(v190 + 192) = 1078530011;
  *(v190 + 196) = 0;
  *(v190 + 200) = 0x1000100000000;
  *(v190 + 208) = 1;
  *(v190 + 64) = 0;
  *(v190 + 72) = 0;
  *(v190 + 96) = 0;
  *(v190 + 104) = 0;
  *(v190 + 144) = xmmword_1AFE55150;
  *(v190 + 80) = v189;
  *(v190 + 88) = &off_1F2535378;
  *(v190 + 210) = 0;
  swift_retain_n();
  v191 = v254;
  if (v256)
  {
    v191 = (*(v255 + 8))();
  }

  v192 = swift_conformsToProtocol2();
  if (v192 && v191)
  {
    *(v190 + 160) = (*(v192 + 8))(v191, v192);
  }

  v193 = *(v190 + 64);
  v194 = *(v190 + 72);
  *(v190 + 64) = sub_1AF5A97C4;
  *(v190 + 72) = v188;
  sub_1AF0FB8EC(v193, v194);
  *(v190 + 168) = 0;
  *(v190 + 176) = 0;

  *(v190 + 216) = 0;

  v260[20] = v190;
  v195 = swift_getKeyPath();
  v196 = swift_allocObject();
  v196[4] = sub_1AF5A97BC;
  v196[5] = v195;
  v196[2] = sub_1AF5A9C94;
  v196[3] = v195;
  v196[6] = v195;
  v197 = swift_allocObject();
  *(v197 + 112) = 1;
  *(v197 + 128) = 0;
  *(v197 + 136) = 0;
  *(v197 + 120) = 0;
  *(v197 + 160) = MEMORY[0x1E69E7CC0];
  *(v197 + 168) = 0;
  *(v197 + 176) = 0;
  *(v197 + 210) = 0;
  *(v197 + 216) = 0;
  *(v197 + 16) = 0x41746E65676E6174;
  *(v197 + 24) = 0xEB00000000736978;
  v198 = v257;
  *(v197 + 32) = v195;
  *(v197 + 40) = v257;
  *(v197 + 48) = 128;
  *(v197 + 56) = 0;
  *(v197 + 58) = 0;
  *(v197 + 184) = 0;
  *(v197 + 188) = 1;
  *(v197 + 192) = 0;
  *(v197 + 196) = 1;
  *(v197 + 200) = 0x1000100000000;
  *(v197 + 208) = 1;
  *(v197 + 64) = 0;
  *(v197 + 72) = 0;
  *(v197 + 96) = 0;
  *(v197 + 104) = 0;
  *(v197 + 144) = xmmword_1AFE22A20;
  *(v197 + 80) = v196;
  *(v197 + 88) = &off_1F2535378;
  *(v197 + 210) = 0;
  swift_retain_n();
  if (v259)
  {
    v198 = (*(v126 + 8))();
  }

  v199 = swift_conformsToProtocol2();
  if (v199 && v198)
  {
    *(v197 + 160) = (*(v199 + 8))(v198, v199);
  }

  v200 = *(v197 + 64);
  v201 = *(v197 + 72);
  *(v197 + 64) = sub_1AF5A97C0;
  *(v197 + 72) = v195;
  sub_1AF0FB8EC(v200, v201);
  *(v197 + 168) = 0;
  *(v197 + 176) = 0;

  *(v197 + 216) = 0;

  v260[21] = v197;
  v202 = swift_getKeyPath();
  v203 = swift_allocObject();
  v203[4] = sub_1AF5AA35C;
  v203[5] = v202;
  v203[2] = sub_1AF5AA4D4;
  v203[3] = v202;
  v203[6] = v202;
  v204 = swift_allocObject();
  *(v204 + 112) = 1;
  *(v204 + 128) = 0;
  *(v204 + 136) = 0;
  *(v204 + 120) = 0;
  *(v204 + 160) = MEMORY[0x1E69E7CC0];
  *(v204 + 168) = 0;
  *(v204 + 176) = 0;
  *(v204 + 216) = 0;
  strcpy((v204 + 16), "tangentForce");
  *(v204 + 29) = 0;
  *(v204 + 30) = -5120;
  *(v204 + 32) = v202;
  *(v204 + 40) = v254;
  *(v204 + 48) = 144;
  *(v204 + 56) = 0;
  *(v204 + 58) = 0;
  *(v204 + 184) = 0;
  *(v204 + 188) = 1;
  *(v204 + 192) = 0;
  *(v204 + 196) = 1;
  *(v204 + 200) = 0x1000100000000;
  *(v204 + 208) = 1;
  *(v204 + 64) = 0;
  *(v204 + 72) = 0;
  *(v204 + 96) = 0;
  *(v204 + 104) = 0;
  *(v204 + 144) = xmmword_1AFE22A20;
  *(v204 + 80) = v203;
  *(v204 + 88) = &off_1F2535378;
  *(v204 + 210) = 0;
  swift_retain_n();
  if (v256)
  {
    v183 = (*(v255 + 8))();
  }

  v205 = swift_conformsToProtocol2();
  if (v205 && v183)
  {
    *(v204 + 160) = (*(v205 + 8))(v183, v205);
  }

  v206 = *(v204 + 64);
  v207 = *(v204 + 72);
  *(v204 + 64) = sub_1AF5A97C4;
  *(v204 + 72) = v202;
  sub_1AF0FB8EC(v206, v207);
  *(v204 + 168) = 0;
  *(v204 + 176) = 0;

  *(v204 + 216) = 0;

  v260[22] = v204;
  v208 = swift_getKeyPath();
  v209 = &type metadata for Entity;
  sub_1AF5A9240(0, &unk_1EB6338D8, &type metadata for Entity, type metadata accessor for EntityGetSet);
  v210 = swift_allocObject();
  v210[4] = sub_1AF58D440;
  v210[5] = v208;
  v210[2] = sub_1AF58DE04;
  v210[3] = v208;
  v210[6] = v208;
  v211 = swift_allocObject();
  *(v211 + 112) = 1;
  *(v211 + 128) = 0;
  *(v211 + 136) = 0;
  *(v211 + 120) = 0;
  *(v211 + 168) = 0;
  *(v211 + 160) = MEMORY[0x1E69E7CC0];
  *(v211 + 176) = 0;
  *(v211 + 216) = 0;
  *(v211 + 16) = 0x65727574786574;
  *(v211 + 24) = 0xE700000000000000;
  *(v211 + 32) = v208;
  *(v211 + 40) = &type metadata for Entity;
  *(v211 + 48) = 152;
  *(v211 + 56) = 0;
  *(v211 + 58) = 0;
  *(v211 + 184) = 0;
  *(v211 + 188) = 1;
  *(v211 + 192) = 0;
  *(v211 + 196) = 1;
  *(v211 + 200) = 0x1000100000000;
  *(v211 + 208) = 1;
  *(v211 + 64) = 0;
  *(v211 + 72) = 0;
  *(v211 + 96) = 0;
  *(v211 + 104) = 0;
  *(v211 + 144) = xmmword_1AFE551B0;
  *(v211 + 80) = v210;
  *(v211 + 88) = &off_1F2535378;
  *(v211 + 210) = 0;
  v212 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v212)
  {
    v209 = (*(v212 + 8))();
  }

  v213 = swift_conformsToProtocol2();
  if (v213 && v209)
  {
    *(v211 + 160) = (*(v213 + 8))(v209, v213);
  }

  *(v211 + 64) = sub_1AF58DE60;
  *(v211 + 72) = v208;
  sub_1AF0FB8EC(0, 0);
  *(v211 + 168) = 0;
  *(v211 + 176) = 0;

  *(v211 + 216) = 0;
  v260[23] = v211;
  v214 = swift_getKeyPath();
  v215 = swift_getKeyPath();
  v216 = swift_getKeyPath();
  v217 = swift_allocObject();
  v217[4] = sub_1AF5AA35C;
  v217[5] = v216;
  v217[2] = sub_1AF5A9C90;
  v217[3] = v216;
  v217[6] = v216;
  v218 = swift_allocObject();
  *(v218 + 112) = 1;
  *(v218 + 128) = 0;
  *(v218 + 136) = 0;
  *(v218 + 120) = 0;
  *(v218 + 160) = MEMORY[0x1E69E7CC0];
  *(v218 + 168) = 0;
  *(v218 + 176) = 0;
  *(v218 + 216) = 0;
  *(v218 + 16) = 0xD000000000000010;
  *(v218 + 24) = 0x80000001AFF2A940;
  *(v218 + 32) = v216;
  v219 = MEMORY[0x1E69E7360];
  *(v218 + 40) = MEMORY[0x1E69E7360];
  *(v218 + 48) = 0;
  *(v218 + 56) = 1;
  *(v218 + 58) = 0;
  *(v218 + 184) = 0;
  *(v218 + 188) = 1;
  *(v218 + 192) = 0;
  *(v218 + 196) = 1;
  *(v218 + 200) = 0x1000100000000;
  *(v218 + 208) = 1;
  *(v218 + 64) = 0;
  *(v218 + 72) = 0;
  *(v218 + 96) = 0;
  *(v218 + 104) = 0;
  *(v218 + 144) = xmmword_1AFE22A20;
  *(v218 + 80) = v217;
  *(v218 + 88) = &off_1F2535378;
  *(v218 + 210) = 0;
  swift_retain_n();
  if (v258)
  {
    v219 = (*(v258 + 8))();
  }

  v220 = swift_conformsToProtocol2();
  if (v220 && v219)
  {
    *(v218 + 160) = (*(v220 + 8))(v219, v220);
  }

  *(v218 + 64) = sub_1AF5A97B4;
  *(v218 + 72) = v216;
  sub_1AF0FB8EC(0, 0);
  *(v218 + 168) = 0;
  *(v218 + 176) = 0;

  *(v218 + 216) = 0;
  v221 = &type metadata for AddressMode;
  sub_1AF5A9240(0, &qword_1EB6338D0, &type metadata for AddressMode, type metadata accessor for EntityGetSet);
  v222 = swift_allocObject();
  v222[4] = sub_1AF58DEA0;
  v222[5] = v214;
  v222[2] = sub_1AF58DECC;
  v222[3] = v214;
  v222[6] = v214;
  v223 = swift_allocObject();
  *(v223 + 112) = 1;
  *(v223 + 128) = 0;
  *(v223 + 136) = 0;
  *(v223 + 120) = 0;
  *(v223 + 160) = MEMORY[0x1E69E7CC0];
  *(v223 + 168) = 0;
  *(v223 + 176) = 0;
  *(v223 + 216) = 0;
  *(v223 + 16) = 0x4D73736572646461;
  *(v223 + 24) = 0xEB0000000065646FLL;
  *(v223 + 32) = v214;
  *(v223 + 40) = &type metadata for AddressMode;
  *(v223 + 48) = 160;
  *(v223 + 56) = 0;
  *(v223 + 58) = 0;
  *(v223 + 184) = 0;
  *(v223 + 188) = 1;
  *(v223 + 192) = 0;
  *(v223 + 196) = 1;
  *(v223 + 200) = 0x1000100000000;
  *(v223 + 208) = 1;
  *(v223 + 64) = 0;
  *(v223 + 72) = 0;
  *(v223 + 96) = v215;
  *(v223 + 104) = 0;
  *(v223 + 144) = xmmword_1AFE22A20;
  *(v223 + 80) = v222;
  *(v223 + 88) = &off_1F2535378;
  *(v223 + 210) = 0;
  v224 = swift_conformsToProtocol2();
  swift_retain_n();

  if (v224)
  {
    v221 = (*(v224 + 8))();
  }

  v225 = swift_conformsToProtocol2();
  if (v225 && v221)
  {
    v226 = (*(v225 + 8))(v221, v225);

    *(v223 + 160) = v226;
  }

  else
  {
  }

  *(v223 + 64) = sub_1AF58DF28;
  *(v223 + 72) = v214;
  sub_1AF0FB8EC(0, 0);
  *(v223 + 168) = 0;
  *(v223 + 176) = 0;

  *(v223 + 216) = v218;
  v260[24] = v223;
  v227 = swift_getKeyPath();
  v228 = swift_getKeyPath();
  v229 = swift_allocObject();
  v229[4] = sub_1AF5A97BC;
  v229[5] = v227;
  v229[2] = sub_1AF5A9C94;
  v229[3] = v227;
  v229[6] = v227;
  v230 = swift_allocObject();
  *(v230 + 112) = 1;
  *(v230 + 128) = 0;
  *(v230 + 136) = 0;
  *(v230 + 120) = 0;
  *(v230 + 160) = MEMORY[0x1E69E7CC0];
  *(v230 + 168) = 0;
  *(v230 + 176) = 0;
  *(v230 + 216) = 0;
  strcpy((v230 + 16), "textureScale");
  *(v230 + 29) = 0;
  *(v230 + 30) = -5120;
  v231 = v257;
  *(v230 + 32) = v227;
  *(v230 + 40) = v257;
  *(v230 + 48) = 176;
  *(v230 + 56) = 0;
  *(v230 + 58) = 0;
  *(v230 + 184) = 0;
  *(v230 + 188) = 1;
  *(v230 + 192) = 0;
  *(v230 + 196) = 1;
  *(v230 + 200) = 0x1000100000000;
  *(v230 + 208) = 1;
  *(v230 + 64) = 0;
  *(v230 + 72) = 0;
  *(v230 + 96) = v228;
  *(v230 + 104) = 0;
  *(v230 + 144) = xmmword_1AFE22A20;
  *(v230 + 80) = v229;
  *(v230 + 88) = &off_1F2535378;
  *(v230 + 210) = 0;
  swift_retain_n();

  v232 = v257;
  if (v259)
  {
    v232 = (*(v126 + 8))();
  }

  v233 = swift_conformsToProtocol2();
  if (v233 && v232)
  {
    v234 = (*(v233 + 8))(v232, v233);

    *(v230 + 160) = v234;
  }

  else
  {
  }

  v235 = *(v230 + 64);
  v236 = *(v230 + 72);
  *(v230 + 64) = sub_1AF5A97C0;
  *(v230 + 72) = v227;
  sub_1AF0FB8EC(v235, v236);
  *(v230 + 168) = 0;
  *(v230 + 176) = 0;

  *(v230 + 216) = 0;

  v260[25] = v230;
  v237 = swift_getKeyPath();
  v238 = swift_getKeyPath();
  v239 = swift_allocObject();
  v239[4] = sub_1AF5A97BC;
  v239[5] = v237;
  v239[2] = sub_1AF5A9C94;
  v239[3] = v237;
  v239[6] = v237;
  v240 = swift_allocObject();
  *(v240 + 112) = 1;
  *(v240 + 128) = 0;
  *(v240 + 136) = 0;
  *(v240 + 120) = 0;
  *(v240 + 160) = MEMORY[0x1E69E7CC0];
  *(v240 + 168) = 0;
  *(v240 + 176) = 0;
  *(v240 + 216) = 0;
  *(v240 + 16) = 0x4265727574786574;
  *(v240 + 24) = 0xEB00000000736169;
  *(v240 + 32) = v237;
  *(v240 + 40) = v257;
  *(v240 + 48) = 192;
  *(v240 + 56) = 0;
  *(v240 + 58) = 0;
  *(v240 + 184) = 0;
  *(v240 + 188) = 1;
  *(v240 + 192) = 0;
  *(v240 + 196) = 1;
  *(v240 + 200) = 0x1000100000000;
  *(v240 + 208) = 1;
  *(v240 + 64) = 0;
  *(v240 + 72) = 0;
  *(v240 + 96) = v238;
  *(v240 + 104) = 0;
  *(v240 + 144) = xmmword_1AFE22A20;
  *(v240 + 80) = v239;
  *(v240 + 88) = &off_1F2535378;
  *(v240 + 210) = 0;
  swift_retain_n();

  if (v259)
  {
    v231 = (*(v126 + 8))();
  }

  v241 = swift_conformsToProtocol2();
  if (v241 && v231)
  {
    v242 = (*(v241 + 8))(v231, v241);

    *(v240 + 160) = v242;
  }

  else
  {
  }

  v243 = *(v240 + 64);
  v244 = *(v240 + 72);
  *(v240 + 64) = sub_1AF5A97C0;
  *(v240 + 72) = v237;
  sub_1AF0FB8EC(v243, v244);
  *(v240 + 168) = 0;
  *(v240 + 176) = 0;

  *(v240 + 216) = 0;

  v260[26] = v240;
  v245 = swift_getKeyPath();
  v246 = swift_getKeyPath();
  v247 = swift_allocObject();
  v247[4] = sub_1AF5AA148;
  v247[5] = v245;
  v247[2] = sub_1AF5A9C98;
  v247[3] = v245;
  v247[6] = v245;
  v248 = swift_allocObject();
  *(v248 + 112) = 1;
  *(v248 + 128) = 0;
  *(v248 + 136) = 0;
  *(v248 + 120) = 0;
  *(v248 + 160) = MEMORY[0x1E69E7CC0];
  *(v248 + 168) = 0;
  *(v248 + 176) = 0;
  *(v248 + 216) = 0;
  strcpy((v248 + 16), "inheritColor");
  *(v248 + 29) = 0;
  *(v248 + 30) = -5120;
  *(v248 + 32) = v245;
  v249 = MEMORY[0x1E69E6370];
  *(v248 + 40) = MEMORY[0x1E69E6370];
  *(v248 + 48) = 208;
  *(v248 + 56) = 0;
  *(v248 + 58) = 0;
  *(v248 + 184) = 0;
  *(v248 + 188) = 1;
  *(v248 + 192) = 0;
  *(v248 + 196) = 1;
  *(v248 + 200) = 0x1000100000000;
  *(v248 + 208) = 1;
  *(v248 + 64) = 0;
  *(v248 + 72) = 0;
  *(v248 + 96) = v246;
  *(v248 + 104) = 0;
  *(v248 + 144) = xmmword_1AFE22A20;
  *(v248 + 80) = v247;
  *(v248 + 88) = &off_1F2535378;
  *(v248 + 210) = 0;
  swift_retain_n();

  if (v253)
  {
    v249 = (*(v253 + 8))();
  }

  v250 = swift_conformsToProtocol2();
  if (v250 && v249)
  {
    v251 = (*(v250 + 8))(v249, v250);

    *(v248 + 160) = v251;
  }

  else
  {
  }

  *(v248 + 64) = sub_1AF5A97C8;
  *(v248 + 72) = v245;
  sub_1AF0FB8EC(0, 0);
  *(v248 + 168) = 0;
  *(v248 + 176) = 0;

  *(v248 + 216) = 0;
  v260[27] = v248;
  qword_1EB6C2A90 = v260;
  return result;
}

uint64_t sub_1AF4D0748()
{
  if (*(v0 + 4) == 1)
  {
    return qword_1AFE61560[*v0];
  }

  else
  {
    return 5;
  }
}

int *sub_1AF4D0770@<X0>(int *result@<X0>, void *a2@<X8>)
{
  if (*(result + 4) == 1)
  {
    *a2 = qword_1AFE61560[*result];
  }

  else
  {
    *a2 = 5;
  }

  return result;
}

uint64_t sub_1AF4D07A0(uint64_t result)
{
  if (result > 3)
  {
    switch(result)
    {
      case 4:
        v2 = 1;
        v3 = 4;
        goto LABEL_16;
      case 5:
        v2 = 0;
        v3 = 1036831949;
        goto LABEL_16;
      case 6:
        v2 = 1;
        v3 = 5;
        goto LABEL_16;
    }

    goto LABEL_12;
  }

  if (result == 1)
  {
    v3 = 1;
LABEL_13:
    v2 = 1;
    goto LABEL_16;
  }

  if (result == 2)
  {
    v2 = 1;
    v3 = 2;
    goto LABEL_16;
  }

  if (result != 3)
  {
LABEL_12:
    v3 = 0;
    goto LABEL_13;
  }

  v2 = 1;
  v3 = 3;
LABEL_16:
  *v1 = v3;
  *(v1 + 4) = v2;
  return result;
}

float sub_1AF4D0834()
{
  result = *v0;
  if (*(v0 + 4))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_1AF4D08B0(uint64_t result)
{
  v2 = result;
  if ((result & 0xFC) != 0)
  {
    v2 = 4;
  }

  *(v1 + 33) = v2;
  return result;
}

uint64_t sub_1AF4D08E8()
{
  result = *(v0 + 64);
  if (*(v0 + 64))
  {
    if (result == 1)
    {
      return 1;
    }

    else
    {
      return *(v0 + 48) + 2;
    }
  }

  return result;
}

uint64_t sub_1AF4D090C(uint64_t result)
{
  if (result <= 1)
  {
    if (!result)
    {
      *(v1 + 48) = xmmword_1AFE20160;
      *(v1 + 64) = 0;
      return result;
    }

    if (result == 1)
    {
      *(v1 + 48) = xmmword_1AFE20160;
      *(v1 + 64) = 1;
      return result;
    }

LABEL_8:
    *(v1 + 48) = xmmword_1AFE505D0;
    goto LABEL_11;
  }

  if (result == 2)
  {
    *(v1 + 48) = 0;
    *(v1 + 56) = 0;
    goto LABEL_11;
  }

  if (result != 3)
  {
    goto LABEL_8;
  }

  *(v1 + 48) = xmmword_1AFE22A20;
LABEL_11:
  *(v1 + 64) = 2;
  return result;
}

double sub_1AF4D098C(int8x16_t a1, double a2, int8x16_t a3)
{
  a1.i32[0] = 0;
  a3.i8[0] = v3[4].i8[0];
  a1.i64[0] = vandq_s8(v3[3], vdupq_lane_s8(*&vceqq_s8(a3, a1), 0)).u64[0];
  return *a1.i64;
}

double sub_1AF4D09B8(double a1, int8x16_t a2, int8x16_t a3)
{
  a2.i8[0] = v3[4].i8[0];
  a3.i32[0] = 1;
  *&result = vandq_s8(v3[3], vdupq_lane_s8(*&vceqq_s8(a2, a3), 0)).u64[0];
  return result;
}

double sub_1AF4D09E8(int8x16_t a1, double a2, int8x16_t a3)
{
  a1.i32[0] = 0;
  a3.i8[0] = v3[6].i8[0];
  a1.i64[0] = vandq_s8(v3[5], vdupq_lane_s8(*&vceqq_s8(a3, a1), 0)).u64[0];
  return *a1.i64;
}

double sub_1AF4D0A14(double a1, int8x16_t a2, int8x16_t a3)
{
  a2.i8[0] = v3[6].i8[0];
  a3.i32[0] = 1;
  *&result = vandq_s8(v3[5], vdupq_lane_s8(*&vceqq_s8(a2, a3), 0)).u64[0];
  return result;
}

uint64_t sub_1AF4D0A4C(uint64_t result)
{
  v2 = result;
  if (result >= 3u)
  {
    v2 = 3;
  }

  *(v1 + 97) = v2;
  return result;
}

uint64_t sub_1AF4D0A6C(uint64_t result)
{
  v2 = result;
  if ((result & 0xFC) != 0)
  {
    v2 = 4;
  }

  *(v1 + 160) = v2;
  return result;
}

uint64_t sub_1AF4D0A84(uint64_t result)
{
  if (result <= 1)
  {
    if (!result)
    {
      *v1 = xmmword_1AFE20160;
      *(v1 + 16) = 0;
      return result;
    }

    if (result == 1)
    {
      *v1 = xmmword_1AFE20160;
      *(v1 + 16) = 1;
      return result;
    }

LABEL_8:
    v2 = xmmword_1AFE505D0;
    goto LABEL_9;
  }

  if (result == 2)
  {
    *v1 = 0;
    *(v1 + 8) = 0;
    goto LABEL_12;
  }

  if (result != 3)
  {
    goto LABEL_8;
  }

  v2 = xmmword_1AFE22A20;
LABEL_9:
  *v1 = v2;
LABEL_12:
  *(v1 + 16) = 2;
  return result;
}

uint64_t sub_1AF4D0B30()
{
  if (qword_1EB633918 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1AF4D0C20()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE55170;
  KeyPath = swift_getKeyPath();
  v2 = &type metadata for Entity;
  sub_1AF5A9240(0, &unk_1EB6338D8, &type metadata for Entity, type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF58E9A4;
  v3[5] = KeyPath;
  v3[2] = sub_1AF58E9D8;
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

  v7 = *(v4 + 64);
  v8 = *(v4 + 72);
  *(v4 + 64) = sub_1AF58EA34;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(v7, v8);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;

  *(v0 + 32) = v4;
  v9 = swift_getKeyPath();
  sub_1AF57F2F4(0);
  v10 = swift_allocObject();
  v10[4] = sub_1AF58E9A4;
  v10[5] = v9;
  v10[2] = sub_1AF58EA74;
  v10[3] = v9;
  v10[6] = v9;
  v11 = swift_allocObject();
  *(v11 + 104) = 0;
  *(v11 + 112) = 1;
  *(v11 + 128) = 0;
  *(v11 + 136) = 0;
  *(v11 + 120) = 0;
  *(v11 + 160) = MEMORY[0x1E69E7CC0];
  *(v11 + 210) = 0;
  *(v11 + 216) = 0;
  sub_1AF589E74(0, &qword_1ED72F958, MEMORY[0x1E69E6448], MEMORY[0x1E69E6468], MEMORY[0x1E69E66A8]);
  v13 = v12;
  *(v11 + 168) = 0;
  *(v11 + 176) = 0;
  strcpy((v11 + 16), "velocityRange");
  *(v11 + 30) = -4864;
  *(v11 + 32) = v9;
  *(v11 + 40) = v12;
  *(v11 + 48) = 16;
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
  *(v11 + 144) = xmmword_1AFE22A20;
  *(v11 + 80) = v10;
  *(v11 + 88) = &off_1F2535378;
  *(v11 + 210) = 0;
  v14 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v14 && v13)
  {
    v13 = (*(v14 + 8))(v13, v14);
  }

  v15 = swift_conformsToProtocol2();
  if (v15 && v13)
  {
    *(v11 + 160) = (*(v15 + 8))(v13, v15);
  }

  v16 = *(v11 + 64);
  v17 = *(v11 + 72);
  *(v11 + 64) = sub_1AF58EAD0;
  *(v11 + 72) = v9;
  sub_1AF0FB8EC(v16, v17);
  *(v11 + 168) = 0;
  *(v11 + 176) = 0;

  *(v11 + 216) = 0;

  *(v0 + 40) = v11;
  v18 = swift_getKeyPath();
  v19 = MEMORY[0x1E69E6370];
  sub_1AF5A9240(0, &qword_1ED722B80, MEMORY[0x1E69E6370], type metadata accessor for EntityGetSet);
  v20 = swift_allocObject();
  v20[4] = sub_1AF58EB14;
  v20[5] = v18;
  v20[2] = sub_1AF58EB40;
  v20[3] = v18;
  v20[6] = v18;
  v21 = swift_allocObject();
  *(v21 + 112) = 1;
  *(v21 + 128) = 0;
  *(v21 + 136) = 0;
  *(v21 + 120) = 0;
  *(v21 + 160) = MEMORY[0x1E69E7CC0];
  *(v21 + 168) = 0;
  *(v21 + 216) = 0;
  *(v21 + 176) = 0;
  *(v21 + 16) = 0x5074697265686E69;
  *(v21 + 24) = 0xEF6E6F697469736FLL;
  *(v21 + 32) = v18;
  *(v21 + 40) = v19;
  *(v21 + 48) = 24;
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

  *(v21 + 64) = sub_1AF58EB9C;
  *(v21 + 72) = v18;
  sub_1AF0FB8EC(0, 0);
  *(v21 + 168) = 0;
  *(v21 + 176) = 0;

  *(v21 + 216) = 0;
  *(v0 + 48) = v21;
  v25 = swift_getKeyPath();
  v26 = swift_allocObject();
  v26[4] = sub_1AF5AA154;
  v26[5] = v25;
  v26[2] = sub_1AF5A9CB8;
  v26[3] = v25;
  v26[6] = v25;
  v27 = swift_allocObject();
  *(v27 + 112) = 1;
  *(v27 + 128) = 0;
  *(v27 + 136) = 0;
  *(v27 + 120) = 0;
  *(v27 + 160) = MEMORY[0x1E69E7CC0];
  *(v27 + 168) = 0;
  *(v27 + 216) = 0;
  *(v27 + 176) = 0;
  strcpy((v27 + 16), "inheritColor");
  *(v27 + 29) = 0;
  *(v27 + 30) = -5120;
  *(v27 + 32) = v25;
  *(v27 + 40) = v19;
  *(v27 + 48) = 25;
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
  swift_retain_n();
  if (v22)
  {
    v28 = (*(v22 + 8))();
  }

  else
  {
    v28 = v19;
  }

  v29 = swift_conformsToProtocol2();
  if (v29 && v28)
  {
    *(v27 + 160) = (*(v29 + 8))(v28, v29);
  }

  *(v27 + 64) = sub_1AF5A97D4;
  *(v27 + 72) = v25;
  sub_1AF0FB8EC(0, 0);
  *(v27 + 168) = 0;
  *(v27 + 176) = 0;

  *(v27 + 216) = 0;
  *(v0 + 56) = v27;
  v30 = swift_getKeyPath();
  v31 = swift_allocObject();
  v31[4] = sub_1AF5AA154;
  v31[5] = v30;
  v31[2] = sub_1AF5A9CB8;
  v31[3] = v30;
  v31[6] = v30;
  v32 = swift_allocObject();
  *(v32 + 112) = 1;
  *(v32 + 128) = 0;
  *(v32 + 136) = 0;
  *(v32 + 120) = 0;
  *(v32 + 160) = MEMORY[0x1E69E7CC0];
  *(v32 + 168) = 0;
  *(v32 + 216) = 0;
  *(v32 + 176) = 0;
  *(v32 + 16) = 0x5674697265686E69;
  *(v32 + 24) = 0xEF797469636F6C65;
  *(v32 + 32) = v30;
  *(v32 + 40) = v19;
  *(v32 + 48) = 26;
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
  swift_retain_n();
  if (v22)
  {
    v33 = (*(v22 + 8))();
  }

  else
  {
    v33 = v19;
  }

  v34 = swift_conformsToProtocol2();
  if (v34 && v33)
  {
    *(v32 + 160) = (*(v34 + 8))(v33, v34);
  }

  *(v32 + 64) = sub_1AF5A97D4;
  *(v32 + 72) = v30;
  sub_1AF0FB8EC(0, 0);
  *(v32 + 168) = 0;
  *(v32 + 176) = 0;

  *(v32 + 216) = 0;
  *(v0 + 64) = v32;
  v35 = swift_getKeyPath();
  v36 = swift_allocObject();
  v36[4] = sub_1AF5AA154;
  v36[5] = v35;
  v36[2] = sub_1AF5A9CB8;
  v36[3] = v35;
  v36[6] = v35;
  v37 = swift_allocObject();
  *(v37 + 112) = 1;
  *(v37 + 128) = 0;
  *(v37 + 136) = 0;
  *(v37 + 120) = 0;
  *(v37 + 160) = MEMORY[0x1E69E7CC0];
  *(v37 + 168) = 0;
  *(v37 + 216) = 0;
  *(v37 + 176) = 0;
  *(v37 + 16) = 0xD000000000000012;
  *(v37 + 24) = 0x80000001AFF23530;
  *(v37 + 32) = v35;
  *(v37 + 40) = v19;
  *(v37 + 48) = 27;
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
  swift_retain_n();
  if (v22)
  {
    v38 = (*(v22 + 8))();
  }

  else
  {
    v38 = v19;
  }

  v39 = MEMORY[0x1E69E6448];
  v40 = swift_conformsToProtocol2();
  if (v40 && v38)
  {
    *(v37 + 160) = (*(v40 + 8))(v38, v40);
  }

  *(v37 + 64) = sub_1AF5A97D4;
  *(v37 + 72) = v35;
  sub_1AF0FB8EC(0, 0);
  *(v37 + 168) = 0;
  *(v37 + 176) = 0;

  *(v37 + 216) = 0;
  *(v0 + 72) = v37;
  v41 = swift_getKeyPath();
  v42 = swift_allocObject();
  v42[4] = sub_1AF5AA154;
  v42[5] = v41;
  v42[2] = sub_1AF5A9CB8;
  v42[3] = v41;
  v42[6] = v41;
  v43 = swift_allocObject();
  *(v43 + 112) = 1;
  *(v43 + 128) = 0;
  *(v43 + 136) = 0;
  *(v43 + 120) = 0;
  *(v43 + 160) = MEMORY[0x1E69E7CC0];
  *(v43 + 168) = 0;
  *(v43 + 216) = 0;
  *(v43 + 176) = 0;
  *(v43 + 16) = 0x5374697265686E69;
  *(v43 + 24) = 0xEB00000000657A69;
  *(v43 + 32) = v41;
  *(v43 + 40) = v19;
  *(v43 + 48) = 28;
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
  *(v43 + 104) = 0;
  *(v43 + 144) = xmmword_1AFE22A20;
  *(v43 + 80) = v42;
  *(v43 + 88) = &off_1F2535378;
  *(v43 + 210) = 0;
  swift_retain_n();
  if (v22)
  {
    v19 = (*(v22 + 8))();
  }

  v44 = swift_conformsToProtocol2();
  if (v44 && v19)
  {
    *(v43 + 160) = (*(v44 + 8))(v19, v44);
  }

  *(v43 + 64) = sub_1AF5A97D4;
  *(v43 + 72) = v41;
  sub_1AF0FB8EC(0, 0);
  *(v43 + 168) = 0;
  *(v43 + 176) = 0;

  *(v43 + 216) = 0;
  *(v0 + 80) = v43;
  v45 = swift_getKeyPath();
  sub_1AF5A9240(0, &unk_1ED722B70, v39, type metadata accessor for EntityGetSet);
  v46 = swift_allocObject();
  v46[4] = sub_1AF58EBDC;
  v46[5] = v45;
  v46[2] = sub_1AF58EC10;
  v46[3] = v45;
  v46[6] = v45;
  v47 = swift_allocObject();
  *(v47 + 112) = 1;
  *(v47 + 128) = 0;
  *(v47 + 136) = 0;
  *(v47 + 120) = 0;
  *(v47 + 160) = MEMORY[0x1E69E7CC0];
  *(v47 + 168) = 0;
  *(v47 + 216) = 0;
  *(v47 + 176) = 0;
  *(v47 + 16) = 0x72546E6F69746F6DLL;
  *(v47 + 24) = 0xEF74726566736E61;
  *(v47 + 32) = v45;
  *(v47 + 40) = v39;
  *(v47 + 48) = 32;
  *(v47 + 56) = 0;
  *(v47 + 58) = 0;
  *(v47 + 184) = 0;
  *(v47 + 188) = 0;
  *(v47 + 192) = 0x40000000;
  *(v47 + 196) = 0;
  *(v47 + 200) = 0x1000100000000;
  *(v47 + 208) = 1;
  *(v47 + 64) = 0;
  *(v47 + 72) = 0;
  *(v47 + 96) = 0;
  *(v47 + 104) = 0;
  *(v47 + 144) = xmmword_1AFE22A20;
  *(v47 + 80) = v46;
  *(v47 + 88) = &off_1F2535378;
  *(v47 + 210) = 0;
  v48 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v48)
  {
    v39 = (*(v48 + 8))();
  }

  v49 = swift_conformsToProtocol2();
  if (v49 && v39)
  {
    *(v47 + 160) = (*(v49 + 8))(v39, v49);
  }

  *(v47 + 64) = sub_1AF58EC6C;
  *(v47 + 72) = v45;
  sub_1AF0FB8EC(0, 0);
  *(v47 + 168) = 0;
  *(v47 + 176) = 0;

  *(v47 + 216) = 0;
  *(v0 + 88) = v47;
  v50 = swift_getKeyPath();
  v51 = swift_getKeyPath();
  v52 = MEMORY[0x1E69E7360];
  sub_1AF5A9240(0, &unk_1EB634340, MEMORY[0x1E69E7360], type metadata accessor for EntityGetSet);
  v53 = swift_allocObject();
  v53[4] = sub_1AF58E9A4;
  v53[5] = v51;
  v53[2] = sub_1AF58ECAC;
  v53[3] = v51;
  v53[6] = v51;
  v54 = swift_allocObject();
  *(v54 + 112) = 1;
  *(v54 + 128) = 0;
  *(v54 + 136) = 0;
  *(v54 + 120) = 0;
  *(v54 + 160) = MEMORY[0x1E69E7CC0];
  *(v54 + 168) = 0;
  *(v54 + 216) = 0;
  *(v54 + 176) = 0;
  *(v54 + 16) = 0xD000000000000017;
  *(v54 + 24) = 0x80000001AFF2A920;
  *(v54 + 32) = v51;
  *(v54 + 40) = v52;
  *(v54 + 48) = 0;
  *(v54 + 56) = 1;
  *(v54 + 58) = 0;
  *(v54 + 184) = 0;
  *(v54 + 188) = 1;
  *(v54 + 192) = 0;
  *(v54 + 196) = 1;
  *(v54 + 200) = 0x1000100000000;
  *(v54 + 208) = 1;
  *(v54 + 64) = 0;
  *(v54 + 72) = 0;
  *(v54 + 96) = 0;
  *(v54 + 104) = 0;
  *(v54 + 144) = xmmword_1AFE22A20;
  *(v54 + 80) = v53;
  *(v54 + 88) = &off_1F2535378;
  *(v54 + 210) = 0;
  v55 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v55)
  {
    v52 = (*(v55 + 8))();
  }

  v56 = swift_conformsToProtocol2();
  if (v56 && v52)
  {
    *(v54 + 160) = (*(v56 + 8))(v52, v56);
  }

  *(v54 + 64) = sub_1AF58ED08;
  *(v54 + 72) = v51;
  sub_1AF0FB8EC(0, 0);
  *(v54 + 168) = 0;
  *(v54 + 176) = 0;

  *(v54 + 216) = 0;
  v57 = &type metadata for MotionDistribution;
  sub_1AF5A9240(0, &qword_1EB633890, &type metadata for MotionDistribution, type metadata accessor for EntityGetSet);
  v58 = swift_allocObject();
  v58[4] = sub_1AF58ED48;
  v58[5] = v50;
  v58[2] = sub_1AF58ED74;
  v58[3] = v50;
  v58[6] = v50;
  v59 = swift_allocObject();
  *(v59 + 112) = 1;
  *(v59 + 128) = 0;
  *(v59 + 136) = 0;
  *(v59 + 120) = 0;
  *(v59 + 160) = MEMORY[0x1E69E7CC0];
  *(v59 + 168) = 0;
  *(v59 + 216) = 0;
  *(v59 + 176) = 0;
  *(v59 + 16) = 0xD000000000000012;
  *(v59 + 24) = 0x80000001AFF22CB0;
  *(v59 + 32) = v50;
  *(v59 + 40) = &type metadata for MotionDistribution;
  *(v59 + 48) = 29;
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

  *(v59 + 64) = sub_1AF58EDD0;
  *(v59 + 72) = v50;
  sub_1AF0FB8EC(0, 0);
  *(v59 + 168) = 0;
  *(v59 + 176) = 0;

  *(v59 + 216) = v54;
  *(v0 + 96) = v59;
  qword_1EB6C2EB8 = v0;
  return result;
}