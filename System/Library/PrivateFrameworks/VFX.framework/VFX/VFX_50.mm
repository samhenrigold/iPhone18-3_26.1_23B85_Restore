uint64_t sub_1AF4E5F14()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_1AFE55260;
  KeyPath = swift_getKeyPath();
  v1 = swift_getKeyPath();
  v2 = MEMORY[0x1E69E7360];
  sub_1AF5A9240(0, &unk_1EB634340, MEMORY[0x1E69E7360], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF595CDC;
  v3[5] = v1;
  v3[2] = sub_1AF595D10;
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
  strcpy((v4 + 16), "directionIndex");
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

  *(v4 + 64) = sub_1AF595D6C;
  *(v4 + 72) = v1;
  sub_1AF0FB8EC(0, 0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  v9 = &type metadata for FlockingLocalAxis;
  sub_1AF5A9240(0, &qword_1EB63B040, &type metadata for FlockingLocalAxis, type metadata accessor for EntityGetSet);
  v10 = swift_allocObject();
  v10[4] = sub_1AF595DAC;
  v10[5] = KeyPath;
  v10[2] = sub_1AF595DD8;
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
  *(v11 + 16) = 0x6F69746365726964;
  *(v11 + 24) = 0xE90000000000006ELL;
  *(v11 + 32) = KeyPath;
  *(v11 + 40) = &type metadata for FlockingLocalAxis;
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
    v13 = (*(v12 + 8))();
  }

  else
  {
    v13 = &type metadata for FlockingLocalAxis;
  }

  v14 = swift_conformsToProtocol2();
  if (v14 && v13)
  {
    *(v11 + 160) = (*(v14 + 8))(v13, v14);
  }

  *(v11 + 64) = sub_1AF595E34;
  *(v11 + 72) = KeyPath;
  sub_1AF0FB8EC(0, 0);
  *(v11 + 168) = 0;
  *(v11 + 176) = 0;

  *(v11 + 216) = v4;
  *(v50 + 32) = v11;
  v15 = swift_getKeyPath();
  v16 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v17 = swift_allocObject();
  v17[4] = sub_1AF595E74;
  v17[5] = v15;
  v17[2] = sub_1AF595EA8;
  v17[3] = v15;
  v17[6] = v15;
  v18 = swift_allocObject();
  *(v18 + 112) = 1;
  *(v18 + 128) = 0;
  *(v18 + 136) = 0;
  *(v18 + 120) = 0;
  *(v18 + 160) = MEMORY[0x1E69E7CC0];
  *(v18 + 168) = 0;
  *(v18 + 216) = 0;
  *(v18 + 176) = 0;
  strcpy((v18 + 16), "maxRotVelDir");
  *(v18 + 29) = 0;
  *(v18 + 30) = -5120;
  *(v18 + 32) = v15;
  *(v18 + 40) = v16;
  *(v18 + 48) = 4;
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
    v16 = (*(v19 + 8))();
  }

  v20 = swift_conformsToProtocol2();
  if (v20 && v16)
  {
    *(v18 + 160) = (*(v20 + 8))(v16, v20);
  }

  *(v18 + 64) = sub_1AF595F04;
  *(v18 + 72) = v15;
  sub_1AF0FB8EC(0, 0);
  *(v18 + 168) = 0;
  *(v18 + 176) = 0;

  *(v18 + 216) = 0;
  *(v50 + 40) = v18;
  v21 = swift_getKeyPath();
  v22 = swift_getKeyPath();
  v23 = swift_allocObject();
  v23[4] = sub_1AF5AA3A4;
  v23[5] = v22;
  v23[2] = sub_1AF5A9DE4;
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
  strcpy((v24 + 16), "upVectorIndex");
  *(v24 + 30) = -4864;
  *(v24 + 32) = v22;
  *(v24 + 40) = v2;
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
  swift_retain_n();
  if (v6)
  {
    v2 = (*(v6 + 8))();
  }

  v25 = swift_conformsToProtocol2();
  if (v25 && v2)
  {
    *(v24 + 160) = (*(v25 + 8))(v2, v25);
  }

  *(v24 + 64) = sub_1AF5A9890;
  *(v24 + 72) = v22;
  sub_1AF0FB8EC(0, 0);
  *(v24 + 168) = 0;
  *(v24 + 176) = 0;

  *(v24 + 216) = 0;
  v26 = swift_allocObject();
  v26[4] = sub_1AF5AA1B0;
  v26[5] = v21;
  v26[2] = sub_1AF5A9DE8;
  v26[3] = v21;
  v26[6] = v21;
  v27 = swift_allocObject();
  *(v27 + 112) = 1;
  *(v27 + 128) = 0;
  *(v27 + 136) = 0;
  *(v27 + 120) = 0;
  *(v27 + 160) = MEMORY[0x1E69E7CC0];
  *(v27 + 168) = 0;
  *(v27 + 216) = 0;
  *(v27 + 176) = 0;
  *(v27 + 16) = 0x726F746365567075;
  *(v27 + 24) = 0xE800000000000000;
  *(v27 + 32) = v21;
  *(v27 + 40) = &type metadata for FlockingLocalAxis;
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
  swift_retain_n();
  if (v12)
  {
    v9 = (*(v12 + 8))();
  }

  v28 = swift_conformsToProtocol2();
  if (v28 && v9)
  {
    *(v27 + 160) = (*(v28 + 8))(v9, v28);
  }

  *(v27 + 64) = sub_1AF5A9894;
  *(v27 + 72) = v21;
  sub_1AF0FB8EC(0, 0);
  *(v27 + 168) = 0;
  *(v27 + 176) = 0;

  *(v27 + 216) = v24;
  *(v50 + 48) = v27;
  v29 = swift_getKeyPath();
  sub_1AF57AAE8(0);
  v30 = swift_allocObject();
  v30[4] = sub_1AF595F44;
  v30[5] = v29;
  v30[2] = sub_1AF595F5C;
  v30[3] = v29;
  v30[6] = v29;
  v31 = swift_allocObject();
  *(v31 + 104) = 0;
  *(v31 + 112) = 1;
  *(v31 + 128) = 0;
  *(v31 + 136) = 0;
  *(v31 + 120) = 0;
  *(v31 + 160) = MEMORY[0x1E69E7CC0];
  *(v31 + 216) = 0;
  v32 = MEMORY[0x1E69E6448];
  sub_1AF583D60(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
  v34 = v33;
  *(v31 + 168) = 0;
  *(v31 + 176) = 0;
  *(v31 + 16) = 0x7441746E696F70;
  *(v31 + 24) = 0xE700000000000000;
  *(v31 + 32) = v29;
  *(v31 + 40) = v33;
  *(v31 + 48) = 16;
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
  *(v31 + 144) = xmmword_1AFE22A20;
  *(v31 + 80) = v30;
  *(v31 + 88) = &off_1F2535378;
  *(v31 + 210) = 0;
  v35 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v35 && v34)
  {
    v34 = (*(v35 + 8))(v34, v35);
  }

  v36 = swift_conformsToProtocol2();
  if (v36 && v34)
  {
    *(v31 + 160) = (*(v36 + 8))(v34, v36);
  }

  v37 = *(v31 + 64);
  v38 = *(v31 + 72);
  *(v31 + 64) = sub_1AF595FC0;
  *(v31 + 72) = v29;
  sub_1AF0FB8EC(v37, v38);
  *(v31 + 168) = 0;
  *(v31 + 176) = 0;

  *(v31 + 216) = 0;

  *(v50 + 56) = v31;
  v39 = swift_getKeyPath();
  v40 = MEMORY[0x1E69E6370];
  sub_1AF5A9240(0, &qword_1ED722B80, MEMORY[0x1E69E6370], type metadata accessor for EntityGetSet);
  v41 = swift_allocObject();
  v41[4] = sub_1AF596004;
  v41[5] = v39;
  v41[2] = sub_1AF596030;
  v41[3] = v39;
  v41[6] = v39;
  v42 = swift_allocObject();
  *(v42 + 112) = 1;
  *(v42 + 128) = 0;
  *(v42 + 136) = 0;
  *(v42 + 120) = 0;
  *(v42 + 160) = MEMORY[0x1E69E7CC0];
  *(v42 + 168) = 0;
  *(v42 + 216) = 0;
  *(v42 + 176) = 0;
  strcpy((v42 + 16), "reduceFlipping");
  *(v42 + 31) = -18;
  *(v42 + 32) = v39;
  *(v42 + 40) = v40;
  *(v42 + 48) = 32;
  *(v42 + 56) = 0;
  *(v42 + 58) = 0;
  *(v42 + 184) = 0;
  *(v42 + 188) = 1;
  *(v42 + 192) = 0;
  *(v42 + 196) = 1;
  *(v42 + 200) = 0x1000100000000;
  *(v42 + 208) = 1;
  *(v42 + 64) = 0;
  *(v42 + 72) = 0;
  *(v42 + 96) = 0;
  *(v42 + 104) = 0;
  *(v42 + 144) = xmmword_1AFE22A20;
  *(v42 + 80) = v41;
  *(v42 + 88) = &off_1F2535378;
  *(v42 + 210) = 0;
  v43 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v43)
  {
    v40 = (*(v43 + 8))();
  }

  v44 = swift_conformsToProtocol2();
  if (v44 && v40)
  {
    *(v42 + 160) = (*(v44 + 8))(v40, v44);
  }

  *(v42 + 64) = sub_1AF59608C;
  *(v42 + 72) = v39;
  sub_1AF0FB8EC(0, 0);
  *(v42 + 168) = 0;
  *(v42 + 176) = 0;

  *(v42 + 216) = 0;
  *(v50 + 64) = v42;
  v45 = swift_getKeyPath();
  v46 = swift_allocObject();
  v46[4] = sub_1AF5A94BC;
  v46[5] = v45;
  v46[2] = sub_1AF5A9DEC;
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
  strcpy((v47 + 16), "maxRotVelUpVec");
  *(v47 + 31) = -18;
  *(v47 + 32) = v45;
  *(v47 + 40) = v32;
  *(v47 + 48) = 36;
  *(v47 + 56) = 0;
  *(v47 + 58) = 0;
  *(v47 + 184) = 0;
  *(v47 + 188) = 0;
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
  swift_retain_n();
  if (v19)
  {
    v32 = (*(v19 + 8))();
  }

  v48 = swift_conformsToProtocol2();
  if (v48 && v32)
  {
    *(v47 + 160) = (*(v48 + 8))(v32, v48);
  }

  *(v47 + 64) = sub_1AF5A9898;
  *(v47 + 72) = v45;
  sub_1AF0FB8EC(0, 0);
  *(v47 + 168) = 0;
  *(v47 + 176) = 0;

  *(v47 + 216) = 0;
  *(v50 + 72) = v47;
  qword_1EB6C2F78 = v50;
  return result;
}

uint64_t sub_1AF4E6F04(uint64_t result)
{
  v2 = result;
  if (result >= 6u)
  {
    v2 = 6;
  }

  *(v1 + 8) = v2;
  return result;
}

uint64_t sub_1AF4E6FCC()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE550E0;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF5962EC;
  v3[5] = KeyPath;
  v3[2] = sub_1AF596320;
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
  *(v4 + 16) = 0x636E65756C666E69;
  *(v4 + 24) = 0xE900000000000065;
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

  *(v4 + 64) = sub_1AF59637C;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0, 0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  v8 = swift_getKeyPath();
  sub_1AF57AAE8(0);
  v9 = swift_allocObject();
  v9[4] = sub_1AF5963BC;
  v9[5] = v8;
  v9[2] = sub_1AF5963D4;
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
  sub_1AF583D60(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
  v12 = v11;
  *(v10 + 168) = 0;
  *(v10 + 176) = 0;
  *(v10 + 16) = 0x726F4E656E616C70;
  *(v10 + 24) = 0xEB000000006C616DLL;
  *(v10 + 32) = v8;
  *(v10 + 40) = v11;
  *(v10 + 48) = 16;
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
  *(v10 + 64) = sub_1AF596438;
  *(v10 + 72) = v8;
  sub_1AF0FB8EC(v15, v16);
  *(v10 + 168) = 0;
  *(v10 + 176) = 0;

  *(v10 + 216) = 0;

  *(v0 + 40) = v10;
  qword_1EB6C2F80 = v0;
  return result;
}

uint64_t sub_1AF4E7528()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE550F0;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF59657C;
  v3[5] = KeyPath;
  v3[2] = sub_1AF5965C0;
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
  *(v4 + 16) = 0x6854726564726F62;
  *(v4 + 24) = 0xEF7373656E6B6369;
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

  *(v4 + 64) = sub_1AF59661C;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0, 0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  v7 = swift_getKeyPath();
  sub_1AF57AAE8(0);
  v8 = swift_allocObject();
  v8[4] = sub_1AF59665C;
  v8[5] = v7;
  v8[2] = sub_1AF596684;
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
  sub_1AF583D60(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
  v11 = v10;
  *(v9 + 168) = 0;
  *(v9 + 176) = 0;
  *(v9 + 16) = 0x3172656E726F63;
  *(v9 + 24) = 0xE700000000000000;
  *(v9 + 32) = v7;
  *(v9 + 40) = v10;
  *(v9 + 48) = 16;
  *(v9 + 56) = 0;
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
  v12 = swift_conformsToProtocol2();
  if (v12)
  {
    v13 = v11;
  }

  else
  {
    v13 = 0;
  }

  swift_retain_n();
  v14 = v11;
  if (v13)
  {
    v14 = (*(v12 + 8))(v13, v12);
  }

  v15 = swift_conformsToProtocol2();
  if (v15 && v14)
  {
    *(v9 + 160) = (*(v15 + 8))(v14, v15);
  }

  v16 = *(v9 + 64);
  v17 = *(v9 + 72);
  *(v9 + 64) = sub_1AF5966E8;
  *(v9 + 72) = v7;
  sub_1AF0FB8EC(v16, v17);
  *(v9 + 168) = 0;
  *(v9 + 176) = 0;

  *(v9 + 216) = 0;

  *(v0 + 40) = v9;
  v18 = swift_getKeyPath();
  v19 = swift_allocObject();
  v19[4] = sub_1AF5A98A4;
  v19[5] = v18;
  v19[2] = sub_1AF5A9E00;
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
  *(v20 + 16) = 0x3272656E726F63;
  *(v20 + 24) = 0xE700000000000000;
  *(v20 + 32) = v18;
  *(v20 + 40) = v11;
  *(v20 + 48) = 32;
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
  if (v13)
  {
    v11 = (*(v12 + 8))(v13, v12);
  }

  v21 = swift_conformsToProtocol2();
  if (v21 && v11)
  {
    *(v20 + 160) = (*(v21 + 8))(v11, v21);
  }

  v22 = *(v20 + 64);
  v23 = *(v20 + 72);
  *(v20 + 64) = sub_1AF5A98A8;
  *(v20 + 72) = v18;
  sub_1AF0FB8EC(v22, v23);
  *(v20 + 168) = 0;
  *(v20 + 176) = 0;

  *(v20 + 216) = 0;

  *(v0 + 48) = v20;
  v24 = swift_getKeyPath();
  v25 = MEMORY[0x1E69E6370];
  sub_1AF5A9240(0, &qword_1ED722B80, MEMORY[0x1E69E6370], type metadata accessor for EntityGetSet);
  v26 = swift_allocObject();
  v26[4] = sub_1AF59672C;
  v26[5] = v24;
  v26[2] = sub_1AF596768;
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
  *(v27 + 16) = 0x61657241776F6873;
  *(v27 + 24) = 0xE800000000000000;
  *(v27 + 32) = v24;
  *(v27 + 40) = v25;
  *(v27 + 48) = 48;
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

  *(v27 + 64) = sub_1AF5967C4;
  *(v27 + 72) = v24;
  sub_1AF0FB8EC(0, 0);
  *(v27 + 168) = 0;
  *(v27 + 176) = 0;

  *(v27 + 216) = 0;
  *(v0 + 56) = v27;
  qword_1EB6C2F88 = v0;
  return result;
}

uint64_t sub_1AF4E7E50()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE550F0;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF596964;
  v3[5] = KeyPath;
  v3[2] = sub_1AF5969A8;
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
  *(v4 + 16) = 0x636E65756C666E69;
  *(v4 + 24) = 0xE900000000000065;
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

  *(v4 + 64) = sub_1AF596A04;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0, 0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  v8 = swift_getKeyPath();
  sub_1AF57AAE8(0);
  v9 = swift_allocObject();
  v9[4] = sub_1AF596A44;
  v9[5] = v8;
  v9[2] = sub_1AF596A6C;
  v9[3] = v8;
  v9[6] = v8;
  v10 = swift_allocObject();
  *(v10 + 104) = 0;
  *(v10 + 112) = 1;
  *(v10 + 128) = 0;
  *(v10 + 136) = 0;
  *(v10 + 120) = 0;
  *(v10 + 160) = MEMORY[0x1E69E7CC0];
  *(v10 + 216) = 0;
  sub_1AF583D60(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
  v12 = v11;
  *(v10 + 168) = 0;
  *(v10 + 176) = 0;
  *(v10 + 16) = 0x6E6543656E616C70;
  *(v10 + 24) = 0xEB00000000726574;
  *(v10 + 32) = v8;
  *(v10 + 40) = v11;
  *(v10 + 48) = 16;
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
  *(v10 + 144) = xmmword_1AFE22A20;
  *(v10 + 80) = v9;
  *(v10 + 88) = &off_1F2535378;
  *(v10 + 210) = 0;
  v13 = swift_conformsToProtocol2();
  if (v13)
  {
    v14 = v12;
  }

  else
  {
    v14 = 0;
  }

  swift_retain_n();
  v15 = v12;
  if (v14)
  {
    v15 = (*(v13 + 8))(v14, v13);
  }

  v16 = swift_conformsToProtocol2();
  if (v16 && v15)
  {
    *(v10 + 160) = (*(v16 + 8))(v15, v16);
  }

  v17 = *(v10 + 64);
  v18 = *(v10 + 72);
  *(v10 + 64) = sub_1AF596AD0;
  *(v10 + 72) = v8;
  sub_1AF0FB8EC(v17, v18);
  *(v10 + 168) = 0;
  *(v10 + 176) = 0;

  *(v10 + 216) = 0;

  *(v0 + 40) = v10;
  v19 = swift_getKeyPath();
  v20 = swift_allocObject();
  v20[4] = sub_1AF5A98AC;
  v20[5] = v19;
  v20[2] = sub_1AF5A9E0C;
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
  *(v21 + 16) = 0x726F4E656E616C70;
  *(v21 + 24) = 0xEB000000006C616DLL;
  *(v21 + 32) = v19;
  *(v21 + 40) = v12;
  *(v21 + 48) = 32;
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
  if (v14)
  {
    v12 = (*(v13 + 8))(v14, v13);
  }

  v22 = swift_conformsToProtocol2();
  if (v22 && v12)
  {
    *(v21 + 160) = (*(v22 + 8))(v12, v22);
  }

  v23 = *(v21 + 64);
  v24 = *(v21 + 72);
  *(v21 + 64) = sub_1AF5A98B0;
  *(v21 + 72) = v19;
  sub_1AF0FB8EC(v23, v24);
  *(v21 + 168) = 0;
  *(v21 + 176) = 0;

  *(v21 + 216) = 0;

  *(v0 + 48) = v21;
  v25 = swift_getKeyPath();
  v26 = MEMORY[0x1E69E6370];
  sub_1AF5A9240(0, &qword_1ED722B80, MEMORY[0x1E69E6370], type metadata accessor for EntityGetSet);
  v27 = swift_allocObject();
  v27[4] = sub_1AF596B14;
  v27[5] = v25;
  v27[2] = sub_1AF596B50;
  v27[3] = v25;
  v27[6] = v25;
  v28 = swift_allocObject();
  *(v28 + 112) = 1;
  *(v28 + 128) = 0;
  *(v28 + 136) = 0;
  *(v28 + 120) = 0;
  *(v28 + 160) = MEMORY[0x1E69E7CC0];
  *(v28 + 168) = 0;
  *(v28 + 216) = 0;
  *(v28 + 176) = 0;
  *(v28 + 16) = 0x6E616C50776F6873;
  *(v28 + 24) = 0xE900000000000065;
  *(v28 + 32) = v25;
  *(v28 + 40) = v26;
  *(v28 + 48) = 48;
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

  *(v28 + 64) = sub_1AF596BAC;
  *(v28 + 72) = v25;
  sub_1AF0FB8EC(0, 0);
  *(v28 + 168) = 0;
  *(v28 + 176) = 0;

  *(v28 + 216) = 0;
  *(v0 + 56) = v28;
  qword_1EB6C2F90 = v0;
  return result;
}

uint64_t sub_1AF4E8778()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1AFE551A0;
  KeyPath = swift_getKeyPath();
  v1 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v2 = swift_allocObject();
  v2[4] = sub_1AF596D4C;
  v2[5] = KeyPath;
  v2[2] = sub_1AF596D80;
  v2[3] = KeyPath;
  v2[6] = KeyPath;
  type metadata accessor for PropertyDescription();
  v3 = swift_allocObject();
  *(v3 + 112) = 1;
  *(v3 + 136) = 0;
  v4 = MEMORY[0x1E69E7CC0];
  *(v3 + 120) = 0;
  *(v3 + 128) = 0;
  *(v3 + 160) = v4;
  *(v3 + 168) = 0;
  *(v3 + 216) = 0;
  *(v3 + 176) = 0;
  *(v3 + 16) = 0x636E65756C666E69;
  *(v3 + 24) = 0xE900000000000065;
  *(v3 + 32) = KeyPath;
  *(v3 + 40) = v1;
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
  *(v3 + 104) = 0;
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
    v6 = (*(v5 + 8))();
  }

  else
  {
    v6 = v1;
  }

  v7 = swift_conformsToProtocol2();
  if (v7 && v6)
  {
    *(v3 + 160) = (*(v7 + 8))(v6, v7);
  }

  *(v3 + 64) = sub_1AF596DDC;
  *(v3 + 72) = KeyPath;
  sub_1AF0FB8EC(0, 0);
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;

  *(v3 + 216) = 0;
  *(v39 + 32) = v3;
  v8 = swift_getKeyPath();
  v9 = swift_allocObject();
  v9[4] = sub_1AF5A94CC;
  v9[5] = v8;
  v9[2] = sub_1AF5A9E18;
  v9[3] = v8;
  v9[6] = v8;
  v10 = swift_allocObject();
  *(v10 + 112) = 1;
  *(v10 + 128) = 0;
  *(v10 + 136) = 0;
  *(v10 + 120) = 0;
  *(v10 + 160) = v4;
  *(v10 + 168) = 0;
  *(v10 + 216) = 0;
  *(v10 + 176) = 0;
  *(v10 + 16) = 0x737569646172;
  *(v10 + 24) = 0xE600000000000000;
  *(v10 + 32) = v8;
  *(v10 + 40) = v1;
  *(v10 + 48) = 4;
  *(v10 + 56) = 0;
  *(v10 + 58) = 0;
  *(v10 + 184) = 0;
  *(v10 + 188) = 0;
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
    v11 = v1;
  }

  v12 = swift_conformsToProtocol2();
  if (v12 && v11)
  {
    *(v10 + 160) = (*(v12 + 8))(v11, v12);
  }

  *(v10 + 64) = sub_1AF5A98B4;
  *(v10 + 72) = v8;
  sub_1AF0FB8EC(0, 0);
  *(v10 + 168) = 0;
  *(v10 + 176) = 0;

  *(v10 + 216) = 0;
  *(v39 + 40) = v10;
  v13 = swift_getKeyPath();
  v14 = swift_allocObject();
  v14[4] = sub_1AF5A94CC;
  v14[5] = v13;
  v14[2] = sub_1AF5A9E18;
  v14[3] = v13;
  v14[6] = v13;
  v15 = swift_allocObject();
  *(v15 + 112) = 1;
  *(v15 + 128) = 0;
  *(v15 + 136) = 0;
  *(v15 + 120) = 0;
  *(v15 + 160) = v4;
  *(v15 + 168) = 0;
  *(v15 + 216) = 0;
  *(v15 + 176) = 0;
  *(v15 + 16) = 0x65636E6174736964;
  *(v15 + 24) = 0xEF66666F6C6C6146;
  *(v15 + 32) = v13;
  *(v15 + 40) = v1;
  *(v15 + 48) = 8;
  *(v15 + 56) = 0;
  *(v15 + 58) = 0;
  *(v15 + 184) = 0;
  *(v15 + 188) = 0;
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
    v16 = v1;
  }

  v17 = swift_conformsToProtocol2();
  if (v17 && v16)
  {
    *(v15 + 160) = (*(v17 + 8))(v16, v17);
  }

  *(v15 + 64) = sub_1AF5A98B4;
  *(v15 + 72) = v13;
  sub_1AF0FB8EC(0, 0);
  *(v15 + 168) = 0;
  *(v15 + 176) = 0;

  *(v15 + 216) = 0;
  *(v39 + 48) = v15;
  v18 = swift_getKeyPath();
  v19 = swift_allocObject();
  v19[4] = sub_1AF5A94CC;
  v19[5] = v18;
  v19[2] = sub_1AF5A9E18;
  v19[3] = v18;
  v19[6] = v18;
  v20 = swift_allocObject();
  *(v20 + 112) = 1;
  *(v20 + 128) = 0;
  *(v20 + 136) = 0;
  *(v20 + 120) = 0;
  *(v20 + 160) = v4;
  *(v20 + 168) = 0;
  *(v20 + 216) = 0;
  *(v20 + 176) = 0;
  *(v20 + 16) = 0x6C676E4177656976;
  *(v20 + 24) = 0xE900000000000065;
  *(v20 + 32) = v18;
  *(v20 + 40) = v1;
  *(v20 + 48) = 12;
  *(v20 + 56) = 0;
  *(v20 + 58) = 0;
  *(v20 + 184) = 0;
  *(v20 + 188) = 0;
  *(v20 + 192) = 1135869952;
  *(v20 + 196) = 0;
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
    v21 = v1;
  }

  v22 = swift_conformsToProtocol2();
  if (v22 && v21)
  {
    *(v20 + 160) = (*(v22 + 8))(v21, v22);
  }

  *(v20 + 64) = sub_1AF5A98B4;
  *(v20 + 72) = v18;
  sub_1AF0FB8EC(0, 0);
  *(v20 + 168) = 0;
  *(v20 + 176) = 0;

  *(v20 + 216) = 0;
  *(v39 + 56) = v20;
  v23 = swift_getKeyPath();
  v24 = swift_allocObject();
  v24[4] = sub_1AF5A94CC;
  v24[5] = v23;
  v24[2] = sub_1AF5A9E18;
  v24[3] = v23;
  v24[6] = v23;
  v25 = swift_allocObject();
  *(v25 + 112) = 1;
  *(v25 + 128) = 0;
  *(v25 + 136) = 0;
  *(v25 + 120) = 0;
  *(v25 + 160) = v4;
  *(v25 + 168) = 0;
  *(v25 + 216) = 0;
  *(v25 + 176) = 0;
  *(v25 + 16) = 0xD000000000000010;
  *(v25 + 24) = 0x80000001AFF241B0;
  *(v25 + 32) = v23;
  *(v25 + 40) = v1;
  *(v25 + 48) = 16;
  *(v25 + 56) = 0;
  *(v25 + 58) = 0;
  *(v25 + 184) = 0;
  *(v25 + 188) = 0;
  *(v25 + 192) = 1127481344;
  *(v25 + 196) = 0;
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
    v26 = v1;
  }

  v27 = swift_conformsToProtocol2();
  if (v27 && v26)
  {
    *(v25 + 160) = (*(v27 + 8))(v26, v27);
  }

  *(v25 + 64) = sub_1AF5A98B4;
  *(v25 + 72) = v23;
  sub_1AF0FB8EC(0, 0);
  *(v25 + 168) = 0;
  *(v25 + 176) = 0;

  *(v25 + 216) = 0;
  *(v39 + 64) = v25;
  v28 = swift_getKeyPath();
  v29 = swift_allocObject();
  v29[4] = sub_1AF5A94CC;
  v29[5] = v28;
  v29[2] = sub_1AF5A9E18;
  v29[3] = v28;
  v29[6] = v28;
  v30 = swift_allocObject();
  *(v30 + 112) = 1;
  *(v30 + 128) = 0;
  *(v30 + 136) = 0;
  *(v30 + 120) = 0;
  *(v30 + 160) = v4;
  *(v30 + 168) = 0;
  *(v30 + 216) = 0;
  *(v30 + 176) = 0;
  *(v30 + 16) = 0x6556746F5278616DLL;
  *(v30 + 24) = 0xE90000000000006CLL;
  *(v30 + 32) = v28;
  *(v30 + 40) = v1;
  *(v30 + 48) = 20;
  *(v30 + 56) = 0;
  *(v30 + 58) = 0;
  *(v30 + 184) = 0;
  *(v30 + 188) = 0;
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
    v1 = (*(v5 + 8))();
  }

  v31 = swift_conformsToProtocol2();
  if (v31 && v1)
  {
    *(v30 + 160) = (*(v31 + 8))(v1, v31);
  }

  *(v30 + 64) = sub_1AF5A98B4;
  *(v30 + 72) = v28;
  sub_1AF0FB8EC(0, 0);
  *(v30 + 168) = 0;
  *(v30 + 176) = 0;

  *(v30 + 216) = 0;
  *(v39 + 72) = v30;
  v32 = swift_getKeyPath();
  v33 = MEMORY[0x1E69E6370];
  sub_1AF5A9240(0, &qword_1ED722B80, MEMORY[0x1E69E6370], type metadata accessor for EntityGetSet);
  v34 = swift_allocObject();
  v34[4] = sub_1AF596E1C;
  v34[5] = v32;
  v34[2] = sub_1AF596E48;
  v34[3] = v32;
  v34[6] = v32;
  v35 = swift_allocObject();
  *(v35 + 112) = 1;
  *(v35 + 128) = 0;
  *(v35 + 136) = 0;
  *(v35 + 120) = 0;
  *(v35 + 160) = v4;
  *(v35 + 168) = 0;
  *(v35 + 216) = 0;
  *(v35 + 176) = 0;
  *(v35 + 16) = 0x61657241776F6873;
  *(v35 + 24) = 0xE800000000000000;
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
    v33 = (*(v36 + 8))();
  }

  v37 = swift_conformsToProtocol2();
  if (v37 && v33)
  {
    *(v35 + 160) = (*(v37 + 8))(v33, v37);
  }

  *(v35 + 64) = sub_1AF596EA4;
  *(v35 + 72) = v32;
  sub_1AF0FB8EC(0, 0);
  *(v35 + 168) = 0;
  *(v35 + 176) = 0;

  *(v35 + 216) = 0;
  *(v39 + 80) = v35;
  qword_1EB6C2F98 = v39;
  return result;
}

