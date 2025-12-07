uint64_t sub_1AF4A8EB4()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C3E0;
  KeyPath = swift_getKeyPath();
  sub_1AF581BEC(0);
  v2 = swift_allocObject();
  v2[4] = sub_1AF581B94;
  v2[5] = KeyPath;
  v2[2] = sub_1AF581BBC;
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
  *(v3 + 16) = 0x65756C6176;
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
  *(v3 + 64) = sub_1AF581C70;
  *(v3 + 72) = KeyPath;
  sub_1AF0FB8EC(v8, v9);
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;

  *(v3 + 216) = 0;

  *(v0 + 32) = v3;
  qword_1EB6C2A88 = v0;
  return result;
}

uint64_t sub_1AF4A91F8(uint64_t a1, unsigned int a2)
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1AFE55130;
  KeyPath = swift_getKeyPath();
  v4 = (a2 >> 4) & 0x10;
  v5 = MEMORY[0x1E69E6370];
  sub_1AF5A9240(0, &qword_1ED722B80, MEMORY[0x1E69E6370], type metadata accessor for EntityGetSet);
  v6 = swift_allocObject();
  v6[4] = sub_1AF5AA0B4;
  v6[5] = KeyPath;
  v6[2] = sub_1AF581F4C;
  v6[3] = KeyPath;
  v6[6] = KeyPath;
  type metadata accessor for PropertyDescription();
  v7 = swift_allocObject();
  *(v7 + 112) = 1;
  *(v7 + 128) = 0;
  *(v7 + 136) = 0;
  *(v7 + 120) = 0;
  *(v7 + 160) = MEMORY[0x1E69E7CC0];
  *(v7 + 16) = 0xD000000000000011;
  *(v7 + 24) = 0x80000001AFF236F0;
  *(v7 + 32) = KeyPath;
  *(v7 + 40) = v5;
  *(v7 + 48) = 0;
  *(v7 + 56) = 1;
  *(v7 + 58) = v4;
  *(v7 + 184) = 0;
  *(v7 + 188) = 1;
  *(v7 + 192) = 0;
  *(v7 + 196) = 1;
  *(v7 + 200) = 0x1000100000000;
  *(v7 + 208) = 1;
  *(v7 + 96) = 0;
  *(v7 + 104) = 0;
  *(v7 + 144) = xmmword_1AFE22A20;
  *(v7 + 80) = v6;
  *(v7 + 88) = &off_1F2535378;
  *(v7 + 210) = v4;
  v8 = swift_conformsToProtocol2();
  v9 = v8;
  if (v8)
  {
    v10 = (*(v8 + 8))(MEMORY[0x1E69E6370], v8);
  }

  else
  {
    v10 = v5;
  }

  v11 = swift_conformsToProtocol2();
  if (v11 && v10)
  {
    v12 = v11;
    v13 = *(v11 + 8);
    swift_retain_n();
    *(v7 + 160) = v13(v10, v12);
  }

  else
  {
    swift_retain_n();
  }

  *(v7 + 64) = sub_1AF581FA8;
  *(v7 + 72) = KeyPath;
  *(v7 + 216) = 0;
  *(v7 + 168) = 0;
  *(v7 + 176) = 0;
  *(v31 + 32) = v7;
  v14 = swift_getKeyPath();
  v15 = swift_allocObject();
  v15[4] = sub_1AF5AA0B4;
  v15[5] = v14;
  v15[2] = sub_1AF5A9B5C;
  v15[3] = v14;
  v15[6] = v14;
  v16 = swift_allocObject();
  *(v16 + 112) = 1;
  *(v16 + 128) = 0;
  *(v16 + 136) = 0;
  *(v16 + 120) = 0;
  v17 = MEMORY[0x1E69E7CC0];
  *(v16 + 160) = MEMORY[0x1E69E7CC0];
  *(v16 + 16) = 0x7A696C616D726F6ELL;
  *(v16 + 24) = 0xE900000000000065;
  *(v16 + 32) = v14;
  *(v16 + 40) = v5;
  *(v16 + 48) = 0;
  *(v16 + 56) = 1;
  *(v16 + 58) = v4;
  *(v16 + 184) = 0;
  *(v16 + 188) = 1;
  *(v16 + 192) = 0;
  *(v16 + 196) = 1;
  *(v16 + 200) = 0x1000100000000;
  *(v16 + 208) = 1;
  *(v16 + 96) = 0;
  *(v16 + 104) = 0;
  *(v16 + 144) = xmmword_1AFE22A20;
  *(v16 + 80) = v15;
  *(v16 + 88) = &off_1F2535378;
  *(v16 + 210) = v4;

  if (v9)
  {
    v5 = (*(v9 + 8))();
  }

  v18 = swift_conformsToProtocol2();
  if (v18 && v5)
  {
    v19 = *(v18 + 8);
    v20 = v18;
    swift_retain_n();
    v21 = v19(v5, v20);
    v17 = MEMORY[0x1E69E7CC0];
    *(v16 + 160) = v21;
  }

  else
  {
    swift_retain_n();
  }

  *(v16 + 64) = sub_1AF5A965C;
  *(v16 + 72) = v14;
  *(v16 + 216) = 0;
  *(v16 + 168) = 0;
  *(v16 + 176) = 0;
  *(v31 + 40) = v16;
  v22 = swift_getKeyPath();
  v23 = &type metadata for MeshImportOptions.Loader;
  sub_1AF5A9240(0, &qword_1EB63A400, &type metadata for MeshImportOptions.Loader, type metadata accessor for EntityGetSet);
  v24 = swift_allocObject();
  v24[4] = sub_1AF581FE8;
  v24[5] = v22;
  v24[2] = sub_1AF582014;
  v24[3] = v22;
  v24[6] = v22;
  v25 = swift_allocObject();
  *(v25 + 112) = 1;
  *(v25 + 128) = 0;
  *(v25 + 136) = 0;
  *(v25 + 120) = 0;
  *(v25 + 160) = v17;
  *(v25 + 16) = 0x726564616F6CLL;
  *(v25 + 24) = 0xE600000000000000;
  *(v25 + 32) = v22;
  *(v25 + 40) = &type metadata for MeshImportOptions.Loader;
  *(v25 + 48) = 8;
  *(v25 + 56) = 0;
  *(v25 + 58) = v4;
  *(v25 + 184) = 0;
  *(v25 + 188) = 1;
  *(v25 + 192) = 0;
  *(v25 + 196) = 1;
  *(v25 + 200) = 0x1000100000000;
  *(v25 + 208) = 1;
  *(v25 + 96) = 0;
  *(v25 + 104) = 0;
  *(v25 + 144) = xmmword_1AFE22A20;
  *(v25 + 80) = v24;
  *(v25 + 88) = &off_1F2535378;
  *(v25 + 210) = v4;
  v26 = swift_conformsToProtocol2();

  if (v26)
  {
    v23 = (*(v26 + 8))();
  }

  v27 = swift_conformsToProtocol2();
  if (v27 && v23)
  {
    v28 = *(v27 + 8);
    v29 = v27;
    swift_retain_n();
    *(v25 + 160) = v28(v23, v29);
  }

  else
  {
    swift_retain_n();
  }

  *(v25 + 64) = sub_1AF582070;
  *(v25 + 72) = v22;
  *(v25 + 216) = 0;
  *(v25 + 168) = 0;
  *(v25 + 176) = 0;
  *(v31 + 48) = v25;
  return v31;
}

uint64_t sub_1AF4A984C(uint64_t a1)
{
  if (*(v1 + 9))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_1AF4A91F8(a1, v2 | *(v1 + 8));
}

uint64_t sub_1AF4A9868(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + 9))
  {
    v5 = 256;
  }

  else
  {
    v5 = 0;
  }

  return sub_1AF492CC4(a1, a2, a3, a4, *v4, v5 | *(v4 + 8));
}

uint64_t sub_1AF4A9888(uint64_t a1)
{
  if (*(v1 + 9))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_1AF491AE4(a1, *v1, v2 | *(v1 + 8));
}

uint64_t sub_1AF4A98A8()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE550E0;
  KeyPath = swift_getKeyPath();
  v2 = &type metadata for Asset;
  sub_1AF5A9240(0, &qword_1EB63A428, &type metadata for Asset, type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF5821A0;
  v3[5] = KeyPath;
  v3[2] = sub_1AF5821E4;
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

  *(v4 + 64) = sub_1AF582214;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0, 0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  v8 = swift_getKeyPath();
  sub_1AF51B13C(0, &qword_1EB63A430, sub_1AF5822B0, type metadata accessor for EntityGetSet);
  v9 = swift_allocObject();
  v9[4] = sub_1AF582254;
  v9[5] = v8;
  v9[2] = sub_1AF582280;
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
  sub_1AF5822B0(0);
  *(v10 + 168) = 0;
  *(v10 + 176) = 0;
  *(v10 + 16) = 0x6874615065646F6ELL;
  *(v10 + 24) = 0xE800000000000000;
  *(v10 + 32) = v8;
  *(v10 + 40) = v11;
  *(v10 + 48) = 48;
  *(v10 + 56) = 0;
  *(v10 + 58) = 4;
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
  *(v10 + 210) = 4;
  sub_1AF5A9240(0, &qword_1ED726C50, MEMORY[0x1E69E6530], MEMORY[0x1E69E62F8]);
  v13 = v12;
  v14 = swift_conformsToProtocol2();
  swift_retain_n();
  v15 = 0;
  v16 = 0;
  if (v14 && v13)
  {
    *(v10 + 160) = (*(v14 + 8))(v13, v14);

    v16 = *(v10 + 64);
    v15 = *(v10 + 72);
  }

  *(v10 + 64) = sub_1AF58232C;
  *(v10 + 72) = v8;
  sub_1AF0FB8EC(v16, v15);
  *(v10 + 168) = 0;
  *(v10 + 176) = 0;

  *(v10 + 216) = 0;

  *(v0 + 40) = v10;
  qword_1EB6C2D78 = v0;
  return result;
}

uint64_t sub_1AF4A9DF8()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE550E0;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6158];
  sub_1AF5A9240(0, &qword_1EB634358, MEMORY[0x1E69E6158], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF582574;
  v3[5] = KeyPath;
  v3[2] = sub_1AF5825A0;
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
  *(v4 + 16) = 0x656E656373;
  *(v4 + 24) = 0xE500000000000000;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = v2;
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

  *(v4 + 64) = sub_1AF5825D0;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0, 0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  v8 = swift_getKeyPath();
  v9 = swift_allocObject();
  v9[4] = sub_1AF5A9310;
  v9[5] = v8;
  v9[2] = sub_1AF5A9668;
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
  *(v10 + 16) = 1752393069;
  *(v10 + 24) = 0xE400000000000000;
  *(v10 + 32) = v8;
  *(v10 + 40) = v2;
  *(v10 + 48) = 16;
  *(v10 + 56) = 0;
  *(v10 + 58) = 4;
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
  *(v10 + 210) = 4;
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

  *(v10 + 64) = sub_1AF5A966C;
  *(v10 + 72) = v8;
  sub_1AF0FB8EC(0, 0);
  *(v10 + 168) = 0;
  *(v10 + 176) = 0;

  *(v10 + 216) = 0;
  *(v0 + 40) = v10;
  qword_1EB6C2D80 = v0;
  return result;
}

uint64_t sub_1AF4AA314()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C3E0;
  KeyPath = swift_getKeyPath();
  v2 = &type metadata for Asset;
  sub_1AF5A9240(0, &qword_1EB63A428, &type metadata for Asset, type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF582714;
  v3[5] = KeyPath;
  v3[2] = sub_1AF582768;
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

  *(v4 + 64) = sub_1AF582798;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0, 0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  qword_1EB6C2D88 = v0;
  return result;
}

uint64_t CTLineBreakMode.description.getter(unsigned __int8 a1)
{
  if (a1 > 2u)
  {
    if (a1 == 3 || a1 == 4)
    {
      return 0x697461636E757274;
    }

    if (a1 == 5)
    {
      return 0xD000000000000010;
    }
  }

  else
  {
    switch(a1)
    {
      case 0u:
        v1 = 1685221239;
        return v1 | 0x7061725700000000;
      case 1u:
        v1 = 1918986339;
        return v1 | 0x7061725700000000;
      case 2u:
        return 0x676E697070696C63;
    }
  }

  sub_1AFDFE218();

  v3 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v3);

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t CTTextAlignment.description.getter(unsigned __int8 a1)
{
  if (a1 <= 1u)
  {
    if (!a1)
    {
      return 1952867692;
    }

    if (a1 == 1)
    {
      return 0x7468676972;
    }
  }

  else
  {
    switch(a1)
    {
      case 4u:
        return 0x6C61727574616ELL;
      case 3u:
        return 0x656966697473756ALL;
      case 2u:
        return 0x7265746E6563;
    }
  }

  sub_1AFDFE218();

  v2 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v2);

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF4AAA88()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE55180;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6158];
  sub_1AF5A9240(0, &qword_1EB634358, MEMORY[0x1E69E6158], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF582894;
  v3[5] = KeyPath;
  v3[2] = sub_1AF5828C0;
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
  *(v4 + 16) = 1954047348;
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

  *(v4 + 64) = sub_1AF5828F0;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0, 0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  v7 = swift_getKeyPath();
  sub_1AF51B13C(0, &qword_1EB63A488, sub_1AF58298C, type metadata accessor for EntityGetSet);
  v8 = swift_allocObject();
  v8[4] = sub_1AF582930;
  v8[5] = v7;
  v8[2] = sub_1AF58295C;
  v8[3] = v7;
  v8[6] = v7;
  v9 = swift_allocObject();
  *(v9 + 104) = 0;
  *(v9 + 112) = 1;
  *(v9 + 128) = 0;
  *(v9 + 136) = 0;
  *(v9 + 120) = 0;
  *(v9 + 160) = MEMORY[0x1E69E7CC0];
  *(v9 + 216) = 0;
  sub_1AF58298C(0);
  *(v9 + 168) = 0;
  *(v9 + 176) = 0;
  *(v9 + 16) = 1953394534;
  *(v9 + 24) = 0xE400000000000000;
  *(v9 + 32) = v7;
  *(v9 + 40) = v10;
  *(v9 + 48) = 0;
  *(v9 + 56) = 1;
  *(v9 + 58) = 0;
  *(v9 + 184) = 0;
  *(v9 + 188) = 1;
  *(v9 + 192) = 0;
  *(v9 + 196) = 1;
  *(v9 + 200) = 0x1000100000000;
  *(v9 + 208) = 1;
  *(v9 + 64) = 0;
  *(v9 + 72) = 0;
  *(v9 + 96) = 0;
  *(v9 + 144) = xmmword_1AFE22A20;
  *(v9 + 80) = v8;
  *(v9 + 88) = &off_1F2535378;
  *(v9 + 210) = 0;
  v11 = sub_1AF0D4478(0, &qword_1EB638E60, 0x1E69DB878);
  v12 = swift_conformsToProtocol2();
  swift_retain_n();
  v13 = 0;
  v14 = 0;
  if (v12 && v11)
  {
    *(v9 + 160) = (*(v12 + 8))(v11, v12);

    v14 = *(v9 + 64);
    v13 = *(v9 + 72);
  }

  *(v9 + 64) = sub_1AF5829F4;
  *(v9 + 72) = v7;
  sub_1AF0FB8EC(v14, v13);
  *(v9 + 168) = 0;
  *(v9 + 176) = 0;

  *(v9 + 216) = 0;

  *(v0 + 40) = v9;
  v15 = swift_getKeyPath();
  sub_1AF57B9C0(0);
  v16 = swift_allocObject();
  v16[4] = sub_1AF582A40;
  v16[5] = v15;
  v16[2] = sub_1AF582A58;
  v16[3] = v15;
  v16[6] = v15;
  v17 = swift_allocObject();
  *(v17 + 104) = 0;
  *(v17 + 112) = 1;
  *(v17 + 128) = 0;
  *(v17 + 136) = 0;
  *(v17 + 120) = 0;
  *(v17 + 160) = MEMORY[0x1E69E7CC0];
  *(v17 + 216) = 0;
  sub_1AF583D60(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
  v19 = v18;
  *(v17 + 168) = 0;
  *(v17 + 176) = 0;
  *(v17 + 16) = 0x756F726765726F66;
  *(v17 + 24) = 0xEF726F6C6F43646ELL;
  *(v17 + 32) = v15;
  *(v17 + 40) = v18;
  *(v17 + 48) = 48;
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
  *(v17 + 144) = xmmword_1AFE55160;
  *(v17 + 80) = v16;
  *(v17 + 88) = &off_1F2535378;
  *(v17 + 210) = 0;
  v20 = swift_conformsToProtocol2();
  if (v20)
  {
    v21 = v19;
  }

  else
  {
    v21 = 0;
  }

  swift_retain_n();
  v22 = v19;
  if (v21)
  {
    v22 = (*(v20 + 8))(v21, v20);
  }

  v23 = swift_conformsToProtocol2();
  if (v23 && v22)
  {
    *(v17 + 160) = (*(v23 + 8))(v22, v23);
  }

  v24 = *(v17 + 64);
  v25 = *(v17 + 72);
  *(v17 + 64) = sub_1AF582ABC;
  *(v17 + 72) = v15;
  sub_1AF0FB8EC(v24, v25);
  *(v17 + 168) = 0;
  *(v17 + 176) = 0;

  *(v17 + 216) = 0;

  *(v0 + 48) = v17;
  v26 = swift_getKeyPath();
  v27 = swift_allocObject();
  v27[4] = sub_1AF5A9674;
  v27[5] = v26;
  v27[2] = sub_1AF5A9B60;
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
  *(v28 + 16) = 0x756F72676B636162;
  *(v28 + 24) = 0xEF726F6C6F43646ELL;
  *(v28 + 32) = v26;
  *(v28 + 40) = v19;
  *(v28 + 48) = 64;
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
  *(v28 + 144) = xmmword_1AFE55160;
  *(v28 + 80) = v27;
  *(v28 + 88) = &off_1F2535378;
  *(v28 + 210) = 0;
  swift_retain_n();
  v29 = v19;
  if (v21)
  {
    v29 = (*(v20 + 8))(v21, v20);
  }

  v30 = swift_conformsToProtocol2();
  if (v30 && v29)
  {
    *(v28 + 160) = (*(v30 + 8))(v29, v30);
  }

  v31 = *(v28 + 64);
  v32 = *(v28 + 72);
  *(v28 + 64) = sub_1AF5A9678;
  *(v28 + 72) = v26;
  sub_1AF0FB8EC(v31, v32);
  *(v28 + 168) = 0;
  *(v28 + 176) = 0;

  *(v28 + 216) = 0;

  *(v0 + 56) = v28;
  v33 = swift_getKeyPath();
  sub_1AF57C8C8(0);
  v34 = swift_allocObject();
  v34[4] = sub_1AF582B00;
  v34[5] = v33;
  v34[2] = sub_1AF582B34;
  v34[3] = v33;
  v34[6] = v33;
  v35 = swift_allocObject();
  *(v35 + 104) = 0;
  *(v35 + 112) = 1;
  *(v35 + 128) = 0;
  *(v35 + 136) = 0;
  *(v35 + 120) = 0;
  *(v35 + 160) = MEMORY[0x1E69E7CC0];
  *(v35 + 216) = 0;
  sub_1AF583D60(0, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
  v37 = v36;
  *(v35 + 168) = 0;
  *(v35 + 176) = 0;
  *(v35 + 16) = 0x7A69536567616D69;
  *(v35 + 24) = 0xE900000000000065;
  *(v35 + 32) = v33;
  *(v35 + 40) = v36;
  *(v35 + 48) = 80;
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
  *(v35 + 144) = xmmword_1AFE22A20;
  *(v35 + 80) = v34;
  *(v35 + 88) = &off_1F2535378;
  *(v35 + 210) = 0;
  v38 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v38 && v37)
  {
    v37 = (*(v38 + 8))(v37, v38);
  }

  v39 = swift_conformsToProtocol2();
  if (v39 && v37)
  {
    *(v35 + 160) = (*(v39 + 8))(v37, v39);
  }

  v40 = *(v35 + 64);
  v41 = *(v35 + 72);
  *(v35 + 64) = sub_1AF582B90;
  *(v35 + 72) = v33;
  sub_1AF0FB8EC(v40, v41);
  *(v35 + 168) = 0;
  *(v35 + 176) = 0;

  *(v35 + 216) = 0;

  *(v0 + 64) = v35;
  v42 = swift_getKeyPath();
  sub_1AF51B13C(0, &qword_1EB63A4A0, type metadata accessor for CTTextAlignment, type metadata accessor for EntityGetSet);
  v43 = swift_allocObject();
  v43[4] = sub_1AF5A9428;
  v43[5] = v42;
  v43[2] = sub_1AF582BD4;
  v43[3] = v42;
  v43[6] = v42;
  v44 = swift_allocObject();
  *(v44 + 104) = 0;
  *(v44 + 112) = 1;
  *(v44 + 128) = 0;
  *(v44 + 136) = 0;
  *(v44 + 120) = 0;
  *(v44 + 160) = MEMORY[0x1E69E7CC0];
  *(v44 + 216) = 0;
  type metadata accessor for CTTextAlignment(0);
  v46 = v45;
  *(v44 + 168) = 0;
  *(v44 + 176) = 0;
  *(v44 + 16) = 0x6E656D6E67696C61;
  *(v44 + 24) = 0xE900000000000074;
  *(v44 + 32) = v42;
  *(v44 + 40) = v45;
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
  *(v44 + 144) = xmmword_1AFE22A20;
  *(v44 + 80) = v43;
  *(v44 + 88) = &off_1F2535378;
  *(v44 + 210) = 0;
  v47 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v47 && v46)
  {
    v46 = (*(v47 + 8))(v46, v47);
  }

  v48 = swift_conformsToProtocol2();
  if (v48 && v46)
  {
    *(v44 + 160) = (*(v48 + 8))(v46, v48);
  }

  v49 = *(v44 + 64);
  v50 = *(v44 + 72);
  *(v44 + 64) = sub_1AF582C08;
  *(v44 + 72) = v42;
  sub_1AF0FB8EC(v49, v50);
  *(v44 + 168) = 0;
  *(v44 + 176) = 0;

  *(v44 + 216) = 0;

  *(v0 + 72) = v44;
  v51 = swift_getKeyPath();
  sub_1AF51B13C(0, &qword_1EB63A4A8, type metadata accessor for CTLineBreakMode, type metadata accessor for EntityGetSet);
  v52 = swift_allocObject();
  v52[4] = sub_1AF582C54;
  v52[5] = v51;
  v52[2] = sub_1AF582C88;
  v52[3] = v51;
  v52[6] = v51;
  v53 = swift_allocObject();
  *(v53 + 104) = 0;
  *(v53 + 112) = 1;
  *(v53 + 128) = 0;
  *(v53 + 136) = 0;
  *(v53 + 120) = 0;
  *(v53 + 160) = MEMORY[0x1E69E7CC0];
  *(v53 + 216) = 0;
  type metadata accessor for CTLineBreakMode(0);
  v55 = v54;
  *(v53 + 168) = 0;
  *(v53 + 176) = 0;
  *(v53 + 16) = 0x61657242656E696CLL;
  *(v53 + 24) = 0xE90000000000006BLL;
  *(v53 + 32) = v51;
  *(v53 + 40) = v54;
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
  *(v53 + 96) = 0;
  *(v53 + 144) = xmmword_1AFE22A20;
  *(v53 + 80) = v52;
  *(v53 + 88) = &off_1F2535378;
  *(v53 + 210) = 0;
  v56 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v56 && v55)
  {
    v55 = (*(v56 + 8))(v55, v56);
  }

  v57 = swift_conformsToProtocol2();
  if (v57 && v55)
  {
    *(v53 + 160) = (*(v57 + 8))(v55, v57);
  }

  v58 = *(v53 + 64);
  v59 = *(v53 + 72);
  *(v53 + 64) = sub_1AF582CBC;
  *(v53 + 72) = v51;
  sub_1AF0FB8EC(v58, v59);
  *(v53 + 168) = 0;
  *(v53 + 176) = 0;

  *(v53 + 216) = 0;

  *(v0 + 80) = v53;
  v60 = swift_getKeyPath();
  sub_1AF51B13C(0, &qword_1EB63A4B0, sub_1AF582D5C, type metadata accessor for EntityGetSet);
  v61 = swift_allocObject();
  v61[4] = sub_1AF582D08;
  v61[5] = v60;
  v61[2] = sub_1AF582D20;
  v61[3] = v60;
  v61[6] = v60;
  v62 = swift_allocObject();
  *(v62 + 104) = 0;
  *(v62 + 112) = 1;
  *(v62 + 128) = 0;
  *(v62 + 136) = 0;
  *(v62 + 120) = 0;
  *(v62 + 160) = MEMORY[0x1E69E7CC0];
  *(v62 + 216) = 0;
  sub_1AF582D5C(0);
  *(v62 + 168) = 0;
  *(v62 + 176) = 0;
  *(v62 + 16) = 0x656E6961746E6F63;
  *(v62 + 24) = 0xE900000000000072;
  *(v62 + 32) = v60;
  *(v62 + 40) = v63;
  *(v62 + 48) = 96;
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
  *(v62 + 96) = 0;
  *(v62 + 144) = xmmword_1AFE22A20;
  *(v62 + 80) = v61;
  *(v62 + 88) = &off_1F2535378;
  *(v62 + 210) = 0;
  v64 = swift_conformsToProtocol2();
  swift_retain_n();
  v65 = 0;
  v66 = 0;
  if (v64 && v19)
  {
    *(v62 + 160) = (*(v64 + 8))(v19, v64);

    v66 = *(v62 + 64);
    v65 = *(v62 + 72);
  }

  *(v62 + 64) = sub_1AF582DEC;
  *(v62 + 72) = v60;
  sub_1AF0FB8EC(v66, v65);
  *(v62 + 168) = 0;
  *(v62 + 176) = 0;

  *(v62 + 216) = 0;

  *(v0 + 88) = v62;
  qword_1EB6C2D90 = v0;
  return result;
}

id sub_1AF4ABABC()
{
  v9 = *(v0 + 24);
  v10 = *(v0 + 40);

  if (!sub_1AFDFD048())
  {
    sub_1AF58326C(&v9);
    v1 = [objc_opt_self() systemFontOfSize_];
    v2 = [v1 fontName];

    sub_1AFDFCEF8();
  }

  v3 = v10;
  v4 = sub_1AFDFCEC8();

  v5 = [objc_opt_self() fontDescriptorWithName:v4 size:v3];

  v6 = objc_opt_self();
  v7 = [v6 fontWithDescriptor:v5 size:v3];
  if (!v7)
  {
    v7 = [v6 systemFontOfSize_];
  }

  return v7;
}

uint64_t sub_1AF4ABC28(void **a1, uint64_t a2)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = *a1;
  }

  else
  {
    v4 = [objc_opt_self() systemFontOfSize_];
    v3 = 0;
  }

  v5 = v3;
  v6 = [v4 fontName];
  v7 = sub_1AFDFCEF8();
  v9 = v8;

  [v4 pointSize];
  v11 = v10;

  *(a2 + 24) = v7;
  *(a2 + 32) = v9;
  *&v11 = v11;
  *(a2 + 40) = LODWORD(v11);
  return result;
}

uint64_t sub_1AF4ABD1C()
{
  if (qword_1EB636D58 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1AF4ABE0C()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE551C0;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6370];
  sub_1AF5A9240(0, &qword_1ED722B80, MEMORY[0x1E69E6370], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF583374;
  v3[5] = KeyPath;
  v3[2] = sub_1AF5833A0;
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
  *(v4 + 16) = 0x65727574706163;
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
  *(v4 + 144) = xmmword_1AFE55120;
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

  *(v4 + 64) = sub_1AF5833FC;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0, 0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  v8 = swift_getKeyPath();
  v9 = swift_allocObject();
  v9[4] = sub_1AF5AA0C0;
  v9[5] = v8;
  v9[2] = sub_1AF5A9B70;
  v9[3] = v8;
  v9[6] = v8;
  v10 = swift_allocObject();
  *(v10 + 112) = 1;
  *(v10 + 128) = 0;
  *(v10 + 136) = 0;
  *(v10 + 120) = 0;
  *(v10 + 168) = 0;
  *(v10 + 160) = MEMORY[0x1E69E7CC0];
  *(v10 + 216) = 0;
  *(v10 + 176) = 0;
  *(v10 + 16) = 0x6465726F7272696DLL;
  *(v10 + 24) = 0xE800000000000000;
  *(v10 + 32) = v8;
  *(v10 + 40) = v2;
  *(v10 + 48) = 2;
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

  v11 = swift_conformsToProtocol2();
  if (v11 && v2)
  {
    *(v10 + 160) = (*(v11 + 8))(v2, v11);
  }

  *(v10 + 64) = sub_1AF5A9688;
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
  v15[4] = sub_1AF58343C;
  v15[5] = v13;
  v15[2] = sub_1AF583470;
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
  *(v16 + 16) = 0xD000000000000010;
  *(v16 + 24) = 0x80000001AFF2A2B0;
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

  *(v16 + 64) = sub_1AF5834CC;
  *(v16 + 72) = v13;
  sub_1AF0FB8EC(0, 0);
  *(v16 + 168) = 0;
  *(v16 + 176) = 0;

  *(v16 + 216) = 0;
  v19 = &type metadata for VideoCapture.OrientationMode;
  sub_1AF5A9240(0, &qword_1EB63A538, &type metadata for VideoCapture.OrientationMode, type metadata accessor for EntityGetSet);
  v20 = swift_allocObject();
  v20[4] = sub_1AF58350C;
  v20[5] = v12;
  v20[2] = sub_1AF583538;
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
  *(v21 + 16) = 0x7461746E6569726FLL;
  *(v21 + 24) = 0xEB000000006E6F69;
  *(v21 + 32) = v12;
  *(v21 + 40) = &type metadata for VideoCapture.OrientationMode;
  *(v21 + 48) = 1;
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

  *(v21 + 64) = sub_1AF583594;
  *(v21 + 72) = v12;
  sub_1AF0FB8EC(0, 0);
  *(v21 + 168) = 0;
  *(v21 + 176) = 0;

  *(v21 + 216) = v16;
  *(v0 + 48) = v21;
  v24 = swift_getKeyPath();
  v25 = &_s15CaptureDeviceIDVN;
  sub_1AF5A9240(0, &qword_1EB63A540, &_s15CaptureDeviceIDVN, type metadata accessor for EntityGetSet);
  v26 = swift_allocObject();
  v26[4] = sub_1AF5835D4;
  v26[5] = v24;
  v26[2] = sub_1AF5835D8;
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
  *(v27 + 16) = 0x656369766564;
  *(v27 + 24) = 0xE600000000000000;
  *(v27 + 32) = v24;
  *(v27 + 40) = &_s15CaptureDeviceIDVN;
  *(v27 + 48) = 0;
  *(v27 + 56) = 1;
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

  *(v27 + 64) = sub_1AF5835E0;
  *(v27 + 72) = v24;
  sub_1AF0FB8EC(0, 0);
  *(v27 + 168) = 0;
  *(v27 + 176) = 0;

  *(v27 + 216) = 0;
  *(v0 + 56) = v27;
  v30 = swift_getKeyPath();
  v31 = MEMORY[0x1E69E6158];
  sub_1AF5A9240(0, &qword_1EB634358, MEMORY[0x1E69E6158], type metadata accessor for EntityGetSet);
  v32 = swift_allocObject();
  v32[4] = sub_1AF583620;
  v32[5] = v30;
  v32[2] = sub_1AF58364C;
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
  *(v33 + 16) = 0x696669746E656469;
  *(v33 + 24) = 0xEA00000000007265;
  *(v33 + 32) = v30;
  *(v33 + 40) = v31;
  *(v33 + 48) = 8;
  *(v33 + 56) = 0;
  *(v33 + 58) = 4;
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
  *(v33 + 210) = 4;
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

  *(v33 + 64) = sub_1AF58367C;
  *(v33 + 72) = v30;
  sub_1AF0FB8EC(0, 0);
  *(v33 + 168) = 0;
  *(v33 + 176) = 0;

  *(v33 + 216) = 0;
  *(v0 + 64) = v33;
  qword_1EB6C2D98 = v0;
  return result;
}

unint64_t sub_1AF4ACA00(unint64_t result)
{
  v2 = 4;
  if (result < 4)
  {
    v2 = result;
  }

  *(v1 + 1) = v2;
  return result;
}

uint64_t sub_1AF4ACA14()
{
  v1 = *(v0 + 24);
  if (*(v0 + 32))
  {

    v2 = sub_1AFDFCEC8();
    v3 = [objc_opt_self() deviceWithUniqueID_];

    if (v3)
    {
      v4 = [v3 localizedName];

      sub_1AFDFCEF8();
    }
  }

  return v1;
}

uint64_t sub_1AF4ACAEC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 1701667182;
  }

  else
  {
    v3 = 0x4449657571696E75;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 1701667182;
  }

  else
  {
    v5 = 0x4449657571696E75;
  }

  if (*a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1AFDFEE28();
  }

  return v8 & 1;
}

