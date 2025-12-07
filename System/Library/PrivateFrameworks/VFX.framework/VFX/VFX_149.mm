uint64_t sub_1AFC5C5B4()
{
  sub_1AFC7246C(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE550E0;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6370];
  sub_1AFC7246C(0, &qword_1ED722B80, MEMORY[0x1E69E6370], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AFC70E50;
  v3[5] = KeyPath;
  v3[2] = sub_1AFC70E7C;
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
  *(v4 + 16) = 0x64656C62616E65;
  *(v4 + 24) = 0xE700000000000000;
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

  *(v4 + 64) = sub_1AFC70E88;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0, 0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  v8 = swift_getKeyPath();
  v9 = MEMORY[0x1E69E6448];
  sub_1AFC7246C(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v10 = swift_allocObject();
  v10[4] = sub_1AFC70E90;
  v10[5] = v8;
  v10[2] = sub_1AFC70EC4;
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
  *(v11 + 16) = 0x7469736E65746E69;
  *(v11 + 24) = 0xE900000000000079;
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

  *(v11 + 64) = sub_1AFC70ED0;
  *(v11 + 72) = v8;
  sub_1AF0FB8EC(0, 0);
  *(v11 + 168) = 0;
  *(v11 + 176) = 0;

  *(v11 + 216) = 0;
  *(v0 + 40) = v11;
  qword_1EB6C3640 = v0;
  return result;
}

uint64_t sub_1AFC5CB04()
{
  sub_1AFC7246C(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE550E0;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6370];
  sub_1AFC7246C(0, &qword_1ED722B80, MEMORY[0x1E69E6370], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AFC70F3C;
  v3[5] = KeyPath;
  v3[2] = sub_1AFC70F70;
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
  *(v4 + 16) = 0x64656C62616E65;
  *(v4 + 24) = 0xE700000000000000;
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

  *(v4 + 64) = sub_1AFC70F7C;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0, 0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  v8 = swift_getKeyPath();
  v9 = MEMORY[0x1E69E6448];
  sub_1AFC7246C(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v10 = swift_allocObject();
  v10[4] = sub_1AFC70F84;
  v10[5] = v8;
  v10[2] = sub_1AFC70FB8;
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
  *(v11 + 16) = 0x706F745366;
  *(v11 + 24) = 0xE500000000000000;
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

  *(v11 + 64) = sub_1AFC70FC4;
  *(v11 + 72) = v8;
  sub_1AF0FB8EC(0, 0);
  *(v11 + 168) = 0;
  *(v11 + 176) = 0;

  *(v11 + 216) = 0;
  *(v0 + 40) = v11;
  qword_1EB6C3648 = v0;
  return result;
}

void sub_1AFC5CFF4(SEL *a1)
{
  if ([objc_opt_self() immediateMode])
  {
    v3 = v1[4];
    v4 = v3;
    if (!v3)
    {
      return;
    }

    goto LABEL_3;
  }

  sub_1AFC73A9C(v1, v8);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1AF0F2990(v8);
  if (Strong)
  {
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6)
    {
      v7 = [v6 camera];
      swift_unknownObjectRelease();
      if (v7)
      {
        v3 = [v7 chromaticTransform];

        if (v3)
        {
LABEL_3:
          [v3 *a1];
        }
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }
}

void sub_1AFC5D128(SEL *a1, SEL *a2)
{
  if (![objc_opt_self() immediateMode])
  {
    sub_1AFC73A9C(v2, v10);
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1AF0F2990(v10);
    if (!Strong)
    {
      return;
    }

    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (!v8)
    {
      swift_unknownObjectRelease();
      return;
    }

    v9 = [v8 camera];
    swift_unknownObjectRelease();
    v5 = [v9 *a2];

    if (!v5)
    {
      return;
    }

LABEL_7:
    [v5 *a1];

    return;
  }

  v5 = v2[4];
  v6 = v5;
  if (v5)
  {
    goto LABEL_7;
  }
}

double sub_1AFC5D27C(SEL *a1)
{
  if ([objc_opt_self() immediateMode])
  {
    v3 = v1[4];
    v4 = v3;
    if (!v3)
    {
      return 0.0;
    }

LABEL_7:
    [v3 *a1];
    v10 = v8;

    return v10;
  }

  sub_1AFC73A9C(v1, v11);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1AF0F2990(v11);
  if (Strong)
  {
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6)
    {
      v7 = [v6 camera];
      swift_unknownObjectRelease();
      v3 = [v7 chromaticTransform];

      if (v3)
      {
        goto LABEL_7;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  return 0.0;
}

uint64_t sub_1AFC5D44C()
{
  sub_1AFC7246C(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFEA65A0;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6370];
  sub_1AFC7246C(0, &qword_1ED722B80, MEMORY[0x1E69E6370], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AFC7116C;
  v3[5] = KeyPath;
  v3[2] = sub_1AFC711A0;
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
    v2 = (*(v5 + 8))();
  }

  v6 = swift_conformsToProtocol2();
  if (v6 && v2)
  {
    *(v4 + 160) = (*(v6 + 8))(v2, v6);
  }

  v7 = *(v4 + 64);
  v8 = *(v4 + 72);
  *(v4 + 64) = sub_1AFC711AC;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(v7, v8);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;

  *(v0 + 32) = v4;
  v9 = swift_getKeyPath();
  v10 = MEMORY[0x1E69E6448];
  sub_1AFC7246C(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v11 = swift_allocObject();
  v11[4] = sub_1AFC711B4;
  v11[5] = v9;
  v11[2] = sub_1AFC711E8;
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
  *(v12 + 16) = 0x7469736E65746E69;
  *(v12 + 24) = 0xE900000000000079;
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
  v123 = v13;
  if (v13)
  {
    v10 = (*(v13 + 8))();
  }

  v120 = v5;
  v14 = swift_conformsToProtocol2();
  if (v14 && v10)
  {
    *(v12 + 160) = (*(v14 + 8))(v10, v14);
  }

  v15 = *(v12 + 64);
  v16 = *(v12 + 72);
  *(v12 + 64) = sub_1AFC711F4;
  *(v12 + 72) = v9;
  sub_1AF0FB8EC(v15, v16);
  *(v12 + 168) = 0;
  *(v12 + 176) = 0;

  *(v12 + 216) = 0;

  *(v0 + 40) = v12;
  v17 = swift_getKeyPath();
  v18 = MEMORY[0x1E69E7428];
  sub_1AFC703CC(0, &qword_1ED725C78, &unk_1ED72F770, MEMORY[0x1E69E7428]);
  v19 = swift_allocObject();
  v19[4] = sub_1AFC711FC;
  v19[5] = v17;
  v19[2] = sub_1AFC71230;
  v19[3] = v17;
  v19[6] = v17;
  v20 = swift_allocObject();
  *(v20 + 104) = 0;
  *(v20 + 112) = 1;
  *(v20 + 128) = 0;
  *(v20 + 136) = 0;
  *(v20 + 120) = 0;
  *(v20 + 160) = MEMORY[0x1E69E7CC0];
  *(v20 + 210) = 0;
  *(v20 + 216) = 0;
  v21 = MEMORY[0x1E69E6448];
  sub_1AFC739C4(0, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], v18);
  v23 = v22;
  *(v20 + 168) = 0;
  *(v20 + 176) = 0;
  *(v20 + 16) = 0x7265746E6563;
  *(v20 + 24) = 0xE600000000000000;
  *(v20 + 32) = v17;
  *(v20 + 40) = v22;
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
  *(v20 + 144) = xmmword_1AFE22A20;
  *(v20 + 80) = v19;
  *(v20 + 88) = &off_1F2535378;
  *(v20 + 210) = 0;
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

  v121 = v24;
  v122 = v25;
  v27 = swift_conformsToProtocol2();
  if (v27 && v26)
  {
    *(v20 + 160) = (*(v27 + 8))(v26, v27);
  }

  v28 = *(v20 + 64);
  v29 = *(v20 + 72);
  *(v20 + 64) = sub_1AFC7123C;
  *(v20 + 72) = v17;
  sub_1AF0FB8EC(v28, v29);
  *(v20 + 168) = 0;
  *(v20 + 176) = 0;

  *(v20 + 216) = 0;

  *(v0 + 48) = v20;
  v30 = swift_getKeyPath();
  v31 = swift_allocObject();
  v31[4] = sub_1AFC73AF8;
  v31[5] = v30;
  v31[2] = sub_1AFC73BF8;
  v31[3] = v30;
  v31[6] = v30;
  v32 = swift_allocObject();
  *(v32 + 112) = 1;
  *(v32 + 128) = 0;
  *(v32 + 136) = 0;
  *(v32 + 120) = 0;
  v33 = MEMORY[0x1E69E7CC0];
  *(v32 + 160) = MEMORY[0x1E69E7CC0];
  *(v32 + 168) = 0;
  *(v32 + 210) = 0;
  *(v32 + 216) = 0;
  *(v32 + 176) = 0;
  *(v32 + 16) = 0x5A6D6F7266;
  *(v32 + 24) = 0xE500000000000000;
  *(v32 + 32) = v30;
  *(v32 + 40) = v21;
  *(v32 + 48) = 0;
  *(v32 + 56) = 1;
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
  if (v123)
  {
    v34 = (*(v123 + 8))();
  }

  else
  {
    v34 = v21;
  }

  v35 = swift_conformsToProtocol2();
  if (v35 && v34)
  {
    *(v32 + 160) = (*(v35 + 8))(v34, v35);
  }

  v36 = *(v32 + 64);
  v37 = *(v32 + 72);
  *(v32 + 64) = sub_1AFC73B60;
  *(v32 + 72) = v30;
  sub_1AF0FB8EC(v36, v37);
  *(v32 + 168) = 0;
  *(v32 + 176) = 0;

  *(v32 + 216) = 0;

  *(v0 + 56) = v32;
  v38 = swift_getKeyPath();
  v39 = swift_allocObject();
  v39[4] = sub_1AFC73AF8;
  v39[5] = v38;
  v39[2] = sub_1AFC73BF8;
  v39[3] = v38;
  v39[6] = v38;
  v40 = swift_allocObject();
  *(v40 + 112) = 1;
  *(v40 + 128) = 0;
  *(v40 + 136) = 0;
  *(v40 + 120) = 0;
  *(v40 + 160) = v33;
  *(v40 + 168) = 0;
  *(v40 + 210) = 0;
  *(v40 + 216) = 0;
  *(v40 + 176) = 0;
  *(v40 + 16) = 0x6C676E416D6F7266;
  *(v40 + 24) = 0xE900000000000065;
  *(v40 + 32) = v38;
  *(v40 + 40) = v21;
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
  if (v123)
  {
    v41 = (*(v123 + 8))();
  }

  else
  {
    v41 = v21;
  }

  v42 = swift_conformsToProtocol2();
  if (v42 && v41)
  {
    *(v40 + 160) = (*(v42 + 8))(v41, v42);
  }

  v43 = *(v40 + 64);
  v44 = *(v40 + 72);
  *(v40 + 64) = sub_1AFC73B60;
  *(v40 + 72) = v38;
  sub_1AF0FB8EC(v43, v44);
  *(v40 + 168) = 0;
  *(v40 + 176) = 0;

  *(v40 + 216) = 0;

  *(v0 + 64) = v40;
  v45 = swift_getKeyPath();
  v46 = swift_allocObject();
  v46[4] = sub_1AFC73C88;
  v46[5] = v45;
  v46[2] = sub_1AFC73BFC;
  v46[3] = v45;
  v46[6] = v45;
  v47 = swift_allocObject();
  *(v47 + 112) = 1;
  *(v47 + 128) = 0;
  *(v47 + 136) = 0;
  *(v47 + 120) = 0;
  *(v47 + 160) = v33;
  *(v47 + 168) = 0;
  *(v47 + 210) = 0;
  *(v47 + 216) = 0;
  *(v47 + 176) = 0;
  *(v47 + 16) = 0x666968536D6F7266;
  *(v47 + 24) = 0xE900000000000074;
  *(v47 + 32) = v45;
  *(v47 + 40) = v23;
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
  swift_retain_n();
  v48 = v23;
  if (v122)
  {
    v48 = (*(v121 + 8))(v122);
  }

  v49 = swift_conformsToProtocol2();
  if (v49 && v48)
  {
    *(v47 + 160) = (*(v49 + 8))(v48, v49);
  }

  v50 = *(v47 + 64);
  v51 = *(v47 + 72);
  *(v47 + 64) = sub_1AFC73B64;
  *(v47 + 72) = v45;
  sub_1AF0FB8EC(v50, v51);
  *(v47 + 168) = 0;
  *(v47 + 176) = 0;

  *(v47 + 216) = 0;

  *(v0 + 72) = v47;
  v52 = swift_getKeyPath();
  v53 = swift_allocObject();
  v53[4] = sub_1AFC73AF8;
  v53[5] = v52;
  v53[2] = sub_1AFC73BF8;
  v53[3] = v52;
  v53[6] = v52;
  v54 = swift_allocObject();
  *(v54 + 112) = 1;
  *(v54 + 128) = 0;
  *(v54 + 136) = 0;
  *(v54 + 120) = 0;
  *(v54 + 160) = v33;
  *(v54 + 168) = 0;
  *(v54 + 210) = 0;
  *(v54 + 216) = 0;
  *(v54 + 176) = 0;
  *(v54 + 16) = 5926772;
  *(v54 + 24) = 0xE300000000000000;
  *(v54 + 32) = v52;
  *(v54 + 40) = v21;
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
  swift_retain_n();
  if (v123)
  {
    v55 = (*(v123 + 8))();
  }

  else
  {
    v55 = v21;
  }

  v56 = swift_conformsToProtocol2();
  if (v56 && v55)
  {
    *(v54 + 160) = (*(v56 + 8))(v55, v56);
  }

  v57 = *(v54 + 64);
  v58 = *(v54 + 72);
  *(v54 + 64) = sub_1AFC73B60;
  *(v54 + 72) = v52;
  sub_1AF0FB8EC(v57, v58);
  *(v54 + 168) = 0;
  *(v54 + 176) = 0;

  *(v54 + 216) = 0;

  *(v0 + 80) = v54;
  v59 = swift_getKeyPath();
  v60 = swift_allocObject();
  v60[4] = sub_1AFC73AF8;
  v60[5] = v59;
  v60[2] = sub_1AFC73BF8;
  v60[3] = v59;
  v60[6] = v59;
  v61 = swift_allocObject();
  *(v61 + 112) = 1;
  *(v61 + 128) = 0;
  *(v61 + 136) = 0;
  *(v61 + 120) = 0;
  *(v61 + 160) = v33;
  *(v61 + 168) = 0;
  *(v61 + 210) = 0;
  *(v61 + 216) = 0;
  *(v61 + 176) = 0;
  *(v61 + 16) = 0x656C676E416F74;
  *(v61 + 24) = 0xE700000000000000;
  *(v61 + 32) = v59;
  *(v61 + 40) = v21;
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
  if (v123)
  {
    v21 = (*(v123 + 8))();
  }

  v62 = swift_conformsToProtocol2();
  if (v62 && v21)
  {
    *(v61 + 160) = (*(v62 + 8))(v21, v62);
  }

  v63 = *(v61 + 64);
  v64 = *(v61 + 72);
  *(v61 + 64) = sub_1AFC73B60;
  *(v61 + 72) = v59;
  sub_1AF0FB8EC(v63, v64);
  *(v61 + 168) = 0;
  *(v61 + 176) = 0;

  *(v61 + 216) = 0;

  *(v0 + 88) = v61;
  v65 = swift_getKeyPath();
  v66 = swift_allocObject();
  v66[4] = sub_1AFC73C88;
  v66[5] = v65;
  v66[2] = sub_1AFC73BFC;
  v66[3] = v65;
  v66[6] = v65;
  v67 = swift_allocObject();
  *(v67 + 112) = 1;
  *(v67 + 128) = 0;
  *(v67 + 136) = 0;
  *(v67 + 120) = 0;
  *(v67 + 160) = v33;
  *(v67 + 168) = 0;
  *(v67 + 216) = 0;
  *(v67 + 176) = 0;
  *(v67 + 16) = 0x74666968536F74;
  *(v67 + 24) = 0xE700000000000000;
  *(v67 + 32) = v65;
  *(v67 + 40) = v23;
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
  v68 = v23;
  if (v122)
  {
    v68 = (*(v121 + 8))(v122);
  }

  v69 = swift_conformsToProtocol2();
  if (v69 && v68)
  {
    *(v67 + 160) = (*(v69 + 8))(v68, v69);
  }

  v70 = *(v67 + 64);
  v71 = *(v67 + 72);
  *(v67 + 64) = sub_1AFC73B64;
  *(v67 + 72) = v65;
  sub_1AF0FB8EC(v70, v71);
  *(v67 + 168) = 0;
  *(v67 + 176) = 0;

  *(v67 + 216) = 0;

  *(v0 + 96) = v67;
  v72 = swift_getKeyPath();
  v73 = MEMORY[0x1E69E7450];
  sub_1AFC703CC(0, qword_1ED72D340, &qword_1ED72F740, MEMORY[0x1E69E7450]);
  v74 = swift_allocObject();
  v74[4] = sub_1AFC71244;
  v74[5] = v72;
  v74[2] = sub_1AFC7125C;
  v74[3] = v72;
  v74[6] = v72;
  v75 = swift_allocObject();
  *(v75 + 104) = 0;
  *(v75 + 112) = 1;
  *(v75 + 128) = 0;
  *(v75 + 136) = 0;
  *(v75 + 120) = 0;
  *(v75 + 160) = MEMORY[0x1E69E7CC0];
  *(v75 + 216) = 0;
  sub_1AFC739C4(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], v73);
  v77 = v76;
  *(v75 + 168) = 0;
  *(v75 + 176) = 0;
  *(v75 + 16) = 0x31726F6C6F63;
  *(v75 + 24) = 0xE600000000000000;
  *(v75 + 32) = v72;
  *(v75 + 40) = v76;
  *(v75 + 48) = 0;
  *(v75 + 56) = 1;
  *(v75 + 58) = 0;
  *(v75 + 184) = 0;
  *(v75 + 188) = 1;
  *(v75 + 192) = 0;
  *(v75 + 196) = 1;
  *(v75 + 200) = 0x1000100000000;
  *(v75 + 208) = 1;
  *(v75 + 64) = 0;
  *(v75 + 72) = 0;
  *(v75 + 96) = 0;
  *(v75 + 144) = xmmword_1AFE22A20;
  *(v75 + 80) = v74;
  *(v75 + 88) = &off_1F2535378;
  *(v75 + 210) = 0;
  v78 = swift_conformsToProtocol2();
  if (v78)
  {
    v79 = v77;
  }

  else
  {
    v79 = 0;
  }

  swift_retain_n();
  v80 = v77;
  if (v79)
  {
    v80 = (*(v78 + 8))(v79, v78);
  }

  v81 = swift_conformsToProtocol2();
  if (v81 && v80)
  {
    *(v75 + 160) = (*(v81 + 8))(v80, v81);
  }

  v82 = *(v75 + 64);
  v83 = *(v75 + 72);
  *(v75 + 64) = sub_1AFC71268;
  *(v75 + 72) = v72;
  sub_1AF0FB8EC(v82, v83);
  *(v75 + 168) = 0;
  *(v75 + 176) = 0;

  *(v75 + 216) = 0;

  *(v0 + 104) = v75;
  v84 = swift_getKeyPath();
  v85 = swift_allocObject();
  v85[4] = sub_1AFC73B68;
  v85[5] = v84;
  v85[2] = sub_1AFC73C00;
  v85[3] = v84;
  v85[6] = v84;
  v86 = swift_allocObject();
  *(v86 + 112) = 1;
  *(v86 + 128) = 0;
  *(v86 + 136) = 0;
  *(v86 + 120) = 0;
  *(v86 + 160) = MEMORY[0x1E69E7CC0];
  *(v86 + 168) = 0;
  *(v86 + 216) = 0;
  *(v86 + 176) = 0;
  *(v86 + 16) = 0x32726F6C6F63;
  *(v86 + 24) = 0xE600000000000000;
  *(v86 + 32) = v84;
  *(v86 + 40) = v77;
  *(v86 + 48) = 0;
  *(v86 + 56) = 1;
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
  *(v86 + 104) = 0;
  *(v86 + 144) = xmmword_1AFE22A20;
  *(v86 + 80) = v85;
  *(v86 + 88) = &off_1F2535378;
  *(v86 + 210) = 0;
  swift_retain_n();
  v87 = v77;
  if (v79)
  {
    v87 = (*(v78 + 8))(v79, v78);
  }

  v88 = swift_conformsToProtocol2();
  if (v88 && v87)
  {
    *(v86 + 160) = (*(v88 + 8))(v87, v88);
  }

  v89 = *(v86 + 64);
  v90 = *(v86 + 72);
  *(v86 + 64) = sub_1AFC73B6C;
  *(v86 + 72) = v84;
  sub_1AF0FB8EC(v89, v90);
  *(v86 + 168) = 0;
  *(v86 + 176) = 0;

  *(v86 + 216) = 0;

  *(v0 + 112) = v86;
  v91 = swift_getKeyPath();
  v92 = swift_allocObject();
  v92[4] = sub_1AFC73B68;
  v92[5] = v91;
  v92[2] = sub_1AFC73C00;
  v92[3] = v91;
  v92[6] = v91;
  v93 = swift_allocObject();
  *(v93 + 112) = 1;
  *(v93 + 128) = 0;
  *(v93 + 136) = 0;
  *(v93 + 120) = 0;
  *(v93 + 160) = MEMORY[0x1E69E7CC0];
  *(v93 + 168) = 0;
  *(v93 + 216) = 0;
  *(v93 + 176) = 0;
  *(v93 + 16) = 0x33726F6C6F63;
  *(v93 + 24) = 0xE600000000000000;
  *(v93 + 32) = v91;
  *(v93 + 40) = v77;
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
  if (v79)
  {
    v77 = (*(v78 + 8))(v79, v78);
  }

  v94 = swift_conformsToProtocol2();
  v95 = MEMORY[0x1E69E6370];
  if (v94 && v77)
  {
    *(v93 + 160) = (*(v94 + 8))(v77, v94);
  }

  v96 = *(v93 + 64);
  v97 = *(v93 + 72);
  *(v93 + 64) = sub_1AFC73B6C;
  *(v93 + 72) = v91;
  sub_1AF0FB8EC(v96, v97);
  *(v93 + 168) = 0;
  *(v93 + 176) = 0;

  *(v93 + 216) = 0;

  *(v0 + 120) = v93;
  v98 = swift_getKeyPath();
  v99 = swift_allocObject();
  v99[4] = sub_1AFC73C88;
  v99[5] = v98;
  v99[2] = sub_1AFC73BFC;
  v99[3] = v98;
  v99[6] = v98;
  v100 = swift_allocObject();
  *(v100 + 112) = 1;
  *(v100 + 128) = 0;
  *(v100 + 136) = 0;
  *(v100 + 120) = 0;
  v101 = MEMORY[0x1E69E7CC0];
  *(v100 + 160) = MEMORY[0x1E69E7CC0];
  *(v100 + 168) = 0;
  *(v100 + 216) = 0;
  *(v100 + 176) = 0;
  *(v100 + 16) = 0x746E65436B73616DLL;
  *(v100 + 24) = 0xEA00000000007265;
  *(v100 + 32) = v98;
  *(v100 + 40) = v23;
  *(v100 + 48) = 0;
  *(v100 + 56) = 1;
  *(v100 + 58) = 0;
  *(v100 + 184) = 0;
  *(v100 + 188) = 1;
  *(v100 + 192) = 0;
  *(v100 + 196) = 1;
  *(v100 + 200) = 0x1000100000000;
  *(v100 + 208) = 1;
  *(v100 + 64) = 0;
  *(v100 + 72) = 0;
  *(v100 + 96) = 0;
  *(v100 + 104) = 0;
  *(v100 + 144) = xmmword_1AFE22A20;
  *(v100 + 80) = v99;
  *(v100 + 88) = &off_1F2535378;
  *(v100 + 210) = 0;
  swift_retain_n();
  if (v122)
  {
    v23 = (*(v121 + 8))();
  }

  v102 = swift_conformsToProtocol2();
  if (v102 && v23)
  {
    *(v100 + 160) = (*(v102 + 8))(v23, v102);
  }

  v103 = *(v100 + 64);
  v104 = *(v100 + 72);
  *(v100 + 64) = sub_1AFC73B64;
  *(v100 + 72) = v98;
  sub_1AF0FB8EC(v103, v104);
  *(v100 + 168) = 0;
  *(v100 + 176) = 0;

  *(v100 + 216) = 0;

  *(v0 + 128) = v100;
  v105 = swift_getKeyPath();
  v106 = swift_allocObject();
  v106[4] = sub_1AFC73AF8;
  v106[5] = v105;
  v106[2] = sub_1AFC73BF8;
  v106[3] = v105;
  v106[6] = v105;
  v107 = swift_allocObject();
  *(v107 + 112) = 1;
  *(v107 + 128) = 0;
  *(v107 + 136) = 0;
  *(v107 + 120) = 0;
  *(v107 + 160) = v101;
  *(v107 + 168) = 0;
  *(v107 + 216) = 0;
  *(v107 + 176) = 0;
  *(v107 + 16) = 0x696461526B73616DLL;
  *(v107 + 24) = 0xEA00000000007375;
  *(v107 + 32) = v105;
  v108 = MEMORY[0x1E69E6448];
  *(v107 + 40) = MEMORY[0x1E69E6448];
  *(v107 + 48) = 0;
  *(v107 + 56) = 1;
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
  *(v107 + 104) = 0;
  *(v107 + 144) = xmmword_1AFE22A20;
  *(v107 + 80) = v106;
  *(v107 + 88) = &off_1F2535378;
  *(v107 + 210) = 0;
  swift_retain_n();
  if (v123)
  {
    v109 = (*(v123 + 8))();
  }

  else
  {
    v109 = v108;
  }

  v110 = swift_conformsToProtocol2();
  if (v110 && v109)
  {
    *(v107 + 160) = (*(v110 + 8))(v109, v110);
  }

  *(v107 + 64) = sub_1AFC73B60;
  *(v107 + 72) = v105;
  sub_1AF0FB8EC(0, 0);
  *(v107 + 168) = 0;
  *(v107 + 176) = 0;

  *(v107 + 216) = 0;
  *(v0 + 136) = v107;
  v111 = swift_getKeyPath();
  v112 = swift_allocObject();
  v112[4] = sub_1AFC73C48;
  v112[5] = v111;
  v112[2] = sub_1AFC73C04;
  v112[3] = v111;
  v112[6] = v111;
  v113 = swift_allocObject();
  *(v113 + 112) = 1;
  *(v113 + 128) = 0;
  *(v113 + 136) = 0;
  *(v113 + 120) = 0;
  *(v113 + 160) = v101;
  *(v113 + 168) = 0;
  *(v113 + 216) = 0;
  *(v113 + 176) = 0;
  *(v113 + 16) = 0x62616E456B73616DLL;
  *(v113 + 24) = 0xEB0000000064656CLL;
  *(v113 + 32) = v111;
  *(v113 + 40) = v95;
  *(v113 + 48) = 0;
  *(v113 + 56) = 1;
  *(v113 + 58) = 0;
  *(v113 + 184) = 0;
  *(v113 + 188) = 1;
  *(v113 + 192) = 0;
  *(v113 + 196) = 1;
  *(v113 + 200) = 0x1000100000000;
  *(v113 + 208) = 1;
  *(v113 + 64) = 0;
  *(v113 + 72) = 0;
  *(v113 + 96) = 0;
  *(v113 + 104) = 0;
  *(v113 + 144) = xmmword_1AFE22A20;
  *(v113 + 80) = v112;
  *(v113 + 88) = &off_1F2535378;
  *(v113 + 210) = 0;
  swift_retain_n();
  if (v120)
  {
    v95 = (*(v120 + 8))();
  }

  v114 = swift_conformsToProtocol2();
  if (v114 && v95)
  {
    *(v113 + 160) = (*(v114 + 8))(v95, v114);
  }

  *(v113 + 64) = sub_1AFC73B70;
  *(v113 + 72) = v111;
  sub_1AF0FB8EC(0, 0);
  *(v113 + 168) = 0;
  *(v113 + 176) = 0;

  *(v113 + 216) = 0;
  *(v0 + 144) = v113;
  v115 = swift_getKeyPath();
  v116 = swift_allocObject();
  v116[4] = sub_1AFC73AF8;
  v116[5] = v115;
  v116[2] = sub_1AFC73BF8;
  v116[3] = v115;
  v116[6] = v115;
  v117 = swift_allocObject();
  *(v117 + 112) = 1;
  *(v117 + 128) = 0;
  *(v117 + 136) = 0;
  *(v117 + 120) = 0;
  *(v117 + 160) = v101;
  *(v117 + 168) = 0;
  *(v117 + 216) = 0;
  *(v117 + 176) = 0;
  strcpy((v117 + 16), "unMultBlending");
  *(v117 + 31) = -18;
  *(v117 + 32) = v115;
  *(v117 + 40) = v108;
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
  *(v117 + 96) = 0;
  *(v117 + 104) = 0;
  *(v117 + 144) = xmmword_1AFE22A20;
  *(v117 + 80) = v116;
  *(v117 + 88) = &off_1F2535378;
  *(v117 + 210) = 0;
  swift_retain_n();
  if (v123)
  {
    v108 = (*(v123 + 8))();
  }

  v118 = swift_conformsToProtocol2();
  if (v118 && v108)
  {
    *(v117 + 160) = (*(v118 + 8))(v108, v118);
  }

  *(v117 + 64) = sub_1AFC73B60;
  *(v117 + 72) = v115;
  sub_1AF0FB8EC(0, 0);
  *(v117 + 168) = 0;
  *(v117 + 176) = 0;

  *(v117 + 216) = 0;
  *(v0 + 152) = v117;
  qword_1EB6C2708 = v0;
  return result;
}

uint64_t sub_1AFC5F28C()
{
  sub_1AFC7246C(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE551C0;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6370];
  sub_1AFC7246C(0, &qword_1ED722B80, MEMORY[0x1E69E6370], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AFC71270;
  v3[5] = KeyPath;
  v3[2] = sub_1AFC7129C;
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

  v35 = v5;
  v7 = swift_conformsToProtocol2();
  if (v7 && v6)
  {
    *(v4 + 160) = (*(v7 + 8))(v6, v7);
  }

  *(v4 + 64) = sub_1AFC712A8;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0, 0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  v8 = swift_getKeyPath();
  v9 = MEMORY[0x1E69E6448];
  sub_1AFC7246C(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v10 = swift_allocObject();
  v10[4] = sub_1AFC712B0;
  v10[5] = v8;
  v10[2] = sub_1AFC712E4;
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
  *(v11 + 16) = 0x737569646172;
  *(v11 + 24) = 0xE600000000000000;
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

  *(v11 + 64) = sub_1AFC712F0;
  *(v11 + 72) = v8;
  sub_1AF0FB8EC(0, 0);
  *(v11 + 168) = 0;
  *(v11 + 176) = 0;

  *(v11 + 216) = 0;
  *(v0 + 40) = v11;
  v14 = swift_getKeyPath();
  v15 = MEMORY[0x1E69E7428];
  sub_1AFC703CC(0, &qword_1ED725C78, &unk_1ED72F770, MEMORY[0x1E69E7428]);
  v16 = swift_allocObject();
  v16[4] = sub_1AFC713C8;
  v16[5] = v14;
  v16[2] = sub_1AFC713FC;
  v16[3] = v14;
  v16[6] = v14;
  v17 = swift_allocObject();
  *(v17 + 104) = 0;
  *(v17 + 112) = 1;
  *(v17 + 128) = 0;
  *(v17 + 136) = 0;
  *(v17 + 120) = 0;
  *(v17 + 160) = MEMORY[0x1E69E7CC0];
  *(v17 + 216) = 0;
  v18 = MEMORY[0x1E69E6448];
  sub_1AFC739C4(0, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], v15);
  v20 = v19;
  *(v17 + 168) = 0;
  *(v17 + 176) = 0;
  *(v17 + 16) = 0x746E65436B73616DLL;
  *(v17 + 24) = 0xEA00000000007265;
  *(v17 + 32) = v14;
  *(v17 + 40) = v19;
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
  *(v17 + 96) = 0;
  *(v17 + 144) = xmmword_1AFE22A20;
  *(v17 + 80) = v16;
  *(v17 + 88) = &off_1F2535378;
  *(v17 + 210) = 0;
  v21 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v21)
  {
    v22 = MEMORY[0x1E69E6370];
    if (v20)
    {
      v20 = (*(v21 + 8))(v20, v21);
    }
  }

  else
  {
    v22 = MEMORY[0x1E69E6370];
  }

  v23 = swift_conformsToProtocol2();
  if (v23 && v20)
  {
    *(v17 + 160) = (*(v23 + 8))(v20, v23);
  }

  v24 = *(v17 + 64);
  v25 = *(v17 + 72);
  *(v17 + 64) = sub_1AFC71408;
  *(v17 + 72) = v14;
  sub_1AF0FB8EC(v24, v25);
  *(v17 + 168) = 0;
  *(v17 + 176) = 0;

  *(v17 + 216) = 0;

  *(v0 + 48) = v17;
  v26 = swift_getKeyPath();
  v27 = swift_allocObject();
  v27[4] = sub_1AFC73AFC;
  v27[5] = v26;
  v27[2] = sub_1AFC73C08;
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
  *(v28 + 16) = 0x696461526B73616DLL;
  *(v28 + 24) = 0xEA00000000007375;
  *(v28 + 32) = v26;
  *(v28 + 40) = v18;
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
  if (v12)
  {
    v18 = (*(v12 + 8))();
  }

  v29 = swift_conformsToProtocol2();
  if (v29 && v18)
  {
    *(v28 + 160) = (*(v29 + 8))(v18, v29);
  }

  *(v28 + 64) = sub_1AFC73B74;
  *(v28 + 72) = v26;
  sub_1AF0FB8EC(0, 0);
  *(v28 + 168) = 0;
  *(v28 + 176) = 0;

  *(v28 + 216) = 0;
  *(v0 + 56) = v28;
  v30 = swift_getKeyPath();
  v31 = swift_allocObject();
  v31[4] = sub_1AFC73C4C;
  v31[5] = v30;
  v31[2] = sub_1AFC73C0C;
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
  *(v32 + 16) = 0x62616E456B73616DLL;
  *(v32 + 24) = 0xEB0000000064656CLL;
  *(v32 + 32) = v30;
  *(v32 + 40) = v22;
  *(v32 + 48) = 0;
  *(v32 + 56) = 1;
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
  if (v35)
  {
    v22 = (*(v35 + 8))();
  }

  v33 = swift_conformsToProtocol2();
  if (v33 && v22)
  {
    *(v32 + 160) = (*(v33 + 8))(v22, v33);
  }

  *(v32 + 64) = sub_1AFC73B78;
  *(v32 + 72) = v30;
  sub_1AF0FB8EC(0, 0);
  *(v32 + 168) = 0;
  *(v32 + 176) = 0;

  *(v32 + 216) = 0;
  *(v0 + 64) = v32;
  qword_1EB6C3650 = v0;
  return result;
}

void sub_1AFC5FCE4(uint64_t a1@<X3>, uint64_t (*a2)(uint64_t)@<X4>, const char **a3@<X5>, unsigned __int8 *a4@<X8>)
{
  v6 = a2(a1);
  if (v6)
  {
    v7 = *a3;
    v8 = v6;
    v9 = [v6 v7];
  }

  else
  {
    v9 = 0;
  }

  *a4 = v9;
}

uint64_t sub_1AFC5FD98()
{
  sub_1AFC73A9C(v0, v5);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1AF0F2990(v5);
  if (Strong)
  {
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (v2)
    {
      v3 = [v2 model];
      swift_unknownObjectRelease();
      if (v3)
      {
        objc_opt_self();
        result = swift_dynamicCastObjCClass();
        if (result)
        {
          return result;
        }
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  return 0;
}

id sub_1AFC5FE50()
{
  if ([objc_opt_self() immediateMode])
  {
    v1 = *(v0 + 32);
    v2 = v1;
    if (v1)
    {
LABEL_3:
      v3 = [v1 parametricType];

      return v3;
    }
  }

  else
  {
    v1 = sub_1AFC5FD98();
    if (v1)
    {
      goto LABEL_3;
    }
  }

  return 0;
}

void sub_1AFC5FF3C(SEL *a1)
{
  if ([objc_opt_self() immediateMode])
  {
    v3 = *(v1 + 32);
    v4 = v3;
    if (!v3)
    {
      return;
    }

    goto LABEL_3;
  }

  v3 = sub_1AFC5FD98();
  if (v3)
  {
LABEL_3:
    [v3 *a1];
  }
}

uint64_t sub_1AFC5FFB8@<X0>(void *a1@<X0>, void (*a2)(char *, uint64_t)@<X1>, uint64_t (*a3)(char *)@<X2>, uint64_t a4@<X8>)
{
  v42 = a4;
  sub_1AFC739C4(0, &qword_1ED726A70, sub_1AF445B90, &type metadata for StringCodingKeys, MEMORY[0x1E69E6F48]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v27 - v11;
  v38 = 0;
  swift_unknownObjectWeakInit();
  v38 = 0;
  swift_unknownObjectWeakAssign();
  v39 = 0x3E6C6C756E3CLL;
  v40 = 0xE600000000000000;
  v41 = 0;
  v13 = a1[3];
  v14 = a1[4];
  sub_1AF441150(a1, v13);
  if (sub_1AF694FF8(2037, v13, v14))
  {
    sub_1AF441150(a1, a1[3]);
    sub_1AFDFF398();
    if (!v4)
    {
      sub_1AF441150(&v29, v32);
      sub_1AF9B3A20();
      sub_1AFDFEE88();
      v15 = &v33;
LABEL_9:
      sub_1AF9B3A74(v15, v37);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v29);
LABEL_17:
      a2(v37, v42);
    }
  }

  else
  {
    v16 = a1[3];
    v17 = a1[4];
    sub_1AF441150(a1, v16);
    if (sub_1AF694FF8(2029, v16, v17))
    {
      sub_1AF441150(a1, a1[3]);
      sub_1AFDFF398();
      if (!v4)
      {
        sub_1AF441150(&v29, v32);
        v20 = sub_1AFDFEE38();
        v22 = v21;
        v34 = 0;
        swift_unknownObjectWeakInit();
        v34 = 0;
        v15 = swift_unknownObjectWeakAssign();
        v35 = v20;
        v36 = v22;
        goto LABEL_9;
      }
    }

    else
    {
      v28 = a2;
      sub_1AF441150(a1, a1[3]);
      sub_1AF445B90();
      sub_1AFDFF3B8();
      if (!v4)
      {
        v33 = 0;
        LOBYTE(v34) = 1;
        v35 = 0xD000000000000017;
        v36 = 0x80000001AFF4C150;
        v18 = sub_1AFDFE698();
        if (v19)
        {
          v23 = v18;
        }

        else
        {
          v23 = 0;
        }

        if (v19)
        {
          v24 = v19;
        }

        else
        {
          v24 = 0xE000000000000000;
        }

        (*(v10 + 8))(v12, v9);
        v30 = 0;
        swift_unknownObjectWeakInit();
        v30 = 0;
        v25 = swift_unknownObjectWeakAssign();
        v31 = v23;
        v32 = v24;
        sub_1AF9B3A74(v25, v37);
        a2 = v28;
        goto LABEL_17;
      }
    }
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return a3(v37);
}

void sub_1AFC6038C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  (*(a2 + 16))(v2, ObjectType, a2);
  sub_1AFC73A9C(v2, v11);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1AF0F2990(v11);
  if (!Strong)
  {
    goto LABEL_10;
  }

  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (!v7)
  {
    swift_unknownObjectRelease();
    goto LABEL_10;
  }

  v8 = [v7 model];
  swift_unknownObjectRelease();
  if (!v8)
  {
    goto LABEL_11;
  }

  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (!v9)
  {

    goto LABEL_10;
  }

  v10 = [v9 presentationModel];

  if (!v10)
  {
LABEL_10:
    v8 = 0;
    goto LABEL_11;
  }

  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (!v8)
  {
  }

LABEL_11:

  v3[4] = v8;
}

uint64_t sub_1AFC60510()
{
  sub_1AFC7246C(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE55190;
  KeyPath = swift_getKeyPath();
  sub_1AFC700D0(0, &qword_1EB63BB40, type metadata accessor for VFXParametricModelType);
  v2 = swift_allocObject();
  v2[4] = sub_1AFC71478;
  v2[5] = KeyPath;
  v2[2] = sub_1AFC714AC;
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
  type metadata accessor for VFXParametricModelType(0);
  v5 = v4;
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;
  *(v3 + 16) = 1701869940;
  *(v3 + 24) = 0xE400000000000000;
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
  *(v3 + 64) = sub_1AFC714B8;
  *(v3 + 72) = KeyPath;
  sub_1AF0FB8EC(v8, v9);
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;

  *(v3 + 216) = 0;

  *(v0 + 32) = v3;
  v10 = swift_getKeyPath();
  v11 = swift_getKeyPath();
  v12 = MEMORY[0x1E69E6448];
  sub_1AFC7246C(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v13 = swift_allocObject();
  v13[4] = sub_1AFC714C0;
  v13[5] = v10;
  v13[2] = sub_1AFC714F4;
  v13[3] = v10;
  v13[6] = v10;
  v14 = swift_allocObject();
  *(v14 + 112) = 1;
  *(v14 + 128) = 0;
  *(v14 + 136) = 0;
  *(v14 + 120) = 0;
  *(v14 + 160) = MEMORY[0x1E69E7CC0];
  *(v14 + 168) = 0;
  *(v14 + 210) = 0;
  *(v14 + 216) = 0;
  *(v14 + 176) = 0;
  *(v14 + 16) = 0x737569646172;
  *(v14 + 24) = 0xE600000000000000;
  *(v14 + 32) = v10;
  *(v14 + 40) = v12;
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
  *(v14 + 96) = v11;
  *(v14 + 104) = 0;
  *(v14 + 144) = xmmword_1AFE22A20;
  *(v14 + 80) = v13;
  *(v14 + 88) = &off_1F2535378;
  *(v14 + 210) = 0;
  v15 = swift_conformsToProtocol2();
  swift_retain_n();

  if (v15)
  {
    v16 = (*(v15 + 8))();
  }

  else
  {
    v16 = v12;
  }

  v17 = swift_conformsToProtocol2();
  if (v17 && v16)
  {
    v18 = (*(v17 + 8))(v16, v17);

    *(v14 + 160) = v18;
  }

  else
  {
  }

  v19 = *(v14 + 64);
  v20 = *(v14 + 72);
  *(v14 + 64) = sub_1AFC71500;
  *(v14 + 72) = v10;
  sub_1AF0FB8EC(v19, v20);
  *(v14 + 168) = 0;
  *(v14 + 176) = 0;

  *(v14 + 216) = 0;

  *(v0 + 40) = v14;
  v21 = swift_getKeyPath();
  v22 = swift_getKeyPath();
  v23 = swift_allocObject();
  v23[4] = sub_1AFC73B00;
  v23[5] = v21;
  v23[2] = sub_1AFC73C10;
  v23[3] = v21;
  v23[6] = v21;
  v24 = swift_allocObject();
  *(v24 + 112) = 1;
  *(v24 + 128) = 0;
  *(v24 + 136) = 0;
  *(v24 + 120) = 0;
  *(v24 + 160) = MEMORY[0x1E69E7CC0];
  *(v24 + 168) = 0;
  *(v24 + 210) = 0;
  *(v24 + 216) = 0;
  *(v24 + 176) = 0;
  *(v24 + 16) = 0x7569646152706F74;
  *(v24 + 24) = 0xE900000000000073;
  *(v24 + 32) = v21;
  *(v24 + 40) = v12;
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
  *(v24 + 104) = 0;
  *(v24 + 144) = xmmword_1AFE22A20;
  *(v24 + 80) = v23;
  *(v24 + 88) = &off_1F2535378;
  *(v24 + 210) = 0;
  swift_retain_n();

  if (v15)
  {
    v25 = (*(v15 + 8))();
  }

  else
  {
    v25 = v12;
  }

  v26 = swift_conformsToProtocol2();
  if (v26 && v25)
  {
    v27 = (*(v26 + 8))(v25, v26);

    *(v24 + 160) = v27;
  }

  else
  {
  }

  v28 = *(v24 + 64);
  v29 = *(v24 + 72);
  *(v24 + 64) = sub_1AFC73B7C;
  *(v24 + 72) = v21;
  sub_1AF0FB8EC(v28, v29);
  *(v24 + 168) = 0;
  *(v24 + 176) = 0;

  *(v24 + 216) = 0;

  *(v0 + 48) = v24;
  v30 = swift_getKeyPath();
  v31 = swift_getKeyPath();
  v32 = swift_allocObject();
  v32[4] = sub_1AFC73B00;
  v32[5] = v30;
  v32[2] = sub_1AFC73C10;
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
  *(v33 + 16) = 0x6874646977;
  *(v33 + 24) = 0xE500000000000000;
  *(v33 + 32) = v30;
  *(v33 + 40) = v12;
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
  *(v33 + 96) = v31;
  *(v33 + 104) = 0;
  *(v33 + 144) = xmmword_1AFE22A20;
  *(v33 + 80) = v32;
  *(v33 + 88) = &off_1F2535378;
  *(v33 + 210) = 0;
  swift_retain_n();

  if (v15)
  {
    v34 = (*(v15 + 8))();
  }

  else
  {
    v34 = v12;
  }

  v35 = swift_conformsToProtocol2();
  if (v35 && v34)
  {
    v36 = (*(v35 + 8))(v34, v35);

    *(v33 + 160) = v36;
  }

  else
  {
  }

  v37 = *(v33 + 64);
  v38 = *(v33 + 72);
  *(v33 + 64) = sub_1AFC73B7C;
  *(v33 + 72) = v30;
  sub_1AF0FB8EC(v37, v38);
  *(v33 + 168) = 0;
  *(v33 + 176) = 0;

  *(v33 + 216) = 0;

  *(v0 + 56) = v33;
  v39 = swift_getKeyPath();
  v40 = swift_getKeyPath();
  v41 = swift_allocObject();
  v41[4] = sub_1AFC73B00;
  v41[5] = v39;
  v41[2] = sub_1AFC73C10;
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
  *(v42 + 16) = 0x746867696568;
  *(v42 + 24) = 0xE600000000000000;
  *(v42 + 32) = v39;
  *(v42 + 40) = v12;
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
  *(v42 + 96) = v40;
  *(v42 + 104) = 0;
  *(v42 + 144) = xmmword_1AFE22A20;
  *(v42 + 80) = v41;
  *(v42 + 88) = &off_1F2535378;
  *(v42 + 210) = 0;
  swift_retain_n();

  if (v15)
  {
    v43 = (*(v15 + 8))();
  }

  else
  {
    v43 = v12;
  }

  v44 = swift_conformsToProtocol2();
  if (v44 && v43)
  {
    v45 = (*(v44 + 8))(v43, v44);

    *(v42 + 160) = v45;
  }

  else
  {
  }

  *(v42 + 64) = sub_1AFC73B7C;
  *(v42 + 72) = v39;
  sub_1AF0FB8EC(0, 0);
  *(v42 + 168) = 0;
  *(v42 + 176) = 0;

  *(v42 + 216) = 0;
  *(v0 + 64) = v42;
  v46 = swift_getKeyPath();
  v47 = swift_getKeyPath();
  v48 = swift_allocObject();
  v48[4] = sub_1AFC73B00;
  v48[5] = v46;
  v48[2] = sub_1AFC73C10;
  v48[3] = v46;
  v48[6] = v46;
  v49 = swift_allocObject();
  *(v49 + 112) = 1;
  *(v49 + 128) = 0;
  *(v49 + 136) = 0;
  *(v49 + 120) = 0;
  *(v49 + 160) = MEMORY[0x1E69E7CC0];
  *(v49 + 168) = 0;
  *(v49 + 216) = 0;
  *(v49 + 176) = 0;
  *(v49 + 16) = 0x6874676E656CLL;
  *(v49 + 24) = 0xE600000000000000;
  *(v49 + 32) = v46;
  *(v49 + 40) = v12;
  *(v49 + 48) = 0;
  *(v49 + 56) = 1;
  *(v49 + 58) = 0;
  *(v49 + 184) = 0;
  *(v49 + 188) = 1;
  *(v49 + 192) = 0;
  *(v49 + 196) = 1;
  *(v49 + 200) = 0x1000100000000;
  *(v49 + 208) = 1;
  *(v49 + 64) = 0;
  *(v49 + 72) = 0;
  *(v49 + 96) = v47;
  *(v49 + 104) = 0;
  *(v49 + 144) = xmmword_1AFE22A20;
  *(v49 + 80) = v48;
  *(v49 + 88) = &off_1F2535378;
  *(v49 + 210) = 0;
  swift_retain_n();

  if (v15)
  {
    v50 = (*(v15 + 8))();
  }

  else
  {
    v50 = v12;
  }

  v51 = swift_conformsToProtocol2();
  if (v51 && v50)
  {
    v52 = (*(v51 + 8))(v50, v51);

    *(v49 + 160) = v52;
  }

  else
  {
  }

  *(v49 + 64) = sub_1AFC73B7C;
  *(v49 + 72) = v46;
  sub_1AF0FB8EC(0, 0);
  *(v49 + 168) = 0;
  *(v49 + 176) = 0;

  *(v49 + 216) = 0;
  *(v0 + 72) = v49;
  v53 = swift_getKeyPath();
  v54 = swift_getKeyPath();
  v55 = swift_allocObject();
  v55[4] = sub_1AFC73B00;
  v55[5] = v53;
  v55[2] = sub_1AFC73C10;
  v55[3] = v53;
  v55[6] = v53;
  v56 = swift_allocObject();
  *(v56 + 112) = 1;
  *(v56 + 128) = 0;
  *(v56 + 136) = 0;
  *(v56 + 120) = 0;
  *(v56 + 160) = MEMORY[0x1E69E7CC0];
  *(v56 + 168) = 0;
  *(v56 + 216) = 0;
  *(v56 + 176) = 0;
  strcpy((v56 + 16), "chamferRadius");
  *(v56 + 30) = -4864;
  *(v56 + 32) = v53;
  *(v56 + 40) = v12;
  *(v56 + 48) = 0;
  *(v56 + 56) = 1;
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
  *(v56 + 104) = 0;
  *(v56 + 144) = xmmword_1AFE22A20;
  *(v56 + 80) = v55;
  *(v56 + 88) = &off_1F2535378;
  *(v56 + 210) = 0;
  swift_retain_n();

  if (v15)
  {
    v57 = (*(v15 + 8))();
  }

  else
  {
    v57 = v12;
  }

  v58 = swift_conformsToProtocol2();
  if (v58 && v57)
  {
    v59 = (*(v58 + 8))(v57, v58);

    *(v56 + 160) = v59;
  }

  else
  {
  }

  *(v56 + 64) = sub_1AFC73B7C;
  *(v56 + 72) = v53;
  sub_1AF0FB8EC(0, 0);
  *(v56 + 168) = 0;
  *(v56 + 176) = 0;

  *(v56 + 216) = 0;
  *(v0 + 80) = v56;
  v60 = swift_getKeyPath();
  v61 = swift_getKeyPath();
  v62 = swift_allocObject();
  v62[4] = sub_1AFC73B00;
  v62[5] = v60;
  v62[2] = sub_1AFC73C10;
  v62[3] = v60;
  v62[6] = v60;
  v63 = swift_allocObject();
  *(v63 + 112) = 1;
  *(v63 + 128) = 0;
  *(v63 + 136) = 0;
  *(v63 + 120) = 0;
  *(v63 + 160) = MEMORY[0x1E69E7CC0];
  *(v63 + 168) = 0;
  *(v63 + 216) = 0;
  *(v63 + 176) = 0;
  strcpy((v63 + 16), "cornerRadius");
  *(v63 + 29) = 0;
  *(v63 + 30) = -5120;
  *(v63 + 32) = v60;
  *(v63 + 40) = v12;
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
  swift_retain_n();

  if (v15)
  {
    v64 = (*(v15 + 8))();
  }

  else
  {
    v64 = v12;
  }

  v65 = swift_conformsToProtocol2();
  if (v65 && v64)
  {
    v66 = (*(v65 + 8))(v64, v65);

    *(v63 + 160) = v66;
  }

  else
  {
  }

  *(v63 + 64) = sub_1AFC73B7C;
  *(v63 + 72) = v60;
  sub_1AF0FB8EC(0, 0);
  *(v63 + 168) = 0;
  *(v63 + 176) = 0;

  *(v63 + 216) = 0;
  *(v0 + 88) = v63;
  v67 = swift_getKeyPath();
  v68 = swift_getKeyPath();
  v69 = swift_allocObject();
  v69[4] = sub_1AFC73B00;
  v69[5] = v67;
  v69[2] = sub_1AFC73C10;
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
  *(v70 + 16) = 0x64615272656E6E69;
  *(v70 + 24) = 0xEB00000000737569;
  *(v70 + 32) = v67;
  *(v70 + 40) = v12;
  *(v70 + 48) = 0;
  *(v70 + 56) = 1;
  *(v70 + 58) = 0;
  *(v70 + 184) = 0;
  *(v70 + 188) = 1;
  *(v70 + 192) = 0;
  *(v70 + 196) = 1;
  *(v70 + 200) = 0x1000100000000;
  *(v70 + 208) = 1;
  *(v70 + 64) = 0;
  *(v70 + 72) = 0;
  *(v70 + 96) = v68;
  *(v70 + 104) = 0;
  *(v70 + 144) = xmmword_1AFE22A20;
  *(v70 + 80) = v69;
  *(v70 + 88) = &off_1F2535378;
  *(v70 + 210) = 0;
  swift_retain_n();

  if (v15)
  {
    v71 = (*(v15 + 8))();
  }

  else
  {
    v71 = v12;
  }

  v72 = swift_conformsToProtocol2();
  if (v72 && v71)
  {
    v73 = (*(v72 + 8))(v71, v72);

    *(v70 + 160) = v73;
  }

  else
  {
  }

  *(v70 + 64) = sub_1AFC73B7C;
  *(v70 + 72) = v67;
  sub_1AF0FB8EC(0, 0);
  *(v70 + 168) = 0;
  *(v70 + 176) = 0;

  *(v70 + 216) = 0;
  *(v0 + 96) = v70;
  v74 = swift_getKeyPath();
  v75 = swift_getKeyPath();
  v76 = swift_allocObject();
  v76[4] = sub_1AFC73B00;
  v76[5] = v74;
  v76[2] = sub_1AFC73C10;
  v76[3] = v74;
  v76[6] = v74;
  v77 = swift_allocObject();
  *(v77 + 112) = 1;
  *(v77 + 128) = 0;
  *(v77 + 136) = 0;
  *(v77 + 120) = 0;
  *(v77 + 160) = MEMORY[0x1E69E7CC0];
  *(v77 + 168) = 0;
  *(v77 + 216) = 0;
  *(v77 + 176) = 0;
  *(v77 + 16) = 0x6964615265706970;
  *(v77 + 24) = 0xEA00000000007375;
  *(v77 + 32) = v74;
  *(v77 + 40) = v12;
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
  *(v77 + 104) = 0;
  *(v77 + 144) = xmmword_1AFE22A20;
  *(v77 + 80) = v76;
  *(v77 + 88) = &off_1F2535378;
  *(v77 + 210) = 0;
  swift_retain_n();

  if (v15)
  {
    v78 = (*(v15 + 8))();
  }

  else
  {
    v78 = v12;
  }

  v79 = swift_conformsToProtocol2();
  if (v79 && v78)
  {
    v80 = (*(v79 + 8))(v78, v79);

    *(v77 + 160) = v80;
  }

  else
  {
  }

  *(v77 + 64) = sub_1AFC73B7C;
  *(v77 + 72) = v74;
  sub_1AF0FB8EC(0, 0);
  *(v77 + 168) = 0;
  *(v77 + 176) = 0;

  *(v77 + 216) = 0;
  *(v0 + 104) = v77;
  v81 = swift_getKeyPath();
  v82 = swift_getKeyPath();
  v83 = swift_allocObject();
  v83[4] = sub_1AFC73B00;
  v83[5] = v81;
  v83[2] = sub_1AFC73C10;
  v83[3] = v81;
  v83[6] = v81;
  v84 = swift_allocObject();
  *(v84 + 112) = 1;
  *(v84 + 128) = 0;
  *(v84 + 136) = 0;
  *(v84 + 120) = 0;
  *(v84 + 160) = MEMORY[0x1E69E7CC0];
  *(v84 + 168) = 0;
  *(v84 + 216) = 0;
  *(v84 + 176) = 0;
  *(v84 + 16) = 0x70536C6169646172;
  *(v84 + 24) = 0xEA00000000006E61;
  *(v84 + 32) = v81;
  *(v84 + 40) = v12;
  *(v84 + 48) = 0;
  *(v84 + 56) = 1;
  *(v84 + 58) = 0;
  *(v84 + 184) = 0;
  *(v84 + 188) = 1;
  *(v84 + 192) = 0;
  *(v84 + 196) = 1;
  *(v84 + 200) = 0x1000100000000;
  *(v84 + 208) = 1;
  *(v84 + 64) = 0;
  *(v84 + 72) = 0;
  *(v84 + 96) = v82;
  *(v84 + 104) = 0;
  *(v84 + 144) = xmmword_1AFE22A20;
  *(v84 + 80) = v83;
  *(v84 + 88) = &off_1F2535378;
  *(v84 + 210) = 0;
  swift_retain_n();

  if (v15)
  {
    v12 = (*(v15 + 8))();
  }

  v85 = swift_conformsToProtocol2();
  if (v85 && v12)
  {
    v86 = (*(v85 + 8))(v12, v85);

    *(v84 + 160) = v86;
  }

  else
  {
  }

  *(v84 + 64) = sub_1AFC73B7C;
  *(v84 + 72) = v81;
  sub_1AF0FB8EC(0, 0);
  *(v84 + 168) = 0;
  *(v84 + 176) = 0;

  *(v84 + 216) = 0;
  *(v0 + 112) = v84;
  qword_1EB6C3658 = v0;
  return result;
}

void sub_1AFC61ADC(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (![objc_opt_self() immediateMode])
  {
    v4 = sub_1AFC5FD98();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = 0;
    goto LABEL_6;
  }

  v4 = *(a1 + 32);
  v5 = v4;
  if (!v4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = [v4 parametricType];

LABEL_6:
  *a2 = v6;
}

void sub_1AFC61B60(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if ([objc_opt_self() immediateMode])
  {
    v4 = *(a2 + 32);
  }

  else
  {
    v4 = sub_1AFC5FD98();
  }

  v5 = v4;
  [v4 setParametricType_];
}

BOOL sub_1AFC61BE0()
{
  v1 = objc_opt_self();
  if ([v1 immediateMode])
  {
    v2 = *(v0 + 32);
    v3 = v2;
    v4 = &selRef_numberWithBool_;
    if (!v2)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v2 = sub_1AFC5FD98();
    v4 = &selRef_numberWithBool_;
    if (!v2)
    {
      goto LABEL_6;
    }
  }

  v5 = [v2 v4[52]];

  if (v5 == 1)
  {
    return 1;
  }

LABEL_6:
  if ([v1 immediateMode])
  {
    v6 = *(v0 + 32);
    v7 = v6;
    if (!v6)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v6 = sub_1AFC5FD98();
    if (!v6)
    {
      goto LABEL_11;
    }
  }

  v8 = [v6 v4[52]];

  if (v8 == 6)
  {
    return 1;
  }

LABEL_11:
  if ([v1 immediateMode])
  {
    v9 = *(v0 + 32);
    v10 = v9;
    if (!v9)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v9 = sub_1AFC5FD98();
    if (!v9)
    {
      goto LABEL_16;
    }
  }

  v11 = [v9 v4[52]];

  if (v11 == 7)
  {
    return 1;
  }

LABEL_16:
  if ([v1 immediateMode])
  {
    v12 = *(v0 + 32);
    v13 = v12;
    if (!v12)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v12 = sub_1AFC5FD98();
    if (!v12)
    {
      goto LABEL_21;
    }
  }

  v14 = [v12 v4[52]];

  if (v14 == 5)
  {
    return 1;
  }

LABEL_21:
  if (![v1 immediateMode])
  {
    v15 = sub_1AFC5FD98();
    if (!v15)
    {
      goto LABEL_27;
    }

LABEL_25:
    v17 = [v15 v4[52]];

    if (v17 != 4)
    {
      goto LABEL_27;
    }

    return 1;
  }

  v15 = *(v0 + 32);
  v16 = v15;
  if (v15)
  {
    goto LABEL_25;
  }

LABEL_27:
  if ([v1 immediateMode])
  {
    v19 = *(v0 + 32);
    v20 = v19;
    if (v19)
    {
LABEL_29:
      v21 = [v19 v4[52]];

      return v21 == 8;
    }
  }

  else
  {
    v19 = sub_1AFC5FD98();
    if (v19)
    {
      goto LABEL_29;
    }
  }

  return 0;
}

BOOL sub_1AFC61DE0()
{
  if ([objc_opt_self() immediateMode])
  {
    v1 = *(v0 + 32);
    v2 = v1;
    if (v1)
    {
LABEL_3:
      v3 = [v1 parametricType];

      return v3 == 5;
    }
  }

  else
  {
    v1 = sub_1AFC5FD98();
    if (v1)
    {
      goto LABEL_3;
    }
  }

  return 0;
}

void sub_1AFC61E58(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  if (![objc_opt_self() immediateMode])
  {
    v4 = sub_1AFC5FD98();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v4 = *(a1 + 32);
  v5 = v4;
  if (!v4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = [v4 parametricType];

  v7 = v6 == 5;
LABEL_6:
  *a2 = v7;
}

BOOL sub_1AFC61EE4()
{
  v1 = objc_opt_self();
  if ([v1 immediateMode])
  {
    v2 = *(v0 + 32);
    v3 = v2;
    if (!v2)
    {
      return 1;
    }
  }

  else
  {
    v2 = sub_1AFC5FD98();
    if (!v2)
    {
      return 1;
    }
  }

  v4 = [v2 parametricType];

  if (!v4)
  {
    return 1;
  }

  if (![v1 immediateMode])
  {
    v5 = sub_1AFC5FD98();
    if (!v5)
    {
      goto LABEL_12;
    }

LABEL_10:
    v7 = [v5 parametricType];

    if (v7 != 3)
    {
      goto LABEL_12;
    }

    return 1;
  }

  v5 = *(v0 + 32);
  v6 = v5;
  if (v5)
  {
    goto LABEL_10;
  }

LABEL_12:
  if ([v1 immediateMode])
  {
    v9 = *(v0 + 32);
    v10 = v9;
    if (v9)
    {
LABEL_14:
      v11 = [v9 parametricType];

      return v11 == 2;
    }
  }

  else
  {
    v9 = sub_1AFC5FD98();
    if (v9)
    {
      goto LABEL_14;
    }
  }

  return 0;
}

BOOL sub_1AFC62004()
{
  v1 = objc_opt_self();
  if ([v1 immediateMode])
  {
    v2 = *(v0 + 32);
    v3 = v2;
    if (!v2)
    {
      return 1;
    }
  }

  else
  {
    v2 = sub_1AFC5FD98();
    if (!v2)
    {
      return 1;
    }
  }

  v4 = [v2 parametricType];

  if (!v4)
  {
    return 1;
  }

  if ([v1 immediateMode])
  {
    v5 = *(v0 + 32);
    v6 = v5;
    if (!v5)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v5 = sub_1AFC5FD98();
    if (!v5)
    {
      goto LABEL_11;
    }
  }

  v7 = [v5 parametricType];

  if (v7 == 6)
  {
    return 1;
  }

LABEL_11:
  if ([v1 immediateMode])
  {
    v8 = *(v0 + 32);
    v9 = v8;
    if (!v8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v8 = sub_1AFC5FD98();
    if (!v8)
    {
      goto LABEL_16;
    }
  }

  v10 = [v8 parametricType];

  if (v10 == 7)
  {
    return 1;
  }

LABEL_16:
  if ([v1 immediateMode])
  {
    v11 = *(v0 + 32);
    v12 = v11;
    if (!v11)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v11 = sub_1AFC5FD98();
    if (!v11)
    {
      goto LABEL_21;
    }
  }

  v13 = [v11 parametricType];

  if (v13 == 3)
  {
    return 1;
  }

LABEL_21:
  if ([v1 immediateMode])
  {
    v14 = *(v0 + 32);
    v15 = v14;
    if (!v14)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v14 = sub_1AFC5FD98();
    if (!v14)
    {
      goto LABEL_26;
    }
  }

  v16 = [v14 parametricType];

  if (v16 == 5)
  {
    return 1;
  }

LABEL_26:
  if (![v1 immediateMode])
  {
    v17 = sub_1AFC5FD98();
    if (!v17)
    {
      goto LABEL_32;
    }

LABEL_30:
    v19 = [v17 parametricType];

    if (v19 != 4)
    {
      goto LABEL_32;
    }

    return 1;
  }

  v17 = *(v0 + 32);
  v18 = v17;
  if (v17)
  {
    goto LABEL_30;
  }

LABEL_32:
  if ([v1 immediateMode])
  {
    v21 = *(v0 + 32);
    v22 = v21;
    if (v21)
    {
LABEL_34:
      v23 = [v21 parametricType];

      return v23 == 2;
    }
  }

  else
  {
    v21 = sub_1AFC5FD98();
    if (v21)
    {
      goto LABEL_34;
    }
  }

  return 0;
}

BOOL sub_1AFC62244()
{
  v1 = objc_opt_self();
  if ([v1 immediateMode])
  {
    v2 = *(v0 + 32);
    v3 = v2;
    if (!v2)
    {
      return 1;
    }
  }

  else
  {
    v2 = sub_1AFC5FD98();
    if (!v2)
    {
      return 1;
    }
  }

  v4 = [v2 parametricType];

  if (!v4)
  {
    return 1;
  }

  if ([v1 immediateMode])
  {
    v5 = *(v0 + 32);
    v6 = v5;
    if (v5)
    {
LABEL_8:
      v7 = [v5 parametricType];

      return v7 == 3;
    }
  }

  else
  {
    v5 = sub_1AFC5FD98();
    if (v5)
    {
      goto LABEL_8;
    }
  }

  return 0;
}

BOOL sub_1AFC6231C()
{
  if ([objc_opt_self() immediateMode])
  {
    v1 = *(v0 + 32);
    v2 = v1;
    if (v1)
    {
LABEL_3:
      v3 = [v1 parametricType];

      return v3 == 0;
    }
  }

  else
  {
    v1 = sub_1AFC5FD98();
    if (v1)
    {
      goto LABEL_3;
    }
  }

  return 1;
}

void sub_1AFC62394(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  if (![objc_opt_self() immediateMode])
  {
    v4 = sub_1AFC5FD98();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 1;
    goto LABEL_6;
  }

  v4 = *(a1 + 32);
  v5 = v4;
  if (!v4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = [v4 parametricType];

  v7 = v6 == 0;
LABEL_6:
  *a2 = v7;
}

BOOL sub_1AFC62420()
{
  if ([objc_opt_self() immediateMode])
  {
    v1 = *(v0 + 32);
    v2 = v1;
    if (v1)
    {
LABEL_3:
      v3 = [v1 parametricType];

      return v3 == 2;
    }
  }

  else
  {
    v1 = sub_1AFC5FD98();
    if (v1)
    {
      goto LABEL_3;
    }
  }

  return 0;
}

void sub_1AFC62498(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  if (![objc_opt_self() immediateMode])
  {
    v4 = sub_1AFC5FD98();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v4 = *(a1 + 32);
  v5 = v4;
  if (!v4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = [v4 parametricType];

  v7 = v6 == 2;
LABEL_6:
  *a2 = v7;
}

BOOL sub_1AFC62524()
{
  if ([objc_opt_self() immediateMode])
  {
    v1 = *(v0 + 32);
    v2 = v1;
    if (v1)
    {
LABEL_3:
      v3 = [v1 parametricType];

      return v3 == 8;
    }
  }

  else
  {
    v1 = sub_1AFC5FD98();
    if (v1)
    {
      goto LABEL_3;
    }
  }

  return 0;
}

void sub_1AFC6259C(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  if (![objc_opt_self() immediateMode])
  {
    v4 = sub_1AFC5FD98();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v4 = *(a1 + 32);
  v5 = v4;
  if (!v4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = [v4 parametricType];

  v7 = v6 == 8;
LABEL_6:
  *a2 = v7;
}

void sub_1AFC62628(uint64_t a1@<X0>, SEL *a2@<X3>, _DWORD *a3@<X8>)
{
  if (![objc_opt_self() immediateMode])
  {
    v6 = sub_1AFC5FD98();
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  v6 = *(a1 + 32);
  v7 = v6;
  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_3:
  [v6 *a2];
  v9 = v8;

LABEL_6:
  *a3 = v9;
}

void sub_1AFC626B4(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v7 = *a1;
  if ([objc_opt_self() immediateMode])
  {
    v8 = *(a2 + 32);
  }

  else
  {
    v8 = sub_1AFC5FD98();
  }

  v10 = v8;
  LODWORD(v9) = v7;
  [v8 *a5];
}

BOOL sub_1AFC6273C()
{
  v1 = objc_opt_self();
  if ([v1 immediateMode])
  {
    v2 = *(v0 + 32);
    v3 = v2;
    v4 = &selRef_numberWithBool_;
    if (!v2)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v2 = sub_1AFC5FD98();
    v4 = &selRef_numberWithBool_;
    if (!v2)
    {
      goto LABEL_6;
    }
  }

  v5 = [v2 v4[52]];

  if (v5 == 1)
  {
    return 1;
  }

LABEL_6:
  if ([v1 immediateMode])
  {
    v6 = *(v0 + 32);
    v7 = v6;
    if (!v6)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v6 = sub_1AFC5FD98();
    if (!v6)
    {
      goto LABEL_11;
    }
  }

  v8 = [v6 v4[52]];

  if (v8 == 4)
  {
    return 1;
  }

LABEL_11:
  if (![v1 immediateMode])
  {
    v9 = sub_1AFC5FD98();
    if (!v9)
    {
      goto LABEL_17;
    }

LABEL_15:
    v11 = [v9 v4[52]];

    if (v11 != 6)
    {
      goto LABEL_17;
    }

    return 1;
  }

  v9 = *(v0 + 32);
  v10 = v9;
  if (v9)
  {
    goto LABEL_15;
  }

LABEL_17:
  if ([v1 immediateMode])
  {
    v13 = *(v0 + 32);
    v14 = v13;
    if (v13)
    {
LABEL_19:
      v15 = [v13 v4[52]];

      return v15 == 8;
    }
  }

  else
  {
    v13 = sub_1AFC5FD98();
    if (v13)
    {
      goto LABEL_19;
    }
  }

  return 0;
}

id sub_1AFC628C8(SEL *a1)
{
  if ([objc_opt_self() immediateMode])
  {
    v3 = v1[4];
    v4 = v3;
  }

  else
  {
    sub_1AFC73A9C(v1, v8);
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1AF0F2990(v8);
    if (Strong)
    {
      objc_opt_self();
      v6 = swift_dynamicCastObjCClass();
      if (!v6)
      {
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v6 = 0;
    }

    v3 = [v6 *a1];
  }

  return v3;
}

double sub_1AFC629A0()
{
  if ([objc_opt_self() immediateMode])
  {
    v1 = v0[4];
    v2 = v1;
    if (v1)
    {
LABEL_3:
      [v1 angularVelocity];
      v7 = v3;

      return v7;
    }
  }

  else
  {
    sub_1AFC73A9C(v0, v8);
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1AF0F2990(v8);
    if (Strong)
    {
      objc_opt_self();
      v6 = swift_dynamicCastObjCClass();
      if (!v6)
      {
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v6 = 0;
    }

    v1 = [v6 physicsBody];

    if (v1)
    {
      goto LABEL_3;
    }
  }

  return 0.0;
}

double sub_1AFC62ABC(SEL *a1)
{
  if ([objc_opt_self() immediateMode])
  {
    v3 = v1[4];
    v4 = v3;
    if (v3)
    {
LABEL_3:
      [v3 *a1];
      v9 = v5;

      return v9;
    }
  }

  else
  {
    sub_1AFC73A9C(v1, v10);
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1AF0F2990(v10);
    if (Strong)
    {
      objc_opt_self();
      v8 = swift_dynamicCastObjCClass();
      if (!v8)
      {
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v8 = 0;
    }

    v3 = [v8 physicsBody];

    if (v3)
    {
      goto LABEL_3;
    }
  }

  return 0.0;
}

uint64_t sub_1AFC62C1C@<X0>(void *a1@<X0>, void (*a2)(char *, uint64_t)@<X1>, uint64_t (*a3)(char *)@<X2>, uint64_t a4@<X8>)
{
  v44 = a4;
  sub_1AFC739C4(0, &qword_1ED726A70, sub_1AF445B90, &type metadata for StringCodingKeys, MEMORY[0x1E69E6F48]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v27 - v11;
  v38 = 0;
  swift_unknownObjectWeakInit();
  v38 = 0;
  swift_unknownObjectWeakAssign();
  v39 = 0x3E6C6C756E3CLL;
  v40 = 0xE600000000000000;
  v42 = 0;
  v43 = 0;
  v41 = 0;
  v13 = a1[3];
  v14 = a1[4];
  sub_1AF441150(a1, v13);
  if (sub_1AF694FF8(2037, v13, v14))
  {
    sub_1AF441150(a1, a1[3]);
    sub_1AFDFF398();
    if (!v4)
    {
      sub_1AF441150(&v29, v32);
      sub_1AF9B3A20();
      sub_1AFDFEE88();
      v15 = &v33;
LABEL_9:
      sub_1AF9B3A74(v15, v37);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v29);
LABEL_17:
      a2(v37, v44);
    }
  }

  else
  {
    v16 = a1[3];
    v17 = a1[4];
    sub_1AF441150(a1, v16);
    if (sub_1AF694FF8(2029, v16, v17))
    {
      sub_1AF441150(a1, a1[3]);
      sub_1AFDFF398();
      if (!v4)
      {
        sub_1AF441150(&v29, v32);
        v20 = sub_1AFDFEE38();
        v22 = v21;
        v34 = 0;
        swift_unknownObjectWeakInit();
        v34 = 0;
        v15 = swift_unknownObjectWeakAssign();
        v35 = v20;
        v36 = v22;
        goto LABEL_9;
      }
    }

    else
    {
      v28 = a2;
      sub_1AF441150(a1, a1[3]);
      sub_1AF445B90();
      sub_1AFDFF3B8();
      if (!v4)
      {
        v33 = 0;
        LOBYTE(v34) = 1;
        v35 = 0xD000000000000017;
        v36 = 0x80000001AFF4C150;
        v18 = sub_1AFDFE698();
        if (v19)
        {
          v23 = v18;
        }

        else
        {
          v23 = 0;
        }

        if (v19)
        {
          v24 = v19;
        }

        else
        {
          v24 = 0xE000000000000000;
        }

        (*(v10 + 8))(v12, v9);
        v30 = 0;
        swift_unknownObjectWeakInit();
        v30 = 0;
        v25 = swift_unknownObjectWeakAssign();
        v31 = v23;
        v32 = v24;
        sub_1AF9B3A74(v25, v37);
        a2 = v28;
        goto LABEL_17;
      }
    }
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return a3(v37);
}

void sub_1AFC62FF4(uint64_t a1, uint64_t a2, SEL *a3)
{
  v5 = v3;
  ObjectType = swift_getObjectType();
  (*(a2 + 16))(v3, ObjectType, a2);
  sub_1AFC73A9C(v3, v12);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1AF0F2990(v12);
  if (!Strong)
  {
    goto LABEL_5;
  }

  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (!v9)
  {
    swift_unknownObjectRelease();
LABEL_5:
    v11 = 0;
    goto LABEL_6;
  }

  v10 = [v9 presentationNode];
  swift_unknownObjectRelease();
  v11 = [v10 *a3];

LABEL_6:
  v5[4] = v11;
}

void *sub_1AFC6314C@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 8) = 0;
  *(swift_unknownObjectWeakInit() + 8) = 0;
  result = swift_unknownObjectWeakAssign();
  result[2] = 0x3E6C6C756E3CLL;
  result[3] = 0xE600000000000000;
  result[5] = 0;
  result[6] = 0;
  result[4] = 0;
  return result;
}

uint64_t sub_1AFC63198()
{
  sub_1AFC7246C(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE55190;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E7450];
  sub_1AFC703CC(0, qword_1ED72D340, &qword_1ED72F740, MEMORY[0x1E69E7450]);
  v3 = swift_allocObject();
  v3[4] = sub_1AFC71508;
  v3[5] = KeyPath;
  v3[2] = sub_1AFC71520;
  v3[3] = KeyPath;
  v3[6] = KeyPath;
  type metadata accessor for PropertyDescription();
  v4 = swift_allocObject();
  *(v4 + 104) = 0;
  *(v4 + 112) = 1;
  *(v4 + 128) = 0;
  *(v4 + 136) = 0;
  *(v4 + 120) = 0;
  *(v4 + 160) = MEMORY[0x1E69E7CC0];
  *(v4 + 216) = 0;
  sub_1AFC739C4(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], v2);
  v6 = v5;
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;
  *(v4 + 16) = 0x797469636F6C6576;
  *(v4 + 24) = 0xE800000000000000;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = v5;
  *(v4 + 48) = 0;
  *(v4 + 56) = 1;
  *(v4 + 58) = 256;
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
  *(v4 + 210) = 256;
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
    *(v4 + 160) = (*(v10 + 8))(v9, v10);
  }

  v11 = *(v4 + 64);
  v12 = *(v4 + 72);
  *(v4 + 64) = sub_1AFC7152C;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(v11, v12);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;

  *(v0 + 32) = v4;
  v13 = swift_getKeyPath();
  v14 = MEMORY[0x1E69E74A8];
  sub_1AFC703CC(0, &qword_1ED725C70, &qword_1ED72F6E0, MEMORY[0x1E69E74A8]);
  v15 = swift_allocObject();
  v15[4] = sub_1AFC71508;
  v15[5] = v13;
  v15[2] = sub_1AFC71534;
  v15[3] = v13;
  v15[6] = v13;
  v16 = swift_allocObject();
  *(v16 + 104) = 0;
  *(v16 + 112) = 1;
  *(v16 + 128) = 0;
  *(v16 + 136) = 0;
  *(v16 + 120) = 0;
  *(v16 + 160) = MEMORY[0x1E69E7CC0];
  *(v16 + 210) = 0;
  *(v16 + 216) = 0;
  v17 = MEMORY[0x1E69E6448];
  sub_1AFC739C4(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], v14);
  v19 = v18;
  *(v16 + 168) = 0;
  *(v16 + 176) = 0;
  *(v16 + 16) = 0x5672616C75676E61;
  *(v16 + 24) = 0xEF797469636F6C65;
  *(v16 + 32) = v13;
  *(v16 + 40) = v18;
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
  *(v16 + 144) = xmmword_1AFE22A20;
  *(v16 + 80) = v15;
  *(v16 + 88) = &off_1F2535378;
  *(v16 + 210) = 0;
  v20 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v20 && v19)
  {
    v19 = (*(v20 + 8))(v19, v20);
  }

  v21 = swift_conformsToProtocol2();
  if (v21 && v19)
  {
    *(v16 + 160) = (*(v21 + 8))(v19, v21);
  }

  v22 = *(v16 + 64);
  v23 = *(v16 + 72);
  *(v16 + 64) = sub_1AFC71540;
  *(v16 + 72) = v13;
  sub_1AF0FB8EC(v22, v23);
  *(v16 + 168) = 0;
  *(v16 + 176) = 0;

  *(v16 + 216) = 0;

  *(v0 + 40) = v16;
  v24 = swift_getKeyPath();
  v25 = swift_allocObject();
  v25[4] = sub_1AFC73B80;
  v25[5] = v24;
  v25[2] = sub_1AFC73C14;
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
  strcpy((v26 + 16), "velocityFactor");
  *(v26 + 31) = -18;
  *(v26 + 32) = v24;
  *(v26 + 40) = v6;
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
  v27 = v6;
  if (v8)
  {
    v27 = (*(v7 + 8))(v8, v7);
  }

  v28 = swift_conformsToProtocol2();
  if (v28 && v27)
  {
    *(v26 + 160) = (*(v28 + 8))(v27, v28);
  }

  v29 = *(v26 + 64);
  v30 = *(v26 + 72);
  *(v26 + 64) = sub_1AFC73B84;
  *(v26 + 72) = v24;
  sub_1AF0FB8EC(v29, v30);
  *(v26 + 168) = 0;
  *(v26 + 176) = 0;

  *(v26 + 216) = 0;

  *(v0 + 48) = v26;
  v31 = swift_getKeyPath();
  v32 = swift_allocObject();
  v32[4] = sub_1AFC73B80;
  v32[5] = v31;
  v32[2] = sub_1AFC73C14;
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
  *(v33 + 16) = 0xD000000000000015;
  *(v33 + 24) = 0x80000001AFF4BFF0;
  *(v33 + 32) = v31;
  *(v33 + 40) = v6;
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
  *(v33 + 96) = 0;
  *(v33 + 104) = 0;
  *(v33 + 144) = xmmword_1AFE22A20;
  *(v33 + 80) = v32;
  *(v33 + 88) = &off_1F2535378;
  *(v33 + 210) = 0;
  swift_retain_n();
  if (v8)
  {
    v6 = (*(v7 + 8))(v8, v7);
  }

  v34 = swift_conformsToProtocol2();
  if (v34 && v6)
  {
    *(v33 + 160) = (*(v34 + 8))(v6, v34);
  }

  v35 = *(v33 + 64);
  v36 = *(v33 + 72);
  *(v33 + 64) = sub_1AFC73B84;
  *(v33 + 72) = v31;
  sub_1AF0FB8EC(v35, v36);
  *(v33 + 168) = 0;
  *(v33 + 176) = 0;

  *(v33 + 216) = 0;

  *(v0 + 56) = v33;
  v37 = swift_getKeyPath();
  sub_1AFC7246C(0, &unk_1ED722B70, v17, type metadata accessor for EntityGetSet);
  v38 = swift_allocObject();
  v38[4] = sub_1AFC71618;
  v38[5] = v37;
  v38[2] = sub_1AFC7164C;
  v38[3] = v37;
  v38[6] = v37;
  v39 = swift_allocObject();
  *(v39 + 112) = 1;
  *(v39 + 128) = 0;
  *(v39 + 136) = 0;
  *(v39 + 120) = 0;
  v40 = MEMORY[0x1E69E7CC0];
  *(v39 + 160) = MEMORY[0x1E69E7CC0];
  *(v39 + 168) = 0;
  *(v39 + 216) = 0;
  *(v39 + 176) = 0;
  *(v39 + 16) = 0x676E69706D6164;
  *(v39 + 24) = 0xE700000000000000;
  *(v39 + 32) = v37;
  *(v39 + 40) = v17;
  *(v39 + 48) = 0;
  *(v39 + 56) = 1;
  *(v39 + 58) = 256;
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
  *(v39 + 210) = 256;
  v41 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v41)
  {
    v42 = (*(v41 + 8))();
  }

  else
  {
    v42 = v17;
  }

  v43 = swift_conformsToProtocol2();
  if (v43 && v42)
  {
    *(v39 + 160) = (*(v43 + 8))(v42, v43);
  }

  *(v39 + 64) = sub_1AFC71658;
  *(v39 + 72) = v37;
  sub_1AF0FB8EC(0, 0);
  *(v39 + 168) = 0;
  *(v39 + 176) = 0;

  *(v39 + 216) = 0;
  *(v0 + 64) = v39;
  v44 = swift_getKeyPath();
  v45 = swift_allocObject();
  v45[4] = sub_1AFC73B04;
  v45[5] = v44;
  v45[2] = sub_1AFC73C18;
  v45[3] = v44;
  v45[6] = v44;
  v46 = swift_allocObject();
  *(v46 + 112) = 1;
  *(v46 + 128) = 0;
  *(v46 + 136) = 0;
  *(v46 + 120) = 0;
  *(v46 + 160) = v40;
  *(v46 + 168) = 0;
  *(v46 + 216) = 0;
  *(v46 + 176) = 0;
  strcpy((v46 + 16), "angularDamping");
  *(v46 + 31) = -18;
  *(v46 + 32) = v44;
  *(v46 + 40) = v17;
  *(v46 + 48) = 0;
  *(v46 + 56) = 1;
  *(v46 + 58) = 0;
  *(v46 + 184) = 0;
  *(v46 + 188) = 1;
  *(v46 + 192) = 0;
  *(v46 + 196) = 1;
  *(v46 + 200) = 0x1000100000000;
  *(v46 + 208) = 1;
  *(v46 + 64) = 0;
  *(v46 + 72) = 0;
  *(v46 + 96) = 0;
  *(v46 + 104) = 0;
  *(v46 + 144) = xmmword_1AFE22A20;
  *(v46 + 80) = v45;
  *(v46 + 88) = &off_1F2535378;
  *(v46 + 210) = 0;
  swift_retain_n();
  if (v41)
  {
    v47 = (*(v41 + 8))();
  }

  else
  {
    v47 = v17;
  }

  v48 = swift_conformsToProtocol2();
  if (v48 && v47)
  {
    *(v46 + 160) = (*(v48 + 8))(v47, v48);
  }

  *(v46 + 64) = sub_1AFC73B88;
  *(v46 + 72) = v44;
  sub_1AF0FB8EC(0, 0);
  *(v46 + 168) = 0;
  *(v46 + 176) = 0;

  *(v46 + 216) = 0;
  *(v0 + 72) = v46;
  v49 = swift_getKeyPath();
  v50 = swift_allocObject();
  v50[4] = sub_1AFC73B04;
  v50[5] = v49;
  v50[2] = sub_1AFC73C18;
  v50[3] = v49;
  v50[6] = v49;
  v51 = swift_allocObject();
  *(v51 + 112) = 1;
  *(v51 + 128) = 0;
  *(v51 + 136) = 0;
  *(v51 + 120) = 0;
  *(v51 + 160) = v40;
  *(v51 + 168) = 0;
  *(v51 + 216) = 0;
  *(v51 + 176) = 0;
  *(v51 + 16) = 1936941421;
  *(v51 + 24) = 0xE400000000000000;
  *(v51 + 32) = v49;
  *(v51 + 40) = v17;
  *(v51 + 48) = 0;
  *(v51 + 56) = 1;
  *(v51 + 58) = 0;
  *(v51 + 184) = 0;
  *(v51 + 188) = 1;
  *(v51 + 192) = 0;
  *(v51 + 196) = 1;
  *(v51 + 200) = 0x1000100000000;
  *(v51 + 208) = 1;
  *(v51 + 64) = 0;
  *(v51 + 72) = 0;
  *(v51 + 96) = 0;
  *(v51 + 104) = 0;
  *(v51 + 144) = xmmword_1AFE22A20;
  *(v51 + 80) = v50;
  *(v51 + 88) = &off_1F2535378;
  *(v51 + 210) = 0;
  swift_retain_n();
  if (v41)
  {
    v52 = (*(v41 + 8))();
  }

  else
  {
    v52 = v17;
  }

  v53 = swift_conformsToProtocol2();
  if (v53 && v52)
  {
    *(v51 + 160) = (*(v53 + 8))(v52, v53);
  }

  *(v51 + 64) = sub_1AFC73B88;
  *(v51 + 72) = v49;
  sub_1AF0FB8EC(0, 0);
  *(v51 + 168) = 0;
  *(v51 + 176) = 0;

  *(v51 + 216) = 0;
  *(v0 + 80) = v51;
  v54 = swift_getKeyPath();
  v55 = swift_allocObject();
  v55[4] = sub_1AFC73B04;
  v55[5] = v54;
  v55[2] = sub_1AFC73C18;
  v55[3] = v54;
  v55[6] = v54;
  v56 = swift_allocObject();
  *(v56 + 112) = 1;
  *(v56 + 128) = 0;
  *(v56 + 136) = 0;
  *(v56 + 120) = 0;
  *(v56 + 160) = v40;
  *(v56 + 168) = 0;
  *(v56 + 216) = 0;
  *(v56 + 176) = 0;
  *(v56 + 16) = 0x656772616863;
  *(v56 + 24) = 0xE600000000000000;
  *(v56 + 32) = v54;
  *(v56 + 40) = v17;
  *(v56 + 48) = 0;
  *(v56 + 56) = 1;
  *(v56 + 58) = 0;
  *(v56 + 184) = 0;
  *(v56 + 188) = 1;
  *(v56 + 192) = 0;
  *(v56 + 196) = 1;
  *(v56 + 200) = 0x1000100000000;
  *(v56 + 208) = 1;
  *(v56 + 64) = 0;
  *(v56 + 72) = 0;
  *(v56 + 96) = 0;
  *(v56 + 104) = 0;
  *(v56 + 144) = xmmword_1AFE22A20;
  *(v56 + 80) = v55;
  *(v56 + 88) = &off_1F2535378;
  *(v56 + 210) = 0;
  swift_retain_n();
  if (v41)
  {
    v57 = (*(v41 + 8))();
  }

  else
  {
    v57 = v17;
  }

  v58 = swift_conformsToProtocol2();
  if (v58 && v57)
  {
    *(v56 + 160) = (*(v58 + 8))(v57, v58);
  }

  *(v56 + 64) = sub_1AFC73B88;
  *(v56 + 72) = v54;
  sub_1AF0FB8EC(0, 0);
  *(v56 + 168) = 0;
  *(v56 + 176) = 0;

  *(v56 + 216) = 0;
  *(v0 + 88) = v56;
  v59 = swift_getKeyPath();
  v60 = swift_allocObject();
  v60[4] = sub_1AFC73B04;
  v60[5] = v59;
  v60[2] = sub_1AFC73C18;
  v60[3] = v59;
  v60[6] = v59;
  v61 = swift_allocObject();
  *(v61 + 112) = 1;
  *(v61 + 128) = 0;
  *(v61 + 136) = 0;
  *(v61 + 120) = 0;
  *(v61 + 160) = v40;
  *(v61 + 168) = 0;
  *(v61 + 216) = 0;
  *(v61 + 176) = 0;
  *(v61 + 16) = 0x6E6F697463697266;
  *(v61 + 24) = 0xE800000000000000;
  *(v61 + 32) = v59;
  *(v61 + 40) = v17;
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
  if (v41)
  {
    v62 = (*(v41 + 8))();
  }

  else
  {
    v62 = v17;
  }

  v63 = swift_conformsToProtocol2();
  if (v63 && v62)
  {
    *(v61 + 160) = (*(v63 + 8))(v62, v63);
  }

  *(v61 + 64) = sub_1AFC73B88;
  *(v61 + 72) = v59;
  sub_1AF0FB8EC(0, 0);
  *(v61 + 168) = 0;
  *(v61 + 176) = 0;

  *(v61 + 216) = 0;
  *(v0 + 96) = v61;
  v64 = swift_getKeyPath();
  v65 = swift_allocObject();
  v65[4] = sub_1AFC73B04;
  v65[5] = v64;
  v65[2] = sub_1AFC73C18;
  v65[3] = v64;
  v65[6] = v64;
  v66 = swift_allocObject();
  *(v66 + 112) = 1;
  *(v66 + 128) = 0;
  *(v66 + 136) = 0;
  *(v66 + 120) = 0;
  *(v66 + 160) = v40;
  *(v66 + 168) = 0;
  *(v66 + 216) = 0;
  *(v66 + 176) = 0;
  *(v66 + 16) = 0x7475746974736572;
  *(v66 + 24) = 0xEB000000006E6F69;
  *(v66 + 32) = v64;
  *(v66 + 40) = v17;
  *(v66 + 48) = 0;
  *(v66 + 56) = 1;
  *(v66 + 58) = 0;
  *(v66 + 184) = 0;
  *(v66 + 188) = 1;
  *(v66 + 192) = 0;
  *(v66 + 196) = 1;
  *(v66 + 200) = 0x1000100000000;
  *(v66 + 208) = 1;
  *(v66 + 64) = 0;
  *(v66 + 72) = 0;
  *(v66 + 96) = 0;
  *(v66 + 104) = 0;
  *(v66 + 144) = xmmword_1AFE22A20;
  *(v66 + 80) = v65;
  *(v66 + 88) = &off_1F2535378;
  *(v66 + 210) = 0;
  swift_retain_n();
  if (v41)
  {
    v67 = (*(v41 + 8))();
  }

  else
  {
    v67 = v17;
  }

  v68 = swift_conformsToProtocol2();
  if (v68 && v67)
  {
    *(v66 + 160) = (*(v68 + 8))(v67, v68);
  }

  *(v66 + 64) = sub_1AFC73B88;
  *(v66 + 72) = v64;
  sub_1AF0FB8EC(0, 0);
  *(v66 + 168) = 0;
  *(v66 + 176) = 0;

  *(v66 + 216) = 0;
  *(v0 + 104) = v66;
  v69 = swift_getKeyPath();
  v70 = swift_allocObject();
  v70[4] = sub_1AFC73B04;
  v70[5] = v69;
  v70[2] = sub_1AFC73C18;
  v70[3] = v69;
  v70[6] = v69;
  v71 = swift_allocObject();
  *(v71 + 112) = 1;
  *(v71 + 128) = 0;
  *(v71 + 136) = 0;
  *(v71 + 120) = 0;
  *(v71 + 160) = v40;
  *(v71 + 168) = 0;
  *(v71 + 216) = 0;
  *(v71 + 176) = 0;
  *(v71 + 16) = 0x46676E696C6C6F72;
  *(v71 + 24) = 0xEF6E6F6974636972;
  *(v71 + 32) = v69;
  *(v71 + 40) = v17;
  *(v71 + 48) = 0;
  *(v71 + 56) = 1;
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
  swift_retain_n();
  if (v41)
  {
    v17 = (*(v41 + 8))();
  }

  v72 = swift_conformsToProtocol2();
  if (v72 && v17)
  {
    *(v71 + 160) = (*(v72 + 8))(v17, v72);
  }

  *(v71 + 64) = sub_1AFC73B88;
  *(v71 + 72) = v69;
  sub_1AF0FB8EC(0, 0);
  *(v71 + 168) = 0;
  *(v71 + 176) = 0;

  *(v71 + 216) = 0;
  *(v0 + 112) = v71;
  qword_1EB6C3660 = v0;
  return result;
}

void sub_1AFC64620(uint64_t a1@<X3>, uint64_t (*a2)(uint64_t)@<X4>, SEL *a3@<X5>, _DWORD *a4@<X8>)
{
  v6 = a2(a1);
  if (v6)
  {
    v7 = v6;
    [v6 *a3];
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  *a4 = v9;
}

id sub_1AFC646A8(SEL *a1, SEL *a2)
{
  if (![objc_opt_self() immediateMode])
  {
    sub_1AFC73A9C(v2, v11);
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1AF0F2990(v11);
    if (Strong)
    {
      objc_opt_self();
      v9 = swift_dynamicCastObjCClass();
      if (!v9)
      {
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v9 = 0;
    }

    v5 = [v9 *a2];

    if (v5)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v5 = v2[4];
  v6 = v5;
  if (!v5)
  {
    return 0;
  }

LABEL_3:
  v7 = [v5 *a1];

  return v7;
}

double sub_1AFC647FC(SEL *a1, SEL *a2)
{
  if ([objc_opt_self() immediateMode])
  {
    v5 = v2[4];
    v6 = v5;
    if (v5)
    {
LABEL_3:
      [v5 *a1];
      v11 = v7;

      return v11;
    }
  }

  else
  {
    sub_1AFC73A9C(v2, v12);
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1AF0F2990(v12);
    if (Strong)
    {
      objc_opt_self();
      v10 = swift_dynamicCastObjCClass();
      if (!v10)
      {
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v10 = 0;
    }

    v5 = [v10 *a2];

    if (v5)
    {
      goto LABEL_3;
    }
  }

  return 0.0;
}

uint64_t sub_1AFC6499C()
{
  sub_1AFC7246C(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v135 = swift_allocObject();
  *(v135 + 16) = xmmword_1AFEA6590;
  KeyPath = swift_getKeyPath();
  v1 = swift_getKeyPath();
  v2 = MEMORY[0x1E69E7360];
  sub_1AFC7246C(0, &unk_1EB634340, MEMORY[0x1E69E7360], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AFC716C8;
  v3[5] = v1;
  v3[2] = sub_1AFC716FC;
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
  strcpy((v4 + 16), "fieldTypeIndex");
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
  v134 = v6;
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
  *(v4 + 64) = sub_1AFC71708;
  *(v4 + 72) = v1;
  sub_1AF0FB8EC(v8, v9);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;

  sub_1AFC700D0(0, &unk_1EB643A40, type metadata accessor for VFXForceFieldType);
  v10 = swift_allocObject();
  v10[4] = sub_1AFC71710;
  v10[5] = KeyPath;
  v10[2] = sub_1AFC71744;
  v10[3] = KeyPath;
  v10[6] = KeyPath;
  v11 = swift_allocObject();
  *(v11 + 104) = 0;
  *(v11 + 112) = 1;
  *(v11 + 128) = 0;
  *(v11 + 136) = 0;
  *(v11 + 120) = 0;
  *(v11 + 160) = MEMORY[0x1E69E7CC0];
  *(v11 + 210) = 0;
  *(v11 + 216) = 0;
  type metadata accessor for VFXForceFieldType(0);
  v13 = v12;
  *(v11 + 168) = 0;
  *(v11 + 176) = 0;
  *(v11 + 16) = 0x707954646C656966;
  *(v11 + 24) = 0xE900000000000065;
  *(v11 + 32) = KeyPath;
  *(v11 + 40) = v12;
  *(v11 + 48) = 0;
  *(v11 + 56) = 1;
  *(v11 + 58) = 0;
  *(v11 + 184) = 0;
  *(v11 + 188) = 1;
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
  v14 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v14)
  {
    v15 = v135;
    if (v13)
    {
      v13 = (*(v14 + 8))(v13, v14);
    }
  }

  else
  {
    v15 = v135;
  }

  v16 = swift_conformsToProtocol2();
  if (v16 && v13)
  {
    *(v11 + 160) = (*(v16 + 8))(v13, v16);
  }

  v17 = *(v11 + 64);
  v18 = *(v11 + 72);
  *(v11 + 64) = sub_1AFC71750;
  *(v11 + 72) = KeyPath;
  sub_1AF0FB8EC(v17, v18);
  *(v11 + 168) = 0;
  *(v11 + 176) = 0;

  *(v11 + 216) = v4;

  v15[4] = v11;
  v19 = swift_getKeyPath();
  v20 = MEMORY[0x1E69E6448];
  sub_1AFC7246C(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v21 = swift_allocObject();
  v21[4] = sub_1AFC71758;
  v21[5] = v19;
  v21[2] = sub_1AFC7178C;
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
  *(v22 + 16) = 0x6874676E65727473;
  *(v22 + 24) = 0xE800000000000000;
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
  *(v22 + 64) = sub_1AFC71798;
  *(v22 + 72) = v19;
  sub_1AF0FB8EC(v26, v27);
  *(v22 + 168) = 0;
  *(v22 + 176) = 0;

  *(v22 + 216) = 0;

  v15[5] = v22;
  v28 = swift_getKeyPath();
  v29 = swift_allocObject();
  v29[4] = sub_1AFC73B08;
  v29[5] = v28;
  v29[2] = sub_1AFC73C1C;
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
  *(v30 + 16) = 0x4566666F6C6C6166;
  *(v30 + 24) = 0xEF746E656E6F7078;
  *(v30 + 32) = v28;
  *(v30 + 40) = v20;
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
  if (v23)
  {
    v20 = (*(v23 + 8))();
  }

  v133 = v23;
  v31 = swift_conformsToProtocol2();
  if (v31 && v20)
  {
    *(v30 + 160) = (*(v31 + 8))(v20, v31);
  }

  v32 = *(v30 + 64);
  v33 = *(v30 + 72);
  *(v30 + 64) = sub_1AFC73B8C;
  *(v30 + 72) = v28;
  sub_1AF0FB8EC(v32, v33);
  *(v30 + 168) = 0;
  *(v30 + 176) = 0;

  *(v30 + 216) = 0;

  v15[6] = v30;
  v34 = swift_getKeyPath();
  v35 = MEMORY[0x1E69E6370];
  sub_1AFC7246C(0, &qword_1ED722B80, MEMORY[0x1E69E6370], type metadata accessor for EntityGetSet);
  v36 = swift_allocObject();
  v36[4] = sub_1AFC717A0;
  v36[5] = v34;
  v36[2] = sub_1AFC717CC;
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
  *(v37 + 16) = 0x657669746361;
  *(v37 + 24) = 0xE600000000000000;
  *(v37 + 32) = v34;
  *(v37 + 40) = v35;
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
  *(v37 + 64) = sub_1AFC717D8;
  *(v37 + 72) = v34;
  sub_1AF0FB8EC(v41, v42);
  *(v37 + 168) = 0;
  *(v37 + 176) = 0;

  *(v37 + 216) = 0;

  *(v135 + 56) = v37;
  v43 = swift_getKeyPath();
  v44 = swift_allocObject();
  v44[4] = sub_1AFC73C50;
  v44[5] = v43;
  v44[2] = sub_1AFC73C20;
  v44[3] = v43;
  v44[6] = v43;
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
  *(v45 + 16) = 0x6C61636F6CLL;
  *(v45 + 24) = 0xE500000000000000;
  *(v45 + 32) = v43;
  *(v45 + 40) = v35;
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
  if (v38)
  {
    v35 = (*(v38 + 8))();
  }

  v46 = swift_conformsToProtocol2();
  if (v46 && v35)
  {
    *(v45 + 160) = (*(v46 + 8))(v35, v46);
  }

  v47 = *(v45 + 64);
  v48 = *(v45 + 72);
  *(v45 + 64) = sub_1AFC73B90;
  *(v45 + 72) = v43;
  sub_1AF0FB8EC(v47, v48);
  *(v45 + 168) = 0;
  *(v45 + 176) = 0;

  *(v45 + 216) = 0;

  *(v135 + 64) = v45;
  v49 = swift_getKeyPath();
  v50 = swift_getKeyPath();
  v51 = swift_allocObject();
  v51[4] = sub_1AFC73C8C;
  v51[5] = v50;
  v51[2] = sub_1AFC73C24;
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
  *(v52 + 16) = 0x646E496570616873;
  *(v52 + 24) = 0xEA00000000007865;
  *(v52 + 32) = v50;
  v53 = MEMORY[0x1E69E7360];
  *(v52 + 40) = MEMORY[0x1E69E7360];
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
  if (v134)
  {
    v54 = (*(v134 + 8))();
  }

  else
  {
    v54 = v53;
  }

  v55 = swift_conformsToProtocol2();
  if (v55 && v54)
  {
    *(v52 + 160) = (*(v55 + 8))(v54, v55);
  }

  v56 = *(v52 + 64);
  v57 = *(v52 + 72);
  *(v52 + 64) = sub_1AFC73B94;
  *(v52 + 72) = v50;
  sub_1AF0FB8EC(v56, v57);
  *(v52 + 168) = 0;
  *(v52 + 176) = 0;

  *(v52 + 216) = 0;

  sub_1AFC700D0(0, &qword_1EB63BBC8, type metadata accessor for VFXForceFieldShape);
  v58 = swift_allocObject();
  v58[4] = sub_1AFC71710;
  v58[5] = v49;
  v58[2] = sub_1AFC71844;
  v58[3] = v49;
  v58[6] = v49;
  v59 = swift_allocObject();
  *(v59 + 104) = 0;
  *(v59 + 112) = 1;
  *(v59 + 128) = 0;
  *(v59 + 136) = 0;
  *(v59 + 120) = 0;
  *(v59 + 160) = MEMORY[0x1E69E7CC0];
  *(v59 + 210) = 0;
  *(v59 + 216) = 0;
  type metadata accessor for VFXForceFieldShape(0);
  v61 = v60;
  *(v59 + 168) = 0;
  *(v59 + 176) = 0;
  *(v59 + 16) = 0x6570616873;
  *(v59 + 24) = 0xE500000000000000;
  *(v59 + 32) = v49;
  *(v59 + 40) = v60;
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
  *(v59 + 64) = sub_1AFC71850;
  *(v59 + 72) = v49;
  sub_1AF0FB8EC(v64, v65);
  *(v59 + 168) = 0;
  *(v59 + 176) = 0;

  *(v59 + 216) = v52;

  *(v135 + 72) = v59;
  v66 = swift_getKeyPath();
  v67 = MEMORY[0x1E69E7450];
  sub_1AFC703CC(0, qword_1ED72D340, &qword_1ED72F740, MEMORY[0x1E69E7450]);
  v68 = swift_allocObject();
  v68[4] = sub_1AFC71858;
  v68[5] = v66;
  v68[2] = sub_1AFC71870;
  v68[3] = v66;
  v68[6] = v66;
  v69 = swift_allocObject();
  *(v69 + 104) = 0;
  *(v69 + 112) = 1;
  *(v69 + 128) = 0;
  *(v69 + 136) = 0;
  *(v69 + 120) = 0;
  *(v69 + 160) = MEMORY[0x1E69E7CC0];
  *(v69 + 210) = 0;
  *(v69 + 216) = 0;
  sub_1AFC739C4(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], v67);
  v71 = v70;
  *(v69 + 168) = 0;
  *(v69 + 176) = 0;
  *(v69 + 16) = 0x65747845666C6168;
  *(v69 + 24) = 0xEA0000000000746ELL;
  *(v69 + 32) = v66;
  *(v69 + 40) = v70;
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
  *(v69 + 210) = 0;
  v72 = swift_conformsToProtocol2();
  if (v72)
  {
    v73 = v71;
  }

  else
  {
    v73 = 0;
  }

  swift_retain_n();
  v74 = v71;
  if (v73)
  {
    v74 = (*(v72 + 8))(v73, v72);
  }

  v131 = v72;
  v132 = v73;
  v75 = swift_conformsToProtocol2();
  v76 = MEMORY[0x1E69E7360];
  if (v75 && v74)
  {
    *(v69 + 160) = (*(v75 + 8))(v74, v75);
  }

  v77 = *(v69 + 64);
  v78 = *(v69 + 72);
  *(v69 + 64) = sub_1AFC7187C;
  *(v69 + 72) = v66;
  sub_1AF0FB8EC(v77, v78);
  *(v69 + 168) = 0;
  *(v69 + 176) = 0;

  *(v69 + 216) = 0;

  *(v135 + 80) = v69;
  v79 = swift_getKeyPath();
  v80 = swift_getKeyPath();
  v81 = swift_allocObject();
  v81[4] = sub_1AFC73C8C;
  v81[5] = v80;
  v81[2] = sub_1AFC73C24;
  v81[3] = v80;
  v81[6] = v80;
  v82 = swift_allocObject();
  *(v82 + 112) = 1;
  *(v82 + 128) = 0;
  *(v82 + 136) = 0;
  *(v82 + 120) = 0;
  *(v82 + 160) = MEMORY[0x1E69E7CC0];
  *(v82 + 168) = 0;
  *(v82 + 216) = 0;
  *(v82 + 176) = 0;
  *(v82 + 16) = 0x646E4965706F6373;
  *(v82 + 24) = 0xEA00000000007865;
  *(v82 + 32) = v80;
  *(v82 + 40) = v76;
  *(v82 + 48) = 0;
  *(v82 + 56) = 1;
  *(v82 + 58) = 0;
  *(v82 + 184) = 0;
  *(v82 + 188) = 1;
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
  if (v134)
  {
    v83 = (*(v134 + 8))();
  }

  else
  {
    v83 = v76;
  }

  v84 = swift_conformsToProtocol2();
  if (v84 && v83)
  {
    *(v82 + 160) = (*(v84 + 8))(v83, v84);
  }

  *(v82 + 64) = sub_1AFC73B94;
  *(v82 + 72) = v80;
  sub_1AF0FB8EC(0, 0);
  *(v82 + 168) = 0;
  *(v82 + 176) = 0;

  *(v82 + 216) = 0;
  sub_1AFC700D0(0, &qword_1EB63BBA0, type metadata accessor for VFXForceFieldScope);
  v85 = swift_allocObject();
  v85[4] = sub_1AFC71710;
  v85[5] = v79;
  v85[2] = sub_1AFC71884;
  v85[3] = v79;
  v85[6] = v79;
  v86 = swift_allocObject();
  *(v86 + 104) = 0;
  *(v86 + 112) = 1;
  *(v86 + 128) = 0;
  *(v86 + 136) = 0;
  *(v86 + 120) = 0;
  *(v86 + 160) = MEMORY[0x1E69E7CC0];
  *(v86 + 216) = 0;
  type metadata accessor for VFXForceFieldScope(0);
  v88 = v87;
  *(v86 + 168) = 0;
  *(v86 + 176) = 0;
  *(v86 + 16) = 0x65706F6373;
  *(v86 + 24) = 0xE500000000000000;
  *(v86 + 32) = v79;
  *(v86 + 40) = v87;
  *(v86 + 48) = 0;
  *(v86 + 56) = 1;
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
  *(v86 + 210) = 0;
  v89 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v89 && v88)
  {
    v88 = (*(v89 + 8))(v88, v89);
  }

  v90 = swift_conformsToProtocol2();
  if (v90 && v88)
  {
    *(v86 + 160) = (*(v90 + 8))(v88, v90);
  }

  v91 = *(v86 + 64);
  v92 = *(v86 + 72);
  *(v86 + 64) = sub_1AFC71890;
  *(v86 + 72) = v79;
  sub_1AF0FB8EC(v91, v92);
  *(v86 + 168) = 0;
  *(v86 + 176) = 0;

  *(v86 + 216) = v82;

  *(v135 + 88) = v86;
  v93 = swift_getKeyPath();
  v94 = swift_getKeyPath();
  v95 = swift_allocObject();
  v95[4] = sub_1AFC73C8C;
  v95[5] = v94;
  v95[2] = sub_1AFC73C24;
  v95[3] = v94;
  v95[6] = v94;
  v96 = swift_allocObject();
  *(v96 + 112) = 1;
  *(v96 + 128) = 0;
  *(v96 + 136) = 0;
  *(v96 + 120) = 0;
  *(v96 + 160) = MEMORY[0x1E69E7CC0];
  *(v96 + 168) = 0;
  *(v96 + 216) = 0;
  *(v96 + 176) = 0;
  strcpy((v96 + 16), "cullModeIndex");
  *(v96 + 30) = -4864;
  *(v96 + 32) = v94;
  v97 = MEMORY[0x1E69E7360];
  *(v96 + 40) = MEMORY[0x1E69E7360];
  *(v96 + 48) = 0;
  *(v96 + 56) = 1;
  *(v96 + 58) = 0;
  *(v96 + 184) = 0;
  *(v96 + 188) = 1;
  *(v96 + 192) = 0;
  *(v96 + 196) = 1;
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
  if (v134)
  {
    v97 = (*(v134 + 8))();
  }

  v98 = swift_conformsToProtocol2();
  if (v98 && v97)
  {
    *(v96 + 160) = (*(v98 + 8))(v97, v98);
  }

  *(v96 + 64) = sub_1AFC73B94;
  *(v96 + 72) = v94;
  sub_1AF0FB8EC(0, 0);
  *(v96 + 168) = 0;
  *(v96 + 176) = 0;

  *(v96 + 216) = 0;
  sub_1AFC700D0(0, &qword_1EB63BB80, type metadata accessor for VFXForceFieldCullMode);
  v99 = swift_allocObject();
  v99[4] = sub_1AFC71710;
  v99[5] = v93;
  v99[2] = sub_1AFC71898;
  v99[3] = v93;
  v99[6] = v93;
  v100 = swift_allocObject();
  *(v100 + 104) = 0;
  *(v100 + 112) = 1;
  *(v100 + 128) = 0;
  *(v100 + 136) = 0;
  *(v100 + 120) = 0;
  *(v100 + 160) = MEMORY[0x1E69E7CC0];
  *(v100 + 216) = 0;
  type metadata accessor for VFXForceFieldCullMode(0);
  v102 = v101;
  *(v100 + 168) = 0;
  *(v100 + 176) = 0;
  *(v100 + 16) = 0x65646F4D6C6C7563;
  *(v100 + 24) = 0xE800000000000000;
  *(v100 + 32) = v93;
  *(v100 + 40) = v101;
  *(v100 + 48) = 0;
  *(v100 + 56) = 1;
  *(v100 + 58) = 0;
  *(v100 + 184) = 0;
  *(v100 + 188) = 1;
  *(v100 + 192) = 0;
  *(v100 + 196) = 1;
  *(v100 + 200) = 0x1000100000000;
  *(v100 + 208) = 1;
  *(v100 + 64) = 0;
  *(v100 + 72) = 0;
  *(v100 + 96) = 0;
  *(v100 + 144) = xmmword_1AFE22A20;
  *(v100 + 80) = v99;
  *(v100 + 88) = &off_1F2535378;
  *(v100 + 210) = 0;
  v103 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v103)
  {
    v104 = v132;
    if (v102)
    {
      v102 = (*(v103 + 8))(v102, v103);
    }
  }

  else
  {
    v104 = v132;
  }

  v105 = swift_conformsToProtocol2();
  if (v105 && v102)
  {
    *(v100 + 160) = (*(v105 + 8))(v102, v105);
  }

  v106 = *(v100 + 64);
  v107 = *(v100 + 72);
  *(v100 + 64) = sub_1AFC718A4;
  *(v100 + 72) = v93;
  sub_1AF0FB8EC(v106, v107);
  *(v100 + 168) = 0;
  *(v100 + 176) = 0;

  *(v100 + 216) = v96;

  *(v135 + 96) = v100;
  v108 = swift_getKeyPath();
  v109 = swift_allocObject();
  v109[4] = sub_1AFC73B98;
  v109[5] = v108;
  v109[2] = sub_1AFC73C28;
  v109[3] = v108;
  v109[6] = v108;
  v110 = swift_allocObject();
  *(v110 + 112) = 1;
  *(v110 + 128) = 0;
  *(v110 + 136) = 0;
  *(v110 + 120) = 0;
  *(v110 + 160) = MEMORY[0x1E69E7CC0];
  *(v110 + 168) = 0;
  *(v110 + 216) = 0;
  *(v110 + 176) = 0;
  *(v110 + 16) = 0x74657366666FLL;
  *(v110 + 24) = 0xE600000000000000;
  *(v110 + 32) = v108;
  *(v110 + 40) = v71;
  *(v110 + 48) = 0;
  *(v110 + 56) = 1;
  *(v110 + 58) = 0;
  *(v110 + 184) = 0;
  *(v110 + 188) = 1;
  *(v110 + 192) = 0;
  *(v110 + 196) = 1;
  *(v110 + 200) = 0x1000100000000;
  *(v110 + 208) = 1;
  *(v110 + 64) = 0;
  *(v110 + 72) = 0;
  *(v110 + 96) = 0;
  *(v110 + 104) = 0;
  *(v110 + 144) = xmmword_1AFE22A20;
  *(v110 + 80) = v109;
  *(v110 + 88) = &off_1F2535378;
  *(v110 + 210) = 0;
  swift_retain_n();
  if (v104)
  {
    v71 = (*(v131 + 8))(v104);
  }

  v111 = swift_conformsToProtocol2();
  if (v111 && v71)
  {
    *(v110 + 160) = (*(v111 + 8))(v71, v111);
  }

  v112 = *(v110 + 64);
  v113 = *(v110 + 72);
  *(v110 + 64) = sub_1AFC73B9C;
  *(v110 + 72) = v108;
  sub_1AF0FB8EC(v112, v113);
  *(v110 + 168) = 0;
  *(v110 + 176) = 0;

  *(v110 + 216) = 0;

  *(v135 + 104) = v110;
  v114 = swift_getKeyPath();
  v115 = MEMORY[0x1E69E76D8];
  sub_1AFC7246C(0, &unk_1EB643A50, MEMORY[0x1E69E76D8], type metadata accessor for EntityGetSet);
  v116 = swift_allocObject();
  v116[4] = sub_1AFC716C8;
  v116[5] = v114;
  v116[2] = sub_1AFC719D8;
  v116[3] = v114;
  v116[6] = v114;
  v117 = swift_allocObject();
  *(v117 + 112) = 1;
  *(v117 + 128) = 0;
  *(v117 + 136) = 0;
  *(v117 + 120) = 0;
  *(v117 + 160) = MEMORY[0x1E69E7CC0];
  *(v117 + 168) = 0;
  *(v117 + 216) = 0;
  *(v117 + 176) = 0;
  *(v117 + 16) = 0x79726F6765746163;
  *(v117 + 24) = 0xEF6B73614D746942;
  *(v117 + 32) = v114;
  *(v117 + 40) = v115;
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
  *(v117 + 96) = 0;
  *(v117 + 104) = 0;
  *(v117 + 144) = xmmword_1AFE22A20;
  *(v117 + 80) = v116;
  *(v117 + 88) = &off_1F2535378;
  *(v117 + 210) = 0;
  v118 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v118)
  {
    v115 = (*(v118 + 8))();
  }

  v119 = swift_conformsToProtocol2();
  if (v119 && v115)
  {
    *(v117 + 160) = (*(v119 + 8))(v115, v119);
  }

  *(v117 + 64) = sub_1AFC719E4;
  *(v117 + 72) = v114;
  sub_1AF0FB8EC(0, 0);
  *(v117 + 168) = 0;
  *(v117 + 176) = 0;

  *(v117 + 216) = 0;
  *(v135 + 112) = v117;
  v120 = swift_getKeyPath();
  v121 = swift_allocObject();
  v121[4] = sub_1AFC73B08;
  v121[5] = v120;
  v121[2] = sub_1AFC73C1C;
  v121[3] = v120;
  v121[6] = v120;
  v122 = swift_allocObject();
  *(v122 + 112) = 1;
  *(v122 + 128) = 0;
  *(v122 + 136) = 0;
  *(v122 + 120) = 0;
  *(v122 + 160) = MEMORY[0x1E69E7CC0];
  *(v122 + 168) = 0;
  *(v122 + 216) = 0;
  *(v122 + 176) = 0;
  *(v122 + 16) = 0x656E68746F6F6D73;
  *(v122 + 24) = 0xEA00000000007373;
  *(v122 + 32) = v120;
  v123 = MEMORY[0x1E69E6448];
  *(v122 + 40) = MEMORY[0x1E69E6448];
  *(v122 + 48) = 0;
  *(v122 + 56) = 1;
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
  if (v133)
  {
    v124 = (*(v133 + 8))();
  }

  else
  {
    v124 = v123;
  }

  v125 = swift_conformsToProtocol2();
  if (v125 && v124)
  {
    *(v122 + 160) = (*(v125 + 8))(v124, v125);
  }

  *(v122 + 64) = sub_1AFC73B8C;
  *(v122 + 72) = v120;
  sub_1AF0FB8EC(0, 0);
  *(v122 + 168) = 0;
  *(v122 + 176) = 0;

  *(v122 + 216) = 0;
  *(v135 + 120) = v122;
  v126 = swift_getKeyPath();
  v127 = swift_allocObject();
  v127[4] = sub_1AFC73B08;
  v127[5] = v126;
  v127[2] = sub_1AFC73C1C;
  v127[3] = v126;
  v127[6] = v126;
  v128 = swift_allocObject();
  *(v128 + 112) = 1;
  *(v128 + 128) = 0;
  *(v128 + 136) = 0;
  *(v128 + 120) = 0;
  *(v128 + 160) = MEMORY[0x1E69E7CC0];
  *(v128 + 168) = 0;
  *(v128 + 216) = 0;
  *(v128 + 176) = 0;
  *(v128 + 16) = 0x6465657073;
  *(v128 + 24) = 0xE500000000000000;
  *(v128 + 32) = v126;
  *(v128 + 40) = v123;
  *(v128 + 48) = 0;
  *(v128 + 56) = 1;
  *(v128 + 58) = 0;
  *(v128 + 184) = 0;
  *(v128 + 188) = 1;
  *(v128 + 192) = 0;
  *(v128 + 196) = 1;
  *(v128 + 200) = 0x1000100000000;
  *(v128 + 208) = 1;
  *(v128 + 64) = 0;
  *(v128 + 72) = 0;
  *(v128 + 96) = 0;
  *(v128 + 104) = 0;
  *(v128 + 144) = xmmword_1AFE22A20;
  *(v128 + 80) = v127;
  *(v128 + 88) = &off_1F2535378;
  *(v128 + 210) = 0;
  swift_retain_n();
  if (v133)
  {
    v123 = (*(v133 + 8))();
  }

  v129 = swift_conformsToProtocol2();
  if (v129 && v123)
  {
    *(v128 + 160) = (*(v129 + 8))(v123, v129);
  }

  *(v128 + 64) = sub_1AFC73B8C;
  *(v128 + 72) = v126;
  sub_1AF0FB8EC(0, 0);
  *(v128 + 168) = 0;
  *(v128 + 176) = 0;

  *(v128 + 216) = 0;
  *(v135 + 128) = v128;
  qword_1EB6C3668 = v135;
  return result;
}

void sub_1AFC669F0(SEL *a1@<X3>, const char **a2@<X4>, unsigned __int8 *a3@<X8>)
{
  v5 = sub_1AFC628C8(a1);
  if (v5)
  {
    v6 = *a2;
    v7 = v5;
    v8 = [v5 v6];
  }

  else
  {
    v8 = 0;
  }

  *a3 = v8;
}

void sub_1AFC66A4C(uint64_t *a1@<X8>)
{
  v2 = sub_1AFC628C8(&selRef_forceField);
  if (v2)
  {
    v3 = v2;
    v4 = [v2 shape];
  }

  else
  {
    v4 = 1;
  }

  *a1 = v4;
}

uint64_t sub_1AFC66AB4()
{
  if (![objc_opt_self() immediateMode])
  {
    sub_1AFC73A9C(v0, v7);
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1AF0F2990(v7);
    if (Strong)
    {
      objc_opt_self();
      v5 = swift_dynamicCastObjCClass();
      if (!v5)
      {
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v5 = 0;
    }

    v1 = [v5 forceField];

    if (v1)
    {
      goto LABEL_3;
    }

    return 1;
  }

  v1 = v0[4];
  v2 = v1;
  if (!v1)
  {
    return 1;
  }

LABEL_3:
  v3 = [v1 shape];

  return v3;
}

void sub_1AFC66BB0(const char **a1@<X3>, void *a2@<X8>)
{
  v4 = sub_1AFC628C8(&selRef_forceField);
  if (v4)
  {
    v5 = *a1;
    v6 = v4;
    v7 = [v4 v5];
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
}

void sub_1AFC66C28(SEL *a1@<X3>, const char **a2@<X4>, void *a3@<X8>)
{
  v5 = sub_1AFC628C8(a1);
  if (v5)
  {
    v6 = *a2;
    v7 = v5;
    v8 = [v5 v6];
  }

  else
  {
    v8 = 0;
  }

  *a3 = v8;
}

void sub_1AFC66C84(SEL *a1@<X3>, SEL *a2@<X4>, _DWORD *a3@<X8>)
{
  v5 = sub_1AFC628C8(a1);
  if (v5)
  {
    v6 = v5;
    [v5 *a2];
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  *a3 = v8;
}

id sub_1AFC66D40(uint64_t a1, uint64_t a2)
{
  v3 = *&v2[OBJC_IVAR____TtC3VFX30ShadableShaderModifierObserver_shadable];
  swift_unknownObjectRetain();
  v4 = v2;
  v5 = sub_1AFDFCEC8();
  [v3 removeObserver:v4 forKeyPath:v5];

  swift_unknownObjectRelease();
  v7.receiver = v4;
  v7.super_class = type metadata accessor for ShadableShaderModifierObserver();
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

void *sub_1AFC66FBC()
{
  if ([objc_opt_self() immediateMode])
  {
    v1 = *(v0 + 40);
    v2 = v1;
  }

  else
  {
    sub_1AFC73A9C((v0 + 8), v5);
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1AF0F2990(v5);
    if (Strong)
    {
      objc_opt_self();
      v1 = swift_dynamicCastObjCClass();
      if (!v1)
      {
        swift_unknownObjectRelease();
      }
    }

    else
    {
      return 0;
    }
  }

  return v1;
}

double sub_1AFC67078(SEL *a1)
{
  if ([objc_opt_self() immediateMode])
  {
    v3 = *(v1 + 40);
    if (v3)
    {
      v4 = v3;
LABEL_6:
      v6 = v4;
      v7 = [v4 *a1];

      [v7 linearExtendedSRGBColor];
      v10 = v8;

      return v10;
    }
  }

  else
  {
    sub_1AFC73A9C((v1 + 8), v11);
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1AF0F2990(v11);
    if (Strong)
    {
      objc_opt_self();
      v4 = swift_dynamicCastObjCClass();
      if (v4)
      {
        goto LABEL_6;
      }

      swift_unknownObjectRelease();
    }
  }

  return 0.0;
}

double sub_1AFC6715C(SEL *a1, __n128 a2)
{
  if ([objc_opt_self() immediateMode])
  {
    v5 = *(v2 + 40);
    if (!v5)
    {
      return result;
    }

    v6 = v5;
  }

  else
  {
    sub_1AFC73A9C((v2 + 8), v12);
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1AF0F2990(v12);
    if (!Strong)
    {
      return result;
    }

    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (!v6)
    {
      swift_unknownObjectRelease();
      return result;
    }
  }

  v8 = v6;
  v9 = [v6 *a1];

  [v9 setLinearExtendedSRGBColor_];
  return result;
}

void sub_1AFC67260(SEL *a1, float a2)
{
  if ([objc_opt_self() immediateMode])
  {
    v5 = *(v2 + 40);
    if (!v5)
    {
      return;
    }

    v6 = v5;
  }

  else
  {
    sub_1AFC73A9C((v2 + 8), v13);
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1AF0F2990(v13);
    if (!Strong)
    {
      return;
    }

    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (!v6)
    {
      swift_unknownObjectRelease();
      return;
    }
  }

  v8 = v6;
  v9 = [v6 *a1];

  v10 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  *&v11 = a2;
  v12 = [v10 initWithFloat_];
  [v9 setContents_];
}

void sub_1AFC67384(SEL *a1)
{
  if ([objc_opt_self() immediateMode])
  {
    v3 = *(v1 + 40);
    if (!v3)
    {
      return;
    }

    v4 = v3;
LABEL_6:
    v6 = v4;
    v7 = [v4 *a1];

    [v7 intensity];
    return;
  }

  sub_1AFC73A9C((v1 + 8), v8);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1AF0F2990(v8);
  if (!Strong)
  {
    return;
  }

  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    goto LABEL_6;
  }

  swift_unknownObjectRelease();
}

void sub_1AFC67470(SEL *a1, float a2)
{
  if ([objc_opt_self() immediateMode])
  {
    v5 = *(v2 + 40);
    if (!v5)
    {
      return;
    }

    v6 = v5;
  }

  else
  {
    sub_1AFC73A9C((v2 + 8), v11);
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1AF0F2990(v11);
    if (!Strong)
    {
      return;
    }

    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (!v6)
    {
      swift_unknownObjectRelease();
      return;
    }
  }

  v8 = v6;
  v9 = [v6 *a1];

  *&v10 = a2;
  [v9 setIntensity_];
}

void sub_1AFC67564(const char **a1)
{
  v2 = sub_1AFC66FBC();
  if (!v2)
  {
    v9 = 0u;
    v10 = 0u;
LABEL_9:
    sub_1AFC723FC(&v9, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
    return;
  }

  v3 = *a1;
  v4 = v2;
  v5 = [v2 v3];

  v6 = [v5 contents];
  if (v6)
  {
    sub_1AFDFDFB8();
    swift_unknownObjectRelease();
  }

  else
  {
    *v7 = 0u;
    v8 = 0u;
  }

  v9 = *v7;
  v10 = v8;
  if (!*(&v8 + 1))
  {
    goto LABEL_9;
  }

  sub_1AF0D4478(0, &qword_1ED721F80, 0x1E696AD98);
  if (swift_dynamicCast())
  {
    [v7[0] floatValue];
  }
}

void sub_1AFC67698()
{
  if ([objc_opt_self() immediateMode])
  {
    v1 = *(v0 + 40);
    if (!v1)
    {
      return;
    }

    v2 = v1;
LABEL_6:
    v4 = v2;
    [v2 alphaCutoff];

    return;
  }

  sub_1AFC73A9C((v0 + 8), v5);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1AF0F2990(v5);
  if (!Strong)
  {
    return;
  }

  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    goto LABEL_6;
  }

  swift_unknownObjectRelease();
}

BOOL sub_1AFC67768()
{
  if ([objc_opt_self() immediateMode])
  {
    v1 = *(v0 + 40);
    if (v1)
    {
      v2 = v1;
LABEL_6:
      v4 = v2;
      v5 = [v2 shadingModel];

      return v5 == 0;
    }
  }

  else
  {
    sub_1AFC73A9C((v0 + 8), v7);
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1AF0F2990(v7);
    if (Strong)
    {
      objc_opt_self();
      v2 = swift_dynamicCastObjCClass();
      if (v2)
      {
        goto LABEL_6;
      }

      swift_unknownObjectRelease();
    }
  }

  return 0;
}

BOOL sub_1AFC67828()
{
  if ([objc_opt_self() immediateMode])
  {
    v1 = *(v0 + 40);
    if (v1)
    {
      v2 = v1;
LABEL_6:
      v4 = v2;
      v5 = [v2 shadingModel];

      return v5 != 2;
    }
  }

  else
  {
    sub_1AFC73A9C((v0 + 8), v7);
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1AF0F2990(v7);
    if (Strong)
    {
      objc_opt_self();
      v2 = swift_dynamicCastObjCClass();
      if (v2)
      {
        goto LABEL_6;
      }

      swift_unknownObjectRelease();
    }
  }

  return 1;
}

uint64_t sub_1AFC678E8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AFC739C4(0, &qword_1ED726A70, sub_1AF445B90, &type metadata for StringCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v24 - v8;
  v33 = 0;
  v35 = 0;
  swift_unknownObjectWeakInit();
  v35 = 0;
  swift_unknownObjectWeakAssign();
  v36 = 0x3E6C6C756E3CLL;
  v37 = 0xE600000000000000;
  v39 = 0;
  v40 = 0;
  v38 = 0;
  v10 = a1[3];
  v11 = a1[4];
  sub_1AF441150(a1, v10);
  if (sub_1AF694FF8(2037, v10, v11))
  {
    sub_1AF441150(a1, a1[3]);
    sub_1AFDFF398();
    if (!v2)
    {
      sub_1AF441150(&v25, v28);
      sub_1AF9B3A20();
      sub_1AFDFEE88();
      v12 = &v29;
LABEL_9:
      sub_1AF9B3A74(v12, &v34);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v25);
LABEL_17:
      sub_1AF5A828C(&v33, a2);
    }
  }

  else
  {
    v13 = a1[3];
    v14 = a1[4];
    sub_1AF441150(a1, v13);
    if (sub_1AF694FF8(2029, v13, v14))
    {
      sub_1AF441150(a1, a1[3]);
      sub_1AFDFF398();
      if (!v2)
      {
        sub_1AF441150(&v25, v28);
        v17 = sub_1AFDFEE38();
        v19 = v18;
        v30 = 0;
        swift_unknownObjectWeakInit();
        v30 = 0;
        v12 = swift_unknownObjectWeakAssign();
        v31 = v17;
        v32 = v19;
        goto LABEL_9;
      }
    }

    else
    {
      v41 = a2;
      sub_1AF441150(a1, a1[3]);
      sub_1AF445B90();
      sub_1AFDFF3B8();
      if (!v2)
      {
        v29 = 0;
        LOBYTE(v30) = 1;
        v31 = 0xD000000000000017;
        v32 = 0x80000001AFF4C150;
        v15 = sub_1AFDFE698();
        a2 = v41;
        if (v16)
        {
          v20 = v15;
        }

        else
        {
          v20 = 0;
        }

        if (v16)
        {
          v21 = v16;
        }

        else
        {
          v21 = 0xE000000000000000;
        }

        (*(v7 + 8))(v9, v6);
        v26 = 0;
        swift_unknownObjectWeakInit();
        v26 = 0;
        v22 = swift_unknownObjectWeakAssign();
        v27 = v20;
        v28 = v21;
        sub_1AF9B3A74(v22, &v34);
        goto LABEL_17;
      }
    }
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return sub_1AF5A82E8(&v33);
}

double sub_1AFC67CBC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  (*(a2 + 16))(v2 + 8, ObjectType, a2);
  sub_1AFC73A9C((v2 + 8), v20);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1AF0F2990(v20);
  if (Strong)
  {
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      v8 = [v7 presentationMaterial];
      swift_unknownObjectRelease();
      goto LABEL_6;
    }

    swift_unknownObjectRelease();
  }

  v8 = 0;
LABEL_6:

  *(v3 + 40) = v8;
  sub_1AFC73A9C((v3 + 8), v20);
  v9 = swift_unknownObjectWeakLoadStrong();
  sub_1AF0F2990(v20);
  if (v9)
  {
    objc_opt_self();
    v11 = swift_dynamicCastObjCClass();
    if (v11)
    {
      v12 = v11;
      v13 = type metadata accessor for ShadableShaderModifierObserver();
      v14 = objc_allocWithZone(v13);
      *&v14[OBJC_IVAR____TtC3VFX30ShadableShaderModifierObserver_propertyCache] = MEMORY[0x1E69E7CC0];
      *&v14[OBJC_IVAR____TtC3VFX30ShadableShaderModifierObserver_shadable] = v12;
      v19.receiver = v14;
      v19.super_class = v13;
      swift_unknownObjectRetain_n();
      v15 = objc_msgSendSuper2(&v19, sel_init);
      v16 = *&v15[OBJC_IVAR____TtC3VFX30ShadableShaderModifierObserver_shadable];
      v17 = v15;
      swift_unknownObjectRetain();
      v18 = sub_1AFDFCEC8();
      [v16 addObserver:v17 forKeyPath:v18 options:0 context:{0, v19.receiver, v19.super_class}];
      swift_unknownObjectRelease_n();
      swift_unknownObjectRelease();

      *v3 = v17;
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_1AFC67EC0()
{
  sub_1AFC73A9C((v0 + 8), v8);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1AF0F2990(v8);
  if (Strong)
  {
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (v2)
    {
      v3 = [v2 presentationObject];
      swift_unknownObjectRelease();
      sub_1AFDFDFB8();
      swift_unknownObjectRelease();
      sub_1AF0D4478(0, &qword_1ED72E0B0, &off_1E7A77B00);
      if (swift_dynamicCast())
      {
        v4 = v8[0];
        v5 = [v8[0] materialRef];
        if (v5)
        {
          v6 = v5;
          sub_1AF1A1580(v6, v7);
        }

        else
        {
        }
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1AFC68010(void *a1)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF3D8();
  sub_1AF448018(v2, v2[3]);
  sub_1AF9B3AD0();
  sub_1AFDFEF28();
  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v2);
}

uint64_t sub_1AFC680BC@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[2] = 0;
  swift_unknownObjectWeakInit();
  a1[2] = 0;
  result = swift_unknownObjectWeakAssign();
  a1[3] = 0x3E6C6C756E3CLL;
  a1[4] = 0xE600000000000000;
  a1[6] = 0;
  a1[7] = 0;
  a1[5] = 0;
  return result;
}

uint64_t sub_1AFC6811C()
{
  sub_1AFC7246C(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v70 = swift_allocObject();
  *(v70 + 16) = xmmword_1AFE55220;
  KeyPath = swift_getKeyPath();
  v1 = MEMORY[0x1E69E74A8];
  sub_1AFC703CC(0, &qword_1ED725C70, &qword_1ED72F6E0, MEMORY[0x1E69E74A8]);
  v2 = swift_allocObject();
  v2[4] = sub_1AFC71FC4;
  v2[5] = KeyPath;
  v2[2] = sub_1AFC71FDC;
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
  sub_1AFC739C4(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], v1);
  v6 = v5;
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;
  strcpy((v3 + 16), "albedo color");
  *(v3 + 29) = 0;
  *(v3 + 30) = -5120;
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
  *(v3 + 144) = xmmword_1AFE55160;
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
  *(v3 + 64) = sub_1AFC71FE8;
  *(v3 + 72) = KeyPath;
  sub_1AF0FB8EC(v11, v12);
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;

  *(v3 + 216) = 0;

  *(v70 + 32) = v3;
  v13 = swift_getKeyPath();
  sub_1AFC7246C(0, &unk_1ED722B70, v4, type metadata accessor for EntityGetSet);
  v14 = swift_allocObject();
  v14[4] = sub_1AFC71FF0;
  v14[5] = v13;
  v14[2] = sub_1AFC72024;
  v14[3] = v13;
  v14[6] = v13;
  v15 = swift_allocObject();
  *(v15 + 112) = 1;
  *(v15 + 128) = 0;
  *(v15 + 136) = 0;
  *(v15 + 120) = 0;
  *(v15 + 160) = MEMORY[0x1E69E7CC0];
  *(v15 + 168) = 0;
  *(v15 + 210) = 0;
  *(v15 + 216) = 0;
  *(v15 + 176) = 0;
  *(v15 + 16) = 0xD000000000000010;
  *(v15 + 24) = 0x80000001AFF4C010;
  *(v15 + 32) = v13;
  *(v15 + 40) = v4;
  *(v15 + 48) = 0;
  *(v15 + 56) = 1;
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
  v16 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v16)
  {
    v17 = (*(v16 + 8))();
  }

  else
  {
    v17 = v4;
  }

  v18 = swift_conformsToProtocol2();
  if (v18 && v17)
  {
    *(v15 + 160) = (*(v18 + 8))(v17, v18);
  }

  v19 = *(v15 + 64);
  v20 = *(v15 + 72);
  *(v15 + 64) = sub_1AFC72030;
  *(v15 + 72) = v13;
  sub_1AF0FB8EC(v19, v20);
  *(v15 + 168) = 0;
  *(v15 + 176) = 0;

  *(v15 + 216) = 0;

  *(v70 + 40) = v15;
  v21 = swift_getKeyPath();
  v22 = swift_allocObject();
  v22[4] = sub_1AFC73BA0;
  v22[5] = v21;
  v22[2] = sub_1AFC73C2C;
  v22[3] = v21;
  v22[6] = v21;
  v23 = swift_allocObject();
  *(v23 + 112) = 1;
  *(v23 + 128) = 0;
  *(v23 + 136) = 0;
  *(v23 + 120) = 0;
  *(v23 + 160) = MEMORY[0x1E69E7CC0];
  *(v23 + 168) = 0;
  *(v23 + 210) = 0;
  *(v23 + 216) = 0;
  *(v23 + 176) = 0;
  *(v23 + 16) = 0x6E6F697373696D65;
  *(v23 + 24) = 0xE800000000000000;
  *(v23 + 32) = v21;
  *(v23 + 40) = v6;
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
  *(v23 + 144) = xmmword_1AFE55160;
  *(v23 + 80) = v22;
  *(v23 + 88) = &off_1F2535378;
  *(v23 + 210) = 0;
  swift_retain_n();
  v24 = v6;
  if (v8)
  {
    v24 = (*(v7 + 8))(v8, v7);
  }

  v25 = swift_conformsToProtocol2();
  if (v25 && v24)
  {
    *(v23 + 160) = (*(v25 + 8))(v24, v25);
  }

  v26 = *(v23 + 64);
  v27 = *(v23 + 72);
  *(v23 + 64) = sub_1AFC73BA4;
  *(v23 + 72) = v21;
  sub_1AF0FB8EC(v26, v27);
  *(v23 + 168) = 0;
  *(v23 + 176) = 0;

  *(v23 + 216) = 0;

  *(v70 + 48) = v23;
  v28 = swift_getKeyPath();
  v29 = swift_allocObject();
  v29[4] = sub_1AFC73BA0;
  v29[5] = v28;
  v29[2] = sub_1AFC73C2C;
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
  *(v30 + 16) = 0x796C7069746C756DLL;
  *(v30 + 24) = 0xE800000000000000;
  *(v30 + 32) = v28;
  *(v30 + 40) = v6;
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
  *(v30 + 144) = xmmword_1AFE55160;
  *(v30 + 80) = v29;
  *(v30 + 88) = &off_1F2535378;
  *(v30 + 210) = 0;
  swift_retain_n();
  if (v8)
  {
    v6 = (*(v7 + 8))(v8, v7);
  }

  v31 = swift_conformsToProtocol2();
  if (v31 && v6)
  {
    *(v30 + 160) = (*(v31 + 8))(v6, v31);
  }

  v32 = *(v30 + 64);
  v33 = *(v30 + 72);
  *(v30 + 64) = sub_1AFC73BA4;
  *(v30 + 72) = v28;
  sub_1AF0FB8EC(v32, v33);
  *(v30 + 168) = 0;
  *(v30 + 176) = 0;

  *(v30 + 216) = 0;

  *(v70 + 56) = v30;
  v34 = swift_getKeyPath();
  v35 = swift_getKeyPath();
  v36 = swift_allocObject();
  v36[4] = sub_1AFC73B0C;
  v36[5] = v34;
  v36[2] = sub_1AFC73C30;
  v36[3] = v34;
  v36[6] = v34;
  v37 = swift_allocObject();
  *(v37 + 112) = 1;
  *(v37 + 128) = 0;
  *(v37 + 136) = 0;
  *(v37 + 120) = 0;
  *(v37 + 160) = MEMORY[0x1E69E7CC0];
  *(v37 + 168) = 0;
  *(v37 + 216) = 0;
  *(v37 + 176) = 0;
  *(v37 + 16) = 0x73656E6C6174656DLL;
  *(v37 + 24) = 0xE900000000000073;
  *(v37 + 32) = v34;
  *(v37 + 40) = v4;
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

  if (v16)
  {
    v38 = (*(v16 + 8))();
  }

  else
  {
    v38 = v4;
  }

  v39 = swift_conformsToProtocol2();
  if (v39 && v38)
  {
    v40 = (*(v39 + 8))(v38, v39);

    *(v37 + 160) = v40;
  }

  else
  {
  }

  *(v37 + 64) = sub_1AFC73BA8;
  *(v37 + 72) = v34;
  sub_1AF0FB8EC(0, 0);
  *(v37 + 168) = 0;
  *(v37 + 176) = 0;

  *(v37 + 216) = 0;
  *(v70 + 64) = v37;
  v41 = swift_getKeyPath();
  v42 = swift_getKeyPath();
  v43 = swift_allocObject();
  v43[4] = sub_1AFC73B0C;
  v43[5] = v41;
  v43[2] = sub_1AFC73C30;
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
  *(v44 + 16) = 0x73656E6867756F72;
  *(v44 + 24) = 0xE900000000000073;
  *(v44 + 32) = v41;
  *(v44 + 40) = v4;
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
  *(v44 + 96) = v42;
  *(v44 + 104) = 0;
  *(v44 + 144) = xmmword_1AFE22A20;
  *(v44 + 80) = v43;
  *(v44 + 88) = &off_1F2535378;
  *(v44 + 210) = 0;
  swift_retain_n();

  if (v16)
  {
    v45 = (*(v16 + 8))();
  }

  else
  {
    v45 = v4;
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

  *(v44 + 64) = sub_1AFC73BA8;
  *(v44 + 72) = v41;
  sub_1AF0FB8EC(0, 0);
  *(v44 + 168) = 0;
  *(v44 + 176) = 0;

  *(v44 + 216) = 0;
  *(v70 + 72) = v44;
  v48 = swift_getKeyPath();
  v49 = swift_getKeyPath();
  v50 = swift_allocObject();
  v50[4] = sub_1AFC73B0C;
  v50[5] = v48;
  v50[2] = sub_1AFC73C30;
  v50[3] = v48;
  v50[6] = v48;
  v51 = swift_allocObject();
  *(v51 + 112) = 1;
  *(v51 + 128) = 0;
  *(v51 + 136) = 0;
  *(v51 + 120) = 0;
  *(v51 + 160) = MEMORY[0x1E69E7CC0];
  *(v51 + 168) = 0;
  *(v51 + 216) = 0;
  *(v51 + 176) = 0;
  *(v51 + 16) = 0xD000000000000010;
  *(v51 + 24) = 0x80000001AFF4C030;
  *(v51 + 32) = v48;
  *(v51 + 40) = v4;
  *(v51 + 48) = 0;
  *(v51 + 56) = 1;
  *(v51 + 58) = 256;
  *(v51 + 184) = 0;
  *(v51 + 188) = 1;
  *(v51 + 192) = 0;
  *(v51 + 196) = 1;
  *(v51 + 200) = 0x1000100000000;
  *(v51 + 208) = 1;
  *(v51 + 64) = 0;
  *(v51 + 72) = 0;
  *(v51 + 96) = v49;
  *(v51 + 104) = 0;
  *(v51 + 144) = xmmword_1AFE22A20;
  *(v51 + 80) = v50;
  *(v51 + 88) = &off_1F2535378;
  *(v51 + 210) = 256;
  swift_retain_n();

  if (v16)
  {
    v52 = (*(v16 + 8))();
  }

  else
  {
    v52 = v4;
  }

  v53 = swift_conformsToProtocol2();
  if (v53 && v52)
  {
    v54 = (*(v53 + 8))(v52, v53);

    *(v51 + 160) = v54;
  }

  else
  {
  }

  *(v51 + 64) = sub_1AFC73BA8;
  *(v51 + 72) = v48;
  sub_1AF0FB8EC(0, 0);
  *(v51 + 168) = 0;
  *(v51 + 176) = 0;

  *(v51 + 216) = 0;
  *(v70 + 80) = v51;
  v55 = swift_getKeyPath();
  v56 = swift_allocObject();
  v56[4] = sub_1AFC73B0C;
  v56[5] = v55;
  v56[2] = sub_1AFC73C30;
  v56[3] = v55;
  v56[6] = v55;
  v57 = swift_allocObject();
  *(v57 + 112) = 1;
  *(v57 + 128) = 0;
  *(v57 + 136) = 0;
  *(v57 + 120) = 0;
  *(v57 + 160) = MEMORY[0x1E69E7CC0];
  *(v57 + 168) = 0;
  *(v57 + 216) = 0;
  *(v57 + 176) = 0;
  *(v57 + 16) = 0xD000000000000016;
  *(v57 + 24) = 0x80000001AFF4C050;
  *(v57 + 32) = v55;
  *(v57 + 40) = v4;
  *(v57 + 48) = 0;
  *(v57 + 56) = 1;
  *(v57 + 58) = 0;
  *(v57 + 184) = 0;
  *(v57 + 188) = 1;
  *(v57 + 192) = 0;
  *(v57 + 196) = 1;
  *(v57 + 200) = 0x1000100000000;
  *(v57 + 208) = 1;
  *(v57 + 64) = 0;
  *(v57 + 72) = 0;
  *(v57 + 96) = 0;
  *(v57 + 104) = 0;
  *(v57 + 144) = xmmword_1AFE22A20;
  *(v57 + 80) = v56;
  *(v57 + 88) = &off_1F2535378;
  *(v57 + 210) = 0;
  swift_retain_n();
  if (v16)
  {
    v58 = (*(v16 + 8))();
  }

  else
  {
    v58 = v4;
  }

  v59 = swift_conformsToProtocol2();
  if (v59 && v58)
  {
    *(v57 + 160) = (*(v59 + 8))(v58, v59);
  }

  *(v57 + 64) = sub_1AFC73BA8;
  *(v57 + 72) = v55;
  sub_1AF0FB8EC(0, 0);
  *(v57 + 168) = 0;
  *(v57 + 176) = 0;

  *(v57 + 216) = 0;
  *(v70 + 88) = v57;
  v60 = swift_getKeyPath();
  v61 = swift_allocObject();
  v61[4] = sub_1AFC73B0C;
  v61[5] = v60;
  v61[2] = sub_1AFC73C30;
  v61[3] = v60;
  v61[6] = v60;
  v62 = swift_allocObject();
  *(v62 + 112) = 1;
  *(v62 + 128) = 0;
  *(v62 + 136) = 0;
  *(v62 + 120) = 0;
  *(v62 + 160) = MEMORY[0x1E69E7CC0];
  *(v62 + 168) = 0;
  *(v62 + 216) = 0;
  *(v62 + 176) = 0;
  *(v62 + 16) = 0x726170736E617274;
  *(v62 + 24) = 0xEB00000000746E65;
  *(v62 + 32) = v60;
  *(v62 + 40) = v4;
  *(v62 + 48) = 0;
  *(v62 + 56) = 1;
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
  *(v62 + 104) = 0;
  *(v62 + 144) = xmmword_1AFE22A20;
  *(v62 + 80) = v61;
  *(v62 + 88) = &off_1F2535378;
  *(v62 + 210) = 0;
  swift_retain_n();
  if (v16)
  {
    v63 = (*(v16 + 8))();
  }

  else
  {
    v63 = v4;
  }

  v64 = swift_conformsToProtocol2();
  if (v64 && v63)
  {
    *(v62 + 160) = (*(v64 + 8))(v63, v64);
  }

  *(v62 + 64) = sub_1AFC73BA8;
  *(v62 + 72) = v60;
  sub_1AF0FB8EC(0, 0);
  *(v62 + 168) = 0;
  *(v62 + 176) = 0;

  *(v62 + 216) = 0;
  *(v70 + 96) = v62;
  v65 = swift_getKeyPath();
  v66 = swift_allocObject();
  v66[4] = sub_1AFC73B0C;
  v66[5] = v65;
  v66[2] = sub_1AFC73C30;
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
  *(v67 + 16) = 0x7475436168706C61;
  *(v67 + 24) = 0xEB0000000066666FLL;
  *(v67 + 32) = v65;
  *(v67 + 40) = v4;
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
  if (v16)
  {
    v4 = (*(v16 + 8))();
  }

  v68 = swift_conformsToProtocol2();
  if (v68 && v4)
  {
    *(v67 + 160) = (*(v68 + 8))(v4, v68);
  }

  *(v67 + 64) = sub_1AFC73BA8;
  *(v67 + 72) = v65;
  sub_1AF0FB8EC(0, 0);
  *(v67 + 168) = 0;
  *(v67 + 176) = 0;

  *(v67 + 216) = 0;
  *(v70 + 104) = v67;
  qword_1EB6C2770 = v70;
  return result;
}

void sub_1AFC69458(SEL *a1@<X3>, _OWORD *a2@<X8>)
{
  v4 = sub_1AFC66FBC();
  if (v4)
  {
    v5 = v4;
    v6 = [v4 *a1];

    [v6 linearExtendedSRGBColor];
    v9 = v7;

    v8 = v9;
  }

  else
  {
    v8 = 0uLL;
  }

  *a2 = v8;
}

void sub_1AFC694DC(SEL *a1@<X3>, _DWORD *a2@<X8>)
{
  v4 = sub_1AFC66FBC();
  if (v4)
  {
    v5 = v4;
    v6 = [v4 *a1];

    [v6 intensity];
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
}

void sub_1AFC6955C(_DWORD *a1@<X8>)
{
  v2 = sub_1AFC66FBC();
  if (v2)
  {
    v3 = v2;
    [v2 alphaCutoff];
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
}

void *sub_1AFC695B4()
{
  v1 = sub_1AF42D96C(MEMORY[0x1E69E7CC0]);
  sub_1AFC73A9C((v0 + 8), v42);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1AF0F2990(v42);
  if (!Strong)
  {
    return v1;
  }

  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (!v3)
  {
    swift_unknownObjectRelease();
    return v1;
  }

  v4 = [v3 shaderModifiersArguments];
  swift_unknownObjectRelease();
  if (!v4)
  {
    return v1;
  }

  sub_1AF0D4478(0, &unk_1EB630CE0, &off_1E7A77C10);
  v5 = sub_1AFDFCC08();

  v6 = sub_1AFC4F780(v5);
  v7 = v6;
  if (v6 >> 62)
  {
    v8 = sub_1AFDFE108();
    if (v8)
    {
      goto LABEL_6;
    }

    goto LABEL_42;
  }

  v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v8)
  {
LABEL_42:

    return v1;
  }

LABEL_6:
  v9 = 0;
  v41 = v7 & 0xC000000000000001;
  v39 = v7;
  v40 = MEMORY[0x1E69E7CC0];
  v10 = 256;
  v38 = v8;
  while (1)
  {
    v11 = v41 ? MEMORY[0x1B2719C70](v9, v7) : *(v7 + 8 * v9 + 32);
    v12 = v11;
    v13 = [v11 type];
    if (v13 <= 4)
    {
      v15 = MEMORY[0x1E69E6448];
      if (v13 == 3)
      {
        goto LABEL_25;
      }

      if (v13 != 4)
      {
LABEL_36:

        goto LABEL_9;
      }

      v16 = MEMORY[0x1E69E7428];
      v17 = &unk_1ED72F770;
    }

    else
    {
      switch(v13)
      {
        case 5:
          v16 = MEMORY[0x1E69E7450];
          v17 = &qword_1ED72F740;
          break;
        case 6:
          v16 = MEMORY[0x1E69E74A8];
          v17 = &qword_1ED72F6E0;
          break;
        case 15:
          type metadata accessor for simd_float4x4(0);
          goto LABEL_24;
        default:
          goto LABEL_36;
      }
    }

    sub_1AFC739C4(0, v17, sub_1AF43A0C8, MEMORY[0x1E69E6448], v16);
LABEL_24:
    v15 = v14;
LABEL_25:
    v18 = [v12 name];
    v19 = sub_1AFDFCEF8();
    v21 = v20;

    memset(v42, 0, 32);
    v22 = sub_1AF493834(v15, v42, v19, v21, 0, 1, 0, 1, 0, 1, 1, 0, 0, 0, v10, &type metadata for MaterialController, v15, &off_1F256AC40);

    sub_1AFC723FC(v42, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
    v24 = *(v22 + 16);
    v23 = *(v22 + 24);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v42[0] = v1;
    v27 = sub_1AF419914(v24, v23);
    v28 = v26;
    v29 = v1[2] + ((v26 & 1) == 0);
    if (v1[3] < v29)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v1 = *&v42[0];
      if ((v26 & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    else
    {
      sub_1AF844B24();
      v1 = *&v42[0];
      if ((v28 & 1) == 0)
      {
LABEL_31:
        v1[(v27 >> 6) + 8] |= 1 << v27;
        v32 = (v1[6] + 16 * v27);
        *v32 = v24;
        v32[1] = v23;
        *(v1[7] + 8 * v27) = v22;
        ++v1[2];

        v33 = v40;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v33 = sub_1AF420554(0, *(v40 + 2) + 1, 1, v40);
        }

        v35 = *(v33 + 2);
        v34 = *(v33 + 3);
        if (v35 >= v34 >> 1)
        {
          v33 = sub_1AF420554(v34 > 1, v35 + 1, 1, v33);
        }

        *(v33 + 2) = v35 + 1;
        v40 = v33;
        v36 = &v33[16 * v35];
        *(v36 + 4) = v24;
        *(v36 + 5) = v23;

        goto LABEL_8;
      }
    }

LABEL_7:
    *(v1[7] + 8 * v27) = v22;

LABEL_8:
    v10 = 0;
    v8 = v38;
    v7 = v39;
LABEL_9:
    if (v8 == ++v9)
    {
      goto LABEL_42;
    }
  }

  sub_1AF82CE44(v29, isUniquelyReferenced_nonNull_native);
  v30 = sub_1AF419914(v24, v23);
  if ((v28 & 1) == (v31 & 1))
  {
    v27 = v30;
    v1 = *&v42[0];
    if ((v28 & 1) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_7;
  }

  result = sub_1AFDFF1A8();
  __break(1u);
  return result;
}

uint64_t sub_1AFC69AF0()
{
  v1 = *v0;
  if (!*v0)
  {
    if (qword_1EB631B38 != -1)
    {
      swift_once();
    }

    v4 = qword_1EB6C2770;
    goto LABEL_8;
  }

  v2 = OBJC_IVAR____TtC3VFX30ShadableShaderModifierObserver_propertyCache;
  v3 = *&v1[OBJC_IVAR____TtC3VFX30ShadableShaderModifierObserver_propertyCache];
  if (v3 >> 62)
  {
    if (sub_1AFDFE108() >= 1)
    {
      goto LABEL_4;
    }
  }

  else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
  {
LABEL_4:
    v4 = *&v1[v2];
LABEL_8:

    return v4;
  }

  v5 = qword_1EB631B38;
  v6 = v1;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = qword_1EB6C2770;

  v8 = sub_1AFC695B4();
  v10 = sub_1AF428E18(v8, v9, sub_1AF56F254);

  sub_1AF48FA18(v10);
  *&v1[v2] = v7;

  v4 = *&v1[v2];

  return v4;
}

uint64_t sub_1AFC69C74(void *a1, uint64_t a2, uint64_t a3)
{
  if (![objc_opt_self() immediateMode])
  {
    sub_1AFC73A9C((v3 + 8), v12);
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1AF0F2990(v12);
    if (Strong)
    {
      objc_opt_self();
      v8 = swift_dynamicCastObjCClass();
      if (!v8)
      {

        swift_unknownObjectRelease();
        return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
      }

      goto LABEL_6;
    }

LABEL_7:

    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  v7 = *(v3 + 40);
  if (!v7)
  {
    goto LABEL_7;
  }

  v8 = v7;
LABEL_6:
  v10 = v8;
  sub_1AF0D5A54(a1, v12);
  sub_1AF44C010(v12, a2, a3);

  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
}

_OWORD *sub_1AFC69D70@<X0>(uint64_t a3@<X8>)
{
  result = sub_1AFC66FBC();
  if (result)
  {
    v5 = result;
    sub_1AF44BA60(v6);

    return sub_1AF449D40(v6, a3);
  }

  else
  {
    *(a3 + 24) = MEMORY[0x1E69E6448];
    *a3 = 0;
  }

  return result;
}

uint64_t sub_1AFC69E68()
{
  v1 = [v0 name];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1AFDFCEF8();

  return v3;
}

void sub_1AFC69ED0()
{
  sub_1AFC73A9C((v0 + 8), v16);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1AF0F2990(v16);
  if (Strong)
  {
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (v2)
    {
      v3 = [v2 presentationNode];
      swift_unknownObjectRelease();
      v4 = [v3 model];

      goto LABEL_6;
    }

    swift_unknownObjectRelease();
  }

  v4 = 0;
LABEL_6:

  *(v0 + 40) = v4;
  sub_1AFC73A9C((v0 + 8), v16);
  v5 = swift_unknownObjectWeakLoadStrong();
  sub_1AF0F2990(v16);
  if (v5)
  {
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (!v6)
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = [v6 model];

  if (v7)
  {
    v8 = type metadata accessor for ShadableShaderModifierObserver();
    v9 = objc_allocWithZone(v8);
    *&v9[OBJC_IVAR____TtC3VFX30ShadableShaderModifierObserver_propertyCache] = MEMORY[0x1E69E7CC0];
    *&v9[OBJC_IVAR____TtC3VFX30ShadableShaderModifierObserver_shadable] = v7;
    v15.receiver = v9;
    v15.super_class = v8;
    v10 = v7;
    v11 = objc_msgSendSuper2(&v15, sel_init);
    v12 = *&v11[OBJC_IVAR____TtC3VFX30ShadableShaderModifierObserver_shadable];
    v13 = v11;
    swift_unknownObjectRetain();
    v14 = sub_1AFDFCEC8();
    [v12 addObserver:v13 forKeyPath:v14 options:0 context:{0, v15.receiver, v15.super_class}];

    swift_unknownObjectRelease();
    *v0 = v13;
  }
}

id sub_1AFC6A0E4()
{
  if ([objc_opt_self() immediateMode])
  {
    v1 = *(v0 + 40);
    v2 = v1;
  }

  else
  {
    sub_1AFC73A9C((v0 + 8), v6);
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1AF0F2990(v6);
    if (Strong)
    {
      objc_opt_self();
      v4 = swift_dynamicCastObjCClass();
      if (!v4)
      {
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v4 = 0;
    }

    v1 = [v4 model];
  }

  return v1;
}

uint64_t sub_1AFC6A1A8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1AFC739C4(0, &qword_1ED726A70, sub_1AF445B90, &type metadata for StringCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v24 - v8;
  v33 = 0;
  v35 = 0;
  swift_unknownObjectWeakInit();
  v35 = 0;
  swift_unknownObjectWeakAssign();
  v36 = 0x3E6C6C756E3CLL;
  v37 = 0xE600000000000000;
  v38 = 0;
  v10 = a1[3];
  v11 = a1[4];
  sub_1AF441150(a1, v10);
  if (sub_1AF694FF8(2037, v10, v11))
  {
    sub_1AF441150(a1, a1[3]);
    sub_1AFDFF398();
    if (!v2)
    {
      sub_1AF441150(&v25, v28);
      sub_1AF9B3A20();
      sub_1AFDFEE88();
      v12 = &v29;
LABEL_9:
      sub_1AF9B3A74(v12, &v34);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v25);
LABEL_17:
      sub_1AFC73A64(&v33, a2);
    }
  }

  else
  {
    v13 = a1[3];
    v14 = a1[4];
    sub_1AF441150(a1, v13);
    if (sub_1AF694FF8(2029, v13, v14))
    {
      sub_1AF441150(a1, a1[3]);
      sub_1AFDFF398();
      if (!v2)
      {
        sub_1AF441150(&v25, v28);
        v17 = sub_1AFDFEE38();
        v19 = v18;
        v30 = 0;
        swift_unknownObjectWeakInit();
        v30 = 0;
        v12 = swift_unknownObjectWeakAssign();
        v31 = v17;
        v32 = v19;
        goto LABEL_9;
      }
    }

    else
    {
      v39 = a2;
      sub_1AF441150(a1, a1[3]);
      sub_1AF445B90();
      sub_1AFDFF3B8();
      if (!v2)
      {
        v29 = 0;
        LOBYTE(v30) = 1;
        v31 = 0xD000000000000017;
        v32 = 0x80000001AFF4C150;
        v15 = sub_1AFDFE698();
        a2 = v39;
        if (v16)
        {
          v20 = v15;
        }

        else
        {
          v20 = 0;
        }

        if (v16)
        {
          v21 = v16;
        }

        else
        {
          v21 = 0xE000000000000000;
        }

        (*(v7 + 8))(v9, v6);
        v26 = 0;
        swift_unknownObjectWeakInit();
        v26 = 0;
        v22 = swift_unknownObjectWeakAssign();
        v27 = v20;
        v28 = v21;
        sub_1AF9B3A74(v22, &v34);
        goto LABEL_17;
      }
    }
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return sub_1AF644A40(&v33);
}

void sub_1AFC6A590(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  (*(a2 + 16))(v2 + 8, ObjectType, a2);

  sub_1AFC69ED0();
}

uint64_t sub_1AFC6A5F4@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[2] = 0;
  swift_unknownObjectWeakInit();
  a1[2] = 0;
  result = swift_unknownObjectWeakAssign();
  a1[3] = 0x3E6C6C756E3CLL;
  a1[4] = 0xE600000000000000;
  a1[5] = 0;
  return result;
}

void *sub_1AFC6A664()
{
  v1 = sub_1AF42D96C(MEMORY[0x1E69E7CC0]);
  sub_1AFC73A9C((v0 + 8), v43);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1AF0F2990(v43);
  if (Strong)
  {
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (!v3)
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = [v3 model];

  if (!v4)
  {
    return v1;
  }

  v5 = [v4 shaderModifiersArguments];

  if (!v5)
  {
    return v1;
  }

  sub_1AF0D4478(0, &unk_1EB630CE0, &off_1E7A77C10);
  v6 = sub_1AFDFCC08();

  v7 = sub_1AFC4F780(v6);
  v8 = v7;
  if (v7 >> 62)
  {
    v9 = sub_1AFDFE108();
    if (v9)
    {
      goto LABEL_9;
    }

    goto LABEL_44;
  }

  v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
LABEL_44:

    return v1;
  }

LABEL_9:
  v10 = 0;
  v42 = v8 & 0xC000000000000001;
  v40 = v8;
  v41 = MEMORY[0x1E69E7CC0];
  v11 = 256;
  v39 = v9;
  while (1)
  {
    v12 = v42 ? MEMORY[0x1B2719C70](v10, v8) : *(v8 + 8 * v10 + 32);
    v13 = v12;
    v14 = [v12 type];
    if (v14 <= 4)
    {
      v16 = MEMORY[0x1E69E6448];
      if (v14 == 3)
      {
        goto LABEL_28;
      }

      if (v14 != 4)
      {
LABEL_39:

        goto LABEL_12;
      }

      v17 = MEMORY[0x1E69E7428];
      v18 = &unk_1ED72F770;
    }

    else
    {
      switch(v14)
      {
        case 5:
          v17 = MEMORY[0x1E69E7450];
          v18 = &qword_1ED72F740;
          break;
        case 6:
          v17 = MEMORY[0x1E69E74A8];
          v18 = &qword_1ED72F6E0;
          break;
        case 15:
          type metadata accessor for simd_float4x4(0);
          goto LABEL_27;
        default:
          goto LABEL_39;
      }
    }

    sub_1AFC739C4(0, v18, sub_1AF43A0C8, MEMORY[0x1E69E6448], v17);
LABEL_27:
    v16 = v15;
LABEL_28:
    v19 = [v13 name];
    v20 = sub_1AFDFCEF8();
    v22 = v21;

    memset(v43, 0, 32);
    v23 = sub_1AF493834(v16, v43, v20, v22, 0, 1, 0, 1, 0, 1, 1, 0, 0, 0, v11, &type metadata for ModelController, v16, &off_1F256AAC8);

    sub_1AFC723FC(v43, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
    v25 = *(v23 + 16);
    v24 = *(v23 + 24);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v43[0] = v1;
    v28 = sub_1AF419914(v25, v24);
    v29 = v27;
    v30 = v1[2] + ((v27 & 1) == 0);
    if (v1[3] < v30)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v1 = *&v43[0];
      if ((v27 & 1) == 0)
      {
        goto LABEL_34;
      }
    }

    else
    {
      sub_1AF844B24();
      v1 = *&v43[0];
      if ((v29 & 1) == 0)
      {
LABEL_34:
        v1[(v28 >> 6) + 8] |= 1 << v28;
        v33 = (v1[6] + 16 * v28);
        *v33 = v25;
        v33[1] = v24;
        *(v1[7] + 8 * v28) = v23;
        ++v1[2];

        v34 = v41;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v34 = sub_1AF420554(0, *(v41 + 2) + 1, 1, v41);
        }

        v36 = *(v34 + 2);
        v35 = *(v34 + 3);
        if (v36 >= v35 >> 1)
        {
          v34 = sub_1AF420554(v35 > 1, v36 + 1, 1, v34);
        }

        *(v34 + 2) = v36 + 1;
        v41 = v34;
        v37 = &v34[16 * v36];
        *(v37 + 4) = v25;
        *(v37 + 5) = v24;

        goto LABEL_11;
      }
    }

LABEL_10:
    *(v1[7] + 8 * v28) = v23;

LABEL_11:
    v11 = 0;
    v9 = v39;
    v8 = v40;
LABEL_12:
    if (v9 == ++v10)
    {
      goto LABEL_44;
    }
  }

  sub_1AF82CE44(v30, isUniquelyReferenced_nonNull_native);
  v31 = sub_1AF419914(v25, v24);
  if ((v29 & 1) == (v32 & 1))
  {
    v28 = v31;
    v1 = *&v43[0];
    if ((v29 & 1) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_10;
  }

  result = sub_1AFDFF1A8();
  __break(1u);
  return result;
}

uint64_t sub_1AFC6ABC8()
{
  v1 = *v0;
  if (!*v0)
  {
    if (qword_1EB637390 != -1)
    {
      swift_once();
    }

    v4 = qword_1EB6C3670;
    goto LABEL_8;
  }

  v2 = OBJC_IVAR____TtC3VFX30ShadableShaderModifierObserver_propertyCache;
  v3 = *&v1[OBJC_IVAR____TtC3VFX30ShadableShaderModifierObserver_propertyCache];
  if (v3 >> 62)
  {
    if (sub_1AFDFE108() >= 1)
    {
      goto LABEL_4;
    }
  }

  else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
  {
LABEL_4:
    v4 = *&v1[v2];
LABEL_8:

    return v4;
  }

  v5 = qword_1EB637390;
  v6 = v1;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = qword_1EB6C3670;

  v8 = sub_1AFC6A664();
  v10 = sub_1AF428E18(v8, v9, sub_1AF56F254);

  sub_1AF48FA18(v10);
  *&v1[v2] = v7;

  v4 = *&v1[v2];

  return v4;
}

void sub_1AFC6AD4C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ([objc_opt_self() immediateMode])
  {
    v7 = *(v3 + 40);
    v8 = v7;
    if (!v7)
    {
      goto LABEL_16;
    }
  }

  else
  {
    sub_1AFC73A9C((v3 + 8), &v63);
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1AF0F2990(&v63);
    if (Strong)
    {
      objc_opt_self();
      v10 = swift_dynamicCastObjCClass();
      if (!v10)
      {
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v10 = 0;
    }

    v7 = [v10 model];

    if (!v7)
    {
      goto LABEL_16;
    }
  }

  v11 = [v7 shaderModifiersArguments];

  if (!v11)
  {
LABEL_16:
    *(a3 + 24) = MEMORY[0x1E69E6448];
    *a3 = 0;
    return;
  }

  sub_1AF0D4478(0, &unk_1EB630CE0, &off_1E7A77C10);
  v12 = sub_1AFDFCC08();

  if (!*(v12 + 16) || (v13 = sub_1AF419914(a1, a2), (v14 & 1) == 0))
  {

    goto LABEL_16;
  }

  v15 = *(*(v12 + 56) + 8 * v13);

  v16 = sub_1AFC6A0E4();
  if (v16)
  {
    v17 = v16;
    v18 = sub_1AFDFCEC8();
    v19 = [v17 valueForKey_];

    if (v19)
    {
      sub_1AFDFDFB8();
      swift_unknownObjectRelease();
    }

    else
    {
      v61 = 0u;
      v62 = 0u;
    }

    v63 = v61;
    v64 = v62;
  }

  else
  {
    v63 = 0u;
    v64 = 0u;
  }

  v20 = [v15 type];
  if (v20 <= 4)
  {
    if (v20 != 3)
    {
      if (v20 != 4)
      {
        goto LABEL_41;
      }

      sub_1AF44CBE4(&v63, &v61);
      if (*(&v62 + 1))
      {
        sub_1AF0D4478(0, &qword_1EB632950, 0x1E696B098);
        if (swift_dynamicCast())
        {
          [v60 VFXFloat2Value];
          v28 = v27;

LABEL_66:
          sub_1AFC739C4(0, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
          *(a3 + 24) = v53;

          *a3 = v28;
          goto LABEL_67;
        }
      }

      else
      {
        sub_1AFC723FC(&v61, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
      }

      v28 = 0;
      goto LABEL_66;
    }

    sub_1AF44CBE4(&v63, &v61);
    if (*(&v62 + 1))
    {
      sub_1AF0D4478(0, &qword_1ED721F80, 0x1E696AD98);
      if (swift_dynamicCast())
      {
        [v60 floatValue];
        v35 = v34;

LABEL_57:
        *(a3 + 24) = MEMORY[0x1E69E6448];

        *a3 = v35;
LABEL_67:
        sub_1AFC723FC(&v63, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
        return;
      }
    }

    else
    {
      sub_1AFC723FC(&v61, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
    }

    v35 = 0;
    goto LABEL_57;
  }

  if (v20 == 5)
  {
    sub_1AF44CBE4(&v63, &v61);
    if (*(&v62 + 1))
    {
      sub_1AF0D4478(0, &qword_1EB632950, 0x1E696B098);
      if (swift_dynamicCast())
      {
        [v60 VFXFloat3Value];
        v58 = v29;

        v30 = 0;
        v32 = *(&v58 + 1);
        v31 = v58;
LABEL_44:
        v36 = &qword_1ED72F740;
        v37 = MEMORY[0x1E69E6448];
        v38 = MEMORY[0x1E69E7450];
LABEL_48:
        sub_1AFC739C4(0, v36, sub_1AF43A0C8, v37, v38);
        *(a3 + 24) = v39;
        v40 = swift_allocObject();
        *a3 = v40;

        if (v30)
        {
          v41 = 0;
        }

        else
        {
          v41 = v31;
        }

        if (v30)
        {
          v42 = 0;
        }

        else
        {
          v42 = v32;
        }

        *(v40 + 16) = v41;
        *(v40 + 24) = v42;
        goto LABEL_67;
      }
    }

    else
    {
      sub_1AFC723FC(&v61, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
    }

    v31 = 0;
    v32 = 0;
    v30 = 1;
    goto LABEL_44;
  }

  if (v20 == 6)
  {
    sub_1AF44CBE4(&v63, &v61);
    if (*(&v62 + 1))
    {
      sub_1AF0D4478(0, &qword_1EB632950, 0x1E696B098);
      if (swift_dynamicCast())
      {
        [v60 VFXFloat4Value];
        v59 = v33;

        v30 = 0;
        v32 = *(&v59 + 1);
        v31 = v59;
LABEL_47:
        v36 = &qword_1ED72F6E0;
        v37 = MEMORY[0x1E69E6448];
        v38 = MEMORY[0x1E69E74A8];
        goto LABEL_48;
      }
    }

    else
    {
      sub_1AFC723FC(&v61, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
    }

    v31 = 0;
    v32 = 0;
    v30 = 1;
    goto LABEL_47;
  }

  if (v20 != 15)
  {
LABEL_41:
    sub_1AFC723FC(&v63, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);

    goto LABEL_16;
  }

  sub_1AF44CBE4(&v63, &v61);
  v21 = MEMORY[0x1E69E7CA0];
  if (!*(&v62 + 1))
  {
    sub_1AFC723FC(&v61, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
    goto LABEL_59;
  }

  sub_1AF0D4478(0, &qword_1EB632950, 0x1E696B098);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_59:
    v56 = 0u;
    v57 = 0u;
    v26 = 1;
    v54 = 0u;
    v55 = 0u;
    goto LABEL_60;
  }

  [v60 VFXMatrix4Value];
  v56 = v23;
  v57 = v22;
  v54 = v24;
  v55 = v25;

  v26 = 0;
LABEL_60:
  type metadata accessor for simd_float4x4(0);
  *(a3 + 24) = v43;
  v44 = swift_allocObject();
  *a3 = v44;

  if (v26)
  {
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v48 = 0;
    v49 = 0x3F80000000000000;
    v50 = 1065353216;
    v51 = 1065353216;
    v52 = 0x3F80000000000000;
  }

  else
  {
    v45 = *(&v57 + 1);
    v50 = v57;
    v46 = *(&v54 + 1);
    v49 = v54;
    v51 = *(&v55 + 1);
    v47 = v55;
    v52 = *(&v56 + 1);
    v48 = v56;
  }

  v44[2] = v50;
  v44[3] = v45;
  v44[4] = v49;
  v44[5] = v46;
  v44[6] = v47;
  v44[7] = v51;
  v44[8] = v48;
  v44[9] = v52;
  sub_1AFC723FC(&v63, &qword_1ED726850, v21 + 8);
}

uint64_t sub_1AFC6B4C0(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1AFC6A0E4();
  if (!v6 || (v7 = v6, v8 = [v6 shaderModifiersArguments], v7, !v8))
  {
LABEL_12:
    v17 = sub_1AFC6A0E4();
    if (v17)
    {
      v18 = v17;
      sub_1AF441150(a1, *(a1 + 3));
      v19 = sub_1AFDFEE08();
      v20 = sub_1AFDFCEC8();

      [v18 setValue:v19 forKey:v20];

      swift_unknownObjectRelease();
    }

    else
    {
    }

    v21 = a1;
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v21);
  }

  sub_1AF0D4478(0, &unk_1EB630CE0, &off_1E7A77C10);
  v9 = sub_1AFDFCC08();

  if (!*(v9 + 16) || (v10 = sub_1AF419914(a2, a3), (v11 & 1) == 0))
  {

    goto LABEL_12;
  }

  v12 = *(*(v9 + 56) + 8 * v10);

  v42 = 0u;
  v43 = 0u;
  v13 = [v12 type];
  if (v13 <= 4)
  {
    if (v13 == 3)
    {
      sub_1AF0D5A54(a1, &v35);
      v14 = MEMORY[0x1E69E7CA0];
      if (swift_dynamicCast())
      {
        v25 = LODWORD(v40[0]);
        v15 = 0x1E696AD98;
        v26 = objc_allocWithZone(MEMORY[0x1E696AD98]);
        LODWORD(v27) = v25;
        v28 = [v26 initWithFloat_];
      }

      else
      {
        sub_1AF0D5A54(a1, &v35);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_32;
        }

        v15 = 0x1E696AD98;
        v28 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
      }

      v23 = v28;
      v24 = &qword_1ED721F80;
      goto LABEL_31;
    }

    if (v13 == 4)
    {
      sub_1AF0D5A54(a1, &v35);
      sub_1AFC739C4(0, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
      v14 = MEMORY[0x1E69E7CA0];
      if (swift_dynamicCast())
      {
        v15 = 0x1E696B098;
        v16 = [objc_opt_self() valueWithVFXFloat2_];
        goto LABEL_25;
      }
    }
  }

  else
  {
    switch(v13)
    {
      case 5:
        sub_1AF0D5A54(a1, &v35);
        sub_1AFC739C4(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
        v14 = MEMORY[0x1E69E7CA0];
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        v15 = 0x1E696B098;
        v16 = [objc_opt_self() valueWithVFXFloat3_];
        goto LABEL_25;
      case 6:
        sub_1AF0D5A54(a1, &v35);
        sub_1AFC739C4(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
        v14 = MEMORY[0x1E69E7CA0];
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        v15 = 0x1E696B098;
        v16 = [objc_opt_self() valueWithVFXFloat4_];
        goto LABEL_25;
      case 15:
        sub_1AF0D5A54(a1, v40);
        type metadata accessor for simd_float4x4(0);
        v14 = MEMORY[0x1E69E7CA0];
        if (swift_dynamicCast())
        {
          v15 = 0x1E696B098;
          v16 = [objc_opt_self() valueWithVFXMatrix4_];
LABEL_25:
          v23 = v16;
          v24 = &qword_1EB632950;
LABEL_31:
          v29 = sub_1AF0D4478(0, v24, v15);
          sub_1AFC723FC(&v42, &qword_1ED726850, v14 + 8);
          *&v42 = v23;
          *(&v43 + 1) = v29;
        }

        break;
    }
  }

LABEL_32:
  sub_1AF44CBE4(&v42, v40);
  if (v41)
  {
    sub_1AF449D40(v40, &v35);
    v30 = sub_1AFC6A0E4();
    if (v30)
    {
      v31 = v30;
      sub_1AF441150(&v35, v37);
      v32 = sub_1AFDFEE08();
      v33 = sub_1AFDFCEC8();

      [v31 setValue:v32 forKey:v33];

      swift_unknownObjectRelease();
      sub_1AFC723FC(&v42, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
    }

    else
    {
      sub_1AFC723FC(&v42, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
    }

    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
    v21 = &v35;
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v21);
  }

  v34 = MEMORY[0x1E69E7CA0];
  sub_1AFC723FC(&v42, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return sub_1AFC723FC(v40, &qword_1ED726850, v34 + 8);
}

double sub_1AFC6BB60()
{
  v2 = [v1 presentationObject];
  sub_1AFDFDFB8();

  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_1AFC6BBCC()
{
  v1 = [v0 identifier];
  v2 = sub_1AFDFCEF8();

  return v2;
}

uint64_t sub_1AFC6BCC0()
{
  sub_1AFC7246C(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE550E0;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6448];
  sub_1AFC7246C(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AFC72038;
  v3[5] = KeyPath;
  v3[2] = sub_1AFC7206C;
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
  *(v4 + 16) = 0x7469736E65746E69;
  *(v4 + 24) = 0xE900000000000079;
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

  *(v4 + 64) = sub_1AFC72078;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0, 0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  v8 = swift_getKeyPath();
  sub_1AFC700D0(0, &qword_1ED722B60, type metadata accessor for simd_float4x4);
  v9 = swift_allocObject();
  v9[4] = sub_1AFC72080;
  v9[5] = v8;
  v9[2] = sub_1AFC720CC;
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
  type metadata accessor for simd_float4x4(0);
  v12 = v11;
  *(v10 + 168) = 0;
  *(v10 + 176) = 0;
  *(v10 + 16) = 0x726F66736E617274;
  *(v10 + 24) = 0xE90000000000006DLL;
  *(v10 + 32) = v8;
  *(v10 + 40) = v11;
  *(v10 + 48) = 0;
  *(v10 + 56) = 1;
  *(v10 + 58) = 2048;
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
  *(v10 + 210) = 2048;
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
  *(v10 + 64) = sub_1AFC720DC;
  *(v10 + 72) = v8;
  sub_1AF0FB8EC(v15, v16);
  *(v10 + 168) = 0;
  *(v10 + 176) = 0;

  *(v10 + 216) = 0;

  *(v0 + 40) = v10;
  qword_1EB6C3678 = v0;
  return result;
}

void sub_1AFC6C184(SEL *a1)
{
  sub_1AFC73A9C(v1, v6);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1AF0F2990(v6);
  if (Strong)
  {
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {
      v5 = [v4 *a1];
      swift_unknownObjectRelease();
      [v5 intensity];
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }
}

void sub_1AFC6C244(SEL *a1, SEL *a2, float a3)
{
  sub_1AFC73A9C(v3, v11);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1AF0F2990(v11);
  if (Strong)
  {
    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (v8)
    {
      v9 = [v8 *a1];
      swift_unknownObjectRelease();
      *&v10 = a3;
      [v9 *a2];
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }
}

double sub_1AFC6C30C(SEL *a1)
{
  sub_1AFC73A9C(v1, v9);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1AF0F2990(v9);
  if (Strong)
  {
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {
      v5 = [v4 *a1];
      swift_unknownObjectRelease();
      [v5 contentsTransform];
      v8 = v6;

      return v8;
    }

    swift_unknownObjectRelease();
  }

  *&result = 1065353216;
  return result;
}

double sub_1AFC6C3E8(SEL *a1, double a2, double a3, double a4, double a5)
{
  sub_1AFC73A9C(v5, v15);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1AF0F2990(v15);
  if (Strong)
  {
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      v10 = [v9 *a1];
      swift_unknownObjectRelease();
      [v10 setContentsTransform_];
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1AFC6C49C@<X0>(void *a1@<X0>, uint64_t (*a2)(char *)@<X1>, void *a3@<X8>)
{
  sub_1AFC739C4(0, &qword_1ED726A70, sub_1AF445B90, &type metadata for StringCodingKeys, MEMORY[0x1E69E6F48]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v26 - v10;
  v36 = 0;
  swift_unknownObjectWeakInit();
  v36 = 0;
  swift_unknownObjectWeakAssign();
  v37 = 0x3E6C6C756E3CLL;
  v38 = 0xE600000000000000;
  v12 = a1[3];
  v13 = a1[4];
  sub_1AF441150(a1, v12);
  if (sub_1AF694FF8(2037, v12, v13))
  {
    sub_1AF441150(a1, a1[3]);
    sub_1AFDFF398();
    if (!v3)
    {
      sub_1AF441150(&v27, v30);
      sub_1AF9B3A20();
      sub_1AFDFEE88();
      v14 = &v31;
LABEL_9:
      sub_1AF9B3A74(v14, v35);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v27);
LABEL_17:
      sub_1AFC73A9C(v35, a3);
    }
  }

  else
  {
    v15 = a1[3];
    v16 = a1[4];
    sub_1AF441150(a1, v15);
    if (sub_1AF694FF8(2029, v15, v16))
    {
      sub_1AF441150(a1, a1[3]);
      sub_1AFDFF398();
      if (!v3)
      {
        sub_1AF441150(&v27, v30);
        v19 = sub_1AFDFEE38();
        v21 = v20;
        v32 = 0;
        swift_unknownObjectWeakInit();
        v32 = 0;
        v14 = swift_unknownObjectWeakAssign();
        v33 = v19;
        v34 = v21;
        goto LABEL_9;
      }
    }

    else
    {
      v39 = a3;
      sub_1AF441150(a1, a1[3]);
      sub_1AF445B90();
      sub_1AFDFF3B8();
      if (!v3)
      {
        v31 = 0;
        LOBYTE(v32) = 1;
        v33 = 0xD000000000000017;
        v34 = 0x80000001AFF4C150;
        v17 = sub_1AFDFE698();
        a3 = v39;
        if (v18)
        {
          v22 = v17;
        }

        else
        {
          v22 = 0;
        }

        if (v18)
        {
          v23 = v18;
        }

        else
        {
          v23 = 0xE000000000000000;
        }

        (*(v9 + 8))(v11, v8);
        v28 = 0;
        swift_unknownObjectWeakInit();
        v28 = 0;
        v24 = swift_unknownObjectWeakAssign();
        v29 = v22;
        v30 = v23;
        sub_1AF9B3A74(v24, v35);
        goto LABEL_17;
      }
    }
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return a2(v35);
}

uint64_t sub_1AFC6C890()
{
  sub_1AFC7246C(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE550E0;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6448];
  sub_1AFC7246C(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AFC720E4;
  v3[5] = KeyPath;
  v3[2] = sub_1AFC72118;
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
  *(v4 + 16) = 0x7469736E65746E69;
  *(v4 + 24) = 0xE900000000000079;
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

  *(v4 + 64) = sub_1AFC72124;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0, 0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  v8 = swift_getKeyPath();
  sub_1AFC700D0(0, &qword_1ED722B60, type metadata accessor for simd_float4x4);
  v9 = swift_allocObject();
  v9[4] = sub_1AFC72160;
  v9[5] = v8;
  v9[2] = sub_1AFC721AC;
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
  type metadata accessor for simd_float4x4(0);
  v12 = v11;
  *(v10 + 168) = 0;
  *(v10 + 176) = 0;
  *(v10 + 16) = 0x726F66736E617274;
  *(v10 + 24) = 0xE90000000000006DLL;
  *(v10 + 32) = v8;
  *(v10 + 40) = v11;
  *(v10 + 48) = 0;
  *(v10 + 56) = 1;
  *(v10 + 58) = 2048;
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
  *(v10 + 210) = 2048;
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
  *(v10 + 64) = sub_1AFC721BC;
  *(v10 + 72) = v8;
  sub_1AF0FB8EC(v15, v16);
  *(v10 + 168) = 0;
  *(v10 + 176) = 0;

  *(v10 + 216) = 0;

  *(v0 + 40) = v10;
  qword_1EB6C3680 = v0;
  return result;
}

void sub_1AFC6CD2C(void *a1@<X0>, SEL *a2@<X3>, _DWORD *a3@<X8>)
{
  sub_1AFC73A9C(a1, v10);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1AF0F2990(v10);
  if (!Strong)
  {
    goto LABEL_5;
  }

  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6)
  {
    swift_unknownObjectRelease();
LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  v7 = [v6 *a2];
  swift_unknownObjectRelease();
  [v7 intensity];
  v9 = v8;

LABEL_6:
  *a3 = v9;
}

double sub_1AFC6CDEC()
{
  sub_1AFC73A9C(v0, v7);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1AF0F2990(v7);
  if (Strong)
  {
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (v2)
    {
      v3 = [v2 physicsWorld];
      swift_unknownObjectRelease();
      [v3 gravity];
      v6 = v4;

      return v6;
    }

    swift_unknownObjectRelease();
  }

  return 0.0;
}

double sub_1AFC6CE9C(double a1)
{
  sub_1AFC73A9C(v1, v7);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1AF0F2990(v7);
  if (Strong)
  {
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {
      v5 = [v4 physicsWorld];
      swift_unknownObjectRelease();
      [v5 setGravity_];
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_1AFC6CF48()
{
  sub_1AFC73A9C(v0, v4);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1AF0F2990(v4);
  if (Strong)
  {
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (v2)
    {
      v3 = [v2 physicsWorld];
      swift_unknownObjectRelease();
      [v3 speed];
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1AFC6D02C()
{
  sub_1AFC7246C(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE550E0;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E7450];
  sub_1AFC703CC(0, qword_1ED72D340, &qword_1ED72F740, MEMORY[0x1E69E7450]);
  v3 = swift_allocObject();
  v3[4] = sub_1AFC721C4;
  v3[5] = KeyPath;
  v3[2] = sub_1AFC721DC;
  v3[3] = KeyPath;
  v3[6] = KeyPath;
  type metadata accessor for PropertyDescription();
  v4 = swift_allocObject();
  *(v4 + 104) = 0;
  *(v4 + 112) = 1;
  *(v4 + 128) = 0;
  *(v4 + 136) = 0;
  *(v4 + 120) = 0;
  *(v4 + 160) = MEMORY[0x1E69E7CC0];
  *(v4 + 216) = 0;
  v5 = MEMORY[0x1E69E6448];
  sub_1AFC739C4(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], v2);
  v7 = v6;
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;
  *(v4 + 16) = 0x79746976617267;
  *(v4 + 24) = 0xE700000000000000;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = v6;
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
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  *(v4 + 144) = xmmword_1AFE22A20;
  *(v4 + 80) = v3;
  *(v4 + 88) = &off_1F2535378;
  *(v4 + 210) = 0;
  v8 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v8 && v7)
  {
    v7 = (*(v8 + 8))(v7, v8);
  }

  v9 = swift_conformsToProtocol2();
  if (v9 && v7)
  {
    *(v4 + 160) = (*(v9 + 8))(v7, v9);
  }

  v10 = *(v4 + 64);
  v11 = *(v4 + 72);
  *(v4 + 64) = sub_1AFC721E8;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(v10, v11);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;

  *(v0 + 32) = v4;
  v12 = swift_getKeyPath();
  sub_1AFC7246C(0, &unk_1ED722B70, v5, type metadata accessor for EntityGetSet);
  v13 = swift_allocObject();
  v13[4] = sub_1AFC721F0;
  v13[5] = v12;
  v13[2] = sub_1AFC72224;
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
  *(v14 + 16) = 0x6465657073;
  *(v14 + 24) = 0xE500000000000000;
  *(v14 + 32) = v12;
  *(v14 + 40) = v5;
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
  v15 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v15)
  {
    v5 = (*(v15 + 8))();
  }

  v16 = swift_conformsToProtocol2();
  if (v16 && v5)
  {
    *(v14 + 160) = (*(v16 + 8))(v5, v16);
  }

  *(v14 + 64) = sub_1AFC72230;
  *(v14 + 72) = v12;
  sub_1AF0FB8EC(0, 0);
  *(v14 + 168) = 0;
  *(v14 + 176) = 0;

  *(v14 + 216) = 0;
  *(v0 + 40) = v14;
  qword_1EB6C3688 = v0;
  return result;
}

void sub_1AFC6D4E4(void *a1@<X0>, float *a2@<X8>)
{
  sub_1AFC73A9C(a1, v8);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1AF0F2990(v8);
  if (!Strong)
  {
    goto LABEL_5;
  }

  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (!v4)
  {
    swift_unknownObjectRelease();
LABEL_5:
    v7 = 1.0;
    goto LABEL_6;
  }

  v5 = [v4 physicsWorld];
  swift_unknownObjectRelease();
  [v5 speed];
  v7 = v6;

LABEL_6:
  *a2 = v7;
}

double sub_1AFC6D5BC()
{
  sub_1AFC73A9C(v0, v6);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1AF0F2990(v6);
  if (Strong)
  {
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (v2)
    {
      [v2 fogColor_linearExtendedSRGB];
      v5 = v3;
      swift_unknownObjectRelease();
      return v5;
    }

    swift_unknownObjectRelease();
  }

  return 0.0;
}

void sub_1AFC6D664(SEL *a1)
{
  sub_1AFC73A9C(v1, v5);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1AF0F2990(v5);
  if (Strong)
  {
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {
      [v4 *a1];
    }

    swift_unknownObjectRelease();
  }
}

uint64_t sub_1AFC6D728@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 8) = 0;
  *(swift_unknownObjectWeakInit() + 8) = 0;
  result = swift_unknownObjectWeakAssign();
  *(result + 16) = 0x3E6C6C756E3CLL;
  *(result + 24) = 0xE600000000000000;
  return result;
}

uint64_t sub_1AFC6D76C()
{
  sub_1AFC7246C(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE55130;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E74A8];
  sub_1AFC703CC(0, &qword_1ED725C70, &qword_1ED72F6E0, MEMORY[0x1E69E74A8]);
  v3 = swift_allocObject();
  v3[4] = sub_1AFC72238;
  v3[5] = KeyPath;
  v3[2] = sub_1AFC7228C;
  v3[3] = KeyPath;
  v3[6] = KeyPath;
  type metadata accessor for PropertyDescription();
  v4 = swift_allocObject();
  *(v4 + 104) = 0;
  *(v4 + 112) = 1;
  *(v4 + 128) = 0;
  *(v4 + 136) = 0;
  *(v4 + 120) = 0;
  *(v4 + 160) = MEMORY[0x1E69E7CC0];
  *(v4 + 216) = 0;
  v5 = MEMORY[0x1E69E6448];
  sub_1AFC739C4(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], v2);
  v7 = v6;
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;
  *(v4 + 16) = 0x726F6C6F63;
  *(v4 + 24) = 0xE500000000000000;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = v6;
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
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  *(v4 + 144) = xmmword_1AFE55160;
  *(v4 + 80) = v3;
  *(v4 + 88) = &off_1F2535378;
  *(v4 + 210) = 0;
  v8 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v8 && v7)
  {
    v7 = (*(v8 + 8))(v7, v8);
  }

  v9 = swift_conformsToProtocol2();
  if (v9 && v7)
  {
    *(v4 + 160) = (*(v9 + 8))(v7, v9);
  }

  v10 = *(v4 + 64);
  v11 = *(v4 + 72);
  *(v4 + 64) = sub_1AFC72298;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(v10, v11);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;

  *(v0 + 32) = v4;
  v12 = swift_getKeyPath();
  sub_1AFC7246C(0, &unk_1ED722B70, v5, type metadata accessor for EntityGetSet);
  v13 = swift_allocObject();
  v13[4] = sub_1AFC722A0;
  v13[5] = v12;
  v13[2] = sub_1AFC722D4;
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
  strcpy((v14 + 16), "start distance");
  *(v14 + 31) = -18;
  *(v14 + 32) = v12;
  *(v14 + 40) = v5;
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
  v15 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v15)
  {
    v16 = (*(v15 + 8))();
  }

  else
  {
    v16 = v5;
  }

  v17 = swift_conformsToProtocol2();
  if (v17 && v16)
  {
    *(v14 + 160) = (*(v17 + 8))(v16, v17);
  }

  *(v14 + 64) = sub_1AFC722E0;
  *(v14 + 72) = v12;
  sub_1AF0FB8EC(0, 0);
  *(v14 + 168) = 0;
  *(v14 + 176) = 0;

  *(v14 + 216) = 0;
  *(v0 + 40) = v14;
  v18 = swift_getKeyPath();
  v19 = swift_allocObject();
  v19[4] = sub_1AFC73B10;
  v19[5] = v18;
  v19[2] = sub_1AFC73C34;
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
  strcpy((v20 + 16), "end distance");
  *(v20 + 29) = 0;
  *(v20 + 30) = -5120;
  *(v20 + 32) = v18;
  *(v20 + 40) = v5;
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
  if (v15)
  {
    v5 = (*(v15 + 8))();
  }

  v21 = swift_conformsToProtocol2();
  if (v21 && v5)
  {
    *(v20 + 160) = (*(v21 + 8))(v5, v21);
  }

  *(v20 + 64) = sub_1AFC73BAC;
  *(v20 + 72) = v18;
  sub_1AF0FB8EC(0, 0);
  *(v20 + 168) = 0;
  *(v20 + 176) = 0;

  *(v20 + 216) = 0;
  *(v0 + 48) = v20;
  qword_1EB6C3690 = v0;
  return result;
}