uint64_t sub_1AF4E9540()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE55110;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF596FA4;
  v3[5] = KeyPath;
  v3[2] = sub_1AF596FD8;
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
  *(v4 + 16) = 0x636E65756C666E69;
  *(v4 + 24) = 0xE900000000000065;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = v2;
  *(v4 + 48) = 8;
  *(v4 + 56) = 0;
  *(v4 + 58) = 0;
  *(v4 + 184) = 0;
  *(v4 + 188) = 0;
  *(v4 + 192) = 1065353216;
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
  *(v4 + 64) = sub_1AF597034;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(v8, v9);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;

  *(v0 + 32) = v4;
  v10 = swift_getKeyPath();
  v11 = swift_allocObject();
  v11[4] = sub_1AF5A94D0;
  v11[5] = v10;
  v11[2] = sub_1AF5A9E20;
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
  strcpy((v12 + 16), "viewDistance");
  *(v12 + 29) = 0;
  *(v12 + 30) = -5120;
  *(v12 + 32) = v10;
  *(v12 + 40) = v2;
  *(v12 + 48) = 12;
  *(v12 + 56) = 0;
  *(v12 + 58) = 0;
  *(v12 + 184) = 0;
  *(v12 + 188) = 0;
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
  *(v12 + 64) = sub_1AF5A98B8;
  *(v12 + 72) = v10;
  sub_1AF0FB8EC(v15, v16);
  *(v12 + 168) = 0;
  *(v12 + 176) = 0;

  *(v12 + 216) = 0;

  *(v0 + 40) = v12;
  v17 = swift_getKeyPath();
  v18 = swift_allocObject();
  v18[4] = sub_1AF5A94D0;
  v18[5] = v17;
  v18[2] = sub_1AF5A9E20;
  v18[3] = v17;
  v18[6] = v17;
  v19 = swift_allocObject();
  *(v19 + 112) = 1;
  *(v19 + 128) = 0;
  *(v19 + 136) = 0;
  *(v19 + 120) = 0;
  *(v19 + 160) = MEMORY[0x1E69E7CC0];
  *(v19 + 168) = 0;
  *(v19 + 210) = 0;
  *(v19 + 216) = 0;
  *(v19 + 176) = 0;
  *(v19 + 16) = 0x6C676E4177656976;
  *(v19 + 24) = 0xE900000000000065;
  *(v19 + 32) = v17;
  *(v19 + 40) = v2;
  *(v19 + 48) = 16;
  *(v19 + 56) = 0;
  *(v19 + 58) = 0;
  *(v19 + 184) = 0;
  *(v19 + 188) = 0;
  *(v19 + 192) = 1135869952;
  *(v19 + 196) = 0;
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
  if (v21 && v20)
  {
    *(v19 + 160) = (*(v21 + 8))(v20, v21);
  }

  v22 = *(v19 + 64);
  v23 = *(v19 + 72);
  *(v19 + 64) = sub_1AF5A98B8;
  *(v19 + 72) = v17;
  sub_1AF0FB8EC(v22, v23);
  *(v19 + 168) = 0;
  *(v19 + 176) = 0;

  *(v19 + 216) = 0;

  *(v0 + 48) = v19;
  v24 = swift_getKeyPath();
  v25 = swift_allocObject();
  v25[4] = sub_1AF5A94D0;
  v25[5] = v24;
  v25[2] = sub_1AF5A9E20;
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
  *(v26 + 16) = 0xD000000000000010;
  *(v26 + 24) = 0x80000001AFF241B0;
  *(v26 + 32) = v24;
  *(v26 + 40) = v2;
  *(v26 + 48) = 20;
  *(v26 + 56) = 0;
  *(v26 + 58) = 0;
  *(v26 + 184) = 0;
  *(v26 + 188) = 0;
  *(v26 + 192) = 1127481344;
  *(v26 + 196) = 0;
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
  if (v5)
  {
    v2 = (*(v5 + 8))();
  }

  v27 = swift_conformsToProtocol2();
  if (v27 && v2)
  {
    *(v26 + 160) = (*(v27 + 8))(v2, v27);
  }

  v28 = *(v26 + 64);
  v29 = *(v26 + 72);
  *(v26 + 64) = sub_1AF5A98B8;
  *(v26 + 72) = v24;
  sub_1AF0FB8EC(v28, v29);
  *(v26 + 168) = 0;
  *(v26 + 176) = 0;

  *(v26 + 216) = 0;

  *(v0 + 56) = v26;
  v30 = swift_getKeyPath();
  v31 = MEMORY[0x1E69E6530];
  sub_1AF5A9240(0, &qword_1ED722B68, MEMORY[0x1E69E6530], type metadata accessor for EntityGetSet);
  v32 = swift_allocObject();
  v32[4] = sub_1AF597074;
  v32[5] = v30;
  v32[2] = sub_1AF5970A8;
  v32[3] = v30;
  v32[6] = v30;
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
  *(v33 + 16) = 0xD000000000000010;
  *(v33 + 24) = 0x80000001AFF241D0;
  *(v33 + 32) = v30;
  *(v33 + 40) = v31;
  *(v33 + 48) = 24;
  *(v33 + 56) = 0;
  *(v33 + 58) = 0;
  *(v33 + 184) = 0x40000000;
  *(v33 + 188) = 0;
  *(v33 + 192) = 1098907648;
  *(v33 + 196) = 0;
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
  *(v33 + 64) = sub_1AF597104;
  *(v33 + 72) = v30;
  sub_1AF0FB8EC(v36, v37);
  *(v33 + 168) = 0;
  *(v33 + 176) = 0;

  *(v33 + 216) = 0;

  *(v0 + 64) = v33;
  v38 = swift_getKeyPath();
  v39 = swift_getKeyPath();
  v40 = MEMORY[0x1E69E7360];
  sub_1AF5A9240(0, &unk_1EB634340, MEMORY[0x1E69E7360], type metadata accessor for EntityGetSet);
  v41 = swift_allocObject();
  v41[4] = sub_1AF5AA3A8;
  v41[5] = v39;
  v41[2] = sub_1AF597144;
  v41[3] = v39;
  v41[6] = v39;
  v42 = swift_allocObject();
  *(v42 + 112) = 1;
  *(v42 + 128) = 0;
  *(v42 + 136) = 0;
  *(v42 + 120) = 0;
  *(v42 + 160) = MEMORY[0x1E69E7CC0];
  *(v42 + 168) = 0;
  *(v42 + 210) = 0;
  *(v42 + 216) = 0;
  *(v42 + 176) = 0;
  strcpy((v42 + 16), "sizeModeIndex");
  *(v42 + 30) = -4864;
  *(v42 + 32) = v39;
  *(v42 + 40) = v40;
  *(v42 + 48) = 0;
  *(v42 + 56) = 1;
  *(v42 + 58) = 0;
  *(v42 + 184) = 0;
  *(v42 + 188) = 1;
  *(v42 + 192) = 0;
  *(v42 + 196) = 1;
  *(v42 + 200) = 0x1000100000000;
  *(v42 + 208) = 1;
  *(v42 + 64) = 0;
  *(v42 + 72) = 0;
  *(v42 + 96) = 0;
  *(v42 + 104) = 0;
  *(v42 + 144) = xmmword_1AFE22A20;
  *(v42 + 80) = v41;
  *(v42 + 88) = &off_1F2535378;
  *(v42 + 210) = 0;
  v43 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v43)
  {
    v40 = (*(v43 + 8))();
  }

  v44 = swift_conformsToProtocol2();
  if (v44 && v40)
  {
    *(v42 + 160) = (*(v44 + 8))(v40, v44);
  }

  v45 = *(v42 + 64);
  v46 = *(v42 + 72);
  *(v42 + 64) = sub_1AF5971A0;
  *(v42 + 72) = v39;
  sub_1AF0FB8EC(v45, v46);
  *(v42 + 168) = 0;
  *(v42 + 176) = 0;

  *(v42 + 216) = 0;

  v47 = &type metadata for FlockingSizeMode;
  sub_1AF5A9240(0, &qword_1EB63B0D0, &type metadata for FlockingSizeMode, type metadata accessor for EntityGetSet);
  v48 = swift_allocObject();
  v48[4] = sub_1AF5971E0;
  v48[5] = v38;
  v48[2] = sub_1AF59720C;
  v48[3] = v38;
  v48[6] = v38;
  v49 = swift_allocObject();
  *(v49 + 112) = 1;
  *(v49 + 128) = 0;
  *(v49 + 136) = 0;
  *(v49 + 120) = 0;
  *(v49 + 160) = MEMORY[0x1E69E7CC0];
  *(v49 + 168) = 0;
  *(v49 + 210) = 0;
  *(v49 + 216) = 0;
  *(v49 + 176) = 0;
  *(v49 + 16) = 0x65646F4D657A6973;
  *(v49 + 24) = 0xE800000000000000;
  *(v49 + 32) = v38;
  *(v49 + 40) = &type metadata for FlockingSizeMode;
  *(v49 + 48) = 32;
  *(v49 + 56) = 0;
  *(v49 + 58) = 0;
  *(v49 + 184) = 0;
  *(v49 + 188) = 1;
  *(v49 + 192) = 0;
  *(v49 + 196) = 1;
  *(v49 + 200) = 0x1000100000000;
  *(v49 + 208) = 1;
  *(v49 + 64) = 0;
  *(v49 + 72) = 0;
  *(v49 + 96) = 0;
  *(v49 + 104) = 0;
  *(v49 + 144) = xmmword_1AFE22A20;
  *(v49 + 80) = v48;
  *(v49 + 88) = &off_1F2535378;
  *(v49 + 210) = 0;
  v50 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v50)
  {
    v47 = (*(v50 + 8))();
  }

  v51 = swift_conformsToProtocol2();
  if (v51 && v47)
  {
    *(v49 + 160) = (*(v51 + 8))(v47, v51);
  }

  v52 = *(v49 + 64);
  v53 = *(v49 + 72);
  *(v49 + 64) = sub_1AF597268;
  *(v49 + 72) = v38;
  sub_1AF0FB8EC(v52, v53);
  *(v49 + 168) = 0;
  *(v49 + 176) = 0;

  *(v49 + 216) = v42;

  v123 = v0;
  *(v0 + 72) = v49;
  v54 = swift_getKeyPath();
  sub_1AF5795B0(0);
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_1AFE431C0;
  *(v55 + 32) = 0;
  *(v55 + 40) = 0xE000000000000000;
  v56 = MEMORY[0x1E69E6448];
  sub_1AF583D60(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
  v58 = v57;
  *(v55 + 72) = v57;
  v59 = swift_allocObject();
  *(v55 + 48) = v59;
  *(v59 + 16) = xmmword_1AFE208C0;
  sub_1AF51B13C(0, &qword_1EB63B0D8, sub_1AF5972FC, type metadata accessor for EntityGetSet);
  v60 = swift_allocObject();
  v60[4] = sub_1AF5972A8;
  v60[5] = v54;
  v60[2] = sub_1AF5972C0;
  v60[3] = v54;
  v60[6] = v54;
  v61 = swift_allocObject();
  *(v61 + 104) = 0;
  *(v61 + 112) = 1;
  *(v61 + 128) = 0;
  *(v61 + 136) = 0;
  *(v61 + 120) = 0;
  *(v61 + 160) = MEMORY[0x1E69E7CC0];
  *(v61 + 210) = 0;
  *(v61 + 216) = 0;
  sub_1AF5972FC(0);
  *(v61 + 168) = 0;
  *(v61 + 176) = 0;
  *(v61 + 16) = 0xD000000000000010;
  *(v61 + 24) = 0x80000001AFF241F0;
  *(v61 + 32) = v54;
  *(v61 + 40) = v62;
  *(v61 + 48) = 48;
  *(v61 + 56) = 0;
  *(v61 + 58) = 0;
  *(v61 + 184) = 0;
  *(v61 + 188) = 0;
  *(v61 + 192) = 0;
  *(v61 + 196) = 1;
  *(v61 + 200) = 0x1000100000000;
  *(v61 + 208) = 1;
  *(v61 + 64) = 0;
  *(v61 + 72) = 0;
  *(v61 + 96) = 0;
  *(v61 + 144) = xmmword_1AFE22A20;
  *(v61 + 80) = v60;
  *(v61 + 88) = &off_1F2535378;
  *(v61 + 210) = 0;
  v63 = *(v55 + 16);
  swift_retain_n();
  if (v63)
  {
    v64 = v123;
  }

  else
  {

    v65 = swift_conformsToProtocol2();
    v64 = v123;
    if (!v65 || !v58)
    {
      goto LABEL_45;
    }

    v55 = (*(v65 + 8))(v58, v65);
  }

  *(v61 + 160) = v55;

LABEL_45:
  v66 = *(v61 + 64);
  v67 = *(v61 + 72);
  *(v61 + 64) = sub_1AF59738C;
  *(v61 + 72) = v54;
  sub_1AF0FB8EC(v66, v67);
  *(v61 + 168) = 0;
  *(v61 + 176) = 0;

  *(v61 + 216) = 0;

  v64[10] = v61;
  v68 = swift_getKeyPath();
  v69 = swift_allocObject();
  v69[4] = sub_1AF5A94D0;
  v69[5] = v68;
  v69[2] = sub_1AF5A9E20;
  v69[3] = v68;
  v69[6] = v68;
  v70 = swift_allocObject();
  *(v70 + 112) = 1;
  *(v70 + 128) = 0;
  *(v70 + 136) = 0;
  *(v70 + 120) = 0;
  *(v70 + 168) = 0;
  *(v70 + 160) = MEMORY[0x1E69E7CC0];
  *(v70 + 210) = 0;
  *(v70 + 216) = 0;
  *(v70 + 176) = 0;
  *(v70 + 16) = 0x756C6F56646E696DLL;
  *(v70 + 24) = 0xEF6F69746152656DLL;
  *(v70 + 32) = v68;
  *(v70 + 40) = v56;
  *(v70 + 48) = 68;
  *(v70 + 56) = 0;
  *(v70 + 58) = 0;
  *(v70 + 184) = 0;
  *(v70 + 188) = 0;
  *(v70 + 192) = 1065353216;
  *(v70 + 196) = 0;
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
  swift_retain_n();
  if (v5)
  {
    v71 = (*(v5 + 8))();
  }

  else
  {
    v71 = v56;
  }

  v72 = swift_conformsToProtocol2();
  if (v72 && v71)
  {
    *(v70 + 160) = (*(v72 + 8))(v71, v72);
  }

  v73 = *(v70 + 64);
  v74 = *(v70 + 72);
  *(v70 + 64) = sub_1AF5A98B8;
  *(v70 + 72) = v68;
  sub_1AF0FB8EC(v73, v74);
  *(v70 + 168) = 0;
  *(v70 + 176) = 0;

  *(v70 + 216) = 0;

  v64[11] = v70;
  v75 = swift_getKeyPath();
  v76 = swift_allocObject();
  v76[4] = sub_1AF5A94D0;
  v76[5] = v75;
  v76[2] = sub_1AF5A9E20;
  v76[3] = v75;
  v76[6] = v75;
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
  *(v77 + 16) = 0x4464657269736564;
  *(v77 + 24) = 0xEF65636E61747369;
  *(v77 + 32) = v75;
  *(v77 + 40) = v56;
  *(v77 + 48) = 72;
  *(v77 + 56) = 0;
  *(v77 + 58) = 0;
  *(v77 + 184) = 0;
  *(v77 + 188) = 0;
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
  swift_retain_n();
  if (v5)
  {
    v78 = (*(v5 + 8))();
  }

  else
  {
    v78 = v56;
  }

  v79 = swift_conformsToProtocol2();
  if (v79 && v78)
  {
    *(v77 + 160) = (*(v79 + 8))(v78, v79);
  }

  v80 = *(v77 + 64);
  v81 = *(v77 + 72);
  *(v77 + 64) = sub_1AF5A98B8;
  *(v77 + 72) = v75;
  sub_1AF0FB8EC(v80, v81);
  *(v77 + 168) = 0;
  *(v77 + 176) = 0;

  *(v77 + 216) = 0;

  v64[12] = v77;
  v82 = swift_getKeyPath();
  v83 = swift_allocObject();
  v83[4] = sub_1AF5A94D0;
  v83[5] = v82;
  v83[2] = sub_1AF5A9E20;
  v83[3] = v82;
  v83[6] = v82;
  v84 = swift_allocObject();
  *(v84 + 112) = 1;
  *(v84 + 128) = 0;
  *(v84 + 136) = 0;
  *(v84 + 120) = 0;
  *(v84 + 160) = MEMORY[0x1E69E7CC0];
  *(v84 + 168) = 0;
  *(v84 + 216) = 0;
  *(v84 + 176) = 0;
  *(v84 + 16) = 0xD000000000000012;
  *(v84 + 24) = 0x80000001AFF24230;
  *(v84 + 32) = v82;
  *(v84 + 40) = v56;
  *(v84 + 48) = 76;
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
  swift_retain_n();
  if (v5)
  {
    v85 = (*(v5 + 8))();
  }

  else
  {
    v85 = v56;
  }

  v86 = swift_conformsToProtocol2();
  if (v86 && v85)
  {
    *(v84 + 160) = (*(v86 + 8))(v85, v86);
  }

  *(v84 + 64) = sub_1AF5A98B8;
  *(v84 + 72) = v82;
  sub_1AF0FB8EC(0, 0);
  *(v84 + 168) = 0;
  *(v84 + 176) = 0;

  *(v84 + 216) = 0;
  v64[13] = v84;
  v87 = swift_getKeyPath();
  v88 = swift_allocObject();
  v88[4] = sub_1AF5A94D0;
  v88[5] = v87;
  v88[2] = sub_1AF5A9E20;
  v88[3] = v87;
  v88[6] = v87;
  v89 = swift_allocObject();
  *(v89 + 112) = 1;
  *(v89 + 128) = 0;
  *(v89 + 136) = 0;
  *(v89 + 120) = 0;
  *(v89 + 160) = MEMORY[0x1E69E7CC0];
  *(v89 + 168) = 0;
  *(v89 + 216) = 0;
  *(v89 + 176) = 0;
  *(v89 + 16) = 0xD000000000000011;
  *(v89 + 24) = 0x80000001AFF24250;
  *(v89 + 32) = v87;
  *(v89 + 40) = v56;
  *(v89 + 48) = 80;
  *(v89 + 56) = 0;
  *(v89 + 58) = 0;
  *(v89 + 184) = 0;
  *(v89 + 188) = 0;
  *(v89 + 192) = 0;
  *(v89 + 196) = 1;
  *(v89 + 200) = 0x1000100000000;
  *(v89 + 208) = 1;
  *(v89 + 64) = 0;
  *(v89 + 72) = 0;
  *(v89 + 96) = 0;
  *(v89 + 104) = 0;
  *(v89 + 144) = xmmword_1AFE22A20;
  *(v89 + 80) = v88;
  *(v89 + 88) = &off_1F2535378;
  *(v89 + 210) = 0;
  swift_retain_n();
  if (v5)
  {
    v90 = (*(v5 + 8))();
  }

  else
  {
    v90 = v56;
  }

  v91 = swift_conformsToProtocol2();
  if (v91 && v90)
  {
    *(v89 + 160) = (*(v91 + 8))(v90, v91);
  }

  *(v89 + 64) = sub_1AF5A98B8;
  *(v89 + 72) = v87;
  sub_1AF0FB8EC(0, 0);
  *(v89 + 168) = 0;
  *(v89 + 176) = 0;

  *(v89 + 216) = 0;
  v64[14] = v89;
  v92 = swift_getKeyPath();
  v93 = swift_allocObject();
  v93[4] = sub_1AF5A94D0;
  v93[5] = v92;
  v93[2] = sub_1AF5A9E20;
  v93[3] = v92;
  v93[6] = v92;
  v94 = swift_allocObject();
  *(v94 + 112) = 1;
  *(v94 + 128) = 0;
  *(v94 + 136) = 0;
  *(v94 + 120) = 0;
  *(v94 + 160) = MEMORY[0x1E69E7CC0];
  *(v94 + 168) = 0;
  *(v94 + 216) = 0;
  *(v94 + 176) = 0;
  *(v94 + 16) = 0xD000000000000010;
  *(v94 + 24) = 0x80000001AFF24270;
  *(v94 + 32) = v92;
  *(v94 + 40) = v56;
  *(v94 + 48) = 84;
  *(v94 + 56) = 0;
  *(v94 + 58) = 0;
  *(v94 + 184) = 0;
  *(v94 + 188) = 0;
  *(v94 + 192) = 0;
  *(v94 + 196) = 1;
  *(v94 + 200) = 0x1000100000000;
  *(v94 + 208) = 1;
  *(v94 + 64) = 0;
  *(v94 + 72) = 0;
  *(v94 + 96) = 0;
  *(v94 + 104) = 0;
  *(v94 + 144) = xmmword_1AFE22A20;
  *(v94 + 80) = v93;
  *(v94 + 88) = &off_1F2535378;
  *(v94 + 210) = 0;
  swift_retain_n();
  if (v5)
  {
    v95 = (*(v5 + 8))();
  }

  else
  {
    v95 = v56;
  }

  v96 = swift_conformsToProtocol2();
  if (v96 && v95)
  {
    *(v94 + 160) = (*(v96 + 8))(v95, v96);
  }

  *(v94 + 64) = sub_1AF5A98B8;
  *(v94 + 72) = v92;
  sub_1AF0FB8EC(0, 0);
  *(v94 + 168) = 0;
  *(v94 + 176) = 0;

  *(v94 + 216) = 0;
  v64[15] = v94;
  v97 = swift_getKeyPath();
  v98 = swift_allocObject();
  v98[4] = sub_1AF5A94D0;
  v98[5] = v97;
  v98[2] = sub_1AF5A9E20;
  v98[3] = v97;
  v98[6] = v97;
  v99 = swift_allocObject();
  *(v99 + 112) = 1;
  *(v99 + 128) = 0;
  *(v99 + 136) = 0;
  *(v99 + 120) = 0;
  *(v99 + 160) = MEMORY[0x1E69E7CC0];
  *(v99 + 168) = 0;
  *(v99 + 216) = 0;
  *(v99 + 176) = 0;
  *(v99 + 16) = 0xD000000000000011;
  *(v99 + 24) = 0x80000001AFF24290;
  *(v99 + 32) = v97;
  *(v99 + 40) = v56;
  *(v99 + 48) = 88;
  *(v99 + 56) = 0;
  *(v99 + 58) = 0;
  *(v99 + 184) = 0;
  *(v99 + 188) = 0;
  *(v99 + 192) = 0;
  *(v99 + 196) = 1;
  *(v99 + 200) = 0x1000100000000;
  *(v99 + 208) = 1;
  *(v99 + 64) = 0;
  *(v99 + 72) = 0;
  *(v99 + 96) = 0;
  *(v99 + 104) = 0;
  *(v99 + 144) = xmmword_1AFE22A20;
  *(v99 + 80) = v98;
  *(v99 + 88) = &off_1F2535378;
  *(v99 + 210) = 0;
  swift_retain_n();
  if (v5)
  {
    v100 = (*(v5 + 8))();
  }

  else
  {
    v100 = v56;
  }

  v101 = swift_conformsToProtocol2();
  if (v101 && v100)
  {
    *(v99 + 160) = (*(v101 + 8))(v100, v101);
  }

  *(v99 + 64) = sub_1AF5A98B8;
  *(v99 + 72) = v97;
  sub_1AF0FB8EC(0, 0);
  *(v99 + 168) = 0;
  *(v99 + 176) = 0;

  *(v99 + 216) = 0;
  v64[16] = v99;
  v102 = swift_getKeyPath();
  v103 = swift_allocObject();
  v103[4] = sub_1AF5A94D0;
  v103[5] = v102;
  v103[2] = sub_1AF5A9E20;
  v103[3] = v102;
  v103[6] = v102;
  v104 = swift_allocObject();
  *(v104 + 112) = 1;
  *(v104 + 128) = 0;
  *(v104 + 136) = 0;
  *(v104 + 120) = 0;
  *(v104 + 160) = MEMORY[0x1E69E7CC0];
  *(v104 + 168) = 0;
  *(v104 + 216) = 0;
  *(v104 + 176) = 0;
  *(v104 + 16) = 0xD000000000000012;
  *(v104 + 24) = 0x80000001AFF242B0;
  *(v104 + 32) = v102;
  *(v104 + 40) = v56;
  *(v104 + 48) = 92;
  *(v104 + 56) = 0;
  *(v104 + 58) = 0;
  *(v104 + 184) = 981668463;
  *(v104 + 188) = 0;
  *(v104 + 192) = 0;
  *(v104 + 196) = 1;
  *(v104 + 200) = 0x1000100000000;
  *(v104 + 208) = 1;
  *(v104 + 64) = 0;
  *(v104 + 72) = 0;
  *(v104 + 96) = 0;
  *(v104 + 104) = 0;
  *(v104 + 144) = xmmword_1AFE22A20;
  *(v104 + 80) = v103;
  *(v104 + 88) = &off_1F2535378;
  *(v104 + 210) = 0;
  swift_retain_n();
  if (v5)
  {
    v56 = (*(v5 + 8))();
  }

  v105 = swift_conformsToProtocol2();
  if (v105 && v56)
  {
    *(v104 + 160) = (*(v105 + 8))(v56, v105);
  }

  *(v104 + 64) = sub_1AF5A98B8;
  *(v104 + 72) = v102;
  sub_1AF0FB8EC(0, 0);
  *(v104 + 168) = 0;
  *(v104 + 176) = 0;

  *(v104 + 216) = 0;
  v64[17] = v104;
  v106 = swift_getKeyPath();
  v107 = MEMORY[0x1E69E6370];
  sub_1AF5A9240(0, &qword_1ED722B80, MEMORY[0x1E69E6370], type metadata accessor for EntityGetSet);
  v108 = swift_allocObject();
  v108[4] = sub_1AF5973D8;
  v108[5] = v106;
  v108[2] = sub_1AF597404;
  v108[3] = v106;
  v108[6] = v106;
  v109 = swift_allocObject();
  *(v109 + 112) = 1;
  *(v109 + 128) = 0;
  *(v109 + 136) = 0;
  *(v109 + 120) = 0;
  *(v109 + 160) = MEMORY[0x1E69E7CC0];
  *(v109 + 168) = 0;
  *(v109 + 176) = 0;
  *(v109 + 216) = 0;
  *(v109 + 16) = 0x64697247776F6873;
  *(v109 + 24) = 0xE800000000000000;
  *(v109 + 32) = v106;
  *(v109 + 40) = v107;
  *(v109 + 48) = 96;
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
  v110 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v110)
  {
    v111 = (*(v110 + 8))();
  }

  else
  {
    v111 = v107;
  }

  v112 = swift_conformsToProtocol2();
  if (v112 && v111)
  {
    *(v109 + 160) = (*(v112 + 8))(v111, v112);
  }

  *(v109 + 64) = sub_1AF597460;
  *(v109 + 72) = v106;
  sub_1AF0FB8EC(0, 0);
  *(v109 + 168) = 0;
  *(v109 + 176) = 0;

  *(v109 + 216) = 0;
  v64[18] = v109;
  v113 = swift_getKeyPath();
  v114 = swift_allocObject();
  v114[4] = sub_1AF5AA1C4;
  v114[5] = v113;
  v114[2] = sub_1AF5A9E24;
  v114[3] = v113;
  v114[6] = v113;
  v115 = swift_allocObject();
  *(v115 + 112) = 1;
  *(v115 + 128) = 0;
  *(v115 + 136) = 0;
  *(v115 + 120) = 0;
  *(v115 + 160) = MEMORY[0x1E69E7CC0];
  *(v115 + 168) = 0;
  *(v115 + 176) = 0;
  *(v115 + 216) = 0;
  *(v115 + 16) = 0x6C6C6543776F6873;
  *(v115 + 24) = 0xE900000000000073;
  *(v115 + 32) = v113;
  *(v115 + 40) = v107;
  *(v115 + 48) = 97;
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
  swift_retain_n();
  if (v110)
  {
    v116 = (*(v110 + 8))();
  }

  else
  {
    v116 = v107;
  }

  v117 = swift_conformsToProtocol2();
  if (v117 && v116)
  {
    *(v115 + 160) = (*(v117 + 8))(v116, v117);
  }

  *(v115 + 64) = sub_1AF5A98BC;
  *(v115 + 72) = v113;
  sub_1AF0FB8EC(0, 0);
  *(v115 + 168) = 0;
  *(v115 + 176) = 0;

  *(v115 + 216) = 0;
  v64[19] = v115;
  v118 = swift_getKeyPath();
  v119 = swift_allocObject();
  v119[4] = sub_1AF5AA1C4;
  v119[5] = v118;
  v119[2] = sub_1AF5A9E24;
  v119[3] = v118;
  v119[6] = v118;
  v120 = swift_allocObject();
  *(v120 + 112) = 1;
  *(v120 + 128) = 0;
  *(v120 + 136) = 0;
  *(v120 + 120) = 0;
  *(v120 + 160) = MEMORY[0x1E69E7CC0];
  *(v120 + 168) = 0;
  *(v120 + 176) = 0;
  *(v120 + 216) = 0;
  *(v120 + 16) = 0x6F666E49676F6CLL;
  *(v120 + 24) = 0xE700000000000000;
  *(v120 + 32) = v118;
  *(v120 + 40) = v107;
  *(v120 + 48) = 98;
  *(v120 + 56) = 0;
  *(v120 + 58) = 0;
  *(v120 + 184) = 0;
  *(v120 + 188) = 1;
  *(v120 + 192) = 0;
  *(v120 + 196) = 1;
  *(v120 + 200) = 0x1000100000000;
  *(v120 + 208) = 1;
  *(v120 + 64) = 0;
  *(v120 + 72) = 0;
  *(v120 + 96) = 0;
  *(v120 + 104) = 0;
  *(v120 + 144) = xmmword_1AFE22A20;
  *(v120 + 80) = v119;
  *(v120 + 88) = &off_1F2535378;
  *(v120 + 210) = 0;
  swift_retain_n();
  if (v110)
  {
    v107 = (*(v110 + 8))();
  }

  v121 = swift_conformsToProtocol2();
  if (v121 && v107)
  {
    *(v120 + 160) = (*(v121 + 8))(v107, v121);
  }

  *(v120 + 64) = sub_1AF5A98BC;
  *(v120 + 72) = v118;
  sub_1AF0FB8EC(0, 0);
  *(v120 + 168) = 0;
  *(v120 + 176) = 0;

  *(v120 + 216) = 0;
  *(v123 + 160) = v120;
  qword_1EB6C2FA0 = v123;
  return result;
}