uint64_t sub_1AF4ACB8C()
{
  if (*v0)
  {
    return 1701667182;
  }

  else
  {
    return 0x4449657571696E75;
  }
}

uint64_t sub_1AF4ACBC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4449657571696E75 && a2 == 0xE800000000000000;
  if (v6 || (sub_1AFDFEE28() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1AFDFEE28();

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

uint64_t sub_1AF4ACC9C(uint64_t a1)
{
  v2 = sub_1AF583D0C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF4ACCD8(uint64_t a1)
{
  v2 = sub_1AF583D0C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF4ACD14(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  result = (v4 | v5) == 0;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if (*a1 == *a2 && v4 == v5)
    {
      return 1;
    }

    else
    {
      return sub_1AFDFEE28();
    }
  }

  return result;
}

char *sub_1AF4ACD60@<X0>(char **a1@<X8>)
{
  result = sub_1AF570244();
  *a1 = result;
  return result;
}

uint64_t sub_1AF4ACD88()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v1 = 0x746C7561666544;
  }

  return v1;
}

uint64_t sub_1AF4ACE90(uint64_t a1)
{
  if (a1)
  {
    v3 = sub_1AFCFF70C();
    v4 = a1 - 1;
    if ((v3 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1B2719C70](v4, v3);
    }

    else
    {
      v5 = *(v3 + 8 * v4 + 32);
    }

    v6 = v5;

    v7 = [v6 uniqueID];
    v8 = sub_1AFDFCEF8();
    v10 = v9;

    *v1 = v8;
    v1[1] = v10;
    v11 = [v6 localizedName];
    v12 = sub_1AFDFCEF8();
    v14 = v13;

    v1[2] = v12;
    v1[3] = v14;
  }

  else
  {

    *v1 = 0;
    v1[1] = 0;

    v1[2] = 0;
    v1[3] = 0;
  }

  return result;
}

uint64_t sub_1AF4ACF8C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[2] = a5;
  v13[1] = a4;
  sub_1AF583D60(0, &qword_1EB63A5A0, sub_1AF583D0C, &_s15CaptureDeviceIDV10CodingKeysON, MEMORY[0x1E69E6F58]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v13 - v9;
  sub_1AF441150(a1, a1[3]);
  sub_1AF583D0C();
  sub_1AFDFF3F8();
  v15 = 0;
  v11 = v13[3];
  sub_1AFDFE868();
  if (!v11)
  {
    v14 = 1;
    sub_1AFDFE868();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1AF4AD15C@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1AF583B1C(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t sub_1AF4AD1AC()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE550E0;
  KeyPath = swift_getKeyPath();
  v2 = &type metadata for Entity;
  sub_1AF5A9240(0, &unk_1EB6338D8, &type metadata for Entity, type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF583DC8;
  v3[5] = KeyPath;
  v3[2] = sub_1AF583DFC;
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
  *(v4 + 16) = 0x6C65646F6DLL;
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

  *(v4 + 64) = sub_1AF583E58;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0, 0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  v8 = swift_getKeyPath();
  v9 = swift_allocObject();
  v9[4] = sub_1AF5AA2F0;
  v9[5] = v8;
  v9[2] = sub_1AF5A9B7C;
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

  *(v10 + 64) = sub_1AF5A9698;
  *(v10 + 72) = v8;
  sub_1AF0FB8EC(0, 0);
  *(v10 + 168) = 0;
  *(v10 + 176) = 0;

  *(v10 + 216) = 0;
  *(v0 + 40) = v10;
  qword_1EB6C2DA0 = v0;
  return result;
}

uint64_t sub_1AF4AD6D0()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE55130;
  KeyPath = swift_getKeyPath();
  v2 = &type metadata for Entity;
  sub_1AF5A9240(0, &unk_1EB6338D8, &type metadata for Entity, type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF583EF8;
  v3[5] = KeyPath;
  v3[2] = sub_1AF583F2C;
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

  *(v4 + 64) = sub_1AF583F88;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0, 0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  v8 = swift_getKeyPath();
  v9 = swift_allocObject();
  v9[4] = sub_1AF5AA2F4;
  v9[5] = v8;
  v9[2] = sub_1AF5A9B80;
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
  *(v10 + 16) = 1953460082;
  *(v10 + 24) = 0xE400000000000000;
  *(v10 + 32) = v8;
  *(v10 + 40) = &type metadata for Entity;
  *(v10 + 48) = 8;
  *(v10 + 56) = 0;
  *(v10 + 58) = 4;
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
  *(v10 + 210) = 4;
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

  *(v10 + 64) = sub_1AF5A969C;
  *(v10 + 72) = v8;
  sub_1AF0FB8EC(0, 0);
  *(v10 + 168) = 0;
  *(v10 + 176) = 0;

  *(v10 + 216) = 0;
  *(v0 + 40) = v10;
  v12 = swift_getKeyPath();
  sub_1AF57C034(0);
  v13 = swift_allocObject();
  v13[4] = sub_1AF583FC8;
  v13[5] = v12;
  v13[2] = sub_1AF583FF4;
  v13[3] = v12;
  v13[6] = v12;
  v14 = swift_allocObject();
  *(v14 + 104) = 0;
  *(v14 + 112) = 1;
  *(v14 + 128) = 0;
  *(v14 + 136) = 0;
  *(v14 + 120) = 0;
  *(v14 + 160) = MEMORY[0x1E69E7CC0];
  *(v14 + 216) = 0;
  sub_1AF5A9240(0, &unk_1ED723230, &type metadata for Entity, MEMORY[0x1E69E62F8]);
  v16 = v15;
  *(v14 + 168) = 0;
  *(v14 + 176) = 0;
  *(v14 + 16) = 0x6C6576654C706F74;
  *(v14 + 24) = 0xEF737463656A624FLL;
  *(v14 + 32) = v12;
  *(v14 + 40) = v15;
  *(v14 + 48) = 16;
  *(v14 + 56) = 0;
  *(v14 + 58) = 4;
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
  *(v14 + 210) = 4;
  v17 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v17 && v16)
  {
    v16 = (*(v17 + 8))(v16, v17);
  }

  v18 = swift_conformsToProtocol2();
  if (v18 && v16)
  {
    *(v14 + 160) = (*(v18 + 8))(v16, v18);
  }

  v19 = *(v14 + 64);
  v20 = *(v14 + 72);
  *(v14 + 64) = sub_1AF584024;
  *(v14 + 72) = v12;
  sub_1AF0FB8EC(v19, v20);
  *(v14 + 168) = 0;
  *(v14 + 176) = 0;

  *(v14 + 216) = 0;

  *(v0 + 48) = v14;
  qword_1EB6C2DA8 = v0;
  return result;
}

uint64_t sub_1AF4ADDD8()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE550E0;
  KeyPath = swift_getKeyPath();
  sub_1AF51B13C(0, &qword_1EB63A5C0, sub_1AF58425C, type metadata accessor for EntityGetSet);
  v2 = swift_allocObject();
  v2[4] = sub_1AF584200;
  v2[5] = KeyPath;
  v2[2] = sub_1AF58422C;
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
  sub_1AF58425C(0);
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;
  *(v3 + 16) = 1752393069;
  *(v3 + 24) = 0xE400000000000000;
  *(v3 + 32) = KeyPath;
  *(v3 + 40) = v5;
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  *(v3 + 58) = 4;
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
  *(v3 + 210) = 4;
  v6 = type metadata accessor for Mesh();
  v7 = swift_conformsToProtocol2();
  swift_retain_n();
  v8 = 0;
  v9 = 0;
  if (v7 && v6)
  {
    *(v3 + 160) = (*(v7 + 8))(v6, v7);

    v9 = *(v3 + 64);
    v8 = *(v3 + 72);
  }

  *(v3 + 64) = sub_1AF584290;
  *(v3 + 72) = KeyPath;
  sub_1AF0FB8EC(v9, v8);
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;

  *(v3 + 216) = 0;

  *(v0 + 32) = v3;
  v10 = swift_getKeyPath();
  sub_1AF57C034(0);
  v11 = swift_allocObject();
  v11[4] = sub_1AF5842DC;
  v11[5] = v10;
  v11[2] = sub_1AF584308;
  v11[3] = v10;
  v11[6] = v10;
  v12 = swift_allocObject();
  *(v12 + 104) = 0;
  *(v12 + 112) = 1;
  *(v12 + 128) = 0;
  *(v12 + 136) = 0;
  *(v12 + 120) = 0;
  *(v12 + 160) = v4;
  *(v12 + 216) = 0;
  sub_1AF5A9240(0, &unk_1ED723230, &type metadata for Entity, MEMORY[0x1E69E62F8]);
  v14 = v13;
  *(v12 + 168) = 0;
  *(v12 + 176) = 0;
  *(v12 + 16) = 0x6C6169726574616DLL;
  *(v12 + 24) = 0xE900000000000073;
  *(v12 + 32) = v10;
  *(v12 + 40) = v13;
  *(v12 + 48) = 8;
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
  *(v12 + 144) = xmmword_1AFE551F0;
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
  *(v12 + 64) = sub_1AF584338;
  *(v12 + 72) = v10;
  sub_1AF0FB8EC(v17, v18);
  *(v12 + 168) = 0;
  *(v12 + 176) = 0;

  *(v12 + 216) = 0;

  *(v0 + 40) = v12;
  qword_1EB6C2DB0 = v0;
  return result;
}

uint64_t sub_1AF4AE318(uint64_t result)
{
  if ((result & 0xFC) != 0)
  {
    v2 = 1;
  }

  else
  {
    v2 = result;
  }

  *(v1 + 3) = v2;
  return result;
}

uint64_t sub_1AF4AE330(uint64_t result)
{
  if ((result & 0xFC) != 0)
  {
    v2 = 1;
  }

  else
  {
    v2 = result;
  }

  *(v1 + 4) = v2;
  return result;
}

uint64_t sub_1AF4AE340()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v937 = swift_allocObject();
  *(v937 + 16) = xmmword_1AFE55200;
  KeyPath = swift_getKeyPath();
  v1 = swift_getKeyPath();
  v2 = MEMORY[0x1E69E7360];
  sub_1AF5A9240(0, &unk_1EB634340, MEMORY[0x1E69E7360], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF584554;
  v3[5] = v1;
  v3[2] = sub_1AF584588;
  v3[3] = v1;
  v3[6] = v1;
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
  *(v4 + 16) = 0x65646E4965707974;
  *(v4 + 24) = 0xE900000000000078;
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
  v5 = swift_conformsToProtocol2();
  swift_retain_n();
  v936 = v5;
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
  *(v4 + 64) = sub_1AF5845E4;
  *(v4 + 72) = v1;
  sub_1AF0FB8EC(v8, v9);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;

  v10 = &type metadata for Material.Kind;
  sub_1AF5A9240(0, &qword_1EB63A600, &type metadata for Material.Kind, type metadata accessor for EntityGetSet);
  v11 = swift_allocObject();
  v11[4] = sub_1AF5AA0D8;
  v11[5] = KeyPath;
  v11[2] = sub_1AF584624;
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
  *(v12 + 16) = 1701869940;
  *(v12 + 24) = 0xE400000000000000;
  *(v12 + 32) = KeyPath;
  *(v12 + 40) = &type metadata for Material.Kind;
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
  if (v14 && v10)
  {
    *(v12 + 160) = (*(v14 + 8))(v10, v14);
  }

  v15 = *(v12 + 64);
  v16 = *(v12 + 72);
  *(v12 + 64) = sub_1AF584680;
  *(v12 + 72) = KeyPath;
  sub_1AF0FB8EC(v15, v16);
  *(v12 + 168) = 0;
  *(v12 + 176) = 0;

  *(v12 + 216) = v4;

  *(v937 + 32) = v12;
  v17 = swift_getKeyPath();
  v18 = swift_getKeyPath();
  v19 = &type metadata for Entity;
  sub_1AF5A9240(0, &unk_1EB6338D8, &type metadata for Entity, type metadata accessor for EntityGetSet);
  v20 = swift_allocObject();
  v20[4] = sub_1AF584554;
  v20[5] = v17;
  v20[2] = sub_1AF5846C0;
  v20[3] = v17;
  v20[6] = v17;
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
  *(v21 + 16) = 0x726564616873;
  *(v21 + 24) = 0xE600000000000000;
  *(v21 + 32) = v17;
  *(v21 + 40) = &type metadata for Entity;
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
  *(v21 + 96) = v18;
  *(v21 + 104) = 0;
  *(v21 + 144) = xmmword_1AFE55210;
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
  v933 = v22;
  if (v23 && v19)
  {
    v24 = (*(v23 + 8))(v19, v23);

    *(v21 + 160) = v24;
  }

  else
  {
  }

  v25 = *(v21 + 64);
  v26 = *(v21 + 72);
  *(v21 + 64) = sub_1AF58471C;
  *(v21 + 72) = v17;
  sub_1AF0FB8EC(v25, v26);
  *(v21 + 168) = 0;
  *(v21 + 176) = 0;

  *(v21 + 216) = 0;

  *(v937 + 40) = v21;
  v27 = swift_getKeyPath();
  v28 = swift_getKeyPath();
  v29 = swift_allocObject();
  v29[4] = sub_1AF5AA2F8;
  v29[5] = v28;
  v29[2] = sub_1AF5A9B84;
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
  strcpy((v30 + 16), "blendModeIndex");
  *(v30 + 31) = -18;
  *(v30 + 32) = v28;
  v31 = MEMORY[0x1E69E7360];
  *(v30 + 40) = MEMORY[0x1E69E7360];
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
  if (v936)
  {
    v31 = (*(v936 + 8))();
  }

  v32 = swift_conformsToProtocol2();
  if (v32 && v31)
  {
    *(v30 + 160) = (*(v32 + 8))(v31, v32);
  }

  v33 = *(v30 + 64);
  v34 = *(v30 + 72);
  *(v30 + 64) = sub_1AF5A96AC;
  *(v30 + 72) = v28;
  sub_1AF0FB8EC(v33, v34);
  *(v30 + 168) = 0;
  *(v30 + 176) = 0;

  *(v30 + 216) = 0;

  v35 = &type metadata for BlendMode;
  sub_1AF5A9240(0, &unk_1EB633878, &type metadata for BlendMode, type metadata accessor for EntityGetSet);
  v36 = swift_allocObject();
  v36[4] = sub_1AF58475C;
  v36[5] = v27;
  v36[2] = sub_1AF584798;
  v36[3] = v27;
  v36[6] = v27;
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
  *(v37 + 16) = 0x646F4D646E656C62;
  *(v37 + 24) = 0xE900000000000065;
  *(v37 + 32) = v27;
  *(v37 + 40) = &type metadata for BlendMode;
  *(v37 + 48) = 40;
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
    v35 = (*(v38 + 8))();
  }

  v39 = swift_conformsToProtocol2();
  if (v39 && v35)
  {
    *(v37 + 160) = (*(v39 + 8))(v35, v39);
  }

  v40 = *(v37 + 64);
  v41 = *(v37 + 72);
  *(v37 + 64) = sub_1AF5847D8;
  *(v37 + 72) = v27;
  sub_1AF0FB8EC(v40, v41);
  *(v37 + 168) = 0;
  *(v37 + 176) = 0;

  *(v37 + 216) = v30;

  *(v937 + 48) = v37;
  v42 = swift_getKeyPath();
  v43 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v44 = swift_allocObject();
  v44[4] = sub_1AF584818;
  v44[5] = v42;
  v44[2] = sub_1AF58484C;
  v44[3] = v42;
  v44[6] = v42;
  v45 = swift_allocObject();
  *(v45 + 112) = 1;
  *(v45 + 128) = 0;
  *(v45 + 136) = 0;
  *(v45 + 120) = 0;
  *(v45 + 160) = MEMORY[0x1E69E7CC0];
  *(v45 + 168) = 0;
  *(v45 + 210) = 0;
  *(v45 + 216) = 0;
  *(v45 + 176) = 0;
  *(v45 + 16) = 0x685466666F747563;
  *(v45 + 24) = 0xEF646C6F68736572;
  *(v45 + 32) = v42;
  *(v45 + 40) = v43;
  *(v45 + 48) = 48;
  *(v45 + 56) = 0;
  *(v45 + 58) = 0;
  *(v45 + 184) = -1082130432;
  *(v45 + 188) = 0;
  *(v45 + 192) = 1065353216;
  *(v45 + 196) = 0;
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
  v46 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v46)
  {
    v43 = (*(v46 + 8))();
  }

  v928 = v46;
  v47 = swift_conformsToProtocol2();
  if (v47 && v43)
  {
    *(v45 + 160) = (*(v47 + 8))(v43, v47);
  }

  v48 = *(v45 + 64);
  v49 = *(v45 + 72);
  *(v45 + 64) = sub_1AF5848A8;
  *(v45 + 72) = v42;
  sub_1AF0FB8EC(v48, v49);
  *(v45 + 168) = 0;
  *(v45 + 176) = 0;

  *(v45 + 216) = 0;

  *(v937 + 56) = v45;
  v50 = swift_getKeyPath();
  v51 = swift_getKeyPath();
  v52 = swift_allocObject();
  v52[4] = sub_1AF5AA2F8;
  v52[5] = v51;
  v52[2] = sub_1AF5A9B84;
  v52[3] = v51;
  v52[6] = v51;
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
  *(v53 + 16) = 0x676E69646E6977;
  *(v53 + 24) = 0xE700000000000000;
  *(v53 + 32) = v51;
  v54 = MEMORY[0x1E69E7360];
  *(v53 + 40) = MEMORY[0x1E69E7360];
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
  *(v53 + 96) = 0;
  *(v53 + 104) = 0;
  *(v53 + 144) = xmmword_1AFE22A20;
  *(v53 + 80) = v52;
  *(v53 + 88) = &off_1F2535378;
  *(v53 + 210) = 0;
  swift_retain_n();
  if (v936)
  {
    v54 = (*(v936 + 8))();
  }

  v55 = swift_conformsToProtocol2();
  if (v55 && v54)
  {
    *(v53 + 160) = (*(v55 + 8))(v54, v55);
  }

  v56 = *(v53 + 64);
  v57 = *(v53 + 72);
  *(v53 + 64) = sub_1AF5A96AC;
  *(v53 + 72) = v51;
  sub_1AF0FB8EC(v56, v57);
  *(v53 + 168) = 0;
  *(v53 + 176) = 0;

  *(v53 + 216) = 0;

  sub_1AF51B13C(0, &unk_1EB63A608, type metadata accessor for MTLWinding, type metadata accessor for EntityGetSet);
  v58 = swift_allocObject();
  v58[4] = sub_1AF584554;
  v58[5] = v50;
  v58[2] = sub_1AF5848E8;
  v58[3] = v50;
  v58[6] = v50;
  v59 = swift_allocObject();
  *(v59 + 104) = 0;
  *(v59 + 112) = 1;
  *(v59 + 128) = 0;
  *(v59 + 136) = 0;
  *(v59 + 120) = 0;
  *(v59 + 160) = MEMORY[0x1E69E7CC0];
  *(v59 + 210) = 0;
  *(v59 + 216) = 0;
  type metadata accessor for MTLWinding(0);
  v61 = v60;
  *(v59 + 168) = 0;
  *(v59 + 176) = 0;
  *(v59 + 16) = 0x676E69646E6977;
  *(v59 + 24) = 0xE700000000000000;
  *(v59 + 32) = v50;
  *(v59 + 40) = v60;
  *(v59 + 48) = 72;
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
  *(v59 + 144) = xmmword_1AFE22A20;
  *(v59 + 80) = v58;
  *(v59 + 88) = &off_1F2535378;
  *(v59 + 210) = 0;
  v62 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v62 && v61)
  {
    v61 = (*(v62 + 8))(v61, v62);
  }

  v63 = swift_conformsToProtocol2();
  if (v63 && v61)
  {
    *(v59 + 160) = (*(v63 + 8))(v61, v63);
  }

  v64 = *(v59 + 64);
  v65 = *(v59 + 72);
  *(v59 + 64) = sub_1AF584944;
  *(v59 + 72) = v50;
  sub_1AF0FB8EC(v64, v65);
  *(v59 + 168) = 0;
  *(v59 + 176) = 0;

  *(v59 + 216) = v53;

  *(v937 + 64) = v59;
  v66 = swift_getKeyPath();
  v67 = swift_getKeyPath();
  v68 = swift_allocObject();
  v68[4] = sub_1AF5AA2F8;
  v68[5] = v67;
  v68[2] = sub_1AF5A9B84;
  v68[3] = v67;
  v68[6] = v67;
  v69 = swift_allocObject();
  *(v69 + 80) = 0u;
  *(v69 + 96) = 0u;
  *(v69 + 112) = 1;
  *(v69 + 128) = 0;
  *(v69 + 136) = 0;
  *(v69 + 120) = 0;
  *(v69 + 160) = MEMORY[0x1E69E7CC0];
  *(v69 + 168) = 0;
  *(v69 + 210) = 0;
  *(v69 + 216) = 0;
  *(v69 + 176) = 0;
  *(v69 + 16) = 0x65646F4D6C6C7563;
  *(v69 + 24) = 0xE800000000000000;
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
  *(v69 + 144) = xmmword_1AFE22A20;
  *(v69 + 80) = v68;
  *(v69 + 88) = &off_1F2535378;
  swift_retain_n();
  swift_unknownObjectRelease();
  *(v69 + 210) = 0;
  if (v936)
  {
    v71 = (*(v936 + 8))();
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
  *(v69 + 64) = sub_1AF5A96AC;
  *(v69 + 72) = v67;
  sub_1AF0FB8EC(v73, v74);
  *(v69 + 168) = 0;
  *(v69 + 176) = 0;

  *(v69 + 216) = 0;

  sub_1AF51B13C(0, &unk_1EB632F50, type metadata accessor for MTLCullMode, type metadata accessor for EntityGetSet);
  v75 = swift_allocObject();
  v75[4] = sub_1AF5AA2F8;
  v75[5] = v66;
  v75[2] = sub_1AF584990;
  v75[3] = v66;
  v75[6] = v66;
  v76 = swift_allocObject();
  *(v76 + 80) = 0u;
  *(v76 + 96) = 0u;
  *(v76 + 112) = 1;
  *(v76 + 128) = 0;
  *(v76 + 136) = 0;
  *(v76 + 120) = 0;
  *(v76 + 160) = MEMORY[0x1E69E7CC0];
  *(v76 + 210) = 0;
  *(v76 + 216) = 0;
  type metadata accessor for MTLCullMode(0);
  v78 = v77;
  *(v76 + 168) = 0;
  *(v76 + 176) = 0;
  *(v76 + 16) = 0x65646F4D6C6C7563;
  *(v76 + 24) = 0xE800000000000000;
  *(v76 + 32) = v66;
  *(v76 + 40) = v77;
  *(v76 + 48) = 80;
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
  swift_retain_n();
  swift_unknownObjectRelease();
  *(v76 + 210) = 0;
  v79 = swift_conformsToProtocol2();
  if (v79 && v78)
  {
    v78 = (*(v79 + 8))(v78, v79);
  }

  v80 = swift_conformsToProtocol2();
  if (v80 && v78)
  {
    *(v76 + 160) = (*(v80 + 8))(v78, v80);
  }

  v81 = *(v76 + 64);
  v82 = *(v76 + 72);
  *(v76 + 64) = sub_1AF5849EC;
  *(v76 + 72) = v66;
  sub_1AF0FB8EC(v81, v82);
  *(v76 + 168) = 0;
  *(v76 + 176) = 0;

  *(v76 + 216) = v69;

  *(v937 + 72) = v76;
  v83 = swift_getKeyPath();
  v84 = MEMORY[0x1E69E6370];
  sub_1AF5A9240(0, &qword_1ED722B80, MEMORY[0x1E69E6370], type metadata accessor for EntityGetSet);
  v85 = swift_allocObject();
  v85[4] = sub_1AF5AA0D4;
  v85[5] = v83;
  v85[2] = sub_1AF584A38;
  v85[3] = v83;
  v85[6] = v83;
  v86 = swift_allocObject();
  *(v86 + 80) = 0u;
  *(v86 + 96) = 0u;
  *(v86 + 112) = 1;
  *(v86 + 128) = 0;
  *(v86 + 136) = 0;
  *(v86 + 120) = 0;
  *(v86 + 160) = MEMORY[0x1E69E7CC0];
  *(v86 + 168) = 0;
  *(v86 + 210) = 0;
  *(v86 + 216) = 0;
  *(v86 + 176) = 0;
  *(v86 + 16) = 0xD000000000000014;
  *(v86 + 24) = 0x80000001AFF24AB0;
  *(v86 + 32) = v83;
  *(v86 + 40) = v84;
  *(v86 + 48) = 53;
  *(v86 + 56) = 0;
  *(v86 + 58) = 0;
  *(v86 + 184) = 0;
  *(v86 + 188) = 1;
  *(v86 + 192) = 0;
  *(v86 + 196) = 1;
  *(v86 + 200) = 0x1000100000000;
  *(v86 + 208) = 1;
  *(v86 + 64) = 0;
  *(v86 + 72) = 0;
  *(v86 + 96) = 0;
  *(v86 + 144) = xmmword_1AFE22A20;
  *(v86 + 80) = v85;
  *(v86 + 88) = &off_1F2535378;
  swift_retain_n();
  swift_unknownObjectRelease();
  *(v86 + 210) = 0;
  v87 = swift_conformsToProtocol2();
  v88 = v87;
  if (v87)
  {
    v89 = (*(v87 + 8))(MEMORY[0x1E69E6370], v87);
  }

  else
  {
    v89 = v84;
  }

  v90 = MEMORY[0x1E69E7360];
  v91 = swift_conformsToProtocol2();
  if (v91 && v89)
  {
    *(v86 + 160) = (*(v91 + 8))(v89, v91);
  }

  v92 = *(v86 + 64);
  v93 = *(v86 + 72);
  *(v86 + 64) = sub_1AF584A94;
  *(v86 + 72) = v83;
  sub_1AF0FB8EC(v92, v93);
  *(v86 + 168) = 0;
  *(v86 + 176) = 0;

  *(v86 + 216) = 0;

  *(v937 + 80) = v86;
  v94 = swift_getKeyPath();
  v95 = swift_getKeyPath();
  v96 = swift_getKeyPath();
  v97 = swift_allocObject();
  v97[4] = sub_1AF5AA2F8;
  v97[5] = v96;
  v97[2] = sub_1AF5A9B84;
  v97[3] = v96;
  v97[6] = v96;
  v98 = swift_allocObject();
  *(v98 + 80) = 0u;
  *(v98 + 96) = 0u;
  *(v98 + 112) = 1;
  *(v98 + 128) = 0;
  *(v98 + 136) = 0;
  *(v98 + 120) = 0;
  *(v98 + 160) = MEMORY[0x1E69E7CC0];
  *(v98 + 168) = 0;
  *(v98 + 210) = 0;
  *(v98 + 216) = 0;
  *(v98 + 176) = 0;
  *(v98 + 16) = 0xD000000000000011;
  *(v98 + 24) = 0x80000001AFF2A2F0;
  *(v98 + 32) = v96;
  *(v98 + 40) = v90;
  *(v98 + 48) = 0;
  *(v98 + 56) = 1;
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
  *(v98 + 144) = xmmword_1AFE22A20;
  *(v98 + 80) = v97;
  *(v98 + 88) = &off_1F2535378;
  swift_retain_n();
  swift_unknownObjectRelease();
  *(v98 + 210) = 0;
  if (v936)
  {
    v99 = (*(v936 + 8))();
  }

  else
  {
    v99 = v90;
  }

  v100 = swift_conformsToProtocol2();
  if (v100 && v99)
  {
    *(v98 + 160) = (*(v100 + 8))(v99, v100);
  }

  v101 = *(v98 + 64);
  v102 = *(v98 + 72);
  *(v98 + 64) = sub_1AF5A96AC;
  *(v98 + 72) = v96;
  sub_1AF0FB8EC(v101, v102);
  *(v98 + 168) = 0;
  *(v98 + 176) = 0;

  *(v98 + 216) = 0;

  sub_1AF51B13C(0, &qword_1EB63A618, type metadata accessor for MTLCompareFunction, type metadata accessor for EntityGetSet);
  v103 = swift_allocObject();
  v103[4] = sub_1AF5AA2F8;
  v103[5] = v94;
  v103[2] = sub_1AF584AD4;
  v103[3] = v94;
  v103[6] = v94;
  v104 = swift_allocObject();
  *(v104 + 80) = 0u;
  *(v104 + 96) = 0u;
  *(v104 + 112) = 1;
  *(v104 + 128) = 0;
  *(v104 + 136) = 0;
  *(v104 + 120) = 0;
  *(v104 + 160) = MEMORY[0x1E69E7CC0];
  *(v104 + 210) = 0;
  *(v104 + 216) = 0;
  type metadata accessor for MTLCompareFunction(0);
  v106 = v105;
  *(v104 + 168) = 0;
  *(v104 + 176) = 0;
  strcpy((v104 + 16), "depthCompare");
  *(v104 + 29) = 0;
  *(v104 + 30) = -5120;
  *(v104 + 32) = v94;
  *(v104 + 40) = v105;
  *(v104 + 48) = 56;
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
  *(v104 + 96) = v95;
  *(v104 + 144) = xmmword_1AFE22A20;
  *(v104 + 80) = v103;
  *(v104 + 88) = &off_1F2535378;
  swift_retain_n();

  swift_unknownObjectRelease();
  *(v104 + 210) = 0;
  v107 = swift_conformsToProtocol2();
  if (v107 && v106)
  {
    v106 = (*(v107 + 8))(v106, v107);
  }

  v108 = swift_conformsToProtocol2();
  if (v108 && v106)
  {
    v109 = (*(v108 + 8))(v106, v108);

    *(v104 + 160) = v109;
  }

  else
  {
  }

  v110 = *(v104 + 64);
  v111 = *(v104 + 72);
  *(v104 + 64) = sub_1AF584B30;
  *(v104 + 72) = v94;
  sub_1AF0FB8EC(v110, v111);
  *(v104 + 168) = 0;
  *(v104 + 176) = 0;

  *(v104 + 216) = v98;

  *(v937 + 88) = v104;
  v112 = swift_getKeyPath();
  v113 = swift_getKeyPath();
  v114 = swift_allocObject();
  v114[4] = sub_1AF5AA0D4;
  v114[5] = v112;
  v114[2] = sub_1AF5A9B88;
  v114[3] = v112;
  v114[6] = v112;
  v115 = swift_allocObject();
  *(v115 + 80) = 0u;
  *(v115 + 96) = 0u;
  *(v115 + 112) = 1;
  *(v115 + 128) = 0;
  *(v115 + 136) = 0;
  *(v115 + 120) = 0;
  *(v115 + 160) = MEMORY[0x1E69E7CC0];
  *(v115 + 168) = 0;
  *(v115 + 210) = 0;
  *(v115 + 216) = 0;
  *(v115 + 176) = 0;
  *(v115 + 16) = 0x6972576874706564;
  *(v115 + 24) = 0xEA00000000006574;
  *(v115 + 32) = v112;
  v116 = MEMORY[0x1E69E6370];
  *(v115 + 40) = MEMORY[0x1E69E6370];
  *(v115 + 48) = 64;
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
  *(v115 + 96) = v113;
  *(v115 + 144) = xmmword_1AFE22A20;
  *(v115 + 80) = v114;
  *(v115 + 88) = &off_1F2535378;
  swift_retain_n();

  swift_unknownObjectRelease();
  *(v115 + 210) = 0;
  if (v88)
  {
    v117 = (*(v88 + 8))();
  }

  else
  {
    v117 = v116;
  }

  v118 = swift_conformsToProtocol2();
  if (v118 && v117)
  {
    v119 = (*(v118 + 8))(v117, v118);

    *(v115 + 160) = v119;
  }

  else
  {
  }

  v120 = *(v115 + 64);
  v121 = *(v115 + 72);
  *(v115 + 64) = sub_1AF5A96B0;
  *(v115 + 72) = v112;
  sub_1AF0FB8EC(v120, v121);
  *(v115 + 168) = 0;
  *(v115 + 176) = 0;

  *(v115 + 216) = 0;

  *(v937 + 96) = v115;
  v122 = swift_getKeyPath();
  v123 = swift_getKeyPath();
  v124 = swift_allocObject();
  v124[4] = sub_1AF5AA2F8;
  v124[5] = v122;
  v124[2] = sub_1AF5A9B8C;
  v124[3] = v122;
  v124[6] = v122;
  v125 = swift_allocObject();
  *(v125 + 80) = 0u;
  *(v125 + 96) = 0u;
  *(v125 + 112) = 1;
  *(v125 + 128) = 0;
  *(v125 + 136) = 0;
  *(v125 + 120) = 0;
  *(v125 + 160) = MEMORY[0x1E69E7CC0];
  *(v125 + 168) = 0;
  *(v125 + 210) = 0;
  *(v125 + 216) = 0;
  *(v125 + 176) = 0;
  *(v125 + 16) = 0x70614D726F6C6F63;
  *(v125 + 24) = 0xE800000000000000;
  *(v125 + 32) = v122;
  *(v125 + 40) = &type metadata for Entity;
  *(v125 + 48) = 0;
  *(v125 + 56) = 1;
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
  *(v125 + 144) = xmmword_1AFE551B0;
  *(v125 + 80) = v124;
  *(v125 + 88) = &off_1F2535378;
  swift_retain_n();

  swift_unknownObjectRelease();
  *(v125 + 210) = 0;
  if (v933)
  {
    v126 = (*(v933 + 8))();
  }

  else
  {
    v126 = &type metadata for Entity;
  }

  v127 = MEMORY[0x1E69E6370];
  v128 = swift_conformsToProtocol2();
  if (v128 && v126)
  {
    v129 = (*(v128 + 8))(v126, v128);

    *(v125 + 160) = v129;
  }

  else
  {
  }

  v130 = *(v125 + 64);
  v131 = *(v125 + 72);
  *(v125 + 64) = sub_1AF5A96B4;
  *(v125 + 72) = v122;
  sub_1AF0FB8EC(v130, v131);
  *(v125 + 168) = 0;
  *(v125 + 176) = 0;

  *(v125 + 216) = 0;

  *(v937 + 104) = v125;
  v132 = swift_getKeyPath();
  v133 = swift_getKeyPath();
  v134 = swift_allocObject();
  v134[4] = sub_1AF5AA0D4;
  v134[5] = v132;
  v134[2] = sub_1AF5A9B88;
  v134[3] = v132;
  v134[6] = v132;
  v135 = swift_allocObject();
  *(v135 + 80) = 0u;
  *(v135 + 96) = 0u;
  *(v135 + 112) = 1;
  *(v135 + 128) = 0;
  *(v135 + 136) = 0;
  *(v135 + 120) = 0;
  *(v135 + 160) = MEMORY[0x1E69E7CC0];
  *(v135 + 168) = 0;
  *(v135 + 210) = 0;
  *(v135 + 216) = 0;
  *(v135 + 176) = 0;
  *(v135 + 16) = 0xD000000000000010;
  *(v135 + 24) = 0x80000001AFF23580;
  *(v135 + 32) = v132;
  *(v135 + 40) = v127;
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
  *(v135 + 144) = xmmword_1AFE22A20;
  *(v135 + 80) = v134;
  *(v135 + 88) = &off_1F2535378;
  swift_retain_n();

  swift_unknownObjectRelease();
  *(v135 + 210) = 0;
  if (v88)
  {
    v136 = (*(v88 + 8))();
  }

  else
  {
    v136 = v127;
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
  *(v135 + 64) = sub_1AF5A96B0;
  *(v135 + 72) = v132;
  sub_1AF0FB8EC(v139, v140);
  *(v135 + 168) = 0;
  *(v135 + 176) = 0;

  *(v135 + 216) = 0;

  *(v937 + 112) = v135;
  v141 = swift_getKeyPath();
  v142 = swift_getKeyPath();
  v143 = swift_allocObject();
  v143[4] = sub_1AF5AA0D4;
  v143[5] = v141;
  v143[2] = sub_1AF5A9B88;
  v143[3] = v141;
  v143[6] = v141;
  v144 = swift_allocObject();
  *(v144 + 80) = 0u;
  *(v144 + 96) = 0u;
  *(v144 + 112) = 1;
  *(v144 + 128) = 0;
  *(v144 + 136) = 0;
  *(v144 + 120) = 0;
  *(v144 + 160) = MEMORY[0x1E69E7CC0];
  *(v144 + 168) = 0;
  *(v144 + 210) = 0;
  *(v144 + 216) = 0;
  *(v144 + 176) = 0;
  *(v144 + 16) = 0x6953656C62756F64;
  *(v144 + 24) = 0xEB00000000646564;
  *(v144 + 32) = v141;
  *(v144 + 40) = v127;
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
  *(v144 + 96) = v142;
  *(v144 + 144) = xmmword_1AFE22A20;
  *(v144 + 80) = v143;
  *(v144 + 88) = &off_1F2535378;
  swift_retain_n();

  swift_unknownObjectRelease();
  *(v144 + 210) = 0;
  if (v88)
  {
    v145 = (*(v88 + 8))();
  }

  else
  {
    v145 = v127;
  }

  v146 = swift_conformsToProtocol2();
  if (v146 && v145)
  {
    v147 = (*(v146 + 8))(v145, v146);

    *(v144 + 160) = v147;
  }

  else
  {
  }

  v148 = *(v144 + 64);
  v149 = *(v144 + 72);
  *(v144 + 64) = sub_1AF5A96B0;
  *(v144 + 72) = v141;
  sub_1AF0FB8EC(v148, v149);
  *(v144 + 168) = 0;
  *(v144 + 176) = 0;

  *(v144 + 216) = 0;

  *(v937 + 120) = v144;
  v150 = swift_getKeyPath();
  v151 = swift_getKeyPath();
  v152 = swift_allocObject();
  v152[4] = sub_1AF5AA0D4;
  v152[5] = v150;
  v152[2] = sub_1AF5A9B88;
  v152[3] = v150;
  v152[6] = v150;
  v153 = swift_allocObject();
  *(v153 + 80) = 0u;
  *(v153 + 96) = 0u;
  *(v153 + 112) = 1;
  *(v153 + 128) = 0;
  *(v153 + 136) = 0;
  *(v153 + 120) = 0;
  *(v153 + 176) = 0;
  *(v153 + 160) = MEMORY[0x1E69E7CC0];
  *(v153 + 168) = 0;
  *(v153 + 210) = 0;
  *(v153 + 216) = 0;
  *(v153 + 16) = 0xD000000000000010;
  *(v153 + 24) = 0x80000001AFF2A310;
  *(v153 + 32) = v150;
  *(v153 + 40) = v127;
  *(v153 + 48) = 0;
  *(v153 + 56) = 1;
  *(v153 + 58) = 0;
  *(v153 + 184) = 0;
  *(v153 + 188) = 1;
  *(v153 + 192) = 0;
  *(v153 + 196) = 1;
  *(v153 + 200) = 0x1000100000000;
  *(v153 + 208) = 1;
  *(v153 + 64) = 0;
  *(v153 + 72) = 0;
  *(v153 + 96) = v151;
  *(v153 + 144) = xmmword_1AFE22A20;
  *(v153 + 80) = v152;
  *(v153 + 88) = &off_1F2535378;
  swift_retain_n();

  swift_unknownObjectRelease();
  *(v153 + 210) = 0;
  if (v88)
  {
    v127 = (*(v88 + 8))();
  }

  v154 = swift_conformsToProtocol2();
  if (v154 && v127)
  {
    v155 = (*(v154 + 8))(v127, v154);

    *(v153 + 160) = v155;
  }

  else
  {
  }

  v156 = *(v153 + 64);
  v157 = *(v153 + 72);
  *(v153 + 64) = sub_1AF5A96B0;
  *(v153 + 72) = v150;
  sub_1AF0FB8EC(v156, v157);
  *(v153 + 168) = 0xD000000000000042;
  *(v153 + 176) = 0x80000001AFF2A330;

  *(v153 + 216) = 0;

  *(v937 + 128) = v153;
  v158 = swift_getKeyPath();
  v159 = swift_getKeyPath();
  v160 = swift_allocObject();
  v160[4] = sub_1AF5AA2F8;
  v160[5] = v158;
  v160[2] = sub_1AF5A9B8C;
  v160[3] = v158;
  v160[6] = v158;
  v161 = swift_allocObject();
  *(v161 + 80) = 0u;
  *(v161 + 96) = 0u;
  *(v161 + 112) = 1;
  *(v161 + 128) = 0;
  *(v161 + 136) = 0;
  *(v161 + 120) = 0;
  *(v161 + 160) = MEMORY[0x1E69E7CC0];
  *(v161 + 168) = 0;
  *(v161 + 176) = 0;
  *(v161 + 210) = 0;
  *(v161 + 216) = 0;
  strcpy((v161 + 16), "albedoTexture");
  *(v161 + 30) = -4864;
  *(v161 + 32) = v158;
  *(v161 + 40) = &type metadata for Entity;
  *(v161 + 48) = 0;
  *(v161 + 56) = 1;
  *(v161 + 58) = 256;
  *(v161 + 184) = 0;
  *(v161 + 188) = 1;
  *(v161 + 192) = 0;
  *(v161 + 196) = 1;
  *(v161 + 200) = 0x1000100000000;
  *(v161 + 208) = 1;
  *(v161 + 64) = 0;
  *(v161 + 72) = 0;
  *(v161 + 96) = v159;
  *(v161 + 144) = xmmword_1AFE551B0;
  *(v161 + 80) = v160;
  *(v161 + 88) = &off_1F2535378;
  swift_retain_n();

  swift_unknownObjectRelease();
  *(v161 + 210) = 256;
  if (v933)
  {
    v162 = (*(v933 + 8))();
  }

  else
  {
    v162 = &type metadata for Entity;
  }

  v163 = MEMORY[0x1E69E7360];
  v164 = swift_conformsToProtocol2();
  if (v164 && v162)
  {
    v165 = (*(v164 + 8))(v162, v164);

    *(v161 + 160) = v165;
  }

  else
  {
  }

  v166 = *(v161 + 64);
  v167 = *(v161 + 72);
  *(v161 + 64) = sub_1AF5A96B4;
  *(v161 + 72) = v158;
  sub_1AF0FB8EC(v166, v167);
  *(v161 + 168) = 0;
  *(v161 + 176) = 0;

  *(v161 + 216) = 0;

  *(v937 + 136) = v161;
  v168 = swift_getKeyPath();
  v169 = swift_getKeyPath();
  sub_1AF57B9C0(0);
  v170 = swift_allocObject();
  v170[4] = sub_1AF584B7C;
  v170[5] = v168;
  v170[2] = sub_1AF584B94;
  v170[3] = v168;
  v170[6] = v168;
  v171 = swift_allocObject();
  *(v171 + 80) = 0u;
  *(v171 + 96) = 0u;
  *(v171 + 112) = 1;
  *(v171 + 128) = 0;
  *(v171 + 136) = 0;
  *(v171 + 120) = 0;
  *(v171 + 160) = MEMORY[0x1E69E7CC0];
  *(v171 + 168) = 0;
  *(v171 + 176) = 0;
  *(v171 + 210) = 0;
  *(v171 + 216) = 0;
  sub_1AF583D60(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
  v173 = v172;
  *(v171 + 16) = 0x6F436F6465626C61;
  *(v171 + 24) = 0xEB00000000726F6CLL;
  *(v171 + 32) = v168;
  *(v171 + 40) = v172;
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
  *(v171 + 96) = v169;
  *(v171 + 144) = xmmword_1AFE55160;
  *(v171 + 80) = v170;
  *(v171 + 88) = &off_1F2535378;
  swift_retain_n();

  swift_unknownObjectRelease();
  *(v171 + 210) = 0;
  v174 = swift_conformsToProtocol2();
  v175 = v174;
  if (v174)
  {
    v176 = v173;
  }

  else
  {
    v176 = 0;
  }

  v932 = v173;
  if (v176)
  {
    v173 = (*(v174 + 8))(v176, v174);
  }

  v177 = swift_conformsToProtocol2();
  v931 = v176;
  if (v177 && v173)
  {
    v178 = (*(v177 + 8))(v173, v177);

    *(v171 + 160) = v178;
  }

  else
  {
  }

  v179 = *(v171 + 64);
  v180 = *(v171 + 72);
  *(v171 + 64) = sub_1AF584BF8;
  *(v171 + 72) = v168;
  sub_1AF0FB8EC(v179, v180);
  *(v171 + 168) = 0;
  *(v171 + 176) = 0;

  *(v171 + 216) = 0;

  *(v937 + 144) = v171;
  v181 = swift_getKeyPath();
  v182 = swift_getKeyPath();
  v183 = swift_getKeyPath();
  v184 = swift_allocObject();
  v184[4] = sub_1AF5AA2F8;
  v184[5] = v183;
  v184[2] = sub_1AF5A9B84;
  v184[3] = v183;
  v184[6] = v183;
  v185 = swift_allocObject();
  *(v185 + 80) = 0u;
  *(v185 + 96) = 0u;
  *(v185 + 112) = 1;
  *(v185 + 128) = 0;
  *(v185 + 136) = 0;
  *(v185 + 120) = 0;
  *(v185 + 160) = MEMORY[0x1E69E7CC0];
  *(v185 + 168) = 0;
  *(v185 + 176) = 0;
  *(v185 + 210) = 0;
  *(v185 + 216) = 0;
  *(v185 + 16) = 0x694D6F6465626C61;
  *(v185 + 24) = 0xEF7265746C69466ELL;
  *(v185 + 32) = v183;
  *(v185 + 40) = v163;
  *(v185 + 48) = 0;
  *(v185 + 56) = 1;
  *(v185 + 58) = 0;
  *(v185 + 184) = 0;
  *(v185 + 188) = 1;
  *(v185 + 192) = 0;
  *(v185 + 196) = 1;
  *(v185 + 200) = 0x1000100000000;
  *(v185 + 208) = 1;
  *(v185 + 64) = 0;
  *(v185 + 72) = 0;
  *(v185 + 96) = 0;
  *(v185 + 144) = xmmword_1AFE22A20;
  *(v185 + 80) = v184;
  *(v185 + 88) = &off_1F2535378;
  swift_retain_n();
  swift_unknownObjectRelease();
  *(v185 + 210) = 0;
  if (v936)
  {
    v186 = (*(v936 + 8))();
  }

  else
  {
    v186 = v163;
  }

  v187 = swift_conformsToProtocol2();
  if (v187 && v186)
  {
    *(v185 + 160) = (*(v187 + 8))(v186, v187);
  }

  v188 = *(v185 + 64);
  v189 = *(v185 + 72);
  *(v185 + 64) = sub_1AF5A96AC;
  *(v185 + 72) = v183;
  sub_1AF0FB8EC(v188, v189);
  *(v185 + 168) = 0;
  *(v185 + 176) = 0;

  *(v185 + 216) = 0;

  sub_1AF5A9240(0, &qword_1EB63A620, &type metadata for FilterMode, type metadata accessor for EntityGetSet);
  v190 = swift_allocObject();
  v190[4] = sub_1AF584C3C;
  v190[5] = v181;
  v190[2] = sub_1AF584C68;
  v190[3] = v181;
  v190[6] = v181;
  v191 = swift_allocObject();
  *(v191 + 80) = 0u;
  *(v191 + 96) = 0u;
  *(v191 + 112) = 1;
  *(v191 + 128) = 0;
  *(v191 + 136) = 0;
  *(v191 + 120) = 0;
  *(v191 + 160) = MEMORY[0x1E69E7CC0];
  *(v191 + 168) = 0;
  *(v191 + 176) = 0;
  *(v191 + 210) = 0;
  *(v191 + 216) = 0;
  *(v191 + 16) = 0x694D6F6465626C61;
  *(v191 + 24) = 0xEF7265746C69466ELL;
  *(v191 + 32) = v181;
  *(v191 + 40) = &type metadata for FilterMode;
  *(v191 + 48) = 0;
  *(v191 + 56) = 1;
  *(v191 + 58) = 0;
  *(v191 + 184) = 0;
  *(v191 + 188) = 1;
  *(v191 + 192) = 0;
  *(v191 + 196) = 1;
  *(v191 + 200) = 0x1000100000000;
  *(v191 + 208) = 1;
  *(v191 + 64) = 0;
  *(v191 + 72) = 0;
  *(v191 + 96) = v182;
  *(v191 + 144) = xmmword_1AFE22A20;
  *(v191 + 80) = v190;
  *(v191 + 88) = &off_1F2535378;
  swift_retain_n();

  swift_unknownObjectRelease();
  *(v191 + 210) = 0;
  v192 = swift_conformsToProtocol2();
  v935 = v192;
  if (v192)
  {
    v193 = (*(v192 + 8))(&type metadata for FilterMode, v192);
  }

  else
  {
    v193 = &type metadata for FilterMode;
  }

  v194 = swift_conformsToProtocol2();
  v929 = v175;
  if (v194 && v193)
  {
    v195 = (*(v194 + 8))(v193, v194);

    *(v191 + 160) = v195;
  }

  else
  {
  }

  v196 = *(v191 + 64);
  v197 = *(v191 + 72);
  *(v191 + 64) = sub_1AF584CC4;
  *(v191 + 72) = v181;
  sub_1AF0FB8EC(v196, v197);
  *(v191 + 168) = 0;
  *(v191 + 176) = 0;

  *(v191 + 216) = v185;

  *(v937 + 152) = v191;
  v198 = swift_getKeyPath();
  v199 = swift_getKeyPath();
  v200 = swift_getKeyPath();
  v201 = swift_allocObject();
  v201[4] = sub_1AF5AA2F8;
  v201[5] = v200;
  v201[2] = sub_1AF5A9B84;
  v201[3] = v200;
  v201[6] = v200;
  v202 = swift_allocObject();
  *(v202 + 80) = 0u;
  *(v202 + 96) = 0u;
  *(v202 + 112) = 1;
  *(v202 + 128) = 0;
  *(v202 + 136) = 0;
  *(v202 + 120) = 0;
  *(v202 + 160) = MEMORY[0x1E69E7CC0];
  *(v202 + 168) = 0;
  *(v202 + 176) = 0;
  *(v202 + 210) = 0;
  *(v202 + 216) = 0;
  *(v202 + 16) = 0x614D6F6465626C61;
  *(v202 + 24) = 0xEF7265746C694667;
  *(v202 + 32) = v200;
  v203 = MEMORY[0x1E69E7360];
  *(v202 + 40) = MEMORY[0x1E69E7360];
  *(v202 + 48) = 0;
  *(v202 + 56) = 1;
  *(v202 + 58) = 0;
  *(v202 + 184) = 0;
  *(v202 + 188) = 1;
  *(v202 + 192) = 0;
  *(v202 + 196) = 1;
  *(v202 + 200) = 0x1000100000000;
  *(v202 + 208) = 1;
  *(v202 + 64) = 0;
  *(v202 + 72) = 0;
  *(v202 + 96) = 0;
  *(v202 + 144) = xmmword_1AFE22A20;
  *(v202 + 80) = v201;
  *(v202 + 88) = &off_1F2535378;
  swift_retain_n();
  swift_unknownObjectRelease();
  *(v202 + 210) = 0;
  if (v936)
  {
    v204 = (*(v936 + 8))();
  }

  else
  {
    v204 = v203;
  }

  v205 = swift_conformsToProtocol2();
  if (v205 && v204)
  {
    *(v202 + 160) = (*(v205 + 8))(v204, v205);
  }

  v206 = *(v202 + 64);
  v207 = *(v202 + 72);
  *(v202 + 64) = sub_1AF5A96AC;
  *(v202 + 72) = v200;
  sub_1AF0FB8EC(v206, v207);
  *(v202 + 168) = 0;
  *(v202 + 176) = 0;

  *(v202 + 216) = 0;

  v208 = swift_allocObject();
  v208[4] = sub_1AF5AA0D4;
  v208[5] = v198;
  v208[2] = sub_1AF5A9594;
  v208[3] = v198;
  v208[6] = v198;
  v209 = swift_allocObject();
  *(v209 + 80) = 0u;
  *(v209 + 96) = 0u;
  *(v209 + 112) = 1;
  *(v209 + 128) = 0;
  *(v209 + 136) = 0;
  *(v209 + 120) = 0;
  *(v209 + 160) = MEMORY[0x1E69E7CC0];
  *(v209 + 168) = 0;
  *(v209 + 176) = 0;
  *(v209 + 210) = 0;
  *(v209 + 216) = 0;
  *(v209 + 16) = 0x614D6F6465626C61;
  *(v209 + 24) = 0xEF7265746C694667;
  *(v209 + 32) = v198;
  *(v209 + 40) = &type metadata for FilterMode;
  *(v209 + 48) = 0;
  *(v209 + 56) = 1;
  *(v209 + 58) = 0;
  *(v209 + 184) = 0;
  *(v209 + 188) = 1;
  *(v209 + 192) = 0;
  *(v209 + 196) = 1;
  *(v209 + 200) = 0x1000100000000;
  *(v209 + 208) = 1;
  *(v209 + 64) = 0;
  *(v209 + 72) = 0;
  *(v209 + 96) = v199;
  *(v209 + 144) = xmmword_1AFE22A20;
  *(v209 + 80) = v208;
  *(v209 + 88) = &off_1F2535378;
  swift_retain_n();

  swift_unknownObjectRelease();
  *(v209 + 210) = 0;
  if (v935)
  {
    v210 = (*(v935 + 8))();
  }

  else
  {
    v210 = &type metadata for FilterMode;
  }

  v211 = swift_conformsToProtocol2();
  if (v211 && v210)
  {
    v212 = (*(v211 + 8))(v210, v211);

    *(v209 + 160) = v212;
  }

  else
  {
  }

  v213 = *(v209 + 64);
  v214 = *(v209 + 72);
  *(v209 + 64) = sub_1AF5A96B8;
  *(v209 + 72) = v198;
  sub_1AF0FB8EC(v213, v214);
  *(v209 + 168) = 0;
  *(v209 + 176) = 0;

  *(v209 + 216) = v202;

  *(v937 + 160) = v209;
  v215 = swift_getKeyPath();
  v216 = swift_getKeyPath();
  v217 = swift_getKeyPath();
  v218 = swift_allocObject();
  v218[4] = sub_1AF5AA2F8;
  v218[5] = v217;
  v218[2] = sub_1AF5A9B84;
  v218[3] = v217;
  v218[6] = v217;
  v219 = swift_allocObject();
  *(v219 + 80) = 0u;
  *(v219 + 96) = 0u;
  *(v219 + 112) = 1;
  *(v219 + 128) = 0;
  *(v219 + 136) = 0;
  *(v219 + 120) = 0;
  *(v219 + 160) = MEMORY[0x1E69E7CC0];
  *(v219 + 168) = 0;
  *(v219 + 176) = 0;
  *(v219 + 210) = 0;
  *(v219 + 216) = 0;
  *(v219 + 16) = 0x694D6F6465626C61;
  *(v219 + 24) = 0xEF7265746C694670;
  *(v219 + 32) = v217;
  v220 = MEMORY[0x1E69E7360];
  *(v219 + 40) = MEMORY[0x1E69E7360];
  *(v219 + 48) = 0;
  *(v219 + 56) = 1;
  *(v219 + 58) = 0;
  *(v219 + 184) = 0;
  *(v219 + 188) = 1;
  *(v219 + 192) = 0;
  *(v219 + 196) = 1;
  *(v219 + 200) = 0x1000100000000;
  *(v219 + 208) = 1;
  *(v219 + 64) = 0;
  *(v219 + 72) = 0;
  *(v219 + 96) = 0;
  *(v219 + 144) = xmmword_1AFE22A20;
  *(v219 + 80) = v218;
  *(v219 + 88) = &off_1F2535378;
  swift_retain_n();
  swift_unknownObjectRelease();
  *(v219 + 210) = 0;
  if (v936)
  {
    v221 = (*(v936 + 8))();
  }

  else
  {
    v221 = v220;
  }

  v222 = swift_conformsToProtocol2();
  if (v222 && v221)
  {
    *(v219 + 160) = (*(v222 + 8))(v221, v222);
  }

  v223 = *(v219 + 64);
  v224 = *(v219 + 72);
  *(v219 + 64) = sub_1AF5A96AC;
  *(v219 + 72) = v217;
  sub_1AF0FB8EC(v223, v224);
  *(v219 + 168) = 0;
  *(v219 + 176) = 0;

  *(v219 + 216) = 0;

  sub_1AF5A9240(0, &unk_1EB63A628, &type metadata for TextureMipFilterMode, type metadata accessor for EntityGetSet);
  v225 = swift_allocObject();
  v225[4] = sub_1AF584D04;
  v225[5] = v215;
  v225[2] = sub_1AF584D30;
  v225[3] = v215;
  v225[6] = v215;
  v226 = swift_allocObject();
  *(v226 + 80) = 0u;
  *(v226 + 96) = 0u;
  *(v226 + 112) = 1;
  *(v226 + 128) = 0;
  *(v226 + 136) = 0;
  *(v226 + 120) = 0;
  *(v226 + 160) = MEMORY[0x1E69E7CC0];
  *(v226 + 168) = 0;
  *(v226 + 176) = 0;
  *(v226 + 210) = 0;
  *(v226 + 216) = 0;
  *(v226 + 16) = 0x694D6F6465626C61;
  *(v226 + 24) = 0xEF7265746C694670;
  *(v226 + 32) = v215;
  *(v226 + 40) = &type metadata for TextureMipFilterMode;
  *(v226 + 48) = 0;
  *(v226 + 56) = 1;
  *(v226 + 58) = 0;
  *(v226 + 184) = 0;
  *(v226 + 188) = 1;
  *(v226 + 192) = 0;
  *(v226 + 196) = 1;
  *(v226 + 200) = 0x1000100000000;
  *(v226 + 208) = 1;
  *(v226 + 64) = 0;
  *(v226 + 72) = 0;
  *(v226 + 96) = v216;
  *(v226 + 144) = xmmword_1AFE22A20;
  *(v226 + 80) = v225;
  *(v226 + 88) = &off_1F2535378;
  swift_retain_n();

  swift_unknownObjectRelease();
  *(v226 + 210) = 0;
  v227 = swift_conformsToProtocol2();
  v930 = v227;
  if (v227)
  {
    v228 = (*(v227 + 8))(&type metadata for TextureMipFilterMode, v227);
  }

  else
  {
    v228 = &type metadata for TextureMipFilterMode;
  }

  v229 = swift_conformsToProtocol2();
  if (v229 && v228)
  {
    v230 = (*(v229 + 8))(v228, v229);

    *(v226 + 160) = v230;
  }

  else
  {
  }

  v231 = *(v226 + 64);
  v232 = *(v226 + 72);
  *(v226 + 64) = sub_1AF584D8C;
  *(v226 + 72) = v215;
  sub_1AF0FB8EC(v231, v232);
  *(v226 + 168) = 0;
  *(v226 + 176) = 0;

  *(v226 + 216) = v219;

  *(v937 + 168) = v226;
  v233 = swift_getKeyPath();
  v234 = swift_getKeyPath();
  v235 = swift_getKeyPath();
  v236 = swift_allocObject();
  v236[4] = sub_1AF5AA2F8;
  v236[5] = v235;
  v236[2] = sub_1AF5A9B84;
  v236[3] = v235;
  v236[6] = v235;
  v237 = swift_allocObject();
  *(v237 + 80) = 0u;
  *(v237 + 96) = 0u;
  *(v237 + 112) = 1;
  *(v237 + 128) = 0;
  *(v237 + 136) = 0;
  *(v237 + 120) = 0;
  *(v237 + 160) = MEMORY[0x1E69E7CC0];
  *(v237 + 168) = 0;
  *(v237 + 176) = 0;
  *(v237 + 210) = 0;
  *(v237 + 216) = 0;
  *(v237 + 16) = 0x72576F6465626C61;
  *(v237 + 24) = 0xEB00000000537061;
  *(v237 + 32) = v235;
  v238 = MEMORY[0x1E69E7360];
  *(v237 + 40) = MEMORY[0x1E69E7360];
  *(v237 + 48) = 0;
  *(v237 + 56) = 1;
  *(v237 + 58) = 0;
  *(v237 + 184) = 0;
  *(v237 + 188) = 1;
  *(v237 + 192) = 0;
  *(v237 + 196) = 1;
  *(v237 + 200) = 0x1000100000000;
  *(v237 + 208) = 1;
  *(v237 + 64) = 0;
  *(v237 + 72) = 0;
  *(v237 + 96) = 0;
  *(v237 + 144) = xmmword_1AFE22A20;
  *(v237 + 80) = v236;
  *(v237 + 88) = &off_1F2535378;
  swift_retain_n();
  swift_unknownObjectRelease();
  *(v237 + 210) = 0;
  if (v936)
  {
    v239 = (*(v936 + 8))();
  }

  else
  {
    v239 = v238;
  }

  v240 = swift_conformsToProtocol2();
  if (v240 && v239)
  {
    *(v237 + 160) = (*(v240 + 8))(v239, v240);
  }

  v241 = *(v237 + 64);
  v242 = *(v237 + 72);
  *(v237 + 64) = sub_1AF5A96AC;
  *(v237 + 72) = v235;
  sub_1AF0FB8EC(v241, v242);
  *(v237 + 168) = 0;
  *(v237 + 176) = 0;

  *(v237 + 216) = 0;

  sub_1AF5A9240(0, &qword_1EB6338D0, &type metadata for AddressMode, type metadata accessor for EntityGetSet);
  v243 = swift_allocObject();
  v243[4] = sub_1AF584DCC;
  v243[5] = v233;
  v243[2] = sub_1AF584DF8;
  v243[3] = v233;
  v243[6] = v233;
  v244 = swift_allocObject();
  *(v244 + 80) = 0u;
  *(v244 + 96) = 0u;
  *(v244 + 112) = 1;
  *(v244 + 128) = 0;
  *(v244 + 136) = 0;
  *(v244 + 120) = 0;
  *(v244 + 160) = MEMORY[0x1E69E7CC0];
  *(v244 + 168) = 0;
  *(v244 + 176) = 0;
  *(v244 + 210) = 0;
  *(v244 + 216) = 0;
  *(v244 + 16) = 0x72576F6465626C61;
  *(v244 + 24) = 0xEB00000000537061;
  *(v244 + 32) = v233;
  *(v244 + 40) = &type metadata for AddressMode;
  *(v244 + 48) = 0;
  *(v244 + 56) = 1;
  *(v244 + 58) = 0;
  *(v244 + 184) = 0;
  *(v244 + 188) = 1;
  *(v244 + 192) = 0;
  *(v244 + 196) = 1;
  *(v244 + 200) = 0x1000100000000;
  *(v244 + 208) = 1;
  *(v244 + 64) = 0;
  *(v244 + 72) = 0;
  *(v244 + 96) = v234;
  *(v244 + 144) = xmmword_1AFE22A20;
  *(v244 + 80) = v243;
  *(v244 + 88) = &off_1F2535378;
  swift_retain_n();

  swift_unknownObjectRelease();
  *(v244 + 210) = 0;
  v245 = swift_conformsToProtocol2();
  v934 = v245;
  if (v245)
  {
    v246 = (*(v245 + 8))(&type metadata for AddressMode, v245);
  }

  else
  {
    v246 = &type metadata for AddressMode;
  }

  v247 = swift_conformsToProtocol2();
  if (v247 && v246)
  {
    v248 = (*(v247 + 8))(v246, v247);

    *(v244 + 160) = v248;
  }

  else
  {
  }

  v249 = *(v244 + 64);
  v250 = *(v244 + 72);
  *(v244 + 64) = sub_1AF584E54;
  *(v244 + 72) = v233;
  sub_1AF0FB8EC(v249, v250);
  *(v244 + 168) = 0;
  *(v244 + 176) = 0;

  *(v244 + 216) = v237;

  *(v937 + 176) = v244;
  v251 = swift_getKeyPath();
  v252 = swift_getKeyPath();
  v253 = swift_getKeyPath();
  v254 = swift_allocObject();
  v254[4] = sub_1AF5AA2F8;
  v254[5] = v253;
  v254[2] = sub_1AF5A9B84;
  v254[3] = v253;
  v254[6] = v253;
  v255 = swift_allocObject();
  *(v255 + 80) = 0u;
  *(v255 + 96) = 0u;
  *(v255 + 112) = 1;
  *(v255 + 128) = 0;
  *(v255 + 136) = 0;
  *(v255 + 120) = 0;
  *(v255 + 160) = MEMORY[0x1E69E7CC0];
  *(v255 + 168) = 0;
  *(v255 + 176) = 0;
  *(v255 + 210) = 0;
  *(v255 + 216) = 0;
  *(v255 + 16) = 0x72576F6465626C61;
  *(v255 + 24) = 0xEB00000000547061;
  *(v255 + 32) = v253;
  v256 = MEMORY[0x1E69E7360];
  *(v255 + 40) = MEMORY[0x1E69E7360];
  *(v255 + 48) = 0;
  *(v255 + 56) = 1;
  *(v255 + 58) = 0;
  *(v255 + 184) = 0;
  *(v255 + 188) = 1;
  *(v255 + 192) = 0;
  *(v255 + 196) = 1;
  *(v255 + 200) = 0x1000100000000;
  *(v255 + 208) = 1;
  *(v255 + 64) = 0;
  *(v255 + 72) = 0;
  *(v255 + 96) = 0;
  *(v255 + 144) = xmmword_1AFE22A20;
  *(v255 + 80) = v254;
  *(v255 + 88) = &off_1F2535378;
  swift_retain_n();
  swift_unknownObjectRelease();
  *(v255 + 210) = 0;
  if (v936)
  {
    v257 = (*(v936 + 8))();
  }

  else
  {
    v257 = v256;
  }

  v258 = swift_conformsToProtocol2();
  if (v258 && v257)
  {
    *(v255 + 160) = (*(v258 + 8))(v257, v258);
  }

  v259 = *(v255 + 64);
  v260 = *(v255 + 72);
  *(v255 + 64) = sub_1AF5A96AC;
  *(v255 + 72) = v253;
  sub_1AF0FB8EC(v259, v260);
  *(v255 + 168) = 0;
  *(v255 + 176) = 0;

  *(v255 + 216) = 0;

  v261 = swift_allocObject();
  v261[4] = sub_1AF5AA0DC;
  v261[5] = v251;
  v261[2] = sub_1AF5A9B90;
  v261[3] = v251;
  v261[6] = v251;
  v262 = swift_allocObject();
  *(v262 + 80) = 0u;
  *(v262 + 96) = 0u;
  *(v262 + 112) = 1;
  *(v262 + 128) = 0;
  *(v262 + 136) = 0;
  *(v262 + 120) = 0;
  *(v262 + 160) = MEMORY[0x1E69E7CC0];
  *(v262 + 168) = 0;
  *(v262 + 176) = 0;
  *(v262 + 210) = 0;
  *(v262 + 216) = 0;
  *(v262 + 16) = 0x72576F6465626C61;
  *(v262 + 24) = 0xEB00000000547061;
  *(v262 + 32) = v251;
  *(v262 + 40) = &type metadata for AddressMode;
  *(v262 + 48) = 0;
  *(v262 + 56) = 1;
  *(v262 + 58) = 0;
  *(v262 + 184) = 0;
  *(v262 + 188) = 1;
  *(v262 + 192) = 0;
  *(v262 + 196) = 1;
  *(v262 + 200) = 0x1000100000000;
  *(v262 + 208) = 1;
  *(v262 + 64) = 0;
  *(v262 + 72) = 0;
  *(v262 + 96) = v252;
  *(v262 + 144) = xmmword_1AFE22A20;
  *(v262 + 80) = v261;
  *(v262 + 88) = &off_1F2535378;
  swift_retain_n();

  swift_unknownObjectRelease();
  *(v262 + 210) = 0;
  if (v934)
  {
    v263 = (*(v934 + 8))();
  }

  else
  {
    v263 = &type metadata for AddressMode;
  }

  v264 = swift_conformsToProtocol2();
  if (v264 && v263)
  {
    v265 = (*(v264 + 8))(v263, v264);

    *(v262 + 160) = v265;
  }

  else
  {
  }

  v266 = *(v262 + 64);
  v267 = *(v262 + 72);
  *(v262 + 64) = sub_1AF5A96BC;
  *(v262 + 72) = v251;
  sub_1AF0FB8EC(v266, v267);
  *(v262 + 168) = 0;
  *(v262 + 176) = 0;

  *(v262 + 216) = v255;

  *(v937 + 184) = v262;
  v268 = swift_getKeyPath();
  v269 = swift_getKeyPath();
  v270 = swift_allocObject();
  v270[4] = sub_1AF5A96C0;
  v270[5] = v268;
  v270[2] = sub_1AF5A9B94;
  v270[3] = v268;
  v270[6] = v268;
  v271 = swift_allocObject();
  *(v271 + 80) = 0u;
  *(v271 + 96) = 0u;
  *(v271 + 112) = 1;
  *(v271 + 128) = 0;
  *(v271 + 136) = 0;
  *(v271 + 120) = 0;
  *(v271 + 160) = MEMORY[0x1E69E7CC0];
  *(v271 + 168) = 0;
  *(v271 + 176) = 0;
  *(v271 + 210) = 0;
  *(v271 + 216) = 0;
  *(v271 + 16) = 0x63536F6465626C61;
  *(v271 + 24) = 0xEF73616942656C61;
  *(v271 + 32) = v268;
  *(v271 + 40) = v932;
  *(v271 + 48) = 0;
  *(v271 + 56) = 1;
  *(v271 + 58) = 0;
  *(v271 + 184) = 0;
  *(v271 + 188) = 1;
  *(v271 + 192) = 0;
  *(v271 + 196) = 1;
  *(v271 + 200) = 0x1000100000000;
  *(v271 + 208) = 1;
  *(v271 + 64) = 0;
  *(v271 + 72) = 0;
  *(v271 + 96) = v269;
  *(v271 + 144) = xmmword_1AFE22A20;
  *(v271 + 80) = v270;
  *(v271 + 88) = &off_1F2535378;
  swift_retain_n();

  swift_unknownObjectRelease();
  *(v271 + 210) = 0;
  v272 = v932;
  if (v931)
  {
    v272 = (*(v929 + 8))();
  }

  v273 = swift_conformsToProtocol2();
  if (v273 && v272)
  {
    v274 = (*(v273 + 8))(v272, v273);

    *(v271 + 160) = v274;
  }

  else
  {
  }

  v275 = *(v271 + 64);
  v276 = *(v271 + 72);
  *(v271 + 64) = sub_1AF5A96C4;
  *(v271 + 72) = v268;
  sub_1AF0FB8EC(v275, v276);
  *(v271 + 168) = 0;
  *(v271 + 176) = 0;

  *(v271 + 216) = 0;

  *(v937 + 192) = v271;
  v277 = swift_getKeyPath();
  v278 = swift_getKeyPath();
  v279 = swift_allocObject();
  v279[4] = sub_1AF5AA2F8;
  v279[5] = v277;
  v279[2] = sub_1AF5A9B8C;
  v279[3] = v277;
  v279[6] = v277;
  v280 = swift_allocObject();
  *(v280 + 80) = 0u;
  *(v280 + 96) = 0u;
  *(v280 + 112) = 1;
  *(v280 + 128) = 0;
  *(v280 + 136) = 0;
  *(v280 + 120) = 0;
  *(v280 + 160) = MEMORY[0x1E69E7CC0];
  *(v280 + 168) = 0;
  *(v280 + 176) = 0;
  *(v280 + 210) = 0;
  *(v280 + 216) = 0;
  *(v280 + 16) = 0x6576697373696D65;
  *(v280 + 24) = 0xEF65727574786554;
  *(v280 + 32) = v277;
  *(v280 + 40) = &type metadata for Entity;
  *(v280 + 48) = 0;
  *(v280 + 56) = 1;
  *(v280 + 58) = 256;
  *(v280 + 184) = 0;
  *(v280 + 188) = 1;
  *(v280 + 192) = 0;
  *(v280 + 196) = 1;
  *(v280 + 200) = 0x1000100000000;
  *(v280 + 208) = 1;
  *(v280 + 64) = 0;
  *(v280 + 72) = 0;
  *(v280 + 96) = v278;
  *(v280 + 144) = xmmword_1AFE551B0;
  *(v280 + 80) = v279;
  *(v280 + 88) = &off_1F2535378;
  swift_retain_n();

  swift_unknownObjectRelease();
  *(v280 + 210) = 256;
  if (v933)
  {
    v281 = (*(v933 + 8))();
  }

  else
  {
    v281 = &type metadata for Entity;
  }

  v282 = swift_conformsToProtocol2();
  if (v282 && v281)
  {
    v283 = (*(v282 + 8))(v281, v282);

    *(v280 + 160) = v283;
  }

  else
  {
  }

  v284 = *(v280 + 64);
  v285 = *(v280 + 72);
  *(v280 + 64) = sub_1AF5A96B4;
  *(v280 + 72) = v277;
  sub_1AF0FB8EC(v284, v285);
  *(v280 + 168) = 0;
  *(v280 + 176) = 0;

  *(v280 + 216) = 0;

  *(v937 + 200) = v280;
  v286 = swift_getKeyPath();
  v287 = swift_getKeyPath();
  v288 = swift_allocObject();
  v288[4] = sub_1AF5A96C0;
  v288[5] = v286;
  v288[2] = sub_1AF5A9B94;
  v288[3] = v286;
  v288[6] = v286;
  v289 = swift_allocObject();
  *(v289 + 80) = 0u;
  *(v289 + 96) = 0u;
  *(v289 + 112) = 1;
  *(v289 + 128) = 0;
  *(v289 + 136) = 0;
  *(v289 + 120) = 0;
  *(v289 + 160) = MEMORY[0x1E69E7CC0];
  *(v289 + 168) = 0;
  *(v289 + 176) = 0;
  *(v289 + 210) = 0;
  *(v289 + 216) = 0;
  strcpy((v289 + 16), "emissiveColor");
  *(v289 + 30) = -4864;
  *(v289 + 32) = v286;
  *(v289 + 40) = v932;
  *(v289 + 48) = 0;
  *(v289 + 56) = 1;
  *(v289 + 58) = 0;
  *(v289 + 184) = 0;
  *(v289 + 188) = 1;
  *(v289 + 192) = 0;
  *(v289 + 196) = 1;
  *(v289 + 200) = 0x1000100000000;
  *(v289 + 208) = 1;
  *(v289 + 64) = 0;
  *(v289 + 72) = 0;
  *(v289 + 96) = v287;
  *(v289 + 144) = xmmword_1AFE55160;
  *(v289 + 80) = v288;
  *(v289 + 88) = &off_1F2535378;
  swift_retain_n();

  swift_unknownObjectRelease();
  *(v289 + 210) = 0;
  v290 = v932;
  if (v931)
  {
    v290 = (*(v929 + 8))();
  }

  v291 = swift_conformsToProtocol2();
  if (v291 && v290)
  {
    v292 = (*(v291 + 8))(v290, v291);

    *(v289 + 160) = v292;
  }

  else
  {
  }

  v293 = *(v289 + 64);
  v294 = *(v289 + 72);
  *(v289 + 64) = sub_1AF5A96C4;
  *(v289 + 72) = v286;
  sub_1AF0FB8EC(v293, v294);
  *(v289 + 168) = 0;
  *(v289 + 176) = 0;

  *(v289 + 216) = 0;

  *(v937 + 208) = v289;
  v295 = swift_getKeyPath();
  v296 = swift_getKeyPath();
  v297 = swift_getKeyPath();
  v298 = swift_allocObject();
  v298[4] = sub_1AF5AA2F8;
  v298[5] = v297;
  v298[2] = sub_1AF5A9B84;
  v298[3] = v297;
  v298[6] = v297;
  v299 = swift_allocObject();
  *(v299 + 80) = 0u;
  *(v299 + 96) = 0u;
  *(v299 + 112) = 1;
  *(v299 + 128) = 0;
  *(v299 + 136) = 0;
  *(v299 + 120) = 0;
  *(v299 + 160) = MEMORY[0x1E69E7CC0];
  *(v299 + 168) = 0;
  *(v299 + 176) = 0;
  *(v299 + 210) = 0;
  *(v299 + 216) = 0;
  *(v299 + 16) = 0xD000000000000011;
  *(v299 + 24) = 0x80000001AFF2A380;
  *(v299 + 32) = v297;
  v300 = MEMORY[0x1E69E7360];
  *(v299 + 40) = MEMORY[0x1E69E7360];
  *(v299 + 48) = 0;
  *(v299 + 56) = 1;
  *(v299 + 58) = 0;
  *(v299 + 184) = 0;
  *(v299 + 188) = 1;
  *(v299 + 192) = 0;
  *(v299 + 196) = 1;
  *(v299 + 200) = 0x1000100000000;
  *(v299 + 208) = 1;
  *(v299 + 64) = 0;
  *(v299 + 72) = 0;
  *(v299 + 96) = 0;
  *(v299 + 144) = xmmword_1AFE22A20;
  *(v299 + 80) = v298;
  *(v299 + 88) = &off_1F2535378;
  swift_retain_n();
  swift_unknownObjectRelease();
  *(v299 + 210) = 0;
  if (v936)
  {
    v301 = (*(v936 + 8))();
  }

  else
  {
    v301 = v300;
  }

  v302 = swift_conformsToProtocol2();
  if (v302 && v301)
  {
    *(v299 + 160) = (*(v302 + 8))(v301, v302);
  }

  v303 = *(v299 + 64);
  v304 = *(v299 + 72);
  *(v299 + 64) = sub_1AF5A96AC;
  *(v299 + 72) = v297;
  sub_1AF0FB8EC(v303, v304);
  *(v299 + 168) = 0;
  *(v299 + 176) = 0;

  *(v299 + 216) = 0;

  v305 = swift_allocObject();
  v305[4] = sub_1AF5AA0D4;
  v305[5] = v295;
  v305[2] = sub_1AF5A9594;
  v305[3] = v295;
  v305[6] = v295;
  v306 = swift_allocObject();
  *(v306 + 80) = 0u;
  *(v306 + 96) = 0u;
  *(v306 + 112) = 1;
  *(v306 + 128) = 0;
  *(v306 + 136) = 0;
  *(v306 + 120) = 0;
  *(v306 + 160) = MEMORY[0x1E69E7CC0];
  *(v306 + 168) = 0;
  *(v306 + 176) = 0;
  *(v306 + 210) = 0;
  *(v306 + 216) = 0;
  *(v306 + 16) = 0xD000000000000011;
  *(v306 + 24) = 0x80000001AFF2A380;
  *(v306 + 32) = v295;
  *(v306 + 40) = &type metadata for FilterMode;
  *(v306 + 48) = 0;
  *(v306 + 56) = 1;
  *(v306 + 58) = 0;
  *(v306 + 184) = 0;
  *(v306 + 188) = 1;
  *(v306 + 192) = 0;
  *(v306 + 196) = 1;
  *(v306 + 200) = 0x1000100000000;
  *(v306 + 208) = 1;
  *(v306 + 64) = 0;
  *(v306 + 72) = 0;
  *(v306 + 96) = v296;
  *(v306 + 144) = xmmword_1AFE22A20;
  *(v306 + 80) = v305;
  *(v306 + 88) = &off_1F2535378;
  swift_retain_n();

  swift_unknownObjectRelease();
  *(v306 + 210) = 0;
  if (v935)
  {
    v307 = (*(v935 + 8))();
  }

  else
  {
    v307 = &type metadata for FilterMode;
  }

  v308 = swift_conformsToProtocol2();
  if (v308 && v307)
  {
    v309 = (*(v308 + 8))(v307, v308);

    *(v306 + 160) = v309;
  }

  else
  {
  }

  v310 = *(v306 + 64);
  v311 = *(v306 + 72);
  *(v306 + 64) = sub_1AF5A96B8;
  *(v306 + 72) = v295;
  sub_1AF0FB8EC(v310, v311);
  *(v306 + 168) = 0;
  *(v306 + 176) = 0;

  *(v306 + 216) = v299;

  *(v937 + 216) = v306;
  v312 = swift_getKeyPath();
  v313 = swift_getKeyPath();
  v314 = swift_getKeyPath();
  v315 = swift_allocObject();
  v315[4] = sub_1AF5AA2F8;
  v315[5] = v314;
  v315[2] = sub_1AF5A9B84;
  v315[3] = v314;
  v315[6] = v314;
  v316 = swift_allocObject();
  *(v316 + 80) = 0u;
  *(v316 + 96) = 0u;
  *(v316 + 112) = 1;
  *(v316 + 128) = 0;
  *(v316 + 136) = 0;
  *(v316 + 120) = 0;
  *(v316 + 160) = MEMORY[0x1E69E7CC0];
  *(v316 + 168) = 0;
  *(v316 + 176) = 0;
  *(v316 + 210) = 0;
  *(v316 + 216) = 0;
  *(v316 + 16) = 0xD000000000000011;
  *(v316 + 24) = 0x80000001AFF2A3A0;
  *(v316 + 32) = v314;
  v317 = MEMORY[0x1E69E7360];
  *(v316 + 40) = MEMORY[0x1E69E7360];
  *(v316 + 48) = 0;
  *(v316 + 56) = 1;
  *(v316 + 58) = 0;
  *(v316 + 184) = 0;
  *(v316 + 188) = 1;
  *(v316 + 192) = 0;
  *(v316 + 196) = 1;
  *(v316 + 200) = 0x1000100000000;
  *(v316 + 208) = 1;
  *(v316 + 64) = 0;
  *(v316 + 72) = 0;
  *(v316 + 96) = 0;
  *(v316 + 144) = xmmword_1AFE22A20;
  *(v316 + 80) = v315;
  *(v316 + 88) = &off_1F2535378;
  swift_retain_n();
  swift_unknownObjectRelease();
  *(v316 + 210) = 0;
  if (v936)
  {
    v318 = (*(v936 + 8))();
  }

  else
  {
    v318 = v317;
  }

  v319 = swift_conformsToProtocol2();
  if (v319 && v318)
  {
    *(v316 + 160) = (*(v319 + 8))(v318, v319);
  }

  v320 = *(v316 + 64);
  v321 = *(v316 + 72);
  *(v316 + 64) = sub_1AF5A96AC;
  *(v316 + 72) = v314;
  sub_1AF0FB8EC(v320, v321);
  *(v316 + 168) = 0;
  *(v316 + 176) = 0;

  *(v316 + 216) = 0;

  v322 = swift_allocObject();
  v322[4] = sub_1AF5AA0D4;
  v322[5] = v312;
  v322[2] = sub_1AF5A9594;
  v322[3] = v312;
  v322[6] = v312;
  v323 = swift_allocObject();
  *(v323 + 80) = 0u;
  *(v323 + 96) = 0u;
  *(v323 + 112) = 1;
  *(v323 + 128) = 0;
  *(v323 + 136) = 0;
  *(v323 + 120) = 0;
  *(v323 + 160) = MEMORY[0x1E69E7CC0];
  *(v323 + 168) = 0;
  *(v323 + 176) = 0;
  *(v323 + 210) = 0;
  *(v323 + 216) = 0;
  *(v323 + 16) = 0xD000000000000011;
  *(v323 + 24) = 0x80000001AFF2A3A0;
  *(v323 + 32) = v312;
  *(v323 + 40) = &type metadata for FilterMode;
  *(v323 + 48) = 0;
  *(v323 + 56) = 1;
  *(v323 + 58) = 0;
  *(v323 + 184) = 0;
  *(v323 + 188) = 1;
  *(v323 + 192) = 0;
  *(v323 + 196) = 1;
  *(v323 + 200) = 0x1000100000000;
  *(v323 + 208) = 1;
  *(v323 + 64) = 0;
  *(v323 + 72) = 0;
  *(v323 + 96) = v313;
  *(v323 + 144) = xmmword_1AFE22A20;
  *(v323 + 80) = v322;
  *(v323 + 88) = &off_1F2535378;
  swift_retain_n();

  swift_unknownObjectRelease();
  *(v323 + 210) = 0;
  if (v935)
  {
    v324 = (*(v935 + 8))();
  }

  else
  {
    v324 = &type metadata for FilterMode;
  }

  v325 = swift_conformsToProtocol2();
  if (v325 && v324)
  {
    v326 = (*(v325 + 8))(v324, v325);

    *(v323 + 160) = v326;
  }

  else
  {
  }

  v327 = *(v323 + 64);
  v328 = *(v323 + 72);
  *(v323 + 64) = sub_1AF5A96B8;
  *(v323 + 72) = v312;
  sub_1AF0FB8EC(v327, v328);
  *(v323 + 168) = 0;
  *(v323 + 176) = 0;

  *(v323 + 216) = v316;

  *(v937 + 224) = v323;
  v329 = swift_getKeyPath();
  v330 = swift_getKeyPath();
  v331 = swift_getKeyPath();
  v332 = swift_allocObject();
  v332[4] = sub_1AF5AA2F8;
  v332[5] = v331;
  v332[2] = sub_1AF5A9B84;
  v332[3] = v331;
  v332[6] = v331;
  v333 = swift_allocObject();
  *(v333 + 112) = 1;
  *(v333 + 128) = 0;
  *(v333 + 136) = 0;
  *(v333 + 120) = 0;
  *(v333 + 160) = MEMORY[0x1E69E7CC0];
  *(v333 + 16) = 0xD000000000000011;
  *(v333 + 24) = 0x80000001AFF2A3C0;
  *(v333 + 32) = v331;
  v334 = MEMORY[0x1E69E7360];
  *(v333 + 40) = MEMORY[0x1E69E7360];
  *(v333 + 48) = 0;
  *(v333 + 56) = 1;
  *(v333 + 58) = 0;
  *(v333 + 184) = 0;
  *(v333 + 188) = 1;
  *(v333 + 192) = 0;
  *(v333 + 196) = 1;
  *(v333 + 200) = 0x1000100000000;
  *(v333 + 208) = 1;
  *(v333 + 96) = 0;
  *(v333 + 104) = 0;
  *(v333 + 144) = xmmword_1AFE22A20;
  *(v333 + 80) = v332;
  *(v333 + 88) = &off_1F2535378;
  *(v333 + 210) = 0;
  if (v936)
  {
    v334 = (*(v936 + 8))();
  }

  v335 = swift_conformsToProtocol2();
  if (v335 && v334)
  {
    v336 = *(v335 + 8);
    v337 = v335;
    swift_retain_n();
    *(v333 + 160) = v336(v334, v337);
  }

  else
  {
    swift_retain_n();
  }

  *(v333 + 64) = sub_1AF5A96AC;
  *(v333 + 72) = v331;
  *(v333 + 216) = 0;
  *(v333 + 168) = 0;
  *(v333 + 176) = 0;
  v338 = swift_allocObject();
  v338[4] = sub_1AF5AA0D8;
  v338[5] = v329;
  v338[2] = sub_1AF5A9B98;
  v338[3] = v329;
  v338[6] = v329;
  v339 = swift_allocObject();
  *(v339 + 112) = 1;
  *(v339 + 128) = 0;
  *(v339 + 136) = 0;
  *(v339 + 120) = 0;
  *(v339 + 160) = MEMORY[0x1E69E7CC0];
  *(v339 + 16) = 0xD000000000000011;
  *(v339 + 24) = 0x80000001AFF2A3C0;
  *(v339 + 32) = v329;
  v340 = &type metadata for TextureMipFilterMode;
  *(v339 + 40) = &type metadata for TextureMipFilterMode;
  *(v339 + 48) = 0;
  *(v339 + 56) = 1;
  *(v339 + 58) = 0;
  *(v339 + 184) = 0;
  *(v339 + 188) = 1;
  *(v339 + 192) = 0;
  *(v339 + 196) = 1;
  *(v339 + 200) = 0x1000100000000;
  *(v339 + 208) = 1;
  *(v339 + 96) = v330;
  *(v339 + 104) = 0;
  *(v339 + 144) = xmmword_1AFE22A20;
  *(v339 + 80) = v338;
  *(v339 + 88) = &off_1F2535378;
  *(v339 + 210) = 0;
  if (v930)
  {
    v340 = (*(v930 + 8))();
  }

  v341 = swift_conformsToProtocol2();
  if (v341 && v340)
  {
    v342 = *(v341 + 8);
    v343 = v341;
    swift_retain_n();

    *(v339 + 160) = v342(v340, v343);
  }

  else
  {
    swift_retain_n();
  }

  v344 = MEMORY[0x1E69E7360];
  *(v339 + 64) = sub_1AF5A96C8;
  *(v339 + 72) = v329;
  *(v339 + 168) = 0;
  *(v339 + 176) = 0;
  *(v339 + 216) = v333;

  *(v937 + 232) = v339;
  v345 = swift_getKeyPath();
  v346 = swift_getKeyPath();
  v347 = swift_getKeyPath();
  v348 = swift_allocObject();
  v348[4] = sub_1AF5AA2F8;
  v348[5] = v347;
  v348[2] = sub_1AF5A9B84;
  v348[3] = v347;
  v348[6] = v347;
  v349 = swift_allocObject();
  *(v349 + 112) = 1;
  *(v349 + 128) = 0;
  *(v349 + 136) = 0;
  *(v349 + 120) = 0;
  *(v349 + 160) = MEMORY[0x1E69E7CC0];
  strcpy((v349 + 16), "emissiveWrapS");
  *(v349 + 30) = -4864;
  *(v349 + 32) = v347;
  *(v349 + 40) = v344;
  *(v349 + 48) = 0;
  *(v349 + 56) = 1;
  *(v349 + 58) = 0;
  *(v349 + 184) = 0;
  *(v349 + 188) = 1;
  *(v349 + 192) = 0;
  *(v349 + 196) = 1;
  *(v349 + 200) = 0x1000100000000;
  *(v349 + 208) = 1;
  *(v349 + 96) = 0;
  *(v349 + 104) = 0;
  *(v349 + 144) = xmmword_1AFE22A20;
  *(v349 + 80) = v348;
  *(v349 + 88) = &off_1F2535378;
  *(v349 + 210) = 0;
  if (v936)
  {
    v344 = (*(v936 + 8))();
  }

  v350 = swift_conformsToProtocol2();
  if (v350 && v344)
  {
    v351 = *(v350 + 8);
    v352 = v350;
    swift_retain_n();
    *(v349 + 160) = v351(v344, v352);
  }

  else
  {
    swift_retain_n();
  }

  *(v349 + 64) = sub_1AF5A96AC;
  *(v349 + 72) = v347;
  *(v349 + 216) = 0;
  *(v349 + 168) = 0;
  *(v349 + 176) = 0;
  v353 = swift_allocObject();
  v353[4] = sub_1AF5AA0DC;
  v353[5] = v345;
  v353[2] = sub_1AF5A9B90;
  v353[3] = v345;
  v353[6] = v345;
  v354 = swift_allocObject();
  *(v354 + 112) = 1;
  *(v354 + 128) = 0;
  *(v354 + 136) = 0;
  *(v354 + 120) = 0;
  *(v354 + 160) = MEMORY[0x1E69E7CC0];
  strcpy((v354 + 16), "emissiveWrapS");
  *(v354 + 30) = -4864;
  *(v354 + 32) = v345;
  v355 = &type metadata for AddressMode;
  *(v354 + 40) = &type metadata for AddressMode;
  *(v354 + 48) = 0;
  *(v354 + 56) = 1;
  *(v354 + 58) = 0;
  *(v354 + 184) = 0;
  *(v354 + 188) = 1;
  *(v354 + 192) = 0;
  *(v354 + 196) = 1;
  *(v354 + 200) = 0x1000100000000;
  *(v354 + 208) = 1;
  *(v354 + 96) = v346;
  *(v354 + 104) = 0;
  *(v354 + 144) = xmmword_1AFE22A20;
  *(v354 + 80) = v353;
  *(v354 + 88) = &off_1F2535378;
  *(v354 + 210) = 0;
  if (v934)
  {
    v355 = (*(v934 + 8))();
  }

  v356 = swift_conformsToProtocol2();
  if (v356 && v355)
  {
    v357 = *(v356 + 8);
    v358 = v356;
    swift_retain_n();

    *(v354 + 160) = v357(v355, v358);
  }

  else
  {
    swift_retain_n();
  }

  v359 = MEMORY[0x1E69E7360];
  *(v354 + 64) = sub_1AF5A96BC;
  *(v354 + 72) = v345;
  *(v354 + 168) = 0;
  *(v354 + 176) = 0;
  *(v354 + 216) = v349;

  *(v937 + 240) = v354;
  v360 = swift_getKeyPath();
  v361 = swift_getKeyPath();
  v362 = swift_getKeyPath();
  v363 = swift_allocObject();
  v363[4] = sub_1AF5AA2F8;
  v363[5] = v362;
  v363[2] = sub_1AF5A9B84;
  v363[3] = v362;
  v363[6] = v362;
  v364 = swift_allocObject();
  *(v364 + 112) = 1;
  *(v364 + 128) = 0;
  *(v364 + 136) = 0;
  *(v364 + 120) = 0;
  *(v364 + 160) = MEMORY[0x1E69E7CC0];
  strcpy((v364 + 16), "emissiveWrapT");
  *(v364 + 30) = -4864;
  *(v364 + 32) = v362;
  *(v364 + 40) = v359;
  *(v364 + 48) = 0;
  *(v364 + 56) = 1;
  *(v364 + 58) = 0;
  *(v364 + 184) = 0;
  *(v364 + 188) = 1;
  *(v364 + 192) = 0;
  *(v364 + 196) = 1;
  *(v364 + 200) = 0x1000100000000;
  *(v364 + 208) = 1;
  *(v364 + 96) = 0;
  *(v364 + 104) = 0;
  *(v364 + 144) = xmmword_1AFE22A20;
  *(v364 + 80) = v363;
  *(v364 + 88) = &off_1F2535378;
  *(v364 + 210) = 0;
  if (v936)
  {
    v359 = (*(v936 + 8))();
  }

  v365 = swift_conformsToProtocol2();
  if (v365 && v359)
  {
    v366 = *(v365 + 8);
    v367 = v365;
    swift_retain_n();
    *(v364 + 160) = v366(v359, v367);
  }

  else
  {
    swift_retain_n();
  }

  *(v364 + 64) = sub_1AF5A96AC;
  *(v364 + 72) = v362;
  *(v364 + 216) = 0;
  *(v364 + 168) = 0;
  *(v364 + 176) = 0;
  v368 = swift_allocObject();
  v368[4] = sub_1AF5AA0DC;
  v368[5] = v360;
  v368[2] = sub_1AF5A9B90;
  v368[3] = v360;
  v368[6] = v360;
  v369 = swift_allocObject();
  *(v369 + 112) = 1;
  *(v369 + 128) = 0;
  *(v369 + 136) = 0;
  *(v369 + 120) = 0;
  *(v369 + 160) = MEMORY[0x1E69E7CC0];
  strcpy((v369 + 16), "emissiveWrapT");
  *(v369 + 30) = -4864;
  *(v369 + 32) = v360;
  v370 = &type metadata for AddressMode;
  *(v369 + 40) = &type metadata for AddressMode;
  *(v369 + 48) = 0;
  *(v369 + 56) = 1;
  *(v369 + 58) = 0;
  *(v369 + 184) = 0;
  *(v369 + 188) = 1;
  *(v369 + 192) = 0;
  *(v369 + 196) = 1;
  *(v369 + 200) = 0x1000100000000;
  *(v369 + 208) = 1;
  *(v369 + 96) = v361;
  *(v369 + 104) = 0;
  *(v369 + 144) = xmmword_1AFE22A20;
  *(v369 + 80) = v368;
  *(v369 + 88) = &off_1F2535378;
  *(v369 + 210) = 0;
  if (v934)
  {
    v370 = (*(v934 + 8))();
  }

  v371 = swift_conformsToProtocol2();
  if (v371 && v370)
  {
    v372 = *(v371 + 8);
    v373 = v371;
    swift_retain_n();

    *(v369 + 160) = v372(v370, v373);
  }

  else
  {
    swift_retain_n();
  }

  *(v369 + 64) = sub_1AF5A96BC;
  *(v369 + 72) = v360;
  *(v369 + 168) = 0;
  *(v369 + 176) = 0;
  *(v369 + 216) = v364;

  *(v937 + 248) = v369;
  v374 = swift_getKeyPath();
  v375 = swift_getKeyPath();
  v376 = swift_allocObject();
  v376[4] = sub_1AF5A96C0;
  v376[5] = v374;
  v376[2] = sub_1AF5A9B94;
  v376[3] = v374;
  v376[6] = v374;
  v377 = swift_allocObject();
  *(v377 + 112) = 1;
  *(v377 + 128) = 0;
  *(v377 + 136) = 0;
  *(v377 + 120) = 0;
  *(v377 + 160) = MEMORY[0x1E69E7CC0];
  *(v377 + 16) = 0xD000000000000011;
  *(v377 + 24) = 0x80000001AFF2A3E0;
  *(v377 + 32) = v374;
  *(v377 + 40) = v932;
  *(v377 + 48) = 0;
  *(v377 + 56) = 1;
  *(v377 + 58) = 0;
  *(v377 + 184) = 0;
  *(v377 + 188) = 1;
  *(v377 + 192) = 0;
  *(v377 + 196) = 1;
  *(v377 + 200) = 0x1000100000000;
  *(v377 + 208) = 1;
  *(v377 + 96) = v375;
  *(v377 + 104) = 0;
  *(v377 + 144) = xmmword_1AFE22A20;
  *(v377 + 80) = v376;
  *(v377 + 88) = &off_1F2535378;
  v378 = v932;
  *(v377 + 210) = 0;
  if (v931)
  {
    v378 = (*(v929 + 8))();
  }

  v379 = swift_conformsToProtocol2();
  if (v379 && v378)
  {
    v380 = *(v379 + 8);
    v381 = v379;
    swift_retain_n();

    *(v377 + 160) = v380(v378, v381);
  }

  else
  {
    swift_retain_n();
  }

  *(v377 + 64) = sub_1AF5A96C4;
  *(v377 + 72) = v374;
  *(v377 + 216) = 0;
  *(v377 + 168) = 0;
  *(v377 + 176) = 0;

  *(v937 + 256) = v377;
  v382 = swift_getKeyPath();
  v383 = swift_getKeyPath();
  v384 = swift_allocObject();
  v384[4] = sub_1AF5AA2F8;
  v384[5] = v382;
  v384[2] = sub_1AF5A9B8C;
  v384[3] = v382;
  v384[6] = v382;
  v385 = swift_allocObject();
  *(v385 + 112) = 1;
  *(v385 + 128) = 0;
  *(v385 + 136) = 0;
  *(v385 + 120) = 0;
  *(v385 + 160) = MEMORY[0x1E69E7CC0];
  *(v385 + 16) = 0xD000000000000010;
  *(v385 + 24) = 0x80000001AFF2A400;
  *(v385 + 32) = v382;
  *(v385 + 40) = &type metadata for Entity;
  *(v385 + 48) = 0;
  *(v385 + 56) = 1;
  *(v385 + 58) = 256;
  *(v385 + 184) = 0;
  *(v385 + 188) = 1;
  *(v385 + 192) = 0;
  *(v385 + 196) = 1;
  *(v385 + 200) = 0x1000100000000;
  *(v385 + 208) = 1;
  *(v385 + 96) = v383;
  *(v385 + 104) = 0;
  *(v385 + 144) = xmmword_1AFE551B0;
  *(v385 + 80) = v384;
  *(v385 + 88) = &off_1F2535378;
  *(v385 + 210) = 256;
  if (v933)
  {
    v386 = (*(v933 + 8))();
  }

  else
  {
    v386 = &type metadata for Entity;
  }

  v387 = MEMORY[0x1E69E6448];
  v388 = swift_conformsToProtocol2();
  if (v388 && v386)
  {
    v389 = *(v388 + 8);
    v390 = v388;
    swift_retain_n();

    *(v385 + 160) = v389(v386, v390);
  }

  else
  {
    swift_retain_n();
  }

  *(v385 + 64) = sub_1AF5A96B4;
  *(v385 + 72) = v382;
  *(v385 + 216) = 0;
  *(v385 + 168) = 0;
  *(v385 + 176) = 0;

  *(v937 + 264) = v385;
  v391 = swift_getKeyPath();
  v392 = swift_getKeyPath();
  v393 = swift_allocObject();
  v393[4] = sub_1AF5A942C;
  v393[5] = v391;
  v393[2] = sub_1AF5A9B9C;
  v393[3] = v391;
  v393[6] = v391;
  v394 = swift_allocObject();
  *(v394 + 112) = 1;
  *(v394 + 128) = 0;
  *(v394 + 136) = 0;
  *(v394 + 120) = 0;
  *(v394 + 160) = MEMORY[0x1E69E7CC0];
  *(v394 + 16) = 0xD000000000000012;
  *(v394 + 24) = 0x80000001AFF2A420;
  *(v394 + 32) = v391;
  *(v394 + 40) = v387;
  *(v394 + 48) = 0;
  *(v394 + 56) = 1;
  *(v394 + 58) = 0;
  *(v394 + 184) = 0;
  *(v394 + 188) = 0;
  *(v394 + 192) = 1065353216;
  *(v394 + 196) = 0;
  *(v394 + 200) = 0x100003C23D70ALL;
  *(v394 + 208) = 1;
  *(v394 + 96) = v392;
  *(v394 + 104) = 0;
  *(v394 + 144) = xmmword_1AFE22A20;
  *(v394 + 80) = v393;
  *(v394 + 88) = &off_1F2535378;
  *(v394 + 210) = 0;
  if (v928)
  {
    v395 = (*(v928 + 8))();
  }

  else
  {
    v395 = v387;
  }

  v396 = swift_conformsToProtocol2();
  if (v396 && v395)
  {
    v397 = *(v396 + 8);
    v398 = v396;
    swift_retain_n();

    *(v394 + 160) = v397(v395, v398);
  }

  else
  {
    swift_retain_n();
  }

  v399 = MEMORY[0x1E69E7360];
  *(v394 + 64) = sub_1AF5A96CC;
  *(v394 + 72) = v391;
  *(v394 + 216) = 0;
  *(v394 + 168) = 0;
  *(v394 + 176) = 0;

  *(v937 + 272) = v394;
  v400 = swift_getKeyPath();
  v401 = swift_getKeyPath();
  v402 = swift_getKeyPath();
  v403 = swift_allocObject();
  v403[4] = sub_1AF5AA2F8;
  v403[5] = v402;
  v403[2] = sub_1AF5A9B84;
  v403[3] = v402;
  v403[6] = v402;
  v404 = swift_allocObject();
  *(v404 + 112) = 1;
  *(v404 + 128) = 0;
  *(v404 + 136) = 0;
  *(v404 + 120) = 0;
  *(v404 + 160) = MEMORY[0x1E69E7CC0];
  *(v404 + 16) = 0xD000000000000012;
  *(v404 + 24) = 0x80000001AFF2A440;
  *(v404 + 32) = v402;
  *(v404 + 40) = v399;
  *(v404 + 48) = 0;
  *(v404 + 56) = 1;
  *(v404 + 58) = 0;
  *(v404 + 184) = 0;
  *(v404 + 188) = 1;
  *(v404 + 192) = 0;
  *(v404 + 196) = 1;
  *(v404 + 200) = 0x1000100000000;
  *(v404 + 208) = 1;
  *(v404 + 96) = 0;
  *(v404 + 104) = 0;
  *(v404 + 144) = xmmword_1AFE22A20;
  *(v404 + 80) = v403;
  *(v404 + 88) = &off_1F2535378;
  *(v404 + 210) = 0;
  if (v936)
  {
    v399 = (*(v936 + 8))();
  }

  v405 = swift_conformsToProtocol2();
  if (v405 && v399)
  {
    v406 = *(v405 + 8);
    v407 = v405;
    swift_retain_n();
    *(v404 + 160) = v406(v399, v407);
  }

  else
  {
    swift_retain_n();
  }

  *(v404 + 64) = sub_1AF5A96AC;
  *(v404 + 72) = v402;
  *(v404 + 216) = 0;
  *(v404 + 168) = 0;
  *(v404 + 176) = 0;
  v408 = swift_allocObject();
  v408[4] = sub_1AF5AA0D4;
  v408[5] = v400;
  v408[2] = sub_1AF5A9594;
  v408[3] = v400;
  v408[6] = v400;
  v409 = swift_allocObject();
  *(v409 + 112) = 1;
  *(v409 + 128) = 0;
  *(v409 + 136) = 0;
  *(v409 + 120) = 0;
  *(v409 + 160) = MEMORY[0x1E69E7CC0];
  *(v409 + 16) = 0xD000000000000012;
  *(v409 + 24) = 0x80000001AFF2A440;
  *(v409 + 32) = v400;
  v410 = &type metadata for FilterMode;
  *(v409 + 40) = &type metadata for FilterMode;
  *(v409 + 48) = 0;
  *(v409 + 56) = 1;
  *(v409 + 58) = 0;
  *(v409 + 184) = 0;
  *(v409 + 188) = 1;
  *(v409 + 192) = 0;
  *(v409 + 196) = 1;
  *(v409 + 200) = 0x1000100000000;
  *(v409 + 208) = 1;
  *(v409 + 96) = v401;
  *(v409 + 104) = 0;
  *(v409 + 144) = xmmword_1AFE22A20;
  *(v409 + 80) = v408;
  *(v409 + 88) = &off_1F2535378;
  *(v409 + 210) = 0;
  if (v935)
  {
    v410 = (*(v935 + 8))();
  }

  v411 = swift_conformsToProtocol2();
  if (v411 && v410)
  {
    v412 = *(v411 + 8);
    v413 = v411;
    swift_retain_n();

    *(v409 + 160) = v412(v410, v413);
  }

  else
  {
    swift_retain_n();
  }

  v414 = MEMORY[0x1E69E7360];
  *(v409 + 64) = sub_1AF5A96B8;
  *(v409 + 72) = v400;
  *(v409 + 168) = 0;
  *(v409 + 176) = 0;
  *(v409 + 216) = v404;

  *(v937 + 280) = v409;
  v415 = swift_getKeyPath();
  v416 = swift_getKeyPath();
  v417 = swift_getKeyPath();
  v418 = swift_allocObject();
  v418[4] = sub_1AF5AA2F8;
  v418[5] = v417;
  v418[2] = sub_1AF5A9B84;
  v418[3] = v417;
  v418[6] = v417;
  v419 = swift_allocObject();
  *(v419 + 112) = 1;
  *(v419 + 128) = 0;
  *(v419 + 136) = 0;
  *(v419 + 120) = 0;
  *(v419 + 160) = MEMORY[0x1E69E7CC0];
  *(v419 + 16) = 0xD000000000000012;
  *(v419 + 24) = 0x80000001AFF2A460;
  *(v419 + 32) = v417;
  *(v419 + 40) = v414;
  *(v419 + 48) = 0;
  *(v419 + 56) = 1;
  *(v419 + 58) = 0;
  *(v419 + 184) = 0;
  *(v419 + 188) = 1;
  *(v419 + 192) = 0;
  *(v419 + 196) = 1;
  *(v419 + 200) = 0x1000100000000;
  *(v419 + 208) = 1;
  *(v419 + 96) = 0;
  *(v419 + 104) = 0;
  *(v419 + 144) = xmmword_1AFE22A20;
  *(v419 + 80) = v418;
  *(v419 + 88) = &off_1F2535378;
  *(v419 + 210) = 0;
  if (v936)
  {
    v414 = (*(v936 + 8))();
  }

  v420 = swift_conformsToProtocol2();
  if (v420 && v414)
  {
    v421 = *(v420 + 8);
    v422 = v420;
    swift_retain_n();
    *(v419 + 160) = v421(v414, v422);
  }

  else
  {
    swift_retain_n();
  }

  *(v419 + 64) = sub_1AF5A96AC;
  *(v419 + 72) = v417;
  *(v419 + 216) = 0;
  *(v419 + 168) = 0;
  *(v419 + 176) = 0;
  v423 = swift_allocObject();
  v423[4] = sub_1AF5AA0D4;
  v423[5] = v415;
  v423[2] = sub_1AF5A9594;
  v423[3] = v415;
  v423[6] = v415;
  v424 = swift_allocObject();
  *(v424 + 112) = 1;
  *(v424 + 128) = 0;
  *(v424 + 136) = 0;
  *(v424 + 120) = 0;
  *(v424 + 160) = MEMORY[0x1E69E7CC0];
  *(v424 + 16) = 0xD000000000000012;
  *(v424 + 24) = 0x80000001AFF2A460;
  *(v424 + 32) = v415;
  v425 = &type metadata for FilterMode;
  *(v424 + 40) = &type metadata for FilterMode;
  *(v424 + 48) = 0;
  *(v424 + 56) = 1;
  *(v424 + 58) = 0;
  *(v424 + 184) = 0;
  *(v424 + 188) = 1;
  *(v424 + 192) = 0;
  *(v424 + 196) = 1;
  *(v424 + 200) = 0x1000100000000;
  *(v424 + 208) = 1;
  *(v424 + 96) = v416;
  *(v424 + 104) = 0;
  *(v424 + 144) = xmmword_1AFE22A20;
  *(v424 + 80) = v423;
  *(v424 + 88) = &off_1F2535378;
  *(v424 + 210) = 0;
  if (v935)
  {
    v425 = (*(v935 + 8))();
  }

  v426 = swift_conformsToProtocol2();
  if (v426 && v425)
  {
    v427 = *(v426 + 8);
    v428 = v426;
    swift_retain_n();

    *(v424 + 160) = v427(v425, v428);
  }

  else
  {
    swift_retain_n();
  }

  v429 = MEMORY[0x1E69E7360];
  *(v424 + 64) = sub_1AF5A96B8;
  *(v424 + 72) = v415;
  *(v424 + 168) = 0;
  *(v424 + 176) = 0;
  *(v424 + 216) = v419;

  *(v937 + 288) = v424;
  v430 = swift_getKeyPath();
  v431 = swift_getKeyPath();
  v432 = swift_getKeyPath();
  v433 = swift_allocObject();
  v433[4] = sub_1AF5AA2F8;
  v433[5] = v432;
  v433[2] = sub_1AF5A9B84;
  v433[3] = v432;
  v433[6] = v432;
  v434 = swift_allocObject();
  *(v434 + 112) = 1;
  *(v434 + 128) = 0;
  *(v434 + 136) = 0;
  *(v434 + 120) = 0;
  *(v434 + 160) = MEMORY[0x1E69E7CC0];
  *(v434 + 16) = 0xD000000000000012;
  *(v434 + 24) = 0x80000001AFF2A480;
  *(v434 + 32) = v432;
  *(v434 + 40) = v429;
  *(v434 + 48) = 0;
  *(v434 + 56) = 1;
  *(v434 + 58) = 0;
  *(v434 + 184) = 0;
  *(v434 + 188) = 1;
  *(v434 + 192) = 0;
  *(v434 + 196) = 1;
  *(v434 + 200) = 0x1000100000000;
  *(v434 + 208) = 1;
  *(v434 + 96) = 0;
  *(v434 + 104) = 0;
  *(v434 + 144) = xmmword_1AFE22A20;
  *(v434 + 80) = v433;
  *(v434 + 88) = &off_1F2535378;
  *(v434 + 210) = 0;
  if (v936)
  {
    v429 = (*(v936 + 8))();
  }

  v435 = swift_conformsToProtocol2();
  if (v435 && v429)
  {
    v436 = *(v435 + 8);
    v437 = v435;
    swift_retain_n();
    *(v434 + 160) = v436(v429, v437);
  }

  else
  {
    swift_retain_n();
  }

  *(v434 + 64) = sub_1AF5A96AC;
  *(v434 + 72) = v432;
  *(v434 + 216) = 0;
  *(v434 + 168) = 0;
  *(v434 + 176) = 0;
  v438 = swift_allocObject();
  v438[4] = sub_1AF5AA0D8;
  v438[5] = v430;
  v438[2] = sub_1AF5A9B98;
  v438[3] = v430;
  v438[6] = v430;
  v439 = swift_allocObject();
  *(v439 + 112) = 1;
  *(v439 + 128) = 0;
  *(v439 + 136) = 0;
  *(v439 + 120) = 0;
  *(v439 + 160) = MEMORY[0x1E69E7CC0];
  *(v439 + 16) = 0xD000000000000012;
  *(v439 + 24) = 0x80000001AFF2A480;
  *(v439 + 32) = v430;
  v440 = &type metadata for TextureMipFilterMode;
  *(v439 + 40) = &type metadata for TextureMipFilterMode;
  *(v439 + 48) = 0;
  *(v439 + 56) = 1;
  *(v439 + 58) = 0;
  *(v439 + 184) = 0;
  *(v439 + 188) = 1;
  *(v439 + 192) = 0;
  *(v439 + 196) = 1;
  *(v439 + 200) = 0x1000100000000;
  *(v439 + 208) = 1;
  *(v439 + 96) = v431;
  *(v439 + 104) = 0;
  *(v439 + 144) = xmmword_1AFE22A20;
  *(v439 + 80) = v438;
  *(v439 + 88) = &off_1F2535378;
  *(v439 + 210) = 0;
  if (v930)
  {
    v440 = (*(v930 + 8))();
  }

  v441 = swift_conformsToProtocol2();
  if (v441 && v440)
  {
    v442 = *(v441 + 8);
    v443 = v441;
    swift_retain_n();

    *(v439 + 160) = v442(v440, v443);
  }

  else
  {
    swift_retain_n();
  }

  v444 = MEMORY[0x1E69E7360];
  *(v439 + 64) = sub_1AF5A96C8;
  *(v439 + 72) = v430;
  *(v439 + 168) = 0;
  *(v439 + 176) = 0;
  *(v439 + 216) = v434;

  *(v937 + 296) = v439;
  v445 = swift_getKeyPath();
  v446 = swift_getKeyPath();
  v447 = swift_getKeyPath();
  v448 = swift_allocObject();
  v448[4] = sub_1AF5AA2F8;
  v448[5] = v447;
  v448[2] = sub_1AF5A9B84;
  v448[3] = v447;
  v448[6] = v447;
  v449 = swift_allocObject();
  *(v449 + 112) = 1;
  *(v449 + 128) = 0;
  *(v449 + 136) = 0;
  *(v449 + 120) = 0;
  *(v449 + 160) = MEMORY[0x1E69E7CC0];
  strcpy((v449 + 16), "roughnessWrapS");
  *(v449 + 31) = -18;
  *(v449 + 32) = v447;
  *(v449 + 40) = v444;
  *(v449 + 48) = 0;
  *(v449 + 56) = 1;
  *(v449 + 58) = 0;
  *(v449 + 184) = 0;
  *(v449 + 188) = 1;
  *(v449 + 192) = 0;
  *(v449 + 196) = 1;
  *(v449 + 200) = 0x1000100000000;
  *(v449 + 208) = 1;
  *(v449 + 96) = 0;
  *(v449 + 104) = 0;
  *(v449 + 144) = xmmword_1AFE22A20;
  *(v449 + 80) = v448;
  *(v449 + 88) = &off_1F2535378;
  *(v449 + 210) = 0;
  if (v936)
  {
    v444 = (*(v936 + 8))();
  }

  v450 = swift_conformsToProtocol2();
  if (v450 && v444)
  {
    v451 = *(v450 + 8);
    v452 = v450;
    swift_retain_n();
    *(v449 + 160) = v451(v444, v452);
  }

  else
  {
    swift_retain_n();
  }

  *(v449 + 64) = sub_1AF5A96AC;
  *(v449 + 72) = v447;
  *(v449 + 216) = 0;
  *(v449 + 168) = 0;
  *(v449 + 176) = 0;
  v453 = swift_allocObject();
  v453[4] = sub_1AF5AA0DC;
  v453[5] = v445;
  v453[2] = sub_1AF5A9B90;
  v453[3] = v445;
  v453[6] = v445;
  v454 = swift_allocObject();
  *(v454 + 112) = 1;
  *(v454 + 128) = 0;
  *(v454 + 136) = 0;
  *(v454 + 120) = 0;
  *(v454 + 160) = MEMORY[0x1E69E7CC0];
  strcpy((v454 + 16), "roughnessWrapS");
  *(v454 + 31) = -18;
  *(v454 + 32) = v445;
  v455 = &type metadata for AddressMode;
  *(v454 + 40) = &type metadata for AddressMode;
  *(v454 + 48) = 0;
  *(v454 + 56) = 1;
  *(v454 + 58) = 0;
  *(v454 + 184) = 0;
  *(v454 + 188) = 1;
  *(v454 + 192) = 0;
  *(v454 + 196) = 1;
  *(v454 + 200) = 0x1000100000000;
  *(v454 + 208) = 1;
  *(v454 + 96) = v446;
  *(v454 + 104) = 0;
  *(v454 + 144) = xmmword_1AFE22A20;
  *(v454 + 80) = v453;
  *(v454 + 88) = &off_1F2535378;
  *(v454 + 210) = 0;
  if (v934)
  {
    v455 = (*(v934 + 8))();
  }

  v456 = swift_conformsToProtocol2();
  if (v456 && v455)
  {
    v457 = *(v456 + 8);
    v458 = v456;
    swift_retain_n();

    *(v454 + 160) = v457(v455, v458);
  }

  else
  {
    swift_retain_n();
  }

  v459 = MEMORY[0x1E69E7360];
  *(v454 + 64) = sub_1AF5A96BC;
  *(v454 + 72) = v445;
  *(v454 + 168) = 0;
  *(v454 + 176) = 0;
  *(v454 + 216) = v449;

  *(v937 + 304) = v454;
  v460 = swift_getKeyPath();
  v461 = swift_getKeyPath();
  v462 = swift_getKeyPath();
  v463 = swift_allocObject();
  v463[4] = sub_1AF5AA2F8;
  v463[5] = v462;
  v463[2] = sub_1AF5A9B84;
  v463[3] = v462;
  v463[6] = v462;
  v464 = swift_allocObject();
  *(v464 + 112) = 1;
  *(v464 + 128) = 0;
  *(v464 + 136) = 0;
  *(v464 + 120) = 0;
  *(v464 + 160) = MEMORY[0x1E69E7CC0];
  strcpy((v464 + 16), "roughnessWrapT");
  *(v464 + 31) = -18;
  *(v464 + 32) = v462;
  *(v464 + 40) = v459;
  *(v464 + 48) = 0;
  *(v464 + 56) = 1;
  *(v464 + 58) = 0;
  *(v464 + 184) = 0;
  *(v464 + 188) = 1;
  *(v464 + 192) = 0;
  *(v464 + 196) = 1;
  *(v464 + 200) = 0x1000100000000;
  *(v464 + 208) = 1;
  *(v464 + 96) = 0;
  *(v464 + 104) = 0;
  *(v464 + 144) = xmmword_1AFE22A20;
  *(v464 + 80) = v463;
  *(v464 + 88) = &off_1F2535378;
  *(v464 + 210) = 0;
  if (v936)
  {
    v459 = (*(v936 + 8))();
  }

  v465 = swift_conformsToProtocol2();
  if (v465 && v459)
  {
    v466 = *(v465 + 8);
    v467 = v465;
    swift_retain_n();
    *(v464 + 160) = v466(v459, v467);
  }

  else
  {
    swift_retain_n();
  }

  *(v464 + 64) = sub_1AF5A96AC;
  *(v464 + 72) = v462;
  *(v464 + 216) = 0;
  *(v464 + 168) = 0;
  *(v464 + 176) = 0;
  v468 = swift_allocObject();
  v468[4] = sub_1AF5AA0DC;
  v468[5] = v460;
  v468[2] = sub_1AF5A9B90;
  v468[3] = v460;
  v468[6] = v460;
  v469 = swift_allocObject();
  *(v469 + 112) = 1;
  *(v469 + 128) = 0;
  *(v469 + 136) = 0;
  *(v469 + 120) = 0;
  *(v469 + 160) = MEMORY[0x1E69E7CC0];
  strcpy((v469 + 16), "roughnessWrapT");
  *(v469 + 31) = -18;
  *(v469 + 32) = v460;
  v470 = &type metadata for AddressMode;
  *(v469 + 40) = &type metadata for AddressMode;
  *(v469 + 48) = 0;
  *(v469 + 56) = 1;
  *(v469 + 58) = 0;
  *(v469 + 184) = 0;
  *(v469 + 188) = 1;
  *(v469 + 192) = 0;
  *(v469 + 196) = 1;
  *(v469 + 200) = 0x1000100000000;
  *(v469 + 208) = 1;
  *(v469 + 96) = v461;
  *(v469 + 104) = 0;
  *(v469 + 144) = xmmword_1AFE22A20;
  *(v469 + 80) = v468;
  *(v469 + 88) = &off_1F2535378;
  *(v469 + 210) = 0;
  if (v934)
  {
    v470 = (*(v934 + 8))();
  }

  v471 = swift_conformsToProtocol2();
  if (v471 && v470)
  {
    v472 = *(v471 + 8);
    v473 = v471;
    swift_retain_n();

    *(v469 + 160) = v472(v470, v473);
  }

  else
  {
    swift_retain_n();
  }

  v474 = v932;
  *(v469 + 64) = sub_1AF5A96BC;
  *(v469 + 72) = v460;
  *(v469 + 168) = 0;
  *(v469 + 176) = 0;
  *(v469 + 216) = v464;

  *(v937 + 312) = v469;
  v475 = swift_getKeyPath();
  v476 = swift_getKeyPath();
  v477 = swift_allocObject();
  v477[4] = sub_1AF5A96C0;
  v477[5] = v475;
  v477[2] = sub_1AF5A9B94;
  v477[3] = v475;
  v477[6] = v475;
  v478 = swift_allocObject();
  *(v478 + 112) = 1;
  *(v478 + 128) = 0;
  *(v478 + 136) = 0;
  *(v478 + 120) = 0;
  *(v478 + 160) = MEMORY[0x1E69E7CC0];
  *(v478 + 16) = 0xD000000000000012;
  *(v478 + 24) = 0x80000001AFF2A4A0;
  *(v478 + 32) = v475;
  *(v478 + 40) = v932;
  *(v478 + 48) = 0;
  *(v478 + 56) = 1;
  *(v478 + 58) = 0;
  *(v478 + 184) = 0;
  *(v478 + 188) = 1;
  *(v478 + 192) = 0;
  *(v478 + 196) = 1;
  *(v478 + 200) = 0x1000100000000;
  *(v478 + 208) = 1;
  *(v478 + 96) = v476;
  *(v478 + 104) = 0;
  *(v478 + 144) = xmmword_1AFE22A20;
  *(v478 + 80) = v477;
  *(v478 + 88) = &off_1F2535378;
  *(v478 + 210) = 0;
  if (v931)
  {
    v474 = (*(v929 + 8))();
  }

  v479 = swift_conformsToProtocol2();
  v480 = &type metadata for Entity;
  if (v479 && v474)
  {
    v481 = *(v479 + 8);
    v482 = v479;
    swift_retain_n();

    *(v478 + 160) = v481(v474, v482);
  }

  else
  {
    swift_retain_n();
  }

  *(v478 + 64) = sub_1AF5A96C4;
  *(v478 + 72) = v475;
  *(v478 + 216) = 0;
  *(v478 + 168) = 0;
  *(v478 + 176) = 0;

  *(v937 + 320) = v478;
  v483 = swift_getKeyPath();
  v484 = swift_getKeyPath();
  v485 = swift_allocObject();
  v485[4] = sub_1AF5AA2F8;
  v485[5] = v483;
  v485[2] = sub_1AF5A9B8C;
  v485[3] = v483;
  v485[6] = v483;
  v486 = swift_allocObject();
  *(v486 + 112) = 1;
  *(v486 + 128) = 0;
  *(v486 + 136) = 0;
  *(v486 + 120) = 0;
  *(v486 + 160) = MEMORY[0x1E69E7CC0];
  *(v486 + 16) = 0xD000000000000010;
  *(v486 + 24) = 0x80000001AFF2A4C0;
  *(v486 + 32) = v483;
  *(v486 + 40) = &type metadata for Entity;
  *(v486 + 48) = 0;
  *(v486 + 56) = 1;
  *(v486 + 58) = 256;
  *(v486 + 184) = 0;
  *(v486 + 188) = 1;
  *(v486 + 192) = 0;
  *(v486 + 196) = 1;
  *(v486 + 200) = 0x1000100000000;
  *(v486 + 208) = 1;
  *(v486 + 96) = v484;
  *(v486 + 104) = 0;
  *(v486 + 144) = xmmword_1AFE551B0;
  *(v486 + 80) = v485;
  *(v486 + 88) = &off_1F2535378;
  *(v486 + 210) = 256;
  if (v933)
  {
    v480 = (*(v933 + 8))();
  }

  v487 = swift_conformsToProtocol2();
  if (v487 && v480)
  {
    v488 = *(v487 + 8);
    v489 = v487;
    swift_retain_n();

    *(v486 + 160) = v488(v480, v489);
  }

  else
  {
    swift_retain_n();
  }

  *(v486 + 64) = sub_1AF5A96B4;
  *(v486 + 72) = v483;
  *(v486 + 216) = 0;
  *(v486 + 168) = 0;
  *(v486 + 176) = 0;

  *(v937 + 328) = v486;
  v490 = swift_getKeyPath();
  v491 = swift_getKeyPath();
  v492 = swift_allocObject();
  v492[4] = sub_1AF5A942C;
  v492[5] = v490;
  v492[2] = sub_1AF5A9B9C;
  v492[3] = v490;
  v492[6] = v490;
  v493 = swift_allocObject();
  *(v493 + 112) = 1;
  *(v493 + 128) = 0;
  *(v493 + 136) = 0;
  *(v493 + 120) = 0;
  *(v493 + 160) = MEMORY[0x1E69E7CC0];
  *(v493 + 16) = 0xD000000000000012;
  *(v493 + 24) = 0x80000001AFF2A4E0;
  *(v493 + 32) = v490;
  v494 = MEMORY[0x1E69E6448];
  *(v493 + 40) = MEMORY[0x1E69E6448];
  *(v493 + 48) = 0;
  *(v493 + 56) = 1;
  *(v493 + 58) = 0;
  *(v493 + 184) = 0;
  *(v493 + 188) = 0;
  *(v493 + 192) = 1065353216;
  *(v493 + 196) = 0;
  *(v493 + 200) = 1008981770;
  *(v493 + 204) = 0x10000;
  *(v493 + 208) = 1;
  *(v493 + 96) = v491;
  *(v493 + 104) = 0;
  *(v493 + 144) = xmmword_1AFE22A20;
  *(v493 + 80) = v492;
  *(v493 + 88) = &off_1F2535378;
  *(v493 + 210) = 0;
  if (v928)
  {
    v494 = (*(v928 + 8))();
  }

  v495 = swift_conformsToProtocol2();
  if (v495 && v494)
  {
    v496 = *(v495 + 8);
    v497 = v495;
    swift_retain_n();

    *(v493 + 160) = v496(v494, v497);
  }

  else
  {
    swift_retain_n();
  }

  v498 = MEMORY[0x1E69E7360];
  *(v493 + 64) = sub_1AF5A96CC;
  *(v493 + 72) = v490;
  *(v493 + 216) = 0;
  *(v493 + 168) = 0;
  *(v493 + 176) = 0;

  *(v937 + 336) = v493;
  v499 = swift_getKeyPath();
  v500 = swift_getKeyPath();
  v501 = swift_getKeyPath();
  v502 = swift_allocObject();
  v502[4] = sub_1AF5AA2F8;
  v502[5] = v501;
  v502[2] = sub_1AF5A9B84;
  v502[3] = v501;
  v502[6] = v501;
  v503 = swift_allocObject();
  *(v503 + 112) = 1;
  *(v503 + 128) = 0;
  *(v503 + 136) = 0;
  *(v503 + 120) = 0;
  *(v503 + 160) = MEMORY[0x1E69E7CC0];
  *(v503 + 16) = 0xD000000000000012;
  *(v503 + 24) = 0x80000001AFF2A500;
  *(v503 + 32) = v501;
  *(v503 + 40) = v498;
  *(v503 + 48) = 0;
  *(v503 + 56) = 1;
  *(v503 + 58) = 0;
  *(v503 + 184) = 0;
  *(v503 + 188) = 1;
  *(v503 + 192) = 0;
  *(v503 + 196) = 1;
  *(v503 + 200) = 0x1000100000000;
  *(v503 + 208) = 1;
  *(v503 + 96) = 0;
  *(v503 + 104) = 0;
  *(v503 + 144) = xmmword_1AFE22A20;
  *(v503 + 80) = v502;
  *(v503 + 88) = &off_1F2535378;
  *(v503 + 210) = 0;
  if (v936)
  {
    v498 = (*(v936 + 8))();
  }

  v504 = swift_conformsToProtocol2();
  if (v504 && v498)
  {
    v505 = *(v504 + 8);
    v506 = v504;
    swift_retain_n();
    *(v503 + 160) = v505(v498, v506);
  }

  else
  {
    swift_retain_n();
  }

  *(v503 + 64) = sub_1AF5A96AC;
  *(v503 + 72) = v501;
  *(v503 + 216) = 0;
  *(v503 + 168) = 0;
  *(v503 + 176) = 0;
  v507 = swift_allocObject();
  v507[4] = sub_1AF5AA0D4;
  v507[5] = v499;
  v507[2] = sub_1AF5A9594;
  v507[3] = v499;
  v507[6] = v499;
  v508 = swift_allocObject();
  *(v508 + 112) = 1;
  *(v508 + 128) = 0;
  *(v508 + 136) = 0;
  *(v508 + 120) = 0;
  *(v508 + 160) = MEMORY[0x1E69E7CC0];
  *(v508 + 16) = 0xD000000000000012;
  *(v508 + 24) = 0x80000001AFF2A500;
  *(v508 + 32) = v499;
  v509 = &type metadata for FilterMode;
  *(v508 + 40) = &type metadata for FilterMode;
  *(v508 + 48) = 0;
  *(v508 + 56) = 1;
  *(v508 + 58) = 0;
  *(v508 + 184) = 0;
  *(v508 + 188) = 1;
  *(v508 + 192) = 0;
  *(v508 + 196) = 1;
  *(v508 + 200) = 0x1000100000000;
  *(v508 + 208) = 1;
  *(v508 + 96) = v500;
  *(v508 + 104) = 0;
  *(v508 + 144) = xmmword_1AFE22A20;
  *(v508 + 80) = v507;
  *(v508 + 88) = &off_1F2535378;
  *(v508 + 210) = 0;
  if (v935)
  {
    v509 = (*(v935 + 8))();
  }

  v510 = swift_conformsToProtocol2();
  if (v510 && v509)
  {
    v511 = *(v510 + 8);
    v512 = v510;
    swift_retain_n();

    *(v508 + 160) = v511(v509, v512);
  }

  else
  {
    swift_retain_n();
  }

  v513 = MEMORY[0x1E69E7360];
  *(v508 + 64) = sub_1AF5A96B8;
  *(v508 + 72) = v499;
  *(v508 + 168) = 0;
  *(v508 + 176) = 0;
  *(v508 + 216) = v503;

  *(v937 + 344) = v508;
  v514 = swift_getKeyPath();
  v515 = swift_getKeyPath();
  v516 = swift_getKeyPath();
  v517 = swift_allocObject();
  v517[4] = sub_1AF5AA2F8;
  v517[5] = v516;
  v517[2] = sub_1AF5A9B84;
  v517[3] = v516;
  v517[6] = v516;
  v518 = swift_allocObject();
  *(v518 + 112) = 1;
  *(v518 + 128) = 0;
  *(v518 + 136) = 0;
  *(v518 + 120) = 0;
  *(v518 + 160) = MEMORY[0x1E69E7CC0];
  *(v518 + 16) = 0xD000000000000012;
  *(v518 + 24) = 0x80000001AFF2A520;
  *(v518 + 32) = v516;
  *(v518 + 40) = v513;
  *(v518 + 48) = 0;
  *(v518 + 56) = 1;
  *(v518 + 58) = 0;
  *(v518 + 184) = 0;
  *(v518 + 188) = 1;
  *(v518 + 192) = 0;
  *(v518 + 196) = 1;
  *(v518 + 200) = 0x1000100000000;
  *(v518 + 208) = 1;
  *(v518 + 96) = 0;
  *(v518 + 104) = 0;
  *(v518 + 144) = xmmword_1AFE22A20;
  *(v518 + 80) = v517;
  *(v518 + 88) = &off_1F2535378;
  *(v518 + 210) = 0;
  if (v936)
  {
    v513 = (*(v936 + 8))();
  }

  v519 = swift_conformsToProtocol2();
  if (v519 && v513)
  {
    v520 = *(v519 + 8);
    v521 = v519;
    swift_retain_n();
    *(v518 + 160) = v520(v513, v521);
  }

  else
  {
    swift_retain_n();
  }

  *(v518 + 64) = sub_1AF5A96AC;
  *(v518 + 72) = v516;
  *(v518 + 216) = 0;
  *(v518 + 168) = 0;
  *(v518 + 176) = 0;
  v522 = swift_allocObject();
  v522[4] = sub_1AF5AA0D4;
  v522[5] = v514;
  v522[2] = sub_1AF5A9594;
  v522[3] = v514;
  v522[6] = v514;
  v523 = swift_allocObject();
  *(v523 + 112) = 1;
  *(v523 + 128) = 0;
  *(v523 + 136) = 0;
  *(v523 + 120) = 0;
  *(v523 + 160) = MEMORY[0x1E69E7CC0];
  *(v523 + 16) = 0xD000000000000012;
  *(v523 + 24) = 0x80000001AFF2A520;
  *(v523 + 32) = v514;
  v524 = &type metadata for FilterMode;
  *(v523 + 40) = &type metadata for FilterMode;
  *(v523 + 48) = 0;
  *(v523 + 56) = 1;
  *(v523 + 58) = 0;
  *(v523 + 184) = 0;
  *(v523 + 188) = 1;
  *(v523 + 192) = 0;
  *(v523 + 196) = 1;
  *(v523 + 200) = 0x1000100000000;
  *(v523 + 208) = 1;
  *(v523 + 96) = v515;
  *(v523 + 104) = 0;
  *(v523 + 144) = xmmword_1AFE22A20;
  *(v523 + 80) = v522;
  *(v523 + 88) = &off_1F2535378;
  *(v523 + 210) = 0;
  if (v935)
  {
    v524 = (*(v935 + 8))();
  }

  v525 = swift_conformsToProtocol2();
  if (v525 && v524)
  {
    v526 = *(v525 + 8);
    v527 = v525;
    swift_retain_n();

    *(v523 + 160) = v526(v524, v527);
  }

  else
  {
    swift_retain_n();
  }

  v528 = MEMORY[0x1E69E7360];
  *(v523 + 64) = sub_1AF5A96B8;
  *(v523 + 72) = v514;
  *(v523 + 168) = 0;
  *(v523 + 176) = 0;
  *(v523 + 216) = v518;

  *(v937 + 352) = v523;
  v529 = swift_getKeyPath();
  v530 = swift_getKeyPath();
  v531 = swift_getKeyPath();
  v532 = swift_allocObject();
  v532[4] = sub_1AF5AA2F8;
  v532[5] = v531;
  v532[2] = sub_1AF5A9B84;
  v532[3] = v531;
  v532[6] = v531;
  v533 = swift_allocObject();
  *(v533 + 112) = 1;
  *(v533 + 128) = 0;
  *(v533 + 136) = 0;
  *(v533 + 120) = 0;
  *(v533 + 160) = MEMORY[0x1E69E7CC0];
  *(v533 + 16) = 0xD000000000000012;
  *(v533 + 24) = 0x80000001AFF2A540;
  *(v533 + 32) = v531;
  *(v533 + 40) = v528;
  *(v533 + 48) = 0;
  *(v533 + 56) = 1;
  *(v533 + 58) = 0;
  *(v533 + 184) = 0;
  *(v533 + 188) = 1;
  *(v533 + 192) = 0;
  *(v533 + 196) = 1;
  *(v533 + 200) = 0x1000100000000;
  *(v533 + 208) = 1;
  *(v533 + 96) = 0;
  *(v533 + 104) = 0;
  *(v533 + 144) = xmmword_1AFE22A20;
  *(v533 + 80) = v532;
  *(v533 + 88) = &off_1F2535378;
  *(v533 + 210) = 0;
  if (v936)
  {
    v528 = (*(v936 + 8))();
  }

  v534 = swift_conformsToProtocol2();
  if (v534 && v528)
  {
    v535 = *(v534 + 8);
    v536 = v534;
    swift_retain_n();
    *(v533 + 160) = v535(v528, v536);
  }

  else
  {
    swift_retain_n();
  }

  *(v533 + 64) = sub_1AF5A96AC;
  *(v533 + 72) = v531;
  *(v533 + 216) = 0;
  *(v533 + 168) = 0;
  *(v533 + 176) = 0;
  v537 = swift_allocObject();
  v537[4] = sub_1AF5AA0D8;
  v537[5] = v529;
  v537[2] = sub_1AF5A9B98;
  v537[3] = v529;
  v537[6] = v529;
  v538 = swift_allocObject();
  *(v538 + 112) = 1;
  *(v538 + 128) = 0;
  *(v538 + 136) = 0;
  *(v538 + 120) = 0;
  *(v538 + 160) = MEMORY[0x1E69E7CC0];
  *(v538 + 16) = 0xD000000000000012;
  *(v538 + 24) = 0x80000001AFF2A540;
  *(v538 + 32) = v529;
  v539 = &type metadata for TextureMipFilterMode;
  *(v538 + 40) = &type metadata for TextureMipFilterMode;
  *(v538 + 48) = 0;
  *(v538 + 56) = 1;
  *(v538 + 58) = 0;
  *(v538 + 184) = 0;
  *(v538 + 188) = 1;
  *(v538 + 192) = 0;
  *(v538 + 196) = 1;
  *(v538 + 200) = 0x1000100000000;
  *(v538 + 208) = 1;
  *(v538 + 96) = v530;
  *(v538 + 104) = 0;
  *(v538 + 144) = xmmword_1AFE22A20;
  *(v538 + 80) = v537;
  *(v538 + 88) = &off_1F2535378;
  *(v538 + 210) = 0;
  if (v930)
  {
    v539 = (*(v930 + 8))();
  }

  v540 = swift_conformsToProtocol2();
  if (v540 && v539)
  {
    v541 = *(v540 + 8);
    v542 = v540;
    swift_retain_n();

    *(v538 + 160) = v541(v539, v542);
  }

  else
  {
    swift_retain_n();
  }

  v543 = MEMORY[0x1E69E7360];
  *(v538 + 64) = sub_1AF5A96C8;
  *(v538 + 72) = v529;
  *(v538 + 168) = 0;
  *(v538 + 176) = 0;
  *(v538 + 216) = v533;

  *(v937 + 360) = v538;
  v544 = swift_getKeyPath();
  v545 = swift_getKeyPath();
  v546 = swift_getKeyPath();
  v547 = swift_allocObject();
  v547[4] = sub_1AF5AA2F8;
  v547[5] = v546;
  v547[2] = sub_1AF5A9B84;
  v547[3] = v546;
  v547[6] = v546;
  v548 = swift_allocObject();
  *(v548 + 112) = 1;
  *(v548 + 128) = 0;
  *(v548 + 136) = 0;
  *(v548 + 120) = 0;
  *(v548 + 160) = MEMORY[0x1E69E7CC0];
  strcpy((v548 + 16), "metalnessWrapS");
  *(v548 + 31) = -18;
  *(v548 + 32) = v546;
  *(v548 + 40) = v543;
  *(v548 + 48) = 0;
  *(v548 + 56) = 1;
  *(v548 + 58) = 0;
  *(v548 + 184) = 0;
  *(v548 + 188) = 1;
  *(v548 + 192) = 0;
  *(v548 + 196) = 1;
  *(v548 + 200) = 0x1000100000000;
  *(v548 + 208) = 1;
  *(v548 + 96) = 0;
  *(v548 + 104) = 0;
  *(v548 + 144) = xmmword_1AFE22A20;
  *(v548 + 80) = v547;
  *(v548 + 88) = &off_1F2535378;
  *(v548 + 210) = 0;
  if (v936)
  {
    v543 = (*(v936 + 8))();
  }

  v549 = swift_conformsToProtocol2();
  if (v549 && v543)
  {
    v550 = *(v549 + 8);
    v551 = v549;
    swift_retain_n();
    *(v548 + 160) = v550(v543, v551);
  }

  else
  {
    swift_retain_n();
  }

  *(v548 + 64) = sub_1AF5A96AC;
  *(v548 + 72) = v546;
  *(v548 + 216) = 0;
  *(v548 + 168) = 0;
  *(v548 + 176) = 0;
  v552 = swift_allocObject();
  v552[4] = sub_1AF5AA0DC;
  v552[5] = v544;
  v552[2] = sub_1AF5A9B90;
  v552[3] = v544;
  v552[6] = v544;
  v553 = swift_allocObject();
  *(v553 + 112) = 1;
  *(v553 + 128) = 0;
  *(v553 + 136) = 0;
  *(v553 + 120) = 0;
  *(v553 + 160) = MEMORY[0x1E69E7CC0];
  strcpy((v553 + 16), "metalnessWrapS");
  *(v553 + 31) = -18;
  *(v553 + 32) = v544;
  v554 = &type metadata for AddressMode;
  *(v553 + 40) = &type metadata for AddressMode;
  *(v553 + 48) = 0;
  *(v553 + 56) = 1;
  *(v553 + 58) = 0;
  *(v553 + 184) = 0;
  *(v553 + 188) = 1;
  *(v553 + 192) = 0;
  *(v553 + 196) = 1;
  *(v553 + 200) = 0x1000100000000;
  *(v553 + 208) = 1;
  *(v553 + 96) = v545;
  *(v553 + 104) = 0;
  *(v553 + 144) = xmmword_1AFE22A20;
  *(v553 + 80) = v552;
  *(v553 + 88) = &off_1F2535378;
  *(v553 + 210) = 0;
  if (v934)
  {
    v554 = (*(v934 + 8))();
  }

  v555 = swift_conformsToProtocol2();
  if (v555 && v554)
  {
    v556 = *(v555 + 8);
    v557 = v555;
    swift_retain_n();

    *(v553 + 160) = v556(v554, v557);
  }

  else
  {
    swift_retain_n();
  }

  *(v553 + 64) = sub_1AF5A96BC;
  *(v553 + 72) = v544;
  *(v553 + 168) = 0;
  *(v553 + 176) = 0;
  *(v553 + 216) = v548;

  *(v937 + 368) = v553;
  v558 = swift_getKeyPath();
  v559 = swift_getKeyPath();
  v560 = swift_getKeyPath();
  v561 = MEMORY[0x1E69E7CC0];
  v570 = sub_1AF57756C(0x73656E6C6174656DLL, 0xEE00547061725773, v560, 1, 0, 0, 0, 1, v562, v563, v564, v565, v566, v567, v568, v569, 0.0, 1, 0.0, 1, v870, 0, 0, 1, v899, 0, 0, 1, 0, 0, 0, MEMORY[0x1E69E7CC0], 0);

  v579 = sub_1AF577BFC(0x73656E6C6174656DLL, 0xEE00547061725773, v558, 1, 0, v559, 0, 1, v571, v572, v573, v574, v575, v576, v577, v578, 0.0, 1, 0.0, 1, v871, 0, 0, 1, v900, 0, 0, 1, 0, 0, 0, v561, v570);

  *(v937 + 376) = v579;
  v580 = swift_getKeyPath();
  v581 = swift_getKeyPath();
  v590 = sub_1AF577F44(0xD000000000000012, 0x80000001AFF2A560, v580, 1, 0, v581, 0, 1, v582, v583, v584, v585, v586, v587, v588, v589, 0.0, 1, 0.0, 1, v872, 0, 0, 1, v901, 0, 0, 1, 0, 0, 0, v561, 0);

  *(v937 + 384) = v590;
  v591 = swift_getKeyPath();
  v592 = swift_getKeyPath();
  v601 = sub_1AF5782A0(0x65546C616D726F6ELL, 0xED00006572757478, v591, 8, 0, v592, 0, 1, v593, v594, v595, v596, v597, v598, v599, v600, 0.0, 1, 0.0, 1, v873, 0, 0, 1, v902, 0, 0, 1, 256, 0, 0, v561, 0);

  *(v937 + 392) = v601;
  v602 = swift_getKeyPath();
  v603 = swift_getKeyPath();
  v612 = sub_1AF5785E8(0x6E496C616D726F6ELL, 0xEF797469736E6574, v602, 1, 0, v603, 0, 0, v604, v605, v606, v607, v608, v609, v610, v611, 1.0, 0, 0.01, 0, v874, 0, 0, 1, v903, 0, 0, 1, 0, 0, 0, v561, 0);

  *(v937 + 400) = v612;
  v613 = swift_getKeyPath();
  v614 = swift_getKeyPath();
  v615 = swift_getKeyPath();
  v616 = v561;
  v625 = sub_1AF57756C(0x694D6C616D726F6ELL, 0xEF7265746C69466ELL, v615, 1, 0, 0, 0, 1, v617, v618, v619, v620, v621, v622, v623, v624, 0.0, 1, 0.0, 1, v875, 0, 0, 1, v904, 0, 0, 1, 0, 0, 0, v561, 0);

  v634 = sub_1AF578930(0x694D6C616D726F6ELL, 0xEF7265746C69466ELL, v613, 1, 0, v614, 0, 1, v626, v627, v628, v629, v630, v631, v632, v633, 0.0, 1, 0.0, 1, v876, 0, 0, 1, v905, 0, 0, 1, 0, 0, 0, v616, v625);

  *(v937 + 408) = v634;
  v635 = swift_getKeyPath();
  v636 = swift_getKeyPath();
  v637 = swift_getKeyPath();
  v646 = sub_1AF57756C(0x614D6C616D726F6ELL, 0xEF7265746C694667, v637, 1, 0, 0, 0, 1, v638, v639, v640, v641, v642, v643, v644, v645, 0.0, 1, 0.0, 1, v877, 0, 0, 1, v906, 0, 0, 1, 0, 0, 0, v616, 0);

  v655 = sub_1AF578930(0x614D6C616D726F6ELL, 0xEF7265746C694667, v635, 1, 0, v636, 0, 1, v647, v648, v649, v650, v651, v652, v653, v654, 0.0, 1, 0.0, 1, v878, 0, 0, 1, v907, 0, 0, 1, 0, 0, 0, v616, v646);

  *(v937 + 416) = v655;
  v656 = swift_getKeyPath();
  v657 = swift_getKeyPath();
  v658 = swift_getKeyPath();
  v659 = v616;
  v668 = sub_1AF57756C(0x694D6C616D726F6ELL, 0xEF7265746C694670, v658, 1, 0, 0, 0, 1, v660, v661, v662, v663, v664, v665, v666, v667, 0.0, 1, 0.0, 1, v879, 0, 0, 1, v908, 0, 0, 1, 0, 0, 0, v616, 0);

  v677 = sub_1AF5778B4(0x694D6C616D726F6ELL, 0xEF7265746C694670, v656, 1, 0, v657, 0, 1, v669, v670, v671, v672, v673, v674, v675, v676, 0.0, 1, 0.0, 1, v880, 0, 0, 1, v909, 0, 0, 1, 0, 0, 0, v616, v668);

  *(v937 + 424) = v677;
  v678 = swift_getKeyPath();
  v679 = swift_getKeyPath();
  v680 = swift_getKeyPath();
  v689 = sub_1AF57756C(0x72576C616D726F6ELL, 0xEB00000000537061, v680, 1, 0, 0, 0, 1, v681, v682, v683, v684, v685, v686, v687, v688, 0.0, 1, 0.0, 1, v881, 0, 0, 1, v910, 0, 0, 1, 0, 0, 0, v616, 0);

  v698 = sub_1AF577BFC(0x72576C616D726F6ELL, 0xEB00000000537061, v678, 1, 0, v679, 0, 1, v690, v691, v692, v693, v694, v695, v696, v697, 0.0, 1, 0.0, 1, v882, 0, 0, 1, v911, 0, 0, 1, 0, 0, 0, v616, v689);

  *(v937 + 432) = v698;
  v699 = swift_getKeyPath();
  v700 = swift_getKeyPath();
  v701 = swift_getKeyPath();
  v710 = sub_1AF57756C(0x72576C616D726F6ELL, 0xEB00000000547061, v701, 1, 0, 0, 0, 1, v702, v703, v704, v705, v706, v707, v708, v709, 0.0, 1, 0.0, 1, v883, 0, 0, 1, v912, 0, 0, 1, 0, 0, 0, v616, 0);

  v719 = sub_1AF577BFC(0x72576C616D726F6ELL, 0xEB00000000547061, v699, 1, 0, v700, 0, 1, v711, v712, v713, v714, v715, v716, v717, v718, 0.0, 1, 0.0, 1, v884, 0, 0, 1, v913, 0, 0, 1, 0, 0, 0, v616, v710);

  *(v937 + 440) = v719;
  v720 = swift_getKeyPath();
  v721 = swift_getKeyPath();
  v730 = sub_1AF577F44(0x63536C616D726F6ELL, 0xEF73616942656C61, v720, 1, 0, v721, 0, 1, v722, v723, v724, v725, v726, v727, v728, v729, 0.0, 1, 0.0, 1, v885, 0, 0, 1, v914, 0, 0, 1, 0, 0, 0, v616, 0);

  *(v937 + 448) = v730;
  v731 = swift_getKeyPath();
  v732 = swift_getKeyPath();
  v741 = sub_1AF5782A0(0xD000000000000010, 0x80000001AFF2A580, v731, 8, 0, v732, 0, 1, v733, v734, v735, v736, v737, v738, v739, v740, 0.0, 1, 0.0, 1, v886, 0, 0, 1, v915, 0, 0, 1, 256, 0, 0, v616, 0);

  *(v937 + 456) = v741;
  v742 = swift_getKeyPath();
  v743 = swift_getKeyPath();
  v752 = sub_1AF5785E8(0xD000000000000012, 0x80000001AFF29620, v742, 1, 0, v743, 0, 0, v744, v745, v746, v747, v748, v749, v750, v751, 1.0, 0, 0.01, 0, v887, 0, 0, 1, v916, 0, 0, 1, 0, 0, 0, v616, 0);

  *(v937 + 464) = v752;
  v753 = swift_getKeyPath();
  v754 = swift_getKeyPath();
  v755 = swift_getKeyPath();
  v764 = sub_1AF57756C(0xD000000000000012, 0x80000001AFF2A5A0, v755, 1, 0, 0, 0, 1, v756, v757, v758, v759, v760, v761, v762, v763, 0.0, 1, 0.0, 1, v888, 0, 0, 1, v917, 0, 0, 1, 0, 0, 0, v659, 0);

  v773 = sub_1AF578930(0xD000000000000012, 0x80000001AFF2A5A0, v753, 1, 0, v754, 0, 1, v765, v766, v767, v768, v769, v770, v771, v772, 0.0, 1, 0.0, 1, v889, 0, 0, 1, v918, 0, 0, 1, 0, 0, 0, v659, v764);

  *(v937 + 472) = v773;
  v774 = swift_getKeyPath();
  v775 = swift_getKeyPath();
  v776 = swift_getKeyPath();
  v785 = sub_1AF57756C(0xD000000000000012, 0x80000001AFF2A5C0, v776, 1, 0, 0, 0, 1, v777, v778, v779, v780, v781, v782, v783, v784, 0.0, 1, 0.0, 1, v890, 0, 0, 1, v919, 0, 0, 1, 0, 0, 0, v659, 0);

  v794 = sub_1AF578930(0xD000000000000012, 0x80000001AFF2A5C0, v774, 1, 0, v775, 0, 1, v786, v787, v788, v789, v790, v791, v792, v793, 0.0, 1, 0.0, 1, v891, 0, 0, 1, v920, 0, 0, 1, 0, 0, 0, v659, v785);

  *(v937 + 480) = v794;
  v795 = swift_getKeyPath();
  v796 = swift_getKeyPath();
  v797 = swift_getKeyPath();
  v806 = sub_1AF57756C(0xD000000000000012, 0x80000001AFF2A5E0, v797, 1, 0, 0, 0, 1, v798, v799, v800, v801, v802, v803, v804, v805, 0.0, 1, 0.0, 1, v892, 0, 0, 1, v921, 0, 0, 1, 0, 0, 0, v659, 0);

  v815 = sub_1AF5778B4(0xD000000000000012, 0x80000001AFF2A5E0, v795, 1, 0, v796, 0, 1, v807, v808, v809, v810, v811, v812, v813, v814, 0.0, 1, 0.0, 1, v893, 0, 0, 1, v922, 0, 0, 1, 0, 0, 0, v659, v806);

  *(v937 + 488) = v815;
  v816 = swift_getKeyPath();
  v817 = swift_getKeyPath();
  v818 = swift_getKeyPath();
  v827 = sub_1AF57756C(0x6F6973756C63636FLL, 0xEE0053706172576ELL, v818, 1, 0, 0, 0, 1, v819, v820, v821, v822, v823, v824, v825, v826, 0.0, 1, 0.0, 1, v894, 0, 0, 1, v923, 0, 0, 1, 0, 0, 0, v659, 0);

  v836 = sub_1AF577BFC(0x6F6973756C63636FLL, 0xEE0053706172576ELL, v816, 1, 0, v817, 0, 1, v828, v829, v830, v831, v832, v833, v834, v835, 0.0, 1, 0.0, 1, v895, 0, 0, 1, v924, 0, 0, 1, 0, 0, 0, v659, v827);

  *(v937 + 496) = v836;
  v837 = swift_getKeyPath();
  v838 = swift_getKeyPath();
  v839 = swift_getKeyPath();
  v848 = sub_1AF57756C(0x6F6973756C63636FLL, 0xEE0054706172576ELL, v839, 1, 0, 0, 0, 1, v840, v841, v842, v843, v844, v845, v846, v847, 0.0, 1, 0.0, 1, v896, 0, 0, 1, v925, 0, 0, 1, 0, 0, 0, v659, 0);

  v857 = sub_1AF577BFC(0x6F6973756C63636FLL, 0xEE0054706172576ELL, v837, 1, 0, v838, 0, 1, v849, v850, v851, v852, v853, v854, v855, v856, 0.0, 1, 0.0, 1, v897, 0, 0, 1, v926, 0, 0, 1, 0, 0, 0, v659, v848);

  *(v937 + 504) = v857;
  v858 = swift_getKeyPath();
  v859 = swift_getKeyPath();
  v868 = sub_1AF577F44(0xD000000000000012, 0x80000001AFF2A600, v858, 1, 0, v859, 0, 1, v860, v861, v862, v863, v864, v865, v866, v867, 0.0, 1, 0.0, 1, v898, 0, 0, 1, v927, 0, 0, 1, 0, 0, 0, v659, 0);

  *(v937 + 512) = v868;
  qword_1EB6C2DB8 = v937;
  return result;
}

uint64_t sub_1AF4B7080()
{
  if (*(v0 + 44))
  {
    return *(v0 + 40);
  }

  else
  {
    return 3;
  }
}

uint64_t sub_1AF4B7098(uint64_t result)
{
  if (result == 3)
  {
    if (*(v1 + 44))
    {
      *(v1 + 40) = 1056964608;
      *(v1 + 44) = 0;
    }
  }

  else
  {
    if (result == 2)
    {
      *(v1 + 40) = 2;
    }

    else
    {
      *(v1 + 40) = result == 1;
    }

    *(v1 + 44) = 1;
  }

  return result;
}

uint64_t sub_1AF4B70F8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 24);
  if (v3 && object_getClass(*(a1 + 24)) == _TtC3VFX16PrelitParameters)
  {
    result = swift_unknownObjectRetain();
  }

  else
  {
    type metadata accessor for PrelitParameters();
    result = swift_allocObject();
    v3 = result;
    *&v5 = 0xFFFFFFFFLL;
    *(&v5 + 1) = 0xFFFFFFFFLL;
    *(result + 16) = v5;
    *(result + 32) = 0;
  }

  *a2 = v3;
  return result;
}

void sub_1AF4B716C()
{
  if (*(v0 + 24) && object_getClass(*(v0 + 24)) == _TtC3VFX13PBRParameters)
  {

    swift_unknownObjectRetain();
  }

  else
  {

    sub_1AF892268();
  }
}

void sub_1AF4B71D8(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 24);
  if (v3 && object_getClass(*(a1 + 24)) == _TtC3VFX13PBRParameters)
  {
    swift_unknownObjectRetain();
  }

  else
  {
    sub_1AF892268();
    v3 = v4;
  }

  *a2 = v3;
}

BOOL sub_1AF4B7240()
{
  if (*v0)
  {
    return 0;
  }

  v2 = *(v0 + 24);
  if (v2 && object_getClass(*(v0 + 24)) == _TtC3VFX13PBRParameters)
  {
    swift_unknownObjectRetain();
  }

  else
  {
    sub_1AF892268();
    v2 = v3;
  }

  v4 = *(v2 + 32);
  v5 = *(v2 + 36);

  return v4 != -1 || v5 != 0;
}

unsigned __int8 *sub_1AF4B730C(unsigned __int8 *result, uint64_t a2)
{
  v2 = *result;
  if (v2 == 2)
  {
    v3 = 2;
  }

  else
  {
    v3 = v2 == 1;
  }

  *(a2 + 2) = v3;
  return result;
}