uint64_t sub_1AF4EB750(uint64_t result)
{
  v2 = result;
  if ((result & 0xFC) != 0)
  {
    v2 = 4;
  }

  *(v1 + 32) = v2;
  return result;
}

uint64_t sub_1AF4EB784()
{
  if (qword_1EB636F90 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1AF4EB874()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE55260;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF5977E8;
  v3[5] = KeyPath;
  v3[2] = sub_1AF59781C;
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
  *(v4 + 24) = 0x80000001AFF245A0;
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

  *(v4 + 64) = sub_1AF597878;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0, 0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  v9 = swift_getKeyPath();
  v10 = swift_allocObject();
  v10[4] = sub_1AF5A94D4;
  v10[5] = v9;
  v10[2] = sub_1AF5A9E34;
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
  strcpy((v11 + 16), "cruisingSpeed");
  *(v11 + 30) = -4864;
  *(v11 + 32) = v9;
  *(v11 + 40) = v2;
  *(v11 + 48) = 4;
  *(v11 + 56) = 0;
  *(v11 + 58) = 0;
  *(v11 + 184) = 0;
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
    v2 = (*(v6 + 8))();
  }

  v12 = swift_conformsToProtocol2();
  if (v12 && v2)
  {
    *(v11 + 160) = (*(v12 + 8))(v2, v12);
  }

  *(v11 + 64) = sub_1AF5A98C4;
  *(v11 + 72) = v9;
  sub_1AF0FB8EC(0, 0);
  *(v11 + 168) = 0;
  *(v11 + 176) = 0;

  *(v11 + 216) = 0;
  *(v0 + 40) = v11;
  v13 = swift_getKeyPath();
  sub_1AF57C8C8(0);
  v14 = swift_allocObject();
  v14[4] = sub_1AF5978B8;
  v14[5] = v13;
  v14[2] = sub_1AF5978EC;
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
  sub_1AF583D60(0, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
  v18 = v17;
  *(v15 + 168) = 0;
  *(v15 + 176) = 0;
  *(v15 + 16) = 0x657053706D616C63;
  *(v15 + 24) = 0xEA00000000006465;
  *(v15 + 32) = v13;
  *(v15 + 40) = v17;
  *(v15 + 48) = 8;
  *(v15 + 56) = 0;
  *(v15 + 58) = 0;
  *(v15 + 184) = 0;
  *(v15 + 188) = 0;
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
  *(v15 + 64) = sub_1AF597948;
  *(v15 + 72) = v13;
  sub_1AF0FB8EC(v21, v22);
  *(v15 + 168) = 0;
  *(v15 + 176) = 0;

  *(v15 + 216) = 0;

  *(v0 + 48) = v15;
  v23 = swift_getKeyPath();
  v24 = swift_allocObject();
  v24[4] = sub_1AF5A94D4;
  v24[5] = v23;
  v24[2] = sub_1AF5A9E34;
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
  *(v25 + 16) = 0x7244656C706D6973;
  *(v25 + 24) = 0xEF6563726F466761;
  *(v25 + 32) = v23;
  *(v25 + 40) = v16;
  *(v25 + 48) = 16;
  *(v25 + 56) = 0;
  *(v25 + 58) = 0;
  *(v25 + 184) = 0;
  *(v25 + 188) = 0;
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
    v26 = (*(v6 + 8))();
  }

  else
  {
    v26 = v16;
  }

  v27 = swift_conformsToProtocol2();
  if (v27 && v26)
  {
    *(v25 + 160) = (*(v27 + 8))(v26, v27);
  }

  *(v25 + 64) = sub_1AF5A98C4;
  *(v25 + 72) = v23;
  sub_1AF0FB8EC(0, 0);
  *(v25 + 168) = 0;
  *(v25 + 176) = 0;

  *(v25 + 216) = 0;
  *(v0 + 56) = v25;
  v28 = swift_getKeyPath();
  v29 = swift_allocObject();
  v29[4] = sub_1AF5A94D4;
  v29[5] = v28;
  v29[2] = sub_1AF5A9E34;
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
  *(v30 + 16) = 0xD000000000000012;
  *(v30 + 24) = 0x80000001AFF245E0;
  *(v30 + 32) = v28;
  *(v30 + 40) = v16;
  *(v30 + 48) = 20;
  *(v30 + 56) = 0;
  *(v30 + 58) = 0;
  *(v30 + 184) = 0;
  *(v30 + 188) = 0;
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
    v16 = (*(v6 + 8))();
  }

  v31 = swift_conformsToProtocol2();
  if (v31 && v16)
  {
    *(v30 + 160) = (*(v31 + 8))(v16, v31);
  }

  *(v30 + 64) = sub_1AF5A98C4;
  *(v30 + 72) = v28;
  sub_1AF0FB8EC(0, 0);
  *(v30 + 168) = 0;
  *(v30 + 176) = 0;

  *(v30 + 216) = 0;
  *(v0 + 64) = v30;
  v32 = swift_getKeyPath();
  v33 = swift_getKeyPath();
  v34 = MEMORY[0x1E69E7360];
  sub_1AF5A9240(0, &unk_1EB634340, MEMORY[0x1E69E7360], type metadata accessor for EntityGetSet);
  v35 = swift_allocObject();
  v35[4] = sub_1AF5978B8;
  v35[5] = v33;
  v35[2] = sub_1AF59798C;
  v35[3] = v33;
  v35[6] = v33;
  v36 = swift_allocObject();
  *(v36 + 112) = 1;
  *(v36 + 128) = 0;
  *(v36 + 136) = 0;
  *(v36 + 120) = 0;
  *(v36 + 160) = MEMORY[0x1E69E7CC0];
  *(v36 + 168) = 0;
  *(v36 + 216) = 0;
  *(v36 + 176) = 0;
  *(v36 + 16) = 0xD000000000000017;
  *(v36 + 24) = 0x80000001AFF2AF50;
  *(v36 + 32) = v33;
  *(v36 + 40) = v34;
  *(v36 + 48) = 0;
  *(v36 + 56) = 1;
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

  *(v36 + 64) = sub_1AF5979E8;
  *(v36 + 72) = v33;
  sub_1AF0FB8EC(0, 0);
  *(v36 + 168) = 0;
  *(v36 + 176) = 0;

  *(v36 + 216) = 0;
  v39 = &type metadata for FlockingLocalAxis;
  sub_1AF5A9240(0, &qword_1EB63B040, &type metadata for FlockingLocalAxis, type metadata accessor for EntityGetSet);
  v40 = swift_allocObject();
  v40[4] = sub_1AF597A28;
  v40[5] = v32;
  v40[2] = sub_1AF597A54;
  v40[3] = v32;
  v40[6] = v32;
  v41 = swift_allocObject();
  *(v41 + 112) = 1;
  *(v41 + 128) = 0;
  *(v41 + 136) = 0;
  *(v41 + 120) = 0;
  *(v41 + 160) = MEMORY[0x1E69E7CC0];
  *(v41 + 168) = 0;
  *(v41 + 216) = 0;
  *(v41 + 176) = 0;
  *(v41 + 16) = 0xD000000000000012;
  *(v41 + 24) = 0x80000001AFF24600;
  *(v41 + 32) = v32;
  *(v41 + 40) = &type metadata for FlockingLocalAxis;
  *(v41 + 48) = 24;
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
  v42 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v42)
  {
    v39 = (*(v42 + 8))();
  }

  v43 = swift_conformsToProtocol2();
  if (v43 && v39)
  {
    *(v41 + 160) = (*(v43 + 8))(v39, v43);
  }

  *(v41 + 64) = sub_1AF597AB0;
  *(v41 + 72) = v32;
  sub_1AF0FB8EC(0, 0);
  *(v41 + 168) = 0;
  *(v41 + 176) = 0;

  *(v41 + 216) = v36;
  *(v0 + 72) = v41;
  qword_1EB6C2FA8 = v0;
  return result;
}

uint64_t sub_1AF4EC65C(uint64_t result)
{
  v2 = result;
  if (result >= 6u)
  {
    v2 = 6;
  }

  *(v1 + 24) = v2;
  return result;
}

uint64_t sub_1AF4EC724()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE551A0;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6370];
  sub_1AF5A9240(0, &qword_1ED722B80, MEMORY[0x1E69E6370], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF597D2C;
  v3[5] = KeyPath;
  v3[2] = sub_1AF597D58;
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
  *(v4 + 16) = 1953066341;
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
  v6 = swift_conformsToProtocol2();
  swift_retain_n();
  v42 = v6;
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

  *(v4 + 64) = sub_1AF597DB4;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0, 0);
  *(v4 + 168) = 0xD000000000000040;
  *(v4 + 176) = 0x80000001AFF2AF90;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  v9 = swift_getKeyPath();
  v10 = &type metadata for Entity;
  sub_1AF5A9240(0, &unk_1EB6338D8, &type metadata for Entity, type metadata accessor for EntityGetSet);
  v11 = swift_allocObject();
  v11[4] = sub_1AF597DF4;
  v11[5] = v9;
  v11[2] = sub_1AF597E28;
  v11[3] = v9;
  v11[6] = v9;
  v12 = swift_allocObject();
  *(v12 + 112) = 1;
  *(v12 + 128) = 0;
  *(v12 + 136) = 0;
  *(v12 + 120) = 0;
  *(v12 + 216) = 0;
  *(v12 + 168) = 0;
  *(v12 + 176) = 0;
  *(v12 + 160) = v5;
  *(v12 + 16) = 0x656372756F73;
  *(v12 + 24) = 0xE600000000000000;
  *(v12 + 32) = v9;
  *(v12 + 40) = &type metadata for Entity;
  *(v12 + 48) = 4;
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
  *(v12 + 144) = xmmword_1AFE55230;
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

  *(v12 + 64) = sub_1AF597E84;
  *(v12 + 72) = v9;
  sub_1AF0FB8EC(0, 0);
  *(v12 + 168) = 0xD0000000000000B5;
  *(v12 + 176) = 0x80000001AFF2AFE0;

  *(v12 + 216) = 0;
  *(v0 + 40) = v12;
  v15 = swift_getKeyPath();
  v16 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v17 = swift_allocObject();
  v17[4] = sub_1AF597EC4;
  v17[5] = v15;
  v17[2] = sub_1AF597EF8;
  v17[3] = v15;
  v17[6] = v15;
  v18 = swift_allocObject();
  *(v18 + 112) = 1;
  *(v18 + 128) = 0;
  *(v18 + 136) = 0;
  *(v18 + 120) = 0;
  *(v18 + 216) = 0;
  *(v18 + 176) = 0;
  *(v18 + 160) = MEMORY[0x1E69E7CC0];
  *(v18 + 168) = 0;
  *(v18 + 16) = 0x737569646172;
  *(v18 + 24) = 0xE600000000000000;
  *(v18 + 32) = v15;
  *(v18 + 40) = v16;
  *(v18 + 48) = 12;
  *(v18 + 56) = 0;
  *(v18 + 58) = 0;
  *(v18 + 184) = 1008981770;
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

  *(v18 + 64) = sub_1AF597F54;
  *(v18 + 72) = v15;
  sub_1AF0FB8EC(0, 0);
  *(v18 + 168) = 0xD000000000000019;
  *(v18 + 176) = 0x80000001AFF2B0A0;

  *(v18 + 216) = 0;
  *(v0 + 48) = v18;
  v22 = swift_getKeyPath();
  v23 = swift_allocObject();
  v23[4] = sub_1AF5A94D8;
  v23[5] = v22;
  v23[2] = sub_1AF5A9E44;
  v23[3] = v22;
  v23[6] = v22;
  v24 = swift_allocObject();
  *(v24 + 112) = 1;
  *(v24 + 128) = 0;
  *(v24 + 136) = 0;
  *(v24 + 120) = 0;
  *(v24 + 216) = 0;
  *(v24 + 176) = 0;
  *(v24 + 160) = MEMORY[0x1E69E7CC0];
  *(v24 + 168) = 0;
  *(v24 + 16) = 0x797469736E6564;
  *(v24 + 24) = 0xE700000000000000;
  *(v24 + 32) = v22;
  *(v24 + 40) = v16;
  *(v24 + 48) = 16;
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
  swift_retain_n();
  if (v19)
  {
    v25 = (*(v19 + 8))();
  }

  else
  {
    v25 = v16;
  }

  v26 = swift_conformsToProtocol2();
  if (v26 && v25)
  {
    *(v24 + 160) = (*(v26 + 8))(v25, v26);
  }

  *(v24 + 64) = sub_1AF5A98C8;
  *(v24 + 72) = v22;
  sub_1AF0FB8EC(0, 0);
  *(v24 + 168) = 0xD000000000000030;
  *(v24 + 176) = 0x80000001AFF2B0C0;

  *(v24 + 216) = 0;
  *(v0 + 56) = v24;
  v27 = swift_getKeyPath();
  v28 = swift_allocObject();
  v28[4] = sub_1AF5A94D8;
  v28[5] = v27;
  v28[2] = sub_1AF5A9E44;
  v28[3] = v27;
  v28[6] = v27;
  v29 = swift_allocObject();
  *(v29 + 112) = 1;
  *(v29 + 128) = 0;
  *(v29 + 136) = 0;
  *(v29 + 120) = 0;
  *(v29 + 216) = 0;
  *(v29 + 176) = 0;
  v30 = MEMORY[0x1E69E7CC0];
  *(v29 + 160) = MEMORY[0x1E69E7CC0];
  *(v29 + 168) = 0;
  *(v29 + 16) = 0x797469636F6C6576;
  *(v29 + 24) = 0xE800000000000000;
  *(v29 + 32) = v27;
  *(v29 + 40) = v16;
  *(v29 + 48) = 20;
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
  swift_retain_n();
  if (v19)
  {
    v16 = (*(v19 + 8))();
  }

  v31 = swift_conformsToProtocol2();
  if (v31 && v16)
  {
    *(v29 + 160) = (*(v31 + 8))(v16, v31);
  }

  *(v29 + 64) = sub_1AF5A98C8;
  *(v29 + 72) = v27;
  sub_1AF0FB8EC(0, 0);
  *(v29 + 168) = 0xD0000000000000C6;
  *(v29 + 176) = 0x80000001AFF2B100;

  *(v29 + 216) = 0;
  *(v0 + 64) = v29;
  v32 = swift_getKeyPath();
  v33 = swift_allocObject();
  v33[4] = sub_1AF5AA1D0;
  v33[5] = v32;
  v33[2] = sub_1AF5A9E48;
  v33[3] = v32;
  v33[6] = v32;
  v34 = swift_allocObject();
  *(v34 + 112) = 1;
  *(v34 + 128) = 0;
  *(v34 + 136) = 0;
  *(v34 + 120) = 0;
  *(v34 + 216) = 0;
  *(v34 + 168) = 0;
  *(v34 + 176) = 0;
  *(v34 + 160) = v30;
  *(v34 + 16) = 0x74696D45776F6873;
  *(v34 + 24) = 0xEB00000000726574;
  *(v34 + 32) = v32;
  *(v34 + 40) = v2;
  *(v34 + 48) = 24;
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
  swift_retain_n();
  if (v42)
  {
    v35 = (*(v42 + 8))();
  }

  else
  {
    v35 = v2;
  }

  v36 = swift_conformsToProtocol2();
  if (v36 && v35)
  {
    *(v34 + 160) = (*(v36 + 8))(v35, v36);
  }

  *(v34 + 64) = sub_1AF5A98CC;
  *(v34 + 72) = v32;
  sub_1AF0FB8EC(0, 0);
  *(v34 + 168) = 0xD000000000000042;
  *(v34 + 176) = 0x80000001AFF2B1D0;

  *(v34 + 216) = 0;
  *(v0 + 72) = v34;
  v37 = swift_getKeyPath();
  v38 = swift_allocObject();
  v38[4] = sub_1AF5AA1D0;
  v38[5] = v37;
  v38[2] = sub_1AF5A9E48;
  v38[3] = v37;
  v38[6] = v37;
  v39 = swift_allocObject();
  *(v39 + 112) = 1;
  *(v39 + 128) = 0;
  *(v39 + 136) = 0;
  *(v39 + 120) = 0;
  *(v39 + 216) = 0;
  *(v39 + 168) = 0;
  *(v39 + 176) = 0;
  *(v39 + 160) = v30;
  strcpy((v39 + 16), "showVelocity");
  *(v39 + 29) = 0;
  *(v39 + 30) = -5120;
  *(v39 + 32) = v37;
  *(v39 + 40) = v2;
  *(v39 + 48) = 25;
  *(v39 + 56) = 0;
  *(v39 + 58) = 0;
  *(v39 + 184) = 0;
  *(v39 + 188) = 1;
  *(v39 + 192) = 0;
  *(v39 + 196) = 1;
  *(v39 + 200) = 0x1000100000000;
  *(v39 + 208) = 1;
  *(v39 + 64) = 0;
  *(v39 + 72) = 0;
  *(v39 + 96) = 0;
  *(v39 + 104) = 0;
  *(v39 + 144) = xmmword_1AFE22A20;
  *(v39 + 80) = v38;
  *(v39 + 88) = &off_1F2535378;
  *(v39 + 210) = 0;
  swift_retain_n();
  if (v42)
  {
    v2 = (*(v42 + 8))();
  }

  v40 = swift_conformsToProtocol2();
  if (v40 && v2)
  {
    *(v39 + 160) = (*(v40 + 8))(v2, v40);
  }

  *(v39 + 64) = sub_1AF5A98CC;
  *(v39 + 72) = v37;
  sub_1AF0FB8EC(0, 0);
  *(v39 + 168) = 0xD000000000000021;
  *(v39 + 176) = 0x80000001AFF2B220;

  *(v39 + 216) = 0;
  *(v0 + 80) = v39;
  qword_1EB6C2FB0 = v0;
  return result;
}