BOOL sub_1AF4B7390()
{
  if (*v0)
  {
    return 0;
  }

  v2 = *(v0 + 24);
  if (v2 && object_getClass(*(v0 + 24)) == _TtC3VFX13PBRParameters)
  {
    swift_unknownObjectRetain();
  }

  else
  {
    sub_1AF892268();
    v2 = v3;
  }

  v4 = *(v2 + 80);
  v5 = *(v2 + 84);

  return v4 != -1 || v5 != 0;
}

BOOL sub_1AF4B7410()
{
  if (*v0)
  {
    return 0;
  }

  v2 = *(v0 + 24);
  if (v2 && object_getClass(*(v0 + 24)) == _TtC3VFX13PBRParameters)
  {
    swift_unknownObjectRetain();
  }

  else
  {
    sub_1AF892268();
    v2 = v3;
  }

  v4 = *(v2 + 112);
  v5 = *(v2 + 116);

  return v4 != -1 || v5 != 0;
}

BOOL sub_1AF4B7494()
{
  if (*v0)
  {
    return 0;
  }

  *v11 = *(v0 + 24);
  v2 = v11[0];
  if (v11[0] && object_getClass(v11[0]) == _TtC3VFX13PBRParameters)
  {
    sub_1AF584E94(v11, v10, &qword_1ED7223C8, qword_1ED7223D0, &protocol descriptor for MaterialParametersProvider, sub_1AF582518);
  }

  else
  {
    sub_1AF892268();
    v2 = v3;
  }

  v4 = v2[304];
  sub_1AF584E94(v11, v10, &qword_1ED7223C8, qword_1ED7223D0, &protocol descriptor for MaterialParametersProvider, sub_1AF582518);

  if (v4 == 1)
  {
    sub_1AF5857CC(v11, &qword_1ED7223C8, qword_1ED7223D0, &protocol descriptor for MaterialParametersProvider, sub_1AF582518);
    return 0;
  }

  if (v11[0])
  {
    v5 = v11[0];
    if (object_getClass(v11[0]) == _TtC3VFX13PBRParameters)
    {
      v6 = v5;
      goto LABEL_14;
    }

    sub_1AF5857CC(v11, &qword_1ED7223C8, qword_1ED7223D0, &protocol descriptor for MaterialParametersProvider, sub_1AF582518);
  }

  sub_1AF892268();
LABEL_14:
  v7 = v6[40];
  v8 = v6[41];

  return v7 != -1 || v8 != 0;
}

BOOL sub_1AF4B7630()
{
  if (*v0)
  {
    return 0;
  }

  v2 = *(v0 + 24);
  if (v2 && object_getClass(*(v0 + 24)) == _TtC3VFX13PBRParameters)
  {
    swift_unknownObjectRetain();
  }

  else
  {
    sub_1AF892268();
    v2 = v3;
  }

  v4 = *(v2 + 256);
  v5 = *(v2 + 260);

  return v4 != -1 || v5 != 0;
}

uint64_t sub_1AF4B76B4()
{
  if (*v0)
  {
    v1 = 0;
  }

  else
  {
    v2 = *(v0 + 24);
    if (v2 && object_getClass(*(v0 + 24)) == _TtC3VFX13PBRParameters)
    {
      swift_unknownObjectRetain();
    }

    else
    {
      sub_1AF892268();
      v2 = v3;
    }

    v4 = *(v2 + 304);

    v1 = v4 ^ 1;
  }

  return v1 & 1;
}

uint64_t sub_1AF4B7728@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (*result)
  {
    v3 = 0;
  }

  else
  {
    v4 = *(result + 24);
    if (v4 && object_getClass(*(result + 24)) == _TtC3VFX13PBRParameters)
    {
      swift_unknownObjectRetain();
    }

    else
    {
      sub_1AF892268();
      v4 = v5;
    }

    v6 = *(v4 + 304);

    v3 = v6 ^ 1;
  }

  *a2 = v3 & 1;
  return result;
}