uint64_t sub_1AF4ED5C8()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE55110;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6370];
  sub_1AF5A9240(0, &qword_1ED722B80, MEMORY[0x1E69E6370], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF5980B4;
  v3[5] = KeyPath;
  v3[2] = sub_1AF5980E0;
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
  *(v4 + 16) = 0x766C6F5370657473;
  *(v4 + 24) = 0xEA00000000007265;
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
  v6 = swift_conformsToProtocol2();
  swift_retain_n();
  v138 = v6;
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
  *(v4 + 64) = sub_1AF59813C;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(v9, v10);
  *(v4 + 168) = 0xD00000000000002ELL;
  *(v4 + 176) = 0x80000001AFF2B270;

  *(v4 + 216) = 0;

  *(v0 + 32) = v4;
  v11 = swift_getKeyPath();
  v12 = swift_allocObject();
  v12[4] = sub_1AF5AA1D4;
  v12[5] = v11;
  v12[2] = sub_1AF5A9E50;
  v12[3] = v11;
  v12[6] = v11;
  v13 = swift_allocObject();
  *(v13 + 112) = 1;
  *(v13 + 128) = 0;
  *(v13 + 136) = 0;
  *(v13 + 120) = 0;
  *(v13 + 210) = 0;
  *(v13 + 216) = 0;
  *(v13 + 176) = 0;
  *(v13 + 160) = MEMORY[0x1E69E7CC0];
  *(v13 + 168) = 0;
  *(v13 + 16) = 0x6150746365766461;
  *(v13 + 24) = 0xEF73656C63697472;
  *(v13 + 32) = v11;
  *(v13 + 40) = v2;
  *(v13 + 48) = 9;
  *(v13 + 56) = 0;
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
  swift_retain_n();
  if (v6)
  {
    v14 = (*(v6 + 8))();
  }

  else
  {
    v14 = v2;
  }

  v15 = swift_conformsToProtocol2();
  if (v15 && v14)
  {
    *(v13 + 160) = (*(v15 + 8))(v14, v15);
  }

  v16 = *(v13 + 64);
  v17 = *(v13 + 72);
  *(v13 + 64) = sub_1AF5A98D0;
  *(v13 + 72) = v11;
  sub_1AF0FB8EC(v16, v17);
  *(v13 + 168) = 0xD00000000000005DLL;
  *(v13 + 176) = 0x80000001AFF2B2A0;

  *(v13 + 216) = 0;

  *(v0 + 40) = v13;
  v18 = swift_getKeyPath();
  v19 = swift_getKeyPath();
  v20 = MEMORY[0x1E69E7360];
  sub_1AF5A9240(0, &unk_1EB634340, MEMORY[0x1E69E7360], type metadata accessor for EntityGetSet);
  v21 = swift_allocObject();
  v21[4] = sub_1AF59817C;
  v21[5] = v19;
  v21[2] = sub_1AF5981B0;
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
  *(v22 + 16) = 0x646E497075746573;
  *(v22 + 24) = 0xEA00000000007865;
  *(v22 + 32) = v19;
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
  *(v22 + 64) = sub_1AF59820C;
  *(v22 + 72) = v19;
  sub_1AF0FB8EC(v26, v27);
  *(v22 + 168) = 0;
  *(v22 + 176) = 0;

  *(v22 + 216) = 0;

  v28 = &type metadata for FluidSolver2DSolverSetupType;
  sub_1AF5A9240(0, &qword_1EB63B170, &type metadata for FluidSolver2DSolverSetupType, type metadata accessor for EntityGetSet);
  v29 = swift_allocObject();
  v29[4] = sub_1AF59824C;
  v29[5] = v18;
  v29[2] = sub_1AF598278;
  v29[3] = v18;
  v29[6] = v18;
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
  *(v30 + 16) = 0x7075746573;
  *(v30 + 24) = 0xE500000000000000;
  *(v30 + 32) = v18;
  *(v30 + 40) = &type metadata for FluidSolver2DSolverSetupType;
  *(v30 + 48) = 10;
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

  v33 = *(v30 + 64);
  v34 = *(v30 + 72);
  *(v30 + 64) = sub_1AF5982D4;
  *(v30 + 72) = v18;
  sub_1AF0FB8EC(v33, v34);
  *(v30 + 168) = 0;
  *(v30 + 176) = 0;

  *(v30 + 216) = v22;

  *(v0 + 48) = v30;
  v35 = swift_getKeyPath();
  v36 = swift_getKeyPath();
  v37 = swift_allocObject();
  v37[4] = sub_1AF5AA3B4;
  v37[5] = v36;
  v37[2] = sub_1AF5A9E54;
  v37[3] = v36;
  v37[6] = v36;
  v38 = swift_allocObject();
  *(v38 + 112) = 1;
  *(v38 + 128) = 0;
  *(v38 + 136) = 0;
  *(v38 + 120) = 0;
  *(v38 + 160) = MEMORY[0x1E69E7CC0];
  *(v38 + 168) = 0;
  *(v38 + 210) = 0;
  *(v38 + 216) = 0;
  *(v38 + 176) = 0;
  *(v38 + 16) = 0x6E49726564726F62;
  *(v38 + 24) = 0xEB00000000786564;
  *(v38 + 32) = v36;
  *(v38 + 40) = v20;
  *(v38 + 48) = 0;
  *(v38 + 56) = 1;
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
  swift_retain_n();
  if (v23)
  {
    v20 = (*(v23 + 8))();
  }

  v39 = swift_conformsToProtocol2();
  if (v39 && v20)
  {
    *(v38 + 160) = (*(v39 + 8))(v20, v39);
  }

  v40 = *(v38 + 64);
  v41 = *(v38 + 72);
  *(v38 + 64) = sub_1AF5A98D4;
  *(v38 + 72) = v36;
  sub_1AF0FB8EC(v40, v41);
  *(v38 + 168) = 0;
  *(v38 + 176) = 0;

  *(v38 + 216) = 0;

  v42 = &type metadata for FluidSolver2DSolverBorderType;
  sub_1AF5A9240(0, &qword_1EB63B178, &type metadata for FluidSolver2DSolverBorderType, type metadata accessor for EntityGetSet);
  v43 = swift_allocObject();
  v43[4] = sub_1AF598314;
  v43[5] = v35;
  v43[2] = sub_1AF598340;
  v43[3] = v35;
  v43[6] = v35;
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
  *(v44 + 16) = 0x726564726F62;
  *(v44 + 24) = 0xE600000000000000;
  *(v44 + 32) = v35;
  *(v44 + 40) = &type metadata for FluidSolver2DSolverBorderType;
  *(v44 + 48) = 11;
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
  *(v44 + 64) = sub_1AF59839C;
  *(v44 + 72) = v35;
  sub_1AF0FB8EC(v47, v48);
  *(v44 + 168) = 0;
  *(v44 + 176) = 0;

  *(v44 + 216) = v38;

  *(v0 + 56) = v44;
  v49 = swift_getKeyPath();
  v50 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v51 = swift_allocObject();
  v51[4] = sub_1AF5983DC;
  v51[5] = v49;
  v51[2] = sub_1AF598410;
  v51[3] = v49;
  v51[6] = v49;
  v52 = swift_allocObject();
  *(v52 + 112) = 1;
  *(v52 + 128) = 0;
  *(v52 + 136) = 0;
  *(v52 + 120) = 0;
  *(v52 + 210) = 0;
  *(v52 + 216) = 0;
  *(v52 + 176) = 0;
  *(v52 + 160) = MEMORY[0x1E69E7CC0];
  *(v52 + 168) = 0;
  *(v52 + 16) = 0x636E65756C666E69;
  *(v52 + 24) = 0xE900000000000065;
  *(v52 + 32) = v49;
  *(v52 + 40) = v50;
  *(v52 + 48) = 12;
  *(v52 + 56) = 0;
  *(v52 + 58) = 0;
  *(v52 + 184) = 0;
  *(v52 + 188) = 0;
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
    v54 = (*(v53 + 8))();
  }

  else
  {
    v54 = v50;
  }

  v55 = swift_conformsToProtocol2();
  if (v55 && v54)
  {
    *(v52 + 160) = (*(v55 + 8))(v54, v55);
  }

  v56 = *(v52 + 64);
  v57 = *(v52 + 72);
  *(v52 + 64) = sub_1AF59846C;
  *(v52 + 72) = v49;
  sub_1AF0FB8EC(v56, v57);
  *(v52 + 168) = 0xD00000000000004CLL;
  *(v52 + 176) = 0x80000001AFF2B300;

  *(v52 + 216) = 0;

  *(v0 + 64) = v52;
  v58 = swift_getKeyPath();
  v59 = swift_allocObject();
  v59[4] = sub_1AF5A94DC;
  v59[5] = v58;
  v59[2] = sub_1AF5A9E58;
  v59[3] = v58;
  v59[6] = v58;
  v60 = swift_allocObject();
  *(v60 + 112) = 1;
  *(v60 + 128) = 0;
  *(v60 + 136) = 0;
  *(v60 + 120) = 0;
  *(v60 + 210) = 0;
  *(v60 + 216) = 0;
  *(v60 + 176) = 0;
  *(v60 + 160) = MEMORY[0x1E69E7CC0];
  *(v60 + 168) = 0;
  *(v60 + 16) = 0x70537265766C6F73;
  *(v60 + 24) = 0xEB00000000646565;
  *(v60 + 32) = v58;
  *(v60 + 40) = v50;
  *(v60 + 48) = 16;
  *(v60 + 56) = 0;
  *(v60 + 58) = 0;
  *(v60 + 184) = 0;
  *(v60 + 188) = 0;
  *(v60 + 192) = 1077936128;
  *(v60 + 196) = 0;
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
  if (v53)
  {
    v61 = (*(v53 + 8))();
  }

  else
  {
    v61 = v50;
  }

  v62 = swift_conformsToProtocol2();
  if (v62 && v61)
  {
    *(v60 + 160) = (*(v62 + 8))(v61, v62);
  }

  v63 = *(v60 + 64);
  v64 = *(v60 + 72);
  *(v60 + 64) = sub_1AF5A98D8;
  *(v60 + 72) = v58;
  sub_1AF0FB8EC(v63, v64);
  *(v60 + 168) = 0xD00000000000003DLL;
  *(v60 + 176) = 0x80000001AFF2B350;

  *(v60 + 216) = 0;

  *(v0 + 72) = v60;
  v65 = swift_getKeyPath();
  v66 = swift_allocObject();
  v66[4] = sub_1AF5A94DC;
  v66[5] = v65;
  v66[2] = sub_1AF5A9E58;
  v66[3] = v65;
  v66[6] = v65;
  v67 = swift_allocObject();
  *(v67 + 112) = 1;
  *(v67 + 128) = 0;
  *(v67 + 136) = 0;
  *(v67 + 120) = 0;
  *(v67 + 160) = MEMORY[0x1E69E7CC0];
  *(v67 + 168) = 0;
  *(v67 + 210) = 0;
  *(v67 + 216) = 0;
  *(v67 + 176) = 0;
  *(v67 + 16) = 0x66666F6C6C6166;
  *(v67 + 24) = 0xE700000000000000;
  *(v67 + 32) = v65;
  *(v67 + 40) = v50;
  *(v67 + 48) = 20;
  *(v67 + 56) = 0;
  *(v67 + 58) = 0;
  *(v67 + 184) = 0;
  *(v67 + 188) = 0;
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
  if (v53)
  {
    v50 = (*(v53 + 8))();
  }

  v68 = swift_conformsToProtocol2();
  if (v68 && v50)
  {
    *(v67 + 160) = (*(v68 + 8))(v50, v68);
  }

  v69 = *(v67 + 64);
  v70 = *(v67 + 72);
  *(v67 + 64) = sub_1AF5A98D8;
  *(v67 + 72) = v65;
  sub_1AF0FB8EC(v69, v70);
  *(v67 + 168) = 0;
  *(v67 + 176) = 0;

  *(v67 + 216) = 0;

  *(v0 + 80) = v67;
  v71 = swift_getKeyPath();
  sub_1AF57AAE8(0);
  v72 = swift_allocObject();
  v72[4] = sub_1AF5984AC;
  v72[5] = v71;
  v72[2] = sub_1AF5984C4;
  v72[3] = v71;
  v72[6] = v71;
  v73 = swift_allocObject();
  *(v73 + 104) = 0;
  *(v73 + 112) = 1;
  *(v73 + 128) = 0;
  *(v73 + 136) = 0;
  *(v73 + 120) = 0;
  *(v73 + 160) = MEMORY[0x1E69E7CC0];
  *(v73 + 210) = 0;
  *(v73 + 216) = 0;
  sub_1AF583D60(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
  v75 = v74;
  *(v73 + 168) = 0;
  *(v73 + 176) = 0;
  *(v73 + 16) = 0x746E65747865;
  *(v73 + 24) = 0xE600000000000000;
  *(v73 + 32) = v71;
  *(v73 + 40) = v74;
  *(v73 + 48) = 32;
  *(v73 + 56) = 0;
  *(v73 + 58) = 0;
  *(v73 + 184) = 1036831949;
  *(v73 + 188) = 0;
  *(v73 + 192) = 0;
  *(v73 + 196) = 1;
  *(v73 + 200) = 0x1000100000000;
  *(v73 + 208) = 1;
  *(v73 + 64) = 0;
  *(v73 + 72) = 0;
  *(v73 + 96) = 0;
  *(v73 + 144) = xmmword_1AFE22A20;
  *(v73 + 80) = v72;
  *(v73 + 88) = &off_1F2535378;
  *(v73 + 210) = 0;
  v76 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v76 && v75)
  {
    v75 = (*(v76 + 8))(v75, v76);
  }

  v77 = swift_conformsToProtocol2();
  if (v77 && v75)
  {
    *(v73 + 160) = (*(v77 + 8))(v75, v77);
  }

  v78 = *(v73 + 64);
  v79 = *(v73 + 72);
  *(v73 + 64) = sub_1AF598528;
  *(v73 + 72) = v71;
  sub_1AF0FB8EC(v78, v79);
  *(v73 + 168) = 0xD000000000000021;
  *(v73 + 176) = 0x80000001AFF2B390;

  *(v73 + 216) = 0;

  *(v0 + 88) = v73;
  v80 = swift_getKeyPath();
  v81 = swift_allocObject();
  v81[4] = sub_1AF5A94DC;
  v81[5] = v80;
  v81[2] = sub_1AF5A9E58;
  v81[3] = v80;
  v81[6] = v80;
  v82 = swift_allocObject();
  *(v82 + 112) = 1;
  *(v82 + 128) = 0;
  *(v82 + 136) = 0;
  *(v82 + 120) = 0;
  *(v82 + 210) = 0;
  *(v82 + 216) = 0;
  *(v82 + 176) = 0;
  *(v82 + 160) = MEMORY[0x1E69E7CC0];
  *(v82 + 168) = 0;
  *(v82 + 16) = 0x657A69536C6C6563;
  *(v82 + 24) = 0xE800000000000000;
  *(v82 + 32) = v80;
  v83 = MEMORY[0x1E69E6448];
  *(v82 + 40) = MEMORY[0x1E69E6448];
  *(v82 + 48) = 48;
  *(v82 + 56) = 0;
  *(v82 + 58) = 0;
  *(v82 + 184) = 1028443341;
  *(v82 + 188) = 0;
  *(v82 + 192) = 0;
  *(v82 + 196) = 1;
  *(v82 + 200) = 0x1000100000000;
  *(v82 + 208) = 1;
  *(v82 + 64) = 0;
  *(v82 + 72) = 0;
  *(v82 + 96) = 0;
  *(v82 + 104) = 0;
  *(v82 + 144) = xmmword_1AFE22A20;
  *(v82 + 80) = v81;
  *(v82 + 88) = &off_1F2535378;
  *(v82 + 210) = 0;
  swift_retain_n();
  if (v53)
  {
    v84 = (*(v53 + 8))();
  }

  else
  {
    v84 = v83;
  }

  v85 = swift_conformsToProtocol2();
  if (v85 && v84)
  {
    *(v82 + 160) = (*(v85 + 8))(v84, v85);
  }

  v86 = *(v82 + 64);
  v87 = *(v82 + 72);
  *(v82 + 64) = sub_1AF5A98D8;
  *(v82 + 72) = v80;
  sub_1AF0FB8EC(v86, v87);
  *(v82 + 168) = 0xD000000000000054;
  *(v82 + 176) = 0x80000001AFF2B3C0;

  *(v82 + 216) = 0;

  *(v0 + 96) = v82;
  v88 = swift_getKeyPath();
  v89 = swift_allocObject();
  v89[4] = sub_1AF5A94DC;
  v89[5] = v88;
  v89[2] = sub_1AF5A9E58;
  v89[3] = v88;
  v89[6] = v88;
  v90 = swift_allocObject();
  *(v90 + 112) = 1;
  *(v90 + 128) = 0;
  *(v90 + 136) = 0;
  *(v90 + 120) = 0;
  *(v90 + 216) = 0;
  *(v90 + 176) = 0;
  *(v90 + 160) = MEMORY[0x1E69E7CC0];
  *(v90 + 168) = 0;
  *(v90 + 16) = 0x7469736F63736976;
  *(v90 + 24) = 0xE900000000000079;
  *(v90 + 32) = v88;
  v91 = MEMORY[0x1E69E6448];
  *(v90 + 40) = MEMORY[0x1E69E6448];
  *(v90 + 48) = 52;
  *(v90 + 56) = 0;
  *(v90 + 58) = 0;
  *(v90 + 184) = 0;
  *(v90 + 188) = 0;
  *(v90 + 192) = 1065353216;
  *(v90 + 196) = 0;
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
  if (v53)
  {
    v92 = (*(v53 + 8))();
  }

  else
  {
    v92 = v91;
  }

  v93 = swift_conformsToProtocol2();
  if (v93 && v92)
  {
    *(v90 + 160) = (*(v93 + 8))(v92, v93);
  }

  *(v90 + 64) = sub_1AF5A98D8;
  *(v90 + 72) = v88;
  sub_1AF0FB8EC(0, 0);
  *(v90 + 168) = 0xD00000000000001ALL;
  *(v90 + 176) = 0x80000001AFF2B420;

  *(v90 + 216) = 0;
  *(v0 + 104) = v90;
  v94 = swift_getKeyPath();
  v95 = swift_allocObject();
  v95[4] = sub_1AF5A94DC;
  v95[5] = v94;
  v95[2] = sub_1AF5A9E58;
  v95[3] = v94;
  v95[6] = v94;
  v96 = swift_allocObject();
  *(v96 + 112) = 1;
  *(v96 + 128) = 0;
  *(v96 + 136) = 0;
  *(v96 + 120) = 0;
  *(v96 + 216) = 0;
  *(v96 + 176) = 0;
  *(v96 + 160) = MEMORY[0x1E69E7CC0];
  *(v96 + 168) = 0;
  *(v96 + 16) = 0x7469636974726F76;
  *(v96 + 24) = 0xE900000000000079;
  *(v96 + 32) = v94;
  v97 = MEMORY[0x1E69E6448];
  *(v96 + 40) = MEMORY[0x1E69E6448];
  *(v96 + 48) = 56;
  *(v96 + 56) = 0;
  *(v96 + 58) = 0;
  *(v96 + 184) = 0;
  *(v96 + 188) = 0;
  *(v96 + 192) = 1065353216;
  *(v96 + 196) = 0;
  *(v96 + 200) = 0x1000100000000;
  *(v96 + 208) = 1;
  *(v96 + 64) = 0;
  *(v96 + 72) = 0;
  *(v96 + 96) = 0;
  *(v96 + 104) = 0;
  *(v96 + 144) = xmmword_1AFE22A20;
  *(v96 + 80) = v95;
  *(v96 + 88) = &off_1F2535378;
  *(v96 + 210) = 0;
  swift_retain_n();
  if (v53)
  {
    v98 = (*(v53 + 8))();
  }

  else
  {
    v98 = v97;
  }

  v99 = swift_conformsToProtocol2();
  if (v99 && v98)
  {
    *(v96 + 160) = (*(v99 + 8))(v98, v99);
  }

  *(v96 + 64) = sub_1AF5A98D8;
  *(v96 + 72) = v94;
  sub_1AF0FB8EC(0, 0);
  *(v96 + 168) = 0xD000000000000021;
  *(v96 + 176) = 0x80000001AFF2B440;

  *(v96 + 216) = 0;
  *(v0 + 112) = v96;
  v100 = swift_getKeyPath();
  v101 = swift_allocObject();
  v101[4] = sub_1AF5A94DC;
  v101[5] = v100;
  v101[2] = sub_1AF5A9E58;
  v101[3] = v100;
  v101[6] = v100;
  v102 = swift_allocObject();
  *(v102 + 112) = 1;
  *(v102 + 128) = 0;
  *(v102 + 136) = 0;
  *(v102 + 120) = 0;
  *(v102 + 216) = 0;
  *(v102 + 176) = 0;
  *(v102 + 160) = MEMORY[0x1E69E7CC0];
  *(v102 + 168) = 0;
  *(v102 + 16) = 0x797469636F6C6576;
  *(v102 + 24) = 0xEF676E69706D6144;
  *(v102 + 32) = v100;
  v103 = MEMORY[0x1E69E6448];
  *(v102 + 40) = MEMORY[0x1E69E6448];
  *(v102 + 48) = 60;
  *(v102 + 56) = 0;
  *(v102 + 58) = 0;
  *(v102 + 184) = 0;
  *(v102 + 188) = 0;
  *(v102 + 192) = 1065353216;
  *(v102 + 196) = 0;
  *(v102 + 200) = 0x1000100000000;
  *(v102 + 208) = 1;
  *(v102 + 64) = 0;
  *(v102 + 72) = 0;
  *(v102 + 96) = 0;
  *(v102 + 104) = 0;
  *(v102 + 144) = xmmword_1AFE22A20;
  *(v102 + 80) = v101;
  *(v102 + 88) = &off_1F2535378;
  *(v102 + 210) = 0;
  swift_retain_n();
  if (v53)
  {
    v104 = (*(v53 + 8))();
  }

  else
  {
    v104 = v103;
  }

  v105 = MEMORY[0x1E69E6370];
  v106 = swift_conformsToProtocol2();
  if (v106 && v104)
  {
    *(v102 + 160) = (*(v106 + 8))(v104, v106);
  }

  *(v102 + 64) = sub_1AF5A98D8;
  *(v102 + 72) = v100;
  sub_1AF0FB8EC(0, 0);
  *(v102 + 168) = 0xD00000000000001CLL;
  *(v102 + 176) = 0x80000001AFF2B470;

  *(v102 + 216) = 0;
  *(v0 + 120) = v102;
  v107 = swift_getKeyPath();
  v108 = swift_allocObject();
  v108[4] = sub_1AF5AA1D4;
  v108[5] = v107;
  v108[2] = sub_1AF5A9E50;
  v108[3] = v107;
  v108[6] = v107;
  v109 = swift_allocObject();
  *(v109 + 112) = 1;
  *(v109 + 128) = 0;
  *(v109 + 136) = 0;
  *(v109 + 120) = 0;
  *(v109 + 216) = 0;
  *(v109 + 176) = 0;
  *(v109 + 160) = MEMORY[0x1E69E7CC0];
  *(v109 + 168) = 0;
  *(v109 + 16) = 0x64697247776F6873;
  *(v109 + 24) = 0xE900000000000073;
  *(v109 + 32) = v107;
  *(v109 + 40) = v105;
  *(v109 + 48) = 64;
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
  if (v138)
  {
    v110 = (*(v138 + 8))();
  }

  else
  {
    v110 = v105;
  }

  v111 = swift_conformsToProtocol2();
  if (v111 && v110)
  {
    *(v109 + 160) = (*(v111 + 8))(v110, v111);
  }

  *(v109 + 64) = sub_1AF5A98DC;
  *(v109 + 72) = v107;
  sub_1AF0FB8EC(0, 0);
  *(v109 + 168) = 0xD000000000000025;
  *(v109 + 176) = 0x80000001AFF2B490;

  *(v109 + 216) = 0;
  *(v0 + 128) = v109;
  v112 = swift_getKeyPath();
  v113 = swift_allocObject();
  v113[4] = sub_1AF5AA1D4;
  v113[5] = v112;
  v113[2] = sub_1AF5A9E50;
  v113[3] = v112;
  v113[6] = v112;
  v114 = swift_allocObject();
  *(v114 + 112) = 1;
  *(v114 + 128) = 0;
  *(v114 + 136) = 0;
  *(v114 + 120) = 0;
  *(v114 + 176) = 0;
  *(v114 + 160) = MEMORY[0x1E69E7CC0];
  *(v114 + 168) = 0;
  *(v114 + 216) = 0;
  strcpy((v114 + 16), "showVelocities");
  *(v114 + 31) = -18;
  *(v114 + 32) = v112;
  *(v114 + 40) = v105;
  *(v114 + 48) = 65;
  *(v114 + 56) = 0;
  *(v114 + 58) = 0;
  *(v114 + 184) = 0;
  *(v114 + 188) = 1;
  *(v114 + 192) = 0;
  *(v114 + 196) = 1;
  *(v114 + 200) = 0x1000100000000;
  *(v114 + 208) = 1;
  *(v114 + 64) = 0;
  *(v114 + 72) = 0;
  *(v114 + 96) = 0;
  *(v114 + 104) = 0;
  *(v114 + 144) = xmmword_1AFE22A20;
  *(v114 + 80) = v113;
  *(v114 + 88) = &off_1F2535378;
  *(v114 + 210) = 0;
  swift_retain_n();
  if (v138)
  {
    v115 = (*(v138 + 8))();
  }

  else
  {
    v115 = v105;
  }

  v116 = swift_conformsToProtocol2();
  if (v116 && v115)
  {
    *(v114 + 160) = (*(v116 + 8))(v115, v116);
  }

  *(v114 + 64) = sub_1AF5A98DC;
  *(v114 + 72) = v112;
  sub_1AF0FB8EC(0, 0);
  *(v114 + 168) = 0xD00000000000002FLL;
  *(v114 + 176) = 0x80000001AFF2B4C0;

  *(v114 + 216) = 0;
  *(v0 + 136) = v114;
  v117 = swift_getKeyPath();
  v118 = swift_allocObject();
  v118[4] = sub_1AF5AA1D4;
  v118[5] = v117;
  v118[2] = sub_1AF5A9E50;
  v118[3] = v117;
  v118[6] = v117;
  v119 = swift_allocObject();
  *(v119 + 112) = 1;
  *(v119 + 128) = 0;
  *(v119 + 136) = 0;
  *(v119 + 120) = 0;
  *(v119 + 176) = 0;
  *(v119 + 160) = MEMORY[0x1E69E7CC0];
  *(v119 + 168) = 0;
  *(v119 + 216) = 0;
  strcpy((v119 + 16), "showDensities");
  *(v119 + 30) = -4864;
  *(v119 + 32) = v117;
  *(v119 + 40) = v105;
  *(v119 + 48) = 66;
  *(v119 + 56) = 0;
  *(v119 + 58) = 0;
  *(v119 + 184) = 0;
  *(v119 + 188) = 1;
  *(v119 + 192) = 0;
  *(v119 + 196) = 1;
  *(v119 + 200) = 0x1000100000000;
  *(v119 + 208) = 1;
  *(v119 + 64) = 0;
  *(v119 + 72) = 0;
  *(v119 + 96) = 0;
  *(v119 + 104) = 0;
  *(v119 + 144) = xmmword_1AFE22A20;
  *(v119 + 80) = v118;
  *(v119 + 88) = &off_1F2535378;
  *(v119 + 210) = 0;
  swift_retain_n();
  if (v138)
  {
    v105 = (*(v138 + 8))();
  }

  v120 = swift_conformsToProtocol2();
  if (v120 && v105)
  {
    *(v119 + 160) = (*(v120 + 8))(v105, v120);
  }

  *(v119 + 64) = sub_1AF5A98DC;
  *(v119 + 72) = v117;
  sub_1AF0FB8EC(0, 0);
  *(v119 + 168) = 0xD00000000000002ELL;
  *(v119 + 176) = 0x80000001AFF2B4F0;

  *(v119 + 216) = 0;
  v139 = v0;
  *(v0 + 144) = v119;
  v121 = swift_getKeyPath();
  sub_1AF5795B0(0);
  v122 = swift_allocObject();
  *(v122 + 16) = xmmword_1AFE431C0;
  *(v122 + 32) = 0;
  *(v122 + 40) = 0xE000000000000000;
  v123 = MEMORY[0x1E69E6448];
  *(v122 + 72) = MEMORY[0x1E69E6448];
  *(v122 + 48) = 1065353216;
  sub_1AF5985E8(0);
  v124 = swift_allocObject();
  v124[4] = sub_1AF59856C;
  v124[5] = v121;
  v124[2] = sub_1AF5985A8;
  v124[3] = v121;
  v124[6] = v121;
  v125 = swift_allocObject();
  *(v125 + 104) = 0;
  *(v125 + 112) = 1;
  *(v125 + 128) = 0;
  *(v125 + 136) = 0;
  *(v125 + 120) = 0;
  *(v125 + 160) = MEMORY[0x1E69E7CC0];
  *(v125 + 168) = 0;
  *(v125 + 176) = 0;
  *(v125 + 216) = 0;
  sub_1AF5A9240(0, &qword_1EB63B188, v123, MEMORY[0x1E69E6720]);
  v127 = v126;
  *(v125 + 16) = 0xD000000000000010;
  *(v125 + 24) = 0x80000001AFF244C0;
  *(v125 + 32) = v121;
  *(v125 + 40) = v126;
  *(v125 + 48) = 68;
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
  *(v125 + 96) = 0;
  *(v125 + 144) = xmmword_1AFE22A20;
  *(v125 + 80) = v124;
  *(v125 + 88) = &off_1F2535378;
  *(v125 + 210) = 0;
  v128 = *(v122 + 16);
  swift_retain_n();
  if (v128)
  {
    v129 = v139;
  }

  else
  {

    v130 = swift_conformsToProtocol2();
    v129 = v139;
    if (!v130)
    {
      goto LABEL_103;
    }

    v122 = (*(v130 + 8))(MEMORY[0x1E69E6448], v130);
  }

  *(v125 + 160) = v122;

LABEL_103:
  *(v125 + 64) = sub_1AF598664;
  *(v125 + 72) = v121;
  sub_1AF0FB8EC(0, 0);
  *(v125 + 168) = 0;
  *(v125 + 176) = 0;

  *(v125 + 216) = 0;
  *(v129 + 152) = v125;
  v131 = swift_getKeyPath();
  v132 = swift_allocObject();
  *(v132 + 16) = xmmword_1AFE431C0;
  *(v132 + 32) = 0;
  *(v132 + 40) = 0xE000000000000000;
  *(v132 + 72) = MEMORY[0x1E69E6448];
  *(v132 + 48) = 1065353216;
  v133 = swift_allocObject();
  v133[4] = sub_1AF5A94E0;
  v133[5] = v131;
  v133[2] = sub_1AF5A98E0;
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
  *(v134 + 16) = 0x49797469736E6564;
  *(v134 + 24) = 0xEF65756C61566F73;
  *(v134 + 32) = v131;
  *(v134 + 40) = v127;
  *(v134 + 48) = 76;
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
  *(v134 + 96) = 0;
  *(v134 + 104) = 0;
  *(v134 + 144) = xmmword_1AFE22A20;
  *(v134 + 80) = v133;
  *(v134 + 88) = &off_1F2535378;
  *(v134 + 210) = 0;
  v135 = *(v132 + 16);
  swift_retain_n();
  if (v135)
  {
LABEL_106:
    *(v134 + 160) = v132;

    goto LABEL_107;
  }

  v136 = swift_conformsToProtocol2();
  if (v136)
  {
    v132 = (*(v136 + 8))(MEMORY[0x1E69E6448], v136);
    goto LABEL_106;
  }

LABEL_107:
  *(v134 + 64) = sub_1AF5A98E4;
  *(v134 + 72) = v131;
  sub_1AF0FB8EC(0, 0);
  *(v134 + 168) = 0;
  *(v134 + 176) = 0;

  *(v134 + 216) = 0;
  *(v139 + 160) = v134;
  qword_1EB6C2FB8 = v139;
  return result;
}

uint64_t sub_1AF4EFA74(uint64_t result)
{
  v2 = result;
  if (result >= 7u)
  {
    v2 = 7;
  }

  *(v1 + 11) = v2;
  return result;
}

uint64_t sub_1AF4EFAA8()
{
  if (qword_1EB636FA8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1AF4EFB98()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE550E0;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF598D28;
  v3[5] = KeyPath;
  v3[2] = sub_1AF598D6C;
  v3[3] = KeyPath;
  v3[6] = KeyPath;
  type metadata accessor for PropertyDescription();
  v4 = swift_allocObject();
  *(v4 + 112) = 1;
  *(v4 + 136) = 0;
  v5 = MEMORY[0x1E69E7CC0];
  *(v4 + 120) = 0;
  *(v4 + 128) = 0;
  *(v4 + 216) = 0;
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;
  *(v4 + 160) = v5;
  *(v4 + 16) = 1734439524;
  *(v4 + 24) = 0xE400000000000000;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = v2;
  *(v4 + 48) = 0;
  *(v4 + 56) = 0;
  *(v4 + 58) = 0;
  *(v4 + 184) = 0;
  *(v4 + 188) = 0;
  *(v4 + 192) = 1120403456;
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

  *(v4 + 64) = sub_1AF598DC8;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0, 0);
  *(v4 + 168) = 0xD000000000000029;
  *(v4 + 176) = 0x80000001AFF2B520;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  v8 = swift_getKeyPath();
  v9 = MEMORY[0x1E69E6370];
  sub_1AF5A9240(0, &qword_1ED722B80, MEMORY[0x1E69E6370], type metadata accessor for EntityGetSet);
  v10 = swift_allocObject();
  v10[4] = sub_1AF598E08;
  v10[5] = v8;
  v10[2] = sub_1AF598E44;
  v10[3] = v8;
  v10[6] = v8;
  v11 = swift_allocObject();
  *(v11 + 112) = 1;
  *(v11 + 128) = 0;
  *(v11 + 136) = 0;
  *(v11 + 120) = 0;
  *(v11 + 216) = 0;
  *(v11 + 176) = 0;
  *(v11 + 160) = MEMORY[0x1E69E7CC0];
  *(v11 + 168) = 0;
  *(v11 + 16) = 0xD000000000000010;
  *(v11 + 24) = 0x80000001AFF2B550;
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

  *(v11 + 64) = sub_1AF598EA0;
  *(v11 + 72) = v8;
  sub_1AF0FB8EC(0, 0);
  *(v11 + 168) = 0xD000000000000031;
  *(v11 + 176) = 0x80000001AFF2B570;

  *(v11 + 216) = 0;
  *(v0 + 40) = v11;
  qword_1EB6C2FC0 = v0;
  return result;
}

uint64_t sub_1AF4F00E4()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE550F0;
  KeyPath = swift_getKeyPath();
  v2 = &type metadata for Entity;
  sub_1AF5A9240(0, &unk_1EB6338D8, &type metadata for Entity, type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF598FA0;
  v3[5] = KeyPath;
  v3[2] = sub_1AF598FD4;
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
  strcpy((v4 + 16), "sourceEmitter");
  *(v4 + 30) = -4864;
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

  *(v4 + 64) = sub_1AF599030;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0, 0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  v7 = swift_getKeyPath();
  v8 = &type metadata for SourceDataKind;
  sub_1AF5A9240(0, &qword_1EB63B208, &type metadata for SourceDataKind, type metadata accessor for EntityGetSet);
  v9 = swift_allocObject();
  v9[4] = sub_1AF599070;
  v9[5] = v7;
  v9[2] = sub_1AF59909C;
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
  *(v10 + 16) = 0x6144656372756F73;
  *(v10 + 24) = 0xEA00000000006174;
  *(v10 + 32) = v7;
  *(v10 + 40) = &type metadata for SourceDataKind;
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

  *(v10 + 64) = sub_1AF5990F8;
  *(v10 + 72) = v7;
  sub_1AF0FB8EC(0, 0);
  *(v10 + 168) = 0;
  *(v10 + 176) = 0;

  *(v10 + 216) = 0;
  *(v0 + 40) = v10;
  v13 = swift_getKeyPath();
  v14 = &type metadata for TargetDataKind;
  sub_1AF5A9240(0, &qword_1EB63B210, &type metadata for TargetDataKind, type metadata accessor for EntityGetSet);
  v15 = swift_allocObject();
  v15[4] = sub_1AF599138;
  v15[5] = v13;
  v15[2] = sub_1AF599164;
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
  *(v16 + 16) = 0x6144746567726174;
  *(v16 + 24) = 0xEA00000000006174;
  *(v16 + 32) = v13;
  *(v16 + 40) = &type metadata for TargetDataKind;
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

  *(v16 + 64) = sub_1AF5991C0;
  *(v16 + 72) = v13;
  sub_1AF0FB8EC(0, 0);
  *(v16 + 168) = 0;
  *(v16 + 176) = 0;

  *(v16 + 216) = 0;
  *(v0 + 48) = v16;
  v19 = swift_getKeyPath();
  sub_1AF5795B0(0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1AFE431C0;
  *(v20 + 32) = 0;
  *(v20 + 40) = 0xE000000000000000;
  v21 = MEMORY[0x1E69E6530];
  *(v20 + 72) = MEMORY[0x1E69E6530];
  *(v20 + 48) = 1;
  sub_1AF57A3F8(0);
  v22 = swift_allocObject();
  v22[4] = sub_1AF599200;
  v22[5] = v19;
  v22[2] = sub_1AF599218;
  v22[3] = v19;
  v22[6] = v19;
  v23 = swift_allocObject();
  *(v23 + 104) = 0;
  *(v23 + 112) = 1;
  *(v23 + 128) = 0;
  *(v23 + 136) = 0;
  *(v23 + 120) = 0;
  *(v23 + 160) = MEMORY[0x1E69E7CC0];
  *(v23 + 216) = 0;
  sub_1AF5A9240(0, &unk_1ED72F970, v21, MEMORY[0x1E69E6720]);
  *(v23 + 168) = 0;
  *(v23 + 176) = 0;
  *(v23 + 16) = 0xD000000000000011;
  *(v23 + 24) = 0x80000001AFF234A0;
  *(v23 + 32) = v19;
  *(v23 + 40) = v24;
  *(v23 + 48) = 16;
  *(v23 + 56) = 0;
  *(v23 + 58) = 0;
  *(v23 + 184) = 1065353216;
  *(v23 + 188) = 0;
  *(v23 + 192) = 0;
  *(v23 + 196) = 1;
  *(v23 + 200) = 0x1000100000000;
  *(v23 + 208) = 1;
  *(v23 + 64) = 0;
  *(v23 + 72) = 0;
  *(v23 + 96) = 0;
  *(v23 + 144) = xmmword_1AFE22A20;
  *(v23 + 80) = v22;
  *(v23 + 88) = &off_1F2535378;
  *(v23 + 210) = 0;
  v25 = *(v20 + 16);
  swift_retain_n();
  if (!v25)
  {

    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1AFE431C0;
    *(v20 + 32) = 48;
    *(v20 + 40) = 0xE100000000000000;
    *(v20 + 72) = v21;
    *(v20 + 48) = 0;
  }

  *(v23 + 160) = v20;

  *(v23 + 64) = sub_1AF59927C;
  *(v23 + 72) = v19;
  sub_1AF0FB8EC(0, 0);
  *(v23 + 168) = 0;
  *(v23 + 176) = 0;

  *(v23 + 216) = 0;
  *(v0 + 56) = v23;
  qword_1EB6C2FC8 = v0;
  return result;
}

uint64_t sub_1AF4F0A30()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE551C0;
  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  v3 = MEMORY[0x1E69E7360];
  sub_1AF5A9240(0, &unk_1EB634340, MEMORY[0x1E69E7360], type metadata accessor for EntityGetSet);
  v4 = swift_allocObject();
  v4[4] = sub_1AF5AA3BC;
  v4[5] = v2;
  v4[2] = sub_1AF5995EC;
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

  *(v5 + 64) = sub_1AF599648;
  *(v5 + 72) = v2;
  sub_1AF0FB8EC(0, 0);
  *(v5 + 168) = 0;
  *(v5 + 176) = 0;

  *(v5 + 216) = 0;
  v9 = &type metadata for NoiseKind;
  sub_1AF5A9240(0, &qword_1EB632F60, &type metadata for NoiseKind, type metadata accessor for EntityGetSet);
  v10 = swift_allocObject();
  v10[4] = sub_1AF599688;
  v10[5] = KeyPath;
  v10[2] = sub_1AF5996B4;
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
  *(v11 + 16) = 1684957547;
  *(v11 + 24) = 0xE400000000000000;
  *(v11 + 32) = KeyPath;
  *(v11 + 40) = &type metadata for NoiseKind;
  *(v11 + 48) = 36;
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

  *(v11 + 64) = sub_1AF599710;
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
  v16[4] = sub_1AF599750;
  v16[5] = v14;
  v16[2] = sub_1AF599784;
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
  *(v17 + 16) = 0x7469736E65746E69;
  *(v17 + 24) = 0xE900000000000079;
  *(v17 + 32) = v14;
  *(v17 + 40) = v15;
  *(v17 + 48) = 32;
  *(v17 + 56) = 0;
  *(v17 + 58) = 0;
  *(v17 + 184) = 0;
  *(v17 + 188) = 0;
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

  *(v17 + 64) = sub_1AF5997E0;
  *(v17 + 72) = v14;
  sub_1AF0FB8EC(0, 0);
  *(v17 + 168) = 0;
  *(v17 + 176) = 0;

  *(v17 + 216) = 0;
  *(v0 + 40) = v17;
  v21 = swift_getKeyPath();
  v22 = swift_allocObject();
  v22[4] = sub_1AF5A94E8;
  v22[5] = v21;
  v22[2] = sub_1AF5A9E7C;
  v22[3] = v21;
  v22[6] = v21;
  v23 = swift_allocObject();
  *(v23 + 112) = 1;
  *(v23 + 128) = 0;
  *(v23 + 136) = 0;
  *(v23 + 120) = 0;
  v24 = MEMORY[0x1E69E7CC0];
  *(v23 + 160) = MEMORY[0x1E69E7CC0];
  *(v23 + 168) = 0;
  *(v23 + 216) = 0;
  *(v23 + 176) = 0;
  *(v23 + 16) = 0x656C616373;
  *(v23 + 24) = 0xE500000000000000;
  *(v23 + 32) = v21;
  *(v23 + 40) = v15;
  *(v23 + 48) = 0;
  *(v23 + 56) = 0;
  *(v23 + 58) = 0;
  *(v23 + 184) = 0;
  *(v23 + 188) = 0;
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
    v15 = (*(v18 + 8))();
  }

  v25 = swift_conformsToProtocol2();
  if (v25 && v15)
  {
    *(v23 + 160) = (*(v25 + 8))(v15, v25);
  }

  *(v23 + 64) = sub_1AF5A98F0;
  *(v23 + 72) = v21;
  sub_1AF0FB8EC(0, 0);
  *(v23 + 168) = 0;
  *(v23 + 176) = 0;

  *(v23 + 216) = 0;
  *(v0 + 48) = v23;
  v26 = swift_getKeyPath();
  v27 = MEMORY[0x1E69E6370];
  sub_1AF5A9240(0, &qword_1ED722B80, MEMORY[0x1E69E6370], type metadata accessor for EntityGetSet);
  v28 = swift_allocObject();
  v28[4] = sub_1AF599820;
  v28[5] = v26;
  v28[2] = sub_1AF59984C;
  v28[3] = v26;
  v28[6] = v26;
  v29 = swift_allocObject();
  *(v29 + 112) = 1;
  *(v29 + 128) = 0;
  *(v29 + 136) = 0;
  *(v29 + 120) = 0;
  *(v29 + 160) = v24;
  *(v29 + 168) = 0;
  *(v29 + 216) = 0;
  *(v29 + 176) = 0;
  *(v29 + 16) = 0x657A6974726F6D61;
  *(v29 + 24) = 0xE900000000000064;
  *(v29 + 32) = v26;
  *(v29 + 40) = v27;
  *(v29 + 48) = 48;
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

  *(v29 + 64) = sub_1AF5998A8;
  *(v29 + 72) = v26;
  sub_1AF0FB8EC(0, 0);
  *(v29 + 168) = 0;
  *(v29 + 176) = 0;

  *(v29 + 216) = 0;
  *(v0 + 56) = v29;
  v32 = swift_getKeyPath();
  v33 = MEMORY[0x1E69E6530];
  sub_1AF5A9240(0, &qword_1ED722B68, MEMORY[0x1E69E6530], type metadata accessor for EntityGetSet);
  v34 = swift_allocObject();
  v34[4] = sub_1AF5998E8;
  v34[5] = v32;
  v34[2] = sub_1AF59991C;
  v34[3] = v32;
  v34[6] = v32;
  v35 = swift_allocObject();
  *(v35 + 112) = 1;
  *(v35 + 128) = 0;
  *(v35 + 136) = 0;
  *(v35 + 120) = 0;
  *(v35 + 160) = v24;
  *(v35 + 168) = 0;
  *(v35 + 216) = 0;
  *(v35 + 176) = 0;
  *(v35 + 16) = 0x6F69736E656D6964;
  *(v35 + 24) = 0xEA0000000000736ELL;
  *(v35 + 32) = v32;
  *(v35 + 40) = v33;
  *(v35 + 48) = 40;
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

  *(v35 + 64) = sub_1AF599978;
  *(v35 + 72) = v32;
  sub_1AF0FB8EC(0, 0);
  *(v35 + 168) = 0;
  *(v35 + 176) = 0;

  *(v35 + 216) = 0;
  *(v0 + 64) = v35;
  qword_1EB6C2978 = v0;
  return result;
}

uint64_t sub_1AF4F1630(uint64_t result)
{
  v2 = result;
  if (result >= 3u)
  {
    v2 = 3;
  }

  *(v1 + 36) = v2;
  return result;
}

uint64_t sub_1AF4F16FC()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE55180;
  KeyPath = swift_getKeyPath();
  v2 = &type metadata for AngleF;
  sub_1AF5A9240(0, &qword_1EB63B280, &type metadata for AngleF, type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF599BC8;
  v3[5] = KeyPath;
  v3[2] = sub_1AF599BFC;
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
  *(v4 + 16) = 0x676E4172656E6E69;
  *(v4 + 24) = 0xEA0000000000656CLL;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = &type metadata for AngleF;
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
  *(v4 + 144) = xmmword_1AFE55150;
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
    v7 = &type metadata for AngleF;
  }

  v8 = swift_conformsToProtocol2();
  if (v8 && v7)
  {
    *(v4 + 160) = (*(v8 + 8))(v7, v8);
  }

  *(v4 + 64) = sub_1AF599C08;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0, 0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  v9 = swift_getKeyPath();
  v10 = swift_allocObject();
  v10[4] = sub_1AF5A94EC;
  v10[5] = v9;
  v10[2] = sub_1AF5A9E90;
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
  *(v11 + 16) = 0x676E41726574756FLL;
  *(v11 + 24) = 0xEA0000000000656CLL;
  *(v11 + 32) = v9;
  *(v11 + 40) = &type metadata for AngleF;
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
  *(v11 + 144) = xmmword_1AFE55150;
  *(v11 + 80) = v10;
  *(v11 + 88) = &off_1F2535378;
  *(v11 + 210) = 0;
  swift_retain_n();
  if (v6)
  {
    v2 = (*(v6 + 8))();
  }

  v12 = swift_conformsToProtocol2();
  if (v12 && v2)
  {
    *(v11 + 160) = (*(v12 + 8))(v2, v12);
  }

  *(v11 + 64) = sub_1AF5A98F4;
  *(v11 + 72) = v9;
  sub_1AF0FB8EC(0, 0);
  *(v11 + 168) = 0;
  *(v11 + 176) = 0;

  *(v11 + 216) = 0;
  *(v0 + 40) = v11;
  v13 = swift_getKeyPath();
  v14 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v15 = swift_allocObject();
  v15[4] = sub_1AF599BC8;
  v15[5] = v13;
  v15[2] = sub_1AF599C48;
  v15[3] = v13;
  v15[6] = v13;
  v16 = swift_allocObject();
  *(v16 + 112) = 1;
  *(v16 + 128) = 0;
  *(v16 + 136) = 0;
  *(v16 + 120) = 0;
  *(v16 + 168) = 0;
  *(v16 + 160) = MEMORY[0x1E69E7CC0];
  *(v16 + 216) = 0;
  *(v16 + 176) = 0;
  *(v16 + 16) = 0x6152746365707361;
  *(v16 + 24) = 0xEB000000006F6974;
  *(v16 + 32) = v13;
  *(v16 + 40) = v14;
  *(v16 + 48) = 8;
  *(v16 + 56) = 0;
  *(v16 + 58) = 0;
  *(v16 + 184) = 0;
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
    v18 = (*(v17 + 8))();
  }

  else
  {
    v18 = v14;
  }

  v19 = swift_conformsToProtocol2();
  if (v19 && v18)
  {
    *(v16 + 160) = (*(v19 + 8))(v18, v19);
  }

  *(v16 + 64) = sub_1AF599CA4;
  *(v16 + 72) = v13;
  sub_1AF0FB8EC(0, 0);
  *(v16 + 168) = 0;
  *(v16 + 176) = 0;

  *(v16 + 216) = 0;
  *(v0 + 48) = v16;
  v20 = swift_getKeyPath();
  v21 = MEMORY[0x1E69E6370];
  sub_1AF5A9240(0, &qword_1ED722B80, MEMORY[0x1E69E6370], type metadata accessor for EntityGetSet);
  v22 = swift_allocObject();
  v22[4] = sub_1AF599CE4;
  v22[5] = v20;
  v22[2] = sub_1AF599D10;
  v22[3] = v20;
  v22[6] = v20;
  v23 = swift_allocObject();
  *(v23 + 112) = 1;
  *(v23 + 128) = 0;
  *(v23 + 136) = 0;
  *(v23 + 120) = 0;
  *(v23 + 160) = MEMORY[0x1E69E7CC0];
  *(v23 + 168) = 0;
  *(v23 + 216) = 0;
  *(v23 + 176) = 0;
  *(v23 + 16) = 0x75676E6174636572;
  *(v23 + 24) = 0xEB0000000072616CLL;
  *(v23 + 32) = v20;
  *(v23 + 40) = v21;
  *(v23 + 48) = 12;
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
  v24 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v24)
  {
    v21 = (*(v24 + 8))();
  }

  v25 = swift_conformsToProtocol2();
  if (v25 && v21)
  {
    *(v23 + 160) = (*(v25 + 8))(v21, v25);
  }

  *(v23 + 64) = sub_1AF599D6C;
  *(v23 + 72) = v20;
  sub_1AF0FB8EC(0, 0);
  *(v23 + 168) = 0;
  *(v23 + 176) = 0;

  *(v23 + 216) = 0;
  *(v0 + 56) = v23;
  v26 = swift_getKeyPath();
  v27 = swift_allocObject();
  v27[4] = sub_1AF5A94EC;
  v27[5] = v26;
  v27[2] = sub_1AF5A9E94;
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
  *(v28 + 16) = 1918985582;
  *(v28 + 24) = 0xE400000000000000;
  *(v28 + 32) = v26;
  *(v28 + 40) = v14;
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
  swift_retain_n();
  if (v17)
  {
    v29 = (*(v17 + 8))();
  }

  else
  {
    v29 = v14;
  }

  v30 = swift_conformsToProtocol2();
  if (v30 && v29)
  {
    *(v28 + 160) = (*(v30 + 8))(v29, v30);
  }

  *(v28 + 64) = sub_1AF5A98F8;
  *(v28 + 72) = v26;
  sub_1AF0FB8EC(0, 0);
  *(v28 + 168) = 0;
  *(v28 + 176) = 0;

  *(v28 + 216) = 0;
  *(v0 + 64) = v28;
  v31 = swift_getKeyPath();
  v32 = swift_allocObject();
  v32[4] = sub_1AF5A94EC;
  v32[5] = v31;
  v32[2] = sub_1AF5A9E94;
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
  *(v33 + 16) = 7496038;
  *(v33 + 24) = 0xE300000000000000;
  *(v33 + 32) = v31;
  *(v33 + 40) = v14;
  *(v33 + 48) = 20;
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
  if (v17)
  {
    v34 = (*(v17 + 8))();
  }

  else
  {
    v34 = v14;
  }

  v35 = swift_conformsToProtocol2();
  if (v35 && v34)
  {
    *(v33 + 160) = (*(v35 + 8))(v34, v35);
  }

  *(v33 + 64) = sub_1AF5A98F8;
  *(v33 + 72) = v31;
  sub_1AF0FB8EC(0, 0);
  *(v33 + 168) = 0;
  *(v33 + 176) = 0;

  *(v33 + 216) = 0;
  *(v0 + 72) = v33;
  v36 = swift_getKeyPath();
  v37 = swift_allocObject();
  v37[4] = sub_1AF5A94EC;
  v37[5] = v36;
  v37[2] = sub_1AF5A9E94;
  v37[3] = v36;
  v37[6] = v36;
  v38 = swift_allocObject();
  *(v38 + 112) = 1;
  *(v38 + 128) = 0;
  *(v38 + 136) = 0;
  *(v38 + 120) = 0;
  *(v38 + 160) = MEMORY[0x1E69E7CC0];
  *(v38 + 168) = 0;
  *(v38 + 216) = 0;
  *(v38 + 176) = 0;
  *(v38 + 16) = 0x7469736E65746E69;
  *(v38 + 24) = 0xE900000000000079;
  *(v38 + 32) = v36;
  *(v38 + 40) = v14;
  *(v38 + 48) = 24;
  *(v38 + 56) = 0;
  *(v38 + 58) = 0;
  *(v38 + 184) = 0;
  *(v38 + 188) = 0;
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
  swift_retain_n();
  if (v17)
  {
    v14 = (*(v17 + 8))();
  }

  v39 = swift_conformsToProtocol2();
  if (v39 && v14)
  {
    *(v38 + 160) = (*(v39 + 8))(v14, v39);
  }

  *(v38 + 64) = sub_1AF5A98F8;
  *(v38 + 72) = v36;
  sub_1AF0FB8EC(0, 0);
  *(v38 + 168) = 0;
  *(v38 + 176) = 0;

  *(v38 + 216) = 0;
  *(v0 + 80) = v38;
  v40 = swift_getKeyPath();
  v41 = &type metadata for Entity;
  sub_1AF5A9240(0, &unk_1EB6338D8, &type metadata for Entity, type metadata accessor for EntityGetSet);
  v42 = swift_allocObject();
  v42[4] = sub_1AF599DAC;
  v42[5] = v40;
  v42[2] = sub_1AF599DE0;
  v42[3] = v40;
  v42[6] = v40;
  v43 = swift_allocObject();
  *(v43 + 112) = 1;
  *(v43 + 128) = 0;
  *(v43 + 136) = 0;
  *(v43 + 120) = 0;
  *(v43 + 168) = 0;
  *(v43 + 160) = MEMORY[0x1E69E7CC0];
  *(v43 + 216) = 0;
  *(v43 + 176) = 0;
  *(v43 + 16) = 0x65727574786574;
  *(v43 + 24) = 0xE700000000000000;
  *(v43 + 32) = v40;
  *(v43 + 40) = &type metadata for Entity;
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
  *(v43 + 144) = xmmword_1AFE551B0;
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

  *(v43 + 64) = sub_1AF599E3C;
  *(v43 + 72) = v40;
  sub_1AF0FB8EC(0, 0);
  *(v43 + 168) = 0;
  *(v43 + 176) = 0;

  *(v43 + 216) = 0;
  *(v0 + 88) = v43;
  qword_1EB6C2FD0 = v0;
  return result;
}

uint64_t sub_1AF4F2714()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C3E0;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF59A084;
  v3[5] = KeyPath;
  v3[2] = sub_1AF59A0C8;
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
  *(v4 + 16) = 0x6874676E656CLL;
  *(v4 + 24) = 0xE600000000000000;
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

  *(v4 + 64) = sub_1AF59A124;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0, 0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  qword_1EB6C2FD8 = v0;
  return result;
}

uint64_t sub_1AF4F2A48()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE550E0;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF59A1C4;
  v3[5] = KeyPath;
  v3[2] = sub_1AF59A208;
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

  *(v4 + 64) = sub_1AF59A264;
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
  v10[4] = sub_1AF59A2A4;
  v10[5] = v8;
  v10[2] = sub_1AF59A2E0;
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
  *(v11 + 16) = 0x6566694C7265766FLL;
  *(v11 + 24) = 0xE800000000000000;
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
    v9 = (*(v12 + 8))();
  }

  v13 = swift_conformsToProtocol2();
  if (v13 && v9)
  {
    *(v11 + 160) = (*(v13 + 8))(v9, v13);
  }

  *(v11 + 64) = sub_1AF59A33C;
  *(v11 + 72) = v8;
  sub_1AF0FB8EC(0, 0);
  *(v11 + 168) = 0;
  *(v11 + 176) = 0;

  *(v11 + 216) = 0;
  *(v0 + 40) = v11;
  qword_1EB6C2FE0 = v0;
  return result;
}

uint64_t sub_1AF4F2F84()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE550E0;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF59A43C;
  v3[5] = KeyPath;
  v3[2] = sub_1AF59A480;
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
  *(v4 + 16) = 0x7469736E65746E69;
  *(v4 + 24) = 0xE900000000000079;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = v2;
  *(v4 + 48) = 0;
  *(v4 + 56) = 0;
  *(v4 + 58) = 0;
  *(v4 + 184) = 0;
  *(v4 + 188) = 0;
  *(v4 + 192) = 0;
  *(v4 + 196) = 1;
  *(v4 + 200) = 0x1000041200000;
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

  *(v4 + 64) = sub_1AF59A4DC;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0, 0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  v8 = swift_getKeyPath();
  v9 = swift_allocObject();
  v9[4] = sub_1AF5A94F8;
  v9[5] = v8;
  v9[2] = sub_1AF5A9EAC;
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
  strcpy((v10 + 16), "shadowRadius");
  *(v10 + 29) = 0;
  *(v10 + 30) = -5120;
  *(v10 + 32) = v8;
  *(v10 + 40) = v2;
  *(v10 + 48) = 4;
  *(v10 + 56) = 0;
  *(v10 + 58) = 0;
  *(v10 + 184) = 1036831949;
  *(v10 + 188) = 0;
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

  *(v10 + 64) = sub_1AF5A98FC;
  *(v10 + 72) = v8;
  sub_1AF0FB8EC(0, 0);
  *(v10 + 168) = 0;
  *(v10 + 176) = 0;

  *(v10 + 216) = 0;
  *(v0 + 40) = v10;
  qword_1EB6C2938 = v0;
  return result;
}