BOOL sub_1AF4B77AC()
{
  if (*v0)
  {
    return 0;
  }

  *v11 = *(v0 + 24);
  v2 = v11[0];
  if (v11[0] && object_getClass(v11[0]) == _TtC3VFX13PBRParameters)
  {
    sub_1AF584E94(v11, v10, &qword_1ED7223C8, qword_1ED7223D0, &protocol descriptor for MaterialParametersProvider, sub_1AF582518);
  }

  else
  {
    sub_1AF892268();
    v2 = v3;
  }

  v4 = v2[304];
  sub_1AF584E94(v11, v10, &qword_1ED7223C8, qword_1ED7223D0, &protocol descriptor for MaterialParametersProvider, sub_1AF582518);

  if (v4 == 1)
  {
    sub_1AF5857CC(v11, &qword_1ED7223C8, qword_1ED7223D0, &protocol descriptor for MaterialParametersProvider, sub_1AF582518);
    return 0;
  }

  if (v11[0])
  {
    v5 = v11[0];
    if (object_getClass(v11[0]) == _TtC3VFX13PBRParameters)
    {
      v6 = v5;
      goto LABEL_14;
    }

    sub_1AF5857CC(v11, &qword_1ED7223C8, qword_1ED7223D0, &protocol descriptor for MaterialParametersProvider, sub_1AF582518);
  }

  sub_1AF892268();
LABEL_14:
  v7 = v6[52];
  v8 = v6[53];

  return v7 != -1 || v8 != 0;
}