uint64_t sub_1AF4F34B0()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE550E0;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF59A57C;
  v3[5] = KeyPath;
  v3[2] = sub_1AF59A5C0;
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
  *(v4 + 16) = 0x7469736E65746E69;
  *(v4 + 24) = 0xE900000000000079;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = v2;
  *(v4 + 48) = 0;
  *(v4 + 56) = 0;
  *(v4 + 58) = 0;
  *(v4 + 184) = 0;
  *(v4 + 188) = 0;
  *(v4 + 192) = 0;
  *(v4 + 196) = 1;
  *(v4 + 200) = 0x1000041200000;
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

  *(v4 + 64) = sub_1AF59A61C;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0, 0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  v8 = swift_getKeyPath();
  v9 = swift_allocObject();
  v9[4] = sub_1AF5A94FC;
  v9[5] = v8;
  v9[2] = sub_1AF5A9EB0;
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
  *(v10 + 16) = 0xD000000000000011;
  *(v10 + 24) = 0x80000001AFF22AF0;
  *(v10 + 32) = v8;
  *(v10 + 40) = v2;
  *(v10 + 48) = 4;
  *(v10 + 56) = 0;
  *(v10 + 58) = 0;
  *(v10 + 184) = 1036831949;
  *(v10 + 188) = 0;
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
    v2 = (*(v5 + 8))();
  }

  v11 = swift_conformsToProtocol2();
  if (v11 && v2)
  {
    *(v10 + 160) = (*(v11 + 8))(v2, v11);
  }

  *(v10 + 64) = sub_1AF5A9900;
  *(v10 + 72) = v8;
  sub_1AF0FB8EC(0, 0);
  *(v10 + 168) = 0;
  *(v10 + 176) = 0;

  *(v10 + 216) = 0;
  *(v0 + 40) = v10;
  qword_1EB6C29C8 = v0;
  return result;
}

uint64_t sub_1AF4F39D8()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C3E0;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF59A6BC;
  v3[5] = KeyPath;
  v3[2] = sub_1AF59A700;
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
  *(v4 + 16) = 0x7469736E65746E69;
  *(v4 + 24) = 0xE900000000000079;
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
    v2 = (*(v5 + 8))();
  }

  v6 = swift_conformsToProtocol2();
  if (v6 && v2)
  {
    *(v4 + 160) = (*(v6 + 8))(v2, v6);
  }

  *(v4 + 64) = sub_1AF59A75C;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0, 0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  qword_1EB6C29B8 = v0;
  return result;
}

uint64_t sub_1AF4F3D1C()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE550F0;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF59A7FC;
  v3[5] = KeyPath;
  v3[2] = sub_1AF59A840;
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
  *(v4 + 16) = 0x7469736E65746E69;
  *(v4 + 24) = 0xE900000000000079;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = v2;
  *(v4 + 48) = 0;
  *(v4 + 56) = 0;
  *(v4 + 58) = 0;
  *(v4 + 184) = 0;
  *(v4 + 188) = 0;
  *(v4 + 192) = 0;
  *(v4 + 196) = 1;
  *(v4 + 200) = 0x1000041200000;
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

  *(v4 + 64) = sub_1AF59A89C;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0, 0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  v8 = swift_getKeyPath();
  v9 = swift_allocObject();
  v9[4] = sub_1AF5A9504;
  v9[5] = v8;
  v9[2] = sub_1AF5A9EB8;
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
  *(v10 + 16) = 0xD000000000000011;
  *(v10 + 24) = 0x80000001AFF22AF0;
  *(v10 + 32) = v8;
  *(v10 + 40) = v2;
  *(v10 + 48) = 4;
  *(v10 + 56) = 0;
  *(v10 + 58) = 0;
  *(v10 + 184) = 1036831949;
  *(v10 + 188) = 0;
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

  *(v10 + 64) = sub_1AF5A9904;
  *(v10 + 72) = v8;
  sub_1AF0FB8EC(0, 0);
  *(v10 + 168) = 0;
  *(v10 + 176) = 0;

  *(v10 + 216) = 0;
  *(v0 + 40) = v10;
  v13 = swift_getKeyPath();
  v14 = swift_allocObject();
  v14[4] = sub_1AF5A9504;
  v14[5] = v13;
  v14[2] = sub_1AF5A9EB8;
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
  *(v15 + 16) = 0x676E4172656E6E69;
  *(v15 + 24) = 0xEA0000000000656CLL;
  *(v15 + 32) = v13;
  *(v15 + 40) = v2;
  *(v15 + 48) = 12;
  *(v15 + 56) = 0;
  *(v15 + 58) = 0;
  *(v15 + 184) = 0;
  *(v15 + 188) = 0;
  *(v15 + 192) = 1078529591;
  *(v15 + 196) = 0;
  *(v15 + 200) = 0x1000100000000;
  *(v15 + 208) = 1;
  *(v15 + 64) = 0;
  *(v15 + 72) = 0;
  *(v15 + 96) = 0;
  *(v15 + 104) = 0;
  *(v15 + 144) = xmmword_1AFE55150;
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

  *(v15 + 64) = sub_1AF5A9904;
  *(v15 + 72) = v13;
  sub_1AF0FB8EC(0, 0);
  *(v15 + 168) = 0;
  *(v15 + 176) = 0;

  *(v15 + 216) = 0;
  *(v0 + 48) = v15;
  v18 = swift_getKeyPath();
  v19 = swift_allocObject();
  v19[4] = sub_1AF5A9504;
  v19[5] = v18;
  v19[2] = sub_1AF5A9EB8;
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
  *(v20 + 16) = 0x676E41726574756FLL;
  *(v20 + 24) = 0xEA0000000000656CLL;
  *(v20 + 32) = v18;
  *(v20 + 40) = v2;
  *(v20 + 48) = 8;
  *(v20 + 56) = 0;
  *(v20 + 58) = 0;
  *(v20 + 184) = 0;
  *(v20 + 188) = 0;
  *(v20 + 192) = 1078529591;
  *(v20 + 196) = 0;
  *(v20 + 200) = 0x1000100000000;
  *(v20 + 208) = 1;
  *(v20 + 64) = 0;
  *(v20 + 72) = 0;
  *(v20 + 96) = 0;
  *(v20 + 104) = 0;
  *(v20 + 144) = xmmword_1AFE55150;
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

  *(v20 + 64) = sub_1AF5A9904;
  *(v20 + 72) = v18;
  sub_1AF0FB8EC(0, 0);
  *(v20 + 168) = 0;
  *(v20 + 176) = 0;

  *(v20 + 216) = 0;
  *(v0 + 56) = v20;
  qword_1EB6C2FE8 = v0;
  return result;
}

uint64_t sub_1AF4F45CC()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C3E0;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF59A93C;
  v3[5] = KeyPath;
  v3[2] = sub_1AF59A970;
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
  *(v4 + 16) = 0x6169426874706564;
  *(v4 + 24) = 0xE900000000000073;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = v2;
  *(v4 + 48) = 0;
  *(v4 + 56) = 0;
  *(v4 + 58) = 0;
  *(v4 + 184) = 0;
  *(v4 + 188) = 0;
  *(v4 + 192) = 0;
  *(v4 + 196) = 1;
  *(v4 + 200) = 0x30100003C23D70ALL;
  *(v4 + 208) = 0;
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

  *(v4 + 64) = sub_1AF59A9CC;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0, 0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  qword_1EB6C2FF0 = v0;
  return result;
}

uint64_t sub_1AF4F4904()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE551C0;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF5A9518;
  v3[5] = KeyPath;
  v3[2] = sub_1AF5A9EE0;
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
  *(v4 + 16) = 0x6963697473616C65;
  *(v4 + 24) = 0xEA00000000007974;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = v2;
  *(v4 + 48) = 0;
  *(v4 + 56) = 1;
  *(v4 + 58) = 0;
  *(v4 + 184) = -1082130432;
  *(v4 + 188) = 0;
  *(v4 + 192) = 0;
  *(v4 + 196) = 1;
  *(v4 + 200) = 0x100003C23D70ALL;
  *(v4 + 208) = 1;
  *(v4 + 96) = 0;
  *(v4 + 104) = 0;
  *(v4 + 144) = xmmword_1AFE22A20;
  *(v4 + 80) = v3;
  *(v4 + 88) = &off_1F2535378;
  *(v4 + 210) = 0;
  v6 = swift_conformsToProtocol2();
  v7 = v6;
  if (v6)
  {
    v8 = (*(v6 + 8))(MEMORY[0x1E69E6448], v6);
  }

  else
  {
    v8 = v2;
  }

  v9 = swift_conformsToProtocol2();
  v46 = v0;
  if (v9 && v8)
  {
    v10 = v9;
    v11 = *(v9 + 8);
    swift_retain_n();
    v12 = v11(v8, v10);
    v0 = v46;
    *(v4 + 160) = v12;
  }

  else
  {
    v12 = swift_retain_n();
  }

  *(v4 + 64) = sub_1AF5A9918;
  *(v4 + 72) = KeyPath;
  *(v4 + 216) = 0;
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;
  *(v0 + 32) = v4;
  MEMORY[0x1EEE9AC00](v12);
  v13 = swift_getKeyPath();
  v14 = swift_allocObject();
  v14[4] = sub_1AF5A9518;
  v14[5] = v13;
  v14[2] = sub_1AF5A9EE0;
  v14[3] = v13;
  v14[6] = v13;
  v15 = swift_allocObject();
  *(v15 + 112) = 1;
  *(v15 + 128) = 0;
  *(v15 + 136) = 0;
  *(v15 + 120) = 0;
  *(v15 + 160) = MEMORY[0x1E69E7CC0];
  *(v15 + 168) = 0;
  *(v15 + 176) = 0;
  *(v15 + 216) = 0;
  *(v15 + 16) = 0x6E6F697463697266;
  *(v15 + 24) = 0xE800000000000000;
  *(v15 + 32) = v13;
  *(v15 + 40) = v2;
  *(v15 + 48) = 0;
  *(v15 + 56) = 1;
  *(v15 + 58) = 0;
  *(v15 + 184) = -1082130432;
  *(v15 + 188) = 0;
  *(v15 + 192) = 1065353216;
  *(v15 + 196) = 0;
  *(v15 + 200) = 1008981770;
  *(v15 + 204) = 0x10000;
  *(v15 + 208) = 1;
  *(v15 + 96) = 0;
  *(v15 + 104) = 0;
  *(v15 + 64) = 0;
  *(v15 + 72) = 0;
  *(v15 + 144) = xmmword_1AFE22A20;
  *(v15 + 80) = v14;
  *(v15 + 88) = &off_1F2535378;
  *(v15 + 210) = 0;

  if (v7)
  {
    v16 = (*(v7 + 8))(MEMORY[0x1E69E6448]);
  }

  else
  {
    v16 = v2;
  }

  v17 = swift_conformsToProtocol2();
  if (v17 && v16)
  {
    v18 = *(v17 + 8);
    v19 = v17;
    swift_retain_n();
    v20 = v18(v16, v19);
    v0 = v46;
    *(v15 + 160) = v20;
  }

  else
  {
    v20 = swift_retain_n();
  }

  *(v15 + 64) = sub_1AF5A9918;
  *(v15 + 72) = v13;
  *(v15 + 216) = 0;
  *(v15 + 168) = 0;
  *(v15 + 176) = 0;
  *(v0 + 40) = v15;
  MEMORY[0x1EEE9AC00](v20);
  v21 = swift_getKeyPath();
  v22 = swift_allocObject();
  v22[4] = sub_1AF5A9518;
  v22[5] = v21;
  v22[2] = sub_1AF5A9EE0;
  v22[3] = v21;
  v22[6] = v21;
  v23 = swift_allocObject();
  *(v23 + 112) = 1;
  *(v23 + 128) = 0;
  *(v23 + 136) = 0;
  *(v23 + 120) = 0;
  *(v23 + 160) = MEMORY[0x1E69E7CC0];
  *(v23 + 168) = 0;
  *(v23 + 176) = 0;
  *(v23 + 216) = 0;
  *(v23 + 16) = 0xD000000000000019;
  *(v23 + 24) = 0x80000001AFF24510;
  *(v23 + 32) = v21;
  *(v23 + 40) = v2;
  *(v23 + 48) = 0;
  *(v23 + 56) = 1;
  *(v23 + 58) = 0;
  *(v23 + 184) = 0;
  *(v23 + 188) = 0;
  *(v23 + 192) = 1065353216;
  *(v23 + 196) = 0;
  *(v23 + 200) = 1008981770;
  *(v23 + 204) = 0x10000;
  *(v23 + 208) = 1;
  *(v23 + 96) = 0;
  *(v23 + 104) = 0;
  *(v23 + 64) = 0;
  *(v23 + 72) = 0;
  *(v23 + 144) = xmmword_1AFE22A20;
  *(v23 + 80) = v22;
  *(v23 + 88) = &off_1F2535378;
  *(v23 + 210) = 0;

  if (v7)
  {
    v24 = (*(v7 + 8))(MEMORY[0x1E69E6448]);
  }

  else
  {
    v24 = v2;
  }

  v25 = swift_conformsToProtocol2();
  if (v25 && v24)
  {
    v26 = *(v25 + 8);
    v27 = v25;
    swift_retain_n();
    v28 = v26(v24, v27);
    v0 = v46;
    *(v23 + 160) = v28;
  }

  else
  {
    v28 = swift_retain_n();
  }

  *(v23 + 64) = sub_1AF5A9918;
  *(v23 + 72) = v21;
  *(v23 + 216) = 0;
  *(v23 + 168) = 0;
  *(v23 + 176) = 0;
  *(v0 + 48) = v23;
  MEMORY[0x1EEE9AC00](v28);
  v29 = swift_getKeyPath();
  v30 = swift_allocObject();
  v30[4] = sub_1AF5A9518;
  v30[5] = v29;
  v30[2] = sub_1AF5A9EE0;
  v30[3] = v29;
  v30[6] = v29;
  v31 = swift_allocObject();
  *(v31 + 112) = 1;
  *(v31 + 128) = 0;
  *(v31 + 136) = 0;
  *(v31 + 120) = 0;
  *(v31 + 160) = MEMORY[0x1E69E7CC0];
  *(v31 + 168) = 0;
  *(v31 + 176) = 0;
  *(v31 + 216) = 0;
  *(v31 + 16) = 0xD000000000000015;
  *(v31 + 24) = 0x80000001AFF244F0;
  *(v31 + 32) = v29;
  *(v31 + 40) = v2;
  *(v31 + 48) = 0;
  *(v31 + 56) = 1;
  *(v31 + 58) = 0;
  *(v31 + 184) = 0;
  *(v31 + 188) = 0;
  *(v31 + 192) = 1065353216;
  *(v31 + 196) = 0;
  *(v31 + 200) = 1008981770;
  *(v31 + 204) = 0x10000;
  *(v31 + 208) = 1;
  *(v31 + 96) = 0;
  *(v31 + 104) = 0;
  *(v31 + 64) = 0;
  *(v31 + 72) = 0;
  *(v31 + 144) = xmmword_1AFE22A20;
  *(v31 + 80) = v30;
  *(v31 + 88) = &off_1F2535378;
  *(v31 + 210) = 0;

  if (v7)
  {
    v2 = (*(v7 + 8))(MEMORY[0x1E69E6448]);
  }

  v32 = swift_conformsToProtocol2();
  if (v32 && v2)
  {
    v33 = *(v32 + 8);
    v34 = v32;
    swift_retain_n();
    v35 = v33(v2, v34);
    v0 = v46;
    *(v31 + 160) = v35;
  }

  else
  {
    v35 = swift_retain_n();
  }

  *(v31 + 64) = sub_1AF5A9918;
  *(v31 + 72) = v29;
  *(v31 + 216) = 0;
  *(v31 + 168) = 0;
  *(v31 + 176) = 0;
  *(v0 + 56) = v31;
  MEMORY[0x1EEE9AC00](v35);
  v36 = swift_getKeyPath();
  v37 = &type metadata for CollisionLayerSet;
  sub_1AF5A9240(0, &qword_1EB63AF50, &type metadata for CollisionLayerSet, type metadata accessor for EntityGetSet);
  v38 = swift_allocObject();
  v38[4] = sub_1AF59B454;
  v38[5] = v36;
  v38[2] = sub_1AF59B524;
  v38[3] = v36;
  v38[6] = v36;
  v39 = swift_allocObject();
  *(v39 + 112) = 1;
  *(v39 + 128) = 0;
  *(v39 + 136) = 0;
  *(v39 + 120) = 0;
  *(v39 + 160) = MEMORY[0x1E69E7CC0];
  *(v39 + 168) = 0;
  *(v39 + 176) = 0;
  *(v39 + 216) = 0;
  *(v39 + 16) = 0x73726579616CLL;
  *(v39 + 24) = 0xE600000000000000;
  *(v39 + 32) = v36;
  *(v39 + 40) = &type metadata for CollisionLayerSet;
  *(v39 + 48) = 0;
  *(v39 + 56) = 1;
  *(v39 + 58) = 0;
  *(v39 + 184) = 0;
  *(v39 + 188) = 1;
  *(v39 + 192) = 0;
  *(v39 + 196) = 1;
  *(v39 + 200) = 0x1000100000000;
  *(v39 + 208) = 1;
  *(v39 + 96) = 0;
  *(v39 + 104) = 0;
  *(v39 + 64) = 0;
  *(v39 + 72) = 0;
  *(v39 + 144) = xmmword_1AFE22A20;
  *(v39 + 80) = v38;
  *(v39 + 88) = &off_1F2535378;
  *(v39 + 210) = 0;
  v40 = swift_conformsToProtocol2();

  if (v40)
  {
    v37 = (*(v40 + 8))(&type metadata for CollisionLayerSet);
  }

  v41 = swift_conformsToProtocol2();
  if (v41 && v37)
  {
    v42 = *(v41 + 8);
    v43 = v41;
    swift_retain_n();
    v44 = v42(v37, v43);
    v0 = v46;
    *(v39 + 160) = v44;
  }

  else
  {
    swift_retain_n();
  }

  *(v39 + 64) = sub_1AF59B594;
  *(v39 + 72) = v36;
  *(v39 + 216) = 0;
  *(v39 + 168) = 0;
  *(v39 + 176) = 0;
  *(v0 + 64) = v39;
  return v0;
}

uint64_t sub_1AF4F5414()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE551C0;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF59BA24;
  v3[5] = KeyPath;
  v3[2] = sub_1AF59BA68;
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
  *(v4 + 16) = 0x6963697473616C65;
  *(v4 + 24) = 0xEA00000000007974;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = v2;
  *(v4 + 48) = 0;
  *(v4 + 56) = 1;
  *(v4 + 58) = 0;
  *(v4 + 184) = -1082130432;
  *(v4 + 188) = 0;
  *(v4 + 192) = 0;
  *(v4 + 196) = 1;
  *(v4 + 200) = 0x100003C23D70ALL;
  *(v4 + 208) = 1;
  *(v4 + 96) = 0;
  *(v4 + 104) = 0;
  *(v4 + 144) = xmmword_1AFE22A20;
  *(v4 + 80) = v3;
  *(v4 + 88) = &off_1F2535378;
  *(v4 + 210) = 0;
  v6 = swift_conformsToProtocol2();
  v7 = v6;
  if (v6)
  {
    v8 = (*(v6 + 8))(MEMORY[0x1E69E6448], v6);
  }

  else
  {
    v8 = v2;
  }

  v9 = swift_conformsToProtocol2();
  v46 = v0;
  if (v9 && v8)
  {
    v10 = v9;
    v11 = *(v9 + 8);
    swift_retain_n();
    v12 = v11(v8, v10);
    v0 = v46;
    *(v4 + 160) = v12;
  }

  else
  {
    v12 = swift_retain_n();
  }

  *(v4 + 64) = sub_1AF59BAC4;
  *(v4 + 72) = KeyPath;
  *(v4 + 216) = 0;
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;
  *(v0 + 32) = v4;
  MEMORY[0x1EEE9AC00](v12);
  v13 = swift_getKeyPath();
  v14 = swift_allocObject();
  v14[4] = sub_1AF5A9520;
  v14[5] = v13;
  v14[2] = sub_1AF5A9EF4;
  v14[3] = v13;
  v14[6] = v13;
  v15 = swift_allocObject();
  *(v15 + 112) = 1;
  *(v15 + 128) = 0;
  *(v15 + 136) = 0;
  *(v15 + 120) = 0;
  *(v15 + 160) = MEMORY[0x1E69E7CC0];
  *(v15 + 168) = 0;
  *(v15 + 176) = 0;
  *(v15 + 216) = 0;
  *(v15 + 16) = 0x6E6F697463697266;
  *(v15 + 24) = 0xE800000000000000;
  *(v15 + 32) = v13;
  *(v15 + 40) = v2;
  *(v15 + 48) = 0;
  *(v15 + 56) = 1;
  *(v15 + 58) = 0;
  *(v15 + 184) = -1082130432;
  *(v15 + 188) = 0;
  *(v15 + 192) = 1065353216;
  *(v15 + 196) = 0;
  *(v15 + 200) = 1008981770;
  *(v15 + 204) = 0x10000;
  *(v15 + 208) = 1;
  *(v15 + 96) = 0;
  *(v15 + 104) = 0;
  *(v15 + 64) = 0;
  *(v15 + 72) = 0;
  *(v15 + 144) = xmmword_1AFE22A20;
  *(v15 + 80) = v14;
  *(v15 + 88) = &off_1F2535378;
  *(v15 + 210) = 0;

  if (v7)
  {
    v16 = (*(v7 + 8))(MEMORY[0x1E69E6448]);
  }

  else
  {
    v16 = v2;
  }

  v17 = swift_conformsToProtocol2();
  if (v17 && v16)
  {
    v18 = *(v17 + 8);
    v19 = v17;
    swift_retain_n();
    v20 = v18(v16, v19);
    v0 = v46;
    *(v15 + 160) = v20;
  }

  else
  {
    v20 = swift_retain_n();
  }

  *(v15 + 64) = sub_1AF5A9920;
  *(v15 + 72) = v13;
  *(v15 + 216) = 0;
  *(v15 + 168) = 0;
  *(v15 + 176) = 0;
  *(v0 + 40) = v15;
  MEMORY[0x1EEE9AC00](v20);
  v21 = swift_getKeyPath();
  v22 = swift_allocObject();
  v22[4] = sub_1AF5A9520;
  v22[5] = v21;
  v22[2] = sub_1AF5A9EF4;
  v22[3] = v21;
  v22[6] = v21;
  v23 = swift_allocObject();
  *(v23 + 112) = 1;
  *(v23 + 128) = 0;
  *(v23 + 136) = 0;
  *(v23 + 120) = 0;
  *(v23 + 160) = MEMORY[0x1E69E7CC0];
  *(v23 + 168) = 0;
  *(v23 + 176) = 0;
  *(v23 + 216) = 0;
  *(v23 + 16) = 0xD000000000000019;
  *(v23 + 24) = 0x80000001AFF24510;
  *(v23 + 32) = v21;
  *(v23 + 40) = v2;
  *(v23 + 48) = 0;
  *(v23 + 56) = 1;
  *(v23 + 58) = 0;
  *(v23 + 184) = 0;
  *(v23 + 188) = 0;
  *(v23 + 192) = 1065353216;
  *(v23 + 196) = 0;
  *(v23 + 200) = 1008981770;
  *(v23 + 204) = 0x10000;
  *(v23 + 208) = 1;
  *(v23 + 96) = 0;
  *(v23 + 104) = 0;
  *(v23 + 64) = 0;
  *(v23 + 72) = 0;
  *(v23 + 144) = xmmword_1AFE22A20;
  *(v23 + 80) = v22;
  *(v23 + 88) = &off_1F2535378;
  *(v23 + 210) = 0;

  if (v7)
  {
    v24 = (*(v7 + 8))(MEMORY[0x1E69E6448]);
  }

  else
  {
    v24 = v2;
  }

  v25 = swift_conformsToProtocol2();
  if (v25 && v24)
  {
    v26 = *(v25 + 8);
    v27 = v25;
    swift_retain_n();
    v28 = v26(v24, v27);
    v0 = v46;
    *(v23 + 160) = v28;
  }

  else
  {
    v28 = swift_retain_n();
  }

  *(v23 + 64) = sub_1AF5A9920;
  *(v23 + 72) = v21;
  *(v23 + 216) = 0;
  *(v23 + 168) = 0;
  *(v23 + 176) = 0;
  *(v0 + 48) = v23;
  MEMORY[0x1EEE9AC00](v28);
  v29 = swift_getKeyPath();
  v30 = swift_allocObject();
  v30[4] = sub_1AF5A9520;
  v30[5] = v29;
  v30[2] = sub_1AF5A9EF4;
  v30[3] = v29;
  v30[6] = v29;
  v31 = swift_allocObject();
  *(v31 + 112) = 1;
  *(v31 + 128) = 0;
  *(v31 + 136) = 0;
  *(v31 + 120) = 0;
  *(v31 + 160) = MEMORY[0x1E69E7CC0];
  *(v31 + 168) = 0;
  *(v31 + 176) = 0;
  *(v31 + 216) = 0;
  *(v31 + 16) = 0xD000000000000015;
  *(v31 + 24) = 0x80000001AFF244F0;
  *(v31 + 32) = v29;
  *(v31 + 40) = v2;
  *(v31 + 48) = 0;
  *(v31 + 56) = 1;
  *(v31 + 58) = 0;
  *(v31 + 184) = 0;
  *(v31 + 188) = 0;
  *(v31 + 192) = 1065353216;
  *(v31 + 196) = 0;
  *(v31 + 200) = 1008981770;
  *(v31 + 204) = 0x10000;
  *(v31 + 208) = 1;
  *(v31 + 96) = 0;
  *(v31 + 104) = 0;
  *(v31 + 64) = 0;
  *(v31 + 72) = 0;
  *(v31 + 144) = xmmword_1AFE22A20;
  *(v31 + 80) = v30;
  *(v31 + 88) = &off_1F2535378;
  *(v31 + 210) = 0;

  if (v7)
  {
    v2 = (*(v7 + 8))(MEMORY[0x1E69E6448]);
  }

  v32 = swift_conformsToProtocol2();
  if (v32 && v2)
  {
    v33 = *(v32 + 8);
    v34 = v32;
    swift_retain_n();
    v35 = v33(v2, v34);
    v0 = v46;
    *(v31 + 160) = v35;
  }

  else
  {
    v35 = swift_retain_n();
  }

  *(v31 + 64) = sub_1AF5A9920;
  *(v31 + 72) = v29;
  *(v31 + 216) = 0;
  *(v31 + 168) = 0;
  *(v31 + 176) = 0;
  *(v0 + 56) = v31;
  MEMORY[0x1EEE9AC00](v35);
  v36 = swift_getKeyPath();
  v37 = &type metadata for CollisionLayerSet;
  sub_1AF5A9240(0, &qword_1EB63AF50, &type metadata for CollisionLayerSet, type metadata accessor for EntityGetSet);
  v38 = swift_allocObject();
  v38[4] = sub_1AF59BA24;
  v38[5] = v36;
  v38[2] = sub_1AF59BB04;
  v38[3] = v36;
  v38[6] = v36;
  v39 = swift_allocObject();
  *(v39 + 112) = 1;
  *(v39 + 128) = 0;
  *(v39 + 136) = 0;
  *(v39 + 120) = 0;
  *(v39 + 160) = MEMORY[0x1E69E7CC0];
  *(v39 + 168) = 0;
  *(v39 + 176) = 0;
  *(v39 + 216) = 0;
  *(v39 + 16) = 0x73726579616CLL;
  *(v39 + 24) = 0xE600000000000000;
  *(v39 + 32) = v36;
  *(v39 + 40) = &type metadata for CollisionLayerSet;
  *(v39 + 48) = 0;
  *(v39 + 56) = 1;
  *(v39 + 58) = 0;
  *(v39 + 184) = 0;
  *(v39 + 188) = 1;
  *(v39 + 192) = 0;
  *(v39 + 196) = 1;
  *(v39 + 200) = 0x1000100000000;
  *(v39 + 208) = 1;
  *(v39 + 96) = 0;
  *(v39 + 104) = 0;
  *(v39 + 64) = 0;
  *(v39 + 72) = 0;
  *(v39 + 144) = xmmword_1AFE22A20;
  *(v39 + 80) = v38;
  *(v39 + 88) = &off_1F2535378;
  *(v39 + 210) = 0;
  v40 = swift_conformsToProtocol2();

  if (v40)
  {
    v37 = (*(v40 + 8))(&type metadata for CollisionLayerSet);
  }

  v41 = swift_conformsToProtocol2();
  if (v41 && v37)
  {
    v42 = *(v41 + 8);
    v43 = v41;
    swift_retain_n();
    v44 = v42(v37, v43);
    v0 = v46;
    *(v39 + 160) = v44;
  }

  else
  {
    swift_retain_n();
  }

  *(v39 + 64) = sub_1AF59BB74;
  *(v39 + 72) = v36;
  *(v39 + 216) = 0;
  *(v39 + 168) = 0;
  *(v39 + 176) = 0;
  *(v0 + 64) = v39;
  return v0;
}