uint64_t sub_1AF4B7A6C()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C3E0;
  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  v3 = MEMORY[0x1E69E6158];
  sub_1AF5A9240(0, &qword_1EB634358, MEMORY[0x1E69E6158], type metadata accessor for EntityGetSet);
  v4 = swift_allocObject();
  v4[4] = sub_1AF585548;
  v4[5] = v2;
  v4[2] = sub_1AF585584;
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
  *(v5 + 16) = 0x7461507465737361;
  *(v5 + 24) = 0xE900000000000068;
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

  *(v5 + 64) = sub_1AF5855B4;
  *(v5 + 72) = v2;
  sub_1AF0FB8EC(0, 0);
  *(v5 + 168) = 0;
  *(v5 + 176) = 0;

  *(v5 + 216) = 0;
  sub_1AF51B13C(0, &qword_1EB6338E8, MEMORY[0x1E6968FB0], type metadata accessor for EntityGetSet);
  v8 = swift_allocObject();
  v8[4] = sub_1AF5855F4;
  v8[5] = KeyPath;
  v8[2] = sub_1AF585620;
  v8[3] = KeyPath;
  v8[6] = KeyPath;
  v9 = swift_allocObject();
  *(v9 + 104) = 0;
  *(v9 + 112) = 1;
  *(v9 + 128) = 0;
  *(v9 + 136) = 0;
  *(v9 + 120) = 0;
  *(v9 + 160) = MEMORY[0x1E69E7CC0];
  *(v9 + 216) = 0;
  v10 = sub_1AFDFC128();
  *(v9 + 168) = 0;
  *(v9 + 176) = 0;
  *(v9 + 16) = 0x7465737361;
  *(v9 + 24) = 0xE500000000000000;
  *(v9 + 32) = KeyPath;
  *(v9 + 40) = v10;
  *(v9 + 48) = 0;
  *(v9 + 56) = 1;
  *(v9 + 58) = 0;
  *(v9 + 184) = 0;
  *(v9 + 188) = 1;
  *(v9 + 192) = 0;
  *(v9 + 196) = 1;
  *(v9 + 200) = 0x1000100000000;
  *(v9 + 208) = 1;
  *(v9 + 96) = 0;
  *(v9 + 64) = 0;
  *(v9 + 72) = 0;
  *(v9 + 144) = xmmword_1AFE22A20;
  *(v9 + 80) = v8;
  *(v9 + 88) = &off_1F2535378;
  *(v9 + 210) = 0;
  v11 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v11 && v10)
  {
    v10 = (*(v11 + 8))(v10, v11);
  }

  v12 = swift_conformsToProtocol2();
  if (v12 && v10)
  {
    *(v9 + 160) = (*(v12 + 8))(v10, v12);
  }

  v13 = *(v9 + 64);
  v14 = *(v9 + 72);
  *(v9 + 64) = sub_1AF585650;
  *(v9 + 72) = KeyPath;
  sub_1AF0FB8EC(v13, v14);
  *(v9 + 168) = 0;
  *(v9 + 176) = 0;

  *(v9 + 216) = v5;

  *(v0 + 32) = v9;
  qword_1EB6C2DC0 = v0;
  return result;
}

uint64_t sub_1AF4B7F4C(uint64_t a1)
{
  v2 = sub_1AFDFC128();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = (&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v6 + 16))(v5, a1, v3);
  return sub_1AF8D9AD4(v5);
}

uint64_t sub_1AF4B80C4()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C3E0;
  KeyPath = swift_getKeyPath();
  sub_1AF51B13C(0, &qword_1EB63A738, sub_1AF58593C, type metadata accessor for EntityGetSet);
  v2 = swift_allocObject();
  v2[4] = sub_1AF5858E0;
  v2[5] = KeyPath;
  v2[2] = sub_1AF58590C;
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
  sub_1AF58593C(0);
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;
  *(v3 + 16) = 0x7463656A626FLL;
  *(v3 + 24) = 0xE600000000000000;
  *(v3 + 32) = KeyPath;
  *(v3 + 40) = v4;
  *(v3 + 48) = 0;
  *(v3 + 56) = 1;
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
  v5 = sub_1AF0D4478(0, &qword_1ED72F7F0, &off_1E7A77B60);
  v6 = swift_conformsToProtocol2();
  swift_retain_n();
  v7 = 0;
  v8 = 0;
  if (v6 && v5)
  {
    *(v3 + 160) = (*(v6 + 8))(v5, v6);

    v8 = *(v3 + 64);
    v7 = *(v3 + 72);
  }

  *(v3 + 64) = sub_1AF5859A4;
  *(v3 + 72) = KeyPath;
  sub_1AF0FB8EC(v8, v7);
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;

  *(v3 + 216) = 0;

  *(v0 + 32) = v3;
  qword_1EB6C2DC8 = v0;
  return result;
}

uint64_t sub_1AF4B8338@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1AF44596C(a1, v5);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1AF4459C8(v5);
  if (!Strong)
  {
    goto LABEL_4;
  }

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (!result)
  {
    swift_unknownObjectRelease();
LABEL_4:
    result = 0;
  }

  *a2 = result;
  return result;
}

uint64_t sub_1AF4B83C8()
{
  if (qword_1EB636D90 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1AF4B8450()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C3E0;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6158];
  sub_1AF5A9240(0, &qword_1EB634358, MEMORY[0x1E69E6158], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF585B4C;
  v3[5] = KeyPath;
  v3[2] = sub_1AF585B78;
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
  *(v4 + 16) = 0x7461507465737361;
  *(v4 + 24) = 0xE900000000000068;
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

  *(v4 + 64) = sub_1AF585BA8;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0, 0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  qword_1EB6C2DD0 = v0;
  return result;
}

uint64_t sub_1AF4B878C()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE55220;
  KeyPath = swift_getKeyPath();
  v2 = &type metadata for Entity;
  sub_1AF5A9240(0, &unk_1EB6338D8, &type metadata for Entity, type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF585C9C;
  v3[5] = KeyPath;
  v3[2] = sub_1AF585CD0;
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
    v2 = (*(v5 + 8))();
  }

  v6 = swift_conformsToProtocol2();
  if (v6 && v2)
  {
    *(v4 + 160) = (*(v6 + 8))(v2, v6);
  }

  v7 = *(v4 + 64);
  v8 = *(v4 + 72);
  *(v4 + 64) = sub_1AF585D2C;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(v7, v8);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;

  *(v0 + 32) = v4;
  v9 = swift_getKeyPath();
  v10 = MEMORY[0x1E69E6530];
  sub_1AF5A9240(0, &qword_1ED722B68, MEMORY[0x1E69E6530], type metadata accessor for EntityGetSet);
  v11 = swift_allocObject();
  v11[4] = sub_1AF585C9C;
  v11[5] = v9;
  v11[2] = sub_1AF585D6C;
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
  *(v12 + 16) = 0x746E756F63;
  *(v12 + 24) = 0xE500000000000000;
  *(v12 + 32) = v9;
  *(v12 + 40) = v10;
  *(v12 + 48) = 8;
  *(v12 + 56) = 0;
  *(v12 + 58) = 0;
  *(v12 + 184) = 1065353216;
  *(v12 + 188) = 0;
  *(v12 + 192) = 1232348160;
  *(v12 + 196) = 0;
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
  if (v13)
  {
    v10 = (*(v13 + 8))();
  }

  v14 = swift_conformsToProtocol2();
  if (v14 && v10)
  {
    *(v12 + 160) = (*(v14 + 8))(v10, v14);
  }

  v15 = *(v12 + 64);
  v16 = *(v12 + 72);
  *(v12 + 64) = sub_1AF585DC8;
  *(v12 + 72) = v9;
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
  v20[4] = sub_1AF5AA2FC;
  v20[5] = v18;
  v20[2] = sub_1AF585E08;
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
  *(v21 + 16) = 0xD000000000000011;
  *(v21 + 24) = 0x80000001AFF2A6E0;
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
  *(v21 + 64) = sub_1AF585E64;
  *(v21 + 72) = v18;
  sub_1AF0FB8EC(v24, v25);
  *(v21 + 168) = 0;
  *(v21 + 176) = 0;

  *(v21 + 216) = 0;

  v26 = &type metadata for PointCache.Distribution;
  sub_1AF5A9240(0, &unk_1EB63A770, &type metadata for PointCache.Distribution, type metadata accessor for EntityGetSet);
  v27 = swift_allocObject();
  v27[4] = sub_1AF585EA4;
  v27[5] = v17;
  v27[2] = sub_1AF585ED0;
  v27[3] = v17;
  v27[6] = v17;
  v28 = swift_allocObject();
  *(v28 + 112) = 1;
  *(v28 + 128) = 0;
  *(v28 + 136) = 0;
  *(v28 + 120) = 0;
  *(v28 + 160) = MEMORY[0x1E69E7CC0];
  *(v28 + 168) = 0;
  *(v28 + 216) = 0;
  *(v28 + 176) = 0;
  strcpy((v28 + 16), "distribution");
  *(v28 + 29) = 0;
  *(v28 + 30) = -5120;
  *(v28 + 32) = v17;
  *(v28 + 40) = &type metadata for PointCache.Distribution;
  *(v28 + 48) = 16;
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

  *(v28 + 64) = sub_1AF585F2C;
  *(v28 + 72) = v17;
  sub_1AF0FB8EC(0, 0);
  *(v28 + 168) = 0;
  *(v28 + 176) = 0;

  *(v28 + 216) = v21;
  *(v0 + 48) = v28;
  v31 = swift_getKeyPath();
  v32 = MEMORY[0x1E69E6370];
  sub_1AF5A9240(0, &qword_1ED722B80, MEMORY[0x1E69E6370], type metadata accessor for EntityGetSet);
  v33 = swift_allocObject();
  v33[4] = sub_1AF585F6C;
  v33[5] = v31;
  v33[2] = sub_1AF585F98;
  v33[3] = v31;
  v33[6] = v31;
  v34 = swift_allocObject();
  *(v34 + 112) = 1;
  *(v34 + 128) = 0;
  *(v34 + 136) = 0;
  *(v34 + 120) = 0;
  *(v34 + 160) = MEMORY[0x1E69E7CC0];
  *(v34 + 168) = 0;
  *(v34 + 216) = 0;
  *(v34 + 176) = 0;
  *(v34 + 16) = 0x6E6F697469736F50;
  *(v34 + 24) = 0xE900000000000073;
  *(v34 + 32) = v31;
  *(v34 + 40) = v32;
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
  v35 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v35)
  {
    v36 = (*(v35 + 8))();
  }

  else
  {
    v36 = v32;
  }

  v37 = swift_conformsToProtocol2();
  if (v37 && v36)
  {
    *(v34 + 160) = (*(v37 + 8))(v36, v37);
  }

  *(v34 + 64) = sub_1AF585FF4;
  *(v34 + 72) = v31;
  sub_1AF0FB8EC(0, 0);
  *(v34 + 168) = 0;
  *(v34 + 176) = 0;

  *(v34 + 216) = 0;
  *(v0 + 56) = v34;
  v38 = swift_getKeyPath();
  v39 = swift_allocObject();
  v39[4] = sub_1AF5AA0E4;
  v39[5] = v38;
  v39[2] = sub_1AF5A9BB0;
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
  *(v40 + 16) = 0x736C616D726F4ELL;
  *(v40 + 24) = 0xE700000000000000;
  *(v40 + 32) = v38;
  *(v40 + 40) = v32;
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
  *(v40 + 96) = 0;
  *(v40 + 104) = 0;
  *(v40 + 144) = xmmword_1AFE22A20;
  *(v40 + 80) = v39;
  *(v40 + 88) = &off_1F2535378;
  *(v40 + 210) = 0;
  swift_retain_n();
  if (v35)
  {
    v41 = (*(v35 + 8))();
  }

  else
  {
    v41 = v32;
  }

  v42 = swift_conformsToProtocol2();
  if (v42 && v41)
  {
    *(v40 + 160) = (*(v42 + 8))(v41, v42);
  }

  *(v40 + 64) = sub_1AF5A96E8;
  *(v40 + 72) = v38;
  sub_1AF0FB8EC(0, 0);
  *(v40 + 168) = 0;
  *(v40 + 176) = 0;

  *(v40 + 216) = 0;
  *(v0 + 64) = v40;
  v43 = swift_getKeyPath();
  v44 = swift_allocObject();
  v44[4] = sub_1AF5AA0E4;
  v44[5] = v43;
  v44[2] = sub_1AF5A9BB0;
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
  *(v45 + 16) = 0x73726F6C6F43;
  *(v45 + 24) = 0xE600000000000000;
  *(v45 + 32) = v43;
  *(v45 + 40) = v32;
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
  *(v45 + 96) = 0;
  *(v45 + 104) = 0;
  *(v45 + 144) = xmmword_1AFE22A20;
  *(v45 + 80) = v44;
  *(v45 + 88) = &off_1F2535378;
  *(v45 + 210) = 0;
  swift_retain_n();
  if (v35)
  {
    v46 = (*(v35 + 8))();
  }

  else
  {
    v46 = v32;
  }

  v47 = swift_conformsToProtocol2();
  if (v47 && v46)
  {
    *(v45 + 160) = (*(v47 + 8))(v46, v47);
  }

  *(v45 + 64) = sub_1AF5A96E8;
  *(v45 + 72) = v43;
  sub_1AF0FB8EC(0, 0);
  *(v45 + 168) = 0;
  *(v45 + 176) = 0;

  *(v45 + 216) = 0;
  *(v0 + 72) = v45;
  v48 = swift_getKeyPath();
  v49 = swift_allocObject();
  v49[4] = sub_1AF5AA0E4;
  v49[5] = v48;
  v49[2] = sub_1AF5A9BB0;
  v49[3] = v48;
  v49[6] = v48;
  v50 = swift_allocObject();
  *(v50 + 112) = 1;
  *(v50 + 128) = 0;
  *(v50 + 136) = 0;
  *(v50 + 120) = 0;
  *(v50 + 160) = MEMORY[0x1E69E7CC0];
  *(v50 + 168) = 0;
  *(v50 + 216) = 0;
  *(v50 + 176) = 0;
  *(v50 + 16) = 7558741;
  *(v50 + 24) = 0xE300000000000000;
  *(v50 + 32) = v48;
  *(v50 + 40) = v32;
  *(v50 + 48) = 0;
  *(v50 + 56) = 1;
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
  if (v35)
  {
    v51 = (*(v35 + 8))();
  }

  else
  {
    v51 = v32;
  }

  v52 = swift_conformsToProtocol2();
  if (v52 && v51)
  {
    *(v50 + 160) = (*(v52 + 8))(v51, v52);
  }

  *(v50 + 64) = sub_1AF5A96E8;
  *(v50 + 72) = v48;
  sub_1AF0FB8EC(0, 0);
  *(v50 + 168) = 0;
  *(v50 + 176) = 0;

  *(v50 + 216) = 0;
  *(v0 + 80) = v50;
  v53 = swift_getKeyPath();
  v54 = swift_allocObject();
  v54[4] = sub_1AF5AA0E4;
  v54[5] = v53;
  v54[2] = sub_1AF5A9BB0;
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
  *(v55 + 16) = 0x73746E696F4ALL;
  *(v55 + 24) = 0xE600000000000000;
  *(v55 + 32) = v53;
  *(v55 + 40) = v32;
  *(v55 + 48) = 0;
  *(v55 + 56) = 1;
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
  if (v35)
  {
    v56 = (*(v35 + 8))();
  }

  else
  {
    v56 = v32;
  }

  v57 = swift_conformsToProtocol2();
  if (v57 && v56)
  {
    *(v55 + 160) = (*(v57 + 8))(v56, v57);
  }

  *(v55 + 64) = sub_1AF5A96E8;
  *(v55 + 72) = v53;
  sub_1AF0FB8EC(0, 0);
  *(v55 + 168) = 0;
  *(v55 + 176) = 0;

  *(v55 + 216) = 0;
  *(v0 + 88) = v55;
  v58 = swift_getKeyPath();
  v59 = swift_allocObject();
  v59[4] = sub_1AF5AA0E4;
  v59[5] = v58;
  v59[2] = sub_1AF5A9BB0;
  v59[3] = v58;
  v59[6] = v58;
  v60 = swift_allocObject();
  *(v60 + 112) = 1;
  *(v60 + 128) = 0;
  *(v60 + 136) = 0;
  *(v60 + 120) = 0;
  *(v60 + 160) = MEMORY[0x1E69E7CC0];
  *(v60 + 168) = 0;
  *(v60 + 216) = 0;
  *(v60 + 176) = 0;
  *(v60 + 16) = 0x656C676E61697254;
  *(v60 + 24) = 0xE900000000000073;
  *(v60 + 32) = v58;
  *(v60 + 40) = v32;
  *(v60 + 48) = 0;
  *(v60 + 56) = 1;
  *(v60 + 58) = 0;
  *(v60 + 184) = 0;
  *(v60 + 188) = 1;
  *(v60 + 192) = 0;
  *(v60 + 196) = 1;
  *(v60 + 200) = 0x1000100000000;
  *(v60 + 208) = 1;
  *(v60 + 64) = 0;
  *(v60 + 72) = 0;
  *(v60 + 96) = 0;
  *(v60 + 104) = 0;
  *(v60 + 144) = xmmword_1AFE22A20;
  *(v60 + 80) = v59;
  *(v60 + 88) = &off_1F2535378;
  *(v60 + 210) = 0;
  swift_retain_n();
  if (v35)
  {
    v32 = (*(v35 + 8))();
  }

  v61 = swift_conformsToProtocol2();
  if (v61 && v32)
  {
    *(v60 + 160) = (*(v61 + 8))(v32, v61);
  }

  *(v60 + 64) = sub_1AF5A96E8;
  *(v60 + 72) = v58;
  sub_1AF0FB8EC(0, 0);
  *(v60 + 168) = 0;
  *(v60 + 176) = 0;

  *(v60 + 216) = 0;
  *(v0 + 96) = v60;
  v62 = swift_getKeyPath();
  v63 = MEMORY[0x1E69E76D8];
  sub_1AF5A9240(0, &unk_1EB643A50, MEMORY[0x1E69E76D8], type metadata accessor for EntityGetSet);
  v64 = swift_allocObject();
  v64[4] = sub_1AF5AA2FC;
  v64[5] = v62;
  v64[2] = sub_1AF586034;
  v64[3] = v62;
  v64[6] = v62;
  v65 = swift_allocObject();
  *(v65 + 112) = 1;
  *(v65 + 128) = 0;
  *(v65 + 136) = 0;
  *(v65 + 120) = 0;
  *(v65 + 160) = MEMORY[0x1E69E7CC0];
  *(v65 + 168) = 0;
  *(v65 + 216) = 0;
  *(v65 + 176) = 0;
  *(v65 + 16) = 1684366675;
  *(v65 + 24) = 0xE400000000000000;
  *(v65 + 32) = v62;
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
  *(v65 + 96) = 0;
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
    *(v65 + 160) = (*(v67 + 8))(v63, v67);
  }

  *(v65 + 64) = sub_1AF586090;
  *(v65 + 72) = v62;
  sub_1AF0FB8EC(0, 0);
  *(v65 + 168) = 0;
  *(v65 + 176) = 0;

  *(v65 + 216) = 0;
  *(v0 + 104) = v65;
  qword_1EB6C2DD8 = v0;
  return result;
}