uint64_t sub_1AF4F5F24()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE551C0;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF59BDB4;
  v3[5] = KeyPath;
  v3[2] = sub_1AF59BDF8;
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
  *(v4 + 16) = 0x6963697473616C65;
  *(v4 + 24) = 0xEA00000000007974;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = v2;
  *(v4 + 48) = 0;
  *(v4 + 56) = 1;
  *(v4 + 58) = 0;
  *(v4 + 184) = -1082130432;
  *(v4 + 188) = 0;
  *(v4 + 192) = 0;
  *(v4 + 196) = 1;
  *(v4 + 200) = 0x100003C23D70ALL;
  *(v4 + 208) = 1;
  *(v4 + 96) = 0;
  *(v4 + 104) = 0;
  *(v4 + 144) = xmmword_1AFE22A20;
  *(v4 + 80) = v3;
  *(v4 + 88) = &off_1F2535378;
  *(v4 + 210) = 0;
  v6 = swift_conformsToProtocol2();
  v7 = v6;
  if (v6)
  {
    v8 = (*(v6 + 8))(MEMORY[0x1E69E6448], v6);
  }

  else
  {
    v8 = v2;
  }

  v9 = swift_conformsToProtocol2();
  v46 = v0;
  if (v9 && v8)
  {
    v10 = v9;
    v11 = *(v9 + 8);
    swift_retain_n();
    v12 = v11(v8, v10);
    v0 = v46;
    *(v4 + 160) = v12;
  }

  else
  {
    v12 = swift_retain_n();
  }

  *(v4 + 64) = sub_1AF59BE54;
  *(v4 + 72) = KeyPath;
  *(v4 + 216) = 0;
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;
  *(v0 + 32) = v4;
  MEMORY[0x1EEE9AC00](v12);
  v13 = swift_getKeyPath();
  v14 = swift_allocObject();
  v14[4] = sub_1AF5A9524;
  v14[5] = v13;
  v14[2] = sub_1AF5A9F00;
  v14[3] = v13;
  v14[6] = v13;
  v15 = swift_allocObject();
  *(v15 + 112) = 1;
  *(v15 + 128) = 0;
  *(v15 + 136) = 0;
  *(v15 + 120) = 0;
  *(v15 + 160) = MEMORY[0x1E69E7CC0];
  *(v15 + 168) = 0;
  *(v15 + 176) = 0;
  *(v15 + 216) = 0;
  *(v15 + 16) = 0x6E6F697463697266;
  *(v15 + 24) = 0xE800000000000000;
  *(v15 + 32) = v13;
  *(v15 + 40) = v2;
  *(v15 + 48) = 0;
  *(v15 + 56) = 1;
  *(v15 + 58) = 0;
  *(v15 + 184) = -1082130432;
  *(v15 + 188) = 0;
  *(v15 + 192) = 1065353216;
  *(v15 + 196) = 0;
  *(v15 + 200) = 1008981770;
  *(v15 + 204) = 0x10000;
  *(v15 + 208) = 1;
  *(v15 + 96) = 0;
  *(v15 + 104) = 0;
  *(v15 + 64) = 0;
  *(v15 + 72) = 0;
  *(v15 + 144) = xmmword_1AFE22A20;
  *(v15 + 80) = v14;
  *(v15 + 88) = &off_1F2535378;
  *(v15 + 210) = 0;

  if (v7)
  {
    v16 = (*(v7 + 8))(MEMORY[0x1E69E6448]);
  }

  else
  {
    v16 = v2;
  }

  v17 = swift_conformsToProtocol2();
  if (v17 && v16)
  {
    v18 = *(v17 + 8);
    v19 = v17;
    swift_retain_n();
    v20 = v18(v16, v19);
    v0 = v46;
    *(v15 + 160) = v20;
  }

  else
  {
    v20 = swift_retain_n();
  }

  *(v15 + 64) = sub_1AF5A9924;
  *(v15 + 72) = v13;
  *(v15 + 216) = 0;
  *(v15 + 168) = 0;
  *(v15 + 176) = 0;
  *(v0 + 40) = v15;
  MEMORY[0x1EEE9AC00](v20);
  v21 = swift_getKeyPath();
  v22 = swift_allocObject();
  v22[4] = sub_1AF5A9524;
  v22[5] = v21;
  v22[2] = sub_1AF5A9F00;
  v22[3] = v21;
  v22[6] = v21;
  v23 = swift_allocObject();
  *(v23 + 112) = 1;
  *(v23 + 128) = 0;
  *(v23 + 136) = 0;
  *(v23 + 120) = 0;
  *(v23 + 160) = MEMORY[0x1E69E7CC0];
  *(v23 + 168) = 0;
  *(v23 + 176) = 0;
  *(v23 + 216) = 0;
  *(v23 + 16) = 0xD000000000000019;
  *(v23 + 24) = 0x80000001AFF24510;
  *(v23 + 32) = v21;
  *(v23 + 40) = v2;
  *(v23 + 48) = 0;
  *(v23 + 56) = 1;
  *(v23 + 58) = 0;
  *(v23 + 184) = 0;
  *(v23 + 188) = 0;
  *(v23 + 192) = 1065353216;
  *(v23 + 196) = 0;
  *(v23 + 200) = 1008981770;
  *(v23 + 204) = 0x10000;
  *(v23 + 208) = 1;
  *(v23 + 96) = 0;
  *(v23 + 104) = 0;
  *(v23 + 64) = 0;
  *(v23 + 72) = 0;
  *(v23 + 144) = xmmword_1AFE22A20;
  *(v23 + 80) = v22;
  *(v23 + 88) = &off_1F2535378;
  *(v23 + 210) = 0;

  if (v7)
  {
    v24 = (*(v7 + 8))(MEMORY[0x1E69E6448]);
  }

  else
  {
    v24 = v2;
  }

  v25 = swift_conformsToProtocol2();
  if (v25 && v24)
  {
    v26 = *(v25 + 8);
    v27 = v25;
    swift_retain_n();
    v28 = v26(v24, v27);
    v0 = v46;
    *(v23 + 160) = v28;
  }

  else
  {
    v28 = swift_retain_n();
  }

  *(v23 + 64) = sub_1AF5A9924;
  *(v23 + 72) = v21;
  *(v23 + 216) = 0;
  *(v23 + 168) = 0;
  *(v23 + 176) = 0;
  *(v0 + 48) = v23;
  MEMORY[0x1EEE9AC00](v28);
  v29 = swift_getKeyPath();
  v30 = swift_allocObject();
  v30[4] = sub_1AF5A9524;
  v30[5] = v29;
  v30[2] = sub_1AF5A9F00;
  v30[3] = v29;
  v30[6] = v29;
  v31 = swift_allocObject();
  *(v31 + 112) = 1;
  *(v31 + 128) = 0;
  *(v31 + 136) = 0;
  *(v31 + 120) = 0;
  *(v31 + 160) = MEMORY[0x1E69E7CC0];
  *(v31 + 168) = 0;
  *(v31 + 176) = 0;
  *(v31 + 216) = 0;
  *(v31 + 16) = 0xD000000000000015;
  *(v31 + 24) = 0x80000001AFF244F0;
  *(v31 + 32) = v29;
  *(v31 + 40) = v2;
  *(v31 + 48) = 0;
  *(v31 + 56) = 1;
  *(v31 + 58) = 0;
  *(v31 + 184) = 0;
  *(v31 + 188) = 0;
  *(v31 + 192) = 1065353216;
  *(v31 + 196) = 0;
  *(v31 + 200) = 1008981770;
  *(v31 + 204) = 0x10000;
  *(v31 + 208) = 1;
  *(v31 + 96) = 0;
  *(v31 + 104) = 0;
  *(v31 + 64) = 0;
  *(v31 + 72) = 0;
  *(v31 + 144) = xmmword_1AFE22A20;
  *(v31 + 80) = v30;
  *(v31 + 88) = &off_1F2535378;
  *(v31 + 210) = 0;

  if (v7)
  {
    v2 = (*(v7 + 8))(MEMORY[0x1E69E6448]);
  }

  v32 = swift_conformsToProtocol2();
  if (v32 && v2)
  {
    v33 = *(v32 + 8);
    v34 = v32;
    swift_retain_n();
    v35 = v33(v2, v34);
    v0 = v46;
    *(v31 + 160) = v35;
  }

  else
  {
    v35 = swift_retain_n();
  }

  *(v31 + 64) = sub_1AF5A9924;
  *(v31 + 72) = v29;
  *(v31 + 216) = 0;
  *(v31 + 168) = 0;
  *(v31 + 176) = 0;
  *(v0 + 56) = v31;
  MEMORY[0x1EEE9AC00](v35);
  v36 = swift_getKeyPath();
  v37 = &type metadata for CollisionLayerSet;
  sub_1AF5A9240(0, &qword_1EB63AF50, &type metadata for CollisionLayerSet, type metadata accessor for EntityGetSet);
  v38 = swift_allocObject();
  v38[4] = sub_1AF59BDB4;
  v38[5] = v36;
  v38[2] = sub_1AF59BE94;
  v38[3] = v36;
  v38[6] = v36;
  v39 = swift_allocObject();
  *(v39 + 112) = 1;
  *(v39 + 128) = 0;
  *(v39 + 136) = 0;
  *(v39 + 120) = 0;
  *(v39 + 160) = MEMORY[0x1E69E7CC0];
  *(v39 + 168) = 0;
  *(v39 + 176) = 0;
  *(v39 + 216) = 0;
  *(v39 + 16) = 0x73726579616CLL;
  *(v39 + 24) = 0xE600000000000000;
  *(v39 + 32) = v36;
  *(v39 + 40) = &type metadata for CollisionLayerSet;
  *(v39 + 48) = 0;
  *(v39 + 56) = 1;
  *(v39 + 58) = 0;
  *(v39 + 184) = 0;
  *(v39 + 188) = 1;
  *(v39 + 192) = 0;
  *(v39 + 196) = 1;
  *(v39 + 200) = 0x1000100000000;
  *(v39 + 208) = 1;
  *(v39 + 96) = 0;
  *(v39 + 104) = 0;
  *(v39 + 64) = 0;
  *(v39 + 72) = 0;
  *(v39 + 144) = xmmword_1AFE22A20;
  *(v39 + 80) = v38;
  *(v39 + 88) = &off_1F2535378;
  *(v39 + 210) = 0;
  v40 = swift_conformsToProtocol2();

  if (v40)
  {
    v37 = (*(v40 + 8))(&type metadata for CollisionLayerSet);
  }

  v41 = swift_conformsToProtocol2();
  if (v41 && v37)
  {
    v42 = *(v41 + 8);
    v43 = v41;
    swift_retain_n();
    v44 = v42(v37, v43);
    v0 = v46;
    *(v39 + 160) = v44;
  }

  else
  {
    swift_retain_n();
  }

  *(v39 + 64) = sub_1AF59BF04;
  *(v39 + 72) = v36;
  *(v39 + 216) = 0;
  *(v39 + 168) = 0;
  *(v39 + 176) = 0;
  *(v0 + 64) = v39;
  return v0;
}

uint64_t sub_1AF4F6A34()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE551C0;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF59AD84;
  v3[5] = KeyPath;
  v3[2] = sub_1AF59ADB8;
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
  *(v4 + 16) = 0x6963697473616C65;
  *(v4 + 24) = 0xEA00000000007974;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = v2;
  *(v4 + 48) = 0;
  *(v4 + 56) = 1;
  *(v4 + 58) = 0;
  *(v4 + 184) = -1082130432;
  *(v4 + 188) = 0;
  *(v4 + 192) = 0;
  *(v4 + 196) = 1;
  *(v4 + 200) = 0x100003C23D70ALL;
  *(v4 + 208) = 1;
  *(v4 + 96) = 0;
  *(v4 + 104) = 0;
  *(v4 + 144) = xmmword_1AFE22A20;
  *(v4 + 80) = v3;
  *(v4 + 88) = &off_1F2535378;
  *(v4 + 210) = 0;
  v6 = swift_conformsToProtocol2();
  v7 = v6;
  if (v6)
  {
    v8 = (*(v6 + 8))(MEMORY[0x1E69E6448], v6);
  }

  else
  {
    v8 = v2;
  }

  v9 = swift_conformsToProtocol2();
  v46 = v0;
  if (v9 && v8)
  {
    v10 = v9;
    v11 = *(v9 + 8);
    swift_retain_n();
    v12 = v11(v8, v10);
    v0 = v46;
    *(v4 + 160) = v12;
  }

  else
  {
    v12 = swift_retain_n();
  }

  *(v4 + 64) = sub_1AF59AE14;
  *(v4 + 72) = KeyPath;
  *(v4 + 216) = 0;
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;
  *(v0 + 32) = v4;
  MEMORY[0x1EEE9AC00](v12);
  v13 = swift_getKeyPath();
  v14 = swift_allocObject();
  v14[4] = sub_1AF5A9510;
  v14[5] = v13;
  v14[2] = sub_1AF5A9ECC;
  v14[3] = v13;
  v14[6] = v13;
  v15 = swift_allocObject();
  *(v15 + 112) = 1;
  *(v15 + 128) = 0;
  *(v15 + 136) = 0;
  *(v15 + 120) = 0;
  *(v15 + 160) = MEMORY[0x1E69E7CC0];
  *(v15 + 168) = 0;
  *(v15 + 176) = 0;
  *(v15 + 216) = 0;
  *(v15 + 16) = 0x6E6F697463697266;
  *(v15 + 24) = 0xE800000000000000;
  *(v15 + 32) = v13;
  *(v15 + 40) = v2;
  *(v15 + 48) = 0;
  *(v15 + 56) = 1;
  *(v15 + 58) = 0;
  *(v15 + 184) = -1082130432;
  *(v15 + 188) = 0;
  *(v15 + 192) = 1065353216;
  *(v15 + 196) = 0;
  *(v15 + 200) = 1008981770;
  *(v15 + 204) = 0x10000;
  *(v15 + 208) = 1;
  *(v15 + 96) = 0;
  *(v15 + 104) = 0;
  *(v15 + 64) = 0;
  *(v15 + 72) = 0;
  *(v15 + 144) = xmmword_1AFE22A20;
  *(v15 + 80) = v14;
  *(v15 + 88) = &off_1F2535378;
  *(v15 + 210) = 0;

  if (v7)
  {
    v16 = (*(v7 + 8))(MEMORY[0x1E69E6448]);
  }

  else
  {
    v16 = v2;
  }

  v17 = swift_conformsToProtocol2();
  if (v17 && v16)
  {
    v18 = *(v17 + 8);
    v19 = v17;
    swift_retain_n();
    v20 = v18(v16, v19);
    v0 = v46;
    *(v15 + 160) = v20;
  }

  else
  {
    v20 = swift_retain_n();
  }

  *(v15 + 64) = sub_1AF5A9910;
  *(v15 + 72) = v13;
  *(v15 + 216) = 0;
  *(v15 + 168) = 0;
  *(v15 + 176) = 0;
  *(v0 + 40) = v15;
  MEMORY[0x1EEE9AC00](v20);
  v21 = swift_getKeyPath();
  v22 = swift_allocObject();
  v22[4] = sub_1AF5A9510;
  v22[5] = v21;
  v22[2] = sub_1AF5A9ECC;
  v22[3] = v21;
  v22[6] = v21;
  v23 = swift_allocObject();
  *(v23 + 112) = 1;
  *(v23 + 128) = 0;
  *(v23 + 136) = 0;
  *(v23 + 120) = 0;
  *(v23 + 160) = MEMORY[0x1E69E7CC0];
  *(v23 + 168) = 0;
  *(v23 + 176) = 0;
  *(v23 + 216) = 0;
  *(v23 + 16) = 0xD000000000000019;
  *(v23 + 24) = 0x80000001AFF24510;
  *(v23 + 32) = v21;
  *(v23 + 40) = v2;
  *(v23 + 48) = 0;
  *(v23 + 56) = 1;
  *(v23 + 58) = 0;
  *(v23 + 184) = 0;
  *(v23 + 188) = 0;
  *(v23 + 192) = 1065353216;
  *(v23 + 196) = 0;
  *(v23 + 200) = 1008981770;
  *(v23 + 204) = 0x10000;
  *(v23 + 208) = 1;
  *(v23 + 96) = 0;
  *(v23 + 104) = 0;
  *(v23 + 64) = 0;
  *(v23 + 72) = 0;
  *(v23 + 144) = xmmword_1AFE22A20;
  *(v23 + 80) = v22;
  *(v23 + 88) = &off_1F2535378;
  *(v23 + 210) = 0;

  if (v7)
  {
    v24 = (*(v7 + 8))(MEMORY[0x1E69E6448]);
  }

  else
  {
    v24 = v2;
  }

  v25 = swift_conformsToProtocol2();
  if (v25 && v24)
  {
    v26 = *(v25 + 8);
    v27 = v25;
    swift_retain_n();
    v28 = v26(v24, v27);
    v0 = v46;
    *(v23 + 160) = v28;
  }

  else
  {
    v28 = swift_retain_n();
  }

  *(v23 + 64) = sub_1AF5A9910;
  *(v23 + 72) = v21;
  *(v23 + 216) = 0;
  *(v23 + 168) = 0;
  *(v23 + 176) = 0;
  *(v0 + 48) = v23;
  MEMORY[0x1EEE9AC00](v28);
  v29 = swift_getKeyPath();
  v30 = swift_allocObject();
  v30[4] = sub_1AF5A9510;
  v30[5] = v29;
  v30[2] = sub_1AF5A9ECC;
  v30[3] = v29;
  v30[6] = v29;
  v31 = swift_allocObject();
  *(v31 + 112) = 1;
  *(v31 + 128) = 0;
  *(v31 + 136) = 0;
  *(v31 + 120) = 0;
  *(v31 + 160) = MEMORY[0x1E69E7CC0];
  *(v31 + 168) = 0;
  *(v31 + 176) = 0;
  *(v31 + 216) = 0;
  *(v31 + 16) = 0xD000000000000015;
  *(v31 + 24) = 0x80000001AFF244F0;
  *(v31 + 32) = v29;
  *(v31 + 40) = v2;
  *(v31 + 48) = 0;
  *(v31 + 56) = 1;
  *(v31 + 58) = 0;
  *(v31 + 184) = 0;
  *(v31 + 188) = 0;
  *(v31 + 192) = 1065353216;
  *(v31 + 196) = 0;
  *(v31 + 200) = 1008981770;
  *(v31 + 204) = 0x10000;
  *(v31 + 208) = 1;
  *(v31 + 96) = 0;
  *(v31 + 104) = 0;
  *(v31 + 64) = 0;
  *(v31 + 72) = 0;
  *(v31 + 144) = xmmword_1AFE22A20;
  *(v31 + 80) = v30;
  *(v31 + 88) = &off_1F2535378;
  *(v31 + 210) = 0;

  if (v7)
  {
    v2 = (*(v7 + 8))(MEMORY[0x1E69E6448]);
  }

  v32 = swift_conformsToProtocol2();
  if (v32 && v2)
  {
    v33 = *(v32 + 8);
    v34 = v32;
    swift_retain_n();
    v35 = v33(v2, v34);
    v0 = v46;
    *(v31 + 160) = v35;
  }

  else
  {
    v35 = swift_retain_n();
  }

  *(v31 + 64) = sub_1AF5A9910;
  *(v31 + 72) = v29;
  *(v31 + 216) = 0;
  *(v31 + 168) = 0;
  *(v31 + 176) = 0;
  *(v0 + 56) = v31;
  MEMORY[0x1EEE9AC00](v35);
  v36 = swift_getKeyPath();
  v37 = &type metadata for CollisionLayerSet;
  sub_1AF5A9240(0, &qword_1EB63AF50, &type metadata for CollisionLayerSet, type metadata accessor for EntityGetSet);
  v38 = swift_allocObject();
  v38[4] = sub_1AF59AD84;
  v38[5] = v36;
  v38[2] = sub_1AF59AE54;
  v38[3] = v36;
  v38[6] = v36;
  v39 = swift_allocObject();
  *(v39 + 112) = 1;
  *(v39 + 128) = 0;
  *(v39 + 136) = 0;
  *(v39 + 120) = 0;
  *(v39 + 160) = MEMORY[0x1E69E7CC0];
  *(v39 + 168) = 0;
  *(v39 + 176) = 0;
  *(v39 + 216) = 0;
  *(v39 + 16) = 0x73726579616CLL;
  *(v39 + 24) = 0xE600000000000000;
  *(v39 + 32) = v36;
  *(v39 + 40) = &type metadata for CollisionLayerSet;
  *(v39 + 48) = 0;
  *(v39 + 56) = 1;
  *(v39 + 58) = 0;
  *(v39 + 184) = 0;
  *(v39 + 188) = 1;
  *(v39 + 192) = 0;
  *(v39 + 196) = 1;
  *(v39 + 200) = 0x1000100000000;
  *(v39 + 208) = 1;
  *(v39 + 96) = 0;
  *(v39 + 104) = 0;
  *(v39 + 64) = 0;
  *(v39 + 72) = 0;
  *(v39 + 144) = xmmword_1AFE22A20;
  *(v39 + 80) = v38;
  *(v39 + 88) = &off_1F2535378;
  *(v39 + 210) = 0;
  v40 = swift_conformsToProtocol2();

  if (v40)
  {
    v37 = (*(v40 + 8))(&type metadata for CollisionLayerSet);
  }

  v41 = swift_conformsToProtocol2();
  if (v41 && v37)
  {
    v42 = *(v41 + 8);
    v43 = v41;
    swift_retain_n();
    v44 = v42(v37, v43);
    v0 = v46;
    *(v39 + 160) = v44;
  }

  else
  {
    swift_retain_n();
  }

  *(v39 + 64) = sub_1AF59AEC4;
  *(v39 + 72) = v36;
  *(v39 + 216) = 0;
  *(v39 + 168) = 0;
  *(v39 + 176) = 0;
  *(v0 + 64) = v39;
  return v0;
}

uint64_t sub_1AF4F7544()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE551C0;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF59B0EC;
  v3[5] = KeyPath;
  v3[2] = sub_1AF59B120;
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
  *(v4 + 16) = 0x6963697473616C65;
  *(v4 + 24) = 0xEA00000000007974;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = v2;
  *(v4 + 48) = 0;
  *(v4 + 56) = 1;
  *(v4 + 58) = 0;
  *(v4 + 184) = -1082130432;
  *(v4 + 188) = 0;
  *(v4 + 192) = 0;
  *(v4 + 196) = 1;
  *(v4 + 200) = 0x100003C23D70ALL;
  *(v4 + 208) = 1;
  *(v4 + 96) = 0;
  *(v4 + 104) = 0;
  *(v4 + 144) = xmmword_1AFE22A20;
  *(v4 + 80) = v3;
  *(v4 + 88) = &off_1F2535378;
  *(v4 + 210) = 0;
  v6 = swift_conformsToProtocol2();
  v7 = v6;
  if (v6)
  {
    v8 = (*(v6 + 8))(MEMORY[0x1E69E6448], v6);
  }

  else
  {
    v8 = v2;
  }

  v9 = swift_conformsToProtocol2();
  v46 = v0;
  if (v9 && v8)
  {
    v10 = v9;
    v11 = *(v9 + 8);
    swift_retain_n();
    v12 = v11(v8, v10);
    v0 = v46;
    *(v4 + 160) = v12;
  }

  else
  {
    v12 = swift_retain_n();
  }

  *(v4 + 64) = sub_1AF59B17C;
  *(v4 + 72) = KeyPath;
  *(v4 + 216) = 0;
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;
  *(v0 + 32) = v4;
  MEMORY[0x1EEE9AC00](v12);
  v13 = swift_getKeyPath();
  v14 = swift_allocObject();
  v14[4] = sub_1AF5A9514;
  v14[5] = v13;
  v14[2] = sub_1AF5A9ED4;
  v14[3] = v13;
  v14[6] = v13;
  v15 = swift_allocObject();
  *(v15 + 112) = 1;
  *(v15 + 128) = 0;
  *(v15 + 136) = 0;
  *(v15 + 120) = 0;
  *(v15 + 160) = MEMORY[0x1E69E7CC0];
  *(v15 + 168) = 0;
  *(v15 + 176) = 0;
  *(v15 + 216) = 0;
  *(v15 + 16) = 0x6E6F697463697266;
  *(v15 + 24) = 0xE800000000000000;
  *(v15 + 32) = v13;
  *(v15 + 40) = v2;
  *(v15 + 48) = 0;
  *(v15 + 56) = 1;
  *(v15 + 58) = 0;
  *(v15 + 184) = -1082130432;
  *(v15 + 188) = 0;
  *(v15 + 192) = 1065353216;
  *(v15 + 196) = 0;
  *(v15 + 200) = 1008981770;
  *(v15 + 204) = 0x10000;
  *(v15 + 208) = 1;
  *(v15 + 96) = 0;
  *(v15 + 104) = 0;
  *(v15 + 64) = 0;
  *(v15 + 72) = 0;
  *(v15 + 144) = xmmword_1AFE22A20;
  *(v15 + 80) = v14;
  *(v15 + 88) = &off_1F2535378;
  *(v15 + 210) = 0;

  if (v7)
  {
    v16 = (*(v7 + 8))(MEMORY[0x1E69E6448]);
  }

  else
  {
    v16 = v2;
  }

  v17 = swift_conformsToProtocol2();
  if (v17 && v16)
  {
    v18 = *(v17 + 8);
    v19 = v17;
    swift_retain_n();
    v20 = v18(v16, v19);
    v0 = v46;
    *(v15 + 160) = v20;
  }

  else
  {
    v20 = swift_retain_n();
  }

  *(v15 + 64) = sub_1AF5A9914;
  *(v15 + 72) = v13;
  *(v15 + 216) = 0;
  *(v15 + 168) = 0;
  *(v15 + 176) = 0;
  *(v0 + 40) = v15;
  MEMORY[0x1EEE9AC00](v20);
  v21 = swift_getKeyPath();
  v22 = swift_allocObject();
  v22[4] = sub_1AF5A9514;
  v22[5] = v21;
  v22[2] = sub_1AF5A9ED4;
  v22[3] = v21;
  v22[6] = v21;
  v23 = swift_allocObject();
  *(v23 + 112) = 1;
  *(v23 + 128) = 0;
  *(v23 + 136) = 0;
  *(v23 + 120) = 0;
  *(v23 + 160) = MEMORY[0x1E69E7CC0];
  *(v23 + 168) = 0;
  *(v23 + 176) = 0;
  *(v23 + 216) = 0;
  *(v23 + 16) = 0xD000000000000019;
  *(v23 + 24) = 0x80000001AFF24510;
  *(v23 + 32) = v21;
  *(v23 + 40) = v2;
  *(v23 + 48) = 0;
  *(v23 + 56) = 1;
  *(v23 + 58) = 0;
  *(v23 + 184) = 0;
  *(v23 + 188) = 0;
  *(v23 + 192) = 1065353216;
  *(v23 + 196) = 0;
  *(v23 + 200) = 1008981770;
  *(v23 + 204) = 0x10000;
  *(v23 + 208) = 1;
  *(v23 + 96) = 0;
  *(v23 + 104) = 0;
  *(v23 + 64) = 0;
  *(v23 + 72) = 0;
  *(v23 + 144) = xmmword_1AFE22A20;
  *(v23 + 80) = v22;
  *(v23 + 88) = &off_1F2535378;
  *(v23 + 210) = 0;

  if (v7)
  {
    v24 = (*(v7 + 8))(MEMORY[0x1E69E6448]);
  }

  else
  {
    v24 = v2;
  }

  v25 = swift_conformsToProtocol2();
  if (v25 && v24)
  {
    v26 = *(v25 + 8);
    v27 = v25;
    swift_retain_n();
    v28 = v26(v24, v27);
    v0 = v46;
    *(v23 + 160) = v28;
  }

  else
  {
    v28 = swift_retain_n();
  }

  *(v23 + 64) = sub_1AF5A9914;
  *(v23 + 72) = v21;
  *(v23 + 216) = 0;
  *(v23 + 168) = 0;
  *(v23 + 176) = 0;
  *(v0 + 48) = v23;
  MEMORY[0x1EEE9AC00](v28);
  v29 = swift_getKeyPath();
  v30 = swift_allocObject();
  v30[4] = sub_1AF5A9514;
  v30[5] = v29;
  v30[2] = sub_1AF5A9ED4;
  v30[3] = v29;
  v30[6] = v29;
  v31 = swift_allocObject();
  *(v31 + 112) = 1;
  *(v31 + 128) = 0;
  *(v31 + 136) = 0;
  *(v31 + 120) = 0;
  *(v31 + 160) = MEMORY[0x1E69E7CC0];
  *(v31 + 168) = 0;
  *(v31 + 176) = 0;
  *(v31 + 216) = 0;
  *(v31 + 16) = 0xD000000000000015;
  *(v31 + 24) = 0x80000001AFF244F0;
  *(v31 + 32) = v29;
  *(v31 + 40) = v2;
  *(v31 + 48) = 0;
  *(v31 + 56) = 1;
  *(v31 + 58) = 0;
  *(v31 + 184) = 0;
  *(v31 + 188) = 0;
  *(v31 + 192) = 1065353216;
  *(v31 + 196) = 0;
  *(v31 + 200) = 1008981770;
  *(v31 + 204) = 0x10000;
  *(v31 + 208) = 1;
  *(v31 + 96) = 0;
  *(v31 + 104) = 0;
  *(v31 + 64) = 0;
  *(v31 + 72) = 0;
  *(v31 + 144) = xmmword_1AFE22A20;
  *(v31 + 80) = v30;
  *(v31 + 88) = &off_1F2535378;
  *(v31 + 210) = 0;

  if (v7)
  {
    v2 = (*(v7 + 8))(MEMORY[0x1E69E6448]);
  }

  v32 = swift_conformsToProtocol2();
  if (v32 && v2)
  {
    v33 = *(v32 + 8);
    v34 = v32;
    swift_retain_n();
    v35 = v33(v2, v34);
    v0 = v46;
    *(v31 + 160) = v35;
  }

  else
  {
    v35 = swift_retain_n();
  }

  *(v31 + 64) = sub_1AF5A9914;
  *(v31 + 72) = v29;
  *(v31 + 216) = 0;
  *(v31 + 168) = 0;
  *(v31 + 176) = 0;
  *(v0 + 56) = v31;
  MEMORY[0x1EEE9AC00](v35);
  v36 = swift_getKeyPath();
  v37 = &type metadata for CollisionLayerSet;
  sub_1AF5A9240(0, &qword_1EB63AF50, &type metadata for CollisionLayerSet, type metadata accessor for EntityGetSet);
  v38 = swift_allocObject();
  v38[4] = sub_1AF59B0EC;
  v38[5] = v36;
  v38[2] = sub_1AF59B1BC;
  v38[3] = v36;
  v38[6] = v36;
  v39 = swift_allocObject();
  *(v39 + 112) = 1;
  *(v39 + 128) = 0;
  *(v39 + 136) = 0;
  *(v39 + 120) = 0;
  *(v39 + 160) = MEMORY[0x1E69E7CC0];
  *(v39 + 168) = 0;
  *(v39 + 176) = 0;
  *(v39 + 216) = 0;
  *(v39 + 16) = 0x73726579616CLL;
  *(v39 + 24) = 0xE600000000000000;
  *(v39 + 32) = v36;
  *(v39 + 40) = &type metadata for CollisionLayerSet;
  *(v39 + 48) = 0;
  *(v39 + 56) = 1;
  *(v39 + 58) = 0;
  *(v39 + 184) = 0;
  *(v39 + 188) = 1;
  *(v39 + 192) = 0;
  *(v39 + 196) = 1;
  *(v39 + 200) = 0x1000100000000;
  *(v39 + 208) = 1;
  *(v39 + 96) = 0;
  *(v39 + 104) = 0;
  *(v39 + 64) = 0;
  *(v39 + 72) = 0;
  *(v39 + 144) = xmmword_1AFE22A20;
  *(v39 + 80) = v38;
  *(v39 + 88) = &off_1F2535378;
  *(v39 + 210) = 0;
  v40 = swift_conformsToProtocol2();

  if (v40)
  {
    v37 = (*(v40 + 8))(&type metadata for CollisionLayerSet);
  }

  v41 = swift_conformsToProtocol2();
  if (v41 && v37)
  {
    v42 = *(v41 + 8);
    v43 = v41;
    swift_retain_n();
    v44 = v42(v37, v43);
    v0 = v46;
    *(v39 + 160) = v44;
  }

  else
  {
    swift_retain_n();
  }

  *(v39 + 64) = sub_1AF59B22C;
  *(v39 + 72) = v36;
  *(v39 + 216) = 0;
  *(v39 + 168) = 0;
  *(v39 + 176) = 0;
  *(v0 + 64) = v39;
  return v0;
}