uint64_t sub_1AF4B9C4C(uint64_t result)
{
  v2 = result;
  if (result >= 3u)
  {
    v2 = 3;
  }

  *(v1 + 16) = v2;
  return result;
}

uint64_t sub_1AF4B9D44()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C3E0;
  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  v3 = MEMORY[0x1E69E6158];
  sub_1AF5A9240(0, &qword_1EB634358, MEMORY[0x1E69E6158], type metadata accessor for EntityGetSet);
  v4 = swift_allocObject();
  v4[4] = sub_1AF586344;
  v4[5] = v2;
  v4[2] = sub_1AF586380;
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
  *(v5 + 16) = 0x7461507465737361;
  *(v5 + 24) = 0xE900000000000068;
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

  *(v5 + 64) = sub_1AF5863B0;
  *(v5 + 72) = v2;
  sub_1AF0FB8EC(0, 0);
  *(v5 + 168) = 0;
  *(v5 + 176) = 0;

  *(v5 + 216) = 0;
  sub_1AF51B13C(0, &qword_1EB6338E8, MEMORY[0x1E6968FB0], type metadata accessor for EntityGetSet);
  v8 = swift_allocObject();
  v8[4] = sub_1AF5863F0;
  v8[5] = KeyPath;
  v8[2] = sub_1AF58641C;
  v8[3] = KeyPath;
  v8[6] = KeyPath;
  v9 = swift_allocObject();
  *(v9 + 104) = 0;
  *(v9 + 112) = 1;
  *(v9 + 128) = 0;
  *(v9 + 136) = 0;
  *(v9 + 120) = 0;
  *(v9 + 160) = MEMORY[0x1E69E7CC0];
  *(v9 + 216) = 0;
  v10 = sub_1AFDFC128();
  *(v9 + 168) = 0;
  *(v9 + 176) = 0;
  *(v9 + 16) = 0x7465737361;
  *(v9 + 24) = 0xE500000000000000;
  *(v9 + 32) = KeyPath;
  *(v9 + 40) = v10;
  *(v9 + 48) = 0;
  *(v9 + 56) = 1;
  *(v9 + 58) = 4;
  *(v9 + 184) = 0;
  *(v9 + 188) = 1;
  *(v9 + 192) = 0;
  *(v9 + 196) = 1;
  *(v9 + 200) = 0x1000100000000;
  *(v9 + 208) = 1;
  *(v9 + 96) = 0;
  *(v9 + 64) = 0;
  *(v9 + 72) = 0;
  *(v9 + 144) = xmmword_1AFE22A20;
  *(v9 + 80) = v8;
  *(v9 + 88) = &off_1F2535378;
  *(v9 + 210) = 4;
  v11 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v11 && v10)
  {
    v10 = (*(v11 + 8))(v10, v11);
  }

  v12 = swift_conformsToProtocol2();
  if (v12 && v10)
  {
    *(v9 + 160) = (*(v12 + 8))(v10, v12);
  }

  v13 = *(v9 + 64);
  v14 = *(v9 + 72);
  *(v9 + 64) = sub_1AF58644C;
  *(v9 + 72) = KeyPath;
  sub_1AF0FB8EC(v13, v14);
  *(v9 + 168) = 0;
  *(v9 + 176) = 0;

  *(v9 + 216) = v5;

  *(v0 + 32) = v9;
  qword_1EB6C2928 = v0;
  return result;
}

uint64_t sub_1AF4BA1EC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_1AF4BA1F8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1AF8E1C20(v1, v2);
}

uint64_t sub_1AF4BA2E8()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE550F0;
  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  v3 = MEMORY[0x1E69E6158];
  sub_1AF5A9240(0, &qword_1EB634358, MEMORY[0x1E69E6158], type metadata accessor for EntityGetSet);
  v4 = swift_allocObject();
  v4[4] = sub_1AF5865C4;
  v4[5] = v2;
  v4[2] = sub_1AF5865F0;
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
  *(v5 + 16) = 0x7461507465737361;
  *(v5 + 24) = 0xE900000000000068;
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

  *(v5 + 64) = sub_1AF586620;
  *(v5 + 72) = v2;
  sub_1AF0FB8EC(0, 0);
  *(v5 + 168) = 0;
  *(v5 + 176) = 0;

  *(v5 + 216) = 0;
  sub_1AF51B13C(0, &qword_1EB6338E8, MEMORY[0x1E6968FB0], type metadata accessor for EntityGetSet);
  v8 = swift_allocObject();
  v8[4] = sub_1AF586660;
  v8[5] = KeyPath;
  v8[2] = sub_1AF586668;
  v8[3] = KeyPath;
  v8[6] = KeyPath;
  v9 = swift_allocObject();
  *(v9 + 104) = 0;
  *(v9 + 112) = 1;
  *(v9 + 128) = 0;
  *(v9 + 136) = 0;
  *(v9 + 120) = 0;
  *(v9 + 160) = MEMORY[0x1E69E7CC0];
  *(v9 + 216) = 0;
  v10 = sub_1AFDFC128();
  *(v9 + 168) = 0;
  *(v9 + 176) = 0;
  *(v9 + 16) = 0x7465737361;
  *(v9 + 24) = 0xE500000000000000;
  *(v9 + 32) = KeyPath;
  *(v9 + 40) = v10;
  *(v9 + 48) = 0;
  *(v9 + 56) = 1;
  *(v9 + 58) = 4;
  *(v9 + 184) = 0;
  *(v9 + 188) = 1;
  *(v9 + 192) = 0;
  *(v9 + 196) = 1;
  *(v9 + 200) = 0x1000100000000;
  *(v9 + 208) = 1;
  *(v9 + 96) = 0;
  *(v9 + 64) = 0;
  *(v9 + 72) = 0;
  *(v9 + 144) = xmmword_1AFE22A20;
  *(v9 + 80) = v8;
  *(v9 + 88) = &off_1F2535378;
  *(v9 + 210) = 4;
  v11 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v11 && v10)
  {
    v10 = (*(v11 + 8))(v10, v11);
  }

  v12 = MEMORY[0x1E69E7CC0];
  v13 = swift_conformsToProtocol2();
  if (v13 && v10)
  {
    *(v9 + 160) = (*(v13 + 8))(v10, v13);
  }

  v14 = *(v9 + 64);
  v15 = *(v9 + 72);
  *(v9 + 64) = sub_1AF586698;
  *(v9 + 72) = KeyPath;
  sub_1AF0FB8EC(v14, v15);
  *(v9 + 168) = 0;
  *(v9 + 176) = 0;

  *(v9 + 216) = v5;

  *(v0 + 32) = v9;
  v16 = swift_getKeyPath();
  v17 = MEMORY[0x1E69E6370];
  sub_1AF5A9240(0, &qword_1ED722B80, MEMORY[0x1E69E6370], type metadata accessor for EntityGetSet);
  v18 = swift_allocObject();
  v18[4] = sub_1AF5866E4;
  v18[5] = v16;
  v18[2] = sub_1AF586710;
  v18[3] = v16;
  v18[6] = v16;
  v19 = swift_allocObject();
  *(v19 + 112) = 1;
  *(v19 + 128) = 0;
  *(v19 + 136) = 0;
  *(v19 + 120) = 0;
  *(v19 + 168) = 0;
  *(v19 + 160) = v12;
  *(v19 + 216) = 0;
  *(v19 + 176) = 0;
  *(v19 + 16) = 2036427888;
  *(v19 + 24) = 0xE400000000000000;
  *(v19 + 32) = v16;
  *(v19 + 40) = v17;
  *(v19 + 48) = 48;
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
  *(v19 + 144) = xmmword_1AFE55120;
  *(v19 + 80) = v18;
  *(v19 + 88) = &off_1F2535378;
  *(v19 + 210) = 0;
  v20 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v20)
  {
    v21 = (*(v20 + 8))();
  }

  else
  {
    v21 = v17;
  }

  v22 = swift_conformsToProtocol2();
  if (v22 && v21)
  {
    *(v19 + 160) = (*(v22 + 8))(v21, v22);
  }

  *(v19 + 64) = sub_1AF58676C;
  *(v19 + 72) = v16;
  sub_1AF0FB8EC(0, 0);
  *(v19 + 168) = 0;
  *(v19 + 176) = 0;

  *(v19 + 216) = 0;
  *(v0 + 40) = v19;
  v23 = swift_getKeyPath();
  v24 = swift_allocObject();
  v24[4] = sub_1AF5AA0EC;
  v24[5] = v23;
  v24[2] = sub_1AF5A9BC8;
  v24[3] = v23;
  v24[6] = v23;
  v25 = swift_allocObject();
  *(v25 + 112) = 1;
  *(v25 + 128) = 0;
  *(v25 + 136) = 0;
  *(v25 + 120) = 0;
  *(v25 + 160) = v12;
  *(v25 + 168) = 0;
  *(v25 + 216) = 0;
  *(v25 + 176) = 0;
  *(v25 + 16) = 0x73706F6F6CLL;
  *(v25 + 24) = 0xE500000000000000;
  *(v25 + 32) = v23;
  *(v25 + 40) = v17;
  *(v25 + 48) = 50;
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
  if (v20)
  {
    v26 = (*(v20 + 8))();
  }

  else
  {
    v26 = v17;
  }

  v27 = swift_conformsToProtocol2();
  if (v27 && v26)
  {
    *(v25 + 160) = (*(v27 + 8))(v26, v27);
  }

  *(v25 + 64) = sub_1AF5A96F8;
  *(v25 + 72) = v23;
  sub_1AF0FB8EC(0, 0);
  *(v25 + 168) = 0;
  *(v25 + 176) = 0;

  *(v25 + 216) = 0;
  *(v0 + 48) = v25;
  v28 = swift_getKeyPath();
  v29 = swift_allocObject();
  v29[4] = sub_1AF5AA0EC;
  v29[5] = v28;
  v29[2] = sub_1AF5A9BC8;
  v29[3] = v28;
  v29[6] = v28;
  v30 = swift_allocObject();
  *(v30 + 112) = 1;
  *(v30 + 128) = 0;
  *(v30 + 136) = 0;
  *(v30 + 120) = 0;
  *(v30 + 160) = v12;
  *(v30 + 168) = 0;
  *(v30 + 216) = 0;
  *(v30 + 176) = 0;
  *(v30 + 16) = 1702131053;
  *(v30 + 24) = 0xE400000000000000;
  *(v30 + 32) = v28;
  *(v30 + 40) = v17;
  *(v30 + 48) = 49;
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
  if (v20)
  {
    v17 = (*(v20 + 8))();
  }

  v31 = swift_conformsToProtocol2();
  if (v31 && v17)
  {
    *(v30 + 160) = (*(v31 + 8))(v17, v31);
  }

  *(v30 + 64) = sub_1AF5A96F8;
  *(v30 + 72) = v28;
  sub_1AF0FB8EC(0, 0);
  *(v30 + 168) = 0;
  *(v30 + 176) = 0;

  *(v30 + 216) = 0;
  *(v0 + 56) = v30;
  qword_1EB6C2818 = v0;
  return result;
}

uint64_t sub_1AF4BACF4()
{
  if (qword_1EB632180 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1AF4BADE4()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C3E0;
  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  v3 = MEMORY[0x1E69E6158];
  sub_1AF5A9240(0, &qword_1EB634358, MEMORY[0x1E69E6158], type metadata accessor for EntityGetSet);
  v4 = swift_allocObject();
  v4[4] = sub_1AF5869E8;
  v4[5] = v2;
  v4[2] = sub_1AF586A24;
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
  *(v5 + 16) = 0x7461507465737361;
  *(v5 + 24) = 0xE900000000000068;
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

  *(v5 + 64) = sub_1AF586A54;
  *(v5 + 72) = v2;
  sub_1AF0FB8EC(0, 0);
  *(v5 + 168) = 0;
  *(v5 + 176) = 0;

  *(v5 + 216) = 0;
  sub_1AF51B13C(0, &qword_1EB6338E8, MEMORY[0x1E6968FB0], type metadata accessor for EntityGetSet);
  v8 = swift_allocObject();
  v8[4] = sub_1AF586A94;
  v8[5] = KeyPath;
  v8[2] = sub_1AF586AC0;
  v8[3] = KeyPath;
  v8[6] = KeyPath;
  v9 = swift_allocObject();
  *(v9 + 104) = 0;
  *(v9 + 112) = 1;
  *(v9 + 128) = 0;
  *(v9 + 136) = 0;
  *(v9 + 120) = 0;
  *(v9 + 160) = MEMORY[0x1E69E7CC0];
  *(v9 + 216) = 0;
  v10 = sub_1AFDFC128();
  *(v9 + 168) = 0;
  *(v9 + 176) = 0;
  *(v9 + 16) = 0x7465737361;
  *(v9 + 24) = 0xE500000000000000;
  *(v9 + 32) = KeyPath;
  *(v9 + 40) = v10;
  *(v9 + 48) = 0;
  *(v9 + 56) = 1;
  *(v9 + 58) = 4;
  *(v9 + 184) = 0;
  *(v9 + 188) = 1;
  *(v9 + 192) = 0;
  *(v9 + 196) = 1;
  *(v9 + 200) = 0x1000100000000;
  *(v9 + 208) = 1;
  *(v9 + 96) = 0;
  *(v9 + 64) = 0;
  *(v9 + 72) = 0;
  *(v9 + 144) = xmmword_1AFE22A20;
  *(v9 + 80) = v8;
  *(v9 + 88) = &off_1F2535378;
  *(v9 + 210) = 4;
  v11 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v11 && v10)
  {
    v10 = (*(v11 + 8))(v10, v11);
  }

  v12 = swift_conformsToProtocol2();
  if (v12 && v10)
  {
    *(v9 + 160) = (*(v12 + 8))(v10, v12);
  }

  v13 = *(v9 + 64);
  v14 = *(v9 + 72);
  *(v9 + 64) = sub_1AF586AF0;
  *(v9 + 72) = KeyPath;
  sub_1AF0FB8EC(v13, v14);
  *(v9 + 168) = 0;
  *(v9 + 176) = 0;

  *(v9 + 216) = v5;

  *(v0 + 32) = v9;
  qword_1EB6C2DE0 = v0;
  return result;
}

uint64_t sub_1AF4BB344()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE55130;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6370];
  sub_1AF5A9240(0, &qword_1ED722B80, MEMORY[0x1E69E6370], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF586CC0;
  v3[5] = KeyPath;
  v3[2] = sub_1AF586CEC;
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
  *(v4 + 16) = 2036427888;
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
  *(v4 + 144) = xmmword_1AFE55120;
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

  *(v4 + 64) = sub_1AF586D48;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0, 0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  v8 = swift_getKeyPath();
  v9 = swift_allocObject();
  v9[4] = sub_1AF5AA0F0;
  v9[5] = v8;
  v9[2] = sub_1AF5A9BCC;
  v9[3] = v8;
  v9[6] = v8;
  v10 = swift_allocObject();
  *(v10 + 112) = 1;
  *(v10 + 128) = 0;
  *(v10 + 136) = 0;
  *(v10 + 120) = 0;
  *(v10 + 168) = 0;
  *(v10 + 160) = MEMORY[0x1E69E7CC0];
  *(v10 + 216) = 0;
  *(v10 + 176) = 0;
  *(v10 + 16) = 0x73706F6F6CLL;
  *(v10 + 24) = 0xE500000000000000;
  *(v10 + 32) = v8;
  *(v10 + 40) = v2;
  *(v10 + 48) = 2;
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

  *(v10 + 64) = sub_1AF5A9714;
  *(v10 + 72) = v8;
  sub_1AF0FB8EC(0, 0);
  *(v10 + 168) = 0;
  *(v10 + 176) = 0;

  *(v10 + 216) = 0;
  *(v0 + 40) = v10;
  v13 = swift_getKeyPath();
  v14 = swift_allocObject();
  v14[4] = sub_1AF5AA0F0;
  v14[5] = v13;
  v14[2] = sub_1AF5A9BCC;
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
  *(v15 + 16) = 1702131053;
  *(v15 + 24) = 0xE400000000000000;
  *(v15 + 32) = v13;
  *(v15 + 40) = v2;
  *(v15 + 48) = 1;
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
    v2 = (*(v5 + 8))();
  }

  v16 = swift_conformsToProtocol2();
  if (v16 && v2)
  {
    *(v15 + 160) = (*(v16 + 8))(v2, v16);
  }

  *(v15 + 64) = sub_1AF5A9714;
  *(v15 + 72) = v13;
  sub_1AF0FB8EC(0, 0);
  *(v15 + 168) = 0;
  *(v15 + 176) = 0;

  *(v15 + 216) = 0;
  *(v0 + 48) = v15;
  qword_1EB6C2DE8 = v0;
  return result;
}

uint64_t sub_1AF4BB970()
{
  if (qword_1EB636DB0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1AF4BBA60()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE550F0;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6370];
  sub_1AF5A9240(0, &qword_1ED722B80, MEMORY[0x1E69E6370], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF586DE8;
  v3[5] = KeyPath;
  v3[2] = sub_1AF586E14;
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
  *(v4 + 16) = 0x6D726F6665766177;
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

  *(v4 + 64) = sub_1AF586E70;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0, 0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  v8 = swift_getKeyPath();
  v9 = swift_allocObject();
  v9[4] = sub_1AF5AA0F4;
  v9[5] = v8;
  v9[2] = sub_1AF5A9BD0;
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
  *(v10 + 16) = 0x6D75727463657073;
  *(v10 + 24) = 0xE800000000000000;
  *(v10 + 32) = v8;
  *(v10 + 40) = v2;
  *(v10 + 48) = 1;
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

  *(v10 + 64) = sub_1AF5A9718;
  *(v10 + 72) = v8;
  sub_1AF0FB8EC(0, 0);
  *(v10 + 168) = 0;
  *(v10 + 176) = 0;

  *(v10 + 216) = 0;
  *(v0 + 40) = v10;
  v13 = swift_getKeyPath();
  v14 = swift_allocObject();
  v14[4] = sub_1AF5AA0F4;
  v14[5] = v13;
  v14[2] = sub_1AF5A9BD0;
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
  strcpy((v15 + 16), "spectrumLowRes");
  *(v15 + 31) = -18;
  *(v15 + 32) = v13;
  *(v15 + 40) = v2;
  *(v15 + 48) = 2;
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

  *(v15 + 64) = sub_1AF5A9718;
  *(v15 + 72) = v13;
  sub_1AF0FB8EC(0, 0);
  *(v15 + 168) = 0;
  *(v15 + 176) = 0;

  *(v15 + 216) = 0;
  *(v0 + 48) = v15;
  v18 = swift_getKeyPath();
  v19 = swift_allocObject();
  v19[4] = sub_1AF5AA0F4;
  v19[5] = v18;
  v19[2] = sub_1AF5A9BD0;
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
  *(v20 + 16) = 7564658;
  *(v20 + 24) = 0xE300000000000000;
  *(v20 + 32) = v18;
  *(v20 + 40) = v2;
  *(v20 + 48) = 3;
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

  *(v20 + 64) = sub_1AF5A9718;
  *(v20 + 72) = v18;
  sub_1AF0FB8EC(0, 0);
  *(v20 + 168) = 0;
  *(v20 + 176) = 0;

  *(v20 + 216) = 0;
  *(v0 + 56) = v20;
  qword_1EB6C2DF0 = v0;
  return result;
}

uint64_t sub_1AF4BC2E8()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE550F0;
  KeyPath = swift_getKeyPath();
  sub_1AF586F6C(0);
  v2 = swift_allocObject();
  v2[4] = sub_1AF586F10;
  v2[5] = KeyPath;
  v2[2] = sub_1AF586F3C;
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
  v4 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &qword_1ED723210, MEMORY[0x1E69E6448], MEMORY[0x1E69E62F8]);
  v6 = v5;
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;
  *(v3 + 16) = 0x6D726F6665766177;
  *(v3 + 24) = 0xE800000000000000;
  *(v3 + 32) = KeyPath;
  *(v3 + 40) = v5;
  *(v3 + 48) = 0;
  *(v3 + 56) = 1;
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
  if (v7)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  swift_retain_n();
  v9 = v6;
  if (v8)
  {
    v9 = (*(v7 + 8))(v8, v7);
  }

  v10 = swift_conformsToProtocol2();
  if (v10 && v9)
  {
    *(v3 + 160) = (*(v10 + 8))(v9, v10);
  }

  v11 = *(v3 + 64);
  v12 = *(v3 + 72);
  *(v3 + 64) = sub_1AF586FE8;
  *(v3 + 72) = KeyPath;
  sub_1AF0FB8EC(v11, v12);
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;

  *(v3 + 216) = 0;

  *(v0 + 32) = v3;
  v13 = swift_getKeyPath();
  v14 = swift_allocObject();
  v14[4] = sub_1AF5AA0F8;
  v14[5] = v13;
  v14[2] = sub_1AF5A971C;
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
  *(v15 + 16) = 0x647574696E67616DLL;
  *(v15 + 24) = 0xEA00000000007365;
  *(v15 + 32) = v13;
  *(v15 + 40) = v6;
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
  v16 = v6;
  if (v8)
  {
    v16 = (*(v7 + 8))(v8, v7);
  }

  v17 = swift_conformsToProtocol2();
  if (v17 && v16)
  {
    *(v15 + 160) = (*(v17 + 8))(v16, v17);
  }

  v18 = *(v15 + 64);
  v19 = *(v15 + 72);
  *(v15 + 64) = sub_1AF5A9720;
  *(v15 + 72) = v13;
  sub_1AF0FB8EC(v18, v19);
  *(v15 + 168) = 0;
  *(v15 + 176) = 0;

  *(v15 + 216) = 0;

  *(v0 + 40) = v15;
  v20 = swift_getKeyPath();
  v21 = swift_allocObject();
  v21[4] = sub_1AF5AA0F8;
  v21[5] = v20;
  v21[2] = sub_1AF5A971C;
  v21[3] = v20;
  v21[6] = v20;
  v22 = swift_allocObject();
  *(v22 + 112) = 1;
  *(v22 + 128) = 0;
  *(v22 + 136) = 0;
  *(v22 + 120) = 0;
  *(v22 + 160) = MEMORY[0x1E69E7CC0];
  *(v22 + 168) = 0;
  *(v22 + 216) = 0;
  *(v22 + 176) = 0;
  *(v22 + 16) = 0xD000000000000010;
  *(v22 + 24) = 0x80000001AFF22450;
  *(v22 + 32) = v20;
  *(v22 + 40) = v6;
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
  *(v22 + 96) = 0;
  *(v22 + 104) = 0;
  *(v22 + 144) = xmmword_1AFE22A20;
  *(v22 + 80) = v21;
  *(v22 + 88) = &off_1F2535378;
  *(v22 + 210) = 0;
  swift_retain_n();
  if (v8)
  {
    v6 = (*(v7 + 8))(v8, v7);
  }

  v23 = swift_conformsToProtocol2();
  if (v23 && v6)
  {
    *(v22 + 160) = (*(v23 + 8))(v6, v23);
  }

  v24 = *(v22 + 64);
  v25 = *(v22 + 72);
  *(v22 + 64) = sub_1AF5A9720;
  *(v22 + 72) = v20;
  sub_1AF0FB8EC(v24, v25);
  *(v22 + 168) = 0;
  *(v22 + 176) = 0;

  *(v22 + 216) = 0;

  *(v0 + 48) = v22;
  v26 = swift_getKeyPath();
  sub_1AF5A9240(0, &unk_1ED722B70, v4, type metadata accessor for EntityGetSet);
  v27 = swift_allocObject();
  v27[4] = sub_1AF58702C;
  v27[5] = v26;
  v27[2] = sub_1AF587060;
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
  *(v28 + 16) = 7564658;
  *(v28 + 24) = 0xE300000000000000;
  *(v28 + 32) = v26;
  *(v28 + 40) = v4;
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
  v29 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v29)
  {
    v4 = (*(v29 + 8))();
  }

  v30 = swift_conformsToProtocol2();
  if (v30 && v4)
  {
    *(v28 + 160) = (*(v30 + 8))(v4, v30);
  }

  *(v28 + 64) = sub_1AF5870BC;
  *(v28 + 72) = v26;
  sub_1AF0FB8EC(0, 0);
  *(v28 + 168) = 0;
  *(v28 + 176) = 0;

  *(v28 + 216) = 0;
  *(v0 + 56) = v28;
  qword_1EB6C2DF8 = v0;
  return result;
}

float sub_1AF4BCB18@<S0>(uint64_t a1@<X0>, float *a2@<X8>)
{
  result = *(a1 + 24);
  *a2 = result;
  return result;
}

uint64_t sub_1AF4BCB6C(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5)
{
  if (*a3 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

uint64_t sub_1AF4BCC40()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C3E0;
  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  v3 = MEMORY[0x1E69E6158];
  sub_1AF5A9240(0, &qword_1EB634358, MEMORY[0x1E69E6158], type metadata accessor for EntityGetSet);
  v4 = swift_allocObject();
  v4[4] = sub_1AF587408;
  v4[5] = v2;
  v4[2] = sub_1AF587444;
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
  *(v5 + 16) = 0x7461507465737361;
  *(v5 + 24) = 0xE900000000000068;
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

  *(v5 + 64) = sub_1AF587474;
  *(v5 + 72) = v2;
  sub_1AF0FB8EC(0, 0);
  *(v5 + 168) = 0;
  *(v5 + 176) = 0;

  *(v5 + 216) = 0;
  sub_1AF51B13C(0, &qword_1EB6338E8, MEMORY[0x1E6968FB0], type metadata accessor for EntityGetSet);
  v8 = swift_allocObject();
  v8[4] = sub_1AF5874B4;
  v8[5] = KeyPath;
  v8[2] = sub_1AF5874E0;
  v8[3] = KeyPath;
  v8[6] = KeyPath;
  v9 = swift_allocObject();
  *(v9 + 104) = 0;
  *(v9 + 112) = 1;
  *(v9 + 128) = 0;
  *(v9 + 136) = 0;
  *(v9 + 120) = 0;
  *(v9 + 160) = MEMORY[0x1E69E7CC0];
  *(v9 + 216) = 0;
  v10 = sub_1AFDFC128();
  *(v9 + 168) = 0;
  *(v9 + 176) = 0;
  *(v9 + 16) = 0x7465737361;
  *(v9 + 24) = 0xE500000000000000;
  *(v9 + 32) = KeyPath;
  *(v9 + 40) = v10;
  *(v9 + 48) = 0;
  *(v9 + 56) = 1;
  *(v9 + 58) = 4;
  *(v9 + 184) = 0;
  *(v9 + 188) = 1;
  *(v9 + 192) = 0;
  *(v9 + 196) = 1;
  *(v9 + 200) = 0x1000100000000;
  *(v9 + 208) = 1;
  *(v9 + 96) = 0;
  *(v9 + 64) = 0;
  *(v9 + 72) = 0;
  *(v9 + 144) = xmmword_1AFE22A20;
  *(v9 + 80) = v8;
  *(v9 + 88) = &off_1F2535378;
  *(v9 + 210) = 4;
  v11 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v11 && v10)
  {
    v10 = (*(v11 + 8))(v10, v11);
  }

  v12 = swift_conformsToProtocol2();
  if (v12 && v10)
  {
    *(v9 + 160) = (*(v12 + 8))(v10, v12);
  }

  v13 = *(v9 + 64);
  v14 = *(v9 + 72);
  *(v9 + 64) = sub_1AF587510;
  *(v9 + 72) = KeyPath;
  sub_1AF0FB8EC(v13, v14);
  *(v9 + 168) = 0;
  *(v9 + 176) = 0;

  *(v9 + 216) = v5;

  *(v0 + 32) = v9;
  qword_1EB6C2E00 = v0;
  return result;
}