uint64_t sub_1AF4F8054()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE551C0;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF59B6F4;
  v3[5] = KeyPath;
  v3[2] = sub_1AF59B738;
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
  *(v4 + 16) = 0x6963697473616C65;
  *(v4 + 24) = 0xEA00000000007974;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = v2;
  *(v4 + 48) = 0;
  *(v4 + 56) = 1;
  *(v4 + 58) = 0;
  *(v4 + 184) = -1082130432;
  *(v4 + 188) = 0;
  *(v4 + 192) = 0;
  *(v4 + 196) = 1;
  *(v4 + 200) = 0x100003C23D70ALL;
  *(v4 + 208) = 1;
  *(v4 + 96) = 0;
  *(v4 + 104) = 0;
  *(v4 + 144) = xmmword_1AFE22A20;
  *(v4 + 80) = v3;
  *(v4 + 88) = &off_1F2535378;
  *(v4 + 210) = 0;
  v6 = swift_conformsToProtocol2();
  v7 = v6;
  if (v6)
  {
    v8 = (*(v6 + 8))(MEMORY[0x1E69E6448], v6);
  }

  else
  {
    v8 = v2;
  }

  v9 = swift_conformsToProtocol2();
  v46 = v0;
  if (v9 && v8)
  {
    v10 = v9;
    v11 = *(v9 + 8);
    swift_retain_n();
    v12 = v11(v8, v10);
    v0 = v46;
    *(v4 + 160) = v12;
  }

  else
  {
    v12 = swift_retain_n();
  }

  *(v4 + 64) = sub_1AF59B794;
  *(v4 + 72) = KeyPath;
  *(v4 + 216) = 0;
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;
  *(v0 + 32) = v4;
  MEMORY[0x1EEE9AC00](v12);
  v13 = swift_getKeyPath();
  v14 = swift_allocObject();
  v14[4] = sub_1AF5A951C;
  v14[5] = v13;
  v14[2] = sub_1AF5A9EEC;
  v14[3] = v13;
  v14[6] = v13;
  v15 = swift_allocObject();
  *(v15 + 112) = 1;
  *(v15 + 128) = 0;
  *(v15 + 136) = 0;
  *(v15 + 120) = 0;
  *(v15 + 160) = MEMORY[0x1E69E7CC0];
  *(v15 + 168) = 0;
  *(v15 + 176) = 0;
  *(v15 + 216) = 0;
  *(v15 + 16) = 0x6E6F697463697266;
  *(v15 + 24) = 0xE800000000000000;
  *(v15 + 32) = v13;
  *(v15 + 40) = v2;
  *(v15 + 48) = 0;
  *(v15 + 56) = 1;
  *(v15 + 58) = 0;
  *(v15 + 184) = -1082130432;
  *(v15 + 188) = 0;
  *(v15 + 192) = 1065353216;
  *(v15 + 196) = 0;
  *(v15 + 200) = 1008981770;
  *(v15 + 204) = 0x10000;
  *(v15 + 208) = 1;
  *(v15 + 96) = 0;
  *(v15 + 104) = 0;
  *(v15 + 64) = 0;
  *(v15 + 72) = 0;
  *(v15 + 144) = xmmword_1AFE22A20;
  *(v15 + 80) = v14;
  *(v15 + 88) = &off_1F2535378;
  *(v15 + 210) = 0;

  if (v7)
  {
    v16 = (*(v7 + 8))(MEMORY[0x1E69E6448]);
  }

  else
  {
    v16 = v2;
  }

  v17 = swift_conformsToProtocol2();
  if (v17 && v16)
  {
    v18 = *(v17 + 8);
    v19 = v17;
    swift_retain_n();
    v20 = v18(v16, v19);
    v0 = v46;
    *(v15 + 160) = v20;
  }

  else
  {
    v20 = swift_retain_n();
  }

  *(v15 + 64) = sub_1AF5A991C;
  *(v15 + 72) = v13;
  *(v15 + 216) = 0;
  *(v15 + 168) = 0;
  *(v15 + 176) = 0;
  *(v0 + 40) = v15;
  MEMORY[0x1EEE9AC00](v20);
  v21 = swift_getKeyPath();
  v22 = swift_allocObject();
  v22[4] = sub_1AF5A951C;
  v22[5] = v21;
  v22[2] = sub_1AF5A9EEC;
  v22[3] = v21;
  v22[6] = v21;
  v23 = swift_allocObject();
  *(v23 + 112) = 1;
  *(v23 + 128) = 0;
  *(v23 + 136) = 0;
  *(v23 + 120) = 0;
  *(v23 + 160) = MEMORY[0x1E69E7CC0];
  *(v23 + 168) = 0;
  *(v23 + 176) = 0;
  *(v23 + 216) = 0;
  *(v23 + 16) = 0xD000000000000019;
  *(v23 + 24) = 0x80000001AFF24510;
  *(v23 + 32) = v21;
  *(v23 + 40) = v2;
  *(v23 + 48) = 0;
  *(v23 + 56) = 1;
  *(v23 + 58) = 0;
  *(v23 + 184) = 0;
  *(v23 + 188) = 0;
  *(v23 + 192) = 1065353216;
  *(v23 + 196) = 0;
  *(v23 + 200) = 1008981770;
  *(v23 + 204) = 0x10000;
  *(v23 + 208) = 1;
  *(v23 + 96) = 0;
  *(v23 + 104) = 0;
  *(v23 + 64) = 0;
  *(v23 + 72) = 0;
  *(v23 + 144) = xmmword_1AFE22A20;
  *(v23 + 80) = v22;
  *(v23 + 88) = &off_1F2535378;
  *(v23 + 210) = 0;

  if (v7)
  {
    v24 = (*(v7 + 8))(MEMORY[0x1E69E6448]);
  }

  else
  {
    v24 = v2;
  }

  v25 = swift_conformsToProtocol2();
  if (v25 && v24)
  {
    v26 = *(v25 + 8);
    v27 = v25;
    swift_retain_n();
    v28 = v26(v24, v27);
    v0 = v46;
    *(v23 + 160) = v28;
  }

  else
  {
    v28 = swift_retain_n();
  }

  *(v23 + 64) = sub_1AF5A991C;
  *(v23 + 72) = v21;
  *(v23 + 216) = 0;
  *(v23 + 168) = 0;
  *(v23 + 176) = 0;
  *(v0 + 48) = v23;
  MEMORY[0x1EEE9AC00](v28);
  v29 = swift_getKeyPath();
  v30 = swift_allocObject();
  v30[4] = sub_1AF5A951C;
  v30[5] = v29;
  v30[2] = sub_1AF5A9EEC;
  v30[3] = v29;
  v30[6] = v29;
  v31 = swift_allocObject();
  *(v31 + 112) = 1;
  *(v31 + 128) = 0;
  *(v31 + 136) = 0;
  *(v31 + 120) = 0;
  *(v31 + 160) = MEMORY[0x1E69E7CC0];
  *(v31 + 168) = 0;
  *(v31 + 176) = 0;
  *(v31 + 216) = 0;
  *(v31 + 16) = 0xD000000000000015;
  *(v31 + 24) = 0x80000001AFF244F0;
  *(v31 + 32) = v29;
  *(v31 + 40) = v2;
  *(v31 + 48) = 0;
  *(v31 + 56) = 1;
  *(v31 + 58) = 0;
  *(v31 + 184) = 0;
  *(v31 + 188) = 0;
  *(v31 + 192) = 1065353216;
  *(v31 + 196) = 0;
  *(v31 + 200) = 1008981770;
  *(v31 + 204) = 0x10000;
  *(v31 + 208) = 1;
  *(v31 + 96) = 0;
  *(v31 + 104) = 0;
  *(v31 + 64) = 0;
  *(v31 + 72) = 0;
  *(v31 + 144) = xmmword_1AFE22A20;
  *(v31 + 80) = v30;
  *(v31 + 88) = &off_1F2535378;
  *(v31 + 210) = 0;

  if (v7)
  {
    v2 = (*(v7 + 8))(MEMORY[0x1E69E6448]);
  }

  v32 = swift_conformsToProtocol2();
  if (v32 && v2)
  {
    v33 = *(v32 + 8);
    v34 = v32;
    swift_retain_n();
    v35 = v33(v2, v34);
    v0 = v46;
    *(v31 + 160) = v35;
  }

  else
  {
    v35 = swift_retain_n();
  }

  *(v31 + 64) = sub_1AF5A991C;
  *(v31 + 72) = v29;
  *(v31 + 216) = 0;
  *(v31 + 168) = 0;
  *(v31 + 176) = 0;
  *(v0 + 56) = v31;
  MEMORY[0x1EEE9AC00](v35);
  v36 = swift_getKeyPath();
  v37 = &type metadata for CollisionLayerSet;
  sub_1AF5A9240(0, &qword_1EB63AF50, &type metadata for CollisionLayerSet, type metadata accessor for EntityGetSet);
  v38 = swift_allocObject();
  v38[4] = sub_1AF59B6F4;
  v38[5] = v36;
  v38[2] = sub_1AF59B7D4;
  v38[3] = v36;
  v38[6] = v36;
  v39 = swift_allocObject();
  *(v39 + 112) = 1;
  *(v39 + 128) = 0;
  *(v39 + 136) = 0;
  *(v39 + 120) = 0;
  *(v39 + 160) = MEMORY[0x1E69E7CC0];
  *(v39 + 168) = 0;
  *(v39 + 176) = 0;
  *(v39 + 216) = 0;
  *(v39 + 16) = 0x73726579616CLL;
  *(v39 + 24) = 0xE600000000000000;
  *(v39 + 32) = v36;
  *(v39 + 40) = &type metadata for CollisionLayerSet;
  *(v39 + 48) = 0;
  *(v39 + 56) = 1;
  *(v39 + 58) = 0;
  *(v39 + 184) = 0;
  *(v39 + 188) = 1;
  *(v39 + 192) = 0;
  *(v39 + 196) = 1;
  *(v39 + 200) = 0x1000100000000;
  *(v39 + 208) = 1;
  *(v39 + 96) = 0;
  *(v39 + 104) = 0;
  *(v39 + 64) = 0;
  *(v39 + 72) = 0;
  *(v39 + 144) = xmmword_1AFE22A20;
  *(v39 + 80) = v38;
  *(v39 + 88) = &off_1F2535378;
  *(v39 + 210) = 0;
  v40 = swift_conformsToProtocol2();

  if (v40)
  {
    v37 = (*(v40 + 8))(&type metadata for CollisionLayerSet);
  }

  v41 = swift_conformsToProtocol2();
  if (v41 && v37)
  {
    v42 = *(v41 + 8);
    v43 = v41;
    swift_retain_n();
    v44 = v42(v37, v43);
    v0 = v46;
    *(v39 + 160) = v44;
  }

  else
  {
    swift_retain_n();
  }

  *(v39 + 64) = sub_1AF59B844;
  *(v39 + 72) = v36;
  *(v39 + 216) = 0;
  *(v39 + 168) = 0;
  *(v39 + 176) = 0;
  *(v0 + 64) = v39;
  return v0;
}

uint64_t sub_1AF4F8B64()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1AFE55260;
  KeyPath = swift_getKeyPath();
  v1 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v2 = swift_allocObject();
  v2[4] = sub_1AF59AA6C;
  v2[5] = KeyPath;
  v2[2] = sub_1AF59AAB0;
  v2[3] = KeyPath;
  v2[6] = KeyPath;
  type metadata accessor for PropertyDescription();
  v3 = swift_allocObject();
  *(v3 + 112) = 1;
  *(v3 + 128) = 0;
  *(v3 + 136) = 0;
  *(v3 + 120) = 0;
  *(v3 + 160) = MEMORY[0x1E69E7CC0];
  *(v3 + 168) = 0;
  *(v3 + 216) = 0;
  *(v3 + 176) = 0;
  strcpy((v3 + 16), "elasticityBias");
  *(v3 + 31) = -18;
  *(v3 + 32) = KeyPath;
  *(v3 + 40) = v1;
  *(v3 + 48) = 8;
  *(v3 + 56) = 0;
  *(v3 + 58) = 0;
  *(v3 + 184) = 0;
  *(v3 + 188) = 1;
  *(v3 + 192) = 0;
  *(v3 + 196) = 1;
  *(v3 + 200) = 0x1000100000000;
  *(v3 + 208) = 1;
  *(v3 + 96) = 0;
  *(v3 + 104) = 0;
  *(v3 + 64) = 0;
  *(v3 + 72) = 0;
  *(v3 + 144) = xmmword_1AFE22A20;
  *(v3 + 80) = v2;
  *(v3 + 88) = &off_1F2535378;
  *(v3 + 210) = 0;
  v4 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v4)
  {
    v5 = (*(v4 + 8))();
  }

  else
  {
    v5 = v1;
  }

  v6 = swift_conformsToProtocol2();
  if (v6 && v5)
  {
    *(v3 + 160) = (*(v6 + 8))(v5, v6);
  }

  *(v3 + 64) = sub_1AF59AB0C;
  *(v3 + 72) = KeyPath;
  sub_1AF0FB8EC(0, 0);
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;

  *(v3 + 216) = 0;
  *(v33 + 32) = v3;
  v7 = swift_getKeyPath();
  v8 = swift_allocObject();
  v8[4] = sub_1AF5A950C;
  v8[5] = v7;
  v8[2] = sub_1AF5A9EC0;
  v8[3] = v7;
  v8[6] = v7;
  v9 = swift_allocObject();
  *(v9 + 112) = 1;
  *(v9 + 128) = 0;
  *(v9 + 136) = 0;
  *(v9 + 120) = 0;
  *(v9 + 160) = MEMORY[0x1E69E7CC0];
  *(v9 + 168) = 0;
  *(v9 + 216) = 0;
  *(v9 + 176) = 0;
  strcpy((v9 + 16), "frictionBias");
  *(v9 + 29) = 0;
  *(v9 + 30) = -5120;
  *(v9 + 32) = v7;
  *(v9 + 40) = v1;
  *(v9 + 48) = 12;
  *(v9 + 56) = 0;
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
  *(v9 + 104) = 0;
  *(v9 + 144) = xmmword_1AFE22A20;
  *(v9 + 80) = v8;
  *(v9 + 88) = &off_1F2535378;
  *(v9 + 210) = 0;
  swift_retain_n();
  if (v4)
  {
    v10 = (*(v4 + 8))();
  }

  else
  {
    v10 = v1;
  }

  v11 = swift_conformsToProtocol2();
  if (v11 && v10)
  {
    *(v9 + 160) = (*(v11 + 8))(v10, v11);
  }

  *(v9 + 64) = sub_1AF5A9908;
  *(v9 + 72) = v7;
  sub_1AF0FB8EC(0, 0);
  *(v9 + 168) = 0;
  *(v9 + 176) = 0;

  *(v9 + 216) = 0;
  *(v33 + 40) = v9;
  v12 = swift_getKeyPath();
  v13 = swift_allocObject();
  v13[4] = sub_1AF5A950C;
  v13[5] = v12;
  v13[2] = sub_1AF5A9EC0;
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
  *(v14 + 16) = 0xD00000000000001DLL;
  *(v14 + 24) = 0x80000001AFF2B630;
  *(v14 + 32) = v12;
  *(v14 + 40) = v1;
  *(v14 + 48) = 4;
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
  if (v4)
  {
    v15 = (*(v4 + 8))();
  }

  else
  {
    v15 = v1;
  }

  v16 = swift_conformsToProtocol2();
  if (v16 && v15)
  {
    *(v14 + 160) = (*(v16 + 8))(v15, v16);
  }

  *(v14 + 64) = sub_1AF5A9908;
  *(v14 + 72) = v12;
  sub_1AF0FB8EC(0, 0);
  *(v14 + 168) = 0;
  *(v14 + 176) = 0;

  *(v14 + 216) = 0;
  *(v33 + 48) = v14;
  v17 = swift_getKeyPath();
  v18 = swift_allocObject();
  v18[4] = sub_1AF5A950C;
  v18[5] = v17;
  v18[2] = sub_1AF5A9EC0;
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
  *(v19 + 16) = 0xD000000000000019;
  *(v19 + 24) = 0x80000001AFF2B650;
  *(v19 + 32) = v17;
  *(v19 + 40) = v1;
  *(v19 + 48) = 0;
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
  if (v4)
  {
    v20 = (*(v4 + 8))();
  }

  else
  {
    v20 = v1;
  }

  v21 = swift_conformsToProtocol2();
  if (v21 && v20)
  {
    *(v19 + 160) = (*(v21 + 8))(v20, v21);
  }

  *(v19 + 64) = sub_1AF5A9908;
  *(v19 + 72) = v17;
  sub_1AF0FB8EC(0, 0);
  *(v19 + 168) = 0;
  *(v19 + 176) = 0;

  *(v19 + 216) = 0;
  *(v33 + 56) = v19;
  v22 = swift_getKeyPath();
  v23 = swift_allocObject();
  v23[4] = sub_1AF5A950C;
  v23[5] = v22;
  v23[2] = sub_1AF5A9EC0;
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
  *(v24 + 16) = 0xD000000000000010;
  *(v24 + 24) = 0x80000001AFF24540;
  *(v24 + 32) = v22;
  *(v24 + 40) = v1;
  *(v24 + 48) = 16;
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
  swift_retain_n();
  if (v4)
  {
    v1 = (*(v4 + 8))();
  }

  v25 = swift_conformsToProtocol2();
  if (v25 && v1)
  {
    *(v24 + 160) = (*(v25 + 8))(v1, v25);
  }

  *(v24 + 64) = sub_1AF5A9908;
  *(v24 + 72) = v22;
  sub_1AF0FB8EC(0, 0);
  *(v24 + 168) = 0;
  *(v24 + 176) = 0;

  *(v24 + 216) = 0;
  *(v33 + 64) = v24;
  v26 = swift_getKeyPath();
  v27 = &type metadata for CollisionLayerSet;
  sub_1AF5A9240(0, &qword_1EB63AF50, &type metadata for CollisionLayerSet, type metadata accessor for EntityGetSet);
  v28 = swift_allocObject();
  v28[4] = sub_1AF59AA6C;
  v28[5] = v26;
  v28[2] = sub_1AF59AB4C;
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
  *(v29 + 16) = 0x73726579616CLL;
  *(v29 + 24) = 0xE600000000000000;
  *(v29 + 32) = v26;
  *(v29 + 40) = &type metadata for CollisionLayerSet;
  *(v29 + 48) = 20;
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

  *(v29 + 64) = sub_1AF59ABBC;
  *(v29 + 72) = v26;
  sub_1AF0FB8EC(0, 0);
  *(v29 + 168) = 0;
  *(v29 + 176) = 0;

  *(v29 + 216) = 0;
  *(v33 + 72) = v29;
  qword_1EB6C2FF8 = v33;
  return result;
}

uint64_t sub_1AF4F97BC()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE55130;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6370];
  sub_1AF5A9240(0, &qword_1ED722B80, MEMORY[0x1E69E6370], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF59ACBC;
  v3[5] = KeyPath;
  v3[2] = sub_1AF59ACE8;
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
  *(v4 + 16) = 0x6574696E69666E49;
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

  *(v4 + 64) = sub_1AF59AD44;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0, 0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  v8 = swift_getKeyPath();
  v9 = swift_allocObject();
  v9[4] = sub_1AF5AA1FC;
  v9[5] = v8;
  v9[2] = sub_1AF5A9EC8;
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
  strcpy((v10 + 16), "Double sided");
  *(v10 + 29) = 0;
  *(v10 + 30) = -5120;
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
    v2 = (*(v5 + 8))();
  }

  v11 = swift_conformsToProtocol2();
  if (v11 && v2)
  {
    *(v10 + 160) = (*(v11 + 8))(v2, v11);
  }

  *(v10 + 64) = sub_1AF5A990C;
  *(v10 + 72) = v8;
  sub_1AF0FB8EC(0, 0);
  *(v10 + 168) = 0;
  *(v10 + 176) = 0;

  *(v10 + 216) = 0;
  *(v0 + 40) = v10;
  *(v0 + 48) = sub_1AF577370(1039, 0x65747845666C6168, 0xEB0000000073746ELL, &type metadata for Scale2, &off_1F252F7B8, 0x656C616373, 0xE500000000000000);
  v12 = sub_1AF4F6A34();
  result = sub_1AF48F810(v12, sub_1AF56E184);
  qword_1EB6C3000 = v0;
  return result;
}

uint64_t sub_1AF4F9D5C()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C3E0;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6370];
  sub_1AF5A9240(0, &qword_1ED722B80, MEMORY[0x1E69E6370], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF59B024;
  v3[5] = KeyPath;
  v3[2] = sub_1AF59B050;
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
  *(v4 + 16) = 0x656469736E69;
  *(v4 + 24) = 0xE600000000000000;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = v2;
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

  *(v4 + 64) = sub_1AF59B0AC;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0, 0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  v7 = sub_1AF4F7544();
  result = sub_1AF48F810(v7, sub_1AF56E184);
  qword_1EB6C3008 = v0;
  return result;
}

uint64_t sub_1AF4FA0CC()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE550E0;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6370];
  sub_1AF5A9240(0, &qword_1ED722B80, MEMORY[0x1E69E6370], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF59B38C;
  v3[5] = KeyPath;
  v3[2] = sub_1AF59B3B8;
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
  *(v4 + 16) = 0x656469736E69;
  *(v4 + 24) = 0xE600000000000000;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = v2;
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

  *(v4 + 64) = sub_1AF59B414;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0, 0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  v8 = swift_getKeyPath();
  v9 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v10 = swift_allocObject();
  v10[4] = sub_1AF59B454;
  v10[5] = v8;
  v10[2] = sub_1AF59B488;
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
  strcpy((v11 + 16), "cornerRadius");
  *(v11 + 29) = 0;
  *(v11 + 30) = -5120;
  *(v11 + 32) = v8;
  *(v11 + 40) = v9;
  *(v11 + 48) = 20;
  *(v11 + 56) = 0;
  *(v11 + 58) = 0;
  *(v11 + 184) = 0;
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

  *(v11 + 64) = sub_1AF59B4E4;
  *(v11 + 72) = v8;
  sub_1AF0FB8EC(0, 0);
  *(v11 + 168) = 0;
  *(v11 + 176) = 0;

  *(v11 + 216) = 0;
  *(v0 + 40) = v11;
  v14 = sub_1AF4F4904();
  result = sub_1AF48F810(v14, sub_1AF56E184);
  qword_1EB6C3010 = v0;
  return result;